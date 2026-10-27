import Prog.A109.A1096
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A142.A142251

/-- A109603 lists the numbers k such that 43*k - 41 is prime. -/
theorem A109603.anchor (n : ℕ) (hn : 1 ≤ n) :
    A109603 n = (Nat.nth (fun k => (43 * k - 41).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 43 * k - 41) 43 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨(x + 41) / 43, by omega⟩) (n - 1)
  try simp only at key
  simp only [A109603, A109603.P9296114933607659280.a, SequenceMachineLib.memo_apply]
  rw [A142251.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.ceil_intCast_div_ofNat]
  omega
