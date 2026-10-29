import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142032 lists the primes congruent to 28 mod 31. -/
theorem A142032.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142032 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 28) (n - 1) : ℤ) := by
  simp only [A142032, A142032.P10932960151328989973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 31 28 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142032.P10932960151328989973.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142032.P10932960151328989973.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 31, by simp only [A142032.P10932960151328989973.f1, SequenceMachineLib.memo_apply]; omega⟩) _
