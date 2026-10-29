import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142111 lists the primes congruent to 35 mod 36. -/
theorem A142111.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142111 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 35) (n - 1) : ℤ) := by
  simp only [A142111, A142111.P16602472380021793625.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 36 35 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142111.P16602472380021793625.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142111.P16602472380021793625.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 36, by simp only [A142111.P16602472380021793625.f1, SequenceMachineLib.memo_apply]; omega⟩) _
