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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A075500: Stirling2 triangle with scaled diagonals (powers of 5).

The programs for A075500, the canonical program `A075500.P347513091375538411` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075500 has offset 1).

The definition of A075500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075500.P347513091375538411

`5*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075500

/-- `5*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P347513091375538411.Spec : Prop :=
  ∀ n, (P347513091375538411.a n : ℤ) = A075500 (n + 1)

theorem P347513091375538411.correct : P347513091375538411.Spec := by
  intro n
  simp only [A075500, Nat.add_sub_cancel]

end A075500

/-! ## A075500.P16426520515364698524

`A000351(A025581(n))*A008277(n+1)`
-/

namespace A075500.P16426520515364698524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A008277 (n + 1)

end

end A075500.P16426520515364698524

namespace A075500

/-- `A000351(A025581(n))*A008277(n+1)` -/
def P16426520515364698524.Spec : Prop :=
  ∀ n, P16426520515364698524.a n = A075500 (n + 1)

end A075500

/-! ## A075500.P8255494621312324805

`A075505(n+1)/A130321(n)`
-/

namespace A075500.P8255494621312324805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075505 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A075500.P8255494621312324805

namespace A075500

/-- `A075505(n+1)/A130321(n)` -/
def P8255494621312324805.Spec : Prop :=
  ∀ n, P8255494621312324805.a n = (A075500 (n + 1) : ℚ)

end A075500

/-! ## A075500.P1488180085246262009

`A075505(n+1)/sqrt(A262616(n))`
-/

namespace A075500.P1488180085246262009
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A075505 (n + 1) : ℝ) / Real.sqrt (A262616 n : ℝ)

end

end A075500.P1488180085246262009

namespace A075500

/-- `A075505(n+1)/sqrt(A262616(n))` -/
def P1488180085246262009.Spec : Prop :=
  ∀ n, P1488180085246262009.a n = (A075500 (n + 1) : ℝ)

end A075500

/-! ## A075500.P13999215153421807206

`A075505(n+1)/2^A025581(n)`
-/

namespace A075500.P13999215153421807206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075505 (n + 1) : ℚ) / (2 : ℚ) ^ (A025581 n : ℤ)

end

end A075500.P13999215153421807206

namespace A075500

/-- `A075505(n+1)/2^A025581(n)` -/
def P13999215153421807206.Spec : Prop :=
  ∀ n, P13999215153421807206.a n = (A075500 (n + 1) : ℚ)

end A075500

/-! ## A075500.P6933066829524672695

`A008277(n+1)/A075497(n+1)*A075505(n+1)`
-/

namespace A075500.P6933066829524672695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A075497 (n + 1) : ℚ) * (A075505 (n + 1) : ℚ)

end

end A075500.P6933066829524672695

namespace A075500

/-- `A008277(n+1)/A075497(n+1)*A075505(n+1)` -/
def P6933066829524672695.Spec : Prop :=
  ∀ n, P6933066829524672695.a n = (A075500 (n + 1) : ℚ)

end A075500

/-! ## A075500.P7012101667421230738

`A038243(n)*A075497(n+1)/A038207(n)`
-/

namespace A075500.P7012101667421230738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038243 n * A075497 (n + 1) : ℚ) / (A038207 n : ℚ)

end

end A075500.P7012101667421230738

namespace A075500

/-- `A038243(n)*A075497(n+1)/A038207(n)` -/
def P7012101667421230738.Spec : Prop :=
  ∀ n, P7012101667421230738.a n = (A075500 (n + 1) : ℚ)

end A075500

/-! ## A075500.P17182552896876285107

`A008277(n+1)/A130321(n)*A007088(A130321(n))`
-/

namespace A075500.P17182552896876285107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A130321 n : ℚ) * (A007088 (A130321 n).toNat : ℚ)

end

end A075500.P17182552896876285107

namespace A075500

/-- `A008277(n+1)/A130321(n)*A007088(A130321(n))` -/
def P17182552896876285107.Spec : Prop :=
  ∀ n, P17182552896876285107.a n = (A075500 (n + 1) : ℚ)

end A075500

/-!
# A075501: Stirling2 triangle with scaled diagonals (powers of 6).

The programs for A075501, the canonical program `A075501.P2309162591454962912` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075501 has offset 1).

The definition of A075501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075501.P2309162591454962912

`6*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075501

/-- `6*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P2309162591454962912.Spec : Prop :=
  ∀ n, (P2309162591454962912.a n : ℤ) = A075501 (n + 1)

theorem P2309162591454962912.correct : P2309162591454962912.Spec := by
  intro n
  simp only [A075501, Nat.add_sub_cancel]

end A075501

/-! ## A075501.P11585401215301732819

`A075498(n+1)*A130321(n)`
-/

namespace A075501.P11585401215301732819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (n + 1) * A130321 n

end

end A075501.P11585401215301732819

namespace A075501

/-- `A075498(n+1)*A130321(n)` -/
def P11585401215301732819.Spec : Prop :=
  ∀ n, P11585401215301732819.a n = A075501 (n + 1)

end A075501

/-! ## A075501.P1779838591813714138

`A075497(n+1)*A140303(n)`
-/

namespace A075501.P1779838591813714138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (n + 1) * A140303 n

end

end A075501.P1779838591813714138

namespace A075501

/-- `A075497(n+1)*A140303(n)` -/
def P1779838591813714138.Spec : Prop :=
  ∀ n, P1779838591813714138.a n = A075501 (n + 1)

end A075501

/-! ## A075501.P13992728274823350956

`sqrt(A262616(n))*A075498(n+1)`
-/

namespace A075501.P13992728274823350956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A075498 (n + 1) : ℝ)

end

end A075501.P13992728274823350956

namespace A075501

/-- `sqrt(A262616(n))*A075498(n+1)` -/
def P13992728274823350956.Spec : Prop :=
  ∀ n, P13992728274823350956.a n = (A075501 (n + 1) : ℝ)

end A075501

/-! ## A075501.P6835434604455582787

`lcm(A075497(n+1), A075498(n+1))`
-/

namespace A075501.P6835434604455582787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075497 (n + 1)) (A075498 (n + 1))

end

end A075501.P6835434604455582787

namespace A075501

/-- `lcm(A075497(n+1), A075498(n+1))` -/
def P6835434604455582787.Spec : Prop :=
  ∀ n, (P6835434604455582787.a n : ℤ) = A075501 (n + 1)

end A075501

/-! ## A075501.P16875105440517846522

`A000079(A025581(n))*A075498(n+1)`
-/

namespace A075501.P16875105440517846522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A075498 (n + 1)

end

end A075501.P16875105440517846522

namespace A075501

/-- `A000079(A025581(n))*A075498(n+1)` -/
def P16875105440517846522.Spec : Prop :=
  ∀ n, P16875105440517846522.a n = A075501 (n + 1)

end A075501

/-! ## A075501.P14259899708221737248

`A075498(n+1)/A075497(n+1)*A075499(n+1)`
-/

namespace A075501.P14259899708221737248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075498 (n + 1) : ℚ) / (A075497 (n + 1) : ℚ) * (A075499 (n + 1) : ℚ)

end

end A075501.P14259899708221737248

namespace A075501

/-- `A075498(n+1)/A075497(n+1)*A075499(n+1)` -/
def P14259899708221737248.Spec : Prop :=
  ∀ n, P14259899708221737248.a n = (A075501 (n + 1) : ℚ)

end A075501

/-! ## A075501.P18254849550953443053

`A075497(n+1)/A075498(n+1)*A075504(n+1)`
-/

namespace A075501.P18254849550953443053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) : ℚ) / (A075498 (n + 1) : ℚ) * (A075504 (n + 1) : ℚ)

end

end A075501.P18254849550953443053

namespace A075501

/-- `A075497(n+1)/A075498(n+1)*A075504(n+1)` -/
def P18254849550953443053.Spec : Prop :=
  ∀ n, P18254849550953443053.a n = (A075501 (n + 1) : ℚ)

end A075501

/-! ## A075501.P14668745339350119732

`A038255(n)*A075497(n+1)/A038207(n)`
-/

namespace A075501.P14668745339350119732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038255 n * A075497 (n + 1) : ℚ) / (A038207 n : ℚ)

end

end A075501.P14668745339350119732

namespace A075501

/-- `A038255(n)*A075497(n+1)/A038207(n)` -/
def P14668745339350119732.Spec : Prop :=
  ∀ n, P14668745339350119732.a n = (A075501 (n + 1) : ℚ)

end A075501

/-! ## A075501.P144675509086765598

`A075497(n+1)*A165824(A130321(n))`
-/

namespace A075501.P144675509086765598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (n + 1) * A165824 (A130321 n).toNat

end

end A075501.P144675509086765598

namespace A075501

/-- `A075497(n+1)*A165824(A130321(n))` -/
def P144675509086765598.Spec : Prop :=
  ∀ n, P144675509086765598.a n = A075501 (n + 1)

end A075501

/-! ## A075501.P12327625099400704647

`A008277(n+1)*A130321(n)*A165824(A130321(n))`
-/

namespace A075501.P12327625099400704647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A130321 n * A165824 (A130321 n).toNat

end

end A075501.P12327625099400704647

namespace A075501

/-- `A008277(n+1)*A130321(n)*A165824(A130321(n))` -/
def P12327625099400704647.Spec : Prop :=
  ∀ n, P12327625099400704647.a n = A075501 (n + 1)

end A075501

/-!
# A075502: Triangle read by rows: Stirling2 triangle with scaled diagonals (powers of 7).

The programs for A075502, the canonical program `A075502.P3416065054201872776` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075502 has offset 1).

The definition of A075502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075502.P3416065054201872776

`7*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075502

/-- `7*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P3416065054201872776.Spec : Prop :=
  ∀ n, (P3416065054201872776.a n : ℤ) = A075502 (n + 1)

theorem P3416065054201872776.correct : P3416065054201872776.Spec := by
  intro n
  simp only [A075502, Nat.add_sub_cancel]

end A075502

/-! ## A075502.P11739189397912532615

`A000420(A025581(n))*A008277(n+1)`
-/

namespace A075502.P11739189397912532615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A025581 n).toNat * A008277 (n + 1)

end

end A075502.P11739189397912532615

namespace A075502

/-- `A000420(A025581(n))*A008277(n+1)` -/
def P11739189397912532615.Spec : Prop :=
  ∀ n, P11739189397912532615.a n = A075502 (n + 1)

end A075502

/-! ## A075502.P16512474687268472367

`A008277(n+1)/A013612(n)*A038271(n)`
-/

namespace A075502.P16512474687268472367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A013612 n : ℚ) * (A038271 n : ℚ)

end

end A075502.P16512474687268472367

namespace A075502

/-- `A008277(n+1)/A013612(n)*A038271(n)` -/
def P16512474687268472367.Spec : Prop :=
  ∀ n, P16512474687268472367.a n = (A075502 (n + 1) : ℚ)

end A075502

/-! ## A075502.P13732804522773372568

`A075497(n+1)/A038207(n)*A027466(n)`
-/

namespace A075502.P13732804522773372568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) : ℚ) / (A038207 n : ℚ) * (A027466 n : ℚ)

end

end A075502.P13732804522773372568

namespace A075502

/-- `A075497(n+1)/A038207(n)*A027466(n)` -/
def P13732804522773372568.Spec : Prop :=
  ∀ n, P13732804522773372568.a n = (A075502 (n + 1) : ℚ)

end A075502

/-! ## A075502.P13135485184790112089

`A075499(n+1)/A038231(n)*A027466(n)`
-/

namespace A075502.P13135485184790112089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) : ℚ) / (A038231 n : ℚ) * (A027466 n : ℚ)

end

end A075502.P13135485184790112089

namespace A075502

/-- `A075499(n+1)/A038231(n)*A027466(n)` -/
def P13135485184790112089.Spec : Prop :=
  ∀ n, P13135485184790112089.a n = (A075502 (n + 1) : ℚ)

end A075502

/-! ## A075502.P2397500239956365749

`A008277(n+1)/A038207(n)*A147716(n)`
-/

namespace A075502.P2397500239956365749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A038207 n : ℚ) * (A147716 n : ℚ)

end

end A075502.P2397500239956365749

namespace A075502

/-- `A008277(n+1)/A038207(n)*A147716(n)` -/
def P2397500239956365749.Spec : Prop :=
  ∀ n, P2397500239956365749.a n = (A075502 (n + 1) : ℚ)

end A075502

/-! ## A075502.P4246971218794465226

`A008277(n+1)*A165828(A130321(n))`
-/

namespace A075502.P4246971218794465226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A165828 (A130321 n).toNat

end

end A075502.P4246971218794465226

namespace A075502

/-- `A008277(n+1)*A165828(A130321(n))` -/
def P4246971218794465226.Spec : Prop :=
  ∀ n, P4246971218794465226.a n = A075502 (n + 1)

end A075502

/-!
# A075503: Stirling2 triangle with scaled diagonals (powers of 8).

The programs for A075503, the canonical program `A075503.P14811321202692626924` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075503 has offset 1).

The definition of A075503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075503.P14811321202692626924

`8*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075503

/-- `8*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P14811321202692626924.Spec : Prop :=
  ∀ n, (P14811321202692626924.a n : ℤ) = A075503 (n + 1)

theorem P14811321202692626924.correct : P14811321202692626924.Spec := by
  intro n
  simp only [A075503, Nat.add_sub_cancel]

end A075503

/-! ## A075503.P14777881650524795589

`A075499(n+1)*A130321(n)`
-/

namespace A075503.P14777881650524795589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075499 (n + 1) * A130321 n

end

end A075503.P14777881650524795589

namespace A075503

/-- `A075499(n+1)*A130321(n)` -/
def P14777881650524795589.Spec : Prop :=
  ∀ n, P14777881650524795589.a n = A075503 (n + 1)

end A075503

/-! ## A075503.P2703314481039786449

`A075497(1+n)*A262616(n)`
-/

namespace A075503.P2703314481039786449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (1 + n) * A262616 n

end

end A075503.P2703314481039786449

namespace A075503

/-- `A075497(1+n)*A262616(n)` -/
def P2703314481039786449.Spec : Prop :=
  ∀ n, P2703314481039786449.a n = A075503 (n + 1)

end A075503

/-! ## A075503.P2484414022978337085

`A130321(n)²*A075497(n+1)`
-/

namespace A075503.P2484414022978337085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A075497 (n + 1)

end

end A075503.P2484414022978337085

namespace A075503

/-- `A130321(n)²*A075497(n+1)` -/
def P2484414022978337085.Spec : Prop :=
  ∀ n, P2484414022978337085.a n = A075503 (n + 1)

end A075503

/-! ## A075503.P16359720718119219100

`sqrt(A262616(n))*A075499(n+1)`
-/

namespace A075503.P16359720718119219100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A075499 (n + 1) : ℝ)

end

end A075503.P16359720718119219100

namespace A075503

/-- `sqrt(A262616(n))*A075499(n+1)` -/
def P16359720718119219100.Spec : Prop :=
  ∀ n, P16359720718119219100.a n = (A075503 (n + 1) : ℝ)

end A075503

/-! ## A075503.P18230057921361346916

`A008277(n+1)*A130321(n)*A130321(n)²`
-/

namespace A075503.P18230057921361346916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A130321 n * A130321 n ^ 2

end

end A075503.P18230057921361346916

namespace A075503

/-- `A008277(n+1)*A130321(n)*A130321(n)²` -/
def P18230057921361346916.Spec : Prop :=
  ∀ n, P18230057921361346916.a n = A075503 (n + 1)

end A075503

/-! ## A075503.P8937788262184056457

`A075499(n+1)/A075497(n+1)*A075499(n+1)`
-/

namespace A075503.P8937788262184056457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) : ℚ) / (A075497 (n + 1) : ℚ) * (A075499 (n + 1) : ℚ)

end

end A075503.P8937788262184056457

namespace A075503

/-- `A075499(n+1)/A075497(n+1)*A075499(n+1)` -/
def P8937788262184056457.Spec : Prop :=
  ∀ n, P8937788262184056457.a n = (A075503 (n + 1) : ℚ)

end A075503

/-! ## A075503.P13355914447917715626

`(A075497(n+1)/A008277(n+1))²*A075497(n+1)`
-/

namespace A075503.P13355914447917715626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A075497 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)) ^ 2 * (A075497 (n + 1) : ℚ)

end

end A075503.P13355914447917715626

namespace A075503

/-- `(A075497(n+1)/A008277(n+1))²*A075497(n+1)` -/
def P13355914447917715626.Spec : Prop :=
  ∀ n, P13355914447917715626.a n = (A075503 (n + 1) : ℚ)

end A075503

/-! ## A075503.P3879917020075110335

`sqrt(A075499(n+1)/A008277(n+1))*A075499(n+1)`
-/

namespace A075503.P3879917020075110335
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A075499 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) : ℝ) * (A075499 (n + 1) : ℝ)

end

end A075503.P3879917020075110335

namespace A075503

/-- `sqrt(A075499(n+1)/A008277(n+1))*A075499(n+1)` -/
def P3879917020075110335.Spec : Prop :=
  ∀ n, P3879917020075110335.a n = (A075503 (n + 1) : ℝ)

end A075503

/-! ## A075503.P1535024261079055124

`A075499(n+1)²/A075497(n+1)`
-/

namespace A075503.P1535024261079055124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) ^ 2 : ℚ) / (A075497 (n + 1) : ℚ)

end

end A075503.P1535024261079055124

namespace A075503

/-- `A075499(n+1)²/A075497(n+1)` -/
def P1535024261079055124.Spec : Prop :=
  ∀ n, P1535024261079055124.a n = (A075503 (n + 1) : ℚ)

end A075503

/-! ## A075503.P6483863456954081097

`A075499(n+1)²/gcd(A075499(n+1), A075501(n+1))`
-/

namespace A075503.P6483863456954081097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) ^ 2 : ℚ) / (Int.gcd (A075499 (n + 1)) (A075501 (n + 1)) : ℚ)

end

end A075503.P6483863456954081097

namespace A075503

/-- `A075499(n+1)²/gcd(A075499(n+1), A075501(n+1))` -/
def P6483863456954081097.Spec : Prop :=
  ∀ n, P6483863456954081097.a n = (A075503 (n + 1) : ℚ)

end A075503

/-!
# A075504: Stirling2 triangle with scaled diagonals (powers of 9).

The programs for A075504, the canonical program `A075504.P11486526091304501171` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075504 has offset 1).

The definition of A075504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075504.P11486526091304501171

`9*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075504

/-- `9*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P11486526091304501171.Spec : Prop :=
  ∀ n, (P11486526091304501171.a n : ℤ) = A075504 (n + 1)

theorem P11486526091304501171.correct : P11486526091304501171.Spec := by
  intro n
  simp only [A075504, Nat.add_sub_cancel]

end A075504

/-! ## A075504.P9342905020435807560

`(3^(row(n)-col(n)))²*A008277(n+1)`
-/

namespace A075504.P9342905020435807560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)) ^ 2 * (A008277 (n + 1) : ℚ)

end

end A075504.P9342905020435807560

namespace A075504

/-- `(3^(row(n)-col(n)))²*A008277(n+1)` -/
def P9342905020435807560.Spec : Prop :=
  ∀ n, P9342905020435807560.a n = (A075504 (n + 1) : ℚ)

end A075504

/-! ## A075504.P4645539452679562568

`A075498(n+1)*A140303(n)`
-/

namespace A075504.P4645539452679562568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (n + 1) * A140303 n

end

end A075504.P4645539452679562568

namespace A075504

/-- `A075498(n+1)*A140303(n)` -/
def P4645539452679562568.Spec : Prop :=
  ∀ n, P4645539452679562568.a n = A075504 (n + 1)

end A075504

/-! ## A075504.P8788922841416802084

`A140303(n)²*A008277(n+1)`
-/

namespace A075504.P8788922841416802084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A008277 (n + 1)

end

end A075504.P8788922841416802084

namespace A075504

/-- `A140303(n)²*A008277(n+1)` -/
def P8788922841416802084.Spec : Prop :=
  ∀ n, P8788922841416802084.a n = A075504 (n + 1)

end A075504

/-! ## A075504.P1273312543882760925

`A140303(n)²*A048993(comp[∑[n]])`
-/

namespace A075504.P1273312543882760925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A075504.P1273312543882760925

namespace A075504

/-- `A140303(n)²*A048993(comp[∑[n]])` -/
def P1273312543882760925.Spec : Prop :=
  ∀ n, P1273312543882760925.a n = A075504 (n + 1)

end A075504

/-! ## A075504.P17818877959043396336

`abs(A080417(n+1))*A140303(n)²`
-/

namespace A075504.P17818877959043396336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080417 (n + 1)| * A140303 n ^ 2

end

end A075504.P17818877959043396336

namespace A075504

/-- `abs(A080417(n+1))*A140303(n)²` -/
def P17818877959043396336.Spec : Prop :=
  ∀ n, P17818877959043396336.a n = A075504 (n + 1)

end A075504

/-! ## A075504.P7908755139499267199

`A000244(A025581(n))²*A008277(n+1)`
-/

namespace A075504.P7908755139499267199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat ^ 2 * A008277 (n + 1)

end

end A075504.P7908755139499267199

namespace A075504

/-- `A000244(A025581(n))²*A008277(n+1)` -/
def P7908755139499267199.Spec : Prop :=
  ∀ n, P7908755139499267199.a n = A075504 (n + 1)

end A075504

/-! ## A075504.P7856164857829489336

`A166552(A099375(n))²*A008277(n+1)`
-/

namespace A075504.P7856164857829489336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (A099375 n).toNat ^ 2 * A008277 (n + 1)

end

end A075504.P7856164857829489336

namespace A075504

/-- `A166552(A099375(n))²*A008277(n+1)` -/
def P7856164857829489336.Spec : Prop :=
  ∀ n, P7856164857829489336.a n = A075504 (n + 1)

end A075504

/-! ## A075504.P10034291288167860947

`A000244(2*A025581(n))*A008277(n+1)`
-/

namespace A075504.P10034291288167860947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A025581 n).toNat * A008277 (n + 1)

end

end A075504.P10034291288167860947

namespace A075504

/-- `A000244(2*A025581(n))*A008277(n+1)` -/
def P10034291288167860947.Spec : Prop :=
  ∀ n, P10034291288167860947.a n = A075504 (n + 1)

end A075504

/-! ## A075504.P13995816784812576718

`(A027465(n)/A007318(n))²*A008277(n+1)`
-/

namespace A075504.P13995816784812576718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027465 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A008277 (n + 1) : ℚ)

end

end A075504.P13995816784812576718

namespace A075504

/-- `(A027465(n)/A007318(n))²*A008277(n+1)` -/
def P13995816784812576718.Spec : Prop :=
  ∀ n, P13995816784812576718.a n = (A075504 (n + 1) : ℚ)

end A075504

/-! ## A075504.P1309838758286423540

`A075498(n+1)/A008277(n+1)*A075498(n+1)`
-/

namespace A075504.P1309838758286423540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075498 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A075498 (n + 1) : ℚ)

end

end A075504.P1309838758286423540

namespace A075504

/-- `A075498(n+1)/A008277(n+1)*A075498(n+1)` -/
def P1309838758286423540.Spec : Prop :=
  ∀ n, P1309838758286423540.a n = (A075504 (n + 1) : ℚ)

end A075504

/-! ## A075504.P12256027248807385476

`A075501(n+1)/A075499(n+1)*A075501(n+1)`
-/

namespace A075504.P12256027248807385476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075501 (n + 1) : ℚ) / (A075499 (n + 1) : ℚ) * (A075501 (n + 1) : ℚ)

end

end A075504.P12256027248807385476

namespace A075504

/-- `A075501(n+1)/A075499(n+1)*A075501(n+1)` -/
def P12256027248807385476.Spec : Prop :=
  ∀ n, P12256027248807385476.a n = (A075504 (n + 1) : ℚ)

end A075504

/-! ## A075504.P1770272746554348411

`(A075498(n+1)/A075497(n+1))²*A075499(n+1)`
-/

namespace A075504.P1770272746554348411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A075498 (n + 1) : ℚ) / (A075497 (n + 1) : ℚ)) ^ 2 * (A075499 (n + 1) : ℚ)

end

end A075504.P1770272746554348411

namespace A075504

/-- `(A075498(n+1)/A075497(n+1))²*A075499(n+1)` -/
def P1770272746554348411.Spec : Prop :=
  ∀ n, P1770272746554348411.a n = (A075504 (n + 1) : ℚ)

end A075504

/-! ## A075504.P17153146693376671192

`(A051141(n+1)/A008275(n+1))²*A008277(n+1)`
-/

namespace A075504.P17153146693376671192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051141 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ)) ^ 2 * (A008277 (n + 1) : ℚ)

end

end A075504.P17153146693376671192

namespace A075504

/-- `(A051141(n+1)/A008275(n+1))²*A008277(n+1)` -/
def P17153146693376671192.Spec : Prop :=
  ∀ n, P17153146693376671192.a n = (A075504 (n + 1) : ℚ)

end A075504

/-! ## A075504.P1475248560294846843

`A075498(n+1)²/A008277(n+1)`
-/

namespace A075504.P1475248560294846843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075498 (n + 1) ^ 2 : ℚ) / (A008277 (n + 1) : ℚ)

end

end A075504.P1475248560294846843

namespace A075504

/-- `A075498(n+1)²/A008277(n+1)` -/
def P1475248560294846843.Spec : Prop :=
  ∀ n, P1475248560294846843.a n = (A075504 (n + 1) : ℚ)

end A075504

/-! ## A075504.P8845351162232610152

`A075501(n+1)²/A075499(n+1)`
-/

namespace A075504.P8845351162232610152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075501 (n + 1) ^ 2 : ℚ) / (A075499 (n + 1) : ℚ)

end

end A075504.P8845351162232610152

namespace A075504

/-- `A075501(n+1)²/A075499(n+1)` -/
def P8845351162232610152.Spec : Prop :=
  ∀ n, P8845351162232610152.a n = (A075504 (n + 1) : ℚ)

end A075504

/-! ## A075504.P297224970983357422

`A165824(A130321(n))²*A008277(n+1)`
-/

namespace A075504.P297224970983357422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A130321 n).toNat ^ 2 * A008277 (n + 1)

end

end A075504.P297224970983357422

namespace A075504

/-- `A165824(A130321(n))²*A008277(n+1)` -/
def P297224970983357422.Spec : Prop :=
  ∀ n, P297224970983357422.a n = A075504 (n + 1)

end A075504

/-!
# A075505: Stirling2 triangle with scaled diagonals (powers of 10).

The programs for A075505, the canonical program `A075505.P9716087992697975418` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075505 has offset 1).

The definition of A075505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075505.P9716087992697975418

`10*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075505

/-- `10*(col(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P9716087992697975418.Spec : Prop :=
  ∀ n, (P9716087992697975418.a n : ℤ) = A075505 (n + 1)

theorem P9716087992697975418.correct : P9716087992697975418.Spec := by
  intro n
  simp only [A075505, Nat.add_sub_cancel]

end A075505

/-! ## A075505.P7459053618385493587

`A075500(1+n)*A130321(n)`
-/

namespace A075505.P7459053618385493587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (1 + n) * A130321 n

end

end A075505.P7459053618385493587

namespace A075505

/-- `A075500(1+n)*A130321(n)` -/
def P7459053618385493587.Spec : Prop :=
  ∀ n, P7459053618385493587.a n = A075505 (n + 1)

end A075505

/-! ## A075505.P3894460314964373831

`lcm(A075497(n+1), A075500(n+1))`
-/

namespace A075505.P3894460314964373831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075497 (n + 1)) (A075500 (n + 1))

end

end A075505.P3894460314964373831

namespace A075505

/-- `lcm(A075497(n+1), A075500(n+1))` -/
def P3894460314964373831.Spec : Prop :=
  ∀ n, (P3894460314964373831.a n : ℤ) = A075505 (n + 1)

end A075505

/-! ## A075505.P1460460129280080795

`10^A025581(n)*A008277(n+1)`
-/

namespace A075505.P1460460129280080795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A025581 n : ℤ) * (A008277 (n + 1) : ℚ)

end

end A075505.P1460460129280080795

namespace A075505

/-- `10^A025581(n)*A008277(n+1)` -/
def P1460460129280080795.Spec : Prop :=
  ∀ n, P1460460129280080795.a n = (A075505 (n + 1) : ℚ)

end A075505

/-! ## A075505.P2380137541633107183

`A000079(A025581(n))*A075500(n+1)`
-/

namespace A075505.P2380137541633107183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A075500 (n + 1)

end

end A075505.P2380137541633107183

namespace A075505

/-- `A000079(A025581(n))*A075500(n+1)` -/
def P2380137541633107183.Spec : Prop :=
  ∀ n, P2380137541633107183.a n = A075505 (n + 1)

end A075505

/-! ## A075505.P16166240888405578443

`A075500(n+1)/A075499(n+1)*A075503(n+1)`
-/

namespace A075505.P16166240888405578443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075500 (n + 1) : ℚ) / (A075499 (n + 1) : ℚ) * (A075503 (n + 1) : ℚ)

end

end A075505.P16166240888405578443

namespace A075505

/-- `A075500(n+1)/A075499(n+1)*A075503(n+1)` -/
def P16166240888405578443.Spec : Prop :=
  ∀ n, P16166240888405578443.a n = (A075505 (n + 1) : ℚ)

end A075505

/-! ## A075505.P11961811203407483675

`A038243(n)*A075497(n+1)/A007318(n)`
-/

namespace A075505.P11961811203407483675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038243 n * A075497 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A075505.P11961811203407483675

namespace A075505

/-- `A038243(n)*A075497(n+1)/A007318(n)` -/
def P11961811203407483675.Spec : Prop :=
  ∀ n, P11961811203407483675.a n = (A075505 (n + 1) : ℚ)

end A075505

/-! ## A075505.P15656997653687476841

`A007088(A130321(n))*A008277(n+1)`
-/

namespace A075505.P15656997653687476841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A130321 n).toNat * A008277 (n + 1)

end

end A075505.P15656997653687476841

namespace A075505

/-- `A007088(A130321(n))*A008277(n+1)` -/
def P15656997653687476841.Spec : Prop :=
  ∀ n, P15656997653687476841.a n = A075505 (n + 1)

end A075505

/-!
# A075506: Shifts one place left under 7th-order binomial transform.

The programs for A075506, there is no canonical definition to state claims against.
-/

/-! ## A075506.P3190956573184920756

`A016993(A195311(n!))`
-/

namespace A075506.P3190956573184920756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A195311 (Nat.factorial n)).toNat

end

end A075506.P3190956573184920756

/-!
# A075507: Shifts one place left under 8th-order binomial transform.

The programs for A075507, there is no canonical definition to state claims against.
-/

/-! ## A075507.P871746861157709595

`A028903(A075509(n))`
-/

namespace A075507.P871746861157709595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A075509 n).toNat

end

end A075507.P871746861157709595

/-!
# A075508: Shifts one place left under 9th-order binomial transform.

The programs for A075508, there is no canonical definition to state claims against.
-/

/-! ## A075508.P16438215769654917597

`A160941(C(∑[n+1], n))`
-/

namespace A075508.P16438215769654917597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A075508.P16438215769654917597

/-!
# A075509: Shifts one place left under 10th-order binomial transform.

The programs for A075509, there is no canonical definition to state claims against.
-/

/-! ## A075509.P15464233629727747110

`A004086(A276507(n))`
-/

namespace A075509.P15464233629727747110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A276507 n).toNat

end

end A075509.P15464233629727747110

/-!
# A075510: Fifth column of triangle A075497.

The programs for A075510, the canonical program `A075510.P14834025513346615084` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075510 has offset 0).

The definition of A075510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075510.P14834025513346615084

`A075497(C(n+5, 2)+5)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075510

/-- `A075497(C(n+5, 2)+5)` -/
def P14834025513346615084.Spec : Prop :=
  ∀ n, P14834025513346615084.a n = A075510 n

theorem P14834025513346615084.correct : P14834025513346615084.Spec := by
  intro n
  simp only [A075510]

end A075510

/-! ## A075510.P16363824201764064257

`2^n*∑[A025211(n)]`
-/

namespace A075510.P16363824201764064257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075510.P16363824201764064257

namespace A075510

/-- `2^n*∑[A025211(n)]` -/
def P16363824201764064257.Spec : Prop :=
  ∀ n, P16363824201764064257.a n = A075510 n

end A075510

/-! ## A075510.P17823716855617972457

`2^n*A000481(n+5)`
-/

namespace A075510.P17823716855617972457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000481 (n + 5)

end

end A075510.P17823716855617972457

namespace A075510

/-- `2^n*A000481(n+5)` -/
def P17823716855617972457.Spec : Prop :=
  ∀ n, P17823716855617972457.a n = A075510 n

end A075510

/-! ## A075510.P653522960945649613

`2^n*A056511(2*n+9)`
-/

namespace A075510.P653522960945649613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A056511 (2 * n + 9)

end

end A075510.P653522960945649613

namespace A075510

/-- `2^n*A056511(2*n+9)` -/
def P653522960945649613.Spec : Prop :=
  ∀ n, P653522960945649613.a n = A075510 n

end A075510

/-! ## A075510.P13934913322140699031

`a(n-1)+A028136(n)+a(n-1)` with `a(0)=1`
-/

namespace A075510.P13934913322140699031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A028136 n + a (n - 1))

end

end A075510.P13934913322140699031

namespace A075510

/-- `a(n-1)+A028136(n)+a(n-1)` -/
def P13934913322140699031.Spec : Prop :=
  ∀ n, P13934913322140699031.a n = A075510 n

end A075510

/-! ## A075510.P797140032783668557

`A000079(n)*A008277(A167499(n+3))`
-/

namespace A075510.P797140032783668557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A008277 (A167499 (n + 3)).toNat

end

end A075510.P797140032783668557

namespace A075510

/-- `A000079(n)*A008277(A167499(n+3))` -/
def P797140032783668557.Spec : Prop :=
  ∀ n, P797140032783668557.a n = A075510 n

end A075510

/-! ## A075510.P1547420104257632233

`A000079(n)*A048993(A167499(n+4))`
-/

namespace A075510.P1547420104257632233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A048993 (A167499 (n + 4)).toNat

end

end A075510.P1547420104257632233

namespace A075510

/-- `A000079(n)*A048993(A167499(n+4))` -/
def P1547420104257632233.Spec : Prop :=
  ∀ n, P1547420104257632233.a n = A075510 n

end A075510

/-! ## A075510.P7280019057871719970

`A075908(n)/sqrt(A000302(n))`
-/

namespace A075510.P7280019057871719970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A075908 n : ℝ) / Real.sqrt (A000302 n : ℝ)

end

end A075510.P7280019057871719970

namespace A075510

/-- `A075908(n)/sqrt(A000302(n))` -/
def P7280019057871719970.Spec : Prop :=
  ∀ n, P7280019057871719970.a n = (A075510 n : ℝ)

end A075510

/-! ## A075510.P7984833078360587856

`A075497(A167499(n+3))`
-/

namespace A075510.P7984833078360587856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (A167499 (n + 3)).toNat

end

end A075510.P7984833078360587856

namespace A075510

/-- `A075497(A167499(n+3))` -/
def P7984833078360587856.Spec : Prop :=
  ∀ n, P7984833078360587856.a n = A075510 n

end A075510

/-! ## A075510.P5148380338440362457

`A075497(A167614(n+2)+n+6)`
-/

namespace A075510.P5148380338440362457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A075510.P5148380338440362457

namespace A075510

/-- `A075497(A167614(n+2)+n+6)` -/
def P5148380338440362457.Spec : Prop :=
  ∀ n, P5148380338440362457.a n = A075510 n

end A075510

/-!
# A075511: Sixth column of triangle A075497.

The programs for A075511, the canonical program `A075511.P7373332400962193485` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075511 has offset 0).

The definition of A075511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075511.P7373332400962193485

`A075497(C(n+6, 2)+6)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075511

/-- `A075497(C(n+6, 2)+6)` -/
def P7373332400962193485.Spec : Prop :=
  ∀ n, P7373332400962193485.a n = A075511 n

theorem P7373332400962193485.correct : P7373332400962193485.Spec := by
  intro n
  simp only [A075511]

end A075511

/-! ## A075511.P4176470861412330974

`2^n*A000770(n+6)`
-/

namespace A075511.P4176470861412330974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000770 (n + 6)

end

end A075511.P4176470861412330974

namespace A075511

/-- `2^n*A000770(n+6)` -/
def P4176470861412330974.Spec : Prop :=
  ∀ n, P4176470861412330974.a n = A075511 n

end A075511

/-! ## A075511.P5130549552778821065

`A000770(n+6)*A011782(n+1)`
-/

namespace A075511.P5130549552778821065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A011782 (n + 1)

end

end A075511.P5130549552778821065

namespace A075511

/-- `A000770(n+6)*A011782(n+1)` -/
def P5130549552778821065.Spec : Prop :=
  ∀ n, P5130549552778821065.a n = A075511 n

end A075511

/-! ## A075511.P11218156646136525771

`A000770(n+6)*A016116(2*n)`
-/

namespace A075511.P11218156646136525771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A016116 (2 * n)

end

end A075511.P11218156646136525771

namespace A075511

/-- `A000770(n+6)*A016116(2*n)` -/
def P11218156646136525771.Spec : Prop :=
  ∀ n, P11218156646136525771.a n = A075511 n

end A075511

/-! ## A075511.P9855673153653433751

`2^n*A008277(A000124(n+5)+5)`
-/

namespace A075511.P9855673153653433751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008277 (A000124 (n + 5) + 5).toNat

end

end A075511.P9855673153653433751

namespace A075511

/-- `2^n*A008277(A000124(n+5)+5)` -/
def P9855673153653433751.Spec : Prop :=
  ∀ n, P9855673153653433751.a n = A075511 n

end A075511

/-! ## A075511.P6427825336872834897

`A000770(n+6)*A075497(A000124(n))`
-/

namespace A075511.P6427825336872834897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A075497 (A000124 n).toNat

end

end A075511.P6427825336872834897

namespace A075511

/-- `A000770(n+6)*A075497(A000124(n))` -/
def P6427825336872834897.Spec : Prop :=
  ∀ n, P6427825336872834897.a n = A075511 n

end A075511

/-! ## A075511.P13339639551996631847

`A075497(A046691(n+3)+10)`
-/

namespace A075511.P13339639551996631847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (A046691 (n + 3) + 10).toNat

end

end A075511.P13339639551996631847

namespace A075511

/-- `A075497(A046691(n+3)+10)` -/
def P13339639551996631847.Spec : Prop :=
  ∀ n, P13339639551996631847.a n = A075511 n

end A075511

/-! ## A075511.P10837832760607909525

`A075497(eq[7, A131818(n+1)])`
-/

namespace A075511.P10837832760607909525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075511.P10837832760607909525

namespace A075511

/-- `A075497(eq[7, A131818(n+1)])` -/
def P10837832760607909525.Spec : Prop :=
  ∀ n, P10837832760607909525.a n = A075511 n

end A075511

/-! ## A075511.P14548804771676441833

`A075909(n)/2^n`
-/

namespace A075511.P14548804771676441833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075909 n : ℚ) / (2 ^ n : ℚ)

end

end A075511.P14548804771676441833

namespace A075511

/-- `A075909(n)/2^n` -/
def P14548804771676441833.Spec : Prop :=
  ∀ n, P14548804771676441833.a n = (A075511 n : ℚ)

end A075511

/-! ## A075511.P16783339359809627004

`A075919(n)/3^n`
-/

namespace A075511.P16783339359809627004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075919 n : ℚ) / (3 ^ n : ℚ)

end

end A075511.P16783339359809627004

namespace A075511

/-- `A075919(n)/3^n` -/
def P16783339359809627004.Spec : Prop :=
  ∀ n, P16783339359809627004.a n = (A075511 n : ℚ)

end A075511

/-!
# A075512: Seventh column of triangle A075497.

The programs for A075512, the canonical program `A075512.P13866704476827907744` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075512 has offset 0).

The definition of A075512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075512.P13866704476827907744

`A075497(C(n+7, 2)+7)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075512

/-- `A075497(C(n+7, 2)+7)` -/
def P13866704476827907744.Spec : Prop :=
  ∀ n, P13866704476827907744.a n = A075512 n

theorem P13866704476827907744.correct : P13866704476827907744.Spec := by
  intro n
  simp only [A075512]

end A075512

/-! ## A075512.P11299232402222756951

`2^n*A000771(n+7)`
-/

namespace A075512.P11299232402222756951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000771 (n + 7)

end

end A075512.P11299232402222756951

namespace A075512

/-- `2^n*A000771(n+7)` -/
def P11299232402222756951.Spec : Prop :=
  ∀ n, P11299232402222756951.a n = A075512 n

end A075512

/-! ## A075512.P16222345631363935894

`A000771(n+7)*A011782(n+1)`
-/

namespace A075512.P16222345631363935894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A011782 (n + 1)

end

end A075512.P16222345631363935894

namespace A075512

/-- `A000771(n+7)*A011782(n+1)` -/
def P16222345631363935894.Spec : Prop :=
  ∀ n, P16222345631363935894.a n = A075512 n

end A075512

/-! ## A075512.P6245206834846854608

`A000771(n+7)*A016116(2*n)`
-/

namespace A075512.P6245206834846854608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A016116 (2 * n)

end

end A075512.P6245206834846854608

namespace A075512

/-- `A000771(n+7)*A016116(2*n)` -/
def P6245206834846854608.Spec : Prop :=
  ∀ n, P6245206834846854608.a n = A075512 n

end A075512

/-! ## A075512.P16723085661339952085

`A000771(n+7)*A075497(A000124(n))`
-/

namespace A075512.P16723085661339952085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A075497 (A000124 n).toNat

end

end A075512.P16723085661339952085

namespace A075512

/-- `A000771(n+7)*A075497(A000124(n))` -/
def P16723085661339952085.Spec : Prop :=
  ∀ n, P16723085661339952085.a n = A075512 n

end A075512

/-! ## A075512.P599690834622019839

`A075497(A056119(n)+28)`
-/

namespace A075512.P599690834622019839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (A056119 n + 28).toNat

end

end A075512.P599690834622019839

namespace A075512

/-- `A075497(A056119(n)+28)` -/
def P599690834622019839.Spec : Prop :=
  ∀ n, P599690834622019839.a n = A075512 n

end A075512

/-! ## A075512.P13682475707679550385

`A075920(n)/3^n`
-/

namespace A075512.P13682475707679550385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075920 n : ℚ) / (3 ^ n : ℚ)

end

end A075512.P13682475707679550385

namespace A075512

/-- `A075920(n)/3^n` -/
def P13682475707679550385.Spec : Prop :=
  ∀ n, P13682475707679550385.a n = (A075512 n : ℚ)

end A075512

/-! ## A075512.P12661758179699662049

`A076007(n)/4^n`
-/

namespace A075512.P12661758179699662049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076007 n : ℚ) / (4 ^ n : ℚ)

end

end A075512.P12661758179699662049

namespace A075512

/-- `A076007(n)/4^n` -/
def P12661758179699662049.Spec : Prop :=
  ∀ n, P12661758179699662049.a n = (A075512 n : ℚ)

end A075512

/-!
# A075513: Triangle read by rows. T(n, m) are the coefficients of Sidi polynomials.

The programs for A075513, the canonical program `A075513.P10550939009286874048` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075513 has offset 1).

The definition of A075513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075513.P6729577086540304204

`A076014(n+1)*A130595(n)`
-/

namespace A075513.P6729577086540304204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076014 (n + 1) * A130595 n

end

end A075513.P6729577086540304204

namespace A075513

/-- `A076014(n+1)*A130595(n)` -/
def P6729577086540304204.Spec : Prop :=
  ∀ n, P6729577086540304204.a n = A075513 (n + 1)

end A075513

/-! ## A075513.P7057835680538219934

`char[∑[n+1]]+A076014(n+1)*A091917(n)`
-/

namespace A075513.P7057835680538219934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A076014 (n + 1) * A091917 n

end

end A075513.P7057835680538219934

namespace A075513

/-- `char[∑[n+1]]+A076014(n+1)*A091917(n)` -/
def P7057835680538219934.Spec : Prop :=
  ∀ n, P7057835680538219934.a n = A075513 (n + 1)

end A075513

/-! ## A075513.P10550939009286874048

`A002260(n+1)^A003056(n)*A130595(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075513

/-- `A002260(n+1)^A003056(n)*A130595(n)` -/
def P10550939009286874048.Spec : Prop :=
  ∀ n, P10550939009286874048.a n = (A075513 (n + 1) : ℚ)

end A075513

/-! ## A075513.P12856797392125104322

`A009998(A245300(n))*A130595(n)`
-/

namespace A075513.P12856797392125104322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A245300 n).toNat * A130595 n

end

end A075513.P12856797392125104322

namespace A075513

/-- `A009998(A245300(n))*A130595(n)` -/
def P12856797392125104322.Spec : Prop :=
  ∀ n, P12856797392125104322.a n = A075513 (n + 1)

end A075513

/-! ## A075513.P17217081415489724280

`A000005(A059268(n))^A003056(n)*A130595(n)`
-/

namespace A075513.P17217081415489724280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A059268 n).toNat : ℚ) ^ (A003056 n : ℤ) * (A130595 n : ℚ)

end

end A075513.P17217081415489724280

namespace A075513

/-- `A000005(A059268(n))^A003056(n)*A130595(n)` -/
def P17217081415489724280.Spec : Prop :=
  ∀ n, P17217081415489724280.a n = (A075513 (n + 1) : ℚ)

end A075513

/-!
# A075515: Fifth column of triangle A075498.

The programs for A075515, the canonical program `A075515.P12310043898966965224` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075515 has offset 0).

The definition of A075515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075515.P12310043898966965224

`A075498(C(n+5, 2)+5)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075515

/-- `A075498(C(n+5, 2)+5)` -/
def P12310043898966965224.Spec : Prop :=
  ∀ n, P12310043898966965224.a n = A075515 n

theorem P12310043898966965224.correct : P12310043898966965224.Spec := by
  intro n
  simp only [A075515]

end A075515

/-! ## A075515.P9407486175696326603

`3^n*∑[A025211(n)]`
-/

namespace A075515.P9407486175696326603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075515.P9407486175696326603

namespace A075515

/-- `3^n*∑[A025211(n)]` -/
def P9407486175696326603.Spec : Prop :=
  ∀ n, P9407486175696326603.a n = A075515 n

end A075515

/-! ## A075515.P3919620317614911376

`3^n*A000481(n+5)`
-/

namespace A075515.P3919620317614911376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000481 (n + 5)

end

end A075515.P3919620317614911376

namespace A075515

/-- `3^n*A000481(n+5)` -/
def P3919620317614911376.Spec : Prop :=
  ∀ n, P3919620317614911376.a n = A075515 n

end A075515

/-! ## A075515.P12095452201906970494

`∑[A025211(n)]*A000244(n)`
-/

namespace A075515.P12095452201906970494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A075515.P12095452201906970494

namespace A075515

/-- `∑[A025211(n)]*A000244(n)` -/
def P12095452201906970494.Spec : Prop :=
  ∀ n, P12095452201906970494.a n = A075515 n

end A075515

/-! ## A075515.P8829137018168421442

`A000481(n+5)/2*A008776(n)`
-/

namespace A075515.P8829137018168421442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000481 (n + 5) : ℚ) / 2 * (A008776 n : ℚ)

end

end A075515.P8829137018168421442

namespace A075515

/-- `A000481(n+5)/2*A008776(n)` -/
def P8829137018168421442.Spec : Prop :=
  ∀ n, P8829137018168421442.a n = (A075515 n : ℚ)

end A075515

/-! ## A075515.P9731057742524746499

`A000244(n)/A000302(n)*A075908(n)`
-/

namespace A075515.P9731057742524746499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (A000302 n : ℚ) * (A075908 n : ℚ)

end

end A075515.P9731057742524746499

namespace A075515

/-- `A000244(n)/A000302(n)*A075908(n)` -/
def P9731057742524746499.Spec : Prop :=
  ∀ n, P9731057742524746499.a n = (A075515 n : ℚ)

end A075515

/-! ## A075515.P5470615016978111345

`A075498(A155212(n)+13)`
-/

namespace A075515.P5470615016978111345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (A155212 n + 13).toNat

end

end A075515.P5470615016978111345

namespace A075515

/-- `A075498(A155212(n)+13)` -/
def P5470615016978111345.Spec : Prop :=
  ∀ n, P5470615016978111345.a n = A075515 n

end A075515

/-! ## A075515.P11615966542801889588

`A075498(A000217(n+4)+5)`
-/

namespace A075515.P11615966542801889588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (A000217 (n + 4) + 5).toNat

end

end A075515.P11615966542801889588

namespace A075515

/-- `A075498(A000217(n+4)+5)` -/
def P11615966542801889588.Spec : Prop :=
  ∀ n, P11615966542801889588.a n = A075515 n

end A075515

/-! ## A075515.P8837466595414647695

`A075498(A055999(n+1)+11)`
-/

namespace A075515.P8837466595414647695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (A055999 (n + 1) + 11).toNat

end

end A075515.P8837466595414647695

namespace A075515

/-- `A075498(A055999(n+1)+11)` -/
def P8837466595414647695.Spec : Prop :=
  ∀ n, P8837466595414647695.a n = A075515 n

end A075515

/-! ## A075515.P16770837654324025132

`A076011(n)/3^n`
-/

namespace A075515.P16770837654324025132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076011 n : ℚ) / (3 ^ n : ℚ)

end

end A075515.P16770837654324025132

namespace A075515

/-- `A076011(n)/3^n` -/
def P16770837654324025132.Spec : Prop :=
  ∀ n, P16770837654324025132.a n = (A075515 n : ℚ)

end A075515

/-!
# A075516: Sixth column of triangle A075498.

The programs for A075516, the canonical program `A075516.P2302373766456551175` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075516 has offset 0).

The definition of A075516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075516.P2302373766456551175

`A075498(C(n+6, 2)+6)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075516

/-- `A075498(C(n+6, 2)+6)` -/
def P2302373766456551175.Spec : Prop :=
  ∀ n, P2302373766456551175.a n = A075516 n

theorem P2302373766456551175.correct : P2302373766456551175.Spec := by
  intro n
  simp only [A075516]

end A075516

/-! ## A075516.P14482184983520271815

`3^n*A000770(n+6)`
-/

namespace A075516.P14482184983520271815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000770 (n + 6)

end

end A075516.P14482184983520271815

namespace A075516

/-- `3^n*A000770(n+6)` -/
def P14482184983520271815.Spec : Prop :=
  ∀ n, P14482184983520271815.a n = A075516 n

end A075516

/-! ## A075516.P16036976170198764723

`3^n*A008277(A000124(n+5)+5)`
-/

namespace A075516.P16036976170198764723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A008277 (A000124 (n + 5) + 5).toNat

end

end A075516.P16036976170198764723

namespace A075516

/-- `3^n*A008277(A000124(n+5)+5)` -/
def P16036976170198764723.Spec : Prop :=
  ∀ n, P16036976170198764723.a n = A075516 n

end A075516

/-! ## A075516.P13998040919242716273

`A000770(n+6)*A075498(A000124(n))`
-/

namespace A075516.P13998040919242716273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A075498 (A000124 n).toNat

end

end A075516.P13998040919242716273

namespace A075516

/-- `A000770(n+6)*A075498(A000124(n))` -/
def P13998040919242716273.Spec : Prop :=
  ∀ n, P13998040919242716273.a n = A075516 n

end A075516

/-! ## A075516.P17702924082535747742

`A075909(n)/A076003(n)*A075916(n)`
-/

namespace A075516.P17702924082535747742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075909 n : ℚ) / (A076003 n : ℚ) * (A075916 n : ℚ)

end

end A075516.P17702924082535747742

namespace A075516

/-- `A075909(n)/A076003(n)*A075916(n)` -/
def P17702924082535747742.Spec : Prop :=
  ∀ n, P17702924082535747742.a n = (A075516 n : ℚ)

end A075516

/-! ## A075516.P14211547834668048705

`A075498(A166136(n+4))`
-/

namespace A075516.P14211547834668048705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (A166136 (n + 4)).toNat

end

end A075516.P14211547834668048705

namespace A075516

/-- `A075498(A166136(n+4))` -/
def P14211547834668048705.Spec : Prop :=
  ∀ n, P14211547834668048705.a n = A075516 n

end A075516

/-! ## A075516.P6622338089418912008

`A075498(A056115(n)+21)`
-/

namespace A075516.P6622338089418912008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (A056115 n + 21).toNat

end

end A075516.P6622338089418912008

namespace A075516

/-- `A075498(A056115(n)+21)` -/
def P6622338089418912008.Spec : Prop :=
  ∀ n, P6622338089418912008.a n = A075516 n

end A075516

/-! ## A075516.P7898378619628474782

`A075498(A055999(n+2)+12)`
-/

namespace A075516.P7898378619628474782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (A055999 (n + 2) + 12).toNat

end

end A075516.P7898378619628474782

namespace A075516

/-- `A075498(A055999(n+2)+12)` -/
def P7898378619628474782.Spec : Prop :=
  ∀ n, P7898378619628474782.a n = A075516 n

end A075516

/-! ## A075516.P1845784892377259806

`A075498(eq[7, A131818(n+1)])`
-/

namespace A075516.P1845784892377259806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075516.P1845784892377259806

namespace A075516

/-- `A075498(eq[7, A131818(n+1)])` -/
def P1845784892377259806.Spec : Prop :=
  ∀ n, P1845784892377259806.a n = A075516 n

end A075516

/-! ## A075516.P4601111338958907653

`A076012(n)/3^n`
-/

namespace A075516.P4601111338958907653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076012 n : ℚ) / (3 ^ n : ℚ)

end

end A075516.P4601111338958907653

namespace A075516

/-- `A076012(n)/3^n` -/
def P4601111338958907653.Spec : Prop :=
  ∀ n, P4601111338958907653.a n = (A075516 n : ℚ)

end A075516

/-!
# A075517: Created by removing all integers which take an odd number of nested digit sums to reach <10.

The programs for A075517, there is no canonical definition to state claims against.
-/

/-! ## A075517.P9546355237041045804

`eq[0, A031286(n)%2]`
-/

namespace A075517.P9546355237041045804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031286 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075517.P9546355237041045804

/-! ## A075517.P16964654548622618270

`eq[0, and(A031286(n), A057427(n))]`
-/

namespace A075517.P16964654548622618270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031286 n) (A057427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075517.P16964654548622618270

/-! ## A075517.P11097099041300024377

`eq[2*A031286(A007953(n)), A031286(n)]`
-/

namespace A075517.P11097099041300024377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A031286 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075517.P11097099041300024377

/-! ## A075517.P3590137887423594237

`eq[A040080(A031286(n)+n), A040080(n)]`
-/

namespace A075517.P3590137887423594237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 (A031286 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075517.P3590137887423594237

/-! ## A075517.P15985698030819609332

`eq[A000034(n-A031286(n)), A000034(n)]`
-/

namespace A075517.P15985698030819609332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((n : ℤ) - A031286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075517.P15985698030819609332

/-! ## A075517.P2752916406480139979

`eq[A000035(n-A031286(n)), A000035(n)]`
-/

namespace A075517.P2752916406480139979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A031286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075517.P2752916406480139979

/-! ## A075517.P17312216397147341920

`eq[A040080(n-A031286(n)), A040080(n)]`
-/

namespace A075517.P17312216397147341920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 ((n : ℤ) - A031286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075517.P17312216397147341920

/-! ## A075517.P1388276705117580023

`eq[A031286(n)*A040000(n), A031286(n)²]`
-/

namespace A075517.P1388276705117580023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n * A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075517.P1388276705117580023

/-! ## A075517.P10550682742643787138

`eq[A000034(n), A000034(A031286(n)+n)]`
-/

namespace A075517.P10550682742643787138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A031286 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075517.P10550682742643787138

/-! ## A075517.P17167953002250237438

`eq[A000035(n), A000035(A031286(n)+n)]`
-/

namespace A075517.P17167953002250237438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A031286 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075517.P17167953002250237438

/-! ## A075517.P6253806138860338629

`eq[0, and(A031286(n), A047471(2*n+1))]`
-/

namespace A075517.P6253806138860338629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031286 n) (A047471 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075517.P6253806138860338629

/-! ## A075517.P5461139095219166958

`eq[2, A341345(A111046(n+1)+A031286(n))]`
-/

namespace A075517.P5461139095219166958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341345 (A111046 (n + 1) + A031286 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075517.P5461139095219166958

/-!
# A075518: a(n) = floor(prime(n)/4).

The programs for A075518, the canonical program `A075518.P17044859685553142342` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075518 has offset 1).

The definition of A075518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+1)/4)` (program `A075518.P17044859685553142342`, by `A075518.P17044859685553142342.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A075518.P17044859685553142342

`floor(A000040(n+1)/4)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075518

/-- `floor(A000040(n+1)/4)` -/
def P17044859685553142342.Spec : Prop :=
  ∀ n, P17044859685553142342.a n = A075518 (n + 1)

theorem P17044859685553142342.correct : P17044859685553142342.Spec := by
  intro n
  simp only [A075518, Nat.add_sub_cancel]

end A075518

/-! ## A075518.P6484031837415083435

`floor(∑[A075526(n)]/4)`
-/

namespace A075518.P6484031837415083435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A075518.P6484031837415083435

namespace A075518

/-- `floor(∑[A075526(n)]/4)` -/
def P6484031837415083435.Spec : Prop :=
  ∀ n, P6484031837415083435.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P15679106965127106559

`floor(Δ[A007504(n)/4])`
-/

namespace A075518.P15679106965127106559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A075518.P15679106965127106559

namespace A075518

/-- `floor(Δ[A007504(n)/4])` -/
def P15679106965127106559.Spec : Prop :=
  ∀ n, P15679106965127106559.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P12343186600845013661

`floor(A102781(1+n)/2)`
-/

namespace A075518.P12343186600845013661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102781 (1 + n) : ℚ) / 2⌋

end

end A075518.P12343186600845013661

namespace A075518

/-- `floor(A102781(1+n)/2)` -/
def P12343186600845013661.Spec : Prop :=
  ∀ n, P12343186600845013661.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P14359862061325294896

`floor(A130290(n+1)/2)`
-/

namespace A075518.P14359862061325294896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130290 (n + 1) : ℚ) / 2⌋

end

end A075518.P14359862061325294896

namespace A075518

/-- `floor(A130290(n+1)/2)` -/
def P14359862061325294896.Spec : Prop :=
  ∀ n, P14359862061325294896.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P18005405792521936359

`floor(A006005(n+1)/4)`
-/

namespace A075518.P18005405792521936359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006005 (n + 1) : ℚ) / 4⌋

end

end A075518.P18005405792521936359

namespace A075518

/-- `floor(A006005(n+1)/4)` -/
def P18005405792521936359.Spec : Prop :=
  ∀ n, P18005405792521936359.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P3166182763666195894

`floor(A006093(n+1)/4)`
-/

namespace A075518.P3166182763666195894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / 4⌋

end

end A075518.P3166182763666195894

namespace A075518

/-- `floor(A006093(n+1)/4)` -/
def P3166182763666195894.Spec : Prop :=
  ∀ n, P3166182763666195894.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P11053436850979297511

`round(A040976(n+1)/4)`
-/

namespace A075518.P11053436850979297511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A040976 (n + 1) : ℚ) / 4)

end

end A075518.P11053436850979297511

namespace A075518

/-- `round(A040976(n+1)/4)` -/
def P11053436850979297511.Spec : Prop :=
  ∀ n, P11053436850979297511.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P1176085428443989831

`(A082542(n+1)-2)/4`
-/

namespace A075518.P1176085428443989831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082542 (n + 1) - 2 : ℚ) / 4

end

end A075518.P1176085428443989831

namespace A075518

/-- `(A082542(n+1)-2)/4` -/
def P1176085428443989831.Spec : Prop :=
  ∀ n, P1176085428443989831.a n = (A075518 (n + 1) : ℚ)

end A075518

/-! ## A075518.P15036422009385853745

`floor((A111333(n+1)-1)/2)`
-/

namespace A075518.P15036422009385853745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111333 (n + 1) - 1 : ℚ) / 2⌋

end

end A075518.P15036422009385853745

namespace A075518

/-- `floor((A111333(n+1)-1)/2)` -/
def P15036422009385853745.Spec : Prop :=
  ∀ n, P15036422009385853745.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P9613494313436409053

`floor(sqrt(sqrt(A185052(n+1)))/2)`
-/

namespace A075518.P9613494313436409053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A185052 (n + 1) : ℝ)) / 2⌋

end

end A075518.P9613494313436409053

namespace A075518

/-- `floor(sqrt(sqrt(A185052(n+1)))/2)` -/
def P9613494313436409053.Spec : Prop :=
  ∀ n, P9613494313436409053.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P11517060264548098557

`(A070750(n+1)+A000040(n+1)-2)/4`
-/

namespace A075518.P11517060264548098557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070750 (n + 1) + A000040 (n + 1) - 2 : ℚ) / 4

end

end A075518.P11517060264548098557

namespace A075518

/-- `(A070750(n+1)+A000040(n+1)-2)/4` -/
def P11517060264548098557.Spec : Prop :=
  ∀ n, P11517060264548098557.a n = (A075518 (n + 1) : ℚ)

end A075518

/-! ## A075518.P14375339434790308836

`floor(record[A000010(n+1)/4])`
-/

namespace A075518.P14375339434790308836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A075518.P14375339434790308836

namespace A075518

/-- `floor(record[A000010(n+1)/4])` -/
def P14375339434790308836.Spec : Prop :=
  ∀ n, P14375339434790308836.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P10791969860100673132

`floor(record[A006530(n+2)/4])`
-/

namespace A075518.P10791969860100673132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A075518.P10791969860100673132

namespace A075518

/-- `floor(record[A006530(n+2)/4])` -/
def P10791969860100673132.Spec : Prop :=
  ∀ n, P10791969860100673132.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P13610997240536758981

`floor(record[A020639(n+2)/4])`
-/

namespace A075518.P13610997240536758981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A075518.P13610997240536758981

namespace A075518

/-- `floor(record[A020639(n+2)/4])` -/
def P13610997240536758981.Spec : Prop :=
  ∀ n, P13610997240536758981.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P5547652381388651392

`floor(record[n/A000005(2*n+1)])`
-/

namespace A075518.P5547652381388651392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000005 (2 * n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A075518.P5547652381388651392

namespace A075518

/-- `floor(record[n/A000005(2*n+1)])` -/
def P5547652381388651392.Spec : Prop :=
  ∀ n, P5547652381388651392.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P12931566772927431165

`floor(eq[n, n*A001222(2*n+1)]/2)`
-/

namespace A075518.P12931566772927431165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2⌋

end

end A075518.P12931566772927431165

namespace A075518

/-- `floor(eq[n, n*A001222(2*n+1)]/2)` -/
def P12931566772927431165.Spec : Prop :=
  ∀ n, P12931566772927431165.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P4871094903097776958

`floor(eq[2*n+1, A006530(2*n+1)]/2)`
-/

namespace A075518.P4871094903097776958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2⌋

end

end A075518.P4871094903097776958

namespace A075518

/-- `floor(eq[2*n+1, A006530(2*n+1)]/2)` -/
def P4871094903097776958.Spec : Prop :=
  ∀ n, P4871094903097776958.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P14057217176076996167

`round(record[A007431(n)]/4)`
-/

namespace A075518.P14057217176076996167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4)

end

end A075518.P14057217176076996167

namespace A075518

/-- `round(record[A007431(n)]/4)` -/
def P14057217176076996167.Spec : Prop :=
  ∀ n, P14057217176076996167.a n = A075518 (n + 1)

end A075518

/-! ## A075518.P17097565760189230575

`A004526(A102781(n+1))`
-/

namespace A075518.P17097565760189230575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102781 (n + 1)).toNat

end

end A075518.P17097565760189230575

namespace A075518

/-- `A004526(A102781(n+1))` -/
def P17097565760189230575.Spec : Prop :=
  ∀ n, P17097565760189230575.a n = A075518 (n + 1)

end A075518

/-!
# A075519: Primes p such that floor(p/4) is prime.

The programs for A075519, there is no canonical definition to state claims against.
-/

/-! ## A075519.P454302358662949385

`∪[A090866(n+1), A126330(n+1)]`
-/

namespace A075519.P454302358662949385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075519.P454302358662949385

/-! ## A075519.P14625722231954814728

`p?[A103517(n)+A010051(A065033(n))]`
-/

namespace A075519.P14625722231954814728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A010051 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075519.P14625722231954814728

/-! ## A075519.P3654120900031527708

`p?[A103517(n)-A105700(A004526(n))]`
-/

namespace A075519.P3654120900031527708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A105700 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075519.P3654120900031527708

/-! ## A075519.P5918358208452296400

`p?[A001222(A065033(n))*A062545(n)]`
-/

namespace A075519.P5918358208452296400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065033 n).toNat * A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075519.P5918358208452296400

/-! ## A075519.P9043514067899442327

`p?[A032741(A004526(n))*A267872(n)]`
-/

namespace A075519.P9043514067899442327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004526 n).toNat * A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075519.P9043514067899442327

/-! ## A075519.P3678547927906973200

`p?[A001222(A008619(n))*A005818(n+1)]`
-/

namespace A075519.P3678547927906973200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008619 n).toNat * A005818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075519.P3678547927906973200

/-! ## A075519.P13033139114660998823

`p?[n*A032741(A002265(n))]`
-/

namespace A075519.P13033139114660998823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A002265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075519.P13033139114660998823

/-! ## A075519.P14587734488076486264

`eq[1, A325142(A002265(n))+A003415(n)]`
-/

namespace A075519.P14587734488076486264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A002265 n).toNat + A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075519.P14587734488076486264

/-!
# A075520: 4*prime(n) + (prime(n) mod 4).

The programs for A075520, the canonical program `A075520.P6843216313764235666` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075520 has offset 1).

The definition of A075520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A000040(n+1)+A000040(n+1)%4` (program `A075520.P6843216313764235666`, by `A075520.P6843216313764235666.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A075520.P13748958208272112620

`A001749(n+1)+A039702(n+1)`
-/

namespace A075520.P13748958208272112620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) + A039702 (n + 1)

end

end A075520.P13748958208272112620

namespace A075520

/-- `A001749(n+1)+A039702(n+1)` -/
def P13748958208272112620.Spec : Prop :=
  ∀ n, P13748958208272112620.a n = A075520 (n + 1)

end A075520

/-! ## A075520.P6843216313764235666

`4*A000040(n+1)+A000040(n+1)%4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075520

/-- `4*A000040(n+1)+A000040(n+1)%4` -/
def P6843216313764235666.Spec : Prop :=
  ∀ n, P6843216313764235666.a n = A075520 (n + 1)

theorem P6843216313764235666.correct : P6843216313764235666.Spec := by
  intro n
  simp only [A075520, Nat.add_sub_cancel]

end A075520

/-! ## A075520.P13455306070636526738

`A267573(n+1)+A001748(n+1)`
-/

namespace A075520.P13455306070636526738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267573 (n + 1) + A001748 (n + 1)

end

end A075520.P13455306070636526738

namespace A075520

/-- `A267573(n+1)+A001748(n+1)` -/
def P13455306070636526738.Spec : Prop :=
  ∀ n, P13455306070636526738.a n = A075520 (n + 1)

theorem P13455306070636526738.correct : P13455306070636526738.Spec := by
  intro n
  simp only [A075520, Nat.add_sub_cancel, A075520.P13455306070636526738.a, A075520.P6843216313764235666.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A267573, A267573.P5530432348318331570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075520

/-! ## A075520.P5945354712277756851

`A039702(n+1)+2*A100484(n+1)`
-/

namespace A075520.P5945354712277756851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + 2 * A100484 (n + 1)

end

end A075520.P5945354712277756851

namespace A075520

/-- `A039702(n+1)+2*A100484(n+1)` -/
def P5945354712277756851.Spec : Prop :=
  ∀ n, P5945354712277756851.a n = A075520 (n + 1)

theorem P5945354712277756851.correct : P5945354712277756851.Spec := by
  intro n
  simp only [A075520, Nat.add_sub_cancel, A075520.P5945354712277756851.a, A075520.P6843216313764235666.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075520

/-! ## A075520.P9713576873629908459

`A001749(n+1)+and(3, A000040(n+1))`
-/

namespace A075520.P9713576873629908459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) + Int.land 3 (A000040 (n + 1))

end

end A075520.P9713576873629908459

namespace A075520

/-- `A001749(n+1)+and(3, A000040(n+1))` -/
def P9713576873629908459.Spec : Prop :=
  ∀ n, P9713576873629908459.a n = A075520 (n + 1)

end A075520

/-! ## A075520.P7487347265299920880

`A006093(n+1)+2+or(3, A001748(n+1))`
-/

namespace A075520.P7487347265299920880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2 + Int.lor 3 (A001748 (n + 1))

end

end A075520.P7487347265299920880

namespace A075520

/-- `A006093(n+1)+2+or(3, A001748(n+1))` -/
def P7487347265299920880.Spec : Prop :=
  ∀ n, P7487347265299920880.a n = A075520 (n + 1)

end A075520

/-! ## A075520.P6513275089874973806

`A039702(n+1)+A001747(n+2)+A001747(n+2)`
-/

namespace A075520.P6513275089874973806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + (A001747 (n + 2) + A001747 (n + 2))

end

end A075520.P6513275089874973806

namespace A075520

/-- `A039702(n+1)+A001747(n+2)+A001747(n+2)` -/
def P6513275089874973806.Spec : Prop :=
  ∀ n, P6513275089874973806.a n = A075520 (n + 1)

end A075520

/-! ## A075520.P1436968933903985906

`record[A310498(A006530(n+2))-n]`
-/

namespace A075520.P1436968933903985906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310498 (A006530 (n + 2)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075520.P1436968933903985906

namespace A075520

/-- `record[A310498(A006530(n+2))-n]` -/
def P1436968933903985906.Spec : Prop :=
  ∀ n, P1436968933903985906.a n = A075520 (n + 1)

end A075520

/-!
# A075521: Primes p such that 4*p + (p mod 4) is also a prime.

The programs for A075521, the canonical program `A075521.P14244373856164998827` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075521 has offset 1).

The definition of A075521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075521.P14244373856164998827

`floor(p?[A075520(n+1)]/4)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075521

/-- `floor(p?[A075520(n+1)]/4)` -/
def P14244373856164998827.Spec : Prop :=
  ∀ n, P14244373856164998827.a n = A075521 (n + 1)

theorem P14244373856164998827.correct : P14244373856164998827.Spec := by
  intro n
  simp only [A075521, Nat.add_sub_cancel]

end A075521

/-! ## A075521.P7770213028970090176

`ceil(p?[A075520(n+2)]/4)-1`
-/

namespace A075521.P7770213028970090176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌉ - 1

end

end A075521.P7770213028970090176

namespace A075521

/-- `ceil(p?[A075520(n+2)]/4)-1` -/
def P7770213028970090176.Spec : Prop :=
  ∀ n, P7770213028970090176.a n = A075521 (n + 1)

end A075521

/-! ## A075521.P13919803192901560547

`A065091(lt[1, A075522(n+1)])`
-/

namespace A075521.P13919803192901560547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075521.P13919803192901560547

namespace A075521

/-- `A065091(lt[1, A075522(n+1)])` -/
def P13919803192901560547.Spec : Prop :=
  ∀ n, P13919803192901560547.a n = A075521 (n + 1)

end A075521

/-! ## A075521.P2848918330286075610

`p?[A000040(n+1)*A010051(A075520(n+1))]`
-/

namespace A075521.P2848918330286075610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A010051 (A075520 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075521.P2848918330286075610

namespace A075521

/-- `p?[A000040(n+1)*A010051(A075520(n+1))]` -/
def P2848918330286075610.Spec : Prop :=
  ∀ n, P2848918330286075610.a n = A075521 (n + 1)

end A075521

/-! ## A075521.P2905693714020043275

`A002265(p?[A075520(n+1)])`
-/

namespace A075521.P2905693714020043275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075521.P2905693714020043275

namespace A075521

/-- `A002265(p?[A075520(n+1)])` -/
def P2905693714020043275.Spec : Prop :=
  ∀ n, P2905693714020043275.a n = A075521 (n + 1)

end A075521

/-! ## A075521.P3646259054457406237

`A271484(p?[A075520(n+1)])`
-/

namespace A075521.P3646259054457406237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075521.P3646259054457406237

namespace A075521

/-- `A271484(p?[A075520(n+1)])` -/
def P3646259054457406237.Spec : Prop :=
  ∀ n, P3646259054457406237.a n = A075521 (n + 1)

end A075521

/-! ## A075521.P15147337527405270119

`(A186421(p?[A075520(n+1)])-1)/2`
-/

namespace A075521.P15147337527405270119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186421 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1 : ℚ) / 2

end

end A075521.P15147337527405270119

namespace A075521

/-- `(A186421(p?[A075520(n+1)])-1)/2` -/
def P15147337527405270119.Spec : Prop :=
  ∀ n, P15147337527405270119.a n = (A075521 (n + 1) : ℚ)

end A075521

/-! ## A075521.P17036246443654129220

`A004525(A004525(p?[A075520(n+1)]))`
-/

namespace A075521.P17036246443654129220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A075521.P17036246443654129220

namespace A075521

/-- `A004525(A004525(p?[A075520(n+1)]))` -/
def P17036246443654129220.Spec : Prop :=
  ∀ n, P17036246443654129220.a n = A075521 (n + 1)

end A075521

/-! ## A075521.P14225199815240284791

`A075518(A049084(p?[A075520(n+1)]))`
-/

namespace A075521.P14225199815240284791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A075521.P14225199815240284791

namespace A075521

/-- `A075518(A049084(p?[A075520(n+1)]))` -/
def P14225199815240284791.Spec : Prop :=
  ∀ n, P14225199815240284791.a n = A075521 (n + 1)

end A075521

/-! ## A075521.P15241500073149740100

`A186421(A186421(p?[A075520(n+1)]))`
-/

namespace A075521.P15241500073149740100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A186421 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A075521.P15241500073149740100

namespace A075521

/-- `A186421(A186421(p?[A075520(n+1)]))` -/
def P15241500073149740100.Spec : Prop :=
  ∀ n, P15241500073149740100.a n = A075521 (n + 1)

end A075521

/-!
# A075522: Number of steps to reach the first nonprime (=A075523(n)) starting with the n-th prime p and iterating the map k -> 4*k+(p mod 4), or -1 if no integer is ever reached.

The programs for A075522, there is no canonical definition to state claims against.
-/

/-! ## A075522.P10055205876558279071

`A139438(gcd(A139408(n+2), A139441(n+4)))`
-/

namespace A075522.P10055205876558279071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139438 (Int.gcd (A139408 (n + 2)) (A139441 (n + 4)))

end

end A075522.P10055205876558279071

/-! ## A075522.P13715640848944977269

`A325813(A361644(n)+A003891(n+1))`
-/

namespace A075522.P13715640848944977269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325813 (A361644 n + A003891 (n + 1)).toNat

end

end A075522.P13715640848944977269

/-! ## A075522.P13072051521284859267

`A026791(A002808(n+2)*A091042(n))`
-/

namespace A075522.P13072051521284859267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (A002808 (n + 2) * A091042 n).toNat

end

end A075522.P13072051521284859267

/-! ## A075522.P9431439582378390136

`A109925(A326489(n))+1`
-/

namespace A075522.P9431439582378390136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A326489 n).toNat + 1

end

end A075522.P9431439582378390136

/-! ## A075522.P11417172002652640536

`A324869(A210731(n)+A076259(n+4))`
-/

namespace A075522.P11417172002652640536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324869 (A210731 n + A076259 (n + 4)).toNat

end

end A075522.P11417172002652640536

/-!
# A075524: Nonprimes of form 4*p + (p mod 4), p prime.

The programs for A075524, the canonical program `A075524.P11710820957233170645` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075524 has offset 1).

The definition of A075524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075524.P11710820957233170645

`record[A074591(A075520(n+1))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075524

/-- `record[A074591(A075520(n+1))]` -/
def P11710820957233170645.Spec : Prop :=
  ∀ n, P11710820957233170645.a n = A075524 (n + 1)

theorem P11710820957233170645.correct : P11710820957233170645.Spec := by
  intro n
  simp only [A075524, Nat.add_sub_cancel]

end A075524

/-! ## A075524.P9687492061537564584

`filter[A075520(n+1), A005171(#)]`
-/

namespace A075524.P9687492061537564584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A075524.P9687492061537564584

namespace A075524

/-- `filter[A075520(n+1), A005171(#)]` -/
def P9687492061537564584.Spec : Prop :=
  ∀ n, P9687492061537564584.a n = A075524 (n + 1)

end A075524

/-! ## A075524.P14563016551776326587

`filter[A075520(n+1), A066247(#)]`
-/

namespace A075524.P14563016551776326587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A075524.P14563016551776326587

namespace A075524

/-- `filter[A075520(n+1), A066247(#)]` -/
def P14563016551776326587.Spec : Prop :=
  ∀ n, P14563016551776326587.a n = A075524 (n + 1)

end A075524

/-! ## A075524.P3856941842298405068

`filter[A075520(n+1), A202238(#)]`
-/

namespace A075524.P3856941842298405068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A075524.P3856941842298405068

namespace A075524

/-- `filter[A075520(n+1), A202238(#)]` -/
def P3856941842298405068.Spec : Prop :=
  ∀ n, P3856941842298405068.a n = A075524 (n + 1)

end A075524

/-! ## A075524.P8930211595514043770

`filter[A075520(n+1), A292438(#)]`
-/

namespace A075524.P8930211595514043770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A075524.P8930211595514043770

namespace A075524

/-- `filter[A075520(n+1), A292438(#)]` -/
def P8930211595514043770.Spec : Prop :=
  ∀ n, P8930211595514043770.a n = A075524 (n + 1)

end A075524

/-! ## A075524.P7447326792116788547

`filter[A075520(n+1), A323162(#)]`
-/

namespace A075524.P7447326792116788547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A075524.P7447326792116788547

namespace A075524

/-- `filter[A075520(n+1), A323162(#)]` -/
def P7447326792116788547.Spec : Prop :=
  ∀ n, P7447326792116788547.a n = A075524 (n + 1)

end A075524

/-! ## A075524.P1110487506071400716

`filter[A075520(n+1), A174898(#)]`
-/

namespace A075524.P1110487506071400716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A075524.P1110487506071400716

namespace A075524

/-- `filter[A075520(n+1), A174898(#)]` -/
def P1110487506071400716.Spec : Prop :=
  ∀ n, P1110487506071400716.a n = A075524 (n + 1)

end A075524

/-! ## A075524.P13784926607002730741

`∩[A002808(n+1), A075520(n+1)]`
-/

namespace A075524.P13784926607002730741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P13784926607002730741

namespace A075524

/-- `∩[A002808(n+1), A075520(n+1)]` -/
def P13784926607002730741.Spec : Prop :=
  ∀ n, (P13784926607002730741.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P17547977585112296406

`∩[A018252(n+1), A075520(n+1)]`
-/

namespace A075524.P17547977585112296406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P17547977585112296406

namespace A075524

/-- `∩[A018252(n+1), A075520(n+1)]` -/
def P17547977585112296406.Spec : Prop :=
  ∀ n, (P17547977585112296406.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P14873184715310163378

`∩[A075520(n+1), A141468(n+1)]`
-/

namespace A075524.P14873184715310163378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P14873184715310163378

namespace A075524

/-- `∩[A075520(n+1), A141468(n+1)]` -/
def P14873184715310163378.Spec : Prop :=
  ∀ n, (P14873184715310163378.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P13106189773815160622

`∩[A005381(n+1), A075520(n+1)]`
-/

namespace A075524.P13106189773815160622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P13106189773815160622

namespace A075524

/-- `∩[A005381(n+1), A075520(n+1)]` -/
def P13106189773815160622.Spec : Prop :=
  ∀ n, (P13106189773815160622.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P9845144209313054527

`∩[A075520(n+1), A127653(n+1)]`
-/

namespace A075524.P9845144209313054527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P9845144209313054527

namespace A075524

/-- `∩[A075520(n+1), A127653(n+1)]` -/
def P9845144209313054527.Spec : Prop :=
  ∀ n, (P9845144209313054527.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P5543280236653900733

`∩[A075520(n+1), A138593(n+1)]`
-/

namespace A075524.P5543280236653900733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P5543280236653900733

namespace A075524

/-- `∩[A075520(n+1), A138593(n+1)]` -/
def P5543280236653900733.Spec : Prop :=
  ∀ n, (P5543280236653900733.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P3665992062043033585

`∩[A075520(n+1), A164276(n+1)]`
-/

namespace A075524.P3665992062043033585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P3665992062043033585

namespace A075524

/-- `∩[A075520(n+1), A164276(n+1)]` -/
def P3665992062043033585.Spec : Prop :=
  ∀ n, (P3665992062043033585.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P3361760844070825217

`∩[A075520(n+1), A308874(n+1)]`
-/

namespace A075524.P3361760844070825217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P3361760844070825217

namespace A075524

/-- `∩[A075520(n+1), A308874(n+1)]` -/
def P3361760844070825217.Spec : Prop :=
  ∀ n, (P3361760844070825217.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P13700359655995857961

`∩[A075520(n+1), A081062(n+1)]`
-/

namespace A075524.P13700359655995857961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P13700359655995857961

namespace A075524

/-- `∩[A075520(n+1), A081062(n+1)]` -/
def P13700359655995857961.Spec : Prop :=
  ∀ n, (P13700359655995857961.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P6150067459412935601

`∩[A075520(n+1), A089229(n+1)]`
-/

namespace A075524.P6150067459412935601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P6150067459412935601

namespace A075524

/-- `∩[A075520(n+1), A089229(n+1)]` -/
def P6150067459412935601.Spec : Prop :=
  ∀ n, (P6150067459412935601.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P16031838339746734718

`∩[A075520(n+1), A106543(n+1)]`
-/

namespace A075524.P16031838339746734718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P16031838339746734718

namespace A075524

/-- `∩[A075520(n+1), A106543(n+1)]` -/
def P16031838339746734718.Spec : Prop :=
  ∀ n, (P16031838339746734718.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P16101585710660526133

`∩[A024619(n+1), A075520(n+1)]`
-/

namespace A075524.P16101585710660526133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P16101585710660526133

namespace A075524

/-- `∩[A024619(n+1), A075520(n+1)]` -/
def P16101585710660526133.Spec : Prop :=
  ∀ n, (P16101585710660526133.a n : ℤ) = A075524 (n + 1)

end A075524

/-! ## A075524.P17048523385660133560

`∩[A075520(n+1), A361102(n+1)]`
-/

namespace A075524.P17048523385660133560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075524.P17048523385660133560

namespace A075524

/-- `∩[A075520(n+1), A361102(n+1)]` -/
def P17048523385660133560.Spec : Prop :=
  ∀ n, (P17048523385660133560.a n : ℤ) = A075524 (n + 1)

end A075524

/-!
# A075526: a(n) = A008578(n+2) - A008578(n+1).

The programs for A075526, the canonical program `A075526.P13453056913313804413` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075526 has offset 0).

The definition of A075526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008578(n+2)-A008578(n+1)` (program `A075526.P13453056913313804413`, by `A075526.P13453056913313804413.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A075526.P13453056913313804413

`A008578(n+2)-A008578(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075526

/-- `A008578(n+2)-A008578(n+1)` -/
def P13453056913313804413.Spec : Prop :=
  ∀ n, P13453056913313804413.a n = A075526 n

theorem P13453056913313804413.correct : P13453056913313804413.Spec := by
  intro n
  simp only [A075526]

end A075526

/-! ## A075526.P296086940342398908

`Δ[A028815(n)]`
-/

namespace A075526.P296086940342398908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075526.P296086940342398908

namespace A075526

/-- `Δ[A028815(n)]` -/
def P296086940342398908.Spec : Prop :=
  ∀ n, P296086940342398908.a n = A075526 n

theorem P296086940342398908.correct : P296086940342398908.Spec := by
  intro n
  simp only [A075526, Nat.add_sub_cancel, A075526.P296086940342398908.f1, A075526.P296086940342398908.a, A075526.P13453056913313804413.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075526

/-! ## A075526.P15231650431251250538

`A230849(Δ[n²])`
-/

namespace A075526.P15231650431251250538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075526.P15231650431251250538

namespace A075526

/-- `A230849(Δ[n²])` -/
def P15231650431251250538.Spec : Prop :=
  ∀ n, P15231650431251250538.a n = A075526 n

end A075526

/-! ## A075526.P17389000211546568752

`A230846(n+1)-1`
-/

namespace A075526.P17389000211546568752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) - 1

end

end A075526.P17389000211546568752

namespace A075526

/-- `A230846(n+1)-1` -/
def P17389000211546568752.Spec : Prop :=
  ∀ n, P17389000211546568752.a n = A075526 n

theorem P17389000211546568752.correct : P17389000211546568752.Spec := by
  intro n
  simp only [A075526, Nat.add_sub_cancel, A075526.P17389000211546568752.a, A075526.P13453056913313804413.a, A008578, A008578.P3639467937083264764.a, A230846, A230846.P382823846826996037.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075526

/-! ## A075526.P10256385767352697667

`A001223(A028310(n))`
-/

namespace A075526.P10256385767352697667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n).toNat

end

end A075526.P10256385767352697667

namespace A075526

/-- `A001223(A028310(n))` -/
def P10256385767352697667.Spec : Prop :=
  ∀ n, P10256385767352697667.a n = A075526 n

end A075526

/-! ## A075526.P7899735984435264223

`A131516(A125266(n+1))`
-/

namespace A075526.P7899735984435264223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (A125266 (n + 1)).toNat

end

end A075526.P7899735984435264223

namespace A075526

/-- `A131516(A125266(n+1))` -/
def P7899735984435264223.Spec : Prop :=
  ∀ n, P7899735984435264223.a n = A075526 n

end A075526

/-! ## A075526.P12095426480232118321

`A001223(A063524(n+1)+n)`
-/

namespace A075526.P12095426480232118321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A063524 (n + 1) + (n : ℤ)).toNat

end

end A075526.P12095426480232118321

namespace A075526

/-- `A001223(A063524(n+1)+n)` -/
def P12095426480232118321.Spec : Prop :=
  ∀ n, P12095426480232118321.a n = A075526 n

end A075526

/-! ## A075526.P11286657858154378731

`A076368(n+1)+A057428(n)`
-/

namespace A075526.P11286657858154378731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) + A057428 n

end

end A075526.P11286657858154378731

namespace A075526

/-- `A076368(n+1)+A057428(n)` -/
def P11286657858154378731.Spec : Prop :=
  ∀ n, P11286657858154378731.a n = A075526 n

end A075526

/-! ## A075526.P3606366863514090032

`A001223(A004275(n+1)-n)`
-/

namespace A075526.P3606366863514090032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A075526.P3606366863514090032

namespace A075526

/-- `A001223(A004275(n+1)-n)` -/
def P3606366863514090032.Spec : Prop :=
  ∀ n, P3606366863514090032.a n = A075526 n

end A075526

/-! ## A075526.P18326428449507507027

`A008864(n+1)-A028815(n)`
-/

namespace A075526.P18326428449507507027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A028815 n

end

end A075526.P18326428449507507027

namespace A075526

/-- `A008864(n+1)-A028815(n)` -/
def P18326428449507507027.Spec : Prop :=
  ∀ n, P18326428449507507027.a n = A075526 n

end A075526

/-! ## A075526.P15732245652087600295

`A054541(n+1)-A000007(n)`
-/

namespace A075526.P15732245652087600295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) - A000007 n

end

end A075526.P15732245652087600295

namespace A075526

/-- `A054541(n+1)-A000007(n)` -/
def P15732245652087600295.Spec : Prop :=
  ∀ n, P15732245652087600295.a n = A075526 n

end A075526

/-! ## A075526.P11000244411134981837

`A028815(n+1)-A028815(n)`
-/

namespace A075526.P11000244411134981837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - A028815 n

end

end A075526.P11000244411134981837

namespace A075526

/-- `A028815(n+1)-A028815(n)` -/
def P11000244411134981837.Spec : Prop :=
  ∀ n, P11000244411134981837.a n = A075526 n

theorem P11000244411134981837.correct : P11000244411134981837.Spec := by
  intro n
  simp only [A075526, Nat.add_sub_cancel, A075526.P11000244411134981837.a, A075526.P13453056913313804413.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075526

/-! ## A075526.P14145092165586623558

`A001223(n+1-A057427(n))`
-/

namespace A075526.P14145092165586623558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ((n + 1 : ℤ) - A057427 n).toNat

end

end A075526.P14145092165586623558

namespace A075526

/-- `A001223(n+1-A057427(n))` -/
def P14145092165586623558.Spec : Prop :=
  ∀ n, P14145092165586623558.a n = A075526 n

end A075526

/-! ## A075526.P13578134207314210578

`A075527(n)-A001223(n+1)`
-/

namespace A075526.P13578134207314210578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n - A001223 (n + 1)

end

end A075526.P13578134207314210578

namespace A075526

/-- `A075527(n)-A001223(n+1)` -/
def P13578134207314210578.Spec : Prop :=
  ∀ n, P13578134207314210578.a n = A075526 n

end A075526

/-! ## A075526.P10900219831440214199

`A125266(n+1)-A000038(n)`
-/

namespace A075526.P10900219831440214199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) - A000038 n

end

end A075526.P10900219831440214199

namespace A075526

/-- `A125266(n+1)-A000038(n)` -/
def P10900219831440214199.Spec : Prop :=
  ∀ n, P10900219831440214199.a n = A075526 n

end A075526

/-! ## A075526.P17634015226533492775

`A076368(n+1)-A057427(n)`
-/

namespace A075526.P17634015226533492775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) - A057427 n

end

end A075526.P17634015226533492775

namespace A075526

/-- `A076368(n+1)-A057427(n)` -/
def P17634015226533492775.Spec : Prop :=
  ∀ n, P17634015226533492775.a n = A075526 n

end A075526

/-! ## A075526.P8005249952091556487

`A230847(n+1)-A054977(n)`
-/

namespace A075526.P8005249952091556487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) - A054977 n

end

end A075526.P8005249952091556487

namespace A075526

/-- `A230847(n+1)-A054977(n)` -/
def P8005249952091556487.Spec : Prop :=
  ∀ n, P8005249952091556487.a n = A075526 n

end A075526

/-! ## A075526.P17421289052351736679

`A001223(n+2-A040000(n))`
-/

namespace A075526.P17421289052351736679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ((n + 2 : ℤ) - A040000 n).toNat

end

end A075526.P17421289052351736679

namespace A075526

/-- `A001223(n+2-A040000(n))` -/
def P17421289052351736679.Spec : Prop :=
  ∀ n, P17421289052351736679.a n = A075526 n

end A075526

/-! ## A075526.P15293254189850222334

`A055670(n+1)%A028815(n)`
-/

namespace A075526.P15293254189850222334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055670 (n + 1)) (A028815 n)

end

end A075526.P15293254189850222334

namespace A075526

/-- `A055670(n+1)%A028815(n)` -/
def P15293254189850222334.Spec : Prop :=
  ∀ n, P15293254189850222334.a n = A075526 n

end A075526

/-! ## A075526.P11579157626368987621

`and(A125266(n+1), A260196(n))`
-/

namespace A075526.P11579157626368987621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125266 (n + 1)) (A260196 n)

end

end A075526.P11579157626368987621

namespace A075526

/-- `and(A125266(n+1), A260196(n))` -/
def P11579157626368987621.Spec : Prop :=
  ∀ n, P11579157626368987621.a n = A075526 n

end A075526

/-! ## A075526.P18253963641207040331

`Δ[lt[∑{e}[n+1, #], 2]]`
-/

namespace A075526.P18253963641207040331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A075526.P18253963641207040331

namespace A075526

/-- `Δ[lt[∑{e}[n+1, #], 2]]` -/
def P18253963641207040331.Spec : Prop :=
  ∀ n, P18253963641207040331.a n = A075526 n

end A075526

/-!
# A075527: a(n) = A008578(n+3) - A008578(n+1).

The programs for A075527, the canonical program `A075527.P10646359664599490544` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075527 has offset 0).

The definition of A075527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008578(n+3)-A008578(n+1)` (program `A075527.P10646359664599490544`, by `A075527.P10646359664599490544.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A075527.P10646359664599490544

`A008578(n+3)-A008578(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075527

/-- `A008578(n+3)-A008578(n+1)` -/
def P10646359664599490544.Spec : Prop :=
  ∀ n, P10646359664599490544.a n = A075527 n

theorem P10646359664599490544.correct : P10646359664599490544.Spec := by
  intro n
  simp only [A075527]

end A075527

/-! ## A075527.P13372066748015094040

`A159461(n+1)+2`
-/

namespace A075527.P13372066748015094040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1) + 2

end

end A075527.P13372066748015094040

namespace A075527

/-- `A159461(n+1)+2` -/
def P13372066748015094040.Spec : Prop :=
  ∀ n, P13372066748015094040.a n = A075527 n

theorem P13372066748015094040.correct : P13372066748015094040.Spec := by
  intro n
  simp only [A075527, Nat.add_sub_cancel, A075527.P13372066748015094040.a, A075527.P10646359664599490544.a, A008578, A008578.P3639467937083264764.a, A159461, A159461.P8896828948141385793.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075527

/-! ## A075527.P5923326983950595770

`A046930(n+1)+ceil(cosh(sin(n)))`
-/

namespace A075527.P5923326983950595770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1) + ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A075527.P5923326983950595770

namespace A075527

/-- `A046930(n+1)+ceil(cosh(sin(n)))` -/
def P5923326983950595770.Spec : Prop :=
  ∀ n, P5923326983950595770.a n = A075527 n

end A075527

/-! ## A075527.P11426929532376718887

`A075526(n)+A001223(n+1)`
-/

namespace A075527.P11426929532376718887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + A001223 (n + 1)

end

end A075527.P11426929532376718887

namespace A075527

/-- `A075526(n)+A001223(n+1)` -/
def P11426929532376718887.Spec : Prop :=
  ∀ n, P11426929532376718887.a n = A075527 n

end A075527

/-! ## A075527.P3865659828038881513

`A046930(n+1)+A040000(n)`
-/

namespace A075527.P3865659828038881513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1) + A040000 n

end

end A075527.P3865659828038881513

namespace A075527

/-- `A046930(n+1)+A040000(n)` -/
def P3865659828038881513.Spec : Prop :=
  ∀ n, P3865659828038881513.a n = A075527 n

end A075527

/-! ## A075527.P18383678016367294833

`A055670(n+2)-A028815(n)`
-/

namespace A075527.P18383678016367294833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2) - A028815 n

end

end A075527.P18383678016367294833

namespace A075527

/-- `A055670(n+2)-A028815(n)` -/
def P18383678016367294833.Spec : Prop :=
  ∀ n, P18383678016367294833.a n = A075527 n

end A075527

/-! ## A075527.P6626855651840160307

`A046930(n+1)+A057427(n)+1`
-/

namespace A075527.P6626855651840160307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1) + (A057427 n + 1)

end

end A075527.P6626855651840160307

namespace A075527

/-- `A046930(n+1)+A057427(n)+1` -/
def P6626855651840160307.Spec : Prop :=
  ∀ n, P6626855651840160307.a n = A075527 n

end A075527

/-! ## A075527.P15224180780201876464

`A230846(n+1)+A046933(n+1)`
-/

namespace A075527.P15224180780201876464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) + A046933 (n + 1)

end

end A075527.P15224180780201876464

namespace A075527

/-- `A230846(n+1)+A046933(n+1)` -/
def P15224180780201876464.Spec : Prop :=
  ∀ n, P15224180780201876464.a n = A075527 n

end A075527

/-! ## A075527.P7035649849623005892

`A065091(n+1)-A008578(n+1)`
-/

namespace A075527.P7035649849623005892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A008578 (n + 1)

end

end A075527.P7035649849623005892

namespace A075527

/-- `A065091(n+1)-A008578(n+1)` -/
def P7035649849623005892.Spec : Prop :=
  ∀ n, P7035649849623005892.a n = A075527 n

end A075527

/-! ## A075527.P10775676342615984742

`A065091(n+1)+1-A028815(n)`
-/

namespace A075527.P10775676342615984742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (1 - A028815 n)

end

end A075527.P10775676342615984742

namespace A075527

/-- `A065091(n+1)+1-A028815(n)` -/
def P10775676342615984742.Spec : Prop :=
  ∀ n, P10775676342615984742.a n = A075527 n

end A075527

/-! ## A075527.P5841848269832265326

`A046930(n+1)+1-A057428(n)`
-/

namespace A075527.P5841848269832265326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1) + (1 - A057428 n)

end

end A075527.P5841848269832265326

namespace A075527

/-- `A046930(n+1)+1-A057428(n)` -/
def P5841848269832265326.Spec : Prop :=
  ∀ n, P5841848269832265326.a n = A075527 n

end A075527

/-! ## A075527.P10999359591235067867

`A014690(n+1)-A090178(n+1)`
-/

namespace A075527.P10999359591235067867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) - A090178 (n + 1)

end

end A075527.P10999359591235067867

namespace A075527

/-- `A014690(n+1)-A090178(n+1)` -/
def P10999359591235067867.Spec : Prop :=
  ∀ n, P10999359591235067867.a n = A075527 n

end A075527

/-! ## A075527.P15913593768362772461

`A045344(n+1)-A182986(n+1)`
-/

namespace A075527.P15913593768362772461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) - A182986 (n + 1)

end

end A075527.P15913593768362772461

namespace A075527

/-- `A045344(n+1)-A182986(n+1)` -/
def P15913593768362772461.Spec : Prop :=
  ∀ n, P15913593768362772461.a n = A075527 n

end A075527

/-! ## A075527.P6026235923435899701

`A375087(n+1)+A001223(n+2)`
-/

namespace A075527.P6026235923435899701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375087 (n + 1) + A001223 (n + 2)

end

end A075527.P6026235923435899701

namespace A075527

/-- `A375087(n+1)+A001223(n+2)` -/
def P6026235923435899701.Spec : Prop :=
  ∀ n, P6026235923435899701.a n = A075527 n

end A075527

/-! ## A075527.P10695252364989287413

`A135731(n+1)-A299763(n+1)`
-/

namespace A075527.P10695252364989287413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) - A299763 (n + 1)

end

end A075527.P10695252364989287413

namespace A075527

/-- `A135731(n+1)-A299763(n+1)` -/
def P10695252364989287413.Spec : Prop :=
  ∀ n, P10695252364989287413.a n = A075527 n

end A075527

/-! ## A075527.P3371100328307207990

`A046930(n+1)+2-A000007(n)`
-/

namespace A075527.P3371100328307207990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1) + (2 - A000007 n)

end

end A075527.P3371100328307207990

namespace A075527

/-- `A046930(n+1)+2-A000007(n)` -/
def P3371100328307207990.Spec : Prop :=
  ∀ n, P3371100328307207990.a n = A075527 n

end A075527

/-! ## A075527.P11318447843746093326

`and(A046930(n+1), A134824(n))+2`
-/

namespace A075527.P11318447843746093326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046930 (n + 1)) (A134824 n) + 2

end

end A075527.P11318447843746093326

namespace A075527

/-- `and(A046930(n+1), A134824(n))+2` -/
def P11318447843746093326.Spec : Prop :=
  ∀ n, P11318447843746093326.a n = A075527 n

end A075527

/-! ## A075527.P8415354571757834535

`A001223(n+1)+A001223(A028310(n))`
-/

namespace A075527.P8415354571757834535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + A001223 (A028310 n).toNat

end

end A075527.P8415354571757834535

namespace A075527

/-- `A001223(n+1)+A001223(A028310(n))` -/
def P8415354571757834535.Spec : Prop :=
  ∀ n, P8415354571757834535.a n = A075527 n

end A075527

/-! ## A075527.P16645707584036556797

`A075526(n+1)+A075526(n)`
-/

namespace A075527.P16645707584036556797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1) + A075526 n

end

end A075527.P16645707584036556797

namespace A075527

/-- `A075526(n+1)+A075526(n)` -/
def P16645707584036556797.Spec : Prop :=
  ∀ n, P16645707584036556797.a n = A075527 n

theorem P16645707584036556797.correct : P16645707584036556797.Spec := by
  intro n
  simp only [A075527, Nat.add_sub_cancel, A075527.P16645707584036556797.a, A075527.P10646359664599490544.a, A008578, A008578.P3639467937083264764.a, A075526, A075526.P13453056913313804413.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075527

/-! ## A075527.P12904078489428643019

`A008864(n+2)-A028815(n)`
-/

namespace A075527.P12904078489428643019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) - A028815 n

end

end A075527.P12904078489428643019

namespace A075527

/-- `A008864(n+2)-A028815(n)` -/
def P12904078489428643019.Spec : Prop :=
  ∀ n, P12904078489428643019.a n = A075527 n

end A075527

/-!
# A075528: Triangular numbers that are half other triangular numbers.

The programs for A075528, the canonical program `A075528.P17696167381433019680` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075528 has offset 0).

The definition of A075528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075528.P16691150456176024407

`ogf(3x/(1-35x+35x^2-x^3))`
-/

namespace A075528.P16691150456176024407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -35, 35, -1] n

end

end A075528.P16691150456176024407

namespace A075528

/-- `ogf(3x/(1-35x+35x^2-x^3))` -/
def P16691150456176024407.Spec : Prop :=
  ∀ n, P16691150456176024407.a n = A075528 n

end A075528

/-! ## A075528.P17696167381433019680

`34*a(n-1)-a(n-2)+3` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075528

/-- `34*a(n-1)-a(n-2)+3` -/
def P17696167381433019680.Spec : Prop :=
  ∀ n, P17696167381433019680.a n = A075528 n

theorem P17696167381433019680.correct : P17696167381433019680.Spec := by
  intro n
  simp only [A075528]

end A075528

/-! ## A075528.P1122524489768487885

`A029549(n)/2`
-/

namespace A075528.P1122524489768487885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029549 n : ℚ) / 2

end

end A075528.P1122524489768487885

namespace A075528

/-- `A029549(n)/2` -/
def P1122524489768487885.Spec : Prop :=
  ∀ n, P1122524489768487885.a n = (A075528 n : ℚ)

end A075528

/-! ## A075528.P2806101771961791483

`A096979(2*n)/2`
-/

namespace A075528.P2806101771961791483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096979 (2 * n) : ℚ) / 2

end

end A075528.P2806101771961791483

namespace A075528

/-- `A096979(2*n)/2` -/
def P2806101771961791483.Spec : Prop :=
  ∀ n, P2806101771961791483.a n = (A075528 n : ℚ)

end A075528

/-! ## A075528.P5396423675086973749

`A001652(n)*A046090(n)/4`
-/

namespace A075528.P5396423675086973749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001652 n * A046090 n : ℚ) / 4

end

end A075528.P5396423675086973749

namespace A075528

/-- `A001652(n)*A046090(n)/4` -/
def P5396423675086973749.Spec : Prop :=
  ∀ n, P5396423675086973749.a n = (A075528 n : ℚ)

end A075528

/-! ## A075528.P14650556263397888814

`A084159(n)*A046729(n)/4`
-/

namespace A075528.P14650556263397888814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084159 n * A046729 n : ℚ) / 4

end

end A075528.P14650556263397888814

namespace A075528

/-- `A084159(n)*A046729(n)/4` -/
def P14650556263397888814.Spec : Prop :=
  ∀ n, P14650556263397888814.a n = (A075528 n : ℚ)

end A075528

/-! ## A075528.P12693570242347182441

`((3+2*sqrt(2))^(2*n+1)+(3-2*sqrt(2))^(2*n+1)-6)/64`
-/

namespace A075528.P12693570242347182441
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (2 : ℝ)) ^ (2 * n + 1) + (3 - 2 * Real.sqrt (2 : ℝ)) ^ (2 * n + 1) - 6) / 64

end

end A075528.P12693570242347182441

namespace A075528

/-- `((3+2*sqrt(2))^(2*n+1)+(3-2*sqrt(2))^(2*n+1)-6)/64` -/
def P12693570242347182441.Spec : Prop :=
  ∀ n, P12693570242347182441.a n = (A075528 n : ℝ)

theorem P12693570242347182441.correct : P12693570242347182441.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A075528, Nat.add_sub_cancel, A075528.P12693570242347182441.a, A075528.P17696167381433019680.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A075528, Nat.add_sub_cancel, A075528.P12693570242347182441.a, A075528.P17696167381433019680.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A075528

/-! ## A075528.P14025927202132053173

`C(A011900(n), 2)`
-/

namespace A075528.P14025927202132053173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A011900 n).toNat 2

end

end A075528.P14025927202132053173

namespace A075528

/-- `C(A011900(n), 2)` -/
def P14025927202132053173.Spec : Prop :=
  ∀ n, (P14025927202132053173.a n : ℤ) = A075528 n

end A075528

/-! ## A075528.P12828550954986351805

`3*A305539(n+1)`
-/

namespace A075528.P12828550954986351805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A305539 (n + 1)

end

end A075528.P12828550954986351805

namespace A075528

/-- `3*A305539(n+1)` -/
def P12828550954986351805.Spec : Prop :=
  ∀ n, P12828550954986351805.a n = A075528 n

end A075528

/-! ## A075528.P7621062194629170145

`C(A053141(n)+1, 2)`
-/

namespace A075528.P7621062194629170145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053141 n + 1).toNat 2

end

end A075528.P7621062194629170145

namespace A075528

/-- `C(A053141(n)+1, 2)` -/
def P7621062194629170145.Spec : Prop :=
  ∀ n, (P7621062194629170145.a n : ℤ) = A075528 n

end A075528

/-!
# A075529: Let x(0),...,x(n), be an additive chain of length n+1 with x(0)=1 and satisfying x(k) = x(k-1) + x(j) for some j < k. a(n) is the number of distinct possible values taken on by x(n).

The programs for A075529, there is no canonical definition to state claims against.
-/

/-! ## A075529.P4078506078978991714

`∑[A003065(n)]-n`
-/

namespace A075529.P4078506078978991714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A075529.P4078506078978991714

/-! ## A075529.P5082861582190865483

`A001489(n)+∑[A003065(n)]`
-/

namespace A075529.P5082861582190865483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075529.P5082861582190865483

/-! ## A075529.P7312492115441609101

`∑[A003056(A148019(n+1))]-n`
-/

namespace A075529.P7312492115441609101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A075529.P7312492115441609101

/-! ## A075529.P11634273821566321533

`A347262(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A075529.P11634273821566321533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A347262 (a (n - 1) + 1).toNat

end

end A075529.P11634273821566321533

/-! ## A075529.P17472359941039576248

`A105223(A027115(n))`
-/

namespace A075529.P17472359941039576248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A027115 n).toNat

end

end A075529.P17472359941039576248

/-!
# A075530: a(n) is the largest m such that n+1, n+2, ..., n+m are all members of the set X(n) given in A075529.

The programs for A075530, there is no canonical definition to state claims against.
-/

/-! ## A075530.P6847411442111288181

`A003064(n+1)-(1+n)`
-/

namespace A075530.P6847411442111288181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003064 (n + 1) - (1 + n : ℤ)

end

end A075530.P6847411442111288181

/-! ## A075530.P6670518351972251786

`A126090(A003064(n+1))-n`
-/

namespace A075530.P6670518351972251786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126090 (A003064 (n + 1)).toNat - (n : ℤ)

end

end A075530.P6670518351972251786

/-! ## A075530.P6139346653049194113

`record[A383334(n+2)]-(n+1)`
-/

namespace A075530.P6139346653049194113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A075530.P6139346653049194113

/-! ## A075530.P1946557388436677957

`A115617(A043316(n+1))-A043316(n+1)`
-/

namespace A075530.P1946557388436677957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115617 (A043316 (n + 1)).toNat - A043316 (n + 1)

end

end A075530.P1946557388436677957

/-! ## A075530.P15051915492838561556

`A115617(A061147(n+1))-A061147(n+1)`
-/

namespace A075530.P15051915492838561556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115617 (A061147 (n + 1)).toNat - A061147 (n + 1)

end

end A075530.P15051915492838561556

/-!
# A075532: Number of rooted trees where each node at height h has 0 or h+1 children.

The programs for A075532, there is no canonical definition to state claims against.
-/

/-! ## A075532.P4427874205533420714

`A382817(A228866(n))`
-/

namespace A075532.P4427874205533420714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382817 (A228866 n).toNat

end

end A075532.P4427874205533420714

/-! ## A075532.P18408657123934364150

`A337176(A228866(n)+1)`
-/

namespace A075532.P18408657123934364150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337176 (A228866 n + 1).toNat

end

end A075532.P18408657123934364150

/-! ## A075532.P13360389206179827296

`A373125(7*A228866(n))`
-/

namespace A075532.P13360389206179827296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373125 (7 * A228866 n).toNat

end

end A075532.P13360389206179827296

/-! ## A075532.P2500800891196158278

`A373125(lcm(6, A228866(n)))`
-/

namespace A075532.P2500800891196158278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373125 (Int.lcm 6 (A228866 n))

end

end A075532.P2500800891196158278

/-! ## A075532.P11125945957083781716

`val(A000925(A228866(n)²), 2)`
-/

namespace A075532.P11125945957083781716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000925 (A228866 n ^ 2).toNat).toNat 2

end

end A075532.P11125945957083781716

/-!
# A075533: Number of labeled rooted trees where each node at height h has 0 or h+1 children.

The programs for A075533, there is no canonical definition to state claims against.
-/

/-! ## A075533.P7951519034862914794

`A144358(lcm(3, n²)+1)`
-/

namespace A075533.P7951519034862914794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144358 (Nat.lcm 3 (n ^ 2) + 1)

end

end A075533.P7951519034862914794

/-! ## A075533.P17225755171448701329

`C(∏[gcd(n, n%2)+1], A347490(n+1))`
-/

namespace A075533.P17225755171448701329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j) (A347490 (n + 1)).toNat

end

end A075533.P17225755171448701329

/-! ## A075533.P4831975835770756950

`A328449(A013621(n))`
-/

namespace A075533.P4831975835770756950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328449 (A013621 n).toNat

end

end A075533.P4831975835770756950

/-!
# A075534: Number of increasing rooted trees where each node at height h has 0 or h+1 children.

The programs for A075534, there is no canonical definition to state claims against.
-/

/-! ## A075534.P57413820770273683

`A287146(n*A146699(n+1))`
-/

namespace A075534.P57413820770273683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 ((n : ℤ) * A146699 (n + 1)).toNat

end

end A075534.P57413820770273683

/-! ## A075534.P636645166092927812

`A168485(∏{p}[A326776(n+1)-1, C(#, 3)])`
-/

namespace A075534.P636645166092927812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326776 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p 3)

end

end A075534.P636645166092927812

/-! ## A075534.P5216561735050759490

`C(A117909(n), A052297((n-1)*2^(n+1)+3))`
-/

namespace A075534.P5216561735050759490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A117909 n).toNat (A052297 (((n : ℤ) - 1) * (2 ^ (n + 1) : ℤ) + 3).toNat).toNat

end

end A075534.P5216561735050759490

/-! ## A075534.P3690319579401366975

`C(A054991(∑[3*n-2]+3), A286216(2*(n+2)))`
-/

namespace A075534.P3690319579401366975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054991 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat).toNat (A286216 (2 * (n + 2))).toNat

end

end A075534.P3690319579401366975

/-! ## A075534.P1852012330483713039

`A109390(A062114(n))*A144207(n)`
-/

namespace A075534.P1852012330483713039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109390 (A062114 n).toNat * A144207 n

end

end A075534.P1852012330483713039

/-!
# A075535: a(1)=1, a(n) = Sum_{k=1..n-1} min(a(k), a(n-k)).

The programs for A075535, the canonical program `A075535.P12650225572769853463` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075535 has offset 1).

The definition of A075535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075535.P12650225572769853463

`a(n-1)+a(floor((n+1)/2)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075535

/-- `a(n-1)+a(floor((n+1)/2)-1)` -/
def P12650225572769853463.Spec : Prop :=
  ∀ n, (P12650225572769853463.a n : ℤ) = A075535 (n + 1)

theorem P12650225572769853463.correct : P12650225572769853463.Spec := by
  intro n
  simp only [A075535, Nat.add_sub_cancel]

end A075535

/-! ## A075535.P5287689837358634591

`abs(a(floor((n-1)/2)))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A075535.P5287689837358634591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1)

end

end A075535.P5287689837358634591

namespace A075535

/-- `abs(a(floor((n-1)/2)))+a(n-1)` -/
def P5287689837358634591.Spec : Prop :=
  ∀ n, (P5287689837358634591.a n : ℤ) = A075535 (n + 1)

end A075535

/-! ## A075535.P8694231140636949404

`abs(a(ceil(n/2)-1)+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A075535.P8694231140636949404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (⌈(n : ℚ) / 2⌉ - 1).toNat + a (n - 1)

end

end A075535.P8694231140636949404

namespace A075535

/-- `abs(a(ceil(n/2)-1)+a(n-1))` -/
def P8694231140636949404.Spec : Prop :=
  ∀ n, (P8694231140636949404.a n : ℤ) = A075535 (n + 1)

end A075535

/-! ## A075535.P175768592535154918

`floor(a(floor((n-1)/2))+a(n-1))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A075535.P175768592535154918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1)

end

end A075535.P175768592535154918

namespace A075535

/-- `floor(a(floor((n-1)/2))+a(n-1))` -/
def P175768592535154918.Spec : Prop :=
  ∀ n, (P175768592535154918.a n : ℤ) = A075535 (n + 1)

end A075535

/-! ## A075535.P6013601925347869746

`ceil(a(ceil(n/2)-1)+a(n-1))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A075535.P6013601925347869746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (⌈(n : ℚ) / 2⌉ - 1).toNat + a (n - 1)

end

end A075535.P6013601925347869746

namespace A075535

/-- `ceil(a(ceil(n/2)-1)+a(n-1))` -/
def P6013601925347869746.Spec : Prop :=
  ∀ n, (P6013601925347869746.a n : ℤ) = A075535 (n + 1)

end A075535

/-! ## A075535.P15915786643908904861

`a(n-∑[1-a(n-1)])+a(n-1)-char[1]` with `a(0)=1`
-/

namespace A075535.P15915786643908904861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat + a (n - 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A075535.P15915786643908904861

namespace A075535

/-- `a(n-∑[1-a(n-1)])+a(n-1)-char[1]` -/
def P15915786643908904861.Spec : Prop :=
  ∀ n, P15915786643908904861.a n = A075535 (n + 1)

end A075535

/-! ## A075535.P5718979065138782334

`A033485(n+1)-A062188(n)`
-/

namespace A075535.P5718979065138782334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (n + 1) - A062188 n

end

end A075535.P5718979065138782334

namespace A075535

/-- `A033485(n+1)-A062188(n)` -/
def P5718979065138782334.Spec : Prop :=
  ∀ n, P5718979065138782334.a n = A075535 (n + 1)

end A075535

/-! ## A075535.P9734028495946220876

`A000123(n+1)/2-A062188(n)`
-/

namespace A075535.P9734028495946220876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (n + 1) : ℚ) / 2 - (A062188 n : ℚ)

end

end A075535.P9734028495946220876

namespace A075535

/-- `A000123(n+1)/2-A062188(n)` -/
def P9734028495946220876.Spec : Prop :=
  ∀ n, P9734028495946220876.a n = (A075535 (n + 1) : ℚ)

end A075535

/-! ## A075535.P5421024615868230172

`A040039(2*n)-A062188(n)`
-/

namespace A075535.P5421024615868230172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040039 (2 * n) - A062188 n

end

end A075535.P5421024615868230172

namespace A075535

/-- `A040039(2*n)-A062188(n)` -/
def P5421024615868230172.Spec : Prop :=
  ∀ n, P5421024615868230172.a n = A075535 (n + 1)

end A075535

/-!
# A075536: a(n) = ((1+(-1)^n)*T(n+1) + (1-(-1)^n)*S(n))/2, where T(n) = tribonacci numbers A000073, S(n) = generalized tribonacci numbers A001644.

The programs for A075536, the canonical program `A075536.P8593801966756376013` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075536 has offset 0).

The definition of A075536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075536.P16450552360675948890

`ogf((x+x^2+4x^3+x^4-x^5)/(1-3x^2-x^4-x^6))`
-/

namespace A075536.P16450552360675948890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 4, 1, -1] [1, 0, -3, 0, -1, 0, -1] n

end

end A075536.P16450552360675948890

namespace A075536

/-- `ogf((x+x^2+4x^3+x^4-x^5)/(1-3x^2-x^4-x^6))` -/
def P16450552360675948890.Spec : Prop :=
  ∀ n, P16450552360675948890.a n = A075536 n

end A075536

/-! ## A075536.P8593801966756376013

`3*a(n-2)+a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7, a(4)=4, a(5)=21`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075536

/-- `3*a(n-2)+a(n-4)+a(n-6)` -/
def P8593801966756376013.Spec : Prop :=
  ∀ n, (P8593801966756376013.a n : ℤ) = A075536 n

theorem P8593801966756376013.correct : P8593801966756376013.Spec := by
  intro n
  simp only [A075536]

end A075536

/-! ## A075536.P15710203775383587779

`A274761(n)-(A075676(n)+A000073(n))`
-/

namespace A075536.P15710203775383587779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274761 n - (A075676 n + A000073 n)

end

end A075536.P15710203775383587779

namespace A075536

/-- `A274761(n)-(A075676(n)+A000073(n))` -/
def P15710203775383587779.Spec : Prop :=
  ∀ n, P15710203775383587779.a n = A075536 n

end A075536

/-! ## A075536.P17131704675660220758

`A000073(n+1)+A001644(n)-A075676(n)`
-/

namespace A075536.P17131704675660220758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A001644 n - A075676 n)

end

end A075536.P17131704675660220758

namespace A075536

/-- `A000073(n+1)+A001644(n)-A075676(n)` -/
def P17131704675660220758.Spec : Prop :=
  ∀ n, P17131704675660220758.a n = A075536 n

end A075536

/-! ## A075536.P2337249259386064438

`round(A073717(n)/A075676(n))`
-/

namespace A075536.P2337249259386064438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A073717 n : ℚ) / (A075676 n : ℚ))

end

end A075536.P2337249259386064438

namespace A075536

/-- `round(A073717(n)/A075676(n))` -/
def P2337249259386064438.Spec : Prop :=
  ∀ n, P2337249259386064438.a n = A075536 n

end A075536

/-! ## A075536.P1655390081108230552

`round(A000073(2*n+1)/A075676(n))`
-/

namespace A075536.P1655390081108230552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000073 (2 * n + 1) : ℚ) / (A075676 n : ℚ))

end

end A075536.P1655390081108230552

namespace A075536

/-- `round(A000073(2*n+1)/A075676(n))` -/
def P1655390081108230552.Spec : Prop :=
  ∀ n, P1655390081108230552.a n = A075536 n

end A075536

/-! ## A075536.P16073828255694353164

`(A073717(n)-A057597(n))/A075676(n)`
-/

namespace A075536.P16073828255694353164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073717 n - A057597 n : ℚ) / (A075676 n : ℚ)

end

end A075536.P16073828255694353164

namespace A075536

/-- `(A073717(n)-A057597(n))/A075676(n)` -/
def P16073828255694353164.Spec : Prop :=
  ∀ n, P16073828255694353164.a n = (A075536 n : ℚ)

end A075536

/-!
# A075537: a(1)=1, a(2)=2, then use "merge and minus": a(n)=merge(a(n-2),a(n-1))-a(n-2)-a(n-1).

The programs for A075537, there is no canonical definition to state claims against.
-/

/-! ## A075537.P13355485166094260638

`(A010100(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A075537.P13355485166094260638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A010100 (n - 1) - 1) * a (n - 2)

end

end A075537.P13355485166094260638

/-! ## A075537.P10442459982013830291

`(A061601(a(n-1))+a(n-1))*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A075537.P10442459982013830291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A061601 (a (n - 1)).toNat + a (n - 1)) * a (n - 2)

end

end A075537.P10442459982013830291

/-!
# A075540: Integers that are the average of three successive primes.

The programs for A075540, there is no canonical definition to state claims against.
-/

/-! ## A075540.P117483165015987401

`∪[A006562(n+1), A345363(n+1)]`
-/

namespace A075540.P117483165015987401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075540.P117483165015987401

/-! ## A075540.P1689046195610418970

`A034961(A075541(n+1))/3`
-/

namespace A075540.P1689046195610418970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034961 (A075541 (n + 1)).toNat : ℚ) / 3

end

end A075540.P1689046195610418970

/-! ## A075540.P18042612461618326117

`A298073(n+1)+1`
-/

namespace A075540.P18042612461618326117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298073 (n + 1) + 1

end

end A075540.P18042612461618326117

/-! ## A075540.P3240327666999315862

`or(1, A298073(A028242(2*n)))`
-/

namespace A075540.P3240327666999315862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A298073 (A028242 (2 * n)).toNat)

end

end A075540.P3240327666999315862

/-! ## A075540.P9068761160434207029

`A141310(A298073(n+1))`
-/

namespace A075540.P9068761160434207029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A298073 (n + 1)).toNat

end

end A075540.P9068761160434207029

/-! ## A075540.P6956578389696847912

`A004442(A298073(n+1))`
-/

namespace A075540.P6956578389696847912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A298073 (n + 1)).toNat

end

end A075540.P6956578389696847912

/-! ## A075540.P11568696588142314959

`A034961(∑{d}[A054643(n+1), A049084(#)])/3`
-/

namespace A075540.P11568696588142314959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034961 (∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d).toNat : ℚ) / 3

end

end A075540.P11568696588142314959

/-! ## A075540.P15188063945288361036

`record[A002412(A034961(n+1))%A034961(n+1)]`
-/

namespace A075540.P15188063945288361036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002412 (A034961 (n + 1)).toNat) (A034961 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075540.P15188063945288361036

/-!
# A075541: Numbers k such that prime(k) + prime(k+1) + prime(k+2) is a multiple of 3.

The programs for A075541, the canonical program `A075541.P5486897583937567191` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075541 has offset 1).

The definition of A075541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1395 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075541.P5486897583937567191

`A000720(A054643(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A075541

/-- `A000720(A054643(n+1))` -/
def P5486897583937567191.Spec : Prop :=
  ∀ n, P5486897583937567191.a n = A075541 (n + 1)

theorem P5486897583937567191.correct : P5486897583937567191.Spec := by
  intro n
  simp only [A075541, Nat.add_sub_cancel]

end A075541

/-! ## A075541.P2246853756040656347

`A061395(2*A054643(n+1))`
-/

namespace A075541.P2246853756040656347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A054643 (n + 1)).toNat

end

end A075541.P2246853756040656347

namespace A075541

/-- `A061395(2*A054643(n+1))` -/
def P2246853756040656347.Spec : Prop :=
  ∀ n, P2246853756040656347.a n = A075541 (n + 1)

end A075541

/-! ## A075541.P13121738315899136346

`A344616(lcm(2, A054643(n+1))/2)`
-/

namespace A075541.P13121738315899136346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (SequenceMachineLib.roundAway ((Int.lcm 2 (A054643 (n + 1)) : ℚ) / 2)).toNat

end

end A075541.P13121738315899136346

namespace A075541

/-- `A344616(lcm(2, A054643(n+1))/2)` -/
def P13121738315899136346.Spec : Prop :=
  ∀ n, P13121738315899136346.a n = A075541 (n + 1)

end A075541

/-! ## A075541.P6868108472407073045

`A344616(A054643(n+1))%A038678(n+1)`
-/

namespace A075541.P6868108472407073045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344616 (A054643 (n + 1)).toNat) (A038678 (n + 1))

end

end A075541.P6868108472407073045

namespace A075541

/-- `A344616(A054643(n+1))%A038678(n+1)` -/
def P6868108472407073045.Spec : Prop :=
  ∀ n, P6868108472407073045.a n = A075541 (n + 1)

end A075541

/-! ## A075541.P9987263177253038328

`A344616(A054643(n+1)%A339676(n+1))`
-/

namespace A075541.P9987263177253038328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (Int.tmod (A054643 (n + 1)) (A339676 (n + 1))).toNat

end

end A075541.P9987263177253038328

namespace A075541

/-- `A344616(A054643(n+1)%A339676(n+1))` -/
def P9987263177253038328.Spec : Prop :=
  ∀ n, P9987263177253038328.a n = A075541 (n + 1)

end A075541

/-! ## A075541.P7346007112400942741

`A297113(A054643(n+1)*A141044(n))`
-/

namespace A075541.P7346007112400942741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A054643 (n + 1) * A141044 n).toNat

end

end A075541.P7346007112400942741

namespace A075541

/-- `A297113(A054643(n+1)*A141044(n))` -/
def P7346007112400942741.Spec : Prop :=
  ∀ n, P7346007112400942741.a n = A075541 (n + 1)

end A075541

/-! ## A075541.P1896159133554414919

`A297113(C(A054643(n+1), A141044(n)))`
-/

namespace A075541.P1896159133554414919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (Nat.choose (A054643 (n + 1)).toNat (A141044 n).toNat)

end

end A075541.P1896159133554414919

namespace A075541

/-- `A297113(C(A054643(n+1), A141044(n)))` -/
def P1896159133554414919.Spec : Prop :=
  ∀ n, P1896159133554414919.a n = A075541 (n + 1)

end A075541

/-! ## A075541.P13129650239061927598

`A297113(A054643(n+1)%A003825(n+1))`
-/

namespace A075541.P13129650239061927598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (Int.tmod (A054643 (n + 1)) (A003825 (n + 1))).toNat

end

end A075541.P13129650239061927598

namespace A075541

/-- `A297113(A054643(n+1)%A003825(n+1))` -/
def P13129650239061927598.Spec : Prop :=
  ∀ n, P13129650239061927598.a n = A075541 (n + 1)

end A075541

/-! ## A075541.P3467845407215932529

`A204892(A054643(n+1)-2)`
-/

namespace A075541.P3467845407215932529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A054643 (n + 1) - 2).toNat

end

end A075541.P3467845407215932529

namespace A075541

/-- `A204892(A054643(n+1)-2)` -/
def P3467845407215932529.Spec : Prop :=
  ∀ n, P3467845407215932529.a n = A075541 (n + 1)

end A075541

/-! ## A075541.P2661312485816226792

`∑{d}[A054643(n+1), A049084(#)]`
-/

namespace A075541.P2661312485816226792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A075541.P2661312485816226792

namespace A075541

/-- `∑{d}[A054643(n+1), A049084(#)]` -/
def P2661312485816226792.Spec : Prop :=
  ∀ n, P2661312485816226792.a n = A075541 (n + 1)

end A075541

/-!
# A075543: a(n) = a(n-1) + digit sum(n + 2) with a(0) = 2.

The programs for A075543, the canonical program `A075543.P9842709257504523465` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075543 has offset 0).

The definition of A075543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075543.P9842709257504523465

`∑[∑{digits}[2+n, #]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075543

/-- `∑[∑{digits}[2+n, #]]` -/
def P9842709257504523465.Spec : Prop :=
  ∀ n, (P9842709257504523465.a n : ℤ) = A075543 n

theorem P9842709257504523465.correct : P9842709257504523465.Spec := by
  intro n
  simp only [A075543]

end A075543

/-! ## A075543.P6937872098753646247

`∑[log(∏{digits}[2+n, exp(#)])]`
-/

namespace A075543.P6937872098753646247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075543.P6937872098753646247

namespace A075543

/-- `∑[log(∏{digits}[2+n, exp(#)])]` -/
def P6937872098753646247.Spec : Prop :=
  ∀ n, P6937872098753646247.a n = (A075543 n : ℝ)

end A075543

/-! ## A075543.P14345968972581966066

`∑[log2(∏{digits}[n+2, 2^#])]`
-/

namespace A075543.P14345968972581966066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075543.P14345968972581966066

namespace A075543

/-- `∑[log2(∏{digits}[n+2, 2^#])]` -/
def P14345968972581966066.Spec : Prop :=
  ∀ n, P14345968972581966066.a n = (A075543 n : ℝ)

end A075543

/-! ## A075543.P11135519156005571082

`∑[val(∏{digits}[n+2, 2^#], 2)]`
-/

namespace A075543.P11135519156005571082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075543.P11135519156005571082

namespace A075543

/-- `∑[val(∏{digits}[n+2, 2^#], 2)]` -/
def P11135519156005571082.Spec : Prop :=
  ∀ n, (P11135519156005571082.a n : ℤ) = A075543 n

end A075543

/-! ## A075543.P5001170726219787091

`∑{digits}[n+2, #]+a(n-1)` with `a(0)=2`
-/

namespace A075543.P5001170726219787091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A075543.P5001170726219787091

namespace A075543

/-- `∑{digits}[n+2, #]+a(n-1)` -/
def P5001170726219787091.Spec : Prop :=
  ∀ n, (P5001170726219787091.a n : ℤ) = A075543 n

end A075543

/-! ## A075543.P10208137373394400618

`A037123(n+2)-1`
-/

namespace A075543.P10208137373394400618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (n + 2) - 1

end

end A075543.P10208137373394400618

namespace A075543

/-- `A037123(n+2)-1` -/
def P10208137373394400618.Spec : Prop :=
  ∀ n, P10208137373394400618.a n = A075543 n

end A075543

/-! ## A075543.P3043051813652818141

`∑[A160931(n+1)-(n+1)]`
-/

namespace A075543.P3043051813652818141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160931 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075543.P3043051813652818141

namespace A075543

/-- `∑[A160931(n+1)-(n+1)]` -/
def P3043051813652818141.Spec : Prop :=
  ∀ n, P3043051813652818141.a n = A075543 n

theorem P3043051813652818141.correct : P3043051813652818141.Spec := by
  intro n
  simp only [A075543, Nat.add_sub_cancel, A075543.P3043051813652818141.f1, A075543.P3043051813652818141.a, A075543.P9842709257504523465.f2, A075543.P9842709257504523465.f1, A075543.P9842709257504523465.a, A160931, A160931.P9174493204487952196.f1, A160931.P9174493204487952196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075543

/-! ## A075543.P5070510199438372808

`∑[n+1-A160949(n+1)]`
-/

namespace A075543.P5070510199438372808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A160949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075543.P5070510199438372808

namespace A075543

/-- `∑[n+1-A160949(n+1)]` -/
def P5070510199438372808.Spec : Prop :=
  ∀ n, P5070510199438372808.a n = A075543 n

end A075543

/-! ## A075543.P15802729527488966723

`∑[A160938(n+1)/(n+1)]`
-/

namespace A075543.P15802729527488966723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160938 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075543.P15802729527488966723

namespace A075543

/-- `∑[A160938(n+1)/(n+1)]` -/
def P15802729527488966723.Spec : Prop :=
  ∀ n, P15802729527488966723.a n = (A075543 n : ℚ)

end A075543

/-! ## A075543.P16129560964189272558

`∑[A007953(n+2)]`
-/

namespace A075543.P16129560964189272558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075543.P16129560964189272558

namespace A075543

/-- `∑[A007953(n+2)]` -/
def P16129560964189272558.Spec : Prop :=
  ∀ n, P16129560964189272558.a n = A075543 n

end A075543

/-! ## A075543.P13339277334538229816

`∑[sqrt(A118881(n+2))]`
-/

namespace A075543.P13339277334538229816
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075543.P13339277334538229816

namespace A075543

/-- `∑[sqrt(A118881(n+2))]` -/
def P13339277334538229816.Spec : Prop :=
  ∀ n, P13339277334538229816.a n = (A075543 n : ℝ)

end A075543

/-! ## A075543.P2594938701735548445

`∑[log2(A329562(n+2))]`
-/

namespace A075543.P2594938701735548445
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075543.P2594938701735548445

namespace A075543

/-- `∑[log2(A329562(n+2))]` -/
def P2594938701735548445.Spec : Prop :=
  ∀ n, P2594938701735548445.a n = (A075543 n : ℝ)

end A075543

/-! ## A075543.P4730863162073415484

`A054632(A058183(n+2))-1`
-/

namespace A075543.P4730863162073415484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (A058183 (n + 2)).toNat - 1

end

end A075543.P4730863162073415484

namespace A075543

/-- `A054632(A058183(n+2))-1` -/
def P4730863162073415484.Spec : Prop :=
  ∀ n, P4730863162073415484.a n = A075543 n

end A075543

/-!
# A075544: Primes which are the sum of the digital root of the first n primes for some n.

The programs for A075544, the canonical program `A075544.P11404657353925885647` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075544 has offset 1).

The definition of A075544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075544.P11404657353925885647

`p?[∑[A038194(n+1)]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075544

/-- `p?[∑[A038194(n+1)]]` -/
def P11404657353925885647.Spec : Prop :=
  ∀ n, P11404657353925885647.a n = A075544 (n + 1)

theorem P11404657353925885647.correct : P11404657353925885647.Spec := by
  intro n
  simp only [A075544, Nat.add_sub_cancel]

end A075544

/-! ## A075544.P6305680711071661579

`p?[∑[dr(A000040(n+1))]]`
-/

namespace A075544.P6305680711071661579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P6305680711071661579

namespace A075544

/-- `p?[∑[dr(A000040(n+1))]]` -/
def P6305680711071661579.Spec : Prop :=
  ∀ n, (P6305680711071661579.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P4364338146729663346

`p?[∑[dr(A007605(n+1))]]`
-/

namespace A075544.P4364338146729663346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007605 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P4364338146729663346

namespace A075544

/-- `p?[∑[dr(A007605(n+1))]]` -/
def P4364338146729663346.Spec : Prop :=
  ∀ n, (P4364338146729663346.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P8935236290779052816

`p?[∑[dr(A028906(n+1))]]`
-/

namespace A075544.P8935236290779052816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028906 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P8935236290779052816

namespace A075544

/-- `p?[∑[dr(A028906(n+1))]]` -/
def P8935236290779052816.Spec : Prop :=
  ∀ n, (P8935236290779052816.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P16277675181851102778

`p?[∑[dr(A006093(n+1)+1)]]`
-/

namespace A075544.P16277675181851102778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006093 (n + 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P16277675181851102778

namespace A075544

/-- `p?[∑[dr(A006093(n+1)+1)]]` -/
def P16277675181851102778.Spec : Prop :=
  ∀ n, (P16277675181851102778.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P1759737479424488806

`p?[∑[dr(1-A008864(n+1))]]`
-/

namespace A075544.P1759737479424488806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A008864 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P1759737479424488806

namespace A075544

/-- `p?[∑[dr(1-A008864(n+1))]]` -/
def P1759737479424488806.Spec : Prop :=
  ∀ n, (P1759737479424488806.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P14351194413209957502

`p?[∑[dr(A040976(n+1)+2)]]`
-/

namespace A075544.P14351194413209957502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040976 (n + 1) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P14351194413209957502

namespace A075544

/-- `p?[∑[dr(A040976(n+1)+2)]]` -/
def P14351194413209957502.Spec : Prop :=
  ∀ n, (P14351194413209957502.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P12423150828164710179

`p?[∑[dr(A014689(n+1)+1+n)]]`
-/

namespace A075544.P12423150828164710179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014689 (n + 1) + 1 + (n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P12423150828164710179

namespace A075544

/-- `p?[∑[dr(A014689(n+1)+1+n)]]` -/
def P12423150828164710179.Spec : Prop :=
  ∀ n, (P12423150828164710179.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P8977403334398092270

`record[A006530(∑[dr(A000040(n+1))])]`
-/

namespace A075544.P8977403334398092270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075544.P8977403334398092270

namespace A075544

/-- `record[A006530(∑[dr(A000040(n+1))])]` -/
def P8977403334398092270.Spec : Prop :=
  ∀ n, P8977403334398092270.a n = A075544 (n + 1)

end A075544

/-! ## A075544.P14537199448661470230

`record[A020639(∑[dr(A000040(n+1))])]`
-/

namespace A075544.P14537199448661470230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075544.P14537199448661470230

namespace A075544

/-- `record[A020639(∑[dr(A000040(n+1))])]` -/
def P14537199448661470230.Spec : Prop :=
  ∀ n, P14537199448661470230.a n = A075544 (n + 1)

end A075544

/-! ## A075544.P4732520749832602220

`p?[∑[dr(record[A006530(n+2)])]]`
-/

namespace A075544.P4732520749832602220
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P4732520749832602220

namespace A075544

/-- `p?[∑[dr(record[A006530(n+2)])]]` -/
def P4732520749832602220.Spec : Prop :=
  ∀ n, (P4732520749832602220.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P13956504104674369461

`p?[∑[dr(record[A020639(n+2)])]]`
-/

namespace A075544.P13956504104674369461
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P13956504104674369461

namespace A075544

/-- `p?[∑[dr(record[A020639(n+2)])]]` -/
def P13956504104674369461.Spec : Prop :=
  ∀ n, (P13956504104674369461.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P2902237509033325223

`p?[∑[record[A006530(2*(n+1))]%9]]`
-/

namespace A075544.P2902237509033325223
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)) 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075544.P2902237509033325223

namespace A075544

/-- `p?[∑[record[A006530(2*(n+1))]%9]]` -/
def P2902237509033325223.Spec : Prop :=
  ∀ n, P2902237509033325223.a n = A075544 (n + 1)

end A075544

/-! ## A075544.P17342002156007934581

`p?[∑[(lt[A000005(n+2), 3]+2)%9]]`
-/

namespace A075544.P17342002156007934581
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 2) % 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P17342002156007934581

namespace A075544

/-- `p?[∑[(lt[A000005(n+2), 3]+2)%9]]` -/
def P17342002156007934581.Spec : Prop :=
  ∀ n, (P17342002156007934581.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P15094001622268740382

`p?[∑[(lt[n, A000010(n+2)]+2)%9]]`
-/

namespace A075544.P15094001622268740382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 2) % 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P15094001622268740382

namespace A075544

/-- `p?[∑[(lt[n, A000010(n+2)]+2)%9]]` -/
def P15094001622268740382.Spec : Prop :=
  ∀ n, (P15094001622268740382.a n : ℤ) = A075544 (n + 1)

end A075544

/-! ## A075544.P11530311834411732451

`record[A014963(∑[dr(A000040(n+1))])]`
-/

namespace A075544.P11530311834411732451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075544.P11530311834411732451

namespace A075544

/-- `record[A014963(∑[dr(A000040(n+1))])]` -/
def P11530311834411732451.Spec : Prop :=
  ∀ n, P11530311834411732451.a n = A075544 (n + 1)

end A075544

/-! ## A075544.P4225770923560788001

`p?[∑[dr(record[A014963(n+2)])]]`
-/

namespace A075544.P4225770923560788001
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A075544.P4225770923560788001

namespace A075544

/-- `p?[∑[dr(record[A014963(n+2)])]]` -/
def P4225770923560788001.Spec : Prop :=
  ∀ n, (P4225770923560788001.a n : ℤ) = A075544 (n + 1)

end A075544

/-!
# A075546: Perfect powers n such that (n-9)/2 is prime.

The programs for A075546, there is no canonical definition to state claims against.
-/

/-! ## A075546.P14378464815054719237

`A016839(A285352(n+1)%A307334(n))`
-/

namespace A075546.P14378464815054719237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 (Int.tmod (A285352 (n + 1)) (A307334 n)).toNat

end

end A075546.P14378464815054719237

/-! ## A075546.P15115616593320018663

`A016755(A024897(n+1)^A060775(2*n+3))`
-/

namespace A075546.P15115616593320018663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (SequenceMachineLib.roundAway ((A024897 (n + 1) : ℚ) ^ (A060775 (2 * n + 3) : ℤ))).toNat

end

end A075546.P15115616593320018663

/-!
# A075551: Primes generated in A074311.

The programs for A075551, there is no canonical definition to state claims against.
-/

/-! ## A075551.P4078493191045882232

`record[A151800(A088145(n+1))]`
-/

namespace A075551.P4078493191045882232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A088145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075551.P4078493191045882232

/-! ## A075551.P569574823639216336

`record[A007918(A088145(n+1)+1)]`
-/

namespace A075551.P569574823639216336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A088145 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075551.P569574823639216336

/-! ## A075551.P5562729775447064094

`p?[(n+2)*A210826(A049513(n))]`
-/

namespace A075551.P5562729775447064094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A210826 (A049513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075551.P5562729775447064094

/-! ## A075551.P5629939562387614870

`record[A000010(n+1)*A283683(A305161(n)+1)]+1`
-/

namespace A075551.P5629939562387614870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A283683 (A305161 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A075551.P5629939562387614870

/-! ## A075551.P6355049531831470116

`record[A002322(n+1)*A283683(A305161(n)+1)]+1`
-/

namespace A075551.P6355049531831470116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) * A283683 (A305161 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A075551.P6355049531831470116

/-!
# A075552: Primes generated in A073628.

The programs for A075552, there is no canonical definition to state claims against.
-/

/-! ## A075552.P13379490455446175458

`∩[A075551(n+1), A296352(n+1)]`
-/

namespace A075552.P13379490455446175458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075552.P13379490455446175458

/-! ## A075552.P15337631066832249903

`∩[A075551(n+1), A075821(n+1)]`
-/

namespace A075552.P15337631066832249903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075552.P15337631066832249903

/-! ## A075552.P3532139193998768408

`∩[A075551(n+1), A092460(n+1)]`
-/

namespace A075552.P3532139193998768408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075552.P3532139193998768408

/-! ## A075552.P5489314929276178032

`∩[A075551(n+1), A275481(n+1)]`
-/

namespace A075552.P5489314929276178032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075552.P5489314929276178032

/-! ## A075552.P10590030772407029151

`A000040(A196162(∑[n+1]))`
-/

namespace A075552.P10590030772407029151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A196162 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A075552.P10590030772407029151

/-!
# A075553: Numerators in the Maclaurin series for arctan(1+x).

The programs for A075553, the canonical program `A075553.P1697496914360159627` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075553 has offset 0).

The definition of A075553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075553.P1697496914360159627

`ogf((x-x^2+x^3)/(1+x^4))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075553

/-- `ogf((x-x^2+x^3)/(1+x^4))` -/
def P1697496914360159627.Spec : Prop :=
  ∀ n, P1697496914360159627.a n = A075553 n

theorem P1697496914360159627.correct : P1697496914360159627.Spec := by
  intro n
  simp only [A075553]

end A075553

/-!
# A075554: Denominators in the Maclaurin series for arctan(1+x).

The programs for A075554, the canonical program `A075554.P13325017565573494726` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075554 has offset 1).

The definition of A075554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075554.P13325017565573494726

`ogf((2+4x+12x^2+x^3+22x^4+12x^5+4x^6-8x^7-24x^8-16x^9-16x^10+16x^11)/(1-9x^4+24x^8-16x^12))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075554

/-- `ogf((2+4x+12x^2+x^3+22x^4+12x^5+4x^6-8x^7-24x^8-16x^9-16x^10+16x^11)/(1-9x^4+24x^8-16x^12))` -/
def P13325017565573494726.Spec : Prop :=
  ∀ n, P13325017565573494726.a n = A075554 (n + 1)

theorem P13325017565573494726.correct : P13325017565573494726.Spec := by
  intro n
  simp only [A075554, Nat.add_sub_cancel]

end A075554

/-! ## A075554.P6088504495439601663

`A004277(lcm(n+1, A084102(n)))`
-/

namespace A075554.P6088504495439601663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm (n + 1 : ℤ) (A084102 n))

end

end A075554.P6088504495439601663

namespace A075554

/-- `A004277(lcm(n+1, A084102(n)))` -/
def P6088504495439601663.Spec : Prop :=
  ∀ n, P6088504495439601663.a n = A075554 (n + 1)

end A075554

/-! ## A075554.P4684971860904710088

`A004277(lcm(A084102(n), A348553(n)))`
-/

namespace A075554.P4684971860904710088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm (A084102 n) (A348553 n))

end

end A075554.P4684971860904710088

namespace A075554

/-- `A004277(lcm(A084102(n), A348553(n)))` -/
def P4684971860904710088.Spec : Prop :=
  ∀ n, P4684971860904710088.a n = A075554 (n + 1)

end A075554

/-! ## A075554.P10697688997096731926

`A004277(lcm(A000027(n+1), A099087(n)))`
-/

namespace A075554.P10697688997096731926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm (A000027 (n + 1)) (A099087 n))

end

end A075554.P10697688997096731926

namespace A075554

/-- `A004277(lcm(A000027(n+1), A099087(n)))` -/
def P10697688997096731926.Spec : Prop :=
  ∀ n, P10697688997096731926.a n = A075554 (n + 1)

end A075554

/-! ## A075554.P3025954459765375687

`A028310(lcm(A009116(n+3), A028310(n+1)))`
-/

namespace A075554.P3025954459765375687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm (A009116 (n + 3)) (A028310 (n + 1)))

end

end A075554.P3025954459765375687

namespace A075554

/-- `A028310(lcm(A009116(n+3), A028310(n+1)))` -/
def P3025954459765375687.Spec : Prop :=
  ∀ n, P3025954459765375687.a n = A075554 (n + 1)

end A075554

/-!
# A075559: Smallest multiple of n not equal to n ending in (digits of) n.

The programs for A075559, the canonical program `A075559.P16905746750259773074` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075559 has offset 1).

The definition of A075559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075559.P11269324909038394538

`(n+1)*(A078267(n+1)+1)`
-/

namespace A075559.P11269324909038394538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A078267 (n + 1) + 1)

end

end A075559.P11269324909038394538

namespace A075559

/-- `(n+1)*(A078267(n+1)+1)` -/
def P11269324909038394538.Spec : Prop :=
  ∀ n, P11269324909038394538.a n = A075559 (n + 1)

end A075559

/-! ## A075559.P11637737930461492388

`(n+1)*A020725(A078267(n+1))`
-/

namespace A075559.P11637737930461492388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020725 (A078267 (n + 1)).toNat

end

end A075559.P11637737930461492388

namespace A075559

/-- `(n+1)*A020725(A078267(n+1))` -/
def P11637737930461492388.Spec : Prop :=
  ∀ n, P11637737930461492388.a n = A075559 (n + 1)

end A075559

/-! ## A075559.P16905746750259773074

`lcm(n+1, A020338(n+1)-A127421(n+1))+n+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A075559

/-- `lcm(n+1, A020338(n+1)-A127421(n+1))+n+1` -/
def P16905746750259773074.Spec : Prop :=
  ∀ n, (P16905746750259773074.a n : ℤ) = A075559 (n + 1)

theorem P16905746750259773074.correct : P16905746750259773074.Spec := by
  intro n
  simp only [A075559, Nat.add_sub_cancel]

end A075559

/-! ## A075559.P17960252153763673161

`(n+1)*(A078268(n+1)+A068823(n+1)/(n+1)+1)`
-/

namespace A075559.P17960252153763673161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A078268 (n + 1) : ℚ) + (A068823 (n + 1) : ℚ) / (n + 1 : ℚ) + 1)

end

end A075559.P17960252153763673161

namespace A075559

/-- `(n+1)*(A078268(n+1)+A068823(n+1)/(n+1)+1)` -/
def P17960252153763673161.Spec : Prop :=
  ∀ n, P17960252153763673161.a n = (A075559 (n + 1) : ℚ)

end A075559

/-! ## A075559.P15496678404797529060

`(n+1)*A122098(n+1)`
-/

namespace A075559.P15496678404797529060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122098 (n + 1)

end

end A075559.P15496678404797529060

namespace A075559

/-- `(n+1)*A122098(n+1)` -/
def P15496678404797529060.Spec : Prop :=
  ∀ n, P15496678404797529060.a n = A075559 (n + 1)

end A075559

/-! ## A075559.P18368082734585434206

`A084855(A078268(n+1)+∑[n])`
-/

namespace A075559.P18368082734585434206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A078268 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A075559.P18368082734585434206

namespace A075559

/-- `A084855(A078268(n+1)+∑[n])` -/
def P18368082734585434206.Spec : Prop :=
  ∀ n, P18368082734585434206.a n = A075559 (n + 1)

end A075559

/-! ## A075559.P1635244960078188984

`(n+1)*(A226219(A237416(n+1))+A000007(A131063(n)))`
-/

namespace A075559.P1635244960078188984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A226219 (A237416 (n + 1)).toNat + A000007 (A131063 n).toNat)

end

end A075559.P1635244960078188984

namespace A075559

/-- `(n+1)*(A226219(A237416(n+1))+A000007(A131063(n)))` -/
def P1635244960078188984.Spec : Prop :=
  ∀ n, P1635244960078188984.a n = A075559 (n + 1)

end A075559

/-! ## A075559.P15382195249430109798

`(n+1)*A054977(A308269(n+1))*A226219(A237416(n+1))`
-/

namespace A075559.P15382195249430109798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A054977 (A308269 (n + 1)).toNat * A226219 (A237416 (n + 1)).toNat)

end

end A075559.P15382195249430109798

namespace A075559

/-- `(n+1)*A054977(A308269(n+1))*A226219(A237416(n+1))` -/
def P15382195249430109798.Spec : Prop :=
  ∀ n, P15382195249430109798.a n = A075559 (n + 1)

end A075559

/-! ## A075559.P17474482441302182529

`(n+1)*abs(A122188(n+1)*A226219(A237416(n+1)))`
-/

namespace A075559.P17474482441302182529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A122188 (n + 1) * A226219 (A237416 (n + 1)).toNat|

end

end A075559.P17474482441302182529

namespace A075559

/-- `(n+1)*abs(A122188(n+1)*A226219(A237416(n+1)))` -/
def P17474482441302182529.Spec : Prop :=
  ∀ n, P17474482441302182529.a n = A075559 (n + 1)

end A075559

/-! ## A075559.P16739364703736882603

`(n+1)*A226219(A044332(n+1))`
-/

namespace A075559.P16739364703736882603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A226219 (A044332 (n + 1)).toNat

end

end A075559.P16739364703736882603

namespace A075559

/-- `(n+1)*A226219(A044332(n+1))` -/
def P16739364703736882603.Spec : Prop :=
  ∀ n, P16739364703736882603.a n = A075559 (n + 1)

end A075559

/-!
# A075560: a(1) = 1, a(n) is the smallest number greater than the previous term that cannot be obtained as the sum of products of any group of earlier terms.

The programs for A075560, there is no canonical definition to state claims against.
-/

/-! ## A075560.P8502644955560555207

`record[Δ[A140692(A051038(n+1))]]`
-/

namespace A075560.P8502644955560555207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140692 (A051038 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075560.P8502644955560555207

/-! ## A075560.P17742359448961056136

`record[Δ[A252755(A334267(n+1))]]`
-/

namespace A075560.P17742359448961056136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A334267 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075560.P17742359448961056136

/-! ## A075560.P10266834670817309997

`∑[or(A028586(n), A350271(n+1))]`
-/

namespace A075560.P10266834670817309997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028586 n) (A350271 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075560.P10266834670817309997

/-! ## A075560.P17263815915934491186

`A316355(A005802(n))+A000225(n)`
-/

namespace A075560.P17263815915934491186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A005802 n).toNat + A000225 n

end

end A075560.P17263815915934491186

/-!
# A075561: Domination number for kings' graph K(n).

The programs for A075561, the canonical program `A075561.P4236678217860464271` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075561 has offset 1).

The definition of A075561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075561.P4236678217860464271

`floor((n+3)/3)²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075561

/-- `floor((n+3)/3)²` -/
def P4236678217860464271.Spec : Prop :=
  ∀ n, P4236678217860464271.a n = A075561 (n + 1)

theorem P4236678217860464271.correct : P4236678217860464271.Spec := by
  intro n
  simp only [A075561, Nat.add_sub_cancel]

end A075561

/-! ## A075561.P10866474476348075018

`ogf((1+x^3)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A075561.P10866474476348075018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A075561.P10866474476348075018

namespace A075561

/-- `ogf((1+x^3)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P10866474476348075018.Spec : Prop :=
  ∀ n, P10866474476348075018.a n = A075561 (n + 1)

end A075561

/-! ## A075561.P12813058254649006606

`∑[char[lcm(3, n)]]²`
-/

namespace A075561.P12813058254649006606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075561.P12813058254649006606

namespace A075561

/-- `∑[char[lcm(3, n)]]²` -/
def P12813058254649006606.Spec : Prop :=
  ∀ n, (P12813058254649006606.a n : ℤ) = A075561 (n + 1)

end A075561

/-! ## A075561.P17220858381722499351

`and(∑[char[3*n]]², -1)`
-/

namespace A075561.P17220858381722499351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (-1)

end

end A075561.P17220858381722499351

namespace A075561

/-- `and(∑[char[3*n]]², -1)` -/
def P17220858381722499351.Spec : Prop :=
  ∀ n, P17220858381722499351.a n = A075561 (n + 1)

end A075561

/-! ## A075561.P929930608264715226

`∑[1-n²%3]^2`
-/

namespace A075561.P929930608264715226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075561.P929930608264715226

namespace A075561

/-- `∑[1-n²%3]^2` -/
def P929930608264715226.Spec : Prop :=
  ∀ n, P929930608264715226.a n = A075561 (n + 1)

end A075561

/-! ## A075561.P5523922291898681868

`∑[∑[n+1]%3]^2`
-/

namespace A075561.P5523922291898681868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075561.P5523922291898681868

namespace A075561

/-- `∑[∑[n+1]%3]^2` -/
def P5523922291898681868.Spec : Prop :=
  ∀ n, (P5523922291898681868.a n : ℤ) = A075561 (n + 1)

end A075561

/-! ## A075561.P10678102169355554444

`ceil((n+1)/3)^ceil(atan(n))`
-/

namespace A075561.P10678102169355554444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n + 1 : ℚ) / 3⌉ : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A075561.P10678102169355554444

namespace A075561

/-- `ceil((n+1)/3)^ceil(atan(n))` -/
def P10678102169355554444.Spec : Prop :=
  ∀ n, P10678102169355554444.a n = (A075561 (n + 1) : ℚ)

end A075561

/-! ## A075561.P852680580113854346

`∑[a(n-3)²]^2` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A075561.P852680580113854346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075561.P852680580113854346

namespace A075561

/-- `∑[a(n-3)²]^2` -/
def P852680580113854346.Spec : Prop :=
  ∀ n, (P852680580113854346.a n : ℤ) = A075561 (n + 1)

end A075561

/-! ## A075561.P14704386390179086889

`∑[floor(a(n-3))]^2` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A075561.P14704386390179086889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075561.P14704386390179086889

namespace A075561

/-- `∑[floor(a(n-3))]^2` -/
def P14704386390179086889.Spec : Prop :=
  ∀ n, (P14704386390179086889.a n : ℤ) = A075561 (n + 1)

end A075561

/-! ## A075561.P3233645393196009460

`xor(2, round((n+2)/3)²+2)`
-/

namespace A075561.P3233645393196009460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / 3) ^ 2 + 2)

end

end A075561.P3233645393196009460

namespace A075561

/-- `xor(2, round((n+2)/3)²+2)` -/
def P3233645393196009460.Spec : Prop :=
  ∀ n, P3233645393196009460.a n = A075561 (n + 1)

end A075561

/-! ## A075561.P6765730213181825813

`floor(∑[a(n-3)²]²)` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A075561.P6765730213181825813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075561.P6765730213181825813

namespace A075561

/-- `floor(∑[a(n-3)²]²)` -/
def P6765730213181825813.Spec : Prop :=
  ∀ n, (P6765730213181825813.a n : ℤ) = A075561 (n + 1)

end A075561

/-! ## A075561.P17656654117397096189

`ceil(∑[a(n-3)²]²)` with `a(0)=1, a(1)=0, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A075561.P17656654117397096189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075561.P17656654117397096189

namespace A075561

/-- `ceil(∑[a(n-3)²]²)` -/
def P17656654117397096189.Spec : Prop :=
  ∀ n, (P17656654117397096189.a n : ℤ) = A075561 (n + 1)

end A075561

/-! ## A075561.P10906576351378802811

`round(∑[a(n-3)²]²)` with `a(0)=1, a(1)=0, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A075561.P10906576351378802811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075561.P10906576351378802811

namespace A075561

/-- `round(∑[a(n-3)²]²)` -/
def P10906576351378802811.Spec : Prop :=
  ∀ n, (P10906576351378802811.a n : ℤ) = A075561 (n + 1)

end A075561

/-! ## A075561.P5718227013172022877

`ceil((n+1)/3)^(2%(n+1))`
-/

namespace A075561.P5718227013172022877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 3⌉ ^ (2 % (n + 1))

end

end A075561.P5718227013172022877

namespace A075561

/-- `ceil((n+1)/3)^(2%(n+1))` -/
def P5718227013172022877.Spec : Prop :=
  ∀ n, P5718227013172022877.a n = A075561 (n + 1)

end A075561

/-! ## A075561.P10603030445260018331

`ceil((n+1)/3)^gcd(2, 2*n)`
-/

namespace A075561.P10603030445260018331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 3⌉ ^ Nat.gcd 2 (2 * n)

end

end A075561.P10603030445260018331

namespace A075561

/-- `ceil((n+1)/3)^gcd(2, 2*n)` -/
def P10603030445260018331.Spec : Prop :=
  ∀ n, P10603030445260018331.a n = A075561 (n + 1)

end A075561

/-! ## A075561.P4097507658041626759

`floor(Δ[a(n-3)+n]²)` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A075561.P4097507658041626759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A075561.P4097507658041626759

namespace A075561

/-- `floor(Δ[a(n-3)+n]²)` -/
def P4097507658041626759.Spec : Prop :=
  ∀ n, P4097507658041626759.a n = A075561 (n + 1)

end A075561

/-! ## A075561.P17351928933753855091

`∑[∑[(n+1)²]%(2*n+3)]`
-/

namespace A075561.P17351928933753855091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075561.P17351928933753855091

namespace A075561

/-- `∑[∑[(n+1)²]%(2*n+3)]` -/
def P17351928933753855091.Spec : Prop :=
  ∀ n, (P17351928933753855091.a n : ℤ) = A075561 (n + 1)

end A075561

/-! ## A075561.P15838682059424913165

`∑[n+1-floor((n+1)/gcd(3, n))]`
-/

namespace A075561.P15838682059424913165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊(n + 1 : ℚ) / (Nat.gcd 3 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075561.P15838682059424913165

namespace A075561

/-- `∑[n+1-floor((n+1)/gcd(3, n))]` -/
def P15838682059424913165.Spec : Prop :=
  ∀ n, P15838682059424913165.a n = A075561 (n + 1)

end A075561

/-! ## A075561.P5905803844537761607

`∑[a(a(n-1))-a(n-2)]²/4` with `a(0)=2, a(1)=0`
-/

namespace A075561.P5905803844537761607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (f1 (n - 1)).toNat - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A075561.P5905803844537761607

namespace A075561

/-- `∑[a(a(n-1))-a(n-2)]²/4` -/
def P5905803844537761607.Spec : Prop :=
  ∀ n, P5905803844537761607.a n = (A075561 (n + 1) : ℚ)

end A075561

/-! ## A075561.P1256534792173672964

`A000290(A008620(n))`
-/

namespace A075561.P1256534792173672964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A008620 n).toNat

end

end A075561.P1256534792173672964

namespace A075561

/-- `A000290(A008620(n))` -/
def P1256534792173672964.Spec : Prop :=
  ∀ n, P1256534792173672964.a n = A075561 (n + 1)

end A075561

/-!
# A075565: Numbers n such that sopf(n) = sopf(n-1) + sopf(n-2), where sopf(x) = sum of the distinct prime factors of x.

The programs for A075565, there is no canonical definition to state claims against.
-/

/-! ## A075565.P4406478562411587893

`A076525(1+n)+1`
-/

namespace A075565.P4406478562411587893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076525 (1 + n) + 1

end

end A075565.P4406478562411587893

/-! ## A075565.P244536735884498575

`A004482(A076525(n+1))`
-/

namespace A075565.P244536735884498575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A076525 (n + 1)).toNat

end

end A075565.P244536735884498575

/-!
# A075568: Rearrangement of noncomposite numbers such that every partial sum is composite.

The programs for A075568, there is no canonical definition to state claims against.
-/

/-! ## A075568.P4099650025122142874

`∏{d}[Δ[A123055(A028310(n))], #]`
-/

namespace A075568.P4099650025122142874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123055 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A075568.P4099650025122142874

/-! ## A075568.P11278855941933801847

`A000007(n)+Δ[A123055(A028310(n))]`
-/

namespace A075568.P11278855941933801847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123055 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A075568.P11278855941933801847

/-! ## A075568.P2144662882879534091

`Δ[A123055(A028310(n))+A040000(n)]`
-/

namespace A075568.P2144662882879534091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123055 (A028310 n).toNat + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075568.P2144662882879534091

/-! ## A075568.P4981556689214676215

`Δ[A123055(A028310(n))+A057427(n)]`
-/

namespace A075568.P4981556689214676215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123055 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075568.P4981556689214676215

/-! ## A075568.P11145765465224899349

`Δ[A123055(A028310(n))-A054977(n)]`
-/

namespace A075568.P11145765465224899349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123055 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075568.P11145765465224899349

/-!
# A075569: a(1)=1, then smallest number >= the previous term such that every partial sum is a prime.

The programs for A075569, there is no canonical definition to state claims against.
-/

/-! ## A075569.P4409345074372843658

`Δ[A007918(2*a(n-1)-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A075569.P4409345074372843658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A007918 (2 * f1 (n - 1) - f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075569.P4409345074372843658

/-!
# A075570: Lexicographically earliest sequence of distinct composite numbers such that a(k) + a(k+1) is prime for all k.

The programs for A075570, there is no canonical definition to state claims against.
-/

/-! ## A075570.P13181338136374360509

`A308289(n+2)`
-/

namespace A075570.P13181338136374360509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308289 (n + 2)

end

end A075570.P13181338136374360509

/-!
# A075574: a(1) = 1, then the smallest number (obviously even) greater than the previous term such that every partial sum is prime.

The programs for A075574, there is no canonical definition to state claims against.
-/

/-! ## A075574.P9664529622849059311

`Δ[record[A083743(n+1)%A000124(n)]]`
-/

namespace A075574.P9664529622849059311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083743 (n + 1)) (A000124 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075574.P9664529622849059311

/-! ## A075574.P12123172843257845452

`Δ[record[A083743(n+1)-n]]`
-/

namespace A075574.P12123172843257845452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083743 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075574.P12123172843257845452

/-! ## A075574.P8313852468931392143

`Δ[A151800(2*a(n-1)-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A075574.P8313852468931392143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A151800 (2 * f1 (n - 1) - f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075574.P8313852468931392143

/-! ## A075574.P16713608173186316327

`record[and(A236177(n+1), A248218(n+1))]`
-/

namespace A075574.P16713608173186316327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A236177 (n + 1)) (A248218 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075574.P16713608173186316327

/-! ## A075574.P14514128357356376309

`∑[∏{e}[A020077(n)+A000326(n), #+1]]`
-/

namespace A075574.P14514128357356376309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020077 n + A000326 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075574.P14514128357356376309

/-!
# A075576: Smaller of two consecutive squares with a prime sum.

The programs for A075576, the canonical program `A075576.P10983007023077827622` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075576 has offset 1).

The definition of A075576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075576.P10983007023077827622

`A027861(1+n)²`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A075576

/-- `A027861(1+n)²` -/
def P10983007023077827622.Spec : Prop :=
  ∀ n, P10983007023077827622.a n = A075576 (n + 1)

theorem P10983007023077827622.correct : P10983007023077827622.Spec := by
  intro n
  simp only [A075576, Nat.add_sub_cancel]

end A075576

/-! ## A075576.P14325183014076308622

`A027861(n+1)^2`
-/

namespace A075576.P14325183014076308622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1) ^ 2

end

end A075576.P14325183014076308622

namespace A075576

/-- `A027861(n+1)^2` -/
def P14325183014076308622.Spec : Prop :=
  ∀ n, P14325183014076308622.a n = A075576 (n + 1)

theorem P14325183014076308622.correct : P14325183014076308622.Spec := by
  intro n
  simp only [A075576, Nat.add_sub_cancel, A075576.P14325183014076308622.a, A075576.P10983007023077827622.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A075576

/-! ## A075576.P11282898566278486316

`floor(A002731(n+1)/2)²`
-/

namespace A075576.P11282898566278486316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002731 (n + 1) : ℚ) / 2⌋ ^ 2

end

end A075576.P11282898566278486316

namespace A075576

/-- `floor(A002731(n+1)/2)²` -/
def P11282898566278486316.Spec : Prop :=
  ∀ n, P11282898566278486316.a n = A075576 (n + 1)

end A075576

/-! ## A075576.P2723221506537445358

`(A027862(n+1)-A002731(n+1))/2`
-/

namespace A075576.P2723221506537445358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027862 (n + 1) - A002731 (n + 1) : ℚ) / 2

end

end A075576.P2723221506537445358

namespace A075576

/-- `(A027862(n+1)-A002731(n+1))/2` -/
def P2723221506537445358.Spec : Prop :=
  ∀ n, P2723221506537445358.a n = (A075576 (n + 1) : ℚ)

end A075576

/-! ## A075576.P17482221448344803432

`row(A129307(n+1))^2`
-/

namespace A075576.P17482221448344803432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A129307 (n + 1)).toNat ^ 2

end

end A075576.P17482221448344803432

namespace A075576

/-- `row(A129307(n+1))^2` -/
def P17482221448344803432.Spec : Prop :=
  ∀ n, (P17482221448344803432.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P13422371340568315139

`2*A129307(n+1)-A027861(n+1)`
-/

namespace A075576.P13422371340568315139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129307 (n + 1) - A027861 (n + 1)

end

end A075576.P13422371340568315139

namespace A075576

/-- `2*A129307(n+1)-A027861(n+1)` -/
def P13422371340568315139.Spec : Prop :=
  ∀ n, P13422371340568315139.a n = A075576 (n + 1)

end A075576

/-! ## A075576.P11669193311818662543

`eq[2, A160651(n)]²`
-/

namespace A075576.P11669193311818662543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A075576.P11669193311818662543

namespace A075576

/-- `eq[2, A160651(n)]²` -/
def P11669193311818662543.Spec : Prop :=
  ∀ n, (P11669193311818662543.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P16110381960057813535

`eq[2, A278244(n)]²`
-/

namespace A075576.P16110381960057813535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A075576.P16110381960057813535

namespace A075576

/-- `eq[2, A278244(n)]²` -/
def P16110381960057813535.Spec : Prop :=
  ∀ n, (P16110381960057813535.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P8733959297138827925

`eq[4, A028949(n+2)]²`
-/

namespace A075576.P8733959297138827925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A075576.P8733959297138827925

namespace A075576

/-- `eq[4, A028949(n+2)]²` -/
def P8733959297138827925.Spec : Prop :=
  ∀ n, (P8733959297138827925.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P9184748015998177199

`A008794(A002731(n+1)-1)`
-/

namespace A075576.P9184748015998177199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A002731 (n + 1) - 1).toNat

end

end A075576.P9184748015998177199

namespace A075576

/-- `A008794(A002731(n+1)-1)` -/
def P9184748015998177199.Spec : Prop :=
  ∀ n, P9184748015998177199.a n = A075576 (n + 1)

end A075576

/-! ## A075576.P16789136711126194138

`A025480(A002731(n+1)-1)²`
-/

namespace A075576.P16789136711126194138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A002731 (n + 1) - 1).toNat ^ 2

end

end A075576.P16789136711126194138

namespace A075576

/-- `A025480(A002731(n+1)-1)²` -/
def P16789136711126194138.Spec : Prop :=
  ∀ n, P16789136711126194138.a n = A075576 (n + 1)

end A075576

/-! ## A075576.P6194063394316920774

`eq[1, A147809(2*n+1)]²`
-/

namespace A075576.P6194063394316920774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A075576.P6194063394316920774

namespace A075576

/-- `eq[1, A147809(2*n+1)]²` -/
def P6194063394316920774.Spec : Prop :=
  ∀ n, (P6194063394316920774.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P7718959176383890665

`eq[1, A261609(2*n+1)]²`
-/

namespace A075576.P7718959176383890665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A075576.P7718959176383890665

namespace A075576

/-- `eq[1, A261609(2*n+1)]²` -/
def P7718959176383890665.Spec : Prop :=
  ∀ n, (P7718959176383890665.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P9059121473862192697

`eq[1, A375391(2*n+1)]²`
-/

namespace A075576.P9059121473862192697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375391 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A075576.P9059121473862192697

namespace A075576

/-- `eq[1, A375391(2*n+1)]²` -/
def P9059121473862192697.Spec : Prop :=
  ∀ n, (P9059121473862192697.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P15302462090369605789

`eq[2, A147810(2*n+1)]²`
-/

namespace A075576.P15302462090369605789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A075576.P15302462090369605789

namespace A075576

/-- `eq[2, A147810(2*n+1)]²` -/
def P15302462090369605789.Spec : Prop :=
  ∀ n, (P15302462090369605789.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P12586697722452545004

`eq[2, A152823(2*n+1)]²`
-/

namespace A075576.P12586697722452545004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152823 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A075576.P12586697722452545004

namespace A075576

/-- `eq[2, A152823(2*n+1)]²` -/
def P12586697722452545004.Spec : Prop :=
  ∀ n, (P12586697722452545004.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P11314108237134093899

`eq[2, A193330(2*n+1)]²`
-/

namespace A075576.P11314108237134093899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A075576.P11314108237134093899

namespace A075576

/-- `eq[2, A193330(2*n+1)]²` -/
def P11314108237134093899.Spec : Prop :=
  ∀ n, (P11314108237134093899.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P9507571546812599034

`eq[2, A248516(2*n+1)]²`
-/

namespace A075576.P9507571546812599034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A075576.P9507571546812599034

namespace A075576

/-- `eq[2, A248516(2*n+1)]²` -/
def P9507571546812599034.Spec : Prop :=
  ∀ n, (P9507571546812599034.a n : ℤ) = A075576 (n + 1)

end A075576

/-! ## A075576.P17540004234635420980

`A008794(A002731(n+1))`
-/

namespace A075576.P17540004234635420980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A002731 (n + 1)).toNat

end

end A075576.P17540004234635420980

namespace A075576

/-- `A008794(A002731(n+1))` -/
def P17540004234635420980.Spec : Prop :=
  ∀ n, P17540004234635420980.a n = A075576 (n + 1)

end A075576

/-! ## A075576.P11737907675788095236

`A000463(eq[2, A248516(n+1)])`
-/

namespace A075576.P11737907675788095236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075576.P11737907675788095236

namespace A075576

/-- `A000463(eq[2, A248516(n+1)])` -/
def P11737907675788095236.Spec : Prop :=
  ∀ n, P11737907675788095236.a n = A075576 (n + 1)

end A075576

/-!
# A075577: k^2 is a term if k^2 + (k-1)^2 and k^2 + (k+1)^2 are primes.

The programs for A075577, there is no canonical definition to state claims against.
-/

/-! ## A075577.P7138270218791665776

`A109306(n+1)²`
-/

namespace A075577.P7138270218791665776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109306 (n + 1) ^ 2

end

end A075577.P7138270218791665776

/-! ## A075577.P14109889063586165270

`A109306(A000027(n+1))^2`
-/

namespace A075577.P14109889063586165270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109306 (A000027 (n + 1)).toNat ^ 2

end

end A075577.P14109889063586165270

/-! ## A075577.P13515808693554766231

`A109306(n+1)^A020639(2*(n+1))`
-/

namespace A075577.P13515808693554766231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A075577.P13515808693554766231

/-! ## A075577.P15221931834188399773

`A109306(A000027(n+1))*A109306(n+1)`
-/

namespace A075577.P15221931834188399773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109306 (A000027 (n + 1)).toNat * A109306 (n + 1)

end

end A075577.P15221931834188399773

/-! ## A075577.P9430101295346277053

`A109306(n+1)*A109306(A023443(n)+2)`
-/

namespace A075577.P9430101295346277053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109306 (n + 1) * A109306 (A023443 n + 2).toNat

end

end A075577.P9430101295346277053

/-! ## A075577.P3539163663309255597

`A109306(n+1)^(A000188(A007913(n+1))+1)`
-/

namespace A075577.P3539163663309255597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A000188 (A007913 (n + 1)).toNat + 1 : ℤ)

end

end A075577.P3539163663309255597

/-! ## A075577.P18079397915323086586

`A109306(n+1)%A027862(n+1)*A109306(n+1)`
-/

namespace A075577.P18079397915323086586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109306 (n + 1)) (A027862 (n + 1)) * A109306 (n + 1)

end

end A075577.P18079397915323086586

/-! ## A075577.P5825130493321062819

`A109306(n+1)^A000005(A045348(n+1))`
-/

namespace A075577.P5825130493321062819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A000005 (A045348 (n + 1)).toNat : ℤ)

end

end A075577.P5825130493321062819

/-! ## A075577.P8038194634727199203

`A109306(n+1)^A000005(A045350(n+1))`
-/

namespace A075577.P8038194634727199203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A000005 (A045350 (n + 1)).toNat : ℤ)

end

end A075577.P8038194634727199203

/-! ## A075577.P9672631615760282019

`A109306(n+1)^A000005(A045378(n+1))`
-/

namespace A075577.P9672631615760282019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A000005 (A045378 (n + 1)).toNat : ℤ)

end

end A075577.P9672631615760282019

/-! ## A075577.P14191679831924696593

`A109306(n+1)^A000005(A045341(n+1))`
-/

namespace A075577.P14191679831924696593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A000005 (A045341 (n + 1)).toNat : ℤ)

end

end A075577.P14191679831924696593

/-! ## A075577.P6806826132457760332

`A109306(n+1)^A000005(A045342(n+1))`
-/

namespace A075577.P6806826132457760332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A000005 (A045342 (n + 1)).toNat : ℤ)

end

end A075577.P6806826132457760332

/-! ## A075577.P12926525465859605205

`A109306(n+1)^A000005(A045351(n+1))`
-/

namespace A075577.P12926525465859605205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A000005 (A045351 (n + 1)).toNat : ℤ)

end

end A075577.P12926525465859605205

/-! ## A075577.P13355964878027345556

`A109306(n+1)^A000005(A045354(n+1))`
-/

namespace A075577.P13355964878027345556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A000005 (A045354 (n + 1)).toNat : ℤ)

end

end A075577.P13355964878027345556

/-! ## A075577.P10255524772623026245

`A109306(n+1)^A000005(A045333(n+1))`
-/

namespace A075577.P10255524772623026245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A000005 (A045333 (n + 1)).toNat : ℤ)

end

end A075577.P10255524772623026245

/-! ## A075577.P151466938447407129

`A109306(n+1)^A000005(A045343(n+1))`
-/

namespace A075577.P151466938447407129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A000005 (A045343 (n + 1)).toNat : ℤ)

end

end A075577.P151466938447407129

/-! ## A075577.P3375509126862883345

`(A238222(n+1)+1)²`
-/

namespace A075577.P3375509126862883345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238222 (n + 1) + 1) ^ 2

end

end A075577.P3375509126862883345

/-! ## A075577.P13265458777752956194

`(A238222(n+1)+1)^A001222(A006881(n+1))`
-/

namespace A075577.P13265458777752956194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238222 (n + 1) + 1 : ℚ) ^ (A001222 (A006881 (n + 1)).toNat : ℤ)

end

end A075577.P13265458777752956194

/-! ## A075577.P17525483046344896108

`A109306(n+1)^A089120(A017281(n))`
-/

namespace A075577.P17525483046344896108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109306 (n + 1) : ℚ) ^ (A089120 (A017281 n).toNat : ℤ)

end

end A075577.P17525483046344896108

/-! ## A075577.P6585769547143386047

`∩[A027861(n+1)+1, A027861(n+1)]²`
-/

namespace A075577.P6585769547143386047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A075577.P6585769547143386047

/-!
# A075578: Smaller of two successive 4th powers whose sum is a prime.

The programs for A075578, there is no canonical definition to state claims against.
-/

/-! ## A075578.P10365401692893707919

`A155211(n+1)^4`
-/

namespace A075578.P10365401692893707919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1) ^ 4

end

end A075578.P10365401692893707919

/-! ## A075578.P15794994283960388897

`A155211(C(n+1, n))²²`
-/

namespace A075578.P15794994283960388897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155211 (Nat.choose (n + 1) n) ^ 2) ^ 2

end

end A075578.P15794994283960388897

/-! ## A075578.P14229970631460569766

`A155211(-xor(n, -1))²²`
-/

namespace A075578.P14229970631460569766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155211 (-Int.xor (n : ℤ) (-1)).toNat ^ 2) ^ 2

end

end A075578.P14229970631460569766

/-! ## A075578.P7485341521866934683

`A155211(ϕ²-(ϕ-n))²²`
-/

namespace A075578.P7485341521866934683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155211 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat ^ 2) ^ 2

end

end A075578.P7485341521866934683

/-! ## A075578.P12187523408032050088

`A000583(A155211(n+1))`
-/

namespace A075578.P12187523408032050088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A155211 (n + 1)).toNat

end

end A075578.P12187523408032050088

/-! ## A075578.P6682789656388859653

`(eq[1, A256547(n+1)]+1)^4`
-/

namespace A075578.P6682789656388859653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 4

end

end A075578.P6682789656388859653

/-!
# A075580: Smallest prime p(k) such that the number of distinct prime divisors of all composite numbers between p(k) and p(k+1) is n.

The programs for A075580, there is no canonical definition to state claims against.
-/

/-! ## A075580.P14999883861004089863

`p?[∑[A334144(A008517(n+1))]]`
-/

namespace A075580.P14999883861004089863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334144 (A008517 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075580.P14999883861004089863

/-! ## A075580.P758952000487320075

`p?[record[A056813(A208814(n+1))]]`
-/

namespace A075580.P758952000487320075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A208814 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075580.P758952000487320075

/-! ## A075580.P2201225688519075545

`∩[A134266(n+1), A324935(n+1)]`
-/

namespace A075580.P2201225688519075545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075580.P2201225688519075545

/-! ## A075580.P12477162714607404606

`A056813(A000079(n)*A098352(n+1))`
-/

namespace A075580.P12477162714607404606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A000079 n * A098352 (n + 1)).toNat

end

end A075580.P12477162714607404606

/-! ## A075580.P2431478336997154340

`A056813(A098352(n+1)*A140134(n))`
-/

namespace A075580.P2431478336997154340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A098352 (n + 1) * A140134 n).toNat

end

end A075580.P2431478336997154340

/-!
# A075581: Let P(n,X) = Product_{i=1..2n+1} (X - 1/cos(Pi*k/(2n+1))); then P(n,X) is a polynomial with integer coefficients. Sequences gives maximum values of absolute values of coefficients of P(n,X).

The programs for A075581, there is no canonical definition to state claims against.
-/

/-! ## A075581.P10335048953265544515

`A257088(A000079(n)*A244061(n))`
-/

namespace A075581.P10335048953265544515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A000079 n * A244061 n).toNat

end

end A075581.P10335048953265544515

/-! ## A075581.P1025825398033225021

`A257088(A000079(n)*A034886(2^n))`
-/

namespace A075581.P1025825398033225021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A000079 n * A034886 (2 ^ n)).toNat

end

end A075581.P1025825398033225021

/-!
# A075583: Primes p such that the composite numbers between p and the next prime together contain exactly three distinct prime factors.

The programs for A075583, there is no canonical definition to state claims against.
-/

/-! ## A075583.P1345021990302985613

`A045319(eq[3, A052297(n+1)])`
-/

namespace A075583.P1345021990302985613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075583.P1345021990302985613

/-! ## A075583.P14830278829716665374

`A045344(eq[3, A052297(n+1)])`
-/

namespace A075583.P14830278829716665374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075583.P14830278829716665374

/-! ## A075583.P9842639356795128747

`A065091(eq[3, A052297(n+1)])`
-/

namespace A075583.P9842639356795128747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075583.P9842639356795128747

/-! ## A075583.P15754461753832002698

`A000040(eq[3, A052297(n+1)]+1)`
-/

namespace A075583.P15754461753832002698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075583.P15754461753832002698

/-! ## A075583.P2513375832044971616

`A008578(eq[3, A052297(n+1)]+2)`
-/

namespace A075583.P2513375832044971616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A075583.P2513375832044971616

/-!
# A075584: Primes p such that the number of distinct prime divisors of all composite numbers between p and the next prime is 4.

The programs for A075584, there is no canonical definition to state claims against.
-/

/-! ## A075584.P16272269347171363476

`A045344(eq[4, A052297(n+1)])`
-/

namespace A075584.P16272269347171363476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075584.P16272269347171363476

/-! ## A075584.P7067158138840755292

`A065091(eq[4, A052297(n+1)])`
-/

namespace A075584.P7067158138840755292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075584.P7067158138840755292

/-! ## A075584.P4668434489934551595

`A000040(eq[4, A052297(n+1)]+1)`
-/

namespace A075584.P4668434489934551595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075584.P4668434489934551595

/-! ## A075584.P9560504175827089205

`A006005(eq[4, A052297(n+1)]+1)`
-/

namespace A075584.P9560504175827089205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075584.P9560504175827089205

/-! ## A075584.P11364347031451235730

`A045319(eq[2, A052297(n+1)-2])`
-/

namespace A075584.P11364347031451235730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075584.P11364347031451235730

/-! ## A075584.P11788113396084265754

`A004139(eq[4, A052297(n+1)]-1)`
-/

namespace A075584.P11788113396084265754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A075584.P11788113396084265754

/-! ## A075584.P14639648467594333549

`A045319(eq[2, A052297(n+1)/2])`
-/

namespace A075584.P14639648467594333549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052297 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A075584.P14639648467594333549

/-!
# A075585: Primes p such that the number of distinct prime divisors of all composite numbers between p and the next prime is 5.

The programs for A075585, there is no canonical definition to state claims against.
-/

/-! ## A075585.P4004418560846730789

`A045319(eq[5, A052297(n+1)])`
-/

namespace A075585.P4004418560846730789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075585.P4004418560846730789

/-! ## A075585.P9264146543880633364

`A045344(eq[5, A052297(n+1)])`
-/

namespace A075585.P9264146543880633364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075585.P9264146543880633364

/-! ## A075585.P12154080037130448968

`A065091(eq[5, A052297(n+1)])`
-/

namespace A075585.P12154080037130448968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075585.P12154080037130448968

/-! ## A075585.P7953400675159349192

`A181901(eq[5, A052297(n+1)])`
-/

namespace A075585.P7953400675159349192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075585.P7953400675159349192

/-! ## A075585.P11894248714722060373

`A000040(eq[5, A052297(n+1)]+1)`
-/

namespace A075585.P11894248714722060373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075585.P11894248714722060373

/-!
# A075586: Primes p such that the number of distinct prime divisors of all composite numbers between p and the next prime is 6.

The programs for A075586, there is no canonical definition to state claims against.
-/

/-! ## A075586.P13350461396174307255

`A045319(eq[6, A052297(n+1)])`
-/

namespace A075586.P13350461396174307255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075586.P13350461396174307255

/-! ## A075586.P780809212385327146

`A045344(eq[6, A052297(n+1)])`
-/

namespace A075586.P780809212385327146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075586.P780809212385327146

/-! ## A075586.P5340106560672352762

`A065091(eq[6, A052297(n+1)])`
-/

namespace A075586.P5340106560672352762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075586.P5340106560672352762

/-! ## A075586.P15076142000751669089

`A000040(eq[6, A052297(n+1)]+1)`
-/

namespace A075586.P15076142000751669089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075586.P15076142000751669089

/-! ## A075586.P9049212092054463623

`A008578(eq[6, A052297(n+1)]+2)`
-/

namespace A075586.P9049212092054463623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A075586.P9049212092054463623

/-!
# A075587: Primes p such that the number of distinct prime divisors of all composite numbers between p and the next prime is 7.

The programs for A075587, there is no canonical definition to state claims against.
-/

/-! ## A075587.P10381152614664750427

`A045344(eq[7, A052297(n+1)])`
-/

namespace A075587.P10381152614664750427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075587.P10381152614664750427

/-! ## A075587.P15448168402831802106

`A065091(eq[7, A052297(n+1)])`
-/

namespace A075587.P15448168402831802106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075587.P15448168402831802106

/-! ## A075587.P12786298048278819699

`A000040(eq[7, A052297(n+1)]+1)`
-/

namespace A075587.P12786298048278819699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075587.P12786298048278819699

/-! ## A075587.P8071113301948549687

`A004139(eq[7, A052297(n+1)]-1)`
-/

namespace A075587.P8071113301948549687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A075587.P8071113301948549687

/-! ## A075587.P14147841216215495422

`A008578(eq[7, A052297(n+1)]+2)`
-/

namespace A075587.P14147841216215495422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A075587.P14147841216215495422

/-!
# A075588: Primes p such that the number of distinct prime divisors of all composite numbers between p and the next prime is 8.

The programs for A075588, there is no canonical definition to state claims against.
-/

/-! ## A075588.P3221410794958842413

`A045319(eq[8, A052297(n+1)])`
-/

namespace A075588.P3221410794958842413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075588.P3221410794958842413

/-! ## A075588.P10798843342602158741

`A045344(eq[8, A052297(n+1)])`
-/

namespace A075588.P10798843342602158741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075588.P10798843342602158741

/-! ## A075588.P8960372834013467009

`A065091(eq[8, A052297(n+1)])`
-/

namespace A075588.P8960372834013467009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075588.P8960372834013467009

/-! ## A075588.P12373047822994670422

`A181901(eq[8, A052297(n+1)])`
-/

namespace A075588.P12373047822994670422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075588.P12373047822994670422

/-! ## A075588.P1860320079080301056

`A000040(eq[8, A052297(n+1)]+1)`
-/

namespace A075588.P1860320079080301056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075588.P1860320079080301056

/-!
# A075589: Primes p such that the number of distinct prime divisors of all composite numbers between p and the next prime is 9.

The programs for A075589, there is no canonical definition to state claims against.
-/

/-! ## A075589.P10318927661416700318

`A045319(eq[9, A052297(n+1)])`
-/

namespace A075589.P10318927661416700318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075589.P10318927661416700318

/-! ## A075589.P16044825411276246354

`A045344(eq[9, A052297(n+1)])`
-/

namespace A075589.P16044825411276246354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075589.P16044825411276246354

/-! ## A075589.P16840385950067991622

`A065091(eq[9, A052297(n+1)])`
-/

namespace A075589.P16840385950067991622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075589.P16840385950067991622

/-! ## A075589.P14770998747976032422

`A000040(eq[9, A052297(n+1)]+1)`
-/

namespace A075589.P14770998747976032422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075589.P14770998747976032422

/-! ## A075589.P7081610853225326433

`A008578(eq[9, A052297(n+1)]+2)`
-/

namespace A075589.P7081610853225326433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A075589.P7081610853225326433

/-!
# A075590: Smallest number with n distinct prime divisors which is the average of a twin prime pair.

The programs for A075590, there is no canonical definition to state claims against.
-/

/-! ## A075590.P8458810872872116997

`lcm(A000010(A083772(n+1)), A011762(n))`
-/

namespace A075590.P8458810872872116997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (A083772 (n + 1)).toNat) (A011762 n)

end

end A075590.P8458810872872116997

/-! ## A075590.P6582163368636984062

`A000010(A087864(n+1))*A087888(n+4)`
-/

namespace A075590.P6582163368636984062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A087864 (n + 1)).toNat * A087888 (n + 4)

end

end A075590.P6582163368636984062

/-!
# A075591: Smallest squarefree number with n prime divisors which is the average of a twin prime pair.

The programs for A075591, there is no canonical definition to state claims against.
-/

/-! ## A075591.P10738421882011634572

`A144845(or(6, A103304(n+1)))`
-/

namespace A075591.P10738421882011634572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144845 (Int.lor 6 (A103304 (n + 1))).toNat

end

end A075591.P10738421882011634572

/-!
# A075592: Numbers n such that number of distinct prime divisors of n is a divisor of n.

The programs for A075592, the canonical program `A075592.P12591046907558416242` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075592 has offset 1).

The definition of A075592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075592.P12591046907558416242

`lt[(n+2)%A001221(n+2), 1]+2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075592

/-- `lt[(n+2)%A001221(n+2), 1]+2` -/
def P12591046907558416242.Spec : Prop :=
  ∀ n, (P12591046907558416242.a n : ℤ) = A075592 (n + 1)

theorem P12591046907558416242.correct : P12591046907558416242.Spec := by
  intro n
  simp only [A075592, Nat.add_sub_cancel]

end A075592

/-! ## A075592.P13670443981621917770

`eq[n+1, lcm(n+1, A001221(n+1))]+1`
-/

namespace A075592.P13670443981621917770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001221 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A075592.P13670443981621917770

namespace A075592

/-- `eq[n+1, lcm(n+1, A001221(n+1))]+1` -/
def P13670443981621917770.Spec : Prop :=
  ∀ n, (P13670443981621917770.a n : ℤ) = A075592 (n + 1)

end A075592

/-! ## A075592.P12092495315754636888

`eq[0, ∏{d}[n, A001221(n)-#]]`
-/

namespace A075592.P12092495315754636888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (A001221 n - (d : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075592.P12092495315754636888

namespace A075592

/-- `eq[0, ∏{d}[n, A001221(n)-#]]` -/
def P12092495315754636888.Spec : Prop :=
  ∀ n, (P12092495315754636888.a n : ℤ) = A075592 (n + 1)

end A075592

/-! ## A075592.P5930483132797007392

`eq[char[A185307(n+1)], A000007(n)]`
-/

namespace A075592.P5930483132797007392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185307 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A075592.P5930483132797007392

namespace A075592

/-- `eq[char[A185307(n+1)], A000007(n)]` -/
def P5930483132797007392.Spec : Prop :=
  ∀ n, (P5930483132797007392.a n : ℤ) = A075592 (n + 1)

end A075592

/-! ## A075592.P418558930510056907

`lt[A378367(n^(n%2)), n]`
-/

namespace A075592.P418558930510056907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378367 (n ^ (n % 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A075592.P418558930510056907

namespace A075592

/-- `lt[A378367(n^(n%2)), n]` -/
def P418558930510056907.Spec : Prop :=
  ∀ n, (P418558930510056907.a n : ℤ) = A075592 (n + 1)

end A075592

/-! ## A075592.P708524874428116805

`eq[A280710(A348739(n+1)), A353675(n+2)]+2`
-/

namespace A075592.P708524874428116805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A348739 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353675 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A075592.P708524874428116805

namespace A075592

/-- `eq[A280710(A348739(n+1)), A353675(n+2)]+2` -/
def P708524874428116805.Spec : Prop :=
  ∀ n, (P708524874428116805.a n : ℤ) = A075592 (n + 1)

end A075592

/-! ## A075592.P11095432897911858373

`lt[A033999(A007504(n)), A046145(n)]`
-/

namespace A075592.P11095432897911858373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A007504 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075592.P11095432897911858373

namespace A075592

/-- `lt[A033999(A007504(n)), A046145(n)]` -/
def P11095432897911858373.Spec : Prop :=
  ∀ n, (P11095432897911858373.a n : ℤ) = A075592 (n + 1)

end A075592

/-!
# A075595: Smallest prime that is obtained by placing digits on both sides of the n-th prime. Or smallest prime that encompasses the n-th prime.

The programs for A075595, there is no canonical definition to state claims against.
-/

/-! ## A075595.P35217219686167394

`A069691(A110295(n+1)/A011782(n+1))`
-/

namespace A075595.P35217219686167394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069691 (SequenceMachineLib.roundAway ((A110295 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ))).toNat

end

end A075595.P35217219686167394

/-! ## A075595.P17227386969185707126

`A062584(A069691(A000040(n+1)))`
-/

namespace A075595.P17227386969185707126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A069691 (A000040 (n + 1)).toNat).toNat

end

end A075595.P17227386969185707126

