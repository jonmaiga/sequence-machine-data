import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142696 lists the primes congruent to 50 mod 57. -/
theorem A142696.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142696 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 50) (n - 1) : ℤ) := by
  simp only [A142696, A142696.P663818117787293416.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 50 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142696.P663818117787293416.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142696.P663818117787293416.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 57, by simp only [A142696.P663818117787293416.f1, SequenceMachineLib.memo_apply]; omega⟩) _
