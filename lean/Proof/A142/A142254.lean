import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142254 lists the primes congruent to 5 mod 43. -/
theorem A142254.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142254 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 5) (n - 1) : ℤ) := by
  simp only [A142254, A142254.P17548689956248471436.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142254.P17548689956248471436.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142254.P17548689956248471436.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142254.P17548689956248471436.f1, SequenceMachineLib.memo_apply]; omega⟩) _
