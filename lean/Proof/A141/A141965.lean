import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141965 lists the primes congruent to 26 mod 27. -/
theorem A141965.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141965 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 26) (n - 1) : ℤ) := by
  simp only [A141965, A141965.P1717643765959104100.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 27 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141965.P1717643765959104100.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141965.P1717643765959104100.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 27, by simp only [A141965.P1717643765959104100.f1, SequenceMachineLib.memo_apply]; omega⟩) _
