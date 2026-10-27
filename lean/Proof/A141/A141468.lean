import Prog.A141.A1414
import Proof.A000.A000040
import Mathlib.NumberTheory.PrimeCounting

/-- A141468 is 0 together with the nonprime numbers. -/
theorem A141468.anchor (n : ℕ) (hn : 1 ≤ n) : A141468 n = (Nat.nth (fun k => ¬ k.Prime) (n - 1) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have h40 : ∀ j, A000040 (j + 1) = (Nat.nth Nat.Prime j : ℤ) := fun j => by
    rw [A000040.anchor _ (by omega), Nat.add_sub_cancel]
  have hiff : ∀ x : ℕ, (∀ j, (Nat.nth Nat.Prime j : ℤ) ≠ (x : ℤ)) ↔ ¬ x.Prime := by
    intro x
    constructor
    · intro h hx
      exact h (Nat.count Nat.Prime x) (by rw [Nat.nth_count hx])
    · intro hx j e
      exact hx (Nat.cast_inj.mp e ▸ Nat.prime_nth_prime j)
  simp only [A141468, A141468.P3389662916050695948.a, A141468.P3389662916050695948.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel, SequenceMachineLib.nth_eq, h40, hiff]
