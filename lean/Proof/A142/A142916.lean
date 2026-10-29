import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142916 lists the primes congruent to 47 mod 63. -/
theorem A142916.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142916 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 47) (n - 1) : ℤ) := by
  simp only [A142916, A142916.P16510023369052438540.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 47 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142916.P16510023369052438540.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142916.P16510023369052438540.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 63, by simp only [A142916.P16510023369052438540.f1, SequenceMachineLib.memo_apply]; omega⟩) _
