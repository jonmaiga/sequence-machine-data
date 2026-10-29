import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142935 lists the primes congruent to 23 mod 64. -/
theorem A142935.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142935 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 23) (n - 1) : ℤ) := by
  simp only [A142935, A142935.P9830366613878460616.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142935.P9830366613878460616.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142935.P9830366613878460616.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A142935.P9830366613878460616.f1, SequenceMachineLib.memo_apply]; omega⟩) _
