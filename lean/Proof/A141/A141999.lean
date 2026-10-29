import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141999 lists the primes congruent to 23 mod 29. -/
theorem A141999.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141999 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 23) (n - 1) : ℤ) := by
  simp only [A141999, A141999.P12192578655231234354.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141999.P12192578655231234354.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141999.P12192578655231234354.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 29, by simp only [A141999.P12192578655231234354.f1, SequenceMachineLib.memo_apply]; omega⟩) _
