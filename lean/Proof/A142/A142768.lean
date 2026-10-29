import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142768 lists the primes congruent to 41 mod 59. -/
theorem A142768.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142768 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 41) (n - 1) : ℤ) := by
  simp only [A142768, A142768.P16711511557012601460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142768.P16711511557012601460.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142768.P16711511557012601460.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 18) / 59, by simp only [A142768.P16711511557012601460.f1, SequenceMachineLib.memo_apply]; omega⟩) _
