import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142027 lists the primes congruent to 23 mod 31. -/
theorem A142027.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142027 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 23) (n - 1) : ℤ) := by
  simp only [A142027, A142027.P1497223335984843028.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 31 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142027.P1497223335984843028.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142027.P1497223335984843028.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 31, by simp only [A142027.P1497223335984843028.f1, SequenceMachineLib.memo_apply]; omega⟩) _
