import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142287 lists the primes congruent to 38 mod 43. -/
theorem A142287.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142287 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 38) (n - 1) : ℤ) := by
  simp only [A142287, A142287.P10298448669598223222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142287.P10298448669598223222.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142287.P10298448669598223222.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 43, by simp only [A142287.P10298448669598223222.f1, SequenceMachineLib.memo_apply]; omega⟩) _
