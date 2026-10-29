import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142431 lists the primes congruent to 20 mod 49. -/
theorem A142431.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142431 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 20) (n - 1) : ℤ) := by
  simp only [A142431, A142431.P7787216754401770038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142431.P7787216754401770038.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142431.P7787216754401770038.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142431.P7787216754401770038.f1, SequenceMachineLib.memo_apply]; omega⟩) _
