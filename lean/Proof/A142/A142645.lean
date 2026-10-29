import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142645 lists the primes congruent to 11 mod 56. -/
theorem A142645.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142645 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 11) (n - 1) : ℤ) := by
  simp only [A142645, A142645.P5071803339077684332.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142645.P5071803339077684332.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142645.P5071803339077684332.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142645.P5071803339077684332.f1, SequenceMachineLib.memo_apply]; omega⟩) _
