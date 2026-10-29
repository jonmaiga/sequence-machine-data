import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142680 lists the primes congruent to 25 mod 57. -/
theorem A142680.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142680 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 25) (n - 1) : ℤ) := by
  simp only [A142680, A142680.P1921357263205162532.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 25 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142680.P1921357263205162532.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142680.P1921357263205162532.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 32) / 57, by simp only [A142680.P1921357263205162532.f1, SequenceMachineLib.memo_apply]; omega⟩) _
