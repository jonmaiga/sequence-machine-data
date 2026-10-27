import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142333 lists the primes congruent to 41 mod 45. -/
theorem A142333.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142333 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 41) (n - 1) : ℤ) := by
  simp only [A142333, A142333.P7726727833732103365.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142333.P7726727833732103365.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142333.P7726727833732103365.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 45, by simp only [A142333.P7726727833732103365.f1, SequenceMachineLib.memo_apply]; omega⟩) _
