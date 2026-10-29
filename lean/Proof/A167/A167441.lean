import Prog.A167.A1674
import Proof.Lib.PrimesMod

/-- A167441 lists the primes whose decimal expansion ends in 71. -/
theorem A167441.anchor (n : ℕ) (hn : 1 ≤ n) :
    A167441 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 71) (n - 1) : ℤ) := by
  simp only [A167441, A167441.P13567645921692135530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 100 71 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A167441.P13567645921692135530.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A167441.P13567645921692135530.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 29) / 100, by simp only [A167441.P13567645921692135530.f1, SequenceMachineLib.memo_apply]; omega⟩) _
