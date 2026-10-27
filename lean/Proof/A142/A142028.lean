import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142028 lists the primes congruent to 24 mod 31. -/
theorem A142028.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142028 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 24) (n - 1) : ℤ) := by
  simp only [A142028, A142028.P1386416701456778253.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 31 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142028.P1386416701456778253.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142028.P1386416701456778253.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 31, by simp only [A142028.P1386416701456778253.f1, SequenceMachineLib.memo_apply]; omega⟩) _
