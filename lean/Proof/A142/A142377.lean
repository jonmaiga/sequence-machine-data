import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142377 lists the primes congruent to 26 mod 47. -/
theorem A142377.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142377 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 26) (n - 1) : ℤ) := by
  simp only [A142377, A142377.P12606999402120422051.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142377.P12606999402120422051.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142377.P12606999402120422051.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 21) / 47, by simp only [A142377.P12606999402120422051.f1, SequenceMachineLib.memo_apply]; omega⟩) _
