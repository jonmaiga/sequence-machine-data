import Prog.A092.A0920
import Proof.Lib.PrimesMod

/-- A092074 lists the primes congruent to 3 mod 17. -/
theorem A092074.anchor (n : ℕ) (hn : 1 ≤ n) :
    A092074 n = (Nat.nth (fun p => p.Prime ∧ p % 17 = 3) (n - 1) : ℤ) := by
  simp only [A092074, A092074.P13786195185324527531.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 17 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A092074.P13786195185324527531.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A092074.P13786195185324527531.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 17, by simp only [A092074.P13786195185324527531.f1, SequenceMachineLib.memo_apply]; omega⟩) _
