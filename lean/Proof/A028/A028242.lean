import Prog.A028.A0282

/-! The canonical program of A028242 is the recursion `n-a(n-1)` with `a(0) = 1`: 1, 0, 2, 1, 3, 2, ... -/

local notation "fl" => A028242.P334475472552892041.a

private theorem fl_succ (n : ℕ) : fl (n + 1) = (n + 1 : ℤ) - fl n := by
  simp only [A028242.P334475472552892041.a]
  rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
  simp

private theorem fl_eq (n : ℕ) : fl n = ((if n % 2 = 0 then n / 2 + 1 else n / 2 : ℕ) : ℤ) := by
  induction n with
  | zero => simp [A028242.P334475472552892041.a, SequenceMachineLib.rec_of_lt]
  | succ n ih =>
    rw [fl_succ, ih]
    split_ifs <;> push_cast <;> omega

/-- A028242 is n+1 followed by n: `a(2k) = k + 1`, `a(2k+1) = k`. -/
theorem A028242.anchor (n : ℕ) : A028242 n = ((if n % 2 = 0 then n / 2 + 1 else n / 2 : ℕ) : ℤ) := by
  simp only [A028242, fl_eq]
