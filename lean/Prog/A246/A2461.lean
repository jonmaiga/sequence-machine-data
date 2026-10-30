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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A246100: Paradigm shift sequence for (5,2) production scheme with replacement.

The programs for A246100, there is no canonical definition to state claims against.
-/

/-! ## A246100.P8462024062904757329

`lt[A000217(A318772(n)), A044958(3*n+1)]`
-/

namespace A246100.P8462024062904757329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A318772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044958 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246100.P8462024062904757329

/-! ## A246100.P15786344582374437904

`lt[A026810(A318772(n)), A034030(n+1)]`
-/

namespace A246100.P15786344582374437904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A318772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246100.P15786344582374437904

/-! ## A246100.P719847805050567890

`lt[A001694(A318772(n)), A022844(3*n)]`
-/

namespace A246100.P719847805050567890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A318772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246100.P719847805050567890

/-! ## A246100.P4916872348162277672

`lt[A318743(A318772(n)), A318765(3*n)]`
-/

namespace A246100.P4916872348162277672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318743 (A318772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318765 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246100.P4916872348162277672

/-! ## A246100.P11116844678639294085

`lt[A226488(A318772(n)), A064270(3*n+1)]`
-/

namespace A246100.P11116844678639294085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 (A318772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064270 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246100.P11116844678639294085

/-!
# A246101: Paradigm shift sequence for (5,3) production scheme with replacement.

The programs for A246101, there is no canonical definition to state claims against.
-/

/-! ## A246101.P14063696041648776726

`∑[A043555(∏[A124778(n)])]`
-/

namespace A246101.P14063696041648776726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246101.P14063696041648776726

/-! ## A246101.P15727747976194056946

`∑[A226273(∏[A124778(n)])]`
-/

namespace A246101.P15727747976194056946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226273 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246101.P15727747976194056946

/-! ## A246101.P12297458412875930312

`∑[A029129(p?[A108611(n)])]`
-/

namespace A246101.P12297458412875930312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029129 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246101.P12297458412875930312

/-! ## A246101.P10709529109944089970

`∑[A029135(p?[A108611(n)])]`
-/

namespace A246101.P10709529109944089970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029135 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246101.P10709529109944089970

/-! ## A246101.P17156355274859189945

`∑[A104484(p?[A108611(n)])]`
-/

namespace A246101.P17156355274859189945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246101.P17156355274859189945

/-!
# A246102: Paradigm shift sequence for (5,4) production scheme with replacement.

The programs for A246102, there is no canonical definition to state claims against.
-/

/-! ## A246102.P3646865489333266322

`∑[∑[A334740(A029097(n+1)+1)^n²]]`
-/

namespace A246102.P3646865489333266322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334740 (A029097 (n + 1) + 1).toNat ^ n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246102.P3646865489333266322

/-! ## A246102.P10333916368841632390

`∑[∑[A287170(A267383(n)²+1)]-n]`
-/

namespace A246102.P10333916368841632390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (A267383 n ^ 2 + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246102.P10333916368841632390

/-! ## A246102.P8420721845680010403

`lt[n+1-a(n-1)%a(a(n-1)%n), 26]` with `a(0)=50, a(1)=3`
-/

namespace A246102.P8420721845680010403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [50, 3] fun n f1 =>
  (n + 1 : ℤ) - Int.tmod (f1 (n - 1)) (f1 (Int.tmod (f1 (n - 1)) (n : ℤ)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246102.P8420721845680010403

/-! ## A246102.P11251763596123325325

`lt[A270624(n), A315942(n)²]`
-/

namespace A246102.P11251763596123325325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270624 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315942 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246102.P11251763596123325325

/-! ## A246102.P13428720954773461091

`lt[A302334(n+1), A301686(n)]`
-/

namespace A246102.P13428720954773461091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246102.P13428720954773461091

/-!
# A246103: Paradigm shift sequence for (5,5) production scheme with replacement.

The programs for A246103, there is no canonical definition to state claims against.
-/

/-! ## A246103.P12349145420334863449

`∑[A101787(floor(n/10)!)]`
-/

namespace A246103.P12349145420334863449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101787 (Nat.factorial ⌊(n : ℚ) / 10⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246103.P12349145420334863449

/-! ## A246103.P9485028028256270656

`∑[A106486(floor(n/10)!)]`
-/

namespace A246103.P9485028028256270656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (Nat.factorial ⌊(n : ℚ) / 10⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246103.P9485028028256270656

/-! ## A246103.P9804683205963249697

`∑[A128979(floor(n/10)!)]`
-/

namespace A246103.P9804683205963249697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128979 (Nat.factorial ⌊(n : ℚ) / 10⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246103.P9804683205963249697

/-! ## A246103.P16691425899838664888

`∑[A157791(floor(n/10)!)]`
-/

namespace A246103.P16691425899838664888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157791 (Nat.factorial ⌊(n : ℚ) / 10⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246103.P16691425899838664888

/-! ## A246103.P6587127026356503603

`∑[A306991(floor(n/10)!)]`
-/

namespace A246103.P6587127026356503603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306991 (Nat.factorial ⌊(n : ℚ) / 10⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246103.P6587127026356503603

/-! ## A246103.P13659967281037571455

`∑[A307302(floor(n/10)!)]`
-/

namespace A246103.P13659967281037571455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307302 (Nat.factorial ⌊(n : ℚ) / 10⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246103.P13659967281037571455

/-! ## A246103.P5272639882575136146

`∑[A307297(((n-∑{digits}[n, #])/9)!)]`
-/

namespace A246103.P5272639882575136146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307297 (Nat.factorial (SequenceMachineLib.roundAway (((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246103.P5272639882575136146

/-! ## A246103.P341571932854018946

`∑[A088261(A054899(n)!)]`
-/

namespace A246103.P341571932854018946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088261 (Nat.factorial (A054899 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246103.P341571932854018946

/-!
# A246104: Least m > 0 for which (s(m), ..., s(n+m-1)) = (s(0), ..., s(n)), the first n+1 terms of the infinite Fibonacci word A003849.

The programs for A246104, the canonical program `A246104.P17036566817136398494` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246104 has offset 0).

The definition of A246104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246104.P5169174982583880336

`eq[1, round(a(floor(n/ϕ)))]-n` with `a(0)=0, a(1)=0, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A246104.P5169174982583880336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A246104.P5169174982583880336

namespace A246104

/-- `eq[1, round(a(floor(n/ϕ)))]-n` -/
def P5169174982583880336.Spec : Prop :=
  ∀ n, P5169174982583880336.a n = A246104 n

end A246104

/-! ## A246104.P15484506485721018576

`eq[1, abs(a(floor(n/ϕ)))]-n` with `a(0)=2, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A246104.P15484506485721018576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A246104.P15484506485721018576

namespace A246104

/-- `eq[1, abs(a(floor(n/ϕ)))]-n` -/
def P15484506485721018576.Spec : Prop :=
  ∀ n, P15484506485721018576.a n = A246104 n

end A246104

/-! ## A246104.P620937330722136442

`a(n-1)+floor(C(n+2, a(n-1))/ϕ)` with `a(0)=2`
-/

namespace A246104.P620937330722136442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ⌊(Nat.choose (n + 2) (a (n - 1)).toNat : ℝ) / Real.goldenRatio⌋

end

end A246104.P620937330722136442

namespace A246104

/-- `a(n-1)+floor(C(n+2, a(n-1))/ϕ)` -/
def P620937330722136442.Spec : Prop :=
  ∀ n, P620937330722136442.a n = A246104 n

end A246104

/-! ## A246104.P3288279887013294395

`A361989(n)+2+n`
-/

namespace A246104.P3288279887013294395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361989 n + 2 + (n : ℤ)

end

end A246104.P3288279887013294395

namespace A246104

/-- `A361989(n)+2+n` -/
def P3288279887013294395.Spec : Prop :=
  ∀ n, P3288279887013294395.a n = A246104 n

end A246104

/-! ## A246104.P8850629634665102234

`round(ϕ*A087172(n+1))`
-/

namespace A246104.P8850629634665102234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A087172 (n + 1) : ℝ))

end

end A246104.P8850629634665102234

namespace A246104

/-- `round(ϕ*A087172(n+1))` -/
def P8850629634665102234.Spec : Prop :=
  ∀ n, P8850629634665102234.a n = A246104 n

end A246104

/-! ## A246104.P17036566817136398494

`A003258(A087172(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246104

/-- `A003258(A087172(n+1))` -/
def P17036566817136398494.Spec : Prop :=
  ∀ n, P17036566817136398494.a n = A246104 n

theorem P17036566817136398494.correct : P17036566817136398494.Spec := by
  intro n
  simp only [A246104]

end A246104

/-! ## A246104.P770103119965849467

`A000045(A108852(n+1))`
-/

namespace A246104.P770103119965849467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 (n + 1)).toNat

end

end A246104.P770103119965849467

namespace A246104

/-- `A000045(A108852(n+1))` -/
def P770103119965849467.Spec : Prop :=
  ∀ n, P770103119965849467.a n = A246104 n

end A246104

/-! ## A246104.P2318397015123515866

`A000045(∑[A192687(n)]+2)`
-/

namespace A246104.P2318397015123515866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A246104.P2318397015123515866

namespace A246104

/-- `A000045(∑[A192687(n)]+2)` -/
def P2318397015123515866.Spec : Prop :=
  ∀ n, P2318397015123515866.a n = A246104 n

end A246104

/-! ## A246104.P15780845412975591717

`A022342(A087172(n+1)+1)`
-/

namespace A246104.P15780845412975591717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A087172 (n + 1) + 1).toNat

end

end A246104.P15780845412975591717

namespace A246104

/-- `A022342(A087172(n+1)+1)` -/
def P15780845412975591717.Spec : Prop :=
  ∀ n, P15780845412975591717.a n = A246104 n

end A246104

/-! ## A246104.P339410834089640952

`A000045(A130233(n+1)+1)`
-/

namespace A246104.P339410834089640952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (n + 1) + 1).toNat

end

end A246104.P339410834089640952

namespace A246104

/-- `A000045(A130233(n+1)+1)` -/
def P339410834089640952.Spec : Prop :=
  ∀ n, P339410834089640952.a n = A246104 n

end A246104

/-! ## A246104.P1669295408542399308

`A256654(A087172(n+1)+1)`
-/

namespace A246104.P1669295408542399308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A087172 (n + 1) + 1).toNat

end

end A246104.P1669295408542399308

namespace A246104

/-- `A256654(A087172(n+1)+1)` -/
def P1669295408542399308.Spec : Prop :=
  ∀ n, P1669295408542399308.a n = A246104 n

end A246104

/-! ## A246104.P15843202870609352460

`A000045(2+A072649(n+1))`
-/

namespace A246104.P15843202870609352460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 + A072649 (n + 1)).toNat

end

end A246104.P15843202870609352460

namespace A246104

/-- `A000045(2+A072649(n+1))` -/
def P15843202870609352460.Spec : Prop :=
  ∀ n, P15843202870609352460.a n = A246104 n

end A246104

/-! ## A246104.P5989725684899850068

`A020695(A072649(n+1)-1)`
-/

namespace A246104.P5989725684899850068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A072649 (n + 1) - 1).toNat

end

end A246104.P5989725684899850068

namespace A246104

/-- `A020695(A072649(n+1)-1)` -/
def P5989725684899850068.Spec : Prop :=
  ∀ n, P5989725684899850068.a n = A246104 n

end A246104

/-! ## A246104.P8230119937618968754

`A212804(A130233(n+1)+2)`
-/

namespace A246104.P8230119937618968754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A130233 (n + 1) + 2).toNat

end

end A246104.P8230119937618968754

namespace A246104

/-- `A212804(A130233(n+1)+2)` -/
def P8230119937618968754.Spec : Prop :=
  ∀ n, P8230119937618968754.a n = A246104 n

end A246104

/-! ## A246104.P6471805462392661885

`A020695(A130233(n+1)-2)`
-/

namespace A246104.P6471805462392661885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A130233 (n + 1) - 2).toNat

end

end A246104.P6471805462392661885

namespace A246104

/-- `A020695(A130233(n+1)-2)` -/
def P6471805462392661885.Spec : Prop :=
  ∀ n, P6471805462392661885.a n = A246104 n

end A246104

/-! ## A246104.P16186504860075222749

`A053602(2*A108852(n+1))`
-/

namespace A246104.P16186504860075222749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A108852 (n + 1)).toNat

end

end A246104.P16186504860075222749

namespace A246104

/-- `A053602(2*A108852(n+1))` -/
def P16186504860075222749.Spec : Prop :=
  ∀ n, P16186504860075222749.a n = A246104 n

end A246104

/-! ## A246104.P12100236638945466557

`A020695(∑[char[A000071(n+3)]])`
-/

namespace A246104.P12100236638945466557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246104.P12100236638945466557

namespace A246104

/-- `A020695(∑[char[A000071(n+3)]])` -/
def P12100236638945466557.Spec : Prop :=
  ∀ n, P12100236638945466557.a n = A246104 n

end A246104

/-! ## A246104.P6919952130088422197

`A000045(∑[A010056(n+1)]+2)`
-/

namespace A246104.P6919952130088422197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A246104.P6919952130088422197

namespace A246104

/-- `A000045(∑[A010056(n+1)]+2)` -/
def P6919952130088422197.Spec : Prop :=
  ∀ n, P6919952130088422197.a n = A246104 n

end A246104

/-! ## A246104.P10510827972260922369

`A000045(∑[char[∑[A000045(n)]]]+2)`
-/

namespace A246104.P10510827972260922369
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A246104.P10510827972260922369

namespace A246104

/-- `A000045(∑[char[∑[A000045(n)]]]+2)` -/
def P10510827972260922369.Spec : Prop :=
  ∀ n, P10510827972260922369.a n = A246104 n

end A246104

/-! ## A246104.P7710933634524721341

`A000071(A072649(n+1)+2)+1`
-/

namespace A246104.P7710933634524721341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A072649 (n + 1) + 2).toNat + 1

end

end A246104.P7710933634524721341

namespace A246104

/-- `A000071(A072649(n+1)+2)+1` -/
def P7710933634524721341.Spec : Prop :=
  ∀ n, P7710933634524721341.a n = A246104 n

end A246104

/-!
# A246105: Least m > 0 for which (s(m),...,s(n+m-1)) = (s(n),...,s(0)), the reverse of the first n+1 terms of the infinite Fibonacci word A003849.

The programs for A246105, there is no canonical definition to state claims against.
-/

/-! ## A246105.P1114901067373343465

`A280514(n+2)`
-/

namespace A246105.P1114901067373343465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280514 (n + 2)

end

end A246105.P1114901067373343465

/-! ## A246105.P16290801586878170320

`A361989(n+2)+1`
-/

namespace A246105.P16290801586878170320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361989 (n + 2) + 1

end

end A246105.P16290801586878170320

/-! ## A246105.P1696484787508823810

`A246104(n+2)-(n+3)`
-/

namespace A246105.P1696484787508823810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (n + 2) - (n + 3 : ℤ)

end

end A246105.P1696484787508823810

/-! ## A246105.P6018732820940866666

`A256654(n+4)-(n+3)`
-/

namespace A246105.P6018732820940866666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (n + 4) - (n + 3 : ℤ)

end

end A246105.P6018732820940866666

/-! ## A246105.P2840975147340248685

`A246104(round(sqrt(n²+1))+2)%(n+3)`
-/

namespace A246105.P2840975147340248685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246104 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 2).toNat) (n + 3 : ℤ)

end

end A246105.P2840975147340248685

/-! ## A246105.P4345153396362256638

`A194029(A132665(n+2)+1)`
-/

namespace A246105.P4345153396362256638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (A132665 (n + 2) + 1).toNat

end

end A246105.P4345153396362256638

/-! ## A246105.P14571290205314111228

`A001911(A095791(n+2))-(n+1)`
-/

namespace A246105.P14571290205314111228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (A095791 (n + 2)).toNat - (n + 1 : ℤ)

end

end A246105.P14571290205314111228

/-! ## A246105.P3793481590599622590

`A000045(A108852(n+3))-(n+3)`
-/

namespace A246105.P3793481590599622590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 (n + 3)).toNat - (n + 3 : ℤ)

end

end A246105.P3793481590599622590

/-! ## A246105.P16073928671466239170

`A256654(n+4)%Δ[A001057(n+2)]`
-/

namespace A246105.P16073928671466239170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256654 (n + 4)) (f1 (n + 1) - f1 n)

end

end A246105.P16073928671466239170

/-! ## A246105.P15079368221091650727

`A000201(A000071(A130233(n+3)))-(n+1)`
-/

namespace A246105.P15079368221091650727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000071 (A130233 (n + 3)).toNat).toNat - (n + 1 : ℤ)

end

end A246105.P15079368221091650727

/-!
# A246106: Number A(n,k) of inequivalent n X n matrices with entries from [k], where equivalence means permutations of rows or columns; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A246106, there is no canonical definition to state claims against.
-/

/-! ## A246106.P7268473618577806322

`A345914(A343097(n)+1)`
-/

namespace A246106.P7268473618577806322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345914 (A343097 n + 1).toNat

end

end A246106.P7268473618577806322

/-! ## A246106.P17615554517567344477

`A333483(A343095(n))-1`
-/

namespace A246106.P17615554517567344477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (A343095 n).toNat - 1

end

end A246106.P17615554517567344477

/-! ## A246106.P2676668984029792444

`A207333(A343097(n)+1)-1`
-/

namespace A246106.P2676668984029792444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207333 (A343097 n + 1).toNat - 1

end

end A246106.P2676668984029792444

/-! ## A246106.P11734171154217751634

`A322832(A025581(n)^round(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A246106.P11734171154217751634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322832 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) : ℤ))).toNat

end

end A246106.P11734171154217751634

/-! ## A246106.P17048186995727689176

`A325678(A343095(n)²)`
-/

namespace A246106.P17048186995727689176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A343095 n ^ 2).toNat

end

end A246106.P17048186995727689176

/-!
# A246107: Number of inequivalent n X n matrices with entries from [n], where equivalence means permutations of rows or columns.

The programs for A246107, there is no canonical definition to state claims against.
-/

/-! ## A246107.P15563367343790540221

`A246106(∑[4*n])`
-/

namespace A246107.P15563367343790540221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246107.P15563367343790540221

/-!
# A246108: Number of inequivalent 7 X 7 matrices with entries from [n], where equivalence means permutations of rows or columns.

The programs for A246108, there is no canonical definition to state claims against.
-/

/-! ## A246108.P17440303095306153527

`A246106(eq[7, A002262(n)])`
-/

namespace A246108.P17440303095306153527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246108.P17440303095306153527

/-!
# A246111: Number of inequivalent 10 X 10 matrices with entries from [n], where equivalence means permutations of rows or columns.

The programs for A246111, there is no canonical definition to state claims against.
-/

/-! ## A246111.P8977648176655351049

`A246106(eq[10, A002262(n)])`
-/

namespace A246111.P8977648176655351049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246111.P8977648176655351049

/-!
# A246112: Number of inequivalent n X n matrices with entries from [6], where equivalence means permutations of rows or columns.

The programs for A246112, there is no canonical definition to state claims against.
-/

/-! ## A246112.P14517058533536020274

`A246106(eq[6, A025581(n)])`
-/

namespace A246112.P14517058533536020274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246112.P14517058533536020274

/-! ## A246112.P12794899654083997464

`record[A246106(A141214(n)+n)]`
-/

namespace A246112.P12794899654083997464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A141214 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246112.P12794899654083997464

/-!
# A246113: Number of inequivalent n X n matrices with entries from [7], where equivalence means permutations of rows or columns.

The programs for A246113, there is no canonical definition to state claims against.
-/

/-! ## A246113.P15623579037753611885

`A246106(eq[7, A025581(n)])`
-/

namespace A246113.P15623579037753611885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246113.P15623579037753611885

/-!
# A246114: Number of inequivalent n X n matrices with entries from [8], where equivalence means permutations of rows or columns.

The programs for A246114, there is no canonical definition to state claims against.
-/

/-! ## A246114.P15534901491556998653

`A246106(eq[8, A025581(n)])`
-/

namespace A246114.P15534901491556998653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246114.P15534901491556998653

/-!
# A246117: Number of parity preserving permutations of the set {1,2,...,n} with exactly k cycles.

The programs for A246117, there is no canonical definition to state claims against.
-/

/-! ## A246117.P4837966504234100307

`A372594(A266832(n+2))`
-/

namespace A246117.P4837966504234100307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372594 (A266832 (n + 2)).toNat

end

end A246117.P4837966504234100307

/-! ## A246117.P15851034082061805788

`A068063(2*A266832(n+2))`
-/

namespace A246117.P15851034082061805788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (2 * A266832 (n + 2)).toNat

end

end A246117.P15851034082061805788

/-! ## A246117.P6006835419693851402

`A097805(n)+A056975(A156950(n))`
-/

namespace A246117.P6006835419693851402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A056975 (A156950 n).toNat

end

end A246117.P6006835419693851402

/-! ## A246117.P13042317538822504347

`A065120(A355360(n)*A373220(n))`
-/

namespace A246117.P13042317538822504347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A355360 n * A373220 n).toNat

end

end A246117.P13042317538822504347

/-! ## A246117.P5697653091606079143

`A089293(A288874(n))`
-/

namespace A246117.P5697653091606079143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (A288874 n).toNat

end

end A246117.P5697653091606079143

/-!
# A246118: T(n,k), for n,k >= 1, is the number of partitions of the set [n] into k blocks, where, if the blocks are arranged in order of their minimal element, the odd-indexed blocks are all singletons.

The programs for A246118, the canonical program `A246118.P9329301159229723952` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246118 has offset 1).

The definition of A246118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246118.P9329301159229723952

`floor((col(n)+1)/2)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246118

/-- `floor((col(n)+1)/2)*T(n-1,k)+T(n-1,k-1)` -/
def P9329301159229723952.Spec : Prop :=
  ∀ n, P9329301159229723952.a n = A246118 (n + 1)

theorem P9329301159229723952.correct : P9329301159229723952.Spec := by
  intro n
  simp only [A246118, Nat.add_sub_cancel]

end A246118

/-! ## A246118.P18218850418121353093

`T(n-1,k-1)+ceil(col(n)/2)*T(n-1,k)` with `a(0)=1`
-/

namespace A246118.P18218850418121353093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ⌈(SequenceMachineLib.triCol n : ℚ) / 2⌉ * SequenceMachineLib.triUp a n

end

end A246118.P18218850418121353093

namespace A246118

/-- `T(n-1,k-1)+ceil(col(n)/2)*T(n-1,k)` -/
def P18218850418121353093.Spec : Prop :=
  ∀ n, P18218850418121353093.a n = A246118 (n + 1)

end A246118

/-! ## A246118.P7652799396796861588

`∑{d}[A091480(n+1), A063062(#)]`
-/

namespace A246118.P7652799396796861588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A063062 d

end

end A246118.P7652799396796861588

namespace A246118

/-- `∑{d}[A091480(n+1), A063062(#)]` -/
def P7652799396796861588.Spec : Prop :=
  ∀ n, P7652799396796861588.a n = A246118 (n + 1)

end A246118

/-! ## A246118.P6692137775207310695

`A117707(A123125(n))-A002262(A299905(n))`
-/

namespace A246118.P6692137775207310695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A123125 n).toNat - A002262 (A299905 n).toNat

end

end A246118.P6692137775207310695

namespace A246118

/-- `A117707(A123125(n))-A002262(A299905(n))` -/
def P6692137775207310695.Spec : Prop :=
  ∀ n, P6692137775207310695.a n = A246118 (n + 1)

end A246118

/-! ## A246118.P17794136070024899517

`A007093(A358575(n+1)%A196084(3*n+2))`
-/

namespace A246118.P17794136070024899517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A358575 (n + 1)) (A196084 (3 * n + 2))).toNat

end

end A246118.P17794136070024899517

namespace A246118

/-- `A007093(A358575(n+1)%A196084(3*n+2))` -/
def P17794136070024899517.Spec : Prop :=
  ∀ n, P17794136070024899517.a n = A246118 (n + 1)

end A246118

/-!
# A246119: a(n) is the least k such that k^(2^n)*(k^(2^n) - 1) + 1 is prime.

The programs for A246119, there is no canonical definition to state claims against.
-/

/-! ## A246119.P11699239472254199072

`A085398(3*2^(n+1))`
-/

namespace A246119.P11699239472254199072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (3 * 2 ^ (n + 1))

end

end A246119.P11699239472254199072

/-! ## A246119.P7437227186573955136

`A205506(A022331(n))`
-/

namespace A246119.P7437227186573955136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (A022331 n).toNat

end

end A246119.P7437227186573955136

/-! ## A246119.P704214357527109729

`A205506(∑[A020915(n)])`
-/

namespace A246119.P704214357527109729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246119.P704214357527109729

/-! ## A246119.P4104849485480482092

`A205506(A005206(∑[n+1]))`
-/

namespace A246119.P4104849485480482092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (A005206 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A246119.P4104849485480482092

/-! ## A246119.P2289562150305168942

`A205506(A005378(∑[n+1]))`
-/

namespace A246119.P2289562150305168942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (A005378 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A246119.P2289562150305168942

/-!
# A246120: Least k such that k^(3^n)*(k^(3^n) - 1) + 1 is prime.

The programs for A246120, there is no canonical definition to state claims against.
-/

/-! ## A246120.P1155643382145833908

`A085398(2*3^(n+1))`
-/

namespace A246120.P1155643382145833908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (2 * 3 ^ (n + 1))

end

end A246120.P1155643382145833908

/-! ## A246120.P1495044371730474140

`A205506(A022330(n))`
-/

namespace A246120.P1495044371730474140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (A022330 n).toNat

end

end A246120.P1495044371730474140

/-! ## A246120.P1240263768961090817

`A205506(∑[record[A094950(n)]])`
-/

namespace A246120.P1240263768961090817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094950 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246120.P1240263768961090817

/-! ## A246120.P12026791206443938200

`A205506(∑[A005378(n)+n])`
-/

namespace A246120.P12026791206443938200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246120.P12026791206443938200

/-!
# A246121: Least k such that k^(6^n)*(k^(6^n) - 1) + 1 is prime.

The programs for A246121, there is no canonical definition to state claims against.
-/

/-! ## A246121.P13946343370107414067

`A205506(A202821(n))`
-/

namespace A246121.P13946343370107414067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (A202821 n).toNat

end

end A246121.P13946343370107414067

/-!
# A246122: Number of inequivalent n X n matrices with entries from [6], where equivalence means permutations of rows or columns or the symbol set.

The programs for A246122, there is no canonical definition to state claims against.
-/

/-! ## A246122.P17744525588914458586

`A242095(eq[6, A025581(n)])`
-/

namespace A246122.P17744525588914458586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246122.P17744525588914458586

/-! ## A246122.P8172647153605126989

`A242095(eq[4, A219347(n)]-1)`
-/

namespace A246122.P8172647153605126989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A246122.P8172647153605126989

/-!
# A246123: Number of inequivalent n X n matrices with entries from [7], where equivalence means permutations of rows or columns or the symbol set.

The programs for A246123, there is no canonical definition to state claims against.
-/

/-! ## A246123.P8563501749396835125

`A242095(eq[7, A025581(n)])`
-/

namespace A246123.P8563501749396835125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246123.P8563501749396835125

/-! ## A246123.P2233870579576068372

`A242095(eq[5, A219347(n)]-1)`
-/

namespace A246123.P2233870579576068372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A246123.P2233870579576068372

/-!
# A246124: Number of inequivalent n X n matrices with entries from [8], where equivalence means permutations of rows or columns or the symbol set.

The programs for A246124, there is no canonical definition to state claims against.
-/

/-! ## A246124.P12561244653695037609

`A242095(eq[8, A025581(n)])`
-/

namespace A246124.P12561244653695037609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246124.P12561244653695037609

/-! ## A246124.P6753016059619640878

`A242095(eq[6, A219347(n)]-1)`
-/

namespace A246124.P6753016059619640878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A246124.P6753016059619640878

/-!
# A246127: Limiting block extension of the (2,1)-version of the infinite Fibonacci word A014675 with first term as initial block.

The programs for A246127, the canonical program `A246127.P4297339390832091086` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246127 has offset 0).

The definition of A246127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246127.P4297339390832091086

`Δ[floor(ϕ*(sqrt(2)+n+1))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246127

/-- `Δ[floor(ϕ*(sqrt(2)+n+1))]` -/
def P4297339390832091086.Spec : Prop :=
  ∀ n, P4297339390832091086.a n = A246127 n

theorem P4297339390832091086.correct : P4297339390832091086.Spec := by
  intro n
  simp only [A246127]

end A246127

/-! ## A246127.P9068556114862780734

`A245920(n+38)`
-/

namespace A246127.P9068556114862780734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (n + 38)

end

end A246127.P9068556114862780734

namespace A246127

/-- `A245920(n+38)` -/
def P9068556114862780734.Spec : Prop :=
  ∀ n, P9068556114862780734.a n = A246127 n

end A246127

/-! ## A246127.P10159395186389538281

`A014675(A246128(n)+n)`
-/

namespace A246127.P10159395186389538281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A246128 n + (n : ℤ)).toNat

end

end A246127.P10159395186389538281

namespace A246127

/-- `A014675(A246128(n)+n)` -/
def P10159395186389538281.Spec : Prop :=
  ∀ n, P10159395186389538281.a n = A246127 n

end A246127

/-! ## A246127.P9174652127723471338

`A022921(A125994(n+1))`
-/

namespace A246127.P9174652127723471338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 (A125994 (n + 1)).toNat

end

end A246127.P9174652127723471338

namespace A246127

/-- `A022921(A125994(n+1))` -/
def P9174652127723471338.Spec : Prop :=
  ∀ n, P9174652127723471338.a n = A246127 n

end A246127

/-!
# A246128: Index sequence for limit-block extending the (2,1)-version of the infinite Fibonacci word A014675 with first term as initial block.

The programs for A246128, there is no canonical definition to state claims against.
-/

/-! ## A246128.P12676697809634278588

`lt[A000537(n+1), A127816(A134566(n+1))]`
-/

namespace A246128.P12676697809634278588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127816 (A134566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246128.P12676697809634278588

/-! ## A246128.P290748552291336033

`lt[A036896(n+1), A127816(A134566(n+1))]`
-/

namespace A246128.P290748552291336033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127816 (A134566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246128.P290748552291336033

/-! ## A246128.P1324676198071793256

`lt[A116581(n+1), A127816(A134566(n+1))]`
-/

namespace A246128.P1324676198071793256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127816 (A134566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246128.P1324676198071793256

/-! ## A246128.P18401059286763582373

`lt[A214092(n+1), A127816(A134566(n+1))]`
-/

namespace A246128.P18401059286763582373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127816 (A134566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246128.P18401059286763582373

/-! ## A246128.P10104178643813933609

`lt[A008778(3*n+1), A127816(A134566(n+1))]`
-/

namespace A246128.P10104178643813933609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127816 (A134566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246128.P10104178643813933609

/-!
# A246130: Binomial(2n,n)-2 mod n.

The programs for A246130, the canonical program `A246130.P11041075209916409176` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246130 has offset 1).

The definition of A246130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246130.P11041075209916409176

`(C(2*(n+1), n+1)-2)%(n+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246130

/-- `(C(2*(n+1), n+1)-2)%(n+1)` -/
def P11041075209916409176.Spec : Prop :=
  ∀ n, P11041075209916409176.a n = A246130 (n + 1)

theorem P11041075209916409176.correct : P11041075209916409176.Spec := by
  intro n
  simp only [A246130, Nat.add_sub_cancel]

end A246130

/-! ## A246130.P2773987684037509216

`A246132(n+1)%(n+1)`
-/

namespace A246130.P2773987684037509216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246132 (n + 1)) (n + 1 : ℤ)

end

end A246130.P2773987684037509216

namespace A246130

/-- `A246132(n+1)%(n+1)` -/
def P2773987684037509216.Spec : Prop :=
  ∀ n, P2773987684037509216.a n = A246130 (n + 1)

end A246130

/-! ## A246130.P1629876657748311496

`A246133(n+1)%(n+1)`
-/

namespace A246130.P1629876657748311496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246133 (n + 1)) (n + 1 : ℤ)

end

end A246130.P1629876657748311496

namespace A246130

/-- `A246133(n+1)%(n+1)` -/
def P1629876657748311496.Spec : Prop :=
  ∀ n, P1629876657748311496.a n = A246130 (n + 1)

end A246130

/-! ## A246130.P3848056064903545010

`A246134(n+1)%(n+1)`
-/

namespace A246130.P3848056064903545010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246134 (n + 1)) (n + 1 : ℤ)

end

end A246130.P3848056064903545010

namespace A246130

/-- `A246134(n+1)%(n+1)` -/
def P3848056064903545010.Spec : Prop :=
  ∀ n, P3848056064903545010.a n = A246130 (n + 1)

end A246130

/-! ## A246130.P15267179303442612237

`(A059288(n+1)-1+n)%(n+1)`
-/

namespace A246130.P15267179303442612237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059288 (n + 1) - 1 + (n : ℤ)) (n + 1 : ℤ)

end

end A246130.P15267179303442612237

namespace A246130

/-- `(A059288(n+1)-1+n)%(n+1)` -/
def P15267179303442612237.Spec : Prop :=
  ∀ n, P15267179303442612237.a n = A246130 (n + 1)

end A246130

/-! ## A246130.P5225269862296720290

`(2*(A099908(n+1)+n))%(n+1)`
-/

namespace A246130.P5225269862296720290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A099908 (n + 1) + (n : ℤ))) (n + 1 : ℤ)

end

end A246130.P5225269862296720290

namespace A246130

/-- `(2*(A099908(n+1)+n))%(n+1)` -/
def P5225269862296720290.Spec : Prop :=
  ∀ n, P5225269862296720290.a n = A246130 (n + 1)

end A246130

/-! ## A246130.P8270953664202685397

`A120304(n+1)%(n+1)`
-/

namespace A246130.P8270953664202685397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120304 (n + 1)) (n + 1 : ℤ)

end

end A246130.P8270953664202685397

namespace A246130

/-- `A120304(n+1)%(n+1)` -/
def P8270953664202685397.Spec : Prop :=
  ∀ n, P8270953664202685397.a n = A246130 (n + 1)

end A246130

/-! ## A246130.P3784778255945415714

`(A000108(n+1)-2)%(n+1)`
-/

namespace A246130.P3784778255945415714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (n + 1) - 2) (n + 1 : ℤ)

end

end A246130.P3784778255945415714

namespace A246130

/-- `(A000108(n+1)-2)%(n+1)` -/
def P3784778255945415714.Spec : Prop :=
  ∀ n, P3784778255945415714.a n = A246130 (n + 1)

end A246130

/-! ## A246130.P7007682200929877946

`A115112(n+1)%(n+1)`
-/

namespace A246130.P7007682200929877946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115112 (n + 1)) (n + 1 : ℤ)

end

end A246130.P7007682200929877946

namespace A246130

/-- `A115112(n+1)%(n+1)` -/
def P7007682200929877946.Spec : Prop :=
  ∀ n, P7007682200929877946.a n = A246130 (n + 1)

end A246130

/-! ## A246130.P6268646115677476881

`A171074(n+1)%(n+1)`
-/

namespace A246130.P6268646115677476881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171074 (n + 1)) (n + 1 : ℤ)

end

end A246130.P6268646115677476881

namespace A246130

/-- `A171074(n+1)%(n+1)` -/
def P6268646115677476881.Spec : Prop :=
  ∀ n, P6268646115677476881.a n = A246130 (n + 1)

end A246130

/-! ## A246130.P1145258980821218466

`A218008(2*n+1)%(n+1)`
-/

namespace A246130.P1145258980821218466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218008 (2 * n + 1)) (n + 1 : ℤ)

end

end A246130.P1145258980821218466

namespace A246130

/-- `A218008(2*n+1)%(n+1)` -/
def P1145258980821218466.Spec : Prop :=
  ∀ n, P1145258980821218466.a n = A246130 (n + 1)

end A246130

/-! ## A246130.P8184342713781401804

`A371036(n+2)%(n+1)`
-/

namespace A246130.P8184342713781401804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371036 (n + 2)) (n + 1 : ℤ)

end

end A246130.P8184342713781401804

namespace A246130

/-- `A371036(n+2)%(n+1)` -/
def P8184342713781401804.Spec : Prop :=
  ∀ n, P8184342713781401804.a n = A246130 (n + 1)

end A246130

/-!
# A246132: Binomial(2n, n) - 2 mod n^2.

The programs for A246132, the canonical program `A246132.P9961157621229792573` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246132 has offset 1).

The definition of A246132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246132.P9961157621229792573

`(C(2*(n+1), n+1)-2)%(n+1)²`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246132

/-- `(C(2*(n+1), n+1)-2)%(n+1)²` -/
def P9961157621229792573.Spec : Prop :=
  ∀ n, P9961157621229792573.a n = A246132 (n + 1)

theorem P9961157621229792573.correct : P9961157621229792573.Spec := by
  intro n
  simp only [A246132, Nat.add_sub_cancel]

end A246132

/-! ## A246132.P201002715976624725

`A246133(n+1)%(n+1)²`
-/

namespace A246132.P201002715976624725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246133 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A246132.P201002715976624725

namespace A246132

/-- `A246133(n+1)%(n+1)²` -/
def P201002715976624725.Spec : Prop :=
  ∀ n, P201002715976624725.a n = A246132 (n + 1)

end A246132

/-! ## A246132.P14305279885904439507

`A246134(n+1)%(n+1)²`
-/

namespace A246132.P14305279885904439507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246134 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A246132.P14305279885904439507

namespace A246132

/-- `A246134(n+1)%(n+1)²` -/
def P14305279885904439507.Spec : Prop :=
  ∀ n, P14305279885904439507.a n = A246132 (n + 1)

end A246132

/-! ## A246132.P13364691991182901983

`(A000984(n+1)-2)%(n+1)²`
-/

namespace A246132.P13364691991182901983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (n + 1) - 2) ((n + 1) ^ 2 : ℤ)

end

end A246132.P13364691991182901983

namespace A246132

/-- `(A000984(n+1)-2)%(n+1)²` -/
def P13364691991182901983.Spec : Prop :=
  ∀ n, P13364691991182901983.a n = A246132 (n + 1)

end A246132

/-! ## A246132.P1957734960886099314

`A115112(n+1)%∑[A005408(n)]`
-/

namespace A246132.P1957734960886099314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115112 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246132.P1957734960886099314

namespace A246132

/-- `A115112(n+1)%∑[A005408(n)]` -/
def P1957734960886099314.Spec : Prop :=
  ∀ n, P1957734960886099314.a n = A246132 (n + 1)

end A246132

/-! ## A246132.P1598603925245729741

`A171074(n+1)%A162395(n+1)`
-/

namespace A246132.P1598603925245729741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171074 (n + 1)) (A162395 (n + 1))

end

end A246132.P1598603925245729741

namespace A246132

/-- `A171074(n+1)%A162395(n+1)` -/
def P1598603925245729741.Spec : Prop :=
  ∀ n, P1598603925245729741.a n = A246132 (n + 1)

end A246132

/-! ## A246132.P2491383283712753974

`A005843(A056615(n+1))%A162395(n+1)`
-/

namespace A246132.P2491383283712753974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A056615 (n + 1)).toNat) (A162395 (n + 1))

end

end A246132.P2491383283712753974

namespace A246132

/-- `A005843(A056615(n+1))%A162395(n+1)` -/
def P2491383283712753974.Spec : Prop :=
  ∀ n, P2491383283712753974.a n = A246132 (n + 1)

end A246132

/-! ## A246132.P1627316539164432335

`(A007318(A046092(n+1))-2)%(n+1)²`
-/

namespace A246132.P1627316539164432335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A046092 (n + 1)).toNat - 2) ((n + 1) ^ 2 : ℤ)

end

end A246132.P1627316539164432335

namespace A246132

/-- `(A007318(A046092(n+1))-2)%(n+1)²` -/
def P1627316539164432335.Spec : Prop :=
  ∀ n, P1627316539164432335.a n = A246132 (n + 1)

end A246132

/-!
# A246133: a(n) = (binomial(2n, n) - 2) mod n^3.

The programs for A246133, the canonical program `A246133.P10319213075815383327` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246133 has offset 1).

The definition of A246133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(C(2*(n+1), n+1)-2)%((n+1)^3)` (program `A246133.P10319213075815383327`, by `A246133.P10319213075815383327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246133.P10319213075815383327

`(C(2*(n+1), n+1)-2)%((n+1)^3)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246133

/-- `(C(2*(n+1), n+1)-2)%((n+1)^3)` -/
def P10319213075815383327.Spec : Prop :=
  ∀ n, P10319213075815383327.a n = A246133 (n + 1)

theorem P10319213075815383327.correct : P10319213075815383327.Spec := by
  intro n
  simp only [A246133, Nat.add_sub_cancel]

end A246133

/-! ## A246133.P2994070847171504684

`A246134(n+1)%∑[A003215(n)]`
-/

namespace A246133.P2994070847171504684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246134 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246133.P2994070847171504684

namespace A246133

/-- `A246134(n+1)%∑[A003215(n)]` -/
def P2994070847171504684.Spec : Prop :=
  ∀ n, P2994070847171504684.a n = A246133 (n + 1)

end A246133

/-! ## A246133.P14945617118933992340

`(A000984(n+1)-2)%((n+1)^3)`
-/

namespace A246133.P14945617118933992340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (n + 1) - 2) ((n + 1) ^ 3 : ℤ)

end

end A246133.P14945617118933992340

namespace A246133

/-- `(A000984(n+1)-2)%((n+1)^3)` -/
def P14945617118933992340.Spec : Prop :=
  ∀ n, P14945617118933992340.a n = A246133 (n + 1)

end A246133

/-! ## A246133.P14458711889298951240

`(A030662(n+1)-1)%Δ[C(n+1, 2)²]`
-/

namespace A246133.P14458711889298951240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030662 (n + 1) - 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A246133.P14458711889298951240

namespace A246133

/-- `(A030662(n+1)-1)%Δ[C(n+1, 2)²]` -/
def P14458711889298951240.Spec : Prop :=
  ∀ n, P14458711889298951240.a n = A246133 (n + 1)

end A246133

/-! ## A246133.P11812568032648735404

`A115112(n+1)%Δ[A000537(n)]`
-/

namespace A246133.P11812568032648735404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115112 (n + 1)) (f1 (n + 1) - f1 n)

end

end A246133.P11812568032648735404

namespace A246133

/-- `A115112(n+1)%Δ[A000537(n)]` -/
def P11812568032648735404.Spec : Prop :=
  ∀ n, P11812568032648735404.a n = A246133 (n + 1)

end A246133

/-! ## A246133.P5086108999614385264

`(A001405(2*(n+1))-2)%A000578(n+1)`
-/

namespace A246133.P5086108999614385264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 (2 * (n + 1)) - 2) (A000578 (n + 1))

end

end A246133.P5086108999614385264

namespace A246133

/-- `(A001405(2*(n+1))-2)%A000578(n+1)` -/
def P5086108999614385264.Spec : Prop :=
  ∀ n, P5086108999614385264.a n = A246133 (n + 1)

end A246133

/-!
# A246134: Binomial(2n, n) - 2 mod n^4.

The programs for A246134, the canonical program `A246134.P1950435647681452510` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246134 has offset 1).

The definition of A246134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246134.P1950435647681452510

`(C(2*(n+1), n+1)-2)%((n+1)^4)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246134

/-- `(C(2*(n+1), n+1)-2)%((n+1)^4)` -/
def P1950435647681452510.Spec : Prop :=
  ∀ n, P1950435647681452510.a n = A246134 (n + 1)

theorem P1950435647681452510.correct : P1950435647681452510.Spec := by
  intro n
  simp only [A246134, Nat.add_sub_cancel]

end A246134

/-! ## A246134.P10355359134611651948

`(A030662(n+1)-1)%(n+1)²²`
-/

namespace A246134.P10355359134611651948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030662 (n + 1) - 1) (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A246134.P10355359134611651948

namespace A246134

/-- `(A030662(n+1)-1)%(n+1)²²` -/
def P10355359134611651948.Spec : Prop :=
  ∀ n, P10355359134611651948.a n = A246134 (n + 1)

theorem P10355359134611651948.correct : P10355359134611651948.Spec := by
  intro n
  simp only [A246134, Nat.add_sub_cancel, A246134.P10355359134611651948.a, A246134.P1950435647681452510.a, A030662, A030662.P11997165729521447290.a, A115112, A115112.P11405233874723568779.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A246134

/-! ## A246134.P13188671410029875057

`(∑[A051924(n+1)]-1)%((n+1)^4)`
-/

namespace A246134.P13188671410029875057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) ((n + 1) ^ 4 : ℤ)

end

end A246134.P13188671410029875057

namespace A246134

/-- `(∑[A051924(n+1)]-1)%((n+1)^4)` -/
def P13188671410029875057.Spec : Prop :=
  ∀ n, P13188671410029875057.a n = A246134 (n + 1)

end A246134

/-! ## A246134.P18169723544815214414

`A115112(n+1)%∑[A005408(n)]²`
-/

namespace A246134.P18169723544815214414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115112 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A246134.P18169723544815214414

namespace A246134

/-- `A115112(n+1)%∑[A005408(n)]²` -/
def P18169723544815214414.Spec : Prop :=
  ∀ n, P18169723544815214414.a n = A246134 (n + 1)

end A246134

/-! ## A246134.P5399888585949100596

`(A000984(n+1)-2)%Δ[A000330(n)]²`
-/

namespace A246134.P5399888585949100596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (n + 1) - 2) ((f1 (n + 1) - f1 n) ^ 2)

end

end A246134.P5399888585949100596

namespace A246134

/-- `(A000984(n+1)-2)%Δ[A000330(n)]²` -/
def P5399888585949100596.Spec : Prop :=
  ∀ n, P5399888585949100596.a n = A246134 (n + 1)

end A246134

/-! ## A246134.P931052229800486212

`(A007318(A046092(n+1))-2)%(n+1)²²`
-/

namespace A246134.P931052229800486212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A046092 (n + 1)).toNat - 2) (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A246134.P931052229800486212

namespace A246134

/-- `(A007318(A046092(n+1))-2)%(n+1)²²` -/
def P931052229800486212.Spec : Prop :=
  ∀ n, P931052229800486212.a n = A246134 (n + 1)

end A246134

/-!
# A246137: Number of maximal classes determined by elementary Abelian p-groups.

The programs for A246137, there is no canonical definition to state claims against.
-/

/-! ## A246137.P4098214636202460906

`C((n-1)!, ((n-3)^a(n-1))²)` with `a(0)=0`
-/

namespace A246137.P4098214636202460906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (Nat.factorial ((n : ℤ) - 1).toNat) ((((n : ℤ) - 3) ^ a (n - 1)) ^ 2).toNat

end

end A246137.P4098214636202460906

/-! ## A246137.P10903086250935452554

`A097898(A014595(n+1))`
-/

namespace A246137.P10903086250935452554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097898 (A014595 (n + 1)).toNat

end

end A246137.P10903086250935452554

/-! ## A246137.P15361398363086384828

`A097898(A028495(n+1))`
-/

namespace A246137.P15361398363086384828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097898 (A028495 (n + 1)).toNat

end

end A246137.P15361398363086384828

/-!
# A246138: a(n) = (Sum_{k=0..n-1} A246065(k)) / n^2.

The programs for A246138, the canonical program `A246138.P8319497422780935460` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246138 has offset 1).

The definition of A246138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246138.P8319497422780935460

`((3*(n+1)+2)*(3*(n+1)-2)*A005802(n)-(n+3)²*A005802(n+1))/4`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A246138

/-- `((3*(n+1)+2)*(3*(n+1)-2)*A005802(n)-(n+3)²*A005802(n+1))/4` -/
def P8319497422780935460.Spec : Prop :=
  ∀ n, P8319497422780935460.a n = (A246138 (n + 1) : ℚ)

end A246138

/-! ## A246138.P9226892889347663075

`A005802(n-1)+a(n-1)` with `a(0)=-1`
-/

namespace A246138.P9226892889347663075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  A005802 (n - 1) + a (n - 1)

end

end A246138.P9226892889347663075

namespace A246138

/-- `A005802(n-1)+a(n-1)` -/
def P9226892889347663075.Spec : Prop :=
  ∀ n, P9226892889347663075.a n = A246138 (n + 1)

end A246138

/-! ## A246138.P17222006055922790294

`∑[A005802(n)]-(A005802(n)+1)`
-/

namespace A246138.P17222006055922790294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A005802 n + 1)

end

end A246138.P17222006055922790294

namespace A246138

/-- `∑[A005802(n)]-(A005802(n)+1)` -/
def P17222006055922790294.Spec : Prop :=
  ∀ n, P17222006055922790294.a n = A246138 (n + 1)

end A246138

/-! ## A246138.P18085608247003802097

`∑[A246065(n)]/(n+1)²`
-/

namespace A246138.P18085608247003802097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246065 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A246138.P18085608247003802097

namespace A246138

/-- `∑[A246065(n)]/(n+1)²` -/
def P18085608247003802097.Spec : Prop :=
  ∀ n, P18085608247003802097.a n = (A246138 (n + 1) : ℚ)

end A246138

/-! ## A246138.P8903417116559474366

`∑[A214015(A052905(n)+1)]-1`
-/

namespace A246138.P8903417116559474366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A246138.P8903417116559474366

namespace A246138

/-- `∑[A214015(A052905(n)+1)]-1` -/
def P8903417116559474366.Spec : Prop :=
  ∀ n, P8903417116559474366.a n = A246138 (n + 1)

end A246138

/-!
# A246139: a(n) = 2^n + 10.

The programs for A246139, the canonical program `A246139.P9892592564014298492` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246139 has offset 0).

The definition of A246139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+10` (program `A246139.P9892592564014298492`, by `A246139.P9892592564014298492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246139.P9892592564014298492

`2^n+10`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246139

/-- `2^n+10` -/
def P9892592564014298492.Spec : Prop :=
  ∀ n, (P9892592564014298492.a n : ℤ) = A246139 n

theorem P9892592564014298492.correct : P9892592564014298492.Spec := by
  intro n
  simp only [A246139]

end A246139

/-!
# A246140: Limiting block extension of A006337 (difference sequence of the Beatty sequence for sqrt(2)) with first term as initial block.

The programs for A246140, the canonical program `A246140.P13755815379108080124` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246140 has offset 1).

The definition of A246140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246140.P12548241714797071380

`Δ[floor((n+8)*sqrt(2))]`
-/

namespace A246140.P12548241714797071380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 8 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246140.P12548241714797071380

namespace A246140

/-- `Δ[floor((n+8)*sqrt(2))]` -/
def P12548241714797071380.Spec : Prop :=
  ∀ n, P12548241714797071380.a n = A246140 (n + 1)

theorem P12548241714797071380.correct : P12548241714797071380.Spec := by
  intro n
  simp only [A246140, Nat.add_sub_cancel, A246140.P12548241714797071380.f1, A246140.P12548241714797071380.a, A246140.P13755815379108080124.a, A006337, A006337.P7691167176776546628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A246140

/-! ## A246140.P12858490790895983979

`runs[floor((12+n)/sqrt(2))]`
-/

namespace A246140.P12858490790895983979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 + n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A246140.P12858490790895983979

namespace A246140

/-- `runs[floor((12+n)/sqrt(2))]` -/
def P12858490790895983979.Spec : Prop :=
  ∀ n, (P12858490790895983979.a n : ℤ) = A246140 (n + 1)

end A246140

/-! ## A246140.P13755815379108080124

`A006337(n+8)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246140

/-- `A006337(n+8)` -/
def P13755815379108080124.Spec : Prop :=
  ∀ n, P13755815379108080124.a n = A246140 (n + 1)

theorem P13755815379108080124.correct : P13755815379108080124.Spec := by
  intro n
  simp only [A246140, Nat.add_sub_cancel]

end A246140

/-! ## A246140.P13614385858917810920

`A000041(Δ[ceil((8+n)*sqrt(2))])`
-/

namespace A246140.P13614385858917810920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(8 + n : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A246140.P13614385858917810920

namespace A246140

/-- `A000041(Δ[ceil((8+n)*sqrt(2))])` -/
def P13614385858917810920.Spec : Prop :=
  ∀ n, P13614385858917810920.a n = A246140 (n + 1)

end A246140

/-! ## A246140.P13821698729001401971

`A005117(Δ[ceil((8+n)*sqrt(2))])`
-/

namespace A246140.P13821698729001401971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(8 + n : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f1 (n + 1) - f1 n).toNat

end

end A246140.P13821698729001401971

namespace A246140

/-- `A005117(Δ[ceil((8+n)*sqrt(2))])` -/
def P13821698729001401971.Spec : Prop :=
  ∀ n, P13821698729001401971.a n = A246140 (n + 1)

end A246140

/-! ## A246140.P602362589948175923

`A106608(Δ[ceil((n+8)*sqrt(2))])`
-/

namespace A246140.P602362589948175923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 8 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (f1 (n + 1) - f1 n).toNat

end

end A246140.P602362589948175923

namespace A246140

/-- `A106608(Δ[ceil((n+8)*sqrt(2))])` -/
def P602362589948175923.Spec : Prop :=
  ∀ n, P602362589948175923.a n = A246140 (n + 1)

end A246140

/-! ## A246140.P17754677677312580172

`A236750(Δ[ceil((n+8)*sqrt(2))])`
-/

namespace A246140.P17754677677312580172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 8 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236750 (f1 (n + 1) - f1 n).toNat

end

end A246140.P17754677677312580172

namespace A246140

/-- `A236750(Δ[ceil((n+8)*sqrt(2))])` -/
def P17754677677312580172.Spec : Prop :=
  ∀ n, P17754677677312580172.a n = A246140 (n + 1)

end A246140

/-! ## A246140.P14765416935694699517

`A007318(Δ[A001952(n+8)])`
-/

namespace A246140.P14765416935694699517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat

end

end A246140.P14765416935694699517

namespace A246140

/-- `A007318(Δ[A001952(n+8)])` -/
def P14765416935694699517.Spec : Prop :=
  ∀ n, P14765416935694699517.a n = A246140 (n + 1)

end A246140

/-! ## A246140.P9639715838672065257

`A272314(Δ[A001952(n+8)])`
-/

namespace A246140.P9639715838672065257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272314 (f1 (n + 1) - f1 n).toNat

end

end A246140.P9639715838672065257

namespace A246140

/-- `A272314(Δ[A001952(n+8)])` -/
def P9639715838672065257.Spec : Prop :=
  ∀ n, P9639715838672065257.a n = A246140 (n + 1)

end A246140

/-! ## A246140.P11274867138042461035

`A326335(Δ[A001952(n+8)])`
-/

namespace A246140.P11274867138042461035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326335 (f1 (n + 1) - f1 n).toNat

end

end A246140.P11274867138042461035

namespace A246140

/-- `A326335(Δ[A001952(n+8)])` -/
def P11274867138042461035.Spec : Prop :=
  ∀ n, P11274867138042461035.a n = A246140 (n + 1)

end A246140

/-!
# A246141: Index sequence for limit-block extending A006337 (difference sequence of the Beatty sequence for sqrt(2)) with first term as initial block.

The programs for A246141, there is no canonical definition to state claims against.
-/

/-! ## A246141.P15391110291124942968

`ceil(log2(A027714(∑[n+1]+1)+1))`
-/

namespace A246141.P15391110291124942968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A027714 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1 : ℝ)⌉

end

end A246141.P15391110291124942968

/-! ## A246141.P16648075896535077569

`∑[A151714(∏{p}[n+1, #*val(n+1, #)]²)]`
-/

namespace A246141.P16648075896535077569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 ((∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246141.P16648075896535077569

/-! ## A246141.P16095067883094594845

`eq[1, A221035(A331819(n+1))]`
-/

namespace A246141.P16095067883094594845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A331819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246141.P16095067883094594845

/-! ## A246141.P6450308678922653712

`∑[A151714(A000026(n+1)²)]`
-/

namespace A246141.P6450308678922653712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (A000026 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246141.P6450308678922653712

/-! ## A246141.P3381774248182672182

`∑[dr(A048673(A345369(n+1)))]`
-/

namespace A246141.P3381774248182672182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A048673 (A345369 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246141.P3381774248182672182

/-!
# A246142: Limiting block extension of A004539 (base-2 representation of sqrt(2)) with first term as initial block.

The programs for A246142, there is no canonical definition to state claims against.
-/

/-! ## A246142.P6763357802049774988

`round(cos(∑[cos(59-n)])²)`
-/

namespace A246142.P6763357802049774988
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (59 - (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A246142.P6763357802049774988

/-! ## A246142.P10273593168442847543

`floor(2*cos(∑[cos(59-n)])²)`
-/

namespace A246142.P10273593168442847543
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (59 - (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.cos (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A246142.P10273593168442847543

/-! ## A246142.P2891005768884464723

`Δ[ceil(∑[cos(n)²])]^(n-1)`
-/

namespace A246142.P2891005768884464723
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A246142.P2891005768884464723

/-! ## A246142.P18284207921596906765

`round(sin(n+6)^(n%6))^6`
-/

namespace A246142.P18284207921596906765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (n + 6 : ℝ) ^ (n % 6)) ^ 6

end

end A246142.P18284207921596906765

/-! ## A246142.P12132826441940763621

`char[A226279(n)+lcm(2, n)]`
-/

namespace A246142.P12132826441940763621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226279 n + (Nat.lcm 2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A246142.P12132826441940763621

/-!
# A246144: Limiting block extension of A000002 (Kolakoski sequence) with first term as initial block.

The programs for A246144, there is no canonical definition to state claims against.
-/

/-! ## A246144.P498427291957565605

`A000002(A246145(n+1)+n)`
-/

namespace A246144.P498427291957565605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A246145 (n + 1) + (n : ℤ)).toNat

end

end A246144.P498427291957565605

/-! ## A246144.P11987655069279777974

`2/A049705(A246145(n+1)+n)`
-/

namespace A246144.P11987655069279777974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A049705 (A246145 (n + 1) + (n : ℤ)).toNat : ℚ)

end

end A246144.P11987655069279777974

/-! ## A246144.P1700115722432232345

`A006928(A246145(n+1)+abs(2-n)+1)`
-/

namespace A246144.P1700115722432232345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A246145 (n + 1) + (|2 - (n : ℤ)| + 1)).toNat

end

end A246144.P1700115722432232345

/-! ## A246144.P17156269713440469194

`A078880(A246145(n+1)+abs(2-n)+1)`
-/

namespace A246144.P17156269713440469194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (A246145 (n + 1) + (|2 - (n : ℤ)| + 1)).toNat

end

end A246144.P17156269713440469194

/-! ## A246144.P3933700169121439148

`A001285(lt[A160217(n+1), A104446(n+1)])`
-/

namespace A246144.P3933700169121439148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A246144.P3933700169121439148

/-!
# A246146: Limiting block extension of A010060 (Thue-Morse sequence) with first term as initial block.

The programs for A246146, there is no canonical definition to state claims against.
-/

/-! ## A246146.P4542446571454525912

`char[xor(n, 2*n)-52]`
-/

namespace A246146.P4542446571454525912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - 52

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A246146.P4542446571454525912

/-! ## A246146.P9755100303601754730

`char[459-xor(n, Δ[n²])]`
-/

namespace A246146.P9755100303601754730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  459 - Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A246146.P9755100303601754730

/-! ## A246146.P8989203167362849448

`record[val(n, 2)-a(n-1)]%2` with `a(0)=52, a(1)=49`
-/

namespace A246146.P8989203167362849448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [52, 49] fun n f1 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A246146.P8989203167362849448

/-! ## A246146.P11235501606642102891

`A298952(n+20)`
-/

namespace A246146.P11235501606642102891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 (n + 20)

end

end A246146.P11235501606642102891

/-! ## A246146.P4616372831069506538

`A010059(n+52)`
-/

namespace A246146.P4616372831069506538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 52)

end

end A246146.P4616372831069506538

/-! ## A246146.P6619944736996531745

`A092436(n+52)`
-/

namespace A246146.P6619944736996531745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092436 (n + 52)

end

end A246146.P6619944736996531745

/-! ## A246146.P13339743948353514955

`char[A059010(n)-20]`
-/

namespace A246146.P13339743948353514955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n - 20

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A246146.P13339743948353514955

/-! ## A246146.P4936163127266997988

`char[A038556(n)-52]`
-/

namespace A246146.P4936163127266997988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 n - 52

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A246146.P4936163127266997988

/-! ## A246146.P16823169522646734397

`char[A048724(n)-52]`
-/

namespace A246146.P16823169522646734397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n - 52

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A246146.P16823169522646734397

/-! ## A246146.P3175620483471970001

`2-A001285(n+52)`
-/

namespace A246146.P3175620483471970001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001285 (n + 52)

end

end A246146.P3175620483471970001

/-!
# A246148: Number of inequivalent n X 3 binary matrices, where equivalence means permutations of rows or columns or the symbol set.

The programs for A246148, the canonical program `A246148.P4204923758033149972` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246148 has offset 0).

The definition of A246148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246148.P4204923758033149972

`ogf((1-x+2x^2+x^3+4x^4-2x^5+4x^6+x^7+2x^8-x^9+x^10)/(1-3x+7x^3-3x^4-6x^5-x^6+9x^7+3x^8-14x^9+3x^10+9x^11-x^12-6x^13-3x^14+7x^15-3x^17+x^18))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246148

/-- `ogf((1-x+2x^2+x^3+4x^4-2x^5+4x^6+x^7+2x^8-x^9+x^10)/(1-3x+7x^3-3x^4-6x^5-x^6+9x^7+3x^8-14x^9+3x^10+9x^11-x^12-6x^13-3x^14+7x^15-3x^17+x^18))` -/
def P4204923758033149972.Spec : Prop :=
  ∀ n, P4204923758033149972.a n = A246148 n

theorem P4204923758033149972.correct : P4204923758033149972.Spec := by
  intro n
  simp only [A246148]

end A246148

/-! ## A246148.P13894356745199386190

`A242093(∑[n+3]+n+3)`
-/

namespace A246148.P13894356745199386190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A246148.P13894356745199386190

namespace A246148

/-- `A242093(∑[n+3]+n+3)` -/
def P13894356745199386190.Spec : Prop :=
  ∀ n, P13894356745199386190.a n = A246148 n

end A246148

/-! ## A246148.P4058864252288125604

`A242093(A046691(n+2))%A025573(n+2)`
-/

namespace A246148.P4058864252288125604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242093 (A046691 (n + 2)).toNat) (A025573 (n + 2))

end

end A246148.P4058864252288125604

namespace A246148

/-- `A242093(A046691(n+2))%A025573(n+2)` -/
def P4058864252288125604.Spec : Prop :=
  ∀ n, P4058864252288125604.a n = A246148 n

end A246148

/-! ## A246148.P6210511982338771244

`A040345(90*n+7)*A242093(A052905(n)+8)`
-/

namespace A246148.P6210511982338771244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040345 (90 * n + 7) * A242093 (A052905 n + 8).toNat

end

end A246148.P6210511982338771244

namespace A246148

/-- `A040345(90*n+7)*A242093(A052905(n)+8)` -/
def P6210511982338771244.Spec : Prop :=
  ∀ n, P6210511982338771244.a n = A246148 n

end A246148

/-! ## A246148.P13645073563222393513

`record[gcd(A242093(n+4), A242095(n))]`
-/

namespace A246148.P13645073563222393513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242093 (n + 4)) (A242095 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246148.P13645073563222393513

namespace A246148

/-- `record[gcd(A242093(n+4), A242095(n))]` -/
def P13645073563222393513.Spec : Prop :=
  ∀ n, (P13645073563222393513.a n : ℤ) = A246148 n

end A246148

/-!
# A246149: Number of inequivalent n X 4 binary matrices, where equivalence means permutations of rows or columns or the symbol set.

The programs for A246149, there is no canonical definition to state claims against.
-/

/-! ## A246149.P1784451187773941286

`A242093(A052905(n+2))`
-/

namespace A246149.P1784451187773941286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A052905 (n + 2)).toNat

end

end A246149.P1784451187773941286

/-! ## A246149.P3857179083519457362

`A242093(eq[4, A002262(n)])`
-/

namespace A246149.P3857179083519457362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246149.P3857179083519457362

/-! ## A246149.P11606473841159609398

`A242093(eq[4, A025581(n)])`
-/

namespace A246149.P11606473841159609398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246149.P11606473841159609398

/-! ## A246149.P706093579227664132

`A242093(A000217(n+5)-5)`
-/

namespace A246149.P706093579227664132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A000217 (n + 5) - 5).toNat

end

end A246149.P706093579227664132

/-! ## A246149.P16940441777143441779

`A242093(eq[5, A002260(n+1)])`
-/

namespace A246149.P16940441777143441779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246149.P16940441777143441779

/-!
# A246150: Number of inequivalent n X 5 binary matrices, where equivalence means permutations of rows or columns or the symbol set.

The programs for A246150, there is no canonical definition to state claims against.
-/

/-! ## A246150.P13660724615009771628

`A242093(A055999(n+3))`
-/

namespace A246150.P13660724615009771628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A055999 (n + 3)).toNat

end

end A246150.P13660724615009771628

/-! ## A246150.P5149043703302230465

`A242093(eq[5, A002262(n)])`
-/

namespace A246150.P5149043703302230465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246150.P5149043703302230465

/-! ## A246150.P14867494796326132546

`A242093(A000124(n+5)+4)`
-/

namespace A246150.P14867494796326132546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A000124 (n + 5) + 4).toNat

end

end A246150.P14867494796326132546

/-! ## A246150.P6028981905984250647

`A242093(A000217(n+6)-6)`
-/

namespace A246150.P6028981905984250647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A000217 (n + 6) - 6).toNat

end

end A246150.P6028981905984250647

/-! ## A246150.P2430129600284438084

`record[A242093(A055999(A003986(n)))]`
-/

namespace A246150.P2430129600284438084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A055999 (A003986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246150.P2430129600284438084

/-!
# A246151: Number of inequivalent n X 6 binary matrices, where equivalence means permutations of rows or columns or the symbol set.

The programs for A246151, there is no canonical definition to state claims against.
-/

/-! ## A246151.P5816375226492798348

`A242093(eq[6, A002262(n)])`
-/

namespace A246151.P5816375226492798348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246151.P5816375226492798348

/-! ## A246151.P10542807226678643698

`A242093(eq[64, A059268(n)])`
-/

namespace A246151.P10542807226678643698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246151.P10542807226678643698

/-! ## A246151.P264962695046944555

`A242093(A167614(n+5)+3)`
-/

namespace A246151.P264962695046944555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A167614 (n + 5) + 3).toNat

end

end A246151.P264962695046944555

/-! ## A246151.P9505644688911551856

`A242093(A000217(n+6)+6)`
-/

namespace A246151.P9505644688911551856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A000217 (n + 6) + 6).toNat

end

end A246151.P9505644688911551856

/-! ## A246151.P3893138847257077295

`A242093(eq[7, A002260(n+1)])`
-/

namespace A246151.P3893138847257077295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246151.P3893138847257077295

/-!
# A246152: Number of inequivalent n X 7 binary matrices, where equivalence means permutations of rows or columns or the symbol set.

The programs for A246152, there is no canonical definition to state claims against.
-/

/-! ## A246152.P9480529873691811010

`A242093(eq[7, A002262(n)])`
-/

namespace A246152.P9480529873691811010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246152.P9480529873691811010

/-! ## A246152.P1042670454201651045

`A242093(eq[7, A025581(n)])`
-/

namespace A246152.P1042670454201651045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246152.P1042670454201651045

/-! ## A246152.P17060034518462704351

`A242093(eq[7, A130270(n+1)])`
-/

namespace A246152.P17060034518462704351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246152.P17060034518462704351

/-! ## A246152.P8307943709884052383

`A242093(eq[8, A002260(n+1)])`
-/

namespace A246152.P8307943709884052383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246152.P8307943709884052383

/-! ## A246152.P4465533179972018253

`A242093(eq[8, A004736(n+1)])`
-/

namespace A246152.P4465533179972018253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246152.P4465533179972018253

/-!
# A246153: Number of inequivalent n X 8 binary matrices, where equivalence means permutations of rows or columns or the symbol set.

The programs for A246153, there is no canonical definition to state claims against.
-/

/-! ## A246153.P10697390830162838444

`A242093(eq[8, A002262(n)])`
-/

namespace A246153.P10697390830162838444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246153.P10697390830162838444

/-! ## A246153.P4904488285902723557

`A242093(eq[8, A025581(n)])`
-/

namespace A246153.P4904488285902723557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246153.P4904488285902723557

/-! ## A246153.P14408256984567033045

`record[A242093(A052905(n)+n)]`
-/

namespace A246153.P14408256984567033045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A052905 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246153.P14408256984567033045

/-! ## A246153.P8299758444869444564

`A242093(A167499(n+7)+3)`
-/

namespace A246153.P8299758444869444564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A167499 (n + 7) + 3).toNat

end

end A246153.P8299758444869444564

/-! ## A246153.P3278378472417053783

`A242093(eq[9, A002260(n+1)])`
-/

namespace A246153.P3278378472417053783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246153.P3278378472417053783

/-!
# A246154: Number of inequivalent n X 9 binary matrices, where equivalence means permutations of rows or columns or the symbol set.

The programs for A246154, there is no canonical definition to state claims against.
-/

/-! ## A246154.P9828295478014357804

`A242093(eq[9, A002262(n)])`
-/

namespace A246154.P9828295478014357804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246154.P9828295478014357804

/-! ## A246154.P1030560381832428938

`A242093(eq[9, A025581(n)])`
-/

namespace A246154.P1030560381832428938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246154.P1030560381832428938

/-! ## A246154.P6629569876949768888

`A242093(eq[19, A099375(n)])`
-/

namespace A246154.P6629569876949768888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246154.P6629569876949768888

/-! ## A246154.P2155502156284645485

`A242093(eq[10, A002260(n+1)])`
-/

namespace A246154.P2155502156284645485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246154.P2155502156284645485

/-! ## A246154.P15597204583791130031

`A242093(eq[10, A004736(n+1)])`
-/

namespace A246154.P15597204583791130031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246154.P15597204583791130031

/-!
# A246155: Number of inequivalent n X 10 binary matrices, where equivalence means permutations of rows or columns or the symbol set.

The programs for A246155, there is no canonical definition to state claims against.
-/

/-! ## A246155.P12306481155551567061

`A242093(eq[10, A002262(n)])`
-/

namespace A246155.P12306481155551567061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246155.P12306481155551567061

/-! ## A246155.P12675052012523444225

`A242093(eq[10, A025581(n)])`
-/

namespace A246155.P12675052012523444225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246155.P12675052012523444225

/-! ## A246155.P10781470518212786046

`A242093(eq[10, A144328(n+1)])`
-/

namespace A246155.P10781470518212786046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246155.P10781470518212786046

/-! ## A246155.P15700546133857021628

`A242093(eq[11, A002260(n+1)])`
-/

namespace A246155.P15700546133857021628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246155.P15700546133857021628

/-! ## A246155.P5530370753777593842

`A242093(eq[11, A004736(n+1)])`
-/

namespace A246155.P5530370753777593842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246155.P5530370753777593842

/-!
# A246156: Odd reducible polynomials over GF(2), coded in binary. (Polynomials with the constant term 1 that are reducible over GF(2)).

The programs for A246156, there is no canonical definition to state claims against.
-/

/-! ## A246156.P13669869952772331147

`or(1, A246158(n+1))`
-/

namespace A246156.P13669869952772331147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A246158 (n + 1))

end

end A246156.P13669869952772331147

/-! ## A246156.P2697788625284805243

`filter[2*n+1, A091247(#)]`
-/

namespace A246156.P2697788625284805243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j) = 1) n)

end

end A246156.P2697788625284805243

/-! ## A246156.P9844014680037012036

`lt[(n+1)%2, A091247(n)]`
-/

namespace A246156.P9844014680037012036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246156.P9844014680037012036

/-! ## A246156.P4871651722419827328

`eq[A010123(n), A091247(n)]`
-/

namespace A246156.P4871651722419827328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P4871651722419827328

/-! ## A246156.P12541140748115674254

`eq[A010127(n), A091247(n)]`
-/

namespace A246156.P12541140748115674254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P12541140748115674254

/-! ## A246156.P6378502570256449643

`eq[A010131(n), A091247(n)]`
-/

namespace A246156.P6378502570256449643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P6378502570256449643

/-! ## A246156.P7124845418194713480

`eq[A010132(n), A091247(n)]`
-/

namespace A246156.P7124845418194713480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P7124845418194713480

/-! ## A246156.P4143158860582684454

`eq[A010137(n), A091247(n)]`
-/

namespace A246156.P4143158860582684454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P4143158860582684454

/-! ## A246156.P13374894973882205654

`eq[A010146(n), A091247(n)]`
-/

namespace A246156.P13374894973882205654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P13374894973882205654

/-! ## A246156.P6470798016503174737

`eq[A010156(n), A091247(n)]`
-/

namespace A246156.P6470798016503174737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P6470798016503174737

/-! ## A246156.P8516761834083203428

`eq[A010157(n), A091247(n)]`
-/

namespace A246156.P8516761834083203428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P8516761834083203428

/-! ## A246156.P2822469840285625691

`eq[A010166(n), A091247(n)]`
-/

namespace A246156.P2822469840285625691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P2822469840285625691

/-! ## A246156.P7162026950536216114

`eq[A010167(n), A091247(n)]`
-/

namespace A246156.P7162026950536216114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010167 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P7162026950536216114

/-! ## A246156.P7880994485294448774

`eq[A010169(n), A091247(n)]`
-/

namespace A246156.P7880994485294448774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P7880994485294448774

/-! ## A246156.P11727287487090077908

`eq[A010170(n), A091247(n)]`
-/

namespace A246156.P11727287487090077908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246156.P11727287487090077908

/-! ## A246156.P18204028395228717455

`filter[A091242(n+1), #%2]`
-/

namespace A246156.P18204028395228717455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A246156.P18204028395228717455

/-! ## A246156.P2870616356025624447

`∩[A091242(n+1), A130773(n)]`
-/

namespace A246156.P2870616356025624447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246156.P2870616356025624447

/-! ## A246156.P17870865544418229964

`∩[A091242(n+1), A163985(n)]`
-/

namespace A246156.P17870865544418229964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246156.P17870865544418229964

/-! ## A246156.P16566793453785779980

`∩[A091242(n+1), A140139(n+1)]`
-/

namespace A246156.P16566793453785779980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246156.P16566793453785779980

/-! ## A246156.P3989791306692562794

`∩[A091242(n+1), A144396(n+1)]`
-/

namespace A246156.P3989791306692562794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246156.P3989791306692562794

/-!
# A246157: Reducible polynomials over GF(2) which are both odd and odious when coded in binary, or equally, which have an odd number of nonzero terms, with the constant term being 1.

The programs for A246157, there is no canonical definition to state claims against.
-/

/-! ## A246157.P13149468419868225417

`filter[A092246(n+1), A091247(#)]`
-/

namespace A246157.P13149468419868225417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A246157.P13149468419868225417

/-! ## A246157.P6210979781157131286

`∩[2*n+1, A246158(n+1)]`
-/

namespace A246157.P6210979781157131286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P6210979781157131286

/-! ## A246157.P11975282809375018776

`record[A000265(A246158(n+5))]`
-/

namespace A246157.P11975282809375018776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A246158 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246157.P11975282809375018776

/-! ## A246157.P14363536479161434062

`filter[A246156(n+1), A228495(#)]`
-/

namespace A246157.P14363536479161434062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A246157.P14363536479161434062

/-! ## A246157.P8255682372060117186

`filter[A246158(n+1), A228495(#)]`
-/

namespace A246157.P8255682372060117186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A246157.P8255682372060117186

/-! ## A246157.P8709537306670028436

`filter[A246158(n+1), A254651(#)]`
-/

namespace A246157.P8709537306670028436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A246157.P8709537306670028436

/-! ## A246157.P16377372189778547178

`∩[A092246(n+1), A246156(n+1)]`
-/

namespace A246157.P16377372189778547178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P16377372189778547178

/-! ## A246157.P18053449591957261364

`record[gcd(A246156(n+5), A246158(n+5))]`
-/

namespace A246157.P18053449591957261364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246156 (n + 5)) (A246158 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246157.P18053449591957261364

/-! ## A246157.P15444094862118401500

`∩[A091855(n+1), A246156(n+1)]`
-/

namespace A246157.P15444094862118401500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P15444094862118401500

/-! ## A246157.P11069691373410274816

`∩[A246156(n+1), A075930(n)]`
-/

namespace A246157.P11069691373410274816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P11069691373410274816

/-! ## A246157.P12301327254655533436

`∩[A246158(n+1), A020742(n)]`
-/

namespace A246157.P12301327254655533436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P12301327254655533436

/-! ## A246157.P1634446807890447042

`∩[A246158(n+1), A004273(n)]`
-/

namespace A246157.P1634446807890447042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P1634446807890447042

/-! ## A246157.P4379108551655919228

`∩[A246158(n+1), A062545(n)]`
-/

namespace A246157.P4379108551655919228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P4379108551655919228

/-! ## A246157.P15270506528500901788

`∩[A246158(n+1), A130773(n)]`
-/

namespace A246157.P15270506528500901788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P15270506528500901788

/-! ## A246157.P8104368782249551604

`filter[A006364(2*(n+1)), A091247(#)]`
-/

namespace A246157.P8104368782249551604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006364 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A246157.P8104368782249551604

/-! ## A246157.P527883763483164002

`∩[A000069(n+1), A246156(n+1)]`
-/

namespace A246157.P527883763483164002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P527883763483164002

/-! ## A246157.P14518050124127157307

`∩[A006364(n+1), A246156(n+1)]`
-/

namespace A246157.P14518050124127157307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P14518050124127157307

/-! ## A246157.P11267980081129796864

`∩[A026147(n+1), A246156(n+1)]`
-/

namespace A246157.P11267980081129796864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P11267980081129796864

/-! ## A246157.P7004048728665645843

`filter[A246156(n+1), A010060(#)]`
-/

namespace A246157.P7004048728665645843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A246157.P7004048728665645843

/-! ## A246157.P5659110671082608704

`∩[A246158(n+1), A254614(n+1)]`
-/

namespace A246157.P5659110671082608704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246157.P5659110671082608704

/-!
# A246158: Odious reducible polynomials over GF(2), coded in binary. (Polynomials with an odd number of nonzero terms that are reducible over GF(2)).

The programs for A246158, there is no canonical definition to state claims against.
-/

/-! ## A246158.P7032165207859107959

`eq[-a(and(n, n-1)), A091247(n)]` with `a(0)=-1`
-/

namespace A246158.P7032165207859107959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246158.P7032165207859107959

/-! ## A246158.P13440495363420531620

`filter[A000069(1+n), A091247(#)]`
-/

namespace A246158.P13440495363420531620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A246158.P13440495363420531620

/-! ## A246158.P3677407073935103820

`A000069(ceil(A246156(n+1)/2))`
-/

namespace A246158.P3677407073935103820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 ⌈(A246156 (n + 1) : ℚ) / 2⌉.toNat

end

end A246158.P3677407073935103820

/-! ## A246158.P9188411954737746078

`A000069(round(A246156(n+1)/2))`
-/

namespace A246158.P9188411954737746078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.roundAway ((A246156 (n + 1) : ℚ) / 2)).toNat

end

end A246158.P9188411954737746078

/-! ## A246158.P3476283654013526043

`A000069((A246156(n+1)+1)/2)`
-/

namespace A246158.P3476283654013526043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.roundAway ((A246156 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A246158.P3476283654013526043

/-! ## A246158.P2567535358655854782

`filter[A091242(n+1), A010060(#)]`
-/

namespace A246158.P2567535358655854782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A246158.P2567535358655854782

/-! ## A246158.P16977370178044814686

`∩[A000069(n+1), A091242(n+1)]`
-/

namespace A246158.P16977370178044814686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246158.P16977370178044814686

/-! ## A246158.P4861258585195778329

`filter[A398975(n+1), A091247(#)]`
-/

namespace A246158.P4861258585195778329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A246158.P4861258585195778329

/-! ## A246158.P5462360476952135934

`A160017(A246156(n+1))`
-/

namespace A246158.P5462360476952135934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (A246156 (n + 1)).toNat

end

end A246158.P5462360476952135934

/-! ## A246158.P9335267555520903411

`filter[A102392(n), A091247(#)]`
-/

namespace A246158.P9335267555520903411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A246158.P9335267555520903411

/-! ## A246158.P11549639038458505062

`filter[A143579(2*n), A091247(#)]`
-/

namespace A246158.P11549639038458505062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A246158.P11549639038458505062

/-! ## A246158.P6607525563071962528

`filter[A160017(2*n+1), A091247(#)]`
-/

namespace A246158.P6607525563071962528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A246158.P6607525563071962528

/-! ## A246158.P3041244631501842505

`A193231(or(1, A193231(A246156(n+1))))`
-/

namespace A246158.P3041244631501842505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (Int.lor 1 (A193231 (A246156 (n + 1)).toNat)).toNat

end

end A246158.P3041244631501842505

/-! ## A246158.P17806653907262378062

`filter[A213714(2*n+1), A091247(#)]`
-/

namespace A246158.P17806653907262378062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A246158.P17806653907262378062

/-!
# A246159: Inverse function to the injection A048724.

The programs for A246159, the canonical program `A246159.P1140588628071788846` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246159 has offset 0).

The definition of A246159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246159.P16994320607168861362

`A246160(n)-A065620(n)`
-/

namespace A246159.P16994320607168861362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246160 n - A065620 n

end

end A246159.P16994320607168861362

namespace A246159

/-- `A246160(n)-A065620(n)` -/
def P16994320607168861362.Spec : Prop :=
  ∀ n, P16994320607168861362.a n = A246159 n

theorem P16994320607168861362.correct : P16994320607168861362.Spec := by
  intro n
  simp only [A246159, Nat.add_sub_cancel, A246159.P16994320607168861362.a, A246159.P1140588628071788846.a, A006068, A006068.P433290056721054414.a, A010059, A010059.P6338678923093357896.a, A065620, A065620.P132964274324401119.a, A245710, A245710.P15631509805562168488.a, A246160, A246160.P12838974675095138970.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P15313669370463354763.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246159

/-! ## A246159.P9463866726335939715

`1/2*A010059(n)*A006068(n)`
-/

namespace A246159.P9463866726335939715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A010059 n : ℚ) * (A006068 n : ℚ)

end

end A246159.P9463866726335939715

namespace A246159

/-- `1/2*A010059(n)*A006068(n)` -/
def P9463866726335939715.Spec : Prop :=
  ∀ n, P9463866726335939715.a n = (A246159 n : ℚ)

end A246159

/-! ## A246159.P1140588628071788846

`A010059(n)*A006068(A245710(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246159

/-- `A010059(n)*A006068(A245710(n))` -/
def P1140588628071788846.Spec : Prop :=
  ∀ n, P1140588628071788846.a n = A246159 n

theorem P1140588628071788846.correct : P1140588628071788846.Spec := by
  intro n
  simp only [A246159]

end A246159

/-! ## A246159.P4349812572083856154

`char[xor(n, 2*n)]*A104895(n)`
-/

namespace A246159.P4349812572083856154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A104895 n

end

end A246159.P4349812572083856154

namespace A246159

/-- `char[xor(n, 2*n)]*A104895(n)` -/
def P4349812572083856154.Spec : Prop :=
  ∀ n, P4349812572083856154.a n = A246159 n

end A246159

/-! ## A246159.P3487631695989270160

`A006068(n*char[xor(2*n, n)])/2`
-/

namespace A246159.P3487631695989270160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006068 (n * (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / 2

end

end A246159.P3487631695989270160

namespace A246159

/-- `A006068(n*char[xor(2*n, n)])/2` -/
def P3487631695989270160.Spec : Prop :=
  ∀ n, P3487631695989270160.a n = (A246159 n : ℚ)

end A246159

/-! ## A246159.P17319124802836539560

`A104895(A102391(n))`
-/

namespace A246159.P17319124802836539560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A102391 n).toNat

end

end A246159.P17319124802836539560

namespace A246159

/-- `A104895(A102391(n))` -/
def P17319124802836539560.Spec : Prop :=
  ∀ n, P17319124802836539560.a n = A246159 n

end A246159

/-! ## A246159.P4410710480348447572

`A246160(n)+A104895(n)`
-/

namespace A246159.P4410710480348447572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246160 n + A104895 n

end

end A246159.P4410710480348447572

namespace A246159

/-- `A246160(n)+A104895(n)` -/
def P4410710480348447572.Spec : Prop :=
  ∀ n, P4410710480348447572.a n = A246159 n

theorem P4410710480348447572.correct : P4410710480348447572.Spec := by
  intro n
  simp only [A246159, Nat.add_sub_cancel, A246159.P4410710480348447572.a, A246159.P1140588628071788846.a, A006068, A006068.P433290056721054414.a, A010059, A010059.P6338678923093357896.a, A104895, A104895.P16075429497420938870.a, A245710, A245710.P15631509805562168488.a, A246160, A246160.P12838974675095138970.a, A010060, A010060.P3080921269106500717.a, A065620, A065620.P132964274324401119.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A265263, A265263.P13560857298709796040.a, A005187, A005187.P3874015513960485494.a, A066194, A066194.P15313669370463354763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246159

/-! ## A246159.P3935493814676645618

`A104895(n*A010059(n))`
-/

namespace A246159.P3935493814676645618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 ((n : ℤ) * A010059 n).toNat

end

end A246159.P3935493814676645618

namespace A246159

/-- `A104895(n*A010059(n))` -/
def P3935493814676645618.Spec : Prop :=
  ∀ n, P3935493814676645618.a n = A246159 n

end A246159

/-! ## A246159.P11989327982093206964

`A292600(n*A010059(n))`
-/

namespace A246159.P11989327982093206964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 ((n : ℤ) * A010059 n).toNat

end

end A246159.P11989327982093206964

namespace A246159

/-- `A292600(n*A010059(n))` -/
def P11989327982093206964.Spec : Prop :=
  ∀ n, P11989327982093206964.a n = A246159 n

end A246159

/-! ## A246159.P17751228782317587307

`and(A104895(n), A292600(n))`
-/

namespace A246159.P17751228782317587307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104895 n) (A292600 n)

end

end A246159.P17751228782317587307

namespace A246159

/-- `and(A104895(n), A292600(n))` -/
def P17751228782317587307.Spec : Prop :=
  ∀ n, P17751228782317587307.a n = A246159 n

end A246159

/-! ## A246159.P8174468206064505671

`(A010060(n)-1)*A065620(n)`
-/

namespace A246159.P8174468206064505671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010060 n - 1) * A065620 n

end

end A246159.P8174468206064505671

namespace A246159

/-- `(A010060(n)-1)*A065620(n)` -/
def P8174468206064505671.Spec : Prop :=
  ∀ n, P8174468206064505671.a n = A246159 n

end A246159

/-! ## A246159.P5061446307764991766

`(1-A010060(n))*A104895(n)`
-/

namespace A246159.P5061446307764991766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010060 n) * A104895 n

end

end A246159.P5061446307764991766

namespace A246159

/-- `(1-A010060(n))*A104895(n)` -/
def P5061446307764991766.Spec : Prop :=
  ∀ n, P5061446307764991766.a n = A246159 n

end A246159

/-! ## A246159.P2680131340637144402

`(1-A010060(n))*A292600(n)`
-/

namespace A246159.P2680131340637144402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010060 n) * A292600 n

end

end A246159.P2680131340637144402

namespace A246159

/-- `(1-A010060(n))*A292600(n)` -/
def P2680131340637144402.Spec : Prop :=
  ∀ n, P2680131340637144402.a n = A246159 n

end A246159

/-! ## A246159.P9743996509804819048

`(2-A001285(n))*A104895(n)`
-/

namespace A246159.P9743996509804819048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A001285 n) * A104895 n

end

end A246159.P9743996509804819048

namespace A246159

/-- `(2-A001285(n))*A104895(n)` -/
def P9743996509804819048.Spec : Prop :=
  ∀ n, P9743996509804819048.a n = A246159 n

end A246159

/-! ## A246159.P14542309087481341334

`A006068(n*A010059(n))/2`
-/

namespace A246159.P14542309087481341334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006068 ((n : ℤ) * A010059 n).toNat : ℚ) / 2

end

end A246159.P14542309087481341334

namespace A246159

/-- `A006068(n*A010059(n))/2` -/
def P14542309087481341334.Spec : Prop :=
  ∀ n, P14542309087481341334.a n = (A246159 n : ℚ)

end A246159

/-! ## A246159.P1133598001951046791

`A104895(n-lcm(n, A101673(n)))`
-/

namespace A246159.P1133598001951046791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (n - Int.lcm (n : ℤ) (A101673 n))

end

end A246159.P1133598001951046791

namespace A246159

/-- `A104895(n-lcm(n, A101673(n)))` -/
def P1133598001951046791.Spec : Prop :=
  ∀ n, P1133598001951046791.a n = A246159 n

end A246159

/-! ## A246159.P4735600538365096435

`(A010059(n)/2)²*A268716(n)`
-/

namespace A246159.P4735600538365096435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A010059 n : ℚ) / 2) ^ 2 * (A268716 n : ℚ)

end

end A246159.P4735600538365096435

namespace A246159

/-- `(A010059(n)/2)²*A268716(n)` -/
def P4735600538365096435.Spec : Prop :=
  ∀ n, P4735600538365096435.a n = (A246159 n : ℚ)

end A246159

/-! ## A246159.P8168652836420474138

`A065620(A102392(n))-A065620(n)`
-/

namespace A246159.P8168652836420474138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A102392 n).toNat - A065620 n

end

end A246159.P8168652836420474138

namespace A246159

/-- `A065620(A102392(n))-A065620(n)` -/
def P8168652836420474138.Spec : Prop :=
  ∀ n, P8168652836420474138.a n = A246159 n

end A246159

/-! ## A246159.P14482110391469483203

`A006068(A245710(n*A010059(n)))`
-/

namespace A246159.P14482110391469483203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A245710 ((n : ℤ) * A010059 n).toNat).toNat

end

end A246159.P14482110391469483203

namespace A246159

/-- `A006068(A245710(n*A010059(n)))` -/
def P14482110391469483203.Spec : Prop :=
  ∀ n, P14482110391469483203.a n = A246159 n

end A246159

/-! ## A246159.P8371040869863184462

`A104895(n*char[A048724(n)])`
-/

namespace A246159.P8371040869863184462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A246159.P8371040869863184462

namespace A246159

/-- `A104895(n*char[A048724(n)])` -/
def P8371040869863184462.Spec : Prop :=
  ∀ n, P8371040869863184462.a n = A246159 n

end A246159

/-!
# A246160: Inverse function to the injection A065621.

The programs for A246160, the canonical program `A246160.P12838974675095138970` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246160 has offset 0).

The definition of A246160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246160.P12838974675095138970

`A246159(n)+A065620(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A246160

/-- `A246159(n)+A065620(n)` -/
def P12838974675095138970.Spec : Prop :=
  ∀ n, P12838974675095138970.a n = A246160 n

theorem P12838974675095138970.correct : P12838974675095138970.Spec := by
  intro n
  simp only [A246160]

end A246160

/-! ## A246160.P9117323477122839563

`A010060(n)*A065620(n)`
-/

namespace A246160.P9117323477122839563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n * A065620 n

end

end A246160.P9117323477122839563

namespace A246160

/-- `A010060(n)*A065620(n)` -/
def P9117323477122839563.Spec : Prop :=
  ∀ n, P9117323477122839563.a n = A246160 n

end A246160

/-! ## A246160.P7229017103344793908

`A000120(n)%2*A065620(n)`
-/

namespace A246160.P7229017103344793908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2 * A065620 n

end

end A246160.P7229017103344793908

namespace A246160

/-- `A000120(n)%2*A065620(n)` -/
def P7229017103344793908.Spec : Prop :=
  ∀ n, P7229017103344793908.a n = A246160 n

end A246160

/-! ## A246160.P4813247130737559106

`A065620(n*char[comp[xor(2*n, n)]])`
-/

namespace A246160.P4813247130737559106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A246160.P4813247130737559106

namespace A246160

/-- `A065620(n*char[comp[xor(2*n, n)]])` -/
def P4813247130737559106.Spec : Prop :=
  ∀ n, P4813247130737559106.a n = A246160 n

end A246160

/-! ## A246160.P13150772600016613856

`char[xor(n, 2*n+1)]*A065620(n)`
-/

namespace A246160.P13150772600016613856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A065620 n

end

end A246160.P13150772600016613856

namespace A246160

/-- `char[xor(n, 2*n+1)]*A065620(n)` -/
def P13150772600016613856.Spec : Prop :=
  ∀ n, P13150772600016613856.a n = A246160 n

end A246160

/-! ## A246160.P3029373233690120530

`A065620(n*(1-char[xor(n, 2*n)]))`
-/

namespace A246160.P3029373233690120530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 ((n : ℤ) * (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A246160.P3029373233690120530

namespace A246160

/-- `A065620(n*(1-char[xor(n, 2*n)]))` -/
def P3029373233690120530.Spec : Prop :=
  ∀ n, P3029373233690120530.a n = A246160 n

end A246160

/-! ## A246160.P194332764195141108

`(char[xor(n, 2*n)]-1)*A104895(n)`
-/

namespace A246160.P194332764195141108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1) * A104895 n

end

end A246160.P194332764195141108

namespace A246160

/-- `(char[xor(n, 2*n)]-1)*A104895(n)` -/
def P194332764195141108.Spec : Prop :=
  ∀ n, P194332764195141108.a n = A246160 n

end A246160

/-! ## A246160.P6902812342286600250

`A065620(n*comp[xor(n, 2*n+1)]%2)`
-/

namespace A246160.P6902812342286600250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (n * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2))

end

end A246160.P6902812342286600250

namespace A246160

/-- `A065620(n*comp[xor(n, 2*n+1)]%2)` -/
def P6902812342286600250.Spec : Prop :=
  ∀ n, P6902812342286600250.a n = A246160 n

end A246160

/-! ## A246160.P1143650538461195274

`A065620(n*C(2*n, comp[xor(n, 2*n)]))`
-/

namespace A246160.P1143650538461195274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (n * Nat.choose (2 * n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A246160.P1143650538461195274

namespace A246160

/-- `A065620(n*C(2*n, comp[xor(n, 2*n)]))` -/
def P1143650538461195274.Spec : Prop :=
  ∀ n, P1143650538461195274.a n = A246160 n

end A246160

/-! ## A246160.P13353144990814574111

`A065620(A102392(n))`
-/

namespace A246160.P13353144990814574111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A102392 n).toNat

end

end A246160.P13353144990814574111

namespace A246160

/-- `A065620(A102392(n))` -/
def P13353144990814574111.Spec : Prop :=
  ∀ n, P13353144990814574111.a n = A246160 n

end A246160

/-! ## A246160.P15665113500076151377

`A246159(n)-A104895(n)`
-/

namespace A246160.P15665113500076151377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 n - A104895 n

end

end A246160.P15665113500076151377

namespace A246160

/-- `A246159(n)-A104895(n)` -/
def P15665113500076151377.Spec : Prop :=
  ∀ n, P15665113500076151377.a n = A246160 n

theorem P15665113500076151377.correct : P15665113500076151377.Spec := by
  intro n
  simp only [A246160, Nat.add_sub_cancel, A246160.P15665113500076151377.a, A246160.P12838974675095138970.a, A065620, A065620.P132964274324401119.a, A104895, A104895.P16075429497420938870.a, A246159, A246159.P1140588628071788846.a, A006068, A006068.P433290056721054414.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A245710, A245710.P15631509805562168488.a, A265263, A265263.P13560857298709796040.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P15313669370463354763.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246160

/-! ## A246160.P3963258938497489359

`A065620(n*A010060(n))`
-/

namespace A246160.P3963258938497489359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 ((n : ℤ) * A010060 n).toNat

end

end A246160.P3963258938497489359

namespace A246160

/-- `A065620(n*A010060(n))` -/
def P3963258938497489359.Spec : Prop :=
  ∀ n, P3963258938497489359.a n = A246160 n

end A246160

/-! ## A246160.P11605618846904432511

`A065620(lcm(n, A101671(n)))`
-/

namespace A246160.P11605618846904432511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (Int.lcm (n : ℤ) (A101671 n))

end

end A246160.P11605618846904432511

namespace A246160

/-- `A065620(lcm(n, A101671(n)))` -/
def P11605618846904432511.Spec : Prop :=
  ∀ n, P11605618846904432511.a n = A246160 n

end A246160

/-! ## A246160.P10928507917353357630

`lcm(A101673(n), A104895(n))`
-/

namespace A246160.P10928507917353357630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A101673 n) (A104895 n)

end

end A246160.P10928507917353357630

namespace A246160

/-- `lcm(A101673(n), A104895(n))` -/
def P10928507917353357630.Spec : Prop :=
  ∀ n, (P10928507917353357630.a n : ℤ) = A246160 n

end A246160

/-! ## A246160.P14731772794177749700

`abs(A104895(n*A010060(n)))`
-/

namespace A246160.P14731772794177749700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104895 ((n : ℤ) * A010060 n).toNat|

end

end A246160.P14731772794177749700

namespace A246160

/-- `abs(A104895(n*A010060(n)))` -/
def P14731772794177749700.Spec : Prop :=
  ∀ n, P14731772794177749700.a n = A246160 n

end A246160

/-! ## A246160.P986879442494511409

`(A292600(n)+1)*A010060(n)`
-/

namespace A246160.P986879442494511409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A292600 n + 1) * A010060 n

end

end A246160.P986879442494511409

namespace A246160

/-- `(A292600(n)+1)*A010060(n)` -/
def P986879442494511409.Spec : Prop :=
  ∀ n, P986879442494511409.a n = A246160 n

end A246160

/-! ## A246160.P3470895545493437066

`(1-A010059(n))*A065620(n)`
-/

namespace A246160.P3470895545493437066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010059 n) * A065620 n

end

end A246160.P3470895545493437066

namespace A246160

/-- `(1-A010059(n))*A065620(n)` -/
def P3470895545493437066.Spec : Prop :=
  ∀ n, P3470895545493437066.a n = A246160 n

end A246160

/-! ## A246160.P5503074621349972172

`(1-A001285(n))*A104895(n)`
-/

namespace A246160.P5503074621349972172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001285 n) * A104895 n

end

end A246160.P5503074621349972172

namespace A246160

/-- `(1-A001285(n))*A104895(n)` -/
def P5503074621349972172.Spec : Prop :=
  ∀ n, P5503074621349972172.a n = A246160 n

end A246160

/-! ## A246160.P11663936604143632190

`(A010059(n)-1)*A104895(n)`
-/

namespace A246160.P11663936604143632190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010059 n - 1) * A104895 n

end

end A246160.P11663936604143632190

namespace A246160

/-- `(A010059(n)-1)*A104895(n)` -/
def P11663936604143632190.Spec : Prop :=
  ∀ n, P11663936604143632190.a n = A246160 n

end A246160

/-! ## A246160.P4695845419147691800

`A104895(A102391(n))-A104895(n)`
-/

namespace A246160.P4695845419147691800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A102391 n).toNat - A104895 n

end

end A246160.P4695845419147691800

namespace A246160

/-- `A104895(A102391(n))-A104895(n)` -/
def P4695845419147691800.Spec : Prop :=
  ∀ n, P4695845419147691800.a n = A246160 n

end A246160

/-!
# A246161: Permutation of positive integers: a(1) = 1, a(A014580(n)) = A000069(1+a(n)), a(A091242(n)) = A001969(1+a(n)), where A000069 and A001969 are the odious and evil numbers, and A014580 resp. A091242 are the binary coded irreducible resp. reducible polynomials over GF(2).

The programs for A246161, there is no canonical definition to state claims against.
-/

/-! ## A246161.P17258105378529389667

`A003188(A246201(n+1))`
-/

namespace A246161.P17258105378529389667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A246201 (n + 1)).toNat

end

end A246161.P17258105378529389667

/-! ## A246161.P13623879680879942575

`A233280(A245701(n+1))`
-/

namespace A246161.P13623879680879942575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A245701 (n + 1)).toNat

end

end A246161.P13623879680879942575

/-! ## A246161.P2659818624044070796

`A234612(A246163(n+1))`
-/

namespace A246161.P2659818624044070796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A246163 (n + 1)).toNat

end

end A246161.P2659818624044070796

/-! ## A246161.P12095263048613645803

`A003188(A246203(A234612(A003188(n+1))))`
-/

namespace A246161.P12095263048613645803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A246203 (A234612 (A003188 (n + 1)).toNat).toNat).toNat

end

end A246161.P12095263048613645803

/-! ## A246161.P662544807240212276

`A286548(A246201(n+1))+A246203(A193231(n+1))`
-/

namespace A246161.P662544807240212276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (A246201 (n + 1)).toNat + A246203 (A193231 (n + 1)).toNat

end

end A246161.P662544807240212276

/-! ## A246161.P16790105045899376943

`A286548(A246201(n+1))+A246377(A245704(n+1))`
-/

namespace A246161.P16790105045899376943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (A246201 (n + 1)).toNat + A246377 (A245704 (n + 1)).toNat

end

end A246161.P16790105045899376943

/-!
# A246162: Permutation of natural numbers: a(1) = 1, a(A000069(n)) = A014580(a(n-1)), a(A001969(n)) = A091242(a(n-1)), where A000069 and A001969 are the odious and evil numbers, and A014580 resp. A091242 are the binary coded irreducible resp. reducible polynomials over GF(2).

The programs for A246162, there is no canonical definition to state claims against.
-/

/-! ## A246162.P4799301990231562778

`A246202(A006068(n+1))`
-/

namespace A246162.P4799301990231562778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A006068 (n + 1)).toNat

end

end A246162.P4799301990231562778

/-! ## A246162.P16694625922490652727

`A245702(A233279(n+1))`
-/

namespace A246162.P16694625922490652727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (A233279 (n + 1)).toNat

end

end A246162.P16694625922490652727

/-! ## A246162.P4969004411678745185

`A246164(A234612(n+1))`
-/

namespace A246162.P4969004411678745185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A234612 (n + 1)).toNat

end

end A246162.P4969004411678745185

/-! ## A246162.P5469531184179986482

`A246202(A292600(2*(n+1)))`
-/

namespace A246162.P5469531184179986482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A292600 (2 * (n + 1))).toNat

end

end A246162.P5469531184179986482

/-! ## A246162.P17643887796212727912

`A246164(A003188(A193231(n+1)))`
-/

namespace A246162.P17643887796212727912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A003188 (A193231 (n + 1)).toNat).toNat

end

end A246162.P17643887796212727912

/-! ## A246162.P9526321938059697632

`A246164(A003188(A003188(A234613(n+1))))`
-/

namespace A246162.P9526321938059697632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A003188 (A003188 (A234613 (n + 1)).toNat).toNat).toNat

end

end A246162.P9526321938059697632

/-! ## A246162.P6053524110296388864

`A246164(A003188(A246163(A246202(n+1))))`
-/

namespace A246162.P6053524110296388864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A003188 (A246163 (A246202 (n + 1)).toNat).toNat).toNat

end

end A246162.P6053524110296388864

/-! ## A246162.P3775591931058318230

`A246164(A246161(A246164(n+1)))`
-/

namespace A246162.P3775591931058318230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A246161 (A246164 (n + 1)).toNat).toNat

end

end A246162.P3775591931058318230

/-!
# A246163: Permutation of natural numbers: a(1) = 1, a(A014580(n)) = A065621(1+a(n)), a(A091242(n)) = A048724(a(n)), where A065621(n) and A048724(n) give the reversing binary representation of n and -n, respectively, and A014580 resp. A091242 are the binary coded irreducible resp. reducible polynomials over GF(2).

The programs for A246163, there is no canonical definition to state claims against.
-/

/-! ## A246163.P2479654789528139174

`A234612(A246161(n+1))`
-/

namespace A246163.P2479654789528139174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A246161 (n + 1)).toNat

end

end A246163.P2479654789528139174

/-! ## A246163.P14612025383923689945

`A193231(A246201(n+1))`
-/

namespace A246163.P14612025383923689945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246201 (n + 1)).toNat

end

end A246163.P14612025383923689945

/-! ## A246163.P7523844030971157644

`A234026(A245701(n+1))`
-/

namespace A246163.P7523844030971157644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A245701 (n + 1)).toNat

end

end A246163.P7523844030971157644

/-! ## A246163.P17367572131026206729

`A193231(A246203(A193231(n+1)))`
-/

namespace A246163.P17367572131026206729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246203 (A193231 (n + 1)).toNat).toNat

end

end A246163.P17367572131026206729

/-! ## A246163.P8554377110023951519

`A003188(A193231(A246161(A006068(A003188(n+1)))))`
-/

namespace A246163.P8554377110023951519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A193231 (A246161 (A006068 (A003188 (n + 1)).toNat).toNat).toNat).toNat

end

end A246163.P8554377110023951519

/-! ## A246163.P13880695880093340762

`A003188(A193231(A246161(A234024(A234024(n+1)))))`
-/

namespace A246163.P13880695880093340762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A193231 (A246161 (A234024 (A234024 (n + 1)).toNat).toNat).toNat).toNat

end

end A246163.P13880695880093340762

/-! ## A246163.P17386251181201846933

`A003188(A193231(A246161(A234027(A234027(n+1)))))`
-/

namespace A246163.P17386251181201846933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A193231 (A246161 (A234027 (A234027 (n + 1)).toNat).toNat).toNat).toNat

end

end A246163.P17386251181201846933

/-! ## A246163.P3015459035437717045

`A003188(A193231(A246161(A234613(A234613(n+1)))))`
-/

namespace A246163.P3015459035437717045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A193231 (A246161 (A234613 (A234613 (n + 1)).toNat).toNat).toNat).toNat

end

end A246163.P3015459035437717045

/-! ## A246163.P12466303733863155249

`A193231(A246161(A091242(n+1)))/2`
-/

namespace A246163.P12466303733863155249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193231 (A246161 (A091242 (n + 1)).toNat).toNat : ℚ) / 2

end

end A246163.P12466303733863155249

/-!
# A246164: Permutation of natural numbers: a(1) = 1, a(A065621(n)) = A014580(a(n-1)), a(A048724(n)) = A091242(a(n)), where A065621(n) and A048724(n) are the reversing binary representation of n and -n, respectively, and A014580 resp. A091242 are the binary coded irreducible resp. reducible polynomials over GF(2).

The programs for A246164, there is no canonical definition to state claims against.
-/

/-! ## A246164.P14746389681859289244

`A246202(A193231(n+1))`
-/

namespace A246164.P14746389681859289244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A193231 (n + 1)).toNat

end

end A246164.P14746389681859289244

/-! ## A246164.P15416551208308274122

`A245702(A234025(n+1))`
-/

namespace A246164.P15416551208308274122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (A234025 (n + 1)).toNat

end

end A246164.P15416551208308274122

/-! ## A246164.P13431962724222801711

`A246162(A234612(n+1))`
-/

namespace A246164.P13431962724222801711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A234612 (n + 1)).toNat

end

end A246164.P13431962724222801711

/-! ## A246164.P2319664770842358471

`A246162(A193231(A006068(n+1)))`
-/

namespace A246164.P2319664770842358471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A193231 (A006068 (n + 1)).toNat).toNat

end

end A246164.P2319664770842358471

/-! ## A246164.P9090796928711661072

`A246162(A003188(A003188(A234613(n+1))))`
-/

namespace A246164.P9090796928711661072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A003188 (A003188 (A234613 (n + 1)).toNat).toNat).toNat

end

end A246164.P9090796928711661072

/-! ## A246164.P3744736529422779847

`A246202(A260426(A260422(A246203(n+1))))`
-/

namespace A246164.P3744736529422779847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A260426 (A260422 (A246203 (n + 1)).toNat).toNat).toNat

end

end A246164.P3744736529422779847

/-! ## A246164.P2397194385262486601

`A246162(A246163(A246162(n+1)))`
-/

namespace A246164.P2397194385262486601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A246163 (A246162 (n + 1)).toNat).toNat

end

end A246164.P2397194385262486601

/-! ## A246164.P5367618233060242144

`A246202(A246163(A246202(n+1)))`
-/

namespace A246164.P5367618233060242144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A246163 (A246202 (n + 1)).toNat).toNat

end

end A246164.P5367618233060242144

/-! ## A246164.P6471900852471226655

`A193231(A246204(A193231(A234024(A234024(n+1)))))`
-/

namespace A246164.P6471900852471226655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246204 (A193231 (A234024 (A234024 (n + 1)).toNat).toNat).toNat).toNat

end

end A246164.P6471900852471226655

/-! ## A246164.P10249287370685911839

`A193231(A246204(A193231(A245812(A245812(n+1)))))`
-/

namespace A246164.P10249287370685911839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246204 (A193231 (A245812 (A245812 (n + 1)).toNat).toNat).toNat).toNat

end

end A246164.P10249287370685911839

/-!
# A246166: Inverse permutation to sequence A246165.

The programs for A246166, there is no canonical definition to state claims against.
-/

/-! ## A246166.P12924255446265992043

`A005940(A334437(n))%A271269(2*(n+2))`
-/

namespace A246166.P12924255446265992043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (A334437 n).toNat) (A271269 (2 * (n + 2)))

end

end A246166.P12924255446265992043

/-! ## A246166.P2348559880837848417

`A005940(A334437(n))*A268674(A000079(n))`
-/

namespace A246166.P2348559880837848417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A334437 n).toNat * A268674 (A000079 n).toNat

end

end A246166.P2348559880837848417

/-! ## A246166.P3143530127153148026

`A005940(A334437(n))+A008683(A000079(n+2))`
-/

namespace A246166.P3143530127153148026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A334437 n).toNat + A008683 (A000079 (n + 2)).toNat

end

end A246166.P3143530127153148026

/-!
# A246167: Positions where distinct new values of A246271 appear for the first time.

The programs for A246167, there is no canonical definition to state claims against.
-/

/-! ## A246167.P5211629991212771738

`record[A246280(A246271(n+1))]`
-/

namespace A246167.P5211629991212771738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246280 (A246271 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246167.P5211629991212771738

/-!
# A246168: a(n) = 2^n - 10.

The programs for A246168, the canonical program `A246168.P6408836301477959437` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246168 has offset 0).

The definition of A246168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-10` (program `A246168.P6408836301477959437`, by `A246168.P6408836301477959437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246168.P6408836301477959437

`2^n-10`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246168

/-- `2^n-10` -/
def P6408836301477959437.Spec : Prop :=
  ∀ n, P6408836301477959437.a n = A246168 n

theorem P6408836301477959437.correct : P6408836301477959437.Spec := by
  intro n
  simp only [A246168]

end A246168

/-!
# A246170: Beatty sequence for sqrt(14).

The programs for A246170, the canonical program `A246170.P10913469983299955427` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246170 has offset 1).

The definition of A246170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246170.P10913469983299955427

`floor((n+1)*sqrt(14))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246170

/-- `floor((n+1)*sqrt(14))` -/
def P10913469983299955427.Spec : Prop :=
  ∀ n, P10913469983299955427.a n = A246170 (n + 1)

theorem P10913469983299955427.correct : P10913469983299955427.Spec := by
  intro n
  simp only [A246170, Nat.add_sub_cancel]

end A246170

/-! ## A246170.P8197987609418254343

`ceil(sqrt(A158485(n+1)))-1`
-/

namespace A246170.P8197987609418254343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A158485 (n + 1) : ℝ)⌉ - 1

end

end A246170.P8197987609418254343

namespace A246170

/-- `ceil(sqrt(A158485(n+1)))-1` -/
def P8197987609418254343.Spec : Prop :=
  ∀ n, P8197987609418254343.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P10506097675067438394

`A000027(ceil((n+1)*sqrt(14))-1)`
-/

namespace A246170.P10506097675067438394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌈(n + 1 : ℝ) * Real.sqrt (14 : ℝ)⌉ - 1).toNat

end

end A246170.P10506097675067438394

namespace A246170

/-- `A000027(ceil((n+1)*sqrt(14))-1)` -/
def P10506097675067438394.Spec : Prop :=
  ∀ n, P10506097675067438394.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P10932543148951173462

`floor(sqrt(A158485(n+1)))%(A055999(n)+4)`
-/

namespace A246170.P10932543148951173462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A158485 (n + 1))) (A055999 n + 4)

end

end A246170.P10932543148951173462

namespace A246170

/-- `floor(sqrt(A158485(n+1)))%(A055999(n)+4)` -/
def P10932543148951173462.Spec : Prop :=
  ∀ n, P10932543148951173462.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P1091754134783114617

`ceil((n+1)*sqrt(14))-A001222(A065091(n+1))`
-/

namespace A246170.P1091754134783114617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (14 : ℝ)⌉ - A001222 (A065091 (n + 1)).toNat

end

end A246170.P1091754134783114617

namespace A246170

/-- `ceil((n+1)*sqrt(14))-A001222(A065091(n+1))` -/
def P1091754134783114617.Spec : Prop :=
  ∀ n, P1091754134783114617.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P4612282456449630973

`ceil((n+1)*sqrt(14))-A057979(2*n)`
-/

namespace A246170.P4612282456449630973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (14 : ℝ)⌉ - A057979 (2 * n)

end

end A246170.P4612282456449630973

namespace A246170

/-- `ceil((n+1)*sqrt(14))-A057979(2*n)` -/
def P4612282456449630973.Spec : Prop :=
  ∀ n, P4612282456449630973.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P14669738262424900842

`ceil((n+1)*sqrt(14))-A001222(A062326(n+1))`
-/

namespace A246170.P14669738262424900842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (14 : ℝ)⌉ - A001222 (A062326 (n + 1)).toNat

end

end A246170.P14669738262424900842

namespace A246170

/-- `ceil((n+1)*sqrt(14))-A001222(A062326(n+1))` -/
def P14669738262424900842.Spec : Prop :=
  ∀ n, P14669738262424900842.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P4361050882619405893

`A004526(floor(sqrt(A158658(n+1))))`
-/

namespace A246170.P4361050882619405893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.sqrt (A158658 (n + 1))).toNat

end

end A246170.P4361050882619405893

namespace A246170

/-- `A004526(floor(sqrt(A158658(n+1))))` -/
def P4361050882619405893.Spec : Prop :=
  ∀ n, P4361050882619405893.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P12366207663007265047

`A123108(floor(sqrt(A158658(n+1))))`
-/

namespace A246170.P12366207663007265047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.sqrt (A158658 (n + 1))).toNat

end

end A246170.P12366207663007265047

namespace A246170

/-- `A123108(floor(sqrt(A158658(n+1))))` -/
def P12366207663007265047.Spec : Prop :=
  ∀ n, P12366207663007265047.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P15157722135656113912

`A028242(A004273(ceil((n+1)*sqrt(14))))`
-/

namespace A246170.P15157722135656113912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A004273 ⌈(n + 1 : ℝ) * Real.sqrt (14 : ℝ)⌉.toNat).toNat

end

end A246170.P15157722135656113912

namespace A246170

/-- `A028242(A004273(ceil((n+1)*sqrt(14))))` -/
def P15157722135656113912.Spec : Prop :=
  ∀ n, P15157722135656113912.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P4643004654677137797

`ceil((n+1)*sqrt(14))-A277027(A000040(n+1))`
-/

namespace A246170.P4643004654677137797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (14 : ℝ)⌉ - A277027 (A000040 (n + 1)).toNat

end

end A246170.P4643004654677137797

namespace A246170

/-- `ceil((n+1)*sqrt(14))-A277027(A000040(n+1))` -/
def P4643004654677137797.Spec : Prop :=
  ∀ n, P4643004654677137797.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P7272645901123155981

`ceil((n+1)*sqrt(14))-A001222(A062718(n+1))`
-/

namespace A246170.P7272645901123155981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (14 : ℝ)⌉ - A001222 (A062718 (n + 1)).toNat

end

end A246170.P7272645901123155981

namespace A246170

/-- `ceil((n+1)*sqrt(14))-A001222(A062718(n+1))` -/
def P7272645901123155981.Spec : Prop :=
  ∀ n, P7272645901123155981.a n = A246170 (n + 1)

end A246170

/-! ## A246170.P2619880667122887675

`A233583(ceil((n+1)*sqrt(14)))`
-/

namespace A246170.P2619880667122887675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 ⌈(n + 1 : ℝ) * Real.sqrt (14 : ℝ)⌉.toNat

end

end A246170.P2619880667122887675

namespace A246170

/-- `A233583(ceil((n+1)*sqrt(14)))` -/
def P2619880667122887675.Spec : Prop :=
  ∀ n, P2619880667122887675.a n = A246170 (n + 1)

end A246170

/-!
# A246171: Beatty sequence for sqrt(15).

The programs for A246171, the canonical program `A246171.P1381694404684704694` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246171 has offset 1).

The definition of A246171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246171.P1381694404684704694

`floor((n+1)*sqrt(15))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246171

/-- `floor((n+1)*sqrt(15))` -/
def P1381694404684704694.Spec : Prop :=
  ∀ n, P1381694404684704694.a n = A246171 (n + 1)

theorem P1381694404684704694.correct : P1381694404684704694.Spec := by
  intro n
  simp only [A246171, Nat.add_sub_cancel]

end A246171

/-! ## A246171.P7490806960535972691

`ceil(sqrt(A113422(3*(n+1))))-1`
-/

namespace A246171.P7490806960535972691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A113422 (3 * (n + 1)) : ℝ)⌉ - 1

end

end A246171.P7490806960535972691

namespace A246171

/-- `ceil(sqrt(A113422(3*(n+1))))-1` -/
def P7490806960535972691.Spec : Prop :=
  ∀ n, P7490806960535972691.a n = A246171 (n + 1)

end A246171

/-! ## A246171.P15028403626516787959

`A004526(floor(sqrt(A158670(n+1))))`
-/

namespace A246171.P15028403626516787959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.sqrt (A158670 (n + 1))).toNat

end

end A246171.P15028403626516787959

namespace A246171

/-- `A004526(floor(sqrt(A158670(n+1))))` -/
def P15028403626516787959.Spec : Prop :=
  ∀ n, P15028403626516787959.a n = A246171 (n + 1)

end A246171

/-! ## A246171.P1617437424696264749

`A123108(floor(sqrt(A158670(n+1))))`
-/

namespace A246171.P1617437424696264749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.sqrt (A158670 (n + 1))).toNat

end

end A246171.P1617437424696264749

namespace A246171

/-- `A123108(floor(sqrt(A158670(n+1))))` -/
def P1617437424696264749.Spec : Prop :=
  ∀ n, P1617437424696264749.a n = A246171 (n + 1)

end A246171

/-! ## A246171.P17009993384105113743

`A202305(3*(n+1)²)`
-/

namespace A246171.P17009993384105113743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (3 * (n + 1) ^ 2)

end

end A246171.P17009993384105113743

namespace A246171

/-- `A202305(3*(n+1)²)` -/
def P17009993384105113743.Spec : Prop :=
  ∀ n, P17009993384105113743.a n = A246171 (n + 1)

end A246171

/-!
# A246172: a(n) = (n^2 + 9*n - 8)/2.

The programs for A246172, the canonical program `A246172.P6491347172867321071` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246172 has offset 1).

The definition of A246172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)²+9*(n+1)-8)/2` (program `A246172.P14625682639675083854`, by `A246172.P14625682639675083854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246172.P15055852162486726990

`ogf((1+4x-4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A246172.P15055852162486726990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -4] [1, -3, 3, -1] n

end

end A246172.P15055852162486726990

namespace A246172

/-- `ogf((1+4x-4x^2)/(1-3x+3x^2-x^3))` -/
def P15055852162486726990.Spec : Prop :=
  ∀ n, P15055852162486726990.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P14625682639675083854

`((n+1)²+9*(n+1)-8)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246172.P14625682639675083854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 + 9 * (n + 1) : ℤ) - 8 : ℚ) / 2

end

end A246172.P14625682639675083854

namespace A246172

/-- `((n+1)²+9*(n+1)-8)/2` -/
def P14625682639675083854.Spec : Prop :=
  ∀ n, P14625682639675083854.a n = (A246172 (n + 1) : ℚ)

theorem P14625682639675083854.correct : P14625682639675083854.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A246172, Nat.add_sub_cancel, A246172.P14625682639675083854.a, A246172.P6491347172867321071.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A246172, Nat.add_sub_cancel, A246172.P14625682639675083854.a, A246172.P6491347172867321071.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A246172

/-! ## A246172.P6491347172867321071

`2*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246172

/-- `2*a(n-1)-a(n-2)+1` -/
def P6491347172867321071.Spec : Prop :=
  ∀ n, P6491347172867321071.a n = A246172 (n + 1)

theorem P6491347172867321071.correct : P6491347172867321071.Spec := by
  intro n
  simp only [A246172, Nat.add_sub_cancel]

end A246172

/-! ## A246172.P1024128389972888435

`∑[1+a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A246172.P1024128389972888435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  1 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246172.P1024128389972888435

namespace A246172

/-- `∑[1+a(n-1)]` -/
def P1024128389972888435.Spec : Prop :=
  ∀ n, (P1024128389972888435.a n : ℤ) = A246172 (n + 1)

end A246172

/-! ## A246172.P5332909335627857702

`C(n+2, 2)+4*n`
-/

namespace A246172.P5332909335627857702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + 4 * n

end

end A246172.P5332909335627857702

namespace A246172

/-- `C(n+2, 2)+4*n` -/
def P5332909335627857702.Spec : Prop :=
  ∀ n, (P5332909335627857702.a n : ℤ) = A246172 (n + 1)

end A246172

/-! ## A246172.P7376386925636085380

`5+a(n-1)+n` with `a(0)=1`
-/

namespace A246172.P7376386925636085380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 + a (n - 1) + n

end

end A246172.P7376386925636085380

namespace A246172

/-- `5+a(n-1)+n` -/
def P7376386925636085380.Spec : Prop :=
  ∀ n, (P7376386925636085380.a n : ℤ) = A246172 (n + 1)

end A246172

/-! ## A246172.P2714688771625672345

`∑[ogf((1+4x-4x^2)/(1-2x+x^2))]`
-/

namespace A246172.P2714688771625672345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246172.P2714688771625672345

namespace A246172

/-- `∑[ogf((1+4x-4x^2)/(1-2x+x^2))]` -/
def P2714688771625672345.Spec : Prop :=
  ∀ n, P2714688771625672345.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P3932024132970998796

`record[a(n-1)-(6-n)]` with `a(0)=1`
-/

namespace A246172.P3932024132970998796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (6 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246172.P3932024132970998796

namespace A246172

/-- `record[a(n-1)-(6-n)]` -/
def P3932024132970998796.Spec : Prop :=
  ∀ n, P3932024132970998796.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P7712259357683068213

`∑[2*2%(n+2)+n+1]`
-/

namespace A246172.P7712259357683068213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 % (n + 2)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246172.P7712259357683068213

namespace A246172

/-- `∑[2*2%(n+2)+n+1]` -/
def P7712259357683068213.Spec : Prop :=
  ∀ n, (P7712259357683068213.a n : ℤ) = A246172 (n + 1)

end A246172

/-! ## A246172.P7740112878879630609

`∑[6-(5-a(n-1))%n]` with `a(0)=1`
-/

namespace A246172.P7740112878879630609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 - Int.tmod (5 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246172.P7740112878879630609

namespace A246172

/-- `∑[6-(5-a(n-1))%n]` -/
def P7740112878879630609.Spec : Prop :=
  ∀ n, P7740112878879630609.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P10941560651251965935

`∑[5^((n+2)%(n+1))+n]`
-/

namespace A246172.P10941560651251965935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ ((n + 2) % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246172.P10941560651251965935

namespace A246172

/-- `∑[5^((n+2)%(n+1))+n]` -/
def P10941560651251965935.Spec : Prop :=
  ∀ n, (P10941560651251965935.a n : ℤ) = A246172 (n + 1)

end A246172

/-! ## A246172.P9099900269092807714

`∑[floor(a(n-1)²/a(n-2))]` with `a(0)=1, a(1)=6, a(2)=7`
-/

namespace A246172.P9099900269092807714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 7] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 : ℚ) / (f1 (n - 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246172.P9099900269092807714

namespace A246172

/-- `∑[floor(a(n-1)²/a(n-2))]` -/
def P9099900269092807714.Spec : Prop :=
  ∀ n, P9099900269092807714.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P14222544957859692541

`∑[5-(a(n-1)-floor(a(n-1))-n)]` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A246172.P14222544957859692541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 - (f1 (n - 1) - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246172.P14222544957859692541

namespace A246172

/-- `∑[5-(a(n-1)-floor(a(n-1))-n)]` -/
def P14222544957859692541.Spec : Prop :=
  ∀ n, P14222544957859692541.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P3445392300731321645

`A056115(n)+1`
-/

namespace A246172.P3445392300731321645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + 1

end

end A246172.P3445392300731321645

namespace A246172

/-- `A056115(n)+1` -/
def P3445392300731321645.Spec : Prop :=
  ∀ n, P3445392300731321645.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P1849729312256618334

`A302537(n)-n`
-/

namespace A246172.P1849729312256618334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302537 n - (n : ℤ)

end

end A246172.P1849729312256618334

namespace A246172

/-- `A302537(n)-n` -/
def P1849729312256618334.Spec : Prop :=
  ∀ n, P1849729312256618334.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P5639018707576227879

`A119412(n)/2+1`
-/

namespace A246172.P5639018707576227879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119412 n : ℚ) / 2 + 1

end

end A246172.P5639018707576227879

namespace A246172

/-- `A119412(n)/2+1` -/
def P5639018707576227879.Spec : Prop :=
  ∀ n, P5639018707576227879.a n = (A246172 (n + 1) : ℚ)

theorem P5639018707576227879.correct : P5639018707576227879.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A246172, Nat.add_sub_cancel, A246172.P5639018707576227879.a, A246172.P6491347172867321071.a, A119412, A119412.P15416208441613043438.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A246172, Nat.add_sub_cancel, A246172.P5639018707576227879.a, A246172.P6491347172867321071.a, A119412, A119412.P15416208441613043438.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A246172

/-! ## A246172.P10780306704980363164

`A056000(n)+1+n`
-/

namespace A246172.P10780306704980363164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + 1 + (n : ℤ)

end

end A246172.P10780306704980363164

namespace A246172

/-- `A056000(n)+1+n` -/
def P10780306704980363164.Spec : Prop :=
  ∀ n, P10780306704980363164.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P11111161914724722415

`A056119(n)+1-n`
-/

namespace A246172.P11111161914724722415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + 1 - (n : ℤ)

end

end A246172.P11111161914724722415

namespace A246172

/-- `A056119(n)+1-n` -/
def P11111161914724722415.Spec : Prop :=
  ∀ n, P11111161914724722415.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P17656099960941759891

`A000124(n)+5*n`
-/

namespace A246172.P17656099960941759891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (5 * n : ℤ)

end

end A246172.P17656099960941759891

namespace A246172

/-- `A000124(n)+5*n` -/
def P17656099960941759891.Spec : Prop :=
  ∀ n, P17656099960941759891.a n = A246172 (n + 1)

end A246172

/-! ## A246172.P15804243508003752729

`A034856(n+1)+3*n`
-/

namespace A246172.P15804243508003752729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + (3 * n : ℤ)

end

end A246172.P15804243508003752729

namespace A246172

/-- `A034856(n+1)+3*n` -/
def P15804243508003752729.Spec : Prop :=
  ∀ n, P15804243508003752729.a n = A246172 (n + 1)

end A246172

/-!
# A246175: The hyper-Wiener index of the Fibonacci cube Gamma(n) (n>=1).

The programs for A246175, there is no canonical definition to state claims against.
-/

/-! ## A246175.P5972976512266617699

`A154470(A047923(n)-A093479(n))`
-/

namespace A246175.P5972976512266617699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A047923 n - A093479 n).toNat

end

end A246175.P5972976512266617699

/-!
# A246177: Triangle read by rows: T(n,k) is the number of weighted lattice paths in B(n) such that the area between the x-axis and the path is k.

The programs for A246177, there is no canonical definition to state claims against.
-/

/-! ## A246177.P12929269489053242672

`A246185(n)+A178798(A160333(n))`
-/

namespace A246177.P12929269489053242672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246185 n + A178798 (A160333 n).toNat

end

end A246177.P12929269489053242672

/-! ## A246177.P10245709743458889176

`A247469(n)+A178798(A246179(n))`
-/

namespace A246177.P10245709743458889176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247469 n + A178798 (A246179 n).toNat

end

end A246177.P10245709743458889176

/-! ## A246177.P8165379012255882058

`A247469(n)-A185237(A097860(n))`
-/

namespace A246177.P8165379012255882058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247469 n - A185237 (A097860 n).toNat

end

end A246177.P8165379012255882058

/-! ## A246177.P7815304207004749927

`A247469(n)-A178798(A246186(n))`
-/

namespace A246177.P7815304207004749927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247469 n - A178798 (A246186 n).toNat

end

end A246177.P7815304207004749927

/-! ## A246177.P11418715568188365957

`A246185(n)%A013929(A358252(n))`
-/

namespace A246177.P11418715568188365957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246185 n) (A013929 (A358252 n).toNat)

end

end A246177.P11418715568188365957

/-!
# A246178: Expansion of 1/(1 - 3*x + x^2)^3.

The programs for A246178, the canonical program `A246178.P15631987467128104924` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246178 has offset 0).

The definition of A246178 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-9x+30x^2-45x^3+30x^4-9x^5+x^6))` (program `A246178.P15631987467128104924`, by `A246178.P15631987467128104924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246178.P15631987467128104924

`ogf(1/(1-9x+30x^2-45x^3+30x^4-9x^5+x^6))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246178

/-- `ogf(1/(1-9x+30x^2-45x^3+30x^4-9x^5+x^6))` -/
def P15631987467128104924.Spec : Prop :=
  ∀ n, P15631987467128104924.a n = A246178 n

theorem P15631987467128104924.correct : P15631987467128104924.Spec := by
  intro n
  simp only [A246178]

end A246178

/-! ## A246178.P16004013760185347357

`A061178(n)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=51`
-/

namespace A246178.P16004013760185347357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 51] fun n a =>
  A061178 n + a (n - 3)

end

end A246178.P16004013760185347357

namespace A246178

/-- `A061178(n)+a(n-3)` -/
def P16004013760185347357.Spec : Prop :=
  ∀ n, P16004013760185347357.a n = A246178 n

end A246178

/-! ## A246178.P9003121831543373484

`A125662(∑[n+2]+3)`
-/

namespace A246178.P9003121831543373484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125662 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A246178.P9003121831543373484

namespace A246178

/-- `A125662(∑[n+2]+3)` -/
def P9003121831543373484.Spec : Prop :=
  ∀ n, P9003121831543373484.a n = A246178 n

end A246178

/-! ## A246178.P7616398681810876621

`record[A172249(A055998(n))]`
-/

namespace A246178.P7616398681810876621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172249 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246178.P7616398681810876621

namespace A246178

/-- `record[A172249(A055998(n))]` -/
def P7616398681810876621.Spec : Prop :=
  ∀ n, P7616398681810876621.a n = A246178 n

end A246178

/-! ## A246178.P9920935597083359113

`A238941(A167499(n+4))`
-/

namespace A246178.P9920935597083359113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238941 (A167499 (n + 4)).toNat

end

end A246178.P9920935597083359113

namespace A246178

/-- `A238941(A167499(n+4))` -/
def P9920935597083359113.Spec : Prop :=
  ∀ n, P9920935597083359113.a n = A246178 n

end A246178

/-! ## A246178.P16610482301649614729

`A238941(A056115(n)+20)`
-/

namespace A246178.P16610482301649614729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238941 (A056115 n + 20).toNat

end

end A246178.P16610482301649614729

namespace A246178

/-- `A238941(A056115(n)+20)` -/
def P16610482301649614729.Spec : Prop :=
  ∀ n, P16610482301649614729.a n = A246178 n

end A246178

/-! ## A246178.P15352478515206052592

`A238941(eq[6, A134868(n+1)])`
-/

namespace A246178.P15352478515206052592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246178.P15352478515206052592

namespace A246178

/-- `A238941(eq[6, A134868(n+1)])` -/
def P15352478515206052592.Spec : Prop :=
  ∀ n, P15352478515206052592.a n = A246178 n

end A246178

/-!
# A246179: Triangle read by rows: T(n,k) is the number of weighted lattice paths in B(n) having k returns to the horizontal axis (i.e., (1,-1)-steps ending on the horizontal axis). The members of B(n) are paths of weight n that start in (0,0), end on but never go below the horizontal axis, and whose steps are of the following four kinds: a (1,0)-step with weight 1; a (1,0)-step with weight 2; a (1,1)-step with weight 2; a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A246179, there is no canonical definition to state claims against.
-/

/-! ## A246179.P12079622810922233847

`A246186(n)+Δ[A160338(A004148(n))]`
-/

namespace A246179.P12079622810922233847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (A004148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246186 n + (f1 (n + 1) - f1 n)

end

end A246179.P12079622810922233847

/-! ## A246179.P8490284762025890210

`A246186(n)+Δ[A010894(A036038(n+1))]`
-/

namespace A246179.P8490284762025890210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A036038 (n + 1)).toNat + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246186 n + (f1 (n + 1) - f1 n)

end

end A246179.P8490284762025890210

/-! ## A246179.P13929912470957018830

`A246186(n)+A185284(A156040(n))`
-/

namespace A246179.P13929912470957018830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246186 n + A185284 (A156040 n).toNat

end

end A246179.P13929912470957018830

/-! ## A246179.P5319367882513930030

`A246186(n)+A185284(A160333(n))`
-/

namespace A246179.P5319367882513930030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246186 n + A185284 (A160333 n).toNat

end

end A246179.P5319367882513930030

/-! ## A246179.P18239658732126453756

`A246186(n)+A185284(A165157(n))`
-/

namespace A246179.P18239658732126453756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246186 n + A185284 (A165157 n).toNat

end

end A246179.P18239658732126453756

/-!
# A246180: Triangle read by rows: T(n,k) is the number of weighted lattice paths B(n) having k (1,0)-steps. B(n) is the set of lattice paths of weight n that start in (0,0), end on the horizontal axis and never go below this axis, whose steps are of the following four kinds: a (1,0)-step with weight 1; a (1,0)-step with weight 2; a (1,1)-step with weight 2; a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A246180, there is no canonical definition to state claims against.
-/

/-! ## A246180.P3476915873393891970

`A005135(A085771(n))*A131255(n)`
-/

namespace A246180.P3476915873393891970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005135 (A085771 n).toNat * A131255 n

end

end A246180.P3476915873393891970

/-! ## A246180.P3427295903477199852

`A005171(A282422(n))*A059674(n)`
-/

namespace A246180.P3427295903477199852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A282422 n).toNat * A059674 n

end

end A246180.P3427295903477199852

/-! ## A246180.P4615918503186301600

`A005135(A257565(n))*A131255(n)`
-/

namespace A246180.P4615918503186301600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005135 (A257565 n).toNat * A131255 n

end

end A246180.P4615918503186301600

/-! ## A246180.P2759162371143293010

`gcd(A026729(n), A088722(A178381(n)))`
-/

namespace A246180.P2759162371143293010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026729 n) (A088722 (A178381 n).toNat)

end

end A246180.P2759162371143293010

/-! ## A246180.P10715049451899463742

`and(A059674(n), A141213(A132148(n)))`
-/

namespace A246180.P10715049451899463742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059674 n) (A141213 (A132148 n).toNat)

end

end A246180.P10715049451899463742

/-!
# A246181: Triangle read by rows: T(n,k) is the number of weighted lattice paths B(n) having k (1,0)-steps of weight 1. B(n) is the set of lattice paths of weight n that start in (0,0), end on the horizontal axis and never go below this axis, whose steps are of the following four kinds: a (1,0)-step of weight 1; a (1,0)-step of weight 2; a (1,1)-step of weight 2; a (1,-1)-step of weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A246181, there is no canonical definition to state claims against.
-/

/-! ## A246181.P17960923941062778827

`A104578(A175861(A058696(n))+n)`
-/

namespace A246181.P17960923941062778827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (A175861 (A058696 n).toNat + (n : ℤ)).toNat

end

end A246181.P17960923941062778827

/-! ## A246181.P5572666296128915349

`or(A104578(n), A175861(A058696(n)))`
-/

namespace A246181.P5572666296128915349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104578 n) (A175861 (A058696 n).toNat)

end

end A246181.P5572666296128915349

/-! ## A246181.P13297346815332197833

`or(A079944(A161832(n+1)), A104578(n))`
-/

namespace A246181.P13297346815332197833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079944 (A161832 (n + 1)).toNat) (A104578 n)

end

end A246181.P13297346815332197833

/-! ## A246181.P560471964397867599

`or(A180177(n+1), A284258(A024724(n+1)))`
-/

namespace A246181.P560471964397867599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A180177 (n + 1)) (A284258 (A024724 (n + 1)).toNat)

end

end A246181.P560471964397867599

/-! ## A246181.P3961917744083093212

`or(A137579(A187586(n+1)), A180177(n+1))`
-/

namespace A246181.P3961917744083093212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137579 (A187586 (n + 1)).toNat) (A180177 (n + 1))

end

end A246181.P3961917744083093212

/-!
# A246182: Triangle read by rows: T(n,k) is the number of weighted lattice paths B(n) having k hh's. B(n) is the set of lattice paths of weight n that start in (0,0), end on the horizontal axis and never go below this axis, whose steps are of the following four kinds: a (1,0)-step h of weight 1; a (1,0)-step H of weight 2; a (1,1)-step u of weight 2; a (1,-1)-step d of weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A246182, there is no canonical definition to state claims against.
-/

/-! ## A246182.P11922655770015608158

`A133567(n+1)-A082858(A133580(n))`
-/

namespace A246182.P11922655770015608158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (n + 1) - A082858 (A133580 n).toNat

end

end A246182.P11922655770015608158

/-!
# A246183: Triangle read by rows: T(n,k) is the number of weighted lattice paths B(n) having k HH's. B(n) is the set of lattice paths of weight n that start in (0,0), end on the horizontal axis and never go below this axis, whose steps are of the following four kinds: a (1,0)-step h of weight 1; a (1,0)-step H of weight 2; a (1,1)-step u of weight 2; a (1,-1)-step d of weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A246183, there is no canonical definition to state claims against.
-/

/-! ## A246183.P1418585135872432579

`A259433(A182746(n))+char[8]`
-/

namespace A246183.P1418585135872432579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A182746 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A246183.P1418585135872432579

/-! ## A246183.P11704108072271073479

`A259433(A305106(n))+char[8]`
-/

namespace A246183.P11704108072271073479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A305106 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A246183.P11704108072271073479

/-! ## A246183.P3540417250290548054

`A259433(A100482(n+1))+char[8]`
-/

namespace A246183.P3540417250290548054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A100482 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A246183.P3540417250290548054

/-! ## A246183.P8400641491671702130

`A259433(A301762(n+1))+char[8]`
-/

namespace A246183.P8400641491671702130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A301762 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A246183.P8400641491671702130

/-! ## A246183.P3460967628532241731

`A247290(n)+A044940(A034999(n))`
-/

namespace A246183.P3460967628532241731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247290 n + A044940 (A034999 n).toNat

end

end A246183.P3460967628532241731

/-!
# A246185: Triangle read by rows: T(n,k) is the number of weighted lattice paths B(n) for which the area between the path and the lines y=0 and y=1 is equal to k. B(n) is the set of lattice paths of weight n that start in (0,0), end on the horizontal axis and never go below this axis, whose steps are of the following four kinds: an (1,0)-step of weight 1; an (1,0)-step of weight 2; a (1,1)-step of weight 2; a (1,-1)-step of weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A246185, there is no canonical definition to state claims against.
-/

/-! ## A246185.P301315038870738357

`A246177(n%A339538(n+3))`
-/

namespace A246185.P301315038870738357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246177 (Int.tmod (n : ℤ) (A339538 (n + 3))).toNat

end

end A246185.P301315038870738357

/-! ## A246185.P3589310009154331001

`A246177(n)+A086080(A099099(n))`
-/

namespace A246185.P3589310009154331001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246177 n + A086080 (A099099 n).toNat

end

end A246185.P3589310009154331001

/-! ## A246185.P14149589653075796368

`A246177(n)-A178798(A160333(n))`
-/

namespace A246185.P14149589653075796368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246177 n - A178798 (A160333 n).toNat

end

end A246185.P14149589653075796368

/-! ## A246185.P15678735474319691211

`or(A016389(A000217(n)), A246177(n))`
-/

namespace A246185.P15678735474319691211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 (A000217 n).toNat) (A246177 n)

end

end A246185.P15678735474319691211

/-!
# A246186: Triangle read by rows: T(n,k) is the number of weighted lattice paths in B(n) having k ascents. The members of B(n) are paths of weight n that start at (0,0), end on but never go below the horizontal axis, and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps. An ascent is a maximal sequence of consecutive (1,1)-steps.

The programs for A246186, there is no canonical definition to state claims against.
-/

/-! ## A246186.P15038172284573307047

`A246179(n)-Δ[A010894(A036038(n+1))]`
-/

namespace A246186.P15038172284573307047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A036038 (n + 1)).toNat + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246179 n - (f1 (n + 1) - f1 n)

end

end A246186.P15038172284573307047

/-! ## A246186.P3500785737112538126

`A246179(n)-A185284(A156040(n))`
-/

namespace A246186.P3500785737112538126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246179 n - A185284 (A156040 n).toNat

end

end A246186.P3500785737112538126

/-! ## A246186.P3177543133275456385

`A246179(n)-A185284(A160333(n))`
-/

namespace A246186.P3177543133275456385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246179 n - A185284 (A160333 n).toNat

end

end A246186.P3177543133275456385

/-! ## A246186.P7296265034947562808

`A246179(n)-A185284(A165157(n))`
-/

namespace A246186.P7296265034947562808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246179 n - A185284 (A165157 n).toNat

end

end A246186.P7296265034947562808

/-! ## A246186.P16246358992397210581

`A246179(n)-A185284(A097724(2*(n+1)))`
-/

namespace A246186.P16246358992397210581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246179 n - A185284 (A097724 (2 * (n + 1))).toNat

end

end A246186.P16246358992397210581

/-!
# A246187: Triangle read by rows: T(n,k) is the number of weighted lattice paths in F[n] having length k (length = number of steps). The members of F[n] are paths of weight n that start at (0,0), do not go below the horizontal axis, and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A246187, there is no canonical definition to state claims against.
-/

/-! ## A246187.P4130965996146104250

`dr(A079508(n+2)^A088762(n+1))`
-/

namespace A246187.P4130965996146104250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A079508 (n + 2) : ℚ) ^ (A088762 (n + 1) : ℤ)))

end

end A246187.P4130965996146104250

/-! ## A246187.P17887360346237235584

`A117707(A028326(n)*A098158(n))`
-/

namespace A246187.P17887360346237235584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A028326 n * A098158 n).toNat

end

end A246187.P17887360346237235584

/-! ## A246187.P14486618807143264664

`A163352(A028326(n)*A098158(n))`
-/

namespace A246187.P14486618807143264664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A028326 n * A098158 n).toNat

end

end A246187.P14486618807143264664

/-! ## A246187.P16635084748421479599

`A172263(A028326(n)*A098158(n))`
-/

namespace A246187.P16635084748421479599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A028326 n * A098158 n).toNat

end

end A246187.P16635084748421479599

/-! ## A246187.P10066565360792843509

`C(A210872(n+1), A030132(A183065(n+1)))`
-/

namespace A246187.P10066565360792843509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A210872 (n + 1)).toNat (A030132 (A183065 (n + 1)).toNat).toNat

end

end A246187.P10066565360792843509

/-!
# A246188: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k occurrences of the string ududu, where u=(1,1), d=(1,-1).

The programs for A246188, there is no canonical definition to state claims against.
-/

/-! ## A246188.P4128574351809202996

`A399779(A128753(n))`
-/

namespace A246188.P4128574351809202996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399779 (A128753 n).toNat

end

end A246188.P4128574351809202996

/-! ## A246188.P6577891472218565952

`A089855(A135333(n)-A316869(n))`
-/

namespace A246188.P6577891472218565952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089855 (A135333 n - A316869 n).toNat

end

end A246188.P6577891472218565952

/-! ## A246188.P3846200113605059348

`gcd(∑[A178018(n+1)], A332779(n))`
-/

namespace A246188.P3846200113605059348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A332779 n)

end

end A246188.P3846200113605059348

/-! ## A246188.P10320286454087070348

`A135333(n)-A185284(A000124(n))`
-/

namespace A246188.P10320286454087070348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135333 n - A185284 (A000124 n).toNat

end

end A246188.P10320286454087070348

/-! ## A246188.P14128785173936855132

`A135333(n)-A124762(A337257(n))`
-/

namespace A246188.P14128785173936855132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135333 n - A124762 (A337257 n).toNat

end

end A246188.P14128785173936855132

/-!
# A246189: Number of endofunctions on [n] where the smallest cycle length equals 2.

The programs for A246189, there is no canonical definition to state claims against.
-/

/-! ## A246189.P11678768680614941566

`record[A246049(∑[n]+2)]`
-/

namespace A246189.P11678768680614941566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246189.P11678768680614941566

/-! ## A246189.P11663941413412751939

`A246049(∑[n+2]+3)`
-/

namespace A246189.P11663941413412751939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A246189.P11663941413412751939

/-! ## A246189.P16446549923135785923

`A007778(n+1)-A134362(n+2)`
-/

namespace A246189.P16446549923135785923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (n + 1) - A134362 (n + 2)

end

end A246189.P16446549923135785923

/-! ## A246189.P8619399240640174616

`A065440(n+2)-A134362(n+2)`
-/

namespace A246189.P8619399240640174616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 (n + 2) - A134362 (n + 2)

end

end A246189.P8619399240640174616

/-! ## A246189.P12884325610381290048

`A246049(A340266(n+1))-A000038(n)`
-/

namespace A246189.P12884325610381290048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (A340266 (n + 1)).toNat - A000038 n

end

end A246189.P12884325610381290048

/-!
# A246190: Number of endofunctions on [n] where the smallest cycle length equals 3.

The programs for A246190, there is no canonical definition to state claims against.
-/

/-! ## A246190.P7163772442537418819

`A246049(A167614(n+2))`
-/

namespace A246190.P7163772442537418819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (A167614 (n + 2)).toNat

end

end A246190.P7163772442537418819

/-! ## A246190.P12682085854315710403

`A246049(A052905(n)+8)`
-/

namespace A246190.P12682085854315710403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (A052905 n + 8).toNat

end

end A246190.P12682085854315710403

/-! ## A246190.P6355756829157812386

`A246049(A055999(n)+9)`
-/

namespace A246190.P6355756829157812386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (A055999 n + 9).toNat

end

end A246190.P6355756829157812386

/-! ## A246190.P5387106464812283356

`A246049(eq[2, A141169(n)])`
-/

namespace A246190.P5387106464812283356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246190.P5387106464812283356

/-! ## A246190.P14199569367099218738

`A246049(eq[3, A002262(n)])`
-/

namespace A246190.P14199569367099218738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246190.P14199569367099218738

/-! ## A246190.P9159634934552160027

`A246049(eq[8, A059268(n)])`
-/

namespace A246190.P9159634934552160027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246190.P9159634934552160027

/-! ## A246190.P10103632884783184496

`A246049(A340266(n+2)+1)`
-/

namespace A246190.P10103632884783184496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (A340266 (n + 2) + 1).toNat

end

end A246190.P10103632884783184496

/-! ## A246190.P18108347725997211780

`A246049(eq[4, A002260(n+1)])`
-/

namespace A246190.P18108347725997211780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246190.P18108347725997211780

/-! ## A246190.P9248831124967753847

`A246049(eq[1, A144328(n+1)-2])`
-/

namespace A246190.P9248831124967753847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246190.P9248831124967753847

/-! ## A246190.P4990765367916781899

`A246049(eq[1, A327844(n+1)-2])`
-/

namespace A246190.P4990765367916781899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246190.P4990765367916781899

/-!
# A246191: Number of endofunctions on [n] where the smallest cycle length equals 4.

The programs for A246191, there is no canonical definition to state claims against.
-/

/-! ## A246191.P11804435157287279643

`A246049(eq[3, A141169(n)])`
-/

namespace A246191.P11804435157287279643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246191.P11804435157287279643

/-! ## A246191.P18092974400988688999

`A246049(eq[4, A002262(n)])`
-/

namespace A246191.P18092974400988688999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246191.P18092974400988688999

/-! ## A246191.P3074325228333548063

`A246049(eq[4, log2(A059268(n))])`
-/

namespace A246191.P3074325228333548063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A246191.P3074325228333548063

/-! ## A246191.P478815188487376405

`A246049(eq[4, A130270(n+1)])`
-/

namespace A246191.P478815188487376405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246191.P478815188487376405

/-! ## A246191.P7717341857788477750

`A246049(eq[4, A144328(n+1)])`
-/

namespace A246191.P7717341857788477750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246191.P7717341857788477750

/-! ## A246191.P2516528865820160953

`A246049(eq[5, A002260(n+1)])`
-/

namespace A246191.P2516528865820160953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246191.P2516528865820160953

/-! ## A246191.P6509623102735973622

`A246049(eq[9, A158405(n+1)])`
-/

namespace A246191.P6509623102735973622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246191.P6509623102735973622

/-! ## A246191.P3544154728795323070

`A246049(A020744(n)+A167499(n)+n)`
-/

namespace A246191.P3544154728795323070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (A020744 n + (A167499 n + (n : ℤ))).toNat

end

end A246191.P3544154728795323070

/-!
# A246192: Number of endofunctions on [n] where the smallest cycle length equals 5.

The programs for A246192, there is no canonical definition to state claims against.
-/

/-! ## A246192.P4845590718021460411

`A246049(eq[5, A002262(n)])`
-/

namespace A246192.P4845590718021460411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246192.P4845590718021460411

/-! ## A246192.P14876264906525621649

`A246049(eq[5, A141169(n)])`
-/

namespace A246192.P14876264906525621649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246192.P14876264906525621649

/-! ## A246192.P12833847033444856051

`A246049(eq[32, A059268(n)])`
-/

namespace A246192.P12833847033444856051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246192.P12833847033444856051

/-! ## A246192.P5386792000323383729

`A246049(A000096(n+4)+6)`
-/

namespace A246192.P5386792000323383729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (A000096 (n + 4) + 6).toNat

end

end A246192.P5386792000323383729

/-! ## A246192.P17197108282016957724

`A246049(eq[5, A144328(n+1)])`
-/

namespace A246192.P17197108282016957724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246192.P17197108282016957724

/-! ## A246192.P6079352228898453462

`A246049(eq[6, A002260(n+1)])`
-/

namespace A246192.P6079352228898453462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246192.P6079352228898453462

/-!
# A246193: Number of endofunctions on [n] where the smallest cycle length equals 6.

The programs for A246193, there is no canonical definition to state claims against.
-/

/-! ## A246193.P5773366404567899853

`A246049(eq[6, A002262(n)])`
-/

namespace A246193.P5773366404567899853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246193.P5773366404567899853

/-! ## A246193.P16408523303372583070

`A246049(eq[6, log2(A059268(n))])`
-/

namespace A246193.P16408523303372583070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A246193.P16408523303372583070

/-! ## A246193.P13833354916509365306

`A246049(eq[7, A002260(n+1)])`
-/

namespace A246193.P13833354916509365306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246193.P13833354916509365306

/-! ## A246193.P12105211519726450627

`A246049(eq[13, A158405(n+1)])`
-/

namespace A246193.P12105211519726450627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246193.P12105211519726450627

/-! ## A246193.P12497532832769212277

`A246049(eq[8, A308690(n+1)])`
-/

namespace A246193.P12497532832769212277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246193.P12497532832769212277

/-!
# A246194: Number of endofunctions on [n] where the smallest cycle length equals 7.

The programs for A246194, there is no canonical definition to state claims against.
-/

/-! ## A246194.P3539376320582233950

`A246049(eq[7, A002262(n)])`
-/

namespace A246194.P3539376320582233950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246194.P3539376320582233950

/-! ## A246194.P4191508306336610799

`A246049(A000124(n+7)+6)`
-/

namespace A246194.P4191508306336610799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (A000124 (n + 7) + 6).toNat

end

end A246194.P4191508306336610799

/-! ## A246194.P4941731634480986306

`A246049(eq[7, A130270(n+1)])`
-/

namespace A246194.P4941731634480986306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246194.P4941731634480986306

/-! ## A246194.P16306788917901271402

`A246049(eq[7, A144328(n+1)])`
-/

namespace A246194.P16306788917901271402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246194.P16306788917901271402

/-! ## A246194.P8344163202049853462

`A246049(eq[8, A002260(n+1)])`
-/

namespace A246194.P8344163202049853462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246194.P8344163202049853462

/-!
# A246195: Number of endofunctions on [n] where the smallest cycle length equals 8.

The programs for A246195, there is no canonical definition to state claims against.
-/

/-! ## A246195.P14706707918462764899

`A246049(eq[8, A002262(n)])`
-/

namespace A246195.P14706707918462764899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246195.P14706707918462764899

/-! ## A246195.P3286865482709332233

`A246049(eq[7, A327844(n+1)])`
-/

namespace A246195.P3286865482709332233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246195.P3286865482709332233

/-! ## A246195.P5012350466632920749

`A246049(eq[8, A144328(n+1)])`
-/

namespace A246195.P5012350466632920749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246195.P5012350466632920749

/-! ## A246195.P16462597854026093877

`A246049(eq[9, A002260(n+1)])`
-/

namespace A246195.P16462597854026093877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246195.P16462597854026093877

/-! ## A246195.P13918548342473230583

`A246049(eq[17, A158405(n+1)])`
-/

namespace A246195.P13918548342473230583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246195.P13918548342473230583

/-!
# A246196: Number of endofunctions on [n] where the smallest cycle length equals 9.

The programs for A246196, there is no canonical definition to state claims against.
-/

/-! ## A246196.P10570426814794226050

`A246049(eq[9, A002262(n)])`
-/

namespace A246196.P10570426814794226050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246196.P10570426814794226050

/-! ## A246196.P12843300835929157027

`A246049(eq[9, A130270(n+1)])`
-/

namespace A246196.P12843300835929157027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246196.P12843300835929157027

/-! ## A246196.P3798648183449392047

`A246049(eq[9, A144328(n+1)])`
-/

namespace A246196.P3798648183449392047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246196.P3798648183449392047

/-! ## A246196.P676529965381085641

`A246049(eq[10, A002260(n+1)])`
-/

namespace A246196.P676529965381085641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246196.P676529965381085641

/-! ## A246196.P4789332846195198700

`A246049(eq[10, A134868(n+1)])`
-/

namespace A246196.P4789332846195198700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246196.P4789332846195198700

/-!
# A246197: Number of endofunctions on [n] where the smallest cycle length equals 10.

The programs for A246197, there is no canonical definition to state claims against.
-/

/-! ## A246197.P11399305916962397407

`A246049(eq[10, A002262(n)])`
-/

namespace A246197.P11399305916962397407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246197.P11399305916962397407

/-! ## A246197.P5079979540507397372

`A246049(eq[11, A002260(n+1)])`
-/

namespace A246197.P5079979540507397372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246197.P5079979540507397372

/-!
# A246199: Odd half-Zumkeller numbers.

The programs for A246199, there is no canonical definition to state claims against.
-/

/-! ## A246199.P6594451949184922207

`∩[A246198(n+1), n²]`
-/

namespace A246199.P6594451949184922207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246198 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A246199.P6594451949184922207

/-! ## A246199.P11144196638341967894

`∩[A195238(n+1), A253261(n+1)]`
-/

namespace A246199.P11144196638341967894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246199.P11144196638341967894

/-! ## A246199.P5320131370248331246

`A335023(A331371(n+1))`
-/

namespace A246199.P5320131370248331246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335023 (A331371 (n + 1)).toNat

end

end A246199.P5320131370248331246

/-! ## A246199.P2280390646779038418

`A065883(A331371(n+1)+1)`
-/

namespace A246199.P2280390646779038418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A331371 (n + 1) + 1).toNat

end

end A246199.P2280390646779038418

