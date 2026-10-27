import Prog.A212.A2123
import Proof.Lib.PrimesMod

/-- A212378 lists the primes congruent to 1 mod 61. -/
theorem A212378.anchor (n : ℕ) (hn : 1 ≤ n) :
    A212378 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 1) (n - 1) : ℤ) := by
  simp only [A212378, A212378.P1742329795883171186.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A212378.P1742329795883171186.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A212378.P1742329795883171186.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A212378.P1742329795883171186.f1, SequenceMachineLib.memo_apply]; omega⟩) _
