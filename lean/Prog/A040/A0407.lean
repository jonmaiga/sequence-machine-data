import SequenceMachineLib.Basic
import Seq.B000.C007
import Seq.Opaque.C002

/-!
# A040702: Continued fraction for sqrt(730).

The programs for A040702, there is no canonical definition to state claims against.
-/

/-! ## A040702.P1614313546469685365

`3*A040072(n)`
-/

namespace A040702.P1614313546469685365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040072 n

end

end A040702.P1614313546469685365

/-!
# A040707: Continued fraction for sqrt(735).

The programs for A040707, the canonical program `A040707.P9787896029975799978` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040707 has offset 0).

The definition of A040707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040707.P9787896029975799978

`a(n-2)` with `a(0)=27, a(1)=9, a(2)=54`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040707

/-- `a(n-2)` -/
def P9787896029975799978.Spec : Prop :=
  ∀ n, (P9787896029975799978.a n : ℤ) = A040707 n

theorem P9787896029975799978.correct : P9787896029975799978.Spec := by
  intro n
  simp only [A040707]

end A040707

/-!
# A040726: Continued fraction for sqrt(754).

The programs for A040726, the canonical program `A040726.P599056237116543134` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040726 has offset 0).

The definition of A040726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040726.P599056237116543134

`a(n-9)` with `a(0)=27, a(1)=2, a(2)=5, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=5, a(8)=2, a(9)=54`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040726

/-- `a(n-9)` -/
def P599056237116543134.Spec : Prop :=
  ∀ n, (P599056237116543134.a n : ℤ) = A040726 n

theorem P599056237116543134.correct : P599056237116543134.Spec := by
  intro n
  simp only [A040726]

end A040726

/-!
# A040756: Continued fraction for sqrt(785).

The programs for A040756, there is no canonical definition to state claims against.
-/

/-! ## A040756.P6477963227710591997

`7*A040012(n)`
-/

namespace A040756.P6477963227710591997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A040012 n

end

end A040756.P6477963227710591997

/-!
# A040766: Continued fraction for sqrt(795).

The programs for A040766, the canonical program `A040766.P6164536257403532282` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040766 has offset 0).

The definition of A040766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040766.P6164536257403532282

`a(n-4)` with `a(0)=28, a(1)=5, a(2)=9, a(3)=5, a(4)=56`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040766

/-- `a(n-4)` -/
def P6164536257403532282.Spec : Prop :=
  ∀ n, (P6164536257403532282.a n : ℤ) = A040766 n

theorem P6164536257403532282.correct : P6164536257403532282.Spec := by
  intro n
  simp only [A040766]

end A040766

/-!
# A040769: Continued fraction for sqrt(798).

The programs for A040769, the canonical program `A040769.P1551329016444785163` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040769 has offset 0).

The definition of A040769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040769.P1551329016444785163

`a(n-2)` with `a(0)=28, a(1)=4, a(2)=56`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040769

/-- `a(n-2)` -/
def P1551329016444785163.Spec : Prop :=
  ∀ n, (P1551329016444785163.a n : ℤ) = A040769 n

theorem P1551329016444785163.correct : P1551329016444785163.Spec := by
  intro n
  simp only [A040769]

end A040769

/-!
# A040783: Continued fraction for sqrt(812).

The programs for A040783, the canonical program `A040783.P11089680977228908855` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040783 has offset 0).

The definition of A040783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040783.P11089680977228908855

`a(n-2)` with `a(0)=28, a(1)=2, a(2)=56`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040783

/-- `a(n-2)` -/
def P11089680977228908855.Spec : Prop :=
  ∀ n, (P11089680977228908855.a n : ℤ) = A040783 n

theorem P11089680977228908855.correct : P11089680977228908855.Spec := by
  intro n
  simp only [A040783]

end A040783

/-!
# A040799: Continued fraction for sqrt(828).

The programs for A040799, the canonical program `A040799.P4848548327283226473` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040799 has offset 0).

The definition of A040799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040799.P4848548327283226473

`a(n-6)` with `a(0)=28, a(1)=1, a(2)=3, a(3)=2, a(4)=3, a(5)=1, a(6)=56`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040799

/-- `a(n-6)` -/
def P4848548327283226473.Spec : Prop :=
  ∀ n, (P4848548327283226473.a n : ℤ) = A040799 n

theorem P4848548327283226473.correct : P4848548327283226473.Spec := by
  intro n
  simp only [A040799]

end A040799

