import Prog.A106.A1063
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-- A106315 is the harmonic residue of `n`: `n * d(n)` modulo the sum of the divisors of `n`. -/
theorem A106315.anchor (n : ℕ) (hn : 1 ≤ n) :
    A106315 n = ((n * n.divisors.card % ∑ d ∈ n.divisors, d : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A106315, A106315.P6417438308466386050.a, A106315.P6417438308466386050.f1,
    A106315.P6417438308466386050.f2, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    Nat.card_divisors (Nat.succ_ne_zero m)]
