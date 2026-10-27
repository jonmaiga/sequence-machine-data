import Prog.A216.A2169
import Proof.Lib.PrimesMod

/-- A216970 lists the primes congruent to 1 mod 37. -/
theorem A216970.anchor (n : ℕ) (hn : 1 ≤ n) :
    A216970 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 1) (n - 1) : ℤ) := by
  simp only [A216970, A216970.P7935546219236162330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A216970.P7935546219236162330.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A216970.P7935546219236162330.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A216970.P7935546219236162330.f1, SequenceMachineLib.memo_apply]; omega⟩) _
