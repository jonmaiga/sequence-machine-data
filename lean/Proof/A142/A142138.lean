import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142138 lists the primes congruent to 29 mod 37. -/
theorem A142138.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142138 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 29) (n - 1) : ℤ) := by
  simp only [A142138, A142138.P746844966995690464.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142138.P746844966995690464.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142138.P746844966995690464.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 37, by simp only [A142138.P746844966995690464.f1, SequenceMachineLib.memo_apply]; omega⟩) _
