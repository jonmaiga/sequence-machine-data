import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A141600: Triangle read by rows: T(n, k) = round( f(n)/(f(k)*f(n-k)) ), where f(n) = (n-1)*(n+1)!, and f(0) = f(1) = 1.

The programs for A141600, there is no canonical definition to state claims against.
-/

/-! ## A141600.P4053431323776012442

`A046601(2*(n+1))+A001222(A342889(n))`
-/

namespace A141600.P4053431323776012442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (2 * (n + 1)) + A001222 (A342889 n).toNat

end

end A141600.P4053431323776012442

/-! ## A141600.P10063651024936621086

`A297025(A342889(n))`
-/

namespace A141600.P10063651024936621086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297025 (A342889 n).toNat

end

end A141600.P10063651024936621086

/-! ## A141600.P4375034170879146053

`A209863(or(1, A102413(n)))`
-/

namespace A141600.P4375034170879146053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209863 (Int.lor 1 (A102413 n)).toNat

end

end A141600.P4375034170879146053

/-! ## A141600.P15644222618629792317

`A123089(A022166(n))%12`
-/

namespace A141600.P15644222618629792317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123089 (A022166 n).toNat) 12

end

end A141600.P15644222618629792317

/-! ## A141600.P17665299133686241356

`A395473(A173740(n)²²)`
-/

namespace A141600.P17665299133686241356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395473 ((A173740 n ^ 2) ^ 2).toNat

end

end A141600.P17665299133686241356

/-!
# A141601: Triangle read by rows: T(n, k) = round(f(n)/(f(k)*f(n-k))), where f(n) = n!*binomial(n,2), f(0) = f(1) = 1.

The programs for A141601, there is no canonical definition to state claims against.
-/

/-! ## A141601.P17866362884898543629

`A338803(A022170(n))`
-/

namespace A141601.P17866362884898543629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338803 (A022170 n).toNat

end

end A141601.P17866362884898543629

/-! ## A141601.P1809295503920335706

`A069897(A006331(A007318(n)²))`
-/

namespace A141601.P1809295503920335706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (A006331 (A007318 n ^ 2).toNat).toNat

end

end A141601.P1809295503920335706

/-! ## A141601.P16915843066204090393

`gcd(A000203(A166536(n)), A008459(n))`
-/

namespace A141601.P16915843066204090393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A166536 n).toNat) (A008459 n)

end

end A141601.P16915843066204090393

/-! ## A141601.P14161402165371360832

`gcd(A000010(A160589(n)), A173585(n))`
-/

namespace A141601.P14161402165371360832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A160589 n).toNat) (A173585 n)

end

end A141601.P14161402165371360832

/-! ## A141601.P9702143345862510348

`A000188(A007318(n)^A237270(n+2))`
-/

namespace A141601.P9702143345862510348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A237270 (n + 2) : ℤ))).toNat

end

end A141601.P9702143345862510348

/-!
# A141602: Integer part of 2^n/log(2^n).

The programs for A141602, the canonical program `A141602.P5213315305827981190` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141602 has offset 1).

The definition of A141602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141602.P5213315305827981190

`floor(2^(n+1)/((n+1)*log(2)))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141602

/-- `floor(2^(n+1)/((n+1)*log(2)))` -/
def P5213315305827981190.Spec : Prop :=
  ∀ n, P5213315305827981190.a n = A141602 (n + 1)

theorem P5213315305827981190.correct : P5213315305827981190.Spec := by
  intro n
  simp only [A141602, Nat.add_sub_cancel]

end A141602

/-! ## A141602.P1176226763236691928

`A050500(2^(n+1))`
-/

namespace A141602.P1176226763236691928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (2 ^ (n + 1))

end

end A141602.P1176226763236691928

namespace A141602

/-- `A050500(2^(n+1))` -/
def P1176226763236691928.Spec : Prop :=
  ∀ n, P1176226763236691928.a n = A141602 (n + 1)

end A141602

/-! ## A141602.P16689167515666475038

`A050501(2^(n+1))-1`
-/

namespace A141602.P16689167515666475038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050501 (2 ^ (n + 1)) - 1

end

end A141602.P16689167515666475038

namespace A141602

/-- `A050501(2^(n+1))-1` -/
def P16689167515666475038.Spec : Prop :=
  ∀ n, P16689167515666475038.a n = A141602 (n + 1)

end A141602

/-! ## A141602.P495710938898771517

`abs(A050501(A000079(n+1))-1)`
-/

namespace A141602.P495710938898771517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050501 (A000079 (n + 1)).toNat - 1|

end

end A141602.P495710938898771517

namespace A141602

/-- `abs(A050501(A000079(n+1))-1)` -/
def P495710938898771517.Spec : Prop :=
  ∀ n, P495710938898771517.a n = A141602 (n + 1)

end A141602

/-! ## A141602.P1963098465335095597

`A050499(A001462(n+1)+∑[2^n])-1`
-/

namespace A141602.P1963098465335095597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A001462 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat - 1

end

end A141602.P1963098465335095597

namespace A141602

/-- `A050499(A001462(n+1)+∑[2^n])-1` -/
def P1963098465335095597.Spec : Prop :=
  ∀ n, P1963098465335095597.a n = A141602 (n + 1)

end A141602

/-!
# A141604: Triangle, read by rows, T(n,k) = round(A006720(n)/(A006720(n-k)*A006720(k))).

The programs for A141604, the canonical program `A141604.P10346383490485028324` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141604 has offset 0).

The definition of A141604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141604.P10346383490485028324

`round(A006720(row(n))/(A006720(row(n)-col(n))*A006720(col(n))))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141604

/-- `round(A006720(row(n))/(A006720(row(n)-col(n))*A006720(col(n))))` -/
def P10346383490485028324.Spec : Prop :=
  ∀ n, P10346383490485028324.a n = A141604 n

theorem P10346383490485028324.correct : P10346383490485028324.Spec := by
  intro n
  simp only [A141604]

end A141604

/-! ## A141604.P11692536470150452116

`A350350(A008288(n))-A101164(n)`
-/

namespace A141604.P11692536470150452116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350350 (A008288 n).toNat - A101164 n

end

end A141604.P11692536470150452116

namespace A141604

/-- `A350350(A008288(n))-A101164(n)` -/
def P11692536470150452116.Spec : Prop :=
  ∀ n, P11692536470150452116.a n = A141604 n

end A141604

/-! ## A141604.P9802292400932867473

`A057226(A045995(n)+1)`
-/

namespace A141604.P9802292400932867473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057226 (A045995 n + 1).toNat

end

end A141604.P9802292400932867473

namespace A141604

/-- `A057226(A045995(n)+1)` -/
def P9802292400932867473.Spec : Prop :=
  ∀ n, P9802292400932867473.a n = A141604 n

end A141604

/-! ## A141604.P4191318091073348775

`∑{e}[A179807(A007318(n))+1, #]`
-/

namespace A141604.P4191318091073348775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179807 (A007318 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A141604.P4191318091073348775

namespace A141604

/-- `∑{e}[A179807(A007318(n))+1, #]` -/
def P4191318091073348775.Spec : Prop :=
  ∀ n, (P4191318091073348775.a n : ℤ) = A141604 n

end A141604

/-! ## A141604.P5442767781416303956

`A025424(A349339(3*n+5)+A007318(n))`
-/

namespace A141604.P5442767781416303956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025424 (A349339 (3 * n + 5) + A007318 n).toNat

end

end A141604.P5442767781416303956

namespace A141604

/-- `A025424(A349339(3*n+5)+A007318(n))` -/
def P5442767781416303956.Spec : Prop :=
  ∀ n, P5442767781416303956.a n = A141604 n

end A141604

/-!
# A141605: Triangle read by rows: T(n, k) = A006722(n)/(A006722(k)*A006722(n-k)).

The programs for A141605, there is no canonical definition to state claims against.
-/

/-! ## A141605.P18009428132123099084

`A000120(A172369(n)^A001876(n))`
-/

namespace A141605.P18009428132123099084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A172369 n : ℚ) ^ (A001876 n : ℤ))).toNat

end

end A141605.P18009428132123099084

/-! ## A141605.P16886727199989344648

`A030305(A173152(n))`
-/

namespace A141605.P16886727199989344648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030305 (A173152 n).toNat

end

end A141605.P16886727199989344648

/-! ## A141605.P15128567110210866166

`A100808(A197672(n+1))`
-/

namespace A141605.P15128567110210866166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100808 (A197672 (n + 1)).toNat

end

end A141605.P15128567110210866166

/-! ## A141605.P10901427544173643557

`A306741(A137854(n+1))`
-/

namespace A141605.P10901427544173643557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306741 (A137854 (n + 1)).toNat

end

end A141605.P10901427544173643557

/-! ## A141605.P9176707221483365098

`A351179(A203542(n+1))`
-/

namespace A141605.P9176707221483365098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351179 (A203542 (n + 1)).toNat

end

end A141605.P9176707221483365098

/-!
# A141607: Nonprimes of the form n-(p(n+1)-p(n-2))/(p(n)-p(n-1)), where p(n)=n-th prime.

The programs for A141607, there is no canonical definition to state claims against.
-/

/-! ## A141607.P950984328604445667

`lt[A000989(n+3), A244042(A321721(n))]`
-/

namespace A141607.P950984328604445667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A321721 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141607.P950984328604445667

/-! ## A141607.P2972000313896856090

`lt[A023188(n+1), A051699(n)*A120937(n+3)]`
-/

namespace A141607.P2972000313896856090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n * A120937 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141607.P2972000313896856090

/-! ## A141607.P5697438758578008163

`lt[A038574(n), A137305(A321721(n))]`
-/

namespace A141607.P5697438758578008163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 (A321721 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141607.P5697438758578008163

/-! ## A141607.P11121819787905914094

`lt[A331803(n), A137305(A321721(n))]`
-/

namespace A141607.P11121819787905914094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331803 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 (A321721 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141607.P11121819787905914094

/-! ## A141607.P4057356258858688278

`lt[A317145(A210442(3*n+2)), A231820(n+1)]`
-/

namespace A141607.P4057356258858688278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317145 (A210442 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141607.P4057356258858688278

/-!
# A141609: a(n) = (a(n-1)*a(n-2) + a(n-1)^2)/a(n-3), with a(1) = a(2) = a(3) = 1.

The programs for A141609, the canonical program `A141609.P3633984510346701639` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141609 has offset 1).

The definition of A141609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141609.P3633984510346701639

`(a(n-1)*a(n-2)+a(n-1)²)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141609

/-- `(a(n-1)*a(n-2)+a(n-1)²)/a(n-3)` -/
def P3633984510346701639.Spec : Prop :=
  ∀ n, P3633984510346701639.a n = (A141609 (n + 1) : ℚ)

end A141609

/-! ## A141609.P6975207347146331367

`∏[(a(n-1)+1)*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A141609.P6975207347146331367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  (f1 (n - 1) + 1) * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141609.P6975207347146331367

namespace A141609

/-- `∏[(a(n-1)+1)*a(n-2)]` -/
def P6975207347146331367.Spec : Prop :=
  ∀ n, (P6975207347146331367.a n : ℤ) = A141609 (n + 1)

end A141609

/-! ## A141609.P8845920051830967505

`(a(n-1)+a(n-2))*a(n-1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A141609.P8845920051830967505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) * (a (n - 1) / a (n - 3))

end

end A141609.P8845920051830967505

namespace A141609

/-- `(a(n-1)+a(n-2))*a(n-1)/a(n-3)` -/
def P8845920051830967505.Spec : Prop :=
  ∀ n, P8845920051830967505.a n = (A141609 (n + 1) : ℚ)

end A141609

/-! ## A141609.P4200353582864465115

`∏[A006277(log2(ceil(2^(n-1))))]`
-/

namespace A141609.P4200353582864465115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006277 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141609.P4200353582864465115

namespace A141609

/-- `∏[A006277(log2(ceil(2^(n-1))))]` -/
def P4200353582864465115.Spec : Prop :=
  ∀ n, P4200353582864465115.a n = A141609 (n + 1)

end A141609

/-! ## A141609.P16875313396847253467

`a(n-1)*A006277(n-1)` with `a(0)=1`
-/

namespace A141609.P16875313396847253467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A006277 (n - 1)

end

end A141609.P16875313396847253467

namespace A141609

/-- `a(n-1)*A006277(n-1)` -/
def P16875313396847253467.Spec : Prop :=
  ∀ n, P16875313396847253467.a n = A141609 (n + 1)

end A141609

/-!
# A141611: Triangle read by rows: T(n, k) = (n-k+1)*(k+1)*binomial(n, k).

The programs for A141611, the canonical program `A141611.P17125091726554682991` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141611 has offset 0).

The definition of A141611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(col(n)+1)*C(row(n), col(n))` (program `A141611.P17125091726554682991`, by `A141611.P17125091726554682991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141611.P9658974110077148664

`(col(n)+1)*(row(n)-col(n)+1)*C(row(n), col(n))`
-/

namespace A141611.P9658974110077148664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A141611.P9658974110077148664

namespace A141611

/-- `(col(n)+1)*(row(n)-col(n)+1)*C(row(n), col(n))` -/
def P9658974110077148664.Spec : Prop :=
  ∀ n, P9658974110077148664.a n = A141611 n

theorem P9658974110077148664.correct : P9658974110077148664.Spec := by
  intro n
  simp only [A141611, Nat.add_sub_cancel, A141611.P9658974110077148664.a, A141611.P17125091726554682991.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141611

/-! ## A141611.P17125091726554682991

`(row(n)-col(n)+1)*(col(n)+1)*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141611

/-- `(row(n)-col(n)+1)*(col(n)+1)*C(row(n), col(n))` -/
def P17125091726554682991.Spec : Prop :=
  ∀ n, P17125091726554682991.a n = A141611 n

theorem P17125091726554682991.correct : P17125091726554682991.Spec := by
  intro n
  simp only [A141611]

end A141611

/-! ## A141611.P11613915898785311171

`(row(n)-col(n)+1)*A103406(n)`
-/

namespace A141611.P11613915898785311171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * A103406 n

end

end A141611.P11613915898785311171

namespace A141611

/-- `(row(n)-col(n)+1)*A103406(n)` -/
def P11613915898785311171.Spec : Prop :=
  ∀ n, P11613915898785311171.a n = A141611 n

end A141611

/-! ## A141611.P5407890826909700927

`C(row(n), col(n))*A003991(n+1)`
-/

namespace A141611.P5407890826909700927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A003991 (n + 1)

end

end A141611.P5407890826909700927

namespace A141611

/-- `C(row(n), col(n))*A003991(n+1)` -/
def P5407890826909700927.Spec : Prop :=
  ∀ n, P5407890826909700927.a n = A141611 n

theorem P5407890826909700927.correct : P5407890826909700927.Spec := by
  intro n
  simp only [A141611, Nat.add_sub_cancel, A141611.P5407890826909700927.a, A141611.P17125091726554682991.a, A003991, A003991.P6365127437582401781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141611

/-! ## A141611.P5256055195271831460

`(col(n)+1)*(row(n)-col(n)+1)*A007318(n)`
-/

namespace A141611.P5256055195271831460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * A007318 n

end

end A141611.P5256055195271831460

namespace A141611

/-- `(col(n)+1)*(row(n)-col(n)+1)*A007318(n)` -/
def P5256055195271831460.Spec : Prop :=
  ∀ n, P5256055195271831460.a n = A141611 n

theorem P5256055195271831460.correct : P5256055195271831460.Spec := by
  intro n
  simp only [A141611, Nat.add_sub_cancel, A141611.P5256055195271831460.a, A141611.P17125091726554682991.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141611

/-! ## A141611.P8055999677812579796

`A003991(n+1)*A007318(n)`
-/

namespace A141611.P8055999677812579796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A007318 n

end

end A141611.P8055999677812579796

namespace A141611

/-- `A003991(n+1)*A007318(n)` -/
def P8055999677812579796.Spec : Prop :=
  ∀ n, P8055999677812579796.a n = A141611 n

theorem P8055999677812579796.correct : P8055999677812579796.Spec := by
  intro n
  simp only [A141611, Nat.add_sub_cancel, A141611.P8055999677812579796.a, A141611.P17125091726554682991.a, A003991, A003991.P6365127437582401781.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141611

/-! ## A141611.P10300430528980821400

`A004736(n+1)*A103406(n)`
-/

namespace A141611.P10300430528980821400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A103406 n

end

end A141611.P10300430528980821400

namespace A141611

/-- `A004736(n+1)*A103406(n)` -/
def P10300430528980821400.Spec : Prop :=
  ∀ n, P10300430528980821400.a n = A141611 n

end A141611

/-! ## A141611.P10387752989569232614

`(A025581(n)+1)*A103406(n)`
-/

namespace A141611.P10387752989569232614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A103406 n

end

end A141611.P10387752989569232614

namespace A141611

/-- `(A025581(n)+1)*A103406(n)` -/
def P10387752989569232614.Spec : Prop :=
  ∀ n, P10387752989569232614.a n = A141611 n

end A141611

/-! ## A141611.P4696924610171080723

`A051125(n+1)*A144480(n)`
-/

namespace A141611.P4696924610171080723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) * A144480 n

end

end A141611.P4696924610171080723

namespace A141611

/-- `A051125(n+1)*A144480(n)` -/
def P4696924610171080723.Spec : Prop :=
  ∀ n, P4696924610171080723.a n = A141611 n

end A141611

/-! ## A141611.P16668210797767795426

`A103283(n)*A140756(n+1)`
-/

namespace A141611.P16668210797767795426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103283 n * A140756 (n + 1)

end

end A141611.P16668210797767795426

namespace A141611

/-- `A103283(n)*A140756(n+1)` -/
def P16668210797767795426.Spec : Prop :=
  ∀ n, P16668210797767795426.a n = A141611 n

end A141611

/-! ## A141611.P10544726601676008755

`(A014473(n)+1)*A003991(n+1)`
-/

namespace A141611.P10544726601676008755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A003991 (n + 1)

end

end A141611.P10544726601676008755

namespace A141611

/-- `(A014473(n)+1)*A003991(n+1)` -/
def P10544726601676008755.Spec : Prop :=
  ∀ n, P10544726601676008755.a n = A141611 n

end A141611

/-! ## A141611.P1911980569519477303

`A002260(n+1)*A093375(n+1)`
-/

namespace A141611.P1911980569519477303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A093375 (n + 1)

end

end A141611.P1911980569519477303

namespace A141611

/-- `A002260(n+1)*A093375(n+1)` -/
def P1911980569519477303.Spec : Prop :=
  ∀ n, P1911980569519477303.a n = A141611 n

end A141611

/-! ## A141611.P4877753800944854606

`A104567(n+1)*A139633(n+1)`
-/

namespace A141611.P4877753800944854606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104567 (n + 1) * A139633 (n + 1)

end

end A141611.P4877753800944854606

namespace A141611

/-- `A104567(n+1)*A139633(n+1)` -/
def P4877753800944854606.Spec : Prop :=
  ∀ n, P4877753800944854606.a n = A141611 n

end A141611

/-! ## A141611.P818972280660966004

`(A131923(n)-A003056(n))*A003991(n+1)`
-/

namespace A141611.P818972280660966004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131923 n - A003056 n) * A003991 (n + 1)

end

end A141611.P818972280660966004

namespace A141611

/-- `(A131923(n)-A003056(n))*A003991(n+1)` -/
def P818972280660966004.Spec : Prop :=
  ∀ n, P818972280660966004.a n = A141611 n

end A141611

/-! ## A141611.P12607756968322131747

`A003991(n+1)*A109906(n)/A058071(n)`
-/

namespace A141611.P12607756968322131747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) * A109906 n : ℚ) / (A058071 n : ℚ)

end

end A141611.P12607756968322131747

namespace A141611

/-- `A003991(n+1)*A109906(n)/A058071(n)` -/
def P12607756968322131747.Spec : Prop :=
  ∀ n, P12607756968322131747.a n = (A141611 n : ℚ)

end A141611

/-! ## A141611.P14699477193590869732

`A093375(n+1)/A007318(n)*A103406(n)`
-/

namespace A141611.P14699477193590869732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093375 (n + 1) : ℚ) / (A007318 n : ℚ) * (A103406 n : ℚ)

end

end A141611.P14699477193590869732

namespace A141611

/-- `A093375(n+1)/A007318(n)*A103406(n)` -/
def P14699477193590869732.Spec : Prop :=
  ∀ n, P14699477193590869732.a n = (A141611 n : ℚ)

end A141611

/-! ## A141611.P3746582135336581458

`(A134398(n+1)-A004247(n))*A003991(n+1)`
-/

namespace A141611.P3746582135336581458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134398 (n + 1) - A004247 n) * A003991 (n + 1)

end

end A141611.P3746582135336581458

namespace A141611

/-- `(A134398(n+1)-A004247(n))*A003991(n+1)` -/
def P3746582135336581458.Spec : Prop :=
  ∀ n, P3746582135336581458.a n = A141611 n

theorem P3746582135336581458.correct : P3746582135336581458.Spec := by
  intro n
  simp only [A141611, Nat.add_sub_cancel, A141611.P3746582135336581458.a, A141611.P17125091726554682991.a, A003991, A003991.P6365127437582401781.a, A004247, A004247.P2751605162508615148.a, A134398, A134398.P18413568476103833333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141611

/-! ## A141611.P1930709567669469780

`A002260(n+1)*A004736(n+1)*A007318(n)`
-/

namespace A141611.P1930709567669469780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (n + 1) * A007318 n

end

end A141611.P1930709567669469780

namespace A141611

/-- `A002260(n+1)*A004736(n+1)*A007318(n)` -/
def P1930709567669469780.Spec : Prop :=
  ∀ n, P1930709567669469780.a n = A141611 n

end A141611

/-! ## A141611.P6566832371437022898

`A002260(n+1)*A002260(A038722(n+1))*A007318(n)`
-/

namespace A141611.P6566832371437022898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A002260 (A038722 (n + 1)).toNat * A007318 n

end

end A141611.P6566832371437022898

namespace A141611

/-- `A002260(n+1)*A002260(A038722(n+1))*A007318(n)` -/
def P6566832371437022898.Spec : Prop :=
  ∀ n, P6566832371437022898.a n = A141611 n

end A141611

/-! ## A141611.P8871472760352816166

`A091441(n+1)/A098361(n)`
-/

namespace A141611.P8871472760352816166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091441 (n + 1) : ℚ) / (A098361 n : ℚ)

end

end A141611.P8871472760352816166

namespace A141611

/-- `A091441(n+1)/A098361(n)` -/
def P8871472760352816166.Spec : Prop :=
  ∀ n, P8871472760352816166.a n = (A141611 n : ℚ)

end A141611

/-!
# A141612: Write down 0,1,2,3,...n each in binary. Total up the number of 1's in each bit-position (total number of 1's in 1's position, total number of 1's in 2's position, total number of 1's in 4's position, etc.). a(n) = the number of such totals that each do not equal any other such total.

The programs for A141612, the canonical program `A141612.P959685703486808005` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141612 has offset 0).

The definition of A141612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141612.P11748042660188064396

`A089309(A335835(n+1)+A335835(n))-1`
-/

namespace A141612.P11748042660188064396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A335835 (n + 1) + A335835 n).toNat - 1

end

end A141612.P11748042660188064396

namespace A141612

/-- `A089309(A335835(n+1)+A335835(n))-1` -/
def P11748042660188064396.Spec : Prop :=
  ∀ n, P11748042660188064396.a n = A141612 n

end A141612

/-! ## A141612.P5743065316935452256

`val(A000217(A335835(n+1)+A335835(n)), 2)`
-/

namespace A141612.P5743065316935452256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000217 (A335835 (n + 1) + A335835 n).toNat).toNat 2

end

end A141612.P5743065316935452256

namespace A141612

/-- `val(A000217(A335835(n+1)+A335835(n)), 2)` -/
def P5743065316935452256.Spec : Prop :=
  ∀ n, (P5743065316935452256.a n : ℤ) = A141612 n

end A141612

/-! ## A141612.P959685703486808005

`A014081(A073122(n+1)-A033999(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A141612

/-- `A014081(A073122(n+1)-A033999(n))` -/
def P959685703486808005.Spec : Prop :=
  ∀ n, P959685703486808005.a n = A141612 n

theorem P959685703486808005.correct : P959685703486808005.Spec := by
  intro n
  simp only [A141612]

end A141612

/-! ## A141612.P12261565934667243386

`A014081(and(A003188(2*n+3), A003188(2*n)))`
-/

namespace A141612.P12261565934667243386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Int.land (A003188 (2 * n + 3)) (A003188 (2 * n))).toNat

end

end A141612.P12261565934667243386

namespace A141612

/-- `A014081(and(A003188(2*n+3), A003188(2*n)))` -/
def P12261565934667243386.Spec : Prop :=
  ∀ n, P12261565934667243386.a n = A141612 n

end A141612

/-! ## A141612.P3454994544068471780

`A007814(A335835(n+1)+A335835(n)+1)-1`
-/

namespace A141612.P3454994544068471780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A335835 (n + 1) + A335835 n + 1).toNat - 1

end

end A141612.P3454994544068471780

namespace A141612

/-- `A007814(A335835(n+1)+A335835(n)+1)-1` -/
def P3454994544068471780.Spec : Prop :=
  ∀ n, P3454994544068471780.a n = A141612 n

end A141612

/-! ## A141612.P344285308629041718

`A001511(A335835(n+1)+A335835(n)+1)-2`
-/

namespace A141612.P344285308629041718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A335835 (n + 1) + A335835 n + 1).toNat - 2

end

end A141612.P344285308629041718

namespace A141612

/-- `A001511(A335835(n+1)+A335835(n)+1)-2` -/
def P344285308629041718.Spec : Prop :=
  ∀ n, P344285308629041718.a n = A141612 n

end A141612

/-!
# A141614: First differences of A008846.

The programs for A141614, the canonical program `A141614.P7621870366066753165` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141614 has offset 1).

The definition of A141614 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141614.P7621870366066753165

`A008846(n+2)-A008846(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A141614

/-- `A008846(n+2)-A008846(n+1)` -/
def P7621870366066753165.Spec : Prop :=
  ∀ n, P7621870366066753165.a n = A141614 (n + 1)

theorem P7621870366066753165.correct : P7621870366066753165.Spec := by
  intro n
  simp only [A141614, Nat.add_sub_cancel]

end A141614

/-! ## A141614.P4720223795179823479

`Δ[A008846(1+n)]`
-/

namespace A141614.P4720223795179823479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141614.P4720223795179823479

namespace A141614

/-- `Δ[A008846(1+n)]` -/
def P4720223795179823479.Spec : Prop :=
  ∀ n, P4720223795179823479.a n = A141614 (n + 1)

theorem P4720223795179823479.correct : P4720223795179823479.Spec := by
  intro n
  simp only [A141614, Nat.add_sub_cancel, A141614.P4720223795179823479.f1, A141614.P4720223795179823479.a, A141614.P7621870366066753165.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141614

/-! ## A141614.P9641326759996974904

`Δ[sqrt(A360280(n+1))]`
-/

namespace A141614.P9641326759996974904
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A360280 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141614.P9641326759996974904

namespace A141614

/-- `Δ[sqrt(A360280(n+1))]` -/
def P9641326759996974904.Spec : Prop :=
  ∀ n, P9641326759996974904.a n = (A141614 (n + 1) : ℝ)

end A141614

/-! ## A141614.P7249270791545867801

`Δ[A157075(n+1)/2]`
-/

namespace A141614.P7249270791545867801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157075 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141614.P7249270791545867801

namespace A141614

/-- `Δ[A157075(n+1)/2]` -/
def P7249270791545867801.Spec : Prop :=
  ∀ n, P7249270791545867801.a n = (A141614 (n + 1) : ℚ)

theorem P7249270791545867801.correct : P7249270791545867801.Spec := by
  intro n
  simp only [A141614, Nat.add_sub_cancel, A141614.P7249270791545867801.f1, A141614.P7249270791545867801.a, A141614.P7621870366066753165.a, A008846, A008846.P8671149939260561417.f1, A008846.P8671149939260561417.a, A157075, A157075.P6307101692987451821.a, A008784, A008784.P11903729417169927821.f1, A008784.P11903729417169927821.a, A187074, A187074.P1071357817363202519.a, A072437, A072437.P9080563627844174689.f1, A072437.P9080563627844174689.f2, A072437.P9080563627844174689.a, A098725, A098725.P3697398069099776754.a, A140211, A140211.P16537942396198288479.f1, A140211.P16537942396198288479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141614

/-! ## A141614.P200790098857606643

`Δ[4*A094178(n+1)]`
-/

namespace A141614.P200790098857606643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A094178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141614.P200790098857606643

namespace A141614

/-- `Δ[4*A094178(n+1)]` -/
def P200790098857606643.Spec : Prop :=
  ∀ n, P200790098857606643.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P13575664013283184815

`A008574(Δ[A094178(n+1)])`
-/

namespace A141614.P13575664013283184815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (f1 (n + 1) - f1 n).toNat

end

end A141614.P13575664013283184815

namespace A141614

/-- `A008574(Δ[A094178(n+1)])` -/
def P13575664013283184815.Spec : Prop :=
  ∀ n, P13575664013283184815.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P3165565139741267166

`A008586(Δ[A094178(n+1)])`
-/

namespace A141614.P3165565139741267166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (f1 (n + 1) - f1 n).toNat

end

end A141614.P3165565139741267166

namespace A141614

/-- `A008586(Δ[A094178(n+1)])` -/
def P3165565139741267166.Spec : Prop :=
  ∀ n, P3165565139741267166.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P12522263205515779602

`A059558(Δ[A094178(n+1)])`
-/

namespace A141614.P12522263205515779602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059558 (f1 (n + 1) - f1 n).toNat

end

end A141614.P12522263205515779602

namespace A141614

/-- `A059558(Δ[A094178(n+1)])` -/
def P12522263205515779602.Spec : Prop :=
  ∀ n, P12522263205515779602.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P4518105208537893600

`A172326(Δ[A094178(n+1)])`
-/

namespace A141614.P4518105208537893600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172326 (f1 (n + 1) - f1 n).toNat

end

end A141614.P4518105208537893600

namespace A141614

/-- `A172326(Δ[A094178(n+1)])` -/
def P4518105208537893600.Spec : Prop :=
  ∀ n, P4518105208537893600.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P5097924682798616636

`Δ[A004613(2+n)]`
-/

namespace A141614.P5097924682798616636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141614.P5097924682798616636

namespace A141614

/-- `Δ[A004613(2+n)]` -/
def P5097924682798616636.Spec : Prop :=
  ∀ n, P5097924682798616636.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P3174994993255850663

`A004613(n+3)-A004613(n+2)`
-/

namespace A141614.P3174994993255850663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 3) - A004613 (n + 2)

end

end A141614.P3174994993255850663

namespace A141614

/-- `A004613(n+3)-A004613(n+2)` -/
def P3174994993255850663.Spec : Prop :=
  ∀ n, P3174994993255850663.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P4428710462724911984

`Δ[A016825(A094178(n+1)-1)]`
-/

namespace A141614.P4428710462724911984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A094178 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141614.P4428710462724911984

namespace A141614

/-- `Δ[A016825(A094178(n+1)-1)]` -/
def P4428710462724911984.Spec : Prop :=
  ∀ n, P4428710462724911984.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P4677170126666483439

`Δ[lt[0, A024362(n+1)]]`
-/

namespace A141614.P4677170126666483439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141614.P4677170126666483439

namespace A141614

/-- `Δ[lt[0, A024362(n+1)]]` -/
def P4677170126666483439.Spec : Prop :=
  ∀ n, P4677170126666483439.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P1933374674683622838

`Δ[eq[0, A082052(n+2)]]`
-/

namespace A141614.P1933374674683622838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141614.P1933374674683622838

namespace A141614

/-- `Δ[eq[0, A082052(n+2)]]` -/
def P1933374674683622838.Spec : Prop :=
  ∀ n, P1933374674683622838.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P9129556317335936024

`Δ[eq[1, A065338(n+2)]]`
-/

namespace A141614.P9129556317335936024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141614.P9129556317335936024

namespace A141614

/-- `Δ[eq[1, A065338(n+2)]]` -/
def P9129556317335936024.Spec : Prop :=
  ∀ n, P9129556317335936024.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P4833327375062429984

`Δ[lt[A082052(n+3), 1]]`
-/

namespace A141614.P4833327375062429984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141614.P4833327375062429984

namespace A141614

/-- `Δ[lt[A082052(n+3), 1]]` -/
def P4833327375062429984.Spec : Prop :=
  ∀ n, P4833327375062429984.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P3347463098242943580

`Δ[lt[A028310(n), A170818(n+1)]]`
-/

namespace A141614.P3347463098242943580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141614.P3347463098242943580

namespace A141614

/-- `Δ[lt[A028310(n), A170818(n+1)]]` -/
def P3347463098242943580.Spec : Prop :=
  ∀ n, P3347463098242943580.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P10839479184793383307

`Δ[eq[A007875(n+1), A157228(n+1)]]`
-/

namespace A141614.P10839479184793383307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141614.P10839479184793383307

namespace A141614

/-- `Δ[eq[A007875(n+1), A157228(n+1)]]` -/
def P10839479184793383307.Spec : Prop :=
  ∀ n, P10839479184793383307.a n = A141614 (n + 1)

end A141614

/-! ## A141614.P10514007934228441023

`Δ[lt[A024361(n+1), A024363(n+1)]]`
-/

namespace A141614.P10514007934228441023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141614.P10514007934228441023

namespace A141614

/-- `Δ[lt[A024361(n+1), A024363(n+1)]]` -/
def P10514007934228441023.Spec : Prop :=
  ∀ n, P10514007934228441023.a n = A141614 (n + 1)

end A141614

/-!
# A141615: Inverse binomial transform of A120070.

The programs for A141615, the canonical program `A141615.P5972979939233444843` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141615 has offset 0).

The definition of A141615 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120070, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141615.P5972979939233444843

`∑{#}[n, (-1)^(n+#)*C(n, #)*A120070(#+2)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141615

/-- `∑{#}[n, (-1)^(n+#)*C(n, #)*A120070(#+2)]` -/
def P5972979939233444843.Spec : Prop :=
  ∀ n, P5972979939233444843.a n = A141615 n

theorem P5972979939233444843.correct : P5972979939233444843.Spec := by
  intro n
  simp only [A141615]

end A141615

/-!
# A141616: Even terms in A120070.

The programs for A141616, the canonical program `A141616.P13865560224781549027` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141616 has offset 1).

The definition of A141616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141616.P13865560224781549027

`A120070(∑[char[n²]+2])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141616

/-- `A120070(∑[char[n²]+2])` -/
def P13865560224781549027.Spec : Prop :=
  ∀ n, P13865560224781549027.a n = A141616 (n + 1)

theorem P13865560224781549027.correct : P13865560224781549027.Spec := by
  intro n
  simp only [A141616, Nat.add_sub_cancel]

end A141616

/-! ## A141616.P14800692429167107754

`filter[A120070(n+2), A121262(#)]`
-/

namespace A141616.P14800692429167107754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A141616.P14800692429167107754

namespace A141616

/-- `filter[A120070(n+2), A121262(#)]` -/
def P14800692429167107754.Spec : Prop :=
  ∀ n, P14800692429167107754.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P8735505687716521252

`filter[A120070(n+2), A354097(#)]`
-/

namespace A141616.P8735505687716521252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A141616.P8735505687716521252

namespace A141616

/-- `filter[A120070(n+2), A354097(#)]` -/
def P8735505687716521252.Spec : Prop :=
  ∀ n, P8735505687716521252.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P10341680334015026787

`A143730(n+1)+A100181(n+1)`
-/

namespace A141616.P10341680334015026787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143730 (n + 1) + A100181 (n + 1)

end

end A141616.P10341680334015026787

namespace A141616

/-- `A143730(n+1)+A100181(n+1)` -/
def P10341680334015026787.Spec : Prop :=
  ∀ n, P10341680334015026787.a n = A141616 (n + 1)

theorem P10341680334015026787.correct : P10341680334015026787.Spec := by
  intro n
  simp only [A141616, Nat.add_sub_cancel, A141616.P10341680334015026787.a, A141616.P13865560224781549027.f2, A141616.P13865560224781549027.f1, A141616.P13865560224781549027.a, A100181, A100181.P3918827157118808602.f1, A100181.P3918827157118808602.a, A120070, A120070.P8418683465396432844.a, A143730, A143730.P16899165122371351592.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141616

/-! ## A141616.P6247142825960733453

`4*A003991(lt[floor(sqrt(8*n+1))%2, 1]+1)`
-/

namespace A141616.P6247142825960733453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n + 1) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003991 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A141616.P6247142825960733453

namespace A141616

/-- `4*A003991(lt[floor(sqrt(8*n+1))%2, 1]+1)` -/
def P6247142825960733453.Spec : Prop :=
  ∀ n, P6247142825960733453.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P15844591444582476231

`A098352(eq[0, A052553(n)]+1)`
-/

namespace A141616.P15844591444582476231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A141616.P15844591444582476231

namespace A141616

/-- `A098352(eq[0, A052553(n)]+1)` -/
def P15844591444582476231.Spec : Prop :=
  ∀ n, P15844591444582476231.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P17871024057190036025

`A098352(A274428(n+1))`
-/

namespace A141616.P17871024057190036025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098352 (A274428 (n + 1)).toNat

end

end A141616.P17871024057190036025

namespace A141616

/-- `A098352(A274428(n+1))` -/
def P17871024057190036025.Spec : Prop :=
  ∀ n, P17871024057190036025.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P13305424820146694024

`filter[A120070(n+2), A011765(#)]`
-/

namespace A141616.P13305424820146694024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A141616.P13305424820146694024

namespace A141616

/-- `filter[A120070(n+2), A011765(#)]` -/
def P13305424820146694024.Spec : Prop :=
  ∀ n, P13305424820146694024.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P13787825251855872900

`filter[A120070(n+2), A059841(#)]`
-/

namespace A141616.P13787825251855872900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A141616.P13787825251855872900

namespace A141616

/-- `filter[A120070(n+2), A059841(#)]` -/
def P13787825251855872900.Spec : Prop :=
  ∀ n, P13787825251855872900.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P2821750895388924999

`filter[A120070(n+2), A108357(#)]`
-/

namespace A141616.P2821750895388924999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A141616.P2821750895388924999

namespace A141616

/-- `filter[A120070(n+2), A108357(#)]` -/
def P2821750895388924999.Spec : Prop :=
  ∀ n, P2821750895388924999.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P3437252926355875666

`filter[A120070(n+2), A135528(#)]`
-/

namespace A141616.P3437252926355875666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A141616.P3437252926355875666

namespace A141616

/-- `filter[A120070(n+2), A135528(#)]` -/
def P3437252926355875666.Spec : Prop :=
  ∀ n, P3437252926355875666.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P10604787039017857404

`filter[A120070(n+2), A266591(#)]`
-/

namespace A141616.P10604787039017857404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A141616.P10604787039017857404

namespace A141616

/-- `filter[A120070(n+2), A266591(#)]` -/
def P10604787039017857404.Spec : Prop :=
  ∀ n, P10604787039017857404.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P3558714688464793920

`filter[A120070(n+2), A267043(#)]`
-/

namespace A141616.P3558714688464793920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A141616.P3558714688464793920

namespace A141616

/-- `filter[A120070(n+2), A267043(#)]` -/
def P3558714688464793920.Spec : Prop :=
  ∀ n, P3558714688464793920.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P5545786453678784381

`A098352(record[A028242(A189151(n+1))])`
-/

namespace A141616.P5545786453678784381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A189151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098352 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141616.P5545786453678784381

namespace A141616

/-- `A098352(record[A028242(A189151(n+1))])` -/
def P5545786453678784381.Spec : Prop :=
  ∀ n, P5545786453678784381.a n = A141616 (n + 1)

end A141616

/-! ## A141616.P6547805641257511558

`4*(A059036(eq[0, A060523(n)])+1)`
-/

namespace A141616.P6547805641257511558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A059036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1)

end

end A141616.P6547805641257511558

namespace A141616

/-- `4*(A059036(eq[0, A060523(n)])+1)` -/
def P6547805641257511558.Spec : Prop :=
  ∀ n, P6547805641257511558.a n = A141616 (n + 1)

end A141616

/-!
# A141617: Triangle read by rows: T(n, k) = binomial(n,k)*prime(k)*prime(n-k), for 1 <= k <= n-1, n >= 1, with T(0, 0) = 1, T(n, 0) = T(n, n) = prime(n).

The programs for A141617, the canonical program `A141617.P215556345430337065` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141617 has offset 0).

The definition of A141617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141617.P215556345430337065

`A007318(n)*A064989(A073060(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A141617

/-- `A007318(n)*A064989(A073060(n))` -/
def P215556345430337065.Spec : Prop :=
  ∀ n, P215556345430337065.a n = A141617 n

theorem P215556345430337065.correct : P215556345430337065.Spec := by
  intro n
  simp only [A141617]

end A141617

/-! ## A141617.P2439323951114397597

`A007318(n)*A064989(A098350(n+1))`
-/

namespace A141617.P2439323951114397597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A064989 (A098350 (n + 1)).toNat

end

end A141617.P2439323951114397597

namespace A141617

/-- `A007318(n)*A064989(A098350(n+1))` -/
def P2439323951114397597.Spec : Prop :=
  ∀ n, P2439323951114397597.a n = A141617 n

end A141617

/-! ## A141617.P15192840452585228727

`∏{e}[A036561(n), A000040(#)]*A007318(n)`
-/

namespace A141617.P15192840452585228727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)) * A007318 n

end

end A141617.P15192840452585228727

namespace A141617

/-- `∏{e}[A036561(n), A000040(#)]*A007318(n)` -/
def P15192840452585228727.Spec : Prop :=
  ∀ n, P15192840452585228727.a n = A141617 n

end A141617

/-! ## A141617.P7647302109507314608

`∏{e}[A036561(n), A030475(#)]*A007318(n)`
-/

namespace A141617.P7647302109507314608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030475 (Nat.factorization (f1 n).natAbs p)) * A007318 n

end

end A141617.P7647302109507314608

namespace A141617

/-- `∏{e}[A036561(n), A030475(#)]*A007318(n)` -/
def P7647302109507314608.Spec : Prop :=
  ∀ n, P7647302109507314608.a n = A141617 n

end A141617

/-! ## A141617.P5892766532652019125

`A007318(n)*A246029(A089633(n))`
-/

namespace A141617.P5892766532652019125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A246029 (A089633 n).toNat

end

end A141617.P5892766532652019125

namespace A141617

/-- `A007318(n)*A246029(A089633(n))` -/
def P5892766532652019125.Spec : Prop :=
  ∀ n, P5892766532652019125.a n = A141617 n

end A141617

/-! ## A141617.P3718685041025268025

`∏{e}[A175840(n), A000040(#)]*A007318(n)`
-/

namespace A141617.P3718685041025268025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)) * A007318 n

end

end A141617.P3718685041025268025

namespace A141617

/-- `∏{e}[A175840(n), A000040(#)]*A007318(n)` -/
def P3718685041025268025.Spec : Prop :=
  ∀ n, P3718685041025268025.a n = A141617 n

end A141617

/-! ## A141617.P9143726626854299001

`A007318(n)*A146985(n)`
-/

namespace A141617.P9143726626854299001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A146985 n

end

end A141617.P9143726626854299001

namespace A141617

/-- `A007318(n)*A146985(n)` -/
def P9143726626854299001.Spec : Prop :=
  ∀ n, P9143726626854299001.a n = A141617 n

end A141617

/-! ## A141617.P16155384459282563928

`abs(A108086(n)*A146985(n))`
-/

namespace A141617.P16155384459282563928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A146985 n|

end

end A141617.P16155384459282563928

namespace A141617

/-- `abs(A108086(n)*A146985(n))` -/
def P16155384459282563928.Spec : Prop :=
  ∀ n, P16155384459282563928.a n = A141617 n

end A141617

/-! ## A141617.P12668456393308096272

`abs(A117440(n)*A146985(n))`
-/

namespace A141617.P12668456393308096272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A146985 n|

end

end A141617.P12668456393308096272

namespace A141617

/-- `abs(A117440(n)*A146985(n))` -/
def P12668456393308096272.Spec : Prop :=
  ∀ n, P12668456393308096272.a n = A141617 n

end A141617

/-! ## A141617.P16933965384672826881

`abs(A130595(n)*A146985(n))`
-/

namespace A141617.P16933965384672826881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A146985 n|

end

end A141617.P16933965384672826881

namespace A141617

/-- `abs(A130595(n)*A146985(n))` -/
def P16933965384672826881.Spec : Prop :=
  ∀ n, P16933965384672826881.a n = A141617 n

end A141617

/-!
# A141618: Triangle read by rows: number of nilpotent partial transformations (of an n-element set) of height r (height(alpha) = |Im(alpha)|), 0 <= r < n.

The programs for A141618, the canonical program `A141618.P16771638024176208024` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141618 has offset 1).

The definition of A141618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141618.P16771638024176208024

`C(row(n)+1, col(n))*A028246(C(row(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141618

/-- `C(row(n)+1, col(n))*A028246(C(row(n)+1, 2)+col(n)+1)` -/
def P16771638024176208024.Spec : Prop :=
  ∀ n, P16771638024176208024.a n = A141618 (n + 1)

theorem P16771638024176208024.correct : P16771638024176208024.Spec := by
  intro n
  simp only [A141618, Nat.add_sub_cancel]

end A141618

/-! ## A141618.P3335143491717030026

`C(row(n)+1, col(n))*A019538(C(row(n)+1, 2)+col(n)+1)/(col(n)+1)`
-/

namespace A141618.P3335143491717030026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℤ) * A019538 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1)) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A141618.P3335143491717030026

namespace A141618

/-- `C(row(n)+1, col(n))*A019538(C(row(n)+1, 2)+col(n)+1)/(col(n)+1)` -/
def P3335143491717030026.Spec : Prop :=
  ∀ n, P3335143491717030026.a n = (A141618 (n + 1) : ℚ)

end A141618

/-! ## A141618.P8427487608606593376

`abs(A074909(n)*A163626(n))`
-/

namespace A141618.P8427487608606593376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074909 n * A163626 n|

end

end A141618.P8427487608606593376

namespace A141618

/-- `abs(A074909(n)*A163626(n))` -/
def P8427487608606593376.Spec : Prop :=
  ∀ n, P8427487608606593376.a n = A141618 (n + 1)

end A141618

/-! ## A141618.P14384013127555317580

`A028246(n+1)*A074909(n)`
-/

namespace A141618.P14384013127555317580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A074909 n

end

end A141618.P14384013127555317580

namespace A141618

/-- `A028246(n+1)*A074909(n)` -/
def P14384013127555317580.Spec : Prop :=
  ∀ n, P14384013127555317580.a n = A141618 (n + 1)

end A141618

/-! ## A141618.P13342261734371793661

`A008277(n+1)*A181511(n+1)`
-/

namespace A141618.P13342261734371793661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A181511 (n + 1)

end

end A141618.P13342261734371793661

namespace A141618

/-- `A008277(n+1)*A181511(n+1)` -/
def P13342261734371793661.Spec : Prop :=
  ∀ n, P13342261734371793661.a n = A141618 (n + 1)

end A141618

/-! ## A141618.P3771391356256213634

`A048993(comp[∑[n]])*A181511(n+1)`
-/

namespace A141618.P3771391356256213634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A181511 (n + 1)

end

end A141618.P3771391356256213634

namespace A141618

/-- `A048993(comp[∑[n]])*A181511(n+1)` -/
def P3771391356256213634.Spec : Prop :=
  ∀ n, P3771391356256213634.a n = A141618 (n + 1)

end A141618

/-! ## A141618.P16107295794239196136

`A090657(comp[∑[n]])/A004736(n+1)`
-/

namespace A141618.P16107295794239196136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A141618.P16107295794239196136

namespace A141618

/-- `A090657(comp[∑[n]])/A004736(n+1)` -/
def P16107295794239196136.Spec : Prop :=
  ∀ n, P16107295794239196136.a n = (A141618 (n + 1) : ℚ)

end A141618

/-! ## A141618.P14708424309291265919

`A007318(comp[∑[n+1]])*A028246(n+1)`
-/

namespace A141618.P14708424309291265919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A028246 (n + 1)

end

end A141618.P14708424309291265919

namespace A141618

/-- `A007318(comp[∑[n+1]])*A028246(n+1)` -/
def P14708424309291265919.Spec : Prop :=
  ∀ n, P14708424309291265919.a n = A141618 (n + 1)

end A141618

/-! ## A141618.P8102707467217587392

`A008277(n+1)*A008279(comp[∑[n-1]])`
-/

namespace A141618.P8102707467217587392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A008279 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A141618.P8102707467217587392

namespace A141618

/-- `A008277(n+1)*A008279(comp[∑[n-1]])` -/
def P8102707467217587392.Spec : Prop :=
  ∀ n, P8102707467217587392.a n = A141618 (n + 1)

end A141618

/-! ## A141618.P17116463737680718376

`A074909(n)*A130850(A061579(n))`
-/

namespace A141618.P17116463737680718376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A130850 (A061579 n).toNat

end

end A141618.P17116463737680718376

namespace A141618

/-- `A074909(n)*A130850(A061579(n))` -/
def P17116463737680718376.Spec : Prop :=
  ∀ n, P17116463737680718376.a n = A141618 (n + 1)

end A141618

/-!
# A141619: a(n) = 3*(n+1)/2 if n is odd, a(n) = prime(n/2) if n is even.

The programs for A141619, the canonical program `A141619.P4982656639390205998` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141619 has offset 1).

The definition of A141619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141619.P4982656639390205998

`A082500(n+1)*A176040(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A141619

/-- `A082500(n+1)*A176040(n)` -/
def P4982656639390205998.Spec : Prop :=
  ∀ n, P4982656639390205998.a n = A141619 (n + 1)

theorem P4982656639390205998.correct : P4982656639390205998.Spec := by
  intro n
  simp only [A141619, Nat.add_sub_cancel]

end A141619

/-! ## A141619.P3138408153190294360

`A082500(n+1)*A115364(A094290(n+1))`
-/

namespace A141619.P3138408153190294360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1) * A115364 (A094290 (n + 1)).toNat

end

end A141619.P3138408153190294360

namespace A141619

/-- `A082500(n+1)*A115364(A094290(n+1))` -/
def P3138408153190294360.Spec : Prop :=
  ∀ n, P3138408153190294360.a n = A141619 (n + 1)

end A141619

/-! ## A141619.P8567230569094261187

`A005408(A005408(n)-A014601(n))*A082500(n+1)`
-/

namespace A141619.P8567230569094261187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n - A014601 n).toNat * A082500 (n + 1)

end

end A141619.P8567230569094261187

namespace A141619

/-- `A005408(A005408(n)-A014601(n))*A082500(n+1)` -/
def P8567230569094261187.Spec : Prop :=
  ∀ n, P8567230569094261187.a n = A141619 (n + 1)

end A141619

/-! ## A141619.P15257612212854896014

`Δ[A014601(n)]*A082500(n+1)`
-/

namespace A141619.P15257612212854896014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A082500 (n + 1)

end

end A141619.P15257612212854896014

namespace A141619

/-- `Δ[A014601(n)]*A082500(n+1)` -/
def P15257612212854896014.Spec : Prop :=
  ∀ n, P15257612212854896014.a n = A141619 (n + 1)

end A141619

/-! ## A141619.P15227755046852448051

`A082500(n+1)*A109402(gcd(n, A002378(n+1)))`
-/

namespace A141619.P15227755046852448051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1) * A109402 (Int.gcd (n : ℤ) (A002378 (n + 1)))

end

end A141619.P15227755046852448051

namespace A141619

/-- `A082500(n+1)*A109402(gcd(n, A002378(n+1)))` -/
def P15227755046852448051.Spec : Prop :=
  ∀ n, P15227755046852448051.a n = A141619 (n + 1)

end A141619

/-! ## A141619.P11514517219060382592

`A000040(A057979(n)+1)*A057979(n+3)`
-/

namespace A141619.P11514517219060382592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A057979 n + 1).toNat * A057979 (n + 3)

end

end A141619.P11514517219060382592

namespace A141619

/-- `A000040(A057979(n)+1)*A057979(n+3)` -/
def P11514517219060382592.Spec : Prop :=
  ∀ n, P11514517219060382592.a n = A141619 (n + 1)

end A141619

/-! ## A141619.P5169572649524390485

`A019427(A019427(n+2))*A082500(n+1)`
-/

namespace A141619.P5169572649524390485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A019427 (n + 2)).toNat * A082500 (n + 1)

end

end A141619.P5169572649524390485

namespace A141619

/-- `A019427(A019427(n+2))*A082500(n+1)` -/
def P5169572649524390485.Spec : Prop :=
  ∀ n, P5169572649524390485.a n = A141619 (n + 1)

end A141619

/-! ## A141619.P5070607886799151997

`A082500(n+1)*A278536(A016777(n))`
-/

namespace A141619.P5070607886799151997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1) * A278536 (A016777 n).toNat

end

end A141619.P5070607886799151997

namespace A141619

/-- `A082500(n+1)*A278536(A016777(n))` -/
def P5070607886799151997.Spec : Prop :=
  ∀ n, P5070607886799151997.a n = A141619 (n + 1)

end A141619

/-! ## A141619.P3591876507209677131

`A008574(A082500(n+1))/A000034(n)-A082500(n+1)`
-/

namespace A141619.P3591876507209677131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A082500 (n + 1)).toNat : ℚ) / (A000034 n : ℚ) - (A082500 (n + 1) : ℚ)

end

end A141619.P3591876507209677131

namespace A141619

/-- `A008574(A082500(n+1))/A000034(n)-A082500(n+1)` -/
def P3591876507209677131.Spec : Prop :=
  ∀ n, P3591876507209677131.a n = (A141619 (n + 1) : ℚ)

end A141619

/-! ## A141619.P13391016793724830091

`A082500(n+1)*A115364(n²+2)`
-/

namespace A141619.P13391016793724830091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1) * A115364 (n ^ 2 + 2)

end

end A141619.P13391016793724830091

namespace A141619

/-- `A082500(n+1)*A115364(n²+2)` -/
def P13391016793724830091.Spec : Prop :=
  ∀ n, P13391016793724830091.a n = A141619 (n + 1)

end A141619

/-!
# A141620: First differences of A120070.

The programs for A141620, the canonical program `A141620.P3121196695608097675` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141620 has offset 0).

The definition of A141620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141620.P3121196695608097675

`Δ[A120070(2+n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141620

/-- `Δ[A120070(2+n)]` -/
def P3121196695608097675.Spec : Prop :=
  ∀ n, P3121196695608097675.a n = A141620 n

theorem P3121196695608097675.correct : P3121196695608097675.Spec := by
  intro n
  simp only [A141620]

end A141620

/-! ## A141620.P1120702277674547792

`A120070(n+3)-A120070(n+2)`
-/

namespace A141620.P1120702277674547792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 3) - A120070 (n + 2)

end

end A141620.P1120702277674547792

namespace A141620

/-- `A120070(n+3)-A120070(n+2)` -/
def P1120702277674547792.Spec : Prop :=
  ∀ n, P1120702277674547792.a n = A141620 n

theorem P1120702277674547792.correct : P1120702277674547792.Spec := by
  intro n
  simp only [A141620, Nat.add_sub_cancel, A141620.P1120702277674547792.a, A141620.P3121196695608097675.f1, A141620.P3121196695608097675.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141620

/-! ## A141620.P11167490659296051562

`A133128(n+1)`
-/

namespace A141620.P11167490659296051562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 (n + 1)

end

end A141620.P11167490659296051562

namespace A141620

/-- `A133128(n+1)` -/
def P11167490659296051562.Spec : Prop :=
  ∀ n, P11167490659296051562.a n = A141620 n

end A141620

/-! ## A141620.P1638483320845054120

`Δ[abs(∑[A133128(n)])]`
-/

namespace A141620.P1638483320845054120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141620.P1638483320845054120

namespace A141620

/-- `Δ[abs(∑[A133128(n)])]` -/
def P1638483320845054120.Spec : Prop :=
  ∀ n, P1638483320845054120.a n = A141620 n

end A141620

/-! ## A141620.P14737232443275601996

`Δ[sqrt(A165447(n+2))]`
-/

namespace A141620.P14737232443275601996
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165447 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141620.P14737232443275601996

namespace A141620

/-- `Δ[sqrt(A165447(n+2))]` -/
def P14737232443275601996.Spec : Prop :=
  ∀ n, P14737232443275601996.a n = (A141620 n : ℝ)

end A141620

/-! ## A141620.P3929440000442484473

`or(char[1], A133128(-xor(n, -1)))`
-/

namespace A141620.P3929440000442484473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A133128 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A141620.P3929440000442484473

namespace A141620

/-- `or(char[1], A133128(-xor(n, -1)))` -/
def P3929440000442484473.Spec : Prop :=
  ∀ n, P3929440000442484473.a n = A141620 n

end A141620

/-! ## A141620.P12190345289389306990

`A158897(n+1)-A158405(n+2)`
-/

namespace A141620.P12190345289389306990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158897 (n + 1) - A158405 (n + 2)

end

end A141620.P12190345289389306990

namespace A141620

/-- `A158897(n+1)-A158405(n+2)` -/
def P12190345289389306990.Spec : Prop :=
  ∀ n, P12190345289389306990.a n = A141620 n

theorem P12190345289389306990.correct : P12190345289389306990.Spec := by
  intro n
  simp only [A141620, Nat.add_sub_cancel, A141620.P12190345289389306990.a, A141620.P3121196695608097675.f1, A141620.P3121196695608097675.a, A120070, A120070.P8418683465396432844.a, A158405, A158405.P5173674940907569791.a, A158897, A158897.P8888983181281037156.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141620

/-! ## A141620.P12512378325457412878

`Δ[A004736(n+1)+2*A049777(n+1)]`
-/

namespace A141620.P12512378325457412878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 2 * A049777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141620.P12512378325457412878

namespace A141620

/-- `Δ[A004736(n+1)+2*A049777(n+1)]` -/
def P12512378325457412878.Spec : Prop :=
  ∀ n, P12512378325457412878.a n = A141620 n

end A141620

/-! ## A141620.P14934932326269943398

`Δ[(A094727(n+1)+2)*A004736(n+1)]`
-/

namespace A141620.P14934932326269943398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) + 2) * A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141620.P14934932326269943398

namespace A141620

/-- `Δ[(A094727(n+1)+2)*A004736(n+1)]` -/
def P14934932326269943398.Spec : Prop :=
  ∀ n, P14934932326269943398.a n = A141620 n

end A141620

/-! ## A141620.P13563676093944236763

`Δ[A094728(comp[A000217(n)]+1)]`
-/

namespace A141620.P13563676093944236763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141620.P13563676093944236763

namespace A141620

/-- `Δ[A094728(comp[A000217(n)]+1)]` -/
def P13563676093944236763.Spec : Prop :=
  ∀ n, P13563676093944236763.a n = A141620 n

end A141620

/-!
# A141623: E.g.f. satisfies: A(x) = exp(x*A(exp(x)-1)).

The programs for A141623, there is no canonical definition to state claims against.
-/

/-! ## A141623.P12572939006606629528

`A285764(or(n, A145160(n)))`
-/

namespace A141623.P12572939006606629528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285764 (Int.lor (n : ℤ) (A145160 n)).toNat

end

end A141623.P12572939006606629528

/-! ## A141623.P2187756941187113167

`A057872(A155805(n)+A002426(n))`
-/

namespace A141623.P2187756941187113167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A155805 n + A002426 n).toNat

end

end A141623.P2187756941187113167

/-!
# A141624: A008846 (5, 13, 17, 25, ...) - A002145 (3, 7, 11, 19, ...).

The programs for A141624, there is no canonical definition to state claims against.
-/

/-! ## A141624.P14560992054110607495

`A008846(n+1)-p?[record[xor(3, n)]]`
-/

namespace A141624.P14560992054110607495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A141624.P14560992054110607495

/-! ## A141624.P8174396042931749123

`A004613(n+2)-p?[record[xor(3, n)]]`
-/

namespace A141624.P8174396042931749123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 2) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A141624.P8174396042931749123

/-! ## A141624.P12754528620485315544

`A008846(n+1)-A002145(n+1)`
-/

namespace A141624.P12754528620485315544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) - A002145 (n + 1)

end

end A141624.P12754528620485315544

/-! ## A141624.P1073385322689459590

`A004613(n+2)-A002145(n+1)`
-/

namespace A141624.P1073385322689459590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 2) - A002145 (n + 1)

end

end A141624.P1073385322689459590

/-! ## A141624.P4347543783745431966

`A008846(n+1)-A045326(2+n)`
-/

namespace A141624.P4347543783745431966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) - A045326 (2 + n)

end

end A141624.P4347543783745431966

/-!
# A141625: E.g.f. satisfies: A(x) = exp(x*A(sin(x))).

The programs for A141625, there is no canonical definition to state claims against.
-/

/-! ## A141625.P14226799352601505065

`A008619(A138983(n)-∏{e}[n+1, #])`
-/

namespace A141625.P14226799352601505065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A138983 n - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A141625.P14226799352601505065

/-! ## A141625.P1182909816836220738

`A090130(n)+A083920(A132070(n))`
-/

namespace A141625.P1182909816836220738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090130 n + A083920 (A132070 n).toNat

end

end A141625.P1182909816836220738

/-!
# A141628: E.g.f. satisfies: A(x) = exp(x*A(tan(x))).

The programs for A141628, there is no canonical definition to state claims against.
-/

/-! ## A141628.P16800350015883465712

`A052419(A112936(n)+1)`
-/

namespace A141628.P16800350015883465712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (A112936 n + 1).toNat

end

end A141628.P16800350015883465712

/-! ## A141628.P7969624578643942895

`∑[A004526(A124824(n))]+1`
-/

namespace A141628.P7969624578643942895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A124824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A141628.P7969624578643942895

/-!
# A141630: Number of constitutional isomers of alkylcyclobutadienes.

The programs for A141630, there is no canonical definition to state claims against.
-/

/-! ## A141630.P6280345050770554606

`A194640(A020639(n+1)+A001333(n))-A178334(n)`
-/

namespace A141630.P6280345050770554606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A020639 (n + 1) + A001333 n).toNat - A178334 n

end

end A141630.P6280345050770554606

/-! ## A141630.P17137043075442273658

`A191919(A093695(n)+1)+1`
-/

namespace A141630.P17137043075442273658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191919 (A093695 n + 1).toNat + 1

end

end A141630.P17137043075442273658

/-! ## A141630.P16963884404721758330

`A026569(n)-A079998(A000142(n))`
-/

namespace A141630.P16963884404721758330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 n - A079998 (A000142 n).toNat

end

end A141630.P16963884404721758330

/-! ## A141630.P14657598793581435290

`A026569(n)-A286484(A026574(n))`
-/

namespace A141630.P14657598793581435290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 n - A286484 (A026574 n).toNat

end

end A141630.P14657598793581435290

/-!
# A141631: a(n) = 3*n^2 - 4*n + 3.

The programs for A141631, the canonical program `A141631.P7887751271673767978` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141631 has offset 1).

The definition of A141631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²-4*(n+1)+3` (program `A141631.P7887751271673767978`, by `A141631.P7887751271673767978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141631.P4281278151240224973

`ogf((2+x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A141631.P4281278151240224973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 3] [1, -3, 3, -1] n

end

end A141631.P4281278151240224973

namespace A141631

/-- `ogf((2+x+3x^2)/(1-3x+3x^2-x^3))` -/
def P4281278151240224973.Spec : Prop :=
  ∀ n, P4281278151240224973.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P3104636685772910236

`2*(n+1)²+n*(n-2)`
-/

namespace A141631.P3104636685772910236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) + (n : ℤ) * ((n : ℤ) - 2)

end

end A141631.P3104636685772910236

namespace A141631

/-- `2*(n+1)²+n*(n-2)` -/
def P3104636685772910236.Spec : Prop :=
  ∀ n, P3104636685772910236.a n = A141631 (n + 1)

theorem P3104636685772910236.correct : P3104636685772910236.Spec := by
  intro n
  simp only [A141631, Nat.add_sub_cancel, A141631.P3104636685772910236.a, A141631.P7887751271673767978.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141631

/-! ## A141631.P7887751271673767978

`3*(n+1)²-4*(n+1)+3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141631

/-- `3*(n+1)²-4*(n+1)+3` -/
def P7887751271673767978.Spec : Prop :=
  ∀ n, P7887751271673767978.a n = A141631 (n + 1)

theorem P7887751271673767978.correct : P7887751271673767978.Spec := by
  intro n
  simp only [A141631, Nat.add_sub_cancel]

end A141631

/-! ## A141631.P5766318786142788463

`A133146(2*n)`
-/

namespace A141631.P5766318786142788463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133146 (2 * n)

end

end A141631.P5766318786142788463

namespace A141631

/-- `A133146(2*n)` -/
def P5766318786142788463.Spec : Prop :=
  ∀ n, P5766318786142788463.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P3826174528709668791

`or(2, ∑[6*n]-n)`
-/

namespace A141631.P3826174528709668791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A141631.P3826174528709668791

namespace A141631

/-- `or(2, ∑[6*n]-n)` -/
def P3826174528709668791.Spec : Prop :=
  ∀ n, P3826174528709668791.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P14950731770003186522

`xor(2, ∑[6*n]-n)`
-/

namespace A141631.P14950731770003186522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A141631.P14950731770003186522

namespace A141631

/-- `xor(2, ∑[6*n]-n)` -/
def P14950731770003186522.Spec : Prop :=
  ∀ n, P14950731770003186522.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P12890751509165536706

`∑[a(n-1)+6]` with `a(0)=2, a(1)=5`
-/

namespace A141631.P12890751509165536706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141631.P12890751509165536706

namespace A141631

/-- `∑[a(n-1)+6]` -/
def P12890751509165536706.Spec : Prop :=
  ∀ n, (P12890751509165536706.a n : ℤ) = A141631 (n + 1)

end A141631

/-! ## A141631.P16941892098445047878

`∑[ogf((2+x+3x^2)/(1-2x+x^2))]`
-/

namespace A141631.P16941892098445047878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141631.P16941892098445047878

namespace A141631

/-- `∑[ogf((2+x+3x^2)/(1-2x+x^2))]` -/
def P16941892098445047878.Spec : Prop :=
  ∀ n, P16941892098445047878.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P6497333115225927947

`a(n-1)+6*n-1` with `a(0)=2`
-/

namespace A141631.P6497333115225927947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ((6 * n : ℤ) - 1)

end

end A141631.P6497333115225927947

namespace A141631

/-- `a(n-1)+6*n-1` -/
def P6497333115225927947.Spec : Prop :=
  ∀ n, P6497333115225927947.a n = A141631 (n + 1)

theorem P6497333115225927947.correct : P6497333115225927947.Spec := by
  intro n
  induction n with
  | zero => simp [A141631, A141631.P6497333115225927947.a, A141631.P7887751271673767978.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A141631, Nat.add_sub_cancel, A141631.P6497333115225927947.a, A141631.P7887751271673767978.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A141631

/-! ## A141631.P8349474482661224556

`6*n-(1-a(n-1))` with `a(0)=2`
-/

namespace A141631.P8349474482661224556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (6 * n : ℤ) - (1 - a (n - 1))

end

end A141631.P8349474482661224556

namespace A141631

/-- `6*n-(1-a(n-1))` -/
def P8349474482661224556.Spec : Prop :=
  ∀ n, P8349474482661224556.a n = A141631 (n + 1)

theorem P8349474482661224556.correct : P8349474482661224556.Spec := by
  intro n
  induction n with
  | zero => simp [A141631, A141631.P8349474482661224556.a, A141631.P7887751271673767978.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A141631, Nat.add_sub_cancel, A141631.P8349474482661224556.a, A141631.P7887751271673767978.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A141631

/-! ## A141631.P4941862913172724422

`or(3, (2*n)²)-(1-n)²`
-/

namespace A141631.P4941862913172724422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 ((2 * n) ^ 2) : ℤ) - (1 - (n : ℤ)) ^ 2

end

end A141631.P4941862913172724422

namespace A141631

/-- `or(3, (2*n)²)-(1-n)²` -/
def P4941862913172724422.Spec : Prop :=
  ∀ n, P4941862913172724422.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P8371745196674180878

`xor(3, (2*n)²)-(1-n)²`
-/

namespace A141631.P8371745196674180878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 ((2 * n) ^ 2) : ℤ) - (1 - (n : ℤ)) ^ 2

end

end A141631.P8371745196674180878

namespace A141631

/-- `xor(3, (2*n)²)-(1-n)²` -/
def P8371745196674180878.Spec : Prop :=
  ∀ n, P8371745196674180878.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P9696480223213759160

`ceil((2*n+n+2)/acot(n))`
-/

namespace A141631.P9696480223213759160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + (n + 2) : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉

end

end A141631.P9696480223213759160

namespace A141631

/-- `ceil((2*n+n+2)/acot(n))` -/
def P9696480223213759160.Spec : Prop :=
  ∀ n, P9696480223213759160.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P10067600990060129472

`Δ[(2*n+1)*(C(n, 2)+1)]`
-/

namespace A141631.P10067600990060129472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose n 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141631.P10067600990060129472

namespace A141631

/-- `Δ[(2*n+1)*(C(n, 2)+1)]` -/
def P10067600990060129472.Spec : Prop :=
  ∀ n, P10067600990060129472.a n = A141631 (n + 1)

theorem P10067600990060129472.correct : P10067600990060129472.Spec := by
  intro n
  simp only [A141631, Nat.add_sub_cancel, A141631.P10067600990060129472.f1, A141631.P10067600990060129472.a, A141631.P7887751271673767978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141631

/-! ## A141631.P8384701692421084934

`Δ[∑[n+1]+lcm(n-1, n²)]`
-/

namespace A141631.P8384701692421084934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141631.P8384701692421084934

namespace A141631

/-- `Δ[∑[n+1]+lcm(n-1, n²)]` -/
def P8384701692421084934.Spec : Prop :=
  ∀ n, P8384701692421084934.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P1557656797387540742

`(C(2*n, 2)/(n+1)+n+2)*(n+1)`
-/

namespace A141631.P1557656797387540742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 2 : ℚ) / (n + 1 : ℚ) + (n + 2 : ℚ)) * (n + 1 : ℚ)

end

end A141631.P1557656797387540742

namespace A141631

/-- `(C(2*n, 2)/(n+1)+n+2)*(n+1)` -/
def P1557656797387540742.Spec : Prop :=
  ∀ n, P1557656797387540742.a n = (A141631 (n + 1) : ℚ)

theorem P1557656797387540742.correct : P1557656797387540742.Spec := by
  intro n
  simp only [A141631, Nat.add_sub_cancel, A141631.P1557656797387540742.a, A141631.P7887751271673767978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141631

/-! ## A141631.P13986617728272117294

`Δ[(2*n+1)*∑[gcd(n-1, 2*(n-1))]]`
-/

namespace A141631.P13986617728272117294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (2 * ((n : ℤ) - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141631.P13986617728272117294

namespace A141631

/-- `Δ[(2*n+1)*∑[gcd(n-1, 2*(n-1))]]` -/
def P13986617728272117294.Spec : Prop :=
  ∀ n, P13986617728272117294.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P10382201085919005629

`Δ[(2*n+1)*(∑[n+1]-lcm(2, 2*n))]`
-/

namespace A141631.P10382201085919005629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.lcm 2 (2 * n) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141631.P10382201085919005629

namespace A141631

/-- `Δ[(2*n+1)*(∑[n+1]-lcm(2, 2*n))]` -/
def P10382201085919005629.Spec : Prop :=
  ∀ n, P10382201085919005629.a n = A141631 (n + 1)

end A141631

/-! ## A141631.P18094075222089070480

`(lcm(2*n+1, 2*n+n+1)-(n-3))/2`
-/

namespace A141631.P18094075222089070480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (2 * n + 1) (2 * n + (n + 1)) : ℤ) - ((n : ℤ) - 3) : ℚ) / 2

end

end A141631.P18094075222089070480

namespace A141631

/-- `(lcm(2*n+1, 2*n+n+1)-(n-3))/2` -/
def P18094075222089070480.Spec : Prop :=
  ∀ n, P18094075222089070480.a n = (A141631 (n + 1) : ℚ)

end A141631

/-! ## A141631.P6842961706635544653

`Δ[(2*n+1)*(∑[n+1]-and(2*n+1, 2*n))]`
-/

namespace A141631.P6842961706635544653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.land (2 * n + 1) (2 * n) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141631.P6842961706635544653

namespace A141631

/-- `Δ[(2*n+1)*(∑[n+1]-and(2*n+1, 2*n))]` -/
def P6842961706635544653.Spec : Prop :=
  ∀ n, P6842961706635544653.a n = A141631 (n + 1)

end A141631

/-!
# A141633: Primes of the form j-(p(j+3)-p(j))/(p(j+2)-p(j+1)), where p(j)=j-th prime.

The programs for A141633, there is no canonical definition to state claims against.
-/

/-! ## A141633.P9034557573345776910

`eq[A003415(n), A008284(A360005(n+2))]`
-/

namespace A141633.P9034557573345776910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A360005 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141633.P9034557573345776910

/-! ## A141633.P12713520782071045822

`eq[A032741(n), A287216(A360005(n+2))]`
-/

namespace A141633.P12713520782071045822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A360005 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141633.P12713520782071045822

/-! ## A141633.P9813204969247840432

`eq[A003415(n), A360439(A360457(n+2))]`
-/

namespace A141633.P9813204969247840432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360439 (A360457 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141633.P9813204969247840432

/-! ## A141633.P4282479185491629690

`eq[A053989(n+1), A099233(A360005(n+2))]`
-/

namespace A141633.P4282479185491629690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099233 (A360005 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141633.P4282479185491629690

/-! ## A141633.P9893456190099586143

`∩[A086339(n+1), A340745(n+1)]`
-/

namespace A141633.P9893456190099586143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141633.P9893456190099586143

/-!
# A141634: Nonprimes of the form c(c(c(c(c(i)-3)-3)-3)-3)-3, where A002808(i)=c(i)=i-th composite.

The programs for A141634, there is no canonical definition to state claims against.
-/

/-! ## A141634.P11222672606269057164

`record[A141632(n+1)^A141588(n+4)]`
-/

namespace A141634.P11222672606269057164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141632 (n + 1) : ℚ) ^ (A141588 (n + 4) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141634.P11222672606269057164

/-!
# A141636: Primes of the form c(c(c(i)-3)-3)-3, where A002808(i)=c(i)=i-th composite.

The programs for A141636, there is no canonical definition to state claims against.
-/

/-! ## A141636.P15477699753742151693

`p?[A164028(A164028(A164028(n+1)))]`
-/

namespace A141636.P15477699753742151693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (A164028 (A164028 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141636.P15477699753742151693

/-! ## A141636.P15698641247781404942

`p?[(A122825(A002808(n+1))-4)*(A155874(n)-3)]`
-/

namespace A141636.P15698641247781404942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122825 (A002808 (n + 1)).toNat - 4) * (A155874 n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141636.P15698641247781404942

/-! ## A141636.P10913453803233883646

`A163422(lt[A330950(n+1), (n/2)²])`
-/

namespace A141636.P10913453803233883646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330950 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163422 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A141636.P10913453803233883646

/-! ## A141636.P14094894756621963642

`A102095(A163422(n+3))`
-/

namespace A141636.P14094894756621963642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102095 (A163422 (n + 3)).toNat

end

end A141636.P14094894756621963642

/-! ## A141636.P8078237335410820465

`A163422(n+3)%A087442(A237646(n))`
-/

namespace A141636.P8078237335410820465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163422 (n + 3)) (A087442 (A237646 n).toNat)

end

end A141636.P8078237335410820465

/-!
# A141637: Primes of the form n/(p(n+1)-p(n)), where p(n)=n-th prime.

The programs for A141637, there is no canonical definition to state claims against.
-/

/-! ## A141637.P10833319046983017441

`p?[n+1-A006530(n+1)*A046933(n+1)]`
-/

namespace A141637.P10833319046983017441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1) * A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141637.P10833319046983017441

/-!
# A141638: Odd numbers which are not Yang numbers.

The programs for A141638, there is no canonical definition to state claims against.
-/

/-! ## A141638.P6582545264761848350

`or(3, eq[1, A165766(n+1)])`
-/

namespace A141638.P6582545264761848350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141638.P6582545264761848350

/-! ## A141638.P10564323944493147091

`or(3, floor(9*sqrt(A285303(3*n+5))))`
-/

namespace A141638.P10564323944493147091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ⌊9 * Real.sqrt (A285303 (3 * n + 5) : ℝ)⌋

end

end A141638.P10564323944493147091

/-! ## A141638.P11565617375607709612

`A122124(A292513(n+1))`
-/

namespace A141638.P11565617375607709612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (A292513 (n + 1)).toNat

end

end A141638.P11565617375607709612

/-! ## A141638.P6277631686599396765

`A004767(A376560(n+1)+7)`
-/

namespace A141638.P6277631686599396765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A376560 (n + 1) + 7).toNat

end

end A141638.P6277631686599396765

/-! ## A141638.P8623545503078791935

`or(3, A194204(A165632(n+1)))`
-/

namespace A141638.P8623545503078791935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A194204 (A165632 (n + 1)).toNat)

end

end A141638.P8623545503078791935

/-!
# A141639: Primes of the form c(c(i)-3)-3, where A002808(i)=c(i)=i-th composite.

The programs for A141639, there is no canonical definition to state claims against.
-/

/-! ## A141639.P2724269941565153415

`p?[A164028(A164028(n+1))]`
-/

namespace A141639.P2724269941565153415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (A164028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141639.P2724269941565153415

/-! ## A141639.P82716413497012435

`p?[A065090(A060462(n+1))-3]`
-/

namespace A141639.P82716413497012435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A060462 (n + 1)).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141639.P82716413497012435

/-! ## A141639.P2404661309609541746

`p?[A065090(A072668(n+1))-3]`
-/

namespace A141639.P2404661309609541746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A072668 (n + 1)).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141639.P2404661309609541746

/-! ## A141639.P8751673056139557651

`p?[A122825(A002808(n+1))-4]`
-/

namespace A141639.P8751673056139557651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122825 (A002808 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141639.P8751673056139557651

/-! ## A141639.P10241191030613830743

`p?[A060462(A060462(n+2)-1)-2]`
-/

namespace A141639.P10241191030613830743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A060462 (n + 2) - 1).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141639.P10241191030613830743

/-! ## A141639.P13594054784806140789

`p?[A072668(A072668(n+1)-2)-2]`
-/

namespace A141639.P13594054784806140789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (A072668 (n + 1) - 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141639.P13594054784806140789

/-! ## A141639.P13358792225833338935

`p?[A002808(A002808(n+1)-3)-3]`
-/

namespace A141639.P13358792225833338935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002808 (n + 1) - 3).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141639.P13358792225833338935

/-! ## A141639.P11499213582306660297

`p?[A018252(A018252(n+2)-2)-3]`
-/

namespace A141639.P11499213582306660297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (n + 2) - 2).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141639.P11499213582306660297

/-! ## A141639.P12012807693152900732

`record[A014963(A164028(A164028(n+2)))]`
-/

namespace A141639.P12012807693152900732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A164028 (A164028 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141639.P12012807693152900732

/-!
# A141640: Additive nonprimes: odd sum of digits is a nonprime.

The programs for A141640, the canonical program `A141640.P11678069343335363324` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141640 has offset 1).

The definition of A141640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141640.P17776648051088973353

`filter[A104211(n+1), A179081(#)]`
-/

namespace A141640.P17776648051088973353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A141640.P17776648051088973353

namespace A141640

/-- `filter[A104211(n+1), A179081(#)]` -/
def P17776648051088973353.Spec : Prop :=
  ∀ n, P17776648051088973353.a n = A141640 (n + 1)

end A141640

/-! ## A141640.P4060929582841930185

`∩[A054684(n+1), A104211(n+1)]`
-/

namespace A141640.P4060929582841930185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141640.P4060929582841930185

namespace A141640

/-- `∩[A054684(n+1), A104211(n+1)]` -/
def P4060929582841930185.Spec : Prop :=
  ∀ n, (P4060929582841930185.a n : ℤ) = A141640 (n + 1)

end A141640

/-! ## A141640.P11678069343335363324

`eq[A000007(n), A107279(A007953(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141640

/-- `eq[A000007(n), A107279(A007953(n))]` -/
def P11678069343335363324.Spec : Prop :=
  ∀ n, (P11678069343335363324.a n : ℤ) = A141640 (n + 1)

theorem P11678069343335363324.correct : P11678069343335363324.Spec := by
  intro n
  simp only [A141640, Nat.add_sub_cancel]

end A141640

/-! ## A141640.P15639413950368760637

`eq[A000038(n), A107279(A007953(n))]`
-/

namespace A141640.P15639413950368760637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141640.P15639413950368760637

namespace A141640

/-- `eq[A000038(n), A107279(A007953(n))]` -/
def P15639413950368760637.Spec : Prop :=
  ∀ n, (P15639413950368760637.a n : ℤ) = A141640 (n + 1)

end A141640

/-! ## A141640.P14813118943092666590

`eq[A103517(n)%2, A107279(A007953(n))]`
-/

namespace A141640.P14813118943092666590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103517 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141640.P14813118943092666590

namespace A141640

/-- `eq[A103517(n)%2, A107279(A007953(n))]` -/
def P14813118943092666590.Spec : Prop :=
  ∀ n, (P14813118943092666590.a n : ℤ) = A141640 (n + 1)

end A141640

/-! ## A141640.P9199065340763252194

`eq[A061142(n+1)%2, A107279(A007953(n))]`
-/

namespace A141640.P9199065340763252194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061142 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141640.P9199065340763252194

namespace A141640

/-- `eq[A061142(n+1)%2, A107279(A007953(n))]` -/
def P9199065340763252194.Spec : Prop :=
  ∀ n, (P9199065340763252194.a n : ℤ) = A141640 (n + 1)

end A141640

/-! ## A141640.P5443347407031241260

`eq[A107279(A007953(n)), A120007(5*(n+1))]`
-/

namespace A141640.P5443347407031241260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (5 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141640.P5443347407031241260

namespace A141640

/-- `eq[A107279(A007953(n)), A120007(5*(n+1))]` -/
def P5443347407031241260.Spec : Prop :=
  ∀ n, (P5443347407031241260.a n : ℤ) = A141640 (n + 1)

end A141640

/-!
# A141641: Digital sum of n is an even composite.

The programs for A141641, the canonical program `A141641.P6703526250908210247` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141641 has offset 1).

The definition of A141641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141641.P6703526250908210247

`∩[A054683(n+1), A104211(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A141641

/-- `∩[A054683(n+1), A104211(n+1)]` -/
def P6703526250908210247.Spec : Prop :=
  ∀ n, (P6703526250908210247.a n : ℤ) = A141641 (n + 1)

theorem P6703526250908210247.correct : P6703526250908210247.Spec := by
  intro n
  simp only [A141641, Nat.add_sub_cancel]

end A141641

/-! ## A141641.P5505965739707798553

`lt[4, (-2)^∑{digits}[n, #]]`
-/

namespace A141641.P5505965739707798553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A141641.P5505965739707798553

namespace A141641

/-- `lt[4, (-2)^∑{digits}[n, #]]` -/
def P5505965739707798553.Spec : Prop :=
  ∀ n, (P5505965739707798553.a n : ℤ) = A141641 (n + 1)

end A141641

/-! ## A141641.P6586025322763856013

`lt[4, ∏{digits}[n, (-2)^#]]`
-/

namespace A141641.P6586025322763856013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (-2) ^ x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A141641.P6586025322763856013

namespace A141641

/-- `lt[4, ∏{digits}[n, (-2)^#]]` -/
def P6586025322763856013.Spec : Prop :=
  ∀ n, (P6586025322763856013.a n : ℤ) = A141641 (n + 1)

end A141641

/-! ## A141641.P18414554628993696148

`lt[2, A058006(∑{digits}[n, #])]`
-/

namespace A141641.P18414554628993696148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058006 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A141641.P18414554628993696148

namespace A141641

/-- `lt[2, A058006(∑{digits}[n, #])]` -/
def P18414554628993696148.Spec : Prop :=
  ∀ n, (P18414554628993696148.a n : ℤ) = A141641 (n + 1)

end A141641

/-! ## A141641.P14807705317746009551

`lt[2, A126869(∑{digits}[n, #])]`
-/

namespace A141641.P14807705317746009551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A141641.P14807705317746009551

namespace A141641

/-- `lt[2, A126869(∑{digits}[n, #])]` -/
def P14807705317746009551.Spec : Prop :=
  ∀ n, (P14807705317746009551.a n : ℤ) = A141641 (n + 1)

end A141641

/-! ## A141641.P13892018256819512072

`eq[1, (A007953(n)-3)%2]`
-/

namespace A141641.P13892018256819512072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n - 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141641.P13892018256819512072

namespace A141641

/-- `eq[1, (A007953(n)-3)%2]` -/
def P13892018256819512072.Spec : Prop :=
  ∀ n, (P13892018256819512072.a n : ℤ) = A141641 (n + 1)

end A141641

/-! ## A141641.P15045709374220934070

`lt[1, A035444(2*∑{digits}[n, #])]`
-/

namespace A141641.P15045709374220934070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A141641.P15045709374220934070

namespace A141641

/-- `lt[1, A035444(2*∑{digits}[n, #])]` -/
def P15045709374220934070.Spec : Prop :=
  ∀ n, (P15045709374220934070.a n : ℤ) = A141641 (n + 1)

end A141641

/-! ## A141641.P11528917597696837860

`eq[0, A067018(A007953(n))]`
-/

namespace A141641.P11528917597696837860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067018 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141641.P11528917597696837860

namespace A141641

/-- `eq[0, A067018(A007953(n))]` -/
def P11528917597696837860.Spec : Prop :=
  ∀ n, (P11528917597696837860.a n : ℤ) = A141641 (n + 1)

end A141641

/-! ## A141641.P14258980495308624801

`eq[0, A266789(A118881(n))]`
-/

namespace A141641.P14258980495308624801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266789 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141641.P14258980495308624801

namespace A141641

/-- `eq[0, A266789(A118881(n))]` -/
def P14258980495308624801.Spec : Prop :=
  ∀ n, (P14258980495308624801.a n : ℤ) = A141641 (n + 1)

end A141641

/-! ## A141641.P13439569850859410343

`eq[0, A154760(A118880(n))]`
-/

namespace A141641.P13439569850859410343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154760 (A118880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141641.P13439569850859410343

namespace A141641

/-- `eq[0, A154760(A118880(n))]` -/
def P13439569850859410343.Spec : Prop :=
  ∀ n, (P13439569850859410343.a n : ℤ) = A141641 (n + 1)

end A141641

/-!
# A141642: Composite numbers whose sum of digits is a prime.

The programs for A141642, there is no canonical definition to state claims against.
-/

/-! ## A141642.P1887843699137194853

`filter[A028834(1+n), A005171(#)]`
-/

namespace A141642.P1887843699137194853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A141642.P1887843699137194853

/-! ## A141642.P3521934535218826698

`filter[A028834(n+1), A066247(#)]`
-/

namespace A141642.P3521934535218826698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A141642.P3521934535218826698

/-! ## A141642.P14311079370651859432

`∩[A028834(n+1), A329522(n+1)]`
-/

namespace A141642.P14311079370651859432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141642.P14311079370651859432

/-! ## A141642.P2442075314807683645

`∩[A002808(n+1), A028834(n+1)]`
-/

namespace A141642.P2442075314807683645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141642.P2442075314807683645

/-! ## A141642.P16249867955665552887

`∩[A018252(n+1), A028834(n+1)]`
-/

namespace A141642.P16249867955665552887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141642.P16249867955665552887

/-! ## A141642.P18195582555836937188

`∩[A028834(n+1), A141468(n+1)]`
-/

namespace A141642.P18195582555836937188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141642.P18195582555836937188

/-! ## A141642.P1523830341328708923

`∩[A028834(n+1), A062973(n+1)]`
-/

namespace A141642.P1523830341328708923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141642.P1523830341328708923

/-! ## A141642.P15570170117218520929

`∩[A028834(n+1), A056653(n+1)]`
-/

namespace A141642.P15570170117218520929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141642.P15570170117218520929

/-! ## A141642.P6141914517982133874

`∩[A329522(n+1), A057717(n)]`
-/

namespace A141642.P6141914517982133874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141642.P6141914517982133874

/-! ## A141642.P14703679653531464923

`eq[A007920(A007953(n)), A055672(n)]`
-/

namespace A141642.P14703679653531464923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141642.P14703679653531464923

/-! ## A141642.P1666121245929844584

`eq[A051699(A007953(n)), A055671(n)]`
-/

namespace A141642.P1666121245929844584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141642.P1666121245929844584

/-! ## A141642.P10580327256905284092

`eq[A051699(A169805(n)/2), A055672(n)]`
-/

namespace A141642.P10580327256905284092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141642.P10580327256905284092

/-! ## A141642.P13762294337307618759

`lt[A055672(n), A055672(A062028(n)-n)]`
-/

namespace A141642.P13762294337307618759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141642.P13762294337307618759

/-! ## A141642.P13341441114582988864

`eq[A105700(2*n), A295335(A007953(n))]`
-/

namespace A141642.P13341441114582988864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141642.P13341441114582988864

/-! ## A141642.P15751476682948340972

`lt[A105700(2*n), A105700(A118881(n))]`
-/

namespace A141642.P15751476682948340972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141642.P15751476682948340972

/-! ## A141642.P4500291009255777816

`A026239(p?[A026239(A028834(n+1))])`
-/

namespace A141642.P4500291009255777816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A028834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141642.P4500291009255777816

/-!
# A141644: Primes of the form (p(2n)-p(n))/(7*2), where p(n)=n-th prime.

The programs for A141644, there is no canonical definition to state claims against.
-/

/-! ## A141644.P11791288027710437754

`A107806(lcm(A107019(n+1), A171524(n+1)))`
-/

namespace A141644.P11791288027710437754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107806 (Int.lcm (A107019 (n + 1)) (A171524 (n + 1)))

end

end A141644.P11791288027710437754

/-!
# A141646: Triangle read by rows: row n gives coefficients of Conway polynomial of degree n over GF(2).

The programs for A141646, there is no canonical definition to state claims against.
-/

/-! ## A141646.P5262503546708267440

`A090405(A202742(n+1)+A079559(n))`
-/

namespace A141646.P5262503546708267440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (A202742 (n + 1) + A079559 n).toNat

end

end A141646.P5262503546708267440

/-! ## A141646.P982692546024568524

`A143104(A099239(n)*A145574(2*(n+1)))`
-/

namespace A141646.P982692546024568524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143104 (A099239 n * A145574 (2 * (n + 1))).toNat

end

end A141646.P982692546024568524

/-! ## A141646.P10956667390835562250

`A269250(A205484(n)%A047080(n))`
-/

namespace A141646.P10956667390835562250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 (Int.tmod (A205484 n) (A047080 n)).toNat

end

end A141646.P10956667390835562250

/-! ## A141646.P15470173178644236328

`A344880(A008277(n+1)*A253249(n+1))`
-/

namespace A141646.P15470173178644236328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (A008277 (n + 1) * A253249 (n + 1)).toNat

end

end A141646.P15470173178644236328

/-! ## A141646.P5716296086129699625

`A175608(A162976(n))`
-/

namespace A141646.P5716296086129699625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175608 (A162976 n).toNat

end

end A141646.P5716296086129699625

/-!
# A141647: Triangle read by rows: row n gives coefficients of Conway polynomial of degree n over GF(3).

The programs for A141647, there is no canonical definition to state claims against.
-/

/-! ## A141647.P13600321517885629029

`A132986(A210559(n+1))%4`
-/

namespace A141647.P13600321517885629029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132986 (A210559 (n + 1)).toNat) 4

end

end A141647.P13600321517885629029

/-! ## A141647.P9876010489527161073

`A035154(A008955(n)*A020653(n+5))`
-/

namespace A141647.P9876010489527161073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (A008955 n * A020653 (n + 5)).toNat

end

end A141647.P9876010489527161073

/-! ## A141647.P16243207735135469055

`A035154(lcm(A008955(n), A020653(n+5)))`
-/

namespace A141647.P16243207735135469055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (Int.lcm (A008955 n) (A020653 (n + 5)))

end

end A141647.P16243207735135469055

/-! ## A141647.P14541483497268965413

`A387136(A091720(n)+A002865(n))`
-/

namespace A141647.P14541483497268965413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387136 (A091720 n + A002865 n).toNat

end

end A141647.P14541483497268965413

/-!
# A141648: Triangle read by rows: row n gives coefficients of Conway polynomial of degree n over GF(5).

The programs for A141648, there is no canonical definition to state claims against.
-/

/-! ## A141648.P16698532338282538517

`A087008(A134991(n+1))%5`
-/

namespace A141648.P16698532338282538517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087008 (A134991 (n + 1)).toNat) 5

end

end A141648.P16698532338282538517

/-! ## A141648.P9875435608945581550

`A307394(n)%A004427(A020247(n+1))`
-/

namespace A141648.P9875435608945581550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307394 n) (A004427 (A020247 (n + 1)).toNat)

end

end A141648.P9875435608945581550

/-!
# A141651: Primes of the form k/(2*(p(k)-p(k-1))), where p(k)=k-th prime.

The programs for A141651, there is no canonical definition to state claims against.
-/

/-! ## A141651.P2687243834124364931

`p?[A026741(A141653(n+1))]`
-/

namespace A141651.P2687243834124364931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A141653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141651.P2687243834124364931

/-!
# A141652: Primes of the form k/(p(k)-p(k-1)), where p(k)=k-th prime.

The programs for A141652, there is no canonical definition to state claims against.
-/

/-! ## A141652.P3551459762145532504

`p?[A126988(A076368(2*(n+1))+A000096(2*n))]`
-/

namespace A141652.P3551459762145532504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A076368 (2 * (n + 1)) + A000096 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141652.P3551459762145532504

/-!
# A141654: Positive integers not of the form (n-p(n+3)+p(n+1))/(p(n+2)-p(n)), where p(i) is the i-th prime.

The programs for A141654, there is no canonical definition to state claims against.
-/

/-! ## A141654.P2969011342398158346

`eq[A010140(n), A029280(A029280(n))]`
-/

namespace A141654.P2969011342398158346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010140 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029280 (A029280 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141654.P2969011342398158346

/-! ## A141654.P9639017919126303564

`eq[A029280(A029280(n)), A040476(n)]`
-/

namespace A141654.P9639017919126303564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029280 (A029280 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141654.P9639017919126303564

/-! ## A141654.P7868545434568487723

`eq[A010140(n), A212804(A132270(n+1))]`
-/

namespace A141654.P7868545434568487723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010140 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A132270 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141654.P7868545434568487723

/-!
# A141656: Primes in A141655, as they appear.

The programs for A141656, there is no canonical definition to state claims against.
-/

/-! ## A141656.P10750115245775074203

`p?[A141655(n)]`
-/

namespace A141656.P10750115245775074203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141656.P10750115245775074203

/-! ## A141656.P9214332291341922000

`filter[A141655(n), A010051(#)]`
-/

namespace A141656.P9214332291341922000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141656.P9214332291341922000

/-! ## A141656.P8716648735408893001

`filter[A141655(n), A080339(#)]`
-/

namespace A141656.P8716648735408893001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A141656.P8716648735408893001

/-!
# A141657: a(n) = (prime(2*m)-prime(m))/6 where m is the n-th positive integer such that (prime(2*m)-prime(m))/6 is prime.

The programs for A141657, the canonical program `A141657.P6051655849065492727` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141657 has offset 1).

The definition of A141657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141657.P1562165729463834920

`p?[A135997(A258934(n+2))]`
-/

namespace A141657.P1562165729463834920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A258934 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141657.P1562165729463834920

namespace A141657

/-- `p?[A135997(A258934(n+2))]` -/
def P1562165729463834920.Spec : Prop :=
  ∀ n, P1562165729463834920.a n = A141657 (n + 1)

end A141657

/-! ## A141657.P6051655849065492727

`p?[A307985(A072473(n+1))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141657

/-- `p?[A307985(A072473(n+1))]` -/
def P6051655849065492727.Spec : Prop :=
  ∀ n, P6051655849065492727.a n = A141657 (n + 1)

theorem P6051655849065492727.correct : P6051655849065492727.Spec := by
  intro n
  simp only [A141657, Nat.add_sub_cancel]

end A141657

/-! ## A141657.P13403085250659944211

`p?[A307985(2*A258934(n+2))]`
-/

namespace A141657.P13403085250659944211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (2 * A258934 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141657.P13403085250659944211

namespace A141657

/-- `p?[A307985(2*A258934(n+2))]` -/
def P13403085250659944211.Spec : Prop :=
  ∀ n, P13403085250659944211.a n = A141657 (n + 1)

end A141657

/-! ## A141657.P18121847577090588848

`p?[A214394(A072473(n+2))]`
-/

namespace A141657.P18121847577090588848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (A072473 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141657.P18121847577090588848

namespace A141657

/-- `p?[A214394(A072473(n+2))]` -/
def P18121847577090588848.Spec : Prop :=
  ∀ n, P18121847577090588848.a n = A141657 (n + 1)

end A141657

/-! ## A141657.P15953925224304389089

`p?[A214394(2*A258934(n+2))]`
-/

namespace A141657.P15953925224304389089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (2 * A258934 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141657.P15953925224304389089

namespace A141657

/-- `p?[A214394(2*A258934(n+2))]` -/
def P15953925224304389089.Spec : Prop :=
  ∀ n, P15953925224304389089.a n = A141657 (n + 1)

end A141657

/-!
# A141659: Triangle: t(n,m)=Mod[PartitionsP[Prime[n + 1]*m + Floor[Prime[n + 1]/2] + m], Prime[n + 1]].

The programs for A141659, there is no canonical definition to state claims against.
-/

/-! ## A141659.P563064497433199429

`A000041(A000040(row(n)+1)*col(n)+floor(A000040(row(n)+1)/2)+col(n))%A000040(row(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141659.P563064497433199429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A000040 (SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n : ℤ) + ⌊(A000040 (SequenceMachineLib.triRow n + 1) : ℚ) / 2⌋ + (SequenceMachineLib.triCol n : ℤ)).toNat) (A000040 (SequenceMachineLib.triRow n + 1))

end

end A141659.P563064497433199429

/-!
# A141660: Triangle read by rows: T(n,k) = 2^k*A123125(n,k).

The programs for A141660, the canonical program `A141660.P213620645312904206` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141660 has offset 1).

The definition of A141660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141660.P213620645312904206

`2^col(n)*A123125(C(row(n)+1, 2)+col(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141660

/-- `2^col(n)*A123125(C(row(n)+1, 2)+col(n))` -/
def P213620645312904206.Spec : Prop :=
  ∀ n, P213620645312904206.a n = A141660 (n + 1)

theorem P213620645312904206.correct : P213620645312904206.Spec := by
  intro n
  simp only [A141660, Nat.add_sub_cancel]

end A141660

/-! ## A141660.P1723896544787970984

`2*(row(n)-col(n)+1)*T(n-1,k-1)+col(n)*T(n-1,k)` with `a(0)=1`
-/

namespace A141660.P1723896544787970984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUp a n

end

end A141660.P1723896544787970984

namespace A141660

/-- `2*(row(n)-col(n)+1)*T(n-1,k-1)+col(n)*T(n-1,k)` -/
def P1723896544787970984.Spec : Prop :=
  ∀ n, P1723896544787970984.a n = A141660 (n + 1)

end A141660

/-! ## A141660.P13927308379396289718

`2^col(n)*A123125(n)`
-/

namespace A141660.P13927308379396289718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) * A123125 n

end

end A141660.P13927308379396289718

namespace A141660

/-- `2^col(n)*A123125(n)` -/
def P13927308379396289718.Spec : Prop :=
  ∀ n, P13927308379396289718.a n = A141660 (n + 1)

end A141660

/-! ## A141660.P2613704794039918487

`A059268(n)*A123125(n)`
-/

namespace A141660.P2613704794039918487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A123125 n

end

end A141660.P2613704794039918487

namespace A141660

/-- `A059268(n)*A123125(n)` -/
def P2613704794039918487.Spec : Prop :=
  ∀ n, P2613704794039918487.a n = A141660 (n + 1)

end A141660

/-! ## A141660.P18241966568804046005

`2^A002262(n)*A123125(n)`
-/

namespace A141660.P18241966568804046005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A123125 n : ℚ)

end

end A141660.P18241966568804046005

namespace A141660

/-- `2^A002262(n)*A123125(n)` -/
def P18241966568804046005.Spec : Prop :=
  ∀ n, P18241966568804046005.a n = (A141660 (n + 1) : ℚ)

end A141660

/-! ## A141660.P965415262804164846

`A000079(A002262(n))*A123125(n)`
-/

namespace A141660.P965415262804164846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A123125 n

end

end A141660.P965415262804164846

namespace A141660

/-- `A000079(A002262(n))*A123125(n)` -/
def P965415262804164846.Spec : Prop :=
  ∀ n, P965415262804164846.a n = A141660 (n + 1)

end A141660

/-! ## A141660.P12381189381667002164

`A059268(n)*A173018(A061579(n))`
-/

namespace A141660.P12381189381667002164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A173018 (A061579 n).toNat

end

end A141660.P12381189381667002164

namespace A141660

/-- `A059268(n)*A173018(A061579(n))` -/
def P12381189381667002164.Spec : Prop :=
  ∀ n, P12381189381667002164.a n = A141660 (n + 1)

end A141660

/-! ## A141660.P9700727220132065329

`A142075(n+1)/A008292(n+1)*A123125(n)`
-/

namespace A141660.P9700727220132065329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142075 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ) * (A123125 n : ℚ)

end

end A141660.P9700727220132065329

namespace A141660

/-- `A142075(n+1)/A008292(n+1)*A123125(n)` -/
def P9700727220132065329.Spec : Prop :=
  ∀ n, P9700727220132065329.a n = (A141660 (n + 1) : ℚ)

end A141660

/-! ## A141660.P2614774037359399357

`A156365(n+1)/A008292(n+1)*A123125(n)`
-/

namespace A141660.P2614774037359399357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156365 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ) * (A123125 n : ℚ)

end

end A141660.P2614774037359399357

namespace A141660

/-- `A156365(n+1)/A008292(n+1)*A123125(n)` -/
def P2614774037359399357.Spec : Prop :=
  ∀ n, P2614774037359399357.a n = (A141660 (n + 1) : ℚ)

end A141660

/-! ## A141660.P9731701572478230009

`A000010(2^A002260(n+1))*A123125(n)`
-/

namespace A141660.P9731701572478230009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat * A123125 n

end

end A141660.P9731701572478230009

namespace A141660

/-- `A000010(2^A002260(n+1))*A123125(n)` -/
def P9731701572478230009.Spec : Prop :=
  ∀ n, P9731701572478230009.a n = A141660 (n + 1)

end A141660

/-!
# A141661: Ramanujan Partition odd congruences as a triangular sequence: t(n,m) = PartitionsP((2*n - 1)*m + floor((2*n - 1)/2) + m) mod (2*n - 1).

The programs for A141661, there is no canonical definition to state claims against.
-/

/-! ## A141661.P11965445587928791440

`and(A054898(A067112(n)), A181449(n+1))`
-/

namespace A141661.P11965445587928791440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054898 (A067112 n).toNat) (A181449 (n + 1))

end

end A141661.P11965445587928791440

/-! ## A141661.P8769894839391473215

`and(A057360(n), A165091(A143176(n+1)))`
-/

namespace A141661.P8769894839391473215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057360 n) (A165091 (A143176 (n + 1)).toNat)

end

end A141661.P8769894839391473215

/-!
# A141662: Triangle read by rows, T(n,m) = abs(n - m^2).

The programs for A141662, the canonical program `A141662.P887994440463581248` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141662 has offset 0).

The definition of A141662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(row(n)-col(n)²)` (program `A141662.P887994440463581248`, by `A141662.P887994440463581248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141662.P887994440463581248

`abs(row(n)-col(n)²)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141662

/-- `abs(row(n)-col(n)²)` -/
def P887994440463581248.Spec : Prop :=
  ∀ n, P887994440463581248.a n = A141662 n

theorem P887994440463581248.correct : P887994440463581248.Spec := by
  intro n
  simp only [A141662]

end A141662

/-! ## A141662.P3579172996027071650

`abs(col(n)²-row(n))`
-/

namespace A141662.P3579172996027071650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.triCol n ^ 2 : ℤ) - (SequenceMachineLib.triRow n : ℤ)|

end

end A141662.P3579172996027071650

namespace A141662

/-- `abs(col(n)²-row(n))` -/
def P3579172996027071650.Spec : Prop :=
  ∀ n, P3579172996027071650.a n = A141662 n

end A141662

/-! ## A141662.P7603883187173342392

`root((row(n)-col(n)²)², 2)`
-/

namespace A141662.P7603883187173342392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n ^ 2 : ℤ)) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A141662.P7603883187173342392

namespace A141662

/-- `root((row(n)-col(n)²)², 2)` -/
def P7603883187173342392.Spec : Prop :=
  ∀ n, P7603883187173342392.a n = (A141662 n : ℝ)

end A141662

/-! ## A141662.P17398193273978510853

`abs(row(n)-A000290(col(n)))`
-/

namespace A141662.P17398193273978510853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.triRow n : ℤ) - A000290 (SequenceMachineLib.triCol n)|

end

end A141662.P17398193273978510853

namespace A141662

/-- `abs(row(n)-A000290(col(n)))` -/
def P17398193273978510853.Spec : Prop :=
  ∀ n, P17398193273978510853.a n = A141662 n

theorem P17398193273978510853.correct : P17398193273978510853.Spec := by
  intro n
  simp only [A141662, Nat.add_sub_cancel, A141662.P17398193273978510853.a, A141662.P887994440463581248.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141662

/-! ## A141662.P15333316537351910189

`abs(A059036(n)-A079904(n))`
-/

namespace A141662.P15333316537351910189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059036 n - A079904 n|

end

end A141662.P15333316537351910189

namespace A141662

/-- `abs(A059036(n)-A079904(n))` -/
def P15333316537351910189.Spec : Prop :=
  ∀ n, P15333316537351910189.a n = A141662 n

theorem P15333316537351910189.correct : P15333316537351910189.Spec := by
  intro n
  simp only [A141662, Nat.add_sub_cancel, A141662.P15333316537351910189.a, A141662.P887994440463581248.a, A059036, A059036.P14090632459187506294.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141662

/-! ## A141662.P17052966892297281058

`abs(A003056(n)-A143844(n))`
-/

namespace A141662.P17052966892297281058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003056 n - A143844 n|

end

end A141662.P17052966892297281058

namespace A141662

/-- `abs(A003056(n)-A143844(n))` -/
def P17052966892297281058.Spec : Prop :=
  ∀ n, P17052966892297281058.a n = A141662 n

end A141662

/-! ## A141662.P18060824153710697056

`abs(A002262(n)²-A003056(n))`
-/

namespace A141662.P18060824153710697056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002262 n ^ 2 - A003056 n|

end

end A141662.P18060824153710697056

namespace A141662

/-- `abs(A002262(n)²-A003056(n))` -/
def P18060824153710697056.Spec : Prop :=
  ∀ n, P18060824153710697056.a n = A141662 n

end A141662

/-! ## A141662.P5124452001123680767

`abs(A003991(n+1)-A076110(n+1))`
-/

namespace A141662.P5124452001123680767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003991 (n + 1) - A076110 (n + 1)|

end

end A141662.P5124452001123680767

namespace A141662

/-- `abs(A003991(n+1)-A076110(n+1))` -/
def P5124452001123680767.Spec : Prop :=
  ∀ n, P5124452001123680767.a n = A141662 n

theorem P5124452001123680767.correct : P5124452001123680767.Spec := by
  intro n
  simp only [A141662, Nat.add_sub_cancel, A141662.P5124452001123680767.a, A141662.P887994440463581248.a, A003991, A003991.P6365127437582401781.a, A076110, A076110.P1795246513683719096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141662

/-! ## A141662.P16323947911222843677

`abs(∑[A010054(n)]-(A002262(n)²+1))`
-/

namespace A141662.P16323947911222843677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (A002262 n ^ 2 + 1)|

end

end A141662.P16323947911222843677

namespace A141662

/-- `abs(∑[A010054(n)]-(A002262(n)²+1))` -/
def P16323947911222843677.Spec : Prop :=
  ∀ n, P16323947911222843677.a n = A141662 n

end A141662

/-! ## A141662.P10473356527376380537

`abs(A002024(n+1)-A002522(A002262(n)))`
-/

namespace A141662.P10473356527376380537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) - A002522 (A002262 n).toNat|

end

end A141662.P10473356527376380537

namespace A141662

/-- `abs(A002024(n+1)-A002522(A002262(n)))` -/
def P10473356527376380537.Spec : Prop :=
  ∀ n, P10473356527376380537.a n = A141662 n

end A141662

/-! ## A141662.P6981384132790356478

`abs(A004736(n+1)-A002061(A002262(n)))`
-/

namespace A141662.P6981384132790356478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004736 (n + 1) - A002061 (A002262 n).toNat|

end

end A141662.P6981384132790356478

namespace A141662

/-- `abs(A004736(n+1)-A002061(A002262(n)))` -/
def P6981384132790356478.Spec : Prop :=
  ∀ n, P6981384132790356478.a n = A141662 n

end A141662

/-! ## A141662.P15316795544483657470

`abs(A330709(2*n+1)²-A330709(2*n))`
-/

namespace A141662.P15316795544483657470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330709 (2 * n + 1) ^ 2 - A330709 (2 * n)|

end

end A141662.P15316795544483657470

namespace A141662

/-- `abs(A330709(2*n+1)²-A330709(2*n))` -/
def P15316795544483657470.Spec : Prop :=
  ∀ n, P15316795544483657470.a n = A141662 n

end A141662

/-!
# A141663: Regular triangle T(n,m) = abs(prime(n) - m^2), 0 <= m <= n-1.

The programs for A141663, the canonical program `A141663.P1197266683244054430` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141663 has offset 1).

The definition of A141663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(A000040(row(n)+1)-col(n)²)` (program `A141663.P1197266683244054430`, by `A141663.P1197266683244054430.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141663.P1197266683244054430

`abs(A000040(row(n)+1)-col(n)²)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141663

/-- `abs(A000040(row(n)+1)-col(n)²)` -/
def P1197266683244054430.Spec : Prop :=
  ∀ n, P1197266683244054430.a n = A141663 (n + 1)

theorem P1197266683244054430.correct : P1197266683244054430.Spec := by
  intro n
  simp only [A141663, Nat.add_sub_cancel]

end A141663

/-! ## A141663.P11363212033042713252

`abs(A005145(n+1)-A143844(n))`
-/

namespace A141663.P11363212033042713252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005145 (n + 1) - A143844 n|

end

end A141663.P11363212033042713252

namespace A141663

/-- `abs(A005145(n+1)-A143844(n))` -/
def P11363212033042713252.Spec : Prop :=
  ∀ n, P11363212033042713252.a n = A141663 (n + 1)

theorem P11363212033042713252.correct : P11363212033042713252.Spec := by
  intro n
  simp only [A141663, Nat.add_sub_cancel, A141663.P11363212033042713252.a, A141663.P1197266683244054430.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005145, A005145.P7903299518883907964.a, A143844, A143844.P13341456288637914710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141663

/-! ## A141663.P1637337102375107408

`abs(A005145(n+1)-A002262(n)²)`
-/

namespace A141663.P1637337102375107408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005145 (n + 1) - A002262 n ^ 2|

end

end A141663.P1637337102375107408

namespace A141663

/-- `abs(A005145(n+1)-A002262(n)²)` -/
def P1637337102375107408.Spec : Prop :=
  ∀ n, P1637337102375107408.a n = A141663 (n + 1)

end A141663

/-! ## A141663.P10080674510583524961

`abs(A051599(A057944(n))-A143844(n))`
-/

namespace A141663.P10080674510583524961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051599 (A057944 n).toNat - A143844 n|

end

end A141663.P10080674510583524961

namespace A141663

/-- `abs(A051599(A057944(n))-A143844(n))` -/
def P10080674510583524961.Spec : Prop :=
  ∀ n, P10080674510583524961.a n = A141663 (n + 1)

end A141663

/-! ## A141663.P12762490829850135097

`abs(A109763(A131507(n))-A143844(n))`
-/

namespace A141663.P12762490829850135097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109763 (A131507 n).toNat - A143844 n|

end

end A141663.P12762490829850135097

namespace A141663

/-- `abs(A109763(A131507(n))-A143844(n))` -/
def P12762490829850135097.Spec : Prop :=
  ∀ n, P12762490829850135097.a n = A141663 (n + 1)

end A141663

/-! ## A141663.P1196883076862627191

`lcm(A000007(n)+1, A005145(n+1)-A143844(n))`
-/

namespace A141663.P1196883076862627191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000007 n + 1) (A005145 (n + 1) - A143844 n)

end

end A141663.P1196883076862627191

namespace A141663

/-- `lcm(A000007(n)+1, A005145(n+1)-A143844(n))` -/
def P1196883076862627191.Spec : Prop :=
  ∀ n, (P1196883076862627191.a n : ℤ) = A141663 (n + 1)

end A141663

/-! ## A141663.P6196346474972597984

`A004738((A005145(n+1)-A143844(n))²)`
-/

namespace A141663.P6196346474972597984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 ((A005145 (n + 1) - A143844 n) ^ 2).toNat

end

end A141663.P6196346474972597984

namespace A141663

/-- `A004738((A005145(n+1)-A143844(n))²)` -/
def P6196346474972597984.Spec : Prop :=
  ∀ n, P6196346474972597984.a n = A141663 (n + 1)

end A141663

/-!
# A141664: An irregular triangular sequence formed by partition-like complex polynomials.

The programs for A141664, there is no canonical definition to state claims against.
-/

/-! ## A141664.P5628950581250388323

`A316569(lt[A048993(n), A235492(3*n+2)])`
-/

namespace A141664.P5628950581250388323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235492 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A141664.P5628950581250388323

/-! ## A141664.P5798556696001165914

`A008683(2^n+A165776(n)-1)`
-/

namespace A141664.P5798556696001165914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((2 ^ n : ℤ) + (A165776 n - 1)).toNat

end

end A141664.P5798556696001165914

/-! ## A141664.P3426537412383327990

`A008683(A000225(n)+(floor(sqrt(n))+1)²+n)`
-/

namespace A141664.P3426537412383327990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000225 n + ((Nat.sqrt n + 1) ^ 2 + n : ℤ)).toNat

end

end A141664.P3426537412383327990

/-! ## A141664.P12187534729784472190

`A008683(A165776(n)+A000225(n))`
-/

namespace A141664.P12187534729784472190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A165776 n + A000225 n).toNat

end

end A141664.P12187534729784472190

/-! ## A141664.P17528134123556633850

`A008683(A000079(n)-(1-A165776(n)))`
-/

namespace A141664.P17528134123556633850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000079 n - (1 - A165776 n)).toNat

end

end A141664.P17528134123556633850

/-!
# A141665: A signed half of Pascal's triangle A007318: p(x,n) = (1+I*x)^n; t(n,m) = real part of coefficients(p(x,n)).

The programs for A141665, the canonical program `A141665.P1503714888046973662` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141665 has offset 0).

The definition of A141665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141665.P3291758458223662873

`2*T(n-1,k)-(T(row(n)-2, col(n)-2)+T(n-2,k))` with `a(0)=1, a(1)=1`
-/

namespace A141665.P3291758458223662873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * SequenceMachineLib.triUp a n - (SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUp2 a n)

end

end A141665.P3291758458223662873

namespace A141665

/-- `2*T(n-1,k)-(T(row(n)-2, col(n)-2)+T(n-2,k))` -/
def P3291758458223662873.Spec : Prop :=
  ∀ n, P3291758458223662873.a n = A141665 n

end A141665

/-! ## A141665.P5503192694021403489

`2*T(n-1,k)-T(n-2,k)-T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A141665.P5503192694021403489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A141665.P5503192694021403489

namespace A141665

/-- `2*T(n-1,k)-T(n-2,k)-T(row(n)-2, col(n)-2)` -/
def P5503192694021403489.Spec : Prop :=
  ∀ n, P5503192694021403489.a n = A141665 n

end A141665

/-! ## A141665.P8909918714665086200

`A007318(n)*A056594(col(n))`
-/

namespace A141665.P8909918714665086200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A056594 (SequenceMachineLib.triCol n)

end

end A141665.P8909918714665086200

namespace A141665

/-- `A007318(n)*A056594(col(n))` -/
def P8909918714665086200.Spec : Prop :=
  ∀ n, P8909918714665086200.a n = A141665 n

end A141665

/-! ## A141665.P1503714888046973662

`A007318(n)*A056594(A002262(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141665

/-- `A007318(n)*A056594(A002262(n))` -/
def P1503714888046973662.Spec : Prop :=
  ∀ n, P1503714888046973662.a n = A141665 n

theorem P1503714888046973662.correct : P1503714888046973662.Spec := by
  intro n
  simp only [A141665]

end A141665

/-! ## A141665.P12420823144379037892

`A056594(A002262(n))*A124845(n)`
-/

namespace A141665.P12420823144379037892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A002262 n).toNat * A124845 n

end

end A141665.P12420823144379037892

namespace A141665

/-- `A056594(A002262(n))*A124845(n)` -/
def P12420823144379037892.Spec : Prop :=
  ∀ n, P12420823144379037892.a n = A141665 n

end A141665

/-! ## A141665.P11804045735633880042

`A066325(A061579(n))%A028326(n)`
-/

namespace A141665.P11804045735633880042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066325 (A061579 n).toNat) (A028326 n)

end

end A141665.P11804045735633880042

namespace A141665

/-- `A066325(A061579(n))%A028326(n)` -/
def P11804045735633880042.Spec : Prop :=
  ∀ n, P11804045735633880042.a n = A141665 n

end A141665

/-! ## A141665.P2729418116607594037

`A007318(n)*A056594(log2(A059268(n)))`
-/

namespace A141665.P2729418116607594037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A056594 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A141665.P2729418116607594037

namespace A141665

/-- `A007318(n)*A056594(log2(A059268(n)))` -/
def P2729418116607594037.Spec : Prop :=
  ∀ n, P2729418116607594037.a n = A141665 n

end A141665

/-! ## A141665.P1288986339047391216

`A056594(A002262(n))*A130595(A061579(n))`
-/

namespace A141665.P1288986339047391216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A002262 n).toNat * A130595 (A061579 n).toNat

end

end A141665.P1288986339047391216

namespace A141665

/-- `A056594(A002262(n))*A130595(A061579(n))` -/
def P1288986339047391216.Spec : Prop :=
  ∀ n, P1288986339047391216.a n = A141665 n

end A141665

/-! ## A141665.P10194144589305427804

`A081658(n)%A028326(n)`
-/

namespace A141665.P10194144589305427804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081658 n) (A028326 n)

end

end A141665.P10194144589305427804

namespace A141665

/-- `A081658(n)%A028326(n)` -/
def P10194144589305427804.Spec : Prop :=
  ∀ n, P10194144589305427804.a n = A141665 n

end A141665

/-! ## A141665.P9364855268862576825

`A117435(A061579(n))/A059268(n)`
-/

namespace A141665.P9364855268862576825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117435 (A061579 n).toNat : ℚ) / (A059268 n : ℚ)

end

end A141665.P9364855268862576825

namespace A141665

/-- `A117435(A061579(n))/A059268(n)` -/
def P9364855268862576825.Spec : Prop :=
  ∀ n, P9364855268862576825.a n = (A141665 n : ℚ)

end A141665

/-! ## A141665.P7338778329299704171

`A007318(n)/A060187(n+1)*A143196(n)`
-/

namespace A141665.P7338778329299704171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A060187 (n + 1) : ℚ) * (A143196 n : ℚ)

end

end A141665.P7338778329299704171

namespace A141665

/-- `A007318(n)/A060187(n+1)*A143196(n)` -/
def P7338778329299704171.Spec : Prop :=
  ∀ n, P7338778329299704171.a n = (A141665 n : ℚ)

end A141665

/-! ## A141665.P2540687354137457568

`A007318(n)*A030201(A059268(n))`
-/

namespace A141665.P2540687354137457568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A030201 (A059268 n).toNat

end

end A141665.P2540687354137457568

namespace A141665

/-- `A007318(n)*A030201(A059268(n))` -/
def P2540687354137457568.Spec : Prop :=
  ∀ n, P2540687354137457568.a n = A141665 n

end A141665

/-! ## A141665.P12969492032268311752

`Δ[A102363(n)]*A131851(A059268(n))`
-/

namespace A141665.P12969492032268311752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A131851 (A059268 n).toNat

end

end A141665.P12969492032268311752

namespace A141665

/-- `Δ[A102363(n)]*A131851(A059268(n))` -/
def P12969492032268311752.Spec : Prop :=
  ∀ n, P12969492032268311752.a n = A141665 n

end A141665

/-! ## A141665.P17310887029849122397

`A007318(n)*A164658(A112367(n))`
-/

namespace A141665.P17310887029849122397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A164658 (A112367 n).toNat

end

end A141665.P17310887029849122397

namespace A141665

/-- `A007318(n)*A164658(A112367(n))` -/
def P17310887029849122397.Spec : Prop :=
  ∀ n, P17310887029849122397.a n = A141665 n

end A141665

/-!
# A141666: A symmetrical triangle of coefficients based on A004018 (or number of ways of writing n as a sum of 2 squares): t(n,m) = r2(n-m+1)*r2(m+1).

The programs for A141666, there is no canonical definition to state claims against.
-/

/-! ## A141666.P2847181132033744188

`A004018(A002262(n))*A004018(A025581(n))`
-/

namespace A141666.P2847181132033744188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A002262 n).toNat * A004018 (A025581 n).toNat

end

end A141666.P2847181132033744188

/-! ## A141666.P14635699419096194397

`A004018(A103822(n))*A004018(A103823(n))`
-/

namespace A141666.P14635699419096194397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A103822 n).toNat * A004018 (A103823 n).toNat

end

end A141666.P14635699419096194397

/-! ## A141666.P12950496381201519572

`∏{e}[A036561(n), A004018(#)]`
-/

namespace A141666.P12950496381201519572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004018 (Nat.factorization (f1 n).natAbs p)

end

end A141666.P12950496381201519572

/-! ## A141666.P13904727002141519297

`∏{e}[A175840(A114327(n)+n), A004018(#)]`
-/

namespace A141666.P13904727002141519297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 (A114327 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004018 (Nat.factorization (f1 n).natAbs p)

end

end A141666.P13904727002141519297

/-! ## A141666.P9496557301135526657

`∏{e}[A175840(n), A004018(#)]`
-/

namespace A141666.P9496557301135526657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004018 (Nat.factorization (f1 n).natAbs p)

end

end A141666.P9496557301135526657

/-! ## A141666.P8808845710983401374

`∏{e}[A175840(n), A004531(A008598(#))]`
-/

namespace A141666.P8808845710983401374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004531 (A008598 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A141666.P8808845710983401374

/-!
# A141667: Number of partitions of n times number of divisors of n.

The programs for A141667, there is no canonical definition to state claims against.
-/

/-! ## A141667.P3047877244969163860

`A000041(n+1)*A000005(n+1)`
-/

namespace A141667.P3047877244969163860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * A000005 (n + 1)

end

end A141667.P3047877244969163860

/-! ## A141667.P3671850566455221306

`∑{d}[n+1, A000041(lcm(#, n+1))]`
-/

namespace A141667.P3671850566455221306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 (Nat.lcm d (n + 1))

end

end A141667.P3671850566455221306

/-! ## A141667.P4291920522980534965

`A000041(n+1)*Δ[A006218(n)]`
-/

namespace A141667.P4291920522980534965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * (f1 (n + 1) - f1 n)

end

end A141667.P4291920522980534965

/-! ## A141667.P100815679864440390

`A000041(n+1)*Δ[A054519(n)]`
-/

namespace A141667.P100815679864440390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * (f1 (n + 1) - f1 n)

end

end A141667.P100815679864440390

/-! ## A141667.P2576872930658983517

`A141668(n+1)+A000005(n+1)`
-/

namespace A141667.P2576872930658983517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141668 (n + 1) + A000005 (n + 1)

end

end A141667.P2576872930658983517

/-! ## A141667.P15420828898516333956

`A141670(n+1)+A000041(n+1)`
-/

namespace A141667.P15420828898516333956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141670 (n + 1) + A000041 (n + 1)

end

end A141667.P15420828898516333956

/-! ## A141667.P15355176922537214128

`A000005(n+1)*A000041(n+1)`
-/

namespace A141667.P15355176922537214128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000041 (n + 1)

end

end A141667.P15355176922537214128

/-! ## A141667.P18150532574817097337

`(A032741(n+1)+1)*A000041(n+1)`
-/

namespace A141667.P18150532574817097337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A000041 (n + 1)

end

end A141667.P18150532574817097337

/-! ## A141667.P346718371352173369

`A000041(n+1)*∑{d}[n+1, A057427(#)]`
-/

namespace A141667.P346718371352173369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * (∑ d ∈ Nat.divisors (f1 n), A057427 d)

end

end A141667.P346718371352173369

/-! ## A141667.P12097480330397559695

`A038040(n+1)/(n+1)*A000041(n+1)`
-/

namespace A141667.P12097480330397559695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000041 (n + 1) : ℚ)

end

end A141667.P12097480330397559695

/-! ## A141667.P14211388020562087240

`(A006218(n+1)-A006218(n))*A000041(n+1)`
-/

namespace A141667.P14211388020562087240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) - A006218 n) * A000041 (n + 1)

end

end A141667.P14211388020562087240

/-! ## A141667.P1938612826983431192

`A060632(n+1)+A141670(n+1)+A060643(n+1)`
-/

namespace A141667.P1938612826983431192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (n + 1) + (A141670 (n + 1) + A060643 (n + 1))

end

end A141667.P1938612826983431192

/-! ## A141667.P3505760459919335239

`A001227(n+1)+A282467(n+1)+A141670(n+1)`
-/

namespace A141667.P3505760459919335239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A282467 (n + 1) + A141670 (n + 1))

end

end A141667.P3505760459919335239

/-! ## A141667.P8196437840898972147

`A000005(n+1)+A000005(n+1)*A000065(n+1)`
-/

namespace A141667.P8196437840898972147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000005 (n + 1) * A000065 (n + 1)

end

end A141667.P8196437840898972147

/-! ## A141667.P661692283848826467

`(A018783(n+1)+A000837(n+1))*A000005(n+1)`
-/

namespace A141667.P661692283848826467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018783 (n + 1) + A000837 (n + 1)) * A000005 (n + 1)

end

end A141667.P661692283848826467

/-! ## A141667.P10381900736397880

`(A086739(n+1)+A000010(n+1))*A000005(n+1)`
-/

namespace A141667.P10381900736397880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086739 (n + 1) + A000010 (n + 1)) * A000005 (n + 1)

end

end A141667.P10381900736397880

/-! ## A141667.P10667796989102043138

`(A144300(n+1)+A000005(n+1))*A000005(n+1)`
-/

namespace A141667.P10667796989102043138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144300 (n + 1) + A000005 (n + 1)) * A000005 (n + 1)

end

end A141667.P10667796989102043138

/-! ## A141667.P1350974703691473559

`(A183151(n+1)+A000720(n+1))*A000005(n+1)`
-/

namespace A141667.P1350974703691473559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183151 (n + 1) + A000720 (n + 1)) * A000005 (n + 1)

end

end A141667.P1350974703691473559

/-! ## A141667.P13307193242796623136

`(A000041(n+1)-A144300(n+1))*A000041(n+1)`
-/

namespace A141667.P13307193242796623136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) - A144300 (n + 1)) * A000041 (n + 1)

end

end A141667.P13307193242796623136

/-! ## A141667.P8601249105948763123

`(A195364(n+1)-A000005(n+1))*A000005(n+1)`
-/

namespace A141667.P8601249105948763123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A195364 (n + 1) - A000005 (n + 1)) * A000005 (n + 1)

end

end A141667.P8601249105948763123

/-!
# A141668: a(n) = tau(n) * (NumberOfPartitions(n) - 1).

The programs for A141668, there is no canonical definition to state claims against.
-/

/-! ## A141668.P9750729741872859793

`∑{d}[n, A000041(lcm(n, #))-1]`
-/

namespace A141668.P9750729741872859793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000041 (Nat.lcm n d) - 1)

end

end A141668.P9750729741872859793

/-! ## A141668.P6475320533906219332

`∑{d}[n, A000065(n-n%#)]`
-/

namespace A141668.P6475320533906219332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000065 (n - n % d)

end

end A141668.P6475320533906219332

/-! ## A141668.P2509409743129210084

`(A000041(n)-1)*∏{e}[n, #+1]`
-/

namespace A141668.P2509409743129210084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - 1) * ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A141668.P2509409743129210084

/-! ## A141668.P4861529423650641431

`(A032741(n)+1)*A000065(n)`
-/

namespace A141668.P4861529423650641431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 n + 1) * A000065 n

end

end A141668.P4861529423650641431

/-! ## A141668.P1692296193965796981

`∑{d}[n, A000041(n)-A057427(#)]`
-/

namespace A141668.P1692296193965796981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000041 n - A057427 d)

end

end A141668.P1692296193965796981

/-! ## A141668.P17439654041852783880

`A000005(A028310(n))*A000065(n)`
-/

namespace A141668.P17439654041852783880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat * A000065 n

end

end A141668.P17439654041852783880

/-! ## A141668.P8336332669825631616

`(A167932(n)-A111133(n))*A000065(n)`
-/

namespace A141668.P8336332669825631616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167932 n - A111133 n) * A000065 n

end

end A141668.P8336332669825631616

/-! ## A141668.P6375269197961319951

`∑{d}[n, A000041(n)-A003415(A000040(#))]`
-/

namespace A141668.P6375269197961319951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000041 n - A003415 (A000040 d).toNat)

end

end A141668.P6375269197961319951

/-! ## A141668.P12450289530085281365

`(A000041(n)-1)*A194621(A000217(n))`
-/

namespace A141668.P12450289530085281365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - 1) * A194621 (A000217 n).toNat

end

end A141668.P12450289530085281365

/-! ## A141668.P545540974591532930

`(A000041(n)-1)*A218698(A000096(n))`
-/

namespace A141668.P545540974591532930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - 1) * A218698 (A000096 n).toNat

end

end A141668.P545540974591532930

/-!
# A141669: Select all integers from the list (p(k)-k)/tau(k), k>=1; p = A000041, tau = A000005.

The programs for A141669, there is no canonical definition to state claims against.
-/

/-! ## A141669.P4179340302738113480

`A123578(A160750(n)%A121392(n))`
-/

namespace A141669.P4179340302738113480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.tmod (A160750 n) (A121392 n)).toNat

end

end A141669.P4179340302738113480

/-! ## A141669.P2639590735918918429

`A101128(n+1)%A033273(A061602(n))`
-/

namespace A141669.P2639590735918918429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101128 (n + 1)) (A033273 (A061602 n).toNat)

end

end A141669.P2639590735918918429

/-!
# A141670: a(n) = NumberOfPartitions(n) * ( tau(n)-1 ).

The programs for A141670, there is no canonical definition to state claims against.
-/

/-! ## A141670.P3045030265719646514

`A000041(n+1)*A032741(n+1)`
-/

namespace A141670.P3045030265719646514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * A032741 (n + 1)

end

end A141670.P3045030265719646514

/-! ## A141670.P2328489124492423373

`A000041(n+1)*(A000005(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141670.P2328489124492423373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * (A000005 (n + 1) - 1)

end

end A141670.P2328489124492423373

/-! ## A141670.P15580003007037118771

`A141667(n+1)-A000041(n+1)`
-/

namespace A141670.P15580003007037118771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141667 (n + 1) - A000041 (n + 1)

end

end A141670.P15580003007037118771

/-! ## A141670.P13913821397046042228

`(A000065(n+1)+1)*A032741(n+1)`
-/

namespace A141670.P13913821397046042228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 (n + 1) + 1) * A032741 (n + 1)

end

end A141670.P13913821397046042228

/-! ## A141670.P17156230095233898326

`(A000005(n+1)-1)*A000041(n+1)`
-/

namespace A141670.P17156230095233898326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - 1) * A000041 (n + 1)

end

end A141670.P17156230095233898326

/-! ## A141670.P15368668200212290908

`A032741(n+1)/2*A139582(n+1)`
-/

namespace A141670.P15368668200212290908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) : ℚ) / 2 * (A139582 (n + 1) : ℚ)

end

end A141670.P15368668200212290908

/-! ## A141670.P14591595669775598461

`A000041(n+1)*A059169(A145154(n+1))`
-/

namespace A141670.P14591595669775598461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * A059169 (A145154 (n + 1)).toNat

end

end A141670.P14591595669775598461

/-! ## A141670.P14188369368712357783

`A000005(n+1)+A141668(n+1)-A000041(n+1)`
-/

namespace A141670.P14188369368712357783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A141668 (n + 1) - A000041 (n + 1))

end

end A141670.P14188369368712357783

/-! ## A141670.P1239374786204589301

`A141667(n+1)-(A086738(n+1)+A000203(n+1))`
-/

namespace A141670.P1239374786204589301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141667 (n + 1) - (A086738 (n + 1) + A000203 (n + 1))

end

end A141670.P1239374786204589301

/-! ## A141670.P2793938749783609543

`A141667(n+1)-(A060643(n+1)+A060632(n+1))`
-/

namespace A141670.P2793938749783609543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141667 (n + 1) - (A060643 (n + 1) + A060632 (n + 1))

end

end A141670.P2793938749783609543

/-! ## A141670.P17101493501481729922

`A141667(n+1)-(A144300(n+1)+A000005(n+1))`
-/

namespace A141670.P17101493501481729922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141667 (n + 1) - (A144300 (n + 1) + A000005 (n + 1))

end

end A141670.P17101493501481729922

/-! ## A141670.P9610527899343413316

`A000005(n+1)+A141667(n+1)-A195364(n+1)`
-/

namespace A141670.P9610527899343413316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A141667 (n + 1) - A195364 (n + 1))

end

end A141670.P9610527899343413316

/-! ## A141670.P14990367189153285128

`A141667(n+1)-(A282467(n+1)+A001227(n+1))`
-/

namespace A141670.P14990367189153285128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141667 (n + 1) - (A282467 (n + 1) + A001227 (n + 1))

end

end A141670.P14990367189153285128

/-! ## A141670.P12698543652415091716

`(A047967(n+1)+A000009(n+1))*A032741(n+1)`
-/

namespace A141670.P12698543652415091716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047967 (n + 1) + A000009 (n + 1)) * A032741 (n + 1)

end

end A141670.P12698543652415091716

/-! ## A141670.P15821960394275890974

`(A167934(n+1)+A032741(n+1))*A032741(n+1)`
-/

namespace A141670.P15821960394275890974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167934 (n + 1) + A032741 (n + 1)) * A032741 (n + 1)

end

end A141670.P15821960394275890974

/-! ## A141670.P5337234931587309349

`(A167932(n+1)+A167930(n+1))*A032741(n+1)`
-/

namespace A141670.P5337234931587309349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167932 (n + 1) + A167930 (n + 1)) * A032741 (n + 1)

end

end A141670.P5337234931587309349

/-! ## A141670.P4485136706633409104

`(A004526(n+1)-A003165(n+1))*A000041(n+1)`
-/

namespace A141670.P4485136706633409104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 (n + 1) - A003165 (n + 1)) * A000041 (n + 1)

end

end A141670.P4485136706633409104

/-! ## A141670.P14237259713642981588

`(A073757(n+1)-A000010(n+1))*A000041(n+1)`
-/

namespace A141670.P14237259713642981588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073757 (n + 1) - A000010 (n + 1)) * A000041 (n + 1)

end

end A141670.P14237259713642981588

/-! ## A141670.P13850951627930732302

`(A051953(n+1)-A045763(n+1))*A000041(n+1)`
-/

namespace A141670.P13850951627930732302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) - A045763 (n + 1)) * A000041 (n + 1)

end

end A141670.P13850951627930732302

/-! ## A141670.P10190913205027485567

`(A086898(n+1)-A049822(n+1))*A000041(n+1)`
-/

namespace A141670.P10190913205027485567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086898 (n + 1) - A049822 (n + 1)) * A000041 (n + 1)

end

end A141670.P10190913205027485567

/-!
# A141671: Triangle T(n, k) = n/k if n mod k = 0, otherwise T(n, k) = 0, with T(n, 0) = n+1, read by rows.

The programs for A141671, the canonical program `A141671.P16866868866156929720` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141671 has offset 0).

The definition of A141671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141671.P16866868866156929720

`A126988(A103516(n)+A083920(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141671

/-- `A126988(A103516(n)+A083920(n))` -/
def P16866868866156929720.Spec : Prop :=
  ∀ n, P16866868866156929720.a n = A141671 n

theorem P16866868866156929720.correct : P16866868866156929720.Spec := by
  intro n
  simp only [A141671]

end A141671

/-! ## A141671.P13506061792839691070

`A126988(A066182(n+1)-A003056(n))`
-/

namespace A141671.P13506061792839691070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A066182 (n + 1) - A003056 n).toNat

end

end A141671.P13506061792839691070

namespace A141671

/-- `A126988(A066182(n+1)-A003056(n))` -/
def P13506061792839691070.Spec : Prop :=
  ∀ n, P13506061792839691070.a n = A141671 n

end A141671

/-! ## A141671.P17652183903550010363

`gcd(A103516(n), A386790(n))`
-/

namespace A141671.P17652183903550010363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103516 n) (A386790 n)

end

end A141671.P17652183903550010363

namespace A141671

/-- `gcd(A103516(n), A386790(n))` -/
def P17652183903550010363.Spec : Prop :=
  ∀ n, (P17652183903550010363.a n : ℤ) = A141671 n

end A141671

/-! ## A141671.P1852859565591799059

`A386790(n)+A113704(n+1)*A126988(n+1)`
-/

namespace A141671.P1852859565591799059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386790 n + A113704 (n + 1) * A126988 (n + 1)

end

end A141671.P1852859565591799059

namespace A141671

/-- `A386790(n)+A113704(n+1)*A126988(n+1)` -/
def P1852859565591799059.Spec : Prop :=
  ∀ n, P1852859565591799059.a n = A141671 n

end A141671

/-! ## A141671.P16351815420453171849

`and(A004736(n+1), A014311(A156953(n)))`
-/

namespace A141671.P16351815420453171849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004736 (n + 1)) (A014311 (A156953 n).toNat)

end

end A141671.P16351815420453171849

namespace A141671

/-- `and(A004736(n+1), A014311(A156953(n)))` -/
def P16351815420453171849.Spec : Prop :=
  ∀ n, P16351815420453171849.a n = A141671 n

end A141671

/-!
# A141673: Triangle T(n,m) read by rows: T(n,1) = n; T(n,m) = A008683(n)*n/m if m is a divisor of n, where m = 2..n, otherwise T(n,m) = 0.

The programs for A141673, there is no canonical definition to state claims against.
-/

/-! ## A141673.P7604920245426231172

`A141672(A080036(n))-A010054(n)`
-/

namespace A141673.P7604920245426231172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141672 (A080036 n).toNat - A010054 n

end

end A141673.P7604920245426231172

/-! ## A141673.P8273809263631364465

`A141672(A080036(n))-Δ[A123578(n)]`
-/

namespace A141673.P8273809263631364465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141672 (A080036 n).toNat - (f1 (n + 1) - f1 n)

end

end A141673.P8273809263631364465

/-! ## A141673.P3510064346542989875

`A141672(A080036(n))-char[A000217(n)]`
-/

namespace A141673.P3510064346542989875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141672 (A080036 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A141673.P3510064346542989875

/-! ## A141673.P10087980143129654098

`A141672(A080036(n))-char[A057944(n)]`
-/

namespace A141673.P10087980143129654098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141672 (A080036 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A141673.P10087980143129654098

/-! ## A141673.P2256949924275468975

`A141672(A080036(n))-A000007(A002262(n))`
-/

namespace A141673.P2256949924275468975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141672 (A080036 n).toNat - A000007 (A002262 n).toNat

end

end A141673.P2256949924275468975

/-!
# A141674: Triangle T(n,m) read by rows: T(n,m) = sigma_0(n) * A126988(n,m).

The programs for A141674, the canonical program `A141674.P14837374436825239815` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141674 has offset 1).

The definition of A141674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141674.P14837374436825239815

`A000005(row(n)+1)*A126988(C(row(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141674

/-- `A000005(row(n)+1)*A126988(C(row(n)+1, 2)+col(n)+1)` -/
def P14837374436825239815.Spec : Prop :=
  ∀ n, P14837374436825239815.a n = A141674 (n + 1)

theorem P14837374436825239815.correct : P14837374436825239815.Spec := by
  intro n
  simp only [A141674, Nat.add_sub_cancel]

end A141674

/-! ## A141674.P17746113546030733379

`A010766(n+1)*A130277(n+1)`
-/

namespace A141674.P17746113546030733379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A130277 (n + 1)

end

end A141674.P17746113546030733379

namespace A141674

/-- `A010766(n+1)*A130277(n+1)` -/
def P17746113546030733379.Spec : Prop :=
  ∀ n, P17746113546030733379.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P2305226190823847613

`A049834(n+1)*A130277(n+1)`
-/

namespace A141674.P2305226190823847613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A130277 (n + 1)

end

end A141674.P2305226190823847613

namespace A141674

/-- `A049834(n+1)*A130277(n+1)` -/
def P2305226190823847613.Spec : Prop :=
  ∀ n, P2305226190823847613.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P783105453305053477

`A051537(n+1)*A130277(n+1)`
-/

namespace A141674.P783105453305053477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A130277 (n + 1)

end

end A141674.P783105453305053477

namespace A141674

/-- `A051537(n+1)*A130277(n+1)` -/
def P783105453305053477.Spec : Prop :=
  ∀ n, P783105453305053477.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P15310300171214917091

`A054531(n+1)*A130277(n+1)`
-/

namespace A141674.P15310300171214917091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A130277 (n + 1)

end

end A141674.P15310300171214917091

namespace A141674

/-- `A054531(n+1)*A130277(n+1)` -/
def P15310300171214917091.Spec : Prop :=
  ∀ n, P15310300171214917091.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P17580571587311806729

`A059026(n+1)*A130277(n+1)`
-/

namespace A141674.P17580571587311806729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A130277 (n + 1)

end

end A141674.P17580571587311806729

namespace A141674

/-- `A059026(n+1)*A130277(n+1)` -/
def P17580571587311806729.Spec : Prop :=
  ∀ n, P17580571587311806729.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P11065588570554725040

`A126988(n+1)*A130277(n+1)`
-/

namespace A141674.P11065588570554725040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A130277 (n + 1)

end

end A141674.P11065588570554725040

namespace A141674

/-- `A126988(n+1)*A130277(n+1)` -/
def P11065588570554725040.Spec : Prop :=
  ∀ n, P11065588570554725040.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P13084619512418979517

`A130277(n+1)*A219158(n+1)`
-/

namespace A141674.P13084619512418979517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130277 (n + 1) * A219158 (n + 1)

end

end A141674.P13084619512418979517

namespace A141674

/-- `A130277(n+1)*A219158(n+1)` -/
def P13084619512418979517.Spec : Prop :=
  ∀ n, P13084619512418979517.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P13480492099609566100

`A130277(n+1)*A234575(n+1)`
-/

namespace A141674.P13480492099609566100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130277 (n + 1) * A234575 (n + 1)

end

end A141674.P13480492099609566100

namespace A141674

/-- `A130277(n+1)*A234575(n+1)` -/
def P13480492099609566100.Spec : Prop :=
  ∀ n, P13480492099609566100.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P2037391687655894385

`A130277(n+1)*A372523(n+1)`
-/

namespace A141674.P2037391687655894385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130277 (n + 1) * A372523 (n + 1)

end

end A141674.P2037391687655894385

namespace A141674

/-- `A130277(n+1)*A372523(n+1)` -/
def P2037391687655894385.Spec : Prop :=
  ∀ n, P2037391687655894385.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P6920368319490395348

`A000005(∑[A010054(n)])*A126988(n+1)`
-/

namespace A141674.P6920368319490395348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A126988 (n + 1)

end

end A141674.P6920368319490395348

namespace A141674

/-- `A000005(∑[A010054(n)])*A126988(n+1)` -/
def P6920368319490395348.Spec : Prop :=
  ∀ n, P6920368319490395348.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P5995595997889947870

`A000005(A002024(n+1))*A126988(n+1)`
-/

namespace A141674.P5995595997889947870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002024 (n + 1)).toNat * A126988 (n + 1)

end

end A141674.P5995595997889947870

namespace A141674

/-- `A000005(A002024(n+1))*A126988(n+1)` -/
def P5995595997889947870.Spec : Prop :=
  ∀ n, P5995595997889947870.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P1750989656729798305

`A000005(A049840(n+1))*A126988(n+1)`
-/

namespace A141674.P1750989656729798305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049840 (n + 1)).toNat * A126988 (n + 1)

end

end A141674.P1750989656729798305

namespace A141674

/-- `A000005(A049840(n+1))*A126988(n+1)` -/
def P1750989656729798305.Spec : Prop :=
  ∀ n, P1750989656729798305.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P5055351790338779994

`A000005(A051173(n+1))*A126988(n+1)`
-/

namespace A141674.P5055351790338779994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051173 (n + 1)).toNat * A126988 (n + 1)

end

end A141674.P5055351790338779994

namespace A141674

/-- `A000005(A051173(n+1))*A126988(n+1)` -/
def P5055351790338779994.Spec : Prop :=
  ∀ n, P5055351790338779994.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P8813684388191952797

`A000005(A074712(n+1))*A126988(n+1)`
-/

namespace A141674.P8813684388191952797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A074712 (n + 1)).toNat * A126988 (n + 1)

end

end A141674.P8813684388191952797

namespace A141674

/-- `A000005(A074712(n+1))*A126988(n+1)` -/
def P8813684388191952797.Spec : Prop :=
  ∀ n, P8813684388191952797.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P6416728974458460129

`A000005(A123229(n+1))*A126988(n+1)`
-/

namespace A141674.P6416728974458460129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123229 (n + 1)).toNat * A126988 (n + 1)

end

end A141674.P6416728974458460129

namespace A141674

/-- `A000005(A123229(n+1))*A126988(n+1)` -/
def P6416728974458460129.Spec : Prop :=
  ∀ n, P6416728974458460129.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P14188336613047396989

`A010766(n+1)*A051731(n+1)*A000005(A049840(n+1))`
-/

namespace A141674.P14188336613047396989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A051731 (n + 1) * A000005 (A049840 (n + 1)).toNat

end

end A141674.P14188336613047396989

namespace A141674

/-- `A010766(n+1)*A051731(n+1)*A000005(A049840(n+1))` -/
def P14188336613047396989.Spec : Prop :=
  ∀ n, P14188336613047396989.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P8073514199939441975

`A049834(n+1)*A051731(n+1)*A000005(A049840(n+1))`
-/

namespace A141674.P8073514199939441975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A051731 (n + 1) * A000005 (A049840 (n + 1)).toNat

end

end A141674.P8073514199939441975

namespace A141674

/-- `A049834(n+1)*A051731(n+1)*A000005(A049840(n+1))` -/
def P8073514199939441975.Spec : Prop :=
  ∀ n, P8073514199939441975.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P560168875476442406

`A051731(n+1)*A059026(n+1)*A000005(A049840(n+1))`
-/

namespace A141674.P560168875476442406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A059026 (n + 1) * A000005 (A049840 (n + 1)).toNat

end

end A141674.P560168875476442406

namespace A141674

/-- `A051731(n+1)*A059026(n+1)*A000005(A049840(n+1))` -/
def P560168875476442406.Spec : Prop :=
  ∀ n, P560168875476442406.a n = A141674 (n + 1)

end A141674

/-! ## A141674.P16506289628577243286

`A000005(A000194(2*(n+1)))*A126988(n+1)`
-/

namespace A141674.P16506289628577243286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000194 (2 * (n + 1))).toNat * A126988 (n + 1)

end

end A141674.P16506289628577243286

namespace A141674

/-- `A000005(A000194(2*(n+1)))*A126988(n+1)` -/
def P16506289628577243286.Spec : Prop :=
  ∀ n, P16506289628577243286.a n = A141674 (n + 1)

end A141674

/-!
# A141675: Triangle, T(n, k) = n*(n-k+1)/(k+1) if n mod k+1 = 0, otherwise T(n, k) = n-k+1, read by rows.

The programs for A141675, there is no canonical definition to state claims against.
-/

/-! ## A141675.P8826738731430025660

`A004736(n+1)*A334540(A323954(n+1))`
-/

namespace A141675.P8826738731430025660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A334540 (A323954 (n + 1)).toNat

end

end A141675.P8826738731430025660

/-! ## A141675.P7899421852402182787

`(A025581(n)+1)*A334540(A323954(n+1))`
-/

namespace A141675.P7899421852402182787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A334540 (A323954 (n + 1)).toNat

end

end A141675.P7899421852402182787

/-! ## A141675.P1518950687886588252

`A008619(A099375(n))*A334540(A323954(n+1))`
-/

namespace A141675.P1518950687886588252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A099375 n).toNat * A334540 (A323954 (n + 1)).toNat

end

end A141675.P1518950687886588252

/-! ## A141675.P11292013304585263288

`A000005(A130321(n))*A334540(A323954(n+1))`
-/

namespace A141675.P11292013304585263288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A334540 (A323954 (n + 1)).toNat

end

end A141675.P11292013304585263288

/-! ## A141675.P893754050959244967

`A004736(n+1)*A340654(A336139(n))`
-/

namespace A141675.P893754050959244967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A340654 (A336139 n).toNat

end

end A141675.P893754050959244967

/-!
# A141677: Number of divisors of n times the number of primes <= n.

The programs for A141677, the canonical program `A141677.P12769491184657216177` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141677 has offset 1).

The definition of A141677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141677.P12769491184657216177

`A000005(n+1)*A000720(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141677

/-- `A000005(n+1)*A000720(n+1)` -/
def P12769491184657216177.Spec : Prop :=
  ∀ n, P12769491184657216177.a n = A141677 (n + 1)

theorem P12769491184657216177.correct : P12769491184657216177.Spec := by
  intro n
  simp only [A141677, Nat.add_sub_cancel]

end A141677

/-! ## A141677.P14642418897832968619

`∏{e}[n+1, #+1]*A000720(n+1)`
-/

namespace A141677.P14642418897832968619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A000720 (n + 1)

end

end A141677.P14642418897832968619

namespace A141677

/-- `∏{e}[n+1, #+1]*A000720(n+1)` -/
def P14642418897832968619.Spec : Prop :=
  ∀ n, P14642418897832968619.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P16085569434726225241

`∑[A010051(n+1)]*∏{e}[n+1, #+1]`
-/

namespace A141677.P16085569434726225241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A141677.P16085569434726225241

namespace A141677

/-- `∑[A010051(n+1)]*∏{e}[n+1, #+1]` -/
def P16085569434726225241.Spec : Prop :=
  ∀ n, P16085569434726225241.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P10461915416171437569

`∑[∑{p}[n+1, C(#, n+1)]]*A000005(n+1)`
-/

namespace A141677.P10461915416171437569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000005 (n + 1)

end

end A141677.P10461915416171437569

namespace A141677

/-- `∑[∑{p}[n+1, C(#, n+1)]]*A000005(n+1)` -/
def P10461915416171437569.Spec : Prop :=
  ∀ n, P10461915416171437569.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P6613657479044503068

`∑[char[A020639(n+2)-1]]*∏{e}[n+1, #+1]`
-/

namespace A141677.P6613657479044503068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

end

end A141677.P6613657479044503068

namespace A141677

/-- `∑[char[A020639(n+2)-1]]*∏{e}[n+1, #+1]` -/
def P6613657479044503068.Spec : Prop :=
  ∀ n, (P6613657479044503068.a n : ℤ) = A141677 (n + 1)

end A141677

/-! ## A141677.P17716192043258845656

`Δ[A006218(n)]*A000720(n+1)`
-/

namespace A141677.P17716192043258845656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000720 (n + 1)

end

end A141677.P17716192043258845656

namespace A141677

/-- `Δ[A006218(n)]*A000720(n+1)` -/
def P17716192043258845656.Spec : Prop :=
  ∀ n, P17716192043258845656.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P17325105732757537886

`Δ[A054519(n)]*A000720(n+1)`
-/

namespace A141677.P17325105732757537886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000720 (n + 1)

end

end A141677.P17325105732757537886

namespace A141677

/-- `Δ[A054519(n)]*A000720(n+1)` -/
def P17325105732757537886.Spec : Prop :=
  ∀ n, P17325105732757537886.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P17791269317450024805

`∑[A010051(n+1)]*Δ[A006218(n)]`
-/

namespace A141677.P17791269317450024805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A141677.P17791269317450024805

namespace A141677

/-- `∑[A010051(n+1)]*Δ[A006218(n)]` -/
def P17791269317450024805.Spec : Prop :=
  ∀ n, P17791269317450024805.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P8092195861006850379

`∑[A010051(n+1)]*Δ[A054519(n)]`
-/

namespace A141677.P8092195861006850379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A141677.P8092195861006850379

namespace A141677

/-- `∑[A010051(n+1)]*Δ[A054519(n)]` -/
def P8092195861006850379.Spec : Prop :=
  ∀ n, P8092195861006850379.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P5761724572108230352

`A000005(n+1)*∑[A010051(n+1)]`
-/

namespace A141677.P5761724572108230352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141677.P5761724572108230352

namespace A141677

/-- `A000005(n+1)*∑[A010051(n+1)]` -/
def P5761724572108230352.Spec : Prop :=
  ∀ n, P5761724572108230352.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P5503586364417632873

`(A032741(n+1)+1)*A000720(n+1)`
-/

namespace A141677.P5503586364417632873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A000720 (n + 1)

end

end A141677.P5503586364417632873

namespace A141677

/-- `(A032741(n+1)+1)*A000720(n+1)` -/
def P5503586364417632873.Spec : Prop :=
  ∀ n, P5503586364417632873.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P10251863165855745141

`(A036234(n+1)-1)*A000005(n+1)`
-/

namespace A141677.P10251863165855745141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036234 (n + 1) - 1) * A000005 (n + 1)

end

end A141677.P10251863165855745141

namespace A141677

/-- `(A036234(n+1)-1)*A000005(n+1)` -/
def P10251863165855745141.Spec : Prop :=
  ∀ n, P10251863165855745141.a n = A141677 (n + 1)

theorem P10251863165855745141.correct : P10251863165855745141.Spec := by
  intro n
  simp only [A141677, Nat.add_sub_cancel, A141677.P10251863165855745141.a, A141677.P12769491184657216177.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141677

/-! ## A141677.P5124939615367258573

`(n-A065855(n+1))*A000005(n+1)`
-/

namespace A141677.P5124939615367258573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A065855 (n + 1)) * A000005 (n + 1)

end

end A141677.P5124939615367258573

namespace A141677

/-- `(n-A065855(n+1))*A000005(n+1)` -/
def P5124939615367258573.Spec : Prop :=
  ∀ n, P5124939615367258573.a n = A141677 (n + 1)

theorem P5124939615367258573.correct : P5124939615367258573.Spec := by
  intro n
  simp only [A141677, Nat.add_sub_cancel, A141677.P5124939615367258573.a, A141677.P12769491184657216177.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A062298, A062298.P8226643735375377344.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141677

/-! ## A141677.P9609622709421195002

`A000005(n+1)*∑[char[A006093(n+1)]]`
-/

namespace A141677.P9609622709421195002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A141677.P9609622709421195002

namespace A141677

/-- `A000005(n+1)*∑[char[A006093(n+1)]]` -/
def P9609622709421195002.Spec : Prop :=
  ∀ n, P9609622709421195002.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P5694430743500343742

`(A032741(n+1)+1)*∑[A010051(n+1)]`
-/

namespace A141677.P5694430743500343742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141677.P5694430743500343742

namespace A141677

/-- `(A032741(n+1)+1)*∑[A010051(n+1)]` -/
def P5694430743500343742.Spec : Prop :=
  ∀ n, P5694430743500343742.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P7476002234232584466

`A000005(n+1)*∑[1-A005171(n+1)]`
-/

namespace A141677.P7476002234232584466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141677.P7476002234232584466

namespace A141677

/-- `A000005(n+1)*∑[1-A005171(n+1)]` -/
def P7476002234232584466.Spec : Prop :=
  ∀ n, P7476002234232584466.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P14936570115459414577

`(∑[A080339(n+1)]-1)*A000005(n+1)`
-/

namespace A141677.P14936570115459414577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * A000005 (n + 1)

end

end A141677.P14936570115459414577

namespace A141677

/-- `(∑[A080339(n+1)]-1)*A000005(n+1)` -/
def P14936570115459414577.Spec : Prop :=
  ∀ n, P14936570115459414577.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P12892516033615965172

`A000005(n+1)*∑[and(1, A061007(n+1))]`
-/

namespace A141677.P12892516033615965172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061007 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141677.P12892516033615965172

namespace A141677

/-- `A000005(n+1)*∑[and(1, A061007(n+1))]` -/
def P12892516033615965172.Spec : Prop :=
  ∀ n, P12892516033615965172.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P10215571582981500812

`A000005(n+1)*∑[char[A000040(n+1)-1]]`
-/

namespace A141677.P10215571582981500812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A141677.P10215571582981500812

namespace A141677

/-- `A000005(n+1)*∑[char[A000040(n+1)-1]]` -/
def P10215571582981500812.Spec : Prop :=
  ∀ n, P10215571582981500812.a n = A141677 (n + 1)

end A141677

/-! ## A141677.P15040744208605269894

`A038040(n+1)/(n+1)*∑[char[A006530(n+2)-1]]`
-/

namespace A141677.P15040744208605269894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A141677.P15040744208605269894

namespace A141677

/-- `A038040(n+1)/(n+1)*∑[char[A006530(n+2)-1]]` -/
def P15040744208605269894.Spec : Prop :=
  ∀ n, P15040744208605269894.a n = (A141677 (n + 1) : ℚ)

end A141677

/-!
# A141678: Symmetrical triangle of coefficients based on invert transform of A001906.

The programs for A141678, the canonical program `A141678.P15377472097087936516` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141678 has offset 1).

The definition of A141678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141678.P7018007196409499710

`A058071(n)*A284115(n+1)`
-/

namespace A141678.P7018007196409499710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n * A284115 (n + 1)

end

end A141678.P7018007196409499710

namespace A141678

/-- `A058071(n)*A284115(n+1)` -/
def P7018007196409499710.Spec : Prop :=
  ∀ n, P7018007196409499710.a n = A141678 (n + 1)

end A141678

/-! ## A141678.P15377472097087936516

`A094565(A014132(n+1))-A094565(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141678

/-- `A094565(A014132(n+1))-A094565(n+1)` -/
def P15377472097087936516.Spec : Prop :=
  ∀ n, P15377472097087936516.a n = A141678 (n + 1)

theorem P15377472097087936516.correct : P15377472097087936516.Spec := by
  intro n
  simp only [A141678, Nat.add_sub_cancel]

end A141678

/-! ## A141678.P463549772465186803

`A001906(A002260(n+1))*A001906(A004736(n+1))`
-/

namespace A141678.P463549772465186803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A002260 (n + 1)).toNat * A001906 (A004736 (n + 1)).toNat

end

end A141678.P463549772465186803

namespace A141678

/-- `A001906(A002260(n+1))*A001906(A004736(n+1))` -/
def P463549772465186803.Spec : Prop :=
  ∀ n, P463549772465186803.a n = A141678 (n + 1)

end A141678

/-! ## A141678.P17606756788191565399

`A202453(A185869(n+1))`
-/

namespace A141678.P17606756788191565399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (A185869 (n + 1)).toNat

end

end A141678.P17606756788191565399

namespace A141678

/-- `A202453(A185869(n+1))` -/
def P17606756788191565399.Spec : Prop :=
  ∀ n, P17606756788191565399.a n = A141678 (n + 1)

end A141678

/-! ## A141678.P11813032379196963418

`A202453(A185870(n+1))`
-/

namespace A141678.P11813032379196963418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (A185870 (n + 1)).toNat

end

end A141678.P11813032379196963418

namespace A141678

/-- `A202453(A185870(n+1))` -/
def P11813032379196963418.Spec : Prop :=
  ∀ n, P11813032379196963418.a n = A141678 (n + 1)

end A141678

/-! ## A141678.P8933049944004987285

`A058071(eq[1, -or(-T(n-2,k), T(n-1,k-1))])` with `a(0)=0, a(1)=-1`
-/

namespace A141678.P8933049944004987285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f2 =>
  -Int.lor (-SequenceMachineLib.triUp2 f2 n) (SequenceMachineLib.triUpLeft f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141678.P8933049944004987285

namespace A141678

/-- `A058071(eq[1, -or(-T(n-2,k), T(n-1,k-1))])` -/
def P8933049944004987285.Spec : Prop :=
  ∀ n, P8933049944004987285.a n = A141678 (n + 1)

end A141678

/-! ## A141678.P16692748180197420431

`A058071(A185871(n+1)-1)`
-/

namespace A141678.P16692748180197420431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A185871 (n + 1) - 1).toNat

end

end A141678.P16692748180197420431

namespace A141678

/-- `A058071(A185871(n+1)-1)` -/
def P16692748180197420431.Spec : Prop :=
  ∀ n, P16692748180197420431.a n = A141678 (n + 1)

end A141678

/-! ## A141678.P339059280697850879

`A058071(eq[0, A187596(n)])`
-/

namespace A141678.P339059280697850879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141678.P339059280697850879

namespace A141678

/-- `A058071(eq[0, A187596(n)])` -/
def P339059280697850879.Spec : Prop :=
  ∀ n, P339059280697850879.a n = A141678 (n + 1)

end A141678

/-! ## A141678.P7901175702939077136

`A058071(eq[0, A319372(n+1)])`
-/

namespace A141678.P7901175702939077136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141678.P7901175702939077136

namespace A141678

/-- `A058071(eq[0, A319372(n+1)])` -/
def P7901175702939077136.Spec : Prop :=
  ∀ n, P7901175702939077136.a n = A141678 (n + 1)

end A141678

/-! ## A141678.P12871842979964401746

`A054204(A115216(n))`
-/

namespace A141678.P12871842979964401746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (A115216 n).toNat

end

end A141678.P12871842979964401746

namespace A141678

/-- `A054204(A115216(n))` -/
def P12871842979964401746.Spec : Prop :=
  ∀ n, P12871842979964401746.a n = A141678 (n + 1)

end A141678

/-!
# A141679: Triangle of coefficients of the inverse of A058071.

The programs for A141679, the canonical program `A141679.P12256375055810763874` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141679 has offset 1).

The definition of A141679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141679.P8639533899557879253

`T(n-1,k-1)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1`
-/

namespace A141679.P8639533899557879253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -1] fun n a =>
  SequenceMachineLib.triUpLeft a n

end

end A141679.P8639533899557879253

namespace A141679

/-- `T(n-1,k-1)` -/
def P8639533899557879253.Spec : Prop :=
  ∀ n, P8639533899557879253.a n = A141679 (n + 1)

end A141679

/-! ## A141679.P4661042422749786552

`T(1, T(n-1,k+1)-1)-T(col(n), row(n)-1)` with `a(0)=1`
-/

namespace A141679.P4661042422749786552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUpRight a n - 1) - SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triRow n : ℤ) - 1)

end

end A141679.P4661042422749786552

namespace A141679

/-- `T(1, T(n-1,k+1)-1)-T(col(n), row(n)-1)` -/
def P4661042422749786552.Spec : Prop :=
  ∀ n, P4661042422749786552.a n = A141679 (n + 1)

end A141679

/-! ## A141679.P8172808373077648809

`ceil(1/A343233(n))`
-/

namespace A141679.P8172808373077648809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A343233 n : ℚ)⌉

end

end A141679.P8172808373077648809

namespace A141679

/-- `ceil(1/A343233(n))` -/
def P8172808373077648809.Spec : Prop :=
  ∀ n, P8172808373077648809.a n = A141679 (n + 1)

end A141679

/-! ## A141679.P14836607674569279837

`round(1/A106190(n))`
-/

namespace A141679.P14836607674569279837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A106190 n : ℚ))

end

end A141679.P14836607674569279837

namespace A141679

/-- `round(1/A106190(n))` -/
def P14836607674569279837.Spec : Prop :=
  ∀ n, P14836607674569279837.a n = A141679 (n + 1)

end A141679

/-! ## A141679.P7552223889581938067

`A240328(row(row(n)-col(n)))`
-/

namespace A141679.P7552223889581938067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (SequenceMachineLib.triRow ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat)

end

end A141679.P7552223889581938067

namespace A141679

/-- `A240328(row(row(n)-col(n)))` -/
def P7552223889581938067.Spec : Prop :=
  ∀ n, P7552223889581938067.a n = A141679 (n + 1)

end A141679

/-! ## A141679.P912156134840523267

`A132339(C(comp[∑[n]]-n, 2)-(n+1))%2`
-/

namespace A141679.P912156134840523267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132339 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))) 2

end

end A141679.P912156134840523267

namespace A141679

/-- `A132339(C(comp[∑[n]]-n, 2)-(n+1))%2` -/
def P912156134840523267.Spec : Prop :=
  ∀ n, P912156134840523267.a n = A141679 (n + 1)

end A141679

/-! ## A141679.P16349194753729241518

`A175629(C(3, A180663(n)))`
-/

namespace A141679.P16349194753729241518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (Nat.choose 3 (A180663 n).toNat)

end

end A141679.P16349194753729241518

namespace A141679

/-- `A175629(C(3, A180663(n)))` -/
def P16349194753729241518.Spec : Prop :=
  ∀ n, P16349194753729241518.a n = A141679 (n + 1)

end A141679

/-! ## A141679.P4523092146019466373

`A110314(n)/A094441(n)`
-/

namespace A141679.P4523092146019466373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110314 n : ℚ) / (A094441 n : ℚ)

end

end A141679.P4523092146019466373

namespace A141679

/-- `A110314(n)/A094441(n)` -/
def P4523092146019466373.Spec : Prop :=
  ∀ n, P4523092146019466373.a n = (A141679 (n + 1) : ℚ)

end A141679

/-! ## A141679.P9934458852863120828

`A110314(n)/A107230(n)`
-/

namespace A141679.P9934458852863120828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110314 n : ℚ) / (A107230 n : ℚ)

end

end A141679.P9934458852863120828

namespace A141679

/-- `A110314(n)/A107230(n)` -/
def P9934458852863120828.Spec : Prop :=
  ∀ n, P9934458852863120828.a n = (A141679 (n + 1) : ℚ)

end A141679

/-! ## A141679.P10205348792776425215

`A110314(n)/A119468(n)`
-/

namespace A141679.P10205348792776425215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110314 n : ℚ) / (A119468 n : ℚ)

end

end A141679.P10205348792776425215

namespace A141679

/-- `A110314(n)/A119468(n)` -/
def P10205348792776425215.Spec : Prop :=
  ∀ n, P10205348792776425215.a n = (A141679 (n + 1) : ℚ)

end A141679

/-! ## A141679.P1722491209168806592

`A110314(n)/A124644(n)`
-/

namespace A141679.P1722491209168806592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110314 n : ℚ) / (A124644 n : ℚ)

end

end A141679.P1722491209168806592

namespace A141679

/-- `A110314(n)/A124644(n)` -/
def P1722491209168806592.Spec : Prop :=
  ∀ n, P1722491209168806592.a n = (A141679 (n + 1) : ℚ)

end A141679

/-! ## A141679.P14453794153033710407

`A110330(n)/A129994(n)`
-/

namespace A141679.P14453794153033710407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110330 n : ℚ) / (A129994 n : ℚ)

end

end A141679.P14453794153033710407

namespace A141679

/-- `A110330(n)/A129994(n)` -/
def P14453794153033710407.Spec : Prop :=
  ∀ n, P14453794153033710407.a n = (A141679 (n + 1) : ℚ)

end A141679

/-! ## A141679.P7266700732223237450

`A110314(n)/A171670(n)`
-/

namespace A141679.P7266700732223237450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110314 n : ℚ) / (A171670 n : ℚ)

end

end A141679.P7266700732223237450

namespace A141679

/-- `A110314(n)/A171670(n)` -/
def P7266700732223237450.Spec : Prop :=
  ∀ n, P7266700732223237450.a n = (A141679 (n + 1) : ℚ)

end A141679

/-! ## A141679.P1778211335563530482

`A167407(round(2/A130321(n)))`
-/

namespace A141679.P1778211335563530482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 (SequenceMachineLib.roundAway (2 / (A130321 n : ℚ))).toNat

end

end A141679.P1778211335563530482

namespace A141679

/-- `A167407(round(2/A130321(n)))` -/
def P1778211335563530482.Spec : Prop :=
  ∀ n, P1778211335563530482.a n = A141679 (n + 1)

end A141679

/-! ## A141679.P2335200254609250872

`A110314(n)/A091869(n+1)`
-/

namespace A141679.P2335200254609250872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110314 n : ℚ) / (A091869 (n + 1) : ℚ)

end

end A141679.P2335200254609250872

namespace A141679

/-- `A110314(n)/A091869(n+1)` -/
def P2335200254609250872.Spec : Prop :=
  ∀ n, P2335200254609250872.a n = (A141679 (n + 1) : ℚ)

end A141679

/-! ## A141679.P17652655645548223376

`A110314(n)/A175136(n+1)`
-/

namespace A141679.P17652655645548223376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110314 n : ℚ) / (A175136 (n + 1) : ℚ)

end

end A141679.P17652655645548223376

namespace A141679

/-- `A110314(n)/A175136(n+1)` -/
def P17652655645548223376.Spec : Prop :=
  ∀ n, P17652655645548223376.a n = (A141679 (n + 1) : ℚ)

end A141679

/-! ## A141679.P12256375055810763874

`A004442(round(3/A099375(n)))-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141679

/-- `A004442(round(3/A099375(n)))-1` -/
def P12256375055810763874.Spec : Prop :=
  ∀ n, P12256375055810763874.a n = A141679 (n + 1)

theorem P12256375055810763874.correct : P12256375055810763874.Spec := by
  intro n
  simp only [A141679, Nat.add_sub_cancel]

end A141679

/-! ## A141679.P15367642665539352191

`A130713(A004736(n+1))-A167194(n+1)`
-/

namespace A141679.P15367642665539352191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A004736 (n + 1)).toNat - A167194 (n + 1)

end

end A141679.P15367642665539352191

namespace A141679

/-- `A130713(A004736(n+1))-A167194(n+1)` -/
def P15367642665539352191.Spec : Prop :=
  ∀ n, P15367642665539352191.a n = A141679 (n + 1)

end A141679

/-! ## A141679.P5000032590475464047

`A008683(A000010(A000217(A004736(n+1))))`
-/

namespace A141679.P5000032590475464047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000010 (A000217 (A004736 (n + 1)).toNat).toNat).toNat

end

end A141679.P5000032590475464047

namespace A141679

/-- `A008683(A000010(A000217(A004736(n+1))))` -/
def P5000032590475464047.Spec : Prop :=
  ∀ n, P5000032590475464047.a n = A141679 (n + 1)

end A141679

/-! ## A141679.P4806744897283209085

`A167374(1-A097806(n)+n)`
-/

namespace A141679.P4806744897283209085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (1 - A097806 n + (n : ℤ)).toNat

end

end A141679.P4806744897283209085

namespace A141679

/-- `A167374(1-A097806(n)+n)` -/
def P4806744897283209085.Spec : Prop :=
  ∀ n, P4806744897283209085.a n = A141679 (n + 1)

end A141679

/-!
# A141680: Triangle read by rows: T(n,m) = (n/m)*binomial(n,m) if m divides n, otherwise 0.

The programs for A141680, the canonical program `A141680.P17339952766597431813` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141680 has offset 1).

The definition of A141680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141680.P17339952766597431813

`A126988(C(row(n)+1, 2)+col(n)+1)*C(row(n)+1, col(n)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141680

/-- `A126988(C(row(n)+1, 2)+col(n)+1)*C(row(n)+1, col(n)+1)` -/
def P17339952766597431813.Spec : Prop :=
  ∀ n, P17339952766597431813.a n = A141680 (n + 1)

theorem P17339952766597431813.correct : P17339952766597431813.Spec := by
  intro n
  simp only [A141680, Nat.add_sub_cancel]

end A141680

/-! ## A141680.P15300332058196604664

`A126988(n+1)*A135278(n)`
-/

namespace A141680.P15300332058196604664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A135278 n

end

end A141680.P15300332058196604664

namespace A141680

/-- `A126988(n+1)*A135278(n)` -/
def P15300332058196604664.Spec : Prop :=
  ∀ n, P15300332058196604664.a n = A141680 (n + 1)

end A141680

/-! ## A141680.P13720250817489631644

`A126988(n+1)²*A007318(n)`
-/

namespace A141680.P13720250817489631644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) ^ 2 * A007318 n

end

end A141680.P13720250817489631644

namespace A141680

/-- `A126988(n+1)²*A007318(n)` -/
def P13720250817489631644.Spec : Prop :=
  ∀ n, P13720250817489631644.a n = A141680 (n + 1)

end A141680

/-! ## A141680.P7717187819863943540

`A074909(n+1)*A126988(n+1)`
-/

namespace A141680.P7717187819863943540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A126988 (n + 1)

end

end A141680.P7717187819863943540

namespace A141680

/-- `A074909(n+1)*A126988(n+1)` -/
def P7717187819863943540.Spec : Prop :=
  ∀ n, P7717187819863943540.a n = A141680 (n + 1)

end A141680

/-! ## A141680.P2774219583174771124

`A001057(A143315(n+1))*A135278(n)`
-/

namespace A141680.P2774219583174771124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A143315 (n + 1)).toNat * A135278 n

end

end A141680.P2774219583174771124

namespace A141680

/-- `A001057(A143315(n+1))*A135278(n)` -/
def P2774219583174771124.Spec : Prop :=
  ∀ n, P2774219583174771124.a n = A141680 (n + 1)

end A141680

/-! ## A141680.P6182569493298593278

`A007318(A014132(n+1))*A126988(n+1)`
-/

namespace A141680.P6182569493298593278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat * A126988 (n + 1)

end

end A141680.P6182569493298593278

namespace A141680

/-- `A007318(A014132(n+1))*A126988(n+1)` -/
def P6182569493298593278.Spec : Prop :=
  ∀ n, P6182569493298593278.a n = A141680 (n + 1)

end A141680

/-! ## A141680.P16229348042615371108

`A010766(n+1)*A126988(n+1)*A007318(n)`
-/

namespace A141680.P16229348042615371108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A126988 (n + 1) * A007318 n

end

end A141680.P16229348042615371108

namespace A141680

/-- `A010766(n+1)*A126988(n+1)*A007318(n)` -/
def P16229348042615371108.Spec : Prop :=
  ∀ n, P16229348042615371108.a n = A141680 (n + 1)

end A141680

/-! ## A141680.P2145343255636568022

`A127013(A278818(n))²*A007318(n)`
-/

namespace A141680.P2145343255636568022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (A278818 n).toNat ^ 2 * A007318 n

end

end A141680.P2145343255636568022

namespace A141680

/-- `A127013(A278818(n))²*A007318(n)` -/
def P2145343255636568022.Spec : Prop :=
  ∀ n, P2145343255636568022.a n = A141680 (n + 1)

end A141680

/-! ## A141680.P5391192385080827692

`A090349(n+1)*A126988(n+1)`
-/

namespace A141680.P5391192385080827692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090349 (n + 1) * A126988 (n + 1)

end

end A141680.P5391192385080827692

namespace A141680

/-- `A090349(n+1)*A126988(n+1)` -/
def P5391192385080827692.Spec : Prop :=
  ∀ n, P5391192385080827692.a n = A141680 (n + 1)

end A141680

/-!
# A141683: a(n) = Sum_{k=1..n} b(k)*a(n - k) for n >= 1, where b(n) = b(n-2) + b(n-3) for n >= 3 with b(0) = 0 and b(1) = b(2) = 1.

The programs for A141683, the canonical program `A141683.P10897369775575076754` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141683 has offset 1).

The definition of A141683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141683.P4821003123496057700

`ogf((1-x^2-x^3)/(1-x-2x^2-x^3))`
-/

namespace A141683.P4821003123496057700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1] [1, -1, -2, -1] n

end

end A141683.P4821003123496057700

namespace A141683

/-- `ogf((1-x^2-x^3)/(1-x-2x^2-x^3))` -/
def P4821003123496057700.Spec : Prop :=
  ∀ n, P4821003123496057700.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P10897369775575076754

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141683

/-- `a(n-1)+2*a(n-2)+a(n-3)` -/
def P10897369775575076754.Spec : Prop :=
  ∀ n, (P10897369775575076754.a n : ℤ) = A141683 (n + 1)

theorem P10897369775575076754.correct : P10897369775575076754.Spec := by
  intro n
  simp only [A141683, Nat.add_sub_cancel]

end A141683

/-! ## A141683.P13155851334781424562

`abs(record[A135851(2*n)])`
-/

namespace A141683.P13155851334781424562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A141683.P13155851334781424562

namespace A141683

/-- `abs(record[A135851(2*n)])` -/
def P13155851334781424562.Spec : Prop :=
  ∀ n, P13155851334781424562.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P8680832742906428026

`A000930(abs(1-2*n))`
-/

namespace A141683.P8680832742906428026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 |1 - (2 * n : ℤ)|.toNat

end

end A141683.P8680832742906428026

namespace A141683

/-- `A000930(abs(1-2*n))` -/
def P8680832742906428026.Spec : Prop :=
  ∀ n, P8680832742906428026.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P8468994490792703531

`A141015(ceil(abs(sin(1)-n)))`
-/

namespace A141683.P8468994490792703531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141015 ⌈|Real.sin (1 : ℝ) - (n : ℝ)|⌉.toNat

end

end A141683.P8468994490792703531

namespace A141683

/-- `A141015(ceil(abs(sin(1)-n)))` -/
def P8468994490792703531.Spec : Prop :=
  ∀ n, P8468994490792703531.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P5978341786199741631

`A141015(n^ceil(abs(sin(n))))`
-/

namespace A141683.P5978341786199741631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141015 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ))).toNat

end

end A141683.P5978341786199741631

namespace A141683

/-- `A141015(n^ceil(abs(sin(n))))` -/
def P5978341786199741631.Spec : Prop :=
  ∀ n, P5978341786199741631.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P7820622443833640177

`A078012(comp[2*n+3]+4)`
-/

namespace A141683.P7820622443833640177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 4)

end

end A141683.P7820622443833640177

namespace A141683

/-- `A078012(comp[2*n+3]+4)` -/
def P7820622443833640177.Spec : Prop :=
  ∀ n, P7820622443833640177.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P3583963727115713462

`A142474(ceil(abs(sin(n)))+n+1)`
-/

namespace A141683.P3583963727115713462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142474 (⌈|Real.sin (n : ℝ)|⌉ + (n + 1 : ℤ)).toNat

end

end A141683.P3583963727115713462

namespace A141683

/-- `A142474(ceil(abs(sin(n)))+n+1)` -/
def P3583963727115713462.Spec : Prop :=
  ∀ n, P3583963727115713462.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P10599550630373061484

`A078007(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A141683.P10599550630373061484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A078007 n + a (n - 2)

end

end A141683.P10599550630373061484

namespace A141683

/-- `A078007(n)+a(n-2)` -/
def P10599550630373061484.Spec : Prop :=
  ∀ n, P10599550630373061484.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P13381304812349444098

`A101399(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A141683.P13381304812349444098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A101399 (n - 2) + a (n - 1)

end

end A141683.P13381304812349444098

namespace A141683

/-- `A101399(n-2)+a(n-1)` -/
def P13381304812349444098.Spec : Prop :=
  ∀ n, P13381304812349444098.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P16902077255384949331

`A068921(A004275(n))`
-/

namespace A141683.P16902077255384949331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A004275 n).toNat

end

end A141683.P16902077255384949331

namespace A141683

/-- `A068921(A004275(n))` -/
def P16902077255384949331.Spec : Prop :=
  ∀ n, P16902077255384949331.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P14134778476316215719

`A141015(A028310(n))`
-/

namespace A141683.P14134778476316215719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141015 (A028310 n).toNat

end

end A141683.P14134778476316215719

namespace A141683

/-- `A141015(A028310(n))` -/
def P14134778476316215719.Spec : Prop :=
  ∀ n, P14134778476316215719.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P17387096956653819768

`A108104(A113127(n))`
-/

namespace A141683.P17387096956653819768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A113127 n).toNat

end

end A141683.P17387096956653819768

namespace A141683

/-- `A108104(A113127(n))` -/
def P17387096956653819768.Spec : Prop :=
  ∀ n, P17387096956653819768.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P14585910689939621847

`A108104(A130824(n))`
-/

namespace A141683.P14585910689939621847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A130824 n).toNat

end

end A141683.P14585910689939621847

namespace A141683

/-- `A108104(A130824(n))` -/
def P14585910689939621847.Spec : Prop :=
  ∀ n, P14585910689939621847.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P11189987877361935237

`A142474(A065475(n+1))`
-/

namespace A141683.P11189987877361935237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142474 (A065475 (n + 1)).toNat

end

end A141683.P11189987877361935237

namespace A141683

/-- `A142474(A065475(n+1))` -/
def P11189987877361935237.Spec : Prop :=
  ∀ n, P11189987877361935237.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P2962867430998545583

`A108104(A111284(n+1))`
-/

namespace A141683.P2962867430998545583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A111284 (n + 1)).toNat

end

end A141683.P2962867430998545583

namespace A141683

/-- `A108104(A111284(n+1))` -/
def P2962867430998545583.Spec : Prop :=
  ∀ n, P2962867430998545583.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P366071765953643053

`A108104(A131098(n+1))`
-/

namespace A141683.P366071765953643053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A131098 (n + 1)).toNat

end

end A141683.P366071765953643053

namespace A141683

/-- `A108104(A131098(n+1))` -/
def P366071765953643053.Spec : Prop :=
  ∀ n, P366071765953643053.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P766155808674375255

`A226916(A222945(n+1))`
-/

namespace A141683.P766155808674375255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (A222945 (n + 1)).toNat

end

end A141683.P766155808674375255

namespace A141683

/-- `A226916(A222945(n+1))` -/
def P766155808674375255.Spec : Prop :=
  ∀ n, P766155808674375255.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P2263061846738009819

`A108104(A139544(n+2))`
-/

namespace A141683.P2263061846738009819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A139544 (n + 2)).toNat

end

end A141683.P2263061846738009819

namespace A141683

/-- `A108104(A139544(n+2))` -/
def P2263061846738009819.Spec : Prop :=
  ∀ n, P2263061846738009819.a n = A141683 (n + 1)

end A141683

/-! ## A141683.P8446138280550964760

`A142474(A171526(n+2))`
-/

namespace A141683.P8446138280550964760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142474 (A171526 (n + 2)).toNat

end

end A141683.P8446138280550964760

namespace A141683

/-- `A142474(A171526(n+2))` -/
def P8446138280550964760.Spec : Prop :=
  ∀ n, P8446138280550964760.a n = A141683 (n + 1)

end A141683

/-!
# A141684: Triangle read by rows formed from Euler polynomials: p(x,n) = if(n mod 2 = 1, 2^(1 + ((n - 1)/2))*EulerE(n, x), EulerE(n, x)); t(n,m) = Coefficients(p(x,n)).

The programs for A141684, there is no canonical definition to state claims against.
-/

/-! ## A141684.P8100655527273765179

`A028310(A184955(n))*A058940(n)`
-/

namespace A141684.P8100655527273765179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A184955 n).toNat * A058940 n

end

end A141684.P8100655527273765179

/-!
# A141685: a(1) = 1, a(n) = Sum_{k=1..n} (k mod 3) * a(n-k) for n >= 2.

The programs for A141685, the canonical program `A141685.P17635640857269442098` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141685 has offset 1).

The definition of A141685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141685.P17635640857269442098

`ogf((1-x^3)/(1-x-2x^2-x^3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141685

/-- `ogf((1-x^3)/(1-x-2x^2-x^3))` -/
def P17635640857269442098.Spec : Prop :=
  ∀ n, P17635640857269442098.a n = A141685 (n + 1)

theorem P17635640857269442098.correct : P17635640857269442098.Spec := by
  intro n
  simp only [A141685, Nat.add_sub_cancel]

end A141685

/-! ## A141685.P16911559907886369781

`2*a(n-2)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A141685.P16911559907886369781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n a =>
  2 * a (n - 2) + (a (n - 1) + a (n - 3))

end

end A141685.P16911559907886369781

namespace A141685

/-- `2*a(n-2)+a(n-1)+a(n-3)` -/
def P16911559907886369781.Spec : Prop :=
  ∀ n, (P16911559907886369781.a n : ℤ) = A141685 (n + 1)

end A141685

/-! ## A141685.P12248379657571200445

`A179070(abs(1-2*n)+1)`
-/

namespace A141685.P12248379657571200445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (|1 - (2 * n : ℤ)| + 1).toNat

end

end A141685.P12248379657571200445

namespace A141685

/-- `A179070(abs(1-2*n)+1)` -/
def P12248379657571200445.Spec : Prop :=
  ∀ n, P12248379657571200445.a n = A141685 (n + 1)

end A141685

/-! ## A141685.P16940045512332191230

`A196382(A004280(n+1))+1`
-/

namespace A141685.P16940045512332191230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196382 (A004280 (n + 1)).toNat + 1

end

end A141685.P16940045512332191230

namespace A141685

/-- `A196382(A004280(n+1))+1` -/
def P16940045512332191230.Spec : Prop :=
  ∀ n, P16940045512332191230.a n = A141685 (n + 1)

end A141685

/-! ## A141685.P1781159049658996457

`abs(A135851(2*n+1)+record[A135851(2*n)])`
-/

namespace A141685.P1781159049658996457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135851 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A141685.P1781159049658996457

namespace A141685

/-- `abs(A135851(2*n+1)+record[A135851(2*n)])` -/
def P1781159049658996457.Spec : Prop :=
  ∀ n, P1781159049658996457.a n = A141685 (n + 1)

end A141685

/-! ## A141685.P4988674726512577582

`Δ[Δ[A141683(n+1)]]`
-/

namespace A141685.P4988674726512577582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141685.P4988674726512577582

namespace A141685

/-- `Δ[Δ[A141683(n+1)]]` -/
def P4988674726512577582.Spec : Prop :=
  ∀ n, P4988674726512577582.a n = A141685 (n + 1)

end A141685

/-! ## A141685.P2493578017621250292

`Δ[Δ[abs(record[A135851(2*n)])]]`
-/

namespace A141685.P2493578017621250292
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141685.P2493578017621250292

namespace A141685

/-- `Δ[Δ[abs(record[A135851(2*n)])]]` -/
def P2493578017621250292.Spec : Prop :=
  ∀ n, P2493578017621250292.a n = A141685 (n + 1)

end A141685

/-! ## A141685.P13263568133542431318

`Δ[Δ[A142474((n+1)%(2*n+1)+1)]]`
-/

namespace A141685.P13263568133542431318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142474 ((n + 1) % (2 * n + 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141685.P13263568133542431318

namespace A141685

/-- `Δ[Δ[A142474((n+1)%(2*n+1)+1)]]` -/
def P13263568133542431318.Spec : Prop :=
  ∀ n, P13263568133542431318.a n = A141685 (n + 1)

end A141685

/-! ## A141685.P18150241825674622065

`2*A097333(2*n)-A003410(2*n)`
-/

namespace A141685.P18150241825674622065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097333 (2 * n) - A003410 (2 * n)

end

end A141685.P18150241825674622065

namespace A141685

/-- `2*A097333(2*n)-A003410(2*n)` -/
def P18150241825674622065.Spec : Prop :=
  ∀ n, P18150241825674622065.a n = A141685 (n + 1)

end A141685

/-! ## A141685.P9005969459827086901

`Δ[Δ[A000930(record[2*(n+1)-A151800(n)])]]`
-/

namespace A141685.P9005969459827086901
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A151800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141685.P9005969459827086901

namespace A141685

/-- `Δ[Δ[A000930(record[2*(n+1)-A151800(n)])]]` -/
def P9005969459827086901.Spec : Prop :=
  ∀ n, P9005969459827086901.a n = A141685 (n + 1)

end A141685

/-! ## A141685.P17210860306546022523

`Δ[A179070(2*(n+1))]-A179070(2*n+1)`
-/

namespace A141685.P17210860306546022523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A179070 (2 * n + 1)

end

end A141685.P17210860306546022523

namespace A141685

/-- `Δ[A179070(2*(n+1))]-A179070(2*n+1)` -/
def P17210860306546022523.Spec : Prop :=
  ∀ n, P17210860306546022523.a n = A141685 (n + 1)

end A141685

/-! ## A141685.P11167875708843643392

`Δ[A003410(2*n+1)-Δ[A003410(2*n)]]`
-/

namespace A141685.P11167875708843643392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (2 * n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141685.P11167875708843643392

namespace A141685

/-- `Δ[A003410(2*n+1)-Δ[A003410(2*n)]]` -/
def P11167875708843643392.Spec : Prop :=
  ∀ n, P11167875708843643392.a n = A141685 (n + 1)

end A141685

/-!
# A141686: Triangle read by rows: T(n, k) = binomial(n-1, k-1)*A008292(n, k).

The programs for A141686, the canonical program `A141686.P1598000274766692694` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141686 has offset 1).

The definition of A141686 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141686.P1598000274766692694

`C(row(n), col(n))*A008292(C(row(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141686

/-- `C(row(n), col(n))*A008292(C(row(n)+1, 2)+col(n)+1)` -/
def P1598000274766692694.Spec : Prop :=
  ∀ n, P1598000274766692694.a n = A141686 (n + 1)

theorem P1598000274766692694.correct : P1598000274766692694.Spec := by
  intro n
  simp only [A141686, Nat.add_sub_cancel]

end A141686

/-! ## A141686.P14658085068258702081

`C(row(n), col(n))*A008292(n+1)`
-/

namespace A141686.P14658085068258702081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A008292 (n + 1)

end

end A141686.P14658085068258702081

namespace A141686

/-- `C(row(n), col(n))*A008292(n+1)` -/
def P14658085068258702081.Spec : Prop :=
  ∀ n, P14658085068258702081.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P6622129944905453990

`A007318(n)*A008292(n+1)`
-/

namespace A141686.P6622129944905453990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008292 (n + 1)

end

end A141686.P6622129944905453990

namespace A141686

/-- `A007318(n)*A008292(n+1)` -/
def P6622129944905453990.Spec : Prop :=
  ∀ n, P6622129944905453990.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P4497285669755171816

`A007318(n)*A123125(comp[∑[n]])`
-/

namespace A141686.P4497285669755171816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A141686.P4497285669755171816

namespace A141686

/-- `A007318(n)*A123125(comp[∑[n]])` -/
def P4497285669755171816.Spec : Prop :=
  ∀ n, P4497285669755171816.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P12505823449945620581

`abs(A008292(n+1)*A117440(n))`
-/

namespace A141686.P12505823449945620581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008292 (n + 1) * A117440 n|

end

end A141686.P12505823449945620581

namespace A141686

/-- `abs(A008292(n+1)*A117440(n))` -/
def P12505823449945620581.Spec : Prop :=
  ∀ n, P12505823449945620581.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P8520511824955449933

`sqrt(A008459(n))*A008292(n+1)`
-/

namespace A141686.P8520511824955449933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A008292 (n + 1) : ℝ)

end

end A141686.P8520511824955449933

namespace A141686

/-- `sqrt(A008459(n))*A008292(n+1)` -/
def P8520511824955449933.Spec : Prop :=
  ∀ n, P8520511824955449933.a n = (A141686 (n + 1) : ℝ)

end A141686

/-! ## A141686.P436798084910141231

`Δ[A102363(n)]*A008292(n+1)`
-/

namespace A141686.P436798084910141231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008292 (n + 1)

end

end A141686.P436798084910141231

namespace A141686

/-- `Δ[A102363(n)]*A008292(n+1)` -/
def P436798084910141231.Spec : Prop :=
  ∀ n, P436798084910141231.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P5764621553007358090

`(A014473(n)+1)*A008292(n+1)`
-/

namespace A141686.P5764621553007358090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A008292 (n + 1)

end

end A141686.P5764621553007358090

namespace A141686

/-- `(A014473(n)+1)*A008292(n+1)` -/
def P5764621553007358090.Spec : Prop :=
  ∀ n, P5764621553007358090.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P2588426017365362730

`A008292(n+1)/2*A028326(n)`
-/

namespace A141686.P2588426017365362730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / 2 * (A028326 n : ℚ)

end

end A141686.P2588426017365362730

namespace A141686

/-- `A008292(n+1)/2*A028326(n)` -/
def P2588426017365362730.Spec : Prop :=
  ∀ n, P2588426017365362730.a n = (A141686 (n + 1) : ℚ)

end A141686

/-! ## A141686.P15906790438456688741

`(A176200(n)+1)/2*A007318(n)`
-/

namespace A141686.P15906790438456688741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176200 n + 1 : ℚ) / 2 * (A007318 n : ℚ)

end

end A141686.P15906790438456688741

namespace A141686

/-- `(A176200(n)+1)/2*A007318(n)` -/
def P15906790438456688741.Spec : Prop :=
  ∀ n, P15906790438456688741.a n = (A141686 (n + 1) : ℚ)

end A141686

/-! ## A141686.P13617188555197883498

`ceil(A134059(n)/3)*A008292(n+1)`
-/

namespace A141686.P13617188555197883498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A008292 (n + 1)

end

end A141686.P13617188555197883498

namespace A141686

/-- `ceil(A134059(n)/3)*A008292(n+1)` -/
def P13617188555197883498.Spec : Prop :=
  ∀ n, P13617188555197883498.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P18427045564270233308

`A007318(n)*A173018(lt[0, A173787(n)])`
-/

namespace A141686.P18427045564270233308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A141686.P18427045564270233308

namespace A141686

/-- `A007318(n)*A173018(lt[0, A173787(n)])` -/
def P18427045564270233308.Spec : Prop :=
  ∀ n, P18427045564270233308.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P16746358627591212197

`A007318(n)*A173018(lt[1, A130321(n)])`
-/

namespace A141686.P16746358627591212197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A141686.P16746358627591212197

namespace A141686

/-- `A007318(n)*A173018(lt[1, A130321(n)])` -/
def P16746358627591212197.Spec : Prop :=
  ∀ n, P16746358627591212197.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P2278719840043503243

`gcd(A117440(n), A121757(n))*A008292(n+1)`
-/

namespace A141686.P2278719840043503243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A117440 n) (A121757 n) : ℤ) * A008292 (n + 1)

end

end A141686.P2278719840043503243

namespace A141686

/-- `gcd(A117440(n), A121757(n))*A008292(n+1)` -/
def P2278719840043503243.Spec : Prop :=
  ∀ n, P2278719840043503243.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P1392620185656857246

`A007318(n)*A173018(lt[1, A057555(2*(n+1))])`
-/

namespace A141686.P1392620185656857246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A141686.P1392620185656857246

namespace A141686

/-- `A007318(n)*A173018(lt[1, A057555(2*(n+1))])` -/
def P1392620185656857246.Spec : Prop :=
  ∀ n, P1392620185656857246.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P16358999664061474405

`A007318(n)/A137688(n)*A257609(n)`
-/

namespace A141686.P16358999664061474405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A137688 n : ℚ) * (A257609 n : ℚ)

end

end A141686.P16358999664061474405

namespace A141686

/-- `A007318(n)/A137688(n)*A257609(n)` -/
def P16358999664061474405.Spec : Prop :=
  ∀ n, P16358999664061474405.a n = (A141686 (n + 1) : ℚ)

end A141686

/-! ## A141686.P13299662106671256483

`A007318(n)*A173018(lt[1, A061356(n+2)])`
-/

namespace A141686.P13299662106671256483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A141686.P13299662106671256483

namespace A141686

/-- `A007318(n)*A173018(lt[1, A061356(n+2)])` -/
def P13299662106671256483.Spec : Prop :=
  ∀ n, P13299662106671256483.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P17187907981708446434

`A007318(n)*A173018(lt[1, A048854(n)])`
-/

namespace A141686.P17187907981708446434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A141686.P17187907981708446434

namespace A141686

/-- `A007318(n)*A173018(lt[1, A048854(n)])` -/
def P17187907981708446434.Spec : Prop :=
  ∀ n, P17187907981708446434.a n = A141686 (n + 1)

end A141686

/-! ## A141686.P16507094924367037880

`A177428(n+1)/A233543(n)`
-/

namespace A141686.P16507094924367037880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177428 (n + 1) : ℚ) / (A233543 n : ℚ)

end

end A141686.P16507094924367037880

namespace A141686

/-- `A177428(n+1)/A233543(n)` -/
def P16507094924367037880.Spec : Prop :=
  ∀ n, P16507094924367037880.a n = (A141686 (n + 1) : ℚ)

end A141686

/-! ## A141686.P2774532722880407313

`sqrt(A177823(n+1))*A007318(n)`
-/

namespace A141686.P2774532722880407313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177823 (n + 1) : ℝ) * (A007318 n : ℝ)

end

end A141686.P2774532722880407313

namespace A141686

/-- `sqrt(A177823(n+1))*A007318(n)` -/
def P2774532722880407313.Spec : Prop :=
  ∀ n, P2774532722880407313.a n = (A141686 (n + 1) : ℝ)

end A141686

/-!
# A141687: Triangle read by rows: t(n,m) = 1 - ((prime(n) - prime(m))/2 mod 2).

The programs for A141687, the canonical program `A141687.P13678836384426120464` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141687 has offset 1).

The definition of A141687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141687.P13678836384426120464

`A065305(n+2)%2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141687

/-- `A065305(n+2)%2` -/
def P13678836384426120464.Spec : Prop :=
  ∀ n, P13678836384426120464.a n = A141687 (n + 1)

theorem P13678836384426120464.correct : P13678836384426120464.Spec := by
  intro n
  simp only [A141687, Nat.add_sub_cancel]

end A141687

/-! ## A141687.P13499945402191133975

`col(A116366(n+1)%4)`
-/

namespace A141687.P13499945402191133975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.tmod (A116366 (n + 1)) 4).toNat

end

end A141687.P13499945402191133975

namespace A141687

/-- `col(A116366(n+1)%4)` -/
def P13499945402191133975.Spec : Prop :=
  ∀ n, (P13499945402191133975.a n : ℤ) = A141687 (n + 1)

end A141687

/-! ## A141687.P12325434436832065536

`(A116366(1+n)/2)%2`
-/

namespace A141687.P12325434436832065536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A116366 (1 + n) : ℚ) / 2)) 2

end

end A141687.P12325434436832065536

namespace A141687

/-- `(A116366(1+n)/2)%2` -/
def P12325434436832065536.Spec : Prop :=
  ∀ n, P12325434436832065536.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P10694091087808684974

`A014707(A116366(n+1))`
-/

namespace A141687.P10694091087808684974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A116366 (n + 1)).toNat

end

end A141687.P10694091087808684974

namespace A141687

/-- `A014707(A116366(n+1))` -/
def P10694091087808684974.Spec : Prop :=
  ∀ n, P10694091087808684974.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P3163387752020661826

`A000035(A065305(n+2))`
-/

namespace A141687.P3163387752020661826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A065305 (n + 2)).toNat

end

end A141687.P3163387752020661826

namespace A141687

/-- `A000035(A065305(n+2))` -/
def P3163387752020661826.Spec : Prop :=
  ∀ n, P3163387752020661826.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P4720395801660638942

`A059841(A086802(n+2))`
-/

namespace A141687.P4720395801660638942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A086802 (n + 2)).toNat

end

end A141687.P4720395801660638942

namespace A141687

/-- `A059841(A086802(n+2))` -/
def P4720395801660638942.Spec : Prop :=
  ∀ n, P4720395801660638942.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P15526801995938438271

`A152822(A204890(n+2))`
-/

namespace A141687.P15526801995938438271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A204890 (n + 2)).toNat

end

end A141687.P15526801995938438271

namespace A141687

/-- `A152822(A204890(n+2))` -/
def P15526801995938438271.Spec : Prop :=
  ∀ n, P15526801995938438271.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P11720608932893044266

`A166486(A391357(n+2))`
-/

namespace A141687.P11720608932893044266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A391357 (n + 2)).toNat

end

end A141687.P11720608932893044266

namespace A141687

/-- `A166486(A391357(n+2))` -/
def P11720608932893044266.Spec : Prop :=
  ∀ n, P11720608932893044266.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P10831580905626106375

`and(A060576(n), A065305(n+2))`
-/

namespace A141687.P10831580905626106375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A065305 (n + 2))

end

end A141687.P10831580905626106375

namespace A141687

/-- `and(A060576(n), A065305(n+2))` -/
def P10831580905626106375.Spec : Prop :=
  ∀ n, P10831580905626106375.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P15202738242205437398

`and(1, A065305(n+2)*A239609(n))`
-/

namespace A141687.P15202738242205437398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065305 (n + 2) * A239609 n)

end

end A141687.P15202738242205437398

namespace A141687

/-- `and(1, A065305(n+2)*A239609(n))` -/
def P15202738242205437398.Spec : Prop :=
  ∀ n, P15202738242205437398.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P8745001012159522104

`and(1, A065305(n+2)*A243134(n))`
-/

namespace A141687.P8745001012159522104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065305 (n + 2) * A243134 n)

end

end A141687.P8745001012159522104

namespace A141687

/-- `and(1, A065305(n+2)*A243134(n))` -/
def P8745001012159522104.Spec : Prop :=
  ∀ n, P8745001012159522104.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P2731909277960552515

`and(1, A065305(n+2)²*A036086(n))`
-/

namespace A141687.P2731909277960552515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065305 (n + 2) ^ 2 * A036086 n)

end

end A141687.P2731909277960552515

namespace A141687

/-- `and(1, A065305(n+2)²*A036086(n))` -/
def P2731909277960552515.Spec : Prop :=
  ∀ n, P2731909277960552515.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P5510246697479842123

`and(1, (A065305(n+2)*A142993(n))²)`
-/

namespace A141687.P5510246697479842123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A065305 (n + 2) * A142993 n) ^ 2)

end

end A141687.P5510246697479842123

namespace A141687

/-- `and(1, (A065305(n+2)*A142993(n))²)` -/
def P5510246697479842123.Spec : Prop :=
  ∀ n, P5510246697479842123.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P9171025770096182130

`and(1, (A065305(n+2)*A144130(n))²)`
-/

namespace A141687.P9171025770096182130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A065305 (n + 2) * A144130 n) ^ 2)

end

end A141687.P9171025770096182130

namespace A141687

/-- `and(1, (A065305(n+2)*A144130(n))²)` -/
def P9171025770096182130.Spec : Prop :=
  ∀ n, P9171025770096182130.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P16356126239335825547

`and(1, A065305(n+2)²*A305722(n))`
-/

namespace A141687.P16356126239335825547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065305 (n + 2) ^ 2 * A305722 n)

end

end A141687.P16356126239335825547

namespace A141687

/-- `and(1, A065305(n+2)²*A305722(n))` -/
def P16356126239335825547.Spec : Prop :=
  ∀ n, P16356126239335825547.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P13121202222398478441

`and(A001222(A065091(n+1)), A065305(n+2))`
-/

namespace A141687.P13121202222398478441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A065091 (n + 1)).toNat) (A065305 (n + 2))

end

end A141687.P13121202222398478441

namespace A141687

/-- `and(A001222(A065091(n+1)), A065305(n+2))` -/
def P13121202222398478441.Spec : Prop :=
  ∀ n, P13121202222398478441.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P3969260716132609485

`and(A014963(A116366(n+1)), A065305(n+2))`
-/

namespace A141687.P3969260716132609485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (A116366 (n + 1)).toNat) (A065305 (n + 2))

end

end A141687.P3969260716132609485

namespace A141687

/-- `and(A014963(A116366(n+1)), A065305(n+2))` -/
def P3969260716132609485.Spec : Prop :=
  ∀ n, P3969260716132609485.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P6025882154560798749

`and(A001222(A187072(n+1)), A065305(n+2))`
-/

namespace A141687.P6025882154560798749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A187072 (n + 1)).toNat) (A065305 (n + 2))

end

end A141687.P6025882154560798749

namespace A141687

/-- `and(A001222(A187072(n+1)), A065305(n+2))` -/
def P6025882154560798749.Spec : Prop :=
  ∀ n, P6025882154560798749.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P2929690698179196870

`A001221(lcm(2, A065305(n+2))/A065305(n+2))`
-/

namespace A141687.P2929690698179196870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((Int.lcm 2 (A065305 (n + 2)) : ℚ) / (A065305 (n + 2) : ℚ))).toNat

end

end A141687.P2929690698179196870

namespace A141687

/-- `A001221(lcm(2, A065305(n+2))/A065305(n+2))` -/
def P2929690698179196870.Spec : Prop :=
  ∀ n, P2929690698179196870.a n = A141687 (n + 1)

end A141687

/-! ## A141687.P8310947476825663240

`and(A001221(A187072(3*n+1)), A065305(n+2))`
-/

namespace A141687.P8310947476825663240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A187072 (3 * n + 1)).toNat) (A065305 (n + 2))

end

end A141687.P8310947476825663240

namespace A141687

/-- `and(A001221(A187072(3*n+1)), A065305(n+2))` -/
def P8310947476825663240.Spec : Prop :=
  ∀ n, P8310947476825663240.a n = A141687 (n + 1)

end A141687

/-!
# A141688: Triangle T(n, k) = Fibonacci(2*k)*T(n-1, k) + Fibonacci(2*(n-k+1))*T(n-1, k-1), with T(n, 1) = T(n, n) = 1, read by rows.

The programs for A141688, the canonical program `A141688.P17712533817569733876` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141688 has offset 1).

The definition of A141688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*(col(n)+1))*T(n-1,k)+A000045(2*(row(n)+1-(col(n)+1)+1))*T(n-1,k-1)` (program `A141688.P17712533817569733876`, by `A141688.P17712533817569733876.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141688.P17712533817569733876

`A000045(2*(col(n)+1))*T(n-1,k)+A000045(2*(row(n)+1-(col(n)+1)+1))*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141688

/-- `A000045(2*(col(n)+1))*T(n-1,k)+A000045(2*(row(n)+1-(col(n)+1)+1))*T(n-1,k-1)` -/
def P17712533817569733876.Spec : Prop :=
  ∀ n, P17712533817569733876.a n = A141688 (n + 1)

theorem P17712533817569733876.correct : P17712533817569733876.Spec := by
  intro n
  simp only [A141688, Nat.add_sub_cancel]

end A141688

/-! ## A141688.P16530180671984795146

`A071507(A173585(n))`
-/

namespace A141688.P16530180671984795146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071507 (A173585 n).toNat

end

end A141688.P16530180671984795146

namespace A141688

/-- `A071507(A173585(n))` -/
def P16530180671984795146.Spec : Prop :=
  ∀ n, P16530180671984795146.a n = A141688 (n + 1)

end A141688

/-! ## A141688.P8941608831628109933

`A116626(A146990(n))`
-/

namespace A141688.P8941608831628109933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116626 (A146990 n).toNat

end

end A141688.P8941608831628109933

namespace A141688

/-- `A116626(A146990(n))` -/
def P8941608831628109933.Spec : Prop :=
  ∀ n, P8941608831628109933.a n = A141688 (n + 1)

end A141688

/-! ## A141688.P4310968002307760124

`A100417(A176428(n))`
-/

namespace A141688.P4310968002307760124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100417 (A176428 n).toNat

end

end A141688.P4310968002307760124

namespace A141688

/-- `A100417(A176428(n))` -/
def P4310968002307760124.Spec : Prop :=
  ∀ n, P4310968002307760124.a n = A141688 (n + 1)

end A141688

/-! ## A141688.P1838982513535361692

`A305878(A056941(n))`
-/

namespace A141688.P1838982513535361692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305878 (A056941 n).toNat

end

end A141688.P1838982513535361692

namespace A141688

/-- `A305878(A056941(n))` -/
def P1838982513535361692.Spec : Prop :=
  ∀ n, P1838982513535361692.a n = A141688 (n + 1)

end A141688

/-!
# A141689: Average of Eulerian numbers (A008292) and Pascal's triangle (A007318): t(n,m) = (A008292(n,m) + A007318(n,m))/2.

The programs for A141689, the canonical program `A141689.P17765687442390039653` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141689 has offset 1).

The definition of A141689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141689.P5472331037691997958

`A290448(n)+C(row(n), col(n))`
-/

namespace A141689.P5472331037691997958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A141689.P5472331037691997958

namespace A141689

/-- `A290448(n)+C(row(n), col(n))` -/
def P5472331037691997958.Spec : Prop :=
  ∀ n, P5472331037691997958.a n = A141689 (n + 1)

theorem P5472331037691997958.correct : P5472331037691997958.Spec := by
  intro n
  simp only [A141689, Nat.add_sub_cancel, A141689.P5472331037691997958.a, A141689.P17765687442390039653.a, A008292, A008292.P4316933739076784938.a, A014473, A014473.P14186955903002457323.a, A290448, A290448.P7491466255583086115.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141689

/-! ## A141689.P10239286220134521038

`A290448(n)+A007318(n)`
-/

namespace A141689.P10239286220134521038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + A007318 n

end

end A141689.P10239286220134521038

namespace A141689

/-- `A290448(n)+A007318(n)` -/
def P10239286220134521038.Spec : Prop :=
  ∀ n, P10239286220134521038.a n = A141689 (n + 1)

theorem P10239286220134521038.correct : P10239286220134521038.Spec := by
  intro n
  simp only [A141689, Nat.add_sub_cancel, A141689.P10239286220134521038.a, A141689.P17765687442390039653.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P4316933739076784938.a, A014473, A014473.P14186955903002457323.a, A290448, A290448.P7491466255583086115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141689

/-! ## A141689.P14532831651904406007

`A290448(n)+abs(A108086(n))`
-/

namespace A141689.P14532831651904406007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + |A108086 n|

end

end A141689.P14532831651904406007

namespace A141689

/-- `A290448(n)+abs(A108086(n))` -/
def P14532831651904406007.Spec : Prop :=
  ∀ n, P14532831651904406007.a n = A141689 (n + 1)

end A141689

/-! ## A141689.P16438824626841735671

`A290448(n)+abs(A117440(n))`
-/

namespace A141689.P16438824626841735671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + |A117440 n|

end

end A141689.P16438824626841735671

namespace A141689

/-- `A290448(n)+abs(A117440(n))` -/
def P16438824626841735671.Spec : Prop :=
  ∀ n, P16438824626841735671.a n = A141689 (n + 1)

end A141689

/-! ## A141689.P17702439641564952179

`A290448(n)+abs(A130595(n))`
-/

namespace A141689.P17702439641564952179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + |A130595 n|

end

end A141689.P17702439641564952179

namespace A141689

/-- `A290448(n)+abs(A130595(n))` -/
def P17702439641564952179.Spec : Prop :=
  ∀ n, P17702439641564952179.a n = A141689 (n + 1)

end A141689

/-! ## A141689.P149256994539565556

`A290448(n)+sqrt(A008459(n))`
-/

namespace A141689.P149256994539565556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A290448 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A141689.P149256994539565556

namespace A141689

/-- `A290448(n)+sqrt(A008459(n))` -/
def P149256994539565556.Spec : Prop :=
  ∀ n, P149256994539565556.a n = (A141689 (n + 1) : ℝ)

end A141689

/-! ## A141689.P8818237569705747261

`A290448(n)+Δ[A102363(n)]`
-/

namespace A141689.P8818237569705747261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + (f1 (n + 1) - f1 n)

end

end A141689.P8818237569705747261

namespace A141689

/-- `A290448(n)+Δ[A102363(n)]` -/
def P8818237569705747261.Spec : Prop :=
  ∀ n, P8818237569705747261.a n = A141689 (n + 1)

end A141689

/-! ## A141689.P4062618538752051317

`(A176487(n)+1)/2`
-/

namespace A141689.P4062618538752051317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176487 n + 1 : ℚ) / 2

end

end A141689.P4062618538752051317

namespace A141689

/-- `(A176487(n)+1)/2` -/
def P4062618538752051317.Spec : Prop :=
  ∀ n, P4062618538752051317.a n = (A141689 (n + 1) : ℚ)

end A141689

/-! ## A141689.P13706652352336978504

`A008292(n+1)-A290448(n)`
-/

namespace A141689.P13706652352336978504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A290448 n

end

end A141689.P13706652352336978504

namespace A141689

/-- `A008292(n+1)-A290448(n)` -/
def P13706652352336978504.Spec : Prop :=
  ∀ n, P13706652352336978504.a n = A141689 (n + 1)

end A141689

/-! ## A141689.P17409207338413026858

`(A008292(n+1)+A007318(n))/2`
-/

namespace A141689.P17409207338413026858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) + A007318 n : ℚ) / 2

end

end A141689.P17409207338413026858

namespace A141689

/-- `(A008292(n+1)+A007318(n))/2` -/
def P17409207338413026858.Spec : Prop :=
  ∀ n, P17409207338413026858.a n = (A141689 (n + 1) : ℚ)

end A141689

/-! ## A141689.P12186105422313358318

`(A008292(n+1)+abs(A117440(n)))/2`
-/

namespace A141689.P12186105422313358318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) + |A117440 n| : ℚ) / 2

end

end A141689.P12186105422313358318

namespace A141689

/-- `(A008292(n+1)+abs(A117440(n)))/2` -/
def P12186105422313358318.Spec : Prop :=
  ∀ n, P12186105422313358318.a n = (A141689 (n + 1) : ℚ)

end A141689

/-! ## A141689.P17765687442390039653

`round((A014473(n)+A008292(n+1))/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141689

/-- `round((A014473(n)+A008292(n+1))/2)` -/
def P17765687442390039653.Spec : Prop :=
  ∀ n, P17765687442390039653.a n = A141689 (n + 1)

theorem P17765687442390039653.correct : P17765687442390039653.Spec := by
  intro n
  simp only [A141689, Nat.add_sub_cancel]

end A141689

/-! ## A141689.P66808253744702192

`(A008292(n+1)+Δ[A102363(n)])/2`
-/

namespace A141689.P66808253744702192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A141689.P66808253744702192

namespace A141689

/-- `(A008292(n+1)+Δ[A102363(n)])/2` -/
def P66808253744702192.Spec : Prop :=
  ∀ n, P66808253744702192.a n = (A141689 (n + 1) : ℚ)

end A141689

/-! ## A141689.P11287627270386012829

`(A123125(A014132(n+1))+A007318(n))/2`
-/

namespace A141689.P11287627270386012829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123125 (A014132 (n + 1)).toNat + A007318 n : ℚ) / 2

end

end A141689.P11287627270386012829

namespace A141689

/-- `(A123125(A014132(n+1))+A007318(n))/2` -/
def P11287627270386012829.Spec : Prop :=
  ∀ n, P11287627270386012829.a n = (A141689 (n + 1) : ℚ)

end A141689

/-! ## A141689.P11523855820386357492

`ceil((A141690(n)+A131060(n))/4)`
-/

namespace A141689.P11523855820386357492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141690 n + A131060 n : ℚ) / 4⌉

end

end A141689.P11523855820386357492

namespace A141689

/-- `ceil((A141690(n)+A131060(n))/4)` -/
def P11523855820386357492.Spec : Prop :=
  ∀ n, P11523855820386357492.a n = A141689 (n + 1)

end A141689

/-! ## A141689.P5082134879951511219

`(A141686(n+1)+A008459(n))/A028326(n)`
-/

namespace A141689.P5082134879951511219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141686 (n + 1) + A008459 n : ℚ) / (A028326 n : ℚ)

end

end A141689.P5082134879951511219

namespace A141689

/-- `(A141686(n+1)+A008459(n))/A028326(n)` -/
def P5082134879951511219.Spec : Prop :=
  ∀ n, P5082134879951511219.a n = (A141689 (n + 1) : ℚ)

end A141689

/-! ## A141689.P5092189072032960585

`(A141686(n+1)+A007318(n)²)/A028326(n)`
-/

namespace A141689.P5092189072032960585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141686 (n + 1) + A007318 n ^ 2 : ℚ) / (A028326 n : ℚ)

end

end A141689.P5092189072032960585

namespace A141689

/-- `(A141686(n+1)+A007318(n)²)/A028326(n)` -/
def P5092189072032960585.Spec : Prop :=
  ∀ n, P5092189072032960585.a n = (A141689 (n + 1) : ℚ)

end A141689

/-! ## A141689.P1352368483702887977

`2*A154334(n)-A168517(n)`
-/

namespace A141689.P1352368483702887977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154334 n - A168517 n

end

end A141689.P1352368483702887977

namespace A141689

/-- `2*A154334(n)-A168517(n)` -/
def P1352368483702887977.Spec : Prop :=
  ∀ n, P1352368483702887977.a n = A141689 (n + 1)

end A141689

/-! ## A141689.P15438876619987235096

`(A007318(n)+sqrt(A177823(n+1)))/2`
-/

namespace A141689.P15438876619987235096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A007318 n : ℝ) + Real.sqrt (A177823 (n + 1) : ℝ)) / 2

end

end A141689.P15438876619987235096

namespace A141689

/-- `(A007318(n)+sqrt(A177823(n+1)))/2` -/
def P15438876619987235096.Spec : Prop :=
  ∀ n, P15438876619987235096.a n = (A141689 (n + 1) : ℝ)

end A141689

/-!
# A141690: Triangle t(n,m) = 2*A008292(n+1,m+1) - A007318(n,m), a linear combination of Eulerian numbers and Pascal's triangle, 0 <= m <= n.

The programs for A141690, the canonical program `A141690.P13611262671845219005` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141690 has offset 0).

The definition of A141690 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141690.P13611262671845219005

`2*A008292(C(row(n)+1, 2)+col(n)+1)-A007318(C(row(n)+1, 2)+col(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141690

/-- `2*A008292(C(row(n)+1, 2)+col(n)+1)-A007318(C(row(n)+1, 2)+col(n))` -/
def P13611262671845219005.Spec : Prop :=
  ∀ n, P13611262671845219005.a n = A141690 n

theorem P13611262671845219005.correct : P13611262671845219005.Spec := by
  intro n
  simp only [A141690]

end A141690

/-! ## A141690.P13533753313961871829

`A176200(n)-A014473(n)`
-/

namespace A141690.P13533753313961871829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n - A014473 n

end

end A141690.P13533753313961871829

namespace A141690

/-- `A176200(n)-A014473(n)` -/
def P13533753313961871829.Spec : Prop :=
  ∀ n, P13533753313961871829.a n = A141690 n

end A141690

/-! ## A141690.P16031427252602632548

`A176200(n)+1-A007318(n)`
-/

namespace A141690.P16031427252602632548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A007318 n)

end

end A141690.P16031427252602632548

namespace A141690

/-- `A176200(n)+1-A007318(n)` -/
def P16031427252602632548.Spec : Prop :=
  ∀ n, P16031427252602632548.a n = A141690 n

end A141690

/-! ## A141690.P2602291788358233684

`2*A176487(n)-A131060(n)`
-/

namespace A141690.P2602291788358233684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176487 n - A131060 n

end

end A141690.P2602291788358233684

namespace A141690

/-- `2*A176487(n)-A131060(n)` -/
def P2602291788358233684.Spec : Prop :=
  ∀ n, P2602291788358233684.a n = A141690 n

end A141690

/-! ## A141690.P1589277232017455012

`2*A008292(n+1)-A007318(n)`
-/

namespace A141690.P1589277232017455012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A007318 n

end

end A141690.P1589277232017455012

namespace A141690

/-- `2*A008292(n+1)-A007318(n)` -/
def P1589277232017455012.Spec : Prop :=
  ∀ n, P1589277232017455012.a n = A141690 n

end A141690

/-! ## A141690.P17259727942417130260

`2*A008292(n+1)-abs(A117440(n))`
-/

namespace A141690.P17259727942417130260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - |A117440 n|

end

end A141690.P17259727942417130260

namespace A141690

/-- `2*A008292(n+1)-abs(A117440(n))` -/
def P17259727942417130260.Spec : Prop :=
  ∀ n, P17259727942417130260.a n = A141690 n

end A141690

/-! ## A141690.P7718252655473626315

`2*A008292(n+1)-Δ[A102363(n)]`
-/

namespace A141690.P7718252655473626315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - (f1 (n + 1) - f1 n)

end

end A141690.P7718252655473626315

namespace A141690

/-- `2*A008292(n+1)-Δ[A102363(n)]` -/
def P7718252655473626315.Spec : Prop :=
  ∀ n, P7718252655473626315.a n = A141690 n

end A141690

/-! ## A141690.P8648766425941869755

`(A141696(n+1)+A008292(n+1))/2`
-/

namespace A141690.P8648766425941869755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141696 (n + 1) + A008292 (n + 1) : ℚ) / 2

end

end A141690.P8648766425941869755

namespace A141690

/-- `(A141696(n+1)+A008292(n+1))/2` -/
def P8648766425941869755.Spec : Prop :=
  ∀ n, P8648766425941869755.a n = (A141690 n : ℚ)

theorem P8648766425941869755.correct : P8648766425941869755.Spec := by
  intro n
  simp only [A141690, Nat.add_sub_cancel, A141690.P8648766425941869755.a, A141690.P13611262671845219005.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P4316933739076784938.a, A141696, A141696.P6177568062758844150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141690

/-! ## A141690.P2408337100620710863

`A007318(n)-(A109128(n)-A176200(n))`
-/

namespace A141690.P2408337100620710863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A109128 n - A176200 n)

end

end A141690.P2408337100620710863

namespace A141690

/-- `A007318(n)-(A109128(n)-A176200(n))` -/
def P2408337100620710863.Spec : Prop :=
  ∀ n, P2408337100620710863.a n = A141690 n

end A141690

/-! ## A141690.P3389653088534127723

`2*A123125(A014132(n+1))-A007318(n)`
-/

namespace A141690.P3389653088534127723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123125 (A014132 (n + 1)).toNat - A007318 n

end

end A141690.P3389653088534127723

namespace A141690

/-- `2*A123125(A014132(n+1))-A007318(n)` -/
def P3389653088534127723.Spec : Prop :=
  ∀ n, P3389653088534127723.a n = A141690 n

end A141690

/-! ## A141690.P13354125594305871441

`A290448(n)+A290448(n)+A008292(n+1)`
-/

namespace A141690.P13354125594305871441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + (A290448 n + A008292 (n + 1))

end

end A141690.P13354125594305871441

namespace A141690

/-- `A290448(n)+A290448(n)+A008292(n+1)` -/
def P13354125594305871441.Spec : Prop :=
  ∀ n, P13354125594305871441.a n = A141690 n

end A141690

/-! ## A141690.P12577312461107018550

`A008292(n+1)+A168524(n)-A168523(n)`
-/

namespace A141690.P12577312461107018550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A168524 n - A168523 n)

end

end A141690.P12577312461107018550

namespace A141690

/-- `A008292(n+1)+A168524(n)-A168523(n)` -/
def P12577312461107018550.Spec : Prop :=
  ∀ n, P12577312461107018550.a n = A141690 n

end A141690

/-! ## A141690.P7988628882224481289

`A141696(n+1)+A168523(n)-A168524(n)`
-/

namespace A141690.P7988628882224481289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141696 (n + 1) + (A168523 n - A168524 n)

end

end A141690.P7988628882224481289

namespace A141690

/-- `A141696(n+1)+A168523(n)-A168524(n)` -/
def P7988628882224481289.Spec : Prop :=
  ∀ n, P7988628882224481289.a n = A141690 n

end A141690

/-! ## A141690.P6760379511393173467

`2*A168517(n)-A154335(n)`
-/

namespace A141690.P6760379511393173467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168517 n - A154335 n

end

end A141690.P6760379511393173467

namespace A141690

/-- `2*A168517(n)-A154335(n)` -/
def P6760379511393173467.Spec : Prop :=
  ∀ n, P6760379511393173467.a n = A141690 n

end A141690

/-! ## A141690.P9681028098564737614

`2*sqrt(A177823(n+1))-A007318(n)`
-/

namespace A141690.P9681028098564737614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A177823 (n + 1) : ℝ) - (A007318 n : ℝ)

end

end A141690.P9681028098564737614

namespace A141690

/-- `2*sqrt(A177823(n+1))-A007318(n)` -/
def P9681028098564737614.Spec : Prop :=
  ∀ n, P9681028098564737614.a n = (A141690 n : ℝ)

end A141690

/-!
# A141691: A linear combination of Eulerian numbers (A008292) and Pascal's triangle (A007318); t(n,m)=(3*A008292(n,m)-A007318(n,m))/2.

The programs for A141691, there is no canonical definition to state claims against.
-/

/-! ## A141691.P12337463662902955597

`A141690(n)-A290448(n)`
-/

namespace A141691.P12337463662902955597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n - A290448 n

end

end A141691.P12337463662902955597

/-! ## A141691.P363284954074114457

`A290448(n)+A008292(n+1)`
-/

namespace A141691.P363284954074114457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + A008292 (n + 1)

end

end A141691.P363284954074114457

/-! ## A141691.P17955682122911756420

`A007318(n)+3*A290448(n)`
-/

namespace A141691.P17955682122911756420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 3 * A290448 n

end

end A141691.P17955682122911756420

/-! ## A141691.P5284768649322190053

`2*A154334(n)-A168551(n)`
-/

namespace A141691.P5284768649322190053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154334 n - A168551 n

end

end A141691.P5284768649322190053

/-! ## A141691.P15923320687030315017

`A290448(n)+A123125(comp[∑[n]])`
-/

namespace A141691.P15923320687030315017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A141691.P15923320687030315017

/-! ## A141691.P13544423683834902034

`ceil(A290448(n)+A176200(n)/2)`
-/

namespace A141691.P13544423683834902034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A290448 n : ℚ) + (A176200 n : ℚ) / 2⌉

end

end A141691.P13544423683834902034

/-! ## A141691.P1493882146760909677

`Δ[A102363(n)]+3*A290448(n)`
-/

namespace A141691.P1493882146760909677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3 * A290448 n

end

end A141691.P1493882146760909677

/-! ## A141691.P10649251046346812430

`A141689(n+1)+2*A290448(n)`
-/

namespace A141691.P10649251046346812430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) + 2 * A290448 n

end

end A141691.P10649251046346812430

/-! ## A141691.P12011114437403635705

`(A141696(n+1)+A007318(n))/2`
-/

namespace A141691.P12011114437403635705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141696 (n + 1) + A007318 n : ℚ) / 2

end

end A141691.P12011114437403635705

/-! ## A141691.P8196423747821236234

`(A141690(n)+A008292(n+1))/2`
-/

namespace A141691.P8196423747821236234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141690 n + A008292 (n + 1) : ℚ) / 2

end

end A141691.P8196423747821236234

/-!
# A141692: Triangle read by rows: T(n,k) = n*(binomial(n - 1, k - 1) - binomial(n - 1, k)), 0 <= k <= n.

The programs for A141692, the canonical program `A141692.P12218177441024462840` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141692 has offset 0).

The definition of A141692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141692.P12218177441024462840

`row(n)*A112467(C(row(n)+1, 2)+col(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141692

/-- `row(n)*A112467(C(row(n)+1, 2)+col(n))` -/
def P12218177441024462840.Spec : Prop :=
  ∀ n, P12218177441024462840.a n = A141692 n

theorem P12218177441024462840.correct : P12218177441024462840.Spec := by
  intro n
  simp only [A141692]

end A141692

/-! ## A141692.P17981651985499839587

`(2*col(n)-row(n))*C(row(n), col(n))`
-/

namespace A141692.P17981651985499839587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A141692.P17981651985499839587

namespace A141692

/-- `(2*col(n)-row(n))*C(row(n), col(n))` -/
def P17981651985499839587.Spec : Prop :=
  ∀ n, P17981651985499839587.a n = A141692 n

end A141692

/-! ## A141692.P8433279383373754066

`row(n)*A008482(n)`
-/

namespace A141692.P8433279383373754066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) * A008482 n

end

end A141692.P8433279383373754066

namespace A141692

/-- `row(n)*A008482(n)` -/
def P8433279383373754066.Spec : Prop :=
  ∀ n, P8433279383373754066.a n = A141692 n

end A141692

/-! ## A141692.P892874506359616621

`row(n)*A112467(n)`
-/

namespace A141692.P892874506359616621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) * A112467 n

end

end A141692.P892874506359616621

namespace A141692

/-- `row(n)*A112467(n)` -/
def P892874506359616621.Spec : Prop :=
  ∀ n, P892874506359616621.a n = A141692 n

end A141692

/-! ## A141692.P9289332685625135432

`Δ[-(col(n)*A007318(n))]`
-/

namespace A141692.P9289332685625135432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((SequenceMachineLib.triCol n : ℤ) * A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141692.P9289332685625135432

namespace A141692

/-- `Δ[-(col(n)*A007318(n))]` -/
def P9289332685625135432.Spec : Prop :=
  ∀ n, P9289332685625135432.a n = A141692 n

end A141692

/-! ## A141692.P11027068055827991295

`Δ[-A097805(n)]*row(n)`
-/

namespace A141692.P11027068055827991295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (SequenceMachineLib.triRow n : ℤ)

end

end A141692.P11027068055827991295

namespace A141692

/-- `Δ[-A097805(n)]*row(n)` -/
def P11027068055827991295.Spec : Prop :=
  ∀ n, P11027068055827991295.a n = A141692 n

end A141692

/-! ## A141692.P2436459036825277489

`A003056(n)*A112467(n)`
-/

namespace A141692.P2436459036825277489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A112467 n

end

end A141692.P2436459036825277489

namespace A141692

/-- `A003056(n)*A112467(n)` -/
def P2436459036825277489.Spec : Prop :=
  ∀ n, P2436459036825277489.a n = A141692 n

end A141692

/-! ## A141692.P9311249474917040692

`-(A003056(n)*A037012(n))`
-/

namespace A141692.P9311249474917040692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A003056 n * A037012 n)

end

end A141692.P9311249474917040692

namespace A141692

/-- `-(A003056(n)*A037012(n))` -/
def P9311249474917040692.Spec : Prop :=
  ∀ n, P9311249474917040692.a n = A141692 n

end A141692

/-! ## A141692.P3852155114982991197

`Δ[A007318(n)-A103406(n)]`
-/

namespace A141692.P3852155114982991197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A103406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141692.P3852155114982991197

namespace A141692

/-- `Δ[A007318(n)-A103406(n)]` -/
def P3852155114982991197.Spec : Prop :=
  ∀ n, P3852155114982991197.a n = A141692 n

end A141692

/-! ## A141692.P1925402297550351245

`A128065(n+1)-A007318(n)`
-/

namespace A141692.P1925402297550351245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128065 (n + 1) - A007318 n

end

end A141692.P1925402297550351245

namespace A141692

/-- `A128065(n+1)-A007318(n)` -/
def P1925402297550351245.Spec : Prop :=
  ∀ n, P1925402297550351245.a n = A141692 n

end A141692

/-! ## A141692.P13067896737086228475

`A003506(n+1)-A134083(n)`
-/

namespace A141692.P13067896737086228475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - A134083 n

end

end A141692.P13067896737086228475

namespace A141692

/-- `A003506(n+1)-A134083(n)` -/
def P13067896737086228475.Spec : Prop :=
  ∀ n, P13067896737086228475.a n = A141692 n

end A141692

/-! ## A141692.P6036920450170399369

`A103406(n)-A093375(n+1)`
-/

namespace A141692.P6036920450170399369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n - A093375 (n + 1)

end

end A141692.P6036920450170399369

namespace A141692

/-- `A103406(n)-A093375(n+1)` -/
def P6036920450170399369.Spec : Prop :=
  ∀ n, P6036920450170399369.a n = A141692 n

end A141692

/-! ## A141692.P17782127198916690137

`(A127948(n)-1)*A007318(n)`
-/

namespace A141692.P17782127198916690137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127948 n - 1) * A007318 n

end

end A141692.P17782127198916690137

namespace A141692

/-- `(A127948(n)-1)*A007318(n)` -/
def P17782127198916690137.Spec : Prop :=
  ∀ n, P17782127198916690137.a n = A141692 n

end A141692

/-! ## A141692.P99328080953301901

`(n-A061579(n))*A007318(n)`
-/

namespace A141692.P99328080953301901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A061579 n) * A007318 n

end

end A141692.P99328080953301901

namespace A141692

/-- `(n-A061579(n))*A007318(n)` -/
def P99328080953301901.Spec : Prop :=
  ∀ n, P99328080953301901.a n = A141692 n

end A141692

/-! ## A141692.P15478771968187047407

`Δ[-(A002262(n)*A007318(n))]`
-/

namespace A141692.P15478771968187047407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002262 n * A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141692.P15478771968187047407

namespace A141692

/-- `Δ[-(A002262(n)*A007318(n))]` -/
def P15478771968187047407.Spec : Prop :=
  ∀ n, P15478771968187047407.a n = A141692 n

end A141692

/-! ## A141692.P10220747267149284814

`Δ[Δ[A102363(n)]-A103406(n)]`
-/

namespace A141692.P10220747267149284814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A103406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141692.P10220747267149284814

namespace A141692

/-- `Δ[Δ[A102363(n)]-A103406(n)]` -/
def P10220747267149284814.Spec : Prop :=
  ∀ n, P10220747267149284814.a n = A141692 n

end A141692

/-! ## A141692.P16841384346790980502

`(1-∑[A010054(n)])*A037012(n)`
-/

namespace A141692.P16841384346790980502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) * A037012 n

end

end A141692.P16841384346790980502

namespace A141692

/-- `(1-∑[A010054(n)])*A037012(n)` -/
def P16841384346790980502.Spec : Prop :=
  ∀ n, P16841384346790980502.a n = A141692 n

end A141692

/-! ## A141692.P9643239031732260413

`(n-A061579(n))*abs(A130595(n))`
-/

namespace A141692.P9643239031732260413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A061579 n) * |A130595 n|

end

end A141692.P9643239031732260413

namespace A141692

/-- `(n-A061579(n))*abs(A130595(n))` -/
def P9643239031732260413.Spec : Prop :=
  ∀ n, P9643239031732260413.a n = A141692 n

end A141692

/-! ## A141692.P5898296993042002210

`(n-A061579(n))*sqrt(A008459(n))`
-/

namespace A141692.P5898296993042002210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A061579 n : ℝ) * Real.sqrt (A008459 n : ℝ)

end

end A141692.P5898296993042002210

namespace A141692

/-- `(n-A061579(n))*sqrt(A008459(n))` -/
def P5898296993042002210.Spec : Prop :=
  ∀ n, P5898296993042002210.a n = (A141692 n : ℝ)

end A141692

/-! ## A141692.P11128734478304000606

`(n-A061579(n))*Δ[A102363(n)]`
-/

namespace A141692.P11128734478304000606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A061579 n) * (f1 (n + 1) - f1 n)

end

end A141692.P11128734478304000606

namespace A141692

/-- `(n-A061579(n))*Δ[A102363(n)]` -/
def P11128734478304000606.Spec : Prop :=
  ∀ n, P11128734478304000606.a n = A141692 n

end A141692

/-!
# A141693: Triangle read by rows: T(n,k) = (2*k - n)*A008292(n,k) with T(n,n) = n, 0 <= k <= n, where A008292 is the triangle of Eulerian numbers.

The programs for A141693, the canonical program `A141693.P16472658211825599345` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141693 has offset 0).

The definition of A141693 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141693.P16472658211825599345

`(2*col(n)-row(n))*A008292(C(row(n), 2)+col(n)+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141693

/-- `(2*col(n)-row(n))*A008292(C(row(n), 2)+col(n)+1)` -/
def P16472658211825599345.Spec : Prop :=
  ∀ n, P16472658211825599345.a n = A141693 n

theorem P16472658211825599345.correct : P16472658211825599345.Spec := by
  intro n
  simp only [A141693]

end A141693

/-! ## A141693.P11503473054608013720

`-(A028310(A173018(n))*A114327(n))`
-/

namespace A141693.P11503473054608013720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A028310 (A173018 n).toNat * A114327 n)

end

end A141693.P11503473054608013720

namespace A141693

/-- `-(A028310(A173018(n))*A114327(n))` -/
def P11503473054608013720.Spec : Prop :=
  ∀ n, P11503473054608013720.a n = A141693 n

end A141693

/-! ## A141693.P17563857421351832269

`(n-A061579(n))*A028310(A173018(n))`
-/

namespace A141693.P17563857421351832269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A061579 n) * A028310 (A173018 n).toNat

end

end A141693.P17563857421351832269

namespace A141693

/-- `(n-A061579(n))*A028310(A173018(n))` -/
def P17563857421351832269.Spec : Prop :=
  ∀ n, P17563857421351832269.a n = A141693 n

end A141693

/-! ## A141693.P3092832803020898552

`A028310(A173018(n))*A114327(A061579(n))`
-/

namespace A141693.P3092832803020898552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A173018 n).toNat * A114327 (A061579 n).toNat

end

end A141693.P3092832803020898552

namespace A141693

/-- `A028310(A173018(n))*A114327(A061579(n))` -/
def P3092832803020898552.Spec : Prop :=
  ∀ n, P3092832803020898552.a n = A141693 n

end A141693

/-! ## A141693.P2964301040347450024

`(A025444(n)-A114327(n))*A028310(A173018(n))`
-/

namespace A141693.P2964301040347450024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025444 n - A114327 n) * A028310 (A173018 n).toNat

end

end A141693.P2964301040347450024

namespace A141693

/-- `(A025444(n)-A114327(n))*A028310(A173018(n))` -/
def P2964301040347450024.Spec : Prop :=
  ∀ n, P2964301040347450024.a n = A141693 n

end A141693

/-!
# A141694: a(n) = 22*n + 12.

The programs for A141694, the canonical program `A141694.P14688773505282126803` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141694 has offset 0).

The definition of A141694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*n+12` (program `A141694.P14688773505282126803`, by `A141694.P14688773505282126803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141694.P14688773505282126803

`22*n+12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141694

/-- `22*n+12` -/
def P14688773505282126803.Spec : Prop :=
  ∀ n, (P14688773505282126803.a n : ℤ) = A141694 n

theorem P14688773505282126803.correct : P14688773505282126803.Spec := by
  intro n
  simp only [A141694]

end A141694

/-!
# A141695: Triangle T(n,m) = A120070(n,m)-A143814(n,m) read by rows, 1<=m<n.

The programs for A141695, there is no canonical definition to state claims against.
-/

/-! ## A141695.P3057287125559084067

`Δ[(1+col(n))²]`
-/

namespace A141695.P3057287125559084067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.triCol n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141695.P3057287125559084067

/-! ## A141695.P10294768880192037008

`Δ[(col(n)+1)^2]`
-/

namespace A141695.P10294768880192037008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141695.P10294768880192037008

/-! ## A141695.P3759799486431878997

`Δ[(col(n)+2)*col(n)]`
-/

namespace A141695.P3759799486431878997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2) * SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141695.P3759799486431878997

/-! ## A141695.P14824970895907610210

`Δ[(n+1-C(∑[char[∑[n]]], 2))²]`
-/

namespace A141695.P14824970895907610210
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141695.P14824970895907610210

/-! ## A141695.P10570986980430541832

`Δ[(C(round(sqrt(2*(n+1))), 2)-(n+1))²]`
-/

namespace A141695.P10570986980430541832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141695.P10570986980430541832

/-! ## A141695.P16769769589470562251

`Δ[(n+1-C(round(sqrt(2*(n+1))), 2))^2]`
-/

namespace A141695.P16769769589470562251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141695.P16769769589470562251

/-! ## A141695.P2263549875154789488

`Δ[A133819(n+1)]`
-/

namespace A141695.P2263549875154789488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141695.P2263549875154789488

/-! ## A141695.P901080966912762742

`Δ[runs[A056559(n)]²]`
-/

namespace A141695.P901080966912762742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A141695.P901080966912762742

/-! ## A141695.P15148119875792654592

`Δ[A002260(n+1)²]`
-/

namespace A141695.P15148119875792654592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141695.P15148119875792654592

/-! ## A141695.P5113979291440415473

`Δ[(A002262(n)+1)²]`
-/

namespace A141695.P5113979291440415473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141695.P5113979291440415473

/-!
# A141696: Triangle read by rows, T(n, k) = ( ( 6 * Sum_{j=0..k+1} (-1)^j * binomial(n+1, j) * (k-j+1)^n ) - 4 * binomial(n-1, k) ) / 2.

The programs for A141696, the canonical program `A141696.P6177568062758844150` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141696 has offset 1).

The definition of A141696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141696.P4764933552064453205

`A141690(n)+2*A290448(n)`
-/

namespace A141696.P4764933552064453205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n + 2 * A290448 n

end

end A141696.P4764933552064453205

namespace A141696

/-- `A141690(n)+2*A290448(n)` -/
def P4764933552064453205.Spec : Prop :=
  ∀ n, P4764933552064453205.a n = A141696 (n + 1)

end A141696

/-! ## A141696.P16567849067841351380

`A007318(n)+6*A290448(n)`
-/

namespace A141696.P16567849067841351380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 6 * A290448 n

end

end A141696.P16567849067841351380

namespace A141696

/-- `A007318(n)+6*A290448(n)` -/
def P16567849067841351380.Spec : Prop :=
  ∀ n, P16567849067841351380.a n = A141696 (n + 1)

end A141696

/-! ## A141696.P6177568062758844150

`2*A141690(n)-A008292(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141696

/-- `2*A141690(n)-A008292(n+1)` -/
def P6177568062758844150.Spec : Prop :=
  ∀ n, P6177568062758844150.a n = A141696 (n + 1)

theorem P6177568062758844150.correct : P6177568062758844150.Spec := by
  intro n
  simp only [A141696, Nat.add_sub_cancel]

end A141696

/-! ## A141696.P7054815608091759679

`3*A008292(n+1)-A028326(n)`
-/

namespace A141696.P7054815608091759679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008292 (n + 1) - A028326 n

end

end A141696.P7054815608091759679

namespace A141696

/-- `3*A008292(n+1)-A028326(n)` -/
def P7054815608091759679.Spec : Prop :=
  ∀ n, P7054815608091759679.a n = A141696 (n + 1)

end A141696

/-! ## A141696.P11210278062296167186

`A008292(n+1)+4*A290448(n)`
-/

namespace A141696.P11210278062296167186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + 4 * A290448 n

end

end A141696.P11210278062296167186

namespace A141696

/-- `A008292(n+1)+4*A290448(n)` -/
def P11210278062296167186.Spec : Prop :=
  ∀ n, P11210278062296167186.a n = A141696 (n + 1)

end A141696

/-! ## A141696.P3152923894693065748

`3*A123125(∑[A035214(n)])-A028326(n)`
-/

namespace A141696.P3152923894693065748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A123125 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A028326 n

end

end A141696.P3152923894693065748

namespace A141696

/-- `3*A123125(∑[A035214(n)])-A028326(n)` -/
def P3152923894693065748.Spec : Prop :=
  ∀ n, P3152923894693065748.a n = A141696 (n + 1)

end A141696

/-! ## A141696.P3533767848235291615

`A008292(n+1)+A141690(n)-A007318(n)`
-/

namespace A141696.P3533767848235291615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A141690 n - A007318 n)

end

end A141696.P3533767848235291615

namespace A141696

/-- `A008292(n+1)+A141690(n)-A007318(n)` -/
def P3533767848235291615.Spec : Prop :=
  ∀ n, P3533767848235291615.a n = A141696 (n + 1)

end A141696

/-! ## A141696.P9825354855829569171

`A008292(n+1)+A176200(n)-A109128(n)`
-/

namespace A141696.P9825354855829569171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A176200 n - A109128 n)

end

end A141696.P9825354855829569171

namespace A141696

/-- `A008292(n+1)+A176200(n)-A109128(n)` -/
def P9825354855829569171.Spec : Prop :=
  ∀ n, P9825354855829569171.a n = A141696 (n + 1)

end A141696

/-! ## A141696.P8853471670661750280

`A141690(n)+A168524(n)-A168523(n)`
-/

namespace A141696.P8853471670661750280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n + (A168524 n - A168523 n)

end

end A141696.P8853471670661750280

namespace A141696

/-- `A141690(n)+A168524(n)-A168523(n)` -/
def P8853471670661750280.Spec : Prop :=
  ∀ n, P8853471670661750280.a n = A141696 (n + 1)

end A141696

/-! ## A141696.P5984323424686636174

`2*A168523(n)-A154335(n)`
-/

namespace A141696.P5984323424686636174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168523 n - A154335 n

end

end A141696.P5984323424686636174

namespace A141696

/-- `2*A168523(n)-A154335(n)` -/
def P5984323424686636174.Spec : Prop :=
  ∀ n, P5984323424686636174.a n = A141696 (n + 1)

end A141696

/-!
# A141697: T(n,k) = (q*Sum_{j=0..k+1} (-1)^j*binomial(n+1, j)*(k+1-j)^n - p*binomial(n-1, k))/2 where p=12 and q=14.

The programs for A141697, the canonical program `A141697.P6052672182441989793` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141697 has offset 1).

The definition of A141697 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A154337, A168524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141697.P6052672182441989793

`3*A168524(n)-2*A154337(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141697

/-- `3*A168524(n)-2*A154337(n)` -/
def P6052672182441989793.Spec : Prop :=
  ∀ n, P6052672182441989793.a n = A141697 (n + 1)

theorem P6052672182441989793.correct : P6052672182441989793.Spec := by
  intro n
  simp only [A141697, Nat.add_sub_cancel]

end A141697

/-! ## A141697.P4615586622297424482

`A141690(n)+10*A290448(n)`
-/

namespace A141697.P4615586622297424482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141690 n + 10 * A290448 n

end

end A141697.P4615586622297424482

namespace A141697

/-- `A141690(n)+10*A290448(n)` -/
def P4615586622297424482.Spec : Prop :=
  ∀ n, P4615586622297424482.a n = A141697 (n + 1)

end A141697

/-! ## A141697.P14019769261888696672

`A007318(n)+14*A290448(n)`
-/

namespace A141697.P14019769261888696672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 14 * A290448 n

end

end A141697.P14019769261888696672

namespace A141697

/-- `A007318(n)+14*A290448(n)` -/
def P14019769261888696672.Spec : Prop :=
  ∀ n, P14019769261888696672.a n = A141697 (n + 1)

end A141697

/-! ## A141697.P4419598506764532018

`A008292(n+1)+12*A290448(n)`
-/

namespace A141697.P4419598506764532018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + 12 * A290448 n

end

end A141697.P4419598506764532018

namespace A141697

/-- `A008292(n+1)+12*A290448(n)` -/
def P4419598506764532018.Spec : Prop :=
  ∀ n, P4419598506764532018.a n = A141697 (n + 1)

end A141697

/-! ## A141697.P13898594454953601026

`A141689(n+1)+13*A290448(n)`
-/

namespace A141697.P13898594454953601026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) + 13 * A290448 n

end

end A141697.P13898594454953601026

namespace A141697

/-- `A141689(n+1)+13*A290448(n)` -/
def P13898594454953601026.Spec : Prop :=
  ∀ n, P13898594454953601026.a n = A141697 (n + 1)

end A141697

/-!
# A141698: Arrange the distinct prime divisors of each non-prime-power positive integer n in order from smallest to largest. n is included in sequence A141698 if the differences between consecutive primes in the arrangement of primes are all powers of 2 (including possibly 1).

The programs for A141698, there is no canonical definition to state claims against.
-/

/-! ## A141698.P4337896839963412297

`eq[1, A000120(A178921(n+1))]+1`
-/

namespace A141698.P4337896839963412297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A178921 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A141698.P4337896839963412297

/-! ## A141698.P4478368467846876214

`eq[1, A000120(A178921(A028310(n)))]`
-/

namespace A141698.P4478368467846876214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A178921 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141698.P4478368467846876214

/-! ## A141698.P16258831199231134143

`∩[A278638(n+1), A346132(n+1)]`
-/

namespace A141698.P16258831199231134143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141698.P16258831199231134143

/-! ## A141698.P5677124512712286410

`lt[A176506(A375323(n+1)), A375300(2*n+1)]`
-/

namespace A141698.P5677124512712286410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (A375323 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375300 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141698.P5677124512712286410

/-! ## A141698.P12268658021778464625

`lt[A378120(2*n+1), A219208((2*n)²)]`
-/

namespace A141698.P12268658021778464625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378120 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219208 ((2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141698.P12268658021778464625

/-!
# A141699: Arrange the distinct prime divisors of each non-prime-power positive integer n in order from smallest to largest. n is included in sequence A141699 if the differences between consecutive primes in the arrangement of primes are all non-prime-powers.

The programs for A141699, there is no canonical definition to state claims against.
-/

/-! ## A141699.P11915945353548457299

`lt[A007875(A028310(n)), A231813(n)]`
-/

namespace A141699.P11915945353548457299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141699.P11915945353548457299

/-! ## A141699.P14814824788769630439

`lt[A007875(A257088(n)), A231813(n)]`
-/

namespace A141699.P14814824788769630439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141699.P14814824788769630439

/-! ## A141699.P8453673707090732663

`lt[A001221(A055456(n+1)), A231813(n)]`
-/

namespace A141699.P8453673707090732663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055456 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141699.P8453673707090732663

/-! ## A141699.P12992997587877980354

`lt[A001221(A233583(n+1)), A231813(n)]`
-/

namespace A141699.P12992997587877980354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141699.P12992997587877980354

/-! ## A141699.P12816348061086234653

`lt[A214540(A033630(n)), A231813(n)]`
-/

namespace A141699.P12816348061086234653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A033630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141699.P12816348061086234653

