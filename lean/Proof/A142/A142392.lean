import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142392 lists the primes congruent to 41 mod 47. -/
theorem A142392.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142392 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 41) (n - 1) : ℤ) := by
  simp only [A142392, A142392.P15313587033907760608.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142392.P15313587033907760608.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142392.P15313587033907760608.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 47, by simp only [A142392.P15313587033907760608.f1, SequenceMachineLib.memo_apply]; omega⟩) _
