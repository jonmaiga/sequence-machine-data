import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142282 lists the primes congruent to 33 mod 43. -/
theorem A142282.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142282 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 33) (n - 1) : ℤ) := by
  simp only [A142282, A142282.P1088534415416808543.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142282.P1088534415416808543.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142282.P1088534415416808543.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 43, by simp only [A142282.P1088534415416808543.f1, SequenceMachineLib.memo_apply]; omega⟩) _
