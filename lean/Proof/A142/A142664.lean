import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142664 lists the primes congruent to 55 mod 56. -/
theorem A142664.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142664 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 55) (n - 1) : ℤ) := by
  simp only [A142664, A142664.P10332297124576628954.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 55 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142664.P10332297124576628954.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142664.P10332297124576628954.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 56, by simp only [A142664.P10332297124576628954.f1, SequenceMachineLib.memo_apply]; omega⟩) _
