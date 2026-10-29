import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142273 lists the primes congruent to 24 mod 43. -/
theorem A142273.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142273 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 24) (n - 1) : ℤ) := by
  simp only [A142273, A142273.P2540258636180105551.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 43 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142273.P2540258636180105551.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142273.P2540258636180105551.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 43, by simp only [A142273.P2540258636180105551.f1, SequenceMachineLib.memo_apply]; omega⟩) _
