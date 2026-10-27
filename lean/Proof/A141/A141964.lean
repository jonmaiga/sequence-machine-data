import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141964 lists the primes congruent to 25 mod 27. -/
theorem A141964.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141964 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 25) (n - 1) : ℤ) := by
  simp only [A141964, A141964.P13218050565630564501.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 27 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141964.P13218050565630564501.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141964.P13218050565630564501.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 27, by simp only [A141964.P13218050565630564501.f1, SequenceMachineLib.memo_apply]; omega⟩) _
