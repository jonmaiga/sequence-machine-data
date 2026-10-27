import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142205 lists the primes congruent to 8 mod 41. -/
theorem A142205.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142205 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 8) (n - 1) : ℤ) := by
  simp only [A142205, A142205.P1845860967050143778.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142205.P1845860967050143778.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142205.P1845860967050143778.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142205.P1845860967050143778.f1, SequenceMachineLib.memo_apply]; omega⟩) _
