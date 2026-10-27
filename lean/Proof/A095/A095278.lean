import Prog.A095.A0952
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.Lib.Integral
import Proof.A002.A002145

/-- A095278 lists the numbers k such that 4*k + 3 is prime. -/
theorem A095278.anchor (n : ℕ) (hn : 1 ≤ n) :
    A095278 n = (Nat.nth (fun k => (4 * k + 3).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 4 * k + 3) 4 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 4, by omega⟩) (n - 1)
  try simp only at key
  simp only [A095278, A095278.P16565177898415012224.a, SequenceMachineLib.memo_apply]
  rw [A002145.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.roundAway_div_of_eq _ _ (Nat.nth (fun k => (4 * k + 3).Prime) (n - 1) : ℤ) (by norm_num) (by rw [← key]; push_cast; ring)]
