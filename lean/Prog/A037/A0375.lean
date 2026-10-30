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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C006
import Seq.B003.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.Opaque.C004
import Seq.Opaque.C012
import Seq.Opaque.C019
import Seq.Opaque.C021

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A037500: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

The programs for A037500, the canonical program `A037500.P2025222616987238780` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037500 has offset 1).

The definition of A037500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037500.P2025222616987238780

`ogf((1+2x^2)/(1-7x-x^3+7x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037500

/-- `ogf((1+2x^2)/(1-7x-x^3+7x^4))` -/
def P2025222616987238780.Spec : Prop :=
  ∀ n, P2025222616987238780.a n = A037500 (n + 1)

theorem P2025222616987238780.correct : P2025222616987238780.Spec := by
  intro n
  simp only [A037500, Nat.add_sub_cancel]

end A037500

/-! ## A037500.P14588839510185725909

`7*a(n-1)-A102283(n)+1` with `a(0)=1`
-/

namespace A037500.P14588839510185725909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - A102283 n + 1

end

end A037500.P14588839510185725909

namespace A037500

/-- `7*a(n-1)-A102283(n)+1` -/
def P14588839510185725909.Spec : Prop :=
  ∀ n, P14588839510185725909.a n = A037500 (n + 1)

end A037500

/-! ## A037500.P6017457271367183225

`∑[7*a(n-1)-A061347(n+1)]` with `a(0)=1`
-/

namespace A037500.P6017457271367183225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) - A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037500.P6017457271367183225

namespace A037500

/-- `∑[7*a(n-1)-A061347(n+1)]` -/
def P6017457271367183225.Spec : Prop :=
  ∀ n, P6017457271367183225.a n = A037500 (n + 1)

end A037500

/-! ## A037500.P10025091155780328466

`∑[7*a(n-1)+A188670(A283878(n+2))-4]` with `a(0)=1`
-/

namespace A037500.P10025091155780328466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) + (A188670 (A283878 (n + 2)).toNat - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037500.P10025091155780328466

namespace A037500

/-- `∑[7*a(n-1)+A188670(A283878(n+2))-4]` -/
def P10025091155780328466.Spec : Prop :=
  ∀ n, P10025091155780328466.a n = A037500 (n + 1)

end A037500

/-! ## A037500.P1657048300051942608

`A033125(n+1)+A033125(n+1)-A033143(n+1)`
-/

namespace A037500.P1657048300051942608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033125 (n + 1) + (A033125 (n + 1) - A033143 (n + 1))

end

end A037500.P1657048300051942608

namespace A037500

/-- `A033125(n+1)+A033125(n+1)-A033143(n+1)` -/
def P1657048300051942608.Spec : Prop :=
  ∀ n, P1657048300051942608.a n = A037500 (n + 1)

end A037500

/-! ## A037500.P8324698169586343268

`A037532(n+1)+A037532(n+1)-A037548(n+1)`
-/

namespace A037500.P8324698169586343268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + (A037532 (n + 1) - A037548 (n + 1))

end

end A037500.P8324698169586343268

namespace A037500

/-- `A037532(n+1)+A037532(n+1)-A037548(n+1)` -/
def P8324698169586343268.Spec : Prop :=
  ∀ n, P8324698169586343268.a n = A037500 (n + 1)

end A037500

/-! ## A037500.P8850327880312921850

`∑[7*a(n-1)]-A037508(n+1)` with `a(0)=2`
-/

namespace A037500.P8850327880312921850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A037508 (n + 1)

end

end A037500.P8850327880312921850

namespace A037500

/-- `∑[7*a(n-1)]-A037508(n+1)` -/
def P8850327880312921850.Spec : Prop :=
  ∀ n, P8850327880312921850.a n = A037500 (n + 1)

end A037500

/-! ## A037500.P14560966713511568352

`A037635(n+1)-∑[A000420(n)]`
-/

namespace A037500.P14560966713511568352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037500.P14560966713511568352

namespace A037500

/-- `A037635(n+1)-∑[A000420(n)]` -/
def P14560966713511568352.Spec : Prop :=
  ∀ n, P14560966713511568352.a n = A037500 (n + 1)

end A037500

/-! ## A037500.P5744165331824851367

`A037621(n+1)-A033125(n+1)`
-/

namespace A037500.P5744165331824851367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037621 (n + 1) - A033125 (n + 1)

end

end A037500.P5744165331824851367

namespace A037500

/-- `A037621(n+1)-A033125(n+1)` -/
def P5744165331824851367.Spec : Prop :=
  ∀ n, P5744165331824851367.a n = A037500 (n + 1)

end A037500

/-! ## A037500.P18028265129158750307

`2*A033125(n+1)-A033143(n+1)`
-/

namespace A037500.P18028265129158750307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033125 (n + 1) - A033143 (n + 1)

end

end A037500.P18028265129158750307

namespace A037500

/-- `2*A033125(n+1)-A033143(n+1)` -/
def P18028265129158750307.Spec : Prop :=
  ∀ n, P18028265129158750307.a n = A037500 (n + 1)

end A037500

/-! ## A037500.P7300405760773080950

`2*A037532(n+1)-A037548(n+1)`
-/

namespace A037500.P7300405760773080950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037532 (n + 1) - A037548 (n + 1)

end

end A037500.P7300405760773080950

namespace A037500

/-- `2*A037532(n+1)-A037548(n+1)` -/
def P7300405760773080950.Spec : Prop :=
  ∀ n, P7300405760773080950.a n = A037500 (n + 1)

end A037500

/-! ## A037500.P12008610455168121206

`A037532(n+1)+A037556(n+1)-A037564(n+1)`
-/

namespace A037500.P12008610455168121206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + (A037556 (n + 1) - A037564 (n + 1))

end

end A037500.P12008610455168121206

namespace A037500

/-- `A037532(n+1)+A037556(n+1)-A037564(n+1)` -/
def P12008610455168121206.Spec : Prop :=
  ∀ n, P12008610455168121206.a n = A037500 (n + 1)

end A037500

/-!
# A037501: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

The programs for A037501, the canonical program `A037501.P5361567885964059746` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037501 has offset 1).

The definition of A037501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037501.P5361567885964059746

`ogf((1+2x^2)/(1-8x-x^3+8x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037501

/-- `ogf((1+2x^2)/(1-8x-x^3+8x^4))` -/
def P5361567885964059746.Spec : Prop :=
  ∀ n, P5361567885964059746.a n = A037501 (n + 1)

theorem P5361567885964059746.correct : P5361567885964059746.Spec := by
  intro n
  simp only [A037501, Nat.add_sub_cancel]

end A037501

/-! ## A037501.P4270999270885130315

`xor(3, (n+1)%3+8*a(n-1)+1)` with `a(0)=1`
-/

namespace A037501.P4270999270885130315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 3 ((n + 1) % 3 + 8 * a (n - 1) + 1)

end

end A037501.P4270999270885130315

namespace A037501

/-- `xor(3, (n+1)%3+8*a(n-1)+1)` -/
def P4270999270885130315.Spec : Prop :=
  ∀ n, (P4270999270885130315.a n : ℤ) = A037501 (n + 1)

end A037501

/-! ## A037501.P17491080268637122564

`A010872(2*(n+2))+8*a(n-1)` with `a(0)=1`
-/

namespace A037501.P17491080268637122564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010872 (2 * (n + 2)) + 8 * a (n - 1)

end

end A037501.P17491080268637122564

namespace A037501

/-- `A010872(2*(n+2))+8*a(n-1)` -/
def P17491080268637122564.Spec : Prop :=
  ∀ n, P17491080268637122564.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P1984364283697827862

`A037636(n+1)-∑[A001018(n)]`
-/

namespace A037501.P1984364283697827862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037636 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037501.P1984364283697827862

namespace A037501

/-- `A037636(n+1)-∑[A001018(n)]` -/
def P1984364283697827862.Spec : Prop :=
  ∀ n, P1984364283697827862.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P739857386880496031

`A037573(n+1)-A033135(n+1)`
-/

namespace A037501.P739857386880496031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037573 (n + 1) - A033135 (n + 1)

end

end A037501.P739857386880496031

namespace A037501

/-- `A037573(n+1)-A033135(n+1)` -/
def P739857386880496031.Spec : Prop :=
  ∀ n, P739857386880496031.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P539999867705803290

`A037622(n+1)-A033126(n+1)`
-/

namespace A037501.P539999867705803290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037622 (n + 1) - A033126 (n + 1)

end

end A037501.P539999867705803290

namespace A037501

/-- `A037622(n+1)-A033126(n+1)` -/
def P539999867705803290.Spec : Prop :=
  ∀ n, P539999867705803290.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P11029273207670738959

`and(A037533(n+1), A037549(n+1))`
-/

namespace A037501.P11029273207670738959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037533 (n + 1)) (A037549 (n + 1))

end

end A037501.P11029273207670738959

namespace A037501

/-- `and(A037533(n+1), A037549(n+1))` -/
def P11029273207670738959.Spec : Prop :=
  ∀ n, P11029273207670738959.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P6695420975578280412

`and(A037533(n+1), A037594(n+1))`
-/

namespace A037501.P6695420975578280412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037533 (n + 1)) (A037594 (n + 1))

end

end A037501.P6695420975578280412

namespace A037501

/-- `and(A037533(n+1), A037594(n+1))` -/
def P6695420975578280412.Spec : Prop :=
  ∀ n, P6695420975578280412.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P15215439745369362726

`and(A037594(n+1), A037615(n+1))`
-/

namespace A037501.P15215439745369362726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037594 (n + 1)) (A037615 (n + 1))

end

end A037501.P15215439745369362726

namespace A037501

/-- `and(A037594(n+1), A037615(n+1))` -/
def P15215439745369362726.Spec : Prop :=
  ∀ n, P15215439745369362726.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P4271938783452338803

`xor(A037622(n+1), A037650(n+1))`
-/

namespace A037501.P4271938783452338803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037622 (n + 1)) (A037650 (n + 1))

end

end A037501.P4271938783452338803

namespace A037501

/-- `xor(A037622(n+1), A037650(n+1))` -/
def P4271938783452338803.Spec : Prop :=
  ∀ n, P4271938783452338803.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P7890289224578423466

`∑[2*A001018(n)]-A037509(n+1)`
-/

namespace A037501.P7890289224578423466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037509 (n + 1)

end

end A037501.P7890289224578423466

namespace A037501

/-- `∑[2*A001018(n)]-A037509(n+1)` -/
def P7890289224578423466.Spec : Prop :=
  ∀ n, P7890289224578423466.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P16980340471204173397

`A037636(n+1)-∑[A000079(3*n)]`
-/

namespace A037501.P16980340471204173397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037636 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037501.P16980340471204173397

namespace A037501

/-- `A037636(n+1)-∑[A000079(3*n)]` -/
def P16980340471204173397.Spec : Prop :=
  ∀ n, P16980340471204173397.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P11360682050937498081

`2*A033126(n+1)-A033144(n+1)`
-/

namespace A037501.P11360682050937498081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033126 (n + 1) - A033144 (n + 1)

end

end A037501.P11360682050937498081

namespace A037501

/-- `2*A033126(n+1)-A033144(n+1)` -/
def P11360682050937498081.Spec : Prop :=
  ∀ n, P11360682050937498081.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P16298290736861467968

`and(A037533(n+1)+A037525(n+1), A037533(n+1))`
-/

namespace A037501.P16298290736861467968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037533 (n + 1) + A037525 (n + 1)) (A037533 (n + 1))

end

end A037501.P16298290736861467968

namespace A037501

/-- `and(A037533(n+1)+A037525(n+1), A037533(n+1))` -/
def P16298290736861467968.Spec : Prop :=
  ∀ n, P16298290736861467968.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P13458769138049644751

`and(A037643(n+1)+A037533(n+1), A037533(n+1))`
-/

namespace A037501.P13458769138049644751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037643 (n + 1) + A037533 (n + 1)) (A037533 (n + 1))

end

end A037501.P13458769138049644751

namespace A037501

/-- `and(A037643(n+1)+A037533(n+1), A037533(n+1))` -/
def P13458769138049644751.Spec : Prop :=
  ∀ n, P13458769138049644751.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P17189803835257587829

`and(A037636(n+1)+A037594(n+1), A037594(n+1))`
-/

namespace A037501.P17189803835257587829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037636 (n + 1) + A037594 (n + 1)) (A037594 (n + 1))

end

end A037501.P17189803835257587829

namespace A037501

/-- `and(A037636(n+1)+A037594(n+1), A037594(n+1))` -/
def P17189803835257587829.Spec : Prop :=
  ∀ n, P17189803835257587829.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P764776999709854986

`A037615(n+1)-and(A037615(n+1), A037629(n+1))`
-/

namespace A037501.P764776999709854986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037615 (n + 1) - Int.land (A037615 (n + 1)) (A037629 (n + 1))

end

end A037501.P764776999709854986

namespace A037501

/-- `A037615(n+1)-and(A037615(n+1), A037629(n+1))` -/
def P764776999709854986.Spec : Prop :=
  ∀ n, P764776999709854986.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P2863290660499642854

`A037615(n+1)-and(A037615(n+1), A037643(n+1))`
-/

namespace A037501.P2863290660499642854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037615 (n + 1) - Int.land (A037615 (n + 1)) (A037643 (n + 1))

end

end A037501.P2863290660499642854

namespace A037501

/-- `A037615(n+1)-and(A037615(n+1), A037643(n+1))` -/
def P2863290660499642854.Spec : Prop :=
  ∀ n, P2863290660499642854.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P11762048001517538782

`A037657(n+1)-and(A037643(n+1), A037657(n+1))`
-/

namespace A037501.P11762048001517538782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037657 (n + 1) - Int.land (A037643 (n + 1)) (A037657 (n + 1))

end

end A037501.P11762048001517538782

namespace A037501

/-- `A037657(n+1)-and(A037643(n+1), A037657(n+1))` -/
def P11762048001517538782.Spec : Prop :=
  ∀ n, P11762048001517538782.a n = A037501 (n + 1)

end A037501

/-! ## A037501.P14470559709051234057

`and(A037525(n+2), A037533(n+1))`
-/

namespace A037501.P14470559709051234057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037525 (n + 2)) (A037533 (n + 1))

end

end A037501.P14470559709051234057

namespace A037501

/-- `and(A037525(n+2), A037533(n+1))` -/
def P14470559709051234057.Spec : Prop :=
  ∀ n, P14470559709051234057.a n = A037501 (n + 1)

end A037501

/-!
# A037502: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

The programs for A037502, the canonical program `A037502.P264899639346606761` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037502 has offset 1).

The definition of A037502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037502.P264899639346606761

`ogf((1+2x^2)/(1-9x-x^3+9x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037502

/-- `ogf((1+2x^2)/(1-9x-x^3+9x^4))` -/
def P264899639346606761.Spec : Prop :=
  ∀ n, P264899639346606761.a n = A037502 (n + 1)

theorem P264899639346606761.correct : P264899639346606761.Spec := by
  intro n
  simp only [A037502, Nat.add_sub_cancel]

end A037502

/-! ## A037502.P13340545949260833276

`9*a(n-1)+2-(n+1)%3` with `a(0)=1`
-/

namespace A037502.P13340545949260833276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) + (2 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A037502.P13340545949260833276

namespace A037502

/-- `9*a(n-1)+2-(n+1)%3` -/
def P13340545949260833276.Spec : Prop :=
  ∀ n, P13340545949260833276.a n = A037502 (n + 1)

end A037502

/-! ## A037502.P17879205839306498967

`A037637(n+1)-∑[9^n]`
-/

namespace A037502.P17879205839306498967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037637 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037502.P17879205839306498967

namespace A037502

/-- `A037637(n+1)-∑[9^n]` -/
def P17879205839306498967.Spec : Prop :=
  ∀ n, P17879205839306498967.a n = A037502 (n + 1)

end A037502

/-! ## A037502.P15104340881235953528

`∑[3*9^n]-A037644(n+1)`
-/

namespace A037502.P15104340881235953528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A037644 (n + 1)

end

end A037502.P15104340881235953528

namespace A037502

/-- `∑[3*9^n]-A037644(n+1)` -/
def P15104340881235953528.Spec : Prop :=
  ∀ n, P15104340881235953528.a n = A037502 (n + 1)

end A037502

/-! ## A037502.P18115572986828844055

`9*a(n-1)-A102283(n)+1` with `a(0)=1`
-/

namespace A037502.P18115572986828844055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - A102283 n + 1

end

end A037502.P18115572986828844055

namespace A037502

/-- `9*a(n-1)-A102283(n)+1` -/
def P18115572986828844055.Spec : Prop :=
  ∀ n, P18115572986828844055.a n = A037502 (n + 1)

end A037502

/-! ## A037502.P946187110717694023

`A037574(n+1)-A033136(n+1)`
-/

namespace A037502.P946187110717694023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037574 (n + 1) - A033136 (n + 1)

end

end A037502.P946187110717694023

namespace A037502

/-- `A037574(n+1)-A033136(n+1)` -/
def P946187110717694023.Spec : Prop :=
  ∀ n, P946187110717694023.a n = A037502 (n + 1)

end A037502

/-! ## A037502.P9806234653923003754

`A037623(n+1)-A033127(n+1)`
-/

namespace A037502.P9806234653923003754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037623 (n + 1) - A033127 (n + 1)

end

end A037502.P9806234653923003754

namespace A037502

/-- `A037623(n+1)-A033127(n+1)` -/
def P9806234653923003754.Spec : Prop :=
  ∀ n, P9806234653923003754.a n = A037502 (n + 1)

end A037502

/-! ## A037502.P13503358627694121580

`2*A033127(n+1)-A033145(n+1)`
-/

namespace A037502.P13503358627694121580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033127 (n + 1) - A033145 (n + 1)

end

end A037502.P13503358627694121580

namespace A037502

/-- `2*A033127(n+1)-A033145(n+1)` -/
def P13503358627694121580.Spec : Prop :=
  ∀ n, P13503358627694121580.a n = A037502 (n + 1)

end A037502

/-! ## A037502.P4675750669791794696

`A037658(n+1)-2*A033145(n+1)`
-/

namespace A037502.P4675750669791794696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037658 (n + 1) - 2 * A033145 (n + 1)

end

end A037502.P4675750669791794696

namespace A037502

/-- `A037658(n+1)-2*A033145(n+1)` -/
def P4675750669791794696.Spec : Prop :=
  ∀ n, P4675750669791794696.a n = A037502 (n + 1)

end A037502

/-! ## A037502.P16882100007036169006

`2*A037534(n+1)-A037550(n+1)`
-/

namespace A037502.P16882100007036169006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037534 (n + 1) - A037550 (n + 1)

end

end A037502.P16882100007036169006

namespace A037502

/-- `2*A037534(n+1)-A037550(n+1)` -/
def P16882100007036169006.Spec : Prop :=
  ∀ n, P16882100007036169006.a n = A037502 (n + 1)

end A037502

/-! ## A037502.P8730430450946646863

`(A037623(n+1)+A037595(n+1))/3`
-/

namespace A037502.P8730430450946646863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037623 (n + 1) + A037595 (n + 1) : ℚ) / 3

end

end A037502.P8730430450946646863

namespace A037502

/-- `(A037623(n+1)+A037595(n+1))/3` -/
def P8730430450946646863.Spec : Prop :=
  ∀ n, P8730430450946646863.a n = (A037502 (n + 1) : ℚ)

end A037502

/-! ## A037502.P2629124503117164870

`A010872(A052938(n))+9*a(n-1)` with `a(0)=1`
-/

namespace A037502.P2629124503117164870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010872 (A052938 n).toNat + 9 * a (n - 1)

end

end A037502.P2629124503117164870

namespace A037502

/-- `A010872(A052938(n))+9*a(n-1)` -/
def P2629124503117164870.Spec : Prop :=
  ∀ n, P2629124503117164870.a n = A037502 (n + 1)

end A037502

/-! ## A037502.P1205746295509779597

`A033145(n+1)+A037534(n+1)-A033136(n+1)`
-/

namespace A037502.P1205746295509779597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033145 (n + 1) + (A037534 (n + 1) - A033136 (n + 1))

end

end A037502.P1205746295509779597

namespace A037502

/-- `A033145(n+1)+A037534(n+1)-A033136(n+1)` -/
def P1205746295509779597.Spec : Prop :=
  ∀ n, P1205746295509779597.a n = A037502 (n + 1)

end A037502

/-!
# A037503: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,0,2.

The programs for A037503, the canonical program `A037503.P4475693136425815773` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037503 has offset 1).

The definition of A037503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037503.P4475693136425815773

`ogf((1+2x^2)/(1-10x-x^3+10x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037503

/-- `ogf((1+2x^2)/(1-10x-x^3+10x^4))` -/
def P4475693136425815773.Spec : Prop :=
  ∀ n, P4475693136425815773.a n = A037503 (n + 1)

theorem P4475693136425815773.correct : P4475693136425815773.Spec := by
  intro n
  simp only [A037503, Nat.add_sub_cancel]

end A037503

/-! ## A037503.P11847648128206331984

`floor(34*10^(n+1)/333)`
-/

namespace A037503.P11847648128206331984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(34 * 10 ^ (n + 1) : ℚ) / 333⌋

end

end A037503.P11847648128206331984

namespace A037503

/-- `floor(34*10^(n+1)/333)` -/
def P11847648128206331984.Spec : Prop :=
  ∀ n, P11847648128206331984.a n = A037503 (n + 1)

end A037503

/-! ## A037503.P17882301497805695315

`or(10*a(n-1), 2-char[3*n])` with `a(0)=1`
-/

namespace A037503.P17882301497805695315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A037503.P17882301497805695315

namespace A037503

/-- `or(10*a(n-1), 2-char[3*n])` -/
def P17882301497805695315.Spec : Prop :=
  ∀ n, P17882301497805695315.a n = A037503 (n + 1)

end A037503

/-! ## A037503.P14688988087910201338

`a(n-1)+9*a(n-1)+2-(n+1)%3` with `a(0)=1`
-/

namespace A037503.P14688988087910201338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (9 * a (n - 1) + (2 - (((n + 1) % 3 : ℕ) : ℤ)))

end

end A037503.P14688988087910201338

namespace A037503

/-- `a(n-1)+9*a(n-1)+2-(n+1)%3` -/
def P14688988087910201338.Spec : Prop :=
  ∀ n, P14688988087910201338.a n = A037503 (n + 1)

end A037503

/-! ## A037503.P6788246373963550399

`∑[10*a(n-1)-A061347(n+1)]` with `a(0)=1`
-/

namespace A037503.P6788246373963550399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037503.P6788246373963550399

namespace A037503

/-- `∑[10*a(n-1)-A061347(n+1)]` -/
def P6788246373963550399.Spec : Prop :=
  ∀ n, P6788246373963550399.a n = A037503 (n + 1)

end A037503

/-! ## A037503.P2219449393539627084

`A000042(n+2)-Δ[A037535(n)]`
-/

namespace A037503.P2219449393539627084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037503.P2219449393539627084

namespace A037503

/-- `A000042(n+2)-Δ[A037535(n)]` -/
def P2219449393539627084.Spec : Prop :=
  ∀ n, P2219449393539627084.a n = A037503 (n + 1)

end A037503

/-! ## A037503.P4338653276259674240

`Δ[∑[A000042(n+1)]%A037535(n)]`
-/

namespace A037503.P4338653276259674240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A037535 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037503.P4338653276259674240

namespace A037503

/-- `Δ[∑[A000042(n+1)]%A037535(n)]` -/
def P4338653276259674240.Spec : Prop :=
  ∀ n, P4338653276259674240.a n = A037503 (n + 1)

end A037503

/-! ## A037503.P3457890255306356619

`A000042(n+2)+A037535(n)-A037535(n+1)`
-/

namespace A037503.P3457890255306356619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 2) + (A037535 (n + 1) - A037535 (n + 1 + 1))

end

end A037503.P3457890255306356619

namespace A037503

/-- `A000042(n+2)+A037535(n)-A037535(n+1)` -/
def P3457890255306356619.Spec : Prop :=
  ∀ n, P3457890255306356619.a n = A037503 (n + 1)

end A037503

/-!
# A037504: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

The programs for A037504, the canonical program `A037504.P10398134783490366740` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037504 has offset 1).

The definition of A037504 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037504.anchor (n : ℕ) (hn : 1 ≤ n) : A037504 n = ((Nat.ofDigits 3 ((List.range n).reverse.map fun i => [1, 2, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037504`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037504.P2324717082725973369

`ogf((1+2x)/(1-3x-x^3+3x^4))`
-/

namespace A037504.P2324717082725973369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, 0, -1, 3] n

end

end A037504.P2324717082725973369

namespace A037504

/-- `ogf((1+2x)/(1-3x-x^3+3x^4))` -/
def P2324717082725973369.Spec : Prop :=
  ∀ n, P2324717082725973369.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P10398134783490366740

`(n+1)%3+3*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037504

/-- `(n+1)%3+3*a(n-1)` -/
def P10398134783490366740.Spec : Prop :=
  ∀ n, (P10398134783490366740.a n : ℤ) = A037504 (n + 1)

theorem P10398134783490366740.correct : P10398134783490366740.Spec := by
  intro n
  simp only [A037504, Nat.add_sub_cancel]

end A037504

/-! ## A037504.P13269854675169309815

`3*a(n-1)-xor(n, -1)%3` with `a(0)=1`
-/

namespace A037504.P13269854675169309815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - Int.tmod (Int.xor (n : ℤ) (-1)) 3

end

end A037504.P13269854675169309815

namespace A037504

/-- `3*a(n-1)-xor(n, -1)%3` -/
def P13269854675169309815.Spec : Prop :=
  ∀ n, P13269854675169309815.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P6960950289172703209

`A037079(Δ[n²])`
-/

namespace A037504.P6960950289172703209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037079 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037504.P6960950289172703209

namespace A037504

/-- `A037079(Δ[n²])` -/
def P6960950289172703209.Spec : Prop :=
  ∀ n, P6960950289172703209.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P17195796472977187920

`A010872(n+1)+3*a(n-1)` with `a(0)=1`
-/

namespace A037504.P17195796472977187920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010872 (n + 1) + 3 * a (n - 1)

end

end A037504.P17195796472977187920

namespace A037504

/-- `A010872(n+1)+3*a(n-1)` -/
def P17195796472977187920.Spec : Prop :=
  ∀ n, P17195796472977187920.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P15059311118692627530

`A033130(n+1)+A033130(n+1)-A033139(n+1)`
-/

namespace A037504.P15059311118692627530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033130 (n + 1) + (A033130 (n + 1) - A033139 (n + 1))

end

end A037504.P15059311118692627530

namespace A037504

/-- `A033130(n+1)+A033130(n+1)-A033139(n+1)` -/
def P15059311118692627530.Spec : Prop :=
  ∀ n, P15059311118692627530.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P11190337431220882906

`floor(15*3^(n+1)/26)`
-/

namespace A037504.P11190337431220882906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊15 * ((3 ^ (n + 1) : ℚ) / 26)⌋

end

end A037504.P11190337431220882906

namespace A037504

/-- `floor(15*3^(n+1)/26)` -/
def P11190337431220882906.Spec : Prop :=
  ∀ n, P11190337431220882906.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P9354477412148662972

`∑[3*a(n-1)]-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A037504.P9354477412148662972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A037504.P9354477412148662972

namespace A037504

/-- `∑[3*a(n-1)]-(a(n-1)+a(n-2))` -/
def P9354477412148662972.Spec : Prop :=
  ∀ n, P9354477412148662972.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P6080082286133824677

`∑[3*a(n-1)]-a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A037504.P6080082286133824677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - a (n - 2)

end

end A037504.P6080082286133824677

namespace A037504

/-- `∑[3*a(n-1)]-a(n-1)-a(n-2)` -/
def P6080082286133824677.Spec : Prop :=
  ∀ n, P6080082286133824677.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P733776441128718945

`A037512(n+1)-A077842(n)`
-/

namespace A037504.P733776441128718945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037512 (n + 1) - A077842 n

end

end A037504.P733776441128718945

namespace A037504

/-- `A037512(n+1)-A077842(n)` -/
def P733776441128718945.Spec : Prop :=
  ∀ n, P733776441128718945.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P16151862963219168354

`A037520(n+1)-A077834(n)`
-/

namespace A037504.P16151862963219168354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037520 (n + 1) - A077834 n

end

end A037504.P16151862963219168354

namespace A037504

/-- `A037520(n+1)-A077834(n)` -/
def P16151862963219168354.Spec : Prop :=
  ∀ n, P16151862963219168354.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P11628171807252032634

`A037560(n+1)-A033121(n+1)`
-/

namespace A037504.P11628171807252032634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037560 (n + 1) - A033121 (n + 1)

end

end A037504.P11628171807252032634

namespace A037504

/-- `A037560(n+1)-A033121(n+1)` -/
def P11628171807252032634.Spec : Prop :=
  ∀ n, P11628171807252032634.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P3174582260767217208

`A037528(n+2)-A033139(n+2)`
-/

namespace A037504.P3174582260767217208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037528 (n + 2) - A033139 (n + 2)

end

end A037504.P3174582260767217208

namespace A037504

/-- `A037528(n+2)-A033139(n+2)` -/
def P3174582260767217208.Spec : Prop :=
  ∀ n, P3174582260767217208.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P5939362711954460205

`∑[A037520(n+1)-A037496(n+1)]`
-/

namespace A037504.P5939362711954460205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037520 (n + 1) - A037496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037504.P5939362711954460205

namespace A037504

/-- `∑[A037520(n+1)-A037496(n+1)]` -/
def P5939362711954460205.Spec : Prop :=
  ∀ n, P5939362711954460205.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P11377781167976748578

`2*A033130(n+1)-A033139(n+1)`
-/

namespace A037504.P11377781167976748578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033130 (n + 1) - A033139 (n + 1)

end

end A037504.P11377781167976748578

namespace A037504

/-- `2*A033130(n+1)-A033139(n+1)` -/
def P11377781167976748578.Spec : Prop :=
  ∀ n, P11377781167976748578.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P5927918897921935816

`A037568(n+2)-2*A033139(n+2)`
-/

namespace A037504.P5927918897921935816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037568 (n + 2) - 2 * A033139 (n + 2)

end

end A037504.P5927918897921935816

namespace A037504

/-- `A037568(n+2)-2*A033139(n+2)` -/
def P5927918897921935816.Spec : Prop :=
  ∀ n, P5927918897921935816.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P16476300321806874797

`2*A037528(n+2)-A037568(n+2)`
-/

namespace A037504.P16476300321806874797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037528 (n + 2) - A037568 (n + 2)

end

end A037504.P16476300321806874797

namespace A037504

/-- `2*A037528(n+2)-A037568(n+2)` -/
def P16476300321806874797.Spec : Prop :=
  ∀ n, P16476300321806874797.a n = A037504 (n + 1)

end A037504

/-! ## A037504.P1674251654727732013

`A037520(n+1)+A037512(n+2)-A037520(n+2)`
-/

namespace A037504.P1674251654727732013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037520 (n + 1) + (A037512 (n + 2) - A037520 (n + 2))

end

end A037504.P1674251654727732013

namespace A037504

/-- `A037520(n+1)+A037512(n+2)-A037520(n+2)` -/
def P1674251654727732013.Spec : Prop :=
  ∀ n, P1674251654727732013.a n = A037504 (n + 1)

end A037504

/-!
# A037505: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

The programs for A037505, the canonical program `A037505.P15729242403947397852` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037505 has offset 1).

The definition of A037505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037505.P15729242403947397852

`ogf((1+2x)/(1-4x-x^3+4x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037505

/-- `ogf((1+2x)/(1-4x-x^3+4x^4))` -/
def P15729242403947397852.Spec : Prop :=
  ∀ n, P15729242403947397852.a n = A037505 (n + 1)

theorem P15729242403947397852.correct : P15729242403947397852.Spec := by
  intro n
  simp only [A037505, Nat.add_sub_cancel]

end A037505

/-! ## A037505.P13327337666176401816

`∑[round(8*4^n/7)]`
-/

namespace A037505.P13327337666176401816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((4 ^ n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037505.P13327337666176401816

namespace A037505

/-- `∑[round(8*4^n/7)]` -/
def P13327337666176401816.Spec : Prop :=
  ∀ n, P13327337666176401816.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P17844785029777093664

`(n+1)%3+4*a(n-1)` with `a(0)=1`
-/

namespace A037505.P17844785029777093664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 3 + 4 * a (n - 1)

end

end A037505.P17844785029777093664

namespace A037505

/-- `(n+1)%3+4*a(n-1)` -/
def P17844785029777093664.Spec : Prop :=
  ∀ n, (P17844785029777093664.a n : ℤ) = A037505 (n + 1)

end A037505

/-! ## A037505.P3793351073735012152

`round(a(n-1)+8*4^n/7)` with `a(0)=1`
-/

namespace A037505.P3793351073735012152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + 8 * ((4 ^ n : ℚ) / 7))

end

end A037505.P3793351073735012152

namespace A037505

/-- `round(a(n-1)+8*4^n/7)` -/
def P3793351073735012152.Spec : Prop :=
  ∀ n, P3793351073735012152.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P13982627992260726460

`or(4*a(n-1), floor(a(n-2)/4))` with `a(0)=1, a(1)=6`
-/

namespace A037505.P13982627992260726460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  Int.lor (4 * a (n - 1)) ⌊(a (n - 2) : ℚ) / 4⌋

end

end A037505.P13982627992260726460

namespace A037505

/-- `or(4*a(n-1), floor(a(n-2)/4))` -/
def P13982627992260726460.Spec : Prop :=
  ∀ n, P13982627992260726460.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P10591259699336471183

`abs(∑[A077972(2*n+1)])`
-/

namespace A037505.P10591259699336471183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077972 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A037505.P10591259699336471183

namespace A037505

/-- `abs(∑[A077972(2*n+1)])` -/
def P10591259699336471183.Spec : Prop :=
  ∀ n, P10591259699336471183.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P3025817503635435763

`A164908(n)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=24`
-/

namespace A037505.P3025817503635435763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 24] fun n a =>
  A164908 n + a (n - 3)

end

end A037505.P3025817503635435763

namespace A037505

/-- `A164908(n)+a(n-3)` -/
def P3025817503635435763.Spec : Prop :=
  ∀ n, P3025817503635435763.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P9199732021774758592

`A037611(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A037505.P9199732021774758592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037611 (n + 1) - a (n - 1)

end

end A037505.P9199732021774758592

namespace A037505

/-- `A037611(n+1)-a(n-1)` -/
def P9199732021774758592.Spec : Prop :=
  ∀ n, P9199732021774758592.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P11893467114103778978

`A178872(n)+∑[A000302(n)]`
-/

namespace A037505.P11893467114103778978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037505.P11893467114103778978

namespace A037505

/-- `A178872(n)+∑[A000302(n)]` -/
def P11893467114103778978.Spec : Prop :=
  ∀ n, P11893467114103778978.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P15185164343059286927

`A178872(n)+∑[A000079(n)²]`
-/

namespace A037505.P15185164343059286927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037505.P15185164343059286927

namespace A037505

/-- `A178872(n)+∑[A000079(n)²]` -/
def P15185164343059286927.Spec : Prop :=
  ∀ n, P15185164343059286927.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P4523880136557200029

`A178872(n)+∑[A000079(2*n)]`
-/

namespace A037505.P4523880136557200029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037505.P4523880136557200029

namespace A037505

/-- `A178872(n)+∑[A000079(2*n)]` -/
def P4523880136557200029.Spec : Prop :=
  ∀ n, P4523880136557200029.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P3911865243281141723

`A178872(n)+∑[A004171(n)/2]`
-/

namespace A037505.P3911865243281141723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178872 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037505.P3911865243281141723

namespace A037505

/-- `A178872(n)+∑[A004171(n)/2]` -/
def P3911865243281141723.Spec : Prop :=
  ∀ n, P3911865243281141723.a n = (A037505 (n + 1) : ℚ)

end A037505

/-! ## A037505.P306334791756550494

`A037561(n+1)-A033122(n+1)`
-/

namespace A037505.P306334791756550494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037561 (n + 1) - A033122 (n + 1)

end

end A037505.P306334791756550494

namespace A037505

/-- `A037561(n+1)-A033122(n+1)` -/
def P306334791756550494.Spec : Prop :=
  ∀ n, P306334791756550494.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P8383262651670973428

`A037625(n+1)-A033131(n+1)`
-/

namespace A037505.P8383262651670973428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037625 (n + 1) - A033131 (n + 1)

end

end A037505.P8383262651670973428

namespace A037505

/-- `A037625(n+1)-A033131(n+1)` -/
def P8383262651670973428.Spec : Prop :=
  ∀ n, P8383262651670973428.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P17515645612366582393

`A037521(n+1)-A178872(n+1)`
-/

namespace A037505.P17515645612366582393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037521 (n + 1) - A178872 (n + 1)

end

end A037505.P17515645612366582393

namespace A037505

/-- `A037521(n+1)-A178872(n+1)` -/
def P17515645612366582393.Spec : Prop :=
  ∀ n, P17515645612366582393.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P8380290595270732735

`A037497(n+1)+2*A178872(n)`
-/

namespace A037505.P8380290595270732735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037497 (n + 1) + 2 * A178872 n

end

end A037505.P8380290595270732735

namespace A037505

/-- `A037497(n+1)+2*A178872(n)` -/
def P8380290595270732735.Spec : Prop :=
  ∀ n, P8380290595270732735.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P18369963463047490708

`(A178872(n)+A037639(n+1))/2`
-/

namespace A037505.P18369963463047490708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178872 n + A037639 (n + 1) : ℚ) / 2

end

end A037505.P18369963463047490708

namespace A037505

/-- `(A178872(n)+A037639(n+1))/2` -/
def P18369963463047490708.Spec : Prop :=
  ∀ n, P18369963463047490708.a n = (A037505 (n + 1) : ℚ)

end A037505

/-! ## A037505.P11631084932686038951

`and(A037537(n+1), A037545(n+1))`
-/

namespace A037505.P11631084932686038951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037537 (n + 1)) (A037545 (n + 1))

end

end A037505.P11631084932686038951

namespace A037505

/-- `and(A037537(n+1), A037545(n+1))` -/
def P11631084932686038951.Spec : Prop :=
  ∀ n, P11631084932686038951.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P15134573001837247985

`and(A037537(n+1), A037597(n+1))`
-/

namespace A037505.P15134573001837247985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037537 (n + 1)) (A037597 (n + 1))

end

end A037505.P15134573001837247985

namespace A037505

/-- `and(A037537(n+1), A037597(n+1))` -/
def P15134573001837247985.Spec : Prop :=
  ∀ n, P15134573001837247985.a n = A037505 (n + 1)

end A037505

/-! ## A037505.P10272017586924424024

`and(A037545(n+1), A037597(n+1))`
-/

namespace A037505.P10272017586924424024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037545 (n + 1)) (A037597 (n + 1))

end

end A037505.P10272017586924424024

namespace A037505

/-- `and(A037545(n+1), A037597(n+1))` -/
def P10272017586924424024.Spec : Prop :=
  ∀ n, P10272017586924424024.a n = A037505 (n + 1)

end A037505

/-!
# A037506: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

The programs for A037506, the canonical program `A037506.P3778759450179859677` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037506 has offset 1).

The definition of A037506 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037506.anchor (n : ℕ) (hn : 1 ≤ n) : A037506 n = ((Nat.ofDigits 5 ((List.range n).reverse.map fun i => [1, 2, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037506`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037506.P14853055799055974287

`ogf((1+2x)/(1-5x-x^3+5x^4))`
-/

namespace A037506.P14853055799055974287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -5, 0, -1, 5] n

end

end A037506.P14853055799055974287

namespace A037506

/-- `ogf((1+2x)/(1-5x-x^3+5x^4))` -/
def P14853055799055974287.Spec : Prop :=
  ∀ n, P14853055799055974287.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P3778759450179859677

`(n+1)%3+5*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037506

/-- `(n+1)%3+5*a(n-1)` -/
def P3778759450179859677.Spec : Prop :=
  ∀ n, (P3778759450179859677.a n : ℤ) = A037506 (n + 1)

theorem P3778759450179859677.correct : P3778759450179859677.Spec := by
  intro n
  simp only [A037506, Nat.add_sub_cancel]

end A037506

/-! ## A037506.P16375857924771705288

`∑[ceil(A037554(n+1)/2)]`
-/

namespace A037506.P16375857924771705288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037554 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037506.P16375857924771705288

namespace A037506

/-- `∑[ceil(A037554(n+1)/2)]` -/
def P16375857924771705288.Spec : Prop :=
  ∀ n, P16375857924771705288.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P2621440253656813050

`A037612(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A037506.P2621440253656813050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037612 (n + 1) - a (n - 1)

end

end A037506.P2621440253656813050

namespace A037506

/-- `A037612(n+1)-a(n-1)` -/
def P2621440253656813050.Spec : Prop :=
  ∀ n, P2621440253656813050.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P9132638361976320283

`A010872(n+1)+5*a(n-1)` with `a(0)=1`
-/

namespace A037506.P9132638361976320283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010872 (n + 1) + 5 * a (n - 1)

end

end A037506.P9132638361976320283

namespace A037506

/-- `A010872(n+1)+5*a(n-1)` -/
def P9132638361976320283.Spec : Prop :=
  ∀ n, P9132638361976320283.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P6508281002207167419

`5*a(n-1)+A080782(n+1)-n` with `a(0)=1`
-/

namespace A037506.P6508281002207167419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A080782 (n + 1) - (n : ℤ))

end

end A037506.P6508281002207167419

namespace A037506

/-- `5*a(n-1)+A080782(n+1)-n` -/
def P6508281002207167419.Spec : Prop :=
  ∀ n, P6508281002207167419.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P633964341239469739

`A037626(n+1)-A033132(n+1)`
-/

namespace A037506.P633964341239469739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037626 (n + 1) - A033132 (n + 1)

end

end A037506.P633964341239469739

namespace A037506

/-- `A037626(n+1)-A033132(n+1)` -/
def P633964341239469739.Spec : Prop :=
  ∀ n, P633964341239469739.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P13469819010053260976

`∑[A037522(n+1)-A037498(n+1)]`
-/

namespace A037506.P13469819010053260976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037522 (n + 1) - A037498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037506.P13469819010053260976

namespace A037506

/-- `∑[A037522(n+1)-A037498(n+1)]` -/
def P13469819010053260976.Spec : Prop :=
  ∀ n, P13469819010053260976.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P17798509141630521964

`∑[A037640(n+1)-A037605(n+1)]`
-/

namespace A037506.P17798509141630521964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037640 (n + 1) - A037605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037506.P17798509141630521964

namespace A037506

/-- `∑[A037640(n+1)-A037605(n+1)]` -/
def P17798509141630521964.Spec : Prop :=
  ∀ n, P17798509141630521964.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P11419756373620442580

`2*A033132(n+1)-A033141(n+1)`
-/

namespace A037506.P11419756373620442580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033132 (n + 1) - A033141 (n + 1)

end

end A037506.P11419756373620442580

namespace A037506

/-- `2*A033132(n+1)-A033141(n+1)` -/
def P11419756373620442580.Spec : Prop :=
  ∀ n, P11419756373620442580.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P15970181771827496210

`(A037598(n+1)+A033132(n+1))/2`
-/

namespace A037506.P15970181771827496210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037598 (n + 1) + A033132 (n + 1) : ℚ) / 2

end

end A037506.P15970181771827496210

namespace A037506

/-- `(A037598(n+1)+A033132(n+1))/2` -/
def P15970181771827496210.Spec : Prop :=
  ∀ n, P15970181771827496210.a n = (A037506 (n + 1) : ℚ)

end A037506

/-! ## A037506.P7468764904159632396

`5*a(n-1)+A010892(n)*A057079(n)` with `a(0)=1`
-/

namespace A037506.P7468764904159632396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + A010892 n * A057079 n

end

end A037506.P7468764904159632396

namespace A037506

/-- `5*a(n-1)+A010892(n)*A057079(n)` -/
def P7468764904159632396.Spec : Prop :=
  ∀ n, P7468764904159632396.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P10552627808248085686

`A033132(n+1)+A037554(n+1)-A037514(n+1)`
-/

namespace A037506.P10552627808248085686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033132 (n + 1) + (A037554 (n + 1) - A037514 (n + 1))

end

end A037506.P10552627808248085686

namespace A037506

/-- `A033132(n+1)+A037554(n+1)-A037514(n+1)` -/
def P10552627808248085686.Spec : Prop :=
  ∀ n, P10552627808248085686.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P17748431532481214811

`A037530(n+1)+A037554(n+1)-A037619(n+1)`
-/

namespace A037506.P17748431532481214811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037530 (n + 1) + (A037554 (n + 1) - A037619 (n + 1))

end

end A037506.P17748431532481214811

namespace A037506

/-- `A037530(n+1)+A037554(n+1)-A037619(n+1)` -/
def P17748431532481214811.Spec : Prop :=
  ∀ n, P17748431532481214811.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P9579057557010827118

`A037530(n+2)-A033141(n+2)`
-/

namespace A037506.P9579057557010827118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037530 (n + 2) - A033141 (n + 2)

end

end A037506.P9579057557010827118

namespace A037506

/-- `A037530(n+2)-A033141(n+2)` -/
def P9579057557010827118.Spec : Prop :=
  ∀ n, P9579057557010827118.a n = A037506 (n + 1)

end A037506

/-! ## A037506.P10028983799370994153

`2*A037538(n+2)-A037626(n+2)`
-/

namespace A037506.P10028983799370994153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037538 (n + 2) - A037626 (n + 2)

end

end A037506.P10028983799370994153

namespace A037506

/-- `2*A037538(n+2)-A037626(n+2)` -/
def P10028983799370994153.Spec : Prop :=
  ∀ n, P10028983799370994153.a n = A037506 (n + 1)

end A037506

/-!
# A037507: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

The programs for A037507, the canonical program `A037507.P11662525606830945473` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037507 has offset 1).

The definition of A037507 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037507.anchor (n : ℕ) (hn : 1 ≤ n) : A037507 n = ((Nat.ofDigits 6 ((List.range n).reverse.map fun i => [1, 2, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037507`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037507.P10303530995867358557

`ogf((1+2x)/(1-6x-x^3+6x^4))`
-/

namespace A037507.P10303530995867358557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -6, 0, -1, 6] n

end

end A037507.P10303530995867358557

namespace A037507

/-- `ogf((1+2x)/(1-6x-x^3+6x^4))` -/
def P10303530995867358557.Spec : Prop :=
  ∀ n, P10303530995867358557.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P11662525606830945473

`(n+1)%3+6*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037507

/-- `(n+1)%3+6*a(n-1)` -/
def P11662525606830945473.Spec : Prop :=
  ∀ n, (P11662525606830945473.a n : ℤ) = A037507 (n + 1)

theorem P11662525606830945473.correct : P11662525606830945473.Spec := by
  intro n
  simp only [A037507, Nat.add_sub_cancel]

end A037507

/-! ## A037507.P4797458703887909462

`6*a(n-1)-xor(n, -1)%3` with `a(0)=1`
-/

namespace A037507.P4797458703887909462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - Int.tmod (Int.xor (n : ℤ) (-1)) 3

end

end A037507.P4797458703887909462

namespace A037507

/-- `6*a(n-1)-xor(n, -1)%3` -/
def P4797458703887909462.Spec : Prop :=
  ∀ n, P4797458703887909462.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P13706421060579060444

`∑[round(A037571(n+1)/2)]`
-/

namespace A037507.P13706421060579060444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037571 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037507.P13706421060579060444

namespace A037507

/-- `∑[round(A037571(n+1)/2)]` -/
def P13706421060579060444.Spec : Prop :=
  ∀ n, P13706421060579060444.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P8742973681324496554

`floor(4*A033142(n+1)/3)`
-/

namespace A037507.P8742973681324496554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((A033142 (n + 1) : ℚ) / 3)⌋

end

end A037507.P8742973681324496554

namespace A037507

/-- `floor(4*A033142(n+1)/3)` -/
def P8742973681324496554.Spec : Prop :=
  ∀ n, P8742973681324496554.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P7979132256503512234

`A270576(n)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=48`
-/

namespace A037507.P7979132256503512234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 48] fun n a =>
  A270576 n + a (n - 3)

end

end A037507.P7979132256503512234

namespace A037507

/-- `A270576(n)+a(n-3)` -/
def P7979132256503512234.Spec : Prop :=
  ∀ n, P7979132256503512234.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P3821128950084844541

`A037613(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A037507.P3821128950084844541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037613 (n + 1) - a (n - 1)

end

end A037507.P3821128950084844541

namespace A037507

/-- `A037613(n+1)-a(n-1)` -/
def P3821128950084844541.Spec : Prop :=
  ∀ n, P3821128950084844541.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P1353492407603825701

`A010872(n+1)+3*2*a(n-1)` with `a(0)=1`
-/

namespace A037507.P1353492407603825701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010872 (n + 1) + 3 * (2 * a (n - 1))

end

end A037507.P1353492407603825701

namespace A037507

/-- `A010872(n+1)+3*2*a(n-1)` -/
def P1353492407603825701.Spec : Prop :=
  ∀ n, P1353492407603825701.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P1946133109855035064

`∑[A037523(n+1)-A037499(n+1)]`
-/

namespace A037507.P1946133109855035064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) - A037499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037507.P1946133109855035064

namespace A037507

/-- `∑[A037523(n+1)-A037499(n+1)]` -/
def P1946133109855035064.Spec : Prop :=
  ∀ n, P1946133109855035064.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P8506420170472973465

`2*A033133(n+1)-A033142(n+1)`
-/

namespace A037507.P8506420170472973465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033133 (n + 1) - A033142 (n + 1)

end

end A037507.P8506420170472973465

namespace A037507

/-- `2*A033133(n+1)-A033142(n+1)` -/
def P8506420170472973465.Spec : Prop :=
  ∀ n, P8506420170472973465.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P8709901710488163779

`A037539(n+1)+A037539(n+1)-A037547(n+1)`
-/

namespace A037507.P8709901710488163779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 1) + (A037539 (n + 1) - A037547 (n + 1))

end

end A037507.P8709901710488163779

namespace A037507

/-- `A037539(n+1)+A037539(n+1)-A037547(n+1)` -/
def P8709901710488163779.Spec : Prop :=
  ∀ n, P8709901710488163779.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P5809583845512349287

`A037627(n+1)-A033133(n+1)`
-/

namespace A037507.P5809583845512349287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037627 (n + 1) - A033133 (n + 1)

end

end A037507.P5809583845512349287

namespace A037507

/-- `A037627(n+1)-A033133(n+1)` -/
def P5809583845512349287.Spec : Prop :=
  ∀ n, P5809583845512349287.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P9883647477570472814

`A037531(n+2)-A033142(n+2)`
-/

namespace A037507.P9883647477570472814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037531 (n + 2) - A033142 (n + 2)

end

end A037507.P9883647477570472814

namespace A037507

/-- `A037531(n+2)-A033142(n+2)` -/
def P9883647477570472814.Spec : Prop :=
  ∀ n, P9883647477570472814.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P6960538477344517401

`A037547(n+2)-A033133(n+2)`
-/

namespace A037507.P6960538477344517401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 2) - A033133 (n + 2)

end

end A037507.P6960538477344517401

namespace A037507

/-- `A037547(n+2)-A033133(n+2)` -/
def P6960538477344517401.Spec : Prop :=
  ∀ n, P6960538477344517401.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P1621067822338636748

`∑[A037641(n+1)-A037606(n+1)]`
-/

namespace A037507.P1621067822338636748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037641 (n + 1) - A037606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037507.P1621067822338636748

namespace A037507

/-- `∑[A037641(n+1)-A037606(n+1)]` -/
def P1621067822338636748.Spec : Prop :=
  ∀ n, P1621067822338636748.a n = A037507 (n + 1)

end A037507

/-! ## A037507.P12881019230371469462

`2*A037539(n+1)-A037547(n+1)`
-/

namespace A037507.P12881019230371469462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037539 (n + 1) - A037547 (n + 1)

end

end A037507.P12881019230371469462

namespace A037507

/-- `2*A037539(n+1)-A037547(n+1)` -/
def P12881019230371469462.Spec : Prop :=
  ∀ n, P12881019230371469462.a n = A037507 (n + 1)

end A037507

/-!
# A037508: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

The programs for A037508, the canonical program `A037508.P12364456326571946635` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037508 has offset 1).

The definition of A037508 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037508.anchor (n : ℕ) (hn : 1 ≤ n) : A037508 n = ((Nat.ofDigits 7 ((List.range n).reverse.map fun i => [1, 2, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037508`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037508.P6425330049967568847

`ogf((1+2x)/(1-7x-x^3+7x^4))`
-/

namespace A037508.P6425330049967568847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -7, 0, -1, 7] n

end

end A037508.P6425330049967568847

namespace A037508

/-- `ogf((1+2x)/(1-7x-x^3+7x^4))` -/
def P6425330049967568847.Spec : Prop :=
  ∀ n, P6425330049967568847.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P1560977738912859909

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=9, a(2)=63, a(3)=442`
-/

namespace A037508.P1560977738912859909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 63, 442] fun n a =>
  7 * a (n - 1) + a (n - 3) - 7 * a (n - 4)

end

end A037508.P1560977738912859909

namespace A037508

/-- `7*a(n-1)+a(n-3)-7*a(n-4)` -/
def P1560977738912859909.Spec : Prop :=
  ∀ n, P1560977738912859909.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P9751412712136847636

`floor(7^(n+2)/38)`
-/

namespace A037508.P9751412712136847636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 ^ (n + 2) : ℚ) / 38⌋

end

end A037508.P9751412712136847636

namespace A037508

/-- `floor(7^(n+2)/38)` -/
def P9751412712136847636.Spec : Prop :=
  ∀ n, P9751412712136847636.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P12364456326571946635

`(n+1)%3+7*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037508

/-- `(n+1)%3+7*a(n-1)` -/
def P12364456326571946635.Spec : Prop :=
  ∀ n, (P12364456326571946635.a n : ℤ) = A037508 (n + 1)

theorem P12364456326571946635.correct : P12364456326571946635.Spec := by
  intro n
  simp only [A037508, Nat.add_sub_cancel]

end A037508

/-! ## A037508.P4695051194685896034

`7*a(n-1)-xor(n, -1)%3` with `a(0)=1`
-/

namespace A037508.P4695051194685896034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - Int.tmod (Int.xor (n : ℤ) (-1)) 3

end

end A037508.P4695051194685896034

namespace A037508

/-- `7*a(n-1)-xor(n, -1)%3` -/
def P4695051194685896034.Spec : Prop :=
  ∀ n, P4695051194685896034.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P14544951317900717060

`7*a(n-1)-(n-Δ[n²])%3` with `a(0)=1`
-/

namespace A037508.P14544951317900717060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - Int.tmod ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) 3

end

end A037508.P14544951317900717060

namespace A037508

/-- `7*a(n-1)-(n-Δ[n²])%3` -/
def P14544951317900717060.Spec : Prop :=
  ∀ n, P14544951317900717060.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P9936727120640088287

`A037614(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A037508.P9936727120640088287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037614 (n + 1) - a (n - 1)

end

end A037508.P9936727120640088287

namespace A037508

/-- `A037614(n+1)-a(n-1)` -/
def P9936727120640088287.Spec : Prop :=
  ∀ n, P9936727120640088287.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P8984040526427643520

`A033134(n+1)+A033134(n+1)-A033143(n+1)`
-/

namespace A037508.P8984040526427643520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033134 (n + 1) + (A033134 (n + 1) - A033143 (n + 1))

end

end A037508.P8984040526427643520

namespace A037508

/-- `A033134(n+1)+A033134(n+1)-A033143(n+1)` -/
def P8984040526427643520.Spec : Prop :=
  ∀ n, P8984040526427643520.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P14073485571745337414

`A037540(n+1)+A037540(n+1)-A037548(n+1)`
-/

namespace A037508.P14073485571745337414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + (A037540 (n + 1) - A037548 (n + 1))

end

end A037508.P14073485571745337414

namespace A037508

/-- `A037540(n+1)+A037540(n+1)-A037548(n+1)` -/
def P14073485571745337414.Spec : Prop :=
  ∀ n, P14073485571745337414.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P16574985219174559381

`∑[A033134(n+1)+A033134(n+1)-A037532(n+1)]`
-/

namespace A037508.P16574985219174559381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033134 (n + 1) + (A033134 (n + 1) - A037532 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037508.P16574985219174559381

namespace A037508

/-- `∑[A033134(n+1)+A033134(n+1)-A037532(n+1)]` -/
def P16574985219174559381.Spec : Prop :=
  ∀ n, P16574985219174559381.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P16615161851637368551

`A037642(n+1)-∑[A000420(n)]`
-/

namespace A037508.P16615161851637368551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037642 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037508.P16615161851637368551

namespace A037508

/-- `A037642(n+1)-∑[A000420(n)]` -/
def P16615161851637368551.Spec : Prop :=
  ∀ n, P16615161851637368551.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P6758130342853465152

`A120741(n+1)-A037635(n+1)`
-/

namespace A037508.P6758130342853465152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037635 (n + 1)

end

end A037508.P6758130342853465152

namespace A037508

/-- `A120741(n+1)-A037635(n+1)` -/
def P6758130342853465152.Spec : Prop :=
  ∀ n, P6758130342853465152.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P390463961933915017

`A037532(n+2)-A033143(n+2)`
-/

namespace A037508.P390463961933915017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 2) - A033143 (n + 2)

end

end A037508.P390463961933915017

namespace A037508

/-- `A037532(n+2)-A033143(n+2)` -/
def P390463961933915017.Spec : Prop :=
  ∀ n, P390463961933915017.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P9271403808070472257

`∑[A037524(n+1)-A037500(n+1)]`
-/

namespace A037508.P9271403808070472257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037524 (n + 1) - A037500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037508.P9271403808070472257

namespace A037508

/-- `∑[A037524(n+1)-A037500(n+1)]` -/
def P9271403808070472257.Spec : Prop :=
  ∀ n, P9271403808070472257.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P13042750315808106875

`∑[A037642(n+1)-A037607(n+1)]`
-/

namespace A037508.P13042750315808106875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037642 (n + 1) - A037607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037508.P13042750315808106875

namespace A037508

/-- `∑[A037642(n+1)-A037607(n+1)]` -/
def P13042750315808106875.Spec : Prop :=
  ∀ n, P13042750315808106875.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P7344021496108641040

`∑[2*A000420(n)]-A037500(n+1)`
-/

namespace A037508.P7344021496108641040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037500 (n + 1)

end

end A037508.P7344021496108641040

namespace A037508

/-- `∑[2*A000420(n)]-A037500(n+1)` -/
def P7344021496108641040.Spec : Prop :=
  ∀ n, P7344021496108641040.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P1368559865552591751

`2*A033134(n+1)-A033143(n+1)`
-/

namespace A037508.P1368559865552591751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033134 (n + 1) - A033143 (n + 1)

end

end A037508.P1368559865552591751

namespace A037508

/-- `2*A033134(n+1)-A033143(n+1)` -/
def P1368559865552591751.Spec : Prop :=
  ∀ n, P1368559865552591751.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P5090116168876508513

`(A037600(n+1)+A033134(n+1))/2`
-/

namespace A037508.P5090116168876508513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037600 (n + 1) + A033134 (n + 1) : ℚ) / 2

end

end A037508.P5090116168876508513

namespace A037508

/-- `(A037600(n+1)+A033134(n+1))/2` -/
def P5090116168876508513.Spec : Prop :=
  ∀ n, P5090116168876508513.a n = (A037508 (n + 1) : ℚ)

end A037508

/-! ## A037508.P4962437578528064593

`A037670(n+1)-2*A033143(n+1)`
-/

namespace A037508.P4962437578528064593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037670 (n + 1) - 2 * A033143 (n + 1)

end

end A037508.P4962437578528064593

namespace A037508

/-- `A037670(n+1)-2*A033143(n+1)` -/
def P4962437578528064593.Spec : Prop :=
  ∀ n, P4962437578528064593.a n = A037508 (n + 1)

end A037508

/-! ## A037508.P7888086811044528344

`2*A037540(n+1)-A037548(n+1)`
-/

namespace A037508.P7888086811044528344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037540 (n + 1) - A037548 (n + 1)

end

end A037508.P7888086811044528344

namespace A037508

/-- `2*A037540(n+1)-A037548(n+1)` -/
def P7888086811044528344.Spec : Prop :=
  ∀ n, P7888086811044528344.a n = A037508 (n + 1)

end A037508

/-!
# A037509: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

The programs for A037509, the canonical program `A037509.P17816959801132635751` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037509 has offset 1).

The definition of A037509 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037509.anchor (n : ℕ) (hn : 1 ≤ n) : A037509 n = ((Nat.ofDigits 8 ((List.range n).reverse.map fun i => [1, 2, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037509`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037509.P16728844943696706575

`ogf((1+2x)/(1-8x-x^3+8x^4))`
-/

namespace A037509.P16728844943696706575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -8, 0, -1, 8] n

end

end A037509.P16728844943696706575

namespace A037509

/-- `ogf((1+2x)/(1-8x-x^3+8x^4))` -/
def P16728844943696706575.Spec : Prop :=
  ∀ n, P16728844943696706575.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P17816959801132635751

`(n+1)%3+8*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037509

/-- `(n+1)%3+8*a(n-1)` -/
def P17816959801132635751.Spec : Prop :=
  ∀ n, (P17816959801132635751.a n : ℤ) = A037509 (n + 1)

theorem P17816959801132635751.correct : P17816959801132635751.Spec := by
  intro n
  simp only [A037509, Nat.add_sub_cancel]

end A037509

/-! ## A037509.P17774840977125857283

`A037615(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A037509.P17774840977125857283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037615 (n + 1) - a (n - 1)

end

end A037509.P17774840977125857283

namespace A037509

/-- `A037615(n+1)-a(n-1)` -/
def P17774840977125857283.Spec : Prop :=
  ∀ n, P17774840977125857283.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P3764064419475258543

`A037643(n+1)-∑[A001018(n)]`
-/

namespace A037509.P3764064419475258543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037509.P3764064419475258543

namespace A037509

/-- `A037643(n+1)-∑[A001018(n)]` -/
def P3764064419475258543.Spec : Prop :=
  ∀ n, P3764064419475258543.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P13678006394936128179

`A037565(n+1)-A033126(n+1)`
-/

namespace A037509.P13678006394936128179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037565 (n + 1) - A033126 (n + 1)

end

end A037509.P13678006394936128179

namespace A037509

/-- `A037565(n+1)-A033126(n+1)` -/
def P13678006394936128179.Spec : Prop :=
  ∀ n, P13678006394936128179.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P5818340351503016539

`and(A037541(n+1), A037549(n+1))`
-/

namespace A037509.P5818340351503016539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037541 (n + 1)) (A037549 (n + 1))

end

end A037509.P5818340351503016539

namespace A037509

/-- `and(A037541(n+1), A037549(n+1))` -/
def P5818340351503016539.Spec : Prop :=
  ∀ n, P5818340351503016539.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P11202272700303760989

`and(A037541(n+1), A037601(n+1))`
-/

namespace A037509.P11202272700303760989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037541 (n + 1)) (A037601 (n + 1))

end

end A037509.P11202272700303760989

namespace A037509

/-- `and(A037541(n+1), A037601(n+1))` -/
def P11202272700303760989.Spec : Prop :=
  ∀ n, P11202272700303760989.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P15240945345792643665

`and(A037601(n+1), A037608(n+1))`
-/

namespace A037509.P15240945345792643665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037601 (n + 1)) (A037608 (n + 1))

end

end A037509.P15240945345792643665

namespace A037509

/-- `and(A037601(n+1), A037608(n+1))` -/
def P15240945345792643665.Spec : Prop :=
  ∀ n, P15240945345792643665.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P9125798823564247613

`∑[A037525(n+1)-A037501(n+1)]`
-/

namespace A037509.P9125798823564247613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) - A037501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037509.P9125798823564247613

namespace A037509

/-- `∑[A037525(n+1)-A037501(n+1)]` -/
def P9125798823564247613.Spec : Prop :=
  ∀ n, P9125798823564247613.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P2506167946899766306

`∑[A037643(n+1)-A037608(n+1)]`
-/

namespace A037509.P2506167946899766306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 1) - A037608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037509.P2506167946899766306

namespace A037509

/-- `∑[A037643(n+1)-A037608(n+1)]` -/
def P2506167946899766306.Spec : Prop :=
  ∀ n, P2506167946899766306.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P1726562449604009857

`∑[2*A001018(n)]-A037501(n+1)`
-/

namespace A037509.P1726562449604009857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037501 (n + 1)

end

end A037509.P1726562449604009857

namespace A037509

/-- `∑[2*A001018(n)]-A037501(n+1)` -/
def P1726562449604009857.Spec : Prop :=
  ∀ n, P1726562449604009857.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P200166469118728202

`2*A033135(n+1)-A033144(n+1)`
-/

namespace A037509.P200166469118728202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033135 (n + 1) - A033144 (n + 1)

end

end A037509.P200166469118728202

namespace A037509

/-- `2*A033135(n+1)-A033144(n+1)` -/
def P200166469118728202.Spec : Prop :=
  ∀ n, P200166469118728202.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P2140222396770891492

`A033135(n+1)+A037533(n+1)-A037501(n+1)`
-/

namespace A037509.P2140222396770891492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033135 (n + 1) + (A037533 (n + 1) - A037501 (n + 1))

end

end A037509.P2140222396770891492

namespace A037509

/-- `A033135(n+1)+A037533(n+1)-A037501(n+1)` -/
def P2140222396770891492.Spec : Prop :=
  ∀ n, P2140222396770891492.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P13984402260908679591

`A037541(n+1)+A037557(n+1)-A037573(n+1)`
-/

namespace A037509.P13984402260908679591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037541 (n + 1) + (A037557 (n + 1) - A037573 (n + 1))

end

end A037509.P13984402260908679591

namespace A037509

/-- `A037541(n+1)+A037557(n+1)-A037573(n+1)` -/
def P13984402260908679591.Spec : Prop :=
  ∀ n, P13984402260908679591.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P15885492263322365229

`A037533(n+2)-A033144(n+2)`
-/

namespace A037509.P15885492263322365229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037533 (n + 2) - A033144 (n + 2)

end

end A037509.P15885492263322365229

namespace A037509

/-- `A037533(n+2)-A033144(n+2)` -/
def P15885492263322365229.Spec : Prop :=
  ∀ n, P15885492263322365229.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P12920247934447905711

`A037549(n+2)-A033135(n+2)`
-/

namespace A037509.P12920247934447905711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037549 (n + 2) - A033135 (n + 2)

end

end A037509.P12920247934447905711

namespace A037509

/-- `A037549(n+2)-A033135(n+2)` -/
def P12920247934447905711.Spec : Prop :=
  ∀ n, P12920247934447905711.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P17596579688196450057

`and(A037533(n+2), A037549(n+1))`
-/

namespace A037509.P17596579688196450057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037533 (n + 2)) (A037549 (n + 1))

end

end A037509.P17596579688196450057

namespace A037509

/-- `and(A037533(n+2), A037549(n+1))` -/
def P17596579688196450057.Spec : Prop :=
  ∀ n, P17596579688196450057.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P13283008841922420986

`and(A037615(n+1), A037615(n+2))`
-/

namespace A037509.P13283008841922420986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037615 (n + 1)) (A037615 (n + 2))

end

end A037509.P13283008841922420986

namespace A037509

/-- `and(A037615(n+1), A037615(n+2))` -/
def P13283008841922420986.Spec : Prop :=
  ∀ n, P13283008841922420986.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P12813064659627186180

`xor(A033135(n+2), A037501(n+2))`
-/

namespace A037509.P12813064659627186180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033135 (n + 2)) (A037501 (n + 2))

end

end A037509.P12813064659627186180

namespace A037509

/-- `xor(A033135(n+2), A037501(n+2))` -/
def P12813064659627186180.Spec : Prop :=
  ∀ n, P12813064659627186180.a n = A037509 (n + 1)

end A037509

/-! ## A037509.P2137073101404842400

`2*A037533(n+2)-A037573(n+2)`
-/

namespace A037509.P2137073101404842400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037533 (n + 2) - A037573 (n + 2)

end

end A037509.P2137073101404842400

namespace A037509

/-- `2*A037533(n+2)-A037573(n+2)` -/
def P2137073101404842400.Spec : Prop :=
  ∀ n, P2137073101404842400.a n = A037509 (n + 1)

end A037509

/-!
# A037510: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

The programs for A037510, the canonical program `A037510.P3160313224642735029` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037510 has offset 1).

The definition of A037510 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037510.anchor (n : ℕ) (hn : 1 ≤ n) : A037510 n = ((Nat.ofDigits 9 ((List.range n).reverse.map fun i => [1, 2, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037510`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037510.P893478607239822910

`ogf((1+2x)/(1-9x-x^3+9x^4))`
-/

namespace A037510.P893478607239822910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -9, 0, -1, 9] n

end

end A037510.P893478607239822910

namespace A037510

/-- `ogf((1+2x)/(1-9x-x^3+9x^4))` -/
def P893478607239822910.Spec : Prop :=
  ∀ n, P893478607239822910.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P3160313224642735029

`(n+1)%3+9*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037510

/-- `(n+1)%3+9*a(n-1)` -/
def P3160313224642735029.Spec : Prop :=
  ∀ n, (P3160313224642735029.a n : ℤ) = A037510 (n + 1)

theorem P3160313224642735029.correct : P3160313224642735029.Spec := by
  intro n
  simp only [A037510, Nat.add_sub_cancel]

end A037510

/-! ## A037510.P2694460537931997813

`A037644(n+1)-∑[9^n]`
-/

namespace A037510.P2694460537931997813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037644 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037510.P2694460537931997813

namespace A037510

/-- `A037644(n+1)-∑[9^n]` -/
def P2694460537931997813.Spec : Prop :=
  ∀ n, P2694460537931997813.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P17128623104338851849

`A037616(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A037510.P17128623104338851849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037616 (n + 1) - a (n - 1)

end

end A037510.P17128623104338851849

namespace A037510

/-- `A037616(n+1)-a(n-1)` -/
def P17128623104338851849.Spec : Prop :=
  ∀ n, P17128623104338851849.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P2577427320644978801

`A037566(n+1)-A033127(n+1)`
-/

namespace A037510.P2577427320644978801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037566 (n + 1) - A033127 (n + 1)

end

end A037510.P2577427320644978801

namespace A037510

/-- `A037566(n+1)-A033127(n+1)` -/
def P2577427320644978801.Spec : Prop :=
  ∀ n, P2577427320644978801.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P9411489493551245914

`A037630(n+1)-A033136(n+1)`
-/

namespace A037510.P9411489493551245914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037630 (n + 1) - A033136 (n + 1)

end

end A037510.P9411489493551245914

namespace A037510

/-- `A037630(n+1)-A033136(n+1)` -/
def P9411489493551245914.Spec : Prop :=
  ∀ n, P9411489493551245914.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P6024843148649073990

`∑[A037526(n+1)-A037502(n+1)]`
-/

namespace A037510.P6024843148649073990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037526 (n + 1) - A037502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037510.P6024843148649073990

namespace A037510

/-- `∑[A037526(n+1)-A037502(n+1)]` -/
def P6024843148649073990.Spec : Prop :=
  ∀ n, P6024843148649073990.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P11134551418021398302

`∑[A037644(n+1)-A037609(n+1)]`
-/

namespace A037510.P11134551418021398302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037644 (n + 1) - A037609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037510.P11134551418021398302

namespace A037510

/-- `∑[A037644(n+1)-A037609(n+1)]` -/
def P11134551418021398302.Spec : Prop :=
  ∀ n, P11134551418021398302.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P11660024256048530111

`2*A033136(n+1)-A033145(n+1)`
-/

namespace A037510.P11660024256048530111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033136 (n + 1) - A033145 (n + 1)

end

end A037510.P11660024256048530111

namespace A037510

/-- `2*A033136(n+1)-A033145(n+1)` -/
def P11660024256048530111.Spec : Prop :=
  ∀ n, P11660024256048530111.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P2460702533597188516

`2*A037542(n+1)-A037550(n+1)`
-/

namespace A037510.P2460702533597188516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037542 (n + 1) - A037550 (n + 1)

end

end A037510.P2460702533597188516

namespace A037510

/-- `2*A037542(n+1)-A037550(n+1)` -/
def P2460702533597188516.Spec : Prop :=
  ∀ n, P2460702533597188516.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P3031866259413169619

`A037534(n+2)-A033145(n+2)`
-/

namespace A037510.P3031866259413169619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037534 (n + 2) - A033145 (n + 2)

end

end A037510.P3031866259413169619

namespace A037510

/-- `A037534(n+2)-A033145(n+2)` -/
def P3031866259413169619.Spec : Prop :=
  ∀ n, P3031866259413169619.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P3877327866668127929

`A037550(n+2)-A033136(n+2)`
-/

namespace A037510.P3877327866668127929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037550 (n + 2) - A033136 (n + 2)

end

end A037510.P3877327866668127929

namespace A037510

/-- `A037550(n+2)-A033136(n+2)` -/
def P3877327866668127929.Spec : Prop :=
  ∀ n, P3877327866668127929.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P10778690555843162652

`A037518(n+2)-Δ[A037526(n+1)]`
-/

namespace A037510.P10778690555843162652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037518 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037510.P10778690555843162652

namespace A037510

/-- `A037518(n+2)-Δ[A037526(n+1)]` -/
def P10778690555843162652.Spec : Prop :=
  ∀ n, P10778690555843162652.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P15987381668533721433

`A037574(n+2)-2*A033145(n+2)`
-/

namespace A037510.P15987381668533721433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037574 (n + 2) - 2 * A033145 (n + 2)

end

end A037510.P15987381668533721433

namespace A037510

/-- `A037574(n+2)-2*A033145(n+2)` -/
def P15987381668533721433.Spec : Prop :=
  ∀ n, P15987381668533721433.a n = A037510 (n + 1)

end A037510

/-! ## A037510.P1031771902189632773

`2*A037534(n+2)-A037574(n+2)`
-/

namespace A037510.P1031771902189632773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037534 (n + 2) - A037574 (n + 2)

end

end A037510.P1031771902189632773

namespace A037510

/-- `2*A037534(n+2)-A037574(n+2)` -/
def P1031771902189632773.Spec : Prop :=
  ∀ n, P1031771902189632773.a n = A037510 (n + 1)

end A037510

/-!
# A037511: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,0.

The programs for A037511, the canonical program `A037511.P6356286583376610916` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037511 has offset 1).

The definition of A037511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037511.P6356286583376610916

`ogf((1+2x)/(1-10x-x^3+10x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037511

/-- `ogf((1+2x)/(1-10x-x^3+10x^4))` -/
def P6356286583376610916.Spec : Prop :=
  ∀ n, P6356286583376610916.a n = A037511 (n + 1)

theorem P6356286583376610916.correct : P6356286583376610916.Spec := by
  intro n
  simp only [A037511, Nat.add_sub_cancel]

end A037511

/-! ## A037511.P12508029044895177724

`floor(4*10^(n+2)/333)`
-/

namespace A037511.P12508029044895177724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * 10 ^ (n + 2) : ℚ) / 333⌋

end

end A037511.P12508029044895177724

namespace A037511

/-- `floor(4*10^(n+2)/333)` -/
def P12508029044895177724.Spec : Prop :=
  ∀ n, P12508029044895177724.a n = A037511 (n + 1)

end A037511

/-! ## A037511.P8443132113759512638

`(n+1)%3+10*a(n-1)` with `a(0)=1`
-/

namespace A037511.P8443132113759512638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 3 + 10 * a (n - 1)

end

end A037511.P8443132113759512638

namespace A037511

/-- `(n+1)%3+10*a(n-1)` -/
def P8443132113759512638.Spec : Prop :=
  ∀ n, (P8443132113759512638.a n : ℤ) = A037511 (n + 1)

end A037511

/-! ## A037511.P5089517421346049458

`A037617(n)-a(n-1)` with `a(0)=1`
-/

namespace A037511.P5089517421346049458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037617 (n + 1) - a (n - 1)

end

end A037511.P5089517421346049458

namespace A037511

/-- `A037617(n)-a(n-1)` -/
def P5089517421346049458.Spec : Prop :=
  ∀ n, P5089517421346049458.a n = A037511 (n + 1)

end A037511

/-! ## A037511.P3004691379420038716

`2*A033137(n)-A033146(n)`
-/

namespace A037511.P3004691379420038716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033137 (n + 1) - A033146 (n + 1)

end

end A037511.P3004691379420038716

namespace A037511

/-- `2*A033137(n)-A033146(n)` -/
def P3004691379420038716.Spec : Prop :=
  ∀ n, P3004691379420038716.a n = A037511 (n + 1)

end A037511

/-! ## A037511.P2307186288830742906

`∑[2*A011557(n)]-A037503(n)`
-/

namespace A037511.P2307186288830742906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037503 (n + 1)

end

end A037511.P2307186288830742906

namespace A037511

/-- `∑[2*A011557(n)]-A037503(n)` -/
def P2307186288830742906.Spec : Prop :=
  ∀ n, P2307186288830742906.a n = A037511 (n + 1)

end A037511

/-! ## A037511.P1460752232161776300

`2*A000042(n+1)-A037503(n)`
-/

namespace A037511.P1460752232161776300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000042 (n + 1) - A037503 (n + 1)

end

end A037511.P1460752232161776300

namespace A037511

/-- `2*A000042(n+1)-A037503(n)` -/
def P1460752232161776300.Spec : Prop :=
  ∀ n, P1460752232161776300.a n = A037511 (n + 1)

end A037511

/-! ## A037511.P123368598155914335

`A000042(n+1)+Δ[A037535(n)-A000042(n+1)]`
-/

namespace A037511.P123368598155914335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037535 (n + 1) - A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037511.P123368598155914335

namespace A037511

/-- `A000042(n+1)+Δ[A037535(n)-A000042(n+1)]` -/
def P123368598155914335.Spec : Prop :=
  ∀ n, P123368598155914335.a n = A037511 (n + 1)

end A037511

/-!
# A037512: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

The programs for A037512, the canonical program `A037512.P15661678140469053637` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037512 has offset 1).

The definition of A037512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037512.P15661678140469053637

`ogf((2+x^2)/(1-3x-x^3+3x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037512

/-- `ogf((2+x^2)/(1-3x-x^3+3x^4))` -/
def P15661678140469053637.Spec : Prop :=
  ∀ n, P15661678140469053637.a n = A037512 (n + 1)

theorem P15661678140469053637.correct : P15661678140469053637.Spec := by
  intro n
  simp only [A037512, Nat.add_sub_cancel]

end A037512

/-! ## A037512.P15680083062298208686

`floor(19*3^(n+1)/26)`
-/

namespace A037512.P15680083062298208686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊19 * ((3 ^ (n + 1) : ℚ) / 26)⌋

end

end A037512.P15680083062298208686

namespace A037512

/-- `floor(19*3^(n+1)/26)` -/
def P15680083062298208686.Spec : Prop :=
  ∀ n, P15680083062298208686.a n = A037512 (n + 1)

end A037512

/-! ## A037512.P6530179814801919472

`(n-1)%3+3*a(n-1)` with `a(0)=2`
-/

namespace A037512.P6530179814801919472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n : ℤ) - 1) 3 + 3 * a (n - 1)

end

end A037512.P6530179814801919472

namespace A037512

/-- `(n-1)%3+3*a(n-1)` -/
def P6530179814801919472.Spec : Prop :=
  ∀ n, P6530179814801919472.a n = A037512 (n + 1)

end A037512

/-! ## A037512.P17751737359210462485

`3*a(n-1)-(1-n)%3` with `a(0)=2`
-/

namespace A037512.P17751737359210462485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 3

end

end A037512.P17751737359210462485

namespace A037512

/-- `3*a(n-1)-(1-n)%3` -/
def P17751737359210462485.Spec : Prop :=
  ∀ n, P17751737359210462485.a n = A037512 (n + 1)

end A037512

/-! ## A037512.P9312111827960991905

`a(n-1)-((2-a(n-1))%3-a(n-1)-a(n-1))` with `a(0)=2`
-/

namespace A037512.P9312111827960991905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (Int.tmod (2 - a (n - 1)) 3 - a (n - 1) - a (n - 1))

end

end A037512.P9312111827960991905

namespace A037512

/-- `a(n-1)-((2-a(n-1))%3-a(n-1)-a(n-1))` -/
def P9312111827960991905.Spec : Prop :=
  ∀ n, P9312111827960991905.a n = A037512 (n + 1)

end A037512

/-! ## A037512.P8011077276803305434

`A037079(2*(n+1))`
-/

namespace A037512.P8011077276803305434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037079 (2 * (n + 1))

end

end A037512.P8011077276803305434

namespace A037512

/-- `A037079(2*(n+1))` -/
def P8011077276803305434.Spec : Prop :=
  ∀ n, P8011077276803305434.a n = A037512 (n + 1)

end A037512

/-! ## A037512.P13753988081485009841

`A037504(n+2)-3^(n+1)`
-/

namespace A037512.P13753988081485009841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037504 (n + 2) - (3 ^ (n + 1) : ℤ)

end

end A037512.P13753988081485009841

namespace A037512

/-- `A037504(n+2)-3^(n+1)` -/
def P13753988081485009841.Spec : Prop :=
  ∀ n, P13753988081485009841.a n = A037512 (n + 1)

end A037512

/-! ## A037512.P3062822350236285166

`A077842(n)+A037504(n+1)`
-/

namespace A037512.P3062822350236285166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077842 n + A037504 (n + 1)

end

end A037512.P3062822350236285166

namespace A037512

/-- `A077842(n)+A037504(n+1)` -/
def P3062822350236285166.Spec : Prop :=
  ∀ n, P3062822350236285166.a n = A037512 (n + 1)

end A037512

/-! ## A037512.P17161576028993928525

`A033139(n+1)+A033121(n+1)`
-/

namespace A037512.P17161576028993928525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (n + 1) + A033121 (n + 1)

end

end A037512.P17161576028993928525

namespace A037512

/-- `A033139(n+1)+A033121(n+1)` -/
def P17161576028993928525.Spec : Prop :=
  ∀ n, P17161576028993928525.a n = A037512 (n + 1)

end A037512

/-!
# A037513: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

The programs for A037513, the canonical program `A037513.P9659595459556117332` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037513 has offset 1).

The definition of A037513 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037513.anchor (n : ℕ) (hn : 1 ≤ n) : A037513 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [2, 0, 1].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037513`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037513.P13138912561526981132

`ogf((2+x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037513.P13138912561526981132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 1] [1, -4, 0, -1, 4] n

end

end A037513.P13138912561526981132

namespace A037513

/-- `ogf((2+x^2)/(1-4x-x^3+4x^4))` -/
def P13138912561526981132.Spec : Prop :=
  ∀ n, P13138912561526981132.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P9659595459556117332

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=8, a(2)=33, a(3)=134`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037513

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P9659595459556117332.Spec : Prop :=
  ∀ n, P9659595459556117332.a n = A037513 (n + 1)

theorem P9659595459556117332.correct : P9659595459556117332.Spec := by
  intro n
  simp only [A037513, Nat.add_sub_cancel]

end A037513

/-! ## A037513.P9116331351655539079

`floor(11*4^(n+1)/21)`
-/

namespace A037513.P9116331351655539079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 * 4 ^ (n + 1) : ℚ) / 21⌋

end

end A037513.P9116331351655539079

namespace A037513

/-- `floor(11*4^(n+1)/21)` -/
def P9116331351655539079.Spec : Prop :=
  ∀ n, P9116331351655539079.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P4177734430203785286

`(n-1)%3+4*a(n-1)` with `a(0)=2`
-/

namespace A037513.P4177734430203785286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n : ℤ) - 1) 3 + 4 * a (n - 1)

end

end A037513.P4177734430203785286

namespace A037513

/-- `(n-1)%3+4*a(n-1)` -/
def P4177734430203785286.Spec : Prop :=
  ∀ n, P4177734430203785286.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P9890900803087338512

`4*a(n-1)-(1-n)%3` with `a(0)=2`
-/

namespace A037513.P9890900803087338512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 3

end

end A037513.P9890900803087338512

namespace A037513

/-- `4*a(n-1)-(1-n)%3` -/
def P9890900803087338512.Spec : Prop :=
  ∀ n, P9890900803087338512.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P11493662008384321522

`A037521(n+1)-A178872(n)`
-/

namespace A037513.P11493662008384321522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037521 (n + 1) - A178872 n

end

end A037513.P11493662008384321522

namespace A037513

/-- `A037521(n+1)-A178872(n)` -/
def P11493662008384321522.Spec : Prop :=
  ∀ n, P11493662008384321522.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P13991287264533571367

`∑[record[A077972(n)+A000079(n)]]`
-/

namespace A037513.P13991287264533571367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077972 n + A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037513.P13991287264533571367

namespace A037513

/-- `∑[record[A077972(n)+A000079(n)]]` -/
def P13991287264533571367.Spec : Prop :=
  ∀ n, P13991287264533571367.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P1709549954201649556

`A178872(n+1)+∑[A000302(n)]`
-/

namespace A037513.P1709549954201649556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037513.P1709549954201649556

namespace A037513

/-- `A178872(n+1)+∑[A000302(n)]` -/
def P1709549954201649556.Spec : Prop :=
  ∀ n, P1709549954201649556.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P684912413403391505

`A033140(n+1)+A033122(n+1)`
-/

namespace A037513.P684912413403391505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033140 (n + 1) + A033122 (n + 1)

end

end A037513.P684912413403391505

namespace A037513

/-- `A033140(n+1)+A033122(n+1)` -/
def P684912413403391505.Spec : Prop :=
  ∀ n, P684912413403391505.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P4847603487319893725

`A037653(n+1)-A033122(n+1)`
-/

namespace A037513.P4847603487319893725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037653 (n + 1) - A033122 (n + 1)

end

end A037513.P4847603487319893725

namespace A037513

/-- `A037653(n+1)-A033122(n+1)` -/
def P4847603487319893725.Spec : Prop :=
  ∀ n, P4847603487319893725.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P7117608401523640845

`A037646(n+1)-A033140(n+1)`
-/

namespace A037513.P7117608401523640845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037646 (n + 1) - A033140 (n + 1)

end

end A037513.P7117608401523640845

namespace A037513

/-- `A037646(n+1)-A033140(n+1)` -/
def P7117608401523640845.Spec : Prop :=
  ∀ n, P7117608401523640845.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P2527585425387109465

`A007583(n+1)-A046630(2*n)`
-/

namespace A037513.P2527585425387109465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (n + 1) - A046630 (2 * n)

end

end A037513.P2527585425387109465

namespace A037513

/-- `A007583(n+1)-A046630(2*n)` -/
def P2527585425387109465.Spec : Prop :=
  ∀ n, P2527585425387109465.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P6655423708407626875

`and(A037553(n+1), A037561(n+1))`
-/

namespace A037513.P6655423708407626875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037553 (n + 1)) (A037561 (n + 1))

end

end A037513.P6655423708407626875

namespace A037513

/-- `and(A037553(n+1), A037561(n+1))` -/
def P6655423708407626875.Spec : Prop :=
  ∀ n, P6655423708407626875.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P16512606457739036397

`and(A037553(n+1), A037618(n+1))`
-/

namespace A037513.P16512606457739036397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037553 (n + 1)) (A037618 (n + 1))

end

end A037513.P16512606457739036397

namespace A037513

/-- `and(A037553(n+1), A037618(n+1))` -/
def P16512606457739036397.Spec : Prop :=
  ∀ n, P16512606457739036397.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P1548354228659010979

`and(A037561(n+1), A037618(n+1))`
-/

namespace A037513.P1548354228659010979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037561 (n + 1)) (A037618 (n + 1))

end

end A037513.P1548354228659010979

namespace A037513

/-- `and(A037561(n+1), A037618(n+1))` -/
def P1548354228659010979.Spec : Prop :=
  ∀ n, P1548354228659010979.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P13357887976857363664

`and(A037561(n+1), A037632(n+1))`
-/

namespace A037513.P13357887976857363664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037561 (n + 1)) (A037632 (n + 1))

end

end A037513.P13357887976857363664

namespace A037513

/-- `and(A037561(n+1), A037632(n+1))` -/
def P13357887976857363664.Spec : Prop :=
  ∀ n, P13357887976857363664.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P11916222601939543349

`and(A037553(n+1), A037646(n+1))`
-/

namespace A037513.P11916222601939543349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037553 (n + 1)) (A037646 (n + 1))

end

end A037513.P11916222601939543349

namespace A037513

/-- `and(A037553(n+1), A037646(n+1))` -/
def P11916222601939543349.Spec : Prop :=
  ∀ n, P11916222601939543349.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P4631201056855484600

`and(A037561(n+1), A037646(n+1))`
-/

namespace A037513.P4631201056855484600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037561 (n + 1)) (A037646 (n + 1))

end

end A037513.P4631201056855484600

namespace A037513

/-- `and(A037561(n+1), A037646(n+1))` -/
def P4631201056855484600.Spec : Prop :=
  ∀ n, P4631201056855484600.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P16276174909472755784

`and(A037618(n+1), A037639(n+1))`
-/

namespace A037513.P16276174909472755784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037618 (n + 1)) (A037639 (n + 1))

end

end A037513.P16276174909472755784

namespace A037513

/-- `and(A037618(n+1), A037639(n+1))` -/
def P16276174909472755784.Spec : Prop :=
  ∀ n, P16276174909472755784.a n = A037513 (n + 1)

end A037513

/-! ## A037513.P461352826535535870

`and(A037618(n+1), A037646(n+1))`
-/

namespace A037513.P461352826535535870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037618 (n + 1)) (A037646 (n + 1))

end

end A037513.P461352826535535870

namespace A037513

/-- `and(A037618(n+1), A037646(n+1))` -/
def P461352826535535870.Spec : Prop :=
  ∀ n, P461352826535535870.a n = A037513 (n + 1)

end A037513

/-!
# A037514: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

The programs for A037514, the canonical program `A037514.P4385062019052334206` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037514 has offset 1).

The definition of A037514 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037514.anchor (n : ℕ) (hn : 1 ≤ n) : A037514 n = ((Nat.ofDigits 5 ((List.range n).reverse.map fun i => [2, 0, 1].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037514`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037514.P14881136551086436994

`ogf((2+x^2)/(1-5x-x^3+5x^4))`
-/

namespace A037514.P14881136551086436994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 1] [1, -5, 0, -1, 5] n

end

end A037514.P14881136551086436994

namespace A037514

/-- `ogf((2+x^2)/(1-5x-x^3+5x^4))` -/
def P14881136551086436994.Spec : Prop :=
  ∀ n, P14881136551086436994.a n = A037514 (n + 1)

end A037514

/-! ## A037514.P4385062019052334206

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=2, a(1)=10, a(2)=51, a(3)=257`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037514

/-- `5*a(n-1)+a(n-3)-5*a(n-4)` -/
def P4385062019052334206.Spec : Prop :=
  ∀ n, P4385062019052334206.a n = A037514 (n + 1)

theorem P4385062019052334206.correct : P4385062019052334206.Spec := by
  intro n
  simp only [A037514, Nat.add_sub_cancel]

end A037514

/-! ## A037514.P8876180707954412416

`floor(51*5^(n+1)/124)`
-/

namespace A037514.P8876180707954412416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(51 * 5 ^ (n + 1) : ℚ) / 124⌋

end

end A037514.P8876180707954412416

namespace A037514

/-- `floor(51*5^(n+1)/124)` -/
def P8876180707954412416.Spec : Prop :=
  ∀ n, P8876180707954412416.a n = A037514 (n + 1)

end A037514

/-! ## A037514.P7176467089472170217

`(n-1)%3+5*a(n-1)` with `a(0)=2`
-/

namespace A037514.P7176467089472170217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n : ℤ) - 1) 3 + 5 * a (n - 1)

end

end A037514.P7176467089472170217

namespace A037514

/-- `(n-1)%3+5*a(n-1)` -/
def P7176467089472170217.Spec : Prop :=
  ∀ n, P7176467089472170217.a n = A037514 (n + 1)

end A037514

/-! ## A037514.P3440128408997951572

`5*a(n-1)-(1-n)%3` with `a(0)=2`
-/

namespace A037514.P3440128408997951572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 3

end

end A037514.P3440128408997951572

namespace A037514

/-- `5*a(n-1)-(1-n)%3` -/
def P3440128408997951572.Spec : Prop :=
  ∀ n, P3440128408997951572.a n = A037514 (n + 1)

end A037514

/-! ## A037514.P5733662197497627830

`A033141(n+1)+A033123(n+1)`
-/

namespace A037514.P5733662197497627830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033141 (n + 1) + A033123 (n + 1)

end

end A037514.P5733662197497627830

namespace A037514

/-- `A033141(n+1)+A033123(n+1)` -/
def P5733662197497627830.Spec : Prop :=
  ∀ n, P5733662197497627830.a n = A037514 (n + 1)

end A037514

/-! ## A037514.P6563707469006834549

`2*A037554(n+1)-A037562(n+1)`
-/

namespace A037514.P6563707469006834549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037554 (n + 1) - A037562 (n + 1)

end

end A037514.P6563707469006834549

namespace A037514

/-- `2*A037554(n+1)-A037562(n+1)` -/
def P6563707469006834549.Spec : Prop :=
  ∀ n, P6563707469006834549.a n = A037514 (n + 1)

end A037514

/-! ## A037514.P12784330140961855488

`A037530(n+1)+A037554(n+1)-A037546(n+1)`
-/

namespace A037514.P12784330140961855488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037530 (n + 1) + (A037554 (n + 1) - A037546 (n + 1))

end

end A037514.P12784330140961855488

namespace A037514

/-- `A037530(n+1)+A037554(n+1)-A037546(n+1)` -/
def P12784330140961855488.Spec : Prop :=
  ∀ n, P12784330140961855488.a n = A037514 (n + 1)

end A037514

/-!
# A037515: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

The programs for A037515, the canonical program `A037515.P17659995479595815797` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037515 has offset 1).

The definition of A037515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037515.P17659995479595815797

`ogf((2+x^2)/(1-6x-x^3+6x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037515

/-- `ogf((2+x^2)/(1-6x-x^3+6x^4))` -/
def P17659995479595815797.Spec : Prop :=
  ∀ n, P17659995479595815797.a n = A037515 (n + 1)

theorem P17659995479595815797.correct : P17659995479595815797.Spec := by
  intro n
  simp only [A037515, Nat.add_sub_cancel]

end A037515

/-! ## A037515.P1919842026399017719

`(n-1)%3+6*a(n-1)` with `a(0)=2`
-/

namespace A037515.P1919842026399017719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n : ℤ) - 1) 3 + 6 * a (n - 1)

end

end A037515.P1919842026399017719

namespace A037515

/-- `(n-1)%3+6*a(n-1)` -/
def P1919842026399017719.Spec : Prop :=
  ∀ n, P1919842026399017719.a n = A037515 (n + 1)

end A037515

/-! ## A037515.P8195967826587387865

`6*a(n-1)-(1-n)%3` with `a(0)=2`
-/

namespace A037515.P8195967826587387865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  6 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 3

end

end A037515.P8195967826587387865

namespace A037515

/-- `6*a(n-1)-(1-n)%3` -/
def P8195967826587387865.Spec : Prop :=
  ∀ n, P8195967826587387865.a n = A037515 (n + 1)

end A037515

/-! ## A037515.P8106350115529843188

`A033142(n+1)+A033124(n+1)`
-/

namespace A037515.P8106350115529843188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033142 (n + 1) + A033124 (n + 1)

end

end A037515.P8106350115529843188

namespace A037515

/-- `A033142(n+1)+A033124(n+1)` -/
def P8106350115529843188.Spec : Prop :=
  ∀ n, P8106350115529843188.a n = A037515 (n + 1)

end A037515

/-! ## A037515.P16339114539073101185

`A033142(n+1)+A037620(n+1)-A037499(n+1)`
-/

namespace A037515.P16339114539073101185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033142 (n + 1) + (A037620 (n + 1) - A037499 (n + 1))

end

end A037515.P16339114539073101185

namespace A037515

/-- `A033142(n+1)+A037620(n+1)-A037499(n+1)` -/
def P16339114539073101185.Spec : Prop :=
  ∀ n, P16339114539073101185.a n = A037515 (n + 1)

end A037515

/-! ## A037515.P2804851340649127398

`A037523(n+1)+A037531(n+1)-A037539(n+1)`
-/

namespace A037515.P2804851340649127398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) + (A037531 (n + 1) - A037539 (n + 1))

end

end A037515.P2804851340649127398

namespace A037515

/-- `A037523(n+1)+A037531(n+1)-A037539(n+1)` -/
def P2804851340649127398.Spec : Prop :=
  ∀ n, P2804851340649127398.a n = A037515 (n + 1)

end A037515

/-! ## A037515.P167425621594575253

`A037655(n+1)-A033124(n+1)`
-/

namespace A037515.P167425621594575253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037655 (n + 1) - A033124 (n + 1)

end

end A037515.P167425621594575253

namespace A037515

/-- `A037655(n+1)-A033124(n+1)` -/
def P167425621594575253.Spec : Prop :=
  ∀ n, P167425621594575253.a n = A037515 (n + 1)

end A037515

/-! ## A037515.P18140662414986503155

`(A037655(n+1)+A033142(n+1))/2`
-/

namespace A037515.P18140662414986503155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037655 (n + 1) + A033142 (n + 1) : ℚ) / 2

end

end A037515.P18140662414986503155

namespace A037515

/-- `(A037655(n+1)+A033142(n+1))/2` -/
def P18140662414986503155.Spec : Prop :=
  ∀ n, P18140662414986503155.a n = (A037515 (n + 1) : ℚ)

end A037515

/-!
# A037516: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

The programs for A037516, the canonical program `A037516.P9546762431615081225` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037516 has offset 1).

The definition of A037516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037516.P9546762431615081225

`ogf((2+x^2)/(1-7x-x^3+7x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037516

/-- `ogf((2+x^2)/(1-7x-x^3+7x^4))` -/
def P9546762431615081225.Spec : Prop :=
  ∀ n, P9546762431615081225.a n = A037516 (n + 1)

theorem P9546762431615081225.correct : P9546762431615081225.Spec := by
  intro n
  simp only [A037516, Nat.add_sub_cancel]

end A037516

/-! ## A037516.P16034280603477341540

`(n-1)%3+7*a(n-1)` with `a(0)=2`
-/

namespace A037516.P16034280603477341540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n : ℤ) - 1) 3 + 7 * a (n - 1)

end

end A037516.P16034280603477341540

namespace A037516

/-- `(n-1)%3+7*a(n-1)` -/
def P16034280603477341540.Spec : Prop :=
  ∀ n, P16034280603477341540.a n = A037516 (n + 1)

end A037516

/-! ## A037516.P4537899849496992920

`8*a(n-1)-(1-n)%3-a(n-1)` with `a(0)=2`
-/

namespace A037516.P4537899849496992920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 3 - a (n - 1)

end

end A037516.P4537899849496992920

namespace A037516

/-- `8*a(n-1)-(1-n)%3-a(n-1)` -/
def P4537899849496992920.Spec : Prop :=
  ∀ n, P4537899849496992920.a n = A037516 (n + 1)

end A037516

/-! ## A037516.P4045123817736445851

`A033143(n+1)+A033125(n+1)`
-/

namespace A037516.P4045123817736445851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033143 (n + 1) + A033125 (n + 1)

end

end A037516.P4045123817736445851

namespace A037516

/-- `A033143(n+1)+A033125(n+1)` -/
def P4045123817736445851.Spec : Prop :=
  ∀ n, P4045123817736445851.a n = A037516 (n + 1)

end A037516

/-! ## A037516.P13973298991754091747

`A037656(n+1)-A033125(n+1)`
-/

namespace A037516.P13973298991754091747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037656 (n + 1) - A033125 (n + 1)

end

end A037516.P13973298991754091747

namespace A037516

/-- `A037656(n+1)-A033125(n+1)` -/
def P13973298991754091747.Spec : Prop :=
  ∀ n, P13973298991754091747.a n = A037516 (n + 1)

end A037516

/-! ## A037516.P96589954670686786

`A037649(n+1)-A033143(n+1)`
-/

namespace A037516.P96589954670686786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037649 (n + 1) - A033143 (n + 1)

end

end A037516.P96589954670686786

namespace A037516

/-- `A037649(n+1)-A033143(n+1)` -/
def P96589954670686786.Spec : Prop :=
  ∀ n, P96589954670686786.a n = A037516 (n + 1)

end A037516

/-! ## A037516.P17420661955345456219

`A120741(n+1)-A037614(n+1)`
-/

namespace A037516.P17420661955345456219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037614 (n + 1)

end

end A037516.P17420661955345456219

namespace A037516

/-- `A120741(n+1)-A037614(n+1)` -/
def P17420661955345456219.Spec : Prop :=
  ∀ n, P17420661955345456219.a n = A037516 (n + 1)

end A037516

/-! ## A037516.P13547676834455814188

`2*A037556(n+1)-A037564(n+1)`
-/

namespace A037516.P13547676834455814188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037556 (n + 1) - A037564 (n + 1)

end

end A037516.P13547676834455814188

namespace A037516

/-- `2*A037556(n+1)-A037564(n+1)` -/
def P13547676834455814188.Spec : Prop :=
  ∀ n, P13547676834455814188.a n = A037516 (n + 1)

end A037516

/-! ## A037516.P6993980891843164286

`4*A033125(n+1)-A037621(n+1)`
-/

namespace A037516.P6993980891843164286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033125 (n + 1) - A037621 (n + 1)

end

end A037516.P6993980891843164286

namespace A037516

/-- `4*A033125(n+1)-A037621(n+1)` -/
def P6993980891843164286.Spec : Prop :=
  ∀ n, P6993980891843164286.a n = A037516 (n + 1)

end A037516

/-! ## A037516.P10920637258309776215

`A037600(n+1)+A037621(n+1)-A037614(n+1)`
-/

namespace A037516.P10920637258309776215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037600 (n + 1) + (A037621 (n + 1) - A037614 (n + 1))

end

end A037516.P10920637258309776215

namespace A037516

/-- `A037600(n+1)+A037621(n+1)-A037614(n+1)` -/
def P10920637258309776215.Spec : Prop :=
  ∀ n, P10920637258309776215.a n = A037516 (n + 1)

end A037516

/-!
# A037517: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

The programs for A037517, the canonical program `A037517.P403753793911581111` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037517 has offset 1).

The definition of A037517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037517.P4476520377999536884

`ogf((2+x^2)/(1-8x-x^3+8x^4))`
-/

namespace A037517.P4476520377999536884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 1] [1, -8, 0, -1, 8] n

end

end A037517.P4476520377999536884

namespace A037517

/-- `ogf((2+x^2)/(1-8x-x^3+8x^4))` -/
def P4476520377999536884.Spec : Prop :=
  ∀ n, P4476520377999536884.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P403753793911581111

`floor(129*8^(n+1)/511)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037517

/-- `floor(129*8^(n+1)/511)` -/
def P403753793911581111.Spec : Prop :=
  ∀ n, P403753793911581111.a n = A037517 (n + 1)

theorem P403753793911581111.correct : P403753793911581111.Spec := by
  intro n
  simp only [A037517, Nat.add_sub_cancel]

end A037517

/-! ## A037517.P3021790649591847637

`(n-1)%3+8*a(n-1)` with `a(0)=2`
-/

namespace A037517.P3021790649591847637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n : ℤ) - 1) 3 + 8 * a (n - 1)

end

end A037517.P3021790649591847637

namespace A037517

/-- `(n-1)%3+8*a(n-1)` -/
def P3021790649591847637.Spec : Prop :=
  ∀ n, P3021790649591847637.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P17359434802593598149

`8*a(n-1)-(1-n)%3` with `a(0)=2`
-/

namespace A037517.P17359434802593598149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 3

end

end A037517.P17359434802593598149

namespace A037517

/-- `8*a(n-1)-(1-n)%3` -/
def P17359434802593598149.Spec : Prop :=
  ∀ n, P17359434802593598149.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P11886067728070930818

`A010872(n+2)+4*2*a(n-1)` with `a(0)=2`
-/

namespace A037517.P11886067728070930818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010872 (n + 2) + 4 * (2 * a (n - 1))

end

end A037517.P11886067728070930818

namespace A037517

/-- `A010872(n+2)+4*2*a(n-1)` -/
def P11886067728070930818.Spec : Prop :=
  ∀ n, P11886067728070930818.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P6875390372208190112

`xor(∑[A001018(n)], A037664(n+1))`
-/

namespace A037517.P6875390372208190112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037664 (n + 1))

end

end A037517.P6875390372208190112

namespace A037517

/-- `xor(∑[A001018(n)], A037664(n+1))` -/
def P6875390372208190112.Spec : Prop :=
  ∀ n, P6875390372208190112.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P10275905139277004346

`A033144(n+1)+A033126(n+1)`
-/

namespace A037517.P10275905139277004346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033144 (n + 1) + A033126 (n + 1)

end

end A037517.P10275905139277004346

namespace A037517

/-- `A033144(n+1)+A033126(n+1)` -/
def P10275905139277004346.Spec : Prop :=
  ∀ n, P10275905139277004346.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P6792228104546275325

`and(A037622(n+1), A037643(n+1))`
-/

namespace A037517.P6792228104546275325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037622 (n + 1)) (A037643 (n + 1))

end

end A037517.P6792228104546275325

namespace A037517

/-- `and(A037622(n+1), A037643(n+1))` -/
def P6792228104546275325.Spec : Prop :=
  ∀ n, P6792228104546275325.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P8009497993211408257

`and(A037622(n+1), A037650(n+1))`
-/

namespace A037517.P8009497993211408257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037622 (n + 1)) (A037650 (n + 1))

end

end A037517.P8009497993211408257

namespace A037517

/-- `and(A037622(n+1), A037650(n+1))` -/
def P8009497993211408257.Spec : Prop :=
  ∀ n, P8009497993211408257.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P9669558204197698828

`and(A037636(n+1), A037650(n+1))`
-/

namespace A037517.P9669558204197698828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037636 (n + 1)) (A037650 (n + 1))

end

end A037517.P9669558204197698828

namespace A037517

/-- `and(A037636(n+1), A037650(n+1))` -/
def P9669558204197698828.Spec : Prop :=
  ∀ n, P9669558204197698828.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P18377598286577275459

`and(A037643(n+1), A037650(n+1))`
-/

namespace A037517.P18377598286577275459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037643 (n + 1)) (A037650 (n + 1))

end

end A037517.P18377598286577275459

namespace A037517

/-- `and(A037643(n+1), A037650(n+1))` -/
def P18377598286577275459.Spec : Prop :=
  ∀ n, P18377598286577275459.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P6647548868210526537

`2*A037557(n+1)-A037565(n+1)`
-/

namespace A037517.P6647548868210526537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037557 (n + 1) - A037565 (n + 1)

end

end A037517.P6647548868210526537

namespace A037517

/-- `2*A037557(n+1)-A037565(n+1)` -/
def P6647548868210526537.Spec : Prop :=
  ∀ n, P6647548868210526537.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P3431040909313811914

`A033135(n+1)+A037573(n+1)-A037541(n+1)`
-/

namespace A037517.P3431040909313811914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033135 (n + 1) + (A037573 (n + 1) - A037541 (n + 1))

end

end A037517.P3431040909313811914

namespace A037517

/-- `A033135(n+1)+A037573(n+1)-A037541(n+1)` -/
def P3431040909313811914.Spec : Prop :=
  ∀ n, P3431040909313811914.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P1349355717219081074

`A037525(n+1)+A037533(n+1)-A037541(n+1)`
-/

namespace A037517.P1349355717219081074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) + (A037533 (n + 1) - A037541 (n + 1))

end

end A037517.P1349355717219081074

namespace A037517

/-- `A037525(n+1)+A037533(n+1)-A037541(n+1)` -/
def P1349355717219081074.Spec : Prop :=
  ∀ n, P1349355717219081074.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P5418586596014981711

`and(A037643(n+1)+A037533(n+1), A037643(n+1))`
-/

namespace A037517.P5418586596014981711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037643 (n + 1) + A037533 (n + 1)) (A037643 (n + 1))

end

end A037517.P5418586596014981711

namespace A037517

/-- `and(A037643(n+1)+A037533(n+1), A037643(n+1))` -/
def P5418586596014981711.Spec : Prop :=
  ∀ n, P5418586596014981711.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P17896375377864411551

`and(A037622(n+1)+A037615(n+1), A037622(n+1))`
-/

namespace A037517.P17896375377864411551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037622 (n + 1) + A037615 (n + 1)) (A037622 (n + 1))

end

end A037517.P17896375377864411551

namespace A037517

/-- `and(A037622(n+1)+A037615(n+1), A037622(n+1))` -/
def P17896375377864411551.Spec : Prop :=
  ∀ n, P17896375377864411551.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P1438588000530776197

`A037643(n+1)-and(A037615(n+1), A037643(n+1))`
-/

namespace A037517.P1438588000530776197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 1) - Int.land (A037615 (n + 1)) (A037643 (n + 1))

end

end A037517.P1438588000530776197

namespace A037517

/-- `A037643(n+1)-and(A037615(n+1), A037643(n+1))` -/
def P1438588000530776197.Spec : Prop :=
  ∀ n, P1438588000530776197.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P16322574029750468568

`A037650(n+1)-and(A037601(n+1), A037650(n+1))`
-/

namespace A037517.P16322574029750468568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037650 (n + 1) - Int.land (A037601 (n + 1)) (A037650 (n + 1))

end

end A037517.P16322574029750468568

namespace A037517

/-- `A037650(n+1)-and(A037601(n+1), A037650(n+1))` -/
def P16322574029750468568.Spec : Prop :=
  ∀ n, P16322574029750468568.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P12132570547584383696

`A037650(n+1)-and(A037615(n+1), A037650(n+1))`
-/

namespace A037517.P12132570547584383696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037650 (n + 1) - Int.land (A037615 (n + 1)) (A037650 (n + 1))

end

end A037517.P12132570547584383696

namespace A037517

/-- `A037650(n+1)-and(A037615(n+1), A037650(n+1))` -/
def P12132570547584383696.Spec : Prop :=
  ∀ n, P12132570547584383696.a n = A037517 (n + 1)

end A037517

/-! ## A037517.P15821345316064858526

`xor(A033126(n+1), A037622(n+1))-A033126(n+1)`
-/

namespace A037517.P15821345316064858526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033126 (n + 1)) (A037622 (n + 1)) - A033126 (n + 1)

end

end A037517.P15821345316064858526

namespace A037517

/-- `xor(A033126(n+1), A037622(n+1))-A033126(n+1)` -/
def P15821345316064858526.Spec : Prop :=
  ∀ n, P15821345316064858526.a n = A037517 (n + 1)

end A037517

/-!
# A037518: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

The programs for A037518, the canonical program `A037518.P1629910200150735418` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037518 has offset 1).

The definition of A037518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037518.P1629910200150735418

`ogf((2+x^2)/(1-9x-x^3+9x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037518

/-- `ogf((2+x^2)/(1-9x-x^3+9x^4))` -/
def P1629910200150735418.Spec : Prop :=
  ∀ n, P1629910200150735418.a n = A037518 (n + 1)

theorem P1629910200150735418.correct : P1629910200150735418.Spec := by
  intro n
  simp only [A037518, Nat.add_sub_cancel]

end A037518

/-! ## A037518.P965897409930183489

`3*3*a(n-1)-(1-n)%3` with `a(0)=2`
-/

namespace A037518.P965897409930183489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * (3 * a (n - 1)) - Int.tmod (1 - (n : ℤ)) 3

end

end A037518.P965897409930183489

namespace A037518

/-- `3*3*a(n-1)-(1-n)%3` -/
def P965897409930183489.Spec : Prop :=
  ∀ n, P965897409930183489.a n = A037518 (n + 1)

end A037518

/-! ## A037518.P4390288488718293706

`A033145(n+1)+A033127(n+1)`
-/

namespace A037518.P4390288488718293706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033145 (n + 1) + A033127 (n + 1)

end

end A037518.P4390288488718293706

namespace A037518

/-- `A033145(n+1)+A033127(n+1)` -/
def P4390288488718293706.Spec : Prop :=
  ∀ n, P4390288488718293706.a n = A037518 (n + 1)

end A037518

/-! ## A037518.P6944341525019780263

`A037658(n+1)-A033127(n+1)`
-/

namespace A037518.P6944341525019780263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037658 (n + 1) - A033127 (n + 1)

end

end A037518.P6944341525019780263

namespace A037518

/-- `A037658(n+1)-A033127(n+1)` -/
def P6944341525019780263.Spec : Prop :=
  ∀ n, P6944341525019780263.a n = A037518 (n + 1)

end A037518

/-! ## A037518.P5403148673485966800

`A037651(n+1)-A033145(n+1)`
-/

namespace A037518.P5403148673485966800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037651 (n + 1) - A033145 (n + 1)

end

end A037518.P5403148673485966800

namespace A037518

/-- `A037651(n+1)-A033145(n+1)` -/
def P5403148673485966800.Spec : Prop :=
  ∀ n, P5403148673485966800.a n = A037518 (n + 1)

end A037518

/-! ## A037518.P5807041188950892582

`(A037658(n+1)+A033145(n+1))/2`
-/

namespace A037518.P5807041188950892582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037658 (n + 1) + A033145 (n + 1) : ℚ) / 2

end

end A037518.P5807041188950892582

namespace A037518

/-- `(A037658(n+1)+A033145(n+1))/2` -/
def P5807041188950892582.Spec : Prop :=
  ∀ n, P5807041188950892582.a n = (A037518 (n + 1) : ℚ)

end A037518

/-! ## A037518.P8698635238959037777

`A033145(n+1)+A037558(n+1)-A033136(n+1)`
-/

namespace A037518.P8698635238959037777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033145 (n + 1) + (A037558 (n + 1) - A033136 (n + 1))

end

end A037518.P8698635238959037777

namespace A037518

/-- `A033145(n+1)+A037558(n+1)-A033136(n+1)` -/
def P8698635238959037777.Spec : Prop :=
  ∀ n, P8698635238959037777.a n = A037518 (n + 1)

end A037518

/-! ## A037518.P7995901191795727208

`A033127(n+1)+A037566(n+1)-A037542(n+1)`
-/

namespace A037518.P7995901191795727208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033127 (n + 1) + (A037566 (n + 1) - A037542 (n + 1))

end

end A037518.P7995901191795727208

namespace A037518

/-- `A033127(n+1)+A037566(n+1)-A037542(n+1)` -/
def P7995901191795727208.Spec : Prop :=
  ∀ n, P7995901191795727208.a n = A037518 (n + 1)

end A037518

/-! ## A037518.P17168202818187810846

`A037526(n+1)+A037534(n+1)-A037542(n+1)`
-/

namespace A037518.P17168202818187810846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037526 (n + 1) + (A037534 (n + 1) - A037542 (n + 1))

end

end A037518.P17168202818187810846

namespace A037518

/-- `A037526(n+1)+A037534(n+1)-A037542(n+1)` -/
def P17168202818187810846.Spec : Prop :=
  ∀ n, P17168202818187810846.a n = A037518 (n + 1)

end A037518

/-!
# A037519: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,0,1.

The programs for A037519, the canonical program `A037519.P469851157370828970` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037519 has offset 1).

The definition of A037519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037519.P469851157370828970

`floor(67/333*10^(n+1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037519

/-- `floor(67/333*10^(n+1))` -/
def P469851157370828970.Spec : Prop :=
  ∀ n, P469851157370828970.a n = A037519 (n + 1)

theorem P469851157370828970.correct : P469851157370828970.Spec := by
  intro n
  simp only [A037519, Nat.add_sub_cancel]

end A037519

/-! ## A037519.P8296748731786501971

`ogf((2+x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037519.P8296748731786501971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 1] [1, -10, 0, -1, 10] n

end

end A037519.P8296748731786501971

namespace A037519

/-- `ogf((2+x^2)/(1-10x-x^3+10x^4))` -/
def P8296748731786501971.Spec : Prop :=
  ∀ n, P8296748731786501971.a n = A037519 (n + 1)

end A037519

/-! ## A037519.P9130373181957181545

`10*a(n-1)+(n-1)%3` with `a(0)=2`
-/

namespace A037519.P9130373181957181545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + Int.tmod ((n : ℤ) - 1) 3

end

end A037519.P9130373181957181545

namespace A037519

/-- `10*a(n-1)+(n-1)%3` -/
def P9130373181957181545.Spec : Prop :=
  ∀ n, P9130373181957181545.a n = A037519 (n + 1)

end A037519

/-! ## A037519.P9649999135506521403

`A010872(n+2)+10*a(n-1)` with `a(0)=2`
-/

namespace A037519.P9649999135506521403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010872 (n + 2) + 10 * a (n - 1)

end

end A037519.P9649999135506521403

namespace A037519

/-- `A010872(n+2)+10*a(n-1)` -/
def P9649999135506521403.Spec : Prop :=
  ∀ n, P9649999135506521403.a n = A037519 (n + 1)

end A037519

/-! ## A037519.P3781106095841664167

`A049347(n)+xor(1, 10*a(n-1))` with `a(0)=2`
-/

namespace A037519.P3781106095841664167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A049347 n + Int.xor 1 (10 * a (n - 1))

end

end A037519.P3781106095841664167

namespace A037519

/-- `A049347(n)+xor(1, 10*a(n-1))` -/
def P3781106095841664167.Spec : Prop :=
  ∀ n, P3781106095841664167.a n = A037519 (n + 1)

end A037519

/-! ## A037519.P6182605774961952574

`10*a(n-1)+1-A057078(n+2)` with `a(0)=2`
-/

namespace A037519.P6182605774961952574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + 1 - A057078 (n + 2)

end

end A037519.P6182605774961952574

namespace A037519

/-- `10*a(n-1)+1-A057078(n+2)` -/
def P6182605774961952574.Spec : Prop :=
  ∀ n, P6182605774961952574.a n = A037519 (n + 1)

end A037519

/-!
# A037520: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

The programs for A037520, the canonical program `A037520.P1716933322891217982` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037520 has offset 1).

The definition of A037520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037520.P1716933322891217982

`ogf((2+x)/(1-3x-x^3+3x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037520

/-- `ogf((2+x)/(1-3x-x^3+3x^4))` -/
def P1716933322891217982.Spec : Prop :=
  ∀ n, P1716933322891217982.a n = A037520 (n + 1)

theorem P1716933322891217982.correct : P1716933322891217982.Spec := by
  intro n
  simp only [A037520, Nat.add_sub_cancel]

end A037520

/-! ## A037520.P11955340793447897582

`3*a(n-1)+2-n%3` with `a(0)=2`
-/

namespace A037520.P11955340793447897582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) + (2 - ((n % 3 : ℕ) : ℤ))

end

end A037520.P11955340793447897582

namespace A037520

/-- `3*a(n-1)+2-n%3` -/
def P11955340793447897582.Spec : Prop :=
  ∀ n, P11955340793447897582.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P11790872025371591463

`3*a(n-1)-(1-2*n)%3` with `a(0)=2`
-/

namespace A037520.P11790872025371591463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) - Int.tmod (1 - (2 * n : ℤ)) 3

end

end A037520.P11790872025371591463

namespace A037520

/-- `3*a(n-1)-(1-2*n)%3` -/
def P11790872025371591463.Spec : Prop :=
  ∀ n, P11790872025371591463.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P5503965989288282440

`a(n-1)+a(n-1)+a(n-1)+(a(n-1)-1)%3` with `a(0)=2`
-/

namespace A037520.P5503965989288282440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + Int.tmod (a (n - 1) - 1) 3))

end

end A037520.P5503965989288282440

namespace A037520

/-- `a(n-1)+a(n-1)+a(n-1)+(a(n-1)-1)%3` -/
def P5503965989288282440.Spec : Prop :=
  ∀ n, P5503965989288282440.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P17985319302266083816

`a(n-1)-((1-a(n-1))%3-a(n-1)-a(n-1))` with `a(0)=2`
-/

namespace A037520.P17985319302266083816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (Int.tmod (1 - a (n - 1)) 3 - a (n - 1) - a (n - 1))

end

end A037520.P17985319302266083816

namespace A037520

/-- `a(n-1)-((1-a(n-1))%3-a(n-1)-a(n-1))` -/
def P17985319302266083816.Spec : Prop :=
  ∀ n, P17985319302266083816.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P6867955371622182198

`A037078(2*(n+1))`
-/

namespace A037520.P6867955371622182198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037078 (2 * (n + 1))

end

end A037520.P6867955371622182198

namespace A037520

/-- `A037078(2*(n+1))` -/
def P6867955371622182198.Spec : Prop :=
  ∀ n, P6867955371622182198.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P11611972620703738388

`floor(A037528(n+2)/2)`
-/

namespace A037520.P11611972620703738388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037528 (n + 2) : ℚ) / 2⌋

end

end A037520.P11611972620703738388

namespace A037520

/-- `floor(A037528(n+2)/2)` -/
def P11611972620703738388.Spec : Prop :=
  ∀ n, P11611972620703738388.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P4475758464586245924

`A077834(n)+A037504(n+1)`
-/

namespace A037520.P4475758464586245924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077834 n + A037504 (n + 1)

end

end A037520.P4475758464586245924

namespace A037520

/-- `A077834(n)+A037504(n+1)` -/
def P4475758464586245924.Spec : Prop :=
  ∀ n, P4475758464586245924.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P2612953679439080932

`A033139(n+1)+A033130(n+1)`
-/

namespace A037520.P2612953679439080932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (n + 1) + A033130 (n + 1)

end

end A037520.P2612953679439080932

namespace A037520

/-- `A033139(n+1)+A033130(n+1)` -/
def P2612953679439080932.Spec : Prop :=
  ∀ n, P2612953679439080932.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P13638669569601237511

`A037536(n+2)-A033139(n+2)`
-/

namespace A037520.P13638669569601237511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037536 (n + 2) - A033139 (n + 2)

end

end A037520.P13638669569601237511

namespace A037520

/-- `A037536(n+2)-A033139(n+2)` -/
def P13638669569601237511.Spec : Prop :=
  ∀ n, P13638669569601237511.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P9202889655839188460

`A037504(n+1)+∑[A037512(n+1)-A037504(n+1)]`
-/

namespace A037520.P9202889655839188460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037512 (n + 1) - A037504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037504 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037520.P9202889655839188460

namespace A037520

/-- `A037504(n+1)+∑[A037512(n+1)-A037504(n+1)]` -/
def P9202889655839188460.Spec : Prop :=
  ∀ n, P9202889655839188460.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P11391816732021113125

`A037496(n+3)-3^(n+2)`
-/

namespace A037520.P11391816732021113125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037496 (n + 3) - (3 ^ (n + 2) : ℤ)

end

end A037520.P11391816732021113125

namespace A037520

/-- `A037496(n+3)-3^(n+2)` -/
def P11391816732021113125.Spec : Prop :=
  ∀ n, P11391816732021113125.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P6809636571946743630

`A037560(n+2)-2*A033139(n+2)`
-/

namespace A037520.P6809636571946743630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037560 (n + 2) - 2 * A033139 (n + 2)

end

end A037520.P6809636571946743630

namespace A037520

/-- `A037560(n+2)-2*A033139(n+2)` -/
def P6809636571946743630.Spec : Prop :=
  ∀ n, P6809636571946743630.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P5543646924096588029

`2*A037536(n+2)-A037560(n+2)`
-/

namespace A037520.P5543646924096588029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037536 (n + 2) - A037560 (n + 2)

end

end A037520.P5543646924096588029

namespace A037520

/-- `2*A037536(n+2)-A037560(n+2)` -/
def P5543646924096588029.Spec : Prop :=
  ∀ n, P5543646924096588029.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P6990059994112770320

`A037504(n+2)+A037496(n+2)-A037512(n+2)`
-/

namespace A037520.P6990059994112770320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037504 (n + 2) + A037496 (n + 2) - A037512 (n + 2)

end

end A037520.P6990059994112770320

namespace A037520

/-- `A037504(n+2)+A037496(n+2)-A037512(n+2)` -/
def P6990059994112770320.Spec : Prop :=
  ∀ n, P6990059994112770320.a n = A037520 (n + 1)

end A037520

/-! ## A037520.P8088610604331397644

`floor(A005032(n+2)/26)`
-/

namespace A037520.P8088610604331397644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005032 (n + 2) : ℚ) / 26⌋

end

end A037520.P8088610604331397644

namespace A037520

/-- `floor(A005032(n+2)/26)` -/
def P8088610604331397644.Spec : Prop :=
  ∀ n, P8088610604331397644.a n = A037520 (n + 1)

end A037520

/-!
# A037521: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 2, 1, 0.

The programs for A037521, the canonical program `A037521.P13191905454161917104` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037521 has offset 1).

The definition of A037521 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037521.anchor (n : ℕ) (hn : 1 ≤ n) : A037521 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [2, 1, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037521`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037521.P16157186549776061472

`ogf((2+x)/(1-4x-x^3+4x^4))`
-/

namespace A037521.P16157186549776061472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -4, 0, -1, 4] n

end

end A037521.P16157186549776061472

namespace A037521

/-- `ogf((2+x)/(1-4x-x^3+4x^4))` -/
def P16157186549776061472.Spec : Prop :=
  ∀ n, P16157186549776061472.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P13191905454161917104

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=9, a(2)=36, a(3)=146`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037521

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P13191905454161917104.Spec : Prop :=
  ∀ n, P13191905454161917104.a n = A037521 (n + 1)

theorem P13191905454161917104.correct : P13191905454161917104.Spec := by
  intro n
  simp only [A037521, Nat.add_sub_cancel]

end A037521

/-! ## A037521.P15387317846939418252

`floor(4^(n+2)/7)`
-/

namespace A037521.P15387317846939418252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ (n + 2) : ℚ) / 7⌋

end

end A037521.P15387317846939418252

namespace A037521

/-- `floor(4^(n+2)/7)` -/
def P15387317846939418252.Spec : Prop :=
  ∀ n, P15387317846939418252.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P10606651492971160614

`4*a(n-1)+2-n%3` with `a(0)=2`
-/

namespace A037521.P10606651492971160614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) + (2 - ((n % 3 : ℕ) : ℤ))

end

end A037521.P10606651492971160614

namespace A037521

/-- `4*a(n-1)+2-n%3` -/
def P10606651492971160614.Spec : Prop :=
  ∀ n, P10606651492971160614.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P6985403716420656556

`val(a(n-1), 2)+4*a(n-1)` with `a(0)=2`
-/

namespace A037521.P6985403716420656556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.valuation (a (n - 1)) 2 + 4 * a (n - 1)

end

end A037521.P6985403716420656556

namespace A037521

/-- `val(a(n-1), 2)+4*a(n-1)` -/
def P6985403716420656556.Spec : Prop :=
  ∀ n, (P6985403716420656556.a n : ℤ) = A037521 (n + 1)

end A037521

/-! ## A037521.P2147070577369991449

`or(4*a(n-1), val(a(n-1), 2))` with `a(0)=2`
-/

namespace A037521.P2147070577369991449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor (4 * a (n - 1)) (SequenceMachineLib.valuation (a (n - 1)) 2)

end

end A037521.P2147070577369991449

namespace A037521

/-- `or(4*a(n-1), val(a(n-1), 2))` -/
def P2147070577369991449.Spec : Prop :=
  ∀ n, (P2147070577369991449.a n : ℤ) = A037521 (n + 1)

end A037521

/-! ## A037521.P11099255588354650758

`xor(4*a(n-1), val(a(n-1), 2))` with `a(0)=2`
-/

namespace A037521.P11099255588354650758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor (4 * a (n - 1)) (SequenceMachineLib.valuation (a (n - 1)) 2)

end

end A037521.P11099255588354650758

namespace A037521

/-- `xor(4*a(n-1), val(a(n-1), 2))` -/
def P11099255588354650758.Spec : Prop :=
  ∀ n, (P11099255588354650758.a n : ℤ) = A037521 (n + 1)

end A037521

/-! ## A037521.P16918706951249118715

`floor(gcd(4, a(n-1))/2)+4*a(n-1)` with `a(0)=2`
-/

namespace A037521.P16918706951249118715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(Int.gcd 4 (a (n - 1)) : ℚ) / 2⌋ + 4 * a (n - 1)

end

end A037521.P16918706951249118715

namespace A037521

/-- `floor(gcd(4, a(n-1))/2)+4*a(n-1)` -/
def P16918706951249118715.Spec : Prop :=
  ∀ n, P16918706951249118715.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P18100706223587608683

`Δ[A178710(n+1)]`
-/

namespace A037521.P18100706223587608683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037521.P18100706223587608683

namespace A037521

/-- `Δ[A178710(n+1)]` -/
def P18100706223587608683.Spec : Prop :=
  ∀ n, P18100706223587608683.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P15271047289688929406

`A046632(n+1)-1`
-/

namespace A037521.P15271047289688929406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046632 (n + 1) - 1

end

end A037521.P15271047289688929406

namespace A037521

/-- `A046632(n+1)-1` -/
def P15271047289688929406.Spec : Prop :=
  ∀ n, P15271047289688929406.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P5206749821211773616

`A033138(2*(n+1))`
-/

namespace A037521.P5206749821211773616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (2 * (n + 1))

end

end A037521.P5206749821211773616

namespace A037521

/-- `A033138(2*(n+1))` -/
def P5206749821211773616.Spec : Prop :=
  ∀ n, P5206749821211773616.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P1644394303405499891

`A155803(2*(n+2))`
-/

namespace A037521.P1644394303405499891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (2 * (n + 2))

end

end A037521.P1644394303405499891

namespace A037521

/-- `A155803(2*(n+2))` -/
def P1644394303405499891.Spec : Prop :=
  ∀ n, P1644394303405499891.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P17813205260749347904

`∑[A294627(2*(n+1))]`
-/

namespace A037521.P17813205260749347904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037521.P17813205260749347904

namespace A037521

/-- `∑[A294627(2*(n+1))]` -/
def P17813205260749347904.Spec : Prop :=
  ∀ n, P17813205260749347904.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P6889670689165912198

`A046630(2*(n+1))-1`
-/

namespace A037521.P6889670689165912198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (2 * (n + 1)) - 1

end

end A037521.P6889670689165912198

namespace A037521

/-- `A046630(2*(n+1))-1` -/
def P6889670689165912198.Spec : Prop :=
  ∀ n, P6889670689165912198.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P3880412046749017078

`∑[abs(A078043(2*n+1))]`
-/

namespace A037521.P3880412046749017078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078043 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037521.P3880412046749017078

namespace A037521

/-- `∑[abs(A078043(2*n+1))]` -/
def P3880412046749017078.Spec : Prop :=
  ∀ n, P3880412046749017078.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P17576315358420908707

`record[A033138(n%10+n+2)]`
-/

namespace A037521.P17576315358420908707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (n % 10 + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037521.P17576315358420908707

namespace A037521

/-- `record[A033138(n%10+n+2)]` -/
def P17576315358420908707.Spec : Prop :=
  ∀ n, P17576315358420908707.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P4251813314907310537

`A037639(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A037521.P4251813314907310537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037639 (n + 1) - a (n - 1)

end

end A037521.P4251813314907310537

namespace A037521

/-- `A037639(n+1)-a(n-1)` -/
def P4251813314907310537.Spec : Prop :=
  ∀ n, P4251813314907310537.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P16222226330923629615

`A048333(A047350(2*(n+1)))`
-/

namespace A037521.P16222226330923629615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048333 (A047350 (2 * (n + 1))).toNat

end

end A037521.P16222226330923629615

namespace A037521

/-- `A048333(A047350(2*(n+1)))` -/
def P16222226330923629615.Spec : Prop :=
  ∀ n, P16222226330923629615.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P7842395392509941055

`A178872(n)+A037513(n+1)`
-/

namespace A037521.P7842395392509941055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A037513 (n + 1)

end

end A037521.P7842395392509941055

namespace A037521

/-- `A178872(n)+A037513(n+1)` -/
def P7842395392509941055.Spec : Prop :=
  ∀ n, P7842395392509941055.a n = A037521 (n + 1)

end A037521

/-! ## A037521.P10590533693964271245

`A033140(n+1)+A033131(n+1)`
-/

namespace A037521.P10590533693964271245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033140 (n + 1) + A033131 (n + 1)

end

end A037521.P10590533693964271245

namespace A037521

/-- `A033140(n+1)+A033131(n+1)` -/
def P10590533693964271245.Spec : Prop :=
  ∀ n, P10590533693964271245.a n = A037521 (n + 1)

end A037521

/-!
# A037522: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

The programs for A037522, the canonical program `A037522.P18033743411906270205` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037522 has offset 1).

The definition of A037522 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037522.anchor (n : ℕ) (hn : 1 ≤ n) : A037522 n = ((Nat.ofDigits 5 ((List.range n).reverse.map fun i => [2, 1, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037522`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037522.P12292765468279872677

`ogf((2+x)/(1-5x-x^3+5x^4))`
-/

namespace A037522.P12292765468279872677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -5, 0, -1, 5] n

end

end A037522.P12292765468279872677

namespace A037522

/-- `ogf((2+x)/(1-5x-x^3+5x^4))` -/
def P12292765468279872677.Spec : Prop :=
  ∀ n, P12292765468279872677.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P18033743411906270205

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=2, a(1)=11, a(2)=55, a(3)=277`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037522

/-- `5*a(n-1)+a(n-3)-5*a(n-4)` -/
def P18033743411906270205.Spec : Prop :=
  ∀ n, P18033743411906270205.a n = A037522 (n + 1)

theorem P18033743411906270205.correct : P18033743411906270205.Spec := by
  intro n
  simp only [A037522, Nat.add_sub_cancel]

end A037522

/-! ## A037522.P3670666709251565981

`2-n%3+5*a(n-1)` with `a(0)=2`
-/

namespace A037522.P3670666709251565981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n % 3 : ℕ) : ℤ) + 5 * a (n - 1)

end

end A037522.P3670666709251565981

namespace A037522

/-- `2-n%3+5*a(n-1)` -/
def P3670666709251565981.Spec : Prop :=
  ∀ n, P3670666709251565981.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P8191078858320815325

`A037640(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A037522.P8191078858320815325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037640 (n + 1) - a (n - 1)

end

end A037522.P8191078858320815325

namespace A037522

/-- `A037640(n+1)-a(n-1)` -/
def P8191078858320815325.Spec : Prop :=
  ∀ n, P8191078858320815325.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P14923883366547462201

`5*a(n-1)+A010892(2*n)+1` with `a(0)=2`
-/

namespace A037522.P14923883366547462201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) + (A010892 (2 * n) + 1)

end

end A037522.P14923883366547462201

namespace A037522

/-- `5*a(n-1)+A010892(2*n)+1` -/
def P14923883366547462201.Spec : Prop :=
  ∀ n, P14923883366547462201.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P14246361444959982781

`A033141(n+1)+A033132(n+1)`
-/

namespace A037522.P14246361444959982781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033141 (n + 1) + A033132 (n + 1)

end

end A037522.P14246361444959982781

namespace A037522

/-- `A033141(n+1)+A033132(n+1)` -/
def P14246361444959982781.Spec : Prop :=
  ∀ n, P14246361444959982781.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P8628863092361147937

`A037668(n+1)-A033132(n+1)`
-/

namespace A037522.P8628863092361147937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037668 (n + 1) - A033132 (n + 1)

end

end A037522.P8628863092361147937

namespace A037522

/-- `A037668(n+1)-A033132(n+1)` -/
def P8628863092361147937.Spec : Prop :=
  ∀ n, P8628863092361147937.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P7962157875533326550

`A037661(n+1)-A033141(n+1)`
-/

namespace A037522.P7962157875533326550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037661 (n + 1) - A033141 (n + 1)

end

end A037522.P7962157875533326550

namespace A037522

/-- `A037661(n+1)-A033141(n+1)` -/
def P7962157875533326550.Spec : Prop :=
  ∀ n, P7962157875533326550.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P6633636963904716821

`2*A037554(n+1)-A037570(n+1)`
-/

namespace A037522.P6633636963904716821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037554 (n + 1) - A037570 (n + 1)

end

end A037522.P6633636963904716821

namespace A037522

/-- `2*A037554(n+1)-A037570(n+1)` -/
def P6633636963904716821.Spec : Prop :=
  ∀ n, P6633636963904716821.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P8117303919738155053

`A037598(n+1)+A037619(n+1)-A037605(n+1)`
-/

namespace A037522.P8117303919738155053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037598 (n + 1) + (A037619 (n + 1) - A037605 (n + 1))

end

end A037522.P8117303919738155053

namespace A037522

/-- `A037598(n+1)+A037619(n+1)-A037605(n+1)` -/
def P8117303919738155053.Spec : Prop :=
  ∀ n, P8117303919738155053.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P5742788137464297933

`A037538(n+2)-A033141(n+2)`
-/

namespace A037522.P5742788137464297933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037538 (n + 2) - A033141 (n + 2)

end

end A037522.P5742788137464297933

namespace A037522

/-- `A037538(n+2)-A033141(n+2)` -/
def P5742788137464297933.Spec : Prop :=
  ∀ n, P5742788137464297933.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P2722488921550195385

`A037562(n+2)-2*A033141(n+2)`
-/

namespace A037522.P2722488921550195385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037562 (n + 2) - 2 * A033141 (n + 2)

end

end A037522.P2722488921550195385

namespace A037522

/-- `A037562(n+2)-2*A033141(n+2)` -/
def P2722488921550195385.Spec : Prop :=
  ∀ n, P2722488921550195385.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P17477656586008748544

`2*A037530(n+2)-A037619(n+2)`
-/

namespace A037522.P17477656586008748544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037530 (n + 2) - A037619 (n + 2)

end

end A037522.P17477656586008748544

namespace A037522

/-- `2*A037530(n+2)-A037619(n+2)` -/
def P17477656586008748544.Spec : Prop :=
  ∀ n, P17477656586008748544.a n = A037522 (n + 1)

end A037522

/-! ## A037522.P4146758811373540741

`A033132(n+2)+A037530(n+2)-A037514(n+2)`
-/

namespace A037522.P4146758811373540741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033132 (n + 2) + (A037530 (n + 2) - A037514 (n + 2))

end

end A037522.P4146758811373540741

namespace A037522

/-- `A033132(n+2)+A037530(n+2)-A037514(n+2)` -/
def P4146758811373540741.Spec : Prop :=
  ∀ n, P4146758811373540741.a n = A037522 (n + 1)

end A037522

/-!
# A037523: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

The programs for A037523, the canonical program `A037523.P8970377303279365799` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037523 has offset 1).

The definition of A037523 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037523.anchor (n : ℕ) (hn : 1 ≤ n) : A037523 n = ((Nat.ofDigits 6 ((List.range n).reverse.map fun i => [2, 1, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037523`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037523.P10513612662677827519

`ogf((2+x)/(1-6x-x^3+6x^4))`
-/

namespace A037523.P10513612662677827519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -6, 0, -1, 6] n

end

end A037523.P10513612662677827519

namespace A037523

/-- `ogf((2+x)/(1-6x-x^3+6x^4))` -/
def P10513612662677827519.Spec : Prop :=
  ∀ n, P10513612662677827519.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P8970377303279365799

`(2*n+5)%3+6*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037523

/-- `(2*n+5)%3+6*a(n-1)` -/
def P8970377303279365799.Spec : Prop :=
  ∀ n, (P8970377303279365799.a n : ℤ) = A037523 (n + 1)

theorem P8970377303279365799.correct : P8970377303279365799.Spec := by
  intro n
  simp only [A037523, Nat.add_sub_cancel]

end A037523

/-! ## A037523.P12556230494331417341

`A033142(n+1)+A033133(n+1)`
-/

namespace A037523.P12556230494331417341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033142 (n + 1) + A033133 (n + 1)

end

end A037523.P12556230494331417341

namespace A037523

/-- `A033142(n+1)+A033133(n+1)` -/
def P12556230494331417341.Spec : Prop :=
  ∀ n, P12556230494331417341.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P3299244526801873622

`A037555(n+1)+A037555(n+1)-A037571(n+1)`
-/

namespace A037523.P3299244526801873622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037555 (n + 1) + (A037555 (n + 1) - A037571 (n + 1))

end

end A037523.P3299244526801873622

namespace A037523

/-- `A037555(n+1)+A037555(n+1)-A037571(n+1)` -/
def P3299244526801873622.Spec : Prop :=
  ∀ n, P3299244526801873622.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P15657477024724072888

`A037641(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A037523.P15657477024724072888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037641 (n + 1) - a (n - 1)

end

end A037523.P15657477024724072888

namespace A037523

/-- `A037641(n+1)-a(n-1)` -/
def P15657477024724072888.Spec : Prop :=
  ∀ n, P15657477024724072888.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P15071877620791029191

`A037539(n+2)-A033142(n+2)`
-/

namespace A037523.P15071877620791029191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 2) - A033142 (n + 2)

end

end A037523.P15071877620791029191

namespace A037523

/-- `A037539(n+2)-A033142(n+2)` -/
def P15071877620791029191.Spec : Prop :=
  ∀ n, P15071877620791029191.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P17253768832945634730

`2*A037555(n+1)-A037571(n+1)`
-/

namespace A037523.P17253768832945634730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037555 (n + 1) - A037571 (n + 1)

end

end A037523.P17253768832945634730

namespace A037523

/-- `2*A037555(n+1)-A037571(n+1)` -/
def P17253768832945634730.Spec : Prop :=
  ∀ n, P17253768832945634730.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P15454379568187842460

`3*A033133(n+1)-A037507(n+1)`
-/

namespace A037523.P15454379568187842460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033133 (n + 1) - A037507 (n + 1)

end

end A037523.P15454379568187842460

namespace A037523

/-- `3*A033133(n+1)-A037507(n+1)` -/
def P15454379568187842460.Spec : Prop :=
  ∀ n, P15454379568187842460.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P14865951384824113453

`A037563(n+2)-2*A033142(n+2)`
-/

namespace A037523.P14865951384824113453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037563 (n + 2) - 2 * A033142 (n + 2)

end

end A037523.P14865951384824113453

namespace A037523

/-- `A037563(n+2)-2*A033142(n+2)` -/
def P14865951384824113453.Spec : Prop :=
  ∀ n, P14865951384824113453.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P1834955371249900121

`A033133(n+2)+A037531(n+2)-A037515(n+2)`
-/

namespace A037523.P1834955371249900121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033133 (n + 2) + (A037531 (n + 2) - A037515 (n + 2))

end

end A037523.P1834955371249900121

namespace A037523

/-- `A033133(n+2)+A037531(n+2)-A037515(n+2)` -/
def P1834955371249900121.Spec : Prop :=
  ∀ n, P1834955371249900121.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P2446231863962932553

`A037539(n+2)+A037539(n+2)-A037563(n+2)`
-/

namespace A037523.P2446231863962932553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 2) + (A037539 (n + 2) - A037563 (n + 2))

end

end A037523.P2446231863962932553

namespace A037523

/-- `A037539(n+2)+A037539(n+2)-A037563(n+2)` -/
def P2446231863962932553.Spec : Prop :=
  ∀ n, P2446231863962932553.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P3417202256048286097

`2*A037539(n+2)-A037563(n+2)`
-/

namespace A037523.P3417202256048286097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037539 (n + 2) - A037563 (n + 2)

end

end A037523.P3417202256048286097

namespace A037523

/-- `2*A037539(n+2)-A037563(n+2)` -/
def P3417202256048286097.Spec : Prop :=
  ∀ n, P3417202256048286097.a n = A037523 (n + 1)

end A037523

/-! ## A037523.P9714383076013622627

`or(6*a(n-1), A239140(n²+n))` with `a(0)=2`
-/

namespace A037523.P9714383076013622627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (6 * a (n - 1)) (A239140 (n ^ 2 + n))

end

end A037523.P9714383076013622627

namespace A037523

/-- `or(6*a(n-1), A239140(n²+n))` -/
def P9714383076013622627.Spec : Prop :=
  ∀ n, P9714383076013622627.a n = A037523 (n + 1)

end A037523

/-!
# A037524: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

The programs for A037524, the canonical program `A037524.P2537587054480615149` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037524 has offset 1).

The definition of A037524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037524.P2537587054480615149

`ogf((2+x)/(1-7x-x^3+7x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037524

/-- `ogf((2+x)/(1-7x-x^3+7x^4))` -/
def P2537587054480615149.Spec : Prop :=
  ∀ n, P2537587054480615149.a n = A037524 (n + 1)

theorem P2537587054480615149.correct : P2537587054480615149.Spec := by
  intro n
  simp only [A037524, Nat.add_sub_cancel]

end A037524

/-! ## A037524.P13456579308859914064

`7*a(n-1)+2-n%3` with `a(0)=2`
-/

namespace A037524.P13456579308859914064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) + (2 - ((n % 3 : ℕ) : ℤ))

end

end A037524.P13456579308859914064

namespace A037524

/-- `7*a(n-1)+2-n%3` -/
def P13456579308859914064.Spec : Prop :=
  ∀ n, P13456579308859914064.a n = A037524 (n + 1)

end A037524

/-! ## A037524.P7199152106951178890

`A037642(1+n)-a(n-1)` with `a(0)=2`
-/

namespace A037524.P7199152106951178890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037642 (1 + n) - a (n - 1)

end

end A037524.P7199152106951178890

namespace A037524

/-- `A037642(1+n)-a(n-1)` -/
def P7199152106951178890.Spec : Prop :=
  ∀ n, P7199152106951178890.a n = A037524 (n + 1)

end A037524

/-! ## A037524.P6379956669587429701

`A033143(n+1)+A033134(n+1)`
-/

namespace A037524.P6379956669587429701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033143 (n + 1) + A033134 (n + 1)

end

end A037524.P6379956669587429701

namespace A037524

/-- `A033143(n+1)+A033134(n+1)` -/
def P6379956669587429701.Spec : Prop :=
  ∀ n, P6379956669587429701.a n = A037524 (n + 1)

end A037524

/-! ## A037524.P12029366104948136286

`A037670(n+1)-A033134(n+1)`
-/

namespace A037524.P12029366104948136286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037670 (n + 1) - A033134 (n + 1)

end

end A037524.P12029366104948136286

namespace A037524

/-- `A037670(n+1)-A033134(n+1)` -/
def P12029366104948136286.Spec : Prop :=
  ∀ n, P12029366104948136286.a n = A037524 (n + 1)

end A037524

/-! ## A037524.P10596913174241736821

`A037663(n+1)-A033143(n+1)`
-/

namespace A037524.P10596913174241736821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037663 (n + 1) - A033143 (n + 1)

end

end A037524.P10596913174241736821

namespace A037524

/-- `A037663(n+1)-A033143(n+1)` -/
def P10596913174241736821.Spec : Prop :=
  ∀ n, P10596913174241736821.a n = A037524 (n + 1)

end A037524

/-! ## A037524.P1143996993663678243

`A037540(n+2)-A033143(n+2)`
-/

namespace A037524.P1143996993663678243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 2) - A033143 (n + 2)

end

end A037524.P1143996993663678243

namespace A037524

/-- `A037540(n+2)-A033143(n+2)` -/
def P1143996993663678243.Spec : Prop :=
  ∀ n, P1143996993663678243.a n = A037524 (n + 1)

end A037524

/-! ## A037524.P9601833739009690366

`(A037670(n+1)+A033143(n+1))/2`
-/

namespace A037524.P9601833739009690366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037670 (n + 1) + A033143 (n + 1) : ℚ) / 2

end

end A037524.P9601833739009690366

namespace A037524

/-- `(A037670(n+1)+A033143(n+1))/2` -/
def P9601833739009690366.Spec : Prop :=
  ∀ n, P9601833739009690366.a n = (A037524 (n + 1) : ℚ)

end A037524

/-! ## A037524.P1531016213043030750

`2*A037556(n+1)-A037572(n+1)`
-/

namespace A037524.P1531016213043030750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037556 (n + 1) - A037572 (n + 1)

end

end A037524.P1531016213043030750

namespace A037524

/-- `2*A037556(n+1)-A037572(n+1)` -/
def P1531016213043030750.Spec : Prop :=
  ∀ n, P1531016213043030750.a n = A037524 (n + 1)

end A037524

/-! ## A037524.P11973870200081416721

`A033143(n+1)+∑[7*a(n-1)+1-A010872(n)]` with `a(0)=1`
-/

namespace A037524.P11973870200081416721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) + (1 - A010872 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033143 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037524.P11973870200081416721

namespace A037524

/-- `A033143(n+1)+∑[7*a(n-1)+1-A010872(n)]` -/
def P11973870200081416721.Spec : Prop :=
  ∀ n, P11973870200081416721.a n = A037524 (n + 1)

end A037524

/-! ## A037524.P1032842943477321601

`A037540(n+1)+A037556(n+1)-A037548(n+1)`
-/

namespace A037524.P1032842943477321601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + (A037556 (n + 1) - A037548 (n + 1))

end

end A037524.P1032842943477321601

namespace A037524

/-- `A037540(n+1)+A037556(n+1)-A037548(n+1)` -/
def P1032842943477321601.Spec : Prop :=
  ∀ n, P1032842943477321601.a n = A037524 (n + 1)

end A037524

/-! ## A037524.P1905441168417698894

`A037564(n+2)-2*A033143(n+2)`
-/

namespace A037524.P1905441168417698894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037564 (n + 2) - 2 * A033143 (n + 2)

end

end A037524.P1905441168417698894

namespace A037524

/-- `A037564(n+2)-2*A033143(n+2)` -/
def P1905441168417698894.Spec : Prop :=
  ∀ n, P1905441168417698894.a n = A037524 (n + 1)

end A037524

/-! ## A037524.P392380572500754173

`2*A037540(n+2)-A037564(n+2)`
-/

namespace A037524.P392380572500754173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037540 (n + 2) - A037564 (n + 2)

end

end A037524.P392380572500754173

namespace A037524

/-- `2*A037540(n+2)-A037564(n+2)` -/
def P392380572500754173.Spec : Prop :=
  ∀ n, P392380572500754173.a n = A037524 (n + 1)

end A037524

/-!
# A037525: Base-8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

The programs for A037525, the canonical program `A037525.P8228610464850371975` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037525 has offset 1).

The definition of A037525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037525.P8228610464850371975

`ogf((2+x)/(1-8x-x^3+8x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037525

/-- `ogf((2+x)/(1-8x-x^3+8x^4))` -/
def P8228610464850371975.Spec : Prop :=
  ∀ n, P8228610464850371975.a n = A037525 (n + 1)

theorem P8228610464850371975.correct : P8228610464850371975.Spec := by
  intro n
  simp only [A037525, Nat.add_sub_cancel]

end A037525

/-! ## A037525.P3402247188441523639

`floor(17*8^(n+2)/511)`
-/

namespace A037525.P3402247188441523639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(17 * 8 ^ (n + 2) : ℚ) / 511⌋

end

end A037525.P3402247188441523639

namespace A037525

/-- `floor(17*8^(n+2)/511)` -/
def P3402247188441523639.Spec : Prop :=
  ∀ n, P3402247188441523639.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P3645376522653958400

`(n+1)%3+8*a(n-1)+1-(2*n)%3` with `a(0)=2`
-/

namespace A037525.P3645376522653958400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (((n + 1) % 3 : ℕ) : ℤ) + 8 * a (n - 1) + 1 - ((2 * n % 3 : ℕ) : ℤ)

end

end A037525.P3645376522653958400

namespace A037525

/-- `(n+1)%3+8*a(n-1)+1-(2*n)%3` -/
def P3645376522653958400.Spec : Prop :=
  ∀ n, P3645376522653958400.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P6685974131610310640

`A037643(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A037525.P6685974131610310640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037643 (n + 1) - a (n - 1)

end

end A037525.P6685974131610310640

namespace A037525

/-- `A037643(n+1)-a(n-1)` -/
def P6685974131610310640.Spec : Prop :=
  ∀ n, P6685974131610310640.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P17885866913947694628

`8*a(A023443(n))+2-n%3` with `a(0)=2`
-/

namespace A037525.P17885866913947694628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (A023443 n).toNat + (2 - ((n % 3 : ℕ) : ℤ))

end

end A037525.P17885866913947694628

namespace A037525

/-- `8*a(A023443(n))+2-n%3` -/
def P17885866913947694628.Spec : Prop :=
  ∀ n, P17885866913947694628.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P14095849897786430263

`xor(∑[A001018(n)], A037650(n+1))`
-/

namespace A037525.P14095849897786430263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037650 (n + 1))

end

end A037525.P14095849897786430263

namespace A037525

/-- `xor(∑[A001018(n)], A037650(n+1))` -/
def P14095849897786430263.Spec : Prop :=
  ∀ n, P14095849897786430263.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P18367640728329831835

`A033144(n+1)+A033135(n+1)`
-/

namespace A037525.P18367640728329831835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033144 (n + 1) + A033135 (n + 1)

end

end A037525.P18367640728329831835

namespace A037525

/-- `A033144(n+1)+A033135(n+1)` -/
def P18367640728329831835.Spec : Prop :=
  ∀ n, P18367640728329831835.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P3725725336953427143

`and(A037557(n+1), A037573(n+1))`
-/

namespace A037525.P3725725336953427143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037557 (n + 1)) (A037573 (n + 1))

end

end A037525.P3725725336953427143

namespace A037525

/-- `and(A037557(n+1), A037573(n+1))` -/
def P3725725336953427143.Spec : Prop :=
  ∀ n, P3725725336953427143.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P8961691357882264406

`and(A037629(n+1), A037636(n+1))`
-/

namespace A037525.P8961691357882264406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037629 (n + 1)) (A037636 (n + 1))

end

end A037525.P8961691357882264406

namespace A037525

/-- `and(A037629(n+1), A037636(n+1))` -/
def P8961691357882264406.Spec : Prop :=
  ∀ n, P8961691357882264406.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P13370332592129312483

`xor(A037533(n+1), A037657(n+1))`
-/

namespace A037525.P13370332592129312483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037533 (n + 1)) (A037657 (n + 1))

end

end A037525.P13370332592129312483

namespace A037525

/-- `xor(A037533(n+1), A037657(n+1))` -/
def P13370332592129312483.Spec : Prop :=
  ∀ n, P13370332592129312483.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P2907554602339581122

`A033135(n+1)+A037573(n+1)-A037533(n+1)`
-/

namespace A037525.P2907554602339581122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033135 (n + 1) + (A037573 (n + 1) - A037533 (n + 1))

end

end A037525.P2907554602339581122

namespace A037525

/-- `A033135(n+1)+A037573(n+1)-A037533(n+1)` -/
def P2907554602339581122.Spec : Prop :=
  ∀ n, P2907554602339581122.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P1621654076989511833

`A037636(n+1)-and(A037594(n+1), A037636(n+1))`
-/

namespace A037525.P1621654076989511833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037636 (n + 1) - Int.land (A037594 (n + 1)) (A037636 (n + 1))

end

end A037525.P1621654076989511833

namespace A037525

/-- `A037636(n+1)-and(A037594(n+1), A037636(n+1))` -/
def P1621654076989511833.Spec : Prop :=
  ∀ n, P1621654076989511833.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P3579467323412410192

`A037549(n+2)-A033126(n+2)`
-/

namespace A037525.P3579467323412410192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037549 (n + 2) - A033126 (n + 2)

end

end A037525.P3579467323412410192

namespace A037525

/-- `A037549(n+2)-A033126(n+2)` -/
def P3579467323412410192.Spec : Prop :=
  ∀ n, P3579467323412410192.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P13410324651891525219

`A037541(n+2)-A033144(n+2)`
-/

namespace A037525.P13410324651891525219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037541 (n + 2) - A033144 (n + 2)

end

end A037525.P13410324651891525219

namespace A037525

/-- `A037541(n+2)-A033144(n+2)` -/
def P13410324651891525219.Spec : Prop :=
  ∀ n, P13410324651891525219.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P9006603279608155640

`A037608(n+2)-A037501(n+2)`
-/

namespace A037525.P9006603279608155640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037608 (n + 2) - A037501 (n + 2)

end

end A037525.P9006603279608155640

namespace A037525

/-- `A037608(n+2)-A037501(n+2)` -/
def P9006603279608155640.Spec : Prop :=
  ∀ n, P9006603279608155640.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P10092503217761150276

`and(A037643(n+1), A037643(n+2))`
-/

namespace A037525.P10092503217761150276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037643 (n + 1)) (A037643 (n + 2))

end

end A037525.P10092503217761150276

namespace A037525

/-- `and(A037643(n+1), A037643(n+2))` -/
def P10092503217761150276.Spec : Prop :=
  ∀ n, P10092503217761150276.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P15017486235765463896

`or(A037501(n+2), A037541(n+2))-A037501(n+2)`
-/

namespace A037525.P15017486235765463896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037501 (n + 2)) (A037541 (n + 2)) - A037501 (n + 2)

end

end A037525.P15017486235765463896

namespace A037525

/-- `or(A037501(n+2), A037541(n+2))-A037501(n+2)` -/
def P15017486235765463896.Spec : Prop :=
  ∀ n, P15017486235765463896.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P11731995998291088591

`xor(A037565(n+2)-A037509(n+2), A037509(n+2))`
-/

namespace A037525.P11731995998291088591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037565 (n + 2) - A037509 (n + 2)) (A037509 (n + 2))

end

end A037525.P11731995998291088591

namespace A037525

/-- `xor(A037565(n+2)-A037509(n+2), A037509(n+2))` -/
def P11731995998291088591.Spec : Prop :=
  ∀ n, P11731995998291088591.a n = A037525 (n + 1)

end A037525

/-! ## A037525.P17156664661220572101

`and(A037615(n+3), A037629(n+1))`
-/

namespace A037525.P17156664661220572101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037615 (n + 3)) (A037629 (n + 1))

end

end A037525.P17156664661220572101

namespace A037525

/-- `and(A037615(n+3), A037629(n+1))` -/
def P17156664661220572101.Spec : Prop :=
  ∀ n, P17156664661220572101.a n = A037525 (n + 1)

end A037525

/-!
# A037526: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

The programs for A037526, the canonical program `A037526.P3502267799706349377` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037526 has offset 1).

The definition of A037526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037526.P7469683376503270179

`ogf((2+x)/(1-9x-x^3+9x^4))`
-/

namespace A037526.P7469683376503270179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -9, 0, -1, 9] n

end

end A037526.P7469683376503270179

namespace A037526

/-- `ogf((2+x)/(1-9x-x^3+9x^4))` -/
def P7469683376503270179.Spec : Prop :=
  ∀ n, P7469683376503270179.a n = A037526 (n + 1)

end A037526

/-! ## A037526.P3502267799706349377

`floor(171*9^(n+1)/728)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037526

/-- `floor(171*9^(n+1)/728)` -/
def P3502267799706349377.Spec : Prop :=
  ∀ n, P3502267799706349377.a n = A037526 (n + 1)

theorem P3502267799706349377.correct : P3502267799706349377.Spec := by
  intro n
  simp only [A037526, Nat.add_sub_cancel]

end A037526

/-! ## A037526.P5762923100300980944

`9*a(n-1)+2-n%3` with `a(0)=2`
-/

namespace A037526.P5762923100300980944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  9 * a (n - 1) + (2 - ((n % 3 : ℕ) : ℤ))

end

end A037526.P5762923100300980944

namespace A037526

/-- `9*a(n-1)+2-n%3` -/
def P5762923100300980944.Spec : Prop :=
  ∀ n, P5762923100300980944.a n = A037526 (n + 1)

end A037526

/-! ## A037526.P6445950568279035332

`A037644(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A037526.P6445950568279035332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037644 (n + 1) - a (n - 1)

end

end A037526.P6445950568279035332

namespace A037526

/-- `A037644(n+1)-a(n-1)` -/
def P6445950568279035332.Spec : Prop :=
  ∀ n, P6445950568279035332.a n = A037526 (n + 1)

end A037526

/-! ## A037526.P16923467597433581454

`A033145(n+1)+A033136(n+1)`
-/

namespace A037526.P16923467597433581454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033145 (n + 1) + A033136 (n + 1)

end

end A037526.P16923467597433581454

namespace A037526

/-- `A033145(n+1)+A033136(n+1)` -/
def P16923467597433581454.Spec : Prop :=
  ∀ n, P16923467597433581454.a n = A037526 (n + 1)

end A037526

/-! ## A037526.P8124479552021895736

`A037672(n+1)-A033136(n+1)`
-/

namespace A037526.P8124479552021895736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037672 (n + 1) - A033136 (n + 1)

end

end A037526.P8124479552021895736

namespace A037526

/-- `A037672(n+1)-A033136(n+1)` -/
def P8124479552021895736.Spec : Prop :=
  ∀ n, P8124479552021895736.a n = A037526 (n + 1)

end A037526

/-! ## A037526.P42085677326645410

`2*A037558(n+1)-A037574(n+1)`
-/

namespace A037526.P42085677326645410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037558 (n + 1) - A037574 (n + 1)

end

end A037526.P42085677326645410

namespace A037526

/-- `2*A037558(n+1)-A037574(n+1)` -/
def P42085677326645410.Spec : Prop :=
  ∀ n, P42085677326645410.a n = A037526 (n + 1)

end A037526

/-! ## A037526.P12079929780913699445

`A037542(n+1)+A033136(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A037526.P12079929780913699445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037542 (n + 1) + (A033136 (n + 1) - a (n - 1))

end

end A037526.P12079929780913699445

namespace A037526

/-- `A037542(n+1)+A033136(n+1)-a(n-1)` -/
def P12079929780913699445.Spec : Prop :=
  ∀ n, P12079929780913699445.a n = A037526 (n + 1)

end A037526

/-! ## A037526.P7229682958712477540

`A033139(A317440(n+1))-A033145(n+1)`
-/

namespace A037526.P7229682958712477540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (A317440 (n + 1)).toNat - A033145 (n + 1)

end

end A037526.P7229682958712477540

namespace A037526

/-- `A033139(A317440(n+1))-A033145(n+1)` -/
def P7229682958712477540.Spec : Prop :=
  ∀ n, P7229682958712477540.a n = A037526 (n + 1)

end A037526

/-! ## A037526.P18141268995599965214

`A037542(n+2)-A033145(n+2)`
-/

namespace A037526.P18141268995599965214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037542 (n + 2) - A033145 (n + 2)

end

end A037526.P18141268995599965214

namespace A037526

/-- `A037542(n+2)-A033145(n+2)` -/
def P18141268995599965214.Spec : Prop :=
  ∀ n, P18141268995599965214.a n = A037526 (n + 1)

end A037526

/-! ## A037526.P3487319506713622099

`(A037672(n+1)+A037665(n+1))/3`
-/

namespace A037526.P3487319506713622099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037672 (n + 1) + A037665 (n + 1) : ℚ) / 3

end

end A037526.P3487319506713622099

namespace A037526

/-- `(A037672(n+1)+A037665(n+1))/3` -/
def P3487319506713622099.Spec : Prop :=
  ∀ n, P3487319506713622099.a n = (A037526 (n + 1) : ℚ)

end A037526

/-! ## A037526.P10872534278491683862

`A037566(n+2)-2*A033145(n+2)`
-/

namespace A037526.P10872534278491683862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037566 (n + 2) - 2 * A033145 (n + 2)

end

end A037526.P10872534278491683862

namespace A037526

/-- `A037566(n+2)-2*A033145(n+2)` -/
def P10872534278491683862.Spec : Prop :=
  ∀ n, P10872534278491683862.a n = A037526 (n + 1)

end A037526

/-! ## A037526.P8730213389886969914

`2*A037542(n+2)-A037566(n+2)`
-/

namespace A037526.P8730213389886969914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037542 (n + 2) - A037566 (n + 2)

end

end A037526.P8730213389886969914

namespace A037526

/-- `2*A037542(n+2)-A037566(n+2)` -/
def P8730213389886969914.Spec : Prop :=
  ∀ n, P8730213389886969914.a n = A037526 (n + 1)

end A037526

/-!
# A037527: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,0.

The programs for A037527, the canonical program `A037527.P2982552324432861958` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037527 has offset 1).

The definition of A037527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037527.P2982552324432861958

`ogf((2+x)/(1-10x-x^3+10x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037527

/-- `ogf((2+x)/(1-10x-x^3+10x^4))` -/
def P2982552324432861958.Spec : Prop :=
  ∀ n, P2982552324432861958.a n = A037527 (n + 1)

theorem P2982552324432861958.correct : P2982552324432861958.Spec := by
  intro n
  simp only [A037527, Nat.add_sub_cancel]

end A037527

/-! ## A037527.P7364822049782919462

`floor(7*10^(n+2)/333)`
-/

namespace A037527.P7364822049782919462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 * 10 ^ (n + 2) : ℚ) / 333⌋

end

end A037527.P7364822049782919462

namespace A037527

/-- `floor(7*10^(n+2)/333)` -/
def P7364822049782919462.Spec : Prop :=
  ∀ n, P7364822049782919462.a n = A037527 (n + 1)

end A037527

/-! ## A037527.P3200970942493487085

`2-n%3+10*a(n-1)` with `a(0)=2`
-/

namespace A037527.P3200970942493487085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n % 3 : ℕ) : ℤ) + 10 * a (n - 1)

end

end A037527.P3200970942493487085

namespace A037527

/-- `2-n%3+10*a(n-1)` -/
def P3200970942493487085.Spec : Prop :=
  ∀ n, P3200970942493487085.a n = A037527 (n + 1)

end A037527

/-! ## A037527.P2396815209148770202

`A037645(n)-a(n-1)` with `a(0)=2`
-/

namespace A037527.P2396815209148770202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037645 (n + 1) - a (n - 1)

end

end A037527.P2396815209148770202

namespace A037527

/-- `A037645(n)-a(n-1)` -/
def P2396815209148770202.Spec : Prop :=
  ∀ n, P2396815209148770202.a n = A037527 (n + 1)

end A037527

/-! ## A037527.P8001158963238904974

`A057078(n)+1+a(n-1)*10` with `a(0)=2`
-/

namespace A037527.P8001158963238904974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A057078 n + (1 + a (n - 1) * 10)

end

end A037527.P8001158963238904974

namespace A037527

/-- `A057078(n)+1+a(n-1)*10` -/
def P8001158963238904974.Spec : Prop :=
  ∀ n, P8001158963238904974.a n = A037527 (n + 1)

end A037527

/-! ## A037527.P12032762816829269647

`or(10*a(n-1), A080425(n+1))` with `a(0)=2`
-/

namespace A037527.P12032762816829269647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (10 * a (n - 1)) (A080425 (n + 1))

end

end A037527.P12032762816829269647

namespace A037527

/-- `or(10*a(n-1), A080425(n+1))` -/
def P12032762816829269647.Spec : Prop :=
  ∀ n, P12032762816829269647.a n = A037527 (n + 1)

end A037527

/-! ## A037527.P14369068486342138769

`or(10*a(n-1), Δ[A047222(n+1)])` with `a(0)=2`
-/

namespace A037527.P14369068486342138769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037527.P14369068486342138769

namespace A037527

/-- `or(10*a(n-1), Δ[A047222(n+1)])` -/
def P14369068486342138769.Spec : Prop :=
  ∀ n, P14369068486342138769.a n = A037527 (n + 1)

end A037527

/-! ## A037527.P8748639808953624736

`or(10*a(n-1), Δ[A008576(n)])-1` with `a(0)=2`
-/

namespace A037527.P8748639808953624736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n) - 1

end

end A037527.P8748639808953624736

namespace A037527

/-- `or(10*a(n-1), Δ[A008576(n)])-1` -/
def P8748639808953624736.Spec : Prop :=
  ∀ n, P8748639808953624736.a n = A037527 (n + 1)

end A037527

/-! ## A037527.P3394727518216106970

`or(10*a(n-1), Δ[A047408(n+1)])-1` with `a(0)=2`
-/

namespace A037527.P3394727518216106970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n) - 1

end

end A037527.P3394727518216106970

namespace A037527

/-- `or(10*a(n-1), Δ[A047408(n+1)])-1` -/
def P3394727518216106970.Spec : Prop :=
  ∀ n, P3394727518216106970.a n = A037527 (n + 1)

end A037527

/-! ## A037527.P13170880595534238062

`A033146(n)+A033137(n)`
-/

namespace A037527.P13170880595534238062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033146 (n + 1) + A033137 (n + 1)

end

end A037527.P13170880595534238062

namespace A037527

/-- `A033146(n)+A033137(n)` -/
def P13170880595534238062.Spec : Prop :=
  ∀ n, P13170880595534238062.a n = A037527 (n + 1)

end A037527

/-!
# A037528: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

The programs for A037528, the canonical program `A037528.P12890940162953796820` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037528 has offset 1).

The definition of A037528 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037528.anchor (n : ℕ) (hn : 1 ≤ n) : A037528 n = ((Nat.ofDigits 3 ((List.range n).reverse.map fun i => [1, 1, 2].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037528`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037528.P16917237833856381045

`ogf((1+x+2x^2)/(1-3x-x^3+3x^4))`
-/

namespace A037528.P16917237833856381045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -3, 0, -1, 3] n

end

end A037528.P16917237833856381045

namespace A037528

/-- `ogf((1+x+2x^2)/(1-3x-x^3+3x^4))` -/
def P16917237833856381045.Spec : Prop :=
  ∀ n, P16917237833856381045.a n = A037528 (n + 1)

end A037528

/-! ## A037528.P12890940162953796820

`3*a(n-1)+a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=43`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037528

/-- `3*a(n-1)+a(n-3)-3*a(n-4)` -/
def P12890940162953796820.Spec : Prop :=
  ∀ n, P12890940162953796820.a n = A037528 (n + 1)

theorem P12890940162953796820.correct : P12890940162953796820.Spec := by
  intro n
  simp only [A037528, Nat.add_sub_cancel]

end A037528

/-! ## A037528.P13784657575937557008

`floor(7*3^(n+1)/13)`
-/

namespace A037528.P13784657575937557008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 * 3 ^ (n + 1) : ℚ) / 13⌋

end

end A037528.P13784657575937557008

namespace A037528

/-- `floor(7*3^(n+1)/13)` -/
def P13784657575937557008.Spec : Prop :=
  ∀ n, P13784657575937557008.a n = A037528 (n + 1)

end A037528

/-! ## A037528.P13814331846114087107

`(n%3)!+3*a(n-1)` with `a(0)=1`
-/

namespace A037528.P13814331846114087107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (n % 3) + 3 * a (n - 1)

end

end A037528.P13814331846114087107

namespace A037528

/-- `(n%3)!+3*a(n-1)` -/
def P13814331846114087107.Spec : Prop :=
  ∀ n, (P13814331846114087107.a n : ℤ) = A037528 (n + 1)

end A037528

/-! ## A037528.P15745975267390038086

`3*a(n-1)+a(n-2)%2+1` with `a(0)=1, a(1)=4`
-/

namespace A037528.P15745975267390038086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1) + (a (n - 2) % 2 + 1)

end

end A037528.P15745975267390038086

namespace A037528

/-- `3*a(n-1)+a(n-2)%2+1` -/
def P15745975267390038086.Spec : Prop :=
  ∀ n, (P15745975267390038086.a n : ℤ) = A037528 (n + 1)

end A037528

/-! ## A037528.P8085852976722149318

`gcd(2, a(n-2)+1)+3*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A037528.P8085852976722149318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.gcd 2 (a (n - 2) + 1) + 3 * a (n - 1)

end

end A037528.P8085852976722149318

namespace A037528

/-- `gcd(2, a(n-2)+1)+3*a(n-1)` -/
def P8085852976722149318.Spec : Prop :=
  ∀ n, (P8085852976722149318.a n : ℤ) = A037528 (n + 1)

end A037528

/-! ## A037528.P5484539014996515190

`lcm(3, a(n-1))+gcd(2, A000045(n+1))` with `a(0)=1`
-/

namespace A037528.P5484539014996515190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (a (n - 1)) + Int.gcd 2 (A000045 (n + 1))

end

end A037528.P5484539014996515190

namespace A037528

/-- `lcm(3, a(n-1))+gcd(2, A000045(n+1))` -/
def P5484539014996515190.Spec : Prop :=
  ∀ n, (P5484539014996515190.a n : ℤ) = A037528 (n + 1)

end A037528

/-! ## A037528.P4415859590926613221

`A037568(n+1)-A033139(n+1)`
-/

namespace A037528.P4415859590926613221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037568 (n + 1) - A033139 (n + 1)

end

end A037528.P4415859590926613221

namespace A037528

/-- `A037568(n+1)-A033139(n+1)` -/
def P4415859590926613221.Spec : Prop :=
  ∀ n, P4415859590926613221.a n = A037528 (n + 1)

end A037528

/-!
# A037529: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

The programs for A037529, the canonical program `A037529.P6130076316499238169` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037529 has offset 1).

The definition of A037529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037529.P6130076316499238169

`ogf((1+x+2x^2)/(1-4x-x^3+4x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037529

/-- `ogf((1+x+2x^2)/(1-4x-x^3+4x^4))` -/
def P6130076316499238169.Spec : Prop :=
  ∀ n, P6130076316499238169.a n = A037529 (n + 1)

theorem P6130076316499238169.correct : P6130076316499238169.Spec := by
  intro n
  simp only [A037529, Nat.add_sub_cancel]

end A037529

/-! ## A037529.P2535816393255537815

`floor(22*4^(n+1)/63)`
-/

namespace A037529.P2535816393255537815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊22 * ((4 ^ (n + 1) : ℚ) / 63)⌋

end

end A037529.P2535816393255537815

namespace A037529

/-- `floor(22*4^(n+1)/63)` -/
def P2535816393255537815.Spec : Prop :=
  ∀ n, P2535816393255537815.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P8487487695480953543

`(n%3)!+4*a(n-1)` with `a(0)=1`
-/

namespace A037529.P8487487695480953543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (n % 3) + 4 * a (n - 1)

end

end A037529.P8487487695480953543

namespace A037529

/-- `(n%3)!+4*a(n-1)` -/
def P8487487695480953543.Spec : Prop :=
  ∀ n, (P8487487695480953543.a n : ℤ) = A037529 (n + 1)

end A037529

/-! ## A037529.P6188536786042274245

`gcd(2, a(n-1)+a(n-2))+4*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A037529.P6188536786042274245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.gcd 2 (a (n - 1) + a (n - 2)) + 4 * a (n - 1)

end

end A037529.P6188536786042274245

namespace A037529

/-- `gcd(2, a(n-1)+a(n-2))+4*a(n-1)` -/
def P6188536786042274245.Spec : Prop :=
  ∀ n, (P6188536786042274245.a n : ℤ) = A037529 (n + 1)

end A037529

/-! ## A037529.P8089430697797414374

`round((A037625(n+1)-1)/2)`
-/

namespace A037529.P8089430697797414374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037625 (n + 1) - 1 : ℚ) / 2)

end

end A037529.P8089430697797414374

namespace A037529

/-- `round((A037625(n+1)-1)/2)` -/
def P8089430697797414374.Spec : Prop :=
  ∀ n, P8089430697797414374.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P9272085856957045004

`xor(4*a(n-1), Δ[A004773(n)])` with `a(0)=1`
-/

namespace A037529.P9272085856957045004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (4 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037529.P9272085856957045004

namespace A037529

/-- `xor(4*a(n-1), Δ[A004773(n)])` -/
def P9272085856957045004.Spec : Prop :=
  ∀ n, P9272085856957045004.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P16036520166220570024

`4*a(n-1)+2-A002061(n)%3` with `a(0)=1`
-/

namespace A037529.P16036520166220570024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (2 - Int.tmod (A002061 n) 3)

end

end A037529.P16036520166220570024

namespace A037529

/-- `4*a(n-1)+2-A002061(n)%3` -/
def P16036520166220570024.Spec : Prop :=
  ∀ n, P16036520166220570024.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P3709966657827069469

`A178872(n)+A037590(n+1)`
-/

namespace A037529.P3709966657827069469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A037590 (n + 1)

end

end A037529.P3709966657827069469

namespace A037529

/-- `A178872(n)+A037590(n+1)` -/
def P3709966657827069469.Spec : Prop :=
  ∀ n, P3709966657827069469.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P14769684808806262728

`A037537(n+1)-A178872(n)`
-/

namespace A037529.P14769684808806262728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037537 (n + 1) - A178872 n

end

end A037529.P14769684808806262728

namespace A037529

/-- `A037537(n+1)-A178872(n)` -/
def P14769684808806262728.Spec : Prop :=
  ∀ n, P14769684808806262728.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P16070490268945776750

`A037569(n+1)-A033140(n+1)`
-/

namespace A037529.P16070490268945776750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037569 (n + 1) - A033140 (n + 1)

end

end A037529.P16070490268945776750

namespace A037529

/-- `A037569(n+1)-A033140(n+1)` -/
def P16070490268945776750.Spec : Prop :=
  ∀ n, P16070490268945776750.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P10771904097726708539

`A037632(n+1)-A033122(n+1)`
-/

namespace A037529.P10771904097726708539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037632 (n + 1) - A033122 (n + 1)

end

end A037529.P10771904097726708539

namespace A037529

/-- `A037632(n+1)-A033122(n+1)` -/
def P10771904097726708539.Spec : Prop :=
  ∀ n, P10771904097726708539.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P13083714667782133493

`A037597(n+1)-2*A178872(n)`
-/

namespace A037529.P13083714667782133493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037597 (n + 1) - 2 * A178872 n

end

end A037529.P13083714667782133493

namespace A037529

/-- `A037597(n+1)-2*A178872(n)` -/
def P13083714667782133493.Spec : Prop :=
  ∀ n, P13083714667782133493.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P6866462276950813207

`xor(A037521(n+1), A037653(n+1))`
-/

namespace A037529.P6866462276950813207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037521 (n + 1)) (A037653 (n + 1))

end

end A037529.P6866462276950813207

namespace A037529

/-- `xor(A037521(n+1), A037653(n+1))` -/
def P6866462276950813207.Spec : Prop :=
  ∀ n, P6866462276950813207.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P7903411070619100674

`xor(A037632(n+1), A037646(n+1))`
-/

namespace A037529.P7903411070619100674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037632 (n + 1)) (A037646 (n + 1))

end

end A037529.P7903411070619100674

namespace A037529

/-- `xor(A037632(n+1), A037646(n+1))` -/
def P7903411070619100674.Spec : Prop :=
  ∀ n, P7903411070619100674.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P16990417126475241803

`(A037590(n+1)+A037537(n+1))/2`
-/

namespace A037529.P16990417126475241803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037590 (n + 1) + A037537 (n + 1) : ℚ) / 2

end

end A037529.P16990417126475241803

namespace A037529

/-- `(A037590(n+1)+A037537(n+1))/2` -/
def P16990417126475241803.Spec : Prop :=
  ∀ n, P16990417126475241803.a n = (A037529 (n + 1) : ℚ)

end A037529

/-! ## A037529.P16683928249800668223

`2*A037537(n+1)-A037597(n+1)`
-/

namespace A037529.P16683928249800668223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037537 (n + 1) - A037597 (n + 1)

end

end A037529.P16683928249800668223

namespace A037529

/-- `2*A037537(n+1)-A037597(n+1)` -/
def P16683928249800668223.Spec : Prop :=
  ∀ n, P16683928249800668223.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P17454381892560224137

`xor(2*A033122(n+1), A037660(n+1))`
-/

namespace A037529.P17454381892560224137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033122 (n + 1)) (A037660 (n + 1))

end

end A037529.P17454381892560224137

namespace A037529

/-- `xor(2*A033122(n+1), A037660(n+1))` -/
def P17454381892560224137.Spec : Prop :=
  ∀ n, P17454381892560224137.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P8401957213037873651

`∑[∑[∑[A011782(n)]²]-A155803(2*n+1)]`
-/

namespace A037529.P8401957213037873651
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A155803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037529.P8401957213037873651

namespace A037529

/-- `∑[∑[∑[A011782(n)]²]-A155803(2*n+1)]` -/
def P8401957213037873651.Spec : Prop :=
  ∀ n, P8401957213037873651.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P7771578964970308045

`∑[∑[A011782(2*n+1)]-A155803(2*n+1)]`
-/

namespace A037529.P7771578964970308045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A155803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037529.P7771578964970308045

namespace A037529

/-- `∑[∑[A011782(2*n+1)]-A155803(2*n+1)]` -/
def P7771578964970308045.Spec : Prop :=
  ∀ n, P7771578964970308045.a n = A037529 (n + 1)

end A037529

/-! ## A037529.P4774797954677338313

`∑[A178872(n)+A000302(n)]-A178872(n)`
-/

namespace A037529.P4774797954677338313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178872 n

end

end A037529.P4774797954677338313

namespace A037529

/-- `∑[A178872(n)+A000302(n)]-A178872(n)` -/
def P4774797954677338313.Spec : Prop :=
  ∀ n, P4774797954677338313.a n = A037529 (n + 1)

end A037529

/-!
# A037530: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

The programs for A037530, the canonical program `A037530.P682649262290808695` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037530 has offset 1).

The definition of A037530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037530.P682649262290808695

`ogf((1+x+2x^2)/(1-5x-x^3+5x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037530

/-- `ogf((1+x+2x^2)/(1-5x-x^3+5x^4))` -/
def P682649262290808695.Spec : Prop :=
  ∀ n, P682649262290808695.a n = A037530 (n + 1)

theorem P682649262290808695.correct : P682649262290808695.Spec := by
  intro n
  simp only [A037530, Nat.add_sub_cancel]

end A037530

/-! ## A037530.P13294183411592468489

`5*a(n-1)+(n%3)!` with `a(0)=1`
-/

namespace A037530.P13294183411592468489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + Nat.factorial (n % 3)

end

end A037530.P13294183411592468489

namespace A037530

/-- `5*a(n-1)+(n%3)!` -/
def P13294183411592468489.Spec : Prop :=
  ∀ n, (P13294183411592468489.a n : ℤ) = A037530 (n + 1)

end A037530

/-! ## A037530.P2921271043463048573

`gcd(4, a(n-1))%3+5*a(n-1)` with `a(0)=1`
-/

namespace A037530.P2921271043463048573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 4 (a (n - 1)) % 3 + 5 * a (n - 1)

end

end A037530.P2921271043463048573

namespace A037530

/-- `gcd(4, a(n-1))%3+5*a(n-1)` -/
def P2921271043463048573.Spec : Prop :=
  ∀ n, (P2921271043463048573.a n : ℤ) = A037530 (n + 1)

end A037530

/-! ## A037530.P10640931063749607995

`A177702(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A037530.P10640931063749607995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177702 n + 5 * a (n - 1)

end

end A037530.P10640931063749607995

namespace A037530

/-- `A177702(n)+5*a(n-1)` -/
def P10640931063749607995.Spec : Prop :=
  ∀ n, P10640931063749607995.a n = A037530 (n + 1)

end A037530

/-! ## A037530.P6451899989697091631

`∑[5*a(n-1)-A057078(n)]` with `a(0)=1`
-/

namespace A037530.P6451899989697091631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - A057078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037530.P6451899989697091631

namespace A037530

/-- `∑[5*a(n-1)-A057078(n)]` -/
def P6451899989697091631.Spec : Prop :=
  ∀ n, P6451899989697091631.a n = A037530 (n + 1)

end A037530

/-! ## A037530.P12721965487699026032

`5*a(n-1)+A022003(n)+1` with `a(0)=1`
-/

namespace A037530.P12721965487699026032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A022003 n + 1)

end

end A037530.P12721965487699026032

namespace A037530

/-- `5*a(n-1)+A022003(n)+1` -/
def P12721965487699026032.Spec : Prop :=
  ∀ n, P12721965487699026032.a n = A037530 (n + 1)

end A037530

/-! ## A037530.P13703609450124177896

`lcm(5, a(n-1))+A077947(n)%4` with `a(0)=1`
-/

namespace A037530.P13703609450124177896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) + Int.tmod (A077947 n) 4

end

end A037530.P13703609450124177896

namespace A037530

/-- `lcm(5, a(n-1))+A077947(n)%4` -/
def P13703609450124177896.Spec : Prop :=
  ∀ n, P13703609450124177896.a n = A037530 (n + 1)

end A037530

/-! ## A037530.P3307621553323981907

`5*a(n-1)+2-A010892(n)²` with `a(0)=1`
-/

namespace A037530.P3307621553323981907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (2 - A010892 n ^ 2)

end

end A037530.P3307621553323981907

namespace A037530

/-- `5*a(n-1)+2-A010892(n)²` -/
def P3307621553323981907.Spec : Prop :=
  ∀ n, P3307621553323981907.a n = A037530 (n + 1)

end A037530

/-! ## A037530.P8306557969139181879

`∑[5*a(n-1)-A010892(2*n)]` with `a(0)=1`
-/

namespace A037530.P8306557969139181879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - A010892 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037530.P8306557969139181879

namespace A037530

/-- `∑[5*a(n-1)-A010892(2*n)]` -/
def P8306557969139181879.Spec : Prop :=
  ∀ n, P8306557969139181879.a n = A037530 (n + 1)

end A037530

/-! ## A037530.P396263691939666657

`5*a(n-1)+2-A091338(n+1)²` with `a(0)=1`
-/

namespace A037530.P396263691939666657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (2 - A091338 (n + 1) ^ 2)

end

end A037530.P396263691939666657

namespace A037530

/-- `5*a(n-1)+2-A091338(n+1)²` -/
def P396263691939666657.Spec : Prop :=
  ∀ n, P396263691939666657.a n = A037530 (n + 1)

end A037530

/-! ## A037530.P2378830866262406854

`A093718(2*n+1)!+5*a(n-1)` with `a(0)=1`
-/

namespace A037530.P2378830866262406854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (A093718 (2 * n + 1)).toNat + 5 * a (n - 1)

end

end A037530.P2378830866262406854

namespace A037530

/-- `A093718(2*n+1)!+5*a(n-1)` -/
def P2378830866262406854.Spec : Prop :=
  ∀ n, (P2378830866262406854.a n : ℤ) = A037530 (n + 1)

end A037530

/-! ## A037530.P12549197570102940095

`5*a(n-1)+2-A091338((n+1)²)` with `a(0)=1`
-/

namespace A037530.P12549197570102940095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (2 - A091338 ((n + 1) ^ 2))

end

end A037530.P12549197570102940095

namespace A037530

/-- `5*a(n-1)+2-A091338((n+1)²)` -/
def P12549197570102940095.Spec : Prop :=
  ∀ n, P12549197570102940095.a n = A037530 (n + 1)

end A037530

/-!
# A037531: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

The programs for A037531, the canonical program `A037531.P9854656965646439548` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037531 has offset 1).

The definition of A037531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037531.P9854656965646439548

`ogf((1+x+2x^2)/(1-6x-x^3+6x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037531

/-- `ogf((1+x+2x^2)/(1-6x-x^3+6x^4))` -/
def P9854656965646439548.Spec : Prop :=
  ∀ n, P9854656965646439548.a n = A037531 (n + 1)

theorem P9854656965646439548.correct : P9854656965646439548.Spec := by
  intro n
  simp only [A037531, Nat.add_sub_cancel]

end A037531

/-! ## A037531.P14627741031186620175

`(n%3)!+6*a(n-1)` with `a(0)=1`
-/

namespace A037531.P14627741031186620175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (n % 3) + 6 * a (n - 1)

end

end A037531.P14627741031186620175

namespace A037531

/-- `(n%3)!+6*a(n-1)` -/
def P14627741031186620175.Spec : Prop :=
  ∀ n, (P14627741031186620175.a n : ℤ) = A037531 (n + 1)

end A037531

/-! ## A037531.P17403544007179849304

`xor(6*a(n-1), gcd(3, n+1)!)` with `a(0)=1`
-/

namespace A037531.P17403544007179849304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (6 * a (n - 1)) (Nat.factorial (Nat.gcd 3 (n + 1)))

end

end A037531.P17403544007179849304

namespace A037531

/-- `xor(6*a(n-1), gcd(3, n+1)!)` -/
def P17403544007179849304.Spec : Prop :=
  ∀ n, (P17403544007179849304.a n : ℤ) = A037531 (n + 1)

end A037531

/-! ## A037531.P9645318263882507336

`∑[6*a(n-1)-A057078(n)]` with `a(0)=1`
-/

namespace A037531.P9645318263882507336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - A057078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037531.P9645318263882507336

namespace A037531

/-- `∑[6*a(n-1)-A057078(n)]` -/
def P9645318263882507336.Spec : Prop :=
  ∀ n, P9645318263882507336.a n = A037531 (n + 1)

end A037531

/-! ## A037531.P8477323525401658498

`6*a(n-1)+A060884(n)%3` with `a(0)=1`
-/

namespace A037531.P8477323525401658498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + Int.tmod (A060884 n) 3

end

end A037531.P8477323525401658498

namespace A037531

/-- `6*a(n-1)+A060884(n)%3` -/
def P8477323525401658498.Spec : Prop :=
  ∀ n, P8477323525401658498.a n = A037531 (n + 1)

end A037531

/-! ## A037531.P16966725742090158603

`abs(xor(6*a(n-1), A061347(n+1)))` with `a(0)=1`
-/

namespace A037531.P16966725742090158603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor (6 * a (n - 1)) (A061347 (n + 1))|

end

end A037531.P16966725742090158603

namespace A037531

/-- `abs(xor(6*a(n-1), A061347(n+1)))` -/
def P16966725742090158603.Spec : Prop :=
  ∀ n, P16966725742090158603.a n = A037531 (n + 1)

end A037531

/-! ## A037531.P7138533550118407983

`(A037547(n+1)+A037499(n+1))/2`
-/

namespace A037531.P7138533550118407983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037547 (n + 1) + A037499 (n + 1) : ℚ) / 2

end

end A037531.P7138533550118407983

namespace A037531

/-- `(A037547(n+1)+A037499(n+1))/2` -/
def P7138533550118407983.Spec : Prop :=
  ∀ n, P7138533550118407983.a n = (A037531 (n + 1) : ℚ)

end A037531

/-! ## A037531.P10947250011445057522

`A037515(n+1)+A037539(n+1)-A037523(n+1)`
-/

namespace A037531.P10947250011445057522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) + (A037539 (n + 1) - A037523 (n + 1))

end

end A037531.P10947250011445057522

namespace A037531

/-- `A037515(n+1)+A037539(n+1)-A037523(n+1)` -/
def P10947250011445057522.Spec : Prop :=
  ∀ n, P10947250011445057522.a n = A037531 (n + 1)

end A037531

/-! ## A037531.P2358504320146474911

`A037539(n+1)+A037539(n+1)-A037599(n+1)`
-/

namespace A037531.P2358504320146474911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 1) + (A037539 (n + 1) - A037599 (n + 1))

end

end A037531.P2358504320146474911

namespace A037531

/-- `A037539(n+1)+A037539(n+1)-A037599(n+1)` -/
def P2358504320146474911.Spec : Prop :=
  ∀ n, P2358504320146474911.a n = A037531 (n + 1)

end A037531

/-! ## A037531.P16292711082153249810

`A037571(n+1)+∑[A037547(n+1)-A037571(n+1)]`
-/

namespace A037531.P16292711082153249810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 1) - A037571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037571 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037531.P16292711082153249810

namespace A037531

/-- `A037571(n+1)+∑[A037547(n+1)-A037571(n+1)]` -/
def P16292711082153249810.Spec : Prop :=
  ∀ n, P16292711082153249810.a n = A037531 (n + 1)

end A037531

/-! ## A037531.P17409858610100668748

`2*A037539(n+1)-A037599(n+1)`
-/

namespace A037531.P17409858610100668748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037539 (n + 1) - A037599 (n + 1)

end

end A037531.P17409858610100668748

namespace A037531

/-- `2*A037539(n+1)-A037599(n+1)` -/
def P17409858610100668748.Spec : Prop :=
  ∀ n, P17409858610100668748.a n = A037531 (n + 1)

end A037531

/-!
# A037532: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

The programs for A037532, the canonical program `A037532.P16759706842372982497` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037532 has offset 1).

The definition of A037532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037532.P330841581354089290

`ogf((1+x+2x^2)/(1-7x-x^3+7x^4))`
-/

namespace A037532.P330841581354089290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -7, 0, -1, 7] n

end

end A037532.P330841581354089290

namespace A037532

/-- `ogf((1+x+2x^2)/(1-7x-x^3+7x^4))` -/
def P330841581354089290.Spec : Prop :=
  ∀ n, P330841581354089290.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P16759706842372982497

`5/57*A049347(n)+3/57*A049347(n+1)+29/171*A000420(n+1)-2/9`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037532

/-- `5/57*A049347(n)+3/57*A049347(n+1)+29/171*A000420(n+1)-2/9` -/
def P16759706842372982497.Spec : Prop :=
  ∀ n, P16759706842372982497.a n = (A037532 (n + 1) : ℚ)

end A037532

/-! ## A037532.P12004729501463102275

`Δ[A004773(n)]+7*a(n-1)` with `a(0)=1`
-/

namespace A037532.P12004729501463102275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 7 * a (n - 1)

end

end A037532.P12004729501463102275

namespace A037532

/-- `Δ[A004773(n)]+7*a(n-1)` -/
def P12004729501463102275.Spec : Prop :=
  ∀ n, P12004729501463102275.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P12027712902213281107

`A080425(n)+xor(1, 7*a(n-1))` with `a(0)=1`
-/

namespace A037532.P12027712902213281107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080425 n + Int.xor 1 (7 * a (n - 1))

end

end A037532.P12027712902213281107

namespace A037532

/-- `A080425(n)+xor(1, 7*a(n-1))` -/
def P12027712902213281107.Spec : Prop :=
  ∀ n, P12027712902213281107.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P10777732715800805956

`abs(A061347(n+1))+7*a(n-1)` with `a(0)=1`
-/

namespace A037532.P10777732715800805956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A061347 (n + 1)| + 7 * a (n - 1)

end

end A037532.P10777732715800805956

namespace A037532

/-- `abs(A061347(n+1))+7*a(n-1)` -/
def P10777732715800805956.Spec : Prop :=
  ∀ n, P10777732715800805956.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P5037200144384693971

`∑[7*a(n-1)-A010892(2*n)]` with `a(0)=1`
-/

namespace A037532.P5037200144384693971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) - A010892 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037532.P5037200144384693971

namespace A037532

/-- `∑[7*a(n-1)-A010892(2*n)]` -/
def P5037200144384693971.Spec : Prop :=
  ∀ n, P5037200144384693971.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P1745002019329626268

`A037635(n+1)-A033125(n+1)`
-/

namespace A037532.P1745002019329626268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1) - A033125 (n + 1)

end

end A037532.P1745002019329626268

namespace A037532

/-- `A037635(n+1)-A033125(n+1)` -/
def P1745002019329626268.Spec : Prop :=
  ∀ n, P1745002019329626268.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P6024813834656746419

`A120741(n+1)-A037564(n+1)`
-/

namespace A037532.P6024813834656746419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037564 (n + 1)

end

end A037532.P6024813834656746419

namespace A037532

/-- `A120741(n+1)-A037564(n+1)` -/
def P6024813834656746419.Spec : Prop :=
  ∀ n, P6024813834656746419.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P11819534235541773463

`A037600(n+2)-Δ[A037614(n+1)]`
-/

namespace A037532.P11819534235541773463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037600 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037532.P11819534235541773463

namespace A037532

/-- `A037600(n+2)-Δ[A037614(n+1)]` -/
def P11819534235541773463.Spec : Prop :=
  ∀ n, P11819534235541773463.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P13776365736582443682

`∑[2*A000420(n)]-A033134(n+1)`
-/

namespace A037532.P13776365736582443682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033134 (n + 1)

end

end A037532.P13776365736582443682

namespace A037532

/-- `∑[2*A000420(n)]-A033134(n+1)` -/
def P13776365736582443682.Spec : Prop :=
  ∀ n, P13776365736582443682.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P7074268542484230373

`(A037548(n+1)+A037500(n+1))/2`
-/

namespace A037532.P7074268542484230373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037548 (n + 1) + A037500 (n + 1) : ℚ) / 2

end

end A037532.P7074268542484230373

namespace A037532

/-- `(A037548(n+1)+A037500(n+1))/2` -/
def P7074268542484230373.Spec : Prop :=
  ∀ n, P7074268542484230373.a n = (A037532 (n + 1) : ℚ)

end A037532

/-! ## A037532.P16979100415806447647

`Δ[∑[A037540(n+1)]-A037548(n+1)]`
-/

namespace A037532.P16979100415806447647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037532.P16979100415806447647

namespace A037532

/-- `Δ[∑[A037540(n+1)]-A037548(n+1)]` -/
def P16979100415806447647.Spec : Prop :=
  ∀ n, P16979100415806447647.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P2512698503680453962

`A037548(n+1)+A037556(n+1)-A037564(n+1)`
-/

namespace A037532.P2512698503680453962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1) + (A037556 (n + 1) - A037564 (n + 1))

end

end A037532.P2512698503680453962

namespace A037532

/-- `A037548(n+1)+A037556(n+1)-A037564(n+1)` -/
def P2512698503680453962.Spec : Prop :=
  ∀ n, P2512698503680453962.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P265342052463772778

`A033125(n+2)+A033125(n+1)-A000420(n+1)`
-/

namespace A037532.P265342052463772778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033125 (n + 2) + A033125 (n + 1) - A000420 (n + 1)

end

end A037532.P265342052463772778

namespace A037532

/-- `A033125(n+2)+A033125(n+1)-A000420(n+1)` -/
def P265342052463772778.Spec : Prop :=
  ∀ n, P265342052463772778.a n = A037532 (n + 1)

end A037532

/-! ## A037532.P17212637684357690098

`A037572(n+1)+∑[A037548(n+1)-A037572(n+1)]`
-/

namespace A037532.P17212637684357690098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1) - A037572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037572 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037532.P17212637684357690098

namespace A037532

/-- `A037572(n+1)+∑[A037548(n+1)-A037572(n+1)]` -/
def P17212637684357690098.Spec : Prop :=
  ∀ n, P17212637684357690098.a n = A037532 (n + 1)

end A037532

/-!
# A037533: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

The programs for A037533, the canonical program `A037533.P8034034542663774779` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037533 has offset 1).

The definition of A037533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037533.P8034034542663774779

`ogf((1+x+2x^2)/(1-8x-x^3+8x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037533

/-- `ogf((1+x+2x^2)/(1-8x-x^3+8x^4))` -/
def P8034034542663774779.Spec : Prop :=
  ∀ n, P8034034542663774779.a n = A037533 (n + 1)

theorem P8034034542663774779.correct : P8034034542663774779.Spec := by
  intro n
  simp only [A037533, Nat.add_sub_cancel]

end A037533

/-! ## A037533.P4936422597269484264

`record[xor(8*a(n-1), ((n+1)%3)!)]` with `a(0)=1, a(1)=0`
-/

namespace A037533.P4936422597269484264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.xor (8 * f1 (n - 1)) (Nat.factorial ((n + 1) % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037533.P4936422597269484264

namespace A037533

/-- `record[xor(8*a(n-1), ((n+1)%3)!)]` -/
def P4936422597269484264.Spec : Prop :=
  ∀ n, (P4936422597269484264.a n : ℤ) = A037533 (n + 1)

end A037533

/-! ## A037533.P3408455422484703546

`xor(1, (n+1)²%3+8*a(n-1))+1` with `a(0)=1`
-/

namespace A037533.P3408455422484703546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 ((n + 1) ^ 2 % 3 + 8 * a (n - 1)) + 1

end

end A037533.P3408455422484703546

namespace A037533

/-- `xor(1, (n+1)²%3+8*a(n-1))+1` -/
def P3408455422484703546.Spec : Prop :=
  ∀ n, (P3408455422484703546.a n : ℤ) = A037533 (n + 1)

end A037533

/-! ## A037533.P3853543974742606851

`A037573(n+1)-A033144(n+1)`
-/

namespace A037533.P3853543974742606851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037573 (n + 1) - A033144 (n + 1)

end

end A037533.P3853543974742606851

namespace A037533

/-- `A037573(n+1)-A033144(n+1)` -/
def P3853543974742606851.Spec : Prop :=
  ∀ n, P3853543974742606851.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P11530682805140021493

`A037636(n+1)-A033126(n+1)`
-/

namespace A037533.P11530682805140021493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037636 (n + 1) - A033126 (n + 1)

end

end A037533.P11530682805140021493

namespace A037533

/-- `A037636(n+1)-A033126(n+1)` -/
def P11530682805140021493.Spec : Prop :=
  ∀ n, P11530682805140021493.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P15532666759397936671

`or(A033135(n+1), A037501(n+1))`
-/

namespace A037533.P15532666759397936671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033135 (n + 1)) (A037501 (n + 1))

end

end A037533.P15532666759397936671

namespace A037533

/-- `or(A033135(n+1), A037501(n+1))` -/
def P15532666759397936671.Spec : Prop :=
  ∀ n, P15532666759397936671.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P5834320178327336264

`xor(A037525(n+1), A037657(n+1))`
-/

namespace A037533.P5834320178327336264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037525 (n + 1)) (A037657 (n + 1))

end

end A037533.P5834320178327336264

namespace A037533

/-- `xor(A037525(n+1), A037657(n+1))` -/
def P5834320178327336264.Spec : Prop :=
  ∀ n, P5834320178327336264.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P1448130744143773925

`xor(A037636(n+1), A037650(n+1))`
-/

namespace A037533.P1448130744143773925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037636 (n + 1)) (A037650 (n + 1))

end

end A037533.P1448130744143773925

namespace A037533

/-- `xor(A037636(n+1), A037650(n+1))` -/
def P1448130744143773925.Spec : Prop :=
  ∀ n, P1448130744143773925.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P12618436072898640251

`(A037549(n+1)+A037501(n+1))/2`
-/

namespace A037533.P12618436072898640251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037549 (n + 1) + A037501 (n + 1) : ℚ) / 2

end

end A037533.P12618436072898640251

namespace A037533

/-- `(A037549(n+1)+A037501(n+1))/2` -/
def P12618436072898640251.Spec : Prop :=
  ∀ n, P12618436072898640251.a n = (A037533 (n + 1) : ℚ)

end A037533

/-! ## A037533.P4145498922120744764

`(A037594(n+1)+A037541(n+1))/2`
-/

namespace A037533.P4145498922120744764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037594 (n + 1) + A037541 (n + 1) : ℚ) / 2

end

end A037533.P4145498922120744764

namespace A037533

/-- `(A037594(n+1)+A037541(n+1))/2` -/
def P4145498922120744764.Spec : Prop :=
  ∀ n, P4145498922120744764.a n = (A037533 (n + 1) : ℚ)

end A037533

/-! ## A037533.P4240298472742272485

`2*A037541(n+1)-A037601(n+1)`
-/

namespace A037533.P4240298472742272485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037541 (n + 1) - A037601 (n + 1)

end

end A037533.P4240298472742272485

namespace A037533

/-- `2*A037541(n+1)-A037601(n+1)` -/
def P4240298472742272485.Spec : Prop :=
  ∀ n, P4240298472742272485.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P4332205496140826109

`8*a(n-1)-A281727(A016813(n))` with `a(0)=1`
-/

namespace A037533.P4332205496140826109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - A281727 (A016813 n).toNat

end

end A037533.P4332205496140826109

namespace A037533

/-- `8*a(n-1)-A281727(A016813(n))` -/
def P4332205496140826109.Spec : Prop :=
  ∀ n, P4332205496140826109.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P12259059201779353664

`or(A001018(n), A037541(A028310(n)))`
-/

namespace A037533.P12259059201779353664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001018 n) (A037541 (A028310 n).toNat)

end

end A037533.P12259059201779353664

namespace A037533

/-- `or(A001018(n), A037541(A028310(n)))` -/
def P12259059201779353664.Spec : Prop :=
  ∀ n, P12259059201779353664.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P16678599696212198664

`A033138(A016777(n)+1)-A033135(n+1)`
-/

namespace A037533.P16678599696212198664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (A016777 n + 1).toNat - A033135 (n + 1)

end

end A037533.P16678599696212198664

namespace A037533

/-- `A033138(A016777(n)+1)-A033135(n+1)` -/
def P16678599696212198664.Spec : Prop :=
  ∀ n, P16678599696212198664.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P3983874144119843200

`or(A037549(n+1)-A033135(n+1), A033135(n+1))`
-/

namespace A037533.P3983874144119843200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037549 (n + 1) - A033135 (n + 1)) (A033135 (n + 1))

end

end A037533.P3983874144119843200

namespace A037533

/-- `or(A037549(n+1)-A033135(n+1), A033135(n+1))` -/
def P3983874144119843200.Spec : Prop :=
  ∀ n, P3983874144119843200.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P2647527453095765203

`and(A037615(n+1), A037643(n+2))`
-/

namespace A037533.P2647527453095765203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037615 (n + 1)) (A037643 (n + 2))

end

end A037533.P2647527453095765203

namespace A037533

/-- `and(A037615(n+1), A037643(n+2))` -/
def P2647527453095765203.Spec : Prop :=
  ∀ n, P2647527453095765203.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P13180478653555634173

`A037557(n+2)-2*A001018(n+1)`
-/

namespace A037533.P13180478653555634173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037557 (n + 2) - 2 * A001018 (n + 1)

end

end A037533.P13180478653555634173

namespace A037533

/-- `A037557(n+2)-2*A001018(n+1)` -/
def P13180478653555634173.Spec : Prop :=
  ∀ n, P13180478653555634173.a n = A037533 (n + 1)

end A037533

/-! ## A037533.P6315705397006504478

`A037541(n+1)+Δ[A037509(n+1)-A037541(n+1)]`
-/

namespace A037533.P6315705397006504478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037509 (n + 1) - A037541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037541 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037533.P6315705397006504478

namespace A037533

/-- `A037541(n+1)+Δ[A037509(n+1)-A037541(n+1)]` -/
def P6315705397006504478.Spec : Prop :=
  ∀ n, P6315705397006504478.a n = A037533 (n + 1)

end A037533

/-!
# A037534: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

The programs for A037534, the canonical program `A037534.P10202265653290126580` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037534 has offset 1).

The definition of A037534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037534.P10202265653290126580

`ogf((1+x+2x^2)/(1-9x-x^3+9x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037534

/-- `ogf((1+x+2x^2)/(1-9x-x^3+9x^4))` -/
def P10202265653290126580.Spec : Prop :=
  ∀ n, P10202265653290126580.a n = A037534 (n + 1)

theorem P10202265653290126580.correct : P10202265653290126580.Spec := by
  intro n
  simp only [A037534, Nat.add_sub_cancel]

end A037534

/-! ## A037534.P5473689454415263723

`∑[9*a(n-1)+n%3-1]` with `a(0)=1`
-/

namespace A037534.P5473689454415263723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) + (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037534.P5473689454415263723

namespace A037534

/-- `∑[9*a(n-1)+n%3-1]` -/
def P5473689454415263723.Spec : Prop :=
  ∀ n, P5473689454415263723.a n = A037534 (n + 1)

end A037534

/-! ## A037534.P5526422850501707522

`A177702(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A037534.P5526422850501707522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177702 n + 9 * a (n - 1)

end

end A037534.P5526422850501707522

namespace A037534

/-- `A177702(n)+9*a(n-1)` -/
def P5526422850501707522.Spec : Prop :=
  ∀ n, P5526422850501707522.a n = A037534 (n + 1)

end A037534

/-! ## A037534.P11473858574072078196

`∑[9*a(n-1)-A049347(2*n)]` with `a(0)=1`
-/

namespace A037534.P11473858574072078196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - A049347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037534.P11473858574072078196

namespace A037534

/-- `∑[9*a(n-1)-A049347(2*n)]` -/
def P11473858574072078196.Spec : Prop :=
  ∀ n, P11473858574072078196.a n = A037534 (n + 1)

end A037534

/-! ## A037534.P5811225979523511496

`A037574(n+1)-A033145(n+1)`
-/

namespace A037534.P5811225979523511496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037574 (n + 1) - A033145 (n + 1)

end

end A037534.P5811225979523511496

namespace A037534

/-- `A037574(n+1)-A033145(n+1)` -/
def P5811225979523511496.Spec : Prop :=
  ∀ n, P5811225979523511496.a n = A037534 (n + 1)

end A037534

/-! ## A037534.P16222597553494583137

`A037637(n+1)-A033127(n+1)`
-/

namespace A037534.P16222597553494583137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037637 (n + 1) - A033127 (n + 1)

end

end A037534.P16222597553494583137

namespace A037534

/-- `A037637(n+1)-A033127(n+1)` -/
def P16222597553494583137.Spec : Prop :=
  ∀ n, P16222597553494583137.a n = A037534 (n + 1)

end A037534

/-!
# A037535: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,1,2.

The programs for A037535, the canonical program `A037535.P12061149333949153691` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037535 has offset 1).

The definition of A037535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037535.P12061149333949153691

`floor(112/999*10^(n+1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037535

/-- `floor(112/999*10^(n+1))` -/
def P12061149333949153691.Spec : Prop :=
  ∀ n, P12061149333949153691.a n = A037535 (n + 1)

theorem P12061149333949153691.correct : P12061149333949153691.Spec := by
  intro n
  simp only [A037535, Nat.add_sub_cancel]

end A037535

/-! ## A037535.P14415758473248029957

`ogf((1+x+2x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037535.P14415758473248029957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -10, 0, -1, 10] n

end

end A037535.P14415758473248029957

namespace A037535

/-- `ogf((1+x+2x^2)/(1-10x-x^3+10x^4))` -/
def P14415758473248029957.Spec : Prop :=
  ∀ n, P14415758473248029957.a n = A037535 (n + 1)

end A037535

/-! ## A037535.P5880997522785279722

`10*a(n-1)+(n%3)!` with `a(0)=1`
-/

namespace A037535.P5880997522785279722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + Nat.factorial (n % 3)

end

end A037535.P5880997522785279722

namespace A037535

/-- `10*a(n-1)+(n%3)!` -/
def P5880997522785279722.Spec : Prop :=
  ∀ n, (P5880997522785279722.a n : ℤ) = A037535 (n + 1)

end A037535

/-! ## A037535.P16462116880994018706

`A177702(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A037535.P16462116880994018706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177702 n + 10 * a (n - 1)

end

end A037535.P16462116880994018706

namespace A037535

/-- `A177702(n)+10*a(n-1)` -/
def P16462116880994018706.Spec : Prop :=
  ∀ n, P16462116880994018706.a n = A037535 (n + 1)

end A037535

/-! ## A037535.P11649920563166648743

`∑[10*a(n-1)-A057078(n)]` with `a(0)=1`
-/

namespace A037535.P11649920563166648743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A057078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037535.P11649920563166648743

namespace A037535

/-- `∑[10*a(n-1)-A057078(n)]` -/
def P11649920563166648743.Spec : Prop :=
  ∀ n, P11649920563166648743.a n = A037535 (n + 1)

end A037535

/-! ## A037535.P17762780302253549597

`gcd(2, A064989(n+1))+10*a(n-1)` with `a(0)=1`
-/

namespace A037535.P17762780302253549597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd 2 (A064989 (n + 1)) + 10 * a (n - 1)

end

end A037535.P17762780302253549597

namespace A037535

/-- `gcd(2, A064989(n+1))+10*a(n-1)` -/
def P17762780302253549597.Spec : Prop :=
  ∀ n, (P17762780302253549597.a n : ℤ) = A037535 (n + 1)

end A037535

/-! ## A037535.P1857508891829458533

`A100063(A053741(n))+5*2*a(n-1)` with `a(0)=1`
-/

namespace A037535.P1857508891829458533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100063 (A053741 n).toNat + 5 * (2 * a (n - 1))

end

end A037535.P1857508891829458533

namespace A037535

/-- `A100063(A053741(n))+5*2*a(n-1)` -/
def P1857508891829458533.Spec : Prop :=
  ∀ n, P1857508891829458533.a n = A037535 (n + 1)

end A037535

/-!
# A037536: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

The programs for A037536, the canonical program `A037536.P3672524535852802394` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037536 has offset 1).

The definition of A037536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037536.P3672524535852802394

`ogf((1+2x+x^2)/(1-3x-x^3+3x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037536

/-- `ogf((1+2x+x^2)/(1-3x-x^3+3x^4))` -/
def P3672524535852802394.Spec : Prop :=
  ∀ n, P3672524535852802394.a n = A037536 (n + 1)

theorem P3672524535852802394.correct : P3672524535852802394.Spec := by
  intro n
  simp only [A037536, Nat.add_sub_cancel]

end A037536

/-! ## A037536.P2090247481529191767

`floor(24*3^n/13)`
-/

namespace A037536.P2090247481529191767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊24 * ((3 ^ n : ℚ) / 13)⌋

end

end A037536.P2090247481529191767

namespace A037536

/-- `floor(24*3^n/13)` -/
def P2090247481529191767.Spec : Prop :=
  ∀ n, P2090247481529191767.a n = A037536 (n + 1)

end A037536

/-! ## A037536.P13974806411714434374

`C(2, n%3)+3*a(n-1)` with `a(0)=1`
-/

namespace A037536.P13974806411714434374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose 2 (n % 3) + 3 * a (n - 1)

end

end A037536.P13974806411714434374

namespace A037536

/-- `C(2, n%3)+3*a(n-1)` -/
def P13974806411714434374.Spec : Prop :=
  ∀ n, (P13974806411714434374.a n : ℤ) = A037536 (n + 1)

end A037536

/-! ## A037536.P3577030167024937011

`((n+1)%3)!+3*a(n-1)` with `a(0)=1`
-/

namespace A037536.P3577030167024937011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial ((n + 1) % 3) + 3 * a (n - 1)

end

end A037536.P3577030167024937011

namespace A037536

/-- `((n+1)%3)!+3*a(n-1)` -/
def P3577030167024937011.Spec : Prop :=
  ∀ n, (P3577030167024937011.a n : ℤ) = A037536 (n + 1)

end A037536

/-! ## A037536.P1208469579940350209

`3*a(n-1)+(∑[n]+1)%3` with `a(0)=1`
-/

namespace A037536.P1208469579940350209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3

end

end A037536.P1208469579940350209

namespace A037536

/-- `3*a(n-1)+(∑[n]+1)%3` -/
def P1208469579940350209.Spec : Prop :=
  ∀ n, (P1208469579940350209.a n : ℤ) = A037536 (n + 1)

end A037536

/-! ## A037536.P9146463859112518558

`(a(n-1)+n)%3+3*a(n-1)` with `a(0)=1`
-/

namespace A037536.P9146463859112518558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n) % 3 + 3 * a (n - 1)

end

end A037536.P9146463859112518558

namespace A037536

/-- `(a(n-1)+n)%3+3*a(n-1)` -/
def P9146463859112518558.Spec : Prop :=
  ∀ n, (P9146463859112518558.a n : ℤ) = A037536 (n + 1)

end A037536

/-! ## A037536.P15334653606025892300

`gcd(2, floor(a(n-1)/3))+3*a(n-1)` with `a(0)=1`
-/

namespace A037536.P15334653606025892300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd 2 ⌊(a (n - 1) : ℚ) / 3⌋ + 3 * a (n - 1)

end

end A037536.P15334653606025892300

namespace A037536

/-- `gcd(2, floor(a(n-1)/3))+3*a(n-1)` -/
def P15334653606025892300.Spec : Prop :=
  ∀ n, (P15334653606025892300.a n : ℤ) = A037536 (n + 1)

end A037536

/-! ## A037536.P15352875794599832419

`A037528(n+2)-3^(n+1)`
-/

namespace A037536.P15352875794599832419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037528 (n + 2) - (3 ^ (n + 1) : ℤ)

end

end A037536.P15352875794599832419

namespace A037536

/-- `A037528(n+2)-3^(n+1)` -/
def P15352875794599832419.Spec : Prop :=
  ∀ n, P15352875794599832419.a n = A037536 (n + 1)

end A037536

/-! ## A037536.P17570286082732879727

`A037552(n+1)-A077834(n)`
-/

namespace A037536.P17570286082732879727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037552 (n + 1) - A077834 n

end

end A037536.P17570286082732879727

namespace A037536

/-- `A037552(n+1)-A077834(n)` -/
def P17570286082732879727.Spec : Prop :=
  ∀ n, P17570286082732879727.a n = A037536 (n + 1)

end A037536

/-! ## A037536.P15034262112631357183

`A037560(n+1)-A033139(n+1)`
-/

namespace A037536.P15034262112631357183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037560 (n + 1) - A033139 (n + 1)

end

end A037536.P15034262112631357183

namespace A037536

/-- `A037560(n+1)-A033139(n+1)` -/
def P15034262112631357183.Spec : Prop :=
  ∀ n, P15034262112631357183.a n = A037536 (n + 1)

end A037536

/-! ## A037536.P4542672992057414321

`∑[2*A000244(n)]-A033121(n+1)`
-/

namespace A037536.P4542672992057414321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033121 (n + 1)

end

end A037536.P4542672992057414321

namespace A037536

/-- `∑[2*A000244(n)]-A033121(n+1)` -/
def P4542672992057414321.Spec : Prop :=
  ∀ n, P4542672992057414321.a n = A037536 (n + 1)

end A037536

/-!
# A037537: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

The programs for A037537, the canonical program `A037537.P12798162689611954640` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037537 has offset 1).

The definition of A037537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037537.P12798162689611954640

`ogf((1+2x+x^2)/(1-4x-x^3+4x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037537

/-- `ogf((1+2x+x^2)/(1-4x-x^3+4x^4))` -/
def P12798162689611954640.Spec : Prop :=
  ∀ n, P12798162689611954640.a n = A037537 (n + 1)

theorem P12798162689611954640.correct : P12798162689611954640.Spec := by
  intro n
  simp only [A037537, Nat.add_sub_cancel]

end A037537

/-! ## A037537.P12313071602333485829

`C(2, n%3)+4*a(n-1)` with `a(0)=1`
-/

namespace A037537.P12313071602333485829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose 2 (n % 3) + 4 * a (n - 1)

end

end A037537.P12313071602333485829

namespace A037537

/-- `C(2, n%3)+4*a(n-1)` -/
def P12313071602333485829.Spec : Prop :=
  ∀ n, (P12313071602333485829.a n : ℤ) = A037537 (n + 1)

end A037537

/-! ## A037537.P8571662272278452822

`4*a(n-1)+(∑[n]+1)%3` with `a(0)=1`
-/

namespace A037537.P8571662272278452822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3

end

end A037537.P8571662272278452822

namespace A037537

/-- `4*a(n-1)+(∑[n]+1)%3` -/
def P8571662272278452822.Spec : Prop :=
  ∀ n, (P8571662272278452822.a n : ℤ) = A037537 (n + 1)

end A037537

/-! ## A037537.P17978269759660427792

`xor(4*a(n-1), ((n+1)%3)!)` with `a(0)=1`
-/

namespace A037537.P17978269759660427792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1)) (Nat.factorial ((n + 1) % 3))

end

end A037537.P17978269759660427792

namespace A037537

/-- `xor(4*a(n-1), ((n+1)%3)!)` -/
def P17978269759660427792.Spec : Prop :=
  ∀ n, (P17978269759660427792.a n : ℤ) = A037537 (n + 1)

end A037537

/-! ## A037537.P3760883524596909138

`record[4*a(n-1)+2-n²%3]` with `a(0)=1, a(1)=0`
-/

namespace A037537.P3760883524596909138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  4 * f1 (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037537.P3760883524596909138

namespace A037537

/-- `record[4*a(n-1)+2-n²%3]` -/
def P3760883524596909138.Spec : Prop :=
  ∀ n, P3760883524596909138.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P16143625165040462525

`floor(A037653(n+1)/2)`
-/

namespace A037537.P16143625165040462525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037653 (n + 1) : ℚ) / 2⌋

end

end A037537.P16143625165040462525

namespace A037537

/-- `floor(A037653(n+1)/2)` -/
def P16143625165040462525.Spec : Prop :=
  ∀ n, P16143625165040462525.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P1527096779148183995

`∑[4*a(n-1)]-A033122(n+1)` with `a(0)=2`
-/

namespace A037537.P1527096779148183995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033122 (n + 1)

end

end A037537.P1527096779148183995

namespace A037537

/-- `∑[4*a(n-1)]-A033122(n+1)` -/
def P1527096779148183995.Spec : Prop :=
  ∀ n, P1527096779148183995.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P58242381731515124

`or(4*a(n-1), A000045(gcd(n+2, 1-n)))` with `a(0)=1`
-/

namespace A037537.P58242381731515124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) (A000045 (Int.gcd (n + 2 : ℤ) (1 - (n : ℤ))))

end

end A037537.P58242381731515124

namespace A037537

/-- `or(4*a(n-1), A000045(gcd(n+2, 1-n)))` -/
def P58242381731515124.Spec : Prop :=
  ∀ n, P58242381731515124.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P15262164066473262175

`∑[A178872(n)+A000302(n)]`
-/

namespace A037537.P15262164066473262175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037537.P15262164066473262175

namespace A037537

/-- `∑[A178872(n)+A000302(n)]` -/
def P15262164066473262175.Spec : Prop :=
  ∀ n, P15262164066473262175.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P12021730128291843765

`A178872(n)+A037529(n+1)`
-/

namespace A037537.P12021730128291843765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A037529 (n + 1)

end

end A037537.P12021730128291843765

namespace A037537

/-- `A178872(n)+A037529(n+1)` -/
def P12021730128291843765.Spec : Prop :=
  ∀ n, P12021730128291843765.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P5918829050830773419

`A037597(n+1)-A178872(n)`
-/

namespace A037537.P5918829050830773419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037597 (n + 1) - A178872 n

end

end A037537.P5918829050830773419

namespace A037537

/-- `A037597(n+1)-A178872(n)` -/
def P5918829050830773419.Spec : Prop :=
  ∀ n, P5918829050830773419.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P13791357424772063736

`∑[A178872(n)+A000079(n)²]`
-/

namespace A037537.P13791357424772063736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037537.P13791357424772063736

namespace A037537

/-- `∑[A178872(n)+A000079(n)²]` -/
def P13791357424772063736.Spec : Prop :=
  ∀ n, P13791357424772063736.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P4418500169350761360

`∑[A178872(n)+A000079(2*n)]`
-/

namespace A037537.P4418500169350761360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037537.P4418500169350761360

namespace A037537

/-- `∑[A178872(n)+A000079(2*n)]` -/
def P4418500169350761360.Spec : Prop :=
  ∀ n, P4418500169350761360.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P1686056100476938982

`∑[A178872(n)+A004171(n)/2]`
-/

namespace A037537.P1686056100476938982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178872 n : ℚ) + (A004171 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037537.P1686056100476938982

namespace A037537

/-- `∑[A178872(n)+A004171(n)/2]` -/
def P1686056100476938982.Spec : Prop :=
  ∀ n, P1686056100476938982.a n = (A037537 (n + 1) : ℚ)

end A037537

/-! ## A037537.P9701468173114853564

`A037561(n+1)-A033140(n+1)`
-/

namespace A037537.P9701468173114853564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037561 (n + 1) - A033140 (n + 1)

end

end A037537.P9701468173114853564

namespace A037537

/-- `A037561(n+1)-A033140(n+1)` -/
def P9701468173114853564.Spec : Prop :=
  ∀ n, P9701468173114853564.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P7075118153665601095

`A037639(n+1)-A033131(n+1)`
-/

namespace A037537.P7075118153665601095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037639 (n + 1) - A033131 (n + 1)

end

end A037537.P7075118153665601095

namespace A037537

/-- `A037639(n+1)-A033131(n+1)` -/
def P7075118153665601095.Spec : Prop :=
  ∀ n, P7075118153665601095.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P7088333044831699380

`A037553(n+1)-A178872(n+1)`
-/

namespace A037537.P7088333044831699380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037553 (n + 1) - A178872 (n + 1)

end

end A037537.P7088333044831699380

namespace A037537

/-- `A037553(n+1)-A178872(n+1)` -/
def P7088333044831699380.Spec : Prop :=
  ∀ n, P7088333044831699380.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P8353666390250922070

`A037590(n+1)+2*A178872(n)`
-/

namespace A037537.P8353666390250922070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037590 (n + 1) + 2 * A178872 n

end

end A037537.P8353666390250922070

namespace A037537

/-- `A037590(n+1)+2*A178872(n)` -/
def P8353666390250922070.Spec : Prop :=
  ∀ n, P8353666390250922070.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P15083865432152489712

`xor(A037513(n+1), A037667(n+1))`
-/

namespace A037537.P15083865432152489712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037513 (n + 1)) (A037667 (n + 1))

end

end A037537.P15083865432152489712

namespace A037537

/-- `xor(A037513(n+1), A037667(n+1))` -/
def P15083865432152489712.Spec : Prop :=
  ∀ n, P15083865432152489712.a n = A037537 (n + 1)

end A037537

/-! ## A037537.P16421786367986051310

`xor(A037639(n+1), A037660(n+1))`
-/

namespace A037537.P16421786367986051310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037639 (n + 1)) (A037660 (n + 1))

end

end A037537.P16421786367986051310

namespace A037537

/-- `xor(A037639(n+1), A037660(n+1))` -/
def P16421786367986051310.Spec : Prop :=
  ∀ n, P16421786367986051310.a n = A037537 (n + 1)

end A037537

/-!
# A037538: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

The programs for A037538, the canonical program `A037538.P13284509683804983954` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037538 has offset 1).

The definition of A037538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037538.P13284509683804983954

`ogf((1+2x+x^2)/(1-5x-x^3+5x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037538

/-- `ogf((1+2x+x^2)/(1-5x-x^3+5x^4))` -/
def P13284509683804983954.Spec : Prop :=
  ∀ n, P13284509683804983954.a n = A037538 (n + 1)

theorem P13284509683804983954.correct : P13284509683804983954.Spec := by
  intro n
  simp only [A037538, Nat.add_sub_cancel]

end A037538

/-! ## A037538.P660177465705737017

`((n+1)%3)!+5*a(n-1)` with `a(0)=1`
-/

namespace A037538.P660177465705737017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial ((n + 1) % 3) + 5 * a (n - 1)

end

end A037538.P660177465705737017

namespace A037538

/-- `((n+1)%3)!+5*a(n-1)` -/
def P660177465705737017.Spec : Prop :=
  ∀ n, (P660177465705737017.a n : ℤ) = A037538 (n + 1)

end A037538

/-! ## A037538.P1776872253557503953

`lcm(5, a(n-1))+(∑[n]+1)%3` with `a(0)=1`
-/

namespace A037538.P1776872253557503953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 5 (a (n - 1)) + (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3

end

end A037538.P1776872253557503953

namespace A037538

/-- `lcm(5, a(n-1))+(∑[n]+1)%3` -/
def P1776872253557503953.Spec : Prop :=
  ∀ n, (P1776872253557503953.a n : ℤ) = A037538 (n + 1)

end A037538

/-! ## A037538.P9180807713182574267

`gcd(2, a(n-2))+5*a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A037538.P9180807713182574267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Nat.gcd 2 (a (n - 2)) + 5 * a (n - 1)

end

end A037538.P9180807713182574267

namespace A037538

/-- `gcd(2, a(n-2))+5*a(n-1)` -/
def P9180807713182574267.Spec : Prop :=
  ∀ n, (P9180807713182574267.a n : ℤ) = A037538 (n + 1)

end A037538

/-! ## A037538.P6238463978877262325

`∑[5*a(n-1)+A080782(n+1)-n-1]` with `a(0)=1`
-/

namespace A037538.P6238463978877262325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) + (A080782 (n + 1) - (n : ℤ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037538.P6238463978877262325

namespace A037538

/-- `∑[5*a(n-1)+A080782(n+1)-n-1]` -/
def P6238463978877262325.Spec : Prop :=
  ∀ n, P6238463978877262325.a n = A037538 (n + 1)

end A037538

/-! ## A037538.P10112221162647869438

`A037562(n+1)-A033141(n+1)`
-/

namespace A037538.P10112221162647869438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037562 (n + 1) - A033141 (n + 1)

end

end A037538.P10112221162647869438

namespace A037538

/-- `A037562(n+1)-A033141(n+1)` -/
def P10112221162647869438.Spec : Prop :=
  ∀ n, P10112221162647869438.a n = A037538 (n + 1)

end A037538

/-! ## A037538.P7562976490718408139

`∑[2*A000351(n)]-A033123(n+1)`
-/

namespace A037538.P7562976490718408139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033123 (n + 1)

end

end A037538.P7562976490718408139

namespace A037538

/-- `∑[2*A000351(n)]-A033123(n+1)` -/
def P7562976490718408139.Spec : Prop :=
  ∀ n, P7562976490718408139.a n = A037538 (n + 1)

end A037538

/-! ## A037538.P16823640965875557952

`(A037612(n+1)+A033132(n+1))/2`
-/

namespace A037538.P16823640965875557952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037612 (n + 1) + A033132 (n + 1) : ℚ) / 2

end

end A037538.P16823640965875557952

namespace A037538

/-- `(A037612(n+1)+A033132(n+1))/2` -/
def P16823640965875557952.Spec : Prop :=
  ∀ n, P16823640965875557952.a n = (A037538 (n + 1) : ℚ)

end A037538

/-! ## A037538.P16009746478968220988

`A037640(n+1)+∑[A037612(n+1)-A037640(n+1)]`
-/

namespace A037538.P16009746478968220988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037612 (n + 1) - A037640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037640 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037538.P16009746478968220988

namespace A037538

/-- `A037640(n+1)+∑[A037612(n+1)-A037640(n+1)]` -/
def P16009746478968220988.Spec : Prop :=
  ∀ n, P16009746478968220988.a n = A037538 (n + 1)

end A037538

/-! ## A037538.P18094963415530392784

`A037530(n+2)-A020729(n+1)/2`
-/

namespace A037538.P18094963415530392784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037530 (n + 2) : ℚ) - (A020729 (n + 1) : ℚ) / 2

end

end A037538.P18094963415530392784

namespace A037538

/-- `A037530(n+2)-A020729(n+1)/2` -/
def P18094963415530392784.Spec : Prop :=
  ∀ n, P18094963415530392784.a n = (A037538 (n + 1) : ℚ)

end A037538

/-!
# A037539: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

The programs for A037539, the canonical program `A037539.P16402649115183102783` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037539 has offset 1).

The definition of A037539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037539.P16402649115183102783

`ogf((1+2x+x^2)/(1-6x-x^3+6x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037539

/-- `ogf((1+2x+x^2)/(1-6x-x^3+6x^4))` -/
def P16402649115183102783.Spec : Prop :=
  ∀ n, P16402649115183102783.a n = A037539 (n + 1)

theorem P16402649115183102783.correct : P16402649115183102783.Spec := by
  intro n
  simp only [A037539, Nat.add_sub_cancel]

end A037539

/-! ## A037539.P14616036897209245101

`((n+1)%3)!+6*a(n-1)` with `a(0)=1`
-/

namespace A037539.P14616036897209245101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial ((n + 1) % 3) + 6 * a (n - 1)

end

end A037539.P14616036897209245101

namespace A037539

/-- `((n+1)%3)!+6*a(n-1)` -/
def P14616036897209245101.Spec : Prop :=
  ∀ n, (P14616036897209245101.a n : ℤ) = A037539 (n + 1)

end A037539

/-! ## A037539.P9361511261756152755

`∑[6*a(n-1)-A163804(n)]` with `a(0)=1`
-/

namespace A037539.P9361511261756152755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - A163804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037539.P9361511261756152755

namespace A037539

/-- `∑[6*a(n-1)-A163804(n)]` -/
def P9361511261756152755.Spec : Prop :=
  ∀ n, P9361511261756152755.a n = A037539 (n + 1)

end A037539

/-! ## A037539.P16452265996832876128

`A037563(n+1)-A033142(n+1)`
-/

namespace A037539.P16452265996832876128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037563 (n + 1) - A033142 (n + 1)

end

end A037539.P16452265996832876128

namespace A037539

/-- `A037563(n+1)-A033142(n+1)` -/
def P16452265996832876128.Spec : Prop :=
  ∀ n, P16452265996832876128.a n = A037539 (n + 1)

end A037539

/-! ## A037539.P9691921595901220648

`∑[2*A000400(n)]-A033124(n+1)`
-/

namespace A037539.P9691921595901220648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033124 (n + 1)

end

end A037539.P9691921595901220648

namespace A037539

/-- `∑[2*A000400(n)]-A033124(n+1)` -/
def P9691921595901220648.Spec : Prop :=
  ∀ n, P9691921595901220648.a n = A037539 (n + 1)

end A037539

/-! ## A037539.P7432885165761384162

`A037523(n+1)+A037531(n+1)-A037515(n+1)`
-/

namespace A037539.P7432885165761384162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) + (A037531 (n + 1) - A037515 (n + 1))

end

end A037539.P7432885165761384162

namespace A037539

/-- `A037523(n+1)+A037531(n+1)-A037515(n+1)` -/
def P7432885165761384162.Spec : Prop :=
  ∀ n, P7432885165761384162.a n = A037539 (n + 1)

end A037539

/-! ## A037539.P8850392711516710657

`A037515(n+1)+A037599(n+1)-A037523(n+1)`
-/

namespace A037539.P8850392711516710657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) + (A037599 (n + 1) - A037523 (n + 1))

end

end A037539.P8850392711516710657

namespace A037539

/-- `A037515(n+1)+A037599(n+1)-A037523(n+1)` -/
def P8850392711516710657.Spec : Prop :=
  ∀ n, P8850392711516710657.a n = A037539 (n + 1)

end A037539

/-! ## A037539.P2706110909638979006

`(A037599(n+1)+A037531(n+1))/2`
-/

namespace A037539.P2706110909638979006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037599 (n + 1) + A037531 (n + 1) : ℚ) / 2

end

end A037539.P2706110909638979006

namespace A037539

/-- `(A037599(n+1)+A037531(n+1))/2` -/
def P2706110909638979006.Spec : Prop :=
  ∀ n, P2706110909638979006.a n = (A037539 (n + 1) : ℚ)

end A037539

/-! ## A037539.P2604792788191339731

`A037641(n+1)+∑[A037613(n+1)-A037641(n+1)]`
-/

namespace A037539.P2604792788191339731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037613 (n + 1) - A037641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037641 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037539.P2604792788191339731

namespace A037539

/-- `A037641(n+1)+∑[A037613(n+1)-A037641(n+1)]` -/
def P2604792788191339731.Spec : Prop :=
  ∀ n, P2604792788191339731.a n = A037539 (n + 1)

end A037539

/-!
# A037540: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

The programs for A037540, the canonical program `A037540.P9383526262443881977` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037540 has offset 1).

The definition of A037540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037540.P9383526262443881977

`ogf((1+2x+x^2)/(1-7x-x^3+7x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037540

/-- `ogf((1+2x+x^2)/(1-7x-x^3+7x^4))` -/
def P9383526262443881977.Spec : Prop :=
  ∀ n, P9383526262443881977.a n = A037540 (n + 1)

theorem P9383526262443881977.correct : P9383526262443881977.Spec := by
  intro n
  simp only [A037540, Nat.add_sub_cancel]

end A037540

/-! ## A037540.P3891442172934062083

`dr(∑[n]²+1)+7*a(n-1)` with `a(0)=1`
-/

namespace A037540.P3891442172934062083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℤ) + 7 * a (n - 1)

end

end A037540.P3891442172934062083

namespace A037540

/-- `dr(∑[n]²+1)+7*a(n-1)` -/
def P3891442172934062083.Spec : Prop :=
  ∀ n, (P3891442172934062083.a n : ℤ) = A037540 (n + 1)

end A037540

/-! ## A037540.P16411424750419214699

`∑[7*a(n-1)+(n+1)%3-1]` with `a(0)=1`
-/

namespace A037540.P16411424750419214699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) + ((((n + 1) % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037540.P16411424750419214699

namespace A037540

/-- `∑[7*a(n-1)+(n+1)%3-1]` -/
def P16411424750419214699.Spec : Prop :=
  ∀ n, P16411424750419214699.a n = A037540 (n + 1)

end A037540

/-! ## A037540.P7409704121245041989

`A131534(n)+lcm(7, a(n-1))` with `a(0)=1`
-/

namespace A037540.P7409704121245041989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131534 n + (Int.lcm 7 (a (n - 1)) : ℤ)

end

end A037540.P7409704121245041989

namespace A037540

/-- `A131534(n)+lcm(7, a(n-1))` -/
def P7409704121245041989.Spec : Prop :=
  ∀ n, P7409704121245041989.a n = A037540 (n + 1)

end A037540

/-! ## A037540.P16613832728423644146

`∑[7*a(n-1)-A163804(n)]` with `a(0)=1`
-/

namespace A037540.P16613832728423644146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) - A163804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037540.P16613832728423644146

namespace A037540

/-- `∑[7*a(n-1)-A163804(n)]` -/
def P16613832728423644146.Spec : Prop :=
  ∀ n, P16613832728423644146.a n = A037540 (n + 1)

end A037540

/-! ## A037540.P3335626844633600502

`A080425(n)+or(1, 7*a(n-1))` with `a(0)=1`
-/

namespace A037540.P3335626844633600502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080425 n + Int.lor 1 (7 * a (n - 1))

end

end A037540.P3335626844633600502

namespace A037540

/-- `A080425(n)+or(1, 7*a(n-1))` -/
def P3335626844633600502.Spec : Prop :=
  ∀ n, P3335626844633600502.a n = A037540 (n + 1)

end A037540

/-! ## A037540.P10924056377142318126

`A037564(n+1)-A033143(n+1)`
-/

namespace A037540.P10924056377142318126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037564 (n + 1) - A033143 (n + 1)

end

end A037540.P10924056377142318126

namespace A037540

/-- `A037564(n+1)-A033143(n+1)` -/
def P10924056377142318126.Spec : Prop :=
  ∀ n, P10924056377142318126.a n = A037540 (n + 1)

end A037540

/-! ## A037540.P721586715647869186

`A037532(n+2)-A000420(n+1)`
-/

namespace A037540.P721586715647869186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 2) - A000420 (n + 1)

end

end A037540.P721586715647869186

namespace A037540

/-- `A037532(n+2)-A000420(n+1)` -/
def P721586715647869186.Spec : Prop :=
  ∀ n, P721586715647869186.a n = A037540 (n + 1)

end A037540

/-! ## A037540.P11542547068111465442

`ceil((A037642(n+1)+A037614(n+1)-1)/3)`
-/

namespace A037540.P11542547068111465442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037642 (n + 1) + A037614 (n + 1) - 1 : ℚ) / 3⌉

end

end A037540.P11542547068111465442

namespace A037540

/-- `ceil((A037642(n+1)+A037614(n+1)-1)/3)` -/
def P11542547068111465442.Spec : Prop :=
  ∀ n, P11542547068111465442.a n = A037540 (n + 1)

end A037540

/-! ## A037540.P6388315876501102067

`A037524(n+1)+A037532(n+1)-A037516(n+1)`
-/

namespace A037540.P6388315876501102067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037524 (n + 1) + (A037532 (n + 1) - A037516 (n + 1))

end

end A037540.P6388315876501102067

namespace A037540

/-- `A037524(n+1)+A037532(n+1)-A037516(n+1)` -/
def P6388315876501102067.Spec : Prop :=
  ∀ n, P6388315876501102067.a n = A037540 (n + 1)

end A037540

/-! ## A037540.P18171833349414345873

`A037548(n+1)+A037556(n+1)-A037572(n+1)`
-/

namespace A037540.P18171833349414345873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1) + (A037556 (n + 1) - A037572 (n + 1))

end

end A037540.P18171833349414345873

namespace A037540

/-- `A037548(n+1)+A037556(n+1)-A037572(n+1)` -/
def P18171833349414345873.Spec : Prop :=
  ∀ n, P18171833349414345873.a n = A037540 (n + 1)

end A037540

/-! ## A037540.P12426401256489710162

`Δ[∑[A037556(n+1)]-A037564(n+1)]`
-/

namespace A037540.P12426401256489710162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037556 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037540.P12426401256489710162

namespace A037540

/-- `Δ[∑[A037556(n+1)]-A037564(n+1)]` -/
def P12426401256489710162.Spec : Prop :=
  ∀ n, P12426401256489710162.a n = A037540 (n + 1)

end A037540

/-!
# A037541: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

The programs for A037541, the canonical program `A037541.P8759723883998485943` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037541 has offset 1).

The definition of A037541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037541.P8759723883998485943

`ogf((1+2x+x^2)/(1-8x-x^3+8x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037541

/-- `ogf((1+2x+x^2)/(1-8x-x^3+8x^4))` -/
def P8759723883998485943.Spec : Prop :=
  ∀ n, P8759723883998485943.a n = A037541 (n + 1)

theorem P8759723883998485943.correct : P8759723883998485943.Spec := by
  intro n
  simp only [A037541, Nat.add_sub_cancel]

end A037541

/-! ## A037541.P7369799322513158392

`(∑[n]+1)%3+8*a(n-1)` with `a(0)=1`
-/

namespace A037541.P7369799322513158392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3 + 8 * a (n - 1)

end

end A037541.P7369799322513158392

namespace A037541

/-- `(∑[n]+1)%3+8*a(n-1)` -/
def P7369799322513158392.Spec : Prop :=
  ∀ n, (P7369799322513158392.a n : ℤ) = A037541 (n + 1)

end A037541

/-! ## A037541.P3209412461160373615

`xor(8*a(n-1), ((n+1)%3)!)` with `a(0)=1`
-/

namespace A037541.P3209412461160373615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (8 * a (n - 1)) (Nat.factorial ((n + 1) % 3))

end

end A037541.P3209412461160373615

namespace A037541

/-- `xor(8*a(n-1), ((n+1)%3)!)` -/
def P3209412461160373615.Spec : Prop :=
  ∀ n, (P3209412461160373615.a n : ℤ) = A037541 (n + 1)

end A037541

/-! ## A037541.P1269273276826797337

`xor(3, gcd(2, n%3)+8*a(n-1))` with `a(0)=1`
-/

namespace A037541.P1269273276826797337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 3 (Nat.gcd 2 (n % 3) + 8 * a (n - 1))

end

end A037541.P1269273276826797337

namespace A037541

/-- `xor(3, gcd(2, n%3)+8*a(n-1))` -/
def P1269273276826797337.Spec : Prop :=
  ∀ n, (P1269273276826797337.a n : ℤ) = A037541 (n + 1)

end A037541

/-! ## A037541.P6837420820982172058

`or(8*a(n-1), char[3*n])+(2*n)%3` with `a(0)=1`
-/

namespace A037541.P6837420820982172058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (8 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0) + 2 * n % 3

end

end A037541.P6837420820982172058

namespace A037541

/-- `or(8*a(n-1), char[3*n])+(2*n)%3` -/
def P6837420820982172058.Spec : Prop :=
  ∀ n, (P6837420820982172058.a n : ℤ) = A037541 (n + 1)

end A037541

/-! ## A037541.P12696490034132258578

`Δ[A042965(n+1)]+8*a(n-1)` with `a(0)=1`
-/

namespace A037541.P12696490034132258578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 8 * a (n - 1)

end

end A037541.P12696490034132258578

namespace A037541

/-- `Δ[A042965(n+1)]+8*a(n-1)` -/
def P12696490034132258578.Spec : Prop :=
  ∀ n, P12696490034132258578.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P2713194435174166393

`or(8*a(n-1), Δ[A024352(n+1)])` with `a(0)=1`
-/

namespace A037541.P2713194435174166393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (8 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037541.P2713194435174166393

namespace A037541

/-- `or(8*a(n-1), Δ[A024352(n+1)])` -/
def P2713194435174166393.Spec : Prop :=
  ∀ n, P2713194435174166393.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P5930453256022067501

`∑[8*a(n-1)-(n-A064429(n))]` with `a(0)=1`
-/

namespace A037541.P5930453256022067501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  8 * f1 (n - 1) - ((n : ℤ) - A064429 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037541.P5930453256022067501

namespace A037541

/-- `∑[8*a(n-1)-(n-A064429(n))]` -/
def P5930453256022067501.Spec : Prop :=
  ∀ n, P5930453256022067501.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P13233876634400988646

`A037643(n+1)-A033135(n+1)`
-/

namespace A037541.P13233876634400988646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 1) - A033135 (n + 1)

end

end A037541.P13233876634400988646

namespace A037541

/-- `A037643(n+1)-A033135(n+1)` -/
def P13233876634400988646.Spec : Prop :=
  ∀ n, P13233876634400988646.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P12830931065591421804

`xor(A037643(n+1), A037664(n+1))`
-/

namespace A037541.P12830931065591421804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037643 (n + 1)) (A037664 (n + 1))

end

end A037541.P12830931065591421804

namespace A037541

/-- `xor(A037643(n+1), A037664(n+1))` -/
def P12830931065591421804.Spec : Prop :=
  ∀ n, P12830931065591421804.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P4762517830891714549

`2*A037533(n+1)-A037594(n+1)`
-/

namespace A037541.P4762517830891714549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037533 (n + 1) - A037594 (n + 1)

end

end A037541.P4762517830891714549

namespace A037541

/-- `2*A037533(n+1)-A037594(n+1)` -/
def P4762517830891714549.Spec : Prop :=
  ∀ n, P4762517830891714549.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P6152767228956666289

`2*A037549(n+1)-A037608(n+1)`
-/

namespace A037541.P6152767228956666289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037549 (n + 1) - A037608 (n + 1)

end

end A037541.P6152767228956666289

namespace A037541

/-- `2*A037549(n+1)-A037608(n+1)` -/
def P6152767228956666289.Spec : Prop :=
  ∀ n, P6152767228956666289.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P14285940994774131797

`xor(2*A033135(n+1), A037650(n+1))`
-/

namespace A037541.P14285940994774131797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033135 (n + 1)) (A037650 (n + 1))

end

end A037541.P14285940994774131797

namespace A037541

/-- `xor(2*A033135(n+1), A037650(n+1))` -/
def P14285940994774131797.Spec : Prop :=
  ∀ n, P14285940994774131797.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P6401941614113539630

`or(A037549(n+1)-A033126(n+1), A033126(n+1))`
-/

namespace A037541.P6401941614113539630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037549 (n + 1) - A033126 (n + 1)) (A033126 (n + 1))

end

end A037541.P6401941614113539630

namespace A037541

/-- `or(A037549(n+1)-A033126(n+1), A033126(n+1))` -/
def P6401941614113539630.Spec : Prop :=
  ∀ n, P6401941614113539630.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P3014022814351460486

`A037643(n+1)+∑[A037615(n+1)-A037643(n+1)]`
-/

namespace A037541.P3014022814351460486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037615 (n + 1) - A037643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037541.P3014022814351460486

namespace A037541

/-- `A037643(n+1)+∑[A037615(n+1)-A037643(n+1)]` -/
def P3014022814351460486.Spec : Prop :=
  ∀ n, P3014022814351460486.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P15111559636923097036

`A037533(n+2)-A001018(n+1)`
-/

namespace A037541.P15111559636923097036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037533 (n + 2) - A001018 (n + 1)

end

end A037541.P15111559636923097036

namespace A037541

/-- `A037533(n+2)-A001018(n+1)` -/
def P15111559636923097036.Spec : Prop :=
  ∀ n, P15111559636923097036.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P18310144956736108548

`and(A037608(n+1), A037615(n+2))`
-/

namespace A037541.P18310144956736108548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037608 (n + 1)) (A037615 (n + 2))

end

end A037541.P18310144956736108548

namespace A037541

/-- `and(A037608(n+1), A037615(n+2))` -/
def P18310144956736108548.Spec : Prop :=
  ∀ n, P18310144956736108548.a n = A037541 (n + 1)

end A037541

/-! ## A037541.P10071173111089711282

`and(A037533(n+2), A245599(n+1))`
-/

namespace A037541.P10071173111089711282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037533 (n + 2)) (A245599 (n + 1))

end

end A037541.P10071173111089711282

namespace A037541

/-- `and(A037533(n+2), A245599(n+1))` -/
def P10071173111089711282.Spec : Prop :=
  ∀ n, P10071173111089711282.a n = A037541 (n + 1)

end A037541

/-!
# A037542: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

The programs for A037542, the canonical program `A037542.P8265622461899931253` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037542 has offset 1).

The definition of A037542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037542.P8265622461899931253

`ogf((1+2x+x^2)/(1-9x-x^3+9x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037542

/-- `ogf((1+2x+x^2)/(1-9x-x^3+9x^4))` -/
def P8265622461899931253.Spec : Prop :=
  ∀ n, P8265622461899931253.a n = A037542 (n + 1)

theorem P8265622461899931253.correct : P8265622461899931253.Spec := by
  intro n
  simp only [A037542, Nat.add_sub_cancel]

end A037542

/-! ## A037542.P879070109763145588

`((n+1)%3)!+9*a(n-1)` with `a(0)=1`
-/

namespace A037542.P879070109763145588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial ((n + 1) % 3) + 9 * a (n - 1)

end

end A037542.P879070109763145588

namespace A037542

/-- `((n+1)%3)!+9*a(n-1)` -/
def P879070109763145588.Spec : Prop :=
  ∀ n, (P879070109763145588.a n : ℤ) = A037542 (n + 1)

end A037542

/-! ## A037542.P3041577449899768185

`∑[9*a(n-1)-(n%3-1)]-∑{#}[floor(n/3), 9^(n-3*#)]` with `a(0)=2`
-/

namespace A037542.P3041577449899768185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  9 * f1 (n - 1) - (((n % 3 : ℕ) : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - ∑ k ∈ Finset.range (f2 n + 1).toNat, (9 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ)

end

end A037542.P3041577449899768185

namespace A037542

/-- `∑[9*a(n-1)-(n%3-1)]-∑{#}[floor(n/3), 9^(n-3*#)]` -/
def P3041577449899768185.Spec : Prop :=
  ∀ n, P3041577449899768185.a n = (A037542 (n + 1) : ℚ)

end A037542

/-! ## A037542.P15324890218264490350

`A131534(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A037542.P15324890218264490350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131534 n + 9 * a (n - 1)

end

end A037542.P15324890218264490350

namespace A037542

/-- `A131534(n)+9*a(n-1)` -/
def P15324890218264490350.Spec : Prop :=
  ∀ n, P15324890218264490350.a n = A037542 (n + 1)

end A037542

/-! ## A037542.P4545026349233285915

`A037510(n+1)-∑[9*a(n-1)-(n%3-1)]` with `a(0)=0`
-/

namespace A037542.P4545026349233285915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  9 * f1 (n - 1) - (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037510 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037542.P4545026349233285915

namespace A037542

/-- `A037510(n+1)-∑[9*a(n-1)-(n%3-1)]` -/
def P4545026349233285915.Spec : Prop :=
  ∀ n, P4545026349233285915.a n = A037542 (n + 1)

end A037542

/-! ## A037542.P16649684380333184171

`A037566(n+1)-A033145(n+1)`
-/

namespace A037542.P16649684380333184171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037566 (n + 1) - A033145 (n + 1)

end

end A037542.P16649684380333184171

namespace A037542

/-- `A037566(n+1)-A033145(n+1)` -/
def P16649684380333184171.Spec : Prop :=
  ∀ n, P16649684380333184171.a n = A037542 (n + 1)

end A037542

/-! ## A037542.P9702062922667572647

`A037644(n+1)-A033136(n+1)`
-/

namespace A037542.P9702062922667572647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037644 (n + 1) - A033136 (n + 1)

end

end A037542.P9702062922667572647

namespace A037542

/-- `A037644(n+1)-A033136(n+1)` -/
def P9702062922667572647.Spec : Prop :=
  ∀ n, P9702062922667572647.a n = A037542 (n + 1)

end A037542

/-! ## A037542.P8144839289534300793

`9*a(n-1)-A099530(Δ[A219529(n)])` with `a(0)=1`
-/

namespace A037542.P8144839289534300793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - A099530 (f1 (n + 1) - f1 n).toNat

end

end A037542.P8144839289534300793

namespace A037542

/-- `9*a(n-1)-A099530(Δ[A219529(n)])` -/
def P8144839289534300793.Spec : Prop :=
  ∀ n, P8144839289534300793.a n = A037542 (n + 1)

end A037542

/-! ## A037542.P12415396582763400645

`A033136(n+1)+A037534(n+1)-A033127(n+1)`
-/

namespace A037542.P12415396582763400645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033136 (n + 1) + (A037534 (n + 1) - A033127 (n + 1))

end

end A037542.P12415396582763400645

namespace A037542

/-- `A033136(n+1)+A037534(n+1)-A033127(n+1)` -/
def P12415396582763400645.Spec : Prop :=
  ∀ n, P12415396582763400645.a n = A037542 (n + 1)

end A037542

/-! ## A037542.P16888832965587744446

`A037550(n+1)+A037558(n+1)-A037574(n+1)`
-/

namespace A037542.P16888832965587744446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037550 (n + 1) + (A037558 (n + 1) - A037574 (n + 1))

end

end A037542.P16888832965587744446

namespace A037542

/-- `A037550(n+1)+A037558(n+1)-A037574(n+1)` -/
def P16888832965587744446.Spec : Prop :=
  ∀ n, P16888832965587744446.a n = A037542 (n + 1)

end A037542

/-! ## A037542.P15430994788471417433

`A037644(n+1)+∑[A037616(n+1)-A037644(n+1)]`
-/

namespace A037542.P15430994788471417433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037616 (n + 1) - A037644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037644 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037542.P15430994788471417433

namespace A037542

/-- `A037644(n+1)+∑[A037616(n+1)-A037644(n+1)]` -/
def P15430994788471417433.Spec : Prop :=
  ∀ n, P15430994788471417433.a n = A037542 (n + 1)

end A037542

/-! ## A037542.P3127723995085959682

`A037552(2*(n+1))%A037558(n+1)`
-/

namespace A037542.P3127723995085959682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037552 (2 * (n + 1))) (A037558 (n + 1))

end

end A037542.P3127723995085959682

namespace A037542

/-- `A037552(2*(n+1))%A037558(n+1)` -/
def P3127723995085959682.Spec : Prop :=
  ∀ n, P3127723995085959682.a n = A037542 (n + 1)

end A037542

/-!
# A037543: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,1.

The programs for A037543, the canonical program `A037543.P7427484013029226129` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037543 has offset 1).

The definition of A037543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037543.P7427484013029226129

`floor(121/999*10^(n+1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037543

/-- `floor(121/999*10^(n+1))` -/
def P7427484013029226129.Spec : Prop :=
  ∀ n, P7427484013029226129.a n = A037543 (n + 1)

theorem P7427484013029226129.correct : P7427484013029226129.Spec := by
  intro n
  simp only [A037543, Nat.add_sub_cancel]

end A037543

/-! ## A037543.P7964943907344181180

`ogf((1+2x+x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037543.P7964943907344181180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -10, 0, -1, 10] n

end

end A037543.P7964943907344181180

namespace A037543

/-- `ogf((1+2x+x^2)/(1-10x-x^3+10x^4))` -/
def P7964943907344181180.Spec : Prop :=
  ∀ n, P7964943907344181180.a n = A037543 (n + 1)

end A037543

/-! ## A037543.P3012289322371331431

`∑[10*a(n-1)-A163804(n)]` with `a(0)=1`
-/

namespace A037543.P3012289322371331431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A163804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037543.P3012289322371331431

namespace A037543

/-- `∑[10*a(n-1)-A163804(n)]` -/
def P3012289322371331431.Spec : Prop :=
  ∀ n, P3012289322371331431.a n = A037543 (n + 1)

end A037543

/-! ## A037543.P5933471584387205740

`10*a(n-1)-A001489(Δ[comp[4*n+2]])` with `a(0)=1`
-/

namespace A037543.P5933471584387205740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - A001489 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037543.P5933471584387205740

namespace A037543

/-- `10*a(n-1)-A001489(Δ[comp[4*n+2]])` -/
def P5933471584387205740.Spec : Prop :=
  ∀ n, P5933471584387205740.a n = A037543 (n + 1)

end A037543

/-! ## A037543.P5635875361108674725

`10*a(n-1)-A099530(Δ[A219529(n)])` with `a(0)=1`
-/

namespace A037543.P5635875361108674725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - A099530 (f1 (n + 1) - f1 n).toNat

end

end A037543.P5635875361108674725

namespace A037543

/-- `10*a(n-1)-A099530(Δ[A219529(n)])` -/
def P5635875361108674725.Spec : Prop :=
  ∀ n, P5635875361108674725.a n = A037543 (n + 1)

end A037543

/-! ## A037543.P18306397945822898069

`Δ[∑[A037535(n)]-A000042(n+1)]`
-/

namespace A037543.P18306397945822898069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037535 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037543.P18306397945822898069

namespace A037543

/-- `Δ[∑[A037535(n)]-A000042(n+1)]` -/
def P18306397945822898069.Spec : Prop :=
  ∀ n, P18306397945822898069.a n = A037543 (n + 1)

end A037543

/-!
# A037544: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

The programs for A037544, the canonical program `A037544.P6594835991988373231` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037544 has offset 1).

The definition of A037544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037544.P6594835991988373231

`ogf((1+2x+2x^2)/(1-3x-x^3+3x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037544

/-- `ogf((1+2x+2x^2)/(1-3x-x^3+3x^4))` -/
def P6594835991988373231.Spec : Prop :=
  ∀ n, P6594835991988373231.a n = A037544 (n + 1)

theorem P6594835991988373231.correct : P6594835991988373231.Spec := by
  intro n
  simp only [A037544, Nat.add_sub_cancel]

end A037544

/-! ## A037544.P16506962257957251514

`round(17*∑[3^n/13])`
-/

namespace A037544.P16506962257957251514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (17 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A037544.P16506962257957251514

namespace A037544

/-- `round(17*∑[3^n/13])` -/
def P16506962257957251514.Spec : Prop :=
  ∀ n, P16506962257957251514.a n = A037544 (n + 1)

end A037544

/-! ## A037544.P4425049415922088426

`3*a(n-1)+(n²+1)%3` with `a(0)=1`
-/

namespace A037544.P4425049415922088426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (n ^ 2 + 1) % 3

end

end A037544.P4425049415922088426

namespace A037544

/-- `3*a(n-1)+(n²+1)%3` -/
def P4425049415922088426.Spec : Prop :=
  ∀ n, (P4425049415922088426.a n : ℤ) = A037544 (n + 1)

end A037544

/-! ## A037544.P6604100358696295980

`(3-gcd(3, n))!+3*a(n-1)` with `a(0)=1`
-/

namespace A037544.P6604100358696295980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (3 - (Nat.gcd 3 n : ℤ)).toNat + 3 * a (n - 1)

end

end A037544.P6604100358696295980

namespace A037544

/-- `(3-gcd(3, n))!+3*a(n-1)` -/
def P6604100358696295980.Spec : Prop :=
  ∀ n, (P6604100358696295980.a n : ℤ) = A037544 (n + 1)

end A037544

/-! ## A037544.P14381085268126148829

`3*a(n-1)-gcd(2, A000045(n))+3` with `a(0)=1`
-/

namespace A037544.P14381085268126148829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (Int.gcd 2 (A000045 n) : ℤ) + 3

end

end A037544.P14381085268126148829

namespace A037544

/-- `3*a(n-1)-gcd(2, A000045(n))+3` -/
def P14381085268126148829.Spec : Prop :=
  ∀ n, P14381085268126148829.a n = A037544 (n + 1)

end A037544

/-! ## A037544.P3340592263329749266

`A037568(n+1)-A077834(n)`
-/

namespace A037544.P3340592263329749266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037568 (n + 1) - A077834 n

end

end A037544.P3340592263329749266

namespace A037544

/-- `A037568(n+1)-A077834(n)` -/
def P3340592263329749266.Spec : Prop :=
  ∀ n, P3340592263329749266.a n = A037544 (n + 1)

end A037544

/-!
# A037545: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

The programs for A037545, the canonical program `A037545.P15835810236773892591` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037545 has offset 1).

The definition of A037545 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037545.anchor (n : ℕ) (hn : 1 ≤ n) : A037545 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [1, 2, 2].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037545`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037545.P505095285539853860

`ogf((1+2x+2x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037545.P505095285539853860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2] [1, -4, 0, -1, 4] n

end

end A037545.P505095285539853860

namespace A037545

/-- `ogf((1+2x+2x^2)/(1-4x-x^3+4x^4))` -/
def P505095285539853860.Spec : Prop :=
  ∀ n, P505095285539853860.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P15835810236773892591

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=6, a(2)=26, a(3)=105`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037545

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P15835810236773892591.Spec : Prop :=
  ∀ n, P15835810236773892591.a n = A037545 (n + 1)

theorem P15835810236773892591.correct : P15835810236773892591.Spec := by
  intro n
  simp only [A037545, Nat.add_sub_cancel]

end A037545

/-! ## A037545.P6897578900785324930

`floor(26*4^(n+1)/63)`
-/

namespace A037545.P6897578900785324930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(26 * 4 ^ (n + 1) : ℚ) / 63⌋

end

end A037545.P6897578900785324930

namespace A037545

/-- `floor(26*4^(n+1)/63)` -/
def P6897578900785324930.Spec : Prop :=
  ∀ n, P6897578900785324930.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P13950419714322853006

`or(4*a(n-1), (n²+1)%3)` with `a(0)=1`
-/

namespace A037545.P13950419714322853006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (4 * a (n - 1)) ((n ^ 2 + 1) % 3)

end

end A037545.P13950419714322853006

namespace A037545

/-- `or(4*a(n-1), (n²+1)%3)` -/
def P13950419714322853006.Spec : Prop :=
  ∀ n, (P13950419714322853006.a n : ℤ) = A037545 (n + 1)

end A037545

/-! ## A037545.P14461478655497216858

`4*a(n-1)+2-char[3*n]` with `a(0)=1`
-/

namespace A037545.P14461478655497216858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A037545.P14461478655497216858

namespace A037545

/-- `4*a(n-1)+2-char[3*n]` -/
def P14461478655497216858.Spec : Prop :=
  ∀ n, P14461478655497216858.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P4094355668869476952

`gcd(2, (n+1)%3)+4*a(n-1)` with `a(0)=1`
-/

namespace A037545.P4094355668869476952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 ((n + 1) % 3) + 4 * a (n - 1)

end

end A037545.P4094355668869476952

namespace A037545

/-- `gcd(2, (n+1)%3)+4*a(n-1)` -/
def P4094355668869476952.Spec : Prop :=
  ∀ n, (P4094355668869476952.a n : ℤ) = A037545 (n + 1)

end A037545

/-! ## A037545.P9428328019579565698

`xor(3, 4*a(n-1)+2-n²%3)` with `a(0)=1`
-/

namespace A037545.P9428328019579565698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 3 (4 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ)))

end

end A037545.P9428328019579565698

namespace A037545

/-- `xor(3, 4*a(n-1)+2-n²%3)` -/
def P9428328019579565698.Spec : Prop :=
  ∀ n, P9428328019579565698.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P488283644626784521

`∑[4*a(n-1)+1-(n+2)%3]` with `a(0)=1`
-/

namespace A037545.P488283644626784521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1) + (1 - (((n + 2) % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037545.P488283644626784521

namespace A037545

/-- `∑[4*a(n-1)+1-(n+2)%3]` -/
def P488283644626784521.Spec : Prop :=
  ∀ n, P488283644626784521.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P6869690160634802155

`∑[floor((A037632(n+1)+1)/2)]`
-/

namespace A037545.P6869690160634802155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037632 (n + 1) + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037545.P6869690160634802155

namespace A037545

/-- `∑[floor((A037632(n+1)+1)/2)]` -/
def P6869690160634802155.Spec : Prop :=
  ∀ n, P6869690160634802155.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P950975324096754258

`A217100(A008574(n))`
-/

namespace A037545.P950975324096754258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217100 (A008574 n).toNat

end

end A037545.P950975324096754258

namespace A037545

/-- `A217100(A008574(n))` -/
def P950975324096754258.Spec : Prop :=
  ∀ n, P950975324096754258.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P7561912834883169018

`A141844(n)-A178744(n)`
-/

namespace A037545.P7561912834883169018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141844 n - A178744 n

end

end A037545.P7561912834883169018

namespace A037545

/-- `A141844(n)-A178744(n)` -/
def P7561912834883169018.Spec : Prop :=
  ∀ n, P7561912834883169018.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P2356142119687089928

`A217100(A113127(n+1)-2)`
-/

namespace A037545.P2356142119687089928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217100 (A113127 (n + 1) - 2).toNat

end

end A037545.P2356142119687089928

namespace A037545

/-- `A217100(A113127(n+1)-2)` -/
def P2356142119687089928.Spec : Prop :=
  ∀ n, P2356142119687089928.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P11270571464953436086

`A178710(n+1)+A160156(n)`
-/

namespace A037545.P11270571464953436086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178710 (n + 1) + A160156 n

end

end A037545.P11270571464953436086

namespace A037545

/-- `A178710(n+1)+A160156(n)` -/
def P11270571464953436086.Spec : Prop :=
  ∀ n, P11270571464953436086.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P16197729902300146044

`∑[A004171(n)-A178872(n+1)]`
-/

namespace A037545.P16197729902300146044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A178872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037545.P16197729902300146044

namespace A037545

/-- `∑[A004171(n)-A178872(n+1)]` -/
def P16197729902300146044.Spec : Prop :=
  ∀ n, P16197729902300146044.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P17722576010000149153

`A037569(n+1)-A178872(n+1)`
-/

namespace A037545.P17722576010000149153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037569 (n + 1) - A178872 (n + 1)

end

end A037545.P17722576010000149153

namespace A037545

/-- `A037569(n+1)-A178872(n+1)` -/
def P17722576010000149153.Spec : Prop :=
  ∀ n, P17722576010000149153.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P560945446787429793

`and(A037604(n+1), A037611(n+1))`
-/

namespace A037545.P560945446787429793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037604 (n + 1)) (A037611 (n + 1))

end

end A037545.P560945446787429793

namespace A037545

/-- `and(A037604(n+1), A037611(n+1))` -/
def P560945446787429793.Spec : Prop :=
  ∀ n, P560945446787429793.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P13090435286625765337

`xor(2*A033131(n+1), A037653(n+1))`
-/

namespace A037545.P13090435286625765337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033131 (n + 1)) (A037653 (n + 1))

end

end A037545.P13090435286625765337

namespace A037545

/-- `xor(2*A033131(n+1), A037653(n+1))` -/
def P13090435286625765337.Spec : Prop :=
  ∀ n, P13090435286625765337.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P8191253492986173473

`xor(2*A033122(n+1), A037667(n+1))`
-/

namespace A037545.P8191253492986173473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033122 (n + 1)) (A037667 (n + 1))

end

end A037545.P8191253492986173473

namespace A037545

/-- `xor(2*A033122(n+1), A037667(n+1))` -/
def P8191253492986173473.Spec : Prop :=
  ∀ n, P8191253492986173473.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P12510644619850200125

`∑[2*A000079(n)²-A178872(n+1)]`
-/

namespace A037545.P12510644619850200125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A178872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037545.P12510644619850200125

namespace A037545

/-- `∑[2*A000079(n)²-A178872(n+1)]` -/
def P12510644619850200125.Spec : Prop :=
  ∀ n, P12510644619850200125.a n = A037545 (n + 1)

end A037545

/-! ## A037545.P11430891749643059033

`∑[A000079(2*n+1)-A178872(n+1)]`
-/

namespace A037545.P11430891749643059033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A178872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037545.P11430891749643059033

namespace A037545

/-- `∑[A000079(2*n+1)-A178872(n+1)]` -/
def P11430891749643059033.Spec : Prop :=
  ∀ n, P11430891749643059033.a n = A037545 (n + 1)

end A037545

/-!
# A037546: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

The programs for A037546, the canonical program `A037546.P16442091968228783667` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037546 has offset 1).

The definition of A037546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037546.P16442091968228783667

`ogf((1+2x+2x^2)/(1-5x-x^3+5x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037546

/-- `ogf((1+2x+2x^2)/(1-5x-x^3+5x^4))` -/
def P16442091968228783667.Spec : Prop :=
  ∀ n, P16442091968228783667.a n = A037546 (n + 1)

theorem P16442091968228783667.correct : P16442091968228783667.Spec := by
  intro n
  simp only [A037546, Nat.add_sub_cancel]

end A037546

/-! ## A037546.P6334552241946716499

`gcd(2, (n+1)%3)+5*a(n-1)` with `a(0)=1`
-/

namespace A037546.P6334552241946716499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 ((n + 1) % 3) + 5 * a (n - 1)

end

end A037546.P6334552241946716499

namespace A037546

/-- `gcd(2, (n+1)%3)+5*a(n-1)` -/
def P6334552241946716499.Spec : Prop :=
  ∀ n, (P6334552241946716499.a n : ℤ) = A037546 (n + 1)

end A037546

/-! ## A037546.P7882710559761367264

`A130196(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A037546.P7882710559761367264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130196 n + 5 * a (n - 1)

end

end A037546.P7882710559761367264

namespace A037546

/-- `A130196(n)+5*a(n-1)` -/
def P7882710559761367264.Spec : Prop :=
  ∀ n, P7882710559761367264.a n = A037546 (n + 1)

end A037546

/-! ## A037546.P9243365428454838801

`∑[5*a(n-1)-A049347(n)]` with `a(0)=1`
-/

namespace A037546.P9243365428454838801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037546.P9243365428454838801

namespace A037546

/-- `∑[5*a(n-1)-A049347(n)]` -/
def P9243365428454838801.Spec : Prop :=
  ∀ n, P9243365428454838801.a n = A037546 (n + 1)

end A037546

/-! ## A037546.P10836897192675371397

`5*a(n-1)+A011655(n)+1` with `a(0)=1`
-/

namespace A037546.P10836897192675371397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A011655 n + 1)

end

end A037546.P10836897192675371397

namespace A037546

/-- `5*a(n-1)+A011655(n)+1` -/
def P10836897192675371397.Spec : Prop :=
  ∀ n, P10836897192675371397.a n = A037546 (n + 1)

end A037546

/-! ## A037546.P12317388902108818576

`∑[A020729(n)]-A033141(n+1)`
-/

namespace A037546.P12317388902108818576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033141 (n + 1)

end

end A037546.P12317388902108818576

namespace A037546

/-- `∑[A020729(n)]-A033141(n+1)` -/
def P12317388902108818576.Spec : Prop :=
  ∀ n, P12317388902108818576.a n = A037546 (n + 1)

end A037546

/-!
# A037547: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

The programs for A037547, the canonical program `A037547.P10705243587104051617` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037547 has offset 1).

The definition of A037547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037547.P10705243587104051617

`ogf((1+2x+2x^2)/(1-6x-x^3+6x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037547

/-- `ogf((1+2x+2x^2)/(1-6x-x^3+6x^4))` -/
def P10705243587104051617.Spec : Prop :=
  ∀ n, P10705243587104051617.a n = A037547 (n + 1)

theorem P10705243587104051617.correct : P10705243587104051617.Spec := by
  intro n
  simp only [A037547, Nat.add_sub_cancel]

end A037547

/-! ## A037547.P7177806526706256745

`6*a(n-1)+(n²+1)%3` with `a(0)=1`
-/

namespace A037547.P7177806526706256745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + (n ^ 2 + 1) % 3

end

end A037547.P7177806526706256745

namespace A037547

/-- `6*a(n-1)+(n²+1)%3` -/
def P7177806526706256745.Spec : Prop :=
  ∀ n, (P7177806526706256745.a n : ℤ) = A037547 (n + 1)

end A037547

/-! ## A037547.P7707977952043392951

`A130196(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A037547.P7707977952043392951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130196 n + 6 * a (n - 1)

end

end A037547.P7707977952043392951

namespace A037547

/-- `A130196(n)+6*a(n-1)` -/
def P7707977952043392951.Spec : Prop :=
  ∀ n, P7707977952043392951.a n = A037547 (n + 1)

end A037547

/-! ## A037547.P9179774804644318299

`∑[6*a(n-1)-A049347(n)]` with `a(0)=1`
-/

namespace A037547.P9179774804644318299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037547.P9179774804644318299

namespace A037547

/-- `∑[6*a(n-1)-A049347(n)]` -/
def P9179774804644318299.Spec : Prop :=
  ∀ n, P9179774804644318299.a n = A037547 (n + 1)

end A037547

/-! ## A037547.P10361860471009453848

`6*a(n-1)+A011655(n)+1` with `a(0)=1`
-/

namespace A037547.P10361860471009453848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + (A011655 n + 1)

end

end A037547.P10361860471009453848

namespace A037547

/-- `6*a(n-1)+A011655(n)+1` -/
def P10361860471009453848.Spec : Prop :=
  ∀ n, P10361860471009453848.a n = A037547 (n + 1)

end A037547

/-! ## A037547.P5021122128720396174

`6*a(n-1)+A000032(n)%2+1` with `a(0)=1`
-/

namespace A037547.P5021122128720396174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + (Int.tmod (A000032 n) 2 + 1)

end

end A037547.P5021122128720396174

namespace A037547

/-- `6*a(n-1)+A000032(n)%2+1` -/
def P5021122128720396174.Spec : Prop :=
  ∀ n, P5021122128720396174.a n = A037547 (n + 1)

end A037547

/-! ## A037547.P16659875082069116045

`2*A037531(n+1)-A037499(n+1)`
-/

namespace A037547.P16659875082069116045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037531 (n + 1) - A037499 (n + 1)

end

end A037547.P16659875082069116045

namespace A037547

/-- `2*A037531(n+1)-A037499(n+1)` -/
def P16659875082069116045.Spec : Prop :=
  ∀ n, P16659875082069116045.a n = A037547 (n + 1)

end A037547

/-!
# A037548: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

The programs for A037548, the canonical program `A037548.P14188954321588035012` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037548 has offset 1).

The definition of A037548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037548.P14188954321588035012

`ogf((1+2x+2x^2)/(1-7x-x^3+7x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037548

/-- `ogf((1+2x+2x^2)/(1-7x-x^3+7x^4))` -/
def P14188954321588035012.Spec : Prop :=
  ∀ n, P14188954321588035012.a n = A037548 (n + 1)

theorem P14188954321588035012.correct : P14188954321588035012.Spec := by
  intro n
  simp only [A037548, Nat.add_sub_cancel]

end A037548

/-! ## A037548.P10946690392973033112

`xor(3, 8*a(n-1)+2-n²%3)-a(n-1)` with `a(0)=1`
-/

namespace A037548.P10946690392973033112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 3 (8 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))) - a (n - 1)

end

end A037548.P10946690392973033112

namespace A037548

/-- `xor(3, 8*a(n-1)+2-n²%3)-a(n-1)` -/
def P10946690392973033112.Spec : Prop :=
  ∀ n, P10946690392973033112.a n = A037548 (n + 1)

end A037548

/-! ## A037548.P2882000903766182012

`∑[7*a(n-1)-A049347(n)]` with `a(0)=1`
-/

namespace A037548.P2882000903766182012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) - A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037548.P2882000903766182012

namespace A037548

/-- `∑[7*a(n-1)-A049347(n)]` -/
def P2882000903766182012.Spec : Prop :=
  ∀ n, P2882000903766182012.a n = A037548 (n + 1)

end A037548

/-! ## A037548.P11438501776342999623

`A037532(n+1)+A037532(n+1)-A037500(n+1)`
-/

namespace A037548.P11438501776342999623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + (A037532 (n + 1) - A037500 (n + 1))

end

end A037548.P11438501776342999623

namespace A037548

/-- `A037532(n+1)+A037532(n+1)-A037500(n+1)` -/
def P11438501776342999623.Spec : Prop :=
  ∀ n, P11438501776342999623.a n = A037548 (n + 1)

end A037548

/-! ## A037548.P13015578158976592535

`A120741(n+1)-A037556(n+1)`
-/

namespace A037548.P13015578158976592535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037556 (n + 1)

end

end A037548.P13015578158976592535

namespace A037548

/-- `A120741(n+1)-A037556(n+1)` -/
def P13015578158976592535.Spec : Prop :=
  ∀ n, P13015578158976592535.a n = A037548 (n + 1)

end A037548

/-! ## A037548.P14820154139239887764

`A125725(n+2)-A033143(n+1)`
-/

namespace A037548.P14820154139239887764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 2) - A033143 (n + 1)

end

end A037548.P14820154139239887764

namespace A037548

/-- `A125725(n+2)-A033143(n+1)` -/
def P14820154139239887764.Spec : Prop :=
  ∀ n, P14820154139239887764.a n = A037548 (n + 1)

end A037548

/-! ## A037548.P6169084141606703616

`2*A037532(n+1)-A037500(n+1)`
-/

namespace A037548.P6169084141606703616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037532 (n + 1) - A037500 (n + 1)

end

end A037548.P6169084141606703616

namespace A037548

/-- `2*A037532(n+1)-A037500(n+1)` -/
def P6169084141606703616.Spec : Prop :=
  ∀ n, P6169084141606703616.a n = A037548 (n + 1)

end A037548

/-! ## A037548.P8714489454945169147

`2*A037564(n+1)-A037670(n+1)`
-/

namespace A037548.P8714489454945169147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037564 (n + 1) - A037670 (n + 1)

end

end A037548.P8714489454945169147

namespace A037548

/-- `2*A037564(n+1)-A037670(n+1)` -/
def P8714489454945169147.Spec : Prop :=
  ∀ n, P8714489454945169147.a n = A037548 (n + 1)

end A037548

/-! ## A037548.P17219188785575776822

`A037532(n+1)+A037564(n+1)-A037556(n+1)`
-/

namespace A037548.P17219188785575776822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + (A037564 (n + 1) - A037556 (n + 1))

end

end A037548.P17219188785575776822

namespace A037548

/-- `A037532(n+1)+A037564(n+1)-A037556(n+1)` -/
def P17219188785575776822.Spec : Prop :=
  ∀ n, P17219188785575776822.a n = A037548 (n + 1)

end A037548

/-! ## A037548.P5859432693424591588

`A037540(n+1)+A037642(n+1)-A037628(n+1)`
-/

namespace A037548.P5859432693424591588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + (A037642 (n + 1) - A037628 (n + 1))

end

end A037548.P5859432693424591588

namespace A037548

/-- `A037540(n+1)+A037642(n+1)-A037628(n+1)` -/
def P5859432693424591588.Spec : Prop :=
  ∀ n, P5859432693424591588.a n = A037548 (n + 1)

end A037548

/-!
# A037549: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

The programs for A037549, the canonical program `A037549.P2165135668473002190` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037549 has offset 1).

The definition of A037549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037549.P2165135668473002190

`ogf((1+2x+2x^2)/(1-8x-x^3+8x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037549

/-- `ogf((1+2x+2x^2)/(1-8x-x^3+8x^4))` -/
def P2165135668473002190.Spec : Prop :=
  ∀ n, P2165135668473002190.a n = A037549 (n + 1)

theorem P2165135668473002190.correct : P2165135668473002190.Spec := by
  intro n
  simp only [A037549, Nat.add_sub_cancel]

end A037549

/-! ## A037549.P15716232193076489800

`record[gcd(2, n%3)+8*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=10`
-/

namespace A037549.P15716232193076489800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 10] fun n f1 =>
  Nat.gcd 2 (n % 3) + 8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037549.P15716232193076489800

namespace A037549

/-- `record[gcd(2, n%3)+8*a(n-1)]` -/
def P15716232193076489800.Spec : Prop :=
  ∀ n, (P15716232193076489800.a n : ℤ) = A037549 (n + 1)

end A037549

/-! ## A037549.P2775134514879728548

`xor(3, 8*a(n-1)+2-n²%3)` with `a(0)=1`
-/

namespace A037549.P2775134514879728548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 3 (8 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ)))

end

end A037549.P2775134514879728548

namespace A037549

/-- `xor(3, 8*a(n-1)+2-n²%3)` -/
def P2775134514879728548.Spec : Prop :=
  ∀ n, P2775134514879728548.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P9009764673246034290

`xor(1, or(8*a(n-1), char[3*n]))+1` with `a(0)=1`
-/

namespace A037549.P9009764673246034290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (Nat.lor (8 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)) + 1

end

end A037549.P9009764673246034290

namespace A037549

/-- `xor(1, or(8*a(n-1), char[3*n]))+1` -/
def P9009764673246034290.Spec : Prop :=
  ∀ n, (P9009764673246034290.a n : ℤ) = A037549 (n + 1)

end A037549

/-! ## A037549.P13825036823068881105

`and(A037608(n+1), A037615(n+1))`
-/

namespace A037549.P13825036823068881105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037608 (n + 1)) (A037615 (n + 1))

end

end A037549.P13825036823068881105

namespace A037549

/-- `and(A037608(n+1), A037615(n+1))` -/
def P13825036823068881105.Spec : Prop :=
  ∀ n, P13825036823068881105.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P13083824277847744648

`or(A037501(n+1), A037509(n+1))`
-/

namespace A037549.P13083824277847744648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037501 (n + 1)) (A037509 (n + 1))

end

end A037549.P13083824277847744648

namespace A037549

/-- `or(A037501(n+1), A037509(n+1))` -/
def P13083824277847744648.Spec : Prop :=
  ∀ n, P13083824277847744648.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P4201741307762686988

`2*A037533(n+1)-A037501(n+1)`
-/

namespace A037549.P4201741307762686988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037533 (n + 1) - A037501 (n + 1)

end

end A037549.P4201741307762686988

namespace A037549

/-- `2*A037533(n+1)-A037501(n+1)` -/
def P4201741307762686988.Spec : Prop :=
  ∀ n, P4201741307762686988.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P15636278700215742807

`2*A037541(n+1)-A037509(n+1)`
-/

namespace A037549.P15636278700215742807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037541 (n + 1) - A037509 (n + 1)

end

end A037549.P15636278700215742807

namespace A037549

/-- `2*A037541(n+1)-A037509(n+1)` -/
def P15636278700215742807.Spec : Prop :=
  ∀ n, P15636278700215742807.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P7875748186621315687

`xor(8*a(n-1), A000034(A002487(n)))` with `a(0)=1`
-/

namespace A037549.P7875748186621315687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (8 * a (n - 1)) (A000034 (A002487 n).toNat)

end

end A037549.P7875748186621315687

namespace A037549

/-- `xor(8*a(n-1), A000034(A002487(n)))` -/
def P7875748186621315687.Spec : Prop :=
  ∀ n, P7875748186621315687.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P4644968876517591735

`A033138(A016789(n))-A033144(n+1)`
-/

namespace A037549.P4644968876517591735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (A016789 n).toNat - A033144 (n + 1)

end

end A037549.P4644968876517591735

namespace A037549

/-- `A033138(A016789(n))-A033144(n+1)` -/
def P4644968876517591735.Spec : Prop :=
  ∀ n, P4644968876517591735.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P6792988694048272317

`A037541(n+1)+A037573(n+1)-A037557(n+1)`
-/

namespace A037549.P6792988694048272317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037541 (n + 1) + (A037573 (n + 1) - A037557 (n + 1))

end

end A037549.P6792988694048272317

namespace A037549

/-- `A037541(n+1)+A037573(n+1)-A037557(n+1)` -/
def P6792988694048272317.Spec : Prop :=
  ∀ n, P6792988694048272317.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P3198533073740663366

`A037533(n+1)+and(A037525(n+1), A037533(n+1))`
-/

namespace A037549.P3198533073740663366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037533 (n + 1) + Int.land (A037525 (n + 1)) (A037533 (n + 1))

end

end A037549.P3198533073740663366

namespace A037549

/-- `A037533(n+1)+and(A037525(n+1), A037533(n+1))` -/
def P3198533073740663366.Spec : Prop :=
  ∀ n, P3198533073740663366.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P13760736885976843895

`A037533(n+1)+and(A037533(n+1), A037643(n+1))`
-/

namespace A037549.P13760736885976843895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037533 (n + 1) + Int.land (A037533 (n + 1)) (A037643 (n + 1))

end

end A037549.P13760736885976843895

namespace A037549

/-- `A037533(n+1)+and(A037533(n+1), A037643(n+1))` -/
def P13760736885976843895.Spec : Prop :=
  ∀ n, P13760736885976843895.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P9853609594621293645

`and(A037629(n+1)+A037615(n+1), A037615(n+1))`
-/

namespace A037549.P9853609594621293645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037629 (n + 1) + A037615 (n + 1)) (A037615 (n + 1))

end

end A037549.P9853609594621293645

namespace A037549

/-- `and(A037629(n+1)+A037615(n+1), A037615(n+1))` -/
def P9853609594621293645.Spec : Prop :=
  ∀ n, P9853609594621293645.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P13084978514583132760

`and(A037643(n+1)+A037615(n+1), A037615(n+1))`
-/

namespace A037549.P13084978514583132760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037643 (n + 1) + A037615 (n + 1)) (A037615 (n + 1))

end

end A037549.P13084978514583132760

namespace A037549

/-- `and(A037643(n+1)+A037615(n+1), A037615(n+1))` -/
def P13084978514583132760.Spec : Prop :=
  ∀ n, P13084978514583132760.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P10122019943344421798

`A033135(n+1)+xor(A033135(n+1), A037501(n+1))`
-/

namespace A037549.P10122019943344421798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033135 (n + 1) + Int.xor (A033135 (n + 1)) (A037501 (n + 1))

end

end A037549.P10122019943344421798

namespace A037549

/-- `A033135(n+1)+xor(A033135(n+1), A037501(n+1))` -/
def P10122019943344421798.Spec : Prop :=
  ∀ n, P10122019943344421798.a n = A037549 (n + 1)

end A037549

/-! ## A037549.P14266752265483300971

`A037573(n+2)-2*A001018(n+1)`
-/

namespace A037549.P14266752265483300971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037573 (n + 2) - 2 * A001018 (n + 1)

end

end A037549.P14266752265483300971

namespace A037549

/-- `A037573(n+2)-2*A001018(n+1)` -/
def P14266752265483300971.Spec : Prop :=
  ∀ n, P14266752265483300971.a n = A037549 (n + 1)

end A037549

/-!
# A037550: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

The programs for A037550, the canonical program `A037550.P12966982828051235200` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037550 has offset 1).

The definition of A037550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037550.P12966982828051235200

`ogf((1+2x+2x^2)/(1-9x-x^3+9x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037550

/-- `ogf((1+2x+2x^2)/(1-9x-x^3+9x^4))` -/
def P12966982828051235200.Spec : Prop :=
  ∀ n, P12966982828051235200.a n = A037550 (n + 1)

theorem P12966982828051235200.correct : P12966982828051235200.Spec := by
  intro n
  simp only [A037550, Nat.add_sub_cancel]

end A037550

/-! ## A037550.P11288842073918998686

`9*a(n-1)+2-char[3*n]` with `a(0)=1`
-/

namespace A037550.P11288842073918998686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A037550.P11288842073918998686

namespace A037550

/-- `9*a(n-1)+2-char[3*n]` -/
def P11288842073918998686.Spec : Prop :=
  ∀ n, P11288842073918998686.a n = A037550 (n + 1)

end A037550

/-! ## A037550.P7881817864418467250

`a(n-1)+xor(3, 8*a(n-1)+2-n²%3)` with `a(0)=1`
-/

namespace A037550.P7881817864418467250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.xor 3 (8 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ)))

end

end A037550.P7881817864418467250

namespace A037550

/-- `a(n-1)+xor(3, 8*a(n-1)+2-n²%3)` -/
def P7881817864418467250.Spec : Prop :=
  ∀ n, P7881817864418467250.a n = A037550 (n + 1)

end A037550

/-! ## A037550.P3500201884966986910

`A130196(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A037550.P3500201884966986910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130196 n + 9 * a (n - 1)

end

end A037550.P3500201884966986910

namespace A037550

/-- `A130196(n)+9*a(n-1)` -/
def P3500201884966986910.Spec : Prop :=
  ∀ n, P3500201884966986910.a n = A037550 (n + 1)

end A037550

/-! ## A037550.P10875714162233051005

`∑[9*a(n-1)-A049347(n)]` with `a(0)=1`
-/

namespace A037550.P10875714162233051005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037550.P10875714162233051005

namespace A037550

/-- `∑[9*a(n-1)-A049347(n)]` -/
def P10875714162233051005.Spec : Prop :=
  ∀ n, P10875714162233051005.a n = A037550 (n + 1)

end A037550

/-! ## A037550.P3970061971553593403

`gcd(2, A138189(n))+9*a(n-1)` with `a(0)=1`
-/

namespace A037550.P3970061971553593403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd 2 (A138189 n) + 9 * a (n - 1)

end

end A037550.P3970061971553593403

namespace A037550

/-- `gcd(2, A138189(n))+9*a(n-1)` -/
def P3970061971553593403.Spec : Prop :=
  ∀ n, (P3970061971553593403.a n : ℤ) = A037550 (n + 1)

end A037550

/-! ## A037550.P5499618039198846580

`∑[9*a(n-1)-A102283(n+1)]` with `a(0)=1`
-/

namespace A037550.P5499618039198846580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - A102283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037550.P5499618039198846580

namespace A037550

/-- `∑[9*a(n-1)-A102283(n+1)]` -/
def P5499618039198846580.Spec : Prop :=
  ∀ n, P5499618039198846580.a n = A037550 (n + 1)

end A037550

/-! ## A037550.P4437722904031024251

`∑[9*a(n-1)-A010892(4*n)]` with `a(0)=1`
-/

namespace A037550.P4437722904031024251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - A010892 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037550.P4437722904031024251

namespace A037550

/-- `∑[9*a(n-1)-A010892(4*n)]` -/
def P4437722904031024251.Spec : Prop :=
  ∀ n, P4437722904031024251.a n = A037550 (n + 1)

end A037550

/-! ## A037550.P11097807170807943541

`2*A037534(n+1)-A037502(n+1)`
-/

namespace A037550.P11097807170807943541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037534 (n + 1) - A037502 (n + 1)

end

end A037550.P11097807170807943541

namespace A037550

/-- `2*A037534(n+1)-A037502(n+1)` -/
def P11097807170807943541.Spec : Prop :=
  ∀ n, P11097807170807943541.a n = A037550 (n + 1)

end A037550

/-! ## A037550.P14776464369828570272

`2*A037542(n+1)-A037510(n+1)`
-/

namespace A037550.P14776464369828570272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037542 (n + 1) - A037510 (n + 1)

end

end A037550.P14776464369828570272

namespace A037550

/-- `2*A037542(n+1)-A037510(n+1)` -/
def P14776464369828570272.Spec : Prop :=
  ∀ n, P14776464369828570272.a n = A037550 (n + 1)

end A037550

/-! ## A037550.P15727334329102965491

`A033136(n+1)+A037534(n+1)-A033145(n+1)`
-/

namespace A037550.P15727334329102965491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033136 (n + 1) + (A037534 (n + 1) - A033145 (n + 1))

end

end A037550.P15727334329102965491

namespace A037550

/-- `A033136(n+1)+A037534(n+1)-A033145(n+1)` -/
def P15727334329102965491.Spec : Prop :=
  ∀ n, P15727334329102965491.a n = A037550 (n + 1)

end A037550

/-!
# A037551: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,2.

The programs for A037551, the canonical program `A037551.P4210952787696639466` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037551 has offset 1).

The definition of A037551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037551.P4210952787696639466

`floor(122/999*10^(n+1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037551

/-- `floor(122/999*10^(n+1))` -/
def P4210952787696639466.Spec : Prop :=
  ∀ n, P4210952787696639466.a n = A037551 (n + 1)

theorem P4210952787696639466.correct : P4210952787696639466.Spec := by
  intro n
  simp only [A037551, Nat.add_sub_cancel]

end A037551

/-! ## A037551.P4418438152415681187

`ogf((1+2x+2x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037551.P4418438152415681187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2] [1, -10, 0, -1, 10] n

end

end A037551.P4418438152415681187

namespace A037551

/-- `ogf((1+2x+2x^2)/(1-10x-x^3+10x^4))` -/
def P4418438152415681187.Spec : Prop :=
  ∀ n, P4418438152415681187.a n = A037551 (n + 1)

end A037551

/-! ## A037551.P15399225766753602696

`10*a(n-1)+2-char[3*n]` with `a(0)=1`
-/

namespace A037551.P15399225766753602696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A037551.P15399225766753602696

namespace A037551

/-- `10*a(n-1)+2-char[3*n]` -/
def P15399225766753602696.Spec : Prop :=
  ∀ n, P15399225766753602696.a n = A037551 (n + 1)

end A037551

/-! ## A037551.P11460767209117930462

`∑[10*a(n-1)-A049347(n)]` with `a(0)=1`
-/

namespace A037551.P11460767209117930462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037551.P11460767209117930462

namespace A037551

/-- `∑[10*a(n-1)-A049347(n)]` -/
def P11460767209117930462.Spec : Prop :=
  ∀ n, P11460767209117930462.a n = A037551 (n + 1)

end A037551

/-! ## A037551.P11447493443649329129

`A130196(n)+5*2*a(n-1)` with `a(0)=1`
-/

namespace A037551.P11447493443649329129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130196 n + 5 * (2 * a (n - 1))

end

end A037551.P11447493443649329129

namespace A037551

/-- `A130196(n)+5*2*a(n-1)` -/
def P11447493443649329129.Spec : Prop :=
  ∀ n, P11447493443649329129.a n = A037551 (n + 1)

end A037551

/-! ## A037551.P11991034122706272876

`∑[10*a(n-1)-A010892(4*n)]` with `a(0)=1`
-/

namespace A037551.P11991034122706272876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A010892 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037551.P11991034122706272876

namespace A037551

/-- `∑[10*a(n-1)-A010892(4*n)]` -/
def P11991034122706272876.Spec : Prop :=
  ∀ n, P11991034122706272876.a n = A037551 (n + 1)

end A037551

/-! ## A037551.P17525487717250800480

`2*A037535(n)-A037503(n)`
-/

namespace A037551.P17525487717250800480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037535 (n + 1) - A037503 (n + 1)

end

end A037551.P17525487717250800480

namespace A037551

/-- `2*A037535(n)-A037503(n)` -/
def P17525487717250800480.Spec : Prop :=
  ∀ n, P17525487717250800480.a n = A037551 (n + 1)

end A037551

/-!
# A037552: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

The programs for A037552, the canonical program `A037552.P16811858761611088657` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037552 has offset 1).

The definition of A037552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037552.P16811858761611088657

`ogf((2+x+x^2)/(1-3x-x^3+3x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037552

/-- `ogf((2+x+x^2)/(1-3x-x^3+3x^4))` -/
def P16811858761611088657.Spec : Prop :=
  ∀ n, P16811858761611088657.a n = A037552 (n + 1)

theorem P16811858761611088657.correct : P16811858761611088657.Spec := by
  intro n
  simp only [A037552, Nat.add_sub_cancel]

end A037552

/-! ## A037552.P14299983058608703620

`floor(11*3^(n+1)/13)`
-/

namespace A037552.P14299983058608703620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊11 * ((3 ^ (n + 1) : ℚ) / 13)⌋

end

end A037552.P14299983058608703620

namespace A037552

/-- `floor(11*3^(n+1)/13)` -/
def P14299983058608703620.Spec : Prop :=
  ∀ n, P14299983058608703620.a n = A037552 (n + 1)

end A037552

/-! ## A037552.P15870495545773198070

`3*a(n-1)+2-n²%3` with `a(0)=2`
-/

namespace A037552.P15870495545773198070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A037552.P15870495545773198070

namespace A037552

/-- `3*a(n-1)+2-n²%3` -/
def P15870495545773198070.Spec : Prop :=
  ∀ n, P15870495545773198070.a n = A037552 (n + 1)

end A037552

/-! ## A037552.P14363614595777342330

`((n-1)%3)!+3*a(n-1)` with `a(0)=2`
-/

namespace A037552.P14363614595777342330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.factorial (Int.tmod ((n : ℤ) - 1) 3).toNat + 3 * a (n - 1)

end

end A037552.P14363614595777342330

namespace A037552

/-- `((n-1)%3)!+3*a(n-1)` -/
def P14363614595777342330.Spec : Prop :=
  ∀ n, (P14363614595777342330.a n : ℤ) = A037552 (n + 1)

end A037552

/-! ## A037552.P17086653490675347826

`(gcd(3, n)-1)!+3*a(n-1)` with `a(0)=2`
-/

namespace A037552.P17086653490675347826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.factorial ((Nat.gcd 3 n : ℤ) - 1).toNat + 3 * a (n - 1)

end

end A037552.P17086653490675347826

namespace A037552

/-- `(gcd(3, n)-1)!+3*a(n-1)` -/
def P17086653490675347826.Spec : Prop :=
  ∀ n, (P17086653490675347826.a n : ℤ) = A037552 (n + 1)

end A037552

/-! ## A037552.P11393436925162359657

`A037536(n+2)-3^(n+1)`
-/

namespace A037552.P11393436925162359657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037536 (n + 2) - (3 ^ (n + 1) : ℤ)

end

end A037552.P11393436925162359657

namespace A037552

/-- `A037536(n+2)-3^(n+1)` -/
def P11393436925162359657.Spec : Prop :=
  ∀ n, P11393436925162359657.a n = A037552 (n + 1)

end A037552

/-! ## A037552.P18278183888883397960

`3*a(n-1)+gcd(2, A000045(n))` with `a(0)=2`
-/

namespace A037552.P18278183888883397960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) + Int.gcd 2 (A000045 n)

end

end A037552.P18278183888883397960

namespace A037552

/-- `3*a(n-1)+gcd(2, A000045(n))` -/
def P18278183888883397960.Spec : Prop :=
  ∀ n, (P18278183888883397960.a n : ℤ) = A037552 (n + 1)

end A037552

/-! ## A037552.P1398605360902543574

`A033139(n+1)+∑[3*a(n-1)]` with `a(0)=1`
-/

namespace A037552.P1398605360902543574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037552.P1398605360902543574

namespace A037552

/-- `A033139(n+1)+∑[3*a(n-1)]` -/
def P1398605360902543574.Spec : Prop :=
  ∀ n, P1398605360902543574.a n = A037552 (n + 1)

end A037552

/-! ## A037552.P6847895342927812791

`A077834(n)+A037536(n+1)`
-/

namespace A037552.P6847895342927812791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077834 n + A037536 (n + 1)

end

end A037552.P6847895342927812791

namespace A037552

/-- `A077834(n)+A037536(n+1)` -/
def P6847895342927812791.Spec : Prop :=
  ∀ n, P6847895342927812791.a n = A037552 (n + 1)

end A037552

/-! ## A037552.P7102058380815421469

`A033130(n+1)+A033121(n+1)`
-/

namespace A037552.P7102058380815421469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033130 (n + 1) + A033121 (n + 1)

end

end A037552.P7102058380815421469

namespace A037552

/-- `A033130(n+1)+A033121(n+1)` -/
def P7102058380815421469.Spec : Prop :=
  ∀ n, P7102058380815421469.a n = A037552 (n + 1)

end A037552

/-!
# A037553: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

The programs for A037553, the canonical program `A037553.P14458789640229329229` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037553 has offset 1).

The definition of A037553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037553.P14458789640229329229

`ogf((2+x+x^2)/(1-4x-x^3+4x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037553

/-- `ogf((2+x+x^2)/(1-4x-x^3+4x^4))` -/
def P14458789640229329229.Spec : Prop :=
  ∀ n, P14458789640229329229.a n = A037553 (n + 1)

theorem P14458789640229329229.correct : P14458789640229329229.Spec := by
  intro n
  simp only [A037553, Nat.add_sub_cancel]

end A037553

/-! ## A037553.P6801107588973871377

`4*a(n-1)+2-n²%3` with `a(0)=2`
-/

namespace A037553.P6801107588973871377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A037553.P6801107588973871377

namespace A037553

/-- `4*a(n-1)+2-n²%3` -/
def P6801107588973871377.Spec : Prop :=
  ∀ n, P6801107588973871377.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P8715717622376498396

`A206927(Δ[n²])`
-/

namespace A037553.P8715717622376498396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037553.P8715717622376498396

namespace A037553

/-- `A206927(Δ[n²])` -/
def P8715717622376498396.Spec : Prop :=
  ∀ n, P8715717622376498396.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P5356968762051872659

`record[(-1)^n*A206927(n+1)]`
-/

namespace A037553.P5356968762051872659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A206927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037553.P5356968762051872659

namespace A037553

/-- `record[(-1)^n*A206927(n+1)]` -/
def P5356968762051872659.Spec : Prop :=
  ∀ n, P5356968762051872659.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P5667331837991107547

`record[A206927((n+1)/and(n+1, -(n+1)))]`
-/

namespace A037553.P5667331837991107547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037553.P5667331837991107547

namespace A037553

/-- `record[A206927((n+1)/and(n+1, -(n+1)))]` -/
def P5667331837991107547.Spec : Prop :=
  ∀ n, P5667331837991107547.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P4387807179090223108

`or(floor(4*4^(n+1)/7), A037513(n+1))`
-/

namespace A037553.P4387807179090223108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊4 * ((4 ^ (n + 1) : ℚ) / 7)⌋ (A037513 (n + 1))

end

end A037553.P4387807179090223108

namespace A037553

/-- `or(floor(4*4^(n+1)/7), A037513(n+1))` -/
def P4387807179090223108.Spec : Prop :=
  ∀ n, P4387807179090223108.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P94789968326317325

`A100063(n)+6*a(n-1)-2*a(n-1)` with `a(0)=2`
-/

namespace A037553.P94789968326317325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A100063 n + 6 * a (n - 1) - 2 * a (n - 1)

end

end A037553.P94789968326317325

namespace A037553

/-- `A100063(n)+6*a(n-1)-2*a(n-1)` -/
def P94789968326317325.Spec : Prop :=
  ∀ n, P94789968326317325.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P7274345112772248426

`∑[A178872(n+1)+A000302(n)]`
-/

namespace A037553.P7274345112772248426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) + A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037553.P7274345112772248426

namespace A037553

/-- `∑[A178872(n+1)+A000302(n)]` -/
def P7274345112772248426.Spec : Prop :=
  ∀ n, P7274345112772248426.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P3556291760447594356

`A033131(n+1)+A033122(n+1)`
-/

namespace A037553.P3556291760447594356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033131 (n + 1) + A033122 (n + 1)

end

end A037553.P3556291760447594356

namespace A037553

/-- `A033131(n+1)+A033122(n+1)` -/
def P3556291760447594356.Spec : Prop :=
  ∀ n, P3556291760447594356.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P12306553359264684158

`A178872(n+1)+A037537(n+1)`
-/

namespace A037553.P12306553359264684158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) + A037537 (n + 1)

end

end A037553.P12306553359264684158

namespace A037553

/-- `A178872(n+1)+A037537(n+1)` -/
def P12306553359264684158.Spec : Prop :=
  ∀ n, P12306553359264684158.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P5941940913979712691

`A037646(n+1)-A178872(n+1)`
-/

namespace A037553.P5941940913979712691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037646 (n + 1) - A178872 (n + 1)

end

end A037553.P5941940913979712691

namespace A037553

/-- `A037646(n+1)-A178872(n+1)` -/
def P5941940913979712691.Spec : Prop :=
  ∀ n, P5941940913979712691.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P17099937695094715393

`A178872(n)+2*A033122(n+1)`
-/

namespace A037553.P17099937695094715393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + 2 * A033122 (n + 1)

end

end A037553.P17099937695094715393

namespace A037553

/-- `A178872(n)+2*A033122(n+1)` -/
def P17099937695094715393.Spec : Prop :=
  ∀ n, P17099937695094715393.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P727233228022684512

`2*A033131(n+1)-A178872(n)`
-/

namespace A037553.P727233228022684512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033131 (n + 1) - A178872 n

end

end A037553.P727233228022684512

namespace A037553

/-- `2*A033131(n+1)-A178872(n)` -/
def P727233228022684512.Spec : Prop :=
  ∀ n, P727233228022684512.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P3886107732627267815

`and(A037632(n+1), A037639(n+1))`
-/

namespace A037553.P3886107732627267815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037632 (n + 1)) (A037639 (n + 1))

end

end A037553.P3886107732627267815

namespace A037553

/-- `and(A037632(n+1), A037639(n+1))` -/
def P3886107732627267815.Spec : Prop :=
  ∀ n, P3886107732627267815.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P17133733855901011397

`xor(A033131(n+1), A037646(n+1))`
-/

namespace A037553.P17133733855901011397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033131 (n + 1)) (A037646 (n + 1))

end

end A037553.P17133733855901011397

namespace A037553

/-- `xor(A033131(n+1), A037646(n+1))` -/
def P17133733855901011397.Spec : Prop :=
  ∀ n, P17133733855901011397.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P959264701443807175

`xor(A033122(n+1), A037660(n+1))`
-/

namespace A037553.P959264701443807175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033122 (n + 1)) (A037660 (n + 1))

end

end A037553.P959264701443807175

namespace A037553

/-- `xor(A033122(n+1), A037660(n+1))` -/
def P959264701443807175.Spec : Prop :=
  ∀ n, P959264701443807175.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P4321245028940557559

`∑[A178872(n+1)+A000079(n)²]`
-/

namespace A037553.P4321245028940557559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) + A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037553.P4321245028940557559

namespace A037553

/-- `∑[A178872(n+1)+A000079(n)²]` -/
def P4321245028940557559.Spec : Prop :=
  ∀ n, P4321245028940557559.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P1132645109639637769

`∑[A178872(n+1)+A000079(2*n)]`
-/

namespace A037553.P1132645109639637769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) + A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037553.P1132645109639637769

namespace A037553

/-- `∑[A178872(n+1)+A000079(2*n)]` -/
def P1132645109639637769.Spec : Prop :=
  ∀ n, P1132645109639637769.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P1647762379414212310

`A037639(n+1)-∑[2*A178872(n)]`
-/

namespace A037553.P1647762379414212310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037639 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037553.P1647762379414212310

namespace A037553

/-- `A037639(n+1)-∑[2*A178872(n)]` -/
def P1647762379414212310.Spec : Prop :=
  ∀ n, P1647762379414212310.a n = A037553 (n + 1)

end A037553

/-! ## A037553.P10778242214196141611

`A195904(2*n+1)+A002450(n+1)`
-/

namespace A037553.P10778242214196141611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195904 (2 * n + 1) + A002450 (n + 1)

end

end A037553.P10778242214196141611

namespace A037553

/-- `A195904(2*n+1)+A002450(n+1)` -/
def P10778242214196141611.Spec : Prop :=
  ∀ n, P10778242214196141611.a n = A037553 (n + 1)

end A037553

/-!
# A037554: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

The programs for A037554, the canonical program `A037554.P14843474537021560510` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037554 has offset 1).

The definition of A037554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037554.P14843474537021560510

`ogf((2+x+x^2)/(1-5x-x^3+5x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037554

/-- `ogf((2+x+x^2)/(1-5x-x^3+5x^4))` -/
def P14843474537021560510.Spec : Prop :=
  ∀ n, P14843474537021560510.a n = A037554 (n + 1)

theorem P14843474537021560510.correct : P14843474537021560510.Spec := by
  intro n
  simp only [A037554, Nat.add_sub_cancel]

end A037554

/-! ## A037554.P11989371830114067518

`5*a(n-1)+2-n²%3` with `a(0)=2`
-/

namespace A037554.P11989371830114067518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) + 2 - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A037554.P11989371830114067518

namespace A037554

/-- `5*a(n-1)+2-n²%3` -/
def P11989371830114067518.Spec : Prop :=
  ∀ n, P11989371830114067518.a n = A037554 (n + 1)

end A037554

/-! ## A037554.P13486234793500233707

`char[3*n]+5*a(n-1)+1` with `a(0)=2`
-/

namespace A037554.P13486234793500233707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 5 * a (n - 1) + 1

end

end A037554.P13486234793500233707

namespace A037554

/-- `char[3*n]+5*a(n-1)+1` -/
def P13486234793500233707.Spec : Prop :=
  ∀ n, (P13486234793500233707.a n : ℤ) = A037554 (n + 1)

end A037554

/-! ## A037554.P12242791806353661023

`A033141(n+1)+∑[5^n]`
-/

namespace A037554.P12242791806353661023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033141 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037554.P12242791806353661023

namespace A037554

/-- `A033141(n+1)+∑[5^n]` -/
def P12242791806353661023.Spec : Prop :=
  ∀ n, P12242791806353661023.a n = A037554 (n + 1)

end A037554

/-! ## A037554.P896223026076339767

`A100063(n)+5*a(n-1)` with `a(0)=2`
-/

namespace A037554.P896223026076339767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A100063 n + 5 * a (n - 1)

end

end A037554.P896223026076339767

namespace A037554

/-- `A100063(n)+5*a(n-1)` -/
def P896223026076339767.Spec : Prop :=
  ∀ n, P896223026076339767.a n = A037554 (n + 1)

end A037554

/-! ## A037554.P13236729495136414725

`A033132(n+1)+A033123(n+1)`
-/

namespace A037554.P13236729495136414725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033132 (n + 1) + A033123 (n + 1)

end

end A037554.P13236729495136414725

namespace A037554

/-- `A033132(n+1)+A033123(n+1)` -/
def P13236729495136414725.Spec : Prop :=
  ∀ n, P13236729495136414725.a n = A037554 (n + 1)

end A037554

/-! ## A037554.P5824737796288792949

`gcd(2, A001254(n))+5*a(A023443(n))` with `a(0)=2`
-/

namespace A037554.P5824737796288792949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.gcd 2 (A001254 n) + 5 * a (A023443 n).toNat

end

end A037554.P5824737796288792949

namespace A037554

/-- `gcd(2, A001254(n))+5*a(A023443(n))` -/
def P5824737796288792949.Spec : Prop :=
  ∀ n, (P5824737796288792949.a n : ℤ) = A037554 (n + 1)

end A037554

/-! ## A037554.P8844643053102110670

`A000034(A070871(n+1))+5*a(n-1)` with `a(0)=2`
-/

namespace A037554.P8844643053102110670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000034 (A070871 (n + 1)).toNat + 5 * a (n - 1)

end

end A037554.P8844643053102110670

namespace A037554

/-- `A000034(A070871(n+1))+5*a(n-1)` -/
def P8844643053102110670.Spec : Prop :=
  ∀ n, P8844643053102110670.a n = A037554 (n + 1)

end A037554

/-! ## A037554.P9968331652469968543

`ceil(4*A037612(n+1)/3)`
-/

namespace A037554.P9968331652469968543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * A037612 (n + 1) : ℚ) / 3⌉

end

end A037554.P9968331652469968543

namespace A037554

/-- `ceil(4*A037612(n+1)/3)` -/
def P9968331652469968543.Spec : Prop :=
  ∀ n, P9968331652469968543.a n = A037554 (n + 1)

end A037554

/-! ## A037554.P13874726490291446021

`A037538(n+2)-A020729(n+1)/2`
-/

namespace A037554.P13874726490291446021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037538 (n + 2) : ℚ) - (A020729 (n + 1) : ℚ) / 2

end

end A037554.P13874726490291446021

namespace A037554

/-- `A037538(n+2)-A020729(n+1)/2` -/
def P13874726490291446021.Spec : Prop :=
  ∀ n, P13874726490291446021.a n = (A037554 (n + 1) : ℚ)

end A037554

/-!
# A037555: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

The programs for A037555, the canonical program `A037555.P6944856471195605595` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037555 has offset 1).

The definition of A037555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037555.P6944856471195605595

`ogf((2+x+x^2)/(1-6x-x^3+6x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037555

/-- `ogf((2+x+x^2)/(1-6x-x^3+6x^4))` -/
def P6944856471195605595.Spec : Prop :=
  ∀ n, P6944856471195605595.a n = A037555 (n + 1)

theorem P6944856471195605595.correct : P6944856471195605595.Spec := by
  intro n
  simp only [A037555, Nat.add_sub_cancel]

end A037555

/-! ## A037555.P15476036091523020381

`A033142(n+1)+∑[6^n]`
-/

namespace A037555.P15476036091523020381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033142 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037555.P15476036091523020381

namespace A037555

/-- `A033142(n+1)+∑[6^n]` -/
def P15476036091523020381.Spec : Prop :=
  ∀ n, P15476036091523020381.a n = A037555 (n + 1)

end A037555

/-! ## A037555.P13697152506415850356

`A100063(n)+6*a(n-1)` with `a(0)=2`
-/

namespace A037555.P13697152506415850356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A100063 n + 6 * a (n - 1)

end

end A037555.P13697152506415850356

namespace A037555

/-- `A100063(n)+6*a(n-1)` -/
def P13697152506415850356.Spec : Prop :=
  ∀ n, P13697152506415850356.a n = A037555 (n + 1)

end A037555

/-! ## A037555.P9993778244997151944

`A033133(n+1)+A033124(n+1)`
-/

namespace A037555.P9993778244997151944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033133 (n + 1) + A033124 (n + 1)

end

end A037555.P9993778244997151944

namespace A037555

/-- `A033133(n+1)+A033124(n+1)` -/
def P9993778244997151944.Spec : Prop :=
  ∀ n, P9993778244997151944.a n = A037555 (n + 1)

end A037555

/-! ## A037555.P1135709873475792776

`A000034(A070871(n+1))+2*3*a(n-1)` with `a(0)=2`
-/

namespace A037555.P1135709873475792776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000034 (A070871 (n + 1)).toNat + 2 * (3 * a (n - 1))

end

end A037555.P1135709873475792776

namespace A037555

/-- `A000034(A070871(n+1))+2*3*a(n-1)` -/
def P1135709873475792776.Spec : Prop :=
  ∀ n, P1135709873475792776.a n = A037555 (n + 1)

end A037555

/-! ## A037555.P4153834366670347400

`A033133(n+1)+A037515(n+1)-A033142(n+1)`
-/

namespace A037555.P4153834366670347400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033133 (n + 1) + (A037515 (n + 1) - A033142 (n + 1))

end

end A037555.P4153834366670347400

namespace A037555

/-- `A033133(n+1)+A037515(n+1)-A033142(n+1)` -/
def P4153834366670347400.Spec : Prop :=
  ∀ n, P4153834366670347400.a n = A037555 (n + 1)

end A037555

/-! ## A037555.P3196751274798770828

`A037507(n+1)+A037515(n+1)-A033133(n+1)`
-/

namespace A037555.P3196751274798770828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037507 (n + 1) + (A037515 (n + 1) - A033133 (n + 1))

end

end A037555.P3196751274798770828

namespace A037555

/-- `A037507(n+1)+A037515(n+1)-A033133(n+1)` -/
def P3196751274798770828.Spec : Prop :=
  ∀ n, P3196751274798770828.a n = A037555 (n + 1)

end A037555

/-! ## A037555.P7326681805421269101

`A037531(n+1)+A037563(n+1)-A037547(n+1)`
-/

namespace A037555.P7326681805421269101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037531 (n + 1) + (A037563 (n + 1) - A037547 (n + 1))

end

end A037555.P7326681805421269101

namespace A037555

/-- `A037531(n+1)+A037563(n+1)-A037547(n+1)` -/
def P7326681805421269101.Spec : Prop :=
  ∀ n, P7326681805421269101.a n = A037555 (n + 1)

end A037555

/-!
# A037556: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

The programs for A037556, the canonical program `A037556.P7180257959953549534` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037556 has offset 1).

The definition of A037556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037556.P7180257959953549534

`ogf((2+x+x^2)/(1-7x-x^3+7x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037556

/-- `ogf((2+x+x^2)/(1-7x-x^3+7x^4))` -/
def P7180257959953549534.Spec : Prop :=
  ∀ n, P7180257959953549534.a n = A037556 (n + 1)

theorem P7180257959953549534.correct : P7180257959953549534.Spec := by
  intro n
  simp only [A037556, Nat.add_sub_cancel]

end A037556

/-! ## A037556.P12836065204404939358

`7*a(n-1)+2-n²%3` with `a(0)=2`
-/

namespace A037556.P12836065204404939358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) + 2 - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A037556.P12836065204404939358

namespace A037556

/-- `7*a(n-1)+2-n²%3` -/
def P12836065204404939358.Spec : Prop :=
  ∀ n, P12836065204404939358.a n = A037556 (n + 1)

end A037556

/-! ## A037556.P17458198508781101656

`A033143(n+1)+∑[7^n]`
-/

namespace A037556.P17458198508781101656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033143 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037556.P17458198508781101656

namespace A037556

/-- `A033143(n+1)+∑[7^n]` -/
def P17458198508781101656.Spec : Prop :=
  ∀ n, P17458198508781101656.a n = A037556 (n + 1)

end A037556

/-! ## A037556.P15735574472189203180

`A100063(n)+7*a(n-1)` with `a(0)=2`
-/

namespace A037556.P15735574472189203180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A100063 n + 7 * a (n - 1)

end

end A037556.P15735574472189203180

namespace A037556

/-- `A100063(n)+7*a(n-1)` -/
def P15735574472189203180.Spec : Prop :=
  ∀ n, P15735574472189203180.a n = A037556 (n + 1)

end A037556

/-! ## A037556.P1110282630521686246

`lcm(7, a(n-1))+abs(A100051(n))` with `a(0)=2`
-/

namespace A037556.P1110282630521686246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) + |A100051 n|

end

end A037556.P1110282630521686246

namespace A037556

/-- `lcm(7, a(n-1))+abs(A100051(n))` -/
def P1110282630521686246.Spec : Prop :=
  ∀ n, P1110282630521686246.a n = A037556 (n + 1)

end A037556

/-! ## A037556.P14304671046606496907

`7*a(n-1)-A131556(2*n+1)` with `a(0)=2`
-/

namespace A037556.P14304671046606496907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) - A131556 (2 * n + 1)

end

end A037556.P14304671046606496907

namespace A037556

/-- `7*a(n-1)-A131556(2*n+1)` -/
def P14304671046606496907.Spec : Prop :=
  ∀ n, P14304671046606496907.a n = A037556 (n + 1)

end A037556

/-! ## A037556.P10470546860276929943

`A033134(n+1)+A033125(n+1)`
-/

namespace A037556.P10470546860276929943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033134 (n + 1) + A033125 (n + 1)

end

end A037556.P10470546860276929943

namespace A037556

/-- `A033134(n+1)+A033125(n+1)` -/
def P10470546860276929943.Spec : Prop :=
  ∀ n, P10470546860276929943.a n = A037556 (n + 1)

end A037556

/-! ## A037556.P5791236953326344811

`A057427(A070683(n))+or(1, 7*a(n-1))` with `a(0)=2`
-/

namespace A037556.P5791236953326344811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A057427 (A070683 n).toNat + Int.lor 1 (7 * a (n - 1))

end

end A037556.P5791236953326344811

namespace A037556

/-- `A057427(A070683(n))+or(1, 7*a(n-1))` -/
def P5791236953326344811.Spec : Prop :=
  ∀ n, P5791236953326344811.a n = A037556 (n + 1)

end A037556

/-! ## A037556.P14102861569604157416

`A037564(n+1)+A033143(n+1)-A033134(n+1)`
-/

namespace A037556.P14102861569604157416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037564 (n + 1) + (A033143 (n + 1) - A033134 (n + 1))

end

end A037556.P14102861569604157416

namespace A037556

/-- `A037564(n+1)+A033143(n+1)-A033134(n+1)` -/
def P14102861569604157416.Spec : Prop :=
  ∀ n, P14102861569604157416.a n = A037556 (n + 1)

end A037556

/-! ## A037556.P12164263533432679006

`A037532(n+1)+A037564(n+1)-A037548(n+1)`
-/

namespace A037556.P12164263533432679006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + (A037564 (n + 1) - A037548 (n + 1))

end

end A037556.P12164263533432679006

namespace A037556

/-- `A037532(n+1)+A037564(n+1)-A037548(n+1)` -/
def P12164263533432679006.Spec : Prop :=
  ∀ n, P12164263533432679006.a n = A037556 (n + 1)

end A037556

/-!
# A037557: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

The programs for A037557, the canonical program `A037557.P4797240005960675645` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037557 has offset 1).

The definition of A037557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037557.P4797240005960675645

`ogf((2+x+x^2)/(1-8x-x^3+8x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037557

/-- `ogf((2+x+x^2)/(1-8x-x^3+8x^4))` -/
def P4797240005960675645.Spec : Prop :=
  ∀ n, P4797240005960675645.a n = A037557 (n + 1)

theorem P4797240005960675645.correct : P4797240005960675645.Spec := by
  intro n
  simp only [A037557, Nat.add_sub_cancel]

end A037557

/-! ## A037557.P14578156931034993338

`8*a(n-1)+2-n²%3` with `a(0)=2`
-/

namespace A037557.P14578156931034993338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A037557.P14578156931034993338

namespace A037557

/-- `8*a(n-1)+2-n²%3` -/
def P14578156931034993338.Spec : Prop :=
  ∀ n, P14578156931034993338.a n = A037557 (n + 1)

end A037557

/-! ## A037557.P3704540046151348980

`(gcd(3, n)-1)!+8*a(n-1)` with `a(0)=2`
-/

namespace A037557.P3704540046151348980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.factorial ((Nat.gcd 3 n : ℤ) - 1).toNat + 8 * a (n - 1)

end

end A037557.P3704540046151348980

namespace A037557

/-- `(gcd(3, n)-1)!+8*a(n-1)` -/
def P3704540046151348980.Spec : Prop :=
  ∀ n, (P3704540046151348980.a n : ℤ) = A037557 (n + 1)

end A037557

/-! ## A037557.P10515881621754160968

`or(8*a(n-1), char[3*n])+1` with `a(0)=2`
-/

namespace A037557.P10515881621754160968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor (8 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A037557.P10515881621754160968

namespace A037557

/-- `or(8*a(n-1), char[3*n])+1` -/
def P10515881621754160968.Spec : Prop :=
  ∀ n, (P10515881621754160968.a n : ℤ) = A037557 (n + 1)

end A037557

/-! ## A037557.P460403473889432299

`xor(8*a(n-1), char[3*n])+1` with `a(0)=2`
-/

namespace A037557.P460403473889432299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor (8 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A037557.P460403473889432299

namespace A037557

/-- `xor(8*a(n-1), char[3*n])+1` -/
def P460403473889432299.Spec : Prop :=
  ∀ n, (P460403473889432299.a n : ℤ) = A037557 (n + 1)

end A037557

/-! ## A037557.P6156731410338637872

`record[xor(8*a(n-1), ((n+1)%3)!)]` with `a(0)=2, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A037557.P6156731410338637872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 0] fun n f1 =>
  Nat.xor (8 * f1 (n - 1)) (Nat.factorial ((n + 1) % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037557.P6156731410338637872

namespace A037557

/-- `record[xor(8*a(n-1), ((n+1)%3)!)]` -/
def P6156731410338637872.Spec : Prop :=
  ∀ n, (P6156731410338637872.a n : ℤ) = A037557 (n + 1)

end A037557

/-! ## A037557.P4368704863933864154

`A033135(n+1)+A033126(n+1)`
-/

namespace A037557.P4368704863933864154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033135 (n + 1) + A033126 (n + 1)

end

end A037557.P4368704863933864154

namespace A037557

/-- `A033135(n+1)+A033126(n+1)` -/
def P4368704863933864154.Spec : Prop :=
  ∀ n, P4368704863933864154.a n = A037557 (n + 1)

end A037557

/-! ## A037557.P10213635679495467332

`and(A037636(n+1), A037643(n+1))`
-/

namespace A037557.P10213635679495467332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037636 (n + 1)) (A037643 (n + 1))

end

end A037557.P10213635679495467332

namespace A037557

/-- `and(A037636(n+1), A037643(n+1))` -/
def P10213635679495467332.Spec : Prop :=
  ∀ n, P10213635679495467332.a n = A037557 (n + 1)

end A037557

/-! ## A037557.P12710927559358107912

`or(A037517(n+1), A037525(n+1))`
-/

namespace A037557.P12710927559358107912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037517 (n + 1)) (A037525 (n + 1))

end

end A037557.P12710927559358107912

namespace A037557

/-- `or(A037517(n+1), A037525(n+1))` -/
def P12710927559358107912.Spec : Prop :=
  ∀ n, P12710927559358107912.a n = A037557 (n + 1)

end A037557

/-! ## A037557.P6022298766291194949

`xor(A033135(n+1), A037650(n+1))`
-/

namespace A037557.P6022298766291194949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033135 (n + 1)) (A037650 (n + 1))

end

end A037557.P6022298766291194949

namespace A037557

/-- `xor(A033135(n+1), A037650(n+1))` -/
def P6022298766291194949.Spec : Prop :=
  ∀ n, P6022298766291194949.a n = A037557 (n + 1)

end A037557

/-! ## A037557.P1621382247186478580

`(A037573(n+1)+A037525(n+1))/2`
-/

namespace A037557.P1621382247186478580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037573 (n + 1) + A037525 (n + 1) : ℚ) / 2

end

end A037557.P1621382247186478580

namespace A037557

/-- `(A037573(n+1)+A037525(n+1))/2` -/
def P1621382247186478580.Spec : Prop :=
  ∀ n, P1621382247186478580.a n = (A037557 (n + 1) : ℚ)

end A037557

/-! ## A037557.P13975764702265002429

`or(8*a(n-1), A040001(A002487(n)))` with `a(0)=2`
-/

namespace A037557.P13975764702265002429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (8 * a (n - 1)) (A040001 (A002487 n).toNat)

end

end A037557.P13975764702265002429

namespace A037557

/-- `or(8*a(n-1), A040001(A002487(n)))` -/
def P13975764702265002429.Spec : Prop :=
  ∀ n, P13975764702265002429.a n = A037557 (n + 1)

end A037557

/-! ## A037557.P1306636662896842293

`A033144(n+1)+A033138(A016789(n)-1)`
-/

namespace A037557.P1306636662896842293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033144 (n + 1) + A033138 (A016789 n - 1).toNat

end

end A037557.P1306636662896842293

namespace A037557

/-- `A033144(n+1)+A033138(A016789(n)-1)` -/
def P1306636662896842293.Spec : Prop :=
  ∀ n, P1306636662896842293.a n = A037557 (n + 1)

end A037557

/-! ## A037557.P3340000804510015879

`A037525(n+1)+A037549(n+1)-A037541(n+1)`
-/

namespace A037557.P3340000804510015879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) + (A037549 (n + 1) - A037541 (n + 1))

end

end A037557.P3340000804510015879

namespace A037557

/-- `A037525(n+1)+A037549(n+1)-A037541(n+1)` -/
def P3340000804510015879.Spec : Prop :=
  ∀ n, P3340000804510015879.a n = A037557 (n + 1)

end A037557

/-! ## A037557.P11375395111108976603

`or(A037565(n+1)-A037525(n+1), A037525(n+1))`
-/

namespace A037557.P11375395111108976603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037565 (n + 1) - A037525 (n + 1)) (A037525 (n + 1))

end

end A037557.P11375395111108976603

namespace A037557

/-- `or(A037565(n+1)-A037525(n+1), A037525(n+1))` -/
def P11375395111108976603.Spec : Prop :=
  ∀ n, P11375395111108976603.a n = A037557 (n + 1)

end A037557

/-! ## A037557.P3233264989239439751

`A037541(n+2)-A001018(n+1)`
-/

namespace A037557.P3233264989239439751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037541 (n + 2) - A001018 (n + 1)

end

end A037557.P3233264989239439751

namespace A037557

/-- `A037541(n+2)-A001018(n+1)` -/
def P3233264989239439751.Spec : Prop :=
  ∀ n, P3233264989239439751.a n = A037557 (n + 1)

end A037557

/-!
# A037558: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

The programs for A037558, the canonical program `A037558.P9201668129066531840` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037558 has offset 1).

The definition of A037558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037558.P9201668129066531840

`ogf((2+x+x^2)/(1-9x-x^3+9x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037558

/-- `ogf((2+x+x^2)/(1-9x-x^3+9x^4))` -/
def P9201668129066531840.Spec : Prop :=
  ∀ n, P9201668129066531840.a n = A037558 (n + 1)

theorem P9201668129066531840.correct : P9201668129066531840.Spec := by
  intro n
  simp only [A037558, Nat.add_sub_cancel]

end A037558

/-! ## A037558.P11117013090615464913

`2-n²%3+9*a(n-1)` with `a(0)=2`
-/

namespace A037558.P11117013090615464913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ) + 9 * a (n - 1)

end

end A037558.P11117013090615464913

namespace A037558

/-- `2-n²%3+9*a(n-1)` -/
def P11117013090615464913.Spec : Prop :=
  ∀ n, P11117013090615464913.a n = A037558 (n + 1)

end A037558

/-! ## A037558.P7959980099212808096

`((n+2)%3)!+9*a(n-1)` with `a(0)=2`
-/

namespace A037558.P7959980099212808096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.factorial ((n + 2) % 3) + 9 * a (n - 1)

end

end A037558.P7959980099212808096

namespace A037558

/-- `((n+2)%3)!+9*a(n-1)` -/
def P7959980099212808096.Spec : Prop :=
  ∀ n, (P7959980099212808096.a n : ℤ) = A037558 (n + 1)

end A037558

/-! ## A037558.P9889793573787174387

`9*a(n-1)-char[3*n]/log2(1/2)+1` with `a(0)=2`
-/

namespace A037558.P9889793573787174387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  9 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) / Real.logb 2 ((1 : ℚ) / 2 : ℝ) + 1

end

end A037558.P9889793573787174387

namespace A037558

/-- `9*a(n-1)-char[3*n]/log2(1/2)+1` -/
def P9889793573787174387.Spec : Prop :=
  ∀ n, P9889793573787174387.a n = (A037558 (n + 1) : ℝ)

end A037558

/-! ## A037558.P8760521606550378554

`a(n-1)+or(8*a(n-1), char[3*n])+1` with `a(0)=2`
-/

namespace A037558.P8760521606550378554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Nat.lor (8 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A037558.P8760521606550378554

namespace A037558

/-- `a(n-1)+or(8*a(n-1), char[3*n])+1` -/
def P8760521606550378554.Spec : Prop :=
  ∀ n, (P8760521606550378554.a n : ℤ) = A037558 (n + 1)

end A037558

/-! ## A037558.P1132489451471278271

`A033145(n+1)+∑[9^n]`
-/

namespace A037558.P1132489451471278271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033145 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037558.P1132489451471278271

namespace A037558

/-- `A033145(n+1)+∑[9^n]` -/
def P1132489451471278271.Spec : Prop :=
  ∀ n, P1132489451471278271.a n = A037558 (n + 1)

end A037558

/-! ## A037558.P10869581776523498455

`A033127(n+1)+∑[9*a(n-1)-(n%3-1)]` with `a(0)=1`
-/

namespace A037558.P10869581776523498455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033127 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037558.P10869581776523498455

namespace A037558

/-- `A033127(n+1)+∑[9*a(n-1)-(n%3-1)]` -/
def P10869581776523498455.Spec : Prop :=
  ∀ n, P10869581776523498455.a n = A037558 (n + 1)

end A037558

/-! ## A037558.P16732330138206673827

`A033136(n+1)+A033127(n+1)`
-/

namespace A037558.P16732330138206673827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033136 (n + 1) + A033127 (n + 1)

end

end A037558.P16732330138206673827

namespace A037558

/-- `A033136(n+1)+A033127(n+1)` -/
def P16732330138206673827.Spec : Prop :=
  ∀ n, P16732330138206673827.a n = A037558 (n + 1)

end A037558

/-! ## A037558.P10810874625809596121

`(A037566(n+1)+A037518(n+1))/2`
-/

namespace A037558.P10810874625809596121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037566 (n + 1) + A037518 (n + 1) : ℚ) / 2

end

end A037558.P10810874625809596121

namespace A037558

/-- `(A037566(n+1)+A037518(n+1))/2` -/
def P10810874625809596121.Spec : Prop :=
  ∀ n, P10810874625809596121.a n = (A037558 (n + 1) : ℚ)

end A037558

/-! ## A037558.P15528442016100776709

`(A037672(n+1)+A037502(n+1))/2`
-/

namespace A037558.P15528442016100776709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037672 (n + 1) + A037502 (n + 1) : ℚ) / 2

end

end A037558.P15528442016100776709

namespace A037558

/-- `(A037672(n+1)+A037502(n+1))/2` -/
def P15528442016100776709.Spec : Prop :=
  ∀ n, P15528442016100776709.a n = (A037558 (n + 1) : ℚ)

end A037558

/-!
# A037559: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,1.

The programs for A037559, the canonical program `A037559.P5397796099572379352` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037559 has offset 1).

The definition of A037559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037559.P5397796099572379352

`ogf((2+x+x^2)/(1-10x-x^3+10x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037559

/-- `ogf((2+x+x^2)/(1-10x-x^3+10x^4))` -/
def P5397796099572379352.Spec : Prop :=
  ∀ n, P5397796099572379352.a n = A037559 (n + 1)

theorem P5397796099572379352.correct : P5397796099572379352.Spec := by
  intro n
  simp only [A037559, Nat.add_sub_cancel]

end A037559

/-! ## A037559.P11169436647648546832

`floor(211*10^(n+1)/999)`
-/

namespace A037559.P11169436647648546832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(211 * 10 ^ (n + 1) : ℚ) / 999⌋

end

end A037559.P11169436647648546832

namespace A037559

/-- `floor(211*10^(n+1)/999)` -/
def P11169436647648546832.Spec : Prop :=
  ∀ n, P11169436647648546832.a n = A037559 (n + 1)

end A037559

/-! ## A037559.P10292314687727738600

`char[3*n]+10*a(n-1)+1` with `a(0)=2`
-/

namespace A037559.P10292314687727738600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + (10 * a (n - 1) + 1)

end

end A037559.P10292314687727738600

namespace A037559

/-- `char[3*n]+10*a(n-1)+1` -/
def P10292314687727738600.Spec : Prop :=
  ∀ n, (P10292314687727738600.a n : ℤ) = A037559 (n + 1)

end A037559

/-! ## A037559.P3346311391106450998

`A033146(n)+∑[10^n]`
-/

namespace A037559.P3346311391106450998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033146 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037559.P3346311391106450998

namespace A037559

/-- `A033146(n)+∑[10^n]` -/
def P3346311391106450998.Spec : Prop :=
  ∀ n, P3346311391106450998.a n = A037559 (n + 1)

end A037559

/-! ## A037559.P13681123389351297907

`gcd(2, A000045(n))+5*2*a(n-1)` with `a(0)=2`
-/

namespace A037559.P13681123389351297907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.gcd 2 (A000045 n) + 5 * (2 * a (n - 1))

end

end A037559.P13681123389351297907

namespace A037559

/-- `gcd(2, A000045(n))+5*2*a(n-1)` -/
def P13681123389351297907.Spec : Prop :=
  ∀ n, (P13681123389351297907.a n : ℤ) = A037559 (n + 1)

end A037559

/-! ## A037559.P15778117496441949345

`A011558(A194275(n+1))+3-2*(1-5*a(n-1))` with `a(0)=2`
-/

namespace A037559.P15778117496441949345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A011558 (A194275 (n + 1)).toNat + (3 - 2 * (1 - 5 * a (n - 1)))

end

end A037559.P15778117496441949345

namespace A037559

/-- `A011558(A194275(n+1))+3-2*(1-5*a(n-1))` -/
def P15778117496441949345.Spec : Prop :=
  ∀ n, P15778117496441949345.a n = A037559 (n + 1)

end A037559

/-!
# A037560: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

The programs for A037560, the canonical program `A037560.P14188717331387538892` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037560 has offset 1).

The definition of A037560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037560.P14188717331387538892

`ogf((2+2x+x^2)/(1-3x-x^3+3x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037560

/-- `ogf((2+2x+x^2)/(1-3x-x^3+3x^4))` -/
def P14188717331387538892.Spec : Prop :=
  ∀ n, P14188717331387538892.a n = A037560 (n + 1)

theorem P14188717331387538892.correct : P14188717331387538892.Spec := by
  intro n
  simp only [A037560, Nat.add_sub_cancel]

end A037560

/-! ## A037560.P7439821189853776273

`round(25*∑[3^n/13])`
-/

namespace A037560.P7439821189853776273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (25 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A037560.P7439821189853776273

namespace A037560

/-- `round(25*∑[3^n/13])` -/
def P7439821189853776273.Spec : Prop :=
  ∀ n, P7439821189853776273.a n = A037560 (n + 1)

end A037560

/-! ## A037560.P4590603627340209746

`3*(a(n-1)+1)-(n%3)!` with `a(0)=2`
-/

namespace A037560.P4590603627340209746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * (a (n - 1) + 1) - (Nat.factorial (n % 3) : ℤ)

end

end A037560.P4590603627340209746

namespace A037560

/-- `3*(a(n-1)+1)-(n%3)!` -/
def P4590603627340209746.Spec : Prop :=
  ∀ n, P4590603627340209746.a n = A037560 (n + 1)

end A037560

/-! ## A037560.P1145524735200374725

`gcd(2, (1-n)%3)+3*a(n-1)` with `a(0)=2`
-/

namespace A037560.P1145524735200374725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.gcd 2 (Int.tmod (1 - (n : ℤ)) 3) + 3 * a (n - 1)

end

end A037560.P1145524735200374725

namespace A037560

/-- `gcd(2, (1-n)%3)+3*a(n-1)` -/
def P1145524735200374725.Spec : Prop :=
  ∀ n, (P1145524735200374725.a n : ℤ) = A037560 (n + 1)

end A037560

/-! ## A037560.P17738641540258458841

`3*a(n-1)+(n+1)²%3+1` with `a(0)=2`
-/

namespace A037560.P17738641540258458841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) + ((n + 1) ^ 2 % 3 + 1)

end

end A037560.P17738641540258458841

namespace A037560

/-- `3*a(n-1)+(n+1)²%3+1` -/
def P17738641540258458841.Spec : Prop :=
  ∀ n, (P17738641540258458841.a n : ℤ) = A037560 (n + 1)

end A037560

/-! ## A037560.P13716743229918127967

`A033130(n+1)+∑[3^n]`
-/

namespace A037560.P13716743229918127967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033130 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037560.P13716743229918127967

namespace A037560

/-- `A033130(n+1)+∑[3^n]` -/
def P13716743229918127967.Spec : Prop :=
  ∀ n, P13716743229918127967.a n = A037560 (n + 1)

end A037560

/-! ## A037560.P483291046453676182

`A037504(n+1)+A033121(n+1)`
-/

namespace A037560.P483291046453676182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037504 (n + 1) + A033121 (n + 1)

end

end A037560.P483291046453676182

namespace A037560

/-- `A037504(n+1)+A033121(n+1)` -/
def P483291046453676182.Spec : Prop :=
  ∀ n, P483291046453676182.a n = A037560 (n + 1)

end A037560

/-! ## A037560.P15758128601959585765

`A037536(n+1)+A033139(n+1)`
-/

namespace A037560.P15758128601959585765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037536 (n + 1) + A033139 (n + 1)

end

end A037560.P15758128601959585765

namespace A037560

/-- `A037536(n+1)+A033139(n+1)` -/
def P15758128601959585765.Spec : Prop :=
  ∀ n, P15758128601959585765.a n = A037560 (n + 1)

end A037560

/-! ## A037560.P15585814656205020870

`A037079(A005408(n))+A033121(n+1)`
-/

namespace A037560.P15585814656205020870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037079 (A005408 n).toNat + A033121 (n + 1)

end

end A037560.P15585814656205020870

namespace A037560

/-- `A037079(A005408(n))+A033121(n+1)` -/
def P15585814656205020870.Spec : Prop :=
  ∀ n, P15585814656205020870.a n = A037560 (n + 1)

end A037560

/-! ## A037560.P10434408194386570451

`A037544(n+2)-3^(n+1)`
-/

namespace A037560.P10434408194386570451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037544 (n + 2) - (3 ^ (n + 1) : ℤ)

end

end A037560.P10434408194386570451

namespace A037560

/-- `A037544(n+2)-3^(n+1)` -/
def P10434408194386570451.Spec : Prop :=
  ∀ n, P10434408194386570451.a n = A037560 (n + 1)

end A037560

/-!
# A037561: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

The programs for A037561, the canonical program `A037561.P9501847950343374445` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037561 has offset 1).

The definition of A037561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037561.P9501847950343374445

`ogf((2+2x+x^2)/(1-4x-x^3+4x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037561

/-- `ogf((2+2x+x^2)/(1-4x-x^3+4x^4))` -/
def P9501847950343374445.Spec : Prop :=
  ∀ n, P9501847950343374445.a n = A037561 (n + 1)

theorem P9501847950343374445.correct : P9501847950343374445.Spec := by
  intro n
  simp only [A037561, Nat.add_sub_cancel]

end A037561

/-! ## A037561.P9839442049059261697

`record[gcd(2, n%3)+4*a(n-1)]` with `a(0)=2, a(1)=0`
-/

namespace A037561.P9839442049059261697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  Nat.gcd 2 (n % 3) + 4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037561.P9839442049059261697

namespace A037561

/-- `record[gcd(2, n%3)+4*a(n-1)]` -/
def P9839442049059261697.Spec : Prop :=
  ∀ n, (P9839442049059261697.a n : ℤ) = A037561 (n + 1)

end A037561

/-! ## A037561.P14458152635368674981

`A033131(n+1)+∑[4^n]`
-/

namespace A037561.P14458152635368674981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033131 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037561.P14458152635368674981

namespace A037561

/-- `A033131(n+1)+∑[4^n]` -/
def P14458152635368674981.Spec : Prop :=
  ∀ n, P14458152635368674981.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P14574482434121993326

`A178872(n)+A037569(n+1)`
-/

namespace A037561.P14574482434121993326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A037569 (n + 1)

end

end A037561.P14574482434121993326

namespace A037561

/-- `A178872(n)+A037569(n+1)` -/
def P14574482434121993326.Spec : Prop :=
  ∀ n, P14574482434121993326.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P1329697350274291869

`A037625(n+1)-A178872(n)`
-/

namespace A037561.P1329697350274291869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037625 (n + 1) - A178872 n

end

end A037561.P1329697350274291869

namespace A037561

/-- `A037625(n+1)-A178872(n)` -/
def P1329697350274291869.Spec : Prop :=
  ∀ n, P1329697350274291869.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P16897115277600864272

`A037639(n+1)-∑[A178872(n)]`
-/

namespace A037561.P16897115277600864272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037639 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037561.P16897115277600864272

namespace A037561

/-- `A037639(n+1)-∑[A178872(n)]` -/
def P16897115277600864272.Spec : Prop :=
  ∀ n, P16897115277600864272.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P10918556384884971042

`A037505(n+1)+A033122(n+1)`
-/

namespace A037561.P10918556384884971042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037505 (n + 1) + A033122 (n + 1)

end

end A037561.P10918556384884971042

namespace A037561

/-- `A037505(n+1)+A033122(n+1)` -/
def P10918556384884971042.Spec : Prop :=
  ∀ n, P10918556384884971042.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P1351272510770735358

`A037537(n+1)+A033140(n+1)`
-/

namespace A037561.P1351272510770735358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037537 (n + 1) + A033140 (n + 1)

end

end A037561.P1351272510770735358

namespace A037561

/-- `A037537(n+1)+A033140(n+1)` -/
def P1351272510770735358.Spec : Prop :=
  ∀ n, P1351272510770735358.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P7271512308271760263

`A037618(n+1)+2*A178872(n)`
-/

namespace A037561.P7271512308271760263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037618 (n + 1) + 2 * A178872 n

end

end A037561.P7271512308271760263

namespace A037561

/-- `A037618(n+1)+2*A178872(n)` -/
def P7271512308271760263.Spec : Prop :=
  ∀ n, P7271512308271760263.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P13015760159642480450

`xor(A033122(n+1), A037667(n+1))`
-/

namespace A037561.P13015760159642480450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033122 (n + 1)) (A037667 (n + 1))

end

end A037561.P13015760159642480450

namespace A037561

/-- `xor(A033122(n+1), A037667(n+1))` -/
def P13015760159642480450.Spec : Prop :=
  ∀ n, P13015760159642480450.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P7608087088907496885

`xor(A037505(n+1), A037646(n+1))`
-/

namespace A037561.P7608087088907496885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037505 (n + 1)) (A037646 (n + 1))

end

end A037561.P7608087088907496885

namespace A037561

/-- `xor(A037505(n+1), A037646(n+1))` -/
def P7608087088907496885.Spec : Prop :=
  ∀ n, P7608087088907496885.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P2754611529927104797

`xor(A037604(n+1), A037653(n+1))`
-/

namespace A037561.P2754611529927104797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037604 (n + 1)) (A037653 (n + 1))

end

end A037561.P2754611529927104797

namespace A037561

/-- `xor(A037604(n+1), A037653(n+1))` -/
def P2754611529927104797.Spec : Prop :=
  ∀ n, P2754611529927104797.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P3001471672700987618

`A113405(2*n+3)+A037604(n+1)`
-/

namespace A037561.P3001471672700987618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (2 * n + 3) + A037604 (n + 1)

end

end A037561.P3001471672700987618

namespace A037561

/-- `A113405(2*n+3)+A037604(n+1)` -/
def P3001471672700987618.Spec : Prop :=
  ∀ n, P3001471672700987618.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P2243140678111798477

`A113405(2*n+3)+A033129(2*n+1)`
-/

namespace A037561.P2243140678111798477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (2 * n + 3) + A033129 (2 * n + 1)

end

end A037561.P2243140678111798477

namespace A037561

/-- `A113405(2*n+3)+A033129(2*n+1)` -/
def P2243140678111798477.Spec : Prop :=
  ∀ n, P2243140678111798477.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P3859552757760906754

`xor(4*a(n-1), A000034(A282720(n+1)))` with `a(0)=2`
-/

namespace A037561.P3859552757760906754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (4 * a (n - 1)) (A000034 (A282720 (n + 1)).toNat)

end

end A037561.P3859552757760906754

namespace A037561

/-- `xor(4*a(n-1), A000034(A282720(n+1)))` -/
def P3859552757760906754.Spec : Prop :=
  ∀ n, P3859552757760906754.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P13985329285155957038

`A178872(n)+∑[A004171(n)-A178872(n)]`
-/

namespace A037561.P13985329285155957038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037561.P13985329285155957038

namespace A037561

/-- `A178872(n)+∑[A004171(n)-A178872(n)]` -/
def P13985329285155957038.Spec : Prop :=
  ∀ n, P13985329285155957038.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P1097948083837998912

`A037569(n+1)+A037569(n+1)-A037618(n+1)`
-/

namespace A037561.P1097948083837998912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037569 (n + 1) + (A037569 (n + 1) - A037618 (n + 1))

end

end A037561.P1097948083837998912

namespace A037561

/-- `A037569(n+1)+A037569(n+1)-A037618(n+1)` -/
def P1097948083837998912.Spec : Prop :=
  ∀ n, P1097948083837998912.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P15449057999493360947

`A037521(n+1)+xor(A037513(n+1), A037521(n+1))`
-/

namespace A037561.P15449057999493360947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037521 (n + 1) + Int.xor (A037513 (n + 1)) (A037521 (n + 1))

end

end A037561.P15449057999493360947

namespace A037561

/-- `A037521(n+1)+xor(A037513(n+1), A037521(n+1))` -/
def P15449057999493360947.Spec : Prop :=
  ∀ n, P15449057999493360947.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P4588070412377001747

`2*A037569(n+1)-A037618(n+1)`
-/

namespace A037561.P4588070412377001747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037569 (n + 1) - A037618 (n + 1)

end

end A037561.P4588070412377001747

namespace A037561

/-- `2*A037569(n+1)-A037618(n+1)` -/
def P4588070412377001747.Spec : Prop :=
  ∀ n, P4588070412377001747.a n = A037561 (n + 1)

end A037561

/-! ## A037561.P13339450465905916901

`(A037625(n+1)+A037569(n+1))/2`
-/

namespace A037561.P13339450465905916901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037625 (n + 1) + A037569 (n + 1) : ℚ) / 2

end

end A037561.P13339450465905916901

namespace A037561

/-- `(A037625(n+1)+A037569(n+1))/2` -/
def P13339450465905916901.Spec : Prop :=
  ∀ n, P13339450465905916901.a n = (A037561 (n + 1) : ℚ)

end A037561

/-!
# A037562: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

The programs for A037562, the canonical program `A037562.P4625891725683095474` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037562 has offset 1).

The definition of A037562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037562.P4625891725683095474

`ogf((2+2x+x^2)/(1-5x-x^3+5x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037562

/-- `ogf((2+2x+x^2)/(1-5x-x^3+5x^4))` -/
def P4625891725683095474.Spec : Prop :=
  ∀ n, P4625891725683095474.a n = A037562 (n + 1)

theorem P4625891725683095474.correct : P4625891725683095474.Spec := by
  intro n
  simp only [A037562, Nat.add_sub_cancel]

end A037562

/-! ## A037562.P10211726301322497746

`(n+1)²%3+5*a(n-1)+1` with `a(0)=2`
-/

namespace A037562.P10211726301322497746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1) ^ 2 % 3 + 5 * a (n - 1) + 1

end

end A037562.P10211726301322497746

namespace A037562

/-- `(n+1)²%3+5*a(n-1)+1` -/
def P10211726301322497746.Spec : Prop :=
  ∀ n, (P10211726301322497746.a n : ℤ) = A037562 (n + 1)

end A037562

/-! ## A037562.P6169920823985401718

`record[5*a(n-1)+2-∑[n]%3]` with `a(0)=2, a(1)=0`
-/

namespace A037562.P6169920823985401718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  5 * f1 (n - 1) + (2 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037562.P6169920823985401718

namespace A037562

/-- `record[5*a(n-1)+2-∑[n]%3]` -/
def P6169920823985401718.Spec : Prop :=
  ∀ n, P6169920823985401718.a n = A037562 (n + 1)

end A037562

/-! ## A037562.P8672359650544886381

`lcm(5, a(n-1))+2-Δ[ceil((n+1)/3)]` with `a(0)=2`
-/

namespace A037562.P8672359650544886381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) + (2 - (f1 (n + 1) - f1 n))

end

end A037562.P8672359650544886381

namespace A037562

/-- `lcm(5, a(n-1))+2-Δ[ceil((n+1)/3)]` -/
def P8672359650544886381.Spec : Prop :=
  ∀ n, P8672359650544886381.a n = A037562 (n + 1)

end A037562

/-! ## A037562.P3198027892577573194

`5*a(n-1)+3-A177702(n)` with `a(0)=2`
-/

namespace A037562.P3198027892577573194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) + (3 - A177702 n)

end

end A037562.P3198027892577573194

namespace A037562

/-- `5*a(n-1)+3-A177702(n)` -/
def P3198027892577573194.Spec : Prop :=
  ∀ n, P3198027892577573194.a n = A037562 (n + 1)

end A037562

/-! ## A037562.P7139086721464113689

`∑[A037522(n+1)-A003463(n)]`
-/

namespace A037562.P7139086721464113689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037522 (n + 1) - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037562.P7139086721464113689

namespace A037562

/-- `∑[A037522(n+1)-A003463(n)]` -/
def P7139086721464113689.Spec : Prop :=
  ∀ n, P7139086721464113689.a n = A037562 (n + 1)

end A037562

/-! ## A037562.P15426282648674677772

`A037538(n+1)+A033141(n+1)`
-/

namespace A037562.P15426282648674677772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037538 (n + 1) + A033141 (n + 1)

end

end A037562.P15426282648674677772

namespace A037562

/-- `A037538(n+1)+A033141(n+1)` -/
def P15426282648674677772.Spec : Prop :=
  ∀ n, P15426282648674677772.a n = A037562 (n + 1)

end A037562

/-! ## A037562.P204527260459318251

`2*A037554(n+1)-A037514(n+1)`
-/

namespace A037562.P204527260459318251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037554 (n + 1) - A037514 (n + 1)

end

end A037562.P204527260459318251

namespace A037562

/-- `2*A037554(n+1)-A037514(n+1)` -/
def P204527260459318251.Spec : Prop :=
  ∀ n, P204527260459318251.a n = A037562 (n + 1)

end A037562

/-! ## A037562.P10182882626928756920

`(A037661(n+1)+A037612(n+1))/2`
-/

namespace A037562.P10182882626928756920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037661 (n + 1) + A037612 (n + 1) : ℚ) / 2

end

end A037562.P10182882626928756920

namespace A037562

/-- `(A037661(n+1)+A037612(n+1))/2` -/
def P10182882626928756920.Spec : Prop :=
  ∀ n, P10182882626928756920.a n = (A037562 (n + 1) : ℚ)

end A037562

/-! ## A037562.P4550013773270468552

`A037546(n+1)+A037554(n+1)-A037530(n+1)`
-/

namespace A037562.P4550013773270468552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037546 (n + 1) + (A037554 (n + 1) - A037530 (n + 1))

end

end A037562.P4550013773270468552

namespace A037562

/-- `A037546(n+1)+A037554(n+1)-A037530(n+1)` -/
def P4550013773270468552.Spec : Prop :=
  ∀ n, P4550013773270468552.a n = A037562 (n + 1)

end A037562

/-! ## A037562.P7543346718331494494

`A037626(n+2)-Δ[A037640(n+1)]`
-/

namespace A037562.P7543346718331494494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037626 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037562.P7543346718331494494

namespace A037562

/-- `A037626(n+2)-Δ[A037640(n+1)]` -/
def P7543346718331494494.Spec : Prop :=
  ∀ n, P7543346718331494494.a n = A037562 (n + 1)

end A037562

/-!
# A037563: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

The programs for A037563, the canonical program `A037563.P17955679759141103` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037563 has offset 1).

The definition of A037563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037563.P17955679759141103

`ogf((2+2x+x^2)/(1-6x-x^3+6x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037563

/-- `ogf((2+2x+x^2)/(1-6x-x^3+6x^4))` -/
def P17955679759141103.Spec : Prop :=
  ∀ n, P17955679759141103.a n = A037563 (n + 1)

theorem P17955679759141103.correct : P17955679759141103.Spec := by
  intro n
  simp only [A037563, Nat.add_sub_cancel]

end A037563

/-! ## A037563.P17277350712460531872

`A033133(n+1)+∑[6^n]`
-/

namespace A037563.P17277350712460531872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033133 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037563.P17277350712460531872

namespace A037563

/-- `A033133(n+1)+∑[6^n]` -/
def P17277350712460531872.Spec : Prop :=
  ∀ n, P17277350712460531872.a n = A037563 (n + 1)

end A037563

/-! ## A037563.P1526562322687997710

`and(1, A000045(n+1))+6*a(n-1)+1` with `a(0)=2`
-/

namespace A037563.P1526562322687997710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.land 1 (A000045 (n + 1)) + 6 * a (n - 1) + 1

end

end A037563.P1526562322687997710

namespace A037563

/-- `and(1, A000045(n+1))+6*a(n-1)+1` -/
def P1526562322687997710.Spec : Prop :=
  ∀ n, P1526562322687997710.a n = A037563 (n + 1)

end A037563

/-! ## A037563.P13721153901252179604

`A037507(n+1)+A033124(n+1)`
-/

namespace A037563.P13721153901252179604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037507 (n + 1) + A033124 (n + 1)

end

end A037563.P13721153901252179604

namespace A037563

/-- `A037507(n+1)+A033124(n+1)` -/
def P13721153901252179604.Spec : Prop :=
  ∀ n, P13721153901252179604.a n = A037563 (n + 1)

end A037563

/-! ## A037563.P9683244301570608641

`A037539(n+1)+A033142(n+1)`
-/

namespace A037563.P9683244301570608641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 1) + A033142 (n + 1)

end

end A037563.P9683244301570608641

namespace A037563

/-- `A037539(n+1)+A033142(n+1)` -/
def P9683244301570608641.Spec : Prop :=
  ∀ n, P9683244301570608641.a n = A037563 (n + 1)

end A037563

/-! ## A037563.P15439380160560731308

`6*a(n-1)-A131714(A158057(n))` with `a(0)=2`
-/

namespace A037563.P15439380160560731308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  6 * a (n - 1) - A131714 (A158057 n).toNat

end

end A037563.P15439380160560731308

namespace A037563

/-- `6*a(n-1)-A131714(A158057(n))` -/
def P15439380160560731308.Spec : Prop :=
  ∀ n, P15439380160560731308.a n = A037563 (n + 1)

end A037563

/-! ## A037563.P3765305571918337354

`A037507(n+1)+A037515(n+1)-A033142(n+1)`
-/

namespace A037563.P3765305571918337354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037507 (n + 1) + (A037515 (n + 1) - A033142 (n + 1))

end

end A037563.P3765305571918337354

namespace A037563

/-- `A037507(n+1)+A037515(n+1)-A033142(n+1)` -/
def P3765305571918337354.Spec : Prop :=
  ∀ n, P3765305571918337354.a n = A037563 (n + 1)

end A037563

/-! ## A037563.P14507142654763480585

`A037547(n+1)+A037655(n+1)-A037620(n+1)`
-/

namespace A037563.P14507142654763480585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 1) + (A037655 (n + 1) - A037620 (n + 1))

end

end A037563.P14507142654763480585

namespace A037563

/-- `A037547(n+1)+A037655(n+1)-A037620(n+1)` -/
def P14507142654763480585.Spec : Prop :=
  ∀ n, P14507142654763480585.a n = A037563 (n + 1)

end A037563

/-! ## A037563.P7047455113406095366

`A037634(n+1)+A037662(n+1)-A037655(n+1)`
-/

namespace A037563.P7047455113406095366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037634 (n + 1) + (A037662 (n + 1) - A037655 (n + 1))

end

end A037563.P7047455113406095366

namespace A037563

/-- `A037634(n+1)+A037662(n+1)-A037655(n+1)` -/
def P7047455113406095366.Spec : Prop :=
  ∀ n, P7047455113406095366.a n = A037563 (n + 1)

end A037563

/-! ## A037563.P265301925588327947

`A037571(n+1)+Δ[A037571(n+1)-A037555(n+1)]`
-/

namespace A037563.P265301925588327947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037571 (n + 1) - A037555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037571 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037563.P265301925588327947

namespace A037563

/-- `A037571(n+1)+Δ[A037571(n+1)-A037555(n+1)]` -/
def P265301925588327947.Spec : Prop :=
  ∀ n, P265301925588327947.a n = A037563 (n + 1)

end A037563

/-! ## A037563.P10532162875182935359

`A037627(n+2)-Δ[A037641(n+1)]`
-/

namespace A037563.P10532162875182935359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037627 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037563.P10532162875182935359

namespace A037563

/-- `A037627(n+2)-Δ[A037641(n+1)]` -/
def P10532162875182935359.Spec : Prop :=
  ∀ n, P10532162875182935359.a n = A037563 (n + 1)

end A037563

/-! ## A037563.P15576703503497861029

`Δ[∑[A037571(n+1)]-A037555(n+1)]`
-/

namespace A037563.P15576703503497861029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037571 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037563.P15576703503497861029

namespace A037563

/-- `Δ[∑[A037571(n+1)]-A037555(n+1)]` -/
def P15576703503497861029.Spec : Prop :=
  ∀ n, P15576703503497861029.a n = A037563 (n + 1)

end A037563

/-!
# A037564: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

The programs for A037564, the canonical program `A037564.P2786214834060290380` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037564 has offset 1).

The definition of A037564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037564.P2786214834060290380

`ogf((2+2x+x^2)/(1-7x-x^3+7x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037564

/-- `ogf((2+2x+x^2)/(1-7x-x^3+7x^4))` -/
def P2786214834060290380.Spec : Prop :=
  ∀ n, P2786214834060290380.a n = A037564 (n + 1)

theorem P2786214834060290380.correct : P2786214834060290380.Spec := by
  intro n
  simp only [A037564, Nat.add_sub_cancel]

end A037564

/-! ## A037564.P16865458506272201370

`lcm(7, a(n-1))+gcd(2, (n+2)%3)` with `a(0)=2`
-/

namespace A037564.P16865458506272201370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm 7 (a (n - 1)) + Nat.gcd 2 ((n + 2) % 3)

end

end A037564.P16865458506272201370

namespace A037564

/-- `lcm(7, a(n-1))+gcd(2, (n+2)%3)` -/
def P16865458506272201370.Spec : Prop :=
  ∀ n, (P16865458506272201370.a n : ℤ) = A037564 (n + 1)

end A037564

/-! ## A037564.P818647595884479209

`(n+1)²%3+7*a(n-1)+1` with `a(0)=2`
-/

namespace A037564.P818647595884479209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1) ^ 2 % 3 + 7 * a (n - 1) + 1

end

end A037564.P818647595884479209

namespace A037564

/-- `(n+1)²%3+7*a(n-1)+1` -/
def P818647595884479209.Spec : Prop :=
  ∀ n, (P818647595884479209.a n : ℤ) = A037564 (n + 1)

end A037564

/-! ## A037564.P11282143491643388785

`∑[7*a(n-1)+1-A010872(n)]` with `a(0)=2`
-/

namespace A037564.P11282143491643388785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  7 * f1 (n - 1) + (1 - A010872 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037564.P11282143491643388785

namespace A037564

/-- `∑[7*a(n-1)+1-A010872(n)]` -/
def P11282143491643388785.Spec : Prop :=
  ∀ n, P11282143491643388785.a n = A037564 (n + 1)

end A037564

/-! ## A037564.P14554428921540715410

`A033134(n+1)+∑[A000420(n)]`
-/

namespace A037564.P14554428921540715410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033134 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037564.P14554428921540715410

namespace A037564

/-- `A033134(n+1)+∑[A000420(n)]` -/
def P14554428921540715410.Spec : Prop :=
  ∀ n, P14554428921540715410.a n = A037564 (n + 1)

end A037564

/-! ## A037564.P213661808225050867

`A037540(n+1)+A033143(n+1)`
-/

namespace A037564.P213661808225050867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + A033143 (n + 1)

end

end A037564.P213661808225050867

namespace A037564

/-- `A037540(n+1)+A033143(n+1)` -/
def P213661808225050867.Spec : Prop :=
  ∀ n, P213661808225050867.a n = A037564 (n + 1)

end A037564

/-! ## A037564.P5686856387429161052

`A120741(n+1)-A037532(n+1)`
-/

namespace A037564.P5686856387429161052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037532 (n + 1)

end

end A037564.P5686856387429161052

namespace A037564

/-- `A120741(n+1)-A037532(n+1)` -/
def P5686856387429161052.Spec : Prop :=
  ∀ n, P5686856387429161052.a n = A037564 (n + 1)

end A037564

/-! ## A037564.P2313484725370555479

`(A037642(n+1)+A037556(n+1))/2`
-/

namespace A037564.P2313484725370555479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037642 (n + 1) + A037556 (n + 1) : ℚ) / 2

end

end A037564.P2313484725370555479

namespace A037564

/-- `(A037642(n+1)+A037556(n+1))/2` -/
def P2313484725370555479.Spec : Prop :=
  ∀ n, P2313484725370555479.a n = (A037564 (n + 1) : ℚ)

end A037564

/-! ## A037564.P7495562236128656370

`(A037670(n+1)+A037548(n+1))/2`
-/

namespace A037564.P7495562236128656370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037670 (n + 1) + A037548 (n + 1) : ℚ) / 2

end

end A037564.P7495562236128656370

namespace A037564

/-- `(A037670(n+1)+A037548(n+1))/2` -/
def P7495562236128656370.Spec : Prop :=
  ∀ n, P7495562236128656370.a n = (A037564 (n + 1) : ℚ)

end A037564

/-! ## A037564.P14207633293939247278

`A037621(n+1)+A037642(n+1)-A037635(n+1)`
-/

namespace A037564.P14207633293939247278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037621 (n + 1) + (A037642 (n + 1) - A037635 (n + 1))

end

end A037564.P14207633293939247278

namespace A037564

/-- `A037621(n+1)+A037642(n+1)-A037635(n+1)` -/
def P14207633293939247278.Spec : Prop :=
  ∀ n, P14207633293939247278.a n = A037564 (n + 1)

end A037564

/-! ## A037564.P17838606622786148860

`A037635(n+1)+A037663(n+1)-A037656(n+1)`
-/

namespace A037564.P17838606622786148860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1) + (A037663 (n + 1) - A037656 (n + 1))

end

end A037564.P17838606622786148860

namespace A037564

/-- `A037635(n+1)+A037663(n+1)-A037656(n+1)` -/
def P17838606622786148860.Spec : Prop :=
  ∀ n, P17838606622786148860.a n = A037564 (n + 1)

end A037564

/-! ## A037564.P3611738453102978249

`A037642(n+1)+A037663(n+1)-A037670(n+1)`
-/

namespace A037564.P3611738453102978249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037642 (n + 1) + (A037663 (n + 1) - A037670 (n + 1))

end

end A037564.P3611738453102978249

namespace A037564

/-- `A037642(n+1)+A037663(n+1)-A037670(n+1)` -/
def P3611738453102978249.Spec : Prop :=
  ∀ n, P3611738453102978249.a n = A037564 (n + 1)

end A037564

/-! ## A037564.P17869291454936681870

`A037540(n+1)+∑[A037556(n+1)-A037540(n+1)]`
-/

namespace A037564.P17869291454936681870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037556 (n + 1) - A037540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037564.P17869291454936681870

namespace A037564

/-- `A037540(n+1)+∑[A037556(n+1)-A037540(n+1)]` -/
def P17869291454936681870.Spec : Prop :=
  ∀ n, P17869291454936681870.a n = A037564 (n + 1)

end A037564

/-!
# A037565: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

The programs for A037565, the canonical program `A037565.P11160151730624958848` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037565 has offset 1).

The definition of A037565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037565.P11160151730624958848

`ogf((2+2x+x^2)/(1-8x-x^3+8x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037565

/-- `ogf((2+2x+x^2)/(1-8x-x^3+8x^4))` -/
def P11160151730624958848.Spec : Prop :=
  ∀ n, P11160151730624958848.a n = A037565 (n + 1)

theorem P11160151730624958848.correct : P11160151730624958848.Spec := by
  intro n
  simp only [A037565, Nat.add_sub_cancel]

end A037565

/-! ## A037565.P3069323030639566556

`record[gcd(2, n%3)+8*a(n-1)]` with `a(0)=2, a(1)=0`
-/

namespace A037565.P3069323030639566556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  Nat.gcd 2 (n % 3) + 8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037565.P3069323030639566556

namespace A037565

/-- `record[gcd(2, n%3)+8*a(n-1)]` -/
def P3069323030639566556.Spec : Prop :=
  ∀ n, (P3069323030639566556.a n : ℤ) = A037565 (n + 1)

end A037565

/-! ## A037565.P85717086152269100

`(n+1)²%3+8*a(n-1)+1` with `a(0)=2`
-/

namespace A037565.P85717086152269100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1) ^ 2 % 3 + 8 * a (n - 1) + 1

end

end A037565.P85717086152269100

namespace A037565

/-- `(n+1)²%3+8*a(n-1)+1` -/
def P85717086152269100.Spec : Prop :=
  ∀ n, (P85717086152269100.a n : ℤ) = A037565 (n + 1)

end A037565

/-! ## A037565.P945883172632754716

`A033135(n+1)+∑[8^n]`
-/

namespace A037565.P945883172632754716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033135 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037565.P945883172632754716

namespace A037565

/-- `A033135(n+1)+∑[8^n]` -/
def P945883172632754716.Spec : Prop :=
  ∀ n, P945883172632754716.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P9554992500492522559

`or(8*a(n-1), A010892(n)²)+1` with `a(0)=2`
-/

namespace A037565.P9554992500492522559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (8 * a (n - 1)) (A010892 n ^ 2) + 1

end

end A037565.P9554992500492522559

namespace A037565

/-- `or(8*a(n-1), A010892(n)²)+1` -/
def P9554992500492522559.Spec : Prop :=
  ∀ n, P9554992500492522559.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P6925797134359943620

`xor(8*a(n-1), A049347(n)²)+1` with `a(0)=2`
-/

namespace A037565.P6925797134359943620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (8 * a (n - 1)) (A049347 n ^ 2) + 1

end

end A037565.P6925797134359943620

namespace A037565

/-- `xor(8*a(n-1), A049347(n)²)+1` -/
def P6925797134359943620.Spec : Prop :=
  ∀ n, P6925797134359943620.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P6987915536847998880

`A037509(n+1)+A033126(n+1)`
-/

namespace A037565.P6987915536847998880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037509 (n + 1) + A033126 (n + 1)

end

end A037565.P6987915536847998880

namespace A037565

/-- `A037509(n+1)+A033126(n+1)` -/
def P6987915536847998880.Spec : Prop :=
  ∀ n, P6987915536847998880.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P15689422974936492356

`A037541(n+1)+A033144(n+1)`
-/

namespace A037565.P15689422974936492356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037541 (n + 1) + A033144 (n + 1)

end

end A037565.P15689422974936492356

namespace A037565

/-- `A037541(n+1)+A033144(n+1)` -/
def P15689422974936492356.Spec : Prop :=
  ∀ n, P15689422974936492356.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P129164944071455933

`xor(A037608(n+1), A037657(n+1))`
-/

namespace A037565.P129164944071455933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037608 (n + 1)) (A037657 (n + 1))

end

end A037565.P129164944071455933

namespace A037565

/-- `xor(A037608(n+1), A037657(n+1))` -/
def P129164944071455933.Spec : Prop :=
  ∀ n, P129164944071455933.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P1012433690669833063

`xor(8*a(n-1), A000034(A064989(n+1)))` with `a(0)=2`
-/

namespace A037565.P1012433690669833063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (8 * a (n - 1)) (A000034 (A064989 (n + 1)).toNat)

end

end A037565.P1012433690669833063

namespace A037565

/-- `xor(8*a(n-1), A000034(A064989(n+1)))` -/
def P1012433690669833063.Spec : Prop :=
  ∀ n, P1012433690669833063.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P504503633748304514

`A033138(A016777(n))+A033135(n+1)`
-/

namespace A037565.P504503633748304514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (A016777 n).toNat + A033135 (n + 1)

end

end A037565.P504503633748304514

namespace A037565

/-- `A033138(A016777(n))+A033135(n+1)` -/
def P504503633748304514.Spec : Prop :=
  ∀ n, P504503633748304514.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P7060451777275078719

`and(A037643(n+1)+A037615(n+1), A037643(n+1))`
-/

namespace A037565.P7060451777275078719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037643 (n + 1) + A037615 (n + 1)) (A037643 (n + 1))

end

end A037565.P7060451777275078719

namespace A037565

/-- `and(A037643(n+1)+A037615(n+1), A037643(n+1))` -/
def P7060451777275078719.Spec : Prop :=
  ∀ n, P7060451777275078719.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P14759981659494369815

`A037643(n+1)-and(A037533(n+1), A037643(n+1))`
-/

namespace A037565.P14759981659494369815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 1) - Int.land (A037533 (n + 1)) (A037643 (n + 1))

end

end A037565.P14759981659494369815

namespace A037565

/-- `A037643(n+1)-and(A037533(n+1), A037643(n+1))` -/
def P14759981659494369815.Spec : Prop :=
  ∀ n, P14759981659494369815.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P13498936725979835168

`or(A033135(n+1), A037643(n+1))-A033135(n+1)`
-/

namespace A037565.P13498936725979835168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033135 (n + 1)) (A037643 (n + 1)) - A033135 (n + 1)

end

end A037565.P13498936725979835168

namespace A037565

/-- `or(A033135(n+1), A037643(n+1))-A033135(n+1)` -/
def P13498936725979835168.Spec : Prop :=
  ∀ n, P13498936725979835168.a n = A037565 (n + 1)

end A037565

/-! ## A037565.P13890260938668976593

`and(A037615(n+2), A037643(n+1))`
-/

namespace A037565.P13890260938668976593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037615 (n + 2)) (A037643 (n + 1))

end

end A037565.P13890260938668976593

namespace A037565

/-- `and(A037615(n+2), A037643(n+1))` -/
def P13890260938668976593.Spec : Prop :=
  ∀ n, P13890260938668976593.a n = A037565 (n + 1)

end A037565

/-!
# A037566: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

The programs for A037566, the canonical program `A037566.P16953218454158884317` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037566 has offset 1).

The definition of A037566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037566.P16953218454158884317

`ogf((2+2x+x^2)/(1-9x-x^3+9x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037566

/-- `ogf((2+2x+x^2)/(1-9x-x^3+9x^4))` -/
def P16953218454158884317.Spec : Prop :=
  ∀ n, P16953218454158884317.a n = A037566 (n + 1)

theorem P16953218454158884317.correct : P16953218454158884317.Spec := by
  intro n
  simp only [A037566, Nat.add_sub_cancel]

end A037566

/-! ## A037566.P13693796413666377635

`∑[9*a(n-1)-(n%3-1)]` with `a(0)=2`
-/

namespace A037566.P13693796413666377635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  9 * f1 (n - 1) - (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037566.P13693796413666377635

namespace A037566

/-- `∑[9*a(n-1)-(n%3-1)]` -/
def P13693796413666377635.Spec : Prop :=
  ∀ n, P13693796413666377635.a n = A037566 (n + 1)

end A037566

/-! ## A037566.P7059077972261242904

`a(n-1)+(n+1)²%3+8*a(n-1)+1` with `a(0)=2`
-/

namespace A037566.P7059077972261242904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ((n + 1) ^ 2 % 3 + 8 * a (n - 1)) + 1

end

end A037566.P7059077972261242904

namespace A037566

/-- `a(n-1)+(n+1)²%3+8*a(n-1)+1` -/
def P7059077972261242904.Spec : Prop :=
  ∀ n, (P7059077972261242904.a n : ℤ) = A037566 (n + 1)

end A037566

/-! ## A037566.P9874838969608762332

`A033136(n+1)+∑[9^n]`
-/

namespace A037566.P9874838969608762332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033136 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037566.P9874838969608762332

namespace A037566

/-- `A033136(n+1)+∑[9^n]` -/
def P9874838969608762332.Spec : Prop :=
  ∀ n, P9874838969608762332.a n = A037566 (n + 1)

end A037566

/-! ## A037566.P11840164532495502128

`A010892(n)²+9*a(n-1)+1` with `a(0)=2`
-/

namespace A037566.P11840164532495502128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010892 n ^ 2 + 9 * a (n - 1) + 1

end

end A037566.P11840164532495502128

namespace A037566

/-- `A010892(n)²+9*a(n-1)+1` -/
def P11840164532495502128.Spec : Prop :=
  ∀ n, P11840164532495502128.a n = A037566 (n + 1)

end A037566

/-! ## A037566.P4504824804727035205

`∑[9*a(n-1)]-A037534(n+1)` with `a(0)=3`
-/

namespace A037566.P4504824804727035205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A037534 (n + 1)

end

end A037566.P4504824804727035205

namespace A037566

/-- `∑[9*a(n-1)]-A037534(n+1)` -/
def P4504824804727035205.Spec : Prop :=
  ∀ n, P4504824804727035205.a n = A037566 (n + 1)

end A037566

/-! ## A037566.P14558899285308869328

`A037510(n+1)+A033127(n+1)`
-/

namespace A037566.P14558899285308869328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037510 (n + 1) + A033127 (n + 1)

end

end A037566.P14558899285308869328

namespace A037566

/-- `A037510(n+1)+A033127(n+1)` -/
def P14558899285308869328.Spec : Prop :=
  ∀ n, P14558899285308869328.a n = A037566 (n + 1)

end A037566

/-! ## A037566.P7970271033417436618

`A037542(n+1)+A033145(n+1)`
-/

namespace A037566.P7970271033417436618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037542 (n + 1) + A033145 (n + 1)

end

end A037566.P7970271033417436618

namespace A037566

/-- `A037542(n+1)+A033145(n+1)` -/
def P7970271033417436618.Spec : Prop :=
  ∀ n, P7970271033417436618.a n = A037566 (n + 1)

end A037566

/-! ## A037566.P14519194818774970106

`A037574(n+1)+A033136(n+1)-A033127(n+1)`
-/

namespace A037566.P14519194818774970106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037574 (n + 1) + (A033136 (n + 1) - A033127 (n + 1))

end

end A037566.P14519194818774970106

namespace A037566

/-- `A037574(n+1)+A033136(n+1)-A033127(n+1)` -/
def P14519194818774970106.Spec : Prop :=
  ∀ n, P14519194818774970106.a n = A037566 (n + 1)

end A037566

/-! ## A037566.P1709202603294842966

`A037558(n+1)+A033136(n+1)-A033145(n+1)`
-/

namespace A037566.P1709202603294842966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037558 (n + 1) + (A033136 (n + 1) - A033145 (n + 1))

end

end A037566.P1709202603294842966

namespace A037566

/-- `A037558(n+1)+A033136(n+1)-A033145(n+1)` -/
def P1709202603294842966.Spec : Prop :=
  ∀ n, P1709202603294842966.a n = A037566 (n + 1)

end A037566

/-! ## A037566.P13283756083651950815

`A037609(n+1)+A037630(n+1)-A037616(n+1)`
-/

namespace A037566.P13283756083651950815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037609 (n + 1) + (A037630 (n + 1) - A037616 (n + 1))

end

end A037566.P13283756083651950815

namespace A037566

/-- `A037609(n+1)+A037630(n+1)-A037616(n+1)` -/
def P13283756083651950815.Spec : Prop :=
  ∀ n, P13283756083651950815.a n = A037566 (n + 1)

end A037566

/-! ## A037566.P1985535438971869101

`Δ[∑[A037574(n+1)]-A037558(n+1)]`
-/

namespace A037566.P1985535438971869101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037574 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037566.P1985535438971869101

namespace A037566

/-- `Δ[∑[A037574(n+1)]-A037558(n+1)]` -/
def P1985535438971869101.Spec : Prop :=
  ∀ n, P1985535438971869101.a n = A037566 (n + 1)

end A037566

/-!
# A037567: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,2,1.

The programs for A037567, the canonical program `A037567.P7057840067209637926` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037567 has offset 1).

The definition of A037567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037567.P7057840067209637926

`floor(221/999*10^(n+1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037567

/-- `floor(221/999*10^(n+1))` -/
def P7057840067209637926.Spec : Prop :=
  ∀ n, P7057840067209637926.a n = A037567 (n + 1)

theorem P7057840067209637926.correct : P7057840067209637926.Spec := by
  intro n
  simp only [A037567, Nat.add_sub_cancel]

end A037567

/-! ## A037567.P16237514661774357678

`ogf((2+2x+x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037567.P16237514661774357678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 1] [1, -10, 0, -1, 10] n

end

end A037567.P16237514661774357678

namespace A037567

/-- `ogf((2+2x+x^2)/(1-10x-x^3+10x^4))` -/
def P16237514661774357678.Spec : Prop :=
  ∀ n, P16237514661774357678.a n = A037567 (n + 1)

end A037567

/-! ## A037567.P2728767034334511318

`10*a(n-1)+1+(n+1)²%3` with `a(0)=2`
-/

namespace A037567.P2728767034334511318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + 1 + (n + 1) ^ 2 % 3

end

end A037567.P2728767034334511318

namespace A037567

/-- `10*a(n-1)+1+(n+1)²%3` -/
def P2728767034334511318.Spec : Prop :=
  ∀ n, (P2728767034334511318.a n : ℤ) = A037567 (n + 1)

end A037567

/-! ## A037567.P3617323617013866102

`gcd(2, (n+2)%3)+10*a(n-1)` with `a(0)=2`
-/

namespace A037567.P3617323617013866102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 ((n + 2) % 3) + 10 * a (n - 1)

end

end A037567.P3617323617013866102

namespace A037567

/-- `gcd(2, (n+2)%3)+10*a(n-1)` -/
def P3617323617013866102.Spec : Prop :=
  ∀ n, (P3617323617013866102.a n : ℤ) = A037567 (n + 1)

end A037567

/-! ## A037567.P14618403282783395124

`A033137(n)+∑[10^n]`
-/

namespace A037567.P14618403282783395124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033137 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037567.P14618403282783395124

namespace A037567

/-- `A033137(n)+∑[10^n]` -/
def P14618403282783395124.Spec : Prop :=
  ∀ n, P14618403282783395124.a n = A037567 (n + 1)

end A037567

/-! ## A037567.P11518007470540234857

`∑[10*a(n-1)-A049347(n+1)]` with `a(0)=2`
-/

namespace A037567.P11518007470540234857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  10 * f1 (n - 1) - A049347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037567.P11518007470540234857

namespace A037567

/-- `∑[10*a(n-1)-A049347(n+1)]` -/
def P11518007470540234857.Spec : Prop :=
  ∀ n, P11518007470540234857.a n = A037567 (n + 1)

end A037567

/-! ## A037567.P15141186168545823822

`10*a(n-1)+A128834(2*n)+2-∑[n]%3` with `a(0)=2`
-/

namespace A037567.P15141186168545823822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + (A128834 (2 * n) + (2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)))

end

end A037567.P15141186168545823822

namespace A037567

/-- `10*a(n-1)+A128834(2*n)+2-∑[n]%3` -/
def P15141186168545823822.Spec : Prop :=
  ∀ n, P15141186168545823822.a n = A037567 (n + 1)

end A037567

/-! ## A037567.P1649857611303140216

`A014824(n+2)%(A033146(n+1)+A014824(n))`
-/

namespace A037567.P1649857611303140216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014824 (n + 2)) (A033146 (n + 1 + 1) + A014824 n)

end

end A037567.P1649857611303140216

namespace A037567

/-- `A014824(n+2)%(A033146(n+1)+A014824(n))` -/
def P1649857611303140216.Spec : Prop :=
  ∀ n, P1649857611303140216.a n = A037567 (n + 1)

end A037567

/-!
# A037568: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

The programs for A037568, the canonical program `A037568.P6679814179043288106` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037568 has offset 1).

The definition of A037568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037568.P6679814179043288106

`ogf((2+x+2x^2)/(1-3x-x^3+3x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037568

/-- `ogf((2+x+2x^2)/(1-3x-x^3+3x^4))` -/
def P6679814179043288106.Spec : Prop :=
  ∀ n, P6679814179043288106.a n = A037568 (n + 1)

theorem P6679814179043288106.correct : P6679814179043288106.Spec := by
  intro n
  simp only [A037568, Nat.add_sub_cancel]

end A037568

/-! ## A037568.P12802454849546910651

`gcd(2, n%3)+3*a(n-1)` with `a(0)=2`
-/

namespace A037568.P12802454849546910651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (n % 3) + 3 * a (n - 1)

end

end A037568.P12802454849546910651

namespace A037568

/-- `gcd(2, n%3)+3*a(n-1)` -/
def P12802454849546910651.Spec : Prop :=
  ∀ n, (P12802454849546910651.a n : ℤ) = A037568 (n + 1)

end A037568

/-! ## A037568.P6419917616394566634

`3*a(n-1)+2-∑[n]%3` with `a(0)=2`
-/

namespace A037568.P6419917616394566634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) + (2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ))

end

end A037568.P6419917616394566634

namespace A037568

/-- `3*a(n-1)+2-∑[n]%3` -/
def P6419917616394566634.Spec : Prop :=
  ∀ n, P6419917616394566634.a n = A037568 (n + 1)

end A037568

/-! ## A037568.P16175011159444102007

`(a(n-1)-n)%3+3*a(n-1)` with `a(0)=2`
-/

namespace A037568.P16175011159444102007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (a (n - 1) - (n : ℤ)) 3 + 3 * a (n - 1)

end

end A037568.P16175011159444102007

namespace A037568

/-- `(a(n-1)-n)%3+3*a(n-1)` -/
def P16175011159444102007.Spec : Prop :=
  ∀ n, P16175011159444102007.a n = A037568 (n + 1)

end A037568

/-! ## A037568.P5683197366915302847

`3*a(n-1)-(n-a(n-1))%3` with `a(0)=2`
-/

namespace A037568.P5683197366915302847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) - Int.tmod ((n : ℤ) - a (n - 1)) 3

end

end A037568.P5683197366915302847

namespace A037568

/-- `3*a(n-1)-(n-a(n-1))%3` -/
def P5683197366915302847.Spec : Prop :=
  ∀ n, P5683197366915302847.a n = A037568 (n + 1)

end A037568

/-! ## A037568.P14660677285466811340

`∑[3*a(n-1)-A102283(n)]` with `a(0)=2`
-/

namespace A037568.P14660677285466811340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1) - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037568.P14660677285466811340

namespace A037568

/-- `∑[3*a(n-1)-A102283(n)]` -/
def P14660677285466811340.Spec : Prop :=
  ∀ n, P14660677285466811340.a n = A037568 (n + 1)

end A037568

/-! ## A037568.P9762619830810553148

`A077834(n)+A037544(n+1)`
-/

namespace A037568.P9762619830810553148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077834 n + A037544 (n + 1)

end

end A037568.P9762619830810553148

namespace A037568

/-- `A077834(n)+A037544(n+1)` -/
def P9762619830810553148.Spec : Prop :=
  ∀ n, P9762619830810553148.a n = A037568 (n + 1)

end A037568

/-! ## A037568.P16282532323030901788

`A033121(n+1)+∑[A000244(n)]`
-/

namespace A037568.P16282532323030901788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033121 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037568.P16282532323030901788

namespace A037568

/-- `A033121(n+1)+∑[A000244(n)]` -/
def P16282532323030901788.Spec : Prop :=
  ∀ n, P16282532323030901788.a n = A037568 (n + 1)

end A037568

/-! ## A037568.P6944914860370421873

`A037496(n+1)+A033130(n+1)`
-/

namespace A037568.P6944914860370421873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037496 (n + 1) + A033130 (n + 1)

end

end A037568.P6944914860370421873

namespace A037568

/-- `A037496(n+1)+A033130(n+1)` -/
def P6944914860370421873.Spec : Prop :=
  ∀ n, P6944914860370421873.a n = A037568 (n + 1)

end A037568

/-! ## A037568.P11582157620355752870

`A037528(n+1)+A033139(n+1)`
-/

namespace A037568.P11582157620355752870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037528 (n + 1) + A033139 (n + 1)

end

end A037568.P11582157620355752870

namespace A037568

/-- `A037528(n+1)+A033139(n+1)` -/
def P11582157620355752870.Spec : Prop :=
  ∀ n, P11582157620355752870.a n = A037568 (n + 1)

end A037568

/-!
# A037569: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

The programs for A037569, the canonical program `A037569.P1539289096250032005` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037569 has offset 1).

The definition of A037569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037569.P1738154268020858163

`ogf((2+x+2x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037569.P1738154268020858163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 2] [1, -4, 0, -1, 4] n

end

end A037569.P1738154268020858163

namespace A037569

/-- `ogf((2+x+2x^2)/(1-4x-x^3+4x^4))` -/
def P1738154268020858163.Spec : Prop :=
  ∀ n, P1738154268020858163.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P1539289096250032005

`floor(38*4^(n+1)/63)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037569

/-- `floor(38*4^(n+1)/63)` -/
def P1539289096250032005.Spec : Prop :=
  ∀ n, P1539289096250032005.a n = A037569 (n + 1)

theorem P1539289096250032005.correct : P1539289096250032005.Spec := by
  intro n
  simp only [A037569, Nat.add_sub_cancel]

end A037569

/-! ## A037569.P12524202437552207010

`gcd(2, n%3)+4*a(n-1)` with `a(0)=2`
-/

namespace A037569.P12524202437552207010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (n % 3) + 4 * a (n - 1)

end

end A037569.P12524202437552207010

namespace A037569

/-- `gcd(2, n%3)+4*a(n-1)` -/
def P12524202437552207010.Spec : Prop :=
  ∀ n, (P12524202437552207010.a n : ℤ) = A037569 (n + 1)

end A037569

/-! ## A037569.P13366254030449279381

`A033122(n+1)+∑[4^n]`
-/

namespace A037569.P13366254030449279381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033122 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037569.P13366254030449279381

namespace A037569

/-- `A033122(n+1)+∑[4^n]` -/
def P13366254030449279381.Spec : Prop :=
  ∀ n, P13366254030449279381.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P10595998873868895781

`∑[4*a(n-1)-A102283(n)]` with `a(0)=2`
-/

namespace A037569.P10595998873868895781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  4 * f1 (n - 1) - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037569.P10595998873868895781

namespace A037569

/-- `∑[4*a(n-1)-A102283(n)]` -/
def P10595998873868895781.Spec : Prop :=
  ∀ n, P10595998873868895781.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P463897089459566271

`∑[A004171(n)-A178872(n)]`
-/

namespace A037569.P463897089459566271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037569.P463897089459566271

namespace A037569

/-- `∑[A004171(n)-A178872(n)]` -/
def P463897089459566271.Spec : Prop :=
  ∀ n, P463897089459566271.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P17013796728371632569

`A178872(n)+A037618(n+1)`
-/

namespace A037569.P17013796728371632569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A037618 (n + 1)

end

end A037569.P17013796728371632569

namespace A037569

/-- `A178872(n)+A037618(n+1)` -/
def P17013796728371632569.Spec : Prop :=
  ∀ n, P17013796728371632569.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P3480769768202110338

`A037561(n+1)-A178872(n)`
-/

namespace A037569.P3480769768202110338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037561 (n + 1) - A178872 n

end

end A037569.P3480769768202110338

namespace A037569

/-- `A037561(n+1)-A178872(n)` -/
def P3480769768202110338.Spec : Prop :=
  ∀ n, P3480769768202110338.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P4359802459249843959

`∑[2*A000302(n)-A178872(n)]`
-/

namespace A037569.P4359802459249843959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000302 n - A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037569.P4359802459249843959

namespace A037569

/-- `∑[2*A000302(n)-A178872(n)]` -/
def P4359802459249843959.Spec : Prop :=
  ∀ n, P4359802459249843959.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P13257461622352447247

`A037497(n+1)+A033131(n+1)`
-/

namespace A037569.P13257461622352447247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037497 (n + 1) + A033131 (n + 1)

end

end A037569.P13257461622352447247

namespace A037569

/-- `A037497(n+1)+A033131(n+1)` -/
def P13257461622352447247.Spec : Prop :=
  ∀ n, P13257461622352447247.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P5168547238057315321

`A037529(n+1)+A033140(n+1)`
-/

namespace A037569.P5168547238057315321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037529 (n + 1) + A033140 (n + 1)

end

end A037569.P5168547238057315321

namespace A037569

/-- `A037529(n+1)+A033140(n+1)` -/
def P5168547238057315321.Spec : Prop :=
  ∀ n, P5168547238057315321.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P414414801270498031

`A037625(n+1)-2*A178872(n)`
-/

namespace A037569.P414414801270498031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037625 (n + 1) - 2 * A178872 n

end

end A037569.P414414801270498031

namespace A037569

/-- `A037625(n+1)-2*A178872(n)` -/
def P414414801270498031.Spec : Prop :=
  ∀ n, P414414801270498031.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P11017680646734211720

`xor(A033131(n+1), A037653(n+1))`
-/

namespace A037569.P11017680646734211720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033131 (n + 1)) (A037653 (n + 1))

end

end A037569.P11017680646734211720

namespace A037569

/-- `xor(A033131(n+1), A037653(n+1))` -/
def P11017680646734211720.Spec : Prop :=
  ∀ n, P11017680646734211720.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P1259608154817116598

`xor(A037497(n+1), A037660(n+1))`
-/

namespace A037569.P1259608154817116598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037497 (n + 1)) (A037660 (n + 1))

end

end A037569.P1259608154817116598

namespace A037569

/-- `xor(A037497(n+1), A037660(n+1))` -/
def P1259608154817116598.Spec : Prop :=
  ∀ n, P1259608154817116598.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P4665580620439866115

`xor(A037611(n+1), A037667(n+1))`
-/

namespace A037569.P4665580620439866115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037611 (n + 1)) (A037667 (n + 1))

end

end A037569.P4665580620439866115

namespace A037569

/-- `xor(A037611(n+1), A037667(n+1))` -/
def P4665580620439866115.Spec : Prop :=
  ∀ n, P4665580620439866115.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P9292821527876934711

`∑[2*A000079(n)²-A178872(n)]`
-/

namespace A037569.P9292821527876934711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037569.P9292821527876934711

namespace A037569

/-- `∑[2*A000079(n)²-A178872(n)]` -/
def P9292821527876934711.Spec : Prop :=
  ∀ n, P9292821527876934711.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P4179894637685735515

`∑[A000079(2*n+1)-A178872(n)]`
-/

namespace A037569.P4179894637685735515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037569.P4179894637685735515

namespace A037569

/-- `∑[A000079(2*n+1)-A178872(n)]` -/
def P4179894637685735515.Spec : Prop :=
  ∀ n, P4179894637685735515.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P16673021967931721477

`A033138(2*n+1)+A033131(n+1)`
-/

namespace A037569.P16673021967931721477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (2 * n + 1) + A033131 (n + 1)

end

end A037569.P16673021967931721477

namespace A037569

/-- `A033138(2*n+1)+A033131(n+1)` -/
def P16673021967931721477.Spec : Prop :=
  ∀ n, P16673021967931721477.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P1848151758588973703

`A037590(n+1)+or(1, A037590(n+1))`
-/

namespace A037569.P1848151758588973703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037590 (n + 1) + Int.lor 1 (A037590 (n + 1))

end

end A037569.P1848151758588973703

namespace A037569

/-- `A037590(n+1)+or(1, A037590(n+1))` -/
def P1848151758588973703.Spec : Prop :=
  ∀ n, P1848151758588973703.a n = A037569 (n + 1)

end A037569

/-! ## A037569.P7288533718670485390

`A037639(n+1)-(A178872(n)+∑[A178872(n)])`
-/

namespace A037569.P7288533718670485390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037639 (n + 1) - (A178872 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037569.P7288533718670485390

namespace A037569

/-- `A037639(n+1)-(A178872(n)+∑[A178872(n)])` -/
def P7288533718670485390.Spec : Prop :=
  ∀ n, P7288533718670485390.a n = A037569 (n + 1)

end A037569

/-!
# A037570: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

The programs for A037570, the canonical program `A037570.P9424934362005700647` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037570 has offset 1).

The definition of A037570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037570.P9424934362005700647

`ogf((2+x+2x^2)/(1-5x-x^3+5x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037570

/-- `ogf((2+x+2x^2)/(1-5x-x^3+5x^4))` -/
def P9424934362005700647.Spec : Prop :=
  ∀ n, P9424934362005700647.a n = A037570 (n + 1)

theorem P9424934362005700647.correct : P9424934362005700647.Spec := by
  intro n
  simp only [A037570, Nat.add_sub_cancel]

end A037570

/-! ## A037570.P11572236395327046134

`gcd(2, n%3)+5*a(n-1)` with `a(0)=2`
-/

namespace A037570.P11572236395327046134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (n % 3) + 5 * a (n - 1)

end

end A037570.P11572236395327046134

namespace A037570

/-- `gcd(2, n%3)+5*a(n-1)` -/
def P11572236395327046134.Spec : Prop :=
  ∀ n, (P11572236395327046134.a n : ℤ) = A037570 (n + 1)

end A037570

/-! ## A037570.P10674103512862743158

`∑[5*a(n-1)-A102283(n)]` with `a(0)=2`
-/

namespace A037570.P10674103512862743158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 * f1 (n - 1) - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037570.P10674103512862743158

namespace A037570

/-- `∑[5*a(n-1)-A102283(n)]` -/
def P10674103512862743158.Spec : Prop :=
  ∀ n, P10674103512862743158.a n = A037570 (n + 1)

end A037570

/-! ## A037570.P2755046226940387260

`A033123(n+1)+∑[A000351(n)]`
-/

namespace A037570.P2755046226940387260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033123 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037570.P2755046226940387260

namespace A037570

/-- `A033123(n+1)+∑[A000351(n)]` -/
def P2755046226940387260.Spec : Prop :=
  ∀ n, P2755046226940387260.a n = A037570 (n + 1)

end A037570

/-! ## A037570.P149445646566477003

`A033123(n+1)+A003463(n+1)`
-/

namespace A037570.P149445646566477003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033123 (n + 1) + A003463 (n + 1)

end

end A037570.P149445646566477003

namespace A037570

/-- `A033123(n+1)+A003463(n+1)` -/
def P149445646566477003.Spec : Prop :=
  ∀ n, P149445646566477003.a n = A037570 (n + 1)

end A037570

/-! ## A037570.P11531579196966457469

`A037530(n+1)+A033141(n+1)`
-/

namespace A037570.P11531579196966457469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037530 (n + 1) + A033141 (n + 1)

end

end A037570.P11531579196966457469

namespace A037570

/-- `A037530(n+1)+A033141(n+1)` -/
def P11531579196966457469.Spec : Prop :=
  ∀ n, P11531579196966457469.a n = A037570 (n + 1)

end A037570

/-! ## A037570.P13145112961142148748

`2*A037554(n+1)-A037522(n+1)`
-/

namespace A037570.P13145112961142148748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037554 (n + 1) - A037522 (n + 1)

end

end A037570.P13145112961142148748

namespace A037570

/-- `2*A037554(n+1)-A037522(n+1)` -/
def P13145112961142148748.Spec : Prop :=
  ∀ n, P13145112961142148748.a n = A037570 (n + 1)

end A037570

/-! ## A037570.P16926308953447651940

`(A037647(n+1)+A037605(n+1))/2`
-/

namespace A037570.P16926308953447651940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037647 (n + 1) + A037605 (n + 1) : ℚ) / 2

end

end A037570.P16926308953447651940

namespace A037570

/-- `(A037647(n+1)+A037605(n+1))/2` -/
def P16926308953447651940.Spec : Prop :=
  ∀ n, P16926308953447651940.a n = (A037570 (n + 1) : ℚ)

end A037570

/-! ## A037570.P16256394282861008999

`A037626(n+1)+A037633(n+1)-A037640(n+1)`
-/

namespace A037570.P16256394282861008999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037626 (n + 1) + (A037633 (n + 1) - A037640 (n + 1))

end

end A037570.P16256394282861008999

namespace A037570

/-- `A037626(n+1)+A037633(n+1)-A037640(n+1)` -/
def P16256394282861008999.Spec : Prop :=
  ∀ n, P16256394282861008999.a n = A037570 (n + 1)

end A037570

/-! ## A037570.P15161013958410085071

`A037498(n+1)+∑[A037514(n+1)-A037498(n+1)]`
-/

namespace A037570.P15161013958410085071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037514 (n + 1) - A037498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037498 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037570.P15161013958410085071

namespace A037570

/-- `A037498(n+1)+∑[A037514(n+1)-A037498(n+1)]` -/
def P15161013958410085071.Spec : Prop :=
  ∀ n, P15161013958410085071.a n = A037570 (n + 1)

end A037570

/-!
# A037571: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

The programs for A037571, the canonical program `A037571.P10139973376026635645` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037571 has offset 1).

The definition of A037571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037571.P10139973376026635645

`ogf((2+x+2x^2)/(1-6x-x^3+6x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037571

/-- `ogf((2+x+2x^2)/(1-6x-x^3+6x^4))` -/
def P10139973376026635645.Spec : Prop :=
  ∀ n, P10139973376026635645.a n = A037571 (n + 1)

theorem P10139973376026635645.correct : P10139973376026635645.Spec := by
  intro n
  simp only [A037571, Nat.add_sub_cancel]

end A037571

/-! ## A037571.P13294018925637584942

`A033124(n+1)+∑[A000400(n)]`
-/

namespace A037571.P13294018925637584942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033124 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037571.P13294018925637584942

namespace A037571

/-- `A033124(n+1)+∑[A000400(n)]` -/
def P13294018925637584942.Spec : Prop :=
  ∀ n, P13294018925637584942.a n = A037571 (n + 1)

end A037571

/-! ## A037571.P11142033496596222442

`A037499(n+1)+A033133(n+1)`
-/

namespace A037571.P11142033496596222442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037499 (n + 1) + A033133 (n + 1)

end

end A037571.P11142033496596222442

namespace A037571

/-- `A037499(n+1)+A033133(n+1)` -/
def P11142033496596222442.Spec : Prop :=
  ∀ n, P11142033496596222442.a n = A037571 (n + 1)

end A037571

/-! ## A037571.P5991207052569326648

`A037531(n+1)+A033142(n+1)`
-/

namespace A037571.P5991207052569326648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037531 (n + 1) + A033142 (n + 1)

end

end A037571.P5991207052569326648

namespace A037571

/-- `A037531(n+1)+A033142(n+1)` -/
def P5991207052569326648.Spec : Prop :=
  ∀ n, P5991207052569326648.a n = A037571 (n + 1)

end A037571

/-! ## A037571.P6783185558540803962

`A037499(n+1)+∑[A037515(n+1)-A037499(n+1)]`
-/

namespace A037571.P6783185558540803962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) - A037499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037499 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037571.P6783185558540803962

namespace A037571

/-- `A037499(n+1)+∑[A037515(n+1)-A037499(n+1)]` -/
def P6783185558540803962.Spec : Prop :=
  ∀ n, P6783185558540803962.a n = A037571 (n + 1)

end A037571

/-! ## A037571.P10036997992412804851

`A037547(n+1)+∑[A037620(n+1)-A037547(n+1)]`
-/

namespace A037571.P10036997992412804851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037620 (n + 1) - A037547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037571.P10036997992412804851

namespace A037571

/-- `A037547(n+1)+∑[A037620(n+1)-A037547(n+1)]` -/
def P10036997992412804851.Spec : Prop :=
  ∀ n, P10036997992412804851.a n = A037571 (n + 1)

end A037571

/-! ## A037571.P3785355053677682192

`floor(Δ[A037507(n+1)/3])`
-/

namespace A037571.P3785355053677682192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037507 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A037571.P3785355053677682192

namespace A037571

/-- `floor(Δ[A037507(n+1)/3])` -/
def P3785355053677682192.Spec : Prop :=
  ∀ n, P3785355053677682192.a n = A037571 (n + 1)

end A037571

/-! ## A037571.P12502895989500174186

`(A037620(n+1)+A037563(n+1))/2`
-/

namespace A037571.P12502895989500174186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037620 (n + 1) + A037563 (n + 1) : ℚ) / 2

end

end A037571.P12502895989500174186

namespace A037571

/-- `(A037620(n+1)+A037563(n+1))/2` -/
def P12502895989500174186.Spec : Prop :=
  ∀ n, P12502895989500174186.a n = (A037571 (n + 1) : ℚ)

end A037571

/-! ## A037571.P17779229476500476037

`(A037655(n+1)+A037547(n+1))/2`
-/

namespace A037571.P17779229476500476037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037655 (n + 1) + A037547 (n + 1) : ℚ) / 2

end

end A037571.P17779229476500476037

namespace A037571

/-- `(A037655(n+1)+A037547(n+1))/2` -/
def P17779229476500476037.Spec : Prop :=
  ∀ n, P17779229476500476037.a n = (A037571 (n + 1) : ℚ)

end A037571

/-! ## A037571.P3530102449630360842

`(A037648(n+1)+A037606(n+1))/2`
-/

namespace A037571.P3530102449630360842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037648 (n + 1) + A037606 (n + 1) : ℚ) / 2

end

end A037571.P3530102449630360842

namespace A037571

/-- `(A037648(n+1)+A037606(n+1))/2` -/
def P3530102449630360842.Spec : Prop :=
  ∀ n, P3530102449630360842.a n = (A037571 (n + 1) : ℚ)

end A037571

/-! ## A037571.P17647822457508433298

`∑[6*a(n-1)-A061347(n+1)]-A037531(n+1)` with `a(0)=3`
-/

namespace A037571.P17647822457508433298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  6 * f1 (n - 1) - A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037531 (n + 1)

end

end A037571.P17647822457508433298

namespace A037571

/-- `∑[6*a(n-1)-A061347(n+1)]-A037531(n+1)` -/
def P17647822457508433298.Spec : Prop :=
  ∀ n, P17647822457508433298.a n = A037571 (n + 1)

end A037571

/-! ## A037571.P13121635803605789013

`A037627(n+1)+A037634(n+1)-A037641(n+1)`
-/

namespace A037571.P13121635803605789013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037627 (n + 1) + (A037634 (n + 1) - A037641 (n + 1))

end

end A037571.P13121635803605789013

namespace A037571

/-- `A037627(n+1)+A037634(n+1)-A037641(n+1)` -/
def P13121635803605789013.Spec : Prop :=
  ∀ n, P13121635803605789013.a n = A037571 (n + 1)

end A037571

/-!
# A037572: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

The programs for A037572, the canonical program `A037572.P7156745237691719124` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037572 has offset 1).

The definition of A037572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037572.P7156745237691719124

`ogf((2+x+2x^2)/(1-7x-x^3+7x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037572

/-- `ogf((2+x+2x^2)/(1-7x-x^3+7x^4))` -/
def P7156745237691719124.Spec : Prop :=
  ∀ n, P7156745237691719124.a n = A037572 (n + 1)

theorem P7156745237691719124.correct : P7156745237691719124.Spec := by
  intro n
  simp only [A037572, Nat.add_sub_cancel]

end A037572

/-! ## A037572.P9567802194528461988

`gcd(2, n%3)+8*a(n-1)-a(n-1)` with `a(0)=2`
-/

namespace A037572.P9567802194528461988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Nat.gcd 2 (n % 3) : ℤ) + 8 * a (n - 1) - a (n - 1)

end

end A037572.P9567802194528461988

namespace A037572

/-- `gcd(2, n%3)+8*a(n-1)-a(n-1)` -/
def P9567802194528461988.Spec : Prop :=
  ∀ n, P9567802194528461988.a n = A037572 (n + 1)

end A037572

/-! ## A037572.P3483631564655499501

`A033125(n+1)+∑[7^n]`
-/

namespace A037572.P3483631564655499501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033125 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037572.P3483631564655499501

namespace A037572

/-- `A033125(n+1)+∑[7^n]` -/
def P3483631564655499501.Spec : Prop :=
  ∀ n, P3483631564655499501.a n = A037572 (n + 1)

end A037572

/-! ## A037572.P16613115172745876434

`∑[7*a(n-1)-A102283(n)]` with `a(0)=2`
-/

namespace A037572.P16613115172745876434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  7 * f1 (n - 1) - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037572.P16613115172745876434

namespace A037572

/-- `∑[7*a(n-1)-A102283(n)]` -/
def P16613115172745876434.Spec : Prop :=
  ∀ n, P16613115172745876434.a n = A037572 (n + 1)

end A037572

/-! ## A037572.P15978871374441251818

`A049347(n)+xor(3, 8*a(n-1)+2-n²%3)-a(n-1)` with `a(0)=2`
-/

namespace A037572.P15978871374441251818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A049347 n + (Int.xor 3 (8 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))) - a (n - 1))

end

end A037572.P15978871374441251818

namespace A037572

/-- `A049347(n)+xor(3, 8*a(n-1)+2-n²%3)-a(n-1)` -/
def P15978871374441251818.Spec : Prop :=
  ∀ n, P15978871374441251818.a n = A037572 (n + 1)

end A037572

/-! ## A037572.P4441256052878956186

`∑[A169634(n)]-A037540(n+1)`
-/

namespace A037572.P4441256052878956186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037540 (n + 1)

end

end A037572.P4441256052878956186

namespace A037572

/-- `∑[A169634(n)]-A037540(n+1)` -/
def P4441256052878956186.Spec : Prop :=
  ∀ n, P4441256052878956186.a n = A037572 (n + 1)

end A037572

/-! ## A037572.P12990051087842957414

`A037532(n+1)+A033143(n+1)`
-/

namespace A037572.P12990051087842957414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + A033143 (n + 1)

end

end A037572.P12990051087842957414

namespace A037572

/-- `A037532(n+1)+A033143(n+1)` -/
def P12990051087842957414.Spec : Prop :=
  ∀ n, P12990051087842957414.a n = A037572 (n + 1)

end A037572

/-! ## A037572.P11056051116861992934

`A120741(n+1)-A037540(n+1)`
-/

namespace A037572.P11056051116861992934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037540 (n + 1)

end

end A037572.P11056051116861992934

namespace A037572

/-- `A120741(n+1)-A037540(n+1)` -/
def P11056051116861992934.Spec : Prop :=
  ∀ n, P11056051116861992934.a n = A037572 (n + 1)

end A037572

/-! ## A037572.P11823534911873460471

`(A037635(n+1)+A037556(n+1))/2`
-/

namespace A037572.P11823534911873460471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037635 (n + 1) + A037556 (n + 1) : ℚ) / 2

end

end A037572.P11823534911873460471

namespace A037572

/-- `(A037635(n+1)+A037556(n+1))/2` -/
def P11823534911873460471.Spec : Prop :=
  ∀ n, P11823534911873460471.a n = (A037572 (n + 1) : ℚ)

end A037572

/-! ## A037572.P15523627137178830473

`A037532(n+1)+A037564(n+1)-A037540(n+1)`
-/

namespace A037572.P15523627137178830473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + (A037564 (n + 1) - A037540 (n + 1))

end

end A037572.P15523627137178830473

namespace A037572

/-- `A037532(n+1)+A037564(n+1)-A037540(n+1)` -/
def P15523627137178830473.Spec : Prop :=
  ∀ n, P15523627137178830473.a n = A037572 (n + 1)

end A037572

/-! ## A037572.P17205826280971506085

`A037548(n+1)+A037556(n+1)-A037540(n+1)`
-/

namespace A037572.P17205826280971506085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1) + (A037556 (n + 1) - A037540 (n + 1))

end

end A037572.P17205826280971506085

namespace A037572

/-- `A037548(n+1)+A037556(n+1)-A037540(n+1)` -/
def P17205826280971506085.Spec : Prop :=
  ∀ n, P17205826280971506085.a n = A037572 (n + 1)

end A037572

/-! ## A037572.P16282427555498118821

`A037500(n+1)+∑[A037516(n+1)-A037500(n+1)]`
-/

namespace A037572.P16282427555498118821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037516 (n + 1) - A037500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037500 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037572.P16282427555498118821

namespace A037572

/-- `A037500(n+1)+∑[A037516(n+1)-A037500(n+1)]` -/
def P16282427555498118821.Spec : Prop :=
  ∀ n, P16282427555498118821.a n = A037572 (n + 1)

end A037572

/-!
# A037573: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

The programs for A037573, the canonical program `A037573.P8811686988386405483` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037573 has offset 1).

The definition of A037573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037573.P8811686988386405483

`ogf((2+x+2x^2)/(1-8x-x^3+8x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037573

/-- `ogf((2+x+2x^2)/(1-8x-x^3+8x^4))` -/
def P8811686988386405483.Spec : Prop :=
  ∀ n, P8811686988386405483.a n = A037573 (n + 1)

theorem P8811686988386405483.correct : P8811686988386405483.Spec := by
  intro n
  simp only [A037573, Nat.add_sub_cancel]

end A037573

/-! ## A037573.P8807492080208808275

`gcd(2, n%3)+8*a(n-1)` with `a(0)=2`
-/

namespace A037573.P8807492080208808275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (n % 3) + 8 * a (n - 1)

end

end A037573.P8807492080208808275

namespace A037573

/-- `gcd(2, n%3)+8*a(n-1)` -/
def P8807492080208808275.Spec : Prop :=
  ∀ n, (P8807492080208808275.a n : ℤ) = A037573 (n + 1)

end A037573

/-! ## A037573.P14986550408021274936

`xor(3, xor(8*a(n-1), ((n+1)%3)!))` with `a(0)=2`
-/

namespace A037573.P14986550408021274936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 3 (Nat.xor (8 * a (n - 1)) (Nat.factorial ((n + 1) % 3)))

end

end A037573.P14986550408021274936

namespace A037573

/-- `xor(3, xor(8*a(n-1), ((n+1)%3)!))` -/
def P14986550408021274936.Spec : Prop :=
  ∀ n, (P14986550408021274936.a n : ℤ) = A037573 (n + 1)

end A037573

/-! ## A037573.P17157303023988348791

`A033126(n+1)+∑[A001018(n)]`
-/

namespace A037573.P17157303023988348791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033126 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037573.P17157303023988348791

namespace A037573

/-- `A033126(n+1)+∑[A001018(n)]` -/
def P17157303023988348791.Spec : Prop :=
  ∀ n, P17157303023988348791.a n = A037573 (n + 1)

end A037573

/-! ## A037573.P16817067427149557130

`A037501(n+1)+A033135(n+1)`
-/

namespace A037573.P16817067427149557130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037501 (n + 1) + A033135 (n + 1)

end

end A037573.P16817067427149557130

namespace A037573

/-- `A037501(n+1)+A033135(n+1)` -/
def P16817067427149557130.Spec : Prop :=
  ∀ n, P16817067427149557130.a n = A037573 (n + 1)

end A037573

/-! ## A037573.P17981447902383464732

`A037533(n+1)+A033144(n+1)`
-/

namespace A037573.P17981447902383464732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037533 (n + 1) + A033144 (n + 1)

end

end A037573.P17981447902383464732

namespace A037573

/-- `A037533(n+1)+A033144(n+1)` -/
def P17981447902383464732.Spec : Prop :=
  ∀ n, P17981447902383464732.a n = A037573 (n + 1)

end A037573

/-! ## A037573.P5417897072279736489

`xor(A037501(n+1), A037664(n+1))`
-/

namespace A037573.P5417897072279736489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037501 (n + 1)) (A037664 (n + 1))

end

end A037573.P5417897072279736489

namespace A037573

/-- `xor(A037501(n+1), A037664(n+1))` -/
def P5417897072279736489.Spec : Prop :=
  ∀ n, P5417897072279736489.a n = A037573 (n + 1)

end A037573

/-! ## A037573.P11842062934021563557

`2*A037557(n+1)-A037525(n+1)`
-/

namespace A037573.P11842062934021563557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037557 (n + 1) - A037525 (n + 1)

end

end A037573.P11842062934021563557

namespace A037573

/-- `2*A037557(n+1)-A037525(n+1)` -/
def P11842062934021563557.Spec : Prop :=
  ∀ n, P11842062934021563557.a n = A037573 (n + 1)

end A037573

/-! ## A037573.P5778390071326907550

`(A037650(n+1)+A037608(n+1))/2`
-/

namespace A037573.P5778390071326907550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037650 (n + 1) + A037608 (n + 1) : ℚ) / 2

end

end A037573.P5778390071326907550

namespace A037573

/-- `(A037650(n+1)+A037608(n+1))/2` -/
def P5778390071326907550.Spec : Prop :=
  ∀ n, P5778390071326907550.a n = (A037573 (n + 1) : ℚ)

end A037573

/-! ## A037573.P13807612280071281549

`A037525(n+1)+A037533(n+1)-A033135(n+1)`
-/

namespace A037573.P13807612280071281549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) + (A037533 (n + 1) - A033135 (n + 1))

end

end A037573.P13807612280071281549

namespace A037573

/-- `A037525(n+1)+A037533(n+1)-A033135(n+1)` -/
def P13807612280071281549.Spec : Prop :=
  ∀ n, P13807612280071281549.a n = A037573 (n + 1)

end A037573

/-! ## A037573.P3870461402358810309

`A037541(n+1)+A037636(n+1)-A037549(n+1)`
-/

namespace A037573.P3870461402358810309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037541 (n + 1) + (A037636 (n + 1) - A037549 (n + 1))

end

end A037573.P3870461402358810309

namespace A037573

/-- `A037541(n+1)+A037636(n+1)-A037549(n+1)` -/
def P3870461402358810309.Spec : Prop :=
  ∀ n, P3870461402358810309.a n = A037573 (n + 1)

end A037573

/-! ## A037573.P3415973888175484216

`A037549(n+1)+A037636(n+1)-A037608(n+1)`
-/

namespace A037573.P3415973888175484216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037549 (n + 1) + (A037636 (n + 1) - A037608 (n + 1))

end

end A037573.P3415973888175484216

namespace A037573

/-- `A037549(n+1)+A037636(n+1)-A037608(n+1)` -/
def P3415973888175484216.Spec : Prop :=
  ∀ n, P3415973888175484216.a n = A037573 (n + 1)

end A037573

/-! ## A037573.P16844265149784516400

`and(A037636(n+1)+A037594(n+1), A037636(n+1))`
-/

namespace A037573.P16844265149784516400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037636 (n + 1) + A037594 (n + 1)) (A037636 (n + 1))

end

end A037573.P16844265149784516400

namespace A037573

/-- `and(A037636(n+1)+A037594(n+1), A037636(n+1))` -/
def P16844265149784516400.Spec : Prop :=
  ∀ n, P16844265149784516400.a n = A037573 (n + 1)

end A037573

/-! ## A037573.P12782249214643327282

`A245599(n+2)-A037533(n+2)`
-/

namespace A037573.P12782249214643327282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245599 (n + 2) - A037533 (n + 2)

end

end A037573.P12782249214643327282

namespace A037573

/-- `A245599(n+2)-A037533(n+2)` -/
def P12782249214643327282.Spec : Prop :=
  ∀ n, P12782249214643327282.a n = A037573 (n + 1)

end A037573

/-! ## A037573.P3983588569034134531

`and(A037636(n+1), A037643(n+2))`
-/

namespace A037573.P3983588569034134531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037636 (n + 1)) (A037643 (n + 2))

end

end A037573.P3983588569034134531

namespace A037573

/-- `and(A037636(n+1), A037643(n+2))` -/
def P3983588569034134531.Spec : Prop :=
  ∀ n, P3983588569034134531.a n = A037573 (n + 1)

end A037573

/-!
# A037574: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

The programs for A037574, the canonical program `A037574.P14977664906437494662` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037574 has offset 1).

The definition of A037574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037574.P14977664906437494662

`ogf((2+x+2x^2)/(1-9x-x^3+9x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037574

/-- `ogf((2+x+2x^2)/(1-9x-x^3+9x^4))` -/
def P14977664906437494662.Spec : Prop :=
  ∀ n, P14977664906437494662.a n = A037574 (n + 1)

theorem P14977664906437494662.correct : P14977664906437494662.Spec := by
  intro n
  simp only [A037574, Nat.add_sub_cancel]

end A037574

/-! ## A037574.P9828567409076166201

`a(n-1)+gcd(2, n%3)+8*a(n-1)` with `a(0)=2`
-/

namespace A037574.P9828567409076166201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (Nat.gcd 2 (n % 3) + 8 * a (n - 1))

end

end A037574.P9828567409076166201

namespace A037574

/-- `a(n-1)+gcd(2, n%3)+8*a(n-1)` -/
def P9828567409076166201.Spec : Prop :=
  ∀ n, (P9828567409076166201.a n : ℤ) = A037574 (n + 1)

end A037574

/-! ## A037574.P3891661811153108267

`A037502(n+1)+A033136(n+1)`
-/

namespace A037574.P3891661811153108267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037502 (n + 1) + A033136 (n + 1)

end

end A037574.P3891661811153108267

namespace A037574

/-- `A037502(n+1)+A033136(n+1)` -/
def P3891661811153108267.Spec : Prop :=
  ∀ n, P3891661811153108267.a n = A037574 (n + 1)

end A037574

/-! ## A037574.P6630325725746438131

`A037534(n+1)+A033145(n+1)`
-/

namespace A037574.P6630325725746438131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037534 (n + 1) + A033145 (n + 1)

end

end A037574.P6630325725746438131

namespace A037574

/-- `A037534(n+1)+A033145(n+1)` -/
def P6630325725746438131.Spec : Prop :=
  ∀ n, P6630325725746438131.a n = A037574 (n + 1)

end A037574

/-! ## A037574.P6355911584717764491

`A033127(n+1)+A006342(2*n+1)`
-/

namespace A037574.P6355911584717764491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033127 (n + 1) + A006342 (2 * n + 1)

end

end A037574.P6355911584717764491

namespace A037574

/-- `A033127(n+1)+A006342(2*n+1)` -/
def P6355911584717764491.Spec : Prop :=
  ∀ n, P6355911584717764491.a n = A037574 (n + 1)

end A037574

/-! ## A037574.P8333428730128858895

`A033127(n+1)+A033113(2*n+1)`
-/

namespace A037574.P8333428730128858895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033127 (n + 1) + A033113 (2 * n + 1)

end

end A037574.P8333428730128858895

namespace A037574

/-- `A033127(n+1)+A033113(2*n+1)` -/
def P8333428730128858895.Spec : Prop :=
  ∀ n, P8333428730128858895.a n = A037574 (n + 1)

end A037574

/-! ## A037574.P5539602257036395237

`2*A037558(n+1)-A037526(n+1)`
-/

namespace A037574.P5539602257036395237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037558 (n + 1) - A037526 (n + 1)

end

end A037574.P5539602257036395237

namespace A037574

/-- `2*A037558(n+1)-A037526(n+1)` -/
def P5539602257036395237.Spec : Prop :=
  ∀ n, P5539602257036395237.a n = A037574 (n + 1)

end A037574

/-! ## A037574.P14636548601860519097

`A037502(n+1)+∑[A037518(n+1)-A037502(n+1)]`
-/

namespace A037574.P14636548601860519097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037518 (n + 1) - A037502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037502 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037574.P14636548601860519097

namespace A037574

/-- `A037502(n+1)+∑[A037518(n+1)-A037502(n+1)]` -/
def P14636548601860519097.Spec : Prop :=
  ∀ n, P14636548601860519097.a n = A037574 (n + 1)

end A037574

/-!
# A037575: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,2.

The programs for A037575, the canonical program `A037575.P16855494179152241037` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037575 has offset 1).

The definition of A037575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037575.P16855494179152241037

`floor(212/999*10^(n+1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037575

/-- `floor(212/999*10^(n+1))` -/
def P16855494179152241037.Spec : Prop :=
  ∀ n, P16855494179152241037.a n = A037575 (n + 1)

theorem P16855494179152241037.correct : P16855494179152241037.Spec := by
  intro n
  simp only [A037575, Nat.add_sub_cancel]

end A037575

/-! ## A037575.P12967106862023922287

`ogf((2+x+2x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037575.P12967106862023922287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 2] [1, -10, 0, -1, 10] n

end

end A037575.P12967106862023922287

namespace A037575

/-- `ogf((2+x+2x^2)/(1-10x-x^3+10x^4))` -/
def P12967106862023922287.Spec : Prop :=
  ∀ n, P12967106862023922287.a n = A037575 (n + 1)

end A037575

/-! ## A037575.P15708566196228955205

`gcd(2, n%3)+10*a(n-1)` with `a(0)=2`
-/

namespace A037575.P15708566196228955205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (n % 3) + 10 * a (n - 1)

end

end A037575.P15708566196228955205

namespace A037575

/-- `gcd(2, n%3)+10*a(n-1)` -/
def P15708566196228955205.Spec : Prop :=
  ∀ n, (P15708566196228955205.a n : ℤ) = A037575 (n + 1)

end A037575

/-! ## A037575.P8769118554058680749

`10*a(n-1)+2-∑[n]%3` with `a(0)=2`
-/

namespace A037575.P8769118554058680749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + (2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ))

end

end A037575.P8769118554058680749

namespace A037575

/-- `10*a(n-1)+2-∑[n]%3` -/
def P8769118554058680749.Spec : Prop :=
  ∀ n, P8769118554058680749.a n = A037575 (n + 1)

end A037575

/-! ## A037575.P5796329042274703327

`∑[10*a(n-1)-A102283(n)]` with `a(0)=2`
-/

namespace A037575.P5796329042274703327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  10 * f1 (n - 1) - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037575.P5796329042274703327

namespace A037575

/-- `∑[10*a(n-1)-A102283(n)]` -/
def P5796329042274703327.Spec : Prop :=
  ∀ n, P5796329042274703327.a n = A037575 (n + 1)

end A037575

/-! ## A037575.P158054056081469260

`10*a(n-1)+Δ[A004396(n)]+1` with `a(0)=2`
-/

namespace A037575.P158054056081469260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + (f1 (n + 1) - f1 n + 1)

end

end A037575.P158054056081469260

namespace A037575

/-- `10*a(n-1)+Δ[A004396(n)]+1` -/
def P158054056081469260.Spec : Prop :=
  ∀ n, P158054056081469260.a n = A037575 (n + 1)

end A037575

/-! ## A037575.P15803397584686356707

`∑[10*a(n-1)-A128834(2*n)]` with `a(0)=2`
-/

namespace A037575.P15803397584686356707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  10 * f1 (n - 1) - A128834 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037575.P15803397584686356707

namespace A037575

/-- `∑[10*a(n-1)-A128834(2*n)]` -/
def P15803397584686356707.Spec : Prop :=
  ∀ n, P15803397584686356707.a n = A037575 (n + 1)

end A037575

/-! ## A037575.P15753042313129392720

`10*a(n-1)+A141571(n+1)+1` with `a(0)=2`
-/

namespace A037575.P15753042313129392720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + (A141571 (n + 1) + 1)

end

end A037575.P15753042313129392720

namespace A037575

/-- `10*a(n-1)+A141571(n+1)+1` -/
def P15753042313129392720.Spec : Prop :=
  ∀ n, P15753042313129392720.a n = A037575 (n + 1)

end A037575

/-!
# A037576: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

The programs for A037576, the canonical program `A037576.P5148314527067704770` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037576 has offset 1).

The definition of A037576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037576.P5639342870414560117

`ogf((1+3x)/(1-4x-x^2+4x^3))`
-/

namespace A037576.P5639342870414560117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -4, -1, 4] n

end

end A037576.P5639342870414560117

namespace A037576

/-- `ogf((1+3x)/(1-4x-x^2+4x^3))` -/
def P5639342870414560117.Spec : Prop :=
  ∀ n, P5639342870414560117.a n = A037576 (n + 1)

end A037576

/-! ## A037576.P5148314527067704770

`4*a(n-1)+2+(-1)^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037576

/-- `4*a(n-1)+2+(-1)^(n+1)` -/
def P5148314527067704770.Spec : Prop :=
  ∀ n, P5148314527067704770.a n = A037576 (n + 1)

theorem P5148314527067704770.correct : P5148314527067704770.Spec := by
  intro n
  simp only [A037576, Nat.add_sub_cancel]

end A037576

/-! ## A037576.P6402153369227516909

`floor(7*4^(n+1)/15)`
-/

namespace A037576.P6402153369227516909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 * 4 ^ (n + 1) : ℚ) / 15⌋

end

end A037576.P6402153369227516909

namespace A037576

/-- `floor(7*4^(n+1)/15)` -/
def P6402153369227516909.Spec : Prop :=
  ∀ n, P6402153369227516909.a n = A037576 (n + 1)

end A037576

/-! ## A037576.P3710684841277353697

`3^(n%2)+4*a(n-1)` with `a(0)=1`
-/

namespace A037576.P3710684841277353697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 ^ (n % 2) + 4 * a (n - 1)

end

end A037576.P3710684841277353697

namespace A037576

/-- `3^(n%2)+4*a(n-1)` -/
def P3710684841277353697.Spec : Prop :=
  ∀ n, (P3710684841277353697.a n : ℤ) = A037576 (n + 1)

end A037576

/-! ## A037576.P14221594334667669004

`or(4*a(n-1), a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A037576.P14221594334667669004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Nat.lor (4 * a (n - 1)) (a (n - 2))

end

end A037576.P14221594334667669004

namespace A037576

/-- `or(4*a(n-1), a(n-2))` -/
def P14221594334667669004.Spec : Prop :=
  ∀ n, (P14221594334667669004.a n : ℤ) = A037576 (n + 1)

end A037576

/-! ## A037576.P16839064312706488609

`or(lcm(4, a(n-1)), a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A037576.P16839064312706488609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Nat.lor (Nat.lcm 4 (a (n - 1))) (a (n - 2))

end

end A037576.P16839064312706488609

namespace A037576

/-- `or(lcm(4, a(n-1)), a(n-2))` -/
def P16839064312706488609.Spec : Prop :=
  ∀ n, (P16839064312706488609.a n : ℤ) = A037576 (n + 1)

end A037576

/-! ## A037576.P12472777443480649109

`floor(3/gcd(2, n))+4*a(n-1)` with `a(0)=1`
-/

namespace A037576.P12472777443480649109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊3 / (Nat.gcd 2 n : ℚ)⌋ + 4 * a (n - 1)

end

end A037576.P12472777443480649109

namespace A037576

/-- `floor(3/gcd(2, n))+4*a(n-1)` -/
def P12472777443480649109.Spec : Prop :=
  ∀ n, P12472777443480649109.a n = A037576 (n + 1)

end A037576

/-! ## A037576.P11929811548588530107

`∑[4*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A037576.P11929811548588530107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A037576.P11929811548588530107

namespace A037576

/-- `∑[4*a(n-1)]-a(n-1)` -/
def P11929811548588530107.Spec : Prop :=
  ∀ n, P11929811548588530107.a n = A037576 (n + 1)

end A037576

/-! ## A037576.P632661255991252259

`record[4*a(n-2)]+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A037576.P632661255991252259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A037576.P632661255991252259

namespace A037576

/-- `record[4*a(n-2)]+a(n-2)` -/
def P632661255991252259.Spec : Prop :=
  ∀ n, (P632661255991252259.a n : ℤ) = A037576 (n + 1)

end A037576

/-! ## A037576.P12618468946616767126

`2*and(1, n)+1+4*a(n-1)` with `a(0)=1`
-/

namespace A037576.P12618468946616767126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.land 1 n + 1 + 4 * a (n - 1)

end

end A037576.P12618468946616767126

namespace A037576

/-- `2*and(1, n)+1+4*a(n-1)` -/
def P12618468946616767126.Spec : Prop :=
  ∀ n, (P12618468946616767126.a n : ℤ) = A037576 (n + 1)

end A037576

/-! ## A037576.P4428434341830310576

`gcd(3, (n+1)%2)+4*a(n-1)` with `a(0)=1`
-/

namespace A037576.P4428434341830310576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 3 ((n + 1) % 2) + 4 * a (n - 1)

end

end A037576.P4428434341830310576

namespace A037576

/-- `gcd(3, (n+1)%2)+4*a(n-1)` -/
def P4428434341830310576.Spec : Prop :=
  ∀ n, (P4428434341830310576.a n : ℤ) = A037576 (n + 1)

end A037576

/-! ## A037576.P16473141643111780102

`a(n-2)%4+4*a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A037576.P16473141643111780102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) % 4 + 4 * a (n - 1)

end

end A037576.P16473141643111780102

namespace A037576

/-- `a(n-2)%4+4*a(n-1)` -/
def P16473141643111780102.Spec : Prop :=
  ∀ n, (P16473141643111780102.a n : ℤ) = A037576 (n + 1)

end A037576

/-! ## A037576.P115124958618709052

`4*a(n-1)-(a(n-1)%4-4)` with `a(0)=1`
-/

namespace A037576.P115124958618709052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (Int.tmod (a (n - 1)) 4 - 4)

end

end A037576.P115124958618709052

namespace A037576

/-- `4*a(n-1)-(a(n-1)%4-4)` -/
def P115124958618709052.Spec : Prop :=
  ∀ n, P115124958618709052.a n = A037576 (n + 1)

end A037576

/-! ## A037576.P17951320121045895141

`∑[A255465(n)]`
-/

namespace A037576.P17951320121045895141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037576.P17951320121045895141

namespace A037576

/-- `∑[A255465(n)]` -/
def P17951320121045895141.Spec : Prop :=
  ∀ n, P17951320121045895141.a n = A037576 (n + 1)

end A037576

/-! ## A037576.P11970159444291286538

`A265381(2*n)`
-/

namespace A037576.P11970159444291286538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265381 (2 * n)

end

end A037576.P11970159444291286538

namespace A037576

/-- `A265381(2*n)` -/
def P11970159444291286538.Spec : Prop :=
  ∀ n, P11970159444291286538.a n = A037576 (n + 1)

end A037576

/-! ## A037576.P7112455510107024435

`A033082(3*n+1)`
-/

namespace A037576.P7112455510107024435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033082 (3 * n + 1)

end

end A037576.P7112455510107024435

namespace A037576

/-- `A033082(3*n+1)` -/
def P7112455510107024435.Spec : Prop :=
  ∀ n, P7112455510107024435.a n = A037576 (n + 1)

end A037576

/-! ## A037576.P13203418769937970989

`A083597(n)-a(n-1)` with `a(0)=1`
-/

namespace A037576.P13203418769937970989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083597 n - a (n - 1)

end

end A037576.P13203418769937970989

namespace A037576

/-- `A083597(n)-a(n-1)` -/
def P13203418769937970989.Spec : Prop :=
  ∀ n, P13203418769937970989.a n = A037576 (n + 1)

end A037576

/-! ## A037576.P14389489026849745519

`∑[A135541(2*n+1)/2]`
-/

namespace A037576.P14389489026849745519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135541 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037576.P14389489026849745519

namespace A037576

/-- `∑[A135541(2*n+1)/2]` -/
def P14389489026849745519.Spec : Prop :=
  ∀ n, P14389489026849745519.a n = (A037576 (n + 1) : ℚ)

end A037576

/-! ## A037576.P10644039648892777073

`(A006977(2*n+1)-1)/2`
-/

namespace A037576.P10644039648892777073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006977 (2 * n + 1) - 1 : ℚ) / 2

end

end A037576.P10644039648892777073

namespace A037576

/-- `(A006977(2*n+1)-1)/2` -/
def P10644039648892777073.Spec : Prop :=
  ∀ n, P10644039648892777073.a n = (A037576 (n + 1) : ℚ)

end A037576

/-! ## A037576.P279849292488120990

`A083595(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A037576.P279849292488120990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083595 (2 * n) - a (n - 1)

end

end A037576.P279849292488120990

namespace A037576

/-- `A083595(2*n)-a(n-1)` -/
def P279849292488120990.Spec : Prop :=
  ∀ n, P279849292488120990.a n = A037576 (n + 1)

end A037576

/-!
# A037577: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

The programs for A037577, the canonical program `A037577.P5061404311743793647` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037577 has offset 1).

The definition of A037577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037577.P5061404311743793647

`floor(5^(n+1)/3)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037577

/-- `floor(5^(n+1)/3)` -/
def P5061404311743793647.Spec : Prop :=
  ∀ n, P5061404311743793647.a n = A037577 (n + 1)

theorem P5061404311743793647.correct : P5061404311743793647.Spec := by
  intro n
  simp only [A037577, Nat.add_sub_cancel]

end A037577

/-! ## A037577.P17156727474380385701

`ogf((1+3x)/(1-5x-x^2+5x^3))`
-/

namespace A037577.P17156727474380385701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -5, -1, 5] n

end

end A037577.P17156727474380385701

namespace A037577

/-- `ogf((1+3x)/(1-5x-x^2+5x^3))` -/
def P17156727474380385701.Spec : Prop :=
  ∀ n, P17156727474380385701.a n = A037577 (n + 1)

end A037577

/-! ## A037577.P1024332068036281486

`5*a(n-1)+2+(-1)^(n+1)` with `a(0)=1`
-/

namespace A037577.P1024332068036281486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + 2 + (-1) ^ (n + 1)

end

end A037577.P1024332068036281486

namespace A037577

/-- `5*a(n-1)+2+(-1)^(n+1)` -/
def P1024332068036281486.Spec : Prop :=
  ∀ n, P1024332068036281486.a n = A037577 (n + 1)

end A037577

/-! ## A037577.P14703215873784928537

`round(xor(1, 5^(n+1))/3)`
-/

namespace A037577.P14703215873784928537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (5 ^ (n + 1)) : ℚ) / 3)

end

end A037577.P14703215873784928537

namespace A037577

/-- `round(xor(1, 5^(n+1))/3)` -/
def P14703215873784928537.Spec : Prop :=
  ∀ n, P14703215873784928537.a n = A037577 (n + 1)

end A037577

/-! ## A037577.P9910099275791594193

`∑[xor(2, 5*a(n-1))]` with `a(0)=1`
-/

namespace A037577.P9910099275791594193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 2 (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037577.P9910099275791594193

namespace A037577

/-- `∑[xor(2, 5*a(n-1))]` -/
def P9910099275791594193.Spec : Prop :=
  ∀ n, (P9910099275791594193.a n : ℤ) = A037577 (n + 1)

end A037577

/-! ## A037577.P6227764538338025591

`∑[xor(2, lcm(5, a(n-1)))]` with `a(0)=1`
-/

namespace A037577.P6227764538338025591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 2 (Nat.lcm 5 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037577.P6227764538338025591

namespace A037577

/-- `∑[xor(2, lcm(5, a(n-1)))]` -/
def P6227764538338025591.Spec : Prop :=
  ∀ n, (P6227764538338025591.a n : ℤ) = A037577 (n + 1)

end A037577

/-! ## A037577.P1034675509399617356

`(5^(n+1)-gcd(2, n))/3`
-/

namespace A037577.P1034675509399617356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 1) : ℤ) - (Nat.gcd 2 n : ℤ) : ℚ) / 3

end

end A037577.P1034675509399617356

namespace A037577

/-- `(5^(n+1)-gcd(2, n))/3` -/
def P1034675509399617356.Spec : Prop :=
  ∀ n, P1034675509399617356.a n = (A037577 (n + 1) : ℚ)

end A037577

/-! ## A037577.P3278186803998250246

`abs(floor(∑[5*a(n-1)]/3))` with `a(0)=4`
-/

namespace A037577.P3278186803998250246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋|

end

end A037577.P3278186803998250246

namespace A037577

/-- `abs(floor(∑[5*a(n-1)]/3))` -/
def P3278186803998250246.Spec : Prop :=
  ∀ n, P3278186803998250246.a n = A037577 (n + 1)

end A037577

/-! ## A037577.P1134733268169643658

`or(2, 5*a(n-1)-1)+2` with `a(0)=1`
-/

namespace A037577.P1134733268169643658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (5 * a (n - 1) - 1) + 2

end

end A037577.P1134733268169643658

namespace A037577

/-- `or(2, 5*a(n-1)-1)+2` -/
def P1134733268169643658.Spec : Prop :=
  ∀ n, P1134733268169643658.a n = A037577 (n + 1)

end A037577

/-! ## A037577.P10166781652989001848

`2*5^n-(a(n-1)+1)` with `a(0)=1`
-/

namespace A037577.P10166781652989001848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * 5 ^ n : ℤ) - (a (n - 1) + 1)

end

end A037577.P10166781652989001848

namespace A037577

/-- `2*5^n-(a(n-1)+1)` -/
def P10166781652989001848.Spec : Prop :=
  ∀ n, P10166781652989001848.a n = A037577 (n + 1)

end A037577

/-! ## A037577.P1748527770583921245

`2*5^n-1-a(n-1)` with `a(0)=1`
-/

namespace A037577.P1748527770583921245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * 5 ^ n : ℤ) - 1 - a (n - 1)

end

end A037577.P1748527770583921245

namespace A037577

/-- `2*5^n-1-a(n-1)` -/
def P1748527770583921245.Spec : Prop :=
  ∀ n, P1748527770583921245.a n = A037577 (n + 1)

end A037577

/-! ## A037577.P5828517627792344325

`2*and(1, n)+1+5*a(n-1)` with `a(0)=1`
-/

namespace A037577.P5828517627792344325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.land 1 n + 1 + 5 * a (n - 1)

end

end A037577.P5828517627792344325

namespace A037577

/-- `2*and(1, n)+1+5*a(n-1)` -/
def P5828517627792344325.Spec : Prop :=
  ∀ n, (P5828517627792344325.a n : ℤ) = A037577 (n + 1)

end A037577

/-! ## A037577.P18424245252357806117

`gcd(3, (n+1)%2)+5*a(n-1)` with `a(0)=1`
-/

namespace A037577.P18424245252357806117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 3 ((n + 1) % 2) + 5 * a (n - 1)

end

end A037577.P18424245252357806117

namespace A037577

/-- `gcd(3, (n+1)%2)+5*a(n-1)` -/
def P18424245252357806117.Spec : Prop :=
  ∀ n, (P18424245252357806117.a n : ℤ) = A037577 (n + 1)

end A037577

/-! ## A037577.P1991322732871855389

`a(n-2)%5+5*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A037577.P1991322732871855389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 2) % 5 + 5 * a (n - 1)

end

end A037577.P1991322732871855389

namespace A037577

/-- `a(n-2)%5+5*a(n-1)` -/
def P1991322732871855389.Spec : Prop :=
  ∀ n, (P1991322732871855389.a n : ℤ) = A037577 (n + 1)

end A037577

/-! ## A037577.P16602598968926016018

`4-(a(n-1)%5-5*a(n-1))` with `a(0)=1`
-/

namespace A037577.P16602598968926016018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - (Int.tmod (a (n - 1)) 5 - 5 * a (n - 1))

end

end A037577.P16602598968926016018

namespace A037577

/-- `4-(a(n-1)%5-5*a(n-1))` -/
def P16602598968926016018.Spec : Prop :=
  ∀ n, P16602598968926016018.a n = A037577 (n + 1)

end A037577

/-! ## A037577.P11494779761034637174

`(Δ[A083425(n)]-1)/2`
-/

namespace A037577.P11494779761034637174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083425 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A037577.P11494779761034637174

namespace A037577

/-- `(Δ[A083425(n)]-1)/2` -/
def P11494779761034637174.Spec : Prop :=
  ∀ n, P11494779761034637174.a n = (A037577 (n + 1) : ℚ)

end A037577

/-! ## A037577.P16315975588113998253

`(A083217(n+1)-1)/2`
-/

namespace A037577.P16315975588113998253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083217 (n + 1) - 1 : ℚ) / 2

end

end A037577.P16315975588113998253

namespace A037577

/-- `(A083217(n+1)-1)/2` -/
def P16315975588113998253.Spec : Prop :=
  ∀ n, P16315975588113998253.a n = (A037577 (n + 1) : ℚ)

end A037577

/-! ## A037577.P8953963250318449150

`A016127(n)+A000975(n)`
-/

namespace A037577.P8953963250318449150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016127 n + A000975 n

end

end A037577.P8953963250318449150

namespace A037577

/-- `A016127(n)+A000975(n)` -/
def P8953963250318449150.Spec : Prop :=
  ∀ n, P8953963250318449150.a n = A037577 (n + 1)

end A037577

/-! ## A037577.P2687133905757811922

`A016127(n)+∑[A001045(n)]`
-/

namespace A037577.P2687133905757811922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016127 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037577.P2687133905757811922

namespace A037577

/-- `A016127(n)+∑[A001045(n)]` -/
def P2687133905757811922.Spec : Prop :=
  ∀ n, P2687133905757811922.a n = A037577 (n + 1)

end A037577

/-!
# A037578: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

The programs for A037578, the canonical program `A037578.P9240005201318235116` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037578 has offset 1).

The definition of A037578 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037578.anchor (n : ℕ) (hn : 1 ≤ n) : A037578 n = ((Nat.ofDigits 6 ((List.range n).reverse.map fun i => [1, 3].getD (i % 2) 0) : ℕ) : ℤ)` in `Proof.A037.A037578`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037578.P6626964802381422756

`ogf((1+3x)/(1-6x-x^2+6x^3))`
-/

namespace A037578.P6626964802381422756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -6, -1, 6] n

end

end A037578.P6626964802381422756

namespace A037578

/-- `ogf((1+3x)/(1-6x-x^2+6x^3))` -/
def P6626964802381422756.Spec : Prop :=
  ∀ n, P6626964802381422756.a n = A037578 (n + 1)

end A037578

/-! ## A037578.P9240005201318235116

`5*a(n-1)+6*a(n-2)+4` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037578

/-- `5*a(n-1)+6*a(n-2)+4` -/
def P9240005201318235116.Spec : Prop :=
  ∀ n, (P9240005201318235116.a n : ℤ) = A037578 (n + 1)

theorem P9240005201318235116.correct : P9240005201318235116.Spec := by
  intro n
  simp only [A037578, Nat.add_sub_cancel]

end A037578

/-! ## A037578.P10692089853504050163

`9*6^(n+1)/35-2/5+(-1)^(n+1)/7`
-/

namespace A037578.P10692089853504050163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * 6 ^ (n + 1) : ℚ) / 35 - (2 : ℚ) / 5 + ((-1) ^ (n + 1) : ℚ) / 7

end

end A037578.P10692089853504050163

namespace A037578

/-- `9*6^(n+1)/35-2/5+(-1)^(n+1)/7` -/
def P10692089853504050163.Spec : Prop :=
  ∀ n, P10692089853504050163.a n = (A037578 (n + 1) : ℚ)

theorem P10692089853504050163.correct : P10692089853504050163.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A037578, Nat.add_sub_cancel, A037578.P10692089853504050163.a, A037578.P9240005201318235116.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A037578, Nat.add_sub_cancel, A037578.P10692089853504050163.a, A037578.P9240005201318235116.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A037578

/-! ## A037578.P13585498633792617570

`∑[6*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=9`
-/

namespace A037578.P13585498633792617570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A037578.P13585498633792617570

namespace A037578

/-- `∑[6*a(n-1)]-a(n-1)` -/
def P13585498633792617570.Spec : Prop :=
  ∀ n, P13585498633792617570.a n = A037578 (n + 1)

end A037578

/-! ## A037578.P12061790068354131225

`∑[A000400(n)+2*A015540(n)]`
-/

namespace A037578.P12061790068354131225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + 2 * A015540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037578.P12061790068354131225

namespace A037578

/-- `∑[A000400(n)+2*A015540(n)]` -/
def P12061790068354131225.Spec : Prop :=
  ∀ n, P12061790068354131225.a n = A037578 (n + 1)

end A037578

/-! ## A037578.P4316482870866834541

`floor(∑[6*a(n-1)]/7)` with `a(0)=9`
-/

namespace A037578.P4316482870866834541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7⌋

end

end A037578.P4316482870866834541

namespace A037578

/-- `floor(∑[6*a(n-1)]/7)` -/
def P4316482870866834541.Spec : Prop :=
  ∀ n, P4316482870866834541.a n = A037578 (n + 1)

end A037578

/-! ## A037578.P2264133232227125226

`∑[6^(n+1)/4-a(n-1)]` with `a(0)=1`
-/

namespace A037578.P2264133232227125226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (6 ^ (n + 1) : ℚ) / 4 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037578.P2264133232227125226

namespace A037578

/-- `∑[6^(n+1)/4-a(n-1)]` -/
def P2264133232227125226.Spec : Prop :=
  ∀ n, P2264133232227125226.a n = (A037578 (n + 1) : ℚ)

end A037578

/-! ## A037578.P5176705458992978905

`∑[A220932(n+1)/2]`
-/

namespace A037578.P5176705458992978905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220932 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037578.P5176705458992978905

namespace A037578

/-- `∑[A220932(n+1)/2]` -/
def P5176705458992978905.Spec : Prop :=
  ∀ n, P5176705458992978905.a n = (A037578 (n + 1) : ℚ)

end A037578

/-!
# A037579: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

The programs for A037579, the canonical program `A037579.P13563933408940017249` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037579 has offset 1).

The definition of A037579 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037579.anchor (n : ℕ) (hn : 1 ≤ n) : A037579 n = ((Nat.ofDigits 7 ((List.range n).reverse.map fun i => [1, 3].getD (i % 2) 0) : ℕ) : ℤ)` in `Proof.A037.A037579`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037579.P6776900817877570378

`ogf((1+3x)/(1-7x-x^2+7x^3))`
-/

namespace A037579.P6776900817877570378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -7, -1, 7] n

end

end A037579.P6776900817877570378

namespace A037579

/-- `ogf((1+3x)/(1-7x-x^2+7x^3))` -/
def P6776900817877570378.Spec : Prop :=
  ∀ n, P6776900817877570378.a n = A037579 (n + 1)

end A037579

/-! ## A037579.P13563933408940017249

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=1, a(1)=10, a(2)=71`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037579

/-- `7*a(n-1)+a(n-2)-7*a(n-3)` -/
def P13563933408940017249.Spec : Prop :=
  ∀ n, P13563933408940017249.a n = A037579 (n + 1)

theorem P13563933408940017249.correct : P13563933408940017249.Spec := by
  intro n
  simp only [A037579, Nat.add_sub_cancel]

end A037579

/-! ## A037579.P3105188605556893690

`(5*7^(n+1)-3*(-1)^n-8)/24`
-/

namespace A037579.P3105188605556893690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 7 ^ (n + 1) : ℤ) - 3 * (-1) ^ n - 8 : ℚ) / 24

end

end A037579.P3105188605556893690

namespace A037579

/-- `(5*7^(n+1)-3*(-1)^n-8)/24` -/
def P3105188605556893690.Spec : Prop :=
  ∀ n, P3105188605556893690.a n = (A037579 (n + 1) : ℚ)

theorem P3105188605556893690.correct : P3105188605556893690.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A037579, Nat.add_sub_cancel, A037579.P3105188605556893690.a, A037579.P13563933408940017249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A037579, Nat.add_sub_cancel, A037579.P3105188605556893690.a, A037579.P13563933408940017249.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A037579

/-! ## A037579.P965562287114126714

`xor(1, 7*a(n-1)+1)+1` with `a(0)=1`
-/

namespace A037579.P965562287114126714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (7 * a (n - 1) + 1) + 1

end

end A037579.P965562287114126714

namespace A037579

/-- `xor(1, 7*a(n-1)+1)+1` -/
def P965562287114126714.Spec : Prop :=
  ∀ n, (P965562287114126714.a n : ℤ) = A037579 (n + 1)

end A037579

/-! ## A037579.P5277127436752746182

`2-((-1)^n-lcm(7, a(n-1)))` with `a(0)=1`
-/

namespace A037579.P5277127436752746182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((-1) ^ n - (Int.lcm 7 (a (n - 1)) : ℤ))

end

end A037579.P5277127436752746182

namespace A037579

/-- `2-((-1)^n-lcm(7, a(n-1)))` -/
def P5277127436752746182.Spec : Prop :=
  ∀ n, P5277127436752746182.a n = A037579 (n + 1)

end A037579

/-! ## A037579.P14021416373844041507

`∑[7*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=10`
-/

namespace A037579.P14021416373844041507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A037579.P14021416373844041507

namespace A037579

/-- `∑[7*a(n-1)]-a(n-1)` -/
def P14021416373844041507.Spec : Prop :=
  ∀ n, P14021416373844041507.a n = A037579 (n + 1)

end A037579

/-! ## A037579.P4306832468744219945

`a(n-2)+2*A196661(n)` with `a(0)=1, a(1)=10`
-/

namespace A037579.P4306832468744219945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 2) + 2 * A196661 n

end

end A037579.P4306832468744219945

namespace A037579

/-- `a(n-2)+2*A196661(n)` -/
def P4306832468744219945.Spec : Prop :=
  ∀ n, P4306832468744219945.a n = A037579 (n + 1)

end A037579

/-! ## A037579.P7375909569684886235

`gcd(3, A134067(n))+7*a(n-1)` with `a(0)=1`
-/

namespace A037579.P7375909569684886235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd 3 (A134067 n) + 7 * a (n - 1)

end

end A037579.P7375909569684886235

namespace A037579

/-- `gcd(3, A134067(n))+7*a(n-1)` -/
def P7375909569684886235.Spec : Prop :=
  ∀ n, (P7375909569684886235.a n : ℤ) = A037579 (n + 1)

end A037579

/-! ## A037579.P13656026168687860105

`∑[floor(A199421(n)/2)]`
-/

namespace A037579.P13656026168687860105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199421 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037579.P13656026168687860105

namespace A037579

/-- `∑[floor(A199421(n)/2)]` -/
def P13656026168687860105.Spec : Prop :=
  ∀ n, P13656026168687860105.a n = A037579 (n + 1)

end A037579

/-! ## A037579.P12348657880845011403

`∑[A109808(n+1)-A083232(n)]`
-/

namespace A037579.P12348657880845011403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109808 (n + 1) - A083232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037579.P12348657880845011403

namespace A037579

/-- `∑[A109808(n+1)-A083232(n)]` -/
def P12348657880845011403.Spec : Prop :=
  ∀ n, P12348657880845011403.a n = A037579 (n + 1)

end A037579

/-!
# A037580: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

The programs for A037580, the canonical program `A037580.P4261361800975590374` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037580 has offset 1).

The definition of A037580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037580.P2377339886528653624

`ogf((1+3x)/(1-8x-x^2+8x^3))`
-/

namespace A037580.P2377339886528653624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -8, -1, 8] n

end

end A037580.P2377339886528653624

namespace A037580

/-- `ogf((1+3x)/(1-8x-x^2+8x^3))` -/
def P2377339886528653624.Spec : Prop :=
  ∀ n, P2377339886528653624.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P4261361800975590374

`8*a(n-1)+2+(-1)^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037580

/-- `8*a(n-1)+2+(-1)^(n+1)` -/
def P4261361800975590374.Spec : Prop :=
  ∀ n, P4261361800975590374.a n = A037580 (n + 1)

theorem P4261361800975590374.correct : P4261361800975590374.Spec := by
  intro n
  simp only [A037580, Nat.add_sub_cancel]

end A037580

/-! ## A037580.P1970202120461910441

`(11*8^(n+1)+7*(-1)^(n+1)-18)/63`
-/

namespace A037580.P1970202120461910441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 8 ^ (n + 1) : ℤ) + 7 * (-1) ^ (n + 1) - 18 : ℚ) / 63

end

end A037580.P1970202120461910441

namespace A037580

/-- `(11*8^(n+1)+7*(-1)^(n+1)-18)/63` -/
def P1970202120461910441.Spec : Prop :=
  ∀ n, P1970202120461910441.a n = (A037580 (n + 1) : ℚ)

theorem P1970202120461910441.correct : P1970202120461910441.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A037580, Nat.add_sub_cancel, A037580.P1970202120461910441.a, A037580.P4261361800975590374.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A037580, Nat.add_sub_cancel, A037580.P1970202120461910441.a, A037580.P4261361800975590374.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A037580

/-! ## A037580.P2618843174911428086

`or(1, 8*a(n-1)+n%2+1)` with `a(0)=1`
-/

namespace A037580.P2618843174911428086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (8 * a (n - 1) + (n % 2 + 1))

end

end A037580.P2618843174911428086

namespace A037580

/-- `or(1, 8*a(n-1)+n%2+1)` -/
def P2618843174911428086.Spec : Prop :=
  ∀ n, (P2618843174911428086.a n : ℤ) = A037580 (n + 1)

end A037580

/-! ## A037580.P4088147933096292283

`or(1, gcd(2, n+1)+8*a(n-1))` with `a(0)=1`
-/

namespace A037580.P4088147933096292283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (Nat.gcd 2 (n + 1) + 8 * a (n - 1))

end

end A037580.P4088147933096292283

namespace A037580

/-- `or(1, gcd(2, n+1)+8*a(n-1))` -/
def P4088147933096292283.Spec : Prop :=
  ∀ n, (P4088147933096292283.a n : ℤ) = A037580 (n + 1)

end A037580

/-! ## A037580.P9290732032954227380

`or(1, 8*a(n-1)+and(1, n)+1)` with `a(0)=1`
-/

namespace A037580.P9290732032954227380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (8 * a (n - 1) + (Nat.land 1 n + 1))

end

end A037580.P9290732032954227380

namespace A037580

/-- `or(1, 8*a(n-1)+and(1, n)+1)` -/
def P9290732032954227380.Spec : Prop :=
  ∀ n, (P9290732032954227380.a n : ℤ) = A037580 (n + 1)

end A037580

/-! ## A037580.P7666673431411495847

`∑[2*(4*a(n-1)-(-1)^n)]` with `a(0)=1`
-/

namespace A037580.P7666673431411495847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (4 * f1 (n - 1) - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037580.P7666673431411495847

namespace A037580

/-- `∑[2*(4*a(n-1)-(-1)^n)]` -/
def P7666673431411495847.Spec : Prop :=
  ∀ n, P7666673431411495847.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P6008835443299034381

`∑[7*a(n-1)+8*a(n-2)]` with `a(0)=1, a(1)=10`
-/

namespace A037580.P6008835443299034381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  7 * f1 (n - 1) + 8 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037580.P6008835443299034381

namespace A037580

/-- `∑[7*a(n-1)+8*a(n-2)]` -/
def P6008835443299034381.Spec : Prop :=
  ∀ n, (P6008835443299034381.a n : ℤ) = A037580 (n + 1)

end A037580

/-! ## A037580.P5311094735170532791

`xor(a(n-1), A238276(n))` with `a(0)=1`
-/

namespace A037580.P5311094735170532791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A238276 n)

end

end A037580.P5311094735170532791

namespace A037580

/-- `xor(a(n-1), A238276(n))` -/
def P5311094735170532791.Spec : Prop :=
  ∀ n, P5311094735170532791.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P6647091383194690689

`∑[A082365(n)-A015565(n)]`
-/

namespace A037580.P6647091383194690689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082365 n - A015565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037580.P6647091383194690689

namespace A037580

/-- `∑[A082365(n)-A015565(n)]` -/
def P6647091383194690689.Spec : Prop :=
  ∀ n, P6647091383194690689.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P5945506937421638428

`∑[A132805(n)+∑[A090409(n)]]`
-/

namespace A037580.P5945506937421638428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090409 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132805 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037580.P5945506937421638428

namespace A037580

/-- `∑[A132805(n)+∑[A090409(n)]]` -/
def P5945506937421638428.Spec : Prop :=
  ∀ n, P5945506937421638428.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P1169097320375806553

`∑[A132805(n)+A015565(n+1)]`
-/

namespace A037580.P1169097320375806553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132805 n + A015565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037580.P1169097320375806553

namespace A037580

/-- `∑[A132805(n)+A015565(n+1)]` -/
def P1169097320375806553.Spec : Prop :=
  ∀ n, P1169097320375806553.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P6600914411343281010

`xor(A037748(n+1), A037762(n+1))`
-/

namespace A037580.P6600914411343281010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037748 (n + 1)) (A037762 (n + 1))

end

end A037580.P6600914411343281010

namespace A037580

/-- `xor(A037748(n+1), A037762(n+1))` -/
def P6600914411343281010.Spec : Prop :=
  ∀ n, P6600914411343281010.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P14727598563075047834

`xor(A037734(n+1), A037797(n+1))`
-/

namespace A037580.P14727598563075047834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037734 (n + 1)) (A037797 (n + 1))

end

end A037580.P14727598563075047834

namespace A037580

/-- `xor(A037734(n+1), A037797(n+1))` -/
def P14727598563075047834.Spec : Prop :=
  ∀ n, P14727598563075047834.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P18393081749448450276

`2*A023001(n+1)-A015565(n+1)`
-/

namespace A037580.P18393081749448450276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023001 (n + 1) - A015565 (n + 1)

end

end A037580.P18393081749448450276

namespace A037580

/-- `2*A023001(n+1)-A015565(n+1)` -/
def P18393081749448450276.Spec : Prop :=
  ∀ n, P18393081749448450276.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P1940717159866360866

`∑[A113405(3*n+1)+A000079(3*n)]`
-/

namespace A037580.P1940717159866360866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (3 * n + 1) + A000079 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037580.P1940717159866360866

namespace A037580

/-- `∑[A113405(3*n+1)+A000079(3*n)]` -/
def P1940717159866360866.Spec : Prop :=
  ∀ n, P1940717159866360866.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P9503504935949303265

`∑[A113405(3*n+1)+A011782(3*n+1)]`
-/

namespace A037580.P9503504935949303265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (3 * n + 1) + A011782 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037580.P9503504935949303265

namespace A037580

/-- `∑[A113405(3*n+1)+A011782(3*n+1)]` -/
def P9503504935949303265.Spec : Prop :=
  ∀ n, P9503504935949303265.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P8457562284246243860

`A132780(3*n+2)+∑[A113405(3*n+2)]`
-/

namespace A037580.P8457562284246243860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037580.P8457562284246243860

namespace A037580

/-- `A132780(3*n+2)+∑[A113405(3*n+2)]` -/
def P8457562284246243860.Spec : Prop :=
  ∀ n, P8457562284246243860.a n = A037580 (n + 1)

end A037580

/-! ## A037580.P1811611169905520709

`A023001(n+1)+A023001(n)+A015565(n)`
-/

namespace A037580.P1811611169905520709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (n + 1) + (A023001 n + A015565 n)

end

end A037580.P1811611169905520709

namespace A037580

/-- `A023001(n+1)+A023001(n)+A015565(n)` -/
def P1811611169905520709.Spec : Prop :=
  ∀ n, P1811611169905520709.a n = A037580 (n + 1)

end A037580

/-!
# A037581: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

The programs for A037581, the canonical program `A037581.P17439660937312056731` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037581 has offset 1).

The definition of A037581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037581.P17556034307856366004

`ogf((1+3x)/(1-9x-x^2+9x^3))`
-/

namespace A037581.P17556034307856366004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -9, -1, 9] n

end

end A037581.P17556034307856366004

namespace A037581

/-- `ogf((1+3x)/(1-9x-x^2+9x^3))` -/
def P17556034307856366004.Spec : Prop :=
  ∀ n, P17556034307856366004.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P17439660937312056731

`9*a(n-1)+2+(-1)^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037581

/-- `9*a(n-1)+2+(-1)^(n+1)` -/
def P17439660937312056731.Spec : Prop :=
  ∀ n, P17439660937312056731.a n = A037581 (n + 1)

theorem P17439660937312056731.correct : P17439660937312056731.Spec := by
  intro n
  simp only [A037581, Nat.add_sub_cancel]

end A037581

/-! ## A037581.P11649961711637983076

`(3^(1+2*(n+1))+2*(-1)^(n+1)-5)/20`
-/

namespace A037581.P11649961711637983076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (1 + 2 * (n + 1)) : ℤ) + 2 * (-1) ^ (n + 1) - 5 : ℚ) / 20

end

end A037581.P11649961711637983076

namespace A037581

/-- `(3^(1+2*(n+1))+2*(-1)^(n+1)-5)/20` -/
def P11649961711637983076.Spec : Prop :=
  ∀ n, P11649961711637983076.a n = (A037581 (n + 1) : ℚ)

theorem P11649961711637983076.correct : P11649961711637983076.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A037581, Nat.add_sub_cancel, A037581.P11649961711637983076.a, A037581.P17439660937312056731.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A037581, Nat.add_sub_cancel, A037581.P11649961711637983076.a, A037581.P17439660937312056731.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A037581

/-! ## A037581.P10765100365619956891

`∑[xor(2, 9*a(n-1))]` with `a(0)=1`
-/

namespace A037581.P10765100365619956891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 2 (9 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037581.P10765100365619956891

namespace A037581

/-- `∑[xor(2, 9*a(n-1))]` -/
def P10765100365619956891.Spec : Prop :=
  ∀ n, (P10765100365619956891.a n : ℤ) = A037581 (n + 1)

end A037581

/-! ## A037581.P2715838786089616298

`floor(3/2*9^n)-a(n-1)` with `a(0)=1`
-/

namespace A037581.P2715838786089616298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(3 : ℚ) / 2 * (9 ^ n : ℚ)⌋ - a (n - 1)

end

end A037581.P2715838786089616298

namespace A037581

/-- `floor(3/2*9^n)-a(n-1)` -/
def P2715838786089616298.Spec : Prop :=
  ∀ n, P2715838786089616298.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P3945899649390032494

`A177881(2*(n+1))`
-/

namespace A037581.P3945899649390032494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177881 (2 * (n + 1))

end

end A037581.P3945899649390032494

namespace A037581

/-- `A177881(2*(n+1))` -/
def P3945899649390032494.Spec : Prop :=
  ∀ n, P3945899649390032494.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P6573788300480987001

`floor(A231104(n+2)/4)`
-/

namespace A037581.P6573788300480987001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231104 (n + 2) : ℚ) / 4⌋

end

end A037581.P6573788300480987001

namespace A037581

/-- `floor(A231104(n+2)/4)` -/
def P6573788300480987001.Spec : Prop :=
  ∀ n, P6573788300480987001.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P12537598263680985702

`floor(4*A033119(n+1)/3)`
-/

namespace A037581.P12537598263680985702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((A033119 (n + 1) : ℚ) / 3)⌋

end

end A037581.P12537598263680985702

namespace A037581

/-- `floor(4*A033119(n+1)/3)` -/
def P12537598263680985702.Spec : Prop :=
  ∀ n, P12537598263680985702.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P5853146284960504854

`A199560(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A037581.P5853146284960504854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A199560 n - (a (n - 1) + 1)

end

end A037581.P5853146284960504854

namespace A037581

/-- `A199560(n)-(a(n-1)+1)` -/
def P5853146284960504854.Spec : Prop :=
  ∀ n, P5853146284960504854.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P16875768818248355283

`abs(abs(a(n-1))-A003462(2*n+1))` with `a(0)=1`
-/

namespace A037581.P16875768818248355283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(|a (n - 1)| - A003462 (2 * n + 1))|

end

end A037581.P16875768818248355283

namespace A037581

/-- `abs(abs(a(n-1))-A003462(2*n+1))` -/
def P16875768818248355283.Spec : Prop :=
  ∀ n, P16875768818248355283.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P11133845302618302890

`∑[A001019(n)+2*A015577(n)]`
-/

namespace A037581.P11133845302618302890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + 2 * A015577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037581.P11133845302618302890

namespace A037581

/-- `∑[A001019(n)+2*A015577(n)]` -/
def P11133845302618302890.Spec : Prop :=
  ∀ n, P11133845302618302890.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P16371128254985125733

`A015518(2*(n+1))-A015577(n+1)`
-/

namespace A037581.P16371128254985125733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (2 * (n + 1)) - A015577 (n + 1)

end

end A037581.P16371128254985125733

namespace A037581

/-- `A015518(2*(n+1))-A015577(n+1)` -/
def P16371128254985125733.Spec : Prop :=
  ∀ n, P16371128254985125733.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P17900754135391309170

`A039306(n+1)-A367484(2*n+1)`
-/

namespace A037581.P17900754135391309170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039306 (n + 1) - A367484 (2 * n + 1)

end

end A037581.P17900754135391309170

namespace A037581

/-- `A039306(n+1)-A367484(2*n+1)` -/
def P17900754135391309170.Spec : Prop :=
  ∀ n, P17900754135391309170.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P2511739002108361094

`∑[A178543(2*n+1)+A178543(2*n)]`
-/

namespace A037581.P2511739002108361094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178543 (2 * n + 1) + A178543 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037581.P2511739002108361094

namespace A037581

/-- `∑[A178543(2*n+1)+A178543(2*n)]` -/
def P2511739002108361094.Spec : Prop :=
  ∀ n, P2511739002108361094.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P3763131819233059532

`A178828(2*n+3)-A178828(2*(n+1))`
-/

namespace A037581.P3763131819233059532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178828 (2 * n + 3) - A178828 (2 * (n + 1))

end

end A037581.P3763131819233059532

namespace A037581

/-- `A178828(2*n+3)-A178828(2*(n+1))` -/
def P3763131819233059532.Spec : Prop :=
  ∀ n, P3763131819233059532.a n = A037581 (n + 1)

end A037581

/-! ## A037581.P9692811312665879427

`floor(∑[9*a(n-1)]/5)` with `a(0)=6`
-/

namespace A037581.P9692811312665879427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A037581.P9692811312665879427

namespace A037581

/-- `floor(∑[9*a(n-1)]/5)` -/
def P9692811312665879427.Spec : Prop :=
  ∀ n, P9692811312665879427.a n = A037581 (n + 1)

end A037581

/-!
# A037582: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,3.

The programs for A037582, the canonical program `A037582.P574852885067876830` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037582 has offset 1).

The definition of A037582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037582.P13026151117381085238

`ogf((1+3x)/(1-10x-x^2+10x^3))`
-/

namespace A037582.P13026151117381085238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -10, -1, 10] n

end

end A037582.P13026151117381085238

namespace A037582

/-- `ogf((1+3x)/(1-10x-x^2+10x^3))` -/
def P13026151117381085238.Spec : Prop :=
  ∀ n, P13026151117381085238.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P574852885067876830

`10*a(n-1)+2+(-1)^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037582

/-- `10*a(n-1)+2+(-1)^(n+1)` -/
def P574852885067876830.Spec : Prop :=
  ∀ n, P574852885067876830.a n = A037582 (n + 1)

theorem P574852885067876830.correct : P574852885067876830.Spec := by
  intro n
  simp only [A037582, Nat.add_sub_cancel]

end A037582

/-! ## A037582.P12917493244354605848

`(13*10^(n+1)-22+9*(-1)^(n+1))/99`
-/

namespace A037582.P12917493244354605848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 * 10 ^ (n + 1) : ℤ) - 22 + 9 * (-1) ^ (n + 1) : ℚ) / 99

end

end A037582.P12917493244354605848

namespace A037582

/-- `(13*10^(n+1)-22+9*(-1)^(n+1))/99` -/
def P12917493244354605848.Spec : Prop :=
  ∀ n, P12917493244354605848.a n = (A037582 (n + 1) : ℚ)

theorem P12917493244354605848.correct : P12917493244354605848.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A037582, Nat.add_sub_cancel, A037582.P12917493244354605848.a, A037582.P574852885067876830.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A037582, Nat.add_sub_cancel, A037582.P12917493244354605848.a, A037582.P574852885067876830.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A037582

/-! ## A037582.P3276174315939390260

`or(1, 13*A056830(n))`
-/

namespace A037582.P3276174315939390260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (13 * A056830 n)

end

end A037582.P3276174315939390260

namespace A037582

/-- `or(1, 13*A056830(n))` -/
def P3276174315939390260.Spec : Prop :=
  ∀ n, P3276174315939390260.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P3839016185636966828

`A099914(n)-a(n-1)` with `a(0)=1`
-/

namespace A037582.P3839016185636966828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099914 n - a (n - 1)

end

end A037582.P3839016185636966828

namespace A037582

/-- `A099914(n)-a(n-1)` -/
def P3839016185636966828.Spec : Prop :=
  ∀ n, P3839016185636966828.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P7743999631284059300

`A094627(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A037582.P7743999631284059300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094627 (2 * n) - a (n - 1)

end

end A037582.P7743999631284059300

namespace A037582

/-- `A094627(2*n)-a(n-1)` -/
def P7743999631284059300.Spec : Prop :=
  ∀ n, P7743999631284059300.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P13411252834577236651

`10*a(n-1)-A004442(n)+n+2` with `a(0)=1`
-/

namespace A037582.P13411252834577236651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - A004442 n + (n : ℤ) + 2

end

end A037582.P13411252834577236651

namespace A037582

/-- `10*a(n-1)-A004442(n)+n+2` -/
def P13411252834577236651.Spec : Prop :=
  ∀ n, P13411252834577236651.a n = A037582 (n + 1)

theorem P13411252834577236651.correct : P13411252834577236651.Spec := by
  intro n
  simp only [A037582, Nat.add_sub_cancel, A037582.P13411252834577236651.a, A037582.P574852885067876830.a, A004442, A004442.P2439415777187857398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037582

/-! ## A037582.P14654541353604994235

`A099915(n)+1-A099913(n)`
-/

namespace A037582.P14654541353604994235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099915 n + (1 - A099913 n)

end

end A037582.P14654541353604994235

namespace A037582

/-- `A099915(n)+1-A099913(n)` -/
def P14654541353604994235.Spec : Prop :=
  ∀ n, P14654541353604994235.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P1463305038628814119

`Δ[∑[A002276(n)]-A056830(n)]`
-/

namespace A037582.P1463305038628814119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A056830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037582.P1463305038628814119

namespace A037582

/-- `Δ[∑[A002276(n)]-A056830(n)]` -/
def P1463305038628814119.Spec : Prop :=
  ∀ n, P1463305038628814119.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P14229548627875143950

`A002276(n+1)-Δ[A056830(n)]`
-/

namespace A037582.P14229548627875143950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) - (f1 (n + 1) - f1 n)

end

end A037582.P14229548627875143950

namespace A037582

/-- `A002276(n+1)-Δ[A056830(n)]` -/
def P14229548627875143950.Spec : Prop :=
  ∀ n, P14229548627875143950.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P2644957583990193333

`∑[A011557(n)]+2*A056830(n)`
-/

namespace A037582.P2644957583990193333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A056830 n

end

end A037582.P2644957583990193333

namespace A037582

/-- `∑[A011557(n)]+2*A056830(n)` -/
def P2644957583990193333.Spec : Prop :=
  ∀ n, P2644957583990193333.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P6007332898563481044

`Δ[A014824(n)]+2*A056830(n)`
-/

namespace A037582.P6007332898563481044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A056830 n

end

end A037582.P6007332898563481044

namespace A037582

/-- `Δ[A014824(n)]+2*A056830(n)` -/
def P6007332898563481044.Spec : Prop :=
  ∀ n, P6007332898563481044.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P17738828764721737724

`A000042(n+1)+2*A056830(n)`
-/

namespace A037582.P17738828764721737724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + 2 * A056830 n

end

end A037582.P17738828764721737724

namespace A037582

/-- `A000042(n+1)+2*A056830(n)` -/
def P17738828764721737724.Spec : Prop :=
  ∀ n, P17738828764721737724.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P933938350551367956

`A002275(n+1)+2*A056830(n)`
-/

namespace A037582.P933938350551367956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + 2 * A056830 n

end

end A037582.P933938350551367956

namespace A037582

/-- `A002275(n+1)+2*A056830(n)` -/
def P933938350551367956.Spec : Prop :=
  ∀ n, P933938350551367956.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P6831664928955220615

`A056830(n+1)+3*A056830(n)`
-/

namespace A037582.P6831664928955220615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n + 1) + 3 * A056830 n

end

end A037582.P6831664928955220615

namespace A037582

/-- `A056830(n+1)+3*A056830(n)` -/
def P6831664928955220615.Spec : Prop :=
  ∀ n, P6831664928955220615.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P6659079619910140582

`2*A002275(n+1)-A015585(n+1)`
-/

namespace A037582.P6659079619910140582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002275 (n + 1) - A015585 (n + 1)

end

end A037582.P6659079619910140582

namespace A037582

/-- `2*A002275(n+1)-A015585(n+1)` -/
def P6659079619910140582.Spec : Prop :=
  ∀ n, P6659079619910140582.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P1775075933493784174

`A344749(A017185(n))+2*A056830(n)`
-/

namespace A037582.P1775075933493784174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344749 (A017185 n).toNat + 2 * A056830 n

end

end A037582.P1775075933493784174

namespace A037582

/-- `A344749(A017185(n))+2*A056830(n)` -/
def P1775075933493784174.Spec : Prop :=
  ∀ n, P1775075933493784174.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P11648872917695921209

`A002275(n+1)+A015585(n)+A002275(n)`
-/

namespace A037582.P11648872917695921209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + (A015585 n + A002275 n)

end

end A037582.P11648872917695921209

namespace A037582

/-- `A002275(n+1)+A015585(n)+A002275(n)` -/
def P11648872917695921209.Spec : Prop :=
  ∀ n, P11648872917695921209.a n = A037582 (n + 1)

end A037582

/-! ## A037582.P8903875409617424301

`A037487(n)+A037487(n)-A002275(n+1)`
-/

namespace A037582.P8903875409617424301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037487 (n + 1) + (A037487 (n + 1) - A002275 (n + 1))

end

end A037582.P8903875409617424301

namespace A037582

/-- `A037487(n)+A037487(n)-A002275(n+1)` -/
def P8903875409617424301.Spec : Prop :=
  ∀ n, P8903875409617424301.a n = A037582 (n + 1)

end A037582

/-!
# A037583: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

The programs for A037583, the canonical program `A037583.P337390921137415949` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037583 has offset 1).

The definition of A037583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037583.P18404385722856907475

`ogf((3+x)/(1-4x-x^2+4x^3))`
-/

namespace A037583.P18404385722856907475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -4, -1, 4] n

end

end A037583.P18404385722856907475

namespace A037583

/-- `ogf((3+x)/(1-4x-x^2+4x^3))` -/
def P18404385722856907475.Spec : Prop :=
  ∀ n, P18404385722856907475.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P7562354867661798443

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=3, a(1)=13, a(2)=55`
-/

namespace A037583.P7562354867661798443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13, 55] fun n a =>
  4 * a (n - 1) + a (n - 2) - 4 * a (n - 3)

end

end A037583.P7562354867661798443

namespace A037583

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P7562354867661798443.Spec : Prop :=
  ∀ n, P7562354867661798443.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P337390921137415949

`floor(13*4^(n+1)/15)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037583

/-- `floor(13*4^(n+1)/15)` -/
def P337390921137415949.Spec : Prop :=
  ∀ n, P337390921137415949.a n = A037583 (n + 1)

theorem P337390921137415949.correct : P337390921137415949.Spec := by
  intro n
  simp only [A037583, Nat.add_sub_cancel]

end A037583

/-! ## A037583.P14678905630276023039

`gcd(3, n%2)+4*a(n-1)` with `a(0)=3`
-/

namespace A037583.P14678905630276023039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.gcd 3 (n % 2) + 4 * a (n - 1)

end

end A037583.P14678905630276023039

namespace A037583

/-- `gcd(3, n%2)+4*a(n-1)` -/
def P14678905630276023039.Spec : Prop :=
  ∀ n, (P14678905630276023039.a n : ℤ) = A037583 (n + 1)

end A037583

/-! ## A037583.P11391877727892722222

`2+4*a(n-1)+(-1)^n` with `a(0)=3`
-/

namespace A037583.P11391877727892722222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 + 4 * a (n - 1) + (-1) ^ n

end

end A037583.P11391877727892722222

namespace A037583

/-- `2+4*a(n-1)+(-1)^n` -/
def P11391877727892722222.Spec : Prop :=
  ∀ n, P11391877727892722222.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P16511087413453975979

`(-1)^n+lcm(4, a(n-1))+2` with `a(0)=3`
-/

namespace A037583.P16511087413453975979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (-1) ^ n + (Int.lcm 4 (a (n - 1)) + 2 : ℤ)

end

end A037583.P16511087413453975979

namespace A037583

/-- `(-1)^n+lcm(4, a(n-1))+2` -/
def P16511087413453975979.Spec : Prop :=
  ∀ n, P16511087413453975979.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P17120769886903385779

`∑[2*((-1)^n+2*a(n-1))]` with `a(0)=3`
-/

namespace A037583.P17120769886903385779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 * ((-1) ^ n + 2 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037583.P17120769886903385779

namespace A037583

/-- `∑[2*((-1)^n+2*a(n-1))]` -/
def P17120769886903385779.Spec : Prop :=
  ∀ n, P17120769886903385779.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P11373513943978140433

`3^((n+1)%2)+4*a(n-1)` with `a(0)=3`
-/

namespace A037583.P11373513943978140433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 ^ ((n + 1) % 2) + 4 * a (n - 1)

end

end A037583.P11373513943978140433

namespace A037583

/-- `3^((n+1)%2)+4*a(n-1)` -/
def P11373513943978140433.Spec : Prop :=
  ∀ n, (P11373513943978140433.a n : ℤ) = A037583 (n + 1)

end A037583

/-! ## A037583.P8119039537289899186

`record[1-2*(a(n-1)-log2(gcd(4, n)))]` with `a(0)=3`
-/

namespace A037583.P8119039537289899186
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - 2 * (f1 (n - 1) - Real.logb 2 (Nat.gcd 4 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037583.P8119039537289899186

namespace A037583

/-- `record[1-2*(a(n-1)-log2(gcd(4, n)))]` -/
def P8119039537289899186.Spec : Prop :=
  ∀ n, P8119039537289899186.a n = (A037583 (n + 1) : ℝ)

end A037583

/-! ## A037583.P17597983481231807427

`4*(a(n-1)+1)-a(n-1)%4` with `a(0)=3`
-/

namespace A037583.P17597983481231807427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * (a (n - 1) + 1) - Int.tmod (a (n - 1)) 4

end

end A037583.P17597983481231807427

namespace A037583

/-- `4*(a(n-1)+1)-a(n-1)%4` -/
def P17597983481231807427.Spec : Prop :=
  ∀ n, P17597983481231807427.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P5758831086917468688

`4*a(n-1)-(2-a(n-1))%4` with `a(0)=3`
-/

namespace A037583.P5758831086917468688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * a (n - 1) - Int.tmod (2 - a (n - 1)) 4

end

end A037583.P5758831086917468688

namespace A037583

/-- `4*a(n-1)-(2-a(n-1))%4` -/
def P5758831086917468688.Spec : Prop :=
  ∀ n, P5758831086917468688.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P801317274039753642

`A033082(3*(n+1))`
-/

namespace A037583.P801317274039753642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033082 (3 * (n + 1))

end

end A037583.P801317274039753642

namespace A037583

/-- `A033082(3*(n+1))` -/
def P801317274039753642.Spec : Prop :=
  ∀ n, P801317274039753642.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P2527783919140980444

`xor(A117614(n), A198693(n))`
-/

namespace A037583.P2527783919140980444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A117614 n) (A198693 n)

end

end A037583.P2527783919140980444

namespace A037583

/-- `xor(A117614(n), A198693(n))` -/
def P2527783919140980444.Spec : Prop :=
  ∀ n, P2527783919140980444.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P14854235510341327860

`A115243(n)+A007583(n+1)`
-/

namespace A037583.P14854235510341327860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115243 n + A007583 (n + 1)

end

end A037583.P14854235510341327860

namespace A037583

/-- `A115243(n)+A007583(n+1)` -/
def P14854235510341327860.Spec : Prop :=
  ∀ n, P14854235510341327860.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P9365217729889144858

`A102865(n+1)+A080674(n)`
-/

namespace A037583.P9365217729889144858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102865 (n + 1) + A080674 n

end

end A037583.P9365217729889144858

namespace A037583

/-- `A102865(n+1)+A080674(n)` -/
def P9365217729889144858.Spec : Prop :=
  ∀ n, P9365217729889144858.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P6280678255356270701

`A037489(n+1)+A033114(n+1)`
-/

namespace A037583.P6280678255356270701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037489 (n + 1) + A033114 (n + 1)

end

end A037583.P6280678255356270701

namespace A037583

/-- `A037489(n+1)+A033114(n+1)` -/
def P6280678255356270701.Spec : Prop :=
  ∀ n, P6280678255356270701.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P1655691792942913291

`A117616(n+1)+A002450(n+1)`
-/

namespace A037583.P1655691792942913291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117616 (n + 1) + A002450 (n + 1)

end

end A037583.P1655691792942913291

namespace A037583

/-- `A117616(n+1)+A002450(n+1)` -/
def P1655691792942913291.Spec : Prop :=
  ∀ n, P1655691792942913291.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P16323188516164780274

`xor(A037681(n+1), A037730(n+1))`
-/

namespace A037583.P16323188516164780274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037681 (n + 1)) (A037730 (n + 1))

end

end A037583.P16323188516164780274

namespace A037583

/-- `xor(A037681(n+1), A037730(n+1))` -/
def P16323188516164780274.Spec : Prop :=
  ∀ n, P16323188516164780274.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P10688705566005628979

`xor(A037695(n+1), A037744(n+1))`
-/

namespace A037583.P10688705566005628979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037695 (n + 1)) (A037744 (n + 1))

end

end A037583.P10688705566005628979

namespace A037583

/-- `xor(A037695(n+1), A037744(n+1))` -/
def P10688705566005628979.Spec : Prop :=
  ∀ n, P10688705566005628979.a n = A037583 (n + 1)

end A037583

/-! ## A037583.P16011587254910459735

`A006977(2*n)+2*A000079(n)²`
-/

namespace A037583.P16011587254910459735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006977 (2 * n) + 2 * A000079 n ^ 2

end

end A037583.P16011587254910459735

namespace A037583

/-- `A006977(2*n)+2*A000079(n)²` -/
def P16011587254910459735.Spec : Prop :=
  ∀ n, P16011587254910459735.a n = A037583 (n + 1)

end A037583

/-!
# A037584: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

The programs for A037584, the canonical program `A037584.P17564326665328005642` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037584 has offset 1).

The definition of A037584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037584.P17385667947469651550

`ogf((3+x)/(1-5x-x^2+5x^3))`
-/

namespace A037584.P17385667947469651550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -5, -1, 5] n

end

end A037584.P17385667947469651550

namespace A037584

/-- `ogf((3+x)/(1-5x-x^2+5x^3))` -/
def P17385667947469651550.Spec : Prop :=
  ∀ n, P17385667947469651550.a n = A037584 (n + 1)

end A037584

/-! ## A037584.P17564326665328005642

`floor(2*5^(n+1)/3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037584

/-- `floor(2*5^(n+1)/3)` -/
def P17564326665328005642.Spec : Prop :=
  ∀ n, P17564326665328005642.a n = A037584 (n + 1)

theorem P17564326665328005642.correct : P17564326665328005642.Spec := by
  intro n
  simp only [A037584, Nat.add_sub_cancel]

end A037584

/-! ## A037584.P5305391871711793993

`∑[xor(2, 5*a(n-1))]` with `a(0)=3`
-/

namespace A037584.P5305391871711793993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.xor 2 (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037584.P5305391871711793993

namespace A037584

/-- `∑[xor(2, 5*a(n-1))]` -/
def P5305391871711793993.Spec : Prop :=
  ∀ n, (P5305391871711793993.a n : ℤ) = A037584 (n + 1)

end A037584

/-! ## A037584.P11109090967075290548

`∑[xor(2, lcm(5, a(n-1)))]` with `a(0)=3`
-/

namespace A037584.P11109090967075290548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.xor 2 (Nat.lcm 5 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037584.P11109090967075290548

namespace A037584

/-- `∑[xor(2, lcm(5, a(n-1)))]` -/
def P11109090967075290548.Spec : Prop :=
  ∀ n, (P11109090967075290548.a n : ℤ) = A037584 (n + 1)

end A037584

/-! ## A037584.P7295265254208965286

`or(2, 5*a(n-1))+1` with `a(0)=3`
-/

namespace A037584.P7295265254208965286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 2 (5 * a (n - 1)) + 1

end

end A037584.P7295265254208965286

namespace A037584

/-- `or(2, 5*a(n-1))+1` -/
def P7295265254208965286.Spec : Prop :=
  ∀ n, (P7295265254208965286.a n : ℤ) = A037584 (n + 1)

end A037584

/-! ## A037584.P10350813725512820480

`xor(1, 5*a(n-1)+2)` with `a(0)=3`
-/

namespace A037584.P10350813725512820480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 1 (5 * a (n - 1) + 2)

end

end A037584.P10350813725512820480

namespace A037584

/-- `xor(1, 5*a(n-1)+2)` -/
def P10350813725512820480.Spec : Prop :=
  ∀ n, (P10350813725512820480.a n : ℤ) = A037584 (n + 1)

end A037584

/-! ## A037584.P18201748963705790769

`4*5^n-(a(n-1)+1)` with `a(0)=3`
-/

namespace A037584.P18201748963705790769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (4 * 5 ^ n : ℤ) - (a (n - 1) + 1)

end

end A037584.P18201748963705790769

namespace A037584

/-- `4*5^n-(a(n-1)+1)` -/
def P18201748963705790769.Spec : Prop :=
  ∀ n, P18201748963705790769.a n = A037584 (n + 1)

end A037584

/-! ## A037584.P17358001432604721124

`4*5^n-1-a(n-1)` with `a(0)=3`
-/

namespace A037584.P17358001432604721124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (4 * 5 ^ n : ℤ) - 1 - a (n - 1)

end

end A037584.P17358001432604721124

namespace A037584

/-- `4*5^n-1-a(n-1)` -/
def P17358001432604721124.Spec : Prop :=
  ∀ n, P17358001432604721124.a n = A037584 (n + 1)

end A037584

/-! ## A037584.P13252358245363912735

`Δ[A015531(n+1)-A008619(n)]`
-/

namespace A037584.P13252358245363912735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037584.P13252358245363912735

namespace A037584

/-- `Δ[A015531(n+1)-A008619(n)]` -/
def P13252358245363912735.Spec : Prop :=
  ∀ n, P13252358245363912735.a n = A037584 (n + 1)

end A037584

/-! ## A037584.P12032470284125335540

`A083217(n+1)-A059841(n+1)`
-/

namespace A037584.P12032470284125335540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083217 (n + 1) - A059841 (n + 1)

end

end A037584.P12032470284125335540

namespace A037584

/-- `A083217(n+1)-A059841(n+1)` -/
def P12032470284125335540.Spec : Prop :=
  ∀ n, P12032470284125335540.a n = A037584 (n + 1)

end A037584

/-! ## A037584.P7288499141417584510

`A037766(n+1)+∑[A037780(n+1)-A037766(n+1)]`
-/

namespace A037584.P7288499141417584510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037780 (n + 1) - A037766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037766 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037584.P7288499141417584510

namespace A037584

/-- `A037766(n+1)+∑[A037780(n+1)-A037766(n+1)]` -/
def P7288499141417584510.Spec : Prop :=
  ∀ n, P7288499141417584510.a n = A037584 (n + 1)

end A037584

/-! ## A037584.P18134471611840803910

`∑{#}[n, (-1)^(n-#)*C(n, #)*A321002(#)]`
-/

namespace A037584.P18134471611840803910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A321002 k : ℚ)

end

end A037584.P18134471611840803910

namespace A037584

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A321002(#)]` -/
def P18134471611840803910.Spec : Prop :=
  ∀ n, P18134471611840803910.a n = (A037584 (n + 1) : ℚ)

end A037584

/-!
# A037585: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

The programs for A037585, the canonical program `A037585.P16251016816485610355` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037585 has offset 1).

The definition of A037585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037585.P3778931298126226340

`ogf((3+x)/(1-6x-x^2+6x^3))`
-/

namespace A037585.P3778931298126226340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -6, -1, 6] n

end

end A037585.P3778931298126226340

namespace A037585

/-- `ogf((3+x)/(1-6x-x^2+6x^3))` -/
def P3778931298126226340.Spec : Prop :=
  ∀ n, P3778931298126226340.a n = A037585 (n + 1)

end A037585

/-! ## A037585.P16251016816485610355

`floor(19*6^(n+1)/35)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037585

/-- `floor(19*6^(n+1)/35)` -/
def P16251016816485610355.Spec : Prop :=
  ∀ n, P16251016816485610355.a n = A037585 (n + 1)

theorem P16251016816485610355.correct : P16251016816485610355.Spec := by
  intro n
  simp only [A037585, Nat.add_sub_cancel]

end A037585

/-! ## A037585.P15463788125126786900

`gcd(3, n%2)+6*a(n-1)` with `a(0)=3`
-/

namespace A037585.P15463788125126786900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.gcd 3 (n % 2) + 6 * a (n - 1)

end

end A037585.P15463788125126786900

namespace A037585

/-- `gcd(3, n%2)+6*a(n-1)` -/
def P15463788125126786900.Spec : Prop :=
  ∀ n, (P15463788125126786900.a n : ℤ) = A037585 (n + 1)

end A037585

/-! ## A037585.P9888706734418352028

`(2*n-1)%4+6*a(n-1)` with `a(0)=3`
-/

namespace A037585.P9888706734418352028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod ((2 * n : ℤ) - 1) 4 + 6 * a (n - 1)

end

end A037585.P9888706734418352028

namespace A037585

/-- `(2*n-1)%4+6*a(n-1)` -/
def P9888706734418352028.Spec : Prop :=
  ∀ n, P9888706734418352028.a n = A037585 (n + 1)

end A037585

/-! ## A037585.P6897345124551485884

`A176040(n)+6*a(n-1)` with `a(0)=3`
-/

namespace A037585.P6897345124551485884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A176040 n + 6 * a (n - 1)

end

end A037585.P6897345124551485884

namespace A037585

/-- `A176040(n)+6*a(n-1)` -/
def P6897345124551485884.Spec : Prop :=
  ∀ n, P6897345124551485884.a n = A037585 (n + 1)

end A037585

/-! ## A037585.P13241438770784762995

`A153284(n+1)+6*a(n-1)` with `a(0)=3`
-/

namespace A037585.P13241438770784762995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A153284 (n + 1) + 6 * a (n - 1)

end

end A037585.P13241438770784762995

namespace A037585

/-- `A153284(n+1)+6*a(n-1)` -/
def P13241438770784762995.Spec : Prop :=
  ∀ n, P13241438770784762995.a n = A037585 (n + 1)

end A037585

/-! ## A037585.P14761545298908943433

`∑[A220932(n+1)+A109501(n)]`
-/

namespace A037585.P14761545298908943433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220932 (n + 1) + A109501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037585.P14761545298908943433

namespace A037585

/-- `∑[A220932(n+1)+A109501(n)]` -/
def P14761545298908943433.Spec : Prop :=
  ∀ n, P14761545298908943433.a n = A037585 (n + 1)

end A037585

/-! ## A037585.P15722267571005749747

`A015540(n+1)+2*A003464(n+1)`
-/

namespace A037585.P15722267571005749747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 1) + 2 * A003464 (n + 1)

end

end A037585.P15722267571005749747

namespace A037585

/-- `A015540(n+1)+2*A003464(n+1)` -/
def P15722267571005749747.Spec : Prop :=
  ∀ n, P15722267571005749747.a n = A037585 (n + 1)

end A037585

/-! ## A037585.P6766294093235841438

`A005408(A005408(n)-A014601(n))+6*a(n-1)` with `a(0)=3`
-/

namespace A037585.P6766294093235841438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A005408 (A005408 n - A014601 n).toNat + 6 * a (n - 1)

end

end A037585.P6766294093235841438

namespace A037585

/-- `A005408(A005408(n)-A014601(n))+6*a(n-1)` -/
def P6766294093235841438.Spec : Prop :=
  ∀ n, P6766294093235841438.a n = A037585 (n + 1)

end A037585

/-!
# A037586: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

The programs for A037586, the canonical program `A037586.P8358678303179197973` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037586 has offset 1).

The definition of A037586 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037586.anchor (n : ℕ) (hn : 1 ≤ n) : A037586 n = ((Nat.ofDigits 7 ((List.range n).reverse.map fun i => [3, 1].getD (i % 2) 0) : ℕ) : ℤ)` in `Proof.A037.A037586`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037586.P8176755553058829368

`ogf((3+x)/(1-7x-x^2+7x^3))`
-/

namespace A037586.P8176755553058829368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -7, -1, 7] n

end

end A037586.P8176755553058829368

namespace A037586

/-- `ogf((3+x)/(1-7x-x^2+7x^3))` -/
def P8176755553058829368.Spec : Prop :=
  ∀ n, P8176755553058829368.a n = A037586 (n + 1)

end A037586

/-! ## A037586.P8358678303179197973

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=3, a(1)=22, a(2)=157`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037586

/-- `7*a(n-1)+a(n-2)-7*a(n-3)` -/
def P8358678303179197973.Spec : Prop :=
  ∀ n, P8358678303179197973.a n = A037586 (n + 1)

theorem P8358678303179197973.correct : P8358678303179197973.Spec := by
  intro n
  simp only [A037586, Nat.add_sub_cancel]

end A037586

/-! ## A037586.P17099057652372338282

`floor(11*7^(n+1)/24)`
-/

namespace A037586.P17099057652372338282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 * 7 ^ (n + 1) : ℚ) / 24⌋

end

end A037586.P17099057652372338282

namespace A037586

/-- `floor(11*7^(n+1)/24)` -/
def P17099057652372338282.Spec : Prop :=
  ∀ n, P17099057652372338282.a n = A037586 (n + 1)

end A037586

/-! ## A037586.P6223371712655137197

`xor(1, 7*a(n-1)+2)` with `a(0)=3`
-/

namespace A037586.P6223371712655137197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 1 (7 * a (n - 1) + 2)

end

end A037586.P6223371712655137197

namespace A037586

/-- `xor(1, 7*a(n-1)+2)` -/
def P6223371712655137197.Spec : Prop :=
  ∀ n, (P6223371712655137197.a n : ℤ) = A037586 (n + 1)

end A037586

/-! ## A037586.P7858043937678668989

`lcm(7, a(n-1))+gcd(3, and(1, n))` with `a(0)=3`
-/

namespace A037586.P7858043937678668989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm 7 (a (n - 1)) + Nat.gcd 3 (Nat.land 1 n)

end

end A037586.P7858043937678668989

namespace A037586

/-- `lcm(7, a(n-1))+gcd(3, and(1, n))` -/
def P7858043937678668989.Spec : Prop :=
  ∀ n, (P7858043937678668989.a n : ℤ) = A037586 (n + 1)

end A037586

/-! ## A037586.P4392566189781076728

`a(n-1)+or(3, 6*a(n-1))` with `a(0)=3`
-/

namespace A037586.P4392566189781076728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + Nat.lor 3 (6 * a (n - 1))

end

end A037586.P4392566189781076728

namespace A037586

/-- `a(n-1)+or(3, 6*a(n-1))` -/
def P4392566189781076728.Spec : Prop :=
  ∀ n, (P4392566189781076728.a n : ℤ) = A037586 (n + 1)

end A037586

/-! ## A037586.P13749799285418714939

`3^((n+1)%2)+7*a(n-1)` with `a(0)=3`
-/

namespace A037586.P13749799285418714939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 ^ ((n + 1) % 2) + 7 * a (n - 1)

end

end A037586.P13749799285418714939

namespace A037586

/-- `3^((n+1)%2)+7*a(n-1)` -/
def P13749799285418714939.Spec : Prop :=
  ∀ n, (P13749799285418714939.a n : ℤ) = A037586 (n + 1)

end A037586

/-! ## A037586.P10336295812320077710

`lcm(7, a(n-1))+A040003(n)-1` with `a(0)=3`
-/

namespace A037586.P10336295812320077710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) + (A040003 n - 1)

end

end A037586.P10336295812320077710

namespace A037586

/-- `lcm(7, a(n-1))+A040003(n)-1` -/
def P10336295812320077710.Spec : Prop :=
  ∀ n, P10336295812320077710.a n = A037586 (n + 1)

end A037586

/-! ## A037586.P18084083064208776737

`A000032(gcd(n, n+2))+7*a(n-1)` with `a(0)=3`
-/

namespace A037586.P18084083064208776737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000032 (Nat.gcd n (n + 2)) + 7 * a (n - 1)

end

end A037586.P18084083064208776737

namespace A037586

/-- `A000032(gcd(n, n+2))+7*a(n-1)` -/
def P18084083064208776737.Spec : Prop :=
  ∀ n, P18084083064208776737.a n = A037586 (n + 1)

end A037586

/-! ## A037586.P17234268708482504504

`∑[A109808(n+1)+A083232(n)]`
-/

namespace A037586.P17234268708482504504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109808 (n + 1) + A083232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037586.P17234268708482504504

namespace A037586

/-- `∑[A109808(n+1)+A083232(n)]` -/
def P17234268708482504504.Spec : Prop :=
  ∀ n, P17234268708482504504.a n = A037586 (n + 1)

end A037586

/-!
# A037587: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

The programs for A037587, the canonical program `A037587.P17475706026628580172` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037587 has offset 1).

The definition of A037587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037587.P17475706026628580172

`ogf((3+x)/(1-8x-x^2+8x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037587

/-- `ogf((3+x)/(1-8x-x^2+8x^3))` -/
def P17475706026628580172.Spec : Prop :=
  ∀ n, P17475706026628580172.a n = A037587 (n + 1)

theorem P17475706026628580172.correct : P17475706026628580172.Spec := by
  intro n
  simp only [A037587, Nat.add_sub_cancel]

end A037587

/-! ## A037587.P2889969711337936515

`8*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=3, a(1)=25, a(2)=203`
-/

namespace A037587.P2889969711337936515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 25, 203] fun n a =>
  8 * a (n - 1) + a (n - 2) - 8 * a (n - 3)

end

end A037587.P2889969711337936515

namespace A037587

/-- `8*a(n-1)+a(n-2)-8*a(n-3)` -/
def P2889969711337936515.Spec : Prop :=
  ∀ n, P2889969711337936515.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P8046862581994022604

`floor(25*8^(n+1)/63)`
-/

namespace A037587.P8046862581994022604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(25 * 8 ^ (n + 1) : ℚ) / 63⌋

end

end A037587.P8046862581994022604

namespace A037587

/-- `floor(25*8^(n+1)/63)` -/
def P8046862581994022604.Spec : Prop :=
  ∀ n, P8046862581994022604.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P11541798619833058840

`gcd(3, n%2)+8*a(n-1)` with `a(0)=3`
-/

namespace A037587.P11541798619833058840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.gcd 3 (n % 2) + 8 * a (n - 1)

end

end A037587.P11541798619833058840

namespace A037587

/-- `gcd(3, n%2)+8*a(n-1)` -/
def P11541798619833058840.Spec : Prop :=
  ∀ n, (P11541798619833058840.a n : ℤ) = A037587 (n + 1)

end A037587

/-! ## A037587.P1535836539824060600

`∑[A132805(n+1)+A015565(n)]`
-/

namespace A037587.P1535836539824060600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132805 (n + 1) + A015565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037587.P1535836539824060600

namespace A037587

/-- `∑[A132805(n+1)+A015565(n)]` -/
def P1535836539824060600.Spec : Prop :=
  ∀ n, P1535836539824060600.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P2770606297962316598

`or(∑[A001018(n)], A037769(n+1))`
-/

namespace A037587.P2770606297962316598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A037769 (n + 1))

end

end A037587.P2770606297962316598

namespace A037587

/-- `or(∑[A001018(n)], A037769(n+1))` -/
def P2770606297962316598.Spec : Prop :=
  ∀ n, P2770606297962316598.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P12977742231164236326

`or(∑[A001018(n)], A037783(n+1))`
-/

namespace A037587.P12977742231164236326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A037783 (n + 1))

end

end A037587.P12977742231164236326

namespace A037587

/-- `or(∑[A001018(n)], A037783(n+1))` -/
def P12977742231164236326.Spec : Prop :=
  ∀ n, P12977742231164236326.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P6077517807362229360

`or(A037727(n+1), A037783(n+1))`
-/

namespace A037587.P6077517807362229360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037727 (n + 1)) (A037783 (n + 1))

end

end A037587.P6077517807362229360

namespace A037587

/-- `or(A037727(n+1), A037783(n+1))` -/
def P6077517807362229360.Spec : Prop :=
  ∀ n, P6077517807362229360.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P13918522029353045783

`or(A037741(n+1), A037769(n+1))`
-/

namespace A037587.P13918522029353045783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037741 (n + 1)) (A037769 (n + 1))

end

end A037587.P13918522029353045783

namespace A037587

/-- `or(A037741(n+1), A037769(n+1))` -/
def P13918522029353045783.Spec : Prop :=
  ∀ n, P13918522029353045783.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P12712103291764882940

`∑[A024495(3*(n+1))+A015565(n)]`
-/

namespace A037587.P12712103291764882940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (3 * (n + 1)) + A015565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037587.P12712103291764882940

namespace A037587

/-- `∑[A024495(3*(n+1))+A015565(n)]` -/
def P12712103291764882940.Spec : Prop :=
  ∀ n, P12712103291764882940.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P7783363128003949280

`or(∑[A094015(2*n)], A037493(n+1))`
-/

namespace A037587.P7783363128003949280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094015 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A037493 (n + 1))

end

end A037587.P7783363128003949280

namespace A037587

/-- `or(∑[A094015(2*n)], A037493(n+1))` -/
def P7783363128003949280.Spec : Prop :=
  ∀ n, P7783363128003949280.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P4245292340373524652

`A015565(n+1)+2*A023001(n+1)`
-/

namespace A037587.P4245292340373524652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 (n + 1) + 2 * A023001 (n + 1)

end

end A037587.P4245292340373524652

namespace A037587

/-- `A015565(n+1)+2*A023001(n+1)` -/
def P4245292340373524652.Spec : Prop :=
  ∀ n, P4245292340373524652.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P1778080306598135226

`A195904(3*n+2)+A077947(3*n+1)`
-/

namespace A037587.P1778080306598135226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195904 (3 * n + 2) + A077947 (3 * n + 1)

end

end A037587.P1778080306598135226

namespace A037587

/-- `A195904(3*n+2)+A077947(3*n+1)` -/
def P1778080306598135226.Spec : Prop :=
  ∀ n, P1778080306598135226.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P15859597218301294609

`A195904(3*n+2)+A078010(3*n+2)`
-/

namespace A037587.P15859597218301294609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195904 (3 * n + 2) + A078010 (3 * n + 2)

end

end A037587.P15859597218301294609

namespace A037587

/-- `A195904(3*n+2)+A078010(3*n+2)` -/
def P15859597218301294609.Spec : Prop :=
  ∀ n, P15859597218301294609.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P16119287050629953007

`∑[A093134(n)+A014113(A016789(n))]`
-/

namespace A037587.P16119287050629953007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093134 n + A014113 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037587.P16119287050629953007

namespace A037587

/-- `∑[A093134(n)+A014113(A016789(n))]` -/
def P16119287050629953007.Spec : Prop :=
  ∀ n, P16119287050629953007.a n = A037587 (n + 1)

end A037587

/-! ## A037587.P4233788496322902705

`A037769(n+1)+xor(A037762(n+1), A037776(n+1))`
-/

namespace A037587.P4233788496322902705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037769 (n + 1) + Int.xor (A037762 (n + 1)) (A037776 (n + 1))

end

end A037587.P4233788496322902705

namespace A037587

/-- `A037769(n+1)+xor(A037762(n+1), A037776(n+1))` -/
def P4233788496322902705.Spec : Prop :=
  ∀ n, P4233788496322902705.a n = A037587 (n + 1)

end A037587

/-!
# A037588: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

The programs for A037588, the canonical program `A037588.P9754566562252533151` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037588 has offset 1).

The definition of A037588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037588.P9754566562252533151

`ogf((3+x)/(1-9x-x^2+9x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037588

/-- `ogf((3+x)/(1-9x-x^2+9x^3))` -/
def P9754566562252533151.Spec : Prop :=
  ∀ n, P9754566562252533151.a n = A037588 (n + 1)

theorem P9754566562252533151.correct : P9754566562252533151.Spec := by
  intro n
  simp only [A037588, Nat.add_sub_cancel]

end A037588

/-! ## A037588.P15377571290880034564

`9*a(n-1)+a(n-2)-9*a(n-3)` with `a(0)=3, a(1)=28, a(2)=255`
-/

namespace A037588.P15377571290880034564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 28, 255] fun n a =>
  9 * a (n - 1) + a (n - 2) - 9 * a (n - 3)

end

end A037588.P15377571290880034564

namespace A037588

/-- `9*a(n-1)+a(n-2)-9*a(n-3)` -/
def P15377571290880034564.Spec : Prop :=
  ∀ n, P15377571290880034564.a n = A037588 (n + 1)

end A037588

/-! ## A037588.P8783262393471900921

`floor(7*9^(n+1)/20)`
-/

namespace A037588.P8783262393471900921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 * 9 ^ (n + 1) : ℚ) / 20⌋

end

end A037588.P8783262393471900921

namespace A037588

/-- `floor(7*9^(n+1)/20)` -/
def P8783262393471900921.Spec : Prop :=
  ∀ n, P8783262393471900921.a n = A037588 (n + 1)

end A037588

/-! ## A037588.P2856906379196169735

`∑[xor(2, 9*a(n-1))]` with `a(0)=3`
-/

namespace A037588.P2856906379196169735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.xor 2 (9 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037588.P2856906379196169735

namespace A037588

/-- `∑[xor(2, 9*a(n-1))]` -/
def P2856906379196169735.Spec : Prop :=
  ∀ n, (P2856906379196169735.a n : ℤ) = A037588 (n + 1)

end A037588

/-! ## A037588.P1665960056568120449

`or(2, 9*a(n-1))+1` with `a(0)=3`
-/

namespace A037588.P1665960056568120449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 2 (9 * a (n - 1)) + 1

end

end A037588.P1665960056568120449

namespace A037588

/-- `or(2, 9*a(n-1))+1` -/
def P1665960056568120449.Spec : Prop :=
  ∀ n, (P1665960056568120449.a n : ℤ) = A037588 (n + 1)

end A037588

/-! ## A037588.P2828369434044809733

`xor(1, 9*a(n-1)+2)` with `a(0)=3`
-/

namespace A037588.P2828369434044809733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 1 (9 * a (n - 1) + 2)

end

end A037588.P2828369434044809733

namespace A037588

/-- `xor(1, 9*a(n-1)+2)` -/
def P2828369434044809733.Spec : Prop :=
  ∀ n, (P2828369434044809733.a n : ℤ) = A037588 (n + 1)

end A037588

/-! ## A037588.P2479253406656715081

`record[xor(3*a(n-1), or(n, -2))]` with `a(0)=3`
-/

namespace A037588.P2479253406656715081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (3 * f1 (n - 1)) (Int.lor (n : ℤ) (-2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037588.P2479253406656715081

namespace A037588

/-- `record[xor(3*a(n-1), or(n, -2))]` -/
def P2479253406656715081.Spec : Prop :=
  ∀ n, P2479253406656715081.a n = A037588 (n + 1)

end A037588

/-!
# A037589: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,1.

The programs for A037589, the canonical program `A037589.P9798947900262953351` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037589 has offset 1).

The definition of A037589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037589.P9798947900262953351

`ogf((3+x)/(1-10x-x^2+10x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037589

/-- `ogf((3+x)/(1-10x-x^2+10x^3))` -/
def P9798947900262953351.Spec : Prop :=
  ∀ n, P9798947900262953351.a n = A037589 (n + 1)

theorem P9798947900262953351.correct : P9798947900262953351.Spec := by
  intro n
  simp only [A037589, Nat.add_sub_cancel]

end A037589

/-! ## A037589.P3885157145236050029

`floor(31/99*10^(n+1))`
-/

namespace A037589.P3885157145236050029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(31 : ℚ) / 99 * (10 ^ (n + 1) : ℚ)⌋

end

end A037589.P3885157145236050029

namespace A037589

/-- `floor(31/99*10^(n+1))` -/
def P3885157145236050029.Spec : Prop :=
  ∀ n, P3885157145236050029.a n = A037589 (n + 1)

end A037589

/-! ## A037589.P702211688478158505

`10*a(n-1)+a(n-2)-10*a(n-3)` with `a(0)=3, a(1)=31, a(2)=313`
-/

namespace A037589.P702211688478158505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 31, 313] fun n a =>
  10 * a (n - 1) + a (n - 2) - 10 * a (n - 3)

end

end A037589.P702211688478158505

namespace A037589

/-- `10*a(n-1)+a(n-2)-10*a(n-3)` -/
def P702211688478158505.Spec : Prop :=
  ∀ n, P702211688478158505.a n = A037589 (n + 1)

end A037589

/-! ## A037589.P16561913385858315834

`gcd(3, n%2)+10*a(n-1)` with `a(0)=3`
-/

namespace A037589.P16561913385858315834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.gcd 3 (n % 2) + 10 * a (n - 1)

end

end A037589.P16561913385858315834

namespace A037589

/-- `gcd(3, n%2)+10*a(n-1)` -/
def P16561913385858315834.Spec : Prop :=
  ∀ n, (P16561913385858315834.a n : ℤ) = A037589 (n + 1)

end A037589

/-! ## A037589.P9724108110486252496

`10*a(n-1)+and(2, gcd(2, n))+1` with `a(0)=3`
-/

namespace A037589.P9724108110486252496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  10 * a (n - 1) + (Nat.land 2 (Nat.gcd 2 n) + 1)

end

end A037589.P9724108110486252496

namespace A037589

/-- `10*a(n-1)+and(2, gcd(2, n))+1` -/
def P9724108110486252496.Spec : Prop :=
  ∀ n, (P9724108110486252496.a n : ℤ) = A037589 (n + 1)

end A037589

/-! ## A037589.P4178313917364625904

`A057077(2*n)+10*a(n-1)+2` with `a(0)=3`
-/

namespace A037589.P4178313917364625904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A057077 (2 * n) + (10 * a (n - 1) + 2)

end

end A037589.P4178313917364625904

namespace A037589

/-- `A057077(2*n)+10*a(n-1)+2` -/
def P4178313917364625904.Spec : Prop :=
  ∀ n, P4178313917364625904.a n = A037589 (n + 1)

end A037589

/-! ## A037589.P17740126620907730809

`A099913(n)+2*A099914(n)`
-/

namespace A037589.P17740126620907730809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099913 n + 2 * A099914 n

end

end A037589.P17740126620907730809

namespace A037589

/-- `A099913(n)+2*A099914(n)` -/
def P17740126620907730809.Spec : Prop :=
  ∀ n, P17740126620907730809.a n = A037589 (n + 1)

end A037589

/-! ## A037589.P13608917580066832745

`Δ[A056830(n)+∑[A002276(n)]]`
-/

namespace A037589.P13608917580066832745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037589.P13608917580066832745

namespace A037589

/-- `Δ[A056830(n)+∑[A002276(n)]]` -/
def P13608917580066832745.Spec : Prop :=
  ∀ n, P13608917580066832745.a n = A037589 (n + 1)

end A037589

/-! ## A037589.P16283393446307179531

`A002276(n+1)+Δ[A056830(n)]`
-/

namespace A037589.P16283393446307179531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037589.P16283393446307179531

namespace A037589

/-- `A002276(n+1)+Δ[A056830(n)]` -/
def P16283393446307179531.Spec : Prop :=
  ∀ n, P16283393446307179531.a n = A037589 (n + 1)

end A037589

/-! ## A037589.P10126851987571157436

`Δ[A056830(n)+2*A014824(n)]`
-/

namespace A037589.P10126851987571157436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + 2 * A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037589.P10126851987571157436

namespace A037589

/-- `Δ[A056830(n)+2*A014824(n)]` -/
def P10126851987571157436.Spec : Prop :=
  ∀ n, P10126851987571157436.a n = A037589 (n + 1)

end A037589

/-! ## A037589.P8510967165841006633

`A056830(n)+3*A056830(n+1)`
-/

namespace A037589.P8510967165841006633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + 3 * A056830 (n + 1)

end

end A037589.P8510967165841006633

namespace A037589

/-- `A056830(n)+3*A056830(n+1)` -/
def P8510967165841006633.Spec : Prop :=
  ∀ n, P8510967165841006633.a n = A037589 (n + 1)

end A037589

/-! ## A037589.P4545034828530733337

`A015585(n+1)+2*A002275(n+1)`
-/

namespace A037589.P4545034828530733337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 (n + 1) + 2 * A002275 (n + 1)

end

end A037589.P4545034828530733337

namespace A037589

/-- `A015585(n+1)+2*A002275(n+1)` -/
def P4545034828530733337.Spec : Prop :=
  ∀ n, P4545034828530733337.a n = A037589 (n + 1)

end A037589

/-! ## A037589.P12970604391856183188

`A002275(n+1)+A056830(n+1)+A056830(n+1)`
-/

namespace A037589.P12970604391856183188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + (A056830 (n + 1) + A056830 (n + 1))

end

end A037589.P12970604391856183188

namespace A037589

/-- `A002275(n+1)+A056830(n+1)+A056830(n+1)` -/
def P12970604391856183188.Spec : Prop :=
  ∀ n, P12970604391856183188.a n = A037589 (n + 1)

end A037589

/-!
# A037590: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

The programs for A037590, the canonical program `A037590.P17761239353494100332` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037590 has offset 1).

The definition of A037590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037590.P17761239353494100332

`ogf((1+3x^2)/(1-4x-x^3+4x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037590

/-- `ogf((1+3x^2)/(1-4x-x^3+4x^4))` -/
def P17761239353494100332.Spec : Prop :=
  ∀ n, P17761239353494100332.a n = A037590 (n + 1)

theorem P17761239353494100332.correct : P17761239353494100332.Spec := by
  intro n
  simp only [A037590, Nat.add_sub_cancel]

end A037590

/-! ## A037590.P2185270716371956268

`xor(4*a(n-1)+1, n%3)` with `a(0)=1`
-/

namespace A037590.P2185270716371956268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1) + 1) (n % 3)

end

end A037590.P2185270716371956268

namespace A037590

/-- `xor(4*a(n-1)+1, n%3)` -/
def P2185270716371956268.Spec : Prop :=
  ∀ n, (P2185270716371956268.a n : ℤ) = A037590 (n + 1)

end A037590

/-! ## A037590.P13600974590957914490

`floor(A037569(n+1)/2)`
-/

namespace A037590.P13600974590957914490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037569 (n + 1) : ℚ) / 2⌋

end

end A037590.P13600974590957914490

namespace A037590

/-- `floor(A037569(n+1)/2)` -/
def P13600974590957914490.Spec : Prop :=
  ∀ n, P13600974590957914490.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P17137905912891330950

`A057078(n)+or(4, 4*a(n-1))` with `a(0)=1`
-/

namespace A037590.P17137905912891330950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057078 n + Int.lor 4 (4 * a (n - 1))

end

end A037590.P17137905912891330950

namespace A037590

/-- `A057078(n)+or(4, 4*a(n-1))` -/
def P17137905912891330950.Spec : Prop :=
  ∀ n, P17137905912891330950.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P11253982204150766767

`A037529(n+1)-A178872(n)`
-/

namespace A037590.P11253982204150766767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037529 (n + 1) - A178872 n

end

end A037590.P11253982204150766767

namespace A037590

/-- `A037529(n+1)-A178872(n)` -/
def P11253982204150766767.Spec : Prop :=
  ∀ n, P11253982204150766767.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P14464961867745166873

`∑[record[A077972(n)+A024495(n)]]`
-/

namespace A037590.P14464961867745166873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077972 n + A024495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037590.P14464961867745166873

namespace A037590

/-- `∑[record[A077972(n)+A024495(n)]]` -/
def P14464961867745166873.Spec : Prop :=
  ∀ n, P14464961867745166873.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P11326868698636488265

`xor(∑[A191597(n)], A033131(n+1))`
-/

namespace A037590.P11326868698636488265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A033131 (n + 1))

end

end A037590.P11326868698636488265

namespace A037590

/-- `xor(∑[A191597(n)], A033131(n+1))` -/
def P11326868698636488265.Spec : Prop :=
  ∀ n, P11326868698636488265.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P6455464892695939046

`A037618(n+1)-A033140(n+1)`
-/

namespace A037590.P6455464892695939046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037618 (n + 1) - A033140 (n + 1)

end

end A037590.P6455464892695939046

namespace A037590

/-- `A037618(n+1)-A033140(n+1)` -/
def P6455464892695939046.Spec : Prop :=
  ∀ n, P6455464892695939046.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P5015674356692386545

`A037632(n+1)-A033131(n+1)`
-/

namespace A037590.P5015674356692386545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037632 (n + 1) - A033131 (n + 1)

end

end A037590.P5015674356692386545

namespace A037590

/-- `A037632(n+1)-A033131(n+1)` -/
def P5015674356692386545.Spec : Prop :=
  ∀ n, P5015674356692386545.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P18070403635035182215

`A037537(n+1)-2*A178872(n)`
-/

namespace A037590.P18070403635035182215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037537 (n + 1) - 2 * A178872 n

end

end A037590.P18070403635035182215

namespace A037590

/-- `A037537(n+1)-2*A178872(n)` -/
def P18070403635035182215.Spec : Prop :=
  ∀ n, P18070403635035182215.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P6298695917858513983

`or(A033122(n+1), A037497(n+1))`
-/

namespace A037590.P6298695917858513983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033122 (n + 1)) (A037497 (n + 1))

end

end A037590.P6298695917858513983

namespace A037590

/-- `or(A033122(n+1), A037497(n+1))` -/
def P6298695917858513983.Spec : Prop :=
  ∀ n, P6298695917858513983.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P17092205020355953928

`xor(A037513(n+1), A037653(n+1))`
-/

namespace A037590.P17092205020355953928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037513 (n + 1)) (A037653 (n + 1))

end

end A037590.P17092205020355953928

namespace A037590

/-- `xor(A037513(n+1), A037653(n+1))` -/
def P17092205020355953928.Spec : Prop :=
  ∀ n, P17092205020355953928.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P3855339369503254082

`xor(A037632(n+1), A037660(n+1))`
-/

namespace A037590.P3855339369503254082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037632 (n + 1)) (A037660 (n + 1))

end

end A037590.P3855339369503254082

namespace A037590

/-- `xor(A037632(n+1), A037660(n+1))` -/
def P3855339369503254082.Spec : Prop :=
  ∀ n, P3855339369503254082.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P10034087089238582928

`∑[A077972(2*n)+A024495(2*n)]`
-/

namespace A037590.P10034087089238582928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077972 (2 * n) + A024495 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037590.P10034087089238582928

namespace A037590

/-- `∑[A077972(2*n)+A024495(2*n)]` -/
def P10034087089238582928.Spec : Prop :=
  ∀ n, P10034087089238582928.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P12789336642656641594

`A077972(2*n+1)+A037553(n+1)`
-/

namespace A037590.P12789336642656641594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077972 (2 * n + 1) + A037553 (n + 1)

end

end A037590.P12789336642656641594

namespace A037590

/-- `A077972(2*n+1)+A037553(n+1)` -/
def P12789336642656641594.Spec : Prop :=
  ∀ n, P12789336642656641594.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P14803177394010615012

`2*A037529(n+1)-A037537(n+1)`
-/

namespace A037590.P14803177394010615012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037529 (n + 1) - A037537 (n + 1)

end

end A037590.P14803177394010615012

namespace A037590

/-- `2*A037529(n+1)-A037537(n+1)` -/
def P14803177394010615012.Spec : Prop :=
  ∀ n, P14803177394010615012.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P1918868897328074531

`or(A033122(n+1), A033138(2*n+1))`
-/

namespace A037590.P1918868897328074531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033122 (n + 1)) (A033138 (2 * n + 1))

end

end A037590.P1918868897328074531

namespace A037590

/-- `or(A033122(n+1), A033138(2*n+1))` -/
def P1918868897328074531.Spec : Prop :=
  ∀ n, P1918868897328074531.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P4023908009265803021

`xor(A037604(n+1)-A002450(n), A002450(n))`
-/

namespace A037590.P4023908009265803021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037604 (n + 1) - A002450 n) (A002450 n)

end

end A037590.P4023908009265803021

namespace A037590

/-- `xor(A037604(n+1)-A002450(n), A002450(n))` -/
def P4023908009265803021.Spec : Prop :=
  ∀ n, P4023908009265803021.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P6131995854106322506

`xor(A037553(n+1)+A033122(n+1), A037553(n+1))`
-/

namespace A037590.P6131995854106322506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037553 (n + 1) + A033122 (n + 1)) (A037553 (n + 1))

end

end A037590.P6131995854106322506

namespace A037590

/-- `xor(A037553(n+1)+A033122(n+1), A037553(n+1))` -/
def P6131995854106322506.Spec : Prop :=
  ∀ n, P6131995854106322506.a n = A037590 (n + 1)

end A037590

/-! ## A037590.P6566324606768995334

`xor(A037561(n+1)+A033122(n+1), A037561(n+1))`
-/

namespace A037590.P6566324606768995334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037561 (n + 1) + A033122 (n + 1)) (A037561 (n + 1))

end

end A037590.P6566324606768995334

namespace A037590

/-- `xor(A037561(n+1)+A033122(n+1), A037561(n+1))` -/
def P6566324606768995334.Spec : Prop :=
  ∀ n, P6566324606768995334.a n = A037590 (n + 1)

end A037590

/-!
# A037591: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

The programs for A037591, the canonical program `A037591.P7570856579560354267` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037591 has offset 1).

The definition of A037591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037591.P7570856579560354267

`ogf((1+3x^2)/(1-5x-x^3+5x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037591

/-- `ogf((1+3x^2)/(1-5x-x^3+5x^4))` -/
def P7570856579560354267.Spec : Prop :=
  ∀ n, P7570856579560354267.a n = A037591 (n + 1)

theorem P7570856579560354267.correct : P7570856579560354267.Spec := by
  intro n
  simp only [A037591, Nat.add_sub_cancel]

end A037591

/-! ## A037591.P13173432721744249870

`floor(A037554(1+n)/2)`
-/

namespace A037591.P13173432721744249870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037554 (1 + n) : ℚ) / 2⌋

end

end A037591.P13173432721744249870

namespace A037591

/-- `floor(A037554(1+n)/2)` -/
def P13173432721744249870.Spec : Prop :=
  ∀ n, P13173432721744249870.a n = A037591 (n + 1)

end A037591

/-! ## A037591.P10571267691034824033

`A037619(n+1)-A033141(n+1)`
-/

namespace A037591.P10571267691034824033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037619 (n + 1) - A033141 (n + 1)

end

end A037591.P10571267691034824033

namespace A037591

/-- `A037619(n+1)-A033141(n+1)` -/
def P10571267691034824033.Spec : Prop :=
  ∀ n, P10571267691034824033.a n = A037591 (n + 1)

end A037591

/-! ## A037591.P6574564418079410167

`2*A037530(n+1)-A037538(n+1)`
-/

namespace A037591.P6574564418079410167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037530 (n + 1) - A037538 (n + 1)

end

end A037591.P6574564418079410167

namespace A037591

/-- `2*A037530(n+1)-A037538(n+1)` -/
def P6574564418079410167.Spec : Prop :=
  ∀ n, P6574564418079410167.a n = A037591 (n + 1)

end A037591

/-! ## A037591.P5204078289272023817

`(5*A033123(n+1))%A037514(n+1)`
-/

namespace A037591.P5204078289272023817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A033123 (n + 1)) (A037514 (n + 1))

end

end A037591.P5204078289272023817

namespace A037591

/-- `(5*A033123(n+1))%A037514(n+1)` -/
def P5204078289272023817.Spec : Prop :=
  ∀ n, P5204078289272023817.a n = A037591 (n + 1)

end A037591

/-! ## A037591.P9021975724083347025

`A033132(n+1)+A037605(n+1)-A037598(n+1)`
-/

namespace A037591.P9021975724083347025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033132 (n + 1) + (A037605 (n + 1) - A037598 (n + 1))

end

end A037591.P9021975724083347025

namespace A037591

/-- `A033132(n+1)+A037605(n+1)-A037598(n+1)` -/
def P9021975724083347025.Spec : Prop :=
  ∀ n, P9021975724083347025.a n = A037591 (n + 1)

end A037591

/-! ## A037591.P3517391983181771500

`A037598(n+1)+A037619(n+1)-A037626(n+1)`
-/

namespace A037591.P3517391983181771500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037598 (n + 1) + (A037619 (n + 1) - A037626 (n + 1))

end

end A037591.P3517391983181771500

namespace A037591

/-- `A037598(n+1)+A037619(n+1)-A037626(n+1)` -/
def P3517391983181771500.Spec : Prop :=
  ∀ n, P3517391983181771500.a n = A037591 (n + 1)

end A037591

/-!
# A037592: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

The programs for A037592, the canonical program `A037592.P16824364245340525672` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037592 has offset 1).

The definition of A037592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037592.P16824364245340525672

`ogf((1+3x^2)/(1-6x-x^3+6x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037592

/-- `ogf((1+3x^2)/(1-6x-x^3+6x^4))` -/
def P16824364245340525672.Spec : Prop :=
  ∀ n, P16824364245340525672.a n = A037592 (n + 1)

theorem P16824364245340525672.correct : P16824364245340525672.Spec := by
  intro n
  simp only [A037592, Nat.add_sub_cancel]

end A037592

/-! ## A037592.P12675104522288228552

`floor(A037523(1+n)/2)`
-/

namespace A037592.P12675104522288228552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037523 (1 + n) : ℚ) / 2⌋

end

end A037592.P12675104522288228552

namespace A037592

/-- `floor(A037523(1+n)/2)` -/
def P12675104522288228552.Spec : Prop :=
  ∀ n, P12675104522288228552.a n = A037592 (n + 1)

end A037592

/-! ## A037592.P15224414955699842804

`or(6*a(n-1), A010882(n))` with `a(0)=1`
-/

namespace A037592.P15224414955699842804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (6 * a (n - 1)) (A010882 n)

end

end A037592.P15224414955699842804

namespace A037592

/-- `or(6*a(n-1), A010882(n))` -/
def P15224414955699842804.Spec : Prop :=
  ∀ n, P15224414955699842804.a n = A037592 (n + 1)

end A037592

/-! ## A037592.P12368528479443441310

`or(6*a(n-1), Δ[A008576(n)])` with `a(0)=1`
-/

namespace A037592.P12368528479443441310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (6 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037592.P12368528479443441310

namespace A037592

/-- `or(6*a(n-1), Δ[A008576(n)])` -/
def P12368528479443441310.Spec : Prop :=
  ∀ n, P12368528479443441310.a n = A037592 (n + 1)

end A037592

/-! ## A037592.P1366057263612505149

`A037620(n+1)-A033142(n+1)`
-/

namespace A037592.P1366057263612505149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037620 (n + 1) - A033142 (n + 1)

end

end A037592.P1366057263612505149

namespace A037592

/-- `A037620(n+1)-A033142(n+1)` -/
def P1366057263612505149.Spec : Prop :=
  ∀ n, P1366057263612505149.a n = A037592 (n + 1)

end A037592

/-! ## A037592.P7341577830567566755

`2*A037499(n+1)-A033124(n+1)`
-/

namespace A037592.P7341577830567566755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037499 (n + 1) - A033124 (n + 1)

end

end A037592.P7341577830567566755

namespace A037592

/-- `2*A037499(n+1)-A033124(n+1)` -/
def P7341577830567566755.Spec : Prop :=
  ∀ n, P7341577830567566755.a n = A037592 (n + 1)

end A037592

/-! ## A037592.P3028568801163340120

`2*A037531(n+1)-A037539(n+1)`
-/

namespace A037592.P3028568801163340120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037531 (n + 1) - A037539 (n + 1)

end

end A037592.P3028568801163340120

namespace A037592

/-- `2*A037531(n+1)-A037539(n+1)` -/
def P3028568801163340120.Spec : Prop :=
  ∀ n, P3028568801163340120.a n = A037592 (n + 1)

end A037592

/-! ## A037592.P14392178789688124584

`or(6*a(n-1), A079343(A016825(n)))` with `a(0)=1`
-/

namespace A037592.P14392178789688124584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (6 * a (n - 1)) (A079343 (A016825 n).toNat)

end

end A037592.P14392178789688124584

namespace A037592

/-- `or(6*a(n-1), A079343(A016825(n)))` -/
def P14392178789688124584.Spec : Prop :=
  ∀ n, P14392178789688124584.a n = A037592 (n + 1)

end A037592

/-! ## A037592.P11868956789788920687

`A037515(n+1)+A037531(n+1)-A037523(n+1)`
-/

namespace A037592.P11868956789788920687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) + (A037531 (n + 1) - A037523 (n + 1))

end

end A037592.P11868956789788920687

namespace A037592

/-- `A037515(n+1)+A037531(n+1)-A037523(n+1)` -/
def P11868956789788920687.Spec : Prop :=
  ∀ n, P11868956789788920687.a n = A037592 (n + 1)

end A037592

/-! ## A037592.P11470441780930823800

`A037531(n+1)+∑[6*a(n-1)]-A037641(n+1)` with `a(0)=2`
-/

namespace A037592.P11470441780930823800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037531 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A037641 (n + 1))

end

end A037592.P11470441780930823800

namespace A037592

/-- `A037531(n+1)+∑[6*a(n-1)]-A037641(n+1)` -/
def P11470441780930823800.Spec : Prop :=
  ∀ n, P11470441780930823800.a n = A037592 (n + 1)

end A037592

/-!
# A037593: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

The programs for A037593, the canonical program `A037593.P3631625781884842671` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037593 has offset 1).

The definition of A037593 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037593.anchor (n : ℕ) (hn : 1 ≤ n) : A037593 n = ((Nat.ofDigits 7 ((List.range n).reverse.map fun i => [1, 0, 3].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037593`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037593.P11410843840145189102

`ogf((1+3x^2)/(1-7x-x^3+7x^4))`
-/

namespace A037593.P11410843840145189102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, -7, 0, -1, 7] n

end

end A037593.P11410843840145189102

namespace A037593

/-- `ogf((1+3x^2)/(1-7x-x^3+7x^4))` -/
def P11410843840145189102.Spec : Prop :=
  ∀ n, P11410843840145189102.a n = A037593 (n + 1)

end A037593

/-! ## A037593.P3631625781884842671

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=7, a(2)=52, a(3)=365`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037593

/-- `7*a(n-1)+a(n-3)-7*a(n-4)` -/
def P3631625781884842671.Spec : Prop :=
  ∀ n, P3631625781884842671.a n = A037593 (n + 1)

theorem P3631625781884842671.correct : P3631625781884842671.Spec := by
  intro n
  simp only [A037593, Nat.add_sub_cancel]

end A037593

/-! ## A037593.P8565373411592374532

`A037500(n+1)+A037500(n+1)-A033125(n+1)`
-/

namespace A037593.P8565373411592374532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037500 (n + 1) + (A037500 (n + 1) - A033125 (n + 1))

end

end A037593.P8565373411592374532

namespace A037593

/-- `A037500(n+1)+A037500(n+1)-A033125(n+1)` -/
def P8565373411592374532.Spec : Prop :=
  ∀ n, P8565373411592374532.a n = A037593 (n + 1)

end A037593

/-! ## A037593.P17246922538617113584

`A037532(n+1)+A037532(n+1)-A037540(n+1)`
-/

namespace A037593.P17246922538617113584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + (A037532 (n + 1) - A037540 (n + 1))

end

end A037593.P17246922538617113584

namespace A037593

/-- `A037532(n+1)+A037532(n+1)-A037540(n+1)` -/
def P17246922538617113584.Spec : Prop :=
  ∀ n, P17246922538617113584.a n = A037593 (n + 1)

end A037593

/-! ## A037593.P4502443115903051014

`A037621(n+1)-A033143(n+1)`
-/

namespace A037593.P4502443115903051014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037621 (n + 1) - A033143 (n + 1)

end

end A037593.P4502443115903051014

namespace A037593

/-- `A037621(n+1)-A033143(n+1)` -/
def P4502443115903051014.Spec : Prop :=
  ∀ n, P4502443115903051014.a n = A037593 (n + 1)

end A037593

/-! ## A037593.P10623366600946254840

`A037635(n+1)-A033134(n+1)`
-/

namespace A037593.P10623366600946254840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1) - A033134 (n + 1)

end

end A037593.P10623366600946254840

namespace A037593

/-- `A037635(n+1)-A033134(n+1)` -/
def P10623366600946254840.Spec : Prop :=
  ∀ n, P10623366600946254840.a n = A037593 (n + 1)

end A037593

/-! ## A037593.P2492620584010650912

`2*A037500(n+1)-A033125(n+1)`
-/

namespace A037593.P2492620584010650912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037500 (n + 1) - A033125 (n + 1)

end

end A037593.P2492620584010650912

namespace A037593

/-- `2*A037500(n+1)-A033125(n+1)` -/
def P2492620584010650912.Spec : Prop :=
  ∀ n, P2492620584010650912.a n = A037593 (n + 1)

end A037593

/-! ## A037593.P7287413407911893639

`2*A037532(n+1)-A037540(n+1)`
-/

namespace A037593.P7287413407911893639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037532 (n + 1) - A037540 (n + 1)

end

end A037593.P7287413407911893639

namespace A037593

/-- `2*A037532(n+1)-A037540(n+1)` -/
def P7287413407911893639.Spec : Prop :=
  ∀ n, P7287413407911893639.a n = A037593 (n + 1)

end A037593

/-! ## A037593.P7021329292803952696

`A037635(n+1)-∑[7*a(n-1)+1-A010872(n)]` with `a(0)=1`
-/

namespace A037593.P7021329292803952696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) + (1 - A010872 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037593.P7021329292803952696

namespace A037593

/-- `A037635(n+1)-∑[7*a(n-1)+1-A010872(n)]` -/
def P7021329292803952696.Spec : Prop :=
  ∀ n, P7021329292803952696.a n = A037593 (n + 1)

end A037593

/-! ## A037593.P3657469456235091240

`A037516(n+1)+A037532(n+1)-A037524(n+1)`
-/

namespace A037593.P3657469456235091240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037516 (n + 1) + (A037532 (n + 1) - A037524 (n + 1))

end

end A037593.P3657469456235091240

namespace A037593

/-- `A037516(n+1)+A037532(n+1)-A037524(n+1)` -/
def P3657469456235091240.Spec : Prop :=
  ∀ n, P3657469456235091240.a n = A037593 (n + 1)

end A037593

/-! ## A037593.P1675151900260309130

`A037600(n+1)+A037621(n+1)-A037628(n+1)`
-/

namespace A037593.P1675151900260309130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037600 (n + 1) + (A037621 (n + 1) - A037628 (n + 1))

end

end A037593.P1675151900260309130

namespace A037593

/-- `A037600(n+1)+A037621(n+1)-A037628(n+1)` -/
def P1675151900260309130.Spec : Prop :=
  ∀ n, P1675151900260309130.a n = A037593 (n + 1)

end A037593

/-!
# A037594: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

The programs for A037594, the canonical program `A037594.P4368288139910822953` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037594 has offset 1).

The definition of A037594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037594.P4368288139910822953

`ogf((1+3x^2)/(1-8x-x^3+8x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037594

/-- `ogf((1+3x^2)/(1-8x-x^3+8x^4))` -/
def P4368288139910822953.Spec : Prop :=
  ∀ n, P4368288139910822953.a n = A037594 (n + 1)

theorem P4368288139910822953.correct : P4368288139910822953.Spec := by
  intro n
  simp only [A037594, Nat.add_sub_cancel]

end A037594

/-! ## A037594.P12210155223503308888

`or(10*a(n-1), A010882(n))-2*a(n-1)` with `a(0)=1`
-/

namespace A037594.P12210155223503308888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A010882 n) - 2 * a (n - 1)

end

end A037594.P12210155223503308888

namespace A037594

/-- `or(10*a(n-1), A010882(n))-2*a(n-1)` -/
def P12210155223503308888.Spec : Prop :=
  ∀ n, P12210155223503308888.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P7674753939212734966

`or(10*a(n-1), A270572(8*n))-2*a(n-1)` with `a(0)=1`
-/

namespace A037594.P7674753939212734966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A270572 (8 * n)) - 2 * a (n - 1)

end

end A037594.P7674753939212734966

namespace A037594

/-- `or(10*a(n-1), A270572(8*n))-2*a(n-1)` -/
def P7674753939212734966.Spec : Prop :=
  ∀ n, P7674753939212734966.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P14127475160129754855

`A037622(n+1)-A033144(n+1)`
-/

namespace A037594.P14127475160129754855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037622 (n + 1) - A033144 (n + 1)

end

end A037594.P14127475160129754855

namespace A037594

/-- `A037622(n+1)-A033144(n+1)` -/
def P14127475160129754855.Spec : Prop :=
  ∀ n, P14127475160129754855.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P15759731850739935433

`A037636(n+1)-A033135(n+1)`
-/

namespace A037594.P15759731850739935433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037636 (n + 1) - A033135 (n + 1)

end

end A037594.P15759731850739935433

namespace A037594

/-- `A037636(n+1)-A033135(n+1)` -/
def P15759731850739935433.Spec : Prop :=
  ∀ n, P15759731850739935433.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P17895987631448879414

`2*A037501(n+1)-A033126(n+1)`
-/

namespace A037594.P17895987631448879414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037501 (n + 1) - A033126 (n + 1)

end

end A037594.P17895987631448879414

namespace A037594

/-- `2*A037501(n+1)-A033126(n+1)` -/
def P17895987631448879414.Spec : Prop :=
  ∀ n, P17895987631448879414.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P7742753560569435241

`2*A037533(n+1)-A037541(n+1)`
-/

namespace A037594.P7742753560569435241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037533 (n + 1) - A037541 (n + 1)

end

end A037594.P7742753560569435241

namespace A037594

/-- `2*A037533(n+1)-A037541(n+1)` -/
def P7742753560569435241.Spec : Prop :=
  ∀ n, P7742753560569435241.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P3489646186196916436

`A037501(n+1)+A037557(n+1)-A037525(n+1)`
-/

namespace A037594.P3489646186196916436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037501 (n + 1) + (A037557 (n + 1) - A037525 (n + 1))

end

end A037594.P3489646186196916436

namespace A037594

/-- `A037501(n+1)+A037557(n+1)-A037525(n+1)` -/
def P3489646186196916436.Spec : Prop :=
  ∀ n, P3489646186196916436.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P16479085097352597841

`A037501(n+1)+A037549(n+1)-A037541(n+1)`
-/

namespace A037594.P16479085097352597841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037501 (n + 1) + (A037549 (n + 1) - A037541 (n + 1))

end

end A037594.P16479085097352597841

namespace A037594

/-- `A037501(n+1)+A037549(n+1)-A037541(n+1)` -/
def P16479085097352597841.Spec : Prop :=
  ∀ n, P16479085097352597841.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P17337749417267737123

`A037501(n+1)+A037573(n+1)-A037557(n+1)`
-/

namespace A037594.P17337749417267737123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037501 (n + 1) + (A037573 (n + 1) - A037557 (n + 1))

end

end A037594.P17337749417267737123

namespace A037594

/-- `A037501(n+1)+A037573(n+1)-A037557(n+1)` -/
def P17337749417267737123.Spec : Prop :=
  ∀ n, P17337749417267737123.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P15381810682016322555

`A037501(n+1)+A037608(n+1)-A037549(n+1)`
-/

namespace A037594.P15381810682016322555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037501 (n + 1) + (A037608 (n + 1) - A037549 (n + 1))

end

end A037594.P15381810682016322555

namespace A037594

/-- `A037501(n+1)+A037608(n+1)-A037549(n+1)` -/
def P15381810682016322555.Spec : Prop :=
  ∀ n, P15381810682016322555.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P5688304399342705677

`xor(A037557(n+1)+A033126(n+1), A037557(n+1))`
-/

namespace A037594.P5688304399342705677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037557 (n + 1) + A033126 (n + 1)) (A037557 (n + 1))

end

end A037594.P5688304399342705677

namespace A037594

/-- `xor(A037557(n+1)+A033126(n+1), A037557(n+1))` -/
def P5688304399342705677.Spec : Prop :=
  ∀ n, P5688304399342705677.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P5509318154658333095

`xor(A037565(n+1)+A033126(n+1), A037565(n+1))`
-/

namespace A037594.P5509318154658333095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037565 (n + 1) + A033126 (n + 1)) (A037565 (n + 1))

end

end A037594.P5509318154658333095

namespace A037594

/-- `xor(A037565(n+1)+A033126(n+1), A037565(n+1))` -/
def P5509318154658333095.Spec : Prop :=
  ∀ n, P5509318154658333095.a n = A037594 (n + 1)

end A037594

/-! ## A037594.P16465092317714980737

`xor(A037541(n+1)-A033135(n+1), A037533(n+1))`
-/

namespace A037594.P16465092317714980737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037541 (n + 1) - A033135 (n + 1)) (A037533 (n + 1))

end

end A037594.P16465092317714980737

namespace A037594

/-- `xor(A037541(n+1)-A033135(n+1), A037533(n+1))` -/
def P16465092317714980737.Spec : Prop :=
  ∀ n, P16465092317714980737.a n = A037594 (n + 1)

end A037594

/-!
# A037595: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

The programs for A037595, the canonical program `A037595.P8887825269898564659` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037595 has offset 1).

The definition of A037595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037595.P8887825269898564659

`ogf((1+3x^2)/(1-9x-x^3+9x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037595

/-- `ogf((1+3x^2)/(1-9x-x^3+9x^4))` -/
def P8887825269898564659.Spec : Prop :=
  ∀ n, P8887825269898564659.a n = A037595 (n + 1)

theorem P8887825269898564659.correct : P8887825269898564659.Spec := by
  intro n
  simp only [A037595, Nat.add_sub_cancel]

end A037595

/-! ## A037595.P17745472309475842132

`floor(9^n+a(n-1)/3)` with `a(0)=1`
-/

namespace A037595.P17745472309475842132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(9 ^ n : ℚ) + (a (n - 1) : ℚ) / 3⌋

end

end A037595.P17745472309475842132

namespace A037595

/-- `floor(9^n+a(n-1)/3)` -/
def P17745472309475842132.Spec : Prop :=
  ∀ n, P17745472309475842132.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P8811296471947905534

`xor(2, 9*a(n-1)+2-n%3)+1` with `a(0)=1`
-/

namespace A037595.P8811296471947905534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 2 (9 * a (n - 1) + (2 - ((n % 3 : ℕ) : ℤ))) + 1

end

end A037595.P8811296471947905534

namespace A037595

/-- `xor(2, 9*a(n-1)+2-n%3)+1` -/
def P8811296471947905534.Spec : Prop :=
  ∀ n, P8811296471947905534.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P12202047221291156941

`A033139(Δ[n²])`
-/

namespace A037595.P12202047221291156941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037595.P12202047221291156941

namespace A037595

/-- `A033139(Δ[n²])` -/
def P12202047221291156941.Spec : Prop :=
  ∀ n, P12202047221291156941.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P13526669486882326556

`floor(A037665(n+1)/3)`
-/

namespace A037595.P13526669486882326556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037665 (n + 1) : ℚ) / 3⌋

end

end A037595.P13526669486882326556

namespace A037595

/-- `floor(A037665(n+1)/3)` -/
def P13526669486882326556.Spec : Prop :=
  ∀ n, P13526669486882326556.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P11481650058455333657

`floor(A077834(2*n+1)/2)`
-/

namespace A037595.P11481650058455333657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077834 (2 * n + 1) : ℚ) / 2⌋

end

end A037595.P11481650058455333657

namespace A037595

/-- `floor(A077834(2*n+1)/2)` -/
def P11481650058455333657.Spec : Prop :=
  ∀ n, P11481650058455333657.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P1570629631398314135

`floor(A263334(2*n+1)/2)`
-/

namespace A037595.P1570629631398314135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263334 (2 * n + 1) : ℚ) / 2⌋

end

end A037595.P1570629631398314135

namespace A037595

/-- `floor(A263334(2*n+1)/2)` -/
def P1570629631398314135.Spec : Prop :=
  ∀ n, P1570629631398314135.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P11997833706126474371

`record[A033139(gcd((n+1)², ∑[n]))]`
-/

namespace A037595.P11997833706126474371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (Nat.gcd ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037595.P11997833706126474371

namespace A037595

/-- `record[A033139(gcd((n+1)², ∑[n]))]` -/
def P11997833706126474371.Spec : Prop :=
  ∀ n, P11997833706126474371.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P17658435188238682635

`or(2, A033139(2*n+1))-2`
-/

namespace A037595.P17658435188238682635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A033139 (2 * n + 1)) - 2

end

end A037595.P17658435188238682635

namespace A037595

/-- `or(2, A033139(2*n+1))-2` -/
def P17658435188238682635.Spec : Prop :=
  ∀ n, P17658435188238682635.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P10456448091558930763

`record[lcm((1-n)%2, A033139(n+1))]`
-/

namespace A037595.P10456448091558930763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (1 - (n : ℤ)) 2) (A033139 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037595.P10456448091558930763

namespace A037595

/-- `record[lcm((1-n)%2, A033139(n+1))]` -/
def P10456448091558930763.Spec : Prop :=
  ∀ n, (P10456448091558930763.a n : ℤ) = A037595 (n + 1)

end A037595

/-! ## A037595.P11119337544218178307

`record[A033139(A014681(n)+1)]`
-/

namespace A037595.P11119337544218178307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037595.P11119337544218178307

namespace A037595

/-- `record[A033139(A014681(n)+1)]` -/
def P11119337544218178307.Spec : Prop :=
  ∀ n, P11119337544218178307.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P15510537016247627561

`record[A033139(or(1, A028242(n)))]`
-/

namespace A037595.P15510537016247627561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (Int.lor 1 (A028242 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037595.P15510537016247627561

namespace A037595

/-- `record[A033139(or(1, A028242(n)))]` -/
def P15510537016247627561.Spec : Prop :=
  ∀ n, P15510537016247627561.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P1471905229896803034

`record[A033139(n+1)*A033999(n)]`
-/

namespace A037595.P1471905229896803034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037595.P1471905229896803034

namespace A037595

/-- `record[A033139(n+1)*A033999(n)]` -/
def P1471905229896803034.Spec : Prop :=
  ∀ n, P1471905229896803034.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P6175127809085224487

`or(A000007(n), A033139(2*n+1))`
-/

namespace A037595.P6175127809085224487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A033139 (2 * n + 1))

end

end A037595.P6175127809085224487

namespace A037595

/-- `or(A000007(n), A033139(2*n+1))` -/
def P6175127809085224487.Spec : Prop :=
  ∀ n, P6175127809085224487.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P2219576305242728240

`A033999(n)²*A033139(2*n+1)`
-/

namespace A037595.P2219576305242728240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A033139 (2 * n + 1)

end

end A037595.P2219576305242728240

namespace A037595

/-- `A033999(n)²*A033139(2*n+1)` -/
def P2219576305242728240.Spec : Prop :=
  ∀ n, P2219576305242728240.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P1131207290524387922

`A007318(∑[n])*A033139(2*n+1)`
-/

namespace A037595.P1131207290524387922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A033139 (2 * n + 1)

end

end A037595.P1131207290524387922

namespace A037595

/-- `A007318(∑[n])*A033139(2*n+1)` -/
def P1131207290524387922.Spec : Prop :=
  ∀ n, P1131207290524387922.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P17981781096080236490

`A033139(2*n+1)+A000007(n+1)`
-/

namespace A037595.P17981781096080236490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (2 * n + 1) + A000007 (n + 1)

end

end A037595.P17981781096080236490

namespace A037595

/-- `A033139(2*n+1)+A000007(n+1)` -/
def P17981781096080236490.Spec : Prop :=
  ∀ n, P17981781096080236490.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P7564883365192001779

`2*A037502(n+1)-A033127(n+1)`
-/

namespace A037595.P7564883365192001779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037502 (n + 1) - A033127 (n + 1)

end

end A037595.P7564883365192001779

namespace A037595

/-- `2*A037502(n+1)-A033127(n+1)` -/
def P7564883365192001779.Spec : Prop :=
  ∀ n, P7564883365192001779.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P16146933533809021034

`2*A037534(n+1)-A037542(n+1)`
-/

namespace A037595.P16146933533809021034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037534 (n + 1) - A037542 (n + 1)

end

end A037595.P16146933533809021034

namespace A037595

/-- `2*A037534(n+1)-A037542(n+1)` -/
def P16146933533809021034.Spec : Prop :=
  ∀ n, P16146933533809021034.a n = A037595 (n + 1)

end A037595

/-! ## A037595.P11332171337259475041

`A033139(2*n+1)*A033999(2*n)`
-/

namespace A037595.P11332171337259475041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (2 * n + 1) * A033999 (2 * n)

end

end A037595.P11332171337259475041

namespace A037595

/-- `A033139(2*n+1)*A033999(2*n)` -/
def P11332171337259475041.Spec : Prop :=
  ∀ n, P11332171337259475041.a n = A037595 (n + 1)

end A037595

/-!
# A037596: Numbers written in base 4 whose digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

The programs for A037596, the canonical program `A037596.P9001029919214473020` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037596 has offset 1).

The definition of A037596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037596.P9001029919214473020

`floor(103/999*10^(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037596

/-- `floor(103/999*10^(n+1))` -/
def P9001029919214473020.Spec : Prop :=
  ∀ n, P9001029919214473020.a n = A037596 (n + 1)

theorem P9001029919214473020.correct : P9001029919214473020.Spec := by
  intro n
  simp only [A037596, Nat.add_sub_cancel]

end A037596

/-! ## A037596.P16826688604007774916

`ogf((1+3x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037596.P16826688604007774916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, -10, 0, -1, 10] n

end

end A037596.P16826688604007774916

namespace A037596

/-- `ogf((1+3x^2)/(1-10x-x^3+10x^4))` -/
def P16826688604007774916.Spec : Prop :=
  ∀ n, P16826688604007774916.a n = A037596 (n + 1)

end A037596

/-! ## A037596.P3528739672958586964

`or(10*a(n-1), A010882(n))` with `a(0)=1`
-/

namespace A037596.P3528739672958586964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A010882 n)

end

end A037596.P3528739672958586964

namespace A037596

/-- `or(10*a(n-1), A010882(n))` -/
def P3528739672958586964.Spec : Prop :=
  ∀ n, P3528739672958586964.a n = A037596 (n + 1)

end A037596

/-! ## A037596.P16629195906423005298

`or(10*a(n-1), Δ[A008576(n)])` with `a(0)=1`
-/

namespace A037596.P16629195906423005298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037596.P16629195906423005298

namespace A037596

/-- `or(10*a(n-1), Δ[A008576(n)])` -/
def P16629195906423005298.Spec : Prop :=
  ∀ n, P16629195906423005298.a n = A037596 (n + 1)

end A037596

/-! ## A037596.P14658276460343422233

`or(10*a(n-1), A270572(8*n))` with `a(0)=1`
-/

namespace A037596.P14658276460343422233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A270572 (8 * n))

end

end A037596.P14658276460343422233

namespace A037596

/-- `or(10*a(n-1), A270572(8*n))` -/
def P14658276460343422233.Spec : Prop :=
  ∀ n, P14658276460343422233.a n = A037596 (n + 1)

end A037596

/-! ## A037596.P9560694579551863881

`or(10*a(n-1), Δ[A047242(n+1)])` with `a(0)=1`
-/

namespace A037596.P9560694579551863881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037596.P9560694579551863881

namespace A037596

/-- `or(10*a(n-1), Δ[A047242(n+1)])` -/
def P9560694579551863881.Spec : Prop :=
  ∀ n, P9560694579551863881.a n = A037596 (n + 1)

end A037596

/-! ## A037596.P16066023538241149994

`or(10*a(n-1), Δ[A047408(n+1)])` with `a(0)=1`
-/

namespace A037596.P16066023538241149994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037596.P16066023538241149994

namespace A037596

/-- `or(10*a(n-1), Δ[A047408(n+1)])` -/
def P16066023538241149994.Spec : Prop :=
  ∀ n, P16066023538241149994.a n = A037596 (n + 1)

end A037596

/-! ## A037596.P2446835845876997573

`or(10*a(n-1), Δ[A047480(n+1)])` with `a(0)=1`
-/

namespace A037596.P2446835845876997573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037596.P2446835845876997573

namespace A037596

/-- `or(10*a(n-1), Δ[A047480(n+1)])` -/
def P2446835845876997573.Spec : Prop :=
  ∀ n, P2446835845876997573.a n = A037596 (n + 1)

end A037596

/-! ## A037596.P677649151011436299

`2*A037503(n)-A033128(n)`
-/

namespace A037596.P677649151011436299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037503 (n + 1) - A033128 (n + 1)

end

end A037596.P677649151011436299

namespace A037596

/-- `2*A037503(n)-A033128(n)` -/
def P677649151011436299.Spec : Prop :=
  ∀ n, P677649151011436299.a n = A037596 (n + 1)

end A037596

/-! ## A037596.P12982159955535255403

`A037535(n)+Δ[A000042(n+1)-A037535(n)]`
-/

namespace A037596.P12982159955535255403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A037535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037535 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037596.P12982159955535255403

namespace A037596

/-- `A037535(n)+Δ[A000042(n+1)-A037535(n)]` -/
def P12982159955535255403.Spec : Prop :=
  ∀ n, P12982159955535255403.a n = A037596 (n + 1)

end A037596

/-!
# A037597: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

The programs for A037597, the canonical program `A037597.P15942085299224867304` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037597 has offset 1).

The definition of A037597 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037597.anchor (n : ℕ) (hn : 1 ≤ n) : A037597 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [1, 3, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037597`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037597.P5168109889668020997

`ogf((1+3x)/(1-4x-x^3+4x^4))`
-/

namespace A037597.P5168109889668020997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -4, 0, -1, 4] n

end

end A037597.P5168109889668020997

namespace A037597

/-- `ogf((1+3x)/(1-4x-x^3+4x^4))` -/
def P5168109889668020997.Spec : Prop :=
  ∀ n, P5168109889668020997.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P15942085299224867304

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=7, a(2)=28, a(3)=113`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037597

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P15942085299224867304.Spec : Prop :=
  ∀ n, P15942085299224867304.a n = A037597 (n + 1)

theorem P15942085299224867304.correct : P15942085299224867304.Spec := by
  intro n
  simp only [A037597, Nat.add_sub_cancel]

end A037597

/-! ## A037597.P2011674322207884781

`floor(4^(n+2)/9)`
-/

namespace A037597.P2011674322207884781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ (n + 2) : ℚ) / 9⌋

end

end A037597.P2011674322207884781

namespace A037597

/-- `floor(4^(n+2)/9)` -/
def P2011674322207884781.Spec : Prop :=
  ∀ n, P2011674322207884781.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P18276624421190221001

`∑[∑[4^n]+∑[n]%3]`
-/

namespace A037597.P18276624421190221001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (∑ j ∈ Finset.range (n + 1), f3 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037597.P18276624421190221001

namespace A037597

/-- `∑[∑[4^n]+∑[n]%3]` -/
def P18276624421190221001.Spec : Prop :=
  ∀ n, (P18276624421190221001.a n : ℤ) = A037597 (n + 1)

end A037597

/-! ## A037597.P17897528918681308498

`∑[A191597(n+1)]`
-/

namespace A037597.P17897528918681308498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037597.P17897528918681308498

namespace A037597

/-- `∑[A191597(n+1)]` -/
def P17897528918681308498.Spec : Prop :=
  ∀ n, P17897528918681308498.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P12878120917246523128

`Δ[A178744(n+1)]`
-/

namespace A037597.P12878120917246523128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037597.P12878120917246523128

namespace A037597

/-- `Δ[A178744(n+1)]` -/
def P12878120917246523128.Spec : Prop :=
  ∀ n, P12878120917246523128.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P4452973458328925372

`A131090(2*(n+2))`
-/

namespace A037597.P4452973458328925372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 (2 * (n + 2))

end

end A037597.P4452973458328925372

namespace A037597

/-- `A131090(2*(n+2))` -/
def P4452973458328925372.Spec : Prop :=
  ∀ n, P4452973458328925372.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P18168010992746482770

`A153234(2*(n+2))`
-/

namespace A037597.P18168010992746482770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (2 * (n + 2))

end

end A037597.P18168010992746482770

namespace A037597

/-- `A153234(2*(n+2))` -/
def P18168010992746482770.Spec : Prop :=
  ∀ n, P18168010992746482770.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P10028161523782347017

`A262333(Δ[n²])-1`
-/

namespace A037597.P10028161523782347017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A037597.P10028161523782347017

namespace A037597

/-- `A262333(Δ[n²])-1` -/
def P10028161523782347017.Spec : Prop :=
  ∀ n, P10028161523782347017.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P15048688116930117171

`∑[∑[A141775(2*n)]]`
-/

namespace A037597.P15048688116930117171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037597.P15048688116930117171

namespace A037597

/-- `∑[∑[A141775(2*n)]]` -/
def P15048688116930117171.Spec : Prop :=
  ∀ n, P15048688116930117171.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P13722132407552655572

`∑[A024495(2*(n+1))]`
-/

namespace A037597.P13722132407552655572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037597.P13722132407552655572

namespace A037597

/-- `∑[A024495(2*(n+1))]` -/
def P13722132407552655572.Spec : Prop :=
  ∀ n, P13722132407552655572.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P3544560169731901278

`∑[A135574(2*n+3)]`
-/

namespace A037597.P3544560169731901278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135574 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037597.P3544560169731901278

namespace A037597

/-- `∑[A135574(2*n+3)]` -/
def P3544560169731901278.Spec : Prop :=
  ∀ n, P3544560169731901278.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P4948717552111347682

`A328881(2*(n+2))-1`
-/

namespace A037597.P4948717552111347682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (2 * (n + 2)) - 1

end

end A037597.P4948717552111347682

namespace A037597

/-- `A328881(2*(n+2))-1` -/
def P4948717552111347682.Spec : Prop :=
  ∀ n, P4948717552111347682.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P1912435595166801604

`A178872(n)+A037537(n+1)`
-/

namespace A037597.P1912435595166801604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A037537 (n + 1)

end

end A037597.P1912435595166801604

namespace A037597

/-- `A178872(n)+A037537(n+1)` -/
def P1912435595166801604.Spec : Prop :=
  ∀ n, P1912435595166801604.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P12469190317118849537

`A198693(n)-A378499(n+1)`
-/

namespace A037597.P12469190317118849537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198693 n - A378499 (n + 1)

end

end A037597.P12469190317118849537

namespace A037597

/-- `A198693(n)-A378499(n+1)` -/
def P12469190317118849537.Spec : Prop :=
  ∀ n, P12469190317118849537.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P12555720497859357232

`xor(A024036(n), A378499(n+1))`
-/

namespace A037597.P12555720497859357232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024036 n) (A378499 (n + 1))

end

end A037597.P12555720497859357232

namespace A037597

/-- `xor(A024036(n), A378499(n+1))` -/
def P12555720497859357232.Spec : Prop :=
  ∀ n, P12555720497859357232.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P2292764991000428247

`A037639(n+1)-A033122(n+1)`
-/

namespace A037597.P2292764991000428247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037639 (n + 1) - A033122 (n + 1)

end

end A037597.P2292764991000428247

namespace A037597

/-- `A037639(n+1)-A033122(n+1)` -/
def P2292764991000428247.Spec : Prop :=
  ∀ n, P2292764991000428247.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P1594257398102564302

`A037625(n+1)-A033140(n+1)`
-/

namespace A037597.P1594257398102564302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037625 (n + 1) - A033140 (n + 1)

end

end A037597.P1594257398102564302

namespace A037597

/-- `A037625(n+1)-A033140(n+1)` -/
def P1594257398102564302.Spec : Prop :=
  ∀ n, P1594257398102564302.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P8488603177610016878

`A164346(n)-(A378499(n+1)+1)`
-/

namespace A037597.P8488603177610016878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n - (A378499 (n + 1) + 1)

end

end A037597.P8488603177610016878

namespace A037597

/-- `A164346(n)-(A378499(n+1)+1)` -/
def P8488603177610016878.Spec : Prop :=
  ∀ n, P8488603177610016878.a n = A037597 (n + 1)

end A037597

/-! ## A037597.P4210248371515044017

`A178744(n+2)-A178744(n+1)`
-/

namespace A037597.P4210248371515044017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178744 (n + 2) - A178744 (n + 1)

end

end A037597.P4210248371515044017

namespace A037597

/-- `A178744(n+2)-A178744(n+1)` -/
def P4210248371515044017.Spec : Prop :=
  ∀ n, P4210248371515044017.a n = A037597 (n + 1)

end A037597

/-!
# A037598: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

The programs for A037598, the canonical program `A037598.P9107427004590983358` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037598 has offset 1).

The definition of A037598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037598.P9107427004590983358

`ogf((1+3x)/(1-5x-x^3+5x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037598

/-- `ogf((1+3x)/(1-5x-x^3+5x^4))` -/
def P9107427004590983358.Spec : Prop :=
  ∀ n, P9107427004590983358.a n = A037598 (n + 1)

theorem P9107427004590983358.correct : P9107427004590983358.Spec := by
  intro n
  simp only [A037598, Nat.add_sub_cancel]

end A037598

/-! ## A037598.P14435589116521687136

`∑[xor(5*a(n-1), dr(6*n)%4)]` with `a(0)=1`
-/

namespace A037598.P14435589116521687136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (5 * f1 (n - 1)) (SequenceMachineLib.digitalRoot (6 * n : ℤ) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037598.P14435589116521687136

namespace A037598

/-- `∑[xor(5*a(n-1), dr(6*n)%4)]` -/
def P14435589116521687136.Spec : Prop :=
  ∀ n, (P14435589116521687136.a n : ℤ) = A037598 (n + 1)

end A037598

/-! ## A037598.P10383352978025160954

`floor(A037661(n+1)/2)`
-/

namespace A037598.P10383352978025160954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037661 (n + 1) : ℚ) / 2⌋

end

end A037598.P10383352978025160954

namespace A037598

/-- `floor(A037661(n+1)/2)` -/
def P10383352978025160954.Spec : Prop :=
  ∀ n, P10383352978025160954.a n = A037598 (n + 1)

end A037598

/-! ## A037598.P2445413237507796847

`floor(4*A033132(n+1)/3)`
-/

namespace A037598.P2445413237507796847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((A033132 (n + 1) : ℚ) / 3)⌋

end

end A037598.P2445413237507796847

namespace A037598

/-- `floor(4*A033132(n+1)/3)` -/
def P2445413237507796847.Spec : Prop :=
  ∀ n, P2445413237507796847.a n = A037598 (n + 1)

end A037598

/-! ## A037598.P6844375030624898074

`A128625(n)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=40`
-/

namespace A037598.P6844375030624898074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 40] fun n a =>
  A128625 n + a (n - 3)

end

end A037598.P6844375030624898074

namespace A037598

/-- `A128625(n)+a(n-3)` -/
def P6844375030624898074.Spec : Prop :=
  ∀ n, P6844375030624898074.a n = A037598 (n + 1)

end A037598

/-! ## A037598.P5220942460637371302

`∑[xor(5*a(n-1), A010882(n))]` with `a(0)=1`
-/

namespace A037598.P5220942460637371302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A010882 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037598.P5220942460637371302

namespace A037598

/-- `∑[xor(5*a(n-1), A010882(n))]` -/
def P5220942460637371302.Spec : Prop :=
  ∀ n, P5220942460637371302.a n = A037598 (n + 1)

end A037598

/-! ## A037598.P15390015713395966418

`A037626(n+1)-A033141(n+1)`
-/

namespace A037598.P15390015713395966418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037626 (n + 1) - A033141 (n + 1)

end

end A037598.P15390015713395966418

namespace A037598

/-- `A037626(n+1)-A033141(n+1)` -/
def P15390015713395966418.Spec : Prop :=
  ∀ n, P15390015713395966418.a n = A037598 (n + 1)

end A037598

/-! ## A037598.P12634418247725117688

`2*A037538(n+1)-A037530(n+1)`
-/

namespace A037598.P12634418247725117688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037538 (n + 1) - A037530 (n + 1)

end

end A037598.P12634418247725117688

namespace A037598

/-- `2*A037538(n+1)-A037530(n+1)` -/
def P12634418247725117688.Spec : Prop :=
  ∀ n, P12634418247725117688.a n = A037598 (n + 1)

end A037598

/-! ## A037598.P4893421946286805230

`floor(Δ[A033132(n+1)/3])`
-/

namespace A037598.P4893421946286805230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033132 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A037598.P4893421946286805230

namespace A037598

/-- `floor(Δ[A033132(n+1)/3])` -/
def P4893421946286805230.Spec : Prop :=
  ∀ n, P4893421946286805230.a n = A037598 (n + 1)

end A037598

/-! ## A037598.P3591513685043143780

`floor(2*A000351(n+2)/31)`
-/

namespace A037598.P3591513685043143780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A000351 (n + 2) : ℚ) / 31)⌋

end

end A037598.P3591513685043143780

namespace A037598

/-- `floor(2*A000351(n+2)/31)` -/
def P3591513685043143780.Spec : Prop :=
  ∀ n, P3591513685043143780.a n = A037598 (n + 1)

end A037598

/-! ## A037598.P6643368665198196620

`A037605(n+2)-A033132(n+2)`
-/

namespace A037598.P6643368665198196620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037605 (n + 2) - A033132 (n + 2)

end

end A037598.P6643368665198196620

namespace A037598

/-- `A037605(n+2)-A033132(n+2)` -/
def P6643368665198196620.Spec : Prop :=
  ∀ n, P6643368665198196620.a n = A037598 (n + 1)

end A037598

/-! ## A037598.P15978753075861260590

`2*A037530(n+2)-A037554(n+2)`
-/

namespace A037598.P15978753075861260590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037530 (n + 2) - A037554 (n + 2)

end

end A037598.P15978753075861260590

namespace A037598

/-- `2*A037530(n+2)-A037554(n+2)` -/
def P15978753075861260590.Spec : Prop :=
  ∀ n, P15978753075861260590.a n = A037598 (n + 1)

end A037598

/-!
# A037599: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

The programs for A037599, the canonical program `A037599.P2925965857018498646` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037599 has offset 1).

The definition of A037599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037599.P2925965857018498646

`ogf((1+3x)/(1-6x-x^3+6x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A037599

/-- `ogf((1+3x)/(1-6x-x^3+6x^4))` -/
def P2925965857018498646.Spec : Prop :=
  ∀ n, P2925965857018498646.a n = A037599 (n + 1)

theorem P2925965857018498646.correct : P2925965857018498646.Spec := by
  intro n
  simp only [A037599, Nat.add_sub_cancel]

end A037599

/-! ## A037599.P17724459491578180383

`∑[2^n]%7+6*a(n-1)` with `a(0)=1`
-/

namespace A037599.P17724459491578180383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 7 + 6 * a (n - 1)

end

end A037599.P17724459491578180383

namespace A037599

/-- `∑[2^n]%7+6*a(n-1)` -/
def P17724459491578180383.Spec : Prop :=
  ∀ n, (P17724459491578180383.a n : ℤ) = A037599 (n + 1)

end A037599

/-! ## A037599.P14495341121802861835

`floor(A033142(n+1)+A033142(n+1)/2)`
-/

namespace A037599.P14495341121802861835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033142 (n + 1) : ℚ) + (A033142 (n + 1) : ℚ) / 2⌋

end

end A037599.P14495341121802861835

namespace A037599

/-- `floor(A033142(n+1)+A033142(n+1)/2)` -/
def P14495341121802861835.Spec : Prop :=
  ∀ n, P14495341121802861835.a n = A037599 (n + 1)

end A037599

/-! ## A037599.P13308437915595549153

`A033133(n+1)+A037507(n+1)-A033142(n+1)`
-/

namespace A037599.P13308437915595549153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033133 (n + 1) + (A037507 (n + 1) - A033142 (n + 1))

end

end A037599.P13308437915595549153

namespace A037599

/-- `A033133(n+1)+A037507(n+1)-A033142(n+1)` -/
def P13308437915595549153.Spec : Prop :=
  ∀ n, P13308437915595549153.a n = A037599 (n + 1)

end A037599

/-! ## A037599.P6508716098095443983

`A037523(n+1)+A037539(n+1)-A037515(n+1)`
-/

namespace A037599.P6508716098095443983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) + (A037539 (n + 1) - A037515 (n + 1))

end

end A037599.P6508716098095443983

namespace A037599

/-- `A037523(n+1)+A037539(n+1)-A037515(n+1)` -/
def P6508716098095443983.Spec : Prop :=
  ∀ n, P6508716098095443983.a n = A037599 (n + 1)

end A037599

/-! ## A037599.P12841956062799405781

`A037539(n+1)+A037539(n+1)-A037531(n+1)`
-/

namespace A037599.P12841956062799405781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 1) + (A037539 (n + 1) - A037531 (n + 1))

end

end A037599.P12841956062799405781

namespace A037599

/-- `A037539(n+1)+A037539(n+1)-A037531(n+1)` -/
def P12841956062799405781.Spec : Prop :=
  ∀ n, P12841956062799405781.a n = A037599 (n + 1)

end A037599

/-! ## A037599.P11509186367105916535

`∑[round(A037627(n+1)/2)]`
-/

namespace A037599.P11509186367105916535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037627 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037599.P11509186367105916535

namespace A037599

/-- `∑[round(A037627(n+1)/2)]` -/
def P11509186367105916535.Spec : Prop :=
  ∀ n, P11509186367105916535.a n = A037599 (n + 1)

end A037599

/-! ## A037599.P16625550247590087098

`A037641(n+1)-A033124(n+1)`
-/

namespace A037599.P16625550247590087098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037641 (n + 1) - A033124 (n + 1)

end

end A037599.P16625550247590087098

namespace A037599

/-- `A037641(n+1)-A033124(n+1)` -/
def P16625550247590087098.Spec : Prop :=
  ∀ n, P16625550247590087098.a n = A037599 (n + 1)

end A037599

/-! ## A037599.P5749381855275936101

`2*A037507(n+1)-A033133(n+1)`
-/

namespace A037599.P5749381855275936101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037507 (n + 1) - A033133 (n + 1)

end

end A037599.P5749381855275936101

namespace A037599

/-- `2*A037507(n+1)-A033133(n+1)` -/
def P5749381855275936101.Spec : Prop :=
  ∀ n, P5749381855275936101.a n = A037599 (n + 1)

end A037599

/-! ## A037599.P18249241881682005

`2*A037539(n+1)-A037531(n+1)`
-/

namespace A037599.P18249241881682005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037539 (n + 1) - A037531 (n + 1)

end

end A037599.P18249241881682005

namespace A037599

/-- `2*A037539(n+1)-A037531(n+1)` -/
def P18249241881682005.Spec : Prop :=
  ∀ n, P18249241881682005.a n = A037599 (n + 1)

end A037599

/-! ## A037599.P18162961891980206784

`2*A037531(n+2)-A037555(n+2)`
-/

namespace A037599.P18162961891980206784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037531 (n + 2) - A037555 (n + 2)

end

end A037599.P18162961891980206784

namespace A037599

/-- `2*A037531(n+2)-A037555(n+2)` -/
def P18162961891980206784.Spec : Prop :=
  ∀ n, P18162961891980206784.a n = A037599 (n + 1)

end A037599

/-! ## A037599.P10942771483074716219

`A037531(n+2)+A037547(n+2)-A037563(n+2)`
-/

namespace A037599.P10942771483074716219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037531 (n + 2) + (A037547 (n + 2) - A037563 (n + 2))

end

end A037599.P10942771483074716219

namespace A037599

/-- `A037531(n+2)+A037547(n+2)-A037563(n+2)` -/
def P10942771483074716219.Spec : Prop :=
  ∀ n, P10942771483074716219.a n = A037599 (n + 1)

end A037599

