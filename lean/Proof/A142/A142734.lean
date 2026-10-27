import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142734 lists the primes congruent to 7 mod 59. -/
theorem A142734.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142734 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 7) (n - 1) : ℤ) := by
  simp only [A142734, A142734.P12788562841240082690.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142734.P12788562841240082690.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142734.P12788562841240082690.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142734.P12788562841240082690.f1, SequenceMachineLib.memo_apply]; omega⟩) _
