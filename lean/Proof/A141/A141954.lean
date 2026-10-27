import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141954 lists the primes congruent to 10 mod 27. -/
theorem A141954.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141954 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 10) (n - 1) : ℤ) := by
  simp only [A141954, A141954.P18220534221732778019.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 27 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141954.P18220534221732778019.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141954.P18220534221732778019.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 27, by simp only [A141954.P18220534221732778019.f1, SequenceMachineLib.memo_apply]; omega⟩) _
