import Prog.A028.A0288
import Proof.A008.A008578

/-- A028815 is `prime(n) + 1`, starting with 1 as `prime(0)`. -/
theorem A028815.anchor (n : ℕ) : A028815 n = if n = 0 then 2 else (Nat.nth Nat.Prime (n - 1) : ℤ) + 1 := by
  simp only [A028815, A028815.P810525423351225743.a, SequenceMachineLib.memo_apply,
    A008578.anchor (n + 1) (by omega)]
  rcases n with _ | n <;> simp
