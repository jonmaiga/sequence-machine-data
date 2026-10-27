import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142263 lists the primes congruent to 14 mod 43. -/
theorem A142263.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142263 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 14) (n - 1) : ℤ) := by
  simp only [A142263, A142263.P6519544910726459908.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142263.P6519544910726459908.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142263.P6519544910726459908.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142263.P6519544910726459908.f1, SequenceMachineLib.memo_apply]; omega⟩) _
