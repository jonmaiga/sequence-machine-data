import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142924 lists the primes congruent to 62 mod 63. -/
theorem A142924.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142924 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 62) (n - 1) : ℤ) := by
  simp only [A142924, A142924.P3544101350319166389.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 62 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142924.P3544101350319166389.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142924.P3544101350319166389.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 63, by simp only [A142924.P3544101350319166389.f1, SequenceMachineLib.memo_apply]; omega⟩) _
