import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142286 lists the primes congruent to 37 mod 43. -/
theorem A142286.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142286 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 37) (n - 1) : ℤ) := by
  simp only [A142286, A142286.P13052994165343232711.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142286.P13052994165343232711.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142286.P13052994165343232711.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 43, by simp only [A142286.P13052994165343232711.f1, SequenceMachineLib.memo_apply]; omega⟩) _
