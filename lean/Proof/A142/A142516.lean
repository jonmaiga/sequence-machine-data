import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142516 lists the primes congruent to 19 mod 52. -/
theorem A142516.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142516 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 19) (n - 1) : ℤ) := by
  simp only [A142516, A142516.P4987968122826076168.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 52 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142516.P4987968122826076168.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142516.P4987968122826076168.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 33) / 52, by simp only [A142516.P4987968122826076168.f1, SequenceMachineLib.memo_apply]; omega⟩) _
