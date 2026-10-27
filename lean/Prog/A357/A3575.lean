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
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A357501: Length of longest induced cycle in the n X n king graph.

The programs for A357501, there is no canonical definition to state claims against.
-/

/-! ## A357501.P14670160854261326975

`A322869(A299280(2*n))+A000217(n)`
-/

namespace A357501.P14670160854261326975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322869 (A299280 (2 * n)).toNat + A000217 n

end

end A357501.P14670160854261326975

/-! ## A357501.P14581745957231065451

`eq[A025441(n), A246609(A103867(n+1))]`
-/

namespace A357501.P14581745957231065451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (A103867 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357501.P14581745957231065451

/-! ## A357501.P6335320183982648851

`lt[A082985(A103867(n+1)), A001113(2*(n+2))]`
-/

namespace A357501.P6335320183982648851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082985 (A103867 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (2 * (n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357501.P6335320183982648851

/-! ## A357501.P11275543347497746787

`eq[1, A137634(A137621(n+1))]`
-/

namespace A357501.P11275543347497746787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137634 (A137621 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357501.P11275543347497746787

/-! ## A357501.P16503753554235509390

`A056169(∑[A270236(3*n+4)])+∑[n]`
-/

namespace A357501.P16503753554235509390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A357501.P16503753554235509390

/-!
# A357502: a(n) = ((1 + sqrt(n))^n - (1 - sqrt(n))^n)/(2*sqrt(n)).

The programs for A357502, the canonical program `A357502.P3166181043493976716` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357502 has offset 1).

The definition of A357502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357502.P16614436353362541191

`(n+1)*A357580(n+1)`
-/

namespace A357502.P16614436353362541191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A357580 (n + 1)

end

end A357502.P16614436353362541191

namespace A357502

/-- `(n+1)*A357580(n+1)` -/
def P16614436353362541191.Spec : Prop :=
  ∀ n, P16614436353362541191.a n = A357502 (n + 1)

end A357502

/-! ## A357502.P3166181043493976716

`((1+sqrt(n+1))^(n+1)-(1-sqrt(n+1))^(n+1))/(2*sqrt(n+1))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357502

/-- `((1+sqrt(n+1))^(n+1)-(1-sqrt(n+1))^(n+1))/(2*sqrt(n+1))` -/
def P3166181043493976716.Spec : Prop :=
  ∀ n, P3166181043493976716.a n = (A357502 (n + 1) : ℝ)

end A357502

/-! ## A357502.P14204222604413508714

`A099173(∑[4*(n+1)])`
-/

namespace A357502.P14204222604413508714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099173 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357502.P14204222604413508714

namespace A357502

/-- `A099173(∑[4*(n+1)])` -/
def P14204222604413508714.Spec : Prop :=
  ∀ n, P14204222604413508714.a n = A357502 (n + 1)

end A357502

/-! ## A357502.P6878584295977952570

`A000926(n+1)*A008621(A336990(n)+A245378(n))`
-/

namespace A357502.P6878584295977952570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1) * A008621 (A336990 n + A245378 n).toNat

end

end A357502.P6878584295977952570

namespace A357502

/-- `A000926(n+1)*A008621(A336990(n)+A245378(n))` -/
def P6878584295977952570.Spec : Prop :=
  ∀ n, P6878584295977952570.a n = A357502 (n + 1)

end A357502

/-!
# A357503: a(n) is the hafnian of the 2n X 2n symmetric matrix whose element (i,j) equals abs(i-j).

The programs for A357503, there is no canonical definition to state claims against.
-/

/-! ## A357503.P5033371968554917335

`A309083(floor(sqrt(A211212(n))))`
-/

namespace A357503.P5033371968554917335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309083 (Int.sqrt (A211212 n)).toNat

end

end A357503.P5033371968554917335

/-!
# A357504: Numbers that are the sum of two distinct triangular numbers.

The programs for A357504, there is no canonical definition to state claims against.
-/

/-! ## A357504.P15693127765286449296

`(A339952(n+1)-1)/4`
-/

namespace A357504.P15693127765286449296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339952 (n + 1) - 1 : ℚ) / 4

end

end A357504.P15693127765286449296

/-! ## A357504.P6401614278460026760

`lt[1, A008441(n)]`
-/

namespace A357504.P6401614278460026760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357504.P6401614278460026760

/-! ## A357504.P1362885022177754061

`lt[2, A004020(n)]`
-/

namespace A357504.P1362885022177754061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357504.P1362885022177754061

/-! ## A357504.P13011993601452534657

`lt[4, A005883(n)]`
-/

namespace A357504.P13011993601452534657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357504.P13011993601452534657

/-! ## A357504.P14330245003393067900

`comp[A357505(n+1)]`
-/

namespace A357504.P14330245003393067900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357504.P14330245003393067900

/-! ## A357504.P6347133066753665816

`lt[1, abs(A134343(n))]`
-/

namespace A357504.P6347133066753665816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134343 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357504.P6347133066753665816

/-! ## A357504.P13877443847421811220

`lt[1, A116604(2*n)]`
-/

namespace A357504.P13877443847421811220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357504.P13877443847421811220

/-! ## A357504.P9796075629413790221

`lt[1, A129447(2*n)]`
-/

namespace A357504.P9796075629413790221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357504.P9796075629413790221

/-! ## A357504.P4070985757846652896

`lt[1, A138741(2*n)]`
-/

namespace A357504.P4070985757846652896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357504.P4070985757846652896

/-! ## A357504.P2319793306073736898

`lt[1, A116604(n)]/2`
-/

namespace A357504.P2319793306073736898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A357504.P2319793306073736898

/-!
# A357505: Numbers that are not sum of two distinct triangular numbers.

The programs for A357505, there is no canonical definition to state claims against.
-/

/-! ## A357505.P6682464403197653756

`lt[A008441(n), 2]`
-/

namespace A357505.P6682464403197653756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357505.P6682464403197653756

/-! ## A357505.P14638296149844214894

`lt[A004020(n), 3]`
-/

namespace A357505.P14638296149844214894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004020 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357505.P14638296149844214894

/-! ## A357505.P6133415207945899587

`lt[A005883(n), 5]`
-/

namespace A357505.P6133415207945899587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357505.P6133415207945899587

/-! ## A357505.P15435068576960774078

`comp[A085691(n+1)]`
-/

namespace A357505.P15435068576960774078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357505.P15435068576960774078

/-! ## A357505.P9340224820155215644

`comp[A130269(n+1)]`
-/

namespace A357505.P9340224820155215644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357505.P9340224820155215644

/-! ## A357505.P15879168414787036333

`lt[abs(A134343(n)), 2]`
-/

namespace A357505.P15879168414787036333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134343 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357505.P15879168414787036333

/-! ## A357505.P9269176345826996650

`lt[A116604(2*n), 2]`
-/

namespace A357505.P9269176345826996650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357505.P9269176345826996650

/-! ## A357505.P5359012756178730751

`lt[A129447(2*n), 2]`
-/

namespace A357505.P5359012756178730751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357505.P5359012756178730751

/-! ## A357505.P6287417569672290519

`lt[A138741(2*n), 2]`
-/

namespace A357505.P6287417569672290519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357505.P6287417569672290519

/-! ## A357505.P17596636883886679039

`eq[A005369(n), A008441(n)]`
-/

namespace A357505.P17596636883886679039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357505.P17596636883886679039

/-!
# A357506: a(n) = A005258(n)^3 * A005258(n-1).

The programs for A357506, there is no canonical definition to state claims against.
-/

/-! ## A357506.P15759645540932833664

`A005258(n+1)^3*A005258(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357506.P15759645540932833664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005258 (n + 1) ^ 3 * A005258 n

end

end A357506.P15759645540932833664

/-!
# A357508: a(n) = binomial(4*n,2*n) - 2*binomial(4*n,n).

The programs for A357508, the canonical program `A357508.P13685844180641312134` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357508 has offset 0).

The definition of A357508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n, 2*n)-2*C(4*n, n)` (program `A357508.P13685844180641312134`, by `A357508.P13685844180641312134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A357508.P15053977513581267992

`A001448(n)-2*A005810(n)`
-/

namespace A357508.P15053977513581267992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n - 2 * A005810 n

end

end A357508.P15053977513581267992

namespace A357508

/-- `A001448(n)-2*A005810(n)` -/
def P15053977513581267992.Spec : Prop :=
  ∀ n, P15053977513581267992.a n = A357508 n

end A357508

/-! ## A357508.P13685844180641312134

`C(4*n, 2*n)-2*C(4*n, n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357508

/-- `C(4*n, 2*n)-2*C(4*n, n)` -/
def P13685844180641312134.Spec : Prop :=
  ∀ n, P13685844180641312134.a n = A357508 n

theorem P13685844180641312134.correct : P13685844180641312134.Spec := by
  intro n
  simp only [A357508]

end A357508

/-! ## A357508.P14510616844502736419

`A001448(n)+2*A005810(n)/A057428(n+1)`
-/

namespace A357508.P14510616844502736419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001448 n : ℚ) + (2 * A005810 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A357508.P14510616844502736419

namespace A357508

/-- `A001448(n)+2*A005810(n)/A057428(n+1)` -/
def P14510616844502736419.Spec : Prop :=
  ∀ n, P14510616844502736419.a n = (A357508 n : ℚ)

theorem P14510616844502736419.correct : P14510616844502736419.Spec := by
  intro n
  simp only [A357508, Nat.add_sub_cancel, A357508.P14510616844502736419.a, A357508.P13685844180641312134.a, A001448, A001448.P10146391060409880259.a, A005810, A005810.P5008475447009585536.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A357508

/-! ## A357508.P14820189513235681742

`A001448(n)+2*A005810(n)/A153881(n+2)`
-/

namespace A357508.P14820189513235681742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001448 n : ℚ) + (2 * A005810 n : ℚ) / (A153881 (n + 2) : ℚ)

end

end A357508.P14820189513235681742

namespace A357508

/-- `A001448(n)+2*A005810(n)/A153881(n+2)` -/
def P14820189513235681742.Spec : Prop :=
  ∀ n, P14820189513235681742.a n = (A357508 n : ℚ)

end A357508

/-!
# A357509: a(n) = 2*binomial(3*n,n) - 9*binomial(2*n,n).

The programs for A357509, the canonical program `A357509.P7433910730808826785` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357509 has offset 0).

The definition of A357509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(3*n, n)-9*C(2*n, n)` (program `A357509.P7433910730808826785`, by `A357509.P7433910730808826785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A357509.P15717048356294989821

`2*A005809(n)-9*A000984(n)`
-/

namespace A357509.P15717048356294989821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005809 n - 9 * A000984 n

end

end A357509.P15717048356294989821

namespace A357509

/-- `2*A005809(n)-9*A000984(n)` -/
def P15717048356294989821.Spec : Prop :=
  ∀ n, P15717048356294989821.a n = A357509 n

end A357509

/-! ## A357509.P7433910730808826785

`2*C(3*n, n)-9*C(2*n, n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357509

/-- `2*C(3*n, n)-9*C(2*n, n)` -/
def P7433910730808826785.Spec : Prop :=
  ∀ n, P7433910730808826785.a n = A357509 n

theorem P7433910730808826785.correct : P7433910730808826785.Spec := by
  intro n
  simp only [A357509]

end A357509

/-!
# A357510: a(n) = Sum_{k = 0..n} k * binomial(n,k)^2 * binomial(n+k,k)^2.

The programs for A357510, there is no canonical definition to state claims against.
-/

/-! ## A357510.P8480526656139806653

`∑[2*n*A177316(n)]`
-/

namespace A357510.P8480526656139806653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A177316 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357510.P8480526656139806653

/-! ## A357510.P2643914263362178967

`∑[4*n*A352653(n)]`
-/

namespace A357510.P2643914263362178967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A352653 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357510.P2643914263362178967

/-!
# A357518: Unique fixed point of the two-block substitution 00->111, 01->110, 10->101, 11->100.

The programs for A357518, the canonical program `A357518.P4232868036011759556` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357518 has offset 1).

The definition of A357518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357518.P4232868036011759556

`A087088(n+1)%2`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A357518

/-- `A087088(n+1)%2` -/
def P4232868036011759556.Spec : Prop :=
  ∀ n, P4232868036011759556.a n = A357518 (n + 1)

theorem P4232868036011759556.correct : P4232868036011759556.Spec := by
  intro n
  simp only [A357518, Nat.add_sub_cancel]

end A357518

/-! ## A357518.P17713771982726608828

`Δ[n-a(floor(abs(n/3-n)))]` with `a(0)=0`
-/

namespace A357518.P17713771982726608828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 ⌊|(n : ℚ) / 3 - (n : ℚ)|⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357518.P17713771982726608828

namespace A357518

/-- `Δ[n-a(floor(abs(n/3-n)))]` -/
def P17713771982726608828.Spec : Prop :=
  ∀ n, P17713771982726608828.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P3582362792937667615

`Δ[a(floor(2*n/3))+n]%2` with `a(0)=0`
-/

namespace A357518.P3582362792937667615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊2 * ((n : ℚ) / 3)⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A357518.P3582362792937667615

namespace A357518

/-- `Δ[a(floor(2*n/3))+n]%2` -/
def P3582362792937667615.Spec : Prop :=
  ∀ n, P3582362792937667615.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P9248442297681407723

`and(1, Δ[a(floor(2*n/3))+n])` with `a(0)=0`
-/

namespace A357518.P9248442297681407723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊2 * ((n : ℚ) / 3)⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A357518.P9248442297681407723

namespace A357518

/-- `and(1, Δ[a(floor(2*n/3))+n])` -/
def P9248442297681407723.Spec : Prop :=
  ∀ n, P9248442297681407723.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P17297355111607632061

`char[A026343(n+1)-1]`
-/

namespace A357518.P17297355111607632061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026343 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A357518.P17297355111607632061

namespace A357518

/-- `char[A026343(n+1)-1]` -/
def P17297355111607632061.Spec : Prop :=
  ∀ n, (P17297355111607632061.a n : ℤ) = A357518 (n + 1)

end A357518

/-! ## A357518.P12370010490821453120

`1-char[A026344(n+1)-1]`
-/

namespace A357518.P12370010490821453120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026344 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A357518.P12370010490821453120

namespace A357518

/-- `1-char[A026344(n+1)-1]` -/
def P12370010490821453120.Spec : Prop :=
  ∀ n, P12370010490821453120.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P10785290774369438460

`A000035(A087088(n+1))`
-/

namespace A357518.P10785290774369438460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A087088 (n + 1)).toNat

end

end A357518.P10785290774369438460

namespace A357518

/-- `A000035(A087088(n+1))` -/
def P10785290774369438460.Spec : Prop :=
  ∀ n, P10785290774369438460.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P7545458401841161075

`A010873(A087088(n+1)²)`
-/

namespace A357518.P7545458401841161075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A087088 (n + 1) ^ 2).toNat

end

end A357518.P7545458401841161075

namespace A357518

/-- `A010873(A087088(n+1)²)` -/
def P7545458401841161075.Spec : Prop :=
  ∀ n, P7545458401841161075.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P1747574455911451069

`A039982(A087088(n+1)²)`
-/

namespace A357518.P1747574455911451069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A087088 (n + 1) ^ 2).toNat

end

end A357518.P1747574455911451069

namespace A357518

/-- `A039982(A087088(n+1)²)` -/
def P1747574455911451069.Spec : Prop :=
  ∀ n, P1747574455911451069.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P9770783592556228140

`A096268(A087088(n+1)²)`
-/

namespace A357518.P9770783592556228140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A087088 (n + 1) ^ 2).toNat

end

end A357518.P9770783592556228140

namespace A357518

/-- `A096268(A087088(n+1)²)` -/
def P9770783592556228140.Spec : Prop :=
  ∀ n, P9770783592556228140.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P14364583287361171647

`A096271(A087088(n+1)²)`
-/

namespace A357518.P14364583287361171647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A087088 (n + 1) ^ 2).toNat

end

end A357518.P14364583287361171647

namespace A357518

/-- `A096271(A087088(n+1)²)` -/
def P14364583287361171647.Spec : Prop :=
  ∀ n, P14364583287361171647.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P16897523062200206654

`and(A016760(n), A087088(n+1))`
-/

namespace A357518.P16897523062200206654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A087088 (n + 1))

end

end A357518.P16897523062200206654

namespace A357518

/-- `and(A016760(n), A087088(n+1))` -/
def P16897523062200206654.Spec : Prop :=
  ∀ n, P16897523062200206654.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P13078371062528250934

`and(A016820(n), A087088(n+1))`
-/

namespace A357518.P13078371062528250934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A087088 (n + 1))

end

end A357518.P13078371062528250934

namespace A357518

/-- `and(A016820(n), A087088(n+1))` -/
def P13078371062528250934.Spec : Prop :=
  ∀ n, P13078371062528250934.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P6588380491891019586

`A096268(A087088(n+1)*A087088(n+1))`
-/

namespace A357518.P6588380491891019586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A087088 (n + 1) * A087088 (n + 1)).toNat

end

end A357518.P6588380491891019586

namespace A357518

/-- `A096268(A087088(n+1)*A087088(n+1))` -/
def P6588380491891019586.Spec : Prop :=
  ∀ n, P6588380491891019586.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P18123237231197558352

`and(A087088(n+1), A122041(A087088(n+1)²))`
-/

namespace A357518.P18123237231197558352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087088 (n + 1)) (A122041 (A087088 (n + 1) ^ 2).toNat)

end

end A357518.P18123237231197558352

namespace A357518

/-- `and(A087088(n+1), A122041(A087088(n+1)²))` -/
def P18123237231197558352.Spec : Prop :=
  ∀ n, P18123237231197558352.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P10050191982838247718

`and(A014760(n)², A087088(n+1))`
-/

namespace A357518.P10050191982838247718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014760 n ^ 2) (A087088 (n + 1))

end

end A357518.P10050191982838247718

namespace A357518

/-- `and(A014760(n)², A087088(n+1))` -/
def P10050191982838247718.Spec : Prop :=
  ∀ n, P10050191982838247718.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P10467743222913096648

`A285383(A259431(n+2))`
-/

namespace A357518.P10467743222913096648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (A259431 (n + 2)).toNat

end

end A357518.P10467743222913096648

namespace A357518

/-- `A285383(A259431(n+2))` -/
def P10467743222913096648.Spec : Prop :=
  ∀ n, P10467743222913096648.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P4023039325605501805

`and(A087088(n+1), A195744(n))`
-/

namespace A357518.P4023039325605501805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087088 (n + 1)) (A195744 n)

end

end A357518.P4023039325605501805

namespace A357518

/-- `and(A087088(n+1), A195744(n))` -/
def P4023039325605501805.Spec : Prop :=
  ∀ n, P4023039325605501805.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P17190215635352066737

`and(A087088(n+1), A305155(n))`
-/

namespace A357518.P17190215635352066737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087088 (n + 1)) (A305155 n)

end

end A357518.P17190215635352066737

namespace A357518

/-- `and(A087088(n+1), A305155(n))` -/
def P17190215635352066737.Spec : Prop :=
  ∀ n, P17190215635352066737.a n = A357518 (n + 1)

end A357518

/-! ## A357518.P13113596077123635198

`and(A087088(n+1), A122041(n+1))`
-/

namespace A357518.P13113596077123635198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087088 (n + 1)) (A122041 (n + 1))

end

end A357518.P13113596077123635198

namespace A357518

/-- `and(A087088(n+1), A122041(n+1))` -/
def P13113596077123635198.Spec : Prop :=
  ∀ n, P13113596077123635198.a n = A357518 (n + 1)

end A357518

/-!
# A357519: Number of compositions (ordered partitions) of n into Jacobsthal numbers 1,3,5,11,21,43, ... (A001045).

The programs for A357519, there is no canonical definition to state claims against.
-/

/-! ## A357519.P8874681346715519359

`A232746(A252354(n))`
-/

namespace A357519.P8874681346715519359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A252354 n).toNat

end

end A357519.P8874681346715519359

/-! ## A357519.P876550825637569764

`A003056(∑[A279861(3*n+4)])`
-/

namespace A357519.P876550825637569764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279861 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357519.P876550825637569764

/-! ## A357519.P5569273661709782924

`A003056(A036614(n)+A000598(n))`
-/

namespace A357519.P5569273661709782924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A036614 n + A000598 n).toNat

end

end A357519.P5569273661709782924

/-! ## A357519.P865198664545546944

`A083896(A000079(n+1))+A060961(n)`
-/

namespace A357519.P865198664545546944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A000079 (n + 1)).toNat + A060961 n

end

end A357519.P865198664545546944

/-! ## A357519.P1204813781227161879

`A340988(A147953(n))+A243850(n+1)`
-/

namespace A357519.P1204813781227161879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A147953 n).toNat + 91) + A243850 (n + 1)

end

end A357519.P1204813781227161879

/-!
# A357524: Expansion of Product_{k>=1} 1 / (1 + mu(k)*x^k).

The programs for A357524, there is no canonical definition to state claims against.
-/

/-! ## A357524.P6273039693418694924

`A317950(n)+A051903(A098641(n))`
-/

namespace A357524.P6273039693418694924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 n + A051903 (A098641 n).toNat

end

end A357524.P6273039693418694924

/-!
# A357529: Triangular numbers k such that 2*k cannot be expressed as a sum of two distinct triangular numbers.

The programs for A357529, there is no canonical definition to state claims against.
-/

/-! ## A357529.P7645219698080997413

`eq[1, A113407(n)]`
-/

namespace A357529.P7645219698080997413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357529.P7645219698080997413

/-! ## A357529.P7765189473414413761

`eq[1, A226192(n)²]`
-/

namespace A357529.P7765189473414413761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226192 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357529.P7765189473414413761

/-! ## A357529.P18390063203023178718

`(A004614(n+1)²-1)/8`
-/

namespace A357529.P18390063203023178718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004614 (n + 1) ^ 2 - 1 : ℚ) / 8

end

end A357529.P18390063203023178718

/-! ## A357529.P9037235815187426913

`record[∑[n]-A005081(2*n+1)]`
-/

namespace A357529.P9037235815187426913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A005081 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357529.P9037235815187426913

/-! ## A357529.P16580469973757039599

`C(eq[1, A063014(2*n+1)]+1, 2)`
-/

namespace A357529.P16580469973757039599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A357529.P16580469973757039599

/-! ## A357529.P2546402428234143361

`A001971(A004614(n+1))`
-/

namespace A357529.P2546402428234143361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A004614 (n + 1)).toNat

end

end A357529.P2546402428234143361

/-! ## A357529.P16596938315518821925

`A000217(floor(A004614(n+1)/2))`
-/

namespace A357529.P16596938315518821925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊(A004614 (n + 1) : ℚ) / 2⌋.toNat

end

end A357529.P16596938315518821925

/-! ## A357529.P10659226695957033470

`A000217((A004614(n+1)-1)/2)`
-/

namespace A357529.P10659226695957033470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A004614 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A357529.P10659226695957033470

/-!
# A357531: Final value obtained by traveling clockwise around a circular array with positions numbered clockwise from 1 to n. Each move consists of traveling clockwise k places, where k is the position at the beginning of the move. The first move begins at position 1. a(n) is the position at the end of the n-th move.

The programs for A357531, the canonical program `A357531.P3489620701216592602` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357531 has offset 1).

The definition of A357531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357531.P3489620701216592602

`A082495(n+1)+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357531

/-- `A082495(n+1)+1` -/
def P3489620701216592602.Spec : Prop :=
  ∀ n, P3489620701216592602.a n = A357531 (n + 1)

theorem P3489620701216592602.correct : P3489620701216592602.Spec := by
  intro n
  simp only [A357531, Nat.add_sub_cancel]

end A357531

/-! ## A357531.P14771751102013222609

`(2^(n+1)-1)%(n+1)+1`
-/

namespace A357531.P14771751102013222609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ (n + 1) : ℤ) - 1) (n + 1 : ℤ) + 1

end

end A357531.P14771751102013222609

namespace A357531

/-- `(2^(n+1)-1)%(n+1)+1` -/
def P14771751102013222609.Spec : Prop :=
  ∀ n, P14771751102013222609.a n = A357531 (n + 1)

end A357531

/-! ## A357531.P16420132323663468244

`1-A082493(n+1)+n`
-/

namespace A357531.P16420132323663468244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082493 (n + 1) + (n : ℤ)

end

end A357531.P16420132323663468244

namespace A357531

/-- `1-A082493(n+1)+n` -/
def P16420132323663468244.Spec : Prop :=
  ∀ n, P16420132323663468244.a n = A357531 (n + 1)

end A357531

/-! ## A357531.P13204326605282544441

`Δ[n²]-n-A082493(Δ[n²]-n)`
-/

namespace A357531.P13204326605282544441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A082493 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A357531.P13204326605282544441

namespace A357531

/-- `Δ[n²]-n-A082493(Δ[n²]-n)` -/
def P13204326605282544441.Spec : Prop :=
  ∀ n, P13204326605282544441.a n = A357531 (n + 1)

end A357531

/-! ## A357531.P8904821052058942224

`A015910(n+1)+Δ[or(n, a(n-1))]` with `a(0)=0`
-/

namespace A357531.P8904821052058942224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A357531.P8904821052058942224

namespace A357531

/-- `A015910(n+1)+Δ[or(n, a(n-1))]` -/
def P8904821052058942224.Spec : Prop :=
  ∀ n, P8904821052058942224.a n = A357531 (n + 1)

end A357531

/-! ## A357531.P12664815751221682186

`A099894(n)+A015910(n+1)`
-/

namespace A357531.P12664815751221682186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n + A015910 (n + 1)

end

end A357531.P12664815751221682186

namespace A357531

/-- `A099894(n)+A015910(n+1)` -/
def P12664815751221682186.Spec : Prop :=
  ∀ n, P12664815751221682186.a n = A357531 (n + 1)

end A357531

/-! ## A357531.P13357723849352737127

`A015910(n+1)+A048298(n+1)`
-/

namespace A357531.P13357723849352737127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1) + A048298 (n + 1)

end

end A357531.P13357723849352737127

namespace A357531

/-- `A015910(n+1)+A048298(n+1)` -/
def P13357723849352737127.Spec : Prop :=
  ∀ n, P13357723849352737127.a n = A357531 (n + 1)

end A357531

/-! ## A357531.P558133528132015567

`2^(n+1)-A162214(n+1)`
-/

namespace A357531.P558133528132015567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A162214 (n + 1)

end

end A357531.P558133528132015567

namespace A357531

/-- `2^(n+1)-A162214(n+1)` -/
def P558133528132015567.Spec : Prop :=
  ∀ n, P558133528132015567.a n = A357531 (n + 1)

end A357531

/-! ## A357531.P14682180681454630486

`A126646(n)+1-A162214(n+1)`
-/

namespace A357531.P14682180681454630486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (1 - A162214 (n + 1))

end

end A357531.P14682180681454630486

namespace A357531

/-- `A126646(n)+1-A162214(n+1)` -/
def P14682180681454630486.Spec : Prop :=
  ∀ n, P14682180681454630486.a n = A357531 (n + 1)

end A357531

/-!
# A357532: a(n) = Sum_{k=0..floor(n/3)} (n-2*k)!/(n-3*k)!.

The programs for A357532, the canonical program `A357532.P6851154421488513148` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357532 has offset 0).

The definition of A357532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357532.P6851154421488513148

`(2*a(n-1)+n*a(n-3)+1)/3` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357532

/-- `(2*a(n-1)+n*a(n-3)+1)/3` -/
def P6851154421488513148.Spec : Prop :=
  ∀ n, P6851154421488513148.a n = (A357532 n : ℚ)

end A357532

/-! ## A357532.P3187520203382309134

`A357873(A216604(n))`
-/

namespace A357532.P3187520203382309134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (A216604 n).toNat

end

end A357532.P3187520203382309134

namespace A357532

/-- `A357873(A216604(n))` -/
def P3187520203382309134.Spec : Prop :=
  ∀ n, P3187520203382309134.a n = A357532 n

end A357532

/-! ## A357532.P12951002220442024273

`A135665(A034342(n+1))+1`
-/

namespace A357532.P12951002220442024273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A034342 (n + 1)).toNat + 1

end

end A357532.P12951002220442024273

namespace A357532

/-- `A135665(A034342(n+1))+1` -/
def P12951002220442024273.Spec : Prop :=
  ∀ n, P12951002220442024273.a n = A357532 n

end A357532

/-! ## A357532.P6551748977869350510

`A000194(A000664(n))-A035538(n)`
-/

namespace A357532.P6551748977869350510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000664 n).toNat - A035538 n

end

end A357532.P6551748977869350510

namespace A357532

/-- `A000194(A000664(n))-A035538(n)` -/
def P6551748977869350510.Spec : Prop :=
  ∀ n, P6551748977869350510.a n = A357532 n

end A357532

/-! ## A357532.P8131296222895173100

`A307970(n+1)+A137579(A329723(n+1))`
-/

namespace A357532.P8131296222895173100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307970 (n + 1) + A137579 (A329723 (n + 1)).toNat

end

end A357532.P8131296222895173100

namespace A357532

/-- `A307970(n+1)+A137579(A329723(n+1))` -/
def P8131296222895173100.Spec : Prop :=
  ∀ n, P8131296222895173100.a n = A357532 n

end A357532

/-!
# A357533: a(n) = Sum_{k=0..floor(n/4)} (n-3*k)!/(n-4*k)!.

The programs for A357533, the canonical program `A357533.P5313426221476350499` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357533 has offset 0).

The definition of A357533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357533.P5313426221476350499

`(3*a(n-1)+n*a(n-4)+1)/4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357533

/-- `(3*a(n-1)+n*a(n-4)+1)/4` -/
def P5313426221476350499.Spec : Prop :=
  ∀ n, P5313426221476350499.a n = (A357533 n : ℚ)

end A357533

/-! ## A357533.P4287064344825164179

`A371216(A263358(n))`
-/

namespace A357533.P4287064344825164179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371216 (A263358 n).toNat

end

end A357533.P4287064344825164179

namespace A357533

/-- `A371216(A263358(n))` -/
def P4287064344825164179.Spec : Prop :=
  ∀ n, P4287064344825164179.a n = A357533 n

end A357533

/-! ## A357533.P3080029977933610471

`A321993(A307971(n+1))`
-/

namespace A357533.P3080029977933610471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A307971 (n + 1)).toNat

end

end A357533.P3080029977933610471

namespace A357533

/-- `A321993(A307971(n+1))` -/
def P3080029977933610471.Spec : Prop :=
  ∀ n, P3080029977933610471.a n = A357533 n

end A357533

/-! ## A357533.P18176466288934197806

`A346073(n)+A185284(A282500(n))`
-/

namespace A357533.P18176466288934197806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346073 n + A185284 (A282500 n).toNat

end

end A357533.P18176466288934197806

namespace A357533

/-- `A346073(n)+A185284(A282500(n))` -/
def P18176466288934197806.Spec : Prop :=
  ∀ n, P18176466288934197806.a n = A357533 n

end A357533

/-! ## A357533.P1712387873952701895

`A346073(n)+A296084(A283821(n+1))`
-/

namespace A357533.P1712387873952701895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346073 n + A296084 (A283821 (n + 1)).toNat

end

end A357533.P1712387873952701895

namespace A357533

/-- `A346073(n)+A296084(A283821(n+1))` -/
def P1712387873952701895.Spec : Prop :=
  ∀ n, P1712387873952701895.a n = A357533 n

end A357533

/-!
# A357534: Number of compositions (ordered partitions) of n into two or more powers of 2.

The programs for A357534, there is no canonical definition to state claims against.
-/

/-! ## A357534.P8279897049213080293

`A023359(n)-char[A048298(n)]`
-/

namespace A357534.P8279897049213080293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A357534.P8279897049213080293

/-! ## A357534.P15666567138918249992

`A023359(n)-A255738(n+1)`
-/

namespace A357534.P15666567138918249992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n - A255738 (n + 1)

end

end A357534.P15666567138918249992

/-! ## A357534.P14442522300629769543

`A023359(n)-char[A135416(n+1)]`
-/

namespace A357534.P14442522300629769543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A357534.P14442522300629769543

/-! ## A357534.P4526026105462544108

`A023359(n)-A036987(comp[2*(n+1)])`
-/

namespace A357534.P4526026105462544108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n - A036987 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A357534.P4526026105462544108

/-! ## A357534.P2983413731782048002

`A023359(n)+A357476(n)-A018819(n)`
-/

namespace A357534.P2983413731782048002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n + (A357476 n - A018819 n)

end

end A357534.P2983413731782048002

/-! ## A357534.P15854777269536805322

`A304908(A028310(n))/A028310(n)-A255738(n+1)`
-/

namespace A357534.P15854777269536805322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304908 (A028310 n).toNat : ℚ) / (A028310 n : ℚ) - (A255738 (n + 1) : ℚ)

end

end A357534.P15854777269536805322

/-!
# A357537: a(n) = 2*A080635(n) if n > 0. a(0) = 1.

The programs for A357537, there is no canonical definition to state claims against.
-/

/-! ## A357537.P17282799606405788444

`(2-A000007(n))*A080635(n)`
-/

namespace A357537.P17282799606405788444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A080635 n

end

end A357537.P17282799606405788444

/-! ## A357537.P3881352626541411352

`2*A080635(n)-A151933(n)`
-/

namespace A357537.P3881352626541411352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080635 n - A151933 n

end

end A357537.P3881352626541411352

/-! ## A357537.P10344617852395649560

`A080635(n)*A266662(2*n)`
-/

namespace A357537.P10344617852395649560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080635 n * A266662 (2 * n)

end

end A357537.P10344617852395649560

/-! ## A357537.P10310082096488211729

`A080635(n)*A080638(ceil(n/98))`
-/

namespace A357537.P10310082096488211729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080635 n * A080638 ⌈(n : ℚ) / 98⌉.toNat

end

end A357537.P10310082096488211729

/-! ## A357537.P6665039929682781868

`A001250(n+1)/A000111(n+1)*A080635(n)`
-/

namespace A357537.P6665039929682781868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001250 (n + 1) : ℚ) / (A000111 (n + 1) : ℚ) * (A080635 n : ℚ)

end

end A357537.P6665039929682781868

/-!
# A357538: a(n) = coefficient of x^n in A(x) such that A(x) = 1 + x*(2*A(x)^3 + A(x^3))/3.

The programs for A357538, there is no canonical definition to state claims against.
-/

/-! ## A357538.P15708167342298598173

`A287211(n)`
-/

namespace A357538.P15708167342298598173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287211 n

end

end A357538.P15708167342298598173

/-! ## A357538.P7312731049292696300

`A033321(n)-A035232(A027649(n))`
-/

namespace A357538.P7312731049292696300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n - A035232 (A027649 n).toNat

end

end A357538.P7312731049292696300

/-! ## A357538.P8083772159403144991

`A033321(n)-A369055(A275165(n+1))`
-/

namespace A357538.P8083772159403144991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n - A369055 (A275165 (n + 1)).toNat

end

end A357538.P8083772159403144991

/-!
# A357539: a(n) = coefficient of x^n/n! in: Sum_{n>=0} ( x*exp(x) )^(n*(n+1)/2).

The programs for A357539, there is no canonical definition to state claims against.
-/

/-! ## A357539.P15781172547560997158

`A061773(A232552(n))`
-/

namespace A357539.P15781172547560997158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061773 (A232552 n).toNat

end

end A357539.P15781172547560997158

/-! ## A357539.P4644617774011685406

`A292579(A337558(n))`
-/

namespace A357539.P4644617774011685406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (A337558 n).toNat

end

end A357539.P4644617774011685406

/-!
# A357540: Coefficients T(n,k) of x^(3*n+1)*r^(3*k)/(3*n+1)! in power series S(x,r) = Integral C(x,r)^2 * D(x,r)^2 dx such that C(x,r)^3 - S(x,r)^3 = 1 and D(x,r)^3 - r^3*S(x,r)^3 = 1, as a symmetric triangle read by rows.

The programs for A357540, there is no canonical definition to state claims against.
-/

/-! ## A357540.P12053066665879998481

`A007426(A127741(n)+A001222(n+1))`
-/

namespace A357540.P12053066665879998481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A127741 n + A001222 (n + 1)).toNat

end

end A357540.P12053066665879998481

/-! ## A357540.P12321041954154134673

`A007426(A276924(n+1)*A332741(n+1))`
-/

namespace A357540.P12321041954154134673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A276924 (n + 1) * A332741 (n + 1)).toNat

end

end A357540.P12321041954154134673

/-!
# A357541: Coefficients T(n,k) of x^(3*n)*r^(3*k)/(3*n)! in power series C(x,r) = 1 + Integral S(x,r)^2 * D(x,r)^2 dx such that C(x,r)^3 - S(x,r)^3 = 1 and D(x,r)^3 - r^3*S(x,r)^3 = 1, as a triangle read by rows.

The programs for A357541, there is no canonical definition to state claims against.
-/

/-! ## A357541.P151568527555716737

`A357542(∑[2*n]%comp[∑[n]])`
-/

namespace A357541.P151568527555716737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357542 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A357541.P151568527555716737

/-! ## A357541.P16408578641896106813

`A357542(∑[char[∑[n]]]²-n-1)`
-/

namespace A357541.P16408578641896106813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357542 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A357541.P16408578641896106813

/-!
# A357542: Coefficients T(n,k) of x^(3*n)*r^(3*k)/(3*n)! in power series D(x,r) = 1 + r^3 * Integral S(x,r)^2 * D(x,r)^2 dx such that C(x,r)^3 - S(x,r)^3 = 1 and D(x,r)^3 - r^3*S(x,r)^3 = 1, as a triangle read by rows.

The programs for A357542, there is no canonical definition to state claims against.
-/

/-! ## A357542.P575311028939642534

`A357541(∑[2*n]%comp[∑[n]])`
-/

namespace A357542.P575311028939642534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357541 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A357542.P575311028939642534

/-! ## A357542.P12500350597627949332

`A357541(∑[char[∑[n]]]²-n-1)`
-/

namespace A357542.P12500350597627949332
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357541 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A357542.P12500350597627949332

/-!
# A357543: a(n) = (3*n+1)!/(3^n*n!) * Product_{k=1..n} (3*k - 2), for n >= 0.

The programs for A357543, there is no canonical definition to state claims against.
-/

/-! ## A357543.P9460906342073916947

`A007559(n+1)*A052502(n)`
-/

namespace A357543.P9460906342073916947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007559 (n + 1) * A052502 n

end

end A357543.P9460906342073916947

/-! ## A357543.P16534618901806418841

`A007559(n+1)*A007559(n)*A008544(n)`
-/

namespace A357543.P16534618901806418841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007559 (n + 1) * A007559 n * A008544 n

end

end A357543.P16534618901806418841

/-!
# A357544: 

The programs for A357544, there is no canonical definition to state claims against.
-/

/-! ## A357544.P8280500380240041966

`A357540(eq[A357541(n), A357542(n)])`
-/

namespace A357544.P8280500380240041966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357540 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357544.P8280500380240041966

/-!
# A357545: 

The programs for A357545, there is no canonical definition to state claims against.
-/

/-! ## A357545.P18212129478555346354

`A357542(lt[A204016(n+1), 1])`
-/

namespace A357545.P18212129478555346354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357542 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A357545.P18212129478555346354

/-! ## A357545.P15169231373999289805

`A357541(eq[A357541(n), A357542(n)])`
-/

namespace A357545.P15169231373999289805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357541 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357545.P15169231373999289805

/-!
# A357547: a(n) = coefficient of x^n in A(x) such that: A(x)^2 = A( x^2/(1 - 4*x - 4*x^2) ).

The programs for A357547, there is no canonical definition to state claims against.
-/

/-! ## A357547.P18063803173829334918

`A095775(A150489(n))`
-/

namespace A357547.P18063803173829334918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095775 (A150489 n).toNat

end

end A357547.P18063803173829334918

/-! ## A357547.P6303888687474508005

`A151011(n)-A325135(A002110(n))`
-/

namespace A357547.P6303888687474508005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151011 n - A325135 (A002110 n).toNat

end

end A357547.P6303888687474508005

/-!
# A357548: a(n) = coefficient of x^n in A(x) where A(x)^2 = A( x^2/(1 - 4*x - 8*x^2) ).

The programs for A357548, there is no canonical definition to state claims against.
-/

/-! ## A357548.P10876100409508391024

`A110170(n)+A024359(A224788(n))`
-/

namespace A357548.P10876100409508391024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n + A024359 (A224788 n).toNat

end

end A357548.P10876100409508391024

/-! ## A357548.P3098958802721172813

`A230642(A042678(n))+A110170(n)`
-/

namespace A357548.P3098958802721172813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 (A042678 n).toNat + A110170 n

end

end A357548.P3098958802721172813

/-!
# A357549: a(n) = floor( Sum_{k=0..n-1} n^k / (k! * a(k)) ), for n > 0 with a(0) = 1.

The programs for A357549, there is no canonical definition to state claims against.
-/

/-! ## A357549.P4470105286813491568

`A308908(n)+A132778(A079227(n))`
-/

namespace A357549.P4470105286813491568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308908 n + A132778 (A079227 n).toNat

end

end A357549.P4470105286813491568

/-! ## A357549.P3678871126269981516

`or(A164704(A095100(2*n+1)), A348125(n+2))`
-/

namespace A357549.P3678871126269981516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164704 (A095100 (2 * n + 1)).toNat) (A348125 (n + 2))

end

end A357549.P3678871126269981516

/-! ## A357549.P13484425560492000872

`A003056(A160175(n))`
-/

namespace A357549.P13484425560492000872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A160175 n).toNat

end

end A357549.P13484425560492000872

/-! ## A357549.P13349380594778106594

`A232746(A027990(n))`
-/

namespace A357549.P13349380594778106594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A027990 n).toNat

end

end A357549.P13349380594778106594

/-! ## A357549.P5711100809619369919

`A003056(∑[A356943(n)])`
-/

namespace A357549.P5711100809619369919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357549.P5711100809619369919

/-!
# A357552: a(n) = sigma(n) * binomial(2*n-1,n), for n >= 1.

The programs for A357552, the canonical program `A357552.P8143253732980044237` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357552 has offset 1).

The definition of A357552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*C(2*(n+1)-1, n+1)` (program `A357552.P8143253732980044237`, by `A357552.P8143253732980044237.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A357552.P8143253732980044237

`A000203(n+1)*C(2*(n+1)-1, n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357552

/-- `A000203(n+1)*C(2*(n+1)-1, n+1)` -/
def P8143253732980044237.Spec : Prop :=
  ∀ n, P8143253732980044237.a n = A357552 (n + 1)

theorem P8143253732980044237.correct : P8143253732980044237.Spec := by
  intro n
  simp only [A357552, Nat.add_sub_cancel]

end A357552

/-! ## A357552.P15953308075866347257

`∏[4-2/(n+1)]/2*∑{d}[n+1, #]`
-/

namespace A357552.P15953308075866347257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)

end

end A357552.P15953308075866347257

namespace A357552

/-- `∏[4-2/(n+1)]/2*∑{d}[n+1, #]` -/
def P15953308075866347257.Spec : Prop :=
  ∀ n, P15953308075866347257.a n = (A357552 (n + 1) : ℚ)

end A357552

/-! ## A357552.P8331411661499234556

`A000203(n+1)*A001700(n)`
-/

namespace A357552.P8331411661499234556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001700 n

end

end A357552.P8331411661499234556

namespace A357552

/-- `A000203(n+1)*A001700(n)` -/
def P8331411661499234556.Spec : Prop :=
  ∀ n, P8331411661499234556.a n = A357552 (n + 1)

end A357552

/-! ## A357552.P4069055839054667562

`A000203(n+1)*Δ[A024718(n)]`
-/

namespace A357552.P4069055839054667562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (f1 (n + 1) - f1 n)

end

end A357552.P4069055839054667562

namespace A357552

/-- `A000203(n+1)*Δ[A024718(n)]` -/
def P4069055839054667562.Spec : Prop :=
  ∀ n, P4069055839054667562.a n = A357552 (n + 1)

end A357552

/-! ## A357552.P4788013889082528013

`A000203(n+1)*A088218(n+1)`
-/

namespace A357552.P4788013889082528013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A088218 (n + 1)

end

end A357552.P4788013889082528013

namespace A357552

/-- `A000203(n+1)*A088218(n+1)` -/
def P4788013889082528013.Spec : Prop :=
  ∀ n, P4788013889082528013.a n = A357552 (n + 1)

end A357552

/-! ## A357552.P6981991890628133222

`A000203(n+1)*A001405(2*n+1)`
-/

namespace A357552.P6981991890628133222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001405 (2 * n + 1)

end

end A357552.P6981991890628133222

namespace A357552

/-- `A000203(n+1)*A001405(2*n+1)` -/
def P6981991890628133222.Spec : Prop :=
  ∀ n, P6981991890628133222.a n = A357552 (n + 1)

end A357552

/-! ## A357552.P4699491565896106239

`A000203(n+1)*A366108(2*n+3)`
-/

namespace A357552.P4699491565896106239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A366108 (2 * n + 3)

end

end A357552.P4699491565896106239

namespace A357552

/-- `A000203(n+1)*A366108(2*n+3)` -/
def P4699491565896106239.Spec : Prop :=
  ∀ n, P4699491565896106239.a n = A357552 (n + 1)

end A357552

/-! ## A357552.P9478369621731567431

`C(A005408(n), n)*A000203(n+1)`
-/

namespace A357552.P9478369621731567431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A005408 n).toNat n : ℤ) * A000203 (n + 1)

end

end A357552.P9478369621731567431

namespace A357552

/-- `C(A005408(n), n)*A000203(n+1)` -/
def P9478369621731567431.Spec : Prop :=
  ∀ n, P9478369621731567431.a n = A357552 (n + 1)

end A357552

/-! ## A357552.P8808745038131032454

`A000203(n+1)*A014462((n+1)²)`
-/

namespace A357552.P8808745038131032454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A014462 ((n + 1) ^ 2)

end

end A357552.P8808745038131032454

namespace A357552

/-- `A000203(n+1)*A014462((n+1)²)` -/
def P8808745038131032454.Spec : Prop :=
  ∀ n, P8808745038131032454.a n = A357552 (n + 1)

end A357552

/-! ## A357552.P16156062864428302014

`A000203(n+1)*A008311((n+1)²)`
-/

namespace A357552.P16156062864428302014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A008311 ((n + 1) ^ 2)

end

end A357552.P16156062864428302014

namespace A357552

/-- `A000203(n+1)*A008311((n+1)²)` -/
def P16156062864428302014.Spec : Prop :=
  ∀ n, P16156062864428302014.a n = A357552 (n + 1)

end A357552

/-!
# A357553: a(n) = A000045(n)*A000045(n+1) mod A000032(n).

The programs for A357553, the canonical program `A357553.P6884440394701003739` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357553 has offset 0).

The definition of A357553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357553.P6884440394701003739

`(A000045(n)*A000045(n+1))%A000032(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357553

/-- `(A000045(n)*A000045(n+1))%A000032(n)` -/
def P6884440394701003739.Spec : Prop :=
  ∀ n, P6884440394701003739.a n = A357553 n

theorem P6884440394701003739.correct : P6884440394701003739.Spec := by
  intro n
  simp only [A357553]

end A357553

/-! ## A357553.P4325355766417780923

`A001654(n)%-A000032(n)`
-/

namespace A357553.P4325355766417780923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001654 n) (-A000032 n)

end

end A357553.P4325355766417780923

namespace A357553

/-- `A001654(n)%-A000032(n)` -/
def P4325355766417780923.Spec : Prop :=
  ∀ n, P4325355766417780923.a n = A357553 n

end A357553

/-! ## A357553.P9440553009976481837

`∑[A295680(2*n+1)/2]%(A001612(n)-1)`
-/

namespace A357553.P9440553009976481837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295680 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A001612 n - 1)

end

end A357553.P9440553009976481837

namespace A357553

/-- `∑[A295680(2*n+1)/2]%(A001612(n)-1)` -/
def P9440553009976481837.Spec : Prop :=
  ∀ n, P9440553009976481837.a n = A357553 n

end A357553

/-! ## A357553.P14423327608927858246

`abs((A260259(n)+A033999(n))%A000032(n))`
-/

namespace A357553.P14423327608927858246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A260259 n + A033999 n) (A000032 n)|

end

end A357553.P14423327608927858246

namespace A357553

/-- `abs((A260259(n)+A033999(n))%A000032(n))` -/
def P14423327608927858246.Spec : Prop :=
  ∀ n, P14423327608927858246.a n = A357553 n

end A357553

/-! ## A357553.P17760069758246547853

`abs((A226205(n+1)-A033999(n))%A000032(n))`
-/

namespace A357553.P17760069758246547853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A226205 (n + 1) - A033999 n) (A000032 n)|

end

end A357553.P17760069758246547853

namespace A357553

/-- `abs((A226205(n+1)-A033999(n))%A000032(n))` -/
def P17760069758246547853.Spec : Prop :=
  ∀ n, P17760069758246547853.a n = A357553 n

end A357553

/-!
# A357554: Triangular array read by rows. For T(n,k) where 1 <= k <= n, start with x = k and repeat the map x -> floor(n/x) + (n mod x) until an x occurs that has already appeared, then that is T(n,k).

The programs for A357554, there is no canonical definition to state claims against.
-/

/-! ## A357554.P16711012270262253308

`A051340(n)+A001221(A119687(n))`
-/

namespace A357554.P16711012270262253308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n + A001221 (A119687 n).toNat

end

end A357554.P16711012270262253308

/-! ## A357554.P8032145933843950982

`A353510(n+1)+A353480(A000055(n))`
-/

namespace A357554.P8032145933843950982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353510 (n + 1) + A353480 (A000055 n).toNat

end

end A357554.P8032145933843950982

/-! ## A357554.P9390366545173937586

`A067586(n)+A001221(A063670(n))`
-/

namespace A357554.P9390366545173937586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067586 n + A001221 (A063670 n).toNat

end

end A357554.P9390366545173937586

/-! ## A357554.P18368066357988205060

`A353742(A046802(n))+A082859(n)`
-/

namespace A357554.P18368066357988205060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353742 (A046802 n).toNat + A082859 n

end

end A357554.P18368066357988205060

/-! ## A357554.P17856856128391324658

`A001222(A063670(n)*A253572(n+1))`
-/

namespace A357554.P17856856128391324658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A063670 n * A253572 (n + 1)).toNat

end

end A357554.P17856856128391324658

/-!
# A357555: a(n) is the numerator of Sum_{d|n} (-1)^(d+1) / d^2.

The programs for A357555, there is no canonical definition to state claims against.
-/

/-! ## A357555.P10248705418892099459

`A078306(n+1)/A156699(A245980(n))`
-/

namespace A357555.P10248705418892099459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078306 (n + 1) : ℚ) / (A156699 (A245980 n).toNat : ℚ)

end

end A357555.P10248705418892099459

/-! ## A357555.P16901039171530790265

`A078306(n+1)%A127821(A014616(n+1))`
-/

namespace A357555.P16901039171530790265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078306 (n + 1)) (A127821 (A014616 (n + 1)).toNat)

end

end A357555.P16901039171530790265

/-!
# A357556: a(n) is the denominator of Sum_{d|n} (-1)^(d+1) / d^2.

The programs for A357556, there is no canonical definition to state claims against.
-/

/-! ## A357556.P13698339495018174111

`A007306(A000079(n))*A201059(n+1)`
-/

namespace A357556.P13698339495018174111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A000079 n).toNat * A201059 (n + 1)

end

end A357556.P13698339495018174111

/-! ## A357556.P12172474298580214171

`A096111(A000225(n))*A201059(n+1)`
-/

namespace A357556.P12172474298580214171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (A000225 n).toNat * A201059 (n + 1)

end

end A357556.P12172474298580214171

/-! ## A357556.P6839493660735565686

`A035116(A000079(n))/A344877(n+1)`
-/

namespace A357556.P6839493660735565686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035116 (A000079 n).toNat : ℚ) / (A344877 (n + 1) : ℚ)

end

end A357556.P6839493660735565686

/-! ## A357556.P9424943060018308983

`A035197(A000079(n))*A049077(2*n+2)`
-/

namespace A357556.P9424943060018308983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035197 (A000079 n).toNat * A049077 (2 * n + 2)

end

end A357556.P9424943060018308983

/-! ## A357556.P17217162907900922518

`A001511(A211164(2*(n+1)))*A201059(n+1)`
-/

namespace A357556.P17217162907900922518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A211164 (2 * (n + 1))).toNat * A201059 (n + 1)

end

end A357556.P17217162907900922518

/-!
# A357558: a(n) = Sum_{k = 0..n} (-1)^(n+k)*k*binomial(n,k)*binomial(n+k,k)^2.

The programs for A357558, there is no canonical definition to state claims against.
-/

/-! ## A357558.P13469427196813119027

`n*A361717(n+1)`
-/

namespace A357558.P13469427196813119027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A361717 (n + 1)

end

end A357558.P13469427196813119027

/-! ## A357558.P7041175557892367151

`∑[2*n]*A368178(n)`
-/

namespace A357558.P7041175557892367151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A368178 n

end

end A357558.P7041175557892367151

/-! ## A357558.P130577167961244817

`(n+1)*A352654(n+1)`
-/

namespace A357558.P130577167961244817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A352654 (n + 1)

end

end A357558.P130577167961244817

/-! ## A357558.P3930063127536774186

`record[A142150(n)*A352654(A142150(n))]`
-/

namespace A357558.P3930063127536774186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n * A352654 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357558.P3930063127536774186

/-!
# A357560: a(n) = the numerator of ( Sum_{k = 1..n} (-1)^(n+k)*(1/k)*binomial(n,k)* binomial(n+k,k)^2 ).

The programs for A357560, there is no canonical definition to state claims against.
-/

/-! ## A357560.P9773197038212681662

`A003415(A261059(∑{d}[n+1, #])²)`
-/

namespace A357560.P9773197038212681662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A261059 (∑ d ∈ Nat.divisors (f1 n), d) ^ 2).toNat

end

end A357560.P9773197038212681662

/-!
# A357562: a(n) = n - 2*b(b(n)) for n >= 2, where b(n) = A356988(n).

The programs for A357562, there is no canonical definition to state claims against.
-/

/-! ## A357562.P10428947623332344913

`∑[abs(a(floor(n/ϕ)))]-n` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A357562.P10428947623332344913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  f1 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A357562.P10428947623332344913

/-! ## A357562.P6235171370212404751

`∑[A033999(A226212(n+1)+1)]-1`
-/

namespace A357562.P6235171370212404751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A226212 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A357562.P6235171370212404751

/-! ## A357562.P362901872121828191

`A000201(A001950(n+2))%A344955(n+1)`
-/

namespace A357562.P362901872121828191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000201 (A001950 (n + 2)).toNat) (A344955 (n + 1))

end

end A357562.P362901872121828191

/-!
# A357563: a(n) = b(n) - 2*b(b(b(n))) for n >= 3, where b(n) = A356988(n).

The programs for A357563, there is no canonical definition to state claims against.
-/

/-! ## A357563.P497416373731046234

`A357562(A356988(n+3))`
-/

namespace A357563.P497416373731046234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357562 (A356988 (n + 3)).toNat

end

end A357563.P497416373731046234

/-! ## A357563.P10771674237713403135

`A343453(A179893(n+2))`
-/

namespace A357563.P10771674237713403135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343453 (A179893 (n + 2)).toNat

end

end A357563.P10771674237713403135

/-! ## A357563.P15629096191536515874

`A196563(A270488(n)+A008715(n))`
-/

namespace A357563.P15629096191536515874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A270488 n + A008715 n).toNat

end

end A357563.P15629096191536515874

/-! ## A357563.P15453963454283185890

`A140081(A293327(n))`
-/

namespace A357563.P15453963454283185890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 (A293327 n).toNat

end

end A357563.P15453963454283185890

/-! ## A357563.P2773789518986897036

`lcm(A078701(A011782(n)), A307013(n))`
-/

namespace A357563.P2773789518986897036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078701 (A011782 n).toNat) (A307013 n)

end

end A357563.P2773789518986897036

/-!
# A357564: a(n) = n - 2*b(b(n)) for n >= 2, where b(n) = A006165(n).

The programs for A357564, there is no canonical definition to state claims against.
-/

/-! ## A357564.P2250337122666920527

`2-A352227(A066997(n+2))+n`
-/

namespace A357564.P2250337122666920527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A352227 (A066997 (n + 2)).toNat + (n : ℤ)

end

end A357564.P2250337122666920527

/-! ## A357564.P16036735776021339162

`n+2-A352227(A078881(n+2))`
-/

namespace A357564.P16036735776021339162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A352227 (A078881 (n + 2)).toNat

end

end A357564.P16036735776021339162

/-! ## A357564.P16179886977713444105

`A000027(n+4)%(A352227(A078881(n+2))+2)`
-/

namespace A357564.P16179886977713444105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 4)) (A352227 (A078881 (n + 2)).toNat + 2)

end

end A357564.P16179886977713444105

/-! ## A357564.P9481149177643547964

`n-∑[2%A187816(n+1)]`
-/

namespace A357564.P9481149177643547964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A187816 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357564.P9481149177643547964

/-!
# A357567: a(n) = 5*A005259(n) - 14*A005258(n).

The programs for A357567, there is no canonical definition to state claims against.
-/

/-! ## A357567.P15203491680047816941

`5*A005259(n)-14*A005258(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357567.P15203491680047816941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005259 n - 14 * A005258 n

end

end A357567.P15203491680047816941

/-!
# A357568: a(n) = 9*binomial(2*n,n)^2 - 8*binomial(3*n,n).

The programs for A357568, the canonical program `A357568.P13610635511367588734` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357568 has offset 0).

The definition of A357568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*C(2*n, n)²-8*C(3*n, n)` (program `A357568.P13610635511367588734`, by `A357568.P13610635511367588734.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A357568.P13610635511367588734

`9*C(2*n, n)²-8*C(3*n, n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357568

/-- `9*C(2*n, n)²-8*C(3*n, n)` -/
def P13610635511367588734.Spec : Prop :=
  ∀ n, P13610635511367588734.a n = A357568 n

theorem P13610635511367588734.correct : P13610635511367588734.Spec := by
  intro n
  simp only [A357568]

end A357568

/-! ## A357568.P6443723048829714892

`9*A002894(n)-8*A005809(n)`
-/

namespace A357568.P6443723048829714892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A002894 n - 8 * A005809 n

end

end A357568.P6443723048829714892

namespace A357568

/-- `9*A002894(n)-8*A005809(n)` -/
def P6443723048829714892.Spec : Prop :=
  ∀ n, P6443723048829714892.a n = A357568 n

theorem P6443723048829714892.correct : P6443723048829714892.Spec := by
  intro n
  simp only [A357568, Nat.add_sub_cancel, A357568.P6443723048829714892.a, A357568.P13610635511367588734.a, A002894, A002894.P13776530332623719589.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A357568

/-! ## A357568.P1571445422581683221

`9*A000984(n)²-8*A005809(n)`
-/

namespace A357568.P1571445422581683221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000984 n ^ 2 - 8 * A005809 n

end

end A357568.P1571445422581683221

namespace A357568

/-- `9*A000984(n)²-8*A005809(n)` -/
def P1571445422581683221.Spec : Prop :=
  ∀ n, P1571445422581683221.a n = A357568 n

end A357568

/-!
# A357569: a(n) = binomial(3*n,n)^2 - 27*binomial(2*n,n).

The programs for A357569, the canonical program `A357569.P7927531057125035188` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357569 has offset 0).

The definition of A357569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*n, n)²-27*C(2*n, n)` (program `A357569.P7927531057125035188`, by `A357569.P7927531057125035188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A357569.P7927531057125035188

`C(3*n, n)²-27*C(2*n, n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357569

/-- `C(3*n, n)²-27*C(2*n, n)` -/
def P7927531057125035188.Spec : Prop :=
  ∀ n, P7927531057125035188.a n = A357569 n

theorem P7927531057125035188.correct : P7927531057125035188.Spec := by
  intro n
  simp only [A357569]

end A357569

/-! ## A357569.P737790063412539277

`A188662(n)-27*A000984(n)`
-/

namespace A357569.P737790063412539277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188662 n - 27 * A000984 n

end

end A357569.P737790063412539277

namespace A357569

/-- `A188662(n)-27*A000984(n)` -/
def P737790063412539277.Spec : Prop :=
  ∀ n, P737790063412539277.a n = A357569 n

theorem P737790063412539277.correct : P737790063412539277.Spec := by
  intro n
  simp only [A357569, Nat.add_sub_cancel, A357569.P737790063412539277.a, A357569.P7927531057125035188.a, A000984, A000984.P7946844122574426130.a, A188662, A188662.P10029233221612168784.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A357569

/-! ## A357569.P3367268786820004752

`A005809(n)²-27*A000984(n)`
-/

namespace A357569.P3367268786820004752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n ^ 2 - 27 * A000984 n

end

end A357569.P3367268786820004752

namespace A357569

/-- `A005809(n)²-27*A000984(n)` -/
def P3367268786820004752.Spec : Prop :=
  ∀ n, P3367268786820004752.a n = A357569 n

end A357569

/-!
# A357570: a(n) = Sum_{k=0..floor(n/5)} (n-4*k)!/(n-5*k)!.

The programs for A357570, the canonical program `A357570.P15757640958290080094` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357570 has offset 0).

The definition of A357570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357570.P15757640958290080094

`(4*a(n-1)+n*a(n-5)+1)/5` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357570

/-- `(4*a(n-1)+n*a(n-5)+1)/5` -/
def P15757640958290080094.Spec : Prop :=
  ∀ n, P15757640958290080094.a n = (A357570 n : ℚ)

end A357570

/-! ## A357570.P17830428583194683517

`A122079(A346074(n))`
-/

namespace A357570.P17830428583194683517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A346074 n).toNat

end

end A357570.P17830428583194683517

namespace A357570

/-- `A122079(A346074(n))` -/
def P17830428583194683517.Spec : Prop :=
  ∀ n, P17830428583194683517.a n = A357570 n

end A357570

/-! ## A357570.P16529117668727475069

`A338466(A307972(n+1))`
-/

namespace A357570.P16529117668727475069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A307972 (n + 1)).toNat

end

end A357570.P16529117668727475069

namespace A357570

/-- `A338466(A307972(n+1))` -/
def P16529117668727475069.Spec : Prop :=
  ∀ n, P16529117668727475069.a n = A357570 n

end A357570

/-! ## A357570.P4155621476589206354

`∑[A339110(2*n)%A061954(n+5)]`
-/

namespace A357570.P4155621476589206354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339110 (2 * n)) (A061954 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357570.P4155621476589206354

namespace A357570

/-- `∑[A339110(2*n)%A061954(n+5)]` -/
def P4155621476589206354.Spec : Prop :=
  ∀ n, P4155621476589206354.a n = A357570 n

end A357570

/-! ## A357570.P11832662072484378020

`A185238(n)+A167904(A346074(n))`
-/

namespace A357570.P11832662072484378020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + A167904 (A346074 n).toNat

end

end A357570.P11832662072484378020

namespace A357570

/-- `A185238(n)+A167904(A346074(n))` -/
def P11832662072484378020.Spec : Prop :=
  ∀ n, P11832662072484378020.a n = A357570 n

end A357570

/-!
# A357571: The sixth moment of an n X n random +-1 matrix.

The programs for A357571, there is no canonical definition to state claims against.
-/

/-! ## A357571.P9414322908550206150

`A000061(A045754(n)*A292375(3*n+1))`
-/

namespace A357571.P9414322908550206150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000061 (A045754 n * A292375 (3 * n + 1)).toNat

end

end A357571.P9414322908550206150

/-!
# A357574: a(n) is the maximum number of pairs that sum to a power of 2 in a set of n consecutive odd numbers.

The programs for A357574, there is no canonical definition to state claims against.
-/

/-! ## A357574.P7067372606983083279

`A347301(n+1)-A036987(A322912(2*(n+2)))`
-/

namespace A357574.P7067372606983083279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347301 (n + 1) - A036987 (A322912 (2 * (n + 2))).toNat

end

end A357574.P7067372606983083279

/-! ## A357574.P12964969131843877488

`A352178(n+1)-A262693(A344615(n))`
-/

namespace A357574.P12964969131843877488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352178 (n + 1) - A262693 (A344615 n).toNat

end

end A357574.P12964969131843877488

/-! ## A357574.P8545290081570781211

`A276611(A145126(n)-A026998(n))-char[2]`
-/

namespace A357574.P8545290081570781211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A145126 n - A026998 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A357574.P8545290081570781211

/-! ## A357574.P8831614116747574701

`A352178(n+1)-A010815(A045563(n+1))`
-/

namespace A357574.P8831614116747574701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352178 (n + 1) - A010815 (A045563 (n + 1)).toNat

end

end A357574.P8831614116747574701

/-! ## A357574.P6734792293388894084

`A000196(A306385(3*n+1)-A003963(n+1))`
-/

namespace A357574.P6734792293388894084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A306385 (3 * n + 1) - A003963 (n + 1)).toNat

end

end A357574.P6734792293388894084

/-!
# A357575: Half area of the convex hull of {(x,y) | x,y integers and x^2 + y^2 <= n^2}.

The programs for A357575, there is no canonical definition to state claims against.
-/

/-! ## A357575.P458687748793082813

`A386538(n)/A006530(A000079(n+4))`
-/

namespace A357575.P458687748793082813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386538 n : ℚ) / (A006530 (A000079 (n + 4)).toNat : ℚ)

end

end A357575.P458687748793082813

/-! ## A357575.P7403749323636197105

`A386538(n)/A237271(A091938(n+1))`
-/

namespace A357575.P7403749323636197105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386538 n : ℚ) / (A237271 (A091938 (n + 1)).toNat : ℚ)

end

end A357575.P7403749323636197105

/-! ## A357575.P7888815310078804279

`A000196(A000578(n)*A274546(n+1))`
-/

namespace A357575.P7888815310078804279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000578 n * A274546 (n + 1)).toNat

end

end A357575.P7888815310078804279

/-! ## A357575.P14621245028152847385

`A386538(n)/A237271(A128352(n+1))`
-/

namespace A357575.P14621245028152847385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386538 n : ℚ) / (A237271 (A128352 (n + 1)).toNat : ℚ)

end

end A357575.P14621245028152847385

/-!
# A357577: Least half area of a convex polygon enclosing a circle with radius n and center (0,0) such that all vertex coordinates are integers.

The programs for A357577, there is no canonical definition to state claims against.
-/

/-! ## A357577.P2213799580249921943

`A275890((n+1)²)+(n+1)²`
-/

namespace A357577.P2213799580249921943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275890 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A357577.P2213799580249921943

/-! ## A357577.P6290107093914429903

`∑[∑[gcd(12, n+2)]]%A388846(2*n+5)`
-/

namespace A357577.P6290107093914429903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 12 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A388846 (2 * n + 5))

end

end A357577.P6290107093914429903

/-! ## A357577.P17442625447491330061

`A328335((n+1)²)+A008486(n)`
-/

namespace A357577.P17442625447491330061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 ((n + 1) ^ 2) + A008486 n

end

end A357577.P17442625447491330061

/-!
# A357580: a(n) = ((1 + sqrt(n))^n - (1 - sqrt(n))^n)/(2*n*sqrt(n)).

The programs for A357580, the canonical program `A357580.P11054769900509523500` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357580 has offset 1).

The definition of A357580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357580.P11054769900509523500

`A357502(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357580

/-- `A357502(n+1)/(n+1)` -/
def P11054769900509523500.Spec : Prop :=
  ∀ n, P11054769900509523500.a n = (A357580 (n + 1) : ℚ)

end A357580

/-! ## A357580.P2144243913822876127

`((1+sqrt(n+1))^(n+1)-(1-sqrt(n+1))^(n+1))/(2*(n+1)*sqrt(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357580.P2144243913822876127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (n + 1 : ℝ)) ^ (n + 1) - (1 - Real.sqrt (n + 1 : ℝ)) ^ (n + 1)) / ((2 * (n + 1) : ℝ) * Real.sqrt (n + 1 : ℝ))

end

end A357580.P2144243913822876127

namespace A357580

/-- `((1+sqrt(n+1))^(n+1)-(1-sqrt(n+1))^(n+1))/(2*(n+1)*sqrt(n+1))` -/
def P2144243913822876127.Spec : Prop :=
  ∀ n, P2144243913822876127.a n = (A357580 (n + 1) : ℝ)

end A357580

/-! ## A357580.P12000329902459989468

`A008621(A336990(n)+A245378(n))`
-/

namespace A357580.P12000329902459989468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A336990 n + A245378 n).toNat

end

end A357580.P12000329902459989468

namespace A357580

/-- `A008621(A336990(n)+A245378(n))` -/
def P12000329902459989468.Spec : Prop :=
  ∀ n, P12000329902459989468.a n = A357580 (n + 1)

end A357580

/-!
# A357582: a(n) = A061300(n+1)/A061300(n).

The programs for A357582, there is no canonical definition to state claims against.
-/

/-! ## A357582.P16057025359657914472

`A061300(n+1)/A061300(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357582.P16057025359657914472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061300 (n + 1) : ℚ) / (A061300 n : ℚ)

end

end A357582.P16057025359657914472

/-! ## A357582.P4151520712066926563

`ratio[A061300(n)]`
-/

namespace A357582.P4151520712066926563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061300 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A357582.P4151520712066926563

/-! ## A357582.P6305116432251401248

`ratio[A061799(n!)]`
-/

namespace A357582.P6305116432251401248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (Nat.factorial n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A357582.P6305116432251401248

/-!
# A357583: Triangle read by rows. Convolution triangle of the Bell numbers.

The programs for A357583, there is no canonical definition to state claims against.
-/

/-! ## A357583.P9692610806682673486

`and(15, A087051(A113368(n)))`
-/

namespace A357583.P9692610806682673486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A087051 (A113368 n).toNat)

end

end A357583.P9692610806682673486

/-! ## A357583.P6557807876268920579

`A155887(n)+A000007(A343171(n))`
-/

namespace A357583.P6557807876268920579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155887 n + A000007 (A343171 n).toNat

end

end A357583.P6557807876268920579

/-! ## A357583.P5742894680092668998

`A060576(A006754(n))*A155887(n)`
-/

namespace A357583.P5742894680092668998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A006754 n).toNat * A155887 n

end

end A357583.P5742894680092668998

/-! ## A357583.P1560934043320934865

`A155887(n)^A001764(A129170(n))`
-/

namespace A357583.P1560934043320934865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155887 n : ℚ) ^ (A001764 (A129170 n).toNat : ℤ)

end

end A357583.P1560934043320934865

/-! ## A357583.P3243756675521456997

`A331848((A006519(3*n+4)-1)%A325108(n))+A324162(n)`
-/

namespace A357583.P3243756675521456997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331848 (Int.tmod (A006519 (3 * n + 4) - 1) (A325108 n)).toNat + A324162 n

end

end A357583.P3243756675521456997

/-!
# A357584: Central terms of the convolution triangle of the Bell numbers (A357583).

The programs for A357584, there is no canonical definition to state claims against.
-/

/-! ## A357584.P11773053196547506583

`A357583(∑[4*n])`
-/

namespace A357584.P11773053196547506583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357583 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357584.P11773053196547506583

/-! ## A357584.P17719085088015032165

`record[A357583(A213941(n+2))]`
-/

namespace A357584.P17719085088015032165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357583 (A213941 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357584.P17719085088015032165

/-!
# A357585: Triangle read by rows. Inverse of the convolution triangle of A108524, the number of ordered rooted trees with n generators.

The programs for A357585, there is no canonical definition to state claims against.
-/

/-! ## A357585.P12322697412203535156

`A347520(A109971(n))`
-/

namespace A357585.P12322697412203535156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A109971 n).toNat

end

end A357585.P12322697412203535156

/-! ## A357585.P3075814336558380977

`A109971(n)+A081221(A290235(n))`
-/

namespace A357585.P3075814336558380977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109971 n + A081221 (A290235 n).toNat

end

end A357585.P3075814336558380977

/-! ## A357585.P305829868000799508

`A109971(n)-(A250002(n)-A250002(A109971(n)))`
-/

namespace A357585.P305829868000799508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109971 n - (A250002 n - A250002 (A109971 n).toNat)

end

end A357585.P305829868000799508

/-! ## A357585.P3385946857055106860

`A109971(n)+A000122(A000330(2*(n+1)))`
-/

namespace A357585.P3385946857055106860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109971 n + A000122 (A000330 (2 * (n + 1))).toNat

end

end A357585.P3385946857055106860

/-! ## A357585.P12602409223569008464

`A212619(A157208(n))+A109971(n)`
-/

namespace A357585.P12602409223569008464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A157208 n).toNat + A109971 n

end

end A357585.P12602409223569008464

/-!
# A357586: Triangle read by rows. Convolution triangle of A002467 (number of permutations with fixed points).

The programs for A357586, there is no canonical definition to state claims against.
-/

/-! ## A357586.P13940545294367769904

`A072088(A265435(n))`
-/

namespace A357586.P13940545294367769904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A265435 n).toNat

end

end A357586.P13940545294367769904

/-! ## A357586.P8445388863778586581

`A123731(A380841(n))`
-/

namespace A357586.P8445388863778586581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A380841 n).toNat

end

end A357586.P8445388863778586581

/-! ## A357586.P10151775115367223833

`A122921(A109971(n)²)`
-/

namespace A357586.P10151775115367223833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A109971 n ^ 2).toNat

end

end A357586.P10151775115367223833

/-! ## A357586.P14240939293729756241

`A320278(3*A327547(n))`
-/

namespace A357586.P14240939293729756241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (3 * A327547 n).toNat

end

end A357586.P14240939293729756241

/-! ## A357586.P13778856288420231394

`A048766(A084938(n)*A114153(n))`
-/

namespace A357586.P13778856288420231394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A084938 n * A114153 n).toNat

end

end A357586.P13778856288420231394

/-!
# A357587: If k > 1 and k divides DedekindPsi(k) then A358015(k)/2 is a term of this sequence.

The programs for A357587, there is no canonical definition to state claims against.
-/

/-! ## A357587.P15881967279014118392

`A022998(∑[A061987(n)])`
-/

namespace A357587.P15881967279014118392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357587.P15881967279014118392

/-! ## A357587.P5270727286368138716

`A022998(A003586(n+1))`
-/

namespace A357587.P5270727286368138716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A003586 (n + 1)).toNat

end

end A357587.P5270727286368138716

/-! ## A357587.P7482616405974154573

`A051953(A065119(n+1))`
-/

namespace A357587.P7482616405974154573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A065119 (n + 1)).toNat

end

end A357587.P7482616405974154573

/-! ## A357587.P7719187889299345569

`A055032(A007694(n+2))`
-/

namespace A357587.P7719187889299345569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (A007694 (n + 2)).toNat

end

end A357587.P7719187889299345569

/-! ## A357587.P10337441894382644139

`A022998(sqrt(A025620(n+1)))`
-/

namespace A357587.P10337441894382644139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A357587.P10337441894382644139

/-! ## A357587.P8634087643045152426

`A257088(sqrt(A025620(n+1)))`
-/

namespace A357587.P8634087643045152426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A357587.P8634087643045152426

/-! ## A357587.P17877166335204631423

`A051953(∑[3*A061987(n)])`
-/

namespace A357587.P17877166335204631423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357587.P17877166335204631423

/-! ## A357587.P12797026240311860017

`A051953(Δ[3*A259823(n)])`
-/

namespace A357587.P12797026240311860017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (f1 (n + 1) - f1 n).toNat

end

end A357587.P12797026240311860017

/-! ## A357587.P4691857624562507574

`A022998(A055600(n+1)-1)`
-/

namespace A357587.P4691857624562507574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A055600 (n + 1) - 1).toNat

end

end A357587.P4691857624562507574

/-! ## A357587.P15874616028050238084

`A257088(A055600(n+1)-1)`
-/

namespace A357587.P15874616028050238084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A055600 (n + 1) - 1).toNat

end

end A357587.P15874616028050238084

/-!
# A357589: a(n) = n - A130312(n).

The programs for A357589, the canonical program `A357589.P10994610160883755844` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357589 has offset 1).

The definition of A357589 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130312, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A357589.P10994610160883755844

`n+1-A130312(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A357589

/-- `n+1-A130312(n+1)` -/
def P10994610160883755844.Spec : Prop :=
  ∀ n, P10994610160883755844.a n = A357589 (n + 1)

theorem P10994610160883755844.correct : P10994610160883755844.Spec := by
  intro n
  simp only [A357589, Nat.add_sub_cancel]

end A357589

/-! ## A357589.P7195357974592739854

`floor(A138606(n+1)/2)`
-/

namespace A357589.P7195357974592739854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138606 (n + 1) : ℚ) / 2⌋

end

end A357589.P7195357974592739854

namespace A357589

/-- `floor(A138606(n+1)/2)` -/
def P7195357974592739854.Spec : Prop :=
  ∀ n, P7195357974592739854.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P7949358188977023156

`n-a(A087172(n+1)-2)` with `a(0)=0`
-/

namespace A357589.P7949358188977023156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (A087172 (n + 1) - 2).toNat

end

end A357589.P7949358188977023156

namespace A357589

/-- `n-a(A087172(n+1)-2)` -/
def P7949358188977023156.Spec : Prop :=
  ∀ n, P7949358188977023156.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P14588881673720330098

`n-a(n-A194029(n+1))` with `a(0)=0`
-/

namespace A357589.P14588881673720330098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a ((n : ℤ) - A194029 (n + 1)).toNat

end

end A357589.P14588881673720330098

namespace A357589

/-- `n-a(n-A194029(n+1))` -/
def P14588881673720330098.Spec : Prop :=
  ∀ n, P14588881673720330098.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P8962033623300883349

`n-A000071(A072649(n+1))`
-/

namespace A357589.P8962033623300883349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000071 (A072649 (n + 1)).toNat

end

end A357589.P8962033623300883349

namespace A357589

/-- `n-A000071(A072649(n+1))` -/
def P8962033623300883349.Spec : Prop :=
  ∀ n, P8962033623300883349.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P12955563568397642005

`n+1-A000045(A261101(A219642(n+1)))`
-/

namespace A357589.P12955563568397642005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 (A261101 (A219642 (n + 1)).toNat).toNat

end

end A357589.P12955563568397642005

namespace A357589

/-- `n+1-A000045(A261101(A219642(n+1)))` -/
def P12955563568397642005.Spec : Prop :=
  ∀ n, P12955563568397642005.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P2457459273683750644

`A004526(A138606(n+1))`
-/

namespace A357589.P2457459273683750644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A138606 (n + 1)).toNat

end

end A357589.P2457459273683750644

namespace A357589

/-- `A004526(A138606(n+1))` -/
def P2457459273683750644.Spec : Prop :=
  ∀ n, P2457459273683750644.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P14145570319853471078

`n+1-A000045(A072649(A338698(n+1)))`
-/

namespace A357589.P14145570319853471078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 (A072649 (A338698 (n + 1)).toNat).toNat

end

end A357589.P14145570319853471078

namespace A357589

/-- `n+1-A000045(A072649(A338698(n+1)))` -/
def P14145570319853471078.Spec : Prop :=
  ∀ n, P14145570319853471078.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P13720373210052487780

`n+1-A000045(A095791(A000201(n+1)))`
-/

namespace A357589.P13720373210052487780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 (A095791 (A000201 (n + 1)).toNat).toNat

end

end A357589.P13720373210052487780

namespace A357589

/-- `n+1-A000045(A095791(A000201(n+1)))` -/
def P13720373210052487780.Spec : Prop :=
  ∀ n, P13720373210052487780.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P5367857266368754109

`A066628(A087172(n+1)+n+1)`
-/

namespace A357589.P5367857266368754109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A087172 (n + 1) + (n + 1 : ℤ)).toNat

end

end A357589.P5367857266368754109

namespace A357589

/-- `A066628(A087172(n+1)+n+1)` -/
def P5367857266368754109.Spec : Prop :=
  ∀ n, P5367857266368754109.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P11253371488683485786

`A066628(A082524(n+2)+n+1)`
-/

namespace A357589.P11253371488683485786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A082524 (n + 2) + (n + 1 : ℤ)).toNat

end

end A357589.P11253371488683485786

namespace A357589

/-- `A066628(A082524(n+2)+n+1)` -/
def P11253371488683485786.Spec : Prop :=
  ∀ n, P11253371488683485786.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P13966148000279807115

`A066628(A000045(A130233(n+1))+n+1)`
-/

namespace A357589.P13966148000279807115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A000045 (A130233 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A357589.P13966148000279807115

namespace A357589

/-- `A066628(A000045(A130233(n+1))+n+1)` -/
def P13966148000279807115.Spec : Prop :=
  ∀ n, P13966148000279807115.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P15541808002857092301

`n+1-A000045(A056792(A243571(n+1)))`
-/

namespace A357589.P15541808002857092301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 (A056792 (A243571 (n + 1)).toNat).toNat

end

end A357589.P15541808002857092301

namespace A357589

/-- `n+1-A000045(A056792(A243571(n+1)))` -/
def P15541808002857092301.Spec : Prop :=
  ∀ n, P15541808002857092301.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P2999196406878038009

`n+1-A000045(A056792(A232559(n+1)))`
-/

namespace A357589.P2999196406878038009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 (A056792 (A232559 (n + 1)).toNat).toNat

end

end A357589.P2999196406878038009

namespace A357589

/-- `n+1-A000045(A056792(A232559(n+1)))` -/
def P2999196406878038009.Spec : Prop :=
  ∀ n, P2999196406878038009.a n = A357589 (n + 1)

end A357589

/-! ## A357589.P12559008017902962774

`A356874(A336231(n+1))`
-/

namespace A357589.P12559008017902962774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A336231 (n + 1)).toNat

end

end A357589.P12559008017902962774

namespace A357589

/-- `A356874(A336231(n+1))` -/
def P12559008017902962774.Spec : Prop :=
  ∀ n, P12559008017902962774.a n = A357589 (n + 1)

end A357589

/-!
# A357590: Triangular numbers which are products of five distinct primes.

The programs for A357590, the canonical program `A357590.P13214365663631185069` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357590 has offset 1).

The definition of A357590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357590.P13214365663631185069

`∩[A061304(n+1), A076579(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A357590

/-- `∩[A061304(n+1), A076579(n+1)]` -/
def P13214365663631185069.Spec : Prop :=
  ∀ n, (P13214365663631185069.a n : ℤ) = A357590 (n + 1)

theorem P13214365663631185069.correct : P13214365663631185069.Spec := by
  intro n
  simp only [A357590, Nat.add_sub_cancel]

end A357590

/-! ## A357590.P11670112057422577729

`∩[A046387(n+1), A000217(n)]`
-/

namespace A357590.P11670112057422577729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P11670112057422577729

namespace A357590

/-- `∩[A046387(n+1), A000217(n)]` -/
def P11670112057422577729.Spec : Prop :=
  ∀ n, (P11670112057422577729.a n : ℤ) = A357590 (n + 1)

end A357590

/-! ## A357590.P17904099650892074059

`∩[A046387(n+1), A122493(n)]`
-/

namespace A357590.P17904099650892074059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P17904099650892074059

namespace A357590

/-- `∩[A046387(n+1), A122493(n)]` -/
def P17904099650892074059.Spec : Prop :=
  ∀ n, (P17904099650892074059.a n : ℤ) = A357590 (n + 1)

end A357590

/-! ## A357590.P3353634269880981418

`∩[A046387(n+1), A253145(n)]`
-/

namespace A357590.P3353634269880981418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P3353634269880981418

namespace A357590

/-- `∩[A046387(n+1), A253145(n)]` -/
def P3353634269880981418.Spec : Prop :=
  ∀ n, (P3353634269880981418.a n : ℤ) = A357590 (n + 1)

end A357590

/-! ## A357590.P4498863135011511198

`∩[A046387(n+1), A061304(n+1)]`
-/

namespace A357590.P4498863135011511198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P4498863135011511198

namespace A357590

/-- `∩[A046387(n+1), A061304(n+1)]` -/
def P4498863135011511198.Spec : Prop :=
  ∀ n, (P4498863135011511198.a n : ℤ) = A357590 (n + 1)

end A357590

/-! ## A357590.P15136890571639134888

`∩[A046387(n+1), A074134(n+1)]`
-/

namespace A357590.P15136890571639134888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P15136890571639134888

namespace A357590

/-- `∩[A046387(n+1), A074134(n+1)]` -/
def P15136890571639134888.Spec : Prop :=
  ∀ n, (P15136890571639134888.a n : ℤ) = A357590 (n + 1)

end A357590

/-! ## A357590.P18077886289348670968

`∩[A046387(n+1), A076579(n+1)]`
-/

namespace A357590.P18077886289348670968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P18077886289348670968

namespace A357590

/-- `∩[A046387(n+1), A076579(n+1)]` -/
def P18077886289348670968.Spec : Prop :=
  ∀ n, (P18077886289348670968.a n : ℤ) = A357590 (n + 1)

end A357590

/-! ## A357590.P15996198550778411672

`∩[A046387(n+1), A117520(n+1)]`
-/

namespace A357590.P15996198550778411672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P15996198550778411672

namespace A357590

/-- `∩[A046387(n+1), A117520(n+1)]` -/
def P15996198550778411672.Spec : Prop :=
  ∀ n, (P15996198550778411672.a n : ℤ) = A357590 (n + 1)

end A357590

/-! ## A357590.P17113635779992148143

`∩[A046387(n+1), A121479(n+1)]`
-/

namespace A357590.P17113635779992148143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P17113635779992148143

namespace A357590

/-- `∩[A046387(n+1), A121479(n+1)]` -/
def P17113635779992148143.Spec : Prop :=
  ∀ n, (P17113635779992148143.a n : ℤ) = A357590 (n + 1)

end A357590

/-! ## A357590.P7792720600325471932

`∩[A046387(n+1), A144581(n+1)]`
-/

namespace A357590.P7792720600325471932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P7792720600325471932

namespace A357590

/-- `∩[A046387(n+1), A144581(n+1)]` -/
def P7792720600325471932.Spec : Prop :=
  ∀ n, (P7792720600325471932.a n : ℤ) = A357590 (n + 1)

end A357590

/-!
# A357591: Expansion of e.g.f. (exp(x) - 1) * tan((exp(x) - 1)/2).

The programs for A357591, there is no canonical definition to state claims against.
-/

/-! ## A357591.P3260565740693690170

`A048865(A177478(n)+1)`
-/

namespace A357591.P3260565740693690170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A177478 n + 1).toNat

end

end A357591.P3260565740693690170

/-! ## A357591.P18400072155808713522

`A252735(A177478(n)+1)`
-/

namespace A357591.P18400072155808713522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A177478 n + 1).toNat

end

end A357591.P18400072155808713522

/-! ## A357591.P18189875536997512815

`A336316(A177478(n)+1)`
-/

namespace A357591.P18189875536997512815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336316 (A177478 n + 1).toNat

end

end A357591.P18189875536997512815

/-! ## A357591.P16437755606869900848

`A048865(or(1, A177478(n)))`
-/

namespace A357591.P16437755606869900848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (Int.lor 1 (A177478 n)).toNat

end

end A357591.P16437755606869900848

/-!
# A357592: Number of edges of the Minkowski sum of n simplices with vertices e_(i+1), e_(i+2), e_(i+3) for i=0,...,n-1, where e_i is a standard basis vector.

The programs for A357592, there is no canonical definition to state claims against.
-/

/-! ## A357592.P13551586077636090013

`A001227(9^n)+round(a(n-1)/(2-ϕ))` with `a(0)=3`
-/

namespace A357592.P13551586077636090013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001227 (9 ^ n) + SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (2 - Real.goldenRatio))

end

end A357592.P13551586077636090013

/-!
# A357593: Number of faces of the Minkowski sum of n simplices with vertices e_(i+1), e_(i+2), e_(i+3) for i=0,...,n-1, where e_i is a standard basis vector.

The programs for A357593, there is no canonical definition to state claims against.
-/

/-! ## A357593.P4613640272876827348

`A397560(A111566(n+1))`
-/

namespace A357593.P4613640272876827348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397560 (A111566 (n + 1)).toNat

end

end A357593.P4613640272876827348

/-!
# A357594: Expansion of e.g.f. log(1-x) * tan(log(1-x)/2).

The programs for A357594, there is no canonical definition to state claims against.
-/

/-! ## A357594.P6818243415168815520

`A105519(11*n!)`
-/

namespace A357594.P6818243415168815520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (11 * Nat.factorial n)

end

end A357594.P6818243415168815520

/-! ## A357594.P9975521122435431360

`A105519(A017413(n!))`
-/

namespace A357594.P9975521122435431360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A017413 (Nat.factorial n)).toNat

end

end A357594.P9975521122435431360

/-! ## A357594.P17356631499197373439

`A130845(A111139(n)+1)`
-/

namespace A357594.P17356631499197373439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (A111139 n + 1).toNat

end

end A357594.P17356631499197373439

/-!
# A357596: Number of marked chord diagrams (linear words in which each letter appears twice) with n chords, whose intersection graph is distance-hereditary.

The programs for A357596, there is no canonical definition to state claims against.
-/

/-! ## A357596.P3290959117768714768

`A292648(n*a(n-1))` with `a(0)=1`
-/

namespace A357596.P3290959117768714768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A292648 ((n : ℤ) * a (n - 1)).toNat

end

end A357596.P3290959117768714768

/-! ## A357596.P16617556789770584431

`A292648(abs(n*a((2*n)%(n+1))))` with `a(0)=1`
-/

namespace A357596.P16617556789770584431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A292648 |(n : ℤ) * a (2 * n % (n + 1))|.toNat

end

end A357596.P16617556789770584431

/-!
# A357598: Expansion of e.g.f. sinh(2 * (exp(x)-1)) / 2.

The programs for A357598, there is no canonical definition to state claims against.
-/

/-! ## A357598.P15954606745446126409

`(A001861(n)-A065143(n))/2`
-/

namespace A357598.P15954606745446126409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 n - A065143 n : ℚ) / 2

end

end A357598.P15954606745446126409

/-! ## A357598.P10656957521848414880

`(A065143(n)-A213170(n))/2`
-/

namespace A357598.P10656957521848414880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065143 n - A213170 n : ℚ) / 2

end

end A357598.P10656957521848414880

/-! ## A357598.P13892814213282616639

`(A001861(n)-A213170(n))/4`
-/

namespace A357598.P13892814213282616639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 n - A213170 n : ℚ) / 4

end

end A357598.P13892814213282616639

/-! ## A357598.P1679324635989690272

`A001281(A001861(n)-A065143(n))`
-/

namespace A357598.P1679324635989690272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001861 n - A065143 n).toNat

end

end A357598.P1679324635989690272

/-!
# A357599: Expansion of e.g.f. sinh(2 * log(1+x)) / 2.

The programs for A357599, there is no canonical definition to state claims against.
-/

/-! ## A357599.P10938997593016523082

`-((n+1)*a(n-1))` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=6`
-/

namespace A357599.P10938997593016523082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 6] fun n a =>
  -((n + 1 : ℤ) * a (n - 1))

end

end A357599.P10938997593016523082

/-! ## A357599.P14136680408052247926

`(n-1-2*n)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=6`
-/

namespace A357599.P14136680408052247926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 6] fun n a =>
  ((n : ℤ) - 1 - (2 * n : ℤ)) * a (n - 1)

end

end A357599.P14136680408052247926

/-! ## A357599.P17494118300307931572

`floor((A105752(n+1)+1)/2)`
-/

namespace A357599.P17494118300307931572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105752 (n + 1) + 1 : ℚ) / 2⌋

end

end A357599.P17494118300307931572

/-! ## A357599.P9663210945711426375

`ceil(∏[-(n+1)]/4)`
-/

namespace A357599.P9663210945711426375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌉

end

end A357599.P9663210945711426375

/-! ## A357599.P5665390519922521530

`floor((floor(A133942(n+1)/2)+1)/2)`
-/

namespace A357599.P5665390519922521530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A133942 (n + 1) : ℚ) / 2⌋ + 1 : ℚ) / 2⌋

end

end A357599.P5665390519922521530

