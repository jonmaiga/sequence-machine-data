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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A264700: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 5.

The programs for A264700, there is no canonical definition to state claims against.
-/

/-! ## A264700.P11871471172149292871

`A264698(∑[n+2]+4)`
-/

namespace A264700.P11871471172149292871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264698 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264700.P11871471172149292871

/-! ## A264700.P13784019539706709343

`record[A010054(n)*A264698(n+3)]`
-/

namespace A264700.P13784019539706709343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264698 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264700.P13784019539706709343

/-! ## A264700.P2700257224743946590

`record[A264698(n+4)*A352988(n)]`
-/

namespace A264700.P2700257224743946590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264698 (n + 4) * A352988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264700.P2700257224743946590

/-!
# A264701: Number of n X 1 arrays of permutations of 0..n-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 6.

The programs for A264701, the canonical program `A264701.P14577626953603396104` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264701 has offset 1).

The definition of A264701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264701.P6907366735353794200

`∏[∑[char[6*n]]]`
-/

namespace A264701.P6907366735353794200
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A264701.P6907366735353794200

namespace A264701

/-- `∏[∑[char[6*n]]]` -/
def P6907366735353794200.Spec : Prop :=
  ∀ n, (P6907366735353794200.a n : ℤ) = A264701 (n + 1)

end A264701

/-! ## A264701.P3861678741911466482

`a(n-1)*∑[char[6*n]]` with `a(0)=1`
-/

namespace A264701.P3861678741911466482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264701.P3861678741911466482

namespace A264701

/-- `a(n-1)*∑[char[6*n]]` -/
def P3861678741911466482.Spec : Prop :=
  ∀ n, (P3861678741911466482.a n : ℤ) = A264701 (n + 1)

end A264701

/-! ## A264701.P14577626953603396104

`(floor(n/6)+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A264701

/-- `(floor(n/6)+1)*a(n-1)` -/
def P14577626953603396104.Spec : Prop :=
  ∀ n, P14577626953603396104.a n = A264701 (n + 1)

theorem P14577626953603396104.correct : P14577626953603396104.Spec := by
  intro n
  simp only [A264701, Nat.add_sub_cancel]

end A264701

/-! ## A264701.P15692414265975777345

`abs(∏[-A097992(n)])`
-/

namespace A264701.P15692414265975777345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A097992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A264701.P15692414265975777345

namespace A264701

/-- `abs(∏[-A097992(n)])` -/
def P15692414265975777345.Spec : Prop :=
  ∀ n, P15692414265975777345.a n = A264701 (n + 1)

end A264701

/-! ## A264701.P1809466653977979548

`or(∏[A097992(n)], A000007(n))`
-/

namespace A264701.P1809466653977979548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∏ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A264701.P1809466653977979548

namespace A264701

/-- `or(∏[A097992(n)], A000007(n))` -/
def P1809466653977979548.Spec : Prop :=
  ∀ n, P1809466653977979548.a n = A264701 (n + 1)

end A264701

/-! ## A264701.P18062913766260485838

`abs(∏[A001057(A103221(2*n))])`
-/

namespace A264701.P18062913766260485838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A103221 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A264701.P18062913766260485838

namespace A264701

/-- `abs(∏[A001057(A103221(2*n))])` -/
def P18062913766260485838.Spec : Prop :=
  ∀ n, P18062913766260485838.a n = A264701 (n + 1)

end A264701

/-! ## A264701.P12670721046669629428

`A000007(n+1)+∏[A008619(A002264(n))]`
-/

namespace A264701.P12670721046669629428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A264701.P12670721046669629428

namespace A264701

/-- `A000007(n+1)+∏[A008619(A002264(n))]` -/
def P12670721046669629428.Spec : Prop :=
  ∀ n, P12670721046669629428.a n = A264701 (n + 1)

end A264701

/-! ## A264701.P4039676172700179425

`∏[A097992(n+1)]/A097992(n+1)`
-/

namespace A264701.P4039676172700179425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A097992 (n + 1) : ℚ)

end

end A264701.P4039676172700179425

namespace A264701

/-- `∏[A097992(n+1)]/A097992(n+1)` -/
def P4039676172700179425.Spec : Prop :=
  ∀ n, P4039676172700179425.a n = (A264701 (n + 1) : ℚ)

end A264701

/-!
# A264702: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 6.

The programs for A264702, there is no canonical definition to state claims against.
-/

/-! ## A264702.P9855628685240546098

`A264704(∑[n+2])`
-/

namespace A264702.P9855628685240546098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264702.P9855628685240546098

/-! ## A264702.P8763538243632570839

`record[A264704(∑[gcd(xor(1, n²), ∑[n])])]`
-/

namespace A264702.P8763538243632570839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264704 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264702.P8763538243632570839

/-! ## A264702.P10595714092333435751

`record[A264704(∑[A152271(n)])]`
-/

namespace A264702.P10595714092333435751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264704 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264702.P10595714092333435751

/-!
# A264703: Number of nX3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 6.

The programs for A264703, there is no canonical definition to state claims against.
-/

/-! ## A264703.P9585873517551610989

`A264704(∑[n+3]+1)`
-/

namespace A264703.P9585873517551610989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264704 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264703.P9585873517551610989

/-! ## A264703.P13186913902151430549

`A264704(A101881(2*(n+1)))%A029808(n+3)`
-/

namespace A264703.P13186913902151430549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264704 (A101881 (2 * (n + 1))).toNat) (A029808 (n + 3))

end

end A264703.P13186913902151430549

/-!
# A264705: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 6.

The programs for A264705, there is no canonical definition to state claims against.
-/

/-! ## A264705.P3265952789348655553

`A264704(∑[n+1]+2)`
-/

namespace A264705.P3265952789348655553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264704 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264705.P3265952789348655553

/-! ## A264705.P11201243740535096274

`record[A264704(n+1)/A162975(n)]`
-/

namespace A264705.P11201243740535096274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264704 (n + 1) : ℚ) / (A162975 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264705.P11201243740535096274

/-! ## A264705.P15639805189517074126

`record[A264704(n+2)*A294580(n)]`
-/

namespace A264705.P15639805189517074126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264704 (n + 2) * A294580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264705.P15639805189517074126

/-! ## A264705.P8093810192315582257

`record[A127244(n)*A264704(n+3)]`
-/

namespace A264705.P8093810192315582257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n * A264704 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264705.P8093810192315582257

/-!
# A264706: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 6.

The programs for A264706, there is no canonical definition to state claims against.
-/

/-! ## A264706.P12894826466607854157

`A264704(∑[n+2]+4)`
-/

namespace A264706.P12894826466607854157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264704 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264706.P12894826466607854157

/-! ## A264706.P4911745520910641373

`lcm((-1)^n, A264704(A167614(n+1)))`
-/

namespace A264706.P4911745520910641373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A264704 (A167614 (n + 1)).toNat)

end

end A264706.P4911745520910641373

/-! ## A264706.P16914682880774605452

`A264704(A167614(n+1))+A025442(n)`
-/

namespace A264706.P16914682880774605452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264704 (A167614 (n + 1)).toNat + A025442 n

end

end A264706.P16914682880774605452

/-!
# A264707: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 6.

The programs for A264707, there is no canonical definition to state claims against.
-/

/-! ## A264707.P7412576492772225923

`A264709(∑[n+2])`
-/

namespace A264707.P7412576492772225923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264707.P7412576492772225923

/-! ## A264707.P13446310433578448415

`A264709(A000096(n+1))+A002839(n+1)`
-/

namespace A264707.P13446310433578448415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264709 (A000096 (n + 1)).toNat + A002839 (n + 1)

end

end A264707.P13446310433578448415

/-! ## A264707.P13868762332169562941

`A264709(A000096(n+1))+A217152(n+1)`
-/

namespace A264707.P13868762332169562941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264709 (A000096 (n + 1)).toNat + A217152 (n + 1)

end

end A264707.P13868762332169562941

/-!
# A264708: Number of nX3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 6.

The programs for A264708, there is no canonical definition to state claims against.
-/

/-! ## A264708.P10640537366537363120

`A264709(∑[n+3]+1)`
-/

namespace A264708.P10640537366537363120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264709 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264708.P10640537366537363120

/-! ## A264708.P544838304023976161

`record[A264709(A101881(n))]`
-/

namespace A264708.P544838304023976161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264709 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264708.P544838304023976161

/-!
# A264709: T(n,k)=Number of nXk arrays of permutations of 0..n*k-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 6.

The programs for A264709, there is no canonical definition to state claims against.
-/

/-! ## A264709.P6606109828018117720

`A363130(A264643(n+1))`
-/

namespace A264709.P6606109828018117720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363130 (A264643 (n + 1)).toNat

end

end A264709.P6606109828018117720

/-! ## A264709.P8438693752336849941

`A010078(A264818(n+1))%A057178(n+1)`
-/

namespace A264709.P8438693752336849941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010078 (A264818 (n + 1)).toNat) (A057178 (n + 1))

end

end A264709.P8438693752336849941

/-! ## A264709.P15071473838463025989

`A264818(n+1)+A264558(n+1)%A264818(n+1)`
-/

namespace A264709.P15071473838463025989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264818 (n + 1) + Int.tmod (A264558 (n + 1)) (A264818 (n + 1))

end

end A264709.P15071473838463025989

/-!
# A264710: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 6.

The programs for A264710, there is no canonical definition to state claims against.
-/

/-! ## A264710.P9579936190939885045

`A264709(∑[n+1]+2)`
-/

namespace A264710.P9579936190939885045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264709 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264710.P9579936190939885045

/-! ## A264710.P18440086893034567971

`A000010(A007051(n)*A187742(n))`
-/

namespace A264710.P18440086893034567971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007051 n * A187742 n).toNat

end

end A264710.P18440086893034567971

/-!
# A264711: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 6.

The programs for A264711, there is no canonical definition to state claims against.
-/

/-! ## A264711.P4111771778593967219

`A264709(∑[n+2]+4)`
-/

namespace A264711.P4111771778593967219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264709 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264711.P4111771778593967219

/-! ## A264711.P14547616086726528762

`record[A010054(n)*A264709(n+3)]`
-/

namespace A264711.P14547616086726528762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264709 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264711.P14547616086726528762

/-! ## A264711.P12764063999080184301

`A264709(A167614(n+1))^ceil(acot(n))`
-/

namespace A264711.P12764063999080184301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264709 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A264711.P12764063999080184301

/-!
# A264712: Number of n X 2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 5 and columns nondecreasing modulo 6.

The programs for A264712, there is no canonical definition to state claims against.
-/

/-! ## A264712.P16914736621879166107

`A264714(∑[n+2])`
-/

namespace A264712.P16914736621879166107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264712.P16914736621879166107

/-! ## A264712.P186652969688240476

`A264714(A212342(n+2))*A275062(n)`
-/

namespace A264712.P186652969688240476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264714 (A212342 (n + 2)).toNat * A275062 n

end

end A264712.P186652969688240476

/-! ## A264712.P6654003639826139505

`A264714(A212342(n+2))*A264791(n+1)`
-/

namespace A264712.P6654003639826139505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264714 (A212342 (n + 2)).toNat * A264791 (n + 1)

end

end A264712.P6654003639826139505

/-!
# A264713: Number of n X 3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 5 and columns nondecreasing modulo 6.

The programs for A264713, there is no canonical definition to state claims against.
-/

/-! ## A264713.P11172972005326603412

`A264714(∑[n+3]+1)`
-/

namespace A264713.P11172972005326603412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264714 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264713.P11172972005326603412

/-! ## A264713.P8490074757618597400

`record[A264714(A101881(n))]`
-/

namespace A264713.P8490074757618597400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264714 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264713.P8490074757618597400

/-!
# A264714: T(n,k)=Number of nXk arrays of permutations of 0..n*k-1 with rows nondecreasing modulo 5 and columns nondecreasing modulo 6.

The programs for A264714, there is no canonical definition to state claims against.
-/

/-! ## A264714.P3640391463782471329

`A213270(A117401(n*A261960(n)))`
-/

namespace A264714.P3640391463782471329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213270 (A117401 ((n : ℤ) * A261960 n).toNat).toNat

end

end A264714.P3640391463782471329

/-! ## A264714.P13872683063151671352

`A213270(A117401(n)^A261960(n))`
-/

namespace A264714.P13872683063151671352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213270 (SequenceMachineLib.roundAway ((A117401 n : ℚ) ^ (A261960 n : ℤ))).toNat

end

end A264714.P13872683063151671352

/-! ## A264714.P8356420695559143296

`A213270(gcd(A117401(n), A264712(n+4)))`
-/

namespace A264714.P8356420695559143296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213270 (Int.gcd (A117401 n) (A264712 (n + 4)))

end

end A264714.P8356420695559143296

/-! ## A264714.P16696684891380606587

`gcd(A128106(n+1), A211708(A232089(n+1)))`
-/

namespace A264714.P16696684891380606587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128106 (n + 1)) (A211708 (A232089 (n + 1)).toNat)

end

end A264714.P16696684891380606587

/-!
# A264715: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 5 and columns nondecreasing modulo 6.

The programs for A264715, there is no canonical definition to state claims against.
-/

/-! ## A264715.P3359442191525982876

`A264714(∑[n+1]+2)`
-/

namespace A264715.P3359442191525982876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264714 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264715.P3359442191525982876

/-! ## A264715.P5071626156400525304

`A065134(A086647(n+4))-A000523(n+2)`
-/

namespace A264715.P5071626156400525304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (A086647 (n + 4)).toNat - A000523 (n + 2)

end

end A264715.P5071626156400525304

/-!
# A264716: Number of 3 X n arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 5 and columns nondecreasing modulo 6.

The programs for A264716, there is no canonical definition to state claims against.
-/

/-! ## A264716.P3522752116257638113

`A264714(∑[n+2]+4)`
-/

namespace A264716.P3522752116257638113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264714 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264716.P3522752116257638113

/-! ## A264716.P7376752513032210621

`record[A264714(∑[A008616(n)])]`
-/

namespace A264716.P7376752513032210621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264714 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264716.P7376752513032210621

/-! ## A264716.P2481697917004893011

`record[A264714(A189679(n+1))]`
-/

namespace A264716.P2481697917004893011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264714 (A189679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264716.P2481697917004893011

/-!
# A264717: Central terms of triangle A100326.

The programs for A264717, there is no canonical definition to state claims against.
-/

/-! ## A264717.P2760672022825579534

`A100326(∑[4*n])`
-/

namespace A264717.P2760672022825579534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264717.P2760672022825579534

/-! ## A264717.P7523526998442937780

`record[ratio[A100326(A100345(n))]]`
-/

namespace A264717.P7523526998442937780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A100345 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264717.P7523526998442937780

/-! ## A264717.P17964165476031324809

`record[A100326(gcd(n, A114327(n)))]`
-/

namespace A264717.P17964165476031324809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264717.P17964165476031324809

/-! ## A264717.P12380194571367006978

`lcm(A026492(n), A100326(A046092(n)))`
-/

namespace A264717.P12380194571367006978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026492 n) (A100326 (A046092 n).toNat)

end

end A264717.P12380194571367006978

/-! ## A264717.P9358212935497145088

`A100326(A046092(n))^A057428(n)²`
-/

namespace A264717.P9358212935497145088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100326 (A046092 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A264717.P9358212935497145088

/-! ## A264717.P16780850591367951202

`A100326(A046092(n))+A000038(n)%2`
-/

namespace A264717.P16780850591367951202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A046092 n).toNat + Int.tmod (A000038 n) 2

end

end A264717.P16780850591367951202

/-! ## A264717.P14599545478285807759

`A100326(A046092(n))+n%A028310(n)`
-/

namespace A264717.P14599545478285807759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A046092 n).toNat + Int.tmod (n : ℤ) (A028310 n)

end

end A264717.P14599545478285807759

/-! ## A264717.P4074389476158154461

`A100326(A046092(n))^(A000040(n+1)%2)`
-/

namespace A264717.P4074389476158154461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100326 (A046092 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A264717.P4074389476158154461

/-!
# A264719: Numbers that are greater than the average of their closest flanking primes.

The programs for A264719, the canonical program `A264719.P3615555422415297802` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264719 has offset 1).

The definition of A264719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264719.P3615555422415297802

`∪[A051634(n+1), A264721(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A264719

/-- `∪[A051634(n+1), A264721(n+1)]` -/
def P3615555422415297802.Spec : Prop :=
  ∀ n, (P3615555422415297802.a n : ℤ) = A264719 (n + 1)

theorem P3615555422415297802.correct : P3615555422415297802.Spec := by
  intro n
  simp only [A264719, Nat.add_sub_cancel]

end A264719

/-! ## A264719.P8414925138425416034

`record[(n+10)%A051698(n+10)]`
-/

namespace A264719.P8414925138425416034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 10 : ℤ) (A051698 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264719.P8414925138425416034

namespace A264719

/-- `record[(n+10)%A051698(n+10)]` -/
def P8414925138425416034.Spec : Prop :=
  ∀ n, P8414925138425416034.a n = A264719 (n + 1)

end A264719

/-! ## A264719.P13200227344612824096

`eq[A051698(n)%A059015(n), A151800(n)]`
-/

namespace A264719.P13200227344612824096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051698 n) (A059015 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264719.P13200227344612824096

namespace A264719

/-- `eq[A051698(n)%A059015(n), A151800(n)]` -/
def P13200227344612824096.Spec : Prop :=
  ∀ n, (P13200227344612824096.a n : ℤ) = A264719 (n + 1)

end A264719

/-! ## A264719.P17922211147221002534

`eq[A151800(n)%A000961(n+1), A051698(n)]`
-/

namespace A264719.P17922211147221002534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 n) (A000961 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264719.P17922211147221002534

namespace A264719

/-- `eq[A151800(n)%A000961(n+1), A051698(n)]` -/
def P17922211147221002534.Spec : Prop :=
  ∀ n, (P17922211147221002534.a n : ℤ) = A264719 (n + 1)

end A264719

/-! ## A264719.P10021625346236552144

`eq[A051698(n), A064614(A151800(n))]`
-/

namespace A264719.P10021625346236552144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A151800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264719.P10021625346236552144

namespace A264719

/-- `eq[A051698(n), A064614(A151800(n))]` -/
def P10021625346236552144.Spec : Prop :=
  ∀ n, (P10021625346236552144.a n : ℤ) = A264719 (n + 1)

end A264719

/-! ## A264719.P603152136039138068

`eq[A051698(n), A064614(A159477(n+1))]`
-/

namespace A264719.P603152136039138068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A159477 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264719.P603152136039138068

namespace A264719

/-- `eq[A051698(n), A064614(A159477(n+1))]` -/
def P603152136039138068.Spec : Prop :=
  ∀ n, (P603152136039138068.a n : ℤ) = A264719 (n + 1)

end A264719

/-! ## A264719.P17961588132548067244

`lt[A233583(A233583(n+1))+1, A051698(n)]`
-/

namespace A264719.P17961588132548067244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A233583 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A264719.P17961588132548067244

namespace A264719

/-- `lt[A233583(A233583(n+1))+1, A051698(n)]` -/
def P17961588132548067244.Spec : Prop :=
  ∀ n, (P17961588132548067244.a n : ℤ) = A264719 (n + 1)

end A264719

/-!
# A264720: Numbers that are less than the average of their closest flanking primes.

The programs for A264720, there is no canonical definition to state claims against.
-/

/-! ## A264720.P17190766909196682468

`∪[A051635(n+1), A264722(n+1)]`
-/

namespace A264720.P17190766909196682468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264720.P17190766909196682468

/-! ## A264720.P15630355175080901366

`lt[2, A000005(A051700(n)+n)]`
-/

namespace A264720.P15630355175080901366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051700 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A264720.P15630355175080901366

/-! ## A264720.P6987904631077626951

`lt[A006530(A051700(n)+n), n]`
-/

namespace A264720.P6987904631077626951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051700 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A264720.P6987904631077626951

/-! ## A264720.P11142600194829666425

`lt[A020639(A051700(n)+n), n]`
-/

namespace A264720.P11142600194829666425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051700 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A264720.P11142600194829666425

/-! ## A264720.P1140168568648322002

`eq[A051700(n)%A013632(n), A051700(n)]`
-/

namespace A264720.P1140168568648322002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051700 n) (A013632 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264720.P1140168568648322002

/-! ## A264720.P12695314065854021829

`eq[0, A055671(A051700(n)+n)]`
-/

namespace A264720.P12695314065854021829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A051700 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264720.P12695314065854021829

/-! ## A264720.P17094589083969939581

`eq[0, A055672(A051700(n)+n)]`
-/

namespace A264720.P17094589083969939581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A051700 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264720.P17094589083969939581

/-! ## A264720.P18217604822098926224

`eq[A230980(A051700(n)+n), A230980(n)]`
-/

namespace A264720.P18217604822098926224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A051700 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264720.P18217604822098926224

/-!
# A264721: Composite numbers that are greater than the average of their closest flanking primes.

The programs for A264721, the canonical program `A264721.P17314925042243665480` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264721 has offset 1).

The definition of A264721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264721.P12061573668391860401

`lt[n, A056139(n+2)]+2`
-/

namespace A264721.P12061573668391860401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056139 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A264721.P12061573668391860401

namespace A264721

/-- `lt[n, A056139(n+2)]+2` -/
def P12061573668391860401.Spec : Prop :=
  ∀ n, (P12061573668391860401.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P13283593151333091061

`A053726(n+1)+A005097(A008508(n+1)+1)`
-/

namespace A264721.P13283593151333091061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + A005097 (A008508 (n + 1) + 1).toNat

end

end A264721.P13283593151333091061

namespace A264721

/-- `A053726(n+1)+A005097(A008508(n+1)+1)` -/
def P13283593151333091061.Spec : Prop :=
  ∀ n, P13283593151333091061.a n = A264721 (n + 1)

end A264721

/-! ## A264721.P13681507118186304048

`A104275(n+2)+A005097(A008508(n+1)+1)`
-/

namespace A264721.P13681507118186304048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) + A005097 (A008508 (n + 1) + 1).toNat

end

end A264721.P13681507118186304048

namespace A264721

/-- `A104275(n+2)+A005097(A008508(n+1)+1)` -/
def P13681507118186304048.Spec : Prop :=
  ∀ n, P13681507118186304048.a n = A264721 (n + 1)

end A264721

/-! ## A264721.P17314925042243665480

`A053726(n+1)+A005097(A053726(n+1)-(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A264721

/-- `A053726(n+1)+A005097(A053726(n+1)-(n+1))` -/
def P17314925042243665480.Spec : Prop :=
  ∀ n, P17314925042243665480.a n = A264721 (n + 1)

theorem P17314925042243665480.correct : P17314925042243665480.Spec := by
  intro n
  simp only [A264721, Nat.add_sub_cancel]

end A264721

/-! ## A264721.P10474553238403638170

`A047845(n+2)+A006254(A008508(n+1)+1)`
-/

namespace A264721.P10474553238403638170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) + A006254 (A008508 (n + 1) + 1).toNat

end

end A264721.P10474553238403638170

namespace A264721

/-- `A047845(n+2)+A006254(A008508(n+1)+1)` -/
def P10474553238403638170.Spec : Prop :=
  ∀ n, P10474553238403638170.a n = A264721 (n + 1)

end A264721

/-! ## A264721.P4567670914346837492

`filter[A264719(n+1), A005171(#)]`
-/

namespace A264721.P4567670914346837492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A264721.P4567670914346837492

namespace A264721

/-- `filter[A264719(n+1), A005171(#)]` -/
def P4567670914346837492.Spec : Prop :=
  ∀ n, P4567670914346837492.a n = A264721 (n + 1)

end A264721

/-! ## A264721.P7541100074628601241

`filter[A264719(n+1), A066247(#)]`
-/

namespace A264721.P7541100074628601241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A264721.P7541100074628601241

namespace A264721

/-- `filter[A264719(n+1), A066247(#)]` -/
def P7541100074628601241.Spec : Prop :=
  ∀ n, P7541100074628601241.a n = A264721 (n + 1)

end A264721

/-! ## A264721.P11399038390956719431

`filter[A264719(n+1), A292438(#)]`
-/

namespace A264721.P11399038390956719431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A264721.P11399038390956719431

namespace A264721

/-- `filter[A264719(n+1), A292438(#)]` -/
def P11399038390956719431.Spec : Prop :=
  ∀ n, P11399038390956719431.a n = A264721 (n + 1)

end A264721

/-! ## A264721.P14468366461778511572

`filter[A264719(n+1), A323162(#)]`
-/

namespace A264721.P14468366461778511572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A264721.P14468366461778511572

namespace A264721

/-- `filter[A264719(n+1), A323162(#)]` -/
def P14468366461778511572.Spec : Prop :=
  ∀ n, P14468366461778511572.a n = A264721 (n + 1)

end A264721

/-! ## A264721.P11052506170089388040

`∩[A002808(n+1), A264719(n+1)]`
-/

namespace A264721.P11052506170089388040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P11052506170089388040

namespace A264721

/-- `∩[A002808(n+1), A264719(n+1)]` -/
def P11052506170089388040.Spec : Prop :=
  ∀ n, (P11052506170089388040.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P6791920042453715627

`∩[A018252(n+1), A264719(n+1)]`
-/

namespace A264721.P6791920042453715627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P6791920042453715627

namespace A264721

/-- `∩[A018252(n+1), A264719(n+1)]` -/
def P6791920042453715627.Spec : Prop :=
  ∀ n, (P6791920042453715627.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P483995281656685518

`∩[A141468(n+1), A264719(n+1)]`
-/

namespace A264721.P483995281656685518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P483995281656685518

namespace A264721

/-- `∩[A141468(n+1), A264719(n+1)]` -/
def P483995281656685518.Spec : Prop :=
  ∀ n, (P483995281656685518.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P1925836860161918562

`∩[A005381(n+1), A264719(n+1)]`
-/

namespace A264721.P1925836860161918562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P1925836860161918562

namespace A264721

/-- `∩[A005381(n+1), A264719(n+1)]` -/
def P1925836860161918562.Spec : Prop :=
  ∀ n, (P1925836860161918562.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P14508298870314632575

`∩[A076639(n+1), A264719(n+1)]`
-/

namespace A264721.P14508298870314632575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P14508298870314632575

namespace A264721

/-- `∩[A076639(n+1), A264719(n+1)]` -/
def P14508298870314632575.Spec : Prop :=
  ∀ n, (P14508298870314632575.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P17089973832924632821

`∩[A164276(n+1), A264719(n+1)]`
-/

namespace A264721.P17089973832924632821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P17089973832924632821

namespace A264721

/-- `∩[A164276(n+1), A264719(n+1)]` -/
def P17089973832924632821.Spec : Prop :=
  ∀ n, (P17089973832924632821.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P13751986445445124078

`∩[A264719(n+1), A343311(n+1)]`
-/

namespace A264721.P13751986445445124078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P13751986445445124078

namespace A264721

/-- `∩[A264719(n+1), A343311(n+1)]` -/
def P13751986445445124078.Spec : Prop :=
  ∀ n, (P13751986445445124078.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P158620688740895803

`∩[A056653(n+1), A264719(n+1)]`
-/

namespace A264721.P158620688740895803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P158620688740895803

namespace A264721

/-- `∩[A056653(n+1), A264719(n+1)]` -/
def P158620688740895803.Spec : Prop :=
  ∀ n, (P158620688740895803.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P1800304896703061057

`∩[A065090(n+1), A264719(n+1)]`
-/

namespace A264721.P1800304896703061057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P1800304896703061057

namespace A264721

/-- `∩[A065090(n+1), A264719(n+1)]` -/
def P1800304896703061057.Spec : Prop :=
  ∀ n, (P1800304896703061057.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P12595350948673395937

`∩[A171581(n+1), A264719(n+1)]`
-/

namespace A264721.P12595350948673395937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P12595350948673395937

namespace A264721

/-- `∩[A171581(n+1), A264719(n+1)]` -/
def P12595350948673395937.Spec : Prop :=
  ∀ n, (P12595350948673395937.a n : ℤ) = A264721 (n + 1)

end A264721

/-! ## A264721.P207144449699410154

`∩[A173905(n+1), A264719(n+1)]`
-/

namespace A264721.P207144449699410154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264721.P207144449699410154

namespace A264721

/-- `∩[A173905(n+1), A264719(n+1)]` -/
def P207144449699410154.Spec : Prop :=
  ∀ n, (P207144449699410154.a n : ℤ) = A264721 (n + 1)

end A264721

/-!
# A264722: Composite numbers that are less than the average of their closest flanking primes.

The programs for A264722, the canonical program `A264722.P4164535810312065658` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264722 has offset 1).

The definition of A264722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7737 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264722.P6186850266075386425

`A053726(n+1)+A005097(A008508(n+1))`
-/

namespace A264722.P6186850266075386425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + A005097 (A008508 (n + 1)).toNat

end

end A264722.P6186850266075386425

namespace A264722

/-- `A053726(n+1)+A005097(A008508(n+1))` -/
def P6186850266075386425.Spec : Prop :=
  ∀ n, P6186850266075386425.a n = A264722 (n + 1)

end A264722

/-! ## A264722.P16086479691261357052

`A047845(n+2)+A006254(A008508(n+1))`
-/

namespace A264722.P16086479691261357052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) + A006254 (A008508 (n + 1)).toNat

end

end A264722.P16086479691261357052

namespace A264722

/-- `A047845(n+2)+A006254(A008508(n+1))` -/
def P16086479691261357052.Spec : Prop :=
  ∀ n, P16086479691261357052.a n = A264722 (n + 1)

end A264722

/-! ## A264722.P6623753023290524422

`filter[A264720(n+1), A005171(#)]`
-/

namespace A264722.P6623753023290524422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A264722.P6623753023290524422

namespace A264722

/-- `filter[A264720(n+1), A005171(#)]` -/
def P6623753023290524422.Spec : Prop :=
  ∀ n, P6623753023290524422.a n = A264722 (n + 1)

end A264722

/-! ## A264722.P7811212144812099879

`filter[A264720(n+1), A066247(#)]`
-/

namespace A264722.P7811212144812099879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A264722.P7811212144812099879

namespace A264722

/-- `filter[A264720(n+1), A066247(#)]` -/
def P7811212144812099879.Spec : Prop :=
  ∀ n, P7811212144812099879.a n = A264722 (n + 1)

end A264722

/-! ## A264722.P14338475544855839289

`filter[A264720(n+1), A292438(#)]`
-/

namespace A264722.P14338475544855839289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A264722.P14338475544855839289

namespace A264722

/-- `filter[A264720(n+1), A292438(#)]` -/
def P14338475544855839289.Spec : Prop :=
  ∀ n, P14338475544855839289.a n = A264722 (n + 1)

end A264722

/-! ## A264722.P7765566946643633336

`∩[A002808(n+1), A264720(n+1)]`
-/

namespace A264722.P7765566946643633336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264722.P7765566946643633336

namespace A264722

/-- `∩[A002808(n+1), A264720(n+1)]` -/
def P7765566946643633336.Spec : Prop :=
  ∀ n, (P7765566946643633336.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P10254023452102421534

`∩[A018252(n+1), A264720(n+1)]`
-/

namespace A264722.P10254023452102421534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264722.P10254023452102421534

namespace A264722

/-- `∩[A018252(n+1), A264720(n+1)]` -/
def P10254023452102421534.Spec : Prop :=
  ∀ n, (P10254023452102421534.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P6700347307813443919

`∩[A141468(n+1), A264720(n+1)]`
-/

namespace A264722.P6700347307813443919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264722.P6700347307813443919

namespace A264722

/-- `∩[A141468(n+1), A264720(n+1)]` -/
def P6700347307813443919.Spec : Prop :=
  ∀ n, (P6700347307813443919.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P4164535810312065658

`eq[n%A119257(n+1), A119257(A119257(n+1)+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A264722

/-- `eq[n%A119257(n+1), A119257(A119257(n+1)+1)]` -/
def P4164535810312065658.Spec : Prop :=
  ∀ n, (P4164535810312065658.a n : ℤ) = A264722 (n + 1)

theorem P4164535810312065658.correct : P4164535810312065658.Spec := by
  intro n
  simp only [A264722, Nat.add_sub_cancel]

end A264722

/-! ## A264722.P2306487124729068248

`∩[A068780(n+1), A264720(n+1)]`
-/

namespace A264722.P2306487124729068248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264722.P2306487124729068248

namespace A264722

/-- `∩[A068780(n+1), A264720(n+1)]` -/
def P2306487124729068248.Spec : Prop :=
  ∀ n, (P2306487124729068248.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P15614806367403627517

`∩[A076639(n+1), A264720(n+1)]`
-/

namespace A264722.P15614806367403627517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264722.P15614806367403627517

namespace A264722

/-- `∩[A076639(n+1), A264720(n+1)]` -/
def P15614806367403627517.Spec : Prop :=
  ∀ n, (P15614806367403627517.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P1045813289315243706

`∩[A164276(n+1), A264720(n+1)]`
-/

namespace A264722.P1045813289315243706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264722.P1045813289315243706

namespace A264722

/-- `∩[A164276(n+1), A264720(n+1)]` -/
def P1045813289315243706.Spec : Prop :=
  ∀ n, (P1045813289315243706.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P2655285113956123325

`∩[A062973(n+1), A264720(n+1)]`
-/

namespace A264722.P2655285113956123325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264722.P2655285113956123325

namespace A264722

/-- `∩[A062973(n+1), A264720(n+1)]` -/
def P2655285113956123325.Spec : Prop :=
  ∀ n, (P2655285113956123325.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P2754748720258694048

`∩[A056653(n+1), A264720(n+1)]`
-/

namespace A264722.P2754748720258694048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264722.P2754748720258694048

namespace A264722

/-- `∩[A056653(n+1), A264720(n+1)]` -/
def P2754748720258694048.Spec : Prop :=
  ∀ n, (P2754748720258694048.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P10416955157981812018

`∩[A065090(n+1), A264720(n+1)]`
-/

namespace A264722.P10416955157981812018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264722.P10416955157981812018

namespace A264722

/-- `∩[A065090(n+1), A264720(n+1)]` -/
def P10416955157981812018.Spec : Prop :=
  ∀ n, (P10416955157981812018.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P2168476560620343146

`lt[1, A030664(n)-n²]`
-/

namespace A264722.P2168476560620343146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030664 n - (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A264722.P2168476560620343146

namespace A264722

/-- `lt[1, A030664(n)-n²]` -/
def P2168476560620343146.Spec : Prop :=
  ∀ n, (P2168476560620343146.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P8551240902433594774

`lt[Δ[n*A051697(n)], n]`
-/

namespace A264722.P8551240902433594774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A264722.P8551240902433594774

namespace A264722

/-- `lt[Δ[n*A051697(n)], n]` -/
def P8551240902433594774.Spec : Prop :=
  ∀ n, (P8551240902433594774.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P4914776632060818397

`lt[1, n/A051697(n+1)]`
-/

namespace A264722.P4914776632060818397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A051697 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A264722.P4914776632060818397

namespace A264722

/-- `lt[1, n/A051697(n+1)]` -/
def P4914776632060818397.Spec : Prop :=
  ∀ n, (P4914776632060818397.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P2854732034907418040

`lt[A051699(n), A007920(n)]`
-/

namespace A264722.P2854732034907418040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A264722.P2854732034907418040

namespace A264722

/-- `lt[A051699(n), A007920(n)]` -/
def P2854732034907418040.Spec : Prop :=
  ∀ n, (P2854732034907418040.a n : ℤ) = A264722 (n + 1)

end A264722

/-! ## A264722.P7352852245273038842

`eq[1, A292438(A051699(n)+n)]`
-/

namespace A264722.P7352852245273038842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A051699 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264722.P7352852245273038842

namespace A264722

/-- `eq[1, A292438(A051699(n)+n)]` -/
def P7352852245273038842.Spec : Prop :=
  ∀ n, (P7352852245273038842.a n : ℤ) = A264722 (n + 1)

end A264722

/-!
# A264723: Primes of the form n! - prime(n).

The programs for A264723, there is no canonical definition to state claims against.
-/

/-! ## A264723.P13882779580373608284

`A261809(A064401(n+1))`
-/

namespace A264723.P13882779580373608284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261809 (A064401 (n + 1)).toNat

end

end A264723.P13882779580373608284

/-!
# A264724: a(n) = n^2 + phi(n).

The programs for A264724, the canonical program `A264724.P4341267038982265979` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264724 has offset 1).

The definition of A264724 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A264724.P4341267038982265979

`A000290(n+1)+A000010(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A264724

/-- `A000290(n+1)+A000010(n+1)` -/
def P4341267038982265979.Spec : Prop :=
  ∀ n, P4341267038982265979.a n = A264724 (n + 1)

theorem P4341267038982265979.correct : P4341267038982265979.Spec := by
  intro n
  simp only [A264724, Nat.add_sub_cancel]

end A264724

/-! ## A264724.P2201441482434546914

`(n+1)²+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A264724.P2201441482434546914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A264724.P2201441482434546914

namespace A264724

/-- `(n+1)²+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P2201441482434546914.Spec : Prop :=
  ∀ n, P2201441482434546914.a n = (A264724 (n + 1) : ℚ)

end A264724

/-! ## A264724.P6358801472761096520

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n*(n+2)+1`
-/

namespace A264724.P6358801472761096520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n * (n + 2) + 1 : ℚ)

end

end A264724.P6358801472761096520

namespace A264724

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n*(n+2)+1` -/
def P6358801472761096520.Spec : Prop :=
  ∀ n, P6358801472761096520.a n = (A264724 (n + 1) : ℚ)

end A264724

/-! ## A264724.P699443165331386668

`Δ[A002088(n)]+(n+1)²`
-/

namespace A264724.P699443165331386668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n + 1) ^ 2 : ℤ)

end

end A264724.P699443165331386668

namespace A264724

/-- `Δ[A002088(n)]+(n+1)²` -/
def P699443165331386668.Spec : Prop :=
  ∀ n, P699443165331386668.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P6506030371677527637

`Δ[A005728(n)]+(n+1)²`
-/

namespace A264724.P6506030371677527637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n + 1) ^ 2 : ℤ)

end

end A264724.P6506030371677527637

namespace A264724

/-- `Δ[A005728(n)]+(n+1)²` -/
def P6506030371677527637.Spec : Prop :=
  ∀ n, P6506030371677527637.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P12528243406351577182

`A121048(n+1)+n²+n`
-/

namespace A264724.P12528243406351577182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) + (n ^ 2 + n : ℤ)

end

end A264724.P12528243406351577182

namespace A264724

/-- `A121048(n+1)+n²+n` -/
def P12528243406351577182.Spec : Prop :=
  ∀ n, P12528243406351577182.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P16305577088876020883

`A039649(n+1)+n*(n+2)`
-/

namespace A264724.P16305577088876020883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (n * (n + 2) : ℤ)

end

end A264724.P16305577088876020883

namespace A264724

/-- `A039649(n+1)+n*(n+2)` -/
def P16305577088876020883.Spec : Prop :=
  ∀ n, P16305577088876020883.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P10864795946994559003

`A000010(lcm(2, n+1))+(n+1)^2`
-/

namespace A264724.P10864795946994559003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm 2 (n + 1)) + ((n + 1) ^ 2 : ℤ)

end

end A264724.P10864795946994559003

namespace A264724

/-- `A000010(lcm(2, n+1))+(n+1)^2` -/
def P10864795946994559003.Spec : Prop :=
  ∀ n, P10864795946994559003.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P7556317082928178163

`A000010(C(n+1, n))+(n+1)^2`
-/

namespace A264724.P7556317082928178163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose (n + 1) n) + ((n + 1) ^ 2 : ℤ)

end

end A264724.P7556317082928178163

namespace A264724

/-- `A000010(C(n+1, n))+(n+1)^2` -/
def P7556317082928178163.Spec : Prop :=
  ∀ n, P7556317082928178163.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P14631927314535916304

`A000010(-xor(n, -1))+(n+1)^2`
-/

namespace A264724.P14631927314535916304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (-Int.xor (n : ℤ) (-1)).toNat + ((n + 1) ^ 2 : ℤ)

end

end A264724.P14631927314535916304

namespace A264724

/-- `A000010(-xor(n, -1))+(n+1)^2` -/
def P14631927314535916304.Spec : Prop :=
  ∀ n, P14631927314535916304.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P17093945044871349302

`A000010(n-log2(1/2))+(n+1)^2`
-/

namespace A264724.P17093945044871349302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat + ((n + 1) ^ 2 : ℤ)

end

end A264724.P17093945044871349302

namespace A264724

/-- `A000010(n-log2(1/2))+(n+1)^2` -/
def P17093945044871349302.Spec : Prop :=
  ∀ n, P17093945044871349302.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P13924087232591690909

`(n+1)²+(n+1)²-A258434(n+1)`
-/

namespace A264724.P13924087232591690909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (((n + 1) ^ 2 : ℤ) - A258434 (n + 1))

end

end A264724.P13924087232591690909

namespace A264724

/-- `(n+1)²+(n+1)²-A258434(n+1)` -/
def P13924087232591690909.Spec : Prop :=
  ∀ n, P13924087232591690909.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P9278307591154680897

`A028387(n)-A219428(n+1)`
-/

namespace A264724.P9278307591154680897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A219428 (n + 1)

end

end A264724.P9278307591154680897

namespace A264724

/-- `A028387(n)-A219428(n+1)` -/
def P9278307591154680897.Spec : Prop :=
  ∀ n, P9278307591154680897.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P9676659127040192470

`A235799(n+1)+A065387(n+1)`
-/

namespace A264724.P9676659127040192470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) + A065387 (n + 1)

end

end A264724.P9676659127040192470

namespace A264724

/-- `A235799(n+1)+A065387(n+1)` -/
def P9676659127040192470.Spec : Prop :=
  ∀ n, P9676659127040192470.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P12502542557031507387

`A345892(n+1)+A002618(n+1)`
-/

namespace A264724.P12502542557031507387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345892 (n + 1) + A002618 (n + 1)

end

end A264724.P12502542557031507387

namespace A264724

/-- `A345892(n+1)+A002618(n+1)` -/
def P12502542557031507387.Spec : Prop :=
  ∀ n, P12502542557031507387.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P12502189295471733490

`A004232(n+1)-A104192(n+1)`
-/

namespace A264724.P12502189295471733490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (n + 1) - A104192 (n + 1)

end

end A264724.P12502189295471733490

namespace A264724

/-- `A004232(n+1)-A104192(n+1)` -/
def P12502189295471733490.Spec : Prop :=
  ∀ n, P12502189295471733490.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P13965687765075131055

`A109606(n+1)+A005563(n)+2`
-/

namespace A264724.P13965687765075131055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (A005563 n + 2)

end

end A264724.P13965687765075131055

namespace A264724

/-- `A109606(n+1)+A005563(n)+2` -/
def P13965687765075131055.Spec : Prop :=
  ∀ n, P13965687765075131055.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P11696793339508742365

`∑{d}[A000010(n+1), A000010(#)]+(n+1)^2`
-/

namespace A264724.P11696793339508742365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d + ((n + 1) ^ 2 : ℤ)

end

end A264724.P11696793339508742365

namespace A264724

/-- `∑{d}[A000010(n+1), A000010(#)]+(n+1)^2` -/
def P11696793339508742365.Spec : Prop :=
  ∀ n, P11696793339508742365.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P14623656855472213587

`A023896(n+1)+A349679(n+1)+A000217(n)`
-/

namespace A264724.P14623656855472213587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + (A349679 (n + 1) + A000217 n)

end

end A264724.P14623656855472213587

namespace A264724

/-- `A023896(n+1)+A349679(n+1)+A000217(n)` -/
def P14623656855472213587.Spec : Prop :=
  ∀ n, P14623656855472213587.a n = A264724 (n + 1)

end A264724

/-! ## A264724.P4495871664999610681

`A000217(n+1)+A091369(n+1)-A002088(n)`
-/

namespace A264724.P4495871664999610681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A091369 (n + 1) - A002088 n)

end

end A264724.P4495871664999610681

namespace A264724

/-- `A000217(n+1)+A091369(n+1)-A002088(n)` -/
def P4495871664999610681.Spec : Prop :=
  ∀ n, P4495871664999610681.a n = A264724 (n + 1)

end A264724

/-!
# A264726: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 6.

The programs for A264726, there is no canonical definition to state claims against.
-/

/-! ## A264726.P14007012897821065380

`A264728(∑[n+2])`
-/

namespace A264726.P14007012897821065380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264728 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264726.P14007012897821065380

/-! ## A264726.P5939922221896588956

`record[A264728(∑[gcd(xor(1, n²), ∑[n])])]`
-/

namespace A264726.P5939922221896588956
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264728 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264726.P5939922221896588956

/-! ## A264726.P8261844183899531894

`record[A264728(∑[A152271(n)])]`
-/

namespace A264726.P8261844183899531894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264728 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264726.P8261844183899531894

/-!
# A264727: Number of n X 3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 6.

The programs for A264727, there is no canonical definition to state claims against.
-/

/-! ## A264727.P16459563774533604603

`A264728(∑[n+3]+1)`
-/

namespace A264727.P16459563774533604603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264727.P16459563774533604603

/-! ## A264727.P10766966182294931098

`record[A264728(A194038(n))]`
-/

namespace A264727.P10766966182294931098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264728 (A194038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264727.P10766966182294931098

/-!
# A264728: T(n,k)=Number of nXk arrays of permutations of 0..n*k-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 6.

The programs for A264728, there is no canonical definition to state claims against.
-/

/-! ## A264728.P11738228974643406221

`xor(A269974(A133263(n)), A293087(n+1))`
-/

namespace A264728.P11738228974643406221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A269974 (A133263 n).toNat) (A293087 (n + 1))

end

end A264728.P11738228974643406221

/-!
# A264729: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 6.

The programs for A264729, there is no canonical definition to state claims against.
-/

/-! ## A264729.P2748171690984890444

`A264728(∑[n+1]+2)`
-/

namespace A264729.P2748171690984890444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264728 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264729.P2748171690984890444

/-! ## A264729.P7042296811980903520

`record[A264728(gcd(n, A303913(n)))]`
-/

namespace A264729.P7042296811980903520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264728 (Int.gcd (n : ℤ) (A303913 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264729.P7042296811980903520

/-! ## A264729.P13574728576842329698

`record[A264728(n+1)/A283674(n)]`
-/

namespace A264729.P13574728576842329698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264728 (n + 1) : ℚ) / (A283674 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264729.P13574728576842329698

/-! ## A264729.P4932793521696476718

`record[A264728(n+1)/A288972(n)]`
-/

namespace A264729.P4932793521696476718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264728 (n + 1) : ℚ) / (A288972 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264729.P4932793521696476718

/-!
# A264730: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 6.

The programs for A264730, there is no canonical definition to state claims against.
-/

/-! ## A264730.P563723533102260721

`A264728(∑[n+2]+4)`
-/

namespace A264730.P563723533102260721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264728 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264730.P563723533102260721

/-! ## A264730.P4968043414621315592

`record[A264728(A194038(n)+5)]`
-/

namespace A264730.P4968043414621315592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264728 (A194038 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264730.P4968043414621315592

/-! ## A264730.P9752292670984572780

`A264728(A167614(n+1))+char[7]`
-/

namespace A264730.P9752292670984572780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264728 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264730.P9752292670984572780

/-!
# A264731: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = prime(2^(n-1)*(2*k-1)), n,k >= 1.

The programs for A264731, the canonical program `A264731.P3119576634127097994` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264731 has offset 1).

The definition of A264731 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054582, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A264731.P3119576634127097994

`A000040(A054582(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A264731

/-- `A000040(A054582(n))` -/
def P3119576634127097994.Spec : Prop :=
  ∀ n, P3119576634127097994.a n = A264731 (n + 1)

theorem P3119576634127097994.correct : P3119576634127097994.Spec := by
  intro n
  simp only [A264731, Nat.add_sub_cancel]

end A264731

/-! ## A264731.P5308113921037116310

`A000040((4*(n-C(∑[char[∑[n]]], 2))+2)*2^(C(comp[∑[n]]-n, 2)-n)/4)`
-/

namespace A264731.P5308113921037116310
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((4 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 2 : ℚ) * (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) / 4)).toNat

end

end A264731.P5308113921037116310

namespace A264731

/-- `A000040((4*(n-C(∑[char[∑[n]]], 2))+2)*2^(C(comp[∑[n]]-n, 2)-n)/4)` -/
def P5308113921037116310.Spec : Prop :=
  ∀ n, P5308113921037116310.a n = A264731 (n + 1)

end A264731

/-! ## A264731.P3517742488218215212

`A008578(A288870(n))`
-/

namespace A264731.P3517742488218215212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A288870 n).toNat

end

end A264731.P3517742488218215212

namespace A264731

/-- `A008578(A288870(n))` -/
def P3517742488218215212.Spec : Prop :=
  ∀ n, P3517742488218215212.a n = A264731 (n + 1)

end A264731

/-! ## A264731.P1449256298900775307

`A008578(A054582(n)+1)`
-/

namespace A264731.P1449256298900775307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054582 n + 1).toNat

end

end A264731.P1449256298900775307

namespace A264731

/-- `A008578(A054582(n)+1)` -/
def P1449256298900775307.Spec : Prop :=
  ∀ n, P1449256298900775307.a n = A264731 (n + 1)

end A264731

/-! ## A264731.P11419487793149719456

`A000040(A075300(n)+1)`
-/

namespace A264731.P11419487793149719456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A075300 n + 1).toNat

end

end A264731.P11419487793149719456

namespace A264731

/-- `A000040(A075300(n)+1)` -/
def P11419487793149719456.Spec : Prop :=
  ∀ n, P11419487793149719456.a n = A264731 (n + 1)

end A264731

/-! ## A264731.P6501199548144148866

`A000040(A288870(n)-1)`
-/

namespace A264731.P6501199548144148866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A288870 n - 1).toNat

end

end A264731.P6501199548144148866

namespace A264731

/-- `A000040(A288870(n)-1)` -/
def P6501199548144148866.Spec : Prop :=
  ∀ n, P6501199548144148866.a n = A264731 (n + 1)

end A264731

/-! ## A264731.P16560610347578033669

`A000040(A257791(n+1)/4)`
-/

namespace A264731.P16560610347578033669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A257791 (n + 1) : ℚ) / 4)).toNat

end

end A264731.P16560610347578033669

namespace A264731

/-- `A000040(A257791(n+1)/4)` -/
def P16560610347578033669.Spec : Prop :=
  ∀ n, P16560610347578033669.a n = A264731 (n + 1)

end A264731

/-! ## A264731.P9304239258917553632

`A000040(ceil(A241957(n+1)/2))`
-/

namespace A264731.P9304239258917553632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(A241957 (n + 1) : ℚ) / 2⌉.toNat

end

end A264731.P9304239258917553632

namespace A264731

/-- `A000040(ceil(A241957(n+1)/2))` -/
def P9304239258917553632.Spec : Prop :=
  ∀ n, P9304239258917553632.a n = A264731 (n + 1)

end A264731

/-! ## A264731.P2765124203394393208

`A000040(round(A241957(n+1)/2))`
-/

namespace A264731.P2765124203394393208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A241957 (n + 1) : ℚ) / 2)).toNat

end

end A264731.P2765124203394393208

namespace A264731

/-- `A000040(round(A241957(n+1)/2))` -/
def P2765124203394393208.Spec : Prop :=
  ∀ n, P2765124203394393208.a n = A264731 (n + 1)

end A264731

/-! ## A264731.P10006300246245993539

`A067747(A241957(n+1))`
-/

namespace A264731.P10006300246245993539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A241957 (n + 1)).toNat

end

end A264731.P10006300246245993539

namespace A264731

/-- `A067747(A241957(n+1))` -/
def P10006300246245993539.Spec : Prop :=
  ∀ n, P10006300246245993539.a n = A264731 (n + 1)

end A264731

/-!
# A264732: Löschian numbers (A003136) which are the sum of 2 nonzero squares.

The programs for A264732, the canonical program `A264732.P18216673104599297167` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264732 has offset 1).

The definition of A264732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264732.P1878565996742632014

`∪[A134422(n+1), A155560(n+1)]`
-/

namespace A264732.P1878565996742632014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P1878565996742632014

namespace A264732

/-- `∪[A134422(n+1), A155560(n+1)]` -/
def P1878565996742632014.Spec : Prop :=
  ∀ n, (P1878565996742632014.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P9883115242355629550

`∪[A134422(n+1), A353198(n+1)]`
-/

namespace A264732.P9883115242355629550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P9883115242355629550

namespace A264732

/-- `∪[A134422(n+1), A353198(n+1)]` -/
def P9883115242355629550.Spec : Prop :=
  ∀ n, (P9883115242355629550.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P18216673104599297167

`filter[A155563(n+2), A353814(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A264732

/-- `filter[A155563(n+2), A353814(#)]` -/
def P18216673104599297167.Spec : Prop :=
  ∀ n, P18216673104599297167.a n = A264732 (n + 1)

theorem P18216673104599297167.correct : P18216673104599297167.Spec := by
  intro n
  simp only [A264732, Nat.add_sub_cancel]

end A264732

/-! ## A264732.P17857278832536391396

`filter[A272933(n+2), A353814(#)]`
-/

namespace A264732.P17857278832536391396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A264732.P17857278832536391396

namespace A264732

/-- `filter[A272933(n+2), A353814(#)]` -/
def P17857278832536391396.Spec : Prop :=
  ∀ n, P17857278832536391396.a n = A264732 (n + 1)

end A264732

/-! ## A264732.P6633230532647664297

`filter[A084916(n+1), A353814(#)]`
-/

namespace A264732.P6633230532647664297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A264732.P6633230532647664297

namespace A264732

/-- `filter[A084916(n+1), A353814(#)]` -/
def P6633230532647664297.Spec : Prop :=
  ∀ n, P6633230532647664297.a n = A264732 (n + 1)

end A264732

/-! ## A264732.P16383713718559024945

`filter[A243175(n+2), A353814(#)]`
-/

namespace A264732.P16383713718559024945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A264732.P16383713718559024945

namespace A264732

/-- `filter[A243175(n+2), A353814(#)]` -/
def P16383713718559024945.Spec : Prop :=
  ∀ n, P16383713718559024945.a n = A264732 (n + 1)

end A264732

/-! ## A264732.P1772711128952664747

`filter[A097268(n+1), A353816(#)]`
-/

namespace A264732.P1772711128952664747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A264732.P1772711128952664747

namespace A264732

/-- `filter[A097268(n+1), A353816(#)]` -/
def P1772711128952664747.Spec : Prop :=
  ∀ n, P1772711128952664747.a n = A264732 (n + 1)

end A264732

/-! ## A264732.P10801568495446125056

`∩[A084916(n+1), A097268(n+1)]`
-/

namespace A264732.P10801568495446125056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P10801568495446125056

namespace A264732

/-- `∩[A084916(n+1), A097268(n+1)]` -/
def P10801568495446125056.Spec : Prop :=
  ∀ n, (P10801568495446125056.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P15381408302586188218

`∩[A097268(n+1), A155563(n+1)]`
-/

namespace A264732.P15381408302586188218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P15381408302586188218

namespace A264732

/-- `∩[A097268(n+1), A155563(n+1)]` -/
def P15381408302586188218.Spec : Prop :=
  ∀ n, (P15381408302586188218.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P10491228171911389323

`∩[A097268(n+1), A243175(n+1)]`
-/

namespace A264732.P10491228171911389323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P10491228171911389323

namespace A264732

/-- `∩[A097268(n+1), A243175(n+1)]` -/
def P10491228171911389323.Spec : Prop :=
  ∀ n, (P10491228171911389323.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P5722546432477832592

`∩[A097268(n+1), A272933(n+1)]`
-/

namespace A264732.P5722546432477832592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P5722546432477832592

namespace A264732

/-- `∩[A097268(n+1), A272933(n+1)]` -/
def P5722546432477832592.Spec : Prop :=
  ∀ n, (P5722546432477832592.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P14096978409608814083

`filter[A035252(n+1), A353814(#)]`
-/

namespace A264732.P14096978409608814083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A264732.P14096978409608814083

namespace A264732

/-- `filter[A035252(n+1), A353814(#)]` -/
def P14096978409608814083.Spec : Prop :=
  ∀ n, P14096978409608814083.a n = A264732 (n + 1)

end A264732

/-! ## A264732.P10743556427796483511

`∩[A035252(n+1), A097268(n+1)]`
-/

namespace A264732.P10743556427796483511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P10743556427796483511

namespace A264732

/-- `∩[A035252(n+1), A097268(n+1)]` -/
def P10743556427796483511.Spec : Prop :=
  ∀ n, (P10743556427796483511.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P13793304866165624248

`filter[A003136(n+2), A353814(#)]`
-/

namespace A264732.P13793304866165624248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A264732.P13793304866165624248

namespace A264732

/-- `filter[A003136(n+2), A353814(#)]` -/
def P13793304866165624248.Spec : Prop :=
  ∀ n, P13793304866165624248.a n = A264732 (n + 1)

end A264732

/-! ## A264732.P7371682914061264038

`∩[A003136(n+1), A097268(n+1)]`
-/

namespace A264732.P7371682914061264038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P7371682914061264038

namespace A264732

/-- `∩[A003136(n+1), A097268(n+1)]` -/
def P7371682914061264038.Spec : Prop :=
  ∀ n, (P7371682914061264038.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P12111798329971402603

`filter[A004431(n+1), A353816(#)]`
-/

namespace A264732.P12111798329971402603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A264732.P12111798329971402603

namespace A264732

/-- `filter[A004431(n+1), A353816(#)]` -/
def P12111798329971402603.Spec : Prop :=
  ∀ n, P12111798329971402603.a n = A264732 (n + 1)

end A264732

/-! ## A264732.P7059978602424792069

`∩[A003136(n+1), A004431(n+1)]`
-/

namespace A264732.P7059978602424792069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P7059978602424792069

namespace A264732

/-- `∩[A003136(n+1), A004431(n+1)]` -/
def P7059978602424792069.Spec : Prop :=
  ∀ n, (P7059978602424792069.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P17423306433748770678

`∩[A004431(n+1), A035252(n+1)]`
-/

namespace A264732.P17423306433748770678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P17423306433748770678

namespace A264732

/-- `∩[A004431(n+1), A035252(n+1)]` -/
def P17423306433748770678.Spec : Prop :=
  ∀ n, (P17423306433748770678.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P16151518607951974943

`∩[A004431(n+1), A084916(n+1)]`
-/

namespace A264732.P16151518607951974943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P16151518607951974943

namespace A264732

/-- `∩[A004431(n+1), A084916(n+1)]` -/
def P16151518607951974943.Spec : Prop :=
  ∀ n, (P16151518607951974943.a n : ℤ) = A264732 (n + 1)

end A264732

/-! ## A264732.P13934087217583091077

`∩[A004431(n+1), A155563(n+1)]`
-/

namespace A264732.P13934087217583091077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264732.P13934087217583091077

namespace A264732

/-- `∩[A004431(n+1), A155563(n+1)]` -/
def P13934087217583091077.Spec : Prop :=
  ∀ n, (P13934087217583091077.a n : ℤ) = A264732 (n + 1)

end A264732

/-!
# A264734: Prime powers k such that k - 2 and k + 2 are prime powers.

The programs for A264734, there is no canonical definition to state claims against.
-/

/-! ## A264734.P13456895980242987935

`A329364(n+1)+2`
-/

namespace A264734.P13456895980242987935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329364 (n + 1) + 2

end

end A264734.P13456895980242987935

/-! ## A264734.P2690711611994041236

`∩[A120431(n+1), A120432(n+1)+1]`
-/

namespace A264734.P2690711611994041236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264734.P2690711611994041236

/-! ## A264734.P18361297827624140227

`∩[A000961(n+1)+2, A120431(n+1)]`
-/

namespace A264734.P18361297827624140227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264734.P18361297827624140227

/-! ## A264734.P2438362132114129001

`∩[A000961(n+1), A164572(n+1)+2]`
-/

namespace A264734.P2438362132114129001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264734.P2438362132114129001

/-! ## A264734.P6044878706000997560

`∩[A120431(n+1), A164572(n+1)+2]`
-/

namespace A264734.P6044878706000997560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264734.P6044878706000997560

/-!
# A264735: a(n) = prime(2^(n-1)*(2*n-1)), n >= 1.

The programs for A264735, the canonical program `A264735.P17843105913403271074` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264735 has offset 1).

The definition of A264735 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A264735.P17843105913403271074

`A000040(2^n*(2*(n+1)-1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A264735

/-- `A000040(2^n*(2*(n+1)-1))` -/
def P17843105913403271074.Spec : Prop :=
  ∀ n, P17843105913403271074.a n = A264735 (n + 1)

theorem P17843105913403271074.correct : P17843105913403271074.Spec := by
  intro n
  simp only [A264735, Nat.add_sub_cancel]

end A264735

/-! ## A264735.P256679346965971341

`A264731((n+1)²+n²)`
-/

namespace A264735.P256679346965971341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264731 ((n + 1) ^ 2 + n ^ 2)

end

end A264735.P256679346965971341

namespace A264735

/-- `A264731((n+1)²+n²)` -/
def P256679346965971341.Spec : Prop :=
  ∀ n, P256679346965971341.a n = A264735 (n + 1)

end A264735

/-! ## A264735.P6209215327187068955

`A006093(2^n*Δ[n²])+1`
-/

namespace A264735.P6209215327187068955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 ((2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat + 1

end

end A264735.P6209215327187068955

namespace A264735

/-- `A006093(2^n*Δ[n²])+1` -/
def P6209215327187068955.Spec : Prop :=
  ∀ n, P6209215327187068955.a n = A264735 (n + 1)

end A264735

/-! ## A264735.P11907391864629598231

`A008578(2^n*Δ[n²]+1)`
-/

namespace A264735.P11907391864629598231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1).toNat

end

end A264735.P11907391864629598231

namespace A264735

/-- `A008578(2^n*Δ[n²]+1)` -/
def P11907391864629598231.Spec : Prop :=
  ∀ n, P11907391864629598231.a n = A264735 (n + 1)

end A264735

/-!
# A264737: Primes which divide some term of A000085 (numbers of involutions).

The programs for A264737, there is no canonical definition to state claims against.
-/

/-! ## A264737.P18270226209900420067

`A245177(A000038(n%a(n-1))+n)` with `a(0)=2`
-/

namespace A264737.P18270226209900420067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A245177 (A000038 (Int.tmod (n : ℤ) (a (n - 1))).toNat + (n : ℤ)).toNat

end

end A264737.P18270226209900420067

/-! ## A264737.P16797625653278670948

`A245177(A028310(n))%A016885(4*n)`
-/

namespace A264737.P16797625653278670948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245177 (A028310 n).toNat) (A016885 (4 * n))

end

end A264737.P16797625653278670948

/-! ## A264737.P2494308265651634680

`A245177(A000038(n)+n)%Δ[A051797(n)]`
-/

namespace A264737.P2494308265651634680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245177 (A000038 n + (n : ℤ)).toNat) (f1 (n + 1) - f1 n)

end

end A264737.P2494308265651634680

/-! ## A264737.P4288720155437360421

`A245177(A065033(2*n))%A002515(n+1)`
-/

namespace A264737.P4288720155437360421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245177 (A065033 (2 * n)).toNat) (A002515 (n + 1))

end

end A264737.P4288720155437360421

/-! ## A264737.P11680376105448184642

`A245177(A000007(n)+n)%A245202(n+1)`
-/

namespace A264737.P11680376105448184642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245177 (A000007 n + (n : ℤ)).toNat) (A245202 (n + 1))

end

end A264737.P11680376105448184642

/-! ## A264737.P5625169520627546360

`A001222(a(n-2))*A245177(A028310(n))` with `a(0)=2, a(1)=5`
-/

namespace A264737.P5625169520627546360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A001222 (a (n - 2)).toNat * A245177 (A028310 n).toNat

end

end A264737.P5625169520627546360

/-! ## A264737.P5811769669317337518

`A067815(a(n-1))*A245177(A028310(n))` with `a(0)=2`
-/

namespace A264737.P5811769669317337518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A067815 (a (n - 1)).toNat * A245177 (A028310 n).toNat

end

end A264737.P5811769669317337518

/-! ## A264737.P963672605523924749

`A245177(n)%A245177(a(n-1)+1)` with `a(0)=2`
-/

namespace A264737.P963672605523924749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A245177 n) (A245177 (a (n - 1) + 1).toNat)

end

end A264737.P963672605523924749

/-! ## A264737.P5007919846972374747

`A245177(n-and(1, A245177(a(n-1)+1))+1)` with `a(0)=2`
-/

namespace A264737.P5007919846972374747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A245177 ((n : ℤ) - Int.land 1 (A245177 (a (n - 1) + 1).toNat) + 1).toNat

end

end A264737.P5007919846972374747

/-!
# A264739: Characteristic function of A002202, the range of Euler's totient function A000010.

The programs for A264739, the canonical program `A264739.P2109143012642939109` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264739 has offset 1).

The definition of A264739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264739.P15538193639026753217

`A049283(n+1)%2`
-/

namespace A264739.P15538193639026753217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049283 (n + 1)) 2

end

end A264739.P15538193639026753217

namespace A264739

/-- `A049283(n+1)%2` -/
def P15538193639026753217.Spec : Prop :=
  ∀ n, P15538193639026753217.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P9668931521304536562

`A323169(n+1)%2`
-/

namespace A264739.P9668931521304536562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323169 (n + 1)) 2

end

end A264739.P9668931521304536562

namespace A264739

/-- `A323169(n+1)%2` -/
def P9668931521304536562.Spec : Prop :=
  ∀ n, P9668931521304536562.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P1156861146005930085

`floor(atan(A014197(n+1)))`
-/

namespace A264739.P1156861146005930085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A014197 (n + 1) : ℝ)⌋

end

end A264739.P1156861146005930085

namespace A264739

/-- `floor(atan(A014197(n+1)))` -/
def P1156861146005930085.Spec : Prop :=
  ∀ n, P1156861146005930085.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P12611076801907111291

`char[A000010(n+1)-1]`
-/

namespace A264739.P12611076801907111291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A264739.P12611076801907111291

namespace A264739

/-- `char[A000010(n+1)-1]` -/
def P12611076801907111291.Spec : Prop :=
  ∀ n, (P12611076801907111291.a n : ℤ) = A264739 (n + 1)

end A264739

/-! ## A264739.P2169212397456079029

`char[A002202(n+1)-1]`
-/

namespace A264739.P2169212397456079029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A264739.P2169212397456079029

namespace A264739

/-- `char[A002202(n+1)-1]` -/
def P2169212397456079029.Spec : Prop :=
  ∀ n, (P2169212397456079029.a n : ℤ) = A264739 (n + 1)

end A264739

/-! ## A264739.P6777108545406424547

`char[A003972(n+1)-1]`
-/

namespace A264739.P6777108545406424547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A264739.P6777108545406424547

namespace A264739

/-- `char[A003972(n+1)-1]` -/
def P6777108545406424547.Spec : Prop :=
  ∀ n, (P6777108545406424547.a n : ℤ) = A264739 (n + 1)

end A264739

/-! ## A264739.P17309295431947698271

`char[A062570(n+1)-1]`
-/

namespace A264739.P17309295431947698271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A264739.P17309295431947698271

namespace A264739

/-- `char[A062570(n+1)-1]` -/
def P17309295431947698271.Spec : Prop :=
  ∀ n, (P17309295431947698271.a n : ℤ) = A264739 (n + 1)

end A264739

/-! ## A264739.P1878964596069771671

`char[lt[0, A057635(n+1)]]`
-/

namespace A264739.P1878964596069771671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A264739.P1878964596069771671

namespace A264739

/-- `char[lt[0, A057635(n+1)]]` -/
def P1878964596069771671.Spec : Prop :=
  ∀ n, (P1878964596069771671.a n : ℤ) = A264739 (n + 1)

end A264739

/-! ## A264739.P7644638880045818190

`A267871(A322311(n+1))`
-/

namespace A264739.P7644638880045818190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (A322311 (n + 1)).toNat

end

end A264739.P7644638880045818190

namespace A264739

/-- `A267871(A322311(n+1))` -/
def P7644638880045818190.Spec : Prop :=
  ∀ n, P7644638880045818190.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P5121222440649733562

`A050932(n)%A316665(n+1)`
-/

namespace A264739.P5121222440649733562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050932 n) (A316665 (n + 1))

end

end A264739.P5121222440649733562

namespace A264739

/-- `A050932(n)%A316665(n+1)` -/
def P5121222440649733562.Spec : Prop :=
  ∀ n, P5121222440649733562.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P15415255038631006052

`A115716(n)%A316665(n+1)`
-/

namespace A264739.P15415255038631006052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115716 n) (A316665 (n + 1))

end

end A264739.P15415255038631006052

namespace A264739

/-- `A115716(n)%A316665(n+1)` -/
def P15415255038631006052.Spec : Prop :=
  ∀ n, P15415255038631006052.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P14455253330945720687

`A123726(n)%A316665(n+1)`
-/

namespace A264739.P14455253330945720687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123726 n) (A316665 (n + 1))

end

end A264739.P14455253330945720687

namespace A264739

/-- `A123726(n)%A316665(n+1)` -/
def P14455253330945720687.Spec : Prop :=
  ∀ n, P14455253330945720687.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P5839455272066968196

`A141459(n)%A316665(n+1)`
-/

namespace A264739.P5839455272066968196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141459 n) (A316665 (n + 1))

end

end A264739.P5839455272066968196

namespace A264739

/-- `A141459(n)%A316665(n+1)` -/
def P5839455272066968196.Spec : Prop :=
  ∀ n, P5839455272066968196.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P16787522768136630452

`A158416(n)%A316665(n+1)`
-/

namespace A264739.P16787522768136630452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158416 n) (A316665 (n + 1))

end

end A264739.P16787522768136630452

namespace A264739

/-- `A158416(n)%A316665(n+1)` -/
def P16787522768136630452.Spec : Prop :=
  ∀ n, P16787522768136630452.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P607481644579027410

`and(A010123(n), A049283(n+1))`
-/

namespace A264739.P607481644579027410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010123 n) (A049283 (n + 1))

end

end A264739.P607481644579027410

namespace A264739

/-- `and(A010123(n), A049283(n+1))` -/
def P607481644579027410.Spec : Prop :=
  ∀ n, P607481644579027410.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P11557382560559562477

`and(A010130(n), A049283(n+1))`
-/

namespace A264739.P11557382560559562477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010130 n) (A049283 (n + 1))

end

end A264739.P11557382560559562477

namespace A264739

/-- `and(A010130(n), A049283(n+1))` -/
def P11557382560559562477.Spec : Prop :=
  ∀ n, P11557382560559562477.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P2834281017599893812

`and(A010131(n), A049283(n+1))`
-/

namespace A264739.P2834281017599893812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010131 n) (A049283 (n + 1))

end

end A264739.P2834281017599893812

namespace A264739

/-- `and(A010131(n), A049283(n+1))` -/
def P2834281017599893812.Spec : Prop :=
  ∀ n, P2834281017599893812.a n = A264739 (n + 1)

end A264739

/-! ## A264739.P2109143012642939109

`char[A037225(n)-1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A264739

/-- `char[A037225(n)-1]` -/
def P2109143012642939109.Spec : Prop :=
  ∀ n, (P2109143012642939109.a n : ℤ) = A264739 (n + 1)

theorem P2109143012642939109.correct : P2109143012642939109.Spec := by
  intro n
  simp only [A264739, Nat.add_sub_cancel]

end A264739

/-! ## A264739.P10617575644731536506

`char[A319997(n+1)-1]`
-/

namespace A264739.P10617575644731536506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A264739.P10617575644731536506

namespace A264739

/-- `char[A319997(n+1)-1]` -/
def P10617575644731536506.Spec : Prop :=
  ∀ n, (P10617575644731536506.a n : ℤ) = A264739 (n + 1)

end A264739

/-! ## A264739.P17304550336114493783

`char[abs(A000010(Δ[n²])-1)]`
-/

namespace A264739.P17304550336114493783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A264739.P17304550336114493783

namespace A264739

/-- `char[abs(A000010(Δ[n²])-1)]` -/
def P17304550336114493783.Spec : Prop :=
  ∀ n, (P17304550336114493783.a n : ℤ) = A264739 (n + 1)

end A264739

/-!
# A264740: Sum of odd parts of divisors of n.

The programs for A264740, the canonical program `A264740.P9929393964355727410` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264740 has offset 1).

The definition of A264740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264740.P17108253377033112853

`∑{d}[n+1, #/and(#, -#)]`
-/

namespace A264740.P17108253377033112853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (Int.land (d : ℤ) (-(d : ℤ)) : ℚ)

end

end A264740.P17108253377033112853

namespace A264740

/-- `∑{d}[n+1, #/and(#, -#)]` -/
def P17108253377033112853.Spec : Prop :=
  ∀ n, P17108253377033112853.a n = (A264740 (n + 1) : ℚ)

end A264740

/-! ## A264740.P15804971389636517972

`(val(n+1, 2)+1)*∑{d}[n+1, #]/xor(n, n+1)`
-/

namespace A264740.P15804971389636517972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ) * (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ))

end

end A264740.P15804971389636517972

namespace A264740

/-- `(val(n+1, 2)+1)*∑{d}[n+1, #]/xor(n, n+1)` -/
def P15804971389636517972.Spec : Prop :=
  ∀ n, P15804971389636517972.a n = (A264740 (n + 1) : ℚ)

end A264740

/-! ## A264740.P8736277320223023150

`∑{d}[n+1, A000265(#)]`
-/

namespace A264740.P8736277320223023150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d

end

end A264740.P8736277320223023150

namespace A264740

/-- `∑{d}[n+1, A000265(#)]` -/
def P8736277320223023150.Spec : Prop :=
  ∀ n, P8736277320223023150.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P1747462826960462480

`(val(n+1, 2)+1)*A000593(n+1)`
-/

namespace A264740.P1747462826960462480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A000593 (n + 1)

end

end A264740.P1747462826960462480

namespace A264740

/-- `(val(n+1, 2)+1)*A000593(n+1)` -/
def P1747462826960462480.Spec : Prop :=
  ∀ n, P1747462826960462480.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P9929393964355727410

`∑{d}[n+1, #*A088705((n+1)/#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A264740

/-- `∑{d}[n+1, #*A088705((n+1)/#)]` -/
def P9929393964355727410.Spec : Prop :=
  ∀ n, P9929393964355727410.a n = A264740 (n + 1)

theorem P9929393964355727410.correct : P9929393964355727410.Spec := by
  intro n
  simp only [A264740, Nat.add_sub_cancel]

end A264740

/-! ## A264740.P18315645554978617541

`(A007814(n+1)+1)*∑{d}[n+1, #]/xor(n, n+1)`
-/

namespace A264740.P18315645554978617541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1 : ℚ) * (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ))

end

end A264740.P18315645554978617541

namespace A264740

/-- `(A007814(n+1)+1)*∑{d}[n+1, #]/xor(n, n+1)` -/
def P18315645554978617541.Spec : Prop :=
  ∀ n, P18315645554978617541.a n = (A264740 (n + 1) : ℚ)

end A264740

/-! ## A264740.P6786516815163835693

`A000593(n+1)*A001511(n+1)`
-/

namespace A264740.P6786516815163835693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A001511 (n + 1)

end

end A264740.P6786516815163835693

namespace A264740

/-- `A000593(n+1)*A001511(n+1)` -/
def P6786516815163835693.Spec : Prop :=
  ∀ n, P6786516815163835693.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P12918316950005500491

`A064840(n+1)/A174238(n+1)`
-/

namespace A264740.P12918316950005500491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A174238 (n + 1) : ℚ)

end

end A264740.P12918316950005500491

namespace A264740

/-- `A064840(n+1)/A174238(n+1)` -/
def P12918316950005500491.Spec : Prop :=
  ∀ n, P12918316950005500491.a n = (A264740 (n + 1) : ℚ)

end A264740

/-! ## A264740.P830527682969520321

`A394790(n+1)/A038712(n+1)`
-/

namespace A264740.P830527682969520321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394790 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

end

end A264740.P830527682969520321

namespace A264740

/-- `A394790(n+1)/A038712(n+1)` -/
def P830527682969520321.Spec : Prop :=
  ∀ n, P830527682969520321.a n = (A264740 (n + 1) : ℚ)

end A264740

/-! ## A264740.P7777126298914783279

`(2-Δ[A000120(n)])*A000593(n+1)`
-/

namespace A264740.P7777126298914783279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A000593 (n + 1)

end

end A264740.P7777126298914783279

namespace A264740

/-- `(2-Δ[A000120(n)])*A000593(n+1)` -/
def P7777126298914783279.Spec : Prop :=
  ∀ n, P7777126298914783279.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P5299624365228238426

`(A007814(n+1)+1)*A000593(n+1)`
-/

namespace A264740.P5299624365228238426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A000593 (n + 1)

end

end A264740.P5299624365228238426

namespace A264740

/-- `(A007814(n+1)+1)*A000593(n+1)` -/
def P5299624365228238426.Spec : Prop :=
  ∀ n, P5299624365228238426.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P7220363476591331315

`2*A349371(n+1)-A000005(n+1)`
-/

namespace A264740.P7220363476591331315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349371 (n + 1) - A000005 (n + 1)

end

end A264740.P7220363476591331315

namespace A264740

/-- `2*A349371(n+1)-A000005(n+1)` -/
def P7220363476591331315.Spec : Prop :=
  ∀ n, P7220363476591331315.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P10521960887402435010

`∑{d}[n+1, A038500(#)*A065330((n+1)/#)]`
-/

namespace A264740.P10521960887402435010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038500 d * A065330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A264740.P10521960887402435010

namespace A264740

/-- `∑{d}[n+1, A038500(#)*A065330((n+1)/#)]` -/
def P10521960887402435010.Spec : Prop :=
  ∀ n, P10521960887402435010.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P5863714515799759679

`∑{d}[n+1, A048272(#)*A062570((n+1)/#)]`
-/

namespace A264740.P5863714515799759679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A264740.P5863714515799759679

namespace A264740

/-- `∑{d}[n+1, A048272(#)*A062570((n+1)/#)]` -/
def P5863714515799759679.Spec : Prop :=
  ∀ n, P5863714515799759679.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P11314258466179170220

`∑{d}[n+1, A026741(#)*A087810((n+1)/#)]`
-/

namespace A264740.P11314258466179170220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d * A087810 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A264740.P11314258466179170220

namespace A264740

/-- `∑{d}[n+1, A026741(#)*A087810((n+1)/#)]` -/
def P11314258466179170220.Spec : Prop :=
  ∀ n, P11314258466179170220.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P15984305072887917139

`∑{d}[n+1, A001615(#)*A181563((n+1)/#)]`
-/

namespace A264740.P15984305072887917139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A181563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A264740.P15984305072887917139

namespace A264740

/-- `∑{d}[n+1, A001615(#)*A181563((n+1)/#)]` -/
def P15984305072887917139.Spec : Prop :=
  ∀ n, P15984305072887917139.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P3087048346312482283

`∑{d}[n+1, A065333(#)*A121443((n+1)/#)]`
-/

namespace A264740.P3087048346312482283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 d * A121443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A264740.P3087048346312482283

namespace A264740

/-- `∑{d}[n+1, A065333(#)*A121443((n+1)/#)]` -/
def P3087048346312482283.Spec : Prop :=
  ∀ n, P3087048346312482283.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P13085625314675944003

`∑{d}[n+1, A060904(#)*A132740((n+1)/#)]`
-/

namespace A264740.P13085625314675944003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060904 d * A132740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A264740.P13085625314675944003

namespace A264740

/-- `∑{d}[n+1, A060904(#)*A132740((n+1)/#)]` -/
def P13085625314675944003.Spec : Prop :=
  ∀ n, P13085625314675944003.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P11868166793597947966

`∑{d}[n+1, A001511(#)*A193356((n+1)/#)]`
-/

namespace A264740.P11868166793597947966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A264740.P11868166793597947966

namespace A264740

/-- `∑{d}[n+1, A001511(#)*A193356((n+1)/#)]` -/
def P11868166793597947966.Spec : Prop :=
  ∀ n, P11868166793597947966.a n = A264740 (n + 1)

end A264740

/-! ## A264740.P11357201289070268812

`∑{d}[n+1, A097706(#)*A170818((n+1)/#)]`
-/

namespace A264740.P11357201289070268812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097706 d * A170818 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A264740.P11357201289070268812

namespace A264740

/-- `∑{d}[n+1, A097706(#)*A170818((n+1)/#)]` -/
def P11357201289070268812.Spec : Prop :=
  ∀ n, P11357201289070268812.a n = A264740 (n + 1)

end A264740

/-!
# A264745: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = Fibonacci(2^(n-1)*(2*k-1) + 1), n,k >= 1.

The programs for A264745, there is no canonical definition to state claims against.
-/

/-! ## A264745.P5004909045627577507

`A000045(A288870(n))`
-/

namespace A264745.P5004909045627577507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A288870 n).toNat

end

end A264745.P5004909045627577507

/-! ## A264745.P18120485062412238810

`A000045(A054582(n)+1)`
-/

namespace A264745.P18120485062412238810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A054582 n + 1).toNat

end

end A264745.P18120485062412238810

/-! ## A264745.P18357319785171266370

`A053602(A241957(n+1))`
-/

namespace A264745.P18357319785171266370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A241957 (n + 1)).toNat

end

end A264745.P18357319785171266370

/-! ## A264745.P15415730908858067360

`A097575(A257791(n+1))`
-/

namespace A264745.P15415730908858067360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A257791 (n + 1)).toNat

end

end A264745.P15415730908858067360

/-! ## A264745.P3501904907219471723

`A120250(A264731(n+1))`
-/

namespace A264745.P3501904907219471723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (A264731 (n + 1)).toNat

end

end A264745.P3501904907219471723

/-!
# A264746: a(n) is the number of domino towers with n bricks up to horizontal flipping.

The programs for A264746, there is no canonical definition to state claims against.
-/

/-! ## A264746.P11713439526204122340

`(3^n+A320314(n+1))/2`
-/

namespace A264746.P11713439526204122340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) + A320314 (n + 1) : ℚ) / 2

end

end A264746.P11713439526204122340

/-! ## A264746.P11292338068542900813

`(A320314(n+1)+A000244(n))/2`
-/

namespace A264746.P11292338068542900813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320314 (n + 1) + A000244 n : ℚ) / 2

end

end A264746.P11292338068542900813

/-! ## A264746.P5151351324267829773

`A003462(n)+A001057(A320314(n+1))`
-/

namespace A264746.P5151351324267829773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + A001057 (A320314 (n + 1)).toNat

end

end A264746.P5151351324267829773

/-! ## A264746.P612796327678912859

`A001281(A320314(n+1)+3^n)`
-/

namespace A264746.P612796327678912859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A320314 (n + 1) + (3 ^ n : ℤ)).toNat

end

end A264746.P612796327678912859

/-! ## A264746.P6238390786737250599

`A004525(A320314(n+1)+3^n)`
-/

namespace A264746.P6238390786737250599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A320314 (n + 1) + (3 ^ n : ℤ)).toNat

end

end A264746.P6238390786737250599

/-!
# A264748: a(n) = Sum_{k = 1..n} (k^n - n^k).

The programs for A264748, there is no canonical definition to state claims against.
-/

/-! ## A264748.P5833882364611526410

`A031971(n+1)-A031972(n+1)`
-/

namespace A264748.P5833882364611526410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (n + 1) - A031972 (n + 1)

end

end A264748.P5833882364611526410

/-! ## A264748.P13841405187923412757

`A117667(n+1)-A341331(n+1)`
-/

namespace A264748.P13841405187923412757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117667 (n + 1) - A341331 (n + 1)

end

end A264748.P13841405187923412757

/-! ## A264748.P5371214969633376617

`A191690(n+1)+1-A341331(n+1)`
-/

namespace A264748.P5371214969633376617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191690 (n + 1) + (1 - A341331 (n + 1))

end

end A264748.P5371214969633376617

/-! ## A264748.P15142686481967851991

`A117667(n+1)-(Δ[A001923(n)]-A121706(n+1))`
-/

namespace A264748.P15142686481967851991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117667 (n + 1) - (f1 (n + 1) - f1 n - A121706 (n + 1))

end

end A264748.P15142686481967851991

/-! ## A264748.P17028649700594307363

`A000312(n+1)+1-A023037(n+1)-A341331(n+1)`
-/

namespace A264748.P17028649700594307363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) + (1 - A023037 (n + 1)) - A341331 (n + 1)

end

end A264748.P17028649700594307363

/-!
# A264749: a(n) = floor(n/BL(n)) where BL(n) = A070939(n) is the binary length of n.

The programs for A264749, the canonical program `A264749.P2598017411895838658` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264749 has offset 0).

The definition of A264749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264749.P2598017411895838658

`floor(n/(floor(log2(or(1, n)))+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A264749

/-- `floor(n/(floor(log2(or(1, n)))+1))` -/
def P2598017411895838658.Spec : Prop :=
  ∀ n, P2598017411895838658.a n = A264749 n

theorem P2598017411895838658.correct : P2598017411895838658.Spec := by
  intro n
  simp only [A264749]

end A264749

/-! ## A264749.P5706279807220654185

`floor(n/floor(log2(2*or(1, n))))`
-/

namespace A264749.P5706279807220654185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.log 2 (2 * Nat.lor 1 n) : ℚ)⌋

end

end A264749.P5706279807220654185

namespace A264749

/-- `floor(n/floor(log2(2*or(1, n))))` -/
def P5706279807220654185.Spec : Prop :=
  ∀ n, P5706279807220654185.a n = A264749 n

end A264749

/-! ## A264749.P16599066596977108188

`floor(n/floor(log2(xor(1, n)+1+n)))`
-/

namespace A264749.P16599066596977108188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.log 2 (Nat.xor 1 n + 1 + n) : ℚ)⌋

end

end A264749.P16599066596977108188

namespace A264749

/-- `floor(n/floor(log2(xor(1, n)+1+n)))` -/
def P16599066596977108188.Spec : Prop :=
  ∀ n, P16599066596977108188.a n = A264749 n

end A264749

/-! ## A264749.P13950036244636394028

`floor(n/floor(log2(abs(1-2*n)+1)))`
-/

namespace A264749.P13950036244636394028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.log 2 (|1 - (2 * n : ℤ)| + 1).toNat : ℚ)⌋

end

end A264749.P13950036244636394028

namespace A264749

/-- `floor(n/floor(log2(abs(1-2*n)+1)))` -/
def P13950036244636394028.Spec : Prop :=
  ∀ n, P13950036244636394028.a n = A264749 n

end A264749

/-! ## A264749.P14688258378716423167

`ceil((n+1)/A070939(n))-1`
-/

namespace A264749.P14688258378716423167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A070939 n : ℚ)⌉ - 1

end

end A264749.P14688258378716423167

namespace A264749

/-- `ceil((n+1)/A070939(n))-1` -/
def P14688258378716423167.Spec : Prop :=
  ∀ n, P14688258378716423167.a n = A264749 n

end A264749

/-! ## A264749.P8252860508527753093

`val(A000079(n), A062383(A028310(n)))`
-/

namespace A264749.P8252860508527753093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A062383 (A028310 n).toNat).toNat

end

end A264749.P8252860508527753093

namespace A264749

/-- `val(A000079(n), A062383(A028310(n)))` -/
def P8252860508527753093.Spec : Prop :=
  ∀ n, (P8252860508527753093.a n : ℤ) = A264749 n

end A264749

/-!
# A264750: Number of sequences of 5 throws of an n-sided die (with faces numbered 1, 2, ..., n) in which the sum of the throws first reaches or exceeds n on the 5th throw.

The programs for A264750, the canonical program `A264750.P18189299930796681337` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264750 has offset 5).

The definition of A264750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264750.P18189299930796681337

`(n+1)*(n+2)*(n+3)*(n+4)*(4*(n+5)+5)/120`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A264750

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(4*(n+5)+5)/120` -/
def P18189299930796681337.Spec : Prop :=
  ∀ n, P18189299930796681337.a n = (A264750 (n + 5) : ℚ)

end A264750

/-! ## A264750.P1344363278114757779

`floor(∑[∑[∑[∑[a(n-1)+4]]]])` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A264750.P1344363278114757779
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f4 =>
  f4 (n - 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264750.P1344363278114757779

namespace A264750

/-- `floor(∑[∑[∑[∑[a(n-1)+4]]]])` -/
def P1344363278114757779.Spec : Prop :=
  ∀ n, (P1344363278114757779.a n : ℤ) = A264750 (n + 5)

end A264750

/-! ## A264750.P15196320115201500849

`∑[∑[∑[a(n-1)+4]]]+a(n-1)` with `a(0)=5`
-/

namespace A264750.P15196320115201500849
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A264750.P15196320115201500849

namespace A264750

/-- `∑[∑[∑[a(n-1)+4]]]+a(n-1)` -/
def P15196320115201500849.Spec : Prop :=
  ∀ n, (P15196320115201500849.a n : ℤ) = A264750 (n + 5)

end A264750

/-! ## A264750.P8589113199234693268

`2*A059599(n)-A034263(n)`
-/

namespace A264750.P8589113199234693268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059599 n - A034263 n

end

end A264750.P8589113199234693268

namespace A264750

/-- `2*A059599(n)-A034263(n)` -/
def P8589113199234693268.Spec : Prop :=
  ∀ n, P8589113199234693268.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P17509249495332395661

`A253945(n+4)-A005585(n+1)`
-/

namespace A264750.P17509249495332395661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253945 (n + 4) - A005585 (n + 1)

end

end A264750.P17509249495332395661

namespace A264750

/-- `A253945(n+4)-A005585(n+1)` -/
def P17509249495332395661.Spec : Prop :=
  ∀ n, P17509249495332395661.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P3102613310384626701

`A005585(n+1)+2*A005583(n+1)`
-/

namespace A264750.P3102613310384626701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + 2 * A005583 (n + 1)

end

end A264750.P3102613310384626701

namespace A264750

/-- `A005585(n+1)+2*A005583(n+1)` -/
def P3102613310384626701.Spec : Prop :=
  ∀ n, P3102613310384626701.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P12943108093790009380

`A005583(n+1)+A253945(n+4)/2`
-/

namespace A264750.P12943108093790009380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005583 (n + 1) : ℚ) + (A253945 (n + 4) : ℚ) / 2

end

end A264750.P12943108093790009380

namespace A264750

/-- `A005583(n+1)+A253945(n+4)/2` -/
def P12943108093790009380.Spec : Prop :=
  ∀ n, P12943108093790009380.a n = (A264750 (n + 5) : ℚ)

end A264750

/-! ## A264750.P9224519008097373296

`A005714(n+3)+A062990(n)-∑[A005714(n+3)]`
-/

namespace A264750.P9224519008097373296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005714 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005714 (n + 3) + (A062990 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264750.P9224519008097373296

namespace A264750

/-- `A005714(n+3)+A062990(n)-∑[A005714(n+3)]` -/
def P9224519008097373296.Spec : Prop :=
  ∀ n, P9224519008097373296.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P17159078438916319377

`A051880(n+1)-(A034263(n+1)+A005585(n+1))`
-/

namespace A264750.P17159078438916319377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 (n + 1) - (A034263 (n + 1) + A005585 (n + 1))

end

end A264750.P17159078438916319377

namespace A264750

/-- `A051880(n+1)-(A034263(n+1)+A005585(n+1))` -/
def P17159078438916319377.Spec : Prop :=
  ∀ n, P17159078438916319377.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P14236701613452136444

`A034263(n)+A033488(n+1)`
-/

namespace A264750.P14236701613452136444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + A033488 (n + 1)

end

end A264750.P14236701613452136444

namespace A264750

/-- `A034263(n)+A033488(n+1)` -/
def P14236701613452136444.Spec : Prop :=
  ∀ n, P14236701613452136444.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P6545259751390786684

`A034263(n+1)-A000292(n+2)`
-/

namespace A264750.P6545259751390786684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 (n + 1) - A000292 (n + 2)

end

end A264750.P6545259751390786684

namespace A264750

/-- `A034263(n+1)-A000292(n+2)` -/
def P6545259751390786684.Spec : Prop :=
  ∀ n, P6545259751390786684.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P10067036950924037047

`A056118(n+1)-(A027800(n+1)+A005585(n+1))`
-/

namespace A264750.P10067036950924037047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056118 (n + 1) - (A027800 (n + 1) + A005585 (n + 1))

end

end A264750.P10067036950924037047

namespace A264750

/-- `A056118(n+1)-(A027800(n+1)+A005585(n+1))` -/
def P10067036950924037047.Spec : Prop :=
  ∀ n, P10067036950924037047.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P9340730615420130506

`A051878(n+1)-(A005585(n+1)+A005585(n+2))`
-/

namespace A264750.P9340730615420130506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051878 (n + 1) - (A005585 (n + 1) + A005585 (n + 2))

end

end A264750.P9340730615420130506

namespace A264750

/-- `A051878(n+1)-(A005585(n+1)+A005585(n+2))` -/
def P9340730615420130506.Spec : Prop :=
  ∀ n, P9340730615420130506.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P6961735876404923584

`A253942(n+4)+A005583(n+1)`
-/

namespace A264750.P6961735876404923584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 4) + A005583 (n + 1)

end

end A264750.P6961735876404923584

namespace A264750

/-- `A253942(n+4)+A005583(n+1)` -/
def P6961735876404923584.Spec : Prop :=
  ∀ n, P6961735876404923584.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P12164849528755492219

`2*A253942(n+4)-A005585(n+1)`
-/

namespace A264750.P12164849528755492219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253942 (n + 4) - A005585 (n + 1)

end

end A264750.P12164849528755492219

namespace A264750

/-- `2*A253942(n+4)-A005585(n+1)` -/
def P12164849528755492219.Spec : Prop :=
  ∀ n, P12164849528755492219.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P10312826062236205685

`2*A038163(2*n+1)-A038163(2*n)`
-/

namespace A264750.P10312826062236205685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038163 (2 * n + 1) - A038163 (2 * n)

end

end A264750.P10312826062236205685

namespace A264750

/-- `2*A038163(2*n+1)-A038163(2*n)` -/
def P10312826062236205685.Spec : Prop :=
  ∀ n, P10312826062236205685.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P3537654766815508349

`A096338(2*(n+1))+A059599(n)`
-/

namespace A264750.P3537654766815508349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 (2 * (n + 1)) + A059599 n

end

end A264750.P3537654766815508349

namespace A264750

/-- `A096338(2*(n+1))+A059599(n)` -/
def P3537654766815508349.Spec : Prop :=
  ∀ n, P3537654766815508349.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P12294007821062505312

`A038163(2*(n+1))-A000292(n+2)`
-/

namespace A264750.P12294007821062505312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038163 (2 * (n + 1)) - A000292 (n + 2)

end

end A264750.P12294007821062505312

namespace A264750

/-- `A038163(2*(n+1))-A000292(n+2)` -/
def P12294007821062505312.Spec : Prop :=
  ∀ n, P12294007821062505312.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P11163162237468618602

`A096338(2*(n+1))+A038163(2*n+1)`
-/

namespace A264750.P11163162237468618602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 (2 * (n + 1)) + A038163 (2 * n + 1)

end

end A264750.P11163162237468618602

namespace A264750

/-- `A096338(2*(n+1))+A038163(2*n+1)` -/
def P11163162237468618602.Spec : Prop :=
  ∀ n, P11163162237468618602.a n = A264750 (n + 5)

end A264750

/-! ## A264750.P1998205156864508542

`A067056(n+2)+A000217(A000096(n+1))`
-/

namespace A264750.P1998205156864508542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067056 (n + 2) + A000217 (A000096 (n + 1)).toNat

end

end A264750.P1998205156864508542

namespace A264750

/-- `A067056(n+2)+A000217(A000096(n+1))` -/
def P1998205156864508542.Spec : Prop :=
  ∀ n, P1998205156864508542.a n = A264750 (n + 5)

end A264750

/-!
# A264751: Triangle read by rows: T(n,k) is the number of sequences of k <= n throws of an n-sided die (with faces numbered 1, 2, ..., n) in which the sum of the throws first reaches or exceeds n on the k-th throw.

The programs for A264751, there is no canonical definition to state claims against.
-/

/-! ## A264751.P9742443210206782011

`A060351(2*A099627(n))`
-/

namespace A264751.P9742443210206782011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (2 * A099627 n).toNat

end

end A264751.P9742443210206782011

/-! ## A264751.P12380462217126639478

`A060351(lcm(2, A099627(n)))`
-/

namespace A264751.P12380462217126639478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (Int.lcm 2 (A099627 n))

end

end A264751.P12380462217126639478

/-! ## A264751.P16791400396709840226

`A141692(n)+A134081(n)`
-/

namespace A264751.P16791400396709840226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n + A134081 n

end

end A264751.P16791400396709840226

/-! ## A264751.P12243013383366318217

`A060351(record[2*A126441(n)])`
-/

namespace A264751.P12243013383366318217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A264751.P12243013383366318217

/-! ## A264751.P10061030149993113640

`A060351(A204985(n+1)+1)`
-/

namespace A264751.P10061030149993113640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A204985 (n + 1) + 1).toNat

end

end A264751.P10061030149993113640

/-! ## A264751.P8657020314731657842

`A060351(A209492(n+1)-1)`
-/

namespace A264751.P8657020314731657842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A209492 (n + 1) - 1).toNat

end

end A264751.P8657020314731657842

/-! ## A264751.P11645530415407908503

`A216973(n)+A128133(n+1)`
-/

namespace A264751.P11645530415407908503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A128133 (n + 1)

end

end A264751.P11645530415407908503

/-! ## A264751.P11413421802368558932

`A060351(A099627(n)/cot(atan(2)))`
-/

namespace A264751.P11413421802368558932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.roundAway ((A099627 n : ℝ) / Real.cot (Real.arctan (2 : ℝ)))).toNat

end

end A264751.P11413421802368558932

/-! ## A264751.P16129642624554982073

`A003506(n+1)-A206735(n+1)`
-/

namespace A264751.P16129642624554982073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - A206735 (n + 1)

end

end A264751.P16129642624554982073

/-! ## A264751.P15418352279971001128

`A060351(A005843(A099627(n)))`
-/

namespace A264751.P15418352279971001128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A005843 (A099627 n).toNat).toNat

end

end A264751.P15418352279971001128

/-!
# A264752: First differences of A106543.

The programs for A264752, the canonical program `A264752.P16503107213581928400` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264752 has offset 1).

The definition of A264752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264752.P16503107213581928400

`Δ[A106543(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A264752

/-- `Δ[A106543(n+1)]` -/
def P16503107213581928400.Spec : Prop :=
  ∀ n, P16503107213581928400.a n = A264752 (n + 1)

theorem P16503107213581928400.correct : P16503107213581928400.Spec := by
  intro n
  simp only [A264752, Nat.add_sub_cancel]

end A264752

/-! ## A264752.P13914540145321349474

`Δ[record[A052410(A018252(n+3))]]`
-/

namespace A264752.P13914540145321349474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A018252 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264752.P13914540145321349474

namespace A264752

/-- `Δ[record[A052410(A018252(n+3))]]` -/
def P13914540145321349474.Spec : Prop :=
  ∀ n, P13914540145321349474.a n = A264752 (n + 1)

end A264752

/-! ## A264752.P3689441625076682504

`A106543(n+2)-A106543(n+1)`
-/

namespace A264752.P3689441625076682504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 2) - A106543 (n + 1)

end

end A264752.P3689441625076682504

namespace A264752

/-- `A106543(n+2)-A106543(n+1)` -/
def P3689441625076682504.Spec : Prop :=
  ∀ n, P3689441625076682504.a n = A264752 (n + 1)

theorem P3689441625076682504.correct : P3689441625076682504.Spec := by
  intro n
  simp only [A264752, Nat.add_sub_cancel, A264752.P3689441625076682504.a, A264752.P16503107213581928400.f1, A264752.P16503107213581928400.a, SequenceMachineLib.memo_apply]

end A264752

/-! ## A264752.P8611959508048445027

`Δ[eq[A005171(n+1), A052409(n+1)]]`
-/

namespace A264752.P8611959508048445027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A264752.P8611959508048445027

namespace A264752

/-- `Δ[eq[A005171(n+1), A052409(n+1)]]` -/
def P8611959508048445027.Spec : Prop :=
  ∀ n, P8611959508048445027.a n = A264752 (n + 1)

end A264752

/-! ## A264752.P15300835846924622031

`Δ[∩[A007916(n+1), A018252(n+1)]]`
-/

namespace A264752.P15300835846924622031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A264752.P15300835846924622031

namespace A264752

/-- `Δ[∩[A007916(n+1), A018252(n+1)]]` -/
def P15300835846924622031.Spec : Prop :=
  ∀ n, P15300835846924622031.a n = A264752 (n + 1)

end A264752

/-!
# A264753: Irregular triangle read by rows: T(n,k) = A127671(n,k)/A036040(n,k), n >= 1 and 1 <= k <= A000041(n).

The programs for A264753, there is no canonical definition to state claims against.
-/

/-! ## A264753.P8148110526946288215

`A127671(n+1)/A036040(n+1)`
-/

namespace A264753.P8148110526946288215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127671 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A264753.P8148110526946288215

/-! ## A264753.P17291897778161749634

`A096162(n+1)/A036038(n+1)*A127671(n+1)`
-/

namespace A264753.P17291897778161749634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096162 (n + 1) : ℚ) / (A036038 (n + 1) : ℚ) * (A127671 (n + 1) : ℚ)

end

end A264753.P17291897778161749634

/-! ## A264753.P8592845792064652507

`A107106(n+1)/A036039(n+1)*A127671(n+1)`
-/

namespace A264753.P8592845792064652507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A127671 (n + 1) : ℚ)

end

end A264753.P8592845792064652507

/-! ## A264753.P5473479565513554655

`A127671(n+1)/A049009(n+1)*A178888(n+1)`
-/

namespace A264753.P5473479565513554655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127671 (n + 1) : ℚ) / (A049009 (n + 1) : ℚ) * (A178888 (n + 1) : ℚ)

end

end A264753.P5473479565513554655

/-! ## A264753.P12587106454596195599

`A127671(n+1)/A124794(A185974(n+1))`
-/

namespace A264753.P12587106454596195599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127671 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A264753.P12587106454596195599

/-! ## A264753.P5394593828667134359

`A127671(n+1)/A000027(A036038(n+1)/A096162(n+1))`
-/

namespace A264753.P5394593828667134359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127671 (n + 1) : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ))).toNat : ℚ)

end

end A264753.P5394593828667134359

/-! ## A264753.P2112024922872108179

`A127671(n+1)/A000027(A049009(n+1)/A178888(n+1))`
-/

namespace A264753.P2112024922872108179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127671 (n + 1) : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ))).toNat : ℚ)

end

end A264753.P2112024922872108179

/-! ## A264753.P13175045328503383780

`A127671(n+1)/A028310(A049009(n+1)/A178888(n+1))`
-/

namespace A264753.P13175045328503383780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127671 (n + 1) : ℚ) / (A028310 (SequenceMachineLib.roundAway ((A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ))).toNat : ℚ)

end

end A264753.P13175045328503383780

/-!
# A264754: Expansion of (1 + 2*x - 2*x^3 + x^4)/((1 - x)^3*(1 + x)^2).

The programs for A264754, the canonical program `A264754.P6052536708840037587` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264754 has offset 0).

The definition of A264754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-2x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` (program `A264754.P6052536708840037587`, by `A264754.P6052536708840037587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264754.P6052536708840037587

`ogf((1+2x-2x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A264754

/-- `ogf((1+2x-2x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P6052536708840037587.Spec : Prop :=
  ∀ n, P6052536708840037587.a n = A264754 n

theorem P6052536708840037587.correct : P6052536708840037587.Spec := by
  intro n
  simp only [A264754]

end A264754

/-! ## A264754.P6012036581323779219

`(2*n*(n+(-1)^n+5)-3*(-1)^n+11)/8`
-/

namespace A264754.P6012036581323779219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) * ((n : ℤ) + (-1) ^ n + 5) - 3 * (-1) ^ n + 11 : ℚ) / 8

end

end A264754.P6012036581323779219

namespace A264754

/-- `(2*n*(n+(-1)^n+5)-3*(-1)^n+11)/8` -/
def P6012036581323779219.Spec : Prop :=
  ∀ n, P6012036581323779219.a n = (A264754 n : ℚ)

end A264754

/-! ## A264754.P7375308895157001232

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=11`
-/

namespace A264754.P7375308895157001232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 7, 11] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A264754.P7375308895157001232

namespace A264754

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P7375308895157001232.Spec : Prop :=
  ∀ n, P7375308895157001232.a n = A264754 n

end A264754

/-! ## A264754.P12266468105818764799

`or(1, ∑[C(or(1, n), n)])`
-/

namespace A264754.P12266468105818764799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264754.P12266468105818764799

namespace A264754

/-- `or(1, ∑[C(or(1, n), n)])` -/
def P12266468105818764799.Spec : Prop :=
  ∀ n, (P12266468105818764799.a n : ℤ) = A264754 n

end A264754

/-! ## A264754.P17908993108794805186

`or(1, ∑[gcd(n+1, n%2)])`
-/

namespace A264754.P17908993108794805186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264754.P17908993108794805186

namespace A264754

/-- `or(1, ∑[gcd(n+1, n%2)])` -/
def P17908993108794805186.Spec : Prop :=
  ∀ n, (P17908993108794805186.a n : ℤ) = A264754 n

end A264754

/-! ## A264754.P10281823955412295657

`or(1, ∑[or(1, gcd(n, and(1, n)))])`
-/

namespace A264754.P10281823955412295657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.gcd n (Nat.land 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264754.P10281823955412295657

namespace A264754

/-- `or(1, ∑[or(1, gcd(n, and(1, n)))])` -/
def P10281823955412295657.Spec : Prop :=
  ∀ n, (P10281823955412295657.a n : ℤ) = A264754 n

end A264754

/-! ## A264754.P8192491491904881342

`∑[2*floor(n/a(n-1))]` with `a(0)=1`
-/

namespace A264754.P8192491491904881342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264754.P8192491491904881342

namespace A264754

/-- `∑[2*floor(n/a(n-1))]` -/
def P8192491491904881342.Spec : Prop :=
  ∀ n, P8192491491904881342.a n = A264754 n

end A264754

/-! ## A264754.P3054148735426620358

`or(1, a(n-2)+n+1)` with `a(0)=1, a(1)=3`
-/

namespace A264754.P3054148735426620358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor 1 (a (n - 2) + (n + 1))

end

end A264754.P3054148735426620358

namespace A264754

/-- `or(1, a(n-2)+n+1)` -/
def P3054148735426620358.Spec : Prop :=
  ∀ n, (P3054148735426620358.a n : ℤ) = A264754 n

end A264754

/-! ## A264754.P3453581813053671005

`or(1, ∑[(n+1)^((n+1)%2)])`
-/

namespace A264754.P3453581813053671005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264754.P3453581813053671005

namespace A264754

/-- `or(1, ∑[(n+1)^((n+1)%2)])` -/
def P3453581813053671005.Spec : Prop :=
  ∀ n, (P3453581813053671005.a n : ℤ) = A264754 n

end A264754

/-! ## A264754.P9059048887923536188

`or(1, ∑[(n+1)^and(1, n+1)])`
-/

namespace A264754.P9059048887923536188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264754.P9059048887923536188

namespace A264754

/-- `or(1, ∑[(n+1)^and(1, n+1)])` -/
def P9059048887923536188.Spec : Prop :=
  ∀ n, (P9059048887923536188.a n : ℤ) = A264754 n

end A264754

/-! ## A264754.P796580554775179640

`∪[∑[2*n], n*(n+3)]+1`
-/

namespace A264754.P796580554775179640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n + 1

end

end A264754.P796580554775179640

namespace A264754

/-- `∪[∑[2*n], n*(n+3)]+1` -/
def P796580554775179640.Spec : Prop :=
  ∀ n, (P796580554775179640.a n : ℤ) = A264754 n

end A264754

/-! ## A264754.P14038821559195023319

`a(n-2)+and(n+2, -2)` with `a(0)=1, a(1)=3`
-/

namespace A264754.P14038821559195023319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + Int.land (n + 2 : ℤ) (-2)

end

end A264754.P14038821559195023319

namespace A264754

/-- `a(n-2)+and(n+2, -2)` -/
def P14038821559195023319.Spec : Prop :=
  ∀ n, P14038821559195023319.a n = A264754 n

end A264754

/-! ## A264754.P15222046976335311282

`floor((n+2)²/2-a(n-1))` with `a(0)=1`
-/

namespace A264754.P15222046976335311282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n + 2) ^ 2 : ℚ) / 2 - (a (n - 1) : ℚ)⌋

end

end A264754.P15222046976335311282

namespace A264754

/-- `floor((n+2)²/2-a(n-1))` -/
def P15222046976335311282.Spec : Prop :=
  ∀ n, P15222046976335311282.a n = A264754 n

end A264754

/-! ## A264754.P1777424266314192913

`∑[n-(n-2)%a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A264754.P1777424266314192913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 2) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264754.P1777424266314192913

namespace A264754

/-- `∑[n-(n-2)%a(n-1)]` -/
def P1777424266314192913.Spec : Prop :=
  ∀ n, P1777424266314192913.a n = A264754 n

end A264754

/-! ## A264754.P9674830183213245327

`∑[2*floor(n*a(n-1)^(-1))]` with `a(0)=1`
-/

namespace A264754.P9674830183213245327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ⌊(n : ℚ) * (f1 (n - 1) : ℚ) ^ (-1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264754.P9674830183213245327

namespace A264754

/-- `∑[2*floor(n*a(n-1)^(-1))]` -/
def P9674830183213245327.Spec : Prop :=
  ∀ n, P9674830183213245327.a n = A264754 n

end A264754

/-! ## A264754.P5443889727856197923

`∑[2/floor(n/a(n-1))^(-1)]` with `a(0)=1`
-/

namespace A264754.P5443889727856197923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / (⌊(n : ℚ) / f1 (n - 1)⌋ : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264754.P5443889727856197923

namespace A264754

/-- `∑[2/floor(n/a(n-1))^(-1)]` -/
def P5443889727856197923.Spec : Prop :=
  ∀ n, P5443889727856197923.a n = (A264754 n : ℚ)

end A264754

/-! ## A264754.P12816978311395270246

`∑[gcd(a(n-2)+2, 2*n)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A264754.P12816978311395270246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  Nat.gcd (f1 (n - 2) + 2) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264754.P12816978311395270246

namespace A264754

/-- `∑[gcd(a(n-2)+2, 2*n)]` -/
def P12816978311395270246.Spec : Prop :=
  ∀ n, (P12816978311395270246.a n : ℤ) = A264754 n

end A264754

/-! ## A264754.P9580761706147322976

`∑[(n-1)^and(1, n+1)]+n+2`
-/

namespace A264754.P9580761706147322976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)

end

end A264754.P9580761706147322976

namespace A264754

/-- `∑[(n-1)^and(1, n+1)]+n+2` -/
def P9580761706147322976.Spec : Prop :=
  ∀ n, P9580761706147322976.a n = A264754 n

end A264754

/-! ## A264754.P498828691293734584

`∑[and(n-1, n-a(n-1))+2]` with `a(0)=1`
-/

namespace A264754.P498828691293734584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land ((n : ℤ) - 1) ((n : ℤ) - f1 (n - 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264754.P498828691293734584

namespace A264754

/-- `∑[and(n-1, n-a(n-1))+2]` -/
def P498828691293734584.Spec : Prop :=
  ∀ n, P498828691293734584.a n = A264754 n

end A264754

/-! ## A264754.P2659978980554142317

`floor((n+2)*(n/2+1))-a(n-1)` with `a(0)=1`
-/

namespace A264754.P2659978980554142317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 2 : ℚ) * ((n : ℚ) / 2 + 1)⌋ - a (n - 1)

end

end A264754.P2659978980554142317

namespace A264754

/-- `floor((n+2)*(n/2+1))-a(n-1)` -/
def P2659978980554142317.Spec : Prop :=
  ∀ n, P2659978980554142317.a n = A264754 n

end A264754

/-!
# A264756: An eventually quasilinear solution to Hofstadter's Q recurrence.

The programs for A264756, the canonical program `A264756.P12721565530622230683` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264756 has offset 1).

The definition of A264756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264756.P12721565530622230683

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3, a(4)=2, a(5)=6, a(6)=3, a(7)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A264756

/-- `2*a(n-3)-a(n-6)` -/
def P12721565530622230683.Spec : Prop :=
  ∀ n, P12721565530622230683.a n = A264756 (n + 1)

theorem P12721565530622230683.correct : P12721565530622230683.Spec := by
  intro n
  simp only [A264756, Nat.add_sub_cancel]

end A264756

/-! ## A264756.P3707285416614539338

`∑[A080031(n)+n]%A080030(n)`
-/

namespace A264756.P3707285416614539338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080031 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A080030 n)

end

end A264756.P3707285416614539338

namespace A264756

/-- `∑[A080031(n)+n]%A080030(n)` -/
def P3707285416614539338.Spec : Prop :=
  ∀ n, P3707285416614539338.a n = A264756 (n + 1)

end A264756

/-! ## A264756.P10009347154826609641

`A079978(n)+A143097(n+2)%A143097(n+1)`
-/

namespace A264756.P10009347154826609641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + Int.tmod (A143097 (n + 2)) (A143097 (n + 1))

end

end A264756.P10009347154826609641

namespace A264756

/-- `A079978(n)+A143097(n+2)%A143097(n+1)` -/
def P10009347154826609641.Spec : Prop :=
  ∀ n, P10009347154826609641.a n = A264756 (n + 1)

end A264756

/-! ## A264756.P13848561640732598597

`(A058281(n+2)*A186101(n+5))%A186101(n+2)`
-/

namespace A264756.P13848561640732598597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058281 (n + 2) * A186101 (n + 5)) (A186101 (n + 2))

end

end A264756.P13848561640732598597

namespace A264756

/-- `(A058281(n+2)*A186101(n+5))%A186101(n+2)` -/
def P13848561640732598597.Spec : Prop :=
  ∀ n, P13848561640732598597.a n = A264756 (n + 1)

end A264756

/-! ## A264756.P17034967782779930022

`A064429(A283878(n+1))+A010892(2*n+1)`
-/

namespace A264756.P17034967782779930022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A283878 (n + 1)).toNat + A010892 (2 * n + 1)

end

end A264756.P17034967782779930022

namespace A264756

/-- `A064429(A283878(n+1))+A010892(2*n+1)` -/
def P17034967782779930022.Spec : Prop :=
  ∀ n, P17034967782779930022.a n = A264756 (n + 1)

end A264756

/-! ## A264756.P12353278852267158252

`(A082799(n+1)%A017377(n))%A002203(n)`
-/

namespace A264756.P12353278852267158252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A082799 (n + 1)) (A017377 n)) (A002203 n)

end

end A264756.P12353278852267158252

namespace A264756

/-- `(A082799(n+1)%A017377(n))%A002203(n)` -/
def P12353278852267158252.Spec : Prop :=
  ∀ n, P12353278852267158252.a n = A264756 (n + 1)

end A264756

/-!
# A264759: Number of irreducible indecomposable spherical curves with n crossings (only ordinary double points), the circle is not oriented, the sphere is not oriented (UU case).

The programs for A264759, there is no canonical definition to state claims against.
-/

/-! ## A264759.P16591419681463011635

`ceil((1-A057574(n))²/24)`
-/

namespace A264759.P16591419681463011635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - A057574 n) ^ 2 : ℚ) / 24⌉

end

end A264759.P16591419681463011635

/-! ## A264759.P15478629689333348232

`A238005(or(4, A321723(n)))`
-/

namespace A264759.P15478629689333348232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (Int.lor 4 (A321723 n)).toNat

end

end A264759.P15478629689333348232

/-! ## A264759.P4032048710470320354

`A320312(A001256(n))+A274937(n)`
-/

namespace A264759.P4032048710470320354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (A001256 n).toNat + A274937 n

end

end A264759.P4032048710470320354

/-! ## A264759.P16773267955281313605

`A347609(A332743(n)+A000041(n))`
-/

namespace A264759.P16773267955281313605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (A332743 n + A000041 n).toNat

end

end A264759.P16773267955281313605

/-! ## A264759.P13950469400912872701

`A347609(A332746(n)+A332743(n))`
-/

namespace A264759.P13950469400912872701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (A332746 n + A332743 n).toNat

end

end A264759.P13950469400912872701

/-!
# A264760: Number of irreducible indecomposable spherical curves with n crossings (only ordinary double points), the circle is not oriented, the sphere is oriented (UO case).

The programs for A264760, there is no canonical definition to state claims against.
-/

/-! ## A264760.P14217632864426550723

`A185712(xor(A105700(n), A328431(n)))`
-/

namespace A264760.P14217632864426550723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (Int.xor (A105700 n) (A328431 n)).toNat

end

end A264760.P14217632864426550723

/-! ## A264760.P6120351003277697911

`A185712(xor(A036541(n+1), A328431(n)))`
-/

namespace A264760.P6120351003277697911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (Int.xor (A036541 (n + 1)) (A328431 n)).toNat

end

end A264760.P6120351003277697911

/-! ## A264760.P740969047218977980

`A185712(xor(A185712(n+1), A328431(n)))`
-/

namespace A264760.P740969047218977980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (Int.xor (A185712 (n + 1)) (A328431 n)).toNat

end

end A264760.P740969047218977980

/-! ## A264760.P2644913895706471211

`A108602(A181344(n+1)+A064989(n+1))`
-/

namespace A264760.P2644913895706471211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A181344 (n + 1) + A064989 (n + 1)).toNat

end

end A264760.P2644913895706471211

/-! ## A264760.P15642537273827749014

`A344420(A343162(n+1)+A004139(n+1))`
-/

namespace A264760.P15642537273827749014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A343162 (n + 1) + A004139 (n + 1)).toNat

end

end A264760.P15642537273827749014

/-!
# A264761: Number of irreducible indecomposable spherical curves with n crossings (only ordinary double points), the circle is oriented, the sphere is oriented (OO case).

The programs for A264761, there is no canonical definition to state claims against.
-/

/-! ## A264761.P4530718317392354661

`A325132(A008619(n)*A347443(n))`
-/

namespace A264761.P4530718317392354661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325132 (A008619 n * A347443 n).toNat

end

end A264761.P4530718317392354661

/-!
# A264762: a(n) is the index of A246946(n) in A024619, integers x that satisfy omega(x) >= 2.

The programs for A264762, there is no canonical definition to state claims against.
-/

/-! ## A264762.P14181162068838818294

`A085970(A246946(n+1))`
-/

namespace A264762.P14181162068838818294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A246946 (n + 1)).toNat

end

end A264762.P14181162068838818294

/-!
# A264763: a(0) = a(1) = 1; for n>1, a(n) = a(n-1) + (a(n-2) mod 5).

The programs for A264763, the canonical program `A264763.P15130705105986990983` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264763 has offset 0).

The definition of A264763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264763.P15130705105986990983

`a(n-1)+a(n-2)%5` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A264763

/-- `a(n-1)+a(n-2)%5` -/
def P15130705105986990983.Spec : Prop :=
  ∀ n, (P15130705105986990983.a n : ℤ) = A264763 n

theorem P15130705105986990983.correct : P15130705105986990983.Spec := by
  intro n
  simp only [A264763]

end A264763

/-! ## A264763.P15922495929446751844

`∑[(3*a(n-5))%5]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A264763.P15922495929446751844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 2, 3] fun n f1 =>
  3 * f1 (n - 5) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264763.P15922495929446751844

namespace A264763

/-- `∑[(3*a(n-5))%5]` -/
def P15922495929446751844.Spec : Prop :=
  ∀ n, (P15922495929446751844.a n : ℤ) = A264763 n

end A264763

/-! ## A264763.P15022387877598744532

`a(n-1)-(a(n-3)-a(n-1))%5` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A264763.P15022387877598744532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - Int.tmod (a (n - 3) - a (n - 1)) 5

end

end A264763.P15022387877598744532

namespace A264763

/-- `a(n-1)-(a(n-3)-a(n-1))%5` -/
def P15022387877598744532.Spec : Prop :=
  ∀ n, P15022387877598744532.a n = A264763 n

end A264763

/-! ## A264763.P9884857344824544816

`∑[A082116(abs(1-n))]`
-/

namespace A264763.P9884857344824544816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264763.P9884857344824544816

namespace A264763

/-- `∑[A082116(abs(1-n))]` -/
def P9884857344824544816.Spec : Prop :=
  ∀ n, P9884857344824544816.a n = A264763 n

end A264763

/-! ## A264763.P6698025055004246756

`a(n-1)+A000045(n-1)%5` with `a(0)=1`
-/

namespace A264763.P6698025055004246756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A000045 (n - 1)) 5

end

end A264763.P6698025055004246756

namespace A264763

/-- `a(n-1)+A000045(n-1)%5` -/
def P6698025055004246756.Spec : Prop :=
  ∀ n, P6698025055004246756.a n = A264763 n

end A264763

/-! ## A264763.P12093850811334584490

`∑[(A000032(n)-A000045(n))%10]/2`
-/

namespace A264763.P12093850811334584490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 n - A000045 n) 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A264763.P12093850811334584490

namespace A264763

/-- `∑[(A000032(n)-A000045(n))%10]/2` -/
def P12093850811334584490.Spec : Prop :=
  ∀ n, P12093850811334584490.a n = (A264763 n : ℚ)

end A264763

/-! ## A264763.P5085551448679075221

`∑[A022377(n)%10/2]`
-/

namespace A264763.P5085551448679075221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A022377 n) 10 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264763.P5085551448679075221

namespace A264763

/-- `∑[A022377(n)%10/2]` -/
def P5085551448679075221.Spec : Prop :=
  ∀ n, P5085551448679075221.a n = (A264763 n : ℚ)

end A264763

/-! ## A264763.P17282636503350681253

`∑[Δ[n*8^(n-1)]%5]`
-/

namespace A264763.P17282636503350681253
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264763.P17282636503350681253

namespace A264763

/-- `∑[Δ[n*8^(n-1)]%5]` -/
def P17282636503350681253.Spec : Prop :=
  ∀ n, P17282636503350681253.a n = A264763 n

end A264763

/-!
# A264765: Number of tilings of a 5 X n rectangle using n pentominoes of shapes Z, I, P.

The programs for A264765, there is no canonical definition to state claims against.
-/

/-! ## A264765.P17435692858863491207

`xor(A106228(n), A240216(A261982(n)))`
-/

namespace A264765.P17435692858863491207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106228 n) (A240216 (A261982 n).toNat)

end

end A264765.P17435692858863491207

/-! ## A264765.P116287501202132447

`A353706(n+1)+A261104(A203765(n+1))`
-/

namespace A264765.P116287501202132447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353706 (n + 1) + A261104 (A203765 (n + 1)).toNat

end

end A264765.P116287501202132447

/-!
# A264767: a(1)=1; for n>1, a(n) = a(n-1) + n if x=0, otherwise a(n) = a(n-1) / 2^x, where x is the exponent of highest power of 2 dividing gcd(a(n-1),n).

The programs for A264767, there is no canonical definition to state claims against.
-/

/-! ## A264767.P9134097098139052437

`A358787(A077168(n))`
-/

namespace A264767.P9134097098139052437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358787 (A077168 n).toNat

end

end A264767.P9134097098139052437

/-! ## A264767.P15266778295885453756

`A358787(A043319(n+1))`
-/

namespace A264767.P15266778295885453756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358787 (A043319 (n + 1)).toNat

end

end A264767.P15266778295885453756

/-! ## A264767.P17224975988268382356

`A358787(A044916(n+1))`
-/

namespace A264767.P17224975988268382356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358787 (A044916 (n + 1)).toNat

end

end A264767.P17224975988268382356

/-! ## A264767.P12419849630545901665

`A358787(A055646(n+1))`
-/

namespace A264767.P12419849630545901665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358787 (A055646 (n + 1)).toNat

end

end A264767.P12419849630545901665

/-! ## A264767.P2977174872252471072

`A358787(A055647(n)+1)`
-/

namespace A264767.P2977174872252471072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358787 (A055647 n + 1).toNat

end

end A264767.P2977174872252471072

/-!
# A264768: Number of "SURROUNDED" cells after n stages of the "Ulam-Warburton" two-dimensional cellular automaton.

The programs for A264768, there is no canonical definition to state claims against.
-/

/-! ## A264768.P11218826081619297136

`∑[A264769(n)]`
-/

namespace A264768.P11218826081619297136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264768.P11218826081619297136

/-!
# A264769: Number of cells that are "SURROUNDED" at the n-th stage of the "Ulam-Warburton" two-dimensional cellular automaton.

The programs for A264769, there is no canonical definition to state claims against.
-/

/-! ## A264769.P5823016012132817858

`Δ[A264768(abs(1-n))]`
-/

namespace A264769.P5823016012132817858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264768 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264769.P5823016012132817858

/-! ## A264769.P16572989052708471994

`A264768(n)-A264768(A004273(n)-n)`
-/

namespace A264769.P16572989052708471994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264768 n - A264768 (A004273 n - (n : ℤ)).toNat

end

end A264769.P16572989052708471994

/-!
# A264771: Primes of the form n^2 + phi(n).

The programs for A264771, there is no canonical definition to state claims against.
-/

/-! ## A264771.P18159165714026527978

`p?[A264724(n+1)]`
-/

namespace A264771.P18159165714026527978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264771.P18159165714026527978

/-! ## A264771.P9891761765291457816

`p?[(n+1)²+A000010(n+1)]`
-/

namespace A264771.P9891761765291457816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264771.P9891761765291457816

/-! ## A264771.P18068210238163902146

`p?[A000010(or(1, n))+(n+1)^2]`
-/

namespace A264771.P18068210238163902146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 1 n) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264771.P18068210238163902146

/-! ## A264771.P15494725539107657304

`A264724(A275059(n+1))`
-/

namespace A264771.P15494725539107657304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (A275059 (n + 1)).toNat

end

end A264771.P15494725539107657304

/-! ## A264771.P10421491739914722854

`filter[A264724(n+1), A010051(#)]`
-/

namespace A264771.P10421491739914722854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A264771.P10421491739914722854

/-!
# A264772: Triangle T(n,k) = binomial(3*n - 2*k, 2*n - k), 0 <= k <= n.

The programs for A264772, the canonical program `A264772.P6309471126076613792` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264772 has offset 0).

The definition of A264772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264772.P6309471126076613792

`C(A294317(n)+A025581(n), A025581(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A264772

/-- `C(A294317(n)+A025581(n), A025581(n))` -/
def P6309471126076613792.Spec : Prop :=
  ∀ n, (P6309471126076613792.a n : ℤ) = A264772 n

theorem P6309471126076613792.correct : P6309471126076613792.Spec := by
  intro n
  simp only [A264772]

end A264772

/-! ## A264772.P13625470234778644393

`A318107(n)/A104684(n)`
-/

namespace A264772.P13625470234778644393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318107 n : ℚ) / (A104684 n : ℚ)

end

end A264772.P13625470234778644393

namespace A264772

/-- `A318107(n)/A104684(n)` -/
def P13625470234778644393.Spec : Prop :=
  ∀ n, P13625470234778644393.a n = (A264772 n : ℚ)

end A264772

/-! ## A264772.P8954576277331289421

`A318107(n)/A063007(A061579(n))`
-/

namespace A264772.P8954576277331289421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318107 n : ℚ) / (A063007 (A061579 n).toNat : ℚ)

end

end A264772.P8954576277331289421

namespace A264772

/-- `A318107(n)/A063007(A061579(n))` -/
def P8954576277331289421.Spec : Prop :=
  ∀ n, P8954576277331289421.a n = (A264772 n : ℚ)

end A264772

/-! ## A264772.P16306836666589415340

`A062344(n)/A069466(n)*A318107(n)`
-/

namespace A264772.P16306836666589415340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062344 n : ℚ) / (A069466 n : ℚ) * (A318107 n : ℚ)

end

end A264772.P16306836666589415340

namespace A264772

/-- `A062344(n)/A069466(n)*A318107(n)` -/
def P16306836666589415340.Spec : Prop :=
  ∀ n, P16306836666589415340.a n = (A264772 n : ℚ)

end A264772

/-! ## A264772.P1411386690685207129

`A318107(n)/(A033184(n+1)*A135278(n))`
-/

namespace A264772.P1411386690685207129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318107 n : ℚ) / (A033184 (n + 1) * A135278 n : ℚ)

end

end A264772.P1411386690685207129

namespace A264772

/-- `A318107(n)/(A033184(n+1)*A135278(n))` -/
def P1411386690685207129.Spec : Prop :=
  ∀ n, P1411386690685207129.a n = (A264772 n : ℚ)

end A264772

/-! ## A264772.P18421467166548960717

`A318107(n)/(A156763(n)-A063007(n))`
-/

namespace A264772.P18421467166548960717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318107 n : ℚ) / (A156763 n - A063007 n : ℚ)

end

end A264772.P18421467166548960717

namespace A264772

/-- `A318107(n)/(A156763(n)-A063007(n))` -/
def P18421467166548960717.Spec : Prop :=
  ∀ n, P18421467166548960717.a n = (A264772 n : ℚ)

end A264772

/-! ## A264772.P7974553730471412495

`A318105(n)/(A104684(n)*A264773(n))`
-/

namespace A264772.P7974553730471412495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318105 n : ℚ) / (A104684 n * A264773 n : ℚ)

end

end A264772.P7974553730471412495

namespace A264772

/-- `A318105(n)/(A104684(n)*A264773(n))` -/
def P7974553730471412495.Spec : Prop :=
  ∀ n, P7974553730471412495.a n = (A264772 n : ℚ)

end A264772

/-!
# A264773: Triangle T(n,k) = binomial(4*n - 3*k, 3*n - 2*k), 0 <= k <= n.

The programs for A264773, there is no canonical definition to state claims against.
-/

/-! ## A264773.P10426655018238189616

`A318105(n)/A318107(n)`
-/

namespace A264773.P10426655018238189616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318105 n : ℚ) / (A318107 n : ℚ)

end

end A264773.P10426655018238189616

/-! ## A264773.P14538501365328585175

`A318105(n)/(A104684(n)*A264772(n))`
-/

namespace A264773.P14538501365328585175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318105 n : ℚ) / (A104684 n * A264772 n : ℚ)

end

end A264773.P14538501365328585175

/-! ## A264773.P16467931580720895472

`A318105(n)/(A063007(A061579(n))*A264772(n))`
-/

namespace A264773.P16467931580720895472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318105 n : ℚ) / (A063007 (A061579 n).toNat * A264772 n : ℚ)

end

end A264773.P16467931580720895472

/-! ## A264773.P553889374417955530

`A318105(n)/((A156763(n)-A063007(n))*A264772(n))`
-/

namespace A264773.P553889374417955530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318105 n : ℚ) / ((A156763 n - A063007 n) * A264772 n : ℚ)

end

end A264773.P553889374417955530

/-! ## A264773.P3756146781182014199

`A318105(n)/(A007318(n)*A092392(n)*A264772(n))`
-/

namespace A264773.P3756146781182014199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318105 n : ℚ) / (A007318 n * A092392 n * A264772 n : ℚ)

end

end A264773.P3756146781182014199

/-! ## A264773.P9433635441423411290

`A318105(n)/(A033184(n+1)*A135278(n)*A264772(n))`
-/

namespace A264773.P9433635441423411290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318105 n : ℚ) / (A033184 (n + 1) * A135278 n * A264772 n : ℚ)

end

end A264773.P9433635441423411290

/-!
# A264774: Triangle T(n,k) = binomial(5*n - 4*k, 4*n - 3*k), 0 <= k <= n.

The programs for A264774, there is no canonical definition to state claims against.
-/

/-! ## A264774.P11643689989715123379

`C(A238288(A238315(n+1)), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A264774.P11643689989715123379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A238288 (A238315 (n + 1)).toNat).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A264774.P11643689989715123379

/-! ## A264774.P10601251612118320249

`A129652(lt[A141214(n+2), A176120(n)])`
-/

namespace A264774.P10601251612118320249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264774.P10601251612118320249

/-!
# A264782: a(n) = Sum_{d|n} möbius(d)^(n/d).

The programs for A264782, the canonical program `A264782.P8979479003686723226` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264782 has offset 1).

The definition of A264782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264782.P8979479003686723226

`∑{d}[n+1, A008683((n+1)/#)^#]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A264782

/-- `∑{d}[n+1, A008683((n+1)/#)^#]` -/
def P8979479003686723226.Spec : Prop :=
  ∀ n, P8979479003686723226.a n = A264782 (n + 1)

theorem P8979479003686723226.correct : P8979479003686723226.Spec := by
  intro n
  simp only [A264782, Nat.add_sub_cancel]

end A264782

/-! ## A264782.P7423070116491518220

`A060594(A007948(n+1))*A266070(n)`
-/

namespace A264782.P7423070116491518220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A007948 (n + 1)).toNat * A266070 n

end

end A264782.P7423070116491518220

namespace A264782

/-- `A060594(A007948(n+1))*A266070(n)` -/
def P7423070116491518220.Spec : Prop :=
  ∀ n, P7423070116491518220.a n = A264782 (n + 1)

end A264782

/-! ## A264782.P2812973883269072084

`A034444(A302032(n+1))*A266070(n)`
-/

namespace A264782.P2812973883269072084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A302032 (n + 1)).toNat * A266070 n

end

end A264782.P2812973883269072084

namespace A264782

/-- `A034444(A302032(n+1))*A266070(n)` -/
def P2812973883269072084.Spec : Prop :=
  ∀ n, P2812973883269072084.a n = A264782 (n + 1)

end A264782

/-! ## A264782.P698855925982923563

`A000035(A056897(n))*A034444(A008619(n))`
-/

namespace A264782.P698855925982923563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A056897 n).toNat * A034444 (A008619 n).toNat

end

end A264782.P698855925982923563

namespace A264782

/-- `A000035(A056897(n))*A034444(A008619(n))` -/
def P698855925982923563.Spec : Prop :=
  ∀ n, P698855925982923563.a n = A264782 (n + 1)

end A264782

/-! ## A264782.P12316445981646610472

`A034444(A008619(n))*A059841(A019425(n))`
-/

namespace A264782.P12316445981646610472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A008619 n).toNat * A059841 (A019425 n).toNat

end

end A264782.P12316445981646610472

namespace A264782

/-- `A034444(A008619(n))*A059841(A019425(n))` -/
def P12316445981646610472.Spec : Prop :=
  ∀ n, P12316445981646610472.a n = A264782 (n + 1)

end A264782

/-! ## A264782.P3166357131640691489

`xor(A034444(n+1)-A157226(n+1), A157226(n+1))`
-/

namespace A264782.P3166357131640691489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034444 (n + 1) - A157226 (n + 1)) (A157226 (n + 1))

end

end A264782.P3166357131640691489

namespace A264782

/-- `xor(A034444(n+1)-A157226(n+1), A157226(n+1))` -/
def P3166357131640691489.Spec : Prop :=
  ∀ n, P3166357131640691489.a n = A264782 (n + 1)

end A264782

/-! ## A264782.P14936284381919873719

`C(A000010(A060594(2*(n+1))), A224783(n))`
-/

namespace A264782.P14936284381919873719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (A060594 (2 * (n + 1))).toNat).toNat (A224783 n).toNat

end

end A264782.P14936284381919873719

namespace A264782

/-- `C(A000010(A060594(2*(n+1))), A224783(n))` -/
def P14936284381919873719.Spec : Prop :=
  ∀ n, (P14936284381919873719.a n : ℤ) = A264782 (n + 1)

end A264782

/-! ## A264782.P2189333688956814287

`and(A034444(A008619(n)), A280412(n))`
-/

namespace A264782.P2189333688956814287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034444 (A008619 n).toNat) (A280412 n)

end

end A264782.P2189333688956814287

namespace A264782

/-- `and(A034444(A008619(n)), A280412(n))` -/
def P2189333688956814287.Spec : Prop :=
  ∀ n, P2189333688956814287.a n = A264782 (n + 1)

end A264782

/-! ## A264782.P12718311895909006246

`and(A034444(A000463(n+1)), A278346(n))`
-/

namespace A264782.P12718311895909006246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034444 (A000463 (n + 1)).toNat) (A278346 n)

end

end A264782.P12718311895909006246

namespace A264782

/-- `and(A034444(A000463(n+1)), A278346(n))` -/
def P12718311895909006246.Spec : Prop :=
  ∀ n, P12718311895909006246.a n = A264782 (n + 1)

end A264782

/-! ## A264782.P10563245838403658693

`and(A270009(n²), A348001(n+1))`
-/

namespace A264782.P10563245838403658693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270009 (n ^ 2)) (A348001 (n + 1))

end

end A264782.P10563245838403658693

namespace A264782

/-- `and(A270009(n²), A348001(n+1))` -/
def P10563245838403658693.Spec : Prop :=
  ∀ n, P10563245838403658693.a n = A264782 (n + 1)

end A264782

/-!
# A264788: a(n) is the number of circles added at n-th iteration of the pattern starting with 2 circles. (See comment.)

The programs for A264788, the canonical program `A264788.P5507979135457340147` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264788 has offset 0).

The definition of A264788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264788.P5507979135457340147

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=2, a(2)=4, a(3)=4, a(4)=6, a(5)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A264788

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5507979135457340147.Spec : Prop :=
  ∀ n, P5507979135457340147.a n = A264788 n

theorem P5507979135457340147.correct : P5507979135457340147.Spec := by
  intro n
  simp only [A264788]

end A264788

/-! ## A264788.P5032227501670971328

`a(n-3)+6` with `a(0)=2, a(1)=2, a(2)=4, a(3)=4, a(4)=6`
-/

namespace A264788.P5032227501670971328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4, 4, 6] fun n a =>
  a (n - 3) + 6

end

end A264788.P5032227501670971328

namespace A264788

/-- `a(n-3)+6` -/
def P5032227501670971328.Spec : Prop :=
  ∀ n, (P5032227501670971328.a n : ℤ) = A264788 n

end A264788

/-! ## A264788.P14009458816873397162

`abs(∑[n+2]%3-n)+n`
-/

namespace A264788.P14009458816873397162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A264788.P14009458816873397162

namespace A264788

/-- `abs(∑[n+2]%3-n)+n` -/
def P14009458816873397162.Spec : Prop :=
  ∀ n, P14009458816873397162.a n = A264788 n

end A264788

/-! ## A264788.P7008924968170619123

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=0, a(2)=2, a(3)=0, a(4)=2, a(5)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A264788.P7008924968170619123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2, 0, 2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264788.P7008924968170619123

namespace A264788

/-- `∑[floor(a(n-3))]` -/
def P7008924968170619123.Spec : Prop :=
  ∀ n, (P7008924968170619123.a n : ℤ) = A264788 n

end A264788

/-! ## A264788.P13635062544611975090

`abs(gcd(3, n+1)+n-3)+n`
-/

namespace A264788.P13635062544611975090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.gcd 3 (n + 1) : ℤ) + ((n : ℤ) - 3)| + (n : ℤ)

end

end A264788.P13635062544611975090

namespace A264788

/-- `abs(gcd(3, n+1)+n-3)+n` -/
def P13635062544611975090.Spec : Prop :=
  ∀ n, P13635062544611975090.a n = A264788 n

end A264788

/-! ## A264788.P3838121133622376036

`∑[a(n-3)%5]` with `a(0)=2, a(1)=0, a(2)=2, a(3)=0, a(4)=2, a(5)=4`
-/

namespace A264788.P3838121133622376036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2, 0, 2, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264788.P3838121133622376036

namespace A264788

/-- `∑[a(n-3)%5]` -/
def P3838121133622376036.Spec : Prop :=
  ∀ n, (P3838121133622376036.a n : ℤ) = A264788 n

end A264788

/-! ## A264788.P4724964272635121834

`2*(n-a(n-1)%3)` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A264788.P4724964272635121834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  2 * ((n : ℤ) - Int.tmod (a (n - 1)) 3)

end

end A264788.P4724964272635121834

namespace A264788

/-- `2*(n-a(n-1)%3)` -/
def P4724964272635121834.Spec : Prop :=
  ∀ n, P4724964272635121834.a n = A264788 n

end A264788

/-! ## A264788.P9444914365871108282

`or(1, A144430(n+1))-1`
-/

namespace A264788.P9444914365871108282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A144430 (n + 1)) - 1

end

end A264788.P9444914365871108282

namespace A264788

/-- `or(1, A144430(n+1))-1` -/
def P9444914365871108282.Spec : Prop :=
  ∀ n, P9444914365871108282.a n = A264788 n

end A264788

/-! ## A264788.P12608031523106498060

`abs(∑[or(1, A069705(n)-2)]-1)+n`
-/

namespace A264788.P12608031523106498060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069705 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| + (n : ℤ)

end

end A264788.P12608031523106498060

namespace A264788

/-- `abs(∑[or(1, A069705(n)-2)]-1)+n` -/
def P12608031523106498060.Spec : Prop :=
  ∀ n, P12608031523106498060.a n = A264788 n

end A264788

/-! ## A264788.P2682234543898486803

`2*A267528(n-A002264(n))`
-/

namespace A264788.P2682234543898486803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267528 ((n : ℤ) - A002264 n).toNat

end

end A264788.P2682234543898486803

namespace A264788

/-- `2*A267528(n-A002264(n))` -/
def P2682234543898486803.Spec : Prop :=
  ∀ n, P2682234543898486803.a n = A264788 n

end A264788

/-! ## A264788.P17329878787851176396

`A144429(A173857(n+1)+1+n)`
-/

namespace A264788.P17329878787851176396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144429 (A173857 (n + 1) + 1 + (n : ℤ)).toNat

end

end A264788.P17329878787851176396

namespace A264788

/-- `A144429(A173857(n+1)+1+n)` -/
def P17329878787851176396.Spec : Prop :=
  ∀ n, P17329878787851176396.a n = A264788 n

end A264788

/-! ## A264788.P6130107340604565285

`abs((n+1)²-A163979(n+1))+n`
-/

namespace A264788.P6130107340604565285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) - A163979 (n + 1)| + (n : ℤ)

end

end A264788.P6130107340604565285

namespace A264788

/-- `abs((n+1)²-A163979(n+1))+n` -/
def P6130107340604565285.Spec : Prop :=
  ∀ n, P6130107340604565285.a n = A264788 n

end A264788

/-! ## A264788.P6884911738031226752

`A004278(A329680(n+1)+n+1)`
-/

namespace A264788.P6884911738031226752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A329680 (n + 1) + (n + 1 : ℤ)).toNat

end

end A264788.P6884911738031226752

namespace A264788

/-- `A004278(A329680(n+1)+n+1)` -/
def P6884911738031226752.Spec : Prop :=
  ∀ n, P6884911738031226752.a n = A264788 n

end A264788

/-! ## A264788.P15072444502466323260

`A065166(a(n-3))` with `a(0)=2, a(1)=2, a(2)=4, a(3)=4, a(4)=6`
-/

namespace A264788.P15072444502466323260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4, 4, 6] fun n a =>
  A065166 (a (n - 3)).toNat

end

end A264788.P15072444502466323260

namespace A264788

/-- `A065166(a(n-3))` -/
def P15072444502466323260.Spec : Prop :=
  ∀ n, P15072444502466323260.a n = A264788 n

end A264788

/-! ## A264788.P15617878006276909224

`2*n-A300067(a(n-1))` with `a(0)=2`
-/

namespace A264788.P15617878006276909224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 * n : ℤ) - A300067 (a (n - 1)).toNat

end

end A264788.P15617878006276909224

namespace A264788

/-- `2*n-A300067(a(n-1))` -/
def P15617878006276909224.Spec : Prop :=
  ∀ n, P15617878006276909224.a n = A264788 n

end A264788

/-! ## A264788.P17133252440594965815

`2*n-A300069(a(n-1))` with `a(0)=2`
-/

namespace A264788.P17133252440594965815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 * n : ℤ) - A300069 (a (n - 1)).toNat

end

end A264788.P17133252440594965815

namespace A264788

/-- `2*n-A300069(a(n-1))` -/
def P17133252440594965815.Spec : Prop :=
  ∀ n, P17133252440594965815.a n = A264788 n

end A264788

/-! ## A264788.P6634219521130494051

`A052928(A144430(n+1))`
-/

namespace A264788.P6634219521130494051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A144430 (n + 1)).toNat

end

end A264788.P6634219521130494051

namespace A264788

/-- `A052928(A144430(n+1))` -/
def P6634219521130494051.Spec : Prop :=
  ∀ n, P6634219521130494051.a n = A264788 n

end A264788

/-! ## A264788.P8195032254250772446

`2*A002265(2*A144430(n+1))`
-/

namespace A264788.P8195032254250772446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002265 (2 * A144430 (n + 1)).toNat

end

end A264788.P8195032254250772446

namespace A264788

/-- `2*A002265(2*A144430(n+1))` -/
def P8195032254250772446.Spec : Prop :=
  ∀ n, P8195032254250772446.a n = A264788 n

end A264788

/-! ## A264788.P14504648920104188875

`∑[2*∑[A187142(n+1)]%3]`
-/

namespace A264788.P14504648920104188875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187142 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264788.P14504648920104188875

namespace A264788

/-- `∑[2*∑[A187142(n+1)]%3]` -/
def P14504648920104188875.Spec : Prop :=
  ∀ n, P14504648920104188875.a n = A264788 n

end A264788

/-! ## A264788.P7497909913036610449

`and(A144430(n+1), A307457(n+1))`
-/

namespace A264788.P7497909913036610449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144430 (n + 1)) (A307457 (n + 1))

end

end A264788.P7497909913036610449

namespace A264788

/-- `and(A144430(n+1), A307457(n+1))` -/
def P7497909913036610449.Spec : Prop :=
  ∀ n, P7497909913036610449.a n = A264788 n

end A264788

/-!
# A264790: Numbers k such that k^2 + 17 is prime.

The programs for A264790, there is no canonical definition to state claims against.
-/

/-! ## A264790.P2708962444171788541

`sqrt(A228244(n+1)-17)`
-/

namespace A264790.P2708962444171788541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A228244 (n + 1) - 17 : ℝ)

end

end A264790.P2708962444171788541

/-! ## A264790.P7758111646487433815

`floor((A228244(n+1)-(17-A305212(n+1)))^(1/2))`
-/

namespace A264790.P7758111646487433815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228244 (n + 1) - (17 - A305212 (n + 1)) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A264790.P7758111646487433815

/-! ## A264790.P3421568119937365096

`sqrt(p?[n²+17]-17)`
-/

namespace A264790.P3421568119937365096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 17

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 17 : ℝ)

end

end A264790.P3421568119937365096

/-! ## A264790.P11854526578820579475

`sqrt(∏{d}[p?[A241847(n)], #]-17)`
-/

namespace A264790.P11854526578820579475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 17 : ℝ)

end

end A264790.P11854526578820579475

/-! ## A264790.P1458057213118332808

`sqrt(∑{p}[p?[A241847(2*n)], #]-17)`
-/

namespace A264790.P1458057213118332808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241847 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 17 : ℝ)

end

end A264790.P1458057213118332808

/-!
# A264791: Number of n X 1 arrays of permutations of 0..n*1-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 7.

The programs for A264791, the canonical program `A264791.P12766479597737364123` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264791 has offset 1).

The definition of A264791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264791.P7600128616983856644

`∏[∑[char[7*n]]]`
-/

namespace A264791.P7600128616983856644
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A264791.P7600128616983856644

namespace A264791

/-- `∏[∑[char[7*n]]]` -/
def P7600128616983856644.Spec : Prop :=
  ∀ n, (P7600128616983856644.a n : ℤ) = A264791 (n + 1)

end A264791

/-! ## A264791.P18175609698055631322

`a(n-1)*∑[char[7*n]]` with `a(0)=1`
-/

namespace A264791.P18175609698055631322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264791.P18175609698055631322

namespace A264791

/-- `a(n-1)*∑[char[7*n]]` -/
def P18175609698055631322.Spec : Prop :=
  ∀ n, (P18175609698055631322.a n : ℤ) = A264791 (n + 1)

end A264791

/-! ## A264791.P12766479597737364123

`(floor(n/7)+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A264791

/-- `(floor(n/7)+1)*a(n-1)` -/
def P12766479597737364123.Spec : Prop :=
  ∀ n, P12766479597737364123.a n = A264791 (n + 1)

theorem P12766479597737364123.correct : P12766479597737364123.Spec := by
  intro n
  simp only [A264791, Nat.add_sub_cancel]

end A264791

/-! ## A264791.P15442015451448917062

`ceil((comp[A038279(n)]-n)*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A264791.P15442015451448917062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * a (n - 1)

end

end A264791.P15442015451448917062

namespace A264791

/-- `ceil((comp[A038279(n)]-n)*a(n-1))` -/
def P15442015451448917062.Spec : Prop :=
  ∀ n, P15442015451448917062.a n = A264791 (n + 1)

end A264791

/-! ## A264791.P9543703801221548552

`∏[A008617(2*n)]*A060576(3*n)`
-/

namespace A264791.P9543703801221548552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A060576 (3 * n)

end

end A264791.P9543703801221548552

namespace A264791

/-- `∏[A008617(2*n)]*A060576(3*n)` -/
def P9543703801221548552.Spec : Prop :=
  ∀ n, P9543703801221548552.a n = A264791 (n + 1)

end A264791

/-! ## A264791.P14228634053857190397

`sqrt(∏[A008617(2*n)²])`
-/

namespace A264791.P14228634053857190397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A264791.P14228634053857190397

namespace A264791

/-- `sqrt(∏[A008617(2*n)²])` -/
def P14228634053857190397.Spec : Prop :=
  ∀ n, P14228634053857190397.a n = (A264791 (n + 1) : ℝ)

end A264791

/-!
# A264792: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 7.

The programs for A264792, there is no canonical definition to state claims against.
-/

/-! ## A264792.P4481595485138232902

`A264794(∑[n+2])`
-/

namespace A264792.P4481595485138232902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264792.P4481595485138232902

/-! ## A264792.P11042319446974344822

`record[A264794(∑[A152271(n)])]`
-/

namespace A264792.P11042319446974344822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264794 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264792.P11042319446974344822

/-! ## A264792.P1667756766318883542

`record[A264794(A072735(n+1))]`
-/

namespace A264792.P1667756766318883542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264794 (A072735 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264792.P1667756766318883542

/-!
# A264793: Number of nX3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 7.

The programs for A264793, there is no canonical definition to state claims against.
-/

/-! ## A264793.P4838451336346217610

`A264794(∑[n+3]+1)`
-/

namespace A264793.P4838451336346217610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264794 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264793.P4838451336346217610

/-! ## A264793.P832888146110008205

`A097992(n)*A264794(A034856(n+2))`
-/

namespace A264793.P832888146110008205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 n * A264794 (A034856 (n + 2)).toNat

end

end A264793.P832888146110008205

/-!
# A264795: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 7.

The programs for A264795, there is no canonical definition to state claims against.
-/

/-! ## A264795.P18061105759055927993

`A264794(∑[n+1]+2)`
-/

namespace A264795.P18061105759055927993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264794 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264795.P18061105759055927993

/-! ## A264795.P3504120721964498807

`record[A264794(n+3)/A107102(n)]`
-/

namespace A264795.P3504120721964498807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264794 (n + 3) : ℚ) / (A107102 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264795.P3504120721964498807

/-! ## A264795.P13232301132086029281

`record[gcd(A259776(n), A264794(n+1))]`
-/

namespace A264795.P13232301132086029281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259776 n) (A264794 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264795.P13232301132086029281

/-! ## A264795.P2123332499793665087

`record[gcd(A002262(n), A264794(n+2))]`
-/

namespace A264795.P2123332499793665087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A264794 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264795.P2123332499793665087

/-!
# A264796: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 7.

The programs for A264796, there is no canonical definition to state claims against.
-/

/-! ## A264796.P3634341903786310111

`A264794(∑[n+2]+4)`
-/

namespace A264796.P3634341903786310111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264794 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264796.P3634341903786310111

/-! ## A264796.P15201707312403255957

`lcm((-1)^n, A264794(A167614(n+1)))`
-/

namespace A264796.P15201707312403255957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A264794 (A167614 (n + 1)).toNat)

end

end A264796.P15201707312403255957

/-! ## A264796.P10272004238562053554

`record[gcd(A002262(n+2), A264794(n+5))]`
-/

namespace A264796.P10272004238562053554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 2)) (A264794 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264796.P10272004238562053554

/-!
# A264797: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A264797, the canonical program `A264797.P7593111534283570213` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264797 has offset 0).

The definition of A264797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3813 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264797.P7593111534283570213

`2*a(n-2)-2*a(n-6)+a(n-8)` with `a(0)=1, a(1)=5, a(2)=8, a(3)=24, a(4)=17, a(5)=53, a(6)=32, a(7)=96`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A264797

/-- `2*a(n-2)-2*a(n-6)+a(n-8)` -/
def P7593111534283570213.Spec : Prop :=
  ∀ n, P7593111534283570213.a n = A264797 n

theorem P7593111534283570213.correct : P7593111534283570213.Spec := by
  intro n
  simp only [A264797]

end A264797

/-! ## A264797.P7275071339616632547

`A004526(n)+or(1, A110344(n+1))`
-/

namespace A264797.P7275071339616632547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + Int.lor 1 (A110344 (n + 1))

end

end A264797.P7275071339616632547

namespace A264797

/-- `A004526(n)+or(1, A110344(n+1))` -/
def P7275071339616632547.Spec : Prop :=
  ∀ n, P7275071339616632547.a n = A264797 n

end A264797

/-! ## A264797.P18111981567768684081

`(n+1)²+Δ[A077221(A142150(n))]`
-/

namespace A264797.P18111981567768684081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (f1 (n + 1) - f1 n)

end

end A264797.P18111981567768684081

namespace A264797

/-- `(n+1)²+Δ[A077221(A142150(n))]` -/
def P18111981567768684081.Spec : Prop :=
  ∀ n, P18111981567768684081.a n = A264797 n

end A264797

/-! ## A264797.P15271514232312646080

`Δ[A077221(A142150(n))+A000330(n)]`
-/

namespace A264797.P15271514232312646080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (A142150 n).toNat + A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264797.P15271514232312646080

namespace A264797

/-- `Δ[A077221(A142150(n))+A000330(n)]` -/
def P15271514232312646080.Spec : Prop :=
  ∀ n, P15271514232312646080.a n = A264797 n

end A264797

/-! ## A264797.P1563274608239923158

`Δ[A153058(n)+A077221(A142150(n))]`
-/

namespace A264797.P1563274608239923158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 n + A077221 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264797.P1563274608239923158

namespace A264797

/-- `Δ[A153058(n)+A077221(A142150(n))]` -/
def P1563274608239923158.Spec : Prop :=
  ∀ n, P1563274608239923158.a n = A264797 n

end A264797

/-! ## A264797.P10060825535304588145

`A110344(n+1)+A052928(A008619(n))`
-/

namespace A264797.P10060825535304588145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + A052928 (A008619 n).toNat

end

end A264797.P10060825535304588145

namespace A264797

/-- `A110344(n+1)+A052928(A008619(n))` -/
def P10060825535304588145.Spec : Prop :=
  ∀ n, P10060825535304588145.a n = A264797 n

end A264797

/-! ## A264797.P15514304467617879796

`A110344(n+1)+A004524(A083220(n))`
-/

namespace A264797.P15514304467617879796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + A004524 (A083220 n).toNat

end

end A264797.P15514304467617879796

namespace A264797

/-- `A110344(n+1)+A004524(A083220(n))` -/
def P15514304467617879796.Spec : Prop :=
  ∀ n, P15514304467617879796.a n = A264797 n

end A264797

/-! ## A264797.P11579491556707007035

`A110344(n+1)+A106249(A109613(n))`
-/

namespace A264797.P11579491556707007035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + A106249 (A109613 n).toNat

end

end A264797.P11579491556707007035

namespace A264797

/-- `A110344(n+1)+A106249(A109613(n))` -/
def P11579491556707007035.Spec : Prop :=
  ∀ n, P11579491556707007035.a n = A264797 n

end A264797

/-! ## A264797.P10448154998100222080

`A110344(n+1)+∑[A010673(A142150(n))]`
-/

namespace A264797.P10448154998100222080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264797.P10448154998100222080

namespace A264797

/-- `A110344(n+1)+∑[A010673(A142150(n))]` -/
def P10448154998100222080.Spec : Prop :=
  ∀ n, P10448154998100222080.a n = A264797 n

end A264797

/-! ## A264797.P5822140639184216293

`A110344(n+1)+A106249(A106249(2*n))`
-/

namespace A264797.P5822140639184216293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + A106249 (A106249 (2 * n)).toNat

end

end A264797.P5822140639184216293

namespace A264797

/-- `A110344(n+1)+A106249(A106249(2*n))` -/
def P5822140639184216293.Spec : Prop :=
  ∀ n, P5822140639184216293.a n = A264797 n

end A264797

/-! ## A264797.P7690049384445830597

`A106249(n+1)+A106249(2*n)*A123684(n+2)`
-/

namespace A264797.P7690049384445830597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (n + 1) + A106249 (2 * n) * A123684 (n + 2)

end

end A264797.P7690049384445830597

namespace A264797

/-- `A106249(n+1)+A106249(2*n)*A123684(n+2)` -/
def P7690049384445830597.Spec : Prop :=
  ∀ n, P7690049384445830597.a n = A264797 n

end A264797

/-! ## A264797.P16642008673108286780

`A269512(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A264797.P16642008673108286780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269512 (n - 1) + a (n - 1)

end

end A264797.P16642008673108286780

namespace A264797

/-- `A269512(n-1)+a(n-1)` -/
def P16642008673108286780.Spec : Prop :=
  ∀ n, P16642008673108286780.a n = A264797 n

end A264797

/-! ## A264797.P11456936683584304437

`∑[A269512(n)]+1-A269512(n)`
-/

namespace A264797.P11456936683584304437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A269512 n)

end

end A264797.P11456936683584304437

namespace A264797

/-- `∑[A269512(n)]+1-A269512(n)` -/
def P11456936683584304437.Spec : Prop :=
  ∀ n, P11456936683584304437.a n = A264797 n

end A264797

/-! ## A264797.P1528456881799831247

`A269511(n+1)-(A269512(n)+A269511(n))`
-/

namespace A264797.P1528456881799831247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269511 (n + 1) - (A269512 n + A269511 n)

end

end A264797.P1528456881799831247

namespace A264797

/-- `A269511(n+1)-(A269512(n)+A269511(n))` -/
def P1528456881799831247.Spec : Prop :=
  ∀ n, P1528456881799831247.a n = A264797 n

end A264797

/-! ## A264797.P12125910440735226841

`A004273(n+2)²-A273144(n+1)`
-/

namespace A264797.P12125910440735226841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 2) ^ 2 - A273144 (n + 1)

end

end A264797.P12125910440735226841

namespace A264797

/-- `A004273(n+2)²-A273144(n+1)` -/
def P12125910440735226841.Spec : Prop :=
  ∀ n, P12125910440735226841.a n = A264797 n

end A264797

/-! ## A264797.P1117410757372765101

`∑[8*(n+1)-A273147(n)]`
-/

namespace A264797.P1117410757372765101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - A273147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264797.P1117410757372765101

namespace A264797

/-- `∑[8*(n+1)-A273147(n)]` -/
def P1117410757372765101.Spec : Prop :=
  ∀ n, P1117410757372765101.a n = A264797 n

end A264797

/-! ## A264797.P5569977062795368681

`A110344(n+1)+Δ[A109613(A004652(n))]`
-/

namespace A264797.P5569977062795368681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A004652 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110344 (n + 1) + (f1 (n + 1) - f1 n)

end

end A264797.P5569977062795368681

namespace A264797

/-- `A110344(n+1)+Δ[A109613(A004652(n))]` -/
def P5569977062795368681.Spec : Prop :=
  ∀ n, P5569977062795368681.a n = A264797 n

end A264797

/-! ## A264797.P14505654016229184164

`A042948(A008619(n)*A064455(n+1))`
-/

namespace A264797.P14505654016229184164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A008619 n * A064455 (n + 1)).toNat

end

end A264797.P14505654016229184164

namespace A264797

/-- `A042948(A008619(n)*A064455(n+1))` -/
def P14505654016229184164.Spec : Prop :=
  ∀ n, P14505654016229184164.a n = A264797 n

end A264797

/-! ## A264797.P1960720078284488163

`A042948(A008619(n)²*Δ[A042948(n)])`
-/

namespace A264797.P1960720078284488163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A008619 n ^ 2 * (f1 (n + 1) - f1 n)).toNat

end

end A264797.P1960720078284488163

namespace A264797

/-- `A042948(A008619(n)²*Δ[A042948(n)])` -/
def P1960720078284488163.Spec : Prop :=
  ∀ n, P1960720078284488163.a n = A264797 n

end A264797

/-! ## A264797.P17929673044847743024

`A042948((A004526(n)+1)*A064455(n+1))`
-/

namespace A264797.P17929673044847743024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 ((A004526 n + 1) * A064455 (n + 1)).toNat

end

end A264797.P17929673044847743024

namespace A264797

/-- `A042948((A004526(n)+1)*A064455(n+1))` -/
def P17929673044847743024.Spec : Prop :=
  ∀ n, P17929673044847743024.a n = A264797 n

end A264797

/-!
# A264798: Irregular triangle read by rows: odd-valued terms of A094728(n+1).

The programs for A264798, there is no canonical definition to state claims against.
-/

/-! ## A264798.P6779281034309384712

`A094728((2*n+3)%comp[n²]+n)`
-/

namespace A264798.P6779281034309384712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 ((2 * n + 3) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A264798.P6779281034309384712

/-! ## A264798.P72765442616806097

`A094728(Δ[n²]-(round(sqrt(n+1))-1))`
-/

namespace A264798.P72765442616806097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)).toNat

end

end A264798.P72765442616806097

/-! ## A264798.P13615503444168187771

`A143218(A090894(n)+1)`
-/

namespace A264798.P13615503444168187771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143218 (A090894 n + 1).toNat

end

end A264798.P13615503444168187771

/-! ## A264798.P8191158917242984050

`A143218(A091995(n+1))`
-/

namespace A264798.P8191158917242984050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143218 (A091995 (n + 1)).toNat

end

end A264798.P8191158917242984050

/-! ## A264798.P12290642613587100893

`A098353(eq[0, A218757(n)])`
-/

namespace A264798.P12290642613587100893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264798.P12290642613587100893

/-! ## A264798.P11057372772044601511

`A335821(eq[0, A049310(n)])`
-/

namespace A264798.P11057372772044601511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264798.P11057372772044601511

/-! ## A264798.P3840213732024289325

`A335821(eq[0, A050314(n)])`
-/

namespace A264798.P3840213732024289325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264798.P3840213732024289325

/-! ## A264798.P13828028509264877173

`A335821(eq[0, A053120(n)])`
-/

namespace A264798.P13828028509264877173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264798.P13828028509264877173

/-! ## A264798.P17277530620911272342

`A335821(eq[0, A108045(n)])`
-/

namespace A264798.P17277530620911272342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264798.P17277530620911272342

/-! ## A264798.P3524539540008438088

`filter[A335821(n), A000035(#)]`
-/

namespace A264798.P3524539540008438088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A264798.P3524539540008438088

