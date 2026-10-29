import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142555 lists the primes congruent to 25 mod 53. -/
theorem A142555.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142555 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 25) (n - 1) : ℤ) := by
  simp only [A142555, A142555.P4054102190725040796.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142555.P4054102190725040796.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142555.P4054102190725040796.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 28) / 53, by simp only [A142555.P4054102190725040796.f1, SequenceMachineLib.memo_apply]; omega⟩) _
