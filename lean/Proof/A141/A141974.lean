import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141974 lists the primes congruent to 23 mod 28. -/
theorem A141974.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141974 n = (Nat.nth (fun p => p.Prime ∧ p % 28 = 23) (n - 1) : ℤ) := by
  simp only [A141974, A141974.P14247569674163781751.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 28 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141974.P14247569674163781751.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141974.P14247569674163781751.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 28, by simp only [A141974.P14247569674163781751.f1, SequenceMachineLib.memo_apply]; omega⟩) _
