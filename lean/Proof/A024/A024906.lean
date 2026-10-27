import Prog.A024.A0249
import Proof.Lib.PrimesMod
import Proof.Lib.Floor

/-- A024906 lists the numbers k such that 9*k + 1 is prime. -/
theorem A024906.anchor (n : ℕ) (hn : 1 ≤ n) :
    A024906 n = (Nat.nth (fun k => (9 * k + 1).Prime) (n - 1) : ℤ) := by
  simp only [A024906, A024906.P1505522596758710894.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  have hf : ∀ j, A024906.P1505522596758710894.f1 j = 9 * j + 1 := fun j => by simp only [A024906.P1505522596758710894.f1, SequenceMachineLib.memo_apply]
  simp only [hf]
  rw [SequenceProof.floor_natCast_div_ofNat]
  omega
