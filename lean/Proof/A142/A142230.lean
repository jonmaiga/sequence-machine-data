import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142230 lists the primes congruent to 33 mod 41. -/
theorem A142230.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142230 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 33) (n - 1) : ℤ) := by
  simp only [A142230, A142230.P11424881739351854975.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142230.P11424881739351854975.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142230.P11424881739351854975.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 41, by simp only [A142230.P11424881739351854975.f1, SequenceMachineLib.memo_apply]; omega⟩) _
