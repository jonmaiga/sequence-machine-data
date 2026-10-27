import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142012 lists the primes congruent to 8 mod 31. -/
theorem A142012.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142012 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 8) (n - 1) : ℤ) := by
  simp only [A142012, A142012.P7843368770873152612.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 31 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142012.P7843368770873152612.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142012.P7843368770873152612.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 31, by simp only [A142012.P7843368770873152612.f1, SequenceMachineLib.memo_apply]; omega⟩) _
