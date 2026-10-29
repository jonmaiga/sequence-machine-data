import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141860 lists the primes congruent to 2 mod 15. -/
theorem A141860.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141860 n = (Nat.nth (fun p => p.Prime ∧ p % 15 = 2) (n - 1) : ℤ) := by
  simp only [A141860, A141860.P14984370412444025917.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 15 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141860.P14984370412444025917.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141860.P14984370412444025917.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 15, by simp only [A141860.P14984370412444025917.f1, SequenceMachineLib.memo_apply]; omega⟩) _
