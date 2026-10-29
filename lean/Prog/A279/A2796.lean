import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A279600: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A279600, there is no canonical definition to state claims against.
-/

/-! ## A279600.P11977851448648781304

`A280140(A032559(n+1)-A229142(n))`
-/

namespace A279600.P11977851448648781304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280140 (A032559 (n + 1) - A229142 n).toNat

end

end A279600.P11977851448648781304

/-!
# A279601: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A279601, there is no canonical definition to state claims against.
-/

/-! ## A279601.P17819396818050306905

`A007088(A279603(n))`
-/

namespace A279601.P17819396818050306905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279603 n).toNat

end

end A279601.P17819396818050306905

/-! ## A279601.P16692689306160830473

`A185544(2*A279603(n))`
-/

namespace A279601.P16692689306160830473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279603 n).toNat

end

end A279601.P16692689306160830473

/-! ## A279601.P2633149337884105344

`A279698(∑[C(∑{d}[n+1, #], 20)]+n)`
-/

namespace A279601.P2633149337884105344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f2 n), d) 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279698 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A279601.P2633149337884105344

/-! ## A279601.P14709888197795846474

`A279698(A062399(n))`
-/

namespace A279601.P14709888197795846474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279698 (A062399 n).toNat

end

end A279601.P14709888197795846474

/-! ## A279601.P869293361811783250

`A279698(A120126(n))`
-/

namespace A279601.P869293361811783250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279698 (A120126 n).toNat

end

end A279601.P869293361811783250

/-!
# A279602: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A279602, there is no canonical definition to state claims against.
-/

/-! ## A279602.P16005431086915125199

`A007088(A279604(n))`
-/

namespace A279602.P16005431086915125199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279604 n).toNat

end

end A279602.P16005431086915125199

/-! ## A279602.P2572488421523778073

`A185544(2*A279604(n))`
-/

namespace A279602.P2572488421523778073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279604 n).toNat

end

end A279602.P2572488421523778073

/-! ## A279602.P8109815942946893493

`A279699(A062399(n))`
-/

namespace A279602.P8109815942946893493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279699 (A062399 n).toNat

end

end A279602.P8109815942946893493

/-! ## A279602.P12875719237216578271

`A279699(A120126(n))`
-/

namespace A279602.P12875719237216578271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279699 (A120126 n).toNat

end

end A279602.P12875719237216578271

/-! ## A279602.P12629925614281239573

`A279699(A351870(n))`
-/

namespace A279602.P12629925614281239573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279699 (A351870 n).toNat

end

end A279602.P12629925614281239573

/-!
# A279603: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A279603, there is no canonical definition to state claims against.
-/

/-! ## A279603.P17780032683356146088

`A279700(A062399(n))`
-/

namespace A279603.P17780032683356146088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279700 (A062399 n).toNat

end

end A279603.P17780032683356146088

/-! ## A279603.P9603229511231006141

`A279700(A120126(n))`
-/

namespace A279603.P9603229511231006141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279700 (A120126 n).toNat

end

end A279603.P9603229511231006141

/-! ## A279603.P15540521840282049657

`A279700(A351870(n))`
-/

namespace A279603.P15540521840282049657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279700 (A351870 n).toNat

end

end A279603.P15540521840282049657

/-! ## A279603.P15353836267711474114

`A279700(A342128(∑[n]))`
-/

namespace A279603.P15353836267711474114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279700 (A342128 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A279603.P15353836267711474114

/-! ## A279603.P460569187694704153

`A279700(A004894(n+1))`
-/

namespace A279603.P460569187694704153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279700 (A004894 (n + 1)).toNat

end

end A279603.P460569187694704153

/-!
# A279604: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 177", based on the 5-celled von Neumann neighborhood.

The programs for A279604, there is no canonical definition to state claims against.
-/

/-! ## A279604.P7042511709188439079

`A279701(A062399(n))`
-/

namespace A279604.P7042511709188439079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279701 (A062399 n).toNat

end

end A279604.P7042511709188439079

/-! ## A279604.P15687794518410941935

`A279701(A120126(n))`
-/

namespace A279604.P15687794518410941935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279701 (A120126 n).toNat

end

end A279604.P15687794518410941935

/-! ## A279604.P11565753126153064934

`A279701(A351870(n))`
-/

namespace A279604.P11565753126153064934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279701 (A351870 n).toNat

end

end A279604.P11565753126153064934

/-! ## A279604.P7315719477552082060

`A279701(A004894(n+1))`
-/

namespace A279604.P7315719477552082060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279701 (A004894 (n + 1)).toNat

end

end A279604.P7315719477552082060

/-! ## A279604.P3184417666866555226

`A279701(A004905(n+1))`
-/

namespace A279604.P3184417666866555226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279701 (A004905 (n + 1)).toNat

end

end A279604.P3184417666866555226

/-!
# A279607: Beatty sequence for e/2; i.e., a(n) = floor(n*e/2).

The programs for A279607, the canonical program `A279607.P6323994904580178184` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279607 has offset 1).

The definition of A279607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*e/2)` (program `A279607.P6323994904580178184`, by `A279607.P6323994904580178184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279607.P6323994904580178184

`floor((n+1)*e/2)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279607

/-- `floor((n+1)*e/2)` -/
def P6323994904580178184.Spec : Prop :=
  ∀ n, P6323994904580178184.a n = A279607 (n + 1)

theorem P6323994904580178184.correct : P6323994904580178184.Spec := by
  intro n
  simp only [A279607, Nat.add_sub_cancel]

end A279607

/-! ## A279607.P18326851773898549082

`ceil(A184589(n+1)/2)`
-/

namespace A279607.P18326851773898549082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184589 (n + 1) : ℚ) / 2⌉

end

end A279607.P18326851773898549082

namespace A279607

/-- `ceil(A184589(n+1)/2)` -/
def P18326851773898549082.Spec : Prop :=
  ∀ n, P18326851773898549082.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P1039924872596844824

`ceil((A022843(n+1)-1)/2)`
-/

namespace A279607.P1039924872596844824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022843 (n + 1) - 1 : ℚ) / 2⌉

end

end A279607.P1039924872596844824

namespace A279607

/-- `ceil((A022843(n+1)-1)/2)` -/
def P1039924872596844824.Spec : Prop :=
  ∀ n, P1039924872596844824.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P5597025693204343976

`2*(n+1)-A195124(n+1)`
-/

namespace A279607.P5597025693204343976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A195124 (n + 1)

end

end A279607.P5597025693204343976

namespace A279607

/-- `2*(n+1)-A195124(n+1)` -/
def P5597025693204343976.Spec : Prop :=
  ∀ n, P5597025693204343976.a n = A279607 (n + 1)

theorem P5597025693204343976.correct : P5597025693204343976.Spec := by
  intro n
  simp only [A279607, Nat.add_sub_cancel, A279607.P5597025693204343976.a, A279607.P6323994904580178184.a, A195124, A195124.P13812946285917995958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A279607

/-! ## A279607.P655623689644705627

`ceil((∑[A276859(n+1)-1]+n)/2)`
-/

namespace A279607.P655623689644705627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ) : ℚ) / 2⌉

end

end A279607.P655623689644705627

namespace A279607

/-- `ceil((∑[A276859(n+1)-1]+n)/2)` -/
def P655623689644705627.Spec : Prop :=
  ∀ n, P655623689644705627.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P5677800447664529938

`∑[gcd(A022843(n)+1, A022843(n+1))]`
-/

namespace A279607.P5677800447664529938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022843 n + 1) (A022843 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279607.P5677800447664529938

namespace A279607

/-- `∑[gcd(A022843(n)+1, A022843(n+1))]` -/
def P5677800447664529938.Spec : Prop :=
  ∀ n, (P5677800447664529938.a n : ℤ) = A279607 (n + 1)

end A279607

/-! ## A279607.P10390733354894254535

`ceil(record[A108599(n+1)-1]/2)`
-/

namespace A279607.P10390733354894254535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A279607.P10390733354894254535

namespace A279607

/-- `ceil(record[A108599(n+1)-1]/2)` -/
def P10390733354894254535.Spec : Prop :=
  ∀ n, P10390733354894254535.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P13184622732615337004

`ceil((A108599(A054385(n+1))-1)/2)`
-/

namespace A279607.P13184622732615337004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108599 (A054385 (n + 1)).toNat - 1 : ℚ) / 2⌉

end

end A279607.P13184622732615337004

namespace A279607

/-- `ceil((A108599(A054385(n+1))-1)/2)` -/
def P13184622732615337004.Spec : Prop :=
  ∀ n, P13184622732615337004.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P11786359531357152186

`A065033(A184589(n+1))`
-/

namespace A279607.P11786359531357152186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A184589 (n + 1)).toNat

end

end A279607.P11786359531357152186

namespace A279607

/-- `A065033(A184589(n+1))` -/
def P11786359531357152186.Spec : Prop :=
  ∀ n, P11786359531357152186.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P12341341138983767122

`A110654(A022843(n+1)-1)`
-/

namespace A279607.P12341341138983767122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A022843 (n + 1) - 1).toNat

end

end A279607.P12341341138983767122

namespace A279607

/-- `A110654(A022843(n+1)-1)` -/
def P12341341138983767122.Spec : Prop :=
  ∀ n, P12341341138983767122.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P14551166237090870346

`A008619(A022843(n+1)-2)`
-/

namespace A279607.P14551166237090870346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022843 (n + 1) - 2).toNat

end

end A279607.P14551166237090870346

namespace A279607

/-- `A008619(A022843(n+1)-2)` -/
def P14551166237090870346.Spec : Prop :=
  ∀ n, P14551166237090870346.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P17088735026014569038

`A065033(A000572(n+1)-(n+2))`
-/

namespace A279607.P17088735026014569038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000572 (n + 1) - (n + 2 : ℤ)).toNat

end

end A279607.P17088735026014569038

namespace A279607

/-- `A065033(A000572(n+1)-(n+2))` -/
def P17088735026014569038.Spec : Prop :=
  ∀ n, P17088735026014569038.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P8914746919832485076

`A110654(A000572(n+1)-(n+2))`
-/

namespace A279607.P8914746919832485076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000572 (n + 1) - (n + 2 : ℤ)).toNat

end

end A279607.P8914746919832485076

namespace A279607

/-- `A110654(A000572(n+1)-(n+2))` -/
def P8914746919832485076.Spec : Prop :=
  ∀ n, P8914746919832485076.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P16083916508285178414

`A004526(A022843(n+1))`
-/

namespace A279607.P16083916508285178414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022843 (n + 1)).toNat

end

end A279607.P16083916508285178414

namespace A279607

/-- `A004526(A022843(n+1))` -/
def P16083916508285178414.Spec : Prop :=
  ∀ n, P16083916508285178414.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P3763137208978131538

`A004526(A121384(n+1)-1)`
-/

namespace A279607.P3763137208978131538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A121384 (n + 1) - 1).toNat

end

end A279607.P3763137208978131538

namespace A279607

/-- `A004526(A121384(n+1)-1)` -/
def P3763137208978131538.Spec : Prop :=
  ∀ n, P3763137208978131538.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P6909638238437129266

`A004526(A000572(n+1)-(n+1))`
-/

namespace A279607.P6909638238437129266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000572 (n + 1) - (n + 1 : ℤ)).toNat

end

end A279607.P6909638238437129266

namespace A279607

/-- `A004526(A000572(n+1)-(n+1))` -/
def P6909638238437129266.Spec : Prop :=
  ∀ n, P6909638238437129266.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P5027172045444446582

`A110654(A000210(n+1)+n)`
-/

namespace A279607.P5027172045444446582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000210 (n + 1) + (n : ℤ)).toNat

end

end A279607.P5027172045444446582

namespace A279607

/-- `A110654(A000210(n+1)+n)` -/
def P5027172045444446582.Spec : Prop :=
  ∀ n, P5027172045444446582.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P6115276682738017906

`A004526(A000210(n+1)+1+n)`
-/

namespace A279607.P6115276682738017906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000210 (n + 1) + 1 + (n : ℤ)).toNat

end

end A279607.P6115276682738017906

namespace A279607

/-- `A004526(A000210(n+1)+1+n)` -/
def P6115276682738017906.Spec : Prop :=
  ∀ n, P6115276682738017906.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P11750738850117663692

`A008619(A000210(n+1)-1+n)`
-/

namespace A279607.P11750738850117663692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000210 (n + 1) - 1 + (n : ℤ)).toNat

end

end A279607.P11750738850117663692

namespace A279607

/-- `A008619(A000210(n+1)-1+n)` -/
def P11750738850117663692.Spec : Prop :=
  ∀ n, P11750738850117663692.a n = A279607 (n + 1)

end A279607

/-! ## A279607.P10155059867112065356

`A002265(A276853(n+1))`
-/

namespace A279607.P10155059867112065356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A276853 (n + 1)).toNat

end

end A279607.P10155059867112065356

namespace A279607

/-- `A002265(A276853(n+1))` -/
def P10155059867112065356.Spec : Prop :=
  ∀ n, P10155059867112065356.a n = A279607 (n + 1)

end A279607

/-!
# A279608: Beatty sequence for e/(e - 2); i.e., a(n) = floor(n*e/(e - 2)).

The programs for A279608, the canonical program `A279608.P2253161954195657935` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279608 has offset 1).

The definition of A279608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*e/(e-2))` (program `A279608.P2253161954195657935`, by `A279608.P2253161954195657935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279608.P2253161954195657935

`floor((n+1)*e/(e-2))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279608

/-- `floor((n+1)*e/(e-2))` -/
def P2253161954195657935.Spec : Prop :=
  ∀ n, P2253161954195657935.a n = A279608 (n + 1)

theorem P2253161954195657935.correct : P2253161954195657935.Spec := by
  intro n
  simp only [A279608, Nat.add_sub_cancel]

end A279608

/-! ## A279608.P10417563492075542195

`∩[A054385(n+1), A184588(n+1)]`
-/

namespace A279608.P10417563492075542195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279608.P10417563492075542195

namespace A279608

/-- `∩[A054385(n+1), A184588(n+1)]` -/
def P10417563492075542195.Spec : Prop :=
  ∀ n, (P10417563492075542195.a n : ℤ) = A279608 (n + 1)

end A279608

/-! ## A279608.P5388003092224898083

`A000062(2*(n+1))+n+1`
-/

namespace A279608.P5388003092224898083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000062 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A279608.P5388003092224898083

namespace A279608

/-- `A000062(2*(n+1))+n+1` -/
def P5388003092224898083.Spec : Prop :=
  ∀ n, P5388003092224898083.a n = A279608 (n + 1)

end A279608

/-! ## A279608.P6842984917634991318

`A004396(A330177(n+1))-(n+1)`
-/

namespace A279608.P6842984917634991318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A330177 (n + 1)).toNat - (n + 1 : ℤ)

end

end A279608.P6842984917634991318

namespace A279608

/-- `A004396(A330177(n+1))-(n+1)` -/
def P6842984917634991318.Spec : Prop :=
  ∀ n, P6842984917634991318.a n = A279608 (n + 1)

end A279608

/-! ## A279608.P1801748881084982141

`∩[A004526(A054385(2*n+1)), A054385(n+2)]`
-/

namespace A279608.P1801748881084982141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054385 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279608.P1801748881084982141

namespace A279608

/-- `∩[A004526(A054385(2*n+1)), A054385(n+2)]` -/
def P1801748881084982141.Spec : Prop :=
  ∀ n, (P1801748881084982141.a n : ℤ) = A279608 (n + 1)

end A279608

/-! ## A279608.P12541032884878368334

`A008619(A000062(4*(n+1)))+n`
-/

namespace A279608.P12541032884878368334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000062 (4 * (n + 1))).toNat + (n : ℤ)

end

end A279608.P12541032884878368334

namespace A279608

/-- `A008619(A000062(4*(n+1)))+n` -/
def P12541032884878368334.Spec : Prop :=
  ∀ n, P12541032884878368334.a n = A279608 (n + 1)

end A279608

/-! ## A279608.P5990531875323286285

`A002265(A141310((2*n+1)²)+A017629(n)-A145569(n))+n+1`
-/

namespace A279608.P5990531875323286285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A141310 ((2 * n + 1) ^ 2) + (A017629 n - A145569 n)).toNat + (n + 1 : ℤ)

end

end A279608.P5990531875323286285

namespace A279608

/-- `A002265(A141310((2*n+1)²)+A017629(n)-A145569(n))+n+1` -/
def P5990531875323286285.Spec : Prop :=
  ∀ n, P5990531875323286285.a n = A279608 (n + 1)

end A279608

/-!
# A279609: a(n) = floor(H(k) + exp(H(k))*log(H(k))) - sigma(k) where H(k) is the k-th harmonic number Sum_{j=1..k} 1/j and k is the n-th colossally abundant number A004490(n).

The programs for A279609, there is no canonical definition to state claims against.
-/

/-! ## A279609.P6279381177831229805

`A057641(A002201(n+1))`
-/

namespace A279609.P6279381177831229805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (A002201 (n + 1)).toNat

end

end A279609.P6279381177831229805

/-! ## A279609.P1529702220277828106

`A057641(A004490(n+1))`
-/

namespace A279609.P1529702220277828106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (A004490 (n + 1)).toNat

end

end A279609.P1529702220277828106

/-! ## A279609.P12341962475812529371

`A057641(A224078(n+1))`
-/

namespace A279609.P12341962475812529371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (A224078 (n + 1)).toNat

end

end A279609.P12341962475812529371

/-! ## A279609.P6317068556700209087

`A057641(A263572(n+2))`
-/

namespace A279609.P6317068556700209087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (A263572 (n + 2)).toNat

end

end A279609.P6317068556700209087

/-!
# A279612: Number of ways to write n = x^2 + y^2 + z^2 + w^2 with x + 2*y - 2*z a power of 4 (including 4^0 = 1), where x,y,z,w are nonnegative integers.

The programs for A279612, there is no canonical definition to state claims against.
-/

/-! ## A279612.P12970385330858922726

`A334029(A162753(∑[∏{e}[n, #+1]]-1))`
-/

namespace A279612.P12970385330858922726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (A162753 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A279612.P12970385330858922726

/-!
# A279614: a(1)=1, a(d(x_1)*..*d(x_k)) = 1+a(x_1)+..+a(x_k) where d(n) = n-th Fermi-Dirac prime.

The programs for A279614, there is no canonical definition to state claims against.
-/

/-! ## A279614.P10385413064806931388

`A267145(A000496(n))+A073933(n+1)`
-/

namespace A279614.P10385413064806931388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267145 (A000496 n).toNat + A073933 (n + 1)

end

end A279614.P10385413064806931388

/-! ## A279614.P357076283240240291

`A317658(n+1)+A005614(A030040(n))`
-/

namespace A279614.P357076283240240291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317658 (n + 1) + A005614 (A030040 n).toNat

end

end A279614.P357076283240240291

/-! ## A279614.P9390614895147933074

`A267145(A000496(n))+A265690(n+1)`
-/

namespace A279614.P9390614895147933074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267145 (A000496 n).toNat + A265690 (n + 1)

end

end A279614.P9390614895147933074

/-! ## A279614.P875762145328432004

`A319395(n)+A084510(A187829(n+1))`
-/

namespace A279614.P875762145328432004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n + A084510 (A187829 (n + 1)).toNat

end

end A279614.P875762145328432004

/-!
# A279615: Partial sums of A279315.

The programs for A279615, there is no canonical definition to state claims against.
-/

/-! ## A279615.P2709867188811335224

`∑[A279315(n+1)]`
-/

namespace A279615.P2709867188811335224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279615.P2709867188811335224

/-! ## A279615.P17065924652279709758

`a(n-1)+A279315(n+1)-A159075(n)` with `a(0)=0, a(1)=0`
-/

namespace A279615.P17065924652279709758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (A279315 (n + 1) - A159075 n)

end

end A279615.P17065924652279709758

/-! ## A279615.P1907283600255196185

`∑[(A278700(n+1)+A066247(n+1))*A278700(n+1)]`
-/

namespace A279615.P1907283600255196185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A278700 (n + 1) + A066247 (n + 1)) * A278700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279615.P1907283600255196185

/-! ## A279615.P10780651690823440645

`∑[A278700(n+1)²+(1-A010051(n+1))*A278700(n+1)]`
-/

namespace A279615.P10780651690823440645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278700 (n + 1) ^ 2 + (1 - A010051 (n + 1)) * A278700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279615.P10780651690823440645

/-!
# A279617: Partial sums of A279481.

The programs for A279617, there is no canonical definition to state claims against.
-/

/-! ## A279617.P8852117190162179961

`∑[A279481(n+1)]`
-/

namespace A279617.P8852117190162179961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279617.P8852117190162179961

/-! ## A279617.P7975843764294326814

`A343630(A034333(n))+C(n, 2)`
-/

namespace A279617.P7975843764294326814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343630 (A034333 n).toNat + (Nat.choose n 2 : ℤ)

end

end A279617.P7975843764294326814

/-! ## A279617.P6931764957299554450

`A161680(n)-A016338(A327661(n+1))`
-/

namespace A279617.P6931764957299554450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A016338 (A327661 (n + 1)).toNat

end

end A279617.P6931764957299554450

/-! ## A279617.P8722165051362605959

`A153195(n)-A350387(A056301(n+1))`
-/

namespace A279617.P8722165051362605959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153195 n - A350387 (A056301 (n + 1)).toNat

end

end A279617.P8722165051362605959

/-!
# A279619: Expansion of g.f. of A002652 in powers of the g.f. of A279618.

The programs for A279619, there is no canonical definition to state claims against.
-/

/-! ## A279619.P17670840798872882599

`A034707(A047055(n))-1`
-/

namespace A279619.P17670840798872882599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (A047055 n).toNat - 1

end

end A279619.P17670840798872882599

/-!
# A279622: Numbers with a prime factor greater than 5.

The programs for A279622, the canonical program `A279622.P1478079407013024484` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279622 has offset 1).

The definition of A279622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279622.P1993785218883831922

`lt[5, A006530(n+1)]+1`
-/

namespace A279622.P1993785218883831922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279622.P1993785218883831922

namespace A279622

/-- `lt[5, A006530(n+1)]+1` -/
def P1993785218883831922.Spec : Prop :=
  ∀ n, (P1993785218883831922.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P14639611310866423181

`comp[A051037(n+1)-1]+1`
-/

namespace A279622.P14639611310866423181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A279622.P14639611310866423181

namespace A279622

/-- `comp[A051037(n+1)-1]+1` -/
def P14639611310866423181.Spec : Prop :=
  ∀ n, (P14639611310866423181.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P4123231805963687910

`lt[1, A117370(2*(n+1))]+1`
-/

namespace A279622.P4123231805963687910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279622.P4123231805963687910

namespace A279622

/-- `lt[1, A117370(2*(n+1))]+1` -/
def P4123231805963687910.Spec : Prop :=
  ∀ n, (P4123231805963687910.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P11395157827629411402

`lt[2, A069897(2*(n+1))]+1`
-/

namespace A279622.P11395157827629411402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279622.P11395157827629411402

namespace A279622

/-- `lt[2, A069897(2*(n+1))]+1` -/
def P11395157827629411402.Spec : Prop :=
  ∀ n, (P11395157827629411402.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P700456801058515791

`∪[A330137(n+1), A070884(n)]`
-/

namespace A279622.P700456801058515791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279622.P700456801058515791

namespace A279622

/-- `∪[A330137(n+1), A070884(n)]` -/
def P700456801058515791.Spec : Prop :=
  ∀ n, (P700456801058515791.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P1478079407013024484

`lt[2, A004396(A061395(n+1))]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A279622

/-- `lt[2, A004396(A061395(n+1))]+1` -/
def P1478079407013024484.Spec : Prop :=
  ∀ n, (P1478079407013024484.a n : ℤ) = A279622 (n + 1)

theorem P1478079407013024484.correct : P1478079407013024484.Spec := by
  intro n
  simp only [A279622, Nat.add_sub_cancel]

end A279622

/-! ## A279622.P7644235425449458250

`∪[A050931(n+1), A068191(n+1)]`
-/

namespace A279622.P7644235425449458250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279622.P7644235425449458250

namespace A279622

/-- `∪[A050931(n+1), A068191(n+1)]` -/
def P7644235425449458250.Spec : Prop :=
  ∀ n, (P7644235425449458250.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P15146329242208489918

`∪[A068191(n+1), A080194(n+1)]`
-/

namespace A279622.P15146329242208489918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279622.P15146329242208489918

namespace A279622

/-- `∪[A068191(n+1), A080194(n+1)]` -/
def P15146329242208489918.Spec : Prop :=
  ∀ n, (P15146329242208489918.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P4078554430183864985

`∪[A068191(n+1), A155501(n+1)]`
-/

namespace A279622.P4078554430183864985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279622.P4078554430183864985

namespace A279622

/-- `∪[A068191(n+1), A155501(n+1)]` -/
def P4078554430183864985.Spec : Prop :=
  ∀ n, (P4078554430183864985.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P5906376136021096579

`∪[A128974(n+1), A330137(n+1)]`
-/

namespace A279622.P5906376136021096579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279622.P5906376136021096579

namespace A279622

/-- `∪[A128974(n+1), A330137(n+1)]` -/
def P5906376136021096579.Spec : Prop :=
  ∀ n, (P5906376136021096579.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P16502062214341716277

`lt[2, ∑{p}[n, #-3]]`
-/

namespace A279622.P16502062214341716277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A279622.P16502062214341716277

namespace A279622

/-- `lt[2, ∑{p}[n, #-3]]` -/
def P16502062214341716277.Spec : Prop :=
  ∀ n, (P16502062214341716277.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P13510628734536965681

`lt[4, ∏{p}[n, (4-#)²]]`
-/

namespace A279622.P13510628734536965681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (4 - (p : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A279622.P13510628734536965681

namespace A279622

/-- `lt[4, ∏{p}[n, (4-#)²]]` -/
def P13510628734536965681.Spec : Prop :=
  ∀ n, (P13510628734536965681.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P9842595161154531174

`lt[ϕ, ∏{p}[2*n, #/3]²]`
-/

namespace A279622.P9842595161154531174
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n), (p : ℚ) / 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A279622.P9842595161154531174

namespace A279622

/-- `lt[ϕ, ∏{p}[2*n, #/3]²]` -/
def P9842595161154531174.Spec : Prop :=
  ∀ n, (P9842595161154531174.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P14661387113183078882

`lt[2, A141256(n)]`
-/

namespace A279622.P14661387113183078882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A279622.P14661387113183078882

namespace A279622

/-- `lt[2, A141256(n)]` -/
def P14661387113183078882.Spec : Prop :=
  ∀ n, (P14661387113183078882.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P12781381971371715237

`lt[5, A006530(∏{p}[n, #])]`
-/

namespace A279622.P12781381971371715237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A279622.P12781381971371715237

namespace A279622

/-- `lt[5, A006530(∏{p}[n, #])]` -/
def P12781381971371715237.Spec : Prop :=
  ∀ n, (P12781381971371715237.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P17105822084682975028

`lt[1, A165725(n+1)]+1`
-/

namespace A279622.P17105822084682975028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279622.P17105822084682975028

namespace A279622

/-- `lt[1, A165725(n+1)]+1` -/
def P17105822084682975028.Spec : Prop :=
  ∀ n, (P17105822084682975028.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P2282018080907260231

`lt[2, A252735(n+1)]+1`
-/

namespace A279622.P2282018080907260231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279622.P2282018080907260231

namespace A279622

/-- `lt[2, A252735(n+1)]+1` -/
def P2282018080907260231.Spec : Prop :=
  ∀ n, (P2282018080907260231.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P15315095554922967958

`lt[A228732(n+1), n]+1`
-/

namespace A279622.P15315095554922967958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A279622.P15315095554922967958

namespace A279622

/-- `lt[A228732(n+1), n]+1` -/
def P15315095554922967958.Spec : Prop :=
  ∀ n, (P15315095554922967958.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P7388404344137557344

`lt[A355582(n+1), n]+1`
-/

namespace A279622.P7388404344137557344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A279622.P7388404344137557344

namespace A279622

/-- `lt[A355582(n+1), n]+1` -/
def P7388404344137557344.Spec : Prop :=
  ∀ n, (P7388404344137557344.a n : ℤ) = A279622 (n + 1)

end A279622

/-! ## A279622.P11873313090321617936

`lt[A355584(n+1), n]+1`
-/

namespace A279622.P11873313090321617936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A279622.P11873313090321617936

namespace A279622

/-- `lt[A355584(n+1), n]+1` -/
def P11873313090321617936.Spec : Prop :=
  ∀ n, (P11873313090321617936.a n : ℤ) = A279622 (n + 1)

end A279622

/-!
# A279623: a(n) = smallest prime factor of n-th Bell number, or 1 if there are none.

The programs for A279623, there is no canonical definition to state claims against.
-/

/-! ## A279623.P6263154053322388543

`A020639(A000110(n)%A070025(n+1))`
-/

namespace A279623.P6263154053322388543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A000110 n) (A070025 (n + 1))).toNat

end

end A279623.P6263154053322388543

/-! ## A279623.P6991130120215224414

`A020639(abs(A292935(n))%A059192(n+1))`
-/

namespace A279623.P6991130120215224414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod |A292935 n| (A059192 (n + 1))).toNat

end

end A279623.P6991130120215224414

/-! ## A279623.P12518097950610028628

`A020639(A095149(∑[n])%A060165(n+1))`
-/

namespace A279623.P12518097950610028628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)) (A060165 (n + 1))).toNat

end

end A279623.P12518097950610028628

/-! ## A279623.P7754791368091645276

`A020639(A123081(∑[n])%A060165(n+1))`
-/

namespace A279623.P7754791368091645276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A123081 (∑ j ∈ Finset.range (n + 1), f1 j)) (A060165 (n + 1))).toNat

end

end A279623.P7754791368091645276

/-!
# A279624: Numbers x such that BCR(x) = R(x), where BCR = binary-complement-and-reverse = take one's complement then reverse bit order and R(x) is the digits reverse of n.

The programs for A279624, there is no canonical definition to state claims against.
-/

/-! ## A279624.P14664904698519502456

`eq[n, A004086(A036044(n))]`
-/

namespace A279624.P14664904698519502456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A036044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279624.P14664904698519502456

/-! ## A279624.P6146123209651210081

`eq[A056964(n)-n, A036044(n)]`
-/

namespace A279624.P6146123209651210081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279624.P6146123209651210081

/-! ## A279624.P3097583340048186814

`eq[n-A056965(n), A036044(n)]`
-/

namespace A279624.P3097583340048186814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279624.P3097583340048186814

/-!
# A279626: Number of palindromes over an alphabet of size 4 of length 2n+1 having no (3/2)+ powers.

The programs for A279626, there is no canonical definition to state claims against.
-/

/-! ## A279626.P10107608689790596946

`record[A195199(∑[2^val(n+1, 2)])]`
-/

namespace A279626.P10107608689790596946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195199 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279626.P10107608689790596946

/-! ## A279626.P3592050178348436603

`A195199(A358513(n))`
-/

namespace A279626.P3592050178348436603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195199 (A358513 n).toNat

end

end A279626.P3592050178348436603

/-! ## A279626.P18110157943372242984

`A135974(A026549(n+1))`
-/

namespace A279626.P18110157943372242984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135974 (A026549 (n + 1)).toNat

end

end A279626.P18110157943372242984

/-!
# A279627: Engel expansion of the Glaisher-Kinkelin constant A074962.

The programs for A279627, there is no canonical definition to state claims against.
-/

/-! ## A279627.P13501706913391966450

`A355557(A000093(n))+A000079(n)`
-/

namespace A279627.P13501706913391966450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355557 (A000093 n).toNat + A000079 n

end

end A279627.P13501706913391966450

/-!
# A279634: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = 3/2.

The programs for A279634, the canonical program `A279634.P13724694272869149303` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279634 has offset 0).

The definition of A279634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279634.P13724694272869149303

`ogf((1-x-x^2+x^3)/(1+2x))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279634

/-- `ogf((1-x-x^2+x^3)/(1+2x))` -/
def P13724694272869149303.Spec : Prop :=
  ∀ n, P13724694272869149303.a n = A279634 n

theorem P13724694272869149303.correct : P13724694272869149303.Spec := by
  intro n
  simp only [A279634]

end A279634

/-! ## A279634.P8839633896024813761

`Δ[round(3*(-2)^(n-3))]`
-/

namespace A279634.P8839633896024813761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (-2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279634.P8839633896024813761

namespace A279634

/-- `Δ[round(3*(-2)^(n-3))]` -/
def P8839633896024813761.Spec : Prop :=
  ∀ n, P8839633896024813761.a n = A279634 n

end A279634

/-! ## A279634.P3705720423149801837

`2*∑[A296775(n)]-A296775(n)`
-/

namespace A279634.P3705720423149801837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - A296775 n

end

end A279634.P3705720423149801837

namespace A279634

/-- `2*∑[A296775(n)]-A296775(n)` -/
def P3705720423149801837.Spec : Prop :=
  ∀ n, P3705720423149801837.a n = A279634 n

end A279634

/-! ## A279634.P6877114085988333721

`floor(acot(n^n-3^n))-2*a(n-1)` with `a(0)=1`
-/

namespace A279634.P6877114085988333721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊SequenceMachineLib.acot ((n ^ n : ℤ) - (3 ^ n : ℤ) : ℝ)⌋ - 2 * a (n - 1)

end

end A279634.P6877114085988333721

namespace A279634

/-- `floor(acot(n^n-3^n))-2*a(n-1)` -/
def P6877114085988333721.Spec : Prop :=
  ∀ n, P6877114085988333721.a n = A279634 n

end A279634

/-! ## A279634.P16094816692212942653

`A065366(A257970(n+1))`
-/

namespace A279634.P16094816692212942653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065366 (A257970 (n + 1)).toNat

end

end A279634.P16094816692212942653

namespace A279634

/-- `A065366(A257970(n+1))` -/
def P16094816692212942653.Spec : Prop :=
  ∀ n, P16094816692212942653.a n = A279634 n

end A279634

/-!
# A279635: Denominator of (0 followed by A005126(n)= 2, 4, 7, ...)/2^n, a sequence corresponding to A271573.

The programs for A279635, the canonical program `A279635.P7211427173894437369` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279635 has offset 0).

The definition of A279635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279635.P7211427173894437369

`2^n/gcd(n, a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279635

/-- `2^n/gcd(n, a(n-1))` -/
def P7211427173894437369.Spec : Prop :=
  ∀ n, P7211427173894437369.a n = (A279635 n : ℚ)

end A279635

/-! ## A279635.P10765344876610069491

`2^(n-val(n, 2)%a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A279635.P10765344876610069491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - Int.tmod (SequenceMachineLib.valuation n 2 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ)

end

end A279635.P10765344876610069491

namespace A279635

/-- `2^(n-val(n, 2)%a(n-1))` -/
def P10765344876610069491.Spec : Prop :=
  ∀ n, P10765344876610069491.a n = (A279635 n : ℚ)

end A279635

/-! ## A279635.P3582002853207468649

`2^n/gcd(2*n, ceil(2^(n-1)+n))`
-/

namespace A279635.P3582002853207468649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / (Int.gcd (2 * n : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ)⌉ : ℚ)

end

end A279635.P3582002853207468649

namespace A279635

/-- `2^n/gcd(2*n, ceil(2^(n-1)+n))` -/
def P3582002853207468649.Spec : Prop :=
  ∀ n, P3582002853207468649.a n = (A279635 n : ℚ)

end A279635

/-! ## A279635.P2471068030634940492

`2^(n-val(A130779(n)+n, 2))`
-/

namespace A279635.P2471068030634940492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.valuation (A130779 n + (n : ℤ)).toNat 2 : ℤ) : ℤ)

end

end A279635.P2471068030634940492

namespace A279635

/-- `2^(n-val(A130779(n)+n, 2))` -/
def P2471068030634940492.Spec : Prop :=
  ∀ n, P2471068030634940492.a n = (A279635 n : ℚ)

end A279635

/-! ## A279635.P26154869752275632

`A319862(A000124(n)%A127389(n+3))`
-/

namespace A279635.P26154869752275632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319862 (Int.tmod (A000124 n) (A127389 (n + 3))).toNat

end

end A279635.P26154869752275632

namespace A279635

/-- `A319862(A000124(n)%A127389(n+3))` -/
def P26154869752275632.Spec : Prop :=
  ∀ n, P26154869752275632.a n = A279635 n

end A279635

/-!
# A279636: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the exponential transform of the k-th powers.

The programs for A279636, there is no canonical definition to state claims against.
-/

/-! ## A279636.P2443920496946101965

`A108458(n+1)+A000007(A304334(n))`
-/

namespace A279636.P2443920496946101965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (n + 1) + A000007 (A304334 n).toNat

end

end A279636.P2443920496946101965

/-! ## A279636.P9137209684830165108

`A108458(n+1)+A000007(A327027(n))`
-/

namespace A279636.P9137209684830165108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (n + 1) + A000007 (A327027 n).toNat

end

end A279636.P9137209684830165108

/-! ## A279636.P17149234823831107235

`A108458(n+1)^A057979(A090642(n))`
-/

namespace A279636.P17149234823831107235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108458 (n + 1) : ℚ) ^ (A057979 (A090642 n).toNat : ℤ)

end

end A279636.P17149234823831107235

/-! ## A279636.P3340490224126948064

`A108458(n+1)^A057979(A113025(n))`
-/

namespace A279636.P3340490224126948064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108458 (n + 1) : ℚ) ^ (A057979 (A113025 n).toNat : ℤ)

end

end A279636.P3340490224126948064

/-! ## A279636.P5476871370348900298

`A028310(A108458(n+1)%A128458(n+1))`
-/

namespace A279636.P5476871370348900298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A108458 (n + 1)) (A128458 (n + 1))).toNat

end

end A279636.P5476871370348900298

/-!
# A279637: Exponential transform of the fourth powers A000583.

The programs for A279637, there is no canonical definition to state claims against.
-/

/-! ## A279637.P13959878460021585802

`A279636(A052905(n+2))`
-/

namespace A279637.P13959878460021585802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (A052905 (n + 2)).toNat

end

end A279637.P13959878460021585802

/-! ## A279637.P13189629065853379709

`A279636(eq[4, A025581(n)])`
-/

namespace A279637.P13189629065853379709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279637.P13189629065853379709

/-! ## A279637.P4642403844694252756

`A279636(eq[5, A193739(n)])`
-/

namespace A279637.P4642403844694252756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279637.P4642403844694252756

/-! ## A279637.P5675021580536959731

`A279636(eq[9, A099375(n)])`
-/

namespace A279637.P5675021580536959731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279637.P5675021580536959731

/-! ## A279637.P2226879086059016584

`A279636(eq[4, A144257(n+1)])`
-/

namespace A279637.P2226879086059016584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279637.P2226879086059016584

/-!
# A279638: Exponential transform of the fifth powers A000584.

The programs for A279638, there is no canonical definition to state claims against.
-/

/-! ## A279638.P5293700611079821188

`A279636(eq[5, A025581(n)])`
-/

namespace A279638.P5293700611079821188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279638.P5293700611079821188

/-! ## A279638.P3075694890513674441

`A279636(eq[6, A193739(n)])`
-/

namespace A279638.P3075694890513674441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279638.P3075694890513674441

/-! ## A279638.P14458193615897965960

`A279636(Δ[A023551(n+1)])`
-/

namespace A279638.P14458193615897965960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (f1 (n + 1) - f1 n).toNat

end

end A279638.P14458193615897965960

/-! ## A279638.P3075300744706252541

`A279636(eq[5, A144257(n+1)])`
-/

namespace A279638.P3075300744706252541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279638.P3075300744706252541

/-! ## A279638.P2767275496778004014

`A279636(eq[6, A004736(n+1)])`
-/

namespace A279638.P2767275496778004014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279638.P2767275496778004014

/-!
# A279639: Exponential transform of the sixth powers A001014.

The programs for A279639, there is no canonical definition to state claims against.
-/

/-! ## A279639.P15442522405696818478

`A279636(eq[6, A025581(n)])`
-/

namespace A279639.P15442522405696818478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279639.P15442522405696818478

/-! ## A279639.P14520679409792809634

`A279636(eq[7, A193739(n)])`
-/

namespace A279639.P14520679409792809634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279639.P14520679409792809634

/-! ## A279639.P14826369052225265136

`A279636(eq[7, A195663(n)])`
-/

namespace A279639.P14826369052225265136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279639.P14826369052225265136

/-! ## A279639.P1322620101396215367

`A279636(eq[6, A144257(n+1)])`
-/

namespace A279639.P1322620101396215367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279639.P1322620101396215367

/-! ## A279639.P944003718439133184

`A279636(eq[7, A004736(n+1)])`
-/

namespace A279639.P944003718439133184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279639.P944003718439133184

/-!
# A279640: Exponential transform of the seventh powers A001015.

The programs for A279640, there is no canonical definition to state claims against.
-/

/-! ## A279640.P7170379911946154170

`A279636(eq[7, A025581(n)])`
-/

namespace A279640.P7170379911946154170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279640.P7170379911946154170

/-! ## A279640.P4132212038981813920

`A279636(eq[8, A193739(n)])`
-/

namespace A279640.P4132212038981813920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279640.P4132212038981813920

/-! ## A279640.P5155979128540571408

`A279636(eq[15, A099375(n)])`
-/

namespace A279640.P5155979128540571408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279640.P5155979128540571408

/-! ## A279640.P6720801898441359404

`A279636(eq[7, A144257(n+1)])`
-/

namespace A279640.P6720801898441359404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279640.P6720801898441359404

/-! ## A279640.P8031095140099043492

`A279636(eq[8, A004736(n+1)])`
-/

namespace A279640.P8031095140099043492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279640.P8031095140099043492

/-!
# A279641: Exponential transform of the eighth powers A001016.

The programs for A279641, there is no canonical definition to state claims against.
-/

/-! ## A279641.P818102450279589735

`A279636(eq[8, A025581(n)])`
-/

namespace A279641.P818102450279589735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279641.P818102450279589735

/-! ## A279641.P14113363733398896740

`A279636(eq[9, A193739(n)])`
-/

namespace A279641.P14113363733398896740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279641.P14113363733398896740

/-! ## A279641.P6125249557592258870

`A279636(eq[9, A195663(n)])`
-/

namespace A279641.P6125249557592258870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279641.P6125249557592258870

/-! ## A279641.P5801873832054312348

`A279636(eq[8, A144257(n+1)])`
-/

namespace A279641.P5801873832054312348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279641.P5801873832054312348

/-! ## A279641.P18020187397654657373

`A279636(eq[9, A004736(n+1)])`
-/

namespace A279641.P18020187397654657373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279641.P18020187397654657373

/-!
# A279642: Exponential transform of the ninth powers A001017.

The programs for A279642, there is no canonical definition to state claims against.
-/

/-! ## A279642.P16530591951485672794

`A279636(A056000(n+6))`
-/

namespace A279642.P16530591951485672794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (A056000 (n + 6)).toNat

end

end A279642.P16530591951485672794

/-! ## A279642.P4443518045406144196

`A279636(eq[9, A025581(n)])`
-/

namespace A279642.P4443518045406144196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279642.P4443518045406144196

/-! ## A279642.P12744925670134910292

`A279636(eq[10, A193739(n)])`
-/

namespace A279642.P12744925670134910292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279642.P12744925670134910292

/-! ## A279642.P18364766671063113289

`A279636(eq[9, A144257(n+1)])`
-/

namespace A279642.P18364766671063113289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279642.P18364766671063113289

/-! ## A279642.P14645516351303971630

`A279636(eq[10, A004736(n+1)])`
-/

namespace A279642.P14645516351303971630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279642.P14645516351303971630

/-!
# A279643: Exponential transform of the tenth powers A008454.

The programs for A279643, there is no canonical definition to state claims against.
-/

/-! ## A279643.P18375038372873612968

`A279636(eq[10, A025581(n)])`
-/

namespace A279643.P18375038372873612968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279643.P18375038372873612968

/-! ## A279643.P14879587333908154069

`A279636(eq[11, A193739(n)])`
-/

namespace A279643.P14879587333908154069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279643.P14879587333908154069

/-! ## A279643.P1340674975425902626

`A279636(eq[11, A195663(n)])`
-/

namespace A279643.P1340674975425902626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279643.P1340674975425902626

/-! ## A279643.P13569296995860369253

`A279636(eq[10, A144257(n+1)])`
-/

namespace A279643.P13569296995860369253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279643.P13569296995860369253

/-! ## A279643.P2734443827110530126

`A279636(eq[10, A193592(n+1)])`
-/

namespace A279643.P2734443827110530126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279643.P2734443827110530126

/-!
# A279644: a(n) is the n-th term of the exponential transform of the n-th powers.

The programs for A279644, there is no canonical definition to state claims against.
-/

/-! ## A279644.P6519906951099468340

`A279636(∑[4*n])`
-/

namespace A279644.P6519906951099468340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279644.P6519906951099468340

/-! ## A279644.P12982270281994254634

`lcm(A033999(n), A279636(A046092(n)))`
-/

namespace A279644.P12982270281994254634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A279636 (A046092 n).toNat)

end

end A279644.P12982270281994254634

/-! ## A279644.P14259524128571141552

`or(A000007(n), A279636(A046092(n)))`
-/

namespace A279644.P14259524128571141552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A279636 (A046092 n).toNat)

end

end A279644.P14259524128571141552

/-! ## A279644.P18217009229279569739

`gcd(A154955(n+1), A279636(A046092(n)))`
-/

namespace A279644.P18217009229279569739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154955 (n + 1)) (A279636 (A046092 n).toNat)

end

end A279644.P18217009229279569739

/-! ## A279644.P3648293096272068211

`A279636(A046092(n))%record[5^A007318(n)]`
-/

namespace A279644.P3648293096272068211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A007318 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279636 (A046092 n).toNat) (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A279644.P3648293096272068211

/-!
# A279645: a(n) = not (n XOR (n shift 1)).

The programs for A279645, the canonical program `A279645.P6515510182478402975` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279645 has offset 0).

The definition of A279645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279645.P5410255822964790061

`∑[n*char[2^n]]-xor(n, floor(n/2))`
-/

namespace A279645.P5410255822964790061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A279645.P5410255822964790061

namespace A279645

/-- `∑[n*char[2^n]]-xor(n, floor(n/2))` -/
def P5410255822964790061.Spec : Prop :=
  ∀ n, P5410255822964790061.a n = A279645 n

end A279645

/-! ## A279645.P6515510182478402975

`or(n, a(n-1))-and(n, floor(-(n/2)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279645

/-- `or(n, a(n-1))-and(n, floor(-(n/2)))` -/
def P6515510182478402975.Spec : Prop :=
  ∀ n, P6515510182478402975.a n = A279645 n

theorem P6515510182478402975.correct : P6515510182478402975.Spec := by
  intro n
  simp only [A279645]

end A279645

/-! ## A279645.P4155722718059527244

`2^ceil(log2(n+1))-(xor(n, floor(n/2))+1)`
-/

namespace A279645.P4155722718059527244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1 : ℚ)

end

end A279645.P4155722718059527244

namespace A279645

/-- `2^ceil(log2(n+1))-(xor(n, floor(n/2))+1)` -/
def P4155722718059527244.Spec : Prop :=
  ∀ n, P4155722718059527244.a n = (A279645 n : ℚ)

end A279645

/-! ## A279645.P13079958343707685689

`(2^ceil(log2(n+1)))%(xor(n, floor(n/2))+1)`
-/

namespace A279645.P13079958343707685689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1)

end

end A279645.P13079958343707685689

namespace A279645

/-- `(2^ceil(log2(n+1)))%(xor(n, floor(n/2))+1)` -/
def P13079958343707685689.Spec : Prop :=
  ∀ n, P13079958343707685689.a n = A279645 n

end A279645

/-! ## A279645.P17118412833301751957

`xor(n, or(n, a(n-1))-and(n, 2*n)/2)` with `a(0)=0`
-/

namespace A279645.P17118412833301751957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((Int.lor (n : ℤ) (a (n - 1)) : ℚ) - (Nat.land n (2 * n) : ℚ) / 2))

end

end A279645.P17118412833301751957

namespace A279645

/-- `xor(n, or(n, a(n-1))-and(n, 2*n)/2)` -/
def P17118412833301751957.Spec : Prop :=
  ∀ n, P17118412833301751957.a n = A279645 n

end A279645

/-! ## A279645.P10465238750476520679

`2^ceil(log2(n+1))-(A003188(n)+1)`
-/

namespace A279645.P10465238750476520679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (A003188 n + 1 : ℚ)

end

end A279645.P10465238750476520679

namespace A279645

/-- `2^ceil(log2(n+1))-(A003188(n)+1)` -/
def P10465238750476520679.Spec : Prop :=
  ∀ n, P10465238750476520679.a n = (A279645 n : ℚ)

end A279645

/-! ## A279645.P10040777437801279235

`2*a(floor(n/2))+A021913(n-1)` with `a(0)=0`
-/

namespace A279645.P10040777437801279235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + A021913 (n - 1)

end

end A279645.P10040777437801279235

namespace A279645

/-- `2*a(floor(n/2))+A021913(n-1)` -/
def P10040777437801279235.Spec : Prop :=
  ∀ n, P10040777437801279235.a n = A279645 n

end A279645

/-! ## A279645.P10387843049607675344

`A292600(A067585(n))`
-/

namespace A279645.P10387843049607675344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A067585 n).toNat

end

end A279645.P10387843049607675344

namespace A279645

/-- `A292600(A067585(n))` -/
def P10387843049607675344.Spec : Prop :=
  ∀ n, P10387843049607675344.a n = A279645 n

end A279645

/-! ## A279645.P2884764528581355622

`A003817(n)-A003188(n)`
-/

namespace A279645.P2884764528581355622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A003188 n

end

end A279645.P2884764528581355622

namespace A279645

/-- `A003817(n)-A003188(n)` -/
def P2884764528581355622.Spec : Prop :=
  ∀ n, P2884764528581355622.a n = A279645 n

end A279645

/-! ## A279645.P10341016254144529982

`A180201(n)-A053644(n)`
-/

namespace A279645.P10341016254144529982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 n - A053644 n

end

end A279645.P10341016254144529982

namespace A279645

/-- `A180201(n)-A053644(n)` -/
def P10341016254144529982.Spec : Prop :=
  ∀ n, P10341016254144529982.a n = A279645 n

end A279645

/-! ## A279645.P10101909982572426257

`A283165(n)%A008619(n)`
-/

namespace A279645.P10101909982572426257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283165 n) (A008619 n)

end

end A279645.P10101909982572426257

namespace A279645

/-- `A283165(n)%A008619(n)` -/
def P10101909982572426257.Spec : Prop :=
  ∀ n, P10101909982572426257.a n = A279645 n

end A279645

/-! ## A279645.P10631715184084387859

`xor(A035327(n), A123108(n))`
-/

namespace A279645.P10631715184084387859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035327 n) (A123108 n)

end

end A279645.P10631715184084387859

namespace A279645

/-- `xor(A035327(n), A123108(n))` -/
def P10631715184084387859.Spec : Prop :=
  ∀ n, P10631715184084387859.a n = A279645 n

end A279645

/-! ## A279645.P3754773003845296431

`A062383(n)-A105081(n+1)`
-/

namespace A279645.P3754773003845296431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - A105081 (n + 1)

end

end A279645.P3754773003845296431

namespace A279645

/-- `A062383(n)-A105081(n+1)` -/
def P3754773003845296431.Spec : Prop :=
  ∀ n, P3754773003845296431.a n = A279645 n

end A279645

/-! ## A279645.P10670463580830372658

`xor(n, A003817(n)-A004526(n))`
-/

namespace A279645.P10670463580830372658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A003817 n - A004526 n)

end

end A279645.P10670463580830372658

namespace A279645

/-- `xor(n, A003817(n)-A004526(n))` -/
def P10670463580830372658.Spec : Prop :=
  ∀ n, P10670463580830372658.a n = A279645 n

end A279645

/-! ## A279645.P13828304113625785703

`xor(n-A006257(n), A004526(n))`
-/

namespace A279645.P13828304113625785703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A006257 n) (A004526 n)

end

end A279645.P13828304113625785703

namespace A279645

/-- `xor(n-A006257(n), A004526(n))` -/
def P13828304113625785703.Spec : Prop :=
  ∀ n, P13828304113625785703.a n = A279645 n

end A279645

/-! ## A279645.P8089930344876441772

`A006068((lt[2*n, xor(n, 2*n)]+1)%-(n+1))-A003188(n)`
-/

namespace A279645.P8089930344876441772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 : ℤ) (-(n + 1 : ℤ))).toNat - A003188 n

end

end A279645.P8089930344876441772

namespace A279645

/-- `A006068((lt[2*n, xor(n, 2*n)]+1)%-(n+1))-A003188(n)` -/
def P8089930344876441772.Spec : Prop :=
  ∀ n, P8089930344876441772.a n = A279645 n

end A279645

/-! ## A279645.P8707259993535780851

`A048735(A035327(n))+A048735(n)`
-/

namespace A279645.P8707259993535780851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A035327 n).toNat + A048735 n

end

end A279645.P8707259993535780851

namespace A279645

/-- `A048735(A035327(n))+A048735(n)` -/
def P8707259993535780851.Spec : Prop :=
  ∀ n, P8707259993535780851.a n = A279645 n

end A279645

/-! ## A279645.P5533166364392661348

`A006068(A053644(n))-A003188(n)`
-/

namespace A279645.P5533166364392661348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A053644 n).toNat - A003188 n

end

end A279645.P5533166364392661348

namespace A279645

/-- `A006068(A053644(n))-A003188(n)` -/
def P5533166364392661348.Spec : Prop :=
  ∀ n, P5533166364392661348.a n = A279645 n

end A279645

/-! ## A279645.P16681435916995744592

`A003188(n)-A280995(A056539(n))`
-/

namespace A279645.P16681435916995744592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - A280995 (A056539 n).toNat

end

end A279645.P16681435916995744592

namespace A279645

/-- `A003188(n)-A280995(A056539(n))` -/
def P16681435916995744592.Spec : Prop :=
  ∀ n, P16681435916995744592.a n = A279645 n

end A279645

/-! ## A279645.P10365791814887606561

`A048735(A080079(n+1))+A048735(n)`
-/

namespace A279645.P10365791814887606561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A080079 (n + 1)).toNat + A048735 n

end

end A279645.P10365791814887606561

namespace A279645

/-- `A048735(A080079(n+1))+A048735(n)` -/
def P10365791814887606561.Spec : Prop :=
  ∀ n, P10365791814887606561.a n = A279645 n

end A279645

/-!
# A279651: Number of n X 2 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279651, the canonical program `A279651.P6453912314410752663` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279651 has offset 1).

The definition of A279651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279651.P6453912314410752663

`A279300(2*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A279651

/-- `A279300(2*(n+1))` -/
def P6453912314410752663.Spec : Prop :=
  ∀ n, P6453912314410752663.a n = A279651 (n + 1)

theorem P6453912314410752663.correct : P6453912314410752663.Spec := by
  intro n
  simp only [A279651, Nat.add_sub_cancel]

end A279651

/-! ## A279651.P6161428898518058886

`record[A279300(n+1)^and(1, n)]`
-/

namespace A279651.P6161428898518058886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279300 (n + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279651.P6161428898518058886

namespace A279651

/-- `record[A279300(n+1)^and(1, n)]` -/
def P6161428898518058886.Spec : Prop :=
  ∀ n, P6161428898518058886.a n = A279651 (n + 1)

end A279651

/-! ## A279651.P4141810322261452733

`record[A279300(Δ[A236453(n)])]`
-/

namespace A279651.P4141810322261452733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279300 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279651.P4141810322261452733

namespace A279651

/-- `record[A279300(Δ[A236453(n)])]` -/
def P4141810322261452733.Spec : Prop :=
  ∀ n, P4141810322261452733.a n = A279651 (n + 1)

end A279651

/-! ## A279651.P14652703848991074857

`record[A279300(A014681(n+1))]`
-/

namespace A279651.P14652703848991074857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279300 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279651.P14652703848991074857

namespace A279651

/-- `record[A279300(A014681(n+1))]` -/
def P14652703848991074857.Spec : Prop :=
  ∀ n, P14652703848991074857.a n = A279651 (n + 1)

end A279651

/-! ## A279651.P3406070856837411176

`record[A279300(A083220(n+1))]`
-/

namespace A279651.P3406070856837411176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279300 (A083220 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279651.P3406070856837411176

namespace A279651

/-- `record[A279300(A083220(n+1))]` -/
def P3406070856837411176.Spec : Prop :=
  ∀ n, P3406070856837411176.a n = A279651 (n + 1)

end A279651

/-! ## A279651.P4662789493913633365

`record[A279300(A186421(n+2))]`
-/

namespace A279651.P4662789493913633365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279300 (A186421 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279651.P4662789493913633365

namespace A279651

/-- `record[A279300(A186421(n+2))]` -/
def P4662789493913633365.Spec : Prop :=
  ∀ n, P4662789493913633365.a n = A279651 (n + 1)

end A279651

/-!
# A279652: Number of nX3 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279652, there is no canonical definition to state claims against.
-/

/-! ## A279652.P4669278233357741311

`A279657(∑[n+3]+1)`
-/

namespace A279652.P4669278233357741311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279652.P4669278233357741311

/-! ## A279652.P5596680098415557627

`record[A279657(A130297(n+1))]`
-/

namespace A279652.P5596680098415557627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279652.P5596680098415557627

/-! ## A279652.P6903270411923254345

`record[A279657(A034856(val(n+1, 2)+1))]`
-/

namespace A279652.P6903270411923254345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A034856 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279652.P6903270411923254345

/-! ## A279652.P15732611352907922609

`A279657(eq[2, A193592(n)])%A279656(n+1)`
-/

namespace A279652.P15732611352907922609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A279656 (n + 1))

end

end A279652.P15732611352907922609

/-! ## A279652.P17966524151256575900

`A279657(A034856(n+2))+A016389(2*(n+2))`
-/

namespace A279652.P17966524151256575900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A034856 (n + 2)).toNat + A016389 (2 * (n + 2))

end

end A279652.P17966524151256575900

/-!
# A279653: Number of n X 4 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279653, there is no canonical definition to state claims against.
-/

/-! ## A279653.P6392154666009511018

`A279657(A141214(n+1))`
-/

namespace A279653.P6392154666009511018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A141214 (n + 1)).toNat

end

end A279653.P6392154666009511018

/-! ## A279653.P9541635606216838804

`A279657(A155212(n)+5)`
-/

namespace A279653.P9541635606216838804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A155212 n + 5).toNat

end

end A279653.P9541635606216838804

/-! ## A279653.P261949111580793729

`A279657(eq[4, A140996(n)])`
-/

namespace A279653.P261949111580793729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279653.P261949111580793729

/-! ## A279653.P842680961474142911

`A279657(A052905(n+1)+2)`
-/

namespace A279653.P842680961474142911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A052905 (n + 1) + 2).toNat

end

end A279653.P842680961474142911

/-! ## A279653.P6589850688157231945

`A279657(eq[3, A025581(n)]+1)`
-/

namespace A279653.P6589850688157231945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A279653.P6589850688157231945

/-!
# A279654: Number of n X 5 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279654, there is no canonical definition to state claims against.
-/

/-! ## A279654.P6894747327974112323

`A279657(Δ[A264443(n)])`
-/

namespace A279654.P6894747327974112323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (f1 (n + 1) - f1 n).toNat

end

end A279654.P6894747327974112323

/-! ## A279654.P7159033735111149361

`A279657(eq[4, A193592(n)])`
-/

namespace A279654.P7159033735111149361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279654.P7159033735111149361

/-! ## A279654.P17066719239863330583

`A279657(eq[8, A140996(n)])`
-/

namespace A279654.P17066719239863330583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279654.P17066719239863330583

/-! ## A279654.P153725069673610759

`A279657(Δ[A023545(n+1)])`
-/

namespace A279654.P153725069673610759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (f1 (n + 1) - f1 n).toNat

end

end A279654.P153725069673610759

/-! ## A279654.P15695542778413323539

`A279657(eq[5, A200370(n+1)])`
-/

namespace A279654.P15695542778413323539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279654.P15695542778413323539

/-!
# A279655: Number of n X 6 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279655, there is no canonical definition to state claims against.
-/

/-! ## A279655.P14780390131680943071

`A279657(eq[5, A193592(n)])`
-/

namespace A279655.P14780390131680943071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279655.P14780390131680943071

/-! ## A279655.P14969440319857550439

`A279657(eq[8, A258709(n)])`
-/

namespace A279655.P14969440319857550439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279655.P14969440319857550439

/-! ## A279655.P13175303898191559170

`A279657(Δ[Δ[A006504(n+1)]])`
-/

namespace A279655.P13175303898191559170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (f1 (n + 1) - f1 n).toNat

end

end A279655.P13175303898191559170

/-! ## A279655.P16277729356673243393

`A279657(Δ[A264443(n+1)]-1)`
-/

namespace A279655.P16277729356673243393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (f1 (n + 1) - f1 n - 1).toNat

end

end A279655.P16277729356673243393

/-!
# A279656: Number of nX7 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279656, there is no canonical definition to state claims against.
-/

/-! ## A279656.P6532829197402488641

`A279657(eq[6, A193592(n)])`
-/

namespace A279656.P6532829197402488641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279656.P6532829197402488641

/-! ## A279656.P6773184034998551720

`A279657(eq[6, A025581(n)]+1)`
-/

namespace A279656.P6773184034998551720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A279656.P6773184034998551720

/-! ## A279656.P4290175736792085236

`A279657(eq[A004736(n+1), A291793(n+1)])`
-/

namespace A279656.P4290175736792085236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A279656.P4290175736792085236

/-!
# A279658: Number of 2 X n 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279658, there is no canonical definition to state claims against.
-/

/-! ## A279658.P6658021060058933412

`A279657(∑[n+1]+2)`
-/

namespace A279658.P6658021060058933412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279658.P6658021060058933412

/-! ## A279658.P17846723001495086348

`or(A209229(n), A279657(A238531(n+2)))`
-/

namespace A279658.P17846723001495086348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 n) (A279657 (A238531 (n + 2)).toNat)

end

end A279658.P17846723001495086348

/-! ## A279658.P16132335761376081

`A279657(A238531(n+2))+A209229(2*n+3)`
-/

namespace A279658.P16132335761376081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A238531 (n + 2)).toNat + A209229 (2 * n + 3)

end

end A279658.P16132335761376081

/-!
# A279659: Number of 3Xn 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279659, there is no canonical definition to state claims against.
-/

/-! ## A279659.P15065667361536964138

`A279657(∑[n+2]+4)`
-/

namespace A279659.P15065667361536964138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279659.P15065667361536964138

/-! ## A279659.P12973126886364709397

`ceil(acot(n))*A279657(A167614(n+1))`
-/

namespace A279659.P12973126886364709397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A279657 (A167614 (n + 1)).toNat

end

end A279659.P12973126886364709397

/-! ## A279659.P11550190197259184740

`A279657(A167614(n+1))+A025466(n)`
-/

namespace A279659.P11550190197259184740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A167614 (n + 1)).toNat + A025466 n

end

end A279659.P11550190197259184740

/-! ## A279659.P15641776974763832028

`A279657(A167614(n+1))+A185237(n)`
-/

namespace A279659.P15641776974763832028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A167614 (n + 1)).toNat + A185237 n

end

end A279659.P15641776974763832028

/-! ## A279659.P4379583539471208657

`A057427(n)*A279657(A167614(n+1))`
-/

namespace A279659.P4379583539471208657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A279657 (A167614 (n + 1)).toNat

end

end A279659.P4379583539471208657

/-!
# A279660: Number of 4Xn 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279660, there is no canonical definition to state claims against.
-/

/-! ## A279660.P14040179279991585120

`A279657(A141214(n)+7)`
-/

namespace A279660.P14040179279991585120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A141214 n + 7).toNat

end

end A279660.P14040179279991585120

/-! ## A279660.P18281058761948736406

`A279657(A052905(n)+9)`
-/

namespace A279660.P18281058761948736406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A052905 n + 9).toNat

end

end A279660.P18281058761948736406

/-! ## A279660.P15759161860487346071

`A279657(A055999(n)+10)`
-/

namespace A279660.P15759161860487346071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A055999 n + 10).toNat

end

end A279660.P15759161860487346071

/-! ## A279660.P15441444597380160047

`A279657(A167614(n+2)+1)`
-/

namespace A279660.P15441444597380160047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A167614 (n + 2) + 1).toNat

end

end A279660.P15441444597380160047

/-! ## A279660.P2344281308865022285

`A279657(A166136(n+2)-2)`
-/

namespace A279660.P2344281308865022285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A166136 (n + 2) - 2).toNat

end

end A279660.P2344281308865022285

/-!
# A279661: Number of 5Xn 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279661, there is no canonical definition to state claims against.
-/

/-! ## A279661.P5307689651921972051

`A279657(∑[n+4]+11)`
-/

namespace A279661.P5307689651921972051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A279661.P5307689651921972051

/-! ## A279661.P17617177887286670455

`A279657(A167499(n+3))+A011731(n)`
-/

namespace A279661.P17617177887286670455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A167499 (n + 3)).toNat + A011731 n

end

end A279661.P17617177887286670455

/-! ## A279661.P16011135181413487600

`A279657(A167499(n+3))+A025466(n)`
-/

namespace A279661.P16011135181413487600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A167499 (n + 3)).toNat + A025466 n

end

end A279661.P16011135181413487600

/-! ## A279661.P17438695596247949536

`A279657(A167499(n+3))+A151878(2*(n+2))`
-/

namespace A279661.P17438695596247949536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A167499 (n + 3)).toNat + A151878 (2 * (n + 2))

end

end A279661.P17438695596247949536

/-!
# A279662: a(n) = (2/3)^n*Gamma(n+3/4)*Gamma(n+1)*Gamma(n+2)/Gamma(3/4).

The programs for A279662, there is no canonical definition to state claims against.
-/

/-! ## A279662.P10278181629857121403

`a(n-1)*∑[C(2*n, 2)]` with `a(0)=1`
-/

namespace A279662.P10278181629857121403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279662.P10278181629857121403

/-! ## A279662.P5399353604659810623

`a(n-1)*∑[2*n²-n]` with `a(0)=1`
-/

namespace A279662.P5399353604659810623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279662.P5399353604659810623

/-! ## A279662.P798357967535737371

`∏[a(n-1)+n²-(n-n²)]` with `a(0)=1, a(1)=1`
-/

namespace A279662.P798357967535737371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (n ^ 2 : ℤ) - ((n : ℤ) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A279662.P798357967535737371

/-! ## A279662.P3114030459772340861

`n*(n+1)*(4*n-1)/6*a(n-1)` with `a(0)=1`
-/

namespace A279662.P3114030459772340861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((n + 1 : ℚ) * (((4 * n : ℤ) - 1 : ℚ) / 6)) * a (n - 1)

end

end A279662.P3114030459772340861

/-! ## A279662.P18352976426968836113

`∏[A002412(floor(acot(n)+n))]`
-/

namespace A279662.P18352976426968836113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A279662.P18352976426968836113

/-!
# A279663: a(n) = (5/6)^n*Gamma(n+3/5)*Gamma(n+1)*Gamma(n+2)/Gamma(3/5).

The programs for A279663, there is no canonical definition to state claims against.
-/

/-! ## A279663.P13701484775277451225

`(n^3-C(n, 3))*a(n-1)` with `a(0)=1`
-/

namespace A279663.P13701484775277451225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ)) * a (n - 1)

end

end A279663.P13701484775277451225

/-! ## A279663.P1754489809107472912

`a(n-1)*A002413(n)` with `a(0)=1`
-/

namespace A279663.P1754489809107472912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A002413 n

end

end A279663.P1754489809107472912

/-! ## A279663.P8537246857339866651

`a(n-1)*∑[A000566(n)]` with `a(0)=1`
-/

namespace A279663.P8537246857339866651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279663.P8537246857339866651

/-! ## A279663.P3019086650138220551

`((n+1)*n²-A000292(n))*a(n-1)` with `a(0)=1`
-/

namespace A279663.P3019086650138220551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((n + 1) * n ^ 2 : ℤ) - A000292 n) * a (n - 1)

end

end A279663.P3019086650138220551

/-! ## A279663.P3723253102576285432

`∏[A002413(A028310(n))]`
-/

namespace A279663.P3723253102576285432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A279663.P3723253102576285432

/-!
# A279665: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A279665, there is no canonical definition to state claims against.
-/

/-! ## A279665.P3001566979756844028

`A007088(A279668(n))`
-/

namespace A279665.P3001566979756844028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279668 n).toNat

end

end A279665.P3001566979756844028

/-! ## A279665.P11300450039881071187

`A185544(2*A279668(n))`
-/

namespace A279665.P11300450039881071187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279668 n).toNat

end

end A279665.P11300450039881071187

/-! ## A279665.P668366237015282482

`A185544(A279668(n)+A279668(n))`
-/

namespace A279665.P668366237015282482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A279668 n + A279668 n).toNat

end

end A279665.P668366237015282482

/-!
# A279666: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A279666, there is no canonical definition to state claims against.
-/

/-! ## A279666.P13085267491811545983

`A281589(lcm(2, A279668(n)))`
-/

namespace A279666.P13085267491811545983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A279668 n))

end

end A279666.P13085267491811545983

/-! ## A279666.P14746075431371815209

`A030101(A279668(n)/A000034(n))`
-/

namespace A279666.P14746075431371815209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A279668 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A279666.P14746075431371815209

/-! ## A279666.P12497451424815890810

`A325401(A000034(n+1)*A279668(n))`
-/

namespace A279666.P12497451424815890810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A000034 (n + 1) * A279668 n).toNat

end

end A279666.P12497451424815890810

/-! ## A279666.P18035361914665143471

`A030101(A279668(n)/A132587(n+1))`
-/

namespace A279666.P18035361914665143471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A279668 n : ℚ) / (A132587 (n + 1) : ℚ))).toNat

end

end A279666.P18035361914665143471

/-! ## A279666.P10171576094263702809

`A030101(A279668(n))`
-/

namespace A279666.P10171576094263702809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A279668 n).toNat

end

end A279666.P10171576094263702809

/-!
# A279667: Number of subparts (also number of odd divisors) of the smallest number k such that the symmetric representation of sigma(k) has n layers.

The programs for A279667, there is no canonical definition to state claims against.
-/

/-! ## A279667.P2258894644429117445

`∑{d}[A250070(n+1), #%2]`
-/

namespace A279667.P2258894644429117445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A279667.P2258894644429117445

/-! ## A279667.P14551490040362327982

`∑{d}[A347979(n+1), and(1, #)]`
-/

namespace A279667.P14551490040362327982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A279667.P14551490040362327982

/-! ## A279667.P11889724661857072709

`A000005(A000265(A347979(n+1)/2))`
-/

namespace A279667.P11889724661857072709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (SequenceMachineLib.roundAway ((A347979 (n + 1) : ℚ) / 2)).toNat).toNat

end

end A279667.P11889724661857072709

/-! ## A279667.P1594427795398922349

`A000005(A000265(A250070(n+1)))`
-/

namespace A279667.P1594427795398922349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (A250070 (n + 1)).toNat).toNat

end

end A279667.P1594427795398922349

/-! ## A279667.P11808822261891791075

`∑{d}[A347979(n+1), A000035(A020639(#))]`
-/

namespace A279667.P11808822261891791075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (A020639 d).toNat

end

end A279667.P11808822261891791075

/-!
# A279668: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A279668, there is no canonical definition to state claims against.
-/

/-! ## A279668.P17801656047370174605

`A000034(n)*A030101(A279666(n))`
-/

namespace A279668.P17801656047370174605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A030101 (A279666 n).toNat

end

end A279668.P17801656047370174605

/-! ## A279668.P7947147682045817374

`lcm(A000034(n+2), A030101(A279666(n)))`
-/

namespace A279668.P7947147682045817374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (n + 2)) (A030101 (A279666 n).toNat)

end

end A279668.P7947147682045817374

/-! ## A279668.P16907235070246672035

`A131507(A058681(n))+n`
-/

namespace A279668.P16907235070246672035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A058681 n).toNat + (n : ℤ)

end

end A279668.P16907235070246672035

/-! ## A279668.P12472527374577304340

`∑[A325362(A049893(n+1))]`
-/

namespace A279668.P12472527374577304340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (A049893 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279668.P12472527374577304340

/-!
# A279669: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A279669, there is no canonical definition to state claims against.
-/

/-! ## A279669.P4373321989616083310

`A007088(A279671(n))`
-/

namespace A279669.P4373321989616083310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279671 n).toNat

end

end A279669.P4373321989616083310

/-! ## A279669.P12821959108723565560

`A185544(2*A279671(n))`
-/

namespace A279669.P12821959108723565560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279671 n).toNat

end

end A279669.P12821959108723565560

/-! ## A279669.P8948158785136205892

`A279716(A004891(n+1))`
-/

namespace A279669.P8948158785136205892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279716 (A004891 (n + 1)).toNat

end

end A279669.P8948158785136205892

/-! ## A279669.P7093502394887936848

`A279716(A004902(n+1))`
-/

namespace A279669.P7093502394887936848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279716 (A004902 (n + 1)).toNat

end

end A279669.P7093502394887936848

/-!
# A279670: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A279670, there is no canonical definition to state claims against.
-/

/-! ## A279670.P12734614618792425130

`A007088(A279672(n))`
-/

namespace A279670.P12734614618792425130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279672 n).toNat

end

end A279670.P12734614618792425130

/-! ## A279670.P16442120594266329274

`A185544(2*A279672(n))`
-/

namespace A279670.P16442120594266329274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279672 n).toNat

end

end A279670.P16442120594266329274

/-! ## A279670.P4017659130195535290

`∏{e}[7^n, A279717(#)]`
-/

namespace A279670.P4017659130195535290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A279717 (Nat.factorization (f1 n) p)

end

end A279670.P4017659130195535290

/-! ## A279670.P8028822446648979437

`A279717(A004891(n+1))`
-/

namespace A279670.P8028822446648979437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279717 (A004891 (n + 1)).toNat

end

end A279670.P8028822446648979437

/-!
# A279671: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A279671, there is no canonical definition to state claims against.
-/

/-! ## A279671.P17819588890715994075

`A279718(A004891(n+1))`
-/

namespace A279671.P17819588890715994075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279718 (A004891 (n + 1)).toNat

end

end A279671.P17819588890715994075

/-! ## A279671.P14955353333321482211

`A279718(A004902(n+1))`
-/

namespace A279671.P14955353333321482211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279718 (A004902 (n + 1)).toNat

end

end A279671.P14955353333321482211

/-! ## A279671.P13431634188617905941

`A279718(A004913(n+1))`
-/

namespace A279671.P13431634188617905941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279718 (A004913 (n + 1)).toNat

end

end A279671.P13431634188617905941

/-! ## A279671.P2425353844650805482

`A279718(A032551(n+1))`
-/

namespace A279671.P2425353844650805482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279718 (A032551 (n + 1)).toNat

end

end A279671.P2425353844650805482

/-!
# A279672: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A279672, there is no canonical definition to state claims against.
-/

/-! ## A279672.P1427931098549568859

`A279719(n)*A324753(A014378(n+3))`
-/

namespace A279672.P1427931098549568859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279719 n * A324753 (A014378 (n + 3)).toNat

end

end A279672.P1427931098549568859

/-! ## A279672.P9516131070206543361

`A279719(A004890(n+1))`
-/

namespace A279672.P9516131070206543361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279719 (A004890 (n + 1)).toNat

end

end A279672.P9516131070206543361

/-! ## A279672.P9462446205356420971

`A279719(A004901(n+1))`
-/

namespace A279672.P9462446205356420971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279719 (A004901 (n + 1)).toNat

end

end A279672.P9462446205356420971

/-!
# A279673: The maximum number of coins that can be processed in n weighings where all coins are real except for one LHR-coin starting in the light state.

The programs for A279673, the canonical program `A279673.P16095438989144875388` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279673 has offset 0).

The definition of A279673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279673.P15920465802843092164

`ogf((1+x+4x^2)/(1-2x+x^2-4x^3))`
-/

namespace A279673.P15920465802843092164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4] [1, -2, 1, -4] n

end

end A279673.P15920465802843092164

namespace A279673

/-- `ogf((1+x+4x^2)/(1-2x+x^2-4x^3))` -/
def P15920465802843092164.Spec : Prop :=
  ∀ n, P15920465802843092164.a n = A279673 n

end A279673

/-! ## A279673.P16095438989144875388

`2*a(n-1)-a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279673

/-- `2*a(n-1)-a(n-2)+4*a(n-3)` -/
def P16095438989144875388.Spec : Prop :=
  ∀ n, P16095438989144875388.a n = A279673 n

theorem P16095438989144875388.correct : P16095438989144875388.Spec := by
  intro n
  simp only [A279673]

end A279673

/-! ## A279673.P1865779687083965159

`record[A078028(n)]`
-/

namespace A279673.P1865779687083965159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279673.P1865779687083965159

namespace A279673

/-- `record[A078028(n)]` -/
def P1865779687083965159.Spec : Prop :=
  ∀ n, P1865779687083965159.a n = A279673 n

end A279673

/-! ## A279673.P1352957247292685057

`Δ[A077882(Δ[n²])]`
-/

namespace A279673.P1352957247292685057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077882 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279673.P1352957247292685057

namespace A279673

/-- `Δ[A077882(Δ[n²])]` -/
def P1352957247292685057.Spec : Prop :=
  ∀ n, P1352957247292685057.a n = A279673 n

end A279673

/-! ## A279673.P13218476260644332378

`A078028(2*(n+1))`
-/

namespace A279673.P13218476260644332378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 (2 * (n + 1))

end

end A279673.P13218476260644332378

namespace A279673

/-- `A078028(2*(n+1))` -/
def P13218476260644332378.Spec : Prop :=
  ∀ n, P13218476260644332378.a n = A279673 n

end A279673

/-! ## A279673.P7178600841960649337

`A159284(2*n+3)`
-/

namespace A279673.P7178600841960649337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (2 * n + 3)

end

end A279673.P7178600841960649337

namespace A279673

/-- `A159284(2*n+3)` -/
def P7178600841960649337.Spec : Prop :=
  ∀ n, P7178600841960649337.a n = A279673 n

end A279673

/-! ## A279673.P15272490056405933283

`∑[A107852(2*n)]+1`
-/

namespace A279673.P15272490056405933283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107852 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A279673.P15272490056405933283

namespace A279673

/-- `∑[A107852(2*n)]+1` -/
def P15272490056405933283.Spec : Prop :=
  ∀ n, P15272490056405933283.a n = A279673 n

end A279673

/-! ## A279673.P14282012914882273001

`2*A077882(2*n)+1`
-/

namespace A279673.P14282012914882273001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077882 (2 * n) + 1

end

end A279673.P14282012914882273001

namespace A279673

/-- `2*A077882(2*n)+1` -/
def P14282012914882273001.Spec : Prop :=
  ∀ n, P14282012914882273001.a n = A279673 n

end A279673

/-! ## A279673.P14883012916799769058

`A107854(2*n+3)-A056594(n)`
-/

namespace A279673.P14883012916799769058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (2 * n + 3) - A056594 n

end

end A279673.P14883012916799769058

namespace A279673

/-- `A107854(2*n+3)-A056594(n)` -/
def P14883012916799769058.Spec : Prop :=
  ∀ n, P14883012916799769058.a n = A279673 n

end A279673

/-! ## A279673.P13340491910261852322

`A159285(2*n)+A107853(2*n)`
-/

namespace A279673.P13340491910261852322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 (2 * n) + A107853 (2 * n)

end

end A279673.P13340491910261852322

namespace A279673

/-- `A159285(2*n)+A107853(2*n)` -/
def P13340491910261852322.Spec : Prop :=
  ∀ n, P13340491910261852322.a n = A279673 n

end A279673

/-! ## A279673.P14875051632839214165

`A107851(2*(n+1))-A046978(2*n)`
-/

namespace A279673.P14875051632839214165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107851 (2 * (n + 1)) - A046978 (2 * n)

end

end A279673.P14875051632839214165

namespace A279673

/-- `A107851(2*(n+1))-A046978(2*n)` -/
def P14875051632839214165.Spec : Prop :=
  ∀ n, P14875051632839214165.a n = A279673 n

end A279673

/-! ## A279673.P17566904962573424082

`A167434(2*n)-A052947(2*n+1)`
-/

namespace A279673.P17566904962573424082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167434 (2 * n) - A052947 (2 * n + 1)

end

end A279673.P17566904962573424082

namespace A279673

/-- `A167434(2*n)-A052947(2*n+1)` -/
def P17566904962573424082.Spec : Prop :=
  ∀ n, P17566904962573424082.a n = A279673 n

end A279673

/-! ## A279673.P11201412144125815301

`A107851(2*(n+1))-A132380(2*n)`
-/

namespace A279673.P11201412144125815301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107851 (2 * (n + 1)) - A132380 (2 * n)

end

end A279673.P11201412144125815301

namespace A279673

/-- `A107851(2*(n+1))-A132380(2*n)` -/
def P11201412144125815301.Spec : Prop :=
  ∀ n, P11201412144125815301.a n = A279673 n

end A279673

/-! ## A279673.P8762595756014289999

`A107854(2*n+3)-A014017(2*n)`
-/

namespace A279673.P8762595756014289999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (2 * n + 3) - A014017 (2 * n)

end

end A279673.P8762595756014289999

namespace A279673

/-- `A107854(2*n+3)-A014017(2*n)` -/
def P8762595756014289999.Spec : Prop :=
  ∀ n, P8762595756014289999.a n = A279673 n

end A279673

/-! ## A279673.P13578523946625837621

`A107854(2*n+3)-A128130(2*n)`
-/

namespace A279673.P13578523946625837621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (2 * n + 3) - A128130 (2 * n)

end

end A279673.P13578523946625837621

namespace A279673

/-- `A107854(2*n+3)-A128130(2*n)` -/
def P13578523946625837621.Spec : Prop :=
  ∀ n, P13578523946625837621.a n = A279673 n

end A279673

/-! ## A279673.P3951373561493530188

`A159285(2*n)+2*A159287(2*n)`
-/

namespace A279673.P3951373561493530188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 (2 * n) + 2 * A159287 (2 * n)

end

end A279673.P3951373561493530188

namespace A279673

/-- `A159285(2*n)+2*A159287(2*n)` -/
def P3951373561493530188.Spec : Prop :=
  ∀ n, P3951373561493530188.a n = A279673 n

end A279673

/-! ## A279673.P6539347554793736546

`A167434(2*n)-A159287(2*n+3)`
-/

namespace A279673.P6539347554793736546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167434 (2 * n) - A159287 (2 * n + 3)

end

end A279673.P6539347554793736546

namespace A279673

/-- `A167434(2*n)-A159287(2*n+3)` -/
def P6539347554793736546.Spec : Prop :=
  ∀ n, P6539347554793736546.a n = A279673 n

end A279673

/-! ## A279673.P1513202298276310093

`A052947(2*n+1)+A052947(2*(n+1))`
-/

namespace A279673.P1513202298276310093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (2 * n + 1) + A052947 (2 * (n + 1))

end

end A279673.P1513202298276310093

namespace A279673

/-- `A052947(2*n+1)+A052947(2*(n+1))` -/
def P1513202298276310093.Spec : Prop :=
  ∀ n, P1513202298276310093.a n = A279673 n

end A279673

/-! ## A279673.P15167964978279934254

`A107851(2*(n+1))+A014017(2*(n+1))`
-/

namespace A279673.P15167964978279934254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107851 (2 * (n + 1)) + A014017 (2 * (n + 1))

end

end A279673.P15167964978279934254

namespace A279673

/-- `A107851(2*(n+1))+A014017(2*(n+1))` -/
def P15167964978279934254.Spec : Prop :=
  ∀ n, P15167964978279934254.a n = A279673 n

end A279673

/-! ## A279673.P7015747163227603466

`A159288(2*n+1)+A159287(2*n+1)`
-/

namespace A279673.P7015747163227603466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (2 * n + 1) + A159287 (2 * n + 1)

end

end A279673.P7015747163227603466

namespace A279673

/-- `A159288(2*n+1)+A159287(2*n+1)` -/
def P7015747163227603466.Spec : Prop :=
  ∀ n, P7015747163227603466.a n = A279673 n

end A279673

/-!
# A279674: The maximum number of coins that can be processed in n weighings that all are real except for one LHR-coin starting in the heavy state.

The programs for A279674, the canonical program `A279674.P9711059058286964189` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279674 has offset 0).

The definition of A279674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279674.P9096235832860859773

`ogf((1+x)/(1-2x+x^2-4x^3))`
-/

namespace A279674.P9096235832860859773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, 1, -4] n

end

end A279674.P9096235832860859773

namespace A279674

/-- `ogf((1+x)/(1-2x+x^2-4x^3))` -/
def P9096235832860859773.Spec : Prop :=
  ∀ n, P9096235832860859773.a n = A279674 n

end A279674

/-! ## A279674.P9711059058286964189

`2*a(n-1)-a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279674

/-- `2*a(n-1)-a(n-2)+4*a(n-3)` -/
def P9711059058286964189.Spec : Prop :=
  ∀ n, P9711059058286964189.a n = A279674 n

theorem P9711059058286964189.correct : P9711059058286964189.Spec := by
  intro n
  simp only [A279674]

end A279674

/-! ## A279674.P15289026163659225729

`abs(A078028(Δ[n²]))`
-/

namespace A279674.P15289026163659225729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078028 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A279674.P15289026163659225729

namespace A279674

/-- `abs(A078028(Δ[n²]))` -/
def P15289026163659225729.Spec : Prop :=
  ∀ n, P15289026163659225729.a n = A279674 n

end A279674

/-! ## A279674.P4489343547354667073

`A107854(2*(n+1))`
-/

namespace A279674.P4489343547354667073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (2 * (n + 1))

end

end A279674.P4489343547354667073

namespace A279674

/-- `A107854(2*(n+1))` -/
def P4489343547354667073.Spec : Prop :=
  ∀ n, P4489343547354667073.a n = A279674 n

end A279674

/-! ## A279674.P2690930576671245080

`A159284(2*(n+1))`
-/

namespace A279674.P2690930576671245080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (2 * (n + 1))

end

end A279674.P2690930576671245080

namespace A279674

/-- `A159284(2*(n+1))` -/
def P2690930576671245080.Spec : Prop :=
  ∀ n, P2690930576671245080.a n = A279674 n

end A279674

/-! ## A279674.P16070095383892915055

`record[-A078028(n+1)]`
-/

namespace A279674.P16070095383892915055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279674.P16070095383892915055

namespace A279674

/-- `record[-A078028(n+1)]` -/
def P16070095383892915055.Spec : Prop :=
  ∀ n, P16070095383892915055.a n = A279674 n

end A279674

/-! ## A279674.P5855068138472213668

`∑[abs(Δ[A159284(2*n)])]`
-/

namespace A279674.P5855068138472213668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279674.P5855068138472213668

namespace A279674

/-- `∑[abs(Δ[A159284(2*n)])]` -/
def P5855068138472213668.Spec : Prop :=
  ∀ n, P5855068138472213668.a n = A279674 n

end A279674

/-! ## A279674.P12230892928977749517

`A107853(2*n)+A078028(2*n)`
-/

namespace A279674.P12230892928977749517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107853 (2 * n) + A078028 (2 * n)

end

end A279674.P12230892928977749517

namespace A279674

/-- `A107853(2*n)+A078028(2*n)` -/
def P12230892928977749517.Spec : Prop :=
  ∀ n, P12230892928977749517.a n = A279674 n

end A279674

/-! ## A279674.P841418728650203698

`A159288(2*n)+A159287(2*n)`
-/

namespace A279674.P841418728650203698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (2 * n) + A159287 (2 * n)

end

end A279674.P841418728650203698

namespace A279674

/-- `A159288(2*n)+A159287(2*n)` -/
def P841418728650203698.Spec : Prop :=
  ∀ n, P841418728650203698.a n = A279674 n

end A279674

/-! ## A279674.P8539844511375256224

`A000007(n+1)-A078028(2*n+1)`
-/

namespace A279674.P8539844511375256224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A078028 (2 * n + 1)

end

end A279674.P8539844511375256224

namespace A279674

/-- `A000007(n+1)-A078028(2*n+1)` -/
def P8539844511375256224.Spec : Prop :=
  ∀ n, P8539844511375256224.a n = A279674 n

end A279674

/-! ## A279674.P11329029525845610849

`A052947(2*n+1)+A052947(2*n)`
-/

namespace A279674.P11329029525845610849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (2 * n + 1) + A052947 (2 * n)

end

end A279674.P11329029525845610849

namespace A279674

/-- `A052947(2*n+1)+A052947(2*n)` -/
def P11329029525845610849.Spec : Prop :=
  ∀ n, P11329029525845610849.a n = A279674 n

end A279674

/-! ## A279674.P870827359881393443

`A107851(2*n+1)-A046978(2*n)`
-/

namespace A279674.P870827359881393443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107851 (2 * n + 1) - A046978 (2 * n)

end

end A279674.P870827359881393443

namespace A279674

/-- `A107851(2*n+1)-A046978(2*n)` -/
def P870827359881393443.Spec : Prop :=
  ∀ n, P870827359881393443.a n = A279674 n

end A279674

/-! ## A279674.P7542363836866393927

`A091337(2*n)-A078028(2*n+1)`
-/

namespace A279674.P7542363836866393927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (2 * n) - A078028 (2 * n + 1)

end

end A279674.P7542363836866393927

namespace A279674

/-- `A091337(2*n)-A078028(2*n+1)` -/
def P7542363836866393927.Spec : Prop :=
  ∀ n, P7542363836866393927.a n = A279674 n

end A279674

/-! ## A279674.P709269021477743141

`A107851(2*n+1)-A132380(2*n)`
-/

namespace A279674.P709269021477743141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107851 (2 * n + 1) - A132380 (2 * n)

end

end A279674.P709269021477743141

namespace A279674

/-- `A107851(2*n+1)-A132380(2*n)` -/
def P709269021477743141.Spec : Prop :=
  ∀ n, P709269021477743141.a n = A279674 n

end A279674

/-! ## A279674.P3076949028855872946

`A188510(2*n)-A078028(2*n+1)`
-/

namespace A279674.P3076949028855872946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n) - A078028 (2 * n + 1)

end

end A279674.P3076949028855872946

namespace A279674

/-- `A188510(2*n)-A078028(2*n+1)` -/
def P3076949028855872946.Spec : Prop :=
  ∀ n, P3076949028855872946.a n = A279674 n

end A279674

/-! ## A279674.P10620035581617169912

`A078028(2*n)+2*A159287(2*n)`
-/

namespace A279674.P10620035581617169912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 (2 * n) + 2 * A159287 (2 * n)

end

end A279674.P10620035581617169912

namespace A279674

/-- `A078028(2*n)+2*A159287(2*n)` -/
def P10620035581617169912.Spec : Prop :=
  ∀ n, P10620035581617169912.a n = A279674 n

end A279674

/-! ## A279674.P2967374033447544169

`abs(A056594(2*n)*A078028(2*n+1))`
-/

namespace A279674.P2967374033447544169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056594 (2 * n) * A078028 (2 * n + 1)|

end

end A279674.P2967374033447544169

namespace A279674

/-- `abs(A056594(2*n)*A078028(2*n+1))` -/
def P2967374033447544169.Spec : Prop :=
  ∀ n, P2967374033447544169.a n = A279674 n

end A279674

/-! ## A279674.P10639845841435627023

`A107851(2*n+1)+A014017(2*(n+1))`
-/

namespace A279674.P10639845841435627023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107851 (2 * n + 1) + A014017 (2 * (n + 1))

end

end A279674.P10639845841435627023

namespace A279674

/-- `A107851(2*n+1)+A014017(2*(n+1))` -/
def P10639845841435627023.Spec : Prop :=
  ∀ n, P10639845841435627023.a n = A279674 n

end A279674

/-! ## A279674.P15385780458665414983

`A014017(2*n+1)-A078028(2*n+1)`
-/

namespace A279674.P15385780458665414983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (2 * n + 1) - A078028 (2 * n + 1)

end

end A279674.P15385780458665414983

namespace A279674

/-- `A014017(2*n+1)-A078028(2*n+1)` -/
def P15385780458665414983.Spec : Prop :=
  ∀ n, P15385780458665414983.a n = A279674 n

end A279674

/-! ## A279674.P18196116631395430648

`A056594(2*n+1)-A078028(2*n+1)`
-/

namespace A279674.P18196116631395430648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) - A078028 (2 * n + 1)

end

end A279674.P18196116631395430648

namespace A279674

/-- `A056594(2*n+1)-A078028(2*n+1)` -/
def P18196116631395430648.Spec : Prop :=
  ∀ n, P18196116631395430648.a n = A279674 n

end A279674

/-!
# A279675: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = 4/3.

The programs for A279675, the canonical program `A279675.P3676965793010702571` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279675 has offset 0).

The definition of A279675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279675.P3676965793010702571

`ogf((1-x-x^3+x^4)/(1+x+2x^2))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279675

/-- `ogf((1-x-x^3+x^4)/(1+x+2x^2))` -/
def P3676965793010702571.Spec : Prop :=
  ∀ n, P3676965793010702571.a n = A279675 n

theorem P3676965793010702571.correct : P3676965793010702571.Spec := by
  intro n
  simp only [A279675]

end A279675

/-! ## A279675.P9429137691295486560

`Δ[2*a(n-3)-a(n-2)]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0, a(4)=3, a(5)=1`
-/

namespace A279675.P9429137691295486560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0, 0, 3, 1] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279675.P9429137691295486560

namespace A279675

/-- `Δ[2*a(n-3)-a(n-2)]` -/
def P9429137691295486560.Spec : Prop :=
  ∀ n, P9429137691295486560.a n = A279675 n

end A279675

/-! ## A279675.P18108936803331035629

`A279591(n)+A056170(A279666(n))`
-/

namespace A279675.P18108936803331035629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279591 n + A056170 (A279666 n).toNat

end

end A279675.P18108936803331035629

namespace A279675

/-- `A279591(n)+A056170(A279666(n))` -/
def P18108936803331035629.Spec : Prop :=
  ∀ n, P18108936803331035629.a n = A279675 n

end A279675

/-! ## A279675.P5328663465145428923

`A279591(n)+A248805(A279600(n))`
-/

namespace A279675.P5328663465145428923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279591 n + A248805 (A279600 n).toNat

end

end A279675.P5328663465145428923

namespace A279675

/-- `A279591(n)+A248805(A279600(n))` -/
def P5328663465145428923.Spec : Prop :=
  ∀ n, P5328663465145428923.a n = A279675 n

end A279675

/-! ## A279675.P3495995392474193722

`A279591(A004907(n+1))`
-/

namespace A279675.P3495995392474193722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279591 (A004907 (n + 1)).toNat

end

end A279675.P3495995392474193722

namespace A279675

/-- `A279591(A004907(n+1))` -/
def P3495995392474193722.Spec : Prop :=
  ∀ n, P3495995392474193722.a n = A279675 n

end A279675

/-!
# A279676: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = 5/3.

The programs for A279676, the canonical program `A279676.P11943763100783385428` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279676 has offset 0).

The definition of A279676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279676.P11943763100783385428

`ogf((1-x-x^3+x^4)/(1+2x+2x^2))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279676

/-- `ogf((1-x-x^3+x^4)/(1+2x+2x^2))` -/
def P11943763100783385428.Spec : Prop :=
  ∀ n, P11943763100783385428.a n = A279676 n

theorem P11943763100783385428.correct : P11943763100783385428.Spec := by
  intro n
  simp only [A279676]

end A279676

/-!
# A279677: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = 5/4.

The programs for A279677, the canonical program `A279677.P3415235317251187103` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279677 has offset 0).

The definition of A279677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279677.P3415235317251187103

`ogf((1-x-x^4+x^5)/(1+x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279677

/-- `ogf((1-x-x^4+x^5)/(1+x+x^2+2x^3))` -/
def P3415235317251187103.Spec : Prop :=
  ∀ n, P3415235317251187103.a n = A279677 n

theorem P3415235317251187103.correct : P3415235317251187103.Spec := by
  intro n
  simp only [A279677]

end A279677

/-!
# A279678: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = 7/4.

The programs for A279678, the canonical program `A279678.P5209848793756205661` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279678 has offset 0).

The definition of A279678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279678.P5209848793756205661

`ogf((1-x-x^4+x^5)/(1+2x+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279678

/-- `ogf((1-x-x^4+x^5)/(1+2x+2x^2+2x^3))` -/
def P5209848793756205661.Spec : Prop :=
  ∀ n, P5209848793756205661.a n = A279678 n

theorem P5209848793756205661.correct : P5209848793756205661.Spec := by
  intro n
  simp only [A279678]

end A279678

/-!
# A279679: Irregular triangle read by rows: possible numbers of diagonals of an n-edged convex polyhedron.

The programs for A279679, there is no canonical definition to state claims against.
-/

/-! ## A279679.P5865096706621221574

`A014081(A003386(n+1))%(n!+1-val(n+2, 2))`
-/

namespace A279679.P5865096706621221574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014081 (A003386 (n + 1)).toNat) ((Nat.factorial n : ℤ) + (1 - (SequenceMachineLib.valuation (n + 2) 2 : ℤ)))

end

end A279679.P5865096706621221574

/-! ## A279679.P3549024947478900192

`A014081(A034188(n)+A003386(n+1))`
-/

namespace A279679.P3549024947478900192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A034188 n + A003386 (n + 1)).toNat

end

end A279679.P3549024947478900192

/-! ## A279679.P13204611731187590787

`A014081(A003386(n+1))%A000111(n)`
-/

namespace A279679.P13204611731187590787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014081 (A003386 (n + 1)).toNat) (A000111 n)

end

end A279679.P13204611731187590787

/-! ## A279679.P13025941167162209368

`A014081(A003386(n+1)%A020105(n))`
-/

namespace A279679.P13025941167162209368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Int.tmod (A003386 (n + 1)) (A020105 n)).toNat

end

end A279679.P13025941167162209368

/-! ## A279679.P9256239048922152227

`A341750(A000288(n))%A228506(n+1)`
-/

namespace A279679.P9256239048922152227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341750 (A000288 n).toNat) (A228506 (n + 1))

end

end A279679.P9256239048922152227

/-!
# A279680: Definition: m < n is an extradivisor of n if for some positive k < n, m | n | k^(n+1) + m and n | (n-k)^(n+1) + m. This sequence gives the smallest number with n extradivisors.

The programs for A279680, there is no canonical definition to state claims against.
-/

/-! ## A279680.P1914663942965238027

`A335260(∑[A127864(n)])`
-/

namespace A279680.P1914663942965238027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279680.P1914663942965238027

/-!
# A279682: The maximum number of coins that can be processed in n weighings where all coins are real except for one LHR-coin.

The programs for A279682, the canonical program `A279682.P9489527875938834770` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279682 has offset 0).

The definition of A279682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279682.P11545052095821650845

`ogf((1+x^2-6x^3)/(1-3x+x^2-x^3+2x^4+8x^5))`
-/

namespace A279682.P11545052095821650845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -6] [1, -3, 1, -1, 2, 8] n

end

end A279682.P11545052095821650845

namespace A279682

/-- `ogf((1+x^2-6x^3)/(1-3x+x^2-x^3+2x^4+8x^5))` -/
def P11545052095821650845.Spec : Prop :=
  ∀ n, P11545052095821650845.a n = A279682 n

end A279682

/-! ## A279682.P9489527875938834770

`3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)-8*a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=19, a(4)=49`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279682

/-- `3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)-8*a(n-5)` -/
def P9489527875938834770.Spec : Prop :=
  ∀ n, P9489527875938834770.a n = A279682 n

theorem P9489527875938834770.correct : P9489527875938834770.Spec := by
  intro n
  simp only [A279682]

end A279682

/-! ## A279682.P1625046690046965265

`A239851(2*(n+1))-A001045(n+2)`
-/

namespace A279682.P1625046690046965265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (2 * (n + 1)) - A001045 (n + 2)

end

end A279682.P1625046690046965265

namespace A279682

/-- `A239851(2*(n+1))-A001045(n+2)` -/
def P1625046690046965265.Spec : Prop :=
  ∀ n, P1625046690046965265.a n = A279682 n

end A279682

/-! ## A279682.P4620582707221969571

`Δ[∑[A279684(n)]-A279674(n)]`
-/

namespace A279682.P4620582707221969571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279684 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A279674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279682.P4620582707221969571

namespace A279682

/-- `Δ[∑[A279684(n)]-A279674(n)]` -/
def P4620582707221969571.Spec : Prop :=
  ∀ n, P4620582707221969571.a n = A279682 n

end A279682

/-! ## A279682.P10996101970367829435

`A279684(n+1)-Δ[A279674(n)]`
-/

namespace A279682.P10996101970367829435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279684 (n + 1) - (f1 (n + 1) - f1 n)

end

end A279682.P10996101970367829435

namespace A279682

/-- `A279684(n+1)-Δ[A279674(n)]` -/
def P10996101970367829435.Spec : Prop :=
  ∀ n, P10996101970367829435.a n = A279682 n

end A279682

/-! ## A279682.P106462051784543335

`A279684(n+1)+A279674(n)-A279674(n+1)`
-/

namespace A279682.P106462051784543335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279684 (n + 1) + (A279674 n - A279674 (n + 1))

end

end A279682.P106462051784543335

namespace A279682

/-- `A279684(n+1)+A279674(n)-A279674(n+1)` -/
def P106462051784543335.Spec : Prop :=
  ∀ n, P106462051784543335.a n = A279682 n

end A279682

/-! ## A279682.P8804385923233973840

`A239851(2*(n+1))-record[A091597(n)]`
-/

namespace A279682.P8804385923233973840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (2 * (n + 1)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279682.P8804385923233973840

namespace A279682

/-- `A239851(2*(n+1))-record[A091597(n)]` -/
def P8804385923233973840.Spec : Prop :=
  ∀ n, P8804385923233973840.a n = A279682 n

end A279682

/-!
# A279683: Number of move operations required to sort all permutations of [n] by MTF sort.

The programs for A279683, the canonical program `A279683.P9601176523734719642` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279683 has offset 0).

The definition of A279683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279683.P9601176523734719642

`a(n-1)*n+(n-1)!*(2^(n-1)-1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279683

/-- `a(n-1)*n+(n-1)!*(2^(n-1)-1)` -/
def P9601176523734719642.Spec : Prop :=
  ∀ n, P9601176523734719642.a n = (A279683 n : ℚ)

end A279683

/-! ## A279683.P1998831247361282104

`A126674(n)-A000254(n)`
-/

namespace A279683.P1998831247361282104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126674 n - A000254 n

end

end A279683.P1998831247361282104

namespace A279683

/-- `A126674(n)-A000254(n)` -/
def P1998831247361282104.Spec : Prop :=
  ∀ n, P1998831247361282104.a n = A279683 n

end A279683

/-! ## A279683.P1452044022997098240

`A126674(n)-abs(A081048(n))`
-/

namespace A279683.P1452044022997098240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126674 n - |A081048 n|

end

end A279683.P1452044022997098240

namespace A279683

/-- `A126674(n)-abs(A081048(n))` -/
def P1452044022997098240.Spec : Prop :=
  ∀ n, P1452044022997098240.a n = A279683 n

end A279683

/-! ## A279683.P6708416627245968103

`A126674(n)-(n!-A081047(n))`
-/

namespace A279683.P6708416627245968103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126674 n - ((Nat.factorial n : ℤ) - A081047 n)

end

end A279683.P6708416627245968103

namespace A279683

/-- `A126674(n)-(n!-A081047(n))` -/
def P6708416627245968103.Spec : Prop :=
  ∀ n, P6708416627245968103.a n = A279683 n

end A279683

/-! ## A279683.P5416142360603271504

`A126674(n)-A132393(∑[n+1]+2)`
-/

namespace A279683.P5416142360603271504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126674 n - A132393 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279683.P5416142360603271504

namespace A279683

/-- `A126674(n)-A132393(∑[n+1]+2)` -/
def P5416142360603271504.Spec : Prop :=
  ∀ n, P5416142360603271504.a n = A279683 n

end A279683

/-! ## A279683.P13825501438258979567

`A126674(n)-lcm(A000038(n)+1, A081048(n))`
-/

namespace A279683.P13825501438258979567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126674 n - (Int.lcm (A000038 n + 1) (A081048 n) : ℤ)

end

end A279683.P13825501438258979567

namespace A279683

/-- `A126674(n)-lcm(A000038(n)+1, A081048(n))` -/
def P13825501438258979567.Spec : Prop :=
  ∀ n, P13825501438258979567.a n = A279683 n

end A279683

/-!
# A279684: The maximum number of coins that can be processed in n weighings that all are real except for one LHR-coin starting in the heavy or real state.

The programs for A279684, the canonical program `A279684.P4033075778781296862` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279684 has offset 0).

The definition of A279684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279684.P11366325727414302948

`ogf((1-3x^2+2x^3-4x^4)/(1-3x+x^2-x^3+2x^4+8x^5))`
-/

namespace A279684.P11366325727414302948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, 2, -4] [1, -3, 1, -1, 2, 8] n

end

end A279684.P11366325727414302948

namespace A279684

/-- `ogf((1-3x^2+2x^3-4x^4)/(1-3x+x^2-x^3+2x^4+8x^5))` -/
def P11366325727414302948.Spec : Prop :=
  ∀ n, P11366325727414302948.a n = A279684 n

end A279684

/-! ## A279684.P4033075778781296862

`3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)-8*a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=15, a(4)=37`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279684

/-- `3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)-8*a(n-5)` -/
def P4033075778781296862.Spec : Prop :=
  ∀ n, P4033075778781296862.a n = A279684 n

theorem P4033075778781296862.correct : P4033075778781296862.Spec := by
  intro n
  simp only [A279684]

end A279684

/-! ## A279684.P12471791147915471568

`A239851(2*n+1)-A001045(n+1)`
-/

namespace A279684.P12471791147915471568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (2 * n + 1) - A001045 (n + 1)

end

end A279684.P12471791147915471568

namespace A279684

/-- `A239851(2*n+1)-A001045(n+1)` -/
def P12471791147915471568.Spec : Prop :=
  ∀ n, P12471791147915471568.a n = A279684 n

end A279684

/-! ## A279684.P15680522590991530288

`2*A159288(2*n)-A001045(n+1)`
-/

namespace A279684.P15680522590991530288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159288 (2 * n) - A001045 (n + 1)

end

end A279684.P15680522590991530288

namespace A279684

/-- `2*A159288(2*n)-A001045(n+1)` -/
def P15680522590991530288.Spec : Prop :=
  ∀ n, P15680522590991530288.a n = A279684 n

end A279684

/-! ## A279684.P17304526182574080066

`A239851(2*n+1)-∑[A094359(xor(1, n))]`
-/

namespace A279684.P17304526182574080066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279684.P17304526182574080066

namespace A279684

/-- `A239851(2*n+1)-∑[A094359(xor(1, n))]` -/
def P17304526182574080066.Spec : Prop :=
  ∀ n, P17304526182574080066.a n = A279684 n

end A279684

/-! ## A279684.P16089496883105586383

`Δ[A279682(n)/2]`
-/

namespace A279684.P16089496883105586383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279682 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279684.P16089496883105586383

namespace A279684

/-- `Δ[A279682(n)/2]` -/
def P16089496883105586383.Spec : Prop :=
  ∀ n, P16089496883105586383.a n = (A279684 n : ℚ)

end A279684

/-! ## A279684.P15086304600590817936

`(A279682(n+1)-A279682(n))/2`
-/

namespace A279684.P15086304600590817936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279682 (n + 1) - A279682 n : ℚ) / 2

end

end A279684.P15086304600590817936

namespace A279684

/-- `(A279682(n+1)-A279682(n))/2` -/
def P15086304600590817936.Spec : Prop :=
  ∀ n, P15086304600590817936.a n = (A279684 n : ℚ)

end A279684

/-!
# A279685: The maximum number of coins that can be processed in n weighings of an adaptive strategy that all are real (and identical) except for one LHR-coin starting in an unknown state.

The programs for A279685, the canonical program `A279685.P810604147465190313` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279685 has offset 0).

The definition of A279685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279685.P810604147465190313

`ogf((1-2x+3x^2-5x^3+6x^4-2x^5+4x^6+4x^7-7x^8-4x^9)/(1-3x+3x^2-5x^3+4x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279685

/-- `ogf((1-2x+3x^2-5x^3+6x^4-2x^5+4x^6+4x^7-7x^8-4x^9)/(1-3x+3x^2-5x^3+4x^4))` -/
def P810604147465190313.Spec : Prop :=
  ∀ n, P810604147465190313.a n = A279685 n

theorem P810604147465190313.correct : P810604147465190313.Spec := by
  intro n
  simp only [A279685]

end A279685

/-! ## A279685.P16501966162586152376

`A262689(or(A014524(n), A026787(n)))`
-/

namespace A279685.P16501966162586152376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor (A014524 n) (A026787 n)).toNat

end

end A279685.P16501966162586152376

namespace A279685

/-- `A262689(or(A014524(n), A026787(n)))` -/
def P16501966162586152376.Spec : Prop :=
  ∀ n, P16501966162586152376.a n = A279685 n

end A279685

/-! ## A279685.P18321232770549790155

`A152090(n+1)-A011727(A292713(n))`
-/

namespace A279685.P18321232770549790155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (n + 1) - A011727 (A292713 n).toNat

end

end A279685.P18321232770549790155

namespace A279685

/-- `A152090(n+1)-A011727(A292713(n))` -/
def P18321232770549790155.Spec : Prop :=
  ∀ n, P18321232770549790155.a n = A279685 n

end A279685

/-! ## A279685.P7126394934556800087

`A052284(2*n+1)-A304118(A112834(n))`
-/

namespace A279685.P7126394934556800087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052284 (2 * n + 1) - A304118 (A112834 n).toNat

end

end A279685.P7126394934556800087

namespace A279685

/-- `A052284(2*n+1)-A304118(A112834(n))` -/
def P7126394934556800087.Spec : Prop :=
  ∀ n, P7126394934556800087.a n = A279685 n

end A279685

/-!
# A279686: Numbers that are the least integer of a prime tower factorization equivalence class (see Comments for details).

The programs for A279686, there is no canonical definition to state claims against.
-/

/-! ## A279686.P11006864211515820463

`record[A279690(n+1)]`
-/

namespace A279686.P11006864211515820463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279686.P11006864211515820463

/-! ## A279686.P11721257374400275791

`eq[n, A279690(A028310(n))]`
-/

namespace A279686.P11721257374400275791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279690 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279686.P11721257374400275791

/-! ## A279686.P10323199311169886258

`eq[n, A279690(A000007(n)+n)]`
-/

namespace A279686.P10323199311169886258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279690 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279686.P10323199311169886258

/-! ## A279686.P469866061403939069

`eq[n, A279690(A000038(n)+n)]`
-/

namespace A279686.P469866061403939069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279690 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279686.P469866061403939069

/-! ## A279686.P6125648218685620739

`A279690(eq[n+1, A279690(n+1)]+1)`
-/

namespace A279686.P6125648218685620739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A279686.P6125648218685620739

/-!
# A279687: a(0) = 1, a(n) is the least prime factor of a(n-1)^2+1 that has not previously appeared in the sequence for n > 0.

The programs for A279687, there is no canonical definition to state claims against.
-/

/-! ## A279687.P4709714913818354212

`A031439(n)-A170964(A055772(n+1))`
-/

namespace A279687.P4709714913818354212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031439 n - A170964 (A055772 (n + 1)).toNat

end

end A279687.P4709714913818354212

/-!
# A279689: Numbers n such that n and 2n are anagrams in more than one base.

The programs for A279689, there is no canonical definition to state claims against.
-/

/-! ## A279689.P5223028378369453926

`8*A271479(A050916(n))`
-/

namespace A279689.P5223028378369453926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A271479 (A050916 n).toNat

end

end A279689.P5223028378369453926

/-!
# A279690: Smallest number with equivalent prime tower factorization as n.

The programs for A279690, there is no canonical definition to state claims against.
-/

/-! ## A279690.P6800302522921060475

`A071364(n+1)*A321125(A070875(n))`
-/

namespace A279690.P6800302522921060475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1) * A321125 (A070875 n).toNat

end

end A279690.P6800302522921060475

/-! ## A279690.P9441477929482023601

`A071364(n+1)*A137753(A033809(n+1))`
-/

namespace A279690.P9441477929482023601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1) * A137753 (A033809 (n + 1)).toNat

end

end A279690.P9441477929482023601

/-! ## A279690.P15899678363278095578

`A071364(n+1)*A283495(A051027(n+1))`
-/

namespace A279690.P15899678363278095578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1) * A283495 (A051027 (n + 1)).toNat

end

end A279690.P15899678363278095578

/-! ## A279690.P3799410676193819391

`A175781(A071364(n+1)^p?[A051903(n+1)])`
-/

namespace A279690.P3799410676193819391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (SequenceMachineLib.roundAway ((A071364 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ))).toNat

end

end A279690.P3799410676193819391

/-! ## A279690.P1868288495666954912

`A071364(n+1)*A353801(A008292(2*(n+2)))`
-/

namespace A279690.P1868288495666954912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1) * A353801 (A008292 (2 * (n + 2))).toNat

end

end A279690.P1868288495666954912

/-!
# A279693: Triangle read by rows in which row n lists the elements of the n-th row of A237048 and then the elements of the same row but in reverse order.

The programs for A279693, there is no canonical definition to state claims against.
-/

/-! ## A279693.P17989293629815268278

`A296077(A081856(n+1)+A055870(n))`
-/

namespace A279693.P17989293629815268278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296077 (A081856 (n + 1) + A055870 n).toNat

end

end A279693.P17989293629815268278

/-! ## A279693.P10381864509900286754

`A176048(A176041(n+1)+A137759(n+1))`
-/

namespace A279693.P10381864509900286754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176048 (A176041 (n + 1) + A137759 (n + 1)).toNat

end

end A279693.P10381864509900286754

/-! ## A279693.P17531556631441550640

`A358194(or(A002808(n+1), A375345(n+2)))`
-/

namespace A279693.P17531556631441550640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358194 (Int.lor (A002808 (n + 1)) (A375345 (n + 2))).toNat

end

end A279693.P17531556631441550640

/-! ## A279693.P8288218136536001376

`A051731(A339564(3*n+5)^A363941(n+1))`
-/

namespace A279693.P8288218136536001376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (SequenceMachineLib.roundAway ((A339564 (3 * n + 5) : ℚ) ^ (A363941 (n + 1) : ℤ))).toNat

end

end A279693.P8288218136536001376

/-!
# A279694: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A279694, there is no canonical definition to state claims against.
-/

/-! ## A279694.P18076945601292891715

`A007088(A279696(n))`
-/

namespace A279694.P18076945601292891715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279696 n).toNat

end

end A279694.P18076945601292891715

/-! ## A279694.P17030500694712979257

`A185544(2*A279696(n))`
-/

namespace A279694.P17030500694712979257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279696 n).toNat

end

end A279694.P17030500694712979257

/-! ## A279694.P6867094555261947181

`A283712(n)+A056594(A000698(n))`
-/

namespace A279694.P6867094555261947181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283712 n + A056594 (A000698 n).toNat

end

end A279694.P6867094555261947181

/-!
# A279695: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A279695, there is no canonical definition to state claims against.
-/

/-! ## A279695.P3687885731426834334

`A007088(A279697(n))`
-/

namespace A279695.P3687885731426834334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279697 n).toNat

end

end A279695.P3687885731426834334

/-! ## A279695.P5930883852701363967

`A305989(A279696(n)/A055642(n))`
-/

namespace A279695.P5930883852701363967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279696 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A279695.P5930883852701363967

/-! ## A279695.P4599507333591616977

`A305989(A279696(n)/A110591(n))`
-/

namespace A279695.P4599507333591616977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279696 n : ℚ) / (A110591 n : ℚ))).toNat

end

end A279695.P4599507333591616977

/-! ## A279695.P8343051039882409986

`A305989(A279696(n)/A058398(n+1))`
-/

namespace A279695.P8343051039882409986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279696 n : ℚ) / (A058398 (n + 1) : ℚ))).toNat

end

end A279695.P8343051039882409986

/-! ## A279695.P16191545073352063676

`A305989(A279696(n)/A276502(n+1))`
-/

namespace A279695.P16191545073352063676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279696 n : ℚ) / (A276502 (n + 1) : ℚ))).toNat

end

end A279695.P16191545073352063676

/-!
# A279697: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A279697, there is no canonical definition to state claims against.
-/

/-! ## A279697.P1425313046068428821

`A325401(A279696(n)/A130658(n))`
-/

namespace A279697.P1425313046068428821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A279696 n : ℚ) / (A130658 n : ℚ))).toNat

end

end A279697.P1425313046068428821

/-! ## A279697.P12379847803203845524

`A325401(A279696(n))`
-/

namespace A279697.P12379847803203845524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A279696 n).toNat

end

end A279697.P12379847803203845524

/-! ## A279697.P7472713444560213255

`A030101(A279696(n)/(2-char[∑[n]]))`
-/

namespace A279697.P7472713444560213255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A279696 n : ℚ) / (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ))).toNat

end

end A279697.P7472713444560213255

/-! ## A279697.P8355076122631407

`A030101(A279696(n))`
-/

namespace A279697.P8355076122631407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A279696 n).toNat

end

end A279697.P8355076122631407

/-!
# A279698: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 185", based on the 5-celled von Neumann neighborhood.

The programs for A279698, there is no canonical definition to state claims against.
-/

/-! ## A279698.P4555570290864129664

`A007088(A279700(n))`
-/

namespace A279698.P4555570290864129664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279700 n).toNat

end

end A279698.P4555570290864129664

/-! ## A279698.P17918475920406094224

`A185544(2*A279700(n))`
-/

namespace A279698.P17918475920406094224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279700 n).toNat

end

end A279698.P17918475920406094224

/-!
# A279699: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 185", based on the 5-celled von Neumann neighborhood.

The programs for A279699, there is no canonical definition to state claims against.
-/

/-! ## A279699.P1331802944523793342

`A007088(A279701(n))`
-/

namespace A279699.P1331802944523793342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279701 n).toNat

end

end A279699.P1331802944523793342

/-! ## A279699.P7777314747865989267

`A185544(2*A279701(n))`
-/

namespace A279699.P7777314747865989267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279701 n).toNat

end

end A279699.P7777314747865989267

