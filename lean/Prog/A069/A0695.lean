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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A069501: a(1) = 9; a(n) = smallest multiple of a(n-1) which is a palindromic square.

The programs for A069501, there is no canonical definition to state claims against.
-/

/-! ## A069501.P523508140578880103

`A028817(A326853(3*(n+1))+A086615(n))`
-/

namespace A069501.P523508140578880103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028817 (A326853 (3 * (n + 1)) + A086615 n).toNat

end

end A069501.P523508140578880103

/-!
# A069502: a(1) = 1; a(n) = smallest multiple of a(n-1) which is a palindromic triangular number.

The programs for A069502, there is no canonical definition to state claims against.
-/

/-! ## A069502.P3333870726406928932

`A066569(A042445(n))`
-/

namespace A069502.P3333870726406928932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066569 (A042445 n).toNat

end

end A069502.P3333870726406928932

/-!
# A069505: a(1) = 1; a(n) = smallest palindromic number of the form k*a(n-1) + 1 with k > 1.

The programs for A069505, there is no canonical definition to state claims against.
-/

/-! ## A069505.P13858357429476577568

`A355221(A135246(∑[n]))`
-/

namespace A069505.P13858357429476577568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 (A135246 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A069505.P13858357429476577568

/-! ## A069505.P8681886803543196815

`A262038(∑[∑[A245406(n)]])`
-/

namespace A069505.P8681886803543196815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245406 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069505.P8681886803543196815

/-!
# A069506: a(1) = 2; a(n) = smallest palindromic number of the form k*a(n-1) + 1 with k > 1.

The programs for A069506, the canonical program `A069506.P12004557389417616494` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069506 has offset 0).

The definition of A069506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069506.P12004557389417616494

`11*a(n-1)-10*a(n-2)` with `a(0)=2, a(1)=5, a(2)=11, a(3)=111`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069506

/-- `11*a(n-1)-10*a(n-2)` -/
def P12004557389417616494.Spec : Prop :=
  ∀ n, P12004557389417616494.a n = A069506 n

theorem P12004557389417616494.correct : P12004557389417616494.Spec := by
  intro n
  simp only [A069506]

end A069506

/-! ## A069506.P15468997630788530055

`lcm(10, a(n-1))+1` with `a(0)=2, a(1)=5`
-/

namespace A069506.P15468997630788530055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  Nat.lcm 10 (a (n - 1)) + 1

end

end A069506.P15468997630788530055

namespace A069506

/-- `lcm(10, a(n-1))+1` -/
def P15468997630788530055.Spec : Prop :=
  ∀ n, (P15468997630788530055.a n : ℤ) = A069506 n

end A069506

/-! ## A069506.P10167969285707817932

`10*a(n-1)+1` with `a(0)=2, a(1)=5, a(2)=11`
-/

namespace A069506.P10167969285707817932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 11] fun n a =>
  10 * a (n - 1) + 1

end

end A069506.P10167969285707817932

namespace A069506

/-- `10*a(n-1)+1` -/
def P10167969285707817932.Spec : Prop :=
  ∀ n, (P10167969285707817932.a n : ℤ) = A069506 n

end A069506

/-! ## A069506.P17420585725061267529

`or(1, 10*a(n-1))` with `a(0)=2, a(1)=5, a(2)=11`
-/

namespace A069506.P17420585725061267529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 11] fun n a =>
  Nat.lor 1 (10 * a (n - 1))

end

end A069506.P17420585725061267529

namespace A069506

/-- `or(1, 10*a(n-1))` -/
def P17420585725061267529.Spec : Prop :=
  ∀ n, (P17420585725061267529.a n : ℤ) = A069506 n

end A069506

/-! ## A069506.P5591219513033673654

`xor(1, 10*a(n-1))` with `a(0)=2, a(1)=5, a(2)=11`
-/

namespace A069506.P5591219513033673654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 11] fun n a =>
  Nat.xor 1 (10 * a (n - 1))

end

end A069506.P5591219513033673654

namespace A069506

/-- `xor(1, 10*a(n-1))` -/
def P5591219513033673654.Spec : Prop :=
  ∀ n, (P5591219513033673654.a n : ℤ) = A069506 n

end A069506

/-! ## A069506.P13072879440304371297

`a(n-1)+10^(n-1)` with `a(0)=2, a(1)=5, a(2)=11`
-/

namespace A069506.P13072879440304371297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 5, 11] fun n a =>
  a (n - 1) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A069506.P13072879440304371297

namespace A069506

/-- `a(n-1)+10^(n-1)` -/
def P13072879440304371297.Spec : Prop :=
  ∀ n, P13072879440304371297.a n = (A069506 n : ℚ)

end A069506

/-! ## A069506.P6944755724352855819

`or(3-(-1)^n, floor(10^n/9))`
-/

namespace A069506.P6944755724352855819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 - (-1) ^ n) ⌊(10 ^ n : ℚ) / 9⌋

end

end A069506.P6944755724352855819

namespace A069506

/-- `or(3-(-1)^n, floor(10^n/9))` -/
def P6944755724352855819.Spec : Prop :=
  ∀ n, P6944755724352855819.a n = A069506 n

end A069506

/-! ## A069506.P13441572935316023832

`A002281(n)%A093137(n)+2`
-/

namespace A069506.P13441572935316023832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002281 n) (A093137 n) + 2

end

end A069506.P13441572935316023832

namespace A069506

/-- `A002281(n)%A093137(n)+2` -/
def P13441572935316023832.Spec : Prop :=
  ∀ n, P13441572935316023832.a n = A069506 n

end A069506

/-!
# A069507: a(1) = 4; a(n) = smallest palindromic number of the form k*a(n-1) + 1 with k > 1.

The programs for A069507, the canonical program `A069507.P2736404165348284234` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069507 has offset 0).

The definition of A069507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069507.P2736404165348284234

`or(1, lcm(10, a(n-1)))` with `a(0)=4, a(1)=9, a(2)=55`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069507

/-- `or(1, lcm(10, a(n-1)))` -/
def P2736404165348284234.Spec : Prop :=
  ∀ n, (P2736404165348284234.a n : ℤ) = A069507 n

theorem P2736404165348284234.correct : P2736404165348284234.Spec := by
  intro n
  simp only [A069507]

end A069507

/-! ## A069507.P15996321146928301416

`record[10*a(n-1)+1]` with `a(0)=4, a(1)=9, a(2)=55, a(3)=1`
-/

namespace A069507.P15996321146928301416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 9, 55, 1] fun n f1 =>
  10 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069507.P15996321146928301416

namespace A069507

/-- `record[10*a(n-1)+1]` -/
def P15996321146928301416.Spec : Prop :=
  ∀ n, (P15996321146928301416.a n : ℤ) = A069507 n

end A069507

/-!
# A069508: a(1) = 6; a(n) = smallest palindromic number of the form k*a(n-1) + 1 with k > 1.

The programs for A069508, the canonical program `A069508.P7334050992793998524` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069508 has offset 0).

The definition of A069508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069508.P7334050992793998524

`or(1, lcm(10, a(n-1)))` with `a(0)=6, a(1)=55`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069508

/-- `or(1, lcm(10, a(n-1)))` -/
def P7334050992793998524.Spec : Prop :=
  ∀ n, (P7334050992793998524.a n : ℤ) = A069508 n

theorem P7334050992793998524.correct : P7334050992793998524.Spec := by
  intro n
  simp only [A069508]

end A069508

/-! ## A069508.P12564310150854688944

`A069510(A040006(n)+3+n)`
-/

namespace A069508.P12564310150854688944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069510 (A040006 n + 3 + (n : ℤ)).toNat

end

end A069508.P12564310150854688944

namespace A069508

/-- `A069510(A040006(n)+3+n)` -/
def P12564310150854688944.Spec : Prop :=
  ∀ n, P12564310150854688944.a n = A069508 n

end A069508

/-! ## A069508.P10905979397883235408

`A000042(n+1)*A070514(A002313(n+1))`
-/

namespace A069508.P10905979397883235408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A070514 (A002313 (n + 1)).toNat

end

end A069508.P10905979397883235408

namespace A069508

/-- `A000042(n+1)*A070514(A002313(n+1))` -/
def P10905979397883235408.Spec : Prop :=
  ∀ n, P10905979397883235408.a n = A069508 n

end A069508

/-! ## A069508.P8848982318201790437

`A069507(n+1)-A254006(Δ[A007504(n)])`
-/

namespace A069508.P8848982318201790437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069507 (n + 1) - A254006 (f1 (n + 1) - f1 n).toNat

end

end A069508.P8848982318201790437

namespace A069508

/-- `A069507(n+1)-A254006(Δ[A007504(n)])` -/
def P8848982318201790437.Spec : Prop :=
  ∀ n, P8848982318201790437.a n = A069508 n

end A069508

/-! ## A069508.P697065575532282670

`∑[10^n]*A070514(A323782(n+1))`
-/

namespace A069508.P697065575532282670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A070514 (A323782 (n + 1)).toNat

end

end A069508.P697065575532282670

namespace A069508

/-- `∑[10^n]*A070514(A323782(n+1))` -/
def P697065575532282670.Spec : Prop :=
  ∀ n, P697065575532282670.a n = A069508 n

end A069508

/-!
# A069510: a(1) = 1; a(n) = smallest palindrome of the form k*a(n-1) + 1.

The programs for A069510, there is no canonical definition to state claims against.
-/

/-! ## A069510.P12071465286459800016

`gcd(5, A070048(n))*A239090(n+1)`
-/

namespace A069510.P12071465286459800016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A070048 n) : ℤ) * A239090 (n + 1)

end

end A069510.P12071465286459800016

/-! ## A069510.P7735442521125370059

`gcd(n+1, A160816(n))*A239090(n+1)`
-/

namespace A069510.P7735442521125370059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A160816 n) : ℤ) * A239090 (n + 1)

end

end A069510.P7735442521125370059

/-! ## A069510.P8234064862007861183

`A028277(A033718(n))*A239090(n+1)`
-/

namespace A069510.P8234064862007861183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 (A033718 n).toNat * A239090 (n + 1)

end

end A069510.P8234064862007861183

/-! ## A069510.P16861720379875549081

`C(A239090(n+1), A007318(A051340(n)))`
-/

namespace A069510.P16861720379875549081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A239090 (n + 1)).toNat (A007318 (A051340 n).toNat).toNat

end

end A069510.P16861720379875549081

/-! ## A069510.P18263015387274629386

`C(A239090(n+1), A007318(A050873(n+1)))`
-/

namespace A069510.P18263015387274629386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A239090 (n + 1)).toNat (A007318 (A050873 (n + 1)).toNat).toNat

end

end A069510.P18263015387274629386

/-!
# A069511: Numbers in which starting from most significant digit the n-th digit is obtained by adding n to the (n-1)-st digit (the digit to the left of it) and then ignoring the carry. Alternately the n-th digit starting from the most significant digit is the n-th triangular number mod 10.

The programs for A069511, the canonical program `A069511.P4846276034806403119` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069511 has offset 1).

The definition of A069511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069511.P4846276034806403119

`10*a(n-1)+A000217(n+1)%10` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069511

/-- `10*a(n-1)+A000217(n+1)%10` -/
def P4846276034806403119.Spec : Prop :=
  ∀ n, P4846276034806403119.a n = A069511 (n + 1)

theorem P4846276034806403119.correct : P4846276034806403119.Spec := by
  intro n
  simp only [A069511, Nat.add_sub_cancel]

end A069511

/-! ## A069511.P11986739601024199381

`∑[n+1]%10+10*a(n-1)` with `a(0)=1`
-/

namespace A069511.P11986739601024199381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 10 + 10 * a (n - 1)

end

end A069511.P11986739601024199381

namespace A069511

/-- `∑[n+1]%10+10*a(n-1)` -/
def P11986739601024199381.Spec : Prop :=
  ∀ n, (P11986739601024199381.a n : ℤ) = A069511 (n + 1)

end A069511

/-! ## A069511.P9233410966290586973

`A008954(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A069511.P9233410966290586973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008954 (n + 1) + 10 * a (n - 1)

end

end A069511.P9233410966290586973

namespace A069511

/-- `A008954(n+1)+10*a(n-1)` -/
def P9233410966290586973.Spec : Prop :=
  ∀ n, P9233410966290586973.a n = A069511 (n + 1)

end A069511

/-!
# A069512: Geometric mean of digits = 2 and digits are in nondecreasing order.

The programs for A069512, there is no canonical definition to state claims against.
-/

/-! ## A069512.P13403629378822968353

`∩[A061426(n+1), A096105(n+1)]`
-/

namespace A069512.P13403629378822968353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069512.P13403629378822968353

/-! ## A069512.P15052298534310139764

`∩[A009994(n+1), A061426(n+1)]`
-/

namespace A069512.P15052298534310139764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069512.P15052298534310139764

/-! ## A069512.P10622311748588312350

`∩[A061426(n+1), A318275(n+1)]`
-/

namespace A069512.P10622311748588312350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069512.P10622311748588312350

/-! ## A069512.P13334905675453129138

`∩[A061426(n+1), A179239(n)]`
-/

namespace A069512.P13334905675453129138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069512.P13334905675453129138

/-! ## A069512.P7394558449091819262

`record[A004185(A061426(n+1))]`
-/

namespace A069512.P7394558449091819262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A061426 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069512.P7394558449091819262

/-!
# A069513: Characteristic function of the prime powers p^k, k >= 1.

The programs for A069513, the canonical program `A069513.P10236214883623494276` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069513 has offset 1).

The definition of A069513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069513.P10236214883623494276

`round(n/∏{e}[n+1, #+n])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069513

/-- `round(n/∏{e}[n+1, #+n])` -/
def P10236214883623494276.Spec : Prop :=
  ∀ n, P10236214883623494276.a n = A069513 (n + 1)

theorem P10236214883623494276.correct : P10236214883623494276.Spec := by
  intro n
  simp only [A069513, Nat.add_sub_cancel]

end A069513

/-! ## A069513.P18002834888195421005

`floor(n/∏{e}[n+1, n+1-#])`
-/

namespace A069513.P18002834888195421005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℤ) - (Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℚ)⌋

end

end A069513.P18002834888195421005

namespace A069513

/-- `floor(n/∏{e}[n+1, n+1-#])` -/
def P18002834888195421005.Spec : Prop :=
  ∀ n, P18002834888195421005.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P14306393964259999137

`round(n/∏{p}[n+1, n-1+#])`
-/

namespace A069513.P14306393964259999137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - 1 + (p : ℤ)) : ℤ) : ℚ))

end

end A069513.P14306393964259999137

namespace A069513

/-- `round(n/∏{p}[n+1, n-1+#])` -/
def P14306393964259999137.Spec : Prop :=
  ∀ n, P14306393964259999137.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P4565373245614583167

`floor(2*n/∏{p}[n+1, n-1+#])`
-/

namespace A069513.P4565373245614583167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - 1 + (p : ℤ)) : ℤ) : ℚ)⌋

end

end A069513.P4565373245614583167

namespace A069513

/-- `floor(2*n/∏{p}[n+1, n-1+#])` -/
def P4565373245614583167.Spec : Prop :=
  ∀ n, P4565373245614583167.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P3084334109067927126

`char[A181062(n+2)]`
-/

namespace A069513.P3084334109067927126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A069513.P3084334109067927126

namespace A069513

/-- `char[A181062(n+2)]` -/
def P3084334109067927126.Spec : Prop :=
  ∀ n, (P3084334109067927126.a n : ℤ) = A069513 (n + 1)

end A069513

/-! ## A069513.P11640668297974011592

`A353678(4*(n+1))`
-/

namespace A069513.P11640668297974011592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353678 (4 * (n + 1))

end

end A069513.P11640668297974011592

namespace A069513

/-- `A353678(4*(n+1))` -/
def P11640668297974011592.Spec : Prop :=
  ∀ n, P11640668297974011592.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P8222308834847143738

`A071570(n+1)%2`
-/

namespace A069513.P8222308834847143738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071570 (n + 1)) 2

end

end A069513.P8222308834847143738

namespace A069513

/-- `A071570(n+1)%2` -/
def P8222308834847143738.Spec : Prop :=
  ∀ n, P8222308834847143738.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P7247792857041960843

`A273711(n+1)%2`
-/

namespace A069513.P7247792857041960843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273711 (n + 1)) 2

end

end A069513.P7247792857041960843

namespace A069513

/-- `A273711(n+1)%2` -/
def P7247792857041960843.Spec : Prop :=
  ∀ n, P7247792857041960843.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P17242091981808790507

`3%A287841(n+1)`
-/

namespace A069513.P17242091981808790507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A287841 (n + 1))

end

end A069513.P17242091981808790507

namespace A069513

/-- `3%A287841(n+1)` -/
def P17242091981808790507.Spec : Prop :=
  ∀ n, P17242091981808790507.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P1404469027827184876

`val(A105561(n+1), 2)`
-/

namespace A069513.P1404469027827184876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105561 (n + 1)).toNat 2

end

end A069513.P1404469027827184876

namespace A069513

/-- `val(A105561(n+1), 2)` -/
def P1404469027827184876.Spec : Prop :=
  ∀ n, (P1404469027827184876.a n : ℤ) = A069513 (n + 1)

end A069513

/-! ## A069513.P17105205374286015198

`A010051(∏{p}[n+1, #])`
-/

namespace A069513.P17105205374286015198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069513.P17105205374286015198

namespace A069513

/-- `A010051(∏{p}[n+1, #])` -/
def P17105205374286015198.Spec : Prop :=
  ∀ n, P17105205374286015198.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P5392903878487792701

`A061007(∏{p}[n+1, #])`
-/

namespace A069513.P5392903878487792701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069513.P5392903878487792701

namespace A069513

/-- `A061007(∏{p}[n+1, #])` -/
def P5392903878487792701.Spec : Prop :=
  ∀ n, P5392903878487792701.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P1586792660726096193

`A100995(∏{p}[n+1, #])`
-/

namespace A069513.P1586792660726096193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069513.P1586792660726096193

namespace A069513

/-- `A100995(∏{p}[n+1, #])` -/
def P1586792660726096193.Spec : Prop :=
  ∀ n, P1586792660726096193.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P9382034838418243237

`A136566(∏{p}[n+1, #])`
-/

namespace A069513.P9382034838418243237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136566 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069513.P9382034838418243237

namespace A069513

/-- `A136566(∏{p}[n+1, #])` -/
def P9382034838418243237.Spec : Prop :=
  ∀ n, P9382034838418243237.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P2547543986334353490

`A136567(∏{p}[n+1, #])`
-/

namespace A069513.P2547543986334353490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136567 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069513.P2547543986334353490

namespace A069513

/-- `A136567(∏{p}[n+1, #])` -/
def P2547543986334353490.Spec : Prop :=
  ∀ n, P2547543986334353490.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P12858346611127835760

`A144101(∏{p}[n+1, #])`
-/

namespace A069513.P12858346611127835760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144101 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069513.P12858346611127835760

namespace A069513

/-- `A144101(∏{p}[n+1, #])` -/
def P12858346611127835760.Spec : Prop :=
  ∀ n, P12858346611127835760.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P3153811809008316799

`A294080(∏{p}[n+1, #])`
-/

namespace A069513.P3153811809008316799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294080 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069513.P3153811809008316799

namespace A069513

/-- `A294080(∏{p}[n+1, #])` -/
def P3153811809008316799.Spec : Prop :=
  ∀ n, P3153811809008316799.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P11199635922172489050

`A329615(∏{p}[n+1, #])`
-/

namespace A069513.P11199635922172489050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329615 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069513.P11199635922172489050

namespace A069513

/-- `A329615(∏{p}[n+1, #])` -/
def P11199635922172489050.Spec : Prop :=
  ∀ n, P11199635922172489050.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P4824436316201074019

`A349612(∏{p}[n+1, #])`
-/

namespace A069513.P4824436316201074019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069513.P4824436316201074019

namespace A069513

/-- `A349612(∏{p}[n+1, #])` -/
def P4824436316201074019.Spec : Prop :=
  ∀ n, P4824436316201074019.a n = A069513 (n + 1)

end A069513

/-! ## A069513.P15757693395380365037

`∑{e}[A014963(n+1), #]`
-/

namespace A069513.P15757693395380365037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A069513.P15757693395380365037

namespace A069513

/-- `∑{e}[A014963(n+1), #]` -/
def P15757693395380365037.Spec : Prop :=
  ∀ n, (P15757693395380365037.a n : ℤ) = A069513 (n + 1)

end A069513

/-!
# A069514: Numbers n such that sigma(reversal(n)) = reversal(sigma(n)). Ignore leading 0's.

The programs for A069514, there is no canonical definition to state claims against.
-/

/-! ## A069514.P15433587605269813680

`∑[A173021(∑[A000757(n)])]`
-/

namespace A069514.P15433587605269813680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173021 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069514.P15433587605269813680

/-! ## A069514.P7766367734532690233

`A002024(A267406(n+1)+A000217(n))`
-/

namespace A069514.P7766367734532690233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A267406 (n + 1) + A000217 n).toNat

end

end A069514.P7766367734532690233

/-! ## A069514.P13839979509876378245

`A002024(A267406(n+1)+A182838(n))`
-/

namespace A069514.P13839979509876378245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A267406 (n + 1) + A182838 n).toNat

end

end A069514.P13839979509876378245

/-! ## A069514.P3156674784797456943

`A002024(A267406(n+1)+A259823(n))`
-/

namespace A069514.P3156674784797456943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A267406 (n + 1) + A259823 n).toNat

end

end A069514.P3156674784797456943

/-! ## A069514.P226599857944400276

`A002024(or(A000096(n), A267406(n+1)))`
-/

namespace A069514.P226599857944400276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A000096 n) (A267406 (n + 1))).toNat

end

end A069514.P226599857944400276

/-!
# A069515: Number of transpositions (interchanges of adjacent digits, sometimes called inversions) needed to change all n-digit base 3 numbers into nondecreasing order.

The programs for A069515, the canonical program `A069515.P2287734890594471783` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069515 has offset 1).

The definition of A069515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069515.P2287734890594471783

`n*(n+2)*3^(n-1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069515

/-- `n*(n+2)*3^(n-1)` -/
def P2287734890594471783.Spec : Prop :=
  ∀ n, P2287734890594471783.a n = (A069515 (n + 1) : ℚ)

end A069515

/-! ## A069515.P9762072673109631832

`Δ[3^(n-1)*C(n, 2)]`
-/

namespace A069515.P9762072673109631832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose n 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069515.P9762072673109631832

namespace A069515

/-- `Δ[3^(n-1)*C(n, 2)]` -/
def P9762072673109631832.Spec : Prop :=
  ∀ n, P9762072673109631832.a n = (A069515 (n + 1) : ℚ)

end A069515

/-! ## A069515.P2702174455201537100

`Δ[C(n, 2)/3^(1-n)]`
-/

namespace A069515.P2702174455201537100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / (3 : ℚ) ^ (1 - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069515.P2702174455201537100

namespace A069515

/-- `Δ[C(n, 2)/3^(1-n)]` -/
def P2702174455201537100.Spec : Prop :=
  ∀ n, P2702174455201537100.a n = (A069515 (n + 1) : ℚ)

end A069515

/-! ## A069515.P13231077192695865438

`record[(n-2)*n*3^(n-3)]`
-/

namespace A069515.P13231077192695865438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) * ((n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069515.P13231077192695865438

namespace A069515

/-- `record[(n-2)*n*3^(n-3)]` -/
def P13231077192695865438.Spec : Prop :=
  ∀ n, P13231077192695865438.a n = (A069515 (n + 1) : ℚ)

end A069515

/-! ## A069515.P17708792169372853331

`lcm(n, Δ[(∑[n]-n)*3^(n-1)])`
-/

namespace A069515.P17708792169372853331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A069515.P17708792169372853331

namespace A069515

/-- `lcm(n, Δ[(∑[n]-n)*3^(n-1)])` -/
def P17708792169372853331.Spec : Prop :=
  ∀ n, (P17708792169372853331.a n : ℤ) = A069515 (n + 1)

end A069515

/-! ## A069515.P3478391706909061328

`Δ[A129530(n)]`
-/

namespace A069515.P3478391706909061328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069515.P3478391706909061328

namespace A069515

/-- `Δ[A129530(n)]` -/
def P3478391706909061328.Spec : Prop :=
  ∀ n, P3478391706909061328.a n = A069515 (n + 1)

end A069515

/-! ## A069515.P18342714297164694231

`A229277(n)+3*a(n-1)` with `a(0)=0`
-/

namespace A069515.P18342714297164694231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A229277 n + 3 * a (n - 1)

end

end A069515.P18342714297164694231

namespace A069515

/-- `A229277(n)+3*a(n-1)` -/
def P18342714297164694231.Spec : Prop :=
  ∀ n, P18342714297164694231.a n = A069515 (n + 1)

end A069515

/-! ## A069515.P2305729274965545458

`n*(A288834(n+1)/3+2)-2*n`
-/

namespace A069515.P2305729274965545458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A288834 (n + 1) : ℚ) / 3 + 2) - (2 * n : ℚ)

end

end A069515.P2305729274965545458

namespace A069515

/-- `n*(A288834(n+1)/3+2)-2*n` -/
def P2305729274965545458.Spec : Prop :=
  ∀ n, P2305729274965545458.a n = (A069515 (n + 1) : ℚ)

end A069515

/-! ## A069515.P4464417026339148301

`Δ[A140429(n)*A161680(n)]`
-/

namespace A069515.P4464417026339148301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069515.P4464417026339148301

namespace A069515

/-- `Δ[A140429(n)*A161680(n)]` -/
def P4464417026339148301.Spec : Prop :=
  ∀ n, P4464417026339148301.a n = A069515 (n + 1)

end A069515

/-! ## A069515.P17114962632438601073

`A129530(n+1)-A129530(n)`
-/

namespace A069515.P17114962632438601073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129530 (n + 1) - A129530 n

end

end A069515.P17114962632438601073

namespace A069515

/-- `A129530(n+1)-A129530(n)` -/
def P17114962632438601073.Spec : Prop :=
  ∀ n, P17114962632438601073.a n = A069515 (n + 1)

end A069515

/-! ## A069515.P8816581207583731024

`A027472(n+3)-A036068(n)`
-/

namespace A069515.P8816581207583731024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027472 (n + 3) - A036068 n

end

end A069515.P8816581207583731024

namespace A069515

/-- `A027472(n+3)-A036068(n)` -/
def P8816581207583731024.Spec : Prop :=
  ∀ n, P8816581207583731024.a n = A069515 (n + 1)

end A069515

/-! ## A069515.P7404641273718738146

`A383136(n)+2*A383136(n)`
-/

namespace A069515.P7404641273718738146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 n + 2 * A383136 n

end

end A069515.P7404641273718738146

namespace A069515

/-- `A383136(n)+2*A383136(n)` -/
def P7404641273718738146.Spec : Prop :=
  ∀ n, P7404641273718738146.a n = A069515 (n + 1)

end A069515

/-! ## A069515.P2401051702518502890

`Δ[Δ[A124302(n)]*A161680(n)]`
-/

namespace A069515.P2401051702518502890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069515.P2401051702518502890

namespace A069515

/-- `Δ[Δ[A124302(n)]*A161680(n)]` -/
def P2401051702518502890.Spec : Prop :=
  ∀ n, P2401051702518502890.a n = A069515 (n + 1)

end A069515

/-! ## A069515.P16365123291105583384

`A000217(n)*A000244(n)-A129530(n)`
-/

namespace A069515.P16365123291105583384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000244 n - A129530 n

end

end A069515.P16365123291105583384

namespace A069515

/-- `A000217(n)*A000244(n)-A129530(n)` -/
def P16365123291105583384.Spec : Prop :=
  ∀ n, P16365123291105583384.a n = A069515 (n + 1)

end A069515

/-! ## A069515.P1898606400092480471

`n*A288834(n+1)/3`
-/

namespace A069515.P1898606400092480471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A288834 (n + 1) : ℚ) / 3

end

end A069515.P1898606400092480471

namespace A069515

/-- `n*A288834(n+1)/3` -/
def P1898606400092480471.Spec : Prop :=
  ∀ n, P1898606400092480471.a n = (A069515 (n + 1) : ℚ)

end A069515

/-! ## A069515.P8130251339922540640

`(n+2)*A036290(n)/3`
-/

namespace A069515.P8130251339922540640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A036290 n : ℚ) / 3

end

end A069515.P8130251339922540640

namespace A069515

/-- `(n+2)*A036290(n)/3` -/
def P8130251339922540640.Spec : Prop :=
  ∀ n, P8130251339922540640.a n = (A069515 (n + 1) : ℚ)

end A069515

/-! ## A069515.P5726245429128625284

`3^n*A005563(n)/3`
-/

namespace A069515.P5726245429128625284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * A005563 n : ℚ) / 3

end

end A069515.P5726245429128625284

namespace A069515

/-- `3^n*A005563(n)/3` -/
def P5726245429128625284.Spec : Prop :=
  ∀ n, P5726245429128625284.a n = (A069515 (n + 1) : ℚ)

end A069515

/-! ## A069515.P14460599259419790828

`A052791(n+2)/(n+1)`
-/

namespace A069515.P14460599259419790828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052791 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A069515.P14460599259419790828

namespace A069515

/-- `A052791(n+2)/(n+1)` -/
def P14460599259419790828.Spec : Prop :=
  ∀ n, P14460599259419790828.a n = (A069515 (n + 1) : ℚ)

end A069515

/-!
# A069516: Geometric mean of digits = 3 and digits are in nondecreasing order.

The programs for A069516, there is no canonical definition to state claims against.
-/

/-! ## A069516.P6683163843167128720

`∩[A061427(n+1), A096105(n+1)]`
-/

namespace A069516.P6683163843167128720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069516.P6683163843167128720

/-! ## A069516.P2771179433342343756

`∩[A096105(n+1), A061427(A348553(n))]`
-/

namespace A069516.P2771179433342343756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061427 (A348553 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069516.P2771179433342343756

/-! ## A069516.P2997624514942259009

`∩[A009994(n+1), A061427(n+1)]`
-/

namespace A069516.P2997624514942259009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069516.P2997624514942259009

/-! ## A069516.P9872306946520831945

`∩[A061427(n+1), A318275(n+1)]`
-/

namespace A069516.P9872306946520831945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069516.P9872306946520831945

/-! ## A069516.P11473013412286550644

`∩[A061427(n+1), A179239(n)]`
-/

namespace A069516.P11473013412286550644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069516.P11473013412286550644

/-!
# A069517: a(n) = (-1)*Sum_{d|n} (moebius(d)*(-1)^d).

The programs for A069517, the canonical program `A069517.P15893409822004204744` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069517 has offset 1).

The definition of A069517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069517.P15893409822004204744

`∏{p}[n+1, val(#², 2)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069517

/-- `∏{p}[n+1, val(#², 2)]` -/
def P15893409822004204744.Spec : Prop :=
  ∀ n, (P15893409822004204744.a n : ℤ) = A069517 (n + 1)

theorem P15893409822004204744.correct : P15893409822004204744.Spec := by
  intro n
  simp only [A069517, Nat.add_sub_cancel]

end A069517

/-! ## A069517.P18146582894089582493

`∏{p}[n+1, 2-2%#]`
-/

namespace A069517.P18146582894089582493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - ((2 % p : ℕ) : ℤ))

end

end A069517.P18146582894089582493

namespace A069517

/-- `∏{p}[n+1, 2-2%#]` -/
def P18146582894089582493.Spec : Prop :=
  ∀ n, P18146582894089582493.a n = A069517 (n + 1)

end A069517

/-! ## A069517.P4559907952776546426

`∏{p}[n+1, 2*val(#, 2)]`
-/

namespace A069517.P4559907952776546426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * SequenceMachineLib.valuation p 2

end

end A069517.P4559907952776546426

namespace A069517

/-- `∏{p}[n+1, 2*val(#, 2)]` -/
def P4559907952776546426.Spec : Prop :=
  ∀ n, (P4559907952776546426.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P2401767322358052044

`∏{p}[n+1, 2*C(2, #)]`
-/

namespace A069517.P2401767322358052044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * Nat.choose 2 p

end

end A069517.P2401767322358052044

namespace A069517

/-- `∏{p}[n+1, 2*C(2, #)]` -/
def P2401767322358052044.Spec : Prop :=
  ∀ n, (P2401767322358052044.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P15595887356737709246

`C(4, ∑{p}[n+1, #])%4`
-/

namespace A069517.P15595887356737709246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (∑ p ∈ Nat.primeFactors (f1 n), p) % 4

end

end A069517.P15595887356737709246

namespace A069517

/-- `C(4, ∑{p}[n+1, #])%4` -/
def P15595887356737709246.Spec : Prop :=
  ∀ n, (P15595887356737709246.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P14312827862223453280

`C(2, ∑{p}[n+1, C(#, 2)])`
-/

namespace A069517.P14312827862223453280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p 2)

end

end A069517.P14312827862223453280

namespace A069517

/-- `C(2, ∑{p}[n+1, C(#, 2)])` -/
def P14312827862223453280.Spec : Prop :=
  ∀ n, (P14312827862223453280.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P14709066071410705950

`∏{p}[n+1, C(4, #)%4]`
-/

namespace A069517.P14709066071410705950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 4 p % 4

end

end A069517.P14709066071410705950

namespace A069517

/-- `∏{p}[n+1, C(4, #)%4]` -/
def P14709066071410705950.Spec : Prop :=
  ∀ n, (P14709066071410705950.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P12270892086087931879

`C(2, C(∏{p}[n+1, #], 2))`
-/

namespace A069517.P12270892086087931879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) 2)

end

end A069517.P12270892086087931879

namespace A069517

/-- `C(2, C(∏{p}[n+1, #], 2))` -/
def P12270892086087931879.Spec : Prop :=
  ∀ n, (P12270892086087931879.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P9858113938901463102

`C(2, or(2*n, -n)²)`
-/

namespace A069517.P9858113938901463102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.lor (2 * n : ℤ) (-(n : ℤ)) ^ 2).toNat

end

end A069517.P9858113938901463102

namespace A069517

/-- `C(2, or(2*n, -n)²)` -/
def P9858113938901463102.Spec : Prop :=
  ∀ n, (P9858113938901463102.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P10147091495208075956

`∏{p}[n+1, #%or(1, #)]`
-/

namespace A069517.P10147091495208075956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p % Nat.lor 1 p

end

end A069517.P10147091495208075956

namespace A069517

/-- `∏{p}[n+1, #%or(1, #)]` -/
def P10147091495208075956.Spec : Prop :=
  ∀ n, (P10147091495208075956.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P2082805489148864221

`∏{p}[n+1, floor(8/#²)]`
-/

namespace A069517.P2082805489148864221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊8 / (p ^ 2 : ℚ)⌋

end

end A069517.P2082805489148864221

namespace A069517

/-- `∏{p}[n+1, floor(8/#²)]` -/
def P2082805489148864221.Spec : Prop :=
  ∀ n, P2082805489148864221.a n = A069517 (n + 1)

end A069517

/-! ## A069517.P12811617941263703358

`floor(xor(n, n+1)*acot(n))`
-/

namespace A069517.P12811617941263703358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (n + 1) : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋

end

end A069517.P12811617941263703358

namespace A069517

/-- `floor(xor(n, n+1)*acot(n))` -/
def P12811617941263703358.Spec : Prop :=
  ∀ n, P12811617941263703358.a n = A069517 (n + 1)

end A069517

/-! ## A069517.P14660831443812560689

`C(2, or(2*n, -n)^4)`
-/

namespace A069517.P14660831443812560689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.lor (2 * n : ℤ) (-(n : ℤ)) ^ 4).toNat

end

end A069517.P14660831443812560689

namespace A069517

/-- `C(2, or(2*n, -n)^4)` -/
def P14660831443812560689.Spec : Prop :=
  ∀ n, (P14660831443812560689.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P11923929052150822204

`C(2, (and(n, 2*n)-n)²)`
-/

namespace A069517.P11923929052150822204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (((Nat.land n (2 * n) : ℤ) - (n : ℤ)) ^ 2).toNat

end

end A069517.P11923929052150822204

namespace A069517

/-- `C(2, (and(n, 2*n)-n)²)` -/
def P11923929052150822204.Spec : Prop :=
  ∀ n, (P11923929052150822204.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P296185764879389434

`C(2, Δ[and(n, n-1)]+n)`
-/

namespace A069517.P296185764879389434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A069517.P296185764879389434

namespace A069517

/-- `C(2, Δ[and(n, n-1)]+n)` -/
def P296185764879389434.Spec : Prop :=
  ∀ n, (P296185764879389434.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P18397449429681124070

`round(∏{p}[n+1, (5/#²)²])`
-/

namespace A069517.P18397449429681124070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (5 / (p ^ 2 : ℚ)) ^ 2)

end

end A069517.P18397449429681124070

namespace A069517

/-- `round(∏{p}[n+1, (5/#²)²])` -/
def P18397449429681124070.Spec : Prop :=
  ∀ n, P18397449429681124070.a n = A069517 (n + 1)

end A069517

/-! ## A069517.P11480240109687692008

`n%2*a(floor(n/2))` with `a(0)=1, a(1)=2`
-/

namespace A069517.P11480240109687692008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  n % 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A069517.P11480240109687692008

namespace A069517

/-- `n%2*a(floor(n/2))` -/
def P11480240109687692008.Spec : Prop :=
  ∀ n, (P11480240109687692008.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P16023104834296414903

`and(n-1, a(floor(n/2)))` with `a(0)=1, a(1)=2`
-/

namespace A069517.P16023104834296414903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.land ((n : ℤ) - 1) (a ⌊(n : ℚ) / 2⌋.toNat)

end

end A069517.P16023104834296414903

namespace A069517

/-- `and(n-1, a(floor(n/2)))` -/
def P16023104834296414903.Spec : Prop :=
  ∀ n, P16023104834296414903.a n = A069517 (n + 1)

end A069517

/-! ## A069517.P8718631652087235614

`C(2, and(n, n+1)+gcd(2, n))`
-/

namespace A069517.P8718631652087235614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land n (n + 1) + Nat.gcd 2 n)

end

end A069517.P8718631652087235614

namespace A069517

/-- `C(2, and(n, n+1)+gcd(2, n))` -/
def P8718631652087235614.Spec : Prop :=
  ∀ n, (P8718631652087235614.a n : ℤ) = A069517 (n + 1)

end A069517

/-! ## A069517.P8938430803868872199

`C(2, and(n, -(2*n+1))²)`
-/

namespace A069517.P8938430803868872199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.land (n : ℤ) (-(2 * n + 1 : ℤ)) ^ 2).toNat

end

end A069517.P8938430803868872199

namespace A069517

/-- `C(2, and(n, -(2*n+1))²)` -/
def P8938430803868872199.Spec : Prop :=
  ∀ n, (P8938430803868872199.a n : ℤ) = A069517 (n + 1)

end A069517

/-!
# A069518: Geometric mean of digits = 4 and digits are in nondecreasing order.

The programs for A069518, there is no canonical definition to state claims against.
-/

/-! ## A069518.P13019350377282943017

`∩[A061428(n+1), A096105(n+1)]`
-/

namespace A069518.P13019350377282943017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069518.P13019350377282943017

/-! ## A069518.P2882667425847516757

`∩[A009994(n+1), A061428(n+1)]`
-/

namespace A069518.P2882667425847516757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069518.P2882667425847516757

/-! ## A069518.P6999789193496711984

`∩[A061428(n+1), A179239(n)]`
-/

namespace A069518.P6999789193496711984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069518.P6999789193496711984

/-! ## A069518.P8255582904731938685

`∩[A179239(n), A061428(A348553(n))]`
-/

namespace A069518.P8255582904731938685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061428 (A348553 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069518.P8255582904731938685

/-! ## A069518.P3537649043304737832

`record[A004185(A061428(n+1))]`
-/

namespace A069518.P3537649043304737832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A061428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069518.P3537649043304737832

/-!
# A069519: Numbers k such that 1/(Sum_{d|k} (-1)^d/d) is an integer.

The programs for A069519, there is no canonical definition to state claims against.
-/

/-! ## A069519.P1575590906080887379

`∪[A000079(n), A066192(n+1)]`
-/

namespace A069519.P1575590906080887379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069519.P1575590906080887379

/-! ## A069519.P1469992546151913304

`∪[A001901(n), A066192(n+1)]`
-/

namespace A069519.P1469992546151913304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069519.P1469992546151913304

/-! ## A069519.P14358628211064555222

`∪[A046161(n), A066192(n+1)]`
-/

namespace A069519.P14358628211064555222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069519.P14358628211064555222

/-! ## A069519.P14417349968016157779

`∪[A066192(n+1), A081294(n)]`
-/

namespace A069519.P14417349968016157779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069519.P14417349968016157779

/-! ## A069519.P16442675674415211089

`∪[A066192(n+1), A098232(n)]`
-/

namespace A069519.P16442675674415211089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098232 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069519.P16442675674415211089

/-! ## A069519.P7798502878681456421

`∪[A066192(n+1), A290859(n)]`
-/

namespace A069519.P7798502878681456421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069519.P7798502878681456421

/-! ## A069519.P6283018699988860185

`∪[A050732(n+1), A066192(n+1)]`
-/

namespace A069519.P6283018699988860185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069519.P6283018699988860185

/-! ## A069519.P10611331232500805664

`∪[A066192(n+1), A069027(n+1)]`
-/

namespace A069519.P10611331232500805664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069519.P10611331232500805664

/-! ## A069519.P11233603222613322966

`filter[A174973(n+1), A353687(#)]`
-/

namespace A069519.P11233603222613322966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A069519.P11233603222613322966

/-! ## A069519.P9922231726146017721

`filter[A260653(n+1), A353687(#)]`
-/

namespace A069519.P9922231726146017721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A069519.P9922231726146017721

/-! ## A069519.P18400842940909888476

`filter[A279029(n+1), A353687(#)]`
-/

namespace A069519.P18400842940909888476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A069519.P18400842940909888476

/-! ## A069519.P15225174983051717993

`filter[A336506(n+1), A353687(#)]`
-/

namespace A069519.P15225174983051717993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A069519.P15225174983051717993

/-! ## A069519.P15455771215340587543

`filter[A359420(n+1), A353687(#)]`
-/

namespace A069519.P15455771215340587543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A069519.P15455771215340587543

/-! ## A069519.P11602440381630208340

`filter[A335702(n+2), A353687(#)]`
-/

namespace A069519.P11602440381630208340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335702 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A069519.P11602440381630208340

/-! ## A069519.P7945033296818029602

`filter[A005153(n+1), A353687(#)]`
-/

namespace A069519.P7945033296818029602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A069519.P7945033296818029602

/-! ## A069519.P1973744221971764965

`filter[A093891(n+1), A353687(#)]`
-/

namespace A069519.P1973744221971764965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A069519.P1973744221971764965

/-! ## A069519.P17199621449794374891

`filter[A048166(n+1), A353687(#)]`
-/

namespace A069519.P17199621449794374891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A069519.P17199621449794374891

/-! ## A069519.P7945786877021530986

`filter[A336503(n+1), A353687(#)]`
-/

namespace A069519.P7945786877021530986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A069519.P7945786877021530986

/-! ## A069519.P10621805273375888792

`eq[1, A353687(n+1)]+1`
-/

namespace A069519.P10621805273375888792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069519.P10621805273375888792

/-!
# A069521: Smallest multiple of n with digit sum = 2, or 0 if no such number exists, e.g., a(3k)=0.

The programs for A069521, there is no canonical definition to state claims against.
-/

/-! ## A069521.P1755137743591040844

`(n+1)*A088391(n+1)`
-/

namespace A069521.P1755137743591040844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088391 (n + 1)

end

end A069521.P1755137743591040844

/-! ## A069521.P14542738035461331548

`A088391(n+1)*A222257(n)`
-/

namespace A069521.P14542738035461331548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088391 (n + 1) * A222257 n

end

end A069521.P14542738035461331548

/-! ## A069521.P7292863140882103911

`A330970(lcm(A078241(n+1), A088391(n+1)))`
-/

namespace A069521.P7292863140882103911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 (Int.lcm (A078241 (n + 1)) (A088391 (n + 1)))

end

end A069521.P7292863140882103911

/-! ## A069521.P5057625610802213663

`A330970(A078241(n+1))`
-/

namespace A069521.P5057625610802213663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330970 (A078241 (n + 1)).toNat

end

end A069521.P5057625610802213663

/-!
# A069522: Smallest multiple of n with digit sum = 3, or 0 if no such number exists, e.g. a(9k)= 0 = a(11k).

The programs for A069522, there is no canonical definition to state claims against.
-/

/-! ## A069522.P1417846566389464626

`(n+1)*A088392(n+1)`
-/

namespace A069522.P1417846566389464626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088392 (n + 1)

end

end A069522.P1417846566389464626

/-! ## A069522.P13938223258732986963

`A069525(2*(n+1))/A000034(A045978(n))`
-/

namespace A069522.P13938223258732986963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069525 (2 * (n + 1)) : ℚ) / (A000034 (A045978 n).toNat : ℚ)

end

end A069522.P13938223258732986963

/-! ## A069522.P7386032568890143197

`A119507(A119538(n+2)%A119567(n+1))`
-/

namespace A069522.P7386032568890143197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119507 (Int.tmod (A119538 (n + 2)) (A119567 (n + 1))).toNat

end

end A069522.P7386032568890143197

/-!
# A069523: Smallest multiple of n with digit sum = 4, or 0 if no such number exists, e.g. a(3k)= 0.

The programs for A069523, there is no canonical definition to state claims against.
-/

/-! ## A069523.P8306111531579449730

`(n+1)*A088393(n+1)`
-/

namespace A069523.P8306111531579449730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088393 (n + 1)

end

end A069523.P8306111531579449730

/-! ## A069523.P17180303664152930210

`abs(xor(n, -1)*A088393(Δ[n²]-n))`
-/

namespace A069523.P17180303664152930210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * A088393 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A069523.P17180303664152930210

/-! ## A069523.P15689942895563011599

`A088393(n+1)*A222257(n)`
-/

namespace A069523.P15689942895563011599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088393 (n + 1) * A222257 n

end

end A069523.P15689942895563011599

/-!
# A069524: Smallest multiple of n with digit sum = 5, or 0 if no such number exists, e.g. a(3k) = a(11k) = 0.

The programs for A069524, there is no canonical definition to state claims against.
-/

/-! ## A069524.P16956790033958291901

`(n+1)*A088394(n+1)`
-/

namespace A069524.P16956790033958291901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088394 (n + 1)

end

end A069524.P16956790033958291901

/-! ## A069524.P6396778378933730442

`A088394(n+1)*A222257(n)`
-/

namespace A069524.P6396778378933730442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088394 (n + 1) * A222257 n

end

end A069524.P6396778378933730442

/-! ## A069524.P15174289257728823960

`A077168(n)*A088396(5*A187829(n+1))`
-/

namespace A069524.P15174289257728823960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n * A088396 (5 * A187829 (n + 1)).toNat

end

end A069524.P15174289257728823960

/-!
# A069525: Smallest multiple of n with digit sum = 6, or 0 if no such number exists, e.g. a(9k)= 0.

The programs for A069525, there is no canonical definition to state claims against.
-/

/-! ## A069525.P15819125701567384239

`(n+1)*A088395(n+1)`
-/

namespace A069525.P15819125701567384239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088395 (n + 1)

end

end A069525.P15819125701567384239

/-!
# A069526: Smallest multiple of n with digit sum = 7, or 0 if no such number exists, e.g. a(3k)= a(11k) = 0.

The programs for A069526, there is no canonical definition to state claims against.
-/

/-! ## A069526.P3001560264124797338

`(n+1)*A088396(n+1)`
-/

namespace A069526.P3001560264124797338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088396 (n + 1)

end

end A069526.P3001560264124797338

/-! ## A069526.P12819687039687617321

`A088396(n+1)*A222257(n)`
-/

namespace A069526.P12819687039687617321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088396 (n + 1) * A222257 n

end

end A069526.P12819687039687617321

/-! ## A069526.P5346186138258291073

`(n+1)*A070692(A069524(n+1)*A088394(n+1))`
-/

namespace A069526.P5346186138258291073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070692 (A069524 (n + 1) * A088394 (n + 1)).toNat

end

end A069526.P5346186138258291073

/-! ## A069526.P11232765348461056937

`(n+1)*dr(A007953(A069524(n+1)/(n+1)*A069524(n+1)))`
-/

namespace A069526.P11232765348461056937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.digitalRoot (A007953 (SequenceMachineLib.roundAway ((A069524 (n + 1) : ℚ) / (n + 1 : ℚ) * (A069524 (n + 1) : ℚ))).toNat)

end

end A069526.P11232765348461056937

/-! ## A069526.P1063816031563801951

`(n+1)*dr(A247796(A069524(n+1)/(n+1)*A069524(n+1)))`
-/

namespace A069526.P1063816031563801951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.digitalRoot (A247796 (SequenceMachineLib.roundAway ((A069524 (n + 1) : ℚ) / (n + 1 : ℚ) * (A069524 (n + 1) : ℚ))).toNat)

end

end A069526.P1063816031563801951

/-!
# A069527: Smallest multiple of n with digit sum = 8, or 0 if no such number exists, e.g. a(3k)= 0.

The programs for A069527, there is no canonical definition to state claims against.
-/

/-! ## A069527.P15677131106888426810

`(n+1)*A088397(n+1)`
-/

namespace A069527.P15677131106888426810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088397 (n + 1)

end

end A069527.P15677131106888426810

/-! ## A069527.P15912792547995617566

`A088397(n+1)*A222257(n)`
-/

namespace A069527.P15912792547995617566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088397 (n + 1) * A222257 n

end

end A069527.P15912792547995617566

/-! ## A069527.P13027887722269453664

`(n+1)*A070692(A105374(n+1))`
-/

namespace A069527.P13027887722269453664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070692 (A105374 (n + 1)).toNat

end

end A069527.P13027887722269453664

/-! ## A069527.P8036673343754828290

`A070692(A105374(n+1))*A077168(n)`
-/

namespace A069527.P8036673343754828290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070692 (A105374 (n + 1)).toNat * A077168 n

end

end A069527.P8036673343754828290

/-!
# A069528: Smallest multiple of n with digit sum = 9, or 0 if no such number exists (e.g., a(11k) = 0).

The programs for A069528, there is no canonical definition to state claims against.
-/

/-! ## A069528.P2514975236784217752

`(n+1)*A088398(n+1)`
-/

namespace A069528.P2514975236784217752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088398 (n + 1)

end

end A069528.P2514975236784217752

/-! ## A069528.P15400337152453706534

`A109050(gcd(A076710(n), A321801(n+1)))`
-/

namespace A069528.P15400337152453706534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109050 (Int.gcd (A076710 n) (A321801 (n + 1)))

end

end A069528.P15400337152453706534

/-! ## A069528.P9177182623021841237

`A109050(A321801(n+1)+A076710(n+1))`
-/

namespace A069528.P9177182623021841237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109050 (A321801 (n + 1) + A076710 (n + 1)).toNat

end

end A069528.P9177182623021841237

/-! ## A069528.P15240727962869179637

`lcm(A109050(n+1), A321801(A187829(n+1)))`
-/

namespace A069528.P15240727962869179637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109050 (n + 1)) (A321801 (A187829 (n + 1)).toNat)

end

end A069528.P15240727962869179637

/-! ## A069528.P13235328823740313733

`lcm(A109050(n+1), A321801(A077168(n)))`
-/

namespace A069528.P13235328823740313733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109050 (n + 1)) (A321801 (A077168 n).toNat)

end

end A069528.P13235328823740313733

/-!
# A069529: Smallest multiple of n with digit sum = 10, or 0 if no such number exists, e.g. a(3k)= 0.

The programs for A069529, there is no canonical definition to state claims against.
-/

/-! ## A069529.P12563351133828802629

`(n+1)*A088399(n+1)`
-/

namespace A069529.P12563351133828802629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088399 (n + 1)

end

end A069529.P12563351133828802629

/-! ## A069529.P11878733891298515810

`A088399(n+1)*A222257(n)`
-/

namespace A069529.P11878733891298515810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088399 (n + 1) * A222257 n

end

end A069529.P11878733891298515810

/-!
# A069530: Smallest multiple of n with digit sum = 11, or 0 if no such number exists.

The programs for A069530, there is no canonical definition to state claims against.
-/

/-! ## A069530.P1719462719287463977

`(n+1)*A088400(n+1)`
-/

namespace A069530.P1719462719287463977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088400 (n + 1)

end

end A069530.P1719462719287463977

/-! ## A069530.P9315465378909956497

`A088400(n+1)*A222257(n)`
-/

namespace A069530.P9315465378909956497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088400 (n + 1) * A222257 n

end

end A069530.P9315465378909956497

/-!
# A069531: Smallest positive k such that 10^k + 1 is divisible by n, or 0 if no such number exists.

The programs for A069531, there is no canonical definition to state claims against.
-/

/-! ## A069531.P4008410154924975703

`A216416(gcd(n, ∑[n%2])+1)`
-/

namespace A069531.P4008410154924975703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216416 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A069531.P4008410154924975703

/-! ## A069531.P15953956911571800869

`A216416(A071054(n)-n)`
-/

namespace A069531.P15953956911571800869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216416 (A071054 n - (n : ℤ)).toNat

end

end A069531.P15953956911571800869

/-! ## A069531.P8254541441715054929

`A216416(A057979(n+1)+1)`
-/

namespace A069531.P8254541441715054929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216416 (A057979 (n + 1) + 1).toNat

end

end A069531.P8254541441715054929

/-! ## A069531.P3464799245023993843

`A216416(1-A029578(n)+n)`
-/

namespace A069531.P3464799245023993843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216416 (1 - A029578 n + (n : ℤ)).toNat

end

end A069531.P3464799245023993843

/-! ## A069531.P11965707348278077054

`A216416(1-(A029578(n)-n))`
-/

namespace A069531.P11965707348278077054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216416 (1 - (A029578 n - (n : ℤ))).toNat

end

end A069531.P11965707348278077054

/-! ## A069531.P9861523081319039268

`A216416(2-A029579(n)+n)`
-/

namespace A069531.P9861523081319039268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216416 (2 - A029579 n + (n : ℤ)).toNat

end

end A069531.P9861523081319039268

/-! ## A069531.P7039967770505285181

`A216416(2-(A029579(n)-n))`
-/

namespace A069531.P7039967770505285181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216416 (2 - (A029579 n - (n : ℤ))).toNat

end

end A069531.P7039967770505285181

/-! ## A069531.P4456614426031046368

`char[2*n]*A216416(A008619(n))`
-/

namespace A069531.P4456614426031046368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A216416 (A008619 n).toNat

end

end A069531.P4456614426031046368

/-! ## A069531.P13116240876706430506

`A216416(A171181(n)+A000034(n))`
-/

namespace A069531.P13116240876706430506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216416 (A171181 n + A000034 n).toNat

end

end A069531.P13116240876706430506

/-! ## A069531.P11978664652519868073

`A216416(A080513(gcd(n, A007590(n))))`
-/

namespace A069531.P11978664652519868073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216416 (A080513 (Int.gcd (n : ℤ) (A007590 n))).toNat

end

end A069531.P11978664652519868073

/-! ## A069531.P638051666480257098

`lcm(A056594(n), A216416(A008619(n)))`
-/

namespace A069531.P638051666480257098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A216416 (A008619 n).toNat)

end

end A069531.P638051666480257098

/-! ## A069531.P2806696283020164215

`Δ[A080513(n)]*A216416(A080513(n))`
-/

namespace A069531.P2806696283020164215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A216416 (A080513 n).toNat

end

end A069531.P2806696283020164215

/-! ## A069531.P6458057353244550977

`A059841(n)*A216416(A116922(n+1))`
-/

namespace A069531.P6458057353244550977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A216416 (A116922 (n + 1)).toNat

end

end A069531.P6458057353244550977

/-!
# A069532: Smallest even number with digit sum n.

The programs for A069532, there is no canonical definition to state claims against.
-/

/-! ## A069532.P15707298247551474009

`2*A077491(n+1)`
-/

namespace A069532.P15707298247551474009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077491 (n + 1)

end

end A069532.P15707298247551474009

/-! ## A069532.P1918189603094148107

`A205960(n+2)-1`
-/

namespace A069532.P1918189603094148107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205960 (n + 2) - 1

end

end A069532.P1918189603094148107

/-! ## A069532.P5431672176607861666

`abs(∑[-Δ[A205960(n+1)]])`
-/

namespace A069532.P5431672176607861666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A069532.P5431672176607861666

/-! ## A069532.P4509119666141412193

`xor(1, A205960(A020725(n+1)))`
-/

namespace A069532.P4509119666141412193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A205960 (A020725 (n + 1)).toNat)

end

end A069532.P4509119666141412193

/-! ## A069532.P16485838534085722645

`∑[Δ[A205960(n+1)]%A171389(n)]`
-/

namespace A069532.P16485838534085722645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A171389 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069532.P16485838534085722645

/-!
# A069533: a(n) = Sum_{p prime} floor(n^2/p^2) where the sum is over all the primes.

The programs for A069533, the canonical program `A069533.P16176494315263745921` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069533 has offset 1).

The definition of A069533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069533.P16176494315263745921

`A013940((n+1)²)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069533

/-- `A013940((n+1)²)` -/
def P16176494315263745921.Spec : Prop :=
  ∀ n, P16176494315263745921.a n = A069533 (n + 1)

theorem P16176494315263745921.correct : P16176494315263745921.Spec := by
  intro n
  simp only [A069533, Nat.add_sub_cancel]

end A069533

/-! ## A069533.P17574616247410651159

`record[A013940(A020986(n)²)]`
-/

namespace A069533.P17574616247410651159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013940 (A020986 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069533.P17574616247410651159

namespace A069533

/-- `record[A013940(A020986(n)²)]` -/
def P17574616247410651159.Spec : Prop :=
  ∀ n, P17574616247410651159.a n = A069533 (n + 1)

end A069533

/-! ## A069533.P5110276509575368120

`record[A013940(A236104(n+1))]`
-/

namespace A069533.P5110276509575368120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013940 (A236104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069533.P5110276509575368120

namespace A069533

/-- `record[A013940(A236104(n+1))]` -/
def P5110276509575368120.Spec : Prop :=
  ∀ n, P5110276509575368120.a n = A069533 (n + 1)

end A069533

/-!
# A069534: Smallest multiple of 5 with digit sum n.

The programs for A069534, there is no canonical definition to state claims against.
-/

/-! ## A069534.P17306295735240698358

`5*A077492(n+1)`
-/

namespace A069534.P17306295735240698358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A077492 (n + 1)

end

end A069534.P17306295735240698358

/-! ## A069534.P6750886981095326218

`A008587(A077492(n+1))`
-/

namespace A069534.P6750886981095326218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A077492 (n + 1)).toNat

end

end A069534.P6750886981095326218

/-! ## A069534.P15717570829919955091

`A008706(or(char[4], A077492(n+1)))`
-/

namespace A069534.P15717570829919955091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A077492 (n + 1))).toNat

end

end A069534.P15717570829919955091

/-! ## A069534.P417881357484552071

`A008706(A077492(n+1)%A171389(n))`
-/

namespace A069534.P417881357484552071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.tmod (A077492 (n + 1)) (A171389 n)).toNat

end

end A069534.P417881357484552071

/-!
# A069536: Smallest multiple of 8 with digit sum n.

The programs for A069536, there is no canonical definition to state claims against.
-/

/-! ## A069536.P12836037935712442840

`8*A077495(n)`
-/

namespace A069536.P12836037935712442840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A077495 n

end

end A069536.P12836037935712442840

/-! ## A069536.P17363391555368329346

`A008590(A077495(n))`
-/

namespace A069536.P17363391555368329346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A077495 n).toNat

end

end A069536.P17363391555368329346

/-! ## A069536.P6287882630841500441

`A022144(A077495(n))-A000007(n)`
-/

namespace A069536.P6287882630841500441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A077495 n).toNat - A000007 n

end

end A069536.P6287882630841500441

/-! ## A069536.P13208466802434902446

`A022144(A077495(n))-A112316(n)`
-/

namespace A069536.P13208466802434902446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A077495 n).toNat - A112316 n

end

end A069536.P13208466802434902446

/-! ## A069536.P1686778640718475990

`A022144(A077495(n))-A000045(C(2, n+2))`
-/

namespace A069536.P1686778640718475990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A077495 n).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A069536.P1686778640718475990

/-!
# A069537: Multiples of 2 whose digit sum is 2.

The programs for A069537, the canonical program `A069537.P88310199312240341` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069537 has offset 1).

The definition of A069537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4951 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069537.P14395126605342217977

`2*A088404(n+1)`
-/

namespace A069537.P14395126605342217977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088404 (n + 1)

end

end A069537.P14395126605342217977

namespace A069537

/-- `2*A088404(n+1)` -/
def P14395126605342217977.Spec : Prop :=
  ∀ n, P14395126605342217977.a n = A069537 (n + 1)

end A069537

/-! ## A069537.P88310199312240341

`A052216(A080036(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069537

/-- `A052216(A080036(n))` -/
def P88310199312240341.Spec : Prop :=
  ∀ n, P88310199312240341.a n = A069537 (n + 1)

theorem P88310199312240341.correct : P88310199312240341.Spec := by
  intro n
  simp only [A069537, Nat.add_sub_cancel]

end A069537

/-! ## A069537.P3399854084080074683

`A052216(eq[0, A073424(n)]+1)`
-/

namespace A069537.P3399854084080074683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A069537.P3399854084080074683

namespace A069537

/-- `A052216(eq[0, A073424(n)]+1)` -/
def P3399854084080074683.Spec : Prop :=
  ∀ n, P3399854084080074683.a n = A069537 (n + 1)

end A069537

/-! ## A069537.P13818154353873645815

`A052216(eq[2, gcd(2, A052216(n+1))]+1)`
-/

namespace A069537.P13818154353873645815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A052216 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A069537.P13818154353873645815

namespace A069537

/-- `A052216(eq[2, gcd(2, A052216(n+1))]+1)` -/
def P13818154353873645815.Spec : Prop :=
  ∀ n, P13818154353873645815.a n = A069537 (n + 1)

end A069537

/-! ## A069537.P8290912726775292781

`A088404(n+1)+A088404(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A069537.P8290912726775292781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088404 (n + 1) + A088404 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A069537.P8290912726775292781

namespace A069537

/-- `A088404(n+1)+A088404(n%a(n-1)+1)` -/
def P8290912726775292781.Spec : Prop :=
  ∀ n, P8290912726775292781.a n = A069537 (n + 1)

end A069537

/-! ## A069537.P11908821808188332326

`A245062(∑[n+2])`
-/

namespace A069537.P11908821808188332326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069537.P11908821808188332326

namespace A069537

/-- `A245062(∑[n+2])` -/
def P11908821808188332326.Spec : Prop :=
  ∀ n, P11908821808188332326.a n = A069537 (n + 1)

end A069537

/-! ## A069537.P16939787291403307343

`2*∩[A088406(n+1), A088408(n+1)]`
-/

namespace A069537.P16939787291403307343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069537.P16939787291403307343

namespace A069537

/-- `2*∩[A088406(n+1), A088408(n+1)]` -/
def P16939787291403307343.Spec : Prop :=
  ∀ n, (P16939787291403307343.a n : ℤ) = A069537 (n + 1)

end A069537

/-! ## A069537.P2655163716578129310

`2*∩[A088406(n+1), A136811(n+1)]`
-/

namespace A069537.P2655163716578129310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069537.P2655163716578129310

namespace A069537

/-- `2*∩[A088406(n+1), A136811(n+1)]` -/
def P2655163716578129310.Spec : Prop :=
  ∀ n, (P2655163716578129310.a n : ℤ) = A069537 (n + 1)

end A069537

/-! ## A069537.P12771148578620646968

`2*∩[A088406(n+1), A125289(n+1)]`
-/

namespace A069537.P12771148578620646968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069537.P12771148578620646968

namespace A069537

/-- `2*∩[A088406(n+1), A125289(n+1)]` -/
def P12771148578620646968.Spec : Prop :=
  ∀ n, (P12771148578620646968.a n : ℤ) = A069537 (n + 1)

end A069537

/-!
# A069540: Multiples of 5 with digit sum 5.

The programs for A069540, there is no canonical definition to state claims against.
-/

/-! ## A069540.P16034043710475800837

`5*A088407(n+1)`
-/

namespace A069540.P16034043710475800837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A088407 (n + 1)

end

end A069540.P16034043710475800837

/-! ## A069540.P8796210408982048752

`A052219(eq[5, gcd(5, A052219(n+1))]+1)`
-/

namespace A069540.P8796210408982048752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A052219 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A069540.P8796210408982048752

/-! ## A069540.P2283127700907568097

`∩[A052219(n+1), A062713(n+1)]`
-/

namespace A069540.P2283127700907568097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069540.P2283127700907568097

/-! ## A069540.P5646461840848162809

`∩[A052219(n+1), A260348(n+1)]`
-/

namespace A069540.P5646461840848162809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069540.P5646461840848162809

/-! ## A069540.P262913118248871124

`∩[A052219(n+1), A061821(n+1)]`
-/

namespace A069540.P262913118248871124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069540.P262913118248871124

/-! ## A069540.P2894090148806728102

`∩[A052219(n+1), A085370(n+1)]`
-/

namespace A069540.P2894090148806728102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069540.P2894090148806728102

/-! ## A069540.P5009052294062483123

`∩[A052219(n+1), A218290(n+1)]`
-/

namespace A069540.P5009052294062483123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069540.P5009052294062483123

/-! ## A069540.P7045803362438274945

`∩[A062713(n+1), A218290(n+1)]`
-/

namespace A069540.P7045803362438274945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069540.P7045803362438274945

/-! ## A069540.P8608421229145836913

`∩[A052219(n+1), A285829(n+1)]`
-/

namespace A069540.P8608421229145836913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069540.P8608421229145836913

/-! ## A069540.P12733252140867331798

`∩[A052220(n+1)-1, A285829(n+1)]`
-/

namespace A069540.P12733252140867331798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069540.P12733252140867331798

/-!
# A069543: Multiples of 8 with digit sum 8.

The programs for A069543, there is no canonical definition to state claims against.
-/

/-! ## A069543.P6890418836482180439

`8*A088410(n+1)`
-/

namespace A069543.P6890418836482180439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A088410 (n + 1)

end

end A069543.P6890418836482180439

/-! ## A069543.P10357290193696263234

`∩[A052222(n+1), A330927(n+1)]`
-/

namespace A069543.P10357290193696263234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P10357290193696263234

/-! ## A069543.P8990108225579617077

`∩[A052222(n+1), A216997(n+1)]`
-/

namespace A069543.P8990108225579617077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P8990108225579617077

/-! ## A069543.P760632161294614359

`∩[A052222(n+1), A379779(n+1)]`
-/

namespace A069543.P760632161294614359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P760632161294614359

/-! ## A069543.P14272023619906105220

`∩[A052222(n+1), A085370(n+1)]`
-/

namespace A069543.P14272023619906105220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P14272023619906105220

/-! ## A069543.P14393470224727003953

`∩[A059094(n+1), A216997(n+1)]`
-/

namespace A069543.P14393470224727003953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P14393470224727003953

/-! ## A069543.P11896205043329045143

`∩[A216997(n+1), A236751(n+1)]`
-/

namespace A069543.P11896205043329045143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P11896205043329045143

/-! ## A069543.P2162582639178529120

`∩[A052222(n+1), A061824(n+1)]`
-/

namespace A069543.P2162582639178529120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P2162582639178529120

/-! ## A069543.P13361411577564163572

`∩[A052222(n+1), A259751(n+1)]`
-/

namespace A069543.P13361411577564163572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P13361411577564163572

/-! ## A069543.P1251303803194535094

`∩[A052222(n+1), A285829(n+1)]`
-/

namespace A069543.P1251303803194535094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P1251303803194535094

/-! ## A069543.P16792228353921276785

`∩[2*A017209(n), A285829(n+1)]`
-/

namespace A069543.P16792228353921276785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P16792228353921276785

/-! ## A069543.P6712831596372104309

`∩[2*A350521(n), A285829(n+1)]`
-/

namespace A069543.P6712831596372104309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350521 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069543.P6712831596372104309

/-!
# A069544: Continued fraction for Feigenbaum's constant - 4 = 0.6692...

The programs for A069544, there is no canonical definition to state claims against.
-/

/-! ## A069544.P2257851606144894338

`A159766(n+1)`
-/

namespace A069544.P2257851606144894338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159766 (n + 1)

end

end A069544.P2257851606144894338

/-! ## A069544.P12155269671258379825

`Δ[A000027(∑[A159766(n)])]`
-/

namespace A069544.P12155269671258379825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069544.P12155269671258379825

/-! ## A069544.P1525681814026418005

`Δ[A028310(∑[A159766(n)])]`
-/

namespace A069544.P1525681814026418005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069544.P1525681814026418005

/-! ## A069544.P2806689769035232146

`Δ[A254667(∑[A159766(n)])]`
-/

namespace A069544.P2806689769035232146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069544.P2806689769035232146

/-! ## A069544.P7134726276811965913

`gcd(floor(acot(n)), A159766(A008619(2*n)))`
-/

namespace A069544.P7134726276811965913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A159766 (A008619 (2 * n)).toNat)

end

end A069544.P7134726276811965913

/-! ## A069544.P825627109387412649

`Δ[A233583(∑[A159766(n)])]`
-/

namespace A069544.P825627109387412649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069544.P825627109387412649

/-!
# A069546: a(n) = Sum_{d|n} sigma(n*d).

The programs for A069546, the canonical program `A069546.P4827855718774494868` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069546 has offset 1).

The definition of A069546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069546.P1820183029872922401

`∑{d}[n+1, A000203(#)*A362632((n+1)/#)]`
-/

namespace A069546.P1820183029872922401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A362632 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069546.P1820183029872922401

namespace A069546

/-- `∑{d}[n+1, A000203(#)*A362632((n+1)/#)]` -/
def P1820183029872922401.Spec : Prop :=
  ∀ n, P1820183029872922401.a n = A069546 (n + 1)

end A069546

/-! ## A069546.P4827855718774494868

`∑{d}[n+1, A065764(#)*A358346((n+1)/#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A069546

/-- `∑{d}[n+1, A065764(#)*A358346((n+1)/#)]` -/
def P4827855718774494868.Spec : Prop :=
  ∀ n, P4827855718774494868.a n = A069546 (n + 1)

theorem P4827855718774494868.correct : P4827855718774494868.Spec := by
  intro n
  simp only [A069546, Nat.add_sub_cancel]

end A069546

/-! ## A069546.P3874057207615572566

`∑{d}[n+1, A000203(#*(n+1))]`
-/

namespace A069546.P3874057207615572566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 (d * (n + 1))

end

end A069546.P3874057207615572566

namespace A069546

/-- `∑{d}[n+1, A000203(#*(n+1))]` -/
def P3874057207615572566.Spec : Prop :=
  ∀ n, P3874057207615572566.a n = A069546 (n + 1)

end A069546

/-!
# A069547: a(n) = n^2 mod n-th prime.

The programs for A069547, the canonical program `A069547.P12931178547832391524` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069547 has offset 1).

The definition of A069547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069547.P12931178547832391524

`(n+1)²%A000040(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069547

/-- `(n+1)²%A000040(n+1)` -/
def P12931178547832391524.Spec : Prop :=
  ∀ n, P12931178547832391524.a n = A069547 (n + 1)

theorem P12931178547832391524.correct : P12931178547832391524.Spec := by
  intro n
  simp only [A069547, Nat.add_sub_cancel]

end A069547

/-! ## A069547.P13126376868674781580

`(n+1)²%Δ[A007504(n)]`
-/

namespace A069547.P13126376868674781580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (f1 (n + 1) - f1 n)

end

end A069547.P13126376868674781580

namespace A069547

/-- `(n+1)²%Δ[A007504(n)]` -/
def P13126376868674781580.Spec : Prop :=
  ∀ n, P13126376868674781580.a n = A069547 (n + 1)

end A069547

/-! ## A069547.P1769760425959769325

`((n+1)*(n+1))%(A006093(n+1)+1)`
-/

namespace A069547.P1769760425959769325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) * (n + 1) : ℤ) (A006093 (n + 1) + 1)

end

end A069547.P1769760425959769325

namespace A069547

/-- `((n+1)*(n+1))%(A006093(n+1)+1)` -/
def P1769760425959769325.Spec : Prop :=
  ∀ n, P1769760425959769325.a n = A069547 (n + 1)

theorem P1769760425959769325.correct : P1769760425959769325.Spec := by
  intro n
  simp only [A069547, Nat.add_sub_cancel, A069547.P1769760425959769325.a, A069547.P12931178547832391524.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069547

/-! ## A069547.P10911844971647210734

`∑[a(n-1)+2]%(A086801(n+1)+3)` with `a(0)=1`
-/

namespace A069547.P10911844971647210734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A086801 (n + 1) + 3)

end

end A069547.P10911844971647210734

namespace A069547

/-- `∑[a(n-1)+2]%(A086801(n+1)+3)` -/
def P10911844971647210734.Spec : Prop :=
  ∀ n, P10911844971647210734.a n = A069547 (n + 1)

end A069547

/-! ## A069547.P1019481449076648608

`A075771(n+1)-A097882(n+1)`
-/

namespace A069547.P1019481449076648608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075771 (n + 1) - A097882 (n + 1)

end

end A069547.P1019481449076648608

namespace A069547

/-- `A075771(n+1)-A097882(n+1)` -/
def P1019481449076648608.Spec : Prop :=
  ∀ n, P1019481449076648608.a n = A069547 (n + 1)

end A069547

/-! ## A069547.P15332742339736356895

`A005563(n)%A000040(n+1)+1`
-/

namespace A069547.P15332742339736356895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005563 n) (A000040 (n + 1)) + 1

end

end A069547.P15332742339736356895

namespace A069547

/-- `A005563(n)%A000040(n+1)+1` -/
def P15332742339736356895.Spec : Prop :=
  ∀ n, P15332742339736356895.a n = A069547 (n + 1)

end A069547

/-! ## A069547.P13469352702847218522

`abs(A073497(n+1)%A000040(n+1))`
-/

namespace A069547.P13469352702847218522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A073497 (n + 1)) (A000040 (n + 1))|

end

end A069547.P13469352702847218522

namespace A069547

/-- `abs(A073497(n+1)%A000040(n+1))` -/
def P13469352702847218522.Spec : Prop :=
  ∀ n, P13469352702847218522.a n = A069547 (n + 1)

end A069547

/-! ## A069547.P13516933745381336479

`(n+1)²-A000040(n+1)*A097882(n+1)`
-/

namespace A069547.P13516933745381336479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000040 (n + 1) * A097882 (n + 1)

end

end A069547.P13516933745381336479

namespace A069547

/-- `(n+1)²-A000040(n+1)*A097882(n+1)` -/
def P13516933745381336479.Spec : Prop :=
  ∀ n, P13516933745381336479.a n = A069547 (n + 1)

end A069547

/-! ## A069547.P8847403349129099132

`A000027(n+1)²%record[A014963(n+2)]`
-/

namespace A069547.P8847403349129099132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A069547.P8847403349129099132

namespace A069547

/-- `A000027(n+1)²%record[A014963(n+2)]` -/
def P8847403349129099132.Spec : Prop :=
  ∀ n, P8847403349129099132.a n = A069547 (n + 1)

end A069547

/-! ## A069547.P15545001408867872297

`A014689(n+1)²%record[A014963(n+2)]`
-/

namespace A069547.P15545001408867872297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014689 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A069547.P15545001408867872297

namespace A069547

/-- `A014689(n+1)²%record[A014963(n+2)]` -/
def P15545001408867872297.Spec : Prop :=
  ∀ n, P15545001408867872297.a n = A069547 (n + 1)

end A069547

/-! ## A069547.P13824958156950427026

`A096459(∑[n+1])`
-/

namespace A069547.P13824958156950427026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096459 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069547.P13824958156950427026

namespace A069547

/-- `A096459(∑[n+1])` -/
def P13824958156950427026.Spec : Prop :=
  ∀ n, P13824958156950427026.a n = A069547 (n + 1)

end A069547

/-!
# A069548: Primes of the form sum 6d/(2 + mu(d)) for some k and all d dividing k.

The programs for A069548, there is no canonical definition to state claims against.
-/

/-! ## A069548.P13297253445294637643

`A113029(A098603(n)+1)`
-/

namespace A069548.P13297253445294637643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113029 (A098603 n + 1).toNat

end

end A069548.P13297253445294637643

/-!
# A069549: Smallest composite k such that phi(k) > k*(1-1/n).

The programs for A069549, the canonical program `A069549.P12382925364838237052` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069549 has offset 1).

The definition of A069549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069549.P12382925364838237052

`A007918(n+1)²`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069549

/-- `A007918(n+1)²` -/
def P12382925364838237052.Spec : Prop :=
  ∀ n, P12382925364838237052.a n = A069549 (n + 1)

theorem P12382925364838237052.correct : P12382925364838237052.Spec := by
  intro n
  simp only [A069549, Nat.add_sub_cancel]

end A069549

/-! ## A069549.P5828364321936693087

`A151800(n)²`
-/

namespace A069549.P5828364321936693087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n ^ 2

end

end A069549.P5828364321936693087

namespace A069549

/-- `A151800(n)²` -/
def P5828364321936693087.Spec : Prop :=
  ∀ n, P5828364321936693087.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P3972223757405168537

`Δ[A117842(n)]²`
-/

namespace A069549.P3972223757405168537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A069549.P3972223757405168537

namespace A069549

/-- `Δ[A117842(n)]²` -/
def P3972223757405168537.Spec : Prop :=
  ∀ n, P3972223757405168537.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P2234261049703047340

`(A013632(n)+n)²`
-/

namespace A069549.P2234261049703047340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013632 n + (n : ℤ)) ^ 2

end

end A069549.P2234261049703047340

namespace A069549

/-- `(A013632(n)+n)²` -/
def P2234261049703047340.Spec : Prop :=
  ∀ n, P2234261049703047340.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P15652943508705940132

`(n-A013634(n))²`
-/

namespace A069549.P15652943508705940132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A013634 n) ^ 2

end

end A069549.P15652943508705940132

namespace A069549

/-- `(n-A013634(n))²` -/
def P15652943508705940132.Spec : Prop :=
  ∀ n, P15652943508705940132.a n = A069549 (n + 1)

theorem P15652943508705940132.correct : P15652943508705940132.Spec := by
  intro n
  simp only [A069549, Nat.add_sub_cancel, A069549.P15652943508705940132.a, A069549.P12382925364838237052.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A013634, A013634.P1496314925931275042.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A151800, A151800.P4570031678714564115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069549

/-! ## A069549.P12446216248161832817

`A000040(∑[C(∑{p}[n, #], n)])²`
-/

namespace A069549.P12446216248161832817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A069549.P12446216248161832817

namespace A069549

/-- `A000040(∑[C(∑{p}[n, #], n)])²` -/
def P12446216248161832817.Spec : Prop :=
  ∀ n, P12446216248161832817.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P7729571923596922106

`(A007920(n+1)+n+1)²`
-/

namespace A069549.P7729571923596922106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007920 (n + 1) + (n + 1 : ℤ)) ^ 2

end

end A069549.P7729571923596922106

namespace A069549

/-- `(A007920(n+1)+n+1)²` -/
def P7729571923596922106.Spec : Prop :=
  ∀ n, P7729571923596922106.a n = A069549 (n + 1)

theorem P7729571923596922106.correct : P7729571923596922106.Spec := by
  intro n
  simp only [A069549, Nat.add_sub_cancel, A069549.P7729571923596922106.a, A069549.P12382925364838237052.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A007920, A007920.P3719263903022372137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069549

/-! ## A069549.P16375384941228127219

`(A053024(n+1)/(n+1))²`
-/

namespace A069549.P16375384941228127219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A053024 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A069549.P16375384941228127219

namespace A069549

/-- `(A053024(n+1)/(n+1))²` -/
def P16375384941228127219.Spec : Prop :=
  ∀ n, P16375384941228127219.a n = (A069549 (n + 1) : ℚ)

end A069549

/-! ## A069549.P8733373667532881101

`(A117842(n+1)-A117842(n))²`
-/

namespace A069549.P8733373667532881101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117842 (n + 1) - A117842 n) ^ 2

end

end A069549.P8733373667532881101

namespace A069549

/-- `(A117842(n+1)-A117842(n))²` -/
def P8733373667532881101.Spec : Prop :=
  ∀ n, P8733373667532881101.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P8178879922127969313

`A000040(∑[char[record[∑{p}[n, #]]]])²`
-/

namespace A069549.P8178879922127969313
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A069549.P8178879922127969313

namespace A069549

/-- `A000040(∑[char[record[∑{p}[n, #]]]])²` -/
def P8178879922127969313.Spec : Prop :=
  ∀ n, P8178879922127969313.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P2777243263918079707

`A135718(A013632(n)+n)`
-/

namespace A069549.P2777243263918079707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135718 (A013632 n + (n : ℤ)).toNat

end

end A069549.P2777243263918079707

namespace A069549

/-- `A135718(A013632(n)+n)` -/
def P2777243263918079707.Spec : Prop :=
  ∀ n, P2777243263918079707.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P11145678697903358555

`A053024(A053024(n+1)/(n+1))`
-/

namespace A069549.P11145678697903358555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053024 (SequenceMachineLib.roundAway ((A053024 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A069549.P11145678697903358555

namespace A069549

/-- `A053024(A053024(n+1)/(n+1))` -/
def P11145678697903358555.Spec : Prop :=
  ∀ n, P11145678697903358555.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P14278623921899668054

`A308052(Δ[n²])²`
-/

namespace A069549.P14278623921899668054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A069549.P14278623921899668054

namespace A069549

/-- `A308052(Δ[n²])²` -/
def P14278623921899668054.Spec : Prop :=
  ∀ n, P14278623921899668054.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P14385328490665011705

`A045967(A136548(n+1))`
-/

namespace A069549.P14385328490665011705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045967 (A136548 (n + 1)).toNat

end

end A069549.P14385328490665011705

namespace A069549

/-- `A045967(A136548(n+1))` -/
def P14385328490665011705.Spec : Prop :=
  ∀ n, P14385328490665011705.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P120986977186707609

`A076272(A013634(n))²`
-/

namespace A069549.P120986977186707609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A013634 n).toNat ^ 2

end

end A069549.P120986977186707609

namespace A069549

/-- `A076272(A013634(n))²` -/
def P120986977186707609.Spec : Prop :=
  ∀ n, P120986977186707609.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P8159449215243679310

`A002620(2*A151800(n))`
-/

namespace A069549.P8159449215243679310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A151800 n).toNat

end

end A069549.P8159449215243679310

namespace A069549

/-- `A002620(2*A151800(n))` -/
def P8159449215243679310.Spec : Prop :=
  ∀ n, P8159449215243679310.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P2668350989348399304

`A298268(2*A151800(n))`
-/

namespace A069549.P2668350989348399304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298268 (2 * A151800 n).toNat

end

end A069549.P2668350989348399304

namespace A069549

/-- `A298268(2*A151800(n))` -/
def P2668350989348399304.Spec : Prop :=
  ∀ n, P2668350989348399304.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P18187503010333946168

`A099303(2*A151800(n))`
-/

namespace A069549.P18187503010333946168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (2 * A151800 n).toNat

end

end A069549.P18187503010333946168

namespace A069549

/-- `A099303(2*A151800(n))` -/
def P18187503010333946168.Spec : Prop :=
  ∀ n, P18187503010333946168.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P5779184717697853108

`A277896(A101300(n))`
-/

namespace A069549.P5779184717697853108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277896 (A101300 n).toNat

end

end A069549.P5779184717697853108

namespace A069549

/-- `A277896(A101300(n))` -/
def P5779184717697853108.Spec : Prop :=
  ∀ n, P5779184717697853108.a n = A069549 (n + 1)

end A069549

/-! ## A069549.P9666805670275353972

`A174373(∑[n+1]+1)²`
-/

namespace A069549.P9666805670275353972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174373 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A069549.P9666805670275353972

namespace A069549

/-- `A174373(∑[n+1]+1)²` -/
def P9666805670275353972.Spec : Prop :=
  ∀ n, P9666805670275353972.a n = A069549 (n + 1)

end A069549

/-!
# A069550: Squarefree part of n equals bigomega(n).

The programs for A069550, the canonical program `A069550.P15066678685378130192` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069550 has offset 1).

The definition of A069550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069550.P15066678685378130192

`eq[A001222(n+1), A007913(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069550

/-- `eq[A001222(n+1), A007913(n+1)]+1` -/
def P15066678685378130192.Spec : Prop :=
  ∀ n, (P15066678685378130192.a n : ℤ) = A069550 (n + 1)

theorem P15066678685378130192.correct : P15066678685378130192.Spec := by
  intro n
  simp only [A069550, Nat.add_sub_cancel]

end A069550

/-! ## A069550.P1417098119756622460

`eq[A001222(n+1), A056135(n+1)]+1`
-/

namespace A069550.P1417098119756622460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069550.P1417098119756622460

namespace A069550

/-- `eq[A001222(n+1), A056135(n+1)]+1` -/
def P1417098119756622460.Spec : Prop :=
  ∀ n, (P1417098119756622460.a n : ℤ) = A069550 (n + 1)

end A069550

/-! ## A069550.P4387456153093195490

`eq[A053143(n+1), A066959(n+1)]+1`
-/

namespace A069550.P4387456153093195490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069550.P4387456153093195490

namespace A069550

/-- `eq[A053143(n+1), A066959(n+1)]+1` -/
def P4387456153093195490.Spec : Prop :=
  ∀ n, (P4387456153093195490.a n : ℤ) = A069550 (n + 1)

end A069550

/-! ## A069550.P16530137193814182727

`eq[A007913(n+1), A144494(n+1)]+1`
-/

namespace A069550.P16530137193814182727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069550.P16530137193814182727

namespace A069550

/-- `eq[A007913(n+1), A144494(n+1)]+1` -/
def P16530137193814182727.Spec : Prop :=
  ∀ n, (P16530137193814182727.a n : ℤ) = A069550 (n + 1)

end A069550

/-! ## A069550.P18378200912168660263

`eq[A001222(n+1)², A055491(n+1)]+1`
-/

namespace A069550.P18378200912168660263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069550.P18378200912168660263

namespace A069550

/-- `eq[A001222(n+1)², A055491(n+1)]+1` -/
def P18378200912168660263.Spec : Prop :=
  ∀ n, (P18378200912168660263.a n : ℤ) = A069550 (n + 1)

end A069550

/-! ## A069550.P6258135518783747026

`A065475(eq[A007913(n+1), A144494(n+1)])`
-/

namespace A069550.P6258135518783747026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069550.P6258135518783747026

namespace A069550

/-- `A065475(eq[A007913(n+1), A144494(n+1)])` -/
def P6258135518783747026.Spec : Prop :=
  ∀ n, P6258135518783747026.a n = A069550 (n + 1)

end A069550

/-!
# A069551: Numbers k such that the squarefree part of k equals A062799(k).

The programs for A069551, there is no canonical definition to state claims against.
-/

/-! ## A069551.P14629319865683703744

`eq[A007913(n+1), A062799(n+1)]+1`
-/

namespace A069551.P14629319865683703744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069551.P14629319865683703744

/-! ## A069551.P12157309904536533255

`eq[A056135(n+1), A062799(n+1)]+1`
-/

namespace A069551.P12157309904536533255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069551.P12157309904536533255

/-! ## A069551.P4087725304998214528

`A020725(eq[A007913(n+1), A062799(n+1)])`
-/

namespace A069551.P4087725304998214528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069551.P4087725304998214528

/-! ## A069551.P2212484317216592820

`A020725(eq[A056135(n+1), A062799(n+1)])`
-/

namespace A069551.P2212484317216592820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069551.P2212484317216592820

/-! ## A069551.P17224242845332634122

`A181569(eq[A007913(n+1), A062799(n+1)])`
-/

namespace A069551.P17224242845332634122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069551.P17224242845332634122

/-!
# A069552: Numbers k such that phi(k) = sigma(core(k)) where phi(k) is the Euler totient function, sigma(k) the sum of divisors of k and core(k) the squarefree part of k (the smallest integer such that k*core(k) is a square).

The programs for A069552, there is no canonical definition to state claims against.
-/

/-! ## A069552.P1517864999002182581

`A325781(A315741(∑[n]))`
-/

namespace A069552.P1517864999002182581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (A315741 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A069552.P1517864999002182581

/-!
# A069553: Define S(k) to be the sequence of divisors and multiples of k, e.g. S(1) = 1,2,3,4,5... S(2) = 1,2,4,6,8,10,... S(10) = 1,2,5,10,20,30,40,50,...; a(n) = n-th term of the n-th sequence S(n).

The programs for A069553, the canonical program `A069553.P833839346037670753` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069553 has offset 1).

The definition of A069553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069553.P833839346037670753

`(n+1)*(n+1-A000005(n+1)+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069553

/-- `(n+1)*(n+1-A000005(n+1)+1)` -/
def P833839346037670753.Spec : Prop :=
  ∀ n, P833839346037670753.a n = A069553 (n + 1)

theorem P833839346037670753.correct : P833839346037670753.Spec := by
  intro n
  simp only [A069553, Nat.add_sub_cancel]

end A069553

/-! ## A069553.P6121313328460263912

`(2-∏{e}[n+1, #+1]+n)*(n+1)`
-/

namespace A069553.P6121313328460263912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)) * (n + 1 : ℤ)

end

end A069553.P6121313328460263912

namespace A069553

/-- `(2-∏{e}[n+1, #+1]+n)*(n+1)` -/
def P6121313328460263912.Spec : Prop :=
  ∀ n, P6121313328460263912.a n = A069553 (n + 1)

theorem P6121313328460263912.correct : P6121313328460263912.Spec := by
  intro n
  simp only [A069553, Nat.add_sub_cancel, A069553.P6121313328460263912.f1, A069553.P6121313328460263912.a, A069553.P833839346037670753.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069553

/-! ## A069553.P1157872258161205859

`(n+1)*A062968(n+1)`
-/

namespace A069553.P1157872258161205859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062968 (n + 1)

end

end A069553.P1157872258161205859

namespace A069553

/-- `(n+1)*A062968(n+1)` -/
def P1157872258161205859.Spec : Prop :=
  ∀ n, P1157872258161205859.a n = A069553 (n + 1)

end A069553

/-! ## A069553.P18275679129274077900

`(n+1)*(A049820(n+1)+1)`
-/

namespace A069553.P18275679129274077900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A049820 (n + 1) + 1)

end

end A069553.P18275679129274077900

namespace A069553

/-- `(n+1)*(A049820(n+1)+1)` -/
def P18275679129274077900.Spec : Prop :=
  ∀ n, P18275679129274077900.a n = A069553 (n + 1)

end A069553

/-! ## A069553.P17269326302194421041

`(n+1)*(A059292(n+1)-1)`
-/

namespace A069553.P17269326302194421041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A059292 (n + 1) - 1)

end

end A069553.P17269326302194421041

namespace A069553

/-- `(n+1)*(A059292(n+1)-1)` -/
def P17269326302194421041.Spec : Prop :=
  ∀ n, P17269326302194421041.a n = A069553 (n + 1)

theorem P17269326302194421041.correct : P17269326302194421041.Spec := by
  intro n
  simp only [A069553, Nat.add_sub_cancel, A069553.P17269326302194421041.a, A069553.P833839346037670753.a, A000005, A000005.P16091521709108585461.a, A059292, A059292.P13391037705740320393.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049820, A049820.P9428372222244335888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069553

/-! ## A069553.P294779760350097524

`(n+1)*(A378216(n+1)+n)`
-/

namespace A069553.P294779760350097524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A378216 (n + 1) + (n : ℤ))

end

end A069553.P294779760350097524

namespace A069553

/-- `(n+1)*(A378216(n+1)+n)` -/
def P294779760350097524.Spec : Prop :=
  ∀ n, P294779760350097524.a n = A069553 (n + 1)

theorem P294779760350097524.correct : P294779760350097524.Spec := by
  intro n
  simp only [A069553, Nat.add_sub_cancel, A069553.P294779760350097524.a, A069553.P833839346037670753.a, A000005, A000005.P16091521709108585461.a, A378216, A378216.P4619166357507459087.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069553

/-! ## A069553.P12161432470343313630

`(n+1)*(A286002(n+1)-n)`
-/

namespace A069553.P12161432470343313630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A286002 (n + 1) - (n : ℤ))

end

end A069553.P12161432470343313630

namespace A069553

/-- `(n+1)*(A286002(n+1)-n)` -/
def P12161432470343313630.Spec : Prop :=
  ∀ n, P12161432470343313630.a n = A069553 (n + 1)

theorem P12161432470343313630.correct : P12161432470343313630.Spec := by
  intro n
  simp only [A069553, Nat.add_sub_cancel, A069553.P12161432470343313630.a, A069553.P833839346037670753.a, A000005, A000005.P16091521709108585461.a, A286002, A286002.P1824755549209206382.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049820, A049820.P9428372222244335888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069553

/-! ## A069553.P16012602669880665042

`∑[2*(n+1)]-A038040(n+1)`
-/

namespace A069553.P16012602669880665042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A038040 (n + 1)

end

end A069553.P16012602669880665042

namespace A069553

/-- `∑[2*(n+1)]-A038040(n+1)` -/
def P16012602669880665042.Spec : Prop :=
  ∀ n, P16012602669880665042.a n = A069553 (n + 1)

end A069553

/-! ## A069553.P4325390002124476857

`(2-Δ[A006218(n)]+n)*(n+1)`
-/

namespace A069553.P4325390002124476857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n) + (n : ℤ)) * (n + 1 : ℤ)

end

end A069553.P4325390002124476857

namespace A069553

/-- `(2-Δ[A006218(n)]+n)*(n+1)` -/
def P4325390002124476857.Spec : Prop :=
  ∀ n, P4325390002124476857.a n = A069553 (n + 1)

end A069553

/-! ## A069553.P13067832344289624377

`(n+1)*(n+1-A032741(n+1))`
-/

namespace A069553.P13067832344289624377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A032741 (n + 1))

end

end A069553.P13067832344289624377

namespace A069553

/-- `(n+1)*(n+1-A032741(n+1))` -/
def P13067832344289624377.Spec : Prop :=
  ∀ n, P13067832344289624377.a n = A069553 (n + 1)

theorem P13067832344289624377.correct : P13067832344289624377.Spec := by
  intro n
  simp only [A069553, Nat.add_sub_cancel, A069553.P13067832344289624377.a, A069553.P833839346037670753.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069553

/-! ## A069553.P9392045292593334814

`(2-A000005(n+1)+n)*(n+1)`
-/

namespace A069553.P9392045292593334814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000005 (n + 1) + (n : ℤ)) * (n + 1 : ℤ)

end

end A069553.P9392045292593334814

namespace A069553

/-- `(2-A000005(n+1)+n)*(n+1)` -/
def P9392045292593334814.Spec : Prop :=
  ∀ n, P9392045292593334814.a n = A069553 (n + 1)

theorem P9392045292593334814.correct : P9392045292593334814.Spec := by
  intro n
  simp only [A069553, Nat.add_sub_cancel, A069553.P9392045292593334814.a, A069553.P833839346037670753.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069553

/-! ## A069553.P2031091513916138042

`(n+1)*(n+3-A334954(n+1))`
-/

namespace A069553.P2031091513916138042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 3 : ℤ) - A334954 (n + 1))

end

end A069553.P2031091513916138042

namespace A069553

/-- `(n+1)*(n+3-A334954(n+1))` -/
def P2031091513916138042.Spec : Prop :=
  ∀ n, P2031091513916138042.a n = A069553 (n + 1)

end A069553

/-! ## A069553.P2175199814991201847

`(n+1-A338117(2*(n+1)))*(n+1)`
-/

namespace A069553.P2175199814991201847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A338117 (2 * (n + 1))) * (n + 1 : ℤ)

end

end A069553.P2175199814991201847

namespace A069553

/-- `(n+1-A338117(2*(n+1)))*(n+1)` -/
def P2175199814991201847.Spec : Prop :=
  ∀ n, P2175199814991201847.a n = A069553 (n + 1)

end A069553

/-! ## A069553.P3846314549066627685

`∑{d}[n+1, (n+2)*A000010(#)-(n+1)]`
-/

namespace A069553.P3846314549066627685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 2 : ℤ) * A000010 d - (n + 1 : ℤ))

end

end A069553.P3846314549066627685

namespace A069553

/-- `∑{d}[n+1, (n+2)*A000010(#)-(n+1)]` -/
def P3846314549066627685.Spec : Prop :=
  ∀ n, P3846314549066627685.a n = A069553 (n + 1)

end A069553

/-! ## A069553.P12472237446763187514

`A344483(n+1)-A001065(n+1)`
-/

namespace A069553.P12472237446763187514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344483 (n + 1) - A001065 (n + 1)

end

end A069553.P12472237446763187514

namespace A069553

/-- `A344483(n+1)-A001065(n+1)` -/
def P12472237446763187514.Spec : Prop :=
  ∀ n, P12472237446763187514.a n = A069553 (n + 1)

end A069553

/-! ## A069553.P12557247922230924264

`A363735(n+1)-A000005(n+1)`
-/

namespace A069553.P12557247922230924264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363735 (n + 1) - A000005 (n + 1)

end

end A069553.P12557247922230924264

namespace A069553

/-- `A363735(n+1)-A000005(n+1)` -/
def P12557247922230924264.Spec : Prop :=
  ∀ n, P12557247922230924264.a n = A069553 (n + 1)

theorem P12557247922230924264.correct : P12557247922230924264.Spec := by
  intro n
  simp only [A069553, Nat.add_sub_cancel, A069553.P12557247922230924264.a, A069553.P833839346037670753.a, A000005, A000005.P16091521709108585461.a, A363735, A363735.P14979785734509614972.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A363734, A363734.P4451940321919636705.f1, A363734.P4451940321919636705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069553

/-! ## A069553.P14903927630321553338

`A183207(n+1)-A296966(n+1)`
-/

namespace A069553.P14903927630321553338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183207 (n + 1) - A296966 (n + 1)

end

end A069553.P14903927630321553338

namespace A069553

/-- `A183207(n+1)-A296966(n+1)` -/
def P14903927630321553338.Spec : Prop :=
  ∀ n, P14903927630321553338.a n = A069553 (n + 1)

end A069553

/-! ## A069553.P13635027380913189297

`(A325937(A004767(n)+1)+n+1)*(n+1)`
-/

namespace A069553.P13635027380913189297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325937 (A004767 n + 1).toNat + (n : ℤ) + 1) * (n + 1 : ℤ)

end

end A069553.P13635027380913189297

namespace A069553

/-- `(A325937(A004767(n)+1)+n+1)*(n+1)` -/
def P13635027380913189297.Spec : Prop :=
  ∀ n, P13635027380913189297.a n = A069553 (n + 1)

end A069553

/-! ## A069553.P4677957829511110343

`(n+1)²-(A038040(n+1)+A001478(n+1))`
-/

namespace A069553.P4677957829511110343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A038040 (n + 1) + A001478 (n + 1))

end

end A069553.P4677957829511110343

namespace A069553

/-- `(n+1)²-(A038040(n+1)+A001478(n+1))` -/
def P4677957829511110343.Spec : Prop :=
  ∀ n, P4677957829511110343.a n = A069553 (n + 1)

theorem P4677957829511110343.correct : P4677957829511110343.Spec := by
  intro n
  simp only [A069553, Nat.add_sub_cancel, A069553.P4677957829511110343.a, A069553.P833839346037670753.a, A000005, A000005.P16091521709108585461.a, A001478, A001478.P11279598861711037921.a, A038040, A038040.P16512896840577774730.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069553

/-! ## A069553.P2198146688252253598

`A000217(n+1)+A000217(n+1)-A038040(n+1)`
-/

namespace A069553.P2198146688252253598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 1) - A038040 (n + 1))

end

end A069553.P2198146688252253598

namespace A069553

/-- `A000217(n+1)+A000217(n+1)-A038040(n+1)` -/
def P2198146688252253598.Spec : Prop :=
  ∀ n, P2198146688252253598.a n = A069553 (n + 1)

theorem P2198146688252253598.correct : P2198146688252253598.Spec := by
  intro n
  simp only [A069553, Nat.add_sub_cancel, A069553.P2198146688252253598.a, A069553.P833839346037670753.a, A000005, A000005.P16091521709108585461.a, A000217, A000217.P10269402890581615239.a, A038040, A038040.P16512896840577774730.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069553

/-!
# A069554: Smallest k > 0 with gcd(k, rev(k)) = n, where rev(k) is digit reversal of k, or 0 if no such k exists.

The programs for A069554, there is no canonical definition to state claims against.
-/

/-! ## A069554.P7706447580602477060

`A062567(A043317(n+1))`
-/

namespace A069554.P7706447580602477060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062567 (A043317 (n + 1)).toNat

end

end A069554.P7706447580602477060

/-! ## A069554.P18250254620177307299

`A062567(A044914(n+1))`
-/

namespace A069554.P18250254620177307299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062567 (A044914 (n + 1)).toNat

end

end A069554.P18250254620177307299

/-! ## A069554.P13054117429066445

`A062567(A055648(n+1))`
-/

namespace A069554.P13054117429066445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062567 (A055648 (n + 1)).toNat

end

end A069554.P13054117429066445

/-! ## A069554.P2209797213755627938

`A072088(A062567(n+1))`
-/

namespace A069554.P2209797213755627938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A062567 (n + 1)).toNat

end

end A069554.P2209797213755627938

/-! ## A069554.P17684266217112482011

`A062567(A132378(n+1))`
-/

namespace A069554.P17684266217112482011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062567 (A132378 (n + 1)).toNat

end

end A069554.P17684266217112482011

/-!
# A069556: Primes in which the k-th digit (counting from the right) is either a nonzero multiple of k or a divisor of k; furthermore the digit 1 is allowed only when k has no other divisors < 10.

The programs for A069556, there is no canonical definition to state claims against.
-/

/-! ## A069556.P2556189445055826661

`p?[A069571(n+1)]`
-/

namespace A069556.P2556189445055826661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069556.P2556189445055826661

/-! ## A069556.P6458049856615202531

`p?[record[A069571(A154958(n))]]`
-/

namespace A069556.P6458049856615202531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069556.P6458049856615202531

/-! ## A069556.P3388925727497109610

`p?[record[A069571(A203814(n))]]`
-/

namespace A069556.P3388925727497109610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069556.P3388925727497109610

/-! ## A069556.P5068175669918505802

`p?[record[A069571(A246694(n))]]`
-/

namespace A069556.P5068175669918505802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069556.P5068175669918505802

/-! ## A069556.P12282425894800325628

`record[A020639(A069571(n+2))]`
-/

namespace A069556.P12282425894800325628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A069571 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069556.P12282425894800325628

/-! ## A069556.P1452103155649547542

`filter[A069571(n+1), A010051(#)]`
-/

namespace A069556.P1452103155649547542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069556.P1452103155649547542

/-! ## A069556.P16187135549952145090

`∩[A000040(n+1), A069571(n+1)]`
-/

namespace A069556.P16187135549952145090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069556.P16187135549952145090

/-! ## A069556.P8031388227523909414

`∩[A038618(n+1), A069571(n+1)]`
-/

namespace A069556.P8031388227523909414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069556.P8031388227523909414

/-! ## A069556.P10086620270485387760

`∩[A069571(n+1), A076805(n+1)]`
-/

namespace A069556.P10086620270485387760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069556.P10086620270485387760

/-! ## A069556.P3628742593879241586

`∩[A069571(n+1), A106118(n+1)]`
-/

namespace A069556.P3628742593879241586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069556.P3628742593879241586

/-! ## A069556.P17369874887454993545

`∩[A069571(n+1), A182986(n+1)]`
-/

namespace A069556.P17369874887454993545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069556.P17369874887454993545

/-! ## A069556.P2696411273760043970

`∩[A069571(n+1), A240920(n+1)]`
-/

namespace A069556.P2696411273760043970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069556.P2696411273760043970

/-!
# A069557: Squares in which the k-th significant digit either divides k or is a multiple of k. Is 1 only in case k has no other single-digit divisor.

The programs for A069557, there is no canonical definition to state claims against.
-/

/-! ## A069557.P11996416545720629362

`∩[A069571(n+1), n²]`
-/

namespace A069557.P11996416545720629362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A069557.P11996416545720629362

/-! ## A069557.P16071263945857374066

`∩[A000290(n), A069571(n+1)]`
-/

namespace A069557.P16071263945857374066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069557.P16071263945857374066

/-! ## A069557.P572419069020780420

`∩[A052041(n+1), A069571(n+1)]`
-/

namespace A069557.P572419069020780420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069557.P572419069020780420

/-! ## A069557.P8812494869548371795

`∩[A069560(n+1), A069571(n+1)]`
-/

namespace A069557.P8812494869548371795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069557.P8812494869548371795

/-! ## A069557.P2834915157422630278

`∩[A370785(n+1), A069571(n+1)]`
-/

namespace A069557.P2834915157422630278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069557.P2834915157422630278

/-!
# A069558: Triangular numbers in which the k-th digit, numbering them from right to left, either divides k or is a nonzero multiple of k. Is 1 only when k has no other single-digit divisor (less than 10).

The programs for A069558, there is no canonical definition to state claims against.
-/

/-! ## A069558.P9019386756041127312

`∩[A069571(n+1), ∑[n]]`
-/

namespace A069558.P9019386756041127312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A069558.P9019386756041127312

/-! ## A069558.P5187018597639205950

`∩[A000217(n), A069571(n+1)]`
-/

namespace A069558.P5187018597639205950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069558.P5187018597639205950

/-! ## A069558.P6304293209286128381

`∩[A000096(n)+1, A069571(n+1)]`
-/

namespace A069558.P6304293209286128381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069558.P6304293209286128381

/-! ## A069558.P16750571092787976978

`∩[A069559(n+1), A069571(n+1)]`
-/

namespace A069558.P16750571092787976978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069558.P16750571092787976978

/-! ## A069558.P13903715012389839551

`∩[A334129(n+1), A069571(n+1)]`
-/

namespace A069558.P13903715012389839551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069558.P13903715012389839551

/-!
# A069559: Triangular numbers in which the k-th significant digit either divides k or is a multiple of k.

The programs for A069559, there is no canonical definition to state claims against.
-/

/-! ## A069559.P1574955572015123186

`∩[A069570(n+1), A000217(n)]`
-/

namespace A069559.P1574955572015123186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069559.P1574955572015123186

/-! ## A069559.P8948756275590658594

`∩[A069570(n+1), A161680(n+1)]`
-/

namespace A069559.P8948756275590658594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069559.P8948756275590658594

/-! ## A069559.P5691158117342654810

`∩[A060544(n+1)-A016754(n), A069570(n+1)]`
-/

namespace A069559.P5691158117342654810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) - A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069559.P5691158117342654810

/-! ## A069559.P17833519309298759300

`∩[2*A000292(n)-A000330(n), A069570(n+1)]`
-/

namespace A069559.P17833519309298759300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 n - A000330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069559.P17833519309298759300

/-! ## A069559.P18210370417771155509

`A000217(eq[A170967(n+2), A170983(n)])`
-/

namespace A069559.P18210370417771155509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170967 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069559.P18210370417771155509

/-!
# A069560: Squares in which the k-th significant digit either divides k or is a multiple of k.

The programs for A069560, there is no canonical definition to state claims against.
-/

/-! ## A069560.P16988826000835981922

`∩[A069570(n+1), n²]`
-/

namespace A069560.P16988826000835981922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069570 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A069560.P16988826000835981922

/-! ## A069560.P15580986552639872905

`∩[A000290(n), A069570(n+1)]`
-/

namespace A069560.P15580986552639872905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069560.P15580986552639872905

/-! ## A069560.P9769717006457700773

`∩[A052041(n+1), A069570(n+1)]`
-/

namespace A069560.P9769717006457700773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069560.P9769717006457700773

/-! ## A069560.P6414664315656408026

`∩[n², A069570(A004442(2*n)-n)]`
-/

namespace A069560.P6414664315656408026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069570 (A004442 (2 * n) - (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069560.P6414664315656408026

/-! ## A069560.P2271783636963408175

`lt[A370808(n), A277905(n+1)]²`
-/

namespace A069560.P2271783636963408175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A069560.P2271783636963408175

/-!
# A069561: Start of a run of n consecutive positive numbers divisible respectively by first n primes.

The programs for A069561, there is no canonical definition to state claims against.
-/

/-! ## A069561.P374903501247588022

`A073605(n+1)+1`
-/

namespace A069561.P374903501247588022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073605 (n + 1) + 1

end

end A069561.P374903501247588022

/-! ## A069561.P7741263319448853073

`A002110(n+1)-A187930(n+1)`
-/

namespace A069561.P7741263319448853073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A187930 (n + 1)

end

end A069561.P7741263319448853073

/-! ## A069561.P10218481589882879733

`∏[Δ[A007504(n)]]-A187930(n+1)`
-/

namespace A069561.P10218481589882879733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A187930 (n + 1)

end

end A069561.P10218481589882879733

/-! ## A069561.P2846013414519465532

`∏[p?[A259153(n)]]-A187930(n+1)`
-/

namespace A069561.P2846013414519465532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A187930 (n + 1)

end

end A069561.P2846013414519465532

/-! ## A069561.P13258755868241872706

`∏[A008578(n+2)]-A187930(n+1)`
-/

namespace A069561.P13258755868241872706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A187930 (n + 1)

end

end A069561.P13258755868241872706

/-!
# A069562: Numbers, m, whose odd part (largest odd divisor, A000265(m)) is a nontrivial square.

The programs for A069562, the canonical program `A069562.P5904755138920581150` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069562 has offset 1).

The definition of A069562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069562.P12520239862969528861

`filter[A124966(n+1), A053866(#)]`
-/

namespace A069562.P12520239862969528861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A069562.P12520239862969528861

namespace A069562

/-- `filter[A124966(n+1), A053866(#)]` -/
def P12520239862969528861.Spec : Prop :=
  ∀ n, P12520239862969528861.a n = A069562 (n + 1)

end A069562

/-! ## A069562.P5904755138920581150

`filter[A028982(n+1), A202238(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069562

/-- `filter[A028982(n+1), A202238(#)]` -/
def P5904755138920581150.Spec : Prop :=
  ∀ n, P5904755138920581150.a n = A069562 (n + 1)

theorem P5904755138920581150.correct : P5904755138920581150.Spec := by
  intro n
  simp only [A069562, Nat.add_sub_cancel]

end A069562

/-! ## A069562.P6034549666271316483

`filter[A028982(n+1), A347523(#)]`
-/

namespace A069562.P6034549666271316483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A069562.P6034549666271316483

namespace A069562

/-- `filter[A028982(n+1), A347523(#)]` -/
def P6034549666271316483.Spec : Prop :=
  ∀ n, P6034549666271316483.a n = A069562 (n + 1)

end A069562

/-! ## A069562.P5552791269293087756

`filter[A028982(n+1), A353626(#)]`
-/

namespace A069562.P5552791269293087756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A069562.P5552791269293087756

namespace A069562

/-- `filter[A028982(n+1), A353626(#)]` -/
def P5552791269293087756.Spec : Prop :=
  ∀ n, P5552791269293087756.a n = A069562 (n + 1)

end A069562

/-! ## A069562.P17777641600403036918

`filter[A376216(n+1), A053866(#)]`
-/

namespace A069562.P17777641600403036918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A069562.P17777641600403036918

namespace A069562

/-- `filter[A376216(n+1), A053866(#)]` -/
def P17777641600403036918.Spec : Prop :=
  ∀ n, P17777641600403036918.a n = A069562 (n + 1)

end A069562

/-! ## A069562.P13826233612209014330

`∩[A028982(n+1), A376216(n+1)]`
-/

namespace A069562.P13826233612209014330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069562.P13826233612209014330

namespace A069562

/-- `∩[A028982(n+1), A376216(n+1)]` -/
def P13826233612209014330.Spec : Prop :=
  ∀ n, (P13826233612209014330.a n : ℤ) = A069562 (n + 1)

end A069562

/-! ## A069562.P7994227937490175247

`∩[A028982(n+1), A124966(n+1)]`
-/

namespace A069562.P7994227937490175247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069562.P7994227937490175247

namespace A069562

/-- `∩[A028982(n+1), A124966(n+1)]` -/
def P7994227937490175247.Spec : Prop :=
  ∀ n, (P7994227937490175247.a n : ℤ) = A069562 (n + 1)

end A069562

/-! ## A069562.P1746484497432951605

`filter[A038838(n+1), A053866(#)]`
-/

namespace A069562.P1746484497432951605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A069562.P1746484497432951605

namespace A069562

/-- `filter[A038838(n+1), A053866(#)]` -/
def P1746484497432951605.Spec : Prop :=
  ∀ n, P1746484497432951605.a n = A069562 (n + 1)

end A069562

/-! ## A069562.P10994355120137971313

`∩[A028982(n+1), A038838(n+1)]`
-/

namespace A069562.P10994355120137971313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069562.P10994355120137971313

namespace A069562

/-- `∩[A028982(n+1), A038838(n+1)]` -/
def P10994355120137971313.Spec : Prop :=
  ∀ n, (P10994355120137971313.a n : ℤ) = A069562 (n + 1)

end A069562

/-! ## A069562.P6766404220705399313

`∩[A004751(n+1), A028982(n+1)]`
-/

namespace A069562.P6766404220705399313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069562.P6766404220705399313

namespace A069562

/-- `∩[A004751(n+1), A028982(n+1)]` -/
def P6766404220705399313.Spec : Prop :=
  ∀ n, (P6766404220705399313.a n : ℤ) = A069562 (n + 1)

end A069562

/-! ## A069562.P16162436153449753571

`filter[A225836(n+1), A053866(#)]`
-/

namespace A069562.P16162436153449753571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A069562.P16162436153449753571

namespace A069562

/-- `filter[A225836(n+1), A053866(#)]` -/
def P16162436153449753571.Spec : Prop :=
  ∀ n, P16162436153449753571.a n = A069562 (n + 1)

end A069562

/-! ## A069562.P13566984000335807681

`∩[A225836(n+1), A083854(n)]`
-/

namespace A069562.P13566984000335807681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069562.P13566984000335807681

namespace A069562

/-- `∩[A225836(n+1), A083854(n)]` -/
def P13566984000335807681.Spec : Prop :=
  ∀ n, (P13566984000335807681.a n : ℤ) = A069562 (n + 1)

end A069562

/-! ## A069562.P4922314501833677397

`∩[A028982(n+1), A225836(n+1)]`
-/

namespace A069562.P4922314501833677397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069562.P4922314501833677397

namespace A069562

/-- `∩[A028982(n+1), A225836(n+1)]` -/
def P4922314501833677397.Spec : Prop :=
  ∀ n, (P4922314501833677397.a n : ℤ) = A069562 (n + 1)

end A069562

/-! ## A069562.P4452659051608967898

`∩[A069265(n+1), A225836(n+1)]`
-/

namespace A069562.P4452659051608967898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069562.P4452659051608967898

namespace A069562

/-- `∩[A069265(n+1), A225836(n+1)]` -/
def P4452659051608967898.Spec : Prop :=
  ∀ n, (P4452659051608967898.a n : ℤ) = A069562 (n + 1)

end A069562

/-! ## A069562.P7542906209046162501

`eq[A036987(n), A292377(n+1)]+1`
-/

namespace A069562.P7542906209046162501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069562.P7542906209046162501

namespace A069562

/-- `eq[A036987(n), A292377(n+1)]+1` -/
def P7542906209046162501.Spec : Prop :=
  ∀ n, (P7542906209046162501.a n : ℤ) = A069562 (n + 1)

end A069562

/-! ## A069562.P11653630475848631615

`eq[A053866(n+1)+1, A201219(n+1)]+1`
-/

namespace A069562.P11653630475848631615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069562.P11653630475848631615

namespace A069562

/-- `eq[A053866(n+1)+1, A201219(n+1)]+1` -/
def P11653630475848631615.Spec : Prop :=
  ∀ n, (P11653630475848631615.a n : ℤ) = A069562 (n + 1)

end A069562

/-! ## A069562.P13991176455372616562

`filter[A105441(n+1), A053866(#)]`
-/

namespace A069562.P13991176455372616562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A069562.P13991176455372616562

namespace A069562

/-- `filter[A105441(n+1), A053866(#)]` -/
def P13991176455372616562.Spec : Prop :=
  ∀ n, P13991176455372616562.a n = A069562 (n + 1)

end A069562

/-! ## A069562.P4188068369644815620

`∩[A028982(n+1), A105441(n+1)]`
-/

namespace A069562.P4188068369644815620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069562.P4188068369644815620

namespace A069562

/-- `∩[A028982(n+1), A105441(n+1)]` -/
def P4188068369644815620.Spec : Prop :=
  ∀ n, (P4188068369644815620.a n : ℤ) = A069562 (n + 1)

end A069562

/-! ## A069562.P7641169488878146043

`filter[A342082(n+1), A053866(#)]`
-/

namespace A069562.P7641169488878146043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A069562.P7641169488878146043

namespace A069562

/-- `filter[A342082(n+1), A053866(#)]` -/
def P7641169488878146043.Spec : Prop :=
  ∀ n, P7641169488878146043.a n = A069562 (n + 1)

end A069562

/-! ## A069562.P14465938731161342204

`∩[A028982(n+1), A342082(n+1)]`
-/

namespace A069562.P14465938731161342204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069562.P14465938731161342204

namespace A069562

/-- `∩[A028982(n+1), A342082(n+1)]` -/
def P14465938731161342204.Spec : Prop :=
  ∀ n, (P14465938731161342204.a n : ℤ) = A069562 (n + 1)

end A069562

/-!
# A069563: a(1) = 1, a(2) = 4; for n > 2, a(n) = k*a(n-1) + 1 where k is smallest number > 1 such that k*a(n-1) + 1 is a multiple of n.

The programs for A069563, there is no canonical definition to state claims against.
-/

/-! ## A069563.P9155064397653240237

`(n+1)*A347649(A026554(n+1))`
-/

namespace A069563.P9155064397653240237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A347649 (A026554 (n + 1)).toNat

end

end A069563.P9155064397653240237

/-! ## A069563.P13677572069114145951

`(n+1)*A320057(A222626(n+1))`
-/

namespace A069563.P13677572069114145951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320057 (A222626 (n + 1)).toNat

end

end A069563.P13677572069114145951

/-!
# A069564: a(1) = 2; a(n) = k*a(n-1) + 1 is a multiple of n-th prime with k > 1.

The programs for A069564, there is no canonical definition to state claims against.
-/

/-! ## A069564.P18137157582627111552

`A005408((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A069564.P18137157582627111552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005408 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A069564.P18137157582627111552

/-!
# A069565: a(0) = 1, a(n) = k*a(n-1) + 1 is a multiple of n-th prime. If no such number exists then a(n) = 0 and a(n+1) = k*a(n-1) + 1 is a multiple of (n+1)-th prime; i.e., a(r) = smallest multiple of the r-th prime = k* a(s) + 1 where a(s) is the last nonzero term.

The programs for A069565, there is no canonical definition to state claims against.
-/

/-! ## A069565.P7695497838273231478

`∑[A067498(A028338(n))]`
-/

namespace A069565.P7695497838273231478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067498 (A028338 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069565.P7695497838273231478

/-! ## A069565.P3915605406839200329

`lcm(A005728(n), A020639(A079938(n+1)))`
-/

namespace A069565.P3915605406839200329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005728 n) (A020639 (A079938 (n + 1)).toNat)

end

end A069565.P3915605406839200329

/-! ## A069565.P10662131423091692063

`eq[A243403(A301382(n+2)), A306846(n)]`
-/

namespace A069565.P10662131423091692063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243403 (A301382 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069565.P10662131423091692063

/-!
# A069567: Smaller of two consecutive primes which are anagrams of each other.

The programs for A069567, there is no canonical definition to state claims against.
-/

/-! ## A069567.P721023741102313580

`A072274(Δ[n²])`
-/

namespace A069567.P721023741102313580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072274 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069567.P721023741102313580

/-! ## A069567.P755332490473783631

`record[A072274(A000265(n+1))]`
-/

namespace A069567.P755332490473783631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072274 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069567.P755332490473783631

/-! ## A069567.P17752480203713515987

`record[A072274(A106609(n+1))]`
-/

namespace A069567.P17752480203713515987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072274 (A106609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069567.P17752480203713515987

/-! ## A069567.P3846542526567128217

`A072274(2*n+1)%A072274(n+1)²`
-/

namespace A069567.P3846542526567128217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072274 (2 * n + 1)) (A072274 (n + 1) ^ 2)

end

end A069567.P3846542526567128217

/-! ## A069567.P2402443457740222350

`A072274(2*n+1)+char[A049081(n+3)]`
-/

namespace A069567.P2402443457740222350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049081 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072274 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A069567.P2402443457740222350

/-! ## A069567.P2632717850092728617

`A072274(2*n+1)+A007814(A038025(2*(n+2)))`
-/

namespace A069567.P2632717850092728617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072274 (2 * n + 1) + A007814 (A038025 (2 * (n + 2))).toNat

end

end A069567.P2632717850092728617

/-! ## A069567.P12469609021216667576

`record[A072274(A033558(n+2))]`
-/

namespace A069567.P12469609021216667576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072274 (A033558 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069567.P12469609021216667576

/-!
# A069569: a(n) = smallest prime that can be written in base 10 using just n n's.

The programs for A069569, there is no canonical definition to state claims against.
-/

/-! ## A069569.P2321225258917041930

`A178559(n%a(n-1))` with `a(0)=2`
-/

namespace A069569.P2321225258917041930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A178559 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A069569.P2321225258917041930

/-! ## A069569.P11071713647887104183

`A178559(and(n, or(n, a(n-1))))` with `a(0)=2`
-/

namespace A069569.P11071713647887104183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A178559 (Int.land (n : ℤ) (Int.lor (n : ℤ) (a (n - 1)))).toNat

end

end A069569.P11071713647887104183

/-! ## A069569.P10536856695731924055

`A375760(A321536(n))`
-/

namespace A069569.P10536856695731924055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A321536 n).toNat

end

end A069569.P10536856695731924055

/-! ## A069569.P6459622944836681311

`A375760(A338754(n))`
-/

namespace A069569.P6459622944836681311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A338754 n).toNat

end

end A069569.P6459622944836681311

/-! ## A069569.P6916842605674616403

`A375760(A333440(n+1))`
-/

namespace A069569.P6916842605674616403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375760 (A333440 (n + 1)).toNat

end

end A069569.P6916842605674616403

/-!
# A069570: Numbers n in which the k-th digit (counted from the right) is nonzero and either a divisor or a multiple of k, for all 1 <= k <= number of digits of n.

The programs for A069570, there is no canonical definition to state claims against.
-/

/-! ## A069570.P13708220905807363860

`eq[A103957(A066568(n)), A168046(n)]`
-/

namespace A069570.P13708220905807363860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103957 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069570.P13708220905807363860

/-! ## A069570.P4165153973844970131

`lt[A029180(A179051(n)), A215887(n)]`
-/

namespace A069570.P4165153973844970131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 (A179051 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069570.P4165153973844970131

/-! ## A069570.P4381218884607768178

`lt[A029180(A324160(n)), A215887(n)]`
-/

namespace A069570.P4381218884607768178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 (A324160 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069570.P4381218884607768178

/-! ## A069570.P2283989045748163691

`eq[A060361(A126696(n)), A168046(n)]`
-/

namespace A069570.P2283989045748163691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (A126696 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069570.P2283989045748163691

/-! ## A069570.P16955592098927531640

`eq[A060361(A126696(n)), A168184(n)]`
-/

namespace A069570.P16955592098927531640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (A126696 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069570.P16955592098927531640

/-!
# A069571: Numbers n in which the k-th digit (counted from the right) is nonzero and is either a divisor of k (but not 1 in case k has a single-digit prime divisor) or a multiple of k, for all 1 <= k <= number of digits of n.

The programs for A069571, there is no canonical definition to state claims against.
-/

/-! ## A069571.P422184237350200217

`record[A004719(A140281(n)+1)]`
-/

namespace A069571.P422184237350200217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A140281 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069571.P422184237350200217

/-! ## A069571.P5706154368328788736

`filter[A140281(n), A168046(#)]`
-/

namespace A069571.P5706154368328788736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A069571.P5706154368328788736

/-! ## A069571.P15760278981266816481

`∩[A052382(n+1), A140281(n)]`
-/

namespace A069571.P15760278981266816481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069571.P15760278981266816481

/-! ## A069571.P17837155518946984197

`∩[A069570(n+1), A140281(n)]`
-/

namespace A069571.P17837155518946984197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069571.P17837155518946984197

/-! ## A069571.P18268069293143550549

`lt[A118759(n)%20, 9]+1`
-/

namespace A069571.P18268069293143550549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 n) 20

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A069571.P18268069293143550549

/-!
# A069572: Smallest n-digit number in which the k-th digit (from the right!) is a divisor of k, greater than 1 unless k has no single-digit divisor > 1.

The programs for A069572, there is no canonical definition to state claims against.
-/

/-! ## A069572.P16778822660776641839

`∑[10^n*A020639(A227549(n+1)+1)]`
-/

namespace A069572.P16778822660776641839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A020639 (A227549 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069572.P16778822660776641839

/-! ## A069572.P17115652651578231763

`A007623(A225901(A231716(A001088(n+2))))`
-/

namespace A069572.P17115652651578231763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A225901 (A231716 (A001088 (n + 2)).toNat).toNat).toNat

end

end A069572.P17115652651578231763

/-!
# A069575: Numbers k >= 4 such that k contains the digit 0 in no base b with 2 < b < k.

The programs for A069575, there is no canonical definition to state claims against.
-/

/-! ## A069575.P6885572047974368095

`record[A270027(n+4)]`
-/

namespace A069575.P6885572047974368095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270027 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069575.P6885572047974368095

/-! ## A069575.P13490683760019817727

`A270037(a(n-1))` with `a(0)=4`
-/

namespace A069575.P13490683760019817727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A270037 (a (n - 1)).toNat

end

end A069575.P13490683760019817727

/-! ## A069575.P17699781600998106403

`record[gcd(val(n+1, 3), A270037(n+3))]`
-/

namespace A069575.P17699781600998106403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 3 : ℤ) (A270037 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069575.P17699781600998106403

/-! ## A069575.P13285456591778260256

`A270037(∑[floor(∑[2^n/3])]+3)`
-/

namespace A069575.P13285456591778260256
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270037 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A069575.P13285456591778260256

/-!
# A069577: Smallest prime p such that pi(n) <= pi(p)*2, where pi(n) is the number of primes <= n, A000720.

The programs for A069577, the canonical program `A069577.P2323388338216370360` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069577 has offset 2).

The definition of A069577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069577.P4435814190022671816

`A109763(A000720(n+2))`
-/

namespace A069577.P4435814190022671816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A000720 (n + 2)).toNat

end

end A069577.P4435814190022671816

namespace A069577

/-- `A109763(A000720(n+2))` -/
def P4435814190022671816.Spec : Prop :=
  ∀ n, P4435814190022671816.a n = A069577 (n + 2)

end A069577

/-! ## A069577.P17925093317527769834

`A000040(ceil(A000720(n+2)/2))`
-/

namespace A069577.P17925093317527769834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(A000720 (n + 2) : ℚ) / 2⌉.toNat

end

end A069577.P17925093317527769834

namespace A069577

/-- `A000040(ceil(A000720(n+2)/2))` -/
def P17925093317527769834.Spec : Prop :=
  ∀ n, P17925093317527769834.a n = A069577 (n + 2)

end A069577

/-! ## A069577.P4002071350460492269

`A000040(round(A000720(n+2)/2))`
-/

namespace A069577.P4002071350460492269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A000720 (n + 2) : ℚ) / 2)).toNat

end

end A069577.P4002071350460492269

namespace A069577

/-- `A000040(round(A000720(n+2)/2))` -/
def P4002071350460492269.Spec : Prop :=
  ∀ n, P4002071350460492269.a n = A069577 (n + 2)

end A069577

/-! ## A069577.P2323388338216370360

`A000040(∑[char[A040976(2*n+1)]])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069577

/-- `A000040(∑[char[A040976(2*n+1)]])` -/
def P2323388338216370360.Spec : Prop :=
  ∀ n, P2323388338216370360.a n = A069577 (n + 2)

theorem P2323388338216370360.correct : P2323388338216370360.Spec := by
  intro n
  simp only [A069577, Nat.add_sub_cancel]

end A069577

/-! ## A069577.P4647441592551822442

`A109763(A123246(n+2))`
-/

namespace A069577.P4647441592551822442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A123246 (n + 2)).toNat

end

end A069577.P4647441592551822442

namespace A069577

/-- `A109763(A123246(n+2))` -/
def P4647441592551822442.Spec : Prop :=
  ∀ n, P4647441592551822442.a n = A069577 (n + 2)

end A069577

/-! ## A069577.P9719817373305048704

`A000040(A321018(n+2))`
-/

namespace A069577.P9719817373305048704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A321018 (n + 2)).toNat

end

end A069577.P9719817373305048704

namespace A069577

/-- `A000040(A321018(n+2))` -/
def P9719817373305048704.Spec : Prop :=
  ∀ n, P9719817373305048704.a n = A069577 (n + 2)

end A069577

/-! ## A069577.P18112721982581214093

`A109763(Δ[A046992(n+1)])`
-/

namespace A069577.P18112721982581214093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (f1 (n + 1) - f1 n).toNat

end

end A069577.P18112721982581214093

namespace A069577

/-- `A109763(Δ[A046992(n+1)])` -/
def P18112721982581214093.Spec : Prop :=
  ∀ n, P18112721982581214093.a n = A069577 (n + 2)

end A069577

/-! ## A069577.P12341942134918908071

`A000040(floor(A036234(n+2)/2))`
-/

namespace A069577.P12341942134918908071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(A036234 (n + 2) : ℚ) / 2⌋.toNat

end

end A069577.P12341942134918908071

namespace A069577

/-- `A000040(floor(A036234(n+2)/2))` -/
def P12341942134918908071.Spec : Prop :=
  ∀ n, P12341942134918908071.a n = A069577 (n + 2)

end A069577

/-! ## A069577.P16785349972803455878

`A109763(A357984(A003961(A109763(2*n+1))))`
-/

namespace A069577.P16785349972803455878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A357984 (A003961 (A109763 (2 * n + 1)).toNat).toNat).toNat

end

end A069577.P16785349972803455878

namespace A069577

/-- `A109763(A357984(A003961(A109763(2*n+1))))` -/
def P16785349972803455878.Spec : Prop :=
  ∀ n, P16785349972803455878.a n = A069577 (n + 2)

end A069577

/-! ## A069577.P960191673531632191

`A109763(A357984(A297002(A109763(n+2))))`
-/

namespace A069577.P960191673531632191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A357984 (A297002 (A109763 (n + 2)).toNat).toNat).toNat

end

end A069577.P960191673531632191

namespace A069577

/-- `A109763(A357984(A297002(A109763(n+2))))` -/
def P960191673531632191.Spec : Prop :=
  ∀ n, P960191673531632191.a n = A069577 (n + 2)

end A069577

/-!
# A069579: Numbers k such that phi(core(k)) = core(phi(k)) where core(k) is the squarefree part of k (the smallest integer such that k*core(k) is a square).

The programs for A069579, the canonical program `A069579.P15303065662107838082` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069579 has offset 1).

The definition of A069579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069579.P15303065662107838082

`eq[A007913(A000010(n+1)), A173557(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069579

/-- `eq[A007913(A000010(n+1)), A173557(n+1)]+1` -/
def P15303065662107838082.Spec : Prop :=
  ∀ n, (P15303065662107838082.a n : ℤ) = A069579 (n + 1)

theorem P15303065662107838082.correct : P15303065662107838082.Spec := by
  intro n
  simp only [A069579, Nat.add_sub_cancel]

end A069579

/-! ## A069579.P11904684135374045331

`eq[A336551(n+1), A336642(A000010(n+1))]+1`
-/

namespace A069579.P11904684135374045331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069579.P11904684135374045331

namespace A069579

/-- `eq[A336551(n+1), A336642(A000010(n+1))]+1` -/
def P11904684135374045331.Spec : Prop :=
  ∀ n, (P11904684135374045331.a n : ℤ) = A069579 (n + 1)

end A069579

/-! ## A069579.P12040253787108779849

`eq[A336642(A000010(n+1)), A336644(n+1)]+1`
-/

namespace A069579.P12040253787108779849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069579.P12040253787108779849

namespace A069579

/-- `eq[A336642(A000010(n+1)), A336644(n+1)]+1` -/
def P12040253787108779849.Spec : Prop :=
  ∀ n, (P12040253787108779849.a n : ℤ) = A069579 (n + 1)

end A069579

/-! ## A069579.P7240950318991860517

`record[A327171(n+1)/A102631(A173557(n+1))]`
-/

namespace A069579.P7240950318991860517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A102631 (A173557 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069579.P7240950318991860517

namespace A069579

/-- `record[A327171(n+1)/A102631(A173557(n+1))]` -/
def P7240950318991860517.Spec : Prop :=
  ∀ n, P7240950318991860517.a n = (A069579 (n + 1) : ℚ)

end A069579

/-! ## A069579.P9789042840206338487

`record[A350390(n+1)/A000188(A173557(n+1))]`
-/

namespace A069579.P9789042840206338487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350390 (n + 1) : ℚ) / (A000188 (A173557 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069579.P9789042840206338487

namespace A069579

/-- `record[A350390(n+1)/A000188(A173557(n+1))]` -/
def P9789042840206338487.Spec : Prop :=
  ∀ n, P9789042840206338487.a n = (A069579 (n + 1) : ℚ)

end A069579

/-!
# A069580: Number of noninvertible n X n matrices mod 4 (i.e., over the ring Z_4).

The programs for A069580, the canonical program `A069580.P13053955226640931518` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069580 has offset 1).

The definition of A069580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069580.P13053955226640931518

`4^(n+1)²-A065128(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069580

/-- `4^(n+1)²-A065128(n+1)` -/
def P13053955226640931518.Spec : Prop :=
  ∀ n, P13053955226640931518.a n = A069580 (n + 1)

theorem P13053955226640931518.correct : P13053955226640931518.Spec := by
  intro n
  simp only [A069580, Nat.add_sub_cancel]

end A069580

/-! ## A069580.P14940438626505612046

`A002416(n+1)*A060704(n+1)`
-/

namespace A069580.P14940438626505612046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 (n + 1) * A060704 (n + 1)

end

end A069580.P14940438626505612046

namespace A069580

/-- `A002416(n+1)*A060704(n+1)` -/
def P14940438626505612046.Spec : Prop :=
  ∀ n, P14940438626505612046.a n = A069580 (n + 1)

end A069580

/-! ## A069580.P4305883279063867930

`(A002416(n+1)-A002884(n+1))*A002416(n+1)`
-/

namespace A069580.P4305883279063867930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002416 (n + 1) - A002884 (n + 1)) * A002416 (n + 1)

end

end A069580.P4305883279063867930

namespace A069580

/-- `(A002416(n+1)-A002884(n+1))*A002416(n+1)` -/
def P4305883279063867930.Spec : Prop :=
  ∀ n, P4305883279063867930.a n = A069580 (n + 1)

end A069580

/-!
# A069581: Triangle T(m,n) giving number of unit fractions (with odd denominators) needed to represent m/n, rational (n odd), using the greedy algorithm.

The programs for A069581, there is no canonical definition to state claims against.
-/

/-! ## A069581.P12191603280974646545

`A045315(A290064(n))%5`
-/

namespace A069581.P12191603280974646545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045315 (A290064 n).toNat) 5

end

end A069581.P12191603280974646545

/-! ## A069581.P11187954410357141235

`A104484(A031924(n+1))-A000194(n+2)`
-/

namespace A069581.P11187954410357141235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (A031924 (n + 1)).toNat - A000194 (n + 2)

end

end A069581.P11187954410357141235

/-!
# A069582: Primes arising in A089374.

The programs for A069582, there is no canonical definition to state claims against.
-/

/-! ## A069582.P8268189763388777012

`A175355(n+2)`
-/

namespace A069582.P8268189763388777012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175355 (n + 2)

end

end A069582.P8268189763388777012

/-! ## A069582.P6182049213710749551

`A176558(A089374(n+2))`
-/

namespace A069582.P6182049213710749551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (A089374 (n + 2)).toNat

end

end A069582.P6182049213710749551

/-! ## A069582.P15939397428098977337

`p?[A175355(-xor(n, -1))]`
-/

namespace A069582.P15939397428098977337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175355 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069582.P15939397428098977337

/-! ## A069582.P14138761996142241208

`p?[A175355(A028310(n))]`
-/

namespace A069582.P14138761996142241208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175355 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069582.P14138761996142241208

/-! ## A069582.P1649217944894786211

`p?[A175355(A051340(n))]`
-/

namespace A069582.P1649217944894786211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175355 (A051340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069582.P1649217944894786211

/-!
# A069584: a(n) = n - largest perfect power <= n.

The programs for A069584, the canonical program `A069584.P17876524389543644252` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069584 has offset 1).

The definition of A069584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069584.P7193127840699585154

`1-A081676(n+1)+n`
-/

namespace A069584.P7193127840699585154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081676 (n + 1) + (n : ℤ)

end

end A069584.P7193127840699585154

namespace A069584

/-- `1-A081676(n+1)+n` -/
def P7193127840699585154.Spec : Prop :=
  ∀ n, P7193127840699585154.a n = A069584 (n + 1)

theorem P7193127840699585154.correct : P7193127840699585154.Spec := by
  intro n
  simp only [A069584, Nat.add_sub_cancel, A069584.P7193127840699585154.a, A069584.P17876524389543644252.a, A081676, A081676.P13265011736225947459.a, A132350, A132350.P6308238298466199020.f1, A132350.P6308238298466199020.a, A304362, A304362.P3395535958297874023.f1, A304362.P3395535958297874023.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A304817, A304817.P8075664180131459050.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A183096, A183096.P3962787682876171308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069584

/-! ## A069584.P17876524389543644252

`(a(n-1)+1)*A132350(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A069584

/-- `(a(n-1)+1)*A132350(n+1)` -/
def P17876524389543644252.Spec : Prop :=
  ∀ n, P17876524389543644252.a n = A069584 (n + 1)

theorem P17876524389543644252.correct : P17876524389543644252.Spec := by
  intro n
  simp only [A069584, Nat.add_sub_cancel]

end A069584

/-! ## A069584.P11049749594909653719

`(a(n-1)+1)*round(acot(A175069(n+1)))` with `a(0)=0`
-/

namespace A069584.P11049749594909653719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * SequenceMachineLib.roundAway (SequenceMachineLib.acot (A175069 (n + 1) : ℝ))

end

end A069584.P11049749594909653719

namespace A069584

/-- `(a(n-1)+1)*round(acot(A175069(n+1)))` -/
def P11049749594909653719.Spec : Prop :=
  ∀ n, P11049749594909653719.a n = A069584 (n + 1)

end A069584

/-! ## A069584.P11168008576535237475

`1-A001597(A069623(n+1))+n`
-/

namespace A069584.P11168008576535237475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001597 (A069623 (n + 1)).toNat + (n : ℤ)

end

end A069584.P11168008576535237475

namespace A069584

/-- `1-A001597(A069623(n+1))+n` -/
def P11168008576535237475.Spec : Prop :=
  ∀ n, P11168008576535237475.a n = A069584 (n + 1)

end A069584

/-! ## A069584.P12793847022748336482

`A074984(A081676(n+1)+A074984(n+1))`
-/

namespace A069584.P12793847022748336482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074984 (A081676 (n + 1) + A074984 (n + 1)).toNat

end

end A069584.P12793847022748336482

namespace A069584

/-- `A074984(A081676(n+1)+A074984(n+1))` -/
def P12793847022748336482.Spec : Prop :=
  ∀ n, P12793847022748336482.a n = A069584 (n + 1)

end A069584

/-! ## A069584.P3762093852744858171

`n+1-A001597(A076411(n+2))`
-/

namespace A069584.P3762093852744858171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001597 (A076411 (n + 2)).toNat

end

end A069584.P3762093852744858171

namespace A069584

/-- `n+1-A001597(A076411(n+2))` -/
def P3762093852744858171.Spec : Prop :=
  ∀ n, P3762093852744858171.a n = A069584 (n + 1)

end A069584

/-!
# A069585: a(n) = n - largest prime power <= n.

The programs for A069585, there is no canonical definition to state claims against.
-/

/-! ## A069585.P12979261801531942980

`n+1-A167185(n+1)`
-/

namespace A069585.P12979261801531942980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A167185 (n + 1)

end

end A069585.P12979261801531942980

/-! ## A069585.P9774798821388720667

`1-A025475(∑[round(n/∏{p}[n+1, #+n])]+1)+n`
-/

namespace A069585.P9774798821388720667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (p + n) : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A025475 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + (n : ℤ)

end

end A069585.P9774798821388720667

/-! ## A069585.P9589458381302371711

`n+1-A025475(A085501(n+1))`
-/

namespace A069585.P9589458381302371711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A025475 (A085501 (n + 1)).toNat

end

end A069585.P9589458381302371711

/-! ## A069585.P18160893172903817338

`n+1-A025475(n+1-A085972(n+1))`
-/

namespace A069585.P18160893172903817338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A025475 ((n + 1 : ℤ) - A085972 (n + 1)).toNat

end

end A069585.P18160893172903817338

/-!
# A069588: Smallest prime in which the n-th significant digit is a 1.

The programs for A069588, the canonical program `A069588.P13160061826596831233` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069588 has offset 1).

The definition of A069588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069588.P1117735173214383726

`A101592(2*(C(2, n+2)+n)+1)`
-/

namespace A069588.P1117735173214383726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * (Nat.choose 2 (n + 2) + n) + 1)

end

end A069588.P1117735173214383726

namespace A069588

/-- `A101592(2*(C(2, n+2)+n)+1)` -/
def P1117735173214383726.Spec : Prop :=
  ∀ n, P1117735173214383726.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P13160061826596831233

`A003617(A028310(n)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A069588

/-- `A003617(A028310(n)+1)` -/
def P13160061826596831233.Spec : Prop :=
  ∀ n, P13160061826596831233.a n = A069588 (n + 1)

theorem P13160061826596831233.correct : P13160061826596831233.Spec := by
  intro n
  simp only [A069588, Nat.add_sub_cancel]

end A069588

/-! ## A069588.P16496534233999766562

`A073914(A179865(n+1))`
-/

namespace A069588.P16496534233999766562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073914 (A179865 (n + 1)).toNat

end

end A069588.P16496534233999766562

namespace A069588

/-- `A073914(A179865(n+1))` -/
def P16496534233999766562.Spec : Prop :=
  ∀ n, P16496534233999766562.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P16208913258207874474

`A003617(A233583(n+2))`
-/

namespace A069588.P16208913258207874474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A233583 (n + 2)).toNat

end

end A069588.P16208913258207874474

namespace A069588

/-- `A003617(A233583(n+2))` -/
def P16208913258207874474.Spec : Prop :=
  ∀ n, P16208913258207874474.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P5789380836111060993

`A003617(ceil(sqrt(A014206(n))))`
-/

namespace A069588.P5789380836111060993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 ⌈Real.sqrt (A014206 n : ℝ)⌉.toNat

end

end A069588.P5789380836111060993

namespace A069588

/-- `A003617(ceil(sqrt(A014206(n))))` -/
def P5789380836111060993.Spec : Prop :=
  ∀ n, P5789380836111060993.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P10937702612613013611

`A003617(A002024(∑[n]+2))`
-/

namespace A069588.P10937702612613013611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A069588.P10937702612613013611

namespace A069588

/-- `A003617(A002024(∑[n]+2))` -/
def P10937702612613013611.Spec : Prop :=
  ∀ n, P10937702612613013611.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P12356518101201141462

`A101592(2*A028310(n)+1)`
-/

namespace A069588.P12356518101201141462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * A028310 n + 1).toNat

end

end A069588.P12356518101201141462

namespace A069588

/-- `A101592(2*A028310(n)+1)` -/
def P12356518101201141462.Spec : Prop :=
  ∀ n, P12356518101201141462.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P18435111302846891877

`A003617(A000007(n)+1+n)`
-/

namespace A069588.P18435111302846891877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A000007 n + 1 + (n : ℤ)).toNat

end

end A069588.P18435111302846891877

namespace A069588

/-- `A003617(A000007(n)+1+n)` -/
def P18435111302846891877.Spec : Prop :=
  ∀ n, P18435111302846891877.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P8964543761850278456

`A003617(A004277(n)+1-n)`
-/

namespace A069588.P8964543761850278456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A004277 n + (1 - (n : ℤ))).toNat

end

end A069588.P8964543761850278456

namespace A069588

/-- `A003617(A004277(n)+1-n)` -/
def P8964543761850278456.Spec : Prop :=
  ∀ n, P8964543761850278456.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P5496750381606560392

`A003617(1-(n-A004277(n)))`
-/

namespace A069588.P5496750381606560392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (1 - ((n : ℤ) - A004277 n)).toNat

end

end A069588.P5496750381606560392

namespace A069588

/-- `A003617(1-(n-A004277(n)))` -/
def P5496750381606560392.Spec : Prop :=
  ∀ n, P5496750381606560392.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P10128213464246423736

`A003617(A004736(∑[n-1]+2)+1)`
-/

namespace A069588.P10128213464246423736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A004736 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + 1).toNat

end

end A069588.P10128213464246423736

namespace A069588

/-- `A003617(A004736(∑[n-1]+2)+1)` -/
def P10128213464246423736.Spec : Prop :=
  ∀ n, P10128213464246423736.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P1139372454287068381

`A101592(A028310(n)+A028310(n)+1)`
-/

namespace A069588.P1139372454287068381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (A028310 n + (A028310 n + 1)).toNat

end

end A069588.P1139372454287068381

namespace A069588

/-- `A101592(A028310(n)+A028310(n)+1)` -/
def P1139372454287068381.Spec : Prop :=
  ∀ n, P1139372454287068381.a n = A069588 (n + 1)

end A069588

/-! ## A069588.P17422886810562815670

`A272006(n+1)+A062397(A028310(n))`
-/

namespace A069588.P17422886810562815670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272006 (n + 1) + A062397 (A028310 n).toNat

end

end A069588.P17422886810562815670

namespace A069588

/-- `A272006(n+1)+A062397(A028310(n))` -/
def P17422886810562815670.Spec : Prop :=
  ∀ n, P17422886810562815670.a n = A069588 (n + 1)

end A069588

/-!
# A069589: Smallest prime in which the n-th significant digit is a 3.

The programs for A069589, there is no canonical definition to state claims against.
-/

/-! ## A069589.P2001965468507297269

`A113611(4*n+2)`
-/

namespace A069589.P2001965468507297269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113611 (4 * n + 2)

end

end A069589.P2001965468507297269

/-! ## A069589.P4481966380652495505

`or(1, A113611(A016825(n)))`
-/

namespace A069589.P4481966380652495505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113611 (A016825 n).toNat)

end

end A069589.P4481966380652495505

/-! ## A069589.P6808796503634010091

`record[A113611(A053438(xor(1, n)))]`
-/

namespace A069589.P6808796503634010091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113611 (A053438 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069589.P6808796503634010091

/-! ## A069589.P6532661680615766894

`or(1, A113611(A004767(n)-1))`
-/

namespace A069589.P6532661680615766894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113611 (A004767 n - 1).toNat)

end

end A069589.P6532661680615766894

/-!
# A069590: Smallest n-digit prime starting with a 2.

The programs for A069590, there is no canonical definition to state claims against.
-/

/-! ## A069590.P4814535408333220896

`A113611(4*n+1)`
-/

namespace A069590.P4814535408333220896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113611 (4 * n + 1)

end

end A069590.P4814535408333220896

/-! ## A069590.P15663327875380496096

`A113611(A016813(n))+char[9]`
-/

namespace A069590.P15663327875380496096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113611 (A016813 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A069590.P15663327875380496096

/-! ## A069590.P4601805297707172797

`record[A113611(n+1)^A056594(n)]`
-/

namespace A069590.P4601805297707172797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113611 (n + 1) : ℚ) ^ (A056594 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069590.P4601805297707172797

/-! ## A069590.P9785772632999107328

`record[root(A113611(n+1), A001903(n))]`
-/

namespace A069590.P9785772632999107328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A113611 (n + 1) : ℝ) ^ (1 / (A001903 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069590.P9785772632999107328

/-! ## A069590.P5098690821413664532

`xor(A035699(n+1), A113611(A016813(n)))`
-/

namespace A069590.P5098690821413664532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035699 (n + 1)) (A113611 (A016813 n).toNat)

end

end A069590.P5098690821413664532

/-!
# A069591: Smallest prime in which the n-th significant digit is a 7.

The programs for A069591, there is no canonical definition to state claims against.
-/

/-! ## A069591.P10984953887471784989

`A113611(4*(n+1))`
-/

namespace A069591.P10984953887471784989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113611 (4 * (n + 1))

end

end A069591.P10984953887471784989

/-! ## A069591.P225195128216312027

`record[A113611(A113778(n+1))]`
-/

namespace A069591.P225195128216312027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113611 (A113778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069591.P225195128216312027

/-! ## A069591.P16487822216761776055

`or(1, A113611(A059558(n+1)))`
-/

namespace A069591.P16487822216761776055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113611 (A059558 (n + 1)).toNat)

end

end A069591.P16487822216761776055

/-! ## A069591.P9255541094236837748

`A113611(A059558(n+1))+A000038(n+2)`
-/

namespace A069591.P9255541094236837748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113611 (A059558 (n + 1)).toNat + A000038 (n + 2)

end

end A069591.P9255541094236837748

/-!
# A069592: Smallest prime in which the n-th significant digit is a 5.

The programs for A069592, there is no canonical definition to state claims against.
-/

/-! ## A069592.P9246849372437452589

`A113611(record[xor(3, n)])`
-/

namespace A069592.P9246849372437452589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113611 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A069592.P9246849372437452589

/-! ## A069592.P14116684662207247065

`A113611(4*n+3)`
-/

namespace A069592.P14116684662207247065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113611 (4 * n + 3)

end

end A069592.P14116684662207247065

/-! ## A069592.P12665226228933344774

`or(1, A113611(A004767(n)))`
-/

namespace A069592.P12665226228933344774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113611 (A004767 n).toNat)

end

end A069592.P12665226228933344774

/-! ## A069592.P7457696199974400381

`record[root(A113611(n+3), A001903(n))]`
-/

namespace A069592.P7457696199974400381
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A113611 (n + 3) : ℝ) ^ (1 / (A001903 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069592.P7457696199974400381

/-!
# A069593: Smallest prime in which the n-th significant digit is a 9.

The programs for A069593, there is no canonical definition to state claims against.
-/

/-! ## A069593.P4795430285681121371

`A151800(lcm(2, Δ[10^n]))`
-/

namespace A069593.P4795430285681121371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A069593.P4795430285681121371

/-!
# A069594: Smallest prime in which the n-th significant digit is a 4.

The programs for A069594, there is no canonical definition to state claims against.
-/

/-! ## A069594.P9513974769774719209

`A045710(A073514(n+1)+1)`
-/

namespace A069594.P9513974769774719209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045710 (A073514 (n + 1) + 1).toNat

end

end A069594.P9513974769774719209

/-!
# A069595: Smallest prime in which the n-th significant digit is a 6.

The programs for A069595, there is no canonical definition to state claims against.
-/

/-! ## A069595.P8841128359818779114

`A045712(A073512(n+1)+1)`
-/

namespace A069595.P8841128359818779114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045712 (A073512 (n + 1) + 1).toNat

end

end A069595.P8841128359818779114

/-!
# A069596: Smallest prime in which the n-th significant digit is an 8.

The programs for A069596, there is no canonical definition to state claims against.
-/

/-! ## A069596.P16245097965328268892

`A045714(A073510(n+1)+1)`
-/

namespace A069596.P16245097965328268892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045714 (A073510 (n + 1) + 1).toNat

end

end A069596.P16245097965328268892

/-!
# A069597: Smallest prime in which the n-th significant digit is a 0.

The programs for A069597, there is no canonical definition to state claims against.
-/

/-! ## A069597.P15938553309384615161

`A003617(n+3)`
-/

namespace A069597.P15938553309384615161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 3)

end

end A069597.P15938553309384615161

/-! ## A069597.P6430931101840505308

`A069588(n+3)`
-/

namespace A069597.P6430931101840505308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069588 (n + 3)

end

end A069597.P6430931101840505308

/-! ## A069597.P17922755166078511720

`A101592(2*n+5)`
-/

namespace A069597.P17922755166078511720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * n + 5)

end

end A069597.P17922755166078511720

/-! ## A069597.P17433862522201009330

`A139052(2*n+5)`
-/

namespace A069597.P17433862522201009330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 (2 * n + 5)

end

end A069597.P17433862522201009330

/-! ## A069597.P2124928794644164252

`A073914(C(n+3, 2))`
-/

namespace A069597.P2124928794644164252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073914 (Nat.choose (n + 3) 2)

end

end A069597.P2124928794644164252

/-! ## A069597.P9008162515677918317

`A139053(3*(n+2)+1)`
-/

namespace A069597.P9008162515677918317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (3 * (n + 2) + 1)

end

end A069597.P9008162515677918317

/-! ## A069597.P5655769122987276333

`A073914(A253145(n+1))`
-/

namespace A069597.P5655769122987276333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073914 (A253145 (n + 1)).toNat

end

end A069597.P5655769122987276333

/-! ## A069597.P8837041948149080066

`A368051(A134869(n+2))`
-/

namespace A069597.P8837041948149080066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368051 (A134869 (n + 2)).toNat

end

end A069597.P8837041948149080066

/-! ## A069597.P8264844371316780917

`A038804(n+2)+A003618(n+2)`
-/

namespace A069597.P8264844371316780917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038804 (n + 2) + A003618 (n + 2)

end

end A069597.P8264844371316780917

/-! ## A069597.P16072896034890637173

`A272006(n+3)+A062397(n+2)`
-/

namespace A069597.P16072896034890637173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272006 (n + 3) + A062397 (n + 2)

end

end A069597.P16072896034890637173

/-!
# A069598: Primes using only one nonzero digit (with zero digits allowed).

The programs for A069598, there is no canonical definition to state claims against.
-/

/-! ## A069598.P18158369524603361281

`∩[A030291(n+1), A125289(n+1)]`
-/

namespace A069598.P18158369524603361281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069598.P18158369524603361281

/-! ## A069598.P11865048734320505140

`∩[A030291(n+1), A096091(n+1)]`
-/

namespace A069598.P11865048734320505140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069598.P11865048734320505140

/-! ## A069598.P17377694713214072477

`∩[A068148(n+1), A096091(n+1)]`
-/

namespace A069598.P17377694713214072477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069598.P17377694713214072477

/-! ## A069598.P14336906925072440099

`∩[A068148(n+1), A125289(n+1)]`
-/

namespace A069598.P14336906925072440099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069598.P14336906925072440099

/-! ## A069598.P2393283392072959483

`∩[A125289(n+1), A182051(n+1)]`
-/

namespace A069598.P2393283392072959483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069598.P2393283392072959483

