import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142618 lists the primes congruent to 24 mod 55. -/
theorem A142618.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142618 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 24) (n - 1) : ℤ) := by
  simp only [A142618, A142618.P11106628559668565554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142618.P11106628559668565554.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142618.P11106628559668565554.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142618.P11106628559668565554.f1, SequenceMachineLib.memo_apply]; omega⟩) _
