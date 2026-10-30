import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B008.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
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

/-! ## A393401.P8813831231080641159

`lt[A020639(n+1), A325249(2*n+1)]`
-/

namespace A393401.P8813831231080641159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325249 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393401.P8813831231080641159

/-! ## A393401.P1084315441922987474

`lt[A059126(2*n+3), A333810(2*n+1)]`
-/

namespace A393401.P1084315441922987474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333810 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393401.P1084315441922987474

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

The programs for A393414, the canonical program `A393414.P10739002018828388705` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393414 has offset 0).

The definition of A393414 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A393414.anchor : A393414 0 = 29 ∧ A393414 1 = 21 ∧ ∀ n, A393414 (n + 2) = A393414 (n + 1) + A393414 n` in `Proof.A393.A393414`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393414.P10652041589197403043

`ogf((29-8x)/(1-x-x^2))`
-/

namespace A393414.P10652041589197403043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [29, -8] [1, -1, -1] n

end

end A393414.P10652041589197403043

namespace A393414

/-- `ogf((29-8x)/(1-x-x^2))` -/
def P10652041589197403043.Spec : Prop :=
  ∀ n, P10652041589197403043.a n = A393414 n

end A393414

/-! ## A393414.P10739002018828388705

`a(n-1)+a(n-2)` with `a(0)=29, a(1)=21`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393414

/-- `a(n-1)+a(n-2)` -/
def P10739002018828388705.Spec : Prop :=
  ∀ n, (P10739002018828388705.a n : ℤ) = A393414 n

theorem P10739002018828388705.correct : P10739002018828388705.Spec := by
  intro n
  simp only [A393414]

end A393414

/-! ## A393414.P14542911846001668090

`29*A000045(n+1)-8*A000045(n)`
-/

namespace A393414.P14542911846001668090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  29 * A000045 (n + 1) - 8 * A000045 n

end

end A393414.P14542911846001668090

namespace A393414

/-- `29*A000045(n+1)-8*A000045(n)` -/
def P14542911846001668090.Spec : Prop :=
  ∀ n, P14542911846001668090.a n = A393414 n

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
# A393415: Least prime summand of A254859.

The programs for A393415, there is no canonical definition to state claims against.
-/

/-! ## A393415.P997006172889414315

`A086834(A254859(n+1))`
-/

namespace A393415.P997006172889414315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (A254859 (n + 1)).toNat

end

end A393415.P997006172889414315

/-!
# A393416: Squarefree numbers n for which the Mordell equation y^2 = x^3 + n^r admits at least one integer solution for each nonnegative integer r.

The programs for A393416, there is no canonical definition to state claims against.
-/

/-! ## A393416.P8167603534301693892

`A118053(A003632(n+1)-A006466(n))`
-/

namespace A393416.P8167603534301693892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118053 (A003632 (n + 1) - A006466 n).toNat

end

end A393416.P8167603534301693892

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
# A393420: Expansion of (1/x) * Series_Reversion( x * (4 * (1 - x)^2 - 3) ).

The programs for A393420, there is no canonical definition to state claims against.
-/

/-! ## A393420.P7401039714600173563

`Δ[A036563(n)]*A276316(n+1)`
-/

namespace A393420.P7401039714600173563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A276316 (n + 1)

end

end A393420.P7401039714600173563

/-! ## A393420.P9468492093783782280

`A233249(A000040(n+1))*A276316(n+1)`
-/

namespace A393420.P9468492093783782280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (A000040 (n + 1)).toNat * A276316 (n + 1)

end

end A393420.P9468492093783782280

/-! ## A393420.P568487384190286651

`A276316(n+1)*A299200(A000244(n))`
-/

namespace A393420.P568487384190286651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276316 (n + 1) * A299200 (A000244 n).toNat

end

end A393420.P568487384190286651

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

/-! ## A393426.P6485834458712187454

`A327568(A327568(n+1)/A318873(n+1))`
-/

namespace A393426.P6485834458712187454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327568 (SequenceMachineLib.roundAway ((A327568 (n + 1) : ℚ) / (A318873 (n + 1) : ℚ))).toNat

end

end A393426.P6485834458712187454

/-! ## A393426.P81724107662332639

`A327568(A327568(n+1)/A327523(n+1))`
-/

namespace A393426.P81724107662332639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327568 (SequenceMachineLib.roundAway ((A327568 (n + 1) : ℚ) / (A327523 (n + 1) : ℚ))).toNat

end

end A393426.P81724107662332639

/-! ## A393426.P9873197534770411268

`A327568(A327568(n+1)/A327530(2*n+3))`
-/

namespace A393426.P9873197534770411268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327568 (SequenceMachineLib.roundAway ((A327568 (n + 1) : ℚ) / (A327530 (2 * n + 3) : ℚ))).toNat

end

end A393426.P9873197534770411268

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

The definition of A393435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
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

/-! ## A393435.P920633334632723482

`(-1)^(floor(∑[Δ[xor(n, 2*n-1)]%2]/2)-n%2)`
-/

namespace A393435.P920633334632723482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ - ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A393435.P920633334632723482

namespace A393435

/-- `(-1)^(floor(∑[Δ[xor(n, 2*n-1)]%2]/2)-n%2)` -/
def P920633334632723482.Spec : Prop :=
  ∀ n, P920633334632723482.a n = (A393435 n : ℚ)

end A393435

/-! ## A393435.P17572421115269474822

`(-1)^A239904(n)`
-/

namespace A393435.P17572421115269474822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A239904 n : ℤ)

end

end A393435.P17572421115269474822

namespace A393435

/-- `(-1)^A239904(n)` -/
def P17572421115269474822.Spec : Prop :=
  ∀ n, P17572421115269474822.a n = (A393435 n : ℚ)

end A393435

/-! ## A393435.P18191163363607045556

`(-1)^A233931(n)`
-/

namespace A393435.P18191163363607045556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A233931 n : ℤ)

end

end A393435.P18191163363607045556

namespace A393435

/-- `(-1)^A233931(n)` -/
def P18191163363607045556.Spec : Prop :=
  ∀ n, P18191163363607045556.a n = (A393435 n : ℚ)

end A393435

/-! ## A393435.P7747937494766439453

`(-1)^∑[A382732(n)]`
-/

namespace A393435.P7747937494766439453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382732 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A393435.P7747937494766439453

namespace A393435

/-- `(-1)^∑[A382732(n)]` -/
def P7747937494766439453.Spec : Prop :=
  ∀ n, P7747937494766439453.a n = (A393435 n : ℚ)

end A393435

/-! ## A393435.P15329304631473620559

`1-and(2, A005811(n))`
-/

namespace A393435.P15329304631473620559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A005811 n)

end

end A393435.P15329304631473620559

namespace A393435

/-- `1-and(2, A005811(n))` -/
def P15329304631473620559.Spec : Prop :=
  ∀ n, P15329304631473620559.a n = A393435 n

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

/-! ## A393437.P10750623219910689617

`∏[A390314(1+n)]`
-/

namespace A393437.P10750623219910689617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390314 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393437.P10750623219910689617

/-! ## A393437.P8671138311832505736

`∏[A127835(∑[A127835(2*(n+1))])]`
-/

namespace A393437.P8671138311832505736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127835 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127835 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A393437.P8671138311832505736

/-!
# A393440: Index of 2*prime(n) in A390314, or -1 if 2*prime(n) does not appear.

The programs for A393440, there is no canonical definition to state claims against.
-/

/-! ## A393440.P15134193172813496025

`A393439(A000040(1+n))`
-/

namespace A393440.P15134193172813496025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393439 (A000040 (1 + n)).toNat

end

end A393440.P15134193172813496025

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

The programs for A393441, the canonical program `A393441.P3618720708825274761` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393441 has offset 0).

The definition of A393441 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4-n^3+2*n²-2*n+2)/2` (program `A393441.P818760732443974118`, by `A393441.P818760732443974118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393441.P3867045432451126147

`ogf((1-4x+12x^2-x^3+4x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A393441.P3867045432451126147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 12, -1, 4] [1, -5, 10, -10, 5, -1] n

end

end A393441.P3867045432451126147

namespace A393441

/-- `ogf((1-4x+12x^2-x^3+4x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P3867045432451126147.Spec : Prop :=
  ∀ n, P3867045432451126147.a n = A393441 n

end A393441

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
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A393441

/-! ## A393441.P3618720708825274761

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=34, a(4)=109`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393441

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3618720708825274761.Spec : Prop :=
  ∀ n, P3618720708825274761.a n = A393441 n

theorem P3618720708825274761.correct : P3618720708825274761.Spec := by
  intro n
  simp only [A393441]

end A393441

/-! ## A393441.P4644032158708373160

`C(n, 2)*(n²+2)+1`
-/

namespace A393441.P4644032158708373160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 * (n ^ 2 + 2) + 1

end

end A393441.P4644032158708373160

namespace A393441

/-- `C(n, 2)*(n²+2)+1` -/
def P4644032158708373160.Spec : Prop :=
  ∀ n, (P4644032158708373160.a n : ℤ) = A393441 n

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

/-!
# A393443: Array read by downward antidiagonals: T(n,k) (n>=0, k>=0) = 1+k+2*n*k+k*(k-1)/2+n*(n-1).

The programs for A393443, the canonical program `A393443.P16093483747421340757` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393443 has offset 0).

The definition of A393443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393443.P16093483747421340757

`A162609(n+1)+A049780(n)`

The canonical program, it is in `Seq.B001.C014`.
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

The programs for A393448, the canonical program `A393448.P18083745715759526505` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393448 has offset 0).

The definition of A393448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+1+floor(n²/4)` (program `A393448.P18083745715759526505`, by `A393448.P18083745715759526505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393448.P13211127413201569604

`ogf((1+6x^2+6x^3)/(1-2x+2x^3-x^4))`
-/

namespace A393448.P13211127413201569604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 6, 6] [1, -2, 0, 2, -1] n

end

end A393448.P13211127413201569604

namespace A393448

/-- `ogf((1+6x^2+6x^3)/(1-2x+2x^3-x^4))` -/
def P13211127413201569604.Spec : Prop :=
  ∀ n, P13211127413201569604.a n = A393448 n

end A393448

/-! ## A393448.P18083745715759526505

`3*n²-2*n+1+floor(n²/4)`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A393448.P3294754599285596572

`abs(A397182(n)-(n-Δ[-C(n, 3)]))`
-/

namespace A393448.P3294754599285596572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A397182 n - ((n : ℤ) - (f1 (n + 1) - f1 n))|

end

end A393448.P3294754599285596572

namespace A393448

/-- `abs(A397182(n)-(n-Δ[-C(n, 3)]))` -/
def P3294754599285596572.Spec : Prop :=
  ∀ n, P3294754599285596572.a n = A393448 n

end A393448

/-! ## A393448.P17852177864192891618

`abs(A000217(n)-(C(3*n, 2)+1-ceil(3*n²/4)))`
-/

namespace A393448.P17852177864192891618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n - ((Nat.choose (3 * n) 2 + 1 : ℤ) - ⌈(3 * n ^ 2 : ℚ) / 4⌉)|

end

end A393448.P17852177864192891618

namespace A393448

/-- `abs(A000217(n)-(C(3*n, 2)+1-ceil(3*n²/4)))` -/
def P17852177864192891618.Spec : Prop :=
  ∀ n, P17852177864192891618.a n = A393448 n

end A393448

/-! ## A393448.P17869546980392428834

`abs(A054556(n+1)-A001859(n))`
-/

namespace A393448.P17869546980392428834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054556 (n + 1) - A001859 n|

end

end A393448.P17869546980392428834

namespace A393448

/-- `abs(A054556(n+1)-A001859(n))` -/
def P17869546980392428834.Spec : Prop :=
  ∀ n, P17869546980392428834.a n = A393448 n

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

/-! ## A393449.P9347254644163438401

`A392178(n+1)-record[A395355(n)]`
-/

namespace A393449.P9347254644163438401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393449.P9347254644163438401

/-! ## A393449.P593337674975369009

`A392178(n+1)-A395355(2*n)`
-/

namespace A393449.P593337674975369009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1) - A395355 (2 * n)

end

end A393449.P593337674975369009

/-! ## A393449.P4584837283160440779

`A392178(n+1)-record[A395357(n)]`
-/

namespace A393449.P4584837283160440779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393449.P4584837283160440779

/-!
# A393450: Consider the square spiral with its cells numbered starting at 0, as in A308884 and A274641. Two players, Black and Red, take turns. When it is Black's turn, he places a king at the smallest unoccupied cell not attacked by an existing Red king, and when it is Red's turn, she places a king at the smallest unoccupied cell not attacked by an existing Black king. Sequence lists squares occupied by a Black king.

The programs for A393450, the canonical program `A393450.P12893032744760769802` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393450 has offset 0).

The definition of A393450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393450.P12893032744760769802

`lt[A004741(n+1)², n+2]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A393450

/-- `lt[A004741(n+1)², n+2]` -/
def P12893032744760769802.Spec : Prop :=
  ∀ n, (P12893032744760769802.a n : ℤ) = A393450 n

theorem P12893032744760769802.correct : P12893032744760769802.Spec := by
  intro n
  simp only [A393450]

end A393450

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

namespace A393450

/-- `A004526(lt[A319929(n+1), 2])` -/
def P32858631304171107.Spec : Prop :=
  ∀ n, P32858631304171107.a n = A393450 n

end A393450

/-! ## A393450.P586309776524667707

`A004526(eq[A000007(n), A051159(n)])`
-/

namespace A393450.P586309776524667707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A393450.P586309776524667707

namespace A393450

/-- `A004526(eq[A000007(n), A051159(n)])` -/
def P586309776524667707.Spec : Prop :=
  ∀ n, P586309776524667707.a n = A393450 n

end A393450

/-! ## A393450.P17524728243622181189

`lt[A163770(2*n), A060117(A010371(n))]`
-/

namespace A393450.P17524728243622181189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163770 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (A010371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393450.P17524728243622181189

namespace A393450

/-- `lt[A163770(2*n), A060117(A010371(n))]` -/
def P17524728243622181189.Spec : Prop :=
  ∀ n, (P17524728243622181189.a n : ℤ) = A393450 n

end A393450

/-! ## A393450.P6385452393487097174

`lt[A163770(2*n), sqrt(A060117(3*n+4))]`
-/

namespace A393450.P6385452393487097174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163770 (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A060117 (3 * n + 4) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A393450.P6385452393487097174

namespace A393450

/-- `lt[A163770(2*n), sqrt(A060117(3*n+4))]` -/
def P6385452393487097174.Spec : Prop :=
  ∀ n, (P6385452393487097174.a n : ℤ) = A393450 n

end A393450

/-! ## A393450.P6479547514058667327

`lt[n, 2-A008297(2*n+1)]`
-/

namespace A393450.P6479547514058667327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008297 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A393450.P6479547514058667327

namespace A393450

/-- `lt[n, 2-A008297(2*n+1)]` -/
def P6479547514058667327.Spec : Prop :=
  ∀ n, (P6479547514058667327.a n : ℤ) = A393450 n

end A393450

/-! ## A393450.P15289266021458955277

`lt[A163770(2*n), A060117(A206437(n+1))]`
-/

namespace A393450.P15289266021458955277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163770 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (A206437 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393450.P15289266021458955277

namespace A393450

/-- `lt[A163770(2*n), A060117(A206437(n+1))]` -/
def P15289266021458955277.Spec : Prop :=
  ∀ n, (P15289266021458955277.a n : ℤ) = A393450 n

end A393450

/-! ## A393450.P8064190035707815083

`lt[A163770(2*n), A080278(A279429(n+1))]`
-/

namespace A393450.P8064190035707815083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163770 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (A279429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393450.P8064190035707815083

namespace A393450

/-- `lt[A163770(2*n), A080278(A279429(n+1))]` -/
def P8064190035707815083.Spec : Prop :=
  ∀ n, (P8064190035707815083.a n : ℤ) = A393450 n

end A393450

/-!
# A393451: Consider the square spiral with its cells numbered starting at 0, as in A308884 and A274641. Two players, Black and Red, take turns. When it is Black's turn, he places a king at the smallest unoccupied cell not attacked by an existing Red king, and when it is Red's turn, she places a king at the smallest unoccupied cell not attacked by an existing Black king. Sequence lists squares occupied by a Red king.

The programs for A393451, the canonical program `A393451.P12170566215769465484` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393451 has offset 0).

The definition of A393451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393451.P12170566215769465484

`lt[A182850(2*n+5), A112555(2*n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A393451

/-- `lt[A182850(2*n+5), A112555(2*n)]` -/
def P12170566215769465484.Spec : Prop :=
  ∀ n, (P12170566215769465484.a n : ℤ) = A393451 n

theorem P12170566215769465484.correct : P12170566215769465484.Spec := by
  intro n
  simp only [A393451]

end A393451

/-! ## A393451.P11028193359122032033

`lt[A251092(A271665(n+1)), A112555(2*n)]`
-/

namespace A393451.P11028193359122032033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251092 (A271665 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112555 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393451.P11028193359122032033

namespace A393451

/-- `lt[A251092(A271665(n+1)), A112555(2*n)]` -/
def P11028193359122032033.Spec : Prop :=
  ∀ n, (P11028193359122032033.a n : ℤ) = A393451 n

end A393451

/-! ## A393451.P10002476792946843048

`lt[A271665(A000005(n+5)), A112555(2*n)]`
-/

namespace A393451.P10002476792946843048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271665 (A000005 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112555 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393451.P10002476792946843048

namespace A393451

/-- `lt[A271665(A000005(n+5)), A112555(2*n)]` -/
def P10002476792946843048.Spec : Prop :=
  ∀ n, (P10002476792946843048.a n : ℤ) = A393451 n

end A393451

/-! ## A393451.P4642846315657344654

`lt[A271665(A271665(2*n+5)), A112555(2*n)]`
-/

namespace A393451.P4642846315657344654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271665 (A271665 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112555 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393451.P4642846315657344654

namespace A393451

/-- `lt[A271665(A271665(2*n+5)), A112555(2*n)]` -/
def P4642846315657344654.Spec : Prop :=
  ∀ n, (P4642846315657344654.a n : ℤ) = A393451 n

end A393451

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

namespace A393451

/-- `lt[A095346(n+1), A112555(A004277(n))]` -/
def P6959235571737379439.Spec : Prop :=
  ∀ n, (P6959235571737379439.a n : ℤ) = A393451 n

end A393451

/-!
# A393452: First differences of A392177.

The programs for A393452, there is no canonical definition to state claims against.
-/

/-! ## A393452.P1846703686010144535

`Δ[A392177(1+n)]`
-/

namespace A393452.P1846703686010144535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392177 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393452.P1846703686010144535

/-! ## A393452.P10782332140918076743

`Δ[A392178(n+1)-A393449(n)]`
-/

namespace A393452.P10782332140918076743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1) - A393449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393452.P10782332140918076743

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

/-! ## A393452.P10205999223088141194

`Δ[abs(A395355(A005843(n)))]`
-/

namespace A393452.P10205999223088141194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395355 (A005843 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393452.P10205999223088141194

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

The programs for A393462, the canonical program `A393462.P11513158641186952572` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393462 has offset 0).

The definition of A393462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393462.P11513158641186952572

`n*(1+(-1)^n+12*n²)/2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393462

/-- `n*(1+(-1)^n+12*n²)/2` -/
def P11513158641186952572.Spec : Prop :=
  ∀ n, P11513158641186952572.a n = (A393462 n : ℚ)

end A393462

/-! ## A393462.P14357271521486875665

`ogf((6x+38x^2+56x^3+38x^4+6x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A393462.P14357271521486875665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 38, 56, 38, 6] [1, -2, -1, 4, -1, -2, 1] n

end

end A393462.P14357271521486875665

namespace A393462

/-- `ogf((6x+38x^2+56x^3+38x^4+6x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P14357271521486875665.Spec : Prop :=
  ∀ n, P14357271521486875665.a n = A393462 n

end A393462

/-! ## A393462.P6602505098064243790

`n/2*A110907(n)`
-/

namespace A393462.P6602505098064243790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A110907 n : ℚ)

end

end A393462.P6602505098064243790

namespace A393462

/-- `n/2*A110907(n)` -/
def P6602505098064243790.Spec : Prop :=
  ∀ n, P6602505098064243790.a n = (A393462 n : ℚ)

end A393462

/-! ## A393462.P10580734965386368009

`n*A005897(n)-lcm(2, n)`
-/

namespace A393462.P10580734965386368009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005897 n - (Nat.lcm 2 n : ℤ)

end

end A393462.P10580734965386368009

namespace A393462

/-- `n*A005897(n)-lcm(2, n)` -/
def P10580734965386368009.Spec : Prop :=
  ∀ n, P10580734965386368009.a n = A393462 n

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

The programs for A393464, the canonical program `A393464.P6727666420595507354` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393464 has offset 1).

The definition of A393464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393464.P5498253927605175174

`ogf((4+4x+8x^2-8x^3)/(1-4x^2+4x^4))`
-/

namespace A393464.P5498253927605175174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 8, -8] [1, 0, -4, 0, 4] n

end

end A393464.P5498253927605175174

namespace A393464

/-- `ogf((4+4x+8x^2-8x^3)/(1-4x^2+4x^4))` -/
def P5498253927605175174.Spec : Prop :=
  ∀ n, P5498253927605175174.a n = A393464 (n + 1)

end A393464

/-! ## A393464.P6727666420595507354

`4*a(n-2)-4*a(n-4)` with `a(0)=4, a(1)=4, a(2)=24, a(3)=8`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393464

/-- `4*a(n-2)-4*a(n-4)` -/
def P6727666420595507354.Spec : Prop :=
  ∀ n, P6727666420595507354.a n = A393464 (n + 1)

theorem P6727666420595507354.correct : P6727666420595507354.Spec := by
  intro n
  simp only [A393464, Nat.add_sub_cancel]

end A393464

/-! ## A393464.P16770051938269555582

`lcm(Δ[A266723(n)], A060546(n+3))`
-/

namespace A393464.P16770051938269555582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A060546 (n + 3))

end

end A393464.P16770051938269555582

namespace A393464

/-- `lcm(Δ[A266723(n)], A060546(n+3))` -/
def P16770051938269555582.Spec : Prop :=
  ∀ n, (P16770051938269555582.a n : ℤ) = A393464 (n + 1)

end A393464

/-! ## A393464.P7849711811736515755

`lcm(A016116(n+4), A093178(n+1))`
-/

namespace A393464.P7849711811736515755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016116 (n + 4)) (A093178 (n + 1))

end

end A393464.P7849711811736515755

namespace A393464

/-- `lcm(A016116(n+4), A093178(n+1))` -/
def P7849711811736515755.Spec : Prop :=
  ∀ n, (P7849711811736515755.a n : ℤ) = A393464 (n + 1)

end A393464

/-!
# A393467: Number of maximum irredundant sets in the n-necklace graph.

The programs for A393467, the canonical program `A393467.P17519665630155933077` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393467 has offset 0).

The definition of A393467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393467.P17519665630155933077

`ogf((6+4x-8x^2+67x^3-32x^4+148x^5+32x^6+204x^7+32x^8)/(1-2x^2-8x^4+16x^6+16x^8-32x^10))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393467

/-- `ogf((6+4x-8x^2+67x^3-32x^4+148x^5+32x^6+204x^7+32x^8)/(1-2x^2-8x^4+16x^6+16x^8-32x^10))` -/
def P17519665630155933077.Spec : Prop :=
  ∀ n, P17519665630155933077.a n = A393467 n

theorem P17519665630155933077.correct : P17519665630155933077.Spec := by
  intro n
  simp only [A393467]

end A393467

/-!
# A393468: Number of minimal dominating sets in the n-necklace graph.

The programs for A393468, the canonical program `A393468.P14913903294309606379` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393468 has offset 0).

The definition of A393468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393468.P14913903294309606379

`ogf((6-20x+12x^2-33x^3+12x^4-16x^5)/(1-4x+3x^2-11x^3+6x^4-16x^5+8x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393468

/-- `ogf((6-20x+12x^2-33x^3+12x^4-16x^5)/(1-4x+3x^2-11x^3+6x^4-16x^5+8x^6))` -/
def P14913903294309606379.Spec : Prop :=
  ∀ n, P14913903294309606379.a n = A393468 n

theorem P14913903294309606379.correct : P14913903294309606379.Spec := by
  intro n
  simp only [A393468]

end A393468

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

The programs for A393478, the canonical program `A393478.P11225261868587834319` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393478 has offset 1).

The definition of A393478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393478.P11225261868587834319

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=54, a(1)=81, a(2)=138, a(3)=247, a(4)=462`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A393483.P913804468337043567

`A322744(2*n+5)^A001221(A260832(n))`
-/

namespace A393483.P913804468337043567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322744 (2 * n + 5) : ℚ) ^ (A001221 (A260832 n).toNat : ℤ)

end

end A393483.P913804468337043567

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

The programs for A393491, the canonical program `A393491.P7429229746465201342` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393491 has offset 1).

The definition of A393491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393491.P7429229746465201342

`∏{e}[n+1, round(#/3)]`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A393491.P16722673677410232497

`A370256((n+1)*A003557(n+1))`
-/

namespace A393491.P16722673677410232497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370256 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A393491.P16722673677410232497

namespace A393491

/-- `A370256((n+1)*A003557(n+1))` -/
def P16722673677410232497.Spec : Prop :=
  ∀ n, P16722673677410232497.a n = A393491 (n + 1)

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

/-! ## A393491.P483104395921721898

`A370256(A003557((n+1)²))`
-/

namespace A393491.P483104395921721898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370256 (A003557 ((n + 1) ^ 2)).toNat

end

end A393491.P483104395921721898

namespace A393491

/-- `A370256(A003557((n+1)²))` -/
def P483104395921721898.Spec : Prop :=
  ∀ n, P483104395921721898.a n = A393491 (n + 1)

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

/-!
# A393492: S-practical numbers: numbers m such that every number 1 <= k <= Sum_{d|m} s(d) = A211779(m) is a subsum of the multiset {s(d) : d|m}, where s is the sum of aliquot divisors function (A001065).

The programs for A393492, there is no canonical definition to state claims against.
-/

/-! ## A393492.P11318362397737237160

`∪[A008578(n+1), A330917(A247916(3*n+4))]`
-/

namespace A393492.P11318362397737237160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330917 (A247916 (3 * n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393492.P11318362397737237160

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

/-! ## A393492.P16651164529262145577

`∪[A000040(n+1), A399982(8^n)]`
-/

namespace A393492.P16651164529262145577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399982 (8 ^ n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393492.P16651164529262145577

/-!
# A393494: Starts of runs of 3 consecutive integers that are all s-practical numbers (A393492).

The programs for A393494, there is no canonical definition to state claims against.
-/

/-! ## A393494.P13614999050410105828

`∩[A023443(A393493(n+1)), A393493(n+1)]`
-/

namespace A393494.P13614999050410105828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A393493 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393494.P13614999050410105828

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

The programs for A393496, the canonical program `A393496.P1782685945993566905` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393496 has offset 1).

The definition of A393496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393496.P1782685945993566905

`gcd(A174344(n+1), A274923(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A393496

/-- `gcd(A174344(n+1), A274923(n+1))` -/
def P1782685945993566905.Spec : Prop :=
  ∀ n, (P1782685945993566905.a n : ℤ) = A393496 (n + 1)

theorem P1782685945993566905.correct : P1782685945993566905.Spec := by
  intro n
  simp only [A393496, Nat.add_sub_cancel]

end A393496

/-! ## A393496.P12611105695328082262

`gcd(n, floor((sqrt(n)+1)/2))`
-/

namespace A393496.P12611105695328082262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊(Real.sqrt (n : ℝ) + 1) / 2⌋

end

end A393496.P12611105695328082262

namespace A393496

/-- `gcd(n, floor((sqrt(n)+1)/2))` -/
def P12611105695328082262.Spec : Prop :=
  ∀ n, (P12611105695328082262.a n : ℤ) = A393496 (n + 1)

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

