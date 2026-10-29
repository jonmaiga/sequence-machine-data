import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141850 lists the primes congruent to 3 mod 11. -/
theorem A141850.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141850 n = (Nat.nth (fun p => p.Prime ∧ p % 11 = 3) (n - 1) : ℤ) := by
  simp only [A141850, A141850.P2965218855640811810.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 11 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141850.P2965218855640811810.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141850.P2965218855640811810.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 11, by simp only [A141850.P2965218855640811810.f1, SequenceMachineLib.memo_apply]; omega⟩) _
