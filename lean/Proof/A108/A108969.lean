import Prog.A108.A1089
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.A142.A142290

/-- A108969 lists the numbers k such that 43*k + 41 is prime. -/
theorem A108969.anchor (n : ℕ) (hn : 1 ≤ n) :
    A108969 n = (Nat.nth (fun k => (43 * k + 41).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 43 * k + 41) 43 41 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 43, by omega⟩) (n - 1)
  try simp only at key
  simp only [A108969, A108969.P15391048143242835784.a, SequenceMachineLib.memo_apply]
  rw [A142290.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.floor_intCast_div_ofNat]
  omega
