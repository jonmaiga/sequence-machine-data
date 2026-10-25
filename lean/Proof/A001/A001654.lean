import Prog.A001.A0016
import Mathlib.Data.Nat.Fib.Basic

/-! The canonical program of A001654 is the recursion `3*a(n-1)-a(n-2)-(-1)^n` with `a(0..1) = 0, 1`,
the products of consecutive Fibonacci numbers satisfy it by Cassini's identity. -/

local notation "gr" => A001654.P2587154079132953885.a

private theorem gr_step (n : ℕ) : gr (n + 2) = 3 * gr (n + 1) - gr n - (-1) ^ (n + 2) := by
  simp only [A001654.P2587154079132953885.a]
  rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
  simp

private theorem cassini (n : ℕ) :
    (Nat.fib (n + 1) : ℤ) ^ 2 - Nat.fib n * Nat.fib (n + 2) = (-1) ^ n := by
  induction n with
  | zero => simp
  | succ n ih =>
    have h2 : (Nat.fib (n + 2) : ℤ) = Nat.fib n + Nat.fib (n + 1) := by exact_mod_cast Nat.fib_add_two
    have h3 : (Nat.fib (n + 3) : ℤ) = Nat.fib (n + 1) + Nat.fib (n + 2) := by exact_mod_cast Nat.fib_add_two
    rw [show n + 1 + 1 = n + 2 by ring, show n + 1 + 2 = n + 3 by ring, h3, pow_succ]
    linear_combination (-1 : ℤ) * ih + (Nat.fib (n + 2) : ℤ) * h2

private theorem gr_eq (n : ℕ) : gr n = Nat.fib n * Nat.fib (n + 1) := by
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 => simp [A001654.P2587154079132953885.a, SequenceMachineLib.rec_of_lt]
    | n + 2 =>
      rw [gr_step, ih (n + 1) (by omega), ih n (by omega)]
      have hz : (Nat.fib (n + 2) : ℤ) = Nat.fib n + Nat.fib (n + 1) := by exact_mod_cast Nat.fib_add_two
      have hw : (Nat.fib (n + 3) : ℤ) = Nat.fib (n + 1) + Nat.fib (n + 2) := by exact_mod_cast Nat.fib_add_two
      rw [show n + 1 + 1 = n + 2 by ring, show n + 2 + 1 = n + 3 by ring]
      linear_combination -(Nat.fib (n + 2) : ℤ) * hw - ((Nat.fib (n + 2) : ℤ) - Nat.fib (n + 1)) * hz + cassini n

/-- A001654 is the golden rectangle numbers `F(n) * F(n+1)`, F the Fibonacci numbers `Nat.fib`. -/
theorem A001654.anchor (n : ℕ) : A001654 n = ((Nat.fib n * Nat.fib (n + 1) : ℕ) : ℤ) := by
  simp [A001654, gr_eq]
