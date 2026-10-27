import Prog.A167.A1674
import Proof.Lib.PrimesMod

/-- A167445 lists the primes whose decimal expansion ends in 61. -/
theorem A167445.anchor (n : ℕ) (hn : 1 ≤ n) :
    A167445 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 61) (n - 1) : ℤ) := by
  simp only [A167445, A167445.P2871925615073171222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 100 61 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A167445.P2871925615073171222.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A167445.P2871925615073171222.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 39) / 100, by simp only [A167445.P2871925615073171222.f1, SequenceMachineLib.memo_apply]; omega⟩) _
