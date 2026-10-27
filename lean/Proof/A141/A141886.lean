import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141886 lists the primes congruent to 17 mod 20. -/
theorem A141886.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141886 n = (Nat.nth (fun p => p.Prime ∧ p % 20 = 17) (n - 1) : ℤ) := by
  simp only [A141886, A141886.P7425287249095554016.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 20 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141886.P7425287249095554016.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141886.P7425287249095554016.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 20, by simp only [A141886.P7425287249095554016.f1, SequenceMachineLib.memo_apply]; omega⟩) _
