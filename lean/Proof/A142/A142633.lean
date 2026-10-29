import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142633 lists the primes congruent to 46 mod 55. -/
theorem A142633.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142633 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 46) (n - 1) : ℤ) := by
  simp only [A142633, A142633.P13475206179899460435.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 46 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142633.P13475206179899460435.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142633.P13475206179899460435.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 55, by simp only [A142633.P13475206179899460435.f1, SequenceMachineLib.memo_apply]; omega⟩) _
