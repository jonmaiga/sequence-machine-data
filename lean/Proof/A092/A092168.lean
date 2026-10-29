import Prog.A092.A0921
import Proof.Lib.PrimesMod

/-- A092168 lists the primes congruent to 3 mod 19. -/
theorem A092168.anchor (n : ℕ) (hn : 1 ≤ n) :
    A092168 n = (Nat.nth (fun p => p.Prime ∧ p % 19 = 3) (n - 1) : ℤ) := by
  simp only [A092168, A092168.P11994040160184331559.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 19 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A092168.P11994040160184331559.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A092168.P11994040160184331559.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 19, by simp only [A092168.P11994040160184331559.f1, SequenceMachineLib.memo_apply]; omega⟩) _
