import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142364 lists the primes congruent to 13 mod 47. -/
theorem A142364.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142364 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 13) (n - 1) : ℤ) := by
  simp only [A142364, A142364.P10932836593473637332.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142364.P10932836593473637332.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142364.P10932836593473637332.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142364.P10932836593473637332.f1, SequenceMachineLib.memo_apply]; omega⟩) _
