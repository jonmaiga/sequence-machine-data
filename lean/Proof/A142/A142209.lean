import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142209 lists the primes congruent to 12 mod 41. -/
theorem A142209.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142209 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 12) (n - 1) : ℤ) := by
  simp only [A142209, A142209.P3604403184899965638.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142209.P3604403184899965638.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142209.P3604403184899965638.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142209.P3604403184899965638.f1, SequenceMachineLib.memo_apply]; omega⟩) _
