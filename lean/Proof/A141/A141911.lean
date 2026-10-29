import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141911 lists the primes congruent to 7 mod 23. -/
theorem A141911.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141911 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 7) (n - 1) : ℤ) := by
  simp only [A141911, A141911.P17598538728419590406.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 23 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141911.P17598538728419590406.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141911.P17598538728419590406.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 23, by simp only [A141911.P17598538728419590406.f1, SequenceMachineLib.memo_apply]; omega⟩) _
