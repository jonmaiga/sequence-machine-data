import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142530 lists the primes congruent to 49 mod 52. -/
theorem A142530.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142530 n = (Nat.nth (fun p => p.Prime ∧ p % 52 = 49) (n - 1) : ℤ) := by
  simp only [A142530, A142530.P11059090855863787082.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 52 49 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142530.P11059090855863787082.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142530.P11059090855863787082.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 3) / 52, by simp only [A142530.P11059090855863787082.f1, SequenceMachineLib.memo_apply]; omega⟩) _
