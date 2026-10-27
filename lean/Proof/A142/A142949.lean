import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142949 lists the primes congruent to 53 mod 64. -/
theorem A142949.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142949 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 53) (n - 1) : ℤ) := by
  simp only [A142949, A142949.P9238791156441791020.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 53 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142949.P9238791156441791020.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142949.P9238791156441791020.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 64, by simp only [A142949.P9238791156441791020.f1, SequenceMachineLib.memo_apply]; omega⟩) _
