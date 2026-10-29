import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142091 lists the primes congruent to 23 mod 35. -/
theorem A142091.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142091 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 23) (n - 1) : ℤ) := by
  simp only [A142091, A142091.P5312883380898051111.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142091.P5312883380898051111.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142091.P5312883380898051111.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 35, by simp only [A142091.P5312883380898051111.f1, SequenceMachineLib.memo_apply]; omega⟩) _
