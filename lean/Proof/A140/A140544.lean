import Prog.A140.A1405
import Proof.Lib.PrimesMod

/-- A140544 lists the primes congruent to 2 mod 17. -/
theorem A140544.anchor (n : ℕ) (hn : 1 ≤ n) :
    A140544 n = (Nat.nth (fun p => p.Prime ∧ p % 17 = 2) (n - 1) : ℤ) := by
  simp only [A140544, A140544.P10410583773126604403.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 17 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A140544.P10410583773126604403.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A140544.P10410583773126604403.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 17, by simp only [A140544.P10410583773126604403.f1, SequenceMachineLib.memo_apply]; omega⟩) _
