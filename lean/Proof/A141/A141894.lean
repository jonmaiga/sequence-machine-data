import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141894 lists the primes congruent to 13 mod 21. -/
theorem A141894.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141894 n = (Nat.nth (fun p => p.Prime ∧ p % 21 = 13) (n - 1) : ℤ) := by
  simp only [A141894, A141894.P2299718702940400355.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 21 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141894.P2299718702940400355.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141894.P2299718702940400355.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 21, by simp only [A141894.P2299718702940400355.f1, SequenceMachineLib.memo_apply]; omega⟩) _
