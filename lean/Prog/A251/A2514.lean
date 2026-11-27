import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C050
import Seq.B000.C052
import Seq.B001.C000
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C011
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

/-!
# A251401: Number of (n+1)X(7+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251401, there is no canonical definition to state claims against.
-/

/-! ## A251401.P1761970144171396837

`A251402(A000124(n+6)+n)`
-/

namespace A251401.P1761970144171396837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251402 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A251401.P1761970144171396837

/-!
# A251403: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock summing to a prime.

The programs for A251403, the canonical program `A251403.P12203604312593422933` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251403 has offset 1).

The definition of A251403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251403.P12203604312593422933

`ogf((46+146x-212x^2-444x^3+108x^4)/(1-2x-21x^2+14x^3+52x^4-12x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251403

/-- `ogf((46+146x-212x^2-444x^3+108x^4)/(1-2x-21x^2+14x^3+52x^4-12x^5))` -/
def P12203604312593422933.Spec : Prop :=
  ∀ n, P12203604312593422933.a n = A251403 (n + 1)

theorem P12203604312593422933.correct : P12203604312593422933.Spec := by
  intro n
  simp only [A251403, Nat.add_sub_cancel]

end A251403

/-! ## A251403.P8327026714322017399

`A251410(∑[n]+1)`
-/

namespace A251403.P8327026714322017399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251410 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251403.P8327026714322017399

namespace A251403

/-- `A251410(∑[n]+1)` -/
def P8327026714322017399.Spec : Prop :=
  ∀ n, P8327026714322017399.a n = A251403 (n + 1)

end A251403

/-! ## A251403.P6475341154797865343

`record[root(A251410(n+1), A059268(n))]`
-/

namespace A251403.P6475341154797865343
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251410 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251403.P6475341154797865343

namespace A251403

/-- `record[root(A251410(n+1), A059268(n))]` -/
def P6475341154797865343.Spec : Prop :=
  ∀ n, P6475341154797865343.a n = (A251403 (n + 1) : ℝ)

end A251403

/-! ## A251403.P7139851724494299294

`record[root(A251410(n+1), A193592(n))]`
-/

namespace A251403.P7139851724494299294
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251410 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251403.P7139851724494299294

namespace A251403

/-- `record[root(A251410(n+1), A193592(n))]` -/
def P7139851724494299294.Spec : Prop :=
  ∀ n, P7139851724494299294.a n = (A251403 (n + 1) : ℝ)

end A251403

/-! ## A251403.P13878763773576035831

`record[gcd(A002262(n), A251410(n+1))]`
-/

namespace A251403.P13878763773576035831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251410 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251403.P13878763773576035831

namespace A251403

/-- `record[gcd(A002262(n), A251410(n+1))]` -/
def P13878763773576035831.Spec : Prop :=
  ∀ n, (P13878763773576035831.a n : ℤ) = A251403 (n + 1)

end A251403

/-!
# A251404: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock summing to a prime.

The programs for A251404, there is no canonical definition to state claims against.
-/

/-! ## A251404.P1694581678717013171

`A251410(∑[n+1]+2)`
-/

namespace A251404.P1694581678717013171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251410 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251404.P1694581678717013171

/-! ## A251404.P9701779110497386497

`record[root(A251410(n+2), A059268(n))]`
-/

namespace A251404.P9701779110497386497
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251410 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251404.P9701779110497386497

/-! ## A251404.P7292256828758782873

`record[gcd(A002262(n), A251410(n+2))]`
-/

namespace A251404.P7292256828758782873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251410 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251404.P7292256828758782873

/-! ## A251404.P13498726227035676948

`record[A251410(abs(A201163(n)))]`
-/

namespace A251404.P13498726227035676948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251410 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251404.P13498726227035676948

/-! ## A251404.P12077966828579672043

`record[A251410(Δ[A003453(n+5)])]`
-/

namespace A251404.P12077966828579672043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251410 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251404.P12077966828579672043

/-!
# A251405: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock summing to a prime.

The programs for A251405, there is no canonical definition to state claims against.
-/

/-! ## A251405.P7977381420863181894

`A251410(∑[n+2]+4)`
-/

namespace A251405.P7977381420863181894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251410 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251405.P7977381420863181894

/-!
# A251406: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock summing to a prime.

The programs for A251406, there is no canonical definition to state claims against.
-/

/-! ## A251406.P16042747256250475917

`A251410(∑[n+3]+7)`
-/

namespace A251406.P16042747256250475917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251410 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251406.P16042747256250475917

/-!
# A251407: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock summing to a prime.

The programs for A251407, there is no canonical definition to state claims against.
-/

/-! ## A251407.P5027760089323265276

`A251410(A374005(n+1))`
-/

namespace A251407.P5027760089323265276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251410 (A374005 (n + 1)).toNat

end

end A251407.P5027760089323265276

/-! ## A251407.P15848922906034089774

`A251410(Δ[A264443(n)])`
-/

namespace A251407.P15848922906034089774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251410 (f1 (n + 1) - f1 n).toNat

end

end A251407.P15848922906034089774

/-!
# A251408: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock summing to a prime.

The programs for A251408, there is no canonical definition to state claims against.
-/

/-! ## A251408.P2314904927480146806

`A251410(A374007(n+1))`
-/

namespace A251408.P2314904927480146806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251410 (A374007 (n + 1)).toNat

end

end A251408.P2314904927480146806

/-!
# A251409: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock summing to a prime.

The programs for A251409, there is no canonical definition to state claims against.
-/

/-! ## A251409.P14210828309300478578

`A251410(A374008(n+1))`
-/

namespace A251409.P14210828309300478578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251410 (A374008 (n + 1)).toNat

end

end A251409.P14210828309300478578

/-!
# A251412: Trajectory of 11 under the map n -> A098550(n).

The programs for A251412, there is no canonical definition to state claims against.
-/

/-! ## A251412.P2172725011139155581

`A098550(a(n-1))` with `a(0)=11`
-/

namespace A251412.P2172725011139155581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A098550 (a (n - 1)).toNat

end

end A251412.P2172725011139155581

/-! ## A251412.P12905561683984222015

`A098552(A098551(a(n-1)))` with `a(0)=11`
-/

namespace A251412.P12905561683984222015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A098552 (A098551 (a (n - 1)).toNat).toNat

end

end A251412.P12905561683984222015

/-!
# A251413: a(n) = 2n-1 if n <= 3, otherwise the smallest odd number not occurring earlier having at least one common factor with a(n-2), but none with a(n-1).

The programs for A251413, there is no canonical definition to state claims against.
-/

/-! ## A251413.P8714360003241785188

`2*A251414(n+1)-1`
-/

namespace A251413.P8714360003241785188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251414 (n + 1) - 1

end

end A251413.P8714360003241785188

/-! ## A251413.P318936623176796900

`A004273(A251414(1+n))`
-/

namespace A251413.P318936623176796900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A251414 (1 + n)).toNat

end

end A251413.P318936623176796900

/-! ## A251413.P13531674909170314104

`A005408(A251414(1+n)-1)`
-/

namespace A251413.P13531674909170314104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A251414 (1 + n) - 1).toNat

end

end A251413.P13531674909170314104

/-! ## A251413.P2157954183182083870

`A005843(A251414(n+1)-1)+1`
-/

namespace A251413.P2157954183182083870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A251414 (n + 1) - 1).toNat + 1

end

end A251413.P2157954183182083870

/-! ## A251413.P7525067182874502777

`A103517(A251414(n+1)+2)-7`
-/

namespace A251413.P7525067182874502777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A251414 (n + 1) + 2).toNat - 7

end

end A251413.P7525067182874502777

/-! ## A251413.P12075821189581660769

`A014681(2*A251414(n+1))`
-/

namespace A251413.P12075821189581660769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A251414 (n + 1)).toNat

end

end A251413.P12075821189581660769

/-!
# A251414: a(n) = (A251413(n) + 1)/2.

The programs for A251414, there is no canonical definition to state claims against.
-/

/-! ## A251414.P6465450067968015396

`(A251413(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251414.P6465450067968015396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251413 (n + 1) + 1 : ℚ) / 2

end

end A251414.P6465450067968015396

/-! ## A251414.P18424921337938505810

`ceil(A251413(1+n)/2)`
-/

namespace A251414.P18424921337938505810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A251413 (1 + n) : ℚ) / 2⌉

end

end A251414.P18424921337938505810

/-! ## A251414.P976378516786313950

`round(A251413(n+1)/2)`
-/

namespace A251414.P976378516786313950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A251413 (n + 1) : ℚ) / 2)

end

end A251414.P976378516786313950

/-! ## A251414.P5689466711266545183

`A000463(A251413(n+1))`
-/

namespace A251414.P5689466711266545183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A251413 (n + 1)).toNat

end

end A251414.P5689466711266545183

/-! ## A251414.P14131456319100801260

`A004525(A251413(n+1)+1)`
-/

namespace A251414.P14131456319100801260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A251413 (n + 1) + 1).toNat

end

end A251414.P14131456319100801260

/-! ## A251414.P420528385968002143

`A004526(A251413(n+1)+1)`
-/

namespace A251414.P420528385968002143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A251413 (n + 1) + 1).toNat

end

end A251414.P420528385968002143

/-! ## A251414.P17548350208219000584

`A004524(A251413(n+1)+2)`
-/

namespace A251414.P17548350208219000584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A251413 (n + 1) + 2).toNat

end

end A251414.P17548350208219000584

/-! ## A251414.P16232055711934038231

`A008619(A251413(n+1)-1)`
-/

namespace A251414.P16232055711934038231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A251413 (n + 1) - 1).toNat

end

end A251414.P16232055711934038231

/-!
# A251415: Values of A098550 where A098550(k)/k reaches a record high.

The programs for A251415, there is no canonical definition to state claims against.
-/

/-! ## A251415.P2343080548597877653

`A098550(A250127(n+1))`
-/

namespace A251415.P2343080548597877653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A250127 (n + 1)).toNat

end

end A251415.P2343080548597877653

/-! ## A251415.P10267477896887523229

`A273014(A353399(2*n+1))+n`
-/

namespace A251415.P10267477896887523229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273014 (A353399 (2 * n + 1)).toNat + (n : ℤ)

end

end A251415.P10267477896887523229

/-!
# A251416: a(n) = smallest number not in {A098550(1), A098550(2), ..., A098550(n)}.

The programs for A251416, there is no canonical definition to state claims against.
-/

/-! ## A251416.P14353910541629128498

`fp[A098551(n+1)-1]+1`
-/

namespace A251416.P14353910541629128498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A251416.P14353910541629128498

/-! ## A251416.P12863434945076091169

`fp[A249943(n+1)-1]+1`
-/

namespace A251416.P12863434945076091169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A251416.P12863434945076091169

/-! ## A251416.P8433951566412075768

`min(A251546(n+1), A251549(n+1))`
-/

namespace A251416.P8433951566412075768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A251546 (n + 1)) (A251549 (n + 1))

end

end A251416.P8433951566412075768

/-! ## A251416.P9152898314010689604

`floor(A251549(n+1)+acot(A251551(n+1)))`
-/

namespace A251416.P9152898314010689604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251549 (n + 1) : ℝ) + SequenceMachineLib.acot (A251551 (n + 1) : ℝ)⌋

end

end A251416.P9152898314010689604

/-! ## A251416.P16172195365716682895

`floor(A251549(n+1)+A251552(n+1)/(n+1))`
-/

namespace A251416.P16172195365716682895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251549 (n + 1) : ℚ) + (A251552 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A251416.P16172195365716682895

/-!
# A251417: Lengths of runs of identical terms in A251416.

The programs for A251417, there is no canonical definition to state claims against.
-/

/-! ## A251417.P8883450850571370990

`runs[A251416(n+1)]`
-/

namespace A251417.P8883450850571370990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251417.P8883450850571370990

/-! ## A251417.P1344248161407401874

`Δ[record[A098551(1+n)]]`
-/

namespace A251417.P1344248161407401874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251417.P1344248161407401874

/-! ## A251417.P12015371164045239182

`A098551(A251595(n+1))-record[A098551(n+1)]`
-/

namespace A251417.P12015371164045239182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A251595 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251417.P12015371164045239182

/-! ## A251417.P13241840224391942463

`Δ[A251620(n+1)]`
-/

namespace A251417.P13241840224391942463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251417.P13241840224391942463

/-! ## A251417.P1496490447208849750

`Δ[A249943(∑[A251621(n+1)])]`
-/

namespace A251417.P1496490447208849750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251621 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251417.P1496490447208849750

/-! ## A251417.P12675968091406681577

`A251620(n+2)-A251620(n+1)`
-/

namespace A251417.P12675968091406681577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251620 (n + 2) - A251620 (n + 1)

end

end A251417.P12675968091406681577

/-! ## A251417.P16860204659330743374

`Δ[lt[A098550(n+1), A251416(n+1)]]`
-/

namespace A251417.P16860204659330743374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A251417.P16860204659330743374

/-! ## A251417.P11776088864768099348

`Δ[record[A098550(A098553(n+1))]]`
-/

namespace A251417.P11776088864768099348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A098553 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251417.P11776088864768099348

/-! ## A251417.P11342477422925789274

`Δ[record[A098553(A098550(n+1))]]`
-/

namespace A251417.P11342477422925789274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098553 (A098550 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251417.P11342477422925789274

/-!
# A251418: Floor((n^2+7n-23)/14).

The programs for A251418, the canonical program `A251418.P12315282928756465335` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251418 has offset 0).

The definition of A251418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n²+7*n-23)/14)` (program `A251418.P12315282928756465335`, by `A251418.P12315282928756465335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A251418.P12315282928756465335

`floor((n²+7*n-23)/14)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251418

/-- `floor((n²+7*n-23)/14)` -/
def P12315282928756465335.Spec : Prop :=
  ∀ n, P12315282928756465335.a n = A251418 n

theorem P12315282928756465335.correct : P12315282928756465335.Spec := by
  intro n
  simp only [A251418]

end A251418

/-! ## A251418.P11826692216955738734

`ogf((-2+2x+x^2+3x^7-3x^8)/(1-2x+x^2-x^7+2x^8-x^9))`
-/

namespace A251418.P11826692216955738734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 2, 1, 0, 0, 0, 0, 3, -3] [1, -2, 1, 0, 0, 0, 0, -1, 2, -1] n

end

end A251418.P11826692216955738734

namespace A251418

/-- `ogf((-2+2x+x^2+3x^7-3x^8)/(1-2x+x^2-x^7+2x^8-x^9))` -/
def P11826692216955738734.Spec : Prop :=
  ∀ n, P11826692216955738734.a n = A251418 n

end A251418

/-! ## A251418.P17485191657319639694

`floor((C(n+4, 2)-4)/7)-2`
-/

namespace A251418.P17485191657319639694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (n + 4) 2 : ℤ) - 4 : ℚ) / 7⌋ - 2

end

end A251418.P17485191657319639694

namespace A251418

/-- `floor((C(n+4, 2)-4)/7)-2` -/
def P17485191657319639694.Spec : Prop :=
  ∀ n, P17485191657319639694.a n = A251418 n

end A251418

/-! ## A251418.P16001391722282007315

`floor(A052905(n)/7)-2`
-/

namespace A251418.P16001391722282007315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052905 n : ℚ) / 7⌋ - 2

end

end A251418.P16001391722282007315

namespace A251418

/-- `floor(A052905(n)/7)-2` -/
def P16001391722282007315.Spec : Prop :=
  ∀ n, P16001391722282007315.a n = A251418 n

end A251418

/-! ## A251418.P14559815062248698998

`floor(A055999(n)/7)-2`
-/

namespace A251418.P14559815062248698998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055999 n : ℚ) / 7⌋ - 2

end

end A251418.P14559815062248698998

namespace A251418

/-- `floor(A055999(n)/7)-2` -/
def P14559815062248698998.Spec : Prop :=
  ∀ n, P14559815062248698998.a n = A251418 n

end A251418

/-! ## A251418.P6373911341917485030

`ceil((A167614(n+1)-26+n)/7)`
-/

namespace A251418.P6373911341917485030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A167614 (n + 1) - 26 + (n : ℤ) : ℚ) / 7⌉

end

end A251418.P6373911341917485030

namespace A251418

/-- `ceil((A167614(n+1)-26+n)/7)` -/
def P6373911341917485030.Spec : Prop :=
  ∀ n, P6373911341917485030.a n = A251418 n

end A251418

/-! ## A251418.P1655970147711849692

`A025773(Δ[n²])-3`
-/

namespace A251418.P1655970147711849692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025773 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A251418.P1655970147711849692

namespace A251418

/-- `A025773(Δ[n²])-3` -/
def P1655970147711849692.Spec : Prop :=
  ∀ n, P1655970147711849692.a n = A251418 n

end A251418

/-! ## A251418.P9253916851474111331

`Δ[A029348(6*n+5)-3*n]`
-/

namespace A251418.P9253916851474111331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029348 (6 * n + 5) - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251418.P9253916851474111331

namespace A251418

/-- `Δ[A029348(6*n+5)-3*n]` -/
def P9253916851474111331.Spec : Prop :=
  ∀ n, P9253916851474111331.a n = A251418 n

end A251418

/-! ## A251418.P7866345838027273413

`A023444(floor(A052905(n)/7))`
-/

namespace A251418.P7866345838027273413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 ⌊(A052905 n : ℚ) / 7⌋.toNat

end

end A251418.P7866345838027273413

namespace A251418

/-- `A023444(floor(A052905(n)/7))` -/
def P7866345838027273413.Spec : Prop :=
  ∀ n, P7866345838027273413.a n = A251418 n

end A251418

/-!
# A251420: Decimal expansion of Fisher's percolation exponent in two dimensions, 187/91.

The programs for A251420, the canonical program `A251420.P4855938670452155235` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251420 has offset 1).

The definition of A251420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251420.P4855938670452155235

`9-a(n-3)` with `a(0)=2, a(1)=0, a(2)=5, a(3)=4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251420

/-- `9-a(n-3)` -/
def P4855938670452155235.Spec : Prop :=
  ∀ n, P4855938670452155235.a n = A251420 (n + 1)

theorem P4855938670452155235.correct : P4855938670452155235.Spec := by
  intro n
  simp only [A251420, Nat.add_sub_cancel]

end A251420

/-!
# A251421: Number of length n+2 0..1 arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251421, the canonical program `A251421.P13053030303204829899` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251421 has offset 1).

The definition of A251421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251421.P13053030303204829899

`ogf((2+8x-16x^2)/(1-2x-2x^2+4x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251421

/-- `ogf((2+8x-16x^2)/(1-2x-2x^2+4x^3))` -/
def P13053030303204829899.Spec : Prop :=
  ∀ n, P13053030303204829899.a n = A251421 (n + 1)

theorem P13053030303204829899.correct : P13053030303204829899.Spec := by
  intro n
  simp only [A251421, Nat.add_sub_cancel]

end A251421

/-! ## A251421.P14572033530363003781

`2^(n+1)+2*a(n-2)` with `a(0)=2, a(1)=12`
-/

namespace A251421.P14572033530363003781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 12] fun n a =>
  2 ^ (n + 1) + 2 * a (n - 2)

end

end A251421.P14572033530363003781

namespace A251421

/-- `2^(n+1)+2*a(n-2)` -/
def P14572033530363003781.Spec : Prop :=
  ∀ n, (P14572033530363003781.a n : ℤ) = A251421 (n + 1)

end A251421

/-! ## A251421.P17863292252296086740

`2*A113979(3+n)`
-/

namespace A251421.P17863292252296086740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113979 (3 + n)

end

end A251421.P17863292252296086740

namespace A251421

/-- `2*A113979(3+n)` -/
def P17863292252296086740.Spec : Prop :=
  ∀ n, P17863292252296086740.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P9321430166367532129

`2*Δ[A051437(1+n)]`
-/

namespace A251421.P9321430166367532129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A251421.P9321430166367532129

namespace A251421

/-- `2*Δ[A051437(1+n)]` -/
def P9321430166367532129.Spec : Prop :=
  ∀ n, P9321430166367532129.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P18364275368692832405

`2*(Δ[A114960(n+1)]+1)`
-/

namespace A251421.P18364275368692832405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A251421.P18364275368692832405

namespace A251421

/-- `2*(Δ[A114960(n+1)]+1)` -/
def P18364275368692832405.Spec : Prop :=
  ∀ n, P18364275368692832405.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P3592275697273636132

`2^(n+2)-A152166(n+2)`
-/

namespace A251421.P3592275697273636132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A152166 (n + 2)

end

end A251421.P3592275697273636132

namespace A251421

/-- `2^(n+2)-A152166(n+2)` -/
def P3592275697273636132.Spec : Prop :=
  ∀ n, P3592275697273636132.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P17431966470210704235

`A164587(n+1)+A107659(n)`
-/

namespace A251421.P17431966470210704235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164587 (n + 1) + A107659 n

end

end A251421.P17431966470210704235

namespace A251421

/-- `A164587(n+1)+A107659(n)` -/
def P17431966470210704235.Spec : Prop :=
  ∀ n, P17431966470210704235.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P15752021383096101670

`A000034(n)*A390325(n+1)`
-/

namespace A251421.P15752021383096101670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A390325 (n + 1)

end

end A251421.P15752021383096101670

namespace A251421

/-- `A000034(n)*A390325(n+1)` -/
def P15752021383096101670.Spec : Prop :=
  ∀ n, P15752021383096101670.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P2747311820695551232

`A016116(n+3)*A086341(n)`
-/

namespace A251421.P2747311820695551232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 3) * A086341 n

end

end A251421.P2747311820695551232

namespace A251421

/-- `A016116(n+3)*A086341(n)` -/
def P2747311820695551232.Spec : Prop :=
  ∀ n, P2747311820695551232.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P8479547095591929304

`lcm(A143095(n), A390325(n+1))`
-/

namespace A251421.P8479547095591929304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143095 n) (A390325 (n + 1))

end

end A251421.P8479547095591929304

namespace A251421

/-- `lcm(A143095(n), A390325(n+1))` -/
def P8479547095591929304.Spec : Prop :=
  ∀ n, (P8479547095591929304.a n : ℤ) = A251421 (n + 1)

end A251421

/-! ## A251421.P5838504773949111514

`A077957(n+3)+A014236(n+2)`
-/

namespace A251421.P5838504773949111514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 3) + A014236 (n + 2)

end

end A251421.P5838504773949111514

namespace A251421

/-- `A077957(n+3)+A014236(n+2)` -/
def P5838504773949111514.Spec : Prop :=
  ∀ n, P5838504773949111514.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P16966038995257043871

`A052957(n+1)+2*A113980(n+2)`
-/

namespace A251421.P16966038995257043871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 (n + 1) + 2 * A113980 (n + 2)

end

end A251421.P16966038995257043871

namespace A251421

/-- `A052957(n+1)+2*A113980(n+2)` -/
def P16966038995257043871.Spec : Prop :=
  ∀ n, P16966038995257043871.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P10035404412823506666

`A276918(n)+A000225(A052938(n))`
-/

namespace A251421.P10035404412823506666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276918 n + A000225 (A052938 n).toNat

end

end A251421.P10035404412823506666

namespace A251421

/-- `A276918(n)+A000225(A052938(n))` -/
def P10035404412823506666.Spec : Prop :=
  ∀ n, P10035404412823506666.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P7883359506510045640

`(A094024(n)+A086341(n))*A086341(n)`
-/

namespace A251421.P7883359506510045640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094024 n + A086341 n) * A086341 n

end

end A251421.P7883359506510045640

namespace A251421

/-- `(A094024(n)+A086341(n))*A086341(n)` -/
def P7883359506510045640.Spec : Prop :=
  ∀ n, P7883359506510045640.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P11645380829228233945

`(A097110(n)+A097110(n)²)*A000034(n)`
-/

namespace A251421.P11645380829228233945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097110 n + A097110 n ^ 2) * A000034 n

end

end A251421.P11645380829228233945

namespace A251421

/-- `(A097110(n)+A097110(n)²)*A000034(n)` -/
def P11645380829228233945.Spec : Prop :=
  ∀ n, P11645380829228233945.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P16837374987928874629

`A285542(n)+(A285542(n)/A094024(n))²`
-/

namespace A251421.P16837374987928874629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285542 n : ℚ) + ((A285542 n : ℚ) / (A094024 n : ℚ)) ^ 2

end

end A251421.P16837374987928874629

namespace A251421

/-- `A285542(n)+(A285542(n)/A094024(n))²` -/
def P16837374987928874629.Spec : Prop :=
  ∀ n, P16837374987928874629.a n = (A251421 (n + 1) : ℚ)

end A251421

/-! ## A251421.P6313419042077007530

`A090989(2*n+1)+A090989(2*n+1)/A152166(n+1)`
-/

namespace A251421.P6313419042077007530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090989 (2 * n + 1) : ℚ) + (A090989 (2 * n + 1) : ℚ) / (A152166 (n + 1) : ℚ)

end

end A251421.P6313419042077007530

namespace A251421

/-- `A090989(2*n+1)+A090989(2*n+1)/A152166(n+1)` -/
def P6313419042077007530.Spec : Prop :=
  ∀ n, P6313419042077007530.a n = (A251421 (n + 1) : ℚ)

end A251421

/-! ## A251421.P14585764076167190546

`Δ[A052957(n+2)]`
-/

namespace A251421.P14585764076167190546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251421.P14585764076167190546

namespace A251421

/-- `Δ[A052957(n+2)]` -/
def P14585764076167190546.Spec : Prop :=
  ∀ n, P14585764076167190546.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P12929726119773448379

`Δ[2*Δ[A056309(n+2)]]`
-/

namespace A251421.P12929726119773448379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056309 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251421.P12929726119773448379

namespace A251421

/-- `Δ[2*Δ[A056309(n+2)]]` -/
def P12929726119773448379.Spec : Prop :=
  ∀ n, P12929726119773448379.a n = A251421 (n + 1)

end A251421

/-! ## A251421.P2212705807227142821

`A052957(n+3)-A052957(n+2)`
-/

namespace A251421.P2212705807227142821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 (n + 3) - A052957 (n + 2)

end

end A251421.P2212705807227142821

namespace A251421

/-- `A052957(n+3)-A052957(n+2)` -/
def P2212705807227142821.Spec : Prop :=
  ∀ n, P2212705807227142821.a n = A251421 (n + 1)

end A251421

/-!
# A251422: Number of length n+2 0..2 arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251422, there is no canonical definition to state claims against.
-/

/-! ## A251422.P12909024652298703055

`A251428(∑[n+2])`
-/

namespace A251422.P12909024652298703055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251422.P12909024652298703055

/-! ## A251422.P13575881243189596444

`record[A251428(abs(A201163(n)))]`
-/

namespace A251422.P13575881243189596444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251422.P13575881243189596444

/-! ## A251422.P777288701874081445

`record[A251428(A198455(n+1))]`
-/

namespace A251422.P777288701874081445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251422.P777288701874081445

/-!
# A251423: Number of length n+2 0..3 arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251423, there is no canonical definition to state claims against.
-/

/-! ## A251423.P11676788640689949013

`A251428(∑[3+n]+1)`
-/

namespace A251423.P11676788640689949013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251423.P11676788640689949013

/-!
# A251424: Number of length n+2 0..4 arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251424, there is no canonical definition to state claims against.
-/

/-! ## A251424.P8255348077345762521

`A251428(∑[n+4]+3)`
-/

namespace A251424.P8255348077345762521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A251424.P8255348077345762521

/-!
# A251425: Number of length n+2 0..5 arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251425, there is no canonical definition to state claims against.
-/

/-! ## A251425.P17568740332245037285

`A251428(∑[n+5]+6)`
-/

namespace A251425.P17568740332245037285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A251425.P17568740332245037285

/-! ## A251425.P17993570281302239614

`lcm(2, A251428(eq[4, A193592(n)]))`
-/

namespace A251425.P17993570281302239614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A251425.P17993570281302239614

/-!
# A251426: Number of length n+2 0..6 arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251426, there is no canonical definition to state claims against.
-/

/-! ## A251426.P15247771002024927484

`A251428(A052905(n+3))`
-/

namespace A251426.P15247771002024927484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (A052905 (n + 3)).toNat

end

end A251426.P15247771002024927484

/-!
# A251427: Number of length n+2 0..7 arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251427, there is no canonical definition to state claims against.
-/

/-! ## A251427.P13784972494984767710

`A251428(A055999(n+4))`
-/

namespace A251427.P13784972494984767710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (A055999 (n + 4)).toNat

end

end A251427.P13784972494984767710

/-!
# A251429: Number of length 2+2 0..n arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251429, the canonical program `A251429.P8764740529924941746` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251429 has offset 1).

The definition of A251429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251429.P8764740529924941746

`ogf((12+29x+75x^2+97x^3+125x^4+114x^5+98x^6+55x^7+27x^8+x^9-x^10)/(1-x-2x^3+x^4+x^5+x^6+x^7-2x^8-x^10+x^11))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251429

/-- `ogf((12+29x+75x^2+97x^3+125x^4+114x^5+98x^6+55x^7+27x^8+x^9-x^10)/(1-x-2x^3+x^4+x^5+x^6+x^7-2x^8-x^10+x^11))` -/
def P8764740529924941746.Spec : Prop :=
  ∀ n, P8764740529924941746.a n = A251429 (n + 1)

theorem P8764740529924941746.correct : P8764740529924941746.Spec := by
  intro n
  simp only [A251429, Nat.add_sub_cancel]

end A251429

/-! ## A251429.P16336840582987111147

`A251428(2+∑[1+n])`
-/

namespace A251429.P16336840582987111147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251429.P16336840582987111147

namespace A251429

/-- `A251428(2+∑[1+n])` -/
def P16336840582987111147.Spec : Prop :=
  ∀ n, P16336840582987111147.a n = A251429 (n + 1)

end A251429

/-! ## A251429.P7666680037660286426

`record[A251428(n+3)/A008275(n+1)]`
-/

namespace A251429.P7666680037660286426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251428 (n + 3) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251429.P7666680037660286426

namespace A251429

/-- `record[A251428(n+3)/A008275(n+1)]` -/
def P7666680037660286426.Spec : Prop :=
  ∀ n, P7666680037660286426.a n = (A251429 (n + 1) : ℚ)

end A251429

/-!
# A251430: Number of length 3+2 0..n arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251430, there is no canonical definition to state claims against.
-/

/-! ## A251430.P16662282074793486322

`A251428(∑[n+2]+4)`
-/

namespace A251430.P16662282074793486322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251430.P16662282074793486322

/-!
# A251431: Number of length 4+2 0..n arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251431, there is no canonical definition to state claims against.
-/

/-! ## A251431.P16060338905129852430

`A251428(∑[n+3]+7)`
-/

namespace A251431.P16060338905129852430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251431.P16060338905129852430

/-!
# A251432: Number of length 5+2 0..n arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251432, there is no canonical definition to state claims against.
-/

/-! ## A251432.P468151148981378407

`A251428(∑[n+4]+11)`
-/

namespace A251432.P468151148981378407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A251432.P468151148981378407

/-!
# A251433: Number of length 6+2 0..n arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251433, there is no canonical definition to state claims against.
-/

/-! ## A251433.P17545042999203858159

`A251428(A167499(n+4)+1)`
-/

namespace A251433.P17545042999203858159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (A167499 (n + 4) + 1).toNat

end

end A251433.P17545042999203858159

/-!
# A251434: Number of length 7+2 0..n arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251434, there is no canonical definition to state claims against.
-/

/-! ## A251434.P317620531966560175

`A251428(A302537(n)+27)`
-/

namespace A251434.P317620531966560175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251428 (A302537 n + 27).toNat

end

end A251434.P317620531966560175

/-!
# A251435: Number of (n+1)X(1+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251435, there is no canonical definition to state claims against.
-/

/-! ## A251435.P16645277737139326212

`A251442(∑[n]+1)`
-/

namespace A251435.P16645277737139326212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251442 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251435.P16645277737139326212

/-! ## A251435.P12435432032086340781

`record[A251442(A249742(n+1))]`
-/

namespace A251435.P12435432032086340781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251442 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251435.P12435432032086340781

/-! ## A251435.P8652890746228139629

`record[A251442(n+1)/A034802(n)]`
-/

namespace A251435.P8652890746228139629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251442 (n + 1) : ℚ) / (A034802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251435.P8652890746228139629

/-!
# A251436: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251436, there is no canonical definition to state claims against.
-/

/-! ## A251436.P7379349714237685822

`A251442(∑[n+1]+2)`
-/

namespace A251436.P7379349714237685822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251442 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251436.P7379349714237685822

/-! ## A251436.P16088638383468019920

`record[A251442(A198453(n+1))]`
-/

namespace A251436.P16088638383468019920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251442 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251436.P16088638383468019920

/-!
# A251437: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251437, there is no canonical definition to state claims against.
-/

/-! ## A251437.P1982640795781138731

`A251442(A167614(n+1))`
-/

namespace A251437.P1982640795781138731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251442 (A167614 (n + 1)).toNat

end

end A251437.P1982640795781138731

/-! ## A251437.P13076023110393971328

`A251442(∑[n+3]+1)`
-/

namespace A251437.P13076023110393971328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251442 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251437.P13076023110393971328

/-!
# A251438: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251438, there is no canonical definition to state claims against.
-/

/-! ## A251438.P17227757224551641166

`A251442(A052905(n)+9)`
-/

namespace A251438.P17227757224551641166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251442 (A052905 n + 9).toNat

end

end A251438.P17227757224551641166

/-!
# A251440: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251440, there is no canonical definition to state claims against.
-/

/-! ## A251440.P8132934253305679102

`A251442(A167499(n+4)+1)`
-/

namespace A251440.P8132934253305679102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251442 (A167499 (n + 4) + 1).toNat

end

end A251440.P8132934253305679102

/-!
# A251443: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251443, there is no canonical definition to state claims against.
-/

/-! ## A251443.P13490194141805663665

`A251451((n+1)²+n²)`
-/

namespace A251443.P13490194141805663665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251451 ((n + 1) ^ 2 + n ^ 2)

end

end A251443.P13490194141805663665

/-!
# A251444: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251444, the canonical program `A251444.P6585812563275129085` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251444 has offset 1).

The definition of A251444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251444.P6585812563275129085

`ogf((45+5x-107x^2-35x^3+57x^4+36x^5)/(1-5x-4x^2+11x^3+6x^4-5x^5-4x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251444

/-- `ogf((45+5x-107x^2-35x^3+57x^4+36x^5)/(1-5x-4x^2+11x^3+6x^4-5x^5-4x^6))` -/
def P6585812563275129085.Spec : Prop :=
  ∀ n, P6585812563275129085.a n = A251444 (n + 1)

theorem P6585812563275129085.correct : P6585812563275129085.Spec := by
  intro n
  simp only [A251444, Nat.add_sub_cancel]

end A251444

/-! ## A251444.P8539672054131056469

`A251451(∑[n]+1)`
-/

namespace A251444.P8539672054131056469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251451 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251444.P8539672054131056469

namespace A251444

/-- `A251451(∑[n]+1)` -/
def P8539672054131056469.Spec : Prop :=
  ∀ n, P8539672054131056469.a n = A251444 (n + 1)

end A251444

/-! ## A251444.P4657040260894422772

`record[A251451(n+1)/A154338(n)]`
-/

namespace A251444.P4657040260894422772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251451 (n + 1) : ℚ) / (A154338 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251444.P4657040260894422772

namespace A251444

/-- `record[A251451(n+1)/A154338(n)]` -/
def P4657040260894422772.Spec : Prop :=
  ∀ n, P4657040260894422772.a n = (A251444 (n + 1) : ℚ)

end A251444

/-! ## A251444.P12996265544691323678

`record[root(A251451(n+1), A289192(n))]`
-/

namespace A251444.P12996265544691323678
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251451 (n + 1) : ℝ) ^ (1 / (A289192 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251444.P12996265544691323678

namespace A251444

/-- `record[root(A251451(n+1), A289192(n))]` -/
def P12996265544691323678.Spec : Prop :=
  ∀ n, P12996265544691323678.a n = (A251444 (n + 1) : ℝ)

end A251444

/-! ## A251444.P1402603627182710493

`record[gcd(A002262(n), A251451(n+1))]`
-/

namespace A251444.P1402603627182710493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251451 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251444.P1402603627182710493

namespace A251444

/-- `record[gcd(A002262(n), A251451(n+1))]` -/
def P1402603627182710493.Spec : Prop :=
  ∀ n, (P1402603627182710493.a n : ℤ) = A251444 (n + 1)

end A251444

/-!
# A251445: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251445, there is no canonical definition to state claims against.
-/

/-! ## A251445.P5253824768353884589

`A251451(∑[n+1]+2)`
-/

namespace A251445.P5253824768353884589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251451 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251445.P5253824768353884589

/-! ## A251445.P10927056741949113342

`record[gcd(A002262(n), A251451(n+2))]`
-/

namespace A251445.P10927056741949113342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251451 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251445.P10927056741949113342

/-!
# A251446: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251446, there is no canonical definition to state claims against.
-/

/-! ## A251446.P16735682984433331974

`A251451(∑[n+2]+4)`
-/

namespace A251446.P16735682984433331974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251451 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251446.P16735682984433331974

/-!
# A251447: Number of (n+1) X (4+1) 0..2 arrays with no 2 X 2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251447, there is no canonical definition to state claims against.
-/

/-! ## A251447.P5844310089447898343

`A251451(eq[3, col(n)]+1)`
-/

namespace A251447.P5844310089447898343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251451 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A251447.P5844310089447898343

/-!
# A251448: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251448, there is no canonical definition to state claims against.
-/

/-! ## A251448.P13667530933488216483

`A251451(A374005(n+1))`
-/

namespace A251448.P13667530933488216483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251451 (A374005 (n + 1)).toNat

end

end A251448.P13667530933488216483

/-!
# A251449: Number of (n+1)X(6+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251449, there is no canonical definition to state claims against.
-/

/-! ## A251449.P18291126075267443807

`A251451(A374007(n+1))`
-/

namespace A251449.P18291126075267443807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251451 (A374007 (n + 1)).toNat

end

end A251449.P18291126075267443807

/-!
# A251452: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock summing to a prime.

The programs for A251452, there is no canonical definition to state claims against.
-/

/-! ## A251452.P5610687387522347658

`A251459(∑[n]+1)`
-/

namespace A251452.P5610687387522347658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251452.P5610687387522347658

/-! ## A251452.P3232109195813052384

`record[A010054(n)*A251459(n+1)]`
-/

namespace A251452.P3232109195813052384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251452.P3232109195813052384

/-! ## A251452.P10188289833622957622

`record[A251459(n+1)/A022167(n)]`
-/

namespace A251452.P10188289833622957622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251459 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251452.P10188289833622957622

/-! ## A251452.P10337185502528894870

`record[root(A251459(n+1), A039755(n))]`
-/

namespace A251452.P10337185502528894870
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251459 (n + 1) : ℝ) ^ (1 / (A039755 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251452.P10337185502528894870

/-!
# A251453: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock summing to a prime.

The programs for A251453, there is no canonical definition to state claims against.
-/

/-! ## A251453.P10024364941447045910

`A251459(∑[n+1]+2)`
-/

namespace A251453.P10024364941447045910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251453.P10024364941447045910

/-! ## A251453.P17615324295116974134

`record[A010054(n)*A251459(n+2)]`
-/

namespace A251453.P17615324295116974134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251459 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251453.P17615324295116974134

/-! ## A251453.P3741855882037601149

`record[gcd(A251459(n+3), A271423(n+1))]`
-/

namespace A251453.P3741855882037601149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251459 (n + 3)) (A271423 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251453.P3741855882037601149

/-! ## A251453.P6756171903683186173

`record[A251459(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A251453.P6756171903683186173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251453.P6756171903683186173

/-! ## A251453.P16386197160373181107

`record[A251459(A198453(n+1))]`
-/

namespace A251453.P16386197160373181107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251453.P16386197160373181107

/-!
# A251454: Number of (n+1) X (3+1) 0..3 arrays with every 2 X 2 subblock summing to a prime.

The programs for A251454, there is no canonical definition to state claims against.
-/

/-! ## A251454.P5317503079511990398

`A251459(∑[n+2]+4)`
-/

namespace A251454.P5317503079511990398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251454.P5317503079511990398

/-!
# A251455: Number of (n+1)X(4+1) 0..3 arrays with every 2X2 subblock summing to a prime.

The programs for A251455, there is no canonical definition to state claims against.
-/

/-! ## A251455.P852968343075533831

`A251459(A374004(n+1))`
-/

namespace A251455.P852968343075533831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (A374004 (n + 1)).toNat

end

end A251455.P852968343075533831

/-! ## A251455.P6400773254509202557

`A251459(A141214(n+1))`
-/

namespace A251455.P6400773254509202557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (A141214 (n + 1)).toNat

end

end A251455.P6400773254509202557

/-!
# A251456: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock summing to a prime.

The programs for A251456, there is no canonical definition to state claims against.
-/

/-! ## A251456.P7324019665652305396

`A251459(A374005(n+1))`
-/

namespace A251456.P7324019665652305396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (A374005 (n + 1)).toNat

end

end A251456.P7324019665652305396

/-! ## A251456.P8151072631487564603

`A251459(Δ[A264443(n)])`
-/

namespace A251456.P8151072631487564603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (f1 (n + 1) - f1 n).toNat

end

end A251456.P8151072631487564603

/-!
# A251457: Number of (n+1)X(6+1) 0..3 arrays with every 2X2 subblock summing to a prime.

The programs for A251457, there is no canonical definition to state claims against.
-/

/-! ## A251457.P11982586221130057120

`A251459(A374007(n+1))`
-/

namespace A251457.P11982586221130057120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (A374007 (n + 1)).toNat

end

end A251457.P11982586221130057120

/-!
# A251458: Number of (n+1) X (7+1) 0..3 arrays with every 2 X 2 subblock summing to a prime.

The programs for A251458, there is no canonical definition to state claims against.
-/

/-! ## A251458.P10700035472156331161

`A251459(A000124(n+7)-7)`
-/

namespace A251458.P10700035472156331161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251459 (A000124 (n + 7) - 7).toNat

end

end A251458.P10700035472156331161

/-!
# A251460: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251460, there is no canonical definition to state claims against.
-/

/-! ## A251460.P148928834157231267

`A251467(1+∑[n])`
-/

namespace A251460.P148928834157231267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251467 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251460.P148928834157231267

/-! ## A251460.P8636957308255328119

`record[gcd(col(n), A251467(n+1))]`
-/

namespace A251460.P8636957308255328119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.triCol n : ℤ) (A251467 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251460.P8636957308255328119

/-! ## A251460.P17390242032236346886

`record[A251467(A246276(n+1))]`
-/

namespace A251460.P17390242032236346886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251467 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251460.P17390242032236346886

/-! ## A251460.P1867659211639820872

`record[A010054(n)*A251467(n+1)]`
-/

namespace A251460.P1867659211639820872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251460.P1867659211639820872

/-!
# A251461: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251461, there is no canonical definition to state claims against.
-/

/-! ## A251461.P11242437109355535433

`A251467(∑[n+1]+2)`
-/

namespace A251461.P11242437109355535433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251467 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251461.P11242437109355535433

/-! ## A251461.P6957755799733228362

`record[A010054(n)*A251467(n+2)]`
-/

namespace A251461.P6957755799733228362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251467 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251461.P6957755799733228362

/-! ## A251461.P14078813381460212183

`record[A251467(A246276(2*(n+1))-1)]`
-/

namespace A251461.P14078813381460212183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251467 (A246276 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251461.P14078813381460212183

/-! ## A251461.P11700214833159704454

`record[root(A251467(n+2), A001263(n+3))]`
-/

namespace A251461.P11700214833159704454
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251467 (n + 2) : ℝ) ^ (1 / (A001263 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251461.P11700214833159704454

/-!
# A251462: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251462, there is no canonical definition to state claims against.
-/

/-! ## A251462.P1228504670646334388

`A251467(∑[n+2]+4)`
-/

namespace A251462.P1228504670646334388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251467 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251462.P1228504670646334388

/-! ## A251462.P17613912057452161148

`record[A251467(n+4)/A359670(n)]`
-/

namespace A251462.P17613912057452161148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251467 (n + 4) : ℚ) / (A359670 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251462.P17613912057452161148

/-!
# A251463: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251463, there is no canonical definition to state claims against.
-/

/-! ## A251463.P2294383706266662000

`A251467(∑[round(sqrt(n²+1))+3]+6)`
-/

namespace A251463.P2294383706266662000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251467 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A251463.P2294383706266662000

/-!
# A251464: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251464, there is no canonical definition to state claims against.
-/

/-! ## A251464.P17382104202041787836

`A251467(A374005(n+1))`
-/

namespace A251464.P17382104202041787836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251467 (A374005 (n + 1)).toNat

end

end A251464.P17382104202041787836

/-!
# A251465: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251465, there is no canonical definition to state claims against.
-/

/-! ## A251465.P14157389504994317393

`A251467(A374007(n+1))`
-/

namespace A251465.P14157389504994317393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251467 (A374007 (n + 1)).toNat

end

end A251465.P14157389504994317393

/-!
# A251466: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251466, there is no canonical definition to state claims against.
-/

/-! ## A251466.P4300804318908504395

`A251467(A374008(n+1))`
-/

namespace A251466.P4300804318908504395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251467 (A374008 (n + 1)).toNat

end

end A251466.P4300804318908504395

/-!
# A251468: Number of (n+1)X(1+1) 0..5 arrays with every 2X2 subblock summing to a prime.

The programs for A251468, there is no canonical definition to state claims against.
-/

/-! ## A251468.P2977897624126388893

`A251474(∑[n]+1)`
-/

namespace A251468.P2977897624126388893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251474 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251468.P2977897624126388893

/-! ## A251468.P16349268721870953596

`record[root(A251474(n+1), A007318(n))]`
-/

namespace A251468.P16349268721870953596
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251474 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251468.P16349268721870953596

/-! ## A251468.P17157625737679936351

`record[root(A251474(n+1), A008279(n))]`
-/

namespace A251468.P17157625737679936351
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251474 (n + 1) : ℝ) ^ (1 / (A008279 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251468.P17157625737679936351

/-! ## A251468.P12468344238945704357

`record[root(A251474(n+1), A112857(n))]`
-/

namespace A251468.P12468344238945704357
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251474 (n + 1) : ℝ) ^ (1 / (A112857 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251468.P12468344238945704357

/-!
# A251469: Number of (n+1)X(2+1) 0..5 arrays with every 2X2 subblock summing to a prime.

The programs for A251469, there is no canonical definition to state claims against.
-/

/-! ## A251469.P1689096454000944666

`A251474(∑[n+1]+2)`
-/

namespace A251469.P1689096454000944666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251474 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251469.P1689096454000944666

/-!
# A251470: Number of (n+1)X(3+1) 0..5 arrays with every 2X2 subblock summing to a prime.

The programs for A251470, there is no canonical definition to state claims against.
-/

/-! ## A251470.P13882850319126572615

`A251474(∑[n+2]+4)`
-/

namespace A251470.P13882850319126572615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251474 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251470.P13882850319126572615

/-!
# A251471: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock summing to a prime.

The programs for A251471, there is no canonical definition to state claims against.
-/

/-! ## A251471.P6869790228533722418

`A251474(∑[n+3]+7)`
-/

namespace A251471.P6869790228533722418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251474 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251471.P6869790228533722418

/-!
# A251475: Number of (n+1)X(1+1) 0..3 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251475, there is no canonical definition to state claims against.
-/

/-! ## A251475.P14930760891503424978

`A251481(∑[n]+1)`
-/

namespace A251475.P14930760891503424978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251475.P14930760891503424978

/-! ## A251475.P10435966797695846870

`record[A251481(A246276(n+1))]`
-/

namespace A251475.P10435966797695846870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251475.P10435966797695846870

/-! ## A251475.P4038031166144223650

`record[A251481(A249742(n+1))]`
-/

namespace A251475.P4038031166144223650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251475.P4038031166144223650

/-! ## A251475.P3184923944346934937

`record[A251481(Δ[A053436(n+1)])]`
-/

namespace A251475.P3184923944346934937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251475.P3184923944346934937

/-!
# A251476: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251476, there is no canonical definition to state claims against.
-/

/-! ## A251476.P15115930979648225359

`A251481(∑[n+1]+2)`
-/

namespace A251476.P15115930979648225359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251476.P15115930979648225359

/-! ## A251476.P8860606517870703584

`record[A251481(A008795(n)+2)]`
-/

namespace A251476.P8860606517870703584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251476.P8860606517870703584

/-! ## A251476.P7649907433071747066

`record[A251481(A127096(n+1)+2)]`
-/

namespace A251476.P7649907433071747066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (A127096 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251476.P7649907433071747066

/-! ## A251476.P2606164453591742049

`record[A010054(n)*A251481(n+2)]`
-/

namespace A251476.P2606164453591742049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251476.P2606164453591742049

/-! ## A251476.P8726498962583511109

`record[gcd(A002262(n), A251481(n+2))]`
-/

namespace A251476.P8726498962583511109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251481 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251476.P8726498962583511109

/-!
# A251477: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251477, there is no canonical definition to state claims against.
-/

/-! ## A251477.P10682850557879920587

`A251481(∑[n+2]+4)`
-/

namespace A251477.P10682850557879920587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251477.P10682850557879920587

/-! ## A251477.P5229881841921080967

`record[A251481(n+4)/A114193(n)]`
-/

namespace A251477.P5229881841921080967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251481 (n + 4) : ℚ) / (A114193 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251477.P5229881841921080967

/-!
# A251478: Number of (n+1)X(4+1) 0..3 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251478, there is no canonical definition to state claims against.
-/

/-! ## A251478.P413587056488469671

`A251481(∑[n+3]+7)`
-/

namespace A251478.P413587056488469671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251478.P413587056488469671

/-!
# A251479: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251479, there is no canonical definition to state claims against.
-/

/-! ## A251479.P658873020363501872

`A251481(A167499(n+3))`
-/

namespace A251479.P658873020363501872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (A167499 (n + 3)).toNat

end

end A251479.P658873020363501872

/-! ## A251479.P13336764662412191703

`A251481(A374005(n+1))`
-/

namespace A251479.P13336764662412191703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (A374005 (n + 1)).toNat

end

end A251479.P13336764662412191703

/-!
# A251480: Number of (n+1)X(6+1) 0..3 arrays with every 2X2 subblock summing to a prime and those sums nondecreasing in every row and column.

The programs for A251480, there is no canonical definition to state claims against.
-/

/-! ## A251480.P12751327013696746807

`A251481(A167499(n+4)+1)`
-/

namespace A251480.P12751327013696746807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (A167499 (n + 4) + 1).toNat

end

end A251480.P12751327013696746807

/-! ## A251480.P11021214833954583641

`A251481(A374007(n+1))`
-/

namespace A251480.P11021214833954583641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251481 (A374007 (n + 1)).toNat

end

end A251480.P11021214833954583641

/-!
# A251482: a(n) = floor(prime(n)/log(n)) + ceiling(prime(n)/log(prime(n))) - 2*n, n >=2.

The programs for A251482, the canonical program `A251482.P15283012355348993553` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251482 has offset 2).

The definition of A251482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251482.P15283012355348993553

`A085581(n+2)+A086861(n+2)+1-2*(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A251482

/-- `A085581(n+2)+A086861(n+2)+1-2*(n+2)` -/
def P15283012355348993553.Spec : Prop :=
  ∀ n, P15283012355348993553.a n = A251482 (n + 2)

theorem P15283012355348993553.correct : P15283012355348993553.Spec := by
  intro n
  simp only [A251482, Nat.add_sub_cancel]

end A251482

/-! ## A251482.P16191933984055200010

`floor(A000040(n+2)/log(n+2))+ceil(A000040(n+2)/log(A000040(n+2)))-2*(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251482.P16191933984055200010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℝ) / Real.log (n + 2 : ℝ)⌋ + ⌈(A000040 (n + 2) : ℝ) / Real.log (A000040 (n + 2) : ℝ)⌉ - (2 * (n + 2) : ℤ)

end

end A251482.P16191933984055200010

namespace A251482

/-- `floor(A000040(n+2)/log(n+2))+ceil(A000040(n+2)/log(A000040(n+2)))-2*(n+2)` -/
def P16191933984055200010.Spec : Prop :=
  ∀ n, P16191933984055200010.a n = A251482 (n + 2)

end A251482

/-! ## A251482.P13780343787584938584

`A152196(n+2)+A010054(A113049(n+4))`
-/

namespace A251482.P13780343787584938584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152196 (n + 2) + A010054 (A113049 (n + 4)).toNat

end

end A251482.P13780343787584938584

namespace A251482

/-- `A152196(n+2)+A010054(A113049(n+4))` -/
def P13780343787584938584.Spec : Prop :=
  ∀ n, P13780343787584938584.a n = A251482 (n + 2)

end A251482

/-!
# A251483: Position of first occurrence of n in A036459.

The programs for A251483, there is no canonical definition to state claims against.
-/

/-! ## A251483.P11934973632872277225

`A061799(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A251483.P11934973632872277225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A061799 (a (n - 1)).toNat

end

end A251483.P11934973632872277225

/-! ## A251483.P17911449529139916869

`A009287(A085158(n))-floor(acot(n)²)`
-/

namespace A251483.P17911449529139916869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009287 (A085158 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A251483.P17911449529139916869

/-! ## A251483.P14618707106955117977

`A009287(n+1-A057427(a(n-1)))` with `a(0)=1`
-/

namespace A251483.P14618707106955117977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009287 ((n + 1 : ℤ) - A057427 (a (n - 1)).toNat).toNat

end

end A251483.P14618707106955117977

/-! ## A251483.P14394101031570168286

`A009287(A085158(n))^A092523(3*n+1)`
-/

namespace A251483.P14394101031570168286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009287 (A085158 n).toNat : ℚ) ^ (A092523 (3 * n + 1) : ℤ)

end

end A251483.P14394101031570168286

/-!
# A251484: Number of (n+1) X (1+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements less than the minimum of its antidiagonal elements.

The programs for A251484, there is no canonical definition to state claims against.
-/

/-! ## A251484.P13177415611983056567

`ogf((236-320x)/(1-16x+20x^2))`
-/

namespace A251484.P13177415611983056567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [236, -320] [1, -16, 20] n

end

end A251484.P13177415611983056567

/-! ## A251484.P17684164422548589054

`A251491(∑[n]+1)`
-/

namespace A251484.P17684164422548589054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251491 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251484.P17684164422548589054

/-! ## A251484.P2977507467889891955

`record[A010054(n)*A251491(n+1)]`
-/

namespace A251484.P2977507467889891955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251484.P2977507467889891955

/-! ## A251484.P15341955096973664683

`record[root(A251491(n+1), A008300(n))]`
-/

namespace A251484.P15341955096973664683
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251491 (n + 1) : ℝ) ^ (1 / (A008300 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251484.P15341955096973664683

/-! ## A251484.P682087413775302803

`record[root(A251491(n+1), A059268(n))]`
-/

namespace A251484.P682087413775302803
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251491 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251484.P682087413775302803

/-!
# A251485: Number of (n+1) X (2+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements less than the minimum of its antidiagonal elements.

The programs for A251485, there is no canonical definition to state claims against.
-/

/-! ## A251485.P1300964305166233258

`A251491(∑[n+1]+2)`
-/

namespace A251485.P1300964305166233258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251491 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251485.P1300964305166233258

/-! ## A251485.P5862937810370395858

`record[A010054(n)*A251491(n+2)]`
-/

namespace A251485.P5862937810370395858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251485.P5862937810370395858

/-! ## A251485.P7572162952326497712

`record[root(A251491(n+2), A059268(n))]`
-/

namespace A251485.P7572162952326497712
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251491 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251485.P7572162952326497712

/-!
# A251486: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the minimum of its antidiagonal elements.

The programs for A251486, there is no canonical definition to state claims against.
-/

/-! ## A251486.P12365314301004936236

`A251491(∑[n+2]+4)`
-/

namespace A251486.P12365314301004936236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251491 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251486.P12365314301004936236

/-!
# A251487: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the minimum of its antidiagonal elements.

The programs for A251487, there is no canonical definition to state claims against.
-/

/-! ## A251487.P10965459480258238589

`A251491(∑[n+3]+7)`
-/

namespace A251487.P10965459480258238589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251491 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251487.P10965459480258238589

/-!
# A251488: Number of (n+1)X(5+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the minimum of its antidiagonal elements.

The programs for A251488, there is no canonical definition to state claims against.
-/

/-! ## A251488.P12716265476762274382

`A251491(eq[6, A185782(n+1)])`
-/

namespace A251488.P12716265476762274382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251488.P12716265476762274382

/-!
# A251489: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the minimum of its antidiagonal elements.

The programs for A251489, there is no canonical definition to state claims against.
-/

/-! ## A251489.P11250489854726474819

`A251491(eq[8, A185782(n+1)])`
-/

namespace A251489.P11250489854726474819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251489.P11250489854726474819

/-!
# A251490: Number of (n+1)X(7+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the minimum of its antidiagonal elements.

The programs for A251490, there is no canonical definition to state claims against.
-/

/-! ## A251490.P11158326125521059866

`A251491(A055999(n+4))`
-/

namespace A251490.P11158326125521059866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251491 (A055999 (n + 4)).toNat

end

end A251490.P11158326125521059866

/-!
# A251492: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock summing to 4 5 6 7 or 8.

The programs for A251492, there is no canonical definition to state claims against.
-/

/-! ## A251492.P18237016105367480265

`ogf((186-148x-736x^2+768x^3)/(1-13x+5x^2+52x^3-48x^4))`
-/

namespace A251492.P18237016105367480265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [186, -148, -736, 768] [1, -13, 5, 52, -48] n

end

end A251492.P18237016105367480265

/-! ## A251492.P17044651027656238222

`A251499(∑[n]+1)`
-/

namespace A251492.P17044651027656238222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251499 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251492.P17044651027656238222

/-! ## A251492.P13943709335449534930

`record[A010054(n)*A251499(n+1)]`
-/

namespace A251492.P13943709335449534930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251492.P13943709335449534930

/-! ## A251492.P2063387853699045032

`record[root(A251499(n+1), A057728(n+1))]`
-/

namespace A251492.P2063387853699045032
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251499 (n + 1) : ℝ) ^ (1 / (A057728 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251492.P2063387853699045032

/-! ## A251492.P14116093627868278429

`record[root(A251499(n+1), A172431(n+1))]`
-/

namespace A251492.P14116093627868278429
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251499 (n + 1) : ℝ) ^ (1 / (A172431 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251492.P14116093627868278429

/-!
# A251493: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock summing to 4 5 6 7 or 8.

The programs for A251493, there is no canonical definition to state claims against.
-/

/-! ## A251493.P3386414777720790429

`A251499(∑[n+1]+2)`
-/

namespace A251493.P3386414777720790429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251499 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251493.P3386414777720790429

/-! ## A251493.P16677119167745125973

`record[A010054(n)*A251499(n+2)]`
-/

namespace A251493.P16677119167745125973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251499 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251493.P16677119167745125973

/-! ## A251493.P14010580403531502740

`record[A251499(Δ[A003453(n+5)])]`
-/

namespace A251493.P14010580403531502740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251499 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251493.P14010580403531502740

/-!
# A251494: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock summing to 4 5 6 7 or 8.

The programs for A251494, there is no canonical definition to state claims against.
-/

/-! ## A251494.P3792279455676743843

`A251499(∑[n+2]+4)`
-/

namespace A251494.P3792279455676743843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251499 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251494.P3792279455676743843

/-!
# A251495: Number of (n+1)X(4+1) 0..3 arrays with every 2X2 subblock summing to 4 5 6 7 or 8.

The programs for A251495, there is no canonical definition to state claims against.
-/

/-! ## A251495.P18147160498443826853

`A251499(∑[n+3]+7)`
-/

namespace A251495.P18147160498443826853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251499 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251495.P18147160498443826853

/-!
# A251496: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock summing to 4 5 6 7 or 8.

The programs for A251496, there is no canonical definition to state claims against.
-/

/-! ## A251496.P6713156591699828315

`A251499(A141214(n+2)-1)`
-/

namespace A251496.P6713156591699828315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251499 (A141214 (n + 2) - 1).toNat

end

end A251496.P6713156591699828315

/-!
# A251497: Number of (n+1) X (6+1) 0..3 arrays with every 2 X 2 subblock summing to 4 5 6 7 or 8.

The programs for A251497, there is no canonical definition to state claims against.
-/

/-! ## A251497.P16528422899681161471

`A251499(A052905(n+3))`
-/

namespace A251497.P16528422899681161471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251499 (A052905 (n + 3)).toNat

end

end A251497.P16528422899681161471

