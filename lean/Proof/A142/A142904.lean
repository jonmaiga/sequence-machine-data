import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142904 lists the primes congruent to 26 mod 63. -/
theorem A142904.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142904 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 26) (n - 1) : ℤ) := by
  simp only [A142904, A142904.P15928257826511276623.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142904.P15928257826511276623.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142904.P15928257826511276623.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 37) / 63, by simp only [A142904.P15928257826511276623.f1, SequenceMachineLib.memo_apply]; omega⟩) _
