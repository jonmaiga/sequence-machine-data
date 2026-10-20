import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A393400: Number of induced cubes in the n-Mycielski graph.

The programs for A393400, there is no canonical definition to state claims against.
-/

/-! ## A393400.P9244465334402949020

`∑[A353848(A335457(n))]`
-/

namespace A393400.P9244465334402949020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A335457 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393400.P9244465334402949020

/-!
# A393401: Numbers k such that k*2^d + 1 is composite for any of its divisors d.

The programs for A393401, there is no canonical definition to state claims against.
-/

/-! ## A393401.P4039446926568752535

`lt[A134332(2*n+1), A222254(A015999(n+1))]`
-/

namespace A393401.P4039446926568752535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134332 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A015999 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393401.P4039446926568752535

/-! ## A393401.P17554166192983198853

`lt[A029886(A020639(n+1)), A241656(2*n+3)]`
-/

namespace A393401.P17554166192983198853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029886 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241656 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393401.P17554166192983198853

/-! ## A393401.P16505499165086473527

`lt[A241695(A241668(n+1)), A241656(2*n+3)]`
-/

namespace A393401.P16505499165086473527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241695 ((A241668 (n + 1)).toNat + 15)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241656 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393401.P16505499165086473527

/-! ## A393401.P5641108930528179556

`lt[A000110(A055396(n+1)), A348610(2*n+1)]`
-/

namespace A393401.P5641108930528179556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A055396 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393401.P5641108930528179556

/-! ## A393401.P17260090691056124936

`A166602(lt[A002117(n+1), A370262(3*(n+1))])`
-/

namespace A393401.P17260090691056124936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370262 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393401.P17260090691056124936

/-!
# A393402: Sum of the smallest parts in the partitions of n into 3 parts whose middle part is odd.

The programs for A393402, there is no canonical definition to state claims against.
-/

/-! ## A393402.P17180567540556430068

`A309684(n)+A309686(n)-A392567(n)`
-/

namespace A393402.P17180567540556430068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309684 n + (A309686 n - A392567 n)

end

end A393402.P17180567540556430068

/-!
# A393403: Sum of the smallest parts in the partitions of n into 3 parts whose largest part is odd.

The programs for A393403, there is no canonical definition to state claims against.
-/

/-! ## A393403.P16650432716912455345

`A309686(n+1)+A309684(n)-A392567(n+1)`
-/

namespace A393403.P16650432716912455345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309686 (n + 1) + (A309684 n - A392567 (n + 1))

end

end A393403.P16650432716912455345

/-! ## A393403.P7169178871097495837

`A393402(n+1)+A309684(n)-A309684(n+1)`
-/

namespace A393403.P7169178871097495837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393402 (n + 1) + (A309684 n - A309684 (n + 1))

end

end A393403.P7169178871097495837

/-!
# A393404: Sum of the smallest parts in the partitions of n into 3 parts whose largest part is even.

The programs for A393404, there is no canonical definition to state claims against.
-/

/-! ## A393404.P15355204389240584439

`A392567(n+1)+A309686(n)-A309686(n+1)`
-/

namespace A393404.P15355204389240584439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392567 (n + 1) + (A309686 n - A309686 (n + 1))

end

end A393404.P15355204389240584439

/-!
# A393405: Sum of the middle parts in the partitions of n into 3 parts whose smallest part is odd.

The programs for A393405, there is no canonical definition to state claims against.
-/

/-! ## A393405.P10097447406645539640

`A393409(A052928(n+1))`
-/

namespace A393405.P10097447406645539640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393409 (A052928 (n + 1)).toNat

end

end A393405.P10097447406645539640

/-! ## A393405.P15289885265984537292

`A393409(A131055(n+1))`
-/

namespace A393405.P15289885265984537292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393409 (A131055 (n + 1)).toNat

end

end A393405.P15289885265984537292

/-!
# A393408: Sum of the middle parts in the partitions of n into 3 parts whose smallest part is even.

The programs for A393408, there is no canonical definition to state claims against.
-/

/-! ## A393408.P6571999232623489502

`A393406(A052928(n))`
-/

namespace A393408.P6571999232623489502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393406 (A052928 n).toNat

end

end A393408.P6571999232623489502

/-! ## A393408.P11677751265731092525

`A393406(n-A000035(n))`
-/

namespace A393408.P11677751265731092525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393406 ((n : ℤ) - A000035 n).toNat

end

end A393408.P11677751265731092525

/-!
# A393414: Fibonacci sequence beginning 29, 21.

The programs for A393414, the canonical program `A393414.P10739002018828388705` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393414 has offset 0).

The definition of A393414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393414.P10739002018828388705

`a(n-1)+a(n-2)` with `a(0)=29, a(1)=21`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393414

/-- `a(n-1)+a(n-2)` -/
def P10739002018828388705.Spec : Prop :=
  ∀ n, (P10739002018828388705.a n : ℤ) = A393414 n

theorem P10739002018828388705.correct : P10739002018828388705.Spec := by
  intro n
  simp only [A393414]

end A393414

/-! ## A393414.P11415882572841316654

`A190994(n)+A022119(n)`
-/

namespace A393414.P11415882572841316654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190994 n + A022119 n

end

end A393414.P11415882572841316654

namespace A393414

/-- `A190994(n)+A022119(n)` -/
def P11415882572841316654.Spec : Prop :=
  ∀ n, P11415882572841316654.a n = A393414 n

end A393414

/-! ## A393414.P1933836729256349998

`A022363(n+1)-A022091(n)`
-/

namespace A393414.P1933836729256349998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022363 (n + 1) - A022091 n

end

end A393414.P1933836729256349998

namespace A393414

/-- `A022363(n+1)-A022091(n)` -/
def P1933836729256349998.Spec : Prop :=
  ∀ n, P1933836729256349998.a n = A393414 n

end A393414

/-! ## A393414.P5897920016833448926

`A157681(n+1)-A022093(n)`
-/

namespace A393414.P5897920016833448926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157681 (n + 1) - A022093 n

end

end A393414.P5897920016833448926

namespace A393414

/-- `A157681(n+1)-A022093(n)` -/
def P5897920016833448926.Spec : Prop :=
  ∀ n, P5897920016833448926.a n = A393414 n

end A393414

/-! ## A393414.P2762201675362233083

`A190995(n)+2*A190996(n)`
-/

namespace A393414.P2762201675362233083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + 2 * A190996 n

end

end A393414.P2762201675362233083

namespace A393414

/-- `A190995(n)+2*A190996(n)` -/
def P2762201675362233083.Spec : Prop :=
  ∀ n, P2762201675362233083.a n = A393414 n

end A393414

/-! ## A393414.P13017566194991986495

`A022363(n+1)-2*A022087(n)`
-/

namespace A393414.P13017566194991986495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022363 (n + 1) - 2 * A022087 n

end

end A393414.P13017566194991986495

namespace A393414

/-- `A022363(n+1)-2*A022087(n)` -/
def P13017566194991986495.Spec : Prop :=
  ∀ n, P13017566194991986495.a n = A393414 n

end A393414

/-! ## A393414.P3047247611313425648

`A000045(n+1)+A206641(n+1)+A206605(n+1)`
-/

namespace A393414.P3047247611313425648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A206641 (n + 1) + A206605 (n + 1))

end

end A393414.P3047247611313425648

namespace A393414

/-- `A000045(n+1)+A206641(n+1)+A206605(n+1)` -/
def P3047247611313425648.Spec : Prop :=
  ∀ n, P3047247611313425648.a n = A393414 n

end A393414

/-! ## A393414.P6286407781134643961

`A022378(n+1)-(A022368(n)+A000045(n+1))`
-/

namespace A393414.P6286407781134643961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022378 (n + 1) - (A022368 n + A000045 (n + 1))

end

end A393414.P6286407781134643961

namespace A393414

/-- `A022378(n+1)-(A022368(n)+A000045(n+1))` -/
def P6286407781134643961.Spec : Prop :=
  ∀ n, P6286407781134643961.a n = A393414 n

end A393414

/-!
# A393416: Squarefree numbers n for which the Mordell equation y^2 = x^3 + n^r admits at least one integer solution for each nonnegative integer r.

The programs for A393416, there is no canonical definition to state claims against.
-/

/-! ## A393416.P13040906416634333585

`A341939(A001083(n+1)*A379046(n+1))`
-/

namespace A393416.P13040906416634333585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (A001083 (n + 1) * A379046 (n + 1)).toNat

end

end A393416.P13040906416634333585

/-!
# A393418: Expansion of (1/x) * Series_Reversion( x * (2 * (1 - x)^2 - 1) ).

The programs for A393418, there is no canonical definition to state claims against.
-/

/-! ## A393418.P11410223199141869911

`A131055(A212073(n))`
-/

namespace A393418.P11410223199141869911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A212073 n).toNat

end

end A393418.P11410223199141869911

/-!
# A393426: Smallest k multiple of n such that the Pisano period A001175(k) divides k.

The programs for A393426, there is no canonical definition to state claims against.
-/

/-! ## A393426.P18105795255381781868

`A213278(A213278(A213278(n+1)))`
-/

namespace A393426.P18105795255381781868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213278 (A213278 (A213278 (n + 1)).toNat).toNat

end

end A393426.P18105795255381781868

/-! ## A393426.P1422633828788267980

`A327568(A327569(n+1))`
-/

namespace A393426.P1422633828788267980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327568 (A327569 (n + 1)).toNat

end

end A393426.P1422633828788267980

/-! ## A393426.P2446402992971655624

`A327568(A316563(A316563(A316563(A316563(n+1)))))`
-/

namespace A393426.P2446402992971655624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327568 (A316563 (A316563 (A316563 (A316563 (n + 1)).toNat).toNat).toNat).toNat

end

end A393426.P2446402992971655624

/-!
# A393432: a(n) is the number of three-element sets of distinct integer-sided trapezoids whose base angles are 60 degrees of total area n^2 but which cannot fill an equilateral triangular grid of side n units.

The programs for A393432, there is no canonical definition to state claims against.
-/

/-! ## A393432.P15056485174600153332

`A239092(A326023(n))`
-/

namespace A393432.P15056485174600153332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239092 (A326023 n).toNat

end

end A393432.P15056485174600153332

/-!
# A393435: a(n) = (-1)^A033264(n).

The programs for A393435, the canonical program `A393435.P12847349373595133276` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393435 has offset 0).

The definition of A393435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A393435.P12847349373595133276

`(-1)^A033264(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A393435

/-- `(-1)^A033264(n)` -/
def P12847349373595133276.Spec : Prop :=
  ∀ n, P12847349373595133276.a n = (A393435 n : ℚ)

end A393435

/-! ## A393435.P12821754302616400213

`∏[-A073097(2*n+1)]`
-/

namespace A393435.P12821754302616400213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A073097 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393435.P12821754302616400213

namespace A393435

/-- `∏[-A073097(2*n+1)]` -/
def P12821754302616400213.Spec : Prop :=
  ∀ n, P12821754302616400213.a n = A393435 n

end A393435

/-! ## A393435.P11408489449381245868

`A057077(A005811(n))`
-/

namespace A393435.P11408489449381245868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A005811 n).toNat

end

end A393435.P11408489449381245868

namespace A393435

/-- `A057077(A005811(n))` -/
def P11408489449381245868.Spec : Prop :=
  ∀ n, P11408489449381245868.a n = A393435 n

end A393435

/-! ## A393435.P10032213615494807038

`A057077(A136004(n))`
-/

namespace A393435.P10032213615494807038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A136004 n).toNat

end

end A393435.P10032213615494807038

namespace A393435

/-- `A057077(A136004(n))` -/
def P10032213615494807038.Spec : Prop :=
  ∀ n, P10032213615494807038.a n = A393435 n

end A393435

/-! ## A393435.P16189616284542238686

`A033999(A233931(n))`
-/

namespace A393435.P16189616284542238686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A233931 n).toNat

end

end A393435.P16189616284542238686

namespace A393435

/-- `A033999(A233931(n))` -/
def P16189616284542238686.Spec : Prop :=
  ∀ n, P16189616284542238686.a n = A393435 n

end A393435

/-! ## A393435.P12900100020483682535

`A033999(A239904(n))`
-/

namespace A393435.P12900100020483682535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A239904 n).toNat

end

end A393435.P12900100020483682535

namespace A393435

/-- `A033999(A239904(n))` -/
def P12900100020483682535.Spec : Prop :=
  ∀ n, P12900100020483682535.a n = A393435 n

end A393435

/-! ## A393435.P6939239856287025906

`A186032(A090077(n))`
-/

namespace A393435.P6939239856287025906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186032 (A090077 n).toNat

end

end A393435.P6939239856287025906

namespace A393435

/-- `A186032(A090077(n))` -/
def P6939239856287025906.Spec : Prop :=
  ∀ n, P6939239856287025906.a n = A393435 n

end A393435

/-! ## A393435.P8188793549812748132

`A106400(A229762(n))`
-/

namespace A393435.P8188793549812748132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A229762 n).toNat

end

end A393435.P8188793549812748132

namespace A393435

/-- `A106400(A229762(n))` -/
def P8188793549812748132.Spec : Prop :=
  ∀ n, P8188793549812748132.a n = A393435 n

end A393435

/-! ## A393435.P905795436935403217

`A186032(A229763(n))`
-/

namespace A393435.P905795436935403217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186032 (A229763 n).toNat

end

end A393435.P905795436935403217

namespace A393435

/-- `A186032(A229763(n))` -/
def P905795436935403217.Spec : Prop :=
  ∀ n, P905795436935403217.a n = A393435 n

end A393435

/-! ## A393435.P2934216991052382339

`A387219(A000265(n+1))`
-/

namespace A393435.P2934216991052382339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387219 (A000265 (n + 1)).toNat

end

end A393435.P2934216991052382339

namespace A393435

/-- `A387219(A000265(n+1))` -/
def P2934216991052382339.Spec : Prop :=
  ∀ n, P2934216991052382339.a n = A393435 n

end A393435

/-! ## A393435.P12464992679259671447

`A033999(A268411(n)+n)`
-/

namespace A393435.P12464992679259671447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A268411 n + (n : ℤ)).toNat

end

end A393435.P12464992679259671447

namespace A393435

/-- `A033999(A268411(n)+n)` -/
def P12464992679259671447.Spec : Prop :=
  ∀ n, P12464992679259671447.a n = A393435 n

end A393435

/-! ## A393435.P4451975629973950873

`A010693(n)-A105500(n)`
-/

namespace A393435.P4451975629973950873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n - A105500 n

end

end A393435.P4451975629973950873

namespace A393435

/-- `A010693(n)-A105500(n)` -/
def P4451975629973950873.Spec : Prop :=
  ∀ n, P4451975629973950873.a n = A393435 n

end A393435

/-! ## A393435.P3591595224939021494

`A000034(n)-A246960(n)`
-/

namespace A393435.P3591595224939021494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A246960 n

end

end A393435.P3591595224939021494

namespace A393435

/-- `A000034(n)-A246960(n)` -/
def P3591595224939021494.Spec : Prop :=
  ∀ n, P3591595224939021494.a n = A393435 n

end A393435

/-! ## A393435.P11505836701518300705

`A033999(n-A268411(n))`
-/

namespace A393435.P11505836701518300705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((n : ℤ) - A268411 n).toNat

end

end A393435.P11505836701518300705

namespace A393435

/-- `A033999(n-A268411(n))` -/
def P11505836701518300705.Spec : Prop :=
  ∀ n, P11505836701518300705.a n = A393435 n

end A393435

/-! ## A393435.P1009748956410377244

`A009531(A109535(n))`
-/

namespace A393435.P1009748956410377244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A109535 n).toNat

end

end A393435.P1009748956410377244

namespace A393435

/-- `A009531(A109535(n))` -/
def P1009748956410377244.Spec : Prop :=
  ∀ n, P1009748956410377244.a n = A393435 n

end A393435

/-! ## A393435.P14981552161741549847

`2-A246960(Δ[n²])`
-/

namespace A393435.P14981552161741549847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A246960 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A393435.P14981552161741549847

namespace A393435

/-- `2-A246960(Δ[n²])` -/
def P14981552161741549847.Spec : Prop :=
  ∀ n, P14981552161741549847.a n = A393435 n

end A393435

/-! ## A393435.P11414671678113540443

`A034947(A088748(2*n+1)-1)`
-/

namespace A393435.P11414671678113540443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A088748 (2 * n + 1) - 1).toNat

end

end A393435.P11414671678113540443

namespace A393435

/-- `A034947(A088748(2*n+1)-1)` -/
def P11414671678113540443.Spec : Prop :=
  ∀ n, P11414671678113540443.a n = A393435 n

end A393435

/-! ## A393435.P14944875245521248274

`A121238(A088748(2*n+1)-1)`
-/

namespace A393435.P14944875245521248274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 (A088748 (2 * n + 1) - 1).toNat

end

end A393435.P14944875245521248274

namespace A393435

/-- `A121238(A088748(2*n+1)-1)` -/
def P14944875245521248274.Spec : Prop :=
  ∀ n, P14944875245521248274.a n = A393435 n

end A393435

/-! ## A393435.P3539729833885945764

`A286299(A088748(2*n+1)+2)`
-/

namespace A393435.P3539729833885945764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286299 (A088748 (2 * n + 1) + 2).toNat

end

end A393435.P3539729833885945764

namespace A393435

/-- `A286299(A088748(2*n+1)+2)` -/
def P3539729833885945764.Spec : Prop :=
  ∀ n, P3539729833885945764.a n = A393435 n

end A393435

/-! ## A393435.P13031898505403739743

`A320667(A003188(2*n+1)-n)`
-/

namespace A393435.P13031898505403739743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320667 (A003188 (2 * n + 1) - (n : ℤ)).toNat

end

end A393435.P13031898505403739743

namespace A393435

/-- `A320667(A003188(2*n+1)-n)` -/
def P13031898505403739743.Spec : Prop :=
  ∀ n, P13031898505403739743.a n = A393435 n

end A393435

/-!
# A393436: Partial sums of A390314.

The programs for A393436, there is no canonical definition to state claims against.
-/

/-! ## A393436.P14617449879696487989

`∑[A390314(n+1)]`
-/

namespace A393436.P14617449879696487989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393436.P14617449879696487989

/-!
# A393437: Partial products of A390314.

The programs for A393437, there is no canonical definition to state claims against.
-/

/-! ## A393437.P13757381258074678868

`∏[A390314(n+1)]`
-/

namespace A393437.P13757381258074678868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393437.P13757381258074678868

/-! ## A393437.P12080295351243263591

`A119311(A138653(n))`
-/

namespace A393437.P12080295351243263591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119311 (A138653 n).toNat

end

end A393437.P12080295351243263591

/-!
# A393440: Index of 2*prime(n) in A390314, or -1 if 2*prime(n) does not appear.

The programs for A393440, there is no canonical definition to state claims against.
-/

/-! ## A393440.P14821099403134239489

`A393439(A000040(n+1))`
-/

namespace A393440.P14821099403134239489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393439 (A000040 (n + 1)).toNat

end

end A393440.P14821099403134239489

/-! ## A393440.P3027844412318038218

`A393439(A008578(n+2))`
-/

namespace A393440.P3027844412318038218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393439 (A008578 (n + 2)).toNat

end

end A393440.P3027844412318038218

/-! ## A393440.P7215478463571965958

`A393439(A182986(n+2))`
-/

namespace A393440.P7215478463571965958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393439 (A182986 (n + 2)).toNat

end

end A393440.P7215478463571965958

/-!
# A393441: a(n) = (n^4-n^3+2*n^2-2*n+2)/2.

The programs for A393441, the canonical program `A393441.P3618720708825274761` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393441 has offset 0).

The definition of A393441 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4-n^3+2*n²-2*n+2)/2` (program `A393441.P818760732443974118`, by `A393441.P818760732443974118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393441.P818760732443974118

`(n^4-n^3+2*n²-2*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393441.P818760732443974118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - (n ^ 3 : ℤ) + (2 * n ^ 2 : ℤ) - (2 * n : ℤ) + 2 : ℚ) / 2

end

end A393441.P818760732443974118

namespace A393441

/-- `(n^4-n^3+2*n²-2*n+2)/2` -/
def P818760732443974118.Spec : Prop :=
  ∀ n, P818760732443974118.a n = (A393441 n : ℚ)

theorem P818760732443974118.correct : P818760732443974118.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A393441, Nat.add_sub_cancel, A393441.P818760732443974118.a, A393441.P3618720708825274761.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A393441, Nat.add_sub_cancel, A393441.P818760732443974118.a, A393441.P3618720708825274761.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A393441

/-! ## A393441.P3618720708825274761

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=34, a(4)=109`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393441

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3618720708825274761.Spec : Prop :=
  ∀ n, P3618720708825274761.a n = A393441 n

theorem P3618720708825274761.correct : P3618720708825274761.Spec := by
  intro n
  simp only [A393441]

end A393441

/-! ## A393441.P3959524542144794618

`3*A071244(n)+1`
-/

namespace A393441.P3959524542144794618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A071244 n + 1

end

end A393441.P3959524542144794618

namespace A393441

/-- `3*A071244(n)+1` -/
def P3959524542144794618.Spec : Prop :=
  ∀ n, P3959524542144794618.a n = A393441 n

end A393441

/-! ## A393441.P9497094757354546727

`(1-n)²+A101375(n)`
-/

namespace A393441.P9497094757354546727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + A101375 n

end

end A393441.P9497094757354546727

namespace A393441

/-- `(1-n)²+A101375(n)` -/
def P9497094757354546727.Spec : Prop :=
  ∀ n, P9497094757354546727.a n = A393441 n

end A393441

/-! ## A393441.P18102707684139708184

`A239592(n)-(n²+n)`
-/

namespace A393441.P18102707684139708184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239592 n - (n ^ 2 + n : ℤ)

end

end A393441.P18102707684139708184

namespace A393441

/-- `A239592(n)-(n²+n)` -/
def P18102707684139708184.Spec : Prop :=
  ∀ n, P18102707684139708184.a n = A393441 n

end A393441

/-! ## A393441.P11571090785661446059

`A081441(n)+A019582(n)`
-/

namespace A393441.P11571090785661446059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081441 n + A019582 n

end

end A393441.P11571090785661446059

namespace A393441

/-- `A081441(n)+A019582(n)` -/
def P11571090785661446059.Spec : Prop :=
  ∀ n, P11571090785661446059.a n = A393441 n

end A393441

/-! ## A393441.P7620537539277531768

`A171129(n)+A143689(n)`
-/

namespace A393441.P7620537539277531768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + A143689 n

end

end A393441.P7620537539277531768

namespace A393441

/-- `A171129(n)+A143689(n)` -/
def P7620537539277531768.Spec : Prop :=
  ∀ n, P7620537539277531768.a n = A393441 n

end A393441

/-! ## A393441.P17426560653078530608

`A152947(n+1)+A071252(n)`
-/

namespace A393441.P17426560653078530608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + A071252 n

end

end A393441.P17426560653078530608

namespace A393441

/-- `A152947(n+1)+A071252(n)` -/
def P17426560653078530608.Spec : Prop :=
  ∀ n, P17426560653078530608.a n = A393441 n

end A393441

/-! ## A393441.P7319660595803522185

`A036487(n)+A058919(n)-A007590(n)`
-/

namespace A393441.P7319660595803522185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 n + (A058919 n - A007590 n)

end

end A393441.P7319660595803522185

namespace A393441

/-- `A036487(n)+A058919(n)-A007590(n)` -/
def P7319660595803522185.Spec : Prop :=
  ∀ n, P7319660595803522185.a n = A393441 n

end A393441

/-! ## A393441.P4338612380174299730

`A386481(∑[4*n])`
-/

namespace A393441.P4338612380174299730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386481 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393441.P4338612380174299730

namespace A393441

/-- `A386481(∑[4*n])` -/
def P4338612380174299730.Spec : Prop :=
  ∀ n, P4338612380174299730.a n = A393441 n

end A393441

/-!
# A393443: Array read by downward antidiagonals: T(n,k) (n>=0, k>=0) = 1+k+2*n*k+k*(k-1)/2+n*(n-1).

The programs for A393443, the canonical program `A393443.P16093483747421340757` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393443 has offset 0).

The definition of A393443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393443.P16093483747421340757

`A162609(n+1)+A049780(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A393443

/-- `A162609(n+1)+A049780(n)` -/
def P16093483747421340757.Spec : Prop :=
  ∀ n, P16093483747421340757.a n = A393443 n

theorem P16093483747421340757.correct : P16093483747421340757.Spec := by
  intro n
  simp only [A393443]

end A393443

/-! ## A393443.P2269758042739189180

`A070939(A001498(n)*A259841(n+1))`
-/

namespace A393443.P2269758042739189180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A001498 n * A259841 (n + 1)).toNat

end

end A393443.P2269758042739189180

namespace A393443

/-- `A070939(A001498(n)*A259841(n+1))` -/
def P2269758042739189180.Spec : Prop :=
  ∀ n, P2269758042739189180.a n = A393443 n

end A393443

/-!
# A393445: Primes p at which A373813 increases.

The programs for A393445, there is no canonical definition to state claims against.
-/

/-! ## A393445.P15337528475202558204

`A000040(A393446(n+1))`
-/

namespace A393445.P15337528475202558204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A393446 (n + 1)).toNat

end

end A393445.P15337528475202558204

/-!
# A393446: Index of A393445(n) in the list of primes.

The programs for A393446, there is no canonical definition to state claims against.
-/

/-! ## A393446.P17543177403782127022

`A373814(n)+a(n-1)` with `a(0)=1`
-/

namespace A393446.P17543177403782127022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A373814 n + a (n - 1)

end

end A393446.P17543177403782127022

/-! ## A393446.P14039761426630284395

`A000720(A393445(n+1))`
-/

namespace A393446.P14039761426630284395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A393445 (n + 1)).toNat

end

end A393446.P14039761426630284395

/-! ## A393446.P14834720875325751880

`A066328(∩[A000040(n+1), A393445(n+1)])`
-/

namespace A393446.P14834720875325751880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393445 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A393446.P14834720875325751880

/-! ## A393446.P17275993239279125485

`A066328(A393445(n+1)^A040001(n))`
-/

namespace A393446.P17275993239279125485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (SequenceMachineLib.roundAway ((A393445 (n + 1) : ℚ) ^ (A040001 n : ℤ))).toNat

end

end A393446.P17275993239279125485

/-! ## A393446.P2788764054755272760

`A066328(A393445(n+1)^A049710(n+1))`
-/

namespace A393446.P2788764054755272760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (SequenceMachineLib.roundAway ((A393445 (n + 1) : ℚ) ^ (A049710 (n + 1) : ℤ))).toNat

end

end A393446.P2788764054755272760

/-!
# A393448: a(n) = 3*n^2-2*n+1+floor(n^2/4).

The programs for A393448, the canonical program `A393448.P18083745715759526505` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393448 has offset 0).

The definition of A393448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+1+floor(n²/4)` (program `A393448.P18083745715759526505`, by `A393448.P18083745715759526505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393448.P18083745715759526505

`3*n²-2*n+1+floor(n²/4)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393448

/-- `3*n²-2*n+1+floor(n²/4)` -/
def P18083745715759526505.Spec : Prop :=
  ∀ n, P18083745715759526505.a n = A393448 n

theorem P18083745715759526505.correct : P18083745715759526505.Spec := by
  intro n
  simp only [A393448]

end A393448

/-! ## A393448.P9563206575834590286

`∑[a(n-2)+13]` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A393448.P9563206575834590286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 8] fun n f1 =>
  f1 (n - 2) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393448.P9563206575834590286

namespace A393448

/-- `∑[a(n-2)+13]` -/
def P9563206575834590286.Spec : Prop :=
  ∀ n, (P9563206575834590286.a n : ℤ) = A393448 n

end A393448

/-! ## A393448.P7524092938880900530

`∑[∑[floor(a(n-2))]]` with `a(0)=1, a(1)=0, a(2)=7, a(3)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A393448.P7524092938880900530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 7, 6] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393448.P7524092938880900530

namespace A393448

/-- `∑[∑[floor(a(n-2))]]` -/
def P7524092938880900530.Spec : Prop :=
  ∀ n, (P7524092938880900530.a n : ℤ) = A393448 n

end A393448

/-!
# A393449: A392178(n) - A392177(n).

The programs for A393449, there is no canonical definition to state claims against.
-/

/-! ## A393449.P3002721784322332816

`A392178(n+1)-A392177(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393449.P3002721784322332816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1) - A392177 (n + 1)

end

end A393449.P3002721784322332816

/-! ## A393449.P12985779259715597602

`A395356(Δ[n²])`
-/

namespace A393449.P12985779259715597602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395356 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A393449.P12985779259715597602

/-! ## A393449.P15323621259638352830

`A395356(2*n+1)%(n+2)`
-/

namespace A393449.P15323621259638352830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395356 (2 * n + 1)) (n + 2 : ℤ)

end

end A393449.P15323621259638352830

/-! ## A393449.P593337674975369009

`A392178(n+1)-A395355(2*n)`
-/

namespace A393449.P593337674975369009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1) - A395355 (2 * n)

end

end A393449.P593337674975369009

/-!
# A393450: Consider the square spiral with its cells numbered starting at 0, as in A308884 and A274641. Two players, Black and Red, take turns. When it is Black's turn, he places a king at the smallest unoccupied cell not attacked by an existing Red king, and when it is Red's turn, she places a king at the smallest unoccupied cell not attacked by an existing Black king. Sequence lists squares occupied by a Black king.

The programs for A393450, there is no canonical definition to state claims against.
-/

/-! ## A393450.P32858631304171107

`A004526(lt[A319929(n+1), 2])`
-/

namespace A393450.P32858631304171107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A393450.P32858631304171107

/-! ## A393450.P6968828896928092476

`lt[A014209(A253580(n)), A160044(n+1)]`
-/

namespace A393450.P6968828896928092476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 (A253580 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393450.P6968828896928092476

/-! ## A393450.P1750215127118526005

`lt[0, A337967(2*n)²]`
-/

namespace A393450.P1750215127118526005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337967 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A393450.P1750215127118526005

/-! ## A393450.P17261874024546143267

`lt[A000720(A000070(n)), A087647(n+1)]`
-/

namespace A393450.P17261874024546143267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000070 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393450.P17261874024546143267

/-!
# A393451: Consider the square spiral with its cells numbered starting at 0, as in A308884 and A274641. Two players, Black and Red, take turns. When it is Black's turn, he places a king at the smallest unoccupied cell not attacked by an existing Red king, and when it is Red's turn, she places a king at the smallest unoccupied cell not attacked by an existing Black king. Sequence lists squares occupied by a Red king.

The programs for A393451, there is no canonical definition to state claims against.
-/

/-! ## A393451.P6959235571737379439

`lt[A095346(n+1), A112555(A004277(n))]`
-/

namespace A393451.P6959235571737379439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112555 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393451.P6959235571737379439

/-! ## A393451.P4195943900742612632

`lt[A038722(A297191(n)), A239241(n)]`
-/

namespace A393451.P4195943900742612632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A297191 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393451.P4195943900742612632

/-! ## A393451.P1467911235185675280

`lt[A017354(A249790(n)), A276024(n+1)]`
-/

namespace A393451.P1467911235185675280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017354 (A249790 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393451.P1467911235185675280

/-! ## A393451.P15137186930191749649

`lt[A016754(A004737(n+1)), A147820(n+1)]`
-/

namespace A393451.P15137186930191749649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A004737 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393451.P15137186930191749649

/-! ## A393451.P547856547747715304

`lt[A154515(A143505(n+1)), A275131(3*n+4)]`
-/

namespace A393451.P547856547747715304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (A143505 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393451.P547856547747715304

/-!
# A393452: First differences of A392177.

The programs for A393452, there is no canonical definition to state claims against.
-/

/-! ## A393452.P3420922451353150023

`Δ[A392177(n+1)]`
-/

namespace A393452.P3420922451353150023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393452.P3420922451353150023

/-! ## A393452.P5640229563932166964

`A392177(n+2)-A392177(n+1)`
-/

namespace A393452.P5640229563932166964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392177 (n + 2) - A392177 (n + 1)

end

end A393452.P5640229563932166964

/-! ## A393452.P12048337966162503961

`A395356(2*n+1)+A395356(2*(n+1))`
-/

namespace A393452.P12048337966162503961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395356 (2 * n + 1) + A395356 (2 * (n + 1))

end

end A393452.P12048337966162503961

/-! ## A393452.P8661629820374432771

`Δ[record[A395355(n)]]`
-/

namespace A393452.P8661629820374432771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393452.P8661629820374432771

/-! ## A393452.P16961624049871605102

`Δ[A395355(2*n)]`
-/

namespace A393452.P16961624049871605102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393452.P16961624049871605102

/-! ## A393452.P9133473449580106376

`Δ[record[A395357(n)]]`
-/

namespace A393452.P9133473449580106376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393452.P9133473449580106376

/-!
# A393462: Wiener index of the n-necklace graph.

The programs for A393462, the canonical program `A393462.P11513158641186952572` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393462 has offset 0).

The definition of A393462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393462.P11513158641186952572

`n*(1+(-1)^n+12*n²)/2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393462

/-- `n*(1+(-1)^n+12*n²)/2` -/
def P11513158641186952572.Spec : Prop :=
  ∀ n, P11513158641186952572.a n = (A393462 n : ℚ)

end A393462

/-! ## A393462.P10989987434419105322

`A244726(n)+A237420(n)`
-/

namespace A393462.P10989987434419105322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244726 n + A237420 n

end

end A393462.P10989987434419105322

namespace A393462

/-- `A244726(n)+A237420(n)` -/
def P10989987434419105322.Spec : Prop :=
  ∀ n, P10989987434419105322.a n = A393462 n

end A393462

/-!
# A393464: Number of maximum independent vertex sets and minimum vertex covers in the n-necklace graph.

The programs for A393464, the canonical program `A393464.P6727666420595507354` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393464 has offset 1).

The definition of A393464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393464.P6727666420595507354

`4*a(n-2)-4*a(n-4)` with `a(0)=4, a(1)=4, a(2)=24, a(3)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393464

/-- `4*a(n-2)-4*a(n-4)` -/
def P6727666420595507354.Spec : Prop :=
  ∀ n, P6727666420595507354.a n = A393464 (n + 1)

theorem P6727666420595507354.correct : P6727666420595507354.Spec := by
  intro n
  simp only [A393464, Nat.add_sub_cancel]

end A393464

/-!
# A393471: The radical value of the product of adjacent terms of A392505.

The programs for A393471, there is no canonical definition to state claims against.
-/

/-! ## A393471.P3449712691579705341

`A007947(A392505(n+1)*A392505(n+2))`
-/

namespace A393471.P3449712691579705341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A392505 (n + 1) * A392505 (n + 2)).toNat

end

end A393471.P3449712691579705341

/-!
# A393475: G.f. A(x) satisfies A(x) = 1 - E(log(1 - x*(1 + E^2(A(x))))), where E is the Euler operator x*d/dx.

The programs for A393475, there is no canonical definition to state claims against.
-/

/-! ## A393475.P17212249566208768207

`A361848(A106847(n))`
-/

namespace A393475.P17212249566208768207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361848 (A106847 n).toNat

end

end A393475.P17212249566208768207

/-!
# A393476: Number of fundamentally different graceful labelings of the n-triangular snake graph.

The programs for A393476, there is no canonical definition to state claims against.
-/

/-! ## A393476.P15126913225780090405

`A244312(∑[2^n])`
-/

namespace A393476.P15126913225780090405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393476.P15126913225780090405

/-!
# A393478: Number of mutual-visibility sets in the n-Plummer-Toft graph.

The programs for A393478, the canonical program `A393478.P11225261868587834319` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393478 has offset 1).

The definition of A393478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393478.P11225261868587834319

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=54, a(1)=81, a(2)=138, a(3)=247, a(4)=462`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393478

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P11225261868587834319.Spec : Prop :=
  ∀ n, P11225261868587834319.a n = A393478 (n + 1)

theorem P11225261868587834319.correct : P11225261868587834319.Spec := by
  intro n
  simp only [A393478, Nat.add_sub_cancel]

end A393478

/-!
# A393479: a(n) is the permanent of the n X n symmetric matrix M(n) whose generic element M[i,j] is equal to the digit reversal of i*j.

The programs for A393479, there is no canonical definition to state claims against.
-/

/-! ## A393479.P17202186298335623316

`A014573(A289322(n)+A001147(n))`
-/

namespace A393479.P17202186298335623316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 (A289322 n + A001147 n).toNat

end

end A393479.P17202186298335623316

/-!
# A393482: Number of Hamiltonian cycles in the n X n truncated square lattice graph.

The programs for A393482, there is no canonical definition to state claims against.
-/

/-! ## A393482.P16110079689534100114

`A392422((n+1)²+n²)`
-/

namespace A393482.P16110079689534100114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392422 ((n + 1) ^ 2 + n ^ 2)

end

end A393482.P16110079689534100114

/-!
# A393483: For k >= 1, perfect powers A001597(k) for which ratio A001597(k+1) / A001597(k) is smaller than that for any smaller k.

The programs for A393483, there is no canonical definition to state claims against.
-/

/-! ## A393483.P5513604643236988938

`A331912(A331888(2*(n+2))-A331934(n+1))`
-/

namespace A393483.P5513604643236988938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (A331888 (2 * (n + 2)) - A331934 (n + 1)).toNat

end

end A393483.P5513604643236988938

/-!
# A393485: Areas of Heron triangles whose sides all have prime power lengths.

The programs for A393485, there is no canonical definition to state claims against.
-/

/-! ## A393485.P10346360409967922223

`A058215(A005986(n))`
-/

namespace A393485.P10346360409967922223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058215 (A005986 n).toNat

end

end A393485.P10346360409967922223

/-!
# A393488: G.f.: A(x) satisfies A(x) = Sum_{j>=0} x^(j*(j+1)/2) * A(x)^j / Product_{k=1..j} (1 - x^k * A(x)).

The programs for A393488, there is no canonical definition to state claims against.
-/

/-! ## A393488.P7663658619443297887

`A023193(A149762(n))`
-/

namespace A393488.P7663658619443297887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149762 n).toNat

end

end A393488.P7663658619443297887

/-! ## A393488.P6447910056704360182

`A023193(A150170(n))`
-/

namespace A393488.P6447910056704360182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150170 n).toNat

end

end A393488.P6447910056704360182

/-! ## A393488.P12529392000116326670

`A157271(A149237(n))`
-/

namespace A393488.P12529392000116326670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149237 n).toNat

end

end A393488.P12529392000116326670

/-!
# A393491: Multiplicative sequence a(n) with a(p^e) = floor((e+1)/3) for prime p and e > 0.

The programs for A393491, the canonical program `A393491.P7429229746465201342` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393491 has offset 1).

The definition of A393491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393491.P7429229746465201342

`∏{e}[n+1, round(#/3)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393491

/-- `∏{e}[n+1, round(#/3)]` -/
def P7429229746465201342.Spec : Prop :=
  ∀ n, P7429229746465201342.a n = A393491 (n + 1)

theorem P7429229746465201342.correct : P7429229746465201342.Spec := by
  intro n
  simp only [A393491, Nat.add_sub_cancel]

end A393491

/-! ## A393491.P7532242486410237218

`∑{d}[n+1, A061704(#)*A363553((n+1)/#)]`
-/

namespace A393491.P7532242486410237218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061704 d * A363553 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A393491.P7532242486410237218

namespace A393491

/-- `∑{d}[n+1, A061704(#)*A363553((n+1)/#)]` -/
def P7532242486410237218.Spec : Prop :=
  ∀ n, P7532242486410237218.a n = A393491 (n + 1)

end A393491

/-! ## A393491.P6539392833154532368

`val(A226259(A300717(n+1)), 4)`
-/

namespace A393491.P6539392833154532368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A226259 (A300717 (n + 1)).toNat).toNat 4

end

end A393491.P6539392833154532368

namespace A393491

/-- `val(A226259(A300717(n+1)), 4)` -/
def P6539392833154532368.Spec : Prop :=
  ∀ n, (P6539392833154532368.a n : ℤ) = A393491 (n + 1)

end A393491

/-! ## A393491.P6823825236087507961

`A000196(A115572(n+1)*A188585(n+1))`
-/

namespace A393491.P6823825236087507961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A115572 (n + 1) * A188585 (n + 1)).toNat

end

end A393491.P6823825236087507961

namespace A393491

/-- `A000196(A115572(n+1)*A188585(n+1))` -/
def P6823825236087507961.Spec : Prop :=
  ∀ n, P6823825236087507961.a n = A393491 (n + 1)

end A393491

/-! ## A393491.P14672932552713566339

`A000196(A115575(n+1)*A188585(n+1))`
-/

namespace A393491.P14672932552713566339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A115575 (n + 1) * A188585 (n + 1)).toNat

end

end A393491.P14672932552713566339

namespace A393491

/-- `A000196(A115575(n+1)*A188585(n+1))` -/
def P14672932552713566339.Spec : Prop :=
  ∀ n, P14672932552713566339.a n = A393491 (n + 1)

end A393491

/-! ## A393491.P16602304795438583618

`A000196(A115576(n+1)*A188585(n+1))`
-/

namespace A393491.P16602304795438583618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A115576 (n + 1) * A188585 (n + 1)).toNat

end

end A393491.P16602304795438583618

namespace A393491

/-- `A000196(A115576(n+1)*A188585(n+1))` -/
def P16602304795438583618.Spec : Prop :=
  ∀ n, P16602304795438583618.a n = A393491 (n + 1)

end A393491

/-! ## A393491.P9000253234585518008

`A000196(A188585(n+1))*A115581(n+1)`
-/

namespace A393491.P9000253234585518008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A188585 (n + 1)).toNat * A115581 (n + 1)

end

end A393491.P9000253234585518008

namespace A393491

/-- `A000196(A188585(n+1))*A115581(n+1)` -/
def P9000253234585518008.Spec : Prop :=
  ∀ n, P9000253234585518008.a n = A393491 (n + 1)

end A393491

/-! ## A393491.P15297657142851430311

`A000196(A188585(n+1)^A115572(n+1))`
-/

namespace A393491.P15297657142851430311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A188585 (n + 1) : ℚ) ^ (A115572 (n + 1) : ℤ))).toNat

end

end A393491.P15297657142851430311

namespace A393491

/-- `A000196(A188585(n+1)^A115572(n+1))` -/
def P15297657142851430311.Spec : Prop :=
  ∀ n, P15297657142851430311.a n = A393491 (n + 1)

end A393491

/-! ## A393491.P287797583671264911

`A000196(A188585(n+1)^A115575(n+1))`
-/

namespace A393491.P287797583671264911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A188585 (n + 1) : ℚ) ^ (A115575 (n + 1) : ℤ))).toNat

end

end A393491.P287797583671264911

namespace A393491

/-- `A000196(A188585(n+1)^A115575(n+1))` -/
def P287797583671264911.Spec : Prop :=
  ∀ n, P287797583671264911.a n = A393491 (n + 1)

end A393491

/-! ## A393491.P3325490570345592172

`A000196(A188585(n+1)^A115576(n+1))`
-/

namespace A393491.P3325490570345592172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A188585 (n + 1) : ℚ) ^ (A115576 (n + 1) : ℤ))).toNat

end

end A393491.P3325490570345592172

namespace A393491

/-- `A000196(A188585(n+1)^A115576(n+1))` -/
def P3325490570345592172.Spec : Prop :=
  ∀ n, P3325490570345592172.a n = A393491 (n + 1)

end A393491

/-!
# A393492: S-practical numbers: numbers m such that every number 1 <= k <= Sum_{d|m} s(d) = A211779(m) is a subsum of the multiset {s(d) : d|m}, where s is the sum of aliquot divisors function (A001065).

The programs for A393492, there is no canonical definition to state claims against.
-/

/-! ## A393492.P2289978272280259107

`eq[A167865(n), A174344(A353845(n))]`
-/

namespace A393492.P2289978272280259107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A353845 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393492.P2289978272280259107

/-! ## A393492.P16568313960082553994

`lt[A347131(n+1), A286552(A018818(n+1))]+1`
-/

namespace A393492.P16568313960082553994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 (A018818 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A393492.P16568313960082553994

/-! ## A393492.P6725397207629673263

`filter[A112231(2*n+1), A353787(#)]`
-/

namespace A393492.P6725397207629673263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A393492.P6725397207629673263

/-!
# A393494: Starts of runs of 3 consecutive integers that are all s-practical numbers (A393492).

The programs for A393494, there is no canonical definition to state claims against.
-/

/-! ## A393494.P2799645058533174529

`∩[A356935(n+1), A393493(n+1)]`
-/

namespace A393494.P2799645058533174529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393494.P2799645058533174529

/-!
# A393496: a(n) is the GCD of the X and Y-coordinates of the n-th point of the square spiral.

The programs for A393496, the canonical program `A393496.P1782685945993566905` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393496 has offset 1).

The definition of A393496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393496.P1782685945993566905

`gcd(A174344(n+1), A274923(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A393496

/-- `gcd(A174344(n+1), A274923(n+1))` -/
def P1782685945993566905.Spec : Prop :=
  ∀ n, (P1782685945993566905.a n : ℤ) = A393496 (n + 1)

theorem P1782685945993566905.correct : P1782685945993566905.Spec := by
  intro n
  simp only [A393496, Nat.add_sub_cancel]

end A393496

/-! ## A393496.P2025961415179429325

`gcd(n, ∑[char[(2*n+1)²]])`
-/

namespace A393496.P2025961415179429325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393496.P2025961415179429325

namespace A393496

/-- `gcd(n, ∑[char[(2*n+1)²]])` -/
def P2025961415179429325.Spec : Prop :=
  ∀ n, (P2025961415179429325.a n : ℤ) = A393496 (n + 1)

end A393496

/-! ## A393496.P10001290220583459360

`A338731(A333905(n+1))`
-/

namespace A393496.P10001290220583459360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338731 (A333905 (n + 1)).toNat

end

end A393496.P10001290220583459360

namespace A393496

/-- `A338731(A333905(n+1))` -/
def P10001290220583459360.Spec : Prop :=
  ∀ n, P10001290220583459360.a n = A393496 (n + 1)

end A393496

/-! ## A393496.P18025656126013783507

`A162874(n+1)%A108582(n+1)`
-/

namespace A393496.P18025656126013783507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162874 (n + 1)) (A108582 (n + 1))

end

end A393496.P18025656126013783507

namespace A393496

/-- `A162874(n+1)%A108582(n+1)` -/
def P18025656126013783507.Spec : Prop :=
  ∀ n, P18025656126013783507.a n = A393496 (n + 1)

end A393496

/-! ## A393496.P8723249386623894651

`A287940(n+1)%A108582(n+1)`
-/

namespace A393496.P8723249386623894651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287940 (n + 1)) (A108582 (n + 1))

end

end A393496.P8723249386623894651

namespace A393496

/-- `A287940(n+1)%A108582(n+1)` -/
def P8723249386623894651.Spec : Prop :=
  ∀ n, P8723249386623894651.a n = A393496 (n + 1)

end A393496

