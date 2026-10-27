import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142195 lists the primes congruent to 31 mod 40. -/
theorem A142195.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142195 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 31) (n - 1) : ℤ) := by
  simp only [A142195, A142195.P9314822424547242044.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 40 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142195.P9314822424547242044.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142195.P9314822424547242044.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 40, by simp only [A142195.P9314822424547242044.f1, SequenceMachineLib.memo_apply]; omega⟩) _
