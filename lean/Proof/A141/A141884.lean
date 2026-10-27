import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141884 lists the primes congruent to 11 mod 20. -/
theorem A141884.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141884 n = (Nat.nth (fun p => p.Prime ∧ p % 20 = 11) (n - 1) : ℤ) := by
  simp only [A141884, A141884.P14265556492563437523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 20 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141884.P14265556492563437523.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141884.P14265556492563437523.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 20, by simp only [A141884.P14265556492563437523.f1, SequenceMachineLib.memo_apply]; omega⟩) _
