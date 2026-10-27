import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142851 lists the primes congruent to 53 mod 61. -/
theorem A142851.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142851 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 53) (n - 1) : ℤ) := by
  simp only [A142851, A142851.P10278692083776061170.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 53 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142851.P10278692083776061170.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142851.P10278692083776061170.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 61, by simp only [A142851.P10278692083776061170.f1, SequenceMachineLib.memo_apply]; omega⟩) _
