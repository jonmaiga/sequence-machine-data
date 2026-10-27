import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141933 lists the primes congruent to 8 mod 25. -/
theorem A141933.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141933 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 8) (n - 1) : ℤ) := by
  simp only [A141933, A141933.P8683045149919439079.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 25 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141933.P8683045149919439079.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141933.P8683045149919439079.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 25, by simp only [A141933.P8683045149919439079.f1, SequenceMachineLib.memo_apply]; omega⟩) _
