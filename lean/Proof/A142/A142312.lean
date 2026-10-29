import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142312 lists the primes congruent to 1 mod 45. -/
theorem A142312.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142312 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 1) (n - 1) : ℤ) := by
  simp only [A142312, A142312.P14164493053183842634.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142312.P14164493053183842634.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142312.P14164493053183842634.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142312.P14164493053183842634.f1, SequenceMachineLib.memo_apply]; omega⟩) _
