import Prog.A091.A0919
import Proof.Lib.PrimesMod

/-- A091968 lists the primes congruent to 3 mod 16. -/
theorem A091968.anchor (n : ℕ) (hn : 1 ≤ n) :
    A091968 n = (Nat.nth (fun p => p.Prime ∧ p % 16 = 3) (n - 1) : ℤ) := by
  simp only [A091968, A091968.P18410516703109936838.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 16 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A091968.P18410516703109936838.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A091968.P18410516703109936838.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 16, by simp only [A091968.P18410516703109936838.f1, SequenceMachineLib.memo_apply]; omega⟩) _
