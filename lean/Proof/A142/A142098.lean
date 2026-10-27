import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142098 lists the primes congruent to 33 mod 35. -/
theorem A142098.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142098 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 33) (n - 1) : ℤ) := by
  simp only [A142098, A142098.P10542078899576561010.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142098.P10542078899576561010.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142098.P10542078899576561010.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 35, by simp only [A142098.P10542078899576561010.f1, SequenceMachineLib.memo_apply]; omega⟩) _
