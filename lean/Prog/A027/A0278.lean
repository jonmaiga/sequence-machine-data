import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A027800: a(n) = (n+1)*binomial(n+4, 4).

The programs for A027800, the canonical program `A027800.P2500424533972823738` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027800 has offset 0).

The definition of A027800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027800.P2500424533972823738

`(n+1)²*(n+2)*(n+3)*(n+4)/24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027800

/-- `(n+1)²*(n+2)*(n+3)*(n+4)/24` -/
def P2500424533972823738.Spec : Prop :=
  ∀ n, P2500424533972823738.a n = (A027800 n : ℚ)

end A027800

/-! ## A027800.P15490402961360741853

`∑[∑[∑[∑[a(n-1)+5]]]]` with `a(0)=1`
-/

namespace A027800.P15490402961360741853
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027800.P15490402961360741853

namespace A027800

/-- `∑[∑[∑[∑[a(n-1)+5]]]]` -/
def P15490402961360741853.Spec : Prop :=
  ∀ n, (P15490402961360741853.a n : ℤ) = A027800 n

end A027800

/-! ## A027800.P11118009945809790048

`floor((n+1)/acot(∑[∑[∑[n+1]]]))`
-/

namespace A027800.P11118009945809790048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A027800.P11118009945809790048

namespace A027800

/-- `floor((n+1)/acot(∑[∑[∑[n+1]]]))` -/
def P11118009945809790048.Spec : Prop :=
  ∀ n, P11118009945809790048.a n = A027800 n

end A027800

/-! ## A027800.P10765214283706763284

`round((n+1)/acot(∑[∑[∑[n+1]]]))`
-/

namespace A027800.P10765214283706763284
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A027800.P10765214283706763284

namespace A027800

/-- `round((n+1)/acot(∑[∑[∑[n+1]]]))` -/
def P10765214283706763284.Spec : Prop :=
  ∀ n, P10765214283706763284.a n = A027800 n

end A027800

/-! ## A027800.P1474259418210888688

`(n+1)/tan(acot(∑[∑[∑[n+1]]]))`
-/

namespace A027800.P1474259418210888688
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A027800.P1474259418210888688

namespace A027800

/-- `(n+1)/tan(acot(∑[∑[∑[n+1]]]))` -/
def P1474259418210888688.Spec : Prop :=
  ∀ n, P1474259418210888688.a n = (A027800 n : ℝ)

end A027800

/-! ## A027800.P15818355827312581530

`∑[∑[∑[n+1]]]/cot(atan(n+1))`
-/

namespace A027800.P15818355827312581530
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A027800.P15818355827312581530

namespace A027800

/-- `∑[∑[∑[n+1]]]/cot(atan(n+1))` -/
def P15818355827312581530.Spec : Prop :=
  ∀ n, P15818355827312581530.a n = (A027800 n : ℝ)

end A027800

/-! ## A027800.P14064775223940511293

`C(n+3, 3)+6*C(n+3, 4)+5*C(n+3, 5)`
-/

namespace A027800.P14064775223940511293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + 6 * Nat.choose (n + 3) 4 + 5 * Nat.choose (n + 3) 5

end

end A027800.P14064775223940511293

namespace A027800

/-- `C(n+3, 3)+6*C(n+3, 4)+5*C(n+3, 5)` -/
def P14064775223940511293.Spec : Prop :=
  ∀ n, (P14064775223940511293.a n : ℤ) = A027800 n

end A027800

/-! ## A027800.P3259477312749136444

`A006414(n)+∑[∑[∑[n]]]`
-/

namespace A027800.P3259477312749136444
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027800.P3259477312749136444

namespace A027800

/-- `A006414(n)+∑[∑[∑[n]]]` -/
def P3259477312749136444.Spec : Prop :=
  ∀ n, P3259477312749136444.a n = A027800 n

end A027800

/-! ## A027800.P369764434585894600

`A259455(n+1)/∑[n+1]`
-/

namespace A027800.P369764434585894600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259455 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A027800.P369764434585894600

namespace A027800

/-- `A259455(n+1)/∑[n+1]` -/
def P369764434585894600.Spec : Prop :=
  ∀ n, P369764434585894600.a n = (A027800 n : ℚ)

end A027800

/-! ## A027800.P17723479105313908292

`(n+1)*A051880(n)/(2*n+1)`
-/

namespace A027800.P17723479105313908292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A051880 n : ℚ) / (2 * n + 1 : ℚ)

end

end A027800.P17723479105313908292

namespace A027800

/-- `(n+1)*A051880(n)/(2*n+1)` -/
def P17723479105313908292.Spec : Prop :=
  ∀ n, P17723479105313908292.a n = (A027800 n : ℚ)

end A027800

/-! ## A027800.P3760389307613225369

`A051946(n)-A034264(n)`
-/

namespace A027800.P3760389307613225369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051946 n - A034264 n

end

end A027800.P3760389307613225369

namespace A027800

/-- `A051946(n)-A034264(n)` -/
def P3760389307613225369.Spec : Prop :=
  ∀ n, P3760389307613225369.a n = A027800 n

end A027800

/-! ## A027800.P15568302513462846631

`A051880(n)-A174002(n)`
-/

namespace A027800.P15568302513462846631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 n - A174002 n

end

end A027800.P15568302513462846631

namespace A027800

/-- `A051880(n)-A174002(n)` -/
def P15568302513462846631.Spec : Prop :=
  ∀ n, P15568302513462846631.a n = A027800 n

end A027800

/-! ## A027800.P8654320151762339485

`A256859(n+1)+A033488(n)`
-/

namespace A027800.P8654320151762339485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256859 (n + 1) + A033488 n

end

end A027800.P8654320151762339485

namespace A027800

/-- `A256859(n+1)+A033488(n)` -/
def P8654320151762339485.Spec : Prop :=
  ∀ n, P8654320151762339485.a n = A027800 n

end A027800

/-! ## A027800.P14135852947172128164

`A051877(n)-A277935(n+1)`
-/

namespace A027800.P14135852947172128164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051877 n - A277935 (n + 1)

end

end A027800.P14135852947172128164

namespace A027800

/-- `A051877(n)-A277935(n+1)` -/
def P14135852947172128164.Spec : Prop :=
  ∀ n, P14135852947172128164.a n = A027800 n

end A027800

/-! ## A027800.P9163125769467716466

`A253945(n+4)-A096943(n)`
-/

namespace A027800.P9163125769467716466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253945 (n + 4) - A096943 n

end

end A027800.P9163125769467716466

namespace A027800

/-- `A253945(n+4)-A096943(n)` -/
def P9163125769467716466.Spec : Prop :=
  ∀ n, P9163125769467716466.a n = A027800 n

end A027800

/-! ## A027800.P3617990955151875175

`A027789(n+1)-A006411(n+1)`
-/

namespace A027800.P3617990955151875175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027789 (n + 1) - A006411 (n + 1)

end

end A027800.P3617990955151875175

namespace A027800

/-- `A027789(n+1)-A006411(n+1)` -/
def P3617990955151875175.Spec : Prop :=
  ∀ n, P3617990955151875175.a n = A027800 n

end A027800

/-! ## A027800.P1888413681552285969

`A259455(n+1)%A006411(n+1)`
-/

namespace A027800.P1888413681552285969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259455 (n + 1)) (A006411 (n + 1))

end

end A027800.P1888413681552285969

namespace A027800

/-- `A259455(n+1)%A006411(n+1)` -/
def P1888413681552285969.Spec : Prop :=
  ∀ n, P1888413681552285969.a n = A027800 n

end A027800

/-! ## A027800.P3683485423315028024

`A068250(n+4)%A006470(n+1)`
-/

namespace A027800.P3683485423315028024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068250 (n + 4)) (A006470 (n + 1))

end

end A027800.P3683485423315028024

namespace A027800

/-- `A068250(n+4)%A006470(n+1)` -/
def P3683485423315028024.Spec : Prop :=
  ∀ n, P3683485423315028024.a n = A027800 n

end A027800

/-! ## A027800.P1585656083893442502

`A034263(n)+A056118(n)-A051880(n)`
-/

namespace A027800.P1585656083893442502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + (A056118 n - A051880 n)

end

end A027800.P1585656083893442502

namespace A027800

/-- `A034263(n)+A056118(n)-A051880(n)` -/
def P1585656083893442502.Spec : Prop :=
  ∀ n, P1585656083893442502.a n = A027800 n

end A027800

/-! ## A027800.P10670715869566025983

`A034263(n)+A271567(n)-A056118(n)`
-/

namespace A027800.P10670715869566025983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + (A271567 n - A056118 n)

end

end A027800.P10670715869566025983

namespace A027800

/-- `A034263(n)+A271567(n)-A056118(n)` -/
def P10670715869566025983.Spec : Prop :=
  ∀ n, P10670715869566025983.a n = A027800 n

end A027800

/-!
# A027801: a(n) = 5*(n+1)*binomial(n+4,5)/2.

The programs for A027801, the canonical program `A027801.P56436246852327410` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027801 has offset 1).

The definition of A027801 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051923, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027801.P56436246852327410

`5*A051923(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027801

/-- `5*A051923(n)` -/
def P56436246852327410.Spec : Prop :=
  ∀ n, P56436246852327410.a n = A027801 (n + 1)

theorem P56436246852327410.correct : P56436246852327410.Spec := by
  intro n
  simp only [A027801, Nat.add_sub_cancel]

end A027801

/-! ## A027801.P8192825062282773100

`C(n+5, 4)*∑[n+1]`
-/

namespace A027801.P8192825062282773100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027801.P8192825062282773100

namespace A027801

/-- `C(n+5, 4)*∑[n+1]` -/
def P8192825062282773100.Spec : Prop :=
  ∀ n, (P8192825062282773100.a n : ℤ) = A027801 (n + 1)

end A027801

/-! ## A027801.P13777790727416599049

`5*∑[∑[∑[∑[∑[3*n+1]]]]]`
-/

namespace A027801.P13777790727416599049
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027801.P13777790727416599049

namespace A027801

/-- `5*∑[∑[∑[∑[∑[3*n+1]]]]]` -/
def P13777790727416599049.Spec : Prop :=
  ∀ n, (P13777790727416599049.a n : ℤ) = A027801 (n + 1)

end A027801

/-! ## A027801.P15664740466957686172

`A027811(n+1)-A107417(n)`
-/

namespace A027801.P15664740466957686172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027811 (n + 1) - A107417 n

end

end A027801.P15664740466957686172

namespace A027801

/-- `A027811(n+1)-A107417(n)` -/
def P15664740466957686172.Spec : Prop :=
  ∀ n, P15664740466957686172.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P16053648450548788121

`∑[∑[A000292(n+1)]*A016789(n+1)]`
-/

namespace A027801.P16053648450548788121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A016789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027801.P16053648450548788121

namespace A027801

/-- `∑[∑[A000292(n+1)]*A016789(n+1)]` -/
def P16053648450548788121.Spec : Prop :=
  ∀ n, P16053648450548788121.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P651855882281794200

`A000217(n+1)+A000217(n+1)*A063258(n)`
-/

namespace A027801.P651855882281794200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (n + 1) * A063258 n

end

end A027801.P651855882281794200

namespace A027801

/-- `A000217(n+1)+A000217(n+1)*A063258(n)` -/
def P651855882281794200.Spec : Prop :=
  ∀ n, P651855882281794200.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P3153912239843765360

`∑[5*A051836(n+1)]`
-/

namespace A027801.P3153912239843765360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A051836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027801.P3153912239843765360

namespace A027801

/-- `∑[5*A051836(n+1)]` -/
def P3153912239843765360.Spec : Prop :=
  ∀ n, P3153912239843765360.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P17691370948240078802

`A293476(n+1)/(n+3)`
-/

namespace A027801.P17691370948240078802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293476 (n + 1) : ℚ) / (n + 3 : ℚ)

end

end A027801.P17691370948240078802

namespace A027801

/-- `A293476(n+1)/(n+3)` -/
def P17691370948240078802.Spec : Prop :=
  ∀ n, P17691370948240078802.a n = (A027801 (n + 1) : ℚ)

end A027801

/-! ## A027801.P13780318055430046538

`A240440(n+2)+A266732(n+1)/2`
-/

namespace A027801.P13780318055430046538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240440 (n + 2) : ℚ) + (A266732 (n + 1) : ℚ) / 2

end

end A027801.P13780318055430046538

namespace A027801

/-- `A240440(n+2)+A266732(n+1)/2` -/
def P13780318055430046538.Spec : Prop :=
  ∀ n, P13780318055430046538.a n = (A027801 (n + 1) : ℚ)

end A027801

/-! ## A027801.P7190624859037299123

`A085284(n+2)-A001297(n+2)`
-/

namespace A027801.P7190624859037299123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085284 (n + 2) - A001297 (n + 2)

end

end A027801.P7190624859037299123

namespace A027801

/-- `A085284(n+2)-A001297(n+2)` -/
def P7190624859037299123.Spec : Prop :=
  ∀ n, P7190624859037299123.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P6013750784300289853

`A240440(n+3)-A266732(n+1)`
-/

namespace A027801.P6013750784300289853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240440 (n + 3) - A266732 (n + 1)

end

end A027801.P6013750784300289853

namespace A027801

/-- `A240440(n+3)-A266732(n+1)` -/
def P6013750784300289853.Spec : Prop :=
  ∀ n, P6013750784300289853.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P11387791613118969811

`∑[∑[A008804(2*n)]*A016789(n+1)]`
-/

namespace A027801.P11387791613118969811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A016789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027801.P11387791613118969811

namespace A027801

/-- `∑[∑[A008804(2*n)]*A016789(n+1)]` -/
def P11387791613118969811.Spec : Prop :=
  ∀ n, P11387791613118969811.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P900915834457392569

`A001303(n+1)-A001297(n+1)/A000217(n+1)`
-/

namespace A027801.P900915834457392569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001303 (n + 1) : ℚ) - (A001297 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A027801.P900915834457392569

namespace A027801

/-- `A001303(n+1)-A001297(n+1)/A000217(n+1)` -/
def P900915834457392569.Spec : Prop :=
  ∀ n, P900915834457392569.a n = (A027801 (n + 1) : ℚ)

end A027801

/-! ## A027801.P4449863861040257267

`A001303(n+2)*A006542(n+4)/A006542(n+5)`
-/

namespace A027801.P4449863861040257267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001303 (n + 2) * A006542 (n + 4) : ℚ) / (A006542 (n + 5) : ℚ)

end

end A027801.P4449863861040257267

namespace A027801

/-- `A001303(n+2)*A006542(n+4)/A006542(n+5)` -/
def P4449863861040257267.Spec : Prop :=
  ∀ n, P4449863861040257267.a n = (A027801 (n + 1) : ℚ)

end A027801

/-! ## A027801.P18102811160636883276

`A001303(n+1)-A213550(A000124(n))`
-/

namespace A027801.P18102811160636883276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001303 (n + 1) - A213550 (A000124 n).toNat

end

end A027801.P18102811160636883276

namespace A027801

/-- `A001303(n+1)-A213550(A000124(n))` -/
def P18102811160636883276.Spec : Prop :=
  ∀ n, P18102811160636883276.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P1011640848291120158

`C(n+4, 4)*A000217(n+3)-A213550(A000124(n))`
-/

namespace A027801.P1011640848291120158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * A000217 (n + 3) - A213550 (A000124 n).toNat

end

end A027801.P1011640848291120158

namespace A027801

/-- `C(n+4, 4)*A000217(n+3)-A213550(A000124(n))` -/
def P1011640848291120158.Spec : Prop :=
  ∀ n, P1011640848291120158.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P12787663993583922417

`A027778(n+3)-(A027764(n+3)+record[A213550(n+1)])`
-/

namespace A027801.P12787663993583922417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027778 (n + 3) - (A027764 (n + 3) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027801.P12787663993583922417

namespace A027801

/-- `A027778(n+3)-(A027764(n+3)+record[A213550(n+1)])` -/
def P12787663993583922417.Spec : Prop :=
  ∀ n, P12787663993583922417.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P16475702954976847022

`A027778(n+3)-(A213550(A000124(n))+A027764(n+3))`
-/

namespace A027801.P16475702954976847022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027778 (n + 3) - (A213550 (A000124 n).toNat + A027764 (n + 3))

end

end A027801.P16475702954976847022

namespace A027801

/-- `A027778(n+3)-(A213550(A000124(n))+A027764(n+3))` -/
def P16475702954976847022.Spec : Prop :=
  ∀ n, P16475702954976847022.a n = A027801 (n + 1)

end A027801

/-! ## A027801.P11979894856794931958

`record[(n+1)*A213550(n+2)]`
-/

namespace A027801.P11979894856794931958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A213550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027801.P11979894856794931958

namespace A027801

/-- `record[(n+1)*A213550(n+2)]` -/
def P11979894856794931958.Spec : Prop :=
  ∀ n, P11979894856794931958.a n = A027801 (n + 1)

end A027801

/-!
# A027802: a(n) = 5*(n+1)*binomial(n+4,6).

The programs for A027802, the canonical program `A027802.P15933870523332950980` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027802 has offset 2).

The definition of A027802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027802.P15933870523332950980

`5*(n+3)*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027802

/-- `5*(n+3)*C(n+6, 6)` -/
def P15933870523332950980.Spec : Prop :=
  ∀ n, (P15933870523332950980.a n : ℤ) = A027802 (n + 2)

theorem P15933870523332950980.correct : P15933870523332950980.Spec := by
  intro n
  simp only [A027802, Nat.add_sub_cancel]

end A027802

/-! ## A027802.P11392034244723846703

`(n+3)*∑[A174002(n+1)]`
-/

namespace A027802.P11392034244723846703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027802.P11392034244723846703

namespace A027802

/-- `(n+3)*∑[A174002(n+1)]` -/
def P11392034244723846703.Spec : Prop :=
  ∀ n, P11392034244723846703.a n = A027802 (n + 2)

end A027802

/-! ## A027802.P9640435601409744401

`(n+1)/3*A027801(n+2)`
-/

namespace A027802.P9640435601409744401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A027801 (n + 2) : ℚ)

end

end A027802.P9640435601409744401

namespace A027802

/-- `(n+1)/3*A027801(n+2)` -/
def P9640435601409744401.Spec : Prop :=
  ∀ n, P9640435601409744401.a n = (A027802 (n + 2) : ℚ)

end A027802

/-! ## A027802.P624971229197272618

`(n+3)*∑[A266732(n+1)/2]`
-/

namespace A027802.P624971229197272618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266732 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027802.P624971229197272618

namespace A027802

/-- `(n+3)*∑[A266732(n+1)/2]` -/
def P624971229197272618.Spec : Prop :=
  ∀ n, P624971229197272618.a n = (A027802 (n + 2) : ℚ)

end A027802

/-! ## A027802.P8415796907947315654

`(A063258(n+1)+1)*A000292(n+1)`
-/

namespace A027802.P8415796907947315654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063258 (n + 1) + 1) * A000292 (n + 1)

end

end A027802.P8415796907947315654

namespace A027802

/-- `(A063258(n+1)+1)*A000292(n+1)` -/
def P8415796907947315654.Spec : Prop :=
  ∀ n, P8415796907947315654.a n = A027802 (n + 2)

end A027802

/-! ## A027802.P4840365931331357763

`(A166805(n+2)+2)*A000292(n+1)`
-/

namespace A027802.P4840365931331357763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166805 (n + 2) + 2) * A000292 (n + 1)

end

end A027802.P4840365931331357763

namespace A027802

/-- `(A166805(n+2)+2)*A000292(n+1)` -/
def P4840365931331357763.Spec : Prop :=
  ∀ n, P4840365931331357763.a n = A027802 (n + 2)

end A027802

/-! ## A027802.P4843178183840317279

`(A062988(n+1)-A062988(n))*A000292(n+1)`
-/

namespace A027802.P4843178183840317279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062988 (n + 1) - A062988 n) * A000292 (n + 1)

end

end A027802.P4843178183840317279

namespace A027802

/-- `(A062988(n+1)-A062988(n))*A000292(n+1)` -/
def P4843178183840317279.Spec : Prop :=
  ∀ n, P4843178183840317279.a n = A027802 (n + 2)

end A027802

/-! ## A027802.P10178673035000844302

`(n+3)/3*A240440(n+3)`
-/

namespace A027802.P10178673035000844302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A240440 (n + 3) : ℚ)

end

end A027802.P10178673035000844302

namespace A027802

/-- `(n+3)/3*A240440(n+3)` -/
def P10178673035000844302.Spec : Prop :=
  ∀ n, P10178673035000844302.a n = (A027802 (n + 2) : ℚ)

end A027802

/-! ## A027802.P9349647877637322308

`∑[∑[n+1]]*A000332(n+6)`
-/

namespace A027802.P9349647877637322308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000332 (n + 6)

end

end A027802.P9349647877637322308

namespace A027802

/-- `∑[∑[n+1]]*A000332(n+6)` -/
def P9349647877637322308.Spec : Prop :=
  ∀ n, P9349647877637322308.a n = A027802 (n + 2)

end A027802

/-! ## A027802.P9093062039952503052

`(n+3)*A000910(A020715(n))`
-/

namespace A027802.P9093062039952503052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000910 (A020715 n).toNat

end

end A027802.P9093062039952503052

namespace A027802

/-- `(n+3)*A000910(A020715(n))` -/
def P9093062039952503052.Spec : Prop :=
  ∀ n, P9093062039952503052.a n = A027802 (n + 2)

end A027802

/-! ## A027802.P1481573632973646128

`A000579(n+6)*A008706(n+3)`
-/

namespace A027802.P1481573632973646128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A008706 (n + 3)

end

end A027802.P1481573632973646128

namespace A027802

/-- `A000579(n+6)*A008706(n+3)` -/
def P1481573632973646128.Spec : Prop :=
  ∀ n, P1481573632973646128.a n = A027802 (n + 2)

end A027802

/-! ## A027802.P6630496663088842108

`A347056(A000217(n+5)-5)`
-/

namespace A027802.P6630496663088842108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347056 (A000217 (n + 5) - 5).toNat

end

end A027802.P6630496663088842108

namespace A027802

/-- `A347056(A000217(n+5)-5)` -/
def P6630496663088842108.Spec : Prop :=
  ∀ n, P6630496663088842108.a n = A027802 (n + 2)

end A027802

/-! ## A027802.P1668024761086549020

`A007318(A052905(n+4))*∑[∑[n+1]]`
-/

namespace A027802.P1668024761086549020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A052905 (n + 4)).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027802.P1668024761086549020

namespace A027802

/-- `A007318(A052905(n+4))*∑[∑[n+1]]` -/
def P1668024761086549020.Spec : Prop :=
  ∀ n, P1668024761086549020.a n = A027802 (n + 2)

end A027802

/-! ## A027802.P15099307256951646168

`A347056(A347056(A000217(n+3))+n)`
-/

namespace A027802.P15099307256951646168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347056 (A347056 (A000217 (n + 3)).toNat + (n : ℤ)).toNat

end

end A027802.P15099307256951646168

namespace A027802

/-- `A347056(A347056(A000217(n+3))+n)` -/
def P15099307256951646168.Spec : Prop :=
  ∀ n, P15099307256951646168.a n = A027802 (n + 2)

end A027802

/-!
# A027803: a(n) = 35*(n+1)*binomial(n+4, 7)/4.

The programs for A027803, the canonical program `A027803.P11646309447943617098` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027803 has offset 3).

The definition of A027803 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053347, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027803.P11646309447943617098

`35*A053347(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027803

/-- `35*A053347(n)` -/
def P11646309447943617098.Spec : Prop :=
  ∀ n, P11646309447943617098.a n = A027803 (n + 3)

theorem P11646309447943617098.correct : P11646309447943617098.Spec := by
  intro n
  simp only [A027803, Nat.add_sub_cancel]

end A027803

/-! ## A027803.P16467736278746411536

`∑[35*A050486(n)]`
-/

namespace A027803.P16467736278746411536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A050486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027803.P16467736278746411536

namespace A027803

/-- `∑[35*A050486(n)]` -/
def P16467736278746411536.Spec : Prop :=
  ∀ n, P16467736278746411536.a n = A027803 (n + 3)

end A027803

/-! ## A027803.P1367501343654072509

`∑[∑[35*A040977(n)]]`
-/

namespace A027803.P1367501343654072509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A040977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027803.P1367501343654072509

namespace A027803

/-- `∑[∑[35*A040977(n)]]` -/
def P1367501343654072509.Spec : Prop :=
  ∀ n, P1367501343654072509.a n = A027803 (n + 3)

end A027803

/-! ## A027803.P12672793306397478268

`A107395(n)+A027791(n+3)`
-/

namespace A027803.P12672793306397478268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107395 n + A027791 (n + 3)

end

end A027803.P12672793306397478268

namespace A027803

/-- `A107395(n)+A027791(n+3)` -/
def P12672793306397478268.Spec : Prop :=
  ∀ n, P12672793306397478268.a n = A027803 (n + 3)

end A027803

/-! ## A027803.P12001299783578395195

`∑[A027802(n+2)+A027791(n+3)]`
-/

namespace A027803.P12001299783578395195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027802 (n + 2) + A027791 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027803.P12001299783578395195

namespace A027803

/-- `∑[A027802(n+2)+A027791(n+3)]` -/
def P12001299783578395195.Spec : Prop :=
  ∀ n, P12001299783578395195.a n = A027803 (n + 3)

end A027803

/-! ## A027803.P7062073694605895255

`A185905((n+1)²+(n+3)²)`
-/

namespace A027803.P7062073694605895255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185905 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A027803.P7062073694605895255

namespace A027803

/-- `A185905((n+1)²+(n+3)²)` -/
def P7062073694605895255.Spec : Prop :=
  ∀ n, P7062073694605895255.a n = A027803 (n + 3)

end A027803

/-! ## A027803.P12195382636620390757

`A185731(A000384(n+3)-n)`
-/

namespace A027803.P12195382636620390757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185731 (A000384 (n + 3) - (n : ℤ)).toNat

end

end A027803.P12195382636620390757

namespace A027803

/-- `A185731(A000384(n+3)-n)` -/
def P12195382636620390757.Spec : Prop :=
  ∀ n, P12195382636620390757.a n = A027803 (n + 3)

end A027803

/-!
# A027804: a(n) = 14*(n+1)*binomial(n+4,8).

The programs for A027804, the canonical program `A027804.P15684860860392782085` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027804 has offset 4).

The definition of A027804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027804.P12012972834690305924

`A027814(n+4)-A105940(n)`
-/

namespace A027804.P12012972834690305924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027814 (n + 4) - A105940 n

end

end A027804.P12012972834690305924

namespace A027804

/-- `A027814(n+4)-A105940(n)` -/
def P12012972834690305924.Spec : Prop :=
  ∀ n, P12012972834690305924.a n = A027804 (n + 4)

end A027804

/-! ## A027804.P15684860860392782085

`14*(A056122(n)+∑[A095671(n)])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027804

/-- `14*(A056122(n)+∑[A095671(n)])` -/
def P15684860860392782085.Spec : Prop :=
  ∀ n, P15684860860392782085.a n = A027804 (n + 4)

theorem P15684860860392782085.correct : P15684860860392782085.Spec := by
  intro n
  simp only [A027804, Nat.add_sub_cancel]

end A027804

/-! ## A027804.P8860058107184561092

`(A017017(n)+4)*Δ[A054333(n)]`
-/

namespace A027804.P8860058107184561092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017017 n + 4) * (f1 (n + 1) - f1 n)

end

end A027804.P8860058107184561092

namespace A027804

/-- `(A017017(n)+4)*Δ[A054333(n)]` -/
def P8860058107184561092.Spec : Prop :=
  ∀ n, P8860058107184561092.a n = A027804 (n + 4)

end A027804

/-! ## A027804.P13696844512043431884

`(n+5)*A088625(n+8)`
-/

namespace A027804.P13696844512043431884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A088625 (n + 8)

end

end A027804.P13696844512043431884

namespace A027804

/-- `(n+5)*A088625(n+8)` -/
def P13696844512043431884.Spec : Prop :=
  ∀ n, P13696844512043431884.a n = A027804 (n + 4)

end A027804

/-! ## A027804.P18223086562141750650

`C(n+5, 5)*A000332(n+8)`
-/

namespace A027804.P18223086562141750650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A000332 (n + 8)

end

end A027804.P18223086562141750650

namespace A027804

/-- `C(n+5, 5)*A000332(n+8)` -/
def P18223086562141750650.Spec : Prop :=
  ∀ n, P18223086562141750650.a n = A027804 (n + 4)

end A027804

/-! ## A027804.P16480245521069589872

`A000581(n+8)*A008589(A020744(n+1))`
-/

namespace A027804.P16480245521069589872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A008589 (A020744 (n + 1)).toNat

end

end A027804.P16480245521069589872

namespace A027804

/-- `A000581(n+8)*A008589(A020744(n+1))` -/
def P16480245521069589872.Spec : Prop :=
  ∀ n, P16480245521069589872.a n = A027804 (n + 4)

end A027804

/-!
# A027805: a(n) = 21*(n+1)*binomial(n+4,9).

The programs for A027805, the canonical program `A027805.P6037792682893824094` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027805 has offset 5).

The definition of A027805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027805.P6037792682893824094

`A000332(n+9)*A000579(n+6)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027805

/-- `A000332(n+9)*A000579(n+6)` -/
def P6037792682893824094.Spec : Prop :=
  ∀ n, P6037792682893824094.a n = A027805 (n + 5)

theorem P6037792682893824094.correct : P6037792682893824094.Spec := by
  intro n
  simp only [A027805, Nat.add_sub_cancel]

end A027805

/-! ## A027805.P5161839723823397381

`∑[A000389(n+5)]*A000332(n+9)`
-/

namespace A027805.P5161839723823397381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000332 (n + 9)

end

end A027805.P5161839723823397381

namespace A027805

/-- `∑[A000389(n+5)]*A000332(n+9)` -/
def P5161839723823397381.Spec : Prop :=
  ∀ n, P5161839723823397381.a n = A027805 (n + 5)

end A027805

/-! ## A027805.P12719725769567597457

`∑[∑[A000332(n+4)]]*A000332(n+9)`
-/

namespace A027805.P12719725769567597457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000332 (n + 9)

end

end A027805.P12719725769567597457

namespace A027805

/-- `∑[∑[A000332(n+4)]]*A000332(n+9)` -/
def P12719725769567597457.Spec : Prop :=
  ∀ n, P12719725769567597457.a n = A027805 (n + 5)

end A027805

/-! ## A027805.P8360424009908213942

`Δ[A000389(n+9)]*A000579(n+6)`
-/

namespace A027805.P8360424009908213942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000579 (n + 6)

end

end A027805.P8360424009908213942

namespace A027805

/-- `Δ[A000389(n+9)]*A000579(n+6)` -/
def P8360424009908213942.Spec : Prop :=
  ∀ n, P8360424009908213942.a n = A027805 (n + 5)

end A027805

/-! ## A027805.P6405720489664904758

`(A000389(n+10)-A000389(n+9))*A000579(n+6)`
-/

namespace A027805.P6405720489664904758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000389 (n + 10) - A000389 (n + 9)) * A000579 (n + 6)

end

end A027805.P6405720489664904758

namespace A027805

/-- `(A000389(n+10)-A000389(n+9))*A000579(n+6)` -/
def P6405720489664904758.Spec : Prop :=
  ∀ n, P6405720489664904758.a n = A027805 (n + 5)

end A027805

/-! ## A027805.P8944086076396626687

`Δ[Δ[A000579(n+9)]]*A000579(n+6)`
-/

namespace A027805.P8944086076396626687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000579 (n + 6)

end

end A027805.P8944086076396626687

namespace A027805

/-- `Δ[Δ[A000579(n+9)]]*A000579(n+6)` -/
def P8944086076396626687.Spec : Prop :=
  ∀ n, P8944086076396626687.a n = A027805 (n + 5)

end A027805

/-!
# A027806: a(n) = 30*(n+1)*binomial(n+4,10).

The programs for A027806, the canonical program `A027806.P6442495618936108017` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027806 has offset 6).

The definition of A027806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027806.P6442495618936108017

`∑[A027805(n+5)+A027794(n+6)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027806

/-- `∑[A027805(n+5)+A027794(n+6)]` -/
def P6442495618936108017.Spec : Prop :=
  ∀ n, P6442495618936108017.a n = A027806 (n + 6)

theorem P6442495618936108017.correct : P6442495618936108017.Spec := by
  intro n
  simp only [A027806, Nat.add_sub_cancel]

end A027806

/-! ## A027806.P8437116149567389732

`∑[∑[n+1]]*A053347(n+3)`
-/

namespace A027806.P8437116149567389732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A053347 (n + 3)

end

end A027806.P8437116149567389732

namespace A027806

/-- `∑[∑[n+1]]*A053347(n+3)` -/
def P8437116149567389732.Spec : Prop :=
  ∀ n, P8437116149567389732.a n = A027806 (n + 6)

end A027806

/-! ## A027806.P10587538373106508782

`A000332(n+10)*A000580(n+7)`
-/

namespace A027806.P10587538373106508782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 10) * A000580 (n + 7)

end

end A027806.P10587538373106508782

namespace A027806

/-- `A000332(n+10)*A000580(n+7)` -/
def P10587538373106508782.Spec : Prop :=
  ∀ n, P10587538373106508782.a n = A027806 (n + 6)

end A027806

/-! ## A027806.P2387589401975232838

`Δ[A000389(n+10)]*A000580(n+7)`
-/

namespace A027806.P2387589401975232838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000580 (n + 7)

end

end A027806.P2387589401975232838

namespace A027806

/-- `Δ[A000389(n+10)]*A000580(n+7)` -/
def P2387589401975232838.Spec : Prop :=
  ∀ n, P2387589401975232838.a n = A027806 (n + 6)

end A027806

/-! ## A027806.P15191712971224740442

`A007318(A000217(n+8)-8)*Δ[A000389(n+10)]`
-/

namespace A027806.P15191712971224740442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 8) - 8).toNat * (f1 (n + 1) - f1 n)

end

end A027806.P15191712971224740442

namespace A027806

/-- `A007318(A000217(n+8)-8)*Δ[A000389(n+10)]` -/
def P15191712971224740442.Spec : Prop :=
  ∀ n, P15191712971224740442.a n = A027806 (n + 6)

end A027806

/-!
# A027807: a(n) = 165*(n+1)*binomial(n+4,11)/4.

The programs for A027807, the canonical program `A027807.P11277944637887315809` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027807 has offset 7).

The definition of A027807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027807.P11277944637887315809

`∑[A027806(n+6)+A027795(n+7)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027807

/-- `∑[A027806(n+6)+A027795(n+7)]` -/
def P11277944637887315809.Spec : Prop :=
  ∀ n, P11277944637887315809.a n = A027807 (n + 7)

theorem P11277944637887315809.correct : P11277944637887315809.Spec := by
  intro n
  simp only [A027807, Nat.add_sub_cancel]

end A027807

/-! ## A027807.P4584348650909892714

`A000581(n+11)*A005582(n+1)`
-/

namespace A027807.P4584348650909892714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 11) * A005582 (n + 1)

end

end A027807.P4584348650909892714

namespace A027807

/-- `A000581(n+11)*A005582(n+1)` -/
def P4584348650909892714.Spec : Prop :=
  ∀ n, P4584348650909892714.a n = A027807 (n + 7)

end A027807

/-! ## A027807.P14427675581579954283

`A000332(n+11)*A000581(n+8)`
-/

namespace A027807.P14427675581579954283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 11) * A000581 (n + 8)

end

end A027807.P14427675581579954283

namespace A027807

/-- `A000332(n+11)*A000581(n+8)` -/
def P14427675581579954283.Spec : Prop :=
  ∀ n, P14427675581579954283.a n = A027807 (n + 7)

end A027807

/-! ## A027807.P8302158971809883864

`∑[A000580(n+7)]*A000332(n+11)`
-/

namespace A027807.P8302158971809883864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000332 (n + 11)

end

end A027807.P8302158971809883864

namespace A027807

/-- `∑[A000580(n+7)]*A000332(n+11)` -/
def P8302158971809883864.Spec : Prop :=
  ∀ n, P8302158971809883864.a n = A027807 (n + 7)

end A027807

/-! ## A027807.P4292856377570943151

`Δ[A000389(n+11)]*A000581(n+8)`
-/

namespace A027807.P4292856377570943151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000581 (n + 8)

end

end A027807.P4292856377570943151

namespace A027807

/-- `Δ[A000389(n+11)]*A000581(n+8)` -/
def P4292856377570943151.Spec : Prop :=
  ∀ n, P4292856377570943151.a n = A027807 (n + 7)

end A027807

/-!
# A027808: a(n) = 55*(n+1)*binomial(n+4,12).

The programs for A027808, the canonical program `A027808.P7674354172885343020` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027808 has offset 8).

The definition of A027808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027808.P7674354172885343020

`(n+1)/3*A027807(n+8)/3`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A027808

/-- `(n+1)/3*A027807(n+8)/3` -/
def P7674354172885343020.Spec : Prop :=
  ∀ n, P7674354172885343020.a n = (A027808 (n + 8) : ℚ)

end A027808

/-! ## A027808.P17511241295090731634

`A000332(n+12)*A000582(n+9)`
-/

namespace A027808.P17511241295090731634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 12) * A000582 (n + 9)

end

end A027808.P17511241295090731634

namespace A027808

/-- `A000332(n+12)*A000582(n+9)` -/
def P17511241295090731634.Spec : Prop :=
  ∀ n, P17511241295090731634.a n = A027808 (n + 8)

end A027808

/-! ## A027808.P7358456900150918971

`∑[A000581(n+8)]*A000332(n+12)`
-/

namespace A027808.P7358456900150918971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000332 (n + 12)

end

end A027808.P7358456900150918971

namespace A027808

/-- `∑[A000581(n+8)]*A000332(n+12)` -/
def P7358456900150918971.Spec : Prop :=
  ∀ n, P7358456900150918971.a n = A027808 (n + 8)

end A027808

/-! ## A027808.P11504237358208421570

`Δ[A000389(n+12)]*A000582(n+9)`
-/

namespace A027808.P11504237358208421570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000582 (n + 9)

end

end A027808.P11504237358208421570

namespace A027808

/-- `Δ[A000389(n+12)]*A000582(n+9)` -/
def P11504237358208421570.Spec : Prop :=
  ∀ n, P11504237358208421570.a n = A027808 (n + 8)

end A027808

/-! ## A027808.P3220735429163662512

`(A000389(n+13)-A000389(n+12))*A000582(n+9)`
-/

namespace A027808.P3220735429163662512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000389 (n + 13) - A000389 (n + 12)) * A000582 (n + 9)

end

end A027808.P3220735429163662512

namespace A027808

/-- `(A000389(n+13)-A000389(n+12))*A000582(n+9)` -/
def P3220735429163662512.Spec : Prop :=
  ∀ n, P3220735429163662512.a n = A027808 (n + 8)

end A027808

/-!
# A027809: a(n) = 143*(n+1)*binomial(n+4,13)/2.

The programs for A027809, the canonical program `A027809.P8199107942619757607` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027809 has offset 9).

The definition of A027809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027809.P8199107942619757607

`∑[A027808(n+8)+A027797(n+9)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A027809

/-- `∑[A027808(n+8)+A027797(n+9)]` -/
def P8199107942619757607.Spec : Prop :=
  ∀ n, P8199107942619757607.a n = A027809 (n + 9)

theorem P8199107942619757607.correct : P8199107942619757607.Spec := by
  intro n
  simp only [A027809, Nat.add_sub_cancel]

end A027809

/-! ## A027809.P17821948365096038248

`A000332(n+13)*A001287(n)`
-/

namespace A027809.P17821948365096038248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 13) * A001287 (n + 10)

end

end A027809.P17821948365096038248

namespace A027809

/-- `A000332(n+13)*A001287(n)` -/
def P17821948365096038248.Spec : Prop :=
  ∀ n, P17821948365096038248.a n = A027809 (n + 9)

end A027809

/-! ## A027809.P12712055607982026699

`∑[A000582(n+9)]*A000332(n+13)`
-/

namespace A027809.P12712055607982026699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000332 (n + 13)

end

end A027809.P12712055607982026699

namespace A027809

/-- `∑[A000582(n+9)]*A000332(n+13)` -/
def P12712055607982026699.Spec : Prop :=
  ∀ n, P12712055607982026699.a n = A027809 (n + 9)

end A027809

/-! ## A027809.P2849395376606533750

`Δ[A000389(n+13)]*A001287(n)`
-/

namespace A027809.P2849395376606533750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001287 (n + 10)

end

end A027809.P2849395376606533750

namespace A027809

/-- `Δ[A000389(n+13)]*A001287(n)` -/
def P2849395376606533750.Spec : Prop :=
  ∀ n, P2849395376606533750.a n = A027809 (n + 9)

end A027809

/-!
# A027810: a(n) = (n+1)*binomial(n+5, 5).

The programs for A027810, the canonical program `A027810.P9915959440047895634` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027810 has offset 0).

The definition of A027810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027810.P9915959440047895634

`(n+1)*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027810

/-- `(n+1)*C(n+5, 5)` -/
def P9915959440047895634.Spec : Prop :=
  ∀ n, (P9915959440047895634.a n : ℤ) = A027810 n

theorem P9915959440047895634.correct : P9915959440047895634.Spec := by
  intro n
  simp only [A027810]

end A027810

/-! ## A027810.P2799132821970707790

`∑[∑[∑[∑[∑[6*n+1]]]]]`
-/

namespace A027810.P2799132821970707790
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027810.P2799132821970707790

namespace A027810

/-- `∑[∑[∑[∑[∑[6*n+1]]]]]` -/
def P2799132821970707790.Spec : Prop :=
  ∀ n, (P2799132821970707790.a n : ℤ) = A027810 n

end A027810

/-! ## A027810.P3288600659949315063

`∑[∑[∑[n+1]²]]+a(n-1)/n` with `a(0)=1`
-/

namespace A027810.P3288600659949315063
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + a (n - 1) / (n : ℚ)

end

end A027810.P3288600659949315063

namespace A027810

/-- `∑[∑[∑[n+1]²]]+a(n-1)/n` -/
def P3288600659949315063.Spec : Prop :=
  ∀ n, P3288600659949315063.a n = (A027810 n : ℚ)

end A027810

/-! ## A027810.P11843919222466648480

`2/(n+2)*A107417(n)`
-/

namespace A027810.P11843919222466648480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A107417 n : ℚ)

end

end A027810.P11843919222466648480

namespace A027810

/-- `2/(n+2)*A107417(n)` -/
def P11843919222466648480.Spec : Prop :=
  ∀ n, P11843919222466648480.a n = (A027810 n : ℚ)

end A027810

/-! ## A027810.P11662977507580005108

`A051843(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A027810.P11662977507580005108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051843 (n + 1) + a (n - 1)

end

end A027810.P11662977507580005108

namespace A027810

/-- `A051843(n+1)+a(n-1)` -/
def P11662977507580005108.Spec : Prop :=
  ∀ n, P11662977507580005108.a n = A027810 n

end A027810

/-! ## A027810.P4105130670450207966

`(n+1)*(A051745(n+1)-(n+1))`
-/

namespace A027810.P4105130670450207966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A051745 (n + 1) - (n + 1 : ℤ))

end

end A027810.P4105130670450207966

namespace A027810

/-- `(n+1)*(A051745(n+1)-(n+1))` -/
def P4105130670450207966.Spec : Prop :=
  ∀ n, P4105130670450207966.a n = A027810 n

end A027810

/-! ## A027810.P7514242357464902004

`A256860(n+1)+A174002(n)`
-/

namespace A027810.P7514242357464902004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256860 (n + 1) + A174002 n

end

end A027810.P7514242357464902004

namespace A027810

/-- `A256860(n+1)+A174002(n)` -/
def P7514242357464902004.Spec : Prop :=
  ∀ n, P7514242357464902004.a n = A027810 n

end A027810

/-! ## A027810.P4493885105116347627

`A051843(n+1)+∑[A051843(n)]`
-/

namespace A027810.P4493885105116347627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051843 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027810.P4493885105116347627

namespace A027810

/-- `A051843(n+1)+∑[A051843(n)]` -/
def P4493885105116347627.Spec : Prop :=
  ∀ n, P4493885105116347627.a n = A027810 n

end A027810

/-! ## A027810.P15260753069055426197

`A050404(n)-∑[A277935(n+1)]`
-/

namespace A027810.P15260753069055426197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050404 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027810.P15260753069055426197

namespace A027810

/-- `A050404(n)-∑[A277935(n+1)]` -/
def P15260753069055426197.Spec : Prop :=
  ∀ n, P15260753069055426197.a n = A027810 n

end A027810

/-! ## A027810.P12904384970100110420

`A277935(n+1)+A213563(n+1)`
-/

namespace A027810.P12904384970100110420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + A213563 (n + 1)

end

end A027810.P12904384970100110420

namespace A027810

/-- `A277935(n+1)+A213563(n+1)` -/
def P12904384970100110420.Spec : Prop :=
  ∀ n, P12904384970100110420.a n = A027810 n

end A027810

/-! ## A027810.P3955839104459811673

`(n+1)*(A323228(n+1)-1)`
-/

namespace A027810.P3955839104459811673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A323228 (n + 1) - 1)

end

end A027810.P3955839104459811673

namespace A027810

/-- `(n+1)*(A323228(n+1)-1)` -/
def P3955839104459811673.Spec : Prop :=
  ∀ n, P3955839104459811673.a n = A027810 n

end A027810

/-! ## A027810.P9045622143918089202

`(n+1)/2*A277935(n+2)`
-/

namespace A027810.P9045622143918089202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A277935 (n + 2) : ℚ)

end

end A027810.P9045622143918089202

namespace A027810

/-- `(n+1)/2*A277935(n+2)` -/
def P9045622143918089202.Spec : Prop :=
  ∀ n, P9045622143918089202.a n = (A027810 n : ℚ)

end A027810

/-! ## A027810.P11601604642208091955

`(n+1)*(A145127(n+1)-(n+2))`
-/

namespace A027810.P11601604642208091955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A145127 (n + 1) - (n + 2 : ℤ))

end

end A027810.P11601604642208091955

namespace A027810

/-- `(n+1)*(A145127(n+1)-(n+2))` -/
def P11601604642208091955.Spec : Prop :=
  ∀ n, P11601604642208091955.a n = A027810 n

end A027810

/-! ## A027810.P6942234031892612821

`A034263(n)+∑[A112851(n+1)]`
-/

namespace A027810.P6942234031892612821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027810.P6942234031892612821

namespace A027810

/-- `A034263(n)+∑[A112851(n+1)]` -/
def P6942234031892612821.Spec : Prop :=
  ∀ n, P6942234031892612821.a n = A027810 n

end A027810

/-! ## A027810.P3425247450364342437

`A051836(n+1)+A101094(n+1)-A005585(n+1)`
-/

namespace A027810.P3425247450364342437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (n + 1) + (A101094 (n + 1) - A005585 (n + 1))

end

end A027810.P3425247450364342437

namespace A027810

/-- `A051836(n+1)+A101094(n+1)-A005585(n+1)` -/
def P3425247450364342437.Spec : Prop :=
  ∀ n, P3425247450364342437.a n = A027810 n

end A027810

/-! ## A027810.P13590865923652810486

`A253945(n+4)/A253945(n+5)*A253946(n+5)`
-/

namespace A027810.P13590865923652810486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253945 (n + 4) : ℚ) / (A253945 (n + 5) : ℚ) * (A253946 (n + 5) : ℚ)

end

end A027810.P13590865923652810486

namespace A027810

/-- `A253945(n+4)/A253945(n+5)*A253946(n+5)` -/
def P13590865923652810486.Spec : Prop :=
  ∀ n, P13590865923652810486.a n = (A027810 n : ℚ)

end A027810

/-! ## A027810.P6202975096354109078

`(n+1)*(A154322(n+2)-(n+3))`
-/

namespace A027810.P6202975096354109078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A154322 (n + 2) - (n + 3 : ℤ))

end

end A027810.P6202975096354109078

namespace A027810

/-- `(n+1)*(A154322(n+2)-(n+3))` -/
def P6202975096354109078.Spec : Prop :=
  ∀ n, P6202975096354109078.a n = A027810 n

end A027810

/-! ## A027810.P14073147751134489953

`A174002(n+1)²/Δ[A174002(n+1)]`
-/

namespace A027810.P14073147751134489953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174002 (n + 1) ^ 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A027810.P14073147751134489953

namespace A027810

/-- `A174002(n+1)²/Δ[A174002(n+1)]` -/
def P14073147751134489953.Spec : Prop :=
  ∀ n, P14073147751134489953.a n = (A027810 n : ℚ)

end A027810

/-! ## A027810.P13896201068539543072

`(n+1)*A000389(n+5)`
-/

namespace A027810.P13896201068539543072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000389 (n + 5)

end

end A027810.P13896201068539543072

namespace A027810

/-- `(n+1)*A000389(n+5)` -/
def P13896201068539543072.Spec : Prop :=
  ∀ n, P13896201068539543072.a n = A027810 n

end A027810

/-! ## A027810.P8254579842040134417

`(n+1)*A189980(2*n)`
-/

namespace A027810.P8254579842040134417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189980 (2 * n + 10)

end

end A027810.P8254579842040134417

namespace A027810

/-- `(n+1)*A189980(2*n)` -/
def P8254579842040134417.Spec : Prop :=
  ∀ n, P8254579842040134417.a n = A027810 n

end A027810

/-!
# A027811: a(n) = 3*(n+1)*binomial(n+5,6).

The programs for A027811, the canonical program `A027811.P1361997327819684381` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027811 has offset 1).

The definition of A027811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027811.P1361997327819684381

`C(n+6, 5)*∑[n+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027811

/-- `C(n+6, 5)*∑[n+1]` -/
def P1361997327819684381.Spec : Prop :=
  ∀ n, (P1361997327819684381.a n : ℤ) = A027811 (n + 1)

theorem P1361997327819684381.correct : P1361997327819684381.Spec := by
  intro n
  simp only [A027811, Nat.add_sub_cancel]

end A027811

/-! ## A027811.P10141633722752060543

`(n+2)*3*C(n+6, 6)`
-/

namespace A027811.P10141633722752060543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (3 * Nat.choose (n + 6) 6)

end

end A027811.P10141633722752060543

namespace A027811

/-- `(n+2)*3*C(n+6, 6)` -/
def P10141633722752060543.Spec : Prop :=
  ∀ n, (P10141633722752060543.a n : ℤ) = A027811 (n + 1)

end A027811

/-! ## A027811.P563073842534825282

`(n+2)*∑[∑[∑[∑[∑[3*(n+1)]]]]]`
-/

namespace A027811.P563073842534825282
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027811.P563073842534825282

namespace A027811

/-- `(n+2)*∑[∑[∑[∑[∑[3*(n+1)]]]]]` -/
def P563073842534825282.Spec : Prop :=
  ∀ n, (P563073842534825282.a n : ℤ) = A027811 (n + 1)

end A027811

/-! ## A027811.P13495417919771046722

`A107417(n)+A027801(n+1)`
-/

namespace A027811.P13495417919771046722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107417 n + A027801 (n + 1)

end

end A027811.P13495417919771046722

namespace A027811

/-- `A107417(n)+A027801(n+1)` -/
def P13495417919771046722.Spec : Prop :=
  ∀ n, P13495417919771046722.a n = A027811 (n + 1)

end A027811

/-! ## A027811.P11685736951652155353

`A027819(n+1)-A105249(n)`
-/

namespace A027811.P11685736951652155353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027819 (n + 1) - A105249 n

end

end A027811.P11685736951652155353

namespace A027811

/-- `A027819(n+1)-A105249(n)` -/
def P11685736951652155353.Spec : Prop :=
  ∀ n, P11685736951652155353.a n = A027811 (n + 1)

end A027811

/-! ## A027811.P6093982244491507611

`A266733(n)+A253946(n+5)`
-/

namespace A027811.P6093982244491507611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266733 n + A253946 (n + 5)

end

end A027811.P6093982244491507611

namespace A027811

/-- `A266733(n)+A253946(n+5)` -/
def P6093982244491507611.Spec : Prop :=
  ∀ n, P6093982244491507611.a n = A027811 (n + 1)

end A027811

/-! ## A027811.P17384348194138691881

`A000217(n+1)+A000217(n+1)*A062988(n)`
-/

namespace A027811.P17384348194138691881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (n + 1) * A062988 n

end

end A027811.P17384348194138691881

namespace A027811

/-- `A000217(n+1)+A000217(n+1)*A062988(n)` -/
def P17384348194138691881.Spec : Prop :=
  ∀ n, P17384348194138691881.a n = A027811 (n + 1)

end A027811

/-! ## A027811.P11890509128539269297

`A266733(n+1)-A240440(n+3)`
-/

namespace A027811.P11890509128539269297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266733 (n + 1) - A240440 (n + 3)

end

end A027811.P11890509128539269297

namespace A027811

/-- `A266733(n+1)-A240440(n+3)` -/
def P11890509128539269297.Spec : Prop :=
  ∀ n, P11890509128539269297.a n = A027811 (n + 1)

end A027811

/-! ## A027811.P1146953656585949568

`A062199(n+1)/(2*A000142(n))`
-/

namespace A027811.P1146953656585949568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062199 (n + 1) : ℚ) / (2 * A000142 n : ℚ)

end

end A027811.P1146953656585949568

namespace A027811

/-- `A062199(n+1)/(2*A000142(n))` -/
def P1146953656585949568.Spec : Prop :=
  ∀ n, P1146953656585949568.a n = (A027811 (n + 1) : ℚ)

end A027811

/-!
# A027812: a(n) = 7*(n+1)*binomial(n+5,7).

The programs for A027812, the canonical program `A027812.P18259324915077861452` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027812 has offset 2).

The definition of A027812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027812.P18259324915077861452

`7*(n+3)*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027812

/-- `7*(n+3)*C(n+7, 7)` -/
def P18259324915077861452.Spec : Prop :=
  ∀ n, (P18259324915077861452.a n : ℤ) = A027812 (n + 2)

theorem P18259324915077861452.correct : P18259324915077861452.Spec := by
  intro n
  simp only [A027812, Nat.add_sub_cancel]

end A027812

/-! ## A027812.P2423680551950991293

`A000217(n+6)*A040977(n)`
-/

namespace A027812.P2423680551950991293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 6) * A040977 n

end

end A027812.P2423680551950991293

namespace A027812

/-- `A000217(n+6)*A040977(n)` -/
def P2423680551950991293.Spec : Prop :=
  ∀ n, P2423680551950991293.a n = A027812 (n + 2)

end A027812

/-! ## A027812.P18293492281284749884

`∑[A027811(n+1)+A027802(n+2)]`
-/

namespace A027812.P18293492281284749884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027811 (n + 1) + A027802 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027812.P18293492281284749884

namespace A027812

/-- `∑[A027811(n+1)+A027802(n+2)]` -/
def P18293492281284749884.Spec : Prop :=
  ∀ n, P18293492281284749884.a n = A027812 (n + 2)

end A027812

/-! ## A027812.P11232592498742907230

`∑[A005585(n+1)]*A000217(n+6)`
-/

namespace A027812.P11232592498742907230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000217 (n + 6)

end

end A027812.P11232592498742907230

namespace A027812

/-- `∑[A005585(n+1)]*A000217(n+6)` -/
def P11232592498742907230.Spec : Prop :=
  ∀ n, P11232592498742907230.a n = A027812 (n + 2)

end A027812

/-! ## A027812.P17949721784203820141

`(n+1)/3*A027811(n+2)`
-/

namespace A027812.P17949721784203820141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A027811 (n + 2) : ℚ)

end

end A027812.P17949721784203820141

namespace A027812

/-- `(n+1)/3*A027811(n+2)` -/
def P17949721784203820141.Spec : Prop :=
  ∀ n, P17949721784203820141.a n = (A027812 (n + 2) : ℚ)

end A027812

/-! ## A027812.P3193214892084144442

`(n+3)/3*A266733(n+1)`
-/

namespace A027812.P3193214892084144442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A266733 (n + 1) : ℚ)

end

end A027812.P3193214892084144442

namespace A027812

/-- `(n+3)/3*A266733(n+1)` -/
def P3193214892084144442.Spec : Prop :=
  ∀ n, P3193214892084144442.a n = (A027812 (n + 2) : ℚ)

end A027812

/-! ## A027812.P13507950521520449350

`Δ[A000580(n+7)]*A005563(n+1)`
-/

namespace A027812.P13507950521520449350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005563 (n + 1)

end

end A027812.P13507950521520449350

namespace A027812

/-- `Δ[A000580(n+7)]*A005563(n+1)` -/
def P13507950521520449350.Spec : Prop :=
  ∀ n, P13507950521520449350.a n = A027812 (n + 2)

end A027812

/-! ## A027812.P16904618653320519767

`(A062988(n+1)+1)*A000292(n+1)`
-/

namespace A027812.P16904618653320519767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062988 (n + 1) + 1) * A000292 (n + 1)

end

end A027812.P16904618653320519767

namespace A027812

/-- `(A062988(n+1)+1)*A000292(n+1)` -/
def P16904618653320519767.Spec : Prop :=
  ∀ n, P16904618653320519767.a n = A027812 (n + 2)

end A027812

/-! ## A027812.P228495894696413043

`(A166810(n+2)-A166810(n+1))*A000292(n+1)`
-/

namespace A027812.P228495894696413043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166810 (n + 2) - A166810 (n + 1)) * A000292 (n + 1)

end

end A027812.P228495894696413043

namespace A027812

/-- `(A166810(n+2)-A166810(n+1))*A000292(n+1)` -/
def P228495894696413043.Spec : Prop :=
  ∀ n, P228495894696413043.a n = A027812 (n + 2)

end A027812

/-! ## A027812.P16997859798884152605

`A000292(n+1)*A000389(n+7)`
-/

namespace A027812.P16997859798884152605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A000389 (n + 7)

end

end A027812.P16997859798884152605

namespace A027812

/-- `A000292(n+1)*A000389(n+7)` -/
def P16997859798884152605.Spec : Prop :=
  ∀ n, P16997859798884152605.a n = A027812 (n + 2)

end A027812

/-! ## A027812.P6303750698854890321

`∑[A005408(n+1)]*A299338(A005408(n+1))`
-/

namespace A027812.P6303750698854890321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A299338 (A005408 (n + 1)).toNat

end

end A027812.P6303750698854890321

namespace A027812

/-- `∑[A005408(n+1)]*A299338(A005408(n+1))` -/
def P6303750698854890321.Spec : Prop :=
  ∀ n, P6303750698854890321.a n = A027812 (n + 2)

end A027812

/-! ## A027812.P3635497333448504052

`(n+3)*A003506(A000124(n+6)+6)`
-/

namespace A027812.P3635497333448504052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A003506 (A000124 (n + 6) + 6).toNat

end

end A027812.P3635497333448504052

namespace A027812

/-- `(n+3)*A003506(A000124(n+6)+6)` -/
def P3635497333448504052.Spec : Prop :=
  ∀ n, P3635497333448504052.a n = A027812 (n + 2)

end A027812

/-! ## A027812.P13825220595909264025

`A007318(A077169(n+8))*∑[∑[n+1]]`
-/

namespace A027812.P13825220595909264025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A077169 (n + 8)).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027812.P13825220595909264025

namespace A027812

/-- `A007318(A077169(n+8))*∑[∑[n+1]]` -/
def P13825220595909264025.Spec : Prop :=
  ∀ n, P13825220595909264025.a n = A027812 (n + 2)

end A027812

/-! ## A027812.P6138857905161767953

`A007318(A000124(n+8)-8)*((n+2)²-1)`
-/

namespace A027812.P6138857905161767953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 (n + 8) - 8).toNat * (((n + 2) ^ 2 : ℤ) - 1)

end

end A027812.P6138857905161767953

namespace A027812

/-- `A007318(A000124(n+8)-8)*((n+2)²-1)` -/
def P6138857905161767953.Spec : Prop :=
  ∀ n, P6138857905161767953.a n = A027812 (n + 2)

end A027812

/-!
# A027813: a(n) = 14*(n+1)*binomial(n+5,8).

The programs for A027813, the canonical program `A027813.P14197273132276926327` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027813 has offset 3).

The definition of A027813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027813.P14197273132276926327

`7*A020722(n)*A053347(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027813

/-- `7*A020722(n)*A053347(n)` -/
def P14197273132276926327.Spec : Prop :=
  ∀ n, P14197273132276926327.a n = A027813 (n + 3)

theorem P14197273132276926327.correct : P14197273132276926327.Spec := by
  intro n
  simp only [A027813, Nat.add_sub_cancel]

end A027813

/-! ## A027813.P18179941131897552482

`∑[A027812(n+2)+A027803(n+3)]`
-/

namespace A027813.P18179941131897552482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027812 (n + 2) + A027803 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027813.P18179941131897552482

namespace A027813

/-- `∑[A027812(n+2)+A027803(n+3)]` -/
def P18179941131897552482.Spec : Prop :=
  ∀ n, P18179941131897552482.a n = A027813 (n + 3)

end A027813

/-! ## A027813.P17176689807081145663

`(A097299(n)+A054487(n))*A020744(n)`
-/

namespace A027813.P17176689807081145663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097299 n + A054487 n) * A020744 n

end

end A027813.P17176689807081145663

namespace A027813

/-- `(A097299(n)+A054487(n))*A020744(n)` -/
def P17176689807081145663.Spec : Prop :=
  ∀ n, P17176689807081145663.a n = A027813 (n + 3)

end A027813

/-! ## A027813.P15924611573524620353

`(n+4)*A088625(n+8)`
-/

namespace A027813.P15924611573524620353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A088625 (n + 8)

end

end A027813.P15924611573524620353

namespace A027813

/-- `(n+4)*A088625(n+8)` -/
def P15924611573524620353.Spec : Prop :=
  ∀ n, P15924611573524620353.a n = A027813 (n + 3)

end A027813

/-! ## A027813.P11580946064535283733

`A000581(n+8)*A008589(A020744(n))`
-/

namespace A027813.P11580946064535283733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A008589 (A020744 n).toNat

end

end A027813.P11580946064535283733

namespace A027813

/-- `A000581(n+8)*A008589(A020744(n))` -/
def P11580946064535283733.Spec : Prop :=
  ∀ n, P11580946064535283733.a n = A027813 (n + 3)

end A027813

/-! ## A027813.P13573782132295568045

`A000389(n+8)*A178821(A000217(n))`
-/

namespace A027813.P13573782132295568045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 8) * A178821 (A000217 n).toNat

end

end A027813.P13573782132295568045

namespace A027813

/-- `A000389(n+8)*A178821(A000217(n))` -/
def P13573782132295568045.Spec : Prop :=
  ∀ n, P13573782132295568045.a n = A027813 (n + 3)

end A027813

/-!
# A027814: a(n) = 126*(n+1)*binomial(n+5,9)/5.

The programs for A027814, the canonical program `A027814.P11377952305115145160` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027814 has offset 4).

The definition of A027814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027814.P11377952305115145160

`9*14*A054334(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027814

/-- `9*14*A054334(n)` -/
def P11377952305115145160.Spec : Prop :=
  ∀ n, P11377952305115145160.a n = A027814 (n + 4)

theorem P11377952305115145160.correct : P11377952305115145160.Spec := by
  intro n
  simp only [A027814, Nat.add_sub_cancel]

end A027814

/-! ## A027814.P13394447195405621682

`A105940(n)+A027804(n+4)`
-/

namespace A027814.P13394447195405621682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105940 n + A027804 (n + 4)

end

end A027814.P13394447195405621682

namespace A027814

/-- `A105940(n)+A027804(n+4)` -/
def P13394447195405621682.Spec : Prop :=
  ∀ n, P13394447195405621682.a n = A027814 (n + 4)

end A027814

/-! ## A027814.P18228256548804721263

`(n+1)*A105940(n+1)/(n+6)`
-/

namespace A027814.P18228256548804721263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A105940 (n + 1) : ℚ) / (n + 6 : ℚ))

end

end A027814.P18228256548804721263

namespace A027814

/-- `(n+1)*A105940(n+1)/(n+6)` -/
def P18228256548804721263.Spec : Prop :=
  ∀ n, P18228256548804721263.a n = (A027814 (n + 4) : ℚ)

end A027814

/-! ## A027814.P7349869677852397715

`A000389(n+5)*A000389(n+9)`
-/

namespace A027814.P7349869677852397715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) * A000389 (n + 9)

end

end A027814.P7349869677852397715

namespace A027814

/-- `A000389(n+5)*A000389(n+9)` -/
def P7349869677852397715.Spec : Prop :=
  ∀ n, P7349869677852397715.a n = A027814 (n + 4)

end A027814

/-! ## A027814.P4119732803698203289

`Δ[A000579(n+5)]*Δ[A000579(n+9)]`
-/

namespace A027814.P4119732803698203289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A027814.P4119732803698203289

namespace A027814

/-- `Δ[A000579(n+5)]*Δ[A000579(n+9)]` -/
def P4119732803698203289.Spec : Prop :=
  ∀ n, P4119732803698203289.a n = A027814 (n + 4)

end A027814

/-! ## A027814.P10094090925195394241

`A213551(A000124(n+4))*A213551(A000124(n))`
-/

namespace A027814.P10094090925195394241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213551 (A000124 (n + 4)).toNat * A213551 (A000124 n).toNat

end

end A027814.P10094090925195394241

namespace A027814

/-- `A213551(A000124(n+4))*A213551(A000124(n))` -/
def P10094090925195394241.Spec : Prop :=
  ∀ n, P10094090925195394241.a n = A027814 (n + 4)

end A027814

/-! ## A027814.P5309668367648444662

`A007318(A055999(n+3))*A007318(A055999(n+7))`
-/

namespace A027814.P5309668367648444662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055999 (n + 3)).toNat * A007318 (A055999 (n + 7)).toNat

end

end A027814.P5309668367648444662

namespace A027814

/-- `A007318(A055999(n+3))*A007318(A055999(n+7))` -/
def P5309668367648444662.Spec : Prop :=
  ∀ n, P5309668367648444662.a n = A027814 (n + 4)

end A027814

/-! ## A027814.P10476704561198158990

`A007318(A167499(n+4))*A007318(A167499(n+8))`
-/

namespace A027814.P10476704561198158990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167499 (n + 4)).toNat * A007318 (A167499 (n + 8)).toNat

end

end A027814.P10476704561198158990

namespace A027814

/-- `A007318(A167499(n+4))*A007318(A167499(n+8))` -/
def P10476704561198158990.Spec : Prop :=
  ∀ n, P10476704561198158990.a n = A027814 (n + 4)

end A027814

/-!
# A027815: a(n) = 42*(n+1) * binomial(n+5,10).

The programs for A027815, the canonical program `A027815.P10842139954553446938` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027815 has offset 5).

The definition of A027815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027815.P3086724914777623298

`A027823(n+5)-A103604(n)`
-/

namespace A027815.P3086724914777623298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027823 (n + 5) - A103604 n

end

end A027815.P3086724914777623298

namespace A027815

/-- `A027823(n+5)-A103604(n)` -/
def P3086724914777623298.Spec : Prop :=
  ∀ n, P3086724914777623298.a n = A027815 (n + 5)

end A027815

/-! ## A027815.P10842139954553446938

`(A005583(n+5)+A000292(n+6))*A000579(n+6)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027815

/-- `(A005583(n+5)+A000292(n+6))*A000579(n+6)` -/
def P10842139954553446938.Spec : Prop :=
  ∀ n, P10842139954553446938.a n = A027815 (n + 5)

theorem P10842139954553446938.correct : P10842139954553446938.Spec := by
  intro n
  simp only [A027815, Nat.add_sub_cancel]

end A027815

/-! ## A027815.P16895478384149157393

`A000389(n+10)*A000579(n+6)`
-/

namespace A027815.P16895478384149157393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 10) * A000579 (n + 6)

end

end A027815.P16895478384149157393

namespace A027815

/-- `A000389(n+10)*A000579(n+6)` -/
def P16895478384149157393.Spec : Prop :=
  ∀ n, P16895478384149157393.a n = A027815 (n + 5)

end A027815

/-! ## A027815.P16246317304346255702

`∑[A000389(n+5)]*A000389(n+10)`
-/

namespace A027815.P16246317304346255702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000389 (n + 10)

end

end A027815.P16246317304346255702

namespace A027815

/-- `∑[A000389(n+5)]*A000389(n+10)` -/
def P16246317304346255702.Spec : Prop :=
  ∀ n, P16246317304346255702.a n = A027815 (n + 5)

end A027815

/-! ## A027815.P486084788790079272

`Δ[A000579(n+10)]*A000579(n+6)`
-/

namespace A027815.P486084788790079272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000579 (n + 6)

end

end A027815.P486084788790079272

namespace A027815

/-- `Δ[A000579(n+10)]*A000579(n+6)` -/
def P486084788790079272.Spec : Prop :=
  ∀ n, P486084788790079272.a n = A027815 (n + 5)

end A027815

/-! ## A027815.P1971027360864943530

`(A000579(n+11)-A000579(n+10))*A000579(n+6)`
-/

namespace A027815.P1971027360864943530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000579 (n + 11) - A000579 (n + 10)) * A000579 (n + 6)

end

end A027815.P1971027360864943530

namespace A027815

/-- `(A000579(n+11)-A000579(n+10))*A000579(n+6)` -/
def P1971027360864943530.Spec : Prop :=
  ∀ n, P1971027360864943530.a n = A027815 (n + 5)

end A027815

/-!
# A027816: a(n) = 66*(n+1)*binomial(n+5,11).

The programs for A027816, the canonical program `A027816.P5897975307609006455` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027816 has offset 6).

The definition of A027816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027816.P5897975307609006455

`6*A000217(n+1)*A054334(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027816

/-- `6*A000217(n+1)*A054334(n+2)` -/
def P5897975307609006455.Spec : Prop :=
  ∀ n, P5897975307609006455.a n = A027816 (n + 6)

theorem P5897975307609006455.correct : P5897975307609006455.Spec := by
  intro n
  simp only [A027816, Nat.add_sub_cancel]

end A027816

/-! ## A027816.P8347730874558661335

`A000389(n+11)*A000580(n+7)`
-/

namespace A027816.P8347730874558661335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 11) * A000580 (n + 7)

end

end A027816.P8347730874558661335

namespace A027816

/-- `A000389(n+11)*A000580(n+7)` -/
def P8347730874558661335.Spec : Prop :=
  ∀ n, P8347730874558661335.a n = A027816 (n + 6)

end A027816

/-! ## A027816.P2042851465318611755

`∑[A000579(n+6)]*A000389(n+11)`
-/

namespace A027816.P2042851465318611755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000389 (n + 11)

end

end A027816.P2042851465318611755

namespace A027816

/-- `∑[A000579(n+6)]*A000389(n+11)` -/
def P2042851465318611755.Spec : Prop :=
  ∀ n, P2042851465318611755.a n = A027816 (n + 6)

end A027816

/-! ## A027816.P2488015228971629425

`∑[∑[A000389(n+5)]]*A000389(n+11)`
-/

namespace A027816.P2488015228971629425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000389 (n + 11)

end

end A027816.P2488015228971629425

namespace A027816

/-- `∑[∑[A000389(n+5)]]*A000389(n+11)` -/
def P2488015228971629425.Spec : Prop :=
  ∀ n, P2488015228971629425.a n = A027816 (n + 6)

end A027816

/-! ## A027816.P12020108951767281150

`Δ[A000579(n+11)]*A000580(n+7)`
-/

namespace A027816.P12020108951767281150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000580 (n + 7)

end

end A027816.P12020108951767281150

namespace A027816

/-- `Δ[A000579(n+11)]*A000580(n+7)` -/
def P12020108951767281150.Spec : Prop :=
  ∀ n, P12020108951767281150.a n = A027816 (n + 6)

end A027816

/-! ## A027816.P18066290078913449209

`(A000579(n+12)-A000579(n+11))*A000580(n+7)`
-/

namespace A027816.P18066290078913449209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000579 (n + 12) - A000579 (n + 11)) * A000580 (n + 7)

end

end A027816.P18066290078913449209

namespace A027816

/-- `(A000579(n+12)-A000579(n+11))*A000580(n+7)` -/
def P18066290078913449209.Spec : Prop :=
  ∀ n, P18066290078913449209.a n = A027816 (n + 6)

end A027816

/-! ## A027816.P16490030495770130585

`A007318(A055999(n+9))*A000580(n+7)`
-/

namespace A027816.P16490030495770130585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055999 (n + 9)).toNat * A000580 (n + 7)

end

end A027816.P16490030495770130585

namespace A027816

/-- `A007318(A055999(n+9))*A000580(n+7)` -/
def P16490030495770130585.Spec : Prop :=
  ∀ n, P16490030495770130585.a n = A027816 (n + 6)

end A027816

/-!
# A027817: a(n) = 99*(n+1)*binomial(n+5,12).

The programs for A027817, the canonical program `A027817.P4187198524931339810` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027817 has offset 7).

The definition of A027817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027817.P4187198524931339810

`∑[A027816(n+6)+A027807(n+7)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A027817

/-- `∑[A027816(n+6)+A027807(n+7)]` -/
def P4187198524931339810.Spec : Prop :=
  ∀ n, P4187198524931339810.a n = A027817 (n + 7)

theorem P4187198524931339810.correct : P4187198524931339810.Spec := by
  intro n
  simp only [A027817, Nat.add_sub_cancel]

end A027817

/-! ## A027817.P16989502238734475911

`Δ[A166810(A020715(n))]*A000581(n+8)`
-/

namespace A027817.P16989502238734475911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000581 (n + 8)

end

end A027817.P16989502238734475911

namespace A027817

/-- `Δ[A166810(A020715(n))]*A000581(n+8)` -/
def P16989502238734475911.Spec : Prop :=
  ∀ n, P16989502238734475911.a n = A027817 (n + 7)

end A027817

/-! ## A027817.P7195983553512030939

`A000389(n+12)*A000581(n+8)`
-/

namespace A027817.P7195983553512030939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 12) * A000581 (n + 8)

end

end A027817.P7195983553512030939

namespace A027817

/-- `A000389(n+12)*A000581(n+8)` -/
def P7195983553512030939.Spec : Prop :=
  ∀ n, P7195983553512030939.a n = A027817 (n + 7)

end A027817

/-! ## A027817.P4778319219538766157

`∑[A000580(n+7)]*A000389(n+12)`
-/

namespace A027817.P4778319219538766157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000389 (n + 12)

end

end A027817.P4778319219538766157

namespace A027817

/-- `∑[A000580(n+7)]*A000389(n+12)` -/
def P4778319219538766157.Spec : Prop :=
  ∀ n, P4778319219538766157.a n = A027817 (n + 7)

end A027817

/-! ## A027817.P12969824373702112310

`∑[∑[A000579(n+6)]]*A000389(n+12)`
-/

namespace A027817.P12969824373702112310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000389 (n + 12)

end

end A027817.P12969824373702112310

namespace A027817

/-- `∑[∑[A000579(n+6)]]*A000389(n+12)` -/
def P12969824373702112310.Spec : Prop :=
  ∀ n, P12969824373702112310.a n = A027817 (n + 7)

end A027817

/-! ## A027817.P401136995643670917

`Δ[A000579(n+12)]*A000581(n+8)`
-/

namespace A027817.P401136995643670917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000581 (n + 8)

end

end A027817.P401136995643670917

namespace A027817

/-- `Δ[A000579(n+12)]*A000581(n+8)` -/
def P401136995643670917.Spec : Prop :=
  ∀ n, P401136995643670917.a n = A027817 (n + 7)

end A027817

/-!
# A027818: a(n) = (n+1)*binomial(n+6,6).

The programs for A027818, the canonical program `A027818.P2026887167249722118` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027818 has offset 0).

The definition of A027818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027818.P2026887167249722118

`(n+1)*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027818

/-- `(n+1)*C(n+6, 6)` -/
def P2026887167249722118.Spec : Prop :=
  ∀ n, (P2026887167249722118.a n : ℤ) = A027818 n

theorem P2026887167249722118.correct : P2026887167249722118.Spec := by
  intro n
  simp only [A027818]

end A027818

/-! ## A027818.P11506225406301067112

`∑[∑[∑[∑[∑[∑[7*n+1]]]]]]`
-/

namespace A027818.P11506225406301067112
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027818.P11506225406301067112

namespace A027818

/-- `∑[∑[∑[∑[∑[∑[7*n+1]]]]]]` -/
def P11506225406301067112.Spec : Prop :=
  ∀ n, (P11506225406301067112.a n : ℤ) = A027818 n

end A027818

/-! ## A027818.P1737063344165753590

`abs(∑[∑[∑[∑[∑[∑[a(n-1)+7]]]]]])` with `a(0)=1`
-/

namespace A027818.P1737063344165753590
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f6 =>
  f6 (n - 1) + 7

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027818.P1737063344165753590

namespace A027818

/-- `abs(∑[∑[∑[∑[∑[∑[a(n-1)+7]]]]]])` -/
def P1737063344165753590.Spec : Prop :=
  ∀ n, (P1737063344165753590.a n : ℤ) = A027818 n

end A027818

/-! ## A027818.P7000765105485228531

`floor(∑[∑[∑[∑[∑[∑[a(n-1)+7]]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A027818.P7000765105485228531
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f6 =>
  f6 (n - 1) + 7

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027818.P7000765105485228531

namespace A027818

/-- `floor(∑[∑[∑[∑[∑[∑[a(n-1)+7]]]]]])` -/
def P7000765105485228531.Spec : Prop :=
  ∀ n, (P7000765105485228531.a n : ℤ) = A027818 n

end A027818

/-! ## A027818.P9952497057744953683

`ceil(∑[∑[∑[∑[∑[∑[a(n-1)+7]]]]]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A027818.P9952497057744953683
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f6 =>
  f6 (n - 1) + 7

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027818.P9952497057744953683

namespace A027818

/-- `ceil(∑[∑[∑[∑[∑[∑[a(n-1)+7]]]]]])` -/
def P9952497057744953683.Spec : Prop :=
  ∀ n, (P9952497057744953683.a n : ℤ) = A027818 n

end A027818

/-! ## A027818.P14200939131210424461

`2*∑[A050403(n)/2]`
-/

namespace A027818.P14200939131210424461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050403 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027818.P14200939131210424461

namespace A027818

/-- `2*∑[A050403(n)/2]` -/
def P14200939131210424461.Spec : Prop :=
  ∀ n, P14200939131210424461.a n = (A027818 n : ℚ)

end A027818

/-! ## A027818.P9707421625421720135

`2/(n+2)*A105249(n)`
-/

namespace A027818.P9707421625421720135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A105249 n : ℚ)

end

end A027818.P9707421625421720135

namespace A027818

/-- `2/(n+2)*A105249(n)` -/
def P9707421625421720135.Spec : Prop :=
  ∀ n, P9707421625421720135.a n = (A027818 n : ℚ)

end A027818

/-! ## A027818.P11671853268849723263

`A108681(n)-a(n-1)` with `a(0)=1`
-/

namespace A027818.P11671853268849723263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108681 n - a (n - 1)

end

end A027818.P11671853268849723263

namespace A027818

/-- `A108681(n)-a(n-1)` -/
def P11671853268849723263.Spec : Prop :=
  ∀ n, P11671853268849723263.a n = A027818 n

end A027818

/-! ## A027818.P1416456577849211328

`A108683(n)+a(n-2)` with `a(0)=1, a(1)=14`
-/

namespace A027818.P1416456577849211328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n a =>
  A108683 n + a (n - 2)

end

end A027818.P1416456577849211328

namespace A027818

/-- `A108683(n)+a(n-2)` -/
def P1416456577849211328.Spec : Prop :=
  ∀ n, P1416456577849211328.a n = A027818 n

end A027818

/-! ## A027818.P17751878087454081509

`(n+1)*(A124089(n+6)+1)`
-/

namespace A027818.P17751878087454081509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A124089 (n + 6) + 1)

end

end A027818.P17751878087454081509

namespace A027818

/-- `(n+1)*(A124089(n+6)+1)` -/
def P17751878087454081509.Spec : Prop :=
  ∀ n, P17751878087454081509.a n = A027818 n

end A027818

/-! ## A027818.P13377377652270413313

`(n+1)*(A062989(n)+1+n)`
-/

namespace A027818.P13377377652270413313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A062989 n + 1 + (n : ℤ))

end

end A027818.P13377377652270413313

namespace A027818

/-- `(n+1)*(A062989(n)+1+n)` -/
def P13377377652270413313.Spec : Prop :=
  ∀ n, P13377377652270413313.a n = A027818 n

end A027818

/-! ## A027818.P10896125894347420198

`A253947(n+6)+A000580(n+7)-A253946(n+5)`
-/

namespace A027818.P10896125894347420198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6) + (A000580 (n + 7) - A253946 (n + 5))

end

end A027818.P10896125894347420198

namespace A027818

/-- `A253947(n+6)+A000580(n+7)-A253946(n+5)` -/
def P10896125894347420198.Spec : Prop :=
  ∀ n, P10896125894347420198.a n = A027818 n

end A027818

/-! ## A027818.P893017521510145563

`Δ[A034266(n)]`
-/

namespace A027818.P893017521510145563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027818.P893017521510145563

namespace A027818

/-- `Δ[A034266(n)]` -/
def P893017521510145563.Spec : Prop :=
  ∀ n, P893017521510145563.a n = A027818 n

end A027818

/-! ## A027818.P15368592615301845350

`A034266(n+1)-A034266(n)`
-/

namespace A027818.P15368592615301845350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034266 (n + 1) - A034266 n

end

end A027818.P15368592615301845350

namespace A027818

/-- `A034266(n+1)-A034266(n)` -/
def P15368592615301845350.Spec : Prop :=
  ∀ n, P15368592615301845350.a n = A027818 n

end A027818

/-! ## A027818.P4601170465312133169

`A256861(n+2)+A000580(n+7)-A000580(n+8)`
-/

namespace A027818.P4601170465312133169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256861 (n + 2) + (A000580 (n + 7) - A000580 (n + 8))

end

end A027818.P4601170465312133169

namespace A027818

/-- `A256861(n+2)+A000580(n+7)-A000580(n+8)` -/
def P4601170465312133169.Spec : Prop :=
  ∀ n, P4601170465312133169.a n = A027818 n

end A027818

/-! ## A027818.P1327347610909449941

`A253946(n+5)/A253945(n+5)*A253946(n+5)`
-/

namespace A027818.P1327347610909449941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253946 (n + 5) : ℚ) / (A253945 (n + 5) : ℚ) * (A253946 (n + 5) : ℚ)

end

end A027818.P1327347610909449941

namespace A027818

/-- `A253946(n+5)/A253945(n+5)*A253946(n+5)` -/
def P1327347610909449941.Spec : Prop :=
  ∀ n, P1327347610909449941.a n = (A027818 n : ℚ)

end A027818

/-! ## A027818.P13795693727630953806

`(n+1)*A000579(A020715(n))`
-/

namespace A027818.P13795693727630953806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000579 (A020715 n).toNat

end

end A027818.P13795693727630953806

namespace A027818

/-- `(n+1)*A000579(A020715(n))` -/
def P13795693727630953806.Spec : Prop :=
  ∀ n, P13795693727630953806.a n = A027818 n

end A027818

/-! ## A027818.P3067572426239858537

`(n+1)*A299338(2*n)`
-/

namespace A027818.P3067572426239858537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A299338 (2 * n)

end

end A027818.P3067572426239858537

namespace A027818

/-- `(n+1)*A299338(2*n)` -/
def P3067572426239858537.Spec : Prop :=
  ∀ n, P3067572426239858537.a n = A027818 n

end A027818

/-! ## A027818.P16237367209917976506

`(n+1)*∑[A189980(2*n)]`
-/

namespace A027818.P16237367209917976506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189980 (2 * n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027818.P16237367209917976506

namespace A027818

/-- `(n+1)*∑[A189980(2*n)]` -/
def P16237367209917976506.Spec : Prop :=
  ∀ n, P16237367209917976506.a n = A027818 n

end A027818

/-! ## A027818.P16613441879633395644

`A062190(∑[n+2]-1)`
-/

namespace A027818.P16613441879633395644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A027818.P16613441879633395644

namespace A027818

/-- `A062190(∑[n+2]-1)` -/
def P16613441879633395644.Spec : Prop :=
  ∀ n, P16613441879633395644.a n = A027818 n

end A027818

/-!
# A027819: a(n) = 7*(n+1)*binomial(n+6,7)/2.

The programs for A027819, the canonical program `A027819.P11486740362378636437` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027819 has offset 1).

The definition of A027819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027819.P10869464413277098794

`7*A052181(n)`
-/

namespace A027819.P10869464413277098794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A052181 n

end

end A027819.P10869464413277098794

namespace A027819

/-- `7*A052181(n)` -/
def P10869464413277098794.Spec : Prop :=
  ∀ n, P10869464413277098794.a n = A027819 (n + 1)

end A027819

/-! ## A027819.P11486740362378636437

`C(n+2, 2)*C(n+7, 6)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027819

/-- `C(n+2, 2)*C(n+7, 6)` -/
def P11486740362378636437.Spec : Prop :=
  ∀ n, (P11486740362378636437.a n : ℤ) = A027819 (n + 1)

theorem P11486740362378636437.correct : P11486740362378636437.Spec := by
  intro n
  simp only [A027819, Nat.add_sub_cancel]

end A027819

/-! ## A027819.P2778399543249681600

`∑[n+1]*∏[(n+7)/(n+1)]`
-/

namespace A027819.P2778399543249681600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A027819.P2778399543249681600

namespace A027819

/-- `∑[n+1]*∏[(n+7)/(n+1)]` -/
def P2778399543249681600.Spec : Prop :=
  ∀ n, P2778399543249681600.a n = (A027819 (n + 1) : ℚ)

end A027819

/-! ## A027819.P5468794108091999179

`∑[7*A050483(n)]`
-/

namespace A027819.P5468794108091999179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A050483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027819.P5468794108091999179

namespace A027819

/-- `∑[7*A050483(n)]` -/
def P5468794108091999179.Spec : Prop :=
  ∀ n, P5468794108091999179.a n = A027819 (n + 1)

end A027819

/-! ## A027819.P17350344790690043069

`floor((n+1)/2*A027818(n+1))`
-/

namespace A027819.P17350344790690043069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * (A027818 (n + 1) : ℚ)⌋

end

end A027819.P17350344790690043069

namespace A027819

/-- `floor((n+1)/2*A027818(n+1))` -/
def P17350344790690043069.Spec : Prop :=
  ∀ n, P17350344790690043069.a n = A027819 (n + 1)

end A027819

/-! ## A027819.P5182426229887924129

`A105249(n)+A027811(n+1)`
-/

namespace A027819.P5182426229887924129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105249 n + A027811 (n + 1)

end

end A027819.P5182426229887924129

namespace A027819

/-- `A105249(n)+A027811(n+1)` -/
def P5182426229887924129.Spec : Prop :=
  ∀ n, P5182426229887924129.a n = A027819 (n + 1)

end A027819

/-! ## A027819.P14558013748212728082

`A000217(n+1)*A000580(n+8)-A104670(n)`
-/

namespace A027819.P14558013748212728082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000580 (n + 8) - A104670 n

end

end A027819.P14558013748212728082

namespace A027819

/-- `A000217(n+1)*A000580(n+8)-A104670(n)` -/
def P14558013748212728082.Spec : Prop :=
  ∀ n, P14558013748212728082.a n = A027819 (n + 1)

end A027819

/-! ## A027819.P13486376926695285880

`A104670(n)*A253946(n+6)/A253947(n+6)`
-/

namespace A027819.P13486376926695285880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104670 n * A253946 (n + 6) : ℚ) / (A253947 (n + 6) : ℚ)

end

end A027819.P13486376926695285880

namespace A027819

/-- `A104670(n)*A253946(n+6)/A253947(n+6)` -/
def P13486376926695285880.Spec : Prop :=
  ∀ n, P13486376926695285880.a n = (A027819 (n + 1) : ℚ)

end A027819

/-! ## A027819.P12939844731700694158

`∑[(4*n+7)*A299338(2*n)]`
-/

namespace A027819.P12939844731700694158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 7 : ℤ) * A299338 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027819.P12939844731700694158

namespace A027819

/-- `∑[(4*n+7)*A299338(2*n)]` -/
def P12939844731700694158.Spec : Prop :=
  ∀ n, P12939844731700694158.a n = A027819 (n + 1)

end A027819

/-! ## A027819.P18266584966355163253

`A124932(A055999(n+4))`
-/

namespace A027819.P18266584966355163253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124932 (A055999 (n + 4)).toNat

end

end A027819.P18266584966355163253

namespace A027819

/-- `A124932(A055999(n+4))` -/
def P18266584966355163253.Spec : Prop :=
  ∀ n, P18266584966355163253.a n = A027819 (n + 1)

end A027819

/-!
# A027820: a(n) = 28*(n+1)*binomial(n+6,8)/3.

The programs for A027820, the canonical program `A027820.P3109109739829092546` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027820 has offset 2).

The definition of A027820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027820.P3109109739829092546

`∑[∑[n+1]]*C(n+8, 6)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027820

/-- `∑[∑[n+1]]*C(n+8, 6)` -/
def P3109109739829092546.Spec : Prop :=
  ∀ n, (P3109109739829092546.a n : ℤ) = A027820 (n + 2)

theorem P3109109739829092546.correct : P3109109739829092546.Spec := by
  intro n
  simp only [A027820, Nat.add_sub_cancel]

end A027820

/-! ## A027820.P15689080572041581110

`28*A053310(n)`
-/

namespace A027820.P15689080572041581110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A053310 n

end

end A027820.P15689080572041581110

namespace A027820

/-- `28*A053310(n)` -/
def P15689080572041581110.Spec : Prop :=
  ∀ n, P15689080572041581110.a n = A027820 (n + 2)

end A027820

/-! ## A027820.P8534969060319640071

`∑[28*A053367(n)]`
-/

namespace A027820.P8534969060319640071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A053367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027820.P8534969060319640071

namespace A027820

/-- `∑[28*A053367(n)]` -/
def P8534969060319640071.Spec : Prop :=
  ∀ n, P8534969060319640071.a n = A027820 (n + 2)

end A027820

/-! ## A027820.P8681235914294563892

`∑[∑[∑[28*A051923(n)]]]`
-/

namespace A027820.P8681235914294563892
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A051923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027820.P8681235914294563892

namespace A027820

/-- `∑[∑[∑[28*A051923(n)]]]` -/
def P8681235914294563892.Spec : Prop :=
  ∀ n, P8681235914294563892.a n = A027820 (n + 2)

end A027820

/-! ## A027820.P5132680230040078761

`(n+1)/3*A027819(n+2)`
-/

namespace A027820.P5132680230040078761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A027819 (n + 2) : ℚ)

end

end A027820.P5132680230040078761

namespace A027820

/-- `(n+1)/3*A027819(n+2)` -/
def P5132680230040078761.Spec : Prop :=
  ∀ n, P5132680230040078761.a n = (A027820 (n + 2) : ℚ)

end A027820

/-! ## A027820.P18006581692875106107

`(A166810(n+2)+2)*A000292(n+1)`
-/

namespace A027820.P18006581692875106107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166810 (n + 2) + 2) * A000292 (n + 1)

end

end A027820.P18006581692875106107

namespace A027820

/-- `(A166810(n+2)+2)*A000292(n+1)` -/
def P18006581692875106107.Spec : Prop :=
  ∀ n, P18006581692875106107.a n = A027820 (n + 2)

end A027820

/-! ## A027820.P16361288866649278543

`(A166812(n+2)-A166812(n+1))*A000292(n+1)`
-/

namespace A027820.P16361288866649278543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166812 (n + 2) - A166812 (n + 1)) * A000292 (n + 1)

end

end A027820.P16361288866649278543

namespace A027820

/-- `(A166812(n+2)-A166812(n+1))*A000292(n+1)` -/
def P16361288866649278543.Spec : Prop :=
  ∀ n, P16361288866649278543.a n = A027820 (n + 2)

end A027820

/-! ## A027820.P13719050829875828796

`Δ[A000580(n+8)]*A000292(n+1)`
-/

namespace A027820.P13719050829875828796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000292 (n + 1)

end

end A027820.P13719050829875828796

namespace A027820

/-- `Δ[A000580(n+8)]*A000292(n+1)` -/
def P13719050829875828796.Spec : Prop :=
  ∀ n, P13719050829875828796.a n = A027820 (n + 2)

end A027820

/-! ## A027820.P15651188343815911405

`28*A095660(A056000(n+6))`
-/

namespace A027820.P15651188343815911405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A095660 (A056000 (n + 6)).toNat

end

end A027820.P15651188343815911405

namespace A027820

/-- `28*A095660(A056000(n+6))` -/
def P15651188343815911405.Spec : Prop :=
  ∀ n, P15651188343815911405.a n = A027820 (n + 2)

end A027820

/-!
# A027821: a(n) = 21*(n+1)*binomial(n+6,9).

The programs for A027821, the canonical program `A027821.P6839826213611769145` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027821 has offset 3).

The definition of A027821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027821.P6839826213611769145

`∑[A027820(n+2)+A027813(n+3)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027821

/-- `∑[A027820(n+2)+A027813(n+3)]` -/
def P6839826213611769145.Spec : Prop :=
  ∀ n, P6839826213611769145.a n = A027821 (n + 3)

theorem P6839826213611769145.correct : P6839826213611769145.Spec := by
  intro n
  simp only [A027821, Nat.add_sub_cancel]

end A027821

/-! ## A027821.P5018986693183167452

`7*(n+1)*A053310(n+1)`
-/

namespace A027821.P5018986693183167452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n + 1 : ℤ) * A053310 (n + 1))

end

end A027821.P5018986693183167452

namespace A027821

/-- `7*(n+1)*A053310(n+1)` -/
def P5018986693183167452.Spec : Prop :=
  ∀ n, P5018986693183167452.a n = A027821 (n + 3)

end A027821

/-! ## A027821.P1580778544244314850

`Δ[A000580(n+9)]*A000332(n+4)`
-/

namespace A027821.P1580778544244314850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000332 (n + 4)

end

end A027821.P1580778544244314850

namespace A027821

/-- `Δ[A000580(n+9)]*A000332(n+4)` -/
def P1580778544244314850.Spec : Prop :=
  ∀ n, P1580778544244314850.a n = A027821 (n + 3)

end A027821

/-! ## A027821.P17745987456048098996

`∑[∑[∑[n+1]]]*A000579(n+9)`
-/

namespace A027821.P17745987456048098996
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000579 (n + 9)

end

end A027821.P17745987456048098996

namespace A027821

/-- `∑[∑[∑[n+1]]]*A000579(n+9)` -/
def P17745987456048098996.Spec : Prop :=
  ∀ n, P17745987456048098996.a n = A027821 (n + 3)

end A027821

/-! ## A027821.P15013834342178340425

`A000579(n+9)*A178821(A000217(n))`
-/

namespace A027821.P15013834342178340425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 9) * A178821 (A000217 n).toNat

end

end A027821.P15013834342178340425

namespace A027821

/-- `A000579(n+9)*A178821(A000217(n))` -/
def P15013834342178340425.Spec : Prop :=
  ∀ n, P15013834342178340425.a n = A027821 (n + 3)

end A027821

/-!
# A027822: a(n) = 42*(n+1)*binomial(n+6,10).

The programs for A027822, the canonical program `A027822.P16244193656879862890` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027822 has offset 4).

The definition of A027822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027822.P16244193656879862890

`2*(n+1)/10*A027821(n+4)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027822

/-- `2*(n+1)/10*A027821(n+4)` -/
def P16244193656879862890.Spec : Prop :=
  ∀ n, P16244193656879862890.a n = (A027822 (n + 4) : ℚ)

end A027822

/-! ## A027822.P7658186254912155498

`Δ[A000580(n+10)]*A000389(n+5)`
-/

namespace A027822.P7658186254912155498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000389 (n + 5)

end

end A027822.P7658186254912155498

namespace A027822

/-- `Δ[A000580(n+10)]*A000389(n+5)` -/
def P7658186254912155498.Spec : Prop :=
  ∀ n, P7658186254912155498.a n = A027822 (n + 4)

end A027822

/-! ## A027822.P12645931511743212791

`(A000580(n+11)-A000580(n+10))*A000389(n+5)`
-/

namespace A027822.P12645931511743212791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 11) - A000580 (n + 10)) * A000389 (n + 5)

end

end A027822.P12645931511743212791

namespace A027822

/-- `(A000580(n+11)-A000580(n+10))*A000389(n+5)` -/
def P12645931511743212791.Spec : Prop :=
  ∀ n, P12645931511743212791.a n = A027822 (n + 4)

end A027822

/-! ## A027822.P13857791641769423682

`(A000579(n+9)+A000389(n+9))*A000389(n+5)`
-/

namespace A027822.P13857791641769423682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000579 (n + 9) + A000389 (n + 9)) * A000389 (n + 5)

end

end A027822.P13857791641769423682

namespace A027822

/-- `(A000579(n+9)+A000389(n+9))*A000389(n+5)` -/
def P13857791641769423682.Spec : Prop :=
  ∀ n, P13857791641769423682.a n = A027822 (n + 4)

end A027822

/-! ## A027822.P5931432061584229975

`A000389(n+5)*A000579(n+10)`
-/

namespace A027822.P5931432061584229975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) * A000579 (n + 10)

end

end A027822.P5931432061584229975

namespace A027822

/-- `A000389(n+5)*A000579(n+10)` -/
def P5931432061584229975.Spec : Prop :=
  ∀ n, P5931432061584229975.a n = A027822 (n + 4)

end A027822

/-! ## A027822.P5082714546176023691

`∑[A000332(n+4)]*A000579(n+10)`
-/

namespace A027822.P5082714546176023691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000579 (n + 10)

end

end A027822.P5082714546176023691

namespace A027822

/-- `∑[A000332(n+4)]*A000579(n+10)` -/
def P5082714546176023691.Spec : Prop :=
  ∀ n, P5082714546176023691.a n = A027822 (n + 4)

end A027822

/-! ## A027822.P13436263645615122685

`Δ[A000579(n+5)]*A000579(n+10)`
-/

namespace A027822.P13436263645615122685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000579 (n + 10)

end

end A027822.P13436263645615122685

namespace A027822

/-- `Δ[A000579(n+5)]*A000579(n+10)` -/
def P13436263645615122685.Spec : Prop :=
  ∀ n, P13436263645615122685.a n = A027822 (n + 4)

end A027822

/-! ## A027822.P12563602551981323572

`(A000579(n+6)-A000579(n+5))*A000579(n+10)`
-/

namespace A027822.P12563602551981323572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000579 (n + 6) - A000579 (n + 5)) * A000579 (n + 10)

end

end A027822.P12563602551981323572

namespace A027822

/-- `(A000579(n+6)-A000579(n+5))*A000579(n+10)` -/
def P12563602551981323572.Spec : Prop :=
  ∀ n, P12563602551981323572.a n = A027822 (n + 4)

end A027822

/-! ## A027822.P17902727579750686754

`A000579(n+10)*A178822(A000217(n))`
-/

namespace A027822.P17902727579750686754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 10) * A178822 (A000217 n).toNat

end

end A027822.P17902727579750686754

namespace A027822

/-- `A000579(n+10)*A178822(A000217(n))` -/
def P17902727579750686754.Spec : Prop :=
  ∀ n, P17902727579750686754.a n = A027822 (n + 4)

end A027822

/-!
# A027823: a(n) = 77*(n+1)*binomial(n+6,11).

The programs for A027823, the canonical program `A027823.P18137673484593620447` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027823 has offset 5).

The definition of A027823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027823.P18137673484593620447

`A103604(n)+A027815(n+5)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027823

/-- `A103604(n)+A027815(n+5)` -/
def P18137673484593620447.Spec : Prop :=
  ∀ n, P18137673484593620447.a n = A027823 (n + 5)

theorem P18137673484593620447.correct : P18137673484593620447.Spec := by
  intro n
  simp only [A027823, Nat.add_sub_cancel]

end A027823

/-! ## A027823.P4410011073602551725

`∑[A027822(n+4)+A027815(n+5)]`
-/

namespace A027823.P4410011073602551725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027822 (n + 4) + A027815 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027823.P4410011073602551725

namespace A027823

/-- `∑[A027822(n+4)+A027815(n+5)]` -/
def P4410011073602551725.Spec : Prop :=
  ∀ n, P4410011073602551725.a n = A027823 (n + 5)

end A027823

/-! ## A027823.P2214101443001244499

`A000579(n+6)*A000579(n+11)`
-/

namespace A027823.P2214101443001244499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A000579 (n + 11)

end

end A027823.P2214101443001244499

namespace A027823

/-- `A000579(n+6)*A000579(n+11)` -/
def P2214101443001244499.Spec : Prop :=
  ∀ n, P2214101443001244499.a n = A027823 (n + 5)

end A027823

/-! ## A027823.P9311600019932815203

`A299338(2*n)*A299338(A005843(n+5))`
-/

namespace A027823.P9311600019932815203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n) * A299338 (A005843 (n + 5)).toNat

end

end A027823.P9311600019932815203

namespace A027823

/-- `A299338(2*n)*A299338(A005843(n+5))` -/
def P9311600019932815203.Spec : Prop :=
  ∀ n, P9311600019932815203.a n = A027823 (n + 5)

end A027823

/-! ## A027823.P17246810173245124655

`A299338(2*n)*A299338(A004275(n+6))`
-/

namespace A027823.P17246810173245124655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n) * A299338 (A004275 (n + 6)).toNat

end

end A027823.P17246810173245124655

namespace A027823

/-- `A299338(2*n)*A299338(A004275(n+6))` -/
def P17246810173245124655.Spec : Prop :=
  ∀ n, P17246810173245124655.a n = A027823 (n + 5)

end A027823

/-! ## A027823.P6020003336147130132

`A085478(A167614(n+2))*A085478(A167614(n+7))`
-/

namespace A027823.P6020003336147130132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A167614 (n + 2)).toNat * A085478 (A167614 (n + 7)).toNat

end

end A027823.P6020003336147130132

namespace A027823

/-- `A085478(A167614(n+2))*A085478(A167614(n+7))` -/
def P6020003336147130132.Spec : Prop :=
  ∀ n, P6020003336147130132.a n = A027823 (n + 5)

end A027823

/-!
# A027826: Inverse binomial transform of a_0 = 1, a_1, a_2, etc. is a_0, 0, a_1, 0, a_2, 0, etc.

The programs for A027826, there is no canonical definition to state claims against.
-/

/-! ## A027826.P6962312411917295352

`A028310(Δ[A025276(n+3)])`
-/

namespace A027826.P6962312411917295352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025276 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A027826.P6962312411917295352

/-! ## A027826.P889487131184125112

`Δ[A025276(n+3)]%A334334(n+3)`
-/

namespace A027826.P889487131184125112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025276 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A334334 (n + 3))

end

end A027826.P889487131184125112

/-! ## A027826.P2602433781271877807

`A110656(floor(sqrt(A318212(n+1))))`
-/

namespace A027826.P2602433781271877807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.sqrt (A318212 (n + 1))).toNat

end

end A027826.P2602433781271877807

/-! ## A027826.P7494019002097750599

`A110656(round(sqrt(A318212(n+1))))`
-/

namespace A027826.P7494019002097750599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (SequenceMachineLib.roundAway (Real.sqrt (A318212 (n + 1) : ℝ))).toNat

end

end A027826.P7494019002097750599

/-! ## A027826.P6827115528376180473

`A296201(n)-A178798(A227309(n))`
-/

namespace A027826.P6827115528376180473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296201 n - A178798 (A227309 n).toNat

end

end A027826.P6827115528376180473

/-!
# A027827: Values of k for which 11 divides A000041(k).

The programs for A027827, there is no canonical definition to state claims against.
-/

/-! ## A027827.P3309385704455328464

`eq[0, A020919(n)]`
-/

namespace A027827.P3309385704455328464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027827.P3309385704455328464

/-! ## A027827.P3742244700951819185

`A028310(lt[A020919(n), 1])`
-/

namespace A027827.P3742244700951819185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A027827.P3742244700951819185

/-! ## A027827.P2530808582997951863

`lt[A020919(n), A158388(n)]`
-/

namespace A027827.P2530808582997951863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027827.P2530808582997951863

/-! ## A027827.P1810082694757896997

`lt[A122854(A020919(n)), A010694(n)]`
-/

namespace A027827.P1810082694757896997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122854 (A020919 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027827.P1810082694757896997

/-! ## A027827.P16603193501507215546

`lt[A005843(A020919(n)), A000002(n+1)]`
-/

namespace A027827.P16603193501507215546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A020919 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027827.P16603193501507215546

/-! ## A027827.P6320304691789501054

`lt[A005843(A020919(n)), A006928(n+1)]`
-/

namespace A027827.P6320304691789501054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A020919 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027827.P6320304691789501054

/-! ## A027827.P15977433791601309101

`lt[A005843(A020919(n)), A049710(n+1)]`
-/

namespace A027827.P15977433791601309101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A020919 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027827.P15977433791601309101

/-! ## A027827.P9313013132085031846

`lt[A005843(A020919(n)), A078880(n+1)]`
-/

namespace A027827.P9313013132085031846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A020919 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027827.P9313013132085031846

/-! ## A027827.P5367282673480460203

`lt[A020919(n), A249093(A074262(n+1))]`
-/

namespace A027827.P5367282673480460203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A074262 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027827.P5367282673480460203

/-! ## A027827.P3850595549979315978

`eq[0, A000041(n)%11]`
-/

namespace A027827.P3850595549979315978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027827.P3850595549979315978

/-! ## A027827.P15155699130469090941

`eq[10, A000065(n)%11]`
-/

namespace A027827.P15155699130469090941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027827.P15155699130469090941

/-! ## A027827.P17773067704886842100

`eq[11, gcd(11, A000041(n+1))]+1`
-/

namespace A027827.P17773067704886842100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A000041 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A027827.P17773067704886842100

/-! ## A027827.P17514296250586362705

`eq[0, A183011(n)%11]`
-/

namespace A027827.P17514296250586362705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183011 n) 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027827.P17514296250586362705

/-! ## A027827.P13656773726255281001

`eq[0, A035363(2*n)%11]`
-/

namespace A027827.P13656773726255281001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 (2 * n)) 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027827.P13656773726255281001

/-! ## A027827.P6468316377855840840

`lt[A020919(n), n/A000041(n)²]`
-/

namespace A027827.P6468316377855840840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000041 n ^ 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A027827.P6468316377855840840

/-! ## A027827.P14058643937966344997

`lt[A000041(n*A020919(n)), n]`
-/

namespace A027827.P14058643937966344997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n : ℤ) * A020919 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A027827.P14058643937966344997

/-!
# A027828: First differences of A010785.

The programs for A027828, the canonical program `A027828.P755107528751851757` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027828 has offset 0).

The definition of A027828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 900 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027828.P15661496496587734119

`Δ[(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9]`
-/

namespace A027828.P15661496496587734119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027828.P15661496496587734119

namespace A027828

/-- `Δ[(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9]` -/
def P15661496496587734119.Spec : Prop :=
  ∀ n, P15661496496587734119.a n = (A027828 n : ℚ)

end A027828

/-! ## A027828.P755107528751851757

`abs(Δ[A010785(n)])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027828

/-- `abs(Δ[A010785(n)])` -/
def P755107528751851757.Spec : Prop :=
  ∀ n, P755107528751851757.a n = A027828 n

theorem P755107528751851757.correct : P755107528751851757.Spec := by
  intro n
  simp only [A027828]

end A027828

/-! ## A027828.P15220994997084495766

`gcd(Δ[A010785(n)], A000038(n))`
-/

namespace A027828.P15220994997084495766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A027828.P15220994997084495766

namespace A027828

/-- `gcd(Δ[A010785(n)], A000038(n))` -/
def P15220994997084495766.Spec : Prop :=
  ∀ n, (P15220994997084495766.a n : ℤ) = A027828 n

end A027828

/-! ## A027828.P7662936195565747636

`or(Δ[A010785(n)], A000007(n))`
-/

namespace A027828.P7662936195565747636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A000007 n)

end

end A027828.P7662936195565747636

namespace A027828

/-- `or(Δ[A010785(n)], A000007(n))` -/
def P7662936195565747636.Spec : Prop :=
  ∀ n, P7662936195565747636.a n = A027828 n

end A027828

/-! ## A027828.P5804677404923337023

`A010785(n+1)-A010785(n)`
-/

namespace A027828.P5804677404923337023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (n + 1) - A010785 n

end

end A027828.P5804677404923337023

namespace A027828

/-- `A010785(n+1)-A010785(n)` -/
def P5804677404923337023.Spec : Prop :=
  ∀ n, P5804677404923337023.a n = A027828 n

end A027828

/-! ## A027828.P2158233360541946803

`lcm(Δ[A010785(n)], A008836(n+1))`
-/

namespace A027828.P2158233360541946803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A008836 (n + 1))

end

end A027828.P2158233360541946803

namespace A027828

/-- `lcm(Δ[A010785(n)], A008836(n+1))` -/
def P2158233360541946803.Spec : Prop :=
  ∀ n, (P2158233360541946803.a n : ℤ) = A027828 n

end A027828

/-! ## A027828.P13330457018844980014

`A014963(10*(n+1))*Δ[A010785(n)]`
-/

namespace A027828.P13330457018844980014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * (f1 (n + 1) - f1 n)

end

end A027828.P13330457018844980014

namespace A027828

/-- `A014963(10*(n+1))*Δ[A010785(n)]` -/
def P13330457018844980014.Spec : Prop :=
  ∀ n, P13330457018844980014.a n = A027828 n

end A027828

/-! ## A027828.P1940133840494170229

`record[A010785(A008612(n))]-A010785(n)`
-/

namespace A027828.P1940133840494170229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A010785 n

end

end A027828.P1940133840494170229

namespace A027828

/-- `record[A010785(A008612(n))]-A010785(n)` -/
def P1940133840494170229.Spec : Prop :=
  ∀ n, P1940133840494170229.a n = A027828 n

end A027828

/-! ## A027828.P2029678726773611005

`record[A010785(A028242(n))]-A010785(n)`
-/

namespace A027828.P2029678726773611005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A010785 n

end

end A027828.P2029678726773611005

namespace A027828

/-- `record[A010785(A028242(n))]-A010785(n)` -/
def P2029678726773611005.Spec : Prop :=
  ∀ n, P2029678726773611005.a n = A027828 n

end A027828

/-! ## A027828.P18110118135100239137

`Δ[A152966(n)]/2`
-/

namespace A027828.P18110118135100239137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A027828.P18110118135100239137

namespace A027828

/-- `Δ[A152966(n)]/2` -/
def P18110118135100239137.Spec : Prop :=
  ∀ n, P18110118135100239137.a n = (A027828 n : ℚ)

end A027828

/-! ## A027828.P4588102269693937400

`Δ[A010785(n)]%(2*A000045(n+2))`
-/

namespace A027828.P4588102269693937400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (2 * A000045 (n + 2))

end

end A027828.P4588102269693937400

namespace A027828

/-- `Δ[A010785(n)]%(2*A000045(n+2))` -/
def P4588102269693937400.Spec : Prop :=
  ∀ n, P4588102269693937400.a n = A027828 n

end A027828

/-! ## A027828.P16825340745138806967

`A007318(∑[n])*Δ[A010785(n)]`
-/

namespace A027828.P16825340745138806967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A027828.P16825340745138806967

namespace A027828

/-- `A007318(∑[n])*Δ[A010785(n)]` -/
def P16825340745138806967.Spec : Prop :=
  ∀ n, P16825340745138806967.a n = A027828 n

end A027828

/-!
# A027829: 

The programs for A027829, there is no canonical definition to state claims against.
-/

/-! ## A027829.P14286769780825569750

`A016113(n+1)²`
-/

namespace A027829.P14286769780825569750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016113 (n + 1) ^ 2

end

end A027829.P14286769780825569750

/-! ## A027829.P6170163990199494633

`A016113(n+1)^A000005(A007488(n+1))`
-/

namespace A027829.P6170163990199494633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016113 (n + 1) : ℚ) ^ (A000005 (A007488 (n + 1)).toNat : ℤ)

end

end A027829.P6170163990199494633

/-! ## A027829.P2221743704156660237

`A016113(n+1)^A000005(A007500(n+1))`
-/

namespace A027829.P2221743704156660237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016113 (n + 1) : ℚ) ^ (A000005 (A007500 (n + 1)).toNat : ℤ)

end

end A027829.P2221743704156660237

/-!
# A027831: Expansion of 1/(1 - 4*x + 2*x^2 + 4*x^3 - 2*x^4).

The programs for A027831, the canonical program `A027831.P6978240485532134580` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027831 has offset 0).

The definition of A027831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+2x^2+4x^3-2x^4))` (program `A027831.P6978240485532134580`, by `A027831.P6978240485532134580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027831.P6978240485532134580

`ogf(1/(1-4x+2x^2+4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027831

/-- `ogf(1/(1-4x+2x^2+4x^3-2x^4))` -/
def P6978240485532134580.Spec : Prop :=
  ∀ n, P6978240485532134580.a n = A027831 n

theorem P6978240485532134580.correct : P6978240485532134580.Spec := by
  intro n
  simp only [A027831]

end A027831

/-! ## A027831.P17274736939676359409

`4*a(n-1)-2*a(n-2)-4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=44`
-/

namespace A027831.P17274736939676359409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 14, 44] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 4 * a (n - 3) + 2 * a (n - 4)

end

end A027831.P17274736939676359409

namespace A027831

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)+2*a(n-4)` -/
def P17274736939676359409.Spec : Prop :=
  ∀ n, P17274736939676359409.a n = A027831 n

end A027831

/-! ## A027831.P8260618333106759097

`A097894(n+1)-A185284(ceil(n²/2))`
-/

namespace A027831.P8260618333106759097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097894 (n + 1) - A185284 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

end

end A027831.P8260618333106759097

namespace A027831

/-- `A097894(n+1)-A185284(ceil(n²/2))` -/
def P8260618333106759097.Spec : Prop :=
  ∀ n, P8260618333106759097.a n = A027831 n

end A027831

/-! ## A027831.P6394274670242430586

`A097894(n+1)-A055641(A096647(n))`
-/

namespace A027831.P6394274670242430586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097894 (n + 1) - A055641 (A096647 n).toNat

end

end A027831.P6394274670242430586

namespace A027831

/-- `A097894(n+1)-A055641(A096647(n))` -/
def P6394274670242430586.Spec : Prop :=
  ∀ n, P6394274670242430586.a n = A027831 n

end A027831

/-! ## A027831.P14356912255031132234

`A097894(n+1)-A292380(A122206(n))`
-/

namespace A027831.P14356912255031132234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097894 (n + 1) - A292380 (A122206 n).toNat

end

end A027831.P14356912255031132234

namespace A027831

/-- `A097894(n+1)-A292380(A122206(n))` -/
def P14356912255031132234.Spec : Prop :=
  ∀ n, P14356912255031132234.a n = A027831 n

end A027831

/-!
# A027832: Number of symmetric {-1, +1} matrices of order n with nonnegative row and column sums.

The programs for A027832, there is no canonical definition to state claims against.
-/

/-! ## A027832.P5197677044083056838

`A334548(A324275(n+1)-A000120(n))`
-/

namespace A027832.P5197677044083056838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (A324275 (n + 1) - A000120 n).toNat

end

end A027832.P5197677044083056838

/-! ## A027832.P9198531872169162139

`A334548(A324275(n+1)-A093655(n+1))`
-/

namespace A027832.P9198531872169162139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (A324275 (n + 1) - A093655 (n + 1)).toNat

end

end A027832.P9198531872169162139

/-!
# A027833: Distances between successive 2's in sequence A001223 of differences between consecutive primes.

The programs for A027833, the canonical program `A027833.P2673229578852313683` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027833 has offset 1).

The definition of A027833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027833.P13903942621198609770

`Δ[A029707(n+1)]`
-/

namespace A027833.P13903942621198609770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027833.P13903942621198609770

namespace A027833

/-- `Δ[A029707(n+1)]` -/
def P13903942621198609770.Spec : Prop :=
  ∀ n, P13903942621198609770.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P10838575757545575324

`A048614(n+1)+2-A000007(n)`
-/

namespace A027833.P10838575757545575324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1) + (2 - A000007 n)

end

end A027833.P10838575757545575324

namespace A027833

/-- `A048614(n+1)+2-A000007(n)` -/
def P10838575757545575324.Spec : Prop :=
  ∀ n, P10838575757545575324.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P16087320529657023297

`A029707(n+2)-A029707(n+1)`
-/

namespace A027833.P16087320529657023297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2) - A029707 (n + 1)

end

end A027833.P16087320529657023297

namespace A027833

/-- `A029707(n+2)-A029707(n+1)` -/
def P16087320529657023297.Spec : Prop :=
  ∀ n, P16087320529657023297.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P16841155897120197428

`A048614(n+1)+A020639(A298026(n))`
-/

namespace A027833.P16841155897120197428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1) + A020639 (A298026 n).toNat

end

end A027833.P16841155897120197428

namespace A027833

/-- `A048614(n+1)+A020639(A298026(n))` -/
def P16841155897120197428.Spec : Prop :=
  ∀ n, P16841155897120197428.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P13013786497160575864

`A242767(n+3)`
-/

namespace A027833.P13013786497160575864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 3)

end

end A027833.P13013786497160575864

namespace A027833

/-- `A242767(n+3)` -/
def P13013786497160575864.Spec : Prop :=
  ∀ n, P13013786497160575864.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P10472369685649883066

`Δ[A107770(n+1)]`
-/

namespace A027833.P10472369685649883066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027833.P10472369685649883066

namespace A027833

/-- `Δ[A107770(n+1)]` -/
def P10472369685649883066.Spec : Prop :=
  ∀ n, P10472369685649883066.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P13471203465970373609

`Δ[A155752(n+1)]`
-/

namespace A027833.P13471203465970373609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027833.P13471203465970373609

namespace A027833

/-- `Δ[A155752(n+1)]` -/
def P13471203465970373609.Spec : Prop :=
  ∀ n, P13471203465970373609.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P14453414957857187319

`A107770(n+2)-A107770(n+1)`
-/

namespace A027833.P14453414957857187319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 2) - A107770 (n + 1)

end

end A027833.P14453414957857187319

namespace A027833

/-- `A107770(n+2)-A107770(n+1)` -/
def P14453414957857187319.Spec : Prop :=
  ∀ n, P14453414957857187319.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P2415382008542474959

`A155752(n+2)-A155752(n+1)`
-/

namespace A027833.P2415382008542474959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 2) - A155752 (n + 1)

end

end A027833.P2415382008542474959

namespace A027833

/-- `A155752(n+2)-A155752(n+1)` -/
def P2415382008542474959.Spec : Prop :=
  ∀ n, P2415382008542474959.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P2673229578852313683

`Δ[eq[2, A001223(n+1)]]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027833

/-- `Δ[eq[2, A001223(n+1)]]` -/
def P2673229578852313683.Spec : Prop :=
  ∀ n, P2673229578852313683.a n = A027833 (n + 1)

theorem P2673229578852313683.correct : P2673229578852313683.Spec := by
  intro n
  simp only [A027833, Nat.add_sub_cancel]

end A027833

/-! ## A027833.P18146581579239720917

`A334142(2*(n+1))-A334142(A004277(n))`
-/

namespace A027833.P18146581579239720917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1)) - A334142 (A004277 n).toNat

end

end A027833.P18146581579239720917

namespace A027833

/-- `A334142(2*(n+1))-A334142(A004277(n))` -/
def P18146581579239720917.Spec : Prop :=
  ∀ n, P18146581579239720917.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P13058785147305832919

`A334142(2*(n+1))-A334142(A004275(n+1))`
-/

namespace A027833.P13058785147305832919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1)) - A334142 (A004275 (n + 1)).toNat

end

end A027833.P13058785147305832919

namespace A027833

/-- `A334142(2*(n+1))-A334142(A004275(n+1))` -/
def P13058785147305832919.Spec : Prop :=
  ∀ n, P13058785147305832919.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P4386045104740911059

`Δ[eq[2, Δ[p?[2*n+1]]]]`
-/

namespace A027833.P4386045104740911059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => (f5 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A027833.P4386045104740911059

namespace A027833

/-- `Δ[eq[2, Δ[p?[2*n+1]]]]` -/
def P4386045104740911059.Spec : Prop :=
  ∀ n, P4386045104740911059.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P11641029689393472841

`Δ[lt[Δ[p?[2*n+1]], 3]]`
-/

namespace A027833.P11641029689393472841
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f5 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A027833.P11641029689393472841

namespace A027833

/-- `Δ[lt[Δ[p?[2*n+1]], 3]]` -/
def P11641029689393472841.Spec : Prop :=
  ∀ n, P11641029689393472841.a n = A027833 (n + 1)

end A027833

/-! ## A027833.P3095553747944943161

`Δ[eq[1, A046933(n+1)]]`
-/

namespace A027833.P3095553747944943161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A027833.P3095553747944943161

namespace A027833

/-- `Δ[eq[1, A046933(n+1)]]` -/
def P3095553747944943161.Spec : Prop :=
  ∀ n, P3095553747944943161.a n = A027833 (n + 1)

end A027833

/-!
# A027834: Number of labeled strongly connected n-state 2-input automata.

The programs for A027834, there is no canonical definition to state claims against.
-/

/-! ## A027834.P17426687731488879425

`n!*A304312(n)`
-/

namespace A027834.P17426687731488879425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A304312 n

end

end A027834.P17426687731488879425

/-! ## A027834.P11531233938582466449

`A000142(n)*A304312(n)`
-/

namespace A027834.P11531233938582466449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A304312 n

end

end A027834.P11531233938582466449

/-! ## A027834.P8093939505673015083

`∏[A028310(n)]*A304312(n)`
-/

namespace A027834.P8093939505673015083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A304312 n

end

end A027834.P8093939505673015083

/-! ## A027834.P594543932913107127

`A006691(A028310(n))^A178334(n)*n!`
-/

namespace A027834.P594543932913107127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006691 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ) * (Nat.factorial n : ℚ)

end

end A027834.P594543932913107127

/-! ## A027834.P683089360624342308

`A006691(A028310(n))%A304317(n)*n!`
-/

namespace A027834.P683089360624342308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006691 (A028310 n).toNat) (A304317 n) * (Nat.factorial n : ℤ)

end

end A027834.P683089360624342308

/-!
# A027836: Total number of vertices in all loopless rooted planar maps with n edges.

The programs for A027836, the canonical program `A027836.P1844303588074329339` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027836 has offset 0).

The definition of A027836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027836.P1844303588074329339

`(4*A069271(n))%A007228(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027836

/-- `(4*A069271(n))%A007228(n)` -/
def P1844303588074329339.Spec : Prop :=
  ∀ n, P1844303588074329339.a n = A027836 n

theorem P1844303588074329339.correct : P1844303588074329339.Spec := by
  intro n
  simp only [A027836]

end A027836

/-! ## A027836.P12491997523649956467

`A000260(n)+A069271(n)-A002293(n)`
-/

namespace A027836.P12491997523649956467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n + (A069271 n - A002293 n)

end

end A027836.P12491997523649956467

namespace A027836

/-- `A000260(n)+A069271(n)-A002293(n)` -/
def P12491997523649956467.Spec : Prop :=
  ∀ n, P12491997523649956467.a n = A027836 n

end A027836

/-! ## A027836.P15809173420741116640

`A130706(2*n+3)+4*A069271(n)-A007228(n)`
-/

namespace A027836.P15809173420741116640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * n + 3) + (4 * A069271 n - A007228 n)

end

end A027836.P15809173420741116640

namespace A027836

/-- `A130706(2*n+3)+4*A069271(n)-A007228(n)` -/
def P15809173420741116640.Spec : Prop :=
  ∀ n, P15809173420741116640.a n = A027836 n

end A027836

/-! ## A027836.P1316694487989927387

`A000260(n)+A069271(n)-A208983(2*n)/(2*n+1)`
-/

namespace A027836.P1316694487989927387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000260 n : ℚ) + ((A069271 n : ℚ) - (A208983 (2 * n) : ℚ) / (2 * n + 1 : ℚ))

end

end A027836.P1316694487989927387

namespace A027836

/-- `A000260(n)+A069271(n)-A208983(2*n)/(2*n+1)` -/
def P1316694487989927387.Spec : Prop :=
  ∀ n, P1316694487989927387.a n = (A027836 n : ℚ)

end A027836

/-! ## A027836.P737440199021279706

`A000260(n)+A069271(n)-A005810(n)/(A016813(n)-n)`
-/

namespace A027836.P737440199021279706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000260 n : ℚ) + ((A069271 n : ℚ) - (A005810 n : ℚ) / (A016813 n - (n : ℤ) : ℚ))

end

end A027836.P737440199021279706

namespace A027836

/-- `A000260(n)+A069271(n)-A005810(n)/(A016813(n)-n)` -/
def P737440199021279706.Spec : Prop :=
  ∀ n, P737440199021279706.a n = (A027836 n : ℚ)

end A027836

/-!
# A027837: Number of subgroups of index n in free group of rank 3.

The programs for A027837, there is no canonical definition to state claims against.
-/

/-! ## A027837.P17997299530436754633

`A049290(∑[n+3]+1)`
-/

namespace A027837.P17997299530436754633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027837.P17997299530436754633

/-! ## A027837.P4850414646686891290

`A220754(n+1)/n!`
-/

namespace A027837.P4850414646686891290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220754 (n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A027837.P4850414646686891290

/-! ## A027837.P1216691667577931243

`A220754(n+1)/A000142(n)`
-/

namespace A027837.P1216691667577931243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220754 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A027837.P1216691667577931243

/-! ## A027837.P1140689831455293582

`A220754(n+1)/sqrt(A001044(n))`
-/

namespace A027837.P1140689831455293582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220754 (n + 1) : ℝ) / Real.sqrt (A001044 n : ℝ)

end

end A027837.P1140689831455293582

/-! ## A027837.P4996559765532102679

`A220754(n+1)/A000165(n)*A000079(n)`
-/

namespace A027837.P4996559765532102679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220754 (n + 1) : ℚ) / (A000165 n : ℚ) * (A000079 n : ℚ)

end

end A027837.P4996559765532102679

/-!
# A027838: Number of subgroups of index n in fundamental group of a certain fiber space.

The programs for A027838, there is no canonical definition to state claims against.
-/

/-! ## A027838.P11034214788967539484

`∑{d}[n+1, #*A057005(#)]`
-/

namespace A027838.P11034214788967539484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A057005 d

end

end A027838.P11034214788967539484

/-!
# A027842: Number of subgroups of index n in fundamental group of a certain fiber space.

The programs for A027842, there is no canonical definition to state claims against.
-/

/-! ## A027842.P8624449086384044470

`A004201(A025577(2*n+1)+1)-1-A025551(n)`
-/

namespace A027842.P8624449086384044470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (A025577 (2 * n + 1) + 1).toNat - 1 - A025551 n

end

end A027842.P8624449086384044470

/-!
# A027844: Number of subgroups of index n of fundamental group of the non-orientable cycle bundle over the Klein bottle.

The programs for A027844, the canonical program `A027844.P16318570825650020980` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027844 has offset 1).

The definition of A027844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027844.P16318570825650020980

`∑{d}[n+1, #*A046524(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027844

/-- `∑{d}[n+1, #*A046524(#)]` -/
def P16318570825650020980.Spec : Prop :=
  ∀ n, P16318570825650020980.a n = A027844 (n + 1)

theorem P16318570825650020980.correct : P16318570825650020980.Spec := by
  intro n
  simp only [A027844, Nat.add_sub_cancel]

end A027844

/-!
# A027847: a(n) = Sum_{d|n} sigma(n/d)*d^3.

The programs for A027847, the canonical program `A027847.P15543816742427511378` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027847 has offset 1).

The definition of A027847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027847.P1843712552264894880

`∑{d}[n+1, A328259(#)]`
-/

namespace A027847.P1843712552264894880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328259 d

end

end A027847.P1843712552264894880

namespace A027847

/-- `∑{d}[n+1, A328259(#)]` -/
def P1843712552264894880.Spec : Prop :=
  ∀ n, P1843712552264894880.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P15543816742427511378

`∑{d}[n+1, #*A001157(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027847

/-- `∑{d}[n+1, #*A001157(#)]` -/
def P15543816742427511378.Spec : Prop :=
  ∀ n, P15543816742427511378.a n = A027847 (n + 1)

theorem P15543816742427511378.correct : P15543816742427511378.Spec := by
  intro n
  simp only [A027847, Nat.add_sub_cancel]

end A027847

/-! ## A027847.P6813445448635021859

`∑{d}[n+1, #*A001158((n+1)/#)]`
-/

namespace A027847.P6813445448635021859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P6813445448635021859

namespace A027847

/-- `∑{d}[n+1, #*A001158((n+1)/#)]` -/
def P6813445448635021859.Spec : Prop :=
  ∀ n, P6813445448635021859.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P7148679915207344523

`∑{d}[n+1, A000203(#)*A000578((n+1)/#)]`
-/

namespace A027847.P7148679915207344523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A000578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P7148679915207344523

namespace A027847

/-- `∑{d}[n+1, A000203(#)*A000578((n+1)/#)]` -/
def P7148679915207344523.Spec : Prop :=
  ∀ n, P7148679915207344523.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P11650280711306659013

`∑{d}[n+1, A001001(#)*A053191((n+1)/#)]`
-/

namespace A027847.P11650280711306659013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A053191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P11650280711306659013

namespace A027847

/-- `∑{d}[n+1, A001001(#)*A053191((n+1)/#)]` -/
def P11650280711306659013.Spec : Prop :=
  ∀ n, P11650280711306659013.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P18168756852104203247

`∑{d}[n+1, A000056(#)*A060640((n+1)/#)]`
-/

namespace A027847.P18168756852104203247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P18168756852104203247

namespace A027847

/-- `∑{d}[n+1, A000056(#)*A060640((n+1)/#)]` -/
def P18168756852104203247.Spec : Prop :=
  ∀ n, P18168756852104203247.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P9034709038251314119

`∑{d}[n+1, A007429(#)*A059376((n+1)/#)]`
-/

namespace A027847.P9034709038251314119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P9034709038251314119

namespace A027847

/-- `∑{d}[n+1, A007429(#)*A059376((n+1)/#)]` -/
def P9034709038251314119.Spec : Prop :=
  ∀ n, P9034709038251314119.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P18035942349647643657

`∑{d}[n+1, A064987(#)*A068963((n+1)/#)]`
-/

namespace A027847.P18035942349647643657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A068963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P18035942349647643657

namespace A027847

/-- `∑{d}[n+1, A064987(#)*A068963((n+1)/#)]` -/
def P18035942349647643657.Spec : Prop :=
  ∀ n, P18035942349647643657.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P1645983614751893359

`∑{d}[n+1, A007331(#)*A129527((n+1)/#)]`
-/

namespace A027847.P1645983614751893359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007331 d * A129527 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P1645983614751893359

namespace A027847

/-- `∑{d}[n+1, A007331(#)*A129527((n+1)/#)]` -/
def P1645983614751893359.Spec : Prop :=
  ∀ n, P1645983614751893359.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P4884205055697471241

`∑{d}[n+1, A065959(#)*A076752((n+1)/#)]`
-/

namespace A027847.P4884205055697471241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065959 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P4884205055697471241

namespace A027847

/-- `∑{d}[n+1, A065959(#)*A076752((n+1)/#)]` -/
def P4884205055697471241.Spec : Prop :=
  ∀ n, P4884205055697471241.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P9523949066568251198

`∑{d}[n+1, A078307(#)*A091512((n+1)/#)]`
-/

namespace A027847.P9523949066568251198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078307 d * A091512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P9523949066568251198

namespace A027847

/-- `∑{d}[n+1, A078307(#)*A091512((n+1)/#)]` -/
def P9523949066568251198.Spec : Prop :=
  ∀ n, P9523949066568251198.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P16479770035268062644

`∑{d}[n+1, A109386(#)*A208895((n+1)/#)]`
-/

namespace A027847.P16479770035268062644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109386 d * A208895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P16479770035268062644

namespace A027847

/-- `∑{d}[n+1, A109386(#)*A208895((n+1)/#)]` -/
def P16479770035268062644.Spec : Prop :=
  ∀ n, P16479770035268062644.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P1692735689883103781

`∑{d}[n+1, A000010(#)*A321140((n+1)/#)]`
-/

namespace A027847.P1692735689883103781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A321140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P1692735689883103781

namespace A027847

/-- `∑{d}[n+1, A000010(#)*A321140((n+1)/#)]` -/
def P1692735689883103781.Spec : Prop :=
  ∀ n, P1692735689883103781.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P10373741090675852799

`∑{d}[n+1, A002131(#)*A328408((n+1)/#)]`
-/

namespace A027847.P10373741090675852799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A328408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P10373741090675852799

namespace A027847

/-- `∑{d}[n+1, A002131(#)*A328408((n+1)/#)]` -/
def P10373741090675852799.Spec : Prop :=
  ∀ n, P10373741090675852799.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P16624762381466133360

`∑{d}[n+1, A048298(#)*A288419((n+1)/#)]`
-/

namespace A027847.P16624762381466133360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A288419 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P16624762381466133360

namespace A027847

/-- `∑{d}[n+1, A048298(#)*A288419((n+1)/#)]` -/
def P16624762381466133360.Spec : Prop :=
  ∀ n, P16624762381466133360.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P819235949438929026

`∑{d}[n+1, A000005(#)*A343497((n+1)/#)]`
-/

namespace A027847.P819235949438929026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A343497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P819235949438929026

namespace A027847

/-- `∑{d}[n+1, A000005(#)*A343497((n+1)/#)]` -/
def P819235949438929026.Spec : Prop :=
  ∀ n, P819235949438929026.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P13366739481054587066

`∑{d}[n+1, A038991(#)*A334657((n+1)/#)]`
-/

namespace A027847.P13366739481054587066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038991 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P13366739481054587066

namespace A027847

/-- `∑{d}[n+1, A038991(#)*A334657((n+1)/#)]` -/
def P13366739481054587066.Spec : Prop :=
  ∀ n, P13366739481054587066.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P2526835891861863314

`∑{d}[n+1, A038040(#)*A350156((n+1)/#)]`
-/

namespace A027847.P2526835891861863314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P2526835891861863314

namespace A027847

/-- `∑{d}[n+1, A038040(#)*A350156((n+1)/#)]` -/
def P2526835891861863314.Spec : Prop :=
  ∀ n, P2526835891861863314.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P10572800204151184206

`∑{d}[n+1, A349469(#)*A360429((n+1)/#)]`
-/

namespace A027847.P10572800204151184206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349469 d * A360429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P10572800204151184206

namespace A027847

/-- `∑{d}[n+1, A349469(#)*A360429((n+1)/#)]` -/
def P10572800204151184206.Spec : Prop :=
  ∀ n, P10572800204151184206.a n = A027847 (n + 1)

end A027847

/-! ## A027847.P5419903829591580313

`∑{d}[n+1, A099894(#-1)*A288419((n+1)/#)]`
-/

namespace A027847.P5419903829591580313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A288419 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027847.P5419903829591580313

namespace A027847

/-- `∑{d}[n+1, A099894(#-1)*A288419((n+1)/#)]` -/
def P5419903829591580313.Spec : Prop :=
  ∀ n, P5419903829591580313.a n = A027847 (n + 1)

end A027847

/-!
# A027848: a(n) = Sum_{ d|n } sigma(n/d)*d^4.

The programs for A027848, the canonical program `A027848.P6930616352718605478` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027848 has offset 1).

The definition of A027848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027848.P6930616352718605478

`∑{d}[n+1, #*A001158(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027848

/-- `∑{d}[n+1, #*A001158(#)]` -/
def P6930616352718605478.Spec : Prop :=
  ∀ n, P6930616352718605478.a n = A027848 (n + 1)

theorem P6930616352718605478.correct : P6930616352718605478.Spec := by
  intro n
  simp only [A027848, Nat.add_sub_cancel]

end A027848

/-! ## A027848.P4396463561544343675

`∑{d}[n+1, #*A001159((n+1)/#)]`
-/

namespace A027848.P4396463561544343675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001159 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P4396463561544343675

namespace A027848

/-- `∑{d}[n+1, #*A001159((n+1)/#)]` -/
def P4396463561544343675.Spec : Prop :=
  ∀ n, P4396463561544343675.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P3982361450905593742

`∑{d}[n+1, A007429(#)*A059377((n+1)/#)]`
-/

namespace A027848.P3982361450905593742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P3982361450905593742

namespace A027848

/-- `∑{d}[n+1, A007429(#)*A059377((n+1)/#)]` -/
def P3982361450905593742.Spec : Prop :=
  ∀ n, P3982361450905593742.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P6218383124624179438

`∑{d}[n+1, A065960(#)*A076752((n+1)/#)]`
-/

namespace A027848.P6218383124624179438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065960 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P6218383124624179438

namespace A027848

/-- `∑{d}[n+1, A065960(#)*A076752((n+1)/#)]` -/
def P6218383124624179438.Spec : Prop :=
  ∀ n, P6218383124624179438.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P5861310070023550620

`∑{d}[n+1, A064987(#)*A084218((n+1)/#)]`
-/

namespace A027848.P5861310070023550620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A084218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P5861310070023550620

namespace A027848

/-- `∑{d}[n+1, A064987(#)*A084218((n+1)/#)]` -/
def P5861310070023550620.Spec : Prop :=
  ∀ n, P5861310070023550620.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P1702544051061100486

`∑{d}[n+1, A027847(#)*A189393((n+1)/#)]`
-/

namespace A027848.P1702544051061100486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027847 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P1702544051061100486

namespace A027848

/-- `∑{d}[n+1, A027847(#)*A189393((n+1)/#)]` -/
def P1702544051061100486.Spec : Prop :=
  ∀ n, P1702544051061100486.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P5469647965105175282

`∑{d}[n+1, A048298(#)*A288420((n+1)/#)]`
-/

namespace A027848.P5469647965105175282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A288420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P5469647965105175282

namespace A027848

/-- `∑{d}[n+1, A048298(#)*A288420((n+1)/#)]` -/
def P5469647965105175282.Spec : Prop :=
  ∀ n, P5469647965105175282.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P6580783757150059620

`∑{d}[n+1, A000005(#)*A343498((n+1)/#)]`
-/

namespace A027848.P6580783757150059620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A343498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P6580783757150059620

namespace A027848

/-- `∑{d}[n+1, A000005(#)*A343498((n+1)/#)]` -/
def P6580783757150059620.Spec : Prop :=
  ∀ n, P6580783757150059620.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P3483286177252746213

`∑{d}[n+1, A091512(#)*A284900((n+1)/#)]`
-/

namespace A027848.P3483286177252746213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A284900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P3483286177252746213

namespace A027848

/-- `∑{d}[n+1, A091512(#)*A284900((n+1)/#)]` -/
def P3483286177252746213.Spec : Prop :=
  ∀ n, P3483286177252746213.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P16151588256164993059

`∑{d}[n+1, A001001(#)*A379833((n+1)/#)]`
-/

namespace A027848.P16151588256164993059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P16151588256164993059

namespace A027848

/-- `∑{d}[n+1, A001001(#)*A379833((n+1)/#)]` -/
def P16151588256164993059.Spec : Prop :=
  ∀ n, P16151588256164993059.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P17645366751128154166

`∑{d}[n+1, A068970(#)*A328259((n+1)/#)]`
-/

namespace A027848.P17645366751128154166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P17645366751128154166

namespace A027848

/-- `∑{d}[n+1, A068970(#)*A328259((n+1)/#)]` -/
def P17645366751128154166.Spec : Prop :=
  ∀ n, P17645366751128154166.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P6871627376677228791

`∑{d}[n+1, A038040(#)*A372952((n+1)/#)]`
-/

namespace A027848.P6871627376677228791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P6871627376677228791

namespace A027848

/-- `∑{d}[n+1, A038040(#)*A372952((n+1)/#)]` -/
def P6871627376677228791.Spec : Prop :=
  ∀ n, P6871627376677228791.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P13722982071655934832

`∑{d}[n+1, A129527(#)*A285989((n+1)/#)]`
-/

namespace A027848.P13722982071655934832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129527 d * A285989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P13722982071655934832

namespace A027848

/-- `∑{d}[n+1, A129527(#)*A285989((n+1)/#)]` -/
def P13722982071655934832.Spec : Prop :=
  ∀ n, P13722982071655934832.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P5979162675700542707

`∑{d}[n+1, A099894(#-1)*A288420((n+1)/#)]`
-/

namespace A027848.P5979162675700542707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A288420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P5979162675700542707

namespace A027848

/-- `∑{d}[n+1, A099894(#-1)*A288420((n+1)/#)]` -/
def P5979162675700542707.Spec : Prop :=
  ∀ n, P5979162675700542707.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P5453946719998421263

`∑{d}[n+1, A281372(#)]`
-/

namespace A027848.P5453946719998421263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A281372 d

end

end A027848.P5453946719998421263

namespace A027848

/-- `∑{d}[n+1, A281372(#)]` -/
def P5453946719998421263.Spec : Prop :=
  ∀ n, P5453946719998421263.a n = A027848 (n + 1)

end A027848

/-! ## A027848.P1526523189700980839

`∑{d}[n+1, A000203(#)*A000583((n+1)/#)]`
-/

namespace A027848.P1526523189700980839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A000583 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A027848.P1526523189700980839

namespace A027848

/-- `∑{d}[n+1, A000203(#)*A000583((n+1)/#)]` -/
def P1526523189700980839.Spec : Prop :=
  ∀ n, P1526523189700980839.a n = A027848 (n + 1)

end A027848

/-!
# A027849: a(n) = (n+1)*(5*n^2+4*n+1).

The programs for A027849, the canonical program `A027849.P11589793859807254720` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027849 has offset 0).

The definition of A027849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(5*n²+4*n+1)` (program `A027849.P11589793859807254720`, by `A027849.P11589793859807254720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027849.P11589793859807254720

`(n+1)*(5*n²+4*n+1)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027849

/-- `(n+1)*(5*n²+4*n+1)` -/
def P11589793859807254720.Spec : Prop :=
  ∀ n, (P11589793859807254720.a n : ℤ) = A027849 n

theorem P11589793859807254720.correct : P11589793859807254720.Spec := by
  intro n
  simp only [A027849]

end A027849

/-! ## A027849.P659428609431981489

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=20, a(2)=87, a(3)=232`
-/

namespace A027849.P659428609431981489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20, 87, 232] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A027849.P659428609431981489

namespace A027849

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P659428609431981489.Spec : Prop :=
  ∀ n, P659428609431981489.a n = A027849 n

theorem P659428609431981489.correct : P659428609431981489.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A027849, Nat.add_sub_cancel, A027849.P659428609431981489.a, A027849.P11589793859807254720.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A027849, Nat.add_sub_cancel, A027849.P659428609431981489.a, A027849.P11589793859807254720.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027849

/-! ## A027849.P16507205100594120874

`1-n*(n-∑[ogf((5+5x)/(1-2x+x^2))])`
-/

namespace A027849.P16507205100594120874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027849.P16507205100594120874

namespace A027849

/-- `1-n*(n-∑[ogf((5+5x)/(1-2x+x^2))])` -/
def P16507205100594120874.Spec : Prop :=
  ∀ n, P16507205100594120874.a n = A027849 n

end A027849

/-! ## A027849.P14183206264809805819

`∑[A010008(n)]-n^3`
-/

namespace A027849.P14183206264809805819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 3 : ℤ)

end

end A027849.P14183206264809805819

namespace A027849

/-- `∑[A010008(n)]-n^3` -/
def P14183206264809805819.Spec : Prop :=
  ∀ n, P14183206264809805819.a n = A027849 n

end A027849

/-! ## A027849.P18032814470131505607

`Δ[A085740(n)+n²²]`
-/

namespace A027849.P18032814470131505607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085740 n + ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027849.P18032814470131505607

namespace A027849

/-- `Δ[A085740(n)+n²²]` -/
def P18032814470131505607.Spec : Prop :=
  ∀ n, P18032814470131505607.a n = A027849 n

end A027849

/-! ## A027849.P13998878289913770408

`A300758(n)+(n+1)^3`
-/

namespace A027849.P13998878289913770408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + ((n + 1) ^ 3 : ℤ)

end

end A027849.P13998878289913770408

namespace A027849

/-- `A300758(n)+(n+1)^3` -/
def P13998878289913770408.Spec : Prop :=
  ∀ n, P13998878289913770408.a n = A027849 n

end A027849

/-! ## A027849.P15885476469742899965

`A193218(n+1)-n^3`
-/

namespace A027849.P15885476469742899965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193218 (n + 1) - (n ^ 3 : ℤ)

end

end A027849.P15885476469742899965

namespace A027849

/-- `A193218(n+1)-n^3` -/
def P15885476469742899965.Spec : Prop :=
  ∀ n, P15885476469742899965.a n = A027849 n

end A027849

/-! ## A027849.P9099267550314145625

`A165806(n)+a(n-1)` with `a(0)=1`
-/

namespace A027849.P9099267550314145625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165806 n + a (n - 1)

end

end A027849.P9099267550314145625

namespace A027849

/-- `A165806(n)+a(n-1)` -/
def P9099267550314145625.Spec : Prop :=
  ∀ n, P9099267550314145625.a n = A027849 n

end A027849

/-! ## A027849.P4674604330394740700

`∑[A143854(n+1)-n²]`
-/

namespace A027849.P4674604330394740700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143854 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027849.P4674604330394740700

namespace A027849

/-- `∑[A143854(n+1)-n²]` -/
def P4674604330394740700.Spec : Prop :=
  ∀ n, P4674604330394740700.a n = A027849 n

end A027849

/-! ## A027849.P9990926554037439240

`A139757(n)+(n+1)*n²`
-/

namespace A027849.P9990926554037439240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n + ((n + 1) * n ^ 2 : ℤ)

end

end A027849.P9990926554037439240

namespace A027849

/-- `A139757(n)+(n+1)*n²` -/
def P9990926554037439240.Spec : Prop :=
  ∀ n, P9990926554037439240.a n = A027849 n

end A027849

/-! ## A027849.P680563246473124238

`(A100167(n+1)+n+1)/2`
-/

namespace A027849.P680563246473124238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100167 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A027849.P680563246473124238

namespace A027849

/-- `(A100167(n+1)+n+1)/2` -/
def P680563246473124238.Spec : Prop :=
  ∀ n, P680563246473124238.a n = (A027849 n : ℚ)

end A027849

/-! ## A027849.P16827644331423449235

`3*A144945(n+1)+n+1`
-/

namespace A027849.P16827644331423449235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A144945 (n + 1) + (n + 1 : ℤ)

end

end A027849.P16827644331423449235

namespace A027849

/-- `3*A144945(n+1)+n+1` -/
def P16827644331423449235.Spec : Prop :=
  ∀ n, P16827644331423449235.a n = A027849 n

end A027849

/-! ## A027849.P11867297454545701960

`A213829(n+1)-(n+1)^3`
-/

namespace A027849.P11867297454545701960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213829 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A027849.P11867297454545701960

namespace A027849

/-- `A213829(n+1)-(n+1)^3` -/
def P11867297454545701960.Spec : Prop :=
  ∀ n, P11867297454545701960.a n = A027849 n

end A027849

/-! ## A027849.P9874087488262094694

`(A033571(n)+1+n)*(n+1)/2`
-/

namespace A027849.P9874087488262094694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A033571 n + 1 + (n : ℤ)) * (n + 1 : ℤ) : ℚ) / 2

end

end A027849.P9874087488262094694

namespace A027849

/-- `(A033571(n)+1+n)*(n+1)/2` -/
def P9874087488262094694.Spec : Prop :=
  ∀ n, P9874087488262094694.a n = (A027849 n : ℚ)

end A027849

/-! ## A027849.P12421346527821584130

`A055112(n)+A005915(n)`
-/

namespace A027849.P12421346527821584130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n + A005915 n

end

end A027849.P12421346527821584130

namespace A027849

/-- `A055112(n)+A005915(n)` -/
def P12421346527821584130.Spec : Prop :=
  ∀ n, P12421346527821584130.a n = A027849 n

end A027849

/-! ## A027849.P12607044153323610965

`A064096(n)+A002943(n)`
-/

namespace A027849.P12607044153323610965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064096 n + A002943 n

end

end A027849.P12607044153323610965

namespace A027849

/-- `A064096(n)+A002943(n)` -/
def P12607044153323610965.Spec : Prop :=
  ∀ n, P12607044153323610965.a n = A027849 n

end A027849

/-! ## A027849.P6868956849058506245

`A304993(n)+A005906(n)`
-/

namespace A027849.P6868956849058506245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n + A005906 n

end

end A027849.P6868956849058506245

namespace A027849

/-- `A304993(n)+A005906(n)` -/
def P6868956849058506245.Spec : Prop :=
  ∀ n, P6868956849058506245.a n = A027849 n

end A027849

/-! ## A027849.P4750535539183400308

`A317637(n)+A204674(n)`
-/

namespace A027849.P4750535539183400308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317637 n + A204674 n

end

end A027849.P4750535539183400308

namespace A027849

/-- `A317637(n)+A204674(n)` -/
def P4750535539183400308.Spec : Prop :=
  ∀ n, P4750535539183400308.a n = A027849 n

end A027849

/-! ## A027849.P18102001354266055153

`A062938(n)-A186636(n)`
-/

namespace A027849.P18102001354266055153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062938 n - A186636 n

end

end A027849.P18102001354266055153

namespace A027849

/-- `A062938(n)-A186636(n)` -/
def P18102001354266055153.Spec : Prop :=
  ∀ n, P18102001354266055153.a n = A027849 n

end A027849

/-! ## A027849.P8128479293042691162

`A016755(n)-A249354(n)`
-/

namespace A027849.P8128479293042691162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A249354 n

end

end A027849.P8128479293042691162

namespace A027849

/-- `A016755(n)-A249354(n)` -/
def P8128479293042691162.Spec : Prop :=
  ∀ n, P8128479293042691162.a n = A027849 n

end A027849

/-!
# A027850: a(n) = (n+1)*(14*n^3+13*n^2+6*n+1).

The programs for A027850, the canonical program `A027850.P14715144222992184215` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027850 has offset 0).

The definition of A027850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(14*n^3+13*n²+6*n+1)` (program `A027850.P14715144222992184215`, by `A027850.P14715144222992184215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027850.P14715144222992184215

`(n+1)*(14*n^3+13*n²+6*n+1)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027850

/-- `(n+1)*(14*n^3+13*n²+6*n+1)` -/
def P14715144222992184215.Spec : Prop :=
  ∀ n, (P14715144222992184215.a n : ℤ) = A027850 n

theorem P14715144222992184215.correct : P14715144222992184215.Spec := by
  intro n
  simp only [A027850]

end A027850

/-! ## A027850.P9416161268884215118

`A100176(n+1)+2*n*A100162(n+1)`
-/

namespace A027850.P9416161268884215118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100176 (n + 1) + (2 * n : ℤ) * A100162 (n + 1)

end

end A027850.P9416161268884215118

namespace A027850

/-- `A100176(n+1)+2*n*A100162(n+1)` -/
def P9416161268884215118.Spec : Prop :=
  ∀ n, P9416161268884215118.a n = A027850 n

end A027850

/-!
# A027851: Number of nonisomorphic semigroups of order n.

The programs for A027851, there is no canonical definition to state claims against.
-/

/-! ## A027851.P10106964777849256053

`A001423(n)*2-A029851(n)`
-/

namespace A027851.P10106964777849256053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001423 n * 2 - A029851 n

end

end A027851.P10106964777849256053

/-! ## A027851.P3278439600914848698

`A079199(round(sqrt(n²+1)))+A001426(n)`
-/

namespace A027851.P3278439600914848698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079199 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A001426 n

end

end A027851.P3278439600914848698

/-! ## A027851.P7725082817161127819

`A001425(n)+A079199(A028310(n))-A079196(n)`
-/

namespace A027851.P7725082817161127819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001425 n + (A079199 (A028310 n).toNat - A079196 n)

end

end A027851.P7725082817161127819

/-! ## A027851.P3086795992841699881

`A001423(n)-(A029851(n)-A001423(A028310(n)))`
-/

namespace A027851.P3086795992841699881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001423 n - (A029851 n - A001423 (A028310 n).toNat)

end

end A027851.P3086795992841699881

/-! ## A027851.P7830857235690548149

`A318987(n)+A058129(n)`
-/

namespace A027851.P7830857235690548149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318987 n + A058129 n

end

end A027851.P7830857235690548149

/-!
# A027852: Number of connected functions on n points with a loop of length 2.

The programs for A027852, there is no canonical definition to state claims against.
-/

/-! ## A027852.P913419898328511241

`A328779(n+1)-A000081(n+1)`
-/

namespace A027852.P913419898328511241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328779 (n + 1) - A000081 (n + 1)

end

end A027852.P913419898328511241

/-! ## A027852.P14243575684358194546

`A000055(n+1)+A000081(n+1)-A122086(n+1)`
-/

namespace A027852.P14243575684358194546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1) + (A000081 (n + 1) - A122086 (n + 1))

end

end A027852.P14243575684358194546

/-! ## A027852.P10340236842579183657

`A068051(n+1)-A368983(n+1)`
-/

namespace A027852.P10340236842579183657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068051 (n + 1) - A368983 (n + 1)

end

end A027852.P10340236842579183657

/-! ## A027852.P3914296750934553763

`A033185(∑[char[1]+n]+1)*A057427(n)`
-/

namespace A027852.P3914296750934553763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A057427 n

end

end A027852.P3914296750934553763

/-! ## A027852.P14452896891543811359

`A033185(∑[char[1]+n]+1)%A033193(n)`
-/

namespace A027852.P14452896891543811359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033185 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A033193 n)

end

end A027852.P14452896891543811359

/-! ## A027852.P10163930738866066078

`A033185(A133263(n))-A000007(n)`
-/

namespace A027852.P10163930738866066078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A133263 n).toNat - A000007 n

end

end A027852.P10163930738866066078

/-! ## A027852.P18042208635303998428

`A033185(A133263(n))%A000244(n)`
-/

namespace A027852.P18042208635303998428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033185 (A133263 n).toNat) (A000244 n)

end

end A027852.P18042208635303998428

/-! ## A027852.P7933434620418079733

`A033185(A238531(n+1))%A000984(n)`
-/

namespace A027852.P7933434620418079733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033185 (A238531 (n + 1)).toNat) (A000984 n)

end

end A027852.P7933434620418079733

/-! ## A027852.P17882188093247116005

`A033185(A133263(n))-A106234(A000124(n))`
-/

namespace A027852.P17882188093247116005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A133263 n).toNat - A106234 (A000124 n).toNat

end

end A027852.P17882188093247116005

/-! ## A027852.P17191502909930415441

`A106234(∑[n+1]+3)`
-/

namespace A027852.P17191502909930415441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A027852.P17191502909930415441

/-!
# A027853: Functions on n points with a single labeled point.

The programs for A027853, there is no canonical definition to state claims against.
-/

/-! ## A027853.P8943103464122551630

`A202035(A208738(n))+A117202(n)`
-/

namespace A027853.P8943103464122551630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202035 (A208738 n).toNat + A117202 n

end

end A027853.P8943103464122551630

/-! ## A027853.P11477586655834620268

`A101500(n)-A050142(A055228(n))`
-/

namespace A027853.P11477586655834620268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101500 n - A050142 (A055228 n).toNat

end

end A027853.P11477586655834620268

/-! ## A027853.P5795270235825246586

`A132894(n)-A185063(A026530(n))`
-/

namespace A027853.P5795270235825246586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n - A185063 (A026530 n).toNat

end

end A027853.P5795270235825246586

/-!
# A027854: Mutinous numbers: n > 1 such that n/p^k > p, where p is the largest prime dividing n and p^k is the highest power of p dividing n.

The programs for A027854, the canonical program `A027854.P591411851498169145` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027854 has offset 1).

The definition of A027854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027854.P11885429418739948815

`∩[A056077(n+1), A080765(n+1)]+1`
-/

namespace A027854.P11885429418739948815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A027854.P11885429418739948815

namespace A027854

/-- `∩[A056077(n+1), A080765(n+1)]+1` -/
def P11885429418739948815.Spec : Prop :=
  ∀ n, (P11885429418739948815.a n : ℤ) = A027854 (n + 1)

end A027854

/-! ## A027854.P1693421256412831628

`record[(n+12)%A256267(n+12)]`
-/

namespace A027854.P1693421256412831628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 12 : ℤ) (A256267 (n + 12))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027854.P1693421256412831628

namespace A027854

/-- `record[(n+12)%A256267(n+12)]` -/
def P1693421256412831628.Spec : Prop :=
  ∀ n, P1693421256412831628.a n = A027854 (n + 1)

end A027854

/-! ## A027854.P14839614156924893445

`lt[n+2, A256267(n+2)]+2`
-/

namespace A027854.P14839614156924893445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A027854.P14839614156924893445

namespace A027854

/-- `lt[n+2, A256267(n+2)]+2` -/
def P14839614156924893445.Spec : Prop :=
  ∀ n, (P14839614156924893445.a n : ℤ) = A027854 (n + 1)

end A027854

/-! ## A027854.P4541752184816125277

`lt[A006530(n+1), A249151(n)]+1`
-/

namespace A027854.P4541752184816125277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A027854.P4541752184816125277

namespace A027854

/-- `lt[A006530(n+1), A249151(n)]+1` -/
def P4541752184816125277.Spec : Prop :=
  ∀ n, (P4541752184816125277.a n : ℤ) = A027854 (n + 1)

end A027854

/-! ## A027854.P591411851498169145

`lt[A006530(n+1), A051119(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A027854

/-- `lt[A006530(n+1), A051119(n+1)]+1` -/
def P591411851498169145.Spec : Prop :=
  ∀ n, (P591411851498169145.a n : ℤ) = A027854 (n + 1)

theorem P591411851498169145.correct : P591411851498169145.Spec := by
  intro n
  simp only [A027854, Nat.add_sub_cancel]

end A027854

/-! ## A027854.P6755445896344312600

`lt[A053585(n+1), A052126(n+1)]+1`
-/

namespace A027854.P6755445896344312600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A027854.P6755445896344312600

namespace A027854

/-- `lt[A053585(n+1), A052126(n+1)]+1` -/
def P6755445896344312600.Spec : Prop :=
  ∀ n, (P6755445896344312600.a n : ℤ) = A027854 (n + 1)

end A027854

/-! ## A027854.P16393696902319263336

`lt[A111089(n+1), A051119(n+1)]+1`
-/

namespace A027854.P16393696902319263336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A027854.P16393696902319263336

namespace A027854

/-- `lt[A111089(n+1), A051119(n+1)]+1` -/
def P16393696902319263336.Spec : Prop :=
  ∀ n, (P16393696902319263336.a n : ℤ) = A027854 (n + 1)

end A027854

/-! ## A027854.P6492243735723590774

`lt[A119416(n+1), A256017(n+1)]+1`
-/

namespace A027854.P6492243735723590774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A027854.P6492243735723590774

namespace A027854

/-- `lt[A119416(n+1), A256017(n+1)]+1` -/
def P6492243735723590774.Spec : Prop :=
  ∀ n, (P6492243735723590774.a n : ℤ) = A027854 (n + 1)

end A027854

/-! ## A027854.P11191403300052004229

`lt[A129598(n+1), A256017(n+1)]+1`
-/

namespace A027854.P11191403300052004229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A027854.P11191403300052004229

namespace A027854

/-- `lt[A129598(n+1), A256017(n+1)]+1` -/
def P11191403300052004229.Spec : Prop :=
  ∀ n, (P11191403300052004229.a n : ℤ) = A027854 (n + 1)

end A027854

/-! ## A027854.P7504450003731330776

`A153152(lt[A006530(n+1), A249151(n)])`
-/

namespace A027854.P7504450003731330776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027854.P7504450003731330776

namespace A027854

/-- `A153152(lt[A006530(n+1), A249151(n)])` -/
def P7504450003731330776.Spec : Prop :=
  ∀ n, P7504450003731330776.a n = A027854 (n + 1)

end A027854

/-! ## A027854.P15979235941871241844

`A020725(lt[A053585(n+1), A052126(n+1)])`
-/

namespace A027854.P15979235941871241844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027854.P15979235941871241844

namespace A027854

/-- `A020725(lt[A053585(n+1), A052126(n+1)])` -/
def P15979235941871241844.Spec : Prop :=
  ∀ n, P15979235941871241844.a n = A027854 (n + 1)

end A027854

/-! ## A027854.P10106525075294115351

`A061767(lt[A053585(n+1), A052126(n+1)])`
-/

namespace A027854.P10106525075294115351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027854.P10106525075294115351

namespace A027854

/-- `A061767(lt[A053585(n+1), A052126(n+1)])` -/
def P10106525075294115351.Spec : Prop :=
  ∀ n, P10106525075294115351.a n = A027854 (n + 1)

end A027854

/-! ## A027854.P4620400988253499921

`A181569(lt[A006530(n+1), A051119(n+1)])`
-/

namespace A027854.P4620400988253499921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027854.P4620400988253499921

namespace A027854

/-- `A181569(lt[A006530(n+1), A051119(n+1)])` -/
def P4620400988253499921.Spec : Prop :=
  ∀ n, P4620400988253499921.a n = A027854 (n + 1)

end A027854

/-! ## A027854.P8530586362082307566

`A181569(lt[A111089(n+1), A051119(n+1)])`
-/

namespace A027854.P8530586362082307566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027854.P8530586362082307566

namespace A027854

/-- `A181569(lt[A111089(n+1), A051119(n+1)])` -/
def P8530586362082307566.Spec : Prop :=
  ∀ n, P8530586362082307566.a n = A027854 (n + 1)

end A027854

/-! ## A027854.P3748908625070909353

`A020725(lt[A119416(n+1), A256017(n+1)])`
-/

namespace A027854.P3748908625070909353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027854.P3748908625070909353

namespace A027854

/-- `A020725(lt[A119416(n+1), A256017(n+1)])` -/
def P3748908625070909353.Spec : Prop :=
  ∀ n, P3748908625070909353.a n = A027854 (n + 1)

end A027854

/-! ## A027854.P15920208081941563309

`A020725(lt[A129598(n+1), A256017(n+1)])`
-/

namespace A027854.P15920208081941563309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027854.P15920208081941563309

namespace A027854

/-- `A020725(lt[A129598(n+1), A256017(n+1)])` -/
def P15920208081941563309.Spec : Prop :=
  ∀ n, P15920208081941563309.a n = A027854 (n + 1)

end A027854

/-! ## A027854.P2651083578308927032

`lt[A163457(A163457(n+2)), A163457(n+2)]+2`
-/

namespace A027854.P2651083578308927032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163457 (A163457 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A027854.P2651083578308927032

namespace A027854

/-- `lt[A163457(A163457(n+2)), A163457(n+2)]+2` -/
def P2651083578308927032.Spec : Prop :=
  ∀ n, (P2651083578308927032.a n : ℤ) = A027854 (n + 1)

end A027854

/-!
# A027855: Antimutinous numbers: n>1 such that n/p^k < p, where p is the largest prime dividing n and p^k is the highest power of p dividing n.

The programs for A027855, the canonical program `A027855.P2324648124459488261` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027855 has offset 1).

The definition of A027855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027855.P8621940756690603991

`∪[A000040(n+1), A132858(n+1)]`
-/

namespace A027855.P8621940756690603991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027855.P8621940756690603991

namespace A027855

/-- `∪[A000040(n+1), A132858(n+1)]` -/
def P8621940756690603991.Spec : Prop :=
  ∀ n, (P8621940756690603991.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P12281358702552000668

`∪[A000430(n+1), A132858(n+1)]`
-/

namespace A027855.P12281358702552000668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027855.P12281358702552000668

namespace A027855

/-- `∪[A000430(n+1), A132858(n+1)]` -/
def P12281358702552000668.Spec : Prop :=
  ∀ n, (P12281358702552000668.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P10187750922909881207

`∪[A001751(n+1), A132858(n+1)]`
-/

namespace A027855.P10187750922909881207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027855.P10187750922909881207

namespace A027855

/-- `∪[A001751(n+1), A132858(n+1)]` -/
def P10187750922909881207.Spec : Prop :=
  ∀ n, (P10187750922909881207.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P6651050198729011539

`∪[A009087(n+1), A132858(n+1)]`
-/

namespace A027855.P6651050198729011539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027855.P6651050198729011539

namespace A027855

/-- `∪[A009087(n+1), A132858(n+1)]` -/
def P6651050198729011539.Spec : Prop :=
  ∀ n, (P6651050198729011539.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P12862337187158563423

`∪[A050376(n+1), A132858(n+1)]`
-/

namespace A027855.P12862337187158563423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027855.P12862337187158563423

namespace A027855

/-- `∪[A050376(n+1), A132858(n+1)]` -/
def P12862337187158563423.Spec : Prop :=
  ∀ n, (P12862337187158563423.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P12688649903039434351

`∪[A053813(n+1), A132858(n+1)]`
-/

namespace A027855.P12688649903039434351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027855.P12688649903039434351

namespace A027855

/-- `∪[A053813(n+1), A132858(n+1)]` -/
def P12688649903039434351.Spec : Prop :=
  ∀ n, (P12688649903039434351.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P11801401947538551363

`∪[A189710(n+1), A132858(n+1)]`
-/

namespace A027855.P11801401947538551363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027855.P11801401947538551363

namespace A027855

/-- `∪[A189710(n+1), A132858(n+1)]` -/
def P11801401947538551363.Spec : Prop :=
  ∀ n, (P11801401947538551363.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P3695681755808747219

`∪[A132858(n+1), A246551(n+1)]`
-/

namespace A027855.P3695681755808747219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027855.P3695681755808747219

namespace A027855

/-- `∪[A132858(n+1), A246551(n+1)]` -/
def P3695681755808747219.Spec : Prop :=
  ∀ n, (P3695681755808747219.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P9242122791460789021

`record[A303759(n+2)*A354933(A354933(n+2))]`
-/

namespace A027855.P9242122791460789021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303759 (n + 2) * A354933 (A354933 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027855.P9242122791460789021

namespace A027855

/-- `record[A303759(n+2)*A354933(A354933(n+2))]` -/
def P9242122791460789021.Spec : Prop :=
  ∀ n, P9242122791460789021.a n = A027855 (n + 1)

end A027855

/-! ## A027855.P10195493750894933547

`eq[n+1, lcm(n+1, A256267(n+1))]+1`
-/

namespace A027855.P10195493750894933547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A256267 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A027855.P10195493750894933547

namespace A027855

/-- `eq[n+1, lcm(n+1, A256267(n+1))]+1` -/
def P10195493750894933547.Spec : Prop :=
  ∀ n, (P10195493750894933547.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P14887504093335751301

`A020725(lt[A256267(n+1), n+2])`
-/

namespace A027855.P14887504093335751301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A027855.P14887504093335751301

namespace A027855

/-- `A020725(lt[A256267(n+1), n+2])` -/
def P14887504093335751301.Spec : Prop :=
  ∀ n, P14887504093335751301.a n = A027855 (n + 1)

end A027855

/-! ## A027855.P2324648124459488261

`lt[A051119(n+1), A006530(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A027855

/-- `lt[A051119(n+1), A006530(n+1)]+1` -/
def P2324648124459488261.Spec : Prop :=
  ∀ n, (P2324648124459488261.a n : ℤ) = A027855 (n + 1)

theorem P2324648124459488261.correct : P2324648124459488261.Spec := by
  intro n
  simp only [A027855, Nat.add_sub_cancel]

end A027855

/-! ## A027855.P8330892317668359654

`lt[A052126(n+1), A053585(n+1)]+1`
-/

namespace A027855.P8330892317668359654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A027855.P8330892317668359654

namespace A027855

/-- `lt[A052126(n+1), A053585(n+1)]+1` -/
def P8330892317668359654.Spec : Prop :=
  ∀ n, (P8330892317668359654.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P15967354615015519610

`lt[A256017(n+1), A119416(n+1)]+1`
-/

namespace A027855.P15967354615015519610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A027855.P15967354615015519610

namespace A027855

/-- `lt[A256017(n+1), A119416(n+1)]+1` -/
def P15967354615015519610.Spec : Prop :=
  ∀ n, (P15967354615015519610.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P7972221336888065830

`lt[A052126(n+1), A354933(n+1)]+1`
-/

namespace A027855.P7972221336888065830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A027855.P7972221336888065830

namespace A027855

/-- `lt[A052126(n+1), A354933(n+1)]+1` -/
def P7972221336888065830.Spec : Prop :=
  ∀ n, (P7972221336888065830.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P1189666759720128136

`lt[A051119(n+2), A111089(n+2)]+2`
-/

namespace A027855.P1189666759720128136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A027855.P1189666759720128136

namespace A027855

/-- `lt[A051119(n+2), A111089(n+2)]+2` -/
def P1189666759720128136.Spec : Prop :=
  ∀ n, (P1189666759720128136.a n : ℤ) = A027855 (n + 1)

end A027855

/-! ## A027855.P7156804179090376261

`A020725(lt[A052126(n+1), A053585(n+1)])`
-/

namespace A027855.P7156804179090376261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027855.P7156804179090376261

namespace A027855

/-- `A020725(lt[A052126(n+1), A053585(n+1)])` -/
def P7156804179090376261.Spec : Prop :=
  ∀ n, P7156804179090376261.a n = A027855 (n + 1)

end A027855

/-! ## A027855.P9964692800457009579

`A020725(lt[A256017(n+1), A119416(n+1)])`
-/

namespace A027855.P9964692800457009579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027855.P9964692800457009579

namespace A027855

/-- `A020725(lt[A256017(n+1), A119416(n+1)])` -/
def P9964692800457009579.Spec : Prop :=
  ∀ n, P9964692800457009579.a n = A027855 (n + 1)

end A027855

/-! ## A027855.P7812315201207136244

`A020725(lt[A256017(n+1), A129598(n+1)+n])`
-/

namespace A027855.P7812315201207136244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129598 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027855.P7812315201207136244

namespace A027855

/-- `A020725(lt[A256017(n+1), A129598(n+1)+n])` -/
def P7812315201207136244.Spec : Prop :=
  ∀ n, P7812315201207136244.a n = A027855 (n + 1)

end A027855

/-! ## A027855.P11437728021458089164

`eq[A163457(n+2), A163457(A163457(n+2))]+2`
-/

namespace A027855.P11437728021458089164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163457 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163457 (A163457 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A027855.P11437728021458089164

namespace A027855

/-- `eq[A163457(n+2), A163457(A163457(n+2))]+2` -/
def P11437728021458089164.Spec : Prop :=
  ∀ n, (P11437728021458089164.a n : ℤ) = A027855 (n + 1)

end A027855

/-!
# A027856: Dan numbers: numbers m of the form 2^j * 3^k such that m +- 1 are twin primes.

The programs for A027856, there is no canonical definition to state claims against.
-/

/-! ## A027856.P17429926776280549247

`A078883(n+1)+1`
-/

namespace A027856.P17429926776280549247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078883 (n + 1) + 1

end

end A027856.P17429926776280549247

/-! ## A027856.P1279344426379414659

`A078884(n+1)-1`
-/

namespace A027856.P1279344426379414659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078884 (n + 1) - 1

end

end A027856.P1279344426379414659

/-! ## A027856.P12366723886206898243

`record[A078884(A141256(n))-1]`
-/

namespace A027856.P12366723886206898243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078884 (A141256 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027856.P12366723886206898243

/-! ## A027856.P14046998177615235993

`xor(A015772(n), A078884(n+1))`
-/

namespace A027856.P14046998177615235993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A015772 n) (A078884 (n + 1))

end

end A027856.P14046998177615235993

/-! ## A027856.P10202217886429425933

`xor(A015936(n), A078884(n+1))`
-/

namespace A027856.P10202217886429425933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A015936 n) (A078884 (n + 1))

end

end A027856.P10202217886429425933

/-!
# A027857: Number of positive divisors of n!, read mod n.

The programs for A027857, the canonical program `A027857.P14631129129120359686` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027857 has offset 1).

The definition of A027857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027857.P14631129129120359686

`A027423(n+1)%(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027857

/-- `A027423(n+1)%(n+1)` -/
def P14631129129120359686.Spec : Prop :=
  ∀ n, P14631129129120359686.a n = A027857 (n + 1)

theorem P14631129129120359686.correct : P14631129129120359686.Spec := by
  intro n
  simp only [A027857, Nat.add_sub_cancel]

end A027857

/-! ## A027857.P7479611320785777808

`∑[A038024(n+1)]%(n+1)`
-/

namespace A027857.P7479611320785777808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A027857.P7479611320785777808

namespace A027857

/-- `∑[A038024(n+1)]%(n+1)` -/
def P7479611320785777808.Spec : Prop :=
  ∀ n, P7479611320785777808.a n = A027857 (n + 1)

end A027857

/-! ## A027857.P15721248555122898713

`(A153823(n+1)+1)%(n+1)`
-/

namespace A027857.P15721248555122898713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 (n + 1) + 1) (n + 1 : ℤ)

end

end A027857.P15721248555122898713

namespace A027857

/-- `(A153823(n+1)+1)%(n+1)` -/
def P15721248555122898713.Spec : Prop :=
  ∀ n, P15721248555122898713.a n = A027857 (n + 1)

end A027857

/-! ## A027857.P6884666781231466284

`(A048657(n+1)+A048656(n+1))%(n+1)`
-/

namespace A027857.P6884666781231466284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048657 (n + 1) + A048656 (n + 1)) (n + 1 : ℤ)

end

end A027857.P6884666781231466284

namespace A027857

/-- `(A048657(n+1)+A048656(n+1))%(n+1)` -/
def P6884666781231466284.Spec : Prop :=
  ∀ n, P6884666781231466284.a n = A027857 (n + 1)

end A027857

/-! ## A027857.P17552869300659613500

`A114338(2*(n+1))%(n+1)`
-/

namespace A027857.P17552869300659613500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114338 (2 * (n + 1))) (n + 1 : ℤ)

end

end A027857.P17552869300659613500

namespace A027857

/-- `A114338(2*(n+1))%(n+1)` -/
def P17552869300659613500.Spec : Prop :=
  ∀ n, P17552869300659613500.a n = A027857 (n + 1)

end A027857

/-!
# A027860: a(n) = (-tau(n) + sigma_11(n)) / 691, where tau is Ramanujan's tau (A000594), sigma_11(n) = Sum_{ d divides n } d^11 (A013959).

The programs for A027860, there is no canonical definition to state claims against.
-/

/-! ## A027860.P7292347349031153270

`(A013959(n+1)-A000594(n+1))/691`
-/

namespace A027860.P7292347349031153270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013959 (n + 1) - A000594 (n + 1) : ℚ) / 691

end

end A027860.P7292347349031153270

/-!
# A027861: Numbers k such that k^2 + (k+1)^2 is prime.

The programs for A027861, the canonical program `A027861.P1880857397688890924` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027861 has offset 1).

The definition of A027861 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027861.P1880857397688890924

`(A002731(n+1)-1)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A027861

/-- `(A002731(n+1)-1)/2` -/
def P1880857397688890924.Spec : Prop :=
  ∀ n, P1880857397688890924.a n = (A027861 (n + 1) : ℚ)

end A027861

/-! ## A027861.P1471544835585525538

`floor(sqrt(A027862(n+1)/2))`
-/

namespace A027861.P1471544835585525538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A027862 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A027861.P1471544835585525538

namespace A027861

/-- `floor(sqrt(A027862(n+1)/2))` -/
def P1471544835585525538.Spec : Prop :=
  ∀ n, P1471544835585525538.a n = A027861 (n + 1)

end A027861

/-! ## A027861.P15385873577921254002

`sqrt(A075576(n+1))`
-/

namespace A027861.P15385873577921254002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075576 (n + 1) : ℝ)

end

end A027861.P15385873577921254002

namespace A027861

/-- `sqrt(A075576(n+1))` -/
def P15385873577921254002.Spec : Prop :=
  ∀ n, P15385873577921254002.a n = (A027861 (n + 1) : ℝ)

end A027861

/-! ## A027861.P6435918656004158517

`floor(A002731(n+1)/2)`
-/

namespace A027861.P6435918656004158517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002731 (n + 1) : ℚ) / 2⌋

end

end A027861.P6435918656004158517

namespace A027861

/-- `floor(A002731(n+1)/2)` -/
def P6435918656004158517.Spec : Prop :=
  ∀ n, P6435918656004158517.a n = A027861 (n + 1)

end A027861

/-! ## A027861.P13658155237231891347

`eq[0, A309332(n+1)]+1`
-/

namespace A027861.P13658155237231891347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A027861.P13658155237231891347

namespace A027861

/-- `eq[0, A309332(n+1)]+1` -/
def P13658155237231891347.Spec : Prop :=
  ∀ n, (P13658155237231891347.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P16292448725541044288

`A000217(A002731(n+1))-A027862(n+1)`
-/

namespace A027861.P16292448725541044288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002731 (n + 1)).toNat - A027862 (n + 1)

end

end A027861.P16292448725541044288

namespace A027861

/-- `A000217(A002731(n+1))-A027862(n+1)` -/
def P16292448725541044288.Spec : Prop :=
  ∀ n, P16292448725541044288.a n = A027861 (n + 1)

end A027861

/-! ## A027861.P1109782297869051682

`eq[2, A160651(n)]`
-/

namespace A027861.P1109782297869051682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027861.P1109782297869051682

namespace A027861

/-- `eq[2, A160651(n)]` -/
def P1109782297869051682.Spec : Prop :=
  ∀ n, (P1109782297869051682.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P13110047445469616080

`eq[2, A278244(n)]`
-/

namespace A027861.P13110047445469616080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027861.P13110047445469616080

namespace A027861

/-- `eq[2, A278244(n)]` -/
def P13110047445469616080.Spec : Prop :=
  ∀ n, (P13110047445469616080.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P8673283630117640216

`eq[4, A028949(n+2)]`
-/

namespace A027861.P8673283630117640216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027861.P8673283630117640216

namespace A027861

/-- `eq[4, A028949(n+2)]` -/
def P8673283630117640216.Spec : Prop :=
  ∀ n, (P8673283630117640216.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P13859061065267018046

`eq[1, A069002(n+2)]+1`
-/

namespace A027861.P13859061065267018046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069002 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A027861.P13859061065267018046

namespace A027861

/-- `eq[1, A069002(n+2)]+1` -/
def P13859061065267018046.Spec : Prop :=
  ∀ n, (P13859061065267018046.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P6269719071034576466

`A025480(A002731(n+1)-1)`
-/

namespace A027861.P6269719071034576466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A002731 (n + 1) - 1).toNat

end

end A027861.P6269719071034576466

namespace A027861

/-- `A025480(A002731(n+1)-1)` -/
def P6269719071034576466.Spec : Prop :=
  ∀ n, P6269719071034576466.a n = A027861 (n + 1)

end A027861

/-! ## A027861.P1307749785906071767

`eq[2, A193330(Δ[n²])]`
-/

namespace A027861.P1307749785906071767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027861.P1307749785906071767

namespace A027861

/-- `eq[2, A193330(Δ[n²])]` -/
def P1307749785906071767.Spec : Prop :=
  ∀ n, (P1307749785906071767.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P9432126588038800392

`eq[1, A147809(2*n+1)]`
-/

namespace A027861.P9432126588038800392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027861.P9432126588038800392

namespace A027861

/-- `eq[1, A147809(2*n+1)]` -/
def P9432126588038800392.Spec : Prop :=
  ∀ n, (P9432126588038800392.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P13071032150169825432

`eq[1, A261609(2*n+1)]`
-/

namespace A027861.P13071032150169825432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027861.P13071032150169825432

namespace A027861

/-- `eq[1, A261609(2*n+1)]` -/
def P13071032150169825432.Spec : Prop :=
  ∀ n, (P13071032150169825432.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P10888395070842488950

`eq[1, A375391(2*n+1)]`
-/

namespace A027861.P10888395070842488950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375391 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027861.P10888395070842488950

namespace A027861

/-- `eq[1, A375391(2*n+1)]` -/
def P10888395070842488950.Spec : Prop :=
  ∀ n, (P10888395070842488950.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P10571996652485551324

`eq[2, A147810(2*n+1)]`
-/

namespace A027861.P10571996652485551324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027861.P10571996652485551324

namespace A027861

/-- `eq[2, A147810(2*n+1)]` -/
def P10571996652485551324.Spec : Prop :=
  ∀ n, (P10571996652485551324.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P5788040685829965267

`eq[2, A152823(2*n+1)]`
-/

namespace A027861.P5788040685829965267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152823 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027861.P5788040685829965267

namespace A027861

/-- `eq[2, A152823(2*n+1)]` -/
def P5788040685829965267.Spec : Prop :=
  ∀ n, (P5788040685829965267.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P3974768260261725841

`eq[2, A248516(2*n+1)]`
-/

namespace A027861.P3974768260261725841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027861.P3974768260261725841

namespace A027861

/-- `eq[2, A248516(2*n+1)]` -/
def P3974768260261725841.Spec : Prop :=
  ∀ n, (P3974768260261725841.a n : ℤ) = A027861 (n + 1)

end A027861

/-! ## A027861.P8381747697115080291

`eq[2, A152823(n+1)]/2`
-/

namespace A027861.P8381747697115080291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152823 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A027861.P8381747697115080291

namespace A027861

/-- `eq[2, A152823(n+1)]/2` -/
def P8381747697115080291.Spec : Prop :=
  ∀ n, P8381747697115080291.a n = (A027861 (n + 1) : ℚ)

end A027861

/-! ## A027861.P4496661295925737671

`eq[2, A248516(n+1)]/2`
-/

namespace A027861.P4496661295925737671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A027861.P4496661295925737671

namespace A027861

/-- `eq[2, A248516(n+1)]/2` -/
def P4496661295925737671.Spec : Prop :=
  ∀ n, P4496661295925737671.a n = (A027861 (n + 1) : ℚ)

end A027861

/-!
# A027862: Primes of the form j^2 + (j+1)^2.

The programs for A027862, the canonical program `A027862.P15112400691824553338` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027862 has offset 1).

The definition of A027862 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027862.P15112400691824553338

`(A002731(n+1)²+1)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A027862

/-- `(A002731(n+1)²+1)/2` -/
def P15112400691824553338.Spec : Prop :=
  ∀ n, P15112400691824553338.a n = (A027862 (n + 1) : ℚ)

end A027862

/-! ## A027862.P9779228995341470563

`ceil(A002731(n+1)²/2)`
-/

namespace A027862.P9779228995341470563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002731 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A027862.P9779228995341470563

namespace A027862

/-- `ceil(A002731(n+1)²/2)` -/
def P9779228995341470563.Spec : Prop :=
  ∀ n, P9779228995341470563.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P13615015229282567537

`A002731(n+1)+2*A027861(n+1)²`
-/

namespace A027862.P13615015229282567537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1) + 2 * A027861 (n + 1) ^ 2

end

end A027862.P13615015229282567537

namespace A027862

/-- `A002731(n+1)+2*A027861(n+1)²` -/
def P13615015229282567537.Spec : Prop :=
  ∀ n, P13615015229282567537.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P7996637616091356764

`A000217(A002731(n+1))-A027861(n+1)`
-/

namespace A027862.P7996637616091356764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002731 (n + 1)).toNat - A027861 (n + 1)

end

end A027862.P7996637616091356764

namespace A027862

/-- `A000217(A002731(n+1))-A027861(n+1)` -/
def P7996637616091356764.Spec : Prop :=
  ∀ n, P7996637616091356764.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P7389673991299748089

`4*A129307(n+1)+1`
-/

namespace A027862.P7389673991299748089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A129307 (n + 1) + 1

end

end A027862.P7389673991299748089

namespace A027862

/-- `4*A129307(n+1)+1` -/
def P7389673991299748089.Spec : Prop :=
  ∀ n, P7389673991299748089.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P14699115174620284046

`record[A089619(n+1)]`
-/

namespace A027862.P14699115174620284046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027862.P14699115174620284046

namespace A027862

/-- `record[A089619(n+1)]` -/
def P14699115174620284046.Spec : Prop :=
  ∀ n, P14699115174620284046.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P7636215939332646850

`record[A293958(n+1)]`
-/

namespace A027862.P7636215939332646850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027862.P7636215939332646850

namespace A027862

/-- `record[A293958(n+1)]` -/
def P7636215939332646850.Spec : Prop :=
  ∀ n, P7636215939332646850.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P16224682105761296406

`record[A125256(2*n+3)]`
-/

namespace A027862.P16224682105761296406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027862.P16224682105761296406

namespace A027862

/-- `record[A125256(2*n+3)]` -/
def P16224682105761296406.Spec : Prop :=
  ∀ n, P16224682105761296406.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P17449541136134370637

`A001844(A027861(n+1))`
-/

namespace A027862.P17449541136134370637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A027861 (n + 1)).toNat

end

end A027862.P17449541136134370637

namespace A027862

/-- `A001844(A027861(n+1))` -/
def P17449541136134370637.Spec : Prop :=
  ∀ n, P17449541136134370637.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P11533933852593494022

`A125256(A002731(n+1))`
-/

namespace A027862.P11533933852593494022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A002731 (n + 1)).toNat

end

end A027862.P11533933852593494022

namespace A027862

/-- `A125256(A002731(n+1))` -/
def P11533933852593494022.Spec : Prop :=
  ∀ n, P11533933852593494022.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P14472463924786989883

`A068487(A027861(2*n+1-n))`
-/

namespace A027862.P14472463924786989883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068487 (A027861 (2 * n + 1 - n)).toNat

end

end A027862.P14472463924786989883

namespace A027862

/-- `A068487(A027861(2*n+1-n))` -/
def P14472463924786989883.Spec : Prop :=
  ∀ n, P14472463924786989883.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P10177179627630547613

`record[A285122(2*n+3)+2]`
-/

namespace A027862.P10177179627630547613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285122 (2 * n + 3) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027862.P10177179627630547613

namespace A027862

/-- `record[A285122(2*n+3)+2]` -/
def P10177179627630547613.Spec : Prop :=
  ∀ n, P10177179627630547613.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P2312104885457949557

`A000982(eq[A000982(n), A259036(n)])`
-/

namespace A027862.P2312104885457949557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027862.P2312104885457949557

namespace A027862

/-- `A000982(eq[A000982(n), A259036(n)])` -/
def P2312104885457949557.Spec : Prop :=
  ∀ n, P2312104885457949557.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P921797084920793020

`A030978(eq[A030978(n), A259036(n)])`
-/

namespace A027862.P921797084920793020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027862.P921797084920793020

namespace A027862

/-- `A030978(eq[A030978(n), A259036(n)])` -/
def P921797084920793020.Spec : Prop :=
  ∀ n, P921797084920793020.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P3081137774191121324

`record[A211175(n+3)]`
-/

namespace A027862.P3081137774191121324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211175 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027862.P3081137774191121324

namespace A027862

/-- `record[A211175(n+3)]` -/
def P3081137774191121324.Spec : Prop :=
  ∀ n, P3081137774191121324.a n = A027862 (n + 1)

end A027862

/-! ## A027862.P4017220070594358872

`∩[A066782(n+1), A230812(n+1)]`
-/

namespace A027862.P4017220070594358872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027862.P4017220070594358872

namespace A027862

/-- `∩[A066782(n+1), A230812(n+1)]` -/
def P4017220070594358872.Spec : Prop :=
  ∀ n, (P4017220070594358872.a n : ℤ) = A027862 (n + 1)

end A027862

/-! ## A027862.P13755392474525760222

`∩[A163251(n+1), A191219(n+1)]`
-/

namespace A027862.P13755392474525760222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027862.P13755392474525760222

namespace A027862

/-- `∩[A163251(n+1), A191219(n+1)]` -/
def P13755392474525760222.Spec : Prop :=
  ∀ n, (P13755392474525760222.a n : ℤ) = A027862 (n + 1)

end A027862

/-! ## A027862.P5479804019509166093

`∩[A265889(n+1), A001844(n)]`
-/

namespace A027862.P5479804019509166093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027862.P5479804019509166093

namespace A027862

/-- `∩[A265889(n+1), A001844(n)]` -/
def P5479804019509166093.Spec : Prop :=
  ∀ n, (P5479804019509166093.a n : ℤ) = A027862 (n + 1)

end A027862

/-! ## A027862.P16151449351005844680

`∩[A099776(n+1), A265889(n+1)]`
-/

namespace A027862.P16151449351005844680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027862.P16151449351005844680

namespace A027862

/-- `∩[A099776(n+1), A265889(n+1)]` -/
def P16151449351005844680.Spec : Prop :=
  ∀ n, (P16151449351005844680.a n : ℤ) = A027862 (n + 1)

end A027862

/-! ## A027862.P7226683792226428349

`∩[A114073(n+1), A265889(n+1)]`
-/

namespace A027862.P7226683792226428349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027862.P7226683792226428349

namespace A027862

/-- `∩[A114073(n+1), A265889(n+1)]` -/
def P7226683792226428349.Spec : Prop :=
  ∀ n, (P7226683792226428349.a n : ℤ) = A027862 (n + 1)

end A027862

/-!
# A027863: Numbers k such that k^2 + (k+1)^2 + (k+2)^2 is prime.

The programs for A027863, the canonical program `A027863.P18204088403806704990` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027863 has offset 1).

The definition of A027863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027863.P18204088403806704990

`eq[1, A102853(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A027863

/-- `eq[1, A102853(n+1)]` -/
def P18204088403806704990.Spec : Prop :=
  ∀ n, (P18204088403806704990.a n : ℤ) = A027863 (n + 1)

theorem P18204088403806704990.correct : P18204088403806704990.Spec := by
  intro n
  simp only [A027863, Nat.add_sub_cancel]

end A027863

/-! ## A027863.P6136504880297095097

`eq[n+2, A242046(n)]`
-/

namespace A027863.P6136504880297095097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027863.P6136504880297095097

namespace A027863

/-- `eq[n+2, A242046(n)]` -/
def P6136504880297095097.Spec : Prop :=
  ∀ n, (P6136504880297095097.a n : ℤ) = A027863 (n + 1)

end A027863

/-! ## A027863.P12116880299224619706

`eq[A242046(n), A321220(n)]`
-/

namespace A027863.P12116880299224619706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027863.P12116880299224619706

namespace A027863

/-- `eq[A242046(n), A321220(n)]` -/
def P12116880299224619706.Spec : Prop :=
  ∀ n, (P12116880299224619706.a n : ℤ) = A027863 (n + 1)

end A027863

/-! ## A027863.P12362790821681940527

`record[A073759(n+1)/A102853(n)]`
-/

namespace A027863.P12362790821681940527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073759 (n + 1) : ℚ) / (A102853 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027863.P12362790821681940527

namespace A027863

/-- `record[A073759(n+1)/A102853(n)]` -/
def P12362790821681940527.Spec : Prop :=
  ∀ n, P12362790821681940527.a n = (A027863 (n + 1) : ℚ)

end A027863

/-! ## A027863.P7837382751749736420

`A005843(record[n/A102853(2*n+1)])`
-/

namespace A027863.P7837382751749736420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A102853 (2 * n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A027863.P7837382751749736420

namespace A027863

/-- `A005843(record[n/A102853(2*n+1)])` -/
def P7837382751749736420.Spec : Prop :=
  ∀ n, P7837382751749736420.a n = A027863 (n + 1)

end A027863

/-!
# A027864: Primes of the form k^2 + (k+1)^2 + (k+2)^2 = 3*(k+1)^2+2.

The programs for A027864, there is no canonical definition to state claims against.
-/

/-! ## A027864.P13287754201861521854

`A257163(n+2)`
-/

namespace A027864.P13287754201861521854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257163 (n + 2)

end

end A027864.P13287754201861521854

/-! ## A027864.P12845565138914111186

`record[A257163(A080513(abs(1-n)))]`
-/

namespace A027864.P12845565138914111186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257163 (A080513 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027864.P12845565138914111186

/-! ## A027864.P2953449474142631430

`A005918(A027863(n+1)+1)`
-/

namespace A027864.P2953449474142631430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (A027863 (n + 1) + 1).toNat

end

end A027864.P2953449474142631430

/-! ## A027864.P9126300771593858574

`A056107(A027863(n+1)+1)+1`
-/

namespace A027864.P9126300771593858574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 (A027863 (n + 1) + 1).toNat + 1

end

end A027864.P9126300771593858574

/-! ## A027864.P17221966546227883872

`∩[A395567(n+1), A005918(n)]`
-/

namespace A027864.P17221966546227883872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027864.P17221966546227883872

/-! ## A027864.P12717232192114557575

`∩[A395567(n+1), A397444(n)]`
-/

namespace A027864.P12717232192114557575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397444 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027864.P12717232192114557575

/-! ## A027864.P15532513136247507980

`∩[A163251(n+1), A005918(n)]`
-/

namespace A027864.P15532513136247507980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027864.P15532513136247507980

/-!
# A027865: Sums of six consecutive squares: a(n) = n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2 + (n+4)^2 + (n+5)^2.

The programs for A027865, the canonical program `A027865.P1460701069745137995` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027865 has offset 0).

The definition of A027865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+(n+1)²+(n+2)²+(n+3)²+(n+4)²+(n+5)²` (program `A027865.P1460701069745137995`, by `A027865.P1460701069745137995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027865.P714346590624901866

`6*n²+30*n+55`
-/

namespace A027865.P714346590624901866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2 + 30 * n + 55

end

end A027865.P714346590624901866

namespace A027865

/-- `6*n²+30*n+55` -/
def P714346590624901866.Spec : Prop :=
  ∀ n, (P714346590624901866.a n : ℤ) = A027865 n

theorem P714346590624901866.correct : P714346590624901866.Spec := by
  intro n
  simp only [A027865, Nat.add_sub_cancel, A027865.P714346590624901866.a, A027865.P1460701069745137995.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027865

/-! ## A027865.P1460701069745137995

`n²+(n+1)²+(n+2)²+(n+3)²+(n+4)²+(n+5)²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027865

/-- `n²+(n+1)²+(n+2)²+(n+3)²+(n+4)²+(n+5)²` -/
def P1460701069745137995.Spec : Prop :=
  ∀ n, (P1460701069745137995.a n : ℤ) = A027865 n

theorem P1460701069745137995.correct : P1460701069745137995.Spec := by
  intro n
  simp only [A027865]

end A027865

/-! ## A027865.P4341474821381557294

`or(3, 2*A217775(n))`
-/

namespace A027865.P4341474821381557294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (2 * A217775 n)

end

end A027865.P4341474821381557294

namespace A027865

/-- `or(3, 2*A217775(n))` -/
def P4341474821381557294.Spec : Prop :=
  ∀ n, P4341474821381557294.a n = A027865 n

end A027865

/-! ## A027865.P5732982561284473758

`or(1, A027578(n+1)+n²)`
-/

namespace A027865.P5732982561284473758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027578 (n + 1) + (n ^ 2 : ℤ))

end

end A027865.P5732982561284473758

namespace A027865

/-- `or(1, A027578(n+1)+n²)` -/
def P5732982561284473758.Spec : Prop :=
  ∀ n, P5732982561284473758.a n = A027865 n

end A027865

/-! ## A027865.P10118230106213808979

`or(1, 3*(A294774(n+2)+1))`
-/

namespace A027865.P10118230106213808979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * (A294774 (n + 2) + 1))

end

end A027865.P10118230106213808979

namespace A027865

/-- `or(1, 3*(A294774(n+2)+1))` -/
def P10118230106213808979.Spec : Prop :=
  ∀ n, P10118230106213808979.a n = A027865 n

end A027865

/-! ## A027865.P15551851961870213406

`Δ[A063488(n+1)+A063488(n+4)]`
-/

namespace A027865.P15551851961870213406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063488 (n + 1) + A063488 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027865.P15551851961870213406

namespace A027865

/-- `Δ[A063488(n+1)+A063488(n+4)]` -/
def P15551851961870213406.Spec : Prop :=
  ∀ n, P15551851961870213406.a n = A027865 n

end A027865

/-! ## A027865.P3410355741591426861

`(2*A217775(n)+3)/A014963(A082663(n+1))`
-/

namespace A027865.P3410355741591426861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A217775 n + 3 : ℚ) / (A014963 (A082663 (n + 1)).toNat : ℚ)

end

end A027865.P3410355741591426861

namespace A027865

/-- `(2*A217775(n)+3)/A014963(A082663(n+1))` -/
def P3410355741591426861.Spec : Prop :=
  ∀ n, P3410355741591426861.a n = (A027865 n : ℚ)

end A027865

/-! ## A027865.P1457044370202864406

`A017605(∑[n+2]+2)`
-/

namespace A027865.P1457044370202864406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027865.P1457044370202864406

namespace A027865

/-- `A017605(∑[n+2]+2)` -/
def P1457044370202864406.Spec : Prop :=
  ∀ n, P1457044370202864406.a n = A027865 n

end A027865

/-! ## A027865.P13215769689737966525

`Δ[Δ[A014107(A167499(n))]]`
-/

namespace A027865.P13215769689737966525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 (A167499 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027865.P13215769689737966525

namespace A027865

/-- `Δ[Δ[A014107(A167499(n))]]` -/
def P13215769689737966525.Spec : Prop :=
  ∀ n, P13215769689737966525.a n = A027865 n

end A027865

/-! ## A027865.P6821999705229773308

`Δ[Δ[A014105(A145018(n+2))]]`
-/

namespace A027865.P6821999705229773308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A145018 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027865.P6821999705229773308

namespace A027865

/-- `Δ[Δ[A014105(A145018(n+2))]]` -/
def P6821999705229773308.Spec : Prop :=
  ∀ n, P6821999705229773308.a n = A027865 n

end A027865

/-!
# A027866: Numbers k such that k^2 + (k+1)^2 + (k+2)^2 + (k+3)^2 + (k+4)^2 + (k+5)^2 is prime.

The programs for A027866, there is no canonical definition to state claims against.
-/

/-! ## A027866.P504822806541747733

`lt[A001222(xor(1, 6*((n+3)²-n))), 2]`
-/

namespace A027866.P504822806541747733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor 1 (6 * (((n + 3) ^ 2 : ℤ) - (n : ℤ)))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A027866.P504822806541747733

/-! ## A027866.P3786953175457289767

`eq[1, A001221(A027865(n))]`
-/

namespace A027866.P3786953175457289767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A027865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027866.P3786953175457289767

/-! ## A027866.P6429430617691619517

`eq[1, A001221(2*A217775(n)+3)]`
-/

namespace A027866.P6429430617691619517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A217775 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027866.P6429430617691619517

/-! ## A027866.P14244028340563231528

`eq[1, A001222(2*A217775(n)+3)]`
-/

namespace A027866.P14244028340563231528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A217775 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027866.P14244028340563231528

/-! ## A027866.P2961775043473857707

`eq[2, A000005(2*A217775(n)+3)]`
-/

namespace A027866.P2961775043473857707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A217775 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027866.P2961775043473857707

/-!
# A027867: Primes of the form n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2 + (n+4)^2 + (n+5)^2.

The programs for A027867, there is no canonical definition to state claims against.
-/

/-! ## A027867.P15726936048707041943

`A027865(A027866(n+1))`
-/

namespace A027867.P15726936048707041943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027865 (A027866 (n + 1)).toNat

end

end A027867.P15726936048707041943

/-! ## A027867.P9299772987226071041

`∩[or(2, A163251(n+1)), A163251(n+1)]`
-/

namespace A027867.P9299772987226071041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A163251 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027867.P9299772987226071041

/-! ## A027867.P8355356500800097736

`∩[A163251(n+1), A027865(n)]`
-/

namespace A027867.P8355356500800097736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027865 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027867.P8355356500800097736

/-! ## A027867.P341943846481160656

`∩[A139847(n+1), A027865(n)]`
-/

namespace A027867.P341943846481160656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027865 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027867.P341943846481160656

/-! ## A027867.P7098504389422161710

`∩[A102271(n+1), A027865(n)]`
-/

namespace A027867.P7098504389422161710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027865 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027867.P7098504389422161710

/-! ## A027867.P6441715721295784988

`∩[A107168(n+1), A027865(n)]`
-/

namespace A027867.P6441715721295784988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027865 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027867.P6441715721295784988

/-! ## A027867.P15759460269642646586

`p?[6*((n+3)²-n)+1]`
-/

namespace A027867.P15759460269642646586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (((n + 3) ^ 2 : ℤ) - (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A027867.P15759460269642646586

/-! ## A027867.P14413932967468411418

`or(1, p?[A027865(n)])`
-/

namespace A027867.P14413932967468411418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A027867.P14413932967468411418

/-! ## A027867.P7583934157721659411

`∏{p}[p?[A027865(n+1)], #]`
-/

namespace A027867.P7583934157721659411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A027867.P7583934157721659411

/-! ## A027867.P7027539090743246285

`A000007(n+1)+p?[A027865(n)]`
-/

namespace A027867.P7027539090743246285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A027867.P7027539090743246285

/-!
# A027868: Number of trailing zeros in n!; highest power of 5 dividing n!.

The programs for A027868, the canonical program `A027868.P16736331187050993761` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027868 has offset 0).

The definition of A027868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027868.P16736331187050993761

`floor(n/5)+a(floor(n/5))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027868

/-- `floor(n/5)+a(floor(n/5))` -/
def P16736331187050993761.Spec : Prop :=
  ∀ n, P16736331187050993761.a n = A027868 n

theorem P16736331187050993761.correct : P16736331187050993761.Spec := by
  intro n
  simp only [A027868]

end A027868

/-! ## A027868.P15027812014689250732

`(n-A053824(n))/4`
-/

namespace A027868.P15027812014689250732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053824 n : ℚ) / 4

end

end A027868.P15027812014689250732

namespace A027868

/-- `(n-A053824(n))/4` -/
def P15027812014689250732.Spec : Prop :=
  ∀ n, P15027812014689250732.a n = (A027868 n : ℚ)

end A027868

/-! ## A027868.P10674635920923614807

`a(n-1)+val(n, 5)` with `a(0)=0`
-/

namespace A027868.P10674635920923614807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 5

end

end A027868.P10674635920923614807

namespace A027868

/-- `a(n-1)+val(n, 5)` -/
def P10674635920923614807.Spec : Prop :=
  ∀ n, (P10674635920923614807.a n : ℤ) = A027868 n

end A027868

/-! ## A027868.P10019734174303765500

`∑[val(abs(1-n)+1, 5)]`
-/

namespace A027868.P10019734174303765500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027868.P10019734174303765500

namespace A027868

/-- `∑[val(abs(1-n)+1, 5)]` -/
def P10019734174303765500.Spec : Prop :=
  ∀ n, (P10019734174303765500.a n : ℤ) = A027868 n

end A027868

/-! ## A027868.P13429984561659221927

`val(n, 5)-floor(-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A027868.P13429984561659221927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 5 : ℤ) - (-a (n - 1))

end

end A027868.P13429984561659221927

namespace A027868

/-- `val(n, 5)-floor(-a(n-1))` -/
def P13429984561659221927.Spec : Prop :=
  ∀ n, P13429984561659221927.a n = A027868 n

end A027868

/-! ## A027868.P12675427354552653855

`val(n, 5)-ceil(-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A027868.P12675427354552653855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 5 : ℤ) - (-a (n - 1))

end

end A027868.P12675427354552653855

namespace A027868

/-- `val(n, 5)-ceil(-a(n-1))` -/
def P12675427354552653855.Spec : Prop :=
  ∀ n, P12675427354552653855.a n = A027868 n

end A027868

/-! ## A027868.P2880458270807221596

`val(n, 5)-round(-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A027868.P2880458270807221596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 5 : ℤ) - (-a (n - 1))

end

end A027868.P2880458270807221596

namespace A027868

/-- `val(n, 5)-round(-a(n-1))` -/
def P2880458270807221596.Spec : Prop :=
  ∀ n, P2880458270807221596.a n = A027868 n

end A027868

/-! ## A027868.P13048385508996099111

`∑[val(n, 5)*a(n-1)!]` with `a(0)=0`
-/

namespace A027868.P13048385508996099111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  SequenceMachineLib.valuation n 5 * Nat.factorial (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027868.P13048385508996099111

namespace A027868

/-- `∑[val(n, 5)*a(n-1)!]` -/
def P13048385508996099111.Spec : Prop :=
  ∀ n, (P13048385508996099111.a n : ℤ) = A027868 n

end A027868

/-! ## A027868.P13844992634084755579

`A191610(n+1)-n`
-/

namespace A027868.P13844992634084755579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1) - (n : ℤ)

end

end A027868.P13844992634084755579

namespace A027868

/-- `A191610(n+1)-n` -/
def P13844992634084755579.Spec : Prop :=
  ∀ n, P13844992634084755579.a n = A027868 n

end A027868

/-! ## A027868.P14999903190934592237

`comp[A000966(n+1)]-n`
-/

namespace A027868.P14999903190934592237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000966 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A027868.P14999903190934592237

namespace A027868

/-- `comp[A000966(n+1)]-n` -/
def P14999903190934592237.Spec : Prop :=
  ∀ n, P14999903190934592237.a n = A027868 n

end A027868

/-! ## A027868.P3225358963782285854

`(n+1-A173525(n+1))/4`
-/

namespace A027868.P3225358963782285854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A173525 (n + 1) : ℚ) / 4

end

end A027868.P3225358963782285854

namespace A027868

/-- `(n+1-A173525(n+1))/4` -/
def P3225358963782285854.Spec : Prop :=
  ∀ n, P3225358963782285854.a n = (A027868 n : ℚ)

end A027868

/-! ## A027868.P1841314172354763221

`A027869(n)-A137581(n)`
-/

namespace A027868.P1841314172354763221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 n - A137581 n

end

end A027868.P1841314172354763221

namespace A027868

/-- `A027869(n)-A137581(n)` -/
def P1841314172354763221.Spec : Prop :=
  ∀ n, P1841314172354763221.a n = A027868 n

end A027868

/-! ## A027868.P6396053318151369020

`A191610(n+1)%A028310(n)`
-/

namespace A027868.P6396053318151369020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191610 (n + 1)) (A028310 n)

end

end A027868.P6396053318151369020

namespace A027868

/-- `A191610(n+1)%A028310(n)` -/
def P6396053318151369020.Spec : Prop :=
  ∀ n, P6396053318151369020.a n = A027868 n

end A027868

/-! ## A027868.P10273027939185551798

`∑[A112765(n+1)]-A112765(n+1)`
-/

namespace A027868.P10273027939185551798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A112765 (n + 1)

end

end A027868.P10273027939185551798

namespace A027868

/-- `∑[A112765(n+1)]-A112765(n+1)` -/
def P10273027939185551798.Spec : Prop :=
  ∀ n, P10273027939185551798.a n = A027868 n

end A027868

/-! ## A027868.P11678371455328564126

`∑[A055457(n+1)]-(A055457(n+1)+n)`
-/

namespace A027868.P11678371455328564126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A055457 (n + 1) + (n : ℤ))

end

end A027868.P11678371455328564126

namespace A027868

/-- `∑[A055457(n+1)]-(A055457(n+1)+n)` -/
def P11678371455328564126.Spec : Prop :=
  ∀ n, P11678371455328564126.a n = A027868 n

end A027868

/-! ## A027868.P8317788019295054817

`A034886(n)-A008906(n)`
-/

namespace A027868.P8317788019295054817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - A008906 n

end

end A027868.P8317788019295054817

namespace A027868

/-- `A034886(n)-A008906(n)` -/
def P8317788019295054817.Spec : Prop :=
  ∀ n, P8317788019295054817.a n = A027868 n

end A027868

/-! ## A027868.P5600525750688834302

`∑[A112765(A257088(n))]`
-/

namespace A027868.P5600525750688834302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027868.P5600525750688834302

namespace A027868

/-- `∑[A112765(A257088(n))]` -/
def P5600525750688834302.Spec : Prop :=
  ∀ n, P5600525750688834302.a n = A027868 n

end A027868

/-! ## A027868.P12483560227624763152

`∑[A112765(A066393(n))]`
-/

namespace A027868.P12483560227624763152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A066393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027868.P12483560227624763152

namespace A027868

/-- `∑[A112765(A066393(n))]` -/
def P12483560227624763152.Spec : Prop :=
  ∀ n, P12483560227624763152.a n = A027868 n

end A027868

/-! ## A027868.P10113755748371885365

`∑[A112765(A008574(n)-n)]`
-/

namespace A027868.P10113755748371885365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027868.P10113755748371885365

namespace A027868

/-- `∑[A112765(A008574(n)-n)]` -/
def P10113755748371885365.Spec : Prop :=
  ∀ n, P10113755748371885365.a n = A027868 n

end A027868

/-! ## A027868.P7307945827993496720

`∑[A112765(A008574(n))]`
-/

namespace A027868.P7307945827993496720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027868.P7307945827993496720

namespace A027868

/-- `∑[A112765(A008574(n))]` -/
def P7307945827993496720.Spec : Prop :=
  ∀ n, P7307945827993496720.a n = A027868 n

end A027868

/-!
# A027869: Number of 0's in n!.

The programs for A027869, there is no canonical definition to state claims against.
-/

/-! ## A027869.P16811572095445813112

`A034886(n)-(A079680(n)+A079714(n)+A079684(n)+A079688(n)+A079690(n)+A079691(n)+A079692(n)+A079693(n)+A079694(n))`
-/

namespace A027869.P16811572095445813112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A079680 n + A079714 n + A079684 n + A079688 n + A079690 n + A079691 n + A079692 n + A079693 n + A079694 n)

end

end A027869.P16811572095445813112

/-! ## A027869.P4794679559476463402

`A137581(n)+A027868(n)`
-/

namespace A027869.P4794679559476463402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137581 n + A027868 n

end

end A027869.P4794679559476463402

/-! ## A027869.P7361541601182078719

`A034886(n)-A356758(n)`
-/

namespace A027869.P7361541601182078719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - A356758 n

end

end A027869.P7361541601182078719

/-! ## A027869.P6533132730946915434

`A191610(n+1)+A137581(n)-n`
-/

namespace A027869.P6533132730946915434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1) + (A137581 n - (n : ℤ))

end

end A027869.P6533132730946915434

/-! ## A027869.P7450639927052431019

`∑[A112765(n+1)]+A137581(n)-A112765(n+1)`
-/

namespace A027869.P7450639927052431019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A137581 n - A112765 (n + 1))

end

end A027869.P7450639927052431019

/-! ## A027869.P9756053289677629689

`A034886(n)+A137581(n)-A008906(n)`
-/

namespace A027869.P9756053289677629689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n + (A137581 n - A008906 n)

end

end A027869.P9756053289677629689

/-! ## A027869.P17848754139328227015

`A137581(n)+∑[A112765(A257088(n))]`
-/

namespace A027869.P17848754139328227015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137581 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027869.P17848754139328227015

/-! ## A027869.P6284017508363172651

`A137581(n)+∑[A112765(A066393(n))]`
-/

namespace A027869.P6284017508363172651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A066393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137581 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027869.P6284017508363172651

/-! ## A027869.P3587964761114040590

`A137581(n)+∑[A112765(A008458(n))]`
-/

namespace A027869.P3587964761114040590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137581 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027869.P3587964761114040590

/-! ## A027869.P14349884388062730582

`A137581(n)+val(A243757(n), 5)`
-/

namespace A027869.P14349884388062730582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137581 n + (SequenceMachineLib.valuation (A243757 n).toNat 5 : ℤ)

end

end A027869.P14349884388062730582

/-!
# A027870: Number of zero digits in 2^n.

The programs for A027870, the canonical program `A027870.P15841948171125213496` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027870 has offset 0).

The definition of A027870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027870.P14865609649544267538

`val(A028910(n), 5)`
-/

namespace A027870.P14865609649544267538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028910 n).toNat 5

end

end A027870.P14865609649544267538

namespace A027870

/-- `val(A028910(n), 5)` -/
def P14865609649544267538.Spec : Prop :=
  ∀ n, (P14865609649544267538.a n : ℤ) = A027870 n

end A027870

/-! ## A027870.P15841948171125213496

`∑{digits}[2^n, A000007(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027870

/-- `∑{digits}[2^n, A000007(#)]` -/
def P15841948171125213496.Spec : Prop :=
  ∀ n, P15841948171125213496.a n = A027870 n

theorem P15841948171125213496.correct : P15841948171125213496.Spec := by
  intro n
  simp only [A027870]

end A027870

/-! ## A027870.P14395954916846392695

`∑{digits}[2^n, val(A000040(#+1), 2)]`
-/

namespace A027870.P14395954916846392695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (A000040 (x + 1)).toNat 2).sum

end

end A027870.P14395954916846392695

namespace A027870

/-- `∑{digits}[2^n, val(A000040(#+1), 2)]` -/
def P14395954916846392695.Spec : Prop :=
  ∀ n, (P14395954916846392695.a n : ℤ) = A027870 n

end A027870

/-! ## A027870.P16598761383152583158

`∑{digits}[A000079(n), A109151(#)]`
-/

namespace A027870.P16598761383152583158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A109151 x).sum

end

end A027870.P16598761383152583158

namespace A027870

/-- `∑{digits}[A000079(n), A109151(#)]` -/
def P16598761383152583158.Spec : Prop :=
  ∀ n, P16598761383152583158.a n = A027870 n

end A027870

/-! ## A027870.P15270389090341680259

`∑{digits}[A000079(n), A288117(#)]`
-/

namespace A027870.P15270389090341680259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A288117 x).sum

end

end A027870.P15270389090341680259

namespace A027870

/-- `∑{digits}[A000079(n), A288117(#)]` -/
def P15270389090341680259.Spec : Prop :=
  ∀ n, P15270389090341680259.a n = A027870 n

end A027870

/-! ## A027870.P11847571009976203758

`∑{digits}[A000079(n), 1-A330634(#)]`
-/

namespace A027870.P11847571009976203758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A330634 x).sum

end

end A027870.P11847571009976203758

namespace A027870

/-- `∑{digits}[A000079(n), 1-A330634(#)]` -/
def P11847571009976203758.Spec : Prop :=
  ∀ n, P11847571009976203758.a n = A027870 n

end A027870

/-! ## A027870.P2330702351122837559

`∑{digits}[2^n, A288318(A000217(#))]`
-/

namespace A027870.P2330702351122837559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A288318 (A000217 x).toNat).sum

end

end A027870.P2330702351122837559

namespace A027870

/-- `∑{digits}[2^n, A288318(A000217(#))]` -/
def P2330702351122837559.Spec : Prop :=
  ∀ n, P2330702351122837559.a n = A027870 n

end A027870

/-! ## A027870.P16796688630576655106

`∑{digits}[A000079(n), and(1, A000079(#))]`
-/

namespace A027870.P16796688630576655106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.land 1 (A000079 x)).sum

end

end A027870.P16796688630576655106

namespace A027870

/-- `∑{digits}[A000079(n), and(1, A000079(#))]` -/
def P16796688630576655106.Spec : Prop :=
  ∀ n, P16796688630576655106.a n = A027870 n

end A027870

/-! ## A027870.P1823135952471357736

`∑{digits}[A000079(n), A028310(#)-#]`
-/

namespace A027870.P1823135952471357736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x - (x : ℤ)).sum

end

end A027870.P1823135952471357736

namespace A027870

/-- `∑{digits}[A000079(n), A028310(#)-#]` -/
def P1823135952471357736.Spec : Prop :=
  ∀ n, P1823135952471357736.a n = A027870 n

end A027870

/-! ## A027870.P3420823565430051750

`∑{digits}[A000079(n), A000035(A000079(#))]`
-/

namespace A027870.P3420823565430051750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 (A000079 x).toNat).sum

end

end A027870.P3420823565430051750

namespace A027870

/-- `∑{digits}[A000079(n), A000035(A000079(#))]` -/
def P3420823565430051750.Spec : Prop :=
  ∀ n, P3420823565430051750.a n = A027870 n

end A027870

/-!
# A027871: a(n) = Product_{i=1..n} (3^i - 1).

The programs for A027871, there is no canonical definition to state claims against.
-/

/-! ## A027871.P14121141192788183303

`∏[floor((sqrt(3)^n)²)]`
-/

namespace A027871.P14121141192788183303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) ^ n) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027871.P14121141192788183303

/-! ## A027871.P3802310788294656026

`(3^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A027871.P3802310788294656026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((3 ^ n : ℤ) - 1) * a (n - 1)

end

end A027871.P3802310788294656026

/-! ## A027871.P15931474828585379488

`lcm(3^n, a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A027871.P15931474828585379488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (3 ^ n : ℤ) (a (n - 1)) : ℤ) - a (n - 1)

end

end A027871.P15931474828585379488

/-! ## A027871.P8909849242113787923

`a(n-1)/(1/3)^n-a(n-1)` with `a(0)=1`
-/

namespace A027871.P8909849242113787923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ n - a (n - 1)

end

end A027871.P8909849242113787923

/-! ## A027871.P8643093664808265119

`a(n-1)*∑[3*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A027871.P8643093664808265119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A027871.P8643093664808265119

/-!
# A027872: a(n) = Product_{i=1..n} (5^i - 1).

The programs for A027872, there is no canonical definition to state claims against.
-/

/-! ## A027872.P11958233273419020356

`∏[ceil(abs(5^n-ϕ))]`
-/

namespace A027872.P11958233273419020356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(5 ^ n : ℝ) - Real.goldenRatio|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027872.P11958233273419020356

/-! ## A027872.P10920229692568975850

`(5^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A027872.P10920229692568975850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((5 ^ n : ℤ) - 1) * a (n - 1)

end

end A027872.P10920229692568975850

/-! ## A027872.P18168476243153992

`lcm(5^n, a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A027872.P18168476243153992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (5 ^ n : ℤ) (a (n - 1)) : ℤ) - a (n - 1)

end

end A027872.P18168476243153992

/-! ## A027872.P5016083403818409819

`a(n-1)/(1/5)^n-a(n-1)` with `a(0)=1`
-/

namespace A027872.P5016083403818409819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 5) ^ n - a (n - 1)

end

end A027872.P5016083403818409819

/-! ## A027872.P5361576388712886087

`a(n-1)*∑[5*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A027872.P5361576388712886087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A027872.P5361576388712886087

/-!
# A027873: a(n) = Product_{i=1..n} (6^i - 1).

The programs for A027873, there is no canonical definition to state claims against.
-/

/-! ## A027873.P3859220885507318398

`∏[or(1, 6^n-1)]`
-/

namespace A027873.P3859220885507318398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((6 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027873.P3859220885507318398

/-! ## A027873.P18147630845403122277

`∏[floor(sqrt(6)^(2*n))]`
-/

namespace A027873.P18147630845403122277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (6 : ℝ) ^ (2 * n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027873.P18147630845403122277

/-! ## A027873.P1202000009471862639

`(6^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A027873.P1202000009471862639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((6 ^ n : ℤ) - 1) * a (n - 1)

end

end A027873.P1202000009471862639

/-! ## A027873.P7398322822120430567

`lcm(6^n, a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A027873.P7398322822120430567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (6 ^ n : ℤ) (a (n - 1)) : ℤ) - a (n - 1)

end

end A027873.P7398322822120430567

/-! ## A027873.P3193483667397471779

`a(n-1)*A024062(n)` with `a(0)=1`
-/

namespace A027873.P3193483667397471779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A024062 n

end

end A027873.P3193483667397471779

/-!
# A027874: Minimal degree path length of a tree with n leaves.

The programs for A027874, the canonical program `A027874.P17750017900131187967` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027874 has offset 1).

The definition of A027874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027874.P17750017900131187967

`∑[a(∑[char[3*n]]-1)+3]` with `a(0)=0, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027874

/-- `∑[a(∑[char[3*n]]-1)+3]` -/
def P17750017900131187967.Spec : Prop :=
  ∀ n, (P17750017900131187967.a n : ℤ) = A027874 (n + 1)

theorem P17750017900131187967.correct : P17750017900131187967.Spec := by
  intro n
  simp only [A027874, Nat.add_sub_cancel]

end A027874

/-! ## A027874.P451590434257926708

`∑[ceil(log2(A037456(3*n+1)))]`
-/

namespace A027874.P451590434257926708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A037456 (3 * n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027874.P451590434257926708

namespace A027874

/-- `∑[ceil(log2(A037456(3*n+1)))]` -/
def P451590434257926708.Spec : Prop :=
  ∀ n, P451590434257926708.a n = A027874 (n + 1)

end A027874

/-! ## A027874.P15438955750814989653

`∑[A007456(A338086(n)+1)]`
-/

namespace A027874.P15438955750814989653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A338086 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027874.P15438955750814989653

namespace A027874

/-- `∑[A007456(A338086(n)+1)]` -/
def P15438955750814989653.Spec : Prop :=
  ∀ n, P15438955750814989653.a n = A027874 (n + 1)

end A027874

/-! ## A027874.P4688859946104962710

`∑[A007456(or(1, A338086(n)))]`
-/

namespace A027874.P4688859946104962710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (Int.lor 1 (A338086 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027874.P4688859946104962710

namespace A027874

/-- `∑[A007456(or(1, A338086(n)))]` -/
def P4688859946104962710.Spec : Prop :=
  ∀ n, P4688859946104962710.a n = A027874 (n + 1)

end A027874

/-! ## A027874.P16649966930249323383

`∑[A070940(A338086(n)+1)]-1+n`
-/

namespace A027874.P16649966930249323383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A338086 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 + (n : ℤ)

end

end A027874.P16649966930249323383

namespace A027874

/-- `∑[A070940(A338086(n)+1)]-1+n` -/
def P16649966930249323383.Spec : Prop :=
  ∀ n, P16649966930249323383.a n = A027874 (n + 1)

end A027874

/-! ## A027874.P3774851943057759690

`A007456(or(5, A338086(n)))+a(n-1)` with `a(0)=0`
-/

namespace A027874.P3774851943057759690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007456 (Int.lor 5 (A338086 n)).toNat + a (n - 1)

end

end A027874.P3774851943057759690

namespace A027874

/-- `A007456(or(5, A338086(n)))+a(n-1)` -/
def P3774851943057759690.Spec : Prop :=
  ∀ n, P3774851943057759690.a n = A027874 (n + 1)

end A027874

/-! ## A027874.P3450609334471543642

`∑[A029837(A037456(A016777(n)))]`
-/

namespace A027874.P3450609334471543642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A037456 (A016777 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027874.P3450609334471543642

namespace A027874

/-- `∑[A029837(A037456(A016777(n)))]` -/
def P3450609334471543642.Spec : Prop :=
  ∀ n, P3450609334471543642.a n = A027874 (n + 1)

end A027874

/-! ## A027874.P17038647395363356898

`∑[A029837(A017077(A037456(n)))]`
-/

namespace A027874.P17038647395363356898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A017077 (A037456 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027874.P17038647395363356898

namespace A027874

/-- `∑[A029837(A017077(A037456(n)))]` -/
def P17038647395363356898.Spec : Prop :=
  ∀ n, P17038647395363356898.a n = A027874 (n + 1)

end A027874

/-! ## A027874.P13303734438738316112

`A023443(n)+∑[A070940(A338086(n)+1)]`
-/

namespace A027874.P13303734438738316112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A338086 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027874.P13303734438738316112

namespace A027874

/-- `A023443(n)+∑[A070940(A338086(n)+1)]` -/
def P13303734438738316112.Spec : Prop :=
  ∀ n, P13303734438738316112.a n = A027874 (n + 1)

end A027874

/-! ## A027874.P5402807386704256776

`∑[A029837(A005408(A338086(n)))]`
-/

namespace A027874.P5402807386704256776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A005408 (A338086 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027874.P5402807386704256776

namespace A027874

/-- `∑[A029837(A005408(A338086(n)))]` -/
def P5402807386704256776.Spec : Prop :=
  ∀ n, P5402807386704256776.a n = A027874 (n + 1)

end A027874

/-!
# A027875: a(n) = Product_{i=1..n} (7^i - 1).

The programs for A027875, there is no canonical definition to state claims against.
-/

/-! ## A027875.P6565240654451406413

`∏[floor(sqrt(7)^(2*n))]`
-/

namespace A027875.P6565240654451406413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (7 : ℝ) ^ (2 * n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027875.P6565240654451406413

/-! ## A027875.P3825020998618371808

`(7^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A027875.P3825020998618371808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((7 ^ n : ℤ) - 1) * a (n - 1)

end

end A027875.P3825020998618371808

/-! ## A027875.P13985679300516914127

`a(n-1)*A024075(n)` with `a(0)=1`
-/

namespace A027875.P13985679300516914127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A024075 n

end

end A027875.P13985679300516914127

/-!
# A027876: a(n) = Product_{i=1..n} (8^i - 1).

The programs for A027876, there is no canonical definition to state claims against.
-/

/-! ## A027876.P7807692502267578826

`∏[8^n-ceil(abs(sin(n)))]`
-/

namespace A027876.P7807692502267578826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - ⌈|Real.sin (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027876.P7807692502267578826

/-! ## A027876.P6586660674387241172

`∏[8^n+floor(acot(n))-1]`
-/

namespace A027876.P6586660674387241172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027876.P6586660674387241172

/-! ## A027876.P4412462241930481115

`∏[8^n-ceil(sin(-n)²)]`
-/

namespace A027876.P4412462241930481115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - ⌈Real.sin (-(n : ℤ) : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027876.P4412462241930481115

/-! ## A027876.P15738885368507237906

`(8^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A027876.P15738885368507237906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((8 ^ n : ℤ) - 1) * a (n - 1)

end

end A027876.P15738885368507237906

/-! ## A027876.P14624751507179513422

`lcm(8^n, a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A027876.P14624751507179513422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (8 ^ n : ℤ) (a (n - 1)) : ℤ) - a (n - 1)

end

end A027876.P14624751507179513422

/-!
# A027877: a(n) = Product_{i=1..n} (9^i - 1).

The programs for A027877, there is no canonical definition to state claims against.
-/

/-! ## A027877.P2726537245845370291

`∏[9^n-ceil(sin(n)²)]`
-/

namespace A027877.P2726537245845370291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027877.P2726537245845370291

/-! ## A027877.P1066846211726775427

`∏[floor(9^n-tanh(sqrt(n)))]`
-/

namespace A027877.P1066846211726775427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 ^ n : ℝ) - Real.tanh (Real.sqrt (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027877.P1066846211726775427

/-! ## A027877.P2611562747226484394

`∏[floor((1/3)^-2*n)]`
-/

namespace A027877.P2611562747226484394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 3) ^ (-(2 * n : ℤ) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027877.P2611562747226484394

/-! ## A027877.P6209928308147403614

`(9^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A027877.P6209928308147403614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((9 ^ n : ℤ) - 1) * a (n - 1)

end

end A027877.P6209928308147403614

/-! ## A027877.P11836043393552042288

`a(n-1)*A024101(n)` with `a(0)=1`
-/

namespace A027877.P11836043393552042288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A024101 n

end

end A027877.P11836043393552042288

/-!
# A027878: a(n) = Product_{i=1..n} (10^i - 1).

The programs for A027878, there is no canonical definition to state claims against.
-/

/-! ## A027878.P15499520164428574580

`∏[floor((sqrt(10)^n)²)]`
-/

namespace A027878.P15499520164428574580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (10 : ℝ) ^ n) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027878.P15499520164428574580

/-! ## A027878.P16770510070861924791

`(10^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A027878.P16770510070861924791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((10 ^ n : ℤ) - 1) * a (n - 1)

end

end A027878.P16770510070861924791

/-! ## A027878.P4679145353616593575

`abs(∏[∑[10*a(n-1)]])` with `a(0)=1, a(1)=8, a(2)=90`
-/

namespace A027878.P4679145353616593575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 90] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027878.P4679145353616593575

/-! ## A027878.P9568434176298745247

`floor(∏[∑[10*a(n-1)]])` with `a(0)=1, a(1)=8, a(2)=90`

`floor` is left out, it is the identity on integers.
-/

namespace A027878.P9568434176298745247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 90] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027878.P9568434176298745247

/-! ## A027878.P11022048279652939705

`ceil(∏[∑[10*a(n-1)]])` with `a(0)=1, a(1)=8, a(2)=90`

`ceil` is left out, it is the identity on integers.
-/

namespace A027878.P11022048279652939705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 90] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027878.P11022048279652939705

/-!
# A027879: a(n) = Product_{i=1..n} (11^i - 1).

The programs for A027879, there is no canonical definition to state claims against.
-/

/-! ## A027879.P8464450346985478106

`∏[11^n-ceil(abs(sin(n)))]`
-/

namespace A027879.P8464450346985478106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n : ℤ) - ⌈|Real.sin (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027879.P8464450346985478106

/-! ## A027879.P12626782194207849633

`∏[11^n-ceil(sin(n)²)]`
-/

namespace A027879.P12626782194207849633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027879.P12626782194207849633

/-! ## A027879.P5447458670977521768

`∏[xor(11^n, ceil(sin(n)²))]`
-/

namespace A027879.P5447458670977521768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (11 ^ n : ℤ) ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027879.P5447458670977521768

/-! ## A027879.P17420179817727547857

`∏[11^n+floor(acot(n))-1]`
-/

namespace A027879.P17420179817727547857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n : ℤ) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027879.P17420179817727547857

/-! ## A027879.P8283748120495202116

`∏[gcd(11^n-1, floor(acot(n)))]`
-/

namespace A027879.P8283748120495202116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((11 ^ n : ℤ) - 1) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027879.P8283748120495202116

/-!
# A027880: a(n) = Product_{i=1..n} (12^i - 1).

The programs for A027880, there is no canonical definition to state claims against.
-/

/-! ## A027880.P13019998735204468973

`∏[12^n-ceil(sin(n)²)]`
-/

namespace A027880.P13019998735204468973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 ^ n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027880.P13019998735204468973

/-! ## A027880.P2407740875490063436

`∏[12^n+floor(acot(n))-1]`
-/

namespace A027880.P2407740875490063436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 ^ n : ℤ) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027880.P2407740875490063436

/-! ## A027880.P5887605583419755676

`(12^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A027880.P5887605583419755676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((12 ^ n : ℤ) - 1) * a (n - 1)

end

end A027880.P5887605583419755676

/-! ## A027880.P578598000554586677

`∏[or(1, A024140(n))]`
-/

namespace A027880.P578598000554586677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A024140 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027880.P578598000554586677

/-! ## A027880.P15873660492608042327

`∏[12^n-char[A002331(n+1)]]`
-/

namespace A027880.P15873660492608042327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002331 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 ^ n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027880.P15873660492608042327

/-!
# A027881: a(i)=a(i-1)+a(j_1)*a(j_2) {where j_1+j_2=i-1, j_1 <= q j_2} + a(j_1)*a(j_2)*a(j_3) {where j_1+j_2+j_3=i-1, j_1 <= q j_2 <= q j_3} +...+ a(1)^{i-1}.

The programs for A027881, there is no canonical definition to state claims against.
-/

/-! ## A027881.P3496936667990248384

`A001006(n)-A320005(A166991(n))`
-/

namespace A027881.P3496936667990248384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A320005 (A166991 n).toNat

end

end A027881.P3496936667990248384

/-! ## A027881.P7054413266605689210

`and(A343653(n+1)-A006530(n!), A001006(n))`
-/

namespace A027881.P7054413266605689210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A343653 (n + 1) - A006530 (Nat.factorial n)) (A001006 n)

end

end A027881.P7054413266605689210

/-! ## A027881.P6758200055431859177

`A375496(A306575(n))`
-/

namespace A027881.P6758200055431859177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375496 (A306575 n).toNat

end

end A027881.P6758200055431859177

/-! ## A027881.P4981966714562486222

`A375496(A191789(n+1))`
-/

namespace A027881.P4981966714562486222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375496 (A191789 (n + 1)).toNat

end

end A027881.P4981966714562486222

/-!
# A027882: a(n) = Sum_{k>=1} k^n (2/3)^k.

The programs for A027882, there is no canonical definition to state claims against.
-/

/-! ## A027882.P16266022806562885740

`2*A201339(n)`
-/

namespace A027882.P16266022806562885740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201339 n

end

end A027882.P16266022806562885740

/-! ## A027882.P12494179561192642725

`lcm(A014963(A140513(n)), A201339(n))`
-/

namespace A027882.P12494179561192642725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (A140513 n).toNat) (A201339 n)

end

end A027882.P12494179561192642725

/-! ## A027882.P18320699281413322835

`2*A029618(A000217(n))*A050351(n)`
-/

namespace A027882.P18320699281413322835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029618 (A000217 n).toNat * A050351 n)

end

end A027882.P18320699281413322835

/-! ## A027882.P4468594924246629600

`A201339(n)+or(A193238(n), A201339(n))`
-/

namespace A027882.P4468594924246629600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201339 n + Int.lor (A193238 n) (A201339 n)

end

end A027882.P4468594924246629600

/-! ## A027882.P17882868473904362413

`(A020639(A004277(n))+1)*A004123(n+1)`
-/

namespace A027882.P17882868473904362413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A004277 n).toNat + 1) * A004123 (n + 1)

end

end A027882.P17882868473904362413

/-! ## A027882.P15222454486548303425

`(A020639(A008458(n))+1)*A004123(n+1)`
-/

namespace A027882.P15222454486548303425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A008458 n).toNat + 1) * A004123 (n + 1)

end

end A027882.P15222454486548303425

/-! ## A027882.P3804011080565430245

`(A020639(A103517(n))+1)*A004123(n+1)`
-/

namespace A027882.P3804011080565430245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A103517 n).toNat + 1) * A004123 (n + 1)

end

end A027882.P3804011080565430245

/-! ## A027882.P1055809631099149608

`A367489(n+2)/(n+2)`
-/

namespace A027882.P1055809631099149608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367489 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A027882.P1055809631099149608

/-!
# A027883: Positions of primes in sequence (A246655) of primes and prime powers {p^i, i >= 1}.

The programs for A027883, the canonical program `A027883.P3043507636580154283` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027883 has offset 1).

The definition of A027883 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024620, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027883.P3043507636580154283

`A024620(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027883

/-- `A024620(n+1)-1` -/
def P3043507636580154283.Spec : Prop :=
  ∀ n, P3043507636580154283.a n = A027883 (n + 1)

theorem P3043507636580154283.correct : P3043507636580154283.Spec := by
  intro n
  simp only [A027883, Nat.add_sub_cancel]

end A027883

/-! ## A027883.P14131456904995181907

`A366833(n)+a(n-1)` with `a(0)=1`
-/

namespace A027883.P14131456904995181907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366833 n + a (n - 1)

end

end A027883.P14131456904995181907

namespace A027883

/-- `A366833(n)+a(n-1)` -/
def P14131456904995181907.Spec : Prop :=
  ∀ n, P14131456904995181907.a n = A027883 (n + 1)

end A027883

/-! ## A027883.P10466421917123719729

`A000040(n+1)-A378615(n+1)`
-/

namespace A027883.P10466421917123719729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A378615 (n + 1)

end

end A027883.P10466421917123719729

namespace A027883

/-- `A000040(n+1)-A378615(n+1)` -/
def P10466421917123719729.Spec : Prop :=
  ∀ n, P10466421917123719729.a n = A027883 (n + 1)

end A027883

/-! ## A027883.P6259604133549140384

`lt[n, A063872(n+1)]+1`
-/

namespace A027883.P6259604133549140384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A027883.P6259604133549140384

namespace A027883

/-- `lt[n, A063872(n+1)]+1` -/
def P6259604133549140384.Spec : Prop :=
  ∀ n, (P6259604133549140384.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P16337461768623461000

`eq[1, A025474(n+1)]`
-/

namespace A027883.P16337461768623461000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027883.P16337461768623461000

namespace A027883

/-- `eq[1, A025474(n+1)]` -/
def P16337461768623461000.Spec : Prop :=
  ∀ n, (P16337461768623461000.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P2417026989995332122

`eq[1, A082950(n+1)]`
-/

namespace A027883.P2417026989995332122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027883.P2417026989995332122

namespace A027883

/-- `eq[1, A082950(n+1)]` -/
def P2417026989995332122.Spec : Prop :=
  ∀ n, (P2417026989995332122.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P16730558748119246408

`eq[1, A192015(n+1)]`
-/

namespace A027883.P16730558748119246408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027883.P16730558748119246408

namespace A027883

/-- `eq[1, A192015(n+1)]` -/
def P16730558748119246408.Spec : Prop :=
  ∀ n, (P16730558748119246408.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P5262069586041160925

`eq[2, A086454(n+1)]`
-/

namespace A027883.P5262069586041160925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027883.P5262069586041160925

namespace A027883

/-- `eq[2, A086454(n+1)]` -/
def P5262069586041160925.Spec : Prop :=
  ∀ n, (P5262069586041160925.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P3224586128240796831

`lt[A192016(n+1)², n]`
-/

namespace A027883.P3224586128240796831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192016 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A027883.P3224586128240796831

namespace A027883

/-- `lt[A192016(n+1)², n]` -/
def P3224586128240796831.Spec : Prop :=
  ∀ n, (P3224586128240796831.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P11030142160685015750

`lt[A192016(n+2), 1]+1`
-/

namespace A027883.P11030142160685015750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192016 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A027883.P11030142160685015750

namespace A027883

/-- `lt[A192016(n+2), 1]+1` -/
def P11030142160685015750.Spec : Prop :=
  ∀ n, (P11030142160685015750.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P14944445164477614659

`lt[n, A025473(n+2)]+1`
-/

namespace A027883.P14944445164477614659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A027883.P14944445164477614659

namespace A027883

/-- `lt[n, A025473(n+2)]+1` -/
def P14944445164477614659.Spec : Prop :=
  ∀ n, (P14944445164477614659.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P9855491791291745318

`eq[A000007(n), A192016(n+1)]`
-/

namespace A027883.P9855491791291745318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027883.P9855491791291745318

namespace A027883

/-- `eq[A000007(n), A192016(n+1)]` -/
def P9855491791291745318.Spec : Prop :=
  ∀ n, (P9855491791291745318.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P9260239230062977770

`eq[A000038(n), A192016(n+1)]`
-/

namespace A027883.P9260239230062977770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027883.P9260239230062977770

namespace A027883

/-- `eq[A000038(n), A192016(n+1)]` -/
def P9260239230062977770.Spec : Prop :=
  ∀ n, (P9260239230062977770.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P4941862767337216931

`eq[A025473(n+1), A085729(n+1)]`
-/

namespace A027883.P4941862767337216931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027883.P4941862767337216931

namespace A027883

/-- `eq[A025473(n+1), A085729(n+1)]` -/
def P4941862767337216931.Spec : Prop :=
  ∀ n, (P4941862767337216931.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P10247120726910182766

`eq[A081217(n+1), A085729(n+1)]`
-/

namespace A027883.P10247120726910182766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027883.P10247120726910182766

namespace A027883

/-- `eq[A081217(n+1), A085729(n+1)]` -/
def P10247120726910182766.Spec : Prop :=
  ∀ n, (P10247120726910182766.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P4976725254617999078

`eq[A085729(n+1), A156898(n+1)]`
-/

namespace A027883.P4976725254617999078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027883.P4976725254617999078

namespace A027883

/-- `eq[A085729(n+1), A156898(n+1)]` -/
def P4976725254617999078.Spec : Prop :=
  ∀ n, (P4976725254617999078.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P18129676464756274478

`eq[A085730(n+1), A181062(n+1)]`
-/

namespace A027883.P18129676464756274478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027883.P18129676464756274478

namespace A027883

/-- `eq[A085730(n+1), A181062(n+1)]` -/
def P18129676464756274478.Spec : Prop :=
  ∀ n, (P18129676464756274478.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P4824217207823576414

`eq[A181062(n+1), A192133(n+1)]`
-/

namespace A027883.P4824217207823576414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027883.P4824217207823576414

namespace A027883

/-- `eq[A181062(n+1), A192133(n+1)]` -/
def P4824217207823576414.Spec : Prop :=
  ∀ n, (P4824217207823576414.a n : ℤ) = A027883 (n + 1)

end A027883

/-! ## A027883.P8098101833290015818

`A023443(A024620(n+1))`
-/

namespace A027883.P8098101833290015818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A024620 (n + 1)).toNat

end

end A027883.P8098101833290015818

namespace A027883

/-- `A023443(A024620(n+1))` -/
def P8098101833290015818.Spec : Prop :=
  ∀ n, P8098101833290015818.a n = A027883 (n + 1)

end A027883

/-! ## A027883.P11703996393729652420

`A025528(A000040(n+1))`
-/

namespace A027883.P11703996393729652420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A000040 (n + 1)).toNat

end

end A027883.P11703996393729652420

namespace A027883

/-- `A025528(A000040(n+1))` -/
def P11703996393729652420.Spec : Prop :=
  ∀ n, P11703996393729652420.a n = A027883 (n + 1)

end A027883

/-!
# A027886: Primes of form n + (n+1)^2 + (n+2)^3 + (n+3)^4 + (n+4)^5.

The programs for A027886, there is no canonical definition to state claims against.
-/

/-! ## A027886.P4821693737448112345

`A027622(A027830(n+1))`
-/

namespace A027886.P4821693737448112345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027622 (A027830 (n + 1)).toNat

end

end A027886.P4821693737448112345

/-!
# A027887: Possible hands in the card game Skat.

The programs for A027887, there is no canonical definition to state claims against.
-/

/-! ## A027887.P13808740202307197665

`A287362(n+2)+A003357(A287378(n))`
-/

namespace A027887.P13808740202307197665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287362 (n + 2) + A003357 (A287378 n).toNat

end

end A027887.P13808740202307197665

/-! ## A027887.P16459943097355340863

`A287362(n+2)+A003357(A287383(n))`
-/

namespace A027887.P16459943097355340863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287362 (n + 2) + A003357 (A287383 n).toNat

end

end A027887.P16459943097355340863

/-! ## A027887.P439038115953012452

`A287362(n+2)+A262733(A287377(n))`
-/

namespace A027887.P439038115953012452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287362 (n + 2) + A262733 (A287377 n).toNat

end

end A027887.P439038115953012452

/-! ## A027887.P7821669863099693016

`lt[A000972(n+11), A064230(A322630(3*n+4))]`
-/

namespace A027887.P7821669863099693016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000972 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064230 (A322630 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027887.P7821669863099693016

/-! ## A027887.P556902015197749128

`A326533(A045918(n+1))+A320387(A279119(n+1))`
-/

namespace A027887.P556902015197749128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326533 (A045918 (n + 1)).toNat + A320387 (A279119 (n + 1)).toNat

end

end A027887.P556902015197749128

/-!
# A027889: Divisors of 999999999.

The programs for A027889, there is no canonical definition to state claims against.
-/

/-! ## A027889.P14219164767068070733

`∪[9*A197309(n+1), A197309(n+1)]`
-/

namespace A027889.P14219164767068070733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A197309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027889.P14219164767068070733

/-! ## A027889.P14249408772844578070

`A005836(A018335(n+1)+1)`
-/

namespace A027889.P14249408772844578070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A018335 (n + 1) + 1).toNat

end

end A027889.P14249408772844578070

/-! ## A027889.P10004009082042255247

`record[gcd(A014950(n+1), A353624(n))]`
-/

namespace A027889.P10004009082042255247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014950 (n + 1)) (A353624 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027889.P10004009082042255247

/-! ## A027889.P17541331577854057315

`∩[A113522(n+1), A191286(n+1)]`
-/

namespace A027889.P17541331577854057315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027889.P17541331577854057315

/-! ## A027889.P543824862325757131

`∪[3*A018766(n+1), A018766(n+1)]`
-/

namespace A027889.P543824862325757131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027889.P543824862325757131

/-!
# A027890: Divisors of 99999999.

The programs for A027890, there is no canonical definition to state claims against.
-/

/-! ## A027890.P17323366281010589346

`∩[A035267(n+1), A111211(n+1)]`
-/

namespace A027890.P17323366281010589346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027890.P17323366281010589346

/-! ## A027890.P489134896674484393

`∩[A111211(n+1), A204458(A204458(n+1)-n)]`
-/

namespace A027890.P489134896674484393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (A204458 (n + 1) - (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027890.P489134896674484393

/-! ## A027890.P441889015877570336

`∩[A111211(n+1), A204458(n+1)]`
-/

namespace A027890.P441889015877570336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027890.P441889015877570336

/-! ## A027890.P574477053939484456

`∩[A111211(n+1), A247786(n+1)]`
-/

namespace A027890.P574477053939484456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027890.P574477053939484456

/-! ## A027890.P1150771476304243310

`A227245(A111251(n+1))`
-/

namespace A027890.P1150771476304243310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227245 (A111251 (n + 1)).toNat

end

end A027890.P1150771476304243310

/-!
# A027891: Divisors of 9999999.

The programs for A027891, there is no canonical definition to state claims against.
-/

/-! ## A027891.P10417483295191365888

`filter[A106305(n+1), A189718(#)]`
-/

namespace A027891.P10417483295191365888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189718 (f1 j).toNat = 1) n)

end

end A027891.P10417483295191365888

/-! ## A027891.P14600050002247772647

`record[A106612(A106305(n+1))]`
-/

namespace A027891.P14600050002247772647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A106305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027891.P14600050002247772647

/-! ## A027891.P3509066011144633752

`record[A248101(A106305(n+4))]`
-/

namespace A027891.P3509066011144633752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A106305 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027891.P3509066011144633752

/-!
# A027892: Divisors of 999999.

The programs for A027892, there is no canonical definition to state claims against.
-/

/-! ## A027892.P7692031192557845901

`∩[A027897(n+1), A113522(n+1)]`
-/

namespace A027892.P7692031192557845901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027892.P7692031192557845901

/-! ## A027892.P14915079936157095003

`∪[9*A109492(n+1), A109492(n+1)]`
-/

namespace A027892.P14915079936157095003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A109492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027892.P14915079936157095003

/-! ## A027892.P2528701864163246720

`eq[n, gcd(n, A154549(n+9))]`
-/

namespace A027892.P2528701864163246720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A154549 (n + 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027892.P2528701864163246720

/-! ## A027892.P16396967272802651537

`record[A132740(n+1)/A060789(A007732(n+1))]`
-/

namespace A027892.P16396967272802651537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132740 (n + 1) : ℚ) / (A060789 (A007732 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027892.P16396967272802651537

/-! ## A027892.P12057353212563854235

`record[A132740(n+1)/A060789(A054710(n+1))]`
-/

namespace A027892.P12057353212563854235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132740 (n + 1) : ℚ) / (A060789 (A054710 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027892.P12057353212563854235

/-!
# A027893: Divisors of 99999.

The programs for A027893, there is no canonical definition to state claims against.
-/

/-! ## A027893.P11295180374830064965

`record[gcd(n^5+1, n+10)]`
-/

namespace A027893.P11295180374830064965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 5 + 1) (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027893.P11295180374830064965

/-! ## A027893.P16750426719519468589

`∩[A027895(n+1), A111117(n+1)]`
-/

namespace A027893.P16750426719519468589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027893.P16750426719519468589

/-! ## A027893.P7828888071517821575

`∩[A111117(n+1), A200879(n+1)]`
-/

namespace A027893.P7828888071517821575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027893.P7828888071517821575

/-!
# A027894: Divisors of 9999.

The programs for A027894, there is no canonical definition to state claims against.
-/

/-! ## A027894.P2644366553456236902

`filter[A200879(n+1), A136522(#)]`
-/

namespace A027894.P2644366553456236902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A027894.P2644366553456236902

/-! ## A027894.P16422336551693010516

`∩[A027897(n+1), A111211(n+1)]`
-/

namespace A027894.P16422336551693010516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027894.P16422336551693010516

/-! ## A027894.P17028577042660258542

`∩[A062687(n+1), A111211(n+1)]`
-/

namespace A027894.P17028577042660258542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027894.P17028577042660258542

/-! ## A027894.P4761124704899805280

`∩[A080716(n+1), A111211(n+1)]`
-/

namespace A027894.P4761124704899805280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027894.P4761124704899805280

/-! ## A027894.P2364725739948847059

`∩[A027890(n+1), A200879(n+1)]`
-/

namespace A027894.P2364725739948847059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027894.P2364725739948847059

/-!
# A027895: Divisors of 9999999999.

The programs for A027895, there is no canonical definition to state claims against.
-/

/-! ## A027895.P11827589289242074983

`∪[A018282(n+1), A027893(n+2)]`
-/

namespace A027895.P11827589289242074983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027893 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027895.P11827589289242074983

/-! ## A027895.P16361822248412498210

`A200879(lt[A325556(n+3), A271259(n)])`
-/

namespace A027895.P16361822248412498210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325556 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027895.P16361822248412498210

/-! ## A027895.P1590433618813193418

`A200879(lt[A178470(n), A000720(2*n+1)])`
-/

namespace A027895.P1590433618813193418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178470 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A027895.P1590433618813193418

/-! ## A027895.P8666785988715375976

`∪[A200879(A077168(2*(n+1))), A200879(n+1)]`
-/

namespace A027895.P8666785988715375976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (A077168 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027895.P8666785988715375976

/-! ## A027895.P10608668303903479984

`A200879(A363246(n+2))`
-/

namespace A027895.P10608668303903479984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (A363246 (n + 2)).toNat

end

end A027895.P10608668303903479984

/-!
# A027897: Divisors of 10^12 - 1.

The programs for A027897, there is no canonical definition to state claims against.
-/

/-! ## A027897.P17391722229583727005

`∪[9*A197318(n+1), A197318(n+1)]`
-/

namespace A027897.P17391722229583727005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A197318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027897.P17391722229583727005

/-!
# A027899: Divisors of 10^11 + 1.

The programs for A027899, there is no canonical definition to state claims against.
-/

/-! ## A027899.P12280815303585706620

`A003961(A018728(n+1))`
-/

namespace A027899.P12280815303585706620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018728 (n + 1)).toNat

end

end A027899.P12280815303585706620

/-! ## A027899.P1334508228005367117

`A014874(A028980(n+1))`
-/

namespace A027899.P1334508228005367117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014874 (A028980 (n + 1)).toNat

end

end A027899.P1334508228005367117

