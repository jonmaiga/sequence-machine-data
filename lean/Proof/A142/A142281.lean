import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142281 lists the primes congruent to 32 mod 43. -/
theorem A142281.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142281 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 32) (n - 1) : ℤ) := by
  simp only [A142281, A142281.P12265104987179317449.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142281.P12265104987179317449.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142281.P12265104987179317449.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 43, by simp only [A142281.P12265104987179317449.f1, SequenceMachineLib.memo_apply]; omega⟩) _
