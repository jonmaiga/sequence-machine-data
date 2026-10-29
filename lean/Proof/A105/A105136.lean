import Prog.A105.A1051
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A105.A105128

/-- A105136 lists the numbers k such that 64*k + 33 is prime. -/
theorem A105136.anchor (n : ℕ) (hn : 1 ≤ n) :
    A105136 n = (Nat.nth (fun k => (64 * k + 33).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 64 * k + 33) 64 33 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 64, by omega⟩) (n - 1)
  try simp only at key
  simp only [A105136, A105136.P17428083750107149856.a, SequenceMachineLib.memo_apply]
  rw [A105128.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
