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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A120700: a(n) is the least refactorable number k having the n-th prime as its greatest prime factor.

The programs for A120700, there is no canonical definition to state claims against.
-/

/-! ## A120700.P7019571430809397517

`A272347(A000040(n+1))`
-/

namespace A120700.P7019571430809397517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272347 (A000040 (n + 1)).toNat

end

end A120700.P7019571430809397517

/-! ## A120700.P3710505714137500556

`A272347(A008578(n+2))`
-/

namespace A120700.P3710505714137500556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272347 (A008578 (n + 2)).toNat

end

end A120700.P3710505714137500556

/-! ## A120700.P207839005543953755

`A272347(A182986(n+2))`
-/

namespace A120700.P207839005543953755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272347 (A182986 (n + 2)).toNat

end

end A120700.P207839005543953755

/-! ## A120700.P12935575232965767736

`A272347(record[A006530(n+2)])`
-/

namespace A120700.P12935575232965767736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120700.P12935575232965767736

/-! ## A120700.P17583501751571600286

`A272347(record[A014963(n+2)])`
-/

namespace A120700.P17583501751571600286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120700.P17583501751571600286

/-! ## A120700.P16677446125220124

`A272347(record[A020639(n+2)])`
-/

namespace A120700.P16677446125220124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120700.P16677446125220124

/-! ## A120700.P10775769734586426488

`A272347(A100484(n+1)/2)`
-/

namespace A120700.P10775769734586426488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272347 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A120700.P10775769734586426488

/-! ## A120700.P9833068981134629685

`record[(2-A001222(n+1))*A272347(n+1)]`
-/

namespace A120700.P9833068981134629685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A001222 (n + 1)) * A272347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120700.P9833068981134629685

/-! ## A120700.P1856258633159049359

`∩[A055678(n+1), A131511(n+1)]`
-/

namespace A120700.P1856258633159049359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120700.P1856258633159049359

/-!
# A120701: Number of unit circles which fit touching a circle of radius n-1, i.e., with their centers on a circle of radius n.

The programs for A120701, the canonical program `A120701.P4077168360062085513` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120701 has offset 1).

The definition of A120701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120701.P4077168360062085513

`floor(π/asin(1/(n+1)))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120701

/-- `floor(π/asin(1/(n+1)))` -/
def P4077168360062085513.Spec : Prop :=
  ∀ n, P4077168360062085513.a n = A120701 (n + 1)

theorem P4077168360062085513.correct : P4077168360062085513.Spec := by
  intro n
  simp only [A120701, Nat.add_sub_cancel]

end A120701

/-! ## A120701.P17866783006925691563

`floor(π/Δ[log(2*n+1)])`
-/

namespace A120701.P17866783006925691563
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi / (f1 (n + 1) - f1 n)⌋

end

end A120701.P17866783006925691563

namespace A120701

/-- `floor(π/Δ[log(2*n+1)])` -/
def P17866783006925691563.Spec : Prop :=
  ∀ n, P17866783006925691563.a n = A120701 (n + 1)

end A120701

/-! ## A120701.P17829229929717126145

`ceil(π*(n+1)-ceil(acot(n)))`
-/

namespace A120701.P17829229929717126145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (n + 1 : ℝ) - (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℝ)⌉

end

end A120701.P17829229929717126145

namespace A120701

/-- `ceil(π*(n+1)-ceil(acot(n)))` -/
def P17829229929717126145.Spec : Prop :=
  ∀ n, P17829229929717126145.a n = A120701 (n + 1)

end A120701

/-! ## A120701.P864602889741564932

`ceil(Δ[(n+1)*n*atan(n)])`
-/

namespace A120701.P864602889741564932
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * ((n : ℝ) * Real.arctan (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A120701.P864602889741564932

namespace A120701

/-- `ceil(Δ[(n+1)*n*atan(n)])` -/
def P864602889741564932.Spec : Prop :=
  ∀ n, P864602889741564932.a n = A120701 (n + 1)

end A120701

/-! ## A120701.P2152440473558814623

`Δ[a(n-1)+floor(π*n)]` with `a(0)=1, a(1)=3`
-/

namespace A120701.P2152440473558814623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + ⌊Real.pi * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120701.P2152440473558814623

namespace A120701

/-- `Δ[a(n-1)+floor(π*n)]` -/
def P2152440473558814623.Spec : Prop :=
  ∀ n, P2152440473558814623.a n = A120701 (n + 1)

end A120701

/-! ## A120701.P10431828023007050342

`abs(A022844(n+1)-floor(acot(n)))`
-/

namespace A120701.P10431828023007050342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022844 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋|

end

end A120701.P10431828023007050342

namespace A120701

/-- `abs(A022844(n+1)-floor(acot(n)))` -/
def P10431828023007050342.Spec : Prop :=
  ∀ n, P10431828023007050342.a n = A120701 (n + 1)

end A120701

/-! ## A120701.P7189344048740639039

`A022844(n+1)-A000007(n)`
-/

namespace A120701.P7189344048740639039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1) - A000007 n

end

end A120701.P7189344048740639039

namespace A120701

/-- `A022844(n+1)-A000007(n)` -/
def P7189344048740639039.Spec : Prop :=
  ∀ n, P7189344048740639039.a n = A120701 (n + 1)

end A120701

/-! ## A120701.P6394636044190070596

`A184591(n+1)+A065475(n+1)`
-/

namespace A120701.P6394636044190070596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184591 (n + 1) + A065475 (n + 1)

end

end A120701.P6394636044190070596

namespace A120701

/-- `A184591(n+1)+A065475(n+1)` -/
def P6394636044190070596.Spec : Prop :=
  ∀ n, P6394636044190070596.a n = A120701 (n + 1)

end A120701

/-! ## A120701.P14292783091491800196

`A022844(n+1)-A316341(2*n+1)`
-/

namespace A120701.P14292783091491800196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1) - A316341 (2 * n + 1)

end

end A120701.P14292783091491800196

namespace A120701

/-- `A022844(n+1)-A316341(2*n+1)` -/
def P14292783091491800196.Spec : Prop :=
  ∀ n, P14292783091491800196.a n = A120701 (n + 1)

end A120701

/-! ## A120701.P6658509504669661959

`A027434(A352741(n+1))`
-/

namespace A120701.P6658509504669661959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A352741 (n + 1)).toNat

end

end A120701.P6658509504669661959

namespace A120701

/-- `A027434(A352741(n+1))` -/
def P6658509504669661959.Spec : Prop :=
  ∀ n, P6658509504669661959.a n = A120701 (n + 1)

end A120701

/-!
# A120702: Values of n where A022844(n) = floor(n*Pi) differs from A120701(n) = floor(Pi/arcsin(1/n)).

The programs for A120702, there is no canonical definition to state claims against.
-/

/-! ## A120702.P4504347555575360964

`A002486(lt[(3*n)², ((n²-1)%4)^(n/2)])`
-/

namespace A120702.P4504347555575360964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n ^ 2 : ℤ) - 1) 4 : ℝ) ^ ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002486 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A120702.P4504347555575360964

/-! ## A120702.P5871294154377636258

`A002486(lt[n, A035363(n)])`
-/

namespace A120702.P5871294154377636258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A120702.P5871294154377636258

/-! ## A120702.P9765424854502002866

`A002486(lt[∑[n], A152166(n)])`
-/

namespace A120702.P9765424854502002866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A120702.P9765424854502002866

/-! ## A120702.P9620942035851188246

`A002486(2*A345435(n+1))`
-/

namespace A120702.P9620942035851188246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002486 (2 * A345435 (n + 1)).toNat

end

end A120702.P9620942035851188246

/-! ## A120702.P8949419792300543766

`A002486(lt[A017270(n), A138540(n)])`
-/

namespace A120702.P8949419792300543766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017270 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002486 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A120702.P8949419792300543766

/-!
# A120705: Permutation of natural numbers induced by the Catalan bijection gma120705 acting on the binary trees encoded by A014486/A063171.

The programs for A120705, there is no canonical definition to state claims against.
-/

/-! ## A120705.P6734702611171814628

`A057163(A120706(A057163(n)))`
-/

namespace A120705.P6734702611171814628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A120706 (A057163 n).toNat).toNat

end

end A120705.P6734702611171814628

/-! ## A120705.P13628986714454686378

`A122308(A057163(n))%A097984(n+1)`
-/

namespace A120705.P13628986714454686378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122308 (A057163 n).toNat) (A097984 (n + 1))

end

end A120705.P13628986714454686378

/-! ## A120705.P10319718183293766995

`A057163(A130352(n)%A036463(n+1))`
-/

namespace A120705.P10319718183293766995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (Int.tmod (A130352 n) (A036463 (n + 1))).toNat

end

end A120705.P10319718183293766995

/-! ## A120705.P9157632405074458288

`A057163(A130352(n))%A326838(n+4)`
-/

namespace A120705.P9157632405074458288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057163 (A130352 n).toNat) (A326838 (n + 4))

end

end A120705.P9157632405074458288

/-! ## A120705.P7306267826346110994

`A122342(A122335(n)%A109835(n+1))`
-/

namespace A120705.P7306267826346110994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122342 (Int.tmod (A122335 n) (A109835 (n + 1))).toNat

end

end A120705.P7306267826346110994

/-!
# A120706: Permutation of natural numbers induced by the Catalan bijection gma120706 acting on the binary trees encoded by A014486/A063171.

The programs for A120706, there is no canonical definition to state claims against.
-/

/-! ## A120706.P14017494517393852155

`A057163(A120705(A057163(n)))`
-/

namespace A120706.P14017494517393852155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A120705 (A057163 n).toNat).toNat

end

end A120706.P14017494517393852155

/-! ## A120706.P17732806790056091806

`A130351(A057163(n)%A222413(2*n+3))`
-/

namespace A120706.P17732806790056091806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130351 (Int.tmod (A057163 n) (A222413 (2 * n + 3))).toNat

end

end A120706.P17732806790056091806

/-! ## A120706.P5670109849496598093

`A057163(A122307(n)%A122237(2*n+1))`
-/

namespace A120706.P5670109849496598093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (Int.tmod (A122307 n) (A122237 (2 * n + 1))).toNat

end

end A120706.P5670109849496598093

/-! ## A120706.P1452813136009485004

`A130351(A057163(n))%A141815(n+1)`
-/

namespace A120706.P1452813136009485004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130351 (A057163 n).toNat) (A141815 (n + 1))

end

end A120706.P1452813136009485004

/-! ## A120706.P9060252975593387686

`A122336(A122341(n))%A321693(n+3)`
-/

namespace A120706.P9060252975593387686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122336 (A122341 n).toNat) (A321693 (n + 3))

end

end A120706.P9060252975593387686

/-!
# A120707: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A120705/A120706.

The programs for A120707, there is no canonical definition to state claims against.
-/

/-! ## A120707.P7249743676265867168

`A100719(A136029(n))`
-/

namespace A120707.P7249743676265867168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100719 (A136029 n).toNat

end

end A120707.P7249743676265867168

/-! ## A120707.P15069847133761660931

`A138374(A325473(n))`
-/

namespace A120707.P15069847133761660931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138374 (A325473 n).toNat

end

end A120707.P15069847133761660931

/-! ## A120707.P14120663125799669100

`A034298(A345234(n+1))`
-/

namespace A120707.P14120663125799669100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A345234 (n + 1)).toNat

end

end A120707.P14120663125799669100

/-! ## A120707.P8855181651487777833

`A256389(A345235(n+2))`
-/

namespace A120707.P8855181651487777833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256389 (A345235 (n + 2)).toNat

end

end A120707.P8855181651487777833

/-! ## A120707.P8970575699674644130

`A007949(A002387(n))+A007562(n+1)`
-/

namespace A120707.P8970575699674644130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A002387 n).toNat + A007562 (n + 1)

end

end A120707.P8970575699674644130

/-!
# A120709: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A120705/A120706.

The programs for A120709, there is no canonical definition to state claims against.
-/

/-! ## A120709.P17532453264655958439

`lcm(A055651(A279258(n)), A279258(n))`
-/

namespace A120709.P17532453264655958439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055651 (A279258 n).toNat) (A279258 n)

end

end A120709.P17532453264655958439

/-! ## A120709.P13280759308716972266

`A211351(A330369(n+1)+A052064(n+1))`
-/

namespace A120709.P13280759308716972266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211351 (A330369 (n + 1) + A052064 (n + 1)).toNat

end

end A120709.P13280759308716972266

/-!
# A120710: A GF(2) polynomial analog of triangular numbers.

The programs for A120710, there is no canonical definition to state claims against.
-/

/-! ## A120710.P9435406461134339708

`A059906(A213673(2*(2*∑[and(n, -n)²]+n)/3))`
-/

namespace A120710.P9435406461134339708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A213673 (SequenceMachineLib.roundAway (2 * (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3))).toNat).toNat

end

end A120710.P9435406461134339708

/-! ## A120710.P11895158229529289362

`A059906(A000695(n)²-A033052(n))`
-/

namespace A120710.P11895158229529289362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A000695 n ^ 2 - A033052 n).toNat

end

end A120710.P11895158229529289362

/-! ## A120710.P15457869549538378128

`A131516(2*A213673(n))`
-/

namespace A120710.P15457869549538378128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (2 * A213673 n).toNat

end

end A120710.P15457869549538378128

/-! ## A120710.P16565274920759284538

`A213673(n)*A363719(A133956(n+1))`
-/

namespace A120710.P16565274920759284538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213673 n * A363719 (A133956 (n + 1)).toNat

end

end A120710.P16565274920759284538

/-!
# A120711: Expansion of 2*x*(7+16*x-2*x^2-14*x^3)/(1-11*x^2-12*x^3+10*x^4+12*x^5).

The programs for A120711, the canonical program `A120711.P14590220150603752484` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120711 has offset 0).

The definition of A120711 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((14x+32x^2-4x^3-28x^4)/(1-11x^2-12x^3+10x^4+12x^5))` (program `A120711.P14590220150603752484`, by `A120711.P14590220150603752484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120711.P14590220150603752484

`ogf((14x+32x^2-4x^3-28x^4)/(1-11x^2-12x^3+10x^4+12x^5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120711

/-- `ogf((14x+32x^2-4x^3-28x^4)/(1-11x^2-12x^3+10x^4+12x^5))` -/
def P14590220150603752484.Spec : Prop :=
  ∀ n, P14590220150603752484.a n = A120711 n

theorem P14590220150603752484.correct : P14590220150603752484.Spec := by
  intro n
  simp only [A120711]

end A120711

/-! ## A120711.P15961980304150208717

`11*a(n-2)+12*a(n-3)-10*a(n-4)-12*a(n-5)` with `a(0)=0, a(1)=14, a(2)=32, a(3)=150, a(4)=492`
-/

namespace A120711.P15961980304150208717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 14, 32, 150, 492] fun n a =>
  11 * a (n - 2) + 12 * a (n - 3) - 10 * a (n - 4) - 12 * a (n - 5)

end

end A120711.P15961980304150208717

namespace A120711

/-- `11*a(n-2)+12*a(n-3)-10*a(n-4)-12*a(n-5)` -/
def P15961980304150208717.Spec : Prop :=
  ∀ n, P15961980304150208717.a n = A120711 n

end A120711

/-!
# A120713: Primes arising in A120712.

The programs for A120713, there is no canonical definition to state claims against.
-/

/-! ## A120713.P14661238066899230971

`A037279(A120712(n+1))`
-/

namespace A120713.P14661238066899230971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037279 (A120712 (n + 1)).toNat

end

end A120713.P14661238066899230971

/-! ## A120713.P14500239752606516938

`A106708(A120712(2*n+1-n))`
-/

namespace A120713.P14500239752606516938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (A120712 (2 * n + 1 - n)).toNat

end

end A120713.P14500239752606516938

/-! ## A120713.P2098791462910111084

`A106708(lcm((-1)^n, A120712(n+1)))`
-/

namespace A120713.P2098791462910111084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (Int.lcm ((-1) ^ n) (A120712 (n + 1)))

end

end A120713.P2098791462910111084

/-! ## A120713.P8182690501901198174

`A106708(((-1)^n)²*A120712(n+1))`
-/

namespace A120713.P8182690501901198174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (((-1) ^ n) ^ 2 * A120712 (n + 1)).toNat

end

end A120713.P8182690501901198174

/-! ## A120713.P5917198211166466235

`A106708(A120712(n+1)/((-1)^n)²)`
-/

namespace A120713.P5917198211166466235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (SequenceMachineLib.roundAway ((A120712 (n + 1) : ℚ) / (((-1) ^ n) ^ 2 : ℚ))).toNat

end

end A120713.P5917198211166466235

/-! ## A120713.P13381164726235252196

`gcd(A000038(n), A106708(A120712(n+1)))`
-/

namespace A120713.P13381164726235252196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A106708 (A120712 (n + 1)).toNat)

end

end A120713.P13381164726235252196

/-! ## A120713.P2672829910218901444

`lcm(A033999(n), A106708(A120712(n+1)))`
-/

namespace A120713.P2672829910218901444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A106708 (A120712 (n + 1)).toNat)

end

end A120713.P2672829910218901444

/-! ## A120713.P11143647866972220409

`A106708(A120712(n+1)+A000035(2*n))`
-/

namespace A120713.P11143647866972220409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (A120712 (n + 1) + A000035 (2 * n)).toNat

end

end A120713.P11143647866972220409

/-! ## A120713.P3503861467100324536

`A106708(A120712(n+1)%A127229(n+5))`
-/

namespace A120713.P3503861467100324536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (Int.tmod (A120712 (n + 1)) (A127229 (n + 5))).toNat

end

end A120713.P3503861467100324536

/-! ## A120713.P17751248634923986232

`or(A010051(n+1), A106708(A120712(n+1)))`
-/

namespace A120713.P17751248634923986232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A106708 (A120712 (n + 1)).toNat)

end

end A120713.P17751248634923986232

/-! ## A120713.P1528179995582103447

`A106708(A120712(n+1))*A286872(2*(n+1))`
-/

namespace A120713.P1528179995582103447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (A120712 (n + 1)).toNat * A286872 (2 * (n + 1))

end

end A120713.P1528179995582103447

/-! ## A120713.P4123196464152823516

`A007318(C(n, 2))*A106708(A120712(n+1))`
-/

namespace A120713.P4123196464152823516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A106708 (A120712 (n + 1)).toNat

end

end A120713.P4123196464152823516

/-!
# A120714: Expansion of 2*x^2*(7+14*x+4*x^2)/((1+x-x^2)*(1-2*x-10*x^2-6*x^3)).

The programs for A120714, the canonical program `A120714.P5927401458778912276` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120714 has offset 1).

The definition of A120714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((14x+28x^2+8x^3)/(1-x-13x^2-14x^3+4x^4+6x^5))` (program `A120714.P5927401458778912276`, by `A120714.P5927401458778912276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120714.P5927401458778912276

`ogf((14x+28x^2+8x^3)/(1-x-13x^2-14x^3+4x^4+6x^5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120714

/-- `ogf((14x+28x^2+8x^3)/(1-x-13x^2-14x^3+4x^4+6x^5))` -/
def P5927401458778912276.Spec : Prop :=
  ∀ n, P5927401458778912276.a n = A120714 (n + 1)

theorem P5927401458778912276.correct : P5927401458778912276.Spec := by
  intro n
  simp only [A120714, Nat.add_sub_cancel]

end A120714

/-!
# A120718: Expansion of 3*x/(1 - 2*x^2 - 2*x + x^3).

The programs for A120718, the canonical program `A120718.P8362234274176936085` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120718 has offset 0).

The definition of A120718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(3x/(1-2x-2x^2+x^3))` (program `A120718.P8362234274176936085`, by `A120718.P8362234274176936085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120718.P8362234274176936085

`ogf(3x/(1-2x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120718

/-- `ogf(3x/(1-2x-2x^2+x^3))` -/
def P8362234274176936085.Spec : Prop :=
  ∀ n, P8362234274176936085.a n = A120718 n

theorem P8362234274176936085.correct : P8362234274176936085.Spec := by
  intro n
  simp only [A120718]

end A120718

/-! ## A120718.P11071263210453586675

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=6`
-/

namespace A120718.P11071263210453586675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A120718.P11071263210453586675

namespace A120718

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P11071263210453586675.Spec : Prop :=
  ∀ n, P11071263210453586675.a n = A120718 n

end A120718

/-! ## A120718.P17111763857103882620

`3*A001654(n)`
-/

namespace A120718.P17111763857103882620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001654 n

end

end A120718.P17111763857103882620

namespace A120718

/-- `3*A001654(n)` -/
def P17111763857103882620.Spec : Prop :=
  ∀ n, P17111763857103882620.a n = A120718 n

end A120718

/-! ## A120718.P5192948214518790731

`3/5*(A000032(2*n+1)-(-1)^n)`
-/

namespace A120718.P5192948214518790731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A000032 (2 * n + 1) - (-1) ^ n : ℚ)

end

end A120718.P5192948214518790731

namespace A120718

/-- `3/5*(A000032(2*n+1)-(-1)^n)` -/
def P5192948214518790731.Spec : Prop :=
  ∀ n, P5192948214518790731.a n = (A120718 n : ℚ)

end A120718

/-! ## A120718.P4066955563723539969

`3*(A000045(2*n+2)+A000045(2*n)-(-1)^n)/5`
-/

namespace A120718.P4066955563723539969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (A000045 (2 * n + 2) + A000045 (2 * n) - (-1) ^ n) : ℚ) / 5

end

end A120718.P4066955563723539969

namespace A120718

/-- `3*(A000045(2*n+2)+A000045(2*n)-(-1)^n)/5` -/
def P4066955563723539969.Spec : Prop :=
  ∀ n, P4066955563723539969.a n = (A120718 n : ℚ)

end A120718

/-! ## A120718.P15926256729708890508

`∑[3*round(ϕ^n/sqrt(5))²]`
-/

namespace A120718.P15926256729708890508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120718.P15926256729708890508

namespace A120718

/-- `∑[3*round(ϕ^n/sqrt(5))²]` -/
def P15926256729708890508.Spec : Prop :=
  ∀ n, P15926256729708890508.a n = A120718 n

end A120718

/-! ## A120718.P8284978680881547743

`record[a(n-2)-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A120718.P8284978680881547743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A120718.P8284978680881547743

namespace A120718

/-- `record[a(n-2)-a(n-1)]+a(n-2)` -/
def P8284978680881547743.Spec : Prop :=
  ∀ n, P8284978680881547743.a n = A120718 n

end A120718

/-! ## A120718.P12359953984105497501

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=3, a(2)=6`
-/

namespace A120718.P12359953984105497501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 6] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A120718.P12359953984105497501

namespace A120718

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P12359953984105497501.Spec : Prop :=
  ∀ n, P12359953984105497501.a n = A120718 n

end A120718

/-! ## A120718.P7167420684714496030

`(1-a(n-1)/(a(n-2)-a(n-1)))*a(n-1)` with `a(0)=0, a(1)=3`
-/

namespace A120718.P7167420684714496030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  (1 - a (n - 1) / (a (n - 2) - a (n - 1))) * a (n - 1)

end

end A120718.P7167420684714496030

namespace A120718

/-- `(1-a(n-1)/(a(n-2)-a(n-1)))*a(n-1)` -/
def P7167420684714496030.Spec : Prop :=
  ∀ n, P7167420684714496030.a n = (A120718 n : ℚ)

end A120718

/-! ## A120718.P11686025081665257803

`a(n-1)+a(n-1)/(1-a(n-2)/a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A120718.P11686025081665257803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + a (n - 1) / (1 - a (n - 2) / a (n - 1))

end

end A120718.P11686025081665257803

namespace A120718

/-- `a(n-1)+a(n-1)/(1-a(n-2)/a(n-1))` -/
def P11686025081665257803.Spec : Prop :=
  ∀ n, P11686025081665257803.a n = (A120718 n : ℚ)

end A120718

/-! ## A120718.P9479840462563393080

`a(n-1)-a(n-1)/(a(n-2)/a(n-1)-1)` with `a(0)=0, a(1)=3`
-/

namespace A120718.P9479840462563393080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) - a (n - 1) / (a (n - 2) / a (n - 1) - 1)

end

end A120718.P9479840462563393080

namespace A120718

/-- `a(n-1)-a(n-1)/(a(n-2)/a(n-1)-1)` -/
def P9479840462563393080.Spec : Prop :=
  ∀ n, P9479840462563393080.a n = (A120718 n : ℚ)

end A120718

/-! ## A120718.P17438513035660015627

`3*Δ[A166516(n)]`
-/

namespace A120718.P17438513035660015627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A120718.P17438513035660015627

namespace A120718

/-- `3*Δ[A166516(n)]` -/
def P17438513035660015627.Spec : Prop :=
  ∀ n, P17438513035660015627.a n = A120718 n

end A120718

/-! ## A120718.P11129005309261402858

`A295681(2*(n+1))`
-/

namespace A120718.P11129005309261402858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 (2 * (n + 1))

end

end A120718.P11129005309261402858

namespace A120718

/-- `A295681(2*(n+1))` -/
def P11129005309261402858.Spec : Prop :=
  ∀ n, P11129005309261402858.a n = A120718 n

end A120718

/-! ## A120718.P15168069601207350965

`A295682(2*(n+1))`
-/

namespace A120718.P15168069601207350965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 (2 * (n + 1))

end

end A120718.P15168069601207350965

namespace A120718

/-- `A295682(2*(n+1))` -/
def P15168069601207350965.Spec : Prop :=
  ∀ n, P15168069601207350965.a n = A120718 n

end A120718

/-! ## A120718.P1654875805128064168

`3*A074677(2*n)`
-/

namespace A120718.P1654875805128064168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074677 (2 * n)

end

end A120718.P1654875805128064168

namespace A120718

/-- `3*A074677(2*n)` -/
def P1654875805128064168.Spec : Prop :=
  ∀ n, P1654875805128064168.a n = A120718 n

end A120718

/-! ## A120718.P6818219820003461921

`3/2*A079472(n+1)`
-/

namespace A120718.P6818219820003461921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A079472 (n + 1) : ℚ)

end

end A120718.P6818219820003461921

namespace A120718

/-- `3/2*A079472(n+1)` -/
def P6818219820003461921.Spec : Prop :=
  ∀ n, P6818219820003461921.a n = (A120718 n : ℚ)

end A120718

/-! ## A120718.P16485247974502342247

`3*round(A000045(2*n)/(3-ϕ))`
-/

namespace A120718.P16485247974502342247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((A000045 (2 * n) : ℝ) / (3 - Real.goldenRatio))

end

end A120718.P16485247974502342247

namespace A120718

/-- `3*round(A000045(2*n)/(3-ϕ))` -/
def P16485247974502342247.Spec : Prop :=
  ∀ n, P16485247974502342247.a n = A120718 n

end A120718

/-! ## A120718.P11998594727803276491

`A059929(n)+A001906(n)`
-/

namespace A120718.P11998594727803276491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n + A001906 n

end

end A120718.P11998594727803276491

namespace A120718

/-- `A059929(n)+A001906(n)` -/
def P11998594727803276491.Spec : Prop :=
  ∀ n, P11998594727803276491.a n = A120718 n

end A120718

/-! ## A120718.P13021698496797201026

`A192879(n)+A175395(n)`
-/

namespace A120718.P13021698496797201026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192879 n + A175395 n

end

end A120718.P13021698496797201026

namespace A120718

/-- `A192879(n)+A175395(n)` -/
def P13021698496797201026.Spec : Prop :=
  ∀ n, P13021698496797201026.a n = A120718 n

end A120718

/-! ## A120718.P18026382344284244292

`A260259(n)+A236428(n)`
-/

namespace A120718.P18026382344284244292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n + A236428 n

end

end A120718.P18026382344284244292

namespace A120718

/-- `A260259(n)+A236428(n)` -/
def P18026382344284244292.Spec : Prop :=
  ∀ n, P18026382344284244292.a n = A120718 n

end A120718

/-!
# A120721: Partial sums of A079645.

The programs for A120721, there is no canonical definition to state claims against.
-/

/-! ## A120721.P16034236383656669475

`∑[A079645(n+1)]`
-/

namespace A120721.P16034236383656669475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120721.P16034236383656669475

/-! ## A120721.P985182946426396223

`∑[record[A079645(A133310(n))]]`
-/

namespace A120721.P985182946426396223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120721.P985182946426396223

/-! ## A120721.P946083911723374692

`∑[record[A079645(A152271(n))]]`
-/

namespace A120721.P946083911723374692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120721.P946083911723374692

/-! ## A120721.P13368964724153288635

`∑[record[A079645(A065648(n))]]`
-/

namespace A120721.P13368964724153288635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120721.P13368964724153288635

/-! ## A120721.P17852560351843692885

`∑[record[A079645(A109785(n))]]`
-/

namespace A120721.P17852560351843692885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120721.P17852560351843692885

/-! ## A120721.P1281731709215332572

`∑[record[A079645(A022446(n))]]`
-/

namespace A120721.P1281731709215332572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120721.P1281731709215332572

/-! ## A120721.P1003956759129938803

`∑[record[gcd(n, A048766(n+1))+n]]`
-/

namespace A120721.P1003956759129938803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A048766 (n + 1)) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120721.P1003956759129938803

/-! ## A120721.P11915700488092888240

`∑[lt[lcm(n, A048766(n)), 2*n]]`
-/

namespace A120721.P11915700488092888240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A048766 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120721.P11915700488092888240

/-! ## A120721.P10980194861071078562

`∑[record[A079645(A134478(n))]]`
-/

namespace A120721.P10980194861071078562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120721.P10980194861071078562

/-! ## A120721.P5409204116469899750

`∑[record[A079645(A020986(n))]]`
-/

namespace A120721.P5409204116469899750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120721.P5409204116469899750

/-!
# A120723: Expansion of x*(1+3*x)*(1+6*x+16*x^2)/((1-x)*(1+2*x)*(1-3*x-2*x^2)).

The programs for A120723, the canonical program `A120723.P15557832953657526095` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120723 has offset 1).

The definition of A120723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+9x+34x^2+48x^3)/(1-2x-7x^2+4x^3+4x^4))` (program `A120723.P15557832953657526095`, by `A120723.P15557832953657526095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120723.P15557832953657526095

`ogf((1+9x+34x^2+48x^3)/(1-2x-7x^2+4x^3+4x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120723

/-- `ogf((1+9x+34x^2+48x^3)/(1-2x-7x^2+4x^3+4x^4))` -/
def P15557832953657526095.Spec : Prop :=
  ∀ n, P15557832953657526095.a n = A120723 (n + 1)

theorem P15557832953657526095.correct : P15557832953657526095.Spec := by
  intro n
  simp only [A120723, Nat.add_sub_cancel]

end A120723

/-!
# A120724: Irregular triangle T(n, k) = prime(n) + k*(k-1), for n >= 1 and 1 <= k <= 1 + A000720(n), read by rows.

The programs for A120724, there is no canonical definition to state claims against.
-/

/-! ## A120724.P1679109357841639403

`A117530(record[A289944(n+1)])`
-/

namespace A120724.P1679109357841639403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120724.P1679109357841639403

/-! ## A120724.P6626131419084136743

`A117530(A342191(n+1)%A174862(n+1))`
-/

namespace A120724.P6626131419084136743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117530 (Int.tmod (A342191 (n + 1)) (A174862 (n + 1))).toNat

end

end A120724.P6626131419084136743

/-!
# A120727: a(n) = a(n-1) + a(n-2), starting with 110, 211.

The programs for A120727, the canonical program `A120727.P9557573038665317259` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120727 has offset 1).

The definition of A120727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)` (program `A120727.P9557573038665317259`, by `A120727.P9557573038665317259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120727.P9557573038665317259

`a(n-1)+a(n-2)` with `a(0)=110, a(1)=211`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120727

/-- `a(n-1)+a(n-2)` -/
def P9557573038665317259.Spec : Prop :=
  ∀ n, (P9557573038665317259.a n : ℤ) = A120727 (n + 1)

theorem P9557573038665317259.correct : P9557573038665317259.Spec := by
  intro n
  simp only [A120727, Nat.add_sub_cancel]

end A120727

/-! ## A120727.P6647104820122115469

`a(n-1)-ceil(-a(n-2))` with `a(0)=110, a(1)=211`

`ceil` is left out, it is the identity on integers.
-/

namespace A120727.P6647104820122115469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [110, 211] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A120727.P6647104820122115469

namespace A120727

/-- `a(n-1)-ceil(-a(n-2))` -/
def P6647104820122115469.Spec : Prop :=
  ∀ n, P6647104820122115469.a n = A120727 (n + 1)

end A120727

/-! ## A120727.P10730594868758009198

`a(n-1)-(char[1]-a(n-2))` with `a(0)=110, a(1)=211`
-/

namespace A120727.P10730594868758009198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [110, 211] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A120727.P10730594868758009198

namespace A120727

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P10730594868758009198.Spec : Prop :=
  ∀ n, P10730594868758009198.a n = A120727 (n + 1)

end A120727

/-! ## A120727.P5120889240129938167

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=110, a(1)=211`
-/

namespace A120727.P5120889240129938167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [110, 211] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A120727.P5120889240129938167

namespace A120727

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P5120889240129938167.Spec : Prop :=
  ∀ n, P5120889240129938167.a n = (A120727 (n + 1) : ℚ)

end A120727

/-! ## A120727.P3196987517224531636

`A022144(A022102(n+2))+A022095(n+2)`
-/

namespace A120727.P3196987517224531636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A022102 (n + 2)).toNat + A022095 (n + 2)

end

end A120727.P3196987517224531636

namespace A120727

/-- `A022144(A022102(n+2))+A022095(n+2)` -/
def P3196987517224531636.Spec : Prop :=
  ∀ n, P3196987517224531636.a n = A120727 (n + 1)

end A120727

/-!
# A120728: a(n) = floor(e^n) modulo 3.

The programs for A120728, the canonical program `A120728.P12975504520604149163` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120728 has offset 1).

The definition of A120728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120728.P8200628969460105080

`floor(exp(n+1))%3`
-/

namespace A120728.P8200628969460105080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.exp (n + 1 : ℝ)⌋ 3

end

end A120728.P8200628969460105080

namespace A120728

/-- `floor(exp(n+1))%3` -/
def P8200628969460105080.Spec : Prop :=
  ∀ n, P8200628969460105080.a n = A120728 (n + 1)

end A120728

/-! ## A120728.P12975504520604149163

`floor(exp(n+1))-3*floor(exp(n+1)/3)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120728

/-- `floor(exp(n+1))-3*floor(exp(n+1)/3)` -/
def P12975504520604149163.Spec : Prop :=
  ∀ n, P12975504520604149163.a n = A120728 (n + 1)

theorem P12975504520604149163.correct : P12975504520604149163.Spec := by
  intro n
  simp only [A120728, Nat.add_sub_cancel]

end A120728

/-! ## A120728.P6704601768740746568

`-(ceil(-exp(n+1))%3)`
-/

namespace A120728.P6704601768740746568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ⌈-Real.exp (n + 1 : ℝ)⌉ 3

end

end A120728.P6704601768740746568

namespace A120728

/-- `-(ceil(-exp(n+1))%3)` -/
def P6704601768740746568.Spec : Prop :=
  ∀ n, P6704601768740746568.a n = A120728 (n + 1)

end A120728

/-! ## A120728.P6493082143619167461

`dr(∑[A064780(n)]%3)`
-/

namespace A120728.P6493082143619167461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064780 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3)

end

end A120728.P6493082143619167461

namespace A120728

/-- `dr(∑[A064780(n)]%3)` -/
def P6493082143619167461.Spec : Prop :=
  ∀ n, (P6493082143619167461.a n : ℤ) = A120728 (n + 1)

end A120728

/-! ## A120728.P11877560130656669679

`dr(A000149(n+1)%3)`
-/

namespace A120728.P11877560130656669679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000149 (n + 1)) 3)

end

end A120728.P11877560130656669679

namespace A120728

/-- `dr(A000149(n+1)%3)` -/
def P11877560130656669679.Spec : Prop :=
  ∀ n, (P11877560130656669679.a n : ℤ) = A120728 (n + 1)

end A120728

/-! ## A120728.P9299373593503291562

`A214077(3*(n+1))%3*A159623(∑[n])`
-/

namespace A120728.P9299373593503291562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214077 (3 * (n + 1))) 3 * A159623 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120728.P9299373593503291562

namespace A120728

/-- `A214077(3*(n+1))%3*A159623(∑[n])` -/
def P9299373593503291562.Spec : Prop :=
  ∀ n, P9299373593503291562.a n = A120728 (n + 1)

end A120728

/-!
# A120730: Another version of Catalan triangle A009766.

The programs for A120730, the canonical program `A120730.P8022058410953641753` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120730 has offset 0).

The definition of A120730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120730.P13323244950236766571

`sqrt(A126217(n))`
-/

namespace A120730.P13323244950236766571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A126217 n : ℝ)

end

end A120730.P13323244950236766571

namespace A120730

/-- `sqrt(A126217(n))` -/
def P13323244950236766571.Spec : Prop :=
  ∀ n, P13323244950236766571.a n = (A120730 n : ℝ)

end A120730

/-! ## A120730.P5143004515840598547

`ceil(sqrt(8*(n+1)))%2*A156644(n)`
-/

namespace A120730.P5143004515840598547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2 * A156644 n

end

end A120730.P5143004515840598547

namespace A120730

/-- `ceil(sqrt(8*(n+1)))%2*A156644(n)` -/
def P5143004515840598547.Spec : Prop :=
  ∀ n, P5143004515840598547.a n = A120730 n

end A120730

/-! ## A120730.P8022058410953641753

`A101688(n)*A156644(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120730

/-- `A101688(n)*A156644(n)` -/
def P8022058410953641753.Spec : Prop :=
  ∀ n, P8022058410953641753.a n = A120730 n

theorem P8022058410953641753.correct : P8022058410953641753.Spec := by
  intro n
  simp only [A120730]

end A120730

/-! ## A120730.P15142135581251123522

`A097808(n)*A187034(n)`
-/

namespace A120730.P15142135581251123522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n * A187034 n

end

end A120730.P15142135581251123522

namespace A120730

/-- `A097808(n)*A187034(n)` -/
def P15142135581251123522.Spec : Prop :=
  ∀ n, P15142135581251123522.a n = A120730 n

end A120730

/-! ## A120730.P14225295286513035948

`abs(A097808(n)*A101688(n))`
-/

namespace A120730.P14225295286513035948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097808 n * A101688 n|

end

end A120730.P14225295286513035948

namespace A120730

/-- `abs(A097808(n)*A101688(n))` -/
def P14225295286513035948.Spec : Prop :=
  ∀ n, P14225295286513035948.a n = A120730 n

end A120730

/-! ## A120730.P3899332922309810591

`abs(A156644(n)*A187034(n))`
-/

namespace A120730.P3899332922309810591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156644 n * A187034 n|

end

end A120730.P3899332922309810591

namespace A120730

/-- `abs(A156644(n)*A187034(n))` -/
def P3899332922309810591.Spec : Prop :=
  ∀ n, P3899332922309810591.a n = A120730 n

end A120730

/-! ## A120730.P5936692904430790646

`A145362(n+1)*A156644(n)`
-/

namespace A120730.P5936692904430790646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145362 (n + 1) * A156644 n

end

end A120730.P5936692904430790646

namespace A120730

/-- `A145362(n+1)*A156644(n)` -/
def P5936692904430790646.Spec : Prop :=
  ∀ n, P5936692904430790646.a n = A120730 n

end A120730

/-! ## A120730.P10584070638826174131

`A206735(n)-A206735(A101688(n)+n)`
-/

namespace A120730.P10584070638826174131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n - A206735 (A101688 n + (n : ℤ)).toNat

end

end A120730.P10584070638826174131

namespace A120730

/-- `A206735(n)-A206735(A101688(n)+n)` -/
def P10584070638826174131.Spec : Prop :=
  ∀ n, P10584070638826174131.a n = A120730 n

end A120730

/-! ## A120730.P14778004257069459444

`A053121(A185180(n+1)-1)`
-/

namespace A120730.P14778004257069459444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A185180 (n + 1) - 1).toNat

end

end A120730.P14778004257069459444

namespace A120730

/-- `A053121(A185180(n+1)-1)` -/
def P14778004257069459444.Spec : Prop :=
  ∀ n, P14778004257069459444.a n = A120730 n

end A120730

/-! ## A120730.P18063532501674138212

`A156644(n)*A267687(2*n+1)`
-/

namespace A120730.P18063532501674138212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n * A267687 (2 * n + 1)

end

end A120730.P18063532501674138212

namespace A120730

/-- `A156644(n)*A267687(2*n+1)` -/
def P18063532501674138212.Spec : Prop :=
  ∀ n, P18063532501674138212.a n = A120730 n

end A120730

/-!
# A120731: Decimal expansion of 3 + sqrt(2)/10.

The programs for A120731, there is no canonical definition to state claims against.
-/

/-! ## A120731.P8661561858236609506

`A002193(n-A214956(a(n-1)+1))` with `a(0)=3`
-/

namespace A120731.P8661561858236609506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002193 (((n : ℤ) - A214956 (a (n - 1) + 1).toNat).toNat + 1)

end

end A120731.P8661561858236609506

/-! ## A120731.P7712210053436017759

`A002193(n-A160467(a(n-1)²+1))` with `a(0)=3`
-/

namespace A120731.P7712210053436017759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002193 (((n : ℤ) - A160467 (a (n - 1) ^ 2 + 1).toNat).toNat + 1)

end

end A120731.P7712210053436017759

/-! ## A120731.P1200977735217197431

`A002193(n-A070940(A087255(a(n-1)+1)+1))` with `a(0)=3`
-/

namespace A120731.P1200977735217197431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002193 (((n : ℤ) - A070940 (A087255 (a (n - 1) + 1).toNat + 1).toNat).toNat + 1)

end

end A120731.P1200977735217197431

/-! ## A120731.P3568895341090660391

`A002193(n-A087255(A087255(a(n-1)+1)+1))` with `a(0)=3`
-/

namespace A120731.P3568895341090660391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002193 (((n : ℤ) - A087255 (A087255 (a (n - 1) + 1).toNat + 1).toNat).toNat + 1)

end

end A120731.P3568895341090660391

/-! ## A120731.P12461740683685734926

`A002193(n-A160467(A160467(a(n-1)+1)+1))` with `a(0)=3`
-/

namespace A120731.P12461740683685734926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002193 (((n : ℤ) - A160467 (A160467 (a (n - 1) + 1).toNat + 1).toNat).toNat + 1)

end

end A120731.P12461740683685734926

/-! ## A120731.P9537575247955677939

`A153012(n-1)+a(n-1)` with `a(0)=3, a(1)=1`
-/

namespace A120731.P9537575247955677939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  A153012 (n - 1) + a (n - 1)

end

end A120731.P9537575247955677939

/-!
# A120732: Number of square matrices with nonnegative integer entries and without zero rows or columns such that sum of all entries is equal to n.

The programs for A120732, there is no canonical definition to state claims against.
-/

/-! ## A120732.P8629446840607000682

`A213424(n*floor(2/acot(n))+5)`
-/

namespace A120732.P8629446840607000682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213424 (((n : ℤ) * ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + 5).toNat + 10)

end

end A120732.P8629446840607000682

/-! ## A120732.P2129935291767525270

`or(∑[n], A063272(3*(n+1)^(n-1)))`
-/

namespace A120732.P2129935291767525270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A063272 (SequenceMachineLib.roundAway (3 * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat)

end

end A120732.P2129935291767525270

/-!
# A120733: Number of matrices with nonnegative integer entries and without zero rows or columns such that sum of all entries is equal to n.

The programs for A120733, there is no canonical definition to state claims against.
-/

/-! ## A120733.P5548388407202575905

`A241154(∑[∑[n^n]])`
-/

namespace A120733.P5548388407202575905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120733.P5548388407202575905

/-! ## A120733.P16309492048425873402

`A008611(A006012(n)+A003578(n))`
-/

namespace A120733.P16309492048425873402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A006012 n + A003578 n).toNat

end

end A120733.P16309492048425873402

/-!
# A120734: Area of primitive Pythagorean triangles sorted on hypotenuse (A020882), then on middle side (or long leg A046087).

The programs for A120734, there is no canonical definition to state claims against.
-/

/-! ## A120734.P9815684672609230990

`A120644(n+1)/2`
-/

namespace A120734.P9815684672609230990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120644 (n + 1) : ℚ) / 2

end

end A120734.P9815684672609230990

/-! ## A120734.P10497011479188824878

`A046086(n+1)/2*A046087(n+1)`
-/

namespace A120734.P10497011479188824878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046086 (n + 1) : ℚ) / 2 * (A046087 (n + 1) : ℚ)

end

end A120734.P10497011479188824878

/-! ## A120734.P6776288966479111609

`(A020882(n+1)+A014498(n+1))*A014498(n+1)`
-/

namespace A120734.P6776288966479111609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020882 (n + 1) + A014498 (n + 1)) * A014498 (n + 1)

end

end A120734.P6776288966479111609

/-! ## A120734.P5374719449303760827

`(A120681(n+1)-A014498(n+1))*A014498(n+1)`
-/

namespace A120734.P5374719449303760827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120681 (n + 1) - A014498 (n + 1)) * A014498 (n + 1)

end

end A120734.P5374719449303760827

/-! ## A120734.P4350302347392354769

`(A118961(n+1)+A087459(n+1))*A046087(n+1)/2`
-/

namespace A120734.P4350302347392354769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A118961 (n + 1) + A087459 (n + 1)) * A046087 (n + 1) : ℚ) / 2

end

end A120734.P4350302347392354769

/-! ## A120734.P5773527943063136898

`A014682(A120644(n+1))`
-/

namespace A120734.P5773527943063136898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A120644 (n + 1)).toNat

end

end A120734.P5773527943063136898

/-! ## A120734.P12927290259707280934

`A103391(A120644(n+1)-2)`
-/

namespace A120734.P12927290259707280934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A120644 (n + 1) - 2).toNat

end

end A120734.P12927290259707280934

/-! ## A120734.P15168893523408816696

`A302042(lcm(2, A120644(n+1)))`
-/

namespace A120734.P15168893523408816696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (Int.lcm 2 (A120644 (n + 1)))

end

end A120734.P15168893523408816696

/-!
# A120736: Numbers k such that every prime p that divides d(k) (A000005) also divides k.

The programs for A120736, the canonical program `A120736.P12991699903577371064` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120736 has offset 1).

The definition of A120736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120736.P8792498418557512028

`∪[A006952(n), A048751(n+1)]`
-/

namespace A120736.P8792498418557512028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120736.P8792498418557512028

namespace A120736

/-- `∪[A006952(n), A048751(n+1)]` -/
def P8792498418557512028.Spec : Prop :=
  ∀ n, (P8792498418557512028.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P4673419676012261191

`∪[A026597(n), A048751(n+1)]`
-/

namespace A120736.P4673419676012261191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120736.P4673419676012261191

namespace A120736

/-- `∪[A026597(n), A048751(n+1)]` -/
def P4673419676012261191.Spec : Prop :=
  ∀ n, (P4673419676012261191.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P6121013234630066366

`∪[A026693(n), A048751(n+1)]`
-/

namespace A120736.P6121013234630066366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120736.P6121013234630066366

namespace A120736

/-- `∪[A026693(n), A048751(n+1)]` -/
def P6121013234630066366.Spec : Prop :=
  ∀ n, (P6121013234630066366.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P15973802208098491047

`∪[A047849(n), A048751(n+1)]`
-/

namespace A120736.P15973802208098491047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120736.P15973802208098491047

namespace A120736

/-- `∪[A047849(n), A048751(n+1)]` -/
def P15973802208098491047.Spec : Prop :=
  ∀ n, (P15973802208098491047.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P4133733005350023588

`∪[A048751(n+1), A052543(n)]`
-/

namespace A120736.P4133733005350023588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052543 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120736.P4133733005350023588

namespace A120736

/-- `∪[A048751(n+1), A052543(n)]` -/
def P4133733005350023588.Spec : Prop :=
  ∀ n, (P4133733005350023588.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P11343662310983998423

`∪[A048751(n+1), A052965(n)]`
-/

namespace A120736.P11343662310983998423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052965 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120736.P11343662310983998423

namespace A120736

/-- `∪[A048751(n+1), A052965(n)]` -/
def P11343662310983998423.Spec : Prop :=
  ∀ n, (P11343662310983998423.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P2633138913116381941

`∪[A048751(n+1), A114146(n)]`
-/

namespace A120736.P2633138913116381941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114146 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120736.P2633138913116381941

namespace A120736

/-- `∪[A048751(n+1), A114146(n)]` -/
def P2633138913116381941.Spec : Prop :=
  ∀ n, (P2633138913116381941.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P15673907449292680184

`∪[A033950(n+1), A048751(n+1)]`
-/

namespace A120736.P15673907449292680184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120736.P15673907449292680184

namespace A120736

/-- `∪[A033950(n+1), A048751(n+1)]` -/
def P15673907449292680184.Spec : Prop :=
  ∀ n, (P15673907449292680184.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P14361502147051639187

`∪[A048751(n+1), A055678(n+1)]`
-/

namespace A120736.P14361502147051639187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120736.P14361502147051639187

namespace A120736

/-- `∪[A048751(n+1), A055678(n+1)]` -/
def P14361502147051639187.Spec : Prop :=
  ∀ n, (P14361502147051639187.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P12991699903577371064

`eq[A000005(n+1), A306671(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A120736

/-- `eq[A000005(n+1), A306671(n+1)]+1` -/
def P12991699903577371064.Spec : Prop :=
  ∀ n, (P12991699903577371064.a n : ℤ) = A120736 (n + 1)

theorem P12991699903577371064.correct : P12991699903577371064.Spec := by
  intro n
  simp only [A120736, Nat.add_sub_cancel]

end A120736

/-! ## A120736.P291344248391641739

`eq[1, A137927(n+1)]+1`
-/

namespace A120736.P291344248391641739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120736.P291344248391641739

namespace A120736

/-- `eq[1, A137927(n+1)]+1` -/
def P291344248391641739.Spec : Prop :=
  ∀ n, (P291344248391641739.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P1724015366977690525

`lt[A108630(A137927(n+1)+1), 2]+1`
-/

namespace A120736.P1724015366977690525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108630 (A137927 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A120736.P1724015366977690525

namespace A120736

/-- `lt[A108630(A137927(n+1)+1), 2]+1` -/
def P1724015366977690525.Spec : Prop :=
  ∀ n, (P1724015366977690525.a n : ℤ) = A120736 (n + 1)

end A120736

/-! ## A120736.P6023501088563476719

`record[(n+1)/A074679(A137927(n+1)²)]`
-/

namespace A120736.P6023501088563476719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A074679 (A137927 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120736.P6023501088563476719

namespace A120736

/-- `record[(n+1)/A074679(A137927(n+1)²)]` -/
def P6023501088563476719.Spec : Prop :=
  ∀ n, P6023501088563476719.a n = (A120736 (n + 1) : ℚ)

end A120736

/-! ## A120736.P15939580351770270788

`record[(n+1)/A090368(A137927(n+1)²)]`
-/

namespace A120736.P15939580351770270788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A090368 (A137927 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120736.P15939580351770270788

namespace A120736

/-- `record[(n+1)/A090368(A137927(n+1)²)]` -/
def P15939580351770270788.Spec : Prop :=
  ∀ n, P15939580351770270788.a n = (A120736 (n + 1) : ℚ)

end A120736

/-! ## A120736.P11294673476539436148

`eq[A001221(n+1), A001221(A038040(n+1))]+1`
-/

namespace A120736.P11294673476539436148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A038040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120736.P11294673476539436148

namespace A120736

/-- `eq[A001221(n+1), A001221(A038040(n+1))]+1` -/
def P11294673476539436148.Spec : Prop :=
  ∀ n, (P11294673476539436148.a n : ℤ) = A120736 (n + 1)

end A120736

/-!
# A120737: Numbers k whose number of divisors d(k) is divisible by every prime factor of k.

The programs for A120737, there is no canonical definition to state claims against.
-/

/-! ## A120737.P5811505615635069418

`record[gcd(n+1, A318519(n+1))]`
-/

namespace A120737.P5811505615635069418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A318519 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120737.P5811505615635069418

/-! ## A120737.P10587020164649838040

`eq[1, A137926(n+1)]+1`
-/

namespace A120737.P10587020164649838040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120737.P10587020164649838040

/-! ## A120737.P8051415081419365320

`record[gcd(A131738(n), A163299(n+1))]`
-/

namespace A120737.P8051415081419365320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A163299 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120737.P8051415081419365320

/-! ## A120737.P15517697902344251056

`record[A000027(n+1)/A137926(n+1)]`
-/

namespace A120737.P15517697902344251056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A137926 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120737.P15517697902344251056

/-! ## A120737.P18196326347131027571

`lt[A128830(n+1), 2]+1`
-/

namespace A120737.P18196326347131027571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A120737.P18196326347131027571

/-!
# A120738: a(n) = 4*n - A000120(n).

The programs for A120738, the canonical program `A120738.P9838444930846786751` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120738 has offset 0).

The definition of A120738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n-A000120(n)` (program `A120738.P9838444930846786751`, by `A120738.P9838444930846786751.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120738.P9036162946535510417

`A005187(2*n)`
-/

namespace A120738.P9036162946535510417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * n)

end

end A120738.P9036162946535510417

namespace A120738

/-- `A005187(2*n)` -/
def P9036162946535510417.Spec : Prop :=
  ∀ n, P9036162946535510417.a n = A120738 n

end A120738

/-! ## A120738.P15700981546398601133

`3*n+A011371(n)`
-/

namespace A120738.P15700981546398601133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A011371 n

end

end A120738.P15700981546398601133

namespace A120738

/-- `3*n+A011371(n)` -/
def P15700981546398601133.Spec : Prop :=
  ∀ n, P15700981546398601133.a n = A120738 n

theorem P15700981546398601133.correct : P15700981546398601133.Spec := by
  intro n
  simp only [A120738, Nat.add_sub_cancel, A120738.P15700981546398601133.a, A120738.P9838444930846786751.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120738

/-! ## A120738.P9838444930846786751

`4*n-A000120(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120738

/-- `4*n-A000120(n)` -/
def P9838444930846786751.Spec : Prop :=
  ∀ n, P9838444930846786751.a n = A120738 n

theorem P9838444930846786751.correct : P9838444930846786751.Spec := by
  intro n
  simp only [A120738]

end A120738

/-! ## A120738.P14170143796655875037

`4*n-log2(A001316(n))`
-/

namespace A120738.P14170143796655875037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 * n : ℝ) - Real.logb 2 (A001316 n : ℝ)

end

end A120738.P14170143796655875037

namespace A120738

/-- `4*n-log2(A001316(n))` -/
def P14170143796655875037.Spec : Prop :=
  ∀ n, P14170143796655875037.a n = (A120738 n : ℝ)

end A120738

/-! ## A120738.P400108506682791661

`log2(A061549(n))`
-/

namespace A120738.P400108506682791661
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061549 n : ℝ)

end

end A120738.P400108506682791661

namespace A120738

/-- `log2(A061549(n))` -/
def P400108506682791661.Spec : Prop :=
  ∀ n, P400108506682791661.a n = (A120738 n : ℝ)

end A120738

/-! ## A120738.P14950433867879374640

`a(n-1)+val(n, 2)+3` with `a(0)=0`
-/

namespace A120738.P14950433867879374640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (SequenceMachineLib.valuation n 2 + 3)

end

end A120738.P14950433867879374640

namespace A120738

/-- `a(n-1)+val(n, 2)+3` -/
def P14950433867879374640.Spec : Prop :=
  ∀ n, (P14950433867879374640.a n : ℤ) = A120738 n

end A120738

/-! ## A120738.P6121383235831650714

`∑[a(∑[n]%n)+1]-2` with `a(0)=2`
-/

namespace A120738.P6121383235831650714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A120738.P6121383235831650714

namespace A120738

/-- `∑[a(∑[n]%n)+1]-2` -/
def P6121383235831650714.Spec : Prop :=
  ∀ n, P6121383235831650714.a n = A120738 n

end A120738

/-! ## A120738.P6969758810599169121

`∑[val(record[lcm(2, n)+2], 2)]+n-1`
-/

namespace A120738.P6969758810599169121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1)

end

end A120738.P6969758810599169121

namespace A120738

/-- `∑[val(record[lcm(2, n)+2], 2)]+n-1` -/
def P6969758810599169121.Spec : Prop :=
  ∀ n, P6969758810599169121.a n = A120738 n

end A120738

/-! ## A120738.P8054814942413992531

`∑[val(n+1, 2)+3]-(val(n+1, 2)+3)`
-/

namespace A120738.P8054814942413992531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 + 3 : ℤ)

end

end A120738.P8054814942413992531

namespace A120738

/-- `∑[val(n+1, 2)+3]-(val(n+1, 2)+3)` -/
def P8054814942413992531.Spec : Prop :=
  ∀ n, P8054814942413992531.a n = A120738 n

end A120738

/-! ## A120738.P5722822211566075833

`A004134(n)+n`
-/

namespace A120738.P5722822211566075833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n + (n : ℤ)

end

end A120738.P5722822211566075833

namespace A120738

/-- `A004134(n)+n` -/
def P5722822211566075833.Spec : Prop :=
  ∀ n, P5722822211566075833.a n = A120738 n

theorem P5722822211566075833.correct : P5722822211566075833.Spec := by
  intro n
  simp only [A120738, Nat.add_sub_cancel, A120738.P5722822211566075833.a, A120738.P9838444930846786751.a, A000120, A000120.P2816527436160941581.a, A004134, A004134.P15858984416175637375.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120738

/-! ## A120738.P7026892616707432616

`∑[val(A006863(n), 2)]`
-/

namespace A120738.P7026892616707432616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006863 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120738.P7026892616707432616

namespace A120738

/-- `∑[val(A006863(n), 2)]` -/
def P7026892616707432616.Spec : Prop :=
  ∀ n, (P7026892616707432616.a n : ℤ) = A120738 n

end A120738

/-! ## A120738.P14664113247373344310

`∑[val(A007900(n), 2)]`
-/

namespace A120738.P14664113247373344310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007900 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120738.P14664113247373344310

namespace A120738

/-- `∑[val(A007900(n), 2)]` -/
def P14664113247373344310.Spec : Prop :=
  ∀ n, (P14664113247373344310.a n : ℤ) = A120738 n

end A120738

/-! ## A120738.P10471344851842511442

`A086343(n+1)-2`
-/

namespace A120738.P10471344851842511442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086343 (n + 1) - 2

end

end A120738.P10471344851842511442

namespace A120738

/-- `A086343(n+1)-2` -/
def P10471344851842511442.Spec : Prop :=
  ∀ n, P10471344851842511442.a n = A120738 n

theorem P10471344851842511442.correct : P10471344851842511442.Spec := by
  intro n
  simp only [A120738, Nat.add_sub_cancel, A120738.P10471344851842511442.a, A120738.P9838444930846786751.a, A000120, A000120.P2816527436160941581.a, A086343, A086343.P8284013822573750690.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120738

/-! ## A120738.P8719407301536512620

`eq[2, A082850(n+3)]`
-/

namespace A120738.P8719407301536512620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120738.P8719407301536512620

namespace A120738

/-- `eq[2, A082850(n+3)]` -/
def P8719407301536512620.Spec : Prop :=
  ∀ n, (P8719407301536512620.a n : ℤ) = A120738 n

end A120738

/-! ## A120738.P10398745817929866747

`A272666(n)-2*n`
-/

namespace A120738.P10398745817929866747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272666 n - (2 * n : ℤ)

end

end A120738.P10398745817929866747

namespace A120738

/-- `A272666(n)-2*n` -/
def P10398745817929866747.Spec : Prop :=
  ∀ n, P10398745817929866747.a n = A120738 n

theorem P10398745817929866747.correct : P10398745817929866747.Spec := by
  intro n
  simp only [A120738, Nat.add_sub_cancel, A120738.P10398745817929866747.a, A120738.P9838444930846786751.a, A000120, A000120.P2816527436160941581.a, A272666, A272666.P12795134577239707157.a, A005187, A005187.P3874015513960485494.a, A011371, A011371.P12398255777927387864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120738

/-! ## A120738.P14915245921699555968

`5*n-A092391(n)`
-/

namespace A120738.P14915245921699555968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A092391 n

end

end A120738.P14915245921699555968

namespace A120738

/-- `5*n-A092391(n)` -/
def P14915245921699555968.Spec : Prop :=
  ∀ n, P14915245921699555968.a n = A120738 n

theorem P14915245921699555968.correct : P14915245921699555968.Spec := by
  intro n
  simp only [A120738, Nat.add_sub_cancel, A120738.P14915245921699555968.a, A120738.P9838444930846786751.a, A000120, A000120.P2816527436160941581.a, A092391, A092391.P1831081500129819331.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120738

/-! ## A120738.P15684133471851300279

`A005187(Δ[n²])-1`
-/

namespace A120738.P15684133471851300279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A120738.P15684133471851300279

namespace A120738

/-- `A005187(Δ[n²])-1` -/
def P15684133471851300279.Spec : Prop :=
  ∀ n, P15684133471851300279.a n = A120738 n

end A120738

/-! ## A120738.P1715680586260253457

`A005187(n)+n+n`
-/

namespace A120738.P1715680586260253457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (n : ℤ) + (n : ℤ)

end

end A120738.P1715680586260253457

namespace A120738

/-- `A005187(n)+n+n` -/
def P1715680586260253457.Spec : Prop :=
  ∀ n, P1715680586260253457.a n = A120738 n

theorem P1715680586260253457.correct : P1715680586260253457.Spec := by
  intro n
  simp only [A120738, Nat.add_sub_cancel, A120738.P1715680586260253457.a, A120738.P9838444930846786751.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120738

/-! ## A120738.P6857364745714284588

`record[2*A339451(n)+n]`
-/

namespace A120738.P6857364745714284588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339451 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120738.P6857364745714284588

namespace A120738

/-- `record[2*A339451(n)+n]` -/
def P6857364745714284588.Spec : Prop :=
  ∀ n, P6857364745714284588.a n = A120738 n

end A120738

/-!
# A120739: a(n) = Sum_{k=0..n} floor(C(n,k)/2).

The programs for A120739, the canonical program `A120739.P10842547371353966859` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120739 has offset 0).

The definition of A120739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120739.P10842547371353966859

`(2^n-A001316(n))/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A120739

/-- `(2^n-A001316(n))/2` -/
def P10842547371353966859.Spec : Prop :=
  ∀ n, P10842547371353966859.a n = (A120739 n : ℚ)

end A120739

/-! ## A120739.P17226448610656301781

`A011782(n)-A101691(2*n+1)`
-/

namespace A120739.P17226448610656301781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A101691 (2 * n + 1)

end

end A120739.P17226448610656301781

namespace A120739

/-- `A011782(n)-A101691(2*n+1)` -/
def P17226448610656301781.Spec : Prop :=
  ∀ n, P17226448610656301781.a n = A120739 n

end A120739

/-! ## A120739.P14504692671650314990

`A011782(n)-A000010(A001316(n))`
-/

namespace A120739.P14504692671650314990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A000010 (A001316 n).toNat

end

end A120739.P14504692671650314990

namespace A120739

/-- `A011782(n)-A000010(A001316(n))` -/
def P14504692671650314990.Spec : Prop :=
  ∀ n, P14504692671650314990.a n = A120739 n

end A120739

/-! ## A120739.P11089988120179890185

`A011782(n)-A011782(A000120(n))`
-/

namespace A120739.P11089988120179890185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A011782 (A000120 n).toNat

end

end A120739.P11089988120179890185

namespace A120739

/-- `A011782(n)-A011782(A000120(n))` -/
def P11089988120179890185.Spec : Prop :=
  ∀ n, P11089988120179890185.a n = A120739 n

end A120739

/-! ## A120739.P18024912845720423575

`A056469(n)-A056469(A000120(n))`
-/

namespace A120739.P18024912845720423575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - A056469 (A000120 n).toNat

end

end A120739.P18024912845720423575

namespace A120739

/-- `A056469(n)-A056469(A000120(n))` -/
def P18024912845720423575.Spec : Prop :=
  ∀ n, P18024912845720423575.a n = A120739 n

end A120739

/-! ## A120739.P4277140055618356264

`A094373(n)-A094373(A000120(n))`
-/

namespace A120739.P4277140055618356264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A094373 (A000120 n).toNat

end

end A120739.P4277140055618356264

namespace A120739

/-- `A094373(n)-A094373(A000120(n))` -/
def P4277140055618356264.Spec : Prop :=
  ∀ n, P4277140055618356264.a n = A120739 n

end A120739

/-! ## A120739.P18059257644408663123

`A094373(n)-A101691(A001316(n))`
-/

namespace A120739.P18059257644408663123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A101691 (A001316 n).toNat

end

end A120739.P18059257644408663123

namespace A120739

/-- `A094373(n)-A101691(A001316(n))` -/
def P18059257644408663123.Spec : Prop :=
  ∀ n, P18059257644408663123.a n = A120739 n

end A120739

/-! ## A120739.P9181302488635670209

`A122958(A000120(n))-A122958(n)`
-/

namespace A120739.P9181302488635670209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 (A000120 n).toNat - A122958 n

end

end A120739.P9181302488635670209

namespace A120739

/-- `A122958(A000120(n))-A122958(n)` -/
def P9181302488635670209.Spec : Prop :=
  ∀ n, P9181302488635670209.a n = A120739 n

end A120739

/-! ## A120739.P413950987239530219

`A131577(n)-A131577(A000120(n))`
-/

namespace A120739.P413950987239530219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A131577 (A000120 n).toNat

end

end A120739.P413950987239530219

namespace A120739

/-- `A131577(n)-A131577(A000120(n))` -/
def P413950987239530219.Spec : Prop :=
  ∀ n, P413950987239530219.a n = A120739 n

end A120739

/-! ## A120739.P16443123496131913742

`A131577(n)-A131577(log2(A001316(n)))`
-/

namespace A120739.P16443123496131913742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A131577 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

end

end A120739.P16443123496131913742

namespace A120739

/-- `A131577(n)-A131577(log2(A001316(n)))` -/
def P16443123496131913742.Spec : Prop :=
  ∀ n, P16443123496131913742.a n = A120739 n

end A120739

/-! ## A120739.P13197388619861452193

`A131577(n)-A131577(∑[A088705(n)])`
-/

namespace A120739.P13197388619861452193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A131577 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120739.P13197388619861452193

namespace A120739

/-- `A131577(n)-A131577(∑[A088705(n)])` -/
def P13197388619861452193.Spec : Prop :=
  ∀ n, P13197388619861452193.a n = A120739 n

end A120739

/-! ## A120739.P4103532364496337875

`A011782(n)-A000010(Δ[A006046(n)])`
-/

namespace A120739.P4103532364496337875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A000010 (f1 (n + 1) - f1 n).toNat

end

end A120739.P4103532364496337875

namespace A120739

/-- `A011782(n)-A000010(Δ[A006046(n)])` -/
def P4103532364496337875.Spec : Prop :=
  ∀ n, P4103532364496337875.a n = A120739 n

end A120739

/-! ## A120739.P10868383422964624766

`A011782(n)-A011782(A048881(2*n))`
-/

namespace A120739.P10868383422964624766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A011782 (A048881 (2 * n)).toNat

end

end A120739.P10868383422964624766

namespace A120739

/-- `A011782(n)-A011782(A048881(2*n))` -/
def P10868383422964624766.Spec : Prop :=
  ∀ n, P10868383422964624766.a n = A120739 n

end A120739

/-! ## A120739.P3905205479936533974

`A011782(n)-A000010(A071044(2*n))`
-/

namespace A120739.P3905205479936533974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A000010 (A071044 (2 * n)).toNat

end

end A120739.P3905205479936533974

namespace A120739

/-- `A011782(n)-A000010(A071044(2*n))` -/
def P3905205479936533974.Spec : Prop :=
  ∀ n, P3905205479936533974.a n = A120739 n

end A120739

/-! ## A120739.P12426990614154487944

`A094373(n)-A101691(A048896(2*n))`
-/

namespace A120739.P12426990614154487944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A101691 (A048896 (2 * n)).toNat

end

end A120739.P12426990614154487944

namespace A120739

/-- `A094373(n)-A101691(A048896(2*n))` -/
def P12426990614154487944.Spec : Prop :=
  ∀ n, P12426990614154487944.a n = A120739 n

end A120739

/-! ## A120739.P8571471638507776354

`A001316(n)/2*A000225(A011371(n))`
-/

namespace A120739.P8571471638507776354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / 2 * (A000225 (A011371 n).toNat : ℚ)

end

end A120739.P8571471638507776354

namespace A120739

/-- `A001316(n)/2*A000225(A011371(n))` -/
def P8571471638507776354.Spec : Prop :=
  ∀ n, P8571471638507776354.a n = (A120739 n : ℚ)

end A120739

/-! ## A120739.P1034684739791073991

`A011782(n)-A011782(val(A246037(n), 2))`
-/

namespace A120739.P1034684739791073991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A011782 (SequenceMachineLib.valuation (A246037 n).toNat 2)

end

end A120739.P1034684739791073991

namespace A120739

/-- `A011782(n)-A011782(val(A246037(n), 2))` -/
def P1034684739791073991.Spec : Prop :=
  ∀ n, P1034684739791073991.a n = A120739 n

end A120739

/-! ## A120739.P54951746298730022

`A011782(n)-A011782(n-A011371(n))`
-/

namespace A120739.P54951746298730022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A011782 ((n : ℤ) - A011371 n).toNat

end

end A120739.P54951746298730022

namespace A120739

/-- `A011782(n)-A011782(n-A011371(n))` -/
def P54951746298730022.Spec : Prop :=
  ∀ n, P54951746298730022.a n = A120739 n

end A120739

/-! ## A120739.P2072012743822222341

`A131577(n)-A131577(n-A011371(n))`
-/

namespace A120739.P2072012743822222341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A131577 ((n : ℤ) - A011371 n).toNat

end

end A120739.P2072012743822222341

namespace A120739

/-- `A131577(n)-A131577(n-A011371(n))` -/
def P2072012743822222341.Spec : Prop :=
  ∀ n, P2072012743822222341.a n = A120739 n

end A120739

/-! ## A120739.P4919121421996480864

`A011782(n)-A011782(∑{e}[A071044(n), #])`
-/

namespace A120739.P4919121421996480864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A011782 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A120739.P4919121421996480864

namespace A120739

/-- `A011782(n)-A011782(∑{e}[A071044(n), #])` -/
def P4919121421996480864.Spec : Prop :=
  ∀ n, P4919121421996480864.a n = A120739 n

end A120739

/-!
# A120740: Numbers n such that n = Sum_digits[k*abs(n-k)] for some k>=0.

The programs for A120740, the canonical program `A120740.P148010594773300489` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120740 has offset 1).

The definition of A120740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120740.P148010594773300489

`a(n-2)+9` with `a(0)=0, a(1)=4, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120740

/-- `a(n-2)+9` -/
def P148010594773300489.Spec : Prop :=
  ∀ n, (P148010594773300489.a n : ℤ) = A120740 (n + 1)

theorem P148010594773300489.correct : P148010594773300489.Spec := by
  intro n
  simp only [A120740, Nat.add_sub_cancel]

end A120740

/-! ## A120740.P12808681782985098040

`∑[or(4, a(n-2))]` with `a(0)=0, a(1)=4, a(2)=1`
-/

namespace A120740.P12808681782985098040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1] fun n f1 =>
  Nat.lor 4 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120740.P12808681782985098040

namespace A120740

/-- `∑[or(4, a(n-2))]` -/
def P12808681782985098040.Spec : Prop :=
  ∀ n, (P12808681782985098040.a n : ℤ) = A120740 (n + 1)

end A120740

/-! ## A120740.P2818420940344530814

`∑[9-a(n-1)]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=4`
-/

namespace A120740.P2818420940344530814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1, 4] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120740.P2818420940344530814

namespace A120740

/-- `∑[9-a(n-1)]` -/
def P2818420940344530814.Spec : Prop :=
  ∀ n, P2818420940344530814.a n = A120740 (n + 1)

end A120740

/-! ## A120740.P12087793326761461486

`ogf((4x+x^2+4x^4)/(1-x-x^2+x^3))`
-/

namespace A120740.P12087793326761461486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1, 0, 4] [1, -1, -1, 1] n

end

end A120740.P12087793326761461486

namespace A120740

/-- `ogf((4x+x^2+4x^4)/(1-x-x^2+x^3))` -/
def P12087793326761461486.Spec : Prop :=
  ∀ n, P12087793326761461486.a n = A120740 (n + 1)

end A120740

/-! ## A120740.P9761572313553016276

`floor(9*n/2)-4%comp[∑[n]]`
-/

namespace A120740.P9761572313553016276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * ((n : ℚ) / 2)⌋ - ((4 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℕ) : ℤ)

end

end A120740.P9761572313553016276

namespace A120740

/-- `floor(9*n/2)-4%comp[∑[n]]` -/
def P9761572313553016276.Spec : Prop :=
  ∀ n, P9761572313553016276.a n = A120740 (n + 1)

end A120740

/-! ## A120740.P15969567451445476717

`floor(n/2)-4*floor(atan(n)-n)`
-/

namespace A120740.P15969567451445476717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - 4 * ⌊Real.arctan (n : ℝ) - (n : ℝ)⌋

end

end A120740.P15969567451445476717

namespace A120740

/-- `floor(n/2)-4*floor(atan(n)-n)` -/
def P15969567451445476717.Spec : Prop :=
  ∀ n, P15969567451445476717.a n = A120740 (n + 1)

end A120740

/-! ## A120740.P12347827356324967625

`5-(n%2-a(n-1))` with `a(0)=0, a(1)=4, a(2)=5`
-/

namespace A120740.P12347827356324967625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5] fun n a =>
  5 - (((n % 2 : ℕ) : ℤ) - a (n - 1))

end

end A120740.P12347827356324967625

namespace A120740

/-- `5-(n%2-a(n-1))` -/
def P12347827356324967625.Spec : Prop :=
  ∀ n, P12347827356324967625.a n = A120740 (n + 1)

end A120740

/-! ## A120740.P17406884623859278603

`5-(and(1, n)-a(n-1))` with `a(0)=0, a(1)=4, a(2)=5`
-/

namespace A120740.P17406884623859278603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5] fun n a =>
  5 - ((Nat.land 1 n : ℤ) - a (n - 1))

end

end A120740.P17406884623859278603

namespace A120740

/-- `5-(and(1, n)-a(n-1))` -/
def P17406884623859278603.Spec : Prop :=
  ∀ n, P17406884623859278603.a n = A120740 (n + 1)

end A120740

/-! ## A120740.P3823732454987794471

`∪[A130877(n+1), A167632(n)]`
-/

namespace A120740.P3823732454987794471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120740.P3823732454987794471

namespace A120740

/-- `∪[A130877(n+1), A167632(n)]` -/
def P3823732454987794471.Spec : Prop :=
  ∀ n, (P3823732454987794471.a n : ℤ) = A120740 (n + 1)

end A120740

/-! ## A120740.P14477451686354509172

`∪[A130877(n+1), A299639(n)]`
-/

namespace A120740.P14477451686354509172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299639 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120740.P14477451686354509172

namespace A120740

/-- `∪[A130877(n+1), A299639(n)]` -/
def P14477451686354509172.Spec : Prop :=
  ∀ n, (P14477451686354509172.a n : ℤ) = A120740 (n + 1)

end A120740

/-! ## A120740.P535043048635258735

`A301451(n+1)+A360927(n)-A360927(n+1)`
-/

namespace A120740.P535043048635258735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1) + (A360927 n - A360927 (n + 1))

end

end A120740.P535043048635258735

namespace A120740

/-- `A301451(n+1)+A360927(n)-A360927(n+1)` -/
def P535043048635258735.Spec : Prop :=
  ∀ n, P535043048635258735.a n = A120740 (n + 1)

end A120740

/-! ## A120740.P5495833290713012497

`A384717(A026488(n+1))`
-/

namespace A120740.P5495833290713012497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384717 (A026488 (n + 1)).toNat

end

end A120740.P5495833290713012497

namespace A120740

/-- `A384717(A026488(n+1))` -/
def P5495833290713012497.Spec : Prop :=
  ∀ n, P5495833290713012497.a n = A120740 (n + 1)

end A120740

/-! ## A120740.P5488701491436842975

`∑[and(5, A282453(n+1)-1)]`
-/

namespace A120740.P5488701491436842975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A282453 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120740.P5488701491436842975

namespace A120740

/-- `∑[and(5, A282453(n+1)-1)]` -/
def P5488701491436842975.Spec : Prop :=
  ∀ n, P5488701491436842975.a n = A120740 (n + 1)

end A120740

/-!
# A120741: a(n) = (7^n - 1)/2.

The programs for A120741, the canonical program `A120741.P5110243079029674494` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120741 has offset 0).

The definition of A120741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^n-1)/2` (program `A120741.P14114204709082537147`, by `A120741.P14114204709082537147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120741.P14114204709082537147

`(7^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120741.P14114204709082537147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - 1 : ℚ) / 2

end

end A120741.P14114204709082537147

namespace A120741

/-- `(7^n-1)/2` -/
def P14114204709082537147.Spec : Prop :=
  ∀ n, P14114204709082537147.a n = (A120741 n : ℚ)

theorem P14114204709082537147.correct : P14114204709082537147.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A120741, Nat.add_sub_cancel, A120741.P14114204709082537147.a, A120741.P5110243079029674494.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A120741, Nat.add_sub_cancel, A120741.P14114204709082537147.a, A120741.P5110243079029674494.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A120741

/-! ## A120741.P5110243079029674494

`8*a(n-1)-7*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120741

/-- `8*a(n-1)-7*a(n-2)` -/
def P5110243079029674494.Spec : Prop :=
  ∀ n, P5110243079029674494.a n = A120741 n

theorem P5110243079029674494.correct : P5110243079029674494.Spec := by
  intro n
  simp only [A120741]

end A120741

/-! ## A120741.P982763650190110261

`A034494(n)-1`
-/

namespace A120741.P982763650190110261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n - 1

end

end A120741.P982763650190110261

namespace A120741

/-- `A034494(n)-1` -/
def P982763650190110261.Spec : Prop :=
  ∀ n, P982763650190110261.a n = A120741 n

end A120741

/-! ## A120741.P7825685255308880217

`ogf(3x/(1-8x+7x^2))`
-/

namespace A120741.P7825685255308880217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -8, 7] n

end

end A120741.P7825685255308880217

namespace A120741

/-- `ogf(3x/(1-8x+7x^2))` -/
def P7825685255308880217.Spec : Prop :=
  ∀ n, P7825685255308880217.a n = A120741 n

end A120741

/-! ## A120741.P15826804196677720477

`7*a(n-1)+3` with `a(0)=0`
-/

namespace A120741.P15826804196677720477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  7 * a (n - 1) + 3

end

end A120741.P15826804196677720477

namespace A120741

/-- `7*a(n-1)+3` -/
def P15826804196677720477.Spec : Prop :=
  ∀ n, (P15826804196677720477.a n : ℤ) = A120741 n

end A120741

/-! ## A120741.P12744875443601375522

`lcm(7, a(n-1))+3` with `a(0)=0`
-/

namespace A120741.P12744875443601375522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 3

end

end A120741.P12744875443601375522

namespace A120741

/-- `lcm(7, a(n-1))+3` -/
def P12744875443601375522.Spec : Prop :=
  ∀ n, (P12744875443601375522.a n : ℤ) = A120741 n

end A120741

/-! ## A120741.P9042602055268058084

`∑[7*a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A120741.P9042602055268058084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120741.P9042602055268058084

namespace A120741

/-- `∑[7*a(n-1)]` -/
def P9042602055268058084.Spec : Prop :=
  ∀ n, (P9042602055268058084.a n : ℤ) = A120741 n

end A120741

/-! ## A120741.P439566704328727071

`10-7*(1-a(n-1))` with `a(0)=0`
-/

namespace A120741.P439566704328727071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 - 7 * (1 - a (n - 1))

end

end A120741.P439566704328727071

namespace A120741

/-- `10-7*(1-a(n-1))` -/
def P439566704328727071.Spec : Prop :=
  ∀ n, P439566704328727071.a n = A120741 n

end A120741

/-! ## A120741.P11139379726542089078

`3*A023000(n)`
-/

namespace A120741.P11139379726542089078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023000 n

end

end A120741.P11139379726542089078

namespace A120741

/-- `3*A023000(n)` -/
def P11139379726542089078.Spec : Prop :=
  ∀ n, P11139379726542089078.a n = A120741 n

end A120741

/-! ## A120741.P12366232015563696559

`A073218(∑[n])-1`
-/

namespace A120741.P12366232015563696559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073218 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A120741.P12366232015563696559

namespace A120741

/-- `A073218(∑[n])-1` -/
def P12366232015563696559.Spec : Prop :=
  ∀ n, P12366232015563696559.a n = A120741 n

end A120741

/-! ## A120741.P1076243991186690683

`A034491(n)/2-1`
-/

namespace A120741.P1076243991186690683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034491 n : ℚ) / 2 - 1

end

end A120741.P1076243991186690683

namespace A120741

/-- `A034491(n)/2-1` -/
def P1076243991186690683.Spec : Prop :=
  ∀ n, P1076243991186690683.a n = (A120741 n : ℚ)

theorem P1076243991186690683.correct : P1076243991186690683.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A120741, Nat.add_sub_cancel, A120741.P1076243991186690683.a, A120741.P5110243079029674494.a, A034491, A034491.P8360530145105108237.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A120741, Nat.add_sub_cancel, A120741.P1076243991186690683.a, A120741.P5110243079029674494.a, A034491, A034491.P8360530145105108237.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A120741

/-! ## A120741.P5808254086035545861

`3*(A047852(n)-1)`
-/

namespace A120741.P5808254086035545861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047852 n - 1)

end

end A120741.P5808254086035545861

namespace A120741

/-- `3*(A047852(n)-1)` -/
def P5808254086035545861.Spec : Prop :=
  ∀ n, P5808254086035545861.a n = A120741 n

end A120741

/-! ## A120741.P7240321951482473853

`2*A244975(n)+n`
-/

namespace A120741.P7240321951482473853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244975 n + (n : ℤ)

end

end A120741.P7240321951482473853

namespace A120741

/-- `2*A244975(n)+n` -/
def P7240321951482473853.Spec : Prop :=
  ∀ n, P7240321951482473853.a n = A120741 n

end A120741

/-! ## A120741.P15052866384179376776

`∑[floor(A055272(n)/2)]`
-/

namespace A120741.P15052866384179376776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055272 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120741.P15052866384179376776

namespace A120741

/-- `∑[floor(A055272(n)/2)]` -/
def P15052866384179376776.Spec : Prop :=
  ∀ n, P15052866384179376776.a n = A120741 n

end A120741

/-! ## A120741.P13258816926640326611

`A297180(3*n+1)-1`
-/

namespace A120741.P13258816926640326611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297180 (3 * n + 1) - 1

end

end A120741.P13258816926640326611

namespace A120741

/-- `A297180(3*n+1)-1` -/
def P13258816926640326611.Spec : Prop :=
  ∀ n, P13258816926640326611.a n = A120741 n

end A120741

/-! ## A120741.P16627020670339840049

`3/2*A125725(n+1)`
-/

namespace A120741.P16627020670339840049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A125725 (n + 1) : ℚ)

end

end A120741.P16627020670339840049

namespace A120741

/-- `3/2*A125725(n+1)` -/
def P16627020670339840049.Spec : Prop :=
  ∀ n, P16627020670339840049.a n = (A120741 n : ℚ)

end A120741

/-! ## A120741.P4753507079987429387

`3/4*A125823(n+1)`
-/

namespace A120741.P4753507079987429387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A125823 (n + 1) : ℚ)

end

end A120741.P4753507079987429387

namespace A120741

/-- `3/4*A125823(n+1)` -/
def P4753507079987429387.Spec : Prop :=
  ∀ n, P4753507079987429387.a n = (A120741 n : ℚ)

end A120741

/-! ## A120741.P9150366120585430706

`3/5*A125729(n+1)`
-/

namespace A120741.P9150366120585430706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A125729 (n + 1) : ℚ)

end

end A120741.P9150366120585430706

namespace A120741

/-- `3/5*A125729(n+1)` -/
def P9150366120585430706.Spec : Prop :=
  ∀ n, P9150366120585430706.a n = (A120741 n : ℚ)

end A120741

/-! ## A120741.P12611538377989640114

`A244975(n+1)-(A244975(n)+A000420(n))`
-/

namespace A120741.P12611538377989640114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244975 (n + 1) - (A244975 n + A000420 n)

end

end A120741.P12611538377989640114

namespace A120741

/-- `A244975(n+1)-(A244975(n)+A000420(n))` -/
def P12611538377989640114.Spec : Prop :=
  ∀ n, P12611538377989640114.a n = A120741 n

end A120741

/-! ## A120741.P9751250234192916743

`A147724(∑[n+1])-1`
-/

namespace A120741.P9751250234192916743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147724 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A120741.P9751250234192916743

namespace A120741

/-- `A147724(∑[n+1])-1` -/
def P9751250234192916743.Spec : Prop :=
  ∀ n, P9751250234192916743.a n = A120741 n

end A120741

/-!
# A120743: a(n) = (1/2)*(1 + 3*i)^n + (1/2)*(1 - 3*i)^n where i = sqrt(-1).

The programs for A120743, the canonical program `A120743.P1460365473889363527` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120743 has offset 1).

The definition of A120743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120743.P1460365473889363527

`2*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=-8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120743

/-- `2*a(n-1)-10*a(n-2)` -/
def P1460365473889363527.Spec : Prop :=
  ∀ n, P1460365473889363527.a n = A120743 (n + 1)

theorem P1460365473889363527.correct : P1460365473889363527.Spec := by
  intro n
  simp only [A120743, Nat.add_sub_cancel]

end A120743

/-! ## A120743.P3221637944208958271

`A190958(n+1)-10*A190958(n)`
-/

namespace A120743.P3221637944208958271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190958 (n + 1) - 10 * A190958 n

end

end A120743.P3221637944208958271

namespace A120743

/-- `A190958(n+1)-10*A190958(n)` -/
def P3221637944208958271.Spec : Prop :=
  ∀ n, P3221637944208958271.a n = A120743 (n + 1)

end A120743

/-! ## A120743.P15798102177735295208

`Δ[ogf(1/(1-2x+10x^2))]`
-/

namespace A120743.P15798102177735295208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120743.P15798102177735295208

namespace A120743

/-- `Δ[ogf(1/(1-2x+10x^2))]` -/
def P15798102177735295208.Spec : Prop :=
  ∀ n, P15798102177735295208.a n = A120743 (n + 1)

end A120743

/-! ## A120743.P10322088576220631101

`ogf((1-10x)/(1-2x+10x^2))`
-/

namespace A120743.P10322088576220631101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10] [1, -2, 10] n

end

end A120743.P10322088576220631101

namespace A120743

/-- `ogf((1-10x)/(1-2x+10x^2))` -/
def P10322088576220631101.Spec : Prop :=
  ∀ n, P10322088576220631101.a n = A120743 (n + 1)

end A120743

/-! ## A120743.P849664044075417546

`∏[2-10/a(n-1)]` with `a(0)=1`
-/

namespace A120743.P849664044075417546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 10 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120743.P849664044075417546

namespace A120743

/-- `∏[2-10/a(n-1)]` -/
def P849664044075417546.Spec : Prop :=
  ∀ n, P849664044075417546.a n = (A120743 (n + 1) : ℚ)

end A120743

/-! ## A120743.P18348495374415604930

`Δ[A190958(n+1)]`
-/

namespace A120743.P18348495374415604930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120743.P18348495374415604930

namespace A120743

/-- `Δ[A190958(n+1)]` -/
def P18348495374415604930.Spec : Prop :=
  ∀ n, P18348495374415604930.a n = A120743 (n + 1)

end A120743

/-! ## A120743.P12075493522239703403

`1-∑[9*A190958(n)]`
-/

namespace A120743.P12075493522239703403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A190958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120743.P12075493522239703403

namespace A120743

/-- `1-∑[9*A190958(n)]` -/
def P12075493522239703403.Spec : Prop :=
  ∀ n, P12075493522239703403.a n = A120743 (n + 1)

end A120743

/-! ## A120743.P3501327011045681879

`A190958(n+2)-A190958(n+1)`
-/

namespace A120743.P3501327011045681879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190958 (n + 2) - A190958 (n + 1)

end

end A120743.P3501327011045681879

namespace A120743

/-- `A190958(n+2)-A190958(n+1)` -/
def P3501327011045681879.Spec : Prop :=
  ∀ n, P3501327011045681879.a n = A120743 (n + 1)

end A120743

/-!
# A120744: Least k>0 such that a centered polygonal number nk(k+1)/2+1 is a perfect square; or -1 if no such number exists.

The programs for A120744, there is no canonical definition to state claims against.
-/

/-! ## A120744.P9468649788921575903

`A145856(n+1)-1`
-/

namespace A120744.P9468649788921575903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145856 (n + 1) - 1

end

end A120744.P9468649788921575903

/-! ## A120744.P1896688757751685396

`A153881(n+2)+A145856(n+1)`
-/

namespace A120744.P1896688757751685396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A145856 (n + 1)

end

end A120744.P1896688757751685396

/-! ## A120744.P2362508640275960169

`A260196(n+2)+A145856(n+1)`
-/

namespace A120744.P2362508640275960169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A145856 (n + 1)

end

end A120744.P2362508640275960169

/-! ## A120744.P873894912741675317

`A212496(((-1)^n)²)+A145856(n+1)`
-/

namespace A120744.P873894912741675317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212496 (((-1) ^ n) ^ 2).toNat + A145856 (n + 1)

end

end A120744.P873894912741675317

/-! ## A120744.P17398390154343496189

`A185331(A034856(n+1))+A145856(n+1)`
-/

namespace A120744.P17398390154343496189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (A034856 (n + 1)).toNat + A145856 (n + 1)

end

end A120744.P17398390154343496189

/-! ## A120744.P14959447415322609571

`A172970(A051903(n+1))+A145856(n+1)`
-/

namespace A120744.P14959447415322609571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172970 (A051903 (n + 1)).toNat + A145856 (n + 1)

end

end A120744.P14959447415322609571

/-! ## A120744.P4097337495638851758

`A172970(A116127(n+1))+A145856(n+1)`
-/

namespace A120744.P4097337495638851758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172970 (A116127 (n + 1)).toNat + A145856 (n + 1)

end

end A120744.P4097337495638851758

/-! ## A120744.P4328275495523709886

`A256282(A239700(n+1))+A145856(n+1)`
-/

namespace A120744.P4328275495523709886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 (A239700 (n + 1)).toNat + A145856 (n + 1)

end

end A120744.P4328275495523709886

/-! ## A120744.P14428486563427126042

`A295725(A020639(2*(n+1)))+A145856(n+1)`
-/

namespace A120744.P14428486563427126042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 (A020639 (2 * (n + 1))).toNat + A145856 (n + 1)

end

end A120744.P14428486563427126042

/-! ## A120744.P8095027030326132446

`A023443(A145856(n+1))`
-/

namespace A120744.P8095027030326132446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A145856 (n + 1)).toNat

end

end A120744.P8095027030326132446

/-!
# A120745: a(1)=1 and, for n>1, a(n) is the smallest positive integer such that 1+S^2 is prime, where S=Sum[k, k=a(n-1)+1,...,a(n)].

The programs for A120745, there is no canonical definition to state claims against.
-/

/-! ## A120745.P4092442092601163563

`∑[A120746(floor(acot(n)+n))]`
-/

namespace A120745.P4092442092601163563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120746 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120745.P4092442092601163563

/-! ## A120745.P18011050909420183816

`A120746(n)+a(n-1)` with `a(0)=1`
-/

namespace A120745.P18011050909420183816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120746 n + a (n - 1)

end

end A120745.P18011050909420183816

/-! ## A120745.P15119200730151311914

`∑[A120746(round(sqrt(n²+1)))]`
-/

namespace A120745.P15119200730151311914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120746 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120745.P15119200730151311914

/-! ## A120745.P2502905505343249967

`∑[A120746(n+1)]+1-A120746(n+1)`
-/

namespace A120745.P2502905505343249967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A120746 (n + 1))

end

end A120745.P2502905505343249967

/-! ## A120745.P16433365000972769149

`A020725(∑[A120746(n+1)])-A120746(n+1)`
-/

namespace A120745.P16433365000972769149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A120746 (n + 1)

end

end A120745.P16433365000972769149

/-!
# A120746: First differences of A120745.

The programs for A120746, there is no canonical definition to state claims against.
-/

/-! ## A120746.P4858490838009385438

`Δ[A120745(n+1)]`
-/

namespace A120746.P4858490838009385438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120746.P4858490838009385438

/-! ## A120746.P4681208186248503774

`Δ[record[A120745(A065648(n))]]`
-/

namespace A120746.P4681208186248503774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120745 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120746.P4681208186248503774

/-! ## A120746.P9428758686897033495

`Δ[record[A120745(A126759(n))]]`
-/

namespace A120746.P9428758686897033495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120745 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120746.P9428758686897033495

/-! ## A120746.P3006514015531962527

`Δ[record[A120745(A133310(n))]]`
-/

namespace A120746.P3006514015531962527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120745 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120746.P3006514015531962527

/-! ## A120746.P14753380899100783637

`Δ[record[A120745(A134478(n))]]`
-/

namespace A120746.P14753380899100783637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120745 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120746.P14753380899100783637

/-!
# A120747: Sequence relating to the 11-gon (or hendecagon).

The programs for A120747, the canonical program `A120747.P641611697713279486` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120747 has offset 1).

The definition of A120747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120747.P641611697713279486

`3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=14, a(4)=50`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120747

/-- `3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` -/
def P641611697713279486.Spec : Prop :=
  ∀ n, P641611697713279486.a n = A120747 (n + 1)

theorem P641611697713279486.correct : P641611697713279486.Spec := by
  intro n
  simp only [A120747, Nat.add_sub_cancel]

end A120747

/-! ## A120747.P125913193375085139

`record[A000035(n)*A038201(2*n+1)]`
-/

namespace A120747.P125913193375085139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A038201 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120747.P125913193375085139

namespace A120747

/-- `record[A000035(n)*A038201(2*n+1)]` -/
def P125913193375085139.Spec : Prop :=
  ∀ n, P125913193375085139.a n = A120747 (n + 1)

end A120747

/-! ## A120747.P500744723967435886

`A038201(A130824(n)+1)-A000007(n)`
-/

namespace A120747.P500744723967435886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A130824 n + 1).toNat - A000007 n

end

end A120747.P500744723967435886

namespace A120747

/-- `A038201(A130824(n)+1)-A000007(n)` -/
def P500744723967435886.Spec : Prop :=
  ∀ n, P500744723967435886.a n = A120747 (n + 1)

end A120747

/-! ## A120747.P12773263705109037509

`record[Δ[A038201(n)]]`
-/

namespace A120747.P12773263705109037509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120747.P12773263705109037509

namespace A120747

/-- `record[Δ[A038201(n)]]` -/
def P12773263705109037509.Spec : Prop :=
  ∀ n, P12773263705109037509.a n = A120747 (n + 1)

end A120747

/-! ## A120747.P12742946982797234658

`A069006(n)-A038201(4*n)`
-/

namespace A120747.P12742946982797234658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069006 n - A038201 (4 * n)

end

end A120747.P12742946982797234658

namespace A120747

/-- `A069006(n)-A038201(4*n)` -/
def P12742946982797234658.Spec : Prop :=
  ∀ n, P12742946982797234658.a n = A120747 (n + 1)

end A120747

/-! ## A120747.P10109309374206415750

`record[A038201(n+1)-A038201(n)]`
-/

namespace A120747.P10109309374206415750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (n + 1) - A038201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120747.P10109309374206415750

namespace A120747

/-- `record[A038201(n+1)-A038201(n)]` -/
def P10109309374206415750.Spec : Prop :=
  ∀ n, P10109309374206415750.a n = A120747 (n + 1)

end A120747

/-! ## A120747.P7303509956993970212

`A038201(A131098(n+1))%Δ[A001353(n)]`
-/

namespace A120747.P7303509956993970212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038201 (A131098 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A120747.P7303509956993970212

namespace A120747

/-- `A038201(A131098(n+1))%Δ[A001353(n)]` -/
def P7303509956993970212.Spec : Prop :=
  ∀ n, P7303509956993970212.a n = A120747 (n + 1)

end A120747

/-! ## A120747.P10338088113907118562

`A038201(A131098(n+1))%A016209(n)`
-/

namespace A120747.P10338088113907118562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038201 (A131098 (n + 1)).toNat) (A016209 n)

end

end A120747.P10338088113907118562

namespace A120747

/-- `A038201(A131098(n+1))%A016209(n)` -/
def P10338088113907118562.Spec : Prop :=
  ∀ n, P10338088113907118562.a n = A120747 (n + 1)

end A120747

/-!
# A120748: Expansion of x^2*(1 + 2*x - x^2)/(1 - x - 3*x^2 - x^3 + x^4).

The programs for A120748, the canonical program `A120748.P14292357288797821062` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120748 has offset 1).

The definition of A120748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2-x^3)/(1-x-3x^2-x^3+x^4))` (program `A120748.P14292357288797821062`, by `A120748.P14292357288797821062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120748.P14292357288797821062

`ogf((x+2x^2-x^3)/(1-x-3x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120748

/-- `ogf((x+2x^2-x^3)/(1-x-3x^2-x^3+x^4))` -/
def P14292357288797821062.Spec : Prop :=
  ∀ n, P14292357288797821062.a n = A120748 (n + 1)

theorem P14292357288797821062.correct : P14292357288797821062.Spec := by
  intro n
  simp only [A120748, Nat.add_sub_cancel]

end A120748

/-! ## A120748.P2824056802094187755

`a(n-1)+3*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A120748.P2824056802094187755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5] fun n a =>
  a (n - 1) + 3 * a (n - 2) + a (n - 3) - a (n - 4)

end

end A120748.P2824056802094187755

namespace A120748

/-- `a(n-1)+3*a(n-2)+a(n-3)-a(n-4)` -/
def P2824056802094187755.Spec : Prop :=
  ∀ n, P2824056802094187755.a n = A120748 (n + 1)

end A120748

/-! ## A120748.P10895662042170876364

`Δ[A360263(n)-A152090(n+2)]`
-/

namespace A120748.P10895662042170876364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360263 n - A152090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120748.P10895662042170876364

namespace A120748

/-- `Δ[A360263(n)-A152090(n+2)]` -/
def P10895662042170876364.Spec : Prop :=
  ∀ n, P10895662042170876364.a n = A120748 (n + 1)

end A120748

/-!
# A120749: Numbers k such that {k* sqrt(2)} > 1/2, where { } = fractional part.

The programs for A120749, the canonical program `A120749.P1339787007737446380` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120749 has offset 1).

The definition of A120749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120749.P5541940984451421104

`A120751(Δ[n²])`
-/

namespace A120749.P5541940984451421104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120749.P5541940984451421104

namespace A120749

/-- `A120751(Δ[n²])` -/
def P5541940984451421104.Spec : Prop :=
  ∀ n, P5541940984451421104.a n = A120749 (n + 1)

end A120749

/-! ## A120749.P7912682620504284424

`record[A120751(n+1)]`
-/

namespace A120749.P7912682620504284424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120749.P7912682620504284424

namespace A120749

/-- `record[A120751(n+1)]` -/
def P7912682620504284424.Spec : Prop :=
  ∀ n, P7912682620504284424.a n = A120749 (n + 1)

end A120749

/-! ## A120749.P9092827049698459151

`A120750(2*(n+1))`
-/

namespace A120749.P9092827049698459151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (2 * (n + 1))

end

end A120749.P9092827049698459151

namespace A120749

/-- `A120750(2*(n+1))` -/
def P9092827049698459151.Spec : Prop :=
  ∀ n, P9092827049698459151.a n = A120749 (n + 1)

end A120749

/-! ## A120749.P3287756727780887733

`eq[1, A024539(n+1)]+1`
-/

namespace A120749.P3287756727780887733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120749.P3287756727780887733

namespace A120749

/-- `eq[1, A024539(n+1)]+1` -/
def P3287756727780887733.Spec : Prop :=
  ∀ n, (P3287756727780887733.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P5959844560286488463

`eq[1, A197879(n+1)]+1`
-/

namespace A120749.P5959844560286488463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120749.P5959844560286488463

namespace A120749

/-- `eq[1, A197879(n+1)]+1` -/
def P5959844560286488463.Spec : Prop :=
  ∀ n, (P5959844560286488463.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P14506717921174012997

`lt[A068515(n+1), 1]+1`
-/

namespace A120749.P14506717921174012997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068515 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A120749.P14506717921174012997

namespace A120749

/-- `lt[A068515(n+1), 1]+1` -/
def P14506717921174012997.Spec : Prop :=
  ∀ n, (P14506717921174012997.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P9521695900415406020

`lt[1, A190544(n+1)]+1`
-/

namespace A120749.P9521695900415406020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A120749.P9521695900415406020

namespace A120749

/-- `lt[1, A190544(n+1)]+1` -/
def P9521695900415406020.Spec : Prop :=
  ∀ n, (P9521695900415406020.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P1339787007737446380

`eq[1, gcd(2, A195119(2*n))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120749

/-- `eq[1, gcd(2, A195119(2*n))]` -/
def P1339787007737446380.Spec : Prop :=
  ∀ n, (P1339787007737446380.a n : ℤ) = A120749 (n + 1)

theorem P1339787007737446380.correct : P1339787007737446380.Spec := by
  intro n
  simp only [A120749, Nat.add_sub_cancel]

end A120749

/-! ## A120749.P2046357714308099469

`eq[1, A024544(2*(n+1))]+1`
-/

namespace A120749.P2046357714308099469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120749.P2046357714308099469

namespace A120749

/-- `eq[1, A024544(2*(n+1))]+1` -/
def P2046357714308099469.Spec : Prop :=
  ∀ n, (P2046357714308099469.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P1513726847681981245

`lt[2, A176895(floor(2*n*sqrt(2)))]`
-/

namespace A120749.P1513726847681981245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 ⌊(2 * n : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120749.P1513726847681981245

namespace A120749

/-- `lt[2, A176895(floor(2*n*sqrt(2)))]` -/
def P1513726847681981245.Spec : Prop :=
  ∀ n, (P1513726847681981245.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P10534124707509890395

`lt[2, A020639(floor(2*(n+1)*sqrt(2)))]+1`
-/

namespace A120749.P10534124707509890395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A120749.P10534124707509890395

namespace A120749

/-- `lt[2, A020639(floor(2*(n+1)*sqrt(2)))]+1` -/
def P10534124707509890395.Spec : Prop :=
  ∀ n, (P10534124707509890395.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P14264930087067940156

`lt[1, A040001(A198263(n))]`
-/

namespace A120749.P14264930087067940156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A198263 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120749.P14264930087067940156

namespace A120749

/-- `lt[1, A040001(A198263(n))]` -/
def P14264930087067940156.Spec : Prop :=
  ∀ n, (P14264930087067940156.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P9908147967363861615

`record[A120750(A014681(n+1))]`
-/

namespace A120749.P9908147967363861615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120749.P9908147967363861615

namespace A120749

/-- `record[A120750(A014681(n+1))]` -/
def P9908147967363861615.Spec : Prop :=
  ∀ n, P9908147967363861615.a n = A120749 (n + 1)

end A120749

/-! ## A120749.P17489506277700304670

`lt[2, A020639(A198263(n)+1)]`
-/

namespace A120749.P17489506277700304670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A198263 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120749.P17489506277700304670

namespace A120749

/-- `lt[2, A020639(A198263(n)+1)]` -/
def P17489506277700304670.Spec : Prop :=
  ∀ n, (P17489506277700304670.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P12662984599538694329

`eq[1, A010127(A001951(2*n))]`
-/

namespace A120749.P12662984599538694329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A001951 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120749.P12662984599538694329

namespace A120749

/-- `eq[1, A010127(A001951(2*n))]` -/
def P12662984599538694329.Spec : Prop :=
  ∀ n, (P12662984599538694329.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P5146102699758334614

`eq[1, A004641(A001952(n+1))]+1`
-/

namespace A120749.P5146102699758334614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (A001952 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120749.P5146102699758334614

namespace A120749

/-- `eq[1, A004641(A001952(n+1))]+1` -/
def P5146102699758334614.Spec : Prop :=
  ∀ n, (P5146102699758334614.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P13120692375887815687

`lt[A035363(A022842(n+1)), 1]+1`
-/

namespace A120749.P13120692375887815687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A022842 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A120749.P13120692375887815687

namespace A120749

/-- `lt[A035363(A022842(n+1)), 1]+1` -/
def P13120692375887815687.Spec : Prop :=
  ∀ n, (P13120692375887815687.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P15852492073587570274

`eq[2, A020639(A289037(2*n+1))]`
-/

namespace A120749.P15852492073587570274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A289037 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120749.P15852492073587570274

namespace A120749

/-- `eq[2, A020639(A289037(2*n+1))]` -/
def P15852492073587570274.Spec : Prop :=
  ∀ n, (P15852492073587570274.a n : ℤ) = A120749 (n + 1)

end A120749

/-! ## A120749.P8348765401234963199

`lt[2, A020639(A285078(2*n+1))]`
-/

namespace A120749.P8348765401234963199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A285078 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120749.P8348765401234963199

namespace A120749

/-- `lt[2, A020639(A285078(2*n+1))]` -/
def P8348765401234963199.Spec : Prop :=
  ∀ n, (P8348765401234963199.a n : ℤ) = A120749 (n + 1)

end A120749

/-!
# A120750: (u(1), v(1), u(2), v(2), u(3), v(3),...), where u = A120243 and v = A120749.

The programs for A120750, there is no canonical definition to state claims against.
-/

/-! ## A120750.P18248298893106275406

`A120751(xor(1, n)+1)`
-/

namespace A120750.P18248298893106275406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (Nat.xor 1 n + 1)

end

end A120750.P18248298893106275406

/-! ## A120750.P15533561014270635572

`A120751(2-xor(1, 1-n))`
-/

namespace A120750.P15533561014270635572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A120750.P15533561014270635572

/-! ## A120750.P10807746707924353815

`A120751(2*(n+1)%2+n)`
-/

namespace A120750.P10807746707924353815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (2 * ((n + 1) % 2) + n)

end

end A120750.P10807746707924353815

/-! ## A120750.P2427101319733615029

`A120751(A004442(n)+1)`
-/

namespace A120750.P2427101319733615029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (A004442 n + 1).toNat

end

end A120750.P2427101319733615029

/-! ## A120750.P293383622589982574

`A120751(A014681(n+1))`
-/

namespace A120750.P293383622589982574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (A014681 (n + 1)).toNat

end

end A120750.P293383622589982574

/-! ## A120750.P1218694569288507616

`A120751(A103889(n+1))`
-/

namespace A120750.P1218694569288507616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (A103889 (n + 1)).toNat

end

end A120750.P1218694569288507616

/-!
# A120751: (v(1), u(1), v(2), u(2), v(3), u(3), ...), where u = A120243 and v = A120749.

The programs for A120751, there is no canonical definition to state claims against.
-/

/-! ## A120751.P395394035719436509

`A120750(xor(1, n)+1)`
-/

namespace A120751.P395394035719436509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (Nat.xor 1 n + 1)

end

end A120751.P395394035719436509

/-! ## A120751.P6266070707875929693

`A120750(2-xor(1, 1-n))`
-/

namespace A120751.P6266070707875929693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A120751.P6266070707875929693

/-! ## A120751.P15875380431331342813

`A120750(A004442(n)+1)`
-/

namespace A120751.P15875380431331342813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A004442 n + 1).toNat

end

end A120751.P15875380431331342813

/-! ## A120751.P12283217521148686508

`A120750(A014681(n+1))`
-/

namespace A120751.P12283217521148686508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A014681 (n + 1)).toNat

end

end A120751.P12283217521148686508

/-! ## A120751.P10768426535256837942

`A120750(A103889(n+1))`
-/

namespace A120751.P10768426535256837942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A103889 (n + 1)).toNat

end

end A120751.P10768426535256837942

/-!
# A120752: Numbers k such that {rk} <= c, where r = (1/2)^(1/2), c = 1/2 and { } denotes fractional part.

The programs for A120752, the canonical program `A120752.P11217697853431133443` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120752 has offset 1).

The definition of A120752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120752.P11217697853431133443

`eq[1, ceil(n*sqrt(2))%2]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120752

/-- `eq[1, ceil(n*sqrt(2))%2]` -/
def P11217697853431133443.Spec : Prop :=
  ∀ n, (P11217697853431133443.a n : ℤ) = A120752 (n + 1)

theorem P11217697853431133443.correct : P11217697853431133443.Spec := by
  intro n
  simp only [A120752, Nat.add_sub_cancel]

end A120752

/-! ## A120752.P12506721340408236246

`eq[1, gcd(2, ceil(n*sqrt(2)))]`
-/

namespace A120752.P12506721340408236246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120752.P12506721340408236246

namespace A120752

/-- `eq[1, gcd(2, ceil(n*sqrt(2)))]` -/
def P12506721340408236246.Spec : Prop :=
  ∀ n, (P12506721340408236246.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P15722326403401393176

`lt[2, A020639(floor(n*sqrt(2))+1)]`
-/

namespace A120752.P15722326403401393176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120752.P15722326403401393176

namespace A120752

/-- `lt[2, A020639(floor(n*sqrt(2))+1)]` -/
def P15722326403401393176.Spec : Prop :=
  ∀ n, (P15722326403401393176.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P481732389215720075

`∪[A001952(n+1), A184119(n+1)]`
-/

namespace A120752.P481732389215720075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120752.P481732389215720075

namespace A120752

/-- `∪[A001952(n+1), A184119(n+1)]` -/
def P481732389215720075.Spec : Prop :=
  ∀ n, (P481732389215720075.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P1337521877828031308

`∪[A184119(n+1), A188299(n+1)]`
-/

namespace A120752.P1337521877828031308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120752.P1337521877828031308

namespace A120752

/-- `∪[A184119(n+1), A188299(n+1)]` -/
def P1337521877828031308.Spec : Prop :=
  ∀ n, (P1337521877828031308.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P15725394843955568389

`∪[A184119(n+1), A188373(n+1)]`
-/

namespace A120752.P15725394843955568389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120752.P15725394843955568389

namespace A120752

/-- `∪[A184119(n+1), A188373(n+1)]` -/
def P15725394843955568389.Spec : Prop :=
  ∀ n, (P15725394843955568389.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P13451708109689593123

`∪[A184119(n+1), A188399(n+1)]`
-/

namespace A120752.P13451708109689593123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120752.P13451708109689593123

namespace A120752

/-- `∪[A184119(n+1), A188399(n+1)]` -/
def P13451708109689593123.Spec : Prop :=
  ∀ n, (P13451708109689593123.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P2019091701651328921

`∪[A184119(n+1), A190767(n+1)]`
-/

namespace A120752.P2019091701651328921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120752.P2019091701651328921

namespace A120752

/-- `∪[A184119(n+1), A190767(n+1)]` -/
def P2019091701651328921.Spec : Prop :=
  ∀ n, (P2019091701651328921.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P14247481965640470552

`∪[A003152(2*n+1)+1, A003152(2*(n+1))]`
-/

namespace A120752.P14247481965640470552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120752.P14247481965640470552

namespace A120752

/-- `∪[A003152(2*n+1)+1, A003152(2*(n+1))]` -/
def P14247481965640470552.Spec : Prop :=
  ∀ n, (P14247481965640470552.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P259234777420814637

`∪[A080755(2*n+1), A080755(2*(n+1))-1]`
-/

namespace A120752.P259234777420814637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120752.P259234777420814637

namespace A120752

/-- `∪[A080755(2*n+1), A080755(2*(n+1))-1]` -/
def P259234777420814637.Spec : Prop :=
  ∀ n, (P259234777420814637.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P6914934593208143249

`lt[1, A151930(2*n-floor(n*sqrt(2)))]`
-/

namespace A120752.P6914934593208143249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 ((2 * n : ℤ) - ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120752.P6914934593208143249

namespace A120752

/-- `lt[1, A151930(2*n-floor(n*sqrt(2)))]` -/
def P6914934593208143249.Spec : Prop :=
  ∀ n, (P6914934593208143249.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P6737318076691420480

`record[A026253(n+1)-(n+1)]`
-/

namespace A120752.P6737318076691420480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026253 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120752.P6737318076691420480

namespace A120752

/-- `record[A026253(n+1)-(n+1)]` -/
def P6737318076691420480.Spec : Prop :=
  ∀ n, P6737318076691420480.a n = A120752 (n + 1)

end A120752

/-! ## A120752.P12415494277343542701

`∩[A087057(n+1), A001953(n)]`
-/

namespace A120752.P12415494277343542701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120752.P12415494277343542701

namespace A120752

/-- `∩[A087057(n+1), A001953(n)]` -/
def P12415494277343542701.Spec : Prop :=
  ∀ n, (P12415494277343542701.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P4153361768220933649

`∩[A188323(n+1), A001953(n)]`
-/

namespace A120752.P4153361768220933649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120752.P4153361768220933649

namespace A120752

/-- `∩[A188323(n+1), A001953(n)]` -/
def P4153361768220933649.Spec : Prop :=
  ∀ n, (P4153361768220933649.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P17688459611026144540

`∩[A188375(n+1), A001953(n)]`
-/

namespace A120752.P17688459611026144540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120752.P17688459611026144540

namespace A120752

/-- `∩[A188375(n+1), A001953(n)]` -/
def P17688459611026144540.Spec : Prop :=
  ∀ n, (P17688459611026144540.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P16020817994305399175

`A090892(n+2)`
-/

namespace A120752.P16020817994305399175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090892 (n + 2)

end

end A120752.P16020817994305399175

namespace A120752

/-- `A090892(n+2)` -/
def P16020817994305399175.Spec : Prop :=
  ∀ n, P16020817994305399175.a n = A120752 (n + 1)

end A120752

/-! ## A120752.P17338393176121743562

`record[A090892(abs(2-n))]`
-/

namespace A120752.P17338393176121743562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090892 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120752.P17338393176121743562

namespace A120752

/-- `record[A090892(abs(2-n))]` -/
def P17338393176121743562.Spec : Prop :=
  ∀ n, P17338393176121743562.a n = A120752 (n + 1)

end A120752

/-! ## A120752.P8825611222993536344

`lt[A083035(n+1), 1]+1`
-/

namespace A120752.P8825611222993536344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A120752.P8825611222993536344

namespace A120752

/-- `lt[A083035(n+1), 1]+1` -/
def P8825611222993536344.Spec : Prop :=
  ∀ n, (P8825611222993536344.a n : ℤ) = A120752 (n + 1)

end A120752

/-! ## A120752.P9949889370542525769

`eq[1, A019426(A001951(n))]`
-/

namespace A120752.P9949889370542525769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A001951 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120752.P9949889370542525769

namespace A120752

/-- `eq[1, A019426(A001951(n))]` -/
def P9949889370542525769.Spec : Prop :=
  ∀ n, (P9949889370542525769.a n : ℤ) = A120752 (n + 1)

end A120752

/-!
# A120753: Numbers k such that {rk} > c, where r = (1/2)^(1/2), c = 1/2 and { } denotes fractional part.

The programs for A120753, the canonical program `A120753.P16636594811176197176` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120753 has offset 1).

The definition of A120753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120753.P16636594811176197176

`∪[A001954(n), A083051(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A120753

/-- `∪[A001954(n), A083051(n)]` -/
def P16636594811176197176.Spec : Prop :=
  ∀ n, (P16636594811176197176.a n : ℤ) = A120753 (n + 1)

theorem P16636594811176197176.correct : P16636594811176197176.Spec := by
  intro n
  simp only [A120753, Nat.add_sub_cancel]

end A120753

/-! ## A120753.P15278301597829877708

`∪[A188322(n+1), A001954(n)]`
-/

namespace A120753.P15278301597829877708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P15278301597829877708

namespace A120753

/-- `∪[A188322(n+1), A001954(n)]` -/
def P15278301597829877708.Spec : Prop :=
  ∀ n, (P15278301597829877708.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P1469590242044917979

`∪[A188376(n+1), A001954(n)]`
-/

namespace A120753.P1469590242044917979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P1469590242044917979

namespace A120753

/-- `∪[A188376(n+1), A001954(n)]` -/
def P1469590242044917979.Spec : Prop :=
  ∀ n, (P1469590242044917979.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P9504511254861092148

`∪[A190765(n+1), A001954(n)]`
-/

namespace A120753.P9504511254861092148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P9504511254861092148

namespace A120753

/-- `∪[A190765(n+1), A001954(n)]` -/
def P9504511254861092148.Spec : Prop :=
  ∀ n, (P9504511254861092148.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P16620561867567939514

`∪[A190769(n+1), A001954(n)]`
-/

namespace A120753.P16620561867567939514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P16620561867567939514

namespace A120753

/-- `∪[A190769(n+1), A001954(n)]` -/
def P16620561867567939514.Spec : Prop :=
  ∀ n, (P16620561867567939514.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P10986224370786780651

`∪[A190774(n+1), A001954(n)]`
-/

namespace A120753.P10986224370786780651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P10986224370786780651

namespace A120753

/-- `∪[A190774(n+1), A001954(n)]` -/
def P10986224370786780651.Spec : Prop :=
  ∀ n, (P10986224370786780651.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P9780793054514152960

`record[A026252(n+1)-(n+1)]`
-/

namespace A120753.P9780793054514152960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120753.P9780793054514152960

namespace A120753

/-- `record[A026252(n+1)-(n+1)]` -/
def P9780793054514152960.Spec : Prop :=
  ∀ n, P9780793054514152960.a n = A120753 (n + 1)

end A120753

/-! ## A120753.P6751495577797295336

`∩[A136119(n+1), A001951(n)]`
-/

namespace A120753.P6751495577797295336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P6751495577797295336

namespace A120753

/-- `∩[A136119(n+1), A001951(n)]` -/
def P6751495577797295336.Spec : Prop :=
  ∀ n, (P6751495577797295336.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P11953264871696024355

`∩[A136119(n+1), A188265(n+1)]`
-/

namespace A120753.P11953264871696024355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P11953264871696024355

namespace A120753

/-- `∩[A136119(n+1), A188265(n+1)]` -/
def P11953264871696024355.Spec : Prop :=
  ∀ n, (P11953264871696024355.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P10681264422619057391

`∩[A136119(n+1), A188298(n+1)]`
-/

namespace A120753.P10681264422619057391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P10681264422619057391

namespace A120753

/-- `∩[A136119(n+1), A188298(n+1)]` -/
def P10681264422619057391.Spec : Prop :=
  ∀ n, (P10681264422619057391.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P1586953620046435349

`∩[A136119(n+1), A188372(n+1)]`
-/

namespace A120753.P1586953620046435349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P1586953620046435349

namespace A120753

/-- `∩[A136119(n+1), A188372(n+1)]` -/
def P1586953620046435349.Spec : Prop :=
  ∀ n, (P1586953620046435349.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P13173309654936367515

`eq[1, gcd(2, A195119(n))]`
-/

namespace A120753.P13173309654936367515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A195119 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120753.P13173309654936367515

namespace A120753

/-- `eq[1, gcd(2, A195119(n))]` -/
def P13173309654936367515.Spec : Prop :=
  ∀ n, (P13173309654936367515.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P9891119039458061834

`eq[1, A024544(n+1)]+1`
-/

namespace A120753.P9891119039458061834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120753.P9891119039458061834

namespace A120753

/-- `eq[1, A024544(n+1)]+1` -/
def P9891119039458061834.Spec : Prop :=
  ∀ n, (P9891119039458061834.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P6749168496409013321

`eq[1, A083035(n+1)]+1`
-/

namespace A120753.P6749168496409013321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120753.P6749168496409013321

namespace A120753

/-- `eq[1, A083035(n+1)]+1` -/
def P6749168496409013321.Spec : Prop :=
  ∀ n, (P6749168496409013321.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P16328827679946574415

`eq[1, A010127(A001951(n))]`
-/

namespace A120753.P16328827679946574415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A001951 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120753.P16328827679946574415

namespace A120753

/-- `eq[1, A010127(A001951(n))]` -/
def P16328827679946574415.Spec : Prop :=
  ∀ n, (P16328827679946574415.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P10619257078061572323

`eq[2, A020639(A289037(n+1))]`
-/

namespace A120753.P10619257078061572323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A289037 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120753.P10619257078061572323

namespace A120753

/-- `eq[2, A020639(A289037(n+1))]` -/
def P10619257078061572323.Spec : Prop :=
  ∀ n, (P10619257078061572323.a n : ℤ) = A120753 (n + 1)

end A120753

/-! ## A120753.P5353748506490042924

`filter[A136119(n+1), A188398(#)]`
-/

namespace A120753.P5353748506490042924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188398 (f1 j).toNat = 1) n)

end

end A120753.P5353748506490042924

namespace A120753

/-- `filter[A136119(n+1), A188398(#)]` -/
def P5353748506490042924.Spec : Prop :=
  ∀ n, P5353748506490042924.a n = A120753 (n + 1)

end A120753

/-! ## A120753.P11671595744444364838

`record[A026249(Δ[n²])]`
-/

namespace A120753.P11671595744444364838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120753.P11671595744444364838

namespace A120753

/-- `record[A026249(Δ[n²])]` -/
def P11671595744444364838.Spec : Prop :=
  ∀ n, P11671595744444364838.a n = A120753 (n + 1)

end A120753

/-!
# A120754: Records in continued fraction expansion of 1/log(2) (cf. A016730).

The programs for A120754, there is no canonical definition to state claims against.
-/

/-! ## A120754.P869053573180254797

`record[A016730(n+1)]`
-/

namespace A120754.P869053573180254797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120754.P869053573180254797

/-! ## A120754.P7719942164101999030

`A016730(A120755(n+1))`
-/

namespace A120754.P7719942164101999030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016730 (A120755 (n + 1)).toNat

end

end A120754.P7719942164101999030

/-! ## A120754.P2867844375468164888

`record[A028310(A016730(n))]`
-/

namespace A120754.P2867844375468164888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A016730 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120754.P2867844375468164888

/-! ## A120754.P1763143228666863825

`record[A122201(n)+A003987(n+1)]`
-/

namespace A120754.P1763143228666863825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 n + A003987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120754.P1763143228666863825

/-! ## A120754.P12265871564082194693

`record[A122202(n)+A003987(n+1)]`
-/

namespace A120754.P12265871564082194693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 n + A003987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120754.P12265871564082194693

/-!
# A120755: Where records occur in continued fraction expansion of 1/log(2) (cf. A016730).

The programs for A120755, there is no canonical definition to state claims against.
-/

/-! ## A120755.P6086408192024711709

`A228269(A120754(n+1))`
-/

namespace A120755.P6086408192024711709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228269 (A120754 (n + 1)).toNat

end

end A120755.P6086408192024711709

/-! ## A120755.P10650649790380901402

`A228269(record[A016730(n+1)])`
-/

namespace A120755.P10650649790380901402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228269 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120755.P10650649790380901402

/-! ## A120755.P5008614523737720876

`A228269(record[A122201(n)+A003987(n+1)])`
-/

namespace A120755.P5008614523737720876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 n + A003987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228269 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120755.P5008614523737720876

/-! ## A120755.P12074246496230335231

`A228269(record[A122283(n)+A003987(n+1)])`
-/

namespace A120755.P12074246496230335231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122283 n + A003987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228269 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120755.P12074246496230335231

/-!
# A120757: Expansion of x^2*(2+x)/(1-3*x-4*x^2-x^3).

The programs for A120757, the canonical program `A120757.P13401237953261816560` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120757 has offset 1).

The definition of A120757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x+x^2)/(1-3x-4x^2-x^3))` (program `A120757.P13401237953261816560`, by `A120757.P13401237953261816560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120757.P13401237953261816560

`ogf((2x+x^2)/(1-3x-4x^2-x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120757

/-- `ogf((2x+x^2)/(1-3x-4x^2-x^3))` -/
def P13401237953261816560.Spec : Prop :=
  ∀ n, P13401237953261816560.a n = A120757 (n + 1)

theorem P13401237953261816560.correct : P13401237953261816560.Spec := by
  intro n
  simp only [A120757, Nat.add_sub_cancel]

end A120757

/-! ## A120757.P15784175471641579020

`3*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A120757.P15784175471641579020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 7] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) + a (n - 3)

end

end A120757.P15784175471641579020

namespace A120757

/-- `3*a(n-1)+4*a(n-2)+a(n-3)` -/
def P15784175471641579020.Spec : Prop :=
  ∀ n, (P15784175471641579020.a n : ℤ) = A120757 (n + 1)

end A120757

/-! ## A120757.P93689619519207714

`abs(Δ[A033999(n)*A321715(n)])`
-/

namespace A120757.P93689619519207714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A321715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A120757.P93689619519207714

namespace A120757

/-- `abs(Δ[A033999(n)*A321715(n)])` -/
def P93689619519207714.Spec : Prop :=
  ∀ n, P93689619519207714.a n = A120757 (n + 1)

end A120757

/-! ## A120757.P624999170441920749

`abs(A321715(n+1)+A321715(n))`
-/

namespace A120757.P624999170441920749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321715 (n + 1) + A321715 n|

end

end A120757.P624999170441920749

namespace A120757

/-- `abs(A321715(n+1)+A321715(n))` -/
def P624999170441920749.Spec : Prop :=
  ∀ n, P624999170441920749.a n = A120757 (n + 1)

end A120757

/-! ## A120757.P8244918391426206637

`A033999(2*n+1)^n*Δ[A033999(n)*A321715(n)]`
-/

namespace A120757.P8244918391426206637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A321715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) ^ n * (f1 (n + 1) - f1 n)

end

end A120757.P8244918391426206637

namespace A120757

/-- `A033999(2*n+1)^n*Δ[A033999(n)*A321715(n)]` -/
def P8244918391426206637.Spec : Prop :=
  ∀ n, P8244918391426206637.a n = A120757 (n + 1)

end A120757

/-! ## A120757.P4122323086098575645

`∑[A215100(n)]-A215100(n)`
-/

namespace A120757.P4122323086098575645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A215100 n

end

end A120757.P4122323086098575645

namespace A120757

/-- `∑[A215100(n)]-A215100(n)` -/
def P4122323086098575645.Spec : Prop :=
  ∀ n, P4122323086098575645.a n = A120757 (n + 1)

end A120757

/-! ## A120757.P7611388738481825958

`Δ[A181879(n)]-A321703(n)`
-/

namespace A120757.P7611388738481825958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A321703 n

end

end A120757.P7611388738481825958

namespace A120757

/-- `Δ[A181879(n)]-A321703(n)` -/
def P7611388738481825958.Spec : Prop :=
  ∀ n, P7611388738481825958.a n = A120757 (n + 1)

end A120757

/-! ## A120757.P12426523071048467110

`A321703(n+1)%A122600(n)`
-/

namespace A120757.P12426523071048467110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321703 (n + 1)) (A122600 n)

end

end A120757.P12426523071048467110

namespace A120757

/-- `A321703(n+1)%A122600(n)` -/
def P12426523071048467110.Spec : Prop :=
  ∀ n, P12426523071048467110.a n = A120757 (n + 1)

end A120757

/-! ## A120757.P12831886018841890745

`(A321715(n+1)+A321703(n+1))/2`
-/

namespace A120757.P12831886018841890745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321715 (n + 1) + A321703 (n + 1) : ℚ) / 2

end

end A120757.P12831886018841890745

namespace A120757

/-- `(A321715(n+1)+A321703(n+1))/2` -/
def P12831886018841890745.Spec : Prop :=
  ∀ n, P12831886018841890745.a n = (A120757 (n + 1) : ℚ)

end A120757

/-! ## A120757.P4465957786426422956

`A181879(n+1)-(A321703(n)+A181879(n))`
-/

namespace A120757.P4465957786426422956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 (n + 1) - (A321703 n + A181879 n)

end

end A120757.P4465957786426422956

namespace A120757

/-- `A181879(n+1)-(A321703(n)+A181879(n))` -/
def P4465957786426422956.Spec : Prop :=
  ∀ n, P4465957786426422956.a n = A120757 (n + 1)

end A120757

/-! ## A120757.P14269946109980500717

`Δ[A215076(n)/7]`
-/

namespace A120757.P14269946109980500717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215076 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120757.P14269946109980500717

namespace A120757

/-- `Δ[A215076(n)/7]` -/
def P14269946109980500717.Spec : Prop :=
  ∀ n, P14269946109980500717.a n = (A120757 (n + 1) : ℚ)

end A120757

/-!
# A120758: The (1,3)-entry in the matrix M^n, where M is the 3 X 3 matrix [0,2,1; 2,1,2; 1,2,2] (n>=1).

The programs for A120758, the canonical program `A120758.P12705976088739990704` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120758 has offset 1).

The definition of A120758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120758.P12705976088739990704

`3*a(n-1)+7*a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=25`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120758

/-- `3*a(n-1)+7*a(n-2)-a(n-3)` -/
def P12705976088739990704.Spec : Prop :=
  ∀ n, P12705976088739990704.a n = A120758 (n + 1)

theorem P12705976088739990704.correct : P12705976088739990704.Spec := by
  intro n
  simp only [A120758, Nat.add_sub_cancel]

end A120758

/-! ## A120758.P9860239274312388860

`ogf((1+3x)/(1-3x-7x^2+x^3))`
-/

namespace A120758.P9860239274312388860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, -7, 1] n

end

end A120758.P9860239274312388860

namespace A120758

/-- `ogf((1+3x)/(1-3x-7x^2+x^3))` -/
def P9860239274312388860.Spec : Prop :=
  ∀ n, P9860239274312388860.a n = A120758 (n + 1)

end A120758

/-!
# A120759: Eigensequence for subpartitions of a partition.

The programs for A120759, there is no canonical definition to state claims against.
-/

/-! ## A120759.P15396630318914695741

`A274652(a(n-1))-1` with `a(0)=1`
-/

namespace A120759.P15396630318914695741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274652 (a (n - 1)).toNat - 1

end

end A120759.P15396630318914695741

/-!
# A120760: a(1) = a(2) = 1. a(n) = a(n-1) + (largest nonprime {1 or composite} among the first n-2 terms of the sequence).

The programs for A120760, there is no canonical definition to state claims against.
-/

/-! ## A120760.P6443987974718364528

`A020951(2*A092539(n))`
-/

namespace A120760.P6443987974718364528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (2 * A092539 n).toNat

end

end A120760.P6443987974718364528

/-! ## A120760.P13895201896120993464

`or(A000035(n), A000196(A026521(n+1)))`
-/

namespace A120760.P13895201896120993464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A000196 (A026521 (n + 1)).toNat)

end

end A120760.P13895201896120993464

/-! ## A120760.P15572643804152920197

`A137735(A026521(n+1))+A070109(n+1)`
-/

namespace A120760.P15572643804152920197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A026521 (n + 1)).toNat + A070109 (n + 1)

end

end A120760.P15572643804152920197

/-! ## A120760.P13515098473776364454

`or(A000196(A026521(n+1)), A346700(n+1))`
-/

namespace A120760.P13515098473776364454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A026521 (n + 1)).toNat) (A346700 (n + 1))

end

end A120760.P13515098473776364454

/-! ## A120760.P7395353054334565130

`or(A000196(A026521(n+1)), A133872(2*(n+1)))`
-/

namespace A120760.P7395353054334565130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A026521 (n + 1)).toNat) (A133872 (2 * (n + 1)))

end

end A120760.P7395353054334565130

/-!
# A120761: a(1) = a(2) = 1. a(n) = a(n-1) + (largest noncomposite {1 or prime} among the first n-2 terms of the sequence).

The programs for A120761, there is no canonical definition to state claims against.
-/

/-! ## A120761.P2628528771885386648

`A336917(n+1)+A003056(A026521(n+1))`
-/

namespace A120761.P2628528771885386648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336917 (n + 1) + A003056 (A026521 (n + 1)).toNat

end

end A120761.P2628528771885386648

/-! ## A120761.P12091077313971299788

`A000196(A117719(n))-A316401(n+1)`
-/

namespace A120761.P12091077313971299788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A117719 n).toNat - A316401 (n + 1)

end

end A120761.P12091077313971299788

/-! ## A120761.P10929396948982524417

`A204164(A026565(n))`
-/

namespace A120761.P10929396948982524417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A026565 n).toNat

end

end A120761.P10929396948982524417

/-! ## A120761.P11754379407920870086

`A232753(A212654(n+1))`
-/

namespace A120761.P11754379407920870086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (A212654 (n + 1)).toNat

end

end A120761.P11754379407920870086

/-! ## A120761.P6878659470811897298

`A066739(n)-A280684(A038041(n+2))%2`
-/

namespace A120761.P6878659470811897298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066739 n - Int.tmod (A280684 (A038041 (n + 2)).toNat) 2

end

end A120761.P6878659470811897298

/-!
# A120763: a(1) = 2. a(n) = a(n-1)*(largest prime occurring earlier in the sequence) - 1.

The programs for A120763, there is no canonical definition to state claims against.
-/

/-! ## A120763.P4113171895576904325

`A279611(2^(n+1))+n`
-/

namespace A120763.P4113171895576904325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279611 (2 ^ (n + 1)) + (n : ℤ)

end

end A120763.P4113171895576904325

/-!
# A120764: Number of terms of A007632 less than or equal to 10^n.

The programs for A120764, there is no canonical definition to state claims against.
-/

/-! ## A120764.P17165530189686572167

`A127916(n)+a(n-1)` with `a(0)=2, a(1)=6`
-/

namespace A120764.P17165530189686572167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  A127916 n + a (n - 1)

end

end A120764.P17165530189686572167

/-!
# A120765: Expansion of e.g.f. -exp(-x)*log(1-2*x)/2.

The programs for A120765, the canonical program `A120765.P388832571415371638` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120765 has offset 0).

The definition of A120765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120765.P388832571415371638

`(2*n-4)*(a(n-1)+a(n-3))+(4*n-7)*a(n-2)` with `a(0)=0, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120765

/-- `(2*n-4)*(a(n-1)+a(n-3))+(4*n-7)*a(n-2)` -/
def P388832571415371638.Spec : Prop :=
  ∀ n, P388832571415371638.a n = A120765 n

theorem P388832571415371638.correct : P388832571415371638.Spec := by
  intro n
  simp only [A120765]

end A120765

/-! ## A120765.P18370804599129778450

`xor(1, A061714(n))`
-/

namespace A120765.P18370804599129778450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A061714 n)

end

end A120765.P18370804599129778450

namespace A120765

/-- `xor(1, A061714(n))` -/
def P18370804599129778450.Spec : Prop :=
  ∀ n, P18370804599129778450.a n = A120765 n

end A120765

/-! ## A120765.P1445203550074439783

`A061714(n)-A033999(n)`
-/

namespace A120765.P1445203550074439783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061714 n - A033999 n

end

end A120765.P1445203550074439783

namespace A120765

/-- `A061714(n)-A033999(n)` -/
def P1445203550074439783.Spec : Prop :=
  ∀ n, P1445203550074439783.a n = A120765 n

theorem P1445203550074439783.correct : P1445203550074439783.Spec := by
  intro n
  simp only [A120765, Nat.add_sub_cancel, A120765.P1445203550074439783.a, A120765.P388832571415371638.a, A033999, A033999.P17703899380244199787.a, A061714, A061714.P16193808572727617002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120765

/-! ## A120765.P15562294868752956580

`A061714(n)-A087960(n²)`
-/

namespace A120765.P15562294868752956580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061714 n - A087960 (n ^ 2)

end

end A120765.P15562294868752956580

namespace A120765

/-- `A061714(n)-A087960(n²)` -/
def P15562294868752956580.Spec : Prop :=
  ∀ n, P15562294868752956580.a n = A120765 n

end A120765

/-! ## A120765.P1689628986729955622

`A061714(n)-ratio[A057077(n)]`
-/

namespace A120765.P1689628986729955622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061714 n : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A120765.P1689628986729955622

namespace A120765

/-- `A061714(n)-ratio[A057077(n)]` -/
def P1689628986729955622.Spec : Prop :=
  ∀ n, P1689628986729955622.a n = (A120765 n : ℚ)

end A120765

/-! ## A120765.P2570879328333304970

`A061714(n)-A057077(2*n)`
-/

namespace A120765.P2570879328333304970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061714 n - A057077 (2 * n)

end

end A120765.P2570879328333304970

namespace A120765

/-- `A061714(n)-A057077(2*n)` -/
def P2570879328333304970.Spec : Prop :=
  ∀ n, P2570879328333304970.a n = A120765 n

end A120765

/-! ## A120765.P15514494043574069472

`A087960((n+1)²)+A061714(n)`
-/

namespace A120765.P15514494043574069472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 ((n + 1) ^ 2) + A061714 n

end

end A120765.P15514494043574069472

namespace A120765

/-- `A087960((n+1)²)+A061714(n)` -/
def P15514494043574069472.Spec : Prop :=
  ∀ n, P15514494043574069472.a n = A120765 n

end A120765

/-!
# A120766: Number of ways to seat n people around a circular table such that person i is next to person i-1 or i+1 or both.

The programs for A120766, there is no canonical definition to state claims against.
-/

/-! ## A120766.P2314209291101465496

`A279741(n+1)+A052126(A000984(n))`
-/

namespace A120766.P2314209291101465496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (n + 1) + A052126 (A000984 n).toNat

end

end A120766.P2314209291101465496

/-! ## A120766.P11720277225509175756

`A280398(n+1)+A052126(A000984(n))`
-/

namespace A120766.P11720277225509175756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (n + 1) + A052126 (A000984 n).toNat

end

end A120766.P11720277225509175756

/-! ## A120766.P17573290745316371222

`(A338669(A000984(n))+A280398(n+1))*A121241(n)²`
-/

namespace A120766.P17573290745316371222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338669 (A000984 n).toNat + A280398 (n + 1)) * A121241 n ^ 2

end

end A120766.P17573290745316371222

/-! ## A120766.P2557303079301006921

`(A338669(A000984(n))+A280398(n+1))*A000034(2*n)`
-/

namespace A120766.P2557303079301006921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338669 (A000984 n).toNat + A280398 (n + 1)) * A000034 (2 * n)

end

end A120766.P2557303079301006921

/-!
# A120767: a(n) = 2^(n^2) + 3^n.

The programs for A120767, the canonical program `A120767.P15232992912736497848` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120767 has offset 0).

The definition of A120767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n²+3^n` (program `A120767.P15232992912736497848`, by `A120767.P15232992912736497848.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120767.P15232992912736497848

`2^n²+3^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120767

/-- `2^n²+3^n` -/
def P15232992912736497848.Spec : Prop :=
  ∀ n, (P15232992912736497848.a n : ℤ) = A120767 n

theorem P15232992912736497848.correct : P15232992912736497848.Spec := by
  intro n
  simp only [A120767]

end A120767

/-! ## A120767.P10703916924280784032

`or((2^n)^n+3^n, A178798(n))`
-/

namespace A120767.P10703916924280784032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ n) ^ n + 3 ^ n : ℤ) (A178798 n)

end

end A120767.P10703916924280784032

namespace A120767

/-- `or((2^n)^n+3^n, A178798(n))` -/
def P10703916924280784032.Spec : Prop :=
  ∀ n, P10703916924280784032.a n = A120767 n

end A120767

/-! ## A120767.P6455246848653840860

`abs(A120773(n)+A008776(n))`
-/

namespace A120767.P6455246848653840860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120773 n + A008776 n|

end

end A120767.P6455246848653840860

namespace A120767

/-- `abs(A120773(n)+A008776(n))` -/
def P6455246848653840860.Spec : Prop :=
  ∀ n, P6455246848653840860.a n = A120767 n

end A120767

/-! ## A120767.P13647715658429500748

`floor(A002416(n)+ratio[A047656(n)])`
-/

namespace A120767.P13647715658429500748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002416 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A120767.P13647715658429500748

namespace A120767

/-- `floor(A002416(n)+ratio[A047656(n)])` -/
def P13647715658429500748.Spec : Prop :=
  ∀ n, P13647715658429500748.a n = A120767 n

end A120767

/-! ## A120767.P17276163875663173674

`record[A140303(n)+A002416(A025581(n))]`
-/

namespace A120767.P17276163875663173674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n + A002416 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120767.P17276163875663173674

namespace A120767

/-- `record[A140303(n)+A002416(A025581(n))]` -/
def P17276163875663173674.Spec : Prop :=
  ∀ n, P17276163875663173674.a n = A120767 n

end A120767

/-!
# A120768: Partial sums of A120405.

The programs for A120768, there is no canonical definition to state claims against.
-/

/-! ## A120768.P5497796214752808512

`∑[A120405(n+1)]`
-/

namespace A120768.P5497796214752808512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120768.P5497796214752808512

/-! ## A120768.P6144902434116318870

`A120405(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A120768.P6144902434116318870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120405 (n + 1) + a (A023443 n).toNat

end

end A120768.P6144902434116318870

/-! ## A120768.P623222476156480740

`a(n-1)+A120405(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A120768.P623222476156480740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A120405 (n + 1) + A000038 n)

end

end A120768.P623222476156480740

/-! ## A120768.P2038068541950145206

`A120405(n+1)+a(n-1)*A054977(n)` with `a(0)=1`
-/

namespace A120768.P2038068541950145206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120405 (n + 1) + a (n - 1) * A054977 n

end

end A120768.P2038068541950145206

/-! ## A120768.P9401160113881135477

`a(n-1)+A120405(n+1)%A000211(n)` with `a(0)=1`
-/

namespace A120768.P9401160113881135477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A120405 (n + 1)) (A000211 n)

end

end A120768.P9401160113881135477

/-!
# A120769: Starting from a(0)=1, recursively a(2^k+r) = (2^k-r)*a(2^k-1-r), 0<=r < 2^(k+1).

The programs for A120769, the canonical program `A120769.P14757464538390453997` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120769 has offset 0).

The definition of A120769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120769.P14757464538390453997

`a(A035327(n))*A080079(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120769

/-- `a(A035327(n))*A080079(n)` -/
def P14757464538390453997.Spec : Prop :=
  ∀ n, P14757464538390453997.a n = A120769 n

theorem P14757464538390453997.correct : P14757464538390453997.Spec := by
  intro n
  simp only [A120769]

end A120769

/-! ## A120769.P6356215570124723531

`(A062383(n)-n)*a(A062383(n)-(n+1))` with `a(0)=1`
-/

namespace A120769.P6356215570124723531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A062383 n - (n : ℤ)) * a (A062383 n - (n + 1 : ℤ)).toNat

end

end A120769.P6356215570124723531

namespace A120769

/-- `(A062383(n)-n)*a(A062383(n)-(n+1))` -/
def P6356215570124723531.Spec : Prop :=
  ∀ n, P6356215570124723531.a n = A120769 n

end A120769

/-! ## A120769.P14223313431111967382

`abs(Δ[A120770(abs(1-n))])`
-/

namespace A120769.P14223313431111967382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120770 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A120769.P14223313431111967382

namespace A120769

/-- `abs(Δ[A120770(abs(1-n))])` -/
def P14223313431111967382.Spec : Prop :=
  ∀ n, P14223313431111967382.a n = A120769 n

end A120769

/-!
# A120770: Partial sums of A120769.

The programs for A120770, there is no canonical definition to state claims against.
-/

/-! ## A120770.P17530968794397057482

`∑[A120769(n)]`
-/

namespace A120770.P17530968794397057482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120770.P17530968794397057482

/-! ## A120770.P16806309579475761246

`A120769(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A120770.P16806309579475761246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120769 n + a (A023443 n).toNat

end

end A120770.P16806309579475761246

/-! ## A120770.P5401528571051920609

`∑[a(A035327(n))*A080079(n)]` with `a(0)=1`
-/

namespace A120770.P5401528571051920609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A035327 n).toNat * A080079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120770.P5401528571051920609

/-! ## A120770.P13777924765958676047

`A000027(A120769(n)+a(n-1))` with `a(0)=1`
-/

namespace A120770.P13777924765958676047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A120769 n + a (n - 1)).toNat

end

end A120770.P13777924765958676047

/-! ## A120770.P13550960066672240384

`A120769(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A120770.P13550960066672240384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120769 (A028310 n).toNat + a (n - 1)

end

end A120770.P13550960066672240384

/-! ## A120770.P8765556625842615693

`A120769(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A120770.P8765556625842615693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120769 n + a (A004273 n - (n : ℤ)).toNat

end

end A120770.P8765556625842615693

/-! ## A120770.P17974102547629213577

`A000035(2*n)+A120769(n)+a(n-1)` with `a(0)=1`
-/

namespace A120770.P17974102547629213577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000035 (2 * n) + (A120769 n + a (n - 1))

end

end A120770.P17974102547629213577

/-! ## A120770.P4365785213416499102

`∑[(A062383(n)-n)*a(A062383(n)-(n+1))]` with `a(0)=1`
-/

namespace A120770.P4365785213416499102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (A062383 n - (n : ℤ)) * f1 (A062383 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120770.P4365785213416499102

/-!
# A120771: Expansion of ( 1-x^3+x^4+x^5-x^8 ) / ( 1-2*x^3-x^6+x^9 ).

The programs for A120771, the canonical program `A120771.P16998238347490678419` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120771 has offset 0).

The definition of A120771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3+x^4+x^5-x^8)/(1-2x^3-x^6+x^9))` (program `A120771.P16998238347490678419`, by `A120771.P16998238347490678419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120771.P16998238347490678419

`ogf((1-x^3+x^4+x^5-x^8)/(1-2x^3-x^6+x^9))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120771

/-- `ogf((1-x^3+x^4+x^5-x^8)/(1-2x^3-x^6+x^9))` -/
def P16998238347490678419.Spec : Prop :=
  ∀ n, P16998238347490678419.a n = A120771 n

theorem P16998238347490678419.correct : P16998238347490678419.Spec := by
  intro n
  simp only [A120771]

end A120771

/-! ## A120771.P3899375979631753214

`A187068(∑[gcd(3, n)!]-1-Δ[n²])`
-/

namespace A120771.P3899375979631753214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

end

end A120771.P3899375979631753214

namespace A120771

/-- `A187068(∑[gcd(3, n)!]-1-Δ[n²])` -/
def P3899375979631753214.Spec : Prop :=
  ∀ n, P3899375979631753214.a n = A120771 n

end A120771

/-! ## A120771.P6848385315358448470

`A187068(A047574(n+1)-(2*n+1))`
-/

namespace A120771.P6848385315358448470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (A047574 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A120771.P6848385315358448470

namespace A120771

/-- `A187068(A047574(n+1)-(2*n+1))` -/
def P6848385315358448470.Spec : Prop :=
  ∀ n, P6848385315358448470.a n = A120771 n

end A120771

/-! ## A120771.P5381150296876055866

`A187070(A063942(n)+A008620(n))`
-/

namespace A120771.P5381150296876055866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (A063942 n + A008620 n).toNat

end

end A120771.P5381150296876055866

namespace A120771

/-- `A187070(A063942(n)+A008620(n))` -/
def P5381150296876055866.Spec : Prop :=
  ∀ n, P5381150296876055866.a n = A120771 n

end A120771

/-! ## A120771.P16696379729867552456

`A187070(A113655(n+1)-A008620(n))`
-/

namespace A120771.P16696379729867552456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (A113655 (n + 1) - A008620 n).toNat

end

end A120771.P16696379729867552456

namespace A120771

/-- `A187070(A113655(n+1)-A008620(n))` -/
def P16696379729867552456.Spec : Prop :=
  ∀ n, P16696379729867552456.a n = A120771 n

end A120771

/-! ## A120771.P12743078654688219463

`A187070(A004396(n+4))-A187070(A004396(n+2))`
-/

namespace A120771.P12743078654688219463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (A004396 (n + 4)).toNat - A187070 (A004396 (n + 2)).toNat

end

end A120771.P12743078654688219463

namespace A120771

/-- `A187070(A004396(n+4))-A187070(A004396(n+2))` -/
def P12743078654688219463.Spec : Prop :=
  ∀ n, P12743078654688219463.a n = A120771 n

end A120771

/-!
# A120772: Triangular array, permutation of A119973. a(r,r) = A084109(r); a(r+1,c) = 2*a(r,c).

The programs for A120772, there is no canonical definition to state claims against.
-/

/-! ## A120772.P14070373340697769776

`A084109(A002260(n+1))*A130321(n)`
-/

namespace A120772.P14070373340697769776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084109 (A002260 (n + 1)).toNat * A130321 n

end

end A120772.P14070373340697769776

/-! ## A120772.P5535349118519673357

`A084109(A002260(n+1))/A059268(n)*A137688(n)`
-/

namespace A120772.P5535349118519673357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084109 (A002260 (n + 1)).toNat : ℚ) / (A059268 n : ℚ) * (A137688 n : ℚ)

end

end A120772.P5535349118519673357

/-!
# A120773: a(n) = 2^(n^2) - 3^n.

The programs for A120773, the canonical program `A120773.P4192897183846393359` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120773 has offset 0).

The definition of A120773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n²-3^n` (program `A120773.P4192897183846393359`, by `A120773.P4192897183846393359.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120773.P4192897183846393359

`2^n²-3^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120773

/-- `2^n²-3^n` -/
def P4192897183846393359.Spec : Prop :=
  ∀ n, P4192897183846393359.a n = A120773 n

theorem P4192897183846393359.correct : P4192897183846393359.Spec := by
  intro n
  simp only [A120773]

end A120773

/-! ## A120773.P17326008085469421286

`floor(sqrt(A000302(n))^n-3^n)`
-/

namespace A120773.P17326008085469421286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000302 n : ℝ) ^ n - (3 ^ n : ℝ)⌋

end

end A120773.P17326008085469421286

namespace A120773

/-- `floor(sqrt(A000302(n))^n-3^n)` -/
def P17326008085469421286.Spec : Prop :=
  ∀ n, P17326008085469421286.a n = A120773 n

end A120773

/-! ## A120773.P18378718300749905770

`(A000079(n)^n-3^n)*ceil(acot(n))`
-/

namespace A120773.P18378718300749905770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ n - (3 ^ n : ℤ)) * ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A120773.P18378718300749905770

namespace A120773

/-- `(A000079(n)^n-3^n)*ceil(acot(n))` -/
def P18378718300749905770.Spec : Prop :=
  ∀ n, P18378718300749905770.a n = A120773 n

end A120773

/-! ## A120773.P490391384024196038

`((2^n)^n-3^n)*A007318(C(n, n+1))`
-/

namespace A120773.P490391384024196038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 ^ n) ^ n : ℤ) - (3 ^ n : ℤ)) * A007318 (Nat.choose n (n + 1))

end

end A120773.P490391384024196038

namespace A120773

/-- `((2^n)^n-3^n)*A007318(C(n, n+1))` -/
def P490391384024196038.Spec : Prop :=
  ∀ n, P490391384024196038.a n = A120773 n

end A120773

/-! ## A120773.P4955792749228086870

`floor(A002416(n)-ratio[A047656(n)])`
-/

namespace A120773.P4955792749228086870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002416 n : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A120773.P4955792749228086870

namespace A120773

/-- `floor(A002416(n)-ratio[A047656(n)])` -/
def P4955792749228086870.Spec : Prop :=
  ∀ n, P4955792749228086870.a n = A120773 n

end A120773

/-!
# A120774: Number of ordered set partitions of [n] where equal-sized blocks are ordered with increasing least elements.

The programs for A120774, there is no canonical definition to state claims against.
-/

/-! ## A120774.P17202350116859192045

`A327244(∑[n]+n)`
-/

namespace A120774.P17202350116859192045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327244 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A120774.P17202350116859192045

/-! ## A120774.P10292219622699800809

`gcd(A000038(n), A327244(A000096(n)))`
-/

namespace A120774.P10292219622699800809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A327244 (A000096 n).toNat)

end

end A120774.P10292219622699800809

/-! ## A120774.P15594573037354018028

`or(A000007(n), A327244(A000096(n)))`
-/

namespace A120774.P15594573037354018028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A327244 (A000096 n).toNat)

end

end A120774.P15594573037354018028

/-! ## A120774.P7771628933549575520

`A327244(A000096(n))+A000038(n+1)`
-/

namespace A120774.P7771628933549575520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327244 (A000096 n).toNat + A000038 (n + 1)

end

end A120774.P7771628933549575520

/-! ## A120774.P12599645569690126978

`A019425(2*(n+1))*A327244(A000096(n))`
-/

namespace A120774.P12599645569690126978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * (n + 1)) * A327244 (A000096 n).toNat

end

end A120774.P12599645569690126978

/-! ## A120774.P10802800507400601270

`A014963(6*(n+1))*A327244(A000096(n))`
-/

namespace A120774.P10802800507400601270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A327244 (A000096 n).toNat

end

end A120774.P10802800507400601270

/-! ## A120774.P3043180329882504093

`A057427(6*(n+1))*A327244(A000096(n))`
-/

namespace A120774.P3043180329882504093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (6 * (n + 1)) * A327244 (A000096 n).toNat

end

end A120774.P3043180329882504093

/-!
# A120775: a(n) = 3*a(n-1) + 5*a(n-2) + a(n-3).

The programs for A120775, the canonical program `A120775.P4245415932922959677` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120775 has offset 1).

The definition of A120775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+5*a(n-2)+a(n-3)` (program `A120775.P4245415932922959677`, by `A120775.P4245415932922959677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120775.P4245415932922959677

`3*a(n-1)+5*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=23`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120775

/-- `3*a(n-1)+5*a(n-2)+a(n-3)` -/
def P4245415932922959677.Spec : Prop :=
  ∀ n, (P4245415932922959677.a n : ℤ) = A120775 (n + 1)

theorem P4245415932922959677.correct : P4245415932922959677.Spec := by
  intro n
  simp only [A120775, Nat.add_sub_cancel]

end A120775

/-! ## A120775.P6701388354377492222

`(A000032(3*(n+1)-1)+(-1)^(n+1))/2`
-/

namespace A120775.P6701388354377492222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * (n + 1) - 1) + (-1) ^ (n + 1) : ℚ) / 2

end

end A120775.P6701388354377492222

namespace A120775

/-- `(A000032(3*(n+1)-1)+(-1)^(n+1))/2` -/
def P6701388354377492222.Spec : Prop :=
  ∀ n, P6701388354377492222.a n = (A120775 (n + 1) : ℚ)

end A120775

/-! ## A120775.P8706642377386382220

`ogf((1+3x)/(1-3x-5x^2-x^3))`
-/

namespace A120775.P8706642377386382220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, -5, -1] n

end

end A120775.P8706642377386382220

namespace A120775

/-- `ogf((1+3x)/(1-3x-5x^2-x^3))` -/
def P8706642377386382220.Spec : Prop :=
  ∀ n, P8706642377386382220.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P15848051767937425806

`∑[A098600(3*n)]`
-/

namespace A120775.P15848051767937425806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120775.P15848051767937425806

namespace A120775

/-- `∑[A098600(3*n)]` -/
def P15848051767937425806.Spec : Prop :=
  ∀ n, P15848051767937425806.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P17270723728643410742

`∑[xor(4, A051929(n))]`
-/

namespace A120775.P17270723728643410742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A051929 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120775.P17270723728643410742

namespace A120775

/-- `∑[xor(4, A051929(n))]` -/
def P17270723728643410742.Spec : Prop :=
  ∀ n, P17270723728643410742.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P16799555922593718203

`∑[A001350(3*n)+1]`
-/

namespace A120775.P16799555922593718203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120775.P16799555922593718203

namespace A120775

/-- `∑[A001350(3*n)+1]` -/
def P16799555922593718203.Spec : Prop :=
  ∀ n, P16799555922593718203.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P14207258702607057591

`A048876(n)-a(n-1)` with `a(0)=1`
-/

namespace A120775.P14207258702607057591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048876 n - a (n - 1)

end

end A120775.P14207258702607057591

namespace A120775

/-- `A048876(n)-a(n-1)` -/
def P14207258702607057591.Spec : Prop :=
  ∀ n, P14207258702607057591.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P10467074738523053325

`∑[or(2, A000032(3*n))-1]`
-/

namespace A120775.P10467074738523053325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A000032 (3 * n)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120775.P10467074738523053325

namespace A120775

/-- `∑[or(2, A000032(3*n))-1]` -/
def P10467074738523053325.Spec : Prop :=
  ∀ n, P10467074738523053325.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P1546074485398023734

`∑[A181716(2*n+1+n)]`
-/

namespace A120775.P1546074485398023734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120775.P1546074485398023734

namespace A120775

/-- `∑[A181716(2*n+1+n)]` -/
def P1546074485398023734.Spec : Prop :=
  ∀ n, P1546074485398023734.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P8601541735740843297

`A014447(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A120775.P8601541735740843297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014447 (2 * n) - a (n - 1)

end

end A120775.P8601541735740843297

namespace A120775

/-- `A014447(2*n)-a(n-1)` -/
def P8601541735740843297.Spec : Prop :=
  ∀ n, P8601541735740843297.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P5574285147808901075

`A000032(3*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A120775.P5574285147808901075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (3 * n + 1) - a (n - 1)

end

end A120775.P5574285147808901075

namespace A120775

/-- `A000032(3*n+1)-a(n-1)` -/
def P5574285147808901075.Spec : Prop :=
  ∀ n, P5574285147808901075.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P388796928283103191

`∑[A000032(2*n+n)-(-1)^n]`
-/

namespace A120775.P388796928283103191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + n) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120775.P388796928283103191

namespace A120775

/-- `∑[A000032(2*n+n)-(-1)^n]` -/
def P388796928283103191.Spec : Prop :=
  ∀ n, P388796928283103191.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P10640589530619140742

`∑[A000032(floor(2/acot(n))+n)]+n%2`
-/

namespace A120775.P10640589530619140742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n % 2 : ℕ) : ℤ)

end

end A120775.P10640589530619140742

namespace A120775

/-- `∑[A000032(floor(2/acot(n))+n)]+n%2` -/
def P10640589530619140742.Spec : Prop :=
  ∀ n, P10640589530619140742.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P15491587526089927520

`A102129(n)+A014445(n)`
-/

namespace A120775.P15491587526089927520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102129 n + A014445 n

end

end A120775.P15491587526089927520

namespace A120775

/-- `A102129(n)+A014445(n)` -/
def P15491587526089927520.Spec : Prop :=
  ∀ n, P15491587526089927520.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P4958397437628492032

`A306672(n)-A059841(n)`
-/

namespace A120775.P4958397437628492032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306672 n - A059841 n

end

end A120775.P4958397437628492032

namespace A120775

/-- `A306672(n)-A059841(n)` -/
def P4958397437628492032.Spec : Prop :=
  ∀ n, P4958397437628492032.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P2726809997750556311

`A097924(n)-A294262(n)`
-/

namespace A120775.P2726809997750556311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097924 n - A294262 n

end

end A120775.P2726809997750556311

namespace A120775

/-- `A097924(n)-A294262(n)` -/
def P2726809997750556311.Spec : Prop :=
  ∀ n, P2726809997750556311.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P14332554573982095986

`A014445(n+1)-A110679(n)`
-/

namespace A120775.P14332554573982095986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (n + 1) - A110679 n

end

end A120775.P14332554573982095986

namespace A120775

/-- `A014445(n+1)-A110679(n)` -/
def P14332554573982095986.Spec : Prop :=
  ∀ n, P14332554573982095986.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P10101206340699353932

`A294262(n+1)-A001076(n)`
-/

namespace A120775.P10101206340699353932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294262 (n + 1) - A001076 n

end

end A120775.P10101206340699353932

namespace A120775

/-- `A294262(n+1)-A001076(n)` -/
def P10101206340699353932.Spec : Prop :=
  ∀ n, P10101206340699353932.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P9840335701234561396

`A102129(n)+2*A001076(n)`
-/

namespace A120775.P9840335701234561396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102129 n + 2 * A001076 n

end

end A120775.P9840335701234561396

namespace A120775

/-- `A102129(n)+2*A001076(n)` -/
def P9840335701234561396.Spec : Prop :=
  ∀ n, P9840335701234561396.a n = A120775 (n + 1)

end A120775

/-! ## A120775.P4154211439028197659

`A014445(n+1)-Δ[A110526(n)]`
-/

namespace A120775.P4154211439028197659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (n + 1) - (f1 (n + 1) - f1 n)

end

end A120775.P4154211439028197659

namespace A120775

/-- `A014445(n+1)-Δ[A110526(n)]` -/
def P4154211439028197659.Spec : Prop :=
  ∀ n, P4154211439028197659.a n = A120775 (n + 1)

end A120775

/-!
# A120776: Composite numbers k such that k+d+1 is prime for all divisors d of k greater than 1.

The programs for A120776, there is no canonical definition to state claims against.
-/

/-! ## A120776.P12072071428126822644

`∩[A096784(n+1), A153326(n+1)]`
-/

namespace A120776.P12072071428126822644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120776.P12072071428126822644

/-! ## A120776.P2020786959400261557

`∩[A034784(n+1), A153326(n+1)]`
-/

namespace A120776.P2020786959400261557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120776.P2020786959400261557

/-! ## A120776.P16640781984320556420

`∩[A067812(n+1), A153326(n+1)]`
-/

namespace A120776.P16640781984320556420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120776.P16640781984320556420

/-! ## A120776.P678230230680343209

`∩[A005097(n+1), A153326(n+1)]`
-/

namespace A120776.P678230230680343209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120776.P678230230680343209

/-! ## A120776.P7841761634656531413

`∩[A102781(n+1), A153326(n+1)]`
-/

namespace A120776.P7841761634656531413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120776.P7841761634656531413

/-! ## A120776.P17467302230673399723

`∩[A139791(n+1), A153326(n+1)]`
-/

namespace A120776.P17467302230673399723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120776.P17467302230673399723

/-! ## A120776.P14913544979057479397

`filter[A153326(n+1), A101264(#)]`
-/

namespace A120776.P14913544979057479397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A120776.P14913544979057479397

/-! ## A120776.P15076068509400360932

`∩[A079111(n+1), A153326(n+1)]`
-/

namespace A120776.P15076068509400360932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120776.P15076068509400360932

/-!
# A120777: a(n) = 2^(2*n - valuation(CatalanNumber(n), 2)).

The programs for A120777, the canonical program `A120777.P10380441015060415790` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120777 has offset 0).

The definition of A120777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120777.P10380441015060415790

`2^A283208(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120777

/-- `2^A283208(n)` -/
def P10380441015060415790.Spec : Prop :=
  ∀ n, P10380441015060415790.a n = (A120777 n : ℚ)

end A120777

/-! ## A120777.P959104676755890318

`2^(2*n-A048881(n))`
-/

namespace A120777.P959104676755890318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - A048881 n : ℤ)

end

end A120777.P959104676755890318

namespace A120777

/-- `2^(2*n-A048881(n))` -/
def P959104676755890318.Spec : Prop :=
  ∀ n, P959104676755890318.a n = (A120777 n : ℚ)

end A120777

/-! ## A120777.P15562053968773625562

`2^(2*n-val(A000108(n), 2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120777.P15562053968773625562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - (SequenceMachineLib.valuation (A000108 n).toNat 2 : ℤ) : ℤ)

end

end A120777.P15562053968773625562

namespace A120777

/-- `2^(2*n-val(A000108(n), 2))` -/
def P15562053968773625562.Spec : Prop :=
  ∀ n, P15562053968773625562.a n = (A120777 n : ℚ)

end A120777

/-! ## A120777.P11997907949883674206

`2^(∑[val(n+1, 2)]+n)`
-/

namespace A120777.P11997907949883674206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A120777.P11997907949883674206

namespace A120777

/-- `2^(∑[val(n+1, 2)]+n)` -/
def P11997907949883674206.Spec : Prop :=
  ∀ n, (P11997907949883674206.a n : ℤ) = A120777 n

end A120777

/-! ## A120777.P9415514304467302966

`∏[ceil(sin(n)²)+xor(n, n+1)]`
-/

namespace A120777.P9415514304467302966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ + (Nat.xor n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120777.P9415514304467302966

namespace A120777

/-- `∏[ceil(sin(n)²)+xor(n, n+1)]` -/
def P9415514304467302966.Spec : Prop :=
  ∀ n, P9415514304467302966.a n = A120777 n

end A120777

/-! ## A120777.P4987359196334311164

`2^n*∏[2^val(n+1, 2)]`
-/

namespace A120777.P4987359196334311164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A120777.P4987359196334311164

namespace A120777

/-- `2^n*∏[2^val(n+1, 2)]` -/
def P4987359196334311164.Spec : Prop :=
  ∀ n, (P4987359196334311164.a n : ℤ) = A120777 n

end A120777

/-! ## A120777.P5721045422187412923

`∏[xor(n, n+1)-(floor(acot(n))-1)]`
-/

namespace A120777.P5721045422187412923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120777.P5721045422187412923

namespace A120777

/-- `∏[xor(n, n+1)-(floor(acot(n))-1)]` -/
def P5721045422187412923.Spec : Prop :=
  ∀ n, P5721045422187412923.a n = A120777 n

end A120777

/-! ## A120777.P2997668793925160961

`∏[xor(n+1, n^floor(atan(n)))+1]`
-/

namespace A120777.P2997668793925160961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120777.P2997668793925160961

namespace A120777

/-- `∏[xor(n+1, n^floor(atan(n)))+1]` -/
def P2997668793925160961.Spec : Prop :=
  ∀ n, P2997668793925160961.a n = A120777 n

end A120777

/-! ## A120777.P13277245291459389660

`(xor(n, n+1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A120777.P13277245291459389660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.xor n (n + 1) + 1) * a (n - 1)

end

end A120777.P13277245291459389660

namespace A120777

/-- `(xor(n, n+1)+1)*a(n-1)` -/
def P13277245291459389660.Spec : Prop :=
  ∀ n, (P13277245291459389660.a n : ℤ) = A120777 n

end A120777

/-! ## A120777.P5441033135735376316

`2^n*∏[and(n+1, -(n+1))]`
-/

namespace A120777.P5441033135735376316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A120777.P5441033135735376316

namespace A120777

/-- `2^n*∏[and(n+1, -(n+1))]` -/
def P5441033135735376316.Spec : Prop :=
  ∀ n, P5441033135735376316.a n = A120777 n

end A120777

/-! ## A120777.P17298825062703858425

`2^(val(n+1, 2)+1)*a(n-1)` with `a(0)=1`
-/

namespace A120777.P17298825062703858425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 1) * a (n - 1)

end

end A120777.P17298825062703858425

namespace A120777

/-- `2^(val(n+1, 2)+1)*a(n-1)` -/
def P17298825062703858425.Spec : Prop :=
  ∀ n, (P17298825062703858425.a n : ℤ) = A120777 n

end A120777

/-! ## A120777.P13892173197769063771

`2*gcd(n+1, 2^n)*a(n-1)` with `a(0)=1`
-/

namespace A120777.P13892173197769063771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Nat.gcd (n + 1) (2 ^ n) * a (n - 1))

end

end A120777.P13892173197769063771

namespace A120777

/-- `2*gcd(n+1, 2^n)*a(n-1)` -/
def P13892173197769063771.Spec : Prop :=
  ∀ n, (P13892173197769063771.a n : ℤ) = A120777 n

end A120777

/-! ## A120777.P6340076114969412328

`record[or(n+2, -(n+2))*a(n-1)]` with `a(0)=1`
-/

namespace A120777.P6340076114969412328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor (n + 2 : ℤ) (-(n + 2 : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120777.P6340076114969412328

namespace A120777

/-- `record[or(n+2, -(n+2))*a(n-1)]` -/
def P6340076114969412328.Spec : Prop :=
  ∀ n, P6340076114969412328.a n = A120777 n

end A120777

/-! ## A120777.P4457510055941561797

`2*a(n-1)*and(n+1, -(n+1))` with `a(0)=1`
-/

namespace A120777.P4457510055941561797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A120777.P4457510055941561797

namespace A120777

/-- `2*a(n-1)*and(n+1, -(n+1))` -/
def P4457510055941561797.Spec : Prop :=
  ∀ n, P4457510055941561797.a n = A120777 n

end A120777

/-! ## A120777.P7545276839683317969

`a(n-1)+lcm(xor(n, n+1), a(n-1))` with `a(0)=1`
-/

namespace A120777.P7545276839683317969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.lcm (Nat.xor n (n + 1)) (a (n - 1))

end

end A120777.P7545276839683317969

namespace A120777

/-- `a(n-1)+lcm(xor(n, n+1), a(n-1))` -/
def P7545276839683317969.Spec : Prop :=
  ∀ n, (P7545276839683317969.a n : ℤ) = A120777 n

end A120777

/-! ## A120777.P14885673798006488959

`2^(A005187(n+1)-1)`
-/

namespace A120777.P14885673798006488959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005187 (n + 1) - 1 : ℤ)

end

end A120777.P14885673798006488959

namespace A120777

/-- `2^(A005187(n+1)-1)` -/
def P14885673798006488959.Spec : Prop :=
  ∀ n, P14885673798006488959.a n = (A120777 n : ℚ)

end A120777

/-! ## A120777.P14991578500485509994

`2^(A101925(n+1)-2)`
-/

namespace A120777.P14991578500485509994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A101925 (n + 1) - 2 : ℤ)

end

end A120777.P14991578500485509994

namespace A120777

/-- `2^(A101925(n+1)-2)` -/
def P14991578500485509994.Spec : Prop :=
  ∀ n, P14991578500485509994.a n = (A120777 n : ℚ)

end A120777

/-! ## A120777.P8060700643222797780

`2^(A011371(n+1)+n)`
-/

namespace A120777.P8060700643222797780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A011371 (n + 1) + (n : ℤ) : ℤ)

end

end A120777.P8060700643222797780

namespace A120777

/-- `2^(A011371(n+1)+n)` -/
def P8060700643222797780.Spec : Prop :=
  ∀ n, P8060700643222797780.a n = (A120777 n : ℚ)

end A120777

/-! ## A120777.P7645215439471720193

`2^n*A060818(n+1)`
-/

namespace A120777.P7645215439471720193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A060818 (n + 1)

end

end A120777.P7645215439471720193

namespace A120777

/-- `2^n*A060818(n+1)` -/
def P7645215439471720193.Spec : Prop :=
  ∀ n, P7645215439471720193.a n = A120777 n

end A120777

/-! ## A120777.P11858874932587613904

`2^(A113474(n+1)+n-1)`
-/

namespace A120777.P11858874932587613904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A113474 (n + 1) + ((n : ℤ) - 1) : ℤ)

end

end A120777.P11858874932587613904

namespace A120777

/-- `2^(A113474(n+1)+n-1)` -/
def P11858874932587613904.Spec : Prop :=
  ∀ n, P11858874932587613904.a n = (A120777 n : ℚ)

end A120777

/-!
# A120778: Numerators of partial sums of Catalan numbers scaled by powers of 1/4.

The programs for A120778, the canonical program `A120778.P3390227642440229667` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120778 has offset 0).

The definition of A120778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120778.P3390227642440229667

`A046161(n+1)-A001790(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A120778

/-- `A046161(n+1)-A001790(n+1)` -/
def P3390227642440229667.Spec : Prop :=
  ∀ n, P3390227642440229667.a n = A120778 n

theorem P3390227642440229667.correct : P3390227642440229667.Spec := by
  intro n
  simp only [A120778]

end A120778

/-! ## A120778.P7568616152885228636

`2*A120777(n)-A001790(n+1)`
-/

namespace A120778.P7568616152885228636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120777 n - A001790 (n + 1)

end

end A120778.P7568616152885228636

namespace A120778

/-- `2*A120777(n)-A001790(n+1)` -/
def P7568616152885228636.Spec : Prop :=
  ∀ n, P7568616152885228636.a n = A120778 n

end A120778

/-! ## A120778.P9985018836501626376

`A004732(2*(n+1))-A001790(n+1)`
-/

namespace A120778.P9985018836501626376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004732 (2 * (n + 1)) - A001790 (n + 1)

end

end A120778.P9985018836501626376

namespace A120778

/-- `A004732(2*(n+1))-A001790(n+1)` -/
def P9985018836501626376.Spec : Prop :=
  ∀ n, P9985018836501626376.a n = A120778 n

end A120778

/-! ## A120778.P14252178333901430012

`A046161(n+1)-A004730(2*n+1)`
-/

namespace A120778.P14252178333901430012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (n + 1) - A004730 (2 * n + 1)

end

end A120778.P14252178333901430012

namespace A120778

/-- `A046161(n+1)-A004730(2*n+1)` -/
def P14252178333901430012.Spec : Prop :=
  ∀ n, P14252178333901430012.a n = A120778 n

end A120778

/-! ## A120778.P15163823358238034754

`A046161(n+1)-A004734(2*n+1)`
-/

namespace A120778.P15163823358238034754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (n + 1) - A004734 (2 * n + 1)

end

end A120778.P15163823358238034754

namespace A120778

/-- `A046161(n+1)-A004734(2*n+1)` -/
def P15163823358238034754.Spec : Prop :=
  ∀ n, P15163823358238034754.a n = A120778 n

end A120778

/-! ## A120778.P1208164949964494759

`A060818(2*(n+1))-A001790(n+1)`
-/

namespace A120778.P1208164949964494759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (2 * (n + 1)) - A001790 (n + 1)

end

end A120778.P1208164949964494759

namespace A120778

/-- `A060818(2*(n+1))-A001790(n+1)` -/
def P1208164949964494759.Spec : Prop :=
  ∀ n, P1208164949964494759.a n = A120778 n

end A120778

/-! ## A120778.P2973878090879352144

`A046161(n+1)-A036069(2*(n+1))`
-/

namespace A120778.P2973878090879352144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (n + 1) - A036069 (2 * (n + 1))

end

end A120778.P2973878090879352144

namespace A120778

/-- `A046161(n+1)-A036069(2*(n+1))` -/
def P2973878090879352144.Spec : Prop :=
  ∀ n, P2973878090879352144.a n = A120778 n

end A120778

/-! ## A120778.P2566624980734610115

`A046161(n+1)-A163590(2*(n+1))`
-/

namespace A120778.P2566624980734610115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (n + 1) - A163590 (2 * (n + 1))

end

end A120778.P2566624980734610115

namespace A120778

/-- `A046161(n+1)-A163590(2*(n+1))` -/
def P2566624980734610115.Spec : Prop :=
  ∀ n, P2566624980734610115.a n = A120778 n

end A120778

/-! ## A120778.P362616418749790196

`A004731(2*n+3)-A001790(n+1)`
-/

namespace A120778.P362616418749790196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 * n + 3) - A001790 (n + 1)

end

end A120778.P362616418749790196

namespace A120778

/-- `A004731(2*n+3)-A001790(n+1)` -/
def P362616418749790196.Spec : Prop :=
  ∀ n, P362616418749790196.a n = A120778 n

end A120778

/-! ## A120778.P15686834845997958013

`A004730(2*(n+1))-A004730(2*n+1)`
-/

namespace A120778.P15686834845997958013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (2 * (n + 1)) - A004730 (2 * n + 1)

end

end A120778.P15686834845997958013

namespace A120778

/-- `A004730(2*(n+1))-A004730(2*n+1)` -/
def P15686834845997958013.Spec : Prop :=
  ∀ n, P15686834845997958013.a n = A120778 n

end A120778

/-! ## A120778.P5017265764508535979

`A060818(2*(n+1))-A163590(2*(n+1))`
-/

namespace A120778.P5017265764508535979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (2 * (n + 1)) - A163590 (2 * (n + 1))

end

end A120778.P5017265764508535979

namespace A120778

/-- `A060818(2*(n+1))-A163590(2*(n+1))` -/
def P5017265764508535979.Spec : Prop :=
  ∀ n, P5017265764508535979.a n = A120778 n

end A120778

/-! ## A120778.P6079345445134011538

`A004731(2*n+3)-A036069(2*(n+1))`
-/

namespace A120778.P6079345445134011538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 * n + 3) - A036069 (2 * (n + 1))

end

end A120778.P6079345445134011538

namespace A120778

/-- `A004731(2*n+3)-A036069(2*(n+1))` -/
def P6079345445134011538.Spec : Prop :=
  ∀ n, P6079345445134011538.a n = A120778 n

end A120778

/-! ## A120778.P6006484618638424626

`2*A004735(2*n+1)-A004734(2*n+1)`
-/

namespace A120778.P6006484618638424626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004735 (2 * n + 1) - A004734 (2 * n + 1)

end

end A120778.P6006484618638424626

namespace A120778

/-- `2*A004735(2*n+1)-A004734(2*n+1)` -/
def P6006484618638424626.Spec : Prop :=
  ∀ n, P6006484618638424626.a n = A120778 n

end A120778

/-! ## A120778.P3388644231905044347

`A000079(A005187(n+1))-A001790(n+1)`
-/

namespace A120778.P3388644231905044347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A005187 (n + 1)).toNat - A001790 (n + 1)

end

end A120778.P3388644231905044347

namespace A120778

/-- `A000079(A005187(n+1))-A001790(n+1)` -/
def P3388644231905044347.Spec : Prop :=
  ∀ n, P3388644231905044347.a n = A120778 n

end A120778

/-! ## A120778.P1515125455960407307

`A006519(n+1)*A101926(n)-A001790(n+1)`
-/

namespace A120778.P1515125455960407307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A101926 n - A001790 (n + 1)

end

end A120778.P1515125455960407307

namespace A120778

/-- `A006519(n+1)*A101926(n)-A001790(n+1)` -/
def P1515125455960407307.Spec : Prop :=
  ∀ n, P1515125455960407307.a n = A120778 n

end A120778

/-! ## A120778.P5959924928962228731

`A000346(n)/A048896(n)`
-/

namespace A120778.P5959924928962228731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000346 n : ℚ) / (A048896 n : ℚ)

end

end A120778.P5959924928962228731

namespace A120778

/-- `A000346(n)/A048896(n)` -/
def P5959924928962228731.Spec : Prop :=
  ∀ n, P5959924928962228731.a n = (A120778 n : ℚ)

end A120778

/-! ## A120778.P4863514528679215382

`A045621(2*n+1)/A048896(n)`
-/

namespace A120778.P4863514528679215382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045621 (2 * n + 1) : ℚ) / (A048896 n : ℚ)

end

end A120778.P4863514528679215382

namespace A120778

/-- `A045621(2*n+1)/A048896(n)` -/
def P4863514528679215382.Spec : Prop :=
  ∀ n, P4863514528679215382.a n = (A120778 n : ℚ)

end A120778

/-! ## A120778.P12815676315016641626

`A000346(n)/A011782(A000120(n+1))`
-/

namespace A120778.P12815676315016641626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000346 n : ℚ) / (A011782 (A000120 (n + 1)).toNat : ℚ)

end

end A120778.P12815676315016641626

namespace A120778

/-- `A000346(n)/A011782(A000120(n+1))` -/
def P12815676315016641626.Spec : Prop :=
  ∀ n, P12815676315016641626.a n = (A120778 n : ℚ)

end A120778

/-! ## A120778.P5576233965393228021

`A000346(n)/gcd(A000079(n), A000346(n))`
-/

namespace A120778.P5576233965393228021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000346 n : ℚ) / (Int.gcd (A000079 n) (A000346 n) : ℚ)

end

end A120778.P5576233965393228021

namespace A120778

/-- `A000346(n)/gcd(A000079(n), A000346(n))` -/
def P5576233965393228021.Spec : Prop :=
  ∀ n, P5576233965393228021.a n = (A120778 n : ℚ)

end A120778

/-! ## A120778.P15031605976823159434

`A000346(n)/gcd(A000302(n), A008549(n))`
-/

namespace A120778.P15031605976823159434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000346 n : ℚ) / (Int.gcd (A000302 n) (A008549 n) : ℚ)

end

end A120778.P15031605976823159434

namespace A120778

/-- `A000346(n)/gcd(A000302(n), A008549(n))` -/
def P15031605976823159434.Spec : Prop :=
  ∀ n, P15031605976823159434.a n = (A120778 n : ℚ)

end A120778

/-!
# A120779: Number of monocyclic skeletons with n carbon atoms and a ring size of 6.

The programs for A120779, there is no canonical definition to state claims against.
-/

/-! ## A120779.P588116387224973804

`A305059(A166136(n+2))`
-/

namespace A120779.P588116387224973804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A166136 (n + 2)).toNat

end

end A120779.P588116387224973804

/-! ## A120779.P4664130494013008956

`A305059(A052905(n)+11)`
-/

namespace A120779.P4664130494013008956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A052905 n + 11).toNat

end

end A120779.P4664130494013008956

/-! ## A120779.P13805908059076598805

`A305059(A055999(n)+12)`
-/

namespace A120779.P13805908059076598805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A055999 n + 12).toNat

end

end A120779.P13805908059076598805

/-! ## A120779.P11522540864582084052

`A305059(A167614(n+2)+3)`
-/

namespace A120779.P11522540864582084052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A167614 (n + 2) + 3).toNat

end

end A120779.P11522540864582084052

/-! ## A120779.P2954387241614470878

`A305059(A133263(n)+3*n+10)`
-/

namespace A120779.P2954387241614470878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A133263 n + (3 * n + 10 : ℤ)).toNat

end

end A120779.P2954387241614470878

/-!
# A120780: Numerators of partial sums of Catalan numbers scaled by powers of 1/8.

The programs for A120780, there is no canonical definition to state claims against.
-/

/-! ## A120780.P12941646960234357147

`A109613(A139102(n+2)-A210736(n))`
-/

namespace A120780.P12941646960234357147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A139102 (n + 2) - A210736 n).toNat

end

end A120780.P12941646960234357147

/-!
# A120781: Denominators of partial sums of Catalan numbers scaled by powers of 1/8.

The programs for A120781, the canonical program `A120781.P12418459781694600396` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120781 has offset 0).

The definition of A120781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120781.P6610945772083019050

`2^(∑[val(n+1, 2)]+2*n)`
-/

namespace A120781.P6610945772083019050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A120781.P6610945772083019050

namespace A120781

/-- `2^(∑[val(n+1, 2)]+2*n)` -/
def P6610945772083019050.Spec : Prop :=
  ∀ n, (P6610945772083019050.a n : ℤ) = A120781 n

end A120781

/-! ## A120781.P12418459781694600396

`4^n*∏[and(n+1, -(n+1))]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120781

/-- `4^n*∏[and(n+1, -(n+1))]` -/
def P12418459781694600396.Spec : Prop :=
  ∀ n, P12418459781694600396.a n = A120781 n

theorem P12418459781694600396.correct : P12418459781694600396.Spec := by
  intro n
  simp only [A120781]

end A120781

/-! ## A120781.P1949710337285045714

`2^(A283208(n)+n)`
-/

namespace A120781.P1949710337285045714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A283208 n + (n : ℤ) : ℤ)

end

end A120781.P1949710337285045714

namespace A120781

/-- `2^(A283208(n)+n)` -/
def P1949710337285045714.Spec : Prop :=
  ∀ n, P1949710337285045714.a n = (A120781 n : ℚ)

end A120781

/-! ## A120781.P5851919713864855630

`2^n*A120777(n)`
-/

namespace A120781.P5851919713864855630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A120777 n

end

end A120781.P5851919713864855630

namespace A120781

/-- `2^n*A120777(n)` -/
def P5851919713864855630.Spec : Prop :=
  ∀ n, P5851919713864855630.a n = A120781 n

end A120781

/-! ## A120781.P3059888106822133736

`2^(A004134(n+1)-2)`
-/

namespace A120781.P3059888106822133736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004134 (n + 1) - 2 : ℤ)

end

end A120781.P3059888106822133736

namespace A120781

/-- `2^(A004134(n+1)-2)` -/
def P3059888106822133736.Spec : Prop :=
  ∀ n, P3059888106822133736.a n = (A120781 n : ℚ)

end A120781

/-! ## A120781.P6936410119183590117

`a(n-1)*A059159(n+1)` with `a(0)=1`
-/

namespace A120781.P6936410119183590117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A059159 (n + 1)

end

end A120781.P6936410119183590117

namespace A120781

/-- `a(n-1)*A059159(n+1)` -/
def P6936410119183590117.Spec : Prop :=
  ∀ n, P6936410119183590117.a n = A120781 n

end A120781

/-! ## A120781.P546358188375490441

`A034008(A004134(n+1))`
-/

namespace A120781.P546358188375490441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A004134 (n + 1)).toNat

end

end A120781.P546358188375490441

namespace A120781

/-- `A034008(A004134(n+1))` -/
def P546358188375490441.Spec : Prop :=
  ∀ n, P546358188375490441.a n = A120781 n

end A120781

/-! ## A120781.P8683130779817492348

`A000079(A283208(n)+n)`
-/

namespace A120781.P8683130779817492348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A283208 n + (n : ℤ)).toNat

end

end A120781.P8683130779817492348

namespace A120781

/-- `A000079(A283208(n)+n)` -/
def P8683130779817492348.Spec : Prop :=
  ∀ n, P8683130779817492348.a n = A120781 n

end A120781

/-! ## A120781.P13082958977812287067

`A001901(n)*A129195(n)`
-/

namespace A120781.P13082958977812287067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 n * A129195 n

end

end A120781.P13082958977812287067

namespace A120781

/-- `A001901(n)*A129195(n)` -/
def P13082958977812287067.Spec : Prop :=
  ∀ n, P13082958977812287067.a n = A120781 n

end A120781

/-! ## A120781.P7632216122504979076

`A046161(n)*A130188(n)`
-/

namespace A120781.P7632216122504979076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n * A130188 n

end

end A120781.P7632216122504979076

namespace A120781

/-- `A046161(n)*A130188(n)` -/
def P7632216122504979076.Spec : Prop :=
  ∀ n, P7632216122504979076.a n = A120781 n

end A120781

/-! ## A120781.P17556687982922401264

`A011782(A004134(n+1)-1)`
-/

namespace A120781.P17556687982922401264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004134 (n + 1) - 1).toNat

end

end A120781.P17556687982922401264

namespace A120781

/-- `A011782(A004134(n+1)-1)` -/
def P17556687982922401264.Spec : Prop :=
  ∀ n, P17556687982922401264.a n = A120781 n

end A120781

/-! ## A120781.P15059174413988793341

`A011782(A005187(n+1)+n)`
-/

namespace A120781.P15059174413988793341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A005187 (n + 1) + (n : ℤ)).toNat

end

end A120781.P15059174413988793341

namespace A120781

/-- `A011782(A005187(n+1)+n)` -/
def P15059174413988793341.Spec : Prop :=
  ∀ n, P15059174413988793341.a n = A120781 n

end A120781

/-! ## A120781.P11525090990164801091

`A000302(n)*A060818(n+1)`
-/

namespace A120781.P11525090990164801091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A060818 (n + 1)

end

end A120781.P11525090990164801091

namespace A120781

/-- `A000302(n)*A060818(n+1)` -/
def P11525090990164801091.Spec : Prop :=
  ∀ n, P11525090990164801091.a n = A120781 n

end A120781

/-! ## A120781.P150633235117367294

`A000079(n)²*A060818(n+1)`
-/

namespace A120781.P150633235117367294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A060818 (n + 1)

end

end A120781.P150633235117367294

namespace A120781

/-- `A000079(n)²*A060818(n+1)` -/
def P150633235117367294.Spec : Prop :=
  ∀ n, P150633235117367294.a n = A120781 n

end A120781

/-! ## A120781.P8918603473226130800

`A011782(∑[A001511(n+1)]+n)`
-/

namespace A120781.P8918603473226130800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A120781.P8918603473226130800

namespace A120781

/-- `A011782(∑[A001511(n+1)]+n)` -/
def P8918603473226130800.Spec : Prop :=
  ∀ n, P8918603473226130800.a n = A120781 n

end A120781

/-! ## A120781.P16055631707183956350

`A000079(A011371(n+1)+2*n)`
-/

namespace A120781.P16055631707183956350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A011371 (n + 1) + (2 * n : ℤ)).toNat

end

end A120781.P16055631707183956350

namespace A120781

/-- `A000079(A011371(n+1)+2*n)` -/
def P16055631707183956350.Spec : Prop :=
  ∀ n, P16055631707183956350.a n = A120781 n

end A120781

/-! ## A120781.P11013945366338167143

`A034008(A283208(2*n+1)-n)`
-/

namespace A120781.P11013945366338167143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A283208 (2 * n + 1) - (n : ℤ)).toNat

end

end A120781.P11013945366338167143

namespace A120781

/-- `A034008(A283208(2*n+1)-n)` -/
def P11013945366338167143.Spec : Prop :=
  ∀ n, P11013945366338167143.a n = A120781 n

end A120781

/-! ## A120781.P13990316912255955338

`A000079(n)*A004735(2*n+1)`
-/

namespace A120781.P13990316912255955338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A004735 (2 * n + 1)

end

end A120781.P13990316912255955338

namespace A120781

/-- `A000079(n)*A004735(2*n+1)` -/
def P13990316912255955338.Spec : Prop :=
  ∀ n, P13990316912255955338.a n = A120781 n

end A120781

/-! ## A120781.P4673586324664401846

`A000079(2*n)*A060818(n+1)`
-/

namespace A120781.P4673586324664401846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A060818 (n + 1)

end

end A120781.P4673586324664401846

namespace A120781

/-- `A000079(2*n)*A060818(n+1)` -/
def P4673586324664401846.Spec : Prop :=
  ∀ n, P4673586324664401846.a n = A120781 n

end A120781

/-! ## A120781.P7561445630480282925

`A056450(2*n)*A060818(n+1)`
-/

namespace A120781.P7561445630480282925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 (2 * n) * A060818 (n + 1)

end

end A120781.P7561445630480282925

namespace A120781

/-- `A056450(2*n)*A060818(n+1)` -/
def P7561445630480282925.Spec : Prop :=
  ∀ n, P7561445630480282925.a n = A120781 n

end A120781

/-!
# A120783: Denominators of partial sums of Catalan numbers scaled by powers of 1/12.

The programs for A120783, there is no canonical definition to state claims against.
-/

/-! ## A120783.P17471553342699878517

`A120793(n)*A137570(A137570(3*n+2))`
-/

namespace A120783.P17471553342699878517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120793 n * A137570 (A137570 (3 * n + 2)).toNat

end

end A120783.P17471553342699878517

/-! ## A120783.P2117322431847557974

`∩[∏[∑{e}[n+1, #]+1], A371599(n+1)]`
-/

namespace A120783.P2117322431847557974
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A120783.P2117322431847557974

/-!
# A120784: Numerators of partial sums of Catalan numbers scaled by powers of 1/16.

The programs for A120784, there is no canonical definition to state claims against.
-/

/-! ## A120784.P1068398878905425245

`2*A224446(n+1)-A224445(n+1)`
-/

namespace A120784.P1068398878905425245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224446 (n + 1) - A224445 (n + 1)

end

end A120784.P1068398878905425245

/-!
# A120785: Denominators of partial sums of Catalan numbers scaled by powers of 1/16.

The programs for A120785, there is no canonical definition to state claims against.
-/

/-! ## A120785.P2986283152798829855

`8*a(n-1)*2^val(n+1, 2)` with `a(0)=1`
-/

namespace A120785.P2986283152798829855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) * 2 ^ SequenceMachineLib.valuation (n + 1) 2

end

end A120785.P2986283152798829855

/-! ## A120785.P16907799821605732605

`(xor(n, n+1)+1)*4*a(n-1)` with `a(0)=1`
-/

namespace A120785.P16907799821605732605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.xor n (n + 1) + 1) * (4 * a (n - 1))

end

end A120785.P16907799821605732605

/-! ## A120785.P9927292988144476529

`(4^n)²/2^(n-∑[val(n+1, 2)])`
-/

namespace A120785.P9927292988144476529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n) ^ 2 : ℚ) / (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A120785.P9927292988144476529

/-! ## A120785.P16816382700364949715

`A120069(Δ[n²])`
-/

namespace A120785.P16816382700364949715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120069 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120785.P16816382700364949715

/-! ## A120785.P12603239648993866065

`A224446(n+1)/4`
-/

namespace A120785.P12603239648993866065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224446 (n + 1) : ℚ) / 4

end

end A120785.P12603239648993866065

/-! ## A120785.P11206860850760277893

`A120069(2*(n+1))/2`
-/

namespace A120785.P11206860850760277893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120069 (2 * (n + 1)) : ℚ) / 2

end

end A120785.P11206860850760277893

/-! ## A120785.P8413761688553858228

`A120777(2*n+1)/4`
-/

namespace A120785.P8413761688553858228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120777 (2 * n + 1) : ℚ) / 4

end

end A120785.P8413761688553858228

/-! ## A120785.P16794479509685726505

`2^(A120738(n+1)-3)`
-/

namespace A120785.P16794479509685726505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A120738 (n + 1) - 3 : ℤ)

end

end A120785.P16794479509685726505

/-! ## A120785.P33420600451016507

`a(n-1)*A037239(n+1)` with `a(0)=1`
-/

namespace A120785.P33420600451016507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A037239 (n + 1)

end

end A120785.P33420600451016507

/-! ## A120785.P6039842496889187654

`A000302(n)*A120777(n)`
-/

namespace A120785.P6039842496889187654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A120777 n

end

end A120785.P6039842496889187654

/-!
# A120787: Denominators of partial sums of Catalan numbers scaled by powers of 1/20.

The programs for A120787, there is no canonical definition to state claims against.
-/

/-! ## A120787.P17430495798553489901

`lcm(A007088(A060818(n)), A120796(n))`
-/

namespace A120787.P17430495798553489901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007088 (A060818 n).toNat) (A120796 n)

end

end A120787.P17430495798553489901

/-! ## A120787.P9195596235460447536

`A120796(A004891(n+1))`
-/

namespace A120787.P9195596235460447536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120796 (A004891 (n + 1)).toNat

end

end A120787.P9195596235460447536

/-! ## A120787.P9264650902002596819

`A120796(A154701(n+1)-1)`
-/

namespace A120787.P9264650902002596819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120796 (A154701 (n + 1) - 1).toNat

end

end A120787.P9264650902002596819

/-! ## A120787.P8411460710645222117

`A120796(n^A383799(n+3))`
-/

namespace A120787.P8411460710645222117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120796 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A383799 (n + 3) : ℤ))).toNat

end

end A120787.P8411460710645222117

/-!
# A120788: Numerators of partial sums of Catalan numbers scaled by powers of -1/4.

The programs for A120788, there is no canonical definition to state claims against.
-/

/-! ## A120788.P2130020368921120840

`A120088(n)-A046161(n+1)`
-/

namespace A120788.P2130020368921120840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120088 n - A046161 (n + 1)

end

end A120788.P2130020368921120840

/-! ## A120788.P6512963732618004362

`A120088(n)-2*A120777(n)`
-/

namespace A120788.P6512963732618004362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120088 n - 2 * A120777 n

end

end A120788.P6512963732618004362

/-! ## A120788.P14599007366127900867

`A120088(n)-∏[A171977(n+1)]`
-/

namespace A120788.P14599007366127900867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120088 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120788.P14599007366127900867

/-! ## A120788.P9422185430770064309

`A120088(n)-A060818(Δ[A005563(n)])`
-/

namespace A120788.P9422185430770064309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120088 n - A060818 (f1 (n + 1) - f1 n).toNat

end

end A120788.P9422185430770064309

/-! ## A120788.P5683618212320393341

`A120088(n)%(A046161(n+1)%A234437(n+1))`
-/

namespace A120788.P5683618212320393341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120088 n) (Int.tmod (A046161 (n + 1)) (A234437 (n + 1)))

end

end A120788.P5683618212320393341

/-! ## A120788.P15470176623360633270

`A120088(n)-A000165(n+1)/A049606(n+1)`
-/

namespace A120788.P15470176623360633270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120088 n : ℚ) - (A000165 (n + 1) : ℚ) / (A049606 (n + 1) : ℚ)

end

end A120788.P15470176623360633270

/-!
# A120790: Number of monocyclic skeletons with n carbon atoms and a ring size of 7.

The programs for A120790, there is no canonical definition to state claims against.
-/

/-! ## A120790.P10377491861567287619

`A305059(A056000(n)+17)`
-/

namespace A120790.P10377491861567287619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A056000 n + 17).toNat

end

end A120790.P10377491861567287619

/-! ## A120790.P2256586525671598053

`A305059(A167499(n+3)+2)`
-/

namespace A120790.P2256586525671598053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A167499 (n + 3) + 2).toNat

end

end A120790.P2256586525671598053

/-! ## A120790.P2230965650550507854

`A305059(A167614(n+3)+4)`
-/

namespace A120790.P2230965650550507854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A167614 (n + 3) + 4).toNat

end

end A120790.P2230965650550507854

/-! ## A120790.P1420729673008078155

`A305059(A000217(n+6)-A005843(n+2))`
-/

namespace A120790.P1420729673008078155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A000217 (n + 6) - A005843 (n + 2)).toNat

end

end A120790.P1420729673008078155

/-! ## A120790.P16408405901220860085

`A305059(A005843(n+7)+A000217(n+2))`
-/

namespace A120790.P16408405901220860085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A005843 (n + 7) + A000217 (n + 2)).toNat

end

end A120790.P16408405901220860085

/-!
# A120793: Denominators of partial sums of Catalan numbers scaled by powers of -1/12.

The programs for A120793, there is no canonical definition to state claims against.
-/

/-! ## A120793.P7405029533366886708

`A120783(n)/∑{d}[A336128(n), A349379(#)]`
-/

namespace A120793.P7405029533366886708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336128 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120783 n : ℚ) / ((∑ d ∈ Nat.divisors (f1 n).natAbs, A349379 d : ℤ) : ℚ)

end

end A120793.P7405029533366886708

/-!
# A120795: Number of monocyclic skeletons with n carbon atoms and a ring size of 8.

The programs for A120795, there is no canonical definition to state claims against.
-/

/-! ## A120795.P4226817656953071213

`A305059(A056115(n)+23)`
-/

namespace A120795.P4226817656953071213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A056115 n + 23).toNat

end

end A120795.P4226817656953071213

/-! ## A120795.P5631217303826780917

`A305059(A166136(n+4)+2)`
-/

namespace A120795.P5631217303826780917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A166136 (n + 4) + 2).toNat

end

end A120795.P5631217303826780917

/-! ## A120795.P7708237885275907541

`A305059(A000124(n+5)+7)`
-/

namespace A120795.P7708237885275907541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A000124 (n + 5) + 7).toNat

end

end A120795.P7708237885275907541

/-! ## A120795.P13402439692357351561

`A305059(A008585(n+7)+A000096(n+1))`
-/

namespace A120795.P13402439692357351561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A008585 (n + 7) + A000096 (n + 1)).toNat

end

end A120795.P13402439692357351561

/-! ## A120795.P2335270718126353930

`A305059(A033638(n+2)+A033638(n+9))`
-/

namespace A120795.P2335270718126353930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A033638 (n + 2) + A033638 (n + 9)).toNat

end

end A120795.P2335270718126353930

/-!
# A120796: Denominators of partial sums of Catalan numbers scaled by powers of -1/20.

The programs for A120796, there is no canonical definition to state claims against.
-/

/-! ## A120796.P13444413226960312306

`A120787(n)/A128629(A007318(3*n))`
-/

namespace A120796.P13444413226960312306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120787 n : ℚ) / (A128629 (A007318 (3 * n)).toNat : ℚ)

end

end A120796.P13444413226960312306

/-!
# A120797: a(0) = 1. a(n) = n + (largest noncomposite {1 or prime} occurring earlier in the sequence).

The programs for A120797, there is no canonical definition to state claims against.
-/

/-! ## A120797.P1037179280654607944

`a(n-1)+C(n, C(A006530(a(n-1)), a(n-1)))` with `a(0)=1`
-/

namespace A120797.P1037179280654607944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose n (Nat.choose (A006530 (a (n - 1))).toNat (a (n - 1)))

end

end A120797.P1037179280654607944

/-! ## A120797.P2124781293310308307

`a(n-1)+C(n, C(A014963(a(n-1)), a(n-1)))` with `a(0)=1`
-/

namespace A120797.P2124781293310308307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose n (Nat.choose (A014963 (a (n - 1))).toNat (a (n - 1)))

end

end A120797.P2124781293310308307

/-! ## A120797.P3869336894267555120

`a(n-1)+gcd(n, (a(n-1)+n+1)%A000203(a(n-1)))` with `a(0)=1`
-/

namespace A120797.P3869336894267555120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.gcd (n : ℤ) (Int.tmod (a (n - 1) + (n + 1) : ℤ) (A000203 (a (n - 1))))

end

end A120797.P3869336894267555120

/-! ## A120797.P5378345900536211830

`record[A284188(n+1)]-A001710(n)%4`
-/

namespace A120797.P5378345900536211830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - Int.tmod (A001710 n) 4

end

end A120797.P5378345900536211830

/-! ## A120797.P16547881223066788705

`a(n-1)+gcd(n, A025801(A001222(a(n-1))))` with `a(0)=1`
-/

namespace A120797.P16547881223066788705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.gcd (n : ℤ) (A025801 (A001222 (a (n - 1))).toNat)

end

end A120797.P16547881223066788705

/-!
# A120798: a(n) = 3^(n^2)+2^n.

The programs for A120798, the canonical program `A120798.P3135781703305930384` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120798 has offset 0).

The definition of A120798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n²+2^n` (program `A120798.P3135781703305930384`, by `A120798.P3135781703305930384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120798.P3135781703305930384

`3^n²+2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120798

/-- `3^n²+2^n` -/
def P3135781703305930384.Spec : Prop :=
  ∀ n, (P3135781703305930384.a n : ℤ) = A120798 n

theorem P3135781703305930384.correct : P3135781703305930384.Spec := by
  intro n
  simp only [A120798]

end A120798

/-!
# A120799: a(n) = 3^(n^2)-2^n.

The programs for A120799, the canonical program `A120799.P13415200266561187751` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120799 has offset 0).

The definition of A120799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n²-2^n` (program `A120799.P13415200266561187751`, by `A120799.P13415200266561187751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120799.P13415200266561187751

`3^n²-2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A120799

/-- `3^n²-2^n` -/
def P13415200266561187751.Spec : Prop :=
  ∀ n, P13415200266561187751.a n = A120799 n

theorem P13415200266561187751.correct : P13415200266561187751.Spec := by
  intro n
  simp only [A120799]

end A120799

/-! ## A120799.P5874867164689022051

`abs(A000244(n)^n-2^n)`
-/

namespace A120799.P5874867164689022051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n ^ n - (2 ^ n : ℤ)|

end

end A120799.P5874867164689022051

namespace A120799

/-- `abs(A000244(n)^n-2^n)` -/
def P5874867164689022051.Spec : Prop :=
  ∀ n, P5874867164689022051.a n = A120799 n

end A120799

/-! ## A120799.P10932286551185476247

`abs(A000079(n)-A000244(n)^n)`
-/

namespace A120799.P10932286551185476247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A000244 n ^ n|

end

end A120799.P10932286551185476247

namespace A120799

/-- `abs(A000079(n)-A000244(n)^n)` -/
def P10932286551185476247.Spec : Prop :=
  ∀ n, P10932286551185476247.a n = A120799 n

end A120799

