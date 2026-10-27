import Prog.A139.A1395
import Proof.Lib.PrimesMod

/-- A139530 lists the primes congruent to 13 mod 24. -/
theorem A139530.anchor (n : ℕ) (hn : 1 ≤ n) :
    A139530 n = (Nat.nth (fun p => p.Prime ∧ p % 24 = 13) (n - 1) : ℤ) := by
  simp only [A139530, A139530.P2484004356892186038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 24 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A139530.P2484004356892186038.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A139530.P2484004356892186038.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 24, by simp only [A139530.P2484004356892186038.f1, SequenceMachineLib.memo_apply]; omega⟩) _
