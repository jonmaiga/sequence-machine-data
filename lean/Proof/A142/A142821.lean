import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142821 lists the primes congruent to 23 mod 61. -/
theorem A142821.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142821 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 23) (n - 1) : ℤ) := by
  simp only [A142821, A142821.P17408734384682648918.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142821.P17408734384682648918.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142821.P17408734384682648918.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142821.P17408734384682648918.f1, SequenceMachineLib.memo_apply]; omega⟩) _
