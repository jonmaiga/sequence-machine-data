import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141961 lists the primes congruent to 20 mod 27. -/
theorem A141961.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141961 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 20) (n - 1) : ℤ) := by
  simp only [A141961, A141961.P17627897798866787358.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 27 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141961.P17627897798866787358.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141961.P17627897798866787358.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 27, by simp only [A141961.P17627897798866787358.f1, SequenceMachineLib.memo_apply]; omega⟩) _
