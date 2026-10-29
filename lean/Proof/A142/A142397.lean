import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142397 lists the primes congruent to 46 mod 47. -/
theorem A142397.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142397 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 46) (n - 1) : ℤ) := by
  simp only [A142397, A142397.P11675747106029405364.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 46 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142397.P11675747106029405364.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142397.P11675747106029405364.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 47, by simp only [A142397.P11675747106029405364.f1, SequenceMachineLib.memo_apply]; omega⟩) _
