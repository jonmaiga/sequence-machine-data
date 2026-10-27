import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142173 lists the primes congruent to 23 mod 39. -/
theorem A142173.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142173 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 23) (n - 1) : ℤ) := by
  simp only [A142173, A142173.P16811257775198313937.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 39 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142173.P16811257775198313937.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142173.P16811257775198313937.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 16) / 39, by simp only [A142173.P16811257775198313937.f1, SequenceMachineLib.memo_apply]; omega⟩) _
