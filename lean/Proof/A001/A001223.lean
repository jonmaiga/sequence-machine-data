import Prog.A001.A0012
import Proof.A000.A000040

/-- A001223 are the prime gaps, the differences between consecutive primes. -/
theorem A001223.anchor (n : ℕ) (hn : 1 ≤ n) :
    A001223 n = (Nat.nth Nat.Prime n : ℤ) - Nat.nth Nat.Prime (n - 1) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [A000040.anchor _ (by omega), A000040.anchor _ (by omega)]
  simp
