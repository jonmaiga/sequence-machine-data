import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142694 lists the primes congruent to 47 mod 57. -/
theorem A142694.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142694 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 47) (n - 1) : ℤ) := by
  simp only [A142694, A142694.P7023260184287984352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 47 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142694.P7023260184287984352.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142694.P7023260184287984352.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 57, by simp only [A142694.P7023260184287984352.f1, SequenceMachineLib.memo_apply]; omega⟩) _
