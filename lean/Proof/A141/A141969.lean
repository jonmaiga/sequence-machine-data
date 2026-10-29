import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141969 lists the primes congruent to 11 mod 28. -/
theorem A141969.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141969 n = (Nat.nth (fun p => p.Prime ∧ p % 28 = 11) (n - 1) : ℤ) := by
  simp only [A141969, A141969.P10803076773587650740.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 28 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141969.P10803076773587650740.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141969.P10803076773587650740.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 28, by simp only [A141969.P10803076773587650740.f1, SequenceMachineLib.memo_apply]; omega⟩) _
