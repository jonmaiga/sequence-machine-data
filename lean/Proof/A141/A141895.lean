import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141895 lists the primes congruent to 16 mod 21. -/
theorem A141895.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141895 n = (Nat.nth (fun p => p.Prime ∧ p % 21 = 16) (n - 1) : ℤ) := by
  simp only [A141895, A141895.P12734587034082310195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 21 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141895.P12734587034082310195.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141895.P12734587034082310195.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 21, by simp only [A141895.P12734587034082310195.f1, SequenceMachineLib.memo_apply]; omega⟩) _
