import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142093 lists the primes congruent to 26 mod 35. -/
theorem A142093.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142093 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 26) (n - 1) : ℤ) := by
  simp only [A142093, A142093.P5613027184552983238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142093.P5613027184552983238.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142093.P5613027184552983238.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 9) / 35, by simp only [A142093.P5613027184552983238.f1, SequenceMachineLib.memo_apply]; omega⟩) _
