import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142068 lists the primes congruent to 32 mod 33. -/
theorem A142068.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142068 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 32) (n - 1) : ℤ) := by
  simp only [A142068, A142068.P12150171660204582869.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 33 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142068.P12150171660204582869.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142068.P12150171660204582869.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 33, by simp only [A142068.P12150171660204582869.f1, SequenceMachineLib.memo_apply]; omega⟩) _
