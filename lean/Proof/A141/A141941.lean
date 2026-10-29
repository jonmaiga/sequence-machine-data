import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141941 lists the primes congruent to 18 mod 25. -/
theorem A141941.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141941 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 18) (n - 1) : ℤ) := by
  simp only [A141941, A141941.P8398962657768228484.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 25 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141941.P8398962657768228484.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141941.P8398962657768228484.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 7) / 25, by simp only [A141941.P8398962657768228484.f1, SequenceMachineLib.memo_apply]; omega⟩) _
