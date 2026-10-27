import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142669 lists the primes congruent to 7 mod 57. -/
theorem A142669.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142669 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 7) (n - 1) : ℤ) := by
  simp only [A142669, A142669.P16110018626709843434.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142669.P16110018626709843434.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142669.P16110018626709843434.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142669.P16110018626709843434.f1, SequenceMachineLib.memo_apply]; omega⟩) _
