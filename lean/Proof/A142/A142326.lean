import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142326 lists the primes congruent to 28 mod 45. -/
theorem A142326.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142326 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 28) (n - 1) : ℤ) := by
  simp only [A142326, A142326.P18413968442934630755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 28 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142326.P18413968442934630755.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142326.P18413968442934630755.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 45, by simp only [A142326.P18413968442934630755.f1, SequenceMachineLib.memo_apply]; omega⟩) _
