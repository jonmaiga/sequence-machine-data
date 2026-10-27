import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141996 lists the primes congruent to 20 mod 29. -/
theorem A141996.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141996 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 20) (n - 1) : ℤ) := by
  simp only [A141996, A141996.P18056026201546484257.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141996.P18056026201546484257.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141996.P18056026201546484257.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 29, by simp only [A141996.P18056026201546484257.f1, SequenceMachineLib.memo_apply]; omega⟩) _
