import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142450 lists the primes congruent to 43 mod 49. -/
theorem A142450.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142450 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 43) (n - 1) : ℤ) := by
  simp only [A142450, A142450.P14669569743645078518.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142450.P14669569743645078518.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142450.P14669569743645078518.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 49, by simp only [A142450.P14669569743645078518.f1, SequenceMachineLib.memo_apply]; omega⟩) _
