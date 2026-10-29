import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142648 lists the primes congruent to 17 mod 56. -/
theorem A142648.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142648 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 17) (n - 1) : ℤ) := by
  simp only [A142648, A142648.P4221404238813975576.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142648.P4221404238813975576.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142648.P4221404238813975576.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 39) / 56, by simp only [A142648.P4221404238813975576.f1, SequenceMachineLib.memo_apply]; omega⟩) _
