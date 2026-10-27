import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142628 lists the primes congruent to 38 mod 55. -/
theorem A142628.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142628 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 38) (n - 1) : ℤ) := by
  simp only [A142628, A142628.P7316729457022828387.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142628.P7316729457022828387.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142628.P7316729457022828387.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 55, by simp only [A142628.P7316729457022828387.f1, SequenceMachineLib.memo_apply]; omega⟩) _
