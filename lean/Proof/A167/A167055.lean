import Prog.A167.A1670
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A040.A040117

/-- A167055 lists the numbers k such that 12*k + 5 is prime. -/
theorem A167055.anchor (n : ℕ) (hn : 1 ≤ n) :
    A167055 n = (Nat.nth (fun k => (12 * k + 5).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 12 * k + 5) 12 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 12, by omega⟩) (n - 1)
  try simp only at key
  simp only [A167055, A167055.P8738677862289622729.a, SequenceMachineLib.memo_apply]
  rw [A040117.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
