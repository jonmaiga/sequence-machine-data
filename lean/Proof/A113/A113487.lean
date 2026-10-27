import Prog.A113.A1134
import Proof.Lib.PrimesMod
import Proof.Lib.Floor

/-- A113487 lists the numbers k such that 17*k + 2 is prime. -/
theorem A113487.anchor (n : ℕ) (hn : 1 ≤ n) :
    A113487 n = (Nat.nth (fun k => (17 * k + 2).Prime) (n - 1) : ℤ) := by
  simp only [A113487, A113487.P13751071872001298491.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  have hf : ∀ j, A113487.P13751071872001298491.f1 j = 17 * j + 2 := fun j => by simp only [A113487.P13751071872001298491.f1, SequenceMachineLib.memo_apply]
  simp only [hf]
  rw [SequenceProof.floor_natCast_div_ofNat]
  omega
