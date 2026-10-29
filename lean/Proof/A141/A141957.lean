import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141957 lists the primes congruent to 14 mod 27. -/
theorem A141957.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141957 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 14) (n - 1) : ℤ) := by
  simp only [A141957, A141957.P12027767071780574500.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 27 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141957.P12027767071780574500.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141957.P12027767071780574500.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 27, by simp only [A141957.P12027767071780574500.f1, SequenceMachineLib.memo_apply]; omega⟩) _
