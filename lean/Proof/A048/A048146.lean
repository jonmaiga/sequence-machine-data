import Prog.A048.A0481
import Proof.A000.A000203
import Proof.A034.A034448

/-- A048146: the sum of the divisors `d` of `n` that are not unitary, `gcd(d, n/d) > 1`. -/
theorem A048146.anchor (n : ℕ) (hn : 1 ≤ n) :
    A048146 n = ∑ d ∈ n.divisors with ¬ d.Coprime (n / d), (d : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A048146, A048146.P9985884013456677192.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [A000203.anchor _ (by omega), A034448.anchor _ (by omega), ArithmeticFunction.sigma_one_apply]
  push_cast
  rw [← Finset.sum_filter_add_sum_filter_not (m + 1).divisors (fun d => d.Coprime ((m + 1) / d))]
  ring
