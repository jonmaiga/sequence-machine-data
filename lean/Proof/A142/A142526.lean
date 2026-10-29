import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142526 lists the primes congruent to 41 mod 52. -/
theorem A142526.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142526 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 41) (n - 1) : ℤ) := by
  simp only [A142526, A142526.P4135253918980577179.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 52 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142526.P4135253918980577179.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142526.P4135253918980577179.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 52, by simp only [A142526.P4135253918980577179.f1, SequenceMachineLib.memo_apply]; omega⟩) _
