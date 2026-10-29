import Prog.A127.A1275
import Proof.Lib.PrimesMod

/-- A127579 lists the primes congruent to 63 mod 64. -/
theorem A127579.anchor (n : ℕ) (hn : 1 ≤ n) :
    A127579 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 63) (n - 1) : ℤ) := by
  simp only [A127579, A127579.P15098558480322479395.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 64 63 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A127579.P15098558480322479395.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A127579.P15098558480322479395.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 64, by simp only [A127579.P15098558480322479395.f1, SequenceMachineLib.memo_apply]; omega⟩) _
