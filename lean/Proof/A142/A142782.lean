import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142782 lists the primes congruent to 55 mod 59. -/
theorem A142782.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142782 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 55) (n - 1) : ℤ) := by
  simp only [A142782, A142782.P16047853702145488896.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 55 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142782.P16047853702145488896.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142782.P16047853702145488896.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 59, by simp only [A142782.P16047853702145488896.f1, SequenceMachineLib.memo_apply]; omega⟩) _
