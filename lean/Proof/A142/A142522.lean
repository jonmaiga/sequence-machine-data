import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142522 lists the primes congruent to 31 mod 52. -/
theorem A142522.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142522 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 31) (n - 1) : ℤ) := by
  simp only [A142522, A142522.P11018006263627097626.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 52 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142522.P11018006263627097626.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142522.P11018006263627097626.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 21) / 52, by simp only [A142522.P11018006263627097626.f1, SequenceMachineLib.memo_apply]; omega⟩) _
