import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142002 lists the primes congruent to 26 mod 29. -/
theorem A142002.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142002 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 26) (n - 1) : ℤ) := by
  simp only [A142002, A142002.P14421223377485261696.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142002.P14421223377485261696.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142002.P14421223377485261696.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 29, by simp only [A142002.P14421223377485261696.f1, SequenceMachineLib.memo_apply]; omega⟩) _
