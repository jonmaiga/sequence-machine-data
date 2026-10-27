import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142922 lists the primes congruent to 59 mod 63. -/
theorem A142922.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142922 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 59) (n - 1) : ℤ) := by
  simp only [A142922, A142922.P8521400803036767735.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 59 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142922.P8521400803036767735.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142922.P8521400803036767735.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 63, by simp only [A142922.P8521400803036767735.f1, SequenceMachineLib.memo_apply]; omega⟩) _
