import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142144 lists the primes congruent to 35 mod 37. -/
theorem A142144.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142144 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 35) (n - 1) : ℤ) := by
  simp only [A142144, A142144.P3439492578117216224.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 35 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142144.P3439492578117216224.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142144.P3439492578117216224.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 37, by simp only [A142144.P3439492578117216224.f1, SequenceMachineLib.memo_apply]; omega⟩) _
