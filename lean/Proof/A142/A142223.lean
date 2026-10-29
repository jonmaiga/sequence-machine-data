import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142223 lists the primes congruent to 26 mod 41. -/
theorem A142223.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142223 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 26) (n - 1) : ℤ) := by
  simp only [A142223, A142223.P3621335472898979268.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 41 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142223.P3621335472898979268.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142223.P3621335472898979268.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 41, by simp only [A142223.P3621335472898979268.f1, SequenceMachineLib.memo_apply]; omega⟩) _
