import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142374 lists the primes congruent to 23 mod 47. -/
theorem A142374.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142374 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 23) (n - 1) : ℤ) := by
  simp only [A142374, A142374.P10160663467144381370.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142374.P10160663467144381370.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142374.P10160663467144381370.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 24) / 47, by simp only [A142374.P10160663467144381370.f1, SequenceMachineLib.memo_apply]; omega⟩) _
