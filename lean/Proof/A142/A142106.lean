import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142106 lists the primes congruent to 19 mod 36. -/
theorem A142106.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142106 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 19) (n - 1) : ℤ) := by
  simp only [A142106, A142106.P10105270289269678569.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 36 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142106.P10105270289269678569.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142106.P10105270289269678569.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 36, by simp only [A142106.P10105270289269678569.f1, SequenceMachineLib.memo_apply]; omega⟩) _
