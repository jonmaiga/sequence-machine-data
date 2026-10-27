import Prog.A244.A2447
import Proof.Lib.PrimesMod

/-- A244774 lists the primes whose decimal expansion ends in 73. -/
theorem A244774.anchor (n : ℕ) (hn : 1 ≤ n) :
    A244774 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 73) (n - 1) : ℤ) := by
  simp only [A244774, A244774.P13828711858479400930.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 100 73 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A244774.P13828711858479400930.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A244774.P13828711858479400930.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 27) / 100, by simp only [A244774.P13828711858479400930.f1, SequenceMachineLib.memo_apply]; omega⟩) _
