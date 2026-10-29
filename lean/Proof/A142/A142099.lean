import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142099 lists the primes congruent to 34 mod 35. -/
theorem A142099.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142099 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 34) (n - 1) : ℤ) := by
  simp only [A142099, A142099.P7691558053280592165.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142099.P7691558053280592165.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142099.P7691558053280592165.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 35, by simp only [A142099.P7691558053280592165.f1, SequenceMachineLib.memo_apply]; omega⟩) _
