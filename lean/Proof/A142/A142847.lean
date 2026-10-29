import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142847 lists the primes congruent to 49 mod 61. -/
theorem A142847.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142847 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 49) (n - 1) : ℤ) := by
  simp only [A142847, A142847.P8995699921699467177.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 49 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142847.P8995699921699467177.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142847.P8995699921699467177.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 61, by simp only [A142847.P8995699921699467177.f1, SequenceMachineLib.memo_apply]; omega⟩) _
