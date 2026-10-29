import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142952 lists the primes congruent to 59 mod 64. -/
theorem A142952.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142952 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 59) (n - 1) : ℤ) := by
  simp only [A142952, A142952.P18232660293362250301.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 59 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142952.P18232660293362250301.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142952.P18232660293362250301.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 64, by simp only [A142952.P18232660293362250301.f1, SequenceMachineLib.memo_apply]; omega⟩) _
