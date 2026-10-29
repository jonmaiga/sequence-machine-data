import Prog.A158.A1586
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A132.A132232

/-- A158614 lists the numbers k such that 30*k + 11 is prime. -/
theorem A158614.anchor (n : ℕ) (hn : 1 ≤ n) :
    A158614 n = (Nat.nth (fun k => (30 * k + 11).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 30 * k + 11) 30 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 30, by omega⟩) (n - 1)
  try simp only at key
  simp only [A158614, A158614.P3548908336296467476.a, SequenceMachineLib.memo_apply]
  rw [A132232.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
