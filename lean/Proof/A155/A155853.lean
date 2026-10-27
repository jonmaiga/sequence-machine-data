import Prog.A155.A1558
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A100.A100202

/-- A155853 lists the numbers k such that 13*k + 3 is prime. -/
theorem A155853.anchor (n : ℕ) (hn : 1 ≤ n) :
    A155853 n = (Nat.nth (fun k => (13 * k + 3).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 13 * k + 3) 13 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 13, by omega⟩) (n - 1)
  try simp only at key
  simp only [A155853, A155853.P16741750777501655828.a, SequenceMachineLib.memo_apply]
  rw [A100202.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
