import SequenceMachineLib.Basic
import Seq.B000.C008

/-!
# A040600: Continued fraction for sqrt(626).

The programs for A040600, the canonical program `A040600.P9583547901614613736` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040600 has offset 0).

The definition of A040600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040600.P9583547901614613736

`ogf((25+25x)/(1-x))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A040600

/-- `ogf((25+25x)/(1-x))` -/
def P9583547901614613736.Spec : Prop :=
  ∀ n, P9583547901614613736.a n = A040600 n

theorem P9583547901614613736.correct : P9583547901614613736.Spec := by
  intro n
  simp only [A040600]

end A040600

/-!
# A040601: Continued fraction for sqrt(627).

The programs for A040601, the canonical program `A040601.P4222061474212669633` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040601 has offset 0).

The definition of A040601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040601.P4222061474212669633

`a(n-2)` with `a(0)=25, a(1)=25, a(2)=50`

The canonical program, it is in `Seq.B000.C008`.
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

The programs for A040603, the canonical program `A040603.P5282703412746088349` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040603 has offset 0).

The definition of A040603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040603.P5282703412746088349

`a(n-5)` with `a(0)=25, a(1)=12, a(2)=1, a(3)=1, a(4)=12, a(5)=50`

The canonical program, it is in `Seq.B000.C008`.
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

The programs for A040604, the canonical program `A040604.P11502824466574916210` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040604 has offset 0).

The definition of A040604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040604.P11502824466574916210

`ogf((25+10x+25x^2)/(1-x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A040604

/-- `ogf((25+10x+25x^2)/(1-x^2))` -/
def P11502824466574916210.Spec : Prop :=
  ∀ n, P11502824466574916210.a n = A040604 n

theorem P11502824466574916210.correct : P11502824466574916210.Spec := by
  intro n
  simp only [A040604]

end A040604

/-!
# A040609: Continued fraction for sqrt(635).

The programs for A040609, the canonical program `A040609.P13769478646691834063` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040609 has offset 0).

The definition of A040609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040609.P13769478646691834063

`a(n-2)` with `a(0)=25, a(1)=5, a(2)=50`

The canonical program, it is in `Seq.B000.C008`.
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

The programs for A040624, the canonical program `A040624.P10755281790934215631` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040624 has offset 0).

The definition of A040624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040624.P10755281790934215631

`a(n-2)` with `a(0)=25, a(1)=2, a(2)=50`

The canonical program, it is in `Seq.B000.C008`.
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
# A040634: Continued fraction for sqrt(660).

The programs for A040634, the canonical program `A040634.P7650856322427721983` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040634 has offset 0).

The definition of A040634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040634.P7650856322427721983

`ogf((25+x+2x^2+4x^3+2x^4+x^5+25x^6)/(1-x^6))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A040634

/-- `ogf((25+x+2x^2+4x^3+2x^4+x^5+25x^6)/(1-x^6))` -/
def P7650856322427721983.Spec : Prop :=
  ∀ n, P7650856322427721983.a n = A040634 n

theorem P7650856322427721983.correct : P7650856322427721983.Spec := by
  intro n
  simp only [A040634]

end A040634

/-!
# A040650: Continued fraction for sqrt(677).

The programs for A040650, the canonical program `A040650.P13454406619100747988` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040650 has offset 0).

The definition of A040650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040650.P13454406619100747988

`ogf((26+26x)/(1-x))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A040650

/-- `ogf((26+26x)/(1-x))` -/
def P13454406619100747988.Spec : Prop :=
  ∀ n, P13454406619100747988.a n = A040650 n

theorem P13454406619100747988.correct : P13454406619100747988.Spec := by
  intro n
  simp only [A040650]

end A040650

/-!
# A040653: Continued fraction for sqrt(680).

The programs for A040653, the canonical program `A040653.P15139044130667057716` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040653 has offset 0).

The definition of A040653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040653.P15139044130667057716

`a(n-2)` with `a(0)=26, a(1)=13, a(2)=52`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A040653

/-- `a(n-2)` -/
def P15139044130667057716.Spec : Prop :=
  ∀ n, (P15139044130667057716.a n : ℤ) = A040653 n

theorem P15139044130667057716.correct : P15139044130667057716.Spec := by
  intro n
  simp only [A040653]

end A040653

