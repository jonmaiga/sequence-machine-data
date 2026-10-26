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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A242601: Integers repeated twice in a canonical order.

The programs for A242601, the canonical program `A242601.P8940168550981750895` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242601 has offset 0).

The definition of A242601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242601.P4848062030611669068

`floor((n+2)/4)*(-1)^floor((n+2)/2)`
-/

namespace A242601.P4848062030611669068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 2 : ℚ) / 4⌋ : ℚ) * (-1 : ℚ) ^ (⌊(n + 2 : ℚ) / 2⌋ : ℤ)

end

end A242601.P4848062030611669068

namespace A242601

/-- `floor((n+2)/4)*(-1)^floor((n+2)/2)` -/
def P4848062030611669068.Spec : Prop :=
  ∀ n, P4848062030611669068.a n = (A242601 n : ℚ)

end A242601

/-! ## A242601.P8940168550981750895

`a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=-1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242601

/-- `a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` -/
def P8940168550981750895.Spec : Prop :=
  ∀ n, P8940168550981750895.a n = A242601 n

theorem P8940168550981750895.correct : P8940168550981750895.Spec := by
  intro n
  simp only [A242601]

end A242601

/-! ## A242601.P7204227898524746536

`ceil((and(2, n)-1)*n/4)`
-/

namespace A242601.P7204227898524746536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.land 2 n : ℤ) - 1 : ℚ) * ((n : ℚ) / 4)⌉

end

end A242601.P7204227898524746536

namespace A242601

/-- `ceil((and(2, n)-1)*n/4)` -/
def P7204227898524746536.Spec : Prop :=
  ∀ n, P7204227898524746536.a n = A242601 n

end A242601

/-! ## A242601.P15618487097417768795

`round((n-xor(2, n))*n/8)`
-/

namespace A242601.P15618487097417768795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - (Nat.xor 2 n : ℤ) : ℚ) * ((n : ℚ) / 8))

end

end A242601.P15618487097417768795

namespace A242601

/-- `round((n-xor(2, n))*n/8)` -/
def P15618487097417768795.Spec : Prop :=
  ∀ n, P15618487097417768795.a n = A242601 n

end A242601

/-! ## A242601.P11185815091266918863

`round(1/2-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A242601.P11185815091266918863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  SequenceMachineLib.roundAway ((1 : ℚ) / 2 - (a (n - 2) : ℚ))

end

end A242601.P11185815091266918863

namespace A242601

/-- `round(1/2-a(n-2))` -/
def P11185815091266918863.Spec : Prop :=
  ∀ n, P11185815091266918863.a n = A242601 n

end A242601

/-! ## A242601.P5611230559213843560

`(1-xor(n, 1-n%4))/4`
-/

namespace A242601.P5611230559213843560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - Int.xor (n : ℤ) (1 - ((n % 4 : ℕ) : ℤ)) : ℚ) / 4

end

end A242601.P5611230559213843560

namespace A242601

/-- `(1-xor(n, 1-n%4))/4` -/
def P5611230559213843560.Spec : Prop :=
  ∀ n, P5611230559213843560.a n = (A242601 n : ℚ)

end A242601

/-! ## A242601.P8394254913476556527

`(1-xor(n, 1-and(3, n)))/4`
-/

namespace A242601.P8394254913476556527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - Int.xor (n : ℤ) (1 - (Nat.land 3 n : ℤ)) : ℚ) / 4

end

end A242601.P8394254913476556527

namespace A242601

/-- `(1-xor(n, 1-and(3, n)))/4` -/
def P8394254913476556527.Spec : Prop :=
  ∀ n, P8394254913476556527.a n = (A242601 n : ℚ)

end A242601

/-! ## A242601.P16553828094152568381

`char[or(2, n)]-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A242601.P16553828094152568381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2)

end

end A242601.P16553828094152568381

namespace A242601

/-- `char[or(2, n)]-a(n-2)` -/
def P16553828094152568381.Spec : Prop :=
  ∀ n, P16553828094152568381.a n = A242601 n

end A242601

/-! ## A242601.P4324424550899065619

`and(2, n)/2-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A242601.P4324424550899065619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Nat.land 2 n : ℚ) / 2 - a (n - 2)

end

end A242601.P4324424550899065619

namespace A242601

/-- `and(2, n)/2-a(n-2)` -/
def P4324424550899065619.Spec : Prop :=
  ∀ n, P4324424550899065619.a n = (A242601 n : ℚ)

end A242601

/-! ## A242601.P1134061854605200856

`and(1, C(n, 2))-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A242601.P1134061854605200856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Nat.land 1 (Nat.choose n 2) : ℤ) - a (n - 2)

end

end A242601.P1134061854605200856

namespace A242601

/-- `and(1, C(n, 2))-a(n-2)` -/
def P1134061854605200856.Spec : Prop :=
  ∀ n, P1134061854605200856.a n = A242601 n

end A242601

/-! ## A242601.P12207740073903258352

`a(and(2, n))-a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A242601.P12207740073903258352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (Nat.land 2 n) - a (n - 2)

end

end A242601.P12207740073903258352

namespace A242601

/-- `a(and(2, n))-a(n-2)` -/
def P12207740073903258352.Spec : Prop :=
  ∀ n, P12207740073903258352.a n = A242601 n

end A242601

/-! ## A242601.P15978973945967427297

`ceil(n/(2*n-2*xor(2, n)))`
-/

namespace A242601.P15978973945967427297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((2 * n : ℤ) - (2 * Nat.xor 2 n : ℤ) : ℚ)⌉

end

end A242601.P15978973945967427297

namespace A242601

/-- `ceil(n/(2*n-2*xor(2, n)))` -/
def P15978973945967427297.Spec : Prop :=
  ∀ n, P15978973945967427297.a n = A242601 n

end A242601

/-! ## A242601.P14765565771643155189

`∑[-a(n-2)]-a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A242601.P14765565771643155189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  -f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A242601.P14765565771643155189

namespace A242601

/-- `∑[-a(n-2)]-a(n-2)` -/
def P14765565771643155189.Spec : Prop :=
  ∀ n, P14765565771643155189.a n = A242601 n

end A242601

/-! ## A242601.P10549705941425216631

`floor((n-(n+1)*a(n-2))/n)` with `a(0)=0, a(1)=0`
-/

namespace A242601.P10549705941425216631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊((n : ℤ) - (n + 1 : ℤ) * a (n - 2) : ℚ) / (n : ℚ)⌋

end

end A242601.P10549705941425216631

namespace A242601

/-- `floor((n-(n+1)*a(n-2))/n)` -/
def P10549705941425216631.Spec : Prop :=
  ∀ n, P10549705941425216631.a n = A242601 n

end A242601

/-! ## A242601.P11829927326030574972

`a(n-4)+(-1)^∑[n+1]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A242601.P11829927326030574972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  a (n - 4) + (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242601.P11829927326030574972

namespace A242601

/-- `a(n-4)+(-1)^∑[n+1]` -/
def P11829927326030574972.Spec : Prop :=
  ∀ n, P11829927326030574972.a n = A242601 n

end A242601

/-! ## A242601.P13204210228709386056

`floor(1-a(n-2)/n-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A242601.P13204210228709386056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊1 - (a (n - 2) : ℚ) / (n : ℚ) - (a (n - 2) : ℚ)⌋

end

end A242601.P13204210228709386056

namespace A242601

/-- `floor(1-a(n-2)/n-a(n-2))` -/
def P13204210228709386056.Spec : Prop :=
  ∀ n, P13204210228709386056.a n = A242601 n

end A242601

/-! ## A242601.P2132060792292466919

`Δ[n-2-a(n-2)]-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A242601.P2132060792292466919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (n : ℤ) - 2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 2)

end

end A242601.P2132060792292466919

namespace A242601

/-- `Δ[n-2-a(n-2)]-a(n-2)` -/
def P2132060792292466919.Spec : Prop :=
  ∀ n, P2132060792292466919.a n = A242601 n

end A242601

/-! ## A242601.P947129066442921871

`A001057(floor(n/2))`
-/

namespace A242601.P947129066442921871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 ⌊(n : ℚ) / 2⌋.toNat

end

end A242601.P947129066442921871

namespace A242601

/-- `A001057(floor(n/2))` -/
def P947129066442921871.Spec : Prop :=
  ∀ n, P947129066442921871.a n = A242601 n

end A242601

/-! ## A242601.P1673205526829165038

`∑[A186813(n)-n]`
-/

namespace A242601.P1673205526829165038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242601.P1673205526829165038

namespace A242601

/-- `∑[A186813(n)-n]` -/
def P1673205526829165038.Spec : Prop :=
  ∀ n, P1673205526829165038.a n = A242601 n

end A242601

/-! ## A242601.P273115927508338849

`(1-A127630(n))/4`
-/

namespace A242601.P273115927508338849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A127630 n : ℚ) / 4

end

end A242601.P273115927508338849

namespace A242601

/-- `(1-A127630(n))/4` -/
def P273115927508338849.Spec : Prop :=
  ∀ n, P273115927508338849.a n = (A242601 n : ℚ)

end A242601

/-!
# A242602: Integers repeated thrice in a canonical order.

The programs for A242602, the canonical program `A242602.P12531106204606492400` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242602 has offset 0).

The definition of A242602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242602.P13218008417833223785

`floor((n+3)/6)*(-1)^floor((n+3)/3)`
-/

namespace A242602.P13218008417833223785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 3 : ℚ) / 6⌋ : ℚ) * (-1 : ℚ) ^ (⌊(n + 3 : ℚ) / 3⌋ : ℤ)

end

end A242602.P13218008417833223785

namespace A242602

/-- `floor((n+3)/6)*(-1)^floor((n+3)/3)` -/
def P13218008417833223785.Spec : Prop :=
  ∀ n, P13218008417833223785.a n = (A242602 n : ℚ)

end A242602

/-! ## A242602.P12531106204606492400

`a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=-1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242602

/-- `a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)+a(n-7)` -/
def P12531106204606492400.Spec : Prop :=
  ∀ n, P12531106204606492400.a n = A242602 n

theorem P12531106204606492400.correct : P12531106204606492400.Spec := by
  intro n
  simp only [A242602]

end A242602

/-! ## A242602.P11334677710400559894

`Δ[n-3-a(n-3)]-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A242602.P11334677710400559894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  (n : ℤ) - 3 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 3)

end

end A242602.P11334677710400559894

namespace A242602

/-- `Δ[n-3-a(n-3)]-a(n-3)` -/
def P11334677710400559894.Spec : Prop :=
  ∀ n, P11334677710400559894.a n = A242602 n

end A242602

/-! ## A242602.P2885319469145815755

`A001057(floor(n/3))`
-/

namespace A242602.P2885319469145815755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 ⌊(n : ℚ) / 3⌋.toNat

end

end A242602.P2885319469145815755

namespace A242602

/-- `A001057(floor(n/3))` -/
def P2885319469145815755.Spec : Prop :=
  ∀ n, P2885319469145815755.a n = A242602 n

end A242602

/-! ## A242602.P5468186315628475128

`A242601(floor(2*n/3))`
-/

namespace A242602.P5468186315628475128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242601 ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A242602.P5468186315628475128

namespace A242602

/-- `A242601(floor(2*n/3))` -/
def P5468186315628475128.Spec : Prop :=
  ∀ n, P5468186315628475128.a n = A242602 n

end A242602

/-! ## A242602.P4457646689533100669

`A014682(floor(n/3))-floor(n/3)`
-/

namespace A242602.P4457646689533100669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ⌊(n : ℚ) / 3⌋.toNat - ⌊(n : ℚ) / 3⌋

end

end A242602.P4457646689533100669

namespace A242602

/-- `A014682(floor(n/3))-floor(n/3)` -/
def P4457646689533100669.Spec : Prop :=
  ∀ n, P4457646689533100669.a n = A242602 n

end A242602

/-! ## A242602.P545946093200238163

`floor(n/3)-A071045(floor(n/3))`
-/

namespace A242602.P545946093200238163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - A071045 ⌊(n : ℚ) / 3⌋.toNat

end

end A242602.P545946093200238163

namespace A242602

/-- `floor(n/3)-A071045(floor(n/3))` -/
def P545946093200238163.Spec : Prop :=
  ∀ n, P545946093200238163.a n = A242602 n

end A242602

/-! ## A242602.P10469697585870244303

`A001057(n)-∑[A255368(n)]`
-/

namespace A242602.P10469697585870244303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242602.P10469697585870244303

namespace A242602

/-- `A001057(n)-∑[A255368(n)]` -/
def P10469697585870244303.Spec : Prop :=
  ∀ n, P10469697585870244303.a n = A242602 n

end A242602

/-! ## A242602.P13871290909293807089

`1-A097140(A008620(n)+1)`
-/

namespace A242602.P13871290909293807089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A097140 (A008620 n + 1).toNat

end

end A242602.P13871290909293807089

namespace A242602

/-- `1-A097140(A008620(n)+1)` -/
def P13871290909293807089.Spec : Prop :=
  ∀ n, P13871290909293807089.a n = A242602 n

end A242602

/-! ## A242602.P11501477335591346271

`A001057(A002264(n))+C(2, A000203(n+2))`
-/

namespace A242602.P11501477335591346271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A002264 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A242602.P11501477335591346271

namespace A242602

/-- `A001057(A002264(n))+C(2, A000203(n+2))` -/
def P11501477335591346271.Spec : Prop :=
  ∀ n, P11501477335591346271.a n = A242602 n

end A242602

/-! ## A242602.P12292982196815649553

`A010872(3*n)-A130472(comp[or(3, n)]-n)`
-/

namespace A242602.P12292982196815649553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (3 * n) - A130472 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A242602.P12292982196815649553

namespace A242602

/-- `A010872(3*n)-A130472(comp[or(3, n)]-n)` -/
def P12292982196815649553.Spec : Prop :=
  ∀ n, P12292982196815649553.a n = A242602 n

end A242602

/-! ## A242602.P7294229055852344636

`A010872(3*n)-A130472((n-n%3)/3)`
-/

namespace A242602.P7294229055852344636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (3 * n) - A130472 (SequenceMachineLib.roundAway (((n : ℤ) - ((n % 3 : ℕ) : ℤ) : ℚ) / 3)).toNat

end

end A242602.P7294229055852344636

namespace A242602

/-- `A010872(3*n)-A130472((n-n%3)/3)` -/
def P7294229055852344636.Spec : Prop :=
  ∀ n, P7294229055852344636.a n = A242602 n

end A242602

/-! ## A242602.P8288704286500704517

`A117448(n-n%3+1)`
-/

namespace A242602.P8288704286500704517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 ((n : ℤ) - ((n % 3 : ℕ) : ℤ) + 1).toNat

end

end A242602.P8288704286500704517

namespace A242602

/-- `A117448(n-n%3+1)` -/
def P8288704286500704517.Spec : Prop :=
  ∀ n, P8288704286500704517.a n = A242602 n

end A242602

/-! ## A242602.P15195687480151897229

`A117448(A128834(2*n+1)+n)`
-/

namespace A242602.P15195687480151897229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (A128834 (2 * n + 1) + (n : ℤ)).toNat

end

end A242602.P15195687480151897229

namespace A242602

/-- `A117448(A128834(2*n+1)+n)` -/
def P15195687480151897229.Spec : Prop :=
  ∀ n, P15195687480151897229.a n = A242602 n

end A242602

/-! ## A242602.P3482316047536269931

`A239473(A000124(floor(n/3)))`
-/

namespace A242602.P3482316047536269931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (A000124 ⌊(n : ℚ) / 3⌋.toNat).toNat

end

end A242602.P3482316047536269931

namespace A242602

/-- `A239473(A000124(floor(n/3)))` -/
def P3482316047536269931.Spec : Prop :=
  ∀ n, P3482316047536269931.a n = A242602 n

end A242602

/-! ## A242602.P17243768604030722417

`A274923(A075561(n+1))`
-/

namespace A242602.P17243768604030722417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A075561 (n + 1)).toNat

end

end A242602.P17243768604030722417

namespace A242602

/-- `A274923(A075561(n+1))` -/
def P17243768604030722417.Spec : Prop :=
  ∀ n, P17243768604030722417.a n = A242602 n

end A242602

/-! ## A242602.P9137393043779354055

`A381233(A389316(n))`
-/

namespace A242602.P9137393043779354055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381233 (A389316 n).toNat

end

end A242602.P9137393043779354055

namespace A242602

/-- `A381233(A389316(n))` -/
def P9137393043779354055.Spec : Prop :=
  ∀ n, P9137393043779354055.a n = A242602 n

end A242602

/-!
# A242603: Largest divisor of n not divisible by 7. Remove factors 7 from n.

The programs for A242603, the canonical program `A242603.P13537598340442924408` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242603 has offset 1).

The definition of A242603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242603.P13537598340442924408

`(n+1)/A268354(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A242603

/-- `(n+1)/A268354(n+1)` -/
def P13537598340442924408.Spec : Prop :=
  ∀ n, P13537598340442924408.a n = (A242603 (n + 1) : ℚ)

end A242603

/-! ## A242603.P5527089124543769829

`(n+1)/7^val(n+1, 7)`
-/

namespace A242603.P5527089124543769829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ)

end

end A242603.P5527089124543769829

namespace A242603

/-- `(n+1)/7^val(n+1, 7)` -/
def P5527089124543769829.Spec : Prop :=
  ∀ n, P5527089124543769829.a n = (A242603 (n + 1) : ℚ)

end A242603

/-! ## A242603.P6125357062924116420

`gcd(n+1, A359099(n+1))`
-/

namespace A242603.P6125357062924116420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A359099 (n + 1))

end

end A242603.P6125357062924116420

namespace A242603

/-- `gcd(n+1, A359099(n+1))` -/
def P6125357062924116420.Spec : Prop :=
  ∀ n, (P6125357062924116420.a n : ℤ) = A242603 (n + 1)

end A242603

/-! ## A242603.P7810002928706898629

`A359099(n+1)/A088842(n+1)`
-/

namespace A242603.P7810002928706898629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359099 (n + 1) : ℚ) / (A088842 (n + 1) : ℚ)

end

end A242603.P7810002928706898629

namespace A242603

/-- `A359099(n+1)/A088842(n+1)` -/
def P7810002928706898629.Spec : Prop :=
  ∀ n, P7810002928706898629.a n = (A242603 (n + 1) : ℚ)

end A242603

/-! ## A242603.P10882889807618521437

`(n+1)/gcd(A000265(n+1), A017310(n))`
-/

namespace A242603.P10882889807618521437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000265 (n + 1)) (A017310 n) : ℚ)

end

end A242603.P10882889807618521437

namespace A242603

/-- `(n+1)/gcd(A000265(n+1), A017310(n))` -/
def P10882889807618521437.Spec : Prop :=
  ∀ n, P10882889807618521437.a n = (A242603 (n + 1) : ℚ)

end A242603

/-! ## A242603.P6451359522481589306

`A030106(A030106(n+1))`
-/

namespace A242603.P6451359522481589306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (A030106 (n + 1)).toNat

end

end A242603.P6451359522481589306

namespace A242603

/-- `A030106(A030106(n+1))` -/
def P6451359522481589306.Spec : Prop :=
  ∀ n, P6451359522481589306.a n = A242603 (n + 1)

end A242603

/-! ## A242603.P6652069827683552369

`gcd(n+1, A017713(n)²)`
-/

namespace A242603.P6652069827683552369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A017713 (n + 49) ^ 2)

end

end A242603.P6652069827683552369

namespace A242603

/-- `gcd(n+1, A017713(n)²)` -/
def P6652069827683552369.Spec : Prop :=
  ∀ n, (P6652069827683552369.a n : ℤ) = A242603 (n + 1)

end A242603

/-! ## A242603.P15222910707470683245

`A370567(n+1)/A370182(A370567(n+1))`
-/

namespace A242603.P15222910707470683245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370567 (n + 1) : ℚ) / (A370182 (A370567 (n + 1)).toNat : ℚ)

end

end A242603.P15222910707470683245

namespace A242603

/-- `A370567(n+1)/A370182(A370567(n+1))` -/
def P15222910707470683245.Spec : Prop :=
  ∀ n, P15222910707470683245.a n = (A242603 (n + 1) : ℚ)

end A242603

/-! ## A242603.P8976362217600742588

`A106608(A106608(n+1)²)/A106608(n+1)`
-/

namespace A242603.P8976362217600742588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106608 (A106608 (n + 1) ^ 2).toNat : ℚ) / (A106608 (n + 1) : ℚ)

end

end A242603.P8976362217600742588

namespace A242603

/-- `A106608(A106608(n+1)²)/A106608(n+1)` -/
def P8976362217600742588.Spec : Prop :=
  ∀ n, P8976362217600742588.a n = (A242603 (n + 1) : ℚ)

end A242603

/-! ## A242603.P3860470211938344262

`A001222(A130903(n+2))*A106608(A106608(n+1))`
-/

namespace A242603.P3860470211938344262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A130903 (n + 2)).toNat * A106608 (A106608 (n + 1)).toNat

end

end A242603.P3860470211938344262

namespace A242603

/-- `A001222(A130903(n+2))*A106608(A106608(n+1))` -/
def P3860470211938344262.Spec : Prop :=
  ∀ n, P3860470211938344262.a n = A242603 (n + 1)

end A242603

/-!
# A242604: a(n) = (n - 1)*(n^3 + 1) = n^4 - n^3 + n - 1, for n >= 1.

The programs for A242604, the canonical program `A242604.P1637914560538735608` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242604 has offset 1).

The definition of A242604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*((n+1)^3+1)` (program `A242604.P1637914560538735608`, by `A242604.P1637914560538735608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242604.P1637914560538735608

`n*((n+1)^3+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242604

/-- `n*((n+1)^3+1)` -/
def P1637914560538735608.Spec : Prop :=
  ∀ n, (P1637914560538735608.a n : ℤ) = A242604 (n + 1)

theorem P1637914560538735608.correct : P1637914560538735608.Spec := by
  intro n
  simp only [A242604, Nat.add_sub_cancel]

end A242604

/-! ## A242604.P11968895276806537408

`(n+1)^4-(n+1)^3+n+1-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242604.P11968895276806537408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - ((n + 1) ^ 3 : ℤ) + (n + 1 : ℤ) - 1

end

end A242604.P11968895276806537408

namespace A242604

/-- `(n+1)^4-(n+1)^3+n+1-1` -/
def P11968895276806537408.Spec : Prop :=
  ∀ n, P11968895276806537408.a n = A242604 (n + 1)

theorem P11968895276806537408.correct : P11968895276806537408.Spec := by
  intro n
  simp only [A242604, Nat.add_sub_cancel, A242604.P11968895276806537408.a, A242604.P1637914560538735608.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A242604

/-! ## A242604.P572037121601607063

`A037251(n+1)/(n+1)^3`
-/

namespace A242604.P572037121601607063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037251 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A242604.P572037121601607063

namespace A242604

/-- `A037251(n+1)/(n+1)^3` -/
def P572037121601607063.Spec : Prop :=
  ∀ n, P572037121601607063.a n = (A242604 (n + 1) : ℚ)

theorem P572037121601607063.correct : P572037121601607063.Spec := by
  intro n
  simp only [A242604, Nat.add_sub_cancel, A242604.P572037121601607063.a, A242604.P1637914560538735608.a, A037251, A037251.P2363510451119139966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242604

/-! ## A242604.P8871900235381953252

`A326128(A309372(n+1))`
-/

namespace A242604.P8871900235381953252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A309372 (n + 1)).toNat

end

end A242604.P8871900235381953252

namespace A242604

/-- `A326128(A309372(n+1))` -/
def P8871900235381953252.Spec : Prop :=
  ∀ n, P8871900235381953252.a n = A242604 (n + 1)

end A242604

/-!
# A242605: Start of a triple of consecutive squarefree numbers which are all semiprimes.

The programs for A242605, there is no canonical definition to state claims against.
-/

/-! ## A242605.P4928061038251225156

`∩[A045932(n+1), A108372(n+1)]`
-/

namespace A242605.P4928061038251225156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242605.P4928061038251225156

/-!
# A242609: Expansion of phi(-q) * phi(q^8) in powers of q where phi() is a Ramanujan theta function.

The programs for A242609, the canonical program `A242609.P7089831912519252597` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242609 has offset 0).

The definition of A242609 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226225, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A242609.P7089831912519252597

`(-1)^n*A226225(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A242609

/-- `(-1)^n*A226225(n)` -/
def P7089831912519252597.Spec : Prop :=
  ∀ n, P7089831912519252597.a n = A242609 n

theorem P7089831912519252597.correct : P7089831912519252597.Spec := by
  intro n
  simp only [A242609]

end A242609

/-! ## A242609.P18329479843304111716

`A082564(n)*A133872(n)`
-/

namespace A242609.P18329479843304111716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 n * A133872 n

end

end A242609.P18329479843304111716

namespace A242609

/-- `A082564(n)*A133872(n)` -/
def P18329479843304111716.Spec : Prop :=
  ∀ n, P18329479843304111716.a n = A242609 n

end A242609

/-! ## A242609.P2209627206993526277

`A033715(n)*A219977(n)`
-/

namespace A242609.P2209627206993526277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A219977 n

end

end A242609.P2209627206993526277

namespace A242609

/-- `A033715(n)*A219977(n)` -/
def P2209627206993526277.Spec : Prop :=
  ∀ n, P2209627206993526277.a n = A242609 n

end A242609

/-! ## A242609.P16759448424410931693

`A133692(n)*A133872(n)`
-/

namespace A242609.P16759448424410931693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 n * A133872 n

end

end A242609.P16759448424410931693

namespace A242609

/-- `A133692(n)*A133872(n)` -/
def P16759448424410931693.Spec : Prop :=
  ∀ n, P16759448424410931693.a n = A242609 n

end A242609

/-! ## A242609.P5746344869270037677

`A139093(n)*A219977(n)`
-/

namespace A242609.P5746344869270037677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 n * A219977 n

end

end A242609.P5746344869270037677

namespace A242609

/-- `A139093(n)*A219977(n)` -/
def P5746344869270037677.Spec : Prop :=
  ∀ n, P5746344869270037677.a n = A242609 n

end A242609

/-! ## A242609.P16977627257236079919

`A219977(n)²*A082564(n)`
-/

namespace A242609.P16977627257236079919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n ^ 2 * A082564 n

end

end A242609.P16977627257236079919

namespace A242609

/-- `A219977(n)²*A082564(n)` -/
def P16977627257236079919.Spec : Prop :=
  ∀ n, P16977627257236079919.a n = A242609 n

end A242609

/-! ## A242609.P12930315461432285737

`A219977(n)²*A133692(n)`
-/

namespace A242609.P12930315461432285737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n ^ 2 * A133692 n

end

end A242609.P12930315461432285737

namespace A242609

/-- `A219977(n)²*A133692(n)` -/
def P12930315461432285737.Spec : Prop :=
  ∀ n, P12930315461432285737.a n = A242609 n

end A242609

/-! ## A242609.P7880491364518517749

`∑[A056594(n)]*A133692(n)`
-/

namespace A242609.P7880491364518517749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A133692 n

end

end A242609.P7880491364518517749

namespace A242609

/-- `∑[A056594(n)]*A133692(n)` -/
def P7880491364518517749.Spec : Prop :=
  ∀ n, P7880491364518517749.a n = A242609 n

end A242609

/-! ## A242609.P7845154885829240407

`A129438(n)*A230074(n+1)`
-/

namespace A242609.P7845154885829240407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 n * A230074 (n + 1)

end

end A242609.P7845154885829240407

namespace A242609

/-- `A129438(n)*A230074(n+1)` -/
def P7845154885829240407.Spec : Prop :=
  ∀ n, P7845154885829240407.a n = A242609 n

end A242609

/-! ## A242609.P5589547358104441168

`A226225(n)*A309873(n+1)`
-/

namespace A242609.P5589547358104441168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 n * A309873 (n + 1)

end

end A242609.P5589547358104441168

namespace A242609

/-- `A226225(n)*A309873(n+1)` -/
def P5589547358104441168.Spec : Prop :=
  ∀ n, P5589547358104441168.a n = A242609 n

end A242609

/-! ## A242609.P12872800460075866535

`A059841(A003188(n+3))*A082564(n)`
-/

namespace A242609.P12872800460075866535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A003188 (n + 3)).toNat * A082564 n

end

end A242609.P12872800460075866535

namespace A242609

/-- `A059841(A003188(n+3))*A082564(n)` -/
def P12872800460075866535.Spec : Prop :=
  ∀ n, P12872800460075866535.a n = A242609 n

end A242609

/-! ## A242609.P13432525411634634150

`(A082564(n)+A082564(A266491(n)))/2`
-/

namespace A242609.P13432525411634634150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082564 n + A082564 (A266491 n).toNat : ℚ) / 2

end

end A242609.P13432525411634634150

namespace A242609

/-- `(A082564(n)+A082564(A266491(n)))/2` -/
def P13432525411634634150.Spec : Prop :=
  ∀ n, P13432525411634634150.a n = (A242609 n : ℚ)

end A242609

/-! ## A242609.P8183846591637727637

`A133872(n)*A139093(2*n)`
-/

namespace A242609.P8183846591637727637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A139093 (2 * n)

end

end A242609.P8183846591637727637

namespace A242609

/-- `A133872(n)*A139093(2*n)` -/
def P8183846591637727637.Spec : Prop :=
  ∀ n, P8183846591637727637.a n = A242609 n

end A242609

/-! ## A242609.P8901007161826927498

`A082564(A047481(n+1))`
-/

namespace A242609.P8901007161826927498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 (A047481 (n + 1)).toNat

end

end A242609.P8901007161826927498

namespace A242609

/-- `A082564(A047481(n+1))` -/
def P8901007161826927498.Spec : Prop :=
  ∀ n, P8901007161826927498.a n = A242609 n

end A242609

/-! ## A242609.P4644260712935321265

`A219977(n)*A226240(n)`
-/

namespace A242609.P4644260712935321265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A226240 n

end

end A242609.P4644260712935321265

namespace A242609

/-- `A219977(n)*A226240(n)` -/
def P4644260712935321265.Spec : Prop :=
  ∀ n, P4644260712935321265.a n = A242609 n

end A242609

/-! ## A242609.P7927778427878065899

`A112299(n+1)*A226240(n)`
-/

namespace A242609.P7927778427878065899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A226240 n

end

end A242609.P7927778427878065899

namespace A242609

/-- `A112299(n+1)*A226240(n)` -/
def P7927778427878065899.Spec : Prop :=
  ∀ n, P7927778427878065899.a n = A242609 n

end A242609

/-!
# A242616: Decimal expansion of lim_(n->infinity) ((Sum_(k=1..n) 1/sqrt(k)) - (Integral_{x=1..n} 1/sqrt(x))), a generalized Euler constant which evaluates to zeta(1/2) + 2.

The programs for A242616, there is no canonical definition to state claims against.
-/

/-! ## A242616.P4838138933968158874

`9-A059750(n+1)`
-/

namespace A242616.P4838138933968158874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A059750 (n + 1 + 1)

end

end A242616.P4838138933968158874

/-!
# A242618: Number T(n,k) of partitions of n, where k is the difference between the number of odd parts and the number of even parts, both counted without multiplicity; triangle T(n,k), n>=0, read by rows.

The programs for A242618, there is no canonical definition to state claims against.
-/

/-! ## A242618.P16112096642583953248

`A275948(A000032(n)*A054715(2*(n+2)))`
-/

namespace A242618.P16112096642583953248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 (A000032 n * A054715 (2 * (n + 2))).toNat

end

end A242618.P16112096642583953248

/-!
# A242622: a(n) = number of numbers with digit sum n, not greater than the n-th repunit (cf. A052222).

The programs for A242622, there is no canonical definition to state claims against.
-/

/-! ## A242622.P1412159934089424244

`A007947(A279561(n)-A066568(n))`
-/

namespace A242622.P1412159934089424244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A279561 n - A066568 n).toNat

end

end A242622.P1412159934089424244

/-! ## A242622.P1528844295655418596

`A279561(n)-A056965(n)*A131843(A080923(n))`
-/

namespace A242622.P1528844295655418596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 n - A056965 n * A131843 (A080923 n).toNat

end

end A242622.P1528844295655418596

/-!
# A242625: Primes p such that p + prime(p) is a square.

The programs for A242625, there is no canonical definition to state claims against.
-/

/-! ## A242625.P9471776578812146466

`p?[A064371(n+1)]`
-/

namespace A242625.P9471776578812146466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242625.P9471776578812146466

/-! ## A242625.P13310132111928283763

`record[p?[A064371(A052938(n))]]`
-/

namespace A242625.P13310132111928283763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064371 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242625.P13310132111928283763

/-! ## A242625.P110585940962105068

`p?[record[A064371(A133310(n))]]`
-/

namespace A242625.P110585940962105068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064371 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242625.P110585940962105068

/-! ## A242625.P2971707336756637765

`p?[record[A064371(A286551(n))]]`
-/

namespace A242625.P2971707336756637765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064371 (A286551 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242625.P2971707336756637765

/-! ## A242625.P10849803179284433880

`p?[record[A064371(A291769(n))]]`
-/

namespace A242625.P10849803179284433880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064371 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242625.P10849803179284433880

/-!
# A242629: Number of n-length words w over a 6-ary alphabet {a_1,...,a_6} such that w contains never more than j consecutive letters a_j (for 1<=j<=6).

The programs for A242629, there is no canonical definition to state claims against.
-/

/-! ## A242629.P1779615923924385709

`A242464(eq[6, A025581(n)])`
-/

namespace A242629.P1779615923924385709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242629.P1779615923924385709

/-! ## A242629.P811359781180714691

`A242464(eq[7, A193739(n)])`
-/

namespace A242629.P811359781180714691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242629.P811359781180714691

/-! ## A242629.P4056466202826832603

`A242464(A034856(n+6)-5)`
-/

namespace A242629.P4056466202826832603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A034856 (n + 6) - 5).toNat

end

end A242629.P4056466202826832603

/-! ## A242629.P6567095349638454081

`A242464(A000096(n+6)-6)`
-/

namespace A242629.P6567095349638454081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A000096 (n + 6) - 6).toNat

end

end A242629.P6567095349638454081

/-! ## A242629.P9763765966744656837

`A242464(A000217(n+7)-7)`
-/

namespace A242629.P9763765966744656837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A000217 (n + 7) - 7).toNat

end

end A242629.P9763765966744656837

/-! ## A242629.P3836029103327154324

`A242464(eq[7, A004736(n+1)])`
-/

namespace A242629.P3836029103327154324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242629.P3836029103327154324

/-! ## A242629.P7224531616003581824

`record[A242464(∑[A020705(n)]-1)]`
-/

namespace A242629.P7224531616003581824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242629.P7224531616003581824

/-! ## A242629.P5671857822355791469

`record[A242464(abs(A046691(n)+n))]`
-/

namespace A242629.P5671857822355791469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 |A046691 n + (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242629.P5671857822355791469

/-! ## A242629.P15345103787800993499

`A242464(Δ[A023551(n+2)]-1)`
-/

namespace A242629.P15345103787800993499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (f1 (n + 1) - f1 n - 1).toNat

end

end A242629.P15345103787800993499

/-! ## A242629.P15649754151407414899

`A242464(Δ[A026054(n+4)]-1)`
-/

namespace A242629.P15649754151407414899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (f1 (n + 1) - f1 n - 1).toNat

end

end A242629.P15649754151407414899

/-!
# A242630: Number of n-length words w over a 7-ary alphabet {a_1,...,a_7} such that w contains never more than j consecutive letters a_j (for 1<=j<=7).

The programs for A242630, there is no canonical definition to state claims against.
-/

/-! ## A242630.P13277656999883500526

`A242464(eq[7, A025581(n)])`
-/

namespace A242630.P13277656999883500526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242630.P13277656999883500526

/-! ## A242630.P10149968763003269965

`A242464(eq[8, A193739(n)])`
-/

namespace A242630.P10149968763003269965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242630.P10149968763003269965

/-! ## A242630.P18060513614698082483

`A242464(eq[15, A099375(n)])`
-/

namespace A242630.P18060513614698082483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242630.P18060513614698082483

/-! ## A242630.P682655247781907842

`A242464(A000217(n+8)-8)`
-/

namespace A242630.P682655247781907842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A000217 (n + 8) - 8).toNat

end

end A242630.P682655247781907842

/-! ## A242630.P14337439864089283919

`A242464(eq[8, A004736(n+1)])`
-/

namespace A242630.P14337439864089283919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242630.P14337439864089283919

/-!
# A242631: Number of n-length words w over an 8-ary alphabet {a_1,...,a_8} such that w contains never more than j consecutive letters a_j (for 1<=j<=8).

The programs for A242631, there is no canonical definition to state claims against.
-/

/-! ## A242631.P5905525314840637052

`A242464(eq[8, A025581(n)])`
-/

namespace A242631.P5905525314840637052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242631.P5905525314840637052

/-! ## A242631.P1265616502266153340

`A242464(A155212(n+5)-1)`
-/

namespace A242631.P1265616502266153340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A155212 (n + 5) - 1).toNat

end

end A242631.P1265616502266153340

/-! ## A242631.P9070222947582363170

`A242464(A052905(n+6)-4)`
-/

namespace A242631.P9070222947582363170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A052905 (n + 6) - 4).toNat

end

end A242631.P9070222947582363170

/-! ## A242631.P3164607126656762650

`A242464(A000217(n+9)-9)`
-/

namespace A242631.P3164607126656762650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A000217 (n + 9) - 9).toNat

end

end A242631.P3164607126656762650

/-! ## A242631.P14028052725214791608

`A242464(A000096(n+7)+n+1)`
-/

namespace A242631.P14028052725214791608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A242631.P14028052725214791608

/-!
# A242632: Number of n-length words w over a 9-ary alphabet {a_1,...,a_9} such that w contains never more than j consecutive letters a_j (for 1<=j<=9).

The programs for A242632, there is no canonical definition to state claims against.
-/

/-! ## A242632.P16736409809377334018

`A242464(A056000(n+6))`
-/

namespace A242632.P16736409809377334018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A056000 (n + 6)).toNat

end

end A242632.P16736409809377334018

/-! ## A242632.P18160329823660355289

`A242464(eq[8, A116598(n)])`
-/

namespace A242632.P18160329823660355289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242632.P18160329823660355289

/-! ## A242632.P3816259065659594824

`A242464(eq[9, A025581(n)])`
-/

namespace A242632.P3816259065659594824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242632.P3816259065659594824

/-! ## A242632.P1489143871724588606

`A242464(eq[10, A193739(n)])`
-/

namespace A242632.P1489143871724588606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242632.P1489143871724588606

/-! ## A242632.P4841319599871393721

`A242464(eq[10, A195663(n)])`
-/

namespace A242632.P4841319599871393721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242632.P4841319599871393721

/-! ## A242632.P5445409968623862102

`A242464(eq[10, A004736(n+1)])`
-/

namespace A242632.P5445409968623862102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242632.P5445409968623862102

/-!
# A242633: Number of n-length words w over a 10-ary alphabet {a_1,...,a_10} such that w contains never more than j consecutive letters a_j (for 1<=j<=10).

The programs for A242633, there is no canonical definition to state claims against.
-/

/-! ## A242633.P2688202955446014604

`A242464(eq[10, A025581(n)])`
-/

namespace A242633.P2688202955446014604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242633.P2688202955446014604

/-! ## A242633.P2337945780950587110

`A242464(A052905(n+8)-6)`
-/

namespace A242633.P2337945780950587110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A052905 (n + 8) - 6).toNat

end

end A242633.P2337945780950587110

/-! ## A242633.P10346731077901863418

`A242464(A055998(n+9)-8)`
-/

namespace A242633.P10346731077901863418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A055998 (n + 9) - 8).toNat

end

end A242633.P10346731077901863418

/-! ## A242633.P9805529977644962469

`A242464(A161680(n+12)-11)`
-/

namespace A242633.P9805529977644962469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A161680 (n + 12) - 11).toNat

end

end A242633.P9805529977644962469

/-! ## A242633.P17546091728297782958

`A242464(eq[11, A004736(n+1)])`
-/

namespace A242633.P17546091728297782958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242633.P17546091728297782958

/-! ## A242633.P15078374922640889304

`A242464(A004273(n+1)+A000096(n+8)+10)`
-/

namespace A242633.P15078374922640889304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A004273 (n + 1) + (A000096 (n + 8) + 10)).toNat

end

end A242633.P15078374922640889304

/-!
# A242634: G.f. A(x) satisfies A(x) = A(x^2) / (1 - x) + x / (1 - x^2).

The programs for A242634, the canonical program `A242634.P6395982089361752981` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242634 has offset 0).

The definition of A242634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242634.P6395982089361752981

`a(n-2)+a(floor(n/2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242634

/-- `a(n-2)+a(floor(n/2))` -/
def P6395982089361752981.Spec : Prop :=
  ∀ n, (P6395982089361752981.a n : ℤ) = A242634 n

theorem P6395982089361752981.correct : P6395982089361752981.Spec := by
  intro n
  simp only [A242634]

end A242634

/-! ## A242634.P13702210427068557027

`abs(a(n-2)+a(and(n, -2)/2))` with `a(0)=0, a(1)=1`
-/

namespace A242634.P13702210427068557027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A242634.P13702210427068557027

namespace A242634

/-- `abs(a(n-2)+a(and(n, -2)/2))` -/
def P13702210427068557027.Spec : Prop :=
  ∀ n, (P13702210427068557027.a n : ℤ) = A242634 n

end A242634

/-! ## A242634.P18151828666608839166

`ceil(a(n-2)+a(and(n, -2)/2))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A242634.P18151828666608839166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A242634.P18151828666608839166

namespace A242634

/-- `ceil(a(n-2)+a(and(n, -2)/2))` -/
def P18151828666608839166.Spec : Prop :=
  ∀ n, (P18151828666608839166.a n : ℤ) = A242634 n

end A242634

/-! ## A242634.P14729280253290282553

`round(a(n-2)+a(and(n, -2)/2))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A242634.P14729280253290282553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A242634.P14729280253290282553

namespace A242634

/-- `round(a(n-2)+a(and(n, -2)/2))` -/
def P14729280253290282553.Spec : Prop :=
  ∀ n, (P14729280253290282553.a n : ℤ) = A242634 n

end A242634

/-! ## A242634.P4197768033440056752

`A088567(n)+n²%(n+1)-1`
-/

namespace A242634.P4197768033440056752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 n + (((n ^ 2 % (n + 1) : ℕ) : ℤ) - 1)

end

end A242634.P4197768033440056752

namespace A242634

/-- `A088567(n)+n²%(n+1)-1` -/
def P4197768033440056752.Spec : Prop :=
  ∀ n, P4197768033440056752.a n = A242634 n

end A242634

/-! ## A242634.P2430014053562998789

`A088567(n)-A000007(n)`
-/

namespace A242634.P2430014053562998789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 n - A000007 n

end

end A242634.P2430014053562998789

namespace A242634

/-- `A088567(n)-A000007(n)` -/
def P2430014053562998789.Spec : Prop :=
  ∀ n, P2430014053562998789.a n = A242634 n

end A242634

/-! ## A242634.P17570259840011100279

`A057427(n)*A088567(n)`
-/

namespace A242634.P17570259840011100279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A088567 n

end

end A242634.P17570259840011100279

namespace A242634

/-- `A057427(n)*A088567(n)` -/
def P17570259840011100279.Spec : Prop :=
  ∀ n, P17570259840011100279.a n = A242634 n

end A242634

/-! ## A242634.P14437309123343816309

`A088567(n)%A000156(n)`
-/

namespace A242634.P14437309123343816309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088567 n) (A000156 n)

end

end A242634.P14437309123343816309

namespace A242634

/-- `A088567(n)%A000156(n)` -/
def P14437309123343816309.Spec : Prop :=
  ∀ n, P14437309123343816309.a n = A242634 n

end A242634

/-! ## A242634.P6360870977541723754

`and(A057428(n), A088567(n))`
-/

namespace A242634.P6360870977541723754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A088567 n)

end

end A242634.P6360870977541723754

namespace A242634

/-- `and(A057428(n), A088567(n))` -/
def P6360870977541723754.Spec : Prop :=
  ∀ n, P6360870977541723754.a n = A242634 n

end A242634

/-! ## A242634.P8672903265079866732

`and(A088567(n), A134824(n))`
-/

namespace A242634.P8672903265079866732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088567 n) (A134824 n)

end

end A242634.P8672903265079866732

namespace A242634

/-- `and(A088567(n), A134824(n))` -/
def P8672903265079866732.Spec : Prop :=
  ∀ n, P8672903265079866732.a n = A242634 n

end A242634

/-! ## A242634.P2539356368458449606

`A062157(n)²*A088567(n)`
-/

namespace A242634.P2539356368458449606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2 * A088567 n

end

end A242634.P2539356368458449606

namespace A242634

/-- `A062157(n)²*A088567(n)` -/
def P2539356368458449606.Spec : Prop :=
  ∀ n, P2539356368458449606.a n = A242634 n

end A242634

/-! ## A242634.P8830468198278772990

`A088567(n)-A036987(2*n)`
-/

namespace A242634.P8830468198278772990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 n - A036987 (2 * n)

end

end A242634.P8830468198278772990

namespace A242634

/-- `A088567(n)-A036987(2*n)` -/
def P8830468198278772990.Spec : Prop :=
  ∀ n, P8830468198278772990.a n = A242634 n

end A242634

/-! ## A242634.P11663995924596341655

`A088567(n)-A010051(2*(n+1))`
-/

namespace A242634.P11663995924596341655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 n - A010051 (2 * (n + 1))

end

end A242634.P11663995924596341655

namespace A242634

/-- `A088567(n)-A010051(2*(n+1))` -/
def P11663995924596341655.Spec : Prop :=
  ∀ n, P11663995924596341655.a n = A242634 n

end A242634

/-! ## A242634.P10574822389365327974

`A088567(n)-A012245(2*n+1)`
-/

namespace A242634.P10574822389365327974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 n - A012245 (2 * n + 1)

end

end A242634.P10574822389365327974

namespace A242634

/-- `A088567(n)-A012245(2*n+1)` -/
def P10574822389365327974.Spec : Prop :=
  ∀ n, P10574822389365327974.a n = A242634 n

end A242634

/-! ## A242634.P10345429522746928925

`A088567(n)-A209229(2*n+1)`
-/

namespace A242634.P10345429522746928925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 n - A209229 (2 * n + 1)

end

end A242634.P10345429522746928925

namespace A242634

/-- `A088567(n)-A209229(2*n+1)` -/
def P10345429522746928925.Spec : Prop :=
  ∀ n, P10345429522746928925.a n = A242634 n

end A242634

/-! ## A242634.P462373904732463159

`and(1, A000040(n+1))*A088567(n)`
-/

namespace A242634.P462373904732463159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A088567 n

end

end A242634.P462373904732463159

namespace A242634

/-- `and(1, A000040(n+1))*A088567(n)` -/
def P462373904732463159.Spec : Prop :=
  ∀ n, P462373904732463159.a n = A242634 n

end A242634

/-! ## A242634.P7630046682413450069

`A038189(n)+A088567(n)-A089013(n)`
-/

namespace A242634.P7630046682413450069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + (A088567 n - A089013 n)

end

end A242634.P7630046682413450069

namespace A242634

/-- `A038189(n)+A088567(n)-A089013(n)` -/
def P7630046682413450069.Spec : Prop :=
  ∀ n, P7630046682413450069.a n = A242634 n

end A242634

/-! ## A242634.P12733685460482989188

`(A088585(n)-A088575(n))*A088567(n)`
-/

namespace A242634.P12733685460482989188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088585 n - A088575 n) * A088567 n

end

end A242634.P12733685460482989188

namespace A242634

/-- `(A088585(n)-A088575(n))*A088567(n)` -/
def P12733685460482989188.Spec : Prop :=
  ∀ n, P12733685460482989188.a n = A242634 n

end A242634

/-! ## A242634.P15779562774405473621

`Δ[A088567(A004273(n))]`
-/

namespace A242634.P15779562774405473621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242634.P15779562774405473621

namespace A242634

/-- `Δ[A088567(A004273(n))]` -/
def P15779562774405473621.Spec : Prop :=
  ∀ n, P15779562774405473621.a n = A242634 n

end A242634

/-! ## A242634.P4758281906776614073

`Δ[A088567(2*n)-A088567(n)]`
-/

namespace A242634.P4758281906776614073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 (2 * n) - A088567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242634.P4758281906776614073

namespace A242634

/-- `Δ[A088567(2*n)-A088567(n)]` -/
def P4758281906776614073.Spec : Prop :=
  ∀ n, P4758281906776614073.a n = A242634 n

end A242634

/-!
# A242635: Number of n-length words w over an n-ary alphabet {a_1,...,a_n} such that w contains never more than j consecutive letters a_j for 1<=j<=n.

The programs for A242635, there is no canonical definition to state claims against.
-/

/-! ## A242635.P11154733113964370049

`A242464(∑[4*n])`
-/

namespace A242635.P11154733113964370049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242635.P11154733113964370049

/-! ## A242635.P10875705224311484510

`A242464(A046092(n))+A000007(n+1)`
-/

namespace A242635.P10875705224311484510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A046092 n).toNat + A000007 (n + 1)

end

end A242635.P10875705224311484510

/-! ## A242635.P5144681664654318993

`A242464(A046092(n))/(A008611(3*n)-n)`
-/

namespace A242635.P5144681664654318993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242464 (A046092 n).toNat : ℚ) / (A008611 (3 * n) - (n : ℤ) : ℚ)

end

end A242635.P5144681664654318993

/-! ## A242635.P8488710012725409451

`A242464(A046092(n))+A114327(A046092(n))`
-/

namespace A242635.P8488710012725409451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242464 (A046092 n).toNat + A114327 (A046092 n).toNat

end

end A242635.P8488710012725409451

/-!
# A242637: Number of quadrangulations of a hexagon having n inner faces.

The programs for A242637, there is no canonical definition to state claims against.
-/

/-! ## A242637.P17423823797503323456

`6*A102594(n+1)/A075884(A008574(n))`
-/

namespace A242637.P17423823797503323456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A102594 (n + 1) : ℚ) / (A075884 (A008574 n).toNat : ℚ))

end

end A242637.P17423823797503323456

/-! ## A242637.P3674785096944732259

`A242666(A307487(n))`
-/

namespace A242637.P3674785096944732259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242666 (A307487 n).toNat

end

end A242637.P3674785096944732259

/-!
# A242638: Number of quadrangulations of a hexagon b_1 w_3 b_2 w_1 b_3 w_2 having n inner faces and not containing the edge b_1 w_1.

The programs for A242638, there is no canonical definition to state claims against.
-/

/-! ## A242638.P1359331399797674950

`A214656(A185132(n+2))`
-/

namespace A242638.P1359331399797674950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214656 (A185132 (n + 2)).toNat

end

end A242638.P1359331399797674950

/-! ## A242638.P14462899237104164213

`∑[A298608(A292460(n))+A006095(n)]`
-/

namespace A242638.P14462899237104164213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298608 (A292460 n).toNat + A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242638.P14462899237104164213

/-!
# A242639: Array read by antidiagonals upwards: A(s,n) (s>=1, n >= 1) = Sum_{d|n, d <= s} d^2 + s*Sum_{d|n, d>s} d.

The programs for A242639, there is no canonical definition to state claims against.
-/

/-! ## A242639.P5790291180860952000

`A286621(A099884(n)^A048993(n))`
-/

namespace A242639.P5790291180860952000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (SequenceMachineLib.roundAway ((A099884 n : ℚ) ^ (A048993 n : ℤ))).toNat

end

end A242639.P5790291180860952000

/-! ## A242639.P1628639102112270133

`A320110(A008706(n)^A135302(n))`
-/

namespace A242639.P1628639102112270133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320110 (SequenceMachineLib.roundAway ((A008706 n : ℚ) ^ (A135302 n : ℤ))).toNat

end

end A242639.P1628639102112270133

/-! ## A242639.P3145957719762961568

`A286621(A099884(n)^A135302(n))`
-/

namespace A242639.P3145957719762961568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (SequenceMachineLib.roundAway ((A099884 n : ℚ) ^ (A135302 n : ℤ))).toNat

end

end A242639.P3145957719762961568

/-! ## A242639.P75191521524215186

`A286621(A099884(n)^A276727(n))`
-/

namespace A242639.P75191521524215186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (SequenceMachineLib.roundAway ((A099884 n : ℚ) ^ (A276727 n : ℤ))).toNat

end

end A242639.P75191521524215186

/-! ## A242639.P5160297972940336918

`A320110(C(A008706(n), A135302(n)))`
-/

namespace A242639.P5160297972940336918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320110 (Nat.choose (A008706 n).toNat (A135302 n).toNat)

end

end A242639.P5160297972940336918

/-!
# A242641: Array read by antidiagonals upwards: B(s,n) ( s>=1, n >= 0) = number of s-line partitions of n.

The programs for A242641, there is no canonical definition to state claims against.
-/

/-! ## A242641.P8164710284189254412

`or(A124762(A320079(n)), A208447(n))`
-/

namespace A242641.P8164710284189254412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124762 (A320079 n).toNat) (A208447 n)

end

end A242641.P8164710284189254412

/-! ## A242641.P15234330413219868548

`or(A050870(A110518(n)), A208447(n))`
-/

namespace A242641.P15234330413219868548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050870 (A110518 n).toNat) (A208447 n)

end

end A242641.P15234330413219868548

/-! ## A242641.P1127426592882136580

`or(A208447(n), A225654(A007690(n)))`
-/

namespace A242641.P1127426592882136580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208447 n) (A225654 (A007690 n).toNat)

end

end A242641.P1127426592882136580

/-! ## A242641.P15209561594584772120

`or(A021913(A081848(n+1)), A208447(n))`
-/

namespace A242641.P15209561594584772120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A021913 (A081848 (n + 1)).toNat) (A208447 n)

end

end A242641.P15209561594584772120

/-! ## A242641.P8454539243984042296

`A000120(A362078(n)²)`
-/

namespace A242641.P8454539243984042296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A362078 n ^ 2).toNat

end

end A242641.P8454539243984042296

/-!
# A242643: a(n) = Sum_{d|n, d <= 6} d^2 + 6*Sum_{d|n, d>6} d.

The programs for A242643, the canonical program `A242643.P954385137842474462` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242643 has offset 1).

The definition of A242643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242643.P954385137842474462

`∑{d}[n+1, #*A101272(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A242643

/-- `∑{d}[n+1, #*A101272(#)]` -/
def P954385137842474462.Spec : Prop :=
  ∀ n, P954385137842474462.a n = A242643 (n + 1)

theorem P954385137842474462.correct : P954385137842474462.Spec := by
  intro n
  simp only [A242643, Nat.add_sub_cancel]

end A242643

/-! ## A242643.P17902783031239073528

`A242640(A194082(n+2))`
-/

namespace A242643.P17902783031239073528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242640 (A194082 (n + 2)).toNat

end

end A242643.P17902783031239073528

namespace A242643

/-- `A242640(A194082(n+2))` -/
def P17902783031239073528.Spec : Prop :=
  ∀ n, P17902783031239073528.a n = A242643 (n + 1)

end A242643

/-! ## A242643.P449596393668132413

`A242640(∑[∑[A249133(n)]])`
-/

namespace A242643.P449596393668132413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A242643.P449596393668132413

namespace A242643

/-- `A242640(∑[∑[A249133(n)]])` -/
def P449596393668132413.Spec : Prop :=
  ∀ n, P449596393668132413.a n = A242643 (n + 1)

end A242643

/-! ## A242643.P1807535568721532577

`A242640(A000217(n+1)-A174709(n))`
-/

namespace A242643.P1807535568721532577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242640 (A000217 (n + 1) - A174709 n).toNat

end

end A242643.P1807535568721532577

namespace A242643

/-- `A242640(A000217(n+1)-A174709(n))` -/
def P1807535568721532577.Spec : Prop :=
  ∀ n, P1807535568721532577.a n = A242643 (n + 1)

end A242643

/-! ## A242643.P10789618992267189805

`A242640(eq[A000007(n), A025689(n+1)])`
-/

namespace A242643.P10789618992267189805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242640 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A242643.P10789618992267189805

namespace A242643

/-- `A242640(eq[A000007(n), A025689(n+1)])` -/
def P10789618992267189805.Spec : Prop :=
  ∀ n, P10789618992267189805.a n = A242643 (n + 1)

end A242643

/-!
# A242645: a(n) = concatenation of decimal expansions of powers of 11 (in decreasing order).

The programs for A242645, there is no canonical definition to state claims against.
-/

/-! ## A242645.P13268115166065649526

`∑[11*a(n-1)*10^n]` with `a(0)=1`
-/

namespace A242645.P13268115166065649526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  11 * f1 (n - 1) * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242645.P13268115166065649526

/-! ## A242645.P16217833575258864062

`∑[∏[A266717(2*n)]]`
-/

namespace A242645.P16217833575258864062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266717 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242645.P16217833575258864062

/-! ## A242645.P7863371653191524213

`∑[∏[A285842(2*n)]]`
-/

namespace A242645.P7863371653191524213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285842 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242645.P7863371653191524213

/-! ## A242645.P12022199453734200756

`∑[∏[record[A164851(n+2)]]]`
-/

namespace A242645.P12022199453734200756
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242645.P12022199453734200756

/-!
# A242646: a(n) = concatenation of decimal expansions of powers of 11 (in increasing order).

The programs for A242646, there is no canonical definition to state claims against.
-/

/-! ## A242646.P2565273434699307201

`11^n+10^(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A242646.P2565273434699307201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  11 ^ n + 10 ^ (n + 1) * a (n - 1)

end

end A242646.P2565273434699307201

/-!
# A242647: Sign of (the n-th continued fraction convergent to 2*Pi divided by the n-th convergent to Pi minus 2).

The programs for A242647, there is no canonical definition to state claims against.
-/

/-! ## A242647.P1265325806573653372

`Δ[A275606(A015819(n+4))]`
-/

namespace A242647.P1265325806573653372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275606 (A015819 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242647.P1265325806573653372

/-! ## A242647.P6017110821461355144

`Δ[A287795(A033286(Δ[n²]))]`
-/

namespace A242647.P6017110821461355144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287795 (A033286 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242647.P6017110821461355144

/-! ## A242647.P15344164540782997063

`Δ[A287795(A005408(n)*A031368(n+1))]`
-/

namespace A242647.P15344164540782997063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287795 (A005408 n * A031368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242647.P15344164540782997063

/-! ## A242647.P4615224607357503117

`Δ[A257800((A160407(n+1)-1)*A056105(n))]`
-/

namespace A242647.P4615224607357503117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 ((A160407 (n + 1) - 1) * A056105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242647.P4615224607357503117

/-! ## A242647.P4460774871269700257

`A015920(A000045(n))-A015895(3*n+2)`
-/

namespace A242647.P4460774871269700257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015920 (A000045 n).toNat - A015895 (3 * n + 2)

end

end A242647.P4460774871269700257

/-!
# A242649: Dirichlet g.f.: Product_{n>=2} 1/(1-1/n^s)^d(n), where d(n) = A000005(n) is the number of divisors of n.

The programs for A242649, there is no canonical definition to state claims against.
-/

/-! ## A242649.P14267072776515244209

`A323240(A339318(n+1)%A193761(2*n+1))`
-/

namespace A242649.P14267072776515244209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323240 (Int.tmod (A339318 (n + 1)) (A193761 (2 * n + 1))).toNat

end

end A242649.P14267072776515244209

/-! ## A242649.P13247830261549661634

`A156251(A339319(n+1))`
-/

namespace A242649.P13247830261549661634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A339319 (n + 1)).toNat

end

end A242649.P13247830261549661634

/-! ## A242649.P2319144458268613994

`round(A339319(A187829(n+1))/3)+1`
-/

namespace A242649.P2319144458268613994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A339319 (A187829 (n + 1)).toNat : ℚ) / 3) + 1

end

end A242649.P2319144458268613994

/-!
# A242650: For any number m there is a number k such that m-k^3 is congruent mod 96 to one of these 12 numbers.

The programs for A242650, there is no canonical definition to state claims against.
-/

/-! ## A242650.P8375471655640607421

`∑[6*gcd(n, ∑{p}[∑[n], #])!]`
-/

namespace A242650.P8375471655640607421
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.factorial (Nat.gcd n (∑ p ∈ Nat.primeFactors (f2 n), p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242650.P8375471655640607421

/-! ## A242650.P2189009776487514312

`∩[2*(comp[∑[∑[n]]]+1), 3*n]`
-/

namespace A242650.P2189009776487514312
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f5 j = x) n

end

end A242650.P2189009776487514312

/-! ## A242650.P15400348535316384842

`∑[lcm(6, 2^(n-∑[val(n+1, 2)]))]`
-/

namespace A242650.P15400348535316384842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242650.P15400348535316384842

/-! ## A242650.P6339072798732142998

`∑[6*A323437(n)]`
-/

namespace A242650.P6339072798732142998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A323437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242650.P6339072798732142998

/-! ## A242650.P9413084712472099058

`6*A039216(n+1)`
-/

namespace A242650.P9413084712472099058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A039216 (n + 1)

end

end A242650.P9413084712472099058

/-!
# A242651: Real part of Product_{k=0..n} (i-k), where i = sqrt(-1).

The programs for A242651, there is no canonical definition to state claims against.
-/

/-! ## A242651.P238614622970849159

`A003703(n+1)`
-/

namespace A242651.P238614622970849159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003703 (n + 1)

end

end A242651.P238614622970849159

/-! ## A242651.P6026712451575103771

`Δ[-∑[-A003703(n)]]`
-/

namespace A242651.P6026712451575103771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A003703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242651.P6026712451575103771

/-! ## A242651.P6560055539019309840

`(-1)^n*A231531(n)`
-/

namespace A242651.P6560055539019309840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A231531 n

end

end A242651.P6560055539019309840

/-! ## A242651.P16054519428935266240

`A357720(A034856(n+2))`
-/

namespace A242651.P16054519428935266240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (A034856 (n + 2)).toNat

end

end A242651.P16054519428935266240

/-! ## A242651.P3994011364367401554

`A357720(A046691(n+1)+2)`
-/

namespace A242651.P3994011364367401554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (A046691 (n + 1) + 2).toNat

end

end A242651.P3994011364367401554

/-! ## A242651.P16445288379059017510

`A003703(ϕ²-(ϕ-n))*A054977(n)`
-/

namespace A242651.P16445288379059017510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003703 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat * A054977 n

end

end A242651.P16445288379059017510

/-! ## A242651.P6241703898070114092

`A009024(n+2)/(n+2)`
-/

namespace A242651.P6241703898070114092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009024 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A242651.P6241703898070114092

/-!
# A242652: Imaginary part of Product_{k=0..n} (i-k), where i=sqrt(-1).

The programs for A242652, there is no canonical definition to state claims against.
-/

/-! ## A242652.P2222979476162802721

`A009454(n+1)`
-/

namespace A242652.P2222979476162802721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009454 (n + 1)

end

end A242652.P2222979476162802721

/-! ## A242652.P2338210867138639916

`A003703(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A242652.P2338210867138639916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003703 n - (n : ℤ) * a (n - 1)

end

end A242652.P2338210867138639916

/-! ## A242652.P1621284641035563289

`A033999(n)*A231530(n)`
-/

namespace A242652.P1621284641035563289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A231530 n

end

end A242652.P1621284641035563289

/-! ## A242652.P33320357417324838

`A092220(n²+1)*A231530(n)`
-/

namespace A242652.P33320357417324838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (n ^ 2 + 1) * A231530 n

end

end A242652.P33320357417324838

/-! ## A242652.P2943062279665408924

`A231530(n)/A154870(3*n+2)`
-/

namespace A242652.P2943062279665408924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231530 n : ℚ) / (A154870 (3 * n + 2) : ℚ)

end

end A242652.P2943062279665408924

/-!
# A242653: Triangle read by rows: T(n,k) = ((n+k)/2)!/k! if n,k have same parity, otherwise 0.

The programs for A242653, the canonical program `A242653.P15016598860482311398` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242653 has offset 0).

The definition of A242653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242653.P15016598860482311398

`A122851(A209293(n+1)-1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A242653

/-- `A122851(A209293(n+1)-1)` -/
def P15016598860482311398.Spec : Prop :=
  ∀ n, P15016598860482311398.a n = A242653 n

theorem P15016598860482311398.correct : P15016598860482311398.Spec := by
  intro n
  simp only [A242653]

end A242653

/-! ## A242653.P11117570292484575511

`A081123(A004736(n+1))*A168561(n)`
-/

namespace A242653.P11117570292484575511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A004736 (n + 1)).toNat * A168561 n

end

end A242653.P11117570292484575511

namespace A242653

/-- `A081123(A004736(n+1))*A168561(n)` -/
def P11117570292484575511.Spec : Prop :=
  ∀ n, P11117570292484575511.a n = A242653 n

end A242653

/-! ## A242653.P13330722181775108102

`A072346(A025581(n))*A168561(n)`
-/

namespace A242653.P13330722181775108102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072346 (A025581 n).toNat * A168561 n

end

end A242653.P13330722181775108102

namespace A242653

/-- `A072346(A025581(n))*A168561(n)` -/
def P13330722181775108102.Spec : Prop :=
  ∀ n, P13330722181775108102.a n = A242653 n

end A242653

/-! ## A242653.P3788994533240382524

`A066325(n)/A061554(n)*A116949(n)`
-/

namespace A242653.P3788994533240382524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 n : ℚ) / (A061554 n : ℚ) * (A116949 n : ℚ)

end

end A242653.P3788994533240382524

namespace A242653

/-- `A066325(n)/A061554(n)*A116949(n)` -/
def P3788994533240382524.Spec : Prop :=
  ∀ n, P3788994533240382524.a n = (A242653 n : ℚ)

end A242653

/-! ## A242653.P8226887751942832307

`A067147(n)/A061554(n)`
-/

namespace A242653.P8226887751942832307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067147 n : ℚ) / (A061554 n : ℚ)

end

end A242653.P8226887751942832307

namespace A242653

/-- `A067147(n)/A061554(n)` -/
def P8226887751942832307.Spec : Prop :=
  ∀ n, P8226887751942832307.a n = (A242653 n : ℚ)

end A242653

/-! ## A242653.P11308351102709775277

`A067147(n)/A107430(A061579(n))`
-/

namespace A242653.P11308351102709775277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067147 n : ℚ) / (A107430 (A061579 n).toNat : ℚ)

end

end A242653.P11308351102709775277

namespace A242653

/-- `A067147(n)/A107430(A061579(n))` -/
def P11308351102709775277.Spec : Prop :=
  ∀ n, P11308351102709775277.a n = (A242653 n : ℚ)

end A242653

/-! ## A242653.P10271054028768451075

`A067147(n)/A107230(n)*A168561(n)`
-/

namespace A242653.P10271054028768451075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067147 n : ℚ) / (A107230 n : ℚ) * (A168561 n : ℚ)

end

end A242653.P10271054028768451075

namespace A242653

/-- `A067147(n)/A107230(n)*A168561(n)` -/
def P10271054028768451075.Spec : Prop :=
  ∀ n, P10271054028768451075.a n = (A242653 n : ℚ)

end A242653

/-! ## A242653.P13479052100622813614

`A067147(n)/gcd(A107230(n), A108044(n))`
-/

namespace A242653.P13479052100622813614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067147 n : ℚ) / (Int.gcd (A107230 n) (A108044 n) : ℚ)

end

end A242653.P13479052100622813614

namespace A242653

/-- `A067147(n)/gcd(A107230(n), A108044(n))` -/
def P13479052100622813614.Spec : Prop :=
  ∀ n, P13479052100622813614.a n = (A242653 n : ℚ)

end A242653

/-! ## A242653.P5410114180804780284

`abs(A112227(n)/A061554(n))`
-/

namespace A242653.P5410114180804780284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A112227 n : ℚ) / (A061554 n : ℚ)|

end

end A242653.P5410114180804780284

namespace A242653

/-- `abs(A112227(n)/A061554(n))` -/
def P5410114180804780284.Spec : Prop :=
  ∀ n, P5410114180804780284.a n = (A242653 n : ℚ)

end A242653

/-! ## A242653.P13389283719515956454

`A046854(n)/A130595(n)*A161556(n)`
-/

namespace A242653.P13389283719515956454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046854 n : ℚ) / (A130595 n : ℚ) * (A161556 n : ℚ)

end

end A242653.P13389283719515956454

namespace A242653

/-- `A046854(n)/A130595(n)*A161556(n)` -/
def P13389283719515956454.Spec : Prop :=
  ∀ n, P13389283719515956454.a n = (A242653 n : ℚ)

end A242653

/-!
# A242654: 1 followed by the union of the terms > 2 in A002387 (or A004080) and A115515.

The programs for A242654, there is no canonical definition to state claims against.
-/

/-! ## A242654.P8695227619630224874

`A004080(ceil(n/2)+1)-n%2`
-/

namespace A242654.P8695227619630224874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 (⌈(n : ℚ) / 2⌉ + 1).toNat - ((n % 2 : ℕ) : ℤ)

end

end A242654.P8695227619630224874

/-!
# A242655: Numbers of the form 2x^2+2xy+3y^2 with x and y nonnegative.

The programs for A242655, there is no canonical definition to state claims against.
-/

/-! ## A242655.P210295961418035366

`lt[A033723(A033702(n+1)), A028586(n)]`
-/

namespace A242655.P210295961418035366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033723 (A033702 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242655.P210295961418035366

/-! ## A242655.P8779618455079953628

`lt[A033723(A033702(n+1)), A033718(2*n)]`
-/

namespace A242655.P8779618455079953628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033723 (A033702 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242655.P8779618455079953628

/-! ## A242655.P17649229096809738689

`lt[A033718(A033710(n+1)), A028586(n)]`
-/

namespace A242655.P17649229096809738689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (A033710 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242655.P17649229096809738689

/-! ## A242655.P7930607667764505243

`lt[A028586(2*A033710(n+1)), A028586(n)]`
-/

namespace A242655.P7930607667764505243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (2 * A033710 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242655.P7930607667764505243

/-! ## A242655.P3913753134103735012

`lt[A033718(A033710(n+1)), A033718(2*n)]`
-/

namespace A242655.P3913753134103735012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (A033710 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242655.P3913753134103735012

/-!
# A242656: Mahonian numbers T(n,6) (cf. A008302).

The programs for A242656, there is no canonical definition to state claims against.
-/

/-! ## A242656.P7307779794140707725

`A177517(A055999(n+8))`
-/

namespace A242656.P7307779794140707725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A055999 (n + 8)).toNat

end

end A242656.P7307779794140707725

/-! ## A242656.P11276590769308073966

`record[A177517(A134227(n+1))]`
-/

namespace A242656.P11276590769308073966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A134227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242656.P11276590769308073966

/-! ## A242656.P2750734084434423099

`record[A177517(A027379(n)+n)]`
-/

namespace A242656.P2750734084434423099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242656.P2750734084434423099

/-! ## A242656.P1282861507068232362

`A177517(A052905(n+8)-1)`
-/

namespace A242656.P1282861507068232362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A052905 (n + 8) - 1).toNat

end

end A242656.P1282861507068232362

/-! ## A242656.P1326736682669573023

`A177517(A000217(n+11)-6)`
-/

namespace A242656.P1326736682669573023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000217 (n + 11) - 6).toNat

end

end A242656.P1326736682669573023

/-!
# A242657: Mahonian numbers T(n,7) (cf. A008302).

The programs for A242657, there is no canonical definition to state claims against.
-/

/-! ## A242657.P15110816260797518179

`A177517(A155212(n+9)+1)`
-/

namespace A242657.P15110816260797518179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A155212 (n + 9) + 1).toNat

end

end A242657.P15110816260797518179

/-! ## A242657.P2913098572404829065

`A008302(A003600(n+4)-6)`
-/

namespace A242657.P2913098572404829065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (A003600 (n + 4) - 6).toNat

end

end A242657.P2913098572404829065

/-! ## A242657.P2125877524052360652

`A177517(n+6+A000217(n+12))`
-/

namespace A242657.P2125877524052360652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 ((n + 6 : ℤ) + A000217 (n + 12)).toNat

end

end A242657.P2125877524052360652

/-! ## A242657.P7186589544552628619

`A177517(A052905(n+9)+n+11)`
-/

namespace A242657.P7186589544552628619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A052905 (n + 9) + (n + 11 : ℤ)).toNat

end

end A242657.P7186589544552628619

/-! ## A242657.P8841885604175854559

`A008302(A005286(n)+A000124(n+5)+5)`
-/

namespace A242657.P8841885604175854559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (A005286 n + (A000124 (n + 5) + 5)).toNat

end

end A242657.P8841885604175854559

/-!
# A242658: a(n) = 3*n^2 - 3*n + 2.

The programs for A242658, the canonical program `A242658.P4259220868081591915` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242658 has offset 0).

The definition of A242658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-3*n+2` (program `A242658.P4259220868081591915`, by `A242658.P4259220868081591915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242658.P4259220868081591915

`3*n²-3*n+2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242658

/-- `3*n²-3*n+2` -/
def P4259220868081591915.Spec : Prop :=
  ∀ n, P4259220868081591915.a n = A242658 n

theorem P4259220868081591915.correct : P4259220868081591915.Spec := by
  intro n
  simp only [A242658]

end A242658

/-! ## A242658.P10111666471192040893

`∑[a(n-1)+6]` with `a(0)=2, a(1)=0`
-/

namespace A242658.P10111666471192040893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242658.P10111666471192040893

namespace A242658

/-- `∑[a(n-1)+6]` -/
def P10111666471192040893.Spec : Prop :=
  ∀ n, (P10111666471192040893.a n : ℤ) = A242658 n

end A242658

/-! ## A242658.P5998061457178858110

`-xor(1, Δ[(1-n)^3])`
-/

namespace A242658.P5998061457178858110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (f1 (n + 1) - f1 n)

end

end A242658.P5998061457178858110

namespace A242658

/-- `-xor(1, Δ[(1-n)^3])` -/
def P5998061457178858110.Spec : Prop :=
  ∀ n, P5998061457178858110.a n = A242658 n

end A242658

/-! ## A242658.P17123573980954066235

`∑[ogf((2-4x+8x^2)/(1-2x+x^2))]`
-/

namespace A242658.P17123573980954066235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242658.P17123573980954066235

namespace A242658

/-- `∑[ogf((2-4x+8x^2)/(1-2x+x^2))]` -/
def P17123573980954066235.Spec : Prop :=
  ∀ n, P17123573980954066235.a n = A242658 n

end A242658

/-! ## A242658.P14965182305602981086

`ogf((2-4x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A242658.P14965182305602981086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 8] [1, -3, 3, -1] n

end

end A242658.P14965182305602981086

namespace A242658

/-- `ogf((2-4x+8x^2)/(1-3x+3x^2-x^3))` -/
def P14965182305602981086.Spec : Prop :=
  ∀ n, P14965182305602981086.a n = A242658 n

end A242658

/-! ## A242658.P9394353572319185609

`2*(4-∑[a(n-1)-3])` with `a(0)=3`
-/

namespace A242658.P9394353572319185609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242658.P9394353572319185609

namespace A242658

/-- `2*(4-∑[a(n-1)-3])` -/
def P9394353572319185609.Spec : Prop :=
  ∀ n, P9394353572319185609.a n = A242658 n

end A242658

/-! ## A242658.P2079301191010639978

`abs(a(n-1)+6*(n-1))` with `a(0)=2`
-/

namespace A242658.P2079301191010639978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |a (n - 1) + 6 * ((n : ℤ) - 1)|

end

end A242658.P2079301191010639978

namespace A242658

/-- `abs(a(n-1)+6*(n-1))` -/
def P2079301191010639978.Spec : Prop :=
  ∀ n, P2079301191010639978.a n = A242658 n

end A242658

/-! ## A242658.P8919739059197256240

`floor(a(n-1)+6*(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A242658.P8919739059197256240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 6 * ((n : ℤ) - 1)

end

end A242658.P8919739059197256240

namespace A242658

/-- `floor(a(n-1)+6*(n-1))` -/
def P8919739059197256240.Spec : Prop :=
  ∀ n, P8919739059197256240.a n = A242658 n

theorem P8919739059197256240.correct : P8919739059197256240.Spec := by
  intro n
  induction n with
  | zero => simp [A242658, A242658.P8919739059197256240.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A242658, Nat.add_sub_cancel, A242658.P8919739059197256240.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A242658

/-! ## A242658.P5439309108475235758

`ceil(a(n-1)+6*(n-1))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A242658.P5439309108475235758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 6 * ((n : ℤ) - 1)

end

end A242658.P5439309108475235758

namespace A242658

/-- `ceil(a(n-1)+6*(n-1))` -/
def P5439309108475235758.Spec : Prop :=
  ∀ n, P5439309108475235758.a n = A242658 n

theorem P5439309108475235758.correct : P5439309108475235758.Spec := by
  intro n
  induction n with
  | zero => simp [A242658, A242658.P5439309108475235758.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A242658, Nat.add_sub_cancel, A242658.P5439309108475235758.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A242658

/-! ## A242658.P231207502937870662

`round(a(n-1)+6*(n-1))` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A242658.P231207502937870662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 6 * ((n : ℤ) - 1)

end

end A242658.P231207502937870662

namespace A242658

/-- `round(a(n-1)+6*(n-1))` -/
def P231207502937870662.Spec : Prop :=
  ∀ n, P231207502937870662.a n = A242658 n

theorem P231207502937870662.correct : P231207502937870662.Spec := by
  intro n
  induction n with
  | zero => simp [A242658, A242658.P231207502937870662.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A242658, Nat.add_sub_cancel, A242658.P231207502937870662.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A242658

/-! ## A242658.P6605121078670802263

`floor(6*n-(6-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A242658.P6605121078670802263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (6 * n : ℤ) - (6 - a (n - 1))

end

end A242658.P6605121078670802263

namespace A242658

/-- `floor(6*n-(6-a(n-1)))` -/
def P6605121078670802263.Spec : Prop :=
  ∀ n, P6605121078670802263.a n = A242658 n

theorem P6605121078670802263.correct : P6605121078670802263.Spec := by
  intro n
  induction n with
  | zero => simp [A242658, A242658.P6605121078670802263.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A242658, Nat.add_sub_cancel, A242658.P6605121078670802263.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A242658

/-! ## A242658.P10092049588307399673

`Δ[(lcm(n, n-1)+2)*(n-2)]`
-/

namespace A242658.P10092049588307399673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) + 2 : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242658.P10092049588307399673

namespace A242658

/-- `Δ[(lcm(n, n-1)+2)*(n-2)]` -/
def P10092049588307399673.Spec : Prop :=
  ∀ n, P10092049588307399673.a n = A242658 n

end A242658

/-! ## A242658.P13759909786520345168

`Δ[(C(n, 2)-(n-2))*2*n]`
-/

namespace A242658.P13759909786520345168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℤ) - ((n : ℤ) - 2)) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242658.P13759909786520345168

namespace A242658

/-- `Δ[(C(n, 2)-(n-2))*2*n]` -/
def P13759909786520345168.Spec : Prop :=
  ∀ n, P13759909786520345168.a n = A242658 n

theorem P13759909786520345168.correct : P13759909786520345168.Spec := by
  intro n
  simp only [A242658, Nat.add_sub_cancel, A242658.P13759909786520345168.f1, A242658.P13759909786520345168.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242658

/-! ## A242658.P12124579625868884047

`2*(a(n-1)+3-a(n-2)/2)` with `a(0)=2, a(1)=2`
-/

namespace A242658.P12124579625868884047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (a (n - 1) + (3 - a (n - 2) / 2))

end

end A242658.P12124579625868884047

namespace A242658

/-- `2*(a(n-1)+3-a(n-2)/2)` -/
def P12124579625868884047.Spec : Prop :=
  ∀ n, P12124579625868884047.a n = (A242658 n : ℚ)

theorem P12124579625868884047.correct : P12124579625868884047.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A242658, Nat.add_sub_cancel, A242658.P12124579625868884047.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A242658, Nat.add_sub_cancel, A242658.P12124579625868884047.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A242658

/-! ## A242658.P13739051893691223795

`2*(3-(a(n-2)/2-a(n-1)))` with `a(0)=2, a(1)=2`
-/

namespace A242658.P13739051893691223795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (3 - (a (n - 2) / 2 - a (n - 1)))

end

end A242658.P13739051893691223795

namespace A242658

/-- `2*(3-(a(n-2)/2-a(n-1)))` -/
def P13739051893691223795.Spec : Prop :=
  ∀ n, P13739051893691223795.a n = (A242658 n : ℚ)

theorem P13739051893691223795.correct : P13739051893691223795.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A242658, Nat.add_sub_cancel, A242658.P13739051893691223795.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A242658, Nat.add_sub_cancel, A242658.P13739051893691223795.a, A242658.P4259220868081591915.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A242658

/-! ## A242658.P4671759321988755350

`lcm(2, A077588(n))`
-/

namespace A242658.P4671759321988755350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A077588 n)

end

end A242658.P4671759321988755350

namespace A242658

/-- `lcm(2, A077588(n))` -/
def P4671759321988755350.Spec : Prop :=
  ∀ n, (P4671759321988755350.a n : ℤ) = A242658 n

end A242658

/-! ## A242658.P5234403930160170120

`(A103115(n)+5)/2`
-/

namespace A242658.P5234403930160170120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103115 n + 5 : ℚ) / 2

end

end A242658.P5234403930160170120

namespace A242658

/-- `(A103115(n)+5)/2` -/
def P5234403930160170120.Spec : Prop :=
  ∀ n, P5234403930160170120.a n = (A242658 n : ℚ)

theorem P5234403930160170120.correct : P5234403930160170120.Spec := by
  intro n
  simp only [A242658, Nat.add_sub_cancel, A242658.P5234403930160170120.a, A242658.P4259220868081591915.a, A103115, A103115.P1586163232865090376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242658

/-! ## A242658.P3222429660055704874

`2*(A143689(n)-n)`
-/

namespace A242658.P3222429660055704874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A143689 n - (n : ℤ))

end

end A242658.P3222429660055704874

namespace A242658

/-- `2*(A143689(n)-n)` -/
def P3222429660055704874.Spec : Prop :=
  ∀ n, P3222429660055704874.a n = A242658 n

theorem P3222429660055704874.correct : P3222429660055704874.Spec := by
  intro n
  simp only [A242658, Nat.add_sub_cancel, A242658.P3222429660055704874.a, A242658.P4259220868081591915.a, A143689, A143689.P2779484328448269126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242658

/-! ## A242658.P2189112542076212677

`A077588(A028310(n))`
-/

namespace A242658.P2189112542076212677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 (A028310 n).toNat

end

end A242658.P2189112542076212677

namespace A242658

/-- `A077588(A028310(n))` -/
def P2189112542076212677.Spec : Prop :=
  ∀ n, P2189112542076212677.a n = A242658 n

end A242658

/-! ## A242658.P11460070208144250037

`A304579(n)%A084378(n)`
-/

namespace A242658.P11460070208144250037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304579 n) (A084378 n)

end

end A242658.P11460070208144250037

namespace A242658

/-- `A304579(n)%A084378(n)` -/
def P11460070208144250037.Spec : Prop :=
  ∀ n, P11460070208144250037.a n = A242658 n

end A242658

/-!
# A242659: a(n) = n*(n^2 - 3*n + 4).

The programs for A242659, the canonical program `A242659.P11891183138377020416` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242659 has offset 0).

The definition of A242659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²-3*n+4)` (program `A242659.P11891183138377020416`, by `A242659.P11891183138377020416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242659.P11891183138377020416

`n*(n²-3*n+4)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242659

/-- `n*(n²-3*n+4)` -/
def P11891183138377020416.Spec : Prop :=
  ∀ n, P11891183138377020416.a n = A242659 n

theorem P11891183138377020416.correct : P11891183138377020416.Spec := by
  intro n
  simp only [A242659]

end A242659

/-! ## A242659.P5120616072944354799

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=12`
-/

namespace A242659.P5120616072944354799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 12] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A242659.P5120616072944354799

namespace A242659

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5120616072944354799.Spec : Prop :=
  ∀ n, P5120616072944354799.a n = A242659 n

theorem P5120616072944354799.correct : P5120616072944354799.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A242659, Nat.add_sub_cancel, A242659.P5120616072944354799.a, A242659.P11891183138377020416.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A242659, Nat.add_sub_cancel, A242659.P5120616072944354799.a, A242659.P11891183138377020416.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A242659

/-! ## A242659.P1349310702757455795

`2*n+6*C(n, 3)`
-/

namespace A242659.P1349310702757455795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 6 * Nat.choose n 3

end

end A242659.P1349310702757455795

namespace A242659

/-- `2*n+6*C(n, 3)` -/
def P1349310702757455795.Spec : Prop :=
  ∀ n, (P1349310702757455795.a n : ℤ) = A242659 n

theorem P1349310702757455795.correct : P1349310702757455795.Spec := by
  intro n
  simp only [A242659, Nat.add_sub_cancel, A242659.P1349310702757455795.a, A242659.P11891183138377020416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242659

/-! ## A242659.P310754930431631928

`(n-1)^3-xor(n, -1)`
-/

namespace A242659.P310754930431631928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3 - Int.xor (n : ℤ) (-1)

end

end A242659.P310754930431631928

namespace A242659

/-- `(n-1)^3-xor(n, -1)` -/
def P310754930431631928.Spec : Prop :=
  ∀ n, P310754930431631928.a n = A242659 n

end A242659

/-! ## A242659.P18269624745908627313

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A242659.P18269624745908627313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242659.P18269624745908627313

namespace A242659

/-- `∑[∑[a(n-1)+6]]` -/
def P18269624745908627313.Spec : Prop :=
  ∀ n, (P18269624745908627313.a n : ℤ) = A242659 n

end A242659

/-! ## A242659.P1416183630830274676

`lcm(2, (n-1)^3+n+1)`
-/

namespace A242659.P1416183630830274676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((n : ℤ) - 1) ^ 3 + (n + 1 : ℤ))

end

end A242659.P1416183630830274676

namespace A242659

/-- `lcm(2, (n-1)^3+n+1)` -/
def P1416183630830274676.Spec : Prop :=
  ∀ n, (P1416183630830274676.a n : ℤ) = A242659 n

end A242659

/-! ## A242659.P13273080158199010174

`xor(1, (n-1)^3+n+2)`
-/

namespace A242659.P13273080158199010174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) ^ 3 + (n + 2 : ℤ))

end

end A242659.P13273080158199010174

namespace A242659

/-- `xor(1, (n-1)^3+n+2)` -/
def P13273080158199010174.Spec : Prop :=
  ∀ n, P13273080158199010174.a n = A242659 n

end A242659

/-! ## A242659.P7563852111096163180

`C(n+1, n)+(n-1)^3`
-/

namespace A242659.P7563852111096163180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n : ℤ) + ((n : ℤ) - 1) ^ 3

end

end A242659.P7563852111096163180

namespace A242659

/-- `C(n+1, n)+(n-1)^3` -/
def P7563852111096163180.Spec : Prop :=
  ∀ n, P7563852111096163180.a n = A242659 n

theorem P7563852111096163180.correct : P7563852111096163180.Spec := by
  intro n
  simp only [A242659, Nat.add_sub_cancel, A242659.P7563852111096163180.a, A242659.P11891183138377020416.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A242659

/-! ## A242659.P11385980219780066389

`and((n-1)^3+n+1, -2)`
-/

namespace A242659.P11385980219780066389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n : ℤ) - 1) ^ 3 + (n + 1 : ℤ)) (-2)

end

end A242659.P11385980219780066389

namespace A242659

/-- `and((n-1)^3+n+1, -2)` -/
def P11385980219780066389.Spec : Prop :=
  ∀ n, P11385980219780066389.a n = A242659 n

end A242659

/-! ## A242659.P8491751000385691795

`abs((n-2-C(n, 2))*2*n)`
-/

namespace A242659.P8491751000385691795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 2 - (Nat.choose n 2 : ℤ)) * (2 * n : ℤ)|

end

end A242659.P8491751000385691795

namespace A242659

/-- `abs((n-2-C(n, 2))*2*n)` -/
def P8491751000385691795.Spec : Prop :=
  ∀ n, P8491751000385691795.a n = A242659 n

end A242659

/-! ## A242659.P11611861198319303362

`-((n-2-C(n, 2))*2*n)`
-/

namespace A242659.P11611861198319303362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 2 - (Nat.choose n 2 : ℤ)) * (2 * n : ℤ))

end

end A242659.P11611861198319303362

namespace A242659

/-- `-((n-2-C(n, 2))*2*n)` -/
def P11611861198319303362.Spec : Prop :=
  ∀ n, P11611861198319303362.a n = A242659 n

theorem P11611861198319303362.correct : P11611861198319303362.Spec := by
  intro n
  simp only [A242659, Nat.add_sub_cancel, A242659.P11611861198319303362.a, A242659.P11891183138377020416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242659

/-! ## A242659.P13978145866370448163

`(n-1)^3+sqrt(record[(n-1)²])`
-/

namespace A242659.P13978145866370448163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 3 : ℝ) + Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A242659.P13978145866370448163

namespace A242659

/-- `(n-1)^3+sqrt(record[(n-1)²])` -/
def P13978145866370448163.Spec : Prop :=
  ∀ n, P13978145866370448163.a n = (A242659 n : ℝ)

end A242659

/-! ## A242659.P6891844270869807506

`or(n-1, n-1)^3+n+1`
-/

namespace A242659.P6891844270869807506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) ((n : ℤ) - 1) ^ 3 + (n + 1 : ℤ)

end

end A242659.P6891844270869807506

namespace A242659

/-- `or(n-1, n-1)^3+n+1` -/
def P6891844270869807506.Spec : Prop :=
  ∀ n, P6891844270869807506.a n = A242659 n

end A242659

/-! ## A242659.P1965966177872808983

`lcm(1-n, n*(n-2))+2*n`
-/

namespace A242659.P1965966177872808983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) ((n : ℤ) * ((n : ℤ) - 2)) + 2 * n

end

end A242659.P1965966177872808983

namespace A242659

/-- `lcm(1-n, n*(n-2))+2*n` -/
def P1965966177872808983.Spec : Prop :=
  ∀ n, (P1965966177872808983.a n : ℤ) = A242659 n

end A242659

/-! ## A242659.P1726409818631386875

`Δ[(n-1-C(n, 2))²]+n+1`
-/

namespace A242659.P1726409818631386875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - (Nat.choose n 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A242659.P1726409818631386875

namespace A242659

/-- `Δ[(n-1-C(n, 2))²]+n+1` -/
def P1726409818631386875.Spec : Prop :=
  ∀ n, P1726409818631386875.a n = A242659 n

theorem P1726409818631386875.correct : P1726409818631386875.Spec := by
  intro n
  simp only [A242659, Nat.add_sub_cancel, A242659.P1726409818631386875.f1, A242659.P1726409818631386875.a, A242659.P11891183138377020416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242659

/-! ## A242659.P14673657357700548942

`(n-1)*or(2, (1-n)²)-(n-3)`
-/

namespace A242659.P14673657357700548942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.lor 2 ((1 - (n : ℤ)) ^ 2) - ((n : ℤ) - 3)

end

end A242659.P14673657357700548942

namespace A242659

/-- `(n-1)*or(2, (1-n)²)-(n-3)` -/
def P14673657357700548942.Spec : Prop :=
  ∀ n, P14673657357700548942.a n = A242659 n

end A242659

/-! ## A242659.P8099464232510728862

`(n-1)*xor(2, (1-n)²)-(n-3)`
-/

namespace A242659.P8099464232510728862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.xor 2 ((1 - (n : ℤ)) ^ 2) - ((n : ℤ) - 3)

end

end A242659.P8099464232510728862

namespace A242659

/-- `(n-1)*xor(2, (1-n)²)-(n-3)` -/
def P8099464232510728862.Spec : Prop :=
  ∀ n, P8099464232510728862.a n = A242659 n

end A242659

/-! ## A242659.P8913423857573280410

`gcd(n+1, ∑[2*n])+(n-1)^3`
-/

namespace A242659.P8913423857573280410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + ((n : ℤ) - 1) ^ 3

end

end A242659.P8913423857573280410

namespace A242659

/-- `gcd(n+1, ∑[2*n])+(n-1)^3` -/
def P8913423857573280410.Spec : Prop :=
  ∀ n, P8913423857573280410.a n = A242659 n

end A242659

/-! ## A242659.P18036058504056491425

`gcd(n-1, a(n-1))^3+n+1` with `a(0)=0`
-/

namespace A242659.P18036058504056491425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd ((n : ℤ) - 1) (a (n - 1) : ℤ) ^ 3 + (n + 1)

end

end A242659.P18036058504056491425

namespace A242659

/-- `gcd(n-1, a(n-1))^3+n+1` -/
def P18036058504056491425.Spec : Prop :=
  ∀ n, (P18036058504056491425.a n : ℤ) = A242659 n

end A242659

/-! ## A242659.P7141783348312805758

`2*n-(n-1-C(n, 2))*2*n`
-/

namespace A242659.P7141783348312805758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - (Nat.choose n 2 : ℤ)) * (2 * n : ℤ)

end

end A242659.P7141783348312805758

namespace A242659

/-- `2*n-(n-1-C(n, 2))*2*n` -/
def P7141783348312805758.Spec : Prop :=
  ∀ n, P7141783348312805758.a n = A242659 n

theorem P7141783348312805758.correct : P7141783348312805758.Spec := by
  intro n
  simp only [A242659, Nat.add_sub_cancel, A242659.P7141783348312805758.a, A242659.P11891183138377020416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242659

/-!
# A242660: Nonnegative numbers of the form x^2+xy-2y^2.

The programs for A242660, the canonical program `A242660.P12020305395701062719` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242660 has offset 1).

The definition of A242660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242660.P12020305395701062719

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7, a(4)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242660

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P12020305395701062719.Spec : Prop :=
  ∀ n, P12020305395701062719.a n = A242660 (n + 1)

theorem P12020305395701062719.correct : P12020305395701062719.Spec := by
  intro n
  simp only [A242660, Nat.add_sub_cancel]

end A242660

/-! ## A242660.P6977028354011291698

`a(n-4)+9` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7`
-/

namespace A242660.P6977028354011291698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 7] fun n a =>
  a (n - 4) + 9

end

end A242660.P6977028354011291698

namespace A242660

/-- `a(n-4)+9` -/
def P6977028354011291698.Spec : Prop :=
  ∀ n, (P6977028354011291698.a n : ℤ) = A242660 (n + 1)

end A242660

/-! ## A242660.P14889947736594379756

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=2`
-/

namespace A242660.P14889947736594379756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242660.P14889947736594379756

namespace A242660

/-- `∑[abs(a(n-4))]` -/
def P14889947736594379756.Spec : Prop :=
  ∀ n, (P14889947736594379756.a n : ℤ) = A242660 (n + 1)

end A242660

/-! ## A242660.P11459163047568488709

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=2`
-/

namespace A242660.P11459163047568488709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242660.P11459163047568488709

namespace A242660

/-- `∑[dr(a(n-4))]` -/
def P11459163047568488709.Spec : Prop :=
  ∀ n, (P11459163047568488709.a n : ℤ) = A242660 (n + 1)

end A242660

/-! ## A242660.P14785327131558366970

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A242660.P14785327131558366970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242660.P14785327131558366970

namespace A242660

/-- `∑[floor(a(n-4))]` -/
def P14785327131558366970.Spec : Prop :=
  ∀ n, (P14785327131558366970.a n : ℤ) = A242660 (n + 1)

end A242660

/-! ## A242660.P6802563124161537925

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A242660.P6802563124161537925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242660.P6802563124161537925

namespace A242660

/-- `∑[ceil(a(n-4))]` -/
def P6802563124161537925.Spec : Prop :=
  ∀ n, (P6802563124161537925.a n : ℤ) = A242660 (n + 1)

end A242660

/-! ## A242660.P38671260121328575

`∑[round(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A242660.P38671260121328575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242660.P38671260121328575

namespace A242660

/-- `∑[round(a(n-4))]` -/
def P38671260121328575.Spec : Prop :=
  ∀ n, (P38671260121328575.a n : ℤ) = A242660 (n + 1)

end A242660

/-! ## A242660.P16835998939234879325

`∪[2*n+1+n, 9*n]`
-/

namespace A242660.P16835998939234879325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A242660.P16835998939234879325

namespace A242660

/-- `∪[2*n+1+n, 9*n]` -/
def P16835998939234879325.Spec : Prop :=
  ∀ n, (P16835998939234879325.a n : ℤ) = A242660 (n + 1)

end A242660

/-! ## A242660.P14383673607743387867

`record[n-dr((n-1)*2*n)]`
-/

namespace A242660.P14383673607743387867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (((n : ℤ) - 1) * (2 * n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242660.P14383673607743387867

namespace A242660

/-- `record[n-dr((n-1)*2*n)]` -/
def P14383673607743387867.Spec : Prop :=
  ∀ n, P14383673607743387867.a n = A242660 (n + 1)

end A242660

/-! ## A242660.P6904957629490512115

`3*n-floor(n/4)-2*floor((n+3)/4)`
-/

namespace A242660.P6904957629490512115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ⌊(n : ℚ) / 4⌋ - 2 * ⌊(n + 3 : ℚ) / 4⌋

end

end A242660.P6904957629490512115

namespace A242660

/-- `3*n-floor(n/4)-2*floor((n+3)/4)` -/
def P6904957629490512115.Spec : Prop :=
  ∀ n, P6904957629490512115.a n = A242660 (n + 1)

end A242660

/-! ## A242660.P14332138784873220788

`(A266297(n+1)+A042948(n))/2`
-/

namespace A242660.P14332138784873220788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266297 (n + 1) + A042948 n : ℚ) / 2

end

end A242660.P14332138784873220788

namespace A242660

/-- `(A266297(n+1)+A042948(n))/2` -/
def P14332138784873220788.Spec : Prop :=
  ∀ n, P14332138784873220788.a n = (A242660 (n + 1) : ℚ)

end A242660

/-! ## A242660.P11158536185316284922

`comp[A268226(n+1)]`
-/

namespace A242660.P11158536185316284922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242660.P11158536185316284922

namespace A242660

/-- `comp[A268226(n+1)]` -/
def P11158536185316284922.Spec : Prop :=
  ∀ n, (P11158536185316284922.a n : ℤ) = A242660 (n + 1)

end A242660

/-! ## A242660.P5999266801282543795

`A032766(A047273(n+1))`
-/

namespace A242660.P5999266801282543795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A047273 (n + 1)).toNat

end

end A242660.P5999266801282543795

namespace A242660

/-- `A032766(A047273(n+1))` -/
def P5999266801282543795.Spec : Prop :=
  ∀ n, P5999266801282543795.a n = A242660 (n + 1)

end A242660

/-! ## A242660.P1879868938955521422

`A032766(∑[A021913(n)]+n)`
-/

namespace A242660.P1879868938955521422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A242660.P1879868938955521422

namespace A242660

/-- `A032766(∑[A021913(n)]+n)` -/
def P1879868938955521422.Spec : Prop :=
  ∀ n, P1879868938955521422.a n = A242660 (n + 1)

end A242660

/-! ## A242660.P6208255477756612781

`A032766(A047237(n+2)-1)`
-/

namespace A242660.P6208255477756612781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A047237 (n + 2) - 1).toNat

end

end A242660.P6208255477756612781

namespace A242660

/-- `A032766(A047237(n+2)-1)` -/
def P6208255477756612781.Spec : Prop :=
  ∀ n, P6208255477756612781.a n = A242660 (n + 1)

end A242660

/-! ## A242660.P11821334677539703721

`A032766(A047255(n+2)-2)`
-/

namespace A242660.P11821334677539703721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A047255 (n + 2) - 2).toNat

end

end A242660.P11821334677539703721

namespace A242660

/-- `A032766(A047255(n+2)-2)` -/
def P11821334677539703721.Spec : Prop :=
  ∀ n, P11821334677539703721.a n = A242660 (n + 1)

end A242660

/-! ## A242660.P10192686693525057495

`A032766(A004524(n+1)+n)`
-/

namespace A242660.P10192686693525057495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A004524 (n + 1) + (n : ℤ)).toNat

end

end A242660.P10192686693525057495

namespace A242660

/-- `A032766(A004524(n+1)+n)` -/
def P10192686693525057495.Spec : Prop :=
  ∀ n, P10192686693525057495.a n = A242660 (n + 1)

end A242660

/-! ## A242660.P14303001259445410336

`A032766(2*n-A004525(n))`
-/

namespace A242660.P14303001259445410336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ((2 * n : ℤ) - A004525 n).toNat

end

end A242660.P14303001259445410336

namespace A242660

/-- `A032766(2*n-A004525(n))` -/
def P14303001259445410336.Spec : Prop :=
  ∀ n, P14303001259445410336.a n = A242660 (n + 1)

end A242660

/-! ## A242660.P2461102383588139879

`A248375(A047538(n+1))`
-/

namespace A242660.P2461102383588139879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A047538 (n + 1)).toNat

end

end A242660.P2461102383588139879

namespace A242660

/-- `A248375(A047538(n+1))` -/
def P2461102383588139879.Spec : Prop :=
  ∀ n, P2461102383588139879.a n = A242660 (n + 1)

end A242660

/-! ## A242660.P11228843365157911211

`A064429(A174438(n+1))`
-/

namespace A242660.P11228843365157911211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A174438 (n + 1)).toNat

end

end A242660.P11228843365157911211

namespace A242660

/-- `A064429(A174438(n+1))` -/
def P11228843365157911211.Spec : Prop :=
  ∀ n, P11228843365157911211.a n = A242660 (n + 1)

end A242660

/-!
# A242662: Nonnegative integers of the form x^2 + 4xy - 3y^2.

The programs for A242662, there is no canonical definition to state claims against.
-/

/-! ## A242662.P12806735404372463379

`record[A137241(A242666(n+1))]`
-/

namespace A242662.P12806735404372463379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A242666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242662.P12806735404372463379

/-! ## A242662.P12306549490095685548

`comp[A232682(n+1)]`
-/

namespace A242662.P12306549490095685548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242662.P12306549490095685548

/-!
# A242663: Nonnegative integers of the form x^2 + 4*x*y - 4*y^2.

The programs for A242663, the canonical program `A242663.P15863268049147409045` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242663 has offset 1).

The definition of A242663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242663.P15863268049147409045

`lt[0, A259829(round(sqrt(n²+1)))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A242663

/-- `lt[0, A259829(round(sqrt(n²+1)))]` -/
def P15863268049147409045.Spec : Prop :=
  ∀ n, (P15863268049147409045.a n : ℤ) = A242663 (n + 1)

theorem P15863268049147409045.correct : P15863268049147409045.Spec := by
  intro n
  simp only [A242663, Nat.add_sub_cancel]

end A242663

/-! ## A242663.P10742032937300468516

`lt[char[A232531(n+1)], 1-and(2, n)]`
-/

namespace A242663.P10742032937300468516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232531 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A242663.P10742032937300468516

namespace A242663

/-- `lt[char[A232531(n+1)], 1-and(2, n)]` -/
def P10742032937300468516.Spec : Prop :=
  ∀ n, (P10742032937300468516.a n : ℤ) = A242663 (n + 1)

end A242663

/-! ## A242663.P6442143558656869523

`eq[0, A154782(n)%2]`
-/

namespace A242663.P6442143558656869523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154782 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242663.P6442143558656869523

namespace A242663

/-- `eq[0, A154782(n)%2]` -/
def P6442143558656869523.Spec : Prop :=
  ∀ n, (P6442143558656869523.a n : ℤ) = A242663 (n + 1)

end A242663

/-! ## A242663.P6986117350413685780

`eq[1, A057428(n)^A154782(n)]`
-/

namespace A242663.P6986117350413685780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A154782 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A242663.P6986117350413685780

namespace A242663

/-- `eq[1, A057428(n)^A154782(n)]` -/
def P6986117350413685780.Spec : Prop :=
  ∀ n, (P6986117350413685780.a n : ℤ) = A242663 (n + 1)

end A242663

/-! ## A242663.P12026589752881863705

`lt[((A154811(n+1)+1)%3)^8-1, A154782(n)]`
-/

namespace A242663.P12026589752881863705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154811 (n + 1) + 1) 3 ^ 8 - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242663.P12026589752881863705

namespace A242663

/-- `lt[((A154811(n+1)+1)%3)^8-1, A154782(n)]` -/
def P12026589752881863705.Spec : Prop :=
  ∀ n, (P12026589752881863705.a n : ℤ) = A242663 (n + 1)

end A242663

/-!
# A242665: Nonnegative integers of the form -x^2 + 4xy + 2y^2.

The programs for A242665, there is no canonical definition to state claims against.
-/

/-! ## A242665.P16353357163284861469

`record[A025480(A242661(n+1))]`
-/

namespace A242665.P16353357163284861469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A242661 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242665.P16353357163284861469

/-! ## A242665.P7775091020934635971

`record[A142150(A242661(A008619(n)))]`
-/

namespace A242665.P7775091020934635971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A242661 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242665.P7775091020934635971

/-!
# A242666: Nonnegative integers of the form -x^2 + 4xy + 3y^2.

The programs for A242666, there is no canonical definition to state claims against.
-/

/-! ## A242666.P5670189184176055733

`record[A137241(A242662(n))]`
-/

namespace A242666.P5670189184176055733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A242662 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242666.P5670189184176055733

/-! ## A242666.P12371610027524282241

`A008615(∩[6*n, A242662(n)])`
-/

namespace A242666.P12371610027524282241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A242666.P12371610027524282241

/-! ## A242666.P17877654745198316398

`eq[0, A089598(A183079(n+1))]`
-/

namespace A242666.P17877654745198316398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (A183079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242666.P17877654745198316398

/-! ## A242666.P15251394477095067140

`eq[1, A049347(A183079(n+1)-1)]`
-/

namespace A242666.P15251394477095067140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A183079 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242666.P15251394477095067140

/-! ## A242666.P1193702582278842827

`lt[A049347(A183079(n+1)), A000007(n)]`
-/

namespace A242666.P1193702582278842827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A183079 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242666.P1193702582278842827

/-!
# A242667: Number of ways of representing n as the sum of one or more consecutive squarefree numbers.

The programs for A242667, there is no canonical definition to state claims against.
-/

/-! ## A242667.P15595078155298331776

`A344319(n+1)%A002162(A279504(n))`
-/

namespace A242667.P15595078155298331776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344319 (n + 1)) (A002162 (A279504 n).toNat)

end

end A242667.P15595078155298331776

/-! ## A242667.P13900971975783183331

`A344319(n+1)-A221836(A110653(n+1))`
-/

namespace A242667.P13900971975783183331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344319 (n + 1) - A221836 (A110653 (n + 1)).toNat

end

end A242667.P13900971975783183331

/-! ## A242667.P7760937130924534996

`A344319(n+1)-A221836(A183104(n+1))`
-/

namespace A242667.P7760937130924534996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344319 (n + 1) - A221836 (A183104 (n + 1)).toNat

end

end A242667.P7760937130924534996

/-! ## A242667.P10051762446143366894

`A344319(n+1)-A235145(A330586(n+1))`
-/

namespace A242667.P10051762446143366894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344319 (n + 1) - A235145 (A330586 (n + 1)).toNat

end

end A242667.P10051762446143366894

/-! ## A242667.P567521326662887404

`C(A344319(n+1), A054911(A062401(n+1)))`
-/

namespace A242667.P567521326662887404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344319 (n + 1)).toNat (A054911 (A062401 (n + 1)).toNat).toNat

end

end A242667.P567521326662887404

/-!
# A242668: Expansion of 1/(1 - 8*x + 16*x^2 + x^4 - 4*x^5).

The programs for A242668, the canonical program `A242668.P12614944941593860828` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242668 has offset 0).

The definition of A242668 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+16x^2+x^4-4x^5))` (program `A242668.P12614944941593860828`, by `A242668.P12614944941593860828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242668.P12614944941593860828

`ogf(1/(1-8x+16x^2+x^4-4x^5))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242668

/-- `ogf(1/(1-8x+16x^2+x^4-4x^5))` -/
def P12614944941593860828.Spec : Prop :=
  ∀ n, P12614944941593860828.a n = A242668 n

theorem P12614944941593860828.correct : P12614944941593860828.Spec := by
  intro n
  simp only [A242668]

end A242668

/-! ## A242668.P4688577601831786622

`4*a(n-1)-a(n-4)+4^n` with `a(0)=1, a(1)=8, a(2)=48, a(3)=256`
-/

namespace A242668.P4688577601831786622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 48, 256] fun n a =>
  4 * a (n - 1) - a (n - 4) + (4 ^ n : ℤ)

end

end A242668.P4688577601831786622

namespace A242668

/-- `4*a(n-1)-a(n-4)+4^n` -/
def P4688577601831786622.Spec : Prop :=
  ∀ n, P4688577601831786622.a n = A242668 n

end A242668

/-! ## A242668.P3689180801971528345

`A000302(n+4)-A206450(n+4)`
-/

namespace A242668.P3689180801971528345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 4) - A206450 (n + 4)

end

end A242668.P3689180801971528345

namespace A242668

/-- `A000302(n+4)-A206450(n+4)` -/
def P3689180801971528345.Spec : Prop :=
  ∀ n, P3689180801971528345.a n = A242668 n

end A242668

/-! ## A242668.P7758045703552923115

`A000079(n+4)²-A206450(n+4)`
-/

namespace A242668.P7758045703552923115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 4) ^ 2 - A206450 (n + 4)

end

end A242668.P7758045703552923115

namespace A242668

/-- `A000079(n+4)²-A206450(n+4)` -/
def P7758045703552923115.Spec : Prop :=
  ∀ n, P7758045703552923115.a n = A242668 n

end A242668

/-! ## A242668.P11955898860483665192

`A000079(n+8)*A000079(n)-A206450(n+4)`
-/

namespace A242668.P11955898860483665192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 8) * A000079 n - A206450 (n + 4)

end

end A242668.P11955898860483665192

namespace A242668

/-- `A000079(n+8)*A000079(n)-A206450(n+4)` -/
def P11955898860483665192.Spec : Prop :=
  ∀ n, P11955898860483665192.a n = A242668 n

end A242668

/-! ## A242668.P6692748556480047908

`(A000079(n+1)*A000079(n+7))%A206450(n+4)`
-/

namespace A242668.P6692748556480047908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 1) * A000079 (n + 7)) (A206450 (n + 4))

end

end A242668.P6692748556480047908

namespace A242668

/-- `(A000079(n+1)*A000079(n+7))%A206450(n+4)` -/
def P6692748556480047908.Spec : Prop :=
  ∀ n, P6692748556480047908.a n = A242668 n

end A242668

/-! ## A242668.P6946690188953168649

`A255660(A000217(n+3))-A206450(n+4)`
-/

namespace A242668.P6946690188953168649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (A000217 (n + 3)).toNat - A206450 (n + 4)

end

end A242668.P6946690188953168649

namespace A242668

/-- `A255660(A000217(n+3))-A206450(n+4)` -/
def P6946690188953168649.Spec : Prop :=
  ∀ n, P6946690188953168649.a n = A242668 n

end A242668

/-!
# A242669: a(n) = n*floor(n/3).

The programs for A242669, the canonical program `A242669.P17955834880435714991` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242669 has offset 0).

The definition of A242669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*floor(n/3)` (program `A242669.P17955834880435714991`, by `A242669.P17955834880435714991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242669.P17955834880435714991

`n*floor(n/3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242669

/-- `n*floor(n/3)` -/
def P17955834880435714991.Spec : Prop :=
  ∀ n, P17955834880435714991.a n = A242669 n

theorem P17955834880435714991.correct : P17955834880435714991.Spec := by
  intro n
  simp only [A242669]

end A242669

/-! ## A242669.P13609595217763980688

`floor(floor(n/3)/acot(n))`
-/

namespace A242669.P13609595217763980688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 3⌋ : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

end

end A242669.P13609595217763980688

namespace A242669

/-- `floor(floor(n/3)/acot(n))` -/
def P13609595217763980688.Spec : Prop :=
  ∀ n, P13609595217763980688.a n = A242669 n

end A242669

/-! ## A242669.P5793151661594847155

`n*(n-n%3)/3`
-/

namespace A242669.P5793151661594847155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - ((n % 3 : ℕ) : ℤ)) : ℚ) / 3

end

end A242669.P5793151661594847155

namespace A242669

/-- `n*(n-n%3)/3` -/
def P5793151661594847155.Spec : Prop :=
  ∀ n, P5793151661594847155.a n = (A242669 n : ℚ)

end A242669

/-! ## A242669.P3846951318080222325

`lcm(n, n*round((n-1)/3))`
-/

namespace A242669.P3846951318080222325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3))

end

end A242669.P3846951318080222325

namespace A242669

/-- `lcm(n, n*round((n-1)/3))` -/
def P3846951318080222325.Spec : Prop :=
  ∀ n, (P3846951318080222325.a n : ℤ) = A242669 n

end A242669

/-! ## A242669.P10330411111347762907

`n*∑[1-n²%3]-n`
-/

namespace A242669.P10330411111347762907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A242669.P10330411111347762907

namespace A242669

/-- `n*∑[1-n²%3]-n` -/
def P10330411111347762907.Spec : Prop :=
  ∀ n, P10330411111347762907.a n = A242669 n

end A242669

/-! ## A242669.P10999189706396340709

`floor(n*∑[a(n-3)²])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A242669.P10999189706396340709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242669.P10999189706396340709

namespace A242669

/-- `floor(n*∑[a(n-3)²])` -/
def P10999189706396340709.Spec : Prop :=
  ∀ n, (P10999189706396340709.a n : ℤ) = A242669 n

end A242669

/-! ## A242669.P10634150940724268391

`n*∑[a(n-3)²]-n` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A242669.P10634150940724268391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A242669.P10634150940724268391

namespace A242669

/-- `n*∑[a(n-3)²]-n` -/
def P10634150940724268391.Spec : Prop :=
  ∀ n, P10634150940724268391.a n = A242669 n

end A242669

/-! ## A242669.P3623811275250384256

`n*∑[floor(a(n-3))]-n` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A242669.P3623811275250384256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A242669.P3623811275250384256

namespace A242669

/-- `n*∑[floor(a(n-3))]-n` -/
def P3623811275250384256.Spec : Prop :=
  ∀ n, P3623811275250384256.a n = A242669 n

end A242669

/-! ## A242669.P10099052234503379204

`n*(comp[xor(1, n)+n-1]-n)-n`
-/

namespace A242669.P10099052234503379204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n + n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) - (n : ℤ)

end

end A242669.P10099052234503379204

namespace A242669

/-- `n*(comp[xor(1, n)+n-1]-n)-n` -/
def P10099052234503379204.Spec : Prop :=
  ∀ n, P10099052234503379204.a n = A242669 n

end A242669

/-! ## A242669.P5270883440332797609

`abs(n*(n-A265667(n)))`
-/

namespace A242669.P5270883440332797609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((n : ℤ) - A265667 n)|

end

end A242669.P5270883440332797609

namespace A242669

/-- `abs(n*(n-A265667(n)))` -/
def P5270883440332797609.Spec : Prop :=
  ∀ n, P5270883440332797609.a n = A242669 n

end A242669

/-! ## A242669.P11746248941779399305

`n*comp[A004767(n)]-n²`
-/

namespace A242669.P11746248941779399305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n ^ 2 : ℤ)

end

end A242669.P11746248941779399305

namespace A242669

/-- `n*comp[A004767(n)]-n²` -/
def P11746248941779399305.Spec : Prop :=
  ∀ n, P11746248941779399305.a n = A242669 n

end A242669

/-! ## A242669.P8358915359094351727

`n²-n*A322042(n+1)`
-/

namespace A242669.P8358915359094351727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) * A322042 (n + 1)

end

end A242669.P8358915359094351727

namespace A242669

/-- `n²-n*A322042(n+1)` -/
def P8358915359094351727.Spec : Prop :=
  ∀ n, P8358915359094351727.a n = A242669 n

end A242669

/-! ## A242669.P17844783939943174815

`n*∑[A001222(gcd(n, n+3))]-n`
-/

namespace A242669.P17844783939943174815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A242669.P17844783939943174815

namespace A242669

/-- `n*∑[A001222(gcd(n, n+3))]-n` -/
def P17844783939943174815.Spec : Prop :=
  ∀ n, P17844783939943174815.a n = A242669 n

end A242669

/-! ## A242669.P12065616263700463767

`A138984(n+1)-A047223(n+1)`
-/

namespace A242669.P12065616263700463767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138984 (n + 1) - A047223 (n + 1)

end

end A242669.P12065616263700463767

namespace A242669

/-- `A138984(n+1)-A047223(n+1)` -/
def P12065616263700463767.Spec : Prop :=
  ∀ n, P12065616263700463767.a n = A242669 n

theorem P12065616263700463767.correct : P12065616263700463767.Spec := by
  intro n
  simp only [A242669, Nat.add_sub_cancel, A242669.P12065616263700463767.a, A242669.P17955834880435714991.a, A047223, A047223.P7534616584620956338.a, A138984, A138984.P1039901907424211918.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242669

/-! ## A242669.P11261286057365708347

`A211546(n)+A211534(n+3)`
-/

namespace A242669.P11261286057365708347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211546 n + A211534 (n + 3)

end

end A242669.P11261286057365708347

namespace A242669

/-- `A211546(n)+A211534(n+3)` -/
def P11261286057365708347.Spec : Prop :=
  ∀ n, P11261286057365708347.a n = A242669 n

end A242669

/-! ## A242669.P11731500916608491333

`A296160(A042968(n+1))`
-/

namespace A242669.P11731500916608491333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296160 (A042968 (n + 1)).toNat

end

end A242669.P11731500916608491333

namespace A242669

/-- `A296160(A042968(n+1))` -/
def P11731500916608491333.Spec : Prop :=
  ∀ n, P11731500916608491333.a n = A242669 n

end A242669

/-! ## A242669.P107488145991717661

`A008724(A047240(n+1))`
-/

namespace A242669.P107488145991717661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (A047240 (n + 1)).toNat

end

end A242669.P107488145991717661

namespace A242669

/-- `A008724(A047240(n+1))` -/
def P107488145991717661.Spec : Prop :=
  ∀ n, P107488145991717661.a n = A242669 n

end A242669

/-! ## A242669.P4939823687588266554

`A174709(A047228(n+1))`
-/

namespace A242669.P4939823687588266554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (A047228 (n + 1)).toNat

end

end A242669.P4939823687588266554

namespace A242669

/-- `A174709(A047228(n+1))` -/
def P4939823687588266554.Spec : Prop :=
  ∀ n, P4939823687588266554.a n = A242669 n

end A242669

/-!
# A242671: Decimal expansion of k2, a Diophantine approximation constant such that the area of the "critical parallelogram" (in this case a square) is 4*k2.

The programs for A242671, there is no canonical definition to state claims against.
-/

/-! ## A242671.P13557262197597956377

`9-A244847(n)`
-/

namespace A242671.P13557262197597956377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A244847 n

end

end A242671.P13557262197597956377

/-! ## A242671.P15978380538800572328

`A020761(n)+A002163(n)`
-/

namespace A242671.P15978380538800572328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n + A002163 (n + 1)

end

end A242671.P15978380538800572328

/-! ## A242671.P896392040124376836

`A098317(n)+3*A000007(n)`
-/

namespace A242671.P896392040124376836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 (n + 1) + 3 * A000007 n

end

end A242671.P896392040124376836

/-! ## A242671.P18147401832533923859

`2*A098317(n)-A134972(n)`
-/

namespace A242671.P18147401832533923859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098317 (n + 1) - A134972 (n + 1)

end

end A242671.P18147401832533923859

/-! ## A242671.P8300250617938958752

`A098317(4*A000038(n)+n)`
-/

namespace A242671.P8300250617938958752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 ((4 * A000038 n + (n : ℤ)).toNat + 1)

end

end A242671.P8300250617938958752

/-! ## A242671.P4602688879665751629

`A002163(n)+5*A000007(n)`
-/

namespace A242671.P4602688879665751629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + 5 * A000007 n

end

end A242671.P4602688879665751629

/-! ## A242671.P15175845807337721024

`10+A002163(n)-A040020(n)`
-/

namespace A242671.P15175845807337721024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 + (A002163 (n + 1) - A040020 n)

end

end A242671.P15175845807337721024

/-! ## A242671.P2083319772613336222

`dr(A040020(n)²*A134972(n))`
-/

namespace A242671.P2083319772613336222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040020 n ^ 2 * A134972 (n + 1))

end

end A242671.P2083319772613336222

/-! ## A242671.P17331892454365622785

`dr(A040012(n)²²*A098317(n))`
-/

namespace A242671.P17331892454365622785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((A040012 n ^ 2) ^ 2 * A098317 (n + 1))

end

end A242671.P17331892454365622785

/-! ## A242671.P4848060072941877959

`A098317(n)+A034523(a(n-1)+1)` with `a(0)=7`
-/

namespace A242671.P4848060072941877959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A098317 (n + 1) + A034523 (a (n - 1) + 1).toNat

end

end A242671.P4848060072941877959

/-! ## A242671.P13548519212819769310

`A169585(A081611(n))+A098317(n)`
-/

namespace A242671.P13548519212819769310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (A081611 n).toNat + A098317 (n + 1)

end

end A242671.P13548519212819769310

/-! ## A242671.P9765457521889458228

`A132338(n)+A229780(n)-A225667(n)`
-/

namespace A242671.P9765457521889458228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132338 n + (A229780 n - A225667 (n + 1))

end

end A242671.P9765457521889458228

/-! ## A242671.P7039632613305890205

`or(A134972(A020761(n)+n), A020761(n))`
-/

namespace A242671.P7039632613305890205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134972 ((A020761 n + (n : ℤ)).toNat + 1)) (A020761 n)

end

end A242671.P7039632613305890205

/-! ## A242671.P8764589690097549732

`A098317(n)-A034523(A046817(a(n-1)))` with `a(0)=7`
-/

namespace A242671.P8764589690097549732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A098317 (n + 1) - A034523 (A046817 (a (n - 1)).toNat).toNat

end

end A242671.P8764589690097549732

/-! ## A242671.P2916463975175257190

`A079585(n+1)+A229780(n)-A225667(n)`
-/

namespace A242671.P2916463975175257190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1 + 1) + (A229780 n - A225667 (n + 1))

end

end A242671.P2916463975175257190

/-! ## A242671.P3443178483028394692

`A152623(n+1)+A002163(n)`
-/

namespace A242671.P3443178483028394692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152623 (n + 1 + 1) + A002163 (n + 1)

end

end A242671.P3443178483028394692

/-! ## A242671.P12591505413292251594

`A169585(n+1)+A098317(n)`
-/

namespace A242671.P12591505413292251594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (n + 1) + A098317 (n + 1)

end

end A242671.P12591505413292251594

/-! ## A242671.P13373436828575456146

`A002163(n+1)+Δ[A244847(n)]`
-/

namespace A242671.P13373436828575456146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1 + 1) + (f1 (n + 1) - f1 n)

end

end A242671.P13373436828575456146

/-! ## A242671.P6757788947932099403

`A094874(n+1)+A229780(n)-A225667(n)`
-/

namespace A242671.P6757788947932099403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094874 (n + 1 + 1) + (A229780 n - A225667 (n + 1))

end

end A242671.P6757788947932099403

/-! ## A242671.P3840775231412793067

`A109866(n+2)+A229780(n)-A225667(n)`
-/

namespace A242671.P3840775231412793067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 2) + (A229780 n - A225667 (n + 1))

end

end A242671.P3840775231412793067

/-!
# A242675: Smallest prime with exactly n representations as sum of 3 distinct positive squares.

The programs for A242675, there is no canonical definition to state claims against.
-/

/-! ## A242675.P6706028861258456772

`filter[A344620(2*n+1), A189664(#)]`
-/

namespace A242675.P6706028861258456772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344620 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189664 (f1 j).toNat = 1) n)

end

end A242675.P6706028861258456772

/-!
# A242676: a(n) = |Stirling1(4*n,n)|.

The programs for A242676, there is no canonical definition to state claims against.
-/

/-! ## A242676.P16715049615051069598

`A132393(A139276(n))`
-/

namespace A242676.P16715049615051069598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A139276 n).toNat

end

end A242676.P16715049615051069598

/-! ## A242676.P2761427105874252482

`A094638(A139275(n)+1)`
-/

namespace A242676.P2761427105874252482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A139275 n + 1).toNat

end

end A242676.P2761427105874252482

/-! ## A242676.P11958162771003488899

`A132393(n*A017101(n))`
-/

namespace A242676.P11958162771003488899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 ((n : ℤ) * A017101 n).toNat

end

end A242676.P11958162771003488899

/-! ## A242676.P8090873578071950476

`A132393(A014105(2*n)+n)`
-/

namespace A242676.P8090873578071950476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A014105 (2 * n) + (n : ℤ)).toNat

end

end A242676.P8090873578071950476

/-! ## A242676.P2340855630561330812

`A094638(A058331(2*n)+n)`
-/

namespace A242676.P2340855630561330812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A058331 (2 * n) + (n : ℤ)).toNat

end

end A242676.P2340855630561330812

/-!
# A242677: Semiprimes whose binary representation, read in decimal, is also semiprime.

The programs for A242677, the canonical program `A242677.P4071707202624245255` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242677 has offset 1).

The definition of A242677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242677.P4071707202624245255

`eq[A105700(n)², A077809(A257088(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A242677

/-- `eq[A105700(n)², A077809(A257088(n))]` -/
def P4071707202624245255.Spec : Prop :=
  ∀ n, (P4071707202624245255.a n : ℤ) = A242677 (n + 1)

theorem P4071707202624245255.correct : P4071707202624245255.Spec := by
  intro n
  simp only [A242677, Nat.add_sub_cancel]

end A242677

/-! ## A242677.P5500251478591010323

`eq[A105700(n)², A077809(A233583(n+1))]`
-/

namespace A242677.P5500251478591010323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077809 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242677.P5500251478591010323

namespace A242677

/-- `eq[A105700(n)², A077809(A233583(n+1))]` -/
def P5500251478591010323.Spec : Prop :=
  ∀ n, (P5500251478591010323.a n : ℤ) = A242677 (n + 1)

end A242677

/-!
# A242678: The number of ways that a score of n can be obtained using three darts on a standard dartboard.

The programs for A242678, there is no canonical definition to state claims against.
-/

/-! ## A242678.P9486645045362672836

`A001399(n)-A102681(A052551(n))`
-/

namespace A242678.P9486645045362672836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A102681 (A052551 n).toNat

end

end A242678.P9486645045362672836

/-! ## A242678.P1862147168768220103

`A001399(n)-A276134(A185203(n))`
-/

namespace A242678.P1862147168768220103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A276134 (A185203 n).toNat

end

end A242678.P1862147168768220103

/-! ## A242678.P7587517688351271906

`A001399(n)-A102681(A056453(n+1))`
-/

namespace A242678.P7587517688351271906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A102681 (A056453 (n + 1)).toNat

end

end A242678.P7587517688351271906

/-! ## A242678.P10769222576204500635

`A001399(n)-A185284(A033948(n+1))`
-/

namespace A242678.P10769222576204500635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A185284 (A033948 (n + 1)).toNat

end

end A242678.P10769222576204500635

/-!
# A242679: Bobo numbers: Numbers k with the property that floor(e*k) = least m with Sum_{j=k..m} 1/j > 1.

The programs for A242679, there is no canonical definition to state claims against.
-/

/-! ## A242679.P1632503414433000442

`eq[floor(e*n), A103762(A055456(n+1))]`
-/

namespace A242679.P1632503414433000442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (A055456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242679.P1632503414433000442

/-! ## A242679.P9771201193556642623

`∑[xor(5, A340675(A126646(n)))]`
-/

namespace A242679.P9771201193556642623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A340675 (A126646 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242679.P9771201193556642623

/-! ## A242679.P18337527851130783414

`∑[A310769(A340673(∑[2^n]))]`
-/

namespace A242679.P18337527851130783414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310769 (A340673 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242679.P18337527851130783414

/-! ## A242679.P2934351987912763521

`∑[A016777(A340675(A126646(n)))]`
-/

namespace A242679.P2934351987912763521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A340675 (A126646 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242679.P2934351987912763521

/-! ## A242679.P17561587897625742277

`∑[xor(5, A020639(A013617(n+10)))]`
-/

namespace A242679.P17561587897625742277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A020639 (A013617 (n + 10)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242679.P17561587897625742277

/-!
# A242681: The number of ways that a score of n can be obtained using two darts on a standard dartboard.

The programs for A242681, there is no canonical definition to state claims against.
-/

/-! ## A242681.P13344528673747817678

`∑[(A097030(n+1)-A242718(n+1)+n)%2]`
-/

namespace A242681.P13344528673747817678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097030 (n + 1) - A242718 (n + 1) + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242681.P13344528673747817678

/-! ## A242681.P15967516686325507031

`∑[and(n+1, A097806(n*A070090(n+1)²²²))]`
-/

namespace A242681.P15967516686325507031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A097806 ((n : ℤ) * ((A070090 (n + 1) ^ 2) ^ 2) ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242681.P15967516686325507031

/-! ## A242681.P2489815424515845438

`∑[A097806(n*A070090(n+1)²²²)]-A110654(n)`
-/

namespace A242681.P2489815424515845438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 ((n : ℤ) * ((A070090 (n + 1) ^ 2) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 n

end

end A242681.P2489815424515845438

/-! ## A242681.P16712917655085869125

`A327704(A040039(n))`
-/

namespace A242681.P16712917655085869125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327704 (A040039 n).toNat

end

end A242681.P16712917655085869125

/-! ## A242681.P16644107694863248584

`∑[A156728(A141056(n))]`
-/

namespace A242681.P16644107694863248584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (A141056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242681.P16644107694863248584

/-!
# A242682: Number of partitions of n with difference -10 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242682, there is no canonical definition to state claims against.
-/

/-! ## A242682.P1850891727385292061

`A352566(A070875(n))`
-/

namespace A242682.P1850891727385292061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352566 (A070875 n).toNat

end

end A242682.P1850891727385292061

/-! ## A242682.P5802069300361400074

`A352554(A134693(n+1))`
-/

namespace A242682.P5802069300361400074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352554 (A134693 (n + 1)).toNat

end

end A242682.P5802069300361400074

/-! ## A242682.P18128775089640630148

`A381895(lt[A034328(n), 2])`
-/

namespace A242682.P18128775089640630148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034328 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381895 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A242682.P18128775089640630148

/-! ## A242682.P6205184124308356979

`A381895(eq[1, A166293(n+1)])`
-/

namespace A242682.P6205184124308356979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242682.P6205184124308356979

/-! ## A242682.P17475524514176505695

`A103919(A062691(n+1)-(n+1))`
-/

namespace A242682.P17475524514176505695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A062691 (n + 1) - (n + 1 : ℤ)).toNat

end

end A242682.P17475524514176505695

/-!
# A242695: Number of partitions of n with difference 4 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242695, there is no canonical definition to state claims against.
-/

/-! ## A242695.P17507280935039568500

`or(A053824(A111429(n)), A309097(n))`
-/

namespace A242695.P17507280935039568500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053824 (A111429 n).toNat) (A309097 n)

end

end A242695.P17507280935039568500

/-! ## A242695.P15118076409311664019

`xor(A238867(n), A238956(A238919(n)))`
-/

namespace A242695.P15118076409311664019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A238867 n) (A238956 (A238919 n).toNat)

end

end A242695.P15118076409311664019

/-! ## A242695.P17412174824984264579

`A008631(n)-A324088(A213332(n+1))`
-/

namespace A242695.P17412174824984264579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008631 n - A324088 (A213332 (n + 1)).toNat

end

end A242695.P17412174824984264579

/-! ## A242695.P1091135274144895203

`A000041(n)-A260737(A117289(2^n))`
-/

namespace A242695.P1091135274144895203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A260737 (A117289 (2 ^ n)).toNat

end

end A242695.P1091135274144895203

/-! ## A242695.P11872535625325301790

`or(A171882(A300811(n+1)), A238863(n))`
-/

namespace A242695.P11872535625325301790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171882 (A300811 (n + 1)).toNat) (A238863 n)

end

end A242695.P11872535625325301790

/-!
# A242696: Number of partitions of n with difference 5 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242696, there is no canonical definition to state claims against.
-/

/-! ## A242696.P9415735755922870500

`∑[A340524(∑[A069799(n+1)])]`
-/

namespace A242696.P9415735755922870500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340524 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242696.P9415735755922870500

/-! ## A242696.P4459914214892500313

`A000041(n)-A185284((5-n)²)%8`
-/

namespace A242696.P4459914214892500313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - Int.tmod (A185284 ((5 - (n : ℤ)) ^ 2).toNat) 8

end

end A242696.P4459914214892500313

/-! ## A242696.P4825834909638209807

`A173452(A173503(n))+A000041(n)`
-/

namespace A242696.P4825834909638209807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173452 (A173503 n).toNat + A000041 n

end

end A242696.P4825834909638209807

/-! ## A242696.P3786764774460091559

`A000041(n)-A076282(A008288(n))`
-/

namespace A242696.P3786764774460091559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A076282 (A008288 n).toNat

end

end A242696.P3786764774460091559

/-! ## A242696.P7841541976268198194

`A000041(n)-A076282(A026780(n))`
-/

namespace A242696.P7841541976268198194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A076282 (A026780 n).toNat

end

end A242696.P7841541976268198194

/-!
# A242697: Number of partitions of n with difference 6 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242697, there is no canonical definition to state claims against.
-/

/-! ## A242697.P16472299210944585695

`A000041(n)-A036593(A036601(n))`
-/

namespace A242697.P16472299210944585695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A036593 (A036601 n).toNat

end

end A242697.P16472299210944585695

/-! ## A242697.P6221944175015952370

`A000041(n)-A061522(A174617(n))`
-/

namespace A242697.P6221944175015952370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A061522 (A174617 n).toNat

end

end A242697.P6221944175015952370

/-! ## A242697.P8253398962332092968

`A000041(n)-A091245(A185213(n))`
-/

namespace A242697.P8253398962332092968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A091245 (A185213 n).toNat

end

end A242697.P8253398962332092968

/-! ## A242697.P15543288628608584574

`A000041(n)-A266948(A014382(n))`
-/

namespace A242697.P15543288628608584574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A266948 (A014382 n).toNat

end

end A242697.P15543288628608584574

/-! ## A242697.P6291770925739737539

`A000041(n)-A324233(A128325(n))`
-/

namespace A242697.P6291770925739737539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A324233 (A128325 n).toNat

end

end A242697.P6291770925739737539

/-!
# A242698: Number of partitions of n with difference 7 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242698, there is no canonical definition to state claims against.
-/

/-! ## A242698.P116376963441523678

`A000041(n)-and(8, A106646(n+1))`
-/

namespace A242698.P116376963441523678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - Int.land 8 (A106646 (n + 1))

end

end A242698.P116376963441523678

/-! ## A242698.P5705297047884027521

`A256974(A068118(n))+A000041(n)`
-/

namespace A242698.P5705297047884027521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A068118 n).toNat + A000041 n

end

end A242698.P5705297047884027521

/-! ## A242698.P861722593914680062

`A000041(n)-A052036(A069646(n))`
-/

namespace A242698.P861722593914680062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A052036 (A069646 n).toNat

end

end A242698.P861722593914680062

/-! ## A242698.P9560574985880523560

`A000041(n)-A089859(A184955(n))`
-/

namespace A242698.P9560574985880523560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A089859 (A184955 n).toNat

end

end A242698.P9560574985880523560

/-! ## A242698.P13224556848642352987

`A000041(n)-A241831(A288683(n))`
-/

namespace A242698.P13224556848642352987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241831 (A288683 n).toNat

end

end A242698.P13224556848642352987

/-!
# A242699: Number of partitions of n with difference 8 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242699, there is no canonical definition to state claims against.
-/

/-! ## A242699.P8355615958479648951

`A000041(n)-A099999(A050447(n))`
-/

namespace A242699.P8355615958479648951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A099999 (A050447 n).toNat

end

end A242699.P8355615958479648951

/-! ## A242699.P13087482429276143543

`A000041(n)-A135551(A179961(n))`
-/

namespace A242699.P13087482429276143543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A135551 (A179961 n).toNat

end

end A242699.P13087482429276143543

/-! ## A242699.P5046948360864614607

`A000041(n)-A238012(A165656(n))`
-/

namespace A242699.P5046948360864614607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A238012 (A165656 n).toNat

end

end A242699.P5046948360864614607

/-! ## A242699.P3429750131931531325

`A000041(n)-A238012(A185063(n))`
-/

namespace A242699.P3429750131931531325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A238012 (A185063 n).toNat

end

end A242699.P3429750131931531325

/-! ## A242699.P6194449118647206821

`A000041(n)-A198316(A246106(n))`
-/

namespace A242699.P6194449118647206821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A198316 (A246106 n).toNat

end

end A242699.P6194449118647206821

