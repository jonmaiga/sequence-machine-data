import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142108 lists the primes congruent to 25 mod 36. -/
theorem A142108.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142108 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 25) (n - 1) : ℤ) := by
  simp only [A142108, A142108.P2153401802580103333.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 36 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142108.P2153401802580103333.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142108.P2153401802580103333.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 36, by simp only [A142108.P2153401802580103333.f1, SequenceMachineLib.memo_apply]; omega⟩) _
