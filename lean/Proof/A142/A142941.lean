import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142941 lists the primes congruent to 37 mod 64. -/
theorem A142941.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142941 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 37) (n - 1) : ℤ) := by
  simp only [A142941, A142941.P12578231015707486366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142941.P12578231015707486366.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142941.P12578231015707486366.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 27) / 64, by simp only [A142941.P12578231015707486366.f1, SequenceMachineLib.memo_apply]; omega⟩) _
