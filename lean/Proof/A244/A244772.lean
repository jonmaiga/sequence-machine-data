import Prog.A244.A2447
import Proof.Lib.PrimesMod

/-- A244772 lists the primes whose decimal expansion ends in 59. -/
theorem A244772.anchor (n : ℕ) (hn : 1 ≤ n) :
    A244772 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 59) (n - 1) : ℤ) := by
  simp only [A244772, A244772.P12631898429802115247.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 100 59 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A244772.P12631898429802115247.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A244772.P12631898429802115247.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 41) / 100, by simp only [A244772.P12631898429802115247.f1, SequenceMachineLib.memo_apply]; omega⟩) _
