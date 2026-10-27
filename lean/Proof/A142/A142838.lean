import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142838 lists the primes congruent to 40 mod 61. -/
theorem A142838.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142838 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 40) (n - 1) : ℤ) := by
  simp only [A142838, A142838.P8063950462163677651.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 40 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142838.P8063950462163677651.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142838.P8063950462163677651.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 21) / 61, by simp only [A142838.P8063950462163677651.f1, SequenceMachineLib.memo_apply]; omega⟩) _
