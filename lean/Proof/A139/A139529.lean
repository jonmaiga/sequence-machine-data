import Prog.A139.A1395
import Proof.Lib.PrimesMod
import Proof.Lib.Floor
import Proof.Lib.Integral
import Proof.A139.A139530

/-- A139529 lists the numbers k such that 24*k + 13 is prime. -/
theorem A139529.anchor (n : ℕ) (hn : 1 ≤ n) :
    A139529 n = (Nat.nth (fun k => (24 * k + 13).Prime) (n - 1) : ℤ) := by
  have key := SequenceProof.nth_primes_mod (fun k => 24 * k + 13) 24 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by omega) (fun i h => by omega) (fun x hx => ⟨x / 24, by omega⟩) (n - 1)
  try simp only at key
  simp only [A139529, A139529.P12100689754848944619.a, SequenceMachineLib.memo_apply]
  rw [A139530.anchor (n - 1 + 1) (by omega), Nat.add_sub_cancel]
  rw [SequenceProof.roundAway_div_of_eq _ _ (Nat.nth (fun k => (24 * k + 13).Prime) (n - 1) : ℤ) (by norm_num) (by rw [← key]; push_cast; ring)]
