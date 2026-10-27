import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142492 lists the primes congruent to 26 mod 51. -/
theorem A142492.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142492 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 26) (n - 1) : ℤ) := by
  simp only [A142492, A142492.P9048498068907421437.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142492.P9048498068907421437.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142492.P9048498068907421437.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 25) / 51, by simp only [A142492.P9048498068907421437.f1, SequenceMachineLib.memo_apply]; omega⟩) _
