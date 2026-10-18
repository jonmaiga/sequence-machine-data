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
# A040703: Continued fraction for sqrt(731).

The programs for A040703, the canonical program `A040703.P11036125544006059442` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040703 has offset 0).

The definition of A040703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040703.P11036125544006059442

`a(n-2)` with `a(0)=27, a(1)=27, a(2)=54`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040703

/-- `a(n-2)` -/
def P11036125544006059442.Spec : Prop :=
  ∀ n, (P11036125544006059442.a n : ℤ) = A040703 n

theorem P11036125544006059442.correct : P11036125544006059442.Spec := by
  intro n
  simp only [A040703]

end A040703

/-!
# A040704: Continued fraction for sqrt(732).

The programs for A040704, the canonical program `A040704.P9609015639479839724` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040704 has offset 0).

The definition of A040704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040704.P9609015639479839724

`a(n-2)` with `a(0)=27, a(1)=18, a(2)=54`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040704

/-- `a(n-2)` -/
def P9609015639479839724.Spec : Prop :=
  ∀ n, (P9609015639479839724.a n : ℤ) = A040704 n

theorem P9609015639479839724.correct : P9609015639479839724.Spec := by
  intro n
  simp only [A040704]

end A040704

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
# A040710: Continued fraction for sqrt(738).

The programs for A040710, the canonical program `A040710.P17640153232830825372` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040710 has offset 0).

The definition of A040710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040710.P17640153232830825372

`a(n-2)` with `a(0)=27, a(1)=6, a(2)=54`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040710

/-- `a(n-2)` -/
def P17640153232830825372.Spec : Prop :=
  ∀ n, (P17640153232830825372.a n : ℤ) = A040710 n

theorem P17640153232830825372.correct : P17640153232830825372.Spec := by
  intro n
  simp only [A040710]

end A040710

/-!
# A040719: Continued fraction for sqrt(747).

The programs for A040719, the canonical program `A040719.P5413674079484212349` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040719 has offset 0).

The definition of A040719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040719.P5413674079484212349

`a(n-2)` with `a(0)=27, a(1)=3, a(2)=54`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040719

/-- `a(n-2)` -/
def P5413674079484212349.Spec : Prop :=
  ∀ n, (P5413674079484212349.a n : ℤ) = A040719 n

theorem P5413674079484212349.correct : P5413674079484212349.Spec := by
  intro n
  simp only [A040719]

end A040719

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
# A040757: Continued fraction for sqrt(786).

The programs for A040757, the canonical program `A040757.P1901056680514546679` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040757 has offset 0).

The definition of A040757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040757.P1901056680514546679

`a(n-2)` with `a(0)=28, a(1)=28, a(2)=56`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040757

/-- `a(n-2)` -/
def P1901056680514546679.Spec : Prop :=
  ∀ n, (P1901056680514546679.a n : ℤ) = A040757 n

theorem P1901056680514546679.correct : P1901056680514546679.Spec := by
  intro n
  simp only [A040757]

end A040757

/-!
# A040759: Continued fraction for sqrt(788).

The programs for A040759, the canonical program `A040759.P3227010823646643053` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040759 has offset 0).

The definition of A040759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040759.P3227010823646643053

`a(n-2)` with `a(0)=28, a(1)=14, a(2)=56`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040759

/-- `a(n-2)` -/
def P3227010823646643053.Spec : Prop :=
  ∀ n, (P3227010823646643053.a n : ℤ) = A040759 n

theorem P3227010823646643053.correct : P3227010823646643053.Spec := by
  intro n
  simp only [A040759]

end A040759

/-!
# A040762: Continued fraction for sqrt(791).

The programs for A040762, the canonical program `A040762.P731706885572915487` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040762 has offset 0).

The definition of A040762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040762.P731706885572915487

`a(n-2)` with `a(0)=28, a(1)=8, a(2)=56`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040762

/-- `a(n-2)` -/
def P731706885572915487.Spec : Prop :=
  ∀ n, (P731706885572915487.a n : ℤ) = A040762 n

theorem P731706885572915487.correct : P731706885572915487.Spec := by
  intro n
  simp only [A040762]

end A040762

/-!
# A040763: Continued fraction for sqrt(792).

The programs for A040763, the canonical program `A040763.P796828268115170365` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040763 has offset 0).

The definition of A040763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040763.P796828268115170365

`a(n-2)` with `a(0)=28, a(1)=7, a(2)=56`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040763

/-- `a(n-2)` -/
def P796828268115170365.Spec : Prop :=
  ∀ n, (P796828268115170365.a n : ℤ) = A040763 n

theorem P796828268115170365.correct : P796828268115170365.Spec := by
  intro n
  simp only [A040763]

end A040763

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

