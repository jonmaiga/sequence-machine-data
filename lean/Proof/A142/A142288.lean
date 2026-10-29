import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142288 lists the primes congruent to 39 mod 43. -/
theorem A142288.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142288 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 39) (n - 1) : ℤ) := by
  simp only [A142288, A142288.P13849969014959642047.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 39 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142288.P13849969014959642047.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142288.P13849969014959642047.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 43, by simp only [A142288.P13849969014959642047.f1, SequenceMachineLib.memo_apply]; omega⟩) _
