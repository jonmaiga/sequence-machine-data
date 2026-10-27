import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142476 lists the primes congruent to 1 mod 51. -/
theorem A142476.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142476 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 1) (n - 1) : ℤ) := by
  simp only [A142476, A142476.P16180172496305768413.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142476.P16180172496305768413.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142476.P16180172496305768413.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142476.P16180172496305768413.f1, SequenceMachineLib.memo_apply]; omega⟩) _
