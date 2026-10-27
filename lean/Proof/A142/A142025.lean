import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142025 lists the primes congruent to 21 mod 31. -/
theorem A142025.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142025 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 21) (n - 1) : ℤ) := by
  simp only [A142025, A142025.P7961048039919575719.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 31 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142025.P7961048039919575719.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142025.P7961048039919575719.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 31, by simp only [A142025.P7961048039919575719.f1, SequenceMachineLib.memo_apply]; omega⟩) _
