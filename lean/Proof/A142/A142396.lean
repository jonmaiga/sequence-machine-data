import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142396 lists the primes congruent to 45 mod 47. -/
theorem A142396.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142396 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 45) (n - 1) : ℤ) := by
  simp only [A142396, A142396.P5085327593745097292.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 45 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142396.P5085327593745097292.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142396.P5085327593745097292.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 47, by simp only [A142396.P5085327593745097292.f1, SequenceMachineLib.memo_apply]; omega⟩) _
