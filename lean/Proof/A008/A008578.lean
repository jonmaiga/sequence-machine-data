import Prog.A008.A0085
import Proof.A000.A000040

/-- A008578 are the primes with 1 counted as a prime: `1, 2, 3, 5, 7, ...`. -/
theorem A008578.anchor (n : ℕ) (hn : 1 ≤ n) :
    A008578 n = if n = 1 then 1 else (Nat.nth Nat.Prime (n - 2) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    A158611, A158611.P9275629407611603775.a, show m + 2 - 1 = m + 1 by omega]
  rcases m with _ | m
  · simp [SequenceMachineLib.rec_of_lt]
  · rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    have hg : Nat.gcd (m + 1 + 1) (m + 1 + 1 + 1) = 1 := by rw [Nat.gcd_self_add_right]; simp
    have h1 : SequenceMachineLib.rec [(0 : ℤ), 1] (fun n a => A000040 ((n : ℤ) - a (Nat.gcd n (n + 1))).toNat) 1 = 1 := by
      rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]; rfl
    simp only [hg, show 1 < m + 1 + 1 by omega, ↓reduceIte, h1]
    rw [show ((((m + 1 + 1 : ℕ) : ℤ) - 1).toNat) = m + 1 by omega, A000040.anchor _ (by omega)]
    simp
