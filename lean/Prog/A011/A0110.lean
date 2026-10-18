import SequenceMachineLib.Basic
import Seq.B000.C002
import Seq.B000.C003
import Seq.B001.C000

/-!
# A011000: a(n) = binomial coefficient C(n,47).

The programs for A011000, the canonical program `A011000.P7264108481264943678` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011000 has offset 47).

The definition of A011000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+47, 47)` (program `A011000.P7264108481264943678`, by `A011000.P7264108481264943678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011000.P7264108481264943678

`C(n+47, 47)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011000

/-- `C(n+47, 47)` -/
def P7264108481264943678.Spec : Prop :=
  ∀ n, (P7264108481264943678.a n : ℤ) = A011000 (n + 47)

theorem P7264108481264943678.correct : P7264108481264943678.Spec := by
  intro n
  simp only [A011000, Nat.add_sub_cancel]

end A011000

/-! ## A011000.P8415179153092162009

`(47/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A011000.P8415179153092162009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (47 / (n : ℚ) + 1) * a (n - 1)

end

end A011000.P8415179153092162009

namespace A011000

/-- `(47/n+1)*a(n-1)` -/
def P8415179153092162009.Spec : Prop :=
  ∀ n, P8415179153092162009.a n = (A011000 (n + 47) : ℚ)

end A011000

/-! ## A011000.P5423848254881915890

`∑[A010999(n)]`
-/

namespace A011000.P5423848254881915890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010999 (n + 46)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011000.P5423848254881915890

namespace A011000

/-- `∑[A010999(n)]` -/
def P5423848254881915890.Spec : Prop :=
  ∀ n, P5423848254881915890.a n = A011000 (n + 47)

end A011000

/-! ## A011000.P6684954060882164525

`∑[∑[A010998(n)]]`
-/

namespace A011000.P6684954060882164525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010998 (n + 45)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011000.P6684954060882164525

namespace A011000

/-- `∑[∑[A010998(n)]]` -/
def P6684954060882164525.Spec : Prop :=
  ∀ n, P6684954060882164525.a n = A011000 (n + 47)

end A011000

/-! ## A011000.P1350831601775322709

`∑[∑[∑[A010997(n)]]]`
-/

namespace A011000.P1350831601775322709
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010997 (n + 44)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011000.P1350831601775322709

namespace A011000

/-- `∑[∑[∑[A010997(n)]]]` -/
def P1350831601775322709.Spec : Prop :=
  ∀ n, P1350831601775322709.a n = A011000 (n + 47)

end A011000

/-! ## A011000.P31069263202991355

`A011001(n+1)-(A011001(n)+A010999(n+1))`
-/

namespace A011000.P31069263202991355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011001 (n + 1 + 48) - (A011001 (n + 48) + A010999 (n + 1 + 46))

end

end A011000.P31069263202991355

namespace A011000

/-- `A011001(n+1)-(A011001(n)+A010999(n+1))` -/
def P31069263202991355.Spec : Prop :=
  ∀ n, P31069263202991355.a n = A011000 (n + 47)

end A011000

/-!
# A011001: Binomial coefficient C(n,48).

The programs for A011001, the canonical program `A011001.P17732690108139867920` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011001 has offset 48).

The definition of A011001 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+48, 48)` (program `A011001.P17732690108139867920`, by `A011001.P17732690108139867920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011001.P17732690108139867920

`C(n+48, 48)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011001

/-- `C(n+48, 48)` -/
def P17732690108139867920.Spec : Prop :=
  ∀ n, (P17732690108139867920.a n : ℤ) = A011001 (n + 48)

theorem P17732690108139867920.correct : P17732690108139867920.Spec := by
  intro n
  simp only [A011001, Nat.add_sub_cancel]

end A011001

/-! ## A011001.P5625290986689402543

`(48/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A011001.P5625290986689402543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (48 / (n : ℚ) + 1) * a (n - 1)

end

end A011001.P5625290986689402543

namespace A011001

/-- `(48/n+1)*a(n-1)` -/
def P5625290986689402543.Spec : Prop :=
  ∀ n, P5625290986689402543.a n = (A011001 (n + 48) : ℚ)

end A011001

/-! ## A011001.P15231799857281741989

`∑[A011000(n)]`
-/

namespace A011001.P15231799857281741989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011000 (n + 47)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011001.P15231799857281741989

namespace A011001

/-- `∑[A011000(n)]` -/
def P15231799857281741989.Spec : Prop :=
  ∀ n, P15231799857281741989.a n = A011001 (n + 48)

end A011001

/-! ## A011001.P12796202673815747266

`∑[∑[A010999(n)]]`
-/

namespace A011001.P12796202673815747266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010999 (n + 46)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011001.P12796202673815747266

namespace A011001

/-- `∑[∑[A010999(n)]]` -/
def P12796202673815747266.Spec : Prop :=
  ∀ n, P12796202673815747266.a n = A011001 (n + 48)

end A011001

/-! ## A011001.P7029532013392960382

`∑[∑[∑[A010998(n)]]]`
-/

namespace A011001.P7029532013392960382
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010998 (n + 45)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011001.P7029532013392960382

namespace A011001

/-- `∑[∑[∑[A010998(n)]]]` -/
def P7029532013392960382.Spec : Prop :=
  ∀ n, P7029532013392960382.a n = A011001 (n + 48)

end A011001

/-! ## A011001.P2829621440398576899

`A017713(n+1)-(A017713(n)+A011000(n+1))`
-/

namespace A011001.P2829621440398576899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017713 (n + 1 + 49) - (A017713 (n + 49) + A011000 (n + 1 + 47))

end

end A011001.P2829621440398576899

namespace A011001

/-- `A017713(n+1)-(A017713(n)+A011000(n+1))` -/
def P2829621440398576899.Spec : Prop :=
  ∀ n, P2829621440398576899.a n = A011001 (n + 48)

end A011001

/-!
# A011007: Decimal expansion of 4th root of 10.

The programs for A011007, the canonical program `A011007.P17255019870769386734` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011007 has offset 1).

The definition of A011007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011007.P17255019870769386734

`A114322(A016813(n))%10`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011007

/-- `A114322(A016813(n))%10` -/
def P17255019870769386734.Spec : Prop :=
  ∀ n, P17255019870769386734.a n = A011007 (n + 1)

theorem P17255019870769386734.correct : P17255019870769386734.Spec := by
  intro n
  simp only [A011007, Nat.add_sub_cancel]

end A011007

