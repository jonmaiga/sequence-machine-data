import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141975 lists the primes congruent to 25 mod 28. -/
theorem A141975.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141975 n = (Nat.nth (fun p => p.Prime ∧ p % 28 = 25) (n - 1) : ℤ) := by
  simp only [A141975, A141975.P13716968267536851497.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 28 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141975.P13716968267536851497.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141975.P13716968267536851497.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 28, by simp only [A141975.P13716968267536851497.f1, SequenceMachineLib.memo_apply]; omega⟩) _
