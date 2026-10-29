import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142063 lists the primes congruent to 25 mod 33. -/
theorem A142063.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142063 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 25) (n - 1) : ℤ) := by
  simp only [A142063, A142063.P13615811643452234008.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 33 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142063.P13615811643452234008.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142063.P13615811643452234008.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 33, by simp only [A142063.P13615811643452234008.f1, SequenceMachineLib.memo_apply]; omega⟩) _
