import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142083 lists the primes congruent to 11 mod 35. -/
theorem A142083.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142083 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 11) (n - 1) : ℤ) := by
  simp only [A142083, A142083.P10277068139363312282.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 35 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142083.P10277068139363312282.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142083.P10277068139363312282.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 35, by simp only [A142083.P10277068139363312282.f1, SequenceMachineLib.memo_apply]; omega⟩) _
