import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142612 lists the primes congruent to 16 mod 55. -/
theorem A142612.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142612 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 16) (n - 1) : ℤ) := by
  simp only [A142612, A142612.P5287405968485272277.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142612.P5287405968485272277.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142612.P5287405968485272277.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142612.P5287405968485272277.f1, SequenceMachineLib.memo_apply]; omega⟩) _
