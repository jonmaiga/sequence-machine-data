import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142665 lists the primes congruent to 1 mod 57. -/
theorem A142665.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142665 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 1) (n - 1) : ℤ) := by
  simp only [A142665, A142665.P2011715876833513867.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142665.P2011715876833513867.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142665.P2011715876833513867.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142665.P2011715876833513867.f1, SequenceMachineLib.memo_apply]; omega⟩) _
