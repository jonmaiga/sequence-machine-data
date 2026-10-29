import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141997 lists the primes congruent to 21 mod 29. -/
theorem A141997.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141997 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 21) (n - 1) : ℤ) := by
  simp only [A141997, A141997.P6209683941310662624.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141997.P6209683941310662624.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141997.P6209683941310662624.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 29, by simp only [A141997.P6209683941310662624.f1, SequenceMachineLib.memo_apply]; omega⟩) _
