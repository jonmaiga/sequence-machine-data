import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142274 lists the primes congruent to 25 mod 43. -/
theorem A142274.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142274 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 25) (n - 1) : ℤ) := by
  simp only [A142274, A142274.P12276314700837698252.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142274.P12276314700837698252.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142274.P12276314700837698252.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 18) / 43, by simp only [A142274.P12276314700837698252.f1, SequenceMachineLib.memo_apply]; omega⟩) _
