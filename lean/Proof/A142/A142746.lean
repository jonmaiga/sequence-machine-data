import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142746 lists the primes congruent to 19 mod 59. -/
theorem A142746.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142746 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 19) (n - 1) : ℤ) := by
  simp only [A142746, A142746.P12554973249002192024.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142746.P12554973249002192024.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142746.P12554973249002192024.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142746.P12554973249002192024.f1, SequenceMachineLib.memo_apply]; omega⟩) _
