import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142898 lists the primes congruent to 17 mod 63. -/
theorem A142898.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142898 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 17) (n - 1) : ℤ) := by
  simp only [A142898, A142898.P11273299209455078094.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142898.P11273299209455078094.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142898.P11273299209455078094.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142898.P11273299209455078094.f1, SequenceMachineLib.memo_apply]; omega⟩) _
