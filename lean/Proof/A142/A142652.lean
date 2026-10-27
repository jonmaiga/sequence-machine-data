import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142652 lists the primes congruent to 27 mod 56. -/
theorem A142652.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142652 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 27) (n - 1) : ℤ) := by
  simp only [A142652, A142652.P1679165705992840716.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142652.P1679165705992840716.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142652.P1679165705992840716.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142652.P1679165705992840716.f1, SequenceMachineLib.memo_apply]; omega⟩) _
