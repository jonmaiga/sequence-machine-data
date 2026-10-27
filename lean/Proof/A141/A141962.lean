import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141962 lists the primes congruent to 22 mod 27. -/
theorem A141962.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141962 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 22) (n - 1) : ℤ) := by
  simp only [A141962, A141962.P10272407572504658729.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 27 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141962.P10272407572504658729.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141962.P10272407572504658729.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 27, by simp only [A141962.P10272407572504658729.f1, SequenceMachineLib.memo_apply]; omega⟩) _
