import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142505 lists the primes congruent to 47 mod 51. -/
theorem A142505.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142505 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 47) (n - 1) : ℤ) := by
  simp only [A142505, A142505.P12520781874869629303.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 51 47 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142505.P12520781874869629303.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142505.P12520781874869629303.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 51, by simp only [A142505.P12520781874869629303.f1, SequenceMachineLib.memo_apply]; omega⟩) _
