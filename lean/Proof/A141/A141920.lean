import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141920 lists the primes congruent to 16 mod 23. -/
theorem A141920.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141920 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 16) (n - 1) : ℤ) := by
  simp only [A141920, A141920.P15783077897538202799.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141920.P15783077897538202799.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141920.P15783077897538202799.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 23, by simp only [A141920.P15783077897538202799.f1, SequenceMachineLib.memo_apply]; omega⟩) _
