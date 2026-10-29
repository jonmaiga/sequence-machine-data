import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142805 lists the primes congruent to 7 mod 61. -/
theorem A142805.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142805 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 7) (n - 1) : ℤ) := by
  simp only [A142805, A142805.P7916996523121626458.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142805.P7916996523121626458.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142805.P7916996523121626458.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142805.P7916996523121626458.f1, SequenceMachineLib.memo_apply]; omega⟩) _
