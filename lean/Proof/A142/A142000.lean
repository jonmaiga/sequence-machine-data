import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142000 lists the primes congruent to 24 mod 29. -/
theorem A142000.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142000 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 24) (n - 1) : ℤ) := by
  simp only [A142000, A142000.P15065755748301898321.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142000.P15065755748301898321.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142000.P15065755748301898321.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 29, by simp only [A142000.P15065755748301898321.f1, SequenceMachineLib.memo_apply]; omega⟩) _
