import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142508 lists the primes congruent to 1 mod 52. -/
theorem A142508.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142508 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 1) (n - 1) : ℤ) := by
  simp only [A142508, A142508.P10837616515559294826.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 52 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142508.P10837616515559294826.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142508.P10837616515559294826.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 52, by simp only [A142508.P10837616515559294826.f1, SequenceMachineLib.memo_apply]; omega⟩) _
