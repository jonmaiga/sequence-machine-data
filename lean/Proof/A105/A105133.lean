import Prog.A105.A1051
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.Lib.Integral
import Proof.A007.A007521

/-- A105133 lists the numbers k such that 8*k + 5 is prime. -/
theorem A105133.anchor (n : ℕ) (hn : 1 ≤ n) :
    A105133 n = (Nat.nth (fun k => (8 * k + 5).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 8 * k + 5) 8 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 8, by omega⟩) (n - 1)
  try simp only at key
  simp only [A105133, A105133.P12778689426666315964.a, SequenceMachineLib.memo_apply]
  rw [A007521.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.roundAway_div_of_eq _ _ (Nat.nth (fun k => (8 * k + 5).Prime) (n - 1) : ℤ) (by norm_num) (by rw [← key]; push_cast; ring)]
