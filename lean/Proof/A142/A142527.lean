import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142527 lists the primes congruent to 43 mod 52. -/
theorem A142527.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142527 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 43) (n - 1) : ℤ) := by
  simp only [A142527, A142527.P5267497133949724872.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 52 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142527.P5267497133949724872.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142527.P5267497133949724872.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 52, by simp only [A142527.P5267497133949724872.f1, SequenceMachineLib.memo_apply]; omega⟩) _
