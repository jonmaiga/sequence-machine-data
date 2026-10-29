import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142538 lists the primes congruent to 8 mod 53. -/
theorem A142538.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142538 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 8) (n - 1) : ℤ) := by
  simp only [A142538, A142538.P10793442619171687906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142538.P10793442619171687906.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142538.P10793442619171687906.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142538.P10793442619171687906.f1, SequenceMachineLib.memo_apply]; omega⟩) _
