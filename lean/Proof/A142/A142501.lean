import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142501 lists the primes congruent to 41 mod 51. -/
theorem A142501.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142501 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 41) (n - 1) : ℤ) := by
  simp only [A142501, A142501.P7513274774437985626.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142501.P7513274774437985626.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142501.P7513274774437985626.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 51, by simp only [A142501.P7513274774437985626.f1, SequenceMachineLib.memo_apply]; omega⟩) _
