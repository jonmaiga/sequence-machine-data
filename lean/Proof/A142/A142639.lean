import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142639 lists the primes congruent to 53 mod 55. -/
theorem A142639.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142639 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 53) (n - 1) : ℤ) := by
  simp only [A142639, A142639.P1842716947885299063.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 53 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142639.P1842716947885299063.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142639.P1842716947885299063.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 55, by simp only [A142639.P1842716947885299063.f1, SequenceMachineLib.memo_apply]; omega⟩) _
