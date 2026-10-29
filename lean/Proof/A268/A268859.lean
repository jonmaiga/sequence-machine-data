import Prog.A268.A2688
import Proof.Lib.PrimesMod

/-- A268859 lists the primes whose decimal expansion ends in 21. -/
theorem A268859.anchor (n : ℕ) (hn : 1 ≤ n) :
    A268859 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 21) (n - 1) : ℤ) := by
  simp only [A268859, A268859.P16369049766799216394.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 100 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A268859.P16369049766799216394.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A268859.P16369049766799216394.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 100, by simp only [A268859.P16369049766799216394.f1, SequenceMachineLib.memo_apply]; omega⟩) _
