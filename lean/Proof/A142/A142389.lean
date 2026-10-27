import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142389 lists the primes congruent to 38 mod 47. -/
theorem A142389.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142389 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 38) (n - 1) : ℤ) := by
  simp only [A142389, A142389.P6617584334484456022.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142389.P6617584334484456022.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142389.P6617584334484456022.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 47, by simp only [A142389.P6617584334484456022.f1, SequenceMachineLib.memo_apply]; omega⟩) _
