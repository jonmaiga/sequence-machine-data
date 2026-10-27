import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142528 lists the primes congruent to 45 mod 52. -/
theorem A142528.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142528 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 45) (n - 1) : ℤ) := by
  simp only [A142528, A142528.P8263013899178342337.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 52 45 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142528.P8263013899178342337.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142528.P8263013899178342337.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 52, by simp only [A142528.P8263013899178342337.f1, SequenceMachineLib.memo_apply]; omega⟩) _
