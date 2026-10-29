import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142003 lists the primes congruent to 27 mod 29. -/
theorem A142003.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142003 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 27) (n - 1) : ℤ) := by
  simp only [A142003, A142003.P5906945974808956508.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142003.P5906945974808956508.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142003.P5906945974808956508.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 29, by simp only [A142003.P5906945974808956508.f1, SequenceMachineLib.memo_apply]; omega⟩) _
