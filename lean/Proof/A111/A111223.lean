import Prog.A111.A1112
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A045.A045380

/-- A111223 lists the numbers k such that 5*k + 2 is prime. -/
theorem A111223.anchor (n : ℕ) (hn : 1 ≤ n) :
    A111223 n = (Nat.nth (fun k => (5 * k + 2).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 5 * k + 2) 5 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 5, by omega⟩) (n - 1)
  try simp only at key
  simp only [A111223, A111223.P4485146468064268820.a, SequenceMachineLib.memo_apply]
  rw [A045380.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
