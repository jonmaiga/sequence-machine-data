import Prog.A000.A000045
import Mathlib.Data.Nat.Fib.Basic

open SequenceMachineLib

/-! The canonical program of A000045 is `2*a(n-2)+a(n-3)` with `a(0..2) = 0, 1, 1`. -/

local notation "fib3" => A000045.P11838749114346432762.a

private theorem fib3_step (n : ℕ) : fib3 (n + 3) = 2 * fib3 (n + 1) + fib3 n := by
  simp only [A000045.P11838749114346432762.a]
  rw [rec_of_le _ _ (by simp)]
  simp

private theorem fib3_eq_fib (n : ℕ) : fib3 n = Nat.fib n := by
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 => simp [A000045.P11838749114346432762.a, rec_of_lt]
    | n + 3 =>
      rw [fib3_step, ih (n + 1) (by omega), ih n (by omega)]
      have h1 : Nat.fib (n + 2) = Nat.fib n + Nat.fib (n + 1) := Nat.fib_add_two
      have h2 : Nat.fib (n + 3) = Nat.fib (n + 1) + Nat.fib (n + 2) := Nat.fib_add_two
      omega

/-- A000045 is the Fibonacci sequence `Nat.fib`. -/
theorem A000045.anchor (n : ℕ) : A000045 n = (Nat.fib n : ℤ) := by
  simp [A000045, fib3_eq_fib]
