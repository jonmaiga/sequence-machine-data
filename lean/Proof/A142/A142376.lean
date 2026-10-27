import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142376 lists the primes congruent to 25 mod 47. -/
theorem A142376.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142376 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 25) (n - 1) : ℤ) := by
  simp only [A142376, A142376.P6797894476532796369.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142376.P6797894476532796369.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142376.P6797894476532796369.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 22) / 47, by simp only [A142376.P6797894476532796369.f1, SequenceMachineLib.memo_apply]; omega⟩) _
