import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142130 lists the primes congruent to 21 mod 37. -/
theorem A142130.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142130 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 21) (n - 1) : ℤ) := by
  simp only [A142130, A142130.P14951807227969313191.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142130.P14951807227969313191.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142130.P14951807227969313191.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 37, by simp only [A142130.P14951807227969313191.f1, SequenceMachineLib.memo_apply]; omega⟩) _
