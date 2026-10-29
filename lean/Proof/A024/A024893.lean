import Prog.A024.A0248
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A003.A003627

/-- A024893 lists the numbers k such that 3*k + 2 is prime. -/
theorem A024893.anchor (n : ℕ) (hn : 1 ≤ n) :
    A024893 n = (Nat.nth (fun k => (3 * k + 2).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 3 * k + 2) 3 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 3, by omega⟩) (n - 1)
  try simp only at key
  simp only [A024893, A024893.P13828910964466952161.a, SequenceMachineLib.memo_apply]
  rw [A003627.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
