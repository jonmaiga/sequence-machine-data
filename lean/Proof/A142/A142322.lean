import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142322 lists the primes congruent to 19 mod 45. -/
theorem A142322.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142322 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 19) (n - 1) : ℤ) := by
  simp only [A142322, A142322.P3484727509360590983.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142322.P3484727509360590983.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142322.P3484727509360590983.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 26) / 45, by simp only [A142322.P3484727509360590983.f1, SequenceMachineLib.memo_apply]; omega⟩) _
