import Prog.A070.A0709
import Mathlib.Data.Nat.Digits.Lemmas

/-! The canonical program of A070939 is the recursion `1+a(floor(n/2))` with `a(0..1) = 1, 1`, the
number of binary digits of n ≥ 1 is one more than that of ⌊n/2⌋; 0 is written with one digit. -/

local notation "len" => A070939.P14677302147902843740.a

private theorem len_step (n : ℕ) : len (n + 2) = 1 + len ((n + 2) / 2) := by
  simp only [A070939.P14677302147902843740.a]
  rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
  have h : ⌊((n + 2 : ℕ) : ℚ) / 2⌋ = (((n + 2) / 2 : ℕ) : ℤ) := by
    exact_mod_cast Rat.floor_natCast_div_natCast (n + 2) 2
  simp only [Nat.cast_add, Nat.cast_ofNat] at h
  simp only [Nat.cast_add, Nat.cast_ofNat, h, Int.toNat_natCast, show (n + 2) / 2 < n + 2 by omega, ↓reduceIte]

private theorem len_eq (n : ℕ) : len n = if n = 0 then 1 else (Nat.digits 2 n).length := by
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 => simp [A070939.P14677302147902843740.a, SequenceMachineLib.rec_of_lt]
    | 1 => simp [A070939.P14677302147902843740.a, SequenceMachineLib.rec_of_lt]
    | n + 2 =>
      rw [len_step, ih ((n + 2) / 2) (by omega), Nat.digits_def' (by norm_num) (by omega)]
      simp [Nat.add_comm]

/-- A070939 is the number of binary digits of n, with one digit for 0. -/
theorem A070939.anchor (n : ℕ) : A070939 n = if n = 0 then 1 else ((Nat.digits 2 n).length : ℤ) := by
  simp only [A070939, len_eq]
  split_ifs <;> simp
