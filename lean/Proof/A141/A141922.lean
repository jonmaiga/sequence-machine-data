import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141922 lists the primes congruent to 18 mod 23. -/
theorem A141922.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141922 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 18) (n - 1) : ℤ) := by
  simp only [A141922, A141922.P16515618779268983969.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 23 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141922.P16515618779268983969.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141922.P16515618779268983969.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 23, by simp only [A141922.P16515618779268983969.f1, SequenceMachineLib.memo_apply]; omega⟩) _
