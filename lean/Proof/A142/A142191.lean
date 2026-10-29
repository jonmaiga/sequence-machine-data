import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142191 lists the primes congruent to 21 mod 40. -/
theorem A142191.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142191 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 21) (n - 1) : ℤ) := by
  simp only [A142191, A142191.P13342722853951144925.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 40 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142191.P13342722853951144925.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142191.P13342722853951144925.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 40, by simp only [A142191.P13342722853951144925.f1, SequenceMachineLib.memo_apply]; omega⟩) _
