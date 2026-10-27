import Prog.A094.A0944
import Proof.Lib.PrimesMod

/-- A094407 lists the primes congruent to 1 mod 16. -/
theorem A094407.anchor (n : ℕ) (hn : 1 ≤ n) :
    A094407 n = (Nat.nth (fun p => p.Prime ∧ p % 16 = 1) (n - 1) : ℤ) := by
  simp only [A094407, A094407.P7772671639782416397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 16 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A094407.P7772671639782416397.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A094407.P7772671639782416397.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 16, by simp only [A094407.P7772671639782416397.f1, SequenceMachineLib.memo_apply]; omega⟩) _
