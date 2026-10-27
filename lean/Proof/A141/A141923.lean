import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141923 lists the primes congruent to 19 mod 23. -/
theorem A141923.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141923 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 19) (n - 1) : ℤ) := by
  simp only [A141923, A141923.P5867154082732899307.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141923.P5867154082732899307.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141923.P5867154082732899307.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 23, by simp only [A141923.P5867154082732899307.f1, SequenceMachineLib.memo_apply]; omega⟩) _
