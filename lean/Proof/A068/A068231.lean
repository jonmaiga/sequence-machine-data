import Prog.A068.A0682
import Proof.Lib.PrimesMod

/-- A068231 lists the primes congruent to 11 mod 12. -/
theorem A068231.anchor (n : ℕ) (hn : 1 ≤ n) :
    A068231 n = (Nat.nth (fun p => p.Prime ∧ p % 12 = 11) (n - 1) : ℤ) := by
  simp only [A068231, A068231.P17213326245537033468.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 12 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A068231.P17213326245537033468.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A068231.P17213326245537033468.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 12, by simp only [A068231.P17213326245537033468.f1, SequenceMachineLib.memo_apply]; omega⟩) _
