import SequenceMachineLib.Basic
import Seq.B000.C007
import Seq.Opaque.C002

/-!
# A040420: Continued fraction for sqrt(442).

The programs for A040420, there is no canonical definition to state claims against.
-/

/-! ## A040420.P10831516863192519864

`3*A040042(n)`
-/

namespace A040420.P10831516863192519864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040042 n

end

end A040420.P10831516863192519864

/-!
# A040422: Continued fraction for sqrt(444).

The programs for A040422, the canonical program `A040422.P9957773850957603883` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040422 has offset 0).

The definition of A040422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040422.P9957773850957603883

`a(n-2)` with `a(0)=21, a(1)=14, a(2)=42`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040422

/-- `a(n-2)` -/
def P9957773850957603883.Spec : Prop :=
  ∀ n, (P9957773850957603883.a n : ℤ) = A040422 n

theorem P9957773850957603883.correct : P9957773850957603883.Spec := by
  intro n
  simp only [A040422]

end A040422

/-!
# A040461: Continued fraction for sqrt(483).

The programs for A040461, the canonical program `A040461.P11332886954534404026` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040461 has offset 0).

The definition of A040461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040461.P11332886954534404026

`a(n-2)` with `a(0)=21, a(1)=1, a(2)=42`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040461

/-- `a(n-2)` -/
def P11332886954534404026.Spec : Prop :=
  ∀ n, (P11332886954534404026.a n : ℤ) = A040461 n

theorem P11332886954534404026.correct : P11332886954534404026.Spec := by
  intro n
  simp only [A040461]

end A040461

/-!
# A040462: Continued fraction for sqrt(485).

The programs for A040462, there is no canonical definition to state claims against.
-/

/-! ## A040462.P4120544988225873427

`2*A040110(n)`
-/

namespace A040462.P4120544988225873427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040110 n

end

end A040462.P4120544988225873427

/-!
# A040463: Continued fraction for sqrt(486).

The programs for A040463, the canonical program `A040463.P13616816130210762293` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040463 has offset 0).

The definition of A040463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040463.P13616816130210762293

`a(n-2)` with `a(0)=22, a(1)=22, a(2)=44`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040463

/-- `a(n-2)` -/
def P13616816130210762293.Spec : Prop :=
  ∀ n, (P13616816130210762293.a n : ℤ) = A040463 n

theorem P13616816130210762293.correct : P13616816130210762293.Spec := by
  intro n
  simp only [A040463]

end A040463

/-!
# A040465: Continued fraction for sqrt(488).

The programs for A040465, the canonical program `A040465.P11520776791871441638` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040465 has offset 0).

The definition of A040465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040465.P11520776791871441638

`a(n-2)` with `a(0)=22, a(1)=11, a(2)=44`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040465

/-- `a(n-2)` -/
def P11520776791871441638.Spec : Prop :=
  ∀ n, (P11520776791871441638.a n : ℤ) = A040465 n

theorem P11520776791871441638.correct : P11520776791871441638.Spec := by
  intro n
  simp only [A040465]

end A040465

/-!
# A040480: Continued fraction for sqrt(503).

The programs for A040480, the canonical program `A040480.P15502341373887760822` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040480 has offset 0).

The definition of A040480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040480.P15502341373887760822

`a(n-8)` with `a(0)=22, a(1)=2, a(2)=2, a(3)=1, a(4)=21, a(5)=1, a(6)=2, a(7)=2, a(8)=44`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040480

/-- `a(n-8)` -/
def P15502341373887760822.Spec : Prop :=
  ∀ n, (P15502341373887760822.a n : ℤ) = A040480 n

theorem P15502341373887760822.correct : P15502341373887760822.Spec := by
  intro n
  simp only [A040480]

end A040480

/-!
# A040484: Continued fraction for sqrt(507).

The programs for A040484, the canonical program `A040484.P9077195719069322114` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040484 has offset 0).

The definition of A040484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040484.P9077195719069322114

`a(n-6)` with `a(0)=22, a(1)=1, a(2)=1, a(3)=14, a(4)=1, a(5)=1, a(6)=44`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040484

/-- `a(n-6)` -/
def P9077195719069322114.Spec : Prop :=
  ∀ n, (P9077195719069322114.a n : ℤ) = A040484 n

theorem P9077195719069322114.correct : P9077195719069322114.Spec := by
  intro n
  simp only [A040484]

end A040484

