import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142439 lists the primes congruent to 30 mod 49. -/
theorem A142439.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142439 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 30) (n - 1) : ℤ) := by
  simp only [A142439, A142439.P10517324320887491304.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 30 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142439.P10517324320887491304.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142439.P10517324320887491304.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 49, by simp only [A142439.P10517324320887491304.f1, SequenceMachineLib.memo_apply]; omega⟩) _
