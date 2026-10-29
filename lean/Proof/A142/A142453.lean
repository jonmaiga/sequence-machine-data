import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142453 lists the primes congruent to 46 mod 49. -/
theorem A142453.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142453 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 46) (n - 1) : ℤ) := by
  simp only [A142453, A142453.P2282337085259382380.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 46 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142453.P2282337085259382380.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142453.P2282337085259382380.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 49, by simp only [A142453.P2282337085259382380.f1, SequenceMachineLib.memo_apply]; omega⟩) _
