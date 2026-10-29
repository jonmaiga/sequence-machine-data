import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142546 lists the primes congruent to 16 mod 53. -/
theorem A142546.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142546 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 16) (n - 1) : ℤ) := by
  simp only [A142546, A142546.P18148107209974160927.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142546.P18148107209974160927.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142546.P18148107209974160927.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142546.P18148107209974160927.f1, SequenceMachineLib.memo_apply]; omega⟩) _
