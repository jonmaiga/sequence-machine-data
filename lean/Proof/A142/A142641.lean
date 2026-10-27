import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142641 lists the primes congruent to 1 mod 56. -/
theorem A142641.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142641 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 1) (n - 1) : ℤ) := by
  simp only [A142641, A142641.P14499863429612109377.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142641.P14499863429612109377.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142641.P14499863429612109377.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142641.P14499863429612109377.f1, SequenceMachineLib.memo_apply]; omega⟩) _
