import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A120900: G.f. satisfies: A(x) = C(x)*A(x^3*C(x)^4), where C(x) is the g.f. of the Catalan numbers (A000108).

The programs for A120900, there is no canonical definition to state claims against.
-/

/-! ## A120900.P12422222337399860292

`A081753(A287804(n)+A040028(n+1))`
-/

namespace A120900.P12422222337399860292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A287804 n + A040028 (n + 1)).toNat

end

end A120900.P12422222337399860292

/-! ## A120900.P141485220964971571

`A261585(A066186(n)+A052947(3*n+2))`
-/

namespace A120900.P141485220964971571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A066186 n + A052947 (3 * n + 2)).toNat

end

end A120900.P141485220964971571

/-! ## A120900.P6043886298546961394

`∑[ceil(sqrt(A323587(n²)))]-n`
-/

namespace A120900.P6043886298546961394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A323587 (n ^ 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A120900.P6043886298546961394

/-!
# A120901: Central terms of triangle A120898 (cascadence of 1+2x+x^2).

The programs for A120901, there is no canonical definition to state claims against.
-/

/-! ## A120901.P2784215998790474584

`A120898(∑[2*n])`
-/

namespace A120901.P2784215998790474584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120898 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120901.P2784215998790474584

/-! ## A120901.P13320096000347191910

`A120898(A002378(n))+char[23]`
-/

namespace A120901.P13320096000347191910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120898 (A002378 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120901.P13320096000347191910

/-! ## A120901.P9640485149461661680

`A120898(n²+n)%A052300(n+5)`
-/

namespace A120901.P9640485149461661680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120898 (n ^ 2 + n)) (A052300 (n + 5))

end

end A120901.P9640485149461661680

/-! ## A120901.P15184937037087219776

`floor(record[A120898(2*(n+1))/A124574(n+1)])`
-/

namespace A120901.P15184937037087219776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120898 (2 * (n + 1)) : ℚ) / (A124574 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A120901.P15184937037087219776

/-! ## A120901.P10740463329124729029

`A057427(n+2)*A120898(abs(n*xor(n, -1)))`
-/

namespace A120901.P10740463329124729029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A120898 |(n : ℤ) * Int.xor (n : ℤ) (-1)|.toNat

end

end A120901.P10740463329124729029

/-!
# A120902: Row sums of triangle A120898 (cascadence of 1+2x+x^2).

The programs for A120902, there is no canonical definition to state claims against.
-/

/-! ## A120902.P15863788822757425744

`A103627(A291386(n)+A125145(n))`
-/

namespace A120902.P15863788822757425744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A291386 n + A125145 n).toNat

end

end A120902.P15863788822757425744

/-! ## A120902.P14456649065748888126

`A302255(A284850(n+1)+A284835(n+1))`
-/

namespace A120902.P14456649065748888126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302255 (A284850 (n + 1) + A284835 (n + 1)).toNat

end

end A120902.P14456649065748888126

/-!
# A120904: Odd winning positions in Fibonacci nim.

The programs for A120904, there is no canonical definition to state claims against.
-/

/-! ## A120904.P12040663486545703491

`filter[A001581(n+1), A000035(#)]`
-/

namespace A120904.P12040663486545703491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A120904.P12040663486545703491

/-!
# A120905: Real part of (1 + 2i)^(2^n) where i is sqrt(-1).

The programs for A120905, the canonical program `A120905.P535700430110413336` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120905 has offset 0).

The definition of A120905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120905.P535700430110413336

`A006495(2^n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120905

/-- `A006495(2^n)` -/
def P535700430110413336.Spec : Prop :=
  ∀ n, P535700430110413336.a n = A120905 n

theorem P535700430110413336.correct : P535700430110413336.Spec := by
  intro n
  simp only [A120905]

end A120905

/-! ## A120905.P16598895824747367226

`or(1, A006495(A000079(n)))`
-/

namespace A120905.P16598895824747367226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006495 (A000079 n).toNat)

end

end A120905.P16598895824747367226

namespace A120905

/-- `or(1, A006495(A000079(n)))` -/
def P16598895824747367226.Spec : Prop :=
  ∀ n, P16598895824747367226.a n = A120905 n

end A120905

/-! ## A120905.P335519444185741592

`A282230(n+1)+A006495(A000079(n))`
-/

namespace A120905.P335519444185741592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (n + 1) + A006495 (A000079 n).toNat

end

end A120905.P335519444185741592

namespace A120905

/-- `A282230(n+1)+A006495(A000079(n))` -/
def P335519444185741592.Spec : Prop :=
  ∀ n, P335519444185741592.a n = A120905 n

end A120905

/-! ## A120905.P4600561040585722816

`A006495(A000079(n))%A248253(n)`
-/

namespace A120905.P4600561040585722816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006495 (A000079 n).toNat) (A248253 n)

end

end A120905.P4600561040585722816

namespace A120905

/-- `A006495(A000079(n))%A248253(n)` -/
def P4600561040585722816.Spec : Prop :=
  ∀ n, P4600561040585722816.a n = A120905 n

end A120905

/-!
# A120908: Sum of the lengths of the drops in all ternary words of length n on {0,1,2}. The drops of a ternary word on {0,1,2} are the subwords 10,20 and 21, their lengths being the differences 1, 2 and 1, respectively.

The programs for A120908, the canonical program `A120908.P11303692684458671005` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120908 has offset 1).

The definition of A120908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120908.P11303692684458671005

`4*n*3^(n-1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120908

/-- `4*n*3^(n-1)` -/
def P11303692684458671005.Spec : Prop :=
  ∀ n, P11303692684458671005.a n = (A120908 (n + 1) : ℚ)

end A120908

/-! ## A120908.P2289393607196747059

`ogf(4x/(1-6x+9x^2))`
-/

namespace A120908.P2289393607196747059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -6, 9] n

end

end A120908.P2289393607196747059

namespace A120908

/-- `ogf(4x/(1-6x+9x^2))` -/
def P2289393607196747059.Spec : Prop :=
  ∀ n, P2289393607196747059.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P7375185241175076621

`∑[A167682(n)]-1`
-/

namespace A120908.P7375185241175076621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A120908.P7375185241175076621

namespace A120908

/-- `∑[A167682(n)]-1` -/
def P7375185241175076621.Spec : Prop :=
  ∀ n, P7375185241175076621.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P143660030699902493

`lcm(2, n*A003946(n))`
-/

namespace A120908.P143660030699902493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A003946 n)

end

end A120908.P143660030699902493

namespace A120908

/-- `lcm(2, n*A003946(n))` -/
def P143660030699902493.Spec : Prop :=
  ∀ n, (P143660030699902493.a n : ℤ) = A120908 (n + 1)

end A120908

/-! ## A120908.P10480344660090859229

`∑[floor(A113071(n)/2)]`
-/

namespace A120908.P10480344660090859229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113071 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120908.P10480344660090859229

namespace A120908

/-- `∑[floor(A113071(n)/2)]` -/
def P10480344660090859229.Spec : Prop :=
  ∀ n, P10480344660090859229.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P15227724228715942954

`floor(4/3*A036290(n))`
-/

namespace A120908.P15227724228715942954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (A036290 n : ℚ)⌋

end

end A120908.P15227724228715942954

namespace A120908

/-- `floor(4/3*A036290(n))` -/
def P15227724228715942954.Spec : Prop :=
  ∀ n, P15227724228715942954.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P1273613636744204534

`lcm(4*n, A027471(n+1))`
-/

namespace A120908.P1273613636744204534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 * n : ℤ) (A027471 (n + 1))

end

end A120908.P1273613636744204534

namespace A120908

/-- `lcm(4*n, A027471(n+1))` -/
def P1273613636744204534.Spec : Prop :=
  ∀ n, (P1273613636744204534.a n : ℤ) = A120908 (n + 1)

end A120908

/-! ## A120908.P9892794760049393193

`abs(n*Δ[A141413(n+1)])`
-/

namespace A120908.P9892794760049393193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A120908.P9892794760049393193

namespace A120908

/-- `abs(n*Δ[A141413(n+1)])` -/
def P9892794760049393193.Spec : Prop :=
  ∀ n, P9892794760049393193.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P5043713170388049140

`record[floor(n/2)*A074324(n)]`
-/

namespace A120908.P5043713170388049140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * A074324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120908.P5043713170388049140

namespace A120908

/-- `record[floor(n/2)*A074324(n)]` -/
def P5043713170388049140.Spec : Prop :=
  ∀ n, P5043713170388049140.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P5734791525325069378

`ceil(4*n/2*A025192(n))`
-/

namespace A120908.P5734791525325069378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * ((n : ℚ) / 2 * (A025192 n : ℚ))⌉

end

end A120908.P5734791525325069378

namespace A120908

/-- `ceil(4*n/2*A025192(n))` -/
def P5734791525325069378.Spec : Prop :=
  ∀ n, P5734791525325069378.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P8075061036295625155

`round(3^n/3*A008574(n))`
-/

namespace A120908.P8075061036295625155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ n : ℚ) / 3 * (A008574 n : ℚ))

end

end A120908.P8075061036295625155

namespace A120908

/-- `round(3^n/3*A008574(n))` -/
def P8075061036295625155.Spec : Prop :=
  ∀ n, P8075061036295625155.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P17779719652518447497

`record[n%2*A203230(n+1)]`
-/

namespace A120908.P17779719652518447497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A203230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120908.P17779719652518447497

namespace A120908

/-- `record[n%2*A203230(n+1)]` -/
def P17779719652518447497.Spec : Prop :=
  ∀ n, P17779719652518447497.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P10093702314840505528

`ceil(4*n*Δ[A094388(n)]/2)`
-/

namespace A120908.P10093702314840505528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2)⌉

end

end A120908.P10093702314840505528

namespace A120908

/-- `ceil(4*n*Δ[A094388(n)]/2)` -/
def P10093702314840505528.Spec : Prop :=
  ∀ n, P10093702314840505528.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P1542053005891069727

`A124647(n)-A081038(n)`
-/

namespace A120908.P1542053005891069727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 n - A081038 n

end

end A120908.P1542053005891069727

namespace A120908

/-- `A124647(n)-A081038(n)` -/
def P1542053005891069727.Spec : Prop :=
  ∀ n, P1542053005891069727.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P14061259559011118818

`A392084(n)-A176177(n)`
-/

namespace A120908.P14061259559011118818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392084 n - A176177 n

end

end A120908.P14061259559011118818

namespace A120908

/-- `A392084(n)-A176177(n)` -/
def P14061259559011118818.Spec : Prop :=
  ∀ n, P14061259559011118818.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P16840127061002821294

`A036290(n)+A027471(n+1)`
-/

namespace A120908.P16840127061002821294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n + A027471 (n + 1)

end

end A120908.P16840127061002821294

namespace A120908

/-- `A036290(n)+A027471(n+1)` -/
def P16840127061002821294.Spec : Prop :=
  ∀ n, P16840127061002821294.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P13517976242873094471

`A113071(n)-A120926(n+1)`
-/

namespace A120908.P13517976242873094471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 n - A120926 (n + 1)

end

end A120908.P13517976242873094471

namespace A120908

/-- `A113071(n)-A120926(n+1)` -/
def P13517976242873094471.Spec : Prop :=
  ∀ n, P13517976242873094471.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P9761264039787974042

`abs((A005843(n)-n)*A003946(n))`
-/

namespace A120908.P9761264039787974042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A005843 n - (n : ℤ)) * A003946 n|

end

end A120908.P9761264039787974042

namespace A120908

/-- `abs((A005843(n)-n)*A003946(n))` -/
def P9761264039787974042.Spec : Prop :=
  ∀ n, P9761264039787974042.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P7797577544012916799

`A203230(2*n+1)-A000244(n)`
-/

namespace A120908.P7797577544012916799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203230 (2 * n + 1) - A000244 n

end

end A120908.P7797577544012916799

namespace A120908

/-- `A203230(2*n+1)-A000244(n)` -/
def P7797577544012916799.Spec : Prop :=
  ∀ n, P7797577544012916799.a n = A120908 (n + 1)

end A120908

/-! ## A120908.P4958058840487051143

`Δ[2*(A027471(n+1)-A003462(n))]`
-/

namespace A120908.P4958058840487051143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027471 (n + 1) - A003462 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120908.P4958058840487051143

namespace A120908

/-- `Δ[2*(A027471(n+1)-A003462(n))]` -/
def P4958058840487051143.Spec : Prop :=
  ∀ n, P4958058840487051143.a n = A120908 (n + 1)

end A120908

/-!
# A120909: Triangle read by rows: T(n,k) is the number of ternary words of length n having k runs (i.e., subwords of maximal length) of identical letters (1 <= k <= n).

The programs for A120909, the canonical program `A120909.P4196849936456534046` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120909 has offset 1).

The definition of A120909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120909.P12207001801415860516

`3*2^col(n)*C(row(n), col(n))`
-/

namespace A120909.P12207001801415860516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 2 ^ SequenceMachineLib.triCol n * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A120909.P12207001801415860516

namespace A120909

/-- `3*2^col(n)*C(row(n), col(n))` -/
def P12207001801415860516.Spec : Prop :=
  ∀ n, (P12207001801415860516.a n : ℤ) = A120909 (n + 1)

end A120909

/-! ## A120909.P4196849936456534046

`3*A013609(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120909

/-- `3*A013609(n)` -/
def P4196849936456534046.Spec : Prop :=
  ∀ n, P4196849936456534046.a n = A120909 (n + 1)

theorem P4196849936456534046.correct : P4196849936456534046.Spec := by
  intro n
  simp only [A120909, Nat.add_sub_cancel]

end A120909

/-! ## A120909.P8164643067709594154

`T(n-1,k)+2*T(n-1,k-1)` with `a(0)=3`
-/

namespace A120909.P8164643067709594154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUpLeft a n

end

end A120909.P8164643067709594154

namespace A120909

/-- `T(n-1,k)+2*T(n-1,k-1)` -/
def P8164643067709594154.Spec : Prop :=
  ∀ n, (P8164643067709594154.a n : ℤ) = A120909 (n + 1)

end A120909

/-! ## A120909.P15132573095870400728

`3*T(n-1,k)-2*(T(n-1,k)-T(n-1,k-1))` with `a(0)=3`
-/

namespace A120909.P15132573095870400728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * SequenceMachineLib.triUp a n - 2 * (SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n)

end

end A120909.P15132573095870400728

namespace A120909

/-- `3*T(n-1,k)-2*(T(n-1,k)-T(n-1,k-1))` -/
def P15132573095870400728.Spec : Prop :=
  ∀ n, P15132573095870400728.a n = A120909 (n + 1)

end A120909

/-! ## A120909.P11850477717602032395

`abs(3*A303872(n))`
-/

namespace A120909.P11850477717602032395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A303872 n|

end

end A120909.P11850477717602032395

namespace A120909

/-- `abs(3*A303872(n))` -/
def P11850477717602032395.Spec : Prop :=
  ∀ n, P11850477717602032395.a n = A120909 (n + 1)

end A120909

/-! ## A120909.P3900974690505181781

`3*ceil(A210196(n+1)/2)`
-/

namespace A120909.P3900974690505181781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(A210196 (n + 1) : ℚ) / 2⌉

end

end A120909.P3900974690505181781

namespace A120909

/-- `3*ceil(A210196(n+1)/2)` -/
def P3900974690505181781.Spec : Prop :=
  ∀ n, P3900974690505181781.a n = A120909 (n + 1)

end A120909

/-! ## A120909.P7000093631469459378

`3*A007318(n)*A059268(n)`
-/

namespace A120909.P7000093631469459378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A007318 n * A059268 n)

end

end A120909.P7000093631469459378

namespace A120909

/-- `3*A007318(n)*A059268(n)` -/
def P7000093631469459378.Spec : Prop :=
  ∀ n, P7000093631469459378.a n = A120909 (n + 1)

end A120909

/-! ## A120909.P18367031384957334832

`3*lcm(A007318(n), A303872(n))`
-/

namespace A120909.P18367031384957334832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.lcm (A007318 n) (A303872 n)

end

end A120909.P18367031384957334832

namespace A120909

/-- `3*lcm(A007318(n), A303872(n))` -/
def P18367031384957334832.Spec : Prop :=
  ∀ n, (P18367031384957334832.a n : ℤ) = A120909 (n + 1)

end A120909

/-! ## A120909.P6199044258803320536

`A276985(n+1)+A013609(n)-A182059(n+1)`
-/

namespace A120909.P6199044258803320536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276985 (n + 1) + (A013609 n - A182059 (n + 1))

end

end A120909.P6199044258803320536

namespace A120909

/-- `A276985(n+1)+A013609(n)-A182059(n+1)` -/
def P6199044258803320536.Spec : Prop :=
  ∀ n, P6199044258803320536.a n = A120909 (n + 1)

end A120909

/-! ## A120909.P6773716778567907790

`3*A038207(∑[2*n]%comp[∑[n]])`
-/

namespace A120909.P6773716778567907790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038207 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A120909.P6773716778567907790

namespace A120909

/-- `3*A038207(∑[2*n]%comp[∑[n]])` -/
def P6773716778567907790.Spec : Prop :=
  ∀ n, P6773716778567907790.a n = A120909 (n + 1)

end A120909

/-! ## A120909.P2259984145965769766

`A120910(A038722(n+1))`
-/

namespace A120909.P2259984145965769766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120910 (A038722 (n + 1)).toNat

end

end A120909.P2259984145965769766

namespace A120909

/-- `A120910(A038722(n+1))` -/
def P2259984145965769766.Spec : Prop :=
  ∀ n, P2259984145965769766.a n = A120909 (n + 1)

end A120909

/-! ## A120909.P2420988981619646344

`A120910(A061579(n)+1)`
-/

namespace A120909.P2420988981619646344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120910 (A061579 n + 1).toNat

end

end A120909.P2420988981619646344

namespace A120909

/-- `A120910(A061579(n)+1)` -/
def P2420988981619646344.Spec : Prop :=
  ∀ n, P2420988981619646344.a n = A120909 (n + 1)

end A120909

/-! ## A120909.P491551633842788635

`3/A007318(n)*A133214(n)`
-/

namespace A120909.P491551633842788635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A007318 n : ℚ) * (A133214 n : ℚ)

end

end A120909.P491551633842788635

namespace A120909

/-- `3/A007318(n)*A133214(n)` -/
def P491551633842788635.Spec : Prop :=
  ∀ n, P491551633842788635.a n = (A120909 (n + 1) : ℚ)

end A120909

/-! ## A120909.P6631796448738122904

`3*A038222(n)/A175840(n)`
-/

namespace A120909.P6631796448738122904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A038222 n : ℚ) / (A175840 n : ℚ))

end

end A120909.P6631796448738122904

namespace A120909

/-- `3*A038222(n)/A175840(n)` -/
def P6631796448738122904.Spec : Prop :=
  ∀ n, P6631796448738122904.a n = (A120909 (n + 1) : ℚ)

end A120909

/-! ## A120909.P15303459616937724220

`3*A000010(2^A002260(n+1))*A007318(n)`
-/

namespace A120909.P15303459616937724220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat * A007318 n

end

end A120909.P15303459616937724220

namespace A120909

/-- `3*A000010(2^A002260(n+1))*A007318(n)` -/
def P15303459616937724220.Spec : Prop :=
  ∀ n, P15303459616937724220.a n = A120909 (n + 1)

end A120909

/-!
# A120910: Triangle read by rows: T(n,k) is the number of ternary words of length n having k levels (n >= 1, 0 <= k <= n-1). A level is a pair of identical consecutive letters.

The programs for A120910, the canonical program `A120910.P7512489130627834766` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120910 has offset 1).

The definition of A120910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120910.P16802917809033563961

`T(n-1,k-1)+2*T(n-1,k)` with `a(0)=3`
-/

namespace A120910.P16802917809033563961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp a n

end

end A120910.P16802917809033563961

namespace A120910

/-- `T(n-1,k-1)+2*T(n-1,k)` -/
def P16802917809033563961.Spec : Prop :=
  ∀ n, (P16802917809033563961.a n : ℤ) = A120910 (n + 1)

end A120910

/-! ## A120910.P769964420198374890

`T(n-1,k)+T(n-1,k-1)+T(n-1,k)` with `a(0)=3`
-/

namespace A120910.P769964420198374890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A120910.P769964420198374890

namespace A120910

/-- `T(n-1,k)+T(n-1,k-1)+T(n-1,k)` -/
def P769964420198374890.Spec : Prop :=
  ∀ n, (P769964420198374890.a n : ℤ) = A120910 (n + 1)

end A120910

/-! ## A120910.P17866337275453157503

`T(n-1,k-1)-2*(T(n-1,k)-2*T(n-1,k))` with `a(0)=3`
-/

namespace A120910.P17866337275453157503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * (SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triUp a n)

end

end A120910.P17866337275453157503

namespace A120910

/-- `T(n-1,k-1)-2*(T(n-1,k)-2*T(n-1,k))` -/
def P17866337275453157503.Spec : Prop :=
  ∀ n, P17866337275453157503.a n = A120910 (n + 1)

end A120910

/-! ## A120910.P7512489130627834766

`3*A038207(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120910

/-- `3*A038207(n)` -/
def P7512489130627834766.Spec : Prop :=
  ∀ n, P7512489130627834766.a n = A120910 (n + 1)

theorem P7512489130627834766.correct : P7512489130627834766.Spec := by
  intro n
  simp only [A120910, Nat.add_sub_cancel]

end A120910

/-! ## A120910.P8758834858811288589

`abs(3*A065109(n))`
-/

namespace A120910.P8758834858811288589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A065109 n|

end

end A120910.P8758834858811288589

namespace A120910

/-- `abs(3*A065109(n))` -/
def P8758834858811288589.Spec : Prop :=
  ∀ n, P8758834858811288589.a n = A120910 (n + 1)

end A120910

/-! ## A120910.P2133847507130255482

`3*ceil(A210204(n+1)/2)`
-/

namespace A120910.P2133847507130255482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(A210204 (n + 1) : ℚ) / 2⌉

end

end A120910.P2133847507130255482

namespace A120910

/-- `3*ceil(A210204(n+1)/2)` -/
def P2133847507130255482.Spec : Prop :=
  ∀ n, P2133847507130255482.a n = A120910 (n + 1)

end A120910

/-! ## A120910.P1439606485642351276

`(A131060(n)+2)*A130321(n)`
-/

namespace A120910.P1439606485642351276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131060 n + 2) * A130321 n

end

end A120910.P1439606485642351276

namespace A120910

/-- `(A131060(n)+2)*A130321(n)` -/
def P1439606485642351276.Spec : Prop :=
  ∀ n, P1439606485642351276.a n = A120910 (n + 1)

end A120910

/-! ## A120910.P10203037466829158142

`3*A007318(n)*A130321(n)`
-/

namespace A120910.P10203037466829158142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A007318 n * A130321 n)

end

end A120910.P10203037466829158142

namespace A120910

/-- `3*A007318(n)*A130321(n)` -/
def P10203037466829158142.Spec : Prop :=
  ∀ n, P10203037466829158142.a n = A120910 (n + 1)

end A120910

/-! ## A120910.P6028281306870320697

`A038207(n)+A193845(n)+A112857(n)`
-/

namespace A120910.P6028281306870320697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + (A193845 n + A112857 n)

end

end A120910.P6028281306870320697

namespace A120910

/-- `A038207(n)+A193845(n)+A112857(n)` -/
def P6028281306870320697.Spec : Prop :=
  ∀ n, P6028281306870320697.a n = A120910 (n + 1)

end A120910

/-! ## A120910.P3568697140108133141

`A120909(∑[char[∑[n]]]²-n)`
-/

namespace A120910.P3568697140108133141
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120909 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A120910.P3568697140108133141

namespace A120910

/-- `A120909(∑[char[∑[n]]]²-n)` -/
def P3568697140108133141.Spec : Prop :=
  ∀ n, P3568697140108133141.a n = A120910 (n + 1)

end A120910

/-! ## A120910.P668248413786705039

`3*A013609(∑[2*n]%comp[∑[n]])`
-/

namespace A120910.P668248413786705039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A013609 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A120910.P668248413786705039

namespace A120910

/-- `3*A013609(∑[2*n]%comp[∑[n]])` -/
def P668248413786705039.Spec : Prop :=
  ∀ n, P668248413786705039.a n = A120910 (n + 1)

end A120910

/-! ## A120910.P2928440528522037121

`3*A013609(A061579(n))`
-/

namespace A120910.P2928440528522037121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A013609 (A061579 n).toNat

end

end A120910.P2928440528522037121

namespace A120910

/-- `3*A013609(A061579(n))` -/
def P2928440528522037121.Spec : Prop :=
  ∀ n, P2928440528522037121.a n = A120910 (n + 1)

end A120910

/-! ## A120910.P13104184034522772162

`4*A013609(A038722(n+2))-A013609(A038722(n+2))`
-/

namespace A120910.P13104184034522772162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A013609 (A038722 (n + 2)).toNat - A013609 (A038722 (n + 2)).toNat

end

end A120910.P13104184034522772162

namespace A120910

/-- `4*A013609(A038722(n+2))-A013609(A038722(n+2))` -/
def P13104184034522772162.Spec : Prop :=
  ∀ n, P13104184034522772162.a n = A120910 (n + 1)

end A120910

/-! ## A120910.P9875456352488987669

`3*A183190(comp[∑[n-1]])`
-/

namespace A120910.P9875456352488987669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A183190 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A120910.P9875456352488987669

namespace A120910

/-- `3*A183190(comp[∑[n-1]])` -/
def P9875456352488987669.Spec : Prop :=
  ∀ n, P9875456352488987669.a n = A120910 (n + 1)

end A120910

/-!
# A120911: Triangle read by rows where t(n,m) is the (floor(n/m))th integer from among those positive integers not occurring earlier in the sequence.

The programs for A120911, there is no canonical definition to state claims against.
-/

/-! ## A120911.P17982298270045472370

`A120913(comp[∑[n]])-(comp[∑[n]]-n)`
-/

namespace A120911.P17982298270045472370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120913 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))

end

end A120911.P17982298270045472370

/-! ## A120911.P17050461854528759753

`xor(A064789(n+1), A269723(A173043(n)))`
-/

namespace A120911.P17050461854528759753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064789 (n + 1)) (A269723 (A173043 n).toNat)

end

end A120911.P17050461854528759753

/-! ## A120911.P6208630765856200912

`A163533(A238026(n+1))+A064789(n+1)`
-/

namespace A120911.P6208630765856200912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (A238026 (n + 1)).toNat + A064789 (n + 1)

end

end A120911.P6208630765856200912

/-! ## A120911.P16608436607276769445

`Δ[A000124(n)-and(A008683(A211997(n+1)), A297323(n))]`
-/

namespace A120911.P16608436607276769445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - Int.land (A008683 (A211997 (n + 1)).toNat) (A297323 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120911.P16608436607276769445

/-!
# A120912: Inverse permutation to triangle A120911 read by rows.

The programs for A120912, there is no canonical definition to state claims against.
-/

/-! ## A120912.P15091552533211780433

`A120911(n+2)-Δ[∑[char[∑[n]]]²-n]`
-/

namespace A120912.P15091552533211780433
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120911 (n + 2) - (f1 (n + 1) - f1 n)

end

end A120912.P15091552533211780433

/-! ## A120912.P6662588248830522843

`Δ[∑[A120911(n+1)]-A061579(n)]`
-/

namespace A120912.P6662588248830522843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120911 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120912.P6662588248830522843

/-! ## A120912.P15891172833411450462

`A120911(n+2)-A198954(n+1)+1`
-/

namespace A120912.P15891172833411450462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120911 (n + 2) - A198954 (n + 1) + 1

end

end A120912.P15891172833411450462

/-! ## A120912.P11210974990642389091

`Δ[∑[A120911(n+1)]-A038722(n+1)]`
-/

namespace A120912.P11210974990642389091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120911 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120912.P11210974990642389091

/-! ## A120912.P16656901915970866616

`A057028(n+1)-Δ[A028242(A299905(n)!)]`
-/

namespace A120912.P16656901915970866616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Nat.factorial (A299905 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1) - (f1 (n + 1) - f1 n)

end

end A120912.P16656901915970866616

/-!
# A120913: Triangle read by rows where t(n,m) is the (ceiling(n/m))th integer from among those positive integers not occurring earlier in the sequence.

The programs for A120913, there is no canonical definition to state claims against.
-/

/-! ## A120913.P11768979873201507469

`A209293(or(A066182(n+1), A091536(n)))`
-/

namespace A120913.P11768979873201507469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (Int.lor (A066182 (n + 1)) (A091536 n)).toNat

end

end A120913.P11768979873201507469

/-! ## A120913.P8875144597013176821

`A209293(∑[A091536(n)]*A066182(n+1))`
-/

namespace A120913.P8875144597013176821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 ((∑ j ∈ Finset.range (n + 1), f1 j) * A066182 (n + 1)).toNat

end

end A120913.P8875144597013176821

/-! ## A120913.P8200785846346583079

`A209293(A066182(n+1)^∑[A091536(n)])`
-/

namespace A120913.P8200785846346583079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (SequenceMachineLib.roundAway ((A066182 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A120913.P8200785846346583079

/-! ## A120913.P18014631201035412909

`A209293(A066182(n+1)%A117075(n+1))`
-/

namespace A120913.P18014631201035412909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (Int.tmod (A066182 (n + 1)) (A117075 (n + 1))).toNat

end

end A120913.P18014631201035412909

/-! ## A120913.P3722294159235660464

`A353353(A111835(n))+A061579(n)`
-/

namespace A120913.P3722294159235660464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353353 (A111835 n).toNat + A061579 n

end

end A120913.P3722294159235660464

/-!
# A120915: G.f. satisfies: A(x) = C(2x)^2 * A(x^3*C(2x)^4), where C(x) is the g.f. of the Catalan numbers (A000108).

The programs for A120915, there is no canonical definition to state claims against.
-/

/-! ## A120915.P17876771490236559720

`A120914(n²)`
-/

namespace A120915.P17876771490236559720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120914 (n ^ 2)

end

end A120915.P17876771490236559720

/-! ## A120915.P7732201452317390844

`∑{digits}[n, A120914(n*#)]`
-/

namespace A120915.P7732201452317390844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A120914 (n * x)).sum

end

end A120915.P7732201452317390844

/-! ## A120915.P17336249365286322749

`record[A120914(round(lcm(n+1, 1-n)/4))]`
-/

namespace A120915.P17336249365286322749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120914 (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120915.P17336249365286322749

/-!
# A120916: G.f. satisfies: A(x) = C(2x)*A(x^3*C(2x)^4), where C(x) is the g.f. of the Catalan numbers (A000108).

The programs for A120916, there is no canonical definition to state claims against.
-/

/-! ## A120916.P13115804412004333886

`A060384(A076036(n))+n`
-/

namespace A120916.P13115804412004333886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A076036 n).toNat + (n : ℤ)

end

end A120916.P13115804412004333886

/-! ## A120916.P15549605784817794635

`A129277(n)+A129253(A165903(n))`
-/

namespace A120916.P15549605784817794635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129277 n + A129253 (A165903 n).toNat

end

end A120916.P15549605784817794635

/-!
# A120917: Central terms of triangle A120914 (cascadence of (1+2x)^2).

The programs for A120917, there is no canonical definition to state claims against.
-/

/-! ## A120917.P16368066067802645008

`A120914(∑[2*n])`
-/

namespace A120917.P16368066067802645008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120914 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120917.P16368066067802645008

/-! ## A120917.P1818938323982379271

`A120914((n+1)*∑{digits}[n, #])+∑{digits}[n, #]-∏{digits}[n, #]`
-/

namespace A120917.P1818938323982379271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120914 ((n + 1) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) + (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ))

end

end A120917.P1818938323982379271

/-! ## A120917.P9039346492956752419

`record[A120914(A061885(n))]`
-/

namespace A120917.P9039346492956752419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120914 (A061885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120917.P9039346492956752419

/-!
# A120920: G.f. satisfies: A(x) = G(x)^3 * A(x^4*G(x)^9), where G(x) is the g.f. of the number of ternary trees (A001764): G(x) = 1 + x*G(x)^3.

The programs for A120920, there is no canonical definition to state claims against.
-/

/-! ## A120920.P16042487182108056455

`A120919(8*n²-(∑[n]+6*n²))`
-/

namespace A120920.P16042487182108056455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120919 (8 * n ^ 2 - (∑ j ∈ Finset.range (n + 1), f1 j + 6 * n ^ 2))

end

end A120920.P16042487182108056455

/-! ## A120920.P16252890914419606175

`A120919(A000326(n))+A054899(n)`
-/

namespace A120920.P16252890914419606175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120919 (A000326 n).toNat + A054899 n

end

end A120920.P16252890914419606175

/-! ## A120920.P14619529477818957193

`A119963(n)*A120919(A000326(n))`
-/

namespace A120920.P14619529477818957193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A120919 (A000326 n).toNat

end

end A120920.P14619529477818957193

/-!
# A120921: G.f. satisfies: A(x) = G(x) * A(x^4*G(x)^9), where G(x) is the g.f. of A001764: G(x) = 1 + x*G(x)^3.

The programs for A120921, there is no canonical definition to state claims against.
-/

/-! ## A120921.P10099509979431134034

`A008670(n)+A008615(A001850(n))`
-/

namespace A120921.P10099509979431134034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n + A008615 (A001850 n).toNat

end

end A120921.P10099509979431134034

/-! ## A120921.P16102183700852304576

`A028303(n)+A008612(A001850(n))`
-/

namespace A120921.P16102183700852304576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 n + A008612 (A001850 n).toNat

end

end A120921.P16102183700852304576

/-! ## A120921.P16665714856886126668

`A103221(A108411(n)+A001850(n))`
-/

namespace A120921.P16665714856886126668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A108411 n + A001850 n).toNat

end

end A120921.P16665714856886126668

/-!
# A120922: Main diagonal of triangle A120919 (cascadence of (1+x)^3); a(n) = A120919(n,n) for n>=0.

The programs for A120922, there is no canonical definition to state claims against.
-/

/-! ## A120922.P17855576090462963806

`A120919(∑[n]+n²)`
-/

namespace A120922.P17855576090462963806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120919 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2)

end

end A120922.P17855576090462963806

/-! ## A120922.P6714151067991036851

`record[A120919(∑[floor(n/(n%2+1))])]`
-/

namespace A120922.P6714151067991036851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120919 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120922.P6714151067991036851

/-!
# A120923: Row sums of triangle A120919 (cascadence of (1+x)^3).

The programs for A120923, there is no canonical definition to state claims against.
-/

/-! ## A120923.P13856407183078530891

`A028391(A241606(n+1)+A034867(n))`
-/

namespace A120923.P13856407183078530891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A241606 (n + 1) + A034867 n).toNat

end

end A120923.P13856407183078530891

/-!
# A120925: Number of ternary words on {0,1,2} having no isolated 0's.

The programs for A120925, the canonical program `A120925.P730458465844673104` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120925 has offset 0).

The definition of A120925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120925.P730458465844673104

`3*a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120925

/-- `3*a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P730458465844673104.Spec : Prop :=
  ∀ n, P730458465844673104.a n = A120925 n

theorem P730458465844673104.correct : P730458465844673104.Spec := by
  intro n
  simp only [A120925]

end A120925

/-! ## A120925.P5848424447622399294

`ogf((1-x+x^2)/(1-3x+2x^2-2x^3))`
-/

namespace A120925.P5848424447622399294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 2, -2] n

end

end A120925.P5848424447622399294

namespace A120925

/-- `ogf((1-x+x^2)/(1-3x+2x^2-2x^3))` -/
def P5848424447622399294.Spec : Prop :=
  ∀ n, P5848424447622399294.a n = A120925 n

end A120925

/-! ## A120925.P9169811555223995339

`or(1, or(1, floor(a(n-1)/a(n-2)*a(n-1))))` with `a(0)=1, a(1)=2`
-/

namespace A120925.P9169811555223995339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 1 (Int.lor 1 ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋)

end

end A120925.P9169811555223995339

namespace A120925

/-- `or(1, or(1, floor(a(n-1)/a(n-2)*a(n-1))))` -/
def P9169811555223995339.Spec : Prop :=
  ∀ n, P9169811555223995339.a n = A120925 n

end A120925

/-! ## A120925.P12370685120166785481

`∑[ceil(A111281(n+1)/2)]`
-/

namespace A120925.P12370685120166785481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111281 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120925.P12370685120166785481

namespace A120925

/-- `∑[ceil(A111281(n+1)/2)]` -/
def P12370685120166785481.Spec : Prop :=
  ∀ n, P12370685120166785481.a n = A120925 n

end A120925

/-! ## A120925.P5404960370163568193

`A115219(n+3)/4`
-/

namespace A120925.P5404960370163568193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115219 (n + 3) : ℚ) / 4

end

end A120925.P5404960370163568193

namespace A120925

/-- `A115219(n+3)/4` -/
def P5404960370163568193.Spec : Prop :=
  ∀ n, P5404960370163568193.a n = (A120925 n : ℚ)

end A120925

/-! ## A120925.P14948288982101897590

`A020709(n+1)-Δ[Δ[A020709(n)]]`
-/

namespace A120925.P14948288982101897590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020709 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020709 (n + 1) - (f1 (n + 1) - f1 n)

end

end A120925.P14948288982101897590

namespace A120925

/-- `A020709(n+1)-Δ[Δ[A020709(n)]]` -/
def P14948288982101897590.Spec : Prop :=
  ∀ n, P14948288982101897590.a n = A120925 n

end A120925

/-!
# A120926: Number of isolated 0's in all ternary words of length n on {0,1,2}.

The programs for A120926, the canonical program `A120926.P4690253486778356380` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120926 has offset 1).

The definition of A120926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120926.P5655699218992590242

`ogf((1-2x+x^2)/(1-6x+9x^2))`
-/

namespace A120926.P5655699218992590242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -6, 9] n

end

end A120926.P5655699218992590242

namespace A120926

/-- `ogf((1-2x+x^2)/(1-6x+9x^2))` -/
def P5655699218992590242.Spec : Prop :=
  ∀ n, P5655699218992590242.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P4690253486778356380

`ceil(4*(n+2)*3^(n-2))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120926

/-- `ceil(4*(n+2)*3^(n-2))` -/
def P4690253486778356380.Spec : Prop :=
  ∀ n, P4690253486778356380.a n = A120926 (n + 1)

theorem P4690253486778356380.correct : P4690253486778356380.Spec := by
  intro n
  simp only [A120926, Nat.add_sub_cancel]

end A120926

/-! ## A120926.P5518338153887249717

`3*a(n-1)*ratio[n+1]` with `a(0)=1, a(1)=4`
-/

namespace A120926.P5518338153887249717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A120926.P5518338153887249717

namespace A120926

/-- `3*a(n-1)*ratio[n+1]` -/
def P5518338153887249717.Spec : Prop :=
  ∀ n, P5518338153887249717.a n = (A120926 (n + 1) : ℚ)

end A120926

/-! ## A120926.P8122922587107433128

`(3/(n+1)+3)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A120926.P8122922587107433128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (3 / (n + 1 : ℚ) + 3) * a (n - 1)

end

end A120926.P8122922587107433128

namespace A120926

/-- `(3/(n+1)+3)*a(n-1)` -/
def P8122922587107433128.Spec : Prop :=
  ∀ n, P8122922587107433128.a n = (A120926 (n + 1) : ℚ)

end A120926

/-! ## A120926.P5016761075367662912

`3*a(n-1)+4*3^(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A120926.P5016761075367662912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1) + 4 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A120926.P5016761075367662912

namespace A120926

/-- `3*a(n-1)+4*3^(n-2)` -/
def P5016761075367662912.Spec : Prop :=
  ∀ n, P5016761075367662912.a n = (A120926 (n + 1) : ℚ)

end A120926

/-! ## A120926.P17616105286193053527

`A052156(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A120926.P17616105286193053527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052156 n + 3 * a (n - 1)

end

end A120926.P17616105286193053527

namespace A120926

/-- `A052156(n)+3*a(n-1)` -/
def P17616105286193053527.Spec : Prop :=
  ∀ n, P17616105286193053527.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P10990526261100919303

`A126184(n)+A027471(n+1)`
-/

namespace A120926.P10990526261100919303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126184 n + A027471 (n + 1)

end

end A120926.P10990526261100919303

namespace A120926

/-- `A126184(n)+A027471(n+1)` -/
def P10990526261100919303.Spec : Prop :=
  ∀ n, P10990526261100919303.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P18133006777554221774

`A036453(n+1)*A199923(n)`
-/

namespace A120926.P18133006777554221774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A199923 n

end

end A120926.P18133006777554221774

namespace A120926

/-- `A036453(n+1)*A199923(n)` -/
def P18133006777554221774.Spec : Prop :=
  ∀ n, P18133006777554221774.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P10908758978540918288

`(2-A000007(n))*A199923(n)`
-/

namespace A120926.P10908758978540918288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A199923 n

end

end A120926.P10908758978540918288

namespace A120926

/-- `(2-A000007(n))*A199923(n)` -/
def P10908758978540918288.Spec : Prop :=
  ∀ n, P10908758978540918288.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P14741737976090235604

`A126184(n)+n*A133494(n)`
-/

namespace A120926.P14741737976090235604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126184 n + (n : ℤ) * A133494 n

end

end A120926.P14741737976090235604

namespace A120926

/-- `A126184(n)+n*A133494(n)` -/
def P14741737976090235604.Spec : Prop :=
  ∀ n, P14741737976090235604.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P1137299633710239095

`A126184(n)+n*A140429(n)`
-/

namespace A120926.P1137299633710239095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126184 n + (n : ℤ) * A140429 n

end

end A120926.P1137299633710239095

namespace A120926

/-- `A126184(n)+n*A140429(n)` -/
def P1137299633710239095.Spec : Prop :=
  ∀ n, P1137299633710239095.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P3551353821653971601

`∑[A257970(n+1)]+n*A052156(n)`
-/

namespace A120926.P3551353821653971601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A052156 n

end

end A120926.P3551353821653971601

namespace A120926

/-- `∑[A257970(n+1)]+n*A052156(n)` -/
def P3551353821653971601.Spec : Prop :=
  ∀ n, P3551353821653971601.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P2964945990475292345

`Δ[A025579(n+1)]+n*A025579(n+1)`
-/

namespace A120926.P2964945990475292345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A025579 (n + 1)

end

end A120926.P2964945990475292345

namespace A120926

/-- `Δ[A025579(n+1)]+n*A025579(n+1)` -/
def P2964945990475292345.Spec : Prop :=
  ∀ n, P2964945990475292345.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P6698839053312443060

`Δ[A001787(n)]/A003945(n)*A003946(n)`
-/

namespace A120926.P6698839053312443060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A003945 n : ℚ) * (A003946 n : ℚ)

end

end A120926.P6698839053312443060

namespace A120926

/-- `Δ[A001787(n)]/A003945(n)*A003946(n)` -/
def P6698839053312443060.Spec : Prop :=
  ∀ n, P6698839053312443060.a n = (A120926 (n + 1) : ℚ)

end A120926

/-! ## A120926.P9247834931916420655

`A011782(n+1)/A011782(n)*A199923(n)`
-/

namespace A120926.P9247834931916420655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A199923 n : ℚ)

end

end A120926.P9247834931916420655

namespace A120926

/-- `A011782(n+1)/A011782(n)*A199923(n)` -/
def P9247834931916420655.Spec : Prop :=
  ∀ n, P9247834931916420655.a n = (A120926 (n + 1) : ℚ)

end A120926

/-! ## A120926.P8801770099470165463

`Δ[A229277(n)/3]`
-/

namespace A120926.P8801770099470165463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229277 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120926.P8801770099470165463

namespace A120926

/-- `Δ[A229277(n)/3]` -/
def P8801770099470165463.Spec : Prop :=
  ∀ n, P8801770099470165463.a n = (A120926 (n + 1) : ℚ)

end A120926

/-! ## A120926.P7032484084738490114

`A113071(n)-A120908(n+1)`
-/

namespace A120926.P7032484084738490114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 n - A120908 (n + 1)

end

end A120926.P7032484084738490114

namespace A120926

/-- `A113071(n)-A120908(n+1)` -/
def P7032484084738490114.Spec : Prop :=
  ∀ n, P7032484084738490114.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P458503223872515166

`A113071(n)-n*A003946(n)`
-/

namespace A120926.P458503223872515166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 n - (n : ℤ) * A003946 n

end

end A120926.P458503223872515166

namespace A120926

/-- `A113071(n)-n*A003946(n)` -/
def P458503223872515166.Spec : Prop :=
  ∀ n, P458503223872515166.a n = A120926 (n + 1)

end A120926

/-! ## A120926.P15999526050849096955

`A125693(∑[n+1]+1)`
-/

namespace A120926.P15999526050849096955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125693 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A120926.P15999526050849096955

namespace A120926

/-- `A125693(∑[n+1]+1)` -/
def P15999526050849096955.Spec : Prop :=
  ∀ n, P15999526050849096955.a n = A120926 (n + 1)

end A120926

/-!
# A120927: a(n) = floor(semiprime(n)/n).

The programs for A120927, the canonical program `A120927.P3623064192021745139` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120927 has offset 1).

The definition of A120927 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120927.P3623064192021745139

`floor(A001358(n+1)/(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A120927

/-- `floor(A001358(n+1)/(n+1))` -/
def P3623064192021745139.Spec : Prop :=
  ∀ n, P3623064192021745139.a n = A120927 (n + 1)

theorem P3623064192021745139.correct : P3623064192021745139.Spec := by
  intro n
  simp only [A120927, Nat.add_sub_cancel]

end A120927

/-! ## A120927.P2347747060313429476

`floor(sqrt(A074985(n+1))/(n+1))`
-/

namespace A120927.P2347747060313429476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A074985 (n + 1) : ℝ) / (n + 1 : ℝ)⌋

end

end A120927.P2347747060313429476

namespace A120927

/-- `floor(sqrt(A074985(n+1))/(n+1))` -/
def P2347747060313429476.Spec : Prop :=
  ∀ n, P2347747060313429476.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P1890863333066393297

`floor((A088707(n+1)-1)/(n+1))`
-/

namespace A120927.P1890863333066393297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088707 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P1890863333066393297

namespace A120927

/-- `floor((A088707(n+1)-1)/(n+1))` -/
def P1890863333066393297.Spec : Prop :=
  ∀ n, P1890863333066393297.a n = A120927 (n + 1)

theorem P1890863333066393297.correct : P1890863333066393297.Spec := by
  intro n
  simp only [A120927, Nat.add_sub_cancel, A120927.P1890863333066393297.a, A120927.P3623064192021745139.a, A001358, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120927

/-! ## A120927.P163501344201782378

`floor(A075818(n+1)/(2*(n+1)))`
-/

namespace A120927.P163501344201782378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075818 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A120927.P163501344201782378

namespace A120927

/-- `floor(A075818(n+1)/(2*(n+1)))` -/
def P163501344201782378.Spec : Prop :=
  ∀ n, P163501344201782378.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P17473157498066516136

`floor((lt[0, A064911(n+1)]+1)/(n+1))`
-/

namespace A120927.P17473157498066516136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P17473157498066516136

namespace A120927

/-- `floor((lt[0, A064911(n+1)]+1)/(n+1))` -/
def P17473157498066516136.Spec : Prop :=
  ∀ n, P17473157498066516136.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P11517154258799221474

`floor((eq[2, A001222(n+1)]+1)/(n+1))`
-/

namespace A120927.P11517154258799221474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P11517154258799221474

namespace A120927

/-- `floor((eq[2, A001222(n+1)]+1)/(n+1))` -/
def P11517154258799221474.Spec : Prop :=
  ∀ n, P11517154258799221474.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P4983562902682946272

`floor(A129767(2*(n+1))/(n+1))`
-/

namespace A120927.P4983562902682946272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129767 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P4983562902682946272

namespace A120927

/-- `floor(A129767(2*(n+1))/(n+1))` -/
def P4983562902682946272.Spec : Prop :=
  ∀ n, P4983562902682946272.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P3416443360907365566

`floor(lt[1, A105700(n)]/(n+1))`
-/

namespace A120927.P3416443360907365566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P3416443360907365566

namespace A120927

/-- `floor(lt[1, A105700(n)]/(n+1))` -/
def P3416443360907365566.Spec : Prop :=
  ∀ n, P3416443360907365566.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P17000212638536206931

`floor(eq[2, A226378(n)]/(n+1))`
-/

namespace A120927.P17000212638536206931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P17000212638536206931

namespace A120927

/-- `floor(eq[2, A226378(n)]/(n+1))` -/
def P17000212638536206931.Spec : Prop :=
  ∀ n, P17000212638536206931.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P2523129351090115517

`floor(eq[2, A284289(n)]/(n+1))`
-/

namespace A120927.P2523129351090115517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P2523129351090115517

namespace A120927

/-- `floor(eq[2, A284289(n)]/(n+1))` -/
def P2523129351090115517.Spec : Prop :=
  ∀ n, P2523129351090115517.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P14596247896320116775

`floor(eq[2, A001222(A028310(n))]/(n+1))`
-/

namespace A120927.P14596247896320116775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P14596247896320116775

namespace A120927

/-- `floor(eq[2, A001222(A028310(n))]/(n+1))` -/
def P14596247896320116775.Spec : Prop :=
  ∀ n, P14596247896320116775.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P12233200893831493224

`floor(eq[3, A001222(A008486(n))]/(n+1))`
-/

namespace A120927.P12233200893831493224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P12233200893831493224

namespace A120927

/-- `floor(eq[3, A001222(A008486(n))]/(n+1))` -/
def P12233200893831493224.Spec : Prop :=
  ∀ n, P12233200893831493224.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P11315654404019620360

`floor(eq[3, A001222(A008706(n))]/(n+1))`
-/

namespace A120927.P11315654404019620360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P11315654404019620360

namespace A120927

/-- `floor(eq[3, A001222(A008706(n))]/(n+1))` -/
def P11315654404019620360.Spec : Prop :=
  ∀ n, P11315654404019620360.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P8501798329686895602

`floor(eq[4, A001222(A008458(n))]/(n+1))`
-/

namespace A120927.P8501798329686895602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P8501798329686895602

namespace A120927

/-- `floor(eq[4, A001222(A008458(n))]/(n+1))` -/
def P8501798329686895602.Spec : Prop :=
  ∀ n, P8501798329686895602.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P9969695867555558319

`floor(A207790(4*n+3)/(n+1))`
-/

namespace A120927.P9969695867555558319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A207790 (4 * n + 3) : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P9969695867555558319

namespace A120927

/-- `floor(A207790(4*n+3)/(n+1))` -/
def P9969695867555558319.Spec : Prop :=
  ∀ n, P9969695867555558319.a n = A120927 (n + 1)

end A120927

/-! ## A120927.P10095148087531989073

`floor(A001281(A075818(n+1))/(n+1))`
-/

namespace A120927.P10095148087531989073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001281 (A075818 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A120927.P10095148087531989073

namespace A120927

/-- `floor(A001281(A075818(n+1))/(n+1))` -/
def P10095148087531989073.Spec : Prop :=
  ∀ n, P10095148087531989073.a n = A120927 (n + 1)

end A120927

/-!
# A120928: Number of "ups" and "downs" in the permutations of [n] if either a previous counted "up" ("down") or a "void" precedes an "up" ("down") which then will be counted also.

The programs for A120928, the canonical program `A120928.P9232715062868206752` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120928 has offset 2).

The definition of A120928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120928.P9232715062868206752

`ceil((n+2)!*(3*(n+2)-1)/6)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120928

/-- `ceil((n+2)!*(3*(n+2)-1)/6)` -/
def P9232715062868206752.Spec : Prop :=
  ∀ n, P9232715062868206752.a n = A120928 (n + 2)

theorem P9232715062868206752.correct : P9232715062868206752.Spec := by
  intro n
  simp only [A120928, Nat.add_sub_cancel]

end A120928

/-! ## A120928.P2015538856237107992

`Δ[(n+1)*a(n-1)]+(n-1)*a(n-1)` with `a(0)=2`
-/

namespace A120928.P2015538856237107992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - 1) * a (n - 1)

end

end A120928.P2015538856237107992

namespace A120928

/-- `Δ[(n+1)*a(n-1)]+(n-1)*a(n-1)` -/
def P2015538856237107992.Spec : Prop :=
  ∀ n, P2015538856237107992.a n = A120928 (n + 2)

end A120928

/-! ## A120928.P17090246539770038792

`2*A227404(n+2)`
-/

namespace A120928.P17090246539770038792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227404 (n + 2)

end

end A120928.P17090246539770038792

namespace A120928

/-- `2*A227404(n+2)` -/
def P17090246539770038792.Spec : Prop :=
  ∀ n, P17090246539770038792.a n = A120928 (n + 2)

end A120928

/-! ## A120928.P3834482129814778740

`A227404(A028310(n+2))+A227404(n+2)`
-/

namespace A120928.P3834482129814778740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227404 (A028310 (n + 2)).toNat + A227404 (n + 2)

end

end A120928.P3834482129814778740

namespace A120928

/-- `A227404(A028310(n+2))+A227404(n+2)` -/
def P3834482129814778740.Spec : Prop :=
  ∀ n, P3834482129814778740.a n = A120928 (n + 2)

end A120928

/-! ## A120928.P18358829450190773741

`A227404(n+2)+A227404(n+2)+A010051((n+1)²)`
-/

namespace A120928.P18358829450190773741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227404 (n + 2) + (A227404 (n + 2) + A010051 ((n + 1) ^ 2))

end

end A120928.P18358829450190773741

namespace A120928

/-- `A227404(n+2)+A227404(n+2)+A010051((n+1)²)` -/
def P18358829450190773741.Spec : Prop :=
  ∀ n, P18358829450190773741.a n = A120928 (n + 2)

end A120928

/-! ## A120928.P11502357349227840377

`round(A066118(n+2)/3)`
-/

namespace A120928.P11502357349227840377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A066118 (n + 2) : ℚ) / 3)

end

end A120928.P11502357349227840377

namespace A120928

/-- `round(A066118(n+2)/3)` -/
def P11502357349227840377.Spec : Prop :=
  ∀ n, P11502357349227840377.a n = A120928 (n + 2)

end A120928

/-!
# A120929: Partial sums of n^(n^2), A002489.

The programs for A120929, there is no canonical definition to state claims against.
-/

/-! ## A120929.P7008103666728113761

`∑[n^n²]`
-/

namespace A120929.P7008103666728113761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120929.P7008103666728113761

/-! ## A120929.P907831037833440882

`a(n-1)+n^n²` with `a(0)=1`
-/

namespace A120929.P907831037833440882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n ^ n ^ 2

end

end A120929.P907831037833440882

/-! ## A120929.P12212116145707994399

`(n^n)^n-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A120929.P12212116145707994399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n ^ n) ^ n : ℤ) - (-a (n - 1))

end

end A120929.P12212116145707994399

/-! ## A120929.P9218151573575145825

`∑[n^A253909(n)]+1`
-/

namespace A120929.P9218151573575145825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A253909 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120929.P9218151573575145825

/-! ## A120929.P15641279741067988019

`A002489(n)+a(n-1)` with `a(0)=1`
-/

namespace A120929.P15641279741067988019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002489 n + a (n - 1)

end

end A120929.P15641279741067988019

/-!
# A120931: Values y corresponding to least x (A120930) of primitive quadruple(n,x,y,z),n<x<y<z satisfying n^3 + x^3 + y^3 = z^3.

The programs for A120931, there is no canonical definition to state claims against.
-/

/-! ## A120931.P1704396622309826010

`A120932(n+1)-A028234(A052129(n))`
-/

namespace A120931.P1704396622309826010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120932 (n + 1) - A028234 (A052129 n).toNat

end

end A120931.P1704396622309826010

/-!
# A120932: Values z corresponding to least x (A120930) of primitive quadruples (n,x,y,z),n<x<y<z satisfying n^3 + x^3 + y^3 = z^3.

The programs for A120932, there is no canonical definition to state claims against.
-/

/-! ## A120932.P6792556003635812002

`A120931(n+1)+A070939(A051181(n))`
-/

namespace A120932.P6792556003635812002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120931 (n + 1) + A070939 (A051181 n).toNat

end

end A120932.P6792556003635812002

/-!
# A120933: Triangle read by rows: T(n,k) is the number of binary words of length n for which the length of the maximal leading nondecreasing subword is k (1<=k<=n).

The programs for A120933, there is no canonical definition to state claims against.
-/

/-! ## A120933.P9554101859338690986

`A296612(n)+char[∑[n-1]]`
-/

namespace A120933.P9554101859338690986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A120933.P9554101859338690986

/-! ## A120933.P14117947419705396628

`Δ[A268289(A164874(n+1))]`
-/

namespace A120933.P14117947419705396628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 (A164874 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120933.P14117947419705396628

/-! ## A120933.P1416265246386408268

`Δ[A268289(eq[2, A080100(n)])]`
-/

namespace A120933.P1416265246386408268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120933.P1416265246386408268

/-! ## A120933.P10128451208431940153

`Δ[A268289(eq[2, A124758(n)])]`
-/

namespace A120933.P10128451208431940153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120933.P10128451208431940153

/-! ## A120933.P4354477127410231999

`A296612(n)+1-A023532(n)`
-/

namespace A120933.P4354477127410231999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 n + 1 - A023532 n

end

end A120933.P4354477127410231999

/-! ## A120933.P2927068674553433358

`Δ[A268289(A190620(n+1))/2]`
-/

namespace A120933.P2927068674553433358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268289 (A190620 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120933.P2927068674553433358

/-! ## A120933.P4578919561726893858

`A296612(Δ[A025581(n)]+n+1)`
-/

namespace A120933.P4578919561726893858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A120933.P4578919561726893858

/-! ## A120933.P2218871906409862134

`ratio[A002024(n+1)]*A296612(n)`
-/

namespace A120933.P2218871906409862134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A296612 n : ℚ)

end

end A120933.P2218871906409862134

/-! ## A120933.P5971695548917500406

`Δ[A268289(record[A057168(2*n+1)])]`
-/

namespace A120933.P5971695548917500406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120933.P5971695548917500406

/-! ## A120933.P9888029697235946429

`A140129(A224195(n+2))-A167407(n+1)`
-/

namespace A120933.P9888029697235946429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140129 (A224195 (n + 2)).toNat - A167407 (n + 1)

end

end A120933.P9888029697235946429

/-!
# A120934: Least prime p such that the interval [p,p+log(p)] contains n primes.

The programs for A120934, there is no canonical definition to state claims against.
-/

/-! ## A120934.P6711031268947033144

`record[A120935(A023193(n+1))-n]`
-/

namespace A120934.P6711031268947033144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120935 (A023193 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120934.P6711031268947033144

/-! ## A120934.P8022739251048639722

`A120935(n+1)-A008407(n+1)`
-/

namespace A120934.P8022739251048639722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120935 (n + 1) - A008407 (n + 1)

end

end A120934.P8022739251048639722

/-! ## A120934.P4014114964783176611

`A120935(n+1)+1-A020497(n+1)`
-/

namespace A120934.P4014114964783176611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120935 (n + 1) + (1 - A020497 (n + 1))

end

end A120934.P4014114964783176611

/-! ## A120934.P6729713565314022824

`A120935(n+1)-A004442(A020497(n+1))`
-/

namespace A120934.P6729713565314022824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120935 (n + 1) - A004442 (A020497 (n + 1)).toNat

end

end A120934.P6729713565314022824

/-! ## A120934.P16642122108376815042

`A047947(n+1)+A120935(n+1)-∑[A047947(n+1)]`
-/

namespace A120934.P16642122108376815042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047947 (n + 1) + (A120935 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120934.P16642122108376815042

/-!
# A120935: Largest prime in the cluster of n primes whose first prime is given in A120934.

The programs for A120935, there is no canonical definition to state claims against.
-/

/-! ## A120935.P8287436636492739117

`A120934(n+1)+A008407(n+1)`
-/

namespace A120935.P8287436636492739117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120934 (n + 1) + A008407 (n + 1)

end

end A120935.P8287436636492739117

/-! ## A120935.P11820389871628932717

`A020497(n+1)+A120934(n+1)-1`
-/

namespace A120935.P11820389871628932717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (n + 1) + (A120934 (n + 1) - 1)

end

end A120935.P11820389871628932717

/-! ## A120935.P7630320150689759409

`A120934(n+1)+A004442(A020497(n+1))`
-/

namespace A120935.P7630320150689759409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120934 (n + 1) + A004442 (A020497 (n + 1)).toNat

end

end A120935.P7630320150689759409

/-! ## A120935.P13555813904118982965

`A120934(n+1)+and(A002446(n), A020497(n+1))`
-/

namespace A120935.P13555813904118982965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120934 (n + 1) + Int.land (A002446 n) (A020497 (n + 1))

end

end A120935.P13555813904118982965

/-! ## A120935.P603810325229968781

`A120934(n+1)+and(A005367(n), A020497(n+1))`
-/

namespace A120935.P603810325229968781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120934 (n + 1) + Int.land (A005367 n) (A020497 (n + 1))

end

end A120935.P603810325229968781

/-!
# A120936: Number of primes in the interval [n,n+log(n)].

The programs for A120936, the canonical program `A120936.P11581610779573346111` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120936 has offset 1).

The definition of A120936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120936.P11581610779573346111

`A230980(A212445(n+1))-A230980(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120936

/-- `A230980(A212445(n+1))-A230980(n)` -/
def P11581610779573346111.Spec : Prop :=
  ∀ n, P11581610779573346111.a n = A120936 (n + 1)

theorem P11581610779573346111.correct : P11581610779573346111.Spec := by
  intro n
  simp only [A120936, Nat.add_sub_cancel]

end A120936

/-! ## A120936.P2942916734429474441

`A000720(A212445(n+1))-A000720(A028310(n))`
-/

namespace A120936.P2942916734429474441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A212445 (n + 1)).toNat - A000720 (A028310 n).toNat

end

end A120936.P2942916734429474441

namespace A120936

/-- `A000720(A212445(n+1))-A000720(A028310(n))` -/
def P2942916734429474441.Spec : Prop :=
  ∀ n, P2942916734429474441.a n = A120936 (n + 1)

end A120936

/-! ## A120936.P15396144997275046017

`A010051(n+1)+A000720(A212445(n+1))-A000720(n+1)`
-/

namespace A120936.P15396144997275046017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A000720 (A212445 (n + 1)).toNat - A000720 (n + 1))

end

end A120936.P15396144997275046017

namespace A120936

/-- `A010051(n+1)+A000720(A212445(n+1))-A000720(n+1)` -/
def P15396144997275046017.Spec : Prop :=
  ∀ n, P15396144997275046017.a n = A120936 (n + 1)

end A120936

/-! ## A120936.P6857081253045911443

`A001222(A034386(A212445(n+1))/A034386(n))`
-/

namespace A120936.P6857081253045911443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A034386 (A212445 (n + 1)).toNat : ℚ) / (A034386 n : ℚ))).toNat

end

end A120936.P6857081253045911443

namespace A120936

/-- `A001222(A034386(A212445(n+1))/A034386(n))` -/
def P6857081253045911443.Spec : Prop :=
  ∀ n, P6857081253045911443.a n = A120936 (n + 1)

end A120936

/-! ## A120936.P8362186303083035186

`A354841(n+1)+char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A120936.P8362186303083035186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354841 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120936.P8362186303083035186

namespace A120936

/-- `A354841(n+1)+char[eq[1, ∑{e}[n+1, #]]]` -/
def P8362186303083035186.Spec : Prop :=
  ∀ n, P8362186303083035186.a n = A120936 (n + 1)

end A120936

/-! ## A120936.P9222154138253472475

`A354841(n+1)+Δ[A230980(n)]`
-/

namespace A120936.P9222154138253472475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354841 (n + 1) + (f1 (n + 1) - f1 n)

end

end A120936.P9222154138253472475

namespace A120936

/-- `A354841(n+1)+Δ[A230980(n)]` -/
def P9222154138253472475.Spec : Prop :=
  ∀ n, P9222154138253472475.a n = A120936 (n + 1)

end A120936

/-! ## A120936.P11923368766418232625

`A354841(n+1)+A010051(n+1)`
-/

namespace A120936.P11923368766418232625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354841 (n + 1) + A010051 (n + 1)

end

end A120936.P11923368766418232625

namespace A120936

/-- `A354841(n+1)+A010051(n+1)` -/
def P11923368766418232625.Spec : Prop :=
  ∀ n, P11923368766418232625.a n = A120936 (n + 1)

end A120936

/-!
# A120937: Least prime such that the distance to the two adjacent primes is 2n or greater.

The programs for A120937, there is no canonical definition to state claims against.
-/

/-! ## A120937.P4401223834734128414

`A102723(A092535(n))-floor(acot(n)²)`
-/

namespace A120937.P4401223834734128414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102723 (A092535 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A120937.P4401223834734128414

/-! ## A120937.P3986910800715865824

`A102723(A092535(n))-A000038(n)`
-/

namespace A120937.P3986910800715865824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102723 (A092535 n).toNat - A000038 n

end

end A120937.P3986910800715865824

/-! ## A120937.P7812593058256486075

`round(A102723(A092535(n))/A054977(n))`
-/

namespace A120937.P7812593058256486075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A102723 (A092535 n).toNat : ℚ) / (A054977 n : ℚ))

end

end A120937.P7812593058256486075

/-!
# A120939: a(1)=1. a(n) = a(n-1) + (largest integer occurring among {a(1),a(2),a(3),...,a(n-1)} that is coprime to n).

The programs for A120939, there is no canonical definition to state claims against.
-/

/-! ## A120939.P3101735638877185709

`A049988(A345760(n+1)+A186382(n+1))`
-/

namespace A120939.P3101735638877185709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (A345760 (n + 1) + A186382 (n + 1)).toNat

end

end A120939.P3101735638877185709

/-!
# A120940: Alternating sum of the Fibonacci numbers multiplied by their (combinatorial) indices.

The programs for A120940, the canonical program `A120940.P9873021802625221295` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120940 has offset 0).

The definition of A120940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120940.P18011070865014707149

`ogf((x+2x^2)/(1-x-3x^2+x^3+3x^4+x^5))`
-/

namespace A120940.P18011070865014707149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -1, -3, 1, 3, 1] n

end

end A120940.P18011070865014707149

namespace A120940

/-- `ogf((x+2x^2)/(1-x-3x^2+x^3+3x^4+x^5))` -/
def P18011070865014707149.Spec : Prop :=
  ∀ n, P18011070865014707149.a n = A120940 n

end A120940

/-! ## A120940.P9873021802625221295

`a(n-1)+3*a(n-2)-a(n-3)-3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=14`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120940

/-- `a(n-1)+3*a(n-2)-a(n-3)-3*a(n-4)-a(n-5)` -/
def P9873021802625221295.Spec : Prop :=
  ∀ n, P9873021802625221295.a n = A120940 n

theorem P9873021802625221295.correct : P9873021802625221295.Spec := by
  intro n
  simp only [A120940]

end A120940

/-! ## A120940.P9205261964089708609

`(-1)^n+A000045(n)-A001629(n+2)+3*A001629(n+1)`
-/

namespace A120940.P9205261964089708609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + A000045 n - A001629 (n + 2) + 3 * A001629 (n + 1)

end

end A120940.P9205261964089708609

namespace A120940

/-- `(-1)^n+A000045(n)-A001629(n+2)+3*A001629(n+1)` -/
def P9205261964089708609.Spec : Prop :=
  ∀ n, P9205261964089708609.a n = A120940 n

end A120940

/-! ## A120940.P4249699732665253680

`A094588(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A120940.P4249699732665253680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A094588 n + a (n - 2)

end

end A120940.P4249699732665253680

namespace A120940

/-- `A094588(n)+a(n-2)` -/
def P4249699732665253680.Spec : Prop :=
  ∀ n, P4249699732665253680.a n = A120940 n

end A120940

/-! ## A120940.P9679975417962493648

`A323812(n+2)-A127968(n)`
-/

namespace A120940.P9679975417962493648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323812 (n + 2) - A127968 n

end

end A120940.P9679975417962493648

namespace A120940

/-- `A323812(n+2)-A127968(n)` -/
def P9679975417962493648.Spec : Prop :=
  ∀ n, P9679975417962493648.a n = A120940 n

end A120940

/-! ## A120940.P7224760929715533392

`A007502(n+1)-A066983(n+1)`
-/

namespace A120940.P7224760929715533392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 1) - A066983 (n + 1)

end

end A120940.P7224760929715533392

namespace A120940

/-- `A007502(n+1)-A066983(n+1)` -/
def P7224760929715533392.Spec : Prop :=
  ∀ n, P7224760929715533392.a n = A120940 n

end A120940

/-! ## A120940.P1955206082911803165

`(n+1)*A247050(3*n+2)-A247050(3*n)`
-/

namespace A120940.P1955206082911803165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A247050 (3 * n + 2) - A247050 (3 * n)

end

end A120940.P1955206082911803165

namespace A120940

/-- `(n+1)*A247050(3*n+2)-A247050(3*n)` -/
def P1955206082911803165.Spec : Prop :=
  ∀ n, P1955206082911803165.a n = A120940 n

end A120940

/-! ## A120940.P12313375846162016732

`A023607(n)-a(n-1)` with `a(0)=0`
-/

namespace A120940.P12313375846162016732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023607 n - a (n - 1)

end

end A120940.P12313375846162016732

namespace A120940

/-- `A023607(n)-a(n-1)` -/
def P12313375846162016732.Spec : Prop :=
  ∀ n, P12313375846162016732.a n = A120940 n

end A120940

/-! ## A120940.P18418199785717671926

`n*A000045(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A120940.P18418199785717671926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * A000045 (n + 1) - a (n - 1)

end

end A120940.P18418199785717671926

namespace A120940

/-- `n*A000045(n+1)-a(n-1)` -/
def P18418199785717671926.Spec : Prop :=
  ∀ n, P18418199785717671926.a n = A120940 n

end A120940

/-! ## A120940.P1620119991763568959

`n*A212804(n+2)-a(n-1)` with `a(0)=0`
-/

namespace A120940.P1620119991763568959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * A212804 (n + 2) - a (n - 1)

end

end A120940.P1620119991763568959

namespace A120940

/-- `n*A212804(n+2)-a(n-1)` -/
def P1620119991763568959.Spec : Prop :=
  ∀ n, P1620119991763568959.a n = A120940 n

end A120940

/-! ## A120940.P3017099738075153737

`2*n*Δ[∑[A000045(n)]/2]-a(n-1)` with `a(0)=0`
-/

namespace A120940.P3017099738075153737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℚ) * (f1 (n + 1) - f1 n) - a (n - 1)

end

end A120940.P3017099738075153737

namespace A120940

/-- `2*n*Δ[∑[A000045(n)]/2]-a(n-1)` -/
def P3017099738075153737.Spec : Prop :=
  ∀ n, P3017099738075153737.a n = (A120940 n : ℚ)

end A120940

/-! ## A120940.P614499279896746075

`A023610(n)-A131337(n+1)`
-/

namespace A120940.P614499279896746075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n - A131337 (n + 1)

end

end A120940.P614499279896746075

namespace A120940

/-- `A023610(n)-A131337(n+1)` -/
def P614499279896746075.Spec : Prop :=
  ∀ n, P614499279896746075.a n = A120940 n

end A120940

/-! ## A120940.P17236908397438980041

`A099920(n+1)+A323812(n+2)-A323812(n+3)`
-/

namespace A120940.P17236908397438980041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (n + 1) + (A323812 (n + 2) - A323812 (n + 3))

end

end A120940.P17236908397438980041

namespace A120940

/-- `A099920(n+1)+A323812(n+2)-A323812(n+3)` -/
def P17236908397438980041.Spec : Prop :=
  ∀ n, P17236908397438980041.a n = A120940 n

end A120940

/-! ## A120940.P12379326252341090957

`A324129(n+2)-A323812(n+3)`
-/

namespace A120940.P12379326252341090957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324129 (n + 2) - A323812 (n + 3)

end

end A120940.P12379326252341090957

namespace A120940

/-- `A324129(n+2)-A323812(n+3)` -/
def P12379326252341090957.Spec : Prop :=
  ∀ n, P12379326252341090957.a n = A120940 n

end A120940

/-! ## A120940.P7886943822530577665

`Δ[n*A000045(n+1)-A014217(n+1)]`
-/

namespace A120940.P7886943822530577665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (n + 1) - A014217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120940.P7886943822530577665

namespace A120940

/-- `Δ[n*A000045(n+1)-A014217(n+1)]` -/
def P7886943822530577665.Spec : Prop :=
  ∀ n, P7886943822530577665.a n = A120940 n

end A120940

/-!
# A120941: a(n)=k-n where prime(k) is the smallest prime greater than prime(n)*prime(n+1).

The programs for A120941, the canonical program `A120941.P1519152944059217125` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120941 has offset 1).

The definition of A120941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120941.P1519152944059217125

`A000720(A006094(n+1))+1-(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120941

/-- `A000720(A006094(n+1))+1-(n+1)` -/
def P1519152944059217125.Spec : Prop :=
  ∀ n, P1519152944059217125.a n = A120941 (n + 1)

theorem P1519152944059217125.correct : P1519152944059217125.Spec := by
  intro n
  simp only [A120941, Nat.add_sub_cancel]

end A120941

/-! ## A120941.P16732181022493048855

`A000720(A000040(n+1)*A000040(n+2))+1-(n+1)`
-/

namespace A120941.P16732181022493048855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) * A000040 (n + 2)).toNat + 1 - (n + 1 : ℤ)

end

end A120941.P16732181022493048855

namespace A120941

/-- `A000720(A000040(n+1)*A000040(n+2))+1-(n+1)` -/
def P16732181022493048855.Spec : Prop :=
  ∀ n, P16732181022493048855.a n = A120941 (n + 1)

end A120941

/-! ## A120941.P10046026456548832365

`A256468(n+1)+A054272(n+1)`
-/

namespace A120941.P10046026456548832365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256468 (n + 1) + A054272 (n + 1)

end

end A120941.P10046026456548832365

namespace A120941

/-- `A256468(n+1)+A054272(n+1)` -/
def P10046026456548832365.Spec : Prop :=
  ∀ n, P10046026456548832365.a n = A120941 (n + 1)

theorem P10046026456548832365.correct : P10046026456548832365.Spec := by
  intro n
  simp only [A120941, Nat.add_sub_cancel, A120941.P10046026456548832365.a, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A054272, A054272.P16500536369367462355.a, A256468, A256468.P15833489412511418299.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120941

/-! ## A120941.P17825647850969087573

`A250473(n+2)-A256469(n+1)`
-/

namespace A120941.P17825647850969087573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 2) - A256469 (n + 1)

end

end A120941.P17825647850969087573

namespace A120941

/-- `A250473(n+2)-A256469(n+1)` -/
def P17825647850969087573.Spec : Prop :=
  ∀ n, P17825647850969087573.a n = A120941 (n + 1)

theorem P17825647850969087573.correct : P17825647850969087573.Spec := by
  intro n
  simp only [A120941, Nat.add_sub_cancel, A120941.P17825647850969087573.a, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A256469, A256469.P956244140118081997.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A256448, A256448.P8888948745584736931.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120941

/-! ## A120941.P12267029083264963996

`A250474(n+1)+A256468(n+1)-2`
-/

namespace A120941.P12267029083264963996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) + (A256468 (n + 1) - 2)

end

end A120941.P12267029083264963996

namespace A120941

/-- `A250474(n+1)+A256468(n+1)-2` -/
def P12267029083264963996.Spec : Prop :=
  ∀ n, P12267029083264963996.a n = A120941 (n + 1)

theorem P12267029083264963996.correct : P12267029083264963996.Spec := by
  intro n
  simp only [A120941, Nat.add_sub_cancel, A120941.P12267029083264963996.a, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250474, A250474.P15580657759443600580.a, A256468, A256468.P15833489412511418299.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A000879, A000879.P11642258310759995278.a, A250477, A250477.P16411795154775873264.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120941

/-! ## A120941.P13020796015499771762

`A000879(n+1)+A256468(n+1)-n`
-/

namespace A120941.P13020796015499771762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) + (A256468 (n + 1) - (n : ℤ))

end

end A120941.P13020796015499771762

namespace A120941

/-- `A000879(n+1)+A256468(n+1)-n` -/
def P13020796015499771762.Spec : Prop :=
  ∀ n, P13020796015499771762.a n = A120941 (n + 1)

theorem P13020796015499771762.correct : P13020796015499771762.Spec := by
  intro n
  simp only [A120941, Nat.add_sub_cancel, A120941.P13020796015499771762.a, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A256468, A256468.P15833489412511418299.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A256447, A256447.P10526496064396814310.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120941

/-! ## A120941.P609021418931842626

`A250474(n+1)+A256448(n+1)-A256470(n+1)`
-/

namespace A120941.P609021418931842626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) + (A256448 (n + 1) - A256470 (n + 1))

end

end A120941.P609021418931842626

namespace A120941

/-- `A250474(n+1)+A256448(n+1)-A256470(n+1)` -/
def P609021418931842626.Spec : Prop :=
  ∀ n, P609021418931842626.a n = A120941 (n + 1)

theorem P609021418931842626.correct : P609021418931842626.Spec := by
  intro n
  simp only [A120941, Nat.add_sub_cancel, A120941.P609021418931842626.a, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250474, A250474.P15580657759443600580.a, A256448, A256448.P8888948745584736931.a, A256470, A256470.P3494554339232187623.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A256468, A256468.P15833489412511418299.a, A256469, A256469.P956244140118081997.a, A000879, A000879.P11642258310759995278.a, A256447, A256447.P10526496064396814310.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120941

/-! ## A120941.P1226821923746316745

`A256446(n)+a(n-1)` with `a(0)=3`
-/

namespace A120941.P1226821923746316745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A256446 n + a (n - 1)

end

end A120941.P1226821923746316745

namespace A120941

/-- `A256446(n)+a(n-1)` -/
def P1226821923746316745.Spec : Prop :=
  ∀ n, P1226821923746316745.a n = A120941 (n + 1)

end A120941

/-! ## A120941.P2845422583016983033

`A054272(n+1)+A256447(n+1)-1`
-/

namespace A120941.P2845422583016983033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) + (A256447 (n + 1) - 1)

end

end A120941.P2845422583016983033

namespace A120941

/-- `A054272(n+1)+A256447(n+1)-1` -/
def P2845422583016983033.Spec : Prop :=
  ∀ n, P2845422583016983033.a n = A120941 (n + 1)

theorem P2845422583016983033.correct : P2845422583016983033.Spec := by
  intro n
  simp only [A120941, Nat.add_sub_cancel, A120941.P2845422583016983033.a, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A054272, A054272.P16500536369367462355.a, A256447, A256447.P10526496064396814310.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120941

/-! ## A120941.P11113533673162233488

`A250473(n+1)+A256447(n+1)-2`
-/

namespace A120941.P11113533673162233488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) + (A256447 (n + 1) - 2)

end

end A120941.P11113533673162233488

namespace A120941

/-- `A250473(n+1)+A256447(n+1)-2` -/
def P11113533673162233488.Spec : Prop :=
  ∀ n, P11113533673162233488.a n = A120941 (n + 1)

theorem P11113533673162233488.correct : P11113533673162233488.Spec := by
  intro n
  simp only [A120941, Nat.add_sub_cancel, A120941.P11113533673162233488.a, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120941

/-! ## A120941.P12668993078253313241

`A256447(n+1)+A250474(n+1)-3`
-/

namespace A120941.P12668993078253313241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) + A250474 (n + 1) - 3

end

end A120941.P12668993078253313241

namespace A120941

/-- `A256447(n+1)+A250474(n+1)-3` -/
def P12668993078253313241.Spec : Prop :=
  ∀ n, P12668993078253313241.a n = A120941 (n + 1)

theorem P12668993078253313241.correct : P12668993078253313241.Spec := by
  intro n
  simp only [A120941, Nat.add_sub_cancel, A120941.P12668993078253313241.a, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A000879, A000879.P11642258310759995278.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120941

/-! ## A120941.P9699270936225020825

`A250477(n+1)-3`
-/

namespace A120941.P9699270936225020825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - 3

end

end A120941.P9699270936225020825

namespace A120941

/-- `A250477(n+1)-3` -/
def P9699270936225020825.Spec : Prop :=
  ∀ n, P9699270936225020825.a n = A120941 (n + 1)

theorem P9699270936225020825.correct : P9699270936225020825.Spec := by
  intro n
  simp only [A120941, Nat.add_sub_cancel, A120941.P9699270936225020825.a, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250477, A250477.P16411795154775873264.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120941

/-! ## A120941.P7609700926905275672

`A256447(n+1)+A079047(n+1)`
-/

namespace A120941.P7609700926905275672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) + A079047 (n + 1)

end

end A120941.P7609700926905275672

namespace A120941

/-- `A256447(n+1)+A079047(n+1)` -/
def P7609700926905275672.Spec : Prop :=
  ∀ n, P7609700926905275672.a n = A120941 (n + 1)

end A120941

/-! ## A120941.P1546160985862798824

`A079047(n+2)-A256448(n+1)`
-/

namespace A120941.P1546160985862798824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079047 (n + 2) - A256448 (n + 1)

end

end A120941.P1546160985862798824

namespace A120941

/-- `A079047(n+2)-A256448(n+1)` -/
def P1546160985862798824.Spec : Prop :=
  ∀ n, P1546160985862798824.a n = A120941 (n + 1)

end A120941

/-! ## A120941.P17978579246272789244

`A284061(∑[n+1])-n`
-/

namespace A120941.P17978579246272789244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284061 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A120941.P17978579246272789244

namespace A120941

/-- `A284061(∑[n+1])-n` -/
def P17978579246272789244.Spec : Prop :=
  ∀ n, P17978579246272789244.a n = A120941 (n + 1)

end A120941

/-!
# A120942: 3-smooth numbers 2^i*3^j where i and j are regular 3-smooth numbers.

The programs for A120942, there is no canonical definition to state claims against.
-/

/-! ## A120942.P13091287233625122888

`6*A264165(n+1)`
-/

namespace A120942.P13091287233625122888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A264165 (n + 1)

end

end A120942.P13091287233625122888

/-! ## A120942.P2450954637796119420

`∩[A033845(n+1), A284698(n+1)]`
-/

namespace A120942.P2450954637796119420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120942.P2450954637796119420

/-! ## A120942.P18159458588425554422

`∩[A066312(n+1), A284698(n+1)]`
-/

namespace A120942.P18159458588425554422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120942.P18159458588425554422

/-! ## A120942.P10852763442516617458

`∩[A083263(n+1), A284698(n+1)]`
-/

namespace A120942.P10852763442516617458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120942.P10852763442516617458

/-! ## A120942.P3740882468541715028

`∩[A085129(n+1), A284698(n+1)]`
-/

namespace A120942.P3740882468541715028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120942.P3740882468541715028

/-! ## A120942.P11974959071928622796

`∩[A089341(n+1), A284698(n+1)]`
-/

namespace A120942.P11974959071928622796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120942.P11974959071928622796

/-! ## A120942.P17099595808002801916

`∩[A143957(n+1), A284698(n+1)]`
-/

namespace A120942.P17099595808002801916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120942.P17099595808002801916

/-! ## A120942.P7420601547516482930

`∩[A143958(n+1), A284698(n+1)]`
-/

namespace A120942.P7420601547516482930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120942.P7420601547516482930

/-! ## A120942.P15779875884565982776

`∩[A244193(n+1), A284698(n+1)]`
-/

namespace A120942.P15779875884565982776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120942.P15779875884565982776

/-! ## A120942.P16233158637774926046

`∩[A252044(n+1), A284698(n+1)]`
-/

namespace A120942.P16233158637774926046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120942.P16233158637774926046

/-!
# A120944: Composite squarefree numbers.

The programs for A120944, the canonical program `A120944.P15601852327349088346` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120944 has offset 1).

The definition of A120944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120944.P8105302619955648617

`sqrt(A177492(n+1))`
-/

namespace A120944.P8105302619955648617
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177492 (n + 1) : ℝ)

end

end A120944.P8105302619955648617

namespace A120944

/-- `sqrt(A177492(n+1))` -/
def P8105302619955648617.Spec : Prop :=
  ∀ n, P8105302619955648617.a n = (A120944 (n + 1) : ℝ)

end A120944

/-! ## A120944.P5213884985886391852

`A177493(n+1)^(1/3)`
-/

namespace A120944.P5213884985886391852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A177493 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A120944.P5213884985886391852

namespace A120944

/-- `A177493(n+1)^(1/3)` -/
def P5213884985886391852.Spec : Prop :=
  ∀ n, P5213884985886391852.a n = (A120944 (n + 1) : ℝ)

end A120944

/-! ## A120944.P8482606255623227548

`record[A007947(A097318(n+1))]`
-/

namespace A120944.P8482606255623227548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A097318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120944.P8482606255623227548

namespace A120944

/-- `record[A007947(A097318(n+1))]` -/
def P8482606255623227548.Spec : Prop :=
  ∀ n, P8482606255623227548.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P959617717473872205

`record[A007947(A344585(n+1))]`
-/

namespace A120944.P959617717473872205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A344585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120944.P959617717473872205

namespace A120944

/-- `record[A007947(A344585(n+1))]` -/
def P959617717473872205.Spec : Prop :=
  ∀ n, P959617717473872205.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P931309398174658877

`filter[A005117(n+1), A066247(#)]`
-/

namespace A120944.P931309398174658877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A120944.P931309398174658877

namespace A120944

/-- `filter[A005117(n+1), A066247(#)]` -/
def P931309398174658877.Spec : Prop :=
  ∀ n, P931309398174658877.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P12168626771755350862

`filter[A097318(n+1), A008966(#)]`
-/

namespace A120944.P12168626771755350862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A120944.P12168626771755350862

namespace A120944

/-- `filter[A097318(n+1), A008966(#)]` -/
def P12168626771755350862.Spec : Prop :=
  ∀ n, P12168626771755350862.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P11352818011551355200

`eq[A087049(n), A339579(n+1)]`
-/

namespace A120944.P11352818011551355200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120944.P11352818011551355200

namespace A120944

/-- `eq[A087049(n), A339579(n+1)]` -/
def P11352818011551355200.Spec : Prop :=
  ∀ n, (P11352818011551355200.a n : ℤ) = A120944 (n + 1)

end A120944

/-! ## A120944.P17303230174596800358

`eq[A105570(n), A339579(n+1)]`
-/

namespace A120944.P17303230174596800358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120944.P17303230174596800358

namespace A120944

/-- `eq[A105570(n), A339579(n+1)]` -/
def P17303230174596800358.Spec : Prop :=
  ∀ n, (P17303230174596800358.a n : ℤ) = A120944 (n + 1)

end A120944

/-! ## A120944.P17231183305380932580

`A177493(n+1)/A177492(n+1)`
-/

namespace A120944.P17231183305380932580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177493 (n + 1) : ℚ) / (A177492 (n + 1) : ℚ)

end

end A120944.P17231183305380932580

namespace A120944

/-- `A177493(n+1)/A177492(n+1)` -/
def P17231183305380932580.Spec : Prop :=
  ∀ n, P17231183305380932580.a n = (A120944 (n + 1) : ℚ)

end A120944

/-! ## A120944.P15601852327349088346

`eq[A005171(n+1), A051903(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120944

/-- `eq[A005171(n+1), A051903(n+1)]+1` -/
def P15601852327349088346.Spec : Prop :=
  ∀ n, (P15601852327349088346.a n : ℤ) = A120944 (n + 1)

theorem P15601852327349088346.correct : P15601852327349088346.Spec := by
  intro n
  simp only [A120944, Nat.add_sub_cancel]

end A120944

/-! ## A120944.P6888415665259918587

`A000469(n+2)`
-/

namespace A120944.P6888415665259918587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 2)

end

end A120944.P6888415665259918587

namespace A120944

/-- `A000469(n+2)` -/
def P6888415665259918587.Spec : Prop :=
  ∀ n, P6888415665259918587.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P9287006409308437452

`A361321(A361324(n+2))`
-/

namespace A120944.P9287006409308437452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (A361324 (n + 2)).toNat

end

end A120944.P9287006409308437452

namespace A120944

/-- `A361321(A361324(n+2))` -/
def P9287006409308437452.Spec : Prop :=
  ∀ n, P9287006409308437452.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P17186901988926851892

`filter[A182853(n+1), A008966(#)]`
-/

namespace A120944.P17186901988926851892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A120944.P17186901988926851892

namespace A120944

/-- `filter[A182853(n+1), A008966(#)]` -/
def P17186901988926851892.Spec : Prop :=
  ∀ n, P17186901988926851892.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P14003077001180499670

`filter[A388427(n+1), A008966(#)]`
-/

namespace A120944.P14003077001180499670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A120944.P14003077001180499670

namespace A120944

/-- `filter[A388427(n+1), A008966(#)]` -/
def P14003077001180499670.Spec : Prop :=
  ∀ n, P14003077001180499670.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P2181502157920646894

`filter[A388427(n+1), A323154(#)]`
-/

namespace A120944.P2181502157920646894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A120944.P2181502157920646894

namespace A120944

/-- `filter[A388427(n+1), A323154(#)]` -/
def P2181502157920646894.Spec : Prop :=
  ∀ n, P2181502157920646894.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P9300477102571803993

`filter[A388427(n+2), A353559(#)]`
-/

namespace A120944.P9300477102571803993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A120944.P9300477102571803993

namespace A120944

/-- `filter[A388427(n+2), A353559(#)]` -/
def P9300477102571803993.Spec : Prop :=
  ∀ n, P9300477102571803993.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P6024321472105972673

`filter[A388427(n+2), A354353(#)]`
-/

namespace A120944.P6024321472105972673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A120944.P6024321472105972673

namespace A120944

/-- `filter[A388427(n+2), A354353(#)]` -/
def P6024321472105972673.Spec : Prop :=
  ∀ n, P6024321472105972673.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P8540756531561862187

`filter[A388427(n+2), A354819(#)]`
-/

namespace A120944.P8540756531561862187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A120944.P8540756531561862187

namespace A120944

/-- `filter[A388427(n+2), A354819(#)]` -/
def P8540756531561862187.Spec : Prop :=
  ∀ n, P8540756531561862187.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P6441938078890800899

`filter[A002808(n+1), A008966(#)]`
-/

namespace A120944.P6441938078890800899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A120944.P6441938078890800899

namespace A120944

/-- `filter[A002808(n+1), A008966(#)]` -/
def P6441938078890800899.Spec : Prop :=
  ∀ n, P6441938078890800899.a n = A120944 (n + 1)

end A120944

/-! ## A120944.P16764273507341826865

`lt[2, A074206(n-A105570(n))]`
-/

namespace A120944.P16764273507341826865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 ((n : ℤ) - A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120944.P16764273507341826865

namespace A120944

/-- `lt[2, A074206(n-A105570(n))]` -/
def P16764273507341826865.Spec : Prop :=
  ∀ n, (P16764273507341826865.a n : ℤ) = A120944 (n + 1)

end A120944

/-!
# A120946: Least positive k such that Z(n) + k is prime, where Z(n) = 1357986420*(10^(10*n)-1)/(10^10-1).

The programs for A120946, there is no canonical definition to state claims against.
-/

/-! ## A120946.P1142983845062863481

`A350314(∑{d}[A356311(3*n+2), #])`
-/

namespace A120946.P1142983845062863481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356311 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350314 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A120946.P1142983845062863481

/-!
# A120947: a(n) = smallest m such that n-th prime divides Pell(m).

The programs for A120947, there is no canonical definition to state claims against.
-/

/-! ## A120947.P6482627555798663546

`A214028(p?[comp[n²]])`
-/

namespace A120947.P6482627555798663546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A120947.P6482627555798663546

/-! ## A120947.P16705354142311365410

`A214028(A000040(n+1))`
-/

namespace A120947.P16705354142311365410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (A000040 (n + 1)).toNat

end

end A120947.P16705354142311365410

/-! ## A120947.P231834212439676547

`A214028(A008578(n+2))`
-/

namespace A120947.P231834212439676547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (A008578 (n + 2)).toNat

end

end A120947.P231834212439676547

/-! ## A120947.P16148637297667406095

`A214028(A182986(n+2))`
-/

namespace A120947.P16148637297667406095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (A182986 (n + 2)).toNat

end

end A120947.P16148637297667406095

/-! ## A120947.P3414467243354404363

`A214028(eq[1, A032741(n)])`
-/

namespace A120947.P3414467243354404363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A120947.P3414467243354404363

/-! ## A120947.P17794791371351875901

`A214028(record[A006530(n+2)])`
-/

namespace A120947.P17794791371351875901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120947.P17794791371351875901

/-! ## A120947.P2517041258185160053

`A214028(record[A014963(n+2)])`
-/

namespace A120947.P2517041258185160053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120947.P2517041258185160053

/-! ## A120947.P11710338400904417885

`A214028(record[A020639(n+2)])`
-/

namespace A120947.P11710338400904417885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120947.P11710338400904417885

/-! ## A120947.P117348268695165870

`A214028(A006093(n+1)+1)`
-/

namespace A120947.P117348268695165870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (A006093 (n + 1) + 1).toNat

end

end A120947.P117348268695165870

/-! ## A120947.P8156540168540014032

`A214028(record[A067240(n+2)+1])`
-/

namespace A120947.P8156540168540014032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067240 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120947.P8156540168540014032

/-!
# A120948: a(n) = 8n+3^n+5^n.

The programs for A120948, the canonical program `A120948.P1880589499604306359` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120948 has offset 0).

The definition of A120948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n+3^n+5^n` (program `A120948.P1880589499604306359`, by `A120948.P1880589499604306359.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120948.P1880589499604306359

`8*n+3^n+5^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120948

/-- `8*n+3^n+5^n` -/
def P1880589499604306359.Spec : Prop :=
  ∀ n, (P1880589499604306359.a n : ℤ) = A120948 n

theorem P1880589499604306359.correct : P1880589499604306359.Spec := by
  intro n
  simp only [A120948]

end A120948

/-! ## A120948.P7446710499680615569

`ogf((2-4x-46x^2+112x^3)/(1-10x+32x^2-38x^3+15x^4))`
-/

namespace A120948.P7446710499680615569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, -46, 112] [1, -10, 32, -38, 15] n

end

end A120948.P7446710499680615569

namespace A120948

/-- `ogf((2-4x-46x^2+112x^3)/(1-10x+32x^2-38x^3+15x^4))` -/
def P7446710499680615569.Spec : Prop :=
  ∀ n, P7446710499680615569.a n = A120948 n

end A120948

/-! ## A120948.P12844159348818671280

`2*(A081186(n)+4*n)`
-/

namespace A120948.P12844159348818671280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081186 n + (4 * n : ℤ))

end

end A120948.P12844159348818671280

namespace A120948

/-- `2*(A081186(n)+4*n)` -/
def P12844159348818671280.Spec : Prop :=
  ∀ n, P12844159348818671280.a n = A120948 n

end A120948

/-! ## A120948.P14144583539405205595

`abs(A120969(n)+Δ[3^n])`
-/

namespace A120948.P14144583539405205595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120969 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A120948.P14144583539405205595

namespace A120948

/-- `abs(A120969(n)+Δ[3^n])` -/
def P14144583539405205595.Spec : Prop :=
  ∀ n, P14144583539405205595.a n = A120948 n

end A120948

/-! ## A120948.P2034067773497190450

`ceil(A221907(n)+(A225367(2*(n+1))+6*n)/2)`
-/

namespace A120948.P2034067773497190450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A221907 n : ℚ) + (A225367 (2 * (n + 1)) + (6 * n : ℤ) : ℚ) / 2⌉

end

end A120948.P2034067773497190450

namespace A120948

/-- `ceil(A221907(n)+(A225367(2*(n+1))+6*n)/2)` -/
def P2034067773497190450.Spec : Prop :=
  ∀ n, P2034067773497190450.a n = A120948 n

end A120948

/-! ## A120948.P375364755441875006

`(A221907(n)+A221905(n))%A198398(n+2)`
-/

namespace A120948.P375364755441875006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221907 n + A221905 n) (A198398 (n + 2))

end

end A120948.P375364755441875006

namespace A120948

/-- `(A221907(n)+A221905(n))%A198398(n+2)` -/
def P375364755441875006.Spec : Prop :=
  ∀ n, P375364755441875006.a n = A120948 n

end A120948

/-!
# A120949: a(n) = 2n+3^n+5^n.

The programs for A120949, the canonical program `A120949.P15335786404491918489` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120949 has offset 0).

The definition of A120949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n+3^n+5^n` (program `A120949.P15335786404491918489`, by `A120949.P15335786404491918489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120949.P15335786404491918489

`2*n+3^n+5^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120949

/-- `2*n+3^n+5^n` -/
def P15335786404491918489.Spec : Prop :=
  ∀ n, (P15335786404491918489.a n : ℤ) = A120949 n

theorem P15335786404491918489.correct : P15335786404491918489.Spec := by
  intro n
  simp only [A120949]

end A120949

/-! ## A120949.P4567319839576038418

`ogf((2-10x+2x^2+22x^3)/(1-10x+32x^2-38x^3+15x^4))`
-/

namespace A120949.P4567319839576038418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10, 2, 22] [1, -10, 32, -38, 15] n

end

end A120949.P4567319839576038418

namespace A120949

/-- `ogf((2-10x+2x^2+22x^3)/(1-10x+32x^2-38x^3+15x^4))` -/
def P4567319839576038418.Spec : Prop :=
  ∀ n, P4567319839576038418.a n = A120949 n

end A120949

/-! ## A120949.P13457843918128611121

`2*(A081186(n)+n)`
-/

namespace A120949.P13457843918128611121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081186 n + (n : ℤ))

end

end A120949.P13457843918128611121

namespace A120949

/-- `2*(A081186(n)+n)` -/
def P13457843918128611121.Spec : Prop :=
  ∀ n, P13457843918128611121.a n = A120949 n

end A120949

/-! ## A120949.P11573033410390758364

`abs(6*n-A120948(n))`
-/

namespace A120949.P11573033410390758364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * n : ℤ) - A120948 n|

end

end A120949.P11573033410390758364

namespace A120949

/-- `abs(6*n-A120948(n))` -/
def P11573033410390758364.Spec : Prop :=
  ∀ n, P11573033410390758364.a n = A120949 n

end A120949

/-! ## A120949.P17533362981007876533

`abs(A155603(n)+Δ[n²])`
-/

namespace A120949.P17533362981007876533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155603 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A120949.P17533362981007876533

namespace A120949

/-- `abs(A155603(n)+Δ[n²])` -/
def P17533362981007876533.Spec : Prop :=
  ∀ n, P17533362981007876533.a n = A120949 n

end A120949

/-! ## A120949.P18343871164303789406

`2*(A074606(n)/2+n)`
-/

namespace A120949.P18343871164303789406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A074606 n : ℚ) / 2 + (n : ℚ))

end

end A120949.P18343871164303789406

namespace A120949

/-- `2*(A074606(n)/2+n)` -/
def P18343871164303789406.Spec : Prop :=
  ∀ n, P18343871164303789406.a n = (A120949 n : ℚ)

theorem P18343871164303789406.correct : P18343871164303789406.Spec := by
  intro n
  simp only [A120949, Nat.add_sub_cancel, A120949.P18343871164303789406.a, A120949.P15335786404491918489.a, A074606, A074606.P17107400510171925079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120949

/-! ## A120949.P14249950383541159273

`xor(1, A074507(n)+2*n)`
-/

namespace A120949.P14249950383541159273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074507 n + (2 * n : ℤ))

end

end A120949.P14249950383541159273

namespace A120949

/-- `xor(1, A074507(n)+2*n)` -/
def P14249950383541159273.Spec : Prop :=
  ∀ n, P14249950383541159273.a n = A120949 n

end A120949

/-! ## A120949.P7167260289530540023

`2*(Δ[A233106(n+1)]+n)`
-/

namespace A120949.P7167260289530540023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + (n : ℤ))

end

end A120949.P7167260289530540023

namespace A120949

/-- `2*(Δ[A233106(n+1)]+n)` -/
def P7167260289530540023.Spec : Prop :=
  ∀ n, P7167260289530540023.a n = A120949 n

end A120949

/-! ## A120949.P5801783646490006495

`abs(2*n+1-(A000051(n)-A074527(n)))`
-/

namespace A120949.P5801783646490006495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - (A000051 n - A074527 n)|

end

end A120949.P5801783646490006495

namespace A120949

/-- `abs(2*n+1-(A000051(n)-A074527(n)))` -/
def P5801783646490006495.Spec : Prop :=
  ∀ n, P5801783646490006495.a n = A120949 n

end A120949

/-!
# A120950: a(n) = 3^n+5^n-2n.

The programs for A120950, the canonical program `A120950.P13378149000170030905` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120950 has offset 0).

The definition of A120950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5^n-2*n` (program `A120950.P13378149000170030905`, by `A120950.P13378149000170030905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120950.P13378149000170030905

`3^n+5^n-2*n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120950

/-- `3^n+5^n-2*n` -/
def P13378149000170030905.Spec : Prop :=
  ∀ n, P13378149000170030905.a n = A120950 n

theorem P13378149000170030905.correct : P13378149000170030905.Spec := by
  intro n
  simp only [A120950]

end A120950

/-! ## A120950.P12729689176410255102

`ogf((2-14x+34x^2-38x^3)/(1-10x+32x^2-38x^3+15x^4))`
-/

namespace A120950.P12729689176410255102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -14, 34, -38] [1, -10, 32, -38, 15] n

end

end A120950.P12729689176410255102

namespace A120950

/-- `ogf((2-14x+34x^2-38x^3)/(1-10x+32x^2-38x^3+15x^4))` -/
def P12729689176410255102.Spec : Prop :=
  ∀ n, P12729689176410255102.a n = A120950 n

end A120950

/-! ## A120950.P4830548724976958862

`2*(A081186(n)-n)`
-/

namespace A120950.P4830548724976958862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081186 n - (n : ℤ))

end

end A120950.P4830548724976958862

namespace A120950

/-- `2*(A081186(n)-n)` -/
def P4830548724976958862.Spec : Prop :=
  ∀ n, P4830548724976958862.a n = A120950 n

end A120950

/-! ## A120950.P12274528113597198290

`abs(2*n-A074606(n))`
-/

namespace A120950.P12274528113597198290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A074606 n|

end

end A120950.P12274528113597198290

namespace A120950

/-- `abs(2*n-A074606(n))` -/
def P12274528113597198290.Spec : Prop :=
  ∀ n, P12274528113597198290.a n = A120950 n

end A120950

/-! ## A120950.P17829541973865432450

`abs(4*n-A120949(n))`
-/

namespace A120950.P17829541973865432450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * n : ℤ) - A120949 n|

end

end A120950.P17829541973865432450

namespace A120950

/-- `abs(4*n-A120949(n))` -/
def P17829541973865432450.Spec : Prop :=
  ∀ n, P17829541973865432450.a n = A120950 n

end A120950

/-! ## A120950.P11254912085643659421

`abs(2*n-1-A155603(n))`
-/

namespace A120950.P11254912085643659421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 1 - A155603 n|

end

end A120950.P11254912085643659421

namespace A120950

/-- `abs(2*n-1-A155603(n))` -/
def P11254912085643659421.Spec : Prop :=
  ∀ n, P11254912085643659421.a n = A120950 n

end A120950

/-! ## A120950.P16269358093615152392

`2*(Δ[A233106(n+1)]-n)`
-/

namespace A120950.P16269358093615152392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - (n : ℤ))

end

end A120950.P16269358093615152392

namespace A120950

/-- `2*(Δ[A233106(n+1)]-n)` -/
def P16269358093615152392.Spec : Prop :=
  ∀ n, P16269358093615152392.a n = A120950 n

end A120950

/-! ## A120950.P10819719405612224512

`abs(A074606(n)-A005843(n))`
-/

namespace A120950.P10819719405612224512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074606 n - A005843 n|

end

end A120950.P10819719405612224512

namespace A120950

/-- `abs(A074606(n)-A005843(n))` -/
def P10819719405612224512.Spec : Prop :=
  ∀ n, P10819719405612224512.a n = A120950 n

end A120950

/-! ## A120950.P8836720256284714498

`abs(2*n-(A000351(n)+A000244(n)))`
-/

namespace A120950.P8836720256284714498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (A000351 n + A000244 n)|

end

end A120950.P8836720256284714498

namespace A120950

/-- `abs(2*n-(A000351(n)+A000244(n)))` -/
def P8836720256284714498.Spec : Prop :=
  ∀ n, P8836720256284714498.a n = A120950 n

end A120950

/-!
# A120951: Numbers that are not the sum of 5 distinct nonzero squares.

The programs for A120951, there is no canonical definition to state claims against.
-/

/-! ## A120951.P14771940209316552275

`record[gcd(n+1, A025444(n+1))]`
-/

namespace A120951.P14771940209316552275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025444 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120951.P14771940209316552275

/-! ## A120951.P3140475101475098458

`record[gcd(A025444(n), A028310(n))]`
-/

namespace A120951.P3140475101475098458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025444 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120951.P3140475101475098458

/-! ## A120951.P770499816430697126

`record[A000027(n+1)/(A025444(n+1)+1)]`
-/

namespace A120951.P770499816430697126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A025444 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120951.P770499816430697126

/-! ## A120951.P4259235427745607561

`record[(n+1)/A000290(A025444(n+1)+1)]`
-/

namespace A120951.P4259235427745607561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000290 (A025444 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120951.P4259235427745607561

/-! ## A120951.P6174101627433300555

`record[(n+1)/A000045(A025444(n+1)+2)]`
-/

namespace A120951.P6174101627433300555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000045 (A025444 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120951.P6174101627433300555

/-! ## A120951.P10182495433480230806

`record[n+2-A000143(2*A025444(n+1))]`
-/

namespace A120951.P10182495433480230806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000143 (2 * A025444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120951.P10182495433480230806

/-! ## A120951.P8175370457966694006

`record[(n+1)/A000041(2*A025444(n+1))]`
-/

namespace A120951.P8175370457966694006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000041 (2 * A025444 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120951.P8175370457966694006

/-! ## A120951.P18140649891392243527

`floor(A326036(n)/(2*A000040(n+1))+n)+1`
-/

namespace A120951.P18140649891392243527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326036 n : ℚ) / (2 * A000040 (n + 1) : ℚ) + (n : ℚ)⌋ + 1

end

end A120951.P18140649891392243527

/-! ## A120951.P12690578782177319182

`A112377(C(A059906(n)+n, 59)²)+n`
-/

namespace A120951.P12690578782177319182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112377 (Nat.choose (A059906 n + (n : ℤ)).toNat 59 ^ 2) + (n : ℤ)

end

end A120951.P12690578782177319182

/-!
# A120955: G.f. A(x) satisfies: Series_Reversion( x/A(x) ) / x = 2*A(x) - (1+x).

The programs for A120955, there is no canonical definition to state claims against.
-/

/-! ## A120955.P7704302638401732504

`ceil(A120956(n)/2)`
-/

namespace A120955.P7704302638401732504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120956 n : ℚ) / 2⌉

end

end A120955.P7704302638401732504

/-! ## A120955.P7348398422838997519

`A120956(A233583(n+1))/2`
-/

namespace A120955.P7348398422838997519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120956 (A233583 (n + 1)).toNat : ℚ) / 2

end

end A120955.P7348398422838997519

/-! ## A120955.P14567945296885840443

`A120956(n)/(A004197(A000124(n))+1)`
-/

namespace A120955.P14567945296885840443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120956 n : ℚ) / (A004197 (A000124 n).toNat + 1 : ℚ)

end

end A120955.P14567945296885840443

/-! ## A120955.P8574610401690861433

`A120956(n)/A071364(A136548(n+1))`
-/

namespace A120955.P8574610401690861433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120956 n : ℚ) / (A071364 (A136548 (n + 1)).toNat : ℚ)

end

end A120955.P8574610401690861433

/-! ## A120955.P309231910162196388

`ceil(2^A008683(A003629(n+1))*A120956(n))`
-/

namespace A120955.P309231910162196388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) * (A120956 n : ℚ)⌉

end

end A120955.P309231910162196388

/-! ## A120955.P17070044187198804057

`(A120956(n)/2)^A112299((A000010(n+1)+1)²)`
-/

namespace A120955.P17070044187198804057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A120956 n : ℚ) / 2) ^ (A112299 ((A000010 (n + 1) + 1) ^ 2).toNat : ℤ)

end

end A120955.P17070044187198804057

/-!
# A120956: G.f. A(x) satisfies x / Series_Reversion(x*A(x)) = (A(x) + 1+x)/2.

The programs for A120956, there is no canonical definition to state claims against.
-/

/-! ## A120956.P9211219225792549679

`A000034(A082084(n+1))*A120955(n)`
-/

namespace A120956.P9211219225792549679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A082084 (n + 1)).toNat * A120955 n

end

end A120956.P9211219225792549679

/-! ## A120956.P9001985447117314282

`A071364(A136548(n+1))*A120955(n)`
-/

namespace A120956.P9001985447117314282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A136548 (n + 1)).toNat * A120955 n

end

end A120956.P9001985447117314282

/-! ## A120956.P937043001597024719

`A001285(a(A189117(n)))*A120955(n)` with `a(0)=1, a(1)=1`
-/

namespace A120956.P937043001597024719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001285 (a (A189117 n).toNat).toNat * A120955 n

end

end A120956.P937043001597024719

/-! ## A120956.P1567111272013927372

`A120955(n)+A120955(n)%A120980(n)`
-/

namespace A120956.P1567111272013927372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120955 n + Int.tmod (A120955 n) (A120980 n)

end

end A120956.P1567111272013927372

/-! ## A120956.P12893346175405132935

`A036453(A000041(n))*A120955(n)`
-/

namespace A120956.P12893346175405132935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A000041 n).toNat * A120955 n

end

end A120956.P12893346175405132935

/-!
# A120957: Sequence uniquely defined by: n*a(n) = (n-1)*[x^n] B(x) for n>1 with a(0)=a(1)=1, or, equivalently, x*A'(x) = 1+x - B(x) + x*B'(x), where B(x) = series_reversion(x/A(x))/x.

The programs for A120957, there is no canonical definition to state claims against.
-/

/-! ## A120957.P17443738539367154870

`A028310(A092985(n)%A349731(n))`
-/

namespace A120957.P17443738539367154870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A092985 n) (A349731 n)).toNat

end

end A120957.P17443738539367154870

/-! ## A120957.P7242827880450462559

`A100903(A049864(n))%A100908(n+1)`
-/

namespace A120957.P7242827880450462559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100903 (A049864 n).toNat) (A100908 (n + 1))

end

end A120957.P7242827880450462559

/-!
# A120958: Sequence uniquely defined by: (n-1)*a(n) = n*[x^n] B(x) for n>1 with a(0)=a(1)=1, or, equivalently, 1+x - A(x) + x*A'(x) = x*B'(x), where B(x) = x/series_reversion(x*A(x)).

The programs for A120958, there is no canonical definition to state claims against.
-/

/-! ## A120958.P15264849107367707374

`A000010(A137729(n)+A000108(n))`
-/

namespace A120958.P15264849107367707374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A137729 n + A000108 n).toNat

end

end A120958.P15264849107367707374

/-! ## A120958.P18031075593531019974

`A000010(A230316(n)+A065355(n))`
-/

namespace A120958.P18031075593531019974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A230316 n + A065355 n).toNat

end

end A120958.P18031075593531019974

/-!
# A120959: G.f.: A(x) = 1+x*(1+x*(1+x*(...(1+x*(...)^(2^n) )...)^8)^4)^2.

The programs for A120959, there is no canonical definition to state claims against.
-/

/-! ## A120959.P14222244263634541732

`n*(A226644(a(n-1))+a(n-1))` with `a(0)=1`
-/

namespace A120959.P14222244263634541732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A226644 (a (n - 1)).toNat + a (n - 1))

end

end A120959.P14222244263634541732

/-! ## A120959.P6565107024552182009

`A189887(∑[A001187(n)])`
-/

namespace A120959.P6565107024552182009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189887 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120959.P6565107024552182009

/-!
# A120960: Pythagorean prime powers.

The programs for A120960, the canonical program `A120960.P7319328844607267652` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120960 has offset 1).

The definition of A120960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120960.P15646704707456419084

`A224450(eq[1, A224450(n+1)%2]+1)`
-/

namespace A120960.P15646704707456419084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224450 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A120960.P15646704707456419084

namespace A120960

/-- `A224450(eq[1, A224450(n+1)%2]+1)` -/
def P15646704707456419084.Spec : Prop :=
  ∀ n, P15646704707456419084.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P13287295941084792375

`∩[A004613(n+1), A224450(n+1)]`
-/

namespace A120960.P13287295941084792375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120960.P13287295941084792375

namespace A120960

/-- `∩[A004613(n+1), A224450(n+1)]` -/
def P13287295941084792375.Spec : Prop :=
  ∀ n, (P13287295941084792375.a n : ℤ) = A120960 (n + 1)

end A120960

/-! ## A120960.P1030517867819943444

`∩[A008846(n+1), A061345(n)]`
-/

namespace A120960.P1030517867819943444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120960.P1030517867819943444

namespace A120960

/-- `∩[A008846(n+1), A061345(n)]` -/
def P1030517867819943444.Spec : Prop :=
  ∀ n, (P1030517867819943444.a n : ℤ) = A120960 (n + 1)

end A120960

/-! ## A120960.P14744299497963671509

`∩[A224450(n+1), A061345(n)]`
-/

namespace A120960.P14744299497963671509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120960.P14744299497963671509

namespace A120960

/-- `∩[A224450(n+1), A061345(n)]` -/
def P14744299497963671509.Spec : Prop :=
  ∀ n, (P14744299497963671509.a n : ℤ) = A120960 (n + 1)

end A120960

/-! ## A120960.P15332949794666689512

`∩[A000961(n+1), A008846(n+1)]`
-/

namespace A120960.P15332949794666689512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120960.P15332949794666689512

namespace A120960

/-- `∩[A000961(n+1), A008846(n+1)]` -/
def P15332949794666689512.Spec : Prop :=
  ∀ n, (P15332949794666689512.a n : ℤ) = A120960 (n + 1)

end A120960

/-! ## A120960.P16431508705200575044

`filter[2*n+1, A354110(#)]`
-/

namespace A120960.P16431508705200575044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354110 (f1 j) = 1) n)

end

end A120960.P16431508705200575044

namespace A120960

/-- `filter[2*n+1, A354110(#)]` -/
def P16431508705200575044.Spec : Prop :=
  ∀ n, (P16431508705200575044.a n : ℤ) = A120960 (n + 1)

end A120960

/-! ## A120960.P9894231809903956419

`∩[2*n+1, A224450(n+1)]`
-/

namespace A120960.P9894231809903956419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120960.P9894231809903956419

namespace A120960

/-- `∩[2*n+1, A224450(n+1)]` -/
def P9894231809903956419.Spec : Prop :=
  ∀ n, (P9894231809903956419.a n : ℤ) = A120960 (n + 1)

end A120960

/-! ## A120960.P8758876530227995263

`filter[A061345(n), A353814(#)]`
-/

namespace A120960.P8758876530227995263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A120960.P8758876530227995263

namespace A120960

/-- `filter[A061345(n), A353814(#)]` -/
def P8758876530227995263.Spec : Prop :=
  ∀ n, P8758876530227995263.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P14701871059043946430

`filter[A004613(n+1), A069513(#)]`
-/

namespace A120960.P14701871059043946430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A120960.P14701871059043946430

namespace A120960

/-- `filter[A004613(n+1), A069513(#)]` -/
def P14701871059043946430.Spec : Prop :=
  ∀ n, P14701871059043946430.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P7319328844607267652

`filter[A008846(n+1), A069513(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A120960

/-- `filter[A008846(n+1), A069513(#)]` -/
def P7319328844607267652.Spec : Prop :=
  ∀ n, P7319328844607267652.a n = A120960 (n + 1)

theorem P7319328844607267652.correct : P7319328844607267652.Spec := by
  intro n
  simp only [A120960, Nat.add_sub_cancel]

end A120960

/-! ## A120960.P14109561313310679104

`filter[A000961(n+1), A353814(#)]`
-/

namespace A120960.P14109561313310679104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A120960.P14109561313310679104

namespace A120960

/-- `filter[A000961(n+1), A353814(#)]` -/
def P14109561313310679104.Spec : Prop :=
  ∀ n, P14109561313310679104.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P7899396525918837630

`filter[A224450(n+1), A187074(#)]`
-/

namespace A120960.P7899396525918837630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A120960.P7899396525918837630

namespace A120960

/-- `filter[A224450(n+1), A187074(#)]` -/
def P7899396525918837630.Spec : Prop :=
  ∀ n, P7899396525918837630.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P2156703389584494179

`filter[A081061(n+1), A353814(#)]`
-/

namespace A120960.P2156703389584494179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A120960.P2156703389584494179

namespace A120960

/-- `filter[A081061(n+1), A353814(#)]` -/
def P2156703389584494179.Spec : Prop :=
  ∀ n, P2156703389584494179.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P4036562296101273816

`filter[A085759(n+1), A353814(#)]`
-/

namespace A120960.P4036562296101273816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A120960.P4036562296101273816

namespace A120960

/-- `filter[A085759(n+1), A353814(#)]` -/
def P4036562296101273816.Spec : Prop :=
  ∀ n, P4036562296101273816.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P17063132733202022031

`filter[A185189(n+1), A353814(#)]`
-/

namespace A120960.P17063132733202022031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A120960.P17063132733202022031

namespace A120960

/-- `filter[A185189(n+1), A353814(#)]` -/
def P17063132733202022031.Spec : Prop :=
  ∀ n, P17063132733202022031.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P14950679285578488292

`filter[A225657(n+1), A353814(#)]`
-/

namespace A120960.P14950679285578488292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A120960.P14950679285578488292

namespace A120960

/-- `filter[A225657(n+1), A353814(#)]` -/
def P14950679285578488292.Spec : Prop :=
  ∀ n, P14950679285578488292.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P7362814466512162807

`filter[A235868(n+1), A353814(#)]`
-/

namespace A120960.P7362814466512162807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A120960.P7362814466512162807

namespace A120960

/-- `filter[A235868(n+1), A353814(#)]` -/
def P7362814466512162807.Spec : Prop :=
  ∀ n, P7362814466512162807.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P17302186152076702427

`filter[A246655(n+1), A353814(#)]`
-/

namespace A120960.P17302186152076702427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A120960.P17302186152076702427

namespace A120960

/-- `filter[A246655(n+1), A353814(#)]` -/
def P17302186152076702427.Spec : Prop :=
  ∀ n, P17302186152076702427.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P705121009571791741

`filter[A224450(n+2), A069513(#)]`
-/

namespace A120960.P705121009571791741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A120960.P705121009571791741

namespace A120960

/-- `filter[A224450(n+2), A069513(#)]` -/
def P705121009571791741.Spec : Prop :=
  ∀ n, P705121009571791741.a n = A120960 (n + 1)

end A120960

/-! ## A120960.P7739988399372962072

`∩[A004613(n+1), A071139(n+1)]`
-/

namespace A120960.P7739988399372962072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120960.P7739988399372962072

namespace A120960

/-- `∩[A004613(n+1), A071139(n+1)]` -/
def P7739988399372962072.Spec : Prop :=
  ∀ n, (P7739988399372962072.a n : ℤ) = A120960 (n + 1)

end A120960

/-!
# A120961: Composite hypotenuses of primitive Pythagorean triangles.

The programs for A120961, there is no canonical definition to state claims against.
-/

/-! ## A120961.P13922054762282538244

`∪[A024409(n+1), A146945(n+1)]`
-/

namespace A120961.P13922054762282538244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120961.P13922054762282538244

/-! ## A120961.P10974812438104127694

`∪[A024409(n+1), A285579(n+1)]`
-/

namespace A120961.P10974812438104127694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120961.P10974812438104127694

/-! ## A120961.P5057428723026204634

`∩[A004613(n+1), A174051(n+1)]`
-/

namespace A120961.P5057428723026204634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120961.P5057428723026204634

/-! ## A120961.P17572062723705863090

`∩[A008846(n+1), A174051(n+1)]`
-/

namespace A120961.P17572062723705863090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120961.P17572062723705863090

/-! ## A120961.P10843857798878823278

`∩[2*n+1, A174051(n+1)]`
-/

namespace A120961.P10843857798878823278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120961.P10843857798878823278

/-! ## A120961.P8135305182602696218

`filter[A174051(n+1), A187074(#)]`
-/

namespace A120961.P8135305182602696218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A120961.P8135305182602696218

/-! ## A120961.P4973615861536973047

`filter[A008846(n+1), A373978(#)]`
-/

namespace A120961.P4973615861536973047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A120961.P4973615861536973047

/-! ## A120961.P3832922981025555836

`filter[A004613(n+2), A373978(#)]`
-/

namespace A120961.P3832922981025555836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A120961.P3832922981025555836

/-! ## A120961.P10207522139304160694

`∩[A004613(n+1), A118882(n+1)]`
-/

namespace A120961.P10207522139304160694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120961.P10207522139304160694

/-! ## A120961.P5200809426785092032

`∩[A008846(n+1), A118882(n+1)]`
-/

namespace A120961.P5200809426785092032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120961.P5200809426785092032

/-! ## A120961.P7346778524612326122

`∩[A004613(n+1), A181782(n+1)]`
-/

namespace A120961.P7346778524612326122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120961.P7346778524612326122

/-! ## A120961.P8462368053211994288

`∩[A008846(n+1), A054520(n+1)]`
-/

namespace A120961.P8462368053211994288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120961.P8462368053211994288

/-! ## A120961.P2263424963610086765

`filter[A008784(n+2), A373978(#)]`
-/

namespace A120961.P2263424963610086765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A120961.P2263424963610086765

/-! ## A120961.P7123521925799627098

`∩[A181782(n+1), A008784(n+1)]`
-/

namespace A120961.P7123521925799627098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120961.P7123521925799627098

/-! ## A120961.P2575482736884939934

`filter[A008846(n+1), A005171(#)]`
-/

namespace A120961.P2575482736884939934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A120961.P2575482736884939934

/-! ## A120961.P12428419067308559289

`filter[A004613(n+1), A066247(#)]`
-/

namespace A120961.P12428419067308559289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A120961.P12428419067308559289

/-! ## A120961.P8823312922907295165

`filter[A008846(n+1), A066247(#)]`
-/

namespace A120961.P8823312922907295165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A120961.P8823312922907295165

/-! ## A120961.P6851993161206515111

`filter[A004613(n+1), A202238(#)]`
-/

namespace A120961.P6851993161206515111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A120961.P6851993161206515111

/-! ## A120961.P14633243215291477504

`filter[A174051(n+1), A035263(#)]`
-/

namespace A120961.P14633243215291477504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A120961.P14633243215291477504

/-! ## A120961.P6675626168880101299

`filter[A008846(n+1), A202238(#)]`
-/

namespace A120961.P6675626168880101299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A120961.P6675626168880101299

/-!
# A120962: Final digit (in decimal system) of n^(n^n), i.e., n^(n^n) mod 10.

The programs for A120962, the canonical program `A120962.P14779563592514611130` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120962 has offset 0).

The definition of A120962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120962.P14779563592514611130

`A056849(A022998(n)+20)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120962

/-- `A056849(A022998(n)+20)` -/
def P14779563592514611130.Spec : Prop :=
  ∀ n, P14779563592514611130.a n = A120962 n

theorem P14779563592514611130.correct : P14779563592514611130.Spec := by
  intro n
  simp only [A120962]

end A120962

/-!
# A120963: Number of monic polynomials with integer coefficients of degree n with all roots on the unit circle; number of products of cyclotomic polynomials of degree n.

The programs for A120963, there is no canonical definition to state claims against.
-/

/-! ## A120963.P10955294875025464113

`∑[A347428(n)]`
-/

namespace A120963.P10955294875025464113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120963.P10955294875025464113

/-! ## A120963.P8348003332970481262

`A040001(2*n)*A341710(A028310(n))`
-/

namespace A120963.P8348003332970481262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A341710 (A028310 n).toNat

end

end A120963.P8348003332970481262

/-! ## A120963.P697671303207555828

`(2*(n+1)-A004277(n))*A341710(A028310(n))`
-/

namespace A120963.P697671303207555828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A004277 n) * A341710 (A028310 n).toNat

end

end A120963.P697671303207555828

/-! ## A120963.P11367165416054909771

`A341710(n+1)+A341710(n+1)-A347428(n+1)`
-/

namespace A120963.P11367165416054909771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341710 (n + 1) + (A341710 (n + 1) - A347428 (n + 1))

end

end A120963.P11367165416054909771

/-! ## A120963.P5469264648969484299

`A004277(n/A028310(n))*A341710(A028310(n))`
-/

namespace A120963.P5469264648969484299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat * A341710 (A028310 n).toNat

end

end A120963.P5469264648969484299

/-! ## A120963.P11518817913748849222

`A134451(A004275(2*n+1))*A341710(A028310(n))`
-/

namespace A120963.P11518817913748849222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A004275 (2 * n + 1)).toNat * A341710 (A028310 n).toNat

end

end A120963.P11518817913748849222

/-! ## A120963.P15759772417961791552

`A051894(n+1)-(A347428(n+1)+A051894(n))`
-/

namespace A120963.P15759772417961791552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051894 (n + 1) - (A347428 (n + 1) + A051894 n)

end

end A120963.P15759772417961791552

/-! ## A120963.P12673130751972322688

`A134451(A216885(n+1)+1)*A341710(A028310(n))`
-/

namespace A120963.P12673130751972322688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A216885 (n + 1) + 1).toNat * A341710 (A028310 n).toNat

end

end A120963.P12673130751972322688

/-!
# A120965: An infinite audioactive word, one of four in the cycle that results from the limit of the 'Look and Say' sequence using method B with an initial term of 1.

The programs for A120965, there is no canonical definition to state claims against.
-/

/-! ## A120965.P14331420427340057892

`A020650(gcd(A006318(n), A332251(3*n+2)))`
-/

namespace A120965.P14331420427340057892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (Int.gcd (A006318 n) (A332251 (3 * n + 2)))

end

end A120965.P14331420427340057892

/-! ## A120965.P448965745563549864

`A366246(A301491(2*n+5)+A072202(n+1))`
-/

namespace A120965.P448965745563549864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366246 (A301491 (2 * n + 5) + A072202 (n + 1)).toNat

end

end A120965.P448965745563549864

/-! ## A120965.P12598460738247954506

`A136691(A062489(n)*A254827(n+1))`
-/

namespace A120965.P12598460738247954506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136691 (A062489 n * A254827 (n + 1)).toNat

end

end A120965.P12598460738247954506

/-! ## A120965.P9722569656972548967

`A265743(A240192(n+1)*A313553(n))`
-/

namespace A120965.P9722569656972548967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265743 (A240192 (n + 1) * A313553 n).toNat

end

end A120965.P9722569656972548967

/-! ## A120965.P14199038202758810160

`A127992(gcd(A105276(2*n+5), A105276(n+1)))`
-/

namespace A120965.P14199038202758810160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127992 (Int.gcd (A105276 (2 * n + 5)) (A105276 (n + 1)))

end

end A120965.P14199038202758810160

/-!
# A120966: An infinite audioactive word, one of four in the cycle that results from the limit of the 'Look and Say' sequence using method B with an initial term of 1.

The programs for A120966, there is no canonical definition to state claims against.
-/

/-! ## A120966.P11003552571996210015

`A051903(A028387(n)*A345795(n+1))`
-/

namespace A120966.P11003552571996210015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A028387 n * A345795 (n + 1)).toNat

end

end A120966.P11003552571996210015

/-! ## A120966.P3785261312332923463

`A156352(A112682(n+5)^A000002(n+2))`
-/

namespace A120966.P3785261312332923463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156352 (SequenceMachineLib.roundAway ((A112682 (n + 5) : ℚ) ^ (A000002 (n + 2) : ℤ))).toNat

end

end A120966.P3785261312332923463

/-! ## A120966.P16314631387599537130

`gcd(A000120(A074884(n+1)), A299990(n+1))`
-/

namespace A120966.P16314631387599537130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A074884 (n + 1)).toNat) (A299990 (n + 1))

end

end A120966.P16314631387599537130

/-! ## A120966.P9686238610957827055

`A277822(A106621(n)+A003214(n))`
-/

namespace A120966.P9686238610957827055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A106621 n + A003214 n).toNat

end

end A120966.P9686238610957827055

/-! ## A120966.P13617047681026650061

`gcd(A008458(n), A263111(A305370(n)))`
-/

namespace A120966.P13617047681026650061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008458 n) (A263111 (A305370 n).toNat)

end

end A120966.P13617047681026650061

/-!
# A120967: An infinite audioactive word, one of four in the cycle that results from the limit of the 'Look and Say' sequence using method B with an initial term of 1.

The programs for A120967, there is no canonical definition to state claims against.
-/

/-! ## A120967.P15889057014257165685

`A096309(A223885(n+1))`
-/

namespace A120967.P15889057014257165685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096309 (A223885 (n + 1)).toNat

end

end A120967.P15889057014257165685

/-! ## A120967.P12416596049103616974

`A090822(A200935(n+1)-5)`
-/

namespace A120967.P12416596049103616974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A200935 (n + 1) - 5).toNat

end

end A120967.P12416596049103616974

/-! ## A120967.P3031536518071284020

`gcd(A250219(n+2)+2, A087883(n+2))`
-/

namespace A120967.P3031536518071284020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250219 (n + 2) + 2) (A087883 (n + 2))

end

end A120967.P3031536518071284020

/-! ## A120967.P192724346331264205

`A046645(A008810(p?[A173447(n)]))`
-/

namespace A120967.P192724346331264205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A008810 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A120967.P192724346331264205

/-! ## A120967.P12521906526396683440

`A159672(A154696(n))`
-/

namespace A120967.P12521906526396683440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159672 (A154696 n).toNat

end

end A120967.P12521906526396683440

/-!
# A120968: Number of degeneracies on the sets of N ordinary trees with p vertices.

The programs for A120968, there is no canonical definition to state claims against.
-/

/-! ## A120968.P5325499723605972372

`or(A296150(A111299(2*(n+2))), A368097(n))`
-/

namespace A120968.P5325499723605972372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A296150 (A111299 (2 * (n + 2))).toNat) (A368097 n)

end

end A120968.P5325499723605972372

/-!
# A120969: a(n) = 8n+5^n-3^n.

The programs for A120969, the canonical program `A120969.P10864745340137658962` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120969 has offset 0).

The definition of A120969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n+5^n-3^n` (program `A120969.P10864745340137658962`, by `A120969.P10864745340137658962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120969.P10864745340137658962

`8*n+5^n-3^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120969

/-- `8*n+5^n-3^n` -/
def P10864745340137658962.Spec : Prop :=
  ∀ n, P10864745340137658962.a n = A120969 n

theorem P10864745340137658962.correct : P10864745340137658962.Spec := by
  intro n
  simp only [A120969]

end A120969

/-! ## A120969.P15413200998088092313

`ogf((10x-68x^2+122x^3)/(1-10x+32x^2-38x^3+15x^4))`
-/

namespace A120969.P15413200998088092313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -68, 122] [1, -10, 32, -38, 15] n

end

end A120969.P15413200998088092313

namespace A120969

/-- `ogf((10x-68x^2+122x^3)/(1-10x+32x^2-38x^3+15x^4))` -/
def P15413200998088092313.Spec : Prop :=
  ∀ n, P15413200998088092313.a n = A120969 n

end A120969

/-! ## A120969.P9005335751913213449

`2*(A005059(n)+4*n)`
-/

namespace A120969.P9005335751913213449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005059 n + (4 * n : ℤ))

end

end A120969.P9005335751913213449

namespace A120969

/-- `2*(A005059(n)+4*n)` -/
def P9005335751913213449.Spec : Prop :=
  ∀ n, P9005335751913213449.a n = A120969 n

end A120969

/-! ## A120969.P4133827593073141591

`abs(A107583(n)-A221907(n))`
-/

namespace A120969.P4133827593073141591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107583 n - A221907 n|

end

end A120969.P4133827593073141591

namespace A120969

/-- `abs(A107583(n)-A221907(n))` -/
def P4133827593073141591.Spec : Prop :=
  ∀ n, P4133827593073141591.a n = A120969 n

end A120969

/-! ## A120969.P16958199364811355783

`(A221907(n)-A107583(n))*A294619(n+2)`
-/

namespace A120969.P16958199364811355783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221907 n - A107583 n) * A294619 (n + 2)

end

end A120969.P16958199364811355783

namespace A120969

/-- `(A221907(n)-A107583(n))*A294619(n+2)` -/
def P16958199364811355783.Spec : Prop :=
  ∀ n, P16958199364811355783.a n = A120969 n

end A120969

/-! ## A120969.P310575870415075075

`(A107583(n)-A221907(n))*-1%(A082601(n)+n)`
-/

namespace A120969.P310575870415075075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107583 n - A221907 n) * Int.tmod (-1) (A082601 n + (n : ℤ))

end

end A120969.P310575870415075075

namespace A120969

/-- `(A107583(n)-A221907(n))*-1%(A082601(n)+n)` -/
def P310575870415075075.Spec : Prop :=
  ∀ n, P310575870415075075.a n = A120969 n

end A120969

/-! ## A120969.P13890167483880769755

`abs(7-(7*(n+1)+Δ[A007798(n)]+n))`
-/

namespace A120969.P13890167483880769755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - ((7 * (n + 1) : ℤ) + (f1 (n + 1) - f1 n + (n : ℤ)))|

end

end A120969.P13890167483880769755

namespace A120969

/-- `abs(7-(7*(n+1)+Δ[A007798(n)]+n))` -/
def P13890167483880769755.Spec : Prop :=
  ∀ n, P13890167483880769755.a n = A120969 n

end A120969

/-! ## A120969.P7628510030562383413

`(A221907(n)-A107583(n))%A268414(n+1)`
-/

namespace A120969.P7628510030562383413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221907 n - A107583 n) (A268414 (n + 1))

end

end A120969.P7628510030562383413

namespace A120969

/-- `(A221907(n)-A107583(n))%A268414(n+1)` -/
def P7628510030562383413.Spec : Prop :=
  ∀ n, P7628510030562383413.a n = A120969 n

end A120969

/-! ## A120969.P11235862447793195120

`(A221907(n)-A107583(n))%A213223(n)`
-/

namespace A120969.P11235862447793195120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221907 n - A107583 n) (A213223 n)

end

end A120969.P11235862447793195120

namespace A120969

/-- `(A221907(n)-A107583(n))%A213223(n)` -/
def P11235862447793195120.Spec : Prop :=
  ∀ n, P11235862447793195120.a n = A120969 n

end A120969

/-!
# A120970: G.f. A(x) satisfies A(x/A(x)^2) = 1 + x ; thus A(x) = 1 + Series_Reversion(x/A(x)^2).

The programs for A120970, there is no canonical definition to state claims against.
-/

/-! ## A120970.P490271211699811070

`A381602(A027379(n))`
-/

namespace A120970.P490271211699811070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381602 (A027379 n).toNat

end

end A120970.P490271211699811070

/-! ## A120970.P18020725548324769480

`A381602(A055998(n))`
-/

namespace A120970.P18020725548324769480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381602 (A055998 n).toNat

end

end A120970.P18020725548324769480

/-! ## A120970.P16465331359334033029

`A381602(A046691(n)+1)`
-/

namespace A120970.P16465331359334033029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381602 (A046691 n + 1).toNat

end

end A120970.P16465331359334033029

/-! ## A120970.P11093238386517924754

`A381602(A000096(n)+n)`
-/

namespace A120970.P11093238386517924754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381602 (A000096 n + (n : ℤ)).toNat

end

end A120970.P11093238386517924754

/-! ## A120970.P3506108810356346408

`A381602(∑[comp[A004003(n)]])`
-/

namespace A120970.P3506108810356346408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004003 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381602 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120970.P3506108810356346408

/-!
# A120971: G.f. A(x) satisfies A(x) = 1 + x*A(x)^2 * A( x*A(x)^2 )^2.

The programs for A120971, there is no canonical definition to state claims against.
-/

/-! ## A120971.P3556270161595731164

`A381602(∑[n+1]+n)`
-/

namespace A120971.P3556270161595731164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381602 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A120971.P3556270161595731164

/-! ## A120971.P6183469534119782995

`A381602(A034856(n+1))+A326636(n)`
-/

namespace A120971.P6183469534119782995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381602 (A034856 (n + 1)).toNat + A326636 n

end

end A120971.P6183469534119782995

/-! ## A120971.P4311420243399398749

`A381602(A034856(n+1))%A001147(n+2)`
-/

namespace A120971.P4311420243399398749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381602 (A034856 (n + 1)).toNat) (A001147 (n + 2))

end

end A120971.P4311420243399398749

/-!
# A120972: G.f. A(x) satisfies A(x/A(x)^3) = 1 + x ; thus A(x) = 1 + series_reversion(x/A(x)^3).

The programs for A120972, there is no canonical definition to state claims against.
-/

/-! ## A120972.P16208099023716235812

`A381603(eq[A381587(2*n+1), A381603(n+4)])`
-/

namespace A120972.P16208099023716235812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381587 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381603 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381603 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A120972.P16208099023716235812

/-!
# A120973: G.f. A(x) satisfies A(x) = 1 + x*A(x)^3 * A(x*A(x)^3)^3.

The programs for A120973, there is no canonical definition to state claims against.
-/

/-! ## A120973.P4759104426846274361

`A381603(∑[n+2]-1)`
-/

namespace A120973.P4759104426846274361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381603 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A120973.P4759104426846274361

/-!
# A120974: G.f. A(x) satisfies A(x/A(x)^4) = 1 + x; thus A(x) = 1 + series_reversion(x/A(x)^4).

The programs for A120974, there is no canonical definition to state claims against.
-/

/-! ## A120974.P9040862999415603615

`A331965(∏{d}[comp[2*n+3], #])`
-/

namespace A120974.P9040862999415603615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331965 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A120974.P9040862999415603615

/-!
# A120975: G.f. A(x) satisfies A(x) = 1 + x*A(x)^4 * A(x*A(x)^4)^4.

The programs for A120975, there is no canonical definition to state claims against.
-/

/-! ## A120975.P13445175296240311047

`A311143(n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A120975.P13445175296240311047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A311143 ((n : ℤ) * a (n - 1)).toNat

end

end A120975.P13445175296240311047

/-!
# A120976: G.f. A(x) satisfies A(x/A(x)^5) = 1 + x ; thus A(x) = 1 + series_reversion(x/A(x)^5).

The programs for A120976, there is no canonical definition to state claims against.
-/

/-! ## A120976.P17861565712247876752

`∑[ceil((A140190(n²)-n)/2)]`
-/

namespace A120976.P17861565712247876752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140190 (n ^ 2) - (n : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120976.P17861565712247876752

/-!
# A120977: G.f. A(x) satisfies A(x) = 1 + x*A(x)^5 * A(x*A(x)^5)^5.

The programs for A120977, there is no canonical definition to state claims against.
-/

/-! ## A120977.P17766860591225672062

`A099599(n)+A099593(A099715(n))`
-/

namespace A120977.P17766860591225672062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099599 n + A099593 (A099715 n).toNat

end

end A120977.P17766860591225672062

/-!
# A120978: a(n) = 2n+5^n-3^n.

The programs for A120978, the canonical program `A120978.P18391891313157244721` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120978 has offset 0).

The definition of A120978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n+5^n-3^n` (program `A120978.P18391891313157244721`, by `A120978.P18391891313157244721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120978.P18391891313157244721

`2*n+5^n-3^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120978

/-- `2*n+5^n-3^n` -/
def P18391891313157244721.Spec : Prop :=
  ∀ n, P18391891313157244721.a n = A120978 n

theorem P18391891313157244721.correct : P18391891313157244721.Spec := by
  intro n
  simp only [A120978]

end A120978

/-! ## A120978.P10055035715651204558

`ogf((4x-20x^2+32x^3)/(1-10x+32x^2-38x^3+15x^4))`
-/

namespace A120978.P10055035715651204558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -20, 32] [1, -10, 32, -38, 15] n

end

end A120978.P10055035715651204558

namespace A120978

/-- `ogf((4x-20x^2+32x^3)/(1-10x+32x^2-38x^3+15x^4))` -/
def P10055035715651204558.Spec : Prop :=
  ∀ n, P10055035715651204558.a n = A120978 n

end A120978

/-! ## A120978.P14894314278399626606

`2*(A005059(n)+n)`
-/

namespace A120978.P14894314278399626606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005059 n + (n : ℤ))

end

end A120978.P14894314278399626606

namespace A120978

/-- `2*(A005059(n)+n)` -/
def P14894314278399626606.Spec : Prop :=
  ∀ n, P14894314278399626606.a n = A120978 n

end A120978

/-! ## A120978.P6883304197808851918

`xor(2, A005058(n)+2*(n+1))`
-/

namespace A120978.P6883304197808851918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A005058 n + (2 * (n + 1) : ℤ))

end

end A120978.P6883304197808851918

namespace A120978

/-- `xor(2, A005058(n)+2*(n+1))` -/
def P6883304197808851918.Spec : Prop :=
  ∀ n, P6883304197808851918.a n = A120978 n

end A120978

/-! ## A120978.P5733068444198047563

`abs(A000351(n)-A186948(n))`
-/

namespace A120978.P5733068444198047563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A186948 n|

end

end A120978.P5733068444198047563

namespace A120978

/-- `abs(A000351(n)-A186948(n))` -/
def P5733068444198047563.Spec : Prop :=
  ∀ n, P5733068444198047563.a n = A120978 n

end A120978

/-! ## A120978.P7358181254296956970

`abs(A221905(n)-A221907(n))`
-/

namespace A120978.P7358181254296956970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A221905 n - A221907 n|

end

end A120978.P7358181254296956970

namespace A120978

/-- `abs(A221905(n)-A221907(n))` -/
def P7358181254296956970.Spec : Prop :=
  ∀ n, P7358181254296956970.a n = A120978 n

end A120978

/-! ## A120978.P14877343220426592465

`(A000351(n)-A186948(n))*A001221(A040976(n+1)+2)`
-/

namespace A120978.P14877343220426592465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n - A186948 n) * A001221 (A040976 (n + 1) + 2).toNat

end

end A120978.P14877343220426592465

namespace A120978

/-- `(A000351(n)-A186948(n))*A001221(A040976(n+1)+2)` -/
def P14877343220426592465.Spec : Prop :=
  ∀ n, P14877343220426592465.a n = A120978 n

end A120978

/-! ## A120978.P13954939031173695583

`Δ[A034478(n)]%A120950(n)`
-/

namespace A120978.P13954939031173695583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A120950 n)

end

end A120978.P13954939031173695583

namespace A120978

/-- `Δ[A034478(n)]%A120950(n)` -/
def P13954939031173695583.Spec : Prop :=
  ∀ n, P13954939031173695583.a n = A120978 n

end A120978

/-! ## A120978.P11449942226787352107

`(A074616(n)+2*n)%A074608(n)`
-/

namespace A120978.P11449942226787352107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074616 n + (2 * n : ℤ)) (A074608 n)

end

end A120978.P11449942226787352107

namespace A120978

/-- `(A074616(n)+2*n)%A074608(n)` -/
def P11449942226787352107.Spec : Prop :=
  ∀ n, P11449942226787352107.a n = A120978 n

end A120978

/-!
# A120979: Number of degeneracies on the sets of N ordinary trees with p vertices.

The programs for A120979, there is no canonical definition to state claims against.
-/

/-! ## A120979.P4021311584662123367

`A293833(A140163(n+1)-A334820(n))`
-/

namespace A120979.P4021311584662123367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293833 (A140163 (n + 1) - A334820 n).toNat

end

end A120979.P4021311584662123367

/-!
# A120983: Triangle read by rows: T(n,k) is the number of ternary trees with n edges and having k vertices of outdegree 3 (n >= 0, k >= 0).

The programs for A120983, there is no canonical definition to state claims against.
-/

/-! ## A120983.P4674389456371817333

`A165605(A156589(n)*A166405(n))`
-/

namespace A120983.P4674389456371817333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165605 (A156589 n * A166405 n).toNat

end

end A120983.P4674389456371817333

/-! ## A120983.P9877368957949687974

`A165605(lcm(A156589(n), A166405(n)))`
-/

namespace A120983.P9877368957949687974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165605 (Int.lcm (A156589 n) (A166405 n))

end

end A120983.P9877368957949687974

/-!
# A120984: Number of ternary trees with n edges and having no vertices of degree 1. A ternary tree is a rooted tree in which each vertex has at most three children and each child of a vertex is designated as its left or middle or right child.

The programs for A120984, the canonical program `A120984.P10894982454886848889` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120984 has offset 0).

The definition of A120984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120984.P10894982454886848889

`1/(n+1)*∑{#}[n, (-3)^#*C(n+1, #)*C(3*n-3*#+3, n-#)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120984

/-- `1/(n+1)*∑{#}[n, (-3)^#*C(n+1, #)*C(3*n-3*#+3, n-#)]` -/
def P10894982454886848889.Spec : Prop :=
  ∀ n, P10894982454886848889.a n = (A120984 n : ℚ)

end A120984

/-! ## A120984.P2499834918039518745

`A120981(∑[n])`
-/

namespace A120984.P2499834918039518745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120981 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120984.P2499834918039518745

namespace A120984

/-- `A120981(∑[n])` -/
def P2499834918039518745.Spec : Prop :=
  ∀ n, P2499834918039518745.a n = A120984 n

end A120984

/-! ## A120984.P4056819148980703213

`A060576(n)*A120981(A000217(n))`
-/

namespace A120984.P4056819148980703213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A120981 (A000217 n).toNat

end

end A120984.P4056819148980703213

namespace A120984

/-- `A060576(n)*A120981(A000217(n))` -/
def P4056819148980703213.Spec : Prop :=
  ∀ n, P4056819148980703213.a n = A120984 n

end A120984

/-! ## A120984.P16705117227868638759

`A120981(A000217(n))*A262681(n)`
-/

namespace A120984.P16705117227868638759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120981 (A000217 n).toNat * A262681 n

end

end A120984.P16705117227868638759

namespace A120984

/-- `A120981(A000217(n))*A262681(n)` -/
def P16705117227868638759.Spec : Prop :=
  ∀ n, P16705117227868638759.a n = A120984 n

end A120984

/-! ## A120984.P13842370933484960646

`A120981(A000217(n))%A020727(n)`
-/

namespace A120984.P13842370933484960646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120981 (A000217 n).toNat) (A020727 n)

end

end A120984.P13842370933484960646

namespace A120984

/-- `A120981(A000217(n))%A020727(n)` -/
def P13842370933484960646.Spec : Prop :=
  ∀ n, P13842370933484960646.a n = A120984 n

end A120984

/-! ## A120984.P15715388207181295449

`gcd(A000038(n), A120981(A000217(n)))`
-/

namespace A120984.P15715388207181295449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A120981 (A000217 n).toNat)

end

end A120984.P15715388207181295449

namespace A120984

/-- `gcd(A000038(n), A120981(A000217(n)))` -/
def P15715388207181295449.Spec : Prop :=
  ∀ n, (P15715388207181295449.a n : ℤ) = A120984 n

end A120984

/-! ## A120984.P1094628141115463795

`and(A120981(A000217(n)), A267888(n))`
-/

namespace A120984.P1094628141115463795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120981 (A000217 n).toNat) (A267888 n)

end

end A120984.P1094628141115463795

namespace A120984

/-- `and(A120981(A000217(n)), A267888(n))` -/
def P1094628141115463795.Spec : Prop :=
  ∀ n, P1094628141115463795.a n = A120984 n

end A120984

/-! ## A120984.P17252716970878807023

`lcm(A034947(n+1), A120981(A000217(n)))`
-/

namespace A120984.P17252716970878807023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A120981 (A000217 n).toNat)

end

end A120984.P17252716970878807023

namespace A120984

/-- `lcm(A034947(n+1), A120981(A000217(n)))` -/
def P17252716970878807023.Spec : Prop :=
  ∀ n, (P17252716970878807023.a n : ℤ) = A120984 n

end A120984

/-!
# A120985: Number of ternary trees with n edges and having no vertices of degree 2. A ternary tree is a rooted tree in which each vertex has at most three children and each child of a vertex is designated as its left or middle or right child.

The programs for A120985, there is no canonical definition to state claims against.
-/

/-! ## A120985.P12514635788794941294

`A120982(∑[ceil(n/2)])`
-/

namespace A120985.P12514635788794941294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120982 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120985.P12514635788794941294

/-! ## A120985.P17849991599846701461

`record[A120982(n)/A213074(n+2)]`
-/

namespace A120985.P17849991599846701461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120982 n : ℚ) / (A213074 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120985.P17849991599846701461

/-! ## A120985.P17561207684451935614

`A010885(6*n)*A120982(A025801(6*n+1))`
-/

namespace A120985.P17561207684451935614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010885 (6 * n) * A120982 (A025801 (6 * n + 1)).toNat

end

end A120985.P17561207684451935614

/-! ## A120985.P14564847221156808961

`A010873(4*n+1)*A120982(A025801(6*n+1))`
-/

namespace A120985.P14564847221156808961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (4 * n + 1) * A120982 (A025801 (6 * n + 1)).toNat

end

end A120985.P14564847221156808961

/-!
# A120986: Triangle read by rows: T(n,k) is the number of ternary trees with n edges and having k middle edges (n >= 0, k >= 0).

The programs for A120986, the canonical program `A120986.P10815618207205755199` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120986 has offset 0).

The definition of A120986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120986.P10815618207205755199

`1/(row(n)+1)*C(row(n)+1, col(n))*C(2*(row(n)+1), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120986

/-- `1/(row(n)+1)*C(row(n)+1, col(n))*C(2*(row(n)+1), row(n)-col(n))` -/
def P10815618207205755199.Spec : Prop :=
  ∀ n, P10815618207205755199.a n = (A120986 n : ℚ)

end A120986

/-! ## A120986.P17111121853880494785

`C(row(n)+1, col(n))*C(2*(row(n)+1), row(n)-col(n))/(row(n)+1)`
-/

namespace A120986.P17111121853880494785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) * Nat.choose (2 * (SequenceMachineLib.triRow n + 1)) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) / (SequenceMachineLib.triRow n + 1 : ℚ)

end

end A120986.P17111121853880494785

namespace A120986

/-- `C(row(n)+1, col(n))*C(2*(row(n)+1), row(n)-col(n))/(row(n)+1)` -/
def P17111121853880494785.Spec : Prop :=
  ∀ n, P17111121853880494785.a n = (A120986 n : ℚ)

end A120986

/-! ## A120986.P10856060570608843066

`A039598(n)/A009766(n)*A088617(n)`
-/

namespace A120986.P10856060570608843066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039598 n : ℚ) / (A009766 n : ℚ) * (A088617 n : ℚ)

end

end A120986.P10856060570608843066

namespace A120986

/-- `A039598(n)/A009766(n)*A088617(n)` -/
def P10856060570608843066.Spec : Prop :=
  ∀ n, P10856060570608843066.a n = (A120986 n : ℚ)

end A120986

/-! ## A120986.P13077428414608136279

`A001263(n+1)/A007318(n)*A039598(n)`
-/

namespace A120986.P13077428414608136279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A039598 n : ℚ)

end

end A120986.P13077428414608136279

namespace A120986

/-- `A001263(n+1)/A007318(n)*A039598(n)` -/
def P13077428414608136279.Spec : Prop :=
  ∀ n, P13077428414608136279.a n = (A120986 n : ℚ)

end A120986

/-! ## A120986.P15781243172981732706

`A003506(n+1)/A003991(n+1)*A039598(n)`
-/

namespace A120986.P15781243172981732706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) / (A003991 (n + 1) : ℚ) * (A039598 n : ℚ)

end

end A120986.P15781243172981732706

namespace A120986

/-- `A003506(n+1)/A003991(n+1)*A039598(n)` -/
def P15781243172981732706.Spec : Prop :=
  ∀ n, P15781243172981732706.a n = (A120986 n : ℚ)

end A120986

/-! ## A120986.P6775692400199270501

`A108767(∑[char[∑[n]]]²-n)`
-/

namespace A120986.P6775692400199270501
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108767 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A120986.P6775692400199270501

namespace A120986

/-- `A108767(∑[char[∑[n]]]²-n)` -/
def P6775692400199270501.Spec : Prop :=
  ∀ n, P6775692400199270501.a n = A120986 n

end A120986

/-! ## A120986.P9188483754887295508

`or(A000007(n), A108767(A038722(n+1)))`
-/

namespace A120986.P9188483754887295508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A108767 (A038722 (n + 1)).toNat)

end

end A120986.P9188483754887295508

namespace A120986

/-- `or(A000007(n), A108767(A038722(n+1)))` -/
def P9188483754887295508.Spec : Prop :=
  ∀ n, P9188483754887295508.a n = A120986 n

end A120986

/-! ## A120986.P8536432095983503517

`A108767(A038722(n+1))%A056469(n)`
-/

namespace A120986.P8536432095983503517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108767 (A038722 (n + 1)).toNat) (A056469 n)

end

end A120986.P8536432095983503517

namespace A120986

/-- `A108767(A038722(n+1))%A056469(n)` -/
def P8536432095983503517.Spec : Prop :=
  ∀ n, P8536432095983503517.a n = A120986 n

end A120986

/-!
# A120987: Triangle read by rows: T(n,k) is the number of ternary words of length n with k strictly increasing runs (0 <= k <= n; for example, the ternary word 2|01|12|02|1|1|012|2 has 8 strictly increasing runs).

The programs for A120987, there is no canonical definition to state claims against.
-/

/-! ## A120987.P3847416952608013824

`char[8]+A001222(2^A194485(n+1))`
-/

namespace A120987.P3847416952608013824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A194485 (n + 1) : ℤ))).toNat

end

end A120987.P3847416952608013824

/-! ## A120987.P15983057908777776668

`A194136(n+1)+A055641(A061978(n+1))`
-/

namespace A120987.P15983057908777776668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (n + 1) + A055641 (A061978 (n + 1)).toNat

end

end A120987.P15983057908777776668

/-! ## A120987.P5725281319220764790

`A324327(A125127(n+1))+A194136(n+1)`
-/

namespace A120987.P5725281319220764790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324327 (A125127 (n + 1)).toNat + A194136 (n + 1)

end

end A120987.P5725281319220764790

/-! ## A120987.P5211383320758656509

`A194485(n+1)+A122841(A294675(2*n+1))`
-/

namespace A120987.P5211383320758656509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (n + 1) + A122841 (A294675 (2 * n + 1)).toNat

end

end A120987.P5211383320758656509

/-!
# A120989: Level of the first leaf (in preorder traversal) of a binary tree, summed over all binary trees with n edges. A binary tree is a rooted tree in which each vertex has at most two children and each child of a vertex is designated as its left or right child.

The programs for A120989, the canonical program `A120989.P2568435388614413889` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120989 has offset 1).

The definition of A120989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120989.P2568435388614413889

`2*(n+1)*(7*(n+1)+13)*C(2*(n+1)+1, n+1)/((n+3)*(n+4)*(n+5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120989

/-- `2*(n+1)*(7*(n+1)+13)*C(2*(n+1)+1, n+1)/((n+3)*(n+4)*(n+5))` -/
def P2568435388614413889.Spec : Prop :=
  ∀ n, P2568435388614413889.a n = (A120989 (n + 1) : ℚ)

end A120989

/-! ## A120989.P9429380718523382807

`∑[A070859(n+1)]`
-/

namespace A120989.P9429380718523382807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120989.P9429380718523382807

namespace A120989

/-- `∑[A070859(n+1)]` -/
def P9429380718523382807.Spec : Prop :=
  ∀ n, P9429380718523382807.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P18200094814257888901

`∑[A032952(n)+A002057(n)]`
-/

namespace A120989.P18200094814257888901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 n + A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120989.P18200094814257888901

namespace A120989

/-- `∑[A032952(n)+A002057(n)]` -/
def P18200094814257888901.Spec : Prop :=
  ∀ n, P18200094814257888901.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P9947671165787566570

`A070857(n)+A026013(n+1)`
-/

namespace A120989.P9947671165787566570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n + A026013 (n + 1)

end

end A120989.P9947671165787566570

namespace A120989

/-- `A070857(n)+A026013(n+1)` -/
def P9947671165787566570.Spec : Prop :=
  ∀ n, P9947671165787566570.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P9929821352360653181

`A002057(n)+A000344(n+2)`
-/

namespace A120989.P9929821352360653181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000344 (n + 2)

end

end A120989.P9929821352360653181

namespace A120989

/-- `A002057(n)+A000344(n+2)` -/
def P9929821352360653181.Spec : Prop :=
  ∀ n, P9929821352360653181.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P7742793668889699810

`A002057(n)+∑[A026013(n+1)]`
-/

namespace A120989.P7742793668889699810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120989.P7742793668889699810

namespace A120989

/-- `A002057(n)+∑[A026013(n+1)]` -/
def P7742793668889699810.Spec : Prop :=
  ∀ n, P7742793668889699810.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P4742385599921249116

`∑[A099376(n+1)+A032952(n)]`
-/

namespace A120989.P4742385599921249116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + A032952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120989.P4742385599921249116

namespace A120989

/-- `∑[A099376(n+1)+A032952(n)]` -/
def P4742385599921249116.Spec : Prop :=
  ∀ n, P4742385599921249116.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P18397067307186417230

`Δ[A114277(n)-A014137(n+1)]`
-/

namespace A120989.P18397067307186417230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114277 n - A014137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120989.P18397067307186417230

namespace A120989

/-- `Δ[A114277(n)-A014137(n+1)]` -/
def P18397067307186417230.Spec : Prop :=
  ∀ n, P18397067307186417230.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P13391980430733184522

`Δ[A114277(n)]-A000108(n+2)`
-/

namespace A120989.P13391980430733184522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000108 (n + 2)

end

end A120989.P13391980430733184522

namespace A120989

/-- `Δ[A114277(n)]-A000108(n+2)` -/
def P13391980430733184522.Spec : Prop :=
  ∀ n, P13391980430733184522.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P6580139184072792233

`Δ[A002057(n)]-A120009(n+2)`
-/

namespace A120989.P6580139184072792233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A120009 (n + 2)

end

end A120989.P6580139184072792233

namespace A120989

/-- `Δ[A002057(n)]-A120009(n+2)` -/
def P6580139184072792233.Spec : Prop :=
  ∀ n, P6580139184072792233.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P2997324582239221126

`A099376(n+1)+A000344(n+2)`
-/

namespace A120989.P2997324582239221126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + A000344 (n + 2)

end

end A120989.P2997324582239221126

namespace A120989

/-- `A099376(n+1)+A000344(n+2)` -/
def P2997324582239221126.Spec : Prop :=
  ∀ n, P2997324582239221126.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P2457673266040120635

`A071733(n+1)-A071739(n+1)`
-/

namespace A120989.P2457673266040120635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071733 (n + 1) - A071739 (n + 1)

end

end A120989.P2457673266040120635

namespace A120989

/-- `A071733(n+1)-A071739(n+1)` -/
def P2457673266040120635.Spec : Prop :=
  ∀ n, P2457673266040120635.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P11606731755747034846

`A071749(n+1)-A071755(n+1)`
-/

namespace A120989.P11606731755747034846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071749 (n + 1) - A071755 (n + 1)

end

end A120989.P11606731755747034846

namespace A120989

/-- `A071749(n+1)-A071755(n+1)` -/
def P11606731755747034846.Spec : Prop :=
  ∀ n, P11606731755747034846.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P15706942258637550752

`A002057(n+1)-A000108(n+2)`
-/

namespace A120989.P15706942258637550752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (n + 1) - A000108 (n + 2)

end

end A120989.P15706942258637550752

namespace A120989

/-- `A002057(n+1)-A000108(n+2)` -/
def P15706942258637550752.Spec : Prop :=
  ∀ n, P15706942258637550752.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P4870646701937801039

`A115140(n+3)+A002057(n+1)`
-/

namespace A120989.P4870646701937801039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 3) + A002057 (n + 1)

end

end A120989.P4870646701937801039

namespace A120989

/-- `A115140(n+3)+A002057(n+1)` -/
def P4870646701937801039.Spec : Prop :=
  ∀ n, P4870646701937801039.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P5647045896860020473

`A143955(n+3)+A014138(n+1)`
-/

namespace A120989.P5647045896860020473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 (n + 3) + A014138 (n + 1)

end

end A120989.P5647045896860020473

namespace A120989

/-- `A143955(n+3)+A014138(n+1)` -/
def P5647045896860020473.Spec : Prop :=
  ∀ n, P5647045896860020473.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P15935653840080356802

`A099376(n+2)-A000108(n+2)`
-/

namespace A120989.P15935653840080356802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 2) - A000108 (n + 2)

end

end A120989.P15935653840080356802

namespace A120989

/-- `A099376(n+2)-A000108(n+2)` -/
def P15935653840080356802.Spec : Prop :=
  ∀ n, P15935653840080356802.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P17991469709209281842

`A115140(n+3)+A099376(n+2)`
-/

namespace A120989.P17991469709209281842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 3) + A099376 (n + 2)

end

end A120989.P17991469709209281842

namespace A120989

/-- `A115140(n+3)+A099376(n+2)` -/
def P17991469709209281842.Spec : Prop :=
  ∀ n, P17991469709209281842.a n = A120989 (n + 1)

end A120989

/-! ## A120989.P15401185707520348096

`A000245(n+3)-A071716(n+3)`
-/

namespace A120989.P15401185707520348096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 3) - A071716 (n + 3)

end

end A120989.P15401185707520348096

namespace A120989

/-- `A000245(n+3)-A071716(n+3)` -/
def P15401185707520348096.Spec : Prop :=
  ∀ n, P15401185707520348096.a n = A120989 (n + 1)

end A120989

/-!
# A120990: a(n) = 5^n - 3^n - 2*n.

The programs for A120990, the canonical program `A120990.P7449886918682777434` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120990 has offset 0).

The definition of A120990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-3^n-2*n` (program `A120990.P7449886918682777434`, by `A120990.P7449886918682777434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120990.P7449886918682777434

`5^n-3^n-2*n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120990

/-- `5^n-3^n-2*n` -/
def P7449886918682777434.Spec : Prop :=
  ∀ n, P7449886918682777434.a n = A120990 n

theorem P7449886918682777434.correct : P7449886918682777434.Spec := by
  intro n
  simp only [A120990]

end A120990

/-! ## A120990.P6682772936466203130

`ogf((12x^2-28x^3)/(1-10x+32x^2-38x^3+15x^4))`
-/

namespace A120990.P6682772936466203130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 12, -28] [1, -10, 32, -38, 15] n

end

end A120990.P6682772936466203130

namespace A120990

/-- `ogf((12x^2-28x^3)/(1-10x+32x^2-38x^3+15x^4))` -/
def P6682772936466203130.Spec : Prop :=
  ∀ n, P6682772936466203130.a n = A120990 n

end A120990

/-! ## A120990.P6389164446631029558

`2*(A005059(n)-n)`
-/

namespace A120990.P6389164446631029558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005059 n - (n : ℤ))

end

end A120990.P6389164446631029558

namespace A120990

/-- `2*(A005059(n)-n)` -/
def P6389164446631029558.Spec : Prop :=
  ∀ n, P6389164446631029558.a n = A120990 n

end A120990

/-! ## A120990.P14313164156009941244

`abs(2*n-A005058(n))`
-/

namespace A120990.P14313164156009941244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A005058 n|

end

end A120990.P14313164156009941244

namespace A120990

/-- `abs(2*n-A005058(n))` -/
def P14313164156009941244.Spec : Prop :=
  ∀ n, P14313164156009941244.a n = A120990 n

end A120990

/-! ## A120990.P7947344734943735436

`abs(2*n+1-A155610(n))`
-/

namespace A120990.P7947344734943735436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - A155610 n|

end

end A120990.P7947344734943735436

namespace A120990

/-- `abs(2*n+1-A155610(n))` -/
def P7947344734943735436.Spec : Prop :=
  ∀ n, P7947344734943735436.a n = A120990 n

end A120990

/-! ## A120990.P10254737278225719256

`abs(A005058(n)-A005843(n))`
-/

namespace A120990.P10254737278225719256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005058 n - A005843 n|

end

end A120990.P10254737278225719256

namespace A120990

/-- `abs(A005058(n)-A005843(n))` -/
def P10254737278225719256.Spec : Prop :=
  ∀ n, P10254737278225719256.a n = A120990 n

end A120990

/-! ## A120990.P16624109229242629966

`A020729(n)%A120949(n)`
-/

namespace A120990.P16624109229242629966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020729 n) (A120949 n)

end

end A120990.P16624109229242629966

namespace A120990

/-- `A020729(n)%A120949(n)` -/
def P16624109229242629966.Spec : Prop :=
  ∀ n, P16624109229242629966.a n = A120990 n

end A120990

/-! ## A120990.P16042751525056406913

`(A020729(n)-A104743(n))%A104745(n)`
-/

namespace A120990.P16042751525056406913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020729 n - A104743 n) (A104745 n)

end

end A120990.P16042751525056406913

namespace A120990

/-- `(A020729(n)-A104743(n))%A104745(n)` -/
def P16042751525056406913.Spec : Prop :=
  ∀ n, P16042751525056406913.a n = A120990 n

end A120990

/-! ## A120990.P15213851920524337956

`A074616(n)%(A074608(n)+2*n)`
-/

namespace A120990.P15213851920524337956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074616 n) (A074608 n + (2 * n : ℤ))

end

end A120990.P15213851920524337956

namespace A120990

/-- `A074616(n)%(A074608(n)+2*n)` -/
def P15213851920524337956.Spec : Prop :=
  ∀ n, P15213851920524337956.a n = A120990 n

end A120990

/-!
# A120992: Number of integers in n-th run of squarefree positive integers.

The programs for A120992, the canonical program `A120992.P11139390425260994503` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120992 has offset 1).

The definition of A120992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120992.P11139390425260994503

`A053806(n+1)-A072284(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A120992

/-- `A053806(n+1)-A072284(n+1)` -/
def P11139390425260994503.Spec : Prop :=
  ∀ n, P11139390425260994503.a n = A120992 (n + 1)

theorem P11139390425260994503.correct : P11139390425260994503.Spec := by
  intro n
  simp only [A120992, Nat.add_sub_cancel]

end A120992

/-! ## A120992.P9940408412859197517

`Δ[A013928(A072284(n+1))]`
-/

namespace A120992.P9940408412859197517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A072284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120992.P9940408412859197517

namespace A120992

/-- `Δ[A013928(A072284(n+1))]` -/
def P9940408412859197517.Spec : Prop :=
  ∀ n, P9940408412859197517.a n = A120992 (n + 1)

end A120992

/-! ## A120992.P6201740045971461485

`Δ[A072284(n+1)]-A053797(n+1)`
-/

namespace A120992.P6201740045971461485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A053797 (n + 1)

end

end A120992.P6201740045971461485

namespace A120992

/-- `Δ[A072284(n+1)]-A053797(n+1)` -/
def P6201740045971461485.Spec : Prop :=
  ∀ n, P6201740045971461485.a n = A120992 (n + 1)

end A120992

/-! ## A120992.P5633344207708701299

`A014963(Δ[A107079(A072284(n+1))])`
-/

namespace A120992.P5633344207708701299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A072284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A120992.P5633344207708701299

namespace A120992

/-- `A014963(Δ[A107079(A072284(n+1))])` -/
def P5633344207708701299.Spec : Prop :=
  ∀ n, P5633344207708701299.a n = A120992 (n + 1)

end A120992

/-! ## A120992.P7470970962883546764

`A005117(Δ[A322590(A072284(n+1))])`
-/

namespace A120992.P7470970962883546764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (A072284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f1 (n + 1) - f1 n).toNat

end

end A120992.P7470970962883546764

namespace A120992

/-- `A005117(Δ[A322590(A072284(n+1))])` -/
def P7470970962883546764.Spec : Prop :=
  ∀ n, P7470970962883546764.a n = A120992 (n + 1)

end A120992

/-! ## A120992.P2111348749260938986

`A072284(n+2)-(A072284(n+1)+A053797(n+1))`
-/

namespace A120992.P2111348749260938986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 2) - (A072284 (n + 1) + A053797 (n + 1))

end

end A120992.P2111348749260938986

namespace A120992

/-- `A072284(n+2)-(A072284(n+1)+A053797(n+1))` -/
def P2111348749260938986.Spec : Prop :=
  ∀ n, P2111348749260938986.a n = A120992 (n + 1)

end A120992

/-! ## A120992.P7108373404390556963

`A013928(A072284(n+2)+1)-A013928(A072284(n+1)+1)`
-/

namespace A120992.P7108373404390556963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A072284 (n + 2) + 1).toNat - A013928 (A072284 (n + 1) + 1).toNat

end

end A120992.P7108373404390556963

namespace A120992

/-- `A013928(A072284(n+2)+1)-A013928(A072284(n+1)+1)` -/
def P7108373404390556963.Spec : Prop :=
  ∀ n, P7108373404390556963.a n = A120992 (n + 1)

end A120992

/-! ## A120992.P4293040642323453332

`A162902(2*(n+1))-A162902(2*n+1)`
-/

namespace A120992.P4293040642323453332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * (n + 1)) - A162902 (2 * n + 1)

end

end A120992.P4293040642323453332

namespace A120992

/-- `A162902(2*(n+1))-A162902(2*n+1)` -/
def P4293040642323453332.Spec : Prop :=
  ∀ n, P4293040642323453332.a n = A120992 (n + 1)

end A120992

/-! ## A120992.P15424196617886308529

`A378369(A072284(n+1))`
-/

namespace A120992.P15424196617886308529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378369 (A072284 (n + 1)).toNat

end

end A120992.P15424196617886308529

namespace A120992

/-- `A378369(A072284(n+1))` -/
def P15424196617886308529.Spec : Prop :=
  ∀ n, P15424196617886308529.a n = A120992 (n + 1)

end A120992

/-! ## A120992.P11057964966609331843

`eq[2, A285718(n+1)]-A072284(n+1)`
-/

namespace A120992.P11057964966609331843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A072284 (n + 1)

end

end A120992.P11057964966609331843

namespace A120992

/-- `eq[2, A285718(n+1)]-A072284(n+1)` -/
def P11057964966609331843.Spec : Prop :=
  ∀ n, P11057964966609331843.a n = A120992 (n + 1)

end A120992

/-! ## A120992.P5367744151485778036

`A120327(A072284(n+1)+1)-A072284(n+1)`
-/

namespace A120992.P5367744151485778036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A072284 (n + 1) + 1).toNat - A072284 (n + 1)

end

end A120992.P5367744151485778036

namespace A120992

/-- `A120327(A072284(n+1)+1)-A072284(n+1)` -/
def P5367744151485778036.Spec : Prop :=
  ∀ n, P5367744151485778036.a n = A120992 (n + 1)

end A120992

/-!
# A120993: a(n) is the integer in the n-th run of squarefree integers which is divisible by the number of integers in that run.

The programs for A120993, there is no canonical definition to state claims against.
-/

/-! ## A120993.P2563008271479805129

`∑[A122203(A169917(n)+6)]`
-/

namespace A120993.P2563008271479805129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (A169917 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120993.P2563008271479805129

/-!
# A120994: Numerators of rationals related to John Wallis' product formula for Pi/2 from his 'Arithmetica infinitorum' from 1659.

The programs for A120994, there is no canonical definition to state claims against.
-/

/-! ## A120994.P7985902136580529654

`A094015(n)²*A010096(A059231(n))`
-/

namespace A120994.P7985902136580529654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094015 n ^ 2 * A010096 (A059231 n).toNat

end

end A120994.P7985902136580529654

/-! ## A120994.P9461644252453050663

`lcm(A000290(A120777(n)), A143214(n+3))`
-/

namespace A120994.P9461644252453050663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000290 (A120777 n).toNat) (A143214 (n + 3))

end

end A120994.P9461644252453050663

/-! ## A120994.P938624157372931115

`lcm(A002620(A046161(n+1)), A084311(n+2))`
-/

namespace A120994.P938624157372931115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002620 (A046161 (n + 1)).toNat) (A084311 (n + 2))

end

end A120994.P938624157372931115

/-!
# A120995: Denominators of rationals related to John Wallis' product formula for Pi/2 (from his 'Arithmetica infinitorum' from 1659).

The programs for A120995, there is no canonical definition to state claims against.
-/

/-! ## A120995.P14742666518179037173

`A001902(2*(n+1))/A010875(A001902(2*(n+1)))`
-/

namespace A120995.P14742666518179037173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001902 (2 * (n + 1)) : ℚ) / (A010875 (A001902 (2 * (n + 1))).toNat : ℚ)

end

end A120995.P14742666518179037173

/-!
# A120996: Numerators of partial sums of Catalan numbers scaled by powers of 1/9.

The programs for A120996, there is no canonical definition to state claims against.
-/

/-! ## A120996.P3393690579087268538

`A047592(or((2^n-(n+1))*2^(n-2), A001019(n)))`
-/

namespace A120996.P3393690579087268538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (Int.lor (SequenceMachineLib.roundAway (((2 ^ n : ℤ) - (n + 1 : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (A001019 n)).toNat

end

end A120996.P3393690579087268538

/-!
# A120997: Denominators of partial sums of Catalan numbers scaled by powers of 1/9.

The programs for A120997, there is no canonical definition to state claims against.
-/

/-! ## A120997.P13619698183308305999

`gcd(A108411(A301716(n)), A121009(n))`
-/

namespace A120997.P13619698183308305999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108411 (A301716 n).toNat) (A121009 n)

end

end A120997.P13619698183308305999

/-! ## A120997.P1341191520394859960

`A000244(n)²/A038500(A000108(n))`
-/

namespace A120997.P1341191520394859960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 : ℚ) / (A038500 (A000108 n).toNat : ℚ)

end

end A120997.P1341191520394859960

/-! ## A120997.P14019181873183410707

`A000244(2*n)/A038500(A000108(n))`
-/

namespace A120997.P14019181873183410707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (2 * n) : ℚ) / (A038500 (A000108 n).toNat : ℚ)

end

end A120997.P14019181873183410707

/-! ## A120997.P8352554477363027163

`A156180(2*n)/A319627(A002805(n+1))`
-/

namespace A120997.P8352554477363027163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156180 (2 * n) : ℚ) / (A319627 (A002805 (n + 1)).toNat : ℚ)

end

end A120997.P8352554477363027163

/-! ## A120997.P5530973042955343525

`A000290(A000244(n))/A110566(n+1)`
-/

namespace A120997.P5530973042955343525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A000244 n).toNat : ℚ) / (A110566 (n + 1) : ℚ)

end

end A120997.P5530973042955343525

/-!
# A120999: Denominators of partial sums of Catalan numbers scaled by powers of 1/7^2 = 1/49.

The programs for A120999, there is no canonical definition to state claims against.
-/

/-! ## A120999.P11882945189127081441

`7^A334200(A148687(n+1))`
-/

namespace A120999.P11882945189127081441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A334200 (A148687 (n + 1)).toNat : ℤ)

end

end A120999.P11882945189127081441

/-! ## A120999.P2750901949151204091

`7^A357021(A160664(n+1)-1)`
-/

namespace A120999.P2750901949151204091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A357021 (A160664 (n + 1) - 1).toNat : ℤ)

end

end A120999.P2750901949151204091

/-! ## A120999.P2177570154851816867

`7^A357021(A327329(n+1)/2)`
-/

namespace A120999.P2177570154851816867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A357021 (SequenceMachineLib.roundAway ((A327329 (n + 1) : ℚ) / 2)).toNat : ℤ)

end

end A120999.P2177570154851816867

