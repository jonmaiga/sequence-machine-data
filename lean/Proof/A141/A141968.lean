import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141968 lists the primes congruent to 9 mod 28. -/
theorem A141968.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141968 n = (Nat.nth (fun p => p.Prime ∧ p % 28 = 9) (n - 1) : ℤ) := by
  simp only [A141968, A141968.P7913412016418299999.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 28 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141968.P7913412016418299999.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141968.P7913412016418299999.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 28, by simp only [A141968.P7913412016418299999.f1, SequenceMachineLib.memo_apply]; omega⟩) _
