import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

/-!
# A183200: Least integer k such that floor(k*f(n+1))>k*f(n), where f(n)=log_2 of n.

The programs for A183200, there is no canonical definition to state claims against.
-/

/-! ## A183200.P17511639889926589960

`A360963(C(n+3, 2))`
-/

namespace A183200.P17511639889926589960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360963 (Nat.choose (n + 3) 2)

end

end A183200.P17511639889926589960

/-! ## A183200.P13734247609476269815

`A360963(∑[n+2]+1)`
-/

namespace A183200.P13734247609476269815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360963 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183200.P13734247609476269815

/-! ## A183200.P404450230963391724

`A360963(A000217(n+2))+A318517(2*(n+2))`
-/

namespace A183200.P404450230963391724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360963 (A000217 (n + 2)).toNat + A318517 (2 * (n + 2))

end

end A183200.P404450230963391724

/-! ## A183200.P15984390764939027040

`A193432(n)-A129251(A132195(n+3))`
-/

namespace A183200.P15984390764939027040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n - A129251 (A132195 (n + 3)).toNat

end

end A183200.P15984390764939027040

/-! ## A183200.P7795215135228228605

`A285097(A290990(n))+A000034(n)`
-/

namespace A183200.P7795215135228228605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A290990 n).toNat + A000034 n

end

end A183200.P7795215135228228605

/-!
# A183203: Antidiagonal sums of triangle A183202.

The programs for A183203, there is no canonical definition to state claims against.
-/

/-! ## A183203.P13861580088431013397

`A037956(n)+A002024(A149092(n))`
-/

namespace A183203.P13861580088431013397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 n + A002024 (A149092 n).toNat

end

end A183203.P13861580088431013397

/-! ## A183203.P12126218504389340110

`A323931(n+1)+A056813(A098569(n))`
-/

namespace A183203.P12126218504389340110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323931 (n + 1) + A056813 (A098569 n).toNat

end

end A183203.P12126218504389340110

/-! ## A183203.P2030738769603705880

`A067086(A304066(n+1)+A302545(n))`
-/

namespace A183203.P2030738769603705880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A304066 (n + 1) + A302545 n).toNat

end

end A183203.P2030738769603705880

/-! ## A183203.P11736262047044524068

`A051889((∑{d}[n, A059966(#)]+1)*A033638(n))`
-/

namespace A183203.P11736262047044524068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 ((∑ d ∈ Nat.divisors (f1 n), A059966 d + 1) * A033638 n).toNat

end

end A183203.P11736262047044524068

/-! ## A183203.P14840358223927106549

`A323931(n+1)+A056813(A183202(∑[n+2]))`
-/

namespace A183203.P14840358223927106549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323931 (n + 1) + A056813 (A183202 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A183203.P14840358223927106549

/-!
# A183204: Central terms of triangle A181544.

The programs for A183204, there is no canonical definition to state claims against.
-/

/-! ## A183204.P9026398941940068310

`A181544(∑[2*n])`
-/

namespace A183204.P9026398941940068310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181544 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183204.P9026398941940068310

/-! ## A183204.P10999849306457227814

`record[A181544(∑[A008619(n)])]`
-/

namespace A183204.P10999849306457227814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181544 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183204.P10999849306457227814

/-! ## A183204.P11193425368569458334

`lcm(n+1, A181544(A002378(n)))`
-/

namespace A183204.P11193425368569458334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A181544 (A002378 n).toNat)

end

end A183204.P11193425368569458334

/-! ## A183204.P6570799802938195386

`A181544(A002378(n))^A178334(n)`
-/

namespace A183204.P6570799802938195386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181544 (A002378 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A183204.P6570799802938195386

/-! ## A183204.P6655661876935397169

`gcd(A000038(n), A181544(A002378(n)))`
-/

namespace A183204.P6655661876935397169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A181544 (A002378 n).toNat)

end

end A183204.P6655661876935397169

/-!
# A183205: a(n) = [x^n] (1-x)^(3n+1)/(n+1) * Sum_{k>=0} C(n+k-1,k)^3*x^k.

The programs for A183205, there is no canonical definition to state claims against.
-/

/-! ## A183205.P5659459865319062407

`A183204(n)/(n+1)`
-/

namespace A183205.P5659459865319062407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183204 n : ℚ) / (n + 1 : ℚ)

end

end A183205.P5659459865319062407

/-! ## A183205.P3560094897252731801

`A181544(∑[2*n])/(n+1)`
-/

namespace A183205.P3560094897252731801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181544 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A183205.P3560094897252731801

/-! ## A183205.P2941236613264497448

`floor(A183204(n)/A348553(n))`
-/

namespace A183205.P2941236613264497448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183204 n : ℚ) / (A348553 n : ℚ)⌋

end

end A183205.P2941236613264497448

/-! ## A183205.P18406453294315179655

`record[A181544(∑[A008619(n)])]/(n+1)`
-/

namespace A183205.P18406453294315179655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181544 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A183205.P18406453294315179655

/-! ## A183205.P17145883092021874682

`A183204(n)/A348553(n)-2%A242179(A212804(n))`
-/

namespace A183205.P17145883092021874682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183204 n : ℚ) / (A348553 n : ℚ) - (Int.tmod 2 (A242179 (A212804 n).toNat) : ℚ)

end

end A183205.P17145883092021874682

/-!
# A183207: Termwise products of the natural numbers and odd integers repeated.

The programs for A183207, the canonical program `A183207.P14016922391315242543` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183207 has offset 1).

The definition of A183207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183207.P14016922391315242543

`(n+1)*(2*floor(n/2)+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183207

/-- `(n+1)*(2*floor(n/2)+1)` -/
def P14016922391315242543.Spec : Prop :=
  ∀ n, P14016922391315242543.a n = A183207 (n + 1)

theorem P14016922391315242543.correct : P14016922391315242543.Spec := by
  intro n
  simp only [A183207, Nat.add_sub_cancel]

end A183207

/-! ## A183207.P12374134840764687992

`abs(or(1, n)*xor(n, -1))`
-/

namespace A183207.P12374134840764687992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 n : ℤ) * Int.xor (n : ℤ) (-1)|

end

end A183207.P12374134840764687992

namespace A183207

/-- `abs(or(1, n)*xor(n, -1))` -/
def P12374134840764687992.Spec : Prop :=
  ∀ n, P12374134840764687992.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P14448215168255942389

`-(or(1, n)*xor(n, -1))`
-/

namespace A183207.P14448215168255942389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Nat.lor 1 n : ℤ) * Int.xor (n : ℤ) (-1))

end

end A183207.P14448215168255942389

namespace A183207

/-- `-(or(1, n)*xor(n, -1))` -/
def P14448215168255942389.Spec : Prop :=
  ∀ n, P14448215168255942389.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P13420078379866214224

`floor((gcd(2, n)/2+n)²)`
-/

namespace A183207.P13420078379866214224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.gcd 2 n : ℚ) / 2 + (n : ℚ)) ^ 2⌋

end

end A183207.P13420078379866214224

namespace A183207

/-- `floor((gcd(2, n)/2+n)²)` -/
def P13420078379866214224.Spec : Prop :=
  ∀ n, P13420078379866214224.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P9664399020956014590

`lcm(2, n+1)+n²-1`
-/

namespace A183207.P9664399020956014590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) + ((n ^ 2 : ℤ) - 1)

end

end A183207.P9664399020956014590

namespace A183207

/-- `lcm(2, n+1)+n²-1` -/
def P9664399020956014590.Spec : Prop :=
  ∀ n, P9664399020956014590.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P6440478400756173237

`or(1, n)/(n+1)^-1`
-/

namespace A183207.P6440478400756173237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A183207.P6440478400756173237

namespace A183207

/-- `or(1, n)/(n+1)^-1` -/
def P6440478400756173237.Spec : Prop :=
  ∀ n, P6440478400756173237.a n = (A183207 (n + 1) : ℚ)

end A183207

/-! ## A183207.P1070644236483863190

`record[or(1, n-2)*(n-1)]`
-/

namespace A183207.P1070644236483863190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 2) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183207.P1070644236483863190

namespace A183207

/-- `record[or(1, n-2)*(n-1)]` -/
def P1070644236483863190.Spec : Prop :=
  ∀ n, P1070644236483863190.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P10149668356720028682

`floor((and(1, n)/2-(n+1))²)`
-/

namespace A183207.P10149668356720028682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.land 1 n : ℚ) / 2 - (n + 1 : ℚ)) ^ 2⌋

end

end A183207.P10149668356720028682

namespace A183207

/-- `floor((and(1, n)/2-(n+1))²)` -/
def P10149668356720028682.Spec : Prop :=
  ∀ n, P10149668356720028682.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P13732751291257443429

`floor((n+1)^3/or(1, n+1))`
-/

namespace A183207.P13732751291257443429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 3 : ℚ) / (Nat.lor 1 (n + 1) : ℚ)⌋

end

end A183207.P13732751291257443429

namespace A183207

/-- `floor((n+1)^3/or(1, n+1))` -/
def P13732751291257443429.Spec : Prop :=
  ∀ n, P13732751291257443429.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P12615009361867151922

`abs((n+1)*(n+1-n%2))`
-/

namespace A183207.P12615009361867151922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((n + 1 : ℤ) - ((n % 2 : ℕ) : ℤ))|

end

end A183207.P12615009361867151922

namespace A183207

/-- `abs((n+1)*(n+1-n%2))` -/
def P12615009361867151922.Spec : Prop :=
  ∀ n, P12615009361867151922.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P8360427621247865018

`abs((2*n-(n-1))*or(1, n))`
-/

namespace A183207.P8360427621247865018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n : ℤ) - ((n : ℤ) - 1)) * (Nat.lor 1 n : ℤ)|

end

end A183207.P8360427621247865018

namespace A183207

/-- `abs((2*n-(n-1))*or(1, n))` -/
def P8360427621247865018.Spec : Prop :=
  ∀ n, P8360427621247865018.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P13366257277576271478

`-((n-1-2*n)*or(1, n))`
-/

namespace A183207.P13366257277576271478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1 - (2 * n : ℤ)) * (Nat.lor 1 n : ℤ))

end

end A183207.P13366257277576271478

namespace A183207

/-- `-((n-1-2*n)*or(1, n))` -/
def P13366257277576271478.Spec : Prop :=
  ∀ n, P13366257277576271478.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P249940572349908170

`record[(n-1-and(1, n))*(n-1)]`
-/

namespace A183207.P249940572349908170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - (Nat.land 1 n : ℤ)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183207.P249940572349908170

namespace A183207

/-- `record[(n-1-and(1, n))*(n-1)]` -/
def P249940572349908170.Spec : Prop :=
  ∀ n, P249940572349908170.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P10845469647078643674

`floor((∑[4-a(n-1)]/2)²)` with `a(0)=2, a(1)=1`
-/

namespace A183207.P10845469647078643674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 2⌋

end

end A183207.P10845469647078643674

namespace A183207

/-- `floor((∑[4-a(n-1)]/2)²)` -/
def P10845469647078643674.Spec : Prop :=
  ∀ n, P10845469647078643674.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P12117603601535215917

`∑[2*n]²/(a(n-1)+n)` with `a(0)=1`
-/

namespace A183207.P12117603601535215917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (a (n - 1) + (n : ℚ))

end

end A183207.P12117603601535215917

namespace A183207

/-- `∑[2*n]²/(a(n-1)+n)` -/
def P12117603601535215917.Spec : Prop :=
  ∀ n, P12117603601535215917.a n = (A183207 (n + 1) : ℚ)

end A183207

/-! ## A183207.P7952220611140084539

`floor((n+1)*∑[2-a(n-1)])` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A183207.P7952220611140084539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183207.P7952220611140084539

namespace A183207

/-- `floor((n+1)*∑[2-a(n-1)])` -/
def P7952220611140084539.Spec : Prop :=
  ∀ n, P7952220611140084539.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P1265056774398030175

`(n+1)²-(n+1)%or(1, n+1)`
-/

namespace A183207.P1265056774398030175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (((n + 1) % Nat.lor 1 (n + 1) : ℕ) : ℤ)

end

end A183207.P1265056774398030175

namespace A183207

/-- `(n+1)²-(n+1)%or(1, n+1)` -/
def P1265056774398030175.Spec : Prop :=
  ∀ n, P1265056774398030175.a n = A183207 (n + 1)

end A183207

/-! ## A183207.P1276000870392514176

`(n+1)*∑[4-a(n-1)]/2` with `a(0)=2, a(1)=0`
-/

namespace A183207.P1276000870392514176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A183207.P1276000870392514176

namespace A183207

/-- `(n+1)*∑[4-a(n-1)]/2` -/
def P1276000870392514176.Spec : Prop :=
  ∀ n, P1276000870392514176.a n = (A183207 (n + 1) : ℚ)

end A183207

/-!
# A183208: Iterates of f(x)=floor((3x-1)/2) from x=6.

The programs for A183208, there is no canonical definition to state claims against.
-/

/-! ## A183208.P6038868904610907499

`floor(sinh(log(3*a(n-1))))` with `a(0)=6`
-/

namespace A183208.P6038868904610907499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌊Real.sinh (Real.log (3 * a (n - 1) : ℝ))⌋

end

end A183208.P6038868904610907499

/-! ## A183208.P17416138493139473899

`floor((3*a(n-1)-1)/2)` with `a(0)=6`
-/

namespace A183208.P17416138493139473899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌊(3 * a (n - 1) - 1 : ℚ) / 2⌋

end

end A183208.P17416138493139473899

/-! ## A183208.P10680021567533632744

`ceil(3/2*a(n-1))-1` with `a(0)=6`
-/

namespace A183208.P10680021567533632744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌈(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌉ - 1

end

end A183208.P10680021567533632744

/-! ## A183208.P3028691887162098245

`round(3/2*a(n-1))-1` with `a(0)=6`
-/

namespace A183208.P3028691887162098245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (a (n - 1) : ℚ)) - 1

end

end A183208.P3028691887162098245

/-!
# A183209: Tree generated by floor(3n/2): a(1) = 1, a(2n) = (3*a(n))-1, a(2n+1) = floor((3*a(n+1))/2).

The programs for A183209, there is no canonical definition to state claims against.
-/

/-! ## A183209.P7589796287846996942

`A183082(n+1)+A086011(A007677(n))`
-/

namespace A183209.P7589796287846996942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183082 (n + 1) + A086011 (A007677 n).toNat

end

end A183209.P7589796287846996942

/-! ## A183209.P5624712938172044805

`A185284(A048678(n))+A183082(n+1)`
-/

namespace A183209.P5624712938172044805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A048678 n).toNat + A183082 (n + 1)

end

end A183209.P5624712938172044805

/-! ## A183209.P5882189026745942463

`A183094(A091584(n+1))+A183082(n+1)`
-/

namespace A183209.P5882189026745942463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (A091584 (n + 1)).toNat + A183082 (n + 1)

end

end A183209.P5882189026745942463

/-! ## A183209.P7923913637405532956

`A185284(A132188(n+5))+A183082(n+1)`
-/

namespace A183209.P7923913637405532956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A132188 (n + 5)).toNat + A183082 (n + 1)

end

end A183209.P7923913637405532956

/-! ## A183209.P5411391291817468761

`A183082(n+1)+A117479(A155744(n))`
-/

namespace A183209.P5411391291817468761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183082 (n + 1) + A117479 (A155744 n).toNat

end

end A183209.P5411391291817468761

/-!
# A183213: Ordering of the numbers in the set S generated by these rules: 1 is in S, and if n is in S, then floor[(3n-1)/2] and 3n are in S.

The programs for A183213, the canonical program `A183213.P6188625481745286852` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183213 has offset 1).

The definition of A183213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183213.P6188625481745286852

`eq[0, A117943(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A183213

/-- `eq[0, A117943(n+1)]+1` -/
def P6188625481745286852.Spec : Prop :=
  ∀ n, (P6188625481745286852.a n : ℤ) = A183213 (n + 1)

theorem P6188625481745286852.correct : P6188625481745286852.Spec := by
  intro n
  simp only [A183213, Nat.add_sub_cancel]

end A183213

/-! ## A183213.P6621531926388869704

`eq[A189215(n+1), A189222(n+1)]+1`
-/

namespace A183213.P6621531926388869704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A183213.P6621531926388869704

namespace A183213

/-- `eq[A189215(n+1), A189222(n+1)]+1` -/
def P6621531926388869704.Spec : Prop :=
  ∀ n, (P6621531926388869704.a n : ℤ) = A183213 (n + 1)

end A183213

/-! ## A183213.P16028142863412345322

`record[or(-A117943(n+1), A000027(n+1))]`
-/

namespace A183213.P16028142863412345322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A117943 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183213.P16028142863412345322

namespace A183213

/-- `record[or(-A117943(n+1), A000027(n+1))]` -/
def P16028142863412345322.Spec : Prop :=
  ∀ n, P16028142863412345322.a n = A183213 (n + 1)

end A183213

/-! ## A183213.P5655897229169811304

`record[n+1-A001844(n)*A117943(n+1)]`
-/

namespace A183213.P5655897229169811304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001844 n * A117943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183213.P5655897229169811304

namespace A183213

/-- `record[n+1-A001844(n)*A117943(n+1)]` -/
def P5655897229169811304.Spec : Prop :=
  ∀ n, P5655897229169811304.a n = A183213 (n + 1)

end A183213

/-! ## A183213.P6858626691829699155

`record[n+1-A017497(n)*A117943(n+1)]`
-/

namespace A183213.P6858626691829699155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A017497 n * A117943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183213.P6858626691829699155

namespace A183213

/-- `record[n+1-A017497(n)*A117943(n+1)]` -/
def P6858626691829699155.Spec : Prop :=
  ∀ n, P6858626691829699155.a n = A183213 (n + 1)

end A183213

/-! ## A183213.P10229064468033032841

`record[A001057(A117943(n+1)+2*n+1)]`
-/

namespace A183213.P10229064468033032841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A117943 (n + 1) + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183213.P10229064468033032841

namespace A183213

/-- `record[A001057(A117943(n+1)+2*n+1)]` -/
def P10229064468033032841.Spec : Prop :=
  ∀ n, P10229064468033032841.a n = A183213 (n + 1)

end A183213

/-! ## A183213.P10605061367158308276

`record[A003602(A117943(n+1)+A005408(n))]`
-/

namespace A183213.P10605061367158308276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A117943 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183213.P10605061367158308276

namespace A183213

/-- `record[A003602(A117943(n+1)+A005408(n))]` -/
def P10605061367158308276.Spec : Prop :=
  ∀ n, P10605061367158308276.a n = A183213 (n + 1)

end A183213

/-! ## A183213.P4985686896986869780

`eq[A000007(n), A117943(A065033(2*n))]`
-/

namespace A183213.P4985686896986869780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183213.P4985686896986869780

namespace A183213

/-- `eq[A000007(n), A117943(A065033(2*n))]` -/
def P4985686896986869780.Spec : Prop :=
  ∀ n, (P4985686896986869780.a n : ℤ) = A183213 (n + 1)

end A183213

/-!
# A183215: Numbers that are the sum of 8 but not fewer squared primes.

The programs for A183215, there is no canonical definition to state claims against.
-/

/-! ## A183215.P527134244184736516

`eq[8, A183214(n)]`
-/

namespace A183215.P527134244184736516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183215.P527134244184736516

/-!
# A183216: Primes that are the sum of 8 but not fewer squared primes.

The programs for A183216, there is no canonical definition to state claims against.
-/

/-! ## A183216.P12991826555277540927

`p?[A183215(n+1)]`
-/

namespace A183216.P12991826555277540927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A183216.P12991826555277540927

/-! ## A183216.P10450318513196010253

`p?[record[A183215(A028920(n))]]`
-/

namespace A183216.P10450318513196010253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183215 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A183216.P10450318513196010253

/-! ## A183216.P4644062492072351518

`p?[record[A183215(A038568(n))]]`
-/

namespace A183216.P4644062492072351518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183215 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A183216.P4644062492072351518

/-! ## A183216.P10810174422642026113

`record[A020639(A183215(n+4))]`
-/

namespace A183216.P10810174422642026113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A183215 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183216.P10810174422642026113

/-!
# A183217: Complement of the pentagonal numbers.

The programs for A183217, the canonical program `A183217.P4940769301330657929` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183217 has offset 1).

The definition of A183217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183217.P4940769301330657929

`n+1+floor(1/2+(2*(n+1)/3)^(1/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183217

/-- `n+1+floor(1/2+(2*(n+1)/3)^(1/2))` -/
def P4940769301330657929.Spec : Prop :=
  ∀ n, P4940769301330657929.a n = A183217 (n + 1)

theorem P4940769301330657929.correct : P4940769301330657929.Spec := by
  intro n
  simp only [A183217, Nat.add_sub_cancel]

end A183217

/-! ## A183217.P6547895219273602114

`comp[C(n, 2)+n²]`
-/

namespace A183217.P6547895219273602114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183217.P6547895219273602114

namespace A183217

/-- `comp[C(n, 2)+n²]` -/
def P6547895219273602114.Spec : Prop :=
  ∀ n, (P6547895219273602114.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P10326606917737980153

`comp[∑[comp[∑[gcd(2, n)]]]]`
-/

namespace A183217.P10326606917737980153
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183217.P10326606917737980153

namespace A183217

/-- `comp[∑[comp[∑[gcd(2, n)]]]]` -/
def P10326606917737980153.Spec : Prop :=
  ∀ n, (P10326606917737980153.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P8916885015445430729

`comp[3*C(n, 2)+n]`
-/

namespace A183217.P8916885015445430729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183217.P8916885015445430729

namespace A183217

/-- `comp[3*C(n, 2)+n]` -/
def P8916885015445430729.Spec : Prop :=
  ∀ n, (P8916885015445430729.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P4134815679510280005

`comp[∑[n*∑[n]%3]]`
-/

namespace A183217.P4134815679510280005
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((∑ j ∈ Finset.range (n + 1), f3 j) % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183217.P4134815679510280005

namespace A183217

/-- `comp[∑[n*∑[n]%3]]` -/
def P4134815679510280005.Spec : Prop :=
  ∀ n, (P4134815679510280005.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P13957737899957957240

`comp[∑[a(n-1)+3]]` with `a(0)=0, a(1)=1`
-/

namespace A183217.P13957737899957957240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183217.P13957737899957957240

namespace A183217

/-- `comp[∑[a(n-1)+3]]` -/
def P13957737899957957240.Spec : Prop :=
  ∀ n, (P13957737899957957240.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P7146354097755165599

`comp[∑[∑[n²]]%∑[n+1]]`
-/

namespace A183217.P7146354097755165599
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (∑ j ∈ Finset.range (n + 1), f4 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183217.P7146354097755165599

namespace A183217

/-- `comp[∑[∑[n²]]%∑[n+1]]` -/
def P7146354097755165599.Spec : Prop :=
  ∀ n, (P7146354097755165599.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P15973022215592051360

`comp[2-∑[a(n-1)-3]]` with `a(0)=2`
-/

namespace A183217.P15973022215592051360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183217.P15973022215592051360

namespace A183217

/-- `comp[2-∑[a(n-1)-3]]` -/
def P15973022215592051360.Spec : Prop :=
  ∀ n, (P15973022215592051360.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P15190183153122134914

`comp[A000326(n)]`
-/

namespace A183217.P15190183153122134914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183217.P15190183153122134914

namespace A183217

/-- `comp[A000326(n)]` -/
def P15190183153122134914.Spec : Prop :=
  ∀ n, (P15190183153122134914.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P17290192021715052783

`eq[0, A255849(n)]`
-/

namespace A183217.P17290192021715052783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183217.P17290192021715052783

namespace A183217

/-- `eq[0, A255849(n)]` -/
def P17290192021715052783.Spec : Prop :=
  ∀ n, (P17290192021715052783.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P447456345657983860

`comp[A341706(n)-n]`
-/

namespace A183217.P447456345657983860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341706 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183217.P447456345657983860

namespace A183217

/-- `comp[A341706(n)-n]` -/
def P447456345657983860.Spec : Prop :=
  ∀ n, (P447456345657983860.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P9539881317647799445

`comp[A161680(n)+n²]`
-/

namespace A183217.P9539881317647799445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183217.P9539881317647799445

namespace A183217

/-- `comp[A161680(n)+n²]` -/
def P9539881317647799445.Spec : Prop :=
  ∀ n, (P9539881317647799445.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P3811403394332032176

`comp[A005476(n)-n²]`
-/

namespace A183217.P3811403394332032176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183217.P3811403394332032176

namespace A183217

/-- `comp[A005476(n)-n²]` -/
def P3811403394332032176.Spec : Prop :=
  ∀ n, (P3811403394332032176.a n : ℤ) = A183217 (n + 1)

end A183217

/-! ## A183217.P5829969863753054263

`comp[A211538(2*(n+1))]`
-/

namespace A183217.P5829969863753054263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183217.P5829969863753054263

namespace A183217

/-- `comp[A211538(2*(n+1))]` -/
def P5829969863753054263.Spec : Prop :=
  ∀ n, (P5829969863753054263.a n : ℤ) = A183217 (n + 1)

end A183217

/-!
# A183218: Complement of the hexagonal numbers.

The programs for A183218, the canonical program `A183218.P6462912954625711431` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183218 has offset 1).

The definition of A183218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183218.P6462912954625711431

`n+1+floor(1/2+((n+1)/2)^(1/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183218

/-- `n+1+floor(1/2+((n+1)/2)^(1/2))` -/
def P6462912954625711431.Spec : Prop :=
  ∀ n, P6462912954625711431.a n = A183218 (n + 1)

theorem P6462912954625711431.correct : P6462912954625711431.Spec := by
  intro n
  simp only [A183218, Nat.add_sub_cancel]

end A183218

/-! ## A183218.P15511093805685200519

`comp[C(2*n, 2)]`
-/

namespace A183218.P15511093805685200519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183218.P15511093805685200519

namespace A183218

/-- `comp[C(2*n, 2)]` -/
def P15511093805685200519.Spec : Prop :=
  ∀ n, (P15511093805685200519.a n : ℤ) = A183218 (n + 1)

end A183218

/-! ## A183218.P4517046542659892137

`∑[char[4*C(n, 2)]+1]`
-/

namespace A183218.P4517046542659892137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P4517046542659892137

namespace A183218

/-- `∑[char[4*C(n, 2)]+1]` -/
def P4517046542659892137.Spec : Prop :=
  ∀ n, (P4517046542659892137.a n : ℤ) = A183218 (n + 1)

end A183218

/-! ## A183218.P13958720867901969118

`∑[(char[∑[4*n]]+1)!]`
-/

namespace A183218.P13958720867901969118
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P13958720867901969118

namespace A183218

/-- `∑[(char[∑[4*n]]+1)!]` -/
def P13958720867901969118.Spec : Prop :=
  ∀ n, (P13958720867901969118.a n : ℤ) = A183218 (n + 1)

end A183218

/-! ## A183218.P15290439982057393443

`and(comp[lcm(n, 1-2*n)], -1)`
-/

namespace A183218.P15290439982057393443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (2 * n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-1)

end

end A183218.P15290439982057393443

namespace A183218

/-- `and(comp[lcm(n, 1-2*n)], -1)` -/
def P15290439982057393443.Spec : Prop :=
  ∀ n, P15290439982057393443.a n = A183218 (n + 1)

end A183218

/-! ## A183218.P16929792582875138620

`and(comp[n*comp[2*(n+1)]], -1)`
-/

namespace A183218.P16929792582875138620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-1)

end

end A183218.P16929792582875138620

namespace A183218

/-- `and(comp[n*comp[2*(n+1)]], -1)` -/
def P16929792582875138620.Spec : Prop :=
  ∀ n, P16929792582875138620.a n = A183218 (n + 1)

end A183218

/-! ## A183218.P10625709903198168747

`∑[A003982(n)+1]`
-/

namespace A183218.P10625709903198168747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P10625709903198168747

namespace A183218

/-- `∑[A003982(n)+1]` -/
def P10625709903198168747.Spec : Prop :=
  ∀ n, P10625709903198168747.a n = A183218 (n + 1)

end A183218

/-! ## A183218.P7732268766430096017

`∑[2-A068344(n)²]`
-/

namespace A183218.P7732268766430096017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A068344 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P7732268766430096017

namespace A183218

/-- `∑[2-A068344(n)²]` -/
def P7732268766430096017.Spec : Prop :=
  ∀ n, P7732268766430096017.a n = A183218 (n + 1)

end A183218

/-! ## A183218.P15793414712716449507

`∑[char[A046092(n)]+1]`
-/

namespace A183218.P15793414712716449507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P15793414712716449507

namespace A183218

/-- `∑[char[A046092(n)]+1]` -/
def P15793414712716449507.Spec : Prop :=
  ∀ n, (P15793414712716449507.a n : ℤ) = A183218 (n + 1)

end A183218

/-! ## A183218.P5007090414908532236

`∑[3-A140685(n+1)]`
-/

namespace A183218.P5007090414908532236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A140685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P5007090414908532236

namespace A183218

/-- `∑[3-A140685(n+1)]` -/
def P5007090414908532236.Spec : Prop :=
  ∀ n, P5007090414908532236.a n = A183218 (n + 1)

end A183218

/-! ## A183218.P175356301950773359

`∑[2-A323377(n+1)²]`
-/

namespace A183218.P175356301950773359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A323377 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P175356301950773359

namespace A183218

/-- `∑[2-A323377(n+1)²]` -/
def P175356301950773359.Spec : Prop :=
  ∀ n, P175356301950773359.a n = A183218 (n + 1)

end A183218

/-! ## A183218.P11208463245560205120

`∑[A004530(2*n+1)+1]`
-/

namespace A183218.P11208463245560205120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P11208463245560205120

namespace A183218

/-- `∑[A004530(2*n+1)+1]` -/
def P11208463245560205120.Spec : Prop :=
  ∀ n, P11208463245560205120.a n = A183218 (n + 1)

end A183218

/-! ## A183218.P7981550306875884079

`∑[A053866(2*n+1)+1]`
-/

namespace A183218.P7981550306875884079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P7981550306875884079

namespace A183218

/-- `∑[A053866(2*n+1)+1]` -/
def P7981550306875884079.Spec : Prop :=
  ∀ n, P7981550306875884079.a n = A183218 (n + 1)

end A183218

/-! ## A183218.P16315339495545904685

`∑[A098108(2*n+1)+1]`
-/

namespace A183218.P16315339495545904685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P16315339495545904685

namespace A183218

/-- `∑[A098108(2*n+1)+1]` -/
def P16315339495545904685.Spec : Prop :=
  ∀ n, P16315339495545904685.a n = A183218 (n + 1)

end A183218

/-! ## A183218.P1046275845931776099

`∑[A000005(2*n+1)%2+1]`
-/

namespace A183218.P1046275845931776099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (2 * n + 1)) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183218.P1046275845931776099

namespace A183218

/-- `∑[A000005(2*n+1)%2+1]` -/
def P1046275845931776099.Spec : Prop :=
  ∀ n, P1046275845931776099.a n = A183218 (n + 1)

end A183218

/-!
# A183219: Complement of the heptagonal (7-gonal) numbers.

The programs for A183219, the canonical program `A183219.P8204880483410935917` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183219 has offset 1).

The definition of A183219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183219.P8204880483410935917

`n+1+floor(1/2+(2*(n+1)/5)^(1/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183219

/-- `n+1+floor(1/2+(2*(n+1)/5)^(1/2))` -/
def P8204880483410935917.Spec : Prop :=
  ∀ n, P8204880483410935917.a n = A183219 (n + 1)

theorem P8204880483410935917.correct : P8204880483410935917.Spec := by
  intro n
  simp only [A183219, Nat.add_sub_cancel]

end A183219

/-! ## A183219.P16732883829868954527

`comp[5*C(n, 2)+n]`
-/

namespace A183219.P16732883829868954527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183219.P16732883829868954527

namespace A183219

/-- `comp[5*C(n, 2)+n]` -/
def P16732883829868954527.Spec : Prop :=
  ∀ n, (P16732883829868954527.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P18343875011718314802

`comp[∑[comp[gcd(5, n)+n]]]`
-/

namespace A183219.P18343875011718314802
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183219.P18343875011718314802

namespace A183219

/-- `comp[∑[comp[gcd(5, n)+n]]]` -/
def P18343875011718314802.Spec : Prop :=
  ∀ n, (P18343875011718314802.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P6838119807630766345

`comp[4-∑[a(n-1)-5]]` with `a(0)=4`
-/

namespace A183219.P6838119807630766345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P6838119807630766345

namespace A183219

/-- `comp[4-∑[a(n-1)-5]]` -/
def P6838119807630766345.Spec : Prop :=
  ∀ n, (P6838119807630766345.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P5967369109153402206

`comp[A000566(n)]`
-/

namespace A183219.P5967369109153402206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P5967369109153402206

namespace A183219

/-- `comp[A000566(n)]` -/
def P5967369109153402206.Spec : Prop :=
  ∀ n, (P5967369109153402206.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P8437869179454470846

`comp[A005476(n)-n]`
-/

namespace A183219.P8437869179454470846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P8437869179454470846

namespace A183219

/-- `comp[A005476(n)-n]` -/
def P8437869179454470846.Spec : Prop :=
  ∀ n, (P8437869179454470846.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P17391049637916540702

`comp[A005475(n)-2*n]`
-/

namespace A183219.P17391049637916540702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P17391049637916540702

namespace A183219

/-- `comp[A005475(n)-2*n]` -/
def P17391049637916540702.Spec : Prop :=
  ∀ n, (P17391049637916540702.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P1750941848456314803

`comp[A000384(n)+C(n, 2)]`
-/

namespace A183219.P1750941848456314803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n + (Nat.choose n 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P1750941848456314803

namespace A183219

/-- `comp[A000384(n)+C(n, 2)]` -/
def P1750941848456314803.Spec : Prop :=
  ∀ n, (P1750941848456314803.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P9212885547467840747

`comp[∑[comp[A047203(n+2)]]]`
-/

namespace A183219.P9212885547467840747
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183219.P9212885547467840747

namespace A183219

/-- `comp[∑[comp[A047203(n+2)]]]` -/
def P9212885547467840747.Spec : Prop :=
  ∀ n, (P9212885547467840747.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P14284995741341870539

`comp[n²-A145919(3*n)]`
-/

namespace A183219.P14284995741341870539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A145919 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P14284995741341870539

namespace A183219

/-- `comp[n²-A145919(3*n)]` -/
def P14284995741341870539.Spec : Prop :=
  ∀ n, (P14284995741341870539.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P9485882603720717073

`comp[A211538(2*n+1)+n²]`
-/

namespace A183219.P9485882603720717073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (2 * n + 1) + (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P9485882603720717073

namespace A183219

/-- `comp[A211538(2*n+1)+n²]` -/
def P9485882603720717073.Spec : Prop :=
  ∀ n, (P9485882603720717073.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P3651779330065634705

`comp[A116668(n)-A005408(n)]`
-/

namespace A183219.P3651779330065634705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n - A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P3651779330065634705

namespace A183219

/-- `comp[A116668(n)-A005408(n)]` -/
def P3651779330065634705.Spec : Prop :=
  ∀ n, (P3651779330065634705.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P10486960238315788831

`comp[A085787(comp[A225232(n+3)])]`
-/

namespace A183219.P10486960238315788831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225232 (n + 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P10486960238315788831

namespace A183219

/-- `comp[A085787(comp[A225232(n+3)])]` -/
def P10486960238315788831.Spec : Prop :=
  ∀ n, (P10486960238315788831.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P3731372824895264188

`comp[∑[A016861(n)]-A016861(n)]`
-/

namespace A183219.P3731372824895264188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P3731372824895264188

namespace A183219

/-- `comp[∑[A016861(n)]-A016861(n)]` -/
def P3731372824895264188.Spec : Prop :=
  ∀ n, (P3731372824895264188.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P16708358518160226175

`comp[A161680(2*n)+A161680(n)]`
-/

namespace A183219.P16708358518160226175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (2 * n) + A161680 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P16708358518160226175

namespace A183219

/-- `comp[A161680(2*n)+A161680(n)]` -/
def P16708358518160226175.Spec : Prop :=
  ∀ n, (P16708358518160226175.a n : ℤ) = A183219 (n + 1)

end A183219

/-! ## A183219.P5788730615040196374

`comp[A000567(n)+n-A000217(n)]`
-/

namespace A183219.P5788730615040196374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + ((n : ℤ) - A000217 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183219.P5788730615040196374

namespace A183219

/-- `comp[A000567(n)+n-A000217(n)]` -/
def P5788730615040196374.Spec : Prop :=
  ∀ n, (P5788730615040196374.a n : ℤ) = A183219 (n + 1)

end A183219

/-!
# A183220: Complement of the octagonal numbers.

The programs for A183220, the canonical program `A183220.P1574062411265081676` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183220 has offset 1).

The definition of A183220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183220.P1574062411265081676

`n+1+floor(1/2+((n+1)/3)^(1/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183220

/-- `n+1+floor(1/2+((n+1)/3)^(1/2))` -/
def P1574062411265081676.Spec : Prop :=
  ∀ n, P1574062411265081676.a n = A183220 (n + 1)

theorem P1574062411265081676.correct : P1574062411265081676.Spec := by
  intro n
  simp only [A183220, Nat.add_sub_cancel]

end A183220

/-! ## A183220.P6884055792672832664

`comp[Δ[gcd(n, ∑[n])²]]`
-/

namespace A183220.P6884055792672832664
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183220.P6884055792672832664

namespace A183220

/-- `comp[Δ[gcd(n, ∑[n])²]]` -/
def P6884055792672832664.Spec : Prop :=
  ∀ n, (P6884055792672832664.a n : ℤ) = A183220 (n + 1)

end A183220

/-! ## A183220.P17894659362989488831

`∑[(char[∑[6*n]]+1)!]`
-/

namespace A183220.P17894659362989488831
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183220.P17894659362989488831

namespace A183220

/-- `∑[(char[∑[6*n]]+1)!]` -/
def P17894659362989488831.Spec : Prop :=
  ∀ n, (P17894659362989488831.a n : ℤ) = A183220 (n + 1)

end A183220

/-! ## A183220.P14850710870316291413

`∑[dr(char[∑[6*n]]+1)]`
-/

namespace A183220.P14850710870316291413
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183220.P14850710870316291413

namespace A183220

/-- `∑[dr(char[∑[6*n]]+1)]` -/
def P14850710870316291413.Spec : Prop :=
  ∀ n, (P14850710870316291413.a n : ℤ) = A183220 (n + 1)

end A183220

/-! ## A183220.P4221843108995169272

`∑[gcd(2, char[∑[6*n]]+1)]`
-/

namespace A183220.P4221843108995169272
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183220.P4221843108995169272

namespace A183220

/-- `∑[gcd(2, char[∑[6*n]]+1)]` -/
def P4221843108995169272.Spec : Prop :=
  ∀ n, (P4221843108995169272.a n : ℤ) = A183220 (n + 1)

end A183220

/-! ## A183220.P9261156125816083317

`∑[(char[∑[6*n]]+1)%3]`
-/

namespace A183220.P9261156125816083317
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183220.P9261156125816083317

namespace A183220

/-- `∑[(char[∑[6*n]]+1)%3]` -/
def P9261156125816083317.Spec : Prop :=
  ∀ n, (P9261156125816083317.a n : ℤ) = A183220 (n + 1)

end A183220

/-! ## A183220.P728573437658654668

`∑[char[A008588(∑[n])]+1]`
-/

namespace A183220.P728573437658654668
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183220.P728573437658654668

namespace A183220

/-- `∑[char[A008588(∑[n])]+1]` -/
def P728573437658654668.Spec : Prop :=
  ∀ n, (P728573437658654668.a n : ℤ) = A183220 (n + 1)

end A183220

/-! ## A183220.P8252936650667446356

`∑[1-A214505(2*n+1)]`
-/

namespace A183220.P8252936650667446356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A214505 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183220.P8252936650667446356

namespace A183220

/-- `∑[1-A214505(2*n+1)]` -/
def P8252936650667446356.Spec : Prop :=
  ∀ n, P8252936650667446356.a n = A183220 (n + 1)

end A183220

/-! ## A183220.P14325713736166641947

`∑[A337908(2*n+n+2)]`
-/

namespace A183220.P14325713736166641947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337908 (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183220.P14325713736166641947

namespace A183220

/-- `∑[A337908(2*n+n+2)]` -/
def P14325713736166641947.Spec : Prop :=
  ∀ n, P14325713736166641947.a n = A183220 (n + 1)

end A183220

/-! ## A183220.P7087243697079106161

`comp[Δ[A007531(n)]+n]%((3*n+1)*11*(n+1))`
-/

namespace A183220.P7087243697079106161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % ((3 * n + 1) * (11 * (n + 1)))

end

end A183220.P7087243697079106161

namespace A183220

/-- `comp[Δ[A007531(n)]+n]%((3*n+1)*11*(n+1))` -/
def P7087243697079106161.Spec : Prop :=
  ∀ n, (P7087243697079106161.a n : ℤ) = A183220 (n + 1)

end A183220

/-! ## A183220.P14998590021214195098

`comp[A056106(n)-(n+1)]%A016945(n)`
-/

namespace A183220.P14998590021214195098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A016945 n)

end

end A183220.P14998590021214195098

namespace A183220

/-- `comp[A056106(n)-(n+1)]%A016945(n)` -/
def P14998590021214195098.Spec : Prop :=
  ∀ n, P14998590021214195098.a n = A183220 (n + 1)

end A183220

/-! ## A183220.P16009140739544439769

`comp[A001082(A004277(n))]%((3*n+1)*11*(n+1))`
-/

namespace A183220.P16009140739544439769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (A004277 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % ((3 * n + 1) * (11 * (n + 1)))

end

end A183220.P16009140739544439769

namespace A183220

/-- `comp[A001082(A004277(n))]%((3*n+1)*11*(n+1))` -/
def P16009140739544439769.Spec : Prop :=
  ∀ n, (P16009140739544439769.a n : ℤ) = A183220 (n + 1)

end A183220

/-! ## A183220.P12146298587849527940

`comp[A032765(A032766(comp[2*(n+1)]))]%((3*n+1)*11*(n+1))`
-/

namespace A183220.P12146298587849527940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A032766 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % ((3 * n + 1) * (11 * (n + 1)))

end

end A183220.P12146298587849527940

namespace A183220

/-- `comp[A032765(A032766(comp[2*(n+1)]))]%((3*n+1)*11*(n+1))` -/
def P12146298587849527940.Spec : Prop :=
  ∀ n, (P12146298587849527940.a n : ℤ) = A183220 (n + 1)

end A183220

/-! ## A183220.P12661038825053154548

`lt[n*char[A000567(n)], n]`
-/

namespace A183220.P12661038825053154548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A183220.P12661038825053154548

namespace A183220

/-- `lt[n*char[A000567(n)], n]` -/
def P12661038825053154548.Spec : Prop :=
  ∀ n, (P12661038825053154548.a n : ℤ) = A183220 (n + 1)

end A183220

/-! ## A183220.P11808960396513147631

`lt[char[A000567(n)], n/A014156(n+1)]`
-/

namespace A183220.P11808960396513147631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A014156 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A183220.P11808960396513147631

namespace A183220

/-- `lt[char[A000567(n)], n/A014156(n+1)]` -/
def P11808960396513147631.Spec : Prop :=
  ∀ n, (P11808960396513147631.a n : ℤ) = A183220 (n + 1)

end A183220

/-!
# A183221: Complement of the 9-gonal numbers.

The programs for A183221, the canonical program `A183221.P14455531625544188502` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183221 has offset 1).

The definition of A183221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183221.P14455531625544188502

`n+1+floor(1/2+(2*(n+1)/7)^(1/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183221

/-- `n+1+floor(1/2+(2*(n+1)/7)^(1/2))` -/
def P14455531625544188502.Spec : Prop :=
  ∀ n, P14455531625544188502.a n = A183221 (n + 1)

theorem P14455531625544188502.correct : P14455531625544188502.Spec := by
  intro n
  simp only [A183221, Nat.add_sub_cancel]

end A183221

/-! ## A183221.P6281744030276968612

`comp[7*C(n, 2)+n]`
-/

namespace A183221.P6281744030276968612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183221.P6281744030276968612

namespace A183221

/-- `comp[7*C(n, 2)+n]` -/
def P6281744030276968612.Spec : Prop :=
  ∀ n, (P6281744030276968612.a n : ℤ) = A183221 (n + 1)

end A183221

/-! ## A183221.P15915503060479370969

`comp[∑[comp[gcd(7, n)+n]]]`
-/

namespace A183221.P15915503060479370969
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183221.P15915503060479370969

namespace A183221

/-- `comp[∑[comp[gcd(7, n)+n]]]` -/
def P15915503060479370969.Spec : Prop :=
  ∀ n, (P15915503060479370969.a n : ℤ) = A183221 (n + 1)

end A183221

/-! ## A183221.P4452559230674631905

`comp[n*record[lcm(2, n)]-∑[n]]`
-/

namespace A183221.P4452559230674631905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183221.P4452559230674631905

namespace A183221

/-- `comp[n*record[lcm(2, n)]-∑[n]]` -/
def P4452559230674631905.Spec : Prop :=
  ∀ n, (P4452559230674631905.a n : ℤ) = A183221 (n + 1)

end A183221

/-! ## A183221.P8082208986108640802

`comp[6-∑[a(n-1)-7]]` with `a(0)=6`
-/

namespace A183221.P8082208986108640802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183221.P8082208986108640802

namespace A183221

/-- `comp[6-∑[a(n-1)-7]]` -/
def P8082208986108640802.Spec : Prop :=
  ∀ n, (P8082208986108640802.a n : ℤ) = A183221 (n + 1)

end A183221

/-! ## A183221.P12771768100169057333

`comp[A001106(n)]`
-/

namespace A183221.P12771768100169057333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183221.P12771768100169057333

namespace A183221

/-- `comp[A001106(n)]` -/
def P12771768100169057333.Spec : Prop :=
  ∀ n, (P12771768100169057333.a n : ℤ) = A183221 (n + 1)

end A183221

/-! ## A183221.P13008390691195745252

`comp[A022264(n)-2*n]`
-/

namespace A183221.P13008390691195745252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183221.P13008390691195745252

namespace A183221

/-- `comp[A022264(n)-2*n]` -/
def P13008390691195745252.Spec : Prop :=
  ∀ n, (P13008390691195745252.a n : ℤ) = A183221 (n + 1)

end A183221

/-! ## A183221.P14585173393173104813

`comp[A000567(n)+∑[n]-n]`
-/

namespace A183221.P14585173393173104813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183221.P14585173393173104813

namespace A183221

/-- `comp[A000567(n)+∑[n]-n]` -/
def P14585173393173104813.Spec : Prop :=
  ∀ n, (P14585173393173104813.a n : ℤ) = A183221 (n + 1)

end A183221

/-! ## A183221.P3340438023633587670

`comp[A279019(2*(n+2))-∑[n]]`
-/

namespace A183221.P3340438023633587670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279019 (2 * (n + 2)) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183221.P3340438023633587670

namespace A183221

/-- `comp[A279019(2*(n+2))-∑[n]]` -/
def P3340438023633587670.Spec : Prop :=
  ∀ n, (P3340438023633587670.a n : ℤ) = A183221 (n + 1)

end A183221

/-! ## A183221.P13657944748635809019

`comp[A002939(n)-A000217(n)]`
-/

namespace A183221.P13657944748635809019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n - A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183221.P13657944748635809019

namespace A183221

/-- `comp[A002939(n)-A000217(n)]` -/
def P13657944748635809019.Spec : Prop :=
  ∀ n, (P13657944748635809019.a n : ℤ) = A183221 (n + 1)

end A183221

/-! ## A183221.P5056659015936652409

`comp[A000217(n)+A000567(n)-n]`
-/

namespace A183221.P5056659015936652409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A000567 n - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183221.P5056659015936652409

namespace A183221

/-- `comp[A000217(n)+A000567(n)-n]` -/
def P5056659015936652409.Spec : Prop :=
  ∀ n, (P5056659015936652409.a n : ℤ) = A183221 (n + 1)

end A183221

/-!
# A183222: Complement of the 10-gonal numbers.

The programs for A183222, the canonical program `A183222.P15806716498797787961` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183222 has offset 1).

The definition of A183222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183222.P15806716498797787961

`n+1+floor(((n+1)^(1/2)+1)/2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183222

/-- `n+1+floor(((n+1)^(1/2)+1)/2)` -/
def P15806716498797787961.Spec : Prop :=
  ∀ n, P15806716498797787961.a n = A183222 (n + 1)

theorem P15806716498797787961.correct : P15806716498797787961.Spec := by
  intro n
  simp only [A183222, Nat.add_sub_cancel]

end A183222

/-! ## A183222.P14975617536477499623

`∑[A098108(n+1)+1]`
-/

namespace A183222.P14975617536477499623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183222.P14975617536477499623

namespace A183222

/-- `∑[A098108(n+1)+1]` -/
def P14975617536477499623.Spec : Prop :=
  ∀ n, P14975617536477499623.a n = A183222 (n + 1)

end A183222

/-! ## A183222.P7001150766964446944

`∑[A000034(A000005(n+1)*A000034(n))]`
-/

namespace A183222.P7001150766964446944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000005 (n + 1) * A000034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183222.P7001150766964446944

namespace A183222

/-- `∑[A000034(A000005(n+1)*A000034(n))]` -/
def P7001150766964446944.Spec : Prop :=
  ∀ n, P7001150766964446944.a n = A183222 (n + 1)

end A183222

/-! ## A183222.P13727781403053148464

`lt[char[A001107(n)], 1]`
-/

namespace A183222.P13727781403053148464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A183222.P13727781403053148464

namespace A183222

/-- `lt[char[A001107(n)], 1]` -/
def P13727781403053148464.Spec : Prop :=
  ∀ n, (P13727781403053148464.a n : ℤ) = A183222 (n + 1)

end A183222

/-! ## A183222.P13632451590534993319

`A008619(A028392(n+1)+n)`
-/

namespace A183222.P13632451590534993319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A028392 (n + 1) + (n : ℤ)).toNat

end

end A183222.P13632451590534993319

namespace A183222

/-- `A008619(A028392(n+1)+n)` -/
def P13632451590534993319.Spec : Prop :=
  ∀ n, P13632451590534993319.a n = A183222 (n + 1)

end A183222

/-! ## A183222.P10150458292681430760

`A008619(A000196(n+1)+2*n+1)`
-/

namespace A183222.P10150458292681430760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000196 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A183222.P10150458292681430760

namespace A183222

/-- `A008619(A000196(n+1)+2*n+1)` -/
def P10150458292681430760.Spec : Prop :=
  ∀ n, P10150458292681430760.a n = A183222 (n + 1)

end A183222

/-! ## A183222.P7937929351322677677

`lt[A054523(2*(n+1))², n]`
-/

namespace A183222.P7937929351322677677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A183222.P7937929351322677677

namespace A183222

/-- `lt[A054523(2*(n+1))², n]` -/
def P7937929351322677677.Spec : Prop :=
  ∀ n, (P7937929351322677677.a n : ℤ) = A183222 (n + 1)

end A183222

/-! ## A183222.P13226045112396008127

`lt[A143614(2*(n+1))², n]`
-/

namespace A183222.P13226045112396008127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143614 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A183222.P13226045112396008127

namespace A183222

/-- `lt[A143614(2*(n+1))², n]` -/
def P13226045112396008127.Spec : Prop :=
  ∀ n, (P13226045112396008127.a n : ℤ) = A183222 (n + 1)

end A183222

/-! ## A183222.P7330956476357648957

`A004526(A135668(n+2)+n)`
-/

namespace A183222.P7330956476357648957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A135668 (n + 2) + (n : ℤ)).toNat

end

end A183222.P7330956476357648957

namespace A183222

/-- `A004526(A135668(n+2)+n)` -/
def P7330956476357648957.Spec : Prop :=
  ∀ n, P7330956476357648957.a n = A183222 (n + 1)

end A183222

/-! ## A183222.P8737785127626881015

`A065033(A078358(n+2)+n)`
-/

namespace A183222.P8737785127626881015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A078358 (n + 2) + (n : ℤ)).toNat

end

end A183222.P8737785127626881015

namespace A183222

/-- `A065033(A078358(n+2)+n)` -/
def P8737785127626881015.Spec : Prop :=
  ∀ n, P8737785127626881015.a n = A183222 (n + 1)

end A183222

/-! ## A183222.P14494987279333428529

`lt[A110555(2*n), A238801(2*n)]`
-/

namespace A183222.P14494987279333428529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A183222.P14494987279333428529

namespace A183222

/-- `lt[A110555(2*n), A238801(2*n)]` -/
def P14494987279333428529.Spec : Prop :=
  ∀ n, (P14494987279333428529.a n : ℤ) = A183222 (n + 1)

end A183222

/-! ## A183222.P4598027406777633562

`lt[1, A228405(2*n+1)]`
-/

namespace A183222.P4598027406777633562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183222.P4598027406777633562

namespace A183222

/-- `lt[1, A228405(2*n+1)]` -/
def P4598027406777633562.Spec : Prop :=
  ∀ n, (P4598027406777633562.a n : ℤ) = A183222 (n + 1)

end A183222

/-!
# A183223: Complement of the 11-gonal numbers.

The programs for A183223, the canonical program `A183223.P17907650673164872629` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183223 has offset 1).

The definition of A183223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183223.P17907650673164872629

`n+1+floor(1/2+(2*(n+1)/9+2/9)^(1/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183223

/-- `n+1+floor(1/2+(2*(n+1)/9+2/9)^(1/2))` -/
def P17907650673164872629.Spec : Prop :=
  ∀ n, P17907650673164872629.a n = A183223 (n + 1)

theorem P17907650673164872629.correct : P17907650673164872629.Spec := by
  intro n
  simp only [A183223, Nat.add_sub_cancel]

end A183223

/-! ## A183223.P13109623312273038130

`comp[9*C(n, 2)+n]`
-/

namespace A183223.P13109623312273038130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose n 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183223.P13109623312273038130

namespace A183223

/-- `comp[9*C(n, 2)+n]` -/
def P13109623312273038130.Spec : Prop :=
  ∀ n, (P13109623312273038130.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P3803101047066087747

`comp[∑[eq[n, n*dr(n)]]]`
-/

namespace A183223.P3803101047066087747
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183223.P3803101047066087747

namespace A183223

/-- `comp[∑[eq[n, n*dr(n)]]]` -/
def P3803101047066087747.Spec : Prop :=
  ∀ n, (P3803101047066087747.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P14051304610043860314

`comp[∑[a(n-1)+9]]` with `a(0)=0, a(1)=1`
-/

namespace A183223.P14051304610043860314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183223.P14051304610043860314

namespace A183223

/-- `comp[∑[a(n-1)+9]]` -/
def P14051304610043860314.Spec : Prop :=
  ∀ n, (P14051304610043860314.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P14187168401401598496

`comp[C(3*n, 2)-2*n]`
-/

namespace A183223.P14187168401401598496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℤ) - (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P14187168401401598496

namespace A183223

/-- `comp[C(3*n, 2)-2*n]` -/
def P14187168401401598496.Spec : Prop :=
  ∀ n, (P14187168401401598496.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P18006835806340646340

`comp[∑[lt[n*dr(n), n+1]]]`
-/

namespace A183223.P18006835806340646340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183223.P18006835806340646340

namespace A183223

/-- `comp[∑[lt[n*dr(n), n+1]]]` -/
def P18006835806340646340.Spec : Prop :=
  ∀ n, (P18006835806340646340.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P14463730660420784897

`comp[8-∑[a(n-1)-9]]` with `a(0)=8`
-/

namespace A183223.P14463730660420784897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P14463730660420784897

namespace A183223

/-- `comp[8-∑[a(n-1)-9]]` -/
def P14463730660420784897.Spec : Prop :=
  ∀ n, (P14463730660420784897.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P2304991872484098176

`comp[(∑[9*n+1]-(9*n+1))%(∑[9*n]+1)]`
-/

namespace A183223.P2304991872484098176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (9 * n + 1 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f3 j + 1 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P2304991872484098176

namespace A183223

/-- `comp[(∑[9*n+1]-(9*n+1))%(∑[9*n]+1)]` -/
def P2304991872484098176.Spec : Prop :=
  ∀ n, (P2304991872484098176.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P2170614224318424985

`comp[A051682(n)]`
-/

namespace A183223.P2170614224318424985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P2170614224318424985

namespace A183223

/-- `comp[A051682(n)]` -/
def P2170614224318424985.Spec : Prop :=
  ∀ n, (P2170614224318424985.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P7228478559156110281

`comp[A117625(n)-1]`
-/

namespace A183223.P7228478559156110281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117625 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P7228478559156110281

namespace A183223

/-- `comp[A117625(n)-1]` -/
def P7228478559156110281.Spec : Prop :=
  ∀ n, (P7228478559156110281.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P8972521607562514064

`comp[A135706(n)-∑[n]]`
-/

namespace A183223.P8972521607562514064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P8972521607562514064

namespace A183223

/-- `comp[A135706(n)-∑[n]]` -/
def P8972521607562514064.Spec : Prop :=
  ∀ n, (P8972521607562514064.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P14166845602714619894

`comp[A062741(n)-2*n]`
-/

namespace A183223.P14166845602714619894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n - (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P14166845602714619894

namespace A183223

/-- `comp[A062741(n)-2*n]` -/
def P14166845602714619894.Spec : Prop :=
  ∀ n, (P14166845602714619894.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P5161419253455770186

`comp[A226492(n)-∑[2*n]]`
-/

namespace A183223.P5161419253455770186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P5161419253455770186

namespace A183223

/-- `comp[A226492(n)-∑[2*n]]` -/
def P5161419253455770186.Spec : Prop :=
  ∀ n, (P5161419253455770186.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P8835640864388746419

`comp[(3*n-2)*4*n-A152773(n)]`
-/

namespace A183223.P8835640864388746419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - 2) * (4 * n : ℤ) - A152773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P8835640864388746419

namespace A183223

/-- `comp[(3*n-2)*4*n-A152773(n)]` -/
def P8835640864388746419.Spec : Prop :=
  ∀ n, (P8835640864388746419.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P15478101546962819046

`comp[∑[9*(n-1)*A000040(n+1)%2+1]-1]`
-/

namespace A183223.P15478101546962819046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((n : ℤ) - 1) * Int.tmod (A000040 (n + 1)) 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P15478101546962819046

namespace A183223

/-- `comp[∑[9*(n-1)*A000040(n+1)%2+1]-1]` -/
def P15478101546962819046.Spec : Prop :=
  ∀ n, (P15478101546962819046.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P7725393587722503290

`comp[A022282(n)-A139276(n)]`
-/

namespace A183223.P7725393587722503290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n - A139276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P7725393587722503290

namespace A183223

/-- `comp[A022282(n)-A139276(n)]` -/
def P7725393587722503290.Spec : Prop :=
  ∀ n, (P7725393587722503290.a n : ℤ) = A183223 (n + 1)

end A183223

/-! ## A183223.P834051297465644078

`comp[A080857(n)-A080856(n)]`
-/

namespace A183223.P834051297465644078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080857 n - A080856 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183223.P834051297465644078

namespace A183223

/-- `comp[A080857(n)-A080856(n)]` -/
def P834051297465644078.Spec : Prop :=
  ∀ n, (P834051297465644078.a n : ℤ) = A183223 (n + 1)

end A183223

/-!
# A183224: Complement of the 12-gonal numbers.

The programs for A183224, the canonical program `A183224.P11413968814971402827` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183224 has offset 1).

The definition of A183224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183224.P11413968814971402827

`n+1+floor(1/2+((n+1)/5+1/5)^(1/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183224

/-- `n+1+floor(1/2+((n+1)/5+1/5)^(1/2))` -/
def P11413968814971402827.Spec : Prop :=
  ∀ n, P11413968814971402827.a n = A183224 (n + 1)

theorem P11413968814971402827.correct : P11413968814971402827.Spec := by
  intro n
  simp only [A183224, Nat.add_sub_cancel]

end A183224

/-! ## A183224.P17521163752970439517

`and(comp[A051624(n)], -1)`
-/

namespace A183224.P17521163752970439517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A183224.P17521163752970439517

namespace A183224

/-- `and(comp[A051624(n)], -1)` -/
def P17521163752970439517.Spec : Prop :=
  ∀ n, P17521163752970439517.a n = A183224 (n + 1)

end A183224

/-! ## A183224.P11759089054596425574

`∑[char[A124080(n)]+1]`
-/

namespace A183224.P11759089054596425574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183224.P11759089054596425574

namespace A183224

/-- `∑[char[A124080(n)]+1]` -/
def P11759089054596425574.Spec : Prop :=
  ∀ n, (P11759089054596425574.a n : ℤ) = A183224 (n + 1)

end A183224

/-! ## A183224.P15254551204884085372

`∑[char[A135705(n)+n]+1]`
-/

namespace A183224.P15254551204884085372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183224.P15254551204884085372

namespace A183224

/-- `∑[char[A135705(n)+n]+1]` -/
def P15254551204884085372.Spec : Prop :=
  ∀ n, (P15254551204884085372.a n : ℤ) = A183224 (n + 1)

end A183224

/-! ## A183224.P17585668431060924104

`∑[A035214(A028242(A016897(n)))]`
-/

namespace A183224.P17585668431060924104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A028242 (A016897 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183224.P17585668431060924104

namespace A183224

/-- `∑[A035214(A028242(A016897(n)))]` -/
def P17585668431060924104.Spec : Prop :=
  ∀ n, P17585668431060924104.a n = A183224 (n + 1)

end A183224

/-! ## A183224.P12700630547978603653

`∑[A062557(5*(n+1))]`
-/

namespace A183224.P12700630547978603653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183224.P12700630547978603653

namespace A183224

/-- `∑[A062557(5*(n+1))]` -/
def P12700630547978603653.Spec : Prop :=
  ∀ n, P12700630547978603653.a n = A183224 (n + 1)

end A183224

/-! ## A183224.P1422760054327142624

`∑[A035214(A110659(A017353(n)))]`
-/

namespace A183224.P1422760054327142624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A110659 (A017353 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183224.P1422760054327142624

namespace A183224

/-- `∑[A035214(A110659(A017353(n)))]` -/
def P1422760054327142624.Spec : Prop :=
  ∀ n, P1422760054327142624.a n = A183224 (n + 1)

end A183224

/-! ## A183224.P13987402508097847663

`∑[A035214(A110659(A017365(n)))]`
-/

namespace A183224.P13987402508097847663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A110659 (A017365 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183224.P13987402508097847663

namespace A183224

/-- `∑[A035214(A110659(A017365(n)))]` -/
def P13987402508097847663.Spec : Prop :=
  ∀ n, P13987402508097847663.a n = A183224 (n + 1)

end A183224

/-!
# A183225: Array: row r is the complement of the (r+2)-gonal numbers; by antidiagonals.

The programs for A183225, the canonical program `A183225.P13096611461435880722` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183225 has offset 1).

The definition of A183225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183225.P10341017083312132883

`A002024(A010766(n+1))+C(comp[∑[n]]-n, 2)-n`
-/

namespace A183225.P10341017083312132883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A010766 (n + 1)).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A183225.P10341017083312132883

namespace A183225

/-- `A002024(A010766(n+1))+C(comp[∑[n]]-n, 2)-n` -/
def P10341017083312132883.Spec : Prop :=
  ∀ n, P10341017083312132883.a n = A183225 (n + 1)

end A183225

/-! ## A183225.P13096611461435880722

`A025581(n)+A003057(A050206(n+2))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A183225

/-- `A025581(n)+A003057(A050206(n+2))` -/
def P13096611461435880722.Spec : Prop :=
  ∀ n, P13096611461435880722.a n = A183225 (n + 1)

theorem P13096611461435880722.correct : P13096611461435880722.Spec := by
  intro n
  simp only [A183225, Nat.add_sub_cancel]

end A183225

/-! ## A183225.P179332110815831869

`A004736(n+1)+A002024(A010766(n+1))`
-/

namespace A183225.P179332110815831869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002024 (A010766 (n + 1)).toNat

end

end A183225.P179332110815831869

namespace A183225

/-- `A004736(n+1)+A002024(A010766(n+1))` -/
def P179332110815831869.Spec : Prop :=
  ∀ n, P179332110815831869.a n = A183225 (n + 1)

end A183225

/-! ## A183225.P7660435626250506975

`A002024(A010766(n+1))+A025581(n)+1`
-/

namespace A183225.P7660435626250506975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A010766 (n + 1)).toNat + (A025581 n + 1)

end

end A183225.P7660435626250506975

namespace A183225

/-- `A002024(A010766(n+1))+A025581(n)+1` -/
def P7660435626250506975.Spec : Prop :=
  ∀ n, P7660435626250506975.a n = A183225 (n + 1)

end A183225

/-! ## A183225.P3599484624717791291

`A004736(n+1)+A002024(abs(A174557(n+1)))`
-/

namespace A183225.P3599484624717791291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002024 |A174557 (n + 1)|.toNat

end

end A183225.P3599484624717791291

namespace A183225

/-- `A004736(n+1)+A002024(abs(A174557(n+1)))` -/
def P3599484624717791291.Spec : Prop :=
  ∀ n, P3599484624717791291.a n = A183225 (n + 1)

end A183225

/-! ## A183225.P16846935245931483459

`A002024(A010766(n+1))+val(A118586(n+1), 2)`
-/

namespace A183225.P16846935245931483459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A010766 (n + 1)).toNat + (SequenceMachineLib.valuation (A118586 (n + 1)).toNat 2 : ℤ)

end

end A183225.P16846935245931483459

namespace A183225

/-- `A002024(A010766(n+1))+val(A118586(n+1), 2)` -/
def P16846935245931483459.Spec : Prop :=
  ∀ n, P16846935245931483459.a n = A183225 (n + 1)

end A183225

/-! ## A183225.P13326663629453565441

`A110654(A099375(n))+A002024(A010766(n+1))`
-/

namespace A183225.P13326663629453565441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A099375 n).toNat + A002024 (A010766 (n + 1)).toNat

end

end A183225.P13326663629453565441

namespace A183225

/-- `A110654(A099375(n))+A002024(A010766(n+1))` -/
def P13326663629453565441.Spec : Prop :=
  ∀ n, P13326663629453565441.a n = A183225 (n + 1)

end A183225

/-! ## A183225.P7259942841229699662

`A193739(A080036(n))+A002024(A010766(n+1))`
-/

namespace A183225.P7259942841229699662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A080036 n).toNat + A002024 (A010766 (n + 1)).toNat

end

end A183225.P7259942841229699662

namespace A183225

/-- `A193739(A080036(n))+A002024(A010766(n+1))` -/
def P7259942841229699662.Spec : Prop :=
  ∀ n, P7259942841229699662.a n = A183225 (n + 1)

end A183225

/-! ## A183225.P5141764994101374043

`A002024(A010766(n+1))+A000005(A130321(n))`
-/

namespace A183225.P5141764994101374043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A010766 (n + 1)).toNat + A000005 (A130321 n).toNat

end

end A183225.P5141764994101374043

namespace A183225

/-- `A002024(A010766(n+1))+A000005(A130321(n))` -/
def P5141764994101374043.Spec : Prop :=
  ∀ n, P5141764994101374043.a n = A183225 (n + 1)

end A183225

/-! ## A183225.P15322572010099287289

`A003057(A050206(n+2))+A001222(A130321(n))`
-/

namespace A183225.P15322572010099287289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A050206 (n + 2)).toNat + A001222 (A130321 n).toNat

end

end A183225.P15322572010099287289

namespace A183225

/-- `A003057(A050206(n+2))+A001222(A130321(n))` -/
def P15322572010099287289.Spec : Prop :=
  ∀ n, P15322572010099287289.a n = A183225 (n + 1)

end A183225

/-!
# A183226: Sum of digits of (2^n) in base 5, also sum of digits of (10^n) in base 5.

The programs for A183226, there is no canonical definition to state claims against.
-/

/-! ## A183226.P17795378355093727303

`A183228(n)-1`
-/

namespace A183226.P17795378355093727303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183228 n - 1

end

end A183226.P17795378355093727303

/-! ## A183226.P12224701818232802253

`A023443(A183228(n))`
-/

namespace A183226.P12224701818232802253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183228 n).toNat

end

end A183226.P12224701818232802253

/-! ## A183226.P3293320646317396988

`A289207(A183228(n)+1)`
-/

namespace A183226.P3293320646317396988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A183228 n + 1).toNat

end

end A183226.P3293320646317396988

/-! ## A183226.P10004092427785288226

`A004442(A183228(n)%A008458(n))`
-/

namespace A183226.P10004092427785288226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.tmod (A183228 n) (A008458 n)).toNat

end

end A183226.P10004092427785288226

/-! ## A183226.P11756724504968292082

`A249738(2*A183228(n))`
-/

namespace A183226.P11756724504968292082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A183228 n).toNat

end

end A183226.P11756724504968292082

/-! ## A183226.P7210885460500095632

`A289207(2*A183228(n))/2`
-/

namespace A183226.P7210885460500095632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289207 (2 * A183228 n).toNat : ℚ) / 2

end

end A183226.P7210885460500095632

/-! ## A183226.P7876510921798034766

`A309873(A016825(n))+A183228(n)`
-/

namespace A183226.P7876510921798034766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A016825 n).toNat + A183228 n

end

end A183226.P7876510921798034766

/-! ## A183226.P11999715681008341831

`∑{digits}[A000866(n), #]`
-/

namespace A183226.P11999715681008341831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A183226.P11999715681008341831

/-!
# A183227: a(n) is the base-5 digit sum of 10^n-1.

The programs for A183227, the canonical program `A183227.P8998500749623055226` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183227 has offset 0).

The definition of A183227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183227.P8998500749623055226

`4*n+A053824(2^n-1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183227

/-- `4*n+A053824(2^n-1)` -/
def P8998500749623055226.Spec : Prop :=
  ∀ n, P8998500749623055226.a n = A183227 n

theorem P8998500749623055226.correct : P8998500749623055226.Spec := by
  intro n
  simp only [A183227]

end A183227

/-! ## A183227.P5435888837689418873

`4*n+A183226(n)-1`
-/

namespace A183227.P5435888837689418873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A183226 n - 1)

end

end A183227.P5435888837689418873

namespace A183227

/-- `4*n+A183226(n)-1` -/
def P5435888837689418873.Spec : Prop :=
  ∀ n, P5435888837689418873.a n = A183227 n

end A183227

/-! ## A183227.P10033967224162825876

`4*n+A183228(n)-2`
-/

namespace A183227.P10033967224162825876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A183228 n - 2)

end

end A183227.P10033967224162825876

namespace A183227

/-- `4*n+A183228(n)-2` -/
def P10033967224162825876.Spec : Prop :=
  ∀ n, P10033967224162825876.a n = A183227 n

end A183227

/-! ## A183227.P10695077410337964088

`A183226(n)+A008586(n)-1`
-/

namespace A183227.P10695077410337964088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183226 n + A008586 n - 1

end

end A183227.P10695077410337964088

namespace A183227

/-- `A183226(n)+A008586(n)-1` -/
def P10695077410337964088.Spec : Prop :=
  ∀ n, P10695077410337964088.a n = A183227 n

end A183227

/-! ## A183227.P7080262318200905916

`A183226(n)+A016813(n)-2`
-/

namespace A183227.P7080262318200905916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183226 n + (A016813 n - 2)

end

end A183227.P7080262318200905916

namespace A183227

/-- `A183226(n)+A016813(n)-2` -/
def P7080262318200905916.Spec : Prop :=
  ∀ n, P7080262318200905916.a n = A183227 n

end A183227

/-! ## A183227.P80656607531823980

`A183226(n)+A016825(n)-3`
-/

namespace A183227.P80656607531823980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183226 n + (A016825 n - 3)

end

end A183227.P80656607531823980

namespace A183227

/-- `A183226(n)+A016825(n)-3` -/
def P80656607531823980.Spec : Prop :=
  ∀ n, P80656607531823980.a n = A183227 n

end A183227

/-! ## A183227.P175062952146993470

`A289207(A183228(n))+4*n`
-/

namespace A183227.P175062952146993470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A183228 n).toNat + (4 * n : ℤ)

end

end A183227.P175062952146993470

namespace A183227

/-- `A289207(A183228(n))+4*n` -/
def P175062952146993470.Spec : Prop :=
  ∀ n, P175062952146993470.a n = A183227 n

end A183227

/-! ## A183227.P7035170089965140961

`A016813(n)-A022959(A183228(n))`
-/

namespace A183227.P7035170089965140961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A022959 (A183228 n).toNat

end

end A183227.P7035170089965140961

namespace A183227

/-- `A016813(n)-A022959(A183228(n))` -/
def P7035170089965140961.Spec : Prop :=
  ∀ n, P7035170089965140961.a n = A183227 n

end A183227

/-! ## A183227.P5121162069298117148

`A183226(n)+Δ[A014107(n)]`
-/

namespace A183227.P5121162069298117148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183226 n + (f1 (n + 1) - f1 n)

end

end A183227.P5121162069298117148

namespace A183227

/-- `A183226(n)+Δ[A014107(n)]` -/
def P5121162069298117148.Spec : Prop :=
  ∀ n, P5121162069298117148.a n = A183227 n

end A183227

/-! ## A183227.P4929893477136734660

`A183226(n)+A060747(2*n)`
-/

namespace A183227.P4929893477136734660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183226 n + A060747 (2 * n)

end

end A183227.P4929893477136734660

namespace A183227

/-- `A183226(n)+A060747(2*n)` -/
def P4929893477136734660.Spec : Prop :=
  ∀ n, P4929893477136734660.a n = A183227 n

end A183227

/-! ## A183227.P4633411802674302434

`A183226(n)+A023443(A008586(n))`
-/

namespace A183227.P4633411802674302434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183226 n + A023443 (A008586 n).toNat

end

end A183227.P4633411802674302434

namespace A183227

/-- `A183226(n)+A023443(A008586(n))` -/
def P4633411802674302434.Spec : Prop :=
  ∀ n, P4633411802674302434.a n = A183227 n

end A183227

/-!
# A183228: a(n) is the base-5 digit sum of 10^n+1.

The programs for A183228, there is no canonical definition to state claims against.
-/

/-! ## A183228.P15925133232972370000

`A183226(n)+1`
-/

namespace A183228.P15925133232972370000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183226 n + 1

end

end A183228.P15925133232972370000

/-! ## A183228.P15290007199376751427

`A020725(A183226(n))`
-/

namespace A183228.P15290007199376751427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A183226 n).toNat

end

end A183228.P15290007199376751427

/-! ## A183228.P401952414387827864

`n-(A023443(n)-A183226(n))`
-/

namespace A183228.P401952414387827864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A183226 n)

end

end A183228.P401952414387827864

/-! ## A183228.P950591954336367533

`A057174(2*A183226(n)-A183226(n))`
-/

namespace A183228.P950591954336367533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (2 * A183226 n - A183226 n).toNat

end

end A183228.P950591954336367533

/-! ## A183228.P17158953813652280710

`A008619(2*A183226(n))`
-/

namespace A183228.P17158953813652280710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A183226 n).toNat

end

end A183228.P17158953813652280710

/-! ## A183228.P1466281840959010991

`A008611(3*A183226(n))`
-/

namespace A183228.P1466281840959010991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A183226 n).toNat

end

end A183228.P1466281840959010991

/-! ## A183228.P12760183820548034856

`∑{digits}[A000866(n)+1, #]`
-/

namespace A183228.P12760183820548034856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000866 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A183228.P12760183820548034856

/-!
# A183229: G.f.: Sum_{n>=0} a(n)*x^n/n!^2 = Product_{n>=1} (1 + x^n/n!^2).

The programs for A183229, there is no canonical definition to state claims against.
-/

/-! ## A183229.P9350839774327045553

`A058364(n²^floor(n/3))`
-/

namespace A183229.P9350839774327045553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058364 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ))).toNat

end

end A183229.P9350839774327045553

/-! ## A183229.P3111131472514551234

`A365481(C(n, floor(n/3))^n)`
-/

namespace A183229.P3111131472514551234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365481 (Nat.choose n ⌊(n : ℚ) / 3⌋.toNat ^ n)

end

end A183229.P3111131472514551234

/-!
# A183230: G.f.: Sum_{n>=0} a(n)*x^n/n!^3 = Product_{n>=1} (1 + x^n/n!^3).

The programs for A183230, there is no canonical definition to state claims against.
-/

/-! ## A183230.P10983284772197122152

`lcm(A050361(A073980(n+3))-1, n^3)+1`
-/

namespace A183230.P10983284772197122152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050361 (A073980 (n + 3)).toNat - 1) (n ^ 3 : ℤ) + 1

end

end A183230.P10983284772197122152

/-! ## A183230.P16462788858452509376

`A065475(A059366(n)²*A000272(n))`
-/

namespace A183230.P16462788858452509376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A059366 n ^ 2 * A000272 n).toNat

end

end A183230.P16462788858452509376

/-!
# A183233: Ordering of the numbers in the tree A183231; complement of A183234.

The programs for A183233, the canonical program `A183233.P11654729324377189926` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183233 has offset 1).

The definition of A183233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183233.P11654729324377189926

`lt[1, Δ[A057945(n)²]]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A183233

/-- `lt[1, Δ[A057945(n)²]]` -/
def P11654729324377189926.Spec : Prop :=
  ∀ n, (P11654729324377189926.a n : ℤ) = A183233 (n + 1)

theorem P11654729324377189926.correct : P11654729324377189926.Spec := by
  intro n
  simp only [A183233, Nat.add_sub_cancel]

end A183233

/-! ## A183233.P8901237698373888597

`lt[A256910(n+2), 3]+1`
-/

namespace A183233.P8901237698373888597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A183233.P8901237698373888597

namespace A183233

/-- `lt[A256910(n+2), 3]+1` -/
def P8901237698373888597.Spec : Prop :=
  ∀ n, (P8901237698373888597.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P3438790979764734684

`comp[A183234(n+1)-1]+1`
-/

namespace A183233.P3438790979764734684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183234 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183233.P3438790979764734684

namespace A183233

/-- `comp[A183234(n+1)-1]+1` -/
def P3438790979764734684.Spec : Prop :=
  ∀ n, (P3438790979764734684.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P8254154267953172887

`eq[0, a(A002262(n))%2]-1` with `a(0)=1, a(1)=2`
-/

namespace A183233.P8254154267953172887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (A002262 n).toNat % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A183233.P8254154267953172887

namespace A183233

/-- `eq[0, a(A002262(n))%2]-1` -/
def P8254154267953172887.Spec : Prop :=
  ∀ n, P8254154267953172887.a n = A183233 (n + 1)

end A183233

/-! ## A183233.P9904203515766580793

`lt[3, 2*a(A002260(n+1)-1)]-1` with `a(0)=0, a(1)=2`
-/

namespace A183233.P9904203515766580793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  2 * f2 (A002260 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A183233.P9904203515766580793

namespace A183233

/-- `lt[3, 2*a(A002260(n+1)-1)]-1` -/
def P9904203515766580793.Spec : Prop :=
  ∀ n, P9904203515766580793.a n = A183233 (n + 1)

end A183233

/-! ## A183233.P17279523372589798939

`lt[A256911(n), A057945(n+1)]`
-/

namespace A183233.P17279523372589798939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A183233.P17279523372589798939

namespace A183233

/-- `lt[A256911(n), A057945(n+1)]` -/
def P17279523372589798939.Spec : Prop :=
  ∀ n, (P17279523372589798939.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P12595016653336391149

`eq[2%A256910(n+1), A000007(n)]`
-/

namespace A183233.P12595016653336391149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A256910 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183233.P12595016653336391149

namespace A183233

/-- `eq[2%A256910(n+1), A000007(n)]` -/
def P12595016653336391149.Spec : Prop :=
  ∀ n, (P12595016653336391149.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P2158140423036204402

`eq[4%A256910(n+1), A000038(n)]`
-/

namespace A183233.P2158140423036204402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A256910 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183233.P2158140423036204402

namespace A183233

/-- `eq[4%A256910(n+1), A000038(n)]` -/
def P2158140423036204402.Spec : Prop :=
  ∀ n, (P2158140423036204402.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P13416259601494570291

`eq[gcd(5, A000462(n+1)), A057427(n)]`
-/

namespace A183233.P13416259601494570291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A000462 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183233.P13416259601494570291

namespace A183233

/-- `eq[gcd(5, A000462(n+1)), A057427(n)]` -/
def P13416259601494570291.Spec : Prop :=
  ∀ n, (P13416259601494570291.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P7009058618975864212

`eq[val(A000462(n+1), 5), A000007(n)]`
-/

namespace A183233.P7009058618975864212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000462 (n + 1)).toNat 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183233.P7009058618975864212

namespace A183233

/-- `eq[val(A000462(n+1), 5), A000007(n)]` -/
def P7009058618975864212.Spec : Prop :=
  ∀ n, (P7009058618975864212.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P18210163977022882894

`record[(n+1)/(A000462(n+2)-A000462(n+1))]`
-/

namespace A183233.P18210163977022882894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000462 (n + 2) - A000462 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183233.P18210163977022882894

namespace A183233

/-- `record[(n+1)/(A000462(n+2)-A000462(n+1))]` -/
def P18210163977022882894.Spec : Prop :=
  ∀ n, P18210163977022882894.a n = (A183233 (n + 1) : ℚ)

end A183233

/-! ## A183233.P16706153774311616378

`eq[A057945(n), A057945(A193738(n))]`
-/

namespace A183233.P16706153774311616378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (A193738 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183233.P16706153774311616378

namespace A183233

/-- `eq[A057945(n), A057945(A193738(n))]` -/
def P16706153774311616378.Spec : Prop :=
  ∀ n, (P16706153774311616378.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P17703055944623022068

`eq[A000010(A256910(n+1)), A054977(n)]`
-/

namespace A183233.P17703055944623022068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A256910 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183233.P17703055944623022068

namespace A183233

/-- `eq[A000010(A256910(n+1)), A054977(n)]` -/
def P17703055944623022068.Spec : Prop :=
  ∀ n, (P17703055944623022068.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P16784782006279671990

`eq[A000010(A256910(n+1)), A057427(n)]`
-/

namespace A183233.P16784782006279671990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A256910 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183233.P16784782006279671990

namespace A183233

/-- `eq[A000010(A256910(n+1)), A057427(n)]` -/
def P16784782006279671990.Spec : Prop :=
  ∀ n, (P16784782006279671990.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P5224815370194962149

`eq[A000010(A256910(n+1)), A158388(n)]`
-/

namespace A183233.P5224815370194962149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A256910 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183233.P5224815370194962149

namespace A183233

/-- `eq[A000010(A256910(n+1)), A158388(n)]` -/
def P5224815370194962149.Spec : Prop :=
  ∀ n, (P5224815370194962149.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P8116493599115495790

`eq[A000007(n), A297167(A256910(n+1))]`
-/

namespace A183233.P8116493599115495790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (A256910 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183233.P8116493599115495790

namespace A183233

/-- `eq[A000007(n), A297167(A256910(n+1))]` -/
def P8116493599115495790.Spec : Prop :=
  ∀ n, (P8116493599115495790.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P17845275288752968371

`eq[A000038(n), A297167(A256910(n+1))]`
-/

namespace A183233.P17845275288752968371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (A256910 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183233.P17845275288752968371

namespace A183233

/-- `eq[A000038(n), A297167(A256910(n+1))]` -/
def P17845275288752968371.Spec : Prop :=
  ∀ n, (P17845275288752968371.a n : ℤ) = A183233 (n + 1)

end A183233

/-! ## A183233.P6069304400842449008

`eq[A057945(A002262(n))+2, A057945(n+1)]`
-/

namespace A183233.P6069304400842449008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (A002262 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183233.P6069304400842449008

namespace A183233

/-- `eq[A057945(A002262(n))+2, A057945(n+1)]` -/
def P6069304400842449008.Spec : Prop :=
  ∀ n, (P6069304400842449008.a n : ℤ) = A183233 (n + 1)

end A183233

/-!
# A183234: Ordering of the numbers in tree A183232; complement of A183233.

The programs for A183234, there is no canonical definition to state claims against.
-/

/-! ## A183234.P7227539164357992231

`lt[Δ[A057945(n)], 0]`
-/

namespace A183234.P7227539164357992231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A183234.P7227539164357992231

/-! ## A183234.P3570880302705746454

`A376354(n+1)-1`
-/

namespace A183234.P3570880302705746454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376354 (n + 1) - 1

end

end A183234.P3570880302705746454

/-! ## A183234.P8981817952404157678

`lt[2, A256910(n+1)]`
-/

namespace A183234.P8981817952404157678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183234.P8981817952404157678

/-! ## A183234.P17633006791162309683

`lt[2, A256910(n)]-1`
-/

namespace A183234.P17633006791162309683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A183234.P17633006791162309683

/-! ## A183234.P17723467646434144610

`eq[0, A000462(n+1)%5]`
-/

namespace A183234.P17723467646434144610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000462 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183234.P17723467646434144610

/-! ## A183234.P8305119373680221348

`eq[0, a(A002262(n))%2]-1` with `a(0)=2, a(1)=1`
-/

namespace A183234.P8305119373680221348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (A002262 n).toNat % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A183234.P8305119373680221348

/-! ## A183234.P1836801581066730869

`A023443(A376354(n+1))`
-/

namespace A183234.P1836801581066730869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A376354 (n + 1)).toNat

end

end A183234.P1836801581066730869

/-! ## A183234.P14599206570418851650

`A023443(lt[2, A256910(n)])`
-/

namespace A183234.P14599206570418851650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A183234.P14599206570418851650

/-! ## A183234.P3419999672252510487

`A233583(lt[2, A256910(n)])`
-/

namespace A183234.P3419999672252510487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A183234.P3419999672252510487

/-!
# A183235: Sums of the cubes of multinomial coefficients.

The programs for A183235, there is no canonical definition to state claims against.
-/

/-! ## A183235.P1098114475353500308

`A183610(∑[n+3]+n+3)`
-/

namespace A183235.P1098114475353500308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A183235.P1098114475353500308

/-! ## A183235.P11570616685237549841

`A183610(A046691(n+2))+A025439(n)`
-/

namespace A183235.P11570616685237549841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (A046691 (n + 2)).toNat + A025439 n

end

end A183235.P11570616685237549841

/-! ## A183235.P14685256593402118480

`A183610(A046691(n+2))+A025466(n)`
-/

namespace A183235.P14685256593402118480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (A046691 (n + 2)).toNat + A025466 n

end

end A183235.P14685256593402118480

/-! ## A183235.P850292131164955347

`A185238(n)+A183610(A046691(n+2))`
-/

namespace A183235.P850292131164955347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + A183610 (A046691 (n + 2)).toNat

end

end A183235.P850292131164955347

/-! ## A183235.P3146436761068668877

`A185284(n)+A183610(A046691(n+2))`
-/

namespace A183235.P3146436761068668877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A183610 (A046691 (n + 2)).toNat

end

end A183235.P3146436761068668877

/-!
# A183236: Sums of multinomial coefficients to the 4th power.

The programs for A183236, there is no canonical definition to state claims against.
-/

/-! ## A183236.P11717195943442655950

`A183610(eq[3, A212551(n)])`
-/

namespace A183236.P11717195943442655950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183236.P11717195943442655950

/-! ## A183236.P2762744156445437820

`A183610(eq[4, A025581(n)])`
-/

namespace A183236.P2762744156445437820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183236.P2762744156445437820

/-! ## A183236.P5237530957688637854

`A183610(eq[9, A099375(n)])`
-/

namespace A183236.P5237530957688637854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183236.P5237530957688637854

/-! ## A183236.P5577345241880384434

`A183610(eq[16, A130321(n)])`
-/

namespace A183236.P5577345241880384434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183236.P5577345241880384434

/-! ## A183236.P10507692492685373445

`A183610(eq[5, A004736(n+1)])`
-/

namespace A183236.P10507692492685373445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183236.P10507692492685373445

/-!
# A183237: Sums of multinomial coefficients to the 5th power.

The programs for A183237, there is no canonical definition to state claims against.
-/

/-! ## A183237.P13743236380757396269

`A183610(eq[4, A212551(n)])`
-/

namespace A183237.P13743236380757396269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183237.P13743236380757396269

/-! ## A183237.P9693345543812344172

`A183610(eq[5, A025581(n)])`
-/

namespace A183237.P9693345543812344172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183237.P9693345543812344172

/-! ## A183237.P11180682942622102241

`A183610(eq[11, A099375(n)])`
-/

namespace A183237.P11180682942622102241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183237.P11180682942622102241

/-! ## A183237.P11002718718063838264

`A183610(A155212(n+2)+2)`
-/

namespace A183237.P11002718718063838264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (A155212 (n + 2) + 2).toNat

end

end A183237.P11002718718063838264

/-! ## A183237.P10159932451102280637

`A183610(eq[6, A004736(n+1)])`
-/

namespace A183237.P10159932451102280637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183237.P10159932451102280637

/-!
# A183238: Sums of multinomial coefficients to the 6th power.

The programs for A183238, there is no canonical definition to state claims against.
-/

/-! ## A183238.P6823677174201469868

`A183610(eq[13, A099375(n)])`
-/

namespace A183238.P6823677174201469868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183238.P6823677174201469868

/-!
# A183239: G.f.: exp( Sum_{n>=1} A005651(n)*x^n/n ), where A005651 gives the sums of multinomial coefficients.

The programs for A183239, there is no canonical definition to state claims against.
-/

/-! ## A183239.P3122546141465617550

`A059995(A138685(n!))`
-/

namespace A183239.P3122546141465617550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A138685 (Nat.factorial n)).toNat

end

end A183239.P3122546141465617550

/-! ## A183239.P11521671719493753896

`A060715(A207433(n))+A006252(n)`
-/

namespace A183239.P11521671719493753896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A207433 n).toNat + A006252 n

end

end A183239.P11521671719493753896

/-!
# A183240: Sums of the squares of multinomial coefficients.

The programs for A183240, there is no canonical definition to state claims against.
-/

/-! ## A183240.P10741596857143575425

`A183610(∑[n+3])`
-/

namespace A183240.P10741596857143575425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183240.P10741596857143575425

/-! ## A183240.P5796347479633484858

`A183610(A141214(n))+A011742(n)`
-/

namespace A183240.P5796347479633484858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (A141214 n).toNat + A011742 n

end

end A183240.P5796347479633484858

/-! ## A183240.P5271136220179790978

`gcd(A000038(n), A183610(A141214(n)))`
-/

namespace A183240.P5271136220179790978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183610 (A141214 n).toNat)

end

end A183240.P5271136220179790978

/-! ## A183240.P7586697949249954597

`A007318(∑[n])*A183610(A141214(n))`
-/

namespace A183240.P7586697949249954597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A183610 (A141214 n).toNat

end

end A183240.P7586697949249954597

/-! ## A183240.P11684935289770063536

`A000041(C(2, n+2))*A183610(A141214(n))`
-/

namespace A183240.P11684935289770063536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A183610 (A141214 n).toNat

end

end A183240.P11684935289770063536

/-!
# A183241: G.f.: A(x) = exp( Sum_{n>=1} A183240(n)*x^n/n ) where A183240 is the sums of the squares of multinomial coefficients.

The programs for A183241, there is no canonical definition to state claims against.
-/

/-! ## A183241.P12278707902914110673

`A333776(A335871(n)+A333791(n+1))`
-/

namespace A183241.P12278707902914110673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A335871 n + A333791 (n + 1)).toNat

end

end A183241.P12278707902914110673

/-! ## A183241.P17663798220464715096

`A333776(A335871(n)+A333792(n+1))`
-/

namespace A183241.P17663798220464715096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A335871 n + A333792 (n + 1)).toNat

end

end A183241.P17663798220464715096

/-!
# A183242: Number of permutations of 1..n+9 with each element displaced by at least 5.

The programs for A183242, there is no canonical definition to state claims against.
-/

/-! ## A183242.P15924797371220995750

`A183244(Δ[A264443(n)])`
-/

namespace A183242.P15924797371220995750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (f1 (n + 1) - f1 n).toNat

end

end A183242.P15924797371220995750

/-! ## A183242.P9948512643257597147

`A183244(eq[4, A193592(n)])`
-/

namespace A183242.P9948512643257597147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183242.P9948512643257597147

/-! ## A183242.P3790946170952960729

`A183244(Δ[A023545(n+1)])`
-/

namespace A183242.P3790946170952960729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (f1 (n + 1) - f1 n).toNat

end

end A183242.P3790946170952960729

/-! ## A183242.P7939263637159780374

`A183244(A000217(n+5)-4)`
-/

namespace A183242.P7939263637159780374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (A000217 (n + 5) - 4).toNat

end

end A183242.P7939263637159780374

/-! ## A183242.P3822398755752494767

`A183244(eq[8, A057728(n+1)])`
-/

namespace A183242.P3822398755752494767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183242.P3822398755752494767

/-!
# A183243: Number of permutations of 1..n+11 with each element displaced by at least 6.

The programs for A183243, there is no canonical definition to state claims against.
-/

/-! ## A183243.P12468389212024849043

`A183244(A052905(n+3))`
-/

namespace A183243.P12468389212024849043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (A052905 (n + 3)).toNat

end

end A183243.P12468389212024849043

/-! ## A183243.P10954624194129411047

`A183244(eq[3, A219347(n)])`
-/

namespace A183243.P10954624194129411047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183243.P10954624194129411047

/-! ## A183243.P14330082206053463170

`A183244(eq[5, A193592(n)])`
-/

namespace A183243.P14330082206053463170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183243.P14330082206053463170

/-! ## A183243.P17339907810662978973

`A183244(eq[6, A200370(n+1)])`
-/

namespace A183243.P17339907810662978973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183243.P17339907810662978973

/-! ## A183243.P15308741434645991949

`A183244(eq[16, A057728(n+1)])`
-/

namespace A183243.P15308741434645991949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183243.P15308741434645991949

/-!
# A183245: Number of permutations of 1..2*n+2 with each element displaced by at least n.

The programs for A183245, the canonical program `A183245.P1154176891985150378` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183245 has offset 1).

The definition of A183245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183245.P1154176891985150378

`7*a(n-1)-12*a(n-2)` with `a(0)=9, a(1)=29, a(2)=112`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183245

/-- `7*a(n-1)-12*a(n-2)` -/
def P1154176891985150378.Spec : Prop :=
  ∀ n, P1154176891985150378.a n = A183245 (n + 1)

theorem P1154176891985150378.correct : P1154176891985150378.Spec := by
  intro n
  simp only [A183245, Nat.add_sub_cancel]

end A183245

/-! ## A183245.P9670116691659325907

`A306545(n+1)+1`
-/

namespace A183245.P9670116691659325907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306545 (n + 1) + 1

end

end A183245.P9670116691659325907

namespace A183245

/-- `A306545(n+1)+1` -/
def P9670116691659325907.Spec : Prop :=
  ∀ n, P9670116691659325907.a n = A183245 (n + 1)

end A183245

/-! ## A183245.P17404358726800219218

`A183244(∑[n+2]+4)`
-/

namespace A183245.P17404358726800219218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183245.P17404358726800219218

namespace A183245

/-- `A183244(∑[n+2]+4)` -/
def P17404358726800219218.Spec : Prop :=
  ∀ n, P17404358726800219218.a n = A183245 (n + 1)

end A183245

/-! ## A183245.P14977329339292964196

`lcm(1-and(2, n), A183244(A167614(n+1)))`
-/

namespace A183245.P14977329339292964196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A183244 (A167614 (n + 1)).toNat)

end

end A183245.P14977329339292964196

namespace A183245

/-- `lcm(1-and(2, n), A183244(A167614(n+1)))` -/
def P14977329339292964196.Spec : Prop :=
  ∀ n, (P14977329339292964196.a n : ℤ) = A183245 (n + 1)

end A183245

/-! ## A183245.P3008394876519666353

`A277165(n)+A183244(A167614(n+1))`
-/

namespace A183245.P3008394876519666353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 n + A183244 (A167614 (n + 1)).toNat

end

end A183245.P3008394876519666353

namespace A183245

/-- `A277165(n)+A183244(A167614(n+1))` -/
def P3008394876519666353.Spec : Prop :=
  ∀ n, P3008394876519666353.a n = A183245 (n + 1)

end A183245

/-!
# A183246: Number of permutations of 1..2*n+3 with each element displaced by at least n.

The programs for A183246, there is no canonical definition to state claims against.
-/

/-! ## A183246.P8983075607669156912

`A183244(∑[n+3]+7)`
-/

namespace A183246.P8983075607669156912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183246.P8983075607669156912

/-! ## A183246.P1059713557187340329

`A306543((n+3)²+1+n)`
-/

namespace A183246.P1059713557187340329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306543 ((n + 3) ^ 2 + 1 + n)

end

end A183246.P1059713557187340329

/-!
# A183247: Number of permutations of 1..2*n+4 with each element displaced by at least n.

The programs for A183247, there is no canonical definition to state claims against.
-/

/-! ## A183247.P16207821852622667510

`A183244(A167499(n+3))`
-/

namespace A183247.P16207821852622667510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (A167499 (n + 3)).toNat

end

end A183247.P16207821852622667510

/-! ## A183247.P2253814320944577667

`A183244(A056000(n)+15)`
-/

namespace A183247.P2253814320944577667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (A056000 n + 15).toNat

end

end A183247.P2253814320944577667

/-! ## A183247.P5309252743262462037

`A183244(A000217(n+4)+5)`
-/

namespace A183247.P5309252743262462037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (A000217 (n + 4) + 5).toNat

end

end A183247.P5309252743262462037

/-! ## A183247.P1729085065981613470

`A183244(eq[6, A131818(n+1)])`
-/

namespace A183247.P1729085065981613470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183247.P1729085065981613470

/-! ## A183247.P2159691001341855941

`record[A183244(n+15)/A183244(n+11)]`
-/

namespace A183247.P2159691001341855941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183244 (n + 15) : ℚ) / (A183244 (n + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183247.P2159691001341855941

/-!
# A183248: Half the number of n X n binary arrays with the number of 1-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183248, there is no canonical definition to state claims against.
-/

/-! ## A183248.P14449993348058205097

`A183253(∑[4*n]+1)`
-/

namespace A183248.P14449993348058205097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183248.P14449993348058205097

/-! ## A183248.P10875848063284668326

`record[A183253(A053439(n)-n)]`
-/

namespace A183248.P10875848063284668326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (A053439 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183248.P10875848063284668326

/-! ## A183248.P6169198643582910495

`record[A183253(∑[A266285(n)]-n)]`
-/

namespace A183248.P6169198643582910495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183248.P6169198643582910495

/-! ## A183248.P5970265450164215876

`record[A003982(n)*A183253(n+1)]`
-/

namespace A183248.P5970265450164215876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183248.P5970265450164215876

/-! ## A183248.P14942490885924925915

`record[gcd(A114327(n), A183253(n+1))]`
-/

namespace A183248.P14942490885924925915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A183253 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183248.P14942490885924925915

/-!
# A183249: Half the number of n X 3 binary arrays with the number of 1-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183249, there is no canonical definition to state claims against.
-/

/-! ## A183249.P425376479533020673

`A183253(∑[n+2]+4)`
-/

namespace A183249.P425376479533020673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183249.P425376479533020673

/-! ## A183249.P4319485327159883046

`record[gcd(A183253(n+1), A303913(n))]`
-/

namespace A183249.P4319485327159883046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183253 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183249.P4319485327159883046

/-! ## A183249.P12411160806120874662

`gcd(A151935(n), A183253(A167614(n+1)))`
-/

namespace A183249.P12411160806120874662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151935 n) (A183253 (A167614 (n + 1)).toNat)

end

end A183249.P12411160806120874662

/-! ## A183249.P6500512031009433246

`lcm(A033999(n), A183253(A167614(n+1)))`
-/

namespace A183249.P6500512031009433246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A183253 (A167614 (n + 1)).toNat)

end

end A183249.P6500512031009433246

/-! ## A183249.P1944874459285945379

`A183253(A167614(n+1))%A183250(n+1)`
-/

namespace A183249.P1944874459285945379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183253 (A167614 (n + 1)).toNat) (A183250 (n + 1))

end

end A183249.P1944874459285945379

/-!
# A183250: Half the number of nX4 binary arrays with the number of 1-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183250, there is no canonical definition to state claims against.
-/

/-! ## A183250.P7121215695237656746

`A183253(∑[n+3]+7)`
-/

namespace A183250.P7121215695237656746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183250.P7121215695237656746

/-!
# A183251: Half the number of n X 5 binary arrays with the number of 1-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183251, there is no canonical definition to state claims against.
-/

/-! ## A183251.P11235223916629629696

`A183253(A167499(n+3))`
-/

namespace A183251.P11235223916629629696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (A167499 (n + 3)).toNat

end

end A183251.P11235223916629629696

/-! ## A183251.P3347594646485184829

`A183253(A056000(n)+15)`
-/

namespace A183251.P3347594646485184829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (A056000 n + 15).toNat

end

end A183251.P3347594646485184829

/-! ## A183251.P6289280902310360535

`A183253(A055999(n+3)-A005843(n))`
-/

namespace A183251.P6289280902310360535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (A055999 (n + 3) - A005843 n).toNat

end

end A183251.P6289280902310360535

/-! ## A183251.P12237682335057945608

`A183253(A374005(n+1))`
-/

namespace A183251.P12237682335057945608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (A374005 (n + 1)).toNat

end

end A183251.P12237682335057945608

/-! ## A183251.P12714502697806672892

`A183253(A046691(n+3))`
-/

namespace A183251.P12714502697806672892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (A046691 (n + 3)).toNat

end

end A183251.P12714502697806672892

/-!
# A183252: Half the number of n X 6 binary arrays with the number of 1-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183252, there is no canonical definition to state claims against.
-/

/-! ## A183252.P14799225095899424259

`A183253(A055998(n+3)+9)`
-/

namespace A183252.P14799225095899424259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (A055998 (n + 3) + 9).toNat

end

end A183252.P14799225095899424259

/-! ## A183252.P1216429137773191965

`A183253(eq[7, A131818(n+1)])`
-/

namespace A183252.P1216429137773191965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183252.P1216429137773191965

/-! ## A183252.P3734845674218787720

`A183253(A000124(n+7)-7-Δ[n²])`
-/

namespace A183252.P3734845674218787720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (A000124 (n + 7) - 7 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A183252.P3734845674218787720

/-! ## A183252.P13215407694507545876

`A183253(A374007(n+1))`
-/

namespace A183252.P13215407694507545876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (A374007 (n + 1)).toNat

end

end A183252.P13215407694507545876

/-! ## A183252.P4301417031779041223

`A183253(eq[5, A193592(n)])`
-/

namespace A183252.P4301417031779041223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183252.P4301417031779041223

/-!
# A183253: T(n,k)=Half the number of nXk binary arrays with the number of 1-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183253, there is no canonical definition to state claims against.
-/

/-! ## A183253.P5276421330071626322

`A183289(n+1)*A347618(A268079(n+1))`
-/

namespace A183253.P5276421330071626322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (n + 1) * A347618 (A268079 (n + 1)).toNat

end

end A183253.P5276421330071626322

/-! ## A183253.P6608031944681351616

`A121902(16*A206359(n+1))`
-/

namespace A183253.P6608031944681351616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (16 * A206359 (n + 1)).toNat

end

end A183253.P6608031944681351616

/-!
# A183254: Half the number of nX(n+1) binary arrays with the number of 1-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183254, there is no canonical definition to state claims against.
-/

/-! ## A183254.P17336172225113306736

`A183253(2*(n+1)²)`
-/

namespace A183254.P17336172225113306736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (2 * (n + 1) ^ 2)

end

end A183254.P17336172225113306736

/-! ## A183254.P1761367564339328441

`record[A183253(A053439(n))]`
-/

namespace A183254.P1761367564339328441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183254.P1761367564339328441

/-! ## A183254.P14797619215731894791

`record[A183253(∑[A266285(n)])]`
-/

namespace A183254.P14797619215731894791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183254.P14797619215731894791

/-! ## A183254.P404337170931236740

`record[A183253(∑[A062828(n+1)])]`
-/

namespace A183254.P404337170931236740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183254.P404337170931236740

/-! ## A183254.P167401269316611157

`record[A183253(2*A060734(n+1))]`
-/

namespace A183254.P167401269316611157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (2 * A060734 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183254.P167401269316611157

/-!
# A183255: Number of n X n binary arrays with the number of 0-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183255, there is no canonical definition to state claims against.
-/

/-! ## A183255.P16577651231889899900

`A183262(∑[4*n]+1)`
-/

namespace A183255.P16577651231889899900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183255.P16577651231889899900

/-! ## A183255.P14851997421678576091

`record[A003982(n)*A183262(n+1)]`
-/

namespace A183255.P14851997421678576091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183255.P14851997421678576091

/-! ## A183255.P13732796338408389940

`record[root(A183262(n+1), A143182(n))]`
-/

namespace A183255.P13732796338408389940
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183262 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183255.P13732796338408389940

/-! ## A183255.P16628229306007522666

`record[gcd(A049581(n), A183262(n+1))]`
-/

namespace A183255.P16628229306007522666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A183262 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183255.P16628229306007522666

/-! ## A183255.P2498766774219188262

`A183262(A001844(n))+A108782(n)`
-/

namespace A183255.P2498766774219188262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (A001844 n).toNat + A108782 n

end

end A183255.P2498766774219188262

/-!
# A183256: Number of nX1 binary arrays with the number of 0-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183256, there is no canonical definition to state claims against.
-/

/-! ## A183256.P7424053180935089602

`A183262(∑[n]+1)`
-/

namespace A183256.P7424053180935089602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183256.P7424053180935089602

/-! ## A183256.P2997819813076014767

`A183262(A000124(n))%A010910(n)`
-/

namespace A183256.P2997819813076014767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183262 (A000124 n).toNat) (A010910 n)

end

end A183256.P2997819813076014767

/-! ## A183256.P575420374026083248

`gcd(A000038(n), A183262(A000124(n)))`
-/

namespace A183256.P575420374026083248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183262 (A000124 n).toNat)

end

end A183256.P575420374026083248

/-! ## A183256.P13964016900809657150

`lcm(A033999(n), A183262(A000124(n)))`
-/

namespace A183256.P13964016900809657150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A183262 (A000124 n).toNat)

end

end A183256.P13964016900809657150

/-! ## A183256.P16091042811799986765

`A014963(6*(n+1))*A183262(A000124(n))`
-/

namespace A183256.P16091042811799986765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A183262 (A000124 n).toNat

end

end A183256.P16091042811799986765

/-!
# A183257: Number of nX2 binary arrays with the number of 0-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183257, there is no canonical definition to state claims against.
-/

/-! ## A183257.P16959065518055500776

`A183262(∑[n+1]+2)`
-/

namespace A183257.P16959065518055500776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183257.P16959065518055500776

/-! ## A183257.P15511249822503641143

`A183262(A272370(n+1)+3)+and(1, 2*n)`
-/

namespace A183257.P15511249822503641143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (A272370 (n + 1) + 3).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A183257.P15511249822503641143

/-! ## A183257.P16152856784014458518

`A183262(A272370(n+1)+3)/A007318(n²%(n+1))`
-/

namespace A183257.P16152856784014458518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183262 (A272370 (n + 1) + 3).toNat : ℚ) / (A007318 (n ^ 2 % (n + 1)) : ℚ)

end

end A183257.P16152856784014458518

/-! ## A183257.P11582629712644895249

`A001221(A063535(n))*A183262(A272370(n+1)+3)`
-/

namespace A183257.P11582629712644895249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063535 n).toNat * A183262 (A272370 (n + 1) + 3).toNat

end

end A183257.P11582629712644895249

/-! ## A183257.P16370095873386160760

`A007318(A227141(n))*A183262(A272370(n+1)+3)`
-/

namespace A183257.P16370095873386160760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A227141 n).toNat * A183262 (A272370 (n + 1) + 3).toNat

end

end A183257.P16370095873386160760

/-!
# A183258: Number of nX3 binary arrays with the number of 0-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183258, there is no canonical definition to state claims against.
-/

/-! ## A183258.P8659765445509479547

`A183262(∑[n+2]+4)`
-/

namespace A183258.P8659765445509479547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183258.P8659765445509479547

/-! ## A183258.P13113769666302110361

`lcm(A121238(n), A183262(A167614(n+1)))`
-/

namespace A183258.P13113769666302110361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121238 n) (A183262 (A167614 (n + 1)).toNat)

end

end A183258.P13113769666302110361

/-! ## A183258.P18442194873800094377

`or(A000007(n), A183262(A167614(n+1)))`
-/

namespace A183258.P18442194873800094377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183262 (A167614 (n + 1)).toNat)

end

end A183258.P18442194873800094377

/-! ## A183258.P14538785530711041578

`or(A010893(n), A183262(A167614(n+1)))`
-/

namespace A183258.P14538785530711041578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010893 (n + 13)) (A183262 (A167614 (n + 1)).toNat)

end

end A183258.P14538785530711041578

/-! ## A183258.P17214701056030009262

`A183262(A167614(n+1))%A254299(n+1)`
-/

namespace A183258.P17214701056030009262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183262 (A167614 (n + 1)).toNat) (A254299 (n + 1))

end

end A183258.P17214701056030009262

/-!
# A183259: Number of nX4 binary arrays with the number of 0-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183259, there is no canonical definition to state claims against.
-/

/-! ## A183259.P1424119276382382038

`A183262(∑[n+3]+7)`
-/

namespace A183259.P1424119276382382038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183259.P1424119276382382038

/-! ## A183259.P9148119439893172076

`lcm(A033999(n), A183262(A055998(n+2)))`
-/

namespace A183259.P9148119439893172076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A183262 (A055998 (n + 2)).toNat)

end

end A183259.P9148119439893172076

/-! ## A183259.P3123545793961487384

`or(A000007(n), A183262(A055998(n+2)))`
-/

namespace A183259.P3123545793961487384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183262 (A055998 (n + 2)).toNat)

end

end A183259.P3123545793961487384

/-! ## A183259.P16478207575406400343

`or(A000038(n), A183262(A055998(n+2)))`
-/

namespace A183259.P16478207575406400343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A183262 (A055998 (n + 2)).toNat)

end

end A183259.P16478207575406400343

/-! ## A183259.P592346693837012816

`or(A010893(n), A183262(A055998(n+2)))`
-/

namespace A183259.P592346693837012816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010893 (n + 13)) (A183262 (A055998 (n + 2)).toNat)

end

end A183259.P592346693837012816

/-!
# A183260: Number of nX5 binary arrays with the number of 0-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183260, there is no canonical definition to state claims against.
-/

/-! ## A183260.P1537332204253985277

`A183262(A374005(n+1))`
-/

namespace A183260.P1537332204253985277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (A374005 (n + 1)).toNat

end

end A183260.P1537332204253985277

/-! ## A183260.P4848606259000321448

`A183262(A155212(n)+13)`
-/

namespace A183260.P4848606259000321448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (A155212 n + 13).toNat

end

end A183260.P4848606259000321448

/-! ## A183260.P10694861029376223413

`A183262(A056000(n)+15)`
-/

namespace A183260.P10694861029376223413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (A056000 n + 15).toNat

end

end A183260.P10694861029376223413

/-! ## A183260.P5276490052955366431

`A183262(eq[7, A066657(n)])`
-/

namespace A183260.P5276490052955366431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183260.P5276490052955366431

/-! ## A183260.P10083982589329077856

`A183262(A034856(n+3)+7)`
-/

namespace A183260.P10083982589329077856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (A034856 (n + 3) + 7).toNat

end

end A183260.P10083982589329077856

/-!
# A183261: Number of n X 6 binary arrays with the number of 0-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183261, there is no canonical definition to state claims against.
-/

/-! ## A183261.P9774790297353762195

`A183262(A374007(n+1))`
-/

namespace A183261.P9774790297353762195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (A374007 (n + 1)).toNat

end

end A183261.P9774790297353762195

/-! ## A183261.P2967593784193323894

`A183262(A000096(n+4)+7)`
-/

namespace A183261.P2967593784193323894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (A000096 (n + 4) + 7).toNat

end

end A183261.P2967593784193323894

/-! ## A183261.P11223058382435810788

`A183262(A055998(n+3)+9)`
-/

namespace A183261.P11223058382435810788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (A055998 (n + 3) + 9).toNat

end

end A183261.P11223058382435810788

/-! ## A183261.P4059904562821217476

`A183262(A246172(n+1)+20)`
-/

namespace A183261.P4059904562821217476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (A246172 (n + 1) + 20).toNat

end

end A183261.P4059904562821217476

/-! ## A183261.P12916276540069778716

`A183262(eq[7, A131818(n+1)])`
-/

namespace A183261.P12916276540069778716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183261.P12916276540069778716

/-!
# A183263: Number of nX(n+1) binary arrays with the number of 0-1 adjacencies equal to the number of 0-0 adjacencies.

The programs for A183263, there is no canonical definition to state claims against.
-/

/-! ## A183263.P791009323877518122

`A183262(2*(n+1)²)`
-/

namespace A183263.P791009323877518122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183262 (2 * (n + 1) ^ 2)

end

end A183263.P791009323877518122

/-! ## A183263.P14559693124156196134

`record[gcd(A156644(n), A183262(n+1))]`
-/

namespace A183263.P14559693124156196134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156644 n) (A183262 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183263.P14559693124156196134

/-!
# A183264: Number of singly defective permutations of 1..n with exactly 1 maximum.

The programs for A183264, the canonical program `A183264.P7351332499873215840` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183264 has offset 1).

The definition of A183264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183264.P7351332499873215840

`(3*n-1)*A049610(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183264

/-- `(3*n-1)*A049610(n+1)` -/
def P7351332499873215840.Spec : Prop :=
  ∀ n, P7351332499873215840.a n = A183264 (n + 1)

theorem P7351332499873215840.correct : P7351332499873215840.Spec := by
  intro n
  simp only [A183264, Nat.add_sub_cancel]

end A183264

/-! ## A183264.P4221524398917406363

`(n+1)*(A084858(n)-2^n)`
-/

namespace A183264.P4221524398917406363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A084858 n - (2 ^ n : ℤ))

end

end A183264.P4221524398917406363

namespace A183264

/-- `(n+1)*(A084858(n)-2^n)` -/
def P4221524398917406363.Spec : Prop :=
  ∀ n, P4221524398917406363.a n = A183264 (n + 1)

end A183264

/-! ## A183264.P16938563628942082105

`(A004273(n)+n)*Δ[A139756(n)]`
-/

namespace A183264.P16938563628942082105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A183264.P16938563628942082105

namespace A183264

/-- `(A004273(n)+n)*Δ[A139756(n)]` -/
def P16938563628942082105.Spec : Prop :=
  ∀ n, P16938563628942082105.a n = A183264 (n + 1)

end A183264

/-! ## A183264.P18130436500552023487

`(A004273(n)+n)*A336102(2*n)`
-/

namespace A183264.P18130436500552023487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + (n : ℤ)) * A336102 (2 * n)

end

end A183264.P18130436500552023487

namespace A183264

/-- `(A004273(n)+n)*A336102(2*n)` -/
def P18130436500552023487.Spec : Prop :=
  ∀ n, P18130436500552023487.a n = A183264 (n + 1)

end A183264

/-! ## A183264.P12745411901209911597

`(n+1)*(∑[A339252(n)]-A339252(n))`
-/

namespace A183264.P12745411901209911597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A339252 n)

end

end A183264.P12745411901209911597

namespace A183264

/-- `(n+1)*(∑[A339252(n)]-A339252(n))` -/
def P12745411901209911597.Spec : Prop :=
  ∀ n, P12745411901209911597.a n = A183264 (n + 1)

end A183264

/-! ## A183264.P16090195117563512749

`(n+1)*(A139756(n+1)+A139756(n))`
-/

namespace A183264.P16090195117563512749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A139756 (n + 1) + A139756 n)

end

end A183264.P16090195117563512749

namespace A183264

/-- `(n+1)*(A139756(n+1)+A139756(n))` -/
def P16090195117563512749.Spec : Prop :=
  ∀ n, P16090195117563512749.a n = A183264 (n + 1)

end A183264

/-! ## A183264.P6009315635147839323

`(A003215(n)-(n+2))*A131577(n)/2`
-/

namespace A183264.P6009315635147839323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003215 n - (n + 2 : ℤ)) * A131577 n : ℚ) / 2

end

end A183264.P6009315635147839323

namespace A183264

/-- `(A003215(n)-(n+2))*A131577(n)/2` -/
def P6009315635147839323.Spec : Prop :=
  ∀ n, P6009315635147839323.a n = (A183264 (n + 1) : ℚ)

end A183264

/-! ## A183264.P3081092731811664504

`(n+1)*∑[A049610(n+1)+A049610(n)]`
-/

namespace A183264.P3081092731811664504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1) + A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183264.P3081092731811664504

namespace A183264

/-- `(n+1)*∑[A049610(n+1)+A049610(n)]` -/
def P3081092731811664504.Spec : Prop :=
  ∀ n, P3081092731811664504.a n = A183264 (n + 1)

end A183264

/-! ## A183264.P7995825991448470928

`(A097067(A087156(n+1))+A097067(n))*A087156(n+1)`
-/

namespace A183264.P7995825991448470928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097067 (A087156 (n + 1)).toNat + A097067 n) * A087156 (n + 1)

end

end A183264.P7995825991448470928

namespace A183264

/-- `(A097067(A087156(n+1))+A097067(n))*A087156(n+1)` -/
def P7995825991448470928.Spec : Prop :=
  ∀ n, P7995825991448470928.a n = A183264 (n + 1)

end A183264

/-!
# A183265: Number of singly defective permutations of 1..n+2 with exactly 2 maxima.

The programs for A183265, there is no canonical definition to state claims against.
-/

/-! ## A183265.P11129244583804034114

`A183270(∑[n+2])`
-/

namespace A183265.P11129244583804034114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183265.P11129244583804034114

/-! ## A183265.P9923706859321458545

`A183270(A000096(n+1))+A000007(3*n+1)`
-/

namespace A183265.P9923706859321458545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (A000096 (n + 1)).toNat + A000007 (3 * n + 1)

end

end A183265.P9923706859321458545

/-!
# A183266: Number of singly defective permutations of 1..n+4 with exactly 3 maxima.

The programs for A183266, there is no canonical definition to state claims against.
-/

/-! ## A183266.P4183251417011677497

`A183270(∑[n+3]+1)`
-/

namespace A183266.P4183251417011677497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183266.P4183251417011677497

/-! ## A183266.P12428402470348059555

`A243836(n)+A183270(A034856(n+2))`
-/

namespace A183266.P12428402470348059555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n + A183270 (A034856 (n + 2)).toNat

end

end A183266.P12428402470348059555

/-!
# A183267: Number of singly defective permutations of 1..n+6 with exactly 4 maxima.

The programs for A183267, there is no canonical definition to state claims against.
-/

/-! ## A183267.P4512778516926714878

`A183270(A155212(n)+5)`
-/

namespace A183267.P4512778516926714878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (A155212 n + 5).toNat

end

end A183267.P4512778516926714878

/-! ## A183267.P9031696332454940656

`A183270(A056000(n)+7)`
-/

namespace A183267.P9031696332454940656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (A056000 n + 7).toNat

end

end A183267.P9031696332454940656

/-! ## A183267.P6018231324983200858

`A183270(eq[3, A193592(n)])`
-/

namespace A183267.P6018231324983200858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183267.P6018231324983200858

/-! ## A183267.P8752443016059757771

`A183270(eq[4, A057728(n+1)])`
-/

namespace A183267.P8752443016059757771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183267.P8752443016059757771

/-! ## A183267.P5032628696984853386

`A183270(eq[2, A353434(n)])`
-/

namespace A183267.P5032628696984853386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183267.P5032628696984853386

/-!
# A183268: Number of singly defective permutations of 1..n+8 with exactly 5 maxima.

The programs for A183268, there is no canonical definition to state claims against.
-/

/-! ## A183268.P15306290605219046802

`A183270(Δ[A264443(n)])`
-/

namespace A183268.P15306290605219046802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (f1 (n + 1) - f1 n).toNat

end

end A183268.P15306290605219046802

/-! ## A183268.P15041718387133080392

`A183270(eq[4, A193592(n)])`
-/

namespace A183268.P15041718387133080392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183268.P15041718387133080392

/-! ## A183268.P3798969109129473413

`A183270(Δ[A023545(n+1)])`
-/

namespace A183268.P3798969109129473413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (f1 (n + 1) - f1 n).toNat

end

end A183268.P3798969109129473413

/-! ## A183268.P5971972384277007909

`A183270(eq[8, A057728(n+1)])`
-/

namespace A183268.P5971972384277007909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183268.P5971972384277007909

/-! ## A183268.P656741831413355423

`A183270(A166136(n+1)+A016789(n))`
-/

namespace A183268.P656741831413355423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (A166136 (n + 1) + A016789 n).toNat

end

end A183268.P656741831413355423

/-!
# A183269: Number of singly defective permutations of 1..n+10 with exactly 6 maxima.

The programs for A183269, there is no canonical definition to state claims against.
-/

/-! ## A183269.P13585490571412743742

`A183270(A056119(n)+16)`
-/

namespace A183269.P13585490571412743742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (A056119 n + 16).toNat

end

end A183269.P13585490571412743742

/-! ## A183269.P15335091410355944146

`A183270(Δ[A264443(n+1)]-1)`
-/

namespace A183269.P15335091410355944146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183270 (f1 (n + 1) - f1 n - 1).toNat

end

end A183269.P15335091410355944146

/-!
# A183271: Half the number of n X n X n triangular binary arrays with the number of 0-0 adjacencies equal to the number of 1-1 adjacencies.

The programs for A183271, there is no canonical definition to state claims against.
-/

/-! ## A183271.P10839852313538387501

`A183273(n+1)%A183262(A183284(n+1))`
-/

namespace A183271.P10839852313538387501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183273 (n + 1)) (A183262 (A183284 (n + 1)).toNat)

end

end A183271.P10839852313538387501

/-!
# A183272: Number of nXnXn triangular binary arrays with the number of 0-0 adjacencies equal to the number of 0-1 adjacencies.

The programs for A183272, there is no canonical definition to state claims against.
-/

/-! ## A183272.P17755010835085121607

`xor(2^n, A194510(A002370(n)))`
-/

namespace A183272.P17755010835085121607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) (A194510 (A002370 n).toNat)

end

end A183272.P17755010835085121607

/-!
# A183273: Half the number of nXnXn triangular binary arrays with the number of 0-0 adjacencies differing from the number of 1-1 adjacencies by one or less.

The programs for A183273, there is no canonical definition to state claims against.
-/

/-! ## A183273.P10098348900115596615

`A195795(A218547(n+1))+n`
-/

namespace A183273.P10098348900115596615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195795 (A218547 (n + 1)).toNat + (n : ℤ)

end

end A183273.P10098348900115596615

/-!
# A183274: Half the number of nXnXn triangular binary arrays with every element having a neighboring 1-count differing from its neighboring 0-count by two or less.

The programs for A183274, there is no canonical definition to state claims against.
-/

/-! ## A183274.P5890233491272471826

`A240574(A126348(n+3))-A000120(n)`
-/

namespace A183274.P5890233491272471826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 (A126348 (n + 3)).toNat - A000120 n

end

end A183274.P5890233491272471826

/-!
# A183275: Half the number of nXnXn triangular binary arrays with each element having no more than two neighbors equal to itself.

The programs for A183275, there is no canonical definition to state claims against.
-/

/-! ## A183275.P17443244162302764508

`C(A074964(Δ[n²]), 2)+1`
-/

namespace A183275.P17443244162302764508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074964 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat 2 + 1

end

end A183275.P17443244162302764508

/-!
# A183276: Half the number of n X n X n triangular binary arrays with each element having no more than two neighbors unequal to itself.

The programs for A183276, there is no canonical definition to state claims against.
-/

/-! ## A183276.P7569944729843083699

`A077070(A150731(n+1))`
-/

namespace A183276.P7569944729843083699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A150731 (n + 1)).toNat

end

end A183276.P7569944729843083699

/-! ## A183276.P4675466252357267763

`A353068(A037489(n+1))`
-/

namespace A183276.P4675466252357267763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353068 (A037489 (n + 1)).toNat

end

end A183276.P4675466252357267763

/-! ## A183276.P17663873587147724747

`∑[A262689(∑[A126397(n)])]`
-/

namespace A183276.P17663873587147724747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126397 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183276.P17663873587147724747

/-!
# A183278: Half the number of n X n X n triangular binary arrays with no array-aligned 2 X 2 X 2 subtriangle being all zero or all one.

The programs for A183278, there is no canonical definition to state claims against.
-/

/-! ## A183278.P8984901431512848992

`A007017(n+1)/(n+3)`
-/

namespace A183278.P8984901431512848992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007017 (n + 1) : ℚ) / (n + 3 : ℚ)

end

end A183278.P8984901431512848992

/-! ## A183278.P15797513009166461665

`A277211(n+2)/(2*(n+3))`
-/

namespace A183278.P15797513009166461665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277211 (n + 2) : ℚ) / (2 * (n + 3) : ℚ)

end

end A183278.P15797513009166461665

/-! ## A183278.P3606993108751087738

`record[A277211(n)/A103517(n)]`
-/

namespace A183278.P3606993108751087738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277211 n : ℚ) / (A103517 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183278.P3606993108751087738

/-! ## A183278.P6557329043717220212

`A214352(∑[n+1])/2`
-/

namespace A183278.P6557329043717220212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214352 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A183278.P6557329043717220212

/-! ## A183278.P17781672401173924412

`floor(A214352(∑[A158416(2*n)])/2)`
-/

namespace A183278.P17781672401173924412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋

end

end A183278.P17781672401173924412

/-!
# A183279: Half the number of nXnXn triangular binary arrays with no array-nonaligned 2X2X2 subtriangle being all zero or all one.

The programs for A183279, there is no canonical definition to state claims against.
-/

/-! ## A183279.P2131087711969626471

`∏[A075458(∑[n+3])]`
-/

namespace A183279.P2131087711969626471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075458 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A183279.P2131087711969626471

/-!
# A183280: Half the number of nXnXn triangular binary arrays with no element having four consecutive neighbors taken clockwise with equal values.

The programs for A183280, there is no canonical definition to state claims against.
-/

/-! ## A183280.P8899123218525308752

`A003160(A141147(n+1))`
-/

namespace A183280.P8899123218525308752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (A141147 (n + 1)).toNat

end

end A183280.P8899123218525308752

/-!
# A183281: Half the number of nXnXn triangular binary arrays with equal numbers of elements having four consecutive neighbors taken clockwise with value 1 and with value 0.

The programs for A183281, there is no canonical definition to state claims against.
-/

/-! ## A183281.P14405052986359916656

`A244330(A000085(n))+A001652(n)`
-/

namespace A183281.P14405052986359916656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244330 (A000085 n).toNat + A001652 n

end

end A183281.P14405052986359916656

/-!
# A183283: Half the number of nXnXn triangular binary arrays with no element equal to a strict majority of its neighbors.

The programs for A183283, there is no canonical definition to state claims against.
-/

/-! ## A183283.P15795857080283891605

`A240866(A259583(n+2))`
-/

namespace A183283.P15795857080283891605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240866 (A259583 (n + 2)).toNat

end

end A183283.P15795857080283891605

/-!
# A183284: Half the number of nX3 binary arrays with the number of 1-1 horizontal, vertical, diagonal and antidiagonal adjacencies equal to the number of 0-0 adjacencies.

The programs for A183284, there is no canonical definition to state claims against.
-/

/-! ## A183284.P6534819268220188332

`A183289(∑[n+2]+4)`
-/

namespace A183284.P6534819268220188332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183284.P6534819268220188332

/-! ## A183284.P7369569554043750571

`gcd(A000038(n), A183289(A167614(n+1)))`
-/

namespace A183284.P7369569554043750571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183289 (A167614 (n + 1)).toNat)

end

end A183284.P7369569554043750571

/-! ## A183284.P15082196974246945428

`A183289(A167614(n+1))%A183250(n+1)`
-/

namespace A183284.P15082196974246945428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183289 (A167614 (n + 1)).toNat) (A183250 (n + 1))

end

end A183284.P15082196974246945428

/-! ## A183284.P7134568763404951375

`and(A057428(n+1), A183289(A167614(n+1)))`
-/

namespace A183284.P7134568763404951375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A183289 (A167614 (n + 1)).toNat)

end

end A183284.P7134568763404951375

/-! ## A183284.P4681848387860091957

`A183289(A167614(n+1))+A000038(2*(n+1))`
-/

namespace A183284.P4681848387860091957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (A167614 (n + 1)).toNat + A000038 (2 * (n + 1))

end

end A183284.P4681848387860091957

/-!
# A183285: Half the number of nX4 binary arrays with the number of 1-1 horizontal, vertical, diagonal and antidiagonal adjacencies equal to the number of 0-0 adjacencies.

The programs for A183285, there is no canonical definition to state claims against.
-/

/-! ## A183285.P3632991625804197004

`A183289(A052905(n)+9)`
-/

namespace A183285.P3632991625804197004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (A052905 n + 9).toNat

end

end A183285.P3632991625804197004

/-! ## A183285.P12472882247767172668

`A183289(A055999(n)+10)`
-/

namespace A183285.P12472882247767172668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (A055999 n + 10).toNat

end

end A183285.P12472882247767172668

/-! ## A183285.P15871051359713157753

`A183289(A167614(n+2)+1)`
-/

namespace A183285.P15871051359713157753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (A167614 (n + 2) + 1).toNat

end

end A183285.P15871051359713157753

/-! ## A183285.P2176026659371284237

`A183289(eq[5, A131818(n+1)])`
-/

namespace A183285.P2176026659371284237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183285.P2176026659371284237

/-! ## A183285.P15410208352897316481

`A183289(Δ[A264443(n)-n²])`
-/

namespace A183285.P15410208352897316481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (f1 (n + 1) - f1 n).toNat

end

end A183285.P15410208352897316481

/-!
# A183286: Half the number of n X 5 binary arrays with the number of 1-1 horizontal, vertical, diagonal and antidiagonal adjacencies equal to the number of 0-0 adjacencies.

The programs for A183286, there is no canonical definition to state claims against.
-/

/-! ## A183286.P3166006459700658009

`A183289(A000217(n+4)+5)`
-/

namespace A183286.P3166006459700658009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (A000217 (n + 4) + 5).toNat

end

end A183286.P3166006459700658009

/-! ## A183286.P14608684614357532484

`A183289(eq[6, A131818(n+1)])`
-/

namespace A183286.P14608684614357532484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183286.P14608684614357532484

/-! ## A183286.P13207171585615791789

`A183289(Δ[A264443(n)])`
-/

namespace A183286.P13207171585615791789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (f1 (n + 1) - f1 n).toNat

end

end A183286.P13207171585615791789

/-! ## A183286.P17740890817289220261

`A183289(A374005(n+1))`
-/

namespace A183286.P17740890817289220261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (A374005 (n + 1)).toNat

end

end A183286.P17740890817289220261

/-! ## A183286.P2897431089000043203

`A183289(eq[4, A193592(n)])`
-/

namespace A183286.P2897431089000043203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183286.P2897431089000043203

/-!
# A183287: Half the number of n X 6 binary arrays with the number of 1-1 horizontal, vertical, diagonal and antidiagonal adjacencies equal to the number of 0-0 adjacencies.

The programs for A183287, there is no canonical definition to state claims against.
-/

/-! ## A183287.P1255226897470970811

`A183289(eq[7, A131818(n+1)])`
-/

namespace A183287.P1255226897470970811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183287.P1255226897470970811

/-! ## A183287.P11180925262603610273

`A183289(A374007(n+1))`
-/

namespace A183287.P11180925262603610273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (A374007 (n + 1)).toNat

end

end A183287.P11180925262603610273

/-! ## A183287.P5009242281306560018

`A183289(eq[3, A219347(n)])`
-/

namespace A183287.P5009242281306560018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183287.P5009242281306560018

/-! ## A183287.P12707308028123205350

`A183289(eq[5, A193592(n)])`
-/

namespace A183287.P12707308028123205350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183287.P12707308028123205350

/-! ## A183287.P15354785634508654080

`A183289(eq[8, A185782(n+1)])`
-/

namespace A183287.P15354785634508654080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183287.P15354785634508654080

/-!
# A183288: Half the number of nX7 binary arrays with the number of 1-1 horizontal, vertical, diagonal and antidiagonal adjacencies equal to the number of 0-0 adjacencies.

The programs for A183288, there is no canonical definition to state claims against.
-/

/-! ## A183288.P16121995989393995911

`A183289(eq[8, A131818(n+1)])`
-/

namespace A183288.P16121995989393995911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183288.P16121995989393995911

/-! ## A183288.P12768240269067758939

`A183289(A374008(n+1))`
-/

namespace A183288.P12768240269067758939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (A374008 (n + 1)).toNat

end

end A183288.P12768240269067758939

/-! ## A183288.P8533084411814087032

`A183289(eq[4, A219347(n)])`
-/

namespace A183288.P8533084411814087032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183288.P8533084411814087032

/-! ## A183288.P16981266661083432332

`A183289(eq[6, A193592(n)])`
-/

namespace A183288.P16981266661083432332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183288.P16981266661083432332

/-! ## A183288.P2468667385859815537

`A183289(A046691(n+5)-2)`
-/

namespace A183288.P2468667385859815537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183289 (A046691 (n + 5) - 2).toNat

end

end A183288.P2468667385859815537

/-!
# A183289: T(n,k) = Half the number of n X k binary arrays with the number of 1-1 horizontal, vertical, diagonal and antidiagonal adjacencies equal to the number of 0-0 adjacencies.

The programs for A183289, there is no canonical definition to state claims against.
-/

/-! ## A183289.P11284488586401826423

`A330342(A183253(n+1)+1)`
-/

namespace A183289.P11284488586401826423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330342 (A183253 (n + 1) + 1).toNat

end

end A183289.P11284488586401826423

/-! ## A183289.P5607961494209875393

`A183253(n+1)%A342319(∑{d}[∏{p}[n+1, #], (n+1)/#])`
-/

namespace A183289.P5607961494209875393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183253 (n + 1)) (A342319 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A183289.P5607961494209875393

/-! ## A183289.P12338539841431944499

`A183253(n+1)%A069877(A063670(n))`
-/

namespace A183289.P12338539841431944499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183253 (n + 1)) (A069877 (A063670 n).toNat)

end

end A183289.P12338539841431944499

/-! ## A183289.P15564200678123445256

`gcd(A008885(A264428(n)), A183253(n+1))`
-/

namespace A183289.P15564200678123445256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008885 (A264428 n).toNat) (A183253 (n + 1))

end

end A183289.P15564200678123445256

/-! ## A183289.P1404737964960633793

`C(A183253(n+1), A186725(A186725(n)))`
-/

namespace A183289.P1404737964960633793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A183253 (n + 1)).toNat (A186725 (A186725 n).toNat).toNat

end

end A183289.P1404737964960633793

/-!
# A183292: Complement of A055999.

The programs for A183292, the canonical program `A183292.P283195374347587663` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183292 has offset 1).

The definition of A183292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183292.P283195374347587663

`n+ceil(sqrt(8*(n+1)+25)/2-5/2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183292

/-- `n+ceil(sqrt(8*(n+1)+25)/2-5/2)` -/
def P283195374347587663.Spec : Prop :=
  ∀ n, P283195374347587663.a n = A183292 (n + 1)

theorem P283195374347587663.correct : P283195374347587663.Spec := by
  intro n
  simp only [A183292, Nat.add_sub_cancel]

end A183292

/-! ## A183292.P11510652637255840156

`∑[ceil(cosh(char[∑[n+3]]))]`
-/

namespace A183292.P11510652637255840156
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183292.P11510652637255840156

namespace A183292

/-- `∑[ceil(cosh(char[∑[n+3]]))]` -/
def P11510652637255840156.Spec : Prop :=
  ∀ n, P11510652637255840156.a n = A183292 (n + 1)

end A183292

/-! ## A183292.P4061013444239091924

`∑[round(cosh(char[∑[n+3]]))]`
-/

namespace A183292.P4061013444239091924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183292.P4061013444239091924

namespace A183292

/-- `∑[round(cosh(char[∑[n+3]]))]` -/
def P4061013444239091924.Spec : Prop :=
  ∀ n, P4061013444239091924.a n = A183292 (n + 1)

end A183292

/-! ## A183292.P9666512337713620751

`∑[(char[∑[n+3]]+1)!]`
-/

namespace A183292.P9666512337713620751
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183292.P9666512337713620751

namespace A183292

/-- `∑[(char[∑[n+3]]+1)!]` -/
def P9666512337713620751.Spec : Prop :=
  ∀ n, (P9666512337713620751.a n : ℤ) = A183292 (n + 1)

end A183292

/-! ## A183292.P11824248204721552404

`∑[dr(char[∑[n+3]]+1)]`
-/

namespace A183292.P11824248204721552404
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183292.P11824248204721552404

namespace A183292

/-- `∑[dr(char[∑[n+3]]+1)]` -/
def P11824248204721552404.Spec : Prop :=
  ∀ n, (P11824248204721552404.a n : ℤ) = A183292 (n + 1)

end A183292

/-! ## A183292.P5649371466646497758

`∑[(char[∑[n+3]]+1)%3]`
-/

namespace A183292.P5649371466646497758
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183292.P5649371466646497758

namespace A183292

/-- `∑[(char[∑[n+3]]+1)%3]` -/
def P5649371466646497758.Spec : Prop :=
  ∀ n, (P5649371466646497758.a n : ℤ) = A183292 (n + 1)

end A183292

/-! ## A183292.P1530635156455076246

`∑[and(1, char[∑[n+3]])+1]`
-/

namespace A183292.P1530635156455076246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183292.P1530635156455076246

namespace A183292

/-- `∑[and(1, char[∑[n+3]])+1]` -/
def P1530635156455076246.Spec : Prop :=
  ∀ n, (P1530635156455076246.a n : ℤ) = A183292 (n + 1)

end A183292

/-! ## A183292.P17832010991322585296

`lt[1, A002260(n+7)]`
-/

namespace A183292.P17832010991322585296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183292.P17832010991322585296

namespace A183292

/-- `lt[1, A002260(n+7)]` -/
def P17832010991322585296.Spec : Prop :=
  ∀ n, (P17832010991322585296.a n : ℤ) = A183292 (n + 1)

end A183292

/-! ## A183292.P7491779824519103447

`comp[A055999(n)]%record[xor(3, n)]`
-/

namespace A183292.P7491779824519103447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A183292.P7491779824519103447

namespace A183292

/-- `comp[A055999(n)]%record[xor(3, n)]` -/
def P7491779824519103447.Spec : Prop :=
  ∀ n, (P7491779824519103447.a n : ℤ) = A183292 (n + 1)

end A183292

/-! ## A183292.P17706340363975686511

`∑[round(ratio[atan(A007318(n+3))])]`
-/

namespace A183292.P17706340363975686511
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A007318 (n + 3) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) / f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183292.P17706340363975686511

namespace A183292

/-- `∑[round(ratio[atan(A007318(n+3))])]` -/
def P17706340363975686511.Spec : Prop :=
  ∀ n, P17706340363975686511.a n = A183292 (n + 1)

end A183292

/-! ## A183292.P4798562760126358998

`∑[char[∑[A000027(n+1)+2]]+1]`
-/

namespace A183292.P4798562760126358998
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183292.P4798562760126358998

namespace A183292

/-- `∑[char[∑[A000027(n+1)+2]]+1]` -/
def P4798562760126358998.Spec : Prop :=
  ∀ n, (P4798562760126358998.a n : ℤ) = A183292 (n + 1)

end A183292

/-! ## A183292.P2439592511286855713

`A000027(comp[A055999(n)])`
-/

namespace A183292.P2439592511286855713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A183292.P2439592511286855713

namespace A183292

/-- `A000027(comp[A055999(n)])` -/
def P2439592511286855713.Spec : Prop :=
  ∀ n, P2439592511286855713.a n = A183292 (n + 1)

end A183292

/-! ## A183292.P4897903214488972268

`lt[1, A286145(A286158(n+5))]`
-/

namespace A183292.P4897903214488972268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 (A286158 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183292.P4897903214488972268

namespace A183292

/-- `lt[1, A286145(A286158(n+5))]` -/
def P4897903214488972268.Spec : Prop :=
  ∀ n, (P4897903214488972268.a n : ℤ) = A183292 (n + 1)

end A183292

/-!
# A183293: Complement of A056000.

The programs for A183293, the canonical program `A183293.P7731830150971217467` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183293 has offset 1).

The definition of A183293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183293.P17515384328957187234

`comp[∑[n-4]]`
-/

namespace A183293.P17515384328957187234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183293.P17515384328957187234

namespace A183293

/-- `comp[∑[n-4]]` -/
def P17515384328957187234.Spec : Prop :=
  ∀ n, (P17515384328957187234.a n : ℤ) = A183293 (n + 1)

end A183293

/-! ## A183293.P3453802104687733352

`∑[char[record[∑[n-3]]]]+n`
-/

namespace A183293.P3453802104687733352
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183293.P3453802104687733352

namespace A183293

/-- `∑[char[record[∑[n-3]]]]+n` -/
def P3453802104687733352.Spec : Prop :=
  ∀ n, (P3453802104687733352.a n : ℤ) = A183293 (n + 1)

end A183293

/-! ## A183293.P17312317003061171612

`∑[gcd(2, char[∑[n+4]]+1)]`
-/

namespace A183293.P17312317003061171612
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183293.P17312317003061171612

namespace A183293

/-- `∑[gcd(2, char[∑[n+4]]+1)]` -/
def P17312317003061171612.Spec : Prop :=
  ∀ n, (P17312317003061171612.a n : ℤ) = A183293 (n + 1)

end A183293

/-! ## A183293.P7584357747989597853

`∑[(char[∑[n+4]]+1)%3]`
-/

namespace A183293.P7584357747989597853
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183293.P7584357747989597853

namespace A183293

/-- `∑[(char[∑[n+4]]+1)%3]` -/
def P7584357747989597853.Spec : Prop :=
  ∀ n, (P7584357747989597853.a n : ℤ) = A183293 (n + 1)

end A183293

/-! ## A183293.P5574692965002024812

`∑[and(1, char[∑[n+4]])+1]`
-/

namespace A183293.P5574692965002024812
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183293.P5574692965002024812

namespace A183293

/-- `∑[and(1, char[∑[n+4]])+1]` -/
def P5574692965002024812.Spec : Prop :=
  ∀ n, (P5574692965002024812.a n : ℤ) = A183293 (n + 1)

end A183293

/-! ## A183293.P8507981016080048089

`∑[char[∑[n+4]]]-xor(n, -1)`
-/

namespace A183293.P8507981016080048089
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.xor (n : ℤ) (-1)

end

end A183293.P8507981016080048089

namespace A183293

/-- `∑[char[∑[n+4]]]-xor(n, -1)` -/
def P8507981016080048089.Spec : Prop :=
  ∀ n, P8507981016080048089.a n = A183293 (n + 1)

end A183293

/-! ## A183293.P11675251017154764827

`a(n-1)+char[∑[n+4]]+1` with `a(0)=1`
-/

namespace A183293.P11675251017154764827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A183293.P11675251017154764827

namespace A183293

/-- `a(n-1)+char[∑[n+4]]+1` -/
def P11675251017154764827.Spec : Prop :=
  ∀ n, (P11675251017154764827.a n : ℤ) = A183293 (n + 1)

end A183293

/-! ## A183293.P887085512644722292

`∑[char[C(n+1, 2)-(2*n+5)]]+n`
-/

namespace A183293.P887085512644722292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) - (2 * n + 5 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183293.P887085512644722292

namespace A183293

/-- `∑[char[C(n+1, 2)-(2*n+5)]]+n` -/
def P887085512644722292.Spec : Prop :=
  ∀ n, (P887085512644722292.a n : ℤ) = A183293 (n + 1)

end A183293

/-! ## A183293.P7731830150971217467

`lt[1, A002260(n+11)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A183293

/-- `lt[1, A002260(n+11)]` -/
def P7731830150971217467.Spec : Prop :=
  ∀ n, (P7731830150971217467.a n : ℤ) = A183293 (n + 1)

theorem P7731830150971217467.correct : P7731830150971217467.Spec := by
  intro n
  simp only [A183293, Nat.add_sub_cancel]

end A183293

/-! ## A183293.P12284403072113447826

`comp[A016897(n)+∑[n]]+1`
-/

namespace A183293.P12284403072113447826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183293.P12284403072113447826

namespace A183293

/-- `comp[A016897(n)+∑[n]]+1` -/
def P12284403072113447826.Spec : Prop :=
  ∀ n, (P12284403072113447826.a n : ℤ) = A183293 (n + 1)

end A183293

/-! ## A183293.P4854850289357737014

`A014132(n+7)-10`
-/

namespace A183293.P4854850289357737014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 7) - 10

end

end A183293.P4854850289357737014

namespace A183293

/-- `A014132(n+7)-10` -/
def P4854850289357737014.Spec : Prop :=
  ∀ n, P4854850289357737014.a n = A183293 (n + 1)

end A183293

/-! ## A183293.P2045170793850398846

`eq[0, char[∑[n-4]]]`
-/

namespace A183293.P2045170793850398846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183293.P2045170793850398846

namespace A183293

/-- `eq[0, char[∑[n-4]]]` -/
def P2045170793850398846.Spec : Prop :=
  ∀ n, (P2045170793850398846.a n : ℤ) = A183293 (n + 1)

end A183293

/-! ## A183293.P8888519333229596478

`lt[0, A000217(A004736(n+10)-1)]`
-/

namespace A183293.P8888519333229596478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 10) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183293.P8888519333229596478

namespace A183293

/-- `lt[0, A000217(A004736(n+10)-1)]` -/
def P8888519333229596478.Spec : Prop :=
  ∀ n, (P8888519333229596478.a n : ℤ) = A183293 (n + 1)

end A183293

/-!
# A183294: Complement of A005449.

The programs for A183294, the canonical program `A183294.P2707416302761019771` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183294 has offset 1).

The definition of A183294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183294.P2707416302761019771

`n+1+A180447(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183294

/-- `n+1+A180447(n)` -/
def P2707416302761019771.Spec : Prop :=
  ∀ n, P2707416302761019771.a n = A183294 (n + 1)

theorem P2707416302761019771.correct : P2707416302761019771.Spec := by
  intro n
  simp only [A183294, Nat.add_sub_cancel]

end A183294

/-! ## A183294.P1876959693108582230

`comp[∑[n]+n²]`
-/

namespace A183294.P1876959693108582230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183294.P1876959693108582230

namespace A183294

/-- `comp[∑[n]+n²]` -/
def P1876959693108582230.Spec : Prop :=
  ∀ n, (P1876959693108582230.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P10907377992539378870

`∑[char[C(n, 2)+n²]]+n`
-/

namespace A183294.P10907377992539378870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183294.P10907377992539378870

namespace A183294

/-- `∑[char[C(n, 2)+n²]]+n` -/
def P10907377992539378870.Spec : Prop :=
  ∀ n, (P10907377992539378870.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P12979057412859866861

`∑[(char[∑[3*n+1]]+1)!]`
-/

namespace A183294.P12979057412859866861
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183294.P12979057412859866861

namespace A183294

/-- `∑[(char[∑[3*n+1]]+1)!]` -/
def P12979057412859866861.Spec : Prop :=
  ∀ n, (P12979057412859866861.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P181938855254074413

`∑[(char[∑[3*n+1]]+5)%4]`
-/

namespace A183294.P181938855254074413
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 5) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183294.P181938855254074413

namespace A183294

/-- `∑[(char[∑[3*n+1]]+5)%4]` -/
def P181938855254074413.Spec : Prop :=
  ∀ n, (P181938855254074413.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P9839430444371099190

`∑[gcd(2, char[∑[2*n+1+n]]+1)]`
-/

namespace A183294.P9839430444371099190
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183294.P9839430444371099190

namespace A183294

/-- `∑[gcd(2, char[∑[2*n+1+n]]+1)]` -/
def P9839430444371099190.Spec : Prop :=
  ∀ n, (P9839430444371099190.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P12250355006413948147

`∑[char[∑[n+1]+lcm(n, n+1)]+1]`
-/

namespace A183294.P12250355006413948147
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + Nat.lcm n (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183294.P12250355006413948147

namespace A183294

/-- `∑[char[∑[n+1]+lcm(n, n+1)]+1]` -/
def P12250355006413948147.Spec : Prop :=
  ∀ n, (P12250355006413948147.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P16239233783924527522

`comp[∑[3*n-1]]+(2*n)%2+1`
-/

namespace A183294.P16239233783924527522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 * n % 2 + 1

end

end A183294.P16239233783924527522

namespace A183294

/-- `comp[∑[3*n-1]]+(2*n)%2+1` -/
def P16239233783924527522.Spec : Prop :=
  ∀ n, (P16239233783924527522.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P10155609004034301324

`∑[A255849(n)]+n`
-/

namespace A183294.P10155609004034301324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183294.P10155609004034301324

namespace A183294

/-- `∑[A255849(n)]+n` -/
def P10155609004034301324.Spec : Prop :=
  ∀ n, P10155609004034301324.a n = A183294 (n + 1)

end A183294

/-! ## A183294.P3788086899821017190

`A083277(n+1)+n`
-/

namespace A183294.P3788086899821017190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (n + 1) + (n : ℤ)

end

end A183294.P3788086899821017190

namespace A183294

/-- `A083277(n+1)+n` -/
def P3788086899821017190.Spec : Prop :=
  ∀ n, P3788086899821017190.a n = A183294 (n + 1)

end A183294

/-! ## A183294.P14318857298153344010

`Δ[n²]-A180446(n)`
-/

namespace A183294.P14318857298153344010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A180446 n

end

end A183294.P14318857298153344010

namespace A183294

/-- `Δ[n²]-A180446(n)` -/
def P14318857298153344010.Spec : Prop :=
  ∀ n, P14318857298153344010.a n = A183294 (n + 1)

end A183294

/-! ## A183294.P675988400453767200

`∑[char[∑[A016777(n)]]+1]`
-/

namespace A183294.P675988400453767200
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183294.P675988400453767200

namespace A183294

/-- `∑[char[∑[A016777(n)]]+1]` -/
def P675988400453767200.Spec : Prop :=
  ∀ n, (P675988400453767200.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P11423694587513733304

`∑[char[A000326(n+1)]+1]`
-/

namespace A183294.P11423694587513733304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183294.P11423694587513733304

namespace A183294

/-- `∑[char[A000326(n+1)]+1]` -/
def P11423694587513733304.Spec : Prop :=
  ∀ n, (P11423694587513733304.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P11747362048721864880

`∑[char[A104572(n+1)]+1]`
-/

namespace A183294.P11747362048721864880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183294.P11747362048721864880

namespace A183294

/-- `∑[char[A104572(n+1)]+1]` -/
def P11747362048721864880.Spec : Prop :=
  ∀ n, (P11747362048721864880.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P4071443017953380045

`∑[char[A205141(n+1)]+1]`
-/

namespace A183294.P4071443017953380045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205141 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183294.P4071443017953380045

namespace A183294

/-- `∑[char[A205141(n+1)]+1]` -/
def P4071443017953380045.Spec : Prop :=
  ∀ n, (P4071443017953380045.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P5668849271264066308

`∑[char[A001318(2*n+1)]+1]`
-/

namespace A183294.P5668849271264066308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183294.P5668849271264066308

namespace A183294

/-- `∑[char[A001318(2*n+1)]+1]` -/
def P5668849271264066308.Spec : Prop :=
  ∀ n, (P5668849271264066308.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P2138730728600679711

`∑[char[∑[A000027(3*n+1)]]+1]`
-/

namespace A183294.P2138730728600679711
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183294.P2138730728600679711

namespace A183294

/-- `∑[char[∑[A000027(3*n+1)]]+1]` -/
def P2138730728600679711.Spec : Prop :=
  ∀ n, (P2138730728600679711.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P16299928116097312102

`∑[char[∑[A001651(2*n+1)]]]+1+n`
-/

namespace A183294.P16299928116097312102
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A183294.P16299928116097312102

namespace A183294

/-- `∑[char[∑[A001651(2*n+1)]]]+1+n` -/
def P16299928116097312102.Spec : Prop :=
  ∀ n, (P16299928116097312102.a n : ℤ) = A183294 (n + 1)

end A183294

/-! ## A183294.P8856974517225641667

`A110654(A235963(n))+n+1`
-/

namespace A183294.P8856974517225641667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A235963 n).toNat + (n + 1 : ℤ)

end

end A183294.P8856974517225641667

namespace A183294

/-- `A110654(A235963(n))+n+1` -/
def P8856974517225641667.Spec : Prop :=
  ∀ n, P8856974517225641667.a n = A183294 (n + 1)

end A183294

/-!
# A183295: Complement of A115067.

The programs for A183295, the canonical program `A183295.P13174156566864909733` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183295 has offset 1).

The definition of A183295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183295.P5093562234566007173

`comp[∑[3*n]+n]`
-/

namespace A183295.P5093562234566007173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183295.P5093562234566007173

namespace A183295

/-- `comp[∑[3*n]+n]` -/
def P5093562234566007173.Spec : Prop :=
  ∀ n, (P5093562234566007173.a n : ℤ) = A183295 (n + 1)

end A183295

/-! ## A183295.P10057942484512980725

`comp[C(n, 2)+n²]-1`
-/

namespace A183295.P10057942484512980725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A183295.P10057942484512980725

namespace A183295

/-- `comp[C(n, 2)+n²]-1` -/
def P10057942484512980725.Spec : Prop :=
  ∀ n, P10057942484512980725.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P17190967422764046732

`∑[char[3*C(n, 2)]]+n`
-/

namespace A183295.P17190967422764046732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183295.P17190967422764046732

namespace A183295

/-- `∑[char[3*C(n, 2)]]+n` -/
def P17190967422764046732.Spec : Prop :=
  ∀ n, (P17190967422764046732.a n : ℤ) = A183295 (n + 1)

end A183295

/-! ## A183295.P12414491112520098357

`comp[3*C(n, 2)+n]-1`
-/

namespace A183295.P12414491112520098357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A183295.P12414491112520098357

namespace A183295

/-- `comp[3*C(n, 2)+n]-1` -/
def P12414491112520098357.Spec : Prop :=
  ∀ n, P12414491112520098357.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P11889660068909759209

`comp[∑[record[lcm(2, n)]-n]]-1`
-/

namespace A183295.P11889660068909759209
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A183295.P11889660068909759209

namespace A183295

/-- `comp[∑[record[lcm(2, n)]-n]]-1` -/
def P11889660068909759209.Spec : Prop :=
  ∀ n, P11889660068909759209.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P3337311880888590771

`comp[∑[comp[gcd(3, n)+n]]]-1`
-/

namespace A183295.P3337311880888590771
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A183295.P3337311880888590771

namespace A183295

/-- `comp[∑[comp[gcd(3, n)+n]]]-1` -/
def P3337311880888590771.Spec : Prop :=
  ∀ n, P3337311880888590771.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P9643820751493737881

`lt[1, A118424(n)]`
-/

namespace A183295.P9643820751493737881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183295.P9643820751493737881

namespace A183295

/-- `lt[1, A118424(n)]` -/
def P9643820751493737881.Spec : Prop :=
  ∀ n, (P9643820751493737881.a n : ℤ) = A183295 (n + 1)

end A183295

/-! ## A183295.P13174156566864909733

`A183217(n+1)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183295

/-- `A183217(n+1)-1` -/
def P13174156566864909733.Spec : Prop :=
  ∀ n, P13174156566864909733.a n = A183295 (n + 1)

theorem P13174156566864909733.correct : P13174156566864909733.Spec := by
  intro n
  simp only [A183295, Nat.add_sub_cancel]

end A183295

/-! ## A183295.P11547517886856353718

`eq[0, A255849(n+1)]`
-/

namespace A183295.P11547517886856353718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183295.P11547517886856353718

namespace A183295

/-- `eq[0, A255849(n+1)]` -/
def P11547517886856353718.Spec : Prop :=
  ∀ n, (P11547517886856353718.a n : ℤ) = A183295 (n + 1)

end A183295

/-! ## A183295.P583036671279087869

`A111651(n+1)+n`
-/

namespace A183295.P583036671279087869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (n + 1) + (n : ℤ)

end

end A183295.P583036671279087869

namespace A183295

/-- `A111651(n+1)+n` -/
def P583036671279087869.Spec : Prop :=
  ∀ n, P583036671279087869.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P17913870814712779367

`round(sqrt(A133310(n))+n)`
-/

namespace A183295.P17913870814712779367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A133310 n : ℝ) + (n : ℝ))

end

end A183295.P17913870814712779367

namespace A183295

/-- `round(sqrt(A133310(n))+n)` -/
def P17913870814712779367.Spec : Prop :=
  ∀ n, P17913870814712779367.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P14982837457953763024

`∑[char[A045943(n)]]+n`
-/

namespace A183295.P14982837457953763024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183295.P14982837457953763024

namespace A183295

/-- `∑[char[A045943(n)]]+n` -/
def P14982837457953763024.Spec : Prop :=
  ∀ n, (P14982837457953763024.a n : ℤ) = A183295 (n + 1)

end A183295

/-! ## A183295.P13795010346106628004

`round(sqrt(A004396(n+1))+n)`
-/

namespace A183295.P13795010346106628004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004396 (n + 1) : ℝ) + (n : ℝ))

end

end A183295.P13795010346106628004

namespace A183295

/-- `round(sqrt(A004396(n+1))+n)` -/
def P13795010346106628004.Spec : Prop :=
  ∀ n, P13795010346106628004.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P6215463810179992507

`round(sqrt(A130823(n+1))+n)`
-/

namespace A183295.P6215463810179992507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A130823 (n + 1) : ℝ) + (n : ℝ))

end

end A183295.P6215463810179992507

namespace A183295

/-- `round(sqrt(A130823(n+1))+n)` -/
def P6215463810179992507.Spec : Prop :=
  ∀ n, P6215463810179992507.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P324653233654180813

`round(sqrt(A302404(n+1))+n)`
-/

namespace A183295.P324653233654180813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A302404 (n + 1) : ℝ) + (n : ℝ))

end

end A183295.P324653233654180813

namespace A183295

/-- `round(sqrt(A302404(n+1))+n)` -/
def P324653233654180813.Spec : Prop :=
  ∀ n, P324653233654180813.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P10803692003001513941

`round(sqrt(A302405(n+1))+n)`
-/

namespace A183295.P10803692003001513941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A302405 (n + 1) : ℝ) + (n : ℝ))

end

end A183295.P10803692003001513941

namespace A183295

/-- `round(sqrt(A302405(n+1))+n)` -/
def P10803692003001513941.Spec : Prop :=
  ∀ n, P10803692003001513941.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P1908102008070128834

`∑[char[A033436(2*n+1)]]+n`
-/

namespace A183295.P1908102008070128834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183295.P1908102008070128834

namespace A183295

/-- `∑[char[A033436(2*n+1)]]+n` -/
def P1908102008070128834.Spec : Prop :=
  ∀ n, (P1908102008070128834.a n : ℤ) = A183295 (n + 1)

end A183295

/-! ## A183295.P13836989535775331188

`comp[char[2*n+1]*A001318(n)]-1`
-/

namespace A183295.P13836989535775331188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A001318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A183295.P13836989535775331188

namespace A183295

/-- `comp[char[2*n+1]*A001318(n)]-1` -/
def P13836989535775331188.Spec : Prop :=
  ∀ n, P13836989535775331188.a n = A183295 (n + 1)

end A183295

/-! ## A183295.P14655629420357813730

`∑[char[∑[A000027(2*(n+1)+1)+n]]+1]`
-/

namespace A183295.P14655629420357813730
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 1) + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183295.P14655629420357813730

namespace A183295

/-- `∑[char[∑[A000027(2*(n+1)+1)+n]]+1]` -/
def P14655629420357813730.Spec : Prop :=
  ∀ n, (P14655629420357813730.a n : ℤ) = A183295 (n + 1)

end A183295

/-!
# A183296: Complement of A005476.

The programs for A183296, the canonical program `A183296.P13915886815745082202` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183296 has offset 1).

The definition of A183296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183296.P13915886815745082202

`comp[3*n²-∑[n]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183296

/-- `comp[3*n²-∑[n]]` -/
def P13915886815745082202.Spec : Prop :=
  ∀ n, (P13915886815745082202.a n : ℤ) = A183296 (n + 1)

theorem P13915886815745082202.correct : P13915886815745082202.Spec := by
  intro n
  simp only [A183296, Nat.add_sub_cancel]

end A183296

/-! ## A183296.P3539838024546631775

`∑[(char[∑[5*n+1]]+1)!]`
-/

namespace A183296.P3539838024546631775
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183296.P3539838024546631775

namespace A183296

/-- `∑[(char[∑[5*n+1]]+1)!]` -/
def P3539838024546631775.Spec : Prop :=
  ∀ n, (P3539838024546631775.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P4573921914779349190

`∑[char[5*C(n, 2)+n]]+n`
-/

namespace A183296.P4573921914779349190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183296.P4573921914779349190

namespace A183296

/-- `∑[char[5*C(n, 2)+n]]+n` -/
def P4573921914779349190.Spec : Prop :=
  ∀ n, (P4573921914779349190.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P14784279332887984061

`∑[(char[∑[5*n+1]]+5)%4]`
-/

namespace A183296.P14784279332887984061
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 5) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183296.P14784279332887984061

namespace A183296

/-- `∑[(char[∑[5*n+1]]+5)%4]` -/
def P14784279332887984061.Spec : Prop :=
  ∀ n, (P14784279332887984061.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P11586926696358783246

`∑[char[∑[a(n-1)+5]]+1]` with `a(0)=1`
-/

namespace A183296.P11586926696358783246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183296.P11586926696358783246

namespace A183296

/-- `∑[char[∑[a(n-1)+5]]+1]` -/
def P11586926696358783246.Spec : Prop :=
  ∀ n, (P11586926696358783246.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P667865709946765033

`comp[∑[5*n-3]+3]%(∑[16*n+5]+n)`
-/

namespace A183296.P667865709946765033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (∑ j ∈ Finset.range (n + 1), f3 j + n)

end

end A183296.P667865709946765033

namespace A183296

/-- `comp[∑[5*n-3]+3]%(∑[16*n+5]+n)` -/
def P667865709946765033.Spec : Prop :=
  ∀ n, (P667865709946765033.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P10447081403247912102

`∑[char[A000566(n)]]+n`
-/

namespace A183296.P10447081403247912102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183296.P10447081403247912102

namespace A183296

/-- `∑[char[A000566(n)]]+n` -/
def P10447081403247912102.Spec : Prop :=
  ∀ n, (P10447081403247912102.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P9075595627355213170

`comp[∑[A016873(n)]-1]+1`
-/

namespace A183296.P9075595627355213170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183296.P9075595627355213170

namespace A183296

/-- `comp[∑[A016873(n)]-1]+1` -/
def P9075595627355213170.Spec : Prop :=
  ∀ n, (P9075595627355213170.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P16220131861145457052

`comp[∑[A016861(n)]+n]+1`
-/

namespace A183296.P16220131861145457052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183296.P16220131861145457052

namespace A183296

/-- `comp[∑[A016861(n)]+n]+1` -/
def P16220131861145457052.Spec : Prop :=
  ∀ n, (P16220131861145457052.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P3054460619296717321

`comp[A116668(n)-(n+2)]+1`
-/

namespace A183296.P3054460619296717321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183296.P3054460619296717321

namespace A183296

/-- `comp[A116668(n)-(n+2)]+1` -/
def P3054460619296717321.Spec : Prop :=
  ∀ n, (P3054460619296717321.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P12690116028901895521

`comp[A147875(n)+3*n+1]+1`
-/

namespace A183296.P12690116028901895521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n + (3 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183296.P12690116028901895521

namespace A183296

/-- `comp[A147875(n)+3*n+1]+1` -/
def P12690116028901895521.Spec : Prop :=
  ∀ n, (P12690116028901895521.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P2174601166454768311

`∑[char[∑[A004767(n)-2+n]]+1]`
-/

namespace A183296.P2174601166454768311
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - 2 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183296.P2174601166454768311

namespace A183296

/-- `∑[char[∑[A004767(n)-2+n]]+1]` -/
def P2174601166454768311.Spec : Prop :=
  ∀ n, (P2174601166454768311.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P2242174280156344665

`∑[char[∑[A016777(n)+2*n]]+1]`
-/

namespace A183296.P2242174280156344665
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183296.P2242174280156344665

namespace A183296

/-- `∑[char[∑[A016777(n)+2*n]]+1]` -/
def P2242174280156344665.Spec : Prop :=
  ∀ n, (P2242174280156344665.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P5899940377596371837

`A000027(comp[∑[5*n+1]+n]+1)`
-/

namespace A183296.P5899940377596371837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A183296.P5899940377596371837

namespace A183296

/-- `A000027(comp[∑[5*n+1]+n]+1)` -/
def P5899940377596371837.Spec : Prop :=
  ∀ n, P5899940377596371837.a n = A183296 (n + 1)

end A183296

/-! ## A183296.P15681566014035107300

`∑[char[A001082(2*(n+1))-∑[n]]]+1+n`
-/

namespace A183296.P15681566014035107300
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (2 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A183296.P15681566014035107300

namespace A183296

/-- `∑[char[A001082(2*(n+1))-∑[n]]]+1+n` -/
def P15681566014035107300.Spec : Prop :=
  ∀ n, (P15681566014035107300.a n : ℤ) = A183296 (n + 1)

end A183296

/-! ## A183296.P16408323475813375134

`2*n+1-A004526(A122799(n+1))`
-/

namespace A183296.P16408323475813375134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A004526 (A122799 (n + 1)).toNat

end

end A183296.P16408323475813375134

namespace A183296

/-- `2*n+1-A004526(A122799(n+1))` -/
def P16408323475813375134.Spec : Prop :=
  ∀ n, P16408323475813375134.a n = A183296 (n + 1)

end A183296

/-! ## A183296.P11224635964645199565

`round(A080036(A016885(n))/5)`
-/

namespace A183296.P11224635964645199565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080036 (A016885 n).toNat : ℚ) / 5)

end

end A183296.P11224635964645199565

namespace A183296

/-- `round(A080036(A016885(n))/5)` -/
def P11224635964645199565.Spec : Prop :=
  ∀ n, P11224635964645199565.a n = A183296 (n + 1)

end A183296

/-!
# A183297: Complement of A005475.

The programs for A183297, the canonical program `A183297.P6729071871596600929` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183297 has offset 1).

The definition of A183297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183297.P6729071871596600929

`comp[∑[n]+2*n²]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183297

/-- `comp[∑[n]+2*n²]` -/
def P6729071871596600929.Spec : Prop :=
  ∀ n, (P6729071871596600929.a n : ℤ) = A183297 (n + 1)

theorem P6729071871596600929.correct : P6729071871596600929.Spec := by
  intro n
  simp only [A183297, Nat.add_sub_cancel]

end A183297

/-! ## A183297.P7681247264583299399

`∑[char[A005476(n)]]+n`
-/

namespace A183297.P7681247264583299399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183297.P7681247264583299399

namespace A183297

/-- `∑[char[A005476(n)]]+n` -/
def P7681247264583299399.Spec : Prop :=
  ∀ n, (P7681247264583299399.a n : ℤ) = A183297 (n + 1)

end A183297

/-! ## A183297.P5972902224681539843

`comp[A005475(n)-1]+1`
-/

namespace A183297.P5972902224681539843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183297.P5972902224681539843

namespace A183297

/-- `comp[A005475(n)-1]+1` -/
def P5972902224681539843.Spec : Prop :=
  ∀ n, (P5972902224681539843.a n : ℤ) = A183297 (n + 1)

end A183297

/-! ## A183297.P10281157707066315197

`comp[∑[A016885(n)]-1]+1`
-/

namespace A183297.P10281157707066315197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183297.P10281157707066315197

namespace A183297

/-- `comp[∑[A016885(n)]-1]+1` -/
def P10281157707066315197.Spec : Prop :=
  ∀ n, (P10281157707066315197.a n : ℤ) = A183297 (n + 1)

end A183297

/-! ## A183297.P9689570429287715619

`∑[char[A000566(n)+n]]+n`
-/

namespace A183297.P9689570429287715619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183297.P9689570429287715619

namespace A183297

/-- `∑[char[A000566(n)+n]]+n` -/
def P9689570429287715619.Spec : Prop :=
  ∀ n, (P9689570429287715619.a n : ℤ) = A183297 (n + 1)

end A183297

/-! ## A183297.P2160028785192788110

`eq[0, char[A005475(n)]]`
-/

namespace A183297.P2160028785192788110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183297.P2160028785192788110

namespace A183297

/-- `eq[0, char[A005475(n)]]` -/
def P2160028785192788110.Spec : Prop :=
  ∀ n, (P2160028785192788110.a n : ℤ) = A183297 (n + 1)

end A183297

/-! ## A183297.P7142970948634572496

`∑[A177706(A198954(5*n))]`
-/

namespace A183297.P7142970948634572496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177706 (A198954 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183297.P7142970948634572496

namespace A183297

/-- `∑[A177706(A198954(5*n))]` -/
def P7142970948634572496.Spec : Prop :=
  ∀ n, P7142970948634572496.a n = A183297 (n + 1)

end A183297

/-! ## A183297.P16061774947571168095

`A285481(A016993(n))+n`
-/

namespace A183297.P16061774947571168095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285481 (A016993 n).toNat + (n : ℤ)

end

end A183297.P16061774947571168095

namespace A183297

/-- `A285481(A016993(n))+n` -/
def P16061774947571168095.Spec : Prop :=
  ∀ n, P16061774947571168095.a n = A183297 (n + 1)

end A183297

/-! ## A183297.P10681407445315206197

`A285481(A017005(n))+n`
-/

namespace A183297.P10681407445315206197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285481 (A017005 n).toNat + (n : ℤ)

end

end A183297.P10681407445315206197

namespace A183297

/-- `A285481(A017005(n))+n` -/
def P10681407445315206197.Spec : Prop :=
  ∀ n, P10681407445315206197.a n = A183297 (n + 1)

end A183297

/-!
# A183298: Complement of A147875.

The programs for A183298, the canonical program `A183298.P10893960112907938844` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183298 has offset 1).

The definition of A183298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183298.P10893960112907938844

`comp[∑[5*n]-n]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183298

/-- `comp[∑[5*n]-n]` -/
def P10893960112907938844.Spec : Prop :=
  ∀ n, (P10893960112907938844.a n : ℤ) = A183298 (n + 1)

theorem P10893960112907938844.correct : P10893960112907938844.Spec := by
  intro n
  simp only [A183298, Nat.add_sub_cancel]

end A183298

/-! ## A183298.P13321382220824452182

`∑[char[A005475(n)]]+n`
-/

namespace A183298.P13321382220824452182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183298.P13321382220824452182

namespace A183298

/-- `∑[char[A005475(n)]]+n` -/
def P13321382220824452182.Spec : Prop :=
  ∀ n, (P13321382220824452182.a n : ℤ) = A183298 (n + 1)

end A183298

/-! ## A183298.P2729433302728497813

`comp[A147875(n)-1]+1`
-/

namespace A183298.P2729433302728497813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183298.P2729433302728497813

namespace A183298

/-- `comp[A147875(n)-1]+1` -/
def P2729433302728497813.Spec : Prop :=
  ∀ n, (P2729433302728497813.a n : ℤ) = A183298 (n + 1)

end A183298

/-! ## A183298.P15642435675120377912

`∑[char[∑[A016885(n)]]+1]`
-/

namespace A183298.P15642435675120377912
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183298.P15642435675120377912

namespace A183298

/-- `∑[char[∑[A016885(n)]]+1]` -/
def P15642435675120377912.Spec : Prop :=
  ∀ n, (P15642435675120377912.a n : ℤ) = A183298 (n + 1)

end A183298

/-! ## A183298.P10320466034159427151

`comp[∑[A008587(n)-1]]+1`
-/

namespace A183298.P10320466034159427151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183298.P10320466034159427151

namespace A183298

/-- `comp[∑[A008587(n)-1]]+1` -/
def P10320466034159427151.Spec : Prop :=
  ∀ n, (P10320466034159427151.a n : ℤ) = A183298 (n + 1)

end A183298

/-! ## A183298.P3794251358731431602

`comp[∑[A016897(n)]-1]+1`
-/

namespace A183298.P3794251358731431602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183298.P3794251358731431602

namespace A183298

/-- `comp[∑[A016897(n)]-1]+1` -/
def P3794251358731431602.Spec : Prop :=
  ∀ n, (P3794251358731431602.a n : ℤ) = A183298 (n + 1)

end A183298

/-! ## A183298.P12769662835222091400

`comp[∑[A016873(n)-3]]+1`
-/

namespace A183298.P12769662835222091400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183298.P12769662835222091400

namespace A183298

/-- `comp[∑[A016873(n)-3]]+1` -/
def P12769662835222091400.Spec : Prop :=
  ∀ n, (P12769662835222091400.a n : ℤ) = A183298 (n + 1)

end A183298

/-! ## A183298.P7637200988832704844

`comp[∑[A008588(n)-(n+1)]]+1`
-/

namespace A183298.P7637200988832704844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183298.P7637200988832704844

namespace A183298

/-- `comp[∑[A008588(n)-(n+1)]]+1` -/
def P7637200988832704844.Spec : Prop :=
  ∀ n, (P7637200988832704844.a n : ℤ) = A183298 (n + 1)

end A183298

/-! ## A183298.P10187245384332464715

`comp[∑[A056119(n)-∑[n+1]]]+1`
-/

namespace A183298.P10187245384332464715
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183298.P10187245384332464715

namespace A183298

/-- `comp[∑[A056119(n)-∑[n+1]]]+1` -/
def P10187245384332464715.Spec : Prop :=
  ∀ n, (P10187245384332464715.a n : ℤ) = A183298 (n + 1)

end A183298

/-! ## A183298.P2590647432787481229

`comp[A147875(n)]%A031935(n)`
-/

namespace A183298.P2590647432787481229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A031935 n)

end

end A183298.P2590647432787481229

namespace A183298

/-- `comp[A147875(n)]%A031935(n)` -/
def P2590647432787481229.Spec : Prop :=
  ∀ n, P2590647432787481229.a n = A183298 (n + 1)

end A183298

/-! ## A183298.P4577031923474829245

`comp[A147875(n)]/A093178(2*n)`
-/

namespace A183298.P4577031923474829245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / (A093178 (2 * n) : ℚ)

end

end A183298.P4577031923474829245

namespace A183298

/-- `comp[A147875(n)]/A093178(2*n)` -/
def P4577031923474829245.Spec : Prop :=
  ∀ n, P4577031923474829245.a n = (A183298 (n + 1) : ℚ)

end A183298

/-! ## A183298.P10013752110144917773

`eq[0, char[A147875(n)]]`
-/

namespace A183298.P10013752110144917773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183298.P10013752110144917773

namespace A183298

/-- `eq[0, char[A147875(n)]]` -/
def P10013752110144917773.Spec : Prop :=
  ∀ n, (P10013752110144917773.a n : ℤ) = A183298 (n + 1)

end A183298

/-! ## A183298.P6373737260313571756

`eq[0, char[A085787(2*n)]]`
-/

namespace A183298.P6373737260313571756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183298.P6373737260313571756

namespace A183298

/-- `eq[0, char[A085787(2*n)]]` -/
def P6373737260313571756.Spec : Prop :=
  ∀ n, (P6373737260313571756.a n : ℤ) = A183298 (n + 1)

end A183298

/-! ## A183298.P13168888660479299234

`floor(A080036(A016885(n))/5)`
-/

namespace A183298.P13168888660479299234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080036 (A016885 n).toNat : ℚ) / 5⌋

end

end A183298.P13168888660479299234

namespace A183298

/-- `floor(A080036(A016885(n))/5)` -/
def P13168888660479299234.Spec : Prop :=
  ∀ n, P13168888660479299234.a n = A183298 (n + 1)

end A183298

/-! ## A183298.P9952271398680602184

`round(A080036(A016861(n))/5)`
-/

namespace A183298.P9952271398680602184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080036 (A016861 n).toNat : ℚ) / 5)

end

end A183298.P9952271398680602184

namespace A183298

/-- `round(A080036(A016861(n))/5)` -/
def P9952271398680602184.Spec : Prop :=
  ∀ n, P9952271398680602184.a n = A183298 (n + 1)

end A183298

/-!
# A183299: Complement of A005563.

The programs for A183299, the canonical program `A183299.P11168409399824116378` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183299 has offset 1).

The definition of A183299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183299.P11168409399824116378

`A000037(n+1)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183299

/-- `A000037(n+1)-1` -/
def P11168409399824116378.Spec : Prop :=
  ∀ n, P11168409399824116378.a n = A183299 (n + 1)

theorem P11168409399824116378.correct : P11168409399824116378.Spec := by
  intro n
  simp only [A183299, Nat.add_sub_cancel]

end A183299

/-! ## A183299.P11461858524206982517

`comp[n²-1]`
-/

namespace A183299.P11461858524206982517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183299.P11461858524206982517

namespace A183299

/-- `comp[n²-1]` -/
def P11461858524206982517.Spec : Prop :=
  ∀ n, (P11461858524206982517.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P14597873817990420420

`xor(-comp[n²], -1)`
-/

namespace A183299.P14597873817990420420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) (-1)

end

end A183299.P14597873817990420420

namespace A183299

/-- `xor(-comp[n²], -1)` -/
def P14597873817990420420.Spec : Prop :=
  ∀ n, P14597873817990420420.a n = A183299 (n + 1)

end A183299

/-! ## A183299.P13304496806074999746

`round(sqrt(xor(1, n)+1))+n`
-/

namespace A183299.P13304496806074999746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.xor 1 n + 1 : ℝ)) + (n : ℤ)

end

end A183299.P13304496806074999746

namespace A183299

/-- `round(sqrt(xor(1, n)+1))+n` -/
def P13304496806074999746.Spec : Prop :=
  ∀ n, P13304496806074999746.a n = A183299 (n + 1)

end A183299

/-! ## A183299.P7874716316703779851

`∑[char[2*C(n, 2)]]+n`
-/

namespace A183299.P7874716316703779851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183299.P7874716316703779851

namespace A183299

/-- `∑[char[2*C(n, 2)]]+n` -/
def P7874716316703779851.Spec : Prop :=
  ∀ n, (P7874716316703779851.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P3631300189672037659

`comp[∑[n*and(1, n)]]-1`
-/

namespace A183299.P3631300189672037659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A183299.P3631300189672037659

namespace A183299

/-- `comp[∑[n*and(1, n)]]-1` -/
def P3631300189672037659.Spec : Prop :=
  ∀ n, P3631300189672037659.a n = A183299 (n + 1)

end A183299

/-! ## A183299.P75016158348064740

`round(sqrt(C(n+1, n))+n)`
-/

namespace A183299.P75016158348064740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (n + 1) n : ℝ) + (n : ℝ))

end

end A183299.P75016158348064740

namespace A183299

/-- `round(sqrt(C(n+1, n))+n)` -/
def P75016158348064740.Spec : Prop :=
  ∀ n, P75016158348064740.a n = A183299 (n + 1)

end A183299

/-! ## A183299.P10019859792919154626

`∑[char[lcm(n, n+1)]]+n`
-/

namespace A183299.P10019859792919154626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183299.P10019859792919154626

namespace A183299

/-- `∑[char[lcm(n, n+1)]]+n` -/
def P10019859792919154626.Spec : Prop :=
  ∀ n, (P10019859792919154626.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P11307747093004692609

`lt[1, A129710(n)]`
-/

namespace A183299.P11307747093004692609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183299.P11307747093004692609

namespace A183299

/-- `lt[1, A129710(n)]` -/
def P11307747093004692609.Spec : Prop :=
  ∀ n, (P11307747093004692609.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P10219361117442533829

`lt[1, A152204(n)]`
-/

namespace A183299.P10219361117442533829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183299.P10219361117442533829

namespace A183299

/-- `lt[1, A152204(n)]` -/
def P10219361117442533829.Spec : Prop :=
  ∀ n, (P10219361117442533829.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P368860107611257555

`∑[2-A267813(n)]`
-/

namespace A183299.P368860107611257555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A267813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183299.P368860107611257555

namespace A183299

/-- `∑[2-A267813(n)]` -/
def P368860107611257555.Spec : Prop :=
  ∀ n, P368860107611257555.a n = A183299 (n + 1)

end A183299

/-! ## A183299.P1522548080593083944

`∑[A005369(n)]+n`
-/

namespace A183299.P1522548080593083944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183299.P1522548080593083944

namespace A183299

/-- `∑[A005369(n)]+n` -/
def P1522548080593083944.Spec : Prop :=
  ∀ n, P1522548080593083944.a n = A183299 (n + 1)

end A183299

/-! ## A183299.P13246117831298159000

`eq[0, A065803(n+1)]`
-/

namespace A183299.P13246117831298159000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183299.P13246117831298159000

namespace A183299

/-- `eq[0, A065803(n+1)]` -/
def P13246117831298159000.Spec : Prop :=
  ∀ n, (P13246117831298159000.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P1662531452808653743

`eq[0, A347438(n+1)]`
-/

namespace A183299.P1662531452808653743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183299.P1662531452808653743

namespace A183299

/-- `eq[0, A347438(n+1)]` -/
def P1662531452808653743.Spec : Prop :=
  ∀ n, (P1662531452808653743.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P8248579564730803941

`eq[1, A049240(n+1)]`
-/

namespace A183299.P8248579564730803941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183299.P8248579564730803941

namespace A183299

/-- `eq[1, A049240(n+1)]` -/
def P8248579564730803941.Spec : Prop :=
  ∀ n, (P8248579564730803941.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P18221344389148272187

`lt[0, A146326(n+1)]`
-/

namespace A183299.P18221344389148272187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183299.P18221344389148272187

namespace A183299

/-- `lt[0, A146326(n+1)]` -/
def P18221344389148272187.Spec : Prop :=
  ∀ n, (P18221344389148272187.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P5633217245426058860

`eq[1, A158387(n+1)]`
-/

namespace A183299.P5633217245426058860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183299.P5633217245426058860

namespace A183299

/-- `eq[1, A158387(n+1)]` -/
def P5633217245426058860.Spec : Prop :=
  ∀ n, (P5633217245426058860.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P4411474625468553500

`eq[2, A071187(n+1)]`
-/

namespace A183299.P4411474625468553500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183299.P4411474625468553500

namespace A183299

/-- `eq[2, A071187(n+1)]` -/
def P4411474625468553500.Spec : Prop :=
  ∀ n, (P4411474625468553500.a n : ℤ) = A183299 (n + 1)

end A183299

/-! ## A183299.P14409402389162585884

`eq[2, gcd(2, A000005(n+2))]+1`
-/

namespace A183299.P14409402389162585884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000005 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A183299.P14409402389162585884

namespace A183299

/-- `eq[2, gcd(2, A000005(n+2))]+1` -/
def P14409402389162585884.Spec : Prop :=
  ∀ n, (P14409402389162585884.a n : ℤ) = A183299 (n + 1)

end A183299

