import Prog.A111.A1111
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A132.A132230

/-- A111175 lists the numbers k such that 30*k + 1 is prime. -/
theorem A111175.anchor (n : ℕ) (hn : 1 ≤ n) :
    A111175 n = (Nat.nth (fun k => (30 * k + 1).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 30 * k + 1) 30 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 30, by omega⟩) (n - 1)
  try simp only at key
  simp only [A111175, A111175.P12766162240952230038.a, SequenceMachineLib.memo_apply]
  rw [A132230.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
