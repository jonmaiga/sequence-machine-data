import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142700 lists the primes congruent to 56 mod 57. -/
theorem A142700.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142700 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 56) (n - 1) : ℤ) := by
  simp only [A142700, A142700.P12380709953204433673.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 56 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142700.P12380709953204433673.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142700.P12380709953204433673.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 57, by simp only [A142700.P12380709953204433673.f1, SequenceMachineLib.memo_apply]; omega⟩) _
