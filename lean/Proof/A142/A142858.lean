import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142858 lists the primes congruent to 60 mod 61. -/
theorem A142858.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142858 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 60) (n - 1) : ℤ) := by
  simp only [A142858, A142858.P14644552258889670954.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 60 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142858.P14644552258889670954.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142858.P14644552258889670954.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 61, by simp only [A142858.P14644552258889670954.f1, SequenceMachineLib.memo_apply]; omega⟩) _
