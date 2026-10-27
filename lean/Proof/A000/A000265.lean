import Prog.A000.A0002

private theorem roundAway_natCast (c : ℕ) : SequenceMachineLib.roundAway (c : ℚ) = c := by
  simp only [SequenceMachineLib.roundAway, Nat.cast_nonneg, ↓reduceIte]
  rw [Int.floor_eq_iff]
  constructor <;> push_cast <;> linarith

/-- `SequenceMachineLib.valuation l p` is the exponent of the prime `p` in `l`. -/
private theorem valuation_eq (l p : ℕ) (hp : p.Prime) :
    SequenceMachineLib.valuation l p = l.factorization p := by
  induction l using Nat.strong_induction_on with
  | _ l ih =>
    rw [SequenceMachineLib.valuation]
    split_ifs with h
    · obtain ⟨-, hl, hd⟩ := h
      have hpos : 0 < l.factorization p := hp.factorization_pos_of_dvd (by omega) hd
      rw [ih (l / p) (Nat.div_lt_self hl hp.one_lt), Nat.factorization_div hd, Finsupp.tsub_apply,
        hp.factorization_self]
      omega
    · push Not at h
      rcases Nat.eq_zero_or_pos l with rfl | hl
      · simp
      · exact (Nat.factorization_eq_zero_of_not_dvd (h hp.two_le hl)).symm

/-- A000265 is the odd part of `n`: `n` with all factors 2 removed. -/
theorem A000265.anchor (n : ℕ) (hn : 1 ≤ n) : A000265 n = ((n / 2 ^ n.factorization 2 : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A000265, A000265.P16482698636471710744.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    valuation_eq _ _ Nat.prime_two]
  rw [show ((m : ℚ) + 1) / 2 ^ (m + 1).factorization 2 = (((m + 1) / 2 ^ (m + 1).factorization 2 : ℕ) : ℚ) by
    rw [Nat.cast_div (Nat.ordProj_dvd _ _) (by positivity)]; push_cast; ring]
  exact roundAway_natCast _
