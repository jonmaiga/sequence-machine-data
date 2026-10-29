import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142234 lists the primes congruent to 37 mod 41. -/
theorem A142234.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142234 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 37) (n - 1) : ℤ) := by
  simp only [A142234, A142234.P10604605828929398941.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142234.P10604605828929398941.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142234.P10604605828929398941.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 41, by simp only [A142234.P10604605828929398941.f1, SequenceMachineLib.memo_apply]; omega⟩) _
