import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142215 lists the primes congruent to 18 mod 41. -/
theorem A142215.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142215 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 18) (n - 1) : ℤ) := by
  simp only [A142215, A142215.P3221935887299973414.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142215.P3221935887299973414.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142215.P3221935887299973414.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142215.P3221935887299973414.f1, SequenceMachineLib.memo_apply]; omega⟩) _
