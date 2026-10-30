import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

/-!
# A183803: 1/16 the number of (n+1)X(n+1) binary arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183803, there is no canonical definition to state claims against.
-/

/-! ## A183803.P11077507718760208212

`A183811(∑[4*n]+1)`
-/

namespace A183803.P11077507718760208212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183803.P11077507718760208212

/-! ## A183803.P5773510893397611072

`A183811(A001844(n))+char[8]`
-/

namespace A183803.P5773510893397611072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183803.P5773510893397611072

/-! ## A183803.P574900336070013020

`record[A003982(n)*A183811(n+1)]`
-/

namespace A183803.P574900336070013020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183803.P574900336070013020

/-! ## A183803.P11312226392976464662

`record[A010052(2*n+1)*A183811(n+1)]`
-/

namespace A183803.P11312226392976464662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A183811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183803.P11312226392976464662

/-!
# A183804: 1/16 the number of (n+1) X 3 binary arrays with no 2 X 2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183804, the canonical program `A183804.P16162911991687592939` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183804 has offset 1).

The definition of A183804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183804.P11249540522005322385

`ogf((3+4x-11x^2)/(1-3x-9x^2+15x^3))`
-/

namespace A183804.P11249540522005322385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -11] [1, -3, -9, 15] n

end

end A183804.P11249540522005322385

namespace A183804

/-- `ogf((3+4x-11x^2)/(1-3x-9x^2+15x^3))` -/
def P11249540522005322385.Spec : Prop :=
  ∀ n, P11249540522005322385.a n = A183804 (n + 1)

end A183804

/-! ## A183804.P16162911991687592939

`3*a(n-1)+9*a(n-2)-15*a(n-3)` with `a(0)=3, a(1)=13, a(2)=55`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183804

/-- `3*a(n-1)+9*a(n-2)-15*a(n-3)` -/
def P16162911991687592939.Spec : Prop :=
  ∀ n, P16162911991687592939.a n = A183804 (n + 1)

theorem P16162911991687592939.correct : P16162911991687592939.Spec := by
  intro n
  simp only [A183804, Nat.add_sub_cancel]

end A183804

/-! ## A183804.P6291971498221726931

`A183811(∑[n+1]+2)`
-/

namespace A183804.P6291971498221726931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183804.P6291971498221726931

namespace A183804

/-- `A183811(∑[n+1]+2)` -/
def P6291971498221726931.Spec : Prop :=
  ∀ n, P6291971498221726931.a n = A183804 (n + 1)

end A183804

/-! ## A183804.P17788479144168244868

`or(1, A183811(A000096(n)+3))`
-/

namespace A183804.P17788479144168244868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183811 (A000096 n + 3).toNat)

end

end A183804.P17788479144168244868

namespace A183804

/-- `or(1, A183811(A000096(n)+3))` -/
def P17788479144168244868.Spec : Prop :=
  ∀ n, P17788479144168244868.a n = A183804 (n + 1)

end A183804

/-! ## A183804.P7765409572341658367

`record[root(A183811(n+2), A059268(n))]`
-/

namespace A183804.P7765409572341658367
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183811 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183804.P7765409572341658367

namespace A183804

/-- `record[root(A183811(n+2), A059268(n))]` -/
def P7765409572341658367.Spec : Prop :=
  ∀ n, P7765409572341658367.a n = (A183804 (n + 1) : ℝ)

end A183804

/-!
# A183805: 1/16 the number of (n+1) X 4 binary arrays with no 2 X 2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183805, there is no canonical definition to state claims against.
-/

/-! ## A183805.P336355368842581954

`A183811(∑[n+2]+4)`
-/

namespace A183805.P336355368842581954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183805.P336355368842581954

/-! ## A183805.P10236565036455036753

`A183811(A167614(n+1))+char[15]`
-/

namespace A183805.P10236565036455036753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183805.P10236565036455036753

/-! ## A183805.P9523551927153371819

`record[gcd(A183811(n+4), A301999(n+1))]`
-/

namespace A183805.P9523551927153371819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183811 (n + 4)) (A301999 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183805.P9523551927153371819

/-! ## A183805.P12683710513781797084

`A185255(n)+A183811(A167614(n+1))`
-/

namespace A183805.P12683710513781797084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A183811 (A167614 (n + 1)).toNat

end

end A183805.P12683710513781797084

/-! ## A183805.P17238974509545402652

`gcd(A025443(n), A183811(A167614(n+1)))`
-/

namespace A183805.P17238974509545402652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025443 n) (A183811 (A167614 (n + 1)).toNat)

end

end A183805.P17238974509545402652

/-!
# A183806: 1/16 the number of (n+1)X5 binary arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183806, there is no canonical definition to state claims against.
-/

/-! ## A183806.P8484511156153700073

`A183811(∑[a(n-1)+1]+7)` with `a(0)=3`
-/

namespace A183806.P8484511156153700073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183806.P8484511156153700073

/-! ## A183806.P17676149496466645042

`A183811(A374004(n+1))`
-/

namespace A183806.P17676149496466645042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A374004 (n + 1)).toNat

end

end A183806.P17676149496466645042

/-! ## A183806.P71079912239451773

`A183811(A141214(n)+7)`
-/

namespace A183806.P71079912239451773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A141214 n + 7).toNat

end

end A183806.P71079912239451773

/-! ## A183806.P12691709904711932460

`A183811(A052905(n)+9)`
-/

namespace A183806.P12691709904711932460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A052905 n + 9).toNat

end

end A183806.P12691709904711932460

/-! ## A183806.P14229538347948331860

`A183811(A055999(n)+10)`
-/

namespace A183806.P14229538347948331860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A055999 n + 10).toNat

end

end A183806.P14229538347948331860

/-!
# A183807: 1/16 the number of (n+1)X6 binary arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183807, there is no canonical definition to state claims against.
-/

/-! ## A183807.P8665251920516609706

`A183811(C(n+6, 2)-n)`
-/

namespace A183807.P8665251920516609706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (Nat.choose (n + 6) 2 - n)

end

end A183807.P8665251920516609706

/-! ## A183807.P13003474369348655784

`A183811(A374005(n+1))`
-/

namespace A183807.P13003474369348655784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A374005 (n + 1)).toNat

end

end A183807.P13003474369348655784

/-! ## A183807.P11181190696994808367

`A183811(A167499(n+3))`
-/

namespace A183807.P11181190696994808367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A167499 (n + 3)).toNat

end

end A183807.P11181190696994808367

/-! ## A183807.P9406596399808374015

`A183811(A155212(n)+13)`
-/

namespace A183807.P9406596399808374015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A155212 n + 13).toNat

end

end A183807.P9406596399808374015

/-! ## A183807.P15127217249937675368

`A183811(A056000(n)+15)`
-/

namespace A183807.P15127217249937675368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A056000 n + 15).toNat

end

end A183807.P15127217249937675368

/-!
# A183808: 1/16 the number of (n+1)X7 binary arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183808, there is no canonical definition to state claims against.
-/

/-! ## A183808.P12892505671489654418

`A183811(A374007(n+1))`
-/

namespace A183808.P12892505671489654418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A374007 (n + 1)).toNat

end

end A183808.P12892505671489654418

/-! ## A183808.P3617884430933263338

`A183811(A056115(n)+21)`
-/

namespace A183808.P3617884430933263338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A056115 n + 21).toNat

end

end A183808.P3617884430933263338

/-! ## A183808.P586654990530088091

`A183811(eq[7, A131818(n+1)])`
-/

namespace A183808.P586654990530088091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183808.P586654990530088091

/-! ## A183808.P8844229008511575618

`A183811(Δ[A023545(n+1)]+10)`
-/

namespace A183808.P8844229008511575618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (f1 (n + 1) - f1 n + 10).toNat

end

end A183808.P8844229008511575618

/-! ## A183808.P13973804860494776754

`A183811(A056119(n)+16)`
-/

namespace A183808.P13973804860494776754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A056119 n + 16).toNat

end

end A183808.P13973804860494776754

/-!
# A183809: 1/16 the number of (n+1)X8 binary arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183809, there is no canonical definition to state claims against.
-/

/-! ## A183809.P13925028743652240627

`A183811(A374008(n+1))`
-/

namespace A183809.P13925028743652240627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A374008 (n + 1)).toNat

end

end A183809.P13925028743652240627

/-! ## A183809.P983343988704457620

`A183811(A056119(n)+28)`
-/

namespace A183809.P983343988704457620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A056119 n + 28).toNat

end

end A183809.P983343988704457620

/-! ## A183809.P12568149952990737476

`A183811(eq[8, A131818(n+1)])`
-/

namespace A183809.P12568149952990737476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183809.P12568149952990737476

/-! ## A183809.P11409060556749871186

`A183811(A055999(n+4))`
-/

namespace A183809.P11409060556749871186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A055999 (n + 4)).toNat

end

end A183809.P11409060556749871186

/-! ## A183809.P23248103401272067

`A183811(eq[4, A219347(n)])`
-/

namespace A183809.P23248103401272067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183809.P23248103401272067

/-!
# A183810: 1/16 the number of (n+1)X9 binary arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183810, there is no canonical definition to state claims against.
-/

/-! ## A183810.P4010871136276002581

`A183811(A374009(n+1))`
-/

namespace A183810.P4010871136276002581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A374009 (n + 1)).toNat

end

end A183810.P4010871136276002581

/-! ## A183810.P5551708874018556618

`A183811(eq[5, A219347(n)])`
-/

namespace A183810.P5551708874018556618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183810.P5551708874018556618

/-! ## A183810.P1889090654032520604

`A183811(eq[7, A193592(n)])`
-/

namespace A183810.P1889090654032520604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183810.P1889090654032520604

/-! ## A183810.P12708921046428780029

`A183811(eq[13, A066657(n)])`
-/

namespace A183810.P12708921046428780029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183810.P12708921046428780029

/-! ## A183810.P17474960597620731213

`A183811(A155212(n+4)+1)`
-/

namespace A183810.P17474960597620731213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183811 (A155212 (n + 4) + 1).toNat

end

end A183810.P17474960597620731213

/-!
# A183811: T(n,k)=1/16 the number of (n+1)X(k+1) binary arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183811, there is no canonical definition to state claims against.
-/

/-! ## A183811.P2351489546354650093

`or(1, A109814(A038299(n)))`
-/

namespace A183811.P2351489546354650093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A109814 (A038299 n).toNat)

end

end A183811.P2351489546354650093

/-! ## A183811.P10234073886117002402

`A000196(ceil(A203656(n+1)/9))`
-/

namespace A183811.P10234073886117002402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈(A203656 (n + 1) : ℚ) / 9⌉.toNat

end

end A183811.P10234073886117002402

/-! ## A183811.P4884606041565735421

`A000196(round(A203656(n+1)/9))`
-/

namespace A183811.P4884606041565735421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A203656 (n + 1) : ℚ) / 9)).toNat

end

end A183811.P4884606041565735421

/-! ## A183811.P14745392073801290408

`A223209(n+1)-A171827(A228900(n))`
-/

namespace A183811.P14745392073801290408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223209 (n + 1) - A171827 (A228900 n).toNat

end

end A183811.P14745392073801290408

/-! ## A183811.P7205984242858794972

`A294930(2*(n+2))+A109814(A038299(n))`
-/

namespace A183811.P7205984242858794972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (2 * (n + 2)) + A109814 (A038299 n).toNat

end

end A183811.P7205984242858794972

/-!
# A183812: 1/81 the number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183812, there is no canonical definition to state claims against.
-/

/-! ## A183812.P7480250272968130589

`A183819((n+1)²+n²)`
-/

namespace A183812.P7480250272968130589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 ((n + 1) ^ 2 + n ^ 2)

end

end A183812.P7480250272968130589

/-!
# A183813: 1/81 the number of (n+1) X 3 0..2 arrays with no 2 X 2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183813, there is no canonical definition to state claims against.
-/

/-! ## A183813.P11290825545874899864

`A183819(∑[n+1]+2)`
-/

namespace A183813.P11290825545874899864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183813.P11290825545874899864

/-! ## A183813.P438115150695635303

`record[A183819(n+3)/A038279(n)]`
-/

namespace A183813.P438115150695635303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183819 (n + 3) : ℚ) / (A038279 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183813.P438115150695635303

/-! ## A183813.P10192281408500892989

`record[A183819(n+4)/A075503(n+2)]`
-/

namespace A183813.P10192281408500892989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183819 (n + 4) : ℚ) / (A075503 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183813.P10192281408500892989

/-! ## A183813.P2918353352020628841

`record[A183819(Δ[A003453(n+5)])]`
-/

namespace A183813.P2918353352020628841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183813.P2918353352020628841

/-! ## A183813.P8667747194829366121

`record[A023531(n+2)*A183819(n+2)]`
-/

namespace A183813.P8667747194829366121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 2) * A183819 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183813.P8667747194829366121

/-!
# A183814: 1/81 the number of (n+1) X 4 0..2 arrays with no 2 X 2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183814, there is no canonical definition to state claims against.
-/

/-! ## A183814.P6608216975883711634

`A183819(∑[n+2]+4)`
-/

namespace A183814.P6608216975883711634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183814.P6608216975883711634

/-! ## A183814.P17715455899569123071

`lcm(2, A183819(A167614(n+1)))`
-/

namespace A183814.P17715455899569123071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183819 (A167614 (n + 1)).toNat)

end

end A183814.P17715455899569123071

/-! ## A183814.P1481066075441135099

`A183819(A167614(n+1))+A011734(n)`
-/

namespace A183814.P1481066075441135099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (A167614 (n + 1)).toNat + A011734 n

end

end A183814.P1481066075441135099

/-! ## A183814.P13004378460652377772

`A183819(A167614(n+1))+A035585(n)`
-/

namespace A183814.P13004378460652377772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (A167614 (n + 1)).toNat + A035585 n

end

end A183814.P13004378460652377772

/-! ## A183814.P13125631573974808280

`A183819(A167614(n+1))-A184946(n)`
-/

namespace A183814.P13125631573974808280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (A167614 (n + 1)).toNat - A184946 n

end

end A183814.P13125631573974808280

/-!
# A183815: 1/81 the number of (n+1) X 5 0..2 arrays with no 2 X 2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183815, there is no canonical definition to state claims against.
-/

/-! ## A183815.P10852255693643279145

`A183819(A141214(n)+7)`
-/

namespace A183815.P10852255693643279145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (A141214 n + 7).toNat

end

end A183815.P10852255693643279145

/-! ## A183815.P11566342871565704497

`A183819(A052905(n)+9)`
-/

namespace A183815.P11566342871565704497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (A052905 n + 9).toNat

end

end A183815.P11566342871565704497

/-! ## A183815.P882912416131249437

`A183819(A055999(n)+10)`
-/

namespace A183815.P882912416131249437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (A055999 n + 10).toNat

end

end A183815.P882912416131249437

/-! ## A183815.P7748330009453576878

`A183819(A167614(n+2)+1)`
-/

namespace A183815.P7748330009453576878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (A167614 (n + 2) + 1).toNat

end

end A183815.P7748330009453576878

/-! ## A183815.P1144426180444313061

`A183819(eq[5, A131818(n+1)])`
-/

namespace A183815.P1144426180444313061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183815.P1144426180444313061

/-!
# A183816: 1/81 the number of (n+1)X6 0..2 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183816, there is no canonical definition to state claims against.
-/

/-! ## A183816.P17429502830934771722

`A183819(A374005(n+1))`
-/

namespace A183816.P17429502830934771722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (A374005 (n + 1)).toNat

end

end A183816.P17429502830934771722

/-! ## A183816.P4227789882640891150

`A183819(Δ[A023545(n+1)])`
-/

namespace A183816.P4227789882640891150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (f1 (n + 1) - f1 n).toNat

end

end A183816.P4227789882640891150

/-! ## A183816.P8623662194916171959

`A183819(A055998(n+3)-1)`
-/

namespace A183816.P8623662194916171959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (A055998 (n + 3) - 1).toNat

end

end A183816.P8623662194916171959

/-!
# A183817: 1/81 the number of (n+1)X7 0..2 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183817, there is no canonical definition to state claims against.
-/

/-! ## A183817.P9367543498801006404

`A183819(∑[n+5]+16)`
-/

namespace A183817.P9367543498801006404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A183817.P9367543498801006404

/-!
# A183818: 1/81 the number of (n+1)X8 0..2 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183818, there is no canonical definition to state claims against.
-/

/-! ## A183818.P3387315898820786982

`A183819(A166136(n+5)+1)`
-/

namespace A183818.P3387315898820786982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183819 (A166136 (n + 5) + 1).toNat

end

end A183818.P3387315898820786982

/-!
# A183819: T(n,k)=1/81 the number of (n+1)X(k+1) 0..2 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183819, there is no canonical definition to state claims against.
-/

/-! ## A183819.P1946422213338264196

`A206941(A188824(n+1)^3)`
-/

namespace A183819.P1946422213338264196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206941 (A188824 (n + 1) ^ 3).toNat

end

end A183819.P1946422213338264196

/-! ## A183819.P11669577721414411929

`A206941(A188824(n+1)²*A188824(n+1))`
-/

namespace A183819.P11669577721414411929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206941 (A188824 (n + 1) ^ 2 * A188824 (n + 1)).toNat

end

end A183819.P11669577721414411929

/-!
# A183820: 1/256 the number of (n+1)X(n+1) 0..3 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183820, there is no canonical definition to state claims against.
-/

/-! ## A183820.P3332213530599429218

`A183827((n+1)²+n²)`
-/

namespace A183820.P3332213530599429218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 ((n + 1) ^ 2 + n ^ 2)

end

end A183820.P3332213530599429218

/-!
# A183821: 1/256 the number of (n+1) X 3 0..3 arrays with no 2 X 2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183821, there is no canonical definition to state claims against.
-/

/-! ## A183821.P7604871772967116689

`A183827(∑[n+1]+2)`
-/

namespace A183821.P7604871772967116689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183821.P7604871772967116689

/-! ## A183821.P15319917623499917604

`record[root(A183827(n+3), A048483(n))]`
-/

namespace A183821.P15319917623499917604
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183827 (n + 3) : ℝ) ^ (1 / (A048483 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183821.P15319917623499917604

/-! ## A183821.P3136525894474098290

`record[root(A183827(n+3), A048494(n))]`
-/

namespace A183821.P3136525894474098290
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183827 (n + 3) : ℝ) ^ (1 / (A048494 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183821.P3136525894474098290

/-! ## A183821.P16118367617144900982

`record[root(A183827(n+2), A158405(n+1))]`
-/

namespace A183821.P16118367617144900982
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183827 (n + 2) : ℝ) ^ (1 / (A158405 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183821.P16118367617144900982

/-! ## A183821.P759857436794607691

`record[root(A183827(n+3), A062001(n+1))]`
-/

namespace A183821.P759857436794607691
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183827 (n + 3) : ℝ) ^ (1 / (A062001 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183821.P759857436794607691

/-!
# A183822: 1/256 the number of (n+1)X4 0..3 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183822, there is no canonical definition to state claims against.
-/

/-! ## A183822.P6418264749022615382

`A183827(A167614(n+1))`
-/

namespace A183822.P6418264749022615382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (A167614 (n + 1)).toNat

end

end A183822.P6418264749022615382

/-! ## A183822.P12383110583209219204

`A183827(A166136(n+1)-3)`
-/

namespace A183822.P12383110583209219204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (A166136 (n + 1) - 3).toNat

end

end A183822.P12383110583209219204

/-! ## A183822.P8289464048219631554

`A183827(∑[n+3]+1)`
-/

namespace A183822.P8289464048219631554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183822.P8289464048219631554

/-!
# A183823: 1/256 the number of (n+1)X5 0..3 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183823, there is no canonical definition to state claims against.
-/

/-! ## A183823.P15380978592176702526

`A183827(A141214(n)+7)`
-/

namespace A183823.P15380978592176702526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (A141214 n + 7).toNat

end

end A183823.P15380978592176702526

/-! ## A183823.P5515046862155601585

`A183827(A141214(n+1))`
-/

namespace A183823.P5515046862155601585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (A141214 (n + 1)).toNat

end

end A183823.P5515046862155601585

/-! ## A183823.P16579820484075688906

`A183827(A056000(n)+7)`
-/

namespace A183823.P16579820484075688906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (A056000 n + 7).toNat

end

end A183823.P16579820484075688906

/-!
# A183824: 1/256 the number of (n+1)X6 0..3 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183824, there is no canonical definition to state claims against.
-/

/-! ## A183824.P3787231455160753129

`A183827(A056000(n)+15)`
-/

namespace A183824.P3787231455160753129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (A056000 n + 15).toNat

end

end A183824.P3787231455160753129

/-! ## A183824.P12241822016612872036

`A183827(eq[6, A185782(n+1)])`
-/

namespace A183824.P12241822016612872036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183824.P12241822016612872036

/-!
# A183825: 1/256 the number of (n+1)X7 0..3 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183825, there is no canonical definition to state claims against.
-/

/-! ## A183825.P4163479057711788463

`A183827(eq[3, A219347(n)])`
-/

namespace A183825.P4163479057711788463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183825.P4163479057711788463

/-!
# A183826: 1/256 the number of (n+1)X8 0..3 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183826, there is no canonical definition to state claims against.
-/

/-! ## A183826.P15130873056951761807

`A183827(eq[4, A219347(n)])`
-/

namespace A183826.P15130873056951761807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183826.P15130873056951761807

/-!
# A183827: T(n,k)=1/256 the number of (n+1)X(k+1) 0..3 arrays with no 2X2 subblock being a reflection across the shared element pair of any horizontal or vertical neighbor.

The programs for A183827, there is no canonical definition to state claims against.
-/

/-! ## A183827.P1801899455414363123

`A248183(or(A004023(n+1), A324944(n+1)))`
-/

namespace A183827.P1801899455414363123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (Int.lor (A004023 (n + 1)) (A324944 (n + 1))).toNat

end

end A183827.P1801899455414363123

/-!
# A183828: Number of (n+1)X(n+1) 0..2 arrays with each element of every 2X2 subblock being the sum mod 3 of two others.

The programs for A183828, there is no canonical definition to state claims against.
-/

/-! ## A183828.P15415968518039501135

`A183836((n+1)²+n²)`
-/

namespace A183828.P15415968518039501135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 ((n + 1) ^ 2 + n ^ 2)

end

end A183828.P15415968518039501135

/-!
# A183829: Number of (n+1) X 3 0..2 arrays with each element of every 2 X 2 subblock being the sum mod 3 of two others.

The programs for A183829, there is no canonical definition to state claims against.
-/

/-! ## A183829.P7726875737726440901

`A183836(∑[n+1]+2)`
-/

namespace A183829.P7726875737726440901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183829.P7726875737726440901

/-! ## A183829.P12365466329671970809

`or(1, A183836(A000096(n)+3))`
-/

namespace A183829.P12365466329671970809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183836 (A000096 n + 3).toNat)

end

end A183829.P12365466329671970809

/-! ## A183829.P10428958125568968958

`record[root(A183836(n+2), A263666(n+1))]`
-/

namespace A183829.P10428958125568968958
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183836 (n + 2) : ℝ) ^ (1 / (A263666 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183829.P10428958125568968958

/-! ## A183829.P3402628299687351393

`record[gcd(A183836(n+2), A221542(n+1))]`
-/

namespace A183829.P3402628299687351393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183836 (n + 2)) (A221542 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183829.P3402628299687351393

/-! ## A183829.P6666388492921564172

`record[A183836(Δ[A003453(n+5)])]`
-/

namespace A183829.P6666388492921564172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183829.P6666388492921564172

/-!
# A183830: Number of (n+1)X4 0..2 arrays with each element of every 2X2 subblock being the sum mod 3 of two others.

The programs for A183830, there is no canonical definition to state claims against.
-/

/-! ## A183830.P426466113013009988

`A183836(∑[n+2]+4)`
-/

namespace A183830.P426466113013009988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183830.P426466113013009988

/-! ## A183830.P16547493754631706622

`or(1, A183836(A167614(n+1)))`
-/

namespace A183830.P16547493754631706622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183836 (A167614 (n + 1)).toNat)

end

end A183830.P16547493754631706622

/-! ## A183830.P1239839087691117687

`A183836(A167614(n+1))+A025469(n)`
-/

namespace A183830.P1239839087691117687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A167614 (n + 1)).toNat + A025469 n

end

end A183830.P1239839087691117687

/-! ## A183830.P10878315519780868426

`lcm(A033999(n), A183836(A167614(n+1)))`
-/

namespace A183830.P10878315519780868426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A183836 (A167614 (n + 1)).toNat)

end

end A183830.P10878315519780868426

/-! ## A183830.P3248246896457552596

`A183836(A167614(n+1))*A193518(n+1)`
-/

namespace A183830.P3248246896457552596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A167614 (n + 1)).toNat * A193518 (n + 1)

end

end A183830.P3248246896457552596

/-!
# A183831: Number of (n+1)X5 0..2 arrays with each element of every 2X2 subblock being the sum mod 3 of two others.

The programs for A183831, there is no canonical definition to state claims against.
-/

/-! ## A183831.P17962616955934848914

`A183836(A374004(n+1))`
-/

namespace A183831.P17962616955934848914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A374004 (n + 1)).toNat

end

end A183831.P17962616955934848914

/-! ## A183831.P8048765388433025222

`A183836(A052905(n)+9)`
-/

namespace A183831.P8048765388433025222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A052905 n + 9).toNat

end

end A183831.P8048765388433025222

/-! ## A183831.P4547883988113154889

`A183836(A055999(n)+10)`
-/

namespace A183831.P4547883988113154889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A055999 n + 10).toNat

end

end A183831.P4547883988113154889

/-! ## A183831.P14836858287667757484

`A183836(A167614(n+2)+1)`
-/

namespace A183831.P14836858287667757484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A167614 (n + 2) + 1).toNat

end

end A183831.P14836858287667757484

/-! ## A183831.P4583985619770713709

`A183836(A141214(n+1))`
-/

namespace A183831.P4583985619770713709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A141214 (n + 1)).toNat

end

end A183831.P4583985619770713709

/-!
# A183832: Number of (n+1)X6 0..2 arrays with each element of every 2X2 subblock being the sum mod 3 of two others.

The programs for A183832, there is no canonical definition to state claims against.
-/

/-! ## A183832.P4973101568407729012

`A183836(A374005(n+1))`
-/

namespace A183832.P4973101568407729012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A374005 (n + 1)).toNat

end

end A183832.P4973101568407729012

/-! ## A183832.P4417998623424966494

`A183836(A167499(n+3))`
-/

namespace A183832.P4417998623424966494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A167499 (n + 3)).toNat

end

end A183832.P4417998623424966494

/-! ## A183832.P11363915861231340099

`A183836(A155212(n)+13)`
-/

namespace A183832.P11363915861231340099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A155212 n + 13).toNat

end

end A183832.P11363915861231340099

/-! ## A183832.P5679032041257726962

`A183836(A056000(n)+15)`
-/

namespace A183832.P5679032041257726962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A056000 n + 15).toNat

end

end A183832.P5679032041257726962

/-! ## A183832.P2735734119429611333

`A183836(eq[7, A066657(n)])`
-/

namespace A183832.P2735734119429611333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183832.P2735734119429611333

/-!
# A183833: Number of (n+1)X7 0..2 arrays with each element of every 2X2 subblock being the sum mod 3 of two others.

The programs for A183833, there is no canonical definition to state claims against.
-/

/-! ## A183833.P18016913623085156784

`A183836(A374007(n+1))`
-/

namespace A183833.P18016913623085156784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A374007 (n + 1)).toNat

end

end A183833.P18016913623085156784

/-! ## A183833.P13887316227864861684

`A183836(A000124(n+5)+5)`
-/

namespace A183833.P13887316227864861684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A000124 (n + 5) + 5).toNat

end

end A183833.P13887316227864861684

/-! ## A183833.P5836733764931482561

`A183836(eq[7, A131818(n+1)])`
-/

namespace A183833.P5836733764931482561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183833.P5836733764931482561

/-! ## A183833.P18061812531975157091

`A183836(eq[3, A219347(n)])`
-/

namespace A183833.P18061812531975157091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183833.P18061812531975157091

/-! ## A183833.P7904857840446756098

`A183836(eq[5, A193592(n)])`
-/

namespace A183833.P7904857840446756098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183833.P7904857840446756098

/-!
# A183834: Number of (n+1)X8 0..2 arrays with each element of every 2X2 subblock being the sum mod 3 of two others.

The programs for A183834, there is no canonical definition to state claims against.
-/

/-! ## A183834.P5733363641157535758

`A183836(A374008(n+1))`
-/

namespace A183834.P5733363641157535758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A374008 (n + 1)).toNat

end

end A183834.P5733363641157535758

/-! ## A183834.P8655933599176382791

`A183836(A055999(n+4))`
-/

namespace A183834.P8655933599176382791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A055999 (n + 4)).toNat

end

end A183834.P8655933599176382791

/-! ## A183834.P12724040481520725668

`A183836(eq[2, A219347(n)-2])`
-/

namespace A183834.P12724040481520725668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183834.P12724040481520725668

/-! ## A183834.P11339600097384275568

`A183836(A005408(n)+A000124(n+5)+5)`
-/

namespace A183834.P11339600097384275568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A005408 n + (A000124 (n + 5) + 5)).toNat

end

end A183834.P11339600097384275568

/-!
# A183835: Number of (n+1)X9 0..2 arrays with each element of every 2X2 subblock being the sum mod 3 of two others.

The programs for A183835, there is no canonical definition to state claims against.
-/

/-! ## A183835.P13272151123001688284

`A183836(A374009(n+1))`
-/

namespace A183835.P13272151123001688284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A374009 (n + 1)).toNat

end

end A183835.P13272151123001688284

/-! ## A183835.P13506127703360080971

`A183836(A155212(n+5)-A005408(n))`
-/

namespace A183835.P13506127703360080971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A155212 (n + 5) - A005408 n).toNat

end

end A183835.P13506127703360080971

/-! ## A183835.P9385955505903275469

`A183836(eq[7, A193592(n)])`
-/

namespace A183835.P9385955505903275469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183835.P9385955505903275469

/-! ## A183835.P10786826222436393976

`A183836(A052905(n+5)-2)`
-/

namespace A183835.P10786826222436393976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183836 (A052905 (n + 5) - 2).toNat

end

end A183835.P10786826222436393976

/-!
# A183837: Number of (n+1)X(n+1) binary arrays with each element of every 2X2 subblock being the sum mod 2 of two others.

The programs for A183837, there is no canonical definition to state claims against.
-/

/-! ## A183837.P12400769592340765318

`A183845(∑[4*n]+1)`
-/

namespace A183837.P12400769592340765318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183837.P12400769592340765318

/-! ## A183837.P5508338293138944181

`record[gcd(A049581(n), A183845(n+1))]`
-/

namespace A183837.P5508338293138944181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A183845 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183837.P5508338293138944181

/-! ## A183837.P8533048516816805707

`lcm(A020985(n), A183845(A001844(n)))`
-/

namespace A183837.P8533048516816805707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A183845 (A001844 n).toNat)

end

end A183837.P8533048516816805707

/-! ## A183837.P7811177055724782788

`or(A000007(n), A183845(A001844(n)))`
-/

namespace A183837.P7811177055724782788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183845 (A001844 n).toNat)

end

end A183837.P7811177055724782788

/-! ## A183837.P903131362518442131

`or(A000035(n), A183845(A001844(n)))`
-/

namespace A183837.P903131362518442131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A183845 (A001844 n).toNat)

end

end A183837.P903131362518442131

/-!
# A183838: Number of (n+1) X 3 binary arrays with each element of every 2 X 2 subblock being the sum mod 2 of two others.

The programs for A183838, there is no canonical definition to state claims against.
-/

/-! ## A183838.P16871961901036714385

`A183845(∑[n+1]+2)`
-/

namespace A183838.P16871961901036714385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183838.P16871961901036714385

/-! ## A183838.P13059429130985802167

`record[A183845(A133263(A008612(n)))]`
-/

namespace A183838.P13059429130985802167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A133263 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183838.P13059429130985802167

/-! ## A183838.P5813244826404574788

`A183845(A133263(n+1))%A183847(n+1)`
-/

namespace A183838.P5813244826404574788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183845 (A133263 (n + 1)).toNat) (A183847 (n + 1))

end

end A183838.P5813244826404574788

/-! ## A183838.P15071257717782456503

`A183845(A000096(n)+3)%A183829(n+1)`
-/

namespace A183838.P15071257717782456503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183845 (A000096 n + 3).toNat) (A183829 (n + 1))

end

end A183838.P15071257717782456503

/-! ## A183838.P923921899125030410

`A183845(A167499(n)-3)%A233879(n+1)`
-/

namespace A183838.P923921899125030410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183845 (A167499 n - 3).toNat) (A233879 (n + 1))

end

end A183838.P923921899125030410

/-!
# A183839: Number of (n+1) X 4 binary arrays with each element of every 2 X 2 subblock being the sum mod 2 of two others.

The programs for A183839, there is no canonical definition to state claims against.
-/

/-! ## A183839.P11731486922067064830

`A183845(∑[n+2]+4)`
-/

namespace A183839.P11731486922067064830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183839.P11731486922067064830

/-! ## A183839.P15259509687117843127

`A183845(A167614(n+1))+A025469(n)`
-/

namespace A183839.P15259509687117843127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A167614 (n + 1)).toNat + A025469 n

end

end A183839.P15259509687117843127

/-! ## A183839.P8605588014137994724

`A185284(n)+A183845(A167614(n+1))`
-/

namespace A183839.P8605588014137994724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A183845 (A167614 (n + 1)).toNat

end

end A183839.P8605588014137994724

/-! ## A183839.P8549963776834013517

`A063435(n)*A183845(A167614(n+1))`
-/

namespace A183839.P8549963776834013517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A183845 (A167614 (n + 1)).toNat

end

end A183839.P8549963776834013517

/-! ## A183839.P2139568695572883812

`lcm(A033999(n), A183845(A167614(n+1)))`
-/

namespace A183839.P2139568695572883812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A183845 (A167614 (n + 1)).toNat)

end

end A183839.P2139568695572883812

/-!
# A183840: Number of (n+1)X5 binary arrays with each element of every 2X2 subblock being the sum mod 2 of two others.

The programs for A183840, there is no canonical definition to state claims against.
-/

/-! ## A183840.P4526807338395682285

`A183845(A374004(n+1))`
-/

namespace A183840.P4526807338395682285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A374004 (n + 1)).toNat

end

end A183840.P4526807338395682285

/-! ## A183840.P11215800418081851037

`A183845(A145018(n+4))`
-/

namespace A183840.P11215800418081851037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A145018 (n + 4)).toNat

end

end A183840.P11215800418081851037

/-! ## A183840.P16396498045256406880

`A183845(A141214(n)+7)`
-/

namespace A183840.P16396498045256406880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A141214 n + 7).toNat

end

end A183840.P16396498045256406880

/-! ## A183840.P3485711559371991161

`A183845(A055999(n)+10)`
-/

namespace A183840.P3485711559371991161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A055999 n + 10).toNat

end

end A183840.P3485711559371991161

/-! ## A183840.P6252226969718908382

`A183845(A167614(n+2)+1)`
-/

namespace A183840.P6252226969718908382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A167614 (n + 2) + 1).toNat

end

end A183840.P6252226969718908382

/-!
# A183841: Number of (n+1) X 6 binary arrays with each element of every 2X2 subblock being the sum mod 2 of two others.

The programs for A183841, there is no canonical definition to state claims against.
-/

/-! ## A183841.P9571495707217838481

`A183850(n+1)-A233880(n+1)`
-/

namespace A183841.P9571495707217838481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183850 (n + 1) - A233880 (n + 1)

end

end A183841.P9571495707217838481

/-! ## A183841.P13798223329038012395

`A183845(A374005(n+1))`
-/

namespace A183841.P13798223329038012395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A374005 (n + 1)).toNat

end

end A183841.P13798223329038012395

/-! ## A183841.P12557255001573500493

`A183845(A167499(n+3))`
-/

namespace A183841.P12557255001573500493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A167499 (n + 3)).toNat

end

end A183841.P12557255001573500493

/-! ## A183841.P2727264905737545745

`A183845(A000217(n+4)+5)`
-/

namespace A183841.P2727264905737545745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A000217 (n + 4) + 5).toNat

end

end A183841.P2727264905737545745

/-! ## A183841.P10603914244991203640

`A183845(A034856(n+3)+7)`
-/

namespace A183841.P10603914244991203640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A034856 (n + 3) + 7).toNat

end

end A183841.P10603914244991203640

/-!
# A183842: Number of (n+1)X7 binary arrays with each element of every 2X2 subblock being the sum mod 2 of two others.

The programs for A183842, there is no canonical definition to state claims against.
-/

/-! ## A183842.P7316048253801611254

`A183845(A374007(n+1))`
-/

namespace A183842.P7316048253801611254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A374007 (n + 1)).toNat

end

end A183842.P7316048253801611254

/-! ## A183842.P8760213637985668556

`A183845(A046691(n+3)+10)`
-/

namespace A183842.P8760213637985668556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A046691 (n + 3) + 10).toNat

end

end A183842.P8760213637985668556

/-! ## A183842.P8980659627340657825

`A183845(Δ[A023545(n+1)]+10)`
-/

namespace A183842.P8980659627340657825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (f1 (n + 1) - f1 n + 10).toNat

end

end A183842.P8980659627340657825

/-! ## A183842.P15148481452357086704

`A183845(A052905(n+3))`
-/

namespace A183842.P15148481452357086704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A052905 (n + 3)).toNat

end

end A183842.P15148481452357086704

/-! ## A183842.P6737488697985028749

`A183845(eq[3, A219347(n)])`
-/

namespace A183842.P6737488697985028749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183842.P6737488697985028749

/-!
# A183843: Number of (n+1)X8 binary arrays with each element of every 2X2 subblock being the sum mod 2 of two others.

The programs for A183843, there is no canonical definition to state claims against.
-/

/-! ## A183843.P5098018898747316567

`A183845(A374008(n+1))`
-/

namespace A183843.P5098018898747316567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A374008 (n + 1)).toNat

end

end A183843.P5098018898747316567

/-! ## A183843.P13274980533532534309

`A183845(A167499(n+5)+2)`
-/

namespace A183843.P13274980533532534309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A167499 (n + 5) + 2).toNat

end

end A183843.P13274980533532534309

/-! ## A183843.P16194437242588338824

`A183845(eq[8, A131818(n+1)])`
-/

namespace A183843.P16194437242588338824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183843.P16194437242588338824

/-! ## A183843.P11643350508606623019

`A183845(A055999(n+4))`
-/

namespace A183843.P11643350508606623019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A055999 (n + 4)).toNat

end

end A183843.P11643350508606623019

/-! ## A183843.P9113087433520309045

`A183845(eq[4, A219347(n)])`
-/

namespace A183843.P9113087433520309045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183843.P9113087433520309045

/-!
# A183844: Number of (n+1) X 9 binary arrays with each element of every 2 X 2 subblock being the sum mod 2 of two others.

The programs for A183844, there is no canonical definition to state claims against.
-/

/-! ## A183844.P15006620317389663457

`A183845(A374009(n+1))`
-/

namespace A183844.P15006620317389663457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A374009 (n + 1)).toNat

end

end A183844.P15006620317389663457

/-! ## A183844.P10504329296758099641

`A183845(eq[9, A131818(n+1)])`
-/

namespace A183844.P10504329296758099641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183844.P10504329296758099641

/-! ## A183844.P4619662724613863508

`A183845(eq[5, A219347(n)])`
-/

namespace A183844.P4619662724613863508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183844.P4619662724613863508

/-! ## A183844.P2120084866409153039

`A183845(eq[7, A193592(n)])`
-/

namespace A183844.P2120084866409153039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183844.P2120084866409153039

/-! ## A183844.P4215593454346102325

`A183845(A052905(n+5)-2)`
-/

namespace A183844.P4215593454346102325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183845 (A052905 (n + 5) - 2).toNat

end

end A183844.P4215593454346102325

/-!
# A183845: T(n,k) = Number of (n+1) X (k+1) binary arrays with each element of every 2 X 2 subblock being the sum mod 2 of two others.

The programs for A183845, there is no canonical definition to state claims against.
-/

/-! ## A183845.P12255755920067918036

`A183854(n+1)-A233883(n+1)`
-/

namespace A183845.P12255755920067918036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (n + 1) - A233883 (n + 1)

end

end A183845.P12255755920067918036

/-! ## A183845.P3877580349039519174

`A000027(A183854(n+1)%A233883(n+1))`
-/

namespace A183845.P3877580349039519174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A183854 (n + 1)) (A233883 (n + 1))).toNat

end

end A183845.P3877580349039519174

/-!
# A183846: Number of (n+1)X(n+1) 0..3 arrays with each element of every 2X2 subblock being the sum mod 4 of two others.

The programs for A183846, there is no canonical definition to state claims against.
-/

/-! ## A183846.P12920666130252456124

`A183854(∑[4*n]+1)`
-/

namespace A183846.P12920666130252456124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183846.P12920666130252456124

/-! ## A183846.P3278188928442862849

`record[root(A183854(n+1), A143182(n))]`
-/

namespace A183846.P3278188928442862849
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183854 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183846.P3278188928442862849

/-! ## A183846.P6784447762400475868

`record[gcd(A049581(n), A183854(n+1))]`
-/

namespace A183846.P6784447762400475868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A183854 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183846.P6784447762400475868

/-! ## A183846.P15500300864178239938

`record[root(A183854(n+1), A072030(n+1))]`
-/

namespace A183846.P15500300864178239938
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183854 (n + 1) : ℝ) ^ (1 / (A072030 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183846.P15500300864178239938

/-! ## A183846.P14611628595550014345

`lcm(A065357(n), A183854(A001844(n)))`
-/

namespace A183846.P14611628595550014345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A183854 (A001844 n).toNat)

end

end A183846.P14611628595550014345

/-!
# A183847: Number of (n+1)X3 0..3 arrays with each element of every 2X2 subblock being the sum mod 4 of two others.

The programs for A183847, there is no canonical definition to state claims against.
-/

/-! ## A183847.P12307425323809117985

`A233877(n+1)+A183838(n+1)`
-/

namespace A183847.P12307425323809117985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233877 (n + 1) + A183838 (n + 1)

end

end A183847.P12307425323809117985

/-! ## A183847.P17169240160462012369

`A183854(∑[n+1]+2)`
-/

namespace A183847.P17169240160462012369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183847.P17169240160462012369

/-! ## A183847.P5672579783403617073

`record[A183854(A133263(A008611(n)))]`
-/

namespace A183847.P5672579783403617073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183847.P5672579783403617073

/-! ## A183847.P20484198243848915

`A183854(A133263(n+1))%A183829(n+1)`
-/

namespace A183847.P20484198243848915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183854 (A133263 (n + 1)).toNat) (A183829 (n + 1))

end

end A183847.P20484198243848915

/-! ## A183847.P7296757529918431740

`A183854(A000096(n)+3)%A183829(n+1)`
-/

namespace A183847.P7296757529918431740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183854 (A000096 n + 3).toNat) (A183829 (n + 1))

end

end A183847.P7296757529918431740

/-!
# A183848: Number of (n+1)X4 0..3 arrays with each element of every 2X2 subblock being the sum mod 4 of two others.

The programs for A183848, there is no canonical definition to state claims against.
-/

/-! ## A183848.P10568642695806315605

`A233878(n+1)+A183839(n+1)`
-/

namespace A183848.P10568642695806315605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233878 (n + 1) + A183839 (n + 1)

end

end A183848.P10568642695806315605

/-! ## A183848.P5105307177037374294

`A183854(∑[n+2]+4)`
-/

namespace A183848.P5105307177037374294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183848.P5105307177037374294

/-! ## A183848.P9952426306288369006

`A185037(n)+A183854(A167614(n+1))`
-/

namespace A183848.P9952426306288369006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n + A183854 (A167614 (n + 1)).toNat

end

end A183848.P9952426306288369006

/-! ## A183848.P1552691632512221104

`A185284(n)+A183854(A167614(n+1))`
-/

namespace A183848.P1552691632512221104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A183854 (A167614 (n + 1)).toNat

end

end A183848.P1552691632512221104

/-! ## A183848.P11719350298131296737

`lcm(A033999(n), A183854(A167614(n+1)))`
-/

namespace A183848.P11719350298131296737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A183854 (A167614 (n + 1)).toNat)

end

end A183848.P11719350298131296737

/-!
# A183849: Number of (n+1)X5 0..3 arrays with each element of every 2X2 subblock being the sum mod 4 of two others.

The programs for A183849, there is no canonical definition to state claims against.
-/

/-! ## A183849.P14895652108667651028

`A183854(A374004(n+1))`
-/

namespace A183849.P14895652108667651028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A374004 (n + 1)).toNat

end

end A183849.P14895652108667651028

/-! ## A183849.P6044589786047240525

`A183854(A145018(n+4))`
-/

namespace A183849.P6044589786047240525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A145018 (n + 4)).toNat

end

end A183849.P6044589786047240525

/-! ## A183849.P14306648551543981376

`A183854(A141214(n)+7)`
-/

namespace A183849.P14306648551543981376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A141214 n + 7).toNat

end

end A183849.P14306648551543981376

/-! ## A183849.P976179960945681914

`A183854(A052905(n)+9)`
-/

namespace A183849.P976179960945681914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A052905 n + 9).toNat

end

end A183849.P976179960945681914

/-! ## A183849.P12735664426622006563

`A183854(A055999(n)+10)`
-/

namespace A183849.P12735664426622006563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A055999 n + 10).toNat

end

end A183849.P12735664426622006563

/-!
# A183850: Number of (n+1)X6 0..3 arrays with each element of every 2X2 subblock being the sum mod 4 of two others.

The programs for A183850, there is no canonical definition to state claims against.
-/

/-! ## A183850.P7183394683105277894

`A233880(n+1)+A183841(n+1)`
-/

namespace A183850.P7183394683105277894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233880 (n + 1) + A183841 (n + 1)

end

end A183850.P7183394683105277894

/-! ## A183850.P2410360805095691322

`A183854(A374005(n+1))`
-/

namespace A183850.P2410360805095691322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A374005 (n + 1)).toNat

end

end A183850.P2410360805095691322

/-! ## A183850.P10099502240502604448

`A183854(A167499(n+3))`
-/

namespace A183850.P10099502240502604448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A167499 (n + 3)).toNat

end

end A183850.P10099502240502604448

/-! ## A183850.P1657452184438199611

`A183854(eq[4, A002262(n)]+1)`
-/

namespace A183850.P1657452184438199611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183850.P1657452184438199611

/-! ## A183850.P1775221424677547412

`A233883(A167499(n+3))+A183841(n+1)`
-/

namespace A183850.P1775221424677547412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (A167499 (n + 3)).toNat + A183841 (n + 1)

end

end A183850.P1775221424677547412

/-!
# A183851: Number of (n+1)X7 0..3 arrays with each element of every 2X2 subblock being the sum mod 4 of two others.

The programs for A183851, there is no canonical definition to state claims against.
-/

/-! ## A183851.P12656511052585714602

`A183854(A374007(n+1))`
-/

namespace A183851.P12656511052585714602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A374007 (n + 1)).toNat

end

end A183851.P12656511052585714602

/-! ## A183851.P10245014123859728038

`A183854(A046691(n+3)+10)`
-/

namespace A183851.P10245014123859728038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A046691 (n + 3) + 10).toNat

end

end A183851.P10245014123859728038

/-! ## A183851.P13899691439937869595

`A183854(eq[7, A131818(n+1)])`
-/

namespace A183851.P13899691439937869595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183851.P13899691439937869595

/-! ## A183851.P9811666046352065525

`A183854(A052905(n+3))`
-/

namespace A183851.P9811666046352065525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A052905 (n + 3)).toNat

end

end A183851.P9811666046352065525

/-! ## A183851.P15985649778429599864

`A183854(eq[3, A219347(n)])`
-/

namespace A183851.P15985649778429599864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183851.P15985649778429599864

/-!
# A183852: Number of (n+1)X8 0..3 arrays with each element of every 2X2 subblock being the sum mod 4 of two others.

The programs for A183852, there is no canonical definition to state claims against.
-/

/-! ## A183852.P14029750555395741088

`A233882(n+1)+A183843(n+1)`
-/

namespace A183852.P14029750555395741088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233882 (n + 1) + A183843 (n + 1)

end

end A183852.P14029750555395741088

/-! ## A183852.P16591126031322374539

`A183854(A374008(n+1))`
-/

namespace A183852.P16591126031322374539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A374008 (n + 1)).toNat

end

end A183852.P16591126031322374539

/-! ## A183852.P5109293279557109863

`A183854(A056119(n)+28)`
-/

namespace A183852.P5109293279557109863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A056119 n + 28).toNat

end

end A183852.P5109293279557109863

/-! ## A183852.P16732679710693361651

`A183854(A167499(n+5)+2)`
-/

namespace A183852.P16732679710693361651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A167499 (n + 5) + 2).toNat

end

end A183852.P16732679710693361651

/-! ## A183852.P302942687023219036

`A183854(eq[8, A131818(n+1)])`
-/

namespace A183852.P302942687023219036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183852.P302942687023219036

/-!
# A183853: Number of (n+1)X9 0..3 arrays with each element of every 2X2 subblock being the sum mod 4 of two others.

The programs for A183853, there is no canonical definition to state claims against.
-/

/-! ## A183853.P18292521115982188641

`A183854(A374009(n+1))`
-/

namespace A183853.P18292521115982188641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A374009 (n + 1)).toNat

end

end A183853.P18292521115982188641

/-! ## A183853.P9528741889852572386

`A183854(eq[9, A131818(n+1)])`
-/

namespace A183853.P9528741889852572386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183853.P9528741889852572386

/-! ## A183853.P3261098537756508673

`A183854(eq[5, A219347(n)])`
-/

namespace A183853.P3261098537756508673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183853.P3261098537756508673

/-! ## A183853.P8200101360088325742

`A183854(eq[7, A193592(n)])`
-/

namespace A183853.P8200101360088325742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183853.P8200101360088325742

/-! ## A183853.P1664010860750620091

`A183854(A052905(n+5)-2)`
-/

namespace A183853.P1664010860750620091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183854 (A052905 (n + 5) - 2).toNat

end

end A183853.P1664010860750620091

/-!
# A183854: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with each element of every 2X2 subblock being the sum mod 4 of two others.

The programs for A183854, there is no canonical definition to state claims against.
-/

/-! ## A183854.P8520133421329960549

`A233883(n+1)+A183845(n+1)`
-/

namespace A183854.P8520133421329960549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233883 (n + 1) + A183845 (n + 1)

end

end A183854.P8520133421329960549

/-!
# A183855: n+floor(sqrt(3n-3)); complement of A128422.

The programs for A183855, the canonical program `A183855.P3267212982243972029` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183855 has offset 1).

The definition of A183855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(3*(n+1)-3))` (program `A183855.P3267212982243972029`, by `A183855.P3267212982243972029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183855.P3267212982243972029

`n+1+floor(sqrt(3*(n+1)-3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183855

/-- `n+1+floor(sqrt(3*(n+1)-3))` -/
def P3267212982243972029.Spec : Prop :=
  ∀ n, P3267212982243972029.a n = A183855 (n + 1)

theorem P3267212982243972029.correct : P3267212982243972029.Spec := by
  intro n
  simp only [A183855, Nat.add_sub_cancel]

end A183855

/-! ## A183855.P12570117984498288674

`comp[2*floor(C(n, 2)/3)]`
-/

namespace A183855.P12570117984498288674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(Nat.choose n 2 : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183855.P12570117984498288674

namespace A183855

/-- `comp[2*floor(C(n, 2)/3)]` -/
def P12570117984498288674.Spec : Prop :=
  ∀ n, (P12570117984498288674.a n : ℤ) = A183855 (n + 1)

end A183855

/-! ## A183855.P16263136969204046748

`ceil(sqrt(cos(1)+3*n)+n)`
-/

namespace A183855.P16263136969204046748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.cos (1 : ℝ) + (3 * n : ℝ)) + (n : ℝ)⌉

end

end A183855.P16263136969204046748

namespace A183855

/-- `ceil(sqrt(cos(1)+3*n)+n)` -/
def P16263136969204046748.Spec : Prop :=
  ∀ n, P16263136969204046748.a n = A183855 (n + 1)

end A183855

/-! ## A183855.P5230606787058221883

`ceil(sqrt(sin(1)+3*n)+n)`
-/

namespace A183855.P5230606787058221883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sin (1 : ℝ) + (3 * n : ℝ)) + (n : ℝ)⌉

end

end A183855.P5230606787058221883

namespace A183855

/-- `ceil(sqrt(sin(1)+3*n)+n)` -/
def P5230606787058221883.Spec : Prop :=
  ∀ n, P5230606787058221883.a n = A183855 (n + 1)

end A183855

/-! ## A183855.P18013175522358596120

`abs(xor(floor(sqrt(3*n)), -1))+n`
-/

namespace A183855.P18013175522358596120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Nat.sqrt (3 * n) : ℤ) (-1)| + (n : ℤ)

end

end A183855.P18013175522358596120

namespace A183855

/-- `abs(xor(floor(sqrt(3*n)), -1))+n` -/
def P18013175522358596120.Spec : Prop :=
  ∀ n, P18013175522358596120.a n = A183855 (n + 1)

end A183855

/-! ## A183855.P16064549789436690349

`comp[∑[a(n-3)+2]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A183855.P16064549789436690349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 3) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183855.P16064549789436690349

namespace A183855

/-- `comp[∑[a(n-3)+2]]` -/
def P16064549789436690349.Spec : Prop :=
  ∀ n, (P16064549789436690349.a n : ℤ) = A183855 (n + 1)

end A183855

/-! ## A183855.P963908140357732294

`comp[and(ceil((n+1)*(n+2)/3), -2)]`
-/

namespace A183855.P963908140357732294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈((n + 1) * (n + 2) : ℚ) / 3⌉ (-2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183855.P963908140357732294

namespace A183855

/-- `comp[and(ceil((n+1)*(n+2)/3), -2)]` -/
def P963908140357732294.Spec : Prop :=
  ∀ n, (P963908140357732294.a n : ℤ) = A183855 (n + 1)

end A183855

/-! ## A183855.P3449392238782870140

`comp[A128422(n+1)]`
-/

namespace A183855.P3449392238782870140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183855.P3449392238782870140

namespace A183855

/-- `comp[A128422(n+1)]` -/
def P3449392238782870140.Spec : Prop :=
  ∀ n, (P3449392238782870140.a n : ℤ) = A183855 (n + 1)

end A183855

/-! ## A183855.P14658827099135150475

`comp[A296805(n+1)]`
-/

namespace A183855.P14658827099135150475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183855.P14658827099135150475

namespace A183855

/-- `comp[A296805(n+1)]` -/
def P14658827099135150475.Spec : Prop :=
  ∀ n, (P14658827099135150475.a n : ℤ) = A183855 (n + 1)

end A183855

/-! ## A183855.P16822282378888239449

`ceil(sqrt(A016777(n))+n)`
-/

namespace A183855.P16822282378888239449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016777 n : ℝ) + (n : ℝ)⌉

end

end A183855.P16822282378888239449

namespace A183855

/-- `ceil(sqrt(A016777(n))+n)` -/
def P16822282378888239449.Spec : Prop :=
  ∀ n, P16822282378888239449.a n = A183855 (n + 1)

end A183855

/-! ## A183855.P4892378513505516307

`ceil(sqrt(A276283(n))+n)`
-/

namespace A183855.P4892378513505516307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A276283 n : ℝ) + (n : ℝ)⌉

end

end A183855.P4892378513505516307

namespace A183855

/-- `ceil(sqrt(A276283(n))+n)` -/
def P4892378513505516307.Spec : Prop :=
  ∀ n, P4892378513505516307.a n = A183855 (n + 1)

end A183855

/-! ## A183855.P7936342417850267230

`ceil(sqrt(sqrt(A010002(n)))+n)`
-/

namespace A183855.P7936342417850267230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A010002 n : ℝ)) + (n : ℝ)⌉

end

end A183855.P7936342417850267230

namespace A183855

/-- `ceil(sqrt(sqrt(A010002(n)))+n)` -/
def P7936342417850267230.Spec : Prop :=
  ∀ n, P7936342417850267230.a n = A183855 (n + 1)

end A183855

/-! ## A183855.P6728487005476969441

`∑[char[A008806(2*n)]+1]`
-/

namespace A183855.P6728487005476969441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183855.P6728487005476969441

namespace A183855

/-- `∑[char[A008806(2*n)]+1]` -/
def P6728487005476969441.Spec : Prop :=
  ∀ n, (P6728487005476969441.a n : ℤ) = A183855 (n + 1)

end A183855

/-! ## A183855.P947387355194532725

`ceil(sqrt(A112652(n+1))+n)`
-/

namespace A183855.P947387355194532725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A112652 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A183855.P947387355194532725

namespace A183855

/-- `ceil(sqrt(A112652(n+1))+n)` -/
def P947387355194532725.Spec : Prop :=
  ∀ n, P947387355194532725.a n = A183855 (n + 1)

end A183855

/-! ## A183855.P17293683563706015564

`∑[char[A036410(2*n+1)]+1]`
-/

namespace A183855.P17293683563706015564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036410 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183855.P17293683563706015564

namespace A183855

/-- `∑[char[A036410(2*n+1)]+1]` -/
def P17293683563706015564.Spec : Prop :=
  ∀ n, (P17293683563706015564.a n : ℤ) = A183855 (n + 1)

end A183855

/-! ## A183855.P17314517067789062431

`comp[A004523(∑[n])]`
-/

namespace A183855.P17314517067789062431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183855.P17314517067789062431

namespace A183855

/-- `comp[A004523(∑[n])]` -/
def P17314517067789062431.Spec : Prop :=
  ∀ n, (P17314517067789062431.a n : ℤ) = A183855 (n + 1)

end A183855

/-! ## A183855.P17680188216083565519

`ceil(sqrt(A071054(2*n))+n)`
-/

namespace A183855.P17680188216083565519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A071054 (2 * n) : ℝ) + (n : ℝ)⌉

end

end A183855.P17680188216083565519

namespace A183855

/-- `ceil(sqrt(A071054(2*n))+n)` -/
def P17680188216083565519.Spec : Prop :=
  ∀ n, P17680188216083565519.a n = A183855 (n + 1)

end A183855

/-! ## A183855.P9299757579869682889

`ceil(sqrt(A165367(2*n))+n)`
-/

namespace A183855.P9299757579869682889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A165367 (2 * n) : ℝ) + (n : ℝ)⌉

end

end A183855.P9299757579869682889

namespace A183855

/-- `ceil(sqrt(A165367(2*n))+n)` -/
def P9299757579869682889.Spec : Prop :=
  ∀ n, P9299757579869682889.a n = A183855 (n + 1)

end A183855

/-! ## A183855.P7733153399834092754

`ceil(sqrt(A001651(2*n+1))+n)`
-/

namespace A183855.P7733153399834092754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001651 (2 * n + 1) : ℝ) + (n : ℝ)⌉

end

end A183855.P7733153399834092754

namespace A183855

/-- `ceil(sqrt(A001651(2*n+1))+n)` -/
def P7733153399834092754.Spec : Prop :=
  ∀ n, P7733153399834092754.a n = A183855 (n + 1)

end A183855

/-! ## A183855.P3704123739832860100

`ceil(sqrt(A026167(2*n+1))+n)`
-/

namespace A183855.P3704123739832860100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A026167 (2 * n + 1) : ℝ) + (n : ℝ)⌉

end

end A183855.P3704123739832860100

namespace A183855

/-- `ceil(sqrt(A026167(2*n+1))+n)` -/
def P3704123739832860100.Spec : Prop :=
  ∀ n, P3704123739832860100.a n = A183855 (n + 1)

end A183855

/-!
# A183856: n+floor(sqrt(3n-2)); complement of A143975.

The programs for A183856, the canonical program `A183856.P45518776876891259` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183856 has offset 1).

The definition of A183856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(3*(n+1)-2))` (program `A183856.P45518776876891259`, by `A183856.P45518776876891259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183856.P45518776876891259

`n+1+floor(sqrt(3*(n+1)-2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183856

/-- `n+1+floor(sqrt(3*(n+1)-2))` -/
def P45518776876891259.Spec : Prop :=
  ∀ n, P45518776876891259.a n = A183856 (n + 1)

theorem P45518776876891259.correct : P45518776876891259.Spec := by
  intro n
  simp only [A183856, Nat.add_sub_cancel]

end A183856

/-! ## A183856.P7373460935545275182

`comp[ceil(2*C(n+2, 2)/3)-1]`
-/

namespace A183856.P7373460935545275182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Nat.choose (n + 2) 2 : ℚ) / 3⌉ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183856.P7373460935545275182

namespace A183856

/-- `comp[ceil(2*C(n+2, 2)/3)-1]` -/
def P7373460935545275182.Spec : Prop :=
  ∀ n, (P7373460935545275182.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P15460427284189890984

`comp[round(2/3*C(n+2, 2))-1]`
-/

namespace A183856.P15460427284189890984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (Nat.choose (n + 2) 2 : ℚ)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183856.P15460427284189890984

namespace A183856

/-- `comp[round(2/3*C(n+2, 2))-1]` -/
def P15460427284189890984.Spec : Prop :=
  ∀ n, (P15460427284189890984.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P11099104994672583434

`comp[A007980(n)-1]`
-/

namespace A183856.P11099104994672583434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183856.P11099104994672583434

namespace A183856

/-- `comp[A007980(n)-1]` -/
def P11099104994672583434.Spec : Prop :=
  ∀ n, (P11099104994672583434.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P10578174390667514856

`comp[A008796(n)-1]`
-/

namespace A183856.P10578174390667514856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183856.P10578174390667514856

namespace A183856

/-- `comp[A008796(n)-1]` -/
def P10578174390667514856.Spec : Prop :=
  ∀ n, (P10578174390667514856.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P8575020539004389836

`comp[A097922(n)-3]`
-/

namespace A183856.P8575020539004389836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097922 n - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183856.P8575020539004389836

namespace A183856

/-- `comp[A097922(n)-3]` -/
def P8575020539004389836.Spec : Prop :=
  ∀ n, (P8575020539004389836.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P479120339230550334

`comp[n+A000212(n)]`
-/

namespace A183856.P479120339230550334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000212 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183856.P479120339230550334

namespace A183856

/-- `comp[n+A000212(n)]` -/
def P479120339230550334.Spec : Prop :=
  ∀ n, (P479120339230550334.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P12668199079243818129

`comp[∑[A004396(n)]-1]`
-/

namespace A183856.P12668199079243818129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183856.P12668199079243818129

namespace A183856

/-- `comp[∑[A004396(n)]-1]` -/
def P12668199079243818129.Spec : Prop :=
  ∀ n, (P12668199079243818129.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P7410731544536924433

`ceil(sqrt(A016789(n))+n)`
-/

namespace A183856.P7410731544536924433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016789 n : ℝ) + (n : ℝ)⌉

end

end A183856.P7410731544536924433

namespace A183856

/-- `ceil(sqrt(A016789(n))+n)` -/
def P7410731544536924433.Spec : Prop :=
  ∀ n, P7410731544536924433.a n = A183856 (n + 1)

end A183856

/-! ## A183856.P8535536008442198147

`comp[A096777(n+1)-2]`
-/

namespace A183856.P8535536008442198147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183856.P8535536008442198147

namespace A183856

/-- `comp[A096777(n+1)-2]` -/
def P8535536008442198147.Spec : Prop :=
  ∀ n, (P8535536008442198147.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P10698412669409351930

`comp[A069905(2*n)+n]`
-/

namespace A183856.P10698412669409351930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (2 * n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183856.P10698412669409351930

namespace A183856

/-- `comp[A069905(2*n)+n]` -/
def P10698412669409351930.Spec : Prop :=
  ∀ n, (P10698412669409351930.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P16690653352164676853

`∑[char[A008724(2*n)]+1]`
-/

namespace A183856.P16690653352164676853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183856.P16690653352164676853

namespace A183856

/-- `∑[char[A008724(2*n)]+1]` -/
def P16690653352164676853.Spec : Prop :=
  ∀ n, (P16690653352164676853.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P12025650739489633334

`∑[char[A211540(2*n)]+1]`
-/

namespace A183856.P12025650739489633334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183856.P12025650739489633334

namespace A183856

/-- `∑[char[A211540(2*n)]+1]` -/
def P12025650739489633334.Spec : Prop :=
  ∀ n, (P12025650739489633334.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P7405366222995119199

`ceil(sqrt(A047270(n+1))+n)`
-/

namespace A183856.P7405366222995119199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A047270 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A183856.P7405366222995119199

namespace A183856

/-- `ceil(sqrt(A047270(n+1))+n)` -/
def P7405366222995119199.Spec : Prop :=
  ∀ n, P7405366222995119199.a n = A183856 (n + 1)

end A183856

/-! ## A183856.P1542740003438966538

`comp[A004396(∑[n])-1]`
-/

namespace A183856.P1542740003438966538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f2 j) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183856.P1542740003438966538

namespace A183856

/-- `comp[A004396(∑[n])-1]` -/
def P1542740003438966538.Spec : Prop :=
  ∀ n, (P1542740003438966538.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P1461030365502497308

`lt[1, A212633(lt[2, A212633(n+1)])]`
-/

namespace A183856.P1461030365502497308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183856.P1461030365502497308

namespace A183856

/-- `lt[1, A212633(lt[2, A212633(n+1)])]` -/
def P1461030365502497308.Spec : Prop :=
  ∀ n, (P1461030365502497308.a n : ℤ) = A183856 (n + 1)

end A183856

/-! ## A183856.P820041708170547008

`ceil(sqrt(A001651(2*(n+1)))+n)`
-/

namespace A183856.P820041708170547008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001651 (2 * (n + 1)) : ℝ) + (n : ℝ)⌉

end

end A183856.P820041708170547008

namespace A183856

/-- `ceil(sqrt(A001651(2*(n+1)))+n)` -/
def P820041708170547008.Spec : Prop :=
  ∀ n, P820041708170547008.a n = A183856 (n + 1)

end A183856

/-! ## A183856.P6038770482795294265

`ceil(sqrt(A047251(2*(n+1)))+n)`
-/

namespace A183856.P6038770482795294265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A047251 (2 * (n + 1)) : ℝ) + (n : ℝ)⌉

end

end A183856.P6038770482795294265

namespace A183856

/-- `ceil(sqrt(A047251(2*(n+1)))+n)` -/
def P6038770482795294265.Spec : Prop :=
  ∀ n, P6038770482795294265.a n = A183856 (n + 1)

end A183856

/-! ## A183856.P8961433649943947846

`ceil(sqrt(A141259(2*(n+1)))+n)`
-/

namespace A183856.P8961433649943947846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A141259 (2 * (n + 1)) : ℝ) + (n : ℝ)⌉

end

end A183856.P8961433649943947846

namespace A183856

/-- `ceil(sqrt(A141259(2*(n+1)))+n)` -/
def P8961433649943947846.Spec : Prop :=
  ∀ n, P8961433649943947846.a n = A183856 (n + 1)

end A183856

/-!
# A183857: a(n) = n - 1 + ceiling((2/3)*n^2); complement of A183874.

The programs for A183857, the canonical program `A183857.P7262270668127596012` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183857 has offset 1).

The definition of A183857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+ceil(2/3*(n+1)²)` (program `A183857.P7262270668127596012`, by `A183857.P7262270668127596012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183857.P7262270668127596012

`n+ceil(2/3*(n+1)²)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183857

/-- `n+ceil(2/3*(n+1)²)` -/
def P7262270668127596012.Spec : Prop :=
  ∀ n, P7262270668127596012.a n = A183857 (n + 1)

theorem P7262270668127596012.correct : P7262270668127596012.Spec := by
  intro n
  simp only [A183857, Nat.add_sub_cancel]

end A183857

/-! ## A183857.P17990751726489450964

`ogf((1+2x+x^2+x^3-x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A183857.P17990751726489450964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 1, -1] [1, -2, 1, -1, 2, -1] n

end

end A183857.P17990751726489450964

namespace A183857

/-- `ogf((1+2x+x^2+x^3-x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P17990751726489450964.Spec : Prop :=
  ∀ n, P17990751726489450964.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P14050780897293535040

`∑[comp[lcm(4, n)]]+n`
-/

namespace A183857.P14050780897293535040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183857.P14050780897293535040

namespace A183857

/-- `∑[comp[lcm(4, n)]]+n` -/
def P14050780897293535040.Spec : Prop :=
  ∀ n, (P14050780897293535040.a n : ℤ) = A183857 (n + 1)

end A183857

/-! ## A183857.P15051059176895254058

`∑[comp[and(n, -4)]]+n`
-/

namespace A183857.P15051059176895254058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183857.P15051059176895254058

namespace A183857

/-- `∑[comp[and(n, -4)]]+n` -/
def P15051059176895254058.Spec : Prop :=
  ∀ n, (P15051059176895254058.a n : ℤ) = A183857 (n + 1)

end A183857

/-! ## A183857.P11029086724711236124

`∑[comp[or(3, n)]+2]-1`
-/

namespace A183857.P11029086724711236124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A183857.P11029086724711236124

namespace A183857

/-- `∑[comp[or(3, n)]+2]-1` -/
def P11029086724711236124.Spec : Prop :=
  ∀ n, P11029086724711236124.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P13812290257986013472

`∑[∑[(gcd(3, n)-1)!]]-1`
-/

namespace A183857.P13812290257986013472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.gcd 3 n : ℤ) - 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A183857.P13812290257986013472

namespace A183857

/-- `∑[∑[(gcd(3, n)-1)!]]-1` -/
def P13812290257986013472.Spec : Prop :=
  ∀ n, P13812290257986013472.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P9729092782095072975

`∑[record[ceil(xor(7, n+1)/6)]]`
-/

namespace A183857.P9729092782095072975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 7 (n + 1) : ℚ) / 6⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183857.P9729092782095072975

namespace A183857

/-- `∑[record[ceil(xor(7, n+1)/6)]]` -/
def P9729092782095072975.Spec : Prop :=
  ∀ n, P9729092782095072975.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P2595261049642676123

`∑[a(n-3)+4]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A183857.P2595261049642676123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 6] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183857.P2595261049642676123

namespace A183857

/-- `∑[a(n-3)+4]` -/
def P2595261049642676123.Spec : Prop :=
  ∀ n, (P2595261049642676123.a n : ℤ) = A183857 (n + 1)

end A183857

/-! ## A183857.P5930716850666960913

`-(∑[∑[n²%3-2]]+1)`
-/

namespace A183857.P5930716850666960913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 : ℕ) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183857.P5930716850666960913

namespace A183857

/-- `-(∑[∑[n²%3-2]]+1)` -/
def P5930716850666960913.Spec : Prop :=
  ∀ n, P5930716850666960913.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P6523437584257672107

`∑[record[xor(3, n-a(n-1))]]` with `a(0)=1`
-/

namespace A183857.P6523437584257672107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.xor 3 ((n : ℤ) - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183857.P6523437584257672107

namespace A183857

/-- `∑[record[xor(3, n-a(n-1))]]` -/
def P6523437584257672107.Spec : Prop :=
  ∀ n, P6523437584257672107.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P14450402719906920736

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183857.P14450402719906920736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183857.P14450402719906920736

namespace A183857

/-- `∑[∑[floor(a(n-3))]]` -/
def P14450402719906920736.Spec : Prop :=
  ∀ n, (P14450402719906920736.a n : ℤ) = A183857 (n + 1)

end A183857

/-! ## A183857.P10654535124611446519

`round((n+3)*or(1, 2*n)/3)`
-/

namespace A183857.P10654535124611446519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((Nat.lor 1 (2 * n) : ℚ) / 3))

end

end A183857.P10654535124611446519

namespace A183857

/-- `round((n+3)*or(1, 2*n)/3)` -/
def P10654535124611446519.Spec : Prop :=
  ∀ n, P10654535124611446519.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P7085686784335282563

`round((n+3)*xor(1, 2*n)/3)`
-/

namespace A183857.P7085686784335282563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((Nat.xor 1 (2 * n) : ℚ) / 3))

end

end A183857.P7085686784335282563

namespace A183857

/-- `round((n+3)*xor(1, 2*n)/3)` -/
def P7085686784335282563.Spec : Prop :=
  ∀ n, P7085686784335282563.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P523193395524985180

`ceil((2*n+1)/asin(3/(n+3)))`
-/

namespace A183857.P523193395524985180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.arcsin (3 / (n + 3 : ℚ) : ℝ)⌉

end

end A183857.P523193395524985180

namespace A183857

/-- `ceil((2*n+1)/asin(3/(n+3)))` -/
def P523193395524985180.Spec : Prop :=
  ∀ n, P523193395524985180.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P18225770873081583493

`ceil((2*n+1)/sinh(3/(n+3)))`
-/

namespace A183857.P18225770873081583493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.sinh (3 / (n + 3 : ℚ) : ℝ)⌉

end

end A183857.P18225770873081583493

namespace A183857

/-- `ceil((2*n+1)/sinh(3/(n+3)))` -/
def P18225770873081583493.Spec : Prop :=
  ∀ n, P18225770873081583493.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P6683500118025324127

`round(cot(3/((2*n+1)*(n+3))))`
-/

namespace A183857.P6683500118025324127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (3 / ((2 * n + 1) * (n + 3) : ℚ) : ℝ))

end

end A183857.P6683500118025324127

namespace A183857

/-- `round(cot(3/((2*n+1)*(n+3))))` -/
def P6683500118025324127.Spec : Prop :=
  ∀ n, P6683500118025324127.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P9786492152022404348

`round((n+3)/(3*acot(2*n+1)))`
-/

namespace A183857.P9786492152022404348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℝ) / (3 * SequenceMachineLib.acot (2 * n + 1 : ℝ)))

end

end A183857.P9786492152022404348

namespace A183857

/-- `round((n+3)/(3*acot(2*n+1)))` -/
def P9786492152022404348.Spec : Prop :=
  ∀ n, P9786492152022404348.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P1481245325535409877

`∑[∑[a(n-3)^a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=1`
-/

namespace A183857.P1481245325535409877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2, 1] fun n f2 =>
  f2 (n - 3) ^ f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183857.P1481245325535409877

namespace A183857

/-- `∑[∑[a(n-3)^a(n-1)]]` -/
def P1481245325535409877.Spec : Prop :=
  ∀ n, (P1481245325535409877.a n : ℤ) = A183857 (n + 1)

end A183857

/-! ## A183857.P13991733212070657246

`round(C(2*n+1, 2)/3+2*n+1)`
-/

namespace A183857.P13991733212070657246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 1) 2 : ℚ) / 3 + (2 * n + 1 : ℚ))

end

end A183857.P13991733212070657246

namespace A183857

/-- `round(C(2*n+1, 2)/3+2*n+1)` -/
def P13991733212070657246.Spec : Prop :=
  ∀ n, P13991733212070657246.a n = A183857 (n + 1)

end A183857

/-! ## A183857.P1209823402111624157

`∑[∑[a(a(n-1))/a(n-2)]]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A183857.P1209823402111624157
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f2 =>
  f2 (SequenceMachineLib.roundAway (f2 (n - 1))).toNat / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183857.P1209823402111624157

namespace A183857

/-- `∑[∑[a(a(n-1))/a(n-2)]]` -/
def P1209823402111624157.Spec : Prop :=
  ∀ n, P1209823402111624157.a n = (A183857 (n + 1) : ℚ)

end A183857

/-!
# A183858: a(n) = n + floor(sqrt(3n)).

The programs for A183858, the canonical program `A183858.P9585706149059551704` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183858 has offset 1).

The definition of A183858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(3*(n+1)))` (program `A183858.P9585706149059551704`, by `A183858.P9585706149059551704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183858.P9585706149059551704

`n+1+floor(sqrt(3*(n+1)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183858

/-- `n+1+floor(sqrt(3*(n+1)))` -/
def P9585706149059551704.Spec : Prop :=
  ∀ n, (P9585706149059551704.a n : ℤ) = A183858 (n + 1)

theorem P9585706149059551704.correct : P9585706149059551704.Spec := by
  intro n
  simp only [A183858, Nat.add_sub_cancel]

end A183858

/-! ## A183858.P506571893011444482

`comp[floor(n/tan(3/(n+1)))]`
-/

namespace A183858.P506571893011444482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.tan (3 / (n + 1 : ℚ) : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183858.P506571893011444482

namespace A183858

/-- `comp[floor(n/tan(3/(n+1)))]` -/
def P506571893011444482.Spec : Prop :=
  ∀ n, (P506571893011444482.a n : ℤ) = A183858 (n + 1)

end A183858

/-! ## A183858.P17321586080168820951

`floor(sqrt(3/acot(n+1))+n+1)`
-/

namespace A183858.P17321586080168820951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 / SequenceMachineLib.acot (n + 1 : ℝ)) + (n + 1 : ℝ)⌋

end

end A183858.P17321586080168820951

namespace A183858

/-- `floor(sqrt(3/acot(n+1))+n+1)` -/
def P17321586080168820951.Spec : Prop :=
  ∀ n, P17321586080168820951.a n = A183858 (n + 1)

end A183858

/-! ## A183858.P6163071221439119550

`comp[A229093(n)-n]`
-/

namespace A183858.P6163071221439119550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229093 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183858.P6163071221439119550

namespace A183858

/-- `comp[A229093(n)-n]` -/
def P6163071221439119550.Spec : Prop :=
  ∀ n, (P6163071221439119550.a n : ℤ) = A183858 (n + 1)

end A183858

/-! ## A183858.P16727236053228376539

`∑[Δ[A202304(n)]+1]`
-/

namespace A183858.P16727236053228376539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183858.P16727236053228376539

namespace A183858

/-- `∑[Δ[A202304(n)]+1]` -/
def P16727236053228376539.Spec : Prop :=
  ∀ n, P16727236053228376539.a n = A183858 (n + 1)

end A183858

/-! ## A183858.P467946995719145007

`∑[char[A032765(n)]+1]`
-/

namespace A183858.P467946995719145007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183858.P467946995719145007

namespace A183858

/-- `∑[char[A032765(n)]+1]` -/
def P467946995719145007.Spec : Prop :=
  ∀ n, (P467946995719145007.a n : ℤ) = A183858 (n + 1)

end A183858

/-! ## A183858.P6465148757268000242

`∑[A052544(Δ[A202304(n)])]`
-/

namespace A183858.P6465148757268000242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183858.P6465148757268000242

namespace A183858

/-- `∑[A052544(Δ[A202304(n)])]` -/
def P6465148757268000242.Spec : Prop :=
  ∀ n, P6465148757268000242.a n = A183858 (n + 1)

end A183858

/-! ## A183858.P5703981284176864831

`A023443(A183855(n+2))`
-/

namespace A183858.P5703981284176864831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183855 (n + 2)).toNat

end

end A183858.P5703981284176864831

namespace A183858

/-- `A023443(A183855(n+2))` -/
def P5703981284176864831.Spec : Prop :=
  ∀ n, P5703981284176864831.a n = A183858 (n + 1)

end A183858

/-! ## A183858.P8430705069781005131

`∑[Δ[A006218(3*n)]%2+1]`
-/

namespace A183858.P8430705069781005131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183858.P8430705069781005131

namespace A183858

/-- `∑[Δ[A006218(3*n)]%2+1]` -/
def P8430705069781005131.Spec : Prop :=
  ∀ n, P8430705069781005131.a n = A183858 (n + 1)

end A183858

/-! ## A183858.P11632704849645838109

`A000196(A028387(A202304(n+1)+n))`
-/

namespace A183858.P11632704849645838109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028387 (A202304 (n + 1) + (n : ℤ)).toNat).toNat

end

end A183858.P11632704849645838109

namespace A183858

/-- `A000196(A028387(A202304(n+1)+n))` -/
def P11632704849645838109.Spec : Prop :=
  ∀ n, P11632704849645838109.a n = A183858 (n + 1)

end A183858

/-!
# A183859: a(n) = n - 1 + ceiling((n^2)/3); complement of A183858.

The programs for A183859, the canonical program `A183859.P16213350532410838274` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183859 has offset 1).

The definition of A183859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+ceil((n+1)²/3)` (program `A183859.P16213350532410838274`, by `A183859.P16213350532410838274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183859.P16213350532410838274

`n+ceil((n+1)²/3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183859

/-- `n+ceil((n+1)²/3)` -/
def P16213350532410838274.Spec : Prop :=
  ∀ n, P16213350532410838274.a n = A183859 (n + 1)

theorem P16213350532410838274.correct : P16213350532410838274.Spec := by
  intro n
  simp only [A183859, Nat.add_sub_cancel]

end A183859

/-! ## A183859.P14538898432150356949

`ogf((1+x+x^3-x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A183859.P14538898432150356949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1, -1] [1, -2, 1, -1, 2, -1] n

end

end A183859.P14538898432150356949

namespace A183859

/-- `ogf((1+x+x^3-x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P14538898432150356949.Spec : Prop :=
  ∀ n, P14538898432150356949.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P17860439976482274982

`record[ceil((1-n)²/3-n)]`
-/

namespace A183859.P17860439976482274982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (n : ℤ)) ^ 2 : ℚ) / 3 - (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183859.P17860439976482274982

namespace A183859

/-- `record[ceil((1-n)²/3-n)]` -/
def P17860439976482274982.Spec : Prop :=
  ∀ n, P17860439976482274982.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P18107649382467885478

`∑[a(n-3)+2]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A183859.P18107649382467885478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 4] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183859.P18107649382467885478

namespace A183859

/-- `∑[a(n-3)+2]` -/
def P18107649382467885478.Spec : Prop :=
  ∀ n, (P18107649382467885478.a n : ℤ) = A183859 (n + 1)

end A183859

/-! ## A183859.P13894167903534461107

`floor((n+2)/tan(3/(n+3)))`
-/

namespace A183859.P13894167903534461107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.tan (3 / (n + 3 : ℚ) : ℝ)⌋

end

end A183859.P13894167903534461107

namespace A183859

/-- `floor((n+2)/tan(3/(n+3)))` -/
def P13894167903534461107.Spec : Prop :=
  ∀ n, P13894167903534461107.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P15530948548472410335

`floor((n+2)*cot(3/(n+3)))`
-/

namespace A183859.P15530948548472410335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) * Real.cot (3 / (n + 3 : ℚ) : ℝ)⌋

end

end A183859.P15530948548472410335

namespace A183859

/-- `floor((n+2)*cot(3/(n+3)))` -/
def P15530948548472410335.Spec : Prop :=
  ∀ n, P15530948548472410335.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P2407827245116079483

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A183859.P2407827245116079483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183859.P2407827245116079483

namespace A183859

/-- `∑[∑[floor(a(n-3))]]` -/
def P2407827245116079483.Spec : Prop :=
  ∀ n, (P2407827245116079483.a n : ℤ) = A183859 (n + 1)

end A183859

/-! ## A183859.P5220730771172215456

`floor((record[(n-2)²]+n-1)/3)`
-/

namespace A183859.P5220730771172215456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - 1) : ℚ) / 3⌋

end

end A183859.P5220730771172215456

namespace A183859

/-- `floor((record[(n-2)²]+n-1)/3)` -/
def P5220730771172215456.Spec : Prop :=
  ∀ n, P5220730771172215456.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P8591056636726376120

`round((record[(n-2)²]+n-2)/3)`
-/

namespace A183859.P8591056636726376120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - 2) : ℚ) / 3)

end

end A183859.P8591056636726376120

namespace A183859

/-- `round((record[(n-2)²]+n-2)/3)` -/
def P8591056636726376120.Spec : Prop :=
  ∀ n, P8591056636726376120.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P10355464289539242391

`abs(1-∑[∑[∑[ogf(2/(1+x+x^2))]]])`
-/

namespace A183859.P10355464289539242391
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A183859.P10355464289539242391

namespace A183859

/-- `abs(1-∑[∑[∑[ogf(2/(1+x+x^2))]]])` -/
def P10355464289539242391.Spec : Prop :=
  ∀ n, P10355464289539242391.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P17725602512426653337

`floor(∑[n+2]-C(n+3, 3)/(n+1))`
-/

namespace A183859.P17725602512426653337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Nat.choose (n + 3) 3 : ℚ) / (n + 1 : ℚ)⌋

end

end A183859.P17725602512426653337

namespace A183859

/-- `floor(∑[n+2]-C(n+3, 3)/(n+1))` -/
def P17725602512426653337.Spec : Prop :=
  ∀ n, P17725602512426653337.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P1450146449331565718

`floor(∑[lcm(n, n+1)]/(n+1)+n+1)`
-/

namespace A183859.P1450146449331565718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌋

end

end A183859.P1450146449331565718

namespace A183859

/-- `floor(∑[lcm(n, n+1)]/(n+1)+n+1)` -/
def P1450146449331565718.Spec : Prop :=
  ∀ n, P1450146449331565718.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P370899851735524372

`∑[∑[a(n-3)²-a(n-3)]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A183859.P370899851735524372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2] fun n f2 =>
  f2 (n - 3) ^ 2 - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183859.P370899851735524372

namespace A183859

/-- `∑[∑[a(n-3)²-a(n-3)]]` -/
def P370899851735524372.Spec : Prop :=
  ∀ n, P370899851735524372.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P13892490596751015756

`∑[∑[a(a(n-1))*a(n-3)]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A183859.P13892490596751015756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2] fun n f2 =>
  f2 (f2 (n - 1)) * f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183859.P13892490596751015756

namespace A183859

/-- `∑[∑[a(a(n-1))*a(n-3)]]` -/
def P13892490596751015756.Spec : Prop :=
  ∀ n, (P13892490596751015756.a n : ℤ) = A183859 (n + 1)

end A183859

/-! ## A183859.P1317014769257974275

`or(1, A183861(n+1))`
-/

namespace A183859.P1317014769257974275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183861 (n + 1))

end

end A183859.P1317014769257974275

namespace A183859

/-- `or(1, A183861(n+1))` -/
def P1317014769257974275.Spec : Prop :=
  ∀ n, P1317014769257974275.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P2935153629860424608

`A004273(A001840(n+1))`
-/

namespace A183859.P2935153629860424608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A001840 (n + 1)).toNat

end

end A183859.P2935153629860424608

namespace A183859

/-- `A004273(A001840(n+1))` -/
def P2935153629860424608.Spec : Prop :=
  ∀ n, P2935153629860424608.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P14213867845611629916

`A004273(A211004(n+1))`
-/

namespace A183859.P14213867845611629916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A211004 (n + 1)).toNat

end

end A183859.P14213867845611629916

namespace A183859

/-- `A004273(A211004(n+1))` -/
def P14213867845611629916.Spec : Prop :=
  ∀ n, P14213867845611629916.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P7500072675691039285

`A183855(A008810(n+1))`
-/

namespace A183859.P7500072675691039285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183855 (A008810 (n + 1)).toNat

end

end A183859.P7500072675691039285

namespace A183859

/-- `A183855(A008810(n+1))` -/
def P7500072675691039285.Spec : Prop :=
  ∀ n, P7500072675691039285.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P11700367018504786111

`A183855(A128422(n+1)+n+1)`
-/

namespace A183859.P11700367018504786111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183855 (A128422 (n + 1) + (n + 1 : ℤ)).toNat

end

end A183859.P11700367018504786111

namespace A183859

/-- `A183855(A128422(n+1)+n+1)` -/
def P11700367018504786111.Spec : Prop :=
  ∀ n, P11700367018504786111.a n = A183859 (n + 1)

end A183859

/-! ## A183859.P9042550762098525790

`A109613(A183861(n+1))`
-/

namespace A183859.P9042550762098525790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A183861 (n + 1)).toNat

end

end A183859.P9042550762098525790

namespace A183859

/-- `A109613(A183861(n+1))` -/
def P9042550762098525790.Spec : Prop :=
  ∀ n, P9042550762098525790.a n = A183859 (n + 1)

end A183859

/-!
# A183860: a(n) = n+floor(sqrt(3n+1)); complement of A183861.

The programs for A183860, the canonical program `A183860.P7120157114231183646` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183860 has offset 1).

The definition of A183860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(3*(n+1)+1))` (program `A183860.P7120157114231183646`, by `A183860.P7120157114231183646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183860.P7120157114231183646

`n+1+floor(sqrt(3*(n+1)+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183860

/-- `n+1+floor(sqrt(3*(n+1)+1))` -/
def P7120157114231183646.Spec : Prop :=
  ∀ n, (P7120157114231183646.a n : ℤ) = A183860 (n + 1)

theorem P7120157114231183646.correct : P7120157114231183646.Spec := by
  intro n
  simp only [A183860, Nat.add_sub_cancel]

end A183860

/-! ## A183860.P9254358471939781069

`comp[abs(2-A001399(2*n))]`
-/

namespace A183860.P9254358471939781069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A001399 (2 * n)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183860.P9254358471939781069

namespace A183860

/-- `comp[abs(2-A001399(2*n))]` -/
def P9254358471939781069.Spec : Prop :=
  ∀ n, (P9254358471939781069.a n : ℤ) = A183860 (n + 1)

end A183860

/-! ## A183860.P12782930703641553748

`ceil(sqrt(A016789(n+1))+n)`
-/

namespace A183860.P12782930703641553748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016789 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A183860.P12782930703641553748

namespace A183860

/-- `ceil(sqrt(A016789(n+1))+n)` -/
def P12782930703641553748.Spec : Prop :=
  ∀ n, P12782930703641553748.a n = A183860 (n + 1)

end A183860

/-! ## A183860.P10221581816154815000

`comp[abs(A211540(2*n)-n)]`
-/

namespace A183860.P10221581816154815000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A211540 (2 * n) - (n : ℤ)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183860.P10221581816154815000

namespace A183860

/-- `comp[abs(A211540(2*n)-n)]` -/
def P10221581816154815000.Spec : Prop :=
  ∀ n, (P10221581816154815000.a n : ℤ) = A183860 (n + 1)

end A183860

/-! ## A183860.P14625878849653629713

`comp[abs(2-A069905(2*n+1))]`
-/

namespace A183860.P14625878849653629713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A069905 (2 * n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183860.P14625878849653629713

namespace A183860

/-- `comp[abs(2-A069905(2*n+1))]` -/
def P14625878849653629713.Spec : Prop :=
  ∀ n, (P14625878849653629713.a n : ℤ) = A183860 (n + 1)

end A183860

/-! ## A183860.P16611677015981974389

`comp[abs(n-A211540(A004277(n)))]`
-/

namespace A183860.P16611677015981974389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A211540 (A004277 n).toNat|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183860.P16611677015981974389

namespace A183860

/-- `comp[abs(n-A211540(A004277(n)))]` -/
def P16611677015981974389.Spec : Prop :=
  ∀ n, (P16611677015981974389.a n : ℤ) = A183860 (n + 1)

end A183860

/-! ## A183860.P16910221802410550278

`A023443(A183856(n+2))`
-/

namespace A183860.P16910221802410550278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183856 (n + 2)).toNat

end

end A183860.P16910221802410550278

namespace A183860

/-- `A023443(A183856(n+2))` -/
def P16910221802410550278.Spec : Prop :=
  ∀ n, P16910221802410550278.a n = A183860 (n + 1)

end A183860

/-! ## A183860.P1994916461066952235

`lt[3, A029635(∑[n%2+1]+1)]`
-/

namespace A183860.P1994916461066952235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183860.P1994916461066952235

namespace A183860

/-- `lt[3, A029635(∑[n%2+1]+1)]` -/
def P1994916461066952235.Spec : Prop :=
  ∀ n, (P1994916461066952235.a n : ℤ) = A183860 (n + 1)

end A183860

/-! ## A183860.P10906332446926119151

`ceil(sqrt(A020725(3*n+5))+n)`
-/

namespace A183860.P10906332446926119151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A020725 (3 * n + 5) : ℝ) + (n : ℝ)⌉

end

end A183860.P10906332446926119151

namespace A183860

/-- `ceil(sqrt(A020725(3*n+5))+n)` -/
def P10906332446926119151.Spec : Prop :=
  ∀ n, P10906332446926119151.a n = A183860 (n + 1)

end A183860

/-! ## A183860.P11492923039464246442

`lt[2, A054336(A004526(3*n)+2)]`
-/

namespace A183860.P11492923039464246442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 (A004526 (3 * n) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183860.P11492923039464246442

namespace A183860

/-- `lt[2, A054336(A004526(3*n)+2)]` -/
def P11492923039464246442.Spec : Prop :=
  ∀ n, (P11492923039464246442.a n : ℤ) = A183860 (n + 1)

end A183860

/-! ## A183860.P6569171990342261783

`lt[2, A103438(A049636(n))]`
-/

namespace A183860.P6569171990342261783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (A049636 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183860.P6569171990342261783

namespace A183860

/-- `lt[2, A103438(A049636(n))]` -/
def P6569171990342261783.Spec : Prop :=
  ∀ n, (P6569171990342261783.a n : ℤ) = A183860 (n + 1)

end A183860

/-! ## A183860.P14883477996984823676

`lt[1, A008290(∑[A176895(2*n)])]`
-/

namespace A183860.P14883477996984823676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183860.P14883477996984823676

namespace A183860

/-- `lt[1, A008290(∑[A176895(2*n)])]` -/
def P14883477996984823676.Spec : Prop :=
  ∀ n, (P14883477996984823676.a n : ℤ) = A183860 (n + 1)

end A183860

/-!
# A183861: a(1) = 1; for n > 1, a(n) = n - 1 + ceiling((n^2 - 1)/3); complement of A183860.

The programs for A183861, the canonical program `A183861.P7044473334534943452` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183861 has offset 1).

The definition of A183861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183861.P7044473334534943452

`ogf((1+2x^2-x^3+x^4-x^5)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183861

/-- `ogf((1+2x^2-x^3+x^4-x^5)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P7044473334534943452.Spec : Prop :=
  ∀ n, P7044473334534943452.a n = A183861 (n + 1)

theorem P7044473334534943452.correct : P7044473334534943452.Spec := by
  intro n
  simp only [A183861, Nat.add_sub_cancel]

end A183861

/-! ## A183861.P6861823867146342704

`∑[∑[n²%3]+1-char[1]]`
-/

namespace A183861.P6861823867146342704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183861.P6861823867146342704

namespace A183861

/-- `∑[∑[n²%3]+1-char[1]]` -/
def P6861823867146342704.Spec : Prop :=
  ∀ n, P6861823867146342704.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P16070271370422015550

`record[floor(n²/3)+abs(1-n)]`
-/

namespace A183861.P16070271370422015550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 3⌋ + |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183861.P16070271370422015550

namespace A183861

/-- `record[floor(n²/3)+abs(1-n)]` -/
def P16070271370422015550.Spec : Prop :=
  ∀ n, P16070271370422015550.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P15989318650586927967

`∑[a(n-3)+2]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=4`
-/

namespace A183861.P15989318650586927967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 3, 4] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183861.P15989318650586927967

namespace A183861

/-- `∑[a(n-3)+2]` -/
def P15989318650586927967.Spec : Prop :=
  ∀ n, (P15989318650586927967.a n : ℤ) = A183861 (n + 1)

end A183861

/-! ## A183861.P2897567906048673462

`∑[1-char[1]+n-floor(n/3)]`
-/

namespace A183861.P2897567906048673462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) - ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183861.P2897567906048673462

namespace A183861

/-- `∑[1-char[1]+n-floor(n/3)]` -/
def P2897567906048673462.Spec : Prop :=
  ∀ n, P2897567906048673462.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P767174848551669001

`a(n-3)+2*(n+1)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8`
-/

namespace A183861.P767174848551669001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 8] fun n a =>
  a (n - 3) + 2 * (n + 1)

end

end A183861.P767174848551669001

namespace A183861

/-- `a(n-3)+2*(n+1)` -/
def P767174848551669001.Spec : Prop :=
  ∀ n, (P767174848551669001.a n : ℤ) = A183861 (n + 1)

end A183861

/-! ## A183861.P1541024539569573046

`a(n-1)+n+1-floor(n/3)` with `a(0)=1, a(1)=2`
-/

namespace A183861.P1541024539569573046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (n + 1 : ℤ) - ⌊(n : ℚ) / 3⌋

end

end A183861.P1541024539569573046

namespace A183861

/-- `a(n-1)+n+1-floor(n/3)` -/
def P1541024539569573046.Spec : Prop :=
  ∀ n, P1541024539569573046.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P6494695784268314022

`or(1, a(n-1))+a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A183861.P6494695784268314022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Int.lor 1 (a (n - 1)) + (a (n - 1) - a (n - 2))

end

end A183861.P6494695784268314022

namespace A183861

/-- `or(1, a(n-1))+a(n-1)-a(n-2)` -/
def P6494695784268314022.Spec : Prop :=
  ∀ n, P6494695784268314022.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P6424172840093109642

`A066481(n+2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A183861.P6424172840093109642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A066481 (n + 2) + a (n - 1)

end

end A183861.P6424172840093109642

namespace A183861

/-- `A066481(n+2)+a(n-1)` -/
def P6424172840093109642.Spec : Prop :=
  ∀ n, P6424172840093109642.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P10813127363463146019

`floor((A004277(n)+(n+1)*(n+2))/3)`
-/

namespace A183861.P10813127363463146019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004277 n + ((n + 1) * (n + 2) : ℤ) : ℚ) / 3⌋

end

end A183861.P10813127363463146019

namespace A183861

/-- `floor((A004277(n)+(n+1)*(n+2))/3)` -/
def P10813127363463146019.Spec : Prop :=
  ∀ n, P10813127363463146019.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P13198085230346545868

`round((6*n+2*A000217(abs(1-n)))/3)`
-/

namespace A183861.P13198085230346545868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((6 * n : ℤ) + 2 * A000217 |1 - (n : ℤ)|.toNat : ℚ) / 3)

end

end A183861.P13198085230346545868

namespace A183861

/-- `round((6*n+2*A000217(abs(1-n)))/3)` -/
def P13198085230346545868.Spec : Prop :=
  ∀ n, P13198085230346545868.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P15402640187603104601

`A097922(n)+A004275(n)`
-/

namespace A183861.P15402640187603104601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097922 n + A004275 n

end

end A183861.P15402640187603104601

namespace A183861

/-- `A097922(n)+A004275(n)` -/
def P15402640187603104601.Spec : Prop :=
  ∀ n, P15402640187603104601.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P8254989446168352456

`A143975(n+1)+A057428(n)`
-/

namespace A183861.P8254989446168352456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143975 (n + 1) + A057428 n

end

end A183861.P8254989446168352456

namespace A183861

/-- `A143975(n+1)+A057428(n)` -/
def P8254989446168352456.Spec : Prop :=
  ∀ n, P8254989446168352456.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P6046619820122701067

`A143975(n+1)-A057427(n)`
-/

namespace A183861.P6046619820122701067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143975 (n + 1) - A057427 n

end

end A183861.P6046619820122701067

namespace A183861

/-- `A143975(n+1)-A057427(n)` -/
def P6046619820122701067.Spec : Prop :=
  ∀ n, P6046619820122701067.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P15163900910808033351

`A027379(n)-A339573(n+2)`
-/

namespace A183861.P15163900910808033351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n - A339573 (n + 2)

end

end A183861.P15163900910808033351

namespace A183861

/-- `A027379(n)-A339573(n+2)` -/
def P15163900910808033351.Spec : Prop :=
  ∀ n, P15163900910808033351.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P12095401775754203476

`A335129(n+3)+A212984(n)`
-/

namespace A183861.P12095401775754203476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335129 (n + 3) + A212984 n

end

end A183861.P12095401775754203476

namespace A183861

/-- `A335129(n+3)+A212984(n)` -/
def P12095401775754203476.Spec : Prop :=
  ∀ n, P12095401775754203476.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P13716275558194508716

`A057428(n)+A087483(n)+n`
-/

namespace A183861.P13716275558194508716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A087483 n + (n : ℤ))

end

end A183861.P13716275558194508716

namespace A183861

/-- `A057428(n)+A087483(n)+n` -/
def P13716275558194508716.Spec : Prop :=
  ∀ n, P13716275558194508716.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P713360340374742337

`A156040(n)+A337483(n)+n`
-/

namespace A183861.P713360340374742337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n + (A337483 n + (n : ℤ))

end

end A183861.P713360340374742337

namespace A183861

/-- `A156040(n)+A337483(n)+n` -/
def P713360340374742337.Spec : Prop :=
  ∀ n, P713360340374742337.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P3912537915234862767

`A199085(n+1)+A184985(n+1)`
-/

namespace A183861.P3912537915234862767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199085 (n + 1) + A184985 (n + 1)

end

end A183861.P3912537915234862767

namespace A183861

/-- `A199085(n+1)+A184985(n+1)` -/
def P3912537915234862767.Spec : Prop :=
  ∀ n, P3912537915234862767.a n = A183861 (n + 1)

end A183861

/-! ## A183861.P17254700629474654724

`A004396(n+2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A183861.P17254700629474654724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A004396 (n + 2) + a (n - 1)

end

end A183861.P17254700629474654724

namespace A183861

/-- `A004396(n+2)+a(n-1)` -/
def P17254700629474654724.Spec : Prop :=
  ∀ n, P17254700629474654724.a n = A183861 (n + 1)

end A183861

/-!
# A183862: a(n) = n + floor(sqrt(5*n/2)); complement of A183863.

The programs for A183862, the canonical program `A183862.P1941048147375765334` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183862 has offset 1).

The definition of A183862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(5*(n+1)/2))` (program `A183862.P1941048147375765334`, by `A183862.P1941048147375765334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183862.P1941048147375765334

`n+1+floor(sqrt(5*(n+1)/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183862

/-- `n+1+floor(sqrt(5*(n+1)/2))` -/
def P1941048147375765334.Spec : Prop :=
  ∀ n, P1941048147375765334.a n = A183862 (n + 1)

theorem P1941048147375765334.correct : P1941048147375765334.Spec := by
  intro n
  simp only [A183862, Nat.add_sub_cancel]

end A183862

/-! ## A183862.P6541408333570185111

`floor(sqrt(∑[or(3, n+1)-n])+n+1)`
-/

namespace A183862.P6541408333570185111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n + 1 : ℝ)⌋

end

end A183862.P6541408333570185111

namespace A183862

/-- `floor(sqrt(∑[or(3, n+1)-n])+n+1)` -/
def P6541408333570185111.Spec : Prop :=
  ∀ n, P6541408333570185111.a n = A183862 (n + 1)

end A183862

/-! ## A183862.P6993147181659665830

`comp[A130520(3*n)-C(n+1, 2)]`
-/

namespace A183862.P6993147181659665830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (3 * n) - (Nat.choose (n + 1) 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183862.P6993147181659665830

namespace A183862

/-- `comp[A130520(3*n)-C(n+1, 2)]` -/
def P6993147181659665830.Spec : Prop :=
  ∀ n, (P6993147181659665830.a n : ℤ) = A183862 (n + 1)

end A183862

/-! ## A183862.P4392547149360476870

`∑[char[floor((A001105(n)-1)/5)]+1]`
-/

namespace A183862.P4392547149360476870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001105 n - 1 : ℚ) / 5⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183862.P4392547149360476870

namespace A183862

/-- `∑[char[floor((A001105(n)-1)/5)]+1]` -/
def P4392547149360476870.Spec : Prop :=
  ∀ n, (P4392547149360476870.a n : ℤ) = A183862 (n + 1)

end A183862

/-! ## A183862.P10468666722746102640

`floor(sqrt(A008587(n+1)/2)+n+1)`
-/

namespace A183862.P10468666722746102640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A008587 (n + 1) : ℚ) / 2 : ℝ) + (n + 1 : ℝ)⌋

end

end A183862.P10468666722746102640

namespace A183862

/-- `floor(sqrt(A008587(n+1)/2)+n+1)` -/
def P10468666722746102640.Spec : Prop :=
  ∀ n, P10468666722746102640.a n = A183862 (n + 1)

end A183862

/-! ## A183862.P4285607620060684592

`eq[char[A183863(n+1)], A000007(n)]`
-/

namespace A183862.P4285607620060684592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183863 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183862.P4285607620060684592

namespace A183862

/-- `eq[char[A183863(n+1)], A000007(n)]` -/
def P4285607620060684592.Spec : Prop :=
  ∀ n, (P4285607620060684592.a n : ℤ) = A183862 (n + 1)

end A183862

/-! ## A183862.P4405321974035697862

`eq[char[A183863(n+1)], A000038(n)]`
-/

namespace A183862.P4405321974035697862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183863 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183862.P4405321974035697862

namespace A183862

/-- `eq[char[A183863(n+1)], A000038(n)]` -/
def P4405321974035697862.Spec : Prop :=
  ∀ n, (P4405321974035697862.a n : ℤ) = A183862 (n + 1)

end A183862

/-! ## A183862.P16162830349888681405

`A004526(A183872(2*(n+1)))`
-/

namespace A183862.P16162830349888681405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A183872 (2 * (n + 1))).toNat

end

end A183862.P16162830349888681405

namespace A183862

/-- `A004526(A183872(2*(n+1)))` -/
def P16162830349888681405.Spec : Prop :=
  ∀ n, P16162830349888681405.a n = A183862 (n + 1)

end A183862

/-!
# A183863: a(n) = n-1+ceiling((2/5)*(-1/2+n^2)); complement of A183862.

The programs for A183863, the canonical program `A183863.P17623151324200419191` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183863 has offset 1).

The definition of A183863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+ceil(2/5*(-1/2+(n+1)²))` (program `A183863.P17623151324200419191`, by `A183863.P17623151324200419191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183863.P17623151324200419191

`n+ceil(2/5*(-1/2+(n+1)²))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183863

/-- `n+ceil(2/5*(-1/2+(n+1)²))` -/
def P17623151324200419191.Spec : Prop :=
  ∀ n, P17623151324200419191.a n = A183863 (n + 1)

theorem P17623151324200419191.correct : P17623151324200419191.Spec := by
  intro n
  simp only [A183863, Nat.add_sub_cancel]

end A183863

/-! ## A183863.P18311630360602081059

`floor(∑[record[xor(3, n+5)]]/5)`
-/

namespace A183863.P18311630360602081059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A183863.P18311630360602081059

namespace A183863

/-- `floor(∑[record[xor(3, n+5)]]/5)` -/
def P18311630360602081059.Spec : Prop :=
  ∀ n, P18311630360602081059.a n = A183863 (n + 1)

end A183863

/-! ## A183863.P11426768852648256098

`round((n+4)*or(1, 2*n)/5)`
-/

namespace A183863.P11426768852648256098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 4 : ℚ) * ((Nat.lor 1 (2 * n) : ℚ) / 5))

end

end A183863.P11426768852648256098

namespace A183863

/-- `round((n+4)*or(1, 2*n)/5)` -/
def P11426768852648256098.Spec : Prop :=
  ∀ n, P11426768852648256098.a n = A183863 (n + 1)

end A183863

/-! ## A183863.P4452147177518724937

`round((n+4)*xor(1, 2*n)/5)`
-/

namespace A183863.P4452147177518724937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 4 : ℚ) * ((Nat.xor 1 (2 * n) : ℚ) / 5))

end

end A183863.P4452147177518724937

namespace A183863

/-- `round((n+4)*xor(1, 2*n)/5)` -/
def P4452147177518724937.Spec : Prop :=
  ∀ n, P4452147177518724937.a n = A183863 (n + 1)

end A183863

/-! ## A183863.P17426017452598485350

`floor(C(2*n, 2)/5+2*n+1)`
-/

namespace A183863.P17426017452598485350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n) 2 : ℚ) / 5 + (2 * n + 1 : ℚ)⌋

end

end A183863.P17426017452598485350

namespace A183863

/-- `floor(C(2*n, 2)/5+2*n+1)` -/
def P17426017452598485350.Spec : Prop :=
  ∀ n, P17426017452598485350.a n = A183863 (n + 1)

end A183863

/-! ## A183863.P2312125655151746729

`∑[a(n-2)+gcd(2, (1-n)%5)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A183863.P2312125655151746729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 2) + Int.gcd 2 (Int.tmod (1 - (n : ℤ)) 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183863.P2312125655151746729

namespace A183863

/-- `∑[a(n-2)+gcd(2, (1-n)%5)]` -/
def P2312125655151746729.Spec : Prop :=
  ∀ n, (P2312125655151746729.a n : ℤ) = A183863 (n + 1)

end A183863

/-! ## A183863.P1186059124697871183

`floor(A183873(2*(n+1))/2)`
-/

namespace A183863.P1186059124697871183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183873 (2 * (n + 1)) : ℚ) / 2⌋

end

end A183863.P1186059124697871183

namespace A183863

/-- `floor(A183873(2*(n+1))/2)` -/
def P1186059124697871183.Spec : Prop :=
  ∀ n, P1186059124697871183.a n = A183863 (n + 1)

end A183863

/-! ## A183863.P6833526734509023611

`floor(A052905(2*n+1)/5)`
-/

namespace A183863.P6833526734509023611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052905 (2 * n + 1) : ℚ) / 5⌋

end

end A183863.P6833526734509023611

namespace A183863

/-- `floor(A052905(2*n+1)/5)` -/
def P6833526734509023611.Spec : Prop :=
  ∀ n, P6833526734509023611.a n = A183863 (n + 1)

end A183863

/-!
# A183864: a(n) = n + floor(sqrt(5*n/3)); complement of A183865.

The programs for A183864, the canonical program `A183864.P16663193034560217849` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183864 has offset 1).

The definition of A183864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(5*(n+1)/3))` (program `A183864.P16663193034560217849`, by `A183864.P16663193034560217849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183864.P16663193034560217849

`n+1+floor(sqrt(5*(n+1)/3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183864

/-- `n+1+floor(sqrt(5*(n+1)/3))` -/
def P16663193034560217849.Spec : Prop :=
  ∀ n, P16663193034560217849.a n = A183864 (n + 1)

theorem P16663193034560217849.correct : P16663193034560217849.Spec := by
  intro n
  simp only [A183864, Nat.add_sub_cancel]

end A183864

/-! ## A183864.P17812547561664997167

`floor(sqrt(∑[gcd(3, n+1)])+n+1)`
-/

namespace A183864.P17812547561664997167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ)⌋

end

end A183864.P17812547561664997167

namespace A183864

/-- `floor(sqrt(∑[gcd(3, n+1)])+n+1)` -/
def P17812547561664997167.Spec : Prop :=
  ∀ n, P17812547561664997167.a n = A183864 (n + 1)

end A183864

/-! ## A183864.P4164026133412737458

`floor(sqrt(∑[(n²+1)%3])+n+1)`
-/

namespace A183864.P4164026133412737458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ)⌋

end

end A183864.P4164026133412737458

namespace A183864

/-- `floor(sqrt(∑[(n²+1)%3])+n+1)` -/
def P4164026133412737458.Spec : Prop :=
  ∀ n, P4164026133412737458.a n = A183864 (n + 1)

end A183864

/-! ## A183864.P14928976259252568781

`comp[∑[comp[A271114(n)]]]`
-/

namespace A183864.P14928976259252568781
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183864.P14928976259252568781

namespace A183864

/-- `comp[∑[comp[A271114(n)]]]` -/
def P14928976259252568781.Spec : Prop :=
  ∀ n, (P14928976259252568781.a n : ℤ) = A183864 (n + 1)

end A183864

/-! ## A183864.P8393103666869562169

`comp[∑[comp[A160413(2*n+1)]]]`
-/

namespace A183864.P8393103666869562169
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183864.P8393103666869562169

namespace A183864

/-- `comp[∑[comp[A160413(2*n+1)]]]` -/
def P8393103666869562169.Spec : Prop :=
  ∀ n, (P8393103666869562169.a n : ℤ) = A183864 (n + 1)

end A183864

/-! ## A183864.P14483239411596963924

`comp[∑[comp[A004280(3*n+2)]]]`
-/

namespace A183864.P14483239411596963924
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (3 * n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183864.P14483239411596963924

namespace A183864

/-- `comp[∑[comp[A004280(3*n+2)]]]` -/
def P14483239411596963924.Spec : Prop :=
  ∀ n, (P14483239411596963924.a n : ℤ) = A183864 (n + 1)

end A183864

/-! ## A183864.P10513407366777325675

`ceil(sqrt(A008576(n+1)-n)+n)`
-/

namespace A183864.P10513407366777325675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008576 (n + 1) - (n : ℤ) : ℝ) + (n : ℝ)⌉

end

end A183864.P10513407366777325675

namespace A183864

/-- `ceil(sqrt(A008576(n+1)-n)+n)` -/
def P10513407366777325675.Spec : Prop :=
  ∀ n, P10513407366777325675.a n = A183864 (n + 1)

end A183864

/-!
# A183865: a(n) = n - 1 + ceiling(3*(n+2)/5); complement of A183864.

The programs for A183865, the canonical program `A183865.P2342002431835983898` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183865 has offset 1).

The definition of A183865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183865.P9277647119177467001

`ogf((1+2x+x^2+x^3+x^4+x^5-x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A183865.P9277647119177467001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 1, 1, 1, -1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A183865.P9277647119177467001

namespace A183865

/-- `ogf((1+2x+x^2+x^3+x^4+x^5-x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P9277647119177467001.Spec : Prop :=
  ∀ n, P9277647119177467001.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P2342002431835983898

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=13, a(4)=19, a(5)=27, a(6)=36`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183865

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P2342002431835983898.Spec : Prop :=
  ∀ n, P2342002431835983898.a n = A183865 (n + 1)

theorem P2342002431835983898.correct : P2342002431835983898.Spec := by
  intro n
  simp only [A183865, Nat.add_sub_cancel]

end A183865

/-! ## A183865.P910944585116419461

`∑[comp[6*n]]+n`
-/

namespace A183865.P910944585116419461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183865.P910944585116419461

namespace A183865

/-- `∑[comp[6*n]]+n` -/
def P910944585116419461.Spec : Prop :=
  ∀ n, (P910944585116419461.a n : ℤ) = A183865 (n + 1)

end A183865

/-! ## A183865.P17822811916848513376

`∑[∑[char[5*n]]%(n+1)+n+1]`
-/

namespace A183865.P17822811916848513376
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P17822811916848513376

namespace A183865

/-- `∑[∑[char[5*n]]%(n+1)+n+1]` -/
def P17822811916848513376.Spec : Prop :=
  ∀ n, (P17822811916848513376.a n : ℤ) = A183865 (n + 1)

end A183865

/-! ## A183865.P17150596328529965787

`abs(round(n*(n-3)/10)+C(n+3, 2)-2)`
-/

namespace A183865.P17150596328529965787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (((n : ℤ) * ((n : ℤ) - 3) : ℚ) / 10) + ((Nat.choose (n + 3) 2 : ℤ) - 2)|

end

end A183865.P17150596328529965787

namespace A183865

/-- `abs(round(n*(n-3)/10)+C(n+3, 2)-2)` -/
def P17150596328529965787.Spec : Prop :=
  ∀ n, P17150596328529965787.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P1397645624070516092

`∑[comp[A008458(n)]+1]`
-/

namespace A183865.P1397645624070516092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P1397645624070516092

namespace A183865

/-- `∑[comp[A008458(n)]+1]` -/
def P1397645624070516092.Spec : Prop :=
  ∀ n, (P1397645624070516092.a n : ℤ) = A183865 (n + 1)

end A183865

/-! ## A183865.P12095020640855428301

`∑[A040000(n)+floor(6*n/5)]`
-/

namespace A183865.P12095020640855428301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n + ⌊6 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P12095020640855428301

namespace A183865

/-- `∑[A040000(n)+floor(6*n/5)]` -/
def P12095020640855428301.Spec : Prop :=
  ∀ n, P12095020640855428301.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P10014952374111873300

`∑[∑[char[A004277(2*n)+n]+1]]`
-/

namespace A183865.P10014952374111873300
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P10014952374111873300

namespace A183865

/-- `∑[∑[char[A004277(2*n)+n]+1]]` -/
def P10014952374111873300.Spec : Prop :=
  ∀ n, (P10014952374111873300.a n : ℤ) = A183865 (n + 1)

end A183865

/-! ## A183865.P13737649909827123186

`∑[∑[char[A004277(n)+n+n+n]+1]]`
-/

namespace A183865.P13737649909827123186
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n : ℤ) + (n : ℤ) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P13737649909827123186

namespace A183865

/-- `∑[∑[char[A004277(n)+n+n+n]+1]]` -/
def P13737649909827123186.Spec : Prop :=
  ∀ n, (P13737649909827123186.a n : ℤ) = A183865 (n + 1)

end A183865

/-! ## A183865.P2874643724336449664

`∑[A065475(n+1)+A002266(n)]`
-/

namespace A183865.P2874643724336449664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + A002266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P2874643724336449664

namespace A183865

/-- `∑[A065475(n+1)+A002266(n)]` -/
def P2874643724336449664.Spec : Prop :=
  ∀ n, P2874643724336449664.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P6277081456195868239

`∑[A047226(n+1)+A040000(n)]`
-/

namespace A183865.P6277081456195868239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 1) + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P6277081456195868239

namespace A183865

/-- `∑[A047226(n+1)+A040000(n)]` -/
def P6277081456195868239.Spec : Prop :=
  ∀ n, P6277081456195868239.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P7134856628698357242

`∑[A057427(n)+A047253(n+1)]`
-/

namespace A183865.P7134856628698357242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A047253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P7134856628698357242

namespace A183865

/-- `∑[A057427(n)+A047253(n+1)]` -/
def P7134856628698357242.Spec : Prop :=
  ∀ n, P7134856628698357242.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P6062087313336355

`∑[A002266(n)+A040000(n)+n]`
-/

namespace A183865.P6062087313336355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + (A040000 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P6062087313336355

namespace A183865

/-- `∑[A002266(n)+A040000(n)+n]` -/
def P6062087313336355.Spec : Prop :=
  ∀ n, P6062087313336355.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P5788045009646903537

`∑[A047253(n+1)+n/A028310(n)]`
-/

namespace A183865.P5788045009646903537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047253 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P5788045009646903537

namespace A183865

/-- `∑[A047253(n+1)+n/A028310(n)]` -/
def P5788045009646903537.Spec : Prop :=
  ∀ n, P5788045009646903537.a n = (A183865 (n + 1) : ℚ)

end A183865

/-! ## A183865.P18338868077418795600

`∑[A107286(A107286(n))+A047253(n+1)]`
-/

namespace A183865.P18338868077418795600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A107286 n).toNat + A047253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P18338868077418795600

namespace A183865

/-- `∑[A107286(A107286(n))+A047253(n+1)]` -/
def P18338868077418795600.Spec : Prop :=
  ∀ n, P18338868077418795600.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P17982374478072246706

`∑[A092038(A047263(2*(n+1)))]`
-/

namespace A183865.P17982374478072246706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A047263 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P17982374478072246706

namespace A183865

/-- `∑[A092038(A047263(2*(n+1)))]` -/
def P17982374478072246706.Spec : Prop :=
  ∀ n, P17982374478072246706.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P6435228889987045975

`∑[record[A183041(A001651(n+2))]]`
-/

namespace A183865.P6435228889987045975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183041 (A001651 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183865.P6435228889987045975

namespace A183865

/-- `∑[record[A183041(A001651(n+2))]]` -/
def P6435228889987045975.Spec : Prop :=
  ∀ n, P6435228889987045975.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P7714296736733075177

`A000027(A008732(n)+∑[n]+n)`
-/

namespace A183865.P7714296736733075177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008732 n + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)).toNat

end

end A183865.P7714296736733075177

namespace A183865

/-- `A000027(A008732(n)+∑[n]+n)` -/
def P7714296736733075177.Spec : Prop :=
  ∀ n, P7714296736733075177.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P15241102499002705635

`abs(1-∑[A008616(2*A016969(n))])`
-/

namespace A183865.P15241102499002705635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * A016969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A183865.P15241102499002705635

namespace A183865

/-- `abs(1-∑[A008616(2*A016969(n))])` -/
def P15241102499002705635.Spec : Prop :=
  ∀ n, P15241102499002705635.a n = A183865 (n + 1)

end A183865

/-! ## A183865.P15801794106614602406

`A023443(∑[A047248(n+2)])`
-/

namespace A183865.P15801794106614602406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183865.P15801794106614602406

namespace A183865

/-- `A023443(∑[A047248(n+2)])` -/
def P15801794106614602406.Spec : Prop :=
  ∀ n, P15801794106614602406.a n = A183865 (n + 1)

end A183865

/-!
# A183866: n+floor(2*sqrt(n-1)); complement of A035106.

The programs for A183866, the canonical program `A183866.P10261904471375348970` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183866 has offset 1).

The definition of A183866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(2*sqrt(n))` (program `A183866.P10261904471375348970`, by `A183866.P10261904471375348970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183866.P10261904471375348970

`n+1+floor(2*sqrt(n))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183866

/-- `n+1+floor(2*sqrt(n))` -/
def P10261904471375348970.Spec : Prop :=
  ∀ n, P10261904471375348970.a n = A183866 (n + 1)

theorem P10261904471375348970.correct : P10261904471375348970.Spec := by
  intro n
  simp only [A183866, Nat.add_sub_cancel]

end A183866

/-! ## A183866.P10323282183245722333

`comp[a(n-2)+n]` with `a(0)=0, a(1)=0`
-/

namespace A183866.P10323282183245722333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183866.P10323282183245722333

namespace A183866

/-- `comp[a(n-2)+n]` -/
def P10323282183245722333.Spec : Prop :=
  ∀ n, (P10323282183245722333.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P3571038835837448516

`ceil(sqrt(or(1, 4*n))+n)`
-/

namespace A183866.P3571038835837448516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lor 1 (4 * n) : ℝ) + (n : ℝ)⌉

end

end A183866.P3571038835837448516

namespace A183866

/-- `ceil(sqrt(or(1, 4*n))+n)` -/
def P3571038835837448516.Spec : Prop :=
  ∀ n, P3571038835837448516.a n = A183866 (n + 1)

end A183866

/-! ## A183866.P4001214584249315319

`ceil(sqrt(xor(1, 4*n))+n)`
-/

namespace A183866.P4001214584249315319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.xor 1 (4 * n) : ℝ) + (n : ℝ)⌉

end

end A183866.P4001214584249315319

namespace A183866

/-- `ceil(sqrt(xor(1, 4*n))+n)` -/
def P4001214584249315319.Spec : Prop :=
  ∀ n, P4001214584249315319.a n = A183866 (n + 1)

end A183866

/-! ## A183866.P5727123007909997874

`comp[record[col(n)*(row(n)+1)]]`
-/

namespace A183866.P5727123007909997874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n * (SequenceMachineLib.triRow n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183866.P5727123007909997874

namespace A183866

/-- `comp[record[col(n)*(row(n)+1)]]` -/
def P5727123007909997874.Spec : Prop :=
  ∀ n, (P5727123007909997874.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P16594389562360651416

`comp[∑[n-a(n-1)]]` with `a(0)=0, a(1)=0`
-/

namespace A183866.P16594389562360651416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P16594389562360651416

namespace A183866

/-- `comp[∑[n-a(n-1)]]` -/
def P16594389562360651416.Spec : Prop :=
  ∀ n, (P16594389562360651416.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P6055631598372662046

`ceil(sqrt(Δ[C(2*n, 2)])+n)`
-/

namespace A183866.P6055631598372662046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + (n : ℝ)⌉

end

end A183866.P6055631598372662046

namespace A183866

/-- `ceil(sqrt(Δ[C(2*n, 2)])+n)` -/
def P6055631598372662046.Spec : Prop :=
  ∀ n, P6055631598372662046.a n = A183866 (n + 1)

end A183866

/-! ## A183866.P10090939109485346968

`ceil(sqrt(4*n)+1/acot(n))`
-/

namespace A183866.P10090939109485346968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (4 * n : ℝ) + 1 / SequenceMachineLib.acot (n : ℝ)⌉

end

end A183866.P10090939109485346968

namespace A183866

/-- `ceil(sqrt(4*n)+1/acot(n))` -/
def P10090939109485346968.Spec : Prop :=
  ∀ n, P10090939109485346968.a n = A183866 (n + 1)

end A183866

/-! ## A183866.P10362025669329935200

`comp[n-(3-a(n-2))]` with `a(0)=0, a(1)=0`
-/

namespace A183866.P10362025669329935200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (n : ℤ) - (3 - f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P10362025669329935200

namespace A183866

/-- `comp[n-(3-a(n-2))]` -/
def P10362025669329935200.Spec : Prop :=
  ∀ n, (P10362025669329935200.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P18215098901294376557

`comp[A038715(n)]`
-/

namespace A183866.P18215098901294376557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P18215098901294376557

namespace A183866

/-- `comp[A038715(n)]` -/
def P18215098901294376557.Spec : Prop :=
  ∀ n, (P18215098901294376557.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P15552599311456526130

`comp[A038716(n)]`
-/

namespace A183866.P15552599311456526130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P15552599311456526130

namespace A183866

/-- `comp[A038716(n)]` -/
def P15552599311456526130.Spec : Prop :=
  ∀ n, (P15552599311456526130.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P11867026409163655123

`comp[A179272(n)+1]`
-/

namespace A183866.P11867026409163655123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179272 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P11867026409163655123

namespace A183866

/-- `comp[A179272(n)+1]` -/
def P11867026409163655123.Spec : Prop :=
  ∀ n, (P11867026409163655123.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P13566750295334227182

`comp[A198442(n+1)]`
-/

namespace A183866.P13566750295334227182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P13566750295334227182

namespace A183866

/-- `comp[A198442(n+1)]` -/
def P13566750295334227182.Spec : Prop :=
  ∀ n, (P13566750295334227182.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P2750562002560624122

`comp[A004652(n)-1]`
-/

namespace A183866.P2750562002560624122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P2750562002560624122

namespace A183866

/-- `comp[A004652(n)-1]` -/
def P2750562002560624122.Spec : Prop :=
  ∀ n, (P2750562002560624122.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P5826262542038435808

`comp[A079524(n)-n]`
-/

namespace A183866.P5826262542038435808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079524 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P5826262542038435808

namespace A183866

/-- `comp[A079524(n)-n]` -/
def P5826262542038435808.Spec : Prop :=
  ∀ n, (P5826262542038435808.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P8313654456195027080

`comp[A181385(n)-n]`
-/

namespace A183866.P8313654456195027080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P8313654456195027080

namespace A183866

/-- `comp[A181385(n)-n]` -/
def P8313654456195027080.Spec : Prop :=
  ∀ n, (P8313654456195027080.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P7300579496261735646

`comp[∑[A028242(n+1)]]`
-/

namespace A183866.P7300579496261735646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P7300579496261735646

namespace A183866

/-- `comp[∑[A028242(n+1)]]` -/
def P7300579496261735646.Spec : Prop :=
  ∀ n, (P7300579496261735646.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P8835556748440327713

`comp[∑[A028242(n)-1]]`
-/

namespace A183866.P8835556748440327713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183866.P8835556748440327713

namespace A183866

/-- `comp[∑[A028242(n)-1]]` -/
def P8835556748440327713.Spec : Prop :=
  ∀ n, (P8835556748440327713.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P1158748537049933764

`∪[A013651(n+1), A064801(n+1)]`
-/

namespace A183866.P1158748537049933764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183866.P1158748537049933764

namespace A183866

/-- `∪[A013651(n+1), A064801(n+1)]` -/
def P1158748537049933764.Spec : Prop :=
  ∀ n, (P1158748537049933764.a n : ℤ) = A183866 (n + 1)

end A183866

/-! ## A183866.P12890088702733711670

`∪[A064801(n+1), A161827(n+1)]`
-/

namespace A183866.P12890088702733711670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183866.P12890088702733711670

namespace A183866

/-- `∪[A064801(n+1), A161827(n+1)]` -/
def P12890088702733711670.Spec : Prop :=
  ∀ n, (P12890088702733711670.a n : ℤ) = A183866 (n + 1)

end A183866

/-!
# A183867: a(n) = n + floor(2*sqrt(n)); complement of A184676.

The programs for A183867, the canonical program `A183867.P13982398438847309309` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183867 has offset 1).

The definition of A183867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(2*sqrt(n+1))` (program `A183867.P13982398438847309309`, by `A183867.P13982398438847309309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183867.P13982398438847309309

`n+1+floor(2*sqrt(n+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183867

/-- `n+1+floor(2*sqrt(n+1))` -/
def P13982398438847309309.Spec : Prop :=
  ∀ n, P13982398438847309309.a n = A183867 (n + 1)

theorem P13982398438847309309.correct : P13982398438847309309.Spec := by
  intro n
  simp only [A183867, Nat.add_sub_cancel]

end A183867

/-! ## A183867.P13384176583504906761

`comp[a(n-2)+n]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A183867.P13384176583504906761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f1 =>
  f1 (n - 2) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183867.P13384176583504906761

namespace A183867

/-- `comp[a(n-2)+n]` -/
def P13384176583504906761.Spec : Prop :=
  ∀ n, (P13384176583504906761.a n : ℤ) = A183867 (n + 1)

end A183867

/-! ## A183867.P10374257031154528141

`comp[∑[n-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A183867.P10374257031154528141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183867.P10374257031154528141

namespace A183867

/-- `comp[∑[n-a(n-1)]]` -/
def P10374257031154528141.Spec : Prop :=
  ∀ n, (P10374257031154528141.a n : ℤ) = A183867 (n + 1)

end A183867

/-! ## A183867.P15424739085121512382

`comp[ceil(3*n²/4)%(1+floor((n/2)²))]`
-/

namespace A183867.P15424739085121512382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(3 * n ^ 2 : ℚ) / 4⌉ (1 + ⌊((n : ℚ) / 2) ^ 2⌋)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183867.P15424739085121512382

namespace A183867

/-- `comp[ceil(3*n²/4)%(1+floor((n/2)²))]` -/
def P15424739085121512382.Spec : Prop :=
  ∀ n, (P15424739085121512382.a n : ℤ) = A183867 (n + 1)

end A183867

/-! ## A183867.P16349388739343816677

`comp[A181385(n)-2]`
-/

namespace A183867.P16349388739343816677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183867.P16349388739343816677

namespace A183867

/-- `comp[A181385(n)-2]` -/
def P16349388739343816677.Spec : Prop :=
  ∀ n, (P16349388739343816677.a n : ℤ) = A183867 (n + 1)

end A183867

/-! ## A183867.P3443773206277444493

`comp[A035106(n+1)-1]`
-/

namespace A183867.P3443773206277444493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183867.P3443773206277444493

namespace A183867

/-- `comp[A035106(n+1)-1]` -/
def P3443773206277444493.Spec : Prop :=
  ∀ n, (P3443773206277444493.a n : ℤ) = A183867 (n + 1)

end A183867

/-! ## A183867.P3461240268980590304

`∑[Δ[A172471(2*n)]+1]`
-/

namespace A183867.P3461240268980590304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183867.P3461240268980590304

namespace A183867

/-- `∑[Δ[A172471(2*n)]+1]` -/
def P3461240268980590304.Spec : Prop :=
  ∀ n, P3461240268980590304.a n = A183867 (n + 1)

end A183867

/-! ## A183867.P1338038476182532814

`round((A184102(n+1)+n)/2)`
-/

namespace A183867.P1338038476182532814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184102 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A183867.P1338038476182532814

namespace A183867

/-- `round((A184102(n+1)+n)/2)` -/
def P1338038476182532814.Spec : Prop :=
  ∀ n, P1338038476182532814.a n = A183867 (n + 1)

end A183867

/-! ## A183867.P7096358250536155852

`comp[abs(∑[1-A028242(n)])-1]`
-/

namespace A183867.P7096358250536155852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j| - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183867.P7096358250536155852

namespace A183867

/-- `comp[abs(∑[1-A028242(n)])-1]` -/
def P7096358250536155852.Spec : Prop :=
  ∀ n, (P7096358250536155852.a n : ℤ) = A183867 (n + 1)

end A183867

/-! ## A183867.P12923127839938921397

`comp[A022856(n+1)-ceil((n/2)²)]`
-/

namespace A183867.P12923127839938921397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (n + 1) - ⌈((n : ℚ) / 2) ^ 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183867.P12923127839938921397

namespace A183867

/-- `comp[A022856(n+1)-ceil((n/2)²)]` -/
def P12923127839938921397.Spec : Prop :=
  ∀ n, (P12923127839938921397.a n : ℤ) = A183867 (n + 1)

end A183867

/-! ## A183867.P1649882741156187438

`A028392(A028392(n+1))`
-/

namespace A183867.P1649882741156187438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A028392 (n + 1)).toNat

end

end A183867.P1649882741156187438

namespace A183867

/-- `A028392(A028392(n+1))` -/
def P1649882741156187438.Spec : Prop :=
  ∀ n, P1649882741156187438.a n = A183867 (n + 1)

end A183867

/-! ## A183867.P11318396444125982509

`comp[2*n-A232535(n)]`
-/

namespace A183867.P11318396444125982509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A232535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183867.P11318396444125982509

namespace A183867

/-- `comp[2*n-A232535(n)]` -/
def P11318396444125982509.Spec : Prop :=
  ∀ n, (P11318396444125982509.a n : ℤ) = A183867 (n + 1)

end A183867

/-! ## A183867.P1973160876084189022

`A023443(A183866(n+2))`
-/

namespace A183867.P1973160876084189022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183866 (n + 2)).toNat

end

end A183867.P1973160876084189022

namespace A183867

/-- `A023443(A183866(n+2))` -/
def P1973160876084189022.Spec : Prop :=
  ∀ n, P1973160876084189022.a n = A183867 (n + 1)

end A183867

/-!
# A183868: a(n) = n + floor(2*sqrt(n+1)); complement of A079524.

The programs for A183868, the canonical program `A183868.P6473998521691203470` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183868 has offset 1).

The definition of A183868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(2*sqrt(n+2))` (program `A183868.P6473998521691203470`, by `A183868.P6473998521691203470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183868.P6473998521691203470

`n+1+floor(2*sqrt(n+2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183868

/-- `n+1+floor(2*sqrt(n+2))` -/
def P6473998521691203470.Spec : Prop :=
  ∀ n, P6473998521691203470.a n = A183868 (n + 1)

theorem P6473998521691203470.correct : P6473998521691203470.Spec := by
  intro n
  simp only [A183868, Nat.add_sub_cancel]

end A183868

/-! ## A183868.P6368733278016511824

`comp[a(n-2)+n]` with `a(0)=0, a(1)=2, a(2)=0, a(3)=1`
-/

namespace A183868.P6368733278016511824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0, 1] fun n f1 =>
  f1 (n - 2) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183868.P6368733278016511824

namespace A183868

/-- `comp[a(n-2)+n]` -/
def P6368733278016511824.Spec : Prop :=
  ∀ n, (P6368733278016511824.a n : ℤ) = A183868 (n + 1)

end A183868

/-! ## A183868.P13224454949616558648

`comp[∑[n-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=-2, a(3)=1`
-/

namespace A183868.P13224454949616558648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -2, 1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183868.P13224454949616558648

namespace A183868

/-- `comp[∑[n-a(n-1)]]` -/
def P13224454949616558648.Spec : Prop :=
  ∀ n, (P13224454949616558648.a n : ℤ) = A183868 (n + 1)

end A183868

/-! ## A183868.P17027861485643640830

`ceil(sqrt(A004767(n)+6)+n)`
-/

namespace A183868.P17027861485643640830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004767 n + 6 : ℝ) + (n : ℝ)⌉

end

end A183868.P17027861485643640830

namespace A183868

/-- `ceil(sqrt(A004767(n)+6)+n)` -/
def P17027861485643640830.Spec : Prop :=
  ∀ n, P17027861485643640830.a n = A183868 (n + 1)

end A183868

/-! ## A183868.P14118229423950585710

`round((A184113(n+1)+n)/2)`
-/

namespace A183868.P14118229423950585710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184113 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A183868.P14118229423950585710

namespace A183868

/-- `round((A184113(n+1)+n)/2)` -/
def P14118229423950585710.Spec : Prop :=
  ∀ n, P14118229423950585710.a n = A183868 (n + 1)

end A183868

/-! ## A183868.P3061484288127887974

`comp[abs(∑[2-A028242(n+1)]-n-n)]`
-/

namespace A183868.P3061484288127887974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A028242 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) - (n : ℤ)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183868.P3061484288127887974

namespace A183868

/-- `comp[abs(∑[2-A028242(n+1)]-n-n)]` -/
def P3061484288127887974.Spec : Prop :=
  ∀ n, (P3061484288127887974.a n : ℤ) = A183868 (n + 1)

end A183868

/-! ## A183868.P10656330939312484383

`comp[abs(∑[1-(n-A028242(n))]-n-n)]`
-/

namespace A183868.P10656330939312484383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - A028242 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) - (n : ℤ)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183868.P10656330939312484383

namespace A183868

/-- `comp[abs(∑[1-(n-A028242(n))]-n-n)]` -/
def P10656330939312484383.Spec : Prop :=
  ∀ n, (P10656330939312484383.a n : ℤ) = A183868 (n + 1)

end A183868

/-! ## A183868.P13687003145961555041

`abs(2-A183866(n+3))`
-/

namespace A183868.P13687003145961555041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A183866 (n + 3)|

end

end A183868.P13687003145961555041

namespace A183868

/-- `abs(2-A183866(n+3))` -/
def P13687003145961555041.Spec : Prop :=
  ∀ n, P13687003145961555041.a n = A183868 (n + 1)

end A183868

/-! ## A183868.P2203959721613418654

`A183570(A183570(n+1))`
-/

namespace A183868.P2203959721613418654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183570 (A183570 (n + 1)).toNat

end

end A183868.P2203959721613418654

namespace A183868

/-- `A183570(A183570(n+1))` -/
def P2203959721613418654.Spec : Prop :=
  ∀ n, P2203959721613418654.a n = A183868 (n + 1)

end A183868

/-! ## A183868.P10478298665924214094

`A183570(record[A183570(abs(1-n))])`
-/

namespace A183868.P10478298665924214094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183570 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183570 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A183868.P10478298665924214094

namespace A183868

/-- `A183570(record[A183570(abs(1-n))])` -/
def P10478298665924214094.Spec : Prop :=
  ∀ n, P10478298665924214094.a n = A183868 (n + 1)

end A183868

/-! ## A183868.P2810954599376971969

`A183570(2-(A267919(n)-A183570(n)))`
-/

namespace A183868.P2810954599376971969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183570 (2 - (A267919 n - A183570 n)).toNat

end

end A183868.P2810954599376971969

namespace A183868

/-- `A183570(2-(A267919(n)-A183570(n)))` -/
def P2810954599376971969.Spec : Prop :=
  ∀ n, P2810954599376971969.a n = A183868 (n + 1)

end A183868

/-! ## A183868.P106329683246811234

`A028310(A060018(n+4)+n+1)`
-/

namespace A183868.P106329683246811234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060018 (n + 4) + (n + 1 : ℤ)).toNat

end

end A183868.P106329683246811234

namespace A183868

/-- `A028310(A060018(n+4)+n+1)` -/
def P106329683246811234.Spec : Prop :=
  ∀ n, P106329683246811234.a n = A183868 (n + 1)

end A183868

/-! ## A183868.P5136417148958037694

`A023443(A183867(n+2))`
-/

namespace A183868.P5136417148958037694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183867 (n + 2)).toNat

end

end A183868.P5136417148958037694

namespace A183868

/-- `A023443(A183867(n+2))` -/
def P5136417148958037694.Spec : Prop :=
  ∀ n, P5136417148958037694.a n = A183868 (n + 1)

end A183868

/-! ## A183868.P11602594519605685835

`A004526(A184113(n+1)+1+n)`
-/

namespace A183868.P11602594519605685835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184113 (n + 1) + 1 + (n : ℤ)).toNat

end

end A183868.P11602594519605685835

namespace A183868

/-- `A004526(A184113(n+1)+1+n)` -/
def P11602594519605685835.Spec : Prop :=
  ∀ n, P11602594519605685835.a n = A183868 (n + 1)

end A183868

/-! ## A183868.P6393362479137485635

`A060018(A035106(A183867(n+2))-(n+1))`
-/

namespace A183868.P6393362479137485635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A035106 (A183867 (n + 2)).toNat - (n + 1 : ℤ)).toNat

end

end A183868.P6393362479137485635

namespace A183868

/-- `A060018(A035106(A183867(n+2))-(n+1))` -/
def P6393362479137485635.Spec : Prop :=
  ∀ n, P6393362479137485635.a n = A183868 (n + 1)

end A183868

/-!
# A183869: a(n) = n + floor(sqrt(4*n + 5)); complement of A004116.

The programs for A183869, the canonical program `A183869.P10161082599610140024` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183869 has offset 0).

The definition of A183869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+floor(sqrt(4*n+5))` (program `A183869.P10161082599610140024`, by `A183869.P10161082599610140024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183869.P10161082599610140024

`n+floor(sqrt(4*n+5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183869

/-- `n+floor(sqrt(4*n+5))` -/
def P10161082599610140024.Spec : Prop :=
  ∀ n, (P10161082599610140024.a n : ℤ) = A183869 n

theorem P10161082599610140024.correct : P10161082599610140024.Spec := by
  intro n
  simp only [A183869]

end A183869

/-! ## A183869.P9482665424449223740

`comp[a(n-2)+n]` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=1`
-/

namespace A183869.P9482665424449223740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, 1] fun n f1 =>
  f1 (n - 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183869.P9482665424449223740

namespace A183869

/-- `comp[a(n-2)+n]` -/
def P9482665424449223740.Spec : Prop :=
  ∀ n, (P9482665424449223740.a n : ℤ) = A183869 n

end A183869

/-! ## A183869.P7305712747096340617

`∑[runs[floor((n+2-sqrt(n+2))²/(n+1))]]`
-/

namespace A183869.P7305712747096340617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2 : ℝ) - Real.sqrt (n + 2 : ℝ)) ^ 2 / (n + 1 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P7305712747096340617

namespace A183869

/-- `∑[runs[floor((n+2-sqrt(n+2))²/(n+1))]]` -/
def P7305712747096340617.Spec : Prop :=
  ∀ n, (P7305712747096340617.a n : ℤ) = A183869 n

end A183869

/-! ## A183869.P8537143082280318117

`comp[A267531(n)-n]`
-/

namespace A183869.P8537143082280318117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267531 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183869.P8537143082280318117

namespace A183869

/-- `comp[A267531(n)-n]` -/
def P8537143082280318117.Spec : Prop :=
  ∀ n, (P8537143082280318117.a n : ℤ) = A183869 n

end A183869

/-! ## A183869.P12316201154491179518

`∑[ceil(ratio[A000267(n)])]`
-/

namespace A183869.P12316201154491179518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P12316201154491179518

namespace A183869

/-- `∑[ceil(ratio[A000267(n)])]` -/
def P12316201154491179518.Spec : Prop :=
  ∀ n, P12316201154491179518.a n = A183869 n

end A183869

/-! ## A183869.P12290639396751603954

`∑[3-dr(A253607(n))]`
-/

namespace A183869.P12290639396751603954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (SequenceMachineLib.digitalRoot (A253607 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P12290639396751603954

namespace A183869

/-- `∑[3-dr(A253607(n))]` -/
def P12290639396751603954.Spec : Prop :=
  ∀ n, P12290639396751603954.a n = A183869 n

end A183869

/-! ## A183869.P1062136469374029531

`∑[floor(root(4, A028330(n)))]`
-/

namespace A183869.P1062136469374029531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℝ) ^ (1 / (A028330 n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P1062136469374029531

namespace A183869

/-- `∑[floor(root(4, A028330(n)))]` -/
def P1062136469374029531.Spec : Prop :=
  ∀ n, P1062136469374029531.a n = A183869 n

end A183869

/-! ## A183869.P1818823369818782345

`∑[char[A078126(n)]+1]`
-/

namespace A183869.P1818823369818782345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P1818823369818782345

namespace A183869

/-- `∑[char[A078126(n)]+1]` -/
def P1818823369818782345.Spec : Prop :=
  ∀ n, (P1818823369818782345.a n : ℤ) = A183869 n

end A183869

/-! ## A183869.P8463418281671449580

`∑[A240025(n+1)+1]`
-/

namespace A183869.P8463418281671449580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P8463418281671449580

namespace A183869

/-- `∑[A240025(n+1)+1]` -/
def P8463418281671449580.Spec : Prop :=
  ∀ n, P8463418281671449580.a n = A183869 n

end A183869

/-! ## A183869.P4846850911537828021

`∑[A237347(n+1)-1]`
-/

namespace A183869.P4846850911537828021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237347 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P4846850911537828021

namespace A183869

/-- `∑[A237347(n+1)-1]` -/
def P4846850911537828021.Spec : Prop :=
  ∀ n, P4846850911537828021.a n = A183869 n

end A183869

/-! ## A183869.P1938820048003824013

`∑[ceil(2/A046618(n+1))]`
-/

namespace A183869.P1938820048003824013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A046618 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P1938820048003824013

namespace A183869

/-- `∑[ceil(2/A046618(n+1))]` -/
def P1938820048003824013.Spec : Prop :=
  ∀ n, P1938820048003824013.a n = A183869 n

end A183869

/-! ## A183869.P10592813634221672993

`∑[char[A024206(n+1)]+1]`
-/

namespace A183869.P10592813634221672993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P10592813634221672993

namespace A183869

/-- `∑[char[A024206(n+1)]+1]` -/
def P10592813634221672993.Spec : Prop :=
  ∀ n, (P10592813634221672993.a n : ℤ) = A183869 n

end A183869

/-! ## A183869.P13328978521499484412

`∑[A000267(Δ[A000267(n)])]`
-/

namespace A183869.P13328978521499484412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P13328978521499484412

namespace A183869

/-- `∑[A000267(Δ[A000267(n)])]` -/
def P13328978521499484412.Spec : Prop :=
  ∀ n, P13328978521499484412.a n = A183869 n

end A183869

/-! ## A183869.P7156025140836427719

`∑[A034869(C(2, A034869(n)))]`
-/

namespace A183869.P7156025140836427719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 (Nat.choose 2 (A034869 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183869.P7156025140836427719

namespace A183869

/-- `∑[A034869(C(2, A034869(n)))]` -/
def P7156025140836427719.Spec : Prop :=
  ∀ n, P7156025140836427719.a n = A183869 n

end A183869

/-! ## A183869.P12322492374058787916

`A183571(A183570(n))`
-/

namespace A183869.P12322492374058787916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183571 (A183570 n).toNat

end

end A183869.P12322492374058787916

namespace A183869

/-- `A183571(A183570(n))` -/
def P12322492374058787916.Spec : Prop :=
  ∀ n, P12322492374058787916.a n = A183869 n

end A183869

/-! ## A183869.P12584754683600416795

`filter[A183571(n+1), A267922(#)]`
-/

namespace A183869.P12584754683600416795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267922 (f1 j).toNat = 1) n)

end

end A183869.P12584754683600416795

namespace A183869

/-- `filter[A183571(n+1), A267922(#)]` -/
def P12584754683600416795.Spec : Prop :=
  ∀ n, P12584754683600416795.a n = A183869 n

end A183869

/-! ## A183869.P5776869247435116662

`A023443(A184675(n+1))`
-/

namespace A183869.P5776869247435116662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184675 (n + 1)).toNat

end

end A183869.P5776869247435116662

namespace A183869

/-- `A023443(A184675(n+1))` -/
def P5776869247435116662.Spec : Prop :=
  ∀ n, P5776869247435116662.a n = A183869 n

end A183869

/-! ## A183869.P7259777396636886271

`A023445(A049068(n+2))`
-/

namespace A183869.P7259777396636886271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A049068 (n + 2)).toNat

end

end A183869.P7259777396636886271

namespace A183869

/-- `A023445(A049068(n+2))` -/
def P7259777396636886271.Spec : Prop :=
  ∀ n, P7259777396636886271.a n = A183869 n

end A183869

/-! ## A183869.P555016839144883974

`A023444(A183569(n+2))`
-/

namespace A183869.P555016839144883974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A183569 (n + 2)).toNat

end

end A183869.P555016839144883974

namespace A183869

/-- `A023444(A183569(n+2))` -/
def P555016839144883974.Spec : Prop :=
  ∀ n, P555016839144883974.a n = A183869 n

end A183869

/-! ## A183869.P7764746339496366357

`A265400(A265413(A000267(n+1)+n))`
-/

namespace A183869.P7764746339496366357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265400 (A265413 (A000267 (n + 1) + (n : ℤ)).toNat).toNat

end

end A183869.P7764746339496366357

namespace A183869

/-- `A265400(A265413(A000267(n+1)+n))` -/
def P7764746339496366357.Spec : Prop :=
  ∀ n, P7764746339496366357.a n = A183869 n

end A183869

/-!
# A183870: n+floor(sqrt(5n-5)); complement of A183871.

The programs for A183870, the canonical program `A183870.P636281183845687509` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183870 has offset 1).

The definition of A183870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(5*(n+1)-5))` (program `A183870.P636281183845687509`, by `A183870.P636281183845687509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183870.P636281183845687509

`n+1+floor(sqrt(5*(n+1)-5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183870

/-- `n+1+floor(sqrt(5*(n+1)-5))` -/
def P636281183845687509.Spec : Prop :=
  ∀ n, P636281183845687509.a n = A183870 (n + 1)

theorem P636281183845687509.correct : P636281183845687509.Spec := by
  intro n
  simp only [A183870, Nat.add_sub_cancel]

end A183870

/-! ## A183870.P14210232623173402138

`comp[A036404(n)+n]`
-/

namespace A183870.P14210232623173402138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183870.P14210232623173402138

namespace A183870

/-- `comp[A036404(n)+n]` -/
def P14210232623173402138.Spec : Prop :=
  ∀ n, (P14210232623173402138.a n : ℤ) = A183870 (n + 1)

end A183870

/-! ## A183870.P5453020166238038862

`ceil(sqrt(A016861(n))+n)`
-/

namespace A183870.P5453020166238038862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016861 n : ℝ) + (n : ℝ)⌉

end

end A183870.P5453020166238038862

namespace A183870

/-- `ceil(sqrt(A016861(n))+n)` -/
def P5453020166238038862.Spec : Prop :=
  ∀ n, P5453020166238038862.a n = A183870 (n + 1)

end A183870

/-! ## A183870.P6424051994310212980

`floor(sqrt(A008587(n))+n+1)`
-/

namespace A183870.P6424051994310212980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A008587 n : ℝ) + (n + 1 : ℝ)⌋

end

end A183870.P6424051994310212980

namespace A183870

/-- `floor(sqrt(A008587(n))+n+1)` -/
def P6424051994310212980.Spec : Prop :=
  ∀ n, P6424051994310212980.a n = A183870 (n + 1)

end A183870

/-! ## A183870.P16148690541265401069

`comp[A057354(∑[n+2])]`
-/

namespace A183870.P16148690541265401069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183870.P16148690541265401069

namespace A183870

/-- `comp[A057354(∑[n+2])]` -/
def P16148690541265401069.Spec : Prop :=
  ∀ n, (P16148690541265401069.a n : ℤ) = A183870 (n + 1)

end A183870

/-! ## A183870.P6950458371068229627

`comp[A002264(∑[A047263(n+3)])]`
-/

namespace A183870.P6950458371068229627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183870.P6950458371068229627

namespace A183870

/-- `comp[A002264(∑[A047263(n+3)])]` -/
def P6950458371068229627.Spec : Prop :=
  ∀ n, (P6950458371068229627.a n : ℤ) = A183870 (n + 1)

end A183870

/-! ## A183870.P7609011368341707787

`comp[A057354(n)-A298645(n+3)]`
-/

namespace A183870.P7609011368341707787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n - A298645 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183870.P7609011368341707787

namespace A183870

/-- `comp[A057354(n)-A298645(n+3)]` -/
def P7609011368341707787.Spec : Prop :=
  ∀ n, (P7609011368341707787.a n : ℤ) = A183870 (n + 1)

end A183870

/-! ## A183870.P50837211453184788

`comp[A068962(n+1)-A001497(n)]`
-/

namespace A183870.P50837211453184788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (n + 1) - A001497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183870.P50837211453184788

namespace A183870

/-- `comp[A068962(n+1)-A001497(n)]` -/
def P50837211453184788.Spec : Prop :=
  ∀ n, (P50837211453184788.a n : ℤ) = A183870 (n + 1)

end A183870

/-! ## A183870.P16090423804344247335

`comp[C(A057354(n), A220562(n+1))]`
-/

namespace A183870.P16090423804344247335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057354 n).toNat (A220562 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183870.P16090423804344247335

namespace A183870

/-- `comp[C(A057354(n), A220562(n+1))]` -/
def P16090423804344247335.Spec : Prop :=
  ∀ n, (P16090423804344247335.a n : ℤ) = A183870 (n + 1)

end A183870

/-!
# A183871: a(n) = n + ceiling( (1/5)*n^2 ). Complement of A183870.

The programs for A183871, the canonical program `A183871.P10125150780018442600` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183871 has offset 1).

The definition of A183871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+ceil(1/5*(n+1)²)` (program `A183871.P10125150780018442600`, by `A183871.P10125150780018442600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183871.P14205402836801976146

`floor((n+2)*(n+5)/5)`
-/

namespace A183871.P14205402836801976146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) * (n + 5) : ℚ) / 5⌋

end

end A183871.P14205402836801976146

namespace A183871

/-- `floor((n+2)*(n+5)/5)` -/
def P14205402836801976146.Spec : Prop :=
  ∀ n, P14205402836801976146.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P10125150780018442600

`n+1+ceil(1/5*(n+1)²)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183871

/-- `n+1+ceil(1/5*(n+1)²)` -/
def P10125150780018442600.Spec : Prop :=
  ∀ n, P10125150780018442600.a n = A183871 (n + 1)

theorem P10125150780018442600.correct : P10125150780018442600.Spec := by
  intro n
  simp only [A183871, Nat.add_sub_cancel]

end A183871

/-! ## A183871.P13376803237588204694

`∑[a(n-5)+2]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3, a(4)=2`
-/

namespace A183871.P13376803237588204694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 3, 2] fun n f1 =>
  f1 (n - 5) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183871.P13376803237588204694

namespace A183871

/-- `∑[a(n-5)+2]` -/
def P13376803237588204694.Spec : Prop :=
  ∀ n, (P13376803237588204694.a n : ℤ) = A183871 (n + 1)

end A183871

/-! ## A183871.P78735041238246488

`ceil(record[(n-1)²/5])+n+1`
-/

namespace A183871.P78735041238246488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2 : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ + (n + 1 : ℤ)

end

end A183871.P78735041238246488

namespace A183871

/-- `ceil(record[(n-1)²/5])+n+1` -/
def P78735041238246488.Spec : Prop :=
  ∀ n, P78735041238246488.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P16014186197971445199

`record[ceil((1-n)²/5-(n-1))]`
-/

namespace A183871.P16014186197971445199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (n : ℤ)) ^ 2 : ℚ) / 5 - ((n : ℤ) - 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183871.P16014186197971445199

namespace A183871

/-- `record[ceil((1-n)²/5-(n-1))]` -/
def P16014186197971445199.Spec : Prop :=
  ∀ n, P16014186197971445199.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P6743480978274240515

`round((record[(n-3)²]+n-1)/5)`
-/

namespace A183871.P6743480978274240515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - 1) : ℚ) / 5)

end

end A183871.P6743480978274240515

namespace A183871

/-- `round((record[(n-3)²]+n-1)/5)` -/
def P6743480978274240515.Spec : Prop :=
  ∀ n, P6743480978274240515.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P12123424219240052988

`∑[∑[floor(a(n-5))]]` with `a(0)=2, a(1)=-1, a(2)=1, a(3)=1, a(4)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A183871.P12123424219240052988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 1, 1, -1] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183871.P12123424219240052988

namespace A183871

/-- `∑[∑[floor(a(n-5))]]` -/
def P12123424219240052988.Spec : Prop :=
  ∀ n, P12123424219240052988.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P2374086325669413138

`round(or(2, (n+1)²)/5+n+1)`
-/

namespace A183871.P2374086325669413138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 ((n + 1) ^ 2) : ℚ) / 5 + (n + 1 : ℚ))

end

end A183871.P2374086325669413138

namespace A183871

/-- `round(or(2, (n+1)²)/5+n+1)` -/
def P2374086325669413138.Spec : Prop :=
  ∀ n, P2374086325669413138.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P531414652589562862

`round(acot(2)+(n+1)²/5+n+1)`
-/

namespace A183871.P531414652589562862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 : ℝ) + (((n + 1) ^ 2 : ℚ) / 5 : ℝ) + (n + 1 : ℝ))

end

end A183871.P531414652589562862

namespace A183871

/-- `round(acot(2)+(n+1)²/5+n+1)` -/
def P531414652589562862.Spec : Prop :=
  ∀ n, P531414652589562862.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P17337168192827678232

`Δ[a(n-1)+ceil(n²/5+n)]` with `a(0)=1`
-/

namespace A183871.P17337168192827678232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + ⌈(n ^ 2 : ℚ) / 5 + (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183871.P17337168192827678232

namespace A183871

/-- `Δ[a(n-1)+ceil(n²/5+n)]` -/
def P17337168192827678232.Spec : Prop :=
  ∀ n, P17337168192827678232.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P9732208755934056974

`∑[∑[(((4*n)²+1)%5+2)%4-1]]`
-/

namespace A183871.P9732208755934056974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((4 * n) ^ 2 + 1) % 5 + 2) % 4 : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183871.P9732208755934056974

namespace A183871

/-- `∑[∑[(((4*n)²+1)%5+2)%4-1]]` -/
def P9732208755934056974.Spec : Prop :=
  ∀ n, P9732208755934056974.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P12590354236511413872

`∑[∑[a(n-5)^a(n-2)]]` with `a(0)=2, a(1)=-1, a(2)=1, a(3)=1, a(4)=-1`
-/

namespace A183871.P12590354236511413872
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [2, -1, 1, 1, -1] fun n f2 =>
  f2 (n - 5) ^ (f2 (n - 2))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183871.P12590354236511413872

namespace A183871

/-- `∑[∑[a(n-5)^a(n-2)]]` -/
def P12590354236511413872.Spec : Prop :=
  ∀ n, P12590354236511413872.a n = (A183871 (n + 1) : ℝ)

end A183871

/-! ## A183871.P16233504742345063223

`A020725(A183873(n+1))`
-/

namespace A183871.P16233504742345063223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A183873 (n + 1)).toNat

end

end A183871.P16233504742345063223

namespace A183871

/-- `A020725(A183873(n+1))` -/
def P16233504742345063223.Spec : Prop :=
  ∀ n, P16233504742345063223.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P5066075555033507316

`A004523(A186494(n+2))`
-/

namespace A183871.P5066075555033507316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A186494 (n + 2)).toNat

end

end A183871.P5066075555033507316

namespace A183871

/-- `A004523(A186494(n+2))` -/
def P5066075555033507316.Spec : Prop :=
  ∀ n, P5066075555033507316.a n = A183871 (n + 1)

end A183871

/-! ## A183871.P2812445987651448414

`A194222(A034856(n+2))`
-/

namespace A183871.P2812445987651448414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194222 (A034856 (n + 2)).toNat

end

end A183871.P2812445987651448414

namespace A183871

/-- `A194222(A034856(n+2))` -/
def P2812445987651448414.Spec : Prop :=
  ∀ n, P2812445987651448414.a n = A183871 (n + 1)

end A183871

/-!
# A183872: n+floor(sqrt(5n)); complement of A183873.

The programs for A183872, the canonical program `A183872.P17012599880362172544` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183872 has offset 1).

The definition of A183872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(5*(n+1)))` (program `A183872.P17012599880362172544`, by `A183872.P17012599880362172544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183872.P17012599880362172544

`n+1+floor(sqrt(5*(n+1)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183872

/-- `n+1+floor(sqrt(5*(n+1)))` -/
def P17012599880362172544.Spec : Prop :=
  ∀ n, (P17012599880362172544.a n : ℤ) = A183872 (n + 1)

theorem P17012599880362172544.correct : P17012599880362172544.Spec := by
  intro n
  simp only [A183872, Nat.add_sub_cancel]

end A183872

/-! ## A183872.P17754188989295343082

`floor(sqrt(5/acot(n+1))+n+1)`
-/

namespace A183872.P17754188989295343082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (5 / SequenceMachineLib.acot (n + 1 : ℝ)) + (n + 1 : ℝ)⌋

end

end A183872.P17754188989295343082

namespace A183872

/-- `floor(sqrt(5/acot(n+1))+n+1)` -/
def P17754188989295343082.Spec : Prop :=
  ∀ n, P17754188989295343082.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P9680829701744441565

`∑[Δ[A202305(n)]+1]`
-/

namespace A183872.P9680829701744441565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P9680829701744441565

namespace A183872

/-- `∑[Δ[A202305(n)]+1]` -/
def P9680829701744441565.Spec : Prop :=
  ∀ n, P9680829701744441565.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P5042245972431798821

`∑[A000029(Δ[A202305(n)])]`
-/

namespace A183872.P5042245972431798821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P5042245972431798821

namespace A183872

/-- `∑[A000029(Δ[A202305(n)])]` -/
def P5042245972431798821.Spec : Prop :=
  ∀ n, P5042245972431798821.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P16047327262757556256

`∑[A000031(Δ[A202305(n)])]`
-/

namespace A183872.P16047327262757556256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P16047327262757556256

namespace A183872

/-- `∑[A000031(Δ[A202305(n)])]` -/
def P16047327262757556256.Spec : Prop :=
  ∀ n, P16047327262757556256.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P15207488810823791331

`∑[A000050(Δ[A202305(n)])]`
-/

namespace A183872.P15207488810823791331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000050 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P15207488810823791331

namespace A183872

/-- `∑[A000050(Δ[A202305(n)])]` -/
def P15207488810823791331.Spec : Prop :=
  ∀ n, P15207488810823791331.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P15440633829794906235

`∑[A000267(Δ[A202305(n)])]`
-/

namespace A183872.P15440633829794906235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P15440633829794906235

namespace A183872

/-- `∑[A000267(Δ[A202305(n)])]` -/
def P15440633829794906235.Spec : Prop :=
  ∀ n, P15440633829794906235.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P10501824303523836060

`∑[A001972(Δ[A202305(n)])]`
-/

namespace A183872.P10501824303523836060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P10501824303523836060

namespace A183872

/-- `∑[A001972(Δ[A202305(n)])]` -/
def P10501824303523836060.Spec : Prop :=
  ∀ n, P10501824303523836060.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P3265837877953652190

`∑[A005496(Δ[A202305(n)])]`
-/

namespace A183872.P3265837877953652190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P3265837877953652190

namespace A183872

/-- `∑[A005496(Δ[A202305(n)])]` -/
def P3265837877953652190.Spec : Prop :=
  ∀ n, P3265837877953652190.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P489513073211789636

`∑[A006047(Δ[A202305(n)])]`
-/

namespace A183872.P489513073211789636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P489513073211789636

namespace A183872

/-- `∑[A006047(Δ[A202305(n)])]` -/
def P489513073211789636.Spec : Prop :=
  ∀ n, P489513073211789636.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P7181746497301113940

`∑[A018157(Δ[A202305(n)])]`
-/

namespace A183872.P7181746497301113940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018157 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P7181746497301113940

namespace A183872

/-- `∑[A018157(Δ[A202305(n)])]` -/
def P7181746497301113940.Spec : Prop :=
  ∀ n, P7181746497301113940.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P1019754863990371921

`∑[A019565(Δ[A202305(n)])]`
-/

namespace A183872.P1019754863990371921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P1019754863990371921

namespace A183872

/-- `∑[A019565(Δ[A202305(n)])]` -/
def P1019754863990371921.Spec : Prop :=
  ∀ n, P1019754863990371921.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P7363315514905698382

`∑[A025488(Δ[A202305(n)])]`
-/

namespace A183872.P7363315514905698382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025488 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P7363315514905698382

namespace A183872

/-- `∑[A025488(Δ[A202305(n)])]` -/
def P7363315514905698382.Spec : Prop :=
  ∀ n, P7363315514905698382.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P742326719966636891

`∑[A026355(Δ[A202305(n)])]`
-/

namespace A183872.P742326719966636891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P742326719966636891

namespace A183872

/-- `∑[A026355(Δ[A202305(n)])]` -/
def P742326719966636891.Spec : Prop :=
  ∀ n, P742326719966636891.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P18002024741203631450

`∑[A028356(Δ[A202305(n)])]`
-/

namespace A183872.P18002024741203631450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028356 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P18002024741203631450

namespace A183872

/-- `∑[A028356(Δ[A202305(n)])]` -/
def P18002024741203631450.Spec : Prop :=
  ∀ n, P18002024741203631450.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P13897722540857993899

`∑[A038754(Δ[A202305(n)])]`
-/

namespace A183872.P13897722540857993899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P13897722540857993899

namespace A183872

/-- `∑[A038754(Δ[A202305(n)])]` -/
def P13897722540857993899.Spec : Prop :=
  ∀ n, P13897722540857993899.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P10306400882124534789

`∑[A124808(Δ[A202305(n)])]`
-/

namespace A183872.P10306400882124534789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124808 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183872.P10306400882124534789

namespace A183872

/-- `∑[A124808(Δ[A202305(n)])]` -/
def P10306400882124534789.Spec : Prop :=
  ∀ n, P10306400882124534789.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P15952456532978173672

`floor(sqrt(A008587(n+1))+n+1)`
-/

namespace A183872.P15952456532978173672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A008587 (n + 1) : ℝ) + (n + 1 : ℝ)⌋

end

end A183872.P15952456532978173672

namespace A183872

/-- `floor(sqrt(A008587(n+1))+n+1)` -/
def P15952456532978173672.Spec : Prop :=
  ∀ n, P15952456532978173672.a n = A183872 (n + 1)

end A183872

/-! ## A183872.P18194073338686345197

`A023443(A183870(n+2))`
-/

namespace A183872.P18194073338686345197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183870 (n + 2)).toNat

end

end A183872.P18194073338686345197

namespace A183872

/-- `A023443(A183870(n+2))` -/
def P18194073338686345197.Spec : Prop :=
  ∀ n, P18194073338686345197.a n = A183872 (n + 1)

end A183872

/-!
# A183873: a(n) = n-1+ceiling((1/5)n^2); complement of A183872.

The programs for A183873, the canonical program `A183873.P1115764608135135097` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183873 has offset 1).

The definition of A183873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+ceil(1/5*(n+1)²)` (program `A183873.P1115764608135135097`, by `A183873.P1115764608135135097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183873.P1115764608135135097

`n+ceil(1/5*(n+1)²)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183873

/-- `n+ceil(1/5*(n+1)²)` -/
def P1115764608135135097.Spec : Prop :=
  ∀ n, P1115764608135135097.a n = A183873 (n + 1)

theorem P1115764608135135097.correct : P1115764608135135097.Spec := by
  intro n
  simp only [A183873, Nat.add_sub_cancel]

end A183873

/-! ## A183873.P3069251885030827377

`ogf((1+x^2+x^3-x^4+x^5-x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A183873.P3069251885030827377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 1, -1, 1, -1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A183873.P3069251885030827377

namespace A183873

/-- `ogf((1+x^2+x^3-x^4+x^5-x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P3069251885030827377.Spec : Prop :=
  ∀ n, P3069251885030827377.a n = A183873 (n + 1)

end A183873

/-! ## A183873.P819582801143825291

`record[ceil((1-n)²/5-n)]`
-/

namespace A183873.P819582801143825291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (n : ℤ)) ^ 2 : ℚ) / 5 - (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183873.P819582801143825291

namespace A183873

/-- `record[ceil((1-n)²/5-n)]` -/
def P819582801143825291.Spec : Prop :=
  ∀ n, P819582801143825291.a n = A183873 (n + 1)

end A183873

/-! ## A183873.P12142673346396305002

`round(or(2, (n+1)²)/5+n)`
-/

namespace A183873.P12142673346396305002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 ((n + 1) ^ 2) : ℚ) / 5 + (n : ℚ))

end

end A183873.P12142673346396305002

namespace A183873

/-- `round(or(2, (n+1)²)/5+n)` -/
def P12142673346396305002.Spec : Prop :=
  ∀ n, P12142673346396305002.a n = A183873 (n + 1)

end A183873

/-! ## A183873.P3072247322771046879

`floor(∑[a(n-1)+2]/5)` with `a(0)=5, a(1)=8`
-/

namespace A183873.P3072247322771046879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A183873.P3072247322771046879

namespace A183873

/-- `floor(∑[a(n-1)+2]/5)` -/
def P3072247322771046879.Spec : Prop :=
  ∀ n, P3072247322771046879.a n = A183873 (n + 1)

end A183873

/-! ## A183873.P9922898386685909633

`floor((n+1)²/5+tan(7)+n)`
-/

namespace A183873.P9922898386685909633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 : ℚ) / 5 : ℝ) + (Real.tan (7 : ℝ) + (n : ℝ))⌋

end

end A183873.P9922898386685909633

namespace A183873

/-- `floor((n+1)²/5+tan(7)+n)` -/
def P9922898386685909633.Spec : Prop :=
  ∀ n, P9922898386685909633.a n = A183873 (n + 1)

end A183873

/-! ## A183873.P10146387702836627228

`round(acot(2)+(n+1)²/5+n)`
-/

namespace A183873.P10146387702836627228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 : ℝ) + (((n + 1) ^ 2 : ℚ) / 5 : ℝ) + (n : ℝ))

end

end A183873.P10146387702836627228

namespace A183873

/-- `round(acot(2)+(n+1)²/5+n)` -/
def P10146387702836627228.Spec : Prop :=
  ∀ n, P10146387702836627228.a n = A183873 (n + 1)

end A183873

/-! ## A183873.P2058063863150798008

`∑[a(n-5)+2]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=2, a(5)=4`
-/

namespace A183873.P2058063863150798008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 2, 4] fun n f1 =>
  f1 (n - 5) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183873.P2058063863150798008

namespace A183873

/-- `∑[a(n-5)+2]` -/
def P2058063863150798008.Spec : Prop :=
  ∀ n, (P2058063863150798008.a n : ℤ) = A183873 (n + 1)

end A183873

/-! ## A183873.P12148661725708728287

`floor((A016969(n)+n²+n)/5)`
-/

namespace A183873.P12148661725708728287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016969 n + (n ^ 2 + n : ℤ) : ℚ) / 5⌋

end

end A183873.P12148661725708728287

namespace A183873

/-- `floor((A016969(n)+n²+n)/5)` -/
def P12148661725708728287.Spec : Prop :=
  ∀ n, P12148661725708728287.a n = A183873 (n + 1)

end A183873

/-! ## A183873.P15992165336293129042

`A023443(A183871(n+1))`
-/

namespace A183873.P15992165336293129042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183871 (n + 1)).toNat

end

end A183873.P15992165336293129042

namespace A183873

/-- `A023443(A183871(n+1))` -/
def P15992165336293129042.Spec : Prop :=
  ∀ n, P15992165336293129042.a n = A183873 (n + 1)

end A183873

/-! ## A183873.P9393568429372212786

`A106250(A055999(n))`
-/

namespace A183873.P9393568429372212786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106250 (A055999 n).toNat

end

end A183873.P9393568429372212786

namespace A183873

/-- `A106250(A055999(n))` -/
def P9393568429372212786.Spec : Prop :=
  ∀ n, P9393568429372212786.a n = A183873 (n + 1)

end A183873

/-! ## A183873.P8907013414928532021

`A117451(A046691(n+1))`
-/

namespace A183873.P8907013414928532021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117451 (A046691 (n + 1)).toNat

end

end A183873.P8907013414928532021

namespace A183873

/-- `A117451(A046691(n+1))` -/
def P8907013414928532021.Spec : Prop :=
  ∀ n, P8907013414928532021.a n = A183873 (n + 1)

end A183873

/-! ## A183873.P9108147139979699661

`A173276(A134227(n+1))`
-/

namespace A183873.P9108147139979699661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 (A134227 (n + 1)).toNat

end

end A183873.P9108147139979699661

namespace A183873

/-- `A173276(A134227(n+1))` -/
def P9108147139979699661.Spec : Prop :=
  ∀ n, P9108147139979699661.a n = A183873 (n + 1)

end A183873

/-!
# A183874: a(n) = n + floor(sqrt(3*n/2)). Complement of A183857.

The programs for A183874, the canonical program `A183874.P3043481222296747106` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183874 has offset 1).

The definition of A183874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(3*(n+1)/2))` (program `A183874.P3043481222296747106`, by `A183874.P3043481222296747106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183874.P3043481222296747106

`n+1+floor(sqrt(3*(n+1)/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183874

/-- `n+1+floor(sqrt(3*(n+1)/2))` -/
def P3043481222296747106.Spec : Prop :=
  ∀ n, P3043481222296747106.a n = A183874 (n + 1)

theorem P3043481222296747106.correct : P3043481222296747106.Spec := by
  intro n
  simp only [A183874, Nat.add_sub_cancel]

end A183874

/-! ## A183874.P14556788242762340337

`floor(sqrt(∑[gcd(2, n)])+n+1)`
-/

namespace A183874.P14556788242762340337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ)⌋

end

end A183874.P14556788242762340337

namespace A183874

/-- `floor(sqrt(∑[gcd(2, n)])+n+1)` -/
def P14556788242762340337.Spec : Prop :=
  ∀ n, P14556788242762340337.a n = A183874 (n + 1)

end A183874

/-! ## A183874.P5369958115258247875

`∑[∏{e}[∑[n%2+1], #+1]%2+1]`
-/

namespace A183874.P5369958115258247875
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) % 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183874.P5369958115258247875

namespace A183874

/-- `∑[∏{e}[∑[n%2+1], #+1]%2+1]` -/
def P5369958115258247875.Spec : Prop :=
  ∀ n, (P5369958115258247875.a n : ℤ) = A183874 (n + 1)

end A183874

/-! ## A183874.P10142745482933845798

`comp[∑[comp[A133570(n+1)]]]`
-/

namespace A183874.P10142745482933845798
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133570 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183874.P10142745482933845798

namespace A183874

/-- `comp[∑[comp[A133570(n+1)]]]` -/
def P10142745482933845798.Spec : Prop :=
  ∀ n, (P10142745482933845798.a n : ℤ) = A183874 (n + 1)

end A183874

/-! ## A183874.P12908208926006067867

`∑[char[A071619(n)-1]+1]`
-/

namespace A183874.P12908208926006067867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183874.P12908208926006067867

namespace A183874

/-- `∑[char[A071619(n)-1]+1]` -/
def P12908208926006067867.Spec : Prop :=
  ∀ n, (P12908208926006067867.a n : ℤ) = A183874 (n + 1)

end A183874

/-! ## A183874.P10727228818969750561

`∑[char[A337483(2*n)]+1]`
-/

namespace A183874.P10727228818969750561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337483 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183874.P10727228818969750561

namespace A183874

/-- `∑[char[A337483(2*n)]+1]` -/
def P10727228818969750561.Spec : Prop :=
  ∀ n, (P10727228818969750561.a n : ℤ) = A183874 (n + 1)

end A183874

/-! ## A183874.P6388076878823056290

`floor(sqrt(A159481(n)+1+n)+n+1)`
-/

namespace A183874.P6388076878823056290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A159481 n + 1 + (n : ℤ) : ℝ) + (n + 1 : ℝ)⌋

end

end A183874.P6388076878823056290

namespace A183874

/-- `floor(sqrt(A159481(n)+1+n)+n+1)` -/
def P6388076878823056290.Spec : Prop :=
  ∀ n, P6388076878823056290.a n = A183874 (n + 1)

end A183874

/-! ## A183874.P2535930233526742166

`ceil(sqrt(A001651(n+2))+n)`
-/

namespace A183874.P2535930233526742166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001651 (n + 2) : ℝ) + (n : ℝ)⌉

end

end A183874.P2535930233526742166

namespace A183874

/-- `ceil(sqrt(A001651(n+2))+n)` -/
def P2535930233526742166.Spec : Prop :=
  ∀ n, P2535930233526742166.a n = A183874 (n + 1)

end A183874

/-! ## A183874.P9206837712861200623

`ceil(sqrt(A047251(n+2))+n)`
-/

namespace A183874.P9206837712861200623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A047251 (n + 2) : ℝ) + (n : ℝ)⌉

end

end A183874.P9206837712861200623

namespace A183874

/-- `ceil(sqrt(A047251(n+2))+n)` -/
def P9206837712861200623.Spec : Prop :=
  ∀ n, P9206837712861200623.a n = A183874 (n + 1)

end A183874

/-! ## A183874.P17736515820857400407

`ceil(sqrt(A141259(n+2))+n)`
-/

namespace A183874.P17736515820857400407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A141259 (n + 2) : ℝ) + (n : ℝ)⌉

end

end A183874.P17736515820857400407

namespace A183874

/-- `ceil(sqrt(A141259(n+2))+n)` -/
def P17736515820857400407.Spec : Prop :=
  ∀ n, P17736515820857400407.a n = A183874 (n + 1)

end A183874

/-!
# A183875: Triangle T(n,k) for A(x)^k=sum(n>=k T(n,k)*x^n), where o.g.f. A(x) satisfies A(x)=(a+b*x*A(x))/(c-d*x*A(x)), a=1,b=2,c=1,d=2.

The programs for A183875, the canonical program `A183875.P1355878727578495785` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183875 has offset 1).

The definition of A183875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183875.P17768540539772400307

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A080247(n)`
-/

namespace A183875.P17768540539772400307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A080247 n : ℚ)

end

end A183875.P17768540539772400307

namespace A183875

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A080247(n)` -/
def P17768540539772400307.Spec : Prop :=
  ∀ n, P17768540539772400307.a n = (A183875 (n + 1) : ℚ)

end A183875

/-! ## A183875.P1355878727578495785

`A080247(n)*A130321(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A183875

/-- `A080247(n)*A130321(n)` -/
def P1355878727578495785.Spec : Prop :=
  ∀ n, P1355878727578495785.a n = A183875 (n + 1)

theorem P1355878727578495785.correct : P1355878727578495785.Spec := by
  intro n
  simp only [A183875, Nat.add_sub_cancel]

end A183875

/-! ## A183875.P8679806519397272189

`abs(A080245(n)*A130321(n))`
-/

namespace A183875.P8679806519397272189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080245 n * A130321 n|

end

end A183875.P8679806519397272189

namespace A183875

/-- `abs(A080245(n)*A130321(n))` -/
def P8679806519397272189.Spec : Prop :=
  ∀ n, P8679806519397272189.a n = A183875 (n + 1)

end A183875

/-! ## A183875.P14176641042028272039

`sqrt(A262616(n))*A080247(n)`
-/

namespace A183875.P14176641042028272039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A080247 n : ℝ)

end

end A183875.P14176641042028272039

namespace A183875

/-- `sqrt(A262616(n))*A080247(n)` -/
def P14176641042028272039.Spec : Prop :=
  ∀ n, P14176641042028272039.a n = (A183875 (n + 1) : ℝ)

end A183875

/-! ## A183875.P17171070966372855021

`2^A025581(n)*A080247(n)`
-/

namespace A183875.P17171070966372855021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A080247 n : ℚ)

end

end A183875.P17171070966372855021

namespace A183875

/-- `2^A025581(n)*A080247(n)` -/
def P17171070966372855021.Spec : Prop :=
  ∀ n, P17171070966372855021.a n = (A183875 (n + 1) : ℚ)

end A183875

/-! ## A183875.P13227350134445548923

`A000079(A025581(n))*A080247(n)`
-/

namespace A183875.P13227350134445548923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A080247 n

end

end A183875.P13227350134445548923

namespace A183875

/-- `A000079(A025581(n))*A080247(n)` -/
def P13227350134445548923.Spec : Prop :=
  ∀ n, P13227350134445548923.a n = A183875 (n + 1)

end A183875

/-! ## A183875.P1506520420791543518

`A016116(A099375(n))*A080247(n)`
-/

namespace A183875.P1506520420791543518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A099375 n).toNat * A080247 n

end

end A183875.P1506520420791543518

namespace A183875

/-- `A016116(A099375(n))*A080247(n)` -/
def P1506520420791543518.Spec : Prop :=
  ∀ n, P1506520420791543518.a n = A183875 (n + 1)

end A183875

/-! ## A183875.P5320771310760400349

`A059268(A061579(n))*A080247(n)`
-/

namespace A183875.P5320771310760400349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A080247 n

end

end A183875.P5320771310760400349

namespace A183875

/-- `A059268(A061579(n))*A080247(n)` -/
def P5320771310760400349.Spec : Prop :=
  ∀ n, P5320771310760400349.a n = A183875 (n + 1)

end A183875

/-! ## A183875.P11194925285216251139

`A006519(A099884(n))*A080247(n)`
-/

namespace A183875.P11194925285216251139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A099884 n).toNat * A080247 n

end

end A183875.P11194925285216251139

namespace A183875

/-- `A006519(A099884(n))*A080247(n)` -/
def P11194925285216251139.Spec : Prop :=
  ∀ n, P11194925285216251139.a n = A183875 (n + 1)

end A183875

/-! ## A183875.P7363259160406552076

`A080247(n)*A159481(A130330(n))`
-/

namespace A183875.P7363259160406552076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 n * A159481 (A130330 n).toNat

end

end A183875.P7363259160406552076

namespace A183875

/-- `A080247(n)*A159481(A130330(n))` -/
def P7363259160406552076.Spec : Prop :=
  ∀ n, P7363259160406552076.a n = A183875 (n + 1)

end A183875

/-!
# A183876: G.f. satisfies: A(x) = Sum_{n>=0} x^n*[Sum_{k=0..n} C(n,k)^2 *x^k* A(x)^(2k)].

The programs for A183876, there is no canonical definition to state claims against.
-/

/-! ## A183876.P1664231018835714555

`A002265(A015523(n))+A000085(n)`
-/

namespace A183876.P1664231018835714555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A015523 n).toNat + A000085 n

end

end A183876.P1664231018835714555

/-! ## A183876.P703881950296015137

`A289494(A150950(n))`
-/

namespace A183876.P703881950296015137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A150950 n).toNat

end

end A183876.P703881950296015137

/-! ## A183876.P12455368027211144980

`A126257(A148737(n)+A122446(n))`
-/

namespace A183876.P12455368027211144980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A148737 n + A122446 n).toNat

end

end A183876.P12455368027211144980

/-!
# A183877: Number of arrangements of n+2 numbers in 0..2 with each number being the sum mod 3 of two others.

The programs for A183877, the canonical program `A183877.P3935388817591142783` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183877 has offset 1).

The definition of A183877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183877.P9668962465042144075

`ogf((1+25x-3x^2-33x^3+18x^4)/(1-6x+12x^2-10x^3+3x^4))`
-/

namespace A183877.P9668962465042144075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 25, -3, -33, 18] [1, -6, 12, -10, 3] n

end

end A183877.P9668962465042144075

namespace A183877

/-- `ogf((1+25x-3x^2-33x^3+18x^4)/(1-6x+12x^2-10x^3+3x^4))` -/
def P9668962465042144075.Spec : Prop :=
  ∀ n, P9668962465042144075.a n = A183877 (n + 1)

end A183877

/-! ## A183877.P3935388817591142783

`abs(record[3^n-A001105(n+1)])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A183877

/-- `abs(record[3^n-A001105(n+1)])` -/
def P3935388817591142783.Spec : Prop :=
  ∀ n, P3935388817591142783.a n = A183877 (n + 1)

theorem P3935388817591142783.correct : P3935388817591142783.Spec := by
  intro n
  simp only [A183877, Nat.add_sub_cancel]

end A183877

/-! ## A183877.P12354233541107367368

`record[A108411(n)-A116471(n+1)]`
-/

namespace A183877.P12354233541107367368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n - A116471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183877.P12354233541107367368

namespace A183877

/-- `record[A108411(n)-A116471(n+1)]` -/
def P12354233541107367368.Spec : Prop :=
  ∀ n, P12354233541107367368.a n = A183877 (n + 1)

end A183877

/-! ## A183877.P7532911742972243144

`record[A108411(A004275(n))-2*n²]`
-/

namespace A183877.P7532911742972243144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A004275 n).toNat - (2 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183877.P7532911742972243144

namespace A183877

/-- `record[A108411(A004275(n))-2*n²]` -/
def P7532911742972243144.Spec : Prop :=
  ∀ n, P7532911742972243144.a n = A183877 (n + 1)

end A183877

/-! ## A183877.P524909735029923512

`record[A111575(A130824(n))-2*n²]`
-/

namespace A183877.P524909735029923512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111575 (A130824 n).toNat - (2 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183877.P524909735029923512

namespace A183877

/-- `record[A111575(A130824(n))-2*n²]` -/
def P524909735029923512.Spec : Prop :=
  ∀ n, P524909735029923512.a n = A183877 (n + 1)

end A183877

/-! ## A183877.P8963275336395280260

`record[A074324(2*n+1)-A116471(2*n+1)]`
-/

namespace A183877.P8963275336395280260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (2 * n + 1) - A116471 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183877.P8963275336395280260

namespace A183877

/-- `record[A074324(2*n+1)-A116471(2*n+1)]` -/
def P8963275336395280260.Spec : Prop :=
  ∀ n, P8963275336395280260.a n = A183877 (n + 1)

end A183877

/-!
# A183878: Number of arrangements of n+2 numbers in 0..3 with each number being the sum mod 4 of two others.

The programs for A183878, there is no canonical definition to state claims against.
-/

/-! ## A183878.P2863814294621560279

`A183884(∑[n+3]+1)`
-/

namespace A183878.P2863814294621560279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183878.P2863814294621560279

/-! ## A183878.P13305828056430767773

`A183884(A052905(n)+3)+char[20]`
-/

namespace A183878.P13305828056430767773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (A052905 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183878.P13305828056430767773

/-! ## A183878.P9023222513470306749

`A007318(C(2, n))*A183884(A034856(n+2))`
-/

namespace A183878.P9023222513470306749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183884 (A034856 (n + 2)).toNat

end

end A183878.P9023222513470306749

/-! ## A183878.P14080872911352807684

`A007318(C(2, n))*A183884(A052905(n)+3)`
-/

namespace A183878.P14080872911352807684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183884 (A052905 n + 3).toNat

end

end A183878.P14080872911352807684

/-!
# A183879: Number of arrangements of n+2 numbers in 0..4 with each number being the sum mod 5 of two others.

The programs for A183879, there is no canonical definition to state claims against.
-/

/-! ## A183879.P15251750338779004844

`A183884(∑[n+4]+3)`
-/

namespace A183879.P15251750338779004844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183879.P15251750338779004844

/-! ## A183879.P2764199135398876624

`or(1, A183884(A141214(n+1)))`
-/

namespace A183879.P2764199135398876624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183884 (A141214 (n + 1)).toNat)

end

end A183879.P2764199135398876624

/-! ## A183879.P17687627125087770792

`or(1, A183884(A155212(n)+5))`
-/

namespace A183879.P17687627125087770792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183884 (A155212 n + 5).toNat)

end

end A183879.P17687627125087770792

/-! ## A183879.P3984983865643571467

`A007318(C(n, 2))*A183884(A155212(n)+5)`
-/

namespace A183879.P3984983865643571467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A183884 (A155212 n + 5).toNat

end

end A183879.P3984983865643571467

/-! ## A183879.P11291762952496097030

`A000041(C(2, n+2))*A183884(A141214(n+1))`
-/

namespace A183879.P11291762952496097030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A183884 (A141214 (n + 1)).toNat

end

end A183879.P11291762952496097030

/-!
# A183880: Number of arrangements of n+2 numbers in 0..5 with each number being the sum mod 6 of two others.

The programs for A183880, there is no canonical definition to state claims against.
-/

/-! ## A183880.P16565105581475167487

`A183884(∑[n+5]+6)`
-/

namespace A183880.P16565105581475167487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183880.P16565105581475167487

/-!
# A183881: Number of arrangements of n+2 numbers in 0..6 with each number being the sum mod 7 of two others.

The programs for A183881, there is no canonical definition to state claims against.
-/

/-! ## A183881.P4854813612986836161

`A183884(A052905(n+3))`
-/

namespace A183881.P4854813612986836161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (A052905 (n + 3)).toNat

end

end A183881.P4854813612986836161

/-! ## A183881.P15260929305453769054

`A183884(A056119(n)+16)`
-/

namespace A183881.P15260929305453769054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (A056119 n + 16).toNat

end

end A183881.P15260929305453769054

/-! ## A183881.P13960571094718967817

`A183884(eq[3, A219347(n)])`
-/

namespace A183881.P13960571094718967817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183881.P13960571094718967817

/-! ## A183881.P15884993056804825380

`A183884(eq[5, A193592(n)])`
-/

namespace A183881.P15884993056804825380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183881.P15884993056804825380

/-! ## A183881.P7836858090575206026

`A183884(eq[8, A258709(n)])`
-/

namespace A183881.P7836858090575206026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183881.P7836858090575206026

/-!
# A183882: Number of arrangements of n+2 numbers in 0..7 with each number being the sum mod 8 of two others.

The programs for A183882, there is no canonical definition to state claims against.
-/

/-! ## A183882.P7691077889189893236

`A183884(A055999(n+4))`
-/

namespace A183882.P7691077889189893236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (A055999 (n + 4)).toNat

end

end A183882.P7691077889189893236

/-! ## A183882.P9206812612739757549

`A183884(eq[4, A219347(n)])`
-/

namespace A183882.P9206812612739757549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183882.P9206812612739757549

/-! ## A183882.P6665560127783649297

`A183884(eq[6, A193592(n)])`
-/

namespace A183882.P6665560127783649297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183882.P6665560127783649297

/-! ## A183882.P13061177974649914393

`A183884(A034856(n+6)-4)`
-/

namespace A183882.P13061177974649914393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (A034856 (n + 6) - 4).toNat

end

end A183882.P13061177974649914393

/-! ## A183882.P14472947913010942880

`A183884(A000096(n+6)-5)`
-/

namespace A183882.P14472947913010942880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (A000096 (n + 6) - 5).toNat

end

end A183882.P14472947913010942880

/-!
# A183883: Number of arrangements of n+2 numbers in 0..8 with each number being the sum mod 9 of two others.

The programs for A183883, there is no canonical definition to state claims against.
-/

/-! ## A183883.P7108177582231405048

`A183884(eq[5, A219347(n)])`
-/

namespace A183883.P7108177582231405048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183883.P7108177582231405048

/-! ## A183883.P14914585731612362098

`A183884(eq[7, A193592(n)])`
-/

namespace A183883.P14914585731612362098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183883.P14914585731612362098

/-! ## A183883.P4867291830922481318

`A183884(Δ[A183906(n+4)])`
-/

namespace A183883.P4867291830922481318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183906 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (f1 (n + 1) - f1 n).toNat

end

end A183883.P4867291830922481318

/-! ## A183883.P3943677865222389951

`A183884(eq[12, A185782(n+1)])`
-/

namespace A183883.P3943677865222389951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183883.P3943677865222389951

/-! ## A183883.P5831314235852916537

`A183884(A000096(n+6)+n+2)`
-/

namespace A183883.P5831314235852916537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183884 (A000096 (n + 6) + (n + 2 : ℤ)).toNat

end

end A183883.P5831314235852916537

/-!
# A183885: Number of arrangements of n+3 numbers in 0..2 with each number being the sum mod 3 of three others.

The programs for A183885, there is no canonical definition to state claims against.
-/

/-! ## A183885.P12825158517654735699

`A183892(∑[n+2])`
-/

namespace A183885.P12825158517654735699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183885.P12825158517654735699

/-! ## A183885.P7026421201742605110

`or(1, A183892(A000096(n+1)))`
-/

namespace A183885.P7026421201742605110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183892 (A000096 (n + 1)).toNat)

end

end A183885.P7026421201742605110

/-! ## A183885.P2100255338614082015

`record[gcd(A104578(n), A183892(n+1))]`
-/

namespace A183885.P2100255338614082015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104578 n) (A183892 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183885.P2100255338614082015

/-! ## A183885.P2548868821839751412

`record[A183892(n+2)*A185916(n+4)]`
-/

namespace A183885.P2548868821839751412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (n + 2) * A185916 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183885.P2548868821839751412

/-! ## A183885.P2163580022803462966

`A183892(A000096(n+1))+A008683(4*(n+1))`
-/

namespace A183885.P2163580022803462966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (A000096 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A183885.P2163580022803462966

/-!
# A183886: Number of arrangements of n+3 numbers in 0..3 with each number being the sum mod 4 of three others.

The programs for A183886, there is no canonical definition to state claims against.
-/

/-! ## A183886.P3276030993812199216

`A183892(∑[n+3]+1)`
-/

namespace A183886.P3276030993812199216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183886.P3276030993812199216

/-! ## A183886.P1016362377673087576

`lcm(2, A183892(Δ[A008778(n)]))`
-/

namespace A183886.P1016362377673087576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183892 (f1 (n + 1) - f1 n).toNat)

end

end A183886.P1016362377673087576

/-! ## A183886.P5644817385101516984

`A183892(Δ[A008778(n)])+A008683(4*(n+4))`
-/

namespace A183886.P5644817385101516984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (f1 (n + 1) - f1 n).toNat + A008683 (4 * (n + 4))

end

end A183886.P5644817385101516984

/-! ## A183886.P15582944629675149538

`A014963(6*(n+1))*A183892(Δ[A008778(n)])`
-/

namespace A183886.P15582944629675149538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A183892 (f1 (n + 1) - f1 n).toNat

end

end A183886.P15582944629675149538

/-! ## A183886.P8486330443599488775

`A183892(Δ[A008778(n)])%(A000040(n+1)^7)`
-/

namespace A183886.P8486330443599488775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183892 (f1 (n + 1) - f1 n).toNat) (A000040 (n + 1) ^ 7)

end

end A183886.P8486330443599488775

/-!
# A183887: Number of arrangements of n+3 numbers in 0..4 with each number being the sum mod 5 of three others.

The programs for A183887, there is no canonical definition to state claims against.
-/

/-! ## A183887.P11577499059257785726

`A183892(∑[n+4]+3)`
-/

namespace A183887.P11577499059257785726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183887.P11577499059257785726

/-! ## A183887.P11602917508081312269

`or(1, A183892(A141214(n+1)))`
-/

namespace A183887.P11602917508081312269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183892 (A141214 (n + 1)).toNat)

end

end A183887.P11602917508081312269

/-! ## A183887.P15371780800684456169

`or(1, A183892(A027379(n+2)))`
-/

namespace A183887.P15371780800684456169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183892 (A027379 (n + 2)).toNat)

end

end A183887.P15371780800684456169

/-! ## A183887.P6242275230796506419

`A185237(n)+A183892(A027379(n+2))`
-/

namespace A183887.P6242275230796506419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n + A183892 (A027379 (n + 2)).toNat

end

end A183887.P6242275230796506419

/-! ## A183887.P5071743248421290150

`A007318(C(2, n))*A183892(A027379(n+2))`
-/

namespace A183887.P5071743248421290150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183892 (A027379 (n + 2)).toNat

end

end A183887.P5071743248421290150

/-!
# A183888: Number of arrangements of n+3 numbers in 0..5 with each number being the sum mod 6 of three others.

The programs for A183888, there is no canonical definition to state claims against.
-/

/-! ## A183888.P18374279505435290246

`A183892(Δ[A264443(n)])`
-/

namespace A183888.P18374279505435290246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (f1 (n + 1) - f1 n).toNat

end

end A183888.P18374279505435290246

/-! ## A183888.P6835649238143719011

`A183892(A046691(n+3))`
-/

namespace A183888.P6835649238143719011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (A046691 (n + 3)).toNat

end

end A183888.P6835649238143719011

/-! ## A183888.P1454501630130840255

`A183892(A060577(n+4))`
-/

namespace A183888.P1454501630130840255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (A060577 (n + 4)).toNat

end

end A183888.P1454501630130840255

/-! ## A183888.P15285519684858660333

`A183892(eq[2, A092921(n)])`
-/

namespace A183888.P15285519684858660333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183888.P15285519684858660333

/-! ## A183888.P5509916181469957516

`A183892(eq[3, A152157(n)])`
-/

namespace A183888.P5509916181469957516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183888.P5509916181469957516

/-!
# A183889: Number of arrangements of n+3 numbers in 0..6 with each number being the sum mod 7 of three others.

The programs for A183889, there is no canonical definition to state claims against.
-/

/-! ## A183889.P18285144940837551441

`A183892(A056119(n)+16)`
-/

namespace A183889.P18285144940837551441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (A056119 n + 16).toNat

end

end A183889.P18285144940837551441

/-! ## A183889.P13179876058325163549

`A183892(eq[3, A219347(n)])`
-/

namespace A183889.P13179876058325163549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183889.P13179876058325163549

/-! ## A183889.P15041000440138149334

`A183892(eq[5, A193592(n)])`
-/

namespace A183889.P15041000440138149334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183889.P15041000440138149334

/-! ## A183889.P15099994957511516422

`A183892(eq[8, A258709(n)])`
-/

namespace A183889.P15099994957511516422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183889.P15099994957511516422

/-! ## A183889.P11947272958077294496

`A183892(A055999(n+3)+1)`
-/

namespace A183889.P11947272958077294496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (A055999 (n + 3) + 1).toNat

end

end A183889.P11947272958077294496

/-!
# A183890: Number of arrangements of n+3 numbers in 0..7 with each number being the sum mod 8 of three others.

The programs for A183890, there is no canonical definition to state claims against.
-/

/-! ## A183890.P11798267855369988232

`A183892(A055999(n+4))`
-/

namespace A183890.P11798267855369988232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (A055999 (n + 4)).toNat

end

end A183890.P11798267855369988232

/-! ## A183890.P3233346308724330898

`A183892(eq[4, A219347(n)])`
-/

namespace A183890.P3233346308724330898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183890.P3233346308724330898

/-! ## A183890.P5658489402953738575

`A183892(eq[5, A332954(n)])`
-/

namespace A183890.P5658489402953738575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183890.P5658489402953738575

/-! ## A183890.P8921854337090513926

`A183892(eq[6, A193592(n)])`
-/

namespace A183890.P8921854337090513926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183890.P8921854337090513926

/-! ## A183890.P15169011464717597777

`A183892(A056000(n+3)+4)`
-/

namespace A183890.P15169011464717597777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (A056000 (n + 3) + 4).toNat

end

end A183890.P15169011464717597777

/-!
# A183891: Number of arrangements of n+3 numbers in 0..8 with each number being the sum mod 9 of three others.

The programs for A183891, there is no canonical definition to state claims against.
-/

/-! ## A183891.P18261973741667057091

`A183892(eq[5, A219347(n)])`
-/

namespace A183891.P18261973741667057091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183891.P18261973741667057091

/-! ## A183891.P8650959366084582657

`A183892(eq[7, A193592(n)])`
-/

namespace A183891.P8650959366084582657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183891.P8650959366084582657

/-! ## A183891.P9698543090713650744

`A183892(A155212(n+4)+1)`
-/

namespace A183891.P9698543090713650744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (A155212 (n + 4) + 1).toNat

end

end A183891.P9698543090713650744

/-! ## A183891.P15470400843842514046

`A183892(eq[12, A185782(n+1)])`
-/

namespace A183891.P15470400843842514046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183891.P15470400843842514046

/-! ## A183891.P12598463244276523736

`A183892(A000096(n+6)+n+2)`
-/

namespace A183891.P12598463244276523736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183892 (A000096 (n + 6) + (n + 2 : ℤ)).toNat

end

end A183891.P12598463244276523736

/-!
# A183892: T(n,k)=Number of arrangements of n+3 numbers in 0..k with each number being the sum mod (k+1) of three others.

The programs for A183892, there is no canonical definition to state claims against.
-/

/-! ## A183892.P4150026733158591377

`A261690(A261870(3*n+5)^A338559(n))`
-/

namespace A183892.P4150026733158591377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261690 (SequenceMachineLib.roundAway ((A261870 (3 * n + 5) : ℚ) ^ (A338559 n : ℤ))).toNat

end

end A183892.P4150026733158591377

/-!
# A183895: Real part of a (-4,-4) Gaussian integer Somos-4 sequence.

The programs for A183895, the canonical program `A183895.P1517539360164235791` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183895 has offset 0).

The definition of A183895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183895.P1517539360164235791

`(-1)^C(n+1, 2)*2^floor(n*(n+1)/4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183895

/-- `(-1)^C(n+1, 2)*2^floor(n*(n+1)/4)` -/
def P1517539360164235791.Spec : Prop :=
  ∀ n, P1517539360164235791.a n = (A183895 n : ℚ)

end A183895

/-! ## A183895.P859831394762141723

`(-1)^floor((n+1)/2)*2^floor(n*(n+1)/4)`
-/

namespace A183895.P859831394762141723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (2 : ℚ) ^ (⌊(n * (n + 1) : ℚ) / 4⌋ : ℤ)

end

end A183895.P859831394762141723

namespace A183895

/-- `(-1)^floor((n+1)/2)*2^floor(n*(n+1)/4)` -/
def P859831394762141723.Spec : Prop :=
  ∀ n, P859831394762141723.a n = (A183895 n : ℚ)

end A183895

/-! ## A183895.P9411736261523954011

`A078029(A281026(n))`
-/

namespace A183895.P9411736261523954011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 (A281026 n).toNat

end

end A183895.P9411736261523954011

namespace A183895

/-- `A078029(A281026(n))` -/
def P9411736261523954011.Spec : Prop :=
  ∀ n, P9411736261523954011.a n = A183895 n

end A183895

/-! ## A183895.P4362626884034224367

`A078029(A032766(∑[n]))`
-/

namespace A183895.P4362626884034224367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 (A032766 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A183895.P4362626884034224367

namespace A183895

/-- `A078029(A032766(∑[n]))` -/
def P4362626884034224367.Spec : Prop :=
  ∀ n, P4362626884034224367.a n = A183895 n

end A183895

/-! ## A183895.P6136054845149844242

`A016116(A000217(n))/A087960(n)`
-/

namespace A183895.P6136054845149844242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (A000217 n).toNat : ℚ) / (A087960 n : ℚ)

end

end A183895.P6136054845149844242

namespace A183895

/-- `A016116(A000217(n))/A087960(n)` -/
def P6136054845149844242.Spec : Prop :=
  ∀ n, P6136054845149844242.a n = (A183895 n : ℚ)

end A183895

/-!
# A183896: Imaginary part of a (-4,-4) Gaussian integer Somos-4 sequence.

The programs for A183896, the canonical program `A183896.P13659624591208000073` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183896 has offset 0).

The definition of A183896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183896.P13659624591208000073

`((-1)^floor((n+1)/2)-1)*2^floor((n²+n-4)/4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183896

/-- `((-1)^floor((n+1)/2)-1)*2^floor((n²+n-4)/4)` -/
def P13659624591208000073.Spec : Prop :=
  ∀ n, P13659624591208000073.a n = (A183896 n : ℚ)

end A183896

/-! ## A183896.P18431211363472959609

`-A106624(A124625(∑[n]))`
-/

namespace A183896.P18431211363472959609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A106624 (A124625 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A183896.P18431211363472959609

namespace A183896

/-- `-A106624(A124625(∑[n]))` -/
def P18431211363472959609.Spec : Prop :=
  ∀ n, P18431211363472959609.a n = A183896 n

end A183896

/-! ## A183896.P15925291976116366390

`A131575(2*n)-A131575(∑[n])`
-/

namespace A183896.P15925291976116366390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (2 * n) - A131575 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183896.P15925291976116366390

namespace A183896

/-- `A131575(2*n)-A131575(∑[n])` -/
def P15925291976116366390.Spec : Prop :=
  ∀ n, P15925291976116366390.a n = A183896 n

end A183896

/-! ## A183896.P978908248267706514

`A078029(A166517(∑[n]))`
-/

namespace A183896.P978908248267706514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 (A166517 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A183896.P978908248267706514

namespace A183896

/-- `A078029(A166517(∑[n]))` -/
def P978908248267706514.Spec : Prop :=
  ∀ n, P978908248267706514.a n = A183896 n

end A183896

/-! ## A183896.P16954091067200856697

`-A077957(xor(1, A000217(n)))`
-/

namespace A183896.P16954091067200856697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077957 (Int.xor 1 (A000217 n)).toNat

end

end A183896.P16954091067200856697

namespace A183896

/-- `-A077957(xor(1, A000217(n)))` -/
def P16954091067200856697.Spec : Prop :=
  ∀ n, P16954091067200856697.a n = A183896 n

end A183896

/-!
# A183897: Number of nondecreasing arrangements of n+3 numbers in 0..2 with each number being the sum mod 3 of three others.

The programs for A183897, the canonical program `A183897.P7655185238047632668` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183897 has offset 1).

The definition of A183897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183897.P7655185238047632668

`∑[a(n-1)+1]` with `a(0)=1, a(1)=6, a(2)=10, a(3)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183897

/-- `∑[a(n-1)+1]` -/
def P7655185238047632668.Spec : Prop :=
  ∀ n, (P7655185238047632668.a n : ℤ) = A183897 (n + 1)

theorem P7655185238047632668.correct : P7655185238047632668.Spec := by
  intro n
  simp only [A183897, Nat.add_sub_cancel]

end A183897

/-! ## A183897.P10894049010418565504

`a(n-1)+5+n` with `a(0)=1, a(1)=7, a(2)=17`
-/

namespace A183897.P10894049010418565504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 17] fun n a =>
  a (n - 1) + 5 + n

end

end A183897.P10894049010418565504

namespace A183897

/-- `a(n-1)+5+n` -/
def P10894049010418565504.Spec : Prop :=
  ∀ n, (P10894049010418565504.a n : ℤ) = A183897 (n + 1)

end A183897

/-! ## A183897.P6570630832509314552

`ogf((1+4x-x^2-6x^3+3x^4)/(1-3x+3x^2-x^3))`
-/

namespace A183897.P6570630832509314552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1, -6, 3] [1, -3, 3, -1] n

end

end A183897.P6570630832509314552

namespace A183897

/-- `ogf((1+4x-x^2-6x^3+3x^4)/(1-3x+3x^2-x^3))` -/
def P6570630832509314552.Spec : Prop :=
  ∀ n, P6570630832509314552.a n = A183897 (n + 1)

end A183897

/-! ## A183897.P16678755592827162039

`floor(∑[n+5]-sinh(2/or(1, n)))`
-/

namespace A183897.P16678755592827162039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.sinh (2 / (Nat.lor 1 n : ℚ) : ℝ)⌋

end

end A183897.P16678755592827162039

namespace A183897

/-- `floor(∑[n+5]-sinh(2/or(1, n)))` -/
def P16678755592827162039.Spec : Prop :=
  ∀ n, P16678755592827162039.a n = A183897 (n + 1)

end A183897

/-! ## A183897.P17649656833395854139

`∑[n+5]-(C(n, n²)+1)²`
-/

namespace A183897.P17649656833395854139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.choose n (n ^ 2) + 1) ^ 2 : ℤ)

end

end A183897.P17649656833395854139

namespace A183897

/-- `∑[n+5]-(C(n, n²)+1)²` -/
def P17649656833395854139.Spec : Prop :=
  ∀ n, P17649656833395854139.a n = A183897 (n + 1)

end A183897

/-! ## A183897.P8801940863027760901

`∑[n+5]-(2*(n+1))^C(2, n+1)`
-/

namespace A183897.P8801940863027760901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((2 * (n + 1)) ^ Nat.choose 2 (n + 1) : ℤ)

end

end A183897.P8801940863027760901

namespace A183897

/-- `∑[n+5]-(2*(n+1))^C(2, n+1)` -/
def P8801940863027760901.Spec : Prop :=
  ∀ n, P8801940863027760901.a n = A183897 (n + 1)

end A183897

/-! ## A183897.P17639163027367974555

`A056115(n)+A040005(A060632(n))`
-/

namespace A183897.P17639163027367974555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + A040005 (A060632 n).toNat

end

end A183897.P17639163027367974555

namespace A183897

/-- `A056115(n)+A040005(A060632(n))` -/
def P17639163027367974555.Spec : Prop :=
  ∀ n, P17639163027367974555.a n = A183897 (n + 1)

end A183897

/-! ## A183897.P5397940685012650228

`A056115(n)+A010156(A113127(n))`
-/

namespace A183897.P5397940685012650228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + A010156 (A113127 n).toNat

end

end A183897.P5397940685012650228

namespace A183897

/-- `A056115(n)+A010156(A113127(n))` -/
def P5397940685012650228.Spec : Prop :=
  ∀ n, P5397940685012650228.a n = A183897 (n + 1)

end A183897

/-! ## A183897.P10450448707282017746

`A004274(A267873(n+1))+A001971(A267873(n+1))`
-/

namespace A183897.P10450448707282017746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A267873 (n + 1)).toNat + A001971 (A267873 (n + 1)).toNat

end

end A183897.P10450448707282017746

namespace A183897

/-- `A004274(A267873(n+1))+A001971(A267873(n+1))` -/
def P10450448707282017746.Spec : Prop :=
  ∀ n, P10450448707282017746.a n = A183897 (n + 1)

end A183897

/-! ## A183897.P16028327421402330354

`A056115(n)+A010685(A019428(n))`
-/

namespace A183897.P16028327421402330354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + A010685 (A019428 n).toNat

end

end A183897.P16028327421402330354

namespace A183897

/-- `A056115(n)+A010685(A019428(n))` -/
def P16028327421402330354.Spec : Prop :=
  ∀ n, P16028327421402330354.a n = A183897 (n + 1)

end A183897

/-! ## A183897.P13045824869336537031

`A056115(n)+dr(A098525(n))`
-/

namespace A183897.P13045824869336537031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + (SequenceMachineLib.digitalRoot (A098525 n) : ℤ)

end

end A183897.P13045824869336537031

namespace A183897

/-- `A056115(n)+dr(A098525(n))` -/
def P13045824869336537031.Spec : Prop :=
  ∀ n, P13045824869336537031.a n = A183897 (n + 1)

end A183897

/-! ## A183897.P14869664889778440348

`A056115(n)+A004736(A027379(n))`
-/

namespace A183897.P14869664889778440348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + A004736 (A027379 n).toNat

end

end A183897.P14869664889778440348

namespace A183897

/-- `A056115(n)+A004736(A027379(n))` -/
def P14869664889778440348.Spec : Prop :=
  ∀ n, P14869664889778440348.a n = A183897 (n + 1)

end A183897

/-!
# A183898: Number of nondecreasing arrangements of n+3 numbers in 0..3 with each number being the sum mod 4 of three others.

The programs for A183898, the canonical program `A183898.P246306556313844478` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183898 has offset 1).

The definition of A183898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183898.P10154554393597996849

`ogf((5-6x+12x^2-18x^3+8x^4)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A183898.P10154554393597996849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6, 12, -18, 8] [1, -4, 6, -4, 1] n

end

end A183898.P10154554393597996849

namespace A183898

/-- `ogf((5-6x+12x^2-18x^3+8x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P10154554393597996849.Spec : Prop :=
  ∀ n, P10154554393597996849.a n = A183898 (n + 1)

end A183898

/-! ## A183898.P3484789112425174059

`a(n-1)+∑[n+5]+6` with `a(0)=5, a(1)=14`
-/

namespace A183898.P3484789112425174059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 14] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183898.P3484789112425174059

namespace A183898

/-- `a(n-1)+∑[n+5]+6` -/
def P3484789112425174059.Spec : Prop :=
  ∀ n, (P3484789112425174059.a n : ℤ) = A183898 (n + 1)

end A183898

/-! ## A183898.P246306556313844478

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=5, a(1)=14, a(2)=38, a(3)=70, a(4)=111`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183898

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P246306556313844478.Spec : Prop :=
  ∀ n, P246306556313844478.a n = A183898 (n + 1)

theorem P246306556313844478.correct : P246306556313844478.Spec := by
  intro n
  simp only [A183898, Nat.add_sub_cancel]

end A183898

/-! ## A183898.P15725113608874987428

`Δ[A023545(n+1)]+a(n-1)` with `a(0)=5, a(1)=14`
-/

namespace A183898.P15725113608874987428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 14] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A183898.P15725113608874987428

namespace A183898

/-- `Δ[A023545(n+1)]+a(n-1)` -/
def P15725113608874987428.Spec : Prop :=
  ∀ n, P15725113608874987428.a n = A183898 (n + 1)

end A183898

/-! ## A183898.P4537600831643064687

`Δ[A006504(n+1)]+n-(A040056(n)+2)`
-/

namespace A183898.P4537600831643064687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n : ℤ) - (A040056 n + 2))

end

end A183898.P4537600831643064687

namespace A183898

/-- `Δ[A006504(n+1)]+n-(A040056(n)+2)` -/
def P4537600831643064687.Spec : Prop :=
  ∀ n, P4537600831643064687.a n = A183898 (n + 1)

end A183898

/-! ## A183898.P8874714460307165514

`A046691(n+3)+a(n-1)` with `a(0)=5, a(1)=14`
-/

namespace A183898.P8874714460307165514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 14] fun n a =>
  A046691 (n + 3) + a (n - 1)

end

end A183898.P8874714460307165514

namespace A183898

/-- `A046691(n+3)+a(n-1)` -/
def P8874714460307165514.Spec : Prop :=
  ∀ n, P8874714460307165514.a n = A183898 (n + 1)

end A183898

/-! ## A183898.P4749900125185498189

`ceil(a(n-1)+A000124(n+5)-5)` with `a(0)=5, a(1)=14`

`ceil` is left out, it is the identity on integers.
-/

namespace A183898.P4749900125185498189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 14] fun n a =>
  a (n - 1) + (A000124 (n + 5) - 5)

end

end A183898.P4749900125185498189

namespace A183898

/-- `ceil(a(n-1)+A000124(n+5)-5)` -/
def P4749900125185498189.Spec : Prop :=
  ∀ n, P4749900125185498189.a n = A183898 (n + 1)

end A183898

/-! ## A183898.P10471955154406802483

`a(n-1)-A270417(A137827(n+1))+A056115(n)+11` with `a(0)=5, a(1)=14`
-/

namespace A183898.P10471955154406802483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 14] fun n a =>
  a (n - 1) - A270417 (A137827 (n + 1)).toNat + (A056115 n + 11)

end

end A183898.P10471955154406802483

namespace A183898

/-- `a(n-1)-A270417(A137827(n+1))+A056115(n)+11` -/
def P10471955154406802483.Spec : Prop :=
  ∀ n, P10471955154406802483.a n = A183898 (n + 1)

end A183898

/-! ## A183898.P2754812300928627637

`(a(n-1)+A056115(n)+11)%A099484(2*n+1)` with `a(0)=5, a(1)=14`
-/

namespace A183898.P2754812300928627637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 14] fun n a =>
  Int.tmod (a (n - 1) + (A056115 n + 11)) (A099484 (2 * n + 1))

end

end A183898.P2754812300928627637

namespace A183898

/-- `(a(n-1)+A056115(n)+11)%A099484(2*n+1)` -/
def P2754812300928627637.Spec : Prop :=
  ∀ n, P2754812300928627637.a n = A183898 (n + 1)

end A183898

/-!
# A183899: Number of nondecreasing arrangements of n+3 numbers in 0..4 with each number being the sum mod 5 of three others.

The programs for A183899, there is no canonical definition to state claims against.
-/

/-! ## A183899.P3066413577872833295

`A183904(∑[n+4]+3)`
-/

namespace A183899.P3066413577872833295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183899.P3066413577872833295

/-! ## A183899.P12480379123827428832

`A183904(A055998(n+2))+char[16]`
-/

namespace A183899.P12480379123827428832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183899.P12480379123827428832

/-! ## A183899.P2203030374290111214

`A007318(C(n, 2))*A183904(A055998(n+2))`
-/

namespace A183899.P2203030374290111214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A183904 (A055998 (n + 2)).toNat

end

end A183899.P2203030374290111214

/-! ## A183899.P13232249973115358515

`A183904(A055998(n+2))/A007318(C(2, n))`
-/

namespace A183899.P13232249973115358515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183904 (A055998 (n + 2)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A183899.P13232249973115358515

