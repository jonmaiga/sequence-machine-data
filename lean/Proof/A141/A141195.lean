import Prog.A141.A1411
import Proof.Lib.PrimesMod

/-- A141195 lists the primes congruent to 11 mod 16. -/
theorem A141195.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141195 n = (Nat.nth (fun p => p.Prime ∧ p % 16 = 11) (n - 1) : ℤ) := by
  simp only [A141195, A141195.P9133799144925653088.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 16 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141195.P9133799144925653088.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141195.P9133799144925653088.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 16, by simp only [A141195.P9133799144925653088.f1, SequenceMachineLib.memo_apply]; omega⟩) _
