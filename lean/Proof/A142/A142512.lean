import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142512 lists the primes congruent to 9 mod 52. -/
theorem A142512.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142512 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 9) (n - 1) : ℤ) := by
  simp only [A142512, A142512.P8180680481272329230.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 52 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142512.P8180680481272329230.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142512.P8180680481272329230.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 52, by simp only [A142512.P8180680481272329230.f1, SequenceMachineLib.memo_apply]; omega⟩) _
