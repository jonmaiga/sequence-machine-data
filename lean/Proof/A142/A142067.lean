import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142067 lists the primes congruent to 31 mod 33. -/
theorem A142067.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142067 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 31) (n - 1) : ℤ) := by
  simp only [A142067, A142067.P2316696778376834968.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 33 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142067.P2316696778376834968.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142067.P2316696778376834968.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 2) / 33, by simp only [A142067.P2316696778376834968.f1, SequenceMachineLib.memo_apply]; omega⟩) _
