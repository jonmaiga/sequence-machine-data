import Prog.A124.A1248
import Proof.Lib.PrimesMod

/-- A124826 lists the primes congruent to 1 mod 21. -/
theorem A124826.anchor (n : ℕ) (hn : 1 ≤ n) :
    A124826 n = (Nat.nth (fun p => p.Prime ∧ p % 21 = 1) (n - 1) : ℤ) := by
  simp only [A124826, A124826.P12452158747081727353.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 21 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A124826.P12452158747081727353.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A124826.P12452158747081727353.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 21, by simp only [A124826.P12452158747081727353.f1, SequenceMachineLib.memo_apply]; omega⟩) _
