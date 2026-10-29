import Prog.A139.A1394
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.Lib.Integral
import Proof.A007.A007522

/-- A139487 lists the numbers k such that 8*k + 7 is prime. -/
theorem A139487.anchor (n : ℕ) (hn : 1 ≤ n) :
    A139487 n = (Nat.nth (fun k => (8 * k + 7).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 8 * k + 7) 8 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 8, by omega⟩) (n - 1)
  try simp only at key
  simp only [A139487, A139487.P1787232498596544969.a, SequenceMachineLib.memo_apply]
  rw [A007522.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.roundAway_div_of_eq _ _ (Nat.nth (fun k => (8 * k + 7).Prime) (n - 1) : ℤ) (by norm_num) (by rw [← key]; push_cast; ring)]
