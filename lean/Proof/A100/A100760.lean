import Prog.A100.A1007
import Proof.Lib.PrimesMod

/-- A100760 lists the primes congruent to 5 mod 47. -/
theorem A100760.anchor (n : ℕ) (hn : 1 ≤ n) :
    A100760 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 5) (n - 1) : ℤ) := by
  simp only [A100760, A100760.P3841706727858406933.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A100760.P3841706727858406933.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A100760.P3841706727858406933.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A100760.P3841706727858406933.f1, SequenceMachineLib.memo_apply]; omega⟩) _
