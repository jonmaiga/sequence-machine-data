import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142077 lists the primes congruent to 2 mod 35. -/
theorem A142077.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142077 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 2) (n - 1) : ℤ) := by
  simp only [A142077, A142077.P16338474201965277594.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 35 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142077.P16338474201965277594.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142077.P16338474201965277594.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 35, by simp only [A142077.P16338474201965277594.f1, SequenceMachineLib.memo_apply]; omega⟩) _
