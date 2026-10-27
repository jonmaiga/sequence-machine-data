import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142056 lists the primes congruent to 13 mod 33. -/
theorem A142056.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142056 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 13) (n - 1) : ℤ) := by
  simp only [A142056, A142056.P13329390542527921275.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 33 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142056.P13329390542527921275.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142056.P13329390542527921275.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 33, by simp only [A142056.P13329390542527921275.f1, SequenceMachineLib.memo_apply]; omega⟩) _
