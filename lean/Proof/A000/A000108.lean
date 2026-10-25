import Prog.A000.A0001
import Mathlib.Combinatorics.Enumerative.Catalan.Basic

/-! The canonical program of A000108 is the rational recursion `a(n-1)*(4-6/(n+1))` with `a(0) = 1`,
`(n+2) * C(n+1) = (4n+2) * C(n)` follows from Mathlib's central binomial recursions. The definition rounds
the value, which is already an integer. -/

local notation "cat" => A000108.P17551949696095299361.a

private theorem cat_succ (n : ℕ) : cat (n + 1) = cat n * (4 - 6 / ((n : ℚ) + 2)) := by
  simp only [A000108.P17551949696095299361.a]
  rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
  simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
  push_cast
  ring

private theorem catalan_step (n : ℕ) :
    ((n : ℚ) + 2) * catalan (n + 1) = (4 * n + 2) * catalan n := by
  have h1 : ((n : ℚ) + 2) * catalan (n + 1) = Nat.centralBinom (n + 1) := by
    exact_mod_cast succ_mul_catalan_eq_centralBinom (n + 1)
  have h2 : ((n : ℚ) + 1) * Nat.centralBinom (n + 1) = 2 * (2 * n + 1) * Nat.centralBinom n := by
    exact_mod_cast Nat.succ_mul_centralBinom_succ n
  have h3 : ((n : ℚ) + 1) * catalan n = Nat.centralBinom n := by
    exact_mod_cast succ_mul_catalan_eq_centralBinom n
  have h : ((n : ℚ) + 1) * (((n : ℚ) + 2) * catalan (n + 1)) = ((n : ℚ) + 1) * ((4 * n + 2) * catalan n) := by
    linear_combination ((n : ℚ) + 1) * h1 + h2 - (4 * (n : ℚ) + 2) * h3
  exact mul_left_cancel₀ (by positivity) h

private theorem cat_eq (n : ℕ) : cat n = catalan n := by
  induction n with
  | zero => simp [A000108.P17551949696095299361.a, SequenceMachineLib.rec_of_lt]
  | succ n ih =>
    rw [cat_succ, ih]
    have h := catalan_step n
    field_simp
    linear_combination -h

private theorem roundAway_natCast (c : ℕ) : SequenceMachineLib.roundAway (c : ℚ) = c := by
  simp only [SequenceMachineLib.roundAway, Nat.cast_nonneg, ↓reduceIte]
  rw [Int.floor_eq_iff]
  constructor <;> push_cast <;> linarith

/-- A000108 is the Catalan numbers, Mathlib's `catalan`. -/
theorem A000108.anchor (n : ℕ) : A000108 n = (catalan n : ℤ) := by
  simp only [A000108, cat_eq, roundAway_natCast]
