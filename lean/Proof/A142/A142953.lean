import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142953 lists the primes congruent to 61 mod 64. -/
theorem A142953.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142953 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 61) (n - 1) : ℤ) := by
  simp only [A142953, A142953.P593526132870738264.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 61 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142953.P593526132870738264.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142953.P593526132870738264.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 64, by simp only [A142953.P593526132870738264.f1, SequenceMachineLib.memo_apply]; omega⟩) _
