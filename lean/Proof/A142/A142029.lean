import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142029 lists the primes congruent to 25 mod 31. -/
theorem A142029.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142029 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 25) (n - 1) : ℤ) := by
  simp only [A142029, A142029.P10063750050715036443.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 31 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142029.P10063750050715036443.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142029.P10063750050715036443.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 31, by simp only [A142029.P10063750050715036443.f1, SequenceMachineLib.memo_apply]; omega⟩) _
