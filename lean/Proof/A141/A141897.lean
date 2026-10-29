import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141897 lists the primes congruent to 19 mod 21. -/
theorem A141897.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141897 n = (Nat.nth (fun p => p.Prime ∧ p % 21 = 19) (n - 1) : ℤ) := by
  simp only [A141897, A141897.P351366787263551140.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 21 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141897.P351366787263551140.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141897.P351366787263551140.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 21, by simp only [A141897.P351366787263551140.f1, SequenceMachineLib.memo_apply]; omega⟩) _
