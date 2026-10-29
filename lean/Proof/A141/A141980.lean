import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141980 lists the primes congruent to 4 mod 29. -/
theorem A141980.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141980 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 4) (n - 1) : ℤ) := by
  simp only [A141980, A141980.P3857999304278642684.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 29 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141980.P3857999304278642684.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141980.P3857999304278642684.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 29, by simp only [A141980.P3857999304278642684.f1, SequenceMachineLib.memo_apply]; omega⟩) _
