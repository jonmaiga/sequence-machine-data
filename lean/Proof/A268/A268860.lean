import Prog.A268.A2688
import Proof.Lib.PrimesMod

/-- A268860 lists the primes whose decimal expansion ends in 27. -/
theorem A268860.anchor (n : ℕ) (hn : 1 ≤ n) :
    A268860 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 27) (n - 1) : ℤ) := by
  simp only [A268860, A268860.P17754547523521005011.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 100 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A268860.P17754547523521005011.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A268860.P17754547523521005011.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 100, by simp only [A268860.P17754547523521005011.f1, SequenceMachineLib.memo_apply]; omega⟩) _
