import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142383 lists the primes congruent to 32 mod 47. -/
theorem A142383.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142383 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 32) (n - 1) : ℤ) := by
  simp only [A142383, A142383.P10376334562524176700.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 47 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142383.P10376334562524176700.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142383.P10376334562524176700.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 15) / 47, by simp only [A142383.P10376334562524176700.f1, SequenceMachineLib.memo_apply]; omega⟩) _
