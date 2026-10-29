import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141959 lists the primes congruent to 17 mod 27. -/
theorem A141959.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141959 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 17) (n - 1) : ℤ) := by
  simp only [A141959, A141959.P10885151236091760451.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 27 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141959.P10885151236091760451.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141959.P10885151236091760451.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 10) / 27, by simp only [A141959.P10885151236091760451.f1, SequenceMachineLib.memo_apply]; omega⟩) _
