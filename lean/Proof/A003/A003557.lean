import Prog.A003.A0035
import Proof.A007.A007947

private theorem roundAway_natCast (c : ℕ) : SequenceMachineLib.roundAway (c : ℚ) = c := by
  simp only [SequenceMachineLib.roundAway, Nat.cast_nonneg, ↓reduceIte]
  rw [Int.floor_eq_iff]
  constructor <;> push_cast <;> linarith

/-- A003557 is `n` divided by its radical, the largest squarefree divisor of `n`. -/
theorem A003557.anchor (n : ℕ) (hn : 1 ≤ n) :
    A003557 n = ((n / UniqueFactorizationMonoid.radical n : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have hd : UniqueFactorizationMonoid.radical (m + 1) ∣ m + 1 := UniqueFactorizationMonoid.radical_dvd_self
  have hpos : 0 < UniqueFactorizationMonoid.radical (m + 1) := Nat.pos_of_dvd_of_pos hd (by omega)
  simp only [A003557, A003557.P6364735403900941810.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    A007947.anchor (m + 1) (by omega), Int.cast_natCast]
  rw [show ((m : ℚ) + 1) / (UniqueFactorizationMonoid.radical (m + 1) : ℕ) =
      (((m + 1) / UniqueFactorizationMonoid.radical (m + 1) : ℕ) : ℚ) by
    rw [Nat.cast_div hd (Nat.cast_ne_zero.mpr hpos.ne')]; push_cast; ring]
  exact roundAway_natCast _
