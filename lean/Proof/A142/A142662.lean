import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142662 lists the primes congruent to 51 mod 56. -/
theorem A142662.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142662 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 51) (n - 1) : ℤ) := by
  simp only [A142662, A142662.P7329424961933491705.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 51 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142662.P7329424961933491705.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142662.P7329424961933491705.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 56, by simp only [A142662.P7329424961933491705.f1, SequenceMachineLib.memo_apply]; omega⟩) _
