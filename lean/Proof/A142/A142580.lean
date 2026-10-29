import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142580 lists the primes congruent to 50 mod 53. -/
theorem A142580.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142580 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 50) (n - 1) : ℤ) := by
  simp only [A142580, A142580.P12216637443681934440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 50 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142580.P12216637443681934440.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142580.P12216637443681934440.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 53, by simp only [A142580.P12216637443681934440.f1, SequenceMachineLib.memo_apply]; omega⟩) _
