import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142172 lists the primes congruent to 22 mod 39. -/
theorem A142172.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142172 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 22) (n - 1) : ℤ) := by
  simp only [A142172, A142172.P9325815831726527394.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 39 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142172.P9325815831726527394.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142172.P9325815831726527394.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 39, by simp only [A142172.P9325815831726527394.f1, SequenceMachineLib.memo_apply]; omega⟩) _
