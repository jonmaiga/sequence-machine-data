import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142564 lists the primes congruent to 34 mod 53. -/
theorem A142564.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142564 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 34) (n - 1) : ℤ) := by
  simp only [A142564, A142564.P501766830947275686.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 53 34 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142564.P501766830947275686.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142564.P501766830947275686.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 19) / 53, by simp only [A142564.P501766830947275686.f1, SequenceMachineLib.memo_apply]; omega⟩) _
