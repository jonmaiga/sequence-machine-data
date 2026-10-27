import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142577 lists the primes congruent to 47 mod 53. -/
theorem A142577.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142577 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 47) (n - 1) : ℤ) := by
  simp only [A142577, A142577.P15722763317461293928.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 47 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142577.P15722763317461293928.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142577.P15722763317461293928.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 6) / 53, by simp only [A142577.P15722763317461293928.f1, SequenceMachineLib.memo_apply]; omega⟩) _
