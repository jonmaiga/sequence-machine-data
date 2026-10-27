import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142065 lists the primes congruent to 28 mod 33. -/
theorem A142065.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142065 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 28) (n - 1) : ℤ) := by
  simp only [A142065, A142065.P7129530371948878668.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 33 28 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142065.P7129530371948878668.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142065.P7129530371948878668.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 33, by simp only [A142065.P7129530371948878668.f1, SequenceMachineLib.memo_apply]; omega⟩) _
