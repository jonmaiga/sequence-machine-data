import Prog.A244.A2447
import Proof.Lib.PrimesMod

/-- A244778 lists the primes whose decimal expansion ends in 97. -/
theorem A244778.anchor (n : ℕ) (hn : 1 ≤ n) :
    A244778 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 97) (n - 1) : ℤ) := by
  simp only [A244778, A244778.P15106645028215324979.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 100 97 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A244778.P15106645028215324979.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A244778.P15106645028215324979.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 100, by simp only [A244778.P15106645028215324979.f1, SequenceMachineLib.memo_apply]; omega⟩) _
