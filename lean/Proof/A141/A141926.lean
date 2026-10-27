import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141926 lists the primes congruent to 22 mod 23. -/
theorem A141926.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141926 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 22) (n - 1) : ℤ) := by
  simp only [A141926, A141926.P3370032026993647329.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141926.P3370032026993647329.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141926.P3370032026993647329.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 23, by simp only [A141926.P3370032026993647329.f1, SequenceMachineLib.memo_apply]; omega⟩) _
