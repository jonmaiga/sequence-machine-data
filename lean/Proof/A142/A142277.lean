import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142277 lists the primes congruent to 28 mod 43. -/
theorem A142277.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142277 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 28) (n - 1) : ℤ) := by
  simp only [A142277, A142277.P4759217298360384155.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 28 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142277.P4759217298360384155.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142277.P4759217298360384155.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 43, by simp only [A142277.P4759217298360384155.f1, SequenceMachineLib.memo_apply]; omega⟩) _
