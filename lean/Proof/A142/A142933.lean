import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142933 lists the primes congruent to 17 mod 64. -/
theorem A142933.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142933 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 17) (n - 1) : ℤ) := by
  simp only [A142933, A142933.P2848204961856478518.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142933.P2848204961856478518.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142933.P2848204961856478518.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 47) / 64, by simp only [A142933.P2848204961856478518.f1, SequenceMachineLib.memo_apply]; omega⟩) _
