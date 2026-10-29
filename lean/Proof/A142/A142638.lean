import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142638 lists the primes congruent to 52 mod 55. -/
theorem A142638.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142638 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 52) (n - 1) : ℤ) := by
  simp only [A142638, A142638.P10791277501584669273.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 55 52 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142638.P10791277501584669273.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142638.P10791277501584669273.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 55, by simp only [A142638.P10791277501584669273.f1, SequenceMachineLib.memo_apply]; omega⟩) _
