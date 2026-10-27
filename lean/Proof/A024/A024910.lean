import Prog.A024.A0249
import Proof.Lib.PrimesMod
import Proof.Lib.Floor

/-- A024910 lists the numbers k such that 9*k - 2 is prime. -/
theorem A024910.anchor (n : ℕ) (hn : 1 ≤ n) :
    A024910 n = (Nat.nth (fun k => (9 * k - 2).Prime) (n - 1) : ℤ) := by
  simp only [A024910, A024910.P8101714270751029746.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  have hf : ∀ j, A024910.P8101714270751029746.f1 j = (9 * j : ℤ) - 2 := fun j => by simp only [A024910.P8101714270751029746.f1, SequenceMachineLib.memo_apply]
  have hp : (fun (j : ℕ) => ((9 * j : ℤ) - 2).toNat.Prime) = (fun (k : ℕ) => (9 * k - 2).Prime) := by
    funext j; congr 1; omega
  simp only [hf, hp]
  rw [SequenceProof.ceil_intCast_div_ofNat]
  omega
