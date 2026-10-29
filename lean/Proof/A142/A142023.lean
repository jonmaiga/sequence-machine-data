import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142023 lists the primes congruent to 19 mod 31. -/
theorem A142023.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142023 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 19) (n - 1) : ℤ) := by
  simp only [A142023, A142023.P14274148652728911942.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 31 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142023.P14274148652728911942.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142023.P14274148652728911942.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 31, by simp only [A142023.P14274148652728911942.f1, SequenceMachineLib.memo_apply]; omega⟩) _
