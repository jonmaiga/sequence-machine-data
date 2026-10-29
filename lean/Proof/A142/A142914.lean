import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142914 lists the primes congruent to 44 mod 63. -/
theorem A142914.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142914 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 44) (n - 1) : ℤ) := by
  simp only [A142914, A142914.P10469601360240509478.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 44 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142914.P10469601360240509478.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142914.P10469601360240509478.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 63, by simp only [A142914.P10469601360240509478.f1, SequenceMachineLib.memo_apply]; omega⟩) _
