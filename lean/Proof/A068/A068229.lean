import Prog.A068.A0682
import Proof.Lib.PrimesMod

/-- A068229 lists the primes congruent to 7 mod 12. -/
theorem A068229.anchor (n : ℕ) (hn : 1 ≤ n) :
    A068229 n = (Nat.nth (fun p => p.Prime ∧ p % 12 = 7) (n - 1) : ℤ) := by
  simp only [A068229, A068229.P4621681780880692968.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 12 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A068229.P4621681780880692968.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A068229.P4621681780880692968.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 12, by simp only [A068229.P4621681780880692968.f1, SequenceMachineLib.memo_apply]; omega⟩) _
