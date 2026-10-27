import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142775 lists the primes congruent to 48 mod 59. -/
theorem A142775.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142775 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 48) (n - 1) : ℤ) := by
  simp only [A142775, A142775.P8725221765347327823.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 48 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142775.P8725221765347327823.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142775.P8725221765347327823.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 59, by simp only [A142775.P8725221765347327823.f1, SequenceMachineLib.memo_apply]; omega⟩) _
