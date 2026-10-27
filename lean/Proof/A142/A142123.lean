import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142123 lists the primes congruent to 14 mod 37. -/
theorem A142123.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142123 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 14) (n - 1) : ℤ) := by
  simp only [A142123, A142123.P17491403591963953120.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142123.P17491403591963953120.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142123.P17491403591963953120.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142123.P17491403591963953120.f1, SequenceMachineLib.memo_apply]; omega⟩) _
