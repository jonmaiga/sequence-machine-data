import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142548 lists the primes congruent to 18 mod 53. -/
theorem A142548.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142548 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 18) (n - 1) : ℤ) := by
  simp only [A142548, A142548.P13639296875527498970.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142548.P13639296875527498970.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142548.P13639296875527498970.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142548.P13639296875527498970.f1, SequenceMachineLib.memo_apply]; omega⟩) _
