import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142189 lists the primes congruent to 17 mod 40. -/
theorem A142189.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142189 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 17) (n - 1) : ℤ) := by
  simp only [A142189, A142189.P12715870842719578700.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 40 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142189.P12715870842719578700.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142189.P12715870842719578700.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 23) / 40, by simp only [A142189.P12715870842719578700.f1, SequenceMachineLib.memo_apply]; omega⟩) _
