import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141946 lists the primes congruent to 24 mod 25. -/
theorem A141946.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141946 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 24) (n - 1) : ℤ) := by
  simp only [A141946, A141946.P10794365736569721315.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 25 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141946.P10794365736569721315.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141946.P10794365736569721315.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 25, by simp only [A141946.P10794365736569721315.f1, SequenceMachineLib.memo_apply]; omega⟩) _
