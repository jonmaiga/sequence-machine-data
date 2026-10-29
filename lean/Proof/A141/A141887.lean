import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141887 lists the primes congruent to 19 mod 20. -/
theorem A141887.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141887 n = (Nat.nth (fun p => p.Prime ∧ p % 20 = 19) (n - 1) : ℤ) := by
  simp only [A141887, A141887.P17708859818427022684.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 20 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141887.P17708859818427022684.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141887.P17708859818427022684.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 20, by simp only [A141887.P17708859818427022684.f1, SequenceMachineLib.memo_apply]; omega⟩) _
