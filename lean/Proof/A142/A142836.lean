import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142836 lists the primes congruent to 38 mod 61. -/
theorem A142836.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142836 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 38) (n - 1) : ℤ) := by
  simp only [A142836, A142836.P10505046727369022589.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 61 38 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142836.P10505046727369022589.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142836.P10505046727369022589.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 23) / 61, by simp only [A142836.P10505046727369022589.f1, SequenceMachineLib.memo_apply]; omega⟩) _
