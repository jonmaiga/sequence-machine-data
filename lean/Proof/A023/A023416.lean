import Prog.A023.A0234
import Proof.A070.A070939
import Proof.A000.A000120

/-- For binary digits, the zeros plus the digit sum (the ones) make up the length. -/
private theorem count_add_sum (l : List ℕ) (h : ∀ x ∈ l, x < 2) : l.count 0 + l.sum = l.length := by
  induction l with
  | nil => simp
  | cons x l ih =>
    have hx := h x (by simp)
    have ih := ih fun y hy => h y (by simp [hy])
    interval_cases x <;> simp <;> omega

/-- A023416 is the number of 0's in the binary expansion of `n` (`0` is written `0`). -/
theorem A023416.anchor (n : ℕ) :
    A023416 n = if n = 0 then 1 else (((Nat.digits 2 n).count 0 : ℕ) : ℤ) := by
  simp only [A023416, A023416.P8124303482289229133.a, SequenceMachineLib.memo_apply, A070939.anchor,
    A000120.anchor]
  split_ifs with h
  · simp [h]
  · have := count_add_sum (Nat.digits 2 n) fun x hx => Nat.digits_lt_base (by norm_num) hx
    omega
