import SequenceMachineLib
import Mathlib.Data.Nat.Factorization.Basic

/-! The `val` op of the programs is the exponent of a prime in the factorization. -/

namespace SequenceProof

theorem valuation_eq_factorization (l p : ℕ) (hp : p.Prime) (hl : 0 < l) :
    SequenceMachineLib.valuation l p = l.factorization p := by
  induction l using Nat.strong_induction_on with
  | _ l ih =>
  rw [SequenceMachineLib.valuation]
  by_cases hd : p ∣ l
  · have hc : 2 ≤ p ∧ 0 < l ∧ p ∣ l := ⟨hp.two_le, hl, hd⟩
    simp only [hc, and_self, ↓reduceDIte]
    obtain ⟨q, rfl⟩ := hd
    have hq : 0 < q := Nat.pos_of_mul_pos_left hl
    rw [Nat.mul_div_cancel_left q hp.pos, ih q (by nlinarith [hp.two_le]) hq,
      Nat.factorization_mul hp.ne_zero hq.ne', Finsupp.add_apply, hp.factorization_self]
    ring
  · have hc : ¬ (2 ≤ p ∧ 0 < l ∧ p ∣ l) := fun h => hd h.2.2
    simp only [hc, ↓reduceDIte]
    rw [Nat.factorization_eq_zero_of_not_dvd hd]

end SequenceProof
