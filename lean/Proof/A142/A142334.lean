import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142334 lists the primes congruent to 43 mod 45. -/
theorem A142334.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142334 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 43) (n - 1) : ℤ) := by
  simp only [A142334, A142334.P14791503635872050758.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 45 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142334.P14791503635872050758.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142334.P14791503635872050758.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 45, by simp only [A142334.P14791503635872050758.f1, SequenceMachineLib.memo_apply]; omega⟩) _
