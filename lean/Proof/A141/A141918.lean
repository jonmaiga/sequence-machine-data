import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141918 lists the primes congruent to 14 mod 23. -/
theorem A141918.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141918 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 14) (n - 1) : ℤ) := by
  simp only [A141918, A141918.P6197340914735044769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141918.P6197340914735044769.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141918.P6197340914735044769.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 23, by simp only [A141918.P6197340914735044769.f1, SequenceMachineLib.memo_apply]; omega⟩) _
