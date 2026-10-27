import Prog.A005.A0051
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.Lib.Integral
import Proof.A007.A007519

/-- A005123 lists the numbers k such that 8*k + 1 is prime. -/
theorem A005123.anchor (n : ℕ) (hn : 1 ≤ n) :
    A005123 n = (Nat.nth (fun k => (8 * k + 1).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 8 * k + 1) 8 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 8, by omega⟩) (n - 1)
  try simp only at key
  simp only [A005123, A005123.P4885488379496739982.a, SequenceMachineLib.memo_apply]
  rw [A007519.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.roundAway_div_of_eq _ _ (Nat.nth (fun k => (8 * k + 1).Prime) (n - 1) : ℤ) (by norm_num) (by rw [← key]; push_cast; ring)]
