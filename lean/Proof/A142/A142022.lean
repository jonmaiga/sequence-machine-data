import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142022 lists the primes congruent to 18 mod 31. -/
theorem A142022.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142022 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 18) (n - 1) : ℤ) := by
  simp only [A142022, A142022.P10416321363538169702.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 31 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142022.P10416321363538169702.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142022.P10416321363538169702.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 31, by simp only [A142022.P10416321363538169702.f1, SequenceMachineLib.memo_apply]; omega⟩) _
