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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A343600: For any positive number n, the ternary representation of a(n) is obtained by left-rotating the ternary representation of n until a nonzero digit appears again as the leftmost digit; a(0) = 0.

The programs for A343600, there is no canonical definition to state claims against.
-/

/-! ## A343600.P12057124122104582337

`A343601(A300956(A343601(A343601(A300956(n)))))`
-/

namespace A343600.P12057124122104582337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343601 (A300956 (A343601 (A343601 (A300956 n).toNat).toNat).toNat).toNat

end

end A343600.P12057124122104582337

/-!
# A343601: For any positive number n, the ternary representation of a(n) is obtained by right-rotating the ternary representation of n until a nonzero digit appears again as the leftmost digit; a(0) = 0.

The programs for A343601, there is no canonical definition to state claims against.
-/

/-! ## A343601.P4990883595864524711

`A343600(A300956(A343600(A343600(A300956(n)))))`
-/

namespace A343601.P4990883595864524711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343600 (A300956 (A343600 (A343600 (A300956 n).toNat).toNat).toNat).toNat

end

end A343601.P4990883595864524711

/-!
# A343602: For any positive number n, the balanced ternary representation of a(n) is obtained by left-rotating the balanced ternary representation of n until a nonzero digit appears again as the leftmost digit; a(0) = 0.

The programs for A343602, there is no canonical definition to state claims against.
-/

/-! ## A343602.P6302586913753427037

`A160652(A351702(n))`
-/

namespace A343602.P6302586913753427037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (A351702 n).toNat

end

end A343602.P6302586913753427037

/-! ## A343602.P10631624626643216201

`A160652(floor(A134028(3*n+1)/3))`
-/

namespace A343602.P10631624626643216201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 ⌊(A134028 (3 * n + 1) : ℚ) / 3⌋.toNat

end

end A343602.P10631624626643216201

/-! ## A343602.P12109259197334925157

`A160652(round(A134028(3*n+1)/3))`
-/

namespace A343602.P12109259197334925157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (SequenceMachineLib.roundAway ((A134028 (3 * n + 1) : ℚ) / 3)).toNat

end

end A343602.P12109259197334925157

/-!
# A343606: Row n gives the lexicographically earliest edge coloring of the complete graph K_n with no monochromatic triangle.

The programs for A343606, there is no canonical definition to state claims against.
-/

/-! ## A343606.P14576580315118423027

`A051023(2*A000009(3*n+2))`
-/

namespace A343606.P14576580315118423027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 (2 * A000009 (3 * n + 2)).toNat

end

end A343606.P14576580315118423027

/-! ## A343606.P9387339333196635873

`A284848(lcm(n+2, A034856(n+2)))`
-/

namespace A343606.P9387339333196635873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (Int.lcm (n + 2 : ℤ) (A034856 (n + 2)))

end

end A343606.P9387339333196635873

/-! ## A343606.P6121923534427849652

`A046080(A200454(n+1)+A194274(n))`
-/

namespace A343606.P6121923534427849652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A200454 (n + 1) + A194274 n).toNat

end

end A343606.P6121923534427849652

/-! ## A343606.P2184653628614226900

`A322217(lcm(A215561(n), A251721(n+1)))`
-/

namespace A343606.P2184653628614226900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 (Int.lcm (A215561 n) (A251721 (n + 1)))

end

end A343606.P2184653628614226900

/-! ## A343606.P12443431707025040194

`and(A005614(A188199(n+1)), A024790(n+3))`
-/

namespace A343606.P12443431707025040194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005614 (A188199 (n + 1)).toNat) (A024790 (n + 3))

end

end A343606.P12443431707025040194

/-!
# A343607: Minimal number of colors required for an edge-coloring of the complete graph K_n with no monochromatic triangle.

The programs for A343607, there is no canonical definition to state claims against.
-/

/-! ## A343607.P17877440198763181977

`floor(atan(n)^log(29))`
-/

namespace A343607.P17877440198763181977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) ^ (Real.log (29 : ℝ))⌋

end

end A343607.P17877440198763181977

/-! ## A343607.P12549309931419955008

`floor(∑[3/(n²+6)]²)`
-/

namespace A343607.P12549309931419955008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n ^ 2 + 6 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A343607.P12549309931419955008

/-! ## A343607.P8158073485089612219

`a(floor(n^sin(59)))+1` with `a(0)=0, a(1)=0`
-/

namespace A343607.P8158073485089612219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a ⌊(n : ℝ) ^ (Real.sin (59 : ℝ))⌋.toNat + 1

end

end A343607.P8158073485089612219

/-! ## A343607.P4895676249328713268

`∑[char[3*n!-n%2]]`
-/

namespace A343607.P4895676249328713268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.factorial n : ℤ) - ((n % 2 : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343607.P4895676249328713268

/-! ## A343607.P2970255729363099547

`round(4*C(n, 2)/(∑[n]+2))`
-/

namespace A343607.P2970255729363099547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * Nat.choose n 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ))

end

end A343607.P2970255729363099547

/-! ## A343607.P17409666813127371249

`∑[char[C(2*n, n+1)+2]]`
-/

namespace A343607.P17409666813127371249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343607.P17409666813127371249

/-! ## A343607.P13186876440430912004

`∑[char[A114491(n)]]`
-/

namespace A343607.P13186876440430912004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114491 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343607.P13186876440430912004

/-! ## A343607.P4760737848378123919

`∑[char[A169974(n)]]`
-/

namespace A343607.P4760737848378123919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169974 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343607.P4760737848378123919

/-! ## A343607.P5750441506672258438

`∑[char[A000111(n)+1]]`
-/

namespace A343607.P5750441506672258438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343607.P5750441506672258438

/-! ## A343607.P14398911027883305991

`∑[char[A003183(n+1)]]`
-/

namespace A343607.P14398911027883305991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003183 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343607.P14398911027883305991

/-!
# A343608: a(n) = [n/5]*[n/5 - 1]*(3n - 10[n/5 + 1])/6, where [.] = floor: upper bound for minimum number of monochromatic triangles in a 3-edge-colored complete graph K_n.

The programs for A343608, the canonical program `A343608.P10178112473439141716` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343608 has offset 0).

The definition of A343608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343608.P10178112473439141716

`ogf(x^11/(1-2x+x^2-2x^5+4x^6-2x^7+x^10-2x^11+x^12))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A343608

/-- `ogf(x^11/(1-2x+x^2-2x^5+4x^6-2x^7+x^10-2x^11+x^12))` -/
def P10178112473439141716.Spec : Prop :=
  ∀ n, P10178112473439141716.a n = A343608 n

theorem P10178112473439141716.correct : P10178112473439141716.Spec := by
  intro n
  simp only [A343608]

end A343608

/-! ## A343608.P9064097942277577960

`∑[C(floor(abs(1-n)/5), 2)]`
-/

namespace A343608.P9064097942277577960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(|1 - (n : ℤ)| : ℚ) / 5⌋.toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343608.P9064097942277577960

namespace A343608

/-- `∑[C(floor(abs(1-n)/5), 2)]` -/
def P9064097942277577960.Spec : Prop :=
  ∀ n, (P9064097942277577960.a n : ℤ) = A343608 n

end A343608

/-! ## A343608.P3502624699383183164

`∑[A161680(comp[6*(n+1)]-n)]`
-/

namespace A343608.P3502624699383183164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343608.P3502624699383183164

namespace A343608

/-- `∑[A161680(comp[6*(n+1)]-n)]` -/
def P3502624699383183164.Spec : Prop :=
  ∀ n, P3502624699383183164.a n = A343608 n

end A343608

/-! ## A343608.P15439838831419144264

`∑[A130519(A130496(abs(1-n)))]`
-/

namespace A343608.P15439838831419144264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A130496 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343608.P15439838831419144264

namespace A343608

/-- `∑[A130519(A130496(abs(1-n)))]` -/
def P15439838831419144264.Spec : Prop :=
  ∀ n, P15439838831419144264.a n = A343608 n

end A343608

/-! ## A343608.P13328372472413044592

`∑[C(eq[n, A214394(n)]-n, 2)%(n+1)²]`
-/

namespace A343608.P13328372472413044592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)).toNat 2 % (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343608.P13328372472413044592

namespace A343608

/-- `∑[C(eq[n, A214394(n)]-n, 2)%(n+1)²]` -/
def P13328372472413044592.Spec : Prop :=
  ∀ n, (P13328372472413044592.a n : ℤ) = A343608 n

end A343608

/-! ## A343608.P8689714507584716634

`∑[lt[A219347(n+5), 3]-n]`
-/

namespace A343608.P8689714507584716634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343608.P8689714507584716634

namespace A343608

/-- `∑[lt[A219347(n+5), 3]-n]` -/
def P8689714507584716634.Spec : Prop :=
  ∀ n, P8689714507584716634.a n = A343608 n

end A343608

/-!
# A343609: a(n) = floor(n/9).

The programs for A343609, the canonical program `A343609.P5275308653700652084` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343609 has offset 0).

The definition of A343609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/9)` (program `A343609.P5275308653700652084`, by `A343609.P5275308653700652084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343609.P5275308653700652084

`floor(n/9)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A343609

/-- `floor(n/9)` -/
def P5275308653700652084.Spec : Prop :=
  ∀ n, P5275308653700652084.a n = A343609 n

theorem P5275308653700652084.correct : P5275308653700652084.Spec := by
  intro n
  simp only [A343609]

end A343609

/-! ## A343609.P11576273994043972823

`ogf(x^9/(1-x-x^9+x^10))`
-/

namespace A343609.P11576273994043972823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 0, 0, 0, 0, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A343609.P11576273994043972823

namespace A343609

/-- `ogf(x^9/(1-x-x^9+x^10))` -/
def P11576273994043972823.Spec : Prop :=
  ∀ n, P11576273994043972823.a n = A343609 n

end A343609

/-! ## A343609.P7317052710179669633

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=1`
-/

namespace A343609.P7317052710179669633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0, 0, 1] fun n a =>
  a (n - 1) + a (n - 9) - a (n - 10)

end

end A343609.P7317052710179669633

namespace A343609

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P7317052710179669633.Spec : Prop :=
  ∀ n, P7317052710179669633.a n = A343609 n

end A343609

/-! ## A343609.P191615747631450813

`A002264(A002264(n))`
-/

namespace A343609.P191615747631450813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 n).toNat

end

end A343609.P191615747631450813

namespace A343609

/-- `A002264(A002264(n))` -/
def P191615747631450813.Spec : Prop :=
  ∀ n, P191615747631450813.a n = A343609 n

end A343609

/-! ## A343609.P18392773413199449016

`∑[C(dr(n), 9)]`
-/

namespace A343609.P18392773413199449016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.digitalRoot (n : ℤ)) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343609.P18392773413199449016

namespace A343609

/-- `∑[C(dr(n), 9)]` -/
def P18392773413199449016.Spec : Prop :=
  ∀ n, (P18392773413199449016.a n : ℤ) = A343609 n

end A343609

/-! ## A343609.P6154358501673424930

`(n-n%9)/9`
-/

namespace A343609.P6154358501673424930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 9 : ℕ) : ℤ) : ℚ) / 9

end

end A343609.P6154358501673424930

namespace A343609

/-- `(n-n%9)/9` -/
def P6154358501673424930.Spec : Prop :=
  ∀ n, P6154358501673424930.a n = (A343609 n : ℚ)

end A343609

/-! ## A343609.P3087248604896532047

`round(cos(2)+n/9)`
-/

namespace A343609.P3087248604896532047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n : ℚ) / 9 : ℝ))

end

end A343609.P3087248604896532047

namespace A343609

/-- `round(cos(2)+n/9)` -/
def P3087248604896532047.Spec : Prop :=
  ∀ n, P3087248604896532047.a n = A343609 n

end A343609

/-! ## A343609.P2117709388235039612

`ceil(cos(3)+n/9)`
-/

namespace A343609.P2117709388235039612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + ((n : ℚ) / 9 : ℝ)⌉

end

end A343609.P2117709388235039612

namespace A343609

/-- `ceil(cos(3)+n/9)` -/
def P2117709388235039612.Spec : Prop :=
  ∀ n, P2117709388235039612.a n = A343609 n

end A343609

/-! ## A343609.P9549707788258417038

`ceil(n/9-sin(2))`
-/

namespace A343609.P9549707788258417038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 9 : ℝ) - Real.sin (2 : ℝ)⌉

end

end A343609.P9549707788258417038

namespace A343609

/-- `ceil(n/9-sin(2))` -/
def P9549707788258417038.Spec : Prop :=
  ∀ n, P9549707788258417038.a n = A343609 n

end A343609

/-! ## A343609.P15425728479322767486

`ceil(sin(5)+n/9)`
-/

namespace A343609.P15425728479322767486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (5 : ℝ) + ((n : ℚ) / 9 : ℝ)⌉

end

end A343609.P15425728479322767486

namespace A343609

/-- `ceil(sin(5)+n/9)` -/
def P15425728479322767486.Spec : Prop :=
  ∀ n, P15425728479322767486.a n = A343609 n

end A343609

/-! ## A343609.P6986644226497513080

`ceil(n/9-cos(6))`
-/

namespace A343609.P6986644226497513080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 9 : ℝ) - Real.cos (6 : ℝ)⌉

end

end A343609.P6986644226497513080

namespace A343609

/-- `ceil(n/9-cos(6))` -/
def P6986644226497513080.Spec : Prop :=
  ∀ n, P6986644226497513080.a n = A343609 n

end A343609

/-! ## A343609.P6948206435122961155

`∑[char[lcm(9, n+1)]]`
-/

namespace A343609.P6948206435122961155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 9 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343609.P6948206435122961155

namespace A343609

/-- `∑[char[lcm(9, n+1)]]` -/
def P6948206435122961155.Spec : Prop :=
  ∀ n, (P6948206435122961155.a n : ℤ) = A343609 n

end A343609

/-! ## A343609.P17814555731470165425

`round((n-cosh(2))/9)`
-/

namespace A343609.P17814555731470165425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.cosh (2 : ℝ)) / 9)

end

end A343609.P17814555731470165425

namespace A343609

/-- `round((n-cosh(2))/9)` -/
def P17814555731470165425.Spec : Prop :=
  ∀ n, P17814555731470165425.a n = A343609 n

end A343609

/-! ## A343609.P297057946866243652

`round((n-sinh(2))/9)`
-/

namespace A343609.P297057946866243652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.sinh (2 : ℝ)) / 9)

end

end A343609.P297057946866243652

namespace A343609

/-- `round((n-sinh(2))/9)` -/
def P297057946866243652.Spec : Prop :=
  ∀ n, P297057946866243652.a n = A343609 n

end A343609

/-! ## A343609.P6296641844583269345

`ceil(n/9-tanh(2))`
-/

namespace A343609.P6296641844583269345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 9 : ℝ) - Real.tanh (2 : ℝ)⌉

end

end A343609.P6296641844583269345

namespace A343609

/-- `ceil(n/9-tanh(2))` -/
def P6296641844583269345.Spec : Prop :=
  ∀ n, P6296641844583269345.a n = A343609 n

end A343609

/-! ## A343609.P9044682325304134891

`round(cot(2)+n/9)`
-/

namespace A343609.P9044682325304134891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 : ℝ) + ((n : ℚ) / 9 : ℝ))

end

end A343609.P9044682325304134891

namespace A343609

/-- `round(cot(2)+n/9)` -/
def P9044682325304134891.Spec : Prop :=
  ∀ n, P9044682325304134891.a n = A343609 n

end A343609

/-! ## A343609.P14305485956033917135

`round(tan(9)+n/9)`
-/

namespace A343609.P14305485956033917135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (9 : ℝ) + ((n : ℚ) / 9 : ℝ))

end

end A343609.P14305485956033917135

namespace A343609

/-- `round(tan(9)+n/9)` -/
def P14305485956033917135.Spec : Prop :=
  ∀ n, P14305485956033917135.a n = A343609 n

end A343609

/-! ## A343609.P359941991699048466

`round(n/9-sin(9))`
-/

namespace A343609.P359941991699048466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 9 : ℝ) - Real.sin (9 : ℝ))

end

end A343609.P359941991699048466

namespace A343609

/-- `round(n/9-sin(9))` -/
def P359941991699048466.Spec : Prop :=
  ∀ n, P359941991699048466.a n = A343609 n

end A343609

/-! ## A343609.P7583052792963571214

`round(n/9-acot(2))`
-/

namespace A343609.P7583052792963571214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 9 : ℝ) - SequenceMachineLib.acot (2 : ℝ))

end

end A343609.P7583052792963571214

namespace A343609

/-- `round(n/9-acot(2))` -/
def P7583052792963571214.Spec : Prop :=
  ∀ n, P7583052792963571214.a n = A343609 n

end A343609

/-! ## A343609.P836526330746838272

`comp[10*n]%(n+1)`
-/

namespace A343609.P836526330746838272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A343609.P836526330746838272

namespace A343609

/-- `comp[10*n]%(n+1)` -/
def P836526330746838272.Spec : Prop :=
  ∀ n, (P836526330746838272.a n : ℤ) = A343609 n

end A343609

/-!
# A343621: Numbers k such that the largest Dyck path of the symmetric representation of sigma(k) does not touch the largest Dyck path of the symmetric representation of sigma(k+1).

The programs for A343621, there is no canonical definition to state claims against.
-/

/-! ## A343621.P8990844295424291977

`A174973(n+2)-1`
-/

namespace A343621.P8990844295424291977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 2) - 1

end

end A343621.P8990844295424291977

/-! ## A343621.P8941575812532814968

`∑[A389763(1+n)]`
-/

namespace A343621.P8941575812532814968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389763 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343621.P8941575812532814968

/-! ## A343621.P4837919330589359611

`∑[runs[A392987(n+1)]]`
-/

namespace A343621.P4837919330589359611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392987 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343621.P4837919330589359611

/-! ## A343621.P4905931939099976316

`comp[n-A365429(n+1)]`
-/

namespace A343621.P4905931939099976316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A365429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A343621.P4905931939099976316

/-! ## A343621.P11499541699207322336

`∑[abs(Δ[A174973(n+1)])]`
-/

namespace A343621.P11499541699207322336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343621.P11499541699207322336

/-! ## A343621.P3651514975557820298

`A047836(n+2)/2-1`
-/

namespace A343621.P3651514975557820298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047836 (n + 2) : ℚ) / 2 - 1

end

end A343621.P3651514975557820298

/-! ## A343621.P13015557956886136622

`eq[1, A237271(n+2)]+1`
-/

namespace A343621.P13015557956886136622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343621.P13015557956886136622

/-! ## A343621.P7009775533876714432

`A014681(A174973(n+2))`
-/

namespace A343621.P7009775533876714432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A174973 (n + 2)).toNat

end

end A343621.P7009775533876714432

/-! ## A343621.P5832694878474744431

`A014682(A047836(n+2)-2)`
-/

namespace A343621.P5832694878474744431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A047836 (n + 2) - 2).toNat

end

end A343621.P5832694878474744431

/-! ## A343621.P6895125820776759413

`A302032(A047836(n+2)-2)`
-/

namespace A343621.P6895125820776759413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A047836 (n + 2) - 2).toNat

end

end A343621.P6895125820776759413

/-! ## A343621.P10787895863750386540

`A014681(A047836(n+2)/2)`
-/

namespace A343621.P10787895863750386540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.roundAway ((A047836 (n + 2) : ℚ) / 2)).toNat

end

end A343621.P10787895863750386540

/-! ## A343621.P4825576567846307711

`A004273(A174973(n+2)/2)`
-/

namespace A343621.P4825576567846307711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A174973 (n + 2) : ℚ) / 2)).toNat

end

end A343621.P4825576567846307711

/-! ## A343621.P14660365177953369764

`A004442(eq[1, A237271(n+2)])`
-/

namespace A343621.P14660365177953369764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343621.P14660365177953369764

/-! ## A343621.P545918157048020261

`A141310(eq[1, A237271(n+2)])`
-/

namespace A343621.P545918157048020261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343621.P545918157048020261

/-! ## A343621.P5107271401842405952

`eq[A000035(n), A237271(n+1)]`
-/

namespace A343621.P5107271401842405952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343621.P5107271401842405952

/-! ## A343621.P18331390361074236499

`eq[A010153(n), A237271(n+1)]`
-/

namespace A343621.P18331390361074236499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343621.P18331390361074236499

/-! ## A343621.P11906222599650734926

`eq[A010170(n), A237271(n+1)]`
-/

namespace A343621.P11906222599650734926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343621.P11906222599650734926

/-! ## A343621.P132139387533332126

`eq[A010194(n), A237271(n+1)]`
-/

namespace A343621.P132139387533332126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343621.P132139387533332126

/-! ## A343621.P18044953522270210960

`eq[A010195(n), A237271(n+1)]`
-/

namespace A343621.P18044953522270210960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343621.P18044953522270210960

/-! ## A343621.P3294831403415355973

`eq[A010215(n), A237271(n+1)]`
-/

namespace A343621.P3294831403415355973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343621.P3294831403415355973

/-!
# A343623: E.g.f.: -log(1 - x - Sum_{k>=2} prime(k-1) * x^k / k!).

The programs for A343623, there is no canonical definition to state claims against.
-/

/-! ## A343623.P17779890097158441000

`record[A278523(3^(n%2)+n²)]-floor(sqrt(n))²`
-/

namespace A343623.P17779890097158441000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (3 ^ (n % 2) + n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (Nat.sqrt n ^ 2 : ℤ)

end

end A343623.P17779890097158441000

/-!
# A343631: X-coordinate of the points following the 3D spiral defined in A343630.

The programs for A343631, there is no canonical definition to state claims against.
-/

/-! ## A343631.P16407459586604267072

`A342561(n)%A070291(A362997(n))`
-/

namespace A343631.P16407459586604267072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342561 n) (A070291 (A362997 n).toNat)

end

end A343631.P16407459586604267072

/-!
# A343633: Z-coordinate of the points following the 3D spiral defined in A343630.

The programs for A343633, there is no canonical definition to state claims against.
-/

/-! ## A343633.P10788253735933993209

`A343630(3*n+2)`
-/

namespace A343633.P10788253735933993209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343630 (3 * n + 2)

end

end A343633.P10788253735933993209

/-! ## A343633.P4865098395991063869

`A343630(A016789(n))%3`
-/

namespace A343633.P4865098395991063869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343630 (A016789 n).toNat) 3

end

end A343633.P4865098395991063869

/-! ## A343633.P8996631627458397988

`A343630(A016789(n))^A014963(n+3)`
-/

namespace A343633.P8996631627458397988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343630 (A016789 n).toNat : ℚ) ^ (A014963 (n + 3) : ℤ)

end

end A343633.P8996631627458397988

/-! ## A343633.P3739247914302931298

`A007318(C(2, n))*A343630(A016789(n))`
-/

namespace A343633.P3739247914302931298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A343630 (A016789 n).toNat

end

end A343633.P3739247914302931298

/-! ## A343633.P16887849864429846019

`A343630(A016789(n))+val(A000041(n), 17)`
-/

namespace A343633.P16887849864429846019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343630 (A016789 n).toNat + (SequenceMachineLib.valuation (A000041 n).toNat 17 : ℤ)

end

end A343633.P16887849864429846019

/-!
# A343638: a(n) = (Sum of decimal digits of 3*n) / 3.

The programs for A343638, the canonical program `A343638.P11631486966476190110` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343638 has offset 0).

The definition of A343638 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343638.P14018847231026387013

`A007953(3*n)/3`
-/

namespace A343638.P14018847231026387013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (3 * n) : ℚ) / 3

end

end A343638.P14018847231026387013

namespace A343638

/-- `A007953(3*n)/3` -/
def P14018847231026387013.Spec : Prop :=
  ∀ n, P14018847231026387013.a n = (A343638 n : ℚ)

end A343638

/-! ## A343638.P11631486966476190110

`A002264(A007953(A008585(n)))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A343638

/-- `A002264(A007953(A008585(n)))` -/
def P11631486966476190110.Spec : Prop :=
  ∀ n, P11631486966476190110.a n = A343638 n

theorem P11631486966476190110.correct : P11631486966476190110.Spec := by
  intro n
  simp only [A343638]

end A343638

/-! ## A343638.P16511775222242288273

`∑{digits}[3*n, #/3]`
-/

namespace A343638.P16511775222242288273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / 3).sum

end

end A343638.P16511775222242288273

namespace A343638

/-- `∑{digits}[3*n, #/3]` -/
def P16511775222242288273.Spec : Prop :=
  ∀ n, P16511775222242288273.a n = (A343638 n : ℚ)

end A343638

/-! ## A343638.P12799346813976110739

`log(∏{digits}[3*n, exp(#)])/3`
-/

namespace A343638.P12799346813976110739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod / 3

end

end A343638.P12799346813976110739

namespace A343638

/-- `log(∏{digits}[3*n, exp(#)])/3` -/
def P12799346813976110739.Spec : Prop :=
  ∀ n, P12799346813976110739.a n = (A343638 n : ℝ)

end A343638

/-! ## A343638.P6654847299929925595

`∑{digits}[n+n+n, #]/3`
-/

namespace A343638.P6654847299929925595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + n + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) / 3

end

end A343638.P6654847299929925595

namespace A343638

/-- `∑{digits}[n+n+n, #]/3` -/
def P6654847299929925595.Spec : Prop :=
  ∀ n, P6654847299929925595.a n = (A343638 n : ℚ)

end A343638

/-! ## A343638.P6203637055429872646

`log2(∏{digits}[3*n, 2^#])/3`
-/

namespace A343638.P6203637055429872646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) / 3

end

end A343638.P6203637055429872646

namespace A343638

/-- `log2(∏{digits}[3*n, 2^#])/3` -/
def P6203637055429872646.Spec : Prop :=
  ∀ n, P6203637055429872646.a n = (A343638 n : ℝ)

end A343638

/-! ## A343638.P2251808936891240208

`A169805(3*n)/6`
-/

namespace A343638.P2251808936891240208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (3 * n) : ℚ) / 6

end

end A343638.P2251808936891240208

namespace A343638

/-- `A169805(3*n)/6` -/
def P2251808936891240208.Spec : Prop :=
  ∀ n, P2251808936891240208.a n = (A343638 n : ℚ)

end A343638

/-! ## A343638.P7956809349445926853

`val(A329562(3*n), 8)`
-/

namespace A343638.P7956809349445926853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329562 (3 * n)).toNat 8

end

end A343638.P7956809349445926853

namespace A343638

/-- `val(A329562(3*n), 8)` -/
def P7956809349445926853.Spec : Prop :=
  ∀ n, (P7956809349445926853.a n : ℤ) = A343638 n

end A343638

/-! ## A343638.P14409032995108998235

`A002264(∑{digits}[3*n, #])`
-/

namespace A343638.P14409032995108998235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A343638.P14409032995108998235

namespace A343638

/-- `A002264(∑{digits}[3*n, #])` -/
def P14409032995108998235.Spec : Prop :=
  ∀ n, P14409032995108998235.a n = A343638 n

end A343638

/-! ## A343638.P11710977876141507582

`A051176(∑{digits}[3*n, #])`
-/

namespace A343638.P11710977876141507582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A343638.P11710977876141507582

namespace A343638

/-- `A051176(∑{digits}[3*n, #])` -/
def P11710977876141507582.Spec : Prop :=
  ∀ n, P11710977876141507582.a n = A343638 n

end A343638

/-! ## A343638.P10681227466005635012

`ceil(log2(A000009(∑{digits}[3*n, #])))`
-/

namespace A343638.P10681227466005635012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A000009 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℝ)⌉

end

end A343638.P10681227466005635012

namespace A343638

/-- `ceil(log2(A000009(∑{digits}[3*n, #])))` -/
def P10681227466005635012.Spec : Prop :=
  ∀ n, P10681227466005635012.a n = A343638 n

end A343638

/-! ## A343638.P16336265857585169905

`A002264(A007953(3*n))`
-/

namespace A343638.P16336265857585169905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A007953 (3 * n)).toNat

end

end A343638.P16336265857585169905

namespace A343638

/-- `A002264(A007953(3*n))` -/
def P16336265857585169905.Spec : Prop :=
  ∀ n, P16336265857585169905.a n = A343638 n

end A343638

/-! ## A343638.P12000827394800258609

`A002264(A062028(3*n))-n`
-/

namespace A343638.P12000827394800258609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A062028 (3 * n)).toNat - (n : ℤ)

end

end A343638.P12000827394800258609

namespace A343638

/-- `A002264(A062028(3*n))-n` -/
def P12000827394800258609.Spec : Prop :=
  ∀ n, P12000827394800258609.a n = A343638 n

end A343638

/-! ## A343638.P4292445514427564717

`A144468(A144468(n)+A062028(3*n))`
-/

namespace A343638.P4292445514427564717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144468 (A144468 n + A062028 (3 * n)).toNat

end

end A343638.P4292445514427564717

namespace A343638

/-- `A144468(A144468(n)+A062028(3*n))` -/
def P4292445514427564717.Spec : Prop :=
  ∀ n, P4292445514427564717.a n = A343638 n

end A343638

/-! ## A343638.P9308189007545919415

`A144468(A062028(3*n)-A131579(n))`
-/

namespace A343638.P9308189007545919415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144468 (A062028 (3 * n) - A131579 n).toNat

end

end A343638.P9308189007545919415

namespace A343638

/-- `A144468(A062028(3*n)-A131579(n))` -/
def P9308189007545919415.Spec : Prop :=
  ∀ n, P9308189007545919415.a n = A343638 n

end A343638

/-! ## A343638.P18323997467775156644

`A007953(A002264(A007953(A008486(n))))`
-/

namespace A343638.P18323997467775156644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002264 (A007953 (A008486 n).toNat).toNat).toNat

end

end A343638.P18323997467775156644

namespace A343638

/-- `A007953(A002264(A007953(A008486(n))))` -/
def P18323997467775156644.Spec : Prop :=
  ∀ n, P18323997467775156644.a n = A343638 n

end A343638

/-! ## A343638.P7836283919036477812

`A007953(A002264(A007953(A002264(A008591(n)))))`
-/

namespace A343638.P7836283919036477812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002264 (A007953 (A002264 (A008591 n).toNat).toNat).toNat).toNat

end

end A343638.P7836283919036477812

namespace A343638

/-- `A007953(A002264(A007953(A002264(A008591(n)))))` -/
def P7836283919036477812.Spec : Prop :=
  ∀ n, P7836283919036477812.a n = A343638 n

end A343638

/-!
# A343639: a(n) = (Sum of digits of 9*n) / 9.

The programs for A343639, the canonical program `A343639.P15830460732918375926` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343639 has offset 0).

The definition of A343639 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343639.P15830460732918375926

`A007953(9*n)/9`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A343639

/-- `A007953(9*n)/9` -/
def P15830460732918375926.Spec : Prop :=
  ∀ n, P15830460732918375926.a n = (A343639 n : ℚ)

end A343639

/-! ## A343639.P7267037166228108992

`A343638(3*n)/3`
-/

namespace A343639.P7267037166228108992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343638 (3 * n) : ℚ) / 3

end

end A343639.P7267037166228108992

namespace A343639

/-- `A343638(3*n)/3` -/
def P7267037166228108992.Spec : Prop :=
  ∀ n, P7267037166228108992.a n = (A343639 n : ℚ)

end A343639

/-! ## A343639.P12295839959590959198

`∑{digits}[9*n, #/9]`
-/

namespace A343639.P12295839959590959198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / 9).sum

end

end A343639.P12295839959590959198

namespace A343639

/-- `∑{digits}[9*n, #/9]` -/
def P12295839959590959198.Spec : Prop :=
  ∀ n, P12295839959590959198.a n = (A343639 n : ℚ)

end A343639

/-! ## A343639.P6723910291029433668

`∑{digits}[A008591(n), #]%8`
-/

namespace A343639.P6723910291029433668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum % 8

end

end A343639.P6723910291029433668

namespace A343639

/-- `∑{digits}[A008591(n), #]%8` -/
def P6723910291029433668.Spec : Prop :=
  ∀ n, (P6723910291029433668.a n : ℤ) = A343639 n

end A343639

/-! ## A343639.P4907664585383427133

`n-A054899(9*n)`
-/

namespace A343639.P4907664585383427133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054899 (9 * n)

end

end A343639.P4907664585383427133

namespace A343639

/-- `n-A054899(9*n)` -/
def P4907664585383427133.Spec : Prop :=
  ∀ n, P4907664585383427133.a n = A343639 n

end A343639

/-! ## A343639.P14365253940380162295

`A002264(A002264(A007953(A008486(A008486(n)))))`
-/

namespace A343639.P14365253940380162295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (A007953 (A008486 (A008486 n).toNat).toNat).toNat).toNat

end

end A343639.P14365253940380162295

namespace A343639

/-- `A002264(A002264(A007953(A008486(A008486(n)))))` -/
def P14365253940380162295.Spec : Prop :=
  ∀ n, P14365253940380162295.a n = A343639 n

end A343639

/-! ## A343639.P2932111161791299404

`A002264(A002264(A007953(A008585(A008585(n)))))`
-/

namespace A343639.P2932111161791299404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (A007953 (A008585 (A008585 n).toNat).toNat).toNat).toNat

end

end A343639.P2932111161791299404

namespace A343639

/-- `A002264(A002264(A007953(A008585(A008585(n)))))` -/
def P2932111161791299404.Spec : Prop :=
  ∀ n, P2932111161791299404.a n = A343639 n

end A343639

/-! ## A343639.P1557059622903526461

`A007953(A007953(A227793(A017173(2*n))))`
-/

namespace A343639.P1557059622903526461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007953 (A227793 (A017173 (2 * n)).toNat).toNat).toNat

end

end A343639.P1557059622903526461

namespace A343639

/-- `A007953(A007953(A227793(A017173(2*n))))` -/
def P1557059622903526461.Spec : Prop :=
  ∀ n, P1557059622903526461.a n = A343639 n

end A343639

/-! ## A343639.P12929892029488961338

`A095827(C(2, n)+n)`
-/

namespace A343639.P12929892029488961338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (Nat.choose 2 n + n)

end

end A343639.P12929892029488961338

namespace A343639

/-- `A095827(C(2, n)+n)` -/
def P12929892029488961338.Spec : Prop :=
  ∀ n, P12929892029488961338.a n = A343639 n

end A343639

/-! ## A343639.P15570038644780698860

`A095827(A138153(2*n+1)-n)`
-/

namespace A343639.P15570038644780698860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (A138153 (2 * n + 1) - (n : ℤ)).toNat

end

end A343639.P15570038644780698860

namespace A343639

/-- `A095827(A138153(2*n+1)-n)` -/
def P15570038644780698860.Spec : Prop :=
  ∀ n, P15570038644780698860.a n = A343639 n

end A343639

/-! ## A343639.P4614999439729645550

`A095827(n+1-A095827(A112310(n+1)))`
-/

namespace A343639.P4614999439729645550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 ((n + 1 : ℤ) - A095827 (A112310 (n + 1)).toNat).toNat

end

end A343639.P4614999439729645550

namespace A343639

/-- `A095827(n+1-A095827(A112310(n+1)))` -/
def P4614999439729645550.Spec : Prop :=
  ∀ n, P4614999439729645550.a n = A343639 n

end A343639

/-! ## A343639.P14774139009178318329

`A095827(n+1-A095827(A236855(n+1)))`
-/

namespace A343639.P14774139009178318329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 ((n + 1 : ℤ) - A095827 (A236855 (n + 1)).toNat).toNat

end

end A343639.P14774139009178318329

namespace A343639

/-- `A095827(n+1-A095827(A236855(n+1)))` -/
def P14774139009178318329.Spec : Prop :=
  ∀ n, P14774139009178318329.a n = A343639 n

end A343639

/-! ## A343639.P12925148791924253201

`A095827(A118763(n)+1)`
-/

namespace A343639.P12925148791924253201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (A118763 n + 1).toNat

end

end A343639.P12925148791924253201

namespace A343639

/-- `A095827(A118763(n)+1)` -/
def P12925148791924253201.Spec : Prop :=
  ∀ n, P12925148791924253201.a n = A343639 n

end A343639

/-! ## A343639.P14301383134074904956

`A380706(n)-A000007(n²)`
-/

namespace A343639.P14301383134074904956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380706 n - A000007 (n ^ 2)

end

end A343639.P14301383134074904956

namespace A343639

/-- `A380706(n)-A000007(n²)` -/
def P14301383134074904956.Spec : Prop :=
  ∀ n, P14301383134074904956.a n = A343639 n

end A343639

/-! ## A343639.P3530946114259389121

`A055640(n)/A140356(A213217(n))`
-/

namespace A343639.P3530946114259389121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055640 n : ℚ) / (A140356 (A213217 n).toNat : ℚ)

end

end A343639.P3530946114259389121

namespace A343639

/-- `A055640(n)/A140356(A213217(n))` -/
def P3530946114259389121.Spec : Prop :=
  ∀ n, P3530946114259389121.a n = (A343639 n : ℚ)

end A343639

/-!
# A343641: X-coordinate of points following the 3D square spiral defined in A343640.

The programs for A343641, there is no canonical definition to state claims against.
-/

/-! ## A343641.P6539902932698944109

`A343640(3*n)`
-/

namespace A343641.P6539902932698944109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (3 * n)

end

end A343641.P6539902932698944109

/-! ## A343641.P8239395373967515419

`A343640(n+n+n)^3`
-/

namespace A343641.P8239395373967515419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (n + n + n) ^ 3

end

end A343641.P8239395373967515419

/-! ## A343641.P10624396086784974241

`A343640(A008486(n))%2`
-/

namespace A343641.P10624396086784974241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343640 (A008486 n).toNat) 2

end

end A343641.P10624396086784974241

/-! ## A343641.P1068206784005840826

`A343640(A008585(n))%2`
-/

namespace A343641.P1068206784005840826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343640 (A008585 n).toNat) 2

end

end A343641.P1068206784005840826

/-! ## A343641.P9670043752366121738

`A343640(n+n+n)%A040000(n)`
-/

namespace A343641.P9670043752366121738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343640 (n + n + n)) (A040000 n)

end

end A343641.P9670043752366121738

/-!
# A343642: Y-coordinate of points following the 3D square spiral defined in A343640.

The programs for A343642, there is no canonical definition to state claims against.
-/

/-! ## A343642.P13841118274379853400

`A343640(3*n+1)`
-/

namespace A343642.P13841118274379853400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (3 * n + 1)

end

end A343642.P13841118274379853400

/-! ## A343642.P11553245272963107984

`A343640(A016777(n))^3`
-/

namespace A343642.P11553245272963107984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (A016777 n).toNat ^ 3

end

end A343642.P11553245272963107984

/-! ## A343642.P13299251299731434773

`A343640(A016777(n))+A264668(n)`
-/

namespace A343642.P13299251299731434773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (A016777 n).toNat + A264668 n

end

end A343642.P13299251299731434773

/-! ## A343642.P7419664611897266485

`and(A057428(n), A343640(A016777(n)))`
-/

namespace A343642.P7419664611897266485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A343640 (A016777 n).toNat)

end

end A343642.P7419664611897266485

/-! ## A343642.P11952807932231684233

`A008836(A099349(3*n+4))*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A343642.P11952807932231684233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 1] fun n a =>
  A008836 (A099349 (3 * n + 4)).toNat * a (n - 4)

end

end A343642.P11952807932231684233

/-!
# A343643: Z-coordinate of points following the 3D square spiral defined in A343640.

The programs for A343643, there is no canonical definition to state claims against.
-/

/-! ## A343643.P8580232378712278219

`2-C(2, n+2)-A055642(A326439(n))`
-/

namespace A343643.P8580232378712278219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (n + 2) : ℤ) - A055642 (A326439 n).toNat

end

end A343643.P8580232378712278219

/-! ## A343643.P9407419846715833872

`A040000(n)-A055642(A326439(n))`
-/

namespace A343643.P9407419846715833872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n - A055642 (A326439 n).toNat

end

end A343643.P9407419846715833872

/-! ## A343643.P3090374079950406476

`A014963(A001316(n))-A055642(A326439(n))`
-/

namespace A343643.P3090374079950406476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat - A055642 (A326439 n).toNat

end

end A343643.P3090374079950406476

/-! ## A343643.P4682566801464811128

`A020639(A008458(n))-A055642(A326439(n))`
-/

namespace A343643.P4682566801464811128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat - A055642 (A326439 n).toNat

end

end A343643.P4682566801464811128

/-! ## A343643.P5673816372778460967

`A014963(A134660(n))-A055642(A326439(n))`
-/

namespace A343643.P5673816372778460967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A134660 n).toNat - A055642 (A326439 n).toNat

end

end A343643.P5673816372778460967

/-!
# A343644: a(n) is the sum of the number of occurrences of each digit of n up to and including that digit.

The programs for A343644, there is no canonical definition to state claims against.
-/

/-! ## A343644.P12996969631486371731

`A395743(n+1)+A055642(n+1)`
-/

namespace A343644.P12996969631486371731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395743 (n + 1) + A055642 (n + 1)

end

end A343644.P12996969631486371731

/-!
# A343646: a(0) = 0, and for any n > 0 such that F(k) <= n < F(k+1) for some k > 1, a(n) = F(k) + a(F(k+1) - n - 1) (where F(k) = A000045(k) is the k-th Fibonacci number).

The programs for A343646, there is no canonical definition to state claims against.
-/

/-! ## A343646.P6682232943275720991

`A343647(A343647(A343647(n))%A000043(n+1))`
-/

namespace A343646.P6682232943275720991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 (Int.tmod (A343647 (A343647 n).toNat) (A000043 (n + 1))).toNat

end

end A343646.P6682232943275720991

/-!
# A343647: Inverse permutation to A343646.

The programs for A343647, the canonical program `A343647.P9354644187600228966` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343647 has offset 0).

The definition of A343647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343647.P1443054931315411897

`A005206(A382113(n))`
-/

namespace A343647.P1443054931315411897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A382113 n).toNat

end

end A343647.P1443054931315411897

namespace A343647

/-- `A005206(A382113(n))` -/
def P1443054931315411897.Spec : Prop :=
  ∀ n, P1443054931315411897.a n = A343647 n

end A343647

/-! ## A343647.P9354644187600228966

`A105774(n+1)-A095111(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A343647

/-- `A105774(n+1)-A095111(n)` -/
def P9354644187600228966.Spec : Prop :=
  ∀ n, P9354644187600228966.a n = A343647 n

theorem P9354644187600228966.correct : P9354644187600228966.Spec := by
  intro n
  simp only [A343647]

end A343647

/-! ## A343647.P12299199873410528797

`A105774(n+1)+A095076(n)-1`
-/

namespace A343647.P12299199873410528797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1) + (A095076 n - 1)

end

end A343647.P12299199873410528797

namespace A343647

/-- `A105774(n+1)+A095076(n)-1` -/
def P12299199873410528797.Spec : Prop :=
  ∀ n, P12299199873410528797.a n = A343647 n

theorem P12299199873410528797.correct : P12299199873410528797.Spec := by
  intro n
  simp only [A343647, Nat.add_sub_cancel, A343647.P12299199873410528797.a, A343647.P9354644187600228966.a, A095076, A095076.P3589875723574390605.a, A095111, A095111.P18387562347158701288.a, A105774, A105774.P16927579740594688494.a, A000045, A000045.P11838749114346432762.a, A003714, A003714.P565032106299634425.a, A010060, A010060.P3080921269106500717.a, A072649, A072649.P9617326913925617377.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A003849, A003849.P15070805603138295355.a, A108852, A108852.P14747039251510576692.a, A193564, A193564.P10859496068576138660.a, A005187, A005187.P3874015513960485494.a, A022341, A022341.P2847779761458071812.a, A026242, A026242.P14627616473925988182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A343647

/-! ## A343647.P13444235242827222580

`A105774(n+1)-char[A095096(n+1)]`
-/

namespace A343647.P13444235242827222580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A343647.P13444235242827222580

namespace A343647

/-- `A105774(n+1)-char[A095096(n+1)]` -/
def P13444235242827222580.Spec : Prop :=
  ∀ n, P13444235242827222580.a n = A343647 n

end A343647

/-! ## A343647.P14998547555249489033

`floor(A105774(A000201(n+1))/ϕ)`
-/

namespace A343647.P14998547555249489033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105774 (A000201 (n + 1)).toNat : ℝ) / Real.goldenRatio⌋

end

end A343647.P14998547555249489033

namespace A343647

/-- `floor(A105774(A000201(n+1))/ϕ)` -/
def P14998547555249489033.Spec : Prop :=
  ∀ n, P14998547555249489033.a n = A343647 n

end A343647

/-! ## A343647.P15079643660464656937

`A005206(A105774(A000201(n+1))-1)`
-/

namespace A343647.P15079643660464656937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A105774 (A000201 (n + 1)).toNat - 1).toNat

end

end A343647.P15079643660464656937

namespace A343647

/-- `A005206(A105774(A000201(n+1))-1)` -/
def P15079643660464656937.Spec : Prop :=
  ∀ n, P15079643660464656937.a n = A343647 n

end A343647

/-! ## A343647.P4832340695607169382

`A105774(n+1)-A085002(A105774(n+1)+A022342(n+1))`
-/

namespace A343647.P4832340695607169382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1) - A085002 (A105774 (n + 1) + A022342 (n + 1)).toNat

end

end A343647.P4832340695607169382

namespace A343647

/-- `A105774(n+1)-A085002(A105774(n+1)+A022342(n+1))` -/
def P4832340695607169382.Spec : Prop :=
  ∀ n, P4832340695607169382.a n = A343647 n

end A343647

/-! ## A343647.P5347646729146941494

`A105774(n+1)-A010059(A048679(n))`
-/

namespace A343647.P5347646729146941494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1) - A010059 (A048679 n).toNat

end

end A343647.P5347646729146941494

namespace A343647

/-- `A105774(n+1)-A010059(A048679(n))` -/
def P5347646729146941494.Spec : Prop :=
  ∀ n, P5347646729146941494.a n = A343647 n

end A343647

/-! ## A343647.P15903045242605283027

`A105774(n+1)-A010059(A003714(n))`
-/

namespace A343647.P15903045242605283027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1) - A010059 (A003714 n).toNat

end

end A343647.P15903045242605283027

namespace A343647

/-- `A105774(n+1)-A010059(A003714(n))` -/
def P15903045242605283027.Spec : Prop :=
  ∀ n, P15903045242605283027.a n = A343647 n

end A343647

/-! ## A343647.P4820851605129913752

`A105774(n+1)-A010059(A022340(n)/2)`
-/

namespace A343647.P4820851605129913752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1) - A010059 (SequenceMachineLib.roundAway ((A022340 n : ℚ) / 2)).toNat

end

end A343647.P4820851605129913752

namespace A343647

/-- `A105774(n+1)-A010059(A022340(n)/2)` -/
def P4820851605129913752.Spec : Prop :=
  ∀ n, P4820851605129913752.a n = A343647 n

end A343647

/-! ## A343647.P2320443410365684236

`A105774(n+1)-A010059(A022340(n))`
-/

namespace A343647.P2320443410365684236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1) - A010059 (A022340 n).toNat

end

end A343647.P2320443410365684236

namespace A343647

/-- `A105774(n+1)-A010059(A022340(n))` -/
def P2320443410365684236.Spec : Prop :=
  ∀ n, P2320443410365684236.a n = A343647 n

end A343647

/-!
# A343648: Triangle read by rows, 1 <= k <= n: T(n,k) is the number of (unlabeled) connected graphs with n nodes and zero forcing number k.

The programs for A343648, there is no canonical definition to state claims against.
-/

/-! ## A343648.P145583762116817368

`A347520(A399098(n+1))`
-/

namespace A343648.P145583762116817368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A399098 (n + 1)).toNat

end

end A343648.P145583762116817368

/-! ## A343648.P10022522575158438287

`A341935(A399098(n+1))`
-/

namespace A343648.P10022522575158438287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A399098 (n + 1)).toNat

end

end A343648.P10022522575158438287

/-! ## A343648.P2650341182774624683

`A172263(3*A102365(n))`
-/

namespace A343648.P2650341182774624683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (3 * A102365 n).toNat

end

end A343648.P2650341182774624683

/-! ## A343648.P336277304893235336

`A260803(4^A165253(n))`
-/

namespace A343648.P336277304893235336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A165253 n : ℤ))).toNat

end

end A343648.P336277304893235336

/-! ## A343648.P6799413986062134100

`A119465(A322013(n+1)+1)`
-/

namespace A343648.P6799413986062134100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119465 (A322013 (n + 1) + 1).toNat

end

end A343648.P6799413986062134100

/-!
# A343649: Triangle read by rows, 1 <= k <= n: T(n,k) is the number of (unlabeled) connected graphs with n nodes and throttling number k.

The programs for A343649, there is no canonical definition to state claims against.
-/

/-! ## A343649.P3725251361496067689

`A225638(4*A195581(n))`
-/

namespace A343649.P3725251361496067689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 (4 * A195581 n).toNat

end

end A343649.P3725251361496067689

/-! ## A343649.P10061207476191686805

`A195581(n)-A182159(A320606(n+1))`
-/

namespace A343649.P10061207476191686805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195581 n - A182159 (A320606 (n + 1)).toNat

end

end A343649.P10061207476191686805

/-! ## A343649.P6998232136250394846

`A358021(A007318(n+1)*A195581(n))`
-/

namespace A343649.P6998232136250394846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358021 (A007318 (n + 1) * A195581 n).toNat

end

end A343649.P6998232136250394846

/-! ## A343649.P12954286096118559910

`A103298(A320606(n+1)*A350914(n))`
-/

namespace A343649.P12954286096118559910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A320606 (n + 1) * A350914 n).toNat

end

end A343649.P12954286096118559910

/-! ## A343649.P10135139204069343184

`A358021(A195581(n)^A007318(n+1))`
-/

namespace A343649.P10135139204069343184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358021 (SequenceMachineLib.roundAway ((A195581 n : ℚ) ^ (A007318 (n + 1) : ℤ))).toNat

end

end A343649.P10135139204069343184

/-!
# A343650: a(n) is the number of divisors d of n such that the product d * (n/d) can be computed without carries in binary.

The programs for A343650, there is no canonical definition to state claims against.
-/

/-! ## A343650.P12920662603245299366

`Δ[eq[1, A343651(n+1)]]`
-/

namespace A343650.P12920662603245299366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343651 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A343650.P12920662603245299366

/-! ## A343650.P6215537304918535986

`Δ[record[n-A343651(A000027(n+1))]]`
-/

namespace A343650.P6215537304918535986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343651 (A000027 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343650.P6215537304918535986

/-! ## A343650.P11195304884424032247

`A000027(Δ[record[n/A343651(n+1)]])`
-/

namespace A343650.P11195304884424032247
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A343651 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A343650.P11195304884424032247

/-! ## A343650.P8437352212729975641

`Δ[record[A178562(2*n)-1+n-A343651(n+1)]]`
-/

namespace A343650.P8437352212729975641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178562 (2 * n) - 1 + (n : ℤ) - A343651 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343650.P8437352212729975641

/-! ## A343650.P12072420198511474461

`A001511(n+1)*A067824(Δ[A325101(n)])`
-/

namespace A343650.P12072420198511474461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A067824 (f1 (n + 1) - f1 n).toNat

end

end A343650.P12072420198511474461

/-! ## A343650.P8254619499080563381

`A001511(n+1)*A325098(Δ[A325101(n)])`
-/

namespace A343650.P8254619499080563381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A325098 (f1 (n + 1) - f1 n).toNat

end

end A343650.P8254619499080563381

/-!
# A343651: Irregular triangle T(n, k), n > 0, k = 1..A343650(n), read by rows; the n-th row lists the divisors d of n such that the product d * (n/d) can be computed without carries in binary.

The programs for A343651, there is no canonical definition to state claims against.
-/

/-! ## A343651.P2143820575790619640

`A027750(∑[A078898(A216827(n+1))])`
-/

namespace A343651.P2143820575790619640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A216827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343651.P2143820575790619640

/-! ## A343651.P250365789380802966

`A027750(∑[A052409(A075764(n+1))])`
-/

namespace A343651.P250365789380802966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A075764 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343651.P250365789380802966

/-! ## A343651.P17126076492592534337

`A027750(∑[A025474(5*n²+1)]+1)`
-/

namespace A343651.P17126076492592534337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (5 * n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A343651.P17126076492592534337

/-!
# A343652: Number of maximal pairwise coprime sets of divisors of n.

The programs for A343652, there is no canonical definition to state claims against.
-/

/-! ## A343652.P2273947530900350114

`A343660(n+1)+A005361(n+1)`
-/

namespace A343652.P2273947530900350114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343660 (n + 1) + A005361 (n + 1)

end

end A343652.P2273947530900350114

/-! ## A343652.P6496917646249274562

`∏{e}[n+1, #]*A259936(n+1)`
-/

namespace A343652.P6496917646249274562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A259936 (n + 1)

end

end A343652.P6496917646249274562

/-! ## A343652.P18185511676395781794

`∏{e}[n+1, #]*A001055(∏{p}[n+1, #])`
-/

namespace A343652.P18185511676395781794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A001055 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A343652.P18185511676395781794

/-! ## A343652.P18418781635084263615

`∏{e}[n+1, #]*A045778(∏{p}[n+1, #])`
-/

namespace A343652.P18418781635084263615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A045778 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A343652.P18418781635084263615

/-! ## A343652.P7189155984887866775

`A000108(∑{p}[n+1, gcd(n, #)])*∏{e}[n+1, #]`
-/

namespace A343652.P7189155984887866775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A343652.P7189155984887866775

/-! ## A343652.P17067707850164243818

`A000108(∑{e}[∏{p}[n+1, #], #])*∏{e}[n+1, #]`
-/

namespace A343652.P17067707850164243818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℤ)

end

end A343652.P17067707850164243818

/-! ## A343652.P17888271715593744133

`A328958(n+1)+A070824(n+1)`
-/

namespace A343652.P17888271715593744133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (n + 1) + A070824 (n + 1)

end

end A343652.P17888271715593744133

/-!
# A343653: Number of non-singleton pairwise coprime nonempty sets of divisors > 1 of n.

The programs for A343653, there is no canonical definition to state claims against.
-/

/-! ## A343653.P14324475125239392688

`A066620(n+1)%14`
-/

namespace A343653.P14324475125239392688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066620 (n + 1)) 14

end

end A343653.P14324475125239392688

/-! ## A343653.P1347003685814102849

`∑{d}[n+1, A376504(#)]`
-/

namespace A343653.P1347003685814102849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A376504 d

end

end A343653.P1347003685814102849

/-! ## A343653.P8686807768688548369

`∑{d}[n+1, A297155(#)²]`
-/

namespace A343653.P8686807768688548369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297155 d ^ 2

end

end A343653.P8686807768688548369

/-! ## A343653.P12728113435405902564

`∑{d}[n+1, A259936(#)-1]`
-/

namespace A343653.P12728113435405902564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A259936 d - 1)

end

end A343653.P12728113435405902564

/-! ## A343653.P6768002018923364195

`∑{d}[n+1, C(A001221(#)+1, 3)]`
-/

namespace A343653.P6768002018923364195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (A001221 d + 1).toNat 3

end

end A343653.P6768002018923364195

/-! ## A343653.P16768096736004268222

`A004180(A066620(n+1))`
-/

namespace A343653.P16768096736004268222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A066620 (n + 1)).toNat

end

end A343653.P16768096736004268222

/-! ## A343653.P3452234156879502208

`A066620(A118759(n+1))`
-/

namespace A343653.P3452234156879502208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (A118759 (n + 1)).toNat

end

end A343653.P3452234156879502208

/-! ## A343653.P3340228746931029815

`A066620(A292579(n)+1)`
-/

namespace A343653.P3340228746931029815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (A292579 n + 1).toNat

end

end A343653.P3340228746931029815

/-! ## A343653.P1156966606968789832

`A066620(A296882(n+1))`
-/

namespace A343653.P1156966606968789832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (A296882 (n + 1)).toNat

end

end A343653.P1156966606968789832

/-! ## A343653.P11479638159184517884

`A102670(A303838(n+1))`
-/

namespace A343653.P11479638159184517884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102670 (A303838 (n + 1)).toNat

end

end A343653.P11479638159184517884

/-!
# A343654: Number of pairwise coprime sets of divisors > 1 of n.

The programs for A343654, there is no canonical definition to state claims against.
-/

/-! ## A343654.P10763747326843169070

`A225520(n+1)/2`
-/

namespace A343654.P10763747326843169070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225520 (n + 1) : ℚ) / 2

end

end A343654.P10763747326843169070

/-! ## A343654.P11702408105395090322

`A100565(n+1)%26`
-/

namespace A343654.P11702408105395090322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100565 (n + 1)) 26

end

end A343654.P11702408105395090322

/-! ## A343654.P2550764958923440838

`∑{d}[n+1, A259936(#)]`
-/

namespace A343654.P2550764958923440838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A259936 d

end

end A343654.P2550764958923440838

/-! ## A343654.P14630545112861597044

`∑{d}[n+1, A354870(#)]`
-/

namespace A343654.P14630545112861597044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354870 d

end

end A343654.P14630545112861597044

/-! ## A343654.P12534589693244836197

`∏{e}[n+1, 2*#+1]-A062799(n+1)`
-/

namespace A343654.P12534589693244836197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A062799 (n + 1)

end

end A343654.P12534589693244836197

/-! ## A343654.P11344930491629085745

`A066620(n+1)%14+2^∑{e}[n+1, log2(#+1)]`
-/

namespace A343654.P11344930491629085745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A066620 (n + 1)) 14 : ℝ) + (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ))

end

end A343654.P11344930491629085745

/-! ## A343654.P11786493716907000295

`A004185(A100565(n+1))`
-/

namespace A343654.P11786493716907000295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A100565 (n + 1)).toNat

end

end A343654.P11786493716907000295

/-! ## A343654.P18361537805224841133

`A001281(A225520(n+1))`
-/

namespace A343654.P18361537805224841133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A225520 (n + 1)).toNat

end

end A343654.P18361537805224841133

/-! ## A343654.P8398967265312672864

`∑{d}[n+1, A000041(A007875(#))]`
-/

namespace A343654.P8398967265312672864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 (A007875 d).toNat

end

end A343654.P8398967265312672864

/-! ## A343654.P14805839369073857703

`∑{d}[n+1, A050326(A015053(#))]`
-/

namespace A343654.P14805839369073857703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050326 (A015053 d).toNat

end

end A343654.P14805839369073857703

/-!
# A343655: Number of pairwise coprime sets of divisors of n, where a singleton is not considered pairwise coprime unless it is {1}.

The programs for A343655, there is no canonical definition to state claims against.
-/

/-! ## A343655.P3831171970490743827

`A015995(n+1)%39`
-/

namespace A343655.P3831171970490743827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015995 (n + 1)) 39

end

end A343655.P3831171970490743827

/-! ## A343655.P2444415480674175666

`A015995((n+1)^ceil(n/98))`
-/

namespace A343655.P2444415480674175666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015995 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ))).toNat

end

end A343655.P2444415480674175666

/-! ## A343655.P6213805537851875466

`((A048785(n+1)+2)/3)%53`
-/

namespace A343655.P6213805537851875466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A048785 (n + 1) + 2 : ℚ) / 3)) 53

end

end A343655.P6213805537851875466

/-! ## A343655.P11230279724276693520

`A225520(n+1)-∏{e}[n+1, #+1]`
-/

namespace A343655.P11230279724276693520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225520 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A343655.P11230279724276693520

/-! ## A343655.P5400563984996179897

`A028899(A016005(n+1))`
-/

namespace A343655.P5400563984996179897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A016005 (n + 1)).toNat

end

end A343655.P5400563984996179897

/-! ## A343655.P3979178787777288035

`A028898(A016006(n+1))`
-/

namespace A343655.P3979178787777288035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A016006 (n + 1)).toNat

end

end A343655.P3979178787777288035

/-! ## A343655.P237645094669264740

`filter[A015995(n+1), A102609(#)]`
-/

namespace A343655.P237645094669264740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A343655.P237645094669264740

/-! ## A343655.P16805893621828527647

`filter[A015995(n+1), A167850(#)]`
-/

namespace A343655.P16805893621828527647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167850 (f1 j).toNat = 1) n)

end

end A343655.P16805893621828527647

/-! ## A343655.P15011517764509566353

`filter[A015995(n+1), A167851(#)]`
-/

namespace A343655.P15011517764509566353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167851 (f1 j).toNat = 1) n)

end

end A343655.P15011517764509566353

/-! ## A343655.P2516200409928978870

`filter[A015995(n+1), A236861(#)]`
-/

namespace A343655.P2516200409928978870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A343655.P2516200409928978870

/-!
# A343656: Array read by antidiagonals where A(n,k) is the number of divisors of n^k.

The programs for A343656, the canonical program `A343656.P8994259511323762319` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343656 has offset 1).

The definition of A343656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343656.P5527408096252217564

`A000005((col(n)+1)^(row(n)-col(n)))`
-/

namespace A343656.P5527408096252217564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((SequenceMachineLib.triCol n + 1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))).toNat

end

end A343656.P5527408096252217564

namespace A343656

/-- `A000005((col(n)+1)^(row(n)-col(n)))` -/
def P5527408096252217564.Spec : Prop :=
  ∀ n, P5527408096252217564.a n = A343656 (n + 1)

end A343656

/-! ## A343656.P8994259511323762319

`A000005(A009998(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343656

/-- `A000005(A009998(n))` -/
def P8994259511323762319.Spec : Prop :=
  ∀ n, P8994259511323762319.a n = A343656 (n + 1)

theorem P8994259511323762319.correct : P8994259511323762319.Spec := by
  intro n
  simp only [A343656, Nat.add_sub_cancel]

end A343656

/-! ## A343656.P15348004319419197101

`∏{e}[A004248(comp[∑[n]]), #+1]`
-/

namespace A343656.P15348004319419197101
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A343656.P15348004319419197101

namespace A343656

/-- `∏{e}[A004248(comp[∑[n]]), #+1]` -/
def P15348004319419197101.Spec : Prop :=
  ∀ n, (P15348004319419197101.a n : ℤ) = A343656 (n + 1)

end A343656

/-! ## A343656.P5167215316599027612

`∏{e}[A009998(abs(1-n)+1), #+1]`
-/

namespace A343656.P5167215316599027612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A343656.P5167215316599027612

namespace A343656

/-- `∏{e}[A009998(abs(1-n)+1), #+1]` -/
def P5167215316599027612.Spec : Prop :=
  ∀ n, (P5167215316599027612.a n : ℤ) = A343656 (n + 1)

end A343656

/-! ## A343656.P361160765943804767

`∏{e}[A009999(A061579(n)), #+1]`
-/

namespace A343656.P361160765943804767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A061579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A343656.P361160765943804767

namespace A343656

/-- `∏{e}[A009999(A061579(n)), #+1]` -/
def P361160765943804767.Spec : Prop :=
  ∀ n, (P361160765943804767.a n : ℤ) = A343656 (n + 1)

end A343656

/-! ## A343656.P17689819728048067326

`∑{d}[A009998(n), A009998(C(2, #))]`
-/

namespace A343656.P17689819728048067326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A009998 (Nat.choose 2 d)

end

end A343656.P17689819728048067326

namespace A343656

/-- `∑{d}[A009998(n), A009998(C(2, #))]` -/
def P17689819728048067326.Spec : Prop :=
  ∀ n, P17689819728048067326.a n = A343656 (n + 1)

end A343656

/-! ## A343656.P4091143360983755170

`∑{d}[A009998(n), #^A134309(n)]`
-/

namespace A343656.P4091143360983755170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A134309 n : ℤ)

end

end A343656.P4091143360983755170

namespace A343656

/-- `∑{d}[A009998(n), #^A134309(n)]` -/
def P4091143360983755170.Spec : Prop :=
  ∀ n, P4091143360983755170.a n = (A343656 (n + 1) : ℚ)

end A343656

/-! ## A343656.P12119322493828219066

`∑{d}[A009998(n), gcd(#, A020985(n))]`
-/

namespace A343656.P12119322493828219066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A020985 n)

end

end A343656.P12119322493828219066

namespace A343656

/-- `∑{d}[A009998(n), gcd(#, A020985(n))]` -/
def P12119322493828219066.Spec : Prop :=
  ∀ n, (P12119322493828219066.a n : ℤ) = A343656 (n + 1)

end A343656

/-! ## A343656.P913620736963263336

`∏{e}[A009999(A038722(n+2)), #+1]`
-/

namespace A343656.P913620736963263336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A038722 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A343656.P913620736963263336

namespace A343656

/-- `∏{e}[A009999(A038722(n+2)), #+1]` -/
def P913620736963263336.Spec : Prop :=
  ∀ n, (P913620736963263336.a n : ℤ) = A343656 (n + 1)

end A343656

/-!
# A343657: Sum of number of divisors of x^y for each x >= 1, y >= 0, x + y = n.

The programs for A343657, the canonical program `A343657.P3086182184823910990` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343657 has offset 1).

The definition of A343657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343657.P3086182184823910990

`∑{#}[n, A000005((#+1)^(n+1-(#+1)))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343657

/-- `∑{#}[n, A000005((#+1)^(n+1-(#+1)))]` -/
def P3086182184823910990.Spec : Prop :=
  ∀ n, P3086182184823910990.a n = A343657 (n + 1)

theorem P3086182184823910990.correct : P3086182184823910990.Spec := by
  intro n
  simp only [A343657, Nat.add_sub_cancel]

end A343657

/-! ## A343657.P11480786872609996299

`A335235(A038045(n+2))`
-/

namespace A343657.P11480786872609996299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (A038045 (n + 2)).toNat

end

end A343657.P11480786872609996299

namespace A343657

/-- `A335235(A038045(n+2))` -/
def P11480786872609996299.Spec : Prop :=
  ∀ n, P11480786872609996299.a n = A343657 (n + 1)

end A343657

/-! ## A343657.P13455744467618921581

`A000196(A139582(3*n))`
-/

namespace A343657.P13455744467618921581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A139582 (3 * n)).toNat

end

end A343657.P13455744467618921581

namespace A343657

/-- `A000196(A139582(3*n))` -/
def P13455744467618921581.Spec : Prop :=
  ∀ n, P13455744467618921581.a n = A343657 (n + 1)

end A343657

/-! ## A343657.P2031812399655764875

`A000196(∑[A103257(n)²])`
-/

namespace A343657.P2031812399655764875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103257 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343657.P2031812399655764875

namespace A343657

/-- `A000196(∑[A103257(n)²])` -/
def P2031812399655764875.Spec : Prop :=
  ∀ n, P2031812399655764875.a n = A343657 (n + 1)

end A343657

/-! ## A343657.P5587196484064839931

`∑[A350029(∑[A016116(n)])]`
-/

namespace A343657.P5587196484064839931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343657.P5587196484064839931

namespace A343657

/-- `∑[A350029(∑[A016116(n)])]` -/
def P5587196484064839931.Spec : Prop :=
  ∀ n, P5587196484064839931.a n = A343657 (n + 1)

end A343657

/-!
# A343658: Array read by antidiagonals where A(n,k) is the number of ways to choose a multiset of k divisors of n.

The programs for A343658, the canonical program `A343658.P5372349967032378966` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343658 has offset 1).

The definition of A343658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343658.P5372349967032378966

`C(A000005(col(n)+1)+row(n)-col(n)-1, row(n)-col(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343658

/-- `C(A000005(col(n)+1)+row(n)-col(n)-1, row(n)-col(n))` -/
def P5372349967032378966.Spec : Prop :=
  ∀ n, (P5372349967032378966.a n : ℤ) = A343658 (n + 1)

theorem P5372349967032378966.correct : P5372349967032378966.Spec := by
  intro n
  simp only [A343658, Nat.add_sub_cancel]

end A343658

/-! ## A343658.P12058000176771947687

`A193095(A335125(2*(n+2)))+A077592(n+1)`
-/

namespace A343658.P12058000176771947687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 (A335125 (2 * (n + 2))).toNat + A077592 (n + 1)

end

end A343658.P12058000176771947687

namespace A343658

/-- `A193095(A335125(2*(n+2)))+A077592(n+1)` -/
def P12058000176771947687.Spec : Prop :=
  ∀ n, P12058000176771947687.a n = A343658 (n + 1)

end A343658

/-! ## A343658.P17413390555772847917

`A178333(A089702(n))+A077592(n+1)`
-/

namespace A343658.P17413390555772847917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A089702 n).toNat + A077592 (n + 1)

end

end A343658.P17413390555772847917

namespace A343658

/-- `A178333(A089702(n))+A077592(n+1)` -/
def P17413390555772847917.Spec : Prop :=
  ∀ n, P17413390555772847917.a n = A343658 (n + 1)

end A343658

/-!
# A343659: Number of maximal pairwise coprime subsets of {1..n}.

The programs for A343659, there is no canonical definition to state claims against.
-/

/-! ## A343659.P11438136722608599193

`∑[A003139(n+1)*A005171(n+1)]`
-/

namespace A343659.P11438136722608599193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003139 (n + 1) * A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343659.P11438136722608599193

/-! ## A343659.P11014517993016147808

`∑[A003139(n+1)%A259175(n+1)]`
-/

namespace A343659.P11014517993016147808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003139 (n + 1)) (A259175 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343659.P11014517993016147808

/-!
# A343660: Number of maximal pairwise coprime sets of at least two divisors > 1 of n.

The programs for A343660, there is no canonical definition to state claims against.
-/

/-! ## A343660.P6578218557343024869

`A343652(n+1)-A005361(n+1)`
-/

namespace A343660.P6578218557343024869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343652 (n + 1) - A005361 (n + 1)

end

end A343660.P6578218557343024869

/-! ## A343660.P4856734163621377009

`floor(∑{p}[n+1, root(γ, #)])²*∏{e}[1+n, #]`
-/

namespace A343660.P4856734163621377009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋ ^ 2 * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A343660.P4856734163621377009

/-! ## A343660.P6559028630476547010

`round(log(A114717(n+1)))`
-/

namespace A343660.P6559028630476547010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A114717 (n + 1) : ℝ))

end

end A343660.P6559028630476547010

/-! ## A343660.P7256802163555966675

`∑{d}[n+1, floor(A345926(#)/2)]`
-/

namespace A343660.P7256802163555966675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(A345926 d : ℚ) / 2⌋

end

end A343660.P7256802163555966675

/-! ## A343660.P8770594836857145222

`A297155(n+1)²*∏{e}[n+1, #]`
-/

namespace A343660.P8770594836857145222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1) ^ 2 * ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A343660.P8770594836857145222

/-! ## A343660.P16836320558934112053

`A000378(∏{e}[n+1, #+1]-∑{e}[n+1, #])`
-/

namespace A343660.P16836320558934112053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A343660.P16836320558934112053

/-! ## A343660.P3534876384302223465

`A020659(∏{e}[n+1, #+1]-∑{e}[n+1, #])`
-/

namespace A343660.P3534876384302223465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020659 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A343660.P3534876384302223465

/-! ## A343660.P3308287250682689497

`A029954(∏{e}[n+1, #+1]-∑{e}[n+1, #])`
-/

namespace A343660.P3308287250682689497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A343660.P3308287250682689497

/-! ## A343660.P7561053793309403677

`A029964(∏{e}[n+1, #+1]-∑{e}[n+1, #])`
-/

namespace A343660.P7561053793309403677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029964 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A343660.P7561053793309403677

/-!
# A343661: Sum of numbers of y-multisets of divisors of x for each x >= 1, y >= 0, x + y = n.

The programs for A343661, there is no canonical definition to state claims against.
-/

/-! ## A343661.P12415455154311172896

`∑[∑[A127321(A321407(n))]]`
-/

namespace A343661.P12415455154311172896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A321407 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343661.P12415455154311172896

/-! ## A343661.P1450336886959399701

`A276571(∑[∑[A226106(n)]])`
-/

namespace A343661.P1450336886959399701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343661.P1450336886959399701

/-! ## A343661.P6233529727112764635

`∑[A204164(A374762(2*n+1))]`
-/

namespace A343661.P6233529727112764635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A374762 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343661.P6233529727112764635

/-! ## A343661.P1225763250478606954

`A055086(A349050(2*(n+1))-(floor(n/4)+ceil(n/4)))`
-/

namespace A343661.P1225763250478606954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A349050 (2 * (n + 1)) - (⌊(n : ℚ) / 4⌋ + ⌈(n : ℚ) / 4⌉)).toNat

end

end A343661.P1225763250478606954

/-! ## A343661.P10337314770869730841

`A055086(A001792(n)-A055086(n))`
-/

namespace A343661.P10337314770869730841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A001792 n - A055086 n).toNat

end

end A343661.P10337314770869730841

/-!
# A343662: Irregular triangle read by rows where T(n,k) is the number of strict length k chains of divisors of n, 0 <= k <= Omega(n) + 1.

The programs for A343662, there is no canonical definition to state claims against.
-/

/-! ## A343662.P3286822673770599500

`A337006(A315209(n+1))`
-/

namespace A343662.P3286822673770599500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337006 (A315209 (n + 1)).toNat

end

end A343662.P3286822673770599500

/-! ## A343662.P6557970022451176897

`A379299(A186975(n+2))+1`
-/

namespace A343662.P6557970022451176897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379299 (A186975 (n + 2)).toNat + 1

end

end A343662.P6557970022451176897

/-! ## A343662.P3888237882464491785

`ceil(p?[A091203(A117137(n))]/4)`
-/

namespace A343662.P3888237882464491785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A117137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌉

end

end A343662.P3888237882464491785

/-! ## A343662.P15150812003850458044

`A090736(p?[A091203(A117137(n))])`
-/

namespace A343662.P15150812003850458044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A117137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090736 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343662.P15150812003850458044

/-! ## A343662.P8885413292292993241

`A326457(n)+A227736(A001595(n))`
-/

namespace A343662.P8885413292292993241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326457 n + A227736 (A001595 n).toNat

end

end A343662.P8885413292292993241

/-!
# A343663: Number of unlabeled binary rooted semi-identity plane trees with 2*n - 1 nodes.

The programs for A343663, there is no canonical definition to state claims against.
-/

/-! ## A343663.P16957643351220386161

`A065361(A027616(n)+A000142(n))`
-/

namespace A343663.P16957643351220386161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A027616 n + A000142 n).toNat

end

end A343663.P16957643351220386161

/-! ## A343663.P6189790823417187176

`row(A000720(∏[1/a(n-1)+2*n+1]))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A343663.P6189790823417187176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  1 / f1 (n - 1) + (2 * n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A000720 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A343663.P6189790823417187176

/-! ## A343663.P2797318175869314895

`A263977(A000085(n))`
-/

namespace A343663.P2797318175869314895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (A000085 n).toNat

end

end A343663.P2797318175869314895

/-!
# A343664: Number of partitions of an n-set without blocks of size 4.

The programs for A343664, there is no canonical definition to state claims against.
-/

/-! ## A343664.P17360963969852411649

`A341024(A002995(n))+A115276(n)`
-/

namespace A343664.P17360963969852411649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341024 ((A002995 n).toNat + 84) + A115276 n

end

end A343664.P17360963969852411649

/-! ## A343664.P6129117116650906308

`A115276(n)+A025465(A001353(n))`
-/

namespace A343664.P6129117116650906308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115276 n + A025465 (A001353 n).toNat

end

end A343664.P6129117116650906308

/-! ## A343664.P5792324444595033125

`A029129(n)+A023443(A115276(n))`
-/

namespace A343664.P5792324444595033125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029129 n + A023443 (A115276 n).toNat

end

end A343664.P5792324444595033125

/-! ## A343664.P3149026655687440627

`A115276(n)+A055641(A018212(n))`
-/

namespace A343664.P3149026655687440627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115276 n + A055641 (A018212 n).toNat

end

end A343664.P3149026655687440627

/-! ## A343664.P14741802886389075206

`A115276(n)+A025465(A054459(n))`
-/

namespace A343664.P14741802886389075206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115276 n + A025465 (A054459 n).toNat

end

end A343664.P14741802886389075206

/-!
# A343665: Number of partitions of an n-set without blocks of size 5.

The programs for A343665, there is no canonical definition to state claims against.
-/

/-! ## A343665.P4022695177999223770

`A269381(floor(sqrt(A214224(n+1))))`
-/

namespace A343665.P4022695177999223770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (Int.sqrt (A214224 (n + 1))).toNat

end

end A343665.P4022695177999223770

/-! ## A343665.P13742977852553103375

`A269381(round(sqrt(A214224(n+1))))`
-/

namespace A343665.P13742977852553103375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (SequenceMachineLib.roundAway (Real.sqrt (A214224 (n + 1) : ℝ))).toNat

end

end A343665.P13742977852553103375

/-! ## A343665.P2918012555218206171

`xor(A007953(A230832(n)), A279559(n))`
-/

namespace A343665.P2918012555218206171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007953 (A230832 n).toNat) (A279559 n)

end

end A343665.P2918012555218206171

/-!
# A343666: Number of partitions of an n-set without blocks of size 6.

The programs for A343666, there is no canonical definition to state claims against.
-/

/-! ## A343666.P1908515799032212526

`A000110(n)-A085862(A021103(n))`
-/

namespace A343666.P1908515799032212526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A085862 (A021103 n).toNat

end

end A343666.P1908515799032212526

/-! ## A343666.P7603980557418404911

`A060144(A038560(n)+2)`
-/

namespace A343666.P7603980557418404911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A038560 n + 2).toNat

end

end A343666.P7603980557418404911

/-! ## A343666.P13184471523851813404

`A189663(A038560(n)+3)-1`
-/

namespace A343666.P13184471523851813404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A038560 n + 3).toNat - 1

end

end A343666.P13184471523851813404

/-! ## A343666.P13739248618561667330

`A110038(n)+A025465(A003319(n))`
-/

namespace A343666.P13739248618561667330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110038 n + A025465 (A003319 n).toNat

end

end A343666.P13739248618561667330

/-!
# A343667: Number of partitions of an n-set without blocks of size 7.

The programs for A343667, there is no canonical definition to state claims against.
-/

/-! ## A343667.P4756494006136707432

`A148092(n)+A111025((n+2)²)`
-/

namespace A343667.P4756494006136707432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148092 n + A111025 ((n + 2) ^ 2)

end

end A343667.P4756494006136707432

/-! ## A343667.P4600691301684874266

`A148092(n)+A092606(A001703(n))`
-/

namespace A343667.P4600691301684874266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148092 n + A092606 (A001703 n).toNat

end

end A343667.P4600691301684874266

/-! ## A343667.P7066968479525463719

`A151843(A061140(n))+A056273(n)`
-/

namespace A343667.P7066968479525463719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (A061140 n).toNat + A056273 n

end

end A343667.P7066968479525463719

/-! ## A343667.P474273376089168592

`A148092(n)+A073490(A059278(n))`
-/

namespace A343667.P474273376089168592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148092 n + A073490 (A059278 n).toNat

end

end A343667.P474273376089168592

/-! ## A343667.P2946217237521815439

`A148092(n)+A107846(A063029(n))`
-/

namespace A343667.P2946217237521815439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148092 n + A107846 (A063029 n).toNat

end

end A343667.P2946217237521815439

/-!
# A343668: Number of partitions of an n-set without blocks of size 8.

The programs for A343668, there is no canonical definition to state claims against.
-/

/-! ## A343668.P10754389881694850240

`A324520(C(n, 9)+1)+A229224(n)`
-/

namespace A343668.P10754389881694850240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324520 (Nat.choose n 9 + 1) + A229224 n

end

end A343668.P10754389881694850240

/-! ## A343668.P18151982181349856176

`A229224(n)+A011731(A000296(n))`
-/

namespace A343668.P18151982181349856176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229224 n + A011731 (A000296 n).toNat

end

end A343668.P18151982181349856176

/-! ## A343668.P8479807042707604374

`A229224(n)+A011672(A022014(n))`
-/

namespace A343668.P8479807042707604374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229224 n + A011672 (A022014 n).toNat

end

end A343668.P8479807042707604374

/-! ## A343668.P9902420593709979419

`A229224(n)+A101605(A002523(n))`
-/

namespace A343668.P9902420593709979419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229224 n + A101605 (A002523 n).toNat

end

end A343668.P9902420593709979419

/-! ## A343668.P15812231599057916124

`A229224(n)+A011672(A099947(n))`
-/

namespace A343668.P15812231599057916124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229224 n + A011672 (A099947 n).toNat

end

end A343668.P15812231599057916124

/-!
# A343669: Number of partitions of an n-set without blocks of size 9.

The programs for A343669, there is no canonical definition to state claims against.
-/

/-! ## A343669.P548366752210156291

`A229225(n)+A036632(A036598(n))`
-/

namespace A343669.P548366752210156291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229225 n + A036632 (A036598 n).toNat

end

end A343669.P548366752210156291

/-! ## A343669.P2462845319976989995

`A185293(n)+A000027(A229225(n))`
-/

namespace A343669.P2462845319976989995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185293 n + A000027 (A229225 n).toNat

end

end A343669.P2462845319976989995

/-! ## A343669.P6685171709866063527

`A229225(n)+A185284(A036632(n))`
-/

namespace A343669.P6685171709866063527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229225 n + A185284 (A036632 n).toNat

end

end A343669.P6685171709866063527

/-! ## A343669.P16974452352171197325

`A289104(A018019(n))+A229225(n)`
-/

namespace A343669.P16974452352171197325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289104 (A018019 n).toNat + A229225 n

end

end A343669.P16974452352171197325

/-! ## A343669.P10547210128669993049

`A366775(n)+A323514(A041458(n))`
-/

namespace A343669.P10547210128669993049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366775 n + A323514 (A041458 n).toNat

end

end A343669.P10547210128669993049

/-!
# A343670: a(n) is the least semiprime congruent to 1 (mod n-th semiprime).

The programs for A343670, there is no canonical definition to state claims against.
-/

/-! ## A343670.P5660052457263171047

`A131016(A001358(n+1))`
-/

namespace A343670.P5660052457263171047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131016 (A001358 (n + 1)).toNat

end

end A343670.P5660052457263171047

/-! ## A343670.P12455095673926190969

`A131016(A176540(n+2))`
-/

namespace A343670.P12455095673926190969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131016 (A176540 (n + 2)).toNat

end

end A343670.P12455095673926190969

/-! ## A343670.P13205034063053360788

`A131016(lt[1, A105700(n)])`
-/

namespace A343670.P13205034063053360788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A343670.P13205034063053360788

/-! ## A343670.P1306104663852089100

`A131016(eq[2, A105700(n)])`
-/

namespace A343670.P1306104663852089100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343670.P1306104663852089100

/-! ## A343670.P1385105787879855068

`A131016(eq[2, A166974(n)])`
-/

namespace A343670.P1385105787879855068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343670.P1385105787879855068

/-! ## A343670.P789943546755841654

`A131016(eq[2, A226378(n)])`
-/

namespace A343670.P789943546755841654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343670.P789943546755841654

/-! ## A343670.P13012783984217465476

`A131016(eq[2, A284289(n)])`
-/

namespace A343670.P13012783984217465476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343670.P13012783984217465476

/-! ## A343670.P9341320712590342995

`A131016(sqrt(A074985(n+1)))`
-/

namespace A343670.P9341320712590342995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131016 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A343670.P9341320712590342995

/-! ## A343670.P9918752682417219446

`A131016(eq[2, A001222(n+1)]+1)`
-/

namespace A343670.P9918752682417219446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A343670.P9918752682417219446

/-! ## A343670.P13145332915783217881

`A131016(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=2`
-/

namespace A343670.P13145332915783217881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343670.P13145332915783217881

/-!
# A343671: Number of partitions of an n-set without blocks of size 10.

The programs for A343671, there is no canonical definition to state claims against.
-/

/-! ## A343671.P10655318399908404010

`A229226(n)+A055641(A000083(n))`
-/

namespace A343671.P10655318399908404010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229226 n + A055641 (A000083 n).toNat

end

end A343671.P10655318399908404010

/-! ## A343671.P78515779544232007

`A229226(n)+A065202(A025587(n))`
-/

namespace A343671.P78515779544232007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229226 n + A065202 (A025587 n).toNat

end

end A343671.P78515779544232007

/-! ## A343671.P16549693856885251187

`A229226(n)+A065202(A099947(n))`
-/

namespace A343671.P16549693856885251187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229226 n + A065202 (A099947 n).toNat

end

end A343671.P16549693856885251187

/-! ## A343671.P9344516357991107620

`A229226(n)+A025465(A185293(n))`
-/

namespace A343671.P9344516357991107620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229226 n + A025465 (A185293 n).toNat

end

end A343671.P9344516357991107620

/-! ## A343671.P11172156851762863

`A000110(n)-A284978(Δ[A308251(n)])`
-/

namespace A343671.P11172156851762863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A284978 (f1 (n + 1) - f1 n).toNat

end

end A343671.P11172156851762863

/-!
# A343672: a(0) = 1; a(n) = 2 * n * a(n-1) + Sum_{k=0..n-1} binomial(n,k) * a(k).

The programs for A343672, there is no canonical definition to state claims against.
-/

/-! ## A343672.P2357292608596503354

`A328008(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A343672.P2357292608596503354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328008 n + (n : ℤ) * a (n - 1)

end

end A343672.P2357292608596503354

/-!
# A343674: a(0) = 1; a(n) = 4 * n * a(n-1) + Sum_{k=0..n-1} binomial(n,k) * a(k).

The programs for A343674, there is no canonical definition to state claims against.
-/

/-! ## A343674.P10899394235240615433

`A343687(n)-A241093(A006602(n))`
-/

namespace A343674.P10899394235240615433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343687 n - A241093 (A006602 n).toNat

end

end A343674.P10899394235240615433

/-!
# A343675: Undulating alternating palindromic primes.

The programs for A343675, there is no canonical definition to state claims against.
-/

/-! ## A343675.P15286129136975161709

`∩[A002385(n+1), A343590(n+1)]`
-/

namespace A343675.P15286129136975161709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P15286129136975161709

/-! ## A343675.P3177364766892223008

`∩[A030147(n+1), A343590(n+1)]`
-/

namespace A343675.P3177364766892223008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P3177364766892223008

/-! ## A343675.P3113757049344173772

`∩[A030150(n+1), A343590(n+1)]`
-/

namespace A343675.P3113757049344173772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P3113757049344173772

/-! ## A343675.P15809492862169111915

`∩[A050784(n+1), A343590(n+1)]`
-/

namespace A343675.P15809492862169111915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P15809492862169111915

/-! ## A343675.P15157889075423599606

`∩[A062687(n+1), A343590(n+1)]`
-/

namespace A343675.P15157889075423599606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P15157889075423599606

/-! ## A343675.P16529104574199888816

`∩[A072299(n+1), A343590(n+1)]`
-/

namespace A343675.P16529104574199888816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P16529104574199888816

/-! ## A343675.P5721860107141742186

`∩[A080716(n+1), A343590(n+1)]`
-/

namespace A343675.P5721860107141742186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P5721860107141742186

/-! ## A343675.P18397891406971857643

`∩[A083137(n+1), A343590(n+1)]`
-/

namespace A343675.P18397891406971857643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P18397891406971857643

/-! ## A343675.P18418037470007650243

`∩[A169829(n+1), A343590(n+1)]`
-/

namespace A343675.P18418037470007650243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P18418037470007650243

/-! ## A343675.P18054904408945588982

`∩[A188650(n+1), A343590(n+1)]`
-/

namespace A343675.P18054904408945588982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P18054904408945588982

/-! ## A343675.P4813222101065813160

`∩[A265641(n+1), A343590(n+1)]`
-/

namespace A343675.P4813222101065813160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P4813222101065813160

/-! ## A343675.P7328488531384659266

`∩[A324989(n+1), A343590(n+1)]`
-/

namespace A343675.P7328488531384659266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P7328488531384659266

/-! ## A343675.P13789784741776956733

`∩[A327325(n+1), A343590(n+1)]`
-/

namespace A343675.P13789784741776956733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P13789784741776956733

/-! ## A343675.P13816358706568118546

`∩[A340252(n+1), A343590(n+1)]`
-/

namespace A343675.P13816358706568118546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P13816358706568118546

/-! ## A343675.P285502118253272590

`∩[A343590(n+1), A363246(n+1)]`
-/

namespace A343675.P285502118253272590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343675.P285502118253272590

/-!
# A343676: Number of n-digit undulating alternating primes.

The programs for A343676, there is no canonical definition to state claims against.
-/

/-! ## A343676.P7441392422377121188

`A325353(A368614(n+1))`
-/

namespace A343676.P7441392422377121188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 (A368614 (n + 1)).toNat

end

end A343676.P7441392422377121188

/-!
# A343677: Number of (2n+1)-digit undulating alternating palindromic primes.

The programs for A343677, there is no canonical definition to state claims against.
-/

/-! ## A343677.P17939259797698293513

`A247911(A128104(n+1)+A000593(3*(n+1)))`
-/

namespace A343677.P17939259797698293513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A128104 (n + 1) + A000593 (3 * (n + 1))).toNat

end

end A343677.P17939259797698293513

/-!
# A343678: The square of the distance from the origin for the points visited by a knight moving on a 3D cubic lattice using the rules given in the Comments.

The programs for A343678, there is no canonical definition to state claims against.
-/

/-! ## A343678.P16035043495756192364

`gcd(A002372(A191827(n)), A049452(n))`
-/

namespace A343678.P16035043495756192364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002372 (A191827 n).toNat) (A049452 n)

end

end A343678.P16035043495756192364

/-! ## A343678.P14444160821119575591

`gcd(A008587(n), A248719(A226602(n)))`
-/

namespace A343678.P14444160821119575591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008587 n) (A248719 (A226602 n).toNat)

end

end A343678.P14444160821119575591

/-! ## A343678.P14439211014979853747

`gcd(A201236(A298647(n)), A283442(n))`
-/

namespace A343678.P14439211014979853747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201236 (A298647 n).toNat) (A283442 n)

end

end A343678.P14439211014979853747

/-! ## A343678.P16301286103029564336

`and(A017667(n+1), A092067(A100155(n+1)))`
-/

namespace A343678.P16301286103029564336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017667 (n + 1)) (A092067 (A100155 (n + 1)).toNat)

end

end A343678.P16301286103029564336

/-!
# A343679: Lucasian pseudoprimes: composite numbers k such that 2^(k-1) == k+1 (mod k(2k+1)).

The programs for A343679, there is no canonical definition to state claims against.
-/

/-! ## A343679.P5237556839600223868

`∩[A020230(n+1), A235540(n+1)]`
-/

namespace A343679.P5237556839600223868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343679.P5237556839600223868

/-! ## A343679.P5981177531097018182

`∩[A177884(n+1), A235540(n+1)]`
-/

namespace A343679.P5981177531097018182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343679.P5981177531097018182

/-!
# A343680: Niven (or Harshad) numbers which when divided by sum of their digits, give a quotient which is a Zuckerman number.

The programs for A343680, there is no canonical definition to state claims against.
-/

/-! ## A343680.P15796667890447327442

`record[A005349(n+1)*A188642(A113315(n+1))]`
-/

namespace A343680.P15796667890447327442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) * A188642 (A113315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343680.P15796667890447327442

/-! ## A343680.P4332170633673153913

`record[A325454(n+1)*A360073(A113315(n+1))]`
-/

namespace A343680.P4332170633673153913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325454 (n + 1) * A360073 (A113315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343680.P4332170633673153913

/-!
# A343681: Zuckerman numbers which when divided by product of their digits, give a quotient which is also a Zuckerman number.

The programs for A343681, there is no canonical definition to state claims against.
-/

/-! ## A343681.P6569574131196441856

`A007602(lt[A035441(n+1), A007321(2*n+1)])`
-/

namespace A343681.P6569574131196441856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007321 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343681.P6569574131196441856

/-! ## A343681.P8359272432709133011

`filter[A135579(n+1), A188642(#)]`
-/

namespace A343681.P8359272432709133011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j).toNat = 1) n)

end

end A343681.P8359272432709133011

/-! ## A343681.P5465003081357584346

`∩[A007602(n+1), A135579(n+1)]`
-/

namespace A343681.P5465003081357584346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343681.P5465003081357584346

/-! ## A343681.P14810280381636692314

`∩[A135579(n+1), A180484(n+1)]`
-/

namespace A343681.P14810280381636692314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343681.P14810280381636692314

/-! ## A343681.P15159474881363440328

`eq[A188642(n), A304327(A338055(n+1))]`
-/

namespace A343681.P15159474881363440328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304327 (A338055 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343681.P15159474881363440328

/-!
# A343682: Zuckerman numbers which when divided by the product of their digits, give a quotient which is a Niven (Harshad) number.

The programs for A343682, there is no canonical definition to state claims against.
-/

/-! ## A343682.P3247701907480948636

`record[A007602(n+1)/A065518(A288069(n+1))]`
-/

namespace A343682.P3247701907480948636
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007602 (n + 1) : ℚ) / (A065518 (A288069 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343682.P3247701907480948636

/-! ## A343682.P3476621833899145100

`∩[A343681(n+1), A351467(n+1)]`
-/

namespace A343682.P3476621833899145100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343682.P3476621833899145100

/-! ## A343682.P2719365642311967422

`∩[A332111(n+1), A343681(n+1)]`
-/

namespace A343682.P2719365642311967422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343682.P2719365642311967422

/-! ## A343682.P9090883395512686366

`A007602(lt[0, ∏{digits}[n, #]]%A139439(n+4))`
-/

namespace A343682.P9090883395512686366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) (A139439 (n + 4))).toNat

end

end A343682.P9090883395512686366

/-!
# A343684: Triangle read by rows: T(n,k). Row n lists the numerators of a finite sum of fractions which results from Sum_{j>=1} 1/2^(A014682^n(j)).

The programs for A343684, there is no canonical definition to state claims against.
-/

/-! ## A343684.P5406356504293171382

`lcm(A285997(A286001(3*n+2)), A286030(n+1))`
-/

namespace A343684.P5406356504293171382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285997 (A286001 (3 * n + 2)).toNat) (A286030 (n + 1))

end

end A343684.P5406356504293171382

/-!
# A343685: a(0) = 1; a(n) = 2 * n * a(n-1) + Sum_{k=0..n-1} binomial(n,k) * (n-k-1)! * a(k).

The programs for A343685, there is no canonical definition to state claims against.
-/

/-! ## A343685.P17923594072396094724

`A047515(2*n*a(n-1))` with `a(0)=1`
-/

namespace A343685.P17923594072396094724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047515 ((2 * n : ℤ) * a (n - 1)).toNat

end

end A343685.P17923594072396094724

/-!
# A343687: a(0) = 1; a(n) = 4 * n * a(n-1) + Sum_{k=0..n-1} binomial(n,k) * (n-k-1)! * a(k).

The programs for A343687, there is no canonical definition to state claims against.
-/

/-! ## A343687.P9889486747367954232

`A195850(2*n+1)*A246281(A354123(n))`
-/

namespace A343687.P9889486747367954232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195850 (2 * n + 1) * A246281 (A354123 n).toNat

end

end A343687.P9889486747367954232

/-!
# A343688: a(1)=1, a(2)=0, a(n) = (4*n-2)*a(n-1) + a(n-2), n > 2.

The programs for A343688, the canonical program `A343688.P16048068849789621` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343688 has offset 1).

The definition of A343688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)-2)*a(n-1)+a(n-2)` (program `A343688.P16048068849789621`, by `A343688.P16048068849789621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343688.P16048068849789621

`(4*(n+1)-2)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A343688

/-- `(4*(n+1)-2)*a(n-1)+a(n-2)` -/
def P16048068849789621.Spec : Prop :=
  ∀ n, P16048068849789621.a n = A343688 (n + 1)

theorem P16048068849789621.correct : P16048068849789621.Spec := by
  intro n
  simp only [A343688, Nat.add_sub_cancel]

end A343688

/-! ## A343688.P11992008171741635725

`a(n-2)+(4*n+2)*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A343688.P11992008171741635725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (4 * n + 2) * a (n - 1)

end

end A343688.P11992008171741635725

namespace A343688

/-- `a(n-2)+(4*n+2)*a(n-1)` -/
def P11992008171741635725.Spec : Prop :=
  ∀ n, (P11992008171741635725.a n : ℤ) = A343688 (n + 1)

end A343688

/-! ## A343688.P4883548841441118421

`A340738(2*n+1)-7*A343689(n+1)`
-/

namespace A343688.P4883548841441118421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340738 (2 * n + 1) - 7 * A343689 (n + 1)

end

end A343688.P4883548841441118421

namespace A343688

/-- `A340738(2*n+1)-7*A343689(n+1)` -/
def P4883548841441118421.Spec : Prop :=
  ∀ n, P4883548841441118421.a n = A343688 (n + 1)

end A343688

/-!
# A343689: a(1)=0, a(2)=1, a(n) = (4*n-2)*a(n-1) + a(n-2), n > 2.

The programs for A343689, the canonical program `A343689.P3221834171622846639` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343689 has offset 1).

The definition of A343689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)-2)*a(n-1)+a(n-2)` (program `A343689.P3221834171622846639`, by `A343689.P3221834171622846639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343689.P3221834171622846639

`(4*(n+1)-2)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A343689

/-- `(4*(n+1)-2)*a(n-1)+a(n-2)` -/
def P3221834171622846639.Spec : Prop :=
  ∀ n, P3221834171622846639.a n = A343689 (n + 1)

theorem P3221834171622846639.correct : P3221834171622846639.Spec := by
  intro n
  simp only [A343689, Nat.add_sub_cancel]

end A343689

/-! ## A343689.P4352252722425044481

`a(n-2)+(4*n+2)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A343689.P4352252722425044481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (4 * n + 2) * a (n - 1)

end

end A343689.P4352252722425044481

namespace A343689

/-- `a(n-2)+(4*n+2)*a(n-1)` -/
def P4352252722425044481.Spec : Prop :=
  ∀ n, (P4352252722425044481.a n : ℤ) = A343689 (n + 1)

end A343689

/-! ## A343689.P1856514467386910013

`A079166(∑[n+1])`
-/

namespace A343689.P1856514467386910013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343689.P1856514467386910013

namespace A343689

/-- `A079166(∑[n+1])` -/
def P1856514467386910013.Spec : Prop :=
  ∀ n, P1856514467386910013.a n = A343689 (n + 1)

end A343689

/-! ## A343689.P9105320945172125142

`record[A079166(n+1)]`
-/

namespace A343689.P9105320945172125142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343689.P9105320945172125142

namespace A343689

/-- `record[A079166(n+1)]` -/
def P9105320945172125142.Spec : Prop :=
  ∀ n, P9105320945172125142.a n = A343689 (n + 1)

end A343689

/-! ## A343689.P14211654565617900052

`record[A079166(n)-A357637(n)]`
-/

namespace A343689.P14211654565617900052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079166 n - A357637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343689.P14211654565617900052

namespace A343689

/-- `record[A079166(n)-A357637(n)]` -/
def P14211654565617900052.Spec : Prop :=
  ∀ n, P14211654565617900052.a n = A343689 (n + 1)

end A343689

/-! ## A343689.P1267220670953003480

`A001517(n+1)%A086403(n+1)`
-/

namespace A343689.P1267220670953003480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001517 (n + 1)) (A086403 (n + 1))

end

end A343689.P1267220670953003480

namespace A343689

/-- `A001517(n+1)%A086403(n+1)` -/
def P1267220670953003480.Spec : Prop :=
  ∀ n, P1267220670953003480.a n = A343689 (n + 1)

end A343689

/-! ## A343689.P13005405186927835693

`A079165(n+1)%A086403(n+1)`
-/

namespace A343689.P13005405186927835693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079165 (n + 1)) (A086403 (n + 1))

end

end A343689.P13005405186927835693

namespace A343689

/-- `A079165(n+1)%A086403(n+1)` -/
def P13005405186927835693.Spec : Prop :=
  ∀ n, P13005405186927835693.a n = A343689 (n + 1)

end A343689

/-!
# A343690: Minimal value of positive discriminants of number fields of degree n.

The programs for A343690, there is no canonical definition to state claims against.
-/

/-! ## A343690.P16853999588224002446

`record[A343290(∑[A008315(n)])]`
-/

namespace A343690.P16853999588224002446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343290 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343690.P16853999588224002446

/-! ## A343690.P13050680694118006379

`A343290(A231958(n+1)-A005673(n))`
-/

namespace A343690.P13050680694118006379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343290 (A231958 (n + 1) - A005673 n).toNat

end

end A343690.P13050680694118006379

/-!
# A343691: a(n) is the least prime p such that p + A014574(n) is prime.

The programs for A343691, there is no canonical definition to state claims against.
-/

/-! ## A343691.P11261693794780353597

`A179295(A029707(n+1))`
-/

namespace A343691.P11261693794780353597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179295 (A029707 (n + 1)).toNat

end

end A343691.P11261693794780353597

/-! ## A343691.P14732176101933465523

`A020483(A040040(n+1))`
-/

namespace A343691.P14732176101933465523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A040040 (n + 1)).toNat

end

end A343691.P14732176101933465523

/-! ## A343691.P8315716804461838083

`A020483(A168497(n+2))`
-/

namespace A343691.P8315716804461838083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A168497 (n + 2)).toNat

end

end A343691.P8315716804461838083

/-! ## A343691.P8989095342752810915

`A020483(A014574(n+1)/2)`
-/

namespace A343691.P8989095342752810915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat

end

end A343691.P8989095342752810915

/-! ## A343691.P16582450350400549331

`A054906(A014574(n+1)/2)`
-/

namespace A343691.P16582450350400549331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat

end

end A343691.P16582450350400549331

/-! ## A343691.P13559703229134082491

`A020483((A001359(n+1)+1)/2)`
-/

namespace A343691.P13559703229134082491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.roundAway ((A001359 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A343691.P13559703229134082491

/-! ## A343691.P6545347283578951873

`A054906(A040040(n+1))%A008574(n+1)`
-/

namespace A343691.P6545347283578951873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054906 (A040040 (n + 1)).toNat) (A008574 (n + 1))

end

end A343691.P6545347283578951873

/-! ## A343691.P13726843603113709227

`A271353(A006512(n+1)+1)`
-/

namespace A343691.P13726843603113709227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A006512 (n + 1) + 1).toNat

end

end A343691.P13726843603113709227

/-! ## A343691.P14213884931770619370

`A271353(A094743(n+2)+1)`
-/

namespace A343691.P14213884931770619370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A094743 (n + 2) + 1).toNat

end

end A343691.P14213884931770619370

/-! ## A343691.P15364622981428993039

`A151800(A013632(A006512(n+1)))`
-/

namespace A343691.P15364622981428993039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A013632 (A006512 (n + 1)).toNat).toNat

end

end A343691.P15364622981428993039

/-! ## A343691.P5819529314164019391

`A151800(A341512(A003961(A001359(n+1))))`
-/

namespace A343691.P5819529314164019391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A341512 (A003961 (A001359 (n + 1)).toNat).toNat).toNat

end

end A343691.P5819529314164019391

/-!
# A343692: a(n) is the number of men's preference profiles in the stable marriage problem with n men and n women, where every man prefers woman number 1 to woman number 2.

The programs for A343692, there is no canonical definition to state claims against.
-/

/-! ## A343692.P2156241755214700341

`record[(n!/2)^n]`
-/

namespace A343692.P2156241755214700341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / 2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343692.P2156241755214700341

/-! ## A343692.P9905346562852693173

`((n+2)!/2)^(n+2)`
-/

namespace A343692.P9905346562852693173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) : ℚ) / 2) ^ (n + 2)

end

end A343692.P9905346562852693173

/-!
# A343693: a(n) is the number of preference profiles in the stable marriage problem with n men and n women, where every man prefers woman number 1 to woman number 2 and every woman prefers man number 1 to man number 2.

The programs for A343693, there is no canonical definition to state claims against.
-/

/-! ## A343693.P6145522816598048026

`record[((n!/2)^n)²]`
-/

namespace A343693.P6145522816598048026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.factorial n : ℚ) / 2) ^ n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343693.P6145522816598048026

/-! ## A343693.P4868228298199895113

`record[(n!/2)^(2*n)]`
-/

namespace A343693.P4868228298199895113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / 2) ^ (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343693.P4868228298199895113

/-! ## A343693.P14106016725241234064

`(((n+2)!/2)^(n+2))²`
-/

namespace A343693.P14106016725241234064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.factorial (n + 2) : ℚ) / 2) ^ (n + 2)) ^ 2

end

end A343693.P14106016725241234064

/-! ## A343693.P11541686929206223781

`((n+2)!/2)^(2*(n+2))`
-/

namespace A343693.P11541686929206223781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) : ℚ) / 2) ^ (2 * (n + 2))

end

end A343693.P11541686929206223781

/-!
# A343694: a(n) is the number of men's preference profiles in the stable marriage problem with n men and n women, such that all men prefer different women as their first choices.

The programs for A343694, the canonical program `A343694.P17085853724413590046` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343694 has offset 1).

The definition of A343694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343694.P17085853724413590046

`(n+1)!*n!^(n+1)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A343694

/-- `(n+1)!*n!^(n+1)` -/
def P17085853724413590046.Spec : Prop :=
  ∀ n, (P17085853724413590046.a n : ℤ) = A343694 (n + 1)

theorem P17085853724413590046.correct : P17085853724413590046.Spec := by
  intro n
  simp only [A343694, Nat.add_sub_cancel]

end A343694

/-! ## A343694.P13936760090741598902

`∏[n^n*(n+1)!]`
-/

namespace A343694.P13936760090741598902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n * Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A343694.P13936760090741598902

namespace A343694

/-- `∏[n^n*(n+1)!]` -/
def P13936760090741598902.Spec : Prop :=
  ∀ n, (P13936760090741598902.a n : ℤ) = A343694 (n + 1)

end A343694

/-! ## A343694.P2048472504704336339

`(n+1)*n!^(n+2)`
-/

namespace A343694.P2048472504704336339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial n ^ (n + 2)

end

end A343694.P2048472504704336339

namespace A343694

/-- `(n+1)*n!^(n+2)` -/
def P2048472504704336339.Spec : Prop :=
  ∀ n, (P2048472504704336339.a n : ℤ) = A343694 (n + 1)

theorem P2048472504704336339.correct : P2048472504704336339.Spec := by
  intro n
  simp only [A343694, Nat.add_sub_cancel, A343694.P2048472504704336339.a, A343694.P17085853724413590046.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A343694

/-! ## A343694.P16359414757733105028

`n!*A342573(n+1)`
-/

namespace A343694.P16359414757733105028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A342573 (n + 1)

end

end A343694.P16359414757733105028

namespace A343694

/-- `n!*A342573(n+1)` -/
def P16359414757733105028.Spec : Prop :=
  ∀ n, P16359414757733105028.a n = A343694 (n + 1)

end A343694

/-! ## A343694.P580695763159307661

`A000178(n+1)*A002109(n)`
-/

namespace A343694.P580695763159307661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (n + 1) * A002109 n

end

end A343694.P580695763159307661

namespace A343694

/-- `A000178(n+1)*A002109(n)` -/
def P580695763159307661.Spec : Prop :=
  ∀ n, P580695763159307661.a n = A343694 (n + 1)

end A343694

/-!
# A343695: a(n) is the number of preference profiles in the stable marriage problem with n men and n women, where men prefer different women and women prefer different men as their first choices.

The programs for A343695, there is no canonical definition to state claims against.
-/

/-! ## A343695.P9384442750447322384

`∏[(n^n*(n+1)!)²]`
-/

namespace A343695.P9384442750447322384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ n * Nat.factorial (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A343695.P9384442750447322384

/-! ## A343695.P11749686479785651521

`((n+1)*n!^(n+2))²`
-/

namespace A343695.P11749686479785651521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.factorial n ^ (n + 2)) ^ 2

end

end A343695.P11749686479785651521

/-! ## A343695.P13855265606454379636

`A343694(n+1)²`
-/

namespace A343695.P13855265606454379636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343694 (n + 1) ^ 2

end

end A343695.P13855265606454379636

/-! ## A343695.P10088176205633937476

`(n+1)!*A343698(n+1)`
-/

namespace A343695.P10088176205633937476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A343698 (n + 1)

end

end A343695.P10088176205633937476

/-!
# A343696: a(n) is the number of preference profiles in the stable marriage problem with n men and n women, such that the men's preference profiles form a Latin square.

The programs for A343696, there is no canonical definition to state claims against.
-/

/-! ## A343696.P4688512513245313208

`(n+1)!^(n+1)*A002860(n+1)`
-/

namespace A343696.P4688512513245313208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ (n + 1) : ℤ) * A002860 (n + 1)

end

end A343696.P4688512513245313208

/-! ## A343696.P12214386473820358029

`record[A344658(n)]*A344662(n+1)`
-/

namespace A343696.P12214386473820358029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A344662 (n + 1)

end

end A343696.P12214386473820358029

/-!
# A343697: a(n) is the number of preference profiles in the stable marriage problem with n men and n women such that both the men's and women's profiles form Latin squares.

The programs for A343697, there is no canonical definition to state claims against.
-/

/-! ## A343697.P279983237785661287

`A002860(n+1)²`
-/

namespace A343697.P279983237785661287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002860 (n + 1) ^ 2

end

end A343697.P279983237785661287

/-! ## A343697.P9903158455894955254

`((n+1)!*A000479(n+1))²`
-/

namespace A343697.P9903158455894955254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * A000479 (n + 1)) ^ 2

end

end A343697.P9903158455894955254

/-! ## A343697.P15633344312167882500

`(A344662(n+1)/A091868(n))²`
-/

namespace A343697.P15633344312167882500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A344662 (n + 1) : ℚ) / (A091868 n : ℚ)) ^ 2

end

end A343697.P15633344312167882500

/-! ## A343697.P15510898778315696409

`A000142(n+1)*A344664(n+1)`
-/

namespace A343697.P15510898778315696409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A344664 (n + 1)

end

end A343697.P15510898778315696409

/-! ## A343697.P7870164978331711221

`(A000142(n+1)*A000479(n+1))²`
-/

namespace A343697.P7870164978331711221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) * A000479 (n + 1)) ^ 2

end

end A343697.P7870164978331711221

/-!
# A343698: a(n) is the number of preference profiles in the stable marriage problem with n men and n women such that there are n pairs of soulmates (people who rank each other first).

The programs for A343698, the canonical program `A343698.P2240589339448090446` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343698 has offset 1).

The definition of A343698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343698.P2240589339448090446

`n!^(2*(n+1))*(n+1)!`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A343698

/-- `n!^(2*(n+1))*(n+1)!` -/
def P2240589339448090446.Spec : Prop :=
  ∀ n, (P2240589339448090446.a n : ℤ) = A343698 (n + 1)

theorem P2240589339448090446.correct : P2240589339448090446.Spec := by
  intro n
  simp only [A343698, Nat.add_sub_cancel]

end A343698

/-! ## A343698.P18279493893524528994

`(n+1)*n!^(2*n+3)`
-/

namespace A343698.P18279493893524528994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial n ^ (2 * n + 3)

end

end A343698.P18279493893524528994

namespace A343698

/-- `(n+1)*n!^(2*n+3)` -/
def P18279493893524528994.Spec : Prop :=
  ∀ n, (P18279493893524528994.a n : ℤ) = A343698 (n + 1)

theorem P18279493893524528994.correct : P18279493893524528994.Spec := by
  intro n
  simp only [A343698, Nat.add_sub_cancel, A343698.P18279493893524528994.a, A343698.P2240589339448090446.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A343698

/-! ## A343698.P6495085969911831032

`A091868(n)*A343694(n+1)`
-/

namespace A343698.P6495085969911831032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091868 n * A343694 (n + 1)

end

end A343698.P6495085969911831032

namespace A343698

/-- `A091868(n)*A343694(n+1)` -/
def P6495085969911831032.Spec : Prop :=
  ∀ n, P6495085969911831032.a n = A343698 (n + 1)

theorem P6495085969911831032.correct : P6495085969911831032.Spec := by
  intro n
  simp only [A343698, Nat.add_sub_cancel, A343698.P6495085969911831032.a, A343698.P2240589339448090446.a, A091868, A091868.P5525084501402041512.a, A343694, A343694.P17085853724413590046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343698

/-! ## A343698.P1538450404011836071

`A000142(n+1)*A350558(n+1)`
-/

namespace A343698.P1538450404011836071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A350558 (n + 1)

end

end A343698.P1538450404011836071

namespace A343698

/-- `A000142(n+1)*A350558(n+1)` -/
def P1538450404011836071.Spec : Prop :=
  ∀ n, P1538450404011836071.a n = A343698 (n + 1)

theorem P1538450404011836071.correct : P1538450404011836071.Spec := by
  intro n
  simp only [A343698, Nat.add_sub_cancel, A343698.P1538450404011836071.a, A343698.P2240589339448090446.a, A000142, A000142.P3272619076580183195.a, A350558, A350558.P4373866267256184305.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343698

/-! ## A343698.P7537665966006636438

`A001044(n)^(n+1)*A074166(n+1)`
-/

namespace A343698.P7537665966006636438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 n ^ (n + 1) * A074166 (n + 1)

end

end A343698.P7537665966006636438

namespace A343698

/-- `A001044(n)^(n+1)*A074166(n+1)` -/
def P7537665966006636438.Spec : Prop :=
  ∀ n, P7537665966006636438.a n = A343698 (n + 1)

end A343698

