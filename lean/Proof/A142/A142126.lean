import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142126 lists the primes congruent to 17 mod 37. -/
theorem A142126.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142126 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 17) (n - 1) : ℤ) := by
  simp only [A142126, A142126.P10049760971859399161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142126.P10049760971859399161.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142126.P10049760971859399161.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142126.P10049760971859399161.f1, SequenceMachineLib.memo_apply]; omega⟩) _
