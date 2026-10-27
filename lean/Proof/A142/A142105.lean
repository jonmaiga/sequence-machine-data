import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142105 lists the primes congruent to 17 mod 36. -/
theorem A142105.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142105 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 17) (n - 1) : ℤ) := by
  simp only [A142105, A142105.P18419970149999654724.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 36 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142105.P18419970149999654724.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142105.P18419970149999654724.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 36, by simp only [A142105.P18419970149999654724.f1, SequenceMachineLib.memo_apply]; omega⟩) _
