import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142311 lists the primes congruent to 43 mod 44. -/
theorem A142311.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142311 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 43) (n - 1) : ℤ) := by
  simp only [A142311, A142311.P241498345937656178.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 44 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142311.P241498345937656178.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142311.P241498345937656178.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 44, by simp only [A142311.P241498345937656178.f1, SequenceMachineLib.memo_apply]; omega⟩) _
