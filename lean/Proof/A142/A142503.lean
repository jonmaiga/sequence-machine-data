import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142503 lists the primes congruent to 44 mod 51. -/
theorem A142503.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142503 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 44) (n - 1) : ℤ) := by
  simp only [A142503, A142503.P714404954567768703.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 44 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142503.P714404954567768703.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142503.P714404954567768703.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 51, by simp only [A142503.P714404954567768703.f1, SequenceMachineLib.memo_apply]; omega⟩) _
