import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142365 lists the primes congruent to 14 mod 47. -/
theorem A142365.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142365 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 14) (n - 1) : ℤ) := by
  simp only [A142365, A142365.P4519385043105044102.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142365.P4519385043105044102.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142365.P4519385043105044102.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 33) / 47, by simp only [A142365.P4519385043105044102.f1, SequenceMachineLib.memo_apply]; omega⟩) _
