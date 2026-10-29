import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142826 lists the primes congruent to 28 mod 61. -/
theorem A142826.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142826 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 28) (n - 1) : ℤ) := by
  simp only [A142826, A142826.P1417636724773366379.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 28 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142826.P1417636724773366379.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142826.P1417636724773366379.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142826.P1417636724773366379.f1, SequenceMachineLib.memo_apply]; omega⟩) _
