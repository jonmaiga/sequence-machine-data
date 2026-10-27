import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141937 lists the primes congruent to 13 mod 25. -/
theorem A141937.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141937 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 13) (n - 1) : ℤ) := by
  simp only [A141937, A141937.P14001958662391153384.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 25 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141937.P14001958662391153384.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141937.P14001958662391153384.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 25, by simp only [A141937.P14001958662391153384.f1, SequenceMachineLib.memo_apply]; omega⟩) _
