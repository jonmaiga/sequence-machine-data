import Prog.A127.A1275
import Proof.Lib.PrimesMod

/-- A127592 lists the primes congruent to 21 mod 64. -/
theorem A127592.anchor (n : ℕ) (hn : 1 ≤ n) :
    A127592 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 21) (n - 1) : ℤ) := by
  simp only [A127592, A127592.P15689629339464062709.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A127592.P15689629339464062709.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A127592.P15689629339464062709.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A127592.P15689629339464062709.f1, SequenceMachineLib.memo_apply]; omega⟩) _
