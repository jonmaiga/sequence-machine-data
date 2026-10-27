import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142921 lists the primes congruent to 58 mod 63. -/
theorem A142921.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142921 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 58) (n - 1) : ℤ) := by
  simp only [A142921, A142921.P2886790080663886087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 58 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142921.P2886790080663886087.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142921.P2886790080663886087.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 63, by simp only [A142921.P2886790080663886087.f1, SequenceMachineLib.memo_apply]; omega⟩) _
