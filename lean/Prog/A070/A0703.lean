import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A070301: Numbers n such that sum of first 2n primes is prime.

The programs for A070301, the canonical program `A070301.P14203331873817111761` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070301 has offset 1).

The definition of A070301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070301.P14203331873817111761

`A013916(n+2)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A070301

/-- `A013916(n+2)/2` -/
def P14203331873817111761.Spec : Prop :=
  ∀ n, P14203331873817111761.a n = (A070301 (n + 1) : ℚ)

end A070301

/-! ## A070301.P3730628636744592336

`lt[A105783(2*(n+1)), 1]+1`
-/

namespace A070301.P3730628636744592336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A070301.P3730628636744592336

namespace A070301

/-- `lt[A105783(2*(n+1)), 1]+1` -/
def P3730628636744592336.Spec : Prop :=
  ∀ n, (P3730628636744592336.a n : ℤ) = A070301 (n + 1)

end A070301

/-! ## A070301.P6664318245100109341

`lt[A105783(A028310(n)+n), 1]`
-/

namespace A070301.P6664318245100109341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (A028310 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070301.P6664318245100109341

namespace A070301

/-- `lt[A105783(A028310(n)+n), 1]` -/
def P6664318245100109341.Spec : Prop :=
  ∀ n, (P6664318245100109341.a n : ℤ) = A070301 (n + 1)

end A070301

/-! ## A070301.P6897338392332115814

`eq[0, A366092(2*n)]`
-/

namespace A070301.P6897338392332115814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366092 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070301.P6897338392332115814

namespace A070301

/-- `eq[0, A366092(2*n)]` -/
def P6897338392332115814.Spec : Prop :=
  ∀ n, (P6897338392332115814.a n : ℤ) = A070301 (n + 1)

end A070301

/-! ## A070301.P12430159166011095958

`eq[1, A102862(2*(n+1))]+1`
-/

namespace A070301.P12430159166011095958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070301.P12430159166011095958

namespace A070301

/-- `eq[1, A102862(2*(n+1))]+1` -/
def P12430159166011095958.Spec : Prop :=
  ∀ n, (P12430159166011095958.a n : ℤ) = A070301 (n + 1)

end A070301

/-! ## A070301.P1234043181038201512

`eq[1, A132995(2*(n+1))]+1`
-/

namespace A070301.P1234043181038201512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132995 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070301.P1234043181038201512

namespace A070301

/-- `eq[1, A132995(2*(n+1))]+1` -/
def P1234043181038201512.Spec : Prop :=
  ∀ n, (P1234043181038201512.a n : ℤ) = A070301 (n + 1)

end A070301

/-! ## A070301.P8041452093901728387

`eq[2, A007610(2*(n+1))]+1`
-/

namespace A070301.P8041452093901728387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070301.P8041452093901728387

namespace A070301

/-- `eq[2, A007610(2*(n+1))]+1` -/
def P8041452093901728387.Spec : Prop :=
  ∀ n, (P8041452093901728387.a n : ℤ) = A070301 (n + 1)

end A070301

/-! ## A070301.P18111097270460490226

`eq[2, A074369(2*(n+1))]+1`
-/

namespace A070301.P18111097270460490226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074369 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070301.P18111097270460490226

namespace A070301

/-- `eq[2, A074369(2*(n+1))]+1` -/
def P18111097270460490226.Spec : Prop :=
  ∀ n, (P18111097270460490226.a n : ℤ) = A070301 (n + 1)

end A070301

/-! ## A070301.P16388274151475739136

`A001281(A013916(n+2))`
-/

namespace A070301.P16388274151475739136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A013916 (n + 2)).toNat

end

end A070301.P16388274151475739136

namespace A070301

/-- `A001281(A013916(n+2))` -/
def P16388274151475739136.Spec : Prop :=
  ∀ n, P16388274151475739136.a n = A070301 (n + 1)

end A070301

/-! ## A070301.P10138866133200058893

`A160791(A013916(n+2)-1)`
-/

namespace A070301.P10138866133200058893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (A013916 (n + 2) - 1).toNat

end

end A070301.P10138866133200058893

namespace A070301

/-- `A160791(A013916(n+2)-1)` -/
def P10138866133200058893.Spec : Prop :=
  ∀ n, P10138866133200058893.a n = A070301 (n + 1)

end A070301

/-! ## A070301.P5382309908448503363

`A160793(A013916(n+2)-1)`
-/

namespace A070301.P5382309908448503363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (A013916 (n + 2) - 1).toNat

end

end A070301.P5382309908448503363

namespace A070301

/-- `A160793(A013916(n+2)-1)` -/
def P5382309908448503363.Spec : Prop :=
  ∀ n, P5382309908448503363.a n = A070301 (n + 1)

end A070301

/-! ## A070301.P17342218411544176712

`A080513(eq[2, A074369(n+2)])`
-/

namespace A070301.P17342218411544176712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070301.P17342218411544176712

namespace A070301

/-- `A080513(eq[2, A074369(n+2)])` -/
def P17342218411544176712.Spec : Prop :=
  ∀ n, P17342218411544176712.a n = A070301 (n + 1)

end A070301

/-! ## A070301.P7029054936720055336

`lt[A105783(A028310(2*n)), 1]`
-/

namespace A070301.P7029054936720055336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (A028310 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070301.P7029054936720055336

namespace A070301

/-- `lt[A105783(A028310(2*n)), 1]` -/
def P7029054936720055336.Spec : Prop :=
  ∀ n, (P7029054936720055336.a n : ℤ) = A070301 (n + 1)

end A070301

/-! ## A070301.P5327540329880688407

`record[A008619(n)-n*A102863(n+1)]`
-/

namespace A070301.P5327540329880688407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (n : ℤ) * A102863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070301.P5327540329880688407

namespace A070301

/-- `record[A008619(n)-n*A102863(n+1)]` -/
def P5327540329880688407.Spec : Prop :=
  ∀ n, P5327540329880688407.a n = A070301 (n + 1)

end A070301

/-! ## A070301.P6119737690457830061

`lt[A007504(2*n), A121755(2*(n+1))]+1`
-/

namespace A070301.P6119737690457830061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070301.P6119737690457830061

namespace A070301

/-- `lt[A007504(2*n), A121755(2*(n+1))]+1` -/
def P6119737690457830061.Spec : Prop :=
  ∀ n, (P6119737690457830061.a n : ℤ) = A070301 (n + 1)

end A070301

/-! ## A070301.P5467107557539621681

`A000720(A013917(n+2))/2`
-/

namespace A070301.P5467107557539621681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (A013917 (n + 2)).toNat : ℚ) / 2

end

end A070301.P5467107557539621681

namespace A070301

/-- `A000720(A013917(n+2))/2` -/
def P5467107557539621681.Spec : Prop :=
  ∀ n, P5467107557539621681.a n = (A070301 (n + 1) : ℚ)

end A070301

/-!
# A070302: Number of 3 X 3 X 3 magic cubes with sum 3n.

The programs for A070302, the canonical program `A070302.P13668818378577634536` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070302 has offset 1).

The definition of A070302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070302.P13668818378577634536

`25*(n+1)²/4-7*(n+1)/2-11*(n+1)^3/2+11*(n+1)^4/4+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070302

/-- `25*(n+1)²/4-7*(n+1)/2-11*(n+1)^3/2+11*(n+1)^4/4+1` -/
def P13668818378577634536.Spec : Prop :=
  ∀ n, P13668818378577634536.a n = (A070302 (n + 1) : ℚ)

end A070302

/-! ## A070302.P2532324215926505263

`∑[A008528(n)]`
-/

namespace A070302.P2532324215926505263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070302.P2532324215926505263

namespace A070302

/-- `∑[A008528(n)]` -/
def P2532324215926505263.Spec : Prop :=
  ∀ n, P2532324215926505263.a n = A070302 (n + 1)

end A070302

/-! ## A070302.P1216307774743874157

`∑[A008706(n)+n*A010003(n)]`
-/

namespace A070302.P1216307774743874157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (n : ℤ) * A010003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070302.P1216307774743874157

namespace A070302

/-- `∑[A008706(n)+n*A010003(n)]` -/
def P1216307774743874157.Spec : Prop :=
  ∀ n, P1216307774743874157.a n = A070302 (n + 1)

end A070302

/-! ## A070302.P9335379849043484181

`A211439(∑[3*n])`
-/

namespace A070302.P9335379849043484181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211439 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070302.P9335379849043484181

namespace A070302

/-- `A211439(∑[3*n])` -/
def P9335379849043484181.Spec : Prop :=
  ∀ n, P9335379849043484181.a n = A070302 (n + 1)

end A070302

/-! ## A070302.P4056292522019779595

`A025766(A164136(n))`
-/

namespace A070302.P4056292522019779595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025766 (A164136 n).toNat

end

end A070302.P4056292522019779595

namespace A070302

/-- `A025766(A164136(n))` -/
def P4056292522019779595.Spec : Prop :=
  ∀ n, P4056292522019779595.a n = A070302 (n + 1)

end A070302

/-!
# A070303: Primes p such that the equation p^2*x^2==0 (mod p^2+x^2) has no solution.

The programs for A070303, the canonical program `A070303.P13983563299875211642` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070303 has offset 1).

The definition of A070303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9565 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070303.P1711320300063455561

`∪[A059055(n+1), A121658(n+1)]`
-/

namespace A070303.P1711320300063455561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070303.P1711320300063455561

namespace A070303

/-- `∪[A059055(n+1), A121658(n+1)]` -/
def P1711320300063455561.Spec : Prop :=
  ∀ n, (P1711320300063455561.a n : ℤ) = A070303 (n + 1)

end A070303

/-! ## A070303.P13983563299875211642

`p?[round(sqrt(n)+1+n)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070303

/-- `p?[round(sqrt(n)+1+n)]` -/
def P13983563299875211642.Spec : Prop :=
  ∀ n, P13983563299875211642.a n = A070303 (n + 1)

theorem P13983563299875211642.correct : P13983563299875211642.Spec := by
  intro n
  simp only [A070303, Nat.add_sub_cancel]

end A070303

/-! ## A070303.P17060776876047593787

`record[A052410(A000010(n+3))+1]`
-/

namespace A070303.P17060776876047593787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A000010 (n + 3)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070303.P17060776876047593787

namespace A070303

/-- `record[A052410(A000010(n+3))+1]` -/
def P17060776876047593787.Spec : Prop :=
  ∀ n, P17060776876047593787.a n = A070303 (n + 1)

end A070303

/-! ## A070303.P3857958376629603578

`eq[A281113(n+2)², A052409(n+1)]+2`
-/

namespace A070303.P3857958376629603578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281113 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A070303.P3857958376629603578

namespace A070303

/-- `eq[A281113(n+2)², A052409(n+1)]+2` -/
def P3857958376629603578.Spec : Prop :=
  ∀ n, (P3857958376629603578.a n : ℤ) = A070303 (n + 1)

end A070303

/-! ## A070303.P16854294865518934513

`record[A006530(A190612(n+1))]`
-/

namespace A070303.P16854294865518934513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A190612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070303.P16854294865518934513

namespace A070303

/-- `record[A006530(A190612(n+1))]` -/
def P16854294865518934513.Spec : Prop :=
  ∀ n, P16854294865518934513.a n = A070303 (n + 1)

end A070303

/-! ## A070303.P14215396445365078842

`filter[A088905(n+1), A353670(#)]`
-/

namespace A070303.P14215396445365078842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A070303.P14215396445365078842

namespace A070303

/-- `filter[A088905(n+1), A353670(#)]` -/
def P14215396445365078842.Spec : Prop :=
  ∀ n, P14215396445365078842.a n = A070303 (n + 1)

end A070303

/-! ## A070303.P13049068500389581379

`filter[A088905(n+1), A379969(#)]`
-/

namespace A070303.P13049068500389581379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A070303.P13049068500389581379

namespace A070303

/-- `filter[A088905(n+1), A379969(#)]` -/
def P13049068500389581379.Spec : Prop :=
  ∀ n, P13049068500389581379.a n = A070303 (n + 1)

end A070303

/-! ## A070303.P8164257242478290172

`filter[A088905(n+2), A010051(#)]`
-/

namespace A070303.P8164257242478290172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A070303.P8164257242478290172

namespace A070303

/-- `filter[A088905(n+2), A010051(#)]` -/
def P8164257242478290172.Spec : Prop :=
  ∀ n, P8164257242478290172.a n = A070303 (n + 1)

end A070303

/-! ## A070303.P50377784707551832

`filter[A088905(n+2), A323152(#)]`
-/

namespace A070303.P50377784707551832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A070303.P50377784707551832

namespace A070303

/-- `filter[A088905(n+2), A323152(#)]` -/
def P50377784707551832.Spec : Prop :=
  ∀ n, P50377784707551832.a n = A070303 (n + 1)

end A070303

/-! ## A070303.P17673139238687707989

`filter[A088905(n+2), A323153(#)]`
-/

namespace A070303.P17673139238687707989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A070303.P17673139238687707989

namespace A070303

/-- `filter[A088905(n+2), A323153(#)]` -/
def P17673139238687707989.Spec : Prop :=
  ∀ n, P17673139238687707989.a n = A070303 (n + 1)

end A070303

/-! ## A070303.P4349376402643299770

`filter[A088905(n+2), A340371(#)]`
-/

namespace A070303.P4349376402643299770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A070303.P4349376402643299770

namespace A070303

/-- `filter[A088905(n+2), A340371(#)]` -/
def P4349376402643299770.Spec : Prop :=
  ∀ n, P4349376402643299770.a n = A070303 (n + 1)

end A070303

/-! ## A070303.P250284193054709338

`filter[A088905(n+2), A365716(#)]`
-/

namespace A070303.P250284193054709338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A070303.P250284193054709338

namespace A070303

/-- `filter[A088905(n+2), A365716(#)]` -/
def P250284193054709338.Spec : Prop :=
  ∀ n, P250284193054709338.a n = A070303 (n + 1)

end A070303

/-! ## A070303.P12682875087632541236

`filter[A088905(n+2), A380467(#)]`
-/

namespace A070303.P12682875087632541236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A070303.P12682875087632541236

namespace A070303

/-- `filter[A088905(n+2), A380467(#)]` -/
def P12682875087632541236.Spec : Prop :=
  ∀ n, P12682875087632541236.a n = A070303 (n + 1)

end A070303

/-! ## A070303.P12182614564815633556

`∩[A004139(n+1), A088905(n+1)]`
-/

namespace A070303.P12182614564815633556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070303.P12182614564815633556

namespace A070303

/-- `∩[A004139(n+1), A088905(n+1)]` -/
def P12182614564815633556.Spec : Prop :=
  ∀ n, (P12182614564815633556.a n : ℤ) = A070303 (n + 1)

end A070303

/-! ## A070303.P5024553319517710488

`∩[A006005(n+1), A088905(n+1)]`
-/

namespace A070303.P5024553319517710488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070303.P5024553319517710488

namespace A070303

/-- `∩[A006005(n+1), A088905(n+1)]` -/
def P5024553319517710488.Spec : Prop :=
  ∀ n, (P5024553319517710488.a n : ℤ) = A070303 (n + 1)

end A070303

/-! ## A070303.P7672446014664496495

`∩[A038550(n+1), A088905(n+1)]`
-/

namespace A070303.P7672446014664496495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070303.P7672446014664496495

namespace A070303

/-- `∩[A038550(n+1), A088905(n+1)]` -/
def P7672446014664496495.Spec : Prop :=
  ∀ n, (P7672446014664496495.a n : ℤ) = A070303 (n + 1)

end A070303

/-! ## A070303.P9401350632526941191

`∩[A065091(n+1), A088905(n+1)]`
-/

namespace A070303.P9401350632526941191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070303.P9401350632526941191

namespace A070303

/-- `∩[A065091(n+1), A088905(n+1)]` -/
def P9401350632526941191.Spec : Prop :=
  ∀ n, (P9401350632526941191.a n : ℤ) = A070303 (n + 1)

end A070303

/-! ## A070303.P16498860271998783803

`∩[A066542(n+1), A088905(n+1)]`
-/

namespace A070303.P16498860271998783803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070303.P16498860271998783803

namespace A070303

/-- `∩[A066542(n+1), A088905(n+1)]` -/
def P16498860271998783803.Spec : Prop :=
  ∀ n, (P16498860271998783803.a n : ℤ) = A070303 (n + 1)

end A070303

/-! ## A070303.P2888355836508791857

`∩[A082378(n+1), A088905(n+1)]`
-/

namespace A070303.P2888355836508791857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070303.P2888355836508791857

namespace A070303

/-- `∩[A082378(n+1), A088905(n+1)]` -/
def P2888355836508791857.Spec : Prop :=
  ∀ n, (P2888355836508791857.a n : ℤ) = A070303 (n + 1)

end A070303

/-! ## A070303.P10580243064123350472

`∩[A088905(n+1), A140826(n+1)]`
-/

namespace A070303.P10580243064123350472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070303.P10580243064123350472

namespace A070303

/-- `∩[A088905(n+1), A140826(n+1)]` -/
def P10580243064123350472.Spec : Prop :=
  ∀ n, (P10580243064123350472.a n : ℤ) = A070303 (n + 1)

end A070303

/-!
# A070304: a(n) = number of times n^2*k^2/(n^2+k^2) is an integer as k ranges over 0, 1, 2, ...

The programs for A070304, there is no canonical definition to state claims against.
-/

/-! ## A070304.P6194030427148177148

`A071086(n+1)+1`
-/

namespace A070304.P6194030427148177148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071086 (n + 1) + 1

end

end A070304.P6194030427148177148

/-! ## A070304.P13574790969406911266

`gcd(6, A030108(A000712(n)))`
-/

namespace A070304.P13574790969406911266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A030108 (A000712 n).toNat)

end

end A070304.P13574790969406911266

/-! ## A070304.P2088411889502265645

`gcd(A146199(n+4)-4, A146163(n))`
-/

namespace A070304.P2088411889502265645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146199 (n + 4) - 4) (A146163 n)

end

end A070304.P2088411889502265645

/-! ## A070304.P7489653940224346682

`gcd(A098277(A008282(n+1)), A267005(n))`
-/

namespace A070304.P7489653940224346682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098277 (A008282 (n + 1)).toNat) (A267005 n)

end

end A070304.P7489653940224346682

/-! ## A070304.P15150795846475030023

`gcd(A128657(n+1), A276152(A005117(n+1)))`
-/

namespace A070304.P15150795846475030023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128657 (n + 1)) (A276152 (A005117 (n + 1)).toNat)

end

end A070304.P15150795846475030023

/-!
# A070305: Numbers m such that Card(k>0 : phi(k)=phi(m)) = tau(m).

The programs for A070305, there is no canonical definition to state claims against.
-/

/-! ## A070305.P16966134925031870744

`eq[A000005(n+1), A014197(A000010(n+1))]+1`
-/

namespace A070305.P16966134925031870744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070305.P16966134925031870744

/-! ## A070305.P13146788176802975169

`eq[A000005(n+1), A066412(n+1)]+1`
-/

namespace A070305.P13146788176802975169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070305.P13146788176802975169

/-! ## A070305.P17810715228610120754

`eq[A066412(n+1), A183063(2*(n+1))]+1`
-/

namespace A070305.P17810715228610120754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070305.P17810715228610120754

/-!
# A070306: a(n) = 2*phi(n)/2^omega(n).

The programs for A070306, the canonical program `A070306.P6091556662605809074` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070306 has offset 1).

The definition of A070306 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070306.P6091556662605809074

`A000010(n+1)/2^(A001221(n+1)-1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070306

/-- `A000010(n+1)/2^(A001221(n+1)-1)` -/
def P6091556662605809074.Spec : Prop :=
  ∀ n, P6091556662605809074.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P14747913137190525918

`2*A000010(n+1)/2^A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070306.P14747913137190525918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000010 (n + 1) : ℚ) / (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A070306.P14747913137190525918

namespace A070306

/-- `2*A000010(n+1)/2^A001221(n+1)` -/
def P14747913137190525918.Spec : Prop :=
  ∀ n, P14747913137190525918.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P13161022256143863754

`2/(n+1)*A248003(n+1)`
-/

namespace A070306.P13161022256143863754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A248003 (n + 1) : ℚ)

end

end A070306.P13161022256143863754

namespace A070306

/-- `2/(n+1)*A248003(n+1)` -/
def P13161022256143863754.Spec : Prop :=
  ∀ n, P13161022256143863754.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P2646641162564721319

`2*A089692(n+1)/A000034(n)`
-/

namespace A070306.P2646641162564721319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A089692 (n + 1) : ℚ) / (A000034 n : ℚ))

end

end A070306.P2646641162564721319

namespace A070306

/-- `2*A089692(n+1)/A000034(n)` -/
def P2646641162564721319.Spec : Prop :=
  ∀ n, P2646641162564721319.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P13573242364867460329

`2*A000010(n+1)/A034444(n+1)`
-/

namespace A070306.P13573242364867460329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000010 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ))

end

end A070306.P13573242364867460329

namespace A070306

/-- `2*A000010(n+1)/A034444(n+1)` -/
def P13573242364867460329.Spec : Prop :=
  ∀ n, P13573242364867460329.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P12044061719804003433

`2/A007947(n+1)*A090780(n+1)`
-/

namespace A070306.P12044061719804003433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A007947 (n + 1) : ℚ) * (A090780 (n + 1) : ℚ)

end

end A070306.P12044061719804003433

namespace A070306

/-- `2/A007947(n+1)*A090780(n+1)` -/
def P12044061719804003433.Spec : Prop :=
  ∀ n, P12044061719804003433.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P762976616464345793

`A005843(A000010(n+1))/A034444(n+1)`
-/

namespace A070306.P762976616464345793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A000010 (n + 1)).toNat : ℚ) / (A034444 (n + 1) : ℚ)

end

end A070306.P762976616464345793

namespace A070306

/-- `A005843(A000010(n+1))/A034444(n+1)` -/
def P762976616464345793.Spec : Prop :=
  ∀ n, P762976616464345793.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P10342685692577341187

`2*A000010(n+1)/A000005(A007947(n+1))`
-/

namespace A070306.P10342685692577341187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000010 (n + 1) : ℚ) / (A000005 (A007947 (n + 1)).toNat : ℚ))

end

end A070306.P10342685692577341187

namespace A070306

/-- `2*A000010(n+1)/A000005(A007947(n+1))` -/
def P10342685692577341187.Spec : Prop :=
  ∀ n, P10342685692577341187.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P8933335702348222297

`A089692(n+1)/A000010(n+2)*A062570(n+2)`
-/

namespace A070306.P8933335702348222297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089692 (n + 1) : ℚ) / (A000010 (n + 2) : ℚ) * (A062570 (n + 2) : ℚ)

end

end A070306.P8933335702348222297

namespace A070306

/-- `A089692(n+1)/A000010(n+2)*A062570(n+2)` -/
def P8933335702348222297.Spec : Prop :=
  ∀ n, P8933335702348222297.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P9389963372873224826

`A000034(n+1)*A089692(n+1)`
-/

namespace A070306.P9389963372873224826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A089692 (n + 1)

end

end A070306.P9389963372873224826

namespace A070306

/-- `A000034(n+1)*A089692(n+1)` -/
def P9389963372873224826.Spec : Prop :=
  ∀ n, P9389963372873224826.a n = A070306 (n + 1)

end A070306

/-! ## A070306.P17373204994994412705

`A089692(A246943(n+1))`
-/

namespace A070306.P17373204994994412705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089692 (A246943 (n + 1)).toNat

end

end A070306.P17373204994994412705

namespace A070306

/-- `A089692(A246943(n+1))` -/
def P17373204994994412705.Spec : Prop :=
  ∀ n, P17373204994994412705.a n = A070306 (n + 1)

end A070306

/-! ## A070306.P4461436858603171014

`Δ[A206297(n+1)]/A034444(n+1)`
-/

namespace A070306.P4461436858603171014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206297 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A034444 (n + 1) : ℚ)

end

end A070306.P4461436858603171014

namespace A070306

/-- `Δ[A206297(n+1)]/A034444(n+1)` -/
def P4461436858603171014.Spec : Prop :=
  ∀ n, P4461436858603171014.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P1999685469056934833

`A046073(A195161(n+1))*A134451(A114962(n))`
-/

namespace A070306.P1999685469056934833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A195161 (n + 1)).toNat * A134451 (A114962 n).toNat

end

end A070306.P1999685469056934833

namespace A070306

/-- `A046073(A195161(n+1))*A134451(A114962(n))` -/
def P1999685469056934833.Spec : Prop :=
  ∀ n, P1999685469056934833.a n = A070306 (n + 1)

end A070306

/-! ## A070306.P17399528148503612427

`A055034(n+1)/A007875(n+1)*A134451(A114962(n))`
-/

namespace A070306.P17399528148503612427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055034 (n + 1) : ℚ) / (A007875 (n + 1) : ℚ) * (A134451 (A114962 n).toNat : ℚ)

end

end A070306.P17399528148503612427

namespace A070306

/-- `A055034(n+1)/A007875(n+1)*A134451(A114962(n))` -/
def P17399528148503612427.Spec : Prop :=
  ∀ n, P17399528148503612427.a n = (A070306 (n + 1) : ℚ)

end A070306

/-! ## A070306.P5389086343610614783

`A000010(n+1)/A068068(n+1)*A134451(A114962(n))`
-/

namespace A070306.P5389086343610614783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A068068 (n + 1) : ℚ) * (A134451 (A114962 n).toNat : ℚ)

end

end A070306.P5389086343610614783

namespace A070306

/-- `A000010(n+1)/A068068(n+1)*A134451(A114962(n))` -/
def P5389086343610614783.Spec : Prop :=
  ∀ n, P5389086343610614783.a n = (A070306 (n + 1) : ℚ)

end A070306

/-!
# A070307: Number of n X n matrices with nonnegative integer entries such that every row sum equals 3.

The programs for A070307, the canonical program `A070307.P11955919395310825608` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070307 has offset 1).

The definition of A070307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070307.P618589160578864047

`C(n+3, 3)^(n+1)`
-/

namespace A070307.P618589160578864047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 ^ (n + 1)

end

end A070307.P618589160578864047

namespace A070307

/-- `C(n+3, 3)^(n+1)` -/
def P618589160578864047.Spec : Prop :=
  ∀ n, (P618589160578864047.a n : ℤ) = A070307 (n + 1)

theorem P618589160578864047.correct : P618589160578864047.Spec := by
  intro n
  simp only [A070307, Nat.add_sub_cancel, A070307.P618589160578864047.a, A070307.P11955919395310825608.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070307

/-! ## A070307.P11955919395310825608

`A000292(n+1)^(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070307

/-- `A000292(n+1)^(n+1)` -/
def P11955919395310825608.Spec : Prop :=
  ∀ n, P11955919395310825608.a n = A070307 (n + 1)

theorem P11955919395310825608.correct : P11955919395310825608.Spec := by
  intro n
  simp only [A070307, Nat.add_sub_cancel]

end A070307

/-! ## A070307.P13523033378091317662

`∑[∑[n+1]]^(n+1)`
-/

namespace A070307.P13523033378091317662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A070307.P13523033378091317662

namespace A070307

/-- `∑[∑[n+1]]^(n+1)` -/
def P13523033378091317662.Spec : Prop :=
  ∀ n, (P13523033378091317662.a n : ℤ) = A070307 (n + 1)

end A070307

/-! ## A070307.P7754013540791319018

`record[n^A056559(n)]`
-/

namespace A070307.P7754013540791319018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A056559 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070307.P7754013540791319018

namespace A070307

/-- `record[n^A056559(n)]` -/
def P7754013540791319018.Spec : Prop :=
  ∀ n, P7754013540791319018.a n = (A070307 (n + 1) : ℚ)

end A070307

/-! ## A070307.P3580555857138279994

`record[A005232(n)^A001057(n)]`
-/

namespace A070307.P3580555857138279994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005232 n : ℚ) ^ (A001057 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070307.P3580555857138279994

namespace A070307

/-- `record[A005232(n)^A001057(n)]` -/
def P3580555857138279994.Spec : Prop :=
  ∀ n, P3580555857138279994.a n = (A070307 (n + 1) : ℚ)

end A070307

/-!
# A070309: Number of solutions 2<=x<=A060679(n) to the equation x^A060679(n)==1 (mod A060679(n)) where A060679(n) are the orders of non-cyclic groups.

The programs for A070309, the canonical program `A070309.P13550694292198192403` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070309 has offset 1).

The definition of A070309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6886 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070309.P13550694292198192403

`A072994(A060679(n+1))-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A070309

/-- `A072994(A060679(n+1))-1` -/
def P13550694292198192403.Spec : Prop :=
  ∀ n, P13550694292198192403.a n = A070309 (n + 1)

theorem P13550694292198192403.correct : P13550694292198192403.Spec := by
  intro n
  simp only [A070309, Nat.add_sub_cancel]

end A070309

/-! ## A070309.P13765459817558754007

`A072994(lt[1, A009195(n+1)]+1)-1`
-/

namespace A070309.P13765459817558754007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A070309.P13765459817558754007

namespace A070309

/-- `A072994(lt[1, A009195(n+1)]+1)-1` -/
def P13765459817558754007.Spec : Prop :=
  ∀ n, P13765459817558754007.a n = A070309 (n + 1)

end A070309

/-! ## A070309.P13813714168052810142

`A072994(lt[1, A082067(n+1)]+1)-1`
-/

namespace A070309.P13813714168052810142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A070309.P13813714168052810142

namespace A070309

/-- `A072994(lt[1, A082067(n+1)]+1)-1` -/
def P13813714168052810142.Spec : Prop :=
  ∀ n, P13813714168052810142.a n = A070309 (n + 1)

end A070309

/-! ## A070309.P17706225745332458193

`A072994(lt[1, A270120(n+1)]+1)-1`
-/

namespace A070309.P17706225745332458193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A070309.P17706225745332458193

namespace A070309

/-- `A072994(lt[1, A270120(n+1)]+1)-1` -/
def P17706225745332458193.Spec : Prop :=
  ∀ n, P17706225745332458193.a n = A070309 (n + 1)

end A070309

/-! ## A070309.P6242936659144678049

`A072994(eq[1, A297086(n+1)+1]+1)-1`
-/

namespace A070309.P6242936659144678049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297086 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A070309.P6242936659144678049

namespace A070309

/-- `A072994(eq[1, A297086(n+1)+1]+1)-1` -/
def P6242936659144678049.Spec : Prop :=
  ∀ n, P6242936659144678049.a n = A070309 (n + 1)

end A070309

/-! ## A070309.P554204473121057898

`A072994(lt[1, gcd(n+1, A000010(n+1))]+1)-1`
-/

namespace A070309.P554204473121057898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) - 1

end

end A070309.P554204473121057898

namespace A070309

/-- `A072994(lt[1, gcd(n+1, A000010(n+1))]+1)-1` -/
def P554204473121057898.Spec : Prop :=
  ∀ n, P554204473121057898.a n = A070309 (n + 1)

end A070309

/-! ## A070309.P17619724269650541436

`A072994(comp[C(A109395(n+1), n)])-1`
-/

namespace A070309.P17619724269650541436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109395 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A070309.P17619724269650541436

namespace A070309

/-- `A072994(comp[C(A109395(n+1), n)])-1` -/
def P17619724269650541436.Spec : Prop :=
  ∀ n, P17619724269650541436.a n = A070309 (n + 1)

end A070309

/-! ## A070309.P17255739374642746920

`A072994(lt[1, A000001(n)])-1`
-/

namespace A070309.P17255739374642746920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A070309.P17255739374642746920

namespace A070309

/-- `A072994(lt[1, A000001(n)])-1` -/
def P17255739374642746920.Spec : Prop :=
  ∀ n, P17255739374642746920.a n = A070309 (n + 1)

end A070309

/-! ## A070309.P8246166923368896002

`A072994(lt[1, A297420(n)])-1`
-/

namespace A070309.P8246166923368896002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A070309.P8246166923368896002

namespace A070309

/-- `A072994(lt[1, A297420(n)])-1` -/
def P8246166923368896002.Spec : Prop :=
  ∀ n, P8246166923368896002.a n = A070309 (n + 1)

end A070309

/-! ## A070309.P4322877287882318640

`A072994(lt[1, A201733(round(acot(n)+n))])-1`
-/

namespace A070309.P4322877287882318640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A070309.P4322877287882318640

namespace A070309

/-- `A072994(lt[1, A201733(round(acot(n)+n))])-1` -/
def P4322877287882318640.Spec : Prop :=
  ∀ n, P4322877287882318640.a n = A070309 (n + 1)

end A070309

/-!
# A070312: a(1) = a(2) = 1; a(n) = a(n-1) + concatenation of a(n-2) and a(n-1).

The programs for A070312, there is no canonical definition to state claims against.
-/

/-! ## A070312.P4644259700657541262

`A087712(A008288(n)*A325782(n+1))`
-/

namespace A070312.P4644259700657541262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A008288 n * A325782 (n + 1)).toNat

end

end A070312.P4644259700657541262

/-!
# A070313: a(n) = 2^n - (2*n+1).

The programs for A070313, the canonical program `A070313.P8694605406940819949` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070313 has offset 0).

The definition of A070313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-(2*n+1)` (program `A070313.P8694605406940819949`, by `A070313.P8694605406940819949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070313.P8694605406940819949

`2^n-(2*n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070313

/-- `2^n-(2*n+1)` -/
def P8694605406940819949.Spec : Prop :=
  ∀ n, P8694605406940819949.a n = A070313 n

theorem P8694605406940819949.correct : P8694605406940819949.Spec := by
  intro n
  simp only [A070313]

end A070313

/-! ## A070313.P11460322551037157753

`∑[ogf((-x+3x^2)/(1-3x+2x^2))]`
-/

namespace A070313.P11460322551037157753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 3] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070313.P11460322551037157753

namespace A070313

/-- `∑[ogf((-x+3x^2)/(1-3x+2x^2))]` -/
def P11460322551037157753.Spec : Prop :=
  ∀ n, P11460322551037157753.a n = A070313 n

end A070313

/-! ## A070313.P1791677187065606998

`ogf((-x+3x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A070313.P1791677187065606998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 3] [1, -4, 5, -2] n

end

end A070313.P1791677187065606998

namespace A070313

/-- `ogf((-x+3x^2)/(1-4x+5x^2-2x^3))` -/
def P1791677187065606998.Spec : Prop :=
  ∀ n, P1791677187065606998.a n = A070313 n

end A070313

/-! ## A070313.P9011606918848517792

`xor(2*n-2^n, -1)`
-/

namespace A070313.P9011606918848517792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * n : ℤ) - (2 ^ n : ℤ)) (-1)

end

end A070313.P9011606918848517792

namespace A070313

/-- `xor(2*n-2^n, -1)` -/
def P9011606918848517792.Spec : Prop :=
  ∀ n, P9011606918848517792.a n = A070313 n

end A070313

/-! ## A070313.P11636986955801919810

`∑[2*(a(n-1)+1)]` with `a(0)=0, a(1)=-1`
-/

namespace A070313.P11636986955801919810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  2 * (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070313.P11636986955801919810

namespace A070313

/-- `∑[2*(a(n-1)+1)]` -/
def P11636986955801919810.Spec : Prop :=
  ∀ n, P11636986955801919810.a n = A070313 n

end A070313

/-! ## A070313.P1770661880958539439

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=-1, a(2)=1`
-/

namespace A070313.P1770661880958539439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070313.P1770661880958539439

namespace A070313

/-- `∑[∑[2*a(n-1)]]` -/
def P1770661880958539439.Spec : Prop :=
  ∀ n, P1770661880958539439.a n = A070313 n

end A070313

/-! ## A070313.P6063715302519698900

`2*(a(n-1)-3/2+n)` with `a(0)=0`
-/

namespace A070313.P6063715302519698900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) - (3 : ℚ) / 2 + (n : ℚ))

end

end A070313.P6063715302519698900

namespace A070313

/-- `2*(a(n-1)-3/2+n)` -/
def P6063715302519698900.Spec : Prop :=
  ∀ n, P6063715302519698900.a n = (A070313 n : ℚ)

theorem P6063715302519698900.correct : P6063715302519698900.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A070313, Nat.add_sub_cancel, A070313.P6063715302519698900.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A070313, Nat.add_sub_cancel, A070313.P6063715302519698900.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A070313

/-! ## A070313.P4492183817250708763

`2*(a(n-1)-(3/2-n))` with `a(0)=0`
-/

namespace A070313.P4492183817250708763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) - ((3 : ℚ) / 2 - (n : ℚ)))

end

end A070313.P4492183817250708763

namespace A070313

/-- `2*(a(n-1)-(3/2-n))` -/
def P4492183817250708763.Spec : Prop :=
  ∀ n, P4492183817250708763.a n = (A070313 n : ℚ)

theorem P4492183817250708763.correct : P4492183817250708763.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A070313, Nat.add_sub_cancel, A070313.P4492183817250708763.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A070313, Nat.add_sub_cancel, A070313.P4492183817250708763.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A070313

/-! ## A070313.P15254937547158200242

`∑[a(n-1)+2^(n-2)]` with `a(0)=0, a(1)=-1`
-/

namespace A070313.P15254937547158200242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070313.P15254937547158200242

namespace A070313

/-- `∑[a(n-1)+2^(n-2)]` -/
def P15254937547158200242.Spec : Prop :=
  ∀ n, P15254937547158200242.a n = (A070313 n : ℚ)

end A070313

/-! ## A070313.P3528985581117951263

`floor(2*a(n-1)+2*n-3)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A070313.P3528985581117951263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + ((2 * n : ℤ) - 3)

end

end A070313.P3528985581117951263

namespace A070313

/-- `floor(2*a(n-1)+2*n-3)` -/
def P3528985581117951263.Spec : Prop :=
  ∀ n, P3528985581117951263.a n = A070313 n

theorem P3528985581117951263.correct : P3528985581117951263.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A070313, Nat.add_sub_cancel, A070313.P3528985581117951263.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A070313, Nat.add_sub_cancel, A070313.P3528985581117951263.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A070313

/-! ## A070313.P15172547003407829943

`floor(2*n-(3-2*a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A070313.P15172547003407829943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - (3 - 2 * a (n - 1))

end

end A070313.P15172547003407829943

namespace A070313

/-- `floor(2*n-(3-2*a(n-1)))` -/
def P15172547003407829943.Spec : Prop :=
  ∀ n, P15172547003407829943.a n = A070313 n

theorem P15172547003407829943.correct : P15172547003407829943.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A070313, Nat.add_sub_cancel, A070313.P15172547003407829943.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A070313, Nat.add_sub_cancel, A070313.P15172547003407829943.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A070313

/-! ## A070313.P2168278749958765919

`∑[floor(a(n-1)+a(n-1)+2)]` with `a(0)=0, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A070313.P2168278749958765919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070313.P2168278749958765919

namespace A070313

/-- `∑[floor(a(n-1)+a(n-1)+2)]` -/
def P2168278749958765919.Spec : Prop :=
  ∀ n, P2168278749958765919.a n = A070313 n

end A070313

/-! ## A070313.P4515473039268140940

`floor(a(n-1)-3+a(n-1)+n+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A070313.P4515473039268140940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - 3 + (a (n - 1) + (n : ℤ) + (n : ℤ))

end

end A070313.P4515473039268140940

namespace A070313

/-- `floor(a(n-1)-3+a(n-1)+n+n)` -/
def P4515473039268140940.Spec : Prop :=
  ∀ n, P4515473039268140940.a n = A070313 n

theorem P4515473039268140940.correct : P4515473039268140940.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A070313, Nat.add_sub_cancel, A070313.P4515473039268140940.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A070313, Nat.add_sub_cancel, A070313.P4515473039268140940.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A070313

/-! ## A070313.P16871816536589306306

`floor(a(n-1)-(3-a(n-1)-n-n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A070313.P16871816536589306306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (3 - a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A070313.P16871816536589306306

namespace A070313

/-- `floor(a(n-1)-(3-a(n-1)-n-n))` -/
def P16871816536589306306.Spec : Prop :=
  ∀ n, P16871816536589306306.a n = A070313 n

theorem P16871816536589306306.correct : P16871816536589306306.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A070313, Nat.add_sub_cancel, A070313.P16871816536589306306.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A070313, Nat.add_sub_cancel, A070313.P16871816536589306306.a, A070313.P8694605406940819949.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A070313

/-! ## A070313.P17235218100414342307

`∑[A000918(abs(1-n))]`
-/

namespace A070313.P17235218100414342307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070313.P17235218100414342307

namespace A070313

/-- `∑[A000918(abs(1-n))]` -/
def P17235218100414342307.Spec : Prop :=
  ∀ n, P17235218100414342307.a n = A070313 n

end A070313

/-! ## A070313.P4088887634709342960

`Δ[A024012(n)]`
-/

namespace A070313.P4088887634709342960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070313.P4088887634709342960

namespace A070313

/-- `Δ[A024012(n)]` -/
def P4088887634709342960.Spec : Prop :=
  ∀ n, P4088887634709342960.a n = A070313 n

theorem P4088887634709342960.correct : P4088887634709342960.Spec := by
  intro n
  simp only [A070313, Nat.add_sub_cancel, A070313.P4088887634709342960.f1, A070313.P4088887634709342960.a, A070313.P8694605406940819949.a, A024012, A024012.P5170461396986632698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070313

/-! ## A070313.P9601979923841136432

`Δ[A030110(n)]`
-/

namespace A070313.P9601979923841136432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070313.P9601979923841136432

namespace A070313

/-- `Δ[A030110(n)]` -/
def P9601979923841136432.Spec : Prop :=
  ∀ n, P9601979923841136432.a n = A070313 n

theorem P9601979923841136432.correct : P9601979923841136432.Spec := by
  intro n
  simp only [A070313, Nat.add_sub_cancel, A070313.P9601979923841136432.f1, A070313.P9601979923841136432.a, A070313.P8694605406940819949.a, A030110, A030110.P6847496981912939315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070313

/-! ## A070313.P6154098221436691443

`Δ[A000051(n)-n²]`
-/

namespace A070313.P6154098221436691443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070313.P6154098221436691443

namespace A070313

/-- `Δ[A000051(n)-n²]` -/
def P6154098221436691443.Spec : Prop :=
  ∀ n, P6154098221436691443.a n = A070313 n

theorem P6154098221436691443.correct : P6154098221436691443.Spec := by
  intro n
  simp only [A070313, Nat.add_sub_cancel, A070313.P6154098221436691443.f1, A070313.P6154098221436691443.a, A070313.P8694605406940819949.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070313

/-! ## A070313.P4549615446307518638

`Δ[A000079(n)-n²]`
-/

namespace A070313.P4549615446307518638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070313.P4549615446307518638

namespace A070313

/-- `Δ[A000079(n)-n²]` -/
def P4549615446307518638.Spec : Prop :=
  ∀ n, P4549615446307518638.a n = A070313 n

theorem P4549615446307518638.correct : P4549615446307518638.Spec := by
  intro n
  simp only [A070313, Nat.add_sub_cancel, A070313.P4549615446307518638.f1, A070313.P4549615446307518638.a, A070313.P8694605406940819949.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070313

/-! ## A070313.P7947906862185389109

`Δ[A000918(n)-n²]`
-/

namespace A070313.P7947906862185389109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070313.P7947906862185389109

namespace A070313

/-- `Δ[A000918(n)-n²]` -/
def P7947906862185389109.Spec : Prop :=
  ∀ n, P7947906862185389109.a n = A070313 n

theorem P7947906862185389109.correct : P7947906862185389109.Spec := by
  intro n
  simp only [A070313, Nat.add_sub_cancel, A070313.P7947906862185389109.f1, A070313.P7947906862185389109.a, A070313.P8694605406940819949.a, A000918, A000918.P14329454465793069288.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070313

/-!
# A070314: a(n) = P(n!+1)-P(2^n+1) where P(x) is the largest prime factor in x.

The programs for A070314, the canonical program `A070314.P16567933884147559497` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070314 has offset 0).

The definition of A070314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070314.P6364141373683941864

`A002583(n)-A002587(n)`
-/

namespace A070314.P6364141373683941864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002583 n - A002587 n

end

end A070314.P6364141373683941864

namespace A070314

/-- `A002583(n)-A002587(n)` -/
def P6364141373683941864.Spec : Prop :=
  ∀ n, P6364141373683941864.a n = A070314 n

end A070314

/-! ## A070314.P16567933884147559497

`A006530(n!+1)-A006530(2^n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070314

/-- `A006530(n!+1)-A006530(2^n+1)` -/
def P16567933884147559497.Spec : Prop :=
  ∀ n, P16567933884147559497.a n = A070314 n

theorem P16567933884147559497.correct : P16567933884147559497.Spec := by
  intro n
  simp only [A070314]

end A070314

/-! ## A070314.P6903842790581725203

`A362779(∑[abs(1-n)])-A002587(n)`
-/

namespace A070314.P6903842790581725203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362779 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A002587 n

end

end A070314.P6903842790581725203

namespace A070314

/-- `A362779(∑[abs(1-n)])-A002587(n)` -/
def P6903842790581725203.Spec : Prop :=
  ∀ n, P6903842790581725203.a n = A070314 n

end A070314

/-! ## A070314.P2373147581417530369

`A006530(n!+1)-A002587(n)`
-/

namespace A070314.P2373147581417530369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial n + 1) - A002587 n

end

end A070314.P2373147581417530369

namespace A070314

/-- `A006530(n!+1)-A002587(n)` -/
def P2373147581417530369.Spec : Prop :=
  ∀ n, P2373147581417530369.a n = A070314 n

end A070314

/-! ## A070314.P14621991364580219814

`A088387(n!+1)-A002587(n)`
-/

namespace A070314.P14621991364580219814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (Nat.factorial n + 1) - A002587 n

end

end A070314.P14621991364580219814

namespace A070314

/-- `A088387(n!+1)-A002587(n)` -/
def P14621991364580219814.Spec : Prop :=
  ∀ n, P14621991364580219814.a n = A070314 n

end A070314

/-!
# A070315: Third diagonal of triangle in A046739.

The programs for A070315, the canonical program `A070315.P10232599069789594573` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070315 has offset 4).

The definition of A070315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070315.P10232599069789594573

`3^(n+4)-(3*(n+4)+2)*2^(n+3)+2*(n+4)²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070315

/-- `3^(n+4)-(3*(n+4)+2)*2^(n+3)+2*(n+4)²` -/
def P10232599069789594573.Spec : Prop :=
  ∀ n, P10232599069789594573.a n = A070315 (n + 4)

theorem P10232599069789594573.correct : P10232599069789594573.Spec := by
  intro n
  simp only [A070315, Nat.add_sub_cancel]

end A070315

/-! ## A070315.P11923640942155605917

`A046739(∑[n+2]+5)`
-/

namespace A070315.P11923640942155605917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046739 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A070315.P11923640942155605917

namespace A070315

/-- `A046739(∑[n+2]+5)` -/
def P11923640942155605917.Spec : Prop :=
  ∀ n, P11923640942155605917.a n = A070315 (n + 4)

end A070315

/-! ## A070315.P7455086184633570526

`or(1, A046739(A000096(n+2)))`
-/

namespace A070315.P7455086184633570526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046739 (A000096 (n + 2)).toNat)

end

end A070315.P7455086184633570526

namespace A070315

/-- `or(1, A046739(A000096(n+2)))` -/
def P7455086184633570526.Spec : Prop :=
  ∀ n, P7455086184633570526.a n = A070315 (n + 4)

end A070315

/-! ## A070315.P17543533246098733373

`record[gcd(A008290(n), A046739(n+1))]`
-/

namespace A070315.P17543533246098733373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A046739 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070315.P17543533246098733373

namespace A070315

/-- `record[gcd(A008290(n), A046739(n+1))]` -/
def P17543533246098733373.Spec : Prop :=
  ∀ n, (P17543533246098733373.a n : ℤ) = A070315 (n + 4)

end A070315

/-! ## A070315.P2248129135020342637

`record[A046739(A101881(n^(n%2)))]`
-/

namespace A070315.P2248129135020342637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046739 (A101881 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070315.P2248129135020342637

namespace A070315

/-- `record[A046739(A101881(n^(n%2)))]` -/
def P2248129135020342637.Spec : Prop :=
  ∀ n, P2248129135020342637.a n = A070315 (n + 4)

end A070315

/-! ## A070315.P5380092956264743790

`lcm(A033999(n), A046739(A000096(n+2)))`
-/

namespace A070315.P5380092956264743790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A046739 (A000096 (n + 2)).toNat)

end

end A070315.P5380092956264743790

namespace A070315

/-- `lcm(A033999(n), A046739(A000096(n+2)))` -/
def P5380092956264743790.Spec : Prop :=
  ∀ n, (P5380092956264743790.a n : ℤ) = A070315 (n + 4)

end A070315

/-!
# A070316: Numbers n such that nextprime(n^2)-n^2 (n>=1) sets a new record.

The programs for A070316, there is no canonical definition to state claims against.
-/

/-! ## A070316.P7284024493429783754

`A058055(A070317(n+1))`
-/

namespace A070316.P7284024493429783754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058055 (A070317 (n + 1)).toNat

end

end A070316.P7284024493429783754

/-! ## A070316.P3538252260087372171

`A058055(record[A053000(n+1)])`
-/

namespace A070316.P3538252260087372171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070316.P3538252260087372171

/-! ## A070316.P14737327455914536451

`A058055(record[A053000(n)-C(2, n²)])`
-/

namespace A070316.P14737327455914536451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n - (Nat.choose 2 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070316.P14737327455914536451

/-! ## A070316.P5424576652878272322

`A058055(record[A007491(n+2)%(n+2)])`
-/

namespace A070316.P5424576652878272322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007491 (n + 2)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070316.P5424576652878272322

/-! ## A070316.P10788883998817193959

`A058055(record[A053000(n)-A000007(n)])`
-/

namespace A070316.P10788883998817193959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070316.P10788883998817193959

/-!
# A070317: Record values of nextprime(n^2)-n^2, cf. A070316.

The programs for A070317, there is no canonical definition to state claims against.
-/

/-! ## A070317.P14462502022444835249

`A053000(A070316(n+1))`
-/

namespace A070317.P14462502022444835249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A070316 (n + 1)).toNat

end

end A070317.P14462502022444835249

/-! ## A070317.P10603472203774085815

`record[A053000(n+1)]`
-/

namespace A070317.P10603472203774085815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070317.P10603472203774085815

/-! ## A070317.P10138828935819667270

`record[A053000(n)-C(2, n)]`
-/

namespace A070317.P10138828935819667270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070317.P10138828935819667270

/-! ## A070317.P17006833820457160633

`record[A007491(n+2)%(n+2)]`
-/

namespace A070317.P17006833820457160633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007491 (n + 2)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070317.P17006833820457160633

/-! ## A070317.P9243697043239934965

`record[A181440(A053000(n))]`
-/

namespace A070317.P9243697043239934965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A053000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070317.P9243697043239934965

/-!
# A070318: a(n) = Max_{k=1..n} (sigma(k)-k) where sigma(k)-k is the sum of proper divisors of k.

The programs for A070318, there is no canonical definition to state claims against.
-/

/-! ## A070318.P13915998613147795466

`A034091(∑[char[A034090(n+1)-1]])`
-/

namespace A070318.P13915998613147795466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034090 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034091 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070318.P13915998613147795466

/-!
# A070319: 

The programs for A070319, there is no canonical definition to state claims against.
-/

/-! ## A070319.P15973666617912699083

`A002183(A261100(n+1))`
-/

namespace A070319.P15973666617912699083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (A261100 (n + 1)).toNat

end

end A070319.P15973666617912699083

/-! ## A070319.P16377919251589621578

`∏{e}[A329004(n+1), #+1]`
-/

namespace A070319.P16377919251589621578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A070319.P16377919251589621578

/-! ## A070319.P12577347965795906199

`A000005(A329004(n+1))`
-/

namespace A070319.P12577347965795906199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A329004 (n + 1)).toNat

end

end A070319.P12577347965795906199

/-! ## A070319.P13660034303601468171

`A002183(∑[A322586(n+1)])`
-/

namespace A070319.P13660034303601468171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070319.P13660034303601468171

/-! ## A070319.P10459362899061344372

`A000005(n+1-A369183(n+1))`
-/

namespace A070319.P10459362899061344372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) - A369183 (n + 1)).toNat

end

end A070319.P10459362899061344372

/-! ## A070319.P1022078756937325421

`A002183(∑[char[A002182(n+1)-1]])`
-/

namespace A070319.P1022078756937325421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070319.P1022078756937325421

/-! ## A070319.P5786059303515795102

`A002183(∑[char[A061799(n+1)-1]])`
-/

namespace A070319.P5786059303515795102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070319.P5786059303515795102

/-! ## A070319.P314449147444240341

`∑{d}[A329004(n+1), A034551(A229708(#))+1]`
-/

namespace A070319.P314449147444240341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A034551 (A229708 d).toNat + 1)

end

end A070319.P314449147444240341

/-! ## A070319.P15138304997445754104

`and(A068509(n+1), A375155(n+1))`
-/

namespace A070319.P15138304997445754104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068509 (n + 1)) (A375155 (n + 1))

end

end A070319.P15138304997445754104

/-! ## A070319.P4823059941746779394

`A068509(n+1)%A004733(n)`
-/

namespace A070319.P4823059941746779394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068509 (n + 1)) (A004733 n)

end

end A070319.P4823059941746779394

/-! ## A070319.P3497280269019743987

`and(A003261(n+1), A068509(n+1))`
-/

namespace A070319.P3497280269019743987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A068509 (n + 1))

end

end A070319.P3497280269019743987

/-! ## A070319.P12285119404235532376

`and(A068509(n+1), A163383(n+1))`
-/

namespace A070319.P12285119404235532376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068509 (n + 1)) (A163383 (n + 1))

end

end A070319.P12285119404235532376

/-! ## A070319.P4847110435398024433

`and(A063396(n), A068509(n+1))`
-/

namespace A070319.P4847110435398024433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063396 n) (A068509 (n + 1))

end

end A070319.P4847110435398024433

/-! ## A070319.P6698414088521452000

`gcd(A068509(n+1), A109834(n+1))`
-/

namespace A070319.P6698414088521452000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068509 (n + 1)) (A109834 (n + 1))

end

end A070319.P6698414088521452000

/-! ## A070319.P6797323608816715688

`and(A055580(n), A068509(n+1))`
-/

namespace A070319.P6797323608816715688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A068509 (n + 1))

end

end A070319.P6797323608816715688

/-! ## A070319.P4122268778030386703

`and(A068509(n+1), A107392(n))`
-/

namespace A070319.P4122268778030386703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068509 (n + 1)) (A107392 n)

end

end A070319.P4122268778030386703

/-! ## A070319.P16398472738674830058

`and(A068509(n+1), A107464(n))`
-/

namespace A070319.P16398472738674830058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068509 (n + 1)) (A107464 n)

end

end A070319.P16398472738674830058

/-! ## A070319.P6409063087376490107

`and(A063397(n), A068509(n+1))`
-/

namespace A070319.P6409063087376490107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063397 n) (A068509 (n + 1))

end

end A070319.P6409063087376490107

/-! ## A070319.P68459206008883987

`and(A068509(n+1), A107953(n))`
-/

namespace A070319.P68459206008883987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068509 (n + 1)) (A107953 n)

end

end A070319.P68459206008883987

/-!
# A070320: a(n) = Max( phi(k) : k=1..n ).

The programs for A070320, the canonical program `A070320.P6872280522638046061` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070320 has offset 1).

The definition of A070320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070320.P6872280522638046061

`A007917(or(1, n)+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070320

/-- `A007917(or(1, n)+1)-1` -/
def P6872280522638046061.Spec : Prop :=
  ∀ n, P6872280522638046061.a n = A070320 (n + 1)

theorem P6872280522638046061.correct : P6872280522638046061.Spec := by
  intro n
  simp only [A070320, Nat.add_sub_cancel]

end A070320

/-! ## A070320.P8967058949559756894

`A060308(∑[log2(gcd(2, n))])-1`
-/

namespace A070320.P8967058949559756894
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A070320.P8967058949559756894

namespace A070320

/-- `A060308(∑[log2(gcd(2, n))])-1` -/
def P8967058949559756894.Spec : Prop :=
  ∀ n, P8967058949559756894.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P13449394836546657575

`round(1/acot(n))-A064722(n+1)`
-/

namespace A070320.P13449394836546657575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) - A064722 (n + 1)

end

end A070320.P13449394836546657575

namespace A070320

/-- `round(1/acot(n))-A064722(n+1)` -/
def P13449394836546657575.Spec : Prop :=
  ∀ n, P13449394836546657575.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P11262190443383820073

`A096501(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A070320.P11262190443383820073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A096501 (n + 1) + a (n - 1)

end

end A070320.P11262190443383820073

namespace A070320

/-- `A096501(n+1)+a(n-1)` -/
def P11262190443383820073.Spec : Prop :=
  ∀ n, P11262190443383820073.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P11884673259037522511

`A046640(A276000(n+1))`
-/

namespace A070320.P11884673259037522511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (A276000 (n + 1)).toNat

end

end A070320.P11884673259037522511

namespace A070320

/-- `A046640(A276000(n+1))` -/
def P11884673259037522511.Spec : Prop :=
  ∀ n, P11884673259037522511.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P1418799226349655791

`A349127(A066169(n+1))`
-/

namespace A070320.P1418799226349655791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (A066169 (n + 1)).toNat

end

end A070320.P1418799226349655791

namespace A070320

/-- `A349127(A066169(n+1))` -/
def P1418799226349655791.Spec : Prop :=
  ∀ n, P1418799226349655791.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P17761832470361594722

`A349128(A151800(n+1))`
-/

namespace A070320.P17761832470361594722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349128 (A151800 (n + 1)).toNat

end

end A070320.P17761832470361594722

namespace A070320

/-- `A349128(A151800(n+1))` -/
def P17761832470361594722.Spec : Prop :=
  ∀ n, P17761832470361594722.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P189461275567979302

`A060308(A008619(n))-1`
-/

namespace A070320.P189461275567979302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A008619 n).toNat - 1

end

end A070320.P189461275567979302

namespace A070320

/-- `A060308(A008619(n))-1` -/
def P189461275567979302.Spec : Prop :=
  ∀ n, P189461275567979302.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P5803963217599350885

`A028310(n-A064722(n+1))`
-/

namespace A070320.P5803963217599350885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A064722 (n + 1)).toNat

end

end A070320.P5803963217599350885

namespace A070320

/-- `A028310(n-A064722(n+1))` -/
def P5803963217599350885.Spec : Prop :=
  ∀ n, P5803963217599350885.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P1700940770504208311

`A083714(n+1)+A070777(n+1)`
-/

namespace A070320.P1700940770504208311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083714 (n + 1) + A070777 (n + 1)

end

end A070320.P1700940770504208311

namespace A070320

/-- `A083714(n+1)+A070777(n+1)` -/
def P1700940770504208311.Spec : Prop :=
  ∀ n, P1700940770504208311.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P12077819701320797687

`A000010(n+1-A064722(n+1))`
-/

namespace A070320.P12077819701320797687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) - A064722 (n + 1)).toNat

end

end A070320.P12077819701320797687

namespace A070320

/-- `A000010(n+1-A064722(n+1))` -/
def P12077819701320797687.Spec : Prop :=
  ∀ n, P12077819701320797687.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P5357756266110534247

`A070324(n+1)-A071939(n+1)`
-/

namespace A070320.P5357756266110534247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070324 (n + 1) - A071939 (n + 1)

end

end A070320.P5357756266110534247

namespace A070320

/-- `A070324(n+1)-A071939(n+1)` -/
def P5357756266110534247.Spec : Prop :=
  ∀ n, P5357756266110534247.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P10549114829489439093

`A028310(n)+1-A175851(n+1)`
-/

namespace A070320.P10549114829489439093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (1 - A175851 (n + 1))

end

end A070320.P10549114829489439093

namespace A070320

/-- `A028310(n)+1-A175851(n+1)` -/
def P10549114829489439093.Spec : Prop :=
  ∀ n, P10549114829489439093.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P10379650342889999720

`A000010(n+2-A175851(n+1))`
-/

namespace A070320.P10379650342889999720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 2 : ℤ) - A175851 (n + 1)).toNat

end

end A070320.P10379650342889999720

namespace A070320

/-- `A000010(n+2-A175851(n+1))` -/
def P10379650342889999720.Spec : Prop :=
  ∀ n, P10379650342889999720.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P5433721957982188549

`A057237(n+2-A175851(n+1))`
-/

namespace A070320.P5433721957982188549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 ((n + 2 : ℤ) - A175851 (n + 1)).toNat

end

end A070320.P5433721957982188549

namespace A070320

/-- `A057237(n+2-A175851(n+1))` -/
def P5433721957982188549.Spec : Prop :=
  ∀ n, P5433721957982188549.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P5010911107901324784

`∏{p}[A136548(n+2), #-1]`
-/

namespace A070320.P5010911107901324784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A070320.P5010911107901324784

namespace A070320

/-- `∏{p}[A136548(n+2), #-1]` -/
def P5010911107901324784.Spec : Prop :=
  ∀ n, P5010911107901324784.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P6832133009980000967

`A000010(A136548(n+2))`
-/

namespace A070320.P6832133009980000967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A136548 (n + 2)).toNat

end

end A070320.P6832133009980000967

namespace A070320

/-- `A000010(A136548(n+2))` -/
def P6832133009980000967.Spec : Prop :=
  ∀ n, P6832133009980000967.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P8442895221526058793

`A028310(A136548(n+2)-1)`
-/

namespace A070320.P8442895221526058793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A136548 (n + 2) - 1).toNat

end

end A070320.P8442895221526058793

namespace A070320

/-- `A028310(A136548(n+2)-1)` -/
def P8442895221526058793.Spec : Prop :=
  ∀ n, P8442895221526058793.a n = A070320 (n + 1)

end A070320

/-! ## A070320.P15977167317794020745

`A136548(n+2)+A057428(n)`
-/

namespace A070320.P15977167317794020745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 2) + A057428 n

end

end A070320.P15977167317794020745

namespace A070320

/-- `A136548(n+2)+A057428(n)` -/
def P15977167317794020745.Spec : Prop :=
  ∀ n, P15977167317794020745.a n = A070320 (n + 1)

end A070320

/-!
# A070321: Greatest squarefree number <= n.

The programs for A070321, the canonical program `A070321.P7130479332265893626` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070321 has offset 1).

The definition of A070321 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070321.P7130479332265893626

`A005117(A013928(n+2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070321

/-- `A005117(A013928(n+2))` -/
def P7130479332265893626.Spec : Prop :=
  ∀ n, P7130479332265893626.a n = A070321 (n + 1)

theorem P7130479332265893626.correct : P7130479332265893626.Spec := by
  intro n
  simp only [A070321, Nat.add_sub_cancel]

end A070321

/-! ## A070321.P17432339739890784983

`1-A378619(n+1)+n`
-/

namespace A070321.P17432339739890784983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A378619 (n + 1) + (n : ℤ)

end

end A070321.P17432339739890784983

namespace A070321

/-- `1-A378619(n+1)+n` -/
def P17432339739890784983.Spec : Prop :=
  ∀ n, P17432339739890784983.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P10389245755033521685

`A378085(n)+a(n-1)` with `a(0)=1`
-/

namespace A070321.P10389245755033521685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A378085 n + a (n - 1)

end

end A070321.P10389245755033521685

namespace A070321

/-- `A378085(n)+a(n-1)` -/
def P10389245755033521685.Spec : Prop :=
  ∀ n, P10389245755033521685.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P11347263256298943232

`n+2-gcd(a(n-1)-(n+2), A008683(n+1))` with `a(0)=1`
-/

namespace A070321.P11347263256298943232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - (Int.gcd (a (n - 1) - (n + 2 : ℤ)) (A008683 (n + 1)) : ℤ)

end

end A070321.P11347263256298943232

namespace A070321

/-- `n+2-gcd(a(n-1)-(n+2), A008683(n+1))` -/
def P11347263256298943232.Spec : Prop :=
  ∀ n, P11347263256298943232.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P873255232093717783

`Δ[a(n-1)+lcm(n-a(n-1), A008683(n))]+a(n-1)` with `a(0)=1`
-/

namespace A070321.P873255232093717783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + Int.lcm ((n : ℤ) - (f1 (n - 1) : ℤ)) (A008683 n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A070321.P873255232093717783

namespace A070321

/-- `Δ[a(n-1)+lcm(n-a(n-1), A008683(n))]+a(n-1)` -/
def P873255232093717783.Spec : Prop :=
  ∀ n, P873255232093717783.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P4189464758117336197

`A005117(∑[A008966(n+1)])`
-/

namespace A070321.P4189464758117336197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070321.P4189464758117336197

namespace A070321

/-- `A005117(∑[A008966(n+1)])` -/
def P4189464758117336197.Spec : Prop :=
  ∀ n, P4189464758117336197.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P899418370816819645

`A005117(A107079(n+2)-1)`
-/

namespace A070321.P899418370816819645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A107079 (n + 2) - 1).toNat

end

end A070321.P899418370816819645

namespace A070321

/-- `A005117(A107079(n+2)-1)` -/
def P899418370816819645.Spec : Prop :=
  ∀ n, P899418370816819645.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P11483628908644824473

`A005117(∑[abs(A008683(n+1))])`
-/

namespace A070321.P11483628908644824473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070321.P11483628908644824473

namespace A070321

/-- `A005117(∑[abs(A008683(n+1))])` -/
def P11483628908644824473.Spec : Prop :=
  ∀ n, P11483628908644824473.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P5213744938370299155

`A005117(∑[A008683(n+1)²])`
-/

namespace A070321.P5213744938370299155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070321.P5213744938370299155

namespace A070321

/-- `A005117(∑[A008683(n+1)²])` -/
def P5213744938370299155.Spec : Prop :=
  ∀ n, P5213744938370299155.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P3279728177595484177

`A005117(n+1-A057627(n+1))`
-/

namespace A070321.P3279728177595484177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 ((n + 1 : ℤ) - A057627 (n + 1)).toNat

end

end A070321.P3279728177595484177

namespace A070321

/-- `A005117(n+1-A057627(n+1))` -/
def P3279728177595484177.Spec : Prop :=
  ∀ n, P3279728177595484177.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P2812081258946225877

`A067535(n+1)-A076260(n+1)`
-/

namespace A070321.P2812081258946225877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 1) - A076260 (n + 1)

end

end A070321.P2812081258946225877

namespace A070321

/-- `A067535(n+1)-A076260(n+1)` -/
def P2812081258946225877.Spec : Prop :=
  ∀ n, P2812081258946225877.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P15054589494487071698

`A005117(A209628(n+1)+A000720(n+1))`
-/

namespace A070321.P15054589494487071698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A209628 (n + 1) + A000720 (n + 1)).toNat

end

end A070321.P15054589494487071698

namespace A070321

/-- `A005117(A209628(n+1)+A000720(n+1))` -/
def P15054589494487071698.Spec : Prop :=
  ∀ n, P15054589494487071698.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P9866312757346938014

`A005117(A285881(n+1)+A285879(n+1))`
-/

namespace A070321.P9866312757346938014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A285881 (n + 1) + A285879 (n + 1)).toNat

end

end A070321.P9866312757346938014

namespace A070321

/-- `A005117(A285881(n+1)+A285879(n+1))` -/
def P9866312757346938014.Spec : Prop :=
  ∀ n, P9866312757346938014.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P13470926961002283315

`A005117(A060431(n+1)-A072358(n+1))`
-/

namespace A070321.P13470926961002283315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A060431 (n + 1) - A072358 (n + 1)).toNat

end

end A070321.P13470926961002283315

namespace A070321

/-- `A005117(A060431(n+1)-A072358(n+1))` -/
def P13470926961002283315.Spec : Prop :=
  ∀ n, P13470926961002283315.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P6661166617070143123

`A005117(A072490(n+2)+1)`
-/

namespace A070321.P6661166617070143123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A072490 (n + 2) + 1).toNat

end

end A070321.P6661166617070143123

namespace A070321

/-- `A005117(A072490(n+2)+1)` -/
def P6661166617070143123.Spec : Prop :=
  ∀ n, P6661166617070143123.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P12929458274746730231

`A285719(n+2-A285718(A285718(n+2)))`
-/

namespace A070321.P12929458274746730231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 ((n + 2 : ℤ) - A285718 (A285718 (n + 2)).toNat).toNat

end

end A070321.P12929458274746730231

namespace A070321

/-- `A285719(n+2-A285718(A285718(n+2)))` -/
def P12929458274746730231.Spec : Prop :=
  ∀ n, P12929458274746730231.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P6339989828344430425

`A088610(∑[A010873(A046523(n+1))])`
-/

namespace A070321.P6339989828344430425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A046523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070321.P6339989828344430425

namespace A070321

/-- `A088610(∑[A010873(A046523(n+1))])` -/
def P6339989828344430425.Spec : Prop :=
  ∀ n, P6339989828344430425.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P10518849677557637626

`A005117(∑[char[∏{p}[n, #]-1]])`
-/

namespace A070321.P10518849677557637626
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070321.P10518849677557637626

namespace A070321

/-- `A005117(∑[char[∏{p}[n, #]-1]])` -/
def P10518849677557637626.Spec : Prop :=
  ∀ n, P10518849677557637626.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P10166528505567256509

`A285735(A285719(n+1)+A285719(n+2))`
-/

namespace A070321.P10166528505567256509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285735 (A285719 (n + 1) + A285719 (n + 2)).toNat

end

end A070321.P10166528505567256509

namespace A070321

/-- `A285735(A285719(n+1)+A285719(n+2))` -/
def P10166528505567256509.Spec : Prop :=
  ∀ n, P10166528505567256509.a n = A070321 (n + 1)

end A070321

/-! ## A070321.P119805472314688924

`A005117(A262869(2*(n+1)))`
-/

namespace A070321.P119805472314688924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A262869 (2 * (n + 1))).toNat

end

end A070321.P119805472314688924

namespace A070321

/-- `A005117(A262869(2*(n+1)))` -/
def P119805472314688924.Spec : Prop :=
  ∀ n, P119805472314688924.a n = A070321 (n + 1)

end A070321

/-!
# A070322: Number of primitive n X n real (0,1)-matrices.

The programs for A070322, there is no canonical definition to state claims against.
-/

/-! ## A070322.P259894330893778838

`A367948(∑[abs(1-n)])`
-/

namespace A070322.P259894330893778838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367948 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070322.P259894330893778838

/-! ## A070322.P17599226357982715325

`A370385(A139714(n)+2)`
-/

namespace A070322.P17599226357982715325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370385 (A139714 n + 2).toNat

end

end A070322.P17599226357982715325

/-!
# A070323: Let M_n be the n X n matrix m(i,j) = min(prime(i), prime(j)); then a(n) = det(M_n).

The programs for A070323, the canonical program `A070323.P14060972304361339220` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070323 has offset 1).

The definition of A070323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037169, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070323.P14060972304361339220

`2*A037169(n+1)/A000040(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070323

/-- `2*A037169(n+1)/A000040(n+1)` -/
def P14060972304361339220.Spec : Prop :=
  ∀ n, P14060972304361339220.a n = (A070323 (n + 1) : ℚ)

end A070323

/-! ## A070323.P5891167156785921540

`∏[Δ[record[∑{p}[n, #]]]]`
-/

namespace A070323.P5891167156785921540
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070323.P5891167156785921540

namespace A070323

/-- `∏[Δ[record[∑{p}[n, #]]]]` -/
def P5891167156785921540.Spec : Prop :=
  ∀ n, P5891167156785921540.a n = A070323 (n + 1)

end A070323

/-! ## A070323.P11976385009798877506

`∏[A054541(n+1)]`
-/

namespace A070323.P11976385009798877506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070323.P11976385009798877506

namespace A070323

/-- `∏[A054541(n+1)]` -/
def P11976385009798877506.Spec : Prop :=
  ∀ n, P11976385009798877506.a n = A070323 (n + 1)

end A070323

/-! ## A070323.P688967927495732565

`2*∏[A075526(n)]`
-/

namespace A070323.P688967927495732565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A070323.P688967927495732565

namespace A070323

/-- `2*∏[A075526(n)]` -/
def P688967927495732565.Spec : Prop :=
  ∀ n, P688967927495732565.a n = A070323 (n + 1)

end A070323

/-! ## A070323.P17028402642174430620

`∏[Δ[A182986(n+1)]]`
-/

namespace A070323.P17028402642174430620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070323.P17028402642174430620

namespace A070323

/-- `∏[Δ[A182986(n+1)]]` -/
def P17028402642174430620.Spec : Prop :=
  ∀ n, P17028402642174430620.a n = A070323 (n + 1)

end A070323

/-! ## A070323.P4149126942712729897

`∏[Δ[A299763(n+1)]]`
-/

namespace A070323.P4149126942712729897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070323.P4149126942712729897

namespace A070323

/-- `∏[Δ[A299763(n+1)]]` -/
def P4149126942712729897.Spec : Prop :=
  ∀ n, P4149126942712729897.a n = A070323 (n + 1)

end A070323

/-! ## A070323.P8600375261908697310

`2*∏[Δ[A028815(n)]]`
-/

namespace A070323.P8600375261908697310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A070323.P8600375261908697310

namespace A070323

/-- `2*∏[Δ[A028815(n)]]` -/
def P8600375261908697310.Spec : Prop :=
  ∀ n, P8600375261908697310.a n = A070323 (n + 1)

end A070323

/-! ## A070323.P6354503702452952231

`∏[Δ[A154279(2*n)]]`
-/

namespace A070323.P6354503702452952231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154279 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070323.P6354503702452952231

namespace A070323

/-- `∏[Δ[A154279(2*n)]]` -/
def P6354503702452952231.Spec : Prop :=
  ∀ n, P6354503702452952231.a n = A070323 (n + 1)

end A070323

/-!
# A070324: a(n) = Max( sigma(k) : k=1,2,3,...,n ).

The programs for A070324, there is no canonical definition to state claims against.
-/

/-! ## A070324.P964891472439901835

`A071939(n+1)+A070320(n+1)`
-/

namespace A070324.P964891472439901835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071939 (n + 1) + A070320 (n + 1)

end

end A070324.P964891472439901835

/-! ## A070324.P17964034822142396431

`A349127(A066169(n+1))+A071939(n+1)`
-/

namespace A070324.P17964034822142396431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (A066169 (n + 1)).toNat + A071939 (n + 1)

end

end A070324.P17964034822142396431

/-! ## A070324.P15684602696829420170

`A071939(n+1)+A000010(A136548(n+2))`
-/

namespace A070324.P15684602696829420170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071939 (n + 1) + A000010 (A136548 (n + 2)).toNat

end

end A070324.P15684602696829420170

/-! ## A070324.P840942122174945992

`A071939(n+1)+A139421(2*(n+1))-1`
-/

namespace A070324.P840942122174945992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071939 (n + 1) + (A139421 (2 * (n + 1)) - 1)

end

end A070324.P840942122174945992

/-! ## A070324.P4459168289584870547

`A132163(A238531(n))+A071939(n+1)`
-/

namespace A070324.P4459168289584870547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132163 (A238531 n).toNat + A071939 (n + 1)

end

end A070324.P4459168289584870547

/-! ## A070324.P5158062640623288471

`A132163(A152948(n+1))+A071939(n+1)`
-/

namespace A070324.P5158062640623288471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132163 (A152948 (n + 1)).toNat + A071939 (n + 1)

end

end A070324.P5158062640623288471

/-! ## A070324.P12937155093726887646

`floor(log2(∑[2^∑{d}[n+1, #]]+1))`
-/

namespace A070324.P12937155093726887646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A070324.P12937155093726887646

/-! ## A070324.P15141366612264509879

`A071939(n+1)+A000010(A056813((n+1)²))`
-/

namespace A070324.P15141366612264509879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071939 (n + 1) + A000010 (A056813 ((n + 1) ^ 2)).toNat

end

end A070324.P15141366612264509879

/-! ## A070324.P2738617170714011836

`A071939(n+1)+A000010(A195183(∑[n+1]))`
-/

namespace A070324.P2738617170714011836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071939 (n + 1) + A000010 (A195183 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A070324.P2738617170714011836

/-! ## A070324.P10469476731263392832

`floor(log(∑[exp(A000203(n+1))]))`
-/

namespace A070324.P10469476731263392832
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A000203 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A070324.P10469476731263392832

/-!
# A070325: Numbers k such that k+1, k^2+1 and k^4+1 are primes.

The programs for A070325, the canonical program `A070325.P7424615460422011093` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070325 has offset 1).

The definition of A070325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 962 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070325.P7424615460422011093

`∩[A067662(n+1), A067720(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070325

/-- `∩[A067662(n+1), A067720(n+1)]` -/
def P7424615460422011093.Spec : Prop :=
  ∀ n, (P7424615460422011093.a n : ℤ) = A070325 (n + 1)

theorem P7424615460422011093.correct : P7424615460422011093.Spec := by
  intro n
  simp only [A070325, Nat.add_sub_cancel]

end A070325

/-! ## A070325.P11966379985867255689

`∩[A067662(n+1), A070689(n+1)]`
-/

namespace A070325.P11966379985867255689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P11966379985867255689

namespace A070325

/-- `∩[A067662(n+1), A070689(n+1)]` -/
def P11966379985867255689.Spec : Prop :=
  ∀ n, (P11966379985867255689.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P13050453547440852242

`∩[A067662(n+1), A279480(n+1)]`
-/

namespace A070325.P13050453547440852242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P13050453547440852242

namespace A070325

/-- `∩[A067662(n+1), A279480(n+1)]` -/
def P13050453547440852242.Spec : Prop :=
  ∀ n, (P13050453547440852242.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P13243483116864497321

`∩[A067720(n+1), A279480(n+1)]`
-/

namespace A070325.P13243483116864497321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P13243483116864497321

namespace A070325

/-- `∩[A067720(n+1), A279480(n+1)]` -/
def P13243483116864497321.Spec : Prop :=
  ∀ n, (P13243483116864497321.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P13900475694988112474

`∩[A070689(n+1), A279480(n+1)]`
-/

namespace A070325.P13900475694988112474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P13900475694988112474

namespace A070325

/-- `∩[A070689(n+1), A279480(n+1)]` -/
def P13900475694988112474.Spec : Prop :=
  ∀ n, (P13900475694988112474.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P17135823880230954348

`∩[A000068(n+1), A067720(n+1)]`
-/

namespace A070325.P17135823880230954348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P17135823880230954348

namespace A070325

/-- `∩[A000068(n+1), A067720(n+1)]` -/
def P17135823880230954348.Spec : Prop :=
  ∀ n, (P17135823880230954348.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P17885147612070349487

`∩[A000068(n+1), A070689(n+1)]`
-/

namespace A070325.P17885147612070349487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P17885147612070349487

namespace A070325

/-- `∩[A000068(n+1), A070689(n+1)]` -/
def P17885147612070349487.Spec : Prop :=
  ∀ n, (P17885147612070349487.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P5116793180595031796

`∩[A005574(n+1), A279480(n+1)]`
-/

namespace A070325.P5116793180595031796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P5116793180595031796

namespace A070325

/-- `∩[A005574(n+1), A279480(n+1)]` -/
def P5116793180595031796.Spec : Prop :=
  ∀ n, (P5116793180595031796.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P10853100361604198528

`∩[A067662(n+1), A226381(n+1)]`
-/

namespace A070325.P10853100361604198528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P10853100361604198528

namespace A070325

/-- `∩[A067662(n+1), A226381(n+1)]` -/
def P10853100361604198528.Spec : Prop :=
  ∀ n, (P10853100361604198528.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P17228665870123770366

`∩[A226381(n+1), A279480(n+1)]`
-/

namespace A070325.P17228665870123770366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P17228665870123770366

namespace A070325

/-- `∩[A226381(n+1), A279480(n+1)]` -/
def P17228665870123770366.Spec : Prop :=
  ∀ n, (P17228665870123770366.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P17143736737302708491

`∩[A006093(n+1), A067662(n+1)]`
-/

namespace A070325.P17143736737302708491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P17143736737302708491

namespace A070325

/-- `∩[A006093(n+1), A067662(n+1)]` -/
def P17143736737302708491.Spec : Prop :=
  ∀ n, (P17143736737302708491.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P17671795304508629152

`∩[A067662(n+1), A068499(n+1)]`
-/

namespace A070325.P17671795304508629152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070325.P17671795304508629152

namespace A070325

/-- `∩[A067662(n+1), A068499(n+1)]` -/
def P17671795304508629152.Spec : Prop :=
  ∀ n, (P17671795304508629152.a n : ℤ) = A070325 (n + 1)

end A070325

/-! ## A070325.P6368702975104077333

`filter[A279480(n+1), A295405(#)]`
-/

namespace A070325.P6368702975104077333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A070325.P6368702975104077333

namespace A070325

/-- `filter[A279480(n+1), A295405(#)]` -/
def P6368702975104077333.Spec : Prop :=
  ∀ n, P6368702975104077333.a n = A070325 (n + 1)

end A070325

/-!
# A070327: 

The programs for A070327, there is no canonical definition to state claims against.
-/

/-! ## A070327.P16785741133017861187

`(n+2)^A051248(n+2)`
-/

namespace A070327.P16785741133017861187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A051248 (n + 2) : ℤ)

end

end A070327.P16785741133017861187

/-!
# A070328: Numbers in which inserting, prefixing or suffixing a 1 anywhere yields only composite numbers.

The programs for A070328, there is no canonical definition to state claims against.
-/

/-! ## A070328.P2121855063582734552

`∪[A070329(n+1), A016789(n)]`
-/

namespace A070328.P2121855063582734552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070328.P2121855063582734552

/-! ## A070328.P6234322659284256758

`eq[0, A069842(n+1)]+1`
-/

namespace A070328.P6234322659284256758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070328.P6234322659284256758

/-! ## A070328.P1820139908161890240

`lt[A069842(n+2), 1]+2`
-/

namespace A070328.P1820139908161890240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A070328.P1820139908161890240

/-! ## A070328.P640593841500792145

`eq[0, A069842(A028310(n))]`
-/

namespace A070328.P640593841500792145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070328.P640593841500792145

/-! ## A070328.P18121572841774794694

`A020725(eq[0, A069842(n+1)])`
-/

namespace A070328.P18121572841774794694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070328.P18121572841774794694

/-! ## A070328.P13725844228477160660

`A020725(lt[A069842(n+1), 1])`
-/

namespace A070328.P13725844228477160660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A070328.P13725844228477160660

/-! ## A070328.P6893371309195274559

`eq[0, A069842(A065033(2*n))]`
-/

namespace A070328.P6893371309195274559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070328.P6893371309195274559

/-! ## A070328.P7726585157202358397

`eq[0, A069842(A055456(n+1))]`
-/

namespace A070328.P7726585157202358397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (A055456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070328.P7726585157202358397

/-!
# A070329: Nontrivial numbers in which inserting, prefixing or suffixing a 1 anywhere yields only composite numbers.

The programs for A070329, there is no canonical definition to state claims against.
-/

/-! ## A070329.P15914184512154093596

`∩[A070328(n+1), A032766(n)]`
-/

namespace A070329.P15914184512154093596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070329.P15914184512154093596

/-! ## A070329.P17657133420406147529

`eq[val(n+2, 3), A069842(n+1)]+1`
-/

namespace A070329.P17657133420406147529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070329.P17657133420406147529

/-! ## A070329.P16304489263759210706

`eq[val(n+1, 3), A069842(A028310(n))]`
-/

namespace A070329.P16304489263759210706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070329.P16304489263759210706

/-! ## A070329.P6202024005773559936

`eq[A000217(n)%3, A069842(n+1)]+1`
-/

namespace A070329.P6202024005773559936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070329.P6202024005773559936

/-! ## A070329.P11259143982633990906

`eq[A002411(n)%3, A069842(n+1)]+1`
-/

namespace A070329.P11259143982633990906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002411 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070329.P11259143982633990906

/-! ## A070329.P9227638302398914670

`eq[C(A196290(n), 2)%3, A069842(n+1)]+1`
-/

namespace A070329.P9227638302398914670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A196290 n).toNat 2 % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070329.P9227638302398914670

/-! ## A070329.P15934374042679393738

`eq[(A167499(n+5)+1)%3, A069842(n+1)]+1`
-/

namespace A070329.P15934374042679393738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167499 (n + 5) + 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070329.P15934374042679393738

/-! ## A070329.P16318543381852497372

`eq[C(A167614(n+2)+1, 2)%3, A069842(n+1)]+1`
-/

namespace A070329.P16318543381852497372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A167614 (n + 2) + 1).toNat 2 % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070329.P16318543381852497372

/-!
# A070330: Nontrivial numbers in which suffixing or inserting a 0 anywhere yields only composite numbers.

The programs for A070330, there is no canonical definition to state claims against.
-/

/-! ## A070330.P9167133095312667332

`∩[A007775(n+1), A070331(n+1)]`
-/

namespace A070330.P9167133095312667332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070330.P9167133095312667332

/-! ## A070330.P12573307305427485850

`∩[A070331(n+1), A392710(n+1)]`
-/

namespace A070330.P12573307305427485850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070330.P12573307305427485850

/-!
# A070331: Numbers in which suffixing or inserting a 0 anywhere yields only composite numbers.

The programs for A070331, there is no canonical definition to state claims against.
-/

/-! ## A070331.P10512765816890829049

`∪[A070330(n+1), A080671(n+1)]`
-/

namespace A070331.P10512765816890829049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070331.P10512765816890829049

/-! ## A070331.P3175932591862889235

`eq[A010051(n+1), A069851(n+1)]+1`
-/

namespace A070331.P3175932591862889235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069851 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070331.P3175932591862889235

/-! ## A070331.P16972268090149452612

`lt[A366614(A005117(n+1)), A324543(n+1)]`
-/

namespace A070331.P16972268090149452612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366614 (A005117 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070331.P16972268090149452612

/-! ## A070331.P17099468888833785404

`lt[A131483(3*n+5), A001222(n+1)]+1`
-/

namespace A070331.P17099468888833785404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131483 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070331.P17099468888833785404

/-! ## A070331.P15341915773730853876

`lt[A324924(2*n+5), A246655(A319684(n+1)+1)]+1`
-/

namespace A070331.P15341915773730853876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324924 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A319684 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070331.P15341915773730853876

/-!
# A070332: Smallest nontrivial power of n ending in n and greater than n; or 0 if no such number exists.

The programs for A070332, there is no canonical definition to state claims against.
-/

/-! ## A070332.P6110845673272478444

`C(A104782(n+2), A104785(2*n+3)!)`
-/

namespace A070332.P6110845673272478444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A104782 (n + 2)).toNat (Nat.factorial (A104785 (2 * n + 3)).toNat)

end

end A070332.P6110845673272478444

/-! ## A070332.P7588712173853886493

`A373291(A082743(n+1))`
-/

namespace A070332.P7588712173853886493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373291 (A082743 (n + 1)).toNat

end

end A070332.P7588712173853886493

/-! ## A070332.P8788522110509269166

`A373291(A083477(n+1))`
-/

namespace A070332.P8788522110509269166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373291 (A083477 (n + 1)).toNat

end

end A070332.P8788522110509269166

/-! ## A070332.P10363879800000680394

`A373291(A083838(n+1))`
-/

namespace A070332.P10363879800000680394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373291 (A083838 (n + 1)).toNat

end

end A070332.P10363879800000680394

/-!
# A070333: Expansion of (1 + x)*(1 - x + x^2)/((1 - x)^4*(1 + x + x^2)).

The programs for A070333, the canonical program `A070333.P3899160730985704373` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070333 has offset 0).

The definition of A070333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` (program `A070333.P3899160730985704373`, by `A070333.P3899160730985704373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070333.P386910438327469979

`a(n-3)+n²+2` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A070333.P386910438327469979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  a (n - 3) + n ^ 2 + 2

end

end A070333.P386910438327469979

namespace A070333

/-- `a(n-3)+n²+2` -/
def P386910438327469979.Spec : Prop :=
  ∀ n, (P386910438327469979.a n : ℤ) = A070333 n

end A070333

/-! ## A070333.P3899160730985704373

`ogf((1+x^3)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070333

/-- `ogf((1+x^3)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P3899160730985704373.Spec : Prop :=
  ∀ n, P3899160730985704373.a n = A070333 n

theorem P3899160730985704373.correct : P3899160730985704373.Spec := by
  intro n
  simp only [A070333]

end A070333

/-! ## A070333.P13453516257165133825

`round((2*n+3)*(n²+3*n+6)/18)`
-/

namespace A070333.P13453516257165133825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n + 3) * (n ^ 2 + 3 * n + 6) : ℚ) / 18)

end

end A070333.P13453516257165133825

namespace A070333

/-- `round((2*n+3)*(n²+3*n+6)/18)` -/
def P13453516257165133825.Spec : Prop :=
  ∀ n, P13453516257165133825.a n = A070333 n

end A070333

/-! ## A070333.P8730151392715043366

`∑[∑[a(n-3)+2]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A070333.P8730151392715043366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  f2 (n - 3) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070333.P8730151392715043366

namespace A070333

/-- `∑[∑[a(n-3)+2]]` -/
def P8730151392715043366.Spec : Prop :=
  ∀ n, (P8730151392715043366.a n : ℤ) = A070333 n

end A070333

/-! ## A070333.P9038301732229347027

`∑[A008810(n+1)]`
-/

namespace A070333.P9038301732229347027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070333.P9038301732229347027

namespace A070333

/-- `∑[A008810(n+1)]` -/
def P9038301732229347027.Spec : Prop :=
  ∀ n, P9038301732229347027.a n = A070333 n

end A070333

/-! ## A070333.P7286699966614792818

`∑[A032765(n)+1]`
-/

namespace A070333.P7286699966614792818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070333.P7286699966614792818

namespace A070333

/-- `∑[A032765(n)+1]` -/
def P7286699966614792818.Spec : Prop :=
  ∀ n, P7286699966614792818.a n = A070333 n

end A070333

/-! ## A070333.P5086793093525244021

`∑[∑[A130823(n+1)]]`
-/

namespace A070333.P5086793093525244021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070333.P5086793093525244021

namespace A070333

/-- `∑[∑[A130823(n+1)]]` -/
def P5086793093525244021.Spec : Prop :=
  ∀ n, P5086793093525244021.a n = A070333 n

end A070333

/-! ## A070333.P13650582867986919155

`∑[A183859(n+1)-n]`
-/

namespace A070333.P13650582867986919155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070333.P13650582867986919155

namespace A070333

/-- `∑[A183859(n+1)-n]` -/
def P13650582867986919155.Spec : Prop :=
  ∀ n, P13650582867986919155.a n = A070333 n

end A070333

/-! ## A070333.P6317620031156179001

`A010000(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A070333.P6317620031156179001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  A010000 n + a (n - 3)

end

end A070333.P6317620031156179001

namespace A070333

/-- `A010000(n)+a(n-3)` -/
def P6317620031156179001.Spec : Prop :=
  ∀ n, P6317620031156179001.a n = A070333 n

end A070333

/-! ## A070333.P13210854561794020311

`∑[floor(A005563(n)/3)]+1+n`
-/

namespace A070333.P13210854561794020311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005563 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A070333.P13210854561794020311

namespace A070333

/-- `∑[floor(A005563(n)/3)]+1+n` -/
def P13210854561794020311.Spec : Prop :=
  ∀ n, P13210854561794020311.a n = A070333 n

end A070333

/-! ## A070333.P110105481458200219

`A211004(n+1)+A060999(n)`
-/

namespace A070333.P110105481458200219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (n + 1) + A060999 n

end

end A070333.P110105481458200219

namespace A070333

/-- `A211004(n+1)+A060999(n)` -/
def P110105481458200219.Spec : Prop :=
  ∀ n, P110105481458200219.a n = A070333 n

end A070333

/-! ## A070333.P19616743207899595

`A254874(n)-A034198(n+1)`
-/

namespace A070333.P19616743207899595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254874 n - A034198 (n + 1)

end

end A070333.P19616743207899595

namespace A070333

/-- `A254874(n)-A034198(n+1)` -/
def P19616743207899595.Spec : Prop :=
  ∀ n, P19616743207899595.a n = A070333 n

end A070333

/-! ## A070333.P201779022438381465

`A014125(n)+A014125(n)-A000217(n+1)`
-/

namespace A070333.P201779022438381465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n + (A014125 n - A000217 (n + 1))

end

end A070333.P201779022438381465

namespace A070333

/-- `A014125(n)+A014125(n)-A000217(n+1)` -/
def P201779022438381465.Spec : Prop :=
  ∀ n, P201779022438381465.a n = A070333 n

end A070333

/-! ## A070333.P3753327544576251622

`A060999(n)+A001840(n+1)`
-/

namespace A070333.P3753327544576251622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 n + A001840 (n + 1)

end

end A070333.P3753327544576251622

namespace A070333

/-- `A060999(n)+A001840(n+1)` -/
def P3753327544576251622.Spec : Prop :=
  ∀ n, P3753327544576251622.a n = A070333 n

end A070333

/-! ## A070333.P3238801889159877361

`A000330(n+1)-2*A181286(n+1)`
-/

namespace A070333.P3238801889159877361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - 2 * A181286 (n + 1)

end

end A070333.P3238801889159877361

namespace A070333

/-- `A000330(n+1)-2*A181286(n+1)` -/
def P3238801889159877361.Spec : Prop :=
  ∀ n, P3238801889159877361.a n = A070333 n

end A070333

/-! ## A070333.P6998498822131729452

`A087483(n+1)+A181286(n+1)-A087483(n)`
-/

namespace A070333.P6998498822131729452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (n + 1) + (A181286 (n + 1) - A087483 n)

end

end A070333.P6998498822131729452

namespace A070333

/-- `A087483(n+1)+A181286(n+1)-A087483(n)` -/
def P6998498822131729452.Spec : Prop :=
  ∀ n, P6998498822131729452.a n = A070333 n

end A070333

/-! ## A070333.P10900034736975920041

`A181286(n)+A000212(n+2)`
-/

namespace A070333.P10900034736975920041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 n + A000212 (n + 2)

end

end A070333.P10900034736975920041

namespace A070333

/-- `A181286(n)+A000212(n+2)` -/
def P10900034736975920041.Spec : Prop :=
  ∀ n, P10900034736975920041.a n = A070333 n

end A070333

/-! ## A070333.P2894008595414746102

`A000212(n+2)+∑[A000212(n)]`
-/

namespace A070333.P2894008595414746102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070333.P2894008595414746102

namespace A070333

/-- `A000212(n+2)+∑[A000212(n)]` -/
def P2894008595414746102.Spec : Prop :=
  ∀ n, P2894008595414746102.a n = A070333 n

end A070333

/-! ## A070333.P4782980379137437245

`A181286(n)+Δ[A181286(n+1)]`
-/

namespace A070333.P4782980379137437245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 n + (f1 (n + 1) - f1 n)

end

end A070333.P4782980379137437245

namespace A070333

/-- `A181286(n)+Δ[A181286(n+1)]` -/
def P4782980379137437245.Spec : Prop :=
  ∀ n, P4782980379137437245.a n = A070333 n

end A070333

/-! ## A070333.P1712085967062679300

`A181286(n)+A001399(2*n+1)`
-/

namespace A070333.P1712085967062679300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 n + A001399 (2 * n + 1)

end

end A070333.P1712085967062679300

namespace A070333

/-- `A181286(n)+A001399(2*n+1)` -/
def P1712085967062679300.Spec : Prop :=
  ∀ n, P1712085967062679300.a n = A070333 n

end A070333

/-!
# A070335: a(n) = 2^n mod 23.

The programs for A070335, the canonical program `A070335.P782868030261440219` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070335 has offset 0).

The definition of A070335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%23` (program `A070335.P782868030261440219`, by `A070335.P782868030261440219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070335.P782868030261440219

`(2^n)%23`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070335

/-- `(2^n)%23` -/
def P782868030261440219.Spec : Prop :=
  ∀ n, (P782868030261440219.a n : ℤ) = A070335 n

theorem P782868030261440219.correct : P782868030261440219.Spec := by
  intro n
  simp only [A070335]

end A070335

/-!
# A070336: a(n) = 2^n mod 25.

The programs for A070336, the canonical program `A070336.P1289242055088665767` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070336 has offset 0).

The definition of A070336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%25` (program `A070336.P1289242055088665767`, by `A070336.P1289242055088665767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070336.P1289242055088665767

`(2^n)%25`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070336

/-- `(2^n)%25` -/
def P1289242055088665767.Spec : Prop :=
  ∀ n, (P1289242055088665767.a n : ℤ) = A070336 n

theorem P1289242055088665767.correct : P1289242055088665767.Spec := by
  intro n
  simp only [A070336]

end A070336

/-!
# A070337: a(n) = 2^n mod 27.

The programs for A070337, the canonical program `A070337.P17570926196945353580` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070337 has offset 0).

The definition of A070337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%27` (program `A070337.P17570926196945353580`, by `A070337.P17570926196945353580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070337.P10483146356275945858

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=5, a(6)=10, a(7)=20, a(8)=13, a(9)=26`
-/

namespace A070337.P10483146356275945858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 5, 10, 20, 13, 26] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A070337.P10483146356275945858

namespace A070337

/-- `a(n-1)-a(n-9)+a(n-10)` -/
def P10483146356275945858.Spec : Prop :=
  ∀ n, P10483146356275945858.a n = A070337 n

end A070337

/-! ## A070337.P17570926196945353580

`(2^n)%27`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070337

/-- `(2^n)%27` -/
def P17570926196945353580.Spec : Prop :=
  ∀ n, (P17570926196945353580.a n : ℤ) = A070337 n

theorem P17570926196945353580.correct : P17570926196945353580.Spec := by
  intro n
  simp only [A070337]

end A070337

/-!
# A070338: a(n) = 2^n mod 33.

The programs for A070338, the canonical program `A070338.P2263554087125048797` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070338 has offset 0).

The definition of A070338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%33` (program `A070338.P2263554087125048797`, by `A070338.P2263554087125048797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070338.P7416970572545984166

`a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=31, a(7)=29, a(8)=25, a(9)=17`
-/

namespace A070338.P7416970572545984166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 31, 29, 25, 17] fun n a =>
  a (n - 10)

end

end A070338.P7416970572545984166

namespace A070338

/-- `a(n-10)` -/
def P7416970572545984166.Spec : Prop :=
  ∀ n, (P7416970572545984166.a n : ℤ) = A070338 n

end A070338

/-! ## A070338.P2263554087125048797

`(2^n)%33`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070338

/-- `(2^n)%33` -/
def P2263554087125048797.Spec : Prop :=
  ∀ n, (P2263554087125048797.a n : ℤ) = A070338 n

theorem P2263554087125048797.correct : P2263554087125048797.Spec := by
  intro n
  simp only [A070338]

end A070338

/-!
# A070339: a(n) = 2^n mod 35.

The programs for A070339, the canonical program `A070339.P8121117844975006178` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070339 has offset 0).

The definition of A070339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%35` (program `A070339.P8121117844975006178`, by `A070339.P8121117844975006178.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070339.P8121117844975006178

`(2^n)%35`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070339

/-- `(2^n)%35` -/
def P8121117844975006178.Spec : Prop :=
  ∀ n, (P8121117844975006178.a n : ℤ) = A070339 n

theorem P8121117844975006178.correct : P8121117844975006178.Spec := by
  intro n
  simp only [A070339]

end A070339

/-!
# A070340: a(n) = 2^n mod 39.

The programs for A070340, the canonical program `A070340.P2927995717836226828` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070340 has offset 0).

The definition of A070340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%39` (program `A070340.P2927995717836226828`, by `A070340.P2927995717836226828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070340.P9122939424640795955

`a(n-1)-a(n-4)+a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=25, a(7)=11, a(8)=22`
-/

namespace A070340.P9122939424640795955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 25, 11, 22] fun n a =>
  a (n - 1) - a (n - 4) + a (n - 5) - a (n - 8) + a (n - 9)

end

end A070340.P9122939424640795955

namespace A070340

/-- `a(n-1)-a(n-4)+a(n-5)-a(n-8)+a(n-9)` -/
def P9122939424640795955.Spec : Prop :=
  ∀ n, P9122939424640795955.a n = A070340 n

end A070340

/-! ## A070340.P2927995717836226828

`(2^n)%39`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070340

/-- `(2^n)%39` -/
def P2927995717836226828.Spec : Prop :=
  ∀ n, (P2927995717836226828.a n : ℤ) = A070340 n

theorem P2927995717836226828.correct : P2927995717836226828.Spec := by
  intro n
  simp only [A070340]

end A070340

/-!
# A070341: a(n) = 3^n mod 11: Repeat (1, 3, 9, 5, 4), period 5.

The programs for A070341, the canonical program `A070341.P7222289201444981117` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070341 has offset 0).

The definition of A070341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%11` (program `A070341.P7222289201444981117`, by `A070341.P7222289201444981117.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070341.P11038923617910494174

`a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=5, a(4)=4`
-/

namespace A070341.P11038923617910494174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 5, 4] fun n a =>
  a (n - 5)

end

end A070341.P11038923617910494174

namespace A070341

/-- `a(n-5)` -/
def P11038923617910494174.Spec : Prop :=
  ∀ n, (P11038923617910494174.a n : ℤ) = A070341 n

end A070341

/-! ## A070341.P7222289201444981117

`(3^n)%11`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070341

/-- `(3^n)%11` -/
def P7222289201444981117.Spec : Prop :=
  ∀ n, (P7222289201444981117.a n : ℤ) = A070341 n

theorem P7222289201444981117.correct : P7222289201444981117.Spec := by
  intro n
  simp only [A070341]

end A070341

/-!
# A070342: a(n) = 3^n mod 19.

The programs for A070342, the canonical program `A070342.P6202013547220231071` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070342 has offset 0).

The definition of A070342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%19` (program `A070342.P6202013547220231071`, by `A070342.P6202013547220231071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070342.P13926702451677461996

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=8, a(4)=5, a(5)=15, a(6)=7, a(7)=2, a(8)=6, a(9)=18`
-/

namespace A070342.P13926702451677461996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 8, 5, 15, 7, 2, 6, 18] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A070342.P13926702451677461996

namespace A070342

/-- `a(n-1)-a(n-9)+a(n-10)` -/
def P13926702451677461996.Spec : Prop :=
  ∀ n, P13926702451677461996.a n = A070342 n

end A070342

/-! ## A070342.P6202013547220231071

`(3^n)%19`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070342

/-- `(3^n)%19` -/
def P6202013547220231071.Spec : Prop :=
  ∀ n, (P6202013547220231071.a n : ℤ) = A070342 n

theorem P6202013547220231071.correct : P6202013547220231071.Spec := by
  intro n
  simp only [A070342]

end A070342

/-!
# A070343: a(n) = 3^n mod 25.

The programs for A070343, the canonical program `A070343.P8022500675001982025` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070343 has offset 0).

The definition of A070343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%25` (program `A070343.P8022500675001982025`, by `A070343.P8022500675001982025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070343.P8022500675001982025

`(3^n)%25`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070343

/-- `(3^n)%25` -/
def P8022500675001982025.Spec : Prop :=
  ∀ n, (P8022500675001982025.a n : ℤ) = A070343 n

theorem P8022500675001982025.correct : P8022500675001982025.Spec := by
  intro n
  simp only [A070343]

end A070343

/-!
# A070344: a(n) = 3^n mod 29.

The programs for A070344, the canonical program `A070344.P2998487153450603419` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070344 has offset 0).

The definition of A070344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%29` (program `A070344.P2998487153450603419`, by `A070344.P2998487153450603419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070344.P2998487153450603419

`(3^n)%29`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070344

/-- `(3^n)%29` -/
def P2998487153450603419.Spec : Prop :=
  ∀ n, (P2998487153450603419.a n : ℤ) = A070344 n

theorem P2998487153450603419.correct : P2998487153450603419.Spec := by
  intro n
  simp only [A070344]

end A070344

/-!
# A070345: a(n) = 3^n mod 35.

The programs for A070345, the canonical program `A070345.P954431562301385414` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070345 has offset 0).

The definition of A070345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%35` (program `A070345.P954431562301385414`, by `A070345.P954431562301385414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070345.P954431562301385414

`(3^n)%35`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070345

/-- `(3^n)%35` -/
def P954431562301385414.Spec : Prop :=
  ∀ n, (P954431562301385414.a n : ℤ) = A070345 n

theorem P954431562301385414.correct : P954431562301385414.Spec := by
  intro n
  simp only [A070345]

end A070345

/-!
# A070346: a(n) = 3^n mod 37.

The programs for A070346, the canonical program `A070346.P18120669343562969762` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070346 has offset 0).

The definition of A070346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%37` (program `A070346.P18120669343562969762`, by `A070346.P18120669343562969762.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070346.P18120669343562969762

`(3^n)%37`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070346

/-- `(3^n)%37` -/
def P18120669343562969762.Spec : Prop :=
  ∀ n, (P18120669343562969762.a n : ℤ) = A070346 n

theorem P18120669343562969762.correct : P18120669343562969762.Spec := by
  intro n
  simp only [A070346]

end A070346

/-!
# A070347: a(n) = 2^n mod 21.

The programs for A070347, the canonical program `A070347.P11369009952397155141` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070347 has offset 0).

The definition of A070347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%21` (program `A070347.P11369009952397155141`, by `A070347.P11369009952397155141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070347.P14326898336553682767

`a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=11`
-/

namespace A070347.P14326898336553682767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 11] fun n a =>
  a (n - 6)

end

end A070347.P14326898336553682767

namespace A070347

/-- `a(n-6)` -/
def P14326898336553682767.Spec : Prop :=
  ∀ n, (P14326898336553682767.a n : ℤ) = A070347 n

end A070347

/-! ## A070347.P11369009952397155141

`(2^n)%21`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070347

/-- `(2^n)%21` -/
def P11369009952397155141.Spec : Prop :=
  ∀ n, (P11369009952397155141.a n : ℤ) = A070347 n

theorem P11369009952397155141.correct : P11369009952397155141.Spec := by
  intro n
  simp only [A070347]

end A070347

/-!
# A070348: a(n) = 2^n mod 41.

The programs for A070348, the canonical program `A070348.P13552258493170922487` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070348 has offset 0).

The definition of A070348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%41` (program `A070348.P13552258493170922487`, by `A070348.P13552258493170922487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070348.P13552258493170922487

`(2^n)%41`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070348

/-- `(2^n)%41` -/
def P13552258493170922487.Spec : Prop :=
  ∀ n, (P13552258493170922487.a n : ℤ) = A070348 n

theorem P13552258493170922487.correct : P13552258493170922487.Spec := by
  intro n
  simp only [A070348]

end A070348

/-!
# A070349: a(n) = 2^n mod 43.

The programs for A070349, the canonical program `A070349.P17097078099796524617` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070349 has offset 0).

The definition of A070349 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%43` (program `A070349.P17097078099796524617`, by `A070349.P17097078099796524617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070349.P8898981060293200931

`a(n-1)-a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=21, a(7)=42`
-/

namespace A070349.P8898981060293200931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 21, 42] fun n a =>
  a (n - 1) - a (n - 7) + a (n - 8)

end

end A070349.P8898981060293200931

namespace A070349

/-- `a(n-1)-a(n-7)+a(n-8)` -/
def P8898981060293200931.Spec : Prop :=
  ∀ n, P8898981060293200931.a n = A070349 n

end A070349

/-! ## A070349.P17097078099796524617

`(2^n)%43`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070349

/-- `(2^n)%43` -/
def P17097078099796524617.Spec : Prop :=
  ∀ n, (P17097078099796524617.a n : ℤ) = A070349 n

theorem P17097078099796524617.correct : P17097078099796524617.Spec := by
  intro n
  simp only [A070349]

end A070349

/-!
# A070350: a(n) = 2^n mod 45.

The programs for A070350, the canonical program `A070350.P13277053995171806014` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070350 has offset 0).

The definition of A070350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%45` (program `A070350.P13277053995171806014`, by `A070350.P13277053995171806014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070350.P13277053995171806014

`(2^n)%45`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070350

/-- `(2^n)%45` -/
def P13277053995171806014.Spec : Prop :=
  ∀ n, (P13277053995171806014.a n : ℤ) = A070350 n

theorem P13277053995171806014.correct : P13277053995171806014.Spec := by
  intro n
  simp only [A070350]

end A070350

/-!
# A070351: a(n) = 2^n mod 47.

The programs for A070351, the canonical program `A070351.P578750783881076454` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070351 has offset 0).

The definition of A070351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%47` (program `A070351.P578750783881076454`, by `A070351.P578750783881076454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070351.P578750783881076454

`(2^n)%47`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070351

/-- `(2^n)%47` -/
def P578750783881076454.Spec : Prop :=
  ∀ n, (P578750783881076454.a n : ℤ) = A070351 n

theorem P578750783881076454.correct : P578750783881076454.Spec := by
  intro n
  simp only [A070351]

end A070351

/-!
# A070352: a(n) = 3^n mod 5; or period 4, repeat [1, 3, 4, 2].

The programs for A070352, the canonical program `A070352.P4518310492920684853` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070352 has offset 0).

The definition of A070352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%5` (program `A070352.P4518310492920684853`, by `A070352.P4518310492920684853.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070352.P10623104770029805467

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=2`
-/

namespace A070352.P10623104770029805467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 2] fun n a =>
  a (n - 4)

end

end A070352.P10623104770029805467

namespace A070352

/-- `a(n-4)` -/
def P10623104770029805467.Spec : Prop :=
  ∀ n, (P10623104770029805467.a n : ℤ) = A070352 n

end A070352

/-! ## A070352.P4518310492920684853

`(3^n)%5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070352

/-- `(3^n)%5` -/
def P4518310492920684853.Spec : Prop :=
  ∀ n, (P4518310492920684853.a n : ℤ) = A070352 n

theorem P4518310492920684853.correct : P4518310492920684853.Spec := by
  intro n
  simp only [A070352]

end A070352

/-!
# A070353: a(n) = 3^n mod 14.

The programs for A070353, the canonical program `A070353.P11741051758410315771` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070353 has offset 0).

The definition of A070353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%14` (program `A070353.P11741051758410315771`, by `A070353.P11741051758410315771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070353.P16430542077980648899

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A070353.P16430542077980648899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A070353.P16430542077980648899

namespace A070353

/-- `2*a(n-1)-2*a(n-2)+a(n-3)` -/
def P16430542077980648899.Spec : Prop :=
  ∀ n, P16430542077980648899.a n = A070353 n

end A070353

/-! ## A070353.P11741051758410315771

`(3^n)%14`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070353

/-- `(3^n)%14` -/
def P11741051758410315771.Spec : Prop :=
  ∀ n, (P11741051758410315771.a n : ℤ) = A070353 n

theorem P11741051758410315771.correct : P11741051758410315771.Spec := by
  intro n
  simp only [A070353]

end A070353

/-!
# A070354: a(n) = 3^n mod 16.

The programs for A070354, the canonical program `A070354.P12040326161110722903` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070354 has offset 0).

The definition of A070354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%16` (program `A070354.P12040326161110722903`, by `A070354.P12040326161110722903.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070354.P10766215878332449962

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=11`
-/

namespace A070354.P10766215878332449962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 11] fun n a =>
  a (n - 4)

end

end A070354.P10766215878332449962

namespace A070354

/-- `a(n-4)` -/
def P10766215878332449962.Spec : Prop :=
  ∀ n, (P10766215878332449962.a n : ℤ) = A070354 n

end A070354

/-! ## A070354.P12040326161110722903

`(3^n)%16`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070354

/-- `(3^n)%16` -/
def P12040326161110722903.Spec : Prop :=
  ∀ n, (P12040326161110722903.a n : ℤ) = A070354 n

theorem P12040326161110722903.correct : P12040326161110722903.Spec := by
  intro n
  simp only [A070354]

end A070354

/-!
# A070355: a(n) = 3^n mod 22.

The programs for A070355, the canonical program `A070355.P17985962046523620814` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070355 has offset 0).

The definition of A070355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%22` (program `A070355.P17985962046523620814`, by `A070355.P17985962046523620814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070355.P11189578737572194036

`a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=5, a(4)=15`
-/

namespace A070355.P11189578737572194036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 5, 15] fun n a =>
  a (n - 5)

end

end A070355.P11189578737572194036

namespace A070355

/-- `a(n-5)` -/
def P11189578737572194036.Spec : Prop :=
  ∀ n, (P11189578737572194036.a n : ℤ) = A070355 n

end A070355

/-! ## A070355.P17985962046523620814

`(3^n)%22`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070355

/-- `(3^n)%22` -/
def P17985962046523620814.Spec : Prop :=
  ∀ n, (P17985962046523620814.a n : ℤ) = A070355 n

theorem P17985962046523620814.correct : P17985962046523620814.Spec := by
  intro n
  simp only [A070355]

end A070355

/-!
# A070356: a(n) = 3^n mod 23.

The programs for A070356, the canonical program `A070356.P15365655545796501130` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070356 has offset 0).

The definition of A070356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%23` (program `A070356.P15365655545796501130`, by `A070356.P15365655545796501130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070356.P15365655545796501130

`(3^n)%23`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070356

/-- `(3^n)%23` -/
def P15365655545796501130.Spec : Prop :=
  ∀ n, (P15365655545796501130.a n : ℤ) = A070356 n

theorem P15365655545796501130.correct : P15365655545796501130.Spec := by
  intro n
  simp only [A070356]

end A070356

/-!
# A070357: a(n) = 3^n mod 28.

The programs for A070357, the canonical program `A070357.P10614286264822415328` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070357 has offset 0).

The definition of A070357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%28` (program `A070357.P10614286264822415328`, by `A070357.P10614286264822415328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070357.P6491386056516521259

`a(n-6)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=25, a(5)=19`
-/

namespace A070357.P6491386056516521259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27, 25, 19] fun n a =>
  a (n - 6)

end

end A070357.P6491386056516521259

namespace A070357

/-- `a(n-6)` -/
def P6491386056516521259.Spec : Prop :=
  ∀ n, (P6491386056516521259.a n : ℤ) = A070357 n

end A070357

/-! ## A070357.P10614286264822415328

`(3^n)%28`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070357

/-- `(3^n)%28` -/
def P10614286264822415328.Spec : Prop :=
  ∀ n, (P10614286264822415328.a n : ℤ) = A070357 n

theorem P10614286264822415328.correct : P10614286264822415328.Spec := by
  intro n
  simp only [A070357]

end A070357

/-!
# A070358: a(n) = 3^n mod 32.

The programs for A070358, the canonical program `A070358.P7239737058537596894` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070358 has offset 0).

The definition of A070358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%32` (program `A070358.P7239737058537596894`, by `A070358.P7239737058537596894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070358.P7160327298463004773

`a(n-8)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=17, a(5)=19, a(6)=25, a(7)=11`
-/

namespace A070358.P7160327298463004773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27, 17, 19, 25, 11] fun n a =>
  a (n - 8)

end

end A070358.P7160327298463004773

namespace A070358

/-- `a(n-8)` -/
def P7160327298463004773.Spec : Prop :=
  ∀ n, (P7160327298463004773.a n : ℤ) = A070358 n

end A070358

/-! ## A070358.P7239737058537596894

`(3^n)%32`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070358

/-- `(3^n)%32` -/
def P7239737058537596894.Spec : Prop :=
  ∀ n, (P7239737058537596894.a n : ℤ) = A070358 n

theorem P7239737058537596894.correct : P7239737058537596894.Spec := by
  intro n
  simp only [A070358]

end A070358

/-!
# A070359: a(n) = 3^n mod 34.

The programs for A070359, the canonical program `A070359.P4860711230923617542` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070359 has offset 0).

The definition of A070359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%34` (program `A070359.P4860711230923617542`, by `A070359.P4860711230923617542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070359.P16354341178707148311

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=13, a(5)=5, a(6)=15, a(7)=11, a(8)=33`
-/

namespace A070359.P16354341178707148311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 27, 13, 5, 15, 11, 33] fun n a =>
  a (n - 1) - a (n - 8) + a (n - 9)

end

end A070359.P16354341178707148311

namespace A070359

/-- `a(n-1)-a(n-8)+a(n-9)` -/
def P16354341178707148311.Spec : Prop :=
  ∀ n, P16354341178707148311.a n = A070359 n

end A070359

/-! ## A070359.P4860711230923617542

`(3^n)%34`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070359

/-- `(3^n)%34` -/
def P4860711230923617542.Spec : Prop :=
  ∀ n, (P4860711230923617542.a n : ℤ) = A070359 n

theorem P4860711230923617542.correct : P4860711230923617542.Spec := by
  intro n
  simp only [A070359]

end A070359

/-!
# A070360: a(n) = 3^n mod 38.

The programs for A070360, the canonical program `A070360.P9051136358866655782` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070360 has offset 0).

The definition of A070360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%38` (program `A070360.P9051136358866655782`, by `A070360.P9051136358866655782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070360.P10537892112917682660

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=5, a(5)=15, a(6)=7, a(7)=21, a(8)=25, a(9)=37`
-/

namespace A070360.P10537892112917682660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 27, 5, 15, 7, 21, 25, 37] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A070360.P10537892112917682660

namespace A070360

/-- `a(n-1)-a(n-9)+a(n-10)` -/
def P10537892112917682660.Spec : Prop :=
  ∀ n, P10537892112917682660.a n = A070360 n

end A070360

/-! ## A070360.P9051136358866655782

`(3^n)%38`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070360

/-- `(3^n)%38` -/
def P9051136358866655782.Spec : Prop :=
  ∀ n, (P9051136358866655782.a n : ℤ) = A070360 n

theorem P9051136358866655782.correct : P9051136358866655782.Spec := by
  intro n
  simp only [A070360]

end A070360

/-!
# A070361: a(n) = 3^n mod 41.

The programs for A070361, the canonical program `A070361.P5852566478284248803` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070361 has offset 0).

The definition of A070361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%41` (program `A070361.P5852566478284248803`, by `A070361.P5852566478284248803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070361.P16330651898271197811

`a(n-8)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=40, a(5)=38, a(6)=32, a(7)=14`
-/

namespace A070361.P16330651898271197811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27, 40, 38, 32, 14] fun n a =>
  a (n - 8)

end

end A070361.P16330651898271197811

namespace A070361

/-- `a(n-8)` -/
def P16330651898271197811.Spec : Prop :=
  ∀ n, (P16330651898271197811.a n : ℤ) = A070361 n

end A070361

/-! ## A070361.P5852566478284248803

`(3^n)%41`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070361

/-- `(3^n)%41` -/
def P5852566478284248803.Spec : Prop :=
  ∀ n, (P5852566478284248803.a n : ℤ) = A070361 n

theorem P5852566478284248803.correct : P5852566478284248803.Spec := by
  intro n
  simp only [A070361]

end A070361

/-!
# A070362: a(n) = 3^n mod 44.

The programs for A070362, the canonical program `A070362.P7603789467983614974` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070362 has offset 0).

The definition of A070362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%44` (program `A070362.P7603789467983614974`, by `A070362.P7603789467983614974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070362.P17841599975813556660

`a(n-10)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=37, a(5)=23, a(6)=25, a(7)=31, a(8)=5, a(9)=15`
-/

namespace A070362.P17841599975813556660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27, 37, 23, 25, 31, 5, 15] fun n a =>
  a (n - 10)

end

end A070362.P17841599975813556660

namespace A070362

/-- `a(n-10)` -/
def P17841599975813556660.Spec : Prop :=
  ∀ n, (P17841599975813556660.a n : ℤ) = A070362 n

end A070362

/-! ## A070362.P7603789467983614974

`(3^n)%44`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070362

/-- `(3^n)%44` -/
def P7603789467983614974.Spec : Prop :=
  ∀ n, (P7603789467983614974.a n : ℤ) = A070362 n

theorem P7603789467983614974.correct : P7603789467983614974.Spec := by
  intro n
  simp only [A070362]

end A070362

/-!
# A070363: a(n) = 3^n mod 46.

The programs for A070363, the canonical program `A070363.P12889217514613153440` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070363 has offset 0).

The definition of A070363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%46` (program `A070363.P12889217514613153440`, by `A070363.P12889217514613153440.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070363.P12889217514613153440

`(3^n)%46`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070363

/-- `(3^n)%46` -/
def P12889217514613153440.Spec : Prop :=
  ∀ n, (P12889217514613153440.a n : ℤ) = A070363 n

theorem P12889217514613153440.correct : P12889217514613153440.Spec := by
  intro n
  simp only [A070363]

end A070363

/-!
# A070364: a(n) = 3^n mod 47.

The programs for A070364, the canonical program `A070364.P14129046817276912840` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070364 has offset 0).

The definition of A070364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%47` (program `A070364.P14129046817276912840`, by `A070364.P14129046817276912840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070364.P14129046817276912840

`(3^n)%47`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070364

/-- `(3^n)%47` -/
def P14129046817276912840.Spec : Prop :=
  ∀ n, (P14129046817276912840.a n : ℤ) = A070364 n

theorem P14129046817276912840.correct : P14129046817276912840.Spec := by
  intro n
  simp only [A070364]

end A070364

/-!
# A070365: a(n) = 5^n mod 7.

The programs for A070365, the canonical program `A070365.P12269471524511901253` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070365 has offset 0).

The definition of A070365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%7` (program `A070365.P12269471524511901253`, by `A070365.P12269471524511901253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070365.P363765688735375491

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=4, a(3)=6, a(4)=2, a(5)=3`
-/

namespace A070365.P363765688735375491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 4, 6, 2, 3] fun n a =>
  a (n - 6)

end

end A070365.P363765688735375491

namespace A070365

/-- `a(n-6)` -/
def P363765688735375491.Spec : Prop :=
  ∀ n, (P363765688735375491.a n : ℤ) = A070365 n

end A070365

/-! ## A070365.P12269471524511901253

`(5^n)%7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070365

/-- `(5^n)%7` -/
def P12269471524511901253.Spec : Prop :=
  ∀ n, (P12269471524511901253.a n : ℤ) = A070365 n

theorem P12269471524511901253.correct : P12269471524511901253.Spec := by
  intro n
  simp only [A070365]

end A070365

/-!
# A070366: a(n) = 5^n mod 9.

The programs for A070366, the canonical program `A070366.P360626362590323064` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070366 has offset 0).

The definition of A070366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%9` (program `A070366.P360626362590323064`, by `A070366.P360626362590323064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070366.P1914710916886525817

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=7, a(3)=8, a(4)=4, a(5)=2`
-/

namespace A070366.P1914710916886525817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 7, 8, 4, 2] fun n a =>
  a (n - 6)

end

end A070366.P1914710916886525817

namespace A070366

/-- `a(n-6)` -/
def P1914710916886525817.Spec : Prop :=
  ∀ n, (P1914710916886525817.a n : ℤ) = A070366 n

end A070366

/-! ## A070366.P360626362590323064

`(5^n)%9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070366

/-- `(5^n)%9` -/
def P360626362590323064.Spec : Prop :=
  ∀ n, (P360626362590323064.a n : ℤ) = A070366 n

theorem P360626362590323064.correct : P360626362590323064.Spec := by
  intro n
  simp only [A070366]

end A070366

/-!
# A070367: a(n) = 5^n mod 11.

The programs for A070367, the canonical program `A070367.P9345489022168108031` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070367 has offset 0).

The definition of A070367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%11` (program `A070367.P9345489022168108031`, by `A070367.P9345489022168108031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070367.P13547610818378276327

`a(n-5)` with `a(0)=1, a(1)=5, a(2)=3, a(3)=4, a(4)=9`
-/

namespace A070367.P13547610818378276327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 3, 4, 9] fun n a =>
  a (n - 5)

end

end A070367.P13547610818378276327

namespace A070367

/-- `a(n-5)` -/
def P13547610818378276327.Spec : Prop :=
  ∀ n, (P13547610818378276327.a n : ℤ) = A070367 n

end A070367

/-! ## A070367.P9345489022168108031

`(5^n)%11`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070367

/-- `(5^n)%11` -/
def P9345489022168108031.Spec : Prop :=
  ∀ n, (P9345489022168108031.a n : ℤ) = A070367 n

theorem P9345489022168108031.correct : P9345489022168108031.Spec := by
  intro n
  simp only [A070367]

end A070367

/-!
# A070368: a(n) = 5^n mod 13.

The programs for A070368, the canonical program `A070368.P4723723318501267268` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070368 has offset 0).

The definition of A070368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%13` (program `A070368.P4723723318501267268`, by `A070368.P4723723318501267268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070368.P12006950494227191021

`a(n-4)` with `a(0)=1, a(1)=5, a(2)=12, a(3)=8`
-/

namespace A070368.P12006950494227191021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 12, 8] fun n a =>
  a (n - 4)

end

end A070368.P12006950494227191021

namespace A070368

/-- `a(n-4)` -/
def P12006950494227191021.Spec : Prop :=
  ∀ n, (P12006950494227191021.a n : ℤ) = A070368 n

end A070368

/-! ## A070368.P4723723318501267268

`(5^n)%13`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070368

/-- `(5^n)%13` -/
def P4723723318501267268.Spec : Prop :=
  ∀ n, (P4723723318501267268.a n : ℤ) = A070368 n

theorem P4723723318501267268.correct : P4723723318501267268.Spec := by
  intro n
  simp only [A070368]

end A070368

/-!
# A070369: a(n) = 5^n mod 14.

The programs for A070369, the canonical program `A070369.P6485791543822083073` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070369 has offset 0).

The definition of A070369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%14` (program `A070369.P6485791543822083073`, by `A070369.P6485791543822083073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070369.P14013941357409623779

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=13, a(4)=9, a(5)=3`
-/

namespace A070369.P14013941357409623779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 11, 13, 9, 3] fun n a =>
  a (n - 6)

end

end A070369.P14013941357409623779

namespace A070369

/-- `a(n-6)` -/
def P14013941357409623779.Spec : Prop :=
  ∀ n, (P14013941357409623779.a n : ℤ) = A070369 n

end A070369

/-! ## A070369.P6485791543822083073

`(5^n)%14`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070369

/-- `(5^n)%14` -/
def P6485791543822083073.Spec : Prop :=
  ∀ n, (P6485791543822083073.a n : ℤ) = A070369 n

theorem P6485791543822083073.correct : P6485791543822083073.Spec := by
  intro n
  simp only [A070369]

end A070369

/-!
# A070370: a(n) = 5^n mod 16.

The programs for A070370, the canonical program `A070370.P13962894470666964445` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070370 has offset 0).

The definition of A070370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%16` (program `A070370.P13962894470666964445`, by `A070370.P13962894470666964445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070370.P7077811863926508026

`a(n-4)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=13`
-/

namespace A070370.P7077811863926508026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 9, 13] fun n a =>
  a (n - 4)

end

end A070370.P7077811863926508026

namespace A070370

/-- `a(n-4)` -/
def P7077811863926508026.Spec : Prop :=
  ∀ n, (P7077811863926508026.a n : ℤ) = A070370 n

end A070370

/-! ## A070370.P13962894470666964445

`(5^n)%16`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070370

/-- `(5^n)%16` -/
def P13962894470666964445.Spec : Prop :=
  ∀ n, (P13962894470666964445.a n : ℤ) = A070370 n

theorem P13962894470666964445.correct : P13962894470666964445.Spec := by
  intro n
  simp only [A070370]

end A070370

/-!
# A070371: a(n) = 5^n mod 17.

The programs for A070371, the canonical program `A070371.P5873794181253403642` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070371 has offset 0).

The definition of A070371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%17` (program `A070371.P5873794181253403642`, by `A070371.P5873794181253403642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070371.P2004210824482009188

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=5, a(2)=8, a(3)=6, a(4)=13, a(5)=14, a(6)=2, a(7)=10, a(8)=16`
-/

namespace A070371.P2004210824482009188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8, 6, 13, 14, 2, 10, 16] fun n a =>
  a (n - 1) - a (n - 8) + a (n - 9)

end

end A070371.P2004210824482009188

namespace A070371

/-- `a(n-1)-a(n-8)+a(n-9)` -/
def P2004210824482009188.Spec : Prop :=
  ∀ n, P2004210824482009188.a n = A070371 n

end A070371

/-! ## A070371.P5873794181253403642

`(5^n)%17`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070371

/-- `(5^n)%17` -/
def P5873794181253403642.Spec : Prop :=
  ∀ n, (P5873794181253403642.a n : ℤ) = A070371 n

theorem P5873794181253403642.correct : P5873794181253403642.Spec := by
  intro n
  simp only [A070371]

end A070371

/-!
# A070372: a(n) = 5^n mod 18.

The programs for A070372, the canonical program `A070372.P17801499627490083830` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070372 has offset 0).

The definition of A070372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%18` (program `A070372.P17801499627490083830`, by `A070372.P17801499627490083830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070372.P8500301956428501799

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=7, a(3)=17, a(4)=13, a(5)=11`
-/

namespace A070372.P8500301956428501799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 7, 17, 13, 11] fun n a =>
  a (n - 6)

end

end A070372.P8500301956428501799

namespace A070372

/-- `a(n-6)` -/
def P8500301956428501799.Spec : Prop :=
  ∀ n, (P8500301956428501799.a n : ℤ) = A070372 n

end A070372

/-! ## A070372.P17801499627490083830

`(5^n)%18`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070372

/-- `(5^n)%18` -/
def P17801499627490083830.Spec : Prop :=
  ∀ n, (P17801499627490083830.a n : ℤ) = A070372 n

theorem P17801499627490083830.correct : P17801499627490083830.Spec := by
  intro n
  simp only [A070372]

end A070372

/-!
# A070373: a(n) = 5^n mod 19.

The programs for A070373, the canonical program `A070373.P3714121186504588050` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070373 has offset 0).

The definition of A070373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%19` (program `A070373.P3714121186504588050`, by `A070373.P3714121186504588050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070373.P2443529617434040278

`a(n-9)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=11, a(4)=17, a(5)=9, a(6)=7, a(7)=16, a(8)=4`
-/

namespace A070373.P2443529617434040278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 6, 11, 17, 9, 7, 16, 4] fun n a =>
  a (n - 9)

end

end A070373.P2443529617434040278

namespace A070373

/-- `a(n-9)` -/
def P2443529617434040278.Spec : Prop :=
  ∀ n, (P2443529617434040278.a n : ℤ) = A070373 n

end A070373

/-! ## A070373.P3714121186504588050

`(5^n)%19`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070373

/-- `(5^n)%19` -/
def P3714121186504588050.Spec : Prop :=
  ∀ n, (P3714121186504588050.a n : ℤ) = A070373 n

theorem P3714121186504588050.correct : P3714121186504588050.Spec := by
  intro n
  simp only [A070373]

end A070373

/-!
# A070374: a(n) = 5^n mod 21.

The programs for A070374, the canonical program `A070374.P3635266673552191088` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070374 has offset 0).

The definition of A070374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%21` (program `A070374.P3635266673552191088`, by `A070374.P3635266673552191088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070374.P18106835225190842990

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=4, a(3)=20, a(4)=16, a(5)=17`
-/

namespace A070374.P18106835225190842990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 4, 20, 16, 17] fun n a =>
  a (n - 6)

end

end A070374.P18106835225190842990

namespace A070374

/-- `a(n-6)` -/
def P18106835225190842990.Spec : Prop :=
  ∀ n, (P18106835225190842990.a n : ℤ) = A070374 n

end A070374

/-! ## A070374.P3635266673552191088

`(5^n)%21`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070374

/-- `(5^n)%21` -/
def P3635266673552191088.Spec : Prop :=
  ∀ n, (P3635266673552191088.a n : ℤ) = A070374 n

theorem P3635266673552191088.correct : P3635266673552191088.Spec := by
  intro n
  simp only [A070374]

end A070374

/-!
# A070375: a(n) = 5^n mod 22.

The programs for A070375, the canonical program `A070375.P15209654320317057506` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070375 has offset 0).

The definition of A070375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%22` (program `A070375.P15209654320317057506`, by `A070375.P15209654320317057506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070375.P5432521142464282773

`a(n-5)` with `a(0)=1, a(1)=5, a(2)=3, a(3)=15, a(4)=9`
-/

namespace A070375.P5432521142464282773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 3, 15, 9] fun n a =>
  a (n - 5)

end

end A070375.P5432521142464282773

namespace A070375

/-- `a(n-5)` -/
def P5432521142464282773.Spec : Prop :=
  ∀ n, (P5432521142464282773.a n : ℤ) = A070375 n

end A070375

/-! ## A070375.P15209654320317057506

`(5^n)%22`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070375

/-- `(5^n)%22` -/
def P15209654320317057506.Spec : Prop :=
  ∀ n, (P15209654320317057506.a n : ℤ) = A070375 n

theorem P15209654320317057506.correct : P15209654320317057506.Spec := by
  intro n
  simp only [A070375]

end A070375

/-!
# A070376: a(n) = 5^n mod 26.

The programs for A070376, the canonical program `A070376.P16146881518591889479` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070376 has offset 0).

The definition of A070376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%26` (program `A070376.P16146881518591889479`, by `A070376.P16146881518591889479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070376.P1417703680989136620

`a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=21`
-/

namespace A070376.P1417703680989136620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 21] fun n a =>
  a (n - 4)

end

end A070376.P1417703680989136620

namespace A070376

/-- `a(n-4)` -/
def P1417703680989136620.Spec : Prop :=
  ∀ n, (P1417703680989136620.a n : ℤ) = A070376 n

end A070376

/-! ## A070376.P16146881518591889479

`(5^n)%26`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070376

/-- `(5^n)%26` -/
def P16146881518591889479.Spec : Prop :=
  ∀ n, (P16146881518591889479.a n : ℤ) = A070376 n

theorem P16146881518591889479.correct : P16146881518591889479.Spec := by
  intro n
  simp only [A070376]

end A070376

/-!
# A070377: a(n) = 5^n mod 27.

The programs for A070377, the canonical program `A070377.P2889437785174592265` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070377 has offset 0).

The definition of A070377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%27` (program `A070377.P2889437785174592265`, by `A070377.P2889437785174592265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070377.P8582843443270358502

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=17, a(4)=4, a(5)=20, a(6)=19, a(7)=14, a(8)=16, a(9)=26`
-/

namespace A070377.P8582843443270358502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25, 17, 4, 20, 19, 14, 16, 26] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A070377.P8582843443270358502

namespace A070377

/-- `a(n-1)-a(n-9)+a(n-10)` -/
def P8582843443270358502.Spec : Prop :=
  ∀ n, P8582843443270358502.a n = A070377 n

end A070377

/-! ## A070377.P2889437785174592265

`(5^n)%27`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070377

/-- `(5^n)%27` -/
def P2889437785174592265.Spec : Prop :=
  ∀ n, (P2889437785174592265.a n : ℤ) = A070377 n

theorem P2889437785174592265.correct : P2889437785174592265.Spec := by
  intro n
  simp only [A070377]

end A070377

/-!
# A070378: a(n) = 5^n mod 28.

The programs for A070378, the canonical program `A070378.P15303322350453906289` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070378 has offset 0).

The definition of A070378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%28` (program `A070378.P15303322350453906289`, by `A070378.P15303322350453906289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070378.P17180915267969712896

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=13, a(4)=9, a(5)=17`
-/

namespace A070378.P17180915267969712896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 13, 9, 17] fun n a =>
  a (n - 6)

end

end A070378.P17180915267969712896

namespace A070378

/-- `a(n-6)` -/
def P17180915267969712896.Spec : Prop :=
  ∀ n, (P17180915267969712896.a n : ℤ) = A070378 n

end A070378

/-! ## A070378.P15303322350453906289

`(5^n)%28`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070378

/-- `(5^n)%28` -/
def P15303322350453906289.Spec : Prop :=
  ∀ n, (P15303322350453906289.a n : ℤ) = A070378 n

theorem P15303322350453906289.correct : P15303322350453906289.Spec := by
  intro n
  simp only [A070378]

end A070378

/-!
# A070379: a(n) = 5^n mod 29.

The programs for A070379, the canonical program `A070379.P18376914400566188419` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070379 has offset 0).

The definition of A070379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%29` (program `A070379.P18376914400566188419`, by `A070379.P18376914400566188419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070379.P3046261442480544518

`a(n-1)-a(n-7)+a(n-8)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=9, a(4)=16, a(5)=22, a(6)=23, a(7)=28`
-/

namespace A070379.P3046261442480544518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25, 9, 16, 22, 23, 28] fun n a =>
  a (n - 1) - a (n - 7) + a (n - 8)

end

end A070379.P3046261442480544518

namespace A070379

/-- `a(n-1)-a(n-7)+a(n-8)` -/
def P3046261442480544518.Spec : Prop :=
  ∀ n, P3046261442480544518.a n = A070379 n

end A070379

/-! ## A070379.P18376914400566188419

`(5^n)%29`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070379

/-- `(5^n)%29` -/
def P18376914400566188419.Spec : Prop :=
  ∀ n, (P18376914400566188419.a n : ℤ) = A070379 n

theorem P18376914400566188419.correct : P18376914400566188419.Spec := by
  intro n
  simp only [A070379]

end A070379

/-!
# A070380: a(n) = 5^n mod 32.

The programs for A070380, the canonical program `A070380.P14337282198277566357` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070380 has offset 0).

The definition of A070380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%32` (program `A070380.P14337282198277566357`, by `A070380.P14337282198277566357.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070380.P17946258730387679434

`a(n-8)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=29, a(4)=17, a(5)=21, a(6)=9, a(7)=13`
-/

namespace A070380.P17946258730387679434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 29, 17, 21, 9, 13] fun n a =>
  a (n - 8)

end

end A070380.P17946258730387679434

namespace A070380

/-- `a(n-8)` -/
def P17946258730387679434.Spec : Prop :=
  ∀ n, (P17946258730387679434.a n : ℤ) = A070380 n

end A070380

/-! ## A070380.P14337282198277566357

`(5^n)%32`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070380

/-- `(5^n)%32` -/
def P14337282198277566357.Spec : Prop :=
  ∀ n, (P14337282198277566357.a n : ℤ) = A070380 n

theorem P14337282198277566357.correct : P14337282198277566357.Spec := by
  intro n
  simp only [A070380]

end A070380

/-!
# A070381: a(n) = 5^n mod 33.

The programs for A070381, the canonical program `A070381.P13820458889444554759` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070381 has offset 0).

The definition of A070381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%33` (program `A070381.P13820458889444554759`, by `A070381.P13820458889444554759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070381.P11877611234201629956

`a(n-10)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=26, a(4)=31, a(5)=23, a(6)=16, a(7)=14, a(8)=4, a(9)=20`
-/

namespace A070381.P11877611234201629956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 26, 31, 23, 16, 14, 4, 20] fun n a =>
  a (n - 10)

end

end A070381.P11877611234201629956

namespace A070381

/-- `a(n-10)` -/
def P11877611234201629956.Spec : Prop :=
  ∀ n, (P11877611234201629956.a n : ℤ) = A070381 n

end A070381

/-! ## A070381.P13820458889444554759

`(5^n)%33`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070381

/-- `(5^n)%33` -/
def P13820458889444554759.Spec : Prop :=
  ∀ n, (P13820458889444554759.a n : ℤ) = A070381 n

theorem P13820458889444554759.correct : P13820458889444554759.Spec := by
  intro n
  simp only [A070381]

end A070381

/-!
# A070382: a(n) = 5^n mod 34.

The programs for A070382, the canonical program `A070382.P10579292941191569254` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070382 has offset 0).

The definition of A070382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%34` (program `A070382.P10579292941191569254`, by `A070382.P10579292941191569254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070382.P11281774103465972926

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=23, a(4)=13, a(5)=31, a(6)=19, a(7)=27, a(8)=33`
-/

namespace A070382.P11281774103465972926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25, 23, 13, 31, 19, 27, 33] fun n a =>
  a (n - 1) - a (n - 8) + a (n - 9)

end

end A070382.P11281774103465972926

namespace A070382

/-- `a(n-1)-a(n-8)+a(n-9)` -/
def P11281774103465972926.Spec : Prop :=
  ∀ n, P11281774103465972926.a n = A070382 n

end A070382

/-! ## A070382.P10579292941191569254

`(5^n)%34`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070382

/-- `(5^n)%34` -/
def P10579292941191569254.Spec : Prop :=
  ∀ n, (P10579292941191569254.a n : ℤ) = A070382 n

theorem P10579292941191569254.correct : P10579292941191569254.Spec := by
  intro n
  simp only [A070382]

end A070382

/-!
# A070383: a(n) = 5^n mod 36.

The programs for A070383, the canonical program `A070383.P17635988162160580765` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070383 has offset 0).

The definition of A070383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%36` (program `A070383.P17635988162160580765`, by `A070383.P17635988162160580765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070383.P17380556802680787469

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=17, a(4)=13, a(5)=29`
-/

namespace A070383.P17380556802680787469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 17, 13, 29] fun n a =>
  a (n - 6)

end

end A070383.P17380556802680787469

namespace A070383

/-- `a(n-6)` -/
def P17380556802680787469.Spec : Prop :=
  ∀ n, (P17380556802680787469.a n : ℤ) = A070383 n

end A070383

/-! ## A070383.P17635988162160580765

`(5^n)%36`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070383

/-- `(5^n)%36` -/
def P17635988162160580765.Spec : Prop :=
  ∀ n, (P17635988162160580765.a n : ℤ) = A070383 n

theorem P17635988162160580765.correct : P17635988162160580765.Spec := by
  intro n
  simp only [A070383]

end A070383

/-!
# A070384: a(n) = 5^n mod 37.

The programs for A070384, the canonical program `A070384.P17834523968318722212` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070384 has offset 0).

The definition of A070384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%37` (program `A070384.P17834523968318722212`, by `A070384.P17834523968318722212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070384.P17834523968318722212

`(5^n)%37`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070384

/-- `(5^n)%37` -/
def P17834523968318722212.Spec : Prop :=
  ∀ n, (P17834523968318722212.a n : ℤ) = A070384 n

theorem P17834523968318722212.correct : P17834523968318722212.Spec := by
  intro n
  simp only [A070384]

end A070384

/-!
# A070385: a(n) = 5^n mod 38.

The programs for A070385, the canonical program `A070385.P11719309270639326152` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070385 has offset 0).

The definition of A070385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%38` (program `A070385.P11719309270639326152`, by `A070385.P11719309270639326152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070385.P17650287535849309407

`a(n-9)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=11, a(4)=17, a(5)=9, a(6)=7, a(7)=35, a(8)=23`
-/

namespace A070385.P17650287535849309407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 11, 17, 9, 7, 35, 23] fun n a =>
  a (n - 9)

end

end A070385.P17650287535849309407

namespace A070385

/-- `a(n-9)` -/
def P17650287535849309407.Spec : Prop :=
  ∀ n, (P17650287535849309407.a n : ℤ) = A070385 n

end A070385

/-! ## A070385.P11719309270639326152

`(5^n)%38`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070385

/-- `(5^n)%38` -/
def P11719309270639326152.Spec : Prop :=
  ∀ n, (P11719309270639326152.a n : ℤ) = A070385 n

theorem P11719309270639326152.correct : P11719309270639326152.Spec := by
  intro n
  simp only [A070385]

end A070385

/-!
# A070386: a(n) = 5^n mod 39.

The programs for A070386, the canonical program `A070386.P8335558817222177873` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070386 has offset 0).

The definition of A070386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%39` (program `A070386.P8335558817222177873`, by `A070386.P8335558817222177873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070386.P6823547712121913766

`a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=8`
-/

namespace A070386.P6823547712121913766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 8] fun n a =>
  a (n - 4)

end

end A070386.P6823547712121913766

namespace A070386

/-- `a(n-4)` -/
def P6823547712121913766.Spec : Prop :=
  ∀ n, (P6823547712121913766.a n : ℤ) = A070386 n

end A070386

/-! ## A070386.P8335558817222177873

`(5^n)%39`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070386

/-- `(5^n)%39` -/
def P8335558817222177873.Spec : Prop :=
  ∀ n, (P8335558817222177873.a n : ℤ) = A070386 n

theorem P8335558817222177873.correct : P8335558817222177873.Spec := by
  intro n
  simp only [A070386]

end A070386

/-!
# A070387: a(n) = 5^n mod 41.

The programs for A070387, the canonical program `A070387.P2365071597986917626` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070387 has offset 0).

The definition of A070387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%41` (program `A070387.P2365071597986917626`, by `A070387.P2365071597986917626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070387.P2365071597986917626

`(5^n)%41`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070387

/-- `(5^n)%41` -/
def P2365071597986917626.Spec : Prop :=
  ∀ n, (P2365071597986917626.a n : ℤ) = A070387 n

theorem P2365071597986917626.correct : P2365071597986917626.Spec := by
  intro n
  simp only [A070387]

end A070387

/-!
# A070388: a(n) = 5^n mod 42.

The programs for A070388, the canonical program `A070388.P12292082769854541195` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070388 has offset 0).

The definition of A070388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%42` (program `A070388.P12292082769854541195`, by `A070388.P12292082769854541195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070388.P12141502998398056528

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=41, a(4)=37, a(5)=17`
-/

namespace A070388.P12141502998398056528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 41, 37, 17] fun n a =>
  a (n - 6)

end

end A070388.P12141502998398056528

namespace A070388

/-- `a(n-6)` -/
def P12141502998398056528.Spec : Prop :=
  ∀ n, (P12141502998398056528.a n : ℤ) = A070388 n

end A070388

/-! ## A070388.P12292082769854541195

`(5^n)%42`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070388

/-- `(5^n)%42` -/
def P12292082769854541195.Spec : Prop :=
  ∀ n, (P12292082769854541195.a n : ℤ) = A070388 n

theorem P12292082769854541195.correct : P12292082769854541195.Spec := by
  intro n
  simp only [A070388]

end A070388

/-!
# A070389: a(n) = 5^n mod 43.

The programs for A070389, the canonical program `A070389.P6092930889088542570` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070389 has offset 0).

The definition of A070389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%43` (program `A070389.P6092930889088542570`, by `A070389.P6092930889088542570.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070389.P6092930889088542570

`(5^n)%43`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070389

/-- `(5^n)%43` -/
def P6092930889088542570.Spec : Prop :=
  ∀ n, (P6092930889088542570.a n : ℤ) = A070389 n

theorem P6092930889088542570.correct : P6092930889088542570.Spec := by
  intro n
  simp only [A070389]

end A070389

/-!
# A070390: a(n) = 5^n mod 44.

The programs for A070390, the canonical program `A070390.P12092994190264502671` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070390 has offset 0).

The definition of A070390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%44` (program `A070390.P12092994190264502671`, by `A070390.P12092994190264502671.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070390.P4031011956997315020

`a(n-5)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=37, a(4)=9`
-/

namespace A070390.P4031011956997315020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 37, 9] fun n a =>
  a (n - 5)

end

end A070390.P4031011956997315020

namespace A070390

/-- `a(n-5)` -/
def P4031011956997315020.Spec : Prop :=
  ∀ n, (P4031011956997315020.a n : ℤ) = A070390 n

end A070390

/-! ## A070390.P12092994190264502671

`(5^n)%44`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070390

/-- `(5^n)%44` -/
def P12092994190264502671.Spec : Prop :=
  ∀ n, (P12092994190264502671.a n : ℤ) = A070390 n

theorem P12092994190264502671.correct : P12092994190264502671.Spec := by
  intro n
  simp only [A070390]

end A070390

/-!
# A070391: a(n) = 5^n mod 46.

The programs for A070391, the canonical program `A070391.P10600292618136495805` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070391 has offset 0).

The definition of A070391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%46` (program `A070391.P10600292618136495805`, by `A070391.P10600292618136495805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070391.P10600292618136495805

`(5^n)%46`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070391

/-- `(5^n)%46` -/
def P10600292618136495805.Spec : Prop :=
  ∀ n, (P10600292618136495805.a n : ℤ) = A070391 n

theorem P10600292618136495805.correct : P10600292618136495805.Spec := by
  intro n
  simp only [A070391]

end A070391

/-!
# A070392: a(n) = 6^n mod 11.

The programs for A070392, the canonical program `A070392.P15797297285021607186` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070392 has offset 0).

The definition of A070392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%11` (program `A070392.P15797297285021607186`, by `A070392.P15797297285021607186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070392.P15785062589287769959

`a(n-10)` with `a(0)=1, a(1)=6, a(2)=3, a(3)=7, a(4)=9, a(5)=10, a(6)=5, a(7)=8, a(8)=4, a(9)=2`
-/

namespace A070392.P15785062589287769959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 3, 7, 9, 10, 5, 8, 4, 2] fun n a =>
  a (n - 10)

end

end A070392.P15785062589287769959

namespace A070392

/-- `a(n-10)` -/
def P15785062589287769959.Spec : Prop :=
  ∀ n, (P15785062589287769959.a n : ℤ) = A070392 n

end A070392

/-! ## A070392.P15797297285021607186

`(6^n)%11`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070392

/-- `(6^n)%11` -/
def P15797297285021607186.Spec : Prop :=
  ∀ n, (P15797297285021607186.a n : ℤ) = A070392 n

theorem P15797297285021607186.correct : P15797297285021607186.Spec := by
  intro n
  simp only [A070392]

end A070392

/-!
# A070393: a(n) = 6^n mod 13.

The programs for A070393, the canonical program `A070393.P4387105309807571051` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070393 has offset 0).

The definition of A070393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%13` (program `A070393.P4387105309807571051`, by `A070393.P4387105309807571051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070393.P4998169526265859260

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=6, a(2)=10, a(3)=8, a(4)=9, a(5)=2, a(6)=12`
-/

namespace A070393.P4998169526265859260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 10, 8, 9, 2, 12] fun n a =>
  a (n - 1) - a (n - 6) + a (n - 7)

end

end A070393.P4998169526265859260

namespace A070393

/-- `a(n-1)-a(n-6)+a(n-7)` -/
def P4998169526265859260.Spec : Prop :=
  ∀ n, P4998169526265859260.a n = A070393 n

end A070393

/-! ## A070393.P4387105309807571051

`(6^n)%13`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070393

/-- `(6^n)%13` -/
def P4387105309807571051.Spec : Prop :=
  ∀ n, (P4387105309807571051.a n : ℤ) = A070393 n

theorem P4387105309807571051.correct : P4387105309807571051.Spec := by
  intro n
  simp only [A070393]

end A070393

/-!
# A070394: a(n) = 6^n mod 17.

The programs for A070394, the canonical program `A070394.P7562809957197964013` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070394 has offset 0).

The definition of A070394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%17` (program `A070394.P7562809957197964013`, by `A070394.P7562809957197964013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070394.P10203345864848217822

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=6, a(2)=2, a(3)=12, a(4)=4, a(5)=7, a(6)=8, a(7)=14, a(8)=16`
-/

namespace A070394.P10203345864848217822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 2, 12, 4, 7, 8, 14, 16] fun n a =>
  a (n - 1) - a (n - 8) + a (n - 9)

end

end A070394.P10203345864848217822

namespace A070394

/-- `a(n-1)-a(n-8)+a(n-9)` -/
def P10203345864848217822.Spec : Prop :=
  ∀ n, P10203345864848217822.a n = A070394 n

end A070394

/-! ## A070394.P7562809957197964013

`(6^n)%17`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070394

/-- `(6^n)%17` -/
def P7562809957197964013.Spec : Prop :=
  ∀ n, (P7562809957197964013.a n : ℤ) = A070394 n

theorem P7562809957197964013.correct : P7562809957197964013.Spec := by
  intro n
  simp only [A070394]

end A070394

/-!
# A070395: a(n) = 6^n mod 19.

The programs for A070395, the canonical program `A070395.P17780572651947228081` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070395 has offset 0).

The definition of A070395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%19` (program `A070395.P17780572651947228081`, by `A070395.P17780572651947228081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070395.P10333123779390332383

`a(n-9)` with `a(0)=1, a(1)=6, a(2)=17, a(3)=7, a(4)=4, a(5)=5, a(6)=11, a(7)=9, a(8)=16`
-/

namespace A070395.P10333123779390332383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 17, 7, 4, 5, 11, 9, 16] fun n a =>
  a (n - 9)

end

end A070395.P10333123779390332383

namespace A070395

/-- `a(n-9)` -/
def P10333123779390332383.Spec : Prop :=
  ∀ n, (P10333123779390332383.a n : ℤ) = A070395 n

end A070395

/-! ## A070395.P17780572651947228081

`(6^n)%19`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070395

/-- `(6^n)%19` -/
def P17780572651947228081.Spec : Prop :=
  ∀ n, (P17780572651947228081.a n : ℤ) = A070395 n

theorem P17780572651947228081.correct : P17780572651947228081.Spec := by
  intro n
  simp only [A070395]

end A070395

/-!
# A070396: a(n) = 6^n mod 23.

The programs for A070396, the canonical program `A070396.P768667601588972797` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070396 has offset 0).

The definition of A070396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%23` (program `A070396.P768667601588972797`, by `A070396.P768667601588972797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070396.P768667601588972797

`(6^n)%23`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070396

/-- `(6^n)%23` -/
def P768667601588972797.Spec : Prop :=
  ∀ n, (P768667601588972797.a n : ℤ) = A070396 n

theorem P768667601588972797.correct : P768667601588972797.Spec := by
  intro n
  simp only [A070396]

end A070396

/-!
# A070397: a(n) = 6^n mod 25.

The programs for A070397, the canonical program `A070397.P11293939111583422314` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070397 has offset 0).

The definition of A070397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070397.P11293939111583422314

`a(n-5)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=16, a(4)=21`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070397

/-- `a(n-5)` -/
def P11293939111583422314.Spec : Prop :=
  ∀ n, (P11293939111583422314.a n : ℤ) = A070397 n

theorem P11293939111583422314.correct : P11293939111583422314.Spec := by
  intro n
  simp only [A070397]

end A070397

/-!
# A070398: a(n) = 6^n mod 29.

The programs for A070398, the canonical program `A070398.P9712636876251267920` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070398 has offset 0).

The definition of A070398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%29` (program `A070398.P9712636876251267920`, by `A070398.P9712636876251267920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070398.P3633205753836909736

`a(n-1)-a(n-7)+a(n-8)` with `a(0)=1, a(1)=6, a(2)=7, a(3)=13, a(4)=20, a(5)=4, a(6)=24, a(7)=28`
-/

namespace A070398.P3633205753836909736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 7, 13, 20, 4, 24, 28] fun n a =>
  a (n - 1) - a (n - 7) + a (n - 8)

end

end A070398.P3633205753836909736

namespace A070398

/-- `a(n-1)-a(n-7)+a(n-8)` -/
def P3633205753836909736.Spec : Prop :=
  ∀ n, P3633205753836909736.a n = A070398 n

end A070398

/-! ## A070398.P9712636876251267920

`(6^n)%29`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070398

/-- `(6^n)%29` -/
def P9712636876251267920.Spec : Prop :=
  ∀ n, (P9712636876251267920.a n : ℤ) = A070398 n

theorem P9712636876251267920.correct : P9712636876251267920.Spec := by
  intro n
  simp only [A070398]

end A070398

/-!
# A070399: a(n) = 6^n mod 31.

The programs for A070399, the canonical program `A070399.P14101239783663085630` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070399 has offset 0).

The definition of A070399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n)%31` (program `A070399.P14101239783663085630`, by `A070399.P14101239783663085630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070399.P14628561361767883667

`a(n-6)` with `a(0)=1, a(1)=6, a(2)=5, a(3)=30, a(4)=25, a(5)=26`
-/

namespace A070399.P14628561361767883667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 5, 30, 25, 26] fun n a =>
  a (n - 6)

end

end A070399.P14628561361767883667

namespace A070399

/-- `a(n-6)` -/
def P14628561361767883667.Spec : Prop :=
  ∀ n, (P14628561361767883667.a n : ℤ) = A070399 n

end A070399

/-! ## A070399.P14101239783663085630

`(6^n)%31`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070399

/-- `(6^n)%31` -/
def P14101239783663085630.Spec : Prop :=
  ∀ n, (P14101239783663085630.a n : ℤ) = A070399 n

theorem P14101239783663085630.correct : P14101239783663085630.Spec := by
  intro n
  simp only [A070399]

end A070399

