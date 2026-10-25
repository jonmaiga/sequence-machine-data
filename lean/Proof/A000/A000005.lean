import Prog.A000.A0000
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-! The canonical program of A000005 is `A032741(n+1)+1`, and A032741 is `∏{e}[n, #+1]-1`. The product of the
prime exponents plus one is the number of divisors (`Nat.card_divisors`). -/

/-- A000005 is the number of divisors of n, `σ₀ n`. -/
theorem A000005.anchor (n : ℕ) (hn : 1 ≤ n) : A000005 n = (ArithmeticFunction.sigma 0 n : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.a,
    A032741.P3022166995030670566.f1, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    ArithmeticFunction.sigma_zero_apply, Nat.card_divisors (Nat.succ_ne_zero m)]
  ring
