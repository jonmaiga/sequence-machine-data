import Prog.A068.A0682
import Proof.Lib.PrimesMod

/-- A068228 lists the primes congruent to 1 mod 12. -/
theorem A068228.anchor (n : ℕ) (hn : 1 ≤ n) :
    A068228 n = (Nat.nth (fun p => p.Prime ∧ p % 12 = 1) (n - 1) : ℤ) := by
  simp only [A068228, A068228.P2780938449886948151.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 12 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A068228.P2780938449886948151.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A068228.P2780938449886948151.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 12, by simp only [A068228.P2780938449886948151.f1, SequenceMachineLib.memo_apply]; omega⟩) _
