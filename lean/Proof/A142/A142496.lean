import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142496 lists the primes congruent to 32 mod 51. -/
theorem A142496.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142496 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 32) (n - 1) : ℤ) := by
  simp only [A142496, A142496.P11677570639286626683.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142496.P11677570639286626683.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142496.P11677570639286626683.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 51, by simp only [A142496.P11677570639286626683.f1, SequenceMachineLib.memo_apply]; omega⟩) _
