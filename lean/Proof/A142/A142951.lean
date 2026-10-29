import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142951 lists the primes congruent to 57 mod 64. -/
theorem A142951.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142951 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 57) (n - 1) : ℤ) := by
  simp only [A142951, A142951.P4112686697446518170.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 57 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142951.P4112686697446518170.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142951.P4112686697446518170.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 64, by simp only [A142951.P4112686697446518170.f1, SequenceMachineLib.memo_apply]; omega⟩) _
