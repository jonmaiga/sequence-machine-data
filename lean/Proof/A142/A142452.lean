import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142452 lists the primes congruent to 45 mod 49. -/
theorem A142452.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142452 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 45) (n - 1) : ℤ) := by
  simp only [A142452, A142452.P16353487928396230098.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 45 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142452.P16353487928396230098.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142452.P16353487928396230098.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 49, by simp only [A142452.P16353487928396230098.f1, SequenceMachineLib.memo_apply]; omega⟩) _
