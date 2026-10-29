import Prog.A001.A0015
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Base
import Mathlib.Data.Nat.Bitwise

/-! The canonical program of A001511 is `log2(A006519(n+1))+1`, through A006519 = `A171977(n+1)/2`,
A171977 = `A038712(n+1)+1` and A038712 = `xor(n+1, n)`. `(m+1) XOR m` is `2^(v+1) - 1` for the 2-adic
valuation v of m+1 (`Nat.xor_bit`). -/

/-- `(s+1) XOR s` is a block of ones, one longer than the 2-adic valuation of s+1. -/
private theorem xor_succ_add_one (s : ℕ) : ((s + 1) ^^^ s) + 1 = 2 ^ (padicValNat 2 (s + 1) + 1) := by
  induction s using Nat.strong_induction_on with
  | _ s ih =>
    rcases Nat.even_or_odd' s with ⟨t, rfl | rfl⟩
    · have hx : (2 * t + 1) ^^^ (2 * t) = 1 := by
        have := Nat.xor_bit true t false t
        simpa [Nat.bit] using this
      have hv : padicValNat 2 (2 * t + 1) = 0 :=
        padicValNat.eq_zero_of_not_dvd (by omega)
      rw [hx, hv]
      norm_num
    · have hx : (2 * t + 1 + 1) ^^^ (2 * t + 1) = 2 * ((t + 1) ^^^ t) + 1 := by
        have := Nat.xor_bit false (t + 1) true t
        rw [show 2 * t + 1 + 1 = 2 * (t + 1) by ring]
        simpa [Nat.bit] using this
      have hv : padicValNat 2 (2 * t + 1 + 1) = padicValNat 2 (t + 1) + 1 := by
        rw [show 2 * t + 1 + 1 = 2 * (t + 1) by ring, padicValNat.mul (by norm_num) (by omega),
          padicValNat_self]
        ring
      have := ih t (by omega)
      rw [hx, hv, pow_succ]
      omega

private theorem roundAway_natCast {α : Type*} [Field α] [LinearOrder α] [IsStrictOrderedRing α] [FloorRing α]
    (c : ℕ) : SequenceMachineLib.roundAway (c : α) = c := by
  simp only [SequenceMachineLib.roundAway, Nat.cast_nonneg, ↓reduceIte]
  rw [Int.floor_eq_iff]
  constructor <;> push_cast <;> linarith

/-- The ruler function as A001511 computes it: `log2(A006519(n+1))+1`, A006519 halving `A171977`, which is
`A038712 + 1`, `(n+1) XOR n + 1`. -/
private theorem ruler (s : ℕ) : A001511 (s + 1) = (padicValNat 2 (s + 1) + 1 : ℕ) := by
  have h171977 : A171977 (s + 1) = (2 ^ (padicValNat 2 (s + 1) + 1) : ℕ) := by
    simp only [A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a,
      SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
    have h : Nat.xor (s + 1) s + 1 = 2 ^ (padicValNat 2 (s + 1) + 1) := xor_succ_add_one s
    exact_mod_cast h
  have h6519 : A006519 (s + 1) = (2 ^ padicValNat 2 (s + 1) : ℕ) := by
    simp only [A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
      h171977]
    rw [show ((((2 ^ (padicValNat 2 (s + 1) + 1) : ℕ) : ℤ) : ℚ) / 2) = ((2 ^ padicValNat 2 (s + 1) : ℕ) : ℚ) by
      push_cast; ring]
    exact roundAway_natCast _
  simp only [A001511, A001511.P17146462531039486101.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel, h6519]
  rw [show Real.logb 2 ((((2 ^ padicValNat 2 (s + 1) : ℕ) : ℤ) : ℝ)) + 1 = ((padicValNat 2 (s + 1) + 1 : ℕ) : ℝ) by
    push_cast
    rw [Real.logb_pow, Real.logb_self_eq_one (by norm_num)]
    ring]
  exact roundAway_natCast _

/-- A001511 is the ruler function, the 2-adic valuation of 2n, `padicValNat 2 n + 1`. -/
theorem A001511.anchor (n : ℕ) (hn : 1 ≤ n) : A001511 n = (padicValNat 2 n + 1 : ℕ) := by
  obtain ⟨s, rfl⟩ : ∃ s, n = s + 1 := ⟨n - 1, by omega⟩
  exact ruler s
