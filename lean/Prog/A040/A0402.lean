import SequenceMachineLib.Basic
import Seq.B000.C007
import Seq.Opaque.C002

/-!
# A040210: Continued fraction for sqrt(226).

The programs for A040210, there is no canonical definition to state claims against.
-/

/-! ## A040210.P5244296441041992042

`3*A040020(n)`
-/

namespace A040210.P5244296441041992042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040020 n

end

end A040210.P5244296441041992042

/-!
# A040215: Continued fraction for sqrt(231).

The programs for A040215, the canonical program `A040215.P11104022738662318493` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040215 has offset 0).

The definition of A040215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040215.P11104022738662318493

`a(n-2)` with `a(0)=15, a(1)=5, a(2)=30`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040215

/-- `a(n-2)` -/
def P11104022738662318493.Spec : Prop :=
  ∀ n, (P11104022738662318493.a n : ℤ) = A040215 n

theorem P11104022738662318493.correct : P11104022738662318493.Spec := by
  intro n
  simp only [A040215]

end A040215

/-!
# A040224: Continued fraction for sqrt(240).

The programs for A040224, the canonical program `A040224.P3683499966529568118` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040224 has offset 0).

The definition of A040224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040224.P3683499966529568118

`a(n-2)` with `a(0)=15, a(1)=2, a(2)=30`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040224

/-- `a(n-2)` -/
def P3683499966529568118.Spec : Prop :=
  ∀ n, (P3683499966529568118.a n : ℤ) = A040224 n

theorem P3683499966529568118.correct : P3683499966529568118.Spec := by
  intro n
  simp only [A040224]

end A040224

/-!
# A040234: Continued fraction for sqrt(250).

The programs for A040234, the canonical program `A040234.P15410506243904345858` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040234 has offset 0).

The definition of A040234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040234.P15410506243904345858

`a(n-7)` with `a(0)=15, a(1)=1, a(2)=4, a(3)=3, a(4)=3, a(5)=4, a(6)=1, a(7)=30`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040234

/-- `a(n-7)` -/
def P15410506243904345858.Spec : Prop :=
  ∀ n, (P15410506243904345858.a n : ℤ) = A040234 n

theorem P15410506243904345858.correct : P15410506243904345858.Spec := by
  intro n
  simp only [A040234]

end A040234

/-!
# A040240: Continued fraction for sqrt(257).

The programs for A040240, there is no canonical definition to state claims against.
-/

/-! ## A040240.P9373835921445686339

`2*A040056(n)`
-/

namespace A040240.P9373835921445686339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040056 n

end

end A040240.P9373835921445686339

/-!
# A040241: Continued fraction for sqrt(258).

The programs for A040241, the canonical program `A040241.P9806758365808546532` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040241 has offset 0).

The definition of A040241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040241.P9806758365808546532

`a(n-2)` with `a(0)=16, a(1)=16, a(2)=32`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040241

/-- `a(n-2)` -/
def P9806758365808546532.Spec : Prop :=
  ∀ n, (P9806758365808546532.a n : ℤ) = A040241 n

theorem P9806758365808546532.correct : P9806758365808546532.Spec := by
  intro n
  simp only [A040241]

end A040241

