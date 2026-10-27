import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142394 lists the primes congruent to 43 mod 47. -/
theorem A142394.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142394 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 43) (n - 1) : ℤ) := by
  simp only [A142394, A142394.P11567026280531860457.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142394.P11567026280531860457.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142394.P11567026280531860457.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 4) / 47, by simp only [A142394.P11567026280531860457.f1, SequenceMachineLib.memo_apply]; omega⟩) _
