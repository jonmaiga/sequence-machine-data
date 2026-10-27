import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142695 lists the primes congruent to 49 mod 57. -/
theorem A142695.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142695 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 49) (n - 1) : ℤ) := by
  simp only [A142695, A142695.P6021648361004792336.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 49 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142695.P6021648361004792336.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142695.P6021648361004792336.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 57, by simp only [A142695.P6021648361004792336.f1, SequenceMachineLib.memo_apply]; omega⟩) _
