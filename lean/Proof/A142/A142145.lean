import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142145 lists the primes congruent to 36 mod 37. -/
theorem A142145.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142145 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 36) (n - 1) : ℤ) := by
  simp only [A142145, A142145.P10006114690202515084.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 36 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142145.P10006114690202515084.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142145.P10006114690202515084.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 37, by simp only [A142145.P10006114690202515084.f1, SequenceMachineLib.memo_apply]; omega⟩) _
