import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142050 lists the primes congruent to 2 mod 33. -/
theorem A142050.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142050 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 2) (n - 1) : ℤ) := by
  simp only [A142050, A142050.P14625853988464788971.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 33 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142050.P14625853988464788971.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142050.P14625853988464788971.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 33, by simp only [A142050.P14625853988464788971.f1, SequenceMachineLib.memo_apply]; omega⟩) _
