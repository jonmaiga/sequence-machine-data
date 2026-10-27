import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142004 lists the primes congruent to 28 mod 29. -/
theorem A142004.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142004 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 28) (n - 1) : ℤ) := by
  simp only [A142004, A142004.P14454865169866432114.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 29 28 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142004.P14454865169866432114.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142004.P14454865169866432114.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 29, by simp only [A142004.P14454865169866432114.f1, SequenceMachineLib.memo_apply]; omega⟩) _
