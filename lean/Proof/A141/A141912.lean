import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141912 lists the primes congruent to 8 mod 23. -/
theorem A141912.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141912 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 8) (n - 1) : ℤ) := by
  simp only [A141912, A141912.P8202784763525436486.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 23 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141912.P8202784763525436486.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141912.P8202784763525436486.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 23, by simp only [A141912.P8202784763525436486.f1, SequenceMachineLib.memo_apply]; omega⟩) _
