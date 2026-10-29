import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142697 lists the primes congruent to 52 mod 57. -/
theorem A142697.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142697 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 52) (n - 1) : ℤ) := by
  simp only [A142697, A142697.P2752560957868014492.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 52 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142697.P2752560957868014492.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142697.P2752560957868014492.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 57, by simp only [A142697.P2752560957868014492.f1, SequenceMachineLib.memo_apply]; omega⟩) _
