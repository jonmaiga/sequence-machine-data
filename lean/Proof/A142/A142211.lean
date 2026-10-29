import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142211 lists the primes congruent to 14 mod 41. -/
theorem A142211.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142211 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 14) (n - 1) : ℤ) := by
  simp only [A142211, A142211.P13688438854626014357.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142211.P13688438854626014357.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142211.P13688438854626014357.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142211.P13688438854626014357.f1, SequenceMachineLib.memo_apply]; omega⟩) _
