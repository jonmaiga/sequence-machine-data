import Prog.A002.A0021
import Proof.Lib.PrimesMod

/-- A002145 lists the primes congruent to 3 mod 4. -/
theorem A002145.anchor (n : ℕ) (hn : 1 ≤ n) :
    A002145 n = (Nat.nth (fun p => p.Prime ∧ p % 4 = 3) (n - 1) : ℤ) := by
  simp only [A002145, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 4 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A002145.P4185971227795926526.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A002145.P4185971227795926526.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 4, by simp only [A002145.P4185971227795926526.f1, SequenceMachineLib.memo_apply]; omega⟩) _
