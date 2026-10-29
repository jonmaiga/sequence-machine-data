import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142625 lists the primes congruent to 34 mod 55. -/
theorem A142625.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142625 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 34) (n - 1) : ℤ) := by
  simp only [A142625, A142625.P3933760359178982259.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142625.P3933760359178982259.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142625.P3933760359178982259.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 21) / 55, by simp only [A142625.P3933760359178982259.f1, SequenceMachineLib.memo_apply]; omega⟩) _
