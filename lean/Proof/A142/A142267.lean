import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142267 lists the primes congruent to 18 mod 43. -/
theorem A142267.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142267 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 18) (n - 1) : ℤ) := by
  simp only [A142267, A142267.P3223431257577702686.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142267.P3223431257577702686.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142267.P3223431257577702686.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142267.P3223431257577702686.f1, SequenceMachineLib.memo_apply]; omega⟩) _
