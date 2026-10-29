import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142852 lists the primes congruent to 54 mod 61. -/
theorem A142852.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142852 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 54) (n - 1) : ℤ) := by
  simp only [A142852, A142852.P2298445679294056846.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 54 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142852.P2298445679294056846.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142852.P2298445679294056846.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 61, by simp only [A142852.P2298445679294056846.f1, SequenceMachineLib.memo_apply]; omega⟩) _
