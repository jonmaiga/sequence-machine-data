import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142816 lists the primes congruent to 18 mod 61. -/
theorem A142816.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142816 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 18) (n - 1) : ℤ) := by
  simp only [A142816, A142816.P1837982766238215271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142816.P1837982766238215271.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142816.P1837982766238215271.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142816.P1837982766238215271.f1, SequenceMachineLib.memo_apply]; omega⟩) _
