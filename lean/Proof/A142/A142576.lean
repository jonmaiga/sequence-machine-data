import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142576 lists the primes congruent to 46 mod 53. -/
theorem A142576.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142576 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 46) (n - 1) : ℤ) := by
  simp only [A142576, A142576.P13179964568967412309.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 46 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142576.P13179964568967412309.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142576.P13179964568967412309.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 53, by simp only [A142576.P13179964568967412309.f1, SequenceMachineLib.memo_apply]; omega⟩) _
