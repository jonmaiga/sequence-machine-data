import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142688 lists the primes congruent to 37 mod 57. -/
theorem A142688.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142688 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 37) (n - 1) : ℤ) := by
  simp only [A142688, A142688.P15943723344001570520.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 57 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142688.P15943723344001570520.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142688.P15943723344001570520.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 20) / 57, by simp only [A142688.P15943723344001570520.f1, SequenceMachineLib.memo_apply]; omega⟩) _
