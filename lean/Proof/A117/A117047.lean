import Prog.A117.A1170
import Proof.Lib.PrimesMod

/-- A117047 lists the primes congruent to 11 mod 60. -/
theorem A117047.anchor (n : ℕ) (hn : 1 ≤ n) :
    A117047 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 11) (n - 1) : ℤ) := by
  simp only [A117047, A117047.P12714779244650753106.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 60 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A117047.P12714779244650753106.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A117047.P12714779244650753106.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 60, by simp only [A117047.P12714779244650753106.f1, SequenceMachineLib.memo_apply]; omega⟩) _
