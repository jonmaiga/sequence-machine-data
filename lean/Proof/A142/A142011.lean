import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142011 lists the primes congruent to 7 mod 31. -/
theorem A142011.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142011 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 7) (n - 1) : ℤ) := by
  simp only [A142011, A142011.P15778736285981160088.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 31 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142011.P15778736285981160088.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142011.P15778736285981160088.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 31, by simp only [A142011.P15778736285981160088.f1, SequenceMachineLib.memo_apply]; omega⟩) _
