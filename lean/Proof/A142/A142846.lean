import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142846 lists the primes congruent to 48 mod 61. -/
theorem A142846.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142846 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 48) (n - 1) : ℤ) := by
  simp only [A142846, A142846.P16974594867481302952.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 48 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142846.P16974594867481302952.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142846.P16974594867481302952.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 61, by simp only [A142846.P16974594867481302952.f1, SequenceMachineLib.memo_apply]; omega⟩) _
