import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142184 lists the primes congruent to 3 mod 40. -/
theorem A142184.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142184 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 3) (n - 1) : ℤ) := by
  simp only [A142184, A142184.P2814003219085699518.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 40 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142184.P2814003219085699518.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142184.P2814003219085699518.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 40, by simp only [A142184.P2814003219085699518.f1, SequenceMachineLib.memo_apply]; omega⟩) _
