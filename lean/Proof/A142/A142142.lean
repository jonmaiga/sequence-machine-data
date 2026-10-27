import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142142 lists the primes congruent to 33 mod 37. -/
theorem A142142.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142142 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 33) (n - 1) : ℤ) := by
  simp only [A142142, A142142.P6164594379237733275.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142142.P6164594379237733275.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142142.P6164594379237733275.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 37, by simp only [A142142.P6164594379237733275.f1, SequenceMachineLib.memo_apply]; omega⟩) _
