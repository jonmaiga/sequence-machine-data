import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141931 lists the primes congruent to 6 mod 25. -/
theorem A141931.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141931 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 6) (n - 1) : ℤ) := by
  simp only [A141931, A141931.P8261575237751622424.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 25 6 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141931.P8261575237751622424.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141931.P8261575237751622424.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 25, by simp only [A141931.P8261575237751622424.f1, SequenceMachineLib.memo_apply]; omega⟩) _
