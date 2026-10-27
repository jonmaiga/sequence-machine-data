import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142329 lists the primes congruent to 32 mod 45. -/
theorem A142329.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142329 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 32) (n - 1) : ℤ) := by
  simp only [A142329, A142329.P1160488117302926088.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142329.P1160488117302926088.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142329.P1160488117302926088.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 45, by simp only [A142329.P1160488117302926088.f1, SequenceMachineLib.memo_apply]; omega⟩) _
