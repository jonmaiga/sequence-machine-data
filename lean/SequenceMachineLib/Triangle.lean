import SequenceMachineLib.Basic

/-!
# SequenceMachineLib.Triangle

Triangles read by rows, `T(0,0), T(1,0), T(1,1), T(2,0), …`: `T(n,k)` is at the index
`i = n * (n + 1) / 2 + k`. The terms of the previous row are those of the triangle with the terms `t`,
and 0 outside of the triangle, `0 ≤ k ≤ n`. Only programs of triangles import this module, it is not
imported by `SequenceMachineLib` (that would rebuild every module that needs `ℝ`).
-/

namespace SequenceMachineLib

variable {α : Type} [Zero α]

/-- The row `n` of the index `i` of `T(n,k)`. -/
def triRow (i : ℕ) : ℕ :=
  (Nat.sqrt (8 * i + 1) - 1) / 2

/-- The column `k` of the index `i` of `T(n,k)`. -/
def triCol (i : ℕ) : ℕ :=
  i - triRow i * (triRow i + 1) / 2

/-- `T(n-1,k-1)` of the triangle `t`, where `i` is the index of `T(n,k)`. -/
def triUpLeft (t : ℕ → α) (i : ℕ) : α :=
  if 0 < triCol i then t (i - triRow i - 1) else 0

/-- `T(n-1,k)` of the triangle `t`, where `i` is the index of `T(n,k)`. -/
def triUp (t : ℕ → α) (i : ℕ) : α :=
  if triCol i < triRow i then t (i - triRow i) else 0

/-- `T(n-1,k+1)` of the triangle `t`, where `i` is the index of `T(n,k)`. -/
def triUpRight (t : ℕ → α) (i : ℕ) : α :=
  if triCol i + 1 < triRow i then t (i - triRow i + 1) else 0

/-- `T(n,k-1)` of the triangle `t`, where `i` is the index of `T(n,k)`. -/
def triLeft (t : ℕ → α) (i : ℕ) : α :=
  if 0 < triCol i then t (i - 1) else 0

/-- `T(n-2,k)` of the triangle `t`, where `i` is the index of `T(n,k)`. -/
def triUp2 (t : ℕ → α) (i : ℕ) : α :=
  if triCol i + 2 ≤ triRow i then t (i + 1 - 2 * triRow i) else 0

/-- `T(n-2,k-1)` of the triangle `t`, where `i` is the index of `T(n,k)`. -/
def triUp2Left (t : ℕ → α) (i : ℕ) : α :=
  if 0 < triCol i ∧ triCol i < triRow i then t (i - 2 * triRow i) else 0

end SequenceMachineLib
