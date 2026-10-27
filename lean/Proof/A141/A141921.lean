import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141921 lists the primes congruent to 17 mod 23. -/
theorem A141921.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141921 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 17) (n - 1) : ℤ) := by
  simp only [A141921, A141921.P17964433269071327918.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141921.P17964433269071327918.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141921.P17964433269071327918.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 23, by simp only [A141921.P17964433269071327918.f1, SequenceMachineLib.memo_apply]; omega⟩) _
