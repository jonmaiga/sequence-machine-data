import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142402 lists the primes congruent to 13 mod 48. -/
theorem A142402.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142402 n = (Nat.nth (fun p => p.Prime ∧ p % 48 = 13) (n - 1) : ℤ) := by
  simp only [A142402, A142402.P18041103152548127886.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 48 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142402.P18041103152548127886.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142402.P18041103152548127886.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 35) / 48, by simp only [A142402.P18041103152548127886.f1, SequenceMachineLib.memo_apply]; omega⟩) _
