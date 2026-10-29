import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142096 lists the primes congruent to 31 mod 35. -/
theorem A142096.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142096 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 31) (n - 1) : ℤ) := by
  simp only [A142096, A142096.P10624013665993607037.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 35 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142096.P10624013665993607037.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142096.P10624013665993607037.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 35, by simp only [A142096.P10624013665993607037.f1, SequenceMachineLib.memo_apply]; omega⟩) _
