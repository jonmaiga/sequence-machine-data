import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142942 lists the primes congruent to 39 mod 64. -/
theorem A142942.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142942 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 39) (n - 1) : ℤ) := by
  simp only [A142942, A142942.P7322160798847157632.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 39 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142942.P7322160798847157632.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142942.P7322160798847157632.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 25) / 64, by simp only [A142942.P7322160798847157632.f1, SequenceMachineLib.memo_apply]; omega⟩) _
