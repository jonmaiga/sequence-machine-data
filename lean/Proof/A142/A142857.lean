import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142857 lists the primes congruent to 59 mod 61. -/
theorem A142857.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142857 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 59) (n - 1) : ℤ) := by
  simp only [A142857, A142857.P17008751147517384597.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 59 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142857.P17008751147517384597.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142857.P17008751147517384597.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 61, by simp only [A142857.P17008751147517384597.f1, SequenceMachineLib.memo_apply]; omega⟩) _
