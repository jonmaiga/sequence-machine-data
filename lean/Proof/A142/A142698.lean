import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142698 lists the primes congruent to 53 mod 57. -/
theorem A142698.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142698 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 53) (n - 1) : ℤ) := by
  simp only [A142698, A142698.P6519255041443735741.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 53 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142698.P6519255041443735741.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142698.P6519255041443735741.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 57, by simp only [A142698.P6519255041443735741.f1, SequenceMachineLib.memo_apply]; omega⟩) _
