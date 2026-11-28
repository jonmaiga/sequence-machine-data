import SequenceMachineLib.Triangle
import Mathlib.Tactic

/-! Name formulas that are rational only through integer powers `b ^ (e : ℤ)`, with no division: bounds that show
the exponents nonnegative, so that the powers are natural powers (`zpow_eq_pow_toNat` in `Proof.Lib.Integral`). -/

namespace SequenceProof

/-- The column of a triangle index is at most its row. -/
theorem triCol_le_triRow (i : ℕ) : SequenceMachineLib.triCol i ≤ SequenceMachineLib.triRow i := by
  have hs2 := Nat.lt_succ_sqrt' (8 * i + 1)
  simp only [SequenceMachineLib.triCol, SequenceMachineLib.triRow]
  generalize Nat.sqrt (8 * i + 1) = s at *
  obtain ⟨r, hr⟩ : ∃ r, r = (s - 1) / 2 := ⟨_, rfl⟩
  rw [← hr]
  have hsr : s ≤ 2 * r + 2 := by omega
  have h8 : 8 * i + 1 < (2 * r + 3) * (2 * r + 3) := by
    calc 8 * i + 1 < s.succ ^ 2 := hs2
      _ ≤ (2 * r + 3) ^ 2 := Nat.pow_le_pow_left (by omega) 2
      _ = _ := by ring
  have h8' : 8 * i < 4 * (r * (r + 1)) + 8 * r + 8 := by nlinarith [h8]
  have hev : r * (r + 1) % 2 = 0 := Nat.even_iff.mp (Nat.even_mul_succ_self r)
  generalize r * (r + 1) = q at *
  omega

/-- `n < 2 ^ n` in ℤ. -/
theorem natCast_lt_two_pow (n : ℕ) : (n : ℤ) < 2 ^ n := by
  exact_mod_cast Nat.lt_two_pow_self

end SequenceProof
