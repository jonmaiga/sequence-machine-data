import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141986 lists the primes congruent to 10 mod 29. -/
theorem A141986.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141986 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 10) (n - 1) : ℤ) := by
  simp only [A141986, A141986.P1868741360230948704.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 29 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141986.P1868741360230948704.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141986.P1868741360230948704.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 29, by simp only [A141986.P1868741360230948704.f1, SequenceMachineLib.memo_apply]; omega⟩) _
