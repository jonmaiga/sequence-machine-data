import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142001 lists the primes congruent to 25 mod 29. -/
theorem A142001.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142001 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 25) (n - 1) : ℤ) := by
  simp only [A142001, A142001.P6642892303876696954.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142001.P6642892303876696954.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142001.P6642892303876696954.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 29, by simp only [A142001.P6642892303876696954.f1, SequenceMachineLib.memo_apply]; omega⟩) _
