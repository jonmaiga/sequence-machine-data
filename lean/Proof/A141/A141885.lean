import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141885 lists the primes congruent to 13 mod 20. -/
theorem A141885.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141885 n = (Nat.nth (fun p => p.Prime ∧ p % 20 = 13) (n - 1) : ℤ) := by
  simp only [A141885, A141885.P15696442900697318190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 20 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141885.P15696442900697318190.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141885.P15696442900697318190.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 20, by simp only [A141885.P15696442900697318190.f1, SequenceMachineLib.memo_apply]; omega⟩) _
