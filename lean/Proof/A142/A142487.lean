import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142487 lists the primes congruent to 19 mod 51. -/
theorem A142487.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142487 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 19) (n - 1) : ℤ) := by
  simp only [A142487, A142487.P12567645392230628047.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142487.P12567645392230628047.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142487.P12567645392230628047.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142487.P12567645392230628047.f1, SequenceMachineLib.memo_apply]; omega⟩) _
