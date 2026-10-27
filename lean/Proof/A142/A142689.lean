import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142689 lists the primes congruent to 40 mod 57. -/
theorem A142689.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142689 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 40) (n - 1) : ℤ) := by
  simp only [A142689, A142689.P17214230915832276991.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 40 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142689.P17214230915832276991.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142689.P17214230915832276991.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 57, by simp only [A142689.P17214230915832276991.f1, SequenceMachineLib.memo_apply]; omega⟩) _
