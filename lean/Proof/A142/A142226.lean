import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142226 lists the primes congruent to 29 mod 41. -/
theorem A142226.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142226 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 29) (n - 1) : ℤ) := by
  simp only [A142226, A142226.P17211449638472722708.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142226.P17211449638472722708.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142226.P17211449638472722708.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 41, by simp only [A142226.P17211449638472722708.f1, SequenceMachineLib.memo_apply]; omega⟩) _
