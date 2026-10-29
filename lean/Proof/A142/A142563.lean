import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142563 lists the primes congruent to 33 mod 53. -/
theorem A142563.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142563 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 33) (n - 1) : ℤ) := by
  simp only [A142563, A142563.P12359353660996850255.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142563.P12359353660996850255.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142563.P12359353660996850255.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 20) / 53, by simp only [A142563.P12359353660996850255.f1, SequenceMachineLib.memo_apply]; omega⟩) _
