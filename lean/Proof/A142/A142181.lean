import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142181 lists the primes congruent to 37 mod 39. -/
theorem A142181.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142181 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 37) (n - 1) : ℤ) := by
  simp only [A142181, A142181.P12862546500836666871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 39 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142181.P12862546500836666871.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142181.P12862546500836666871.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 39, by simp only [A142181.P12862546500836666871.f1, SequenceMachineLib.memo_apply]; omega⟩) _
