import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142161 lists the primes congruent to 4 mod 39. -/
theorem A142161.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142161 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 4) (n - 1) : ℤ) := by
  simp only [A142161, A142161.P15009882708745755107.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 39 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142161.P15009882708745755107.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142161.P15009882708745755107.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 39, by simp only [A142161.P15009882708745755107.f1, SequenceMachineLib.memo_apply]; omega⟩) _
