import Prog.A105.A1051
import Proof.Lib.PrimesMod

/-- A105128 lists the primes congruent to 33 mod 64. -/
theorem A105128.anchor (n : ℕ) (hn : 1 ≤ n) :
    A105128 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 33) (n - 1) : ℤ) := by
  simp only [A105128, A105128.P8512642623754124101.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A105128.P8512642623754124101.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A105128.P8512642623754124101.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 31) / 64, by simp only [A105128.P8512642623754124101.f1, SequenceMachineLib.memo_apply]; omega⟩) _
