import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142690 lists the primes congruent to 41 mod 57. -/
theorem A142690.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142690 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 41) (n - 1) : ℤ) := by
  simp only [A142690, A142690.P7679015735807136683.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142690.P7679015735807136683.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142690.P7679015735807136683.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 57, by simp only [A142690.P7679015735807136683.f1, SequenceMachineLib.memo_apply]; omega⟩) _
