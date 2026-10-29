import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142193 lists the primes congruent to 27 mod 40. -/
theorem A142193.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142193 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 27) (n - 1) : ℤ) := by
  simp only [A142193, A142193.P14033784844832074451.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 40 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142193.P14033784844832074451.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142193.P14033784844832074451.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 40, by simp only [A142193.P14033784844832074451.f1, SequenceMachineLib.memo_apply]; omega⟩) _
