import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142078 lists the primes congruent to 3 mod 35. -/
theorem A142078.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142078 n = (Nat.nth (fun p => p.Prime ∧ p % 35 = 3) (n - 1) : ℤ) := by
  simp only [A142078, A142078.P18378913914792671546.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 35 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142078.P18378913914792671546.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142078.P18378913914792671546.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 35, by simp only [A142078.P18378913914792671546.f1, SequenceMachineLib.memo_apply]; omega⟩) _
