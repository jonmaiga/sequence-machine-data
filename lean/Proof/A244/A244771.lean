import Prog.A244.A2447
import Proof.Lib.PrimesMod

/-- A244771 lists the primes whose decimal expansion ends in 53. -/
theorem A244771.anchor (n : ℕ) (hn : 1 ≤ n) :
    A244771 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 53) (n - 1) : ℤ) := by
  simp only [A244771, A244771.P15240048733038666063.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 100 53 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A244771.P15240048733038666063.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A244771.P15240048733038666063.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 47) / 100, by simp only [A244771.P15240048733038666063.f1, SequenceMachineLib.memo_apply]; omega⟩) _
