import Prog.A252.A2528
import Proof.Lib.PrimesMod

/-- A252893 lists the primes congruent to 11 mod 111. -/
theorem A252893.anchor (n : ℕ) (hn : 1 ≤ n) :
    A252893 n = (Nat.nth (fun p => p.Prime ∧ p % 111 = 11) (n - 1) : ℤ) := by
  simp only [A252893, A252893.P10954994435886160219.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 111 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A252893.P10954994435886160219.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A252893.P10954994435886160219.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 111, by simp only [A252893.P10954994435886160219.f1, SequenceMachineLib.memo_apply]; omega⟩) _
