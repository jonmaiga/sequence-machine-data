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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A298300: Analog of Motzkin numbers for Coxeter type D.

The programs for A298300, the canonical program `A298300.P9978731445362915200` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298300 has offset 2).

The definition of A298300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298300.P7578017291236326723

`A382988(n)+A189912(n)`
-/

namespace A298300.P7578017291236326723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382988 n + A189912 n

end

end A298300.P7578017291236326723

namespace A298300

/-- `A382988(n)+A189912(n)` -/
def P7578017291236326723.Spec : Prop :=
  ∀ n, P7578017291236326723.a n = A298300 (n + 2)

theorem P7578017291236326723.correct : P7578017291236326723.Spec := by
  intro n
  simp only [A298300, Nat.add_sub_cancel, A298300.P7578017291236326723.a, A298300.P9978731445362915200.f1, A298300.P9978731445362915200.a, A002026, A002026.P17776616079043433200.a, A026165, A026165.P7828526443875359761.f1, A026165.P7828526443875359761.a, A189912, A189912.P39794157552694298.f1, A189912.P39794157552694298.a, A382988, A382988.P3704890568810450556.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A298300

/-! ## A298300.P9978731445362915200

`A002026(n)+∑[A026165(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A298300

/-- `A002026(n)+∑[A026165(n)]` -/
def P9978731445362915200.Spec : Prop :=
  ∀ n, P9978731445362915200.a n = A298300 (n + 2)

theorem P9978731445362915200.correct : P9978731445362915200.Spec := by
  intro n
  simp only [A298300, Nat.add_sub_cancel]

end A298300

/-! ## A298300.P17212806722070753373

`A005774(n)+∑[A026135(n)]`
-/

namespace A298300.P17212806722070753373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298300.P17212806722070753373

namespace A298300

/-- `A005774(n)+∑[A026135(n)]` -/
def P17212806722070753373.Spec : Prop :=
  ∀ n, P17212806722070753373.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P11610520918684495446

`record[A005773(n)-A086246(n)]`
-/

namespace A298300.P11610520918684495446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - A086246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298300.P11610520918684495446

namespace A298300

/-- `record[A005773(n)-A086246(n)]` -/
def P11610520918684495446.Spec : Prop :=
  ∀ n, P11610520918684495446.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P14613656290104615615

`A005774(n+1)+A002026(n)`
-/

namespace A298300.P14613656290104615615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 1) + A002026 n

end

end A298300.P14613656290104615615

namespace A298300

/-- `A005774(n+1)+A002026(n)` -/
def P14613656290104615615.Spec : Prop :=
  ∀ n, P14613656290104615615.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P10354910247074455973

`A025566(n+2)+A005774(n)`
-/

namespace A298300.P10354910247074455973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 2) + A005774 n

end

end A298300.P10354910247074455973

namespace A298300

/-- `A025566(n+2)+A005774(n)` -/
def P10354910247074455973.Spec : Prop :=
  ∀ n, P10354910247074455973.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P13042904836491653281

`A005773(n+2)-A001006(n)`
-/

namespace A298300.P13042904836491653281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 2) - A001006 n

end

end A298300.P13042904836491653281

namespace A298300

/-- `A005773(n+2)-A001006(n)` -/
def P13042904836491653281.Spec : Prop :=
  ∀ n, P13042904836491653281.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P2897089443233239901

`A025178(n+2)-A005043(n)`
-/

namespace A298300.P2897089443233239901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 2) - A005043 n

end

end A298300.P2897089443233239901

namespace A298300

/-- `A025178(n+2)-A005043(n)` -/
def P2897089443233239901.Spec : Prop :=
  ∀ n, P2897089443233239901.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P12563247328183894824

`A005774(n+1)+Δ[A001006(n)]`
-/

namespace A298300.P12563247328183894824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 1) + (f1 (n + 1) - f1 n)

end

end A298300.P12563247328183894824

namespace A298300

/-- `A005774(n+1)+Δ[A001006(n)]` -/
def P12563247328183894824.Spec : Prop :=
  ∀ n, P12563247328183894824.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P5300439524130317030

`A292440(n+2)+A005773(n+2)`
-/

namespace A298300.P5300439524130317030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 2) + A005773 (n + 2)

end

end A298300.P5300439524130317030

namespace A298300

/-- `A292440(n+2)+A005773(n+2)` -/
def P5300439524130317030.Spec : Prop :=
  ∀ n, P5300439524130317030.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P4499508508060102381

`A005773(n+1)+2*A005774(n)`
-/

namespace A298300.P4499508508060102381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + 2 * A005774 n

end

end A298300.P4499508508060102381

namespace A298300

/-- `A005773(n+1)+2*A005774(n)` -/
def P4499508508060102381.Spec : Prop :=
  ∀ n, P4499508508060102381.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P12875744722734229991

`A005773(n+2)-A086246(n+2)`
-/

namespace A298300.P12875744722734229991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 2) - A086246 (n + 2)

end

end A298300.P12875744722734229991

namespace A298300

/-- `A005773(n+2)-A086246(n+2)` -/
def P12875744722734229991.Spec : Prop :=
  ∀ n, P12875744722734229991.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P2604761497052578579

`2*A005717(n+1)-A005043(n)`
-/

namespace A298300.P2604761497052578579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005717 (n + 1) - A005043 n

end

end A298300.P2604761497052578579

namespace A298300

/-- `2*A005717(n+1)-A005043(n)` -/
def P2604761497052578579.Spec : Prop :=
  ∀ n, P2604761497052578579.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P1310317091759735295

`A113682(n+1)+A113682(n)-A001006(n)`
-/

namespace A298300.P1310317091759735295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113682 (n + 1) + (A113682 n - A001006 n)

end

end A298300.P1310317091759735295

namespace A298300

/-- `A113682(n+1)+A113682(n)-A001006(n)` -/
def P1310317091759735295.Spec : Prop :=
  ∀ n, P1310317091759735295.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P9794695691334789566

`A001006(n+1)+A005774(n+1)-A001006(n)`
-/

namespace A298300.P9794695691334789566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) + (A005774 (n + 1) - A001006 n)

end

end A298300.P9794695691334789566

namespace A298300

/-- `A001006(n+1)+A005774(n+1)-A001006(n)` -/
def P9794695691334789566.Spec : Prop :=
  ∀ n, P9794695691334789566.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P5088274636499630561

`A002426(n+1)+A005717(n+1)-A001006(n)`
-/

namespace A298300.P5088274636499630561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1) + (A005717 (n + 1) - A001006 n)

end

end A298300.P5088274636499630561

namespace A298300

/-- `A002426(n+1)+A005717(n+1)-A001006(n)` -/
def P5088274636499630561.Spec : Prop :=
  ∀ n, P5088274636499630561.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P18379858936272647919

`A278646(n+1)+A278646(n)-A005043(n+1)`
-/

namespace A298300.P18379858936272647919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278646 (n + 1) + (A278646 n - A005043 (n + 1))

end

end A298300.P18379858936272647919

namespace A298300

/-- `A278646(n+1)+A278646(n)-A005043(n+1)` -/
def P18379858936272647919.Spec : Prop :=
  ∀ n, P18379858936272647919.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P12156715959817553532

`A307575(n+1)+A307577(n+1)-A001006(n)`
-/

namespace A298300.P12156715959817553532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307575 (n + 1) + (A307577 (n + 1) - A001006 n)

end

end A298300.P12156715959817553532

namespace A298300

/-- `A307575(n+1)+A307577(n+1)-A001006(n)` -/
def P12156715959817553532.Spec : Prop :=
  ∀ n, P12156715959817553532.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P33705784617238586

`Δ[A002426(n+1)]-A005043(n)`
-/

namespace A298300.P33705784617238586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005043 n

end

end A298300.P33705784617238586

namespace A298300

/-- `Δ[A002426(n+1)]-A005043(n)` -/
def P33705784617238586.Spec : Prop :=
  ∀ n, P33705784617238586.a n = A298300 (n + 2)

end A298300

/-! ## A298300.P5525553614803628682

`A105696(n+2)-A005773(n+1)`
-/

namespace A298300.P5525553614803628682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 (n + 2) - A005773 (n + 1)

end

end A298300.P5525553614803628682

namespace A298300

/-- `A105696(n+2)-A005773(n+1)` -/
def P5525553614803628682.Spec : Prop :=
  ∀ n, P5525553614803628682.a n = A298300 (n + 2)

end A298300

/-!
# A298303: Matula-Goebel numbers of rooted trees with thinning limbs.

The programs for A298303, there is no canonical definition to state claims against.
-/

/-! ## A298303.P18104374939143420549

`lt[A166293(2*(n+2)), A166306(n+1)]`
-/

namespace A298303.P18104374939143420549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166293 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298303.P18104374939143420549

/-! ## A298303.P7091152488405459323

`∑[gcd(A007376(3*n+1), A344339(3*n+2))]`
-/

namespace A298303.P7091152488405459323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007376 (3 * n + 1)) (A344339 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298303.P7091152488405459323

/-! ## A298303.P4076153285180612933

`lt[A309896(2*(n+2)), A118650(A309892(n))]`
-/

namespace A298303.P4076153285180612933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309896 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118650 (A309892 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298303.P4076153285180612933

/-! ## A298303.P15188887766227530219

`lt[Δ[A169951(2*(n+1))], A169980(n)]`
-/

namespace A298303.P15188887766227530219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169951 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A298303.P15188887766227530219

/-!
# A298304: Number of rooted trees on n nodes with strictly thinning limbs.

The programs for A298304, there is no canonical definition to state claims against.
-/

/-! ## A298304.P17291550252169870469

`A261104(2*A036611(n))`
-/

namespace A298304.P17291550252169870469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (2 * A036611 n).toNat

end

end A298304.P17291550252169870469

/-! ## A298304.P8056201882659822941

`A000194(A298416(n))`
-/

namespace A298304.P8056201882659822941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A298416 n).toNat

end

end A298304.P8056201882659822941

/-! ## A298304.P5136772856956566126

`A242455(round(sqrt(A242475(n)))+1)-4`
-/

namespace A298304.P5136772856956566126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242455 (SequenceMachineLib.roundAway (Real.sqrt (A242475 n : ℝ)) + 1).toNat - 4

end

end A298304.P5136772856956566126

/-! ## A298304.P17673672888092296599

`A002024(A003081(n)+A000389(n))`
-/

namespace A298304.P17673672888092296599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A003081 n + A000389 n).toNat

end

end A298304.P17673672888092296599

/-! ## A298304.P660612952064825792

`A000196(A298416(n)+A000045(n))`
-/

namespace A298304.P660612952064825792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A298416 n + A000045 n).toNat

end

end A298304.P660612952064825792

/-!
# A298305: Matula-Goebel numbers of rooted trees with strictly thinning limbs.

The programs for A298305, there is no canonical definition to state claims against.
-/

/-! ## A298305.P17919676431540608545

`record[gcd(n+1, A231290(n)²)]`
-/

namespace A298305.P17919676431540608545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A231290 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298305.P17919676431540608545

/-! ## A298305.P18345547274710397034

`record[gcd(A183362(n+1), A286597(n))]`
-/

namespace A298305.P18345547274710397034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183362 (n + 1)) (A286597 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298305.P18345547274710397034

/-! ## A298305.P11119317302593594947

`A116621(lt[A144084(n), A144061(3*n+2)])`
-/

namespace A298305.P11119317302593594947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144084 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144061 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A298305.P11119317302593594947

/-! ## A298305.P5990877877272625120

`A116621(lt[A144089(n), A144061(3*n+2)])`
-/

namespace A298305.P5990877877272625120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144061 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A298305.P5990877877272625120

/-! ## A298305.P14154798674553975888

`A116621(lt[A102662(n+1), A144061(3*n+2)])`
-/

namespace A298305.P14154798674553975888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144061 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A298305.P14154798674553975888

/-!
# A298307: Start with a(0) = 1 and add at step n >= 0 the term 1 at position floor(4*(n+a(n))/3).

The programs for A298307, there is no canonical definition to state claims against.
-/

/-! ## A298307.P1377330896227197873

`A053692(lcm(A053024(n+1), A078182(n+1)))`
-/

namespace A298307.P1377330896227197873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 (Int.lcm (A053024 (n + 1)) (A078182 (n + 1)))

end

end A298307.P1377330896227197873

/-! ## A298307.P17227884876131275463

`A319138(A055932(A233583(n+1)))%3`
-/

namespace A298307.P17227884876131275463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319138 (A055932 (A233583 (n + 1)).toNat).toNat) 3

end

end A298307.P17227884876131275463

/-! ## A298307.P4479971653632019325

`C(A055457(n+1), A336811(A332279(n)))`
-/

namespace A298307.P4479971653632019325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055457 (n + 1)).toNat (A336811 (A332279 n).toNat).toNat

end

end A298307.P4479971653632019325

/-! ## A298307.P12184867106606595188

`A286852(Δ[A090556(n+1)²])`
-/

namespace A298307.P12184867106606595188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090556 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (f1 (n + 1) - f1 n).toNat

end

end A298307.P12184867106606595188

/-! ## A298307.P2023220567415133402

`A054523(A064189(n)*A278240(n+1))`
-/

namespace A298307.P2023220567415133402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (A064189 n * A278240 (n + 1)).toNat

end

end A298307.P2023220567415133402

/-!
# A298308: Expansion of (9*x^3+9*x+1)^(1/3).

The programs for A298308, there is no canonical definition to state claims against.
-/

/-! ## A298308.P10078372631082777964

`A382196(n)+A000007(A000244(n))`
-/

namespace A298308.P10078372631082777964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382196 n + A000007 (A000244 n).toNat

end

end A298308.P10078372631082777964

/-! ## A298308.P10481084878792736982

`A382196(n)+A335095(A000217(n))`
-/

namespace A298308.P10481084878792736982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382196 n + A335095 (A000217 n).toNat

end

end A298308.P10481084878792736982

/-! ## A298308.P3621529771496109019

`A382196(n)+A127711(A337462(n))`
-/

namespace A298308.P3621529771496109019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382196 n + A127711 (A337462 n).toNat

end

end A298308.P3621529771496109019

/-! ## A298308.P2692018619794256547

`A382196(n)*A382219(A059219(n))`
-/

namespace A298308.P2692018619794256547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382196 n * A382219 (A059219 n).toNat

end

end A298308.P2692018619794256547

/-! ## A298308.P9289545547450122652

`A344300(A102469(n))*A382196(n)`
-/

namespace A298308.P9289545547450122652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344300 (A102469 n).toNat * A382196 n

end

end A298308.P9289545547450122652

/-!
# A298311: Expansion of Product_{k>=1} 1/((1 - x^(2*k))*(1 - x^(2*k-1))^3).

The programs for A298311, there is no canonical definition to state claims against.
-/

/-! ## A298311.P1183775325068640649

`A144120(2*n+3)-A374213(A059676(n+2))`
-/

namespace A298311.P1183775325068640649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144120 (2 * n + 3) - A374213 (A059676 (n + 2)).toNat

end

end A298311.P1183775325068640649

/-! ## A298311.P3067064944787482445

`A000041(2*n+3)%A107592(2*(n+2))-A015128(n+1)`
-/

namespace A298311.P3067064944787482445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (2 * n + 3)) (A107592 (2 * (n + 2))) - A015128 (n + 1)

end

end A298311.P3067064944787482445

/-! ## A298311.P8278744669904408361

`A005041(A005021(n)-A000088(n))`
-/

namespace A298311.P8278744669904408361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A005021 n - A000088 n).toNat

end

end A298311.P8278744669904408361

/-!
# A298314: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298314, there is no canonical definition to state claims against.
-/

/-! ## A298314.P2226576752501536398

`A298320(∑[4*n]+1)`
-/

namespace A298314.P2226576752501536398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298314.P2226576752501536398

/-! ## A298314.P13393570508828616997

`and(-1, A298320(A001844(n)))`
-/

namespace A298314.P13393570508828616997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298320 (A001844 n).toNat)

end

end A298314.P13393570508828616997

/-! ## A298314.P15470327444099558049

`A298320(A001844(n))+A025469(n)`
-/

namespace A298314.P15470327444099558049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A001844 n).toNat + A025469 n

end

end A298314.P15470327444099558049

/-! ## A298314.P10848225399980365948

`A298320(A001844(n))+A185226(n)`
-/

namespace A298314.P10848225399980365948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A001844 n).toNat + A185226 n

end

end A298314.P10848225399980365948

/-! ## A298314.P8988248799286425110

`A298320(A001844(n))+A185284(n)`
-/

namespace A298314.P8988248799286425110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A001844 n).toNat + A185284 n

end

end A298314.P8988248799286425110

/-!
# A298315: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298315, there is no canonical definition to state claims against.
-/

/-! ## A298315.P17027597095062737884

`A298320(∑[n+2]+4)`
-/

namespace A298315.P17027597095062737884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298315.P17027597095062737884

/-! ## A298315.P5758878485313533447

`A299393(∑[n+2]+4)`
-/

namespace A298315.P5758878485313533447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298315.P5758878485313533447

/-! ## A298315.P6153539000692189972

`or(char[1], A299393(A167614(n+1)))`
-/

namespace A298315.P6153539000692189972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A299393 (A167614 (n + 1)).toNat)

end

end A298315.P6153539000692189972

/-! ## A298315.P14025782709113925309

`A298320(A022856(n+6)+1)+char[20]`
-/

namespace A298315.P14025782709113925309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A022856 (n + 6) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298315.P14025782709113925309

/-! ## A298315.P13335743327667746591

`A298320(A167614(n+1))+A185284(n)`
-/

namespace A298315.P13335743327667746591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A167614 (n + 1)).toNat + A185284 n

end

end A298315.P13335743327667746591

/-!
# A298316: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298316, there is no canonical definition to state claims against.
-/

/-! ## A298316.P7476232561501267108

`A298320(∑[n+3]+7)`
-/

namespace A298316.P7476232561501267108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298316.P7476232561501267108

/-! ## A298316.P5339701245559470945

`A299393(∑[n+3]+7)`
-/

namespace A298316.P5339701245559470945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298316.P5339701245559470945

/-! ## A298316.P5131969439892837526

`abs(1-A299393(A167614(n+2)+1))+1`
-/

namespace A298316.P5131969439892837526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A299393 (A167614 (n + 2) + 1).toNat| + 1

end

end A298316.P5131969439892837526

/-! ## A298316.P7367770628259447145

`A298320(A000096(n+2)+5)+A070140(A058838(n+1))`
-/

namespace A298316.P7367770628259447145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A000096 (n + 2) + 5).toNat + A070140 (A058838 (n + 1)).toNat

end

end A298316.P7367770628259447145

/-! ## A298316.P5401640984526211488

`A299393(A046691(n+2)+1)-gcd(n, n+1)+1`
-/

namespace A298316.P5401640984526211488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A046691 (n + 2) + 1).toNat - (Nat.gcd n (n + 1) : ℤ) + 1

end

end A298316.P5401640984526211488

/-!
# A298317: Number of n X 5 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298317, there is no canonical definition to state claims against.
-/

/-! ## A298317.P2609057311708246185

`A298320(∑[n+4]+11)`
-/

namespace A298317.P2609057311708246185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298317.P2609057311708246185

/-! ## A298317.P16093663065281332006

`A298320(A167499(n+3))+A235145(n)`
-/

namespace A298317.P16093663065281332006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A167499 (n + 3)).toNat + A235145 n

end

end A298317.P16093663065281332006

/-! ## A298317.P1455265892444825486

`A298320(A167499(n+3))+A010894(n+1)`
-/

namespace A298317.P1455265892444825486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A167499 (n + 3)).toNat + A010894 (n + 1 + 21)

end

end A298317.P1455265892444825486

/-! ## A298317.P3446389785184053285

`A298320(A167499(n+3))%A298053(2*(n+1))`
-/

namespace A298317.P3446389785184053285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298320 (A167499 (n + 3)).toNat) (A298053 (2 * (n + 1)))

end

end A298317.P3446389785184053285

/-! ## A298317.P2640671267541407924

`lcm(A298320(A167499(n+3)), A330738(2*n+1))`
-/

namespace A298317.P2640671267541407924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A298320 (A167499 (n + 3)).toNat) (A330738 (2 * n + 1))

end

end A298317.P2640671267541407924

/-!
# A298318: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298318, there is no canonical definition to state claims against.
-/

/-! ## A298318.P16575778912408008013

`A298320(A374007(n+1))`
-/

namespace A298318.P16575778912408008013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A374007 (n + 1)).toNat

end

end A298318.P16575778912408008013

/-! ## A298318.P12824863322731694031

`A298320(A056115(n)+21)`
-/

namespace A298318.P12824863322731694031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A056115 n + 21).toNat

end

end A298318.P12824863322731694031

/-! ## A298318.P10639091622038084396

`A298320(A167499(n+4)+1)`
-/

namespace A298318.P10639091622038084396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A167499 (n + 4) + 1).toNat

end

end A298318.P10639091622038084396

/-! ## A298318.P8418263306507617004

`A298320(A167614(n+4)+3)`
-/

namespace A298318.P8418263306507617004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A167614 (n + 4) + 3).toNat

end

end A298318.P8418263306507617004

/-! ## A298318.P14392844562118229162

`A298320(A000124(n+5)+5)`
-/

namespace A298318.P14392844562118229162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A000124 (n + 5) + 5).toNat

end

end A298318.P14392844562118229162

/-!
# A298319: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298319, there is no canonical definition to state claims against.
-/

/-! ## A298319.P2190405334307427114

`A298320(A374008(n+1))`
-/

namespace A298319.P2190405334307427114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A374008 (n + 1)).toNat

end

end A298319.P2190405334307427114

/-! ## A298319.P5569389676490552523

`A298320(A167487(n+5))`
-/

namespace A298319.P5569389676490552523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A167487 (n + 5)).toNat

end

end A298319.P5569389676490552523

/-! ## A298319.P15621928108047837859

`A298320(A056119(n)+28)`
-/

namespace A298319.P15621928108047837859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A056119 n + 28).toNat

end

end A298319.P15621928108047837859

/-! ## A298319.P10907146148602629118

`A298320(eq[11, A066657(n)])`
-/

namespace A298319.P10907146148602629118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298319.P10907146148602629118

/-! ## A298319.P2866905040540450178

`A298320(A167499(n+5)+2)`
-/

namespace A298319.P2866905040540450178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (A167499 (n + 5) + 2).toNat

end

end A298319.P2866905040540450178

/-!
# A298320: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298320, there is no canonical definition to state claims against.
-/

/-! ## A298320.P15621925595518143061

`A299393(n+1)-A185284(A334546(n))`
-/

namespace A298320.P15621925595518143061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (n + 1) - A185284 (A334546 n).toNat

end

end A298320.P15621925595518143061

/-! ## A298320.P1207192549365609531

`A299393(n+1)-A185284(A252463(n+1))`
-/

namespace A298320.P1207192549365609531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (n + 1) - A185284 (A252463 (n + 1)).toNat

end

end A298320.P1207192549365609531

/-! ## A298320.P15847296344190923139

`A299393(n+1)%A344861(n+1)`
-/

namespace A298320.P15847296344190923139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299393 (n + 1)) (A344861 (n + 1))

end

end A298320.P15847296344190923139

/-! ## A298320.P9416137713937150083

`and(A299393(n+1), A349820(n+1))`
-/

namespace A298320.P9416137713937150083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A299393 (n + 1)) (A349820 (n + 1))

end

end A298320.P9416137713937150083

/-! ## A298320.P11878267668685227430

`A299393(n+1)+A010051(A299427(n))`
-/

namespace A298320.P11878267668685227430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (n + 1) + A010051 (A299427 n).toNat

end

end A298320.P11878267668685227430

/-!
# A298321: The Nekrasov-Okounkov sequence.

The programs for A298321, there is no canonical definition to state claims against.
-/

/-! ## A298321.P9327344603756376871

`A028310(n+1-A389567(n+1))`
-/

namespace A298321.P9327344603756376871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n + 1 : ℤ) - A389567 (n + 1)).toNat

end

end A298321.P9327344603756376871

/-!
# A298322: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298322, there is no canonical definition to state claims against.
-/

/-! ## A298322.P2168459569807988982

`A298328(∑[4*n]+1)`
-/

namespace A298322.P2168459569807988982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298322.P2168459569807988982

/-! ## A298322.P9010676784697184186

`record[A298328(A330613(n+1))]`
-/

namespace A298322.P9010676784697184186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298322.P9010676784697184186

/-! ## A298322.P10365496538050265067

`A298328(A001844(n))+char[10]`
-/

namespace A298322.P10365496538050265067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298322.P10365496538050265067

/-! ## A298322.P5648660198767161078

`record[A298328(A226725(n+1)+1)]`
-/

namespace A298322.P5648660198767161078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A226725 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298322.P5648660198767161078

/-! ## A298322.P12575720915777927900

`record[A003982(n)*A298328(n+1)]`
-/

namespace A298322.P12575720915777927900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298322.P12575720915777927900

/-!
# A298323: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298323, there is no canonical definition to state claims against.
-/

/-! ## A298323.P7678834214853909396

`A298328(∑[n+2]+4)`
-/

namespace A298323.P7678834214853909396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298323.P7678834214853909396

/-! ## A298323.P9801989886911786062

`A298328(A167614(n+1))%(5^(n+1))`
-/

namespace A298323.P9801989886911786062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298328 (A167614 (n + 1)).toNat) (5 ^ (n + 1) : ℤ)

end

end A298323.P9801989886911786062

/-! ## A298323.P4063349744703054888

`gcd(A000038(n), A298328(A167614(n+1)))`
-/

namespace A298323.P4063349744703054888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A298328 (A167614 (n + 1)).toNat)

end

end A298323.P4063349744703054888

/-! ## A298323.P11194521286749023107

`or(A000007(n), A298328(A167614(n+1)))`
-/

namespace A298323.P11194521286749023107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A298328 (A167614 (n + 1)).toNat)

end

end A298323.P11194521286749023107

/-! ## A298323.P11756442204907634281

`A298328(A167614(n+1))+A000122(A000040(n+1))`
-/

namespace A298323.P11756442204907634281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A167614 (n + 1)).toNat + A000122 (A000040 (n + 1)).toNat

end

end A298323.P11756442204907634281

/-!
# A298324: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298324, there is no canonical definition to state claims against.
-/

/-! ## A298324.P11282771113822533631

`A298328(A374004(n+1))`
-/

namespace A298324.P11282771113822533631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A374004 (n + 1)).toNat

end

end A298324.P11282771113822533631

/-! ## A298324.P11007230553003974848

`A298328(A052905(n)+9)`
-/

namespace A298324.P11007230553003974848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A052905 n + 9).toNat

end

end A298324.P11007230553003974848

/-! ## A298324.P13770621706822903220

`A298328(A055999(n)+10)`
-/

namespace A298324.P13770621706822903220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A055999 n + 10).toNat

end

end A298324.P13770621706822903220

/-! ## A298324.P14936352967473377868

`A298328(A167614(n+2)+1)`
-/

namespace A298324.P14936352967473377868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A167614 (n + 2) + 1).toNat

end

end A298324.P14936352967473377868

/-! ## A298324.P529595199022917535

`A298328(A166136(n+2)-2)`
-/

namespace A298324.P529595199022917535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A166136 (n + 2) - 2).toNat

end

end A298324.P529595199022917535

/-!
# A298325: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298325, there is no canonical definition to state claims against.
-/

/-! ## A298325.P16073656944603553644

`A298328(A374005(n+1))`
-/

namespace A298325.P16073656944603553644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A374005 (n + 1)).toNat

end

end A298325.P16073656944603553644

/-! ## A298325.P9827888210375825443

`A298328(A167499(n+3))`
-/

namespace A298325.P9827888210375825443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A167499 (n + 3)).toNat

end

end A298325.P9827888210375825443

/-! ## A298325.P15560150474368812728

`A298328(A155212(n)+13)`
-/

namespace A298325.P15560150474368812728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A155212 n + 13).toNat

end

end A298325.P15560150474368812728

/-! ## A298325.P5487752668850150330

`A298328(A056000(n)+15)`
-/

namespace A298325.P5487752668850150330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A056000 n + 15).toNat

end

end A298325.P5487752668850150330

/-! ## A298325.P15062865974250283232

`A298328(A000096(n+3)+6)`
-/

namespace A298325.P15062865974250283232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A000096 (n + 3) + 6).toNat

end

end A298325.P15062865974250283232

/-!
# A298326: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298326, there is no canonical definition to state claims against.
-/

/-! ## A298326.P3546661368743974376

`A298328(A374007(n+1))`
-/

namespace A298326.P3546661368743974376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A374007 (n + 1)).toNat

end

end A298326.P3546661368743974376

/-! ## A298326.P14747898957165009464

`A298328(A166136(n+4))`
-/

namespace A298326.P14747898957165009464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A166136 (n + 4)).toNat

end

end A298326.P14747898957165009464

/-! ## A298326.P1948679551928522005

`A298328(A056115(n)+21)`
-/

namespace A298326.P1948679551928522005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A056115 n + 21).toNat

end

end A298326.P1948679551928522005

/-! ## A298326.P1310018049630350752

`A298328(eq[6, A130270(n+1)])`
-/

namespace A298326.P1310018049630350752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298326.P1310018049630350752

/-! ## A298326.P3747796743095214631

`A298328(eq[7, A131818(n+1)])`
-/

namespace A298326.P3747796743095214631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298326.P3747796743095214631

/-!
# A298327: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298327, there is no canonical definition to state claims against.
-/

/-! ## A298327.P6925165561488320291

`A298328(A374008(n+1))`
-/

namespace A298327.P6925165561488320291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A374008 (n + 1)).toNat

end

end A298327.P6925165561488320291

/-! ## A298327.P6539083658911853017

`A298328(A302537(n)+27)`
-/

namespace A298327.P6539083658911853017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A302537 n + 27).toNat

end

end A298327.P6539083658911853017

/-! ## A298327.P9354926279085231186

`A298328(A056119(n)+28)`
-/

namespace A298327.P9354926279085231186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A056119 n + 28).toNat

end

end A298327.P9354926279085231186

/-! ## A298327.P5639045878567148567

`A298328(eq[8, A131818(n+1)])`
-/

namespace A298327.P5639045878567148567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298327.P5639045878567148567

/-! ## A298327.P12226494868651697241

`A298328(A055999(n+4))`
-/

namespace A298327.P12226494868651697241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298328 (A055999 (n + 4)).toNat

end

end A298327.P12226494868651697241

/-!
# A298328: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298328, there is no canonical definition to state claims against.
-/

/-! ## A298328.P18302281689507175555

`A299221(n+1)-A185037(A008288(n))`
-/

namespace A298328.P18302281689507175555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (n + 1) - A185037 (A008288 n).toNat

end

end A298328.P18302281689507175555

/-! ## A298328.P13514238496152403348

`A300035(n+1)-A185037(A008288(n))`
-/

namespace A298328.P13514238496152403348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (n + 1) - A185037 (A008288 n).toNat

end

end A298328.P13514238496152403348

/-! ## A298328.P8916493131673505006

`A299221(n+1)-A137579(A117401(n))`
-/

namespace A298328.P8916493131673505006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (n + 1) - A137579 (A117401 n).toNat

end

end A298328.P8916493131673505006

/-! ## A298328.P4503820959922817712

`A300035(n+1)-A137579(A117401(n))`
-/

namespace A298328.P4503820959922817712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (n + 1) - A137579 (A117401 n).toNat

end

end A298328.P4503820959922817712

/-! ## A298328.P16395132393324621670

`A299221(n+1)-A185037(A185063(n))`
-/

namespace A298328.P16395132393324621670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (n + 1) - A185037 (A185063 n).toNat

end

end A298328.P16395132393324621670

/-!
# A298330: Number of ordered ways of writing n^2 as a sum of n squares of positive integers.

The programs for A298330, there is no canonical definition to state claims against.
-/

/-! ## A298330.P16792446303542317149

`A337165(2*(C(n, 2)+1)*∑[n])`
-/

namespace A298330.P16792446303542317149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (2 * ((Nat.choose n 2 + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A298330.P16792446303542317149

/-! ## A298330.P2224759860371182717

`A337165(∑[n]+(n^4+n)/2)`
-/

namespace A298330.P2224759860371182717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n ^ 4 + n : ℚ) / 2)).toNat

end

end A298330.P2224759860371182717

/-! ## A298330.P13793123534120912950

`A317037(a(n-1)+a(n-2)-2)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A298330.P13793123534120912950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 3] fun n a =>
  A317037 (a (n - 1) + a (n - 2) - 2).toNat

end

end A298330.P13793123534120912950

/-!
# A298331: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298331, there is no canonical definition to state claims against.
-/

/-! ## A298331.P4371612024696266429

`A298337(∑[4*n]+1)`
-/

namespace A298331.P4371612024696266429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298331.P4371612024696266429

/-! ## A298331.P3445896151856072437

`A298337(A001844(n))+A185255(n)`
-/

namespace A298331.P3445896151856072437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A001844 n).toNat + A185255 n

end

end A298331.P3445896151856072437

/-! ## A298331.P10330801776486168829

`A298337(A001844(n))+A185284(n)`
-/

namespace A298331.P10330801776486168829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A001844 n).toNat + A185284 n

end

end A298331.P10330801776486168829

/-! ## A298331.P2389745258165152929

`A136400(n)*A298337(A001844(n))`
-/

namespace A298331.P2389745258165152929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n * A298337 (A001844 n).toNat

end

end A298331.P2389745258165152929

/-! ## A298331.P14911353430677613096

`lcm(A064770(n), A298337(A001844(n)))`
-/

namespace A298331.P14911353430677613096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064770 n) (A298337 (A001844 n).toNat)

end

end A298331.P14911353430677613096

/-!
# A298332: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298332, there is no canonical definition to state claims against.
-/

/-! ## A298332.P10737662743668690609

`A298337(∑[n+2]+4)`
-/

namespace A298332.P10737662743668690609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298332.P10737662743668690609

/-! ## A298332.P2347662416463619395

`A299398(∑[n+2]+4)`
-/

namespace A298332.P2347662416463619395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298332.P2347662416463619395

/-! ## A298332.P2709915144621939294

`A299398(A167614(n+1))+A011737(n)`
-/

namespace A298332.P2709915144621939294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A167614 (n + 1)).toNat + A011737 n

end

end A298332.P2709915144621939294

/-! ## A298332.P11375627220255230837

`A298337(A167614(n+1))+A025443(n)`
-/

namespace A298332.P11375627220255230837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A167614 (n + 1)).toNat + A025443 n

end

end A298332.P11375627220255230837

/-! ## A298332.P1338838498734044692

`A299398(A167614(n+1))+A025469(n)`
-/

namespace A298332.P1338838498734044692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A167614 (n + 1)).toNat + A025469 n

end

end A298332.P1338838498734044692

/-!
# A298333: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298333, there is no canonical definition to state claims against.
-/

/-! ## A298333.P12431869650794765777

`A298337(A374004(n+1))`
-/

namespace A298333.P12431869650794765777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A374004 (n + 1)).toNat

end

end A298333.P12431869650794765777

/-! ## A298333.P14099760508514956688

`A299398(A141214(n)+7)`
-/

namespace A298333.P14099760508514956688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A141214 n + 7).toNat

end

end A298333.P14099760508514956688

/-! ## A298333.P3558771438393605261

`A298337(A055999(n)+10)`
-/

namespace A298333.P3558771438393605261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A055999 n + 10).toNat

end

end A298333.P3558771438393605261

/-! ## A298333.P15565087356637825710

`A298337(A167614(n+2)+1)`
-/

namespace A298333.P15565087356637825710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A167614 (n + 2) + 1).toNat

end

end A298333.P15565087356637825710

/-! ## A298333.P17709769577067773460

`A299398(A167614(n+2)+1)`
-/

namespace A298333.P17709769577067773460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A167614 (n + 2) + 1).toNat

end

end A298333.P17709769577067773460

/-!
# A298334: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298334, there is no canonical definition to state claims against.
-/

/-! ## A298334.P8345535920096431361

`A298337(A374005(n+1))`
-/

namespace A298334.P8345535920096431361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A374005 (n + 1)).toNat

end

end A298334.P8345535920096431361

/-! ## A298334.P1677766504542905248

`A298337(A155212(n)+13)`
-/

namespace A298334.P1677766504542905248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A155212 n + 13).toNat

end

end A298334.P1677766504542905248

/-! ## A298334.P3905835326351874697

`A298337(A056000(n)+15)`
-/

namespace A298334.P3905835326351874697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A056000 n + 15).toNat

end

end A298334.P3905835326351874697

/-! ## A298334.P11284452932139060999

`A298337(A055998(n+2)+8)`
-/

namespace A298334.P11284452932139060999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A055998 (n + 2) + 8).toNat

end

end A298334.P11284452932139060999

/-! ## A298334.P1289832306502780733

`A298337(eq[6, A131818(n+1)])`
-/

namespace A298334.P1289832306502780733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298334.P1289832306502780733

/-!
# A298335: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298335, there is no canonical definition to state claims against.
-/

/-! ## A298335.P249465172333158154

`A298337(A374007(n+1))`
-/

namespace A298335.P249465172333158154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A374007 (n + 1)).toNat

end

end A298335.P249465172333158154

/-! ## A298335.P6034388592726621416

`A298337(A000124(n+5)+5)`
-/

namespace A298335.P6034388592726621416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A000124 (n + 5) + 5).toNat

end

end A298335.P6034388592726621416

/-! ## A298335.P8185569464624938722

`A298337(eq[7, A131818(n+1)])`
-/

namespace A298335.P8185569464624938722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298335.P8185569464624938722

/-! ## A298335.P13723776119714915214

`A298337(A052905(n+3))`
-/

namespace A298335.P13723776119714915214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A052905 (n + 3)).toNat

end

end A298335.P13723776119714915214

/-! ## A298335.P13266263214131121752

`A298337(eq[3, A219347(n)])`
-/

namespace A298335.P13266263214131121752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298335.P13266263214131121752

/-!
# A298336: Number of n X 7 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298336, there is no canonical definition to state claims against.
-/

/-! ## A298336.P14712153374558877725

`A298337(A374008(n+1))`
-/

namespace A298336.P14712153374558877725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A374008 (n + 1)).toNat

end

end A298336.P14712153374558877725

/-! ## A298336.P9741270921124834812

`A298337(eq[8, A131818(n+1)])`
-/

namespace A298336.P9741270921124834812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298336.P9741270921124834812

/-! ## A298336.P1379671687156379986

`A298337(A055999(n+4))`
-/

namespace A298336.P1379671687156379986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A055999 (n + 4)).toNat

end

end A298336.P1379671687156379986

/-! ## A298336.P17224488344319030246

`A298337(A056121(n)+22)`
-/

namespace A298336.P17224488344319030246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (A056121 n + 22).toNat

end

end A298336.P17224488344319030246

/-! ## A298336.P12421340341727114062

`A298337(eq[4, A219347(n)])`
-/

namespace A298336.P12421340341727114062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298336.P12421340341727114062

/-!
# A298337: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298337, there is no canonical definition to state claims against.
-/

/-! ## A298337.P10182621953225951602

`A299398(∑[A010894(n)!])`
-/

namespace A298337.P10182621953225951602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298337.P10182621953225951602

/-! ## A298337.P6779129083956233980

`A299398(n+1)%A007825(n)`
-/

namespace A298337.P6779129083956233980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299398 (n + 1)) (A007825 n)

end

end A298337.P6779129083956233980

/-! ## A298337.P16403399093396292109

`A299398(n+1)^A010894(n)!`
-/

namespace A298337.P16403399093396292109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (n + 1) ^ Nat.factorial (A010894 (n + 21)).toNat

end

end A298337.P16403399093396292109

/-! ## A298337.P11742184057429679232

`A000027(A299398(n+1)+1)-1`
-/

namespace A298337.P11742184057429679232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A299398 (n + 1) + 1).toNat - 1

end

end A298337.P11742184057429679232

/-! ## A298337.P5666642376330784855

`A299398(n+1)+A000007(A291845(n))`
-/

namespace A298337.P5666642376330784855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (n + 1) + A000007 (A291845 n).toNat

end

end A298337.P5666642376330784855

/-!
# A298338: a(n) = a(n-1) + a(n-2) + a([n/2]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298338, the canonical program `A298338.P16836208891246166904` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298338 has offset 0).

The definition of A298338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298338.P16836208891246166904

`a(n-1)+a(n-2)+a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298338

/-- `a(n-1)+a(n-2)+a(floor(n/2))` -/
def P16836208891246166904.Spec : Prop :=
  ∀ n, (P16836208891246166904.a n : ℤ) = A298338 n

theorem P16836208891246166904.correct : P16836208891246166904.Spec := by
  intro n
  simp only [A298338]

end A298338

/-! ## A298338.P8031857246150324682

`a(val(2^n, 4))+2-(4/2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A298338.P8031857246150324682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (SequenceMachineLib.valuation (2 ^ n) 4) + (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2)))

end

end A298338.P8031857246150324682

namespace A298338

/-- `a(val(2^n, 4))+2-(4/2-a(n-1)-a(n-2))` -/
def P8031857246150324682.Spec : Prop :=
  ∀ n, P8031857246150324682.a n = (A298338 n : ℚ)

end A298338

/-! ## A298338.P18079247852703732138

`Δ[A363503(n+1)]-A363503(n+1)`
-/

namespace A298338.P18079247852703732138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A363503 (n + 1)

end

end A298338.P18079247852703732138

namespace A298338

/-- `Δ[A363503(n+1)]-A363503(n+1)` -/
def P18079247852703732138.Spec : Prop :=
  ∀ n, P18079247852703732138.a n = A298338 n

end A298338

/-! ## A298338.P11581929530153091189

`A363503(n+2)-(A363503(n+1)+A363503(n+1))`
-/

namespace A298338.P11581929530153091189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363503 (n + 2) - (A363503 (n + 1) + A363503 (n + 1))

end

end A298338.P11581929530153091189

namespace A298338

/-- `A363503(n+2)-(A363503(n+1)+A363503(n+1))` -/
def P11581929530153091189.Spec : Prop :=
  ∀ n, P11581929530153091189.a n = A298338 n

end A298338

/-! ## A298338.P12578055106158308550

`A316355(A026151(n))`
-/

namespace A298338.P12578055106158308550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A026151 n).toNat

end

end A298338.P12578055106158308550

namespace A298338

/-- `A316355(A026151(n))` -/
def P12578055106158308550.Spec : Prop :=
  ∀ n, P12578055106158308550.a n = A298338 n

end A298338

/-!
# A298339: a(n) = a(n-1) + a(n-2) + a([n/2]), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298339, the canonical program `A298339.P5659736485036873047` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298339 has offset 0).

The definition of A298339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298339.P5659736485036873047

`a(n-1)+a(n-2)+a(floor(n/2))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298339

/-- `a(n-1)+a(n-2)+a(floor(n/2))` -/
def P5659736485036873047.Spec : Prop :=
  ∀ n, (P5659736485036873047.a n : ℤ) = A298339 n

theorem P5659736485036873047.correct : P5659736485036873047.Spec := by
  intro n
  simp only [A298339]

end A298339

/-! ## A298339.P5319162576606579974

`a(val(2^n, 4))+2-(4/2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A298339.P5319162576606579974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (SequenceMachineLib.valuation (2 ^ n) 4) + (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2)))

end

end A298339.P5319162576606579974

namespace A298339

/-- `a(val(2^n, 4))+2-(4/2-a(n-1)-a(n-2))` -/
def P5319162576606579974.Spec : Prop :=
  ∀ n, P5319162576606579974.a n = (A298339 n : ℚ)

end A298339

/-! ## A298339.P13240924802639513876

`A316428(A018135(n+1))`
-/

namespace A298339.P13240924802639513876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316428 (A018135 (n + 1)).toNat

end

end A298339.P13240924802639513876

namespace A298339

/-- `A316428(A018135(n+1))` -/
def P13240924802639513876.Spec : Prop :=
  ∀ n, P13240924802639513876.a n = A298339 n

end A298339

/-! ## A298339.P9805392068867895394

`A336119(A042581(n+1))`
-/

namespace A298339.P9805392068867895394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336119 (A042581 (n + 1)).toNat

end

end A298339.P9805392068867895394

namespace A298339

/-- `A336119(A042581(n+1))` -/
def P9805392068867895394.Spec : Prop :=
  ∀ n, P9805392068867895394.a n = A298339 n

end A298339

/-!
# A298340: a(n) = a(n-1) + a(n-2) + a([n/3]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298340, the canonical program `A298340.P13755910413397657280` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298340 has offset 0).

The definition of A298340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298340.P13755910413397657280

`a(n-1)+a(n-2)+a(floor(n/3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298340

/-- `a(n-1)+a(n-2)+a(floor(n/3))` -/
def P13755910413397657280.Spec : Prop :=
  ∀ n, (P13755910413397657280.a n : ℤ) = A298340 n

theorem P13755910413397657280.correct : P13755910413397657280.Spec := by
  intro n
  simp only [A298340]

end A298340

/-! ## A298340.P6756138906468106204

`A001650(A182899(n)+1)`
-/

namespace A298340.P6756138906468106204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A182899 n + 1).toNat

end

end A298340.P6756138906468106204

namespace A298340

/-- `A001650(A182899(n)+1)` -/
def P6756138906468106204.Spec : Prop :=
  ∀ n, P6756138906468106204.a n = A298340 n

end A298340

/-! ## A298340.P13540738285807514487

`A316355(A089372(n+1))`
-/

namespace A298340.P13540738285807514487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A089372 (n + 1)).toNat

end

end A298340.P13540738285807514487

namespace A298340

/-- `A316355(A089372(n+1))` -/
def P13540738285807514487.Spec : Prop :=
  ∀ n, P13540738285807514487.a n = A298340 n

end A298340

/-! ## A298340.P4326542982683760073

`or(1, A026819(A332491(n)))`
-/

namespace A298340.P4326542982683760073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026819 (A332491 n).toNat)

end

end A298340.P4326542982683760073

namespace A298340

/-- `or(1, A026819(A332491(n)))` -/
def P4326542982683760073.Spec : Prop :=
  ∀ n, P4326542982683760073.a n = A298340 n

end A298340

/-! ## A298340.P15883002490051233522

`or(A046155(A332491(n)), A098190(n+1))`
-/

namespace A298340.P15883002490051233522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046155 (A332491 n).toNat) (A098190 (n + 1))

end

end A298340.P15883002490051233522

namespace A298340

/-- `or(A046155(A332491(n)), A098190(n+1))` -/
def P15883002490051233522.Spec : Prop :=
  ∀ n, P15883002490051233522.a n = A298340 n

end A298340

/-!
# A298341: a(n) = a(n-1) + a(n-2) + a([n/3]), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298341, the canonical program `A298341.P9179979227037000160` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298341 has offset 0).

The definition of A298341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298341.P9179979227037000160

`a(n-1)+a(n-2)+a(floor(n/3))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298341

/-- `a(n-1)+a(n-2)+a(floor(n/3))` -/
def P9179979227037000160.Spec : Prop :=
  ∀ n, (P9179979227037000160.a n : ℤ) = A298341 n

theorem P9179979227037000160.correct : P9179979227037000160.Spec := by
  intro n
  simp only [A298341]

end A298341

/-! ## A298341.P8638815810704537744

`A003056(∑[A303307(n)])`
-/

namespace A298341.P8638815810704537744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298341.P8638815810704537744

namespace A298341

/-- `A003056(∑[A303307(n)])` -/
def P8638815810704537744.Spec : Prop :=
  ∀ n, P8638815810704537744.a n = A298341 n

end A298341

/-! ## A298341.P1678612088322942932

`A002024(∑[A003293(n)²])`
-/

namespace A298341.P1678612088322942932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003293 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298341.P1678612088322942932

namespace A298341

/-- `A002024(∑[A003293(n)²])` -/
def P1678612088322942932.Spec : Prop :=
  ∀ n, P1678612088322942932.a n = A298341 n

end A298341

/-! ## A298341.P13516940992050762312

`A123578(∑[A003293(n)²])`
-/

namespace A298341.P13516940992050762312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003293 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298341.P13516940992050762312

namespace A298341

/-- `A123578(∑[A003293(n)²])` -/
def P13516940992050762312.Spec : Prop :=
  ∀ n, P13516940992050762312.a n = A298341 n

end A298341

/-! ## A298341.P4912629446464628001

`A259361(A258109(n+3)+1)`
-/

namespace A298341.P4912629446464628001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A258109 (n + 3) + 1).toNat

end

end A298341.P4912629446464628001

namespace A298341

/-- `A259361(A258109(n+3)+1)` -/
def P4912629446464628001.Spec : Prop :=
  ∀ n, P4912629446464628001.a n = A298341 n

end A298341

/-!
# A298342: a(n) = a(n-1) + a(n-2) + a([2n/3]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298342, the canonical program `A298342.P13261901524714841538` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298342 has offset 0).

The definition of A298342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298342.P13261901524714841538

`a(n-1)+a(n-2)+a(floor(2*n/3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298342

/-- `a(n-1)+a(n-2)+a(floor(2*n/3))` -/
def P13261901524714841538.Spec : Prop :=
  ∀ n, (P13261901524714841538.a n : ℤ) = A298342 n

theorem P13261901524714841538.correct : P13261901524714841538.Spec := by
  intro n
  simp only [A298342]

end A298342

/-! ## A298342.P11483714816466686534

`A316355(A036766(n))`
-/

namespace A298342.P11483714816466686534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A036766 n).toNat

end

end A298342.P11483714816466686534

namespace A298342

/-- `A316355(A036766(n))` -/
def P11483714816466686534.Spec : Prop :=
  ∀ n, P11483714816466686534.a n = A298342 n

end A298342

/-! ## A298342.P16899903041129616197

`A316355(A366024(n))`
-/

namespace A298342.P16899903041129616197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A366024 n).toNat

end

end A298342.P16899903041129616197

namespace A298342

/-- `A316355(A366024(n))` -/
def P16899903041129616197.Spec : Prop :=
  ∀ n, P16899903041129616197.a n = A298342 n

end A298342

/-! ## A298342.P9920891854661630288

`A099375(2*A191629(n+2)²)`
-/

namespace A298342.P9920891854661630288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (2 * A191629 (n + 2) ^ 2).toNat

end

end A298342.P9920891854661630288

namespace A298342

/-- `A099375(2*A191629(n+2)²)` -/
def P9920891854661630288.Spec : Prop :=
  ∀ n, P9920891854661630288.a n = A298342 n

end A298342

/-! ## A298342.P1966714310874318925

`A008611(n*A006355(A002998(n)))`
-/

namespace A298342.P1966714310874318925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((n : ℤ) * A006355 (A002998 n).toNat).toNat

end

end A298342.P1966714310874318925

namespace A298342

/-- `A008611(n*A006355(A002998(n)))` -/
def P1966714310874318925.Spec : Prop :=
  ∀ n, P1966714310874318925.a n = A298342 n

end A298342

/-!
# A298343: a(n) = a(n-1) + a(n-2) + a([2n/3]), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298343, the canonical program `A298343.P13407067955418248741` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298343 has offset 0).

The definition of A298343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298343.P13407067955418248741

`a(n-1)+a(n-2)+a(floor(2*n/3))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298343

/-- `a(n-1)+a(n-2)+a(floor(2*n/3))` -/
def P13407067955418248741.Spec : Prop :=
  ∀ n, (P13407067955418248741.a n : ℤ) = A298343 n

theorem P13407067955418248741.correct : P13407067955418248741.Spec := by
  intro n
  simp only [A298343]

end A298343

/-! ## A298343.P7958400683249069009

`A213368(n+1)-A109042(2*n)`
-/

namespace A298343.P7958400683249069009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213368 (n + 1) - A109042 (2 * n)

end

end A298343.P7958400683249069009

namespace A298343

/-- `A213368(n+1)-A109042(2*n)` -/
def P7958400683249069009.Spec : Prop :=
  ∀ n, P7958400683249069009.a n = A298343 n

end A298343

/-! ## A298343.P486463493619099417

`abs(A096501(n+1)-A213368(n+1))`
-/

namespace A298343.P486463493619099417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096501 (n + 1) - A213368 (n + 1)|

end

end A298343.P486463493619099417

namespace A298343

/-- `abs(A096501(n+1)-A213368(n+1))` -/
def P486463493619099417.Spec : Prop :=
  ∀ n, P486463493619099417.a n = A298343 n

end A298343

/-! ## A298343.P292905819905293553

`A319319(A089259(n))+A106621(n)`
-/

namespace A298343.P292905819905293553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319319 (A089259 n).toNat + A106621 n

end

end A298343.P292905819905293553

namespace A298343

/-- `A319319(A089259(n))+A106621(n)` -/
def P292905819905293553.Spec : Prop :=
  ∀ n, P292905819905293553.a n = A298343 n

end A298343

/-!
# A298344: a(n) = a(n-1) + a(n-2) + a([n/3]) + a([2n/3]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298344, the canonical program `A298344.P12385823715115433042` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298344 has offset 0).

The definition of A298344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298344.P12385823715115433042

`a(n-1)+a(n-2)+a(floor(n/3))+a(floor(2*n/3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298344

/-- `a(n-1)+a(n-2)+a(floor(n/3))+a(floor(2*n/3))` -/
def P12385823715115433042.Spec : Prop :=
  ∀ n, (P12385823715115433042.a n : ℤ) = A298344 n

theorem P12385823715115433042.correct : P12385823715115433042.Spec := by
  intro n
  simp only [A298344]

end A298344

/-! ## A298344.P10705529977478677850

`A352272(A294444(n))`
-/

namespace A298344.P10705529977478677850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352272 (A294444 n).toNat

end

end A298344.P10705529977478677850

namespace A298344

/-- `A352272(A294444(n))` -/
def P10705529977478677850.Spec : Prop :=
  ∀ n, P10705529977478677850.a n = A298344 n

end A298344

/-! ## A298344.P2602289791964416828

`A132083(A298342(n))`
-/

namespace A298344.P2602289791964416828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132083 (A298342 n).toNat

end

end A298344.P2602289791964416828

namespace A298344

/-- `A132083(A298342(n))` -/
def P2602289791964416828.Spec : Prop :=
  ∀ n, P2602289791964416828.a n = A298344 n

end A298344

/-! ## A298344.P3788278407085501448

`A262288(A001045(n))+A029331(n)`
-/

namespace A298344.P3788278407085501448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262288 (A001045 n).toNat + A029331 n

end

end A298344.P3788278407085501448

namespace A298344

/-- `A262288(A001045(n))+A029331(n)` -/
def P3788278407085501448.Spec : Prop :=
  ∀ n, P3788278407085501448.a n = A298344 n

end A298344

/-! ## A298344.P11072496016163554903

`A257639(A298342(n)*A298345(n))`
-/

namespace A298344.P11072496016163554903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A298342 n * A298345 n).toNat

end

end A298344.P11072496016163554903

namespace A298344

/-- `A257639(A298342(n)*A298345(n))` -/
def P11072496016163554903.Spec : Prop :=
  ∀ n, P11072496016163554903.a n = A298344 n

end A298344

/-!
# A298345: a(n) = a(n-1) + a(n-2) + a([n/3]) + a([2n/3]), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298345, the canonical program `A298345.P7488059175694262483` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298345 has offset 0).

The definition of A298345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298345.P7488059175694262483

`a(n-1)+a(n-2)+a(floor(n/3))+a(floor(2*n/3))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298345

/-- `a(n-1)+a(n-2)+a(floor(n/3))+a(floor(2*n/3))` -/
def P7488059175694262483.Spec : Prop :=
  ∀ n, (P7488059175694262483.a n : ℤ) = A298345 n

theorem P7488059175694262483.correct : P7488059175694262483.Spec := by
  intro n
  simp only [A298345]

end A298345

/-! ## A298345.P8161755942754268077

`A077473(A038754(n))-A210838(n)`
-/

namespace A298345.P8161755942754268077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077473 (A038754 n).toNat - A210838 n

end

end A298345.P8161755942754268077

namespace A298345

/-- `A077473(A038754(n))-A210838(n)` -/
def P8161755942754268077.Spec : Prop :=
  ∀ n, P8161755942754268077.a n = A298345 n

end A298345

/-!
# A298346: a(n) = a(n-1) + a(n-2) + 2 a([n/2]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298346, the canonical program `A298346.P5843251951165422637` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298346 has offset 0).

The definition of A298346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298346.P5843251951165422637

`a(n-1)+a(n-2)+2*a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298346

/-- `a(n-1)+a(n-2)+2*a(floor(n/2))` -/
def P5843251951165422637.Spec : Prop :=
  ∀ n, (P5843251951165422637.a n : ℤ) = A298346 n

theorem P5843251951165422637.correct : P5843251951165422637.Spec := by
  intro n
  simp only [A298346]

end A298346

/-! ## A298346.P17453854335272351356

`A274933(A393316(n))`
-/

namespace A298346.P17453854335272351356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274933 (A393316 n).toNat

end

end A298346.P17453854335272351356

namespace A298346

/-- `A274933(A393316(n))` -/
def P17453854335272351356.Spec : Prop :=
  ∀ n, P17453854335272351356.a n = A298346 n

end A298346

/-! ## A298346.P11329399044648295654

`A069623(A108555(n)-n)`
-/

namespace A298346.P11329399044648295654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A108555 n - (n : ℤ)).toNat

end

end A298346.P11329399044648295654

namespace A298346

/-- `A069623(A108555(n)-n)` -/
def P11329399044648295654.Spec : Prop :=
  ∀ n, P11329399044648295654.a n = A298346 n

end A298346

/-! ## A298346.P9931526703148268560

`A113862(n)-A055684(n+3)`
-/

namespace A298346.P9931526703148268560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113862 n - A055684 (n + 3)

end

end A298346.P9931526703148268560

namespace A298346

/-- `A113862(n)-A055684(n+3)` -/
def P9931526703148268560.Spec : Prop :=
  ∀ n, P9931526703148268560.a n = A298346 n

end A298346

/-! ## A298346.P4375033654526014793

`A368729(A003242(n))-A020987(n)`
-/

namespace A298346.P4375033654526014793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (A003242 n).toNat - A020987 n

end

end A298346.P4375033654526014793

namespace A298346

/-- `A368729(A003242(n))-A020987(n)` -/
def P4375033654526014793.Spec : Prop :=
  ∀ n, P4375033654526014793.a n = A298346 n

end A298346

/-!
# A298347: a(n) = a(n-1) + a(n-2) + 2 a([n/2]), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298347, the canonical program `A298347.P7765557399434938796` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298347 has offset 0).

The definition of A298347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298347.P7765557399434938796

`a(n-1)+a(n-2)+2*a(floor(n/2))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298347

/-- `a(n-1)+a(n-2)+2*a(floor(n/2))` -/
def P7765557399434938796.Spec : Prop :=
  ∀ n, (P7765557399434938796.a n : ℤ) = A298347 n

theorem P7765557399434938796.correct : P7765557399434938796.Spec := by
  intro n
  simp only [A298347]

end A298347

/-!
# A298348: a(n) = a(n-1) + a(n-2) + a([(n+1)/2]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298348, the canonical program `A298348.P16262520890044408891` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298348 has offset 0).

The definition of A298348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298348.P16262520890044408891

`a(n-1)+a(n-2)+a(floor((n+1)/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298348

/-- `a(n-1)+a(n-2)+a(floor((n+1)/2))` -/
def P16262520890044408891.Spec : Prop :=
  ∀ n, (P16262520890044408891.a n : ℤ) = A298348 n

theorem P16262520890044408891.correct : P16262520890044408891.Spec := by
  intro n
  simp only [A298348]

end A298348

/-! ## A298348.P7278939841527562927

`A342144(A005169(n))`
-/

namespace A298348.P7278939841527562927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (A005169 n).toNat

end

end A298348.P7278939841527562927

namespace A298348

/-- `A342144(A005169(n))` -/
def P7278939841527562927.Spec : Prop :=
  ∀ n, P7278939841527562927.a n = A298348 n

end A298348

/-! ## A298348.P1868305460416114041

`A342144(A185648(n))`
-/

namespace A298348.P1868305460416114041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (A185648 n).toNat

end

end A298348.P1868305460416114041

namespace A298348

/-- `A342144(A185648(n))` -/
def P1868305460416114041.Spec : Prop :=
  ∀ n, P1868305460416114041.a n = A298348 n

end A298348

/-! ## A298348.P7323502216677026640

`A342144(A185649(n))`
-/

namespace A298348.P7323502216677026640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (A185649 n).toNat

end

end A298348.P7323502216677026640

namespace A298348

/-- `A342144(A185649(n))` -/
def P7323502216677026640.Spec : Prop :=
  ∀ n, P7323502216677026640.a n = A298348 n

end A298348

/-! ## A298348.P6977066963610145870

`A342144(A228645(n))`
-/

namespace A298348.P6977066963610145870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (A228645 n).toNat

end

end A298348.P6977066963610145870

namespace A298348

/-- `A342144(A228645(n))` -/
def P6977066963610145870.Spec : Prop :=
  ∀ n, P6977066963610145870.a n = A298348 n

end A298348

/-!
# A298349: a(n) = a(n-1) + a(n-2) + a([(n+1)/2]), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298349, the canonical program `A298349.P14015833879255035389` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298349 has offset 0).

The definition of A298349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298349.P14015833879255035389

`a(n-1)+a(n-2)+a(floor((n+1)/2))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298349

/-- `a(n-1)+a(n-2)+a(floor((n+1)/2))` -/
def P14015833879255035389.Spec : Prop :=
  ∀ n, (P14015833879255035389.a n : ℤ) = A298349 n

theorem P14015833879255035389.correct : P14015833879255035389.Spec := by
  intro n
  simp only [A298349]

end A298349

/-! ## A298349.P9127087261392654683

`A257639(or(A097111(n+1), A331408(2*(n+1))))`
-/

namespace A298349.P9127087261392654683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lor (A097111 (n + 1)) (A331408 (2 * (n + 1)))).toNat

end

end A298349.P9127087261392654683

namespace A298349

/-- `A257639(or(A097111(n+1), A331408(2*(n+1))))` -/
def P9127087261392654683.Spec : Prop :=
  ∀ n, P9127087261392654683.a n = A298349 n

end A298349

/-!
# A298350: a(n) = a(n-1) + a(n-2) + 2 a(ceiling(n/2)), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298350, the canonical program `A298350.P1621662165675826337` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298350 has offset 0).

The definition of A298350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+2*a(ceil(n/2))` (program `A298350.P1621662165675826337`, by `A298350.P1621662165675826337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298350.P1621662165675826337

`a(n-1)+a(n-2)+2*a(ceil(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298350

/-- `a(n-1)+a(n-2)+2*a(ceil(n/2))` -/
def P1621662165675826337.Spec : Prop :=
  ∀ n, (P1621662165675826337.a n : ℤ) = A298350 n

theorem P1621662165675826337.correct : P1621662165675826337.Spec := by
  intro n
  simp only [A298350]

end A298350

/-!
# A298351: a(n) = a(n-1) + a(n-2) + 2 a(ceiling(n/2)), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298351, the canonical program `A298351.P17276639415611568557` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298351 has offset 0).

The definition of A298351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+2*a(ceil(n/2))` (program `A298351.P17276639415611568557`, by `A298351.P17276639415611568557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298351.P17276639415611568557

`a(n-1)+a(n-2)+2*a(ceil(n/2))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298351

/-- `a(n-1)+a(n-2)+2*a(ceil(n/2))` -/
def P17276639415611568557.Spec : Prop :=
  ∀ n, (P17276639415611568557.a n : ℤ) = A298351 n

theorem P17276639415611568557.correct : P17276639415611568557.Spec := by
  intro n
  simp only [A298351]

end A298351

/-!
# A298352: a(n) = a(n-1) + a(n-2) + a([(n-1)/2]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298352, the canonical program `A298352.P13040680771996644360` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298352 has offset 0).

The definition of A298352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298352.P13040680771996644360

`a(n-1)+a(n-2)+a(floor((n-1)/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298352

/-- `a(n-1)+a(n-2)+a(floor((n-1)/2))` -/
def P13040680771996644360.Spec : Prop :=
  ∀ n, (P13040680771996644360.a n : ℤ) = A298352 n

theorem P13040680771996644360.correct : P13040680771996644360.Spec := by
  intro n
  simp only [A298352]

end A298352

/-! ## A298352.P6639676152363625834

`record[A129713(n)]-A339572(A187829(n+1))`
-/

namespace A298352.P6639676152363625834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A339572 (A187829 (n + 1)).toNat

end

end A298352.P6639676152363625834

namespace A298352

/-- `record[A129713(n)]-A339572(A187829(n+1))` -/
def P6639676152363625834.Spec : Prop :=
  ∀ n, P6639676152363625834.a n = A298352 n

end A298352

/-! ## A298352.P2642021932299535332

`record[A212804(n)]-A339572(A187829(n+1))`
-/

namespace A298352.P2642021932299535332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A339572 (A187829 (n + 1)).toNat

end

end A298352.P2642021932299535332

namespace A298352

/-- `record[A212804(n)]-A339572(A187829(n+1))` -/
def P2642021932299535332.Spec : Prop :=
  ∀ n, P2642021932299535332.a n = A298352 n

end A298352

/-! ## A298352.P4213937065474716825

`A000045(n+2)-A339572(A187829(n+1))`
-/

namespace A298352.P4213937065474716825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A339572 (A187829 (n + 1)).toNat

end

end A298352.P4213937065474716825

namespace A298352

/-- `A000045(n+2)-A339572(A187829(n+1))` -/
def P4213937065474716825.Spec : Prop :=
  ∀ n, P4213937065474716825.a n = A298352 n

end A298352

/-! ## A298352.P14705123451190820621

`A175019(A293064(n+1))`
-/

namespace A298352.P14705123451190820621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175019 (A293064 (n + 1)).toNat

end

end A298352.P14705123451190820621

namespace A298352

/-- `A175019(A293064(n+1))` -/
def P14705123451190820621.Spec : Prop :=
  ∀ n, P14705123451190820621.a n = A298352 n

end A298352

/-!
# A298353: a(n) = a(n-1) + a(n-2) + a([(n-1)/2]), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298353, the canonical program `A298353.P5213718893301805670` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298353 has offset 0).

The definition of A298353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298353.P5213718893301805670

`a(n-1)+a(n-2)+a(floor((n-1)/2))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298353

/-- `a(n-1)+a(n-2)+a(floor((n-1)/2))` -/
def P5213718893301805670.Spec : Prop :=
  ∀ n, (P5213718893301805670.a n : ℤ) = A298353 n

theorem P5213718893301805670.correct : P5213718893301805670.Spec := by
  intro n
  simp only [A298353]

end A298353

/-! ## A298353.P6217541232451874647

`A061257(n)+A000196(A195675(n))`
-/

namespace A298353.P6217541232451874647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061257 n + A000196 (A195675 n).toNat

end

end A298353.P6217541232451874647

namespace A298353

/-- `A061257(n)+A000196(A195675(n))` -/
def P6217541232451874647.Spec : Prop :=
  ∀ n, P6217541232451874647.a n = A298353 n

end A298353

/-! ## A298353.P15019162814553712409

`A194303(A204275(n))`
-/

namespace A298353.P15019162814553712409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194303 (A204275 n).toNat

end

end A298353.P15019162814553712409

namespace A298353

/-- `A194303(A204275(n))` -/
def P15019162814553712409.Spec : Prop :=
  ∀ n, P15019162814553712409.a n = A298353 n

end A298353

/-! ## A298353.P10695142615570331048

`A074712(A165655(n)+A054718(n))`
-/

namespace A298353.P10695142615570331048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (A165655 n + A054718 n).toNat

end

end A298353.P10695142615570331048

namespace A298353

/-- `A074712(A165655(n)+A054718(n))` -/
def P10695142615570331048.Spec : Prop :=
  ∀ n, P10695142615570331048.a n = A298353 n

end A298353

/-! ## A298353.P12165520189957363877

`A002024(A136429(n))-A262676(n)`
-/

namespace A298353.P12165520189957363877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A136429 n).toNat - A262676 n

end

end A298353.P12165520189957363877

namespace A298353

/-- `A002024(A136429(n))-A262676(n)` -/
def P12165520189957363877.Spec : Prop :=
  ∀ n, P12165520189957363877.a n = A298353 n

end A298353

/-!
# A298354: a(n) = a(n-1) + a(n-2) + 2 a([(n-1)/2]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298354, the canonical program `A298354.P17537490709539966736` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298354 has offset 0).

The definition of A298354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298354.P17537490709539966736

`a(n-1)+a(n-2)+2*a(floor((n-1)/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298354

/-- `a(n-1)+a(n-2)+2*a(floor((n-1)/2))` -/
def P17537490709539966736.Spec : Prop :=
  ∀ n, (P17537490709539966736.a n : ℤ) = A298354 n

theorem P17537490709539966736.correct : P17537490709539966736.Spec := by
  intro n
  simp only [A298354]

end A298354

/-! ## A298354.P5105458290148711884

`A003056(A025579(n+1))-A329697(n+1)`
-/

namespace A298354.P5105458290148711884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A025579 (n + 1)).toNat - A329697 (n + 1)

end

end A298354.P5105458290148711884

namespace A298354

/-- `A003056(A025579(n+1))-A329697(n+1)` -/
def P5105458290148711884.Spec : Prop :=
  ∀ n, P5105458290148711884.a n = A298354 n

end A298354

/-! ## A298354.P1427124607930244153

`A367128(A363465(n+2))`
-/

namespace A298354.P1427124607930244153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367128 (A363465 (n + 2)).toNat

end

end A298354.P1427124607930244153

namespace A298354

/-- `A367128(A363465(n+2))` -/
def P1427124607930244153.Spec : Prop :=
  ∀ n, P1427124607930244153.a n = A298354 n

end A298354

/-! ## A298354.P4680511107374393261

`A318281(A199336(n+1)-n)`
-/

namespace A298354.P4680511107374393261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318281 (A199336 (n + 1) - (n : ℤ)).toNat

end

end A298354.P4680511107374393261

namespace A298354

/-- `A318281(A199336(n+1)-n)` -/
def P4680511107374393261.Spec : Prop :=
  ∀ n, P4680511107374393261.a n = A298354 n

end A298354

/-!
# A298355: a(n) = a(n-1) + a(n-2) + 2 a([(n-1)/2]), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298355, the canonical program `A298355.P14498488197031618879` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298355 has offset 0).

The definition of A298355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298355.P14498488197031618879

`a(n-1)+a(n-2)+2*a(floor((n-1)/2))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298355

/-- `a(n-1)+a(n-2)+2*a(floor((n-1)/2))` -/
def P14498488197031618879.Spec : Prop :=
  ∀ n, (P14498488197031618879.a n : ℤ) = A298355 n

theorem P14498488197031618879.correct : P14498488197031618879.Spec := by
  intro n
  simp only [A298355]

end A298355

/-! ## A298355.P17279066542588487403

`∑[A381894(A271619(n)²)]`
-/

namespace A298355.P17279066542588487403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381894 (A271619 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298355.P17279066542588487403

namespace A298355

/-- `∑[A381894(A271619(n)²)]` -/
def P17279066542588487403.Spec : Prop :=
  ∀ n, P17279066542588487403.a n = A298355 n

end A298355

/-! ## A298355.P8587181401707406829

`A171974(n+1)+A000005(A119004(n+1))`
-/

namespace A298355.P8587181401707406829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (n + 1) + A000005 (A119004 (n + 1)).toNat

end

end A298355.P8587181401707406829

namespace A298355

/-- `A171974(n+1)+A000005(A119004(n+1))` -/
def P8587181401707406829.Spec : Prop :=
  ∀ n, P8587181401707406829.a n = A298355 n

end A298355

/-!
# A298356: a(n) = a(n-1) + a(n-2) + a([n/2]) + a([n/3]) + ... + a([n/n]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298356, there is no canonical definition to state claims against.
-/

/-! ## A298356.P5885018588112453787

`round(A116939(A307755(n))-sqrt(n))`
-/

namespace A298356.P5885018588112453787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A116939 (A307755 n).toNat : ℝ) - Real.sqrt (n : ℝ))

end

end A298356.P5885018588112453787

/-! ## A298356.P15725652071727359229

`A011860(n)+A003056(A200543(n))`
-/

namespace A298356.P15725652071727359229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n + A003056 (A200543 n).toNat

end

end A298356.P15725652071727359229

/-! ## A298356.P17967903690268226203

`A003056(A351292(n)+A066810(n))`
-/

namespace A298356.P17967903690268226203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A351292 n + A066810 n).toNat

end

end A298356.P17967903690268226203

/-! ## A298356.P320922684531994979

`A352513(2*(n+1))+A003056(A066810(n))`
-/

namespace A298356.P320922684531994979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (2 * (n + 1)) + A003056 (A066810 n).toNat

end

end A298356.P320922684531994979

/-!
# A298358: a(n) is the number of rooted 3-connected bicubic planar maps with 2n vertices.

The programs for A298358, there is no canonical definition to state claims against.
-/

/-! ## A298358.P7558363316228687127

`A327186(A353226(n)/A028310(n))`
-/

namespace A298358.P7558363316228687127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 (SequenceMachineLib.roundAway ((A353226 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A298358.P7558363316228687127

/-! ## A298358.P17665365066632410612

`A327186(A243796(n+1)-A003415(n))`
-/

namespace A298358.P17665365066632410612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 (A243796 (n + 1) - A003415 n).toNat

end

end A298358.P17665365066632410612

/-!
# A298359: Lexicographically earliest sequence of distinct positive terms such that, for any n > 0, Sum_{k = 1..n} 10^(k-1) * a(k) can be computed without carry in decimal base.

The programs for A298359, there is no canonical definition to state claims against.
-/

/-! ## A298359.P4563747877730849012

`floor(A108203(n+1)/10)`
-/

namespace A298359.P4563747877730849012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108203 (n + 1) : ℚ) / 10⌋

end

end A298359.P4563747877730849012

/-! ## A298359.P6912277776864120162

`floor(A308104(n+1)/sinh(3))`
-/

namespace A298359.P6912277776864120162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A308104 (n + 1) : ℝ) / Real.sinh (3 : ℝ)⌋

end

end A298359.P6912277776864120162

/-! ## A298359.P4897622434516886579

`eq[ceil(n/98), A113010(n-9*floor(n/10))]`
-/

namespace A298359.P4897622434516886579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113010 ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298359.P4897622434516886579

/-! ## A298359.P1379585294277285122

`lt[n-9*floor(n/10), 10]+Δ[A039691(n+1)]`
-/

namespace A298359.P1379585294277285122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + (f3 (n + 1) - f3 n)

end

end A298359.P1379585294277285122

/-! ## A298359.P1874869762168650096

`A059995(A108203(n+1))`
-/

namespace A298359.P1874869762168650096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A108203 (n + 1)).toNat

end

end A298359.P1874869762168650096

/-! ## A298359.P5953216968975946167

`A000188(A039691(n+2)²)`
-/

namespace A298359.P5953216968975946167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A039691 (n + 2) ^ 2).toNat

end

end A298359.P5953216968975946167

/-! ## A298359.P233463136753428735

`A059995(A308104(n+1)-1)`
-/

namespace A298359.P233463136753428735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A308104 (n + 1) - 1).toNat

end

end A298359.P233463136753428735

/-! ## A298359.P13315884450437347624

`ceil(A108203(n+1)/10-A007318(C(2, n)))`
-/

namespace A298359.P13315884450437347624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108203 (n + 1) : ℚ) / 10 - (A007318 (Nat.choose 2 n) : ℚ)⌉

end

end A298359.P13315884450437347624

/-! ## A298359.P9373198489821444818

`ceil((-1)^A000040(n+2)+A108203(n+1)/10)`
-/

namespace A298359.P9373198489821444818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-1 : ℚ) ^ (A000040 (n + 2) : ℤ) + (A108203 (n + 1) : ℚ) / 10⌉

end

end A298359.P9373198489821444818

/-! ## A298359.P13782567403235996418

`eq[A010888(n), A033930(n)]`
-/

namespace A298359.P13782567403235996418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298359.P13782567403235996418

/-!
# A298360: Numbers congruent to {3, 7, 13, 27} mod 30.

The programs for A298360, the canonical program `A298360.P887709803535370078` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298360 has offset 1).

The definition of A298360 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A298360.anchor (n : ℕ) (hn : 1 ≤ n) : A298360 n = (Nat.nth (fun k => k % 30 ∈ ({3, 7, 13, 27} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A298.A298360`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298360.P887709803535370078

`a(n-4)+30` with `a(0)=3, a(1)=7, a(2)=13, a(3)=27`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298360

/-- `a(n-4)+30` -/
def P887709803535370078.Spec : Prop :=
  ∀ n, (P887709803535370078.a n : ℤ) = A298360 (n + 1)

theorem P887709803535370078.correct : P887709803535370078.Spec := by
  intro n
  simp only [A298360, Nat.add_sub_cancel]

end A298360

/-! ## A298360.P12484858902370533267

`ogf((3+4x+6x^2+14x^3+3x^4)/(1-x-x^4+x^5))`
-/

namespace A298360.P12484858902370533267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 6, 14, 3] [1, -1, 0, 0, -1, 1] n

end

end A298360.P12484858902370533267

namespace A298360

/-- `ogf((3+4x+6x^2+14x^3+3x^4)/(1-x-x^4+x^5))` -/
def P12484858902370533267.Spec : Prop :=
  ∀ n, P12484858902370533267.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P10359192496186114117

`A280014(n+2)-15`
-/

namespace A298360.P10359192496186114117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280014 (n + 2) - 15

end

end A298360.P10359192496186114117

namespace A298360

/-- `A280014(n+2)-15` -/
def P10359192496186114117.Spec : Prop :=
  ∀ n, P10359192496186114117.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P14236320871685408633

`A063226(A047246(n+2))`
-/

namespace A298360.P14236320871685408633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A047246 (n + 2)).toNat

end

end A298360.P14236320871685408633

namespace A298360

/-- `A063226(A047246(n+2))` -/
def P14236320871685408633.Spec : Prop :=
  ∀ n, P14236320871685408633.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P1674948028776900819

`A063226(A047227(n+2)-1)`
-/

namespace A298360.P1674948028776900819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A047227 (n + 2) - 1).toNat

end

end A298360.P1674948028776900819

namespace A298360

/-- `A063226(A047227(n+2)-1)` -/
def P1674948028776900819.Spec : Prop :=
  ∀ n, P1674948028776900819.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P8540820448016030555

`A298786(A028836(n+1))`
-/

namespace A298360.P8540820448016030555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 (A028836 (n + 1)).toNat

end

end A298360.P8540820448016030555

namespace A298360

/-- `A298786(A028836(n+1))` -/
def P8540820448016030555.Spec : Prop :=
  ∀ n, P8540820448016030555.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P4155338495497665243

`A136320(A047218(n+1))`
-/

namespace A298360.P4155338495497665243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136320 (A047218 (n + 1)).toNat

end

end A298360.P4155338495497665243

namespace A298360

/-- `A136320(A047218(n+1))` -/
def P4155338495497665243.Spec : Prop :=
  ∀ n, P4155338495497665243.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P8917889997215721481

`∩[A047241(n+1), A063226(n+1)]`
-/

namespace A298360.P8917889997215721481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298360.P8917889997215721481

namespace A298360

/-- `∩[A047241(n+1), A063226(n+1)]` -/
def P8917889997215721481.Spec : Prop :=
  ∀ n, (P8917889997215721481.a n : ℤ) = A298360 (n + 1)

end A298360

/-! ## A298360.P16194897658950926508

`A136320(A016813(n)-A001651(n+1))`
-/

namespace A298360.P16194897658950926508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136320 (A016813 n - A001651 (n + 1)).toNat

end

end A298360.P16194897658950926508

namespace A298360

/-- `A136320(A016813(n)-A001651(n+1))` -/
def P16194897658950926508.Spec : Prop :=
  ∀ n, P16194897658950926508.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P1418335886014779883

`A047241(A030118(A047237(n+1))+n+1)`
-/

namespace A298360.P1418335886014779883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A030118 (A047237 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A298360.P1418335886014779883

namespace A298360

/-- `A047241(A030118(A047237(n+1))+n+1)` -/
def P1418335886014779883.Spec : Prop :=
  ∀ n, P1418335886014779883.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P2259463094469045634

`A218155(n+1)+A047260(A218155(n+1))`
-/

namespace A298360.P2259463094469045634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1) + A047260 (A218155 (n + 1)).toNat

end

end A298360.P2259463094469045634

namespace A298360

/-- `A218155(n+1)+A047260(A218155(n+1))` -/
def P2259463094469045634.Spec : Prop :=
  ∀ n, P2259463094469045634.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P6331174400975257035

`A045572(or(2, 3*n))`
-/

namespace A298360.P6331174400975257035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (Nat.lor 2 (3 * n))

end

end A298360.P6331174400975257035

namespace A298360

/-- `A045572(or(2, 3*n))` -/
def P6331174400975257035.Spec : Prop :=
  ∀ n, P6331174400975257035.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P13438571577949857273

`A047221(or(2, 3*n))`
-/

namespace A298360.P13438571577949857273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (Nat.lor 2 (3 * n))

end

end A298360.P13438571577949857273

namespace A298360

/-- `A047221(or(2, 3*n))` -/
def P13438571577949857273.Spec : Prop :=
  ∀ n, P13438571577949857273.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P17046135732560575559

`A045572(A218155(n+1))`
-/

namespace A298360.P17046135732560575559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A218155 (n + 1)).toNat

end

end A298360.P17046135732560575559

namespace A298360

/-- `A045572(A218155(n+1))` -/
def P17046135732560575559.Spec : Prop :=
  ∀ n, P17046135732560575559.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P5785236690454056464

`A008851(or(2, A008585(n)))+2`
-/

namespace A298360.P5785236690454056464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (Int.lor 2 (A008585 n)).toNat + 2

end

end A298360.P5785236690454056464

namespace A298360

/-- `A008851(or(2, A008585(n)))+2` -/
def P5785236690454056464.Spec : Prop :=
  ∀ n, P5785236690454056464.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P16989479864153514620

`A260181(A047454(n+2)+n)`
-/

namespace A298360.P16989479864153514620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (A047454 (n + 2) + (n : ℤ)).toNat

end

end A298360.P16989479864153514620

namespace A298360

/-- `A260181(A047454(n+2)+n)` -/
def P16989479864153514620.Spec : Prop :=
  ∀ n, P16989479864153514620.a n = A298360 (n + 1)

end A298360

/-! ## A298360.P836049167705839738

`∩[A047221(n+1), A047241(n+1)]`
-/

namespace A298360.P836049167705839738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298360.P836049167705839738

namespace A298360

/-- `∩[A047221(n+1), A047241(n+1)]` -/
def P836049167705839738.Spec : Prop :=
  ∀ n, (P836049167705839738.a n : ℤ) = A298360 (n + 1)

end A298360

/-! ## A298360.P17743893966200673847

`∩[A047241(n+1), A326422(n+1)]`
-/

namespace A298360.P17743893966200673847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298360.P17743893966200673847

namespace A298360

/-- `∩[A047241(n+1), A326422(n+1)]` -/
def P17743893966200673847.Spec : Prop :=
  ∀ n, (P17743893966200673847.a n : ℤ) = A298360 (n + 1)

end A298360

/-! ## A298360.P17025557874417264958

`∩[A029739(n+1), A063226(n+1)]`
-/

namespace A298360.P17025557874417264958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298360.P17025557874417264958

namespace A298360

/-- `∩[A029739(n+1), A063226(n+1)]` -/
def P17025557874417264958.Spec : Prop :=
  ∀ n, (P17025557874417264958.a n : ℤ) = A298360 (n + 1)

end A298360

/-! ## A298360.P4748832320370363782

`∩[A047242(n+1), A063226(n+1)]`
-/

namespace A298360.P4748832320370363782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298360.P4748832320370363782

namespace A298360

/-- `∩[A047242(n+1), A063226(n+1)]` -/
def P4748832320370363782.Spec : Prop :=
  ∀ n, (P4748832320370363782.a n : ℤ) = A298360 (n + 1)

end A298360

/-!
# A298362: Number of tight m X n pavings as defined in Knuth's A285357 written as triangle T(m,n), m >= 1, 1 <= n <= m.

The programs for A298362, there is no canonical definition to state claims against.
-/

/-! ## A298362.P1167386041493422243

`A285357(A245300(n)+1)`
-/

namespace A298362.P1167386041493422243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285357 (A245300 n + 1).toNat

end

end A298362.P1167386041493422243

/-!
# A298363: Matula-Goebel numbers of rooted identity trees with thinning limbs.

The programs for A298363, there is no canonical definition to state claims against.
-/

/-! ## A298363.P14895803923372389721

`record[A348066(A298303(n+1))]`
-/

namespace A298363.P14895803923372389721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A298303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298363.P14895803923372389721

/-! ## A298363.P18009185162514417076

`∩[A276625(n+1), A298303(n+1)]`
-/

namespace A298363.P18009185162514417076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298363.P18009185162514417076

/-! ## A298363.P9604574706130637462

`∩[A297571(n+1), A298303(n+1)]`
-/

namespace A298363.P9604574706130637462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298363.P9604574706130637462

/-! ## A298363.P6732179713125000778

`∩[eq[1, A206497(n+1)]+1, A298303(n+1)]`
-/

namespace A298363.P6732179713125000778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206497 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A298363.P6732179713125000778

/-! ## A298363.P7449024083385206256

`∩[eq[1, A333267(n+1)]+1, A298303(n+1)]`
-/

namespace A298363.P7449024083385206256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333267 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A298363.P7449024083385206256

/-!
# A298364: Permutation of the natural numbers partitioned into quadruples [4k-2, 4k-1, 4k-3, 4k] for k > 0.

The programs for A298364, the canonical program `A298364.P13445663528807049196` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298364 has offset 1).

The definition of A298364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298364.P13445663528807049196

`4+a(n-4)` with `a(0)=2, a(1)=3, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298364

/-- `4+a(n-4)` -/
def P13445663528807049196.Spec : Prop :=
  ∀ n, (P13445663528807049196.a n : ℤ) = A298364 (n + 1)

theorem P13445663528807049196.correct : P13445663528807049196.Spec := by
  intro n
  simp only [A298364, Nat.add_sub_cancel]

end A298364

/-! ## A298364.P14765033441615604643

`n+1+(cos((n+1)*π)-cos((n+1)*π/2)+3*sin((n+1)*π/2))/2`
-/

namespace A298364.P14765033441615604643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) + (Real.cos ((n + 1 : ℝ) * Real.pi) - Real.cos ((n + 1 : ℝ) * Real.pi / 2) + 3 * Real.sin ((n + 1 : ℝ) * Real.pi / 2)) / 2

end

end A298364.P14765033441615604643

namespace A298364

/-- `n+1+(cos((n+1)*π)-cos((n+1)*π/2)+3*sin((n+1)*π/2))/2` -/
def P14765033441615604643.Spec : Prop :=
  ∀ n, P14765033441615604643.a n = (A298364 (n + 1) : ℝ)

end A298364

/-! ## A298364.P2076847513771214258

`2*floor((n+2)/2)-4*floor((n+2)/4)+floor((n+1)/2)+2*floor((n+1)/4)`
-/

namespace A298364.P2076847513771214258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 2 : ℚ) / 2⌋ - 4 * ⌊(n + 2 : ℚ) / 4⌋ + ⌊(n + 1 : ℚ) / 2⌋ + 2 * ⌊(n + 1 : ℚ) / 4⌋

end

end A298364.P2076847513771214258

namespace A298364

/-- `2*floor((n+2)/2)-4*floor((n+2)/4)+floor((n+1)/2)+2*floor((n+1)/4)` -/
def P2076847513771214258.Spec : Prop :=
  ∀ n, P2076847513771214258.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P17654927700256292863

`A284307(A256008(n+1))`
-/

namespace A298364.P17654927700256292863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284307 (A256008 (n + 1)).toNat

end

end A298364.P17654927700256292863

namespace A298364

/-- `A284307(A256008(n+1))` -/
def P17654927700256292863.Spec : Prop :=
  ∀ n, P17654927700256292863.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P15608653010912661175

`A080412(A116966(n))`
-/

namespace A298364.P15608653010912661175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A116966 n).toNat

end

end A298364.P15608653010912661175

namespace A298364

/-- `A080412(A116966(n))` -/
def P15608653010912661175.Spec : Prop :=
  ∀ n, P15608653010912661175.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P7178515016673359217

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=1, a(2)=-2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A298364.P7178515016673359217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, -2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298364.P7178515016673359217

namespace A298364

/-- `∑[floor(a(n-4))]` -/
def P7178515016673359217.Spec : Prop :=
  ∀ n, P7178515016673359217.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P11955658180406097673

`∑[(4-6/a(n-1))%4]` with `a(0)=2`
-/

namespace A298364.P11955658180406097673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.tmod (SequenceMachineLib.roundAway (4 - 6 / (f1 (n - 1) : ℚ))) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298364.P11955658180406097673

namespace A298364

/-- `∑[(4-6/a(n-1))%4]` -/
def P11955658180406097673.Spec : Prop :=
  ∀ n, P11955658180406097673.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P11561091725131712161

`n+2-C(and(3, -(n+3)), 2)`
-/

namespace A298364.P11561091725131712161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.choose (Int.land 3 (-(n + 3 : ℤ))).toNat 2 : ℤ)

end

end A298364.P11561091725131712161

namespace A298364

/-- `n+2-C(and(3, -(n+3)), 2)` -/
def P11561091725131712161.Spec : Prop :=
  ∀ n, P11561091725131712161.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P13961848835988812403

`∑[4*n%2-a(n-2)]` with `a(0)=2, a(1)=1`
-/

namespace A298364.P13961848835988812403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  ((4 * (n % 2) : ℕ) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298364.P13961848835988812403

namespace A298364

/-- `∑[4*n%2-a(n-2)]` -/
def P13961848835988812403.Spec : Prop :=
  ∀ n, P13961848835988812403.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P3612664732782182449

`∑[4*and(1, n)-a(n-2)]` with `a(0)=2, a(1)=1`
-/

namespace A298364.P3612664732782182449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (4 * Nat.land 1 n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298364.P3612664732782182449

namespace A298364

/-- `∑[4*and(1, n)-a(n-2)]` -/
def P3612664732782182449.Spec : Prop :=
  ∀ n, P3612664732782182449.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P1471131442776102532

`n+3-gcd(2*n, ∑[n+1]²)`
-/

namespace A298364.P1471131442776102532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.gcd (2 * n) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) : ℤ)

end

end A298364.P1471131442776102532

namespace A298364

/-- `n+3-gcd(2*n, ∑[n+1]²)` -/
def P1471131442776102532.Spec : Prop :=
  ∀ n, P1471131442776102532.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P5819282664294367211

`∑[(1/a(n-4))^(-1)]` with `a(0)=2, a(1)=1, a(2)=-2, a(3)=3`
-/

namespace A298364.P5819282664294367211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, -2, 3] fun n f1 =>
  (1 / f1 (n - 4)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298364.P5819282664294367211

namespace A298364

/-- `∑[(1/a(n-4))^(-1)]` -/
def P5819282664294367211.Spec : Prop :=
  ∀ n, P5819282664294367211.a n = (A298364 (n + 1) : ℚ)

end A298364

/-! ## A298364.P10483451674814988288

`∑[(a(n-4)^(-1))^(-1)]` with `a(0)=2, a(1)=1, a(2)=-2, a(3)=3`
-/

namespace A298364.P10483451674814988288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, -2, 3] fun n f1 =>
  (f1 (n - 4) ^ (-1 : ℤ)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298364.P10483451674814988288

namespace A298364

/-- `∑[(a(n-4)^(-1))^(-1)]` -/
def P10483451674814988288.Spec : Prop :=
  ∀ n, P10483451674814988288.a n = (A298364 (n + 1) : ℚ)

end A298364

/-! ## A298364.P7542575209271519335

`∑[2*a(n-4)-a(n-4)]` with `a(0)=2, a(1)=1, a(2)=-2, a(3)=3`
-/

namespace A298364.P7542575209271519335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, -2, 3] fun n f1 =>
  2 * f1 (n - 4) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298364.P7542575209271519335

namespace A298364

/-- `∑[2*a(n-4)-a(n-4)]` -/
def P7542575209271519335.Spec : Prop :=
  ∀ n, P7542575209271519335.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P3935371557768320524

`A284307(xor(2, n)+1)`
-/

namespace A298364.P3935371557768320524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284307 (Nat.xor 2 n + 1)

end

end A298364.P3935371557768320524

namespace A298364

/-- `A284307(xor(2, n)+1)` -/
def P3935371557768320524.Spec : Prop :=
  ∀ n, P3935371557768320524.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P9707293657420352378

`A116966(A263426(n))`
-/

namespace A298364.P9707293657420352378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A263426 n).toNat

end

end A298364.P9707293657420352378

namespace A298364

/-- `A116966(A263426(n))` -/
def P9707293657420352378.Spec : Prop :=
  ∀ n, P9707293657420352378.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P5413360310029454048

`A284307(A004443(n)+1)`
-/

namespace A298364.P5413360310029454048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284307 (A004443 n + 1).toNat

end

end A298364.P5413360310029454048

namespace A298364

/-- `A284307(A004443(n)+1)` -/
def P5413360310029454048.Spec : Prop :=
  ∀ n, P5413360310029454048.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P11987852742458612583

`A014681(A284307(n+1))`
-/

namespace A298364.P11987852742458612583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A284307 (n + 1)).toNat

end

end A298364.P11987852742458612583

namespace A298364

/-- `A014681(A284307(n+1))` -/
def P11987852742458612583.Spec : Prop :=
  ∀ n, P11987852742458612583.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P12047684885964106892

`A292576(A292576(n+1))`
-/

namespace A298364.P12047684885964106892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292576 (A292576 (n + 1)).toNat

end

end A298364.P12047684885964106892

namespace A298364

/-- `A292576(A292576(n+1))` -/
def P12047684885964106892.Spec : Prop :=
  ∀ n, P12047684885964106892.a n = A298364 (n + 1)

end A298364

/-! ## A298364.P18125228937279710851

`A116966(A092486(n)-1)`
-/

namespace A298364.P18125228937279710851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A092486 n - 1).toNat

end

end A298364.P18125228937279710851

namespace A298364

/-- `A116966(A092486(n)-1)` -/
def P18125228937279710851.Spec : Prop :=
  ∀ n, P18125228937279710851.a n = A298364 (n + 1)

end A298364

/-!
# A298365: Numbers k such that there exists at least one odd pseudoprime of order k.

The programs for A298365, there is no canonical definition to state claims against.
-/

/-! ## A298365.P17817985859319768380

`lt[0, A086249(1+n)]+1`
-/

namespace A298365.P17817985859319768380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086249 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A298365.P17817985859319768380

/-! ## A298365.P9682452962230830258

`lt[0, A086250(n+1)]+1`
-/

namespace A298365.P9682452962230830258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A298365.P9682452962230830258

/-! ## A298365.P11528002409160626158

`lt[0, A086249(A028310(n))]`
-/

namespace A298365.P11528002409160626158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086249 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A298365.P11528002409160626158

/-! ## A298365.P15528594979693247773

`A020725(lt[0, A086249(n+1)])`
-/

namespace A298365.P15528594979693247773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A298365.P15528594979693247773

/-! ## A298365.P7588682089965853474

`A020725(lt[0, A086250(n+1)])`
-/

namespace A298365.P7588682089965853474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A298365.P7588682089965853474

/-! ## A298365.P3256047836540847269

`lt[0, A086249(A065033(2*n))]`
-/

namespace A298365.P3256047836540847269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086249 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A298365.P3256047836540847269

/-! ## A298365.P18318384435898987093

`lt[0, A086249(A000038(n)+n)]`
-/

namespace A298365.P18318384435898987093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086249 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A298365.P18318384435898987093

/-! ## A298365.P4387919120768022539

`lt[0, A086249(or(n, A000038(n)))]`
-/

namespace A298365.P4387919120768022539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086249 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A298365.P4387919120768022539

/-! ## A298365.P2424398908482783341

`lt[A007953(n), A086250(A028310(n))]`
-/

namespace A298365.P2424398908482783341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086250 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298365.P2424398908482783341

/-! ## A298365.P18031166488623317626

`lt[A021823(n), A086250(A028310(n))]`
-/

namespace A298365.P18031166488623317626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086250 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298365.P18031166488623317626

/-!
# A298366: Even numbers n such that n-5 and n-3 are both composite.

The programs for A298366, the canonical program `A298366.P16780955431485269286` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298366 has offset 1).

The definition of A298366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A298366.P16780955431485269286

`A061673(n+1)+4`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A298366

/-- `A061673(n+1)+4` -/
def P16780955431485269286.Spec : Prop :=
  ∀ n, P16780955431485269286.a n = A298366 (n + 1)

theorem P16780955431485269286.correct : P16780955431485269286.Spec := by
  intro n
  simp only [A298366, Nat.add_sub_cancel]

end A298366

/-! ## A298366.P3357866615942265777

`A269345(n+1)+5`
-/

namespace A298366.P3357866615942265777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269345 (n + 1) + 5

end

end A298366.P3357866615942265777

namespace A298366

/-- `A269345(n+1)+5` -/
def P3357866615942265777.Spec : Prop :=
  ∀ n, P3357866615942265777.a n = A298366 (n + 1)

theorem P3357866615942265777.correct : P3357866615942265777.Spec := by
  intro n
  simp only [A298366, Nat.add_sub_cancel, A298366.P3357866615942265777.a, A298366.P16780955431485269286.a, A061673, A061673.P6703242266188128252.f1, A061673.P6703242266188128252.f2, A061673.P6703242266188128252.a, A269345, A269345.P4206844201345878076.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A298366

/-! ## A298366.P5619052849998524367

`A025583(n+1)+3`
-/

namespace A298366.P5619052849998524367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1) + 3

end

end A298366.P5619052849998524367

namespace A298366

/-- `A025583(n+1)+3` -/
def P5619052849998524367.Spec : Prop :=
  ∀ n, P5619052849998524367.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P2321251414635458951

`2*(A104278(n+1)+2)`
-/

namespace A298366.P2321251414635458951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104278 (n + 1) + 2)

end

end A298366.P2321251414635458951

namespace A298366

/-- `2*(A104278(n+1)+2)` -/
def P2321251414635458951.Spec : Prop :=
  ∀ n, P2321251414635458951.a n = A298366 (n + 1)

theorem P2321251414635458951.correct : P2321251414635458951.Spec := by
  intro n
  simp only [A298366, Nat.add_sub_cancel, A298366.P2321251414635458951.a, A298366.P16780955431485269286.a, A061673, A061673.P6703242266188128252.f1, A061673.P6703242266188128252.f2, A061673.P6703242266188128252.a, A104278, A104278.P9462042051971576230.f1, A104278.P9462042051971576230.f2, A104278.P9462042051971576230.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A298366

/-! ## A298366.P12780692028603001083

`2*(sqrt(A296304(n+2))+2)`
-/

namespace A298366.P12780692028603001083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.sqrt (A296304 (n + 2) : ℝ) + 2)

end

end A298366.P12780692028603001083

namespace A298366

/-- `2*(sqrt(A296304(n+2))+2)` -/
def P12780692028603001083.Spec : Prop :=
  ∀ n, P12780692028603001083.a n = (A298366 (n + 1) : ℝ)

end A298366

/-! ## A298366.P3099550201994386805

`A109934(n+3)+3`
-/

namespace A298366.P3099550201994386805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 3) + 3

end

end A298366.P3099550201994386805

namespace A298366

/-- `A109934(n+3)+3` -/
def P3099550201994386805.Spec : Prop :=
  ∀ n, P3099550201994386805.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P14891032360461431237

`A164376(n+3)+3`
-/

namespace A298366.P14891032360461431237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 3) + 3

end

end A298366.P14891032360461431237

namespace A298366

/-- `A164376(n+3)+3` -/
def P14891032360461431237.Spec : Prop :=
  ∀ n, P14891032360461431237.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P3095920237715328031

`A014076(A196276(n+1))+5`
-/

namespace A298366.P3095920237715328031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (A196276 (n + 1)).toNat + 5

end

end A298366.P3095920237715328031

namespace A298366

/-- `A014076(A196276(n+1))+5` -/
def P3095920237715328031.Spec : Prop :=
  ∀ n, P3095920237715328031.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P13229612943473611038

`2*(lt[3, A049653(n+2)]+3)`
-/

namespace A298366.P13229612943473611038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3)

end

end A298366.P13229612943473611038

namespace A298366

/-- `2*(lt[3, A049653(n+2)]+3)` -/
def P13229612943473611038.Spec : Prop :=
  ∀ n, (P13229612943473611038.a n : ℤ) = A298366 (n + 1)

end A298366

/-! ## A298366.P15819825532917252326

`A004277(lt[3, A049653(n+2)]+1)+4`
-/

namespace A298366.P15819825532917252326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 4

end

end A298366.P15819825532917252326

namespace A298366

/-- `A004277(lt[3, A049653(n+2)]+1)+4` -/
def P15819825532917252326.Spec : Prop :=
  ∀ n, P15819825532917252326.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P12377897910804983694

`A004275(lt[3, A049653(n+2)]+1)+6`
-/

namespace A298366.P12377897910804983694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 6

end

end A298366.P12377897910804983694

namespace A298366

/-- `A004275(lt[3, A049653(n+2)]+1)+6` -/
def P12377897910804983694.Spec : Prop :=
  ∀ n, P12377897910804983694.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P14754803564571817499

`A103517(A104278(n+1)+1)`
-/

namespace A298366.P14754803564571817499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A104278 (n + 1) + 1).toNat

end

end A298366.P14754803564571817499

namespace A298366

/-- `A103517(A104278(n+1)+1)` -/
def P14754803564571817499.Spec : Prop :=
  ∀ n, P14754803564571817499.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P2805945093937637491

`A004277(A104278(n+1)+2)`
-/

namespace A298366.P2805945093937637491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A104278 (n + 1) + 2).toNat

end

end A298366.P2805945093937637491

namespace A298366

/-- `A004277(A104278(n+1)+2)` -/
def P2805945093937637491.Spec : Prop :=
  ∀ n, P2805945093937637491.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P17897810847557415506

`A005843(A104278(n+1)+2)`
-/

namespace A298366.P17897810847557415506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A104278 (n + 1) + 2).toNat

end

end A298366.P17897810847557415506

namespace A298366

/-- `A005843(A104278(n+1)+2)` -/
def P17897810847557415506.Spec : Prop :=
  ∀ n, P17897810847557415506.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P13675005410572123982

`A004275(A104278(n+1)+3)`
-/

namespace A298366.P13675005410572123982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A104278 (n + 1) + 3).toNat

end

end A298366.P13675005410572123982

namespace A298366

/-- `A004275(A104278(n+1)+3)` -/
def P13675005410572123982.Spec : Prop :=
  ∀ n, P13675005410572123982.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P14046539587183740957

`A130773(A104278(n+1)+1)+1`
-/

namespace A298366.P14046539587183740957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A104278 (n + 1) + 1).toNat + 1

end

end A298366.P14046539587183740957

namespace A298366

/-- `A130773(A104278(n+1)+1)+1` -/
def P14046539587183740957.Spec : Prop :=
  ∀ n, P14046539587183740957.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P1681707831167882545

`A144396(A104278(n+1)+1)+1`
-/

namespace A298366.P1681707831167882545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A104278 (n + 1) + 1).toNat + 1

end

end A298366.P1681707831167882545

namespace A298366

/-- `A144396(A104278(n+1)+1)+1` -/
def P1681707831167882545.Spec : Prop :=
  ∀ n, P1681707831167882545.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P1117083987689386447

`A004273(A104278(n+1)+2)+1`
-/

namespace A298366.P1117083987689386447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A104278 (n + 1) + 2).toNat + 1

end

end A298366.P1117083987689386447

namespace A298366

/-- `A004273(A104278(n+1)+2)+1` -/
def P1117083987689386447.Spec : Prop :=
  ∀ n, P1117083987689386447.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P10399838660085331329

`A103517(lt[3, A049653(n+2)]+1)+2`
-/

namespace A298366.P10399838660085331329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 2

end

end A298366.P10399838660085331329

namespace A298366

/-- `A103517(lt[3, A049653(n+2)]+1)+2` -/
def P10399838660085331329.Spec : Prop :=
  ∀ n, P10399838660085331329.a n = A298366 (n + 1)

end A298366

/-! ## A298366.P8091510723176931089

`A020710(A269345(n+1))`
-/

namespace A298366.P8091510723176931089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A269345 (n + 1)).toNat

end

end A298366.P8091510723176931089

namespace A298366

/-- `A020710(A269345(n+1))` -/
def P8091510723176931089.Spec : Prop :=
  ∀ n, P8091510723176931089.a n = A298366 (n + 1)

end A298366

/-!
# A298367: Number of (n + 1, n + 2)-core partitions with each part repeated at most four times.

The programs for A298367, the canonical program `A298367.P3813400061282680883` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298367 has offset 0).

The definition of A298367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298367.P3813400061282680883

`ogf((1+x+2x^2+5x^3+14x^4)/(1-x-x^2-2x^3-5x^4-14x^5))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298367

/-- `ogf((1+x+2x^2+5x^3+14x^4)/(1-x-x^2-2x^3-5x^4-14x^5))` -/
def P3813400061282680883.Spec : Prop :=
  ∀ n, P3813400061282680883.a n = A298367 n

theorem P3813400061282680883.correct : P3813400061282680883.Spec := by
  intro n
  simp only [A298367]

end A298367

/-!
# A298368: Triangle read by rows: T(n, k) = floor((n-1)/2)*floor(n/2)*floor((k-1)/2)*floor(k/2).

The programs for A298368, the canonical program `A298368.P13275035265517556904` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298368 has offset 1).

The definition of A298368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(row(n)/2)*floor((row(n)+1)/2)*floor(col(n)/2)*floor((col(n)+1)/2)` (program `A298368.P13275035265517556904`, by `A298368.P13275035265517556904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298368.P13275035265517556904

`floor(row(n)/2)*floor((row(n)+1)/2)*floor(col(n)/2)*floor((col(n)+1)/2)`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298368

/-- `floor(row(n)/2)*floor((row(n)+1)/2)*floor(col(n)/2)*floor((col(n)+1)/2)` -/
def P13275035265517556904.Spec : Prop :=
  ∀ n, P13275035265517556904.a n = A298368 (n + 1)

theorem P13275035265517556904.correct : P13275035265517556904.Spec := by
  intro n
  simp only [A298368, Nat.add_sub_cancel]

end A298368

/-! ## A298368.P3021674179797127949

`A002620(col(n))*A002620(row(n))`
-/

namespace A298368.P3021674179797127949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.triCol n) * A002620 (SequenceMachineLib.triRow n)

end

end A298368.P3021674179797127949

namespace A298368

/-- `A002620(col(n))*A002620(row(n))` -/
def P3021674179797127949.Spec : Prop :=
  ∀ n, P3021674179797127949.a n = A298368 (n + 1)

end A298368

/-! ## A298368.P11630564049469947015

`floor((col(n)+1)/2)*floor(col(n)/2)*floor((row(n)+1)/2)*floor(row(n)/2)`
-/

namespace A298368.P11630564049469947015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triCol n + 1 : ℚ) / 2⌋ * ⌊(SequenceMachineLib.triCol n : ℚ) / 2⌋ * ⌊(SequenceMachineLib.triRow n + 1 : ℚ) / 2⌋ * ⌊(SequenceMachineLib.triRow n : ℚ) / 2⌋

end

end A298368.P11630564049469947015

namespace A298368

/-- `floor((col(n)+1)/2)*floor(col(n)/2)*floor((row(n)+1)/2)*floor(row(n)/2)` -/
def P11630564049469947015.Spec : Prop :=
  ∀ n, P11630564049469947015.a n = A298368 (n + 1)

theorem P11630564049469947015.correct : P11630564049469947015.Spec := by
  intro n
  simp only [A298368, Nat.add_sub_cancel, A298368.P11630564049469947015.a, A298368.P13275035265517556904.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A298368

/-! ## A298368.P6364577281333546658

`A002620(A002262(n))*A002620(A003056(n))`
-/

namespace A298368.P6364577281333546658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002262 n).toNat * A002620 (A003056 n).toNat

end

end A298368.P6364577281333546658

namespace A298368

/-- `A002620(A002262(n))*A002620(A003056(n))` -/
def P6364577281333546658.Spec : Prop :=
  ∀ n, P6364577281333546658.a n = A298368 (n + 1)

end A298368

/-! ## A298368.P15589919578068503923

`A326641(C(A144042(n+1), 2))`
-/

namespace A298368.P15589919578068503923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 (Nat.choose (A144042 (n + 1)).toNat 2)

end

end A298368.P15589919578068503923

namespace A298368

/-- `A326641(C(A144042(n+1), 2))` -/
def P15589919578068503923.Spec : Prop :=
  ∀ n, P15589919578068503923.a n = A298368 (n + 1)

end A298368

/-!
# A298371: a(n) = Sum_{m=0..n} Sum_{i=0..m} i*C(m-i,i)*C(m-i,n-m-i).

The programs for A298371, there is no canonical definition to state claims against.
-/

/-! ## A298371.P18443915670655643461

`∑[A118898(n+2)-A118898(n)]`
-/

namespace A298371.P18443915670655643461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118898 (n + 2) - A118898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298371.P18443915670655643461

/-! ## A298371.P7661859505088150411

`A118898(n+1)+A118898(n+2)`
-/

namespace A298371.P7661859505088150411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118898 (n + 1) + A118898 (n + 2)

end

end A298371.P7661859505088150411

/-! ## A298371.P16649864213848700099

`∑[A123621(Δ[A141015(n)])]`
-/

namespace A298371.P16649864213848700099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298371.P16649864213848700099

/-! ## A298371.P15492309108081222210

`floor(A004525(A200528(n+1))/23)`
-/

namespace A298371.P15492309108081222210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004525 (A200528 (n + 1)).toNat : ℚ) / 23⌋

end

end A298371.P15492309108081222210

/-! ## A298371.P14123633944281182316

`∑[round(A051133(n)/A134342(2*n+3))]`
-/

namespace A298371.P14123633944281182316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A051133 n : ℚ) / (A134342 (2 * n + 3) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298371.P14123633944281182316

/-!
# A298372: a(n), in decimal base, is the number of numbers k >= 0 with no more digits than n such that k + n can be computed without carry.

The programs for A298372, the canonical program `A298372.P16891521417809542561` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298372 has offset 0).

The definition of A298372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298372.P16891521417809542561

`∏{digits}[10*n+9, 10-#]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298372

/-- `∏{digits}[10*n+9, 10-#]` -/
def P16891521417809542561.Spec : Prop :=
  ∀ n, P16891521417809542561.a n = A298372 n

theorem P16891521417809542561.correct : P16891521417809542561.Spec := by
  intro n
  simp only [A298372]

end A298372

/-! ## A298372.P13557474938121751192

`A089898(A057427(n)*A061601(n))`
-/

namespace A298372.P13557474938121751192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A057427 n * A061601 n).toNat

end

end A298372.P13557474938121751192

namespace A298372

/-- `A089898(A057427(n)*A061601(n))` -/
def P13557474938121751192.Spec : Prop :=
  ∀ n, P13557474938121751192.a n = A298372 n

end A298372

/-! ## A298372.P10464228579074722222

`A089898(A061601(n))%A001535(n)`
-/

namespace A298372.P10464228579074722222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089898 (A061601 n).toNat) (A001535 n)

end

end A298372.P10464228579074722222

namespace A298372

/-- `A089898(A061601(n))%A001535(n)` -/
def P10464228579074722222.Spec : Prop :=
  ∀ n, P10464228579074722222.a n = A298372 n

end A298372

/-! ## A298372.P16797979530088484903

`A089898(A061601(n)%A158638(n))`
-/

namespace A298372.P16797979530088484903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (Int.tmod (A061601 n) (A158638 n)).toNat

end

end A298372.P16797979530088484903

namespace A298372

/-- `A089898(A061601(n)%A158638(n))` -/
def P16797979530088484903.Spec : Prop :=
  ∀ n, P16797979530088484903.a n = A298372 n

end A298372

/-! ## A298372.P1191614415862226817

`A089898(A019430(2*n)*A061601(n))`
-/

namespace A298372.P1191614415862226817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A019430 (2 * n) * A061601 n).toNat

end

end A298372.P1191614415862226817

namespace A298372

/-- `A089898(A019430(2*n)*A061601(n))` -/
def P1191614415862226817.Spec : Prop :=
  ∀ n, P1191614415862226817.a n = A298372 n

end A298372

/-! ## A298372.P16528801431384940041

`A089898(A061601(n))^A038573(A053644(n))`
-/

namespace A298372.P16528801431384940041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089898 (A061601 n).toNat : ℚ) ^ (A038573 (A053644 n).toNat : ℤ)

end

end A298372.P16528801431384940041

namespace A298372

/-- `A089898(A061601(n))^A038573(A053644(n))` -/
def P16528801431384940041.Spec : Prop :=
  ∀ n, P16528801431384940041.a n = (A298372 n : ℚ)

end A298372

/-! ## A298372.P7173712207112052271

`A089898(A061601(n))^A019430(A055958(n))`
-/

namespace A298372.P7173712207112052271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089898 (A061601 n).toNat : ℚ) ^ (A019430 (A055958 n).toNat : ℤ)

end

end A298372.P7173712207112052271

namespace A298372

/-- `A089898(A061601(n))^A019430(A055958(n))` -/
def P7173712207112052271.Spec : Prop :=
  ∀ n, P7173712207112052271.a n = (A298372 n : ℚ)

end A298372

/-!
# A298373: a(n) = n! * [x^n] exp(n*x - exp(x) + 1).

The programs for A298373, there is no canonical definition to state claims against.
-/

/-! ## A298373.P418704233751585936

`∑{#}[n, C(n, #)*n^(n-#)*A000587(#)]`
-/

namespace A298373.P418704233751585936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (n : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000587 k : ℚ)

end

end A298373.P418704233751585936

/-! ## A298373.P7030103853647166084

`A008676(round(2^(n-2))^4)`
-/

namespace A298373.P7030103853647166084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) ^ 4).toNat

end

end A298373.P7030103853647166084

/-!
# A298374: Expansion of e.g.f. 1/(1 - x)^exp(-x).

The programs for A298374, there is no canonical definition to state claims against.
-/

/-! ## A298374.P3178785817878911911

`abs(A009135(n)-A009581(n))`
-/

namespace A298374.P3178785817878911911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009135 n - A009581 n|

end

end A298374.P3178785817878911911

/-!
# A298375: Partial sums of A230584.

The programs for A298375, the canonical program `A298375.P14152012917251719222` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298375 has offset 1).

The definition of A298375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298375.P14152012917251719222

`ogf((2+x-x^2-x^3+2x^5-x^6)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298375

/-- `ogf((2+x-x^2-x^3+2x^5-x^6)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P14152012917251719222.Spec : Prop :=
  ∀ n, P14152012917251719222.a n = A298375 (n + 1)

theorem P14152012917251719222.correct : P14152012917251719222.Spec := by
  intro n
  simp only [A298375, Nat.add_sub_cancel]

end A298375

/-! ## A298375.P7387057598630148626

`∑[A230584(n+1)]`
-/

namespace A298375.P7387057598630148626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298375.P7387057598630148626

namespace A298375

/-- `∑[A230584(n+1)]` -/
def P7387057598630148626.Spec : Prop :=
  ∀ n, P7387057598630148626.a n = A298375 (n + 1)

end A298375

/-! ## A298375.P6222421474367530713

`Δ[A005994(n)-A040001(n)]`
-/

namespace A298375.P6222421474367530713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 n - A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298375.P6222421474367530713

namespace A298375

/-- `Δ[A005994(n)-A040001(n)]` -/
def P6222421474367530713.Spec : Prop :=
  ∀ n, P6222421474367530713.a n = A298375 (n + 1)

end A298375

/-! ## A298375.P14649980285121804679

`A005994(n+1)-(A062157(n)+A005994(n))`
-/

namespace A298375.P14649980285121804679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 (n + 1) - (A062157 n + A005994 n)

end

end A298375.P14649980285121804679

namespace A298375

/-- `A005994(n+1)-(A062157(n)+A005994(n))` -/
def P14649980285121804679.Spec : Prop :=
  ∀ n, P14649980285121804679.a n = A298375 (n + 1)

end A298375

/-! ## A298375.P2800266825988577504

`record[A000982(n)-a(n-1)]+a(n-1)` with `a(0)=2`
-/

namespace A298375.P2800266825988577504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A000982 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A298375.P2800266825988577504

namespace A298375

/-- `record[A000982(n)-a(n-1)]+a(n-1)` -/
def P2800266825988577504.Spec : Prop :=
  ∀ n, P2800266825988577504.a n = A298375 (n + 1)

end A298375

/-! ## A298375.P16284302555391488081

`Δ[A005994(n)-Δ[A065033(n)]]`
-/

namespace A298375.P16284302555391488081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298375.P16284302555391488081

namespace A298375

/-- `Δ[A005994(n)-Δ[A065033(n)]]` -/
def P16284302555391488081.Spec : Prop :=
  ∀ n, P16284302555391488081.a n = A298375 (n + 1)

end A298375

/-! ## A298375.P6748066180887076229

`∑[eq[1, A088226(n+1)]]`
-/

namespace A298375.P6748066180887076229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298375.P6748066180887076229

namespace A298375

/-- `∑[eq[1, A088226(n+1)]]` -/
def P6748066180887076229.Spec : Prop :=
  ∀ n, (P6748066180887076229.a n : ℤ) = A298375 (n + 1)

end A298375

/-!
# A298376: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298376, there is no canonical definition to state claims against.
-/

/-! ## A298376.P313555372595955542

`A298382(∑[4*n]+1)`
-/

namespace A298376.P313555372595955542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298376.P313555372595955542

/-! ## A298376.P1022386729781243282

`record[A298382(A272267(n+1))]`
-/

namespace A298376.P1022386729781243282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298376.P1022386729781243282

/-! ## A298376.P3589154968096964715

`record[A003982(n)*A298382(n+1)]`
-/

namespace A298376.P3589154968096964715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298376.P3589154968096964715

/-! ## A298376.P3849039666715396583

`A298382(A001844(n))+A025443(n)`
-/

namespace A298376.P3849039666715396583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A001844 n).toNat + A025443 n

end

end A298376.P3849039666715396583

/-! ## A298376.P18256692760834736688

`A298382(A001844(n))+A180472(n)`
-/

namespace A298376.P18256692760834736688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A001844 n).toNat + A180472 n

end

end A298376.P18256692760834736688

/-!
# A298377: Number of n X 3 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298377, there is no canonical definition to state claims against.
-/

/-! ## A298377.P704226744389135737

`A298382(∑[n+2]+4)`
-/

namespace A298377.P704226744389135737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298377.P704226744389135737

/-! ## A298377.P17298302016127675896

`A298382(A167614(n+1))+char[18]`
-/

namespace A298377.P17298302016127675896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298377.P17298302016127675896

/-! ## A298377.P12084172850132359264

`or(char[1], A298382(A046691(n)+7))`
-/

namespace A298377.P12084172850132359264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298382 (A046691 n + 7).toNat)

end

end A298377.P12084172850132359264

/-! ## A298377.P11986879896917701876

`A298382(A167614(n+1))%A099969(n)`
-/

namespace A298377.P11986879896917701876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298382 (A167614 (n + 1)).toNat) (A099969 n)

end

end A298377.P11986879896917701876

/-! ## A298377.P5303645496901976767

`gcd(A010894(n), A298382(A167614(n+1)))`
-/

namespace A298377.P5303645496901976767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A298382 (A167614 (n + 1)).toNat)

end

end A298377.P5303645496901976767

/-!
# A298378: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298378, there is no canonical definition to state claims against.
-/

/-! ## A298378.P16049136127088120489

`A298382(∑[n+3]+7)`
-/

namespace A298378.P16049136127088120489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298378.P16049136127088120489

/-! ## A298378.P11220800724112105644

`A298382(A141214(n)+7)+char[23]`
-/

namespace A298378.P11220800724112105644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298378.P11220800724112105644

/-! ## A298378.P13464587597315553788

`A298382(A000096(n+2)+5)+char[22]`
-/

namespace A298378.P13464587597315553788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298378.P13464587597315553788

/-! ## A298378.P13384093037742179981

`A298382(A141214(n)+7)%A000108(n+4)`
-/

namespace A298378.P13384093037742179981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298382 (A141214 n + 7).toNat) (A000108 (n + 4))

end

end A298378.P13384093037742179981

/-! ## A298378.P10753713507660962648

`A007318(C(n, 64))*A298382(A141214(n)+7)`
-/

namespace A298378.P10753713507660962648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 64) * A298382 (A141214 n + 7).toNat

end

end A298378.P10753713507660962648

/-!
# A298379: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298379, there is no canonical definition to state claims against.
-/

/-! ## A298379.P3101302605068829974

`A298382(∑[n+4]+11)`
-/

namespace A298379.P3101302605068829974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298379.P3101302605068829974

/-! ## A298379.P16895372758417940798

`A298382(A133263(n+4)+3)+char[17]`
-/

namespace A298379.P16895372758417940798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A133263 (n + 4) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298379.P16895372758417940798

/-! ## A298379.P5075263381355092306

`A007318(C(2, n))*A298382(A133263(n+4)+3)`
-/

namespace A298379.P5075263381355092306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298382 (A133263 (n + 4) + 3).toNat

end

end A298379.P5075263381355092306

/-! ## A298379.P16344829726620600486

`A298382(A133263(n+4)+3)/A007318(C(n, 2))`
-/

namespace A298379.P16344829726620600486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298382 (A133263 (n + 4) + 3).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A298379.P16344829726620600486

/-! ## A298379.P52417197016058441

`A000041(C(n, n²))*A298382(A133263(n+4)+3)`
-/

namespace A298379.P52417197016058441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A298382 (A133263 (n + 4) + 3).toNat

end

end A298379.P52417197016058441

/-!
# A298380: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298380, there is no canonical definition to state claims against.
-/

/-! ## A298380.P2417282930716408144

`A298382(A166136(n+4))`
-/

namespace A298380.P2417282930716408144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A166136 (n + 4)).toNat

end

end A298380.P2417282930716408144

/-! ## A298380.P13631765584200957792

`A298382(A056115(n)+21)`
-/

namespace A298380.P13631765584200957792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A056115 n + 21).toNat

end

end A298380.P13631765584200957792

/-! ## A298380.P12470458298931528847

`A298382(A000124(n+5)+5)`
-/

namespace A298380.P12470458298931528847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A000124 (n + 5) + 5).toNat

end

end A298380.P12470458298931528847

/-! ## A298380.P16038315081026160348

`A298382(A000096(n+4)+7)`
-/

namespace A298380.P16038315081026160348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A000096 (n + 4) + 7).toNat

end

end A298380.P16038315081026160348

/-! ## A298380.P8402107762775934102

`A298382(A000217(n+5)+6)`
-/

namespace A298380.P8402107762775934102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A000217 (n + 5) + 6).toNat

end

end A298380.P8402107762775934102

/-!
# A298381: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298381, there is no canonical definition to state claims against.
-/

/-! ## A298381.P12905677477082570965

`A298382(A056119(n)+28)`
-/

namespace A298381.P12905677477082570965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A056119 n + 28).toNat

end

end A298381.P12905677477082570965

/-! ## A298381.P11208581991905414337

`A298382(eq[11, A066657(n)])`
-/

namespace A298381.P11208581991905414337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298381.P11208581991905414337

/-! ## A298381.P9352152130506532717

`A298382(A167614(n+5)+4)`
-/

namespace A298381.P9352152130506532717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A167614 (n + 5) + 4).toNat

end

end A298381.P9352152130506532717

/-! ## A298381.P9933882581433357514

`A298382(A000096(n+5)+8)`
-/

namespace A298381.P9933882581433357514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A000096 (n + 5) + 8).toNat

end

end A298381.P9933882581433357514

/-! ## A298381.P16326122162599070146

`A298382(A141214(n+3)+10)`
-/

namespace A298381.P16326122162599070146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A141214 (n + 3) + 10).toNat

end

end A298381.P16326122162599070146

/-!
# A298382: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298382, there is no canonical definition to state claims against.
-/

/-! ## A298382.P16201123815311103286

`A299249(n+1)%A099969(n)`
-/

namespace A298382.P16201123815311103286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299249 (n + 1)) (A099969 n)

end

end A298382.P16201123815311103286

/-! ## A298382.P4471793221401135445

`A299249(∑[A053878(n+2)!])`
-/

namespace A298382.P4471793221401135445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A053878 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298382.P4471793221401135445

/-! ## A298382.P631276811162458191

`A299249(∑[A053878(n+2)^3])`
-/

namespace A298382.P631276811162458191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053878 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298382.P631276811162458191

/-! ## A298382.P7690629485255654320

`A299249(A053878(n+2)!+n)`
-/

namespace A298382.P7690629485255654320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (Nat.factorial (A053878 (n + 2)).toNat + n)

end

end A298382.P7690629485255654320

/-! ## A298382.P536041201896876355

`A299249(∑[A053878(n+2)²²])`
-/

namespace A298382.P536041201896876355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053878 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298382.P536041201896876355

/-!
# A298383: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298383, there is no canonical definition to state claims against.
-/

/-! ## A298383.P6587200024514697979

`A298389(∑[4*n]+1)`
-/

namespace A298383.P6587200024514697979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298383.P6587200024514697979

/-! ## A298383.P4047572638699875025

`record[A298389(Δ[A235355(n)])]`
-/

namespace A298383.P4047572638699875025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298383.P4047572638699875025

/-! ## A298383.P8980034523434320780

`record[A298389(A330613(n+1))]`
-/

namespace A298383.P8980034523434320780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298383.P8980034523434320780

/-! ## A298383.P3464162263397072442

`A298389(A001844(n))+char[10]`
-/

namespace A298383.P3464162263397072442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298383.P3464162263397072442

/-! ## A298383.P581325109385640310

`record[A298389(A284254(n²+1))]`
-/

namespace A298383.P581325109385640310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A284254 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298383.P581325109385640310

/-!
# A298384: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298384, there is no canonical definition to state claims against.
-/

/-! ## A298384.P2216800979236330839

`A298389(∑[n+2]+4)`
-/

namespace A298384.P2216800979236330839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298384.P2216800979236330839

/-! ## A298384.P13136936978068439820

`A299307(∑[n+2]+4)`
-/

namespace A298384.P13136936978068439820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298384.P13136936978068439820

/-! ## A298384.P8853429537100602407

`record[gcd(A298389(n+1), A303913(n))]`
-/

namespace A298384.P8853429537100602407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A298389 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298384.P8853429537100602407

/-! ## A298384.P864776248932137838

`A298389(A167614(n+1))+A025469(n)`
-/

namespace A298384.P864776248932137838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A167614 (n + 1)).toNat + A025469 n

end

end A298384.P864776248932137838

/-! ## A298384.P252603585482584666

`A298389(A167614(n+1))+A185203(n)`
-/

namespace A298384.P252603585482584666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A167614 (n + 1)).toNat + A185203 n

end

end A298384.P252603585482584666

/-!
# A298385: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298385, there is no canonical definition to state claims against.
-/

/-! ## A298385.P16490058523021961382

`A298389(∑[n+3]+7)`
-/

namespace A298385.P16490058523021961382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298385.P16490058523021961382

/-! ## A298385.P10100004628552477888

`A298389(A052905(n)+9)+char[22]`
-/

namespace A298385.P10100004628552477888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298385.P10100004628552477888

/-! ## A298385.P5650661231195037509

`A007318(C(2, n))*A298389(A052905(n)+9)`
-/

namespace A298385.P5650661231195037509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298389 (A052905 n + 9).toNat

end

end A298385.P5650661231195037509

/-! ## A298385.P8263311898650452066

`A014963(12*(n+1))*A298389(A052905(n)+9)`
-/

namespace A298385.P8263311898650452066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A298389 (A052905 n + 9).toNat

end

end A298385.P8263311898650452066

/-! ## A298385.P700191108724938390

`A007318(val(n+1, 8))*A298389(A052905(n)+9)`
-/

namespace A298385.P700191108724938390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 8) * A298389 (A052905 n + 9).toNat

end

end A298385.P700191108724938390

/-!
# A298386: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298386, there is no canonical definition to state claims against.
-/

/-! ## A298386.P16727370001603248749

`A298389(A374005(n+1))`
-/

namespace A298386.P16727370001603248749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A374005 (n + 1)).toNat

end

end A298386.P16727370001603248749

/-! ## A298386.P16191143941427741065

`A298389(A167499(n+3))`
-/

namespace A298386.P16191143941427741065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A167499 (n + 3)).toNat

end

end A298386.P16191143941427741065

/-! ## A298386.P10579244975615676946

`A298389(A155212(n)+13)`
-/

namespace A298386.P10579244975615676946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A155212 n + 13).toNat

end

end A298386.P10579244975615676946

/-! ## A298386.P11832043523390477771

`A298389(A056000(n)+15)`
-/

namespace A298386.P11832043523390477771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A056000 n + 15).toNat

end

end A298386.P11832043523390477771

/-! ## A298386.P12918717118940845579

`A298389(eq[7, A066657(n)])`
-/

namespace A298386.P12918717118940845579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298386.P12918717118940845579

/-!
# A298387: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298387, there is no canonical definition to state claims against.
-/

/-! ## A298387.P7710253767253946617

`A298389(∑[n+5]+16)`
-/

namespace A298387.P7710253767253946617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298387.P7710253767253946617

/-! ## A298387.P7551042180266705748

`A000003(A219347(n))*A298389(A166136(n+4))`
-/

namespace A298387.P7551042180266705748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A219347 n).toNat * A298389 (A166136 (n + 4)).toNat

end

end A298387.P7551042180266705748

/-! ## A298387.P8548100802159256147

`A219347(A277198(n))*A298389(A166136(n+4))`
-/

namespace A298387.P8548100802159256147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A277198 n).toNat * A298389 (A166136 (n + 4)).toNat

end

end A298387.P8548100802159256147

/-! ## A298387.P2642826346452785801

`A298389(A166136(n+4))+A014124(A374008(n+1))`
-/

namespace A298387.P2642826346452785801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A166136 (n + 4)).toNat + A014124 (A374008 (n + 1)).toNat

end

end A298387.P2642826346452785801

/-! ## A298387.P18365032416298293537

`A298382(A000003(n+1))*A298389(A166136(n+4))`
-/

namespace A298387.P18365032416298293537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A000003 (n + 1)).toNat * A298389 (A166136 (n + 4)).toNat

end

end A298387.P18365032416298293537

/-!
# A298388: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298388, there is no canonical definition to state claims against.
-/

/-! ## A298388.P4569485195266198753

`A298389(A374008(n+1))`
-/

namespace A298388.P4569485195266198753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A374008 (n + 1)).toNat

end

end A298388.P4569485195266198753

/-! ## A298388.P14014558585923011456

`A298389(A302537(n)+27)`
-/

namespace A298388.P14014558585923011456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A302537 n + 27).toNat

end

end A298388.P14014558585923011456

/-! ## A298388.P3635738743113789772

`A298389(A056119(n)+28)`
-/

namespace A298388.P3635738743113789772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A056119 n + 28).toNat

end

end A298388.P3635738743113789772

/-! ## A298388.P18408661141859058516

`A298389(eq[11, A066657(n)])`
-/

namespace A298388.P18408661141859058516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298388.P18408661141859058516

/-! ## A298388.P14053602288511645527

`A298389(A166136(n+5)+1)`
-/

namespace A298388.P14053602288511645527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (A166136 (n + 5) + 1).toNat

end

end A298388.P14053602288511645527

/-!
# A298389: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298389, there is no canonical definition to state claims against.
-/

/-! ## A298389.P15273911567341249656

`A059995(10*A299307(n+1))`
-/

namespace A298389.P15273911567341249656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (10 * A299307 (n + 1)).toNat

end

end A298389.P15273911567341249656

/-! ## A298389.P10241805230987952579

`A076310(10*A299307(n+1))`
-/

namespace A298389.P10241805230987952579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 (10 * A299307 (n + 1)).toNat

end

end A298389.P10241805230987952579

/-! ## A298389.P562677835131054369

`A076311(10*A299307(n+1))`
-/

namespace A298389.P562677835131054369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076311 (10 * A299307 (n + 1)).toNat

end

end A298389.P562677835131054369

/-! ## A298389.P11523053256088818946

`A076312(10*A299307(n+1))`
-/

namespace A298389.P11523053256088818946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (10 * A299307 (n + 1)).toNat

end

end A298389.P11523053256088818946

/-! ## A298389.P13220036779659883692

`A106611(10*A299307(n+1))`
-/

namespace A298389.P13220036779659883692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (10 * A299307 (n + 1)).toNat

end

end A298389.P13220036779659883692

/-!
# A298390: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298390, there is no canonical definition to state claims against.
-/

/-! ## A298390.P324104531289390678

`A298396(∑[4*n]+1)`
-/

namespace A298390.P324104531289390678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298390.P324104531289390678

/-! ## A298390.P2263833742028851779

`record[A298396(A330613(n+1))]`
-/

namespace A298390.P2263833742028851779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298390.P2263833742028851779

/-! ## A298390.P9344027502342679927

`A298396(A001844(n))+char[9]`
-/

namespace A298390.P9344027502342679927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298390.P9344027502342679927

/-! ## A298390.P12680751006690723536

`record[A298396(Δ[A079824(n+1)])]`
-/

namespace A298390.P12680751006690723536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298390.P12680751006690723536

/-! ## A298390.P13513274013106825417

`A298396(A001844(n))*A303864(n)`
-/

namespace A298390.P13513274013106825417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A001844 n).toNat * A303864 n

end

end A298390.P13513274013106825417

/-!
# A298391: Number of nX3 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298391, there is no canonical definition to state claims against.
-/

/-! ## A298391.P1158237032836654118

`A298396(∑[n+2]+4)`
-/

namespace A298391.P1158237032836654118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298391.P1158237032836654118

/-! ## A298391.P15189255124654599460

`or(1, A298396(A167614(n+1)))`
-/

namespace A298391.P15189255124654599460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A298396 (A167614 (n + 1)).toNat)

end

end A298391.P15189255124654599460

/-! ## A298391.P7956106593688488697

`or(1, A298396(A055998(n)+6))`
-/

namespace A298391.P7956106593688488697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A298396 (A055998 n + 6).toNat)

end

end A298391.P7956106593688488697

/-! ## A298391.P15250512331567399324

`or(1, A298396(A167499(n)+n))`
-/

namespace A298391.P15250512331567399324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A298396 (A167499 n + (n : ℤ)).toNat)

end

end A298391.P15250512331567399324

/-! ## A298391.P14087691950668673758

`record[gcd(A298396(n+1), A303913(n))]`
-/

namespace A298391.P14087691950668673758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A298396 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298391.P14087691950668673758

/-!
# A298392: Number of nX4 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298392, there is no canonical definition to state claims against.
-/

/-! ## A298392.P11573452471131113936

`A298396(∑[n+3]+7)`
-/

namespace A298392.P11573452471131113936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298392.P11573452471131113936

/-! ## A298392.P6933764439171467859

`A298396(A055999(n)+10)+char[21]`
-/

namespace A298392.P6933764439171467859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298392.P6933764439171467859

/-! ## A298392.P13400033221887166192

`A007318(C(2, n))*A298396(A055999(n)+10)`
-/

namespace A298392.P13400033221887166192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298396 (A055999 n + 10).toNat

end

end A298392.P13400033221887166192

/-! ## A298392.P2548503496686149128

`A298396(A055999(n)+10)/A007318(C(n, n²))`
-/

namespace A298392.P2548503496686149128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298396 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A298392.P2548503496686149128

/-! ## A298392.P8783706953440622301

`A298461(A219347(n))+A298396(A374004(n+1))`
-/

namespace A298392.P8783706953440622301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A219347 n).toNat + A298396 (A374004 (n + 1)).toNat

end

end A298392.P8783706953440622301

/-!
# A298393: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298393, there is no canonical definition to state claims against.
-/

/-! ## A298393.P17249210440419759303

`A298396(A374005(n+1))`
-/

namespace A298393.P17249210440419759303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A374005 (n + 1)).toNat

end

end A298393.P17249210440419759303

/-! ## A298393.P12889068380267015177

`A298396(A167499(n+3))`
-/

namespace A298393.P12889068380267015177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A167499 (n + 3)).toNat

end

end A298393.P12889068380267015177

/-! ## A298393.P3779225016620504142

`A298396(A155212(n)+13)`
-/

namespace A298393.P3779225016620504142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A155212 n + 13).toNat

end

end A298393.P3779225016620504142

/-! ## A298393.P9861200719586569590

`A298396(A056000(n)+15)`
-/

namespace A298393.P9861200719586569590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A056000 n + 15).toNat

end

end A298393.P9861200719586569590

/-! ## A298393.P5915897348649341490

`A298396(eq[7, A066657(n)])`
-/

namespace A298393.P5915897348649341490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298393.P5915897348649341490

/-!
# A298394: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298394, there is no canonical definition to state claims against.
-/

/-! ## A298394.P6262376749807086262

`A298396(A374007(n+1))`
-/

namespace A298394.P6262376749807086262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A374007 (n + 1)).toNat

end

end A298394.P6262376749807086262

/-! ## A298394.P12817982452559625212

`A298396(A056115(n)+21)`
-/

namespace A298394.P12817982452559625212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A056115 n + 21).toNat

end

end A298394.P12817982452559625212

/-! ## A298394.P17312019204565287086

`A298396(Δ[A264443(n)]+10)`
-/

namespace A298394.P17312019204565287086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (f1 (n + 1) - f1 n + 10).toNat

end

end A298394.P17312019204565287086

/-! ## A298394.P1554754895369103717

`A298396(A167499(n+4)+1)`
-/

namespace A298394.P1554754895369103717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A167499 (n + 4) + 1).toNat

end

end A298394.P1554754895369103717

/-! ## A298394.P2607784803044992033

`A298396(A000124(n+5)+5)`
-/

namespace A298394.P2607784803044992033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A000124 (n + 5) + 5).toNat

end

end A298394.P2607784803044992033

/-!
# A298395: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298395, there is no canonical definition to state claims against.
-/

/-! ## A298395.P8697154157043094930

`A298396(A374008(n+1))`
-/

namespace A298395.P8697154157043094930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A374008 (n + 1)).toNat

end

end A298395.P8697154157043094930

/-! ## A298395.P9193830060037467774

`A298396(A167487(n+5))`
-/

namespace A298395.P9193830060037467774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A167487 (n + 5)).toNat

end

end A298395.P9193830060037467774

/-! ## A298395.P12869068817523226144

`A298396(A056119(n)+28)`
-/

namespace A298395.P12869068817523226144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A056119 n + 28).toNat

end

end A298395.P12869068817523226144

/-! ## A298395.P13320915442325817705

`A298396(eq[11, A066657(n)])`
-/

namespace A298395.P13320915442325817705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298395.P13320915442325817705

/-! ## A298395.P15165144122406322810

`A298396(A167499(n+5)+2)`
-/

namespace A298395.P15165144122406322810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298396 (A167499 (n + 5) + 2).toNat

end

end A298395.P15165144122406322810

/-!
# A298396: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298396, there is no canonical definition to state claims against.
-/

/-! ## A298396.P898807143994899345

`A056926(A299514(n+1)²)`
-/

namespace A298396.P898807143994899345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A299514 (n + 1) ^ 2).toNat

end

end A298396.P898807143994899345

/-! ## A298396.P7283263370053709088

`A262689(A299514(n+1)²)`
-/

namespace A298396.P7283263370053709088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A299514 (n + 1) ^ 2).toNat

end

end A298396.P7283263370053709088

/-! ## A298396.P13786750147360787809

`A299514(A276837(∑[n])+n)`
-/

namespace A298396.P13786750147360787809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A276837 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A298396.P13786750147360787809

/-! ## A298396.P15773894177529911528

`A299514(n+1)%A290175(n)`
-/

namespace A298396.P15773894177529911528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299514 (n + 1)) (A290175 n)

end

end A298396.P15773894177529911528

/-! ## A298396.P16479573778103780486

`A299514(A176727(2*n+1)+n)`
-/

namespace A298396.P16479573778103780486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299514 (A176727 (2 * n + 1) + (n : ℤ)).toNat

end

end A298396.P16479573778103780486

/-!
# A298397: Pentagonal numbers divisible by 4.

The programs for A298397, the canonical program `A298397.P7929319783887302516` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298397 has offset 1).

The definition of A298397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298397.P3419643988768274431

`ogf((12x+80x^2+60x^3+40x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A298397.P3419643988768274431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 80, 60, 40] [1, -1, -2, 2, 1, -1] n

end

end A298397.P3419643988768274431

namespace A298397

/-- `ogf((12x+80x^2+60x^3+40x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P3419643988768274431.Spec : Prop :=
  ∀ n, P3419643988768274431.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P7929319783887302516

`8*(n+1)*(3*(n+1)-7)-(6*(n+1)-7)*(-1)^(n+1)+33`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A298397

/-- `8*(n+1)*(3*(n+1)-7)-(6*(n+1)-7)*(-1)^(n+1)+33` -/
def P7929319783887302516.Spec : Prop :=
  ∀ n, P7929319783887302516.a n = A298397 (n + 1)

theorem P7929319783887302516.correct : P7929319783887302516.Spec := by
  intro n
  simp only [A298397, Nat.add_sub_cancel]

end A298397

/-! ## A298397.P12331438704065706082

`A014633(2*n-n%2)`
-/

namespace A298397.P12331438704065706082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014633 (2 * n - n % 2)

end

end A298397.P12331438704065706082

namespace A298397

/-- `A014633(2*n-n%2)` -/
def P12331438704065706082.Spec : Prop :=
  ∀ n, P12331438704065706082.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P6390086290873765751

`A014633(or(1, n)+n-1)`
-/

namespace A298397.P6390086290873765751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014633 (Nat.lor 1 n + n - 1)

end

end A298397.P6390086290873765751

namespace A298397

/-- `A014633(or(1, n)+n-1)` -/
def P6390086290873765751.Spec : Prop :=
  ∀ n, P6390086290873765751.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P12161627051949347065

`A014633(A042948(n))`
-/

namespace A298397.P12161627051949347065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014633 (A042948 n).toNat

end

end A298397.P12161627051949347065

namespace A298397

/-- `A014633(A042948(n))` -/
def P12161627051949347065.Spec : Prop :=
  ∀ n, P12161627051949347065.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P14678784131989321328

`A014633(A014601(n+1)-3)`
-/

namespace A298397.P14678784131989321328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014633 (A014601 (n + 1) - 3).toNat

end

end A298397.P14678784131989321328

namespace A298397

/-- `A014633(A014601(n+1)-3)` -/
def P14678784131989321328.Spec : Prop :=
  ∀ n, P14678784131989321328.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P15395974623517155683

`A000326(comp[or(2, n)]+2*n)`
-/

namespace A298397.P15395974623517155683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 * n)

end

end A298397.P15395974623517155683

namespace A298397

/-- `A000326(comp[or(2, n)]+2*n)` -/
def P15395974623517155683.Spec : Prop :=
  ∀ n, P15395974623517155683.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P14429723202974236299

`A000326(or(1, 3*n)+n-1)`
-/

namespace A298397.P14429723202974236299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (Nat.lor 1 (3 * n) + n - 1)

end

end A298397.P14429723202974236299

namespace A298397

/-- `A000326(or(1, 3*n)+n-1)` -/
def P14429723202974236299.Spec : Prop :=
  ∀ n, P14429723202974236299.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P18369054274942677504

`A000326(A047470(n+1))`
-/

namespace A298397.P18369054274942677504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A047470 (n + 1)).toNat

end

end A298397.P18369054274942677504

namespace A298397

/-- `A000326(A047470(n+1))` -/
def P18369054274942677504.Spec : Prop :=
  ∀ n, P18369054274942677504.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P17761193255420453908

`A000326(A047461(n+1)-1)`
-/

namespace A298397.P17761193255420453908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A047461 (n + 1) - 1).toNat

end

end A298397.P17761193255420453908

namespace A298397

/-- `A000326(A047461(n+1)-1)` -/
def P17761193255420453908.Spec : Prop :=
  ∀ n, P17761193255420453908.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P17528286299762244985

`A000326(A047617(n+1)-2)`
-/

namespace A298397.P17528286299762244985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A047617 (n + 1) - 2).toNat

end

end A298397.P17528286299762244985

namespace A298397

/-- `A000326(A047617(n+1)-2)` -/
def P17528286299762244985.Spec : Prop :=
  ∀ n, P17528286299762244985.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P10490066318474815070

`A000326(A047398(n+1)-3)`
-/

namespace A298397.P10490066318474815070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A047398 (n + 1) - 3).toNat

end

end A298397.P10490066318474815070

namespace A298397

/-- `A000326(A047398(n+1)-3)` -/
def P10490066318474815070.Spec : Prop :=
  ∀ n, P10490066318474815070.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P13554775528009948569

`A000326(A047401(2*n+1))`
-/

namespace A298397.P13554775528009948569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A047401 (2 * n + 1)).toNat

end

end A298397.P13554775528009948569

namespace A298397

/-- `A000326(A047401(2*n+1))` -/
def P13554775528009948569.Spec : Prop :=
  ∀ n, P13554775528009948569.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P7011364612720341073

`A000326(A047238(n+1)+n)`
-/

namespace A298397.P7011364612720341073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A047238 (n + 1) + (n : ℤ)).toNat

end

end A298397.P7011364612720341073

namespace A298397

/-- `A000326(A047238(n+1)+n)` -/
def P7011364612720341073.Spec : Prop :=
  ∀ n, P7011364612720341073.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P10262527208412515969

`A000326(2*A032766(n)+n)`
-/

namespace A298397.P10262527208412515969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * A032766 n + (n : ℤ)).toNat

end

end A298397.P10262527208412515969

namespace A298397

/-- `A000326(2*A032766(n)+n)` -/
def P10262527208412515969.Spec : Prop :=
  ∀ n, P10262527208412515969.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P14112853796957233749

`A000326(A042948(n)+2*n)`
-/

namespace A298397.P14112853796957233749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A042948 n + (2 * n : ℤ)).toNat

end

end A298397.P14112853796957233749

namespace A298397

/-- `A000326(A042948(n)+2*n)` -/
def P14112853796957233749.Spec : Prop :=
  ∀ n, P14112853796957233749.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P16922850708233366573

`A000326(2*A047215(n)-n)`
-/

namespace A298397.P16922850708233366573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * A047215 n - (n : ℤ)).toNat

end

end A298397.P16922850708233366573

namespace A298397

/-- `A000326(2*A047215(n)-n)` -/
def P16922850708233366573.Spec : Prop :=
  ∀ n, P16922850708233366573.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P16996475388239250256

`A000326(A052928(3*n)+n)`
-/

namespace A298397.P16996475388239250256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A052928 (3 * n) + (n : ℤ)).toNat

end

end A298397.P16996475388239250256

namespace A298397

/-- `A000326(A052928(3*n)+n)` -/
def P16996475388239250256.Spec : Prop :=
  ∀ n, P16996475388239250256.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P6610745836592583046

`A000326(A042948(n)+n+n)`
-/

namespace A298397.P6610745836592583046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A042948 n + (n : ℤ) + (n : ℤ)).toNat

end

end A298397.P6610745836592583046

namespace A298397

/-- `A000326(A042948(n)+n+n)` -/
def P6610745836592583046.Spec : Prop :=
  ∀ n, P6610745836592583046.a n = A298397 (n + 1)

end A298397

/-! ## A298397.P17367118097596643903

`A000326(A047241(n+1)-1+n)`
-/

namespace A298397.P17367118097596643903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A047241 (n + 1) - 1 + (n : ℤ)).toNat

end

end A298397.P17367118097596643903

namespace A298397

/-- `A000326(A047241(n+1)-1+n)` -/
def P17367118097596643903.Spec : Prop :=
  ∀ n, P17367118097596643903.a n = A298397 (n + 1)

end A298397

/-!
# A298399: Triangle read by rows: T(n,k) is the number of direct sum decompositions of GF(2)^n whose maximal subspace has dimension k, 1<=k<=n, n>=1.

The programs for A298399, there is no canonical definition to state claims against.
-/

/-! ## A298399.P14261237638299088340

`A358165(A178531(n+1))`
-/

namespace A298399.P14261237638299088340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358165 (A178531 (n + 1)).toNat

end

end A298399.P14261237638299088340

/-! ## A298399.P2510019242440132703

`A053601(A154120(n)-A176975(n))`
-/

namespace A298399.P2510019242440132703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053601 (A154120 n - A176975 n).toNat

end

end A298399.P2510019242440132703

/-! ## A298399.P15455067860342091461

`A053601(A080513(n)^A118340(n))`
-/

namespace A298399.P15455067860342091461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053601 (SequenceMachineLib.roundAway ((A080513 n : ℚ) ^ (A118340 n : ℤ))).toNat

end

end A298399.P15455067860342091461

