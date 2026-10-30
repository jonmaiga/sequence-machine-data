import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A381000: a(n) = A380999(n)/(n+A380998(n)).

The programs for A381000, there is no canonical definition to state claims against.
-/

/-! ## A381000.P14043145812861648255

`A380999(n+1)/(n+1+A380998(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A381000.P14043145812861648255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380999 (n + 1) : ℚ) / ((n + 1 : ℤ) + A380998 (n + 1) : ℚ)

end

end A381000.P14043145812861648255

/-!
# A381001: Georges Pfeffermann's 1890 bimagic square of order 8, read by rows.

The programs for A381001, there is no canonical definition to state claims against.
-/

/-! ## A381001.P9584940113741578123

`A002024(A132654(n+1))`
-/

namespace A381001.P9584940113741578123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A132654 (n + 1)).toNat

end

end A381001.P9584940113741578123

/-! ## A381001.P13525570989068820081

`A333119(A132677(3*n+1)+A132654(n+1))`
-/

namespace A381001.P13525570989068820081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333119 (A132677 (3 * n + 1) + A132654 (n + 1)).toNat

end

end A381001.P13525570989068820081

/-!
# A381003: Lexicographically earliest sequence with a(0) = 0 and a(n) = a(n + a(n)) - a(n - a(n)) > 0.

The programs for A381003, there is no canonical definition to state claims against.
-/

/-! ## A381003.P13281129391753348774

`A084558(A157177(2*(n+1))%A000079(n))`
-/

namespace A381003.P13281129391753348774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (Int.tmod (A157177 (2 * (n + 1))) (A000079 n)).toNat

end

end A381003.P13281129391753348774

/-! ## A381003.P828527282374610014

`A292595(comp[row(A169861(n))])`
-/

namespace A381003.P828527282374610014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A169861 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292595 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A381003.P828527282374610014

/-! ## A381003.P1181879720662021975

`C(ceil(n/2), A157304(A365673(2*n)))`
-/

namespace A381003.P1181879720662021975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat (A157304 (A365673 (2 * n)).toNat).toNat

end

end A381003.P1181879720662021975

/-! ## A381003.P9967879837882714725

`A050266(A165136(n+1))%(round(n/2)+1)`
-/

namespace A381003.P9967879837882714725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050266 (A165136 (n + 1)).toNat) (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1)

end

end A381003.P9967879837882714725

/-! ## A381003.P13157765106339359620

`gcd(∑[-(n*(-1)^n)], A353846(A135768(n+1)))`
-/

namespace A381003.P13157765106339359620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A353846 (A135768 (n + 1)).toNat)

end

end A381003.P13157765106339359620

/-!
# A381004: Primes ending in 777.

The programs for A381004, there is no canonical definition to state claims against.
-/

/-! ## A381004.P10390487762660057240

`1000*A102343(n+1)+777`
-/

namespace A381004.P10390487762660057240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1000 * A102343 (n + 1) + 777

end

end A381004.P10390487762660057240

/-! ## A381004.P4610728408264160818

`filter[A167282(n+1), A185708(#)]`
-/

namespace A381004.P4610728408264160818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A381004.P4610728408264160818

/-!
# A381005: Ordered short legs of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

The programs for A381005, the canonical program `A381005.P13082903818291903913` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381005 has offset 1).

The definition of A381005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381005.P6993669783272169594

`ogf((7+28x-80x^2)/(1-21x+84x^2-64x^3))`
-/

namespace A381005.P6993669783272169594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 28, -80] [1, -21, 84, -64] n

end

end A381005.P6993669783272169594

namespace A381005

/-- `ogf((7+28x-80x^2)/(1-21x+84x^2-64x^3))` -/
def P6993669783272169594.Spec : Prop :=
  ∀ n, P6993669783272169594.a n = A381005 (n + 1)

end A381005

/-! ## A381005.P13082903818291903913

`2^(4*(n+1))-2^(4*(n+1)-2)-2^(2*(n+1))-1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381005

/-- `2^(4*(n+1))-2^(4*(n+1)-2)-2^(2*(n+1))-1` -/
def P13082903818291903913.Spec : Prop :=
  ∀ n, P13082903818291903913.a n = (A381005 (n + 1) : ℚ)

end A381005

/-! ## A381005.P2361608256490123284

`sqrt(A381007(n+1)²-A381006(n+1)²)`
-/

namespace A381005.P2361608256490123284
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A381007 (n + 1) ^ 2 - A381006 (n + 1) ^ 2 : ℝ)

end

end A381005.P2361608256490123284

namespace A381005

/-- `sqrt(A381007(n+1)²-A381006(n+1)²)` -/
def P2361608256490123284.Spec : Prop :=
  ∀ n, P2361608256490123284.a n = (A381005 (n + 1) : ℝ)

end A381005

/-! ## A381005.P13143356213939459031

`A083420(n)*A199116(n)`
-/

namespace A381005.P13143356213939459031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n * A199116 n

end

end A381005.P13143356213939459031

namespace A381005

/-- `A083420(n)*A199116(n)` -/
def P13143356213939459031.Spec : Prop :=
  ∀ n, P13143356213939459031.a n = A381005 (n + 1)

end A381005

/-! ## A381005.P8261004963173158902

`A014551(2*n+1)*A199116(n)`
-/

namespace A381005.P8261004963173158902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (2 * n + 1) * A199116 n

end

end A381005.P8261004963173158902

namespace A381005

/-- `A014551(2*n+1)*A199116(n)` -/
def P8261004963173158902.Spec : Prop :=
  ∀ n, P8261004963173158902.a n = A381005 (n + 1)

end A381005

/-! ## A381005.P727981316591140324

`A051049(2*n+1)*A199116(n)`
-/

namespace A381005.P727981316591140324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (2 * n + 1) * A199116 n

end

end A381005.P727981316591140324

namespace A381005

/-- `A051049(2*n+1)*A199116(n)` -/
def P727981316591140324.Spec : Prop :=
  ∀ n, P727981316591140324.a n = A381005 (n + 1)

end A381005

/-! ## A381005.P10146227896823032137

`A083420(n)*A181565(2*n+1)`
-/

namespace A381005.P10146227896823032137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n * A181565 (2 * n + 1)

end

end A381005.P10146227896823032137

namespace A381005

/-- `A083420(n)*A181565(2*n+1)` -/
def P10146227896823032137.Spec : Prop :=
  ∀ n, P10146227896823032137.a n = A381005 (n + 1)

end A381005

/-! ## A381005.P4168822069703019342

`A083420(n)*A280173(2*n+1)`
-/

namespace A381005.P4168822069703019342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n * A280173 (2 * n + 1)

end

end A381005.P4168822069703019342

namespace A381005

/-- `A083420(n)*A280173(2*n+1)` -/
def P4168822069703019342.Spec : Prop :=
  ∀ n, P4168822069703019342.a n = A381005 (n + 1)

end A381005

/-! ## A381005.P495145052549102702

`A199116(n)*A280293(2*n+1)`
-/

namespace A381005.P495145052549102702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199116 n * A280293 (2 * n + 1)

end

end A381005.P495145052549102702

namespace A381005

/-- `A199116(n)*A280293(2*n+1)` -/
def P495145052549102702.Spec : Prop :=
  ∀ n, P495145052549102702.a n = A381005 (n + 1)

end A381005

/-! ## A381005.P7923969310763453856

`A000225(2*n+1)*A181565(2*n+1)`
-/

namespace A381005.P7923969310763453856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) * A181565 (2 * n + 1)

end

end A381005.P7923969310763453856

namespace A381005

/-- `A000225(2*n+1)*A181565(2*n+1)` -/
def P7923969310763453856.Spec : Prop :=
  ∀ n, P7923969310763453856.a n = A381005 (n + 1)

end A381005

/-!
# A381006: Ordered long legs of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

The programs for A381006, the canonical program `A381006.P14952655326330943341` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381006 has offset 1).

The definition of A381006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381006.P14952655326330943341

`2^(4*(n+1))+2^(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381006

/-- `2^(4*(n+1))+2^(2*(n+1)+1)` -/
def P14952655326330943341.Spec : Prop :=
  ∀ n, (P14952655326330943341.a n : ℤ) = A381006 (n + 1)

theorem P14952655326330943341.correct : P14952655326330943341.Spec := by
  intro n
  simp only [A381006, Nat.add_sub_cancel]

end A381006

/-! ## A381006.P11398378659361884307

`20*a(n-1)-64*a(n-2)` with `a(0)=24, a(1)=288`
-/

namespace A381006.P11398378659361884307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24, 288] fun n a =>
  20 * a (n - 1) - 64 * a (n - 2)

end

end A381006.P11398378659361884307

namespace A381006

/-- `20*a(n-1)-64*a(n-2)` -/
def P11398378659361884307.Spec : Prop :=
  ∀ n, P11398378659361884307.a n = A381006 (n + 1)

theorem P11398378659361884307.correct : P11398378659361884307.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381006, Nat.add_sub_cancel, A381006.P11398378659361884307.a, A381006.P14952655326330943341.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381006, Nat.add_sub_cancel, A381006.P11398378659361884307.a, A381006.P14952655326330943341.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A381006

/-! ## A381006.P3922484216558466638

`sqrt(A381007(n+1)²-A381005(n+1)²)`
-/

namespace A381006.P3922484216558466638
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A381007 (n + 1) ^ 2 - A381005 (n + 1) ^ 2 : ℝ)

end

end A381006.P3922484216558466638

namespace A381006

/-- `sqrt(A381007(n+1)²-A381005(n+1)²)` -/
def P3922484216558466638.Spec : Prop :=
  ∀ n, P3922484216558466638.a n = (A381006 (n + 1) : ℝ)

end A381006

/-! ## A381006.P7486837611831892264

`xor(1, (4^(n+1)+1)²)`
-/

namespace A381006.P7486837611831892264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((4 ^ (n + 1) + 1) ^ 2)

end

end A381006.P7486837611831892264

namespace A381006

/-- `xor(1, (4^(n+1)+1)²)` -/
def P7486837611831892264.Spec : Prop :=
  ∀ n, (P7486837611831892264.a n : ℤ) = A381006 (n + 1)

end A381006

/-! ## A381006.P8633144396156975835

`A242985(2*(n+1))`
-/

namespace A381006.P8633144396156975835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242985 (2 * (n + 1))

end

end A381006.P8633144396156975835

namespace A381006

/-- `A242985(2*(n+1))` -/
def P8633144396156975835.Spec : Prop :=
  ∀ n, P8633144396156975835.a n = A381006 (n + 1)

end A381006

/-! ## A381006.P7128725068607589491

`A132390(2*n+3)`
-/

namespace A381006.P7128725068607589491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132390 (2 * n + 3)

end

end A381006.P7128725068607589491

namespace A381006

/-- `A132390(2*n+3)` -/
def P7128725068607589491.Spec : Prop :=
  ∀ n, P7128725068607589491.a n = A381006 (n + 1)

end A381006

/-! ## A381006.P14910601545615816871

`A225826(2*n+3)`
-/

namespace A381006.P14910601545615816871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225826 (2 * n + 3)

end

end A381006.P14910601545615816871

namespace A381006

/-- `A225826(2*n+3)` -/
def P14910601545615816871.Spec : Prop :=
  ∀ n, P14910601545615816871.a n = A381006 (n + 1)

end A381006

/-! ## A381006.P4141309305722984945

`A290075(4*(n+2))`
-/

namespace A381006.P4141309305722984945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (4 * (n + 2))

end

end A381006.P4141309305722984945

namespace A381006

/-- `A290075(4*(n+2))` -/
def P4141309305722984945.Spec : Prop :=
  ∀ n, P4141309305722984945.a n = A381006 (n + 1)

end A381006

/-! ## A381006.P7687057145652302519

`8*A233196(n+2)`
-/

namespace A381006.P7687057145652302519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A233196 (n + 2)

end

end A381006.P7687057145652302519

namespace A381006

/-- `8*A233196(n+2)` -/
def P7687057145652302519.Spec : Prop :=
  ∀ n, P7687057145652302519.a n = A381006 (n + 1)

end A381006

/-! ## A381006.P17577140501028584321

`2*A028403(2*(n+1))`
-/

namespace A381006.P17577140501028584321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028403 (2 * (n + 1))

end

end A381006.P17577140501028584321

namespace A381006

/-- `2*A028403(2*(n+1))` -/
def P17577140501028584321.Spec : Prop :=
  ∀ n, P17577140501028584321.a n = A381006 (n + 1)

end A381006

/-!
# A381007: Ordered hypotenuses of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

The programs for A381007, the canonical program `A381007.P615263797568289411` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381007 has offset 1).

The definition of A381007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381007.P615263797568289411

`5*4^(2*(n+1)-1)+4^(n+1)+1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381007

/-- `5*4^(2*(n+1)-1)+4^(n+1)+1` -/
def P615263797568289411.Spec : Prop :=
  ∀ n, P615263797568289411.a n = (A381007 (n + 1) : ℚ)

end A381007

/-! ## A381007.P2694535073065651701

`sqrt(A381005(n+1)²+A381006(n+1)²)`
-/

namespace A381007.P2694535073065651701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A381005 (n + 1) ^ 2 + A381006 (n + 1) ^ 2 : ℝ)

end

end A381007.P2694535073065651701

namespace A381007

/-- `sqrt(A381005(n+1)²+A381006(n+1)²)` -/
def P2694535073065651701.Spec : Prop :=
  ∀ n, P2694535073065651701.a n = (A381007 (n + 1) : ℝ)

end A381007

/-! ## A381007.P1288211186203900953

`Δ[A158879(n)+A096047(n)]`
-/

namespace A381007.P1288211186203900953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158879 n + A096047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381007.P1288211186203900953

namespace A381007

/-- `Δ[A158879(n)+A096047(n)]` -/
def P1288211186203900953.Spec : Prop :=
  ∀ n, P1288211186203900953.a n = A381007 (n + 1)

end A381007

/-!
# A381008: Ordered perimeters of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

The programs for A381008, the canonical program `A381008.P12596341839131230290` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381008 has offset 1).

The definition of A381008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381008.P11951321573267116495

`20*a(n-1)-64*a(n-2)` with `a(0)=56, a(1)=800`
-/

namespace A381008.P11951321573267116495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [56, 800] fun n a =>
  20 * a (n - 1) - 64 * a (n - 2)

end

end A381008.P11951321573267116495

namespace A381008

/-- `20*a(n-1)-64*a(n-2)` -/
def P11951321573267116495.Spec : Prop :=
  ∀ n, P11951321573267116495.a n = A381008 (n + 1)

theorem P11951321573267116495.correct : P11951321573267116495.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381008, Nat.add_sub_cancel, A381008.P11951321573267116495.a, A381008.P12596341839131230290.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381008, Nat.add_sub_cancel, A381008.P11951321573267116495.a, A381008.P12596341839131230290.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A381008

/-! ## A381008.P12596341839131230290

`2^(4*(n+1)+1)+2^(2*(n+1)+1)+2^(4*(n+1))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381008

/-- `2^(4*(n+1)+1)+2^(2*(n+1)+1)+2^(4*(n+1))` -/
def P12596341839131230290.Spec : Prop :=
  ∀ n, (P12596341839131230290.a n : ℤ) = A381008 (n + 1)

theorem P12596341839131230290.correct : P12596341839131230290.Spec := by
  intro n
  simp only [A381008, Nat.add_sub_cancel]

end A381008

/-! ## A381008.P1135115018237539518

`xor(2, 3*4^(n+1))*4^(n+1)`
-/

namespace A381008.P1135115018237539518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (3 * 4 ^ (n + 1)) * 4 ^ (n + 1)

end

end A381008.P1135115018237539518

namespace A381008

/-- `xor(2, 3*4^(n+1))*4^(n+1)` -/
def P1135115018237539518.Spec : Prop :=
  ∀ n, (P1135115018237539518.a n : ℤ) = A381008 (n + 1)

end A381008

/-! ## A381008.P6248659164824391528

`2*A093356(2*n+3)`
-/

namespace A381008.P6248659164824391528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093356 (2 * n + 3)

end

end A381008.P6248659164824391528

namespace A381008

/-- `2*A093356(2*n+3)` -/
def P6248659164824391528.Spec : Prop :=
  ∀ n, P6248659164824391528.a n = A381008 (n + 1)

end A381008

/-! ## A381008.P15338036134178412337

`8*A049775(2*n+3)`
-/

namespace A381008.P15338036134178412337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A049775 (2 * n + 3)

end

end A381008.P15338036134178412337

namespace A381008

/-- `8*A049775(2*n+3)` -/
def P15338036134178412337.Spec : Prop :=
  ∀ n, P15338036134178412337.a n = A381008 (n + 1)

end A381008

/-! ## A381008.P10648804700140680085

`floor((A007283(2*(n+1))+1)²/3)`
-/

namespace A381008.P10648804700140680085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A007283 (2 * (n + 1)) + 1) ^ 2 : ℚ) / 3⌋

end

end A381008.P10648804700140680085

namespace A381008

/-- `floor((A007283(2*(n+1))+1)²/3)` -/
def P10648804700140680085.Spec : Prop :=
  ∀ n, P10648804700140680085.a n = A381008 (n + 1)

end A381008

/-! ## A381008.P5311355131827055174

`A081294(n+2)*A199116(n)`
-/

namespace A381008.P5311355131827055174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (n + 2) * A199116 n

end

end A381008.P5311355131827055174

namespace A381008

/-- `A081294(n+2)*A199116(n)` -/
def P5311355131827055174.Spec : Prop :=
  ∀ n, P5311355131827055174.a n = A381008 (n + 1)

end A381008

/-! ## A381008.P13953847567803058490

`A081294(n+2)*A181565(2*n+1)`
-/

namespace A381008.P13953847567803058490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (n + 2) * A181565 (2 * n + 1)

end

end A381008.P13953847567803058490

namespace A381008

/-- `A081294(n+2)*A181565(2*n+1)` -/
def P13953847567803058490.Spec : Prop :=
  ∀ n, P13953847567803058490.a n = A381008 (n + 1)

end A381008

/-! ## A381008.P12943663043990863103

`A081294(n+2)*A201630(2*n+1)`
-/

namespace A381008.P12943663043990863103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (n + 2) * A201630 (2 * n + 1)

end

end A381008.P12943663043990863103

namespace A381008

/-- `A081294(n+2)*A201630(2*n+1)` -/
def P12943663043990863103.Spec : Prop :=
  ∀ n, P12943663043990863103.a n = A381008 (n + 1)

end A381008

/-! ## A381008.P18254032844320502252

`A081294(n+2)*A280173(2*n+1)`
-/

namespace A381008.P18254032844320502252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (n + 2) * A280173 (2 * n + 1)

end

end A381008.P18254032844320502252

namespace A381008

/-- `A081294(n+2)*A280173(2*n+1)` -/
def P18254032844320502252.Spec : Prop :=
  ∀ n, P18254032844320502252.a n = A381008 (n + 1)

end A381008

/-!
# A381009: Ordered areas of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

The programs for A381009, the canonical program `A381009.P15990344275163368300` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381009 has offset 1).

The definition of A381009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381009.P15990344275163368300

`A381005(n+1)*A381006(n+1)/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381009

/-- `A381005(n+1)*A381006(n+1)/2` -/
def P15990344275163368300.Spec : Prop :=
  ∀ n, P15990344275163368300.a n = (A381009 (n + 1) : ℚ)

end A381009

/-!
# A381015: a(n) = n + (number of trailing 0's of n).

The programs for A381015, the canonical program `A381015.P5702572963213043786` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381015 has offset 1).

The definition of A381015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381015.P5702572963213043786

`n+1+val(n+1, 10)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381015

/-- `n+1+val(n+1, 10)` -/
def P5702572963213043786.Spec : Prop :=
  ∀ n, (P5702572963213043786.a n : ℤ) = A381015 (n + 1)

theorem P5702572963213043786.correct : P5702572963213043786.Spec := by
  intro n
  simp only [A381015, Nat.add_sub_cancel]

end A381015

/-! ## A381015.P2462068477521893310

`n+1+A122840(n+1)`
-/

namespace A381015.P2462068477521893310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A122840 (n + 1)

end

end A381015.P2462068477521893310

namespace A381015

/-- `n+1+A122840(n+1)` -/
def P2462068477521893310.Spec : Prop :=
  ∀ n, P2462068477521893310.a n = A381015 (n + 1)

theorem P2462068477521893310.correct : P2462068477521893310.Spec := by
  intro n
  simp only [A381015, Nat.add_sub_cancel, A381015.P2462068477521893310.a, A381015.P5702572963213043786.a, A122840, A122840.P15384273099785302065.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381015

/-! ## A381015.P13445054983946176260

`1+val(n+1, 10)+n`
-/

namespace A381015.P13445054983946176260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.valuation (n + 1) 10 + n

end

end A381015.P13445054983946176260

namespace A381015

/-- `1+val(n+1, 10)+n` -/
def P13445054983946176260.Spec : Prop :=
  ∀ n, (P13445054983946176260.a n : ℤ) = A381015 (n + 1)

theorem P13445054983946176260.correct : P13445054983946176260.Spec := by
  intro n
  simp only [A381015, Nat.add_sub_cancel, A381015.P13445054983946176260.a, A381015.P5702572963213043786.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A381015

/-! ## A381015.P9427151249176874995

`Δ[A065039(n)]+n`
-/

namespace A381015.P9427151249176874995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A381015.P9427151249176874995

namespace A381015

/-- `Δ[A065039(n)]+n` -/
def P9427151249176874995.Spec : Prop :=
  ∀ n, P9427151249176874995.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P13369225170413956021

`A160094(n+1)+n`
-/

namespace A381015.P13369225170413956021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 1) + (n : ℤ)

end

end A381015.P13369225170413956021

namespace A381015

/-- `A160094(n+1)+n` -/
def P13369225170413956021.Spec : Prop :=
  ∀ n, P13369225170413956021.a n = A381015 (n + 1)

theorem P13369225170413956021.correct : P13369225170413956021.Spec := by
  intro n
  simp only [A381015, Nat.add_sub_cancel, A381015.P13369225170413956021.a, A381015.P5702572963213043786.a, A160094, A160094.P14962074149469739945.a, A122840, A122840.P15384273099785302065.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381015

/-! ## A381015.P14444529049226625823

`Δ[A054899(n)]+n+1`
-/

namespace A381015.P14444529049226625823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A381015.P14444529049226625823

namespace A381015

/-- `Δ[A054899(n)]+n+1` -/
def P14444529049226625823.Spec : Prop :=
  ∀ n, P14444529049226625823.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P3356267716052571800

`A065039(n+1)-A054899(n)`
-/

namespace A381015.P3356267716052571800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (n + 1) - A054899 n

end

end A381015.P3356267716052571800

namespace A381015

/-- `A065039(n+1)-A054899(n)` -/
def P3356267716052571800.Spec : Prop :=
  ∀ n, P3356267716052571800.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P17992837148474766966

`A055642(A251984(n+1))+n`
-/

namespace A381015.P17992837148474766966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A251984 (n + 1)).toNat + (n : ℤ)

end

end A381015.P17992837148474766966

namespace A381015

/-- `A055642(A251984(n+1))+n` -/
def P17992837148474766966.Spec : Prop :=
  ∀ n, P17992837148474766966.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P5310354886375054837

`A122840(A008592(n+1))+n`
-/

namespace A381015.P5310354886375054837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A008592 (n + 1)).toNat + (n : ℤ)

end

end A381015.P5310354886375054837

namespace A381015

/-- `A122840(A008592(n+1))+n` -/
def P5310354886375054837.Spec : Prop :=
  ∀ n, P5310354886375054837.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P3440854937042475209

`gcd(2, A118762(n+1))+n`
-/

namespace A381015.P3440854937042475209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A118762 (n + 1)) + n

end

end A381015.P3440854937042475209

namespace A381015

/-- `gcd(2, A118762(n+1))+n` -/
def P3440854937042475209.Spec : Prop :=
  ∀ n, (P3440854937042475209.a n : ℤ) = A381015 (n + 1)

end A381015

/-!
# A381016: Expansion of e.g.f. -log(1-x) * sin(x).

The programs for A381016, there is no canonical definition to state claims against.
-/

/-! ## A381016.P17865360376779275779

`A165585(A279562(n))+A001349(n)`
-/

namespace A381016.P17865360376779275779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165585 (A279562 n).toNat + A001349 n

end

end A381016.P17865360376779275779

/-! ## A381016.P1188201009882617834

`A344608(n)+A284272(A151490(n))`
-/

namespace A381016.P1188201009882617834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344608 n + A284272 (A151490 n).toNat

end

end A381016.P1188201009882617834

/-! ## A381016.P8320597516477267476

`xor(A046927(A096119(n)), A193827(n))`
-/

namespace A381016.P8320597516477267476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046927 (A096119 n).toNat) (A193827 n)

end

end A381016.P8320597516477267476

/-!
# A381017: Prime terms of A000328.

The programs for A381017, the canonical program `A381017.P10834525739329830361` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381017 has offset 1).

The definition of A381017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381017.P10834525739329830361

`p?[A000328(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A381017

/-- `p?[A000328(n)]` -/
def P10834525739329830361.Spec : Prop :=
  ∀ n, P10834525739329830361.a n = A381017 (n + 1)

theorem P10834525739329830361.correct : P10834525739329830361.Spec := by
  intro n
  simp only [A381017, Nat.add_sub_cancel]

end A381017

/-! ## A381017.P15236330690094970895

`p?[∑[A036693(n)]]`
-/

namespace A381017.P15236330690094970895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381017.P15236330690094970895

namespace A381017

/-- `p?[∑[A036693(n)]]` -/
def P15236330690094970895.Spec : Prop :=
  ∀ n, P15236330690094970895.a n = A381017 (n + 1)

end A381017

/-! ## A381017.P5409390584089917334

`p?[A053411(2*n)]`
-/

namespace A381017.P5409390584089917334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381017.P5409390584089917334

namespace A381017

/-- `p?[A053411(2*n)]` -/
def P5409390584089917334.Spec : Prop :=
  ∀ n, P5409390584089917334.a n = A381017 (n + 1)

end A381017

/-! ## A381017.P5853426439380457757

`p?[record[A093836(n+1)]]`
-/

namespace A381017.P5853426439380457757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381017.P5853426439380457757

namespace A381017

/-- `p?[record[A093836(n+1)]]` -/
def P5853426439380457757.Spec : Prop :=
  ∀ n, P5853426439380457757.a n = A381017 (n + 1)

end A381017

/-! ## A381017.P4258547209493943195

`∩[A002144(n+1), A000328(n)]`
-/

namespace A381017.P4258547209493943195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P4258547209493943195

namespace A381017

/-- `∩[A002144(n+1), A000328(n)]` -/
def P4258547209493943195.Spec : Prop :=
  ∀ n, (P4258547209493943195.a n : ℤ) = A381017 (n + 1)

end A381017

/-! ## A381017.P14531718154230850236

`∩[A002313(n+1), A000328(n)]`
-/

namespace A381017.P14531718154230850236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P14531718154230850236

namespace A381017

/-- `∩[A002313(n+1), A000328(n)]` -/
def P14531718154230850236.Spec : Prop :=
  ∀ n, (P14531718154230850236.a n : ℤ) = A381017 (n + 1)

end A381017

/-! ## A381017.P14244912238152552432

`∩[A120960(n+1), A000328(n)]`
-/

namespace A381017.P14244912238152552432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P14244912238152552432

namespace A381017

/-- `∩[A120960(n+1), A000328(n)]` -/
def P14244912238152552432.Spec : Prop :=
  ∀ n, (P14244912238152552432.a n : ℤ) = A381017 (n + 1)

end A381017

/-! ## A381017.P15712586326109817491

`∩[A172480(n+1), A000328(n)]`
-/

namespace A381017.P15712586326109817491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P15712586326109817491

namespace A381017

/-- `∩[A172480(n+1), A000328(n)]` -/
def P15712586326109817491.Spec : Prop :=
  ∀ n, (P15712586326109817491.a n : ℤ) = A381017 (n + 1)

end A381017

/-! ## A381017.P17199404512142861723

`∩[A175768(n+1), A000328(n)]`
-/

namespace A381017.P17199404512142861723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P17199404512142861723

namespace A381017

/-- `∩[A175768(n+1), A000328(n)]` -/
def P17199404512142861723.Spec : Prop :=
  ∀ n, (P17199404512142861723.a n : ℤ) = A381017 (n + 1)

end A381017

/-! ## A381017.P10753316330239430666

`∩[A266987(n+1), A000328(n)]`
-/

namespace A381017.P10753316330239430666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P10753316330239430666

namespace A381017

/-- `∩[A266987(n+1), A000328(n)]` -/
def P10753316330239430666.Spec : Prop :=
  ∀ n, (P10753316330239430666.a n : ℤ) = A381017 (n + 1)

end A381017

/-!
# A381018: a(n) is the number of primes in A000328 for r <= n.

The programs for A381018, the canonical program `A381018.P990383455539555304` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381018 has offset 1).

The definition of A381018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381018.P990383455539555304

`∑[A010051(A000328(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A381018

/-- `∑[A010051(A000328(n+1))]` -/
def P990383455539555304.Spec : Prop :=
  ∀ n, P990383455539555304.a n = A381018 (n + 1)

theorem P990383455539555304.correct : P990383455539555304.Spec := by
  intro n
  simp only [A381018, Nat.add_sub_cancel]

end A381018

/-!
# A381019: a(n) is the smallest positive integer not yet in the sequence such that a(n) is relatively prime to a(n-i) for all 1 <= i <= min(a(n), n-1).

The programs for A381019, there is no canonical definition to state claims against.
-/

/-! ## A381019.P7724890767465962706

`A134364(A381167(n+1))`
-/

namespace A381019.P7724890767465962706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134364 (A381167 (n + 1)).toNat

end

end A381019.P7724890767465962706

/-! ## A381019.P7589362249907640121

`A381167(n+1)%A381616(2*n+1)²`
-/

namespace A381019.P7589362249907640121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381167 (n + 1)) (A381616 (2 * n + 1) ^ 2)

end

end A381019.P7589362249907640121

/-! ## A381019.P2118947449030383792

`A381167(n+1)+A000007(A071778(n+1))`
-/

namespace A381019.P2118947449030383792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381167 (n + 1) + A000007 (A071778 (n + 1)).toNat

end

end A381019.P2118947449030383792

/-! ## A381019.P4568245253215107080

`A381167(n+1)+A000007(A381616(n+1))`
-/

namespace A381019.P4568245253215107080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381167 (n + 1) + A000007 (A381616 (n + 1)).toNat

end

end A381019.P4568245253215107080

/-! ## A381019.P1964902960997725886

`A381167(n+1)+A010051(A378632(n+1))`
-/

namespace A381019.P1964902960997725886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381167 (n + 1) + A010051 (A378632 (n + 1)).toNat

end

end A381019.P1964902960997725886

/-!
# A381020: a(n) = A381018(100*n).

The programs for A381020, there is no canonical definition to state claims against.
-/

/-! ## A381020.P9305515406847847727

`A355529(A008591(n+2)+A002865(n))`
-/

namespace A381020.P9305515406847847727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355529 (A008591 (n + 2) + A002865 n).toNat

end

end A381020.P9305515406847847727

/-! ## A381020.P6875160163565156069

`A368459(A250120(2*n+3))+A000040(n+1)`
-/

namespace A381020.P6875160163565156069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368459 (A250120 (2 * n + 3)).toNat + A000040 (n + 1)

end

end A381020.P6875160163565156069

/-!
# A381021: Expansion of e.g.f. log(1-x)^2 * exp(x) / 2.

The programs for A381021, there is no canonical definition to state claims against.
-/

/-! ## A381021.P11871919404472341235

`∑[A073596(row(C(n, 2)))]`
-/

namespace A381021.P11871919404472341235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 (SequenceMachineLib.triRow (Nat.choose n 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381021.P11871919404472341235

/-! ## A381021.P18112112481700619152

`∑[A073596(n)]-A073596(n)`
-/

namespace A381021.P18112112481700619152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073596 n

end

end A381021.P18112112481700619152

/-! ## A381021.P12883420339869928727

`A381105(n+1)-A381107(n)`
-/

namespace A381021.P12883420339869928727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381105 (n + 1) - A381107 n

end

end A381021.P12883420339869928727

/-! ## A381021.P5898353744971213461

`A094816(∑[char[1]+n]+1)%A335530(n)`
-/

namespace A381021.P5898353744971213461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A335530 n)

end

end A381021.P5898353744971213461

/-!
# A381022: Expansion of e.g.f. -log(1-x)^3 * exp(x) / 6.

The programs for A381022, there is no canonical definition to state claims against.
-/

/-! ## A381022.P12178924055674321446

`∑[A381024(abs(1-n))]`
-/

namespace A381022.P12178924055674321446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381024 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381022.P12178924055674321446

/-! ## A381022.P16924067703177543668

`∑[A381024(n)]-A381024(n)`
-/

namespace A381022.P16924067703177543668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A381024 n

end

end A381022.P16924067703177543668

/-! ## A381022.P10534928018674773454

`A079692(A115084(n)-A128320(n))`
-/

namespace A381022.P10534928018674773454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079692 (A115084 n - A128320 n).toNat

end

end A381022.P10534928018674773454

/-!
# A381023: Expansion of e.g.f. log(1-x)^4 * exp(x) / 24.

The programs for A381023, there is no canonical definition to state claims against.
-/

/-! ## A381023.P3028434749425496554

`∑[A381025(abs(1-n))]`
-/

namespace A381023.P3028434749425496554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381025 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381023.P3028434749425496554

/-! ## A381023.P9924461179890166108

`∑[A381025(n)]-A381025(n)`
-/

namespace A381023.P9924461179890166108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A381025 n

end

end A381023.P9924461179890166108

/-! ## A381023.P1566680514100496725

`A239072(C(n+1, 5))`
-/

namespace A381023.P1566680514100496725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239072 (Nat.choose (n + 1) 5)

end

end A381023.P1566680514100496725

/-!
# A381024: Expansion of e.g.f. log(1-x)^2 * exp(x) / (2 * (1-x)).

The programs for A381024, there is no canonical definition to state claims against.
-/

/-! ## A381024.P4113602302823844092

`A381022(n+1)-A381022(n)`
-/

namespace A381024.P4113602302823844092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381022 (n + 1) - A381022 n

end

end A381024.P4113602302823844092

/-! ## A381024.P15092047000614688475

`Δ[A381022(n)]`
-/

namespace A381024.P15092047000614688475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381024.P15092047000614688475

/-!
# A381025: Expansion of e.g.f. -log(1-x)^3 * exp(x) / (6 * (1-x)).

The programs for A381025, there is no canonical definition to state claims against.
-/

/-! ## A381025.P3786138718847584305

`A381023(n+1)-A381023(n)`
-/

namespace A381025.P3786138718847584305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381023 (n + 1) - A381023 n

end

end A381025.P3786138718847584305

/-! ## A381025.P3090012675352436166

`Δ[A381023(n)]`
-/

namespace A381025.P3090012675352436166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381025.P3090012675352436166

/-!
# A381029: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x*A(x)^2)^2).

The programs for A381029, there is no canonical definition to state claims against.
-/

/-! ## A381029.P17985402236174926242

`A008619(A001910(n+3)-floor(n/(xor(n, n+1)+1)))`
-/

namespace A381029.P17985402236174926242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001910 (n + 3) - ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A381029.P17985402236174926242

/-! ## A381029.P4350128092531973088

`A049761(A146963(n))+A001147(n)`
-/

namespace A381029.P4350128092531973088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049761 (A146963 n).toNat + A001147 n

end

end A381029.P4350128092531973088

/-!
# A381031: The second smallest prime not dividing n minus the smallest prime not dividing n.

The programs for A381031, there is no canonical definition to state claims against.
-/

/-! ## A381031.P16437040381512720752

`A380539(n+1)-A053669(n+1)`
-/

namespace A381031.P16437040381512720752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 (n + 1) - A053669 (n + 1)

end

end A381031.P16437040381512720752

/-! ## A381031.P10641231091605086039

`A046665(A381805(1+n))`
-/

namespace A381031.P10641231091605086039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A381805 (1 + n)).toNat

end

end A381031.P10641231091605086039

/-! ## A381031.P4038478776634070522

`A046665(A382248(n+1))`
-/

namespace A381031.P4038478776634070522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A382248 (n + 1)).toNat

end

end A381031.P4038478776634070522

/-! ## A381031.P12215115297453143465

`A046665(sqrt(A382767(n+1)))`
-/

namespace A381031.P12215115297453143465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.roundAway (Real.sqrt (A382767 (n + 1) : ℝ))).toNat

end

end A381031.P12215115297453143465

/-! ## A381031.P10141988225350672655

`A002034(A381805(n+1))-A053669(n+1)`
-/

namespace A381031.P10141988225350672655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A381805 (n + 1)).toNat - A053669 (n + 1)

end

end A381031.P10141988225350672655

/-! ## A381031.P10958175585560792751

`A002034(A381805(n+1))-(A071222(n)+1)`
-/

namespace A381031.P10958175585560792751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A381805 (n + 1)).toNat - (A071222 n + 1)

end

end A381031.P10958175585560792751

/-! ## A381031.P2942464099376455710

`A380539(n+1)-A020639(A381805(n+1))`
-/

namespace A381031.P2942464099376455710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 (n + 1) - A020639 (A381805 (n + 1)).toNat

end

end A381031.P2942464099376455710

/-! ## A381031.P739986824210565284

`A380539(n+1)-A020639(A382248(n+1))`
-/

namespace A381031.P739986824210565284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 (n + 1) - A020639 (A382248 (n + 1)).toNat

end

end A381031.P739986824210565284

/-! ## A381031.P18115630478386698618

`A380539(n+1)-A020639(A382767(n+1))`
-/

namespace A381031.P18115630478386698618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 (n + 1) - A020639 (A382767 (n + 1)).toNat

end

end A381031.P18115630478386698618

/-! ## A381031.P17177130513191651969

`A053669(A087560(n+1))-A053669(n+1)`
-/

namespace A381031.P17177130513191651969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A087560 (n + 1)).toNat - A053669 (n + 1)

end

end A381031.P17177130513191651969

/-! ## A381031.P14579515732306106662

`A053669((n+1)*(A071222(n)+1))-A053669(n+1)`
-/

namespace A381031.P14579515732306106662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 ((n + 1 : ℤ) * (A071222 n + 1)).toNat - A053669 (n + 1)

end

end A381031.P14579515732306106662

/-! ## A381031.P14307977788124398761

`A053669((n+1)*(A079578(n+1)-(n+1)))-A053669(n+1)`
-/

namespace A381031.P14307977788124398761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 ((n + 1 : ℤ) * (A079578 (n + 1) - (n + 1 : ℤ))).toNat - A053669 (n + 1)

end

end A381031.P14307977788124398761

/-! ## A381031.P6126135037637299701

`A046665(A382767(n+1))`
-/

namespace A381031.P6126135037637299701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A382767 (n + 1)).toNat

end

end A381031.P6126135037637299701

/-! ## A381031.P3571106469060188656

`A053669(A129902((n+1)²)/(n+1))-A053669(n+1)`
-/

namespace A381031.P3571106469060188656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (SequenceMachineLib.roundAway ((A129902 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ))).toNat - A053669 (n + 1)

end

end A381031.P3571106469060188656

/-!
# A381032: The radix prime of the least significant digit > 1 in the primorial base expansion of n, or 1 if there is no such digit.

The programs for A381032, there is no canonical definition to state claims against.
-/

/-! ## A381032.P10750043235791426845

`A020639(A328572(n))`
-/

namespace A381032.P10750043235791426845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328572 n).toNat

end

end A381032.P10750043235791426845

/-! ## A381032.P1158995989280872591

`A249739(A276086(n))`
-/

namespace A381032.P1158995989280872591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A276086 n).toNat

end

end A381032.P1158995989280872591

/-! ## A381032.P4765022064966078310

`A351566(n+1-A328841(n))`
-/

namespace A381032.P4765022064966078310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 ((n + 1 : ℤ) - A328841 n).toNat

end

end A381032.P4765022064966078310

/-! ## A381032.P15397592939132904078

`A000041(A328828(n)+A047789(3*(n+1)))`
-/

namespace A381032.P15397592939132904078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A328828 n + A047789 (3 * (n + 1))).toNat

end

end A381032.P15397592939132904078

/-! ## A381032.P14878863799234184533

`A005704(A140313(3*n)*A328828(n))`
-/

namespace A381032.P14878863799234184533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 (A140313 (3 * n) * A328828 n).toNat

end

end A381032.P14878863799234184533

/-! ## A381032.P12810605353734305296

`A020639(A276086(n)/A328571(n))`
-/

namespace A381032.P12810605353734305296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328571 n : ℚ))).toNat

end

end A381032.P12810605353734305296

/-! ## A381032.P10210692720921016025

`A020639(gcd(A276086(n), A327860(n)))`
-/

namespace A381032.P10210692720921016025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A276086 n) (A327860 n))

end

end A381032.P10210692720921016025

/-! ## A381032.P13108036103982675217

`A014673(2*A328572(n))`
-/

namespace A381032.P13108036103982675217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A328572 n).toNat

end

end A381032.P13108036103982675217

/-!
# A381033: a(n) = 1 if there is a digit > 1 in the primorial base expansion of n, and the corresponding radix prime of the least significant such digit is not a prime factor of n, otherwise 0.

The programs for A381033, there is no canonical definition to state claims against.
-/

/-! ## A381033.P16421192223275993156

`char[A381034(n+1)]`
-/

namespace A381033.P16421192223275993156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A381033.P16421192223275993156

/-! ## A381033.P17525021184714570549

`A001065(gcd(n, A381032(n)))`
-/

namespace A381033.P17525021184714570549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (Int.gcd (n : ℤ) (A381032 n))

end

end A381033.P17525021184714570549

/-! ## A381033.P9712924394135695773

`A063524(A042965(3*n+2)%A381032(n))`
-/

namespace A381033.P9712924394135695773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (Int.tmod (A042965 (3 * n + 2)) (A381032 n)).toNat

end

end A381033.P9712924394135695773

/-! ## A381033.P3320471283526525839

`A381036(A343678(n+5))+A381036(n)`
-/

namespace A381033.P3320471283526525839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 (A343678 (n + 5)).toNat + A381036 n

end

end A381033.P3320471283526525839

/-! ## A381033.P12086625419133284046

`and(A014752(A108917(n)), A381036(n))`
-/

namespace A381033.P12086625419133284046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014752 (A108917 n).toNat) (A381036 n)

end

end A381033.P12086625419133284046

/-! ## A381033.P15203384400456276907

`A381036(n)+A000007(A319169(n+4))`
-/

namespace A381033.P15203384400456276907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n + A000007 (A319169 (n + 4)).toNat

end

end A381033.P15203384400456276907

/-! ## A381033.P9743324079389539609

`A326060(A294775(3*(n+1)))*A381036(n)`
-/

namespace A381033.P9743324079389539609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326060 (A294775 (3 * (n + 1))).toNat * A381036 n

end

end A381033.P9743324079389539609

/-! ## A381033.P17817665293557319054

`and(A002189(n), A381036(n))`
-/

namespace A381033.P17817665293557319054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002189 n) (A381036 n)

end

end A381033.P17817665293557319054

/-! ## A381033.P1707226062424492490

`A381036(n)+A000007(A007602(n+1))`
-/

namespace A381033.P1707226062424492490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n + A000007 (A007602 (n + 1)).toNat

end

end A381033.P1707226062424492490

/-! ## A381033.P16188657188782746451

`∑{d}[n+1, A057374(#-1)*A381036((n+1)/#-1)]`
-/

namespace A381033.P16188657188782746451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057374 (d - 1) * A381036 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A381033.P16188657188782746451

/-!
# A381034: Numbers that have a digit > 1 in their primorial base expansion, and that are multiples of the corresponding radix prime of the least significant such digit.

The programs for A381034, there is no canonical definition to state claims against.
-/

/-! ## A381034.P6337447806995178209

`filter[A305901(n+1), A381033(#)]`
-/

namespace A381034.P6337447806995178209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P6337447806995178209

/-! ## A381034.P5268874489219226872

`filter[A305976(n+1), A381033(#)]`
-/

namespace A381034.P5268874489219226872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P5268874489219226872

/-! ## A381034.P11832617809596726854

`lt[0, A381033(n)]`
-/

namespace A381034.P11832617809596726854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A381034.P11832617809596726854

/-! ## A381034.P5377496558755599171

`lt[1, gcd(4*n, A381032(n))]`
-/

namespace A381034.P5377496558755599171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n : ℤ) (A381032 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381034.P5377496558755599171

/-! ## A381034.P548545407148613001

`eq[A293668(n), A381033(n)]`
-/

namespace A381034.P548545407148613001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P548545407148613001

/-! ## A381034.P15370156784829104202

`filter[A326203(n+1), A381033(#)]`
-/

namespace A381034.P15370156784829104202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P15370156784829104202

/-! ## A381034.P15516827133607947524

`filter[A346488(n+1), A381033(#)]`
-/

namespace A381034.P15516827133607947524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P15516827133607947524

/-! ## A381034.P11852248698465163022

`filter[A326202(n+1), A381033(#)]`
-/

namespace A381034.P11852248698465163022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P11852248698465163022

/-! ## A381034.P10629311098235469467

`filter[A305980(n+1), A381033(#)]`
-/

namespace A381034.P10629311098235469467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P10629311098235469467

/-! ## A381034.P2090849266294411099

`filter[A322810(n+1), A381033(#)]`
-/

namespace A381034.P2090849266294411099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P2090849266294411099

/-! ## A381034.P7767914689733132617

`filter[A326201(n+1), A381033(#)]`
-/

namespace A381034.P7767914689733132617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P7767914689733132617

/-! ## A381034.P1896490475071810309

`eq[A369010(n), A381033(n)]`
-/

namespace A381034.P1896490475071810309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P1896490475071810309

/-! ## A381034.P11954138135065327349

`filter[A392611(n+1), A381033(#)]`
-/

namespace A381034.P11954138135065327349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P11954138135065327349

/-! ## A381034.P9743233180992992876

`filter[A264828(n+1), A381033(#)]`
-/

namespace A381034.P9743233180992992876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P9743233180992992876

/-! ## A381034.P6975189756519370765

`filter[A324584(n+1), A381033(#)]`
-/

namespace A381034.P6975189756519370765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P6975189756519370765

/-! ## A381034.P5840079503512556111

`filter[A092486(n), A381033(#)]`
-/

namespace A381034.P5840079503512556111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P5840079503512556111

/-! ## A381034.P15342353046253124617

`filter[A004443(n), A381033(#)]`
-/

namespace A381034.P15342353046253124617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P15342353046253124617

/-! ## A381034.P3279465615618100651

`filter[A138593(n+1), A381033(#)]`
-/

namespace A381034.P3279465615618100651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P3279465615618100651

/-! ## A381034.P9480510446022396965

`filter[A009188(n+1), A381033(#)]`
-/

namespace A381034.P9480510446022396965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P9480510446022396965

/-! ## A381034.P4610837847225735921

`filter[A138592(n+1), A381033(#)]`
-/

namespace A381034.P4610837847225735921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P4610837847225735921

/-!
# A381035: Numbers such that the least significant nonzero digit in their primorial base representation (A049345) is 1.

The programs for A381035, there is no canonical definition to state claims against.
-/

/-! ## A381035.P16960851227046754943

`comp[(n+1)*A380534(n+1)]`
-/

namespace A381035.P16960851227046754943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A380534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381035.P16960851227046754943

/-! ## A381035.P946514176493226

`eq[1, gcd(n%2, A351567((n+1)/2^val(n+1, 2)))]`
-/

namespace A381035.P946514176493226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A351567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381035.P946514176493226

/-! ## A381035.P3071360016744960283

`eq[1, A276088(n)]`
-/

namespace A381035.P3071360016744960283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381035.P3071360016744960283

/-! ## A381035.P4670629557797693605

`filter[A131717(n+1), A276088(#)]`
-/

namespace A381035.P4670629557797693605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276088 (f1 j).toNat = 1) n)

end

end A381035.P4670629557797693605

/-! ## A381035.P876544307139090596

`eq[1, A255326(n-A276093(n))]`
-/

namespace A381035.P876544307139090596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 ((n : ℤ) - A276093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381035.P876544307139090596

/-! ## A381035.P2936688602325871284

`lt[A000038(n), A121373(A276088(n))]`
-/

namespace A381035.P2936688602325871284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A276088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381035.P2936688602325871284

/-! ## A381035.P6061987192346213961

`lt[A271673(A276088(n)), A007953(n)]`
-/

namespace A381035.P6061987192346213961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271673 (A276088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381035.P6061987192346213961

/-! ## A381035.P1326783435005546047

`lt[A078008(A276088(n)), A001511(n+1)]`
-/

namespace A381035.P1326783435005546047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A276088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381035.P1326783435005546047

/-! ## A381035.P12749382060201652740

`lt[A143419(A276088(n)), A007814(n+1)]`
-/

namespace A381035.P12749382060201652740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143419 (A276088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381035.P12749382060201652740

/-! ## A381035.P10261510143331288695

`record[A220466(2*n+1)-A276088(n)]`
-/

namespace A381035.P10261510143331288695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (2 * n + 1) - A276088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381035.P10261510143331288695

/-! ## A381035.P17498046056454839886

`lt[A380534(A233583(n+1)), A057427(n)]`
-/

namespace A381035.P17498046056454839886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380534 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381035.P17498046056454839886

/-!
# A381036: a(n) = 1 if there is a digit > 1 in the primorial base expansion of n, and the corresponding radix primes of all such digits are also prime factors of n, otherwise 0.

The programs for A381036, there is no canonical definition to state claims against.
-/

/-! ## A381036.P4200258502280162926

`char[A381037(n+1)]`
-/

namespace A381036.P4200258502280162926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A381036.P4200258502280162926

/-! ## A381036.P15366737301104142280

`and(A243927(A381050(1+n)), A381033(n))`
-/

namespace A381036.P15366737301104142280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A243927 (A381050 (1 + n)).toNat) (A381033 n)

end

end A381036.P15366737301104142280

/-!
# A381037: Numbers with a digit > 1 in their primorial base expansion that are multiples of the corresponding radix primes of all such digits.

The programs for A381037, there is no canonical definition to state claims against.
-/

/-! ## A381037.P3389481522934818433

`filter[A381034(n+1), A381036(#)]`
-/

namespace A381037.P3389481522934818433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P3389481522934818433

/-! ## A381037.P17399554073767629434

`filter[A305903(n+1), A381036(#)]`
-/

namespace A381037.P17399554073767629434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P17399554073767629434

/-! ## A381037.P18076272254957522637

`filter[A319350(n+1), A381036(#)]`
-/

namespace A381037.P18076272254957522637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P18076272254957522637

/-! ## A381037.P2508770225234270142

`filter[A336855(n+1), A381036(#)]`
-/

namespace A381037.P2508770225234270142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P2508770225234270142

/-! ## A381037.P5263488814988985450

`filter[A305800(n+1), A381036(#)]`
-/

namespace A381037.P5263488814988985450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P5263488814988985450

/-! ## A381037.P4292718094221014924

`filter[A305801(n+1), A381036(#)]`
-/

namespace A381037.P4292718094221014924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P4292718094221014924

/-! ## A381037.P14747114794324875952

`filter[A305900(n+1), A381036(#)]`
-/

namespace A381037.P14747114794324875952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P14747114794324875952

/-! ## A381037.P4695937729956549983

`filter[A319704(n+1), A381036(#)]`
-/

namespace A381037.P4695937729956549983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P4695937729956549983

/-! ## A381037.P13228874738561409466

`filter[A319707(n+1), A381036(#)]`
-/

namespace A381037.P13228874738561409466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P13228874738561409466

/-! ## A381037.P7388828181384792904

`filter[A331304(n+1), A381036(#)]`
-/

namespace A381037.P7388828181384792904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P7388828181384792904

/-! ## A381037.P15784202448005117091

`filter[A379000(n+1), A381036(#)]`
-/

namespace A381037.P15784202448005117091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P15784202448005117091

/-! ## A381037.P2524375395253446130

`filter[A305890(n+1), A381036(#)]`
-/

namespace A381037.P2524375395253446130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P2524375395253446130

/-! ## A381037.P14161007775499464544

`filter[A305976(n+1), A381036(#)]`
-/

namespace A381037.P14161007775499464544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P14161007775499464544

/-! ## A381037.P14935742074239702727

`filter[A305979(n+1), A381036(#)]`
-/

namespace A381037.P14935742074239702727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P14935742074239702727

/-! ## A381037.P6545672527660031940

`filter[A305901(n+1), A381036(#)]`
-/

namespace A381037.P6545672527660031940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P6545672527660031940

/-! ## A381037.P2029383325496592240

`filter[A344180(n), A381036(#)]`
-/

namespace A381037.P2029383325496592240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P2029383325496592240

/-! ## A381037.P14607438059546914215

`filter[A324401(n+1), A381036(#)]`
-/

namespace A381037.P14607438059546914215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P14607438059546914215

/-! ## A381037.P14725851532046315889

`filter[A305902(n+1), A381036(#)]`
-/

namespace A381037.P14725851532046315889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P14725851532046315889

/-! ## A381037.P11776697473160530478

`lt[0, A381036(n)]`
-/

namespace A381037.P11776697473160530478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A381037.P11776697473160530478

/-! ## A381037.P4218838413618816692

`eq[A293668(n), A381036(n)]`
-/

namespace A381037.P4218838413618816692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P4218838413618816692

/-!
# A381042: Alternating sum of floor(n^(1/k)), with k >= 2.

The programs for A381042, there is no canonical definition to state claims against.
-/

/-! ## A381042.P12996684872237434847

`∑[A382691(A154272(n+1)+n)]`
-/

namespace A381042.P12996684872237434847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (A154272 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381042.P12996684872237434847

/-! ## A381042.P13638396365175097102

`∑[A382691(A351114(n+1)+n)]`
-/

namespace A381042.P13638396365175097102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (A351114 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381042.P13638396365175097102

/-! ## A381042.P11325898347258450684

`∑[A382691(A057427(n)+abs(1-n))]`
-/

namespace A381042.P11325898347258450684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (A057427 n + |1 - (n : ℤ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381042.P11325898347258450684

/-! ## A381042.P7873698235441318620

`∑[A382691(n+1)]-A382691(n+1)`
-/

namespace A381042.P7873698235441318620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A382691 (n + 1)

end

end A381042.P7873698235441318620

/-! ## A381042.P15097131199667646208

`∑[A382691(A010054(n)*A316342(n)+n)]`
-/

namespace A381042.P15097131199667646208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (A010054 n * A316342 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381042.P15097131199667646208

/-! ## A381042.P8724332033182564236

`∑[A382691(A000007(n)*A087003(n+1)+n)]`
-/

namespace A381042.P8724332033182564236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (A000007 n * A087003 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381042.P8724332033182564236

/-! ## A381042.P447615571948432652

`∑[A382691(A136522(3*n)*A087003(n+1)+n)]`
-/

namespace A381042.P447615571948432652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (A136522 (3 * n) * A087003 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381042.P447615571948432652

/-! ## A381042.P11081889482400251316

`∑[A382691(A151933(n)+n)]`
-/

namespace A381042.P11081889482400251316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (A151933 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381042.P11081889482400251316

/-!
# A381043: Centered pentagonal numbers which are squarefree semiprimes.

The programs for A381043, there is no canonical definition to state claims against.
-/

/-! ## A381043.P16786555207514664731

`A382132(A277112(n+1))`
-/

namespace A381043.P16786555207514664731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382132 (A277112 (n + 1)).toNat

end

end A381043.P16786555207514664731

/-! ## A381043.P12392570308683952033

`filter[A005891(n), A280710(#)]`
-/

namespace A381043.P12392570308683952033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A381043.P12392570308683952033

/-! ## A381043.P13593992087854581997

`filter[A005891(n+1), A354927(#)]`
-/

namespace A381043.P13593992087854581997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A381043.P13593992087854581997

/-! ## A381043.P1839190457229913534

`filter[A382132(n+1), A008966(#)]`
-/

namespace A381043.P1839190457229913534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381043.P1839190457229913534

/-! ## A381043.P17359446214193241880

`filter[A382132(n+1), A049240(#)]`
-/

namespace A381043.P17359446214193241880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A381043.P17359446214193241880

/-!
# A381044: Primes prime(k) followed by a gap, prime(k+1)-prime(k), smaller than the local geometric average gap between consecutive primes: log(prime(k))/e^(gamma).

The programs for A381044, there is no canonical definition to state claims against.
-/

/-! ## A381044.P9201189926002160952

`A056239(A057470(n+6))`
-/

namespace A381044.P9201189926002160952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A057470 (n + 6)).toNat

end

end A381044.P9201189926002160952

/-! ## A381044.P15649110327899235442

`or(A001359(n+6), A330887(3*n+5))`
-/

namespace A381044.P15649110327899235442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001359 (n + 6)) (A330887 (3 * n + 5))

end

end A381044.P15649110327899235442

/-! ## A381044.P3393043977347970483

`A001097(A293754(2*(n+2))+5)`
-/

namespace A381044.P3393043977347970483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A293754 (2 * (n + 2)) + 5).toNat

end

end A381044.P3393043977347970483

/-! ## A381044.P7885479580930452609

`A001359(n+6)%A133967(n+1)`
-/

namespace A381044.P7885479580930452609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 6)) (A133967 (n + 1))

end

end A381044.P7885479580930452609

/-! ## A381044.P6348726233743561239

`Δ[A065475(∑[A001359(n+5)])]`
-/

namespace A381044.P6348726233743561239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381044.P6348726233743561239

/-!
# A381045: Happy cubes: cubes whose trajectory under iteration of sum of squares of digits map includes 1.

The programs for A381045, there is no canonical definition to state claims against.
-/

/-! ## A381045.P14074049558380620487

`∩[A140172(n+1), A000578(n)]`
-/

namespace A381045.P14074049558380620487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381045.P14074049558380620487

/-! ## A381045.P511267124604482020

`∩[A140172(n+1), A109900(n)]`
-/

namespace A381045.P511267124604482020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381045.P511267124604482020

/-! ## A381045.P5170500455253585930

`∩[A053012(n+1), A140172(n+1)]`
-/

namespace A381045.P5170500455253585930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381045.P5170500455253585930

/-! ## A381045.P3871683820624951424

`∩[A054762(n+1), A140172(n+1)]`
-/

namespace A381045.P3871683820624951424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381045.P3871683820624951424

/-! ## A381045.P4893145403588193551

`∩[A115169(n+1), A140172(n+1)]`
-/

namespace A381045.P4893145403588193551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381045.P4893145403588193551

/-!
# A381046: Happy repdigit numbers.

The programs for A381046, there is no canonical definition to state claims against.
-/

/-! ## A381046.P17004733302139765583

`∩[A010785(n), A124095(n)]`
-/

namespace A381046.P17004733302139765583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381046.P17004733302139765583

/-! ## A381046.P1585103309932644410

`∩[A335779(n+1), A124095(n)]`
-/

namespace A381046.P1585103309932644410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381046.P1585103309932644410

/-! ## A381046.P6551805729026409279

`∩[A002113(n+1), A124095(n)]`
-/

namespace A381046.P6551805729026409279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381046.P6551805729026409279

/-! ## A381046.P16489332600069112629

`∩[A216237(n+1), A010785(n)]`
-/

namespace A381046.P16489332600069112629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381046.P16489332600069112629

/-!
# A381048: Elimination order of the first person in a variation of the Josephus problem, where there are n people total. During each round the first person is skipped, and the second and the third person are eliminated. Then the process repeats.

The programs for A381048, there is no canonical definition to state claims against.
-/

/-! ## A381048.P10430543109941414442

`ceil(A327625(2*(n+1))/3)`
-/

namespace A381048.P10430543109941414442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327625 (2 * (n + 1)) : ℚ) / 3⌉

end

end A381048.P10430543109941414442

/-! ## A381048.P2989524295490007241

`ceil(n+1-A038502(n+1)/3)`
-/

namespace A381048.P2989524295490007241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) - (A038502 (n + 1) : ℚ) / 3⌉

end

end A381048.P2989524295490007241

/-! ## A381048.P5115698868215064397

`A166711(A327625(n+1))`
-/

namespace A381048.P5115698868215064397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (A327625 (n + 1)).toNat

end

end A381048.P5115698868215064397

/-! ## A381048.P16391513462210588533

`A004396(A327625(n+1)+1)`
-/

namespace A381048.P16391513462210588533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A327625 (n + 1) + 1).toNat

end

end A381048.P16391513462210588533

/-! ## A381048.P7719271935913910344

`A009947(A327625(n+1)+1)`
-/

namespace A381048.P7719271935913910344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A327625 (n + 1) + 1).toNat

end

end A381048.P7719271935913910344

/-! ## A381048.P5637776302712421112

`A008620(A016789(n)-A038502(n+1))`
-/

namespace A381048.P5637776302712421112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A016789 n - A038502 (n + 1)).toNat

end

end A381048.P5637776302712421112

/-! ## A381048.P18038987463983948963

`A008620(3*(n+1))-A008620(A038502(n+1))`
-/

namespace A381048.P18038987463983948963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * (n + 1)) - A008620 (A038502 (n + 1)).toNat

end

end A381048.P18038987463983948963

/-! ## A381048.P779944186811079268

`A114091(3*n+4)-A114091(A038502(n+1))`
-/

namespace A381048.P779944186811079268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114091 (3 * n + 4) - A114091 (A038502 (n + 1)).toNat

end

end A381048.P779944186811079268

/-!
# A381049: Triangle T(n,k) read by rows: where T(n,k) is the number of the k-th eliminated person in the variation of the Josephus elimination process for n people, where one person is skipped and two people are eliminated.

The programs for A381049, there is no canonical definition to state claims against.
-/

/-! ## A381049.P11904001935170256040

`A246688(n+1)-A212663(A037952(n+1)+1)`
-/

namespace A381049.P11904001935170256040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246688 (n + 1) - A212663 (A037952 (n + 1) + 1).toNat

end

end A381049.P11904001935170256040

/-! ## A381049.P7839780990904629259

`A373212(A204928(n+2))`
-/

namespace A381049.P7839780990904629259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373212 (A204928 (n + 2)).toNat

end

end A381049.P7839780990904629259

/-! ## A381049.P5776995747851736031

`A352964(n)+A010054(A056040(n))`
-/

namespace A381049.P5776995747851736031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352964 n + A010054 (A056040 n).toNat

end

end A381049.P5776995747851736031

/-!
# A381050: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and down-under-down dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A381050, there is no canonical definition to state claims against.
-/

/-! ## A381050.P11983510893048687503

`A330896(n+1)+A010815(A101156(n+5))`
-/

namespace A381050.P11983510893048687503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330896 (n + 1) + A010815 (A101156 (n + 5)).toNat

end

end A381050.P11983510893048687503

/-! ## A381050.P11376238531498324273

`A176206(A375354(n+1))`
-/

namespace A381050.P11376238531498324273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176206 (A375354 (n + 1)).toNat

end

end A381050.P11376238531498324273

/-! ## A381050.P16584556137531921255

`A057058(n+1)-A359429(A124302(n))`
-/

namespace A381050.P16584556137531921255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (n + 1) - A359429 (A124302 n).toNat

end

end A381050.P16584556137531921255

/-! ## A381050.P1035469924009164354

`A061775(A207375(n+1)*A287384(n))`
-/

namespace A381050.P1035469924009164354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A207375 (n + 1) * A287384 n).toNat

end

end A381050.P1035469924009164354

/-! ## A381050.P2740650620998691866

`A286001(A207375(n+1)^A065648(n))`
-/

namespace A381050.P2740650620998691866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286001 (SequenceMachineLib.roundAway ((A207375 (n + 1) : ℚ) ^ (A065648 n : ℤ))).toNat

end

end A381050.P2740650620998691866

/-!
# A381051: A version of the Josephus problem: a(n) is the surviving integer under the eliminate-skip-eliminate version of the elimination process.

The programs for A381051, there is no canonical definition to state claims against.
-/

/-! ## A381051.P10503841967725079722

`(a(n-2)+1)%n+2` with `a(0)=1, a(1)=2`
-/

namespace A381051.P10503841967725079722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 2) + 1) % n + 2

end

end A381051.P10503841967725079722

/-! ## A381051.P4929657752945579293

`ceil(A337191(3*n+2)/3)`
-/

namespace A381051.P4929657752945579293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337191 (3 * n + 2) : ℚ) / 3⌉

end

end A381051.P4929657752945579293

/-! ## A381051.P18076284319601655096

`floor(A337191(3*n+4)/3)`
-/

namespace A381051.P18076284319601655096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337191 (3 * n + 4) : ℚ) / 3⌋

end

end A381051.P18076284319601655096

/-! ## A381051.P7845977078879755652

`A383846(n+2)-1`
-/

namespace A381051.P7845977078879755652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383846 (n + 2) - 1

end

end A381051.P7845977078879755652

/-! ## A381051.P9360739751777140457

`A023443(A383846(n+2))`
-/

namespace A381051.P9360739751777140457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A383846 (n + 2)).toNat

end

end A381051.P9360739751777140457

/-!
# A381052: Expansion of e.g.f. log(1 - x)^2 * exp(3*x) / 2.

The programs for A381052, there is no canonical definition to state claims against.
-/

/-! ## A381052.P9745198717595511283

`∑[∑[A376972(A008458(n))]]`
-/

namespace A381052.P9745198717595511283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376972 (A008458 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381052.P9745198717595511283

/-! ## A381052.P3405641217688500617

`A399999(n+1)-A054846(A001831(n))`
-/

namespace A381052.P3405641217688500617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399999 (n + 1) - A054846 (A001831 n).toNat

end

end A381052.P3405641217688500617

/-!
# A381053: Integers k such that Fibonacci(k) is odd and divides the sum of the first Fibonacci(k) nonzero Fibonacci numbers.

The programs for A381053, there is no canonical definition to state claims against.
-/

/-! ## A381053.P13932151326640884387

`∩[A226872(n+1), A383021(n+1)]`
-/

namespace A381053.P13932151326640884387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P13932151326640884387

/-! ## A381053.P14047886225093648060

`∩[A276706(n+1), A383021(n+1)]`
-/

namespace A381053.P14047886225093648060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P14047886225093648060

/-! ## A381053.P9980900974513412434

`∩[A047236(n+1), A383021(n+1)]`
-/

namespace A381053.P9980900974513412434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P9980900974513412434

/-! ## A381053.P6462782696011323077

`∩[A229829(n+1), A383021(n+1)]`
-/

namespace A381053.P6462782696011323077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P6462782696011323077

/-! ## A381053.P12737691132638698276

`∩[A229303(n+1), A383021(n+1)]`
-/

namespace A381053.P12737691132638698276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P12737691132638698276

/-! ## A381053.P5918287768300051811

`∩[A182337(n+1), A383021(n+1)]`
-/

namespace A381053.P5918287768300051811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P5918287768300051811

/-! ## A381053.P9730062233240405541

`∩[A001651(n+1), A383021(n+1)]`
-/

namespace A381053.P9730062233240405541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P9730062233240405541

/-! ## A381053.P3400174105574287876

`filter[A383021(n+1), A011655(#)]`
-/

namespace A381053.P3400174105574287876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A381053.P3400174105574287876

/-! ## A381053.P12018488717855735866

`filter[A383021(n+1), A267208(#)]`
-/

namespace A381053.P12018488717855735866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A381053.P12018488717855735866

/-! ## A381053.P9947550578778146148

`∩[A119905(n+1), A383021(n+1)]`
-/

namespace A381053.P9947550578778146148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P9947550578778146148

/-!
# A381055: a(n) = -n/2 if n is even, 3n + 1 if n is odd.

The programs for A381055, the canonical program `A381055.P1611355681851500548` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381055 has offset 0).

The definition of A381055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381055.P18044781056188137149

`ogf((4x-x^2+2x^3)/(1-2x^2+x^4))`
-/

namespace A381055.P18044781056188137149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1, 2] [1, 0, -2, 0, 1] n

end

end A381055.P18044781056188137149

namespace A381055

/-- `ogf((4x-x^2+2x^3)/(1-2x^2+x^4))` -/
def P18044781056188137149.Spec : Prop :=
  ∀ n, P18044781056188137149.a n = A381055 n

end A381055

/-! ## A381055.P1611355681851500548

`1/4*((-1)^(n+1)*(7*n+2)+5*n+2)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381055

/-- `1/4*((-1)^(n+1)*(7*n+2)+5*n+2)` -/
def P1611355681851500548.Spec : Prop :=
  ∀ n, P1611355681851500548.a n = (A381055 n : ℚ)

end A381055

/-! ## A381055.P9514587545560700321

`Δ[n*(n-1)%2]+lcm(2, n)/gcd(2, n)`
-/

namespace A381055.P9514587545560700321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (Nat.lcm 2 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A381055.P9514587545560700321

namespace A381055

/-- `Δ[n*(n-1)%2]+lcm(2, n)/gcd(2, n)` -/
def P9514587545560700321.Spec : Prop :=
  ∀ n, P9514587545560700321.a n = (A381055 n : ℚ)

end A381055

/-! ## A381055.P4474941006421839439

`-((-1)^n*A006370(n))`
-/

namespace A381055.P4474941006421839439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A006370 n)

end

end A381055.P4474941006421839439

namespace A381055

/-- `-((-1)^n*A006370(n))` -/
def P4474941006421839439.Spec : Prop :=
  ∀ n, P4474941006421839439.a n = A381055 n

end A381055

/-! ## A381055.P9167739123915948538

`A006370(n)-A237420(n)`
-/

namespace A381055.P9167739123915948538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n - A237420 n

end

end A381055.P9167739123915948538

namespace A381055

/-- `A006370(n)-A237420(n)` -/
def P9167739123915948538.Spec : Prop :=
  ∀ n, P9167739123915948538.a n = A381055 n

end A381055

/-! ## A381055.P7008030011313827439

`A271478(n)-A137501(n)`
-/

namespace A381055.P7008030011313827439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 n - A137501 n

end

end A381055.P7008030011313827439

namespace A381055

/-- `A271478(n)-A137501(n)` -/
def P7008030011313827439.Spec : Prop :=
  ∀ n, P7008030011313827439.a n = A381055 n

end A381055

/-! ## A381055.P16230944581450982639

`A047615(n+1)-A195312(n)`
-/

namespace A381055.P16230944581450982639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1) - A195312 n

end

end A381055.P16230944581450982639

namespace A381055

/-- `A047615(n+1)-A195312(n)` -/
def P16230944581450982639.Spec : Prop :=
  ∀ n, P16230944581450982639.a n = A381055 n

end A381055

/-! ## A381055.P7256263171445048655

`A173237(n+1)-A066070(n+1)`
-/

namespace A381055.P7256263171445048655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173237 (n + 1) - A066070 (n + 1)

end

end A381055.P7256263171445048655

namespace A381055

/-- `A173237(n+1)-A066070(n+1)` -/
def P7256263171445048655.Spec : Prop :=
  ∀ n, P7256263171445048655.a n = A381055 n

end A381055

/-! ## A381055.P596354988459332379

`A195031(n+1)-A180486(n+1)`
-/

namespace A381055.P596354988459332379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195031 (n + 1) - A180486 (n + 1)

end

end A381055.P596354988459332379

namespace A381055

/-- `A195031(n+1)-A180486(n+1)` -/
def P596354988459332379.Spec : Prop :=
  ∀ n, P596354988459332379.a n = A381055 n

end A381055

/-! ## A381055.P16393690185241733194

`A228967(n+1)-A168199(n+1)`
-/

namespace A381055.P16393690185241733194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228967 (n + 1) - A168199 (n + 1)

end

end A381055.P16393690185241733194

namespace A381055

/-- `A228967(n+1)-A168199(n+1)` -/
def P16393690185241733194.Spec : Prop :=
  ∀ n, P16393690185241733194.a n = A381055 n

end A381055

/-! ## A381055.P11150866161946123896

`∑[7-a(n-1)]-a(n-1)-A185452(2*(n+2))` with `a(0)=0`
-/

namespace A381055.P11150866161946123896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1) - A185452 (2 * (n + 2))

end

end A381055.P11150866161946123896

namespace A381055

/-- `∑[7-a(n-1)]-a(n-1)-A185452(2*(n+2))` -/
def P11150866161946123896.Spec : Prop :=
  ∀ n, P11150866161946123896.a n = A381055 n

end A381055

/-!
# A381060: Numbers t which are the sum of some subset of the values of k satisfying the equation (t - floor((t - k)/k)) mod k = 0 (t > 1, 1 <= k < t).

The programs for A381060, there is no canonical definition to state claims against.
-/

/-! ## A381060.P18301107088527880589

`lt[A044050(3*n+5), A036039(A000005(n+1))]`
-/

namespace A381060.P18301107088527880589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044050 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036039 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381060.P18301107088527880589

/-! ## A381060.P16079951156649529444

`lt[A294859(n+4), A318721(n+1)]`
-/

namespace A381060.P16079951156649529444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294859 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318721 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381060.P16079951156649529444

/-! ## A381060.P4523001372780412431

`lt[A360457(n+1), A000001(A000005(n+1))]`
-/

namespace A381060.P4523001372780412431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381060.P4523001372780412431

/-! ## A381060.P12378212712021736374

`lt[A124738(n+1), A353260(A037445(n+1))]`
-/

namespace A381060.P12378212712021736374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353260 (A037445 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381060.P12378212712021736374

/-! ## A381060.P6186473372708456555

`lt[A194120(A332488(n+1)), A037445(n+1)]`
-/

namespace A381060.P6186473372708456555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194120 (A332488 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381060.P6186473372708456555

/-!
# A381063: Lexicographically earliest sequence of positive integers such that each nonempty subset has a distinct geometric mean.

The programs for A381063, there is no canonical definition to state claims against.
-/

/-! ## A381063.P18270001714245844363

`∩[A066720(n+1), A267215(n+1)]`
-/

namespace A381063.P18270001714245844363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381063.P18270001714245844363

/-! ## A381063.P16476829328628969034

`∩[A066720(n+1), A345913(n+1)]`
-/

namespace A381063.P16476829328628969034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381063.P16476829328628969034

/-! ## A381063.P7613406208426441206

`∩[A066720(n+1), A331995(n+1)]`
-/

namespace A381063.P7613406208426441206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381063.P7613406208426441206

/-! ## A381063.P10460080920877578876

`∩[A066720(n+1), A347457(n+1)]`
-/

namespace A381063.P10460080920877578876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381063.P10460080920877578876

/-! ## A381063.P17785640947640192899

`∩[A066720(n+1), A353866(n+1)]`
-/

namespace A381063.P17785640947640192899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381063.P17785640947640192899

/-!
# A381066: Expansion of e.g.f. log(1-x)^4 * exp(-x) / 24.

The programs for A381066, there is no canonical definition to state claims against.
-/

/-! ## A381066.P17343364475107389708

`A051724(A373759(n)-A353884(n))`
-/

namespace A381066.P17343364475107389708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A373759 n - A353884 n).toNat

end

end A381066.P17343364475107389708

/-! ## A381066.P14362816720953778103

`A214979(A001710(n)-A154258(n+1))`
-/

namespace A381066.P14362816720953778103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214979 (A001710 n - A154258 (n + 1)).toNat

end

end A381066.P14362816720953778103

/-! ## A381066.P15727077180716321204

`A214979(A001710(n)-A154263(n+1))`
-/

namespace A381066.P15727077180716321204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214979 (A001710 n - A154263 (n + 1)).toNat

end

end A381066.P15727077180716321204

/-! ## A381066.P869537791582153386

`A059995(A267323(n+1))-A335472(n)`
-/

namespace A381066.P869537791582153386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A267323 (n + 1)).toNat - A335472 n

end

end A381066.P869537791582153386

/-!
# A381067: Expansion of e.g.f. log(1-x)^2 * exp(-x) / (2 * (1-x)).

The programs for A381067, there is no canonical definition to state claims against.
-/

/-! ## A381067.P1762511784621101257

`A381065(n)+A381065(n+1)`
-/

namespace A381067.P1762511784621101257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381065 n + A381065 (n + 1)

end

end A381067.P1762511784621101257

/-! ## A381067.P1807718393270267784

`A269954(∑[n+1]+3)`
-/

namespace A381067.P1807718393270267784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269954 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A381067.P1807718393270267784

/-!
# A381068: Expansion of e.g.f. -log(1-x)^3 * exp(-x) / (6 * (1-x)).

The programs for A381068, there is no canonical definition to state claims against.
-/

/-! ## A381068.P3395575177256578092

`A381066(n)+A381066(n+1)`
-/

namespace A381068.P3395575177256578092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381066 n + A381066 (n + 1)

end

end A381068.P3395575177256578092

/-! ## A381068.P13001485363260982787

`A054899(A248871(n)-A345751(n))`
-/

namespace A381068.P13001485363260982787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A248871 n - A345751 n).toNat

end

end A381068.P13001485363260982787

/-! ## A381068.P6754605049295470116

`A064458(A177253(n)*A324743(n))`
-/

namespace A381068.P6754605049295470116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A177253 n * A324743 n).toNat

end

end A381068.P6754605049295470116

/-!
# A381069: Numbers k that have a record number of divisors that have the same binary weight as k.

The programs for A381069, there is no canonical definition to state claims against.
-/

/-! ## A381069.P1078946082825954978

`A102443(A084638(n+1))`
-/

namespace A381069.P1078946082825954978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A084638 (n + 1)).toNat

end

end A381069.P1078946082825954978

/-! ## A381069.P15551717479304297163

`A102443(A117302(n+1))`
-/

namespace A381069.P15551717479304297163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A117302 (n + 1)).toNat

end

end A381069.P15551717479304297163

/-! ## A381069.P16281672771848715517

`A102443(A157021(n+1))`
-/

namespace A381069.P16281672771848715517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A157021 (n + 1)).toNat

end

end A381069.P16281672771848715517

/-! ## A381069.P13323575099130525602

`A102443(A243085(n+1))`
-/

namespace A381069.P13323575099130525602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A243085 (n + 1)).toNat

end

end A381069.P13323575099130525602

/-! ## A381069.P10572552288712813699

`∩[A194415(n+1), A262609(n+1)]`
-/

namespace A381069.P10572552288712813699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381069.P10572552288712813699

/-!
# A381073: Numbers k such that k and k+2 are both terms in A380846.

The programs for A381073, there is no canonical definition to state claims against.
-/

/-! ## A381073.P2395755854960120679

`∩[A380846(n+1)-2, A380846(n+1)]`
-/

namespace A381073.P2395755854960120679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380846 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381073.P2395755854960120679

/-!
# A381075: Sorted positions of first appearances in A280292 (sum of prime factors minus sum of distinct prime factors).

The programs for A381075, there is no canonical definition to state claims against.
-/

/-! ## A381075.P8976594156685223123

`∩[A025475(n+1), A136803(n+1)]`
-/

namespace A381075.P8976594156685223123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381075.P8976594156685223123

/-! ## A381075.P11102669807181185611

`∩[A134611(n+1), A136803(n+1)]`
-/

namespace A381075.P11102669807181185611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381075.P11102669807181185611

/-! ## A381075.P7956122416497110696

`∩[A136803(n+1), A195942(n+1)]`
-/

namespace A381075.P7956122416497110696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381075.P7956122416497110696

/-! ## A381075.P12541703483840049373

`∩[A136803(n+1), A388719(n+1)]`
-/

namespace A381075.P12541703483840049373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381075.P12541703483840049373

/-! ## A381075.P5950939958928679036

`filter[A329366(n+1), A374036(#)]`
-/

namespace A381075.P5950939958928679036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A381075.P5950939958928679036

/-!
# A381076: Sorted positions of first appearances in A066503 (n minus squarefree kernel of n).

The programs for A381076, there is no canonical definition to state claims against.
-/

/-! ## A381076.P16052807323553085712

`eq[A054973(n+1), A083916(A000041(n))]`
-/

namespace A381076.P16052807323553085712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A000041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381076.P16052807323553085712

/-!
# A381077: Sorted positions of first appearances in A380986 (product of prime indices minus product of distinct prime indices).

The programs for A381077, there is no canonical definition to state claims against.
-/

/-! ## A381077.P16566882715018387457

`∩[A085046(n+1), A110262(n+1)]`
-/

namespace A381077.P16566882715018387457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381077.P16566882715018387457

/-! ## A381077.P10051791096503854983

`∩[A085046(n+1), A184421(n+1)]`
-/

namespace A381077.P10051791096503854983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381077.P10051791096503854983

/-! ## A381077.P3318745442849545257

`∩[A227762(n+1), A381950(n+1)]`
-/

namespace A381077.P3318745442849545257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381077.P3318745442849545257

/-! ## A381077.P9762041388622106267

`∩[A324766(n+1), A381950(n+1)]`
-/

namespace A381077.P9762041388622106267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381077.P9762041388622106267

/-!
# A381079: Number of integer partitions of n whose greatest multiplicity is equal to their sum of distinct parts.

The programs for A381079, there is no canonical definition to state claims against.
-/

/-! ## A381079.P14342159101357794660

`A000330(A026392(n+1))%∏{e}[n+1, #+1]`
-/

namespace A381079.P14342159101357794660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000330 (A026392 (n + 1)).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A381079.P14342159101357794660

/-! ## A381079.P11830495300037837800

`(∑[A186579(2*n+5)]-2)%A076869(3*n+4)`
-/

namespace A381079.P11830495300037837800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186579 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 2) (A076869 (3 * n + 4))

end

end A381079.P11830495300037837800

/-! ## A381079.P13626464834809260206

`A015860(A280352(n+1))%A000005(n+1)`
-/

namespace A381079.P13626464834809260206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015860 (A280352 (n + 1)).toNat) (A000005 (n + 1))

end

end A381079.P13626464834809260206

/-! ## A381079.P16307308348365456405

`A307744(A164731(n+1)%A092538(n+1))`
-/

namespace A381079.P16307308348365456405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307744 (Int.tmod (A164731 (n + 1)) (A092538 (n + 1))).toNat

end

end A381079.P16307308348365456405

/-! ## A381079.P14515774576517028688

`and(A070039(n+1), A250746(A370591(n+2)))`
-/

namespace A381079.P14515774576517028688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070039 (n + 1)) (A250746 (A370591 (n + 2)).toNat)

end

end A381079.P14515774576517028688

/-!
# A381080: a(n) is the number of transitive finite pure sets of depth at most n.

The programs for A381080, there is no canonical definition to state claims against.
-/

/-! ## A381080.P18416083193823069290

`A240137(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A381080.P18416083193823069290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  A240137 (a (n - 1)).toNat

end

end A381080.P18416083193823069290

/-!
# A381087: The smallest positive integer that produces a product that contains the digit 2 when multiplied by 2 a total of n times.

The programs for A381087, there is no canonical definition to state claims against.
-/

/-! ## A381087.P5356822614062782724

`A378138(A043717(2*n+1)-A000961(n+1))`
-/

namespace A381087.P5356822614062782724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378138 (A043717 (2 * n + 1) - A000961 (n + 1)).toNat

end

end A381087.P5356822614062782724

/-!
# A381088: Decimal expansion of the smallest number greater than 1 whose decimal and ternary expansions have the same succession of digits.

The programs for A381088, there is no canonical definition to state claims against.
-/

/-! ## A381088.P2005090483342648842

`A236998(A392144(n))%3`
-/

namespace A381088.P2005090483342648842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236998 (A392144 n).toNat) 3

end

end A381088.P2005090483342648842

/-! ## A381088.P1077991378367439936

`A054354(A374731(n+1))+A001842(n+1)`
-/

namespace A381088.P1077991378367439936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A374731 (n + 1)).toNat + A001842 (n + 1)

end

end A381088.P1077991378367439936

/-! ## A381088.P9792829122857969559

`A164002(n+1)-A048820(A288605(n+1))`
-/

namespace A381088.P9792829122857969559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164002 (n + 1) - A048820 (A288605 (n + 1)).toNat

end

end A381088.P9792829122857969559

/-! ## A381088.P4851853283371161246

`A191261(A393945(n+1))`
-/

namespace A381088.P4851853283371161246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (A393945 (n + 1)).toNat

end

end A381088.P4851853283371161246

/-! ## A381088.P5759876235298471277

`A007814(A181821(3*n+1)+A156061(n+1))`
-/

namespace A381088.P5759876235298471277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A181821 (3 * n + 1) + A156061 (n + 1)).toNat

end

end A381088.P5759876235298471277

/-!
# A381089: Number of binary relations on n unlabeled points without isolated points.

The programs for A381089, there is no canonical definition to state claims against.
-/

/-! ## A381089.P7116614519384790640

`A005100(A090358(n))*A174407(n+1)`
-/

namespace A381089.P7116614519384790640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A090358 n).toNat * A174407 (n + 1)

end

end A381089.P7116614519384790640

/-!
# A381095: Indices of prime squares in A381019.

The programs for A381095, there is no canonical definition to state claims against.
-/

/-! ## A381095.P5557057176027961182

`∏{p}[A226484(3*(n+1))+A285509(n+3), #]`
-/

namespace A381095.P5557057176027961182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226484 (3 * (n + 1)) + A285509 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A381095.P5557057176027961182

/-!
# A381096: Number of k <= n such that k is neither coprime to n and rad(k) != rad(n), where rad = A007947.

The programs for A381096, the canonical program `A381096.P9367970727555691698` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381096 has offset 1).

The definition of A381096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381096.P9367970727555691698

`(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1)-A032741((n+1)/∏{p}[n+1, #])`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A381096

/-- `(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1)-A032741((n+1)/∏{p}[n+1, #])` -/
def P9367970727555691698.Spec : Prop :=
  ∀ n, P9367970727555691698.a n = A381096 (n + 1)

theorem P9367970727555691698.correct : P9367970727555691698.Spec := by
  intro n
  simp only [A381096, Nat.add_sub_cancel]

end A381096

/-! ## A381096.P11795226807409392518

`A016035(n+1)-A183094(n+1)`
-/

namespace A381096.P11795226807409392518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) - A183094 (n + 1)

end

end A381096.P11795226807409392518

namespace A381096

/-- `A016035(n+1)-A183094(n+1)` -/
def P11795226807409392518.Spec : Prop :=
  ∀ n, P11795226807409392518.a n = A381096 (n + 1)

end A381096

/-!
# A381097: Consider the polynomial P(m,z) = Sum_{i=1..k} d(i)*z^(i-1) where d(1), d(2), ..., d(k) are the k divisors of m. The sequence lists the numbers m such that P(m,z) is irreducible.

The programs for A381097, there is no canonical definition to state claims against.
-/

/-! ## A381097.P15182669466882598072

`∪[A000040(n+1), A292226(n+1)]`
-/

namespace A381097.P15182669466882598072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P15182669466882598072

/-! ## A381097.P4219989913504788617

`∪[A000430(n+1), A292226(n+1)]`
-/

namespace A381097.P4219989913504788617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P4219989913504788617

/-! ## A381097.P8130437690217322216

`∪[A009087(n+1), A292226(n+1)]`
-/

namespace A381097.P8130437690217322216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P8130437690217322216

/-!
# A381099: a(n) is the smallest prime number that contains Fibonacci(n) as a substring.

The programs for A381099, there is no canonical definition to state claims against.
-/

/-! ## A381099.P872135792145729922

`A062584(A000045(n))`
-/

namespace A381099.P872135792145729922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A000045 n).toNat

end

end A381099.P872135792145729922

/-! ## A381099.P12596173444473769070

`A062584(2-(∑[a(n-1)-(1-a(n-2))]-n))` with `a(0)=2, a(1)=0`
-/

namespace A381099.P12596173444473769070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (2 - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))).toNat

end

end A381099.P12596173444473769070

/-! ## A381099.P533785303137481854

`A062584(((1+sqrt(5))^n-(1-sqrt(5))^n)/(2^n*sqrt(5)))`
-/

namespace A381099.P533785303137481854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (SequenceMachineLib.roundAway (((1 + Real.sqrt (5 : ℝ)) ^ n - (1 - Real.sqrt (5 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (5 : ℝ)))).toNat

end

end A381099.P533785303137481854

