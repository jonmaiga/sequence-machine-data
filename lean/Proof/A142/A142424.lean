import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142424 lists the primes congruent to 12 mod 49. -/
theorem A142424.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142424 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 12) (n - 1) : ℤ) := by
  simp only [A142424, A142424.P17597334879441742239.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142424.P17597334879441742239.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142424.P17597334879441742239.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142424.P17597334879441742239.f1, SequenceMachineLib.memo_apply]; omega⟩) _
