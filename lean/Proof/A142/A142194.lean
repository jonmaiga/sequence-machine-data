import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142194 lists the primes congruent to 29 mod 40. -/
theorem A142194.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142194 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 29) (n - 1) : ℤ) := by
  simp only [A142194, A142194.P2163652759226913528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 40 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142194.P2163652759226913528.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142194.P2163652759226913528.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 40, by simp only [A142194.P2163652759226913528.f1, SequenceMachineLib.memo_apply]; omega⟩) _
