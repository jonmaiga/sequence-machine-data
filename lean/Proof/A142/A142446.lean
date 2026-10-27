import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142446 lists the primes congruent to 38 mod 49. -/
theorem A142446.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142446 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 38) (n - 1) : ℤ) := by
  simp only [A142446, A142446.P15401058239902955193.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142446.P15401058239902955193.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142446.P15401058239902955193.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 49, by simp only [A142446.P15401058239902955193.f1, SequenceMachineLib.memo_apply]; omega⟩) _
