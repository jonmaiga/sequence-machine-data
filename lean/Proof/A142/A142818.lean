import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142818 lists the primes congruent to 20 mod 61. -/
theorem A142818.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142818 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 20) (n - 1) : ℤ) := by
  simp only [A142818, A142818.P17172144998852855688.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142818.P17172144998852855688.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142818.P17172144998852855688.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142818.P17172144998852855688.f1, SequenceMachineLib.memo_apply]; omega⟩) _
