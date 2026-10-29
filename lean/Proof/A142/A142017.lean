import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142017 lists the primes congruent to 13 mod 31. -/
theorem A142017.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142017 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 13) (n - 1) : ℤ) := by
  simp only [A142017, A142017.P11625030124948837998.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 31 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142017.P11625030124948837998.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142017.P11625030124948837998.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 31, by simp only [A142017.P11625030124948837998.f1, SequenceMachineLib.memo_apply]; omega⟩) _
