import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142849 lists the primes congruent to 51 mod 61. -/
theorem A142849.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142849 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 51) (n - 1) : ℤ) := by
  simp only [A142849, A142849.P17666790552011313718.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 51 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142849.P17666790552011313718.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142849.P17666790552011313718.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 61, by simp only [A142849.P17666790552011313718.f1, SequenceMachineLib.memo_apply]; omega⟩) _
