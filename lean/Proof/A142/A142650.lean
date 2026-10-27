import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142650 lists the primes congruent to 23 mod 56. -/
theorem A142650.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142650 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 23) (n - 1) : ℤ) := by
  simp only [A142650, A142650.P10701174261417167167.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142650.P10701174261417167167.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142650.P10701174261417167167.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142650.P10701174261417167167.f1, SequenceMachineLib.memo_apply]; omega⟩) _
