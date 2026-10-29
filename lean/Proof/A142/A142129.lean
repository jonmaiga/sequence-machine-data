import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142129 lists the primes congruent to 20 mod 37. -/
theorem A142129.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142129 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 20) (n - 1) : ℤ) := by
  simp only [A142129, A142129.P5453870921160751379.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142129.P5453870921160751379.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142129.P5453870921160751379.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 17) / 37, by simp only [A142129.P5453870921160751379.f1, SequenceMachineLib.memo_apply]; omega⟩) _
