import Prog.A244.A2447
import Proof.Lib.PrimesMod

/-- A244764 lists the primes whose decimal expansion ends in 17. -/
theorem A244764.anchor (n : ℕ) (hn : 1 ≤ n) :
    A244764 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 17) (n - 1) : ℤ) := by
  simp only [A244764, A244764.P12006317535235448752.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 100 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A244764.P12006317535235448752.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A244764.P12006317535235448752.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 100, by simp only [A244764.P12006317535235448752.f1, SequenceMachineLib.memo_apply]; omega⟩) _
