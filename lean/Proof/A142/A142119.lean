import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142119 lists the primes congruent to 10 mod 37. -/
theorem A142119.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142119 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 10) (n - 1) : ℤ) := by
  simp only [A142119, A142119.P4007358293938638831.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142119.P4007358293938638831.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142119.P4007358293938638831.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142119.P4007358293938638831.f1, SequenceMachineLib.memo_apply]; omega⟩) _
