import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142543 lists the primes congruent to 13 mod 53. -/
theorem A142543.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142543 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 13) (n - 1) : ℤ) := by
  simp only [A142543, A142543.P13721539067979919973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142543.P13721539067979919973.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142543.P13721539067979919973.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142543.P13721539067979919973.f1, SequenceMachineLib.memo_apply]; omega⟩) _
