import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142500 lists the primes congruent to 40 mod 51. -/
theorem A142500.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142500 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 40) (n - 1) : ℤ) := by
  simp only [A142500, A142500.P7476568207579945483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 40 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142500.P7476568207579945483.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142500.P7476568207579945483.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 11) / 51, by simp only [A142500.P7476568207579945483.f1, SequenceMachineLib.memo_apply]; omega⟩) _
