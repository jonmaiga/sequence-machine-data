import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142493 lists the primes congruent to 28 mod 51. -/
theorem A142493.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142493 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 28) (n - 1) : ℤ) := by
  simp only [A142493, A142493.P4438798063706308318.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 28 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142493.P4438798063706308318.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142493.P4438798063706308318.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 23) / 51, by simp only [A142493.P4438798063706308318.f1, SequenceMachineLib.memo_apply]; omega⟩) _
