import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142171 lists the primes congruent to 20 mod 39. -/
theorem A142171.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142171 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 20) (n - 1) : ℤ) := by
  simp only [A142171, A142171.P2901914737085389780.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 39 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142171.P2901914737085389780.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142171.P2901914737085389780.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 39, by simp only [A142171.P2901914737085389780.f1, SequenceMachineLib.memo_apply]; omega⟩) _
