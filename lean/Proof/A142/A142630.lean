import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142630 lists the primes congruent to 41 mod 55. -/
theorem A142630.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142630 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 41) (n - 1) : ℤ) := by
  simp only [A142630, A142630.P8484613795103572701.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142630.P8484613795103572701.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142630.P8484613795103572701.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 14) / 55, by simp only [A142630.P8484613795103572701.f1, SequenceMachineLib.memo_apply]; omega⟩) _
