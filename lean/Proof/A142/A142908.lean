import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142908 lists the primes congruent to 34 mod 63. -/
theorem A142908.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142908 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 34) (n - 1) : ℤ) := by
  simp only [A142908, A142908.P8797079807352569714.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 63 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142908.P8797079807352569714.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142908.P8797079807352569714.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 29) / 63, by simp only [A142908.P8797079807352569714.f1, SequenceMachineLib.memo_apply]; omega⟩) _
