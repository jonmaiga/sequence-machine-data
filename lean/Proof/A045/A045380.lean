import Prog.A045.A0453
import Proof.Lib.PrimesMod

/-- A045380 lists the primes congruent to 2 mod 5. -/
theorem A045380.anchor (n : ℕ) (hn : 1 ≤ n) :
    A045380 n = (Nat.nth (fun p => p.Prime ∧ p % 5 = 2) (n - 1) : ℤ) := by
  simp only [A045380, A045380.P13557672855318644692.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 5 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A045380.P13557672855318644692.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A045380.P13557672855318644692.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 5, by simp only [A045380.P13557672855318644692.f1, SequenceMachineLib.memo_apply]; omega⟩) _
