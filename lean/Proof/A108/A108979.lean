import Prog.A108.A1089
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A142.A142033

/-- A108979 lists the numbers k such that 31*k + 29 is prime. -/
theorem A108979.anchor (n : ℕ) (hn : 1 ≤ n) :
    A108979 n = (Nat.nth (fun k => (31 * k + 29).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 31 * k + 29) 31 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 31, by omega⟩) (n - 1)
  try simp only at key
  simp only [A108979, A108979.P16884793668270795336.a, SequenceMachineLib.memo_apply]
  rw [A142033.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
