import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142110 lists the primes congruent to 31 mod 36. -/
theorem A142110.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142110 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 31) (n - 1) : ℤ) := by
  simp only [A142110, A142110.P8631013865567114222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 36 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142110.P8631013865567114222.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142110.P8631013865567114222.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 36, by simp only [A142110.P8631013865567114222.f1, SequenceMachineLib.memo_apply]; omega⟩) _
