import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142132 lists the primes congruent to 23 mod 37. -/
theorem A142132.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142132 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 23) (n - 1) : ℤ) := by
  simp only [A142132, A142132.P2584337457914182453.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142132.P2584337457914182453.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142132.P2584337457914182453.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 14) / 37, by simp only [A142132.P2584337457914182453.f1, SequenceMachineLib.memo_apply]; omega⟩) _
