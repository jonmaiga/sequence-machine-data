import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142445 lists the primes congruent to 37 mod 49. -/
theorem A142445.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142445 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 37) (n - 1) : ℤ) := by
  simp only [A142445, A142445.P12832947425063422088.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 49 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142445.P12832947425063422088.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142445.P12832947425063422088.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 12) / 49, by simp only [A142445.P12832947425063422088.f1, SequenceMachineLib.memo_apply]; omega⟩) _
