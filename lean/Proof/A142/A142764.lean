import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142764 lists the primes congruent to 37 mod 59. -/
theorem A142764.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142764 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 37) (n - 1) : ℤ) := by
  simp only [A142764, A142764.P607253970076106302.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142764.P607253970076106302.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142764.P607253970076106302.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 22) / 59, by simp only [A142764.P607253970076106302.f1, SequenceMachineLib.memo_apply]; omega⟩) _
