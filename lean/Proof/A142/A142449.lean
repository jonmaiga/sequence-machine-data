import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142449 lists the primes congruent to 41 mod 49. -/
theorem A142449.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142449 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 41) (n - 1) : ℤ) := by
  simp only [A142449, A142449.P15985166372383252766.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142449.P15985166372383252766.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142449.P15985166372383252766.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 49, by simp only [A142449.P15985166372383252766.f1, SequenceMachineLib.memo_apply]; omega⟩) _
