import Prog.A324.A3241
import Proof.A000.A000203
import Proof.A000.A000005

/-- A324121 is `gcd(n * d(n), σ(n))`. -/
theorem A324121.anchor (n : ℕ) (hn : 1 ≤ n) :
    A324121 n = ((Nat.gcd (n * n.divisors.card) (∑ d ∈ n.divisors, d) : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A324121, A324121.P5058798757553332466.a, A038040, A038040.P16512896840577774730.a,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel, A000203.anchor (m + 1) (by omega),
    A000005.anchor (m + 1) (by omega), ArithmeticFunction.sigma_one_apply, ArithmeticFunction.sigma_zero_apply]
  rw [show ((m : ℤ) + 1) * (((m + 1).divisors.card : ℕ) : ℤ) = (((m + 1) * (m + 1).divisors.card : ℕ) : ℤ) by
    push_cast; ring, Int.gcd_natCast_natCast, Nat.gcd_comm]
