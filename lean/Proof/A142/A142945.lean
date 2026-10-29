import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142945 lists the primes congruent to 45 mod 64. -/
theorem A142945.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142945 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 45) (n - 1) : ℤ) := by
  simp only [A142945, A142945.P2563163270019381156.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 45 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142945.P2563163270019381156.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142945.P2563163270019381156.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 64, by simp only [A142945.P2563163270019381156.f1, SequenceMachineLib.memo_apply]; omega⟩) _
