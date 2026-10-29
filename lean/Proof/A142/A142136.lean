import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142136 lists the primes congruent to 27 mod 37. -/
theorem A142136.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142136 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 27) (n - 1) : ℤ) := by
  simp only [A142136, A142136.P1428996079723749002.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142136.P1428996079723749002.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142136.P1428996079723749002.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 37, by simp only [A142136.P1428996079723749002.f1, SequenceMachineLib.memo_apply]; omega⟩) _
