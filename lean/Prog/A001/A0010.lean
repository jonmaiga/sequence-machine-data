import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B001.C000
import Seq.Opaque.C000

/-!
# A001000: a(n) = least m such that if a/b < c/d where a,b,c,d are integers in [0,n], then a/b < k/m < c/d for some integer k.

The programs for A001000, the canonical program `A001000.P11683531770071818407` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001000 has offset 1).

The definition of A001000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001000.P1680990040494512457

`A033638(∑[2-char[A033638(n)]])`
-/

namespace A001000.P1680990040494512457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001000.P1680990040494512457

namespace A001000

/-- `A033638(∑[2-char[A033638(n)]])` -/
def P1680990040494512457.Spec : Prop :=
  ∀ n, P1680990040494512457.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P11683531770071818407

`A033638(A083479(n)+1+n)+C(2, n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001000

/-- `A033638(A083479(n)+1+n)+C(2, n+2)` -/
def P11683531770071818407.Spec : Prop :=
  ∀ n, P11683531770071818407.a n = A001000 (n + 1)

theorem P11683531770071818407.correct : P11683531770071818407.Spec := by
  intro n
  simp only [A001000, Nat.add_sub_cancel]

end A001000

/-! ## A001000.P11091672774734772267

`A033638(A254667(n+1)+A083479(n))`
-/

namespace A001000.P11091672774734772267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A254667 (n + 1) + A083479 n).toNat

end

end A001000.P11091672774734772267

namespace A001000

/-- `A033638(A254667(n+1)+A083479(n))` -/
def P11091672774734772267.Spec : Prop :=
  ∀ n, P11091672774734772267.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P4884112813712690542

`A033638(A083479(n)+1+n)+A000007(n)`
-/

namespace A001000.P4884112813712690542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A083479 n + 1 + (n : ℤ)).toNat + A000007 n

end

end A001000.P4884112813712690542

namespace A001000

/-- `A033638(A083479(n)+1+n)+A000007(n)` -/
def P4884112813712690542.Spec : Prop :=
  ∀ n, P4884112813712690542.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P16828464737419195970

`A071111(A254667(n+1))-A000007(n)`
-/

namespace A001000.P16828464737419195970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (A254667 (n + 1)).toNat - A000007 n

end

end A001000.P16828464737419195970

namespace A001000

/-- `A071111(A254667(n+1))-A000007(n)` -/
def P16828464737419195970.Spec : Prop :=
  ∀ n, P16828464737419195970.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P3193635474969538296

`A071111(A254667(n+1))-A036987(2*n)`
-/

namespace A001000.P3193635474969538296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (A254667 (n + 1)).toNat - A036987 (2 * n)

end

end A001000.P3193635474969538296

namespace A001000

/-- `A071111(A254667(n+1))-A036987(2*n)` -/
def P3193635474969538296.Spec : Prop :=
  ∀ n, P3193635474969538296.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P95070596536299700

`A071111(A254667(n+1))-A076141(7*n)`
-/

namespace A001000.P95070596536299700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (A254667 (n + 1)).toNat - A076141 (7 * n)

end

end A001000.P95070596536299700

namespace A001000

/-- `A071111(A254667(n+1))-A076141(7*n)` -/
def P95070596536299700.Spec : Prop :=
  ∀ n, P95070596536299700.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P5328487348875879181

`A071111(A254667(n+1))-A240025(A033638(n+2))`
-/

namespace A001000.P5328487348875879181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (A254667 (n + 1)).toNat - A240025 (A033638 (n + 2)).toNat

end

end A001000.P5328487348875879181

namespace A001000

/-- `A071111(A254667(n+1))-A240025(A033638(n+2))` -/
def P5328487348875879181.Spec : Prop :=
  ∀ n, P5328487348875879181.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P11659832767430286466

`A000037(A033638(A083479(n)+n))`
-/

namespace A001000.P11659832767430286466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A033638 (A083479 n + (n : ℤ)).toNat).toNat

end

end A001000.P11659832767430286466

namespace A001000

/-- `A000037(A033638(A083479(n)+n))` -/
def P11659832767430286466.Spec : Prop :=
  ∀ n, P11659832767430286466.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P2459861828266365239

`A033638(A248333(n)+2+n)`
-/

namespace A001000.P2459861828266365239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A248333 n + 2 + (n : ℤ)).toNat

end

end A001000.P2459861828266365239

namespace A001000

/-- `A033638(A248333(n)+2+n)` -/
def P2459861828266365239.Spec : Prop :=
  ∀ n, P2459861828266365239.a n = A001000 (n + 1)

end A001000

