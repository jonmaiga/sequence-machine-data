import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142279 lists the primes congruent to 30 mod 43. -/
theorem A142279.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142279 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 30) (n - 1) : ℤ) := by
  simp only [A142279, A142279.P11287618654806749709.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 30 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142279.P11287618654806749709.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142279.P11287618654806749709.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 43, by simp only [A142279.P11287618654806749709.f1, SequenceMachineLib.memo_apply]; omega⟩) _
