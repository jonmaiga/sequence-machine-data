import SequenceMachineLib.Basic
import Seq.B000.C008

/-!
# A040505: Continued fraction for sqrt(528).

The programs for A040505, the canonical program `A040505.P12877200073874983724` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040505 has offset 0).

The definition of A040505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040505.P12877200073874983724

`a(n-2)` with `a(0)=22, a(1)=1, a(2)=44`

The canonical program, it is in `Seq.B000.C008`.
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
# A040506: Continued fraction for sqrt(530).

The programs for A040506, the canonical program `A040506.P585704342696849481` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040506 has offset 0).

The definition of A040506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040506.P585704342696849481

`ogf((23+23x)/(1-x))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A040506

/-- `ogf((23+23x)/(1-x))` -/
def P585704342696849481.Spec : Prop :=
  ∀ n, P585704342696849481.a n = A040506 n

theorem P585704342696849481.correct : P585704342696849481.Spec := by
  intro n
  simp only [A040506]

end A040506

/-!
# A040507: Continued fraction for sqrt(531).

The programs for A040507, the canonical program `A040507.P9699859985223759624` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040507 has offset 0).

The definition of A040507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040507.P9699859985223759624

`a(n-2)` with `a(0)=23, a(1)=23, a(2)=46`

The canonical program, it is in `Seq.B000.C008`.
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

The programs for A040527, the canonical program `A040527.P15471420833029263265` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040527 has offset 0).

The definition of A040527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040527.P15471420833029263265

`a(n-6)` with `a(0)=23, a(1)=2, a(2)=8, a(3)=1, a(4)=8, a(5)=2, a(6)=46`

The canonical program, it is in `Seq.B000.C008`.
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

The programs for A040552, the canonical program `A040552.P6758308662670785982` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040552 has offset 0).

The definition of A040552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040552.P6758308662670785982

`ogf((24+24x)/(1-x))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A040552

/-- `ogf((24+24x)/(1-x))` -/
def P6758308662670785982.Spec : Prop :=
  ∀ n, P6758308662670785982.a n = A040552 n

theorem P6758308662670785982.correct : P6758308662670785982.Spec := by
  intro n
  simp only [A040552]

end A040552

/-!
# A040563: Continued fraction for sqrt(588).

The programs for A040563, the canonical program `A040563.P11950361092149395501` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040563 has offset 0).

The definition of A040563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040563.P11950361092149395501

`a(n-2)` with `a(0)=24, a(1)=4, a(2)=48`

The canonical program, it is in `Seq.B000.C008`.
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

The programs for A040565, the canonical program `A040565.P2629617294285342621` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040565 has offset 0).

The definition of A040565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040565.P2629617294285342621

`a(n-6)` with `a(0)=24, a(1)=3, a(2)=2, a(3)=4, a(4)=2, a(5)=3, a(6)=48`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A040565

/-- `a(n-6)` -/
def P2629617294285342621.Spec : Prop :=
  ∀ n, (P2629617294285342621.a n : ℤ) = A040565 n

theorem P2629617294285342621.correct : P2629617294285342621.Spec := by
  intro n
  simp only [A040565]

end A040565

