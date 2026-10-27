import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142227 lists the primes congruent to 30 mod 41. -/
theorem A142227.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142227 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 30) (n - 1) : ℤ) := by
  simp only [A142227, A142227.P6773654250959170506.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 30 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142227.P6773654250959170506.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142227.P6773654250959170506.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 41, by simp only [A142227.P6773654250959170506.f1, SequenceMachineLib.memo_apply]; omega⟩) _
