import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142507 lists the primes congruent to 50 mod 51. -/
theorem A142507.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142507 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 50) (n - 1) : ℤ) := by
  simp only [A142507, A142507.P7060105591973240231.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 50 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142507.P7060105591973240231.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142507.P7060105591973240231.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 51, by simp only [A142507.P7060105591973240231.f1, SequenceMachineLib.memo_apply]; omega⟩) _
