import Prog.A007.A0075
import Proof.Lib.PrimesMod

/-- A007521 lists the primes congruent to 5 mod 8. -/
theorem A007521.anchor (n : ℕ) (hn : 1 ≤ n) :
    A007521 n = (Nat.nth (fun p => p.Prime ∧ p % 8 = 5) (n - 1) : ℤ) := by
  simp only [A007521, A007521.P14403399304509421067.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 8 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A007521.P14403399304509421067.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A007521.P14403399304509421067.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 8, by simp only [A007521.P14403399304509421067.f1, SequenceMachineLib.memo_apply]; omega⟩) _
