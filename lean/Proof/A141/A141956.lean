import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141956 lists the primes congruent to 13 mod 27. -/
theorem A141956.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141956 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 13) (n - 1) : ℤ) := by
  simp only [A141956, A141956.P2481953049988150767.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 27 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141956.P2481953049988150767.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141956.P2481953049988150767.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 27, by simp only [A141956.P2481953049988150767.f1, SequenceMachineLib.memo_apply]; omega⟩) _
