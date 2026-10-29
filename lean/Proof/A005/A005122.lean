import Prog.A005.A0051
import Proof.Lib.PrimesMod
import Proof.Lib.Floor

/-- A005122 lists the numbers k such that 8*k - 1 is prime. -/
theorem A005122.anchor (n : ℕ) (hn : 1 ≤ n) :
    A005122 n = (Nat.nth (fun k => (8 * k - 1).Prime) (n - 1) : ℤ) := by
  simp only [A005122, A005122.P2819458909718632145.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  have hf : ∀ j, A005122.P2819458909718632145.f1 j = (8 * j : ℤ) - 1 := fun j => by simp only [A005122.P2819458909718632145.f1, SequenceMachineLib.memo_apply]
  have hp : (fun (j : ℕ) => ((8 * j : ℤ) - 1).toNat.Prime) = (fun (k : ℕ) => (8 * k - 1).Prime) := by
    funext j; congr 1; omega
  simp only [hf, hp]
  rw [SequenceProof.ceil_intCast_div_ofNat]
  omega
