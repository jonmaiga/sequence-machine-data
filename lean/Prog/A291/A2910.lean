import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A291000: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S - S^2 - S^3.

The programs for A291000, the canonical program `A291000.P14784666978163811078` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291000 has offset 0).

The definition of A291000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291000.P14784666978163811078

`4*a(n-1)-4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291000

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)` -/
def P14784666978163811078.Spec : Prop :=
  ∀ n, P14784666978163811078.a n = A291000 n

theorem P14784666978163811078.correct : P14784666978163811078.Spec := by
  intro n
  simp only [A291000]

end A291000

/-! ## A291000.P9219716196674452624

`Δ[A117189(n)]`
-/

namespace A291000.P9219716196674452624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291000.P9219716196674452624

namespace A291000

/-- `Δ[A117189(n)]` -/
def P9219716196674452624.Spec : Prop :=
  ∀ n, P9219716196674452624.a n = A291000 n

end A291000

/-! ## A291000.P2730830955863072020

`Δ[A159035(n+1)]`
-/

namespace A291000.P2730830955863072020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291000.P2730830955863072020

namespace A291000

/-- `Δ[A159035(n+1)]` -/
def P2730830955863072020.Spec : Prop :=
  ∀ n, P2730830955863072020.a n = A291000 n

end A291000

/-! ## A291000.P10231855582593121551

`round(∑[A115390(n+2)/2])`
-/

namespace A291000.P10231855582593121551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115390 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291000.P10231855582593121551

namespace A291000

/-- `round(∑[A115390(n+2)/2])` -/
def P10231855582593121551.Spec : Prop :=
  ∀ n, P10231855582593121551.a n = A291000 n

end A291000

/-! ## A291000.P3094261083643936164

`A073357(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A291000.P3094261083643936164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073357 n + 2 * a (n - 1)

end

end A291000.P3094261083643936164

namespace A291000

/-- `A073357(n)+2*a(n-1)` -/
def P3094261083643936164.Spec : Prop :=
  ∀ n, P3094261083643936164.a n = A291000 n

end A291000

/-! ## A291000.P903880842190693886

`A117189(n)+∑[A073357(n)]`
-/

namespace A291000.P903880842190693886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291000.P903880842190693886

namespace A291000

/-- `A117189(n)+∑[A073357(n)]` -/
def P903880842190693886.Spec : Prop :=
  ∀ n, P903880842190693886.a n = A291000 n

end A291000

/-! ## A291000.P17211367660607313891

`A115390(n)+∑[A117189(n)]`
-/

namespace A291000.P17211367660607313891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291000.P17211367660607313891

namespace A291000

/-- `A115390(n)+∑[A117189(n)]` -/
def P17211367660607313891.Spec : Prop :=
  ∀ n, P17211367660607313891.a n = A291000 n

end A291000

/-! ## A291000.P4447243343351837353

`A078484(n+1)+A073357(n)`
-/

namespace A291000.P4447243343351837353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (n + 1) + A073357 n

end

end A291000.P4447243343351837353

namespace A291000

/-- `A078484(n+1)+A073357(n)` -/
def P4447243343351837353.Spec : Prop :=
  ∀ n, P4447243343351837353.a n = A291000 n

end A291000

/-! ## A291000.P1864406006625516840

`A115390(n)+A073357(n+1)`
-/

namespace A291000.P1864406006625516840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n + A073357 (n + 1)

end

end A291000.P1864406006625516840

namespace A291000

/-- `A115390(n)+A073357(n+1)` -/
def P1864406006625516840.Spec : Prop :=
  ∀ n, P1864406006625516840.a n = A291000 n

end A291000

/-! ## A291000.P345446316449463247

`A117189(n)+A115390(n+1)`
-/

namespace A291000.P345446316449463247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n + A115390 (n + 1)

end

end A291000.P345446316449463247

namespace A291000

/-- `A117189(n)+A115390(n+1)` -/
def P345446316449463247.Spec : Prop :=
  ∀ n, P345446316449463247.a n = A291000 n

end A291000

/-! ## A291000.P9726569130414883723

`A117189(n+1)-A117189(n)`
-/

namespace A291000.P9726569130414883723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 (n + 1) - A117189 n

end

end A291000.P9726569130414883723

namespace A291000

/-- `A117189(n+1)-A117189(n)` -/
def P9726569130414883723.Spec : Prop :=
  ∀ n, P9726569130414883723.a n = A291000 n

end A291000

/-! ## A291000.P6920907414317896120

`∑[A159035(n)+∑[A073357(n)]]`
-/

namespace A291000.P6920907414317896120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291000.P6920907414317896120

namespace A291000

/-- `∑[A159035(n)+∑[A073357(n)]]` -/
def P6920907414317896120.Spec : Prop :=
  ∀ n, P6920907414317896120.a n = A291000 n

end A291000

/-! ## A291000.P7333037592700188132

`Δ[A073357(n)]+Δ[A103685(n)]`
-/

namespace A291000.P7333037592700188132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A291000.P7333037592700188132

namespace A291000

/-- `Δ[A073357(n)]+Δ[A103685(n)]` -/
def P7333037592700188132.Spec : Prop :=
  ∀ n, P7333037592700188132.a n = A291000 n

end A291000

/-! ## A291000.P13867125921593906165

`∑[A073357(n+1)]-A073357(n)`
-/

namespace A291000.P13867125921593906165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073357 n

end

end A291000.P13867125921593906165

namespace A291000

/-- `∑[A073357(n+1)]-A073357(n)` -/
def P13867125921593906165.Spec : Prop :=
  ∀ n, P13867125921593906165.a n = A291000 n

end A291000

/-! ## A291000.P17213458358899576899

`A115390(n)+Δ[A115390(n+1)]`
-/

namespace A291000.P17213458358899576899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n + (f1 (n + 1) - f1 n)

end

end A291000.P17213458358899576899

namespace A291000

/-- `A115390(n)+Δ[A115390(n+1)]` -/
def P17213458358899576899.Spec : Prop :=
  ∀ n, P17213458358899576899.a n = A291000 n

end A291000

/-! ## A291000.P4879057495103698338

`A159035(n+1)+A115390(n+1)`
-/

namespace A291000.P4879057495103698338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 1) + A115390 (n + 1)

end

end A291000.P4879057495103698338

namespace A291000

/-- `A159035(n+1)+A115390(n+1)` -/
def P4879057495103698338.Spec : Prop :=
  ∀ n, P4879057495103698338.a n = A291000 n

end A291000

/-! ## A291000.P11364597425487356875

`A159036(n+1)-A115390(n+1)`
-/

namespace A291000.P11364597425487356875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159036 (n + 1) - A115390 (n + 1)

end

end A291000.P11364597425487356875

namespace A291000

/-- `A159036(n+1)-A115390(n+1)` -/
def P11364597425487356875.Spec : Prop :=
  ∀ n, P11364597425487356875.a n = A291000 n

end A291000

/-! ## A291000.P14762049943016451207

`A159035(n+2)-A159035(n+1)`
-/

namespace A291000.P14762049943016451207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 2) - A159035 (n + 1)

end

end A291000.P14762049943016451207

namespace A291000

/-- `A159035(n+2)-A159035(n+1)` -/
def P14762049943016451207.Spec : Prop :=
  ∀ n, P14762049943016451207.a n = A291000 n

end A291000

/-! ## A291000.P1780010182965599727

`A115390(n+1)+A099216(n+1)/2`
-/

namespace A291000.P1780010182965599727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115390 (n + 1) : ℚ) + (A099216 (n + 1) : ℚ) / 2

end

end A291000.P1780010182965599727

namespace A291000

/-- `A115390(n+1)+A099216(n+1)/2` -/
def P1780010182965599727.Spec : Prop :=
  ∀ n, P1780010182965599727.a n = (A291000 n : ℚ)

end A291000

/-!
# A291001: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - 8*S^2.

The programs for A291001, the canonical program `A291001.P12423246221525699689` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291001 has offset 0).

The definition of A291001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291001.P12423246221525699689

`2*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291001

/-- `2*a(n-1)+7*a(n-2)` -/
def P12423246221525699689.Spec : Prop :=
  ∀ n, (P12423246221525699689.a n : ℤ) = A291001 n

theorem P12423246221525699689.correct : P12423246221525699689.Spec := by
  intro n
  simp only [A291001]

end A291001

/-! ## A291001.P7655573756538659711

`8*A015519(n)`
-/

namespace A291001.P7655573756538659711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A015519 n

end

end A291001.P7655573756538659711

namespace A291001

/-- `8*A015519(n)` -/
def P7655573756538659711.Spec : Prop :=
  ∀ n, P7655573756538659711.a n = A291001 n

end A291001

/-! ## A291001.P2696543220821547384

`((1+2*sqrt(2))^n-(1-2*sqrt(2))^n)*sqrt(2)`
-/

namespace A291001.P2696543220821547384
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (2 : ℝ)) ^ n - (1 - 2 * Real.sqrt (2 : ℝ)) ^ n) * Real.sqrt (2 : ℝ)

end

end A291001.P2696543220821547384

namespace A291001

/-- `((1+2*sqrt(2))^n-(1-2*sqrt(2))^n)*sqrt(2)` -/
def P2696543220821547384.Spec : Prop :=
  ∀ n, P2696543220821547384.a n = (A291001 n : ℝ)

end A291001

/-! ## A291001.P17391113157760287244

`Δ[A084058(n)]`
-/

namespace A291001.P17391113157760287244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291001.P17391113157760287244

namespace A291001

/-- `Δ[A084058(n)]` -/
def P17391113157760287244.Spec : Prop :=
  ∀ n, P17391113157760287244.a n = A291001 n

end A291001

/-! ## A291001.P3622293501311442301

`Δ[2*A084136(n)]`
-/

namespace A291001.P3622293501311442301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291001.P3622293501311442301

namespace A291001

/-- `Δ[2*A084136(n)]` -/
def P3622293501311442301.Spec : Prop :=
  ∀ n, P3622293501311442301.a n = A291001 n

end A291001

/-! ## A291001.P4783069737867044340

`A083100(n)-A084058(n)`
-/

namespace A291001.P4783069737867044340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n - A084058 n

end

end A291001.P4783069737867044340

namespace A291001

/-- `A083100(n)-A084058(n)` -/
def P4783069737867044340.Spec : Prop :=
  ∀ n, P4783069737867044340.a n = A291001 n

end A291001

/-! ## A291001.P9892888106244518485

`A084058(n+1)-A084058(n)`
-/

namespace A291001.P9892888106244518485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (n + 1) - A084058 n

end

end A291001.P9892888106244518485

namespace A291001

/-- `A084058(n+1)-A084058(n)` -/
def P9892888106244518485.Spec : Prop :=
  ∀ n, P9892888106244518485.a n = A291001 n

end A291001

/-! ## A291001.P15688563930907828653

`record[A084058(A008611(n))]-A084058(n)`
-/

namespace A291001.P15688563930907828653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A084058 n

end

end A291001.P15688563930907828653

namespace A291001

/-- `record[A084058(A008611(n))]-A084058(n)` -/
def P15688563930907828653.Spec : Prop :=
  ∀ n, P15688563930907828653.a n = A291001 n

end A291001

/-! ## A291001.P5400002610870853459

`record[A084058(A008615(n))]-A084058(n)`
-/

namespace A291001.P5400002610870853459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A084058 n

end

end A291001.P5400002610870853459

namespace A291001

/-- `record[A084058(A008615(n))]-A084058(n)` -/
def P5400002610870853459.Spec : Prop :=
  ∀ n, P5400002610870853459.a n = A291001 n

end A291001

/-! ## A291001.P2717685925731373018

`record[A084058(A008624(n))]-A084058(n)`
-/

namespace A291001.P2717685925731373018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A084058 n

end

end A291001.P2717685925731373018

namespace A291001

/-- `record[A084058(A008624(n))]-A084058(n)` -/
def P2717685925731373018.Spec : Prop :=
  ∀ n, P2717685925731373018.a n = A291001 n

end A291001

/-! ## A291001.P4436938421547614149

`record[A084058(A028242(n))]-A084058(n)`
-/

namespace A291001.P4436938421547614149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A084058 n

end

end A291001.P4436938421547614149

namespace A291001

/-- `record[A084058(A028242(n))]-A084058(n)` -/
def P4436938421547614149.Spec : Prop :=
  ∀ n, P4436938421547614149.a n = A291001 n

end A291001

/-! ## A291001.P14107354071035981225

`record[A084058(A057979(n))]-A084058(n)`
-/

namespace A291001.P14107354071035981225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A084058 n

end

end A291001.P14107354071035981225

namespace A291001

/-- `record[A084058(A057979(n))]-A084058(n)` -/
def P14107354071035981225.Spec : Prop :=
  ∀ n, P14107354071035981225.a n = A291001 n

end A291001

/-! ## A291001.P10342191902318400461

`record[A084058(A058207(n))]-A084058(n)`
-/

namespace A291001.P10342191902318400461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A058207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A084058 n

end

end A291001.P10342191902318400461

namespace A291001

/-- `record[A084058(A058207(n))]-A084058(n)` -/
def P10342191902318400461.Spec : Prop :=
  ∀ n, P10342191902318400461.a n = A291001 n

end A291001

/-! ## A291001.P11404841585612049339

`A083100(n)-A083100(A289207(n+1))`
-/

namespace A291001.P11404841585612049339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n - A083100 (A289207 (n + 1)).toNat

end

end A291001.P11404841585612049339

namespace A291001

/-- `A083100(n)-A083100(A289207(n+1))` -/
def P11404841585612049339.Spec : Prop :=
  ∀ n, P11404841585612049339.a n = A291001 n

end A291001

/-! ## A291001.P7549307610913526259

`A083100(n)-A083100(A004273(n)-n)`
-/

namespace A291001.P7549307610913526259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n - A083100 (A004273 n - (n : ℤ)).toNat

end

end A291001.P7549307610913526259

namespace A291001

/-- `A083100(n)-A083100(A004273(n)-n)` -/
def P7549307610913526259.Spec : Prop :=
  ∀ n, P7549307610913526259.a n = A291001 n

end A291001

/-! ## A291001.P17647639527314148851

`A015519(n)+A083100(n)-A015519(n+1)`
-/

namespace A291001.P17647639527314148851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 n + (A083100 n - A015519 (n + 1))

end

end A291001.P17647639527314148851

namespace A291001

/-- `A015519(n)+A083100(n)-A015519(n+1)` -/
def P17647639527314148851.Spec : Prop :=
  ∀ n, P17647639527314148851.a n = A291001 n

end A291001

/-! ## A291001.P14073882505986401538

`Δ[Δ[A305492(n)/2]]`
-/

namespace A291001.P14073882505986401538
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305492 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291001.P14073882505986401538

namespace A291001

/-- `Δ[Δ[A305492(n)/2]]` -/
def P14073882505986401538.Spec : Prop :=
  ∀ n, P14073882505986401538.a n = (A291001 n : ℚ)

end A291001

/-! ## A291001.P8608680755342972642

`A164602(n)-A083100(n)`
-/

namespace A291001.P8608680755342972642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164602 n - A083100 n

end

end A291001.P8608680755342972642

namespace A291001

/-- `A164602(n)-A083100(n)` -/
def P8608680755342972642.Spec : Prop :=
  ∀ n, P8608680755342972642.a n = A291001 n

end A291001

/-! ## A291001.P6871186280322767084

`A164539(n)-A096980(n)`
-/

namespace A291001.P6871186280322767084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164539 n - A096980 n

end

end A291001.P6871186280322767084

namespace A291001

/-- `A164539(n)-A096980(n)` -/
def P6871186280322767084.Spec : Prop :=
  ∀ n, P6871186280322767084.a n = A291001 n

end A291001

/-!
# A291002: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - S)*(1 - 2*S)*(1 - 3*S).

The programs for A291002, the canonical program `A291002.P27962416022164727` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291002 has offset 0).

The definition of A291002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291002.P10051948677311213017

`(2^n-16*3^n+27*4^n)/2`
-/

namespace A291002.P10051948677311213017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (16 * 3 ^ n : ℤ) + (27 * 4 ^ n : ℤ) : ℚ) / 2

end

end A291002.P10051948677311213017

namespace A291002

/-- `(2^n-16*3^n+27*4^n)/2` -/
def P10051948677311213017.Spec : Prop :=
  ∀ n, P10051948677311213017.a n = (A291002 n : ℚ)

theorem P10051948677311213017.correct : P10051948677311213017.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A291002, Nat.add_sub_cancel, A291002.P10051948677311213017.a, A291002.P27962416022164727.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A291002, Nat.add_sub_cancel, A291002.P10051948677311213017.a, A291002.P27962416022164727.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A291002

/-! ## A291002.P27962416022164727

`9*a(n-1)-26*a(n-2)+24*a(n-3)` with `a(0)=6, a(1)=31, a(2)=146`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291002

/-- `9*a(n-1)-26*a(n-2)+24*a(n-3)` -/
def P27962416022164727.Spec : Prop :=
  ∀ n, P27962416022164727.a n = A291002 n

theorem P27962416022164727.correct : P27962416022164727.Spec := by
  intro n
  simp only [A291002]

end A291002

/-! ## A291002.P18296592782480081444

`2*A291010(n)-A291009(n)`
-/

namespace A291002.P18296592782480081444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291010 n - A291009 n

end

end A291002.P18296592782480081444

namespace A291002

/-- `2*A291010(n)-A291009(n)` -/
def P18296592782480081444.Spec : Prop :=
  ∀ n, P18296592782480081444.a n = A291002 n

end A291002

/-! ## A291002.P1258074000559306689

`Δ[A291010(n)-A291009(n)]`
-/

namespace A291002.P1258074000559306689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291010 n - A291009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291002.P1258074000559306689

namespace A291002

/-- `Δ[A291010(n)-A291009(n)]` -/
def P1258074000559306689.Spec : Prop :=
  ∀ n, P1258074000559306689.a n = A291002 n

end A291002

/-! ## A291002.P18075957448089168436

`Δ[Δ[A007582(n)+A002250(n)]]`
-/

namespace A291002.P18075957448089168436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + A002250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291002.P18075957448089168436

namespace A291002

/-- `Δ[Δ[A007582(n)+A002250(n)]]` -/
def P18075957448089168436.Spec : Prop :=
  ∀ n, P18075957448089168436.a n = A291002 n

end A291002

/-! ## A291002.P12115647871119708838

`Δ[Δ[A137786(n)+A084869(n)]]`
-/

namespace A291002.P12115647871119708838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137786 n + A084869 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291002.P12115647871119708838

namespace A291002

/-- `Δ[Δ[A137786(n)+A084869(n)]]` -/
def P12115647871119708838.Spec : Prop :=
  ∀ n, P12115647871119708838.a n = A291002 n

end A291002

/-! ## A291002.P8747144945643789594

`Δ[Δ[A010036(n)-A027649(n)]]`
-/

namespace A291002.P8747144945643789594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n - A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291002.P8747144945643789594

namespace A291002

/-- `Δ[Δ[A010036(n)-A027649(n)]]` -/
def P8747144945643789594.Spec : Prop :=
  ∀ n, P8747144945643789594.a n = A291002 n

end A291002

/-!
# A291004: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - 3*S)^2.

The programs for A291004, the canonical program `A291004.P7298725518155559341` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291004 has offset 0).

The definition of A291004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291004.P13157139927307826072

`3*4^(n-1)*(3*n+8)`
-/

namespace A291004.P13157139927307826072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (3 * n + 8 : ℚ)

end

end A291004.P13157139927307826072

namespace A291004

/-- `3*4^(n-1)*(3*n+8)` -/
def P13157139927307826072.Spec : Prop :=
  ∀ n, P13157139927307826072.a n = (A291004 n : ℚ)

end A291004

/-! ## A291004.P7298725518155559341

`8*a(n-1)-16*a(n-2)` with `a(0)=6, a(1)=33`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291004

/-- `8*a(n-1)-16*a(n-2)` -/
def P7298725518155559341.Spec : Prop :=
  ∀ n, P7298725518155559341.a n = A291004 n

theorem P7298725518155559341.correct : P7298725518155559341.Spec := by
  intro n
  simp only [A291004]

end A291004

/-! ## A291004.P14975227609749213331

`Δ[A081039(n)]`
-/

namespace A291004.P14975227609749213331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291004.P14975227609749213331

namespace A291004

/-- `Δ[A081039(n)]` -/
def P14975227609749213331.Spec : Prop :=
  ∀ n, P14975227609749213331.a n = A291004 n

end A291004

/-! ## A291004.P1212488834158886631

`Δ[Δ[A002697(n)]]`
-/

namespace A291004.P1212488834158886631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291004.P1212488834158886631

namespace A291004

/-- `Δ[Δ[A002697(n)]]` -/
def P1212488834158886631.Spec : Prop :=
  ∀ n, P1212488834158886631.a n = A291004 n

end A291004

/-! ## A291004.P18195492163087396119

`Δ[A106472(2*n)]`
-/

namespace A291004.P18195492163087396119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291004.P18195492163087396119

namespace A291004

/-- `Δ[A106472(2*n)]` -/
def P18195492163087396119.Spec : Prop :=
  ∀ n, P18195492163087396119.a n = A291004 n

end A291004

/-! ## A291004.P13962349545103729295

`record[Δ[Δ[A081037(n)]]]`
-/

namespace A291004.P13962349545103729295
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291004.P13962349545103729295

namespace A291004

/-- `record[Δ[Δ[A081037(n)]]]` -/
def P13962349545103729295.Spec : Prop :=
  ∀ n, P13962349545103729295.a n = A291004 n

end A291004

/-! ## A291004.P11228599159055392142

`Δ[Δ[A049610(2*n)]]`
-/

namespace A291004.P11228599159055392142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291004.P11228599159055392142

namespace A291004

/-- `Δ[Δ[A049610(2*n)]]` -/
def P11228599159055392142.Spec : Prop :=
  ∀ n, P11228599159055392142.a n = A291004 n

end A291004

/-! ## A291004.P14980365436715130283

`A081039(n+1)-A081039(n)`
-/

namespace A291004.P14980365436715130283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 (n + 1) - A081039 n

end

end A291004.P14980365436715130283

namespace A291004

/-- `A081039(n+1)-A081039(n)` -/
def P14980365436715130283.Spec : Prop :=
  ∀ n, P14980365436715130283.a n = A291004 n

end A291004

/-! ## A291004.P6539666236862449067

`A079028(n)+A045623(2*(n+1))`
-/

namespace A291004.P6539666236862449067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079028 n + A045623 (2 * (n + 1))

end

end A291004.P6539666236862449067

namespace A291004

/-- `A079028(n)+A045623(2*(n+1))` -/
def P6539666236862449067.Spec : Prop :=
  ∀ n, P6539666236862449067.a n = A291004 n

end A291004

/-! ## A291004.P757376422031098667

`A196410(2*n+5)+A079028(n)`
-/

namespace A291004.P757376422031098667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196410 (2 * n + 5) + A079028 n

end

end A291004.P757376422031098667

namespace A291004

/-- `A196410(2*n+5)+A079028(n)` -/
def P757376422031098667.Spec : Prop :=
  ∀ n, P757376422031098667.a n = A291004 n

end A291004

/-! ## A291004.P5312203859000996593

`A111297(2*n)+A045623(2*(n+1))`
-/

namespace A291004.P5312203859000996593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 (2 * n) + A045623 (2 * (n + 1))

end

end A291004.P5312203859000996593

namespace A291004

/-- `A111297(2*n)+A045623(2*(n+1))` -/
def P5312203859000996593.Spec : Prop :=
  ∀ n, P5312203859000996593.a n = A291004 n

end A291004

/-! ## A291004.P17500159954523018075

`A106472(2*(n+1))-A106472(2*n)`
-/

namespace A291004.P17500159954523018075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 (2 * (n + 1)) - A106472 (2 * n)

end

end A291004.P17500159954523018075

namespace A291004

/-- `A106472(2*(n+1))-A106472(2*n)` -/
def P17500159954523018075.Spec : Prop :=
  ∀ n, P17500159954523018075.a n = A291004 n

end A291004

/-! ## A291004.P9066990540915062360

`A164908(n+1)+n*A084431(2*n)`
-/

namespace A291004.P9066990540915062360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164908 (n + 1) + (n : ℤ) * A084431 (2 * n)

end

end A291004.P9066990540915062360

namespace A291004

/-- `A164908(n+1)+n*A084431(2*n)` -/
def P9066990540915062360.Spec : Prop :=
  ∀ n, P9066990540915062360.a n = A291004 n

end A291004

/-! ## A291004.P15961778232145253469

`A084431(2*n+1)+n*A084431(2*n)`
-/

namespace A291004.P15961778232145253469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084431 (2 * n + 1) + (n : ℤ) * A084431 (2 * n)

end

end A291004.P15961778232145253469

namespace A291004

/-- `A084431(2*n+1)+n*A084431(2*n)` -/
def P15961778232145253469.Spec : Prop :=
  ∀ n, P15961778232145253469.a n = A291004 n

end A291004

/-! ## A291004.P13795957205778432609

`A000302(n+1)+A002699(n+1)+A002697(n)`
-/

namespace A291004.P13795957205778432609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) + (A002699 (n + 1) + A002697 n)

end

end A291004.P13795957205778432609

namespace A291004

/-- `A000302(n+1)+A002699(n+1)+A002697(n)` -/
def P13795957205778432609.Spec : Prop :=
  ∀ n, P13795957205778432609.a n = A291004 n

end A291004

/-! ## A291004.P17962029131136829790

`A002697(n+1)+A079028(n+1)+A002697(n)`
-/

namespace A291004.P17962029131136829790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) + (A079028 (n + 1) + A002697 n)

end

end A291004.P17962029131136829790

namespace A291004

/-- `A002697(n+1)+A079028(n+1)+A002697(n)` -/
def P17962029131136829790.Spec : Prop :=
  ∀ n, P17962029131136829790.a n = A291004 n

end A291004

/-! ## A291004.P3987739000017512497

`A002697(n)+A000079(n+1)*A001792(n+1)`
-/

namespace A291004.P3987739000017512497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + A000079 (n + 1) * A001792 (n + 1)

end

end A291004.P3987739000017512497

namespace A291004

/-- `A002697(n)+A000079(n+1)*A001792(n+1)` -/
def P3987739000017512497.Spec : Prop :=
  ∀ n, P3987739000017512497.a n = A291004 n

end A291004

/-! ## A291004.P12070090677270462806

`A049610(2*n)+A000079(n+1)*A001792(n+1)`
-/

namespace A291004.P12070090677270462806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n) + A000079 (n + 1) * A001792 (n + 1)

end

end A291004.P12070090677270462806

namespace A291004

/-- `A049610(2*n)+A000079(n+1)*A001792(n+1)` -/
def P12070090677270462806.Spec : Prop :=
  ∀ n, P12070090677270462806.a n = A291004 n

end A291004

/-! ## A291004.P2016297513557589697

`A106472(2*n+1)+A111297(2*n+1)+A111297(2*n)`
-/

namespace A291004.P2016297513557589697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 (2 * n + 1) + (A111297 (2 * n + 1) + A111297 (2 * n))

end

end A291004.P2016297513557589697

namespace A291004

/-- `A106472(2*n+1)+A111297(2*n+1)+A111297(2*n)` -/
def P2016297513557589697.Spec : Prop :=
  ∀ n, P2016297513557589697.a n = A291004 n

end A291004

/-!
# A291005: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - 2 S - 2 S^3.

The programs for A291005, the canonical program `A291005.P4959854911988077132` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291005 has offset 0).

The definition of A291005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291005.P4959854911988077132

`5*a(n-1)-7*a(n-2)+5*a(n-3)` with `a(0)=2, a(1)=6, a(2)=20`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291005

/-- `5*a(n-1)-7*a(n-2)+5*a(n-3)` -/
def P4959854911988077132.Spec : Prop :=
  ∀ n, P4959854911988077132.a n = A291005 n

theorem P4959854911988077132.correct : P4959854911988077132.Spec := by
  intro n
  simp only [A291005]

end A291005

/-! ## A291005.P18362850718539901829

`2*A291337(n)`
-/

namespace A291005.P18362850718539901829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291337 n

end

end A291005.P18362850718539901829

namespace A291005

/-- `2*A291337(n)` -/
def P18362850718539901829.Spec : Prop :=
  ∀ n, P18362850718539901829.a n = A291005 n

end A291005

/-! ## A291005.P4422003795546593710

`A291337(A005843(n)/2)+A291337(n)`
-/

namespace A291005.P4422003795546593710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291337 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A291337 n

end

end A291005.P4422003795546593710

namespace A291005

/-- `A291337(A005843(n)/2)+A291337(n)` -/
def P4422003795546593710.Spec : Prop :=
  ∀ n, P4422003795546593710.a n = A291005 n

end A291005

/-! ## A291005.P8248524243384990005

`A291337(A005843(n)-n)+A291337(n)`
-/

namespace A291005.P8248524243384990005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291337 (A005843 n - (n : ℤ)).toNat + A291337 n

end

end A291005.P8248524243384990005

namespace A291005

/-- `A291337(A005843(n)-n)+A291337(n)` -/
def P8248524243384990005.Spec : Prop :=
  ∀ n, P8248524243384990005.a n = A291005 n

end A291005

/-! ## A291005.P4787346172645281514

`A291337(n)+A291337(n%A291337(n))`
-/

namespace A291005.P4787346172645281514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291337 n + A291337 (Int.tmod (n : ℤ) (A291337 n)).toNat

end

end A291005.P4787346172645281514

namespace A291005

/-- `A291337(n)+A291337(n%A291337(n))` -/
def P4787346172645281514.Spec : Prop :=
  ∀ n, P4787346172645281514.a n = A291005 n

end A291005

/-! ## A291005.P14659425746376266758

`A291337(A028242(n+1+n))+A291337(n)`
-/

namespace A291005.P14659425746376266758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291337 (A028242 (n + 1 + n)).toNat + A291337 n

end

end A291005.P14659425746376266758

namespace A291005

/-- `A291337(A028242(n+1+n))+A291337(n)` -/
def P14659425746376266758.Spec : Prop :=
  ∀ n, P14659425746376266758.a n = A291005 n

end A291005

/-!
# A291006: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S - S^2 - S^3 - S^4.

The programs for A291006, the canonical program `A291006.P17147191136590067301` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291006 has offset 0).

The definition of A291006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291006.P17147191136590067301

`5*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291006

/-- `5*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` -/
def P17147191136590067301.Spec : Prop :=
  ∀ n, P17147191136590067301.a n = A291006 n

theorem P17147191136590067301.correct : P17147191136590067301.Spec := by
  intro n
  simp only [A291006]

end A291006

/-! ## A291006.P12138340265869359510

`Δ[A116849(n+1)]`
-/

namespace A291006.P12138340265869359510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291006.P12138340265869359510

namespace A291006

/-- `Δ[A116849(n+1)]` -/
def P12138340265869359510.Spec : Prop :=
  ∀ n, P12138340265869359510.a n = A291006 n

end A291006

/-! ## A291006.P5146304372753322949

`abs(Δ[A116849(Δ[n²]-n)])`
-/

namespace A291006.P5146304372753322949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116849 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A291006.P5146304372753322949

namespace A291006

/-- `abs(Δ[A116849(Δ[n²]-n)])` -/
def P5146304372753322949.Spec : Prop :=
  ∀ n, P5146304372753322949.a n = A291006 n

end A291006

/-! ## A291006.P4751358164734122973

`record[Δ[A116849(A080513(n))]]`
-/

namespace A291006.P4751358164734122973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116849 (A080513 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291006.P4751358164734122973

namespace A291006

/-- `record[Δ[A116849(A080513(n))]]` -/
def P4751358164734122973.Spec : Prop :=
  ∀ n, P4751358164734122973.a n = A291006 n

end A291006

/-! ## A291006.P16132732905589835824

`Δ[record[A116849(A133310(n))]]`
-/

namespace A291006.P16132732905589835824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116849 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291006.P16132732905589835824

namespace A291006

/-- `Δ[record[A116849(A133310(n))]]` -/
def P16132732905589835824.Spec : Prop :=
  ∀ n, P16132732905589835824.a n = A291006 n

end A291006

/-! ## A291006.P2975916814207441598

`Δ[record[A116849(A324346(n))]]`
-/

namespace A291006.P2975916814207441598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116849 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291006.P2975916814207441598

namespace A291006

/-- `Δ[record[A116849(A324346(n))]]` -/
def P2975916814207441598.Spec : Prop :=
  ∀ n, P2975916814207441598.a n = A291006 n

end A291006

/-! ## A291006.P4491872568493682005

`A116849(n+2)-A116849(n+1)`
-/

namespace A291006.P4491872568493682005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116849 (n + 2) - A116849 (n + 1)

end

end A291006.P4491872568493682005

namespace A291006

/-- `A116849(n+2)-A116849(n+1)` -/
def P4491872568493682005.Spec : Prop :=
  ∀ n, P4491872568493682005.a n = A291006 n

end A291006

/-! ## A291006.P14454617184532258460

`A116521(n+1)+Δ[Δ[A116521(n+1)]]`
-/

namespace A291006.P14454617184532258460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116521 (n + 1) + (f1 (n + 1) - f1 n)

end

end A291006.P14454617184532258460

namespace A291006

/-- `A116521(n+1)+Δ[Δ[A116521(n+1)]]` -/
def P14454617184532258460.Spec : Prop :=
  ∀ n, P14454617184532258460.a n = A291006 n

end A291006

/-!
# A291007: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S - S^2 - S^3 - S^4 - S^5.

The programs for A291007, the canonical program `A291007.P5399529401031764487` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291007 has offset 0).

The definition of A291007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291007.P5399529401031764487

`6*a(n-1)-13*a(n-2)+14*a(n-3)-7*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=81`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291007

/-- `6*a(n-1)-13*a(n-2)+14*a(n-3)-7*a(n-4)+2*a(n-5)` -/
def P5399529401031764487.Spec : Prop :=
  ∀ n, P5399529401031764487.a n = A291007 n

theorem P5399529401031764487.correct : P5399529401031764487.Spec := by
  intro n
  simp only [A291007]

end A291007

/-! ## A291007.P4735580003093636362

`A116849(n+1)+A023443(A007051(n))`
-/

namespace A291007.P4735580003093636362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116849 (n + 1) + A023443 (A007051 n).toNat

end

end A291007.P4735580003093636362

namespace A291007

/-- `A116849(n+1)+A023443(A007051(n))` -/
def P4735580003093636362.Spec : Prop :=
  ∀ n, P4735580003093636362.a n = A291007 n

end A291007

/-! ## A291007.P10134798913785397419

`A004277(A291006(n))-A291020(n)`
-/

namespace A291007.P10134798913785397419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A291006 n).toNat - A291020 n

end

end A291007.P10134798913785397419

namespace A291007

/-- `A004277(A291006(n))-A291020(n)` -/
def P10134798913785397419.Spec : Prop :=
  ∀ n, P10134798913785397419.a n = A291007 n

end A291007

/-! ## A291007.P13068680090946669261

`∑[A023443(A159035(n)+A007051(n))]`
-/

namespace A291007.P13068680090946669261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A159035 n + A007051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291007.P13068680090946669261

namespace A291007

/-- `∑[A023443(A159035(n)+A007051(n))]` -/
def P13068680090946669261.Spec : Prop :=
  ∀ n, P13068680090946669261.a n = A291007 n

end A291007

/-! ## A291007.P7006075142081003529

`A116849(n+1)+A004526(A000244(n))`
-/

namespace A291007.P7006075142081003529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116849 (n + 1) + A004526 (A000244 n).toNat

end

end A291007.P7006075142081003529

namespace A291007

/-- `A116849(n+1)+A004526(A000244(n))` -/
def P7006075142081003529.Spec : Prop :=
  ∀ n, P7006075142081003529.a n = A291007 n

end A291007

/-!
# A291008: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - 7*S^2.

The programs for A291008, the canonical program `A291008.P7461162230511242945` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291008 has offset 0).

The definition of A291008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291008.P7461162230511242945

`2*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291008

/-- `2*a(n-1)+6*a(n-2)` -/
def P7461162230511242945.Spec : Prop :=
  ∀ n, (P7461162230511242945.a n : ℤ) = A291008 n

theorem P7461162230511242945.correct : P7461162230511242945.Spec := by
  intro n
  simp only [A291008]

end A291008

/-! ## A291008.P12451050401795046876

`7*A083099(n)`
-/

namespace A291008.P12451050401795046876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A083099 n

end

end A291008.P12451050401795046876

namespace A291008

/-- `7*A083099(n)` -/
def P12451050401795046876.Spec : Prop :=
  ∀ n, P12451050401795046876.a n = A291008 n

end A291008

/-! ## A291008.P1961700806428104093

`sqrt(7)*((1+sqrt(7))^n-(1-sqrt(7))^n)/2`
-/

namespace A291008.P1961700806428104093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (7 : ℝ) * ((1 + Real.sqrt (7 : ℝ)) ^ n - (1 - Real.sqrt (7 : ℝ)) ^ n) / 2

end

end A291008.P1961700806428104093

namespace A291008

/-- `sqrt(7)*((1+sqrt(7))^n-(1-sqrt(7))^n)/2` -/
def P1961700806428104093.Spec : Prop :=
  ∀ n, P1961700806428104093.a n = (A291008 n : ℝ)

end A291008

/-! ## A291008.P9371480398726225603

`Δ[2*(4*a(n-2)-(a(n-2)-a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A291008.P9371480398726225603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (4 * f1 (n - 2) - (f1 (n - 2) - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291008.P9371480398726225603

namespace A291008

/-- `Δ[2*(4*a(n-2)-(a(n-2)-a(n-1)))]` -/
def P9371480398726225603.Spec : Prop :=
  ∀ n, P9371480398726225603.a n = A291008 n

end A291008

/-! ## A291008.P11553985741586966084

`Δ[A083098(n)]`
-/

namespace A291008.P11553985741586966084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291008.P11553985741586966084

namespace A291008

/-- `Δ[A083098(n)]` -/
def P11553985741586966084.Spec : Prop :=
  ∀ n, P11553985741586966084.a n = A291008 n

end A291008

/-! ## A291008.P1814009134839410036

`Δ[A127226(n)/2]`
-/

namespace A291008.P1814009134839410036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127226 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291008.P1814009134839410036

namespace A291008

/-- `Δ[A127226(n)/2]` -/
def P1814009134839410036.Spec : Prop :=
  ∀ n, P1814009134839410036.a n = (A291008 n : ℚ)

end A291008

/-! ## A291008.P16241296736367829894

`7/2*A274520(n)`
-/

namespace A291008.P16241296736367829894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 2 * (A274520 n : ℚ)

end

end A291008.P16241296736367829894

namespace A291008

/-- `7/2*A274520(n)` -/
def P16241296736367829894.Spec : Prop :=
  ∀ n, P16241296736367829894.a n = (A291008 n : ℚ)

end A291008

/-! ## A291008.P11625804266645575404

`A083098(n+1)-A083098(n)`
-/

namespace A291008.P11625804266645575404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083098 (n + 1) - A083098 n

end

end A291008.P11625804266645575404

namespace A291008

/-- `A083098(n+1)-A083098(n)` -/
def P11625804266645575404.Spec : Prop :=
  ∀ n, P11625804266645575404.a n = A291008 n

end A291008

/-! ## A291008.P15174062618566406271

`7*A002536(n)*A131572(n)`
-/

namespace A291008.P15174062618566406271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A002536 n * A131572 n)

end

end A291008.P15174062618566406271

namespace A291008

/-- `7*A002536(n)*A131572(n)` -/
def P15174062618566406271.Spec : Prop :=
  ∀ n, P15174062618566406271.a n = A291008 n

end A291008

/-! ## A291008.P5376740608792421546

`Δ[Δ[A002536(n)*A016116(n)]]`
-/

namespace A291008.P5376740608792421546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A016116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291008.P5376740608792421546

namespace A291008

/-- `Δ[Δ[A002536(n)*A016116(n)]]` -/
def P5376740608792421546.Spec : Prop :=
  ∀ n, P5376740608792421546.a n = A291008 n

end A291008

/-! ## A291008.P1328750066030435392

`Δ[A083099(n+1)-A083099(n)]`
-/

namespace A291008.P1328750066030435392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 (n + 1) - A083099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291008.P1328750066030435392

namespace A291008

/-- `Δ[A083099(n+1)-A083099(n)]` -/
def P1328750066030435392.Spec : Prop :=
  ∀ n, P1328750066030435392.a n = A291008 n

end A291008

/-!
# A291009: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - S)*(1 - 3*S).

The programs for A291009, the canonical program `A291009.P10886884581987463371` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291009 has offset 0).

The definition of A291009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291009.P11414707350099392025

`2^(n-1)*(9*2^n-1)`
-/

namespace A291009.P11414707350099392025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((9 * 2 ^ n : ℤ) - 1 : ℚ)

end

end A291009.P11414707350099392025

namespace A291009

/-- `2^(n-1)*(9*2^n-1)` -/
def P11414707350099392025.Spec : Prop :=
  ∀ n, P11414707350099392025.a n = (A291009 n : ℚ)

end A291009

/-! ## A291009.P10886884581987463371

`6*a(n-1)-8*a(n-2)` with `a(0)=4, a(1)=17`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291009

/-- `6*a(n-1)-8*a(n-2)` -/
def P10886884581987463371.Spec : Prop :=
  ∀ n, P10886884581987463371.a n = A291009 n

theorem P10886884581987463371.correct : P10886884581987463371.Spec := by
  intro n
  simp only [A291009]

end A291009

/-! ## A291009.P16571984185986172107

`C(2^n, 2)+4^(n+1)`
-/

namespace A291009.P16571984185986172107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) 2 + 4 ^ (n + 1)

end

end A291009.P16571984185986172107

namespace A291009

/-- `C(2^n, 2)+4^(n+1)` -/
def P16571984185986172107.Spec : Prop :=
  ∀ n, (P16571984185986172107.a n : ℤ) = A291009 n

end A291009

/-! ## A291009.P18381281976602582688

`xor((4^n-2^n)/2, 4^(n+1))`
-/

namespace A291009.P18381281976602582688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2)) (4 ^ (n + 1) : ℤ)

end

end A291009.P18381281976602582688

namespace A291009

/-- `xor((4^n-2^n)/2, 4^(n+1))` -/
def P18381281976602582688.Spec : Prop :=
  ∀ n, P18381281976602582688.a n = A291009 n

end A291009

/-! ## A291009.P8378043167719329921

`abs(∏[-a(n-1)])+(4^n-2^n)/2` with `a(0)=4`
-/

namespace A291009.P8378043167719329921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) + ((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2

end

end A291009.P8378043167719329921

namespace A291009

/-- `abs(∏[-a(n-1)])+(4^n-2^n)/2` -/
def P8378043167719329921.Spec : Prop :=
  ∀ n, P8378043167719329921.a n = (A291009 n : ℚ)

end A291009

/-! ## A291009.P16045668982332418343

`or((4^n-2^n)/2, abs(∏[-a(n-1)]))` with `a(0)=4`
-/

namespace A291009.P16045668982332418343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2)) |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A291009.P16045668982332418343

namespace A291009

/-- `or((4^n-2^n)/2, abs(∏[-a(n-1)]))` -/
def P16045668982332418343.Spec : Prop :=
  ∀ n, P16045668982332418343.a n = A291009 n

end A291009

/-! ## A291009.P17152470185472715341

`A011782(n)+4*a(n-1)` with `a(0)=4`
-/

namespace A291009.P17152470185472715341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A011782 n + 4 * a (n - 1)

end

end A291009.P17152470185472715341

namespace A291009

/-- `A011782(n)+4*a(n-1)` -/
def P17152470185472715341.Spec : Prop :=
  ∀ n, P17152470185472715341.a n = A291009 n

end A291009

/-! ## A291009.P7634023361683601899

`A131577(n)+4*a(n-1)` with `a(0)=4`
-/

namespace A291009.P7634023361683601899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A131577 n + 4 * a (n - 1)

end

end A291009.P7634023361683601899

namespace A291009

/-- `A131577(n)+4*a(n-1)` -/
def P7634023361683601899.Spec : Prop :=
  ∀ n, P7634023361683601899.a n = A291009 n

end A291009

/-! ## A291009.P1611291167236157689

`4*a(n-1)-A154589(n)` with `a(0)=4`
-/

namespace A291009.P1611291167236157689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * a (n - 1) - A154589 n

end

end A291009.P1611291167236157689

namespace A291009

/-- `4*a(n-1)-A154589(n)` -/
def P1611291167236157689.Spec : Prop :=
  ∀ n, P1611291167236157689.a n = A291009 n

end A291009

/-! ## A291009.P5149605196137766869

`A000302(n+1)+(4^n-2^n)/2`
-/

namespace A291009.P5149605196137766869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 (n + 1) : ℚ) + ((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2

end

end A291009.P5149605196137766869

namespace A291009

/-- `A000302(n+1)+(4^n-2^n)/2` -/
def P5149605196137766869.Spec : Prop :=
  ∀ n, P5149605196137766869.a n = (A291009 n : ℚ)

end A291009

/-! ## A291009.P1412208928497741629

`A164346(n)+A010036(n)`
-/

namespace A291009.P1412208928497741629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n + A010036 n

end

end A291009.P1412208928497741629

namespace A291009

/-- `A164346(n)+A010036(n)` -/
def P1412208928497741629.Spec : Prop :=
  ∀ n, P1412208928497741629.a n = A291009 n

end A291009

/-! ## A291009.P7610230607905684458

`A171499(n)+A007582(n)`
-/

namespace A291009.P7610230607905684458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171499 n + A007582 n

end

end A291009.P7610230607905684458

namespace A291009

/-- `A171499(n)+A007582(n)` -/
def P7610230607905684458.Spec : Prop :=
  ∀ n, P7610230607905684458.a n = A291009 n

end A291009

/-! ## A291009.P16568590213528889772

`A242985(n)+A081193(n)`
-/

namespace A291009.P16568590213528889772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242985 n + A081193 n

end

end A291009.P16568590213528889772

namespace A291009

/-- `A242985(n)+A081193(n)` -/
def P16568590213528889772.Spec : Prop :=
  ∀ n, P16568590213528889772.a n = A291009 n

end A291009

/-! ## A291009.P4290893481481237549

`A330246(n)+A006095(n)`
-/

namespace A291009.P4290893481481237549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330246 n + A006095 n

end

end A291009.P4290893481481237549

namespace A291009

/-- `A330246(n)+A006095(n)` -/
def P4290893481481237549.Spec : Prop :=
  ∀ n, P4290893481481237549.a n = A291009 n

end A291009

/-! ## A291009.P8825720565431447558

`A281481(n)+A187560(n)`
-/

namespace A291009.P8825720565431447558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n + A187560 n

end

end A291009.P8825720565431447558

namespace A291009

/-- `A281481(n)+A187560(n)` -/
def P8825720565431447558.Spec : Prop :=
  ∀ n, P8825720565431447558.a n = A291009 n

end A291009

/-! ## A291009.P13972498923756554405

`A006516(n)+A000302(n+1)`
-/

namespace A291009.P13972498923756554405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + A000302 (n + 1)

end

end A291009.P13972498923756554405

namespace A291009

/-- `A006516(n)+A000302(n+1)` -/
def P13972498923756554405.Spec : Prop :=
  ∀ n, P13972498923756554405.a n = A291009 n

end A291009

/-! ## A291009.P7981751291907446071

`A134169(n)+A024036(n+1)`
-/

namespace A291009.P7981751291907446071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n + A024036 (n + 1)

end

end A291009.P7981751291907446071

namespace A291009

/-- `A134169(n)+A024036(n+1)` -/
def P7981751291907446071.Spec : Prop :=
  ∀ n, P7981751291907446071.a n = A291009 n

end A291009

/-! ## A291009.P2728033528448348306

`A155543(n+1)+A006516(n)`
-/

namespace A291009.P2728033528448348306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 (n + 1) + A006516 n

end

end A291009.P2728033528448348306

namespace A291009

/-- `A155543(n+1)+A006516(n)` -/
def P2728033528448348306.Spec : Prop :=
  ∀ n, P2728033528448348306.a n = A291009 n

end A291009

/-! ## A291009.P17098021853903861091

`A165665(n)+A032125(n+1)`
-/

namespace A291009.P17098021853903861091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165665 n + A032125 (n + 1)

end

end A291009.P17098021853903861091

namespace A291009

/-- `A165665(n)+A032125(n+1)` -/
def P17098021853903861091.Spec : Prop :=
  ∀ n, P17098021853903861091.a n = A291009 n

end A291009

/-!
# A291010: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - 2*S)*(1 - 3*S).

The programs for A291010, the canonical program `A291010.P17764415568857091039` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291010 has offset 0).

The definition of A291010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291010.P17764415568857091039

`9*4^n-4*3^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291010

/-- `9*4^n-4*3^n` -/
def P17764415568857091039.Spec : Prop :=
  ∀ n, P17764415568857091039.a n = A291010 n

theorem P17764415568857091039.correct : P17764415568857091039.Spec := by
  intro n
  simp only [A291010]

end A291010

/-! ## A291010.P10393203786364631138

`Δ[A255463(n)]`
-/

namespace A291010.P10393203786364631138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291010.P10393203786364631138

namespace A291010

/-- `Δ[A255463(n)]` -/
def P10393203786364631138.Spec : Prop :=
  ∀ n, P10393203786364631138.a n = A291010 n

end A291010

/-! ## A291010.P5993704593804937899

`Δ[Δ[A005061(n)]]`
-/

namespace A291010.P5993704593804937899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291010.P5993704593804937899

namespace A291010

/-- `Δ[Δ[A005061(n)]]` -/
def P5993704593804937899.Spec : Prop :=
  ∀ n, P5993704593804937899.a n = A291010 n

end A291010

/-! ## A291010.P10509369814101625955

`Δ[Δ[A155609(n)]]`
-/

namespace A291010.P10509369814101625955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291010.P10509369814101625955

namespace A291010

/-- `Δ[Δ[A155609(n)]]` -/
def P10509369814101625955.Spec : Prop :=
  ∀ n, P10509369814101625955.a n = A291010 n

end A291010

/-! ## A291010.P9036276733103829503

`Δ[Δ[A167762(2*n)]]`
-/

namespace A291010.P9036276733103829503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291010.P9036276733103829503

namespace A291010

/-- `Δ[Δ[A167762(2*n)]]` -/
def P9036276733103829503.Spec : Prop :=
  ∀ n, P9036276733103829503.a n = A291010 n

end A291010

/-! ## A291010.P4081973194840281641

`Δ[Δ[A167936(2*n)]]`
-/

namespace A291010.P4081973194840281641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291010.P4081973194840281641

namespace A291010

/-- `Δ[Δ[A167936(2*n)]]` -/
def P4081973194840281641.Spec : Prop :=
  ∀ n, P4081973194840281641.a n = A291010 n

end A291010

/-!
# A291011: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - S)^2 * (1 - 2*S).

The programs for A291011, the canonical program `A291011.P10360859208763780000` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291011 has offset 0).

The definition of A291011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291011.P10360859208763780000

`7*a(n-1)-16*a(n-2)+12*a(n-3)` with `a(0)=4, a(1)=15, a(2)=52`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291011

/-- `7*a(n-1)-16*a(n-2)+12*a(n-3)` -/
def P10360859208763780000.Spec : Prop :=
  ∀ n, P10360859208763780000.a n = A291011 n

theorem P10360859208763780000.correct : P10360859208763780000.Spec := by
  intro n
  simp only [A291011]

end A291011

/-! ## A291011.P1043962126918496069

`Δ[A045623(n)+3*a(n-1)]` with `a(0)=1`
-/

namespace A291011.P1043962126918496069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A045623 n + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291011.P1043962126918496069

namespace A291011

/-- `Δ[A045623(n)+3*a(n-1)]` -/
def P1043962126918496069.Spec : Prop :=
  ∀ n, P1043962126918496069.a n = A291011 n

end A291011

/-! ## A291011.P13971555017671286239

`Δ[A166060(n)-A001787(n)]`
-/

namespace A291011.P13971555017671286239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166060 n - A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291011.P13971555017671286239

namespace A291011

/-- `Δ[A166060(n)-A001787(n)]` -/
def P13971555017671286239.Spec : Prop :=
  ∀ n, P13971555017671286239.a n = A291011 n

end A291011

/-! ## A291011.P11591958992480532722

`Δ[A166060(n)]-A001792(n)`
-/

namespace A291011.P11591958992480532722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001792 n

end

end A291011.P11591958992480532722

namespace A291011

/-- `Δ[A166060(n)]-A001792(n)` -/
def P11591958992480532722.Spec : Prop :=
  ∀ n, P11591958992480532722.a n = A291011 n

end A291011

/-! ## A291011.P16422493497477557562

`Δ[A166060(n)-A005183(n)]`
-/

namespace A291011.P16422493497477557562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166060 n - A005183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291011.P16422493497477557562

namespace A291011

/-- `Δ[A166060(n)-A005183(n)]` -/
def P16422493497477557562.Spec : Prop :=
  ∀ n, P16422493497477557562.a n = A291011 n

end A291011

/-! ## A291011.P8964324040416526401

`A027649(n+1)+A027649(n)-A001792(n)`
-/

namespace A291011.P8964324040416526401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 (n + 1) + (A027649 n - A001792 n)

end

end A291011.P8964324040416526401

namespace A291011

/-- `A027649(n+1)+A027649(n)-A001792(n)` -/
def P8964324040416526401.Spec : Prop :=
  ∀ n, P8964324040416526401.a n = A291011 n

end A291011

/-! ## A291011.P13790428829045635807

`Δ[Δ[Δ[A066810(n)]]]`
-/

namespace A291011.P13790428829045635807
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066810 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291011.P13790428829045635807

namespace A291011

/-- `Δ[Δ[Δ[A066810(n)]]]` -/
def P13790428829045635807.Spec : Prop :=
  ∀ n, P13790428829045635807.a n = A291011 n

end A291011

/-!
# A291012: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - S^2)*(1 - 2*S).

The programs for A291012, the canonical program `A291012.P14983984473265972182` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291012 has offset 0).

The definition of A291012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291012.P14983984473265972182

`5*a(n-1)-6*a(n-2)` with `a(0)=2, a(1)=7, a(2)=22`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291012

/-- `5*a(n-1)-6*a(n-2)` -/
def P14983984473265972182.Spec : Prop :=
  ∀ n, P14983984473265972182.a n = A291012 n

theorem P14983984473265972182.correct : P14983984473265972182.Spec := by
  intro n
  simp only [A291012]

end A291012

/-! ## A291012.P12385444422617579781

`Δ[3^n-floor(2^(n-1))+floor(3^(n-1))+1]`
-/

namespace A291012.P12385444422617579781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291012.P12385444422617579781

namespace A291012

/-- `Δ[3^n-floor(2^(n-1))+floor(3^(n-1))+1]` -/
def P12385444422617579781.Spec : Prop :=
  ∀ n, P12385444422617579781.a n = A291012 n

end A291012

/-! ## A291012.P3719913953555621279

`abs(Δ[A053581(n)])`
-/

namespace A291012.P3719913953555621279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A291012.P3719913953555621279

namespace A291012

/-- `abs(Δ[A053581(n)])` -/
def P3719913953555621279.Spec : Prop :=
  ∀ n, P3719913953555621279.a n = A291012 n

end A291012

/-! ## A291012.P7600690346362907596

`3^(n+1)-A085281(n)`
-/

namespace A291012.P7600690346362907596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A085281 n

end

end A291012.P7600690346362907596

namespace A291012

/-- `3^(n+1)-A085281(n)` -/
def P7600690346362907596.Spec : Prop :=
  ∀ n, P7600690346362907596.a n = A291012 n

end A291012

/-! ## A291012.P11492542690476363510

`A166444(n)+3*a(n-1)` with `a(0)=2`
-/

namespace A291012.P11492542690476363510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A166444 n + 3 * a (n - 1)

end

end A291012.P11492542690476363510

namespace A291012

/-- `A166444(n)+3*a(n-1)` -/
def P11492542690476363510.Spec : Prop :=
  ∀ n, P11492542690476363510.a n = A291012 n

end A291012

/-! ## A291012.P8375996491851403111

`Δ[A003946(n)]-ceil(2^(n-1))`
-/

namespace A291012.P8375996491851403111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A291012.P8375996491851403111

namespace A291012

/-- `Δ[A003946(n)]-ceil(2^(n-1))` -/
def P8375996491851403111.Spec : Prop :=
  ∀ n, P8375996491851403111.a n = A291012 n

end A291012

/-! ## A291012.P16858987894366731792

`A053581(n)+A003946(n)`
-/

namespace A291012.P16858987894366731792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n + A003946 n

end

end A291012.P16858987894366731792

namespace A291012

/-- `A053581(n)+A003946(n)` -/
def P16858987894366731792.Spec : Prop :=
  ∀ n, P16858987894366731792.a n = A291012 n

end A291012

/-! ## A291012.P14384099963207634805

`A053581(n)+record[A074324(n)]`
-/

namespace A291012.P14384099963207634805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291012.P14384099963207634805

namespace A291012

/-- `A053581(n)+record[A074324(n)]` -/
def P14384099963207634805.Spec : Prop :=
  ∀ n, P14384099963207634805.a n = A291012 n

end A291012

/-! ## A291012.P13932565007885256725

`A060816(n+1)+A000392(n)`
-/

namespace A291012.P13932565007885256725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 (n + 1) + A000392 n

end

end A291012.P13932565007885256725

namespace A291012

/-- `A060816(n+1)+A000392(n)` -/
def P13932565007885256725.Spec : Prop :=
  ∀ n, P13932565007885256725.a n = A291012 n

end A291012

/-! ## A291012.P651402543570773584

`A000392(n)+A134931(n)+1`
-/

namespace A291012.P651402543570773584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n + (A134931 n + 1)

end

end A291012.P651402543570773584

namespace A291012

/-- `A000392(n)+A134931(n)+1` -/
def P651402543570773584.Spec : Prop :=
  ∀ n, P651402543570773584.a n = A291012 n

end A291012

/-! ## A291012.P11263460850146866710

`A053581(n+1)-A053581(n)`
-/

namespace A291012.P11263460850146866710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 (n + 1) - A053581 n

end

end A291012.P11263460850146866710

namespace A291012

/-- `A053581(n+1)-A053581(n)` -/
def P11263460850146866710.Spec : Prop :=
  ∀ n, P11263460850146866710.a n = A291012 n

end A291012

/-! ## A291012.P12236903970648369907

`A074324(2*n)+A053581(n)`
-/

namespace A291012.P12236903970648369907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (2 * n) + A053581 n

end

end A291012.P12236903970648369907

namespace A291012

/-- `A074324(2*n)+A053581(n)` -/
def P12236903970648369907.Spec : Prop :=
  ∀ n, P12236903970648369907.a n = A291012 n

end A291012

/-! ## A291012.P2759567529411279975

`A131577(n)+2*A053581(n)`
-/

namespace A291012.P2759567529411279975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + 2 * A053581 n

end

end A291012.P2759567529411279975

namespace A291012

/-- `A131577(n)+2*A053581(n)` -/
def P2759567529411279975.Spec : Prop :=
  ∀ n, P2759567529411279975.a n = A291012 n

end A291012

/-! ## A291012.P4975788186031861378

`2*A003946(n)-A131577(n)`
-/

namespace A291012.P4975788186031861378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003946 n - A131577 n

end

end A291012.P4975788186031861378

namespace A291012

/-- `2*A003946(n)-A131577(n)` -/
def P4975788186031861378.Spec : Prop :=
  ∀ n, P4975788186031861378.a n = A291012 n

end A291012

/-! ## A291012.P16405828247358153590

`A080923(n+1)-abs(A123344(n))`
-/

namespace A291012.P16405828247358153590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (n + 1) - |A123344 n|

end

end A291012.P16405828247358153590

namespace A291012

/-- `A080923(n+1)-abs(A123344(n))` -/
def P16405828247358153590.Spec : Prop :=
  ∀ n, P16405828247358153590.a n = A291012 n

end A291012

/-! ## A291012.P7987024821153626149

`Δ[A052156(n+1)]-A011782(n)`
-/

namespace A291012.P7987024821153626149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A011782 n

end

end A291012.P7987024821153626149

namespace A291012

/-- `Δ[A052156(n+1)]-A011782(n)` -/
def P7987024821153626149.Spec : Prop :=
  ∀ n, P7987024821153626149.a n = A291012 n

end A291012

/-! ## A291012.P5259247399486980850

`Δ[A068911(2*n)]-A011782(n)`
-/

namespace A291012.P5259247399486980850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A011782 n

end

end A291012.P5259247399486980850

namespace A291012

/-- `Δ[A068911(2*n)]-A011782(n)` -/
def P5259247399486980850.Spec : Prop :=
  ∀ n, P5259247399486980850.a n = A291012 n

end A291012

/-! ## A291012.P2300350812779817050

`Δ[A074324(2*n)]-A011782(n)`
-/

namespace A291012.P2300350812779817050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A011782 n

end

end A291012.P2300350812779817050

namespace A291012

/-- `Δ[A074324(2*n)]-A011782(n)` -/
def P2300350812779817050.Spec : Prop :=
  ∀ n, P2300350812779817050.a n = A291012 n

end A291012

/-! ## A291012.P6237366530672358624

`A053581(n)+record[A166552(n+1)]`
-/

namespace A291012.P6237366530672358624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291012.P6237366530672358624

namespace A291012

/-- `A053581(n)+record[A166552(n+1)]` -/
def P6237366530672358624.Spec : Prop :=
  ∀ n, P6237366530672358624.a n = A291012 n

end A291012

/-!
# A291013: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - S^2)^3.

The programs for A291013, the canonical program `A291013.P3090937486280831331` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291013 has offset 0).

The definition of A291013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291013.P3090937486280831331

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=15, a(4)=36, a(5)=85`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291013

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P3090937486280831331.Spec : Prop :=
  ∀ n, P3090937486280831331.a n = A291013 n

theorem P3090937486280831331.correct : P3090937486280831331.Spec := by
  intro n
  simp only [A291013]

end A291013

/-! ## A291013.P15534091422782158237

`Δ[A362179(n)]`
-/

namespace A291013.P15534091422782158237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291013.P15534091422782158237

namespace A291013

/-- `Δ[A362179(n)]` -/
def P15534091422782158237.Spec : Prop :=
  ∀ n, P15534091422782158237.a n = A291013 n

end A291013

/-! ## A291013.P13985773303723499115

`A362179(n+1)-A362179(n)`
-/

namespace A291013.P13985773303723499115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362179 (n + 1) - A362179 n

end

end A291013.P13985773303723499115

namespace A291013

/-- `A362179(n+1)-A362179(n)` -/
def P13985773303723499115.Spec : Prop :=
  ∀ n, P13985773303723499115.a n = A291013 n

end A291013

/-! ## A291013.P4075412711983254759

`A058395(A056220(n+1))`
-/

namespace A291013.P4075412711983254759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058395 (A056220 (n + 1)).toNat

end

end A291013.P4075412711983254759

namespace A291013

/-- `A058395(A056220(n+1))` -/
def P4075412711983254759.Spec : Prop :=
  ∀ n, P4075412711983254759.a n = A291013 n

end A291013

/-! ## A291013.P1030560516783110442

`A058395(A001844(n)+2*n)`
-/

namespace A291013.P1030560516783110442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058395 (A001844 n + (2 * n : ℤ)).toNat

end

end A291013.P1030560516783110442

namespace A291013

/-- `A058395(A001844(n)+2*n)` -/
def P1030560516783110442.Spec : Prop :=
  ∀ n, P1030560516783110442.a n = A291013 n

end A291013

/-! ## A291013.P7204878819749923842

`A058395(A001844(n)+n+n)`
-/

namespace A291013.P7204878819749923842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058395 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A291013.P7204878819749923842

namespace A291013

/-- `A058395(A001844(n)+n+n)` -/
def P7204878819749923842.Spec : Prop :=
  ∀ n, P7204878819749923842.a n = A291013 n

end A291013

/-! ## A291013.P10909899571425989062

`A058395(A000096(2*n)+n+1)`
-/

namespace A291013.P10909899571425989062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058395 (A000096 (2 * n) + (n + 1 : ℤ)).toNat

end

end A291013.P10909899571425989062

namespace A291013

/-- `A058395(A000096(2*n)+n+1)` -/
def P10909899571425989062.Spec : Prop :=
  ∀ n, P10909899571425989062.a n = A291013 n

end A291013

/-! ## A291013.P4752914539878542716

`A058395(A000217(2*n+1)+n)`
-/

namespace A291013.P4752914539878542716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058395 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A291013.P4752914539878542716

namespace A291013

/-- `A058395(A000217(2*n+1)+n)` -/
def P4752914539878542716.Spec : Prop :=
  ∀ n, P4752914539878542716.a n = A291013 n

end A291013

/-!
# A291014: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - S^3)^2.

The programs for A291014, there is no canonical definition to state claims against.
-/

/-! ## A291014.P1210905943250003053

`A330104(A259968(n+1))-1`
-/

namespace A291014.P1210905943250003053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330104 (A259968 (n + 1)).toNat - 1

end

end A291014.P1210905943250003053

/-! ## A291014.P13913885536076491529

`A003056(A105321(n)*A178704(n))`
-/

namespace A291014.P13913885536076491529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A105321 n * A178704 n).toNat

end

end A291014.P13913885536076491529

/-! ## A291014.P15886415349546676257

`A051049(n)-A352632(A025049(3*n))`
-/

namespace A291014.P15886415349546676257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n - A352632 (A025049 (3 * n)).toNat

end

end A291014.P15886415349546676257

/-!
# A291015: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - S^3)^2.

The programs for A291015, the canonical program `A291015.P4374003554387407802` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291015 has offset 0).

The definition of A291015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291015.P4374003554387407802

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=2, a(1)=7, a(2)=23`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291015

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P4374003554387407802.Spec : Prop :=
  ∀ n, P4374003554387407802.a n = A291015 n

theorem P4374003554387407802.correct : P4374003554387407802.Spec := by
  intro n
  simp only [A291015]

end A291015

/-! ## A291015.P592814339779569462

`Δ[A060557(n)]`
-/

namespace A291015.P592814339779569462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291015.P592814339779569462

namespace A291015

/-- `Δ[A060557(n)]` -/
def P592814339779569462.Spec : Prop :=
  ∀ n, P592814339779569462.a n = A291015 n

end A291015

/-! ## A291015.P14729542551580603946

`A287381(2*n)`
-/

namespace A291015.P14729542551580603946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287381 (2 * n)

end

end A291015.P14729542551580603946

namespace A291015

/-- `A287381(2*n)` -/
def P14729542551580603946.Spec : Prop :=
  ∀ n, P14729542551580603946.a n = A291015 n

end A291015

/-! ## A291015.P16042390901423850477

`Δ[A028495(Δ[n²])]`
-/

namespace A291015.P16042390901423850477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291015.P16042390901423850477

namespace A291015

/-- `Δ[A028495(Δ[n²])]` -/
def P16042390901423850477.Spec : Prop :=
  ∀ n, P16042390901423850477.a n = A291015 n

end A291015

/-! ## A291015.P17822131976615436006

`A276055(4*n+2)`
-/

namespace A291015.P17822131976615436006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276055 (4 * n + 2)

end

end A291015.P17822131976615436006

namespace A291015

/-- `A276055(4*n+2)` -/
def P17822131976615436006.Spec : Prop :=
  ∀ n, P17822131976615436006.a n = A291015 n

end A291015

/-! ## A291015.P1218384516029118343

`Δ[Δ[A187067(4*n)]]`
-/

namespace A291015.P1218384516029118343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291015.P1218384516029118343

namespace A291015

/-- `Δ[Δ[A187067(4*n)]]` -/
def P1218384516029118343.Spec : Prop :=
  ∀ n, P1218384516029118343.a n = A291015 n

end A291015

/-! ## A291015.P12491389351501478688

`abs(Δ[A028495(2*n+1)])`
-/

namespace A291015.P12491389351501478688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A291015.P12491389351501478688

namespace A291015

/-- `abs(Δ[A028495(2*n+1)])` -/
def P12491389351501478688.Spec : Prop :=
  ∀ n, P12491389351501478688.a n = A291015 n

end A291015

/-! ## A291015.P2018453231148233519

`Δ[Δ[A006053(2*n+1)]]`
-/

namespace A291015.P2018453231148233519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291015.P2018453231148233519

namespace A291015

/-- `Δ[Δ[A006053(2*n+1)]]` -/
def P2018453231148233519.Spec : Prop :=
  ∀ n, P2018453231148233519.a n = A291015 n

end A291015

/-! ## A291015.P13656922328547129389

`record[gcd(val(n+1, 2), A287381(n))]`
-/

namespace A291015.P13656922328547129389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A287381 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291015.P13656922328547129389

namespace A291015

/-- `record[gcd(val(n+1, 2), A287381(n))]` -/
def P13656922328547129389.Spec : Prop :=
  ∀ n, (P13656922328547129389.a n : ℤ) = A291015 n

end A291015

/-! ## A291015.P5841676353171138153

`∑[A060557(n)+A052975(n)]`
-/

namespace A291015.P5841676353171138153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n + A052975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291015.P5841676353171138153

namespace A291015

/-- `∑[A060557(n)+A052975(n)]` -/
def P5841676353171138153.Spec : Prop :=
  ∀ n, P5841676353171138153.a n = A291015 n

end A291015

/-! ## A291015.P11474730165043225611

`A060557(n+1)-A060557(n)`
-/

namespace A291015.P11474730165043225611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 (n + 1) - A060557 n

end

end A291015.P11474730165043225611

namespace A291015

/-- `A060557(n+1)-A060557(n)` -/
def P11474730165043225611.Spec : Prop :=
  ∀ n, P11474730165043225611.a n = A291015 n

end A291015

/-! ## A291015.P14445910311472022005

`A094790(n+1)+A094789(n+1)`
-/

namespace A291015.P14445910311472022005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094790 (n + 1) + A094789 (n + 1)

end

end A291015.P14445910311472022005

namespace A291015

/-- `A094790(n+1)+A094789(n+1)` -/
def P14445910311472022005.Spec : Prop :=
  ∀ n, P14445910311472022005.a n = A291015 n

end A291015

/-! ## A291015.P10129229090437762664

`A094790(n+2)-A080937(n+1)`
-/

namespace A291015.P10129229090437762664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094790 (n + 2) - A080937 (n + 1)

end

end A291015.P10129229090437762664

namespace A291015

/-- `A094790(n+2)-A080937(n+1)` -/
def P10129229090437762664.Spec : Prop :=
  ∀ n, P10129229090437762664.a n = A291015 n

end A291015

/-! ## A291015.P8981218167453942486

`A094789(n+2)-A215694(n+1)`
-/

namespace A291015.P8981218167453942486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094789 (n + 2) - A215694 (n + 1)

end

end A291015.P8981218167453942486

namespace A291015

/-- `A094789(n+2)-A215694(n+1)` -/
def P8981218167453942486.Spec : Prop :=
  ∀ n, P8981218167453942486.a n = A291015 n

end A291015

/-! ## A291015.P9098291419393326625

`A094790(n+2)-A052547(2*n)`
-/

namespace A291015.P9098291419393326625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094790 (n + 2) - A052547 (2 * n)

end

end A291015.P9098291419393326625

namespace A291015

/-- `A094790(n+2)-A052547(2*n)` -/
def P9098291419393326625.Spec : Prop :=
  ∀ n, P9098291419393326625.a n = A291015 n

end A291015

/-! ## A291015.P16574839548272331009

`A052975(n+1)+A006053(2*n+1)`
-/

namespace A291015.P16574839548272331009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 (n + 1) + A006053 (2 * n + 1)

end

end A291015.P16574839548272331009

namespace A291015

/-- `A052975(n+1)+A006053(2*n+1)` -/
def P16574839548272331009.Spec : Prop :=
  ∀ n, P16574839548272331009.a n = A291015 n

end A291015

/-! ## A291015.P6489000272761430397

`A094789(n+1)+A006053(2*(n+1))`
-/

namespace A291015.P6489000272761430397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094789 (n + 1) + A006053 (2 * (n + 1))

end

end A291015.P6489000272761430397

namespace A291015

/-- `A094789(n+1)+A006053(2*(n+1))` -/
def P6489000272761430397.Spec : Prop :=
  ∀ n, P6489000272761430397.a n = A291015 n

end A291015

/-! ## A291015.P12648058140096919863

`A094790(n+1)+A006053(2*n+3)`
-/

namespace A291015.P12648058140096919863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094790 (n + 1) + A006053 (2 * n + 3)

end

end A291015.P12648058140096919863

namespace A291015

/-- `A094790(n+1)+A006053(2*n+3)` -/
def P12648058140096919863.Spec : Prop :=
  ∀ n, P12648058140096919863.a n = A291015 n

end A291015

/-! ## A291015.P3480510135367770143

`A094790(n+2)-A096976(2*(n+1))`
-/

namespace A291015.P3480510135367770143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094790 (n + 2) - A096976 (2 * (n + 1))

end

end A291015.P3480510135367770143

namespace A291015

/-- `A094790(n+2)-A096976(2*(n+1))` -/
def P3480510135367770143.Spec : Prop :=
  ∀ n, P3480510135367770143.a n = A291015 n

end A291015

/-!
# A291016: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - 4*S + S^2.

The programs for A291016, the canonical program `A291016.P11995525613576401154` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291016 has offset 0).

The definition of A291016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291016.P11995525613576401154

`6*a(n-1)-6*a(n-2)` with `a(0)=4, a(1)=19`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291016

/-- `6*a(n-1)-6*a(n-2)` -/
def P11995525613576401154.Spec : Prop :=
  ∀ n, P11995525613576401154.a n = A291016 n

theorem P11995525613576401154.correct : P11995525613576401154.Spec := by
  intro n
  simp only [A291016]

end A291016

/-! ## A291016.P6522776198889001561

`((3+sqrt(3))^(n+4)-(3-sqrt(3))^(n+4))/(72*sqrt(3))`
-/

namespace A291016.P6522776198889001561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) ^ (n + 4) - (3 - Real.sqrt (3 : ℝ)) ^ (n + 4)) / (72 * Real.sqrt (3 : ℝ))

end

end A291016.P6522776198889001561

namespace A291016

/-- `((3+sqrt(3))^(n+4)-(3-sqrt(3))^(n+4))/(72*sqrt(3))` -/
def P6522776198889001561.Spec : Prop :=
  ∀ n, P6522776198889001561.a n = (A291016 n : ℝ)

end A291016

/-! ## A291016.P3822865822351191251

`6*(a(n-1)-a(n-2))` with `a(0)=4, a(1)=19`
-/

namespace A291016.P3822865822351191251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 19] fun n a =>
  6 * (a (n - 1) - a (n - 2))

end

end A291016.P3822865822351191251

namespace A291016

/-- `6*(a(n-1)-a(n-2))` -/
def P3822865822351191251.Spec : Prop :=
  ∀ n, P3822865822351191251.a n = A291016 n

theorem P3822865822351191251.correct : P3822865822351191251.Spec := by
  intro n
  simp only [A291016, Nat.add_sub_cancel, A291016.P3822865822351191251.a, A291016.P11995525613576401154.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A291016

/-! ## A291016.P14885131559217888533

`Δ[A140766(n+1)]`
-/

namespace A291016.P14885131559217888533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291016.P14885131559217888533

namespace A291016

/-- `Δ[A140766(n+1)]` -/
def P14885131559217888533.Spec : Prop :=
  ∀ n, P14885131559217888533.a n = A291016 n

end A291016

/-! ## A291016.P1090392745626461301

`A140766(n+2)-A140766(n+1)`
-/

namespace A291016.P1090392745626461301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140766 (n + 2) - A140766 (n + 1)

end

end A291016.P1090392745626461301

namespace A291016

/-- `A140766(n+2)-A140766(n+1)` -/
def P1090392745626461301.Spec : Prop :=
  ∀ n, P1090392745626461301.a n = A291016 n

end A291016

/-! ## A291016.P2883673143742454887

`Δ[Δ[A094434(n+1)/2]]`
-/

namespace A291016.P2883673143742454887
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094434 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291016.P2883673143742454887

namespace A291016

/-- `Δ[Δ[A094434(n+1)/2]]` -/
def P2883673143742454887.Spec : Prop :=
  ∀ n, P2883673143742454887.a n = (A291016 n : ℚ)

end A291016

/-! ## A291016.P15447061065066592862

`Δ[Δ[A083881(n)]-A086405(n)]`
-/

namespace A291016.P15447061065066592862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A086405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291016.P15447061065066592862

namespace A291016

/-- `Δ[Δ[A083881(n)]-A086405(n)]` -/
def P15447061065066592862.Spec : Prop :=
  ∀ n, P15447061065066592862.a n = A291016 n

end A291016

/-! ## A291016.P18104082736194160575

`Δ[A287807(n)-Δ[A094433(n)]]`
-/

namespace A291016.P18104082736194160575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287807 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291016.P18104082736194160575

namespace A291016

/-- `Δ[A287807(n)-Δ[A094433(n)]]` -/
def P18104082736194160575.Spec : Prop :=
  ∀ n, P18104082736194160575.a n = A291016 n

end A291016

/-!
# A291017: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - 5 S + S^2.

The programs for A291017, the canonical program `A291017.P5404734213387878010` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291017 has offset 0).

The definition of A291017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291017.P5404734213387878010

`7*a(n-1)-7*a(n-2)` with `a(0)=5, a(1)=29`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291017

/-- `7*a(n-1)-7*a(n-2)` -/
def P5404734213387878010.Spec : Prop :=
  ∀ n, P5404734213387878010.a n = A291017 n

theorem P5404734213387878010.correct : P5404734213387878010.Spec := by
  intro n
  simp only [A291017]

end A291017

/-! ## A291017.P13719153712855292884

`7*(a(n-1)-a(n-2))` with `a(0)=5, a(1)=29`
-/

namespace A291017.P13719153712855292884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 29] fun n a =>
  7 * (a (n - 1) - a (n - 2))

end

end A291017.P13719153712855292884

namespace A291017

/-- `7*(a(n-1)-a(n-2))` -/
def P13719153712855292884.Spec : Prop :=
  ∀ n, P13719153712855292884.a n = A291017 n

theorem P13719153712855292884.correct : P13719153712855292884.Spec := by
  intro n
  simp only [A291017, Nat.add_sub_cancel, A291017.P13719153712855292884.a, A291017.P5404734213387878010.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A291017

/-! ## A291017.P12195714024466545606

`Δ[A030240(n+1)/7]`
-/

namespace A291017.P12195714024466545606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030240 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291017.P12195714024466545606

namespace A291017

/-- `Δ[A030240(n+1)/7]` -/
def P12195714024466545606.Spec : Prop :=
  ∀ n, P12195714024466545606.a n = (A291017 n : ℚ)

end A291017

/-! ## A291017.P18118647097691348112

`Δ[floor(A030240(n-or(n, -1))/7)]`
-/

namespace A291017.P18118647097691348112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030240 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291017.P18118647097691348112

namespace A291017

/-- `Δ[floor(A030240(n-or(n, -1))/7)]` -/
def P18118647097691348112.Spec : Prop :=
  ∀ n, P18118647097691348112.a n = A291017 n

end A291017

/-! ## A291017.P5806110893037916674

`Δ[Δ[A342129(A155212(n+3))]]`
-/

namespace A291017.P5806110893037916674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 (A155212 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291017.P5806110893037916674

namespace A291017

/-- `Δ[Δ[A342129(A155212(n+3))]]` -/
def P5806110893037916674.Spec : Prop :=
  ∀ n, P5806110893037916674.a n = A291017 n

end A291017

/-!
# A291018: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - 6 S + S^2.

The programs for A291018, the canonical program `A291018.P12861577282490142691` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291018 has offset 0).

The definition of A291018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291018.P12861577282490142691

`8*a(n-1)-8*a(n-2)` with `a(0)=6, a(1)=41`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291018

/-- `8*a(n-1)-8*a(n-2)` -/
def P12861577282490142691.Spec : Prop :=
  ∀ n, P12861577282490142691.a n = A291018 n

theorem P12861577282490142691.correct : P12861577282490142691.Spec := by
  intro n
  simp only [A291018]

end A291018

/-! ## A291018.P16487093330505224710

`Δ[8*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=7`
-/

namespace A291018.P16487093330505224710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  8 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291018.P16487093330505224710

namespace A291018

/-- `Δ[8*(a(n-1)-a(n-2))]` -/
def P16487093330505224710.Spec : Prop :=
  ∀ n, P16487093330505224710.a n = A291018 n

end A291018

/-! ## A291018.P17994864601926492954

`Δ[A164591(n)]`
-/

namespace A291018.P17994864601926492954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291018.P17994864601926492954

namespace A291018

/-- `Δ[A164591(n)]` -/
def P17994864601926492954.Spec : Prop :=
  ∀ n, P17994864601926492954.a n = A291018 n

end A291018

/-! ## A291018.P11978925635794967802

`2^(n-2)*A020727(n+2)`
-/

namespace A291018.P11978925635794967802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A020727 (n + 2) : ℚ)

end

end A291018.P11978925635794967802

namespace A291018

/-- `2^(n-2)*A020727(n+2)` -/
def P11978925635794967802.Spec : Prop :=
  ∀ n, P11978925635794967802.a n = (A291018 n : ℚ)

end A291018

/-! ## A291018.P5762583766183827828

`2^(n-2)*A003480(n+3)`
-/

namespace A291018.P5762583766183827828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A003480 (n + 3) : ℚ)

end

end A291018.P5762583766183827828

namespace A291018

/-- `2^(n-2)*A003480(n+3)` -/
def P5762583766183827828.Spec : Prop :=
  ∀ n, P5762583766183827828.a n = (A291018 n : ℚ)

end A291018

/-! ## A291018.P1778842736265323194

`A164591(n+1)-A164591(n)`
-/

namespace A291018.P1778842736265323194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164591 (n + 1) - A164591 n

end

end A291018.P1778842736265323194

namespace A291018

/-- `A164591(n+1)-A164591(n)` -/
def P1778842736265323194.Spec : Prop :=
  ∀ n, P1778842736265323194.a n = A291018 n

end A291018

/-! ## A291018.P8375396660438759562

`Δ[Δ[A131577(n)*A204089(n)]]`
-/

namespace A291018.P8375396660438759562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A204089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291018.P8375396660438759562

namespace A291018

/-- `Δ[Δ[A131577(n)*A204089(n)]]` -/
def P8375396660438759562.Spec : Prop :=
  ∀ n, P8375396660438759562.a n = A291018 n

end A291018

/-! ## A291018.P15925751338058998713

`A164591(n+2)/8`
-/

namespace A291018.P15925751338058998713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164591 (n + 2) : ℚ) / 8

end

end A291018.P15925751338058998713

namespace A291018

/-- `A164591(n+2)/8` -/
def P15925751338058998713.Spec : Prop :=
  ∀ n, P15925751338058998713.a n = (A291018 n : ℚ)

end A291018

/-!
# A291019: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S - S^2 - S^3 + S^4.

The programs for A291019, the canonical program `A291019.P17941725942976107903` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291019 has offset 0).

The definition of A291019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291019.P17941725942976107903

`5*a(n-1)-8*a(n-2)+6*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=25`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291019

/-- `5*a(n-1)-8*a(n-2)+6*a(n-3)-3*a(n-4)` -/
def P17941725942976107903.Spec : Prop :=
  ∀ n, P17941725942976107903.a n = A291019 n

theorem P17941725942976107903.correct : P17941725942976107903.Spec := by
  intro n
  simp only [A291019]

end A291019

/-! ## A291019.P10744908492973782331

`A236570(n+3)-A051344(A182821(n))`
-/

namespace A291019.P10744908492973782331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236570 (n + 3) - A051344 (A182821 n).toNat

end

end A291019.P10744908492973782331

namespace A291019

/-- `A236570(n+3)-A051344(A182821(n))` -/
def P10744908492973782331.Spec : Prop :=
  ∀ n, P10744908492973782331.a n = A291019 n

end A291019

/-!
# A291020: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S - S^2 - S^3 - S^4 + S^5.

The programs for A291020, the canonical program `A291020.P4881066576296827600` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291020 has offset 0).

The definition of A291020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291020.P4881066576296827600

`6*a(n-1)-13*a(n-2)+14*a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=79`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291020

/-- `6*a(n-1)-13*a(n-2)+14*a(n-3)-7*a(n-4)` -/
def P4881066576296827600.Spec : Prop :=
  ∀ n, P4881066576296827600.a n = A291020 n

theorem P4881066576296827600.correct : P4881066576296827600.Spec := by
  intro n
  simp only [A291020]

end A291020

/-! ## A291020.P14067688748761546889

`A004277(A291006(n))-A291007(n)`
-/

namespace A291020.P14067688748761546889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A291006 n).toNat - A291007 n

end

end A291020.P14067688748761546889

namespace A291020

/-- `A004277(A291006(n))-A291007(n)` -/
def P14067688748761546889.Spec : Prop :=
  ∀ n, P14067688748761546889.a n = A291020 n

end A291020

/-! ## A291020.P5781443069355606060

`A004525(A122100(n)+A069005(n+1))`
-/

namespace A291020.P5781443069355606060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A122100 n + A069005 (n + 1)).toNat

end

end A291020.P5781443069355606060

namespace A291020

/-- `A004525(A122100(n)+A069005(n+1))` -/
def P5781443069355606060.Spec : Prop :=
  ∀ n, P5781443069355606060.a n = A291020 n

end A291020

/-! ## A291020.P11818722466469219657

`A004526(A122100(n)+A069005(n+1))`
-/

namespace A291020.P11818722466469219657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A122100 n + A069005 (n + 1)).toNat

end

end A291020.P11818722466469219657

namespace A291020

/-- `A004526(A122100(n)+A069005(n+1))` -/
def P11818722466469219657.Spec : Prop :=
  ∀ n, P11818722466469219657.a n = A291020 n

end A291020

/-!
# A291021: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S - S^2 - S^3 + S^4 + S^5.

The programs for A291021, the canonical program `A291021.P13249810594627728153` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291021 has offset 0).

The definition of A291021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291021.P13249810594627728153

`A290890(n+1)-A131708(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291021

/-- `A290890(n+1)-A131708(n)` -/
def P13249810594627728153.Spec : Prop :=
  ∀ n, P13249810594627728153.a n = A291021 n

theorem P13249810594627728153.correct : P13249810594627728153.Spec := by
  intro n
  simp only [A291021]

end A291021

/-! ## A291021.P17260208705841423777

`Δ[∑[A290890(n)]-A024495(n)]`
-/

namespace A291021.P17260208705841423777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291021.P17260208705841423777

namespace A291021

/-- `Δ[∑[A290890(n)]-A024495(n)]` -/
def P17260208705841423777.Spec : Prop :=
  ∀ n, P17260208705841423777.a n = A291021 n

end A291021

/-! ## A291021.P661447030005974390

`Δ[A109961(n+1)-A024495(n)]`
-/

namespace A291021.P661447030005974390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 (n + 1) - A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291021.P661447030005974390

namespace A291021

/-- `Δ[A109961(n+1)-A024495(n)]` -/
def P661447030005974390.Spec : Prop :=
  ∀ n, P661447030005974390.a n = A291021 n

end A291021

/-! ## A291021.P269085850823172495

`A290890(n+1)-Δ[A024495(n)]`
-/

namespace A291021.P269085850823172495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290890 (n + 1) - (f1 (n + 1) - f1 n)

end

end A291021.P269085850823172495

namespace A291021

/-- `A290890(n+1)-Δ[A024495(n)]` -/
def P269085850823172495.Spec : Prop :=
  ∀ n, P269085850823172495.a n = A291021 n

end A291021

/-! ## A291021.P12782636110824978117

`6*a(n-1)-13*a(n-2)+14*a(n-3)-9*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=25, a(4)=67`
-/

namespace A291021.P12782636110824978117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 25, 67] fun n a =>
  6 * a (n - 1) - 13 * a (n - 2) + 14 * a (n - 3) - 9 * a (n - 4) + 2 * a (n - 5)

end

end A291021.P12782636110824978117

namespace A291021

/-- `6*a(n-1)-13*a(n-2)+14*a(n-3)-9*a(n-4)+2*a(n-5)` -/
def P12782636110824978117.Spec : Prop :=
  ∀ n, P12782636110824978117.a n = A291021 n

end A291021

/-!
# A291022: Even numbers m such that every odd divisor > 1 of m is the sum of two divisors.

The programs for A291022, there is no canonical definition to state claims against.
-/

/-! ## A291022.P12052745884174851656

`∩[A352030(n+1), A364560(n+1)]`
-/

namespace A291022.P12052745884174851656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291022.P12052745884174851656

/-! ## A291022.P6717717996622885

`lt[A084376(n), A045503(A032741(n))]`
-/

namespace A291022.P6717717996622885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291022.P6717717996622885

/-! ## A291022.P1311243548109634962

`lt[A040972(n+1), A055012(A032741(n))]`
-/

namespace A291022.P1311243548109634962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291022.P1311243548109634962

/-! ## A291022.P1074891602961211031

`lt[A050626(n+1), A118880(A032741(n))]`
-/

namespace A291022.P1074891602961211031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291022.P1074891602961211031

/-!
# A291023: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - 3 S^2 + 2 S^3.

The programs for A291023, the canonical program `A291023.P16630015558338509483` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291023 has offset 0).

The definition of A291023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291023.P16630015558338509483

`3*a(n-1)-4*a(n-3)` with `a(0)=0, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291023

/-- `3*a(n-1)-4*a(n-3)` -/
def P16630015558338509483.Spec : Prop :=
  ∀ n, P16630015558338509483.a n = A291023 n

theorem P16630015558338509483.correct : P16630015558338509483.Spec := by
  intro n
  simp only [A291023]

end A291023

/-! ## A291023.P14551037195477480398

`A172481(n)-A033999(n)`
-/

namespace A291023.P14551037195477480398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A033999 n

end

end A291023.P14551037195477480398

namespace A291023

/-- `A172481(n)-A033999(n)` -/
def P14551037195477480398.Spec : Prop :=
  ∀ n, P14551037195477480398.a n = A291023 n

end A291023

/-! ## A291023.P15052073591157381320

`A175656(n)-A078008(n)`
-/

namespace A291023.P15052073591157381320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 n - A078008 n

end

end A291023.P15052073591157381320

namespace A291023

/-- `A175656(n)-A078008(n)` -/
def P15052073591157381320.Spec : Prop :=
  ∀ n, P15052073591157381320.a n = A291023 n

end A291023

/-! ## A291023.P11734049715195571467

`A175656(n)-Δ[A001045(n)]`
-/

namespace A291023.P11734049715195571467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 n - (f1 (n + 1) - f1 n)

end

end A291023.P11734049715195571467

namespace A291023

/-- `A175656(n)-Δ[A001045(n)]` -/
def P11734049715195571467.Spec : Prop :=
  ∀ n, P11734049715195571467.a n = A291023 n

end A291023

/-! ## A291023.P8970384490052245265

`Δ[A101622(n)]-A139790(n)`
-/

namespace A291023.P8970384490052245265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A139790 n

end

end A291023.P8970384490052245265

namespace A291023

/-- `Δ[A101622(n)]-A139790(n)` -/
def P8970384490052245265.Spec : Prop :=
  ∀ n, P8970384490052245265.a n = A291023 n

end A291023

/-! ## A291023.P16721818223440142276

`A001045(n)+A172481(n)-A078008(n)`
-/

namespace A291023.P16721818223440142276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A172481 n - A078008 n)

end

end A291023.P16721818223440142276

namespace A291023

/-- `A001045(n)+A172481(n)-A078008(n)` -/
def P16721818223440142276.Spec : Prop :=
  ∀ n, P16721818223440142276.a n = A291023 n

end A291023

/-! ## A291023.P11478419826260509581

`A139797(n)+A172481(n)-A348405(n)`
-/

namespace A291023.P11478419826260509581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 n + (A172481 n - A348405 n)

end

end A291023.P11478419826260509581

namespace A291023

/-- `A139797(n)+A172481(n)-A348405(n)` -/
def P11478419826260509581.Spec : Prop :=
  ∀ n, P11478419826260509581.a n = A291023 n

end A291023

/-! ## A291023.P10236529099116961262

`A001045(n)+A175656(n)-A001045(n+1)`
-/

namespace A291023.P10236529099116961262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A175656 n - A001045 (n + 1))

end

end A291023.P10236529099116961262

namespace A291023

/-- `A001045(n)+A175656(n)-A001045(n+1)` -/
def P10236529099116961262.Spec : Prop :=
  ∀ n, P10236529099116961262.a n = A291023 n

end A291023

/-! ## A291023.P7559299097482388122

`abs(∑[A081037(n+1)]+1)`
-/

namespace A291023.P7559299097482388122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A291023.P7559299097482388122

namespace A291023

/-- `abs(∑[A081037(n+1)]+1)` -/
def P7559299097482388122.Spec : Prop :=
  ∀ n, P7559299097482388122.a n = A291023 n

end A291023

/-! ## A291023.P147179588952607262

`A045891(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A291023.P147179588952607262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A045891 (n + 1) - a (n - 1)

end

end A291023.P147179588952607262

namespace A291023

/-- `A045891(n+1)-a(n-1)` -/
def P147179588952607262.Spec : Prop :=
  ∀ n, P147179588952607262.a n = A291023 n

end A291023

/-! ## A291023.P2232015772593134667

`Δ[A172481(n)-A001045(n)]`
-/

namespace A291023.P2232015772593134667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291023.P2232015772593134667

namespace A291023

/-- `Δ[A172481(n)-A001045(n)]` -/
def P2232015772593134667.Spec : Prop :=
  ∀ n, P2232015772593134667.a n = A291023 n

end A291023

/-! ## A291023.P8438314755333046564

`Δ[A084640(n)-A139790(n)]`
-/

namespace A291023.P8438314755333046564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084640 n - A139790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291023.P8438314755333046564

namespace A291023

/-- `Δ[A084640(n)-A139790(n)]` -/
def P8438314755333046564.Spec : Prop :=
  ∀ n, P8438314755333046564.a n = A291023 n

end A291023

/-! ## A291023.P7197183501487577999

`A045623(n)+2^n-a(n-1)-A011782(n)` with `a(0)=0`
-/

namespace A291023.P7197183501487577999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A045623 n + (2 ^ n : ℤ) - a (n - 1) - A011782 n

end

end A291023.P7197183501487577999

namespace A291023

/-- `A045623(n)+2^n-a(n-1)-A011782(n)` -/
def P7197183501487577999.Spec : Prop :=
  ∀ n, P7197183501487577999.a n = A291023 n

end A291023

/-! ## A291023.P14964075667079398164

`A045623(n)+2^n-a(n-1)-A131577(n)` with `a(0)=0`
-/

namespace A291023.P14964075667079398164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A045623 n + (2 ^ n : ℤ) - a (n - 1) - A131577 n

end

end A291023.P14964075667079398164

namespace A291023

/-- `A045623(n)+2^n-a(n-1)-A131577(n)` -/
def P14964075667079398164.Spec : Prop :=
  ∀ n, P14964075667079398164.a n = A291023 n

end A291023

/-! ## A291023.P8865812420245728527

`A172481(n+1)-(A172481(n)+A078008(n))`
-/

namespace A291023.P8865812420245728527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 (n + 1) - (A172481 n + A078008 n)

end

end A291023.P8865812420245728527

namespace A291023

/-- `A172481(n+1)-(A172481(n)+A078008(n))` -/
def P8865812420245728527.Spec : Prop :=
  ∀ n, P8865812420245728527.a n = A291023 n

end A291023

/-! ## A291023.P792408098922748552

`A127976(n+2)+A099429(n)-A073371(n)`
-/

namespace A291023.P792408098922748552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 2) + (A099429 n - A073371 n)

end

end A291023.P792408098922748552

namespace A291023

/-- `A127976(n+2)+A099429(n)-A073371(n)` -/
def P792408098922748552.Spec : Prop :=
  ∀ n, P792408098922748552.a n = A291023 n

end A291023

/-! ## A291023.P1192710023747050088

`Δ[abs(∑[ceil((n+3)*(-2)^(n-2))])]`
-/

namespace A291023.P1192710023747050088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291023.P1192710023747050088

namespace A291023

/-- `Δ[abs(∑[ceil((n+3)*(-2)^(n-2))])]` -/
def P1192710023747050088.Spec : Prop :=
  ∀ n, P1192710023747050088.a n = A291023 n

end A291023

/-! ## A291023.P14971955842151161701

`abs(Δ[abs(A084219(n))])`
-/

namespace A291023.P14971955842151161701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084219 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A291023.P14971955842151161701

namespace A291023

/-- `abs(Δ[abs(A084219(n))])` -/
def P14971955842151161701.Spec : Prop :=
  ∀ n, P14971955842151161701.a n = A291023 n

end A291023

/-!
# A291024: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - 2 S^2)^2.

The programs for A291024, the canonical program `A291024.P6140341672842358635` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291024 has offset 0).

The definition of A291024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291024.P6140341672842358635

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=8, a(3)=24`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291024

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P6140341672842358635.Spec : Prop :=
  ∀ n, P6140341672842358635.a n = A291024 n

theorem P6140341672842358635.correct : P6140341672842358635.Spec := by
  intro n
  simp only [A291024]

end A291024

/-! ## A291024.P15896975904341091216

`4*A291142(n)`
-/

namespace A291024.P15896975904341091216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A291142 n

end

end A291024.P15896975904341091216

namespace A291024

/-- `4*A291142(n)` -/
def P15896975904341091216.Spec : Prop :=
  ∀ n, P15896975904341091216.a n = A291024 n

end A291024

/-! ## A291024.P14028695195319287670

`Δ[A093969(n+1)+A000129(n)]`
-/

namespace A291024.P14028695195319287670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093969 (n + 1) + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291024.P14028695195319287670

namespace A291024

/-- `Δ[A093969(n+1)+A000129(n)]` -/
def P14028695195319287670.Spec : Prop :=
  ∀ n, P14028695195319287670.a n = A291024 n

end A291024

/-! ## A291024.P287060995015776403

`A001333(n)+Δ[A093969(n+1)]`
-/

namespace A291024.P287060995015776403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (f1 (n + 1) - f1 n)

end

end A291024.P287060995015776403

namespace A291024

/-- `A001333(n)+Δ[A093969(n+1)]` -/
def P287060995015776403.Spec : Prop :=
  ∀ n, P287060995015776403.a n = A291024 n

end A291024

/-! ## A291024.P8794415512534103311

`∑[2*(A093969(n)+A000129(n))]`
-/

namespace A291024.P8794415512534103311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A093969 n + A000129 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291024.P8794415512534103311

namespace A291024

/-- `∑[2*(A093969(n)+A000129(n))]` -/
def P8794415512534103311.Spec : Prop :=
  ∀ n, P8794415512534103311.a n = A291024 n

end A291024

/-! ## A291024.P16535487308576910303

`4*(Δ[A006645(n)]-A006645(n))`
-/

namespace A291024.P16535487308576910303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n - A006645 n)

end

end A291024.P16535487308576910303

namespace A291024

/-- `4*(Δ[A006645(n)]-A006645(n))` -/
def P16535487308576910303.Spec : Prop :=
  ∀ n, P16535487308576910303.a n = A291024 n

end A291024

/-!
# A291025: p-INVERT of the positive integers, where p(S) = 1 - 3*S + S^2.

The programs for A291025, the canonical program `A291025.P4272740882030103583` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291025 has offset 0).

The definition of A291025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291025.P4272740882030103583

`7*a(n-1)-13*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=3, a(1)=14, a(2)=62, a(3)=273`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291025

/-- `7*a(n-1)-13*a(n-2)+7*a(n-3)-a(n-4)` -/
def P4272740882030103583.Spec : Prop :=
  ∀ n, P4272740882030103583.a n = A291025 n

theorem P4272740882030103583.correct : P4272740882030103583.Spec := by
  intro n
  simp only [A291025]

end A291025

/-! ## A291025.P4731496922102446846

`Δ[A289846(2*n)]`
-/

namespace A291025.P4731496922102446846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291025.P4731496922102446846

namespace A291025

/-- `Δ[A289846(2*n)]` -/
def P4731496922102446846.Spec : Prop :=
  ∀ n, P4731496922102446846.a n = A291025 n

end A291025

/-! ## A291025.P12071709415940226492

`Δ[A131322(2*n)+A112576(2*n)]`
-/

namespace A291025.P12071709415940226492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (2 * n) + A112576 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291025.P12071709415940226492

namespace A291025

/-- `Δ[A131322(2*n)+A112576(2*n)]` -/
def P12071709415940226492.Spec : Prop :=
  ∀ n, P12071709415940226492.a n = A291025 n

end A291025

/-! ## A291025.P8978743807442828176

`A289846(2*(n+1))-A289846(2*n)`
-/

namespace A291025.P8978743807442828176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (2 * (n + 1)) - A289846 (2 * n)

end

end A291025.P8978743807442828176

namespace A291025

/-- `A289846(2*(n+1))-A289846(2*n)` -/
def P8978743807442828176.Spec : Prop :=
  ∀ n, P8978743807442828176.a n = A291025 n

end A291025

/-! ## A291025.P4676892278816017232

`A289846(2*n+1)+∑[A289846(2*n)]`
-/

namespace A291025.P4676892278816017232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291025.P4676892278816017232

namespace A291025

/-- `A289846(2*n+1)+∑[A289846(2*n)]` -/
def P4676892278816017232.Spec : Prop :=
  ∀ n, P4676892278816017232.a n = A291025 n

end A291025

/-! ## A291025.P15824851144221350648

`A131322(2*n+1)+Δ[A131322(2*n)]`
-/

namespace A291025.P15824851144221350648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A291025.P15824851144221350648

namespace A291025

/-- `A131322(2*n+1)+Δ[A131322(2*n)]` -/
def P15824851144221350648.Spec : Prop :=
  ∀ n, P15824851144221350648.a n = A291025 n

end A291025

/-! ## A291025.P5405912957171728100

`A289846(2*n+1)+A131322(2*n+1)`
-/

namespace A291025.P5405912957171728100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (2 * n + 1) + A131322 (2 * n + 1)

end

end A291025.P5405912957171728100

namespace A291025

/-- `A289846(2*n+1)+A131322(2*n+1)` -/
def P5405912957171728100.Spec : Prop :=
  ∀ n, P5405912957171728100.a n = A291025 n

end A291025

/-! ## A291025.P1039154017156258555

`A131246(2*(n+1))-A131246(2*n+1)`
-/

namespace A291025.P1039154017156258555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131246 (2 * (n + 1)) - A131246 (2 * n + 1)

end

end A291025.P1039154017156258555

namespace A291025

/-- `A131246(2*(n+1))-A131246(2*n+1)` -/
def P1039154017156258555.Spec : Prop :=
  ∀ n, P1039154017156258555.a n = A291025 n

end A291025

/-! ## A291025.P6783497037424316172

`A183314(2*(n+1))-A183314(2*n+1)`
-/

namespace A291025.P6783497037424316172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183314 (2 * (n + 1)) - A183314 (2 * n + 1)

end

end A291025.P6783497037424316172

namespace A291025

/-- `A183314(2*(n+1))-A183314(2*n+1)` -/
def P6783497037424316172.Spec : Prop :=
  ∀ n, P6783497037424316172.a n = A291025 n

end A291025

/-! ## A291025.P7395575477852744356

`A112576(2*n+1)+2*A131322(2*n+1)`
-/

namespace A291025.P7395575477852744356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (2 * n + 1) + 2 * A131322 (2 * n + 1)

end

end A291025.P7395575477852744356

namespace A291025

/-- `A112576(2*n+1)+2*A131322(2*n+1)` -/
def P7395575477852744356.Spec : Prop :=
  ∀ n, P7395575477852744356.a n = A291025 n

end A291025

/-!
# A291026: p-INVERT of the positive integers, where p(S) = 1 - 4*S + S^2.

The programs for A291026, the canonical program `A291026.P12391869274167040802` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291026 has offset 0).

The definition of A291026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291026.P12391869274167040802

`8*a(n-1)-15*a(n-2)+8*a(n-3)-a(n-4)` with `a(0)=4, a(1)=23, a(2)=128, a(3)=711`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291026

/-- `8*a(n-1)-15*a(n-2)+8*a(n-3)-a(n-4)` -/
def P12391869274167040802.Spec : Prop :=
  ∀ n, P12391869274167040802.a n = A291026 n

theorem P12391869274167040802.correct : P12391869274167040802.Spec := by
  intro n
  simp only [A291026]

end A291026

/-!
# A291027: p-INVERT of the positive integers, where p(S) = 1 - 5*S + S^2.

The programs for A291027, there is no canonical definition to state claims against.
-/

/-! ## A291027.P1412042040513066180

`A314167(A195178(a(n-1)))` with `a(0)=5`
-/

namespace A291027.P1412042040513066180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A314167 (A195178 (a (n - 1)).toNat).toNat

end

end A291027.P1412042040513066180

/-!
# A291029: p-INVERT of the positive integers, where p(S) = 1 - S - S^2 - S^3.

The programs for A291029, there is no canonical definition to state claims against.
-/

/-! ## A291029.P473865611583266929

`A001281(A291032(n)+A291030(n))`
-/

namespace A291029.P473865611583266929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A291032 n + A291030 n).toNat

end

end A291029.P473865611583266929

/-! ## A291029.P4307160525176233011

`A004526(A291032(n)+A291030(n))`
-/

namespace A291029.P4307160525176233011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A291032 n + A291030 n).toNat

end

end A291029.P4307160525176233011

/-! ## A291029.P8230164073590305605

`A025480(A291032(n)+A291030(n))`
-/

namespace A291029.P8230164073590305605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A291032 n + A291030 n).toNat

end

end A291029.P8230164073590305605

/-!
# A291030: p-INVERT of the positive integers, where p(S) = 1 - S - S^2 - S^3 - S^4.

The programs for A291030, there is no canonical definition to state claims against.
-/

/-! ## A291030.P9744432610708734826

`A028310(A153234(n)+A060111(n))`
-/

namespace A291030.P9744432610708734826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A153234 n + A060111 n).toNat

end

end A291030.P9744432610708734826

/-! ## A291030.P14533291401604591335

`A217779(n)-A122303(A001207(n+1)-A121220(n+1))`
-/

namespace A291030.P14533291401604591335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217779 n - A122303 (A001207 (n + 1) - A121220 (n + 1)).toNat

end

end A291030.P14533291401604591335

/-!
# A291032: p-INVERT of the positive integers, where p(S) = 1 - S - S^2 - S^3 + S^4.

The programs for A291032, there is no canonical definition to state claims against.
-/

/-! ## A291032.P14476211198824662332

`∑[∏{p}[(n-A070031(n))², #]]`
-/

namespace A291032.P14476211198824662332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A070031 n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291032.P14476211198824662332

/-! ## A291032.P917224588521001507

`A247987(A056236(n)-1)`
-/

namespace A291032.P917224588521001507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247987 (A056236 n - 1).toNat

end

end A291032.P917224588521001507

/-!
# A291033: p-INVERT of the positive integers, where p(S) = 1 - 6*S.

The programs for A291033, the canonical program `A291033.P14760350829662681155` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291033 has offset 0).

The definition of A291033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291033.P14760350829662681155

`8*a(n-1)-a(n-2)` with `a(0)=6, a(1)=48`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291033

/-- `8*a(n-1)-a(n-2)` -/
def P14760350829662681155.Spec : Prop :=
  ∀ n, P14760350829662681155.a n = A291033 n

theorem P14760350829662681155.correct : P14760350829662681155.Spec := by
  intro n
  simp only [A291033]

end A291033

/-! ## A291033.P12327845287596578710

`Δ[A070997(n)]`
-/

namespace A291033.P12327845287596578710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291033.P12327845287596578710

namespace A291033

/-- `Δ[A070997(n)]` -/
def P12327845287596578710.Spec : Prop :=
  ∀ n, P12327845287596578710.a n = A291033 n

end A291033

/-! ## A291033.P4958176037473987484

`Δ[Δ[A001090(n)]]`
-/

namespace A291033.P4958176037473987484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291033.P4958176037473987484

namespace A291033

/-- `Δ[Δ[A001090(n)]]` -/
def P4958176037473987484.Spec : Prop :=
  ∀ n, P4958176037473987484.a n = A291033 n

end A291033

/-! ## A291033.P4989183683919518193

`Δ[A041023(2*n)]`
-/

namespace A291033.P4989183683919518193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291033.P4989183683919518193

namespace A291033

/-- `Δ[A041023(2*n)]` -/
def P4989183683919518193.Spec : Prop :=
  ∀ n, P4989183683919518193.a n = A291033 n

end A291033

/-! ## A291033.P7161529651102044763

`Δ[2*A145608(n)]`
-/

namespace A291033.P7161529651102044763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291033.P7161529651102044763

namespace A291033

/-- `Δ[2*A145608(n)]` -/
def P7161529651102044763.Spec : Prop :=
  ∀ n, P7161529651102044763.a n = A291033 n

end A291033

/-! ## A291033.P14611050894221484412

`Δ[2*A182432(n)]`
-/

namespace A291033.P14611050894221484412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291033.P14611050894221484412

namespace A291033

/-- `Δ[2*A182432(n)]` -/
def P14611050894221484412.Spec : Prop :=
  ∀ n, P14611050894221484412.a n = A291033 n

end A291033

/-! ## A291033.P15480379572527359467

`Δ[A080871(Δ[n²])]`
-/

namespace A291033.P15480379572527359467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291033.P15480379572527359467

namespace A291033

/-- `Δ[A080871(Δ[n²])]` -/
def P15480379572527359467.Spec : Prop :=
  ∀ n, P15480379572527359467.a n = A291033 n

end A291033

/-! ## A291033.P1718690590011307982

`Δ[A145542(Δ[n²])]`
-/

namespace A291033.P1718690590011307982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145542 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291033.P1718690590011307982

namespace A291033

/-- `Δ[A145542(Δ[n²])]` -/
def P1718690590011307982.Spec : Prop :=
  ∀ n, P1718690590011307982.a n = A291033 n

end A291033

/-! ## A291033.P18424898120592935976

`2*A136325(n+1)`
-/

namespace A291033.P18424898120592935976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136325 (n + 1)

end

end A291033.P18424898120592935976

namespace A291033

/-- `2*A136325(n+1)` -/
def P18424898120592935976.Spec : Prop :=
  ∀ n, P18424898120592935976.a n = A291033 n

end A291033

/-! ## A291033.P15549098870030507169

`6*A001090(n+1)`
-/

namespace A291033.P15549098870030507169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001090 (n + 1)

end

end A291033.P15549098870030507169

namespace A291033

/-- `6*A001090(n+1)` -/
def P15549098870030507169.Spec : Prop :=
  ∀ n, P15549098870030507169.a n = A291033 n

end A291033

/-! ## A291033.P13694452311515663937

`2*A145542(2*(n+1))`
-/

namespace A291033.P13694452311515663937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145542 (2 * (n + 1))

end

end A291033.P13694452311515663937

namespace A291033

/-- `2*A145542(2*(n+1))` -/
def P13694452311515663937.Spec : Prop :=
  ∀ n, P13694452311515663937.a n = A291033 n

end A291033

/-! ## A291033.P15553207515947660280

`6*A041023(2*n+1)`
-/

namespace A291033.P15553207515947660280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A041023 (2 * n + 1)

end

end A291033.P15553207515947660280

namespace A291033

/-- `6*A041023(2*n+1)` -/
def P15553207515947660280.Spec : Prop :=
  ∀ n, P15553207515947660280.a n = A291033 n

end A291033

/-! ## A291033.P8698122821347410284

`A341927(n+1)+A001090(n)`
-/

namespace A291033.P8698122821347410284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341927 (n + 1) + A001090 n

end

end A291033.P8698122821347410284

namespace A291033

/-- `A341927(n+1)+A001090(n)` -/
def P8698122821347410284.Spec : Prop :=
  ∀ n, P8698122821347410284.a n = A291033 n

end A291033

/-! ## A291033.P12599024867344734851

`A070997(n+1)-A070997(n)`
-/

namespace A291033.P12599024867344734851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 (n + 1) - A070997 n

end

end A291033.P12599024867344734851

namespace A291033

/-- `A070997(n+1)-A070997(n)` -/
def P12599024867344734851.Spec : Prop :=
  ∀ n, P12599024867344734851.a n = A291033 n

end A291033

/-! ## A291033.P8084696477841567272

`A098306(n+2)-A098306(n)`
-/

namespace A291033.P8084696477841567272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098306 (n + 2) - A098306 n

end

end A291033.P8084696477841567272

namespace A291033

/-- `A098306(n+2)-A098306(n)` -/
def P8084696477841567272.Spec : Prop :=
  ∀ n, P8084696477841567272.a n = A291033 n

end A291033

/-! ## A291033.P7160925514577518989

`Δ[A098306(n+1)+A098306(n)]`
-/

namespace A291033.P7160925514577518989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098306 (n + 1) + A098306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291033.P7160925514577518989

namespace A291033

/-- `Δ[A098306(n+1)+A098306(n)]` -/
def P7160925514577518989.Spec : Prop :=
  ∀ n, P7160925514577518989.a n = A291033 n

end A291033

/-! ## A291033.P7664528616702784344

`A001090(n+2)-A341929(n+1)`
-/

namespace A291033.P7664528616702784344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 2) - A341929 (n + 1)

end

end A291033.P7664528616702784344

namespace A291033

/-- `A001090(n+2)-A341929(n+1)` -/
def P7664528616702784344.Spec : Prop :=
  ∀ n, P7664528616702784344.a n = A291033 n

end A291033

/-! ## A291033.P2106491820822513845

`A177187(2*n+1)+A105426(n+1)`
-/

namespace A291033.P2106491820822513845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (2 * n + 1) + A105426 (n + 1)

end

end A291033.P2106491820822513845

namespace A291033

/-- `A177187(2*n+1)+A105426(n+1)` -/
def P2106491820822513845.Spec : Prop :=
  ∀ n, P2106491820822513845.a n = A291033 n

end A291033

/-! ## A291033.P16723006950031631682

`2*(A105426(n+1)-A341929(n+1))`
-/

namespace A291033.P16723006950031631682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A105426 (n + 1) - A341929 (n + 1))

end

end A291033.P16723006950031631682

namespace A291033

/-- `2*(A105426(n+1)-A341929(n+1))` -/
def P16723006950031631682.Spec : Prop :=
  ∀ n, P16723006950031631682.a n = A291033 n

end A291033

/-!
# A291034: p-INVERT of the positive integers, where p(S) = 1 - 7*S.

The programs for A291034, the canonical program `A291034.P18289678969807187720` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291034 has offset 0).

The definition of A291034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291034.P18289678969807187720

`9*a(n-1)-a(n-2)` with `a(0)=7, a(1)=63`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291034

/-- `9*a(n-1)-a(n-2)` -/
def P18289678969807187720.Spec : Prop :=
  ∀ n, P18289678969807187720.a n = A291034 n

theorem P18289678969807187720.correct : P18289678969807187720.Spec := by
  intro n
  simp only [A291034]

end A291034

/-! ## A291034.P6320488899398427872

`Δ[A070998(n)]`
-/

namespace A291034.P6320488899398427872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291034.P6320488899398427872

namespace A291034

/-- `Δ[A070998(n)]` -/
def P6320488899398427872.Spec : Prop :=
  ∀ n, P6320488899398427872.a n = A291034 n

end A291034

/-! ## A291034.P15354990718387351941

`Δ[Δ[A018913(n)]]`
-/

namespace A291034.P15354990718387351941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291034.P15354990718387351941

namespace A291034

/-- `Δ[Δ[A018913(n)]]` -/
def P15354990718387351941.Spec : Prop :=
  ∀ n, P15354990718387351941.a n = A291034 n

end A291034

/-! ## A291034.P3143233404515938899

`7*A018913(n+1)`
-/

namespace A291034.P3143233404515938899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A018913 (n + 1)

end

end A291034.P3143233404515938899

namespace A291034

/-- `7*A018913(n+1)` -/
def P3143233404515938899.Spec : Prop :=
  ∀ n, P3143233404515938899.a n = A291034 n

end A291034

/-! ## A291034.P11103153818513886571

`A070998(n+1)-A070998(n)`
-/

namespace A291034.P11103153818513886571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070998 (n + 1) - A070998 n

end

end A291034.P11103153818513886571

namespace A291034

/-- `A070998(n+1)-A070998(n)` -/
def P11103153818513886571.Spec : Prop :=
  ∀ n, P11103153818513886571.a n = A291034 n

end A291034

/-! ## A291034.P15488487598557366899

`A098307(n+2)-A098307(n)`
-/

namespace A291034.P15488487598557366899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098307 (n + 2) - A098307 n

end

end A291034.P15488487598557366899

namespace A291034

/-- `A098307(n+2)-A098307(n)` -/
def P15488487598557366899.Spec : Prop :=
  ∀ n, P15488487598557366899.a n = A291034 n

end A291034

/-! ## A291034.P16275523472687533116

`Δ[A098307(n+1)+A098307(n)]`
-/

namespace A291034.P16275523472687533116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098307 (n + 1) + A098307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291034.P16275523472687533116

namespace A291034

/-- `Δ[A098307(n+1)+A098307(n)]` -/
def P16275523472687533116.Spec : Prop :=
  ∀ n, P16275523472687533116.a n = A291034 n

end A291034

/-! ## A291034.P15845804556114936539

`A018913(n+1)+A065100(n)+A065100(n)`
-/

namespace A291034.P15845804556114936539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (n + 1) + (A065100 n + A065100 n)

end

end A291034.P15845804556114936539

namespace A291034

/-- `A018913(n+1)+A065100(n)+A065100(n)` -/
def P15845804556114936539.Spec : Prop :=
  ∀ n, P15845804556114936539.a n = A291034 n

end A291034

/-! ## A291034.P17321465638975268005

`Δ[sqrt(A098307(Δ[n²]))]`
-/

namespace A291034.P17321465638975268005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A098307 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291034.P17321465638975268005

namespace A291034

/-- `Δ[sqrt(A098307(Δ[n²]))]` -/
def P17321465638975268005.Spec : Prop :=
  ∀ n, P17321465638975268005.a n = (A291034 n : ℝ)

end A291034

/-!
# A291035: p-INVERT of (1,0,0,1,0,0,1,0,0,...), where p(S) = 1 - S - 2 S^2.

The programs for A291035, the canonical program `A291035.P2930398902203463364` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291035 has offset 0).

The definition of A291035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291035.P2930398902203463364

`a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=12, a(4)=27, a(5)=58`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291035

/-- `a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)-a(n-6)` -/
def P2930398902203463364.Spec : Prop :=
  ∀ n, P2930398902203463364.a n = A291035 n

theorem P2930398902203463364.correct : P2930398902203463364.Spec := by
  intro n
  simp only [A291035]

end A291035

/-! ## A291035.P2305062090170701786

`A304818(A069505(n))+1`
-/

namespace A291035.P2305062090170701786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (A069505 n).toNat + 1

end

end A291035.P2305062090170701786

namespace A291035

/-- `A304818(A069505(n))+1` -/
def P2305062090170701786.Spec : Prop :=
  ∀ n, P2305062090170701786.a n = A291035 n

end A291035

/-! ## A291035.P11252697052460782168

`A225687(A184438(n+2))`
-/

namespace A291035.P11252697052460782168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A184438 (n + 2)).toNat

end

end A291035.P11252697052460782168

namespace A291035

/-- `A225687(A184438(n+2))` -/
def P11252697052460782168.Spec : Prop :=
  ∀ n, P11252697052460782168.a n = A291035 n

end A291035

/-!
# A291036: p-INVERT of (1,0,0,1,0,0,1,0,0,...), where p(S) = 1 - 2 S - 2 S^2.

The programs for A291036, the canonical program `A291036.P8760490734071595024` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291036 has offset 0).

The definition of A291036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291036.P8760490734071595024

`2*a(n-1)+2*a(n-2)+2*a(n-3)-2*a(n-4)-a(n-6)` with `a(0)=2, a(1)=6, a(2)=16, a(3)=46, a(4)=132, a(5)=376`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291036

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)-2*a(n-4)-a(n-6)` -/
def P8760490734071595024.Spec : Prop :=
  ∀ n, P8760490734071595024.a n = A291036 n

theorem P8760490734071595024.correct : P8760490734071595024.Spec := by
  intro n
  simp only [A291036]

end A291036

/-! ## A291036.P3165861713220884262

`2*A291037(n)`
-/

namespace A291036.P3165861713220884262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291037 n

end

end A291036.P3165861713220884262

namespace A291036

/-- `2*A291037(n)` -/
def P3165861713220884262.Spec : Prop :=
  ∀ n, P3165861713220884262.a n = A291036 n

end A291036

/-! ## A291036.P10305072515924784848

`A291037(n)+A291037(n%(n+1))`
-/

namespace A291036.P10305072515924784848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291037 n + A291037 (n % (n + 1))

end

end A291036.P10305072515924784848

namespace A291036

/-- `A291037(n)+A291037(n%(n+1))` -/
def P10305072515924784848.Spec : Prop :=
  ∀ n, P10305072515924784848.a n = A291036 n

end A291036

/-! ## A291036.P5610389093169612533

`A291037(A005843(n)/2)+A291037(n)`
-/

namespace A291036.P5610389093169612533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291037 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A291037 n

end

end A291036.P5610389093169612533

namespace A291036

/-- `A291037(A005843(n)/2)+A291037(n)` -/
def P5610389093169612533.Spec : Prop :=
  ∀ n, P5610389093169612533.a n = A291036 n

end A291036

/-! ## A291036.P8674879794343478343

`A291037(A005843(n)-n)+A291037(n)`
-/

namespace A291036.P8674879794343478343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291037 (A005843 n - (n : ℤ)).toNat + A291037 n

end

end A291036.P8674879794343478343

namespace A291036

/-- `A291037(A005843(n)-n)+A291037(n)` -/
def P8674879794343478343.Spec : Prop :=
  ∀ n, P8674879794343478343.a n = A291036 n

end A291036

/-! ## A291036.P10405866693003760565

`A291037(n)+or(A000007(n), A291037(n))`
-/

namespace A291036.P10405866693003760565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291037 n + Int.lor (A000007 n) (A291037 n)

end

end A291036.P10405866693003760565

namespace A291036

/-- `A291037(n)+or(A000007(n), A291037(n))` -/
def P10405866693003760565.Spec : Prop :=
  ∀ n, P10405866693003760565.a n = A291036 n

end A291036

/-! ## A291036.P13868281665500833904

`A291037(n)+A291037(n)%A291025(n)`
-/

namespace A291036.P13868281665500833904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291037 n + Int.tmod (A291037 n) (A291025 n)

end

end A291036.P13868281665500833904

namespace A291036

/-- `A291037(n)+A291037(n)%A291025(n)` -/
def P13868281665500833904.Spec : Prop :=
  ∀ n, P13868281665500833904.a n = A291036 n

end A291036

/-!
# A291037: a(n) = (1/2)*A291036(n).

The programs for A291037, the canonical program `A291037.P8734962742569521199` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291037 has offset 0).

The definition of A291037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291037.P8734962742569521199

`2*a(n-1)+2*a(n-2)+2*a(n-3)-2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=23, a(4)=66, a(5)=188`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291037

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)-2*a(n-4)-a(n-6)` -/
def P8734962742569521199.Spec : Prop :=
  ∀ n, P8734962742569521199.a n = A291037 n

theorem P8734962742569521199.correct : P8734962742569521199.Spec := by
  intro n
  simp only [A291037]

end A291037

/-! ## A291037.P14214057989663526374

`1/2*A291036(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291037.P14214057989663526374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A291036 n : ℚ)

end

end A291037.P14214057989663526374

namespace A291037

/-- `1/2*A291036(n)` -/
def P14214057989663526374.Spec : Prop :=
  ∀ n, P14214057989663526374.a n = (A291037 n : ℚ)

end A291037

/-! ## A291037.P603966099951397425

`A291036(n)/2`
-/

namespace A291037.P603966099951397425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291036 n : ℚ) / 2

end

end A291037.P603966099951397425

namespace A291037

/-- `A291036(n)/2` -/
def P603966099951397425.Spec : Prop :=
  ∀ n, P603966099951397425.a n = (A291037 n : ℚ)

end A291037

/-! ## A291037.P9939056700517413619

`record[ratio[A291036(A142150(n))]]`
-/

namespace A291037.P9939056700517413619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291036 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291037.P9939056700517413619

namespace A291037

/-- `record[ratio[A291036(A142150(n))]]` -/
def P9939056700517413619.Spec : Prop :=
  ∀ n, P9939056700517413619.a n = (A291037 n : ℚ)

end A291037

/-! ## A291037.P4368417324882579421

`A014682(A291036(n))`
-/

namespace A291037.P4368417324882579421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A291036 n).toNat

end

end A291037.P4368417324882579421

namespace A291037

/-- `A014682(A291036(n))` -/
def P4368417324882579421.Spec : Prop :=
  ∀ n, P4368417324882579421.a n = A291037 n

end A291037

/-!
# A291038: p-INVERT of (1,0,0,1,0,0,1,0,0,...), where p(S) = (1 - 2 S)^2.

The programs for A291038, the canonical program `A291038.P5581435549148660176` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291038 has offset 0).

The definition of A291038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291038.P5581435549148660176

`4*a(n-1)-4*a(n-2)+2*a(n-3)-4*a(n-4)-a(n-6)` with `a(0)=4, a(1)=12, a(2)=32, a(3)=84, a(4)=216, a(5)=544`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291038

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)-4*a(n-4)-a(n-6)` -/
def P5581435549148660176.Spec : Prop :=
  ∀ n, P5581435549148660176.a n = A291038 n

theorem P5581435549148660176.correct : P5581435549148660176.Spec := by
  intro n
  simp only [A291038]

end A291038

/-! ## A291038.P9112081802285500140

`4*A291039(n)`
-/

namespace A291038.P9112081802285500140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A291039 n

end

end A291038.P9112081802285500140

namespace A291038

/-- `4*A291039(n)` -/
def P9112081802285500140.Spec : Prop :=
  ∀ n, P9112081802285500140.a n = A291038 n

end A291038

/-! ## A291038.P11370019168236639763

`A008574(A291039(n))`
-/

namespace A291038.P11370019168236639763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A291039 n).toNat

end

end A291038.P11370019168236639763

namespace A291038

/-- `A008574(A291039(n))` -/
def P11370019168236639763.Spec : Prop :=
  ∀ n, P11370019168236639763.a n = A291038 n

end A291038

/-! ## A291038.P12203530945337540391

`A008586(A291039(n)/A347621(n))`
-/

namespace A291038.P12203530945337540391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((A291039 n : ℚ) / (A347621 n : ℚ))).toNat

end

end A291038.P12203530945337540391

namespace A291038

/-- `A008586(A291039(n)/A347621(n))` -/
def P12203530945337540391.Spec : Prop :=
  ∀ n, P12203530945337540391.a n = A291038 n

end A291038

/-! ## A291038.P4821010614093209753

`A008586(A291039(n)^A347621(n))`
-/

namespace A291038.P4821010614093209753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((A291039 n : ℚ) ^ (A347621 n : ℤ))).toNat

end

end A291038.P4821010614093209753

namespace A291038

/-- `A008586(A291039(n)^A347621(n))` -/
def P4821010614093209753.Spec : Prop :=
  ∀ n, P4821010614093209753.a n = A291038 n

end A291038

/-!
# A291039: a(n) = (1/4)*A291038(n).

The programs for A291039, the canonical program `A291039.P8598503831684717869` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291039 has offset 0).

The definition of A291039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291039.P8598503831684717869

`4*a(n-1)-4*a(n-2)+2*a(n-3)-4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=21, a(4)=54, a(5)=136`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291039

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)-4*a(n-4)-a(n-6)` -/
def P8598503831684717869.Spec : Prop :=
  ∀ n, P8598503831684717869.a n = A291039 n

theorem P8598503831684717869.correct : P8598503831684717869.Spec := by
  intro n
  simp only [A291039]

end A291039

/-! ## A291039.P12176603524916829756

`1/4*A291038(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291039.P12176603524916829756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A291038 n : ℚ)

end

end A291039.P12176603524916829756

namespace A291039

/-- `1/4*A291038(n)` -/
def P12176603524916829756.Spec : Prop :=
  ∀ n, P12176603524916829756.a n = (A291039 n : ℚ)

end A291039

/-! ## A291039.P11189319698338972134

`A291038(n)/4`
-/

namespace A291039.P11189319698338972134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291038 n : ℚ) / 4

end

end A291039.P11189319698338972134

namespace A291039

/-- `A291038(n)/4` -/
def P11189319698338972134.Spec : Prop :=
  ∀ n, P11189319698338972134.a n = (A291039 n : ℚ)

end A291039

/-! ## A291039.P9564289181254730279

`record[ratio[A291038(A142150(n))]]`
-/

namespace A291039.P9564289181254730279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291038 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291039.P9564289181254730279

namespace A291039

/-- `record[ratio[A291038(A142150(n))]]` -/
def P9564289181254730279.Spec : Prop :=
  ∀ n, P9564289181254730279.a n = (A291039 n : ℚ)

end A291039

/-! ## A291039.P2662910327020980530

`A110962(A291038(n))`
-/

namespace A291039.P2662910327020980530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A291038 n).toNat

end

end A291039.P2662910327020980530

namespace A291039

/-- `A110962(A291038(n))` -/
def P2662910327020980530.Spec : Prop :=
  ∀ n, P2662910327020980530.a n = A291039 n

end A291039

/-!
# A291040: The arithmetic function u(n,3,2).

The programs for A291040, the canonical program `A291040.P12857434242650279119` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291040 has offset 1).

The definition of A291040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291040.P12857434242650279119

`lcm(8, (n+1)²)%3+3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291040

/-- `lcm(8, (n+1)²)%3+3` -/
def P12857434242650279119.Spec : Prop :=
  ∀ n, (P12857434242650279119.a n : ℤ) = A291040 (n + 1)

theorem P12857434242650279119.correct : P12857434242650279119.Spec := by
  intro n
  simp only [A291040, Nat.add_sub_cancel]

end A291040

/-!
# A291043: Numbers n such that psi(n) = psi(n+1), where psi(n) is Dedekind psi function (A001615).

The programs for A291043, there is no canonical definition to state claims against.
-/

/-! ## A291043.P4249669487118187603

`eq[A001615(n+2), A001615(n+3)]+2`
-/

namespace A291043.P4249669487118187603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A291043.P4249669487118187603

/-! ## A291043.P4930492701460047987

`A020725(eq[A001615(n+1), A001615(n+2)])`
-/

namespace A291043.P4930492701460047987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291043.P4930492701460047987

/-! ## A291043.P13809349905023557396

`A061767(eq[A001615(n+1), A001615(n+2)])`
-/

namespace A291043.P13809349905023557396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291043.P13809349905023557396

/-! ## A291043.P13538283276817921391

`A065475(eq[A001615(n+1), A001615(n+2)])`
-/

namespace A291043.P13538283276817921391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291043.P13538283276817921391

/-! ## A291043.P18065226273982685077

`A020725(eq[A160890(n+1), A160890(n+2)])`
-/

namespace A291043.P18065226273982685077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291043.P18065226273982685077

/-!
# A291045: Numbers with prime factorization such that the cube of a lesser prime in the factorization is greater than the square of a greater prime in the factorization.

The programs for A291045, there is no canonical definition to state claims against.
-/

/-! ## A291045.P13228207312097254593

`lt[A241919(n+1), A243056(A243057(n+1))]+1`
-/

namespace A291045.P13228207312097254593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A243057 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A291045.P13228207312097254593

/-! ## A291045.P8069804193625315699

`A343343(lt[A343343(3*(n+1)), A338825(n+3)])`
-/

namespace A291045.P8069804193625315699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338825 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291045.P8069804193625315699

/-! ## A291045.P18205920755029166491

`A318992(lt[A079562(n+5), A003991(n+1)])`
-/

namespace A291045.P18205920755029166491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079562 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318992 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291045.P18205920755029166491

/-!
# A291047: Number of ways to write 4*n+1 as p^2 + q^2 + 8*r^2, where p is prime, and q and r are nonnegative integers.

The programs for A291047, there is no canonical definition to state claims against.
-/

/-! ## A291047.P17844886480811444447

`A277017(A290697(n+6))+A185317(n)`
-/

namespace A291047.P17844886480811444447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 (A290697 (n + 6)).toNat + A185317 n

end

end A291047.P17844886480811444447

/-! ## A291047.P5365314938445805994

`or(A176811(A003973(n+1)), A176835(n+1))`
-/

namespace A291047.P5365314938445805994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A176811 (A003973 (n + 1)).toNat) (A176835 (n + 1))

end

end A291047.P5365314938445805994

/-!
# A291049: Primes of the form 2^r * 17^s + 1.

The programs for A291049, there is no canonical definition to state claims against.
-/

/-! ## A291049.P1662554067619278738

`p?[Δ[xor(n, 2^n+4)]]`
-/

namespace A291049.P1662554067619278738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 ^ n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291049.P1662554067619278738

/-! ## A291049.P17401835354749469718

`p?[A045583(n+1)+1]`
-/

namespace A291049.P17401835354749469718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291049.P17401835354749469718

/-! ## A291049.P8808788940755211947

`p?[A246595(n)+2^n]`
-/

namespace A291049.P8808788940755211947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246595 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291049.P8808788940755211947

/-!
# A291051: a(n) is the smallest number k such that psi(k) = n*phi(k) where psi(k) is Dedekind psi function (A001615) and phi(k) is Euler totient function (A000010), or 0 if no such k exists.

The programs for A291051, there is no canonical definition to state claims against.
-/

/-! ## A291051.P5756120022516208218

`∏{p}[A057771(n+3)+n, #]`
-/

namespace A291051.P5756120022516208218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057771 (n + 3) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A291051.P5756120022516208218

/-!
# A291052: Primes p such that the sum of the cubes of digits of p equals the sum of digits of p^3.

The programs for A291052, there is no canonical definition to state claims against.
-/

/-! ## A291052.P9361371683372956574

`∩[A036956(n+1), A165551(n)]`
-/

namespace A291052.P9361371683372956574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165551 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291052.P9361371683372956574

/-! ## A291052.P1049152931707223974

`∩[A036958(n+1), A165551(n)]`
-/

namespace A291052.P1049152931707223974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165551 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291052.P1049152931707223974

/-! ## A291052.P3830691489170245991

`∩[A036960(n+1), A165551(n)]`
-/

namespace A291052.P3830691489170245991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165551 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291052.P3830691489170245991

/-! ## A291052.P5955995963939945483

`p?[A165551(n)]`
-/

namespace A291052.P5955995963939945483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291052.P5955995963939945483

/-! ## A291052.P17623088480256817403

`∩[A244392(n+1), A165551(n)]`
-/

namespace A291052.P17623088480256817403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165551 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291052.P17623088480256817403

/-! ## A291052.P14850984349933301079

`∩[A386358(n+1), A165551(n)]`
-/

namespace A291052.P14850984349933301079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165551 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291052.P14850984349933301079

/-!
# A291053: Number of maximal irredundant sets in the n-Andrásfai graph.

The programs for A291053, there is no canonical definition to state claims against.
-/

/-! ## A291053.P10063665478143689348

`A286603(A022118(∑[n]))`
-/

namespace A291053.P10063665478143689348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286603 (A022118 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A291053.P10063665478143689348

/-!
# A291054: Number of maximal irredundant sets in the n-antiprism graph.

The programs for A291054, there is no canonical definition to state claims against.
-/

/-! ## A291054.P2190828380725242622

`A102576(A080258(n+1)+A002235(2*n+1))`
-/

namespace A291054.P2190828380725242622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102576 (A080258 (n + 1) + A002235 (2 * n + 1)).toNat

end

end A291054.P2190828380725242622

/-!
# A291055: Number of maximal irredundant sets in the n-path graph.

The programs for A291055, there is no canonical definition to state claims against.
-/

/-! ## A291055.P3478937884936375040

`A291439(∑[n+1])`
-/

namespace A291055.P3478937884936375040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291439 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291055.P3478937884936375040

/-! ## A291055.P7694534853575890084

`A291439(A000124(n))%42`
-/

namespace A291055.P7694534853575890084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291439 (A000124 n).toNat) 42

end

end A291055.P7694534853575890084

/-! ## A291055.P12118255294822635831

`or(A000007(n), A291439(A000124(n)))`
-/

namespace A291055.P12118255294822635831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A291439 (A000124 n).toNat)

end

end A291055.P12118255294822635831

/-! ## A291055.P14450077534791250036

`A090418(A020962(n+1))+A055500(n)`
-/

namespace A291055.P14450077534791250036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 (A020962 (n + 1)).toNat + A055500 n

end

end A291055.P14450077534791250036

/-! ## A291055.P6748501967360198548

`A173524(A002083(n+1))+A000045(n)`
-/

namespace A291055.P6748501967360198548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173524 (A002083 (n + 1)).toNat + A000045 n

end

end A291055.P6748501967360198548

/-!
# A291056: a(n) = k if the first appearance of n in A077618 is at index k, or 0 if k does not appear in A077618.

The programs for A291056, there is no canonical definition to state claims against.
-/

/-! ## A291056.P11787721936822239197

`A074258(xor(1, n)*A349362(n)+1)`
-/

namespace A291056.P11787721936822239197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074258 ((Nat.xor 1 n : ℤ) * A349362 n + 1).toNat

end

end A291056.P11787721936822239197

/-!
# A291057: Cardinality of the smallest nonempty class of length minimal languages with exactly n nonempty words each over a countably infinite alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A291057, there is no canonical definition to state claims against.
-/

/-! ## A291057.P10329187006077163452

`A007318(∑[A090035(n)^A347438(n+1)]+1)`
-/

namespace A291057.P10329187006077163452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090035 n : ℚ) ^ (A347438 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A291057.P10329187006077163452

/-! ## A291057.P5617354096591313429

`A034870(lt[A000124(n), A171020(n+1)])`
-/

namespace A291057.P5617354096591313429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291057.P5617354096591313429

/-! ## A291057.P14946962571203700654

`A007318(lt[A334752(2*n+3), A334752(n+1)])`
-/

namespace A291057.P14946962571203700654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334752 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291057.P14946962571203700654

/-! ## A291057.P18217043573266188932

`A309892(A346129(n+1)+A076278(n+1))`
-/

namespace A291057.P18217043573266188932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (A346129 (n + 1) + A076278 (n + 1)).toNat

end

end A291057.P18217043573266188932

/-!
# A291061: Number of maximal irredundant sets in the n X n black bishop graph.

The programs for A291061, there is no canonical definition to state claims against.
-/

/-! ## A291061.P4235721157908777359

`A138398(A241906(n))+∑[∑{e}[n, #]]`
-/

namespace A291061.P4235721157908777359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (A241906 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A291061.P4235721157908777359

/-! ## A291061.P17110534902651482816

`A116992(A000522(n))+A000522(n)`
-/

namespace A291061.P17110534902651482816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116992 (A000522 n).toNat + A000522 n

end

end A291061.P17110534902651482816

/-!
# A291062: Number of maximal irredundant sets in the n-hypercube graph.

The programs for A291062, there is no canonical definition to state claims against.
-/

/-! ## A291062.P16176445353580453730

`A327010(a(n-1))+1` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A291062.P16176445353580453730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A327010 (a (n - 1)).toNat + 1

end

end A291062.P16176445353580453730

/-!
# A291063: Number of maximal irredundant sets in the n-wheel graph.

The programs for A291063, there is no canonical definition to state claims against.
-/

/-! ## A291063.P15940287224991673704

`A286954(n+1)+1`
-/

namespace A291063.P15940287224991673704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286954 (n + 1) + 1

end

end A291063.P15940287224991673704

/-! ## A291063.P8027727288015300418

`ceil(sqrt(A392237(n+1)))`
-/

namespace A291063.P8027727288015300418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A392237 (n + 1) : ℝ)⌉

end

end A291063.P8027727288015300418

/-! ## A291063.P1312993371043312267

`A126352(A286954(n+1))`
-/

namespace A291063.P1312993371043312267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126352 (A286954 (n + 1)).toNat

end

end A291063.P1312993371043312267

/-! ## A291063.P14103524969690308742

`A003059(A392237(n+1))`
-/

namespace A291063.P14103524969690308742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A392237 (n + 1)).toNat

end

end A291063.P14103524969690308742

/-! ## A291063.P11286348858982036679

`or(A026182(n+1), A051201(A032559(n+1)))`
-/

namespace A291063.P11286348858982036679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026182 (n + 1)) (A051201 (A032559 (n + 1)).toNat)

end

end A291063.P11286348858982036679

/-!
# A291064: a(n) = 2^n*(n + 1) - 3*(n - 1).

The programs for A291064, the canonical program `A291064.P17219080566995502027` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291064 has offset 1).

The definition of A291064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*(n+2)-3*n` (program `A291064.P17219080566995502027`, by `A291064.P17219080566995502027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291064.P17219080566995502027

`2^(n+1)*(n+2)-3*n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291064

/-- `2^(n+1)*(n+2)-3*n` -/
def P17219080566995502027.Spec : Prop :=
  ∀ n, P17219080566995502027.a n = A291064 (n + 1)

theorem P17219080566995502027.correct : P17219080566995502027.Spec := by
  intro n
  simp only [A291064, Nat.add_sub_cancel]

end A291064

/-! ## A291064.P146285637562570104

`abs(A213569(n+1)-(n-3))`
-/

namespace A291064.P146285637562570104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213569 (n + 1) - ((n : ℤ) - 3)|

end

end A291064.P146285637562570104

namespace A291064

/-- `abs(A213569(n+1)-(n-3))` -/
def P146285637562570104.Spec : Prop :=
  ∀ n, P146285637562570104.a n = A291064 (n + 1)

end A291064

/-! ## A291064.P295023049550222607

`abs(A001787(n+2)-3*n)`
-/

namespace A291064.P295023049550222607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001787 (n + 2) - (3 * n : ℤ)|

end

end A291064.P295023049550222607

namespace A291064

/-- `abs(A001787(n+2)-3*n)` -/
def P295023049550222607.Spec : Prop :=
  ∀ n, P295023049550222607.a n = A291064 (n + 1)

end A291064

/-! ## A291064.P7117713528926953553

`abs(2*(n+2)*∑[A131577(n)]+4-n)`
-/

namespace A291064.P7117713528926953553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 2) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 4 - (n : ℤ)|

end

end A291064.P7117713528926953553

namespace A291064

/-- `abs(2*(n+2)*∑[A131577(n)]+4-n)` -/
def P7117713528926953553.Spec : Prop :=
  ∀ n, P7117713528926953553.a n = A291064 (n + 1)

end A291064

/-! ## A291064.P13424867609480548131

`record[A048493(A008619(n))-(n-1)]`
-/

namespace A291064.P13424867609480548131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048493 (A008619 n).toNat - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291064.P13424867609480548131

namespace A291064

/-- `record[A048493(A008619(n))-(n-1)]` -/
def P13424867609480548131.Spec : Prop :=
  ∀ n, P13424867609480548131.a n = A291064 (n + 1)

end A291064

/-! ## A291064.P4148578651003296409

`abs(3*n-Δ[A058922(n+1)])`
-/

namespace A291064.P4148578651003296409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A291064.P4148578651003296409

namespace A291064

/-- `abs(3*n-Δ[A058922(n+1)])` -/
def P4148578651003296409.Spec : Prop :=
  ∀ n, P4148578651003296409.a n = A291064 (n + 1)

end A291064

/-! ## A291064.P11007457705277963275

`Δ[A163383(n+1)-3*C(n, 2)]`
-/

namespace A291064.P11007457705277963275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163383 (n + 1) - (3 * Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291064.P11007457705277963275

namespace A291064

/-- `Δ[A163383(n+1)-3*C(n, 2)]` -/
def P11007457705277963275.Spec : Prop :=
  ∀ n, P11007457705277963275.a n = A291064 (n + 1)

end A291064

/-! ## A291064.P11429280061544515580

`(A001787(n+2)-3*n)%A295046(n+1)`
-/

namespace A291064.P11429280061544515580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001787 (n + 2) - (3 * n : ℤ)) (A295046 (n + 1))

end

end A291064.P11429280061544515580

namespace A291064

/-- `(A001787(n+2)-3*n)%A295046(n+1)` -/
def P11429280061544515580.Spec : Prop :=
  ∀ n, P11429280061544515580.a n = A291064 (n + 1)

end A291064

/-!
# A291066: Number of edges in the n-Menger sponge graph.

The programs for A291066, the canonical program `A291066.P15712189601622365717` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291066 has offset 1).

The definition of A291066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291066.P15712189601622365717

`2*(20^(n+1)-8^(n+1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291066

/-- `2*(20^(n+1)-8^(n+1))` -/
def P15712189601622365717.Spec : Prop :=
  ∀ n, P15712189601622365717.a n = A291066 (n + 1)

theorem P15712189601622365717.correct : P15712189601622365717.Spec := by
  intro n
  simp only [A291066, Nat.add_sub_cancel]

end A291066

/-! ## A291066.P8254056060812714401

`28*a(n-1)-160*a(n-2)` with `a(0)=24, a(1)=672`
-/

namespace A291066.P8254056060812714401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24, 672] fun n a =>
  28 * a (n - 1) - 160 * a (n - 2)

end

end A291066.P8254056060812714401

namespace A291066

/-- `28*a(n-1)-160*a(n-2)` -/
def P8254056060812714401.Spec : Prop :=
  ∀ n, P8254056060812714401.a n = A291066 (n + 1)

theorem P8254056060812714401.correct : P8254056060812714401.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A291066, Nat.add_sub_cancel, A291066.P8254056060812714401.a, A291066.P15712189601622365717.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A291066, Nat.add_sub_cancel, A291066.P8254056060812714401.a, A291066.P15712189601622365717.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A291066

/-! ## A291066.P14554811811761320970

`A332705(n+1)-A083233(n+2)`
-/

namespace A291066.P14554811811761320970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332705 (n + 1) - A083233 (n + 2)

end

end A291066.P14554811811761320970

namespace A291066

/-- `A332705(n+1)-A083233(n+2)` -/
def P14554811811761320970.Spec : Prop :=
  ∀ n, P14554811811761320970.a n = A291066 (n + 1)

end A291066

/-! ## A291066.P16895036380493357340

`2*A009964(n+1)-A013730(n+1)`
-/

namespace A291066.P16895036380493357340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009964 (n + 1) - A013730 (n + 1)

end

end A291066.P16895036380493357340

namespace A291066

/-- `2*A009964(n+1)-A013730(n+1)` -/
def P16895036380493357340.Spec : Prop :=
  ∀ n, P16895036380493357340.a n = A291066 (n + 1)

end A291066

/-!
# A291068: Largest number of distinct words arising in Watanabe's tag system {00, 1110} applied to a binary word w, over all starting words w of length n.

The programs for A291068, there is no canonical definition to state claims against.
-/

/-! ## A291068.P2446695613826972532

`A291069(n+1)+1-char[2]`
-/

namespace A291068.P2446695613826972532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291069 (n + 1) + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A291068.P2446695613826972532

/-! ## A291068.P4062045847740980273

`A292438(n²)+A291069(n+1)`
-/

namespace A291068.P4062045847740980273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n ^ 2) + A291069 (n + 1)

end

end A291068.P4062045847740980273

/-! ## A291068.P10247959114754115955

`A350070(n²+5)+A291069(n+1)`
-/

namespace A291068.P10247959114754115955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (n ^ 2 + 5) + A291069 (n + 1)

end

end A291068.P10247959114754115955

/-! ## A291068.P13131638771829213975

`A063196(A291069(n+1))+A000034(n)`
-/

namespace A291068.P13131638771829213975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (A291069 (n + 1)).toNat + A000034 n

end

end A291068.P13131638771829213975

/-! ## A291068.P6621332189135465407

`A319102(A165102(2*(n+1)))+A291069(n+1)`
-/

namespace A291068.P6621332189135465407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319102 (A165102 (2 * (n + 1))).toNat + A291069 (n + 1)

end

end A291068.P6621332189135465407

/-! ## A291068.P17869308477945673307

`A000035(A291069(n+1))+A291069(n+1)+A000035(n)`
-/

namespace A291068.P17869308477945673307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A291069 (n + 1)).toNat + (A291069 (n + 1) + A000035 n)

end

end A291068.P17869308477945673307

/-!
# A291069: Largest number of distinct words arising in Watanabe's tag system {00, 0111} applied to a binary word w, over all starting words w of length n.

The programs for A291069, there is no canonical definition to state claims against.
-/

/-! ## A291069.P7213827121580542803

`char[2]+A291068(n+1)-1`
-/

namespace A291069.P7213827121580542803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A291068 (n + 1) - 1)

end

end A291069.P7213827121580542803

/-! ## A291069.P8736658438693759379

`A233583(A291068(n+1)+char[2])`
-/

namespace A291069.P8736658438693759379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A291068 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A291069.P8736658438693759379

/-! ## A291069.P12596344387127005989

`A233583(A291068(n+1)-2)+2`
-/

namespace A291069.P12596344387127005989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A291068 (n + 1) - 2).toNat + 2

end

end A291069.P12596344387127005989

/-! ## A291069.P12254318782267540604

`A291068(n+1)-A060576(ceil((n-1)/gcd(2, n)))`
-/

namespace A291069.P12254318782267540604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291068 (n + 1) - A060576 ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉.toNat

end

end A291069.P12254318782267540604

/-! ## A291069.P8351955935314201205

`A291068(n+1)-A105812(A015617(n+1))²`
-/

namespace A291069.P8351955935314201205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291068 (n + 1) - A105812 (A015617 (n + 1)).toNat ^ 2

end

end A291069.P8351955935314201205

/-!
# A291070: Number of 5 X n binary matrices that are "primitive"; that is, they cannot be expressed as a "tiling" by a smaller matrix.

The programs for A291070, there is no canonical definition to state claims against.
-/

/-! ## A291070.P12094660146151485378

`A323862(A167499(n+3))`
-/

namespace A291070.P12094660146151485378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A167499 (n + 3)).toNat

end

end A291070.P12094660146151485378

/-! ## A291070.P17653666544505738865

`A323862(Δ[A264443(n)])`
-/

namespace A291070.P17653666544505738865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (f1 (n + 1) - f1 n).toNat

end

end A291070.P17653666544505738865

/-! ## A291070.P8618164544734027996

`A323862(A374005(n+1))`
-/

namespace A291070.P8618164544734027996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A374005 (n + 1)).toNat

end

end A291070.P8618164544734027996

/-! ## A291070.P16116320017767795243

`A323862(A046691(n+3))`
-/

namespace A291070.P16116320017767795243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A046691 (n + 3)).toNat

end

end A291070.P16116320017767795243

/-! ## A291070.P15565059052456611949

`A323862(eq[4, A193592(n)])`
-/

namespace A291070.P15565059052456611949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291070.P15565059052456611949

/-!
# A291071: Number of 6 X n binary matrices that are "primitive"; that is, they cannot be expressed as a "tiling" by a smaller matrix.

The programs for A291071, there is no canonical definition to state claims against.
-/

/-! ## A291071.P11061060945500298929

`A323862(A166136(n+4))`
-/

namespace A291071.P11061060945500298929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A166136 (n + 4)).toNat

end

end A291071.P11061060945500298929

/-! ## A291071.P8883368746715168804

`A323862(A374007(n+1))`
-/

namespace A291071.P8883368746715168804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A374007 (n + 1)).toNat

end

end A291071.P8883368746715168804

/-! ## A291071.P15329236859812182669

`A323862(A052905(n+3))`
-/

namespace A291071.P15329236859812182669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A052905 (n + 3)).toNat

end

end A291071.P15329236859812182669

/-! ## A291071.P14221608486187600763

`A323862(A302537(n)+15)`
-/

namespace A291071.P14221608486187600763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A302537 n + 15).toNat

end

end A291071.P14221608486187600763

/-! ## A291071.P15847189729907636712

`A323862(A056119(n)+16)`
-/

namespace A291071.P15847189729907636712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A056119 n + 16).toNat

end

end A291071.P15847189729907636712

/-!
# A291072: Take n-th string over {1,2} in lexicographic order and apply the Watanabe tag system {00, 1011} described in A291067 (but adapted to the alphabet {1,2}) just once.

The programs for A291072, there is no canonical definition to state claims against.
-/

/-! ## A291072.P10266386648957109000

`A116216((2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2))` with `a(0)=-1, a(1)=22, a(2)=1, a(3)=1`
-/

namespace A291072.P10266386648957109000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 22, 1, 1] fun n a =>
  A116216 (((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2))).toNat

end

end A291072.P10266386648957109000

/-!
# A291073: Take n-th string over {1,2} in lexicographic order and apply the Watanabe tag system {00, 1110} described in A291068 (but adapted to the alphabet {1,2}) just once.

The programs for A291073, there is no canonical definition to state claims against.
-/

/-! ## A291073.P2910989323000803875

`A289673(n+1)+9*A079944(n)`
-/

namespace A291073.P2910989323000803875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289673 (n + 1) + 9 * A079944 n

end

end A291073.P2910989323000803875

/-! ## A291073.P3030425345708491278

`A291074(n+1)-A284935(A206177(n))`
-/

namespace A291073.P3030425345708491278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291074 (n + 1) - A284935 (A206177 n).toNat

end

end A291073.P3030425345708491278

/-!
# A291074: Take n-th string over {1,2} in lexicographic order and apply the Watanabe tag system {00, 0111} described in A291069 (but adapted to the alphabet {1,2}) just once.

The programs for A291074, there is no canonical definition to state claims against.
-/

/-! ## A291074.P247750007608465633

`A291073(n+1)+A179081(A000372(n))`
-/

namespace A291074.P247750007608465633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291073 (n + 1) + A179081 (A000372 n).toNat

end

end A291074.P247750007608465633

/-!
# A291076: Number of prime 3-ary toroidal arrays with 2 rows and n columns.

The programs for A291076, there is no canonical definition to state claims against.
-/

/-! ## A291076.P5349891815650935789

`A027376(2*(n+1))`
-/

namespace A291076.P5349891815650935789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (2 * (n + 1))

end

end A291076.P5349891815650935789

/-! ## A291076.P13536227981690018732

`A185171(2*(n+1))`
-/

namespace A291076.P13536227981690018732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185171 (2 * (n + 1))

end

end A291076.P13536227981690018732

/-! ## A291076.P8630483537254883563

`record[A185171(A004442(n)+1)]`
-/

namespace A291076.P8630483537254883563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185171 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291076.P8630483537254883563

/-! ## A291076.P10160596965185422955

`A306157(2*(n+1))-A306157(n+1)`
-/

namespace A291076.P10160596965185422955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306157 (2 * (n + 1)) - A306157 (n + 1)

end

end A291076.P10160596965185422955

/-! ## A291076.P10179563075764992278

`A065178(2*(n+1))+A059966(2*(n+1))`
-/

namespace A291076.P10179563075764992278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065178 (2 * (n + 1)) + A059966 (2 * (n + 1))

end

end A291076.P10179563075764992278

/-! ## A291076.P1394731338454667080

`A133267(2*(n+1))+A006575(2*(n+1))`
-/

namespace A291076.P1394731338454667080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133267 (2 * (n + 1)) + A006575 (2 * (n + 1))

end

end A291076.P1394731338454667080

/-! ## A291076.P10623157873921062164

`A114945(2*(n+1))-A114945(2*n+1)`
-/

namespace A291076.P10623157873921062164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114945 (2 * (n + 1)) - A114945 (2 * n + 1)

end

end A291076.P10623157873921062164

/-! ## A291076.P6617625630791274913

`A001867(2*(n+1))-A278663(2*(n+1))`
-/

namespace A291076.P6617625630791274913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 (2 * (n + 1)) - A278663 (2 * (n + 1))

end

end A291076.P6617625630791274913

/-! ## A291076.P17239864837098119132

`A185172(2*(n+1))-A065179(2*(n+1))`
-/

namespace A291076.P17239864837098119132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185172 (2 * (n + 1)) - A065179 (2 * (n + 1))

end

end A291076.P17239864837098119132

/-!
# A291077: Number of prime 3-ary toroidal arrays with 3 rows and n columns.

The programs for A291077, there is no canonical definition to state claims against.
-/

/-! ## A291077.P12089983458653929421

`A027376(3*(n+1))-A104794(A127996(n+1))`
-/

namespace A291077.P12089983458653929421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (3 * (n + 1)) - A104794 (A127996 (n + 1)).toNat

end

end A291077.P12089983458653929421

/-!
# A291080: Irregular triangle read by rows: T(n,m) = number of lattice paths of type {A^H}_R terminating at point (n, m).

The programs for A291080, there is no canonical definition to state claims against.
-/

/-! ## A291080.P1987665044681289311

`A027907(eq[1, (floor(sqrt(4*n+1))-1)%4+1])`
-/

namespace A291080.P1987665044681289311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.sqrt (4 * n + 1) : ℤ) - 1) 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291080.P1987665044681289311

/-! ## A291080.P10879211529204897657

`A094531(A161983(n))`
-/

namespace A291080.P10879211529204897657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A161983 n).toNat

end

end A291080.P10879211529204897657

/-! ## A291080.P2985860203304743348

`A027907(eq[1, A063826(n)])`
-/

namespace A291080.P2985860203304743348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291080.P2985860203304743348

/-! ## A291080.P15591578226689826607

`A027907(lt[A063826(n), 2])`
-/

namespace A291080.P15591578226689826607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A291080.P15591578226689826607

/-! ## A291080.P2365275447882794694

`A094531(A007606(n+1)-1)`
-/

namespace A291080.P2365275447882794694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A007606 (n + 1) - 1).toNat

end

end A291080.P2365275447882794694

/-! ## A291080.P1778633894144267624

`A027907(eq[n+2, A068225(n+1)])`
-/

namespace A291080.P1778633894144267624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291080.P1778633894144267624

/-! ## A291080.P11570607940215295893

`A027907(eq[n, A068226(n+1)]-1)`
-/

namespace A291080.P11570607940215295893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A291080.P11570607940215295893

/-!
# A291081: Irregular triangle read by rows: T(n,m) = number of lattice paths of type A^H terminating at point (n, m).

The programs for A291081, there is no canonical definition to state claims against.
-/

/-! ## A291081.P9208328113468129414

`A027907(eq[3, (floor(sqrt(4*n+1))-1)%4+1])`
-/

namespace A291081.P9208328113468129414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.sqrt (4 * n + 1) : ℤ) - 1) 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291081.P9208328113468129414

/-! ## A291081.P4640775624734056484

`A094531(A162917(n+1))`
-/

namespace A291081.P4640775624734056484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A162917 (n + 1)).toNat

end

end A291081.P4640775624734056484

/-! ## A291081.P16106782335965888922

`A027907(eq[3, A063826(n)])`
-/

namespace A291081.P16106782335965888922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291081.P16106782335965888922

/-! ## A291081.P10634728367150216134

`A094531(A116942(2*n+1))`
-/

namespace A291081.P10634728367150216134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A116942 (2 * n + 1)).toNat

end

end A291081.P10634728367150216134

/-! ## A291081.P12567271546237015022

`A027907(eq[n+2, A068226(n+1)])`
-/

namespace A291081.P12567271546237015022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291081.P12567271546237015022

/-! ## A291081.P8211210640925971038

`A027907(eq[n, A068225(n+1)]-1)`
-/

namespace A291081.P8211210640925971038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A291081.P8211210640925971038

/-! ## A291081.P12681224265759309757

`A027907(A061885(round(sqrt(n+1))²+n))`
-/

namespace A291081.P12681224265759309757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A061885 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)).toNat).toNat

end

end A291081.P12681224265759309757

/-! ## A291081.P6753663378991289094

`A027907(eq[A180714(n), A220603(n+1)])`
-/

namespace A291081.P6753663378991289094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291081.P6753663378991289094

/-!
# A291082: Irregular triangle read by rows: T(n,m) = number of lattice paths of type {A^Q}_R terminating at point (n, m).

The programs for A291082, there is no canonical definition to state claims against.
-/

/-! ## A291082.P14800930176316978347

`A064189(comp[round(sqrt(n+1))²+n])`
-/

namespace A291082.P14800930176316978347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A291082.P14800930176316978347

/-! ## A291082.P18436387757806377896

`A122896(A317303(n+1))`
-/

namespace A291082.P18436387757806377896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122896 (A317303 (n + 1)).toNat

end

end A291082.P18436387757806377896

/-! ## A291082.P8029370847872037719

`or(char[3], A064189(A161983(n)))`
-/

namespace A291082.P8029370847872037719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A064189 (A161983 n).toNat)

end

end A291082.P8029370847872037719

/-! ## A291082.P6212106416462540700

`A064189(A161983(n-char[3]))-char[3]`
-/

namespace A291082.P6212106416462540700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A161983 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A291082.P6212106416462540700

/-! ## A291082.P937595954378539973

`A064189(A161983(n))%A000051(n)`
-/

namespace A291082.P937595954378539973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064189 (A161983 n).toNat) (A000051 n)

end

end A291082.P937595954378539973

/-! ## A291082.P13685681185324196137

`lcm(A033999(n), A064189(A161983(n)))`
-/

namespace A291082.P13685681185324196137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A064189 (A161983 n).toNat)

end

end A291082.P13685681185324196137

/-! ## A291082.P2663404379428238683

`A057427(n+1)*A064189(A161983(n))`
-/

namespace A291082.P2663404379428238683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A064189 (A161983 n).toNat

end

end A291082.P2663404379428238683

/-! ## A291082.P5421642869112995061

`A244895(5*n)+A064189(A161983(n))`
-/

namespace A291082.P5421642869112995061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (5 * n) + A064189 (A161983 n).toNat

end

end A291082.P5421642869112995061

/-!
# A291083: Irregular triangle read by rows: T(n,m) = number of lattice paths of type A^Q terminating at point (n, m).

The programs for A291083, there is no canonical definition to state claims against.
-/

/-! ## A291083.P9348425264026674117

`A064189(round(sqrt(n+1))²+n)`
-/

namespace A291083.P9348425264026674117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)).toNat

end

end A291083.P9348425264026674117

/-! ## A291083.P11645239670189828632

`A122896((n-comp[n²])²+n)`
-/

namespace A291083.P11645239670189828632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122896 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A291083.P11645239670189828632

/-! ## A291083.P3374995367409611367

`A064189(A162917(n+1))%A032814(n+1)`
-/

namespace A291083.P3374995367409611367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064189 (A162917 (n + 1)).toNat) (A032814 (n + 1))

end

end A291083.P3374995367409611367

/-! ## A291083.P7694000444154846829

`A064189(A162917(n+1))+A056594(2*n+3)`
-/

namespace A291083.P7694000444154846829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A162917 (n + 1)).toNat + A056594 (2 * n + 3)

end

end A291083.P7694000444154846829

/-! ## A291083.P364996260175378018

`A064189(A162917(n+1))+A014082(A014082(n))`
-/

namespace A291083.P364996260175378018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A162917 (n + 1)).toNat + A014082 (A014082 n).toNat

end

end A291083.P364996260175378018

/-! ## A291083.P14213296104881058276

`A290995(A000120(n))+A064189(A162917(n+1))`
-/

namespace A291083.P14213296104881058276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290995 (A000120 n).toNat + A064189 (A162917 (n + 1)).toNat

end

end A291083.P14213296104881058276

/-! ## A291083.P15764214066427779284

`A290995(A277824(n))+A064189(A162917(n+1))`
-/

namespace A291083.P15764214066427779284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290995 (A277824 n).toNat + A064189 (A162917 (n + 1)).toNat

end

end A291083.P15764214066427779284

/-! ## A291083.P6288124187127191459

`A101637(A000040(n+1))+A064189(A162917(n+1))`
-/

namespace A291083.P6288124187127191459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A000040 (n + 1)).toNat + A064189 (A162917 (n + 1)).toNat

end

end A291083.P6288124187127191459

/-! ## A291083.P2061343100723939804

`A101637(A000961(3*n+4))+A064189(A162917(n+1))`
-/

namespace A291083.P2061343100723939804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A000961 (3 * n + 4)).toNat + A064189 (A162917 (n + 1)).toNat

end

end A291083.P2061343100723939804

/-!
# A291084: Irregular triangle read by rows: T(n,m) = number of lattice paths of type {B^H}_R terminating at point (n, m).

The programs for A291084, there is no canonical definition to state claims against.
-/

/-! ## A291084.P17260371793297607962

`A026519(eq[1, A063826(n)])`
-/

namespace A291084.P17260371793297607962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291084.P17260371793297607962

/-! ## A291084.P10935647977945065016

`A026536(eq[1, A063826(n)])`
-/

namespace A291084.P10935647977945065016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291084.P10935647977945065016

/-! ## A291084.P9879177621757918175

`A026519(lt[A063826(n), 2])`
-/

namespace A291084.P9879177621757918175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A291084.P9879177621757918175

/-! ## A291084.P17081868814849073770

`A026536(lt[A063826(n), 2])`
-/

namespace A291084.P17081868814849073770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A291084.P17081868814849073770

/-!
# A291085: Irregular triangle read by rows: T(n,m) = number of lattice paths of type B^H terminating at point (n, m).

The programs for A291085, there is no canonical definition to state claims against.
-/

/-! ## A291085.P17675403202207639299

`A026519(eq[3, A063826(n)])`
-/

namespace A291085.P17675403202207639299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291085.P17675403202207639299

/-! ## A291085.P2818189340387962363

`A026552(eq[3, A063826(n)])`
-/

namespace A291085.P2818189340387962363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291085.P2818189340387962363

/-!
# A291088: a(n) = A026520(2n).

The programs for A291088, there is no canonical definition to state claims against.
-/

/-! ## A291088.P13210825374690568541

`A026520(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291088.P13210825374690568541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (2 * n)

end

end A291088.P13210825374690568541

/-! ## A291088.P17701298415223003448

`A026537(2*n)`
-/

namespace A291088.P17701298415223003448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026537 (2 * n)

end

end A291088.P17701298415223003448

/-! ## A291088.P1200914900252849481

`record[A026520(n)^and(1, n+1)]`
-/

namespace A291088.P1200914900252849481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 n ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291088.P1200914900252849481

/-! ## A291088.P11338900910389728383

`record[A026520(A014681(n))]`
-/

namespace A291088.P11338900910389728383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291088.P11338900910389728383

/-! ## A291088.P8789519458729257303

`record[A026520(A294317(n))]`
-/

namespace A291088.P8789519458729257303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (A294317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291088.P8789519458729257303

/-! ## A291088.P15317581374305959792

`record[A026520(A227140(n)+1)]`
-/

namespace A291088.P15317581374305959792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (A227140 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291088.P15317581374305959792

/-! ## A291088.P11212898122406896582

`record[A026520(n)/A033999(n)]`
-/

namespace A291088.P11212898122406896582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026520 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291088.P11212898122406896582

/-! ## A291088.P18152276883755467206

`record[gcd(A026520(n), A026537(n))]`
-/

namespace A291088.P18152276883755467206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026520 n) (A026537 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291088.P18152276883755467206

/-! ## A291088.P6733544291267013181

`record[A026520(Δ[A152919(n+1)])]`
-/

namespace A291088.P6733544291267013181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291088.P6733544291267013181

/-! ## A291088.P10229203555707645723

`gcd(A000038(n), A026520(A004277(n)))`
-/

namespace A291088.P10229203555707645723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026520 (A004277 n).toNat)

end

end A291088.P10229203555707645723

/-! ## A291088.P778470930830370292

`or(A000007(n), A026520(A005843(n)))`
-/

namespace A291088.P778470930830370292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026520 (A005843 n).toNat)

end

end A291088.P778470930830370292

/-! ## A291088.P2605568404524750391

`record[A026520(n+1)-A026537(n+1)]`
-/

namespace A291088.P2605568404524750391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (n + 1) - A026537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291088.P2605568404524750391

/-! ## A291088.P7012362170888880345

`2*A026548(2*n)-A026549(2*n)`
-/

namespace A291088.P7012362170888880345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026548 (2 * n) - A026549 (2 * n)

end

end A291088.P7012362170888880345

/-! ## A291088.P14006351890640170363

`2*A026531(2*n)-A026532(2*n+1)`
-/

namespace A291088.P14006351890640170363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026531 (2 * n) - A026532 (2 * n + 1)

end

end A291088.P14006351890640170363

/-!
# A291089: a(n) = A026520(2n+1).

The programs for A291089, there is no canonical definition to state claims against.
-/

/-! ## A291089.P9000712704690879412

`A026520(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291089.P9000712704690879412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (2 * n + 1)

end

end A291089.P9000712704690879412

/-! ## A291089.P10072133656772589137

`A026553(Δ[n²])`
-/

namespace A291089.P10072133656772589137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026553 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A291089.P10072133656772589137

/-! ## A291089.P9589606386439156293

`record[A026520(A227140(n))]`
-/

namespace A291089.P9589606386439156293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (A227140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P9589606386439156293

/-! ## A291089.P12614991333432429480

`record[A026520(Δ[A001318(n)])]`
-/

namespace A291089.P12614991333432429480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P12614991333432429480

/-! ## A291089.P12389731925332944772

`record[A026520(A014681(n)+1)]`
-/

namespace A291089.P12389731925332944772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P12389731925332944772

/-! ## A291089.P10715046989083727683

`record[A026520(A294317(n)+1)]`
-/

namespace A291089.P10715046989083727683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (A294317 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P10715046989083727683

/-! ## A291089.P919495563212928704

`record[A026520(A033999(n)+n)]`
-/

namespace A291089.P919495563212928704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P919495563212928704

/-! ## A291089.P3908786911134723649

`record[A026553(n)*A105812(n)]`
-/

namespace A291089.P3908786911134723649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026553 n * A105812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P3908786911134723649

/-! ## A291089.P1079212338175885901

`record[A026520(n)/A027642(n)]`
-/

namespace A291089.P1079212338175885901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026520 n : ℚ) / (A027642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P1079212338175885901

/-! ## A291089.P4550078016825354170

`record[A026520(n)/A141459(n)]`
-/

namespace A291089.P4550078016825354170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026520 n : ℚ) / (A141459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P4550078016825354170

/-! ## A291089.P16831501380524299258

`record[gcd(A026520(n), A026553(n))]`
-/

namespace A291089.P16831501380524299258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026520 n) (A026553 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P16831501380524299258

/-! ## A291089.P10982344545734205099

`record[A026553(and(n, A022998(n)))]`
-/

namespace A291089.P10982344545734205099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026553 (Int.land (n : ℤ) (A022998 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P10982344545734205099

/-! ## A291089.P15096270683822447958

`record[A026553(A105812(n+1)+n)]`
-/

namespace A291089.P15096270683822447958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026553 (A105812 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P15096270683822447958

/-! ## A291089.P7218767623958822357

`record[A026553(A022998(n+1)-n)]`
-/

namespace A291089.P7218767623958822357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026553 (A022998 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P7218767623958822357

/-! ## A291089.P12228344998264642724

`record[A026553(n/A000034(n+1))]`
-/

namespace A291089.P12228344998264642724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026553 (SequenceMachineLib.roundAway ((n : ℚ) / (A000034 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P12228344998264642724

/-! ## A291089.P2975753082229187471

`record[A026520(Δ[A152919(n+1)]-1)]`
-/

namespace A291089.P2975753082229187471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 (f2 (n + 1) - f2 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291089.P2975753082229187471

/-! ## A291089.P15314347990511078610

`A026537(2*n+1)+A026537(2*n)`
-/

namespace A291089.P15314347990511078610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026537 (2 * n + 1) + A026537 (2 * n)

end

end A291089.P15314347990511078610

/-!
# A291090: a(n) = A214938(2n).

The programs for A291090, there is no canonical definition to state claims against.
-/

/-! ## A291090.P8039665001941633240

`A214938(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291090.P8039665001941633240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214938 (2 * n)

end

end A291090.P8039665001941633240

/-! ## A291090.P5928481467589988462

`or(char[1], A214938(A005843(n)))`
-/

namespace A291090.P5928481467589988462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A214938 (A005843 n).toNat)

end

end A291090.P5928481467589988462

/-! ## A291090.P9331281590680035830

`gcd(A000038(n), A214938(A005843(n)))`
-/

namespace A291090.P9331281590680035830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214938 (A005843 n).toNat)

end

end A291090.P9331281590680035830

/-! ## A291090.P13310808754703182456

`lcm(A057077(n), A214938(A005843(n)))`
-/

namespace A291090.P13310808754703182456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A214938 (A005843 n).toNat)

end

end A291090.P13310808754703182456

/-! ## A291090.P11591472485695023864

`A280193(Δ[n²])+A214938(A005843(n))+1`
-/

namespace A291090.P11591472485695023864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (A214938 (A005843 n).toNat + 1)

end

end A291090.P11591472485695023864

/-! ## A291090.P18285872909992342909

`A214938(A005843(n))/A057077(n²)`
-/

namespace A291090.P18285872909992342909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214938 (A005843 n).toNat : ℚ) / (A057077 (n ^ 2) : ℚ)

end

end A291090.P18285872909992342909

/-! ## A291090.P11475057926361568894

`A151345(n)/A000108(n)`
-/

namespace A291090.P11475057926361568894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151345 n : ℚ) / (A000108 n : ℚ)

end

end A291090.P11475057926361568894

/-! ## A291090.P12564224711157648902

`A059347(∑[4*n])`
-/

namespace A291090.P12564224711157648902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291090.P12564224711157648902

/-! ## A291090.P12958810320795126323

`A214938(A005843(n))%A174113(n+2)`
-/

namespace A291090.P12958810320795126323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214938 (A005843 n).toNat) (A174113 (n + 2))

end

end A291090.P12958810320795126323

/-!
# A291091: a(n) = A214938(2n+1).

The programs for A291091, there is no canonical definition to state claims against.
-/

/-! ## A291091.P3565956011687650726

`A214938(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291091.P3565956011687650726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214938 (2 * n + 1)

end

end A291091.P3565956011687650726

/-! ## A291091.P13580341641476792290

`record[A214938(n*n%2)]`
-/

namespace A291091.P13580341641476792290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214938 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291091.P13580341641476792290

/-! ## A291091.P17587866596419377441

`record[A214938(A026741(n))]`
-/

namespace A291091.P17587866596419377441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214938 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291091.P17587866596419377441

/-! ## A291091.P7301644635309453615

`record[A214938(A193356(n+1))]`
-/

namespace A291091.P7301644635309453615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214938 (A193356 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291091.P7301644635309453615

/-! ## A291091.P11375882458437988915

`record[A214938(n*A266719(n))]`
-/

namespace A291091.P11375882458437988915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214938 ((n : ℤ) * A266719 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291091.P11375882458437988915

/-! ## A291091.P17796130689534466997

`record[A214938(n)/(2-A266719(n))]`
-/

namespace A291091.P17796130689534466997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214938 n : ℚ) / (2 - A266719 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291091.P17796130689534466997

/-! ## A291091.P12685309971664127108

`record[A214938(n+1)/A242885(n+1)]`
-/

namespace A291091.P12685309971664127108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214938 (n + 1) : ℚ) / (A242885 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291091.P12685309971664127108

/-! ## A291091.P13055829634930450273

`A214938(A005408(n))+A000007(n+1)`
-/

namespace A291091.P13055829634930450273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214938 (A005408 n).toNat + A000007 (n + 1)

end

end A291091.P13055829634930450273

/-! ## A291091.P16356094887437004754

`gcd(A000038(n), A214938(A005843(n)+1))`
-/

namespace A291091.P16356094887437004754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214938 (A005843 n + 1).toNat)

end

end A291091.P16356094887437004754

/-! ## A291091.P1322667134668842383

`lcm(A057077(n), A214938(A005843(n)+1))`
-/

namespace A291091.P1322667134668842383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A214938 (A005843 n + 1).toNat)

end

end A291091.P1322667134668842383

/-! ## A291091.P12604435644481585327

`A214938(A005408(n))-n*A000007(n)`
-/

namespace A291091.P12604435644481585327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214938 (A005408 n).toNat - (n : ℤ) * A000007 n

end

end A291091.P12604435644481585327

/-! ## A291091.P5065893984713907265

`(A005408(n)-A005843(n))*A214938(A005408(n))`
-/

namespace A291091.P5065893984713907265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - A005843 n) * A214938 (A005408 n).toNat

end

end A291091.P5065893984713907265

/-!
# A291092: 1 followed by infinitely many 9's.

The programs for A291092, the canonical program `A291092.P2505452774639799044` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291092 has offset 1).

The definition of A291092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291092.P2505452774639799044

`dr(9^dr(n))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291092

/-- `dr(9^dr(n))` -/
def P2505452774639799044.Spec : Prop :=
  ∀ n, (P2505452774639799044.a n : ℤ) = A291092 (n + 1)

theorem P2505452774639799044.correct : P2505452774639799044.Spec := by
  intro n
  simp only [A291092, Nat.add_sub_cancel]

end A291092

/-!
# A291094: Denominators of fractions with nontrivial anomalous cancellation, listed with multiplicity if multiple numerators are possible.

The programs for A291094, there is no canonical definition to state claims against.
-/

/-! ## A291094.P13463538203231056358

`A291965(n+1)-A128113(A322599(n+1))`
-/

namespace A291094.P13463538203231056358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291965 (n + 1) - A128113 (A322599 (n + 1)).toNat

end

end A291094.P13463538203231056358

/-!
# A291096: Number of rooted gluings of octahedra with n square vertices.

The programs for A291096, there is no canonical definition to state claims against.
-/

/-! ## A291096.P5291005943598439135

`C(4*n+1, n)/(4*n+1)*3^n`
-/

namespace A291096.P5291005943598439135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 1) n : ℚ) / (4 * n + 1 : ℚ) * (3 ^ n : ℚ)

end

end A291096.P5291005943598439135

/-! ## A291096.P1143334636891448694

`3^n*A002293(n)`
-/

namespace A291096.P1143334636891448694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002293 n

end

end A291096.P1143334636891448694

/-! ## A291096.P17463186875054080735

`A002293(n)*A140429(n+1)`
-/

namespace A291096.P17463186875054080735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A140429 (n + 1)

end

end A291096.P17463186875054080735

/-! ## A291096.P11356814464216706408

`A002293(n)*A056449(2*n)`
-/

namespace A291096.P11356814464216706408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A056449 (2 * n)

end

end A291096.P11356814464216706408

/-! ## A291096.P12825421358948128953

`A002293(n)*A182522(2*n+1)`
-/

namespace A291096.P12825421358948128953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A182522 (2 * n + 1)

end

end A291096.P12825421358948128953

/-! ## A291096.P8233935678535842074

`A002293(n)*A036561(A000096(n))`
-/

namespace A291096.P8233935678535842074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A036561 (A000096 n).toNat

end

end A291096.P8233935678535842074

/-! ## A291096.P7741414108613925832

`A002293(n)*A038221(A000217(n))`
-/

namespace A291096.P7741414108613925832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A038221 (A000217 n).toNat

end

end A291096.P7741414108613925832

/-! ## A291096.P10537119998222360938

`A000244(n)*A243663(A000124(n)-n)`
-/

namespace A291096.P10537119998222360938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A243663 (A000124 n - (n : ℤ)).toNat

end

end A291096.P10537119998222360938

/-! ## A291096.P12420472101939676688

`A217363(n+1)/A153231(n)*A217360(n)`
-/

namespace A291096.P12420472101939676688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217363 (n + 1) : ℚ) / (A153231 n : ℚ) * (A217360 n : ℚ)

end

end A291096.P12420472101939676688

/-!
# A291097: a(n) = 2^n*(n/8 + 1) - n.

The programs for A291097, the canonical program `A291097.P14665922601084932859` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291097 has offset 2).

The definition of A291097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291097.P14665922601084932859

`2^(n+2)*((n+2)/8+1)-(n+2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291097

/-- `2^(n+2)*((n+2)/8+1)-(n+2)` -/
def P14665922601084932859.Spec : Prop :=
  ∀ n, P14665922601084932859.a n = (A291097 (n + 2) : ℚ)

end A291097

