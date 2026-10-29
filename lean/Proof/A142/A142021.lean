import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142021 lists the primes congruent to 17 mod 31. -/
theorem A142021.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142021 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 17) (n - 1) : ℤ) := by
  simp only [A142021, A142021.P15168188517911633826.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 31 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142021.P15168188517911633826.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142021.P15168188517911633826.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 31, by simp only [A142021.P15168188517911633826.f1, SequenceMachineLib.memo_apply]; omega⟩) _
