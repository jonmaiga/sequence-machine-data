import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142779 lists the primes congruent to 52 mod 59. -/
theorem A142779.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142779 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 52) (n - 1) : ℤ) := by
  simp only [A142779, A142779.P18302781696670615743.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 59 52 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142779.P18302781696670615743.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142779.P18302781696670615743.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 59, by simp only [A142779.P18302781696670615743.f1, SequenceMachineLib.memo_apply]; omega⟩) _
