import Prog.A158.A1587
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A132.A132233

/-- A158746 lists the numbers k such that 30*k + 13 is prime. -/
theorem A158746.anchor (n : ℕ) (hn : 1 ≤ n) :
    A158746 n = (Nat.nth (fun k => (30 * k + 13).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 30 * k + 13) 30 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 30, by omega⟩) (n - 1)
  try simp only at key
  simp only [A158746, A158746.P16753522694152937982.a, SequenceMachineLib.memo_apply]
  rw [A132233.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
