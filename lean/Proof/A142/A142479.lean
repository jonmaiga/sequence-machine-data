import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142479 lists the primes congruent to 5 mod 51. -/
theorem A142479.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142479 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 5) (n - 1) : ℤ) := by
  simp only [A142479, A142479.P9040338625487133999.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142479.P9040338625487133999.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142479.P9040338625487133999.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142479.P9040338625487133999.f1, SequenceMachineLib.memo_apply]; omega⟩) _
