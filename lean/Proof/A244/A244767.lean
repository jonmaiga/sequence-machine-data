import Prog.A244.A2447
import Proof.Lib.PrimesMod

/-- A244767 lists the primes whose decimal expansion ends in 29. -/
theorem A244767.anchor (n : ℕ) (hn : 1 ≤ n) :
    A244767 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 29) (n - 1) : ℤ) := by
  simp only [A244767, A244767.P13304431940333006892.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 100 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A244767.P13304431940333006892.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A244767.P13304431940333006892.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 100, by simp only [A244767.P13304431940333006892.f1, SequenceMachineLib.memo_apply]; omega⟩) _
