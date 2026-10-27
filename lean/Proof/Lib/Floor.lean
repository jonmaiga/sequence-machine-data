import Mathlib.Tactic

/-! Floors and ceilings of a quotient by a numeral `k` of a rational that is an integer `z`, as integer divisions, for
the anchors of closed-form programs (e.g. `⌊((n : ℤ) - 3 : ℚ) / 5⌋ = ((n : ℤ) - 3) / 5`). -/

namespace SequenceProof

theorem floor_div_of_eq (x : ℚ) (z : ℤ) (k : ℕ) [k.AtLeastTwo] (h : x = z) :
    ⌊x / (OfNat.ofNat k : ℚ)⌋ = z / (OfNat.ofNat k : ℤ) := by
  rw [h, ← Nat.cast_ofNat (R := ℚ), ← Nat.cast_ofNat (R := ℤ)]
  exact Rat.floor_intCast_div_natCast z _

theorem ceil_div_of_eq (x : ℚ) (z : ℤ) (k : ℕ) [k.AtLeastTwo] (h : x = z) :
    ⌈x / (OfNat.ofNat k : ℚ)⌉ = -((-z) / (OfNat.ofNat k : ℤ)) := by
  rw [h, ← Nat.cast_ofNat (R := ℚ), ← Nat.cast_ofNat (R := ℤ)]
  exact Rat.ceil_intCast_div_natCast z _

theorem floor_intCast_div_ofNat (z : ℤ) (k : ℕ) [k.AtLeastTwo] :
    ⌊(z : ℚ) / (OfNat.ofNat k : ℚ)⌋ = z / (OfNat.ofNat k : ℤ) :=
  floor_div_of_eq _ z k rfl

theorem floor_natCast_div_ofNat (z : ℕ) (k : ℕ) [k.AtLeastTwo] :
    ⌊(z : ℚ) / (OfNat.ofNat k : ℚ)⌋ = (z : ℤ) / (OfNat.ofNat k : ℤ) :=
  floor_div_of_eq _ z k (by push_cast; rfl)

theorem ceil_intCast_div_ofNat (z : ℤ) (k : ℕ) [k.AtLeastTwo] :
    ⌈(z : ℚ) / (OfNat.ofNat k : ℚ)⌉ = -((-z) / (OfNat.ofNat k : ℤ)) :=
  ceil_div_of_eq _ z k rfl

theorem ceil_natCast_div_ofNat (z : ℕ) (k : ℕ) [k.AtLeastTwo] :
    ⌈(z : ℚ) / (OfNat.ofNat k : ℚ)⌉ = -((-(z : ℤ)) / (OfNat.ofNat k : ℤ)) :=
  ceil_div_of_eq _ z k (by push_cast; rfl)

end SequenceProof
