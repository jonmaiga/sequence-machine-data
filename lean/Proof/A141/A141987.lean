import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141987 lists the primes congruent to 11 mod 29. -/
theorem A141987.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141987 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 11) (n - 1) : ℤ) := by
  simp only [A141987, A141987.P10298866433799292081.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 29 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141987.P10298866433799292081.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141987.P10298866433799292081.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 29, by simp only [A141987.P10298866433799292081.f1, SequenceMachineLib.memo_apply]; omega⟩) _
