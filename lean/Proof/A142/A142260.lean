import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142260 lists the primes congruent to 11 mod 43. -/
theorem A142260.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142260 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 11) (n - 1) : ℤ) := by
  simp only [A142260, A142260.P3237445093896128342.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142260.P3237445093896128342.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142260.P3237445093896128342.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142260.P3237445093896128342.f1, SequenceMachineLib.memo_apply]; omega⟩) _
