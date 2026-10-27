import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142133 lists the primes congruent to 24 mod 37. -/
theorem A142133.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142133 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 24) (n - 1) : ℤ) := by
  simp only [A142133, A142133.P3400429704081329010.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142133.P3400429704081329010.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142133.P3400429704081329010.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 37, by simp only [A142133.P3400429704081329010.f1, SequenceMachineLib.memo_apply]; omega⟩) _
