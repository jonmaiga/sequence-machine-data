import Prog.A141.A1411
import Proof.Lib.PrimesMod

/-- A141196 lists the primes congruent to 13 mod 16. -/
theorem A141196.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141196 n = (Nat.nth (fun p => p.Prime ∧ p % 16 = 13) (n - 1) : ℤ) := by
  simp only [A141196, A141196.P13853549410394302553.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 16 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141196.P13853549410394302553.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141196.P13853549410394302553.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 16, by simp only [A141196.P13853549410394302553.f1, SequenceMachineLib.memo_apply]; omega⟩) _
