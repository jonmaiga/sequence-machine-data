import SequenceMachineLib.Basic
import Seq.B000.C007
import Seq.Opaque.C002

/-!
# A040306: Continued fraction for sqrt(325).

The programs for A040306, there is no canonical definition to state claims against.
-/

/-! ## A040306.P7287972562524531914

`6*A040006(n)`
-/

namespace A040306.P7287972562524531914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A040006 n

end

end A040306.P7287972562524531914

/-!
# A040308: Continued fraction for sqrt(327).

The programs for A040308, the canonical program `A040308.P7459999029361507840` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040308 has offset 0).

The definition of A040308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040308.P7459999029361507840

`a(n-2)` with `a(0)=18, a(1)=12, a(2)=36`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040308

/-- `a(n-2)` -/
def P7459999029361507840.Spec : Prop :=
  ∀ n, (P7459999029361507840.a n : ℤ) = A040308 n

theorem P7459999029361507840.correct : P7459999029361507840.Spec := by
  intro n
  simp only [A040308]

end A040308

/-!
# A040317: Continued fraction for sqrt(336).

The programs for A040317, the canonical program `A040317.P12919923740715466486` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040317 has offset 0).

The definition of A040317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040317.P12919923740715466486

`a(n-2)` with `a(0)=18, a(1)=3, a(2)=36`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040317

/-- `a(n-2)` -/
def P12919923740715466486.Spec : Prop :=
  ∀ n, (P12919923740715466486.a n : ℤ) = A040317 n

theorem P12919923740715466486.correct : P12919923740715466486.Spec := by
  intro n
  simp only [A040317]

end A040317

/-!
# A040341: Continued fraction for sqrt(360).

The programs for A040341, the canonical program `A040341.P204286412123160672` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040341 has offset 0).

The definition of A040341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040341.P204286412123160672

`a(n-2)` with `a(0)=18, a(1)=1, a(2)=36`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040341

/-- `a(n-2)` -/
def P204286412123160672.Spec : Prop :=
  ∀ n, (P204286412123160672.a n : ℤ) = A040341 n

theorem P204286412123160672.correct : P204286412123160672.Spec := by
  intro n
  simp only [A040341]

end A040341

/-!
# A040351: Continued fraction for sqrt(371).

The programs for A040351, the canonical program `A040351.P5914724553776994039` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040351 has offset 0).

The definition of A040351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040351.P5914724553776994039

`a(n-6)` with `a(0)=19, a(1)=3, a(2)=1, a(3)=4, a(4)=1, a(5)=3, a(6)=38`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040351

/-- `a(n-6)` -/
def P5914724553776994039.Spec : Prop :=
  ∀ n, (P5914724553776994039.a n : ℤ) = A040351 n

theorem P5914724553776994039.correct : P5914724553776994039.Spec := by
  intro n
  simp only [A040351]

end A040351

/-!
# A040380: Continued fraction for sqrt(401).

The programs for A040380, there is no canonical definition to state claims against.
-/

/-! ## A040380.P10390527970401024977

`5*A040012(n)`
-/

namespace A040380.P10390527970401024977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A040012 n

end

end A040380.P10390527970401024977

/-!
# A040381: Continued fraction for sqrt(402).

The programs for A040381, the canonical program `A040381.P1841401139086004428` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040381 has offset 0).

The definition of A040381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040381.P1841401139086004428

`a(n-2)` with `a(0)=20, a(1)=20, a(2)=40`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040381

/-- `a(n-2)` -/
def P1841401139086004428.Spec : Prop :=
  ∀ n, (P1841401139086004428.a n : ℤ) = A040381 n

theorem P1841401139086004428.correct : P1841401139086004428.Spec := by
  intro n
  simp only [A040381]

end A040381

/-!
# A040387: Continued fraction for sqrt(408).

The programs for A040387, the canonical program `A040387.P17366250078760701348` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040387 has offset 0).

The definition of A040387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040387.P17366250078760701348

`a(n-2)` with `a(0)=20, a(1)=5, a(2)=40`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040387

/-- `a(n-2)` -/
def P17366250078760701348.Spec : Prop :=
  ∀ n, (P17366250078760701348.a n : ℤ) = A040387 n

theorem P17366250078760701348.correct : P17366250078760701348.Spec := by
  intro n
  simp only [A040387]

end A040387

