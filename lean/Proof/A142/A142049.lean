import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142049 lists the primes congruent to 1 mod 33. -/
theorem A142049.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142049 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 1) (n - 1) : ℤ) := by
  simp only [A142049, A142049.P7957472508449430480.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 33 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142049.P7957472508449430480.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142049.P7957472508449430480.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 33, by simp only [A142049.P7957472508449430480.f1, SequenceMachineLib.memo_apply]; omega⟩) _
