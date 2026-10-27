import Prog.A248.A2482
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.Lib.Integral
import Proof.A142.A142508

/-- A248221 lists the numbers k such that 52*k + 1 is prime. -/
theorem A248221.anchor (n : ℕ) (hn : 1 ≤ n) :
    A248221 n = (Nat.nth (fun k => (52 * k + 1).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 52 * k + 1) 52 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 52, by omega⟩) (n - 1)
  try simp only at key
  simp only [A248221, A248221.P13614101816324531720.a, SequenceMachineLib.memo_apply]
  rw [A142508.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.roundAway_div_of_eq _ _ (Nat.nth (fun k => (52 * k + 1).Prime) (n - 1) : ℤ) (by norm_num) (by rw [← key]; push_cast; ring)]
