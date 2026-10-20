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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A159006: Transformation of prime(n): flip digits in the binary representation, revert the sequence of digits, and convert back to decimal.

The programs for A159006, the canonical program `A159006.P17927454949107554909` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159006 has offset 1).

The definition of A159006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159006.P17927454949107554909

`A036044(A130290(n+1)+A000007(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A159006

/-- `A036044(A130290(n+1)+A000007(n))` -/
def P17927454949107554909.Spec : Prop :=
  ∀ n, P17927454949107554909.a n = A159006 (n + 1)

theorem P17927454949107554909.correct : P17927454949107554909.Spec := by
  intro n
  simp only [A159006, Nat.add_sub_cancel]

end A159006

/-! ## A159006.P12942754001706470135

`A036044(p?[comp[n²]])`
-/

namespace A159006.P12942754001706470135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A159006.P12942754001706470135

namespace A159006

/-- `A036044(p?[comp[n²]])` -/
def P12942754001706470135.Spec : Prop :=
  ∀ n, P12942754001706470135.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P3349162678000124917

`A036044(Δ[A007504(n)])`
-/

namespace A159006.P3349162678000124917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (f1 (n + 1) - f1 n).toNat

end

end A159006.P3349162678000124917

namespace A159006

/-- `A036044(Δ[A007504(n)])` -/
def P3349162678000124917.Spec : Prop :=
  ∀ n, P3349162678000124917.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P4450605599924677905

`A036044(A000040(n+1))`
-/

namespace A159006.P4450605599924677905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A000040 (n + 1)).toNat

end

end A159006.P4450605599924677905

namespace A159006

/-- `A036044(A000040(n+1))` -/
def P4450605599924677905.Spec : Prop :=
  ∀ n, P4450605599924677905.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P12463949993579181759

`A036044(A008578(n+2))`
-/

namespace A159006.P12463949993579181759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A008578 (n + 2)).toNat

end

end A159006.P12463949993579181759

namespace A159006

/-- `A036044(A008578(n+2))` -/
def P12463949993579181759.Spec : Prop :=
  ∀ n, P12463949993579181759.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P6813140298160012464

`A036044(A182986(n+2))`
-/

namespace A159006.P6813140298160012464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A182986 (n + 2)).toNat

end

end A159006.P6813140298160012464

namespace A159006

/-- `A036044(A182986(n+2))` -/
def P6813140298160012464.Spec : Prop :=
  ∀ n, P6813140298160012464.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P6974666595968317110

`A036044(eq[1, A003415(n)])`
-/

namespace A159006.P6974666595968317110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159006.P6974666595968317110

namespace A159006

/-- `A036044(eq[1, A003415(n)])` -/
def P6974666595968317110.Spec : Prop :=
  ∀ n, P6974666595968317110.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P5171119517375495528

`A036044(record[A006530(n+2)])`
-/

namespace A159006.P5171119517375495528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A159006.P5171119517375495528

namespace A159006

/-- `A036044(record[A006530(n+2)])` -/
def P5171119517375495528.Spec : Prop :=
  ∀ n, P5171119517375495528.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P4211946866199376903

`A036044(record[A014963(n+2)])`
-/

namespace A159006.P4211946866199376903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A159006.P4211946866199376903

namespace A159006

/-- `A036044(record[A014963(n+2)])` -/
def P4211946866199376903.Spec : Prop :=
  ∀ n, P4211946866199376903.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P13057600509186794764

`A036044(record[A020639(n+2)])`
-/

namespace A159006.P13057600509186794764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A159006.P13057600509186794764

namespace A159006

/-- `A036044(record[A020639(n+2)])` -/
def P13057600509186794764.Spec : Prop :=
  ∀ n, P13057600509186794764.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P4052154105284644413

`A036044((A072055(n+1)-1)/2)`
-/

namespace A159006.P4052154105284644413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (SequenceMachineLib.roundAway ((A072055 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A159006.P4052154105284644413

namespace A159006

/-- `A036044((A072055(n+1)-1)/2)` -/
def P4052154105284644413.Spec : Prop :=
  ∀ n, P4052154105284644413.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P10950697483048543846

`A281499(A338524(n+1))`
-/

namespace A159006.P10950697483048543846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281499 (A338524 (n + 1)).toNat

end

end A159006.P10950697483048543846

namespace A159006

/-- `A281499(A338524(n+1))` -/
def P10950697483048543846.Spec : Prop :=
  ∀ n, P10950697483048543846.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P3913076255590958606

`A265326(n+1)+A145382(n+1)`
-/

namespace A159006.P3913076255590958606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265326 (n + 1) + A145382 (n + 1)

end

end A159006.P3913076255590958606

namespace A159006

/-- `A265326(n+1)+A145382(n+1)` -/
def P3913076255590958606.Spec : Prop :=
  ∀ n, P3913076255590958606.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P16864572601414547793

`A036044(A072055(n+1))`
-/

namespace A159006.P16864572601414547793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A072055 (n + 1)).toNat

end

end A159006.P16864572601414547793

namespace A159006

/-- `A036044(A072055(n+1))` -/
def P16864572601414547793.Spec : Prop :=
  ∀ n, P16864572601414547793.a n = A159006 (n + 1)

end A159006

/-! ## A159006.P18445983640352817385

`A036044(eq[2, A053204(n)])`
-/

namespace A159006.P18445983640352817385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159006.P18445983640352817385

namespace A159006

/-- `A036044(eq[2, A053204(n)])` -/
def P18445983640352817385.Spec : Prop :=
  ∀ n, P18445983640352817385.a n = A159006 (n + 1)

end A159006

/-!
# A159007: Numbers k such that k == 32 or 41 (mod 73).

The programs for A159007, the canonical program `A159007.P17154249970505728623` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159007 has offset 1).

The definition of A159007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159007.P18024492757959970760

`(73+55*(-1)^n+146*n)/4`
-/

namespace A159007.P18024492757959970760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (73 + 55 * (-1) ^ n + (146 * n : ℤ) : ℚ) / 4

end

end A159007.P18024492757959970760

namespace A159007

/-- `(73+55*(-1)^n+146*n)/4` -/
def P18024492757959970760.Spec : Prop :=
  ∀ n, P18024492757959970760.a n = (A159007 (n + 1) : ℚ)

theorem P18024492757959970760.correct : P18024492757959970760.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A159007, Nat.add_sub_cancel, A159007.P18024492757959970760.a, A159007.P17154249970505728623.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A159007, Nat.add_sub_cancel, A159007.P18024492757959970760.a, A159007.P17154249970505728623.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159007

/-! ## A159007.P17154249970505728623

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=32, a(1)=41, a(2)=105`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159007

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P17154249970505728623.Spec : Prop :=
  ∀ n, P17154249970505728623.a n = A159007 (n + 1)

theorem P17154249970505728623.correct : P17154249970505728623.Spec := by
  intro n
  simp only [A159007, Nat.add_sub_cancel]

end A159007

/-! ## A159007.P3694079129358138978

`a(n-2)+73` with `a(0)=32, a(1)=41`
-/

namespace A159007.P3694079129358138978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [32, 41] fun n a =>
  a (n - 2) + 73

end

end A159007.P3694079129358138978

namespace A159007

/-- `a(n-2)+73` -/
def P3694079129358138978.Spec : Prop :=
  ∀ n, (P3694079129358138978.a n : ℤ) = A159007 (n + 1)

end A159007

/-! ## A159007.P11427851187303364008

`73*n-a(n-1)` with `a(0)=32`
-/

namespace A159007.P11427851187303364008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  (73 * n : ℤ) - a (n - 1)

end

end A159007.P11427851187303364008

namespace A159007

/-- `73*n-a(n-1)` -/
def P11427851187303364008.Spec : Prop :=
  ∀ n, P11427851187303364008.a n = A159007 (n + 1)

end A159007

/-! ## A159007.P543090624038702384

`∑[(A006530(a(n-1))²-1)²]` with `a(0)=32`
-/

namespace A159007.P543090624038702384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32] fun n f1 =>
  (A006530 (f1 (n - 1)).toNat ^ 2 - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159007.P543090624038702384

namespace A159007

/-- `∑[(A006530(a(n-1))²-1)²]` -/
def P543090624038702384.Spec : Prop :=
  ∀ n, P543090624038702384.a n = A159007 (n + 1)

end A159007

/-! ## A159007.P15809418795268758938

`∑[(A020639(a(n-1))²-1)²]` with `a(0)=32`
-/

namespace A159007.P15809418795268758938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32] fun n f1 =>
  (A020639 (f1 (n - 1)).toNat ^ 2 - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159007.P15809418795268758938

namespace A159007

/-- `∑[(A020639(a(n-1))²-1)²]` -/
def P15809418795268758938.Spec : Prop :=
  ∀ n, P15809418795268758938.a n = A159007 (n + 1)

end A159007

/-! ## A159007.P8993557372365624082

`A047221(A248474(n+1))-n`
-/

namespace A159007.P8993557372365624082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (A248474 (n + 1)).toNat - (n : ℤ)

end

end A159007.P8993557372365624082

namespace A159007

/-- `A047221(A248474(n+1))-n` -/
def P8993557372365624082.Spec : Prop :=
  ∀ n, P8993557372365624082.a n = A159007 (n + 1)

end A159007

/-! ## A159007.P5310931421449164240

`A047221(13*A109613(n)-1+gcd(3, A134067(n))+2*n)-n`
-/

namespace A159007.P5310931421449164240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (13 * A109613 n - 1 + (Int.gcd 3 (A134067 n) + 2 * n : ℤ)).toNat - (n : ℤ)

end

end A159007.P5310931421449164240

namespace A159007

/-- `A047221(13*A109613(n)-1+gcd(3, A134067(n))+2*n)-n` -/
def P5310931421449164240.Spec : Prop :=
  ∀ n, P5310931421449164240.a n = A159007 (n + 1)

end A159007

/-!
# A159008: Positive numbers k such that k^2 == 2 (mod 89).

The programs for A159008, the canonical program `A159008.P12723805894944972699` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159008 has offset 1).

The definition of A159008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159008.P15213017431877062499

`(89+11*(-1)^n+178*n)/4`
-/

namespace A159008.P15213017431877062499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (89 + 11 * (-1) ^ n + (178 * n : ℤ) : ℚ) / 4

end

end A159008.P15213017431877062499

namespace A159008

/-- `(89+11*(-1)^n+178*n)/4` -/
def P15213017431877062499.Spec : Prop :=
  ∀ n, P15213017431877062499.a n = (A159008 (n + 1) : ℚ)

theorem P15213017431877062499.correct : P15213017431877062499.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A159008, Nat.add_sub_cancel, A159008.P15213017431877062499.a, A159008.P12723805894944972699.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A159008, Nat.add_sub_cancel, A159008.P15213017431877062499.a, A159008.P12723805894944972699.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159008

/-! ## A159008.P12723805894944972699

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=25, a(1)=64, a(2)=114`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159008

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P12723805894944972699.Spec : Prop :=
  ∀ n, P12723805894944972699.a n = A159008 (n + 1)

theorem P12723805894944972699.correct : P12723805894944972699.Spec := by
  intro n
  simp only [A159008, Nat.add_sub_cancel]

end A159008

/-! ## A159008.P17588384456303423723

`a(n-2)+89` with `a(0)=25, a(1)=64`
-/

namespace A159008.P17588384456303423723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25, 64] fun n a =>
  a (n - 2) + 89

end

end A159008.P17588384456303423723

namespace A159008

/-- `a(n-2)+89` -/
def P17588384456303423723.Spec : Prop :=
  ∀ n, (P17588384456303423723.a n : ℤ) = A159008 (n + 1)

end A159008

/-! ## A159008.P138379903141872990

`∑[floor(a(n-2))]` with `a(0)=25, a(1)=39, a(2)=50`

`floor` is left out, it is the identity on integers.
-/

namespace A159008.P138379903141872990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [25, 39, 50] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159008.P138379903141872990

namespace A159008

/-- `∑[floor(a(n-2))]` -/
def P138379903141872990.Spec : Prop :=
  ∀ n, (P138379903141872990.a n : ℤ) = A159008 (n + 1)

end A159008

/-! ## A159008.P436846172185467241

`89*n-a(n-1)` with `a(0)=25`
-/

namespace A159008.P436846172185467241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25] fun n a =>
  (89 * n : ℤ) - a (n - 1)

end

end A159008.P436846172185467241

namespace A159008

/-- `89*n-a(n-1)` -/
def P436846172185467241.Spec : Prop :=
  ∀ n, P436846172185467241.a n = A159008 (n + 1)

end A159008

/-! ## A159008.P9730469006610885205

`A182323(n)-A168397(n+1)`
-/

namespace A159008.P9730469006610885205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182323 n - A168397 (n + 1)

end

end A159008.P9730469006610885205

namespace A159008

/-- `A182323(n)-A168397(n+1)` -/
def P9730469006610885205.Spec : Prop :=
  ∀ n, P9730469006610885205.a n = A159008 (n + 1)

end A159008

/-! ## A159008.P1084409401926685417

`A156797(n+1)+A047621(n+1)`
-/

namespace A159008.P1084409401926685417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156797 (n + 1) + A047621 (n + 1)

end

end A159008.P1084409401926685417

namespace A159008

/-- `A156797(n+1)+A047621(n+1)` -/
def P1084409401926685417.Spec : Prop :=
  ∀ n, P1084409401926685417.a n = A159008 (n + 1)

end A159008

/-! ## A159008.P7798643592908319769

`A175887(A017029(n))-(A017029(n)+n)`
-/

namespace A159008.P7798643592908319769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A017029 n).toNat - (A017029 n + (n : ℤ))

end

end A159008.P7798643592908319769

namespace A159008

/-- `A175887(A017029(n))-(A017029(n)+n)` -/
def P7798643592908319769.Spec : Prop :=
  ∀ n, P7798643592908319769.a n = A159008 (n + 1)

end A159008

/-! ## A159008.P8937746568925276014

`A112653(7*(n+1)-3)-(n+1)`
-/

namespace A159008.P8937746568925276014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (7 * (n + 1) - 3) - (n + 1 : ℤ)

end

end A159008.P8937746568925276014

namespace A159008

/-- `A112653(7*(n+1)-3)-(n+1)` -/
def P8937746568925276014.Spec : Prop :=
  ∀ n, P8937746568925276014.a n = A159008 (n + 1)

end A159008

/-!
# A159009: Numerator of the integral of x^n times the Cantor function, from 0 to 1.

The programs for A159009, there is no canonical definition to state claims against.
-/

/-! ## A159009.P11727791163855310222

`A308613(n+1)-A308612(n+1)`
-/

namespace A159009.P11727791163855310222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308613 (n + 1) - A308612 (n + 1)

end

end A159009.P11727791163855310222

/-!
# A159010: Denominator of the integral of x^n times the Cantor function, from 0 to 1.

The programs for A159010, there is no canonical definition to state claims against.
-/

/-! ## A159010.P6941465667000788832

`(n+1)*A308613(n+1)`
-/

namespace A159010.P6941465667000788832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308613 (n + 1)

end

end A159010.P6941465667000788832

/-! ## A159010.P13636147433749064744

`A308613(n+1)*A348553(n)`
-/

namespace A159010.P13636147433749064744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308613 (n + 1) * A348553 n

end

end A159010.P13636147433749064744

/-!
# A159012: Denominator of Bernoulli(n, -3/10).

The programs for A159012, there is no canonical definition to state claims against.
-/

/-! ## A159012.P1359683452842649728

`A158994(n)/A135517(n²)`
-/

namespace A159012.P1359683452842649728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158994 n : ℚ) / (A135517 (n ^ 2) : ℚ)

end

end A159012.P1359683452842649728

/-! ## A159012.P8258966550047061937

`A158996(n)/A135517(n²)²`
-/

namespace A159012.P8258966550047061937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158996 n : ℚ) / (A135517 (n ^ 2) ^ 2 : ℚ)

end

end A159012.P8258966550047061937

/-! ## A159012.P11410421025262983069

`A158994(n)/Δ[A133223(n+1)]`
-/

namespace A159012.P11410421025262983069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158994 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A159012.P11410421025262983069

/-! ## A159012.P11243600174150029755

`A158996(n)/Δ[A133223(n+1)]²`
-/

namespace A159012.P11243600174150029755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158996 n : ℚ) / ((f1 (n + 1) - f1 n) ^ 2 : ℚ)

end

end A159012.P11243600174150029755

/-! ## A159012.P8055705404972730000

`A158994(n)/A014963(A135517(n))`
-/

namespace A159012.P8055705404972730000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158994 n : ℚ) / (A014963 (A135517 n).toNat : ℚ)

end

end A159012.P8055705404972730000

/-! ## A159012.P13035355372496402418

`A158994(n)/A158996(n)*A158994(n)`
-/

namespace A159012.P13035355372496402418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158994 n : ℚ) / (A158996 n : ℚ) * (A158994 n : ℚ)

end

end A159012.P13035355372496402418

/-! ## A159012.P14553491477219618163

`A158994(n)/(A233583(n+1)-A267458(n))`
-/

namespace A159012.P14553491477219618163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158994 n : ℚ) / (A233583 (n + 1) - A267458 n : ℚ)

end

end A159012.P14553491477219618163

/-!
# A159014: Numerator of Hermite(n, 1/8).

The programs for A159014, there is no canonical definition to state claims against.
-/

/-! ## A159014.P7875337687439799512

`∏[1-32*(n-1)/a(n-1)]` with `a(0)=1`
-/

namespace A159014.P7875337687439799512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - (32 * ((n : ℤ) - 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159014.P7875337687439799512

/-!
# A159018: a(0)=5; a(n) = a(n-1) + floor(sqrt(a(n-1))), n > 0.

The programs for A159018, the canonical program `A159018.P12093085177448578157` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159018 has offset 0).

The definition of A159018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159018.P12093085177448578157`, by `A159018.P12093085177448578157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159018.P12093085177448578157

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159018

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P12093085177448578157.Spec : Prop :=
  ∀ n, (P12093085177448578157.a n : ℤ) = A159018 n

theorem P12093085177448578157.correct : P12093085177448578157.Spec := by
  intro n
  simp only [A159018]

end A159018

/-! ## A159018.P16688364592447520240

`floor(a(n-1)+root(a(n-1), 2))` with `a(0)=5`
-/

namespace A159018.P16688364592447520240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A159018.P16688364592447520240

namespace A159018

/-- `floor(a(n-1)+root(a(n-1), 2))` -/
def P16688364592447520240.Spec : Prop :=
  ∀ n, P16688364592447520240.a n = A159018 n

end A159018

/-! ## A159018.P3654205144480175734

`round(a(n-1)+sqrt(a(n-2)))` with `a(0)=5, a(1)=7`
-/

namespace A159018.P3654205144480175734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (a (n - 2) : ℝ))

end

end A159018.P3654205144480175734

namespace A159018

/-- `round(a(n-1)+sqrt(a(n-2)))` -/
def P3654205144480175734.Spec : Prop :=
  ∀ n, P3654205144480175734.a n = A159018 n

end A159018

/-! ## A159018.P9426211587854424352

`floor(a(n-1)+a(n-1)^(1/2))` with `a(0)=5`
-/

namespace A159018.P9426211587854424352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A159018.P9426211587854424352

namespace A159018

/-- `floor(a(n-1)+a(n-1)^(1/2))` -/
def P9426211587854424352.Spec : Prop :=
  ∀ n, P9426211587854424352.a n = A159018 n

end A159018

/-! ## A159018.P13742946079741502719

`floor(2*a(n-1)-(a(n-1)-sqrt(a(n-1))))` with `a(0)=5`
-/

namespace A159018.P13742946079741502719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) - ((a (n - 1) : ℝ) - Real.sqrt (a (n - 1) : ℝ))⌋

end

end A159018.P13742946079741502719

namespace A159018

/-- `floor(2*a(n-1)-(a(n-1)-sqrt(a(n-1))))` -/
def P13742946079741502719.Spec : Prop :=
  ∀ n, P13742946079741502719.a n = A159018 n

end A159018

/-! ## A159018.P7476114845838720591

`eq[1, A030101(A322832(n))-2]`
-/

namespace A159018.P7476114845838720591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A322832 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159018.P7476114845838720591

namespace A159018

/-- `eq[1, A030101(A322832(n))-2]` -/
def P7476114845838720591.Spec : Prop :=
  ∀ n, (P7476114845838720591.a n : ℤ) = A159018 n

end A159018

/-! ## A159018.P8933551103140017319

`A028392(a(n-1))` with `a(0)=5`
-/

namespace A159018.P8933551103140017319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A028392 (a (n - 1)).toNat

end

end A159018.P8933551103140017319

namespace A159018

/-- `A028392(a(n-1))` -/
def P8933551103140017319.Spec : Prop :=
  ∀ n, P8933551103140017319.a n = A159018 n

end A159018

/-! ## A159018.P7571808344284796421

`A078358(a(n-1)+1)-1` with `a(0)=5`
-/

namespace A159018.P7571808344284796421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A078358 (a (n - 1) + 1).toNat - 1

end

end A159018.P7571808344284796421

namespace A159018

/-- `A078358(a(n-1)+1)-1` -/
def P7571808344284796421.Spec : Prop :=
  ∀ n, P7571808344284796421.a n = A159018 n

end A159018

/-! ## A159018.P13605420868642307633

`A183570(a(n-1)-1)+1` with `a(0)=5`
-/

namespace A159018.P13605420868642307633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A183570 (a (n - 1) - 1).toNat + 1

end

end A159018.P13605420868642307633

namespace A159018

/-- `A183570(a(n-1)-1)+1` -/
def P13605420868642307633.Spec : Prop :=
  ∀ n, P13605420868642307633.a n = A159018 n

end A159018

/-! ## A159018.P17537681346471190256

`A183571(a(n-1)-2)+2` with `a(0)=5`
-/

namespace A159018.P17537681346471190256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A183571 (a (n - 1) - 2).toNat + 2

end

end A159018.P17537681346471190256

namespace A159018

/-- `A183571(a(n-1)-2)+2` -/
def P17537681346471190256.Spec : Prop :=
  ∀ n, P17537681346471190256.a n = A159018 n

end A159018

/-! ## A159018.P11691442212747464132

`A000196(a(n-1))+a(n-1)` with `a(0)=5`
-/

namespace A159018.P11691442212747464132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000196 (a (n - 1)).toNat + a (n - 1)

end

end A159018.P11691442212747464132

namespace A159018

/-- `A000196(a(n-1))+a(n-1)` -/
def P11691442212747464132.Spec : Prop :=
  ∀ n, P11691442212747464132.a n = A159018 n

end A159018

/-!
# A159020: a(0)=11; a(n) = a(n-1) + floor(sqrt(a(n-1))), n > 0.

The programs for A159020, the canonical program `A159020.P9533466727629536089` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159020 has offset 0).

The definition of A159020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159020.P9533466727629536089`, by `A159020.P9533466727629536089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159020.P9533466727629536089

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159020

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P9533466727629536089.Spec : Prop :=
  ∀ n, (P9533466727629536089.a n : ℤ) = A159020 n

theorem P9533466727629536089.correct : P9533466727629536089.Spec := by
  intro n
  simp only [A159020]

end A159020

/-! ## A159020.P16175532777839494398

`floor(a(n-1)+root(a(n-1), 2))` with `a(0)=11`
-/

namespace A159020.P16175532777839494398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A159020.P16175532777839494398

namespace A159020

/-- `floor(a(n-1)+root(a(n-1), 2))` -/
def P16175532777839494398.Spec : Prop :=
  ∀ n, P16175532777839494398.a n = A159020 n

end A159020

/-! ## A159020.P9032687151419225522

`floor(a(n-1)+a(n-1)^(1/2))` with `a(0)=11`
-/

namespace A159020.P9032687151419225522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A159020.P9032687151419225522

namespace A159020

/-- `floor(a(n-1)+a(n-1)^(1/2))` -/
def P9032687151419225522.Spec : Prop :=
  ∀ n, P9032687151419225522.a n = A159020 n

end A159020

/-! ## A159020.P2054723853326680547

`A028392(a(n-1))` with `a(0)=11`
-/

namespace A159020.P2054723853326680547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A028392 (a (n - 1)).toNat

end

end A159020.P2054723853326680547

namespace A159020

/-- `A028392(a(n-1))` -/
def P2054723853326680547.Spec : Prop :=
  ∀ n, P2054723853326680547.a n = A159020 n

end A159020

/-! ## A159020.P5909757332032075015

`A078358(a(n-1)+1)-1` with `a(0)=11`
-/

namespace A159020.P5909757332032075015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A078358 (a (n - 1) + 1).toNat - 1

end

end A159020.P5909757332032075015

namespace A159020

/-- `A078358(a(n-1)+1)-1` -/
def P5909757332032075015.Spec : Prop :=
  ∀ n, P5909757332032075015.a n = A159020 n

end A159020

/-!
# A159021: a(0)=19; a(n) = a(n-1) + floor(sqrt(a(n-1))), n > 0.

The programs for A159021, the canonical program `A159021.P5865072993823483106` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159021 has offset 0).

The definition of A159021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159021.P5865072993823483106`, by `A159021.P5865072993823483106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159021.P5865072993823483106

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=19`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159021

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P5865072993823483106.Spec : Prop :=
  ∀ n, (P5865072993823483106.a n : ℤ) = A159021 n

theorem P5865072993823483106.correct : P5865072993823483106.Spec := by
  intro n
  simp only [A159021]

end A159021

/-! ## A159021.P11262119192495417374

`floor(a(n-1)+root(a(n-1), 2))` with `a(0)=19`
-/

namespace A159021.P11262119192495417374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A159021.P11262119192495417374

namespace A159021

/-- `floor(a(n-1)+root(a(n-1), 2))` -/
def P11262119192495417374.Spec : Prop :=
  ∀ n, P11262119192495417374.a n = A159021 n

end A159021

/-! ## A159021.P6307978035893893598

`round(a(n-1)+sqrt(a(n-2)))` with `a(0)=19, a(1)=23`
-/

namespace A159021.P6307978035893893598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19, 23] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (a (n - 2) : ℝ))

end

end A159021.P6307978035893893598

namespace A159021

/-- `round(a(n-1)+sqrt(a(n-2)))` -/
def P6307978035893893598.Spec : Prop :=
  ∀ n, P6307978035893893598.a n = A159021 n

end A159021

/-! ## A159021.P15712648106708699090

`floor(a(n-1)+a(n-1)^(1/2))` with `a(0)=19`
-/

namespace A159021.P15712648106708699090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A159021.P15712648106708699090

namespace A159021

/-- `floor(a(n-1)+a(n-1)^(1/2))` -/
def P15712648106708699090.Spec : Prop :=
  ∀ n, P15712648106708699090.a n = A159021 n

end A159021

/-! ## A159021.P10160419572676886764

`A000194(a(n-2))+a(n-1)` with `a(0)=19, a(1)=23`
-/

namespace A159021.P10160419572676886764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19, 23] fun n a =>
  A000194 (a (n - 2)).toNat + a (n - 1)

end

end A159021.P10160419572676886764

namespace A159021

/-- `A000194(a(n-2))+a(n-1)` -/
def P10160419572676886764.Spec : Prop :=
  ∀ n, P10160419572676886764.a n = A159021 n

end A159021

/-! ## A159021.P17358958907647853671

`eq[4, A003602(A322832(n+1))]+1`
-/

namespace A159021.P17358958907647853671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A322832 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A159021.P17358958907647853671

namespace A159021

/-- `eq[4, A003602(A322832(n+1))]+1` -/
def P17358958907647853671.Spec : Prop :=
  ∀ n, (P17358958907647853671.a n : ℤ) = A159021 n

end A159021

/-! ## A159021.P3804772286275403699

`A028392(a(n-1))` with `a(0)=19`
-/

namespace A159021.P3804772286275403699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  A028392 (a (n - 1)).toNat

end

end A159021.P3804772286275403699

namespace A159021

/-- `A028392(a(n-1))` -/
def P3804772286275403699.Spec : Prop :=
  ∀ n, P3804772286275403699.a n = A159021 n

end A159021

/-! ## A159021.P403428242623228691

`A078358(a(n-1)+1)-1` with `a(0)=19`
-/

namespace A159021.P403428242623228691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  A078358 (a (n - 1) + 1).toNat - 1

end

end A159021.P403428242623228691

namespace A159021

/-- `A078358(a(n-1)+1)-1` -/
def P403428242623228691.Spec : Prop :=
  ∀ n, P403428242623228691.a n = A159021 n

end A159021

/-! ## A159021.P13810945445917248728

`A000196(a(n-1))+a(n-1)` with `a(0)=19`
-/

namespace A159021.P13810945445917248728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  A000196 (a (n - 1)).toNat + a (n - 1)

end

end A159021.P13810945445917248728

namespace A159021

/-- `A000196(a(n-1))+a(n-1)` -/
def P13810945445917248728.Spec : Prop :=
  ∀ n, P13810945445917248728.a n = A159021 n

end A159021

/-! ## A159021.P3028052803996526400

`a(n-1)+floor(A000267(a(n-1))/2)` with `a(0)=19`
-/

namespace A159021.P3028052803996526400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  a (n - 1) + ⌊(A000267 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A159021.P3028052803996526400

namespace A159021

/-- `a(n-1)+floor(A000267(a(n-1))/2)` -/
def P3028052803996526400.Spec : Prop :=
  ∀ n, P3028052803996526400.a n = A159021 n

end A159021

/-!
# A159022: a(0)=29; a(n) = a(n-1) + floor(sqrt(a(n-1))), n > 0.

The programs for A159022, the canonical program `A159022.P8411175497177000025` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159022 has offset 0).

The definition of A159022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159022.P8411175497177000025`, by `A159022.P8411175497177000025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159022.P8411175497177000025

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=29`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159022

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P8411175497177000025.Spec : Prop :=
  ∀ n, (P8411175497177000025.a n : ℤ) = A159022 n

theorem P8411175497177000025.correct : P8411175497177000025.Spec := by
  intro n
  simp only [A159022]

end A159022

/-! ## A159022.P3562083995929479148

`floor(a(n-1)+a(n-1)^(1/2))` with `a(0)=29`
-/

namespace A159022.P3562083995929479148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A159022.P3562083995929479148

namespace A159022

/-- `floor(a(n-1)+a(n-1)^(1/2))` -/
def P3562083995929479148.Spec : Prop :=
  ∀ n, P3562083995929479148.a n = A159022 n

end A159022

/-! ## A159022.P17410006845570530076

`record[A000194(a(n-2))+a(n-1)]` with `a(0)=29, a(1)=24`
-/

namespace A159022.P17410006845570530076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [29, 24] fun n f1 =>
  A000194 (f1 (n - 2)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159022.P17410006845570530076

namespace A159022

/-- `record[A000194(a(n-2))+a(n-1)]` -/
def P17410006845570530076.Spec : Prop :=
  ∀ n, P17410006845570530076.a n = A159022 n

end A159022

/-! ## A159022.P886742689277042906

`eq[6, A264596(A322832(n))]`
-/

namespace A159022.P886742689277042906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 (A322832 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159022.P886742689277042906

namespace A159022

/-- `eq[6, A264596(A322832(n))]` -/
def P886742689277042906.Spec : Prop :=
  ∀ n, (P886742689277042906.a n : ℤ) = A159022 n

end A159022

/-! ## A159022.P7387514078085866625

`eq[5, A003602(A322832(n+1))]+1`
-/

namespace A159022.P7387514078085866625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A322832 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A159022.P7387514078085866625

namespace A159022

/-- `eq[5, A003602(A322832(n+1))]+1` -/
def P7387514078085866625.Spec : Prop :=
  ∀ n, (P7387514078085866625.a n : ℤ) = A159022 n

end A159022

/-! ## A159022.P17675718145917658868

`A028392(a(n-1))` with `a(0)=29`
-/

namespace A159022.P17675718145917658868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A028392 (a (n - 1)).toNat

end

end A159022.P17675718145917658868

namespace A159022

/-- `A028392(a(n-1))` -/
def P17675718145917658868.Spec : Prop :=
  ∀ n, P17675718145917658868.a n = A159022 n

end A159022

/-! ## A159022.P16123157146943573051

`A000196(a(n-1))+a(n-1)` with `a(0)=29`
-/

namespace A159022.P16123157146943573051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A000196 (a (n - 1)).toNat + a (n - 1)

end

end A159022.P16123157146943573051

namespace A159022

/-- `A000196(a(n-1))+a(n-1)` -/
def P16123157146943573051.Spec : Prop :=
  ∀ n, P16123157146943573051.a n = A159022 n

end A159022

/-!
# A159023: a(0)=41; a(n) = a(n-1) + floor(sqrt(a(n-1))), n > 0.

The programs for A159023, the canonical program `A159023.P6438808661219673792` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159023 has offset 0).

The definition of A159023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159023.P6438808661219673792`, by `A159023.P6438808661219673792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159023.P6438808661219673792

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=41`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159023

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P6438808661219673792.Spec : Prop :=
  ∀ n, (P6438808661219673792.a n : ℤ) = A159023 n

theorem P6438808661219673792.correct : P6438808661219673792.Spec := by
  intro n
  simp only [A159023]

end A159023

/-! ## A159023.P17949934767682275776

`floor(a(n-1)+root(a(n-1), 2))` with `a(0)=41`
-/

namespace A159023.P17949934767682275776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [41] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A159023.P17949934767682275776

namespace A159023

/-- `floor(a(n-1)+root(a(n-1), 2))` -/
def P17949934767682275776.Spec : Prop :=
  ∀ n, P17949934767682275776.a n = A159023 n

end A159023

/-! ## A159023.P5318196452004878320

`floor(a(n-1)+a(n-1)^(1/2))` with `a(0)=41`
-/

namespace A159023.P5318196452004878320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [41] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A159023.P5318196452004878320

namespace A159023

/-- `floor(a(n-1)+a(n-1)^(1/2))` -/
def P5318196452004878320.Spec : Prop :=
  ∀ n, P5318196452004878320.a n = A159023 n

end A159023

/-! ## A159023.P13955398058059603979

`A028392(a(n-1))` with `a(0)=41`
-/

namespace A159023.P13955398058059603979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [41] fun n a =>
  A028392 (a (n - 1)).toNat

end

end A159023.P13955398058059603979

namespace A159023

/-- `A028392(a(n-1))` -/
def P13955398058059603979.Spec : Prop :=
  ∀ n, P13955398058059603979.a n = A159023 n

end A159023

/-! ## A159023.P15542372177309739773

`A078358(a(n-1)+1)-1` with `a(0)=41`
-/

namespace A159023.P15542372177309739773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [41] fun n a =>
  A078358 (a (n - 1) + 1).toNat - 1

end

end A159023.P15542372177309739773

namespace A159023

/-- `A078358(a(n-1)+1)-1` -/
def P15542372177309739773.Spec : Prop :=
  ∀ n, P15542372177309739773.a n = A159023 n

end A159023

/-! ## A159023.P6006505230911136889

`A183570(a(n-1)-1)+1` with `a(0)=41`
-/

namespace A159023.P6006505230911136889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [41] fun n a =>
  A183570 (a (n - 1) - 1).toNat + 1

end

end A159023.P6006505230911136889

namespace A159023

/-- `A183570(a(n-1)-1)+1` -/
def P6006505230911136889.Spec : Prop :=
  ∀ n, P6006505230911136889.a n = A159023 n

end A159023

/-! ## A159023.P296542480448352608

`A000196(a(n-1))+a(n-1)` with `a(0)=41`
-/

namespace A159023.P296542480448352608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [41] fun n a =>
  A000196 (a (n - 1)).toNat + a (n - 1)

end

end A159023.P296542480448352608

namespace A159023

/-- `A000196(a(n-1))+a(n-1)` -/
def P296542480448352608.Spec : Prop :=
  ∀ n, P296542480448352608.a n = A159023 n

end A159023

/-!
# A159024: a(0)=55; a(n) = a(n-1) + floor(sqrt(a(n-1))), n > 0.

The programs for A159024, the canonical program `A159024.P4488931431897746504` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159024 has offset 0).

The definition of A159024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159024.P4488931431897746504`, by `A159024.P4488931431897746504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159024.P4488931431897746504

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=55`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159024

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P4488931431897746504.Spec : Prop :=
  ∀ n, (P4488931431897746504.a n : ℤ) = A159024 n

theorem P4488931431897746504.correct : P4488931431897746504.Spec := by
  intro n
  simp only [A159024]

end A159024

/-! ## A159024.P4481715681661180708

`floor(a(n-1)+root(a(n-1), 2))` with `a(0)=55`
-/

namespace A159024.P4481715681661180708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [55] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A159024.P4481715681661180708

namespace A159024

/-- `floor(a(n-1)+root(a(n-1), 2))` -/
def P4481715681661180708.Spec : Prop :=
  ∀ n, P4481715681661180708.a n = A159024 n

end A159024

/-! ## A159024.P3185700947873487083

`floor(a(n-1)+a(n-1)^(1/2))` with `a(0)=55`
-/

namespace A159024.P3185700947873487083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [55] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A159024.P3185700947873487083

namespace A159024

/-- `floor(a(n-1)+a(n-1)^(1/2))` -/
def P3185700947873487083.Spec : Prop :=
  ∀ n, P3185700947873487083.a n = A159024 n

end A159024

/-! ## A159024.P1856874210905136773

`A028392(a(n-1))` with `a(0)=55`
-/

namespace A159024.P1856874210905136773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [55] fun n a =>
  A028392 (a (n - 1)).toNat

end

end A159024.P1856874210905136773

namespace A159024

/-- `A028392(a(n-1))` -/
def P1856874210905136773.Spec : Prop :=
  ∀ n, P1856874210905136773.a n = A159024 n

end A159024

/-! ## A159024.P12159865825416706121

`A183570(a(n-1)-1)+1` with `a(0)=55`
-/

namespace A159024.P12159865825416706121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [55] fun n a =>
  A183570 (a (n - 1) - 1).toNat + 1

end

end A159024.P12159865825416706121

namespace A159024

/-- `A183570(a(n-1)-1)+1` -/
def P12159865825416706121.Spec : Prop :=
  ∀ n, P12159865825416706121.a n = A159024 n

end A159024

/-! ## A159024.P6265097035155159536

`A183571(a(n-1)-2)+2` with `a(0)=55`
-/

namespace A159024.P6265097035155159536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [55] fun n a =>
  A183571 (a (n - 1) - 2).toNat + 2

end

end A159024.P6265097035155159536

namespace A159024

/-- `A183571(a(n-1)-2)+2` -/
def P6265097035155159536.Spec : Prop :=
  ∀ n, P6265097035155159536.a n = A159024 n

end A159024

/-! ## A159024.P3387546862695377814

`A000196(a(n-1))+a(n-1)` with `a(0)=55`
-/

namespace A159024.P3387546862695377814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [55] fun n a =>
  A000196 (a (n - 1)).toNat + a (n - 1)

end

end A159024.P3387546862695377814

namespace A159024

/-- `A000196(a(n-1))+a(n-1)` -/
def P3387546862695377814.Spec : Prop :=
  ∀ n, P3387546862695377814.a n = A159024 n

end A159024

/-! ## A159024.P4303433482311076899

`a(n-1)+floor(A000267(a(n-1))/2)` with `a(0)=55`
-/

namespace A159024.P4303433482311076899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [55] fun n a =>
  a (n - 1) + ⌊(A000267 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A159024.P4303433482311076899

namespace A159024

/-- `a(n-1)+floor(A000267(a(n-1))/2)` -/
def P4303433482311076899.Spec : Prop :=
  ∀ n, P4303433482311076899.a n = A159024 n

end A159024

/-!
# A159025: a(0)=71; a(n) = a(n-1) + floor(sqrt(a(n-1))), n > 0.

The programs for A159025, the canonical program `A159025.P12298648085687186090` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159025 has offset 0).

The definition of A159025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159025.P12298648085687186090`, by `A159025.P12298648085687186090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159025.P12298648085687186090

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=71`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159025

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P12298648085687186090.Spec : Prop :=
  ∀ n, (P12298648085687186090.a n : ℤ) = A159025 n

theorem P12298648085687186090.correct : P12298648085687186090.Spec := by
  intro n
  simp only [A159025]

end A159025

/-! ## A159025.P6915452125190204849

`floor(a(n-1)+a(n-1)^(1/2))` with `a(0)=71`
-/

namespace A159025.P6915452125190204849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [71] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A159025.P6915452125190204849

namespace A159025

/-- `floor(a(n-1)+a(n-1)^(1/2))` -/
def P6915452125190204849.Spec : Prop :=
  ∀ n, P6915452125190204849.a n = A159025 n

end A159025

/-! ## A159025.P5272903192944809899

`eq[8, A003602(A322832(n+11))]+11`
-/

namespace A159025.P5272903192944809899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A322832 (n + 11)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 11

end

end A159025.P5272903192944809899

namespace A159025

/-- `eq[8, A003602(A322832(n+11))]+11` -/
def P5272903192944809899.Spec : Prop :=
  ∀ n, (P5272903192944809899.a n : ℤ) = A159025 n

end A159025

/-! ## A159025.P16272402502440150963

`A028392(a(n-1))` with `a(0)=71`
-/

namespace A159025.P16272402502440150963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [71] fun n a =>
  A028392 (a (n - 1)).toNat

end

end A159025.P16272402502440150963

namespace A159025

/-- `A028392(a(n-1))` -/
def P16272402502440150963.Spec : Prop :=
  ∀ n, P16272402502440150963.a n = A159025 n

end A159025

/-! ## A159025.P2291142712511836290

`A078358(a(n-1)+1)-1` with `a(0)=71`
-/

namespace A159025.P2291142712511836290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [71] fun n a =>
  A078358 (a (n - 1) + 1).toNat - 1

end

end A159025.P2291142712511836290

namespace A159025

/-- `A078358(a(n-1)+1)-1` -/
def P2291142712511836290.Spec : Prop :=
  ∀ n, P2291142712511836290.a n = A159025 n

end A159025

/-! ## A159025.P5337352287224744949

`A183570(a(n-1)-1)+1` with `a(0)=71`
-/

namespace A159025.P5337352287224744949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [71] fun n a =>
  A183570 (a (n - 1) - 1).toNat + 1

end

end A159025.P5337352287224744949

namespace A159025

/-- `A183570(a(n-1)-1)+1` -/
def P5337352287224744949.Spec : Prop :=
  ∀ n, P5337352287224744949.a n = A159025 n

end A159025

/-! ## A159025.P14863114622096278752

`A183571(a(n-1)-2)+2` with `a(0)=71`
-/

namespace A159025.P14863114622096278752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [71] fun n a =>
  A183571 (a (n - 1) - 2).toNat + 2

end

end A159025.P14863114622096278752

namespace A159025

/-- `A183571(a(n-1)-2)+2` -/
def P14863114622096278752.Spec : Prop :=
  ∀ n, P14863114622096278752.a n = A159025 n

end A159025

/-! ## A159025.P5285162700612673802

`A000196(a(n-1))+a(n-1)` with `a(0)=71`
-/

namespace A159025.P5285162700612673802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [71] fun n a =>
  A000196 (a (n - 1)).toNat + a (n - 1)

end

end A159025.P5285162700612673802

namespace A159025

/-- `A000196(a(n-1))+a(n-1)` -/
def P5285162700612673802.Spec : Prop :=
  ∀ n, P5285162700612673802.a n = A159025 n

end A159025

/-! ## A159025.P16958312359763994401

`a(n-1)+floor(A000267(a(n-1))/2)` with `a(0)=71`
-/

namespace A159025.P16958312359763994401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [71] fun n a =>
  a (n - 1) + ⌊(A000267 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A159025.P16958312359763994401

namespace A159025

/-- `a(n-1)+floor(A000267(a(n-1))/2)` -/
def P16958312359763994401.Spec : Prop :=
  ∀ n, P16958312359763994401.a n = A159025 n

end A159025

/-!
# A159026: a(0)=89; a(n) = a(n-1) + floor(sqrt(a(n-1))), n > 0.

The programs for A159026, the canonical program `A159026.P1340413256385669556` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159026 has offset 0).

The definition of A159026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159026.P1340413256385669556`, by `A159026.P1340413256385669556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159026.P1340413256385669556

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=89`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159026

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P1340413256385669556.Spec : Prop :=
  ∀ n, (P1340413256385669556.a n : ℤ) = A159026 n

theorem P1340413256385669556.correct : P1340413256385669556.Spec := by
  intro n
  simp only [A159026]

end A159026

/-! ## A159026.P4844502912283312842

`floor(a(n-1)+a(n-1)^(1/2))` with `a(0)=89`
-/

namespace A159026.P4844502912283312842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A159026.P4844502912283312842

namespace A159026

/-- `floor(a(n-1)+a(n-1)^(1/2))` -/
def P4844502912283312842.Spec : Prop :=
  ∀ n, P4844502912283312842.a n = A159026 n

end A159026

/-! ## A159026.P17449608378147034290

`A028392(a(n-1))` with `a(0)=89`
-/

namespace A159026.P17449608378147034290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A028392 (a (n - 1)).toNat

end

end A159026.P17449608378147034290

namespace A159026

/-- `A028392(a(n-1))` -/
def P17449608378147034290.Spec : Prop :=
  ∀ n, P17449608378147034290.a n = A159026 n

end A159026

/-! ## A159026.P8267542269957745210

`A078358(a(n-1)+1)-1` with `a(0)=89`
-/

namespace A159026.P8267542269957745210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A078358 (a (n - 1) + 1).toNat - 1

end

end A159026.P8267542269957745210

namespace A159026

/-- `A078358(a(n-1)+1)-1` -/
def P8267542269957745210.Spec : Prop :=
  ∀ n, P8267542269957745210.a n = A159026 n

end A159026

/-! ## A159026.P439374162058609528

`A183570(a(n-1)-1)+1` with `a(0)=89`
-/

namespace A159026.P439374162058609528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A183570 (a (n - 1) - 1).toNat + 1

end

end A159026.P439374162058609528

namespace A159026

/-- `A183570(a(n-1)-1)+1` -/
def P439374162058609528.Spec : Prop :=
  ∀ n, P439374162058609528.a n = A159026 n

end A159026

/-! ## A159026.P13757882519993612952

`A183571(a(n-1)-2)+2` with `a(0)=89`
-/

namespace A159026.P13757882519993612952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A183571 (a (n - 1) - 2).toNat + 2

end

end A159026.P13757882519993612952

namespace A159026

/-- `A183571(a(n-1)-2)+2` -/
def P13757882519993612952.Spec : Prop :=
  ∀ n, P13757882519993612952.a n = A159026 n

end A159026

/-! ## A159026.P2261434285041378528

`A000196(a(n-1))+a(n-1)` with `a(0)=89`
-/

namespace A159026.P2261434285041378528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A000196 (a (n - 1)).toNat + a (n - 1)

end

end A159026.P2261434285041378528

namespace A159026

/-- `A000196(a(n-1))+a(n-1)` -/
def P2261434285041378528.Spec : Prop :=
  ∀ n, P2261434285041378528.a n = A159026 n

end A159026

/-! ## A159026.P7838543327343604785

`a(n-1)+floor(A000267(a(n-1))/2)` with `a(0)=89`
-/

namespace A159026.P7838543327343604785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  a (n - 1) + ⌊(A000267 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A159026.P7838543327343604785

namespace A159026

/-- `a(n-1)+floor(A000267(a(n-1))/2)` -/
def P7838543327343604785.Spec : Prop :=
  ∀ n, P7838543327343604785.a n = A159026 n

end A159026

/-!
# A159027: a(0)=109; a(n) = a(n-1) + floor(sqrt(a(n-1))), n > 0.

The programs for A159027, the canonical program `A159027.P2116360374605114190` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159027 has offset 0).

The definition of A159027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A159027.P2116360374605114190`, by `A159027.P2116360374605114190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159027.P2116360374605114190

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=109`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159027

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P2116360374605114190.Spec : Prop :=
  ∀ n, (P2116360374605114190.a n : ℤ) = A159027 n

theorem P2116360374605114190.correct : P2116360374605114190.Spec := by
  intro n
  simp only [A159027]

end A159027

/-! ## A159027.P6151905957191143270

`eq[19, A322832(n)]`
-/

namespace A159027.P6151905957191143270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159027.P6151905957191143270

namespace A159027

/-- `eq[19, A322832(n)]` -/
def P6151905957191143270.Spec : Prop :=
  ∀ n, (P6151905957191143270.a n : ℤ) = A159027 n

end A159027

/-! ## A159027.P2751103326392854109

`eq[20, A144328(A274428(n+1))]`
-/

namespace A159027.P2751103326392854109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A274428 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159027.P2751103326392854109

namespace A159027

/-- `eq[20, A144328(A274428(n+1))]` -/
def P2751103326392854109.Spec : Prop :=
  ∀ n, (P2751103326392854109.a n : ℤ) = A159027 n

end A159027

/-! ## A159027.P5242249230694276403

`eq[A040090(n), A138099(n+1)]`
-/

namespace A159027.P5242249230694276403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159027.P5242249230694276403

namespace A159027

/-- `eq[A040090(n), A138099(n+1)]` -/
def P5242249230694276403.Spec : Prop :=
  ∀ n, (P5242249230694276403.a n : ℤ) = A159027 n

end A159027

/-! ## A159027.P6796485533938466100

`eq[A168100(n), A336751(n+1)]`
-/

namespace A159027.P6796485533938466100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159027.P6796485533938466100

namespace A159027

/-- `eq[A168100(n), A336751(n+1)]` -/
def P6796485533938466100.Spec : Prop :=
  ∀ n, (P6796485533938466100.a n : ℤ) = A159027 n

end A159027

/-!
# A159031: Primes of the form "1 [0]_n 7" - with zeros between 1 and 7.

The programs for A159031, there is no canonical definition to state claims against.
-/

/-! ## A159031.P11206442298148523248

`A000533(A088274(n+1))+6`
-/

namespace A159031.P11206442298148523248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (A088274 (n + 1)).toNat + 6

end

end A159031.P11206442298148523248

/-!
# A159032: Positions of partition numbers in the EKG sequence.

The programs for A159032, there is no canonical definition to state claims against.
-/

/-! ## A159032.P12302112123914908555

`∑{d}[Δ[A000070(n)], A304526(#)]`
-/

namespace A159032.P12302112123914908555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A159032.P12302112123914908555

/-! ## A159032.P3299915849174576152

`∑{d}[record[A035363(n)], A304526(#)]`
-/

namespace A159032.P3299915849174576152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A159032.P3299915849174576152

/-! ## A159032.P15810705511578813682

`∑{d}[record[A035444(n)], A304526(#)]`
-/

namespace A159032.P15810705511578813682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A159032.P15810705511578813682

/-! ## A159032.P5077604085958941942

`∑{d}[record[A114099(n)], A304526(#)]`
-/

namespace A159032.P5077604085958941942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A159032.P5077604085958941942

/-! ## A159032.P17532056337459171267

`∑{d}[A000041(n+1), A304526(#)]`
-/

namespace A159032.P17532056337459171267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A159032.P17532056337459171267

/-!
# A159035: a(0)=1=a(1), a(2)=2, a(3)=5; thereafter a(n+3)=4*a(n+2)-4*a(n+1)+2*a(n) for n>=1.

The programs for A159035, the canonical program `A159035.P16587480534937130279` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159035 has offset 0).

The definition of A159035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159035.P16353420442964309270

`ogf((1-3x+2x^2-x^3)/(1-4x+4x^2-2x^3))`
-/

namespace A159035.P16353420442964309270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2, -1] [1, -4, 4, -2] n

end

end A159035.P16353420442964309270

namespace A159035

/-- `ogf((1-3x+2x^2-x^3)/(1-4x+4x^2-2x^3))` -/
def P16353420442964309270.Spec : Prop :=
  ∀ n, P16353420442964309270.a n = A159035 n

end A159035

/-! ## A159035.P16587480534937130279

`A117189((n-1)%(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159035

/-- `A117189((n-1)%(n+1))` -/
def P16587480534937130279.Spec : Prop :=
  ∀ n, P16587480534937130279.a n = A159035 n

theorem P16587480534937130279.correct : P16587480534937130279.Spec := by
  intro n
  simp only [A159035]

end A159035

/-! ## A159035.P14423777637611192629

`A117189(comp[2*(n+1)]-n)`
-/

namespace A159035.P14423777637611192629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A159035.P14423777637611192629

namespace A159035

/-- `A117189(comp[2*(n+1)]-n)` -/
def P14423777637611192629.Spec : Prop :=
  ∀ n, P14423777637611192629.a n = A159035 n

end A159035

/-! ## A159035.P5494098423768803054

`A291000(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A159035.P5494098423768803054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A291000 (n - 2) + a (n - 1)

end

end A159035.P5494098423768803054

namespace A159035

/-- `A291000(n-2)+a(n-1)` -/
def P5494098423768803054.Spec : Prop :=
  ∀ n, P5494098423768803054.a n = A159035 n

end A159035

/-! ## A159035.P7467613364795212849

`ceil(A099216(n)/2)`
-/

namespace A159035.P7467613364795212849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099216 n : ℚ) / 2⌉

end

end A159035.P7467613364795212849

namespace A159035

/-- `ceil(A099216(n)/2)` -/
def P7467613364795212849.Spec : Prop :=
  ∀ n, P7467613364795212849.a n = A159035 n

end A159035

/-! ## A159035.P1664892074081322686

`∑[round(A103685(n)/2)]+1`
-/

namespace A159035.P1664892074081322686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A103685 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A159035.P1664892074081322686

namespace A159035

/-- `∑[round(A103685(n)/2)]+1` -/
def P1664892074081322686.Spec : Prop :=
  ∀ n, P1664892074081322686.a n = A159035 n

end A159035

/-! ## A159035.P16135611836588409568

`A099216(A028310(n))/2`
-/

namespace A159035.P16135611836588409568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099216 (A028310 n).toNat : ℚ) / 2

end

end A159035.P16135611836588409568

namespace A159035

/-- `A099216(A028310(n))/2` -/
def P16135611836588409568.Spec : Prop :=
  ∀ n, P16135611836588409568.a n = (A159035 n : ℚ)

end A159035

/-! ## A159035.P56927887694944392

`A099216(n)/A036453(n+1)`
-/

namespace A159035.P56927887694944392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099216 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A159035.P56927887694944392

namespace A159035

/-- `A099216(n)/A036453(n+1)` -/
def P56927887694944392.Spec : Prop :=
  ∀ n, P56927887694944392.a n = (A159035 n : ℚ)

end A159035

/-! ## A159035.P7534133587688833476

`A115390(n)+A117189(n)-A159036(n)`
-/

namespace A159035.P7534133587688833476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n + (A117189 n - A159036 n)

end

end A159035.P7534133587688833476

namespace A159035

/-- `A115390(n)+A117189(n)-A159036(n)` -/
def P7534133587688833476.Spec : Prop :=
  ∀ n, P7534133587688833476.a n = A159035 n

end A159035

/-! ## A159035.P6413512935153865906

`A078484(n+1)-A159036(n)`
-/

namespace A159035.P6413512935153865906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (n + 1) - A159036 n

end

end A159035.P6413512935153865906

namespace A159035

/-- `A078484(n+1)-A159036(n)` -/
def P6413512935153865906.Spec : Prop :=
  ∀ n, P6413512935153865906.a n = A159035 n

end A159035

/-!
# A159036: a(0)=0, a(1)=1, a(2)=4, a(3)=13; thereafter a(n+3)=4*a(n+2)-4*a(n+1)+2*a(n) for n>=1.

The programs for A159036, the canonical program `A159036.P16671267747354040259` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159036 has offset 0).

The definition of A159036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159036.P18204303824569346273

`ogf((x+x^3)/(1-4x+4x^2-2x^3))`
-/

namespace A159036.P18204303824569346273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -4, 4, -2] n

end

end A159036.P18204303824569346273

namespace A159036

/-- `ogf((x+x^3)/(1-4x+4x^2-2x^3))` -/
def P18204303824569346273.Spec : Prop :=
  ∀ n, P18204303824569346273.a n = A159036 n

end A159036

/-! ## A159036.P16671267747354040259

`A115390(n)+Δ[A159035(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A159036

/-- `A115390(n)+Δ[A159035(n)]` -/
def P16671267747354040259.Spec : Prop :=
  ∀ n, P16671267747354040259.a n = A159036 n

theorem P16671267747354040259.correct : P16671267747354040259.Spec := by
  intro n
  simp only [A159036]

end A159036

/-! ## A159036.P16038515748672162553

`A115390(n)+A117189(n)-A159035(n)`
-/

namespace A159036.P16038515748672162553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n + (A117189 n - A159035 n)

end

end A159036.P16038515748672162553

namespace A159036

/-- `A115390(n)+A117189(n)-A159035(n)` -/
def P16038515748672162553.Spec : Prop :=
  ∀ n, P16038515748672162553.a n = A159036 n

end A159036

/-! ## A159036.P14247122305997127182

`A159035(n+1)+A115390(n)-A159035(n)`
-/

namespace A159036.P14247122305997127182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 1) + (A115390 n - A159035 n)

end

end A159036.P14247122305997127182

namespace A159036

/-- `A159035(n+1)+A115390(n)-A159035(n)` -/
def P14247122305997127182.Spec : Prop :=
  ∀ n, P14247122305997127182.a n = A159036 n

theorem P14247122305997127182.correct : P14247122305997127182.Spec := by
  intro n
  simp only [A159036, Nat.add_sub_cancel, A159036.P14247122305997127182.a, A159036.P16671267747354040259.f1, A159036.P16671267747354040259.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A159036

/-! ## A159036.P15151669400189715981

`Δ[A099216(n)]-A159035(n)`
-/

namespace A159036.P15151669400189715981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A159035 n

end

end A159036.P15151669400189715981

namespace A159036

/-- `Δ[A099216(n)]-A159035(n)` -/
def P15151669400189715981.Spec : Prop :=
  ∀ n, P15151669400189715981.a n = A159036 n

end A159036

/-! ## A159036.P7171724562801676588

`A078484(n+1)-A159035(n)`
-/

namespace A159036.P7171724562801676588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (n + 1) - A159035 n

end

end A159036.P7171724562801676588

namespace A159036

/-- `A078484(n+1)-A159035(n)` -/
def P7171724562801676588.Spec : Prop :=
  ∀ n, P7171724562801676588.a n = A159036 n

end A159036

/-! ## A159036.P12383060367450805980

`A117189(n+1)-(A159035(n)+A073357(n+1))`
-/

namespace A159036.P12383060367450805980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 (n + 1) - (A159035 n + A073357 (n + 1))

end

end A159036.P12383060367450805980

namespace A159036

/-- `A117189(n+1)-(A159035(n)+A073357(n+1))` -/
def P12383060367450805980.Spec : Prop :=
  ∀ n, P12383060367450805980.a n = A159036 n

end A159036

/-!
# A159038: a(n) = 8 * n!.

The programs for A159038, the canonical program `A159038.P13522070455269874881` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159038 has offset 1).

The definition of A159038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(n+1)!` (program `A159038.P13522070455269874881`, by `A159038.P13522070455269874881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159038.P13522070455269874881

`8*(n+1)!`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159038

/-- `8*(n+1)!` -/
def P13522070455269874881.Spec : Prop :=
  ∀ n, (P13522070455269874881.a n : ℤ) = A159038 (n + 1)

theorem P13522070455269874881.correct : P13522070455269874881.Spec := by
  intro n
  simp only [A159038, Nat.add_sub_cancel]

end A159038

/-! ## A159038.P1968342288440131846

`8*A000142(n+1)`
-/

namespace A159038.P1968342288440131846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000142 (n + 1)

end

end A159038.P1968342288440131846

namespace A159038

/-- `8*A000142(n+1)` -/
def P1968342288440131846.Spec : Prop :=
  ∀ n, P1968342288440131846.a n = A159038 (n + 1)

end A159038

/-! ## A159038.P5411520091826903711

`8*∏[n+1]`
-/

namespace A159038.P5411520091826903711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A159038.P5411520091826903711

namespace A159038

/-- `8*∏[n+1]` -/
def P5411520091826903711.Spec : Prop :=
  ∀ n, (P5411520091826903711.a n : ℤ) = A159038 (n + 1)

theorem P5411520091826903711.correct : P5411520091826903711.Spec := by
  intro n
  simp only [A159038, Nat.add_sub_cancel, A159038.P5411520091826903711.f1, A159038.P5411520091826903711.a, A159038.P13522070455269874881.a, SequenceMachineLib.memo_apply]
  try simp

end A159038

/-! ## A159038.P13877839593124371072

`Δ[8*∑[n!]]`
-/

namespace A159038.P13877839593124371072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A159038.P13877839593124371072

namespace A159038

/-- `Δ[8*∑[n!]]` -/
def P13877839593124371072.Spec : Prop :=
  ∀ n, P13877839593124371072.a n = A159038 (n + 1)

end A159038

/-! ## A159038.P4436720546182279563

`(n+1)!/tan(acot(8))`
-/

namespace A159038.P4436720546182279563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℝ) / Real.tan (SequenceMachineLib.acot (8 : ℝ))

end

end A159038.P4436720546182279563

namespace A159038

/-- `(n+1)!/tan(acot(8))` -/
def P4436720546182279563.Spec : Prop :=
  ∀ n, P4436720546182279563.a n = (A159038 (n + 1) : ℝ)

end A159038

/-! ## A159038.P7287368793435499783

`∏[n+1]/tan(acot(8))`
-/

namespace A159038.P7287368793435499783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (8 : ℝ))

end

end A159038.P7287368793435499783

namespace A159038

/-- `∏[n+1]/tan(acot(8))` -/
def P7287368793435499783.Spec : Prop :=
  ∀ n, P7287368793435499783.a n = (A159038 (n + 1) : ℝ)

end A159038

/-! ## A159038.P14431856677037970640

`∏[a(n-1)+1]` with `a(0)=8, a(1)=2`
-/

namespace A159038.P14431856677037970640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 2] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159038.P14431856677037970640

namespace A159038

/-- `∏[a(n-1)+1]` -/
def P14431856677037970640.Spec : Prop :=
  ∀ n, (P14431856677037970640.a n : ℤ) = A159038 (n + 1)

end A159038

/-! ## A159038.P5205091827339836877

`record[8*lcm(1-n, n!)]`
-/

namespace A159038.P5205091827339836877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Int.lcm (1 - (n : ℤ)) (Nat.factorial n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159038.P5205091827339836877

namespace A159038

/-- `record[8*lcm(1-n, n!)]` -/
def P5205091827339836877.Spec : Prop :=
  ∀ n, (P5205091827339836877.a n : ℤ) = A159038 (n + 1)

end A159038

/-! ## A159038.P5352446929225619742

`(n+1)!/(1/2)^3`
-/

namespace A159038.P5352446929225619742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / ((1 : ℚ) / 2) ^ 3

end

end A159038.P5352446929225619742

namespace A159038

/-- `(n+1)!/(1/2)^3` -/
def P5352446929225619742.Spec : Prop :=
  ∀ n, P5352446929225619742.a n = (A159038 (n + 1) : ℚ)

theorem P5352446929225619742.correct : P5352446929225619742.Spec := by
  intro n
  simp only [A159038, Nat.add_sub_cancel, A159038.P5352446929225619742.a, A159038.P13522070455269874881.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A159038

/-! ## A159038.P17104090653182215263

`abs((n+1)*a(n-1))` with `a(0)=8`
-/

namespace A159038.P17104090653182215263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  (n + 1) * a (n - 1)

end

end A159038.P17104090653182215263

namespace A159038

/-- `abs((n+1)*a(n-1))` -/
def P17104090653182215263.Spec : Prop :=
  ∀ n, (P17104090653182215263.a n : ℤ) = A159038 (n + 1)

end A159038

/-!
# A159039: E.g.f. sec(x)/(1-x) = 1/( cos(x) * (1-x) ).

The programs for A159039, there is no canonical definition to state claims against.
-/

/-! ## A159039.P15801871139441179647

`(A337445(n)+A230960(n))/2`
-/

namespace A159039.P15801871139441179647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337445 n + A230960 n : ℚ) / 2

end

end A159039.P15801871139441179647

/-! ## A159039.P4336216836665511300

`abs(A346838(n))+a(n-1)/n^-1-A009006(n)` with `a(0)=1`
-/

namespace A159039.P4336216836665511300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (|A346838 n| : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (A009006 n : ℚ)

end

end A159039.P4336216836665511300

/-! ## A159039.P15059889728291743741

`A109449(∑[n])+a(n-1)/n^-1-A009006(n)` with `a(0)=1`
-/

namespace A159039.P15059889728291743741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A109449 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (A009006 n : ℚ)

end

end A159039.P15059889728291743741

/-! ## A159039.P11457177172714790659

`A229892(∑[n]+1)+a(n-1)/n^-1-A009006(n)` with `a(0)=1`
-/

namespace A159039.P11457177172714790659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A229892 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (A009006 n : ℚ)

end

end A159039.P11457177172714790659

/-! ## A159039.P10544241410073096692

`A250261(∑[n+3])+a(n-1)/n^-1-A009006(n)` with `a(0)=1`
-/

namespace A159039.P10544241410073096692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A250261 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (A009006 n : ℚ)

end

end A159039.P10544241410073096692

/-! ## A159039.P16332519588026091140

`A008281(∑[n]+n)+a(n-1)/n^-1-A009006(n)` with `a(0)=1`
-/

namespace A159039.P16332519588026091140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A008281 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (A009006 n : ℚ)

end

end A159039.P16332519588026091140

/-! ## A159039.P16073641358186540933

`A292975(∑[n]+n)+a(n-1)/n^-1-A009006(n)` with `a(0)=1, a(1)=1`
-/

namespace A159039.P16073641358186540933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A292975 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (A009006 n : ℚ)

end

end A159039.P16073641358186540933

/-!
# A159040: A triangle of polynomial coefficients: p(x,n)=Sum[x^i*If[i == Floor[n/2] && Mod[n, 2] == 0, 0, If[i <= (less than or equal to) Floor[n/2], (-1)^i*A109128[n, i], -(-1)^(n - i)* A109128[n, i]]], {i, 0, n}]/(1 - x).

The programs for A159040, there is no canonical definition to state claims against.
-/

/-! ## A159040.P4342512984244214273

`xor(A154957(n)-1, A109128(n))`
-/

namespace A159040.P4342512984244214273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A154957 n - 1) (A109128 n)

end

end A159040.P4342512984244214273

/-! ## A159040.P12087443788060113915

`xor(A109128(n), A286137(A152714(n)))`
-/

namespace A159040.P12087443788060113915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109128 n) (A286137 (A152714 n).toNat)

end

end A159040.P12087443788060113915

/-! ## A159040.P6616818084497952651

`xor(A028326(n)-1, A286137(A152714(n)))`
-/

namespace A159040.P6616818084497952651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028326 n - 1) (A286137 (A152714 n).toNat)

end

end A159040.P6616818084497952651

/-! ## A159040.P13523750111725226043

`xor(2*A007318(n)-1, A286137(A152714(n)))`
-/

namespace A159040.P13523750111725226043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A007318 n - 1) (A286137 (A152714 n).toNat)

end

end A159040.P13523750111725226043

/-! ## A159040.P6191022928972450330

`xor((A168625(n)+3)/4, A286137(A152714(n)))`
-/

namespace A159040.P6191022928972450330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A168625 n + 3 : ℚ) / 4)) (A286137 (A152714 n).toNat)

end

end A159040.P6191022928972450330

/-!
# A159041: Triangle read by rows: row n (n>=0) gives the coefficients of the polynomial p(n,x) of degree n defined in comments.

The programs for A159041, there is no canonical definition to state claims against.
-/

/-! ## A159041.P8354430584177843139

`2-A093906(A173043(n))`
-/

namespace A159041.P8354430584177843139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A093906 (A173043 n).toNat

end

end A159041.P8354430584177843139

/-! ## A159041.P8597938534526126243

`2-A140206(A176561(n))`
-/

namespace A159041.P8597938534526126243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A140206 (A176561 n).toNat

end

end A159041.P8597938534526126243

/-! ## A159041.P15287299444981812173

`2-A175226(A157207(n))`
-/

namespace A159041.P15287299444981812173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A175226 (A157207 n).toNat

end

end A159041.P15287299444981812173

/-!
# A159043: Primes of the form prime(n)+prime(n+3)+1.

The programs for A159043, the canonical program `A159043.P591640030146997195` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159043 has offset 1).

The definition of A159043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159043.P6752119514705473734

`p?[A072055(n+1)+A031165(n+1)]`
-/

namespace A159043.P6752119514705473734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A031165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159043.P6752119514705473734

namespace A159043

/-- `p?[A072055(n+1)+A031165(n+1)]` -/
def P6752119514705473734.Spec : Prop :=
  ∀ n, P6752119514705473734.a n = A159043 (n + 1)

end A159043

/-! ## A159043.P11629952919656935838

`p?[A028815(n+1)+A004139(n+2)]`
-/

namespace A159043.P11629952919656935838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + A004139 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159043.P11629952919656935838

namespace A159043

/-- `p?[A028815(n+1)+A004139(n+2)]` -/
def P11629952919656935838.Spec : Prop :=
  ∀ n, P11629952919656935838.a n = A159043 (n + 1)

end A159043

/-! ## A159043.P9612396083938253500

`p?[A182986(n+1)+A028815(n+3)]`
-/

namespace A159043.P9612396083938253500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A028815 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159043.P9612396083938253500

namespace A159043

/-- `p?[A182986(n+1)+A028815(n+3)]` -/
def P9612396083938253500.Spec : Prop :=
  ∀ n, P9612396083938253500.a n = A159043 (n + 1)

end A159043

/-! ## A159043.P591640030146997195

`p?[A008864(n+1)+A000040(n+4)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A159043

/-- `p?[A008864(n+1)+A000040(n+4)]` -/
def P591640030146997195.Spec : Prop :=
  ∀ n, P591640030146997195.a n = A159043 (n + 1)

theorem P591640030146997195.correct : P591640030146997195.Spec := by
  intro n
  simp only [A159043, Nat.add_sub_cancel]

end A159043

/-! ## A159043.P14784802262617827849

`p?[A008864(n+1)+A008578(n+5)]`
-/

namespace A159043.P14784802262617827849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A008578 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159043.P14784802262617827849

namespace A159043

/-- `p?[A008864(n+1)+A008578(n+5)]` -/
def P14784802262617827849.Spec : Prop :=
  ∀ n, P14784802262617827849.a n = A159043 (n + 1)

end A159043

/-! ## A159043.P14419432330701157312

`p?[A175216(n+4)+A008578(n+2)]`
-/

namespace A159043.P14419432330701157312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 4) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159043.P14419432330701157312

namespace A159043

/-- `p?[A175216(n+4)+A008578(n+2)]` -/
def P14419432330701157312.Spec : Prop :=
  ∀ n, P14419432330701157312.a n = A159043 (n + 1)

end A159043

/-! ## A159043.P7649415949712054979

`p?[A031131(n+2)+A001043(n+1)+1]`
-/

namespace A159043.P7649415949712054979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 2) + (A001043 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159043.P7649415949712054979

namespace A159043

/-- `p?[A031131(n+2)+A001043(n+1)+1]` -/
def P7649415949712054979.Spec : Prop :=
  ∀ n, P7649415949712054979.a n = A159043 (n + 1)

end A159043

/-! ## A159043.P8385696451441651732

`p?[A034963(n+1)+1-A001043(n+2)]`
-/

namespace A159043.P8385696451441651732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (1 - A001043 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159043.P8385696451441651732

namespace A159043

/-- `p?[A034963(n+1)+1-A001043(n+2)]` -/
def P8385696451441651732.Spec : Prop :=
  ∀ n, P8385696451441651732.a n = A159043 (n + 1)

end A159043

/-! ## A159043.P12312569843335009968

`p?[A000040(n+1)+A000040(n+4)+1]`
-/

namespace A159043.P12312569843335009968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (n + 4) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159043.P12312569843335009968

namespace A159043

/-- `p?[A000040(n+1)+A000040(n+4)+1]` -/
def P12312569843335009968.Spec : Prop :=
  ∀ n, P12312569843335009968.a n = A159043 (n + 1)

end A159043

/-!
# A159044: Primes of the form prime(n)+prime(n+4)+1.

The programs for A159044, there is no canonical definition to state claims against.
-/

/-! ## A159044.P7324988823291103669

`p?[A028815(n)+A004139(n+2)]`
-/

namespace A159044.P7324988823291103669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + A004139 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159044.P7324988823291103669

/-! ## A159044.P8306000659642864399

`p?[A065091(n+3)+A028815(n)]`
-/

namespace A159044.P8306000659642864399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 3) + A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159044.P8306000659642864399

/-! ## A159044.P18254401629880345300

`p?[A028815(n)+A000040(n+4)]`
-/

namespace A159044.P18254401629880345300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + A000040 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159044.P18254401629880345300

/-! ## A159044.P10534909597403202730

`p?[A162753(n)+A093515(n+6)]`
-/

namespace A159044.P10534909597403202730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n + A093515 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159044.P10534909597403202730

/-! ## A159044.P15411002314895601406

`p?[A158611(n+1)+A028815(n+3)]`
-/

namespace A159044.P15411002314895601406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A028815 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159044.P15411002314895601406

/-! ## A159044.P14383979064576194699

`p?[A008864(n+1)+A000040(n+5)]`
-/

namespace A159044.P14383979064576194699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000040 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159044.P14383979064576194699

/-! ## A159044.P8328963363574796026

`p?[A055670(n+2)+A000040(n+6)]`
-/

namespace A159044.P8328963363574796026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2) + A000040 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159044.P8328963363574796026

/-! ## A159044.P18326928160887661700

`p?[A000040(n+1)+A000040(n+5)+1]`
-/

namespace A159044.P18326928160887661700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (n + 5) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159044.P18326928160887661700

/-! ## A159044.P6039098831168876436

`record[A014963(A000040(n+6)+A000040(n+2)+1)]`
-/

namespace A159044.P6039098831168876436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000040 (n + 6) + (A000040 (n + 2) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159044.P6039098831168876436

/-! ## A159044.P8791520235658296689

`record[A020639(A000040(n+6)+A000040(n+2)+1)]`
-/

namespace A159044.P8791520235658296689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 6) + A000040 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159044.P8791520235658296689

/-!
# A159045: Primes of the form prime(k) + prime(k+5) + 1.

The programs for A159045, the canonical program `A159045.P12667360026089005366` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159045 has offset 1).

The definition of A159045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159045.P847896098379252034

`p?[A031165(n+1)+A048448(n)+1]`
-/

namespace A159045.P847896098379252034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) + (A048448 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159045.P847896098379252034

namespace A159045

/-- `p?[A031165(n+1)+A048448(n)+1]` -/
def P847896098379252034.Spec : Prop :=
  ∀ n, P847896098379252034.a n = A159045 (n + 1)

end A159045

/-! ## A159045.P276427815896857580

`p?[A157996(n+1)+A008864(n+1)]`
-/

namespace A159045.P276427815896857580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1) + A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159045.P276427815896857580

namespace A159045

/-- `p?[A157996(n+1)+A008864(n+1)]` -/
def P276427815896857580.Spec : Prop :=
  ∀ n, P276427815896857580.a n = A159045 (n + 1)

end A159045

/-! ## A159045.P12667360026089005366

`p?[A008864(n+1)+A000040(n+6)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A159045

/-- `p?[A008864(n+1)+A000040(n+6)]` -/
def P12667360026089005366.Spec : Prop :=
  ∀ n, P12667360026089005366.a n = A159045 (n + 1)

theorem P12667360026089005366.correct : P12667360026089005366.Spec := by
  intro n
  simp only [A159045, Nat.add_sub_cancel]

end A159045

/-! ## A159045.P13005027768790345886

`p?[A055670(n+1)+A000040(n+6)]`
-/

namespace A159045.P13005027768790345886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) + A000040 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159045.P13005027768790345886

namespace A159045

/-- `p?[A055670(n+1)+A000040(n+6)]` -/
def P13005027768790345886.Spec : Prop :=
  ∀ n, P13005027768790345886.a n = A159045 (n + 1)

end A159045

/-! ## A159045.P8568370470096969894

`p?[A000040(n+1)+A157996(n+1)+1]`
-/

namespace A159045.P8568370470096969894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A157996 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159045.P8568370470096969894

namespace A159045

/-- `p?[A000040(n+1)+A157996(n+1)+1]` -/
def P8568370470096969894.Spec : Prop :=
  ∀ n, P8568370470096969894.a n = A159045 (n + 1)

end A159045

/-! ## A159045.P14093334431903589524

`p?[A127333(n+1)+1-A034963(n+2)]`
-/

namespace A159045.P14093334431903589524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1) + (1 - A034963 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159045.P14093334431903589524

namespace A159045

/-- `p?[A127333(n+1)+1-A034963(n+2)]` -/
def P14093334431903589524.Spec : Prop :=
  ∀ n, P14093334431903589524.a n = A159045 (n + 1)

end A159045

/-!
# A159046: Dimension of the space of newforms of weight 2 on the subgroup Gamma_1(n).

The programs for A159046, there is no canonical definition to state claims against.
-/

/-! ## A159046.P14484588544136411862

`∑{d}[n+1, A007427(#)*A029937((n+1)/#)]`
-/

namespace A159046.P14484588544136411862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A029937 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159046.P14484588544136411862

/-! ## A159046.P11656699623934003868

`∑{d}[n+1, A029937(#)*A291378((n+1)/#)]`
-/

namespace A159046.P11656699623934003868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029937 d * A291378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159046.P11656699623934003868

/-! ## A159046.P344583340284922056

`∑{d}[n+1, A029937(#)*A260908((n+1)/#)]`
-/

namespace A159046.P344583340284922056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029937 d * A260908 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159046.P344583340284922056

/-! ## A159046.P8168795163309640999

`∑{d}[n+1, A029937(#)*A278995((n+1)/#)]`
-/

namespace A159046.P8168795163309640999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029937 d * A278995 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159046.P8168795163309640999

/-! ## A159046.P3404547196538773149

`∑{d}[n+1, A029937(#)*A107944((n+1)/#)]`
-/

namespace A159046.P3404547196538773149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029937 d * A107944 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159046.P3404547196538773149

/-!
# A159047: Primes which are triangular numbers plus 3.

The programs for A159047, the canonical program `A159047.P14834079532734981914` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159047 has offset 1).

The definition of A159047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159047.P14834079532734981914

`p?[∑[n]+3]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159047

/-- `p?[∑[n]+3]` -/
def P14834079532734981914.Spec : Prop :=
  ∀ n, (P14834079532734981914.a n : ℤ) = A159047 (n + 1)

theorem P14834079532734981914.correct : P14834079532734981914.Spec := by
  intro n
  simp only [A159047, Nat.add_sub_cancel]

end A159047

/-! ## A159047.P16599101689425008370

`or(1, p?[a(n-1)+n])` with `a(0)=3`
-/

namespace A159047.P16599101689425008370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A159047.P16599101689425008370

namespace A159047

/-- `or(1, p?[a(n-1)+n])` -/
def P16599101689425008370.Spec : Prop :=
  ∀ n, (P16599101689425008370.a n : ℤ) = A159047 (n + 1)

end A159047

/-! ## A159047.P17714303316717610053

`∏{p}[p?[C(n+1, 2)+3], #]`
-/

namespace A159047.P17714303316717610053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A159047.P17714303316717610053

namespace A159047

/-- `∏{p}[p?[C(n+1, 2)+3], #]` -/
def P17714303316717610053.Spec : Prop :=
  ∀ n, (P17714303316717610053.a n : ℤ) = A159047 (n + 1)

end A159047

/-! ## A159047.P1832264346248079141

`∏{d}[p?[a(n-1)+n], #]` with `a(0)=3`
-/

namespace A159047.P1832264346248079141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A159047.P1832264346248079141

namespace A159047

/-- `∏{d}[p?[a(n-1)+n], #]` -/
def P1832264346248079141.Spec : Prop :=
  ∀ n, (P1832264346248079141.a n : ℤ) = A159047 (n + 1)

end A159047

/-! ## A159047.P16751302653652291206

`record[p?[A241807(n)+2]]`
-/

namespace A159047.P16751302653652291206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241807 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159047.P16751302653652291206

namespace A159047

/-- `record[p?[A241807(n)+2]]` -/
def P16751302653652291206.Spec : Prop :=
  ∀ n, P16751302653652291206.a n = A159047 (n + 1)

end A159047

/-! ## A159047.P4675411899143395172

`∏{d}[p?[A152950(n+1)], #]`
-/

namespace A159047.P4675411899143395172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A159047.P4675411899143395172

namespace A159047

/-- `∏{d}[p?[A152950(n+1)], #]` -/
def P4675411899143395172.Spec : Prop :=
  ∀ n, (P4675411899143395172.a n : ℤ) = A159047 (n + 1)

end A159047

/-! ## A159047.P17458599655011671438

`record[p?[A226089(n+1)+2]]`
-/

namespace A159047.P17458599655011671438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226089 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159047.P17458599655011671438

namespace A159047

/-- `record[p?[A226089(n+1)+2]]` -/
def P17458599655011671438.Spec : Prop :=
  ∀ n, P17458599655011671438.a n = A159047 (n + 1)

end A159047

/-! ## A159047.P9341144632546720351

`∑{p}[p?[A134869(n+1)+2], #]`
-/

namespace A159047.P9341144632546720351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A159047.P9341144632546720351

namespace A159047

/-- `∑{p}[p?[A134869(n+1)+2], #]` -/
def P9341144632546720351.Spec : Prop :=
  ∀ n, (P9341144632546720351.a n : ℤ) = A159047 (n + 1)

end A159047

/-! ## A159047.P16861120711665970670

`A264668(n)+p?[A152950(n+1)]`
-/

namespace A159047.P16861120711665970670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159047.P16861120711665970670

namespace A159047

/-- `A264668(n)+p?[A152950(n+1)]` -/
def P16861120711665970670.Spec : Prop :=
  ∀ n, P16861120711665970670.a n = A159047 (n + 1)

end A159047

/-! ## A159047.P17235328635259619450

`p?[A152950(n+1)]%A001538(n)`
-/

namespace A159047.P17235328635259619450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001538 n)

end

end A159047.P17235328635259619450

namespace A159047

/-- `p?[A152950(n+1)]%A001538(n)` -/
def P17235328635259619450.Spec : Prop :=
  ∀ n, P17235328635259619450.a n = A159047 (n + 1)

end A159047

/-! ## A159047.P9488635144059552543

`p?[A000217(n)+3]%A017201(n)`
-/

namespace A159047.P9488635144059552543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017201 n)

end

end A159047.P9488635144059552543

namespace A159047

/-- `p?[A000217(n)+3]%A017201(n)` -/
def P9488635144059552543.Spec : Prop :=
  ∀ n, P9488635144059552543.a n = A159047 (n + 1)

end A159047

/-! ## A159047.P6287969039659163494

`∏{d}[p?[A000217(A032766(n))+3], #]`
-/

namespace A159047.P6287969039659163494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A032766 n).toNat + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A159047.P6287969039659163494

namespace A159047

/-- `∏{d}[p?[A000217(A032766(n))+3], #]` -/
def P6287969039659163494.Spec : Prop :=
  ∀ n, (P6287969039659163494.a n : ℤ) = A159047 (n + 1)

end A159047

/-! ## A159047.P3053415329134333789

`∏{p}[p?[A133263(n)+A069894(n)], #]`
-/

namespace A159047.P3053415329134333789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n + A069894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A159047.P3053415329134333789

namespace A159047

/-- `∏{p}[p?[A133263(n)+A069894(n)], #]` -/
def P3053415329134333789.Spec : Prop :=
  ∀ n, (P3053415329134333789.a n : ℤ) = A159047 (n + 1)

end A159047

/-! ## A159047.P4095760773205708222

`A037213(n*(n+1))+p?[A152950(n+1)]`
-/

namespace A159047.P4095760773205708222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159047.P4095760773205708222

namespace A159047

/-- `A037213(n*(n+1))+p?[A152950(n+1)]` -/
def P4095760773205708222.Spec : Prop :=
  ∀ n, P4095760773205708222.a n = A159047 (n + 1)

end A159047

/-!
# A159048: Primes of the form m*(m+1)/2 + 4.

The programs for A159048, the canonical program `A159048.P5924685074956614274` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159048 has offset 1).

The definition of A159048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159048.P5924685074956614274

`p?[∑[n]+4]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159048

/-- `p?[∑[n]+4]` -/
def P5924685074956614274.Spec : Prop :=
  ∀ n, (P5924685074956614274.a n : ℤ) = A159048 (n + 1)

theorem P5924685074956614274.correct : P5924685074956614274.Spec := by
  intro n
  simp only [A159048, Nat.add_sub_cancel]

end A159048

/-! ## A159048.P11397326991271440851

`or(1, p?[C(n, 2)+4])`
-/

namespace A159048.P11397326991271440851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A159048.P11397326991271440851

namespace A159048

/-- `or(1, p?[C(n, 2)+4])` -/
def P11397326991271440851.Spec : Prop :=
  ∀ n, (P11397326991271440851.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P684599685864706333

`∏{d}[p?[C(n, 2)+4], #]`
-/

namespace A159048.P684599685864706333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A159048.P684599685864706333

namespace A159048

/-- `∏{d}[p?[C(n, 2)+4], #]` -/
def P684599685864706333.Spec : Prop :=
  ∀ n, (P684599685864706333.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P11362331897839896727

`∑{p}[p?[C(n, 2)+4], #]`
-/

namespace A159048.P11362331897839896727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A159048.P11362331897839896727

namespace A159048

/-- `∑{p}[p?[C(n, 2)+4], #]` -/
def P11362331897839896727.Spec : Prop :=
  ∀ n, (P11362331897839896727.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P966182784459437116

`∏{p}[p?[C(n, 2)+4], #]`
-/

namespace A159048.P966182784459437116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A159048.P966182784459437116

namespace A159048

/-- `∏{p}[p?[C(n, 2)+4], #]` -/
def P966182784459437116.Spec : Prop :=
  ∀ n, (P966182784459437116.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P7041305834538737068

`lcm(2, p?[C(n, 2)+4])/2`
-/

namespace A159048.P7041305834538737068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A159048.P7041305834538737068

namespace A159048

/-- `lcm(2, p?[C(n, 2)+4])/2` -/
def P7041305834538737068.Spec : Prop :=
  ∀ n, P7041305834538737068.a n = (A159048 (n + 1) : ℚ)

end A159048

/-! ## A159048.P8862926723613148716

`xor(1, p?[C(n, 2)+4])+1`
-/

namespace A159048.P8862926723613148716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A159048.P8862926723613148716

namespace A159048

/-- `xor(1, p?[C(n, 2)+4])+1` -/
def P8862926723613148716.Spec : Prop :=
  ∀ n, (P8862926723613148716.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P6612415723847391617

`or(1, p?[a(n-1)+n])` with `a(0)=4`
-/

namespace A159048.P6612415723847391617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A159048.P6612415723847391617

namespace A159048

/-- `or(1, p?[a(n-1)+n])` -/
def P6612415723847391617.Spec : Prop :=
  ∀ n, (P6612415723847391617.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P10341674842622908450

`∏{d}[p?[a(n-1)+n], #]` with `a(0)=4`
-/

namespace A159048.P10341674842622908450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A159048.P10341674842622908450

namespace A159048

/-- `∏{d}[p?[a(n-1)+n], #]` -/
def P10341674842622908450.Spec : Prop :=
  ∀ n, (P10341674842622908450.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P1499593168288483449

`∑{p}[p?[a(n-1)+n], #]` with `a(0)=4`
-/

namespace A159048.P1499593168288483449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A159048.P1499593168288483449

namespace A159048

/-- `∑{p}[p?[a(n-1)+n], #]` -/
def P1499593168288483449.Spec : Prop :=
  ∀ n, (P1499593168288483449.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P15656004468746267470

`∏{p}[p?[a(n-1)+n], #]` with `a(0)=4`
-/

namespace A159048.P15656004468746267470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A159048.P15656004468746267470

namespace A159048

/-- `∏{p}[p?[a(n-1)+n], #]` -/
def P15656004468746267470.Spec : Prop :=
  ∀ n, (P15656004468746267470.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P11468211529356812610

`∏{p}[p?[n-(1-a(n-1))], #]` with `a(0)=4`
-/

namespace A159048.P11468211529356812610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  (n : ℤ) - (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A159048.P11468211529356812610

namespace A159048

/-- `∏{p}[p?[n-(1-a(n-1))], #]` -/
def P11468211529356812610.Spec : Prop :=
  ∀ n, (P11468211529356812610.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P12653579105648290782

`p?[a(n-1)+n]+2-4/2` with `a(0)=4`
-/

namespace A159048.P12653579105648290782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) + (2 - (4 : ℚ) / 2)

end

end A159048.P12653579105648290782

namespace A159048

/-- `p?[a(n-1)+n]+2-4/2` -/
def P12653579105648290782.Spec : Prop :=
  ∀ n, P12653579105648290782.a n = (A159048 (n + 1) : ℚ)

end A159048

/-! ## A159048.P9574699592017754986

`or(1, p?[A145018(n+1)])`
-/

namespace A159048.P9574699592017754986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A159048.P9574699592017754986

namespace A159048

/-- `or(1, p?[A145018(n+1)])` -/
def P9574699592017754986.Spec : Prop :=
  ∀ n, P9574699592017754986.a n = A159048 (n + 1)

end A159048

/-! ## A159048.P6691018171552166128

`or(1, p?[A000124(n)+3])`
-/

namespace A159048.P6691018171552166128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A159048.P6691018171552166128

namespace A159048

/-- `or(1, p?[A000124(n)+3])` -/
def P6691018171552166128.Spec : Prop :=
  ∀ n, P6691018171552166128.a n = A159048 (n + 1)

end A159048

/-! ## A159048.P5810627623081347687

`or(1, p?[A000217(n)+4])`
-/

namespace A159048.P5810627623081347687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A159048.P5810627623081347687

namespace A159048

/-- `or(1, p?[A000217(n)+4])` -/
def P5810627623081347687.Spec : Prop :=
  ∀ n, P5810627623081347687.a n = A159048 (n + 1)

end A159048

/-! ## A159048.P3752305136052101602

`or(1, p?[A000096(n)+5])`
-/

namespace A159048.P3752305136052101602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A159048.P3752305136052101602

namespace A159048

/-- `or(1, p?[A000096(n)+5])` -/
def P3752305136052101602.Spec : Prop :=
  ∀ n, P3752305136052101602.a n = A159048 (n + 1)

end A159048

/-! ## A159048.P17273806412133581105

`∑{p}[p?[A161680(n)+4], #]`
-/

namespace A159048.P17273806412133581105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A159048.P17273806412133581105

namespace A159048

/-- `∑{p}[p?[A161680(n)+4], #]` -/
def P17273806412133581105.Spec : Prop :=
  ∀ n, (P17273806412133581105.a n : ℤ) = A159048 (n + 1)

end A159048

/-! ## A159048.P14914992108908331859

`or(1, p?[A133263(n+1)+2])`
-/

namespace A159048.P14914992108908331859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A159048.P14914992108908331859

namespace A159048

/-- `or(1, p?[A133263(n+1)+2])` -/
def P14914992108908331859.Spec : Prop :=
  ∀ n, P14914992108908331859.a n = A159048 (n + 1)

end A159048

/-!
# A159049: Primes of the form (5+ a triangular number A000217).

The programs for A159049, the canonical program `A159049.P14774221675662974876` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159049 has offset 1).

The definition of A159049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159049.P14774221675662974876

`p?[∑[n]+5]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159049

/-- `p?[∑[n]+5]` -/
def P14774221675662974876.Spec : Prop :=
  ∀ n, (P14774221675662974876.a n : ℤ) = A159049 (n + 1)

theorem P14774221675662974876.correct : P14774221675662974876.Spec := by
  intro n
  simp only [A159049, Nat.add_sub_cancel]

end A159049

/-! ## A159049.P5067173234865591270

`or(1, p?[C(n+1, 2)+5])`
-/

namespace A159049.P5067173234865591270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A159049.P5067173234865591270

namespace A159049

/-- `or(1, p?[C(n+1, 2)+5])` -/
def P5067173234865591270.Spec : Prop :=
  ∀ n, (P5067173234865591270.a n : ℤ) = A159049 (n + 1)

end A159049

/-! ## A159049.P10773888979763992003

`or(1, p?[a(n-1)+n])` with `a(0)=5`
-/

namespace A159049.P10773888979763992003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A159049.P10773888979763992003

namespace A159049

/-- `or(1, p?[a(n-1)+n])` -/
def P10773888979763992003.Spec : Prop :=
  ∀ n, (P10773888979763992003.a n : ℤ) = A159049 (n + 1)

end A159049

/-! ## A159049.P11866219985365807651

`∏{d}[p?[C(n+1, 2)+5], #]`
-/

namespace A159049.P11866219985365807651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A159049.P11866219985365807651

namespace A159049

/-- `∏{d}[p?[C(n+1, 2)+5], #]` -/
def P11866219985365807651.Spec : Prop :=
  ∀ n, (P11866219985365807651.a n : ℤ) = A159049 (n + 1)

end A159049

/-! ## A159049.P16985021984490877904

`∏{p}[p?[C(n+1, 2)+5], #]`
-/

namespace A159049.P16985021984490877904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A159049.P16985021984490877904

namespace A159049

/-- `∏{p}[p?[C(n+1, 2)+5], #]` -/
def P16985021984490877904.Spec : Prop :=
  ∀ n, (P16985021984490877904.a n : ℤ) = A159049 (n + 1)

end A159049

/-! ## A159049.P151244095723597836

`∏{d}[p?[a(n-1)+n], #]` with `a(0)=5`
-/

namespace A159049.P151244095723597836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A159049.P151244095723597836

namespace A159049

/-- `∏{d}[p?[a(n-1)+n], #]` -/
def P151244095723597836.Spec : Prop :=
  ∀ n, (P151244095723597836.a n : ℤ) = A159049 (n + 1)

end A159049

/-! ## A159049.P4329188701352731716

`∑{p}[p?[a(n-1)+n], #]` with `a(0)=5`
-/

namespace A159049.P4329188701352731716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A159049.P4329188701352731716

namespace A159049

/-- `∑{p}[p?[a(n-1)+n], #]` -/
def P4329188701352731716.Spec : Prop :=
  ∀ n, (P4329188701352731716.a n : ℤ) = A159049 (n + 1)

end A159049

/-! ## A159049.P3131079120966722868

`∏{p}[p?[a(n-1)+n], #]` with `a(0)=5`
-/

namespace A159049.P3131079120966722868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A159049.P3131079120966722868

namespace A159049

/-- `∏{p}[p?[a(n-1)+n], #]` -/
def P3131079120966722868.Spec : Prop :=
  ∀ n, (P3131079120966722868.a n : ℤ) = A159049 (n + 1)

end A159049

/-! ## A159049.P5891065308724493903

`or(1, p?[A000217(n)+5])`
-/

namespace A159049.P5891065308724493903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A159049.P5891065308724493903

namespace A159049

/-- `or(1, p?[A000217(n)+5])` -/
def P5891065308724493903.Spec : Prop :=
  ∀ n, P5891065308724493903.a n = A159049 (n + 1)

end A159049

/-! ## A159049.P4330342854286189717

`or(1, p?[A022856(n+1)+3])`
-/

namespace A159049.P4330342854286189717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A159049.P4330342854286189717

namespace A159049

/-- `or(1, p?[A022856(n+1)+3])` -/
def P4330342854286189717.Spec : Prop :=
  ∀ n, P4330342854286189717.a n = A159049 (n + 1)

end A159049

/-! ## A159049.P3553031376644612850

`or(1, p?[A134869(n+1)+4])`
-/

namespace A159049.P3553031376644612850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A159049.P3553031376644612850

namespace A159049

/-- `or(1, p?[A134869(n+1)+4])` -/
def P3553031376644612850.Spec : Prop :=
  ∀ n, P3553031376644612850.a n = A159049 (n + 1)

end A159049

/-! ## A159049.P9062713626956057197

`∏{p}[p?[A000217(n+1)+4-n], #]`
-/

namespace A159049.P9062713626956057197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (4 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A159049.P9062713626956057197

namespace A159049

/-- `∏{p}[p?[A000217(n+1)+4-n], #]` -/
def P9062713626956057197.Spec : Prop :=
  ∀ n, (P9062713626956057197.a n : ℤ) = A159049 (n + 1)

end A159049

/-! ## A159049.P10672899996218188316

`abs(p?[A089071(n+1)+3]-n)+n`
-/

namespace A159049.P10672899996218188316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)| + (n : ℤ)

end

end A159049.P10672899996218188316

namespace A159049

/-- `abs(p?[A089071(n+1)+3]-n)+n` -/
def P10672899996218188316.Spec : Prop :=
  ∀ n, P10672899996218188316.a n = A159049 (n + 1)

end A159049

/-! ## A159049.P14328443124827353968

`p?[A077169(n+2)]-A000038(n)`
-/

namespace A159049.P14328443124827353968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000038 n

end

end A159049.P14328443124827353968

namespace A159049

/-- `p?[A077169(n+2)]-A000038(n)` -/
def P14328443124827353968.Spec : Prop :=
  ∀ n, P14328443124827353968.a n = A159049 (n + 1)

end A159049

/-! ## A159049.P6219395614944601774

`p?[A000217(n)+5]%A017201(n)`
-/

namespace A159049.P6219395614944601774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017201 n)

end

end A159049.P6219395614944601774

namespace A159049

/-- `p?[A000217(n)+5]%A017201(n)` -/
def P6219395614944601774.Spec : Prop :=
  ∀ n, P6219395614944601774.a n = A159049 (n + 1)

end A159049

/-! ## A159049.P8817709005395792827

`p?[A152950(n+1)+2]%A016791(n)`
-/

namespace A159049.P8817709005395792827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016791 n)

end

end A159049.P8817709005395792827

namespace A159049

/-- `p?[A152950(n+1)+2]%A016791(n)` -/
def P8817709005395792827.Spec : Prop :=
  ∀ n, P8817709005395792827.a n = A159049 (n + 1)

end A159049

/-! ## A159049.P16056983449828302141

`p?[A134869(n+1)+4]%A158321(n+1)`
-/

namespace A159049.P16056983449828302141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A158321 (n + 1))

end

end A159049.P16056983449828302141

namespace A159049

/-- `p?[A134869(n+1)+4]%A158321(n+1)` -/
def P16056983449828302141.Spec : Prop :=
  ∀ n, P16056983449828302141.a n = A159049 (n + 1)

end A159049

/-!
# A159050: Dimension of the space of weight 2 modular forms for Gamma_1(n).

The programs for A159050, there is no canonical definition to state claims against.
-/

/-! ## A159050.P15909108038287591440

`A029936(n+1)+A029937(n+1)-1`
-/

namespace A159050.P15909108038287591440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029936 (n + 1) + (A029937 (n + 1) - 1)

end

end A159050.P15909108038287591440

/-! ## A159050.P3034024458170547059

`A029937(n+1)+A023443(A029936(n+1))`
-/

namespace A159050.P3034024458170547059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029937 (n + 1) + A023443 (A029936 (n + 1)).toNat

end

end A159050.P3034024458170547059

/-! ## A159050.P12192887262531153671

`A004524(A029935(n+1)+2)-A024000(A029937(n+1))`
-/

namespace A159050.P12192887262531153671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A029935 (n + 1) + 2).toNat - A024000 (A029937 (n + 1)).toNat

end

end A159050.P12192887262531153671

/-! ## A159050.P8865611596470001738

`A023443(A029937(n+1))+A004525(A029935(n+1)-1)+1`
-/

namespace A159050.P8865611596470001738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A029937 (n + 1)).toNat + (A004525 (A029935 (n + 1) - 1).toNat + 1)

end

end A159050.P8865611596470001738

/-! ## A159050.P16571854855240071976

`Δ[A007983(A000005(2^n))]`
-/

namespace A159050.P16571854855240071976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007983 (A000005 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159050.P16571854855240071976

/-!
# A159051: Numbers n such that Fibonacci(n-2) is divisible by n.

The programs for A159051, there is no canonical definition to state claims against.
-/

/-! ## A159051.P8538436133309779389

`eq[2, (n+1)%A001177(n+1)]+1`
-/

namespace A159051.P8538436133309779389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A001177 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A159051.P8538436133309779389

/-! ## A159051.P2761559121338882559

`eq[2, n%A001177(A028310(n))]`
-/

namespace A159051.P2761559121338882559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A001177 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159051.P2761559121338882559

/-! ## A159051.P2806349434921293235

`eq[n+2, gcd(n+2, A000045(n))]+2`
-/

namespace A159051.P2806349434921293235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A000045 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A159051.P2806349434921293235

/-!
# A159053: Indices n such that Fibonacci(n-3) is a multiple of n.

The programs for A159053, there is no canonical definition to state claims against.
-/

/-! ## A159053.P7044881057623487686

`xor(1, eq[0, (n-2)%A001177(n+1)])`
-/

namespace A159053.P7044881057623487686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) (A001177 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159053.P7044881057623487686

/-!
# A159057: a(n) = A102370(n) mod 10.

The programs for A159057, there is no canonical definition to state claims against.
-/

/-! ## A159057.P5133752993407493265

`A102370(n)%10`
-/

namespace A159057.P5133752993407493265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102370 n) 10

end

end A159057.P5133752993407493265

/-! ## A159057.P4061269410607809299

`(A105228(n+1)-1)%10`
-/

namespace A159057.P4061269410607809299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105228 (n + 1) - 1) 10

end

end A159057.P4061269410607809299

/-! ## A159057.P18364157184937544524

`(2*A103185(n)+n)%10`
-/

namespace A159057.P18364157184937544524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A103185 n + (n : ℤ)) 10

end

end A159057.P18364157184937544524

/-! ## A159057.P10297646864395162897

`(∑[A104378(n)]-A104378(n))%10`
-/

namespace A159057.P10297646864395162897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A104378 n) 10

end

end A159057.P10297646864395162897

/-! ## A159057.P7038707354030991489

`(A005408(A103185(n))-A024000(n))%10`
-/

namespace A159057.P7038707354030991489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A103185 n).toNat - A024000 n) 10

end

end A159057.P7038707354030991489

/-! ## A159057.P18081217175830504482

`A105027(comp[∑[2^n]])%10`
-/

namespace A159057.P18081217175830504482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 10

end

end A159057.P18081217175830504482

/-! ## A159057.P8576145525111312165

`A010879(A102370(n))`
-/

namespace A159057.P8576145525111312165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A102370 n).toNat

end

end A159057.P8576145525111312165

/-! ## A159057.P3922809206336617818

`A010879(2*A103185(n)+n)`
-/

namespace A159057.P3922809206336617818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (2 * A103185 n + (n : ℤ)).toNat

end

end A159057.P3922809206336617818

/-! ## A159057.P12741960525213949935

`A010879(A103185(n)+A103185(n)+n)`
-/

namespace A159057.P12741960525213949935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A103185 n + (A103185 n + (n : ℤ))).toNat

end

end A159057.P12741960525213949935

/-! ## A159057.P3642468001903355520

`A008960(A008959(A102370(n))*A102370(n))`
-/

namespace A159057.P3642468001903355520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A008959 (A102370 n).toNat * A102370 n).toNat

end

end A159057.P3642468001903355520

/-! ## A159057.P15639758584351421857

`A131579(7*A102370(n))`
-/

namespace A159057.P15639758584351421857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131579 (7 * A102370 n).toNat

end

end A159057.P15639758584351421857

/-!
# A159058: A102370(n) modulo 8 .

The programs for A159058, the canonical program `A159058.P1695246462564093027` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159058 has offset 0).

The definition of A159058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159058.P1695246462564093027

`xor(n, 2*n)%8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159058

/-- `xor(n, 2*n)%8` -/
def P1695246462564093027.Spec : Prop :=
  ∀ n, (P1695246462564093027.a n : ℤ) = A159058 n

theorem P1695246462564093027.correct : P1695246462564093027.Spec := by
  intro n
  simp only [A159058]

end A159058

/-!
# A159059: a(n) = A102370(n) modulo 5.

The programs for A159059, there is no canonical definition to state claims against.
-/

/-! ## A159059.P7217952989368919717

`A102370(n)%5`
-/

namespace A159059.P7217952989368919717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102370 n) 5

end

end A159059.P7217952989368919717

/-! ## A159059.P17556585651143783358

`A159057(n)%5`
-/

namespace A159059.P17556585651143783358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159057 n) 5

end

end A159059.P17556585651143783358

/-! ## A159059.P5271543512498300063

`A159970(n)%5`
-/

namespace A159059.P5271543512498300063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159970 n) 5

end

end A159059.P5271543512498300063

/-! ## A159059.P10068054023689330507

`(A105023(n)+n)%5`
-/

namespace A159059.P10068054023689330507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105023 n + (n : ℤ)) 5

end

end A159059.P10068054023689330507

/-! ## A159059.P5308543418341310338

`A010874(A159970(n))`
-/

namespace A159059.P5308543418341310338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A159970 n).toNat

end

end A159059.P5308543418341310338

/-! ## A159059.P18260768626797793414

`A010874(A102370(n))`
-/

namespace A159059.P18260768626797793414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A102370 n).toNat

end

end A159059.P18260768626797793414

/-!
# A159060: A102370(n) modulo 6 .

The programs for A159060, there is no canonical definition to state claims against.
-/

/-! ## A159060.P8623464132494203823

`A102370(n)%6`
-/

namespace A159060.P8623464132494203823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102370 n) 6

end

end A159060.P8623464132494203823

/-! ## A159060.P10338471610659998620

`(A105023(n)+n)%6`
-/

namespace A159060.P10338471610659998620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105023 n + (n : ℤ)) 6

end

end A159060.P10338471610659998620

/-! ## A159060.P13137269061408564213

`(A105228(n+1)-1)%6`
-/

namespace A159060.P13137269061408564213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105228 (n + 1) - 1) 6

end

end A159060.P13137269061408564213

/-! ## A159060.P352785663539747383

`(2*A103185(n)+n)%6`
-/

namespace A159060.P352785663539747383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A103185 n + (n : ℤ)) 6

end

end A159060.P352785663539747383

/-! ## A159060.P290744985161598020

`A010875(A102370(n))`
-/

namespace A159060.P290744985161598020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A102370 n).toNat

end

end A159060.P290744985161598020

/-! ## A159060.P4492494290900113871

`A010875(2*A103185(n)+n)`
-/

namespace A159060.P4492494290900113871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (2 * A103185 n + (n : ℤ)).toNat

end

end A159060.P4492494290900113871

/-! ## A159060.P18268831133764714221

`(A008586(n)-A103185(n))%6`
-/

namespace A159060.P18268831133764714221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 n - A103185 n) 6

end

end A159060.P18268831133764714221

/-! ## A159060.P9723952070857954941

`A010875(A008586(n)-A103185(n))`
-/

namespace A159060.P9723952070857954941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A008586 n - A103185 n).toNat

end

end A159060.P9723952070857954941

/-! ## A159060.P2389845799538895061

`A010875(A103185(n)+A103185(n)+n)`
-/

namespace A159060.P2389845799538895061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A103185 n + (A103185 n + (n : ℤ))).toNat

end

end A159060.P2389845799538895061

/-! ## A159060.P13989592650255127015

`A105027(comp[∑[2^n]])%6`
-/

namespace A159060.P13989592650255127015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 6

end

end A159060.P13989592650255127015

/-!
# A159061: Nearest integer to the expected number of tosses of a fair coin required to obtain at least n heads and n tails.

The programs for A159061, the canonical program `A159061.P12202168294824724601` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159061 has offset 1).

The definition of A159061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159061.P12202168294824724601

`round(2*(n+1)*(1+C(2*(n+1), n+1)/2^(2*(n+1))))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159061

/-- `round(2*(n+1)*(1+C(2*(n+1), n+1)/2^(2*(n+1))))` -/
def P12202168294824724601.Spec : Prop :=
  ∀ n, P12202168294824724601.a n = A159061 (n + 1)

theorem P12202168294824724601.correct : P12202168294824724601.Spec := by
  intro n
  simp only [A159061, Nat.add_sub_cancel]

end A159061

/-! ## A159061.P15138828017821157500

`4*(n+1)-A228246(n+1)`
-/

namespace A159061.P15138828017821157500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A228246 (n + 1)

end

end A159061.P15138828017821157500

namespace A159061

/-- `4*(n+1)-A228246(n+1)` -/
def P15138828017821157500.Spec : Prop :=
  ∀ n, P15138828017821157500.a n = A159061 (n + 1)

end A159061

/-! ## A159061.P15854983686095009389

`A004767(n)+1-A228246(n+1)`
-/

namespace A159061.P15854983686095009389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + (1 - A228246 (n + 1))

end

end A159061.P15854983686095009389

namespace A159061

/-- `A004767(n)+1-A228246(n+1)` -/
def P15854983686095009389.Spec : Prop :=
  ∀ n, P15854983686095009389.a n = A159061 (n + 1)

end A159061

/-! ## A159061.P339542485513242697

`A016825(n)+2-A228246(n+1)`
-/

namespace A159061.P339542485513242697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (2 - A228246 (n + 1))

end

end A159061.P339542485513242697

namespace A159061

/-- `A016825(n)+2-A228246(n+1)` -/
def P339542485513242697.Spec : Prop :=
  ∀ n, P339542485513242697.a n = A159061 (n + 1)

end A159061

/-! ## A159061.P5159766989530919142

`A016813(n)+3-A228246(n+1)`
-/

namespace A159061.P5159766989530919142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + (3 - A228246 (n + 1))

end

end A159061.P5159766989530919142

namespace A159061

/-- `A016813(n)+3-A228246(n+1)` -/
def P5159766989530919142.Spec : Prop :=
  ∀ n, P5159766989530919142.a n = A159061 (n + 1)

end A159061

/-! ## A159061.P3999378227354947184

`A008586(n)+4-A228246(n+1)`
-/

namespace A159061.P3999378227354947184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (4 - A228246 (n + 1))

end

end A159061.P3999378227354947184

namespace A159061

/-- `A008586(n)+4-A228246(n+1)` -/
def P3999378227354947184.Spec : Prop :=
  ∀ n, P3999378227354947184.a n = A159061 (n + 1)

end A159061

/-! ## A159061.P13598264436174842291

`abs(A059558(n+1)-A228246(n+1))`
-/

namespace A159061.P13598264436174842291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059558 (n + 1) - A228246 (n + 1)|

end

end A159061.P13598264436174842291

namespace A159061

/-- `abs(A059558(n+1)-A228246(n+1))` -/
def P13598264436174842291.Spec : Prop :=
  ∀ n, P13598264436174842291.a n = A159061 (n + 1)

end A159061

/-! ## A159061.P17305304402531038157

`4-A228246(n+1)+A005843(n)+n+n`
-/

namespace A159061.P17305304402531038157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A228246 (n + 1) + (A005843 n + (n + n : ℤ))

end

end A159061.P17305304402531038157

namespace A159061

/-- `4-A228246(n+1)+A005843(n)+n+n` -/
def P17305304402531038157.Spec : Prop :=
  ∀ n, P17305304402531038157.a n = A159061 (n + 1)

end A159061

/-! ## A159061.P5105793404403288291

`A016813(n)-A023445(A228246(n+1))`
-/

namespace A159061.P5105793404403288291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A023445 (A228246 (n + 1)).toNat

end

end A159061.P5105793404403288291

namespace A159061

/-- `A016813(n)-A023445(A228246(n+1))` -/
def P5105793404403288291.Spec : Prop :=
  ∀ n, P5105793404403288291.a n = A159061 (n + 1)

end A159061

/-!
# A159062: Nearest integer to the variance of the number of tosses of a fair coin required to obtain at least n heads and n tails.

The programs for A159062, there is no canonical definition to state claims against.
-/

/-! ## A159062.P9599554002978425731

`A000196(∑[A028392(n+3)+A003056(2*(n+1))])`
-/

namespace A159062.P9599554002978425731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (n + 3) + A003056 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A159062.P9599554002978425731

/-! ## A159062.P15248185027922672970

`A003056(A097984(n+1)-A027379(n))`
-/

namespace A159062.P15248185027922672970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A097984 (n + 1) - A027379 n).toNat

end

end A159062.P15248185027922672970

/-! ## A159062.P13223368453132421952

`A003056(A097984(n+1)-A055998(n))`
-/

namespace A159062.P13223368453132421952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A097984 (n + 1) - A055998 n).toNat

end

end A159062.P13223368453132421952

/-! ## A159062.P6606744279701826572

`floor(sqrt(∑[A181590(2*(n+1))]))`
-/

namespace A159062.P6606744279701826572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181590 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159062.P6606744279701826572

/-! ## A159062.P3914800980179180310

`A000196(∑[A109073(3*n)+A002808(n+1)])`
-/

namespace A159062.P3914800980179180310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109073 (3 * n) + A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A159062.P3914800980179180310

/-!
# A159063: a(1)=0, a(n+1) is the smallest nonprime >= n^smallest digit of a(n).

The programs for A159063, there is no canonical definition to state claims against.
-/

/-! ## A159063.P5622710860989683811

`n^A324025(A275809(n))`
-/

namespace A159063.P5622710860989683811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A324025 (A275809 n).toNat : ℤ)

end

end A159063.P5622710860989683811

/-! ## A159063.P16631976101407844388

`n^A104609(A087784(n+1))`
-/

namespace A159063.P16631976101407844388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A104609 (A087784 (n + 1)).toNat : ℤ)

end

end A159063.P16631976101407844388

/-! ## A159063.P6219150761057312233

`n^A179940(A068824(n+1))`
-/

namespace A159063.P6219150761057312233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A179940 (A068824 (n + 1)).toNat : ℤ)

end

end A159063.P6219150761057312233

/-! ## A159063.P2462220537976605080

`n^A275024(A172287(n+1))`
-/

namespace A159063.P2462220537976605080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A275024 (A172287 (n + 1)).toNat : ℤ)

end

end A159063.P2462220537976605080

/-! ## A159063.P13151462354604225646

`n^A279966(A279908(n+1))`
-/

namespace A159063.P13151462354604225646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A279966 (A279908 (n + 1)).toNat : ℤ)

end

end A159063.P13151462354604225646

/-!
# A159064: Emirps which remain primes when rotated by 180 degrees on a digital clock display.

The programs for A159064, there is no canonical definition to state claims against.
-/

/-! ## A159064.P15286869201524598955

`∩[A006567(n+1), A080788(n+1)]`
-/

namespace A159064.P15286869201524598955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159064.P15286869201524598955

/-! ## A159064.P12983366529001725509

`∩[A006567(n+1), A080789(n+1)]`
-/

namespace A159064.P12983366529001725509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159064.P12983366529001725509

/-! ## A159064.P5512617169853688180

`∩[A048890(n+1), A000040(A156793(n+1))]`
-/

namespace A159064.P5512617169853688180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159064.P5512617169853688180

/-! ## A159064.P11121577051407989318

`∩[A048890(n+1), A128390(n+1)]`
-/

namespace A159064.P11121577051407989318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159064.P11121577051407989318

/-!
# A159065: Number of crossings in a regular drawing of the complete bipartite graph K(n,n).

The programs for A159065, there is no canonical definition to state claims against.
-/

/-! ## A159065.P6648191204526378919

`record[A018808(n)/2-n]`
-/

namespace A159065.P6648191204526378919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018808 n : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159065.P6648191204526378919

/-! ## A159065.P6507190258041019528

`A331755(n+1)-2*(n+1)`
-/

namespace A159065.P6507190258041019528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331755 (n + 1) - (2 * (n + 1) : ℤ)

end

end A159065.P6507190258041019528

/-! ## A159065.P2954094125006157515

`A290132(n+1)-(A306302(n)+1)`
-/

namespace A159065.P2954094125006157515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290132 (n + 1) - (A306302 n + 1)

end

end A159065.P2954094125006157515

/-! ## A159065.P13866779677792544230

`A331755(n+1)-1-A005408(n)`
-/

namespace A159065.P13866779677792544230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331755 (n + 1) - 1 - A005408 n

end

end A159065.P13866779677792544230

/-! ## A159065.P12633214755815886744

`A331755(n+1)-2-A005843(n)`
-/

namespace A159065.P12633214755815886744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331755 (n + 1) - 2 - A005843 n

end

end A159065.P12633214755815886744

/-! ## A159065.P15093024035135397950

`A290131(n+1)+A290132(n+1)-A114043(n+1)`
-/

namespace A159065.P15093024035135397950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290131 (n + 1) + (A290132 (n + 1) - A114043 (n + 1))

end

end A159065.P15093024035135397950

/-!
# A159066: A102370(n) modulo 7 .

The programs for A159066, there is no canonical definition to state claims against.
-/

/-! ## A159066.P16776976452040611445

`A102370(n)%7`
-/

namespace A159066.P16776976452040611445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102370 n) 7

end

end A159066.P16776976452040611445

/-! ## A159066.P8632866158503692573

`(A105023(n)+n)%7`
-/

namespace A159066.P8632866158503692573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105023 n + (n : ℤ)) 7

end

end A159066.P8632866158503692573

/-! ## A159066.P11807193201322616327

`(A105228(n+1)-1)%7`
-/

namespace A159066.P11807193201322616327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105228 (n + 1) - 1) 7

end

end A159066.P11807193201322616327

/-! ## A159066.P14619298628171531100

`(2*A103185(n)+n)%7`
-/

namespace A159066.P14619298628171531100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A103185 n + (n : ℤ)) 7

end

end A159066.P14619298628171531100

/-! ## A159066.P11511758062151576428

`(A005843(A103185(n))+n)%7`
-/

namespace A159066.P11511758062151576428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A103185 n).toNat + (n : ℤ)) 7

end

end A159066.P11511758062151576428

/-! ## A159066.P17567437594238184712

`(∑[A104378(n)]-A104378(n))%7`
-/

namespace A159066.P17567437594238184712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A104378 n) 7

end

end A159066.P17567437594238184712

/-! ## A159066.P1501174274018549337

`(A047540(A103185(n)+1)+n)%7`
-/

namespace A159066.P1501174274018549337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047540 (A103185 n + 1).toNat + (n : ℤ)) 7

end

end A159066.P1501174274018549337

/-! ## A159066.P16505154240785773022

`(A005408(A103185(n))-A024000(n))%7`
-/

namespace A159066.P16505154240785773022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A103185 n).toNat - A024000 n) 7

end

end A159066.P16505154240785773022

/-! ## A159066.P9416919160904278571

`A105027(comp[∑[2^n]])%7`
-/

namespace A159066.P9416919160904278571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 7

end

end A159066.P9416919160904278571

/-! ## A159066.P15360856076667539773

`A010876(A102370(n))`
-/

namespace A159066.P15360856076667539773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A102370 n).toNat

end

end A159066.P15360856076667539773

/-!
# A159067: A102370(n) modulo 9 .

The programs for A159067, there is no canonical definition to state claims against.
-/

/-! ## A159067.P2427267269728428777

`A102370(n)%9`
-/

namespace A159067.P2427267269728428777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102370 n) 9

end

end A159067.P2427267269728428777

/-! ## A159067.P3550856091559225596

`(A105023(n)+n)%9`
-/

namespace A159067.P3550856091559225596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105023 n + (n : ℤ)) 9

end

end A159067.P3550856091559225596

/-! ## A159067.P13360107898341256256

`dr(A105228(n+1))-1`
-/

namespace A159067.P13360107898341256256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A105228 (n + 1)) : ℤ) - 1

end

end A159067.P13360107898341256256

/-! ## A159067.P6304263611950885150

`(2*A103185(n)+n)%9`
-/

namespace A159067.P6304263611950885150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A103185 n + (n : ℤ)) 9

end

end A159067.P6304263611950885150

/-! ## A159067.P14740363254663940115

`(A005843(A103185(n))+n)%9`
-/

namespace A159067.P14740363254663940115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A103185 n).toNat + (n : ℤ)) 9

end

end A159067.P14740363254663940115

/-! ## A159067.P12178594566557585553

`(∑[A104378(n)]-A104378(n))%9`
-/

namespace A159067.P12178594566557585553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A104378 n) 9

end

end A159067.P12178594566557585553

/-! ## A159067.P10675069016581879522

`A105027(comp[∑[2^n]])%9`
-/

namespace A159067.P10675069016581879522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 9

end

end A159067.P10675069016581879522

/-! ## A159067.P4267550027897563983

`A010878(A102370(n))`
-/

namespace A159067.P4267550027897563983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A102370 n).toNat

end

end A159067.P4267550027897563983

/-! ## A159067.P10180234432018250591

`A010888(A102370(n)+1)-1`
-/

namespace A159067.P10180234432018250591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A102370 n + 1).toNat - 1

end

end A159067.P10180234432018250591

/-! ## A159067.P4579021048813576350

`A001478(n+1)+A010888(A102370(n)+1)+n`
-/

namespace A159067.P4579021048813576350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A010888 (A102370 n + 1).toNat + (n : ℤ))

end

end A159067.P4579021048813576350

/-!
# A159068: a(n) = Sum_{k=1..n} binomial(n,k) * gcd(k,n).

The programs for A159068, there is no canonical definition to state claims against.
-/

/-! ## A159068.P9043074199397531875

`A159553(n+1)-(n+1)`
-/

namespace A159068.P9043074199397531875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159553 (n + 1) - (n + 1 : ℤ)

end

end A159068.P9043074199397531875

/-! ## A159068.P5516252797311186384

`(n+1)*A159069(n+1)`
-/

namespace A159068.P5516252797311186384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A159069 (n + 1)

end

end A159068.P5516252797311186384

/-! ## A159068.P14674279185559950271

`(n+1)*(A159554(n+1)-1)`
-/

namespace A159068.P14674279185559950271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A159554 (n + 1) - 1)

end

end A159068.P14674279185559950271

/-! ## A159068.P13718859001125474865

`abs(A159553(n+1)+A001489(n+1))`
-/

namespace A159068.P13718859001125474865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159553 (n + 1) + A001489 (n + 1)|

end

end A159068.P13718859001125474865

/-! ## A159068.P12865929209885042483

`abs(A159553(n+1)+A051494(A005408(n)))`
-/

namespace A159068.P12865929209885042483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159553 (n + 1) + A051494 (A005408 n).toNat|

end

end A159068.P12865929209885042483

/-! ## A159068.P5903494752555273291

`(A159553(n+1)+A001489(n+1))*A000108(gcd(n, n+1))`
-/

namespace A159068.P5903494752555273291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159553 (n + 1) + A001489 (n + 1)) * A000108 (Nat.gcd n (n + 1))

end

end A159068.P5903494752555273291

/-!
# A159069: a(n) = A159068(n)/n.

The programs for A159069, there is no canonical definition to state claims against.
-/

/-! ## A159069.P4933044186505260672

`A159068(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159069.P4933044186505260672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159068 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A159069.P4933044186505260672

/-! ## A159069.P15603677492186484417

`A159554(n+1)-1`
-/

namespace A159069.P15603677492186484417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159554 (n + 1) - 1

end

end A159069.P15603677492186484417

/-! ## A159069.P12801795649891283197

`A159553(n+1)/(n+1)-1`
-/

namespace A159069.P12801795649891283197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159553 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A159069.P12801795649891283197

/-! ## A159069.P12858822193141456172

`(n+1)^A033880(Δ[A130568(n)])*A159068(n+1)`
-/

namespace A159069.P12858822193141456172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A033880 (f1 (n + 1) - f1 n).toNat : ℤ) * (A159068 (n + 1) : ℚ)

end

end A159069.P12858822193141456172

/-! ## A159069.P13295038348994032872

`A033880(A006519(n+1))+A159553(n+1)/(n+1)`
-/

namespace A159069.P13295038348994032872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033880 (A006519 (n + 1)).toNat : ℚ) + (A159553 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A159069.P13295038348994032872

/-! ## A159069.P13507312710230497151

`A008683(A065091(n+1))+A159553(n+1)/(n+1)`
-/

namespace A159069.P13507312710230497151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A065091 (n + 1)).toNat : ℚ) + (A159553 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A159069.P13507312710230497151

/-!
# A159070: Count of numbers k in the range 1 < k <= n such that set of proper divisors of k is a subset of the set of proper divisors of n.

The programs for A159070, the canonical program `A159070.P14087736070823545534` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159070 has offset 1).

The definition of A159070 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A159070.P14087736070823545534

`A158973(n+1)-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A159070

/-- `A158973(n+1)-1` -/
def P14087736070823545534.Spec : Prop :=
  ∀ n, P14087736070823545534.a n = A159070 (n + 1)

theorem P14087736070823545534.correct : P14087736070823545534.Spec := by
  intro n
  simp only [A159070, Nat.add_sub_cancel]

end A159070

/-! ## A159070.P32145647386974617

`n-A158974(n+1)`
-/

namespace A159070.P32145647386974617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A158974 (n + 1)

end

end A159070.P32145647386974617

namespace A159070

/-- `n-A158974(n+1)` -/
def P32145647386974617.Spec : Prop :=
  ∀ n, P32145647386974617.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P13539925253109439349

`A023443(A158973(n+1))`
-/

namespace A159070.P13539925253109439349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A158973 (n + 1)).toNat

end

end A159070.P13539925253109439349

namespace A159070

/-- `A023443(A158973(n+1))` -/
def P13539925253109439349.Spec : Prop :=
  ∀ n, P13539925253109439349.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P320063781532619371

`A057428(n+1)+A158973(n+1)`
-/

namespace A159070.P320063781532619371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A158973 (n + 1)

end

end A159070.P320063781532619371

namespace A159070

/-- `A057428(n+1)+A158973(n+1)` -/
def P320063781532619371.Spec : Prop :=
  ∀ n, P320063781532619371.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P15104818636995937357

`-A158974(n+1)%A000040(n+1)+n`
-/

namespace A159070.P15104818636995937357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A158974 (n + 1)) (A000040 (n + 1)) + (n : ℤ)

end

end A159070.P15104818636995937357

namespace A159070

/-- `-A158974(n+1)%A000040(n+1)+n` -/
def P15104818636995937357.Spec : Prop :=
  ∀ n, P15104818636995937357.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P9115712998697662985

`A032741(n+1)+A004788(n)`
-/

namespace A159070.P9115712998697662985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + A004788 n

end

end A159070.P9115712998697662985

namespace A159070

/-- `A032741(n+1)+A004788(n)` -/
def P9115712998697662985.Spec : Prop :=
  ∀ n, P9115712998697662985.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P7265139402906809270

`A004788(n)+Δ[A006218(n)]-1`
-/

namespace A159070.P7265139402906809270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 n + (f1 (n + 1) - f1 n - 1)

end

end A159070.P7265139402906809270

namespace A159070

/-- `A004788(n)+Δ[A006218(n)]-1` -/
def P7265139402906809270.Spec : Prop :=
  ∀ n, P7265139402906809270.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P5104117919931512951

`A000005(n+1)+A004788(n)-1`
-/

namespace A159070.P5104117919931512951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A004788 n - 1)

end

end A159070.P5104117919931512951

namespace A159070

/-- `A000005(n+1)+A004788(n)-1` -/
def P5104117919931512951.Spec : Prop :=
  ∀ n, P5104117919931512951.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P17409844049484383634

`A004788(n)-A049820(n+1)+n`
-/

namespace A159070.P17409844049484383634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 n - A049820 (n + 1) + (n : ℤ)

end

end A159070.P17409844049484383634

namespace A159070

/-- `A004788(n)-A049820(n+1)+n` -/
def P17409844049484383634.Spec : Prop :=
  ∀ n, P17409844049484383634.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P9631099925119226276

`A061395(A008578(A158973(n+1))²)`
-/

namespace A159070.P9631099925119226276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A008578 (A158973 (n + 1)).toNat ^ 2).toNat

end

end A159070.P9631099925119226276

namespace A159070

/-- `A061395(A008578(A158973(n+1))²)` -/
def P9631099925119226276.Spec : Prop :=
  ∀ n, P9631099925119226276.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P11461410139955124845

`A070198(n)%A158973(n+1)`
-/

namespace A159070.P11461410139955124845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A158973 (n + 1))

end

end A159070.P11461410139955124845

namespace A159070

/-- `A070198(n)%A158973(n+1)` -/
def P11461410139955124845.Spec : Prop :=
  ∀ n, P11461410139955124845.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P4125839936099090042

`A079782(n+1)%A158973(n+1)`
-/

namespace A159070.P4125839936099090042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A158973 (n + 1))

end

end A159070.P4125839936099090042

namespace A159070

/-- `A079782(n+1)%A158973(n+1)` -/
def P4125839936099090042.Spec : Prop :=
  ∀ n, P4125839936099090042.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P16195914915809682242

`A083685(n+1)%A158973(n+1)`
-/

namespace A159070.P16195914915809682242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A158973 (n + 1))

end

end A159070.P16195914915809682242

namespace A159070

/-- `A083685(n+1)%A158973(n+1)` -/
def P16195914915809682242.Spec : Prop :=
  ∀ n, P16195914915809682242.a n = A159070 (n + 1)

end A159070

/-! ## A159070.P6914936685744251387

`A121934(n+1)%A158973(n+1)`
-/

namespace A159070.P6914936685744251387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A158973 (n + 1))

end

end A159070.P6914936685744251387

namespace A159070

/-- `A121934(n+1)%A158973(n+1)` -/
def P6914936685744251387.Spec : Prop :=
  ∀ n, P6914936685744251387.a n = A159070 (n + 1)

end A159070

/-!
# A159071: Primes which are the sum of 6 consecutive triangular numbers A000217.

The programs for A159071, there is no canonical definition to state claims against.
-/

/-! ## A159071.P101274812141649176

`∩[A269414(n+1), A201722(n+1)]`
-/

namespace A159071.P101274812141649176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159071.P101274812141649176

/-! ## A159071.P5754021475300338179

`∩[A107007(n+1), A201722(n+1)]`
-/

namespace A159071.P5754021475300338179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159071.P5754021475300338179

/-! ## A159071.P13005796460180379330

`∩[A168539(n+1), A201722(n+1)]`
-/

namespace A159071.P13005796460180379330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159071.P13005796460180379330

/-! ## A159071.P18376253320943630270

`p?[3*(n+2)²+8]`
-/

namespace A159071.P18376253320943630270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2) ^ 2 + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A159071.P18376253320943630270

/-! ## A159071.P821776895500757402

`or(1, p?[A201722(n+1)])`
-/

namespace A159071.P821776895500757402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A159071.P821776895500757402

/-! ## A159071.P6037585756304987000

`∏{p}[p?[A201722(2*(n+1))], #]`
-/

namespace A159071.P6037585756304987000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201722 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A159071.P6037585756304987000

/-! ## A159071.P239487769778110458

`record[p?[A201722(A286378(n))]]`
-/

namespace A159071.P239487769778110458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201722 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159071.P239487769778110458

/-! ## A159071.P461194985436363366

`record[p?[A201722(A323889(n))]]`
-/

namespace A159071.P461194985436363366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201722 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159071.P461194985436363366

/-! ## A159071.P6512582419116318366

`p?[A201722(n+1)]%A017345(n)`
-/

namespace A159071.P6512582419116318366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017345 n)

end

end A159071.P6512582419116318366

/-!
# A159072: Count of numbers k in the range 1<=k<= n such that set of proper divisors of k is not a subset of the set of the proper divisors of n.

The programs for A159072, there is no canonical definition to state claims against.
-/

/-! ## A159072.P5240547382554720586

`A158974(n+1)+1`
-/

namespace A159072.P5240547382554720586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158974 (n + 1) + 1

end

end A159072.P5240547382554720586

/-! ## A159072.P2903387344620976004

`1-A159070(n+1)+n`
-/

namespace A159072.P2903387344620976004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A159070 (n + 1) + (n : ℤ)

end

end A159072.P2903387344620976004

/-! ## A159072.P7988209280460352248

`2-A158973(n+1)+n`
-/

namespace A159072.P7988209280460352248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A158973 (n + 1) + (n : ℤ)

end

end A159072.P7988209280460352248

/-! ## A159072.P17778204916675847755

`A022958(A158973(n+1))+n`
-/

namespace A159072.P17778204916675847755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A158973 (n + 1)).toNat + (n : ℤ)

end

end A159072.P17778204916675847755

/-! ## A159072.P12228952891575244325

`A062968(n+1)-A004788(n)`
-/

namespace A159072.P12228952891575244325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A004788 n

end

end A159072.P12228952891575244325

/-! ## A159072.P17552450568987405216

`A004736(A158973(n+1)+∑[n])`
-/

namespace A159072.P17552450568987405216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A158973 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A159072.P17552450568987405216

/-! ## A159072.P3950635250490588195

`A049820(n+1)+1-A004788(n)`
-/

namespace A159072.P3950635250490588195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (1 - A004788 n)

end

end A159072.P3950635250490588195

/-! ## A159072.P8015792800787616242

`2-(A004788(n)+A000005(n+1))+n`
-/

namespace A159072.P8015792800787616242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A004788 n + A000005 (n + 1)) + (n : ℤ)

end

end A159072.P8015792800787616242

/-!
# A159073: Sum of the k in the range 1

The programs for A159073, there is no canonical definition to state claims against.
-/

/-! ## A159073.P16849572862059688696

`A158975(n+1)-1`
-/

namespace A159073.P16849572862059688696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158975 (n + 1) - 1

end

end A159073.P16849572862059688696

/-! ## A159073.P17482221286704983491

`∑[n+1]-A159074(n+1)`
-/

namespace A159073.P17482221286704983491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A159074 (n + 1)

end

end A159073.P17482221286704983491

/-! ## A159073.P14836784992983193339

`∑[n]-A158976(n+1)+n`
-/

namespace A159073.P14836784992983193339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A158976 (n + 1) + (n : ℤ)

end

end A159073.P14836784992983193339

/-! ## A159073.P1589382809911869844

`A000096(n)-A158976(n+1)`
-/

namespace A159073.P1589382809911869844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A158976 (n + 1)

end

end A159073.P1589382809911869844

/-! ## A159073.P4330182907153162090

`Δ[A005581(n)]-A158976(n+1)`
-/

namespace A159073.P4330182907153162090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A158976 (n + 1)

end

end A159073.P4330182907153162090

/-! ## A159073.P14257110543892246672

`A023443(A158975(n+1))`
-/

namespace A159073.P14257110543892246672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A158975 (n + 1)).toNat

end

end A159073.P14257110543892246672

/-! ## A159073.P2101033038967020568

`A023444(A158975(n+1)+1)`
-/

namespace A159073.P2101033038967020568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A158975 (n + 1) + 1).toNat

end

end A159073.P2101033038967020568

/-! ## A159073.P13326813400349885244

`A289207(A158975(n+1)+1)`
-/

namespace A159073.P13326813400349885244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A158975 (n + 1) + 1).toNat

end

end A159073.P13326813400349885244

/-! ## A159073.P15176968362270307521

`A267182(2*A158975(n+1))`
-/

namespace A159073.P15176968362270307521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * A158975 (n + 1)).toNat

end

end A159073.P15176968362270307521

/-!
# A159074: Sum of the k in the range 1<=k<=n such that set of proper divisors of k is not a subset of the set of proper divisors of n.

The programs for A159074, there is no canonical definition to state claims against.
-/

/-! ## A159074.P7861672263105295184

`A158976(n+1)+1`
-/

namespace A159074.P7861672263105295184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158976 (n + 1) + 1

end

end A159074.P7861672263105295184

/-! ## A159074.P17518841112130028310

`∑[n+1]-A159073(n+1)`
-/

namespace A159074.P17518841112130028310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A159073 (n + 1)

end

end A159074.P17518841112130028310

/-! ## A159074.P15451558743682035457

`∑[n+1]+1-A158975(n+1)`
-/

namespace A159074.P15451558743682035457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A158975 (n + 1))

end

end A159074.P15451558743682035457

/-! ## A159074.P16169529711447450677

`A000096(n)+1-A159073(n+1)`
-/

namespace A159074.P16169529711447450677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A159073 (n + 1))

end

end A159074.P16169529711447450677

/-! ## A159074.P14154236993981156761

`A000124(n+1)-A158975(n+1)`
-/

namespace A159074.P14154236993981156761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) - A158975 (n + 1)

end

end A159074.P14154236993981156761

/-!
# A159075: a(1) = -1, otherwise a(n) = 0.

The programs for A159075, the canonical program `A159075.P2143252049747790800` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159075 has offset 0).

The definition of A159075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159075.P2143252049747790800

`-char[1]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159075

/-- `-char[1]` -/
def P2143252049747790800.Spec : Prop :=
  ∀ n, P2143252049747790800.a n = A159075 n

theorem P2143252049747790800.correct : P2143252049747790800.Spec := by
  intro n
  simp only [A159075]

end A159075

/-!
# A159076: A008474(n) + 2.

The programs for A159076, the canonical program `A159076.P11277742633857002017` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159076 has offset 1).

The definition of A159076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008474, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A159076.P11277742633857002017

`A008474(n+1)+2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A159076

/-- `A008474(n+1)+2` -/
def P11277742633857002017.Spec : Prop :=
  ∀ n, P11277742633857002017.a n = A159076 (n + 1)

theorem P11277742633857002017.correct : P11277742633857002017.Spec := by
  intro n
  simp only [A159076, Nat.add_sub_cancel]

end A159076

/-! ## A159076.P16680063923854419586

`∑{p}[n+1, #]+∑{e}[n+1, #]+2`
-/

namespace A159076.P16680063923854419586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 2)

end

end A159076.P16680063923854419586

namespace A159076

/-- `∑{p}[n+1, #]+∑{e}[n+1, #]+2` -/
def P16680063923854419586.Spec : Prop :=
  ∀ n, (P16680063923854419586.a n : ℤ) = A159076 (n + 1)

end A159076

/-! ## A159076.P15297479953253959707

`∑{p}[n+1, #]+A001222(n+1)+2`
-/

namespace A159076.P15297479953253959707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + (A001222 (n + 1) + 2)

end

end A159076.P15297479953253959707

namespace A159076

/-- `∑{p}[n+1, #]+A001222(n+1)+2` -/
def P15297479953253959707.Spec : Prop :=
  ∀ n, P15297479953253959707.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P6994946275433664669

`A074372(n+1)+A073093(n+1)`
-/

namespace A159076.P6994946275433664669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) + A073093 (n + 1)

end

end A159076.P6994946275433664669

namespace A159076

/-- `A074372(n+1)+A073093(n+1)` -/
def P6994946275433664669.Spec : Prop :=
  ∀ n, P6994946275433664669.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P6728894353459920608

`A254340(n+1)-A075795(n+1)`
-/

namespace A159076.P6728894353459920608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (n + 1) - A075795 (n + 1)

end

end A159076.P6728894353459920608

namespace A159076

/-- `A254340(n+1)-A075795(n+1)` -/
def P6728894353459920608.Spec : Prop :=
  ∀ n, P6728894353459920608.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P6448278743440231018

`A001222(n+1)+Δ[A024924(n)]+2`
-/

namespace A159076.P6448278743440231018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (f1 (n + 1) - f1 n + 2)

end

end A159076.P6448278743440231018

namespace A159076

/-- `A001222(n+1)+Δ[A024924(n)]+2` -/
def P6448278743440231018.Spec : Prop :=
  ∀ n, P6448278743440231018.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P7678136720054251221

`A008472(n+1)+Δ[A022559(n)]+2`
-/

namespace A159076.P7678136720054251221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (f1 (n + 1) - f1 n + 2)

end

end A159076.P7678136720054251221

namespace A159076

/-- `A008472(n+1)+Δ[A022559(n)]+2` -/
def P7678136720054251221.Spec : Prop :=
  ∀ n, P7678136720054251221.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P14948405017479319444

`A001222(n+1)+A008472(n+1)+2`
-/

namespace A159076.P14948405017479319444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A008472 (n + 1) + 2)

end

end A159076.P14948405017479319444

namespace A159076

/-- `A001222(n+1)+A008472(n+1)+2` -/
def P14948405017479319444.Spec : Prop :=
  ∀ n, P14948405017479319444.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P6278185485724387126

`A055631(n+1)+A080256(n+1)+2`
-/

namespace A159076.P6278185485724387126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1) + (A080256 (n + 1) + 2)

end

end A159076.P6278185485724387126

namespace A159076

/-- `A055631(n+1)+A080256(n+1)+2` -/
def P6278185485724387126.Spec : Prop :=
  ∀ n, P6278185485724387126.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P16395896095268060080

`A056169(n+1)+A338038(n+1)+2`
-/

namespace A159076.P16395896095268060080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + (A338038 (n + 1) + 2)

end

end A159076.P16395896095268060080

namespace A159076

/-- `A056169(n+1)+A338038(n+1)+2` -/
def P16395896095268060080.Spec : Prop :=
  ∀ n, P16395896095268060080.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P12439914134972340903

`A064800(n+1)+2-A076694(n+1)`
-/

namespace A159076.P12439914134972340903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) + (2 - A076694 (n + 1))

end

end A159076.P12439914134972340903

namespace A159076

/-- `A064800(n+1)+2-A076694(n+1)` -/
def P12439914134972340903.Spec : Prop :=
  ∀ n, P12439914134972340903.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P17851384946004146766

`A075653(n+1)+2-A069345(n+1)`
-/

namespace A159076.P17851384946004146766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) + (2 - A069345 (n + 1))

end

end A159076.P17851384946004146766

namespace A159076

/-- `A075653(n+1)+2-A069345(n+1)` -/
def P17851384946004146766.Spec : Prop :=
  ∀ n, P17851384946004146766.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P15218639899979330094

`A349215(n+1)+2-A135767(n+1)`
-/

namespace A159076.P15218639899979330094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349215 (n + 1) + (2 - A135767 (n + 1))

end

end A159076.P15218639899979330094

namespace A159076

/-- `A349215(n+1)+2-A135767(n+1)` -/
def P15218639899979330094.Spec : Prop :=
  ∀ n, P15218639899979330094.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P16087054328373624498

`A074372(n+1)+A001222(2*(n+1))`
-/

namespace A159076.P16087054328373624498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) + A001222 (2 * (n + 1))

end

end A159076.P16087054328373624498

namespace A159076

/-- `A074372(n+1)+A001222(2*(n+1))` -/
def P16087054328373624498.Spec : Prop :=
  ∀ n, P16087054328373624498.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P15288687793748534529

`A001222(n+1)+A254340(n+1)-n`
-/

namespace A159076.P15288687793748534529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A254340 (n + 1) - (n : ℤ))

end

end A159076.P15288687793748534529

namespace A159076

/-- `A001222(n+1)+A254340(n+1)-n` -/
def P15288687793748534529.Spec : Prop :=
  ∀ n, P15288687793748534529.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P2594345372179143253

`A001222(n+1)+sqrt(A235323(n+1))+2`
-/

namespace A159076.P2594345372179143253
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℝ) + (Real.sqrt (A235323 (n + 1) : ℝ) + 2)

end

end A159076.P2594345372179143253

namespace A159076

/-- `A001222(n+1)+sqrt(A235323(n+1))+2` -/
def P2594345372179143253.Spec : Prop :=
  ∀ n, P2594345372179143253.a n = (A159076 (n + 1) : ℝ)

end A159076

/-! ## A159076.P439530506135004516

`A008472(n+1)+log2(A061142(n+1))+2`
-/

namespace A159076.P439530506135004516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℝ) + (Real.logb 2 (A061142 (n + 1) : ℝ) + 2)

end

end A159076.P439530506135004516

namespace A159076

/-- `A008472(n+1)+log2(A061142(n+1))+2` -/
def P439530506135004516.Spec : Prop :=
  ∀ n, P439530506135004516.a n = (A159076 (n + 1) : ℝ)

end A159076

/-! ## A159076.P14916089999790201886

`A001222(n+1)+A001414(A007947(n+1))+2`
-/

namespace A159076.P14916089999790201886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A001414 (A007947 (n + 1)).toNat + 2)

end

end A159076.P14916089999790201886

namespace A159076

/-- `A001222(n+1)+A001414(A007947(n+1))+2` -/
def P14916089999790201886.Spec : Prop :=
  ∀ n, P14916089999790201886.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P1859022682763875356

`A023888(n+1)+A073093(n+1)-A284117(n+1)`
-/

namespace A159076.P1859022682763875356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) + (A073093 (n + 1) - A284117 (n + 1))

end

end A159076.P1859022682763875356

namespace A159076

/-- `A023888(n+1)+A073093(n+1)-A284117(n+1)` -/
def P1859022682763875356.Spec : Prop :=
  ∀ n, P1859022682763875356.a n = A159076 (n + 1)

end A159076

/-! ## A159076.P13737285904382888122

`A008472(n+1)+A001222(Δ[A001844(n)])`
-/

namespace A159076.P13737285904382888122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A001222 (f1 (n + 1) - f1 n).toNat

end

end A159076.P13737285904382888122

namespace A159076

/-- `A008472(n+1)+A001222(Δ[A001844(n)])` -/
def P13737285904382888122.Spec : Prop :=
  ∀ n, P13737285904382888122.a n = A159076 (n + 1)

end A159076

/-!
# A159077: a(n) = A008475(n) + 1.

The programs for A159077, the canonical program `A159077.P14146349899783805996` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159077 has offset 1).

The definition of A159077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A159077.P14146349899783805996

`A008475(n+1)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A159077

/-- `A008475(n+1)+1` -/
def P14146349899783805996.Spec : Prop :=
  ∀ n, P14146349899783805996.a n = A159077 (n + 1)

theorem P14146349899783805996.correct : P14146349899783805996.Spec := by
  intro n
  simp only [A159077, Nat.add_sub_cancel]

end A159077

/-! ## A159077.P1522369727559759051

`A000203(n+1)-A178636(n+1)`
-/

namespace A159077.P1522369727559759051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A178636 (n + 1)

end

end A159077.P1522369727559759051

namespace A159077

/-- `A000203(n+1)-A178636(n+1)` -/
def P1522369727559759051.Spec : Prop :=
  ∀ n, P1522369727559759051.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P16882793093687270767

`∑{p}[n+1, #^val(n+1, #)]+1`
-/

namespace A159077.P16882793093687270767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p + 1

end

end A159077.P16882793093687270767

namespace A159077

/-- `∑{p}[n+1, #^val(n+1, #)]+1` -/
def P16882793093687270767.Spec : Prop :=
  ∀ n, (P16882793093687270767.a n : ℤ) = A159077 (n + 1)

end A159077

/-! ## A159077.P15182448988966656808

`2-A086664(n+1)+n`
-/

namespace A159077.P15182448988966656808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A086664 (n + 1) + (n : ℤ)

end

end A159077.P15182448988966656808

namespace A159077

/-- `2-A086664(n+1)+n` -/
def P15182448988966656808.Spec : Prop :=
  ∀ n, P15182448988966656808.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P8913661430847085222

`A065475(A222416(n+1))`
-/

namespace A159077.P8913661430847085222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A222416 (n + 1)).toNat

end

end A159077.P8913661430847085222

namespace A159077

/-- `A065475(A222416(n+1))` -/
def P8913661430847085222.Spec : Prop :=
  ∀ n, P8913661430847085222.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P11657586958636259720

`A222416(n+1)+A057427(n)`
-/

namespace A159077.P11657586958636259720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1) + A057427 n

end

end A159077.P11657586958636259720

namespace A159077

/-- `A222416(n+1)+A057427(n)` -/
def P11657586958636259720.Spec : Prop :=
  ∀ n, P11657586958636259720.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P6383451886492517792

`A222416(n+1)-A057428(n)`
-/

namespace A159077.P6383451886492517792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1) - A057428 n

end

end A159077.P6383451886492517792

namespace A159077

/-- `A222416(n+1)-A057428(n)` -/
def P6383451886492517792.Spec : Prop :=
  ∀ n, P6383451886492517792.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P16586245914816758984

`A078771(n+1)+A036288(n+1)`
-/

namespace A159077.P16586245914816758984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1) + A036288 (n + 1)

end

end A159077.P16586245914816758984

namespace A159077

/-- `A078771(n+1)+A036288(n+1)` -/
def P16586245914816758984.Spec : Prop :=
  ∀ n, P16586245914816758984.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P1662045339008084070

`A222416(n+1)+1-A000007(n)`
-/

namespace A159077.P1662045339008084070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1) + (1 - A000007 n)

end

end A159077.P1662045339008084070

namespace A159077

/-- `A222416(n+1)+1-A000007(n)` -/
def P1662045339008084070.Spec : Prop :=
  ∀ n, P1662045339008084070.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P5835519080501604012

`A088580(n+1)-A167515(n+1)`
-/

namespace A159077.P5835519080501604012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A167515 (n + 1)

end

end A159077.P5835519080501604012

namespace A159077

/-- `A088580(n+1)-A167515(n+1)` -/
def P5835519080501604012.Spec : Prop :=
  ∀ n, P5835519080501604012.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P4196299911440538623

`A222416(n+1)+n/A028310(n)`
-/

namespace A159077.P4196299911440538623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222416 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A159077.P4196299911440538623

namespace A159077

/-- `A222416(n+1)+n/A028310(n)` -/
def P4196299911440538623.Spec : Prop :=
  ∀ n, P4196299911440538623.a n = (A159077 (n + 1) : ℚ)

end A159077

/-! ## A159077.P11764340380432313558

`A001414(n+1)+A078771(n+1)+1`
-/

namespace A159077.P11764340380432313558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A078771 (n + 1) + 1)

end

end A159077.P11764340380432313558

namespace A159077

/-- `A001414(n+1)+A078771(n+1)+1` -/
def P11764340380432313558.Spec : Prop :=
  ∀ n, P11764340380432313558.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P18299631093853432917

`A067240(n+1)+A171453(n+1)+1`
-/

namespace A159077.P18299631093853432917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067240 (n + 1) + (A171453 (n + 1) + 1)

end

end A159077.P18299631093853432917

namespace A159077

/-- `A067240(n+1)+A171453(n+1)+1` -/
def P18299631093853432917.Spec : Prop :=
  ∀ n, P18299631093853432917.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P2547282089745072276

`A063956(n+1)+A286875(n+1)+1`
-/

namespace A159077.P2547282089745072276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063956 (n + 1) + (A286875 (n + 1) + 1)

end

end A159077.P2547282089745072276

namespace A159077

/-- `A063956(n+1)+A286875(n+1)+1` -/
def P2547282089745072276.Spec : Prop :=
  ∀ n, P2547282089745072276.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P2399381654455446644

`A000203(n+1)+1-A167515(n+1)`
-/

namespace A159077.P2399381654455446644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A167515 (n + 1))

end

end A159077.P2399381654455446644

namespace A159077

/-- `A000203(n+1)+1-A167515(n+1)` -/
def P2399381654455446644.Spec : Prop :=
  ∀ n, P2399381654455446644.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P1682923057220034514

`A023888(n+1)+A035321(n+1)-A178636(n+1)`
-/

namespace A159077.P1682923057220034514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) + (A035321 (n + 1) - A178636 (n + 1))

end

end A159077.P1682923057220034514

namespace A159077

/-- `A023888(n+1)+A035321(n+1)-A178636(n+1)` -/
def P1682923057220034514.Spec : Prop :=
  ∀ n, P1682923057220034514.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P13594505325458419879

`A222416(n+1)+A001221(A000961(n+1))`
-/

namespace A159077.P13594505325458419879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1) + A001221 (A000961 (n + 1)).toNat

end

end A159077.P13594505325458419879

namespace A159077

/-- `A222416(n+1)+A001221(A000961(n+1))` -/
def P13594505325458419879.Spec : Prop :=
  ∀ n, P13594505325458419879.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P14701931254526558247

`A304037(A064988(n+1))+1`
-/

namespace A159077.P14701931254526558247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304037 (A064988 (n + 1)).toNat + 1

end

end A159077.P14701931254526558247

namespace A159077

/-- `A304037(A064988(n+1))+1` -/
def P14701931254526558247.Spec : Prop :=
  ∀ n, P14701931254526558247.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P8798185689845168677

`ceil(log2(A064084(n+1)))+1`
-/

namespace A159077.P8798185689845168677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A064084 (n + 1) : ℝ)⌉ + 1

end

end A159077.P8798185689845168677

namespace A159077

/-- `ceil(log2(A064084(n+1)))+1` -/
def P8798185689845168677.Spec : Prop :=
  ∀ n, P8798185689845168677.a n = A159077 (n + 1)

end A159077

/-! ## A159077.P2782376083814254590

`and(A118883(n+1), A222416(n+1))+1`
-/

namespace A159077.P2782376083814254590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A222416 (n + 1)) + 1

end

end A159077.P2782376083814254590

namespace A159077

/-- `and(A118883(n+1), A222416(n+1))+1` -/
def P2782376083814254590.Spec : Prop :=
  ∀ n, P2782376083814254590.a n = A159077 (n + 1)

end A159077

/-!
# A159079: Primes p such that |p^3 - p^2 - p - 4| is prime.

The programs for A159079, there is no canonical definition to state claims against.
-/

/-! ## A159079.P11528020204672298397

`∩[A024785(n+1), A164087(A325511(n+1))]`
-/

namespace A159079.P11528020204672298397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164087 (A325511 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159079.P11528020204672298397

/-!
# A159080: Primes p such that p^3 - p^2 - p - 6 is also prime.

The programs for A159080, there is no canonical definition to state claims against.
-/

/-! ## A159080.P780724047814358248

`record[p?[A020710(n)-A347728(n)]]`
-/

namespace A159080.P780724047814358248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n - A347728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159080.P780724047814358248

/-! ## A159080.P11483845851677044395

`∩[A045397(n+1), A329996(n+1)]`
-/

namespace A159080.P11483845851677044395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159080.P11483845851677044395

/-! ## A159080.P5666146206515486321

`p?[or(∑{d}[n+1, #%2], A327534(3*n+1))]`
-/

namespace A159080.P5666146206515486321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℤ) (A327534 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159080.P5666146206515486321

/-!
# A159081: Let d be the largest element of A008578 which divides n, then a(n) is the position of d in A008578.

The programs for A159081, the canonical program `A159081.P2427931122256216172` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159081 has offset 1).

The definition of A159081 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A049084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A159081.P2427931122256216172

`A049084(A006530(n+1))+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A159081

/-- `A049084(A006530(n+1))+1` -/
def P2427931122256216172.Spec : Prop :=
  ∀ n, P2427931122256216172.a n = A159081 (n + 1)

theorem P2427931122256216172.correct : P2427931122256216172.Spec := by
  intro n
  simp only [A159081, Nat.add_sub_cancel]

end A159081

/-! ## A159081.P7329163755382383767

`1+A061395(n+1)`
-/

namespace A159081.P7329163755382383767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A061395 (n + 1)

end

end A159081.P7329163755382383767

namespace A159081

/-- `1+A061395(n+1)` -/
def P7329163755382383767.Spec : Prop :=
  ∀ n, P7329163755382383767.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P550601169200240419

`2-A243291(n+1)+n`
-/

namespace A159081.P550601169200240419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A243291 (n + 1) + (n : ℤ)

end

end A159081.P550601169200240419

namespace A159081

/-- `2-A243291(n+1)+n` -/
def P550601169200240419.Spec : Prop :=
  ∀ n, P550601169200240419.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P9993070191602619153

`A065770(∏{p}[n+1, #])+1`
-/

namespace A159081.P9993070191602619153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A159081.P9993070191602619153

namespace A159081

/-- `A065770(∏{p}[n+1, #])+1` -/
def P9993070191602619153.Spec : Prop :=
  ∀ n, P9993070191602619153.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P16838814973790658112

`A263297(∏{p}[n+1, #])+1`
-/

namespace A159081.P16838814973790658112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A159081.P16838814973790658112

namespace A159081

/-- `A263297(∏{p}[n+1, #])+1` -/
def P16838814973790658112.Spec : Prop :=
  ∀ n, P16838814973790658112.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P16066054883544747716

`A297113(∏{p}[n+1, #])+1`
-/

namespace A159081.P16066054883544747716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A159081.P16066054883544747716

namespace A159081

/-- `A297113(∏{p}[n+1, #])+1` -/
def P16066054883544747716.Spec : Prop :=
  ∀ n, P16066054883544747716.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P6560245605863304930

`A335603(∏{p}[n+1, #])+1`
-/

namespace A159081.P6560245605863304930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A159081.P6560245605863304930

namespace A159081

/-- `A335603(∏{p}[n+1, #])+1` -/
def P6560245605863304930.Spec : Prop :=
  ∀ n, P6560245605863304930.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P17789984766729187553

`1+a(A064989(n+1)-1)` with `a(0)=1`
-/

namespace A159081.P17789984766729187553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A064989 (n + 1) - 1).toNat

end

end A159081.P17789984766729187553

namespace A159081

/-- `1+a(A064989(n+1)-1)` -/
def P17789984766729187553.Spec : Prop :=
  ∀ n, (P17789984766729187553.a n : ℤ) = A159081 (n + 1)

end A159081

/-! ## A159081.P12165236885865965182

`A139169(∏{p}[n+1, #])%(n+1)+1`
-/

namespace A159081.P12165236885865965182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139169 (∏ p ∈ Nat.primeFactors (f1 n), p)) (n + 1 : ℤ) + 1

end

end A159081.P12165236885865965182

namespace A159081

/-- `A139169(∏{p}[n+1, #])%(n+1)+1` -/
def P12165236885865965182.Spec : Prop :=
  ∀ n, P12165236885865965182.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P16607440030624025505

`A003977(A006530(n+1))`
-/

namespace A159081.P16607440030624025505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A006530 (n + 1)).toNat

end

end A159081.P16607440030624025505

namespace A159081

/-- `A003977(A006530(n+1))` -/
def P16607440030624025505.Spec : Prop :=
  ∀ n, P16607440030624025505.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P6185062513353289236

`A000720(A117366(n+1))`
-/

namespace A159081.P6185062513353289236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A117366 (n + 1)).toNat

end

end A159081.P6185062513353289236

namespace A159081

/-- `A000720(A117366(n+1))` -/
def P6185062513353289236.Spec : Prop :=
  ∀ n, P6185062513353289236.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P16481585033839400132

`A328219(A053585(n+1))`
-/

namespace A159081.P16481585033839400132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328219 (A053585 (n + 1)).toNat

end

end A159081.P16481585033839400132

namespace A159081

/-- `A328219(A053585(n+1))` -/
def P16481585033839400132.Spec : Prop :=
  ∀ n, P16481585033839400132.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P17271802157336841386

`A328219(A323129(n+1))`
-/

namespace A159081.P17271802157336841386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328219 (A323129 (n + 1)).toNat

end

end A159081.P17271802157336841386

namespace A159081

/-- `A328219(A323129(n+1))` -/
def P17271802157336841386.Spec : Prop :=
  ∀ n, P17271802157336841386.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P13367797900236750720

`A328219(A345941(n+1))`
-/

namespace A159081.P13367797900236750720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328219 (A345941 (n + 1)).toNat

end

end A159081.P13367797900236750720

namespace A159081

/-- `A328219(A345941(n+1))` -/
def P13367797900236750720.Spec : Prop :=
  ∀ n, P13367797900236750720.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P12663234948564187152

`A064741(A064664(n+1))+1`
-/

namespace A159081.P12663234948564187152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064741 (A064664 (n + 1)).toNat + 1

end

end A159081.P12663234948564187152

namespace A159081

/-- `A064741(A064664(n+1))+1` -/
def P12663234948564187152.Spec : Prop :=
  ∀ n, P12663234948564187152.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P12432610727939194239

`A065770(A088835(n+1))+1`
-/

namespace A159081.P12432610727939194239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A088835 (n + 1)).toNat + 1

end

end A159081.P12432610727939194239

namespace A159081

/-- `A065770(A088835(n+1))+1` -/
def P12432610727939194239.Spec : Prop :=
  ∀ n, P12432610727939194239.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P4185703936886934696

`A083399(n+1)+A079067(n+1)`
-/

namespace A159081.P4185703936886934696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) + A079067 (n + 1)

end

end A159081.P4185703936886934696

namespace A159081

/-- `A083399(n+1)+A079067(n+1)` -/
def P4185703936886934696.Spec : Prop :=
  ∀ n, P4185703936886934696.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P8446205529503890727

`A036234(n+1)-A083721(n+1)`
-/

namespace A159081.P8446205529503890727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A083721 (n + 1)

end

end A159081.P8446205529503890727

namespace A159081

/-- `A036234(n+1)-A083721(n+1)` -/
def P8446205529503890727.Spec : Prop :=
  ∀ n, P8446205529503890727.a n = A159081 (n + 1)

end A159081

/-! ## A159081.P14133853858472838762

`A325134(n+1)-A252736(n+1)`
-/

namespace A159081.P14133853858472838762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325134 (n + 1) - A252736 (n + 1)

end

end A159081.P14133853858472838762

namespace A159081

/-- `A325134(n+1)-A252736(n+1)` -/
def P14133853858472838762.Spec : Prop :=
  ∀ n, P14133853858472838762.a n = A159081 (n + 1)

end A159081

/-!
# A159083: Products of 7 consecutive integers.

The programs for A159083, the canonical program `A159083.P8664816101168653743` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159083 has offset 0).

The definition of A159083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159083.P8664816101168653743

`n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)*(n-6)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159083

/-- `n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)*(n-6)` -/
def P8664816101168653743.Spec : Prop :=
  ∀ n, P8664816101168653743.a n = A159083 n

theorem P8664816101168653743.correct : P8664816101168653743.Spec := by
  intro n
  simp only [A159083]

end A159083

/-! ## A159083.P3211544734950240810

`abs(A023448(n)*A053625(n))`
-/

namespace A159083.P3211544734950240810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023448 n * A053625 n|

end

end A159083.P3211544734950240810

namespace A159083

/-- `abs(A023448(n)*A053625(n))` -/
def P3211544734950240810.Spec : Prop :=
  ∀ n, P3211544734950240810.a n = A159083 n

end A159083

/-! ## A159083.P7099024672672509059

`A023447(n)*A053625(n)-A053625(n)`
-/

namespace A159083.P7099024672672509059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 n * A053625 n - A053625 n

end

end A159083.P7099024672672509059

namespace A159083

/-- `A023447(n)*A053625(n)-A053625(n)` -/
def P7099024672672509059.Spec : Prop :=
  ∀ n, P7099024672672509059.a n = A159083 n

end A159083

/-! ## A159083.P2278712784345688406

`lcm(A052787(n)-A053625(n), A053625(n))`
-/

namespace A159083.P2278712784345688406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052787 n - A053625 n) (A053625 n)

end

end A159083.P2278712784345688406

namespace A159083

/-- `lcm(A052787(n)-A053625(n), A053625(n))` -/
def P2278712784345688406.Spec : Prop :=
  ∀ n, (P2278712784345688406.a n : ℤ) = A159083 n

end A159083

/-! ## A159083.P8204985317581370684

`(A023448(n)*A053625(n))%∑[A027313(n+1)]`
-/

namespace A159083.P8204985317581370684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023448 n * A053625 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159083.P8204985317581370684

namespace A159083

/-- `(A023448(n)*A053625(n))%∑[A027313(n+1)]` -/
def P8204985317581370684.Spec : Prop :=
  ∀ n, P8204985317581370684.a n = A159083 n

end A159083

/-! ## A159083.P9369927286536742735

`(A023448(n)*A053625(n))%A088536(n+1)`
-/

namespace A159083.P9369927286536742735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023448 n * A053625 n) (A088536 (n + 1))

end

end A159083.P9369927286536742735

namespace A159083

/-- `(A023448(n)*A053625(n))%A088536(n+1)` -/
def P9369927286536742735.Spec : Prop :=
  ∀ n, P9369927286536742735.a n = A159083 n

end A159083

/-! ## A159083.P12893926514177295172

`(A023448(n)*A053625(n))%∑[A000142(n)]`
-/

namespace A159083.P12893926514177295172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023448 n * A053625 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159083.P12893926514177295172

namespace A159083

/-- `(A023448(n)*A053625(n))%∑[A000142(n)]` -/
def P12893926514177295172.Spec : Prop :=
  ∀ n, P12893926514177295172.a n = A159083 n

end A159083

/-!
# A159084: Number of permutations of 1..n containing the relative rank sequence { 124563 } at any spacing.

The programs for A159084, there is no canonical definition to state claims against.
-/

/-! ## A159084.P3810818626450053256

`A159117(n+6)+A112395(A213098(n))`
-/

namespace A159084.P3810818626450053256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159117 (n + 6) + A112395 (A213098 n).toNat

end

end A159084.P3810818626450053256

/-!
# A159085: Number of permutations of 1..n containing the relative rank sequence { 124653 } at any spacing.

The programs for A159085, there is no canonical definition to state claims against.
-/

/-! ## A159085.P1025307776037806249

`A159087(n+6)-A180601(A118969(n))`
-/

namespace A159085.P1025307776037806249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159087 (n + 6) - A180601 (A118969 n).toNat

end

end A159085.P1025307776037806249

/-!
# A159088: Number of permutations of 1..n containing the relative rank sequence { 126453 } at any spacing.

The programs for A159088, there is no canonical definition to state claims against.
-/

/-! ## A159088.P6301466005595577872

`A159137(n+6)-A342376(A286592(n+1))`
-/

namespace A159088.P6301466005595577872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159137 (n + 6) - A342376 (A286592 (n + 1)).toNat

end

end A159088.P6301466005595577872

/-!
# A159089: Number of permutations of 1..n containing the relative rank sequence { 132465 } at any spacing.

The programs for A159089, there is no canonical definition to state claims against.
-/

/-! ## A159089.P18227217196839006861

`or(A000005(A016322(n)), A159141(n+6))`
-/

namespace A159089.P18227217196839006861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A016322 n).toNat) (A159141 (n + 6))

end

end A159089.P18227217196839006861

/-!
# A159091: Number of permutations of 1..n containing the relative rank sequence { 132645 } at any spacing.

The programs for A159091, there is no canonical definition to state claims against.
-/

/-! ## A159091.P14697048947954276673

`A159140(n+6)-A241320(A243241(n+1))`
-/

namespace A159091.P14697048947954276673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159140 (n + 6) - A241320 (A243241 (n + 1)).toNat

end

end A159091.P14697048947954276673

/-!
# A159094: Number of permutations of 1..n containing the relative rank sequence { 134562 } at any spacing.

The programs for A159094, there is no canonical definition to state claims against.
-/

/-! ## A159094.P6265473220535177186

`A159138(n+6)+A004137(A323297(n))`
-/

namespace A159094.P6265473220535177186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159138 (n + 6) + A004137 (A323297 n).toNat

end

end A159094.P6265473220535177186

/-!
# A159096: Number of permutations of 1..n containing the relative rank sequence { 134652 } at any spacing.

The programs for A159096, there is no canonical definition to state claims against.
-/

/-! ## A159096.P2823052662952879533

`A241320(A243241(n+1))+A159110(n+6)`
-/

namespace A159096.P2823052662952879533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241320 (A243241 (n + 1)).toNat + A159110 (n + 6)

end

end A159096.P2823052662952879533

