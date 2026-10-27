import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142283 lists the primes congruent to 34 mod 43. -/
theorem A142283.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142283 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 34) (n - 1) : ℤ) := by
  simp only [A142283, A142283.P8153996233396252491.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142283.P8153996233396252491.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142283.P8153996233396252491.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 43, by simp only [A142283.P8153996233396252491.f1, SequenceMachineLib.memo_apply]; omega⟩) _
