import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142774 lists the primes congruent to 47 mod 59. -/
theorem A142774.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142774 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 47) (n - 1) : ℤ) := by
  simp only [A142774, A142774.P7361394003584978862.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 47 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142774.P7361394003584978862.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142774.P7361394003584978862.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 59, by simp only [A142774.P7361394003584978862.f1, SequenceMachineLib.memo_apply]; omega⟩) _
