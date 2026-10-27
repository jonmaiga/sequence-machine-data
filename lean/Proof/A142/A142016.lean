import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142016 lists the primes congruent to 12 mod 31. -/
theorem A142016.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142016 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 12) (n - 1) : ℤ) := by
  simp only [A142016, A142016.P7732691917348421130.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 31 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142016.P7732691917348421130.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142016.P7732691917348421130.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 31, by simp only [A142016.P7732691917348421130.f1, SequenceMachineLib.memo_apply]; omega⟩) _
