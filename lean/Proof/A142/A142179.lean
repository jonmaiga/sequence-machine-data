import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142179 lists the primes congruent to 34 mod 39. -/
theorem A142179.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142179 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 34) (n - 1) : ℤ) := by
  simp only [A142179, A142179.P15953761654610747245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 39 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142179.P15953761654610747245.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142179.P15953761654610747245.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 39, by simp only [A142179.P15953761654610747245.f1, SequenceMachineLib.memo_apply]; omega⟩) _
