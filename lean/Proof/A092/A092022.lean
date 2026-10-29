import Prog.A092.A0920
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.Lib.Integral
import Proof.A091.A091968

/-- A092022 lists the numbers k such that 16*k + 3 is prime. -/
theorem A092022.anchor (n : ℕ) (hn : 1 ≤ n) :
    A092022 n = (Nat.nth (fun k => (16 * k + 3).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 16 * k + 3) 16 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 16, by omega⟩) (n - 1)
  try simp only at key
  simp only [A092022, A092022.P1203849625117540271.a, SequenceMachineLib.memo_apply]
  rw [A091968.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.roundAway_div_of_eq _ _ (Nat.nth (fun k => (16 * k + 3).Prime) (n - 1) : ℤ) (by norm_num) (by rw [← key]; push_cast; ring)]
