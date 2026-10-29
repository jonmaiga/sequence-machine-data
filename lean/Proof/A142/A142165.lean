import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142165 lists the primes congruent to 10 mod 39. -/
theorem A142165.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142165 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 10) (n - 1) : ℤ) := by
  simp only [A142165, A142165.P3575926549960295279.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 39 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142165.P3575926549960295279.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142165.P3575926549960295279.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 39, by simp only [A142165.P3575926549960295279.f1, SequenceMachineLib.memo_apply]; omega⟩) _
