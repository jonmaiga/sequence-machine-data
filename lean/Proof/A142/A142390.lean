import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142390 lists the primes congruent to 39 mod 47. -/
theorem A142390.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142390 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 39) (n - 1) : ℤ) := by
  simp only [A142390, A142390.P556182768649480966.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 39 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142390.P556182768649480966.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142390.P556182768649480966.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 8) / 47, by simp only [A142390.P556182768649480966.f1, SequenceMachineLib.memo_apply]; omega⟩) _
