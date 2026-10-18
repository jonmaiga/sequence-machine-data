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
# A040211: Continued fraction for sqrt(227).

The programs for A040211, the canonical program `A040211.P918007066845270498` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040211 has offset 0).

The definition of A040211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040211.P918007066845270498

`a(n-2)` with `a(0)=15, a(1)=15, a(2)=30`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040211

/-- `a(n-2)` -/
def P918007066845270498.Spec : Prop :=
  ∀ n, (P918007066845270498.a n : ℤ) = A040211 n

theorem P918007066845270498.correct : P918007066845270498.Spec := by
  intro n
  simp only [A040211]

end A040211

/-!
# A040212: Continued fraction for sqrt(228).

The programs for A040212, the canonical program `A040212.P9135806259959427506` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040212 has offset 0).

The definition of A040212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040212.P9135806259959427506

`a(n-2)` with `a(0)=15, a(1)=10, a(2)=30`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040212

/-- `a(n-2)` -/
def P9135806259959427506.Spec : Prop :=
  ∀ n, (P9135806259959427506.a n : ℤ) = A040212 n

theorem P9135806259959427506.correct : P9135806259959427506.Spec := by
  intro n
  simp only [A040212]

end A040212

/-!
# A040214: Continued fraction for sqrt(230).

The programs for A040214, the canonical program `A040214.P13690277505727463821` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040214 has offset 0).

The definition of A040214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040214.P13690277505727463821

`a(n-2)` with `a(0)=15, a(1)=6, a(2)=30`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040214

/-- `a(n-2)` -/
def P13690277505727463821.Spec : Prop :=
  ∀ n, (P13690277505727463821.a n : ℤ) = A040214 n

theorem P13690277505727463821.correct : P13690277505727463821.Spec := by
  intro n
  simp only [A040214]

end A040214

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

/-!
# A040243: Continued fraction for sqrt(260).

The programs for A040243, the canonical program `A040243.P226559645723422633` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040243 has offset 0).

The definition of A040243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040243.P226559645723422633

`a(n-2)` with `a(0)=16, a(1)=8, a(2)=32`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040243

/-- `a(n-2)` -/
def P226559645723422633.Spec : Prop :=
  ∀ n, (P226559645723422633.a n : ℤ) = A040243 n

theorem P226559645723422633.correct : P226559645723422633.Spec := by
  intro n
  simp only [A040243]

end A040243

/-!
# A040247: Continued fraction for sqrt(264).

The programs for A040247, the canonical program `A040247.P6465313999403080984` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040247 has offset 0).

The definition of A040247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040247.P6465313999403080984

`a(n-2)` with `a(0)=16, a(1)=4, a(2)=32`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040247

/-- `a(n-2)` -/
def P6465313999403080984.Spec : Prop :=
  ∀ n, (P6465313999403080984.a n : ℤ) = A040247 n

theorem P6465313999403080984.correct : P6465313999403080984.Spec := by
  intro n
  simp only [A040247]

end A040247

/-!
# A040273: Continued fraction for sqrt(291).

The programs for A040273, the canonical program `A040273.P13583180310652028221` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040273 has offset 0).

The definition of A040273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040273.P13583180310652028221

`a(n-2)` with `a(0)=17, a(1)=17, a(2)=34`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040273

/-- `a(n-2)` -/
def P13583180310652028221.Spec : Prop :=
  ∀ n, (P13583180310652028221.a n : ℤ) = A040273 n

theorem P13583180310652028221.correct : P13583180310652028221.Spec := by
  intro n
  simp only [A040273]

end A040273

