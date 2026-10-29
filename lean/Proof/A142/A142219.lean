import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142219 lists the primes congruent to 22 mod 41. -/
theorem A142219.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142219 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 22) (n - 1) : ℤ) := by
  simp only [A142219, A142219.P7248354823462158457.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142219.P7248354823462158457.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142219.P7248354823462158457.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 41, by simp only [A142219.P7248354823462158457.f1, SequenceMachineLib.memo_apply]; omega⟩) _
