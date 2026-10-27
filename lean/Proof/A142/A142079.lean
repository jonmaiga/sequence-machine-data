import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142079 lists the primes congruent to 4 mod 35. -/
theorem A142079.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142079 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 4) (n - 1) : ℤ) := by
  simp only [A142079, A142079.P13141199653635146576.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 35 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142079.P13141199653635146576.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142079.P13141199653635146576.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 35, by simp only [A142079.P13141199653635146576.f1, SequenceMachineLib.memo_apply]; omega⟩) _
