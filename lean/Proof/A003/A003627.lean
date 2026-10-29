import Prog.A003.A0036
import Proof.Lib.PrimesMod

/-- A003627 lists the primes congruent to 2 mod 3. -/
theorem A003627.anchor (n : ℕ) (hn : 1 ≤ n) :
    A003627 n = (Nat.nth (fun p => p.Prime ∧ p % 3 = 2) (n - 1) : ℤ) := by
  simp only [A003627, A003627.P15428665616045919031.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 3 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A003627.P15428665616045919031.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A003627.P15428665616045919031.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 1) / 3, by simp only [A003627.P15428665616045919031.f1, SequenceMachineLib.memo_apply]; omega⟩) _
