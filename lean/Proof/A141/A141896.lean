import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141896 lists the primes congruent to 17 mod 21. -/
theorem A141896.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141896 n = (Nat.nth (fun p => p.Prime ∧ p % 21 = 17) (n - 1) : ℤ) := by
  simp only [A141896, A141896.P7026197359786006426.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 21 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141896.P7026197359786006426.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141896.P7026197359786006426.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 21, by simp only [A141896.P7026197359786006426.f1, SequenceMachineLib.memo_apply]; omega⟩) _
