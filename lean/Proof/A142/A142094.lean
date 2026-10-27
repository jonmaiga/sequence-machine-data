import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142094 lists the primes congruent to 27 mod 35. -/
theorem A142094.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142094 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 27) (n - 1) : ℤ) := by
  simp only [A142094, A142094.P13754732341440805904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142094.P13754732341440805904.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142094.P13754732341440805904.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 35, by simp only [A142094.P13754732341440805904.f1, SequenceMachineLib.memo_apply]; omega⟩) _
