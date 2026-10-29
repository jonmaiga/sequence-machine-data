import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142289 lists the primes congruent to 40 mod 43. -/
theorem A142289.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142289 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 40) (n - 1) : ℤ) := by
  simp only [A142289, A142289.P4114709481379776997.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 40 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142289.P4114709481379776997.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142289.P4114709481379776997.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 43, by simp only [A142289.P4114709481379776997.f1, SequenceMachineLib.memo_apply]; omega⟩) _
