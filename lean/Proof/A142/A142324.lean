import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142324 lists the primes congruent to 23 mod 45. -/
theorem A142324.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142324 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 23) (n - 1) : ℤ) := by
  simp only [A142324, A142324.P3883511816270207009.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142324.P3883511816270207009.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142324.P3883511816270207009.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 22) / 45, by simp only [A142324.P3883511816270207009.f1, SequenceMachineLib.memo_apply]; omega⟩) _
