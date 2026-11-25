import SequenceMachineLib.Basic
import Seq.B000.C002

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A402325.P1348422923174333742

`∑{d}[n+1, (1-A008683(#)²)*(1-A008683((n+1)/#)²)]`
-/

namespace A402325.P1348422923174333742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A008683 d ^ 2) * (1 - A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2)

end

end A402325.P1348422923174333742

noncomputable section

/-- A402325: Number of ways to write n = x*y with 1 <= x <= n, 1 <= y <= n, where neither x nor y is squarefree.

Offset 1, canonical program `A402325.P1348422923174333742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402325 (n : ℕ) : ℤ :=
  A402325.P1348422923174333742.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402325.provenance : SequenceMachineLib.Provenance := .assumedProven

