import Prog.A007.A0075
import Proof.Lib.PrimesMod

/-- A007519 lists the primes congruent to 1 mod 8. -/
theorem A007519.anchor (n : ℕ) (hn : 1 ≤ n) :
    A007519 n = (Nat.nth (fun p => p.Prime ∧ p % 8 = 1) (n - 1) : ℤ) := by
  simp only [A007519, A007519.P11660314281699166777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 8 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A007519.P11660314281699166777.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A007519.P11660314281699166777.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 8, by simp only [A007519.P11660314281699166777.f1, SequenceMachineLib.memo_apply]; omega⟩) _
