import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142943 lists the primes congruent to 41 mod 64. -/
theorem A142943.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142943 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 41) (n - 1) : ℤ) := by
  simp only [A142943, A142943.P13880456349358536681.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142943.P13880456349358536681.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142943.P13880456349358536681.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 23) / 64, by simp only [A142943.P13880456349358536681.f1, SequenceMachineLib.memo_apply]; omega⟩) _
