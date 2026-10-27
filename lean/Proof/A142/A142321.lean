import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142321 lists the primes congruent to 17 mod 45. -/
theorem A142321.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142321 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 17) (n - 1) : ℤ) := by
  simp only [A142321, A142321.P10996513615225347293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142321.P10996513615225347293.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142321.P10996513615225347293.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142321.P10996513615225347293.f1, SequenceMachineLib.memo_apply]; omega⟩) _
