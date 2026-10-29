import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141990 lists the primes congruent to 14 mod 29. -/
theorem A141990.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141990 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 14) (n - 1) : ℤ) := by
  simp only [A141990, A141990.P1843537591823554389.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141990.P1843537591823554389.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141990.P1843537591823554389.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 29, by simp only [A141990.P1843537591823554389.f1, SequenceMachineLib.memo_apply]; omega⟩) _
