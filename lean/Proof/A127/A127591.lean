import Prog.A127.A1275
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A127.A127592

/-- A127591 lists the numbers k such that 64*k + 21 is prime. -/
theorem A127591.anchor (n : ℕ) (hn : 1 ≤ n) :
    A127591 n = (Nat.nth (fun k => (64 * k + 21).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 64 * k + 21) 64 21 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 64, by omega⟩) (n - 1)
  try simp only at key
  simp only [A127591, A127591.P6759506411526991371.a, SequenceMachineLib.memo_apply]
  rw [A127592.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
