import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141881 lists the primes congruent to 1 mod 20. -/
theorem A141881.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141881 n = (Nat.nth (fun p => p.Prime ∧ p % 20 = 1) (n - 1) : ℤ) := by
  simp only [A141881, A141881.P3987547684413938372.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 20 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141881.P3987547684413938372.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141881.P3987547684413938372.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 20, by simp only [A141881.P3987547684413938372.f1, SequenceMachineLib.memo_apply]; omega⟩) _
