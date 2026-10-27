import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142525 lists the primes congruent to 37 mod 52. -/
theorem A142525.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142525 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 37) (n - 1) : ℤ) := by
  simp only [A142525, A142525.P15563797761922430760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 52 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142525.P15563797761922430760.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142525.P15563797761922430760.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 52, by simp only [A142525.P15563797761922430760.f1, SequenceMachineLib.memo_apply]; omega⟩) _
