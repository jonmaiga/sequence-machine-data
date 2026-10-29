import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142266 lists the primes congruent to 17 mod 43. -/
theorem A142266.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142266 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 17) (n - 1) : ℤ) := by
  simp only [A142266, A142266.P4993458387102465404.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142266.P4993458387102465404.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142266.P4993458387102465404.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142266.P4993458387102465404.f1, SequenceMachineLib.memo_apply]; omega⟩) _
