import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141916 lists the primes congruent to 12 mod 23. -/
theorem A141916.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141916 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 12) (n - 1) : ℤ) := by
  simp only [A141916, A141916.P14493093726270992137.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141916.P14493093726270992137.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141916.P14493093726270992137.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 23, by simp only [A141916.P14493093726270992137.f1, SequenceMachineLib.memo_apply]; omega⟩) _
