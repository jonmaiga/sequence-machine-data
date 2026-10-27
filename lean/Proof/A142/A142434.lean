import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142434 lists the primes congruent to 24 mod 49. -/
theorem A142434.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142434 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 24) (n - 1) : ℤ) := by
  simp only [A142434, A142434.P3630912060890464926.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142434.P3630912060890464926.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142434.P3630912060890464926.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142434.P3630912060890464926.f1, SequenceMachineLib.memo_apply]; omega⟩) _
