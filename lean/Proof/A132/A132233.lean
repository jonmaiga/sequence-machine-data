import Prog.A132.A1322
import Proof.Lib.PrimesMod

/-- A132233 lists the primes congruent to 13 mod 30. -/
theorem A132233.anchor (n : ℕ) (hn : 1 ≤ n) :
    A132233 n = (Nat.nth (fun p => p.Prime ∧ p % 30 = 13) (n - 1) : ℤ) := by
  simp only [A132233, A132233.P2149782464708551670.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 30 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A132233.P2149782464708551670.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A132233.P2149782464708551670.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 30, by simp only [A132233.P2149782464708551670.f1, SequenceMachineLib.memo_apply]; omega⟩) _
