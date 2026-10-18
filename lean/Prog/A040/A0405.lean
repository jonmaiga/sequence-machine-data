import SequenceMachineLib.Basic
import Seq.B000.C007
import Seq.Opaque.C002

/-!
# A040505: Continued fraction for sqrt(528).

The programs for A040505, the canonical program `A040505.P12877200073874983724` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040505 has offset 0).

The definition of A040505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040505.P12877200073874983724

`a(n-2)` with `a(0)=22, a(1)=1, a(2)=44`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040505

/-- `a(n-2)` -/
def P12877200073874983724.Spec : Prop :=
  ∀ n, (P12877200073874983724.a n : ℤ) = A040505 n

theorem P12877200073874983724.correct : P12877200073874983724.Spec := by
  intro n
  simp only [A040505]

end A040505

/-!
# A040507: Continued fraction for sqrt(531).

The programs for A040507, the canonical program `A040507.P9699859985223759624` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040507 has offset 0).

The definition of A040507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040507.P9699859985223759624

`a(n-2)` with `a(0)=23, a(1)=23, a(2)=46`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040507

/-- `a(n-2)` -/
def P9699859985223759624.Spec : Prop :=
  ∀ n, (P9699859985223759624.a n : ℤ) = A040507 n

theorem P9699859985223759624.correct : P9699859985223759624.Spec := by
  intro n
  simp only [A040507]

end A040507

/-!
# A040527: Continued fraction for sqrt(551).

The programs for A040527, the canonical program `A040527.P15471420833029263265` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040527 has offset 0).

The definition of A040527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040527.P15471420833029263265

`a(n-6)` with `a(0)=23, a(1)=2, a(2)=8, a(3)=1, a(4)=8, a(5)=2, a(6)=46`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040527

/-- `a(n-6)` -/
def P15471420833029263265.Spec : Prop :=
  ∀ n, (P15471420833029263265.a n : ℤ) = A040527 n

theorem P15471420833029263265.correct : P15471420833029263265.Spec := by
  intro n
  simp only [A040527]

end A040527

/-!
# A040552: Continued fraction for sqrt(577).

The programs for A040552, there is no canonical definition to state claims against.
-/

/-! ## A040552.P17363950728151188592

`8*A040006(n)`
-/

namespace A040552.P17363950728151188592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A040006 n

end

end A040552.P17363950728151188592

/-!
# A040553: Continued fraction for sqrt(578).

The programs for A040553, the canonical program `A040553.P7168155481539720367` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040553 has offset 0).

The definition of A040553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040553.P7168155481539720367

`a(n-2)` with `a(0)=24, a(1)=24, a(2)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040553

/-- `a(n-2)` -/
def P7168155481539720367.Spec : Prop :=
  ∀ n, (P7168155481539720367.a n : ℤ) = A040553 n

theorem P7168155481539720367.correct : P7168155481539720367.Spec := by
  intro n
  simp only [A040553]

end A040553

/-!
# A040554: Continued fraction for sqrt(579).

The programs for A040554, the canonical program `A040554.P15392670329426581909` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040554 has offset 0).

The definition of A040554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040554.P15392670329426581909

`a(n-2)` with `a(0)=24, a(1)=16, a(2)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040554

/-- `a(n-2)` -/
def P15392670329426581909.Spec : Prop :=
  ∀ n, (P15392670329426581909.a n : ℤ) = A040554 n

theorem P15392670329426581909.correct : P15392670329426581909.Spec := by
  intro n
  simp only [A040554]

end A040554

/-!
# A040555: Continued fraction for sqrt(580).

The programs for A040555, the canonical program `A040555.P15204356864910839929` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040555 has offset 0).

The definition of A040555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040555.P15204356864910839929

`a(n-2)` with `a(0)=24, a(1)=12, a(2)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040555

/-- `a(n-2)` -/
def P15204356864910839929.Spec : Prop :=
  ∀ n, (P15204356864910839929.a n : ℤ) = A040555 n

theorem P15204356864910839929.correct : P15204356864910839929.Spec := by
  intro n
  simp only [A040555]

end A040555

/-!
# A040557: Continued fraction for sqrt(582).

The programs for A040557, the canonical program `A040557.P4678028743772636870` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040557 has offset 0).

The definition of A040557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040557.P4678028743772636870

`a(n-2)` with `a(0)=24, a(1)=8, a(2)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040557

/-- `a(n-2)` -/
def P4678028743772636870.Spec : Prop :=
  ∀ n, (P4678028743772636870.a n : ℤ) = A040557 n

theorem P4678028743772636870.correct : P4678028743772636870.Spec := by
  intro n
  simp only [A040557]

end A040557

/-!
# A040559: Continued fraction for sqrt(584).

The programs for A040559, the canonical program `A040559.P396591064103047119` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040559 has offset 0).

The definition of A040559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040559.P396591064103047119

`a(n-2)` with `a(0)=24, a(1)=6, a(2)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040559

/-- `a(n-2)` -/
def P396591064103047119.Spec : Prop :=
  ∀ n, (P396591064103047119.a n : ℤ) = A040559 n

theorem P396591064103047119.correct : P396591064103047119.Spec := by
  intro n
  simp only [A040559]

end A040559

/-!
# A040563: Continued fraction for sqrt(588).

The programs for A040563, the canonical program `A040563.P11950361092149395501` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040563 has offset 0).

The definition of A040563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040563.P11950361092149395501

`a(n-2)` with `a(0)=24, a(1)=4, a(2)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040563

/-- `a(n-2)` -/
def P11950361092149395501.Spec : Prop :=
  ∀ n, (P11950361092149395501.a n : ℤ) = A040563 n

theorem P11950361092149395501.correct : P11950361092149395501.Spec := by
  intro n
  simp only [A040563]

end A040563

/-!
# A040565: Continued fraction for sqrt(590).

The programs for A040565, the canonical program `A040565.P2629617294285342621` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040565 has offset 0).

The definition of A040565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040565.P2629617294285342621

`a(n-6)` with `a(0)=24, a(1)=3, a(2)=2, a(3)=4, a(4)=2, a(5)=3, a(6)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040565

/-- `a(n-6)` -/
def P2629617294285342621.Spec : Prop :=
  ∀ n, (P2629617294285342621.a n : ℤ) = A040565 n

theorem P2629617294285342621.correct : P2629617294285342621.Spec := by
  intro n
  simp only [A040565]

end A040565

/-!
# A040567: Continued fraction for sqrt(592).

The programs for A040567, the canonical program `A040567.P13533111184185649739` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040567 has offset 0).

The definition of A040567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040567.P13533111184185649739

`a(n-2)` with `a(0)=24, a(1)=3, a(2)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040567

/-- `a(n-2)` -/
def P13533111184185649739.Spec : Prop :=
  ∀ n, (P13533111184185649739.a n : ℤ) = A040567 n

theorem P13533111184185649739.correct : P13533111184185649739.Spec := by
  intro n
  simp only [A040567]

end A040567

