import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142237 lists the primes congruent to 40 mod 41. -/
theorem A142237.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142237 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 40) (n - 1) : ℤ) := by
  simp only [A142237, A142237.P5412903853845632496.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 40 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142237.P5412903853845632496.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142237.P5412903853845632496.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 41, by simp only [A142237.P5412903853845632496.f1, SequenceMachineLib.memo_apply]; omega⟩) _
