import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142386 lists the primes congruent to 35 mod 47. -/
theorem A142386.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142386 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 35) (n - 1) : ℤ) := by
  simp only [A142386, A142386.P1052990782215385682.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 35 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142386.P1052990782215385682.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142386.P1052990782215385682.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 47, by simp only [A142386.P1052990782215385682.f1, SequenceMachineLib.memo_apply]; omega⟩) _
