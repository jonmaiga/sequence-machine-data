import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142218 lists the primes congruent to 21 mod 41. -/
theorem A142218.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142218 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 21) (n - 1) : ℤ) := by
  simp only [A142218, A142218.P6225111548831495056.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142218.P6225111548831495056.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142218.P6225111548831495056.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 20) / 41, by simp only [A142218.P6225111548831495056.f1, SequenceMachineLib.memo_apply]; omega⟩) _
