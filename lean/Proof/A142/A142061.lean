import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142061 lists the primes congruent to 20 mod 33. -/
theorem A142061.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142061 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 20) (n - 1) : ℤ) := by
  simp only [A142061, A142061.P17231929898932925675.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 33 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142061.P17231929898932925675.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142061.P17231929898932925675.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 13) / 33, by simp only [A142061.P17231929898932925675.f1, SequenceMachineLib.memo_apply]; omega⟩) _
