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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A324000: Array read by antidiagonals: T(n,k) (n>=0, k>=0) = number of closed strands in an (n,k)-wrapping of the cube (or basket).

The programs for A324000, there is no canonical definition to state claims against.
-/

/-! ## A324000.P10412263032161175037

`A003056(n)*A256794(A353953(n))`
-/

namespace A324000.P10412263032161175037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A256794 (A353953 n).toNat

end

end A324000.P10412263032161175037

/-! ## A324000.P9950467188235267366

`A003056(n)*A065310(A173006(n))`
-/

namespace A324000.P9950467188235267366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A065310 (A173006 n).toNat

end

end A324000.P9950467188235267366

/-! ## A324000.P6396195141047222094

`A003056(n)*A104608(A203610(n+1))`
-/

namespace A324000.P6396195141047222094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A104608 (A203610 (n + 1)).toNat

end

end A324000.P6396195141047222094

/-! ## A324000.P17712971122544233934

`A003056(n)*A277543(A203550(n+1)+2)`
-/

namespace A324000.P17712971122544233934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A277543 (A203550 (n + 1) + 2).toNat

end

end A324000.P17712971122544233934

/-!
# A324005: Numerator of 120*Stirling_2(n,5)/n!.

The programs for A324005, there is no canonical definition to state claims against.
-/

/-! ## A324005.P18213545052940575962

`A175559(a(n-1)+n)-n` with `a(0)=1, a(1)=5, a(2)=10, a(3)=25`
-/

namespace A324005.P18213545052940575962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 10, 25] fun n a =>
  A175559 (a (n - 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A324005.P18213545052940575962

/-!
# A324007: Decimal expansion of the sum of reciprocals of the products of 3 consecutive Fibonacci numbers.

The programs for A324007, there is no canonical definition to state claims against.
-/

/-! ## A324007.P16777713612683176687

`9-A158933(n)`
-/

namespace A324007.P16777713612683176687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A158933 n

end

end A324007.P16777713612683176687

/-!
# A324009: The number of convex polyominoes whose smallest bounding rectangle has size w*h (w > 0, h > 0). The table is read by antidiagonals.

The programs for A324009, there is no canonical definition to state claims against.
-/

/-! ## A324009.P3733837750522729943

`A229950(A055999(A007318(n)))`
-/

namespace A324009.P3733837750522729943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 (A055999 (A007318 n).toNat).toNat

end

end A324009.P3733837750522729943

/-! ## A324009.P3339441355902841210

`A229950(A055999(A302998(n)))`
-/

namespace A324009.P3339441355902841210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 (A055999 (A302998 n).toNat).toNat

end

end A324009.P3339441355902841210

/-! ## A324009.P17938498921005632328

`A122079(A086645(n)-A014473(n))`
-/

namespace A324009.P17938498921005632328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A086645 n - A014473 n).toNat

end

end A324009.P17938498921005632328

/-! ## A324009.P16860306263447643636

`xor(A055572(A243966(n)), A143007(n))`
-/

namespace A324009.P16860306263447643636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055572 (A243966 n).toNat) (A143007 n)

end

end A324009.P16860306263447643636

/-!
# A324011: Number of set partitions of {1, ..., n} with no singletons or cyclical adjacencies (successive elements in the same block, where 1 is a successor of n).

The programs for A324011, there is no canonical definition to state claims against.
-/

/-! ## A324011.P13193303419377182149

`A306418(∑[n])`
-/

namespace A324011.P13193303419377182149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306418 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324011.P13193303419377182149

/-! ## A324011.P6287405850207215100

`and(-1, A306418(A000217(n)))`
-/

namespace A324011.P6287405850207215100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A306418 (A000217 n).toNat)

end

end A324011.P6287405850207215100

/-! ## A324011.P12364323185862917960

`A306418(C(n+1, 2))*A333254(n+1)`
-/

namespace A324011.P12364323185862917960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306418 (Nat.choose (n + 1) 2) * A333254 (n + 1)

end

end A324011.P12364323185862917960

/-! ## A324011.P383051140764622618

`A306418(C(n+1, 2))%A077647(n+1)`
-/

namespace A324011.P383051140764622618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306418 (Nat.choose (n + 1) 2)) (A077647 (n + 1))

end

end A324011.P383051140764622618

/-! ## A324011.P6258873077153969840

`A326457(n)+A306418(A000217(n))`
-/

namespace A324011.P6258873077153969840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326457 n + A306418 (A000217 n).toNat

end

end A324011.P6258873077153969840

/-!
# A324013: Number of self-complementary set partitions of {1, ..., n} with no singletons.

The programs for A324013, there is no canonical definition to state claims against.
-/

/-! ## A324013.P1667039205702426061

`A080107(n)-A324014(n+1)`
-/

namespace A324013.P1667039205702426061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 n - A324014 (n + 1)

end

end A324013.P1667039205702426061

/-! ## A324013.P274233810991858073

`2*A103293(n+1)-A000110(n)-A324014(n+1)`
-/

namespace A324013.P274233810991858073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103293 (n + 1) - A000110 n - A324014 (n + 1)

end

end A324013.P274233810991858073

/-! ## A324013.P6150474663953485315

`2*A103293(n+1)-A188164(2*n)-A324014(n+1)`
-/

namespace A324013.P6150474663953485315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103293 (n + 1) - A188164 (2 * n) - A324014 (n + 1)

end

end A324013.P6150474663953485315

/-!
# A324014: Number of self-complementary set partitions of {1, ..., n} with no cyclical adjacencies (successive elements in the same block, where 1 is a successor of n).

The programs for A324014, there is no canonical definition to state claims against.
-/

/-! ## A324014.P10566736450658270350

`abs(A135814(n)-A283315(n))`
-/

namespace A324014.P10566736450658270350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135814 n - A283315 n|

end

end A324014.P10566736450658270350

/-! ## A324014.P10816661887568427165

`abs(A283315(n)-A341279(n))`
-/

namespace A324014.P10816661887568427165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A283315 n - A341279 n|

end

end A324014.P10816661887568427165

/-! ## A324014.P13543834870233701780

`floor(A293993(n)/A116137(n))`
-/

namespace A324014.P13543834870233701780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293993 n : ℚ) / (A116137 n : ℚ)⌋

end

end A324014.P13543834870233701780

/-! ## A324014.P6204195715217312090

`A283314(n)-A340756(n+1)`
-/

namespace A324014.P6204195715217312090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283314 n - A340756 (n + 1 + 16)

end

end A324014.P6204195715217312090

/-! ## A324014.P16992353115856719613

`A000194(A196265(n+1))-A000045(n)`
-/

namespace A324014.P16992353115856719613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A196265 (n + 1)).toNat - A000045 n

end

end A324014.P16992353115856719613

/-!
# A324015: Number of nonempty subsets of {1, ..., n} containing no two cyclically successive elements.

The programs for A324015, the canonical program `A324015.P10072133132101994897` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324015 has offset 0).

The definition of A324015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324015.P11831880136055345371

`ogf((x-x^3+x^4)/(1-2x+x^3))`
-/

namespace A324015.P11831880136055345371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1, 1] [1, -2, 0, 1] n

end

end A324015.P11831880136055345371

namespace A324015

/-- `ogf((x-x^3+x^4)/(1-2x+x^3))` -/
def P11831880136055345371.Spec : Prop :=
  ∀ n, P11831880136055345371.a n = A324015 n

end A324015

/-! ## A324015.P10072133132101994897

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A324015

/-- `a(n-1)+a(n-2)+1` -/
def P10072133132101994897.Spec : Prop :=
  ∀ n, (P10072133132101994897.a n : ℤ) = A324015 n

theorem P10072133132101994897.correct : P10072133132101994897.Spec := by
  intro n
  simp only [A324015]

end A324015

/-! ## A324015.P8105099313310615600

`round(ϕ^n)-1`
-/

namespace A324015.P8105099313310615600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n) - 1

end

end A324015.P8105099313310615600

namespace A324015

/-- `round(ϕ^n)-1` -/
def P8105099313310615600.Spec : Prop :=
  ∀ n, P8105099313310615600.a n = A324015 n

end A324015

/-! ## A324015.P1470239251806908205

`floor(cos(2)+ϕ^n)`
-/

namespace A324015.P1470239251806908205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (2 : ℝ) + Real.goldenRatio ^ n⌋

end

end A324015.P1470239251806908205

namespace A324015

/-- `floor(cos(2)+ϕ^n)` -/
def P1470239251806908205.Spec : Prop :=
  ∀ n, P1470239251806908205.a n = A324015 n

end A324015

/-! ## A324015.P12785313478368427392

`floor(ϕ^n-cos(1))`
-/

namespace A324015.P12785313478368427392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n - Real.cos (1 : ℝ)⌋

end

end A324015.P12785313478368427392

namespace A324015

/-- `floor(ϕ^n-cos(1))` -/
def P12785313478368427392.Spec : Prop :=
  ∀ n, P12785313478368427392.a n = A324015 n

end A324015

/-! ## A324015.P14466940475609042626

`round(cos(3)+ϕ^n)`
-/

namespace A324015.P14466940475609042626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (3 : ℝ) + Real.goldenRatio ^ n)

end

end A324015.P14466940475609042626

namespace A324015

/-- `round(cos(3)+ϕ^n)` -/
def P14466940475609042626.Spec : Prop :=
  ∀ n, P14466940475609042626.a n = A324015 n

end A324015

/-! ## A324015.P15178650361662172475

`ceil(ϕ^n-acos(0))`
-/

namespace A324015.P15178650361662172475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ n - Real.arccos (0 : ℝ)⌉

end

end A324015.P15178650361662172475

namespace A324015

/-- `ceil(ϕ^n-acos(0))` -/
def P15178650361662172475.Spec : Prop :=
  ∀ n, P15178650361662172475.a n = A324015 n

end A324015

/-! ## A324015.P4310338879261655771

`ceil(ϕ^n-tan(1))`
-/

namespace A324015.P4310338879261655771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ n - Real.tan (1 : ℝ)⌉

end

end A324015.P4310338879261655771

namespace A324015

/-- `ceil(ϕ^n-tan(1))` -/
def P4310338879261655771.Spec : Prop :=
  ∀ n, P4310338879261655771.a n = A324015 n

end A324015

/-! ## A324015.P5448479519738174151

`round(sin(4)+ϕ^n)`
-/

namespace A324015.P5448479519738174151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (4 : ℝ) + Real.goldenRatio ^ n)

end

end A324015.P5448479519738174151

namespace A324015

/-- `round(sin(4)+ϕ^n)` -/
def P5448479519738174151.Spec : Prop :=
  ∀ n, P5448479519738174151.a n = A324015 n

end A324015

/-! ## A324015.P8939362103870366889

`floor(sin(6)+ϕ^n)`
-/

namespace A324015.P8939362103870366889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (6 : ℝ) + Real.goldenRatio ^ n⌋

end

end A324015.P8939362103870366889

namespace A324015

/-- `floor(sin(6)+ϕ^n)` -/
def P8939362103870366889.Spec : Prop :=
  ∀ n, P8939362103870366889.a n = A324015 n

end A324015

/-! ## A324015.P13339370885557847067

`ceil(ϕ^n-asin(1))`
-/

namespace A324015.P13339370885557847067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ n - Real.arcsin (1 : ℝ)⌉

end

end A324015.P13339370885557847067

namespace A324015

/-- `ceil(ϕ^n-asin(1))` -/
def P13339370885557847067.Spec : Prop :=
  ∀ n, P13339370885557847067.a n = A324015 n

end A324015

/-! ## A324015.P16929433334181779270

`floor(tan(6)+ϕ^n)`
-/

namespace A324015.P16929433334181779270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (6 : ℝ) + Real.goldenRatio ^ n⌋

end

end A324015.P16929433334181779270

namespace A324015

/-- `floor(tan(6)+ϕ^n)` -/
def P16929433334181779270.Spec : Prop :=
  ∀ n, P16929433334181779270.a n = A324015 n

end A324015

/-! ## A324015.P5614711641201532271

`ceil(ϕ^n-cosh(1))`
-/

namespace A324015.P5614711641201532271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ n - Real.cosh (1 : ℝ)⌉

end

end A324015.P5614711641201532271

namespace A324015

/-- `ceil(ϕ^n-cosh(1))` -/
def P5614711641201532271.Spec : Prop :=
  ∀ n, P5614711641201532271.a n = A324015 n

end A324015

/-! ## A324015.P2241371968432004403

`ceil(ϕ^n-atan(3))`
-/

namespace A324015.P2241371968432004403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ n - Real.arctan (3 : ℝ)⌉

end

end A324015.P2241371968432004403

namespace A324015

/-- `ceil(ϕ^n-atan(3))` -/
def P2241371968432004403.Spec : Prop :=
  ∀ n, P2241371968432004403.a n = A324015 n

end A324015

/-! ## A324015.P10140106578975655792

`floor(cot(2)+ϕ^n)`
-/

namespace A324015.P10140106578975655792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 : ℝ) + Real.goldenRatio ^ n⌋

end

end A324015.P10140106578975655792

namespace A324015

/-- `floor(cot(2)+ϕ^n)` -/
def P10140106578975655792.Spec : Prop :=
  ∀ n, P10140106578975655792.a n = A324015 n

end A324015

/-! ## A324015.P3600110963121215592

`floor(ϕ^n-sin(9))`
-/

namespace A324015.P3600110963121215592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n - Real.sin (9 : ℝ)⌋

end

end A324015.P3600110963121215592

namespace A324015

/-- `floor(ϕ^n-sin(9))` -/
def P3600110963121215592.Spec : Prop :=
  ∀ n, P3600110963121215592.a n = A324015 n

end A324015

/-! ## A324015.P621034811279197752

`floor(ϕ^n-acot(2))`
-/

namespace A324015.P621034811279197752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n - SequenceMachineLib.acot (2 : ℝ)⌋

end

end A324015.P621034811279197752

namespace A324015

/-- `floor(ϕ^n-acot(2))` -/
def P621034811279197752.Spec : Prop :=
  ∀ n, P621034811279197752.a n = A324015 n

end A324015

/-! ## A324015.P18033141347338535719

`ceil(ϕ^n-cot(10))`
-/

namespace A324015.P18033141347338535719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ n - Real.cot (10 : ℝ)⌉

end

end A324015.P18033141347338535719

namespace A324015

/-- `ceil(ϕ^n-cot(10))` -/
def P18033141347338535719.Spec : Prop :=
  ∀ n, P18033141347338535719.a n = A324015 n

end A324015

/-! ## A324015.P17119595038864412309

`xor(-1, round(-ϕ^n))`
-/

namespace A324015.P17119595038864412309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (SequenceMachineLib.roundAway (-(Real.goldenRatio ^ n)))

end

end A324015.P17119595038864412309

namespace A324015

/-- `xor(-1, round(-ϕ^n))` -/
def P17119595038864412309.Spec : Prop :=
  ∀ n, P17119595038864412309.a n = A324015 n

end A324015

/-! ## A324015.P16868774359631515022

`floor(∑[ϕ*a(n-1)])` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A324015.P16868774359631515022
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  Real.goldenRatio * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A324015.P16868774359631515022

namespace A324015

/-- `floor(∑[ϕ*a(n-1)])` -/
def P16868774359631515022.Spec : Prop :=
  ∀ n, P16868774359631515022.a n = A324015 n

end A324015

/-!
# A324020: Total number of zeroless polydivisible numbers in base n.

The programs for A324020, there is no canonical definition to state claims against.
-/

/-! ## A324020.P4352199875545930159

`record[A101296(n+1)*A101296(A334774(n+1))]`
-/

namespace A324020.P4352199875545930159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 1) * A101296 (A334774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324020.P4352199875545930159

/-!
# A324022: Zeroless "magic" numbers.

The programs for A324022, there is no canonical definition to state claims against.
-/

/-! ## A324022.P10113153625906483799

`∩[A052382(n+1), A144688(n+1)]`
-/

namespace A324022.P10113153625906483799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324022.P10113153625906483799

/-! ## A324022.P4772650707478050634

`record[A004719(A144688(n+2))]`
-/

namespace A324022.P4772650707478050634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A144688 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324022.P4772650707478050634

/-! ## A324022.P15743022110293932489

`filter[A144688(n+1), A168046(#)]`
-/

namespace A324022.P15743022110293932489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A324022.P15743022110293932489

/-! ## A324022.P8667470710026922637

`∩[A144688(n+1), A178843(n+1)]`
-/

namespace A324022.P8667470710026922637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324022.P8667470710026922637

/-! ## A324022.P6160939594927105483

`∩[A178843(n+1), A144688(A348553(n))]`
-/

namespace A324022.P6160939594927105483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144688 (A348553 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324022.P6160939594927105483

/-!
# A324023: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(6). This is the 1 (mod 5) case (except for n = 0).

The programs for A324023, there is no canonical definition to state claims against.
-/

/-! ## A324023.P6971374987050784727

`A325484(n)²%A000351(n)`
-/

namespace A324023.P6971374987050784727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325484 n ^ 2) (A000351 n)

end

end A324023.P6971374987050784727

/-! ## A324023.P8608602832233812772

`A325487(n)²%A000351(n)`
-/

namespace A324023.P8608602832233812772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325487 n ^ 2) (A000351 n)

end

end A324023.P8608602832233812772

/-! ## A324023.P5857378693210908249

`A048898(n)+A048899(n)-A324024(n)`
-/

namespace A324023.P5857378693210908249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A324024 n)

end

end A324023.P5857378693210908249

/-! ## A324023.P7691169735857645387

`A268922(n)+A269590(n)-A324024(n)`
-/

namespace A324023.P7691169735857645387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268922 n + (A269590 n - A324024 n)

end

end A324023.P7691169735857645387

/-! ## A324023.P15199664212390835035

`A324027(n)+A324028(n)-A324024(n)`
-/

namespace A324023.P15199664212390835035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324027 n + (A324028 n - A324024 n)

end

end A324023.P15199664212390835035

/-!
# A324024: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(6). This is the 4 (mod 5) case (except for n = 0).

The programs for A324024, there is no canonical definition to state claims against.
-/

/-! ## A324024.P9073933192295065934

`A325485(n)²%A000351(n)`
-/

namespace A324024.P9073933192295065934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325485 n ^ 2) (A000351 n)

end

end A324024.P9073933192295065934

/-! ## A324024.P7710900898805230262

`A325486(n)²%A000351(n)`
-/

namespace A324024.P7710900898805230262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325486 n ^ 2) (A000351 n)

end

end A324024.P7710900898805230262

/-! ## A324024.P3999684736920522073

`A048898(n)+A048899(n)-A324023(n)`
-/

namespace A324024.P3999684736920522073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A324023 n)

end

end A324024.P3999684736920522073

/-! ## A324024.P8288818745621101282

`A268922(n)+A269590(n)-A324023(n)`
-/

namespace A324024.P8288818745621101282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268922 n + (A269590 n - A324023 n)

end

end A324024.P8288818745621101282

/-! ## A324024.P4391450090410057746

`A324027(n)+A324028(n)-A324023(n)`
-/

namespace A324024.P4391450090410057746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324027 n + (A324028 n - A324023 n)

end

end A324024.P4391450090410057746

/-!
# A324025: Digits of one of the two 5-adic integers sqrt(6) that is related to A324023.

The programs for A324025, there is no canonical definition to state claims against.
-/

/-! ## A324025.P11099511256701013738

`(A324023(n+1)-A324023(n))/5^n`
-/

namespace A324025.P11099511256701013738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324023 (n + 1) - A324023 n : ℚ) / (5 ^ n : ℚ)

end

end A324025.P11099511256701013738

/-! ## A324025.P2995624700445370932

`floor(acot(n))+4-A324026(n)`
-/

namespace A324025.P2995624700445370932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (4 - A324026 n)

end

end A324025.P2995624700445370932

/-! ## A324025.P3680979950268103627

`A000007(n)+4-A324026(n)`
-/

namespace A324025.P3680979950268103627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A324026 n)

end

end A324025.P3680979950268103627

/-! ## A324025.P13213088666967010489

`A151878(n)+4-A324026(n)`
-/

namespace A324025.P13213088666967010489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (4 - A324026 n)

end

end A324025.P13213088666967010489

/-! ## A324025.P9432413495687315286

`5-(A324026(n)+A057427(n))`
-/

namespace A324025.P9432413495687315286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A324026 n + A057427 n)

end

end A324025.P9432413495687315286

/-! ## A324025.P5479270673566518571

`A057428(n)+5-A324026(n)`
-/

namespace A324025.P5479270673566518571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (5 - A324026 n)

end

end A324025.P5479270673566518571

/-! ## A324025.P1579473651492699908

`6-(A324026(n)+A000122(n²))`
-/

namespace A324025.P1579473651492699908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (A324026 n + A000122 (n ^ 2))

end

end A324025.P1579473651492699908

/-! ## A324025.P11528685751117464699

`A008683((n+1)²)+4-A324026(n)`
-/

namespace A324025.P11528685751117464699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (4 - A324026 n)

end

end A324025.P11528685751117464699

/-! ## A324025.P13126473139915338550

`val(A000040(n+1), 2)+4-A324026(n)`
-/

namespace A324025.P13126473139915338550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (4 - A324026 n)

end

end A324025.P13126473139915338550

/-! ## A324025.P7502530982403321956

`and(1, A000010(n+2))+4-A324026(n)`
-/

namespace A324025.P7502530982403321956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (n + 2)) + (4 - A324026 n)

end

end A324025.P7502530982403321956

/-!
# A324026: Digits of one of the two 5-adic integers sqrt(6) that is related to A324024.

The programs for A324026, there is no canonical definition to state claims against.
-/

/-! ## A324026.P9065686902188604172

`(A324024(n+1)-A324024(n))/5^n`
-/

namespace A324026.P9065686902188604172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324024 (n + 1) - A324024 n : ℚ) / (5 ^ n : ℚ)

end

end A324026.P9065686902188604172

/-! ## A324026.P7564246467805572583

`floor(acot(n))+4-A324025(n)`
-/

namespace A324026.P7564246467805572583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (4 - A324025 n)

end

end A324026.P7564246467805572583

/-! ## A324026.P8616566736346062401

`4-A324025(abs(1-n)+1)`
-/

namespace A324026.P8616566736346062401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A324025 (|1 - (n : ℤ)| + 1).toNat

end

end A324026.P8616566736346062401

/-! ## A324026.P2699198016642285194

`A000007(n)+4-A324025(n)`
-/

namespace A324026.P2699198016642285194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A324025 n)

end

end A324026.P2699198016642285194

/-! ## A324026.P11753441587059039288

`A057428(n)-A324025(n)+5`
-/

namespace A324026.P11753441587059039288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n - A324025 n + 5

end

end A324026.P11753441587059039288

/-! ## A324026.P806521896971214330

`6-(A324025(n)+A040000(n))`
-/

namespace A324026.P806521896971214330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (A324025 n + A040000 n)

end

end A324026.P806521896971214330

/-! ## A324026.P15418510247241109049

`A057428(2*n)*A324025(n)+4`
-/

namespace A324026.P15418510247241109049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * n) * A324025 n + 4

end

end A324026.P15418510247241109049

/-! ## A324026.P9746447748714823376

`A022961(A324025(n)+A178334(n))`
-/

namespace A324026.P9746447748714823376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022961 (A324025 n + A178334 n).toNat

end

end A324026.P9746447748714823376

/-! ## A324026.P15017211512317364918

`A210850(n)+A210851(n)-A324025(n)`
-/

namespace A324026.P15017211512317364918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 n + (A210851 n - A324025 n)

end

end A324026.P15017211512317364918

/-! ## A324026.P14234894256477915806

`A269591(n)+A269592(n)-A324025(n)`
-/

namespace A324026.P14234894256477915806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269591 n + (A269592 n - A324025 n)

end

end A324026.P14234894256477915806

/-!
# A324027: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-6). This is the 2 (mod 5) case (except for n = 0).

The programs for A324027, there is no canonical definition to state claims against.
-/

/-! ## A324027.P4651202575289398324

`A048898(n)+A048899(n)-A324028(n)`
-/

namespace A324027.P4651202575289398324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A324028 n)

end

end A324027.P4651202575289398324

/-! ## A324027.P6942502229726920599

`A268922(n)+A269590(n)-A324028(n)`
-/

namespace A324027.P6942502229726920599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268922 n + (A269590 n - A324028 n)

end

end A324027.P6942502229726920599

/-! ## A324027.P10053397958841775572

`A324023(n)+A324024(n)-A324028(n)`
-/

namespace A324027.P10053397958841775572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324023 n + (A324024 n - A324028 n)

end

end A324027.P10053397958841775572

/-! ## A324027.P16613468816276374776

`(A048899(n)*A324024(n))%A000351(n)`
-/

namespace A324027.P16613468816276374776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048899 n * A324024 n) (A000351 n)

end

end A324027.P16613468816276374776

/-! ## A324027.P7306018474994907459

`(A325484(n)*A325485(n))%A000351(n)`
-/

namespace A324027.P7306018474994907459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325484 n * A325485 n) (A000351 n)

end

end A324027.P7306018474994907459

/-!
# A324028: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-6). This is the 3 (mod 5) case (except for n = 0).

The programs for A324028, there is no canonical definition to state claims against.
-/

/-! ## A324028.P8845385373345451372

`A048898(n)+A048899(n)-A324027(n)`
-/

namespace A324028.P8845385373345451372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A324027 n)

end

end A324028.P8845385373345451372

/-! ## A324028.P12335859289351059412

`A268922(n)+A269590(n)-A324027(n)`
-/

namespace A324028.P12335859289351059412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268922 n + (A269590 n - A324027 n)

end

end A324028.P12335859289351059412

/-! ## A324028.P9559609957957570836

`A324023(n)+A324024(n)-A324027(n)`
-/

namespace A324028.P9559609957957570836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324023 n + (A324024 n - A324027 n)

end

end A324028.P9559609957957570836

/-! ## A324028.P12518564928259706314

`(A000351(n)-A324027(n))%A000351(n)`
-/

namespace A324028.P12518564928259706314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n - A324027 n) (A000351 n)

end

end A324028.P12518564928259706314

/-! ## A324028.P875644069631603045

`(A034935(n)*A324024(n))%A000351(n)`
-/

namespace A324028.P875644069631603045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034935 n * A324024 n) (A000351 n)

end

end A324028.P875644069631603045

/-!
# A324029: Digits of one of the two 5-adic integers sqrt(-6) that is related to A324027.

The programs for A324029, there is no canonical definition to state claims against.
-/

/-! ## A324029.P17187686672971343592

`(A324027(n+1)-A324027(n))/5^n`
-/

namespace A324029.P17187686672971343592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324027 (n + 1) - A324027 n : ℚ) / (5 ^ n : ℚ)

end

end A324029.P17187686672971343592

/-! ## A324029.P9507991499602371690

`4-A324030(round(sqrt(n²+1)))`
-/

namespace A324029.P9507991499602371690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A324030 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A324029.P9507991499602371690

/-! ## A324029.P12427803728610910522

`5-(A324030(n)+ceil(sin(n)²))`
-/

namespace A324029.P12427803728610910522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A324030 n + ⌈Real.sin (n : ℝ) ^ 2⌉)

end

end A324029.P12427803728610910522

/-! ## A324029.P18029674040740195846

`A054977(n)+3-A324030(n)`
-/

namespace A324029.P18029674040740195846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (3 - A324030 n)

end

end A324029.P18029674040740195846

/-! ## A324029.P4756066672262345041

`5-(A324030(n)+A057427(n))`
-/

namespace A324029.P4756066672262345041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A324030 n + A057427 n)

end

end A324029.P4756066672262345041

/-! ## A324029.P8009147824758553218

`6-(A324030(n)+A040000(n))`
-/

namespace A324029.P8009147824758553218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (A324030 n + A040000 n)

end

end A324029.P8009147824758553218

/-! ## A324029.P657661531280118788

`A014963(4*n+2)+3-A324030(n)`
-/

namespace A324029.P657661531280118788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) + (3 - A324030 n)

end

end A324029.P657661531280118788

/-! ## A324029.P17381629883503056697

`gcd(2, A000040(n+1))-A324030(n)+3`
-/

namespace A324029.P17381629883503056697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) - A324030 n + 3

end

end A324029.P17381629883503056697

/-! ## A324029.P12491224798396148400

`A210850(n)+A210851(n)-A324030(n)`
-/

namespace A324029.P12491224798396148400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 n + (A210851 n - A324030 n)

end

end A324029.P12491224798396148400

/-! ## A324029.P10514248299638867110

`A269591(n)+A269592(n)-A324030(n)`
-/

namespace A324029.P10514248299638867110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269591 n + (A269592 n - A324030 n)

end

end A324029.P10514248299638867110

/-!
# A324030: Digits of one of the two 5-adic integers sqrt(-6) that is related to A324028.

The programs for A324030, there is no canonical definition to state claims against.
-/

/-! ## A324030.P9747288486123459481

`(A324028(n+1)-A324028(n))/5^n`
-/

namespace A324030.P9747288486123459481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324028 (n + 1) - A324028 n : ℚ) / (5 ^ n : ℚ)

end

end A324030.P9747288486123459481

/-! ## A324030.P11801099026503279305

`or(4-A324029(n), C(2, n))`
-/

namespace A324030.P11801099026503279305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 - A324029 n) (Nat.choose 2 n : ℤ)

end

end A324030.P11801099026503279305

/-! ## A324030.P9687055085388154248

`A054977(n)+3-A324029(n)`
-/

namespace A324030.P9687055085388154248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (3 - A324029 n)

end

end A324030.P9687055085388154248

/-! ## A324030.P6304281773025466098

`A000007(n)+4-A324029(n)`
-/

namespace A324030.P6304281773025466098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A324029 n)

end

end A324030.P6304281773025466098

/-! ## A324030.P172879134232478135

`4-A324029(A000038(n)+n)`
-/

namespace A324030.P172879134232478135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A324029 (A000038 n + (n : ℤ)).toNat

end

end A324030.P172879134232478135

/-! ## A324030.P8299432269341653986

`5-(A324029(n)+A057427(n))`
-/

namespace A324030.P8299432269341653986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A324029 n + A057427 n)

end

end A324030.P8299432269341653986

/-! ## A324030.P14549606079744619427

`6-(A324029(n)+A040000(n))`
-/

namespace A324030.P14549606079744619427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (A324029 n + A040000 n)

end

end A324030.P14549606079744619427

/-! ## A324030.P13910978989818470783

`A014963(4*n+2)+3-A324029(n)`
-/

namespace A324030.P13910978989818470783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) + (3 - A324029 n)

end

end A324030.P13910978989818470783

/-! ## A324030.P16956704826449966848

`5-A000040(n+1)%2-A324029(n)`
-/

namespace A324030.P16956704826449966848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (A000040 (n + 1)) 2 - A324029 n

end

end A324030.P16956704826449966848

/-! ## A324030.P9603105992974295442

`val(A000040(n²+1), 2)+4-A324029(n)`
-/

namespace A324030.P9603105992974295442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n ^ 2 + 1)).toNat 2 : ℤ) + (4 - A324029 n)

end

end A324030.P9603105992974295442

/-!
# A324035: Irregular triangle read by rows of the entries of the Collatz tree A088975 modulo 6, starting with entry 8 == 2 (mod 6).

The programs for A324035, there is no canonical definition to state claims against.
-/

/-! ## A324035.P4342496737479259841

`A088975(n+3)%6`
-/

namespace A324035.P4342496737479259841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088975 (n + 3)) 6

end

end A324035.P4342496737479259841

/-! ## A324035.P4132280783424940790

`A127824(n+3)%A167499(A348800(n))`
-/

namespace A324035.P4132280783424940790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127824 (n + 3)) (A167499 (A348800 n).toNat)

end

end A324035.P4132280783424940790

/-!
# A324036: Modified reduced Collatz map fs acting on positive odd integers.

The programs for A324036, the canonical program `A324036.P9540349400705870444` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324036 has offset 0).

The definition of A324036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324036.P9540349400705870444

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=5, a(2)=1, a(3)=11, a(4)=7, a(5)=17, a(6)=3, a(7)=23`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A324036

/-- `2*a(n-4)-a(n-8)` -/
def P9540349400705870444.Spec : Prop :=
  ∀ n, P9540349400705870444.a n = A324036 n

theorem P9540349400705870444.correct : P9540349400705870444.Spec := by
  intro n
  simp only [A324036]

end A324036

/-! ## A324036.P15615028323029893191

`ogf((1+5x+x^2+11x^3+5x^4+7x^5+x^6+x^7)/(1-2x^4+x^8))`
-/

namespace A324036.P15615028323029893191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 1, 11, 5, 7, 1, 1] [1, 0, 0, 0, -2, 0, 0, 0, 1] n

end

end A324036.P15615028323029893191

namespace A324036

/-- `ogf((1+5x+x^2+11x^3+5x^4+7x^5+x^6+x^7)/(1-2x^4+x^8))` -/
def P15615028323029893191.Spec : Prop :=
  ∀ n, P15615028323029893191.a n = A324036 n

end A324036

/-! ## A324036.P7752636027906355228

`2*A324245(n)+1`
-/

namespace A324036.P7752636027906355228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324245 n + 1

end

end A324036.P7752636027906355228

namespace A324036

/-- `2*A324245(n)+1` -/
def P7752636027906355228.Spec : Prop :=
  ∀ n, P7752636027906355228.a n = A324036 n

end A324036

/-! ## A324036.P4368984342640779642

`2*(A349414(n)+n)+1`
-/

namespace A324036.P4368984342640779642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A349414 n + (n : ℤ)) + 1

end

end A324036.P4368984342640779642

namespace A324036

/-- `2*(A349414(n)+n)+1` -/
def P4368984342640779642.Spec : Prop :=
  ∀ n, P4368984342640779642.a n = A324036 n

end A324036

/-! ## A324036.P7423754640631585041

`A000265(A190621(n+2)+2*n)`
-/

namespace A324036.P7423754640631585041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A190621 (n + 2) + (2 * n : ℤ)).toNat

end

end A324036.P7423754640631585041

namespace A324036

/-- `A000265(A190621(n+2)+2*n)` -/
def P7423754640631585041.Spec : Prop :=
  ∀ n, P7423754640631585041.a n = A324036 n

end A324036

/-! ## A324036.P18024288437710589842

`A005408(A324245(n))`
-/

namespace A324036.P18024288437710589842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A324245 n).toNat

end

end A324036.P18024288437710589842

namespace A324036

/-- `A005408(A324245(n))` -/
def P18024288437710589842.Spec : Prop :=
  ∀ n, P18024288437710589842.a n = A324036 n

end A324036

/-! ## A324036.P15224403317572524132

`A146535(A006368(n+1))`
-/

namespace A324036.P15224403317572524132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (A006368 (n + 1)).toNat

end

end A324036.P15224403317572524132

namespace A324036

/-- `A146535(A006368(n+1))` -/
def P15224403317572524132.Spec : Prop :=
  ∀ n, P15224403317572524132.a n = A324036 n

end A324036

/-! ## A324036.P12999938078820663424

`A004273(A324245(n)+1)`
-/

namespace A324036.P12999938078820663424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A324245 n + 1).toNat

end

end A324036.P12999938078820663424

namespace A324036

/-- `A004273(A324245(n)+1)` -/
def P12999938078820663424.Spec : Prop :=
  ∀ n, P12999938078820663424.a n = A324036 n

end A324036

/-! ## A324036.P15989095152111543138

`A146535(A342131(n)+1)`
-/

namespace A324036.P15989095152111543138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (A342131 n + 1).toNat

end

end A324036.P15989095152111543138

namespace A324036

/-- `A146535(A342131(n)+1)` -/
def P15989095152111543138.Spec : Prop :=
  ∀ n, P15989095152111543138.a n = A324036 n

end A324036

/-! ## A324036.P6495313140166440471

`or(1, A160016(lcm(2, n)+n%2))`
-/

namespace A324036.P6495313140166440471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A160016 (Nat.lcm 2 n + n % 2))

end

end A324036.P6495313140166440471

namespace A324036

/-- `or(1, A160016(lcm(2, n)+n%2))` -/
def P6495313140166440471.Spec : Prop :=
  ∀ n, P6495313140166440471.a n = A324036 n

end A324036

/-! ## A324036.P3962268422777746750

`A139391(A047544(n+1))`
-/

namespace A324036.P3962268422777746750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (A047544 (n + 1)).toNat

end

end A324036.P3962268422777746750

namespace A324036

/-- `A139391(A047544(n+1))` -/
def P3962268422777746750.Spec : Prop :=
  ∀ n, P3962268422777746750.a n = A324036 n

end A324036

/-! ## A324036.P7533836396094969988

`A060819(xor(-(2*(n+2)/gcd(4, n)), -2)+n)`
-/

namespace A324036.P7533836396094969988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (Int.xor (SequenceMachineLib.roundAway (-(2 * ((n + 2 : ℚ) / (Nat.gcd 4 n : ℚ))))) (-2) + (n : ℤ)).toNat

end

end A324036.P7533836396094969988

namespace A324036

/-- `A060819(xor(-(2*(n+2)/gcd(4, n)), -2)+n)` -/
def P7533836396094969988.Spec : Prop :=
  ∀ n, P7533836396094969988.a n = A324036 n

end A324036

/-! ## A324036.P10584618372570319819

`A214392(A065171(n+1)+n)`
-/

namespace A324036.P10584618372570319819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (A065171 (n + 1) + (n : ℤ)).toNat

end

end A324036.P10584618372570319819

namespace A324036

/-- `A214392(A065171(n+1)+n)` -/
def P10584618372570319819.Spec : Prop :=
  ∀ n, P10584618372570319819.a n = A324036 n

end A324036

/-! ## A324036.P9545016695220144845

`A272071(A014682(A006370(A014682(2*n+1))))`
-/

namespace A324036.P9545016695220144845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272071 (A014682 (A006370 (A014682 (2 * n + 1)).toNat).toNat).toNat

end

end A324036.P9545016695220144845

namespace A324036

/-- `A272071(A014682(A006370(A014682(2*n+1))))` -/
def P9545016695220144845.Spec : Prop :=
  ∀ n, P9545016695220144845.a n = A324036 n

end A324036

/-!
# A324038: Irregular triangle T read by rows: Row n gives the vertex labels of level n of the tree related to the modified reduced Collatz map A324036.

The programs for A324038, there is no canonical definition to state claims against.
-/

/-! ## A324038.P17301732417729262650

`2*A324246(n)+1`
-/

namespace A324038.P17301732417729262650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324246 n + 1

end

end A324038.P17301732417729262650

/-! ## A324038.P7886808199731408973

`or(1, 2*A324246(2*n-n))`
-/

namespace A324038.P7886808199731408973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A324246 (2 * n - n))

end

end A324038.P7886808199731408973

/-! ## A324038.P2768022200904950049

`or(2*A324246(n), A001187(C(2, n)))`
-/

namespace A324038.P2768022200904950049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A324246 n) (A001187 (Nat.choose 2 n))

end

end A324038.P2768022200904950049

/-! ## A324038.P17381401632608065046

`or(2*A324246(n), A275972(C(2, n)))`
-/

namespace A324038.P17381401632608065046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A324246 n) (A275972 (Nat.choose 2 n))

end

end A324038.P17381401632608065046

/-! ## A324038.P15620184000897623785

`xor(2*A324246(n), A000009(C(2, n)))`
-/

namespace A324038.P15620184000897623785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A324246 n) (A000009 (Nat.choose 2 n))

end

end A324038.P15620184000897623785

/-! ## A324038.P7905351048060377253

`xor(2*A324246(n), A007318(C(2, n)))`
-/

namespace A324038.P7905351048060377253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A324246 n) (A007318 (Nat.choose 2 n))

end

end A324038.P7905351048060377253

/-! ## A324038.P18208665795564027407

`or(2*A324246(n), A007318(C(3, n)))`
-/

namespace A324038.P18208665795564027407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A324246 n) (A007318 (Nat.choose 3 n))

end

end A324038.P18208665795564027407

/-!
# A324039: Row lengths of the irregular triangles A324038 and A324246.

The programs for A324039, there is no canonical definition to state claims against.
-/

/-! ## A324039.P6880334746302946233

`A321405(n+1)+A302984(n+2)`
-/

namespace A324039.P6880334746302946233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321405 (n + 1) + A302984 (n + 2)

end

end A324039.P6880334746302946233

/-! ## A324039.P14988203546001310155

`A238886(A137734(n)+A039900(n))`
-/

namespace A324039.P14988203546001310155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238886 (A137734 n + A039900 n).toNat

end

end A324039.P14988203546001310155

/-! ## A324039.P13227350704774001353

`A089867(A018138(n)-A002264(n))`
-/

namespace A324039.P13227350704774001353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A018138 n - A002264 n).toNat

end

end A324039.P13227350704774001353

/-! ## A324039.P16931540652177052781

`A182984(n)+A001221(A056553(2*(n+1)))`
-/

namespace A324039.P16931540652177052781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182984 n + A001221 (A056553 (2 * (n + 1))).toNat

end

end A324039.P16931540652177052781

/-! ## A324039.P2268716251206665055

`A120887(A212322(n+1))`
-/

namespace A324039.P2268716251206665055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120887 (A212322 (n + 1)).toNat

end

end A324039.P2268716251206665055

/-!
# A324042: Number of triangular regions into which a figure made up of a row of n adjacent congruent rectangles is divided upon drawing diagonals of all possible rectangles.

The programs for A324042, there is no canonical definition to state claims against.
-/

/-! ## A324042.P8544749661319167989

`A177719(n+2)+2*(n+2)`
-/

namespace A324042.P8544749661319167989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177719 (n + 2) + (2 * (n + 2) : ℤ)

end

end A324042.P8544749661319167989

/-! ## A324042.P8331541066942916404

`A306302(n+1)-A324043(n+1)`
-/

namespace A324042.P8331541066942916404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 (n + 1) - A324043 (n + 1)

end

end A324042.P8331541066942916404

/-! ## A324042.P3790348696160076752

`2*(A331761(n+1)+∑[A005843(n+1)])`
-/

namespace A324042.P3790348696160076752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A331761 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324042.P3790348696160076752

/-! ## A324042.P10345251744241647386

`∑[Δ[A177719(n+1)]+2]+2`
-/

namespace A324042.P10345251744241647386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177719 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A324042.P10345251744241647386

/-! ## A324042.P8839605854636336515

`A004277(n+1)+A177719(n+2)+2`
-/

namespace A324042.P8839605854636336515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + (A177719 (n + 2) + 2)

end

end A324042.P8839605854636336515

/-! ## A324042.P13765366064288632904

`A005843(n+1)+A177719(n+2)+2`
-/

namespace A324042.P13765366064288632904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A177719 (n + 2) + 2)

end

end A324042.P13765366064288632904

/-! ## A324042.P7481899642336813529

`A062545(n+1)+A177719(n+2)-1`
-/

namespace A324042.P7481899642336813529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (n + 1) + (A177719 (n + 2) - 1)

end

end A324042.P7481899642336813529

/-! ## A324042.P14491142158106958691

`A115005(n+2)+n+1-A324043(n+1)`
-/

namespace A324042.P14491142158106958691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115005 (n + 2) + ((n + 1 : ℤ) - A324043 (n + 1))

end

end A324042.P14491142158106958691

/-! ## A324042.P13293369974116111443

`2*(A115005(n+2)-A159065(n+2))`
-/

namespace A324042.P13293369974116111443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A115005 (n + 2) - A159065 (n + 2))

end

end A324042.P13293369974116111443

/-! ## A324042.P17912961969075310855

`A141255(n+2)-2*A159065(n+2)`
-/

namespace A324042.P17912961969075310855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 2) - 2 * A159065 (n + 2)

end

end A324042.P17912961969075310855

/-! ## A324042.P15399579094384611986

`2*(A331761(n+1)+A005843(∑[n+1]))`
-/

namespace A324042.P15399579094384611986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A331761 (n + 1) + A005843 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A324042.P15399579094384611986

/-!
# A324043: Number of quadrilateral regions into which a figure made up of a row of n adjacent congruent rectangles is divided upon drawing diagonals of all possible rectangles.

The programs for A324043, there is no canonical definition to state claims against.
-/

/-! ## A324043.P2783476424799997516

`A306302(n+1)-A324042(n+1)`
-/

namespace A324043.P2783476424799997516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 (n + 1) - A324042 (n + 1)

end

end A324043.P2783476424799997516

/-! ## A324043.P17682414777470514763

`A115005(n+2)+n+1-A324042(n+1)`
-/

namespace A324043.P17682414777470514763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115005 (n + 2) + ((n + 1 : ℤ) - A324042 (n + 1))

end

end A324043.P17682414777470514763

/-! ## A324043.P5797581417914670898

`A306302(n+1)-(A004277(n+1)+A177719(n+2)+2)`
-/

namespace A324043.P5797581417914670898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 (n + 1) - (A004277 (n + 1) + (A177719 (n + 2) + 2))

end

end A324043.P5797581417914670898

/-! ## A324043.P9932364332829253601

`A306302(n+1)-(A062545(n+1)+A177719(n+2)-1)`
-/

namespace A324043.P9932364332829253601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 (n + 1) - (A062545 (n + 1) + (A177719 (n + 2) - 1))

end

end A324043.P9932364332829253601

/-! ## A324043.P14429263464238419907

`2*A159065(n+2)-A290131(n+2)`
-/

namespace A324043.P14429263464238419907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159065 (n + 2) - A290131 (n + 2)

end

end A324043.P14429263464238419907

/-! ## A324043.P8308423707677433087

`A159065(n+2)+A290132(n+2)-A114043(n+2)`
-/

namespace A324043.P8308423707677433087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159065 (n + 2) + (A290132 (n + 2) - A114043 (n + 2))

end

end A324043.P8308423707677433087

/-! ## A324043.P13317605100708164655

`A333276(n+1)%A306302(n+1)`
-/

namespace A324043.P13317605100708164655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333276 (n + 1)) (A306302 (n + 1))

end

end A324043.P13317605100708164655

/-!
# A324044: a(n) = A003958(n) - A033879(n).

The programs for A324044, the canonical program `A324044.P16013423005150912487` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324044 has offset 1).

The definition of A324044 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324044.P16013423005150912487

`A003958(n+1)-A033879(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A324044

/-- `A003958(n+1)-A033879(n+1)` -/
def P16013423005150912487.Spec : Prop :=
  ∀ n, P16013423005150912487.a n = A324044 (n + 1)

theorem P16013423005150912487.correct : P16013423005150912487.Spec := by
  intro n
  simp only [A324044, Nat.add_sub_cancel]

end A324044

/-! ## A324044.P12298358309983767262

`A003958(n+1)-(2*(n+1)-∑{d}[n+1, #])`
-/

namespace A324044.P12298358309983767262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) - ((2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A324044.P12298358309983767262

namespace A324044

/-- `A003958(n+1)-(2*(n+1)-∑{d}[n+1, #])` -/
def P12298358309983767262.Spec : Prop :=
  ∀ n, P12298358309983767262.a n = A324044 (n + 1)

end A324044

/-! ## A324044.P8427446356489163816

`A033880(n+1)+A003958(n+1)`
-/

namespace A324044.P8427446356489163816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A003958 (n + 1)

end

end A324044.P8427446356489163816

namespace A324044

/-- `A033880(n+1)+A003958(n+1)` -/
def P8427446356489163816.Spec : Prop :=
  ∀ n, P8427446356489163816.a n = A324044 (n + 1)

theorem P8427446356489163816.correct : P8427446356489163816.Spec := by
  intro n
  simp only [A324044, Nat.add_sub_cancel, A324044.P8427446356489163816.a, A324044.P16013423005150912487.a, A003958, A003958.P196685604458257440.a, A033879, A033879.P5965131822542929609.a, A033880, A033880.P6005875780263802708.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A120007, A120007.P17212889191585270917.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324044

/-! ## A324044.P16278489652377505911

`A001065(n+1)-A322582(n+1)`
-/

namespace A324044.P16278489652377505911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A322582 (n + 1)

end

end A324044.P16278489652377505911

namespace A324044

/-- `A001065(n+1)-A322582(n+1)` -/
def P16278489652377505911.Spec : Prop :=
  ∀ n, P16278489652377505911.a n = A324044 (n + 1)

theorem P16278489652377505911.correct : P16278489652377505911.Spec := by
  intro n
  simp only [A324044, Nat.add_sub_cancel, A324044.P16278489652377505911.a, A324044.P16013423005150912487.a, A001065, A001065.P4097147489331274860.a, A003958, A003958.P196685604458257440.a, A033879, A033879.P5965131822542929609.a, A322582, A322582.P8560399753878851377.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A120007, A120007.P17212889191585270917.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324044

/-! ## A324044.P6600633522550960188

`A348975(n+1)-A211991(n+1)`
-/

namespace A324044.P6600633522550960188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348975 (n + 1) - A211991 (n + 1)

end

end A324044.P6600633522550960188

namespace A324044

/-- `A348975(n+1)-A211991(n+1)` -/
def P6600633522550960188.Spec : Prop :=
  ∀ n, P6600633522550960188.a n = A324044 (n + 1)

theorem P6600633522550960188.correct : P6600633522550960188.Spec := by
  intro n
  simp only [A324044, Nat.add_sub_cancel, A324044.P6600633522550960188.a, A324044.P16013423005150912487.a, A003958, A003958.P196685604458257440.a, A033879, A033879.P5965131822542929609.a, A211991, A211991.P15084257827643114560.a, A348975, A348975.P14334171170777144493.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A120007, A120007.P17212889191585270917.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324044

/-! ## A324044.P9624506392795143487

`A001065(n+1)+A003958(n+1)-(n+1)`
-/

namespace A324044.P9624506392795143487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A003958 (n + 1) - (n + 1 : ℤ))

end

end A324044.P9624506392795143487

namespace A324044

/-- `A001065(n+1)+A003958(n+1)-(n+1)` -/
def P9624506392795143487.Spec : Prop :=
  ∀ n, P9624506392795143487.a n = A324044 (n + 1)

theorem P9624506392795143487.correct : P9624506392795143487.Spec := by
  intro n
  simp only [A324044, Nat.add_sub_cancel, A324044.P9624506392795143487.a, A324044.P16013423005150912487.a, A001065, A001065.P4097147489331274860.a, A003958, A003958.P196685604458257440.a, A033879, A033879.P5965131822542929609.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A120007, A120007.P17212889191585270917.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324044

/-! ## A324044.P9276192318460610895

`A003958(n+1)+A345001(n+1)-A003415(n+1)`
-/

namespace A324044.P9276192318460610895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + (A345001 (n + 1) - A003415 (n + 1))

end

end A324044.P9276192318460610895

namespace A324044

/-- `A003958(n+1)+A345001(n+1)-A003415(n+1)` -/
def P9276192318460610895.Spec : Prop :=
  ∀ n, P9276192318460610895.a n = A324044 (n + 1)

theorem P9276192318460610895.correct : P9276192318460610895.Spec := by
  intro n
  simp only [A324044, Nat.add_sub_cancel, A324044.P9276192318460610895.a, A324044.P16013423005150912487.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003958, A003958.P196685604458257440.a, A033879, A033879.P5965131822542929609.a, A345001, A345001.P11556338326385216766.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A168036, A168036.P2098310487666722677.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A120007, A120007.P17212889191585270917.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324044

/-! ## A324044.P247163274486361489

`A003958(n+1)+A323910(n+1)-A323911(n+1)`
-/

namespace A324044.P247163274486361489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + (A323910 (n + 1) - A323911 (n + 1))

end

end A324044.P247163274486361489

namespace A324044

/-- `A003958(n+1)+A323910(n+1)-A323911(n+1)` -/
def P247163274486361489.Spec : Prop :=
  ∀ n, P247163274486361489.a n = A324044 (n + 1)

end A324044

/-! ## A324044.P10972244391151149384

`A345001(n+1)-(A322582(n+1)+A168036(n+1))`
-/

namespace A324044.P10972244391151149384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345001 (n + 1) - (A322582 (n + 1) + A168036 (n + 1))

end

end A324044.P10972244391151149384

namespace A324044

/-- `A345001(n+1)-(A322582(n+1)+A168036(n+1))` -/
def P10972244391151149384.Spec : Prop :=
  ∀ n, P10972244391151149384.a n = A324044 (n + 1)

theorem P10972244391151149384.correct : P10972244391151149384.Spec := by
  intro n
  simp only [A324044, Nat.add_sub_cancel, A324044.P10972244391151149384.a, A324044.P16013423005150912487.a, A003958, A003958.P196685604458257440.a, A033879, A033879.P5965131822542929609.a, A168036, A168036.P2098310487666722677.a, A322582, A322582.P8560399753878851377.a, A345001, A345001.P11556338326385216766.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A120007, A120007.P17212889191585270917.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324044

/-! ## A324044.P17944324075282410525

`A348507(n+1)-(A348029(n+1)+A322582(n+1))`
-/

namespace A324044.P17944324075282410525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - (A348029 (n + 1) + A322582 (n + 1))

end

end A324044.P17944324075282410525

namespace A324044

/-- `A348507(n+1)-(A348029(n+1)+A322582(n+1))` -/
def P17944324075282410525.Spec : Prop :=
  ∀ n, P17944324075282410525.a n = A324044 (n + 1)

theorem P17944324075282410525.correct : P17944324075282410525.Spec := by
  intro n
  simp only [A324044, Nat.add_sub_cancel, A324044.P17944324075282410525.a, A324044.P16013423005150912487.a, A003958, A003958.P196685604458257440.a, A033879, A033879.P5965131822542929609.a, A322582, A322582.P8560399753878851377.a, A348029, A348029.P15301953817482989203.a, A348507, A348507.P8468116905144779811.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A014963, A014963.P5975177236000282614.a, A120007, A120007.P17212889191585270917.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P2815951119682625865.f1, A166142.P2815951119682625865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324044

/-! ## A324044.P2365999270026495558

`A000203(n+1)-A322582(2*(n+1))`
-/

namespace A324044.P2365999270026495558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A322582 (2 * (n + 1))

end

end A324044.P2365999270026495558

namespace A324044

/-- `A000203(n+1)-A322582(2*(n+1))` -/
def P2365999270026495558.Spec : Prop :=
  ∀ n, P2365999270026495558.a n = A324044 (n + 1)

end A324044

/-!
# A324045: a(n) = A000010(n) - A106316(n).

The programs for A324045, the canonical program `A324045.P1593717203067298836` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324045 has offset 1).

The definition of A324045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324045.P983617944287077279

`A000010(n+1)-A106316(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324045.P983617944287077279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A106316 (n + 1)

end

end A324045.P983617944287077279

namespace A324045

/-- `A000010(n+1)-A106316(n+1)` -/
def P983617944287077279.Spec : Prop :=
  ∀ n, P983617944287077279.a n = A324045 (n + 1)

end A324045

/-! ## A324045.P16049052789454910758

`A324047(n+1)-A051612(n+1)`
-/

namespace A324045.P16049052789454910758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324047 (n + 1) - A051612 (n + 1)

end

end A324045.P16049052789454910758

namespace A324045

/-- `A324047(n+1)-A051612(n+1)` -/
def P16049052789454910758.Spec : Prop :=
  ∀ n, P16049052789454910758.a n = A324045 (n + 1)

theorem P16049052789454910758.correct : P16049052789454910758.Spec := by
  intro n
  simp only [A324045, Nat.add_sub_cancel, A324045.P16049052789454910758.a, A324045.P1593717203067298836.a, A033879, A033879.P5965131822542929609.a, A051612, A051612.P4135239823752248514.a, A053158, A053158.P11533641159092355549.a, A324047, A324047.P16299384145559739800.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324045

/-! ## A324045.P8967002152022167477

`A000010(n+1)-A106315(n+1)%(n+1)`
-/

namespace A324045.P8967002152022167477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - Int.tmod (A106315 (n + 1)) (n + 1 : ℤ)

end

end A324045.P8967002152022167477

namespace A324045

/-- `A000010(n+1)-A106315(n+1)%(n+1)` -/
def P8967002152022167477.Spec : Prop :=
  ∀ n, P8967002152022167477.a n = A324045 (n + 1)

theorem P8967002152022167477.correct : P8967002152022167477.Spec := by
  intro n
  simp only [A324045, Nat.add_sub_cancel, A324045.P8967002152022167477.a, A324045.P1593717203067298836.a, A000010, A000010.P4673923239450215316.a, A033879, A033879.P5965131822542929609.a, A053158, A053158.P11533641159092355549.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A324047, A324047.P16299384145559739800.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324045

/-! ## A324045.P613400631673844752

`A000010(n+1)+A324047(n+1)-A000203(n+1)`
-/

namespace A324045.P613400631673844752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A324047 (n + 1) - A000203 (n + 1))

end

end A324045.P613400631673844752

namespace A324045

/-- `A000010(n+1)+A324047(n+1)-A000203(n+1)` -/
def P613400631673844752.Spec : Prop :=
  ∀ n, P613400631673844752.a n = A324045 (n + 1)

theorem P613400631673844752.correct : P613400631673844752.Spec := by
  intro n
  simp only [A324045, Nat.add_sub_cancel, A324045.P613400631673844752.a, A324045.P1593717203067298836.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P5965131822542929609.a, A053158, A053158.P11533641159092355549.a, A324047, A324047.P16299384145559739800.a, A003557, A003557.P6364735403900941810.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324045

/-! ## A324045.P17127001581499567058

`A324047(n+1)-(A046520(n+1)+A000005(n+1))`
-/

namespace A324045.P17127001581499567058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324047 (n + 1) - (A046520 (n + 1) + A000005 (n + 1))

end

end A324045.P17127001581499567058

namespace A324045

/-- `A324047(n+1)-(A046520(n+1)+A000005(n+1))` -/
def P17127001581499567058.Spec : Prop :=
  ∀ n, P17127001581499567058.a n = A324045 (n + 1)

theorem P17127001581499567058.correct : P17127001581499567058.Spec := by
  intro n
  simp only [A324045, Nat.add_sub_cancel, A324045.P17127001581499567058.a, A324045.P1593717203067298836.a, A000005, A000005.P16091521709108585461.a, A033879, A033879.P5965131822542929609.a, A046520, A046520.P408125302691526791.a, A053158, A053158.P11533641159092355549.a, A324047, A324047.P16299384145559739800.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A003557, A003557.P6364735403900941810.a, A051731, A051731.P11318043630102858095.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000007, A000007.P6599383543502402472.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324045

/-! ## A324045.P7458921710595833971

`A324047(n+1)-(A051953(n+1)+A001065(n+1))`
-/

namespace A324045.P7458921710595833971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324047 (n + 1) - (A051953 (n + 1) + A001065 (n + 1))

end

end A324045.P7458921710595833971

namespace A324045

/-- `A324047(n+1)-(A051953(n+1)+A001065(n+1))` -/
def P7458921710595833971.Spec : Prop :=
  ∀ n, P7458921710595833971.a n = A324045 (n + 1)

theorem P7458921710595833971.correct : P7458921710595833971.Spec := by
  intro n
  simp only [A324045, Nat.add_sub_cancel, A324045.P7458921710595833971.a, A324045.P1593717203067298836.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P5965131822542929609.a, A051953, A051953.P11179276897610979764.a, A053158, A053158.P11533641159092355549.a, A324047, A324047.P16299384145559739800.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324045

/-! ## A324045.P1593717203067298836

`A033879(n+1)+A324047(n+1)-A053158(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324045

/-- `A033879(n+1)+A324047(n+1)-A053158(n+1)` -/
def P1593717203067298836.Spec : Prop :=
  ∀ n, P1593717203067298836.a n = A324045 (n + 1)

theorem P1593717203067298836.correct : P1593717203067298836.Spec := by
  intro n
  simp only [A324045, Nat.add_sub_cancel]

end A324045

/-! ## A324045.P6897566051078093945

`A065387(n+1)+A324047(n+1)-A074400(n+1)`
-/

namespace A324045.P6897566051078093945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) + (A324047 (n + 1) - A074400 (n + 1))

end

end A324045.P6897566051078093945

namespace A324045

/-- `A065387(n+1)+A324047(n+1)-A074400(n+1)` -/
def P6897566051078093945.Spec : Prop :=
  ∀ n, P6897566051078093945.a n = A324045 (n + 1)

theorem P6897566051078093945.correct : P6897566051078093945.Spec := by
  intro n
  simp only [A324045, Nat.add_sub_cancel, A324045.P6897566051078093945.a, A324045.P1593717203067298836.a, A033879, A033879.P5965131822542929609.a, A053158, A053158.P11533641159092355549.a, A065387, A065387.P11284875715279330998.a, A074400, A074400.P16312391460013478761.a, A324047, A324047.P16299384145559739800.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324045

/-! ## A324045.P8506734706862397861

`A324047(n+1)-(A064987(n+1)/(n+1)-A000010(n+1))`
-/

namespace A324045.P8506734706862397861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324047 (n + 1) : ℚ) - ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A000010 (n + 1) : ℚ))

end

end A324045.P8506734706862397861

namespace A324045

/-- `A324047(n+1)-(A064987(n+1)/(n+1)-A000010(n+1))` -/
def P8506734706862397861.Spec : Prop :=
  ∀ n, P8506734706862397861.a n = (A324045 (n + 1) : ℚ)

theorem P8506734706862397861.correct : P8506734706862397861.Spec := by
  intro n
  simp only [A324045, Nat.add_sub_cancel, A324045.P8506734706862397861.a, A324045.P1593717203067298836.a, A000010, A000010.P4673923239450215316.a, A033879, A033879.P5965131822542929609.a, A053158, A053158.P11533641159092355549.a, A064987, A064987.P14181610018234257040.a, A324047, A324047.P16299384145559739800.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324045

/-! ## A324045.P6882199692352199757

`Δ[A002088(n)]-A106316(n+1)`
-/

namespace A324045.P6882199692352199757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A106316 (n + 1)

end

end A324045.P6882199692352199757

namespace A324045

/-- `Δ[A002088(n)]-A106316(n+1)` -/
def P6882199692352199757.Spec : Prop :=
  ∀ n, P6882199692352199757.a n = A324045 (n + 1)

end A324045

/-!
# A324046: a(n) = gcd(n, A106316(n)).

The programs for A324046, the canonical program `A324046.P17445629398137156881` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324046 has offset 1).

The definition of A324046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324046.P3889551849928001328

`gcd(n+1, A106316(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324046.P3889551849928001328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A106316 (n + 1))

end

end A324046.P3889551849928001328

namespace A324046

/-- `gcd(n+1, A106316(n+1))` -/
def P3889551849928001328.Spec : Prop :=
  ∀ n, (P3889551849928001328.a n : ℤ) = A324046 (n + 1)

end A324046

/-! ## A324046.P5313471041834513641

`gcd(n+1, A106315(n+1))`
-/

namespace A324046.P5313471041834513641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A106315 (n + 1))

end

end A324046.P5313471041834513641

namespace A324046

/-- `gcd(n+1, A106315(n+1))` -/
def P5313471041834513641.Spec : Prop :=
  ∀ n, (P5313471041834513641.a n : ℤ) = A324046 (n + 1)

end A324046

/-! ## A324046.P17445629398137156881

`gcd(A324047(n+1)+A094471(n+1), A153152(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324046

/-- `gcd(A324047(n+1)+A094471(n+1), A153152(n))` -/
def P17445629398137156881.Spec : Prop :=
  ∀ n, (P17445629398137156881.a n : ℤ) = A324046 (n + 1)

theorem P17445629398137156881.correct : P17445629398137156881.Spec := by
  intro n
  simp only [A324046, Nat.add_sub_cancel]

end A324046

/-! ## A324046.P4043489759874349320

`gcd(A106315(A266285(2*n)), A266285(2*n))`
-/

namespace A324046.P4043489759874349320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106315 (A266285 (2 * n)).toNat) (A266285 (2 * n))

end

end A324046.P4043489759874349320

namespace A324046

/-- `gcd(A106315(A266285(2*n)), A266285(2*n))` -/
def P4043489759874349320.Spec : Prop :=
  ∀ n, (P4043489759874349320.a n : ℤ) = A324046 (n + 1)

end A324046

/-! ## A324046.P14664410230454021594

`gcd(n+1, A317208(A004111(n)))`
-/

namespace A324046.P14664410230454021594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A317208 (A004111 n).toNat)

end

end A324046.P14664410230454021594

namespace A324046

/-- `gcd(n+1, A317208(A004111(n)))` -/
def P14664410230454021594.Spec : Prop :=
  ∀ n, (P14664410230454021594.a n : ℤ) = A324046 (n + 1)

end A324046

/-!
# A324047: a(n) = A000203(n) - A106316(n).

The programs for A324047, the canonical program `A324047.P16299384145559739800` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324047 has offset 1).

The definition of A324047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324047.P3705431608452260165

`A000203(n+1)-A106316(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324047.P3705431608452260165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A106316 (n + 1)

end

end A324047.P3705431608452260165

namespace A324047

/-- `A000203(n+1)-A106316(n+1)` -/
def P3705431608452260165.Spec : Prop :=
  ∀ n, P3705431608452260165.a n = A324047 (n + 1)

end A324047

/-! ## A324047.P8982927491039642790

`A000203(n+1)-(∑{d}[n+1, n+1+#]%∑{d}[n+1, #])%(n+1)`
-/

namespace A324047.P8982927491039642790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (((∑ d ∈ Nat.divisors (f1 n), (n + 1 + d)) % (∑ d ∈ Nat.divisors (f2 n), d) % (n + 1) : ℕ) : ℤ)

end

end A324047.P8982927491039642790

namespace A324047

/-- `A000203(n+1)-(∑{d}[n+1, n+1+#]%∑{d}[n+1, #])%(n+1)` -/
def P8982927491039642790.Spec : Prop :=
  ∀ n, P8982927491039642790.a n = A324047 (n + 1)

end A324047

/-! ## A324047.P16081164830438493773

`A324045(n+1)+A051612(n+1)`
-/

namespace A324047.P16081164830438493773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324045 (n + 1) + A051612 (n + 1)

end

end A324047.P16081164830438493773

namespace A324047

/-- `A324045(n+1)+A051612(n+1)` -/
def P16081164830438493773.Spec : Prop :=
  ∀ n, P16081164830438493773.a n = A324047 (n + 1)

theorem P16081164830438493773.correct : P16081164830438493773.Spec := by
  intro n
  simp only [A324047, Nat.add_sub_cancel, A324047.P16081164830438493773.a, A324047.P16299384145559739800.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A324045, A324045.P1593717203067298836.a, A000010, A000010.P4673923239450215316.a, A033879, A033879.P5965131822542929609.a, A053158, A053158.P11533641159092355549.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324047

/-! ## A324047.P16299384145559739800

`A000203(n+1)-A106315(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A324047

/-- `A000203(n+1)-A106315(n+1)%(n+1)` -/
def P16299384145559739800.Spec : Prop :=
  ∀ n, P16299384145559739800.a n = A324047 (n + 1)

theorem P16299384145559739800.correct : P16299384145559739800.Spec := by
  intro n
  simp only [A324047, Nat.add_sub_cancel]

end A324047

/-! ## A324047.P16881815378450341056

`A048146(n+1)+A324045(n+1)+A098189(n+1)`
-/

namespace A324047.P16881815378450341056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + (A324045 (n + 1) + A098189 (n + 1))

end

end A324047.P16881815378450341056

namespace A324047

/-- `A048146(n+1)+A324045(n+1)+A098189(n+1)` -/
def P16881815378450341056.Spec : Prop :=
  ∀ n, P16881815378450341056.a n = A324047 (n + 1)

theorem P16881815378450341056.correct : P16881815378450341056.Spec := by
  intro n
  simp only [A324047, Nat.add_sub_cancel, A324047.P16881815378450341056.a, A324047.P16299384145559739800.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048146, A048146.P9985884013456677192.a, A098189, A098189.P4675613756573831951.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A324045, A324045.P1593717203067298836.a, A000010, A000010.P4673923239450215316.a, A033879, A033879.P5965131822542929609.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A053158, A053158.P11533641159092355549.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A384050, A384050.P7808103291810137926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324047

/-! ## A324047.P9612949271027064499

`A000203(n+1)+A324045(n+1)-A000010(n+1)`
-/

namespace A324047.P9612949271027064499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A324045 (n + 1) - A000010 (n + 1))

end

end A324047.P9612949271027064499

namespace A324047

/-- `A000203(n+1)+A324045(n+1)-A000010(n+1)` -/
def P9612949271027064499.Spec : Prop :=
  ∀ n, P9612949271027064499.a n = A324047 (n + 1)

theorem P9612949271027064499.correct : P9612949271027064499.Spec := by
  intro n
  simp only [A324047, Nat.add_sub_cancel, A324047.P9612949271027064499.a, A324047.P16299384145559739800.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A324045, A324045.P1593717203067298836.a, A003557, A003557.P6364735403900941810.a, A033879, A033879.P5965131822542929609.a, A053158, A053158.P11533641159092355549.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324047

/-! ## A324047.P14158443803343763690

`A324045(n+1)+A324048(n+1)-A051953(n+1)`
-/

namespace A324047.P14158443803343763690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324045 (n + 1) + (A324048 (n + 1) - A051953 (n + 1))

end

end A324047.P14158443803343763690

namespace A324047

/-- `A324045(n+1)+A324048(n+1)-A051953(n+1)` -/
def P14158443803343763690.Spec : Prop :=
  ∀ n, P14158443803343763690.a n = A324047 (n + 1)

theorem P14158443803343763690.correct : P14158443803343763690.Spec := by
  intro n
  simp only [A324047, Nat.add_sub_cancel, A324047.P14158443803343763690.a, A324047.P16299384145559739800.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A324045, A324045.P1593717203067298836.a, A324048, A324048.P2740531755121187895.a, A000010, A000010.P4673923239450215316.a, A033879, A033879.P5965131822542929609.a, A053158, A053158.P11533641159092355549.a, A083254, A083254.P7544960031424623367.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324047

/-! ## A324047.P6847836035616470350

`Δ[A160664(n)]-A106316(n+1)`
-/

namespace A324047.P6847836035616470350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A106316 (n + 1)

end

end A324047.P6847836035616470350

namespace A324047

/-- `Δ[A160664(n)]-A106316(n+1)` -/
def P6847836035616470350.Spec : Prop :=
  ∀ n, P6847836035616470350.a n = A324047 (n + 1)

end A324047

/-! ## A324047.P11329690981152770786

`A097012(n+1)-A106316(n+1)`
-/

namespace A324047.P11329690981152770786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097012 (n + 1) - A106316 (n + 1)

end

end A324047.P11329690981152770786

namespace A324047

/-- `A097012(n+1)-A106316(n+1)` -/
def P11329690981152770786.Spec : Prop :=
  ∀ n, P11329690981152770786.a n = A324047 (n + 1)

end A324047

/-! ## A324047.P13939968697403202986

`A245092(A005408(n))-A106316(n+1)`
-/

namespace A324047.P13939968697403202986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A005408 n).toNat - A106316 (n + 1)

end

end A324047.P13939968697403202986

namespace A324047

/-- `A245092(A005408(n))-A106316(n+1)` -/
def P13939968697403202986.Spec : Prop :=
  ∀ n, P13939968697403202986.a n = A324047 (n + 1)

end A324047

/-!
# A324048: a(n) = A000203(n) - A083254(n) = n + sigma(n) - 2*phi(n).

The programs for A324048, the canonical program `A324048.P2740531755121187895` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324048 has offset 1).

The definition of A324048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A083254(n+1)` (program `A324048.P2740531755121187895`, by `A324048.P2740531755121187895.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A324048.P18350421573889796273

`A051612(n+1)+A051953(n+1)`
-/

namespace A324048.P18350421573889796273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) + A051953 (n + 1)

end

end A324048.P18350421573889796273

namespace A324048

/-- `A051612(n+1)+A051953(n+1)` -/
def P18350421573889796273.Spec : Prop :=
  ∀ n, P18350421573889796273.a n = A324048 (n + 1)

theorem P18350421573889796273.correct : P18350421573889796273.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P18350421573889796273.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P2740531755121187895

`A000203(n+1)-A083254(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324048

/-- `A000203(n+1)-A083254(n+1)` -/
def P2740531755121187895.Spec : Prop :=
  ∀ n, P2740531755121187895.a n = A324048 (n + 1)

theorem P2740531755121187895.correct : P2740531755121187895.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel]

end A324048

/-! ## A324048.P7887916437134886841

`A297159(n+1)+2*A001065(n+1)`
-/

namespace A324048.P7887916437134886841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297159 (n + 1) + 2 * A001065 (n + 1)

end

end A324048.P7887916437134886841

namespace A324048

/-- `A297159(n+1)+2*A001065(n+1)` -/
def P7887916437134886841.Spec : Prop :=
  ∀ n, P7887916437134886841.a n = A324048 (n + 1)

theorem P7887916437134886841.correct : P7887916437134886841.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P7887916437134886841.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A083254, A083254.P7544960031424623367.a, A297159, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P1778848636564948011

`n+1+A000203(n+1)-2*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324048.P1778848636564948011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000203 (n + 1) - 2 * A000010 (n + 1)

end

end A324048.P1778848636564948011

namespace A324048

/-- `n+1+A000203(n+1)-2*A000010(n+1)` -/
def P1778848636564948011.Spec : Prop :=
  ∀ n, P1778848636564948011.a n = A324048 (n + 1)

theorem P1778848636564948011.correct : P1778848636564948011.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P1778848636564948011.a, A324048.P2740531755121187895.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A083254, A083254.P7544960031424623367.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P13995717107141489607

`∑{d}[n+1, #]-A083254(n+1)`
-/

namespace A324048.P13995717107141489607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A083254 (n + 1)

end

end A324048.P13995717107141489607

namespace A324048

/-- `∑{d}[n+1, #]-A083254(n+1)` -/
def P13995717107141489607.Spec : Prop :=
  ∀ n, P13995717107141489607.a n = A324048 (n + 1)

end A324048

/-! ## A324048.P3877570579317585053

`Δ[A160664(n)]-A083254(n+1)`
-/

namespace A324048.P3877570579317585053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083254 (n + 1)

end

end A324048.P3877570579317585053

namespace A324048

/-- `Δ[A160664(n)]-A083254(n+1)` -/
def P3877570579317585053.Spec : Prop :=
  ∀ n, P3877570579317585053.a n = A324048 (n + 1)

end A324048

/-! ## A324048.P12059733388890942325

`A228947(n+1)+A053158(n+1)`
-/

namespace A324048.P12059733388890942325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + A053158 (n + 1)

end

end A324048.P12059733388890942325

namespace A324048

/-- `A228947(n+1)+A053158(n+1)` -/
def P12059733388890942325.Spec : Prop :=
  ∀ n, P12059733388890942325.a n = A324048 (n + 1)

theorem P12059733388890942325.correct : P12059733388890942325.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P12059733388890942325.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A053158, A053158.P11533641159092355549.a, A083254, A083254.P7544960031424623367.a, A228947, A228947.P1027786129053480284.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P13024820277236039025

`A297159(n+1)+A091818(n+1)`
-/

namespace A324048.P13024820277236039025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297159 (n + 1) + A091818 (n + 1)

end

end A324048.P13024820277236039025

namespace A324048

/-- `A297159(n+1)+A091818(n+1)` -/
def P13024820277236039025.Spec : Prop :=
  ∀ n, P13024820277236039025.a n = A324048 (n + 1)

theorem P13024820277236039025.correct : P13024820277236039025.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P13024820277236039025.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A083254, A083254.P7544960031424623367.a, A091818, A091818.P1536144604709334989.a, A297159, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P3979679511597750518

`A351561(n+1)+A046520(n+1)`
-/

namespace A324048.P3979679511597750518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351561 (n + 1) + A046520 (n + 1)

end

end A324048.P3979679511597750518

namespace A324048

/-- `A351561(n+1)+A046520(n+1)` -/
def P3979679511597750518.Spec : Prop :=
  ∀ n, P3979679511597750518.a n = A324048 (n + 1)

theorem P3979679511597750518.correct : P3979679511597750518.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P3979679511597750518.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046520, A046520.P408125302691526791.a, A083254, A083254.P7544960031424623367.a, A351561, A351561.P9711075868512573755.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P3325688709511591541

`A051612(n+1)+A219428(n+1)+1`
-/

namespace A324048.P3325688709511591541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) + (A219428 (n + 1) + 1)

end

end A324048.P3325688709511591541

namespace A324048

/-- `A051612(n+1)+A219428(n+1)+1` -/
def P3325688709511591541.Spec : Prop :=
  ∀ n, P3325688709511591541.a n = A324048 (n + 1)

theorem P3325688709511591541.correct : P3325688709511591541.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P3325688709511591541.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A083254, A083254.P7544960031424623367.a, A219428, A219428.P9184341513320465947.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P7656834800542524235

`A001065(n+1)+2*A051953(n+1)`
-/

namespace A324048.P7656834800542524235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 2 * A051953 (n + 1)

end

end A324048.P7656834800542524235

namespace A324048

/-- `A001065(n+1)+2*A051953(n+1)` -/
def P7656834800542524235.Spec : Prop :=
  ∀ n, P7656834800542524235.a n = A324048 (n + 1)

theorem P7656834800542524235.correct : P7656834800542524235.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P7656834800542524235.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P4179103100508740713

`2*A051612(n+1)-A001065(n+1)`
-/

namespace A324048.P4179103100508740713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051612 (n + 1) - A001065 (n + 1)

end

end A324048.P4179103100508740713

namespace A324048

/-- `2*A051612(n+1)-A001065(n+1)` -/
def P4179103100508740713.Spec : Prop :=
  ∀ n, P4179103100508740713.a n = A324048 (n + 1)

theorem P4179103100508740713.correct : P4179103100508740713.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P4179103100508740713.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A051612, A051612.P4135239823752248514.a, A083254, A083254.P7544960031424623367.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P10442161125954193021

`2*A053158(n+1)-A033885(n+1)`
-/

namespace A324048.P10442161125954193021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053158 (n + 1) - A033885 (n + 1)

end

end A324048.P10442161125954193021

namespace A324048

/-- `2*A053158(n+1)-A033885(n+1)` -/
def P10442161125954193021.Spec : Prop :=
  ∀ n, P10442161125954193021.a n = A324048 (n + 1)

theorem P10442161125954193021.correct : P10442161125954193021.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P10442161125954193021.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033885, A033885.P621255430935931612.a, A053158, A053158.P11533641159092355549.a, A083254, A083254.P7544960031424623367.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P4421192655103431590

`A155085(n+1)-2*A000010(n+1)`
-/

namespace A324048.P4421192655103431590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - 2 * A000010 (n + 1)

end

end A324048.P4421192655103431590

namespace A324048

/-- `A155085(n+1)-2*A000010(n+1)` -/
def P4421192655103431590.Spec : Prop :=
  ∀ n, P4421192655103431590.a n = A324048 (n + 1)

theorem P4421192655103431590.correct : P4421192655103431590.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P4421192655103431590.a, A324048.P2740531755121187895.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A083254, A083254.P7544960031424623367.a, A155085, A155085.P2440965829929837208.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P1527204504968116296

`A051612(n+1)-A109606(n+1)+n`
-/

namespace A324048.P1527204504968116296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A109606 (n + 1) + (n : ℤ)

end

end A324048.P1527204504968116296

namespace A324048

/-- `A051612(n+1)-A109606(n+1)+n` -/
def P1527204504968116296.Spec : Prop :=
  ∀ n, P1527204504968116296.a n = A324048 (n + 1)

theorem P1527204504968116296.correct : P1527204504968116296.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P1527204504968116296.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A083254, A083254.P7544960031424623367.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P4855142333825830613

`∑{d}[n+1, A157658(#)*A224880((n+1)/#)]`
-/

namespace A324048.P4855142333825830613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A224880 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324048.P4855142333825830613

namespace A324048

/-- `∑{d}[n+1, A157658(#)*A224880((n+1)/#)]` -/
def P4855142333825830613.Spec : Prop :=
  ∀ n, P4855142333825830613.a n = A324048 (n + 1)

end A324048

/-! ## A324048.P14594948848879581408

`A000005(n+1)+A051953(n+1)+A046520(n+1)`
-/

namespace A324048.P14594948848879581408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A051953 (n + 1) + A046520 (n + 1))

end

end A324048.P14594948848879581408

namespace A324048

/-- `A000005(n+1)+A051953(n+1)+A046520(n+1)` -/
def P14594948848879581408.Spec : Prop :=
  ∀ n, P14594948848879581408.a n = A324048 (n + 1)

theorem P14594948848879581408.correct : P14594948848879581408.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P14594948848879581408.a, A324048.P2740531755121187895.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046520, A046520.P408125302691526791.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A003557, A003557.P6364735403900941810.a, A051731, A051731.P11318043630102858095.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000007, A000007.P6599383543502402472.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P11572631586293653586

`A000203(n+1)+A051953(n+1)-A000010(n+1)`
-/

namespace A324048.P11572631586293653586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A051953 (n + 1) - A000010 (n + 1))

end

end A324048.P11572631586293653586

namespace A324048

/-- `A000203(n+1)+A051953(n+1)-A000010(n+1)` -/
def P11572631586293653586.Spec : Prop :=
  ∀ n, P11572631586293653586.a n = A324048 (n + 1)

theorem P11572631586293653586.correct : P11572631586293653586.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P11572631586293653586.a, A324048.P2740531755121187895.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P10386417623260168950

`A001065(n+1)+A053158(n+1)-A000010(n+1)`
-/

namespace A324048.P10386417623260168950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A053158 (n + 1) - A000010 (n + 1))

end

end A324048.P10386417623260168950

namespace A324048

/-- `A001065(n+1)+A053158(n+1)-A000010(n+1)` -/
def P10386417623260168950.Spec : Prop :=
  ∀ n, P10386417623260168950.a n = A324048 (n + 1)

theorem P10386417623260168950.correct : P10386417623260168950.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P10386417623260168950.a, A324048.P2740531755121187895.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A053158, A053158.P11533641159092355549.a, A083254, A083254.P7544960031424623367.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-! ## A324048.P13944296998206650338

`A000203(n+1)+A297159(n+1)-A033879(n+1)`
-/

namespace A324048.P13944296998206650338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A297159 (n + 1) - A033879 (n + 1))

end

end A324048.P13944296998206650338

namespace A324048

/-- `A000203(n+1)+A297159(n+1)-A033879(n+1)` -/
def P13944296998206650338.Spec : Prop :=
  ∀ n, P13944296998206650338.a n = A324048 (n + 1)

theorem P13944296998206650338.correct : P13944296998206650338.Spec := by
  intro n
  simp only [A324048, Nat.add_sub_cancel, A324048.P13944296998206650338.a, A324048.P2740531755121187895.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P5965131822542929609.a, A083254, A083254.P7544960031424623367.a, A297159, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324048

/-!
# A324049: a(n) = A002487(A324051(n)).

The programs for A324049, the canonical program `A324049.P10386040346488594592` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324049 has offset 2).

The definition of A324049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324049.P10386040346488594592

`A002487(A324051(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324049

/-- `A002487(A324051(n+2))` -/
def P10386040346488594592.Spec : Prop :=
  ∀ n, P10386040346488594592.a n = A324049 (n + 2)

theorem P10386040346488594592.correct : P10386040346488594592.Spec := by
  intro n
  simp only [A324049, Nat.add_sub_cancel]

end A324049

/-! ## A324049.P12660238239810688915

`A283976(2*A324051(n+2))`
-/

namespace A324049.P12660238239810688915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * A324051 (n + 2)).toNat

end

end A324049.P12660238239810688915

namespace A324049

/-- `A283976(2*A324051(n+2))` -/
def P12660238239810688915.Spec : Prop :=
  ∀ n, P12660238239810688915.a n = A324049 (n + 2)

end A324049

/-! ## A324049.P492360866044929065

`A283976(lcm(2, A324051(n+2)))`
-/

namespace A324049.P492360866044929065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (Int.lcm 2 (A324051 (n + 2)))

end

end A324049.P492360866044929065

namespace A324049

/-- `A283976(lcm(2, A324051(n+2)))` -/
def P492360866044929065.Spec : Prop :=
  ∀ n, P492360866044929065.a n = A324049 (n + 2)

end A324049

/-! ## A324049.P13876476060423022577

`∑{d}[A324051(n+2), A317839(#)]`
-/

namespace A324049.P13876476060423022577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A324049.P13876476060423022577

namespace A324049

/-- `∑{d}[A324051(n+2), A317839(#)]` -/
def P13876476060423022577.Spec : Prop :=
  ∀ n, P13876476060423022577.a n = A324049 (n + 2)

end A324049

/-! ## A324049.P630919386512258344

`A002487(A106315(A156552(n+2)))`
-/

namespace A324049.P630919386512258344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A106315 (A156552 (n + 2)).toNat).toNat

end

end A324049.P630919386512258344

namespace A324049

/-- `A002487(A106315(A156552(n+2)))` -/
def P630919386512258344.Spec : Prop :=
  ∀ n, P630919386512258344.a n = A324049 (n + 2)

end A324049

/-!
# A324050: Numbers satisfying Korselt's criterion: squarefree numbers n such that for every prime divisor p of n, p-1 divides n-1.

The programs for A324050, the canonical program `A324050.P4688166954402356267` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324050 has offset 1).

The definition of A324050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6559 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324050.P2651736030814151165

`∪[A002997(n+1), A008578(n+1)]`
-/

namespace A324050.P2651736030814151165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324050.P2651736030814151165

namespace A324050

/-- `∪[A002997(n+1), A008578(n+1)]` -/
def P2651736030814151165.Spec : Prop :=
  ∀ n, (P2651736030814151165.a n : ℤ) = A324050 (n + 1)

end A324050

/-! ## A324050.P6787009709487784914

`filter[A087441(n+1), A008966(#)]`
-/

namespace A324050.P6787009709487784914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A324050.P6787009709487784914

namespace A324050

/-- `filter[A087441(n+1), A008966(#)]` -/
def P6787009709487784914.Spec : Prop :=
  ∀ n, P6787009709487784914.a n = A324050 (n + 1)

end A324050

/-! ## A324050.P10505997320952675427

`record[A007913(n+1)*A324290(n+1)]`
-/

namespace A324050.P10505997320952675427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A324290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324050.P10505997320952675427

namespace A324050

/-- `record[A007913(n+1)*A324290(n+1)]` -/
def P10505997320952675427.Spec : Prop :=
  ∀ n, P10505997320952675427.a n = A324050 (n + 1)

end A324050

/-! ## A324050.P4688166954402356267

`record[n+1-A318840(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324050

/-- `record[n+1-A318840(n+1)]` -/
def P4688166954402356267.Spec : Prop :=
  ∀ n, P4688166954402356267.a n = A324050 (n + 1)

theorem P4688166954402356267.correct : P4688166954402356267.Spec := by
  intro n
  simp only [A324050, Nat.add_sub_cancel]

end A324050

/-! ## A324050.P13155640233641147608

`filter[A087441(n+1), A323154(#)]`
-/

namespace A324050.P13155640233641147608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A324050.P13155640233641147608

namespace A324050

/-- `filter[A087441(n+1), A323154(#)]` -/
def P13155640233641147608.Spec : Prop :=
  ∀ n, P13155640233641147608.a n = A324050 (n + 1)

end A324050

/-! ## A324050.P11688706381786434370

`lt[A318840(n+1), 1]+1`
-/

namespace A324050.P11688706381786434370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318840 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324050.P11688706381786434370

namespace A324050

/-- `lt[A318840(n+1), 1]+1` -/
def P11688706381786434370.Spec : Prop :=
  ∀ n, (P11688706381786434370.a n : ℤ) = A324050 (n + 1)

end A324050

/-! ## A324050.P4114095575045803012

`record[lcm(A166123(n+2), A166333(n))]`
-/

namespace A324050.P4114095575045803012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166123 (n + 2)) (A166333 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324050.P4114095575045803012

namespace A324050

/-- `record[lcm(A166123(n+2), A166333(n))]` -/
def P4114095575045803012.Spec : Prop :=
  ∀ n, (P4114095575045803012.a n : ℤ) = A324050 (n + 1)

end A324050

/-! ## A324050.P14197227135241699869

`eq[1, A286491(A318840(n+1)+1)]+1`
-/

namespace A324050.P14197227135241699869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (A318840 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324050.P14197227135241699869

namespace A324050

/-- `eq[1, A286491(A318840(n+1)+1)]+1` -/
def P14197227135241699869.Spec : Prop :=
  ∀ n, (P14197227135241699869.a n : ℤ) = A324050 (n + 1)

end A324050

/-! ## A324050.P360934756067206632

`record[A182816(n+1)]`
-/

namespace A324050.P360934756067206632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324050.P360934756067206632

namespace A324050

/-- `record[A182816(n+1)]` -/
def P360934756067206632.Spec : Prop :=
  ∀ n, P360934756067206632.a n = A324050 (n + 1)

end A324050

/-! ## A324050.P1063378672533753642

`record[A326584(n+1)]`
-/

namespace A324050.P1063378672533753642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324050.P1063378672533753642

namespace A324050

/-- `record[A326584(n+1)]` -/
def P1063378672533753642.Spec : Prop :=
  ∀ n, P1063378672533753642.a n = A324050 (n + 1)

end A324050

/-! ## A324050.P13946032573540418500

`lt[A247074(n+1), 2]+1`
-/

namespace A324050.P13946032573540418500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324050.P13946032573540418500

namespace A324050

/-- `lt[A247074(n+1), 2]+1` -/
def P13946032573540418500.Spec : Prop :=
  ∀ n, (P13946032573540418500.a n : ℤ) = A324050 (n + 1)

end A324050

/-! ## A324050.P14023008190723214044

`lt[A276976(n+1), 2]+1`
-/

namespace A324050.P14023008190723214044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324050.P14023008190723214044

namespace A324050

/-- `lt[A276976(n+1), 2]+1` -/
def P14023008190723214044.Spec : Prop :=
  ∀ n, (P14023008190723214044.a n : ℤ) = A324050 (n + 1)

end A324050

/-! ## A324050.P5475673728903097053

`record[2*(n+1)-A326578(n+1)]`
-/

namespace A324050.P5475673728903097053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A326578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324050.P5475673728903097053

namespace A324050

/-- `record[2*(n+1)-A326578(n+1)]` -/
def P5475673728903097053.Spec : Prop :=
  ∀ n, P5475673728903097053.a n = A324050 (n + 1)

end A324050

/-! ## A324050.P7650509770382118302

`filter[A087441(n+1), A297086(#)]`
-/

namespace A324050.P7650509770382118302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A324050.P7650509770382118302

namespace A324050

/-- `filter[A087441(n+1), A297086(#)]` -/
def P7650509770382118302.Spec : Prop :=
  ∀ n, P7650509770382118302.a n = A324050 (n + 1)

end A324050

/-! ## A324050.P1899796891580871697

`A326584(eq[n+1, A326584(n+1)]+1)`
-/

namespace A324050.P1899796891580871697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A324050.P1899796891580871697

namespace A324050

/-- `A326584(eq[n+1, A326584(n+1)]+1)` -/
def P1899796891580871697.Spec : Prop :=
  ∀ n, P1899796891580871697.a n = A324050 (n + 1)

end A324050

/-! ## A324050.P13818150433973181784

`record[A063994(n+1)+n+1-A000010(n+1)]`
-/

namespace A324050.P13818150433973181784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1) + ((n + 1 : ℤ) - A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324050.P13818150433973181784

namespace A324050

/-- `record[A063994(n+1)+n+1-A000010(n+1)]` -/
def P13818150433973181784.Spec : Prop :=
  ∀ n, P13818150433973181784.a n = A324050 (n + 1)

end A324050

/-!
# A324051: a(n) = A106315(A156552(n)).

The programs for A324051, the canonical program `A324051.P13720987516953583109` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324051 has offset 2).

The definition of A324051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324051.P7172845457383781655

`(A156552(n+2)*A324105(n+2))%A323243(n+2)`
-/

namespace A324051.P7172845457383781655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (n + 2) * A324105 (n + 2)) (A323243 (n + 2))

end

end A324051.P7172845457383781655

namespace A324051

/-- `(A156552(n+2)*A324105(n+2))%A323243(n+2)` -/
def P7172845457383781655.Spec : Prop :=
  ∀ n, P7172845457383781655.a n = A324051 (n + 2)

end A324051

/-! ## A324051.P13720987516953583109

`A106315(A156552(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324051

/-- `A106315(A156552(n+2))` -/
def P13720987516953583109.Spec : Prop :=
  ∀ n, P13720987516953583109.a n = A324051 (n + 2)

theorem P13720987516953583109.correct : P13720987516953583109.Spec := by
  intro n
  simp only [A324051, Nat.add_sub_cancel]

end A324051

/-! ## A324051.P15707026909928745863

`A106315(A323905(n+2)+A048675(n+2))`
-/

namespace A324051.P15707026909928745863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (A323905 (n + 2) + A048675 (n + 2)).toNat

end

end A324051.P15707026909928745863

namespace A324051

/-- `A106315(A323905(n+2)+A048675(n+2))` -/
def P15707026909928745863.Spec : Prop :=
  ∀ n, P15707026909928745863.a n = A324051 (n + 2)

theorem P15707026909928745863.correct : P15707026909928745863.Spec := by
  intro n
  simp only [A324051, Nat.add_sub_cancel, A324051.P15707026909928745863.a, A324051.P13720987516953583109.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A156552, A156552.P4268073137713085227.a, A323905, A323905.P339970777162455812.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A297108, A297108.P15990807296291497671.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A364557, A364557.P16113127302810243144.a, A049084, A049084.P10934933317972537770.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324051

/-! ## A324051.P10307789997437899723

`A152211(A156552(n+2))%A323243(n+2)`
-/

namespace A324051.P10307789997437899723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152211 (A156552 (n + 2)).toNat) (A323243 (n + 2))

end

end A324051.P10307789997437899723

namespace A324051

/-- `A152211(A156552(n+2))%A323243(n+2)` -/
def P10307789997437899723.Spec : Prop :=
  ∀ n, P10307789997437899723.a n = A324051 (n + 2)

end A324051

/-!
# A324052: a(n) = A083254(A005940(1+n)).

The programs for A324052, the canonical program `A324052.P9838691771205741248` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324052 has offset 0).

The definition of A324052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324052.P3559887943416468151

`2*A290077(n)-A005940(1+n)`
-/

namespace A324052.P3559887943416468151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290077 n - A005940 (1 + n)

end

end A324052.P3559887943416468151

namespace A324052

/-- `2*A290077(n)-A005940(1+n)` -/
def P3559887943416468151.Spec : Prop :=
  ∀ n, P3559887943416468151.a n = A324052 n

end A324052

/-! ## A324052.P9838691771205741248

`A083254(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324052

/-- `A083254(A005940(1+n))` -/
def P9838691771205741248.Spec : Prop :=
  ∀ n, P9838691771205741248.a n = A324052 n

theorem P9838691771205741248.correct : P9838691771205741248.Spec := by
  intro n
  simp only [A324052]

end A324052

/-! ## A324052.P11530319522381704704

`A324182(A158388(n)+A054429(n+1))`
-/

namespace A324052.P11530319522381704704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324182 (A158388 n + A054429 (n + 1)).toNat

end

end A324052.P11530319522381704704

namespace A324052

/-- `A324182(A158388(n)+A054429(n+1))` -/
def P11530319522381704704.Spec : Prop :=
  ∀ n, P11530319522381704704.a n = A324052 n

end A324052

/-! ## A324052.P4339563258700807404

`A290077(n)+A290077(n)-A005940(n+1)`
-/

namespace A324052.P4339563258700807404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 n + (A290077 n - A005940 (n + 1))

end

end A324052.P4339563258700807404

namespace A324052

/-- `A290077(n)+A290077(n)-A005940(n+1)` -/
def P4339563258700807404.Spec : Prop :=
  ∀ n, P4339563258700807404.a n = A324052 n

end A324052

/-! ## A324052.P13117944182406596114

`A324182(A092569(2*n)/2)`
-/

namespace A324052.P13117944182406596114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324182 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A324052.P13117944182406596114

namespace A324052

/-- `A324182(A092569(2*n)/2)` -/
def P13117944182406596114.Spec : Prop :=
  ∀ n, P13117944182406596114.a n = A324052 n

end A324052

/-! ## A324052.P1089298352657976756

`A324055(n)-A297159(A005940(n+1))`
-/

namespace A324052.P1089298352657976756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 n - A297159 (A005940 (n + 1)).toNat

end

end A324052.P1089298352657976756

namespace A324052

/-- `A324055(n)-A297159(A005940(n+1))` -/
def P1089298352657976756.Spec : Prop :=
  ∀ n, P1089298352657976756.a n = A324052 n

end A324052

/-! ## A324052.P14577157246536335020

`A324054(n)-A324048(A005940(n+1))`
-/

namespace A324052.P14577157246536335020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 n - A324048 (A005940 (n + 1)).toNat

end

end A324052.P14577157246536335020

namespace A324052

/-- `A324054(n)-A324048(A005940(n+1))` -/
def P14577157246536335020.Spec : Prop :=
  ∀ n, P14577157246536335020.a n = A324052 n

end A324052

/-! ## A324052.P7958590105338547596

`A005843(A290077(n))-A005940(n+1)`
-/

namespace A324052.P7958590105338547596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A290077 n).toNat - A005940 (n + 1)

end

end A324052.P7958590105338547596

namespace A324052

/-- `A005843(A290077(n))-A005940(n+1)` -/
def P7958590105338547596.Spec : Prop :=
  ∀ n, P7958590105338547596.a n = A324052 n

end A324052

/-! ## A324052.P682882458648707113

`A324182(A156552(A163511(n)))`
-/

namespace A324052.P682882458648707113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324182 (A156552 (A163511 n).toNat).toNat

end

end A324052.P682882458648707113

namespace A324052

/-- `A324182(A156552(A163511(n)))` -/
def P682882458648707113.Spec : Prop :=
  ∀ n, P682882458648707113.a n = A324052 n

end A324052

/-!
# A324053: a(n) = 1 if n > 3 and A002322(n) divides n-3, 0 otherwise; Characteristic function of 3-Knödel numbers.

The programs for A324053, there is no canonical definition to state claims against.
-/

/-! ## A324053.P5391738588531287181

`char[A033553(1+n)-1]`
-/

namespace A324053.P5391738588531287181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033553 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324053.P5391738588531287181

/-! ## A324053.P9730083069358235818

`A000007(xor(3, A276976(n+1)))`
-/

namespace A324053.P9730083069358235818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 3 (A276976 (n + 1))).toNat

end

end A324053.P9730083069358235818

/-! ## A324053.P9355142722469616126

`char[eq[3, A219175(n+1)]]`
-/

namespace A324053.P9355142722469616126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219175 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A324053.P9355142722469616126

/-! ## A324053.P16478746698728309485

`char[A004442(A033553(n+1))]`
-/

namespace A324053.P16478746698728309485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A033553 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324053.P16478746698728309485

/-! ## A324053.P8941782824910804872

`A045698(4*n%A002322(n+1))`
-/

namespace A324053.P8941782824910804872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 (4 * Int.tmod (n : ℤ) (A002322 (n + 1))).toNat

end

end A324053.P8941782824910804872

/-! ## A324053.P581039998300925578

`val(ceil(2^(n-2))+n, A004277(n+1))`
-/

namespace A324053.P581039998300925578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ + (n : ℤ)).toNat (A004277 (n + 1)).toNat

end

end A324053.P581039998300925578

/-! ## A324053.P13919169431236538294

`val(A288382(n+1), A004277(n)+2)`
-/

namespace A324053.P13919169431236538294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A288382 (n + 1)).toNat (A004277 n + 2).toNat

end

end A324053.P13919169431236538294

/-! ## A324053.P10919643836907673996

`A016232(4*A174133(A015910(n+1)+1)+1)`
-/

namespace A324053.P10919643836907673996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016232 (4 * A174133 (A015910 (n + 1) + 1).toNat + 1).toNat

end

end A324053.P10919643836907673996

/-! ## A324053.P16483901617897830794

`(n+1)%A014963(A162608((n+1)%A002322(n+1)))`
-/

namespace A324053.P16483901617897830794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A162608 (Int.tmod (n + 1 : ℤ) (A002322 (n + 1))).toNat).toNat)

end

end A324053.P16483901617897830794

/-! ## A324053.P7251518291410894511

`val(A321757(n+1), 3)`
-/

namespace A324053.P7251518291410894511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A321757 (n + 1)).toNat 3

end

end A324053.P7251518291410894511

/-!
# A324054: a(n) = A000203(A005940(1+n)).

The programs for A324054, the canonical program `A324054.P16538433876613963457` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324054 has offset 0).

The definition of A324054 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324054.P5696382106241024755

`A324056(n)*A038712(1+n)`
-/

namespace A324054.P5696382106241024755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324056 n * A038712 (1 + n)

end

end A324054.P5696382106241024755

namespace A324054

/-- `A324056(n)*A038712(1+n)` -/
def P5696382106241024755.Spec : Prop :=
  ∀ n, P5696382106241024755.a n = A324054 n

end A324054

/-! ## A324054.P16538433876613963457

`A000203(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324054

/-- `A000203(A005940(1+n))` -/
def P16538433876613963457.Spec : Prop :=
  ∀ n, P16538433876613963457.a n = A324054 n

theorem P16538433876613963457.correct : P16538433876613963457.Spec := by
  intro n
  simp only [A324054]

end A324054

/-! ## A324054.P10857708449656284156

`A324349(n)+A324058(n)`
-/

namespace A324054.P10857708449656284156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324349 n + A324058 n

end

end A324054.P10857708449656284156

namespace A324054

/-- `A324349(n)+A324058(n)` -/
def P10857708449656284156.Spec : Prop :=
  ∀ n, P10857708449656284156.a n = A324054 n

theorem P10857708449656284156.correct : P10857708449656284156.Spec := by
  intro n
  simp only [A324054, Nat.add_sub_cancel, A324054.P10857708449656284156.a, A324054.P16538433876613963457.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005940, A005940.P5942875842694471387.a, A324058, A324058.P15737617926128643869.a, A324349, A324349.P1026548390885821762.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P8520361847049590329.a, A324121, A324121.P5058798757553332466.a, A324122, A324122.P6437590254037711062.a, A003557, A003557.P6364735403900941810.a, A038040, A038040.P16512896840577774730.a, A057335, A057335.P1378643245781663048.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324054

/-! ## A324054.P4813319388078238700

`A038712(n+1)*A324056(n)`
-/

namespace A324054.P4813319388078238700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A324056 n

end

end A324054.P4813319388078238700

namespace A324054

/-- `A038712(n+1)*A324056(n)` -/
def P4813319388078238700.Spec : Prop :=
  ∀ n, P4813319388078238700.a n = A324054 n

end A324054

/-! ## A324054.P10433060811220860504

`2*A005940(n+1)-A324055(n)`
-/

namespace A324054.P10433060811220860504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005940 (n + 1) - A324055 n

end

end A324054.P10433060811220860504

namespace A324054

/-- `2*A005940(n+1)-A324055(n)` -/
def P10433060811220860504.Spec : Prop :=
  ∀ n, P10433060811220860504.a n = A324054 n

end A324054

/-! ## A324054.P15191851183959090839

`∑{d}[n+1, A099894(#-1)*A324056((n+1)/#-1)]`
-/

namespace A324054.P15191851183959090839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A324056 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A324054.P15191851183959090839

namespace A324054

/-- `∑{d}[n+1, A099894(#-1)*A324056((n+1)/#-1)]` -/
def P15191851183959090839.Spec : Prop :=
  ∀ n, P15191851183959090839.a n = A324054 n

end A324054

/-! ## A324054.P17582508392335997738

`A000203(n+1)/A000593(n+1)*A324056(n)`
-/

namespace A324054.P17582508392335997738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ) * (A324056 n : ℚ)

end

end A324054.P17582508392335997738

namespace A324054

/-- `A000203(n+1)/A000593(n+1)*A324056(n)` -/
def P17582508392335997738.Spec : Prop :=
  ∀ n, P17582508392335997738.a n = (A324054 n : ℚ)

end A324054

/-! ## A324054.P11565353672654598185

`A324184(A092569(2*n)/2)`
-/

namespace A324054.P11565353672654598185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324184 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A324054.P11565353672654598185

namespace A324054

/-- `A324184(A092569(2*n)/2)` -/
def P11565353672654598185.Spec : Prop :=
  ∀ n, P11565353672654598185.a n = A324054 n

end A324054

/-! ## A324054.P1954282471703212532

`A324545(A252753(n))`
-/

namespace A324054.P1954282471703212532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324545 (A252753 n).toNat

end

end A324054.P1954282471703212532

namespace A324054

/-- `A324545(A252753(n))` -/
def P1954282471703212532.Spec : Prop :=
  ∀ n, P1954282471703212532.a n = A324054 n

end A324054

/-! ## A324054.P7753265188551369020

`A324545(A286555(A006068(n)))`
-/

namespace A324054.P7753265188551369020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324545 (A286555 (A006068 n).toNat).toNat

end

end A324054.P7753265188551369020

namespace A324054

/-- `A324545(A286555(A006068(n)))` -/
def P7753265188551369020.Spec : Prop :=
  ∀ n, P7753265188551369020.a n = A324054 n

end A324054

/-! ## A324054.P1869170086853147061

`∑{d}[A005940(1+n), #]`
-/

namespace A324054.P1869170086853147061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324054.P1869170086853147061

namespace A324054

/-- `∑{d}[A005940(1+n), #]` -/
def P1869170086853147061.Spec : Prop :=
  ∀ n, (P1869170086853147061.a n : ℤ) = A324054 n

end A324054

/-! ## A324054.P6184524815829000081

`∑{d}[A364499(n+1)+n+1, #]`
-/

namespace A324054.P6184524815829000081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364499 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324054.P6184524815829000081

namespace A324054

/-- `∑{d}[A364499(n+1)+n+1, #]` -/
def P6184524815829000081.Spec : Prop :=
  ∀ n, (P6184524815829000081.a n : ℤ) = A324054 n

end A324054

/-! ## A324054.P8641591350870179368

`∑{d}[A279338(A279344(n)), #]`
-/

namespace A324054.P8641591350870179368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279344 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324054.P8641591350870179368

namespace A324054

/-- `∑{d}[A279338(A279344(n)), #]` -/
def P8641591350870179368.Spec : Prop :=
  ∀ n, (P8641591350870179368.a n : ℤ) = A324054 n

end A324054

/-! ## A324054.P1898709414594741802

`∑{d}[A302026(A269387(n)), #]`
-/

namespace A324054.P1898709414594741802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269387 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324054.P1898709414594741802

namespace A324054

/-- `∑{d}[A302026(A269387(n)), #]` -/
def P1898709414594741802.Spec : Prop :=
  ∀ n, (P1898709414594741802.a n : ℤ) = A324054 n

end A324054

/-! ## A324054.P7678659211747265385

`A000203(A292602(3*(n+1)+n))`
-/

namespace A324054.P7678659211747265385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A292602 (3 * (n + 1) + n)).toNat

end

end A324054.P7678659211747265385

namespace A324054

/-- `A000203(A292602(3*(n+1)+n))` -/
def P7678659211747265385.Spec : Prop :=
  ∀ n, P7678659211747265385.a n = A324054 n

end A324054

/-! ## A324054.P17073482703185636462

`A000203(A279338(A279344(n)))`
-/

namespace A324054.P17073482703185636462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A279338 (A279344 n).toNat).toNat

end

end A324054.P17073482703185636462

namespace A324054

/-- `A000203(A279338(A279344(n)))` -/
def P17073482703185636462.Spec : Prop :=
  ∀ n, P17073482703185636462.a n = A324054 n

end A324054

/-! ## A324054.P18166837289475373228

`A000203(A302026(A269387(n)))`
-/

namespace A324054.P18166837289475373228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A302026 (A269387 n).toNat).toNat

end

end A324054.P18166837289475373228

namespace A324054

/-- `A000203(A302026(A269387(n)))` -/
def P18166837289475373228.Spec : Prop :=
  ∀ n, P18166837289475373228.a n = A324054 n

end A324054

/-! ## A324054.P909009504839022046

`A000203(A324394(n)*A324395(n))`
-/

namespace A324054.P909009504839022046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A324394 n * A324395 n).toNat

end

end A324054.P909009504839022046

namespace A324054

/-- `A000203(A324394(n)*A324395(n))` -/
def P909009504839022046.Spec : Prop :=
  ∀ n, P909009504839022046.a n = A324054 n

end A324054

/-! ## A324054.P15810876966508295288

`A005187(A005940(n+1))-A324348(n)`
-/

namespace A324054.P15810876966508295288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A005940 (n + 1)).toNat - A324348 n

end

end A324054.P15810876966508295288

namespace A324054

/-- `A005187(A005940(n+1))-A324348(n)` -/
def P15810876966508295288.Spec : Prop :=
  ∀ n, P15810876966508295288.a n = A324054 n

end A324054

/-! ## A324054.P11988628601058871981

`∑{d}[A297165(a(n-1)), #]` with `a(0)=1`
-/

namespace A324054.P11988628601058871981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A297165 (f1 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324054.P11988628601058871981

namespace A324054

/-- `∑{d}[A297165(a(n-1)), #]` -/
def P11988628601058871981.Spec : Prop :=
  ∀ n, (P11988628601058871981.a n : ℤ) = A324054 n

end A324054

/-!
# A324055: Deficiency of Doudna-sequence: a(n) = A033879(A005940(1+n)).

The programs for A324055, the canonical program `A324055.P14690087279481986387` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324055 has offset 0).

The definition of A324055 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324055.P2109695728655051905

`2*A005940(1+n)-A324054(n)`
-/

namespace A324055.P2109695728655051905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005940 (1 + n) - A324054 n

end

end A324055.P2109695728655051905

namespace A324055

/-- `2*A005940(1+n)-A324054(n)` -/
def P2109695728655051905.Spec : Prop :=
  ∀ n, P2109695728655051905.a n = A324055 n

end A324055

/-! ## A324055.P14690087279481986387

`A033879(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324055

/-- `A033879(A005940(1+n))` -/
def P14690087279481986387.Spec : Prop :=
  ∀ n, P14690087279481986387.a n = A324055 n

theorem P14690087279481986387.correct : P14690087279481986387.Spec := by
  intro n
  simp only [A324055]

end A324055

/-! ## A324055.P4708782387492050211

`A324348(n)+A000120(A005940(1+n))`
-/

namespace A324055.P4708782387492050211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324348 n + A000120 (A005940 (1 + n)).toNat

end

end A324055.P4708782387492050211

namespace A324055

/-- `A324348(n)+A000120(A005940(1+n))` -/
def P4708782387492050211.Spec : Prop :=
  ∀ n, P4708782387492050211.a n = A324055 n

end A324055

/-! ## A324055.P11501824363139314763

`A324185(A122155(n+1))`
-/

namespace A324055.P11501824363139314763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324185 (A122155 (n + 1)).toNat

end

end A324055.P11501824363139314763

namespace A324055

/-- `A324185(A122155(n+1))` -/
def P11501824363139314763.Spec : Prop :=
  ∀ n, P11501824363139314763.a n = A324055 n

end A324055

/-! ## A324055.P9699673395008786197

`A324348(n)+A295894(n)`
-/

namespace A324055.P9699673395008786197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324348 n + A295894 n

end

end A324055.P9699673395008786197

namespace A324055

/-- `A324348(n)+A295894(n)` -/
def P9699673395008786197.Spec : Prop :=
  ∀ n, P9699673395008786197.a n = A324055 n

end A324055

/-! ## A324055.P8929113044184154901

`A324185(A054429(n+1)+1)`
-/

namespace A324055.P8929113044184154901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324185 (A054429 (n + 1) + 1).toNat

end

end A324055.P8929113044184154901

namespace A324055

/-- `A324185(A054429(n+1)+1)` -/
def P8929113044184154901.Spec : Prop :=
  ∀ n, P8929113044184154901.a n = A324055 n

end A324055

/-! ## A324055.P16634664154540798961

`A005940(n+1)+A005940(n+1)-A324054(n)`
-/

namespace A324055.P16634664154540798961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) + (A005940 (n + 1) - A324054 n)

end

end A324055.P16634664154540798961

namespace A324055

/-- `A005940(n+1)+A005940(n+1)-A324054(n)` -/
def P16634664154540798961.Spec : Prop :=
  ∀ n, P16634664154540798961.a n = A324055 n

end A324055

/-! ## A324055.P1703357411511042515

`A324185(A337909(n+2))`
-/

namespace A324055.P1703357411511042515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324185 (A337909 (n + 2)).toNat

end

end A324055.P1703357411511042515

namespace A324055

/-- `A324185(A337909(n+2))` -/
def P1703357411511042515.Spec : Prop :=
  ∀ n, P1703357411511042515.a n = A324055 n

end A324055

/-! ## A324055.P9070199264997055934

`A324546(A252753(n))`
-/

namespace A324055.P9070199264997055934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (A252753 n).toNat

end

end A324055.P9070199264997055934

namespace A324055

/-- `A324546(A252753(n))` -/
def P9070199264997055934.Spec : Prop :=
  ∀ n, P9070199264997055934.a n = A324055 n

end A324055

/-! ## A324055.P17323059658432807543

`A005940(2*(n+1))-A000203(A005940(n+1))`
-/

namespace A324055.P17323059658432807543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (2 * (n + 1)) - A000203 (A005940 (n + 1)).toNat

end

end A324055.P17323059658432807543

namespace A324055

/-- `A005940(2*(n+1))-A000203(A005940(n+1))` -/
def P17323059658432807543.Spec : Prop :=
  ∀ n, P17323059658432807543.a n = A324055 n

end A324055

/-! ## A324055.P3004222136116251572

`A033879(A324394(n)*A324395(n))`
-/

namespace A324055.P3004222136116251572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A324394 n * A324395 n).toNat

end

end A324055.P3004222136116251572

namespace A324055

/-- `A033879(A324394(n)*A324395(n))` -/
def P3004222136116251572.Spec : Prop :=
  ∀ n, P3004222136116251572.a n = A324055 n

end A324055

/-! ## A324055.P11965050245754092043

`A033879(A163511(A279341(A279344(n))))`
-/

namespace A324055.P11965050245754092043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A163511 (A279341 (A279344 n).toNat).toNat).toNat

end

end A324055.P11965050245754092043

namespace A324055

/-- `A033879(A163511(A279341(A279344(n))))` -/
def P11965050245754092043.Spec : Prop :=
  ∀ n, P11965050245754092043.a n = A324055 n

end A324055

/-! ## A324055.P15860554468489932398

`A326068(A005940(2*(n+1)))`
-/

namespace A324055.P15860554468489932398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (A005940 (2 * (n + 1))).toNat

end

end A324055.P15860554468489932398

namespace A324055

/-- `A326068(A005940(2*(n+1)))` -/
def P15860554468489932398.Spec : Prop :=
  ∀ n, P15860554468489932398.a n = A324055 n

end A324055

/-! ## A324055.P10240250823229521076

`A326068(A005940(n+1)+A005940(n+1))`
-/

namespace A324055.P10240250823229521076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (A005940 (n + 1) + A005940 (n + 1)).toNat

end

end A324055.P10240250823229521076

namespace A324055

/-- `A326068(A005940(n+1)+A005940(n+1))` -/
def P10240250823229521076.Spec : Prop :=
  ∀ n, P10240250823229521076.a n = A324055 n

end A324055

/-! ## A324055.P7399438148020998143

`A323174(A253563(n))`
-/

namespace A324055.P7399438148020998143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323174 (A253563 n).toNat

end

end A324055.P7399438148020998143

namespace A324055

/-- `A323174(A253563(n))` -/
def P7399438148020998143.Spec : Prop :=
  ∀ n, P7399438148020998143.a n = A324055 n

end A324055

/-!
# A324056: a(n) = A000593(A005940(1+n)).

The programs for A324056, the canonical program `A324056.P9197834271733439572` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324056 has offset 0).

The definition of A324056 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324056.P69802577986204412

`A324054(n)/A038712(1+n)`
-/

namespace A324056.P69802577986204412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324054 n : ℚ) / (A038712 (1 + n) : ℚ)

end

end A324056.P69802577986204412

namespace A324056

/-- `A324054(n)/A038712(1+n)` -/
def P69802577986204412.Spec : Prop :=
  ∀ n, P69802577986204412.a n = (A324056 n : ℚ)

end A324056

/-! ## A324056.P9197834271733439572

`A000593(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324056

/-- `A000593(A005940(1+n))` -/
def P9197834271733439572.Spec : Prop :=
  ∀ n, P9197834271733439572.a n = A324056 n

theorem P9197834271733439572.correct : P9197834271733439572.Spec := by
  intro n
  simp only [A324056]

end A324056

/-! ## A324056.P10228484782833226459

`A324054(n)/xor(n+1, n)`
-/

namespace A324056.P10228484782833226459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324054 n : ℚ) / (Nat.xor (n + 1) n : ℚ)

end

end A324056.P10228484782833226459

namespace A324056

/-- `A324054(n)/xor(n+1, n)` -/
def P10228484782833226459.Spec : Prop :=
  ∀ n, P10228484782833226459.a n = (A324056 n : ℚ)

end A324056

/-! ## A324056.P5136570839094330251

`A324054((n+1)/2^val(n+1, 2)-1)`
-/

namespace A324056.P5136570839094330251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1)).toNat

end

end A324056.P5136570839094330251

namespace A324056

/-- `A324054((n+1)/2^val(n+1, 2)-1)` -/
def P5136570839094330251.Spec : Prop :=
  ∀ n, P5136570839094330251.a n = A324056 n

end A324056

/-! ## A324056.P994844491133851180

`A324054(2^(log2(n+1)-val(n+1, 2))-1)`
-/

namespace A324056.P994844491133851180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)) - 1)).toNat

end

end A324056.P994844491133851180

namespace A324056

/-- `A324054(2^(log2(n+1)-val(n+1, 2))-1)` -/
def P994844491133851180.Spec : Prop :=
  ∀ n, P994844491133851180.a n = A324056 n

end A324056

/-! ## A324056.P6041186780549902466

`A324054(A153733(n))`
-/

namespace A324056.P6041186780549902466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (A153733 n).toNat

end

end A324056.P6041186780549902466

namespace A324056

/-- `A324054(A153733(n))` -/
def P6041186780549902466.Spec : Prop :=
  ∀ n, P6041186780549902466.a n = A324056 n

end A324056

/-! ## A324056.P12574519190453604280

`A324186(A122155(n+1))`
-/

namespace A324056.P12574519190453604280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324186 (A122155 (n + 1)).toNat

end

end A324056.P12574519190453604280

namespace A324056

/-- `A324186(A122155(n+1))` -/
def P12574519190453604280.Spec : Prop :=
  ∀ n, P12574519190453604280.a n = A324056 n

end A324056

/-! ## A324056.P7701289127042071252

`A324186(A054429(n+1)+1)`
-/

namespace A324056.P7701289127042071252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324186 (A054429 (n + 1) + 1).toNat

end

end A324056.P7701289127042071252

namespace A324056

/-- `A324186(A054429(n+1)+1)` -/
def P7701289127042071252.Spec : Prop :=
  ∀ n, P7701289127042071252.a n = A324056 n

end A324056

/-! ## A324056.P16108129588647832588

`A324054(A000265(n+1)-1)`
-/

namespace A324056.P16108129588647832588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (A000265 (n + 1) - 1).toNat

end

end A324056.P16108129588647832588

namespace A324056

/-- `A324054(A000265(n+1)-1)` -/
def P16108129588647832588.Spec : Prop :=
  ∀ n, P16108129588647832588.a n = A324056 n

end A324056

/-! ## A324056.P2823772226535159002

`A324186(A337909(n+1)-1)`
-/

namespace A324056.P2823772226535159002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324186 (A337909 (n + 1) - 1).toNat

end

end A324056.P2823772226535159002

namespace A324056

/-- `A324186(A337909(n+1)-1)` -/
def P2823772226535159002.Spec : Prop :=
  ∀ n, P2823772226535159002.a n = A324056 n

end A324056

/-! ## A324056.P10434090106323153473

`A324054(xor(1, A000265(n+1)))`
-/

namespace A324056.P10434090106323153473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (Int.xor 1 (A000265 (n + 1))).toNat

end

end A324056.P10434090106323153473

namespace A324056

/-- `A324054(xor(1, A000265(n+1)))` -/
def P10434090106323153473.Spec : Prop :=
  ∀ n, P10434090106323153473.a n = A324056 n

end A324056

/-! ## A324056.P12289947986316843980

`A000593(n+1)/A000203(n+1)*A324054(n)`
-/

namespace A324056.P12289947986316843980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A324054 n : ℚ)

end

end A324056.P12289947986316843980

namespace A324056

/-- `A000593(n+1)/A000203(n+1)*A324054(n)` -/
def P12289947986316843980.Spec : Prop :=
  ∀ n, P12289947986316843980.a n = (A324056 n : ℚ)

end A324056

/-! ## A324056.P8541346998400063459

`A324186(A337909(n+2))`
-/

namespace A324056.P8541346998400063459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324186 (A337909 (n + 2)).toNat

end

end A324056.P8541346998400063459

namespace A324056

/-- `A324186(A337909(n+2))` -/
def P8541346998400063459.Spec : Prop :=
  ∀ n, P8541346998400063459.a n = A324056 n

end A324056

/-! ## A324056.P5812425327343530605

`A324186(A092569(2*n))`
-/

namespace A324056.P5812425327343530605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324186 (A092569 (2 * n)).toNat

end

end A324056.P5812425327343530605

namespace A324056

/-- `A324186(A092569(2*n))` -/
def P5812425327343530605.Spec : Prop :=
  ∀ n, P5812425327343530605.a n = A324056 n

end A324056

/-! ## A324056.P7301832866637943354

`gcd(A324054(2*n+1), A324054(n))`
-/

namespace A324056.P7301832866637943354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324054 (2 * n + 1)) (A324054 n)

end

end A324056.P7301832866637943354

namespace A324056

/-- `gcd(A324054(2*n+1), A324054(n))` -/
def P7301832866637943354.Spec : Prop :=
  ∀ n, (P7301832866637943354.a n : ℤ) = A324056 n

end A324056

/-! ## A324056.P7995355624555275100

`∑{d}[A005940((n+1)/2^val(n+1, 2)), #]`
-/

namespace A324056.P7995355624555275100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324056.P7995355624555275100

namespace A324056

/-- `∑{d}[A005940((n+1)/2^val(n+1, 2)), #]` -/
def P7995355624555275100.Spec : Prop :=
  ∀ n, (P7995355624555275100.a n : ℤ) = A324056 n

end A324056

/-! ## A324056.P6308447879053189357

`∑{d}[A005940((n+1)/and(n+1, -(n+1))), #]`
-/

namespace A324056.P6308447879053189357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324056.P6308447879053189357

namespace A324056

/-- `∑{d}[A005940((n+1)/and(n+1, -(n+1))), #]` -/
def P6308447879053189357.Spec : Prop :=
  ∀ n, (P6308447879053189357.a n : ℤ) = A324056 n

end A324056

/-! ## A324056.P13524385858237836024

`A000203(A005940((n+1)/and(n+1, -(n+1))))`
-/

namespace A324056.P13524385858237836024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005940 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat).toNat

end

end A324056.P13524385858237836024

namespace A324056

/-- `A000203(A005940((n+1)/and(n+1, -(n+1))))` -/
def P13524385858237836024.Spec : Prop :=
  ∀ n, P13524385858237836024.a n = A324056 n

end A324056

/-! ## A324056.P13622205370459713358

`A000203(A005940(A000265(n+1)))`
-/

namespace A324056.P13622205370459713358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005940 (A000265 (n + 1)).toNat).toNat

end

end A324056.P13622205370459713358

namespace A324056

/-- `A000203(A005940(A000265(n+1)))` -/
def P13622205370459713358.Spec : Prop :=
  ∀ n, P13622205370459713358.a n = A324056 n

end A324056

/-! ## A324056.P12139033042885417218

`A000203(A005940(n+1))/A038712(n+1)`
-/

namespace A324056.P12139033042885417218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A005940 (n + 1)).toNat : ℚ) / (A038712 (n + 1) : ℚ)

end

end A324056.P12139033042885417218

namespace A324056

/-- `A000203(A005940(n+1))/A038712(n+1)` -/
def P12139033042885417218.Spec : Prop :=
  ∀ n, P12139033042885417218.a n = (A324056 n : ℚ)

end A324056

/-!
# A324057: a(n) = A106315(A005940(1+n)).

The programs for A324057, the canonical program `A324057.P12349580302683905171` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324057 has offset 0).

The definition of A324057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324057.P12349580302683905171

`A106315(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324057

/-- `A106315(A005940(1+n))` -/
def P12349580302683905171.Spec : Prop :=
  ∀ n, P12349580302683905171.a n = A324057 n

theorem P12349580302683905171.correct : P12349580302683905171.Spec := by
  intro n
  simp only [A324057]

end A324057

/-! ## A324057.P16628501980417755557

`A324187(∏[char[2^n]+char[1]+1]-n-1)`
-/

namespace A324057.P16628501980417755557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ((if ∃ j, f3 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324187 (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A324057.P16628501980417755557

namespace A324057

/-- `A324187(∏[char[2^n]+char[1]+1]-n-1)` -/
def P16628501980417755557.Spec : Prop :=
  ∀ n, P16628501980417755557.a n = A324057 n

end A324057

/-! ## A324057.P2749654038111283562

`(A005940(n+1)*A106737(n))%A324054(n)`
-/

namespace A324057.P2749654038111283562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (n + 1) * A106737 n) (A324054 n)

end

end A324057.P2749654038111283562

namespace A324057

/-- `(A005940(n+1)*A106737(n))%A324054(n)` -/
def P2749654038111283562.Spec : Prop :=
  ∀ n, P2749654038111283562.a n = A324057 n

end A324057

/-! ## A324057.P12568271343547491623

`A106315(A292602(4*n+3))`
-/

namespace A324057.P12568271343547491623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (A292602 (4 * n + 3)).toNat

end

end A324057.P12568271343547491623

namespace A324057

/-- `A106315(A292602(4*n+3))` -/
def P12568271343547491623.Spec : Prop :=
  ∀ n, P12568271343547491623.a n = A324057 n

end A324057

/-! ## A324057.P14793373166317443241

`A106315(A324394(n)*A324395(n))`
-/

namespace A324057.P14793373166317443241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (A324394 n * A324395 n).toNat

end

end A324057.P14793373166317443241

namespace A324057

/-- `A106315(A324394(n)*A324395(n))` -/
def P14793373166317443241.Spec : Prop :=
  ∀ n, P14793373166317443241.a n = A324057 n

end A324057

/-! ## A324057.P7379547887951349774

`A038040(A005940(n+1))%A324054(n)`
-/

namespace A324057.P7379547887951349774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038040 (A005940 (n + 1)).toNat) (A324054 n)

end

end A324057.P7379547887951349774

namespace A324057

/-- `A038040(A005940(n+1))%A324054(n)` -/
def P7379547887951349774.Spec : Prop :=
  ∀ n, P7379547887951349774.a n = A324057 n

end A324057

/-! ## A324057.P8210460436301463646

`A106315(A324641(n+1)-A324640(n+1))`
-/

namespace A324057.P8210460436301463646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A324057.P8210460436301463646

namespace A324057

/-- `A106315(A324641(n+1)-A324640(n+1))` -/
def P8210460436301463646.Spec : Prop :=
  ∀ n, P8210460436301463646.a n = A324057 n

end A324057

/-! ## A324057.P2552236198063211434

`A106315(A163511(A156552(A163511(n))))`
-/

namespace A324057.P2552236198063211434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (A163511 (A156552 (A163511 n).toNat).toNat).toNat

end

end A324057.P2552236198063211434

namespace A324057

/-- `A106315(A163511(A156552(A163511(n))))` -/
def P2552236198063211434.Spec : Prop :=
  ∀ n, P2552236198063211434.a n = A324057 n

end A324057

/-! ## A324057.P5907683845072178851

`A324051(A005940(A005940(n+1)+1))`
-/

namespace A324057.P5907683845072178851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324051 (A005940 (A005940 (n + 1) + 1).toNat).toNat

end

end A324057.P5907683845072178851

namespace A324057

/-- `A324051(A005940(A005940(n+1)+1))` -/
def P5907683845072178851.Spec : Prop :=
  ∀ n, P5907683845072178851.a n = A324057 n

end A324057

/-!
# A324058: a(n) = A324121(A005940(1+n)) = gcd(A324054(n), A005940(1+n)*A106737(n)).

The programs for A324058, the canonical program `A324058.P15737617926128643869` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324058 has offset 0).

The definition of A324058 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324058.P14090121996181114239

`gcd(A324054(n), A005940(1+n)*A106737(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324058.P14090121996181114239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324054 n) (A005940 (1 + n) * A106737 n)

end

end A324058.P14090121996181114239

namespace A324058

/-- `gcd(A324054(n), A005940(1+n)*A106737(n))` -/
def P14090121996181114239.Spec : Prop :=
  ∀ n, (P14090121996181114239.a n : ℤ) = A324058 n

end A324058

/-! ## A324058.P15737617926128643869

`A324121(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324058

/-- `A324121(A005940(1+n))` -/
def P15737617926128643869.Spec : Prop :=
  ∀ n, P15737617926128643869.a n = A324058 n

theorem P15737617926128643869.correct : P15737617926128643869.Spec := by
  intro n
  simp only [A324058]

end A324058

/-! ## A324058.P17791194639387285835

`A324188(A092569(xor(1, n)))`
-/

namespace A324058.P17791194639387285835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324188 (A092569 (Nat.xor 1 n)).toNat

end

end A324058.P17791194639387285835

namespace A324058

/-- `A324188(A092569(xor(1, n)))` -/
def P17791194639387285835.Spec : Prop :=
  ∀ n, P17791194639387285835.a n = A324058 n

end A324058

/-! ## A324058.P7029271387257746179

`A324054(n)-A324349(n)`
-/

namespace A324058.P7029271387257746179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 n - A324349 n

end

end A324058.P7029271387257746179

namespace A324058

/-- `A324054(n)-A324349(n)` -/
def P7029271387257746179.Spec : Prop :=
  ∀ n, P7029271387257746179.a n = A324058 n

theorem P7029271387257746179.correct : P7029271387257746179.Spec := by
  intro n
  simp only [A324058, Nat.add_sub_cancel, A324058.P7029271387257746179.a, A324058.P15737617926128643869.a, A005940, A005940.P5942875842694471387.a, A324054, A324054.P16538433876613963457.a, A324121, A324121.P5058798757553332466.a, A324349, A324349.P1026548390885821762.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038040, A038040.P16512896840577774730.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P8520361847049590329.a, A324122, A324122.P6437590254037711062.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A057335, A057335.P1378643245781663048.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324058

/-! ## A324058.P15581432025115732418

`gcd(A324054(n), A324057(n))`
-/

namespace A324058.P15581432025115732418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324054 n) (A324057 n)

end

end A324058.P15581432025115732418

namespace A324058

/-- `gcd(A324054(n), A324057(n))` -/
def P15581432025115732418.Spec : Prop :=
  ∀ n, (P15581432025115732418.a n : ℤ) = A324058 n

end A324058

/-! ## A324058.P12805974879465244304

`A324188(A092569(2*n)/2)`
-/

namespace A324058.P12805974879465244304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324188 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A324058.P12805974879465244304

namespace A324058

/-- `A324188(A092569(2*n)/2)` -/
def P12805974879465244304.Spec : Prop :=
  ∀ n, P12805974879465244304.a n = A324058 n

end A324058

/-! ## A324058.P7699705547209950807

`A000203(A005940(n+1))-A324349(n)`
-/

namespace A324058.P7699705547209950807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005940 (n + 1)).toNat - A324349 n

end

end A324058.P7699705547209950807

namespace A324058

/-- `A000203(A005940(n+1))-A324349(n)` -/
def P7699705547209950807.Spec : Prop :=
  ∀ n, P7699705547209950807.a n = A324058 n

end A324058

/-! ## A324058.P1623673682729738971

`A000203(A324394(n)*A324395(n))-A324349(n)`
-/

namespace A324058.P1623673682729738971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A324394 n * A324395 n).toNat - A324349 n

end

end A324058.P1623673682729738971

namespace A324058

/-- `A000203(A324394(n)*A324395(n))-A324349(n)` -/
def P1623673682729738971.Spec : Prop :=
  ∀ n, P1623673682729738971.a n = A324058 n

end A324058

/-! ## A324058.P8777982076936187735

`A324121(A324394(n)*A324395(n))`
-/

namespace A324058.P8777982076936187735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (A324394 n * A324395 n).toNat

end

end A324058.P8777982076936187735

namespace A324058

/-- `A324121(A324394(n)*A324395(n))` -/
def P8777982076936187735.Spec : Prop :=
  ∀ n, P8777982076936187735.a n = A324058 n

end A324058

/-! ## A324058.P11798398388199300961

`A324054(n)-A324122(A005940(n+1))`
-/

namespace A324058.P11798398388199300961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 n - A324122 (A005940 (n + 1)).toNat

end

end A324058.P11798398388199300961

namespace A324058

/-- `A324054(n)-A324122(A005940(n+1))` -/
def P11798398388199300961.Spec : Prop :=
  ∀ n, P11798398388199300961.a n = A324058 n

end A324058

/-! ## A324058.P14050249839522777777

`A336314(A253563(n))`
-/

namespace A324058.P14050249839522777777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (A253563 n).toNat

end

end A324058.P14050249839522777777

namespace A324058

/-- `A336314(A253563(n))` -/
def P14050249839522777777.Spec : Prop :=
  ∀ n, P14050249839522777777.a n = A324058 n

end A324058

/-!
# A324059: Numbers m such that sigma(m)/(phi(m) + tau(m)) is a record.

The programs for A324059, there is no canonical definition to state claims against.
-/

/-! ## A324059.P4896681764936433746

`∩[A244052(n+1), A364433(n+1)]`
-/

namespace A324059.P4896681764936433746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324059.P4896681764936433746

/-! ## A324059.P14500192190598824282

`A244052(A172543(n+1)+1+n)`
-/

namespace A324059.P14500192190598824282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244052 (A172543 (n + 1) + 1 + (n : ℤ)).toNat

end

end A324059.P14500192190598824282

/-! ## A324059.P13736171736472474652

`∩[A244052(n+1), A248888(n+1)]`
-/

namespace A324059.P13736171736472474652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324059.P13736171736472474652

/-!
# A324061: Number of simple connected graphs on n unlabeled nodes with radius 2.

The programs for A324061, there is no canonical definition to state claims against.
-/

/-! ## A324061.P4067402856858080676

`2*A152467(A127114(n))`
-/

namespace A324061.P4067402856858080676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152467 (A127114 n).toNat

end

end A324061.P4067402856858080676

/-! ## A324061.P7215079019894126272

`2*A326905(A120588(n))`
-/

namespace A324061.P7215079019894126272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326905 (A120588 n).toNat

end

end A324061.P7215079019894126272

/-! ## A324061.P17368088499151059774

`2*A326910(A157612(n))`
-/

namespace A324061.P17368088499151059774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326910 (A157612 n).toNat

end

end A324061.P17368088499151059774

/-!
# A324062: Number of defective (binary) heaps on n elements where one ancestor-successor pair does not have the correct order.

The programs for A324062, there is no canonical definition to state claims against.
-/

/-! ## A324062.P6725627330227909927

`floor(n/2)*A056971(n)`
-/

namespace A324062.P6725627330227909927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * A056971 n

end

end A324062.P6725627330227909927

/-! ## A324062.P10429031930355628498

`abs(A056971(n)*A127365(n))`
-/

namespace A324062.P10429031930355628498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056971 n * A127365 n|

end

end A324062.P10429031930355628498

/-! ## A324062.P11416748827756182852

`A056971(n)*A110657(A014601(n))`
-/

namespace A324062.P11416748827756182852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056971 n * A110657 (A014601 n).toNat

end

end A324062.P11416748827756182852

/-! ## A324062.P427558396330947470

`(A008619(n)-1)*lcm(A056971(n), A071625(n+1))`
-/

namespace A324062.P427558396330947470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n - 1) * (Int.lcm (A056971 n) (A071625 (n + 1)) : ℤ)

end

end A324062.P427558396330947470

/-! ## A324062.P7971587307096662615

`A004526(n)*A306343(A000217(n))`
-/

namespace A324062.P7971587307096662615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A306343 (A000217 n).toNat

end

end A324062.P7971587307096662615

/-!
# A324063: Number of defective (binary) heaps on n elements where two ancestor-successor pairs do not have the correct order.

The programs for A324063, there is no canonical definition to state claims against.
-/

/-! ## A324063.P11327397086358304985

`A056971(n)*A106457(A056971(n))`
-/

namespace A324063.P11327397086358304985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056971 n * A106457 (A056971 n).toNat

end

end A324063.P11327397086358304985

/-! ## A324063.P11398929791692930075

`A140106(n+1)*A161207(A000083(n))`
-/

namespace A324063.P11398929791692930075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1) * A161207 (A000083 n).toNat

end

end A324063.P11398929791692930075

/-! ## A324063.P8650907481329857253

`n!/A132862(n)*A106457(A273693(∑[n+3]))`
-/

namespace A324063.P8650907481329857253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A132862 n : ℚ) * (A106457 (A273693 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ)

end

end A324063.P8650907481329857253

/-! ## A324063.P14853560805899773645

`n!/A132862(n)*A106457(n!/A132862(n))`
-/

namespace A324063.P14853560805899773645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A132862 n : ℚ) * (A106457 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A132862 n : ℚ))).toNat : ℚ)

end

end A324063.P14853560805899773645

/-!
# A324064: Number of defective (binary) heaps on n elements where three ancestor-successor pairs do not have the correct order.

The programs for A324064, there is no canonical definition to state claims against.
-/

/-! ## A324064.P3883028084298303288

`A002266(xor(n+1, A213226(n)))`
-/

namespace A324064.P3883028084298303288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.xor (n + 1 : ℤ) (A213226 n)).toNat

end

end A324064.P3883028084298303288

/-! ## A324064.P11867023389742157991

`A050725(A054177(n))*A054154(n)`
-/

namespace A324064.P11867023389742157991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050725 ((A054177 n).toNat + 1) * A054154 n

end

end A324064.P11867023389742157991

/-! ## A324064.P7609270549301921323

`A006025(n)%A048760(A000608(n))`
-/

namespace A324064.P7609270549301921323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006025 n) (A048760 (A000608 n).toNat)

end

end A324064.P7609270549301921323

/-! ## A324064.P1545107262746657130

`A002802(n)%A004525(A262164(n))`
-/

namespace A324064.P1545107262746657130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002802 n) (A004525 (A262164 n).toNat)

end

end A324064.P1545107262746657130

/-!
# A324065: Number of defective (binary) heaps on n elements where four ancestor-successor pairs do not have the correct order.

The programs for A324065, there is no canonical definition to state claims against.
-/

/-! ## A324065.P7264074735979868860

`floor(n!/A338595(n+3))`
-/

namespace A324065.P7264074735979868860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℚ) / (A338595 (n + 3) : ℚ)⌋

end

end A324065.P7264074735979868860

/-! ## A324065.P15786796756170690501

`A266193(n!%(n^floor(n-atan(n))))`
-/

namespace A324065.P15786796756170690501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (Int.tmod (Nat.factorial n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)))).toNat

end

end A324065.P15786796756170690501

/-! ## A324065.P3588269408044144703

`A266193(-∏[n-C(2, n+2)]%(n^(abs(1-n)-1)))`
-/

namespace A324065.P3588269408044144703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (Int.tmod (-(∏ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway ((n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ)))).toNat

end

end A324065.P3588269408044144703

/-! ## A324065.P9694832922607063368

`A266193(abs(∏[(2^n)%2-n])%(n^(abs(1-n)-1)))`
-/

namespace A324065.P9694832922607063368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n % 2 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (Int.tmod |∏ j ∈ Finset.range (n + 1), f1 j| (SequenceMachineLib.roundAway ((n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ)))).toNat

end

end A324065.P9694832922607063368

/-!
# A324066: Number of defective (binary) heaps on n elements where five ancestor-successor pairs do not have the correct order.

The programs for A324066, there is no canonical definition to state claims against.
-/

/-! ## A324066.P11784387352650642691

`A070565(A052947(n)!)`
-/

namespace A324066.P11784387352650642691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (Nat.factorial (A052947 n).toNat)

end

end A324066.P11784387352650642691

/-! ## A324066.P9191552097995326894

`A070565(A096748(n)!)`
-/

namespace A324066.P9191552097995326894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (Nat.factorial (A096748 n).toNat)

end

end A324066.P9191552097995326894

/-! ## A324066.P7214961712526757608

`A070565(A241511(n)!)`
-/

namespace A324066.P7214961712526757608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (Nat.factorial (A241511 n).toNat)

end

end A324066.P7214961712526757608

/-! ## A324066.P1496649450177366596

`A070565(A266123(n!))`
-/

namespace A324066.P1496649450177366596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A266123 (Nat.factorial n)).toNat

end

end A324066.P1496649450177366596

/-!
# A324067: Number of defective (binary) heaps on n elements where six ancestor-successor pairs do not have the correct order.

The programs for A324067, there is no canonical definition to state claims against.
-/

/-! ## A324067.P9620847283997079856

`A004275(n)*A339089(A017437(n))`
-/

namespace A324067.P9620847283997079856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n * A339089 (A017437 n).toNat

end

end A324067.P9620847283997079856

/-! ## A324067.P5872314693211249633

`A153808(A153921(n))%A153959(n)`
-/

namespace A324067.P5872314693211249633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153808 (A153921 n).toNat) (A153959 n)

end

end A324067.P5872314693211249633

/-! ## A324067.P4078912710327627784

`A004247(A079809(n+1)%A029725(n))`
-/

namespace A324067.P4078912710327627784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (Int.tmod (A079809 (n + 1)) (A029725 n)).toNat

end

end A324067.P4078912710327627784

/-! ## A324067.P3415985489460650036

`A048764(A030267(n+1))%A144012(n)`
-/

namespace A324067.P3415985489460650036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048764 (A030267 (n + 1)).toNat) (A144012 n)

end

end A324067.P3415985489460650036

/-!
# A324068: Number of defective (binary) heaps on n elements where seven ancestor-successor pairs do not have the correct order.

The programs for A324068, there is no canonical definition to state claims against.
-/

/-! ## A324068.P4983008285129985802

`A326543(∑[floor(n/sqrt(2))!])`
-/

namespace A324068.P4983008285129985802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326543 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324068.P4983008285129985802

/-! ## A324068.P12654533438068122791

`∑{d}[A326680(A094373(n)), #]`
-/

namespace A324068.P12654533438068122791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 (A094373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324068.P12654533438068122791

/-! ## A324068.P13866607783432042291

`A104320(∑[A252897(3*n)])`
-/

namespace A324068.P13866607783432042291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252897 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104320 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324068.P13866607783432042291

/-! ## A324068.P12385344816291178949

`∏[A322740(n+3)]%A056971(n+2)`
-/

namespace A324068.P12385344816291178949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322740 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A056971 (n + 2))

end

end A324068.P12385344816291178949

/-!
# A324069: Number of defective (binary) heaps on n elements where eight ancestor-successor pairs do not have the correct order.

The programs for A324069, there is no canonical definition to state claims against.
-/

/-! ## A324069.P2755238945187427414

`20*A284977(∑[C(n, 4)+1]+2)`
-/

namespace A324069.P2755238945187427414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A284977 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A324069.P2755238945187427414

/-! ## A324069.P1389847545587791527

`20*A285005(∑[C(n, 4)+1]+2)`
-/

namespace A324069.P1389847545587791527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A285005 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A324069.P1389847545587791527

/-! ## A324069.P9591423516834725000

`(n!*(∑[2*n]+1))%Δ[A344661(n+1)]`
-/

namespace A324069.P9591423516834725000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) (f2 (n + 1) - f2 n)

end

end A324069.P9591423516834725000

/-! ## A324069.P13888643665701527855

`A108804(A058836(n))`
-/

namespace A324069.P13888643665701527855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 (A058836 n).toNat

end

end A324069.P13888643665701527855

/-!
# A324070: Number of defective (binary) heaps on n elements where nine ancestor-successor pairs do not have the correct order.

The programs for A324070, there is no canonical definition to state claims against.
-/

/-! ## A324070.P1023214235557989640

`A328842(∏[A191387(n)])`
-/

namespace A324070.P1023214235557989640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328842 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324070.P1023214235557989640

/-! ## A324070.P9226148846045498568

`A306584(30*A306558(n))`
-/

namespace A324070.P9226148846045498568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306584 (30 * A306558 n).toNat

end

end A324070.P9226148846045498568

/-! ## A324070.P6106939944573840529

`A131452(A058835(abs(1-n)))`
-/

namespace A324070.P6106939944573840529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (A058835 |1 - (n : ℤ)|.toNat).toNat

end

end A324070.P6106939944573840529

/-! ## A324070.P10040864485868417092

`4*A212096(A056370(n+1))`
-/

namespace A324070.P10040864485868417092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A212096 (A056370 (n + 1)).toNat

end

end A324070.P10040864485868417092

/-! ## A324070.P17167460096910004702

`A047420(A058835(abs(1-n))+1)`
-/

namespace A324070.P17167460096910004702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (A058835 |1 - (n : ℤ)|.toNat + 1).toNat

end

end A324070.P17167460096910004702

/-!
# A324071: Number of defective (binary) heaps on n elements where ten ancestor-successor pairs do not have the correct order.

The programs for A324071, there is no canonical definition to state claims against.
-/

/-! ## A324071.P4981858500781205517

`(n+1)*A025444(A020087(n))`
-/

namespace A324071.P4981858500781205517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025444 (A020087 n).toNat

end

end A324071.P4981858500781205517

/-! ## A324071.P1106056509105944026

`A058187(n)*A205295(n+8)`
-/

namespace A324071.P1106056509105944026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 n * A205295 (n + 8)

end

end A324071.P1106056509105944026

/-! ## A324071.P7368821823407578433

`A184955(n+8)*A210736(n)`
-/

namespace A324071.P7368821823407578433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (n + 8) * A210736 n

end

end A324071.P7368821823407578433

/-! ## A324071.P17410608564398688209

`A025444(A020087(n))*A106746(n)`
-/

namespace A324071.P17410608564398688209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A020087 n).toNat * A106746 n

end

end A324071.P17410608564398688209

/-! ## A324071.P1625722199166351955

`A074012(A036440(n+1))*A194050(n+1)`
-/

namespace A324071.P1625722199166351955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074012 (A036440 (n + 1)).toNat * A194050 (n + 1)

end

end A324071.P1625722199166351955

/-!
# A324072: For any composite number k take the polynomial defined by the product of the terms (x-d_i), where d_i are the aliquot parts of k. Integrate this polynomial from the minimum to the maximum value of d_i. Sequence lists the numbers k for which the integral is a positive integer.

The programs for A324072, there is no canonical definition to state claims against.
-/

/-! ## A324072.P5534342475585453548

`A259282(lt[A383094(n), A055396(3*n+2)])`
-/

namespace A324072.P5534342475585453548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259282 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324072.P5534342475585453548

/-! ## A324072.P11147269185903279648

`A259282(A131437(n+1)%A179386(3*n+2))`
-/

namespace A324072.P11147269185903279648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259282 (Int.tmod (A131437 (n + 1)) (A179386 (3 * n + 2))).toNat

end

end A324072.P11147269185903279648

/-!
# A324074: Total number of distorted ancestor-successor pairs in all defective (binary) heaps on n elements.

The programs for A324074, there is no canonical definition to state claims against.
-/

/-! ## A324074.P10172446813350619332

`∑[floor(log2(n²/(n+1)+1))]/2*n!`
-/

namespace A324074.P10172446813350619332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((n ^ 2 : ℚ) / (n + 1 : ℚ) + 1 : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A324074.P10172446813350619332

/-! ## A324074.P2602748798646977042

`∑[A000523(A028310(n))]*A001710(n)`
-/

namespace A324074.P2602748798646977042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001710 n

end

end A324074.P2602748798646977042

/-! ## A324074.P15237361526147567222

`∑[A000523(A004277(n)-n)]*A001710(n)`
-/

namespace A324074.P15237361526147567222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001710 n

end

end A324074.P15237361526147567222

/-! ## A324074.P7686976089111169850

`∑[A000523(A072376(2*n+1))]*A001710(n)`
-/

namespace A324074.P7686976089111169850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A072376 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001710 n

end

end A324074.P7686976089111169850

/-! ## A324074.P6815014335630511183

`∑[A000523(1-A000120(n)+n)]*A001710(n)`
-/

namespace A324074.P6815014335630511183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (1 - A000120 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001710 n

end

end A324074.P6815014335630511183

/-! ## A324074.P2773161878933563404

`(∑[A000523(n+1)]-A000523(n+1))*A001710(n)`
-/

namespace A324074.P2773161878933563404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A000523 (n + 1)) * A001710 n

end

end A324074.P2773161878933563404

/-!
# A324076: Integers which are the sum of distinct primes of the form 6*n - 1.

The programs for A324076, there is no canonical definition to state claims against.
-/

/-! ## A324076.P14538396366615641098

`comp[A048264(n+1)-1]+1`
-/

namespace A324076.P14538396366615641098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048264 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324076.P14538396366615641098

/-!
# A324077: One of the four successive approximations up to 13^n for the 13-adic integer 3^(1/4). This is the 2 (mod 13) case (except for n = 0).

The programs for A324077, there is no canonical definition to state claims against.
-/

/-! ## A324077.P5588894391524706479

`A286840(n)+A286841(n)-A324084(n)`
-/

namespace A324077.P5588894391524706479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 n + (A286841 n - A324084 n)

end

end A324077.P5588894391524706479

/-! ## A324077.P15625379601258349635

`A322085(n)+A322086(n)-A324084(n)`
-/

namespace A324077.P15625379601258349635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322085 n + (A322086 n - A324084 n)

end

end A324077.P15625379601258349635

/-! ## A324077.P18046022179841295460

`A322089(n)+A322090(n)-A324084(n)`
-/

namespace A324077.P18046022179841295460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322089 n + (A322090 n - A324084 n)

end

end A324077.P18046022179841295460

/-! ## A324077.P243679127525183024

`A324082(n)+A324083(n)-A324084(n)`
-/

namespace A324077.P243679127525183024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324082 n + (A324083 n - A324084 n)

end

end A324077.P243679127525183024

/-! ## A324077.P8842492389390717690

`A322086(n)+A324084(n)²%A001022(n)-A324084(n)`
-/

namespace A324077.P8842492389390717690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322086 n + (Int.tmod (A324084 n ^ 2) (A001022 n) - A324084 n)

end

end A324077.P8842492389390717690

/-!
# A324078: a(0) = 1, followed by pairs (value of rarest term, multiplicity of that value). Choose the least value of rarest term if there is a tie.

The programs for A324078, there is no canonical definition to state claims against.
-/

/-! ## A324078.P16192555496669372037

`A324079(A014681(n))`
-/

namespace A324078.P16192555496669372037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (A014681 n).toNat

end

end A324078.P16192555496669372037

/-! ## A324078.P3780317948760397929

`A324079(A062157(n)+n)`
-/

namespace A324078.P3780317948760397929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (A062157 n + (n : ℤ)).toNat

end

end A324078.P3780317948760397929

/-! ## A324078.P8537116204977396628

`A324079(abs(n-A033999(n)))`
-/

namespace A324078.P8537116204977396628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 |(n : ℤ) - A033999 n|.toNat

end

end A324078.P8537116204977396628

/-! ## A324078.P5889746513877679608

`A324079(A065190(n+1)-1)`
-/

namespace A324078.P5889746513877679608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (A065190 (n + 1) - 1).toNat

end

end A324078.P5889746513877679608

/-! ## A324078.P13015555957151296394

`A324079((A086970(n)-1)/2)`
-/

namespace A324078.P13015555957151296394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (SequenceMachineLib.roundAway ((A086970 n - 1 : ℚ) / 2)).toNat

end

end A324078.P13015555957151296394

/-! ## A324078.P6347354114834653758

`A324079(A306277(n+1)%A005408(n))`
-/

namespace A324078.P6347354114834653758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (Int.tmod (A306277 (n + 1)) (A005408 n)).toNat

end

end A324078.P6347354114834653758

/-! ## A324078.P78454629719526078

`A324079(A016777(n)%A016825(A123108(n)))`
-/

namespace A324078.P78454629719526078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (Int.tmod (A016777 n) (A016825 (A123108 n).toNat)).toNat

end

end A324078.P78454629719526078

/-! ## A324078.P7540238439972527650

`A324079(-xor(A001057(2*n), A057427(n)))`
-/

namespace A324078.P7540238439972527650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (-Int.xor (A001057 (2 * n)) (A057427 n)).toNat

end

end A324078.P7540238439972527650

/-! ## A324078.P7928963435802132024

`A324079(A028242(A086970(n)))`
-/

namespace A324078.P7928963435802132024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (A028242 (A086970 n).toNat).toNat

end

end A324078.P7928963435802132024

/-! ## A324078.P7112053997975821904

`A324079(A319289(n*(n+3)))`
-/

namespace A324078.P7112053997975821904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (A319289 (n * (n + 3))).toNat

end

end A324078.P7112053997975821904

/-!
# A324079: a(0) = 1, followed by pairs (multiplicity of rarest term, value of that term). Choose the least value of rarest term if there is a tie.

The programs for A324079, there is no canonical definition to state claims against.
-/

/-! ## A324079.P16288505732835947649

`A324078(A014681(n))`
-/

namespace A324079.P16288505732835947649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (A014681 n).toNat

end

end A324079.P16288505732835947649

/-! ## A324079.P16942538788982531587

`A324078(A062157(n)+n)`
-/

namespace A324079.P16942538788982531587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (A062157 n + (n : ℤ)).toNat

end

end A324079.P16942538788982531587

/-! ## A324079.P14789153885098080081

`A324078(A065190(1+n)-1)`
-/

namespace A324079.P14789153885098080081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (A065190 (1 + n) - 1).toNat

end

end A324079.P14789153885098080081

/-! ## A324079.P6045672245887101609

`A324078(2*A131055(n+1)-(n+1))`
-/

namespace A324079.P6045672245887101609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (2 * A131055 (n + 1) - (n + 1 : ℤ)).toNat

end

end A324079.P6045672245887101609

/-! ## A324079.P12700495288937422167

`A324078(A005408(n)-A114112(n+1))`
-/

namespace A324079.P12700495288937422167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (A005408 n - A114112 (n + 1)).toNat

end

end A324079.P12700495288937422167

/-! ## A324079.P4453527410373453276

`A324078(A131055(n+1)+A131055(n+1)-(n+1))`
-/

namespace A324079.P4453527410373453276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (A131055 (n + 1) + (A131055 (n + 1) - (n + 1 : ℤ))).toNat

end

end A324079.P4453527410373453276

/-! ## A324079.P17743158655407696356

`A324078(A114112(n+2)-2)`
-/

namespace A324079.P17743158655407696356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (A114112 (n + 2) - 2).toNat

end

end A324079.P17743158655407696356

/-!
# A324080: a(n) is the rarest values appearing recorded in n-th pair in A324078.

The programs for A324080, there is no canonical definition to state claims against.
-/

/-! ## A324080.P16084314423292437525

`A324079(2*(n+1))`
-/

namespace A324080.P16084314423292437525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (2 * (n + 1))

end

end A324080.P16084314423292437525

/-! ## A324080.P12303273269365500102

`A324078(2*(n+1)-1)`
-/

namespace A324080.P12303273269365500102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (2 * (n + 1) - 1)

end

end A324080.P12303273269365500102

/-! ## A324080.P13349525883893359596

`A324078(2*n+1)%(n+2)`
-/

namespace A324080.P13349525883893359596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324078 (2 * n + 1)) (n + 2 : ℤ)

end

end A324080.P13349525883893359596

/-! ## A324080.P14063905055216501376

`A000027(A324078(2*n+1))`
-/

namespace A324080.P14063905055216501376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A324078 (2 * n + 1)).toNat

end

end A324080.P14063905055216501376

/-! ## A324080.P525105326070365369

`A004526(2*A324078(2*n+1))`
-/

namespace A324080.P525105326070365369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A324078 (2 * n + 1)).toNat

end

end A324080.P525105326070365369

/-! ## A324080.P10198753553994600605

`A057427(n+1)*A324078(2*n+1)`
-/

namespace A324080.P10198753553994600605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A324078 (2 * n + 1)

end

end A324080.P10198753553994600605

/-! ## A324080.P14705691898183939635

`A324078(n+1+n)/round(1/A040000(n))`
-/

namespace A324080.P14705691898183939635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324078 (n + 1 + n) : ℚ) / (SequenceMachineLib.roundAway (1 / (A040000 n : ℚ)) : ℚ)

end

end A324080.P14705691898183939635

/-! ## A324080.P3076191237490998768

`A064429(A064429(A324078(n+1+n)))`
-/

namespace A324080.P3076191237490998768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A064429 (A324078 (n + 1 + n)).toNat).toNat

end

end A324080.P3076191237490998768

/-! ## A324080.P8280092389381589831

`gcd(∏[A324078(2*n)], A324078(2*n+1))`
-/

namespace A324080.P8280092389381589831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A324078 (2 * n + 1))

end

end A324080.P8280092389381589831

/-!
# A324081: a(n) is the multiplicity of the rarest values appearing recorded in n-th pair in A324078.

The programs for A324081, there is no canonical definition to state claims against.
-/

/-! ## A324081.P8286436848320665313

`A324078(2*(n+1))`
-/

namespace A324081.P8286436848320665313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (2 * (n + 1))

end

end A324081.P8286436848320665313

/-! ## A324081.P16632536452298812215

`A324079(2*(n+1)-1)`
-/

namespace A324081.P16632536452298812215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324079 (2 * (n + 1) - 1)

end

end A324081.P16632536452298812215

/-! ## A324081.P17453770068536764721

`A324079(2*n+1)%(n+3)`
-/

namespace A324081.P17453770068536764721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324079 (2 * n + 1)) (n + 3 : ℤ)

end

end A324081.P17453770068536764721

/-! ## A324081.P18225169640949316557

`A000027(A324079(2*n+1))`
-/

namespace A324081.P18225169640949316557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A324079 (2 * n + 1)).toNat

end

end A324081.P18225169640949316557

/-! ## A324081.P1437386656235577157

`A324078(A103517(n))%(n+4)`
-/

namespace A324081.P1437386656235577157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324078 (A103517 n).toNat) (n + 4 : ℤ)

end

end A324081.P1437386656235577157

/-! ## A324081.P16353140122581836894

`A324078(A317440(n+1))%(n+4)`
-/

namespace A324081.P16353140122581836894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324078 (A317440 (n + 1)).toNat) (n + 4 : ℤ)

end

end A324081.P16353140122581836894

/-! ## A324081.P9921433071037749036

`A064429(A064429(A324079(n+1+n)))`
-/

namespace A324081.P9921433071037749036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A064429 (A324079 (n + 1 + n)).toNat).toNat

end

end A324081.P9921433071037749036

/-! ## A324081.P8896818657540194831

`A324079(n+1+n)/A001222(A216745(n+1))`
-/

namespace A324081.P8896818657540194831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324079 (n + 1 + n) : ℚ) / (A001222 (A216745 (n + 1)).toNat : ℚ)

end

end A324081.P8896818657540194831

/-!
# A324082: One of the four successive approximations up to 13^n for the 13-adic integer 3^(1/4). This is the 3 (mod 13) case (except for n = 0).

The programs for A324082, there is no canonical definition to state claims against.
-/

/-! ## A324082.P8722672576052431279

`A286840(n)+A286841(n)-A324083(n)`
-/

namespace A324082.P8722672576052431279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 n + (A286841 n - A324083 n)

end

end A324082.P8722672576052431279

/-! ## A324082.P6682683303555845886

`A322085(n)+A322086(n)-A324083(n)`
-/

namespace A324082.P6682683303555845886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322085 n + (A322086 n - A324083 n)

end

end A324082.P6682683303555845886

/-! ## A324082.P13392965075855306901

`A322089(n)+A322090(n)-A324083(n)`
-/

namespace A324082.P13392965075855306901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322089 n + (A322090 n - A324083 n)

end

end A324082.P13392965075855306901

/-! ## A324082.P9652615890397194962

`A324077(n)+A324084(n)-A324083(n)`
-/

namespace A324082.P9652615890397194962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324077 n + (A324084 n - A324083 n)

end

end A324082.P9652615890397194962

/-!
# A324083: One of the four successive approximations up to 13^n for the 13-adic integer 3^(1/4). This is the 10 (mod 13) case (except for n = 0).

The programs for A324083, there is no canonical definition to state claims against.
-/

/-! ## A324083.P1266302425392148289

`A286840(n)+A286841(n)-A324082(n)`
-/

namespace A324083.P1266302425392148289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 n + (A286841 n - A324082 n)

end

end A324083.P1266302425392148289

/-! ## A324083.P10919471281728029928

`A322085(n)+A322086(n)-A324082(n)`
-/

namespace A324083.P10919471281728029928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322085 n + (A322086 n - A324082 n)

end

end A324083.P10919471281728029928

/-! ## A324083.P12106022101471074686

`A322089(n)+A322090(n)-A324082(n)`
-/

namespace A324083.P12106022101471074686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322089 n + (A322090 n - A324082 n)

end

end A324083.P12106022101471074686

/-! ## A324083.P5783877022846988680

`A324077(n)+A324084(n)-A324082(n)`
-/

namespace A324083.P5783877022846988680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324077 n + (A324084 n - A324082 n)

end

end A324083.P5783877022846988680

/-! ## A324083.P70458355477368084

`A322086(n)+A324084(n)²%A001022(n)-A324082(n)`
-/

namespace A324083.P70458355477368084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322086 n + (Int.tmod (A324084 n ^ 2) (A001022 n) - A324082 n)

end

end A324083.P70458355477368084

/-!
# A324084: One of the four successive approximations up to 13^n for the 13-adic integer 3^(1/4). This is the 11 (mod 13) case (except for n = 0).

The programs for A324084, there is no canonical definition to state claims against.
-/

/-! ## A324084.P17045589348973233596

`A286840(n)+A286841(n)-A324077(n)`
-/

namespace A324084.P17045589348973233596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286840 n + (A286841 n - A324077 n)

end

end A324084.P17045589348973233596

/-! ## A324084.P9147669808730641334

`A322085(n)+A322086(n)-A324077(n)`
-/

namespace A324084.P9147669808730641334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322085 n + (A322086 n - A324077 n)

end

end A324084.P9147669808730641334

/-! ## A324084.P8780452896247699074

`A322089(n)+A322090(n)-A324077(n)`
-/

namespace A324084.P8780452896247699074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322089 n + (A322090 n - A324077 n)

end

end A324084.P8780452896247699074

/-! ## A324084.P15763996157567910448

`A324082(n)+A324083(n)-A324077(n)`
-/

namespace A324084.P15763996157567910448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324082 n + (A324083 n - A324077 n)

end

end A324084.P15763996157567910448

/-!
# A324085: Digits of one of the four 3-adic integers 3^(1/4) that is congruent to 2 mod 13.

The programs for A324085, there is no canonical definition to state claims against.
-/

/-! ## A324085.P2091183717402291571

`(A324077(n+1)-A324077(n))/13^n`
-/

namespace A324085.P2091183717402291571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324077 (n + 1) - A324077 n : ℚ) / (13 ^ n : ℚ)

end

end A324085.P2091183717402291571

/-! ## A324085.P12522467403002244137

`ceil(acot(n)+11-A324153(n))`
-/

namespace A324085.P12522467403002244137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) + (11 - A324153 n : ℝ)⌉

end

end A324085.P12522467403002244137

/-! ## A324085.P11306902584657811395

`12-A324153(round(sqrt(n²+1)))`
-/

namespace A324085.P11306902584657811395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - A324153 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A324085.P11306902584657811395

/-! ## A324085.P10477054155337076100

`A054977(n)+11-A324153(n)`
-/

namespace A324085.P10477054155337076100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (11 - A324153 n)

end

end A324085.P10477054155337076100

/-! ## A324085.P11389018448706140818

`14-(A324153(n)+A040000(n))`
-/

namespace A324085.P11389018448706140818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 - (A324153 n + A040000 n)

end

end A324085.P11389018448706140818

/-! ## A324085.P1495337230640713884

`A000038(n)!+11-A324153(n)`
-/

namespace A324085.P1495337230640713884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) + (11 - A324153 n)

end

end A324085.P1495337230640713884

/-! ## A324085.P2203886742414868979

`A014963(4*n+2)+11-A324153(n)`
-/

namespace A324085.P2203886742414868979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) + (11 - A324153 n)

end

end A324085.P2203886742414868979

/-! ## A324085.P12949526440210960192

`A000041(C(2, n+1))+11-A324153(n)`
-/

namespace A324085.P12949526440210960192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) + (11 - A324153 n)

end

end A324085.P12949526440210960192

/-! ## A324085.P17881933296832172791

`A015966(a(n-1))+11-A324153(n)` with `a(0)=2`
-/

namespace A324085.P17881933296832172791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A015966 (a (n - 1)).toNat + (11 - A324153 n)

end

end A324085.P17881933296832172791

/-! ## A324085.P13102117488734657759

`A015970(a(n-1))+11-A324153(n)` with `a(0)=2`
-/

namespace A324085.P13102117488734657759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A015970 (a (n - 1)).toNat + (11 - A324153 n)

end

end A324085.P13102117488734657759

/-!
# A324086: Digits of one of the four 3-adic integers 3^(1/4) that is congruent to 3 mod 13.

The programs for A324086, there is no canonical definition to state claims against.
-/

/-! ## A324086.P5602986970149138680

`(A324082(n+1)-A324082(n))/13^n`
-/

namespace A324086.P5602986970149138680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324082 (n + 1) - A324082 n : ℚ) / (13 ^ n : ℚ)

end

end A324086.P5602986970149138680

/-! ## A324086.P11353711848067906487

`floor(acot(n))+12-A324087(n)`
-/

namespace A324086.P11353711848067906487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (12 - A324087 n)

end

end A324086.P11353711848067906487

/-! ## A324086.P1595211740804761665

`A000007(n)+12-A324087(n)`
-/

namespace A324086.P1595211740804761665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (12 - A324087 n)

end

end A324086.P1595211740804761665

/-! ## A324086.P17314683782227589377

`A151933(n)+12-A324087(n)`
-/

namespace A324086.P17314683782227589377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + (12 - A324087 n)

end

end A324086.P17314683782227589377

/-! ## A324086.P5310110281928844632

`char[∑[A163196(n)]]+12-A324087(n)`
-/

namespace A324086.P5310110281928844632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (12 - A324087 n)

end

end A324086.P5310110281928844632

/-! ## A324086.P13437370552140652421

`C(2, comp[A000032(n)])+12-A324087(n)`
-/

namespace A324086.P13437370552140652421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ) + (12 - A324087 n)

end

end A324086.P13437370552140652421

/-! ## A324086.P8710913659386462435

`A000045(C(2, n+2))+12-A324087(n)`
-/

namespace A324086.P8710913659386462435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (12 - A324087 n)

end

end A324086.P8710913659386462435

/-! ## A324086.P18019764094505600031

`12-A324087(n)-A008683(2*(n+1)²)`
-/

namespace A324086.P18019764094505600031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - A324087 n - A008683 (2 * (n + 1) ^ 2)

end

end A324086.P18019764094505600031

/-! ## A324086.P17163059532241936970

`13-A324087(n)-record[A006530(n+2)]%2`
-/

namespace A324086.P17163059532241936970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - A324087 n - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A324086.P17163059532241936970

/-! ## A324086.P12350384230714535425

`A322088(n)+A322087(n)-A324087(n)`
-/

namespace A324086.P12350384230714535425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322088 n + A322087 n - A324087 n

end

end A324086.P12350384230714535425

/-!
# A324087: Digits of one of the four 3-adic integers 3^(1/4) that is congruent to 10 mod 13.

The programs for A324087, there is no canonical definition to state claims against.
-/

/-! ## A324087.P16270303696485954652

`(A324083(n+1)-A324083(n))/13^n`
-/

namespace A324087.P16270303696485954652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324083 (n + 1) - A324083 n : ℚ) / (13 ^ n : ℚ)

end

end A324087.P16270303696485954652

/-! ## A324087.P9822118397094084521

`floor(acot(n))+12-A324086(n)`
-/

namespace A324087.P9822118397094084521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (12 - A324086 n)

end

end A324087.P9822118397094084521

/-! ## A324087.P13678754065787656368

`A000007(n)+12-A324086(n)`
-/

namespace A324087.P13678754065787656368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (12 - A324086 n)

end

end A324087.P13678754065787656368

/-! ## A324087.P18377813474387322682

`A151878(n)+12-A324086(n)`
-/

namespace A324087.P18377813474387322682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (12 - A324086 n)

end

end A324087.P18377813474387322682

/-! ## A324087.P17619362046715067252

`13-A324086(n)-A057427(n)`
-/

namespace A324087.P17619362046715067252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - A324086 n - A057427 n

end

end A324087.P17619362046715067252

/-! ## A324087.P196111877851083988

`13-A324086(n)-A057428(n)²`
-/

namespace A324087.P196111877851083988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - A324086 n - A057428 n ^ 2

end

end A324087.P196111877851083988

/-! ## A324087.P8933755038385018962

`A001221(ceil(2/(n+1)))+12-A324086(n)`
-/

namespace A324087.P8933755038385018962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈2 / (n + 1 : ℚ)⌉.toNat + (12 - A324086 n)

end

end A324087.P8933755038385018962

/-! ## A324087.P17053467355898905506

`A008683(A008574(n))+12-A324086(n)`
-/

namespace A324087.P17053467355898905506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (12 - A324086 n)

end

end A324087.P17053467355898905506

/-! ## A324087.P17679103680612791390

`A322088(n)+A322087(n)-A324086(n)`
-/

namespace A324087.P17679103680612791390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322088 n + A322087 n - A324086 n

end

end A324087.P17679103680612791390

/-! ## A324087.P414626247966324049

`A324153(n)+A324085(n)-A324086(n)`
-/

namespace A324087.P414626247966324049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324153 n + A324085 n - A324086 n

end

end A324087.P414626247966324049

/-!
# A324088: Number of simple non-isomorphic n-vertex graphs of connectivity 7.

The programs for A324088, there is no canonical definition to state claims against.
-/

/-! ## A324088.P5210164418885994111

`A324092(n+1)-A324093(n+1)`
-/

namespace A324088.P5210164418885994111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324092 (n + 1) - A324093 (n + 1)

end

end A324088.P5210164418885994111

/-! ## A324088.P13673516022717891251

`A324092(n+1)-(A324094(n+1)+A324089(n+1))`
-/

namespace A324088.P13673516022717891251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324092 (n + 1) - (A324094 (n + 1) + A324089 (n + 1))

end

end A324088.P13673516022717891251

/-! ## A324088.P4835615989865503790

`A324240(n+1)-(A324235(n+1)+A324093(n+1))`
-/

namespace A324088.P4835615989865503790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324240 (n + 1) - (A324235 (n + 1) + A324093 (n + 1))

end

end A324088.P4835615989865503790

/-! ## A324088.P5947883273935609674

`A324092(n+1)-(A324089(n+1)+A324095(n+1)+A324090(n+1))`
-/

namespace A324088.P5947883273935609674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324092 (n + 1) - (A324089 (n + 1) + (A324095 (n + 1) + A324090 (n + 1)))

end

end A324088.P5947883273935609674

/-! ## A324088.P4519641232796990917

`A324240(n+1)-(A324235(n+1)+A324094(n+1)+A324089(n+1))`
-/

namespace A324088.P4519641232796990917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324240 (n + 1) - (A324235 (n + 1) + (A324094 (n + 1) + A324089 (n + 1)))

end

end A324088.P4519641232796990917

/-!
# A324089: Number of simple non-isomorphic n-vertex graphs of connectivity 8.

The programs for A324089, there is no canonical definition to state claims against.
-/

/-! ## A324089.P11354829014101102314

`A324093(n+1)-A324094(n+1)`
-/

namespace A324089.P11354829014101102314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324093 (n + 1) - A324094 (n + 1)

end

end A324089.P11354829014101102314

/-! ## A324089.P13264666948430616886

`A324093(n+1)-(A324095(n+1)+A324090(n+1))`
-/

namespace A324089.P13264666948430616886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324093 (n + 1) - (A324095 (n + 1) + A324090 (n + 1))

end

end A324089.P13264666948430616886

/-! ## A324089.P10696520441646418792

`A324092(n+1)-(A324094(n+1)+A324088(n+1))`
-/

namespace A324089.P10696520441646418792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324092 (n + 1) - (A324094 (n + 1) + A324088 (n + 1))

end

end A324089.P10696520441646418792

/-! ## A324089.P15108108834721248638

`A324093(n+1)-(A324090(n+1)+A269852(A011846(n)+1))`
-/

namespace A324089.P15108108834721248638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324093 (n + 1) - (A324090 (n + 1) + A269852 (A011846 n + 1).toNat)

end

end A324089.P15108108834721248638

/-! ## A324089.P15211527189406221067

`A324092(n+1)-(A324088(n+1)+A324095(n+1)+A324090(n+1))`
-/

namespace A324089.P15211527189406221067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324092 (n + 1) - (A324088 (n + 1) + (A324095 (n + 1) + A324090 (n + 1)))

end

end A324089.P15211527189406221067

/-!
# A324090: Number of simple non-isomorphic n-vertex graphs of connectivity 9.

The programs for A324090, there is no canonical definition to state claims against.
-/

/-! ## A324090.P12173549497708991959

`A324094(n+1)-A324095(n+1)`
-/

namespace A324090.P12173549497708991959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324094 (n + 1) - A324095 (n + 1)

end

end A324090.P12173549497708991959

/-! ## A324090.P9613754088334427876

`A324093(n+1)-(A324095(n+1)+A324089(n+1))`
-/

namespace A324090.P9613754088334427876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324093 (n + 1) - (A324095 (n + 1) + A324089 (n + 1))

end

end A324090.P9613754088334427876

/-! ## A324090.P7325789100196494833

`A324094(n+1)-A269852(A011846(n)+1)`
-/

namespace A324090.P7325789100196494833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324094 (n + 1) - A269852 (A011846 n + 1).toNat

end

end A324090.P7325789100196494833

/-! ## A324090.P13871225782031793702

`A324094(n+1)-A004183(∑[A324091(n+1)])`
-/

namespace A324090.P13871225782031793702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324094 (n + 1) - A004183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324090.P13871225782031793702

/-! ## A324090.P12909289671304135879

`A324094(n+1)-∑[A300372(A321172(n+3)+1)]`
-/

namespace A324090.P12909289671304135879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A321172 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324094 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324090.P12909289671304135879

/-!
# A324091: Number of simple non-isomorphic n-vertex graphs of connectivity 10.

The programs for A324091, there is no canonical definition to state claims against.
-/

/-! ## A324091.P7356118921127479141

`Δ[A324095(∑[A136711(n)])]`
-/

namespace A324091.P7356118921127479141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136711 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324095 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324091.P7356118921127479141

/-! ## A324091.P1771713833882063628

`A300372(A321172(n+3)+1)`
-/

namespace A324091.P1771713833882063628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A321172 (n + 3) + 1).toNat

end

end A324091.P1771713833882063628

/-! ## A324091.P16517677496667479485

`A057354(ceil(sqrt(A324095(n+2))))`
-/

namespace A324091.P16517677496667479485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 ⌈Real.sqrt (A324095 (n + 2) : ℝ)⌉.toNat

end

end A324091.P16517677496667479485

/-! ## A324091.P7457636207319914476

`A325262(round(sqrt(A130315(n+1))))`
-/

namespace A324091.P7457636207319914476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325262 (SequenceMachineLib.roundAway (Real.sqrt (A130315 (n + 1) : ℝ))).toNat

end

end A324091.P7457636207319914476

/-! ## A324091.P17982613956938515731

`A057354(round(sqrt(A324095(n+2))))`
-/

namespace A324091.P17982613956938515731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (SequenceMachineLib.roundAway (Real.sqrt (A324095 (n + 2) : ℝ))).toNat

end

end A324091.P17982613956938515731

/-!
# A324092: Number of 7-connected simple non-isomorphic n-vertex graphs.

The programs for A324092, there is no canonical definition to state claims against.
-/

/-! ## A324092.P9553915261932470702

`A324093(n+1)+A324088(n+1)`
-/

namespace A324092.P9553915261932470702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324093 (n + 1) + A324088 (n + 1)

end

end A324092.P9553915261932470702

/-! ## A324092.P16809017672452354483

`A324240(n+1)-A324235(n+1)`
-/

namespace A324092.P16809017672452354483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324240 (n + 1) - A324235 (n + 1)

end

end A324092.P16809017672452354483

/-! ## A324092.P16922871123547189493

`A324088(n+1)+A324094(n+1)+A324089(n+1)`
-/

namespace A324092.P16922871123547189493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (n + 1) + (A324094 (n + 1) + A324089 (n + 1))

end

end A324092.P16922871123547189493

/-! ## A324092.P16068446633838030483

`A324088(n+1)+A324089(n+1)+A324095(n+1)+A324090(n+1)`
-/

namespace A324092.P16068446633838030483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (n + 1) + (A324089 (n + 1) + (A324095 (n + 1) + A324090 (n + 1)))

end

end A324092.P16068446633838030483

/-! ## A324092.P4518618041791098561

`A086217(n+1)-A324234(n+1)-A324235(n+1)`
-/

namespace A324092.P4518618041791098561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086217 (n + 1) - A324234 (n + 1) - A324235 (n + 1)

end

end A324092.P4518618041791098561

/-!
# A324093: Number of 8-connected simple non-isomorphic n-vertex graphs.

The programs for A324093, there is no canonical definition to state claims against.
-/

/-! ## A324093.P2920663403131678927

`A324094(n+1)+A324089(n+1)`
-/

namespace A324093.P2920663403131678927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324094 (n + 1) + A324089 (n + 1)

end

end A324093.P2920663403131678927

/-! ## A324093.P9154003176405469544

`A324089(n+1)+A324095(n+1)+A324090(n+1)`
-/

namespace A324093.P9154003176405469544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324089 (n + 1) + (A324095 (n + 1) + A324090 (n + 1))

end

end A324093.P9154003176405469544

/-! ## A324093.P2686755322307341244

`A324092(n+1)-A324088(n+1)`
-/

namespace A324093.P2686755322307341244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324092 (n + 1) - A324088 (n + 1)

end

end A324093.P2686755322307341244

/-! ## A324093.P3062711006536254781

`A324240(n+1)-(A324235(n+1)+A324088(n+1))`
-/

namespace A324093.P3062711006536254781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324240 (n + 1) - (A324235 (n + 1) + A324088 (n + 1))

end

end A324093.P3062711006536254781

/-! ## A324093.P14688588051278428897

`A324089(n+1)+A324090(n+1)+A269852(A011846(n)+1)`
-/

namespace A324093.P14688588051278428897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324089 (n + 1) + (A324090 (n + 1) + A269852 (A011846 n + 1).toNat)

end

end A324093.P14688588051278428897

/-!
# A324094: Number of 9-connected simple non-isomorphic n-vertex graphs.

The programs for A324094, there is no canonical definition to state claims against.
-/

/-! ## A324094.P3205023410707014984

`A324095(n+1)+A324090(n+1)`
-/

namespace A324094.P3205023410707014984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324095 (n + 1) + A324090 (n + 1)

end

end A324094.P3205023410707014984

/-! ## A324094.P2366444920491767928

`A324093(n+1)-A324089(n+1)`
-/

namespace A324094.P2366444920491767928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324093 (n + 1) - A324089 (n + 1)

end

end A324094.P2366444920491767928

/-! ## A324094.P10636498308440464147

`A324090(n+1)+A269852(A011846(n)+1)`
-/

namespace A324094.P10636498308440464147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324090 (n + 1) + A269852 (A011846 n + 1).toNat

end

end A324094.P10636498308440464147

/-! ## A324094.P11309034408128925642

`A324090(n+1)+∑[A300372(A321172(n+3)+1)]`
-/

namespace A324094.P11309034408128925642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A321172 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324090 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324094.P11309034408128925642

/-! ## A324094.P3119532082271693400

`A324092(n+1)-(A324089(n+1)+A324088(n+1))`
-/

namespace A324094.P3119532082271693400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324092 (n + 1) - (A324089 (n + 1) + A324088 (n + 1))

end

end A324094.P3119532082271693400

/-!
# A324095: Number of 10-connected simple non-isomorphic n-vertex graphs.

The programs for A324095, there is no canonical definition to state claims against.
-/

/-! ## A324095.P1461133843809839674

`A324094(n+1)-A324090(n+1)`
-/

namespace A324095.P1461133843809839674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324094 (n + 1) - A324090 (n + 1)

end

end A324095.P1461133843809839674

/-! ## A324095.P5536794450611645869

`A324093(n+1)-(A324090(n+1)+A324089(n+1))`
-/

namespace A324095.P5536794450611645869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324093 (n + 1) - (A324090 (n + 1) + A324089 (n + 1))

end

end A324095.P5536794450611645869

/-! ## A324095.P7237388813953331309

`A269852(A011846(n)+1)`
-/

namespace A324095.P7237388813953331309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269852 (A011846 n + 1).toNat

end

end A324095.P7237388813953331309

/-! ## A324095.P3068852593283413509

`A004183(∑[A324091(n+1)])`
-/

namespace A324095.P3068852593283413509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324095.P3068852593283413509

/-! ## A324095.P10624440491655469067

`A160017(∑[A324091(n+1)])`
-/

namespace A324095.P10624440491655469067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324095.P10624440491655469067

/-!
# A324096: Number of simple non-isomorphic n-vertex graphs of edge-connectivity 7.

The programs for A324096, there is no canonical definition to state claims against.
-/

/-! ## A324096.P15531072067426206590

`A324230(n+1)-A324231(n+1)`
-/

namespace A324096.P15531072067426206590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324230 (n + 1) - A324231 (n + 1)

end

end A324096.P15531072067426206590

/-! ## A324096.P826322460568322708

`A324229(n+1)-(A324231(n+1)+A241705(n+1))`
-/

namespace A324096.P826322460568322708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324229 (n + 1) - (A324231 (n + 1) + A241705 (n + 1))

end

end A324096.P826322460568322708

/-! ## A324096.P8535750630891105854

`A324230(n+1)-(A324232(n+1)+A324097(n+1))`
-/

namespace A324096.P8535750630891105854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324230 (n + 1) - (A324232 (n + 1) + A324097 (n + 1))

end

end A324096.P8535750630891105854

/-! ## A324096.P3599631537306102361

`A324230(n+1)-(A324097(n+1)+A324233(n+1)+A324098(n+1))`
-/

namespace A324096.P3599631537306102361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324230 (n + 1) - (A324097 (n + 1) + (A324233 (n + 1) + A324098 (n + 1)))

end

end A324096.P3599631537306102361

/-! ## A324096.P11944310545042145649

`A324230(n+1)-(A324097(n+1)+A122639(A338708(n+1)))`
-/

namespace A324096.P11944310545042145649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324230 (n + 1) - (A324097 (n + 1) + A122639 (A338708 (n + 1)).toNat)

end

end A324096.P11944310545042145649

/-!
# A324097: Number of simple non-isomorphic n-vertex graphs of edge-connectivity 8.

The programs for A324097, there is no canonical definition to state claims against.
-/

/-! ## A324097.P15609186154378142751

`A324231(n+1)-A324232(n+1)`
-/

namespace A324097.P15609186154378142751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324231 (n + 1) - A324232 (n + 1)

end

end A324097.P15609186154378142751

/-! ## A324097.P17296621222184647379

`A324231(n+1)-(A324233(n+1)+A324098(n+1))`
-/

namespace A324097.P17296621222184647379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324231 (n + 1) - (A324233 (n + 1) + A324098 (n + 1))

end

end A324097.P17296621222184647379

/-! ## A324097.P17640291185970683945

`A324230(n+1)-(A324232(n+1)+A324096(n+1))`
-/

namespace A324097.P17640291185970683945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324230 (n + 1) - (A324232 (n + 1) + A324096 (n + 1))

end

end A324097.P17640291185970683945

/-! ## A324097.P15731228533291388876

`A324230(n+1)-(A324096(n+1)+A324233(n+1)+A324098(n+1))`
-/

namespace A324097.P15731228533291388876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324230 (n + 1) - (A324096 (n + 1) + (A324233 (n + 1) + A324098 (n + 1)))

end

end A324097.P15731228533291388876

/-! ## A324097.P17476632053191077278

`A324229(n+1)-(A324096(n+1)+A241705(n+1))-A324232(n+1)`
-/

namespace A324097.P17476632053191077278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324229 (n + 1) - (A324096 (n + 1) + A241705 (n + 1)) - A324232 (n + 1)

end

end A324097.P17476632053191077278

/-!
# A324098: Number of simple non-isomorphic n-vertex graphs of edge-connectivity 9.

The programs for A324098, there is no canonical definition to state claims against.
-/

/-! ## A324098.P12680454719948906941

`A324232(n+1)-A324233(n+1)`
-/

namespace A324098.P12680454719948906941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324232 (n + 1) - A324233 (n + 1)

end

end A324098.P12680454719948906941

/-! ## A324098.P12484588688805484664

`A324231(n+1)-(A324233(n+1)+A324097(n+1))`
-/

namespace A324098.P12484588688805484664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324231 (n + 1) - (A324233 (n + 1) + A324097 (n + 1))

end

end A324098.P12484588688805484664

/-! ## A324098.P4987736918290966033

`A324232(n+1)-A004183(∑[A324099(n+1)])`
-/

namespace A324098.P4987736918290966033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324232 (n + 1) - A004183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324098.P4987736918290966033

/-! ## A324098.P9837030357772513438

`A324232(n+1)-A106612(∑[A324099(n+1)])`
-/

namespace A324098.P9837030357772513438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324232 (n + 1) - A106612 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324098.P9837030357772513438

/-! ## A324098.P133707970429460342

`A324230(n+1)-A324096(n+1)-(A324233(n+1)+A324097(n+1))`
-/

namespace A324098.P133707970429460342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324230 (n + 1) - A324096 (n + 1) - (A324233 (n + 1) + A324097 (n + 1))

end

end A324098.P133707970429460342

/-!
# A324099: Number of simple non-isomorphic n-vertex graphs of edge-connectivity 10.

The programs for A324099, there is no canonical definition to state claims against.
-/

/-! ## A324099.P7278261072896631484

`A324661(C(round(C(n, 3)/(2*(n+1))), 5))`
-/

namespace A324099.P7278261072896631484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324661 (Nat.choose (SequenceMachineLib.roundAway ((Nat.choose n 3 : ℚ) / (2 * (n + 1) : ℚ))).toNat 5)

end

end A324099.P7278261072896631484

/-! ## A324099.P10846669776816963132

`A239467(A011846(n)+2)`
-/

namespace A324099.P10846669776816963132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239467 (A011846 n + 2).toNat

end

end A324099.P10846669776816963132

/-! ## A324099.P16377646312138325776

`A054900(Δ[A000931(n)!])`
-/

namespace A324099.P16377646312138325776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000931 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A324099.P16377646312138325776

/-! ## A324099.P2118178156186646948

`A054900(Δ[A134727(n+1)!])`
-/

namespace A324099.P2118178156186646948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A134727 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A324099.P2118178156186646948

/-! ## A324099.P7645610372672968251

`A008676(A000330(∑[floor(n/9)]!))`
-/

namespace A324099.P7645610372672968251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A000330 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)).toNat

end

end A324099.P7645610372672968251

