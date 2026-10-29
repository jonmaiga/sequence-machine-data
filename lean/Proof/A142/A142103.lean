import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142103 lists the primes congruent to 11 mod 36. -/
theorem A142103.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142103 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 11) (n - 1) : ℤ) := by
  simp only [A142103, A142103.P10005846490017536618.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 36 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142103.P10005846490017536618.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142103.P10005846490017536618.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 36, by simp only [A142103.P10005846490017536618.f1, SequenceMachineLib.memo_apply]; omega⟩) _
