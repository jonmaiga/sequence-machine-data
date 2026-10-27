import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142603 lists the primes congruent to 3 mod 55. -/
theorem A142603.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142603 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 3) (n - 1) : ℤ) := by
  simp only [A142603, A142603.P15400574297739745150.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142603.P15400574297739745150.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142603.P15400574297739745150.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142603.P15400574297739745150.f1, SequenceMachineLib.memo_apply]; omega⟩) _
