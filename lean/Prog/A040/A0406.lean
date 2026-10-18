import SequenceMachineLib.Basic
import Seq.B000.C007
import Seq.Opaque.C002

/-!
# A040600: Continued fraction for sqrt(626).

The programs for A040600, there is no canonical definition to state claims against.
-/

/-! ## A040600.P16154760119989590061

`5*A040020(n)`
-/

namespace A040600.P16154760119989590061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A040020 n

end

end A040600.P16154760119989590061

/-!
# A040601: Continued fraction for sqrt(627).

The programs for A040601, the canonical program `A040601.P4222061474212669633` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040601 has offset 0).

The definition of A040601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040601.P4222061474212669633

`a(n-2)` with `a(0)=25, a(1)=25, a(2)=50`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040601

/-- `a(n-2)` -/
def P4222061474212669633.Spec : Prop :=
  ∀ n, (P4222061474212669633.a n : ℤ) = A040601 n

theorem P4222061474212669633.correct : P4222061474212669633.Spec := by
  intro n
  simp only [A040601]

end A040601

/-!
# A040603: Continued fraction for sqrt(629).

The programs for A040603, the canonical program `A040603.P5282703412746088349` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040603 has offset 0).

The definition of A040603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040603.P5282703412746088349

`a(n-5)` with `a(0)=25, a(1)=12, a(2)=1, a(3)=1, a(4)=12, a(5)=50`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040603

/-- `a(n-5)` -/
def P5282703412746088349.Spec : Prop :=
  ∀ n, (P5282703412746088349.a n : ℤ) = A040603 n

theorem P5282703412746088349.correct : P5282703412746088349.Spec := by
  intro n
  simp only [A040603]

end A040603

/-!
# A040604: Continued fraction for sqrt(630).

The programs for A040604, there is no canonical definition to state claims against.
-/

/-! ## A040604.P9308698792620235064

`5*A040024(n)`
-/

namespace A040604.P9308698792620235064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A040024 n

end

end A040604.P9308698792620235064

/-!
# A040606: Continued fraction for sqrt(632).

The programs for A040606, the canonical program `A040606.P31465410601111367` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040606 has offset 0).

The definition of A040606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040606.P31465410601111367

`a(n-4)` with `a(0)=25, a(1)=7, a(2)=6, a(3)=7, a(4)=50`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040606

/-- `a(n-4)` -/
def P31465410601111367.Spec : Prop :=
  ∀ n, (P31465410601111367.a n : ℤ) = A040606 n

theorem P31465410601111367.correct : P31465410601111367.Spec := by
  intro n
  simp only [A040606]

end A040606

/-!
# A040609: Continued fraction for sqrt(635).

The programs for A040609, the canonical program `A040609.P13769478646691834063` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040609 has offset 0).

The definition of A040609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040609.P13769478646691834063

`a(n-2)` with `a(0)=25, a(1)=5, a(2)=50`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040609

/-- `a(n-2)` -/
def P13769478646691834063.Spec : Prop :=
  ∀ n, (P13769478646691834063.a n : ℤ) = A040609 n

theorem P13769478646691834063.correct : P13769478646691834063.Spec := by
  intro n
  simp only [A040609]

end A040609

/-!
# A040624: Continued fraction for sqrt(650).

The programs for A040624, the canonical program `A040624.P10755281790934215631` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040624 has offset 0).

The definition of A040624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040624.P10755281790934215631

`a(n-2)` with `a(0)=25, a(1)=2, a(2)=50`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040624

/-- `a(n-2)` -/
def P10755281790934215631.Spec : Prop :=
  ∀ n, (P10755281790934215631.a n : ℤ) = A040624 n

theorem P10755281790934215631.correct : P10755281790934215631.Spec := by
  intro n
  simp only [A040624]

end A040624

/-!
# A040650: Continued fraction for sqrt(677).

The programs for A040650, there is no canonical definition to state claims against.
-/

/-! ## A040650.P15067322873903573734

`2*A040156(n)`
-/

namespace A040650.P15067322873903573734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040156 n

end

end A040650.P15067322873903573734

/-!
# A040651: Continued fraction for sqrt(678).

The programs for A040651, the canonical program `A040651.P4614921769320379869` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040651 has offset 0).

The definition of A040651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040651.P4614921769320379869

`a(n-2)` with `a(0)=26, a(1)=26, a(2)=52`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040651

/-- `a(n-2)` -/
def P4614921769320379869.Spec : Prop :=
  ∀ n, (P4614921769320379869.a n : ℤ) = A040651 n

theorem P4614921769320379869.correct : P4614921769320379869.Spec := by
  intro n
  simp only [A040651]

end A040651

/-!
# A040653: Continued fraction for sqrt(680).

The programs for A040653, the canonical program `A040653.P15139044130667057716` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040653 has offset 0).

The definition of A040653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040653.P15139044130667057716

`a(n-2)` with `a(0)=26, a(1)=13, a(2)=52`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040653

/-- `a(n-2)` -/
def P15139044130667057716.Spec : Prop :=
  ∀ n, (P15139044130667057716.a n : ℤ) = A040653 n

theorem P15139044130667057716.correct : P15139044130667057716.Spec := by
  intro n
  simp only [A040653]

end A040653

/-!
# A040662: Continued fraction for sqrt(689).

The programs for A040662, the canonical program `A040662.P15986725278356601871` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040662 has offset 0).

The definition of A040662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040662.P15986725278356601871

`a(n-2)` with `a(0)=26, a(1)=4, a(2)=52`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040662

/-- `a(n-2)` -/
def P15986725278356601871.Spec : Prop :=
  ∀ n, (P15986725278356601871.a n : ℤ) = A040662 n

theorem P15986725278356601871.correct : P15986725278356601871.Spec := by
  intro n
  simp only [A040662]

end A040662

