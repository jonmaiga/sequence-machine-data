import Prog.A007.A0075
import Proof.Lib.PrimesMod

/-- A007522 lists the primes congruent to 7 mod 8. -/
theorem A007522.anchor (n : ℕ) (hn : 1 ≤ n) :
    A007522 n = (Nat.nth (fun p => p.Prime ∧ p % 8 = 7) (n - 1) : ℤ) := by
  simp only [A007522, A007522.P292576302828348404.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 8 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A007522.P292576302828348404.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A007522.P292576302828348404.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 8, by simp only [A007522.P292576302828348404.f1, SequenceMachineLib.memo_apply]; omega⟩) _
