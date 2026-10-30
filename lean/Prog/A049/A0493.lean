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
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A049305: Numbers k such that k is a substring of 7^k.

The programs for A049305, there is no canonical definition to state claims against.
-/

/-! ## A049305.P15398433792482213581

`record[A350634(A046897(n+1)+2)]`
-/

namespace A049305.P15398433792482213581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350634 (A046897 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049305.P15398433792482213581

/-! ## A049305.P11355919580845813941

`A120653(A056525(n+1))+A120639(n+1)`
-/

namespace A049305.P11355919580845813941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 (A056525 (n + 1)).toNat + A120639 (n + 1)

end

end A049305.P11355919580845813941

/-!
# A049306: Numbers k such that k is a substring of 8^k.

The programs for A049306, there is no canonical definition to state claims against.
-/

/-! ## A049306.P8185862959754346398

`A353334(A203579(n))+A122194(n+1)`
-/

namespace A049306.P8185862959754346398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353334 (A203579 n).toNat + A122194 (n + 1)

end

end A049306.P8185862959754346398

/-! ## A049306.P3349095182671593220

`A259625(n+5)+A185234(A259649(3*n+2))`
-/

namespace A049306.P3349095182671593220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (n + 5) + A185234 (A259649 (3 * n + 2)).toNat

end

end A049306.P3349095182671593220

/-!
# A049308: Sextuple factorial numbers: Product_{k=0..n-1} (6*k+4).

The programs for A049308, the canonical program `A049308.P1370822452239570835` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049308 has offset 0).

The definition of A049308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049308.P1370822452239570835

`2*(3*n-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049308

/-- `2*(3*n-1)*a(n-1)` -/
def P1370822452239570835.Spec : Prop :=
  ∀ n, P1370822452239570835.a n = A049308 n

theorem P1370822452239570835.correct : P1370822452239570835.Spec := by
  intro n
  simp only [A049308]

end A049308

/-! ## A049308.P11754998812739202019

`2^n*A008544(n)`
-/

namespace A049308.P11754998812739202019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008544 n

end

end A049308.P11754998812739202019

namespace A049308

/-- `2^n*A008544(n)` -/
def P11754998812739202019.Spec : Prop :=
  ∀ n, P11754998812739202019.a n = A049308 n

end A049308

/-! ## A049308.P5765484993792679594

`∏[floor(abs(6*n-ϕ))]`
-/

namespace A049308.P5765484993792679594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(6 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049308.P5765484993792679594

namespace A049308

/-- `∏[floor(abs(6*n-ϕ))]` -/
def P5765484993792679594.Spec : Prop :=
  ∀ n, P5765484993792679594.a n = A049308 n

end A049308

/-! ## A049308.P2924340260201112308

`abs(∏[a(n-1)+6])` with `a(0)=1, a(1)=4`
-/

namespace A049308.P2924340260201112308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049308.P2924340260201112308

namespace A049308

/-- `abs(∏[a(n-1)+6])` -/
def P2924340260201112308.Spec : Prop :=
  ∀ n, (P2924340260201112308.a n : ℤ) = A049308 n

end A049308

/-! ## A049308.P10740233511497543728

`floor(∏[a(n-1)+6])` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A049308.P10740233511497543728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049308.P10740233511497543728

namespace A049308

/-- `floor(∏[a(n-1)+6])` -/
def P10740233511497543728.Spec : Prop :=
  ∀ n, (P10740233511497543728.a n : ℤ) = A049308 n

end A049308

/-!
# A049309: Number of nonisomorphic self-complementary circulant digraphs (Cayley digraphs for the cyclic group) of order 2n-1.

The programs for A049309, there is no canonical definition to state claims against.
-/

/-! ## A049309.P12777986362016004943

`2*A054930(2*n+1)-A049297(2*n+1)`
-/

namespace A049309.P12777986362016004943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054930 (2 * n + 1) - A049297 (2 * n + 1)

end

end A049309.P12777986362016004943

/-!
# A049310: Triangle of coefficients of Chebyshev's S(n,x) := U(n,x/2) polynomials (exponents in increasing order).

The programs for A049310, the canonical program `A049310.P1662014320520452531` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049310 has offset 0).

The definition of A049310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049310.P14581935837696175872

`T(n-1,k-1)-T(n-2,k)` with `a(0)=1`
-/

namespace A049310.P14581935837696175872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A049310.P14581935837696175872

namespace A049310

/-- `T(n-1,k-1)-T(n-2,k)` -/
def P14581935837696175872.Spec : Prop :=
  ∀ n, P14581935837696175872.a n = A049310 n

end A049310

/-! ## A049310.P9147602489943603430

`T(n-1,k-1)-T(row(n)-2, col(n))` with `a(0)=1`
-/

namespace A049310.P9147602489943603430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) (SequenceMachineLib.triCol n : ℤ)

end

end A049310.P9147602489943603430

namespace A049310

/-- `T(n-1,k-1)-T(row(n)-2, col(n))` -/
def P9147602489943603430.Spec : Prop :=
  ∀ n, P9147602489943603430.a n = A049310 n

end A049310

/-! ## A049310.P11844995301138560284

`A112552(n)+T(n-1,k+1)` with `a(0)=1`
-/

namespace A049310.P11844995301138560284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112552 n + SequenceMachineLib.triUpRight a n

end

end A049310.P11844995301138560284

namespace A049310

/-- `A112552(n)+T(n-1,k+1)` -/
def P11844995301138560284.Spec : Prop :=
  ∀ n, P11844995301138560284.a n = A049310 n

end A049310

/-! ## A049310.P17884154361591771970

`A130777(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A049310.P17884154361591771970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130777 n + SequenceMachineLib.triUp a n

end

end A049310.P17884154361591771970

namespace A049310

/-- `A130777(n)+T(n-1,k)` -/
def P17884154361591771970.Spec : Prop :=
  ∀ n, P17884154361591771970.a n = A049310 n

end A049310

/-! ## A049310.P14631214708926440325

`A127672(n)+T(n-2,k)` with `a(0)=1`
-/

namespace A049310.P14631214708926440325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127672 n + SequenceMachineLib.triUp2 a n

end

end A049310.P14631214708926440325

namespace A049310

/-- `A127672(n)+T(n-2,k)` -/
def P14631214708926440325.Spec : Prop :=
  ∀ n, P14631214708926440325.a n = A049310 n

end A049310

/-! ## A049310.P1662014320520452531

`A117568(n)*A168561(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049310

/-- `A117568(n)*A168561(n)` -/
def P1662014320520452531.Spec : Prop :=
  ∀ n, P1662014320520452531.a n = A049310 n

theorem P1662014320520452531.correct : P1662014320520452531.Spec := by
  intro n
  simp only [A049310]

end A049310

/-! ## A049310.P3845805004027509723

`A046854(n)*A369736(n)`
-/

namespace A049310.P3845805004027509723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A369736 n

end

end A049310.P3845805004027509723

namespace A049310

/-- `A046854(n)*A369736(n)` -/
def P3845805004027509723.Spec : Prop :=
  ∀ n, P3845805004027509723.a n = A049310 n

end A049310

/-! ## A049310.P5665393736173887664

`A134513(n)*A369736(n)`
-/

namespace A049310.P5665393736173887664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134513 n * A369736 n

end

end A049310.P5665393736173887664

namespace A049310

/-- `A134513(n)*A369736(n)` -/
def P5665393736173887664.Spec : Prop :=
  ∀ n, P5665393736173887664.a n = A049310 n

end A049310

/-! ## A049310.P4146263326018864938

`A168561(n)*A369736(n)`
-/

namespace A049310.P4146263326018864938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n * A369736 n

end

end A049310.P4146263326018864938

namespace A049310

/-- `A168561(n)*A369736(n)` -/
def P4146263326018864938.Spec : Prop :=
  ∀ n, P4146263326018864938.a n = A049310 n

end A049310

/-! ## A049310.P3464295917887592618

`A053117(n)/A059268(n)`
-/

namespace A049310.P3464295917887592618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053117 n : ℚ) / (A059268 n : ℚ)

end

end A049310.P3464295917887592618

namespace A049310

/-- `A053117(n)/A059268(n)` -/
def P3464295917887592618.Spec : Prop :=
  ∀ n, P3464295917887592618.a n = (A049310 n : ℚ)

end A049310

/-! ## A049310.P15186976674827348780

`A369736(n)²*A130777(n)`
-/

namespace A049310.P15186976674827348780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369736 n ^ 2 * A130777 n

end

end A049310.P15186976674827348780

namespace A049310

/-- `A369736(n)²*A130777(n)` -/
def P15186976674827348780.Spec : Prop :=
  ∀ n, P15186976674827348780.a n = A049310 n

end A049310

/-! ## A049310.P15305962421994535958

`A168561(n)²/A130777(n)`
-/

namespace A049310.P15305962421994535958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168561 n ^ 2 : ℚ) / (A130777 n : ℚ)

end

end A049310.P15305962421994535958

namespace A049310

/-- `A168561(n)²/A130777(n)` -/
def P15305962421994535958.Spec : Prop :=
  ∀ n, P15305962421994535958.a n = (A049310 n : ℚ)

end A049310

/-! ## A049310.P17864921236746218528

`A128174(n+1)*A130777(n)`
-/

namespace A049310.P17864921236746218528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A130777 n

end

end A049310.P17864921236746218528

namespace A049310

/-- `A128174(n+1)*A130777(n)` -/
def P17864921236746218528.Spec : Prop :=
  ∀ n, P17864921236746218528.a n = A049310 n

end A049310

/-! ## A049310.P14014516502984102047

`A130194(n+1)*A168561(n)`
-/

namespace A049310.P14014516502984102047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130194 (n + 1) * A168561 n

end

end A049310.P14014516502984102047

namespace A049310

/-- `A130194(n+1)*A168561(n)` -/
def P14014516502984102047.Spec : Prop :=
  ∀ n, P14014516502984102047.a n = A049310 n

end A049310

/-! ## A049310.P11141135908366021934

`A134505(n+1)*A369736(n)`
-/

namespace A049310.P11141135908366021934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134505 (n + 1) * A369736 n

end

end A049310.P11141135908366021934

namespace A049310

/-- `A134505(n+1)*A369736(n)` -/
def P11141135908366021934.Spec : Prop :=
  ∀ n, P11141135908366021934.a n = A049310 n

end A049310

/-! ## A049310.P14382009914176997907

`2*A112552(n)-A117179(n)`
-/

namespace A049310.P14382009914176997907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112552 n - A117179 n

end

end A049310.P14382009914176997907

namespace A049310

/-- `2*A112552(n)-A117179(n)` -/
def P14382009914176997907.Spec : Prop :=
  ∀ n, P14382009914176997907.a n = A049310 n

end A049310

/-! ## A049310.P5547164712426404499

`(2-A131406(n+1))*A130777(n)`
-/

namespace A049310.P5547164712426404499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A131406 (n + 1)) * A130777 n

end

end A049310.P5547164712426404499

namespace A049310

/-- `(2-A131406(n+1))*A130777(n)` -/
def P5547164712426404499.Spec : Prop :=
  ∀ n, P5547164712426404499.a n = A049310 n

end A049310

/-! ## A049310.P5535305102222757512

`A053117(n)/A131577(A002262(n)+1)`
-/

namespace A049310.P5535305102222757512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053117 n : ℚ) / (A131577 (A002262 n + 1).toNat : ℚ)

end

end A049310.P5535305102222757512

namespace A049310

/-- `A053117(n)/A131577(A002262(n)+1)` -/
def P5535305102222757512.Spec : Prop :=
  ∀ n, P5535305102222757512.a n = (A049310 n : ℚ)

end A049310

/-! ## A049310.P8513489468172245213

`(2-A000034(A025581(n)))*A130777(n)`
-/

namespace A049310.P8513489468172245213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000034 (A025581 n).toNat) * A130777 n

end

end A049310.P8513489468172245213

namespace A049310

/-- `(2-A000034(A025581(n)))*A130777(n)` -/
def P8513489468172245213.Spec : Prop :=
  ∀ n, P8513489468172245213.a n = A049310 n

end A049310

/-! ## A049310.P10119277426670970980

`(2-A000034(A051162(n)))*A130777(n)`
-/

namespace A049310.P10119277426670970980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000034 (A051162 n).toNat) * A130777 n

end

end A049310.P10119277426670970980

namespace A049310

/-- `(2-A000034(A051162(n)))*A130777(n)` -/
def P10119277426670970980.Spec : Prop :=
  ∀ n, P10119277426670970980.a n = A049310 n

end A049310

/-!
# A049311: Number of (0,1) matrices with n ones and no zero rows or columns, up to row and column permutations.

The programs for A049311, there is no canonical definition to state claims against.
-/

/-! ## A049311.P12578998354138368183

`A320801(∑[n+2])`
-/

namespace A049311.P12578998354138368183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320801 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049311.P12578998354138368183

/-! ## A049311.P574274881465760693

`record[A320801(A001972(n)-1)]`
-/

namespace A049311.P574274881465760693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320801 (A001972 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049311.P574274881465760693

/-! ## A049311.P1727995381037549576

`record[A320801(n)/A119307(n)]`
-/

namespace A049311.P1727995381037549576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320801 n : ℚ) / (A119307 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049311.P1727995381037549576

/-! ## A049311.P753649378068729005

`record[A320801(n)/A119308(n)]`
-/

namespace A049311.P753649378068729005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320801 n : ℚ) / (A119308 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049311.P753649378068729005

/-! ## A049311.P4124056749777252721

`record[A320801(gcd(n, A014473(n)))]`
-/

namespace A049311.P4124056749777252721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320801 (Int.gcd (n : ℤ) (A014473 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049311.P4124056749777252721

/-! ## A049311.P5089732191787267196

`record[A320801(n+4)/A119329(n+3)]`
-/

namespace A049311.P5089732191787267196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320801 (n + 4) : ℚ) / (A119329 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049311.P5089732191787267196

/-!
# A049312: Number of graphs with a distinguished bipartite block, by number of vertices.

The programs for A049312, there is no canonical definition to state claims against.
-/

/-! ## A049312.P9949903627449632805

`A048194(n)+a(n-1)` with `a(0)=1`
-/

namespace A049312.P9949903627449632805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048194 n + a (n - 1)

end

end A049312.P9949903627449632805

/-! ## A049312.P1090341220251620161

`∑[A048194(A028310(n))]`
-/

namespace A049312.P1090341220251620161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048194 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049312.P1090341220251620161

/-! ## A049312.P11234538836876199985

`∑[A048194(A123108(2*n))]`
-/

namespace A049312.P11234538836876199985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048194 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049312.P11234538836876199985

/-! ## A049312.P2934662135447679704

`∑[A048194(gcd(n, A066393(n)))]`
-/

namespace A049312.P2934662135447679704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048194 (Int.gcd (n : ℤ) (A066393 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049312.P2934662135447679704

/-! ## A049312.P17880406543203453934

`∑[∑[A055192(A233583(n+1))]]-n`
-/

namespace A049312.P17880406543203453934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055192 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A049312.P17880406543203453934

/-!
# A049314: The number k(GL(n,q)) of conjugacy classes in GL(n,q), q=4.

The programs for A049314, there is no canonical definition to state claims against.
-/

/-! ## A049314.P11167160641672797111

`record[A319753(A052905(n))]`
-/

namespace A049314.P11167160641672797111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049314.P11167160641672797111

/-! ## A049314.P8409240395056978488

`A319753(A052905(n+2))`
-/

namespace A049314.P8409240395056978488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A052905 (n + 2)).toNat

end

end A049314.P8409240395056978488

/-! ## A049314.P1070717167455626062

`A319753(eq[4, A025581(n)])`
-/

namespace A049314.P1070717167455626062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049314.P1070717167455626062

/-! ## A049314.P10894544018845408499

`record[A319753(A055999(n)+1)]`
-/

namespace A049314.P10894544018845408499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049314.P10894544018845408499

/-! ## A049314.P8376709079229311872

`A319753(A055999(n+2)+1)`
-/

namespace A049314.P8376709079229311872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A055999 (n + 2) + 1).toNat

end

end A049314.P8376709079229311872

/-! ## A049314.P17214921775672736218

`A319753(A000217(n+5)-5)`
-/

namespace A049314.P17214921775672736218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A000217 (n + 5) - 5).toNat

end

end A049314.P17214921775672736218

/-! ## A049314.P7383189929167594787

`A319753(eq[5, A004736(n+1)])`
-/

namespace A049314.P7383189929167594787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049314.P7383189929167594787

/-! ## A049314.P13853874118989599211

`A319753(2*n+3+A000124(n+3))`
-/

namespace A049314.P13853874118989599211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 ((2 * n + 3 : ℤ) + A000124 (n + 3)).toNat

end

end A049314.P13853874118989599211

/-!
# A049315: The number k(GL(n,q)) of conjugacy classes in GL(n,q), q=5.

The programs for A049315, there is no canonical definition to state claims against.
-/

/-! ## A049315.P4694754909963078473

`record[A319753(A055999(n))]`
-/

namespace A049315.P4694754909963078473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049315.P4694754909963078473

/-! ## A049315.P14761149984704721922

`A319753(A055999(n+3))`
-/

namespace A049315.P14761149984704721922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A055999 (n + 3)).toNat

end

end A049315.P14761149984704721922

/-! ## A049315.P7576841698443726932

`A319753(eq[5, A025581(n)])`
-/

namespace A049315.P7576841698443726932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049315.P7576841698443726932

/-! ## A049315.P11785900619493557496

`A319753(eq[6, A193739(n)])`
-/

namespace A049315.P11785900619493557496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049315.P11785900619493557496

/-! ## A049315.P16508102888109221803

`record[A319753(A052905(n)-1)]`
-/

namespace A049315.P16508102888109221803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049315.P16508102888109221803

/-! ## A049315.P7614767970649933776

`record[A319753(A056000(n)-n)]`
-/

namespace A049315.P7614767970649933776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A056000 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049315.P7614767970649933776

/-! ## A049315.P9474296394621561100

`A319753(eq[6, A004736(n+1)])`
-/

namespace A049315.P9474296394621561100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049315.P9474296394621561100

/-! ## A049315.P4703622292642366401

`record[A319753(A005843(n)+A000096(n))]`
-/

namespace A049315.P4703622292642366401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A005843 n + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049315.P4703622292642366401

/-!
# A049316: The number k(GL(n,q)) of conjugacy classes in GL(n,q), q=7.

The programs for A049316, there is no canonical definition to state claims against.
-/

/-! ## A049316.P5322001268843093512

`A319753(A155212(n+4))`
-/

namespace A049316.P5322001268843093512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A155212 (n + 4)).toNat

end

end A049316.P5322001268843093512

/-! ## A049316.P1650905226643612308

`record[abs(A319753(A155212(n)))]`
-/

namespace A049316.P1650905226643612308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319753 (A155212 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049316.P1650905226643612308

/-! ## A049316.P11372344736860776958

`record[A319753(A056000(n+1)+2)]`
-/

namespace A049316.P11372344736860776958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A056000 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049316.P11372344736860776958

/-! ## A049316.P7870247347937545689

`record[A319753(A155212(A008619(n)))]`
-/

namespace A049316.P7870247347937545689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A155212 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049316.P7870247347937545689

/-! ## A049316.P538601823974021951

`record[A319753(A155212(A008620(n)))]`
-/

namespace A049316.P538601823974021951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A155212 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049316.P538601823974021951

/-! ## A049316.P13889291198281272071

`record[A319753(A155212(A028242(n)))]`
-/

namespace A049316.P13889291198281272071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A155212 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049316.P13889291198281272071

/-! ## A049316.P2195671067723713882

`record[A319753(A155212(A123108(n)))]`
-/

namespace A049316.P2195671067723713882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A155212 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049316.P2195671067723713882

/-! ## A049316.P1945184424160894475

`record[A319753(A155212(A126759(n)))]`
-/

namespace A049316.P1945184424160894475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A155212 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049316.P1945184424160894475

/-!
# A049317: Number of 3-dimensional integer direction vectors (a,b,c) towards grid points at squared integer distance 2n-1 with a >= b >= c >= 0.

The programs for A049317, there is no canonical definition to state claims against.
-/

/-! ## A049317.P14181585655665692052

`A105970(n+1)-A097266(n)`
-/

namespace A049317.P14181585655665692052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (n + 1) - A097266 n

end

end A049317.P14181585655665692052

/-! ## A049317.P17489814283813059466

`A105970(n+1)-A223730(Δ[n²]²)`
-/

namespace A049317.P17489814283813059466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (n + 1) - A223730 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A049317.P17489814283813059466

/-! ## A049317.P12111576249474350464

`A105970(n+1)-C(2, C(2, n²))*A223730((2*n+1)²)`
-/

namespace A049317.P12111576249474350464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (n + 1) - (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ) * A223730 ((2 * n + 1) ^ 2)

end

end A049317.P12111576249474350464

/-! ## A049317.P7048137144003752014

`A105970(n+1)-or(char[1], A223730(A157142(n)²))`
-/

namespace A049317.P7048137144003752014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (n + 1) - Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A223730 (A157142 n ^ 2).toNat)

end

end A049317.P7048137144003752014

/-! ## A049317.P12266932585092349620

`A105970(n+1)-A057427(n)*A223730((2*n+1)²)`
-/

namespace A049317.P12266932585092349620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (n + 1) - A057427 n * A223730 ((2 * n + 1) ^ 2)

end

end A049317.P12266932585092349620

/-! ## A049317.P61032748403591273

`A105970(n+1)-A007318(∑[n])*A223730((2*n+1)²)`
-/

namespace A049317.P61032748403591273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (n + 1) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A223730 ((2 * n + 1) ^ 2)

end

end A049317.P61032748403591273

/-! ## A049317.P1199969669383019943

`A105970(n+1)-ceil(n/A000041(n))*A223730((2*n+1)²)`
-/

namespace A049317.P1199969669383019943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (n + 1) - ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A223730 ((2 * n + 1) ^ 2)

end

end A049317.P1199969669383019943

/-! ## A049317.P4662389409051954450

`A105970(n+1)-(A223730((2*n+1)²)+A008683(4*(n+1)))`
-/

namespace A049317.P4662389409051954450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (n + 1) - (A223730 ((2 * n + 1) ^ 2) + A008683 (4 * (n + 1)))

end

end A049317.P4662389409051954450

/-!
# A049318: Number of 3-dimensional integer direction vectors (a,b,c) towards grid points at squared integer distance 2n-1 with a >= 0, b >= 0, c >= 0.

The programs for A049318, there is no canonical definition to state claims against.
-/

/-! ## A049318.P17058171114889903502

`A295848(Δ[n²]²)`
-/

namespace A049318.P17058171114889903502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295848 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A049318.P17058171114889903502

/-! ## A049318.P7308755050325600242

`and(-1, A295848((2*n+1)²))`
-/

namespace A049318.P7308755050325600242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A295848 ((2 * n + 1) ^ 2))

end

end A049318.P7308755050325600242

/-! ## A049318.P16240658595721113782

`lcm(3, A295848(A016754(n)))`
-/

namespace A049318.P16240658595721113782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A295848 (A016754 n).toNat)

end

end A049318.P16240658595721113782

/-! ## A049318.P11937944975843908889

`A295848((2*n+1)²)%A017378(n)`
-/

namespace A049318.P11937944975843908889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295848 ((2 * n + 1) ^ 2)) (A017378 n)

end

end A049318.P11937944975843908889

/-! ## A049318.P8108745957599770718

`A295848(A016754(n))%A049718(n)`
-/

namespace A049318.P8108745957599770718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295848 (A016754 n).toNat) (A049718 n)

end

end A049318.P8108745957599770718

/-! ## A049318.P15886776605550126981

`or(A000007(n), A295848(A016754(n)))`
-/

namespace A049318.P15886776605550126981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A295848 (A016754 n).toNat)

end

end A049318.P15886776605550126981

/-! ## A049318.P10693007447636769758

`A007318(∑[n])*A295848(A016754(n))`
-/

namespace A049318.P10693007447636769758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A295848 (A016754 n).toNat

end

end A049318.P10693007447636769758

/-! ## A049318.P14501942444922319880

`A295848(A016754(n))+A000007(n+1)`
-/

namespace A049318.P14501942444922319880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295848 (A016754 n).toNat + A000007 (n + 1)

end

end A049318.P14501942444922319880

/-!
# A049319: Number of 3-dimensional integer direction vectors (a,b,c) towards grid points at squared integer distance 2n-1.

The programs for A049319, the canonical program `A049319.P9182740163463165320` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049319 has offset 1).

The definition of A049319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049319.P1553288780971728583

`6*A060968(Δ[n²])`
-/

namespace A049319.P1553288780971728583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049319.P1553288780971728583

namespace A049319

/-- `6*A060968(Δ[n²])` -/
def P1553288780971728583.Spec : Prop :=
  ∀ n, P1553288780971728583.a n = A049319 (n + 1)

end A049319

/-! ## A049319.P7185575711430400406

`6*A086932(2*n+1)`
-/

namespace A049319.P7185575711430400406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A086932 (2 * n + 1)

end

end A049319.P7185575711430400406

namespace A049319

/-- `6*A086932(2*n+1)` -/
def P7185575711430400406.Spec : Prop :=
  ∀ n, P7185575711430400406.a n = A049319 (n + 1)

end A049319

/-! ## A049319.P13520476539855879685

`6*A204617(2*n+1)`
-/

namespace A049319.P13520476539855879685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A204617 (2 * n + 1)

end

end A049319.P13520476539855879685

namespace A049319

/-- `6*A204617(2*n+1)` -/
def P13520476539855879685.Spec : Prop :=
  ∀ n, P13520476539855879685.a n = A049319 (n + 1)

end A049319

/-! ## A049319.P9182740163463165320

`6*A395768(2*n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049319

/-- `6*A395768(2*n+1)` -/
def P9182740163463165320.Spec : Prop :=
  ∀ n, P9182740163463165320.a n = A049319 (n + 1)

theorem P9182740163463165320.correct : P9182740163463165320.Spec := by
  intro n
  simp only [A049319, Nat.add_sub_cancel]

end A049319

/-! ## A049319.P361094583703349685

`A008458(A060968(2*n+1))`
-/

namespace A049319.P361094583703349685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A060968 (2 * n + 1)).toNat

end

end A049319.P361094583703349685

namespace A049319

/-- `A008458(A060968(2*n+1))` -/
def P361094583703349685.Spec : Prop :=
  ∀ n, P361094583703349685.a n = A049319 (n + 1)

end A049319

/-! ## A049319.P17220538142185076945

`A008458(A086932(2*n+1))`
-/

namespace A049319.P17220538142185076945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A086932 (2 * n + 1)).toNat

end

end A049319.P17220538142185076945

namespace A049319

/-- `A008458(A086932(2*n+1))` -/
def P17220538142185076945.Spec : Prop :=
  ∀ n, P17220538142185076945.a n = A049319 (n + 1)

end A049319

/-! ## A049319.P9048184168393800235

`A008458(A204617(2*n+1))`
-/

namespace A049319.P9048184168393800235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A204617 (2 * n + 1)).toNat

end

end A049319.P9048184168393800235

namespace A049319

/-- `A008458(A204617(2*n+1))` -/
def P9048184168393800235.Spec : Prop :=
  ∀ n, P9048184168393800235.a n = A049319 (n + 1)

end A049319

/-! ## A049319.P7063297267175336894

`6*A278083(n+1)`
-/

namespace A049319.P7063297267175336894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A278083 (n + 1)

end

end A049319.P7063297267175336894

namespace A049319

/-- `6*A278083(n+1)` -/
def P7063297267175336894.Spec : Prop :=
  ∀ n, P7063297267175336894.a n = A049319 (n + 1)

end A049319

/-! ## A049319.P17588860195280827282

`A008458(A278083(n+1))`
-/

namespace A049319.P17588860195280827282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A278083 (n + 1)).toNat

end

end A049319.P17588860195280827282

namespace A049319

/-- `A008458(A278083(n+1))` -/
def P17588860195280827282.Spec : Prop :=
  ∀ n, P17588860195280827282.a n = A049319 (n + 1)

end A049319

/-! ## A049319.P5337319999271325278

`A074590(Δ[n²]²)`
-/

namespace A049319.P5337319999271325278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074590 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A049319.P5337319999271325278

namespace A049319

/-- `A074590(Δ[n²]²)` -/
def P5337319999271325278.Spec : Prop :=
  ∀ n, P5337319999271325278.a n = A049319 (n + 1)

end A049319

/-!
# A049320: Non-primitive Chacon sequence: fixed under 0->0010, 1->1.

The programs for A049320, the canonical program `A049320.P14632860694169210248` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049320 has offset 1).

The definition of A049320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049320.P2097980214866517433

`A049321(n)%2`
-/

namespace A049320.P2097980214866517433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049321 n) 2

end

end A049320.P2097980214866517433

namespace A049320

/-- `A049321(n)%2` -/
def P2097980214866517433.Spec : Prop :=
  ∀ n, P2097980214866517433.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P7751199136189352489

`log2(A133162(n+1))`
-/

namespace A049320.P7751199136189352489
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A133162 (n + 1) : ℝ)

end

end A049320.P7751199136189352489

namespace A049320

/-- `log2(A133162(n+1))` -/
def P7751199136189352489.Spec : Prop :=
  ∀ n, P7751199136189352489.a n = (A049320 (n + 1) : ℝ)

end A049320

/-! ## A049320.P4637461944556570887

`A026232(n+1)%3`
-/

namespace A049320.P4637461944556570887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026232 (n + 1)) 3

end

end A049320.P4637461944556570887

namespace A049320

/-- `A026232(n+1)%3` -/
def P4637461944556570887.Spec : Prop :=
  ∀ n, P4637461944556570887.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P15283324671843338893

`3%A026181(n+3)`
-/

namespace A049320.P15283324671843338893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A026181 (n + 3))

end

end A049320.P15283324671843338893

namespace A049320

/-- `3%A026181(n+3)` -/
def P15283324671843338893.Spec : Prop :=
  ∀ n, P15283324671843338893.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P7246461612317768535

`C(A049321(n+1), 2)`
-/

namespace A049320.P7246461612317768535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049321 (n + 1)).toNat 2

end

end A049320.P7246461612317768535

namespace A049320

/-- `C(A049321(n+1), 2)` -/
def P7246461612317768535.Spec : Prop :=
  ∀ n, (P7246461612317768535.a n : ℤ) = A049320 (n + 1)

end A049320

/-! ## A049320.P383161578195468519

`C(2, dr(A026231(n+1)))`
-/

namespace A049320.P383161578195468519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.digitalRoot (A026231 (n + 1)))

end

end A049320.P383161578195468519

namespace A049320

/-- `C(2, dr(A026231(n+1)))` -/
def P383161578195468519.Spec : Prop :=
  ∀ n, (P383161578195468519.a n : ℤ) = A049320 (n + 1)

end A049320

/-! ## A049320.P14632860694169210248

`char[A026179(n+2)+n]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049320

/-- `char[A026179(n+2)+n]` -/
def P14632860694169210248.Spec : Prop :=
  ∀ n, (P14632860694169210248.a n : ℤ) = A049320 (n + 1)

theorem P14632860694169210248.correct : P14632860694169210248.Spec := by
  intro n
  simp only [A049320, Nat.add_sub_cancel]

end A049320

/-! ## A049320.P5685953708259021421

`char[record[A026214(n+1)]+n]`
-/

namespace A049320.P5685953708259021421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A049320.P5685953708259021421

namespace A049320

/-- `char[record[A026214(n+1)]+n]` -/
def P5685953708259021421.Spec : Prop :=
  ∀ n, (P5685953708259021421.a n : ℤ) = A049320 (n + 1)

end A049320

/-! ## A049320.P9099153395935115725

`A049321(n-a(n-1))-a(n-1)` with `a(0)=0`
-/

namespace A049320.P9099153395935115725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A049321 ((n : ℤ) - a (n - 1)).toNat - a (n - 1)

end

end A049320.P9099153395935115725

namespace A049320

/-- `A049321(n-a(n-1))-a(n-1)` -/
def P9099153395935115725.Spec : Prop :=
  ∀ n, P9099153395935115725.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P13954344382651421910

`and(A000328(n), A049321(n))`
-/

namespace A049320.P13954344382651421910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A049321 n)

end

end A049320.P13954344382651421910

namespace A049320

/-- `and(A000328(n), A049321(n))` -/
def P13954344382651421910.Spec : Prop :=
  ∀ n, P13954344382651421910.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P3582265425343621854

`and(A001513(n), A049321(n))`
-/

namespace A049320.P3582265425343621854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A049321 n)

end

end A049320.P3582265425343621854

namespace A049320

/-- `and(A001513(n), A049321(n))` -/
def P3582265425343621854.Spec : Prop :=
  ∀ n, P3582265425343621854.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P803980831523313423

`and(A001535(n), A049321(n))`
-/

namespace A049320.P803980831523313423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A049321 n)

end

end A049320.P803980831523313423

namespace A049320

/-- `and(A001535(n), A049321(n))` -/
def P803980831523313423.Spec : Prop :=
  ∀ n, P803980831523313423.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P11088988511918592193

`and(A001546(n), A049321(n))`
-/

namespace A049320.P11088988511918592193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A049321 n)

end

end A049320.P11088988511918592193

namespace A049320

/-- `and(A001546(n), A049321(n))` -/
def P11088988511918592193.Spec : Prop :=
  ∀ n, P11088988511918592193.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P13088023239893689277

`and(A001844(n), A049321(n))`
-/

namespace A049320.P13088023239893689277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A049321 n)

end

end A049320.P13088023239893689277

namespace A049320

/-- `and(A001844(n), A049321(n))` -/
def P13088023239893689277.Spec : Prop :=
  ∀ n, P13088023239893689277.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P453460075946075743

`and(A001846(n), A049321(n))`
-/

namespace A049320.P453460075946075743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A049321 n)

end

end A049320.P453460075946075743

namespace A049320

/-- `and(A001846(n), A049321(n))` -/
def P453460075946075743.Spec : Prop :=
  ∀ n, P453460075946075743.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P14801253461980164633

`and(A001848(n), A049321(n))`
-/

namespace A049320.P14801253461980164633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A049321 n)

end

end A049320.P14801253461980164633

namespace A049320

/-- `and(A001848(n), A049321(n))` -/
def P14801253461980164633.Spec : Prop :=
  ∀ n, P14801253461980164633.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P6942457446474001895

`and(A003185(n), A049321(n))`
-/

namespace A049320.P6942457446474001895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A049321 n)

end

end A049320.P6942457446474001895

namespace A049320

/-- `and(A003185(n), A049321(n))` -/
def P6942457446474001895.Spec : Prop :=
  ∀ n, P6942457446474001895.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P9524315530055784770

`and(A004768(n), A049321(n))`
-/

namespace A049320.P9524315530055784770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A049321 n)

end

end A049320.P9524315530055784770

namespace A049320

/-- `and(A004768(n), A049321(n))` -/
def P9524315530055784770.Spec : Prop :=
  ∀ n, P9524315530055784770.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P2311834902474514625

`and(A007204(n), A049321(n))`
-/

namespace A049320.P2311834902474514625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A049321 n)

end

end A049320.P2311834902474514625

namespace A049320

/-- `and(A007204(n), A049321(n))` -/
def P2311834902474514625.Spec : Prop :=
  ∀ n, P2311834902474514625.a n = A049320 (n + 1)

end A049320

/-! ## A049320.P6623959475686276985

`and(A007664(n), A049321(n))`
-/

namespace A049320.P6623959475686276985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A049321 n)

end

end A049320.P6623959475686276985

namespace A049320

/-- `and(A007664(n), A049321(n))` -/
def P6623959475686276985.Spec : Prop :=
  ∀ n, P6623959475686276985.a n = A049320 (n + 1)

end A049320

/-!
# A049321: Primitive Chacon sequence: fixed under 0->0012, 1->12, 2->012.

The programs for A049321, the canonical program `A049321.P1209473950840220207` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049321 has offset 0).

The definition of A049321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049321.P1209473950840220207

`(A026232(n+1)%A026227(n+1))%3`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049321

/-- `(A026232(n+1)%A026227(n+1))%3` -/
def P1209473950840220207.Spec : Prop :=
  ∀ n, P1209473950840220207.a n = A049321 n

theorem P1209473950840220207.correct : P1209473950840220207.Spec := by
  intro n
  simp only [A049321]

end A049321

/-! ## A049321.P1586191633259691848

`A094053(Δ[A026180(n+1)])`
-/

namespace A049321.P1586191633259691848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (f1 (n + 1) - f1 n).toNat

end

end A049321.P1586191633259691848

namespace A049321

/-- `A094053(Δ[A026180(n+1)])` -/
def P1586191633259691848.Spec : Prop :=
  ∀ n, P1586191633259691848.a n = A049321 n

end A049321

/-! ## A049321.P10657269746885365809

`A271439(Δ[A026180(n+1)])`
-/

namespace A049321.P10657269746885365809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271439 (f1 (n + 1) - f1 n).toNat

end

end A049321.P10657269746885365809

namespace A049321

/-- `A271439(Δ[A026180(n+1)])` -/
def P10657269746885365809.Spec : Prop :=
  ∀ n, P10657269746885365809.a n = A049321 n

end A049321

/-! ## A049321.P12098623867483991743

`A188333(Δ[A026180(n+1)]+1)`
-/

namespace A049321.P12098623867483991743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (f1 (n + 1) - f1 n + 1).toNat

end

end A049321.P12098623867483991743

namespace A049321

/-- `A188333(Δ[A026180(n+1)]+1)` -/
def P12098623867483991743.Spec : Prop :=
  ∀ n, P12098623867483991743.a n = A049321 n

end A049321

/-! ## A049321.P2323088614349296389

`A004277(Δ[A026180(n+1)])%3`
-/

namespace A049321.P2323088614349296389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (f1 (n + 1) - f1 n).toNat) 3

end

end A049321.P2323088614349296389

namespace A049321

/-- `A004277(Δ[A026180(n+1)])%3` -/
def P2323088614349296389.Spec : Prop :=
  ∀ n, P2323088614349296389.a n = A049321 n

end A049321

/-! ## A049321.P14507905763700638972

`Δ[A026179(n+1)]%A122553(n)`
-/

namespace A049321.P14507905763700638972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A122553 n)

end

end A049321.P14507905763700638972

namespace A049321

/-- `Δ[A026179(n+1)]%A122553(n)` -/
def P14507905763700638972.Spec : Prop :=
  ∀ n, P14507905763700638972.a n = A049321 n

end A049321

/-! ## A049321.P16680373442481139921

`A009528(A000038(n)+Δ[A026179(n+1)])`
-/

namespace A049321.P16680373442481139921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009528 (A000038 n + (f1 (n + 1) - f1 n)).toNat

end

end A049321.P16680373442481139921

namespace A049321

/-- `A009528(A000038(n)+Δ[A026179(n+1)])` -/
def P16680373442481139921.Spec : Prop :=
  ∀ n, P16680373442481139921.a n = A049321 n

end A049321

/-! ## A049321.P6619993521801453390

`A010872(Δ[A026227(n+1)]%A000041(n))`
-/

namespace A049321.P6619993521801453390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Int.tmod (f1 (n + 1) - f1 n) (A000041 n)).toNat

end

end A049321.P6619993521801453390

namespace A049321

/-- `A010872(Δ[A026227(n+1)]%A000041(n))` -/
def P6619993521801453390.Spec : Prop :=
  ∀ n, P6619993521801453390.a n = A049321 n

end A049321

/-! ## A049321.P11697817969732367214

`A131989(n+1)%A122553(n)`
-/

namespace A049321.P11697817969732367214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131989 (n + 1)) (A122553 n)

end

end A049321.P11697817969732367214

namespace A049321

/-- `A131989(n+1)%A122553(n)` -/
def P11697817969732367214.Spec : Prop :=
  ∀ n, P11697817969732367214.a n = A049321 n

end A049321

/-!
# A049323: Triangle of coefficients of certain polynomials (exponents in increasing order), equivalent to A033842.

The programs for A049323, the canonical program `A049323.P13559484180359354602` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049323 has offset 0).

The definition of A049323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049323.P13559484180359354602

`A033842(C(row(n)+1, 2)+row(n)-col(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049323

/-- `A033842(C(row(n)+1, 2)+row(n)-col(n))` -/
def P13559484180359354602.Spec : Prop :=
  ∀ n, P13559484180359354602.a n = A049323 n

theorem P13559484180359354602.correct : P13559484180359354602.Spec := by
  intro n
  simp only [A049323]

end A049323

/-! ## A049323.P2092163580346850062

`A001263(n+1)/A007318(n)*A058127(n+1)`
-/

namespace A049323.P2092163580346850062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A058127 (n + 1) : ℚ)

end

end A049323.P2092163580346850062

namespace A049323

/-- `A001263(n+1)/A007318(n)*A058127(n+1)` -/
def P2092163580346850062.Spec : Prop :=
  ∀ n, P2092163580346850062.a n = (A049323 n : ℚ)

end A049323

/-! ## A049323.P18340255699391809136

`A122525(n+1)/A132159(n)*A135278(n)`
-/

namespace A049323.P18340255699391809136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122525 (n + 1) : ℚ) / (A132159 n : ℚ) * (A135278 n : ℚ)

end

end A049323.P18340255699391809136

namespace A049323

/-- `A122525(n+1)/A132159(n)*A135278(n)` -/
def P18340255699391809136.Spec : Prop :=
  ∀ n, P18340255699391809136.a n = (A049323 n : ℚ)

end A049323

/-! ## A049323.P6176105374921350980

`A122525(n+1)/A132159(n)*A074909(n+1)`
-/

namespace A049323.P6176105374921350980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122525 (n + 1) : ℚ) / (A132159 n : ℚ) * (A074909 (n + 1) : ℚ)

end

end A049323.P6176105374921350980

namespace A049323

/-- `A122525(n+1)/A132159(n)*A074909(n+1)` -/
def P6176105374921350980.Spec : Prop :=
  ∀ n, P6176105374921350980.a n = (A049323 n : ℚ)

end A049323

/-! ## A049323.P16212778154295905684

`A033842(A061579(n))`
-/

namespace A049323.P16212778154295905684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033842 (A061579 n).toNat

end

end A049323.P16212778154295905684

namespace A049323

/-- `A033842(A061579(n))` -/
def P16212778154295905684.Spec : Prop :=
  ∀ n, P16212778154295905684.a n = A049323 n

end A049323

/-! ## A049323.P5899492835441669361

`A139526(n+2)/A002260(n+1)`
-/

namespace A049323.P5899492835441669361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139526 (n + 2) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A049323.P5899492835441669361

namespace A049323

/-- `A139526(n+2)/A002260(n+1)` -/
def P5899492835441669361.Spec : Prop :=
  ∀ n, P5899492835441669361.a n = (A049323 n : ℚ)

end A049323

/-! ## A049323.P7260981196576576424

`A219694(n+1)/A091441(n+1)*A008279(n)`
-/

namespace A049323.P7260981196576576424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℚ) / (A091441 (n + 1) : ℚ) * (A008279 n : ℚ)

end

end A049323.P7260981196576576424

namespace A049323

/-- `A219694(n+1)/A091441(n+1)*A008279(n)` -/
def P7260981196576576424.Spec : Prop :=
  ∀ n, P7260981196576576424.a n = (A049323 n : ℚ)

end A049323

/-!
# A049324: A convolution triangle of numbers generalizing Pascal's triangle A007318.

The programs for A049324, the canonical program `A049324.P1202284005774686614` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049324 has offset 1).

The definition of A049324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049324.P1202284005774686614

`A048966(n+1)/A004747(n+1)*A049404(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049324

/-- `A048966(n+1)/A004747(n+1)*A049404(n+1)` -/
def P1202284005774686614.Spec : Prop :=
  ∀ n, P1202284005774686614.a n = (A049324 (n + 1) : ℚ)

end A049324

/-!
# A049325: A convolution triangle of numbers generalizing Pascal's triangle A007318.

The programs for A049325, there is no canonical definition to state claims against.
-/

/-! ## A049325.P1756030418481407850

`A049213(n+1)/A000369(n+1)*A049410(n+1)`
-/

namespace A049325.P1756030418481407850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049213 (n + 1) : ℚ) / (A000369 (n + 1) : ℚ) * (A049410 (n + 1) : ℚ)

end

end A049325.P1756030418481407850

/-!
# A049326: A convolution triangle of numbers generalizing Pascal's triangle A007318.

The programs for A049326, there is no canonical definition to state claims against.
-/

/-! ## A049326.P10920068314746903635

`A049223(n+1)/A011801(n+1)*A049424(n+1)`
-/

namespace A049326.P10920068314746903635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049223 (n + 1) : ℚ) / (A011801 (n + 1) : ℚ) * (A049424 (n + 1) : ℚ)

end

end A049326.P10920068314746903635

/-! ## A049326.P9102750920093952246

`A049375(n+1)/A049385(n+1)*A049424(n+1)`
-/

namespace A049326.P9102750920093952246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049375 (n + 1) : ℚ) / (A049385 (n + 1) : ℚ) * (A049424 (n + 1) : ℚ)

end

end A049326.P9102750920093952246

/-! ## A049326.P7339979322543726348

`A038243(n)*A105899(A034939(n))`
-/

namespace A049326.P7339979322543726348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A105899 (A034939 n).toNat

end

end A049326.P7339979322543726348

/-!
# A049327: A convolution triangle of numbers generalizing Pascal's triangle A007318.

The programs for A049327, there is no canonical definition to state claims against.
-/

/-! ## A049327.P17626192747351918762

`A049224(n+1)/A013988(n+1)*A049411(n+1)`
-/

namespace A049327.P17626192747351918762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049224 (n + 1) : ℚ) / (A013988 (n + 1) : ℚ) * (A049411 (n + 1) : ℚ)

end

end A049327.P17626192747351918762

/-!
# A049328: Numbers whose prime factors (taken with multiplicity) sum to 20.

The programs for A049328, there is no canonical definition to state claims against.
-/

/-! ## A049328.P2062027537869212663

`eq[20, A107463(n)]`
-/

namespace A049328.P2062027537869212663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049328.P2062027537869212663

/-! ## A049328.P6211279445375695929

`eq[20, A001414(round(acot(n)+n))]`
-/

namespace A049328.P6211279445375695929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049328.P6211279445375695929

/-! ## A049328.P14559834134919384022

`eq[20, A001414(A028310(n))]`
-/

namespace A049328.P14559834134919384022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049328.P14559834134919384022

/-! ## A049328.P11145383891114750032

`eq[22, A001414(A004277(n))]`
-/

namespace A049328.P11145383891114750032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049328.P11145383891114750032

/-! ## A049328.P11280361483972352161

`eq[23, A001414(A008486(n))]`
-/

namespace A049328.P11280361483972352161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049328.P11280361483972352161

/-!
# A049329: Numbers k such that k is a substring of k^k.

The programs for A049329, there is no canonical definition to state claims against.
-/

/-! ## A049329.P16073483666584202144

`lt[1, A000203(A236322(n+1)+1)]+1`
-/

namespace A049329.P16073483666584202144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A236322 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049329.P16073483666584202144

/-! ## A049329.P5402605636487810357

`lt[1, A020639(A236322(n+1)+1)]+1`
-/

namespace A049329.P5402605636487810357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A236322 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049329.P5402605636487810357

/-! ## A049329.P7123434507308864086

`lt[1, A086568(A236322(n+1)+1)²]+1`
-/

namespace A049329.P7123434507308864086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (A236322 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049329.P7123434507308864086

/-! ## A049329.P8485211162081856284

`lt[1, A255232(A236322(n+1)+1)²]+1`
-/

namespace A049329.P8485211162081856284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255232 (A236322 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049329.P8485211162081856284

/-! ## A049329.P16261547636399379425

`lt[1, A270430(A236322(n+1)+1)²]+1`
-/

namespace A049329.P16261547636399379425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270430 (A236322 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049329.P16261547636399379425

/-! ## A049329.P3664983782491445412

`lt[1, (A000040(A236322(n+1)+1)-1)²]+1`
-/

namespace A049329.P3664983782491445412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (A236322 (n + 1) + 1).toNat - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049329.P3664983782491445412

/-! ## A049329.P13919177622855279801

`lt[1, A000005(A236322(n+1)+1)²²²]+1`
-/

namespace A049329.P13919177622855279801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000005 (A236322 (n + 1) + 1).toNat ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049329.P13919177622855279801

/-!
# A049330: Numerator of (1/Pi)*Integral_{x=0..oo} (sin(x)/x)^n dx.

The programs for A049330, there is no canonical definition to state claims against.
-/

/-! ## A049330.P14427495693307505086

`A002297(n+1)-char[3]`
-/

namespace A049330.P14427495693307505086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002297 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A049330.P14427495693307505086

/-! ## A049330.P5691524817586468535

`A214293(A155766(n))+A002297(n+1)`
-/

namespace A049330.P5691524817586468535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214293 (A155766 n).toNat + A002297 (n + 1)

end

end A049330.P5691524817586468535

/-! ## A049330.P12044543180440396234

`A002297(n+1)/A051340(A127944(n))`
-/

namespace A049330.P12044543180440396234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002297 (n + 1) : ℚ) / (A051340 (A127944 n).toNat : ℚ)

end

end A049330.P12044543180440396234

/-! ## A049330.P17767070340632672233

`A002297(n+1)/A089723(A101316(n+1))`
-/

namespace A049330.P17767070340632672233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002297 (n + 1) : ℚ) / (A089723 (A101316 (n + 1)).toNat : ℚ)

end

end A049330.P17767070340632672233

/-! ## A049330.P4799720256654283773

`A002297(n+1)/A089723(A248351(n+1))`
-/

namespace A049330.P4799720256654283773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002297 (n + 1) : ℚ) / (A089723 (A248351 (n + 1)).toNat : ℚ)

end

end A049330.P4799720256654283773

/-!
# A049331: Denominator of (1/Pi)*Integral_{0..oo} (sin x / x)^n dx.

The programs for A049331, there is no canonical definition to state claims against.
-/

/-! ## A049331.P14335878111607923656

`A002298(n+1)*A105220((3-n)²)`
-/

namespace A049331.P14335878111607923656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002298 (n + 1) * A105220 ((3 - (n : ℤ)) ^ 2).toNat

end

end A049331.P14335878111607923656

/-! ## A049331.P10801539828615643339

`A002298(n+1)*A049342(A273766(n))`
-/

namespace A049331.P10801539828615643339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002298 (n + 1) * A049342 (A273766 n).toNat

end

end A049331.P10801539828615643339

/-! ## A049331.P8013320482265644854

`A002298(n+1)*A076840(A366422(2*(n+1)))`
-/

namespace A049331.P8013320482265644854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002298 (n + 1) * A076840 (A366422 (2 * (n + 1))).toNat

end

end A049331.P8013320482265644854

/-! ## A049331.P13815276527566502450

`A000034(A143330(n))*A002298(n+1)`
-/

namespace A049331.P13815276527566502450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A143330 n).toNat * A002298 (n + 1)

end

end A049331.P13815276527566502450

/-! ## A049331.P4815041486870581955

`A001285(A077098(n+2))*A002298(n+1)`
-/

namespace A049331.P4815041486870581955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A077098 (n + 2)).toNat * A002298 (n + 1)

end

end A049331.P4815041486870581955

/-!
# A049332: Number of conjugacy classes in Clifford group CL(n).

The programs for A049332, the canonical program `A049332.P6876629343281281299` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049332 has offset 0).

The definition of A049332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049332.P6876629343281281299

`2^n+n%2+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049332

/-- `2^n+n%2+1` -/
def P6876629343281281299.Spec : Prop :=
  ∀ n, (P6876629343281281299.a n : ℤ) = A049332 n

theorem P6876629343281281299.correct : P6876629343281281299.Spec := by
  intro n
  simp only [A049332]

end A049332

/-! ## A049332.P4905868462574379231

`ogf((2-5x^2)/(1-2x-x^2+2x^3))`
-/

namespace A049332.P4905868462574379231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -5] [1, -2, -1, 2] n

end

end A049332.P4905868462574379231

namespace A049332

/-- `ogf((2-5x^2)/(1-2x-x^2+2x^3))` -/
def P4905868462574379231.Spec : Prop :=
  ∀ n, P4905868462574379231.a n = A049332 n

end A049332

/-! ## A049332.P16529252298432084672

`3/2-(-1)^n/2+2^n`
-/

namespace A049332.P16529252298432084672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 - ((-1) ^ n : ℚ) / 2 + (2 ^ n : ℚ)

end

end A049332.P16529252298432084672

namespace A049332

/-- `3/2-(-1)^n/2+2^n` -/
def P16529252298432084672.Spec : Prop :=
  ∀ n, P16529252298432084672.a n = (A049332 n : ℚ)

end A049332

/-! ## A049332.P14229699342861428492

`2^n+1+n%2`
-/

namespace A049332.P14229699342861428492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + (1 + n % 2)

end

end A049332.P14229699342861428492

namespace A049332

/-- `2^n+1+n%2` -/
def P14229699342861428492.Spec : Prop :=
  ∀ n, (P14229699342861428492.a n : ℤ) = A049332 n

theorem P14229699342861428492.correct : P14229699342861428492.Spec := by
  intro n
  simp only [A049332, Nat.add_sub_cancel, A049332.P14229699342861428492.a, A049332.P6876629343281281299.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049332

/-! ## A049332.P15663636979721045985

`gcd(2, n+1)+2^n`
-/

namespace A049332.P15663636979721045985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) + 2 ^ n

end

end A049332.P15663636979721045985

namespace A049332

/-- `gcd(2, n+1)+2^n` -/
def P15663636979721045985.Spec : Prop :=
  ∀ n, (P15663636979721045985.a n : ℤ) = A049332 n

end A049332

/-! ## A049332.P11775155342966621869

`∑[ogf((-2+5x^2)/(-1+x+2x^2))]`
-/

namespace A049332.P11775155342966621869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -5] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049332.P11775155342966621869

namespace A049332

/-- `∑[ogf((-2+5x^2)/(-1+x+2x^2))]` -/
def P11775155342966621869.Spec : Prop :=
  ∀ n, P11775155342966621869.a n = A049332 n

end A049332

/-! ## A049332.P2309733015171721757

`2^n-or(n+1, -2)`
-/

namespace A049332.P2309733015171721757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.lor (n + 1 : ℤ) (-2)

end

end A049332.P2309733015171721757

namespace A049332

/-- `2^n-or(n+1, -2)` -/
def P2309733015171721757.Spec : Prop :=
  ∀ n, P2309733015171721757.a n = A049332 n

end A049332

/-! ## A049332.P9666290634127945151

`(2*and(1, n))!+2^n`
-/

namespace A049332.P9666290634127945151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * Nat.land 1 n) + 2 ^ n

end

end A049332.P9666290634127945151

namespace A049332

/-- `(2*and(1, n))!+2^n` -/
def P9666290634127945151.Spec : Prop :=
  ∀ n, (P9666290634127945151.a n : ℤ) = A049332 n

end A049332

/-! ## A049332.P12341280857267539471

`∑[a(n-1)+2*a(n-2)]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A049332.P12341280857267539471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049332.P12341280857267539471

namespace A049332

/-- `∑[a(n-1)+2*a(n-2)]` -/
def P12341280857267539471.Spec : Prop :=
  ∀ n, (P12341280857267539471.a n : ℤ) = A049332 n

end A049332

/-! ## A049332.P13064518513318196249

`2*(a(n-2)-(3-a(n-1))/2)` with `a(0)=2, a(1)=4`
-/

namespace A049332.P13064518513318196249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * (a (n - 2) - (3 - a (n - 1)) / 2)

end

end A049332.P13064518513318196249

namespace A049332

/-- `2*(a(n-2)-(3-a(n-1))/2)` -/
def P13064518513318196249.Spec : Prop :=
  ∀ n, P13064518513318196249.a n = (A049332 n : ℚ)

end A049332

/-! ## A049332.P13135882991927090312

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A049332.P13135882991927090312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049332.P13135882991927090312

namespace A049332

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P13135882991927090312.Spec : Prop :=
  ∀ n, (P13135882991927090312.a n : ℤ) = A049332 n

end A049332

/-! ## A049332.P9190878566009331119

`abs(A140253(n)+3)`
-/

namespace A049332.P9190878566009331119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140253 n + 3|

end

end A049332.P9190878566009331119

namespace A049332

/-- `abs(A140253(n)+3)` -/
def P9190878566009331119.Spec : Prop :=
  ∀ n, P9190878566009331119.a n = A049332 n

end A049332

/-! ## A049332.P8041829418387908677

`∑[abs(A123344(n)+1)]`
-/

namespace A049332.P8041829418387908677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123344 n + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049332.P8041829418387908677

namespace A049332

/-- `∑[abs(A123344(n)+1)]` -/
def P8041829418387908677.Spec : Prop :=
  ∀ n, P8041829418387908677.a n = A049332 n

end A049332

/-! ## A049332.P16616354397844590356

`Δ[xor(2^n, comp[2*n+n-1])]`
-/

namespace A049332.P16616354397844590356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ n) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A049332.P16616354397844590356

namespace A049332

/-- `Δ[xor(2^n, comp[2*n+n-1])]` -/
def P16616354397844590356.Spec : Prop :=
  ∀ n, P16616354397844590356.a n = A049332 n

end A049332

/-! ## A049332.P8643867859191263071

`Δ[A084174(n)+Δ[n²]]`
-/

namespace A049332.P8643867859191263071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084174 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049332.P8643867859191263071

namespace A049332

/-- `Δ[A084174(n)+Δ[n²]]` -/
def P8643867859191263071.Spec : Prop :=
  ∀ n, P8643867859191263071.a n = A049332 n

end A049332

/-! ## A049332.P10952568364058876133

`Δ[A320933(n)+Δ[n²]]`
-/

namespace A049332.P10952568364058876133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320933 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049332.P10952568364058876133

namespace A049332

/-- `Δ[A320933(n)+Δ[n²]]` -/
def P10952568364058876133.Spec : Prop :=
  ∀ n, P10952568364058876133.a n = A049332 n

end A049332

/-! ## A049332.P13968379720510564922

`(A014551(n+1)+3)/2`
-/

namespace A049332.P13968379720510564922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014551 (n + 1) + 3 : ℚ) / 2

end

end A049332.P13968379720510564922

namespace A049332

/-- `(A014551(n+1)+3)/2` -/
def P13968379720510564922.Spec : Prop :=
  ∀ n, P13968379720510564922.a n = (A049332 n : ℚ)

end A049332

/-! ## A049332.P16821318154171439423

`(A166977(n+1)+3)/2`
-/

namespace A049332.P16821318154171439423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166977 (n + 1) + 3 : ℚ) / 2

end

end A049332.P16821318154171439423

namespace A049332

/-- `(A166977(n+1)+3)/2` -/
def P16821318154171439423.Spec : Prop :=
  ∀ n, P16821318154171439423.a n = (A049332 n : ℚ)

end A049332

/-! ## A049332.P9544750477605596955

`Δ[A001651(n+1)+2^n]`
-/

namespace A049332.P9544750477605596955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049332.P9544750477605596955

namespace A049332

/-- `Δ[A001651(n+1)+2^n]` -/
def P9544750477605596955.Spec : Prop :=
  ∀ n, P9544750477605596955.a n = A049332 n

end A049332

/-! ## A049332.P11211743764967074854

`Δ[A004526(n)+2^n+n]`
-/

namespace A049332.P11211743764967074854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (2 ^ n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049332.P11211743764967074854

namespace A049332

/-- `Δ[A004526(n)+2^n+n]` -/
def P11211743764967074854.Spec : Prop :=
  ∀ n, P11211743764967074854.a n = A049332 n

end A049332

/-!
# A049334: Triangle read by rows: T(n, k) is the number of unlabeled connected planar simple graphs with n >= 1 nodes and 0<=k<=3*n-6 edges.

The programs for A049334, there is no canonical definition to state claims against.
-/

/-! ## A049334.P12956681201719564004

`A054924(∑[A061704(n+1)^A054924(n+1)])`
-/

namespace A049334.P12956681201719564004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061704 (n + 1) : ℚ) ^ (A054924 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049334.P12956681201719564004

/-! ## A049334.P3059802366292008192

`A054924(n+1)%A306149(∑{d}[n+1, #])`
-/

namespace A049334.P3059802366292008192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054924 (n + 1)) (A306149 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A049334.P3059802366292008192

/-! ## A049334.P14283115472059754360

`A000676(A018843(n))*A054924(n+1)`
-/

namespace A049334.P14283115472059754360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000676 (A018843 n).toNat * A054924 (n + 1)

end

end A049334.P14283115472059754360

/-! ## A049334.P13423855514494495918

`and(A054924(n+1), A139337(A272703(n)))`
-/

namespace A049334.P13423855514494495918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054924 (n + 1)) (A139337 (A272703 n).toNat)

end

end A049334.P13423855514494495918

/-! ## A049334.P15304113783634622086

`A046978(∑[A018843(n)])*A054924(n+1)`
-/

namespace A049334.P15304113783634622086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A054924 (n + 1)

end

end A049334.P15304113783634622086

/-!
# A049337: Triangle read by rows: T(n,k) is the number of 3-connected planar graphs (or polyhedra) with n >= 1 nodes and 0 <= k <= C(n,2) edges.

The programs for A049337, there is no canonical definition to state claims against.
-/

/-! ## A049337.P11094780171709171646

`A156776(A157045(3*n+2)+1)`
-/

namespace A049337.P11094780171709171646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156776 (A157045 (3 * n + 2) + 1).toNat

end

end A049337.P11094780171709171646

/-! ## A049337.P10437633215923540319

`A239675(A336866(n))%A053632(n)`
-/

namespace A049337.P10437633215923540319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239675 (A336866 n).toNat) (A053632 n)

end

end A049337.P10437633215923540319

/-! ## A049337.P18012594516063217530

`A033106(A365142(n+1))%A053632(n)`
-/

namespace A049337.P18012594516063217530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033106 (A365142 (n + 1)).toNat) (A053632 n)

end

end A049337.P18012594516063217530

/-! ## A049337.P8008649440834702400

`val(A337766(A238888(3*n+2)), 2)`
-/

namespace A049337.P8008649440834702400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337766 (A238888 (3 * n + 2)).toNat).toNat 2

end

end A049337.P8008649440834702400

/-! ## A049337.P4003197151567399223

`A054087(A000041(n))%A053632(n)`
-/

namespace A049337.P4003197151567399223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054087 (A000041 n).toNat) (A053632 n)

end

end A049337.P4003197151567399223

/-!
# A049339: Number of n-node planar graphs with even degrees.

The programs for A049339, there is no canonical definition to state claims against.
-/

/-! ## A049339.P15590593040323454746

`A332577(∑[A073028(n)])`
-/

namespace A049339.P15590593040323454746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049339.P15590593040323454746

/-! ## A049339.P3506563106233270885

`A332577(A332577(n+1)+A320356(n))`
-/

namespace A049339.P3506563106233270885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 (A332577 (n + 1) + A320356 n).toNat

end

end A049339.P3506563106233270885

/-! ## A049339.P6661267259008783137

`A332577(A269303(n+1)+A000071(n+1))`
-/

namespace A049339.P6661267259008783137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 (A269303 (n + 1) + A000071 (n + 1)).toNat

end

end A049339.P6661267259008783137

/-! ## A049339.P3383076840947282753

`A361978(A389893(n))`
-/

namespace A049339.P3383076840947282753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361978 (A389893 n).toNat

end

end A049339.P3383076840947282753

/-!
# A049340: Triangle read by rows: T(n,k) is the number of planar graphs with n >= 1 nodes and 0 <= k <= binomial(n,2) edges, all degrees even.

The programs for A049340, there is no canonical definition to state claims against.
-/

/-! ## A049340.P13565927534372344233

`A145568(A053644(n+3)*A357885(n+1))`
-/

namespace A049340.P13565927534372344233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 (A053644 (n + 3) * A357885 (n + 1)).toNat

end

end A049340.P13565927534372344233

/-! ## A049340.P17716815017748645422

`A145568(A357885(n+1)%A286009(n+1))`
-/

namespace A049340.P17716815017748645422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 (Int.tmod (A357885 (n + 1)) (A286009 (n + 1))).toNat

end

end A049340.P17716815017748645422

/-! ## A049340.P6711539131430667109

`A097325(and(A141664(n), A141686(n+1)))`
-/

namespace A049340.P6711539131430667109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (Int.land (A141664 n) (A141686 (n + 1))).toNat

end

end A049340.P6711539131430667109

/-! ## A049340.P2265269039092575080

`A049240(and(A141664(n), A141686(n+1))+4)`
-/

namespace A049340.P2265269039092575080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (Int.land (A141664 n) (A141686 (n + 1)) + 4).toNat

end

end A049340.P2265269039092575080

/-! ## A049340.P16469927158755980628

`A000290(and(A141664(n), A141686(n+1)))%3`
-/

namespace A049340.P16469927158755980628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (Int.land (A141664 n) (A141686 (n + 1))).toNat) 3

end

end A049340.P16469927158755980628

/-!
# A049341: a(n+1) = sum of digits of a(n) + a(n-1).

The programs for A049341, the canonical program `A049341.P4988293796697185815` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049341 has offset 0).

The definition of A049341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049341.P4988293796697185815

`dr(a(n-1)+a(n-2))` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049341

/-- `dr(a(n-1)+a(n-2))` -/
def P4988293796697185815.Spec : Prop :=
  ∀ n, (P4988293796697185815.a n : ℤ) = A049341 n

theorem P4988293796697185815.correct : P4988293796697185815.Spec := by
  intro n
  simp only [A049341]

end A049341

/-!
# A049342: a(n) = A049341(n)/3.

The programs for A049342, the canonical program `A049342.P7627898145282061471` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049342 has offset 0).

The definition of A049342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049341, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049342.P7627898145282061471

`A049341(n)/3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049342

/-- `A049341(n)/3` -/
def P7627898145282061471.Spec : Prop :=
  ∀ n, P7627898145282061471.a n = (A049342 n : ℚ)

end A049342

/-! ## A049342.P1469077197601291515

`a(floor(5/(a(n-1)*a(n-3))))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A049342.P1469077197601291515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a ⌊5 / (a (n - 1) * a (n - 3) : ℚ)⌋.toNat

end

end A049342.P1469077197601291515

namespace A049342

/-- `a(floor(5/(a(n-1)*a(n-3))))` -/
def P1469077197601291515.Spec : Prop :=
  ∀ n, (P1469077197601291515.a n : ℤ) = A049342 n

end A049342

/-!
# A049343: Numbers m such that 2m and m^2 have same digit sum.

The programs for A049343, the canonical program `A049343.P4245191771258133539` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049343 has offset 1).

The definition of A049343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049343.P4245191771258133539

`eq[∑{digits}[n², #], A004092(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049343

/-- `eq[∑{digits}[n², #], A004092(n)]` -/
def P4245191771258133539.Spec : Prop :=
  ∀ n, (P4245191771258133539.a n : ℤ) = A049343 (n + 1)

theorem P4245191771258133539.correct : P4245191771258133539.Spec := by
  intro n
  simp only [A049343, Nat.add_sub_cancel]

end A049343

/-! ## A049343.P15079849069491308295

`eq[A004092(n), A004159(n)]`
-/

namespace A049343.P15079849069491308295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049343.P15079849069491308295

namespace A049343

/-- `eq[A004092(n), A004159(n)]` -/
def P15079849069491308295.Spec : Prop :=
  ∀ n, (P15079849069491308295.a n : ℤ) = A049343 (n + 1)

end A049343

/-! ## A049343.P16832293904196506509

`eq[A004159(n)+1, A004155(n)]`
-/

namespace A049343.P16832293904196506509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049343.P16832293904196506509

namespace A049343

/-- `eq[A004159(n)+1, A004155(n)]` -/
def P16832293904196506509.Spec : Prop :=
  ∀ n, (P16832293904196506509.a n : ℤ) = A049343 (n + 1)

end A049343

/-! ## A049343.P8861976928018882420

`eq[A004159(n), A007953(2*n)]`
-/

namespace A049343.P8861976928018882420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049343.P8861976928018882420

namespace A049343

/-- `eq[A004159(n), A007953(2*n)]` -/
def P8861976928018882420.Spec : Prop :=
  ∀ n, (P8861976928018882420.a n : ℤ) = A049343 (n + 1)

end A049343

/-! ## A049343.P6421353103571825309

`eq[A004159(n)², A118881(2*n)]`
-/

namespace A049343.P6421353103571825309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049343.P6421353103571825309

namespace A049343

/-- `eq[A004159(n)², A118881(2*n)]` -/
def P6421353103571825309.Spec : Prop :=
  ∀ n, (P6421353103571825309.a n : ℤ) = A049343 (n + 1)

end A049343

/-!
# A049344: Prime unoriented alternating links (not necessarily connected knots) with n crossings.

The programs for A049344, there is no canonical definition to state claims against.
-/

/-! ## A049344.P17197253977646066850

`A261104(A018191(n)-A149057(n))`
-/

namespace A049344.P17197253977646066850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A018191 n - A149057 n).toNat

end

end A049344.P17197253977646066850

/-! ## A049344.P185930192796076679

`A262689(A343032(n)-A156587(n))`
-/

namespace A049344.P185930192796076679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A343032 n - A156587 n).toNat

end

end A049344.P185930192796076679

/-!
# A049345: n written in primorial base.

The programs for A049345, there is no canonical definition to state claims against.
-/

/-! ## A049345.P13314829353639184043

`A001202(A277022(n)+1)`
-/

namespace A049345.P13314829353639184043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A277022 n + 1).toNat

end

end A049345.P13314829353639184043

/-! ## A049345.P9092795376413916005

`∪[Δ[A122613(n+5)], A007623(n)]`
-/

namespace A049345.P9092795376413916005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122613 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A049345.P9092795376413916005

/-! ## A049345.P4880256772572951903

`A007623(n)%A258199(A001134(n+1))`
-/

namespace A049345.P4880256772572951903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007623 n) (A258199 (A001134 (n + 1)).toNat)

end

end A049345.P4880256772572951903

/-! ## A049345.P11230634524212241923

`A276326(A153880(n)-n)%A258199(A001134(n+1))`
-/

namespace A049345.P11230634524212241923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276326 (A153880 n - (n : ℤ)).toNat) (A258199 (A001134 (n + 1)).toNat)

end

end A049345.P11230634524212241923

/-! ## A049345.P6793836962091093536

`∪[A007623(n), A287318(A005544(n+2))]`
-/

namespace A049345.P6793836962091093536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287318 (A005544 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049345.P6793836962091093536

/-!
# A049346: Coefficient of x^(-n) in expansion of continued fraction 0, x, x^2, x^3, x^4, ... .

The programs for A049346, there is no canonical definition to state claims against.
-/

/-! ## A049346.P9809463733941580323

`A062157(n)*A227310(n)`
-/

namespace A049346.P9809463733941580323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A227310 n

end

end A049346.P9809463733941580323

/-! ## A049346.P12815528142450609087

`A291955(A075349(n+1))`
-/

namespace A049346.P12815528142450609087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291955 (A075349 (n + 1)).toNat

end

end A049346.P12815528142450609087

/-! ## A049346.P4270682328251898660

`A291955(∑[A107436(n+1)])`
-/

namespace A049346.P4270682328251898660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291955 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049346.P4270682328251898660

/-! ## A049346.P1623921590766388831

`A291955(A006463(n)+1+n)`
-/

namespace A049346.P1623921590766388831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291955 (A006463 n + 1 + (n : ℤ)).toNat

end

end A049346.P1623921590766388831

/-! ## A049346.P7472340611280291970

`A291955(∑[A002024(n+1)]-A003056(n))`
-/

namespace A049346.P7472340611280291970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291955 (∑ j ∈ Finset.range (n + 1), f1 j - A003056 n).toNat

end

end A049346.P7472340611280291970

/-!
# A049347: Period 3: repeat [1, -1, 0].

The programs for A049347, the canonical program `A049347.P9996747395155426839` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049347 has offset 0).

The definition of A049347 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A049347.anchor (n : ℕ) : A049347 n = [1, -1, 0].getD (n % 3) 0` in `Proof.A049.A049347`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049347.P6295050260274815050

`ogf(1/(1+x+x^2))`
-/

namespace A049347.P6295050260274815050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 1] n

end

end A049347.P6295050260274815050

namespace A049347

/-- `ogf(1/(1+x+x^2))` -/
def P6295050260274815050.Spec : Prop :=
  ∀ n, P6295050260274815050.a n = A049347 n

end A049347

/-! ## A049347.P9996747395155426839

`(n+2)%3-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049347

/-- `(n+2)%3-1` -/
def P9996747395155426839.Spec : Prop :=
  ∀ n, P9996747395155426839.a n = A049347 n

theorem P9996747395155426839.correct : P9996747395155426839.Spec := by
  intro n
  simp only [A049347]

end A049347

/-!
# A049348: Row sums of triangle A049324.

The programs for A049348, the canonical program `A049348.P636682747105759582` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049348 has offset 1).

The definition of A049348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049348.P636682747105759582

`ogf((1+3x+3x^2)/(1-x-3x^2-3x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049348

/-- `ogf((1+3x+3x^2)/(1-x-3x^2-3x^3))` -/
def P636682747105759582.Spec : Prop :=
  ∀ n, P636682747105759582.a n = A049348 (n + 1)

theorem P636682747105759582.correct : P636682747105759582.Spec := by
  intro n
  simp only [A049348, Nat.add_sub_cancel]

end A049348

/-! ## A049348.P11647503876464893784

`Δ[ogf(1/(1-2x-2x^2+3x^4))]`
-/

namespace A049348.P11647503876464893784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -2, 0, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049348.P11647503876464893784

namespace A049348

/-- `Δ[ogf(1/(1-2x-2x^2+3x^4))]` -/
def P11647503876464893784.Spec : Prop :=
  ∀ n, P11647503876464893784.a n = A049348 (n + 1)

end A049348

/-! ## A049348.P18335941293234168601

`a(n-1)+3*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A049348.P18335941293234168601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  a (n - 1) + 3 * (a (n - 2) + a (n - 3))

end

end A049348.P18335941293234168601

namespace A049348

/-- `a(n-1)+3*(a(n-2)+a(n-3))` -/
def P18335941293234168601.Spec : Prop :=
  ∀ n, (P18335941293234168601.a n : ℤ) = A049348 (n + 1)

end A049348

/-!
# A049349: Row sums of triangle A049325.

The programs for A049349, the canonical program `A049349.P7774218175992801961` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049349 has offset 1).

The definition of A049349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049349.P7774218175992801961

`ogf((1+6x+16x^2+16x^3)/(1-x-6x^2-16x^3-16x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049349

/-- `ogf((1+6x+16x^2+16x^3)/(1-x-6x^2-16x^3-16x^4))` -/
def P7774218175992801961.Spec : Prop :=
  ∀ n, P7774218175992801961.a n = A049349 (n + 1)

theorem P7774218175992801961.correct : P7774218175992801961.Spec := by
  intro n
  simp only [A049349, Nat.add_sub_cancel]

end A049349

/-! ## A049349.P6325664603077534414

`∑{#}[n, (-1)^(n-#)*C(n, #)*A292487(#)]`
-/

namespace A049349.P6325664603077534414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A292487 k : ℚ)

end

end A049349.P6325664603077534414

namespace A049349

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A292487(#)]` -/
def P6325664603077534414.Spec : Prop :=
  ∀ n, P6325664603077534414.a n = (A049349 (n + 1) : ℚ)

end A049349

/-!
# A049352: A triangle of numbers related to triangle A030524.

The programs for A049352, the canonical program `A049352.P4452604354500105183` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049352 has offset 1).

The definition of A049352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049352.P4452604354500105183

`T(n-1,k-1)+(row(n)+3*(col(n)+1))*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049352

/-- `T(n-1,k-1)+(row(n)+3*(col(n)+1))*T(n-1,k)` -/
def P4452604354500105183.Spec : Prop :=
  ∀ n, (P4452604354500105183.a n : ℤ) = A049352 (n + 1)

theorem P4452604354500105183.correct : P4452604354500105183.Spec := by
  intro n
  simp only [A049352, Nat.add_sub_cancel]

end A049352

/-! ## A049352.P8769131025054817649

`A144354(n+1)%p?[2^n-1]`
-/

namespace A049352.P8769131025054817649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144354 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A049352.P8769131025054817649

namespace A049352

/-- `A144354(n+1)%p?[2^n-1]` -/
def P8769131025054817649.Spec : Prop :=
  ∀ n, P8769131025054817649.a n = A049352 (n + 1)

end A049352

/-! ## A049352.P171484752979362494

`A144354(A024648(n+1))`
-/

namespace A049352.P171484752979362494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144354 (A024648 (n + 1)).toNat

end

end A049352.P171484752979362494

namespace A049352

/-- `A144354(A024648(n+1))` -/
def P171484752979362494.Spec : Prop :=
  ∀ n, P171484752979362494.a n = A049352 (n + 1)

end A049352

/-!
# A049353: A triangle of numbers related to triangle A030526.

The programs for A049353, there is no canonical definition to state claims against.
-/

/-! ## A049353.P9943790073951044241

`A030526(n+1)/A048882(n)*A049029(n+1)`
-/

namespace A049353.P9943790073951044241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030526 (n + 1) : ℚ) / (A048882 n : ℚ) * (A049029 (n + 1) : ℚ)

end

end A049353.P9943790073951044241

/-! ## A049353.P7971164914971038343

`A144355(∑[A361675(n)])`
-/

namespace A049353.P7971164914971038343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144355 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049353.P7971164914971038343

/-! ## A049353.P15940885120726781126

`A144355(A024647(n+1))`
-/

namespace A049353.P15940885120726781126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144355 (A024647 (n + 1)).toNat

end

end A049353.P15940885120726781126

/-!
# A049354: Digitally balanced numbers in base 3: equal numbers of 0's, 1's, 2's.

The programs for A049354, the canonical program `A049354.P9772535967235902552` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049354 has offset 1).

The definition of A049354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049354.P9772535967235902552

`∩[A031452(n+1), A039000(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049354

/-- `∩[A031452(n+1), A039000(n+1)]` -/
def P9772535967235902552.Spec : Prop :=
  ∀ n, (P9772535967235902552.a n : ℤ) = A049354 (n + 1)

theorem P9772535967235902552.correct : P9772535967235902552.Spec := by
  intro n
  simp only [A049354, Nat.add_sub_cancel]

end A049354

/-! ## A049354.P7302738615247698462

`∩[A031452(n+1), A039001(n+1)]`
-/

namespace A049354.P7302738615247698462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P7302738615247698462

namespace A049354

/-- `∩[A031452(n+1), A039001(n+1)]` -/
def P7302738615247698462.Spec : Prop :=
  ∀ n, (P7302738615247698462.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P14325779241138638708

`∩[A031452(n+1), A039275(n+1)]`
-/

namespace A049354.P14325779241138638708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P14325779241138638708

namespace A049354

/-- `∩[A031452(n+1), A039275(n+1)]` -/
def P14325779241138638708.Spec : Prop :=
  ∀ n, (P14325779241138638708.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P1995475924637505709

`∩[A039000(n+1), A039001(n+1)]`
-/

namespace A049354.P1995475924637505709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P1995475924637505709

namespace A049354

/-- `∩[A039000(n+1), A039001(n+1)]` -/
def P1995475924637505709.Spec : Prop :=
  ∀ n, (P1995475924637505709.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P2562769557093200469

`∩[A039000(n+1), A039276(n+1)]`
-/

namespace A049354.P2562769557093200469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P2562769557093200469

namespace A049354

/-- `∩[A039000(n+1), A039276(n+1)]` -/
def P2562769557093200469.Spec : Prop :=
  ∀ n, (P2562769557093200469.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P4058701554296700824

`∩[A039001(n+1), A039275(n+1)]`
-/

namespace A049354.P4058701554296700824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P4058701554296700824

namespace A049354

/-- `∩[A039001(n+1), A039275(n+1)]` -/
def P4058701554296700824.Spec : Prop :=
  ∀ n, (P4058701554296700824.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P7949782784966028114

`∩[A039001(n+1), A039276(n+1)]`
-/

namespace A049354.P7949782784966028114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P7949782784966028114

namespace A049354

/-- `∩[A039001(n+1), A039276(n+1)]` -/
def P7949782784966028114.Spec : Prop :=
  ∀ n, (P7949782784966028114.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P2554242004521063873

`∩[A039275(n+1), A039276(n+1)]`
-/

namespace A049354.P2554242004521063873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P2554242004521063873

namespace A049354

/-- `∩[A039275(n+1), A039276(n+1)]` -/
def P2554242004521063873.Spec : Prop :=
  ∀ n, (P2554242004521063873.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P10068756819796216245

`∩[A031452(n+1), A370856(n+1)]`
-/

namespace A049354.P10068756819796216245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P10068756819796216245

namespace A049354

/-- `∩[A031452(n+1), A370856(n+1)]` -/
def P10068756819796216245.Spec : Prop :=
  ∀ n, (P10068756819796216245.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P8373417150428059211

`∩[A031452(n+1), A370873(n+1)]`
-/

namespace A049354.P8373417150428059211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P8373417150428059211

namespace A049354

/-- `∩[A031452(n+1), A370873(n+1)]` -/
def P8373417150428059211.Spec : Prop :=
  ∀ n, (P8373417150428059211.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P8640511147841208709

`∩[A039276(n+1), A370856(n+1)]`
-/

namespace A049354.P8640511147841208709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P8640511147841208709

namespace A049354

/-- `∩[A039276(n+1), A370856(n+1)]` -/
def P8640511147841208709.Spec : Prop :=
  ∀ n, (P8640511147841208709.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P2385551504100371123

`∩[A039276(n+1), A370873(n+1)]`
-/

namespace A049354.P2385551504100371123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P2385551504100371123

namespace A049354

/-- `∩[A039276(n+1), A370873(n+1)]` -/
def P2385551504100371123.Spec : Prop :=
  ∀ n, (P2385551504100371123.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P11976995419550727216

`∩[A370862(n+1), A370866(n+1)]`
-/

namespace A049354.P11976995419550727216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P11976995419550727216

namespace A049354

/-- `∩[A370862(n+1), A370866(n+1)]` -/
def P11976995419550727216.Spec : Prop :=
  ∀ n, (P11976995419550727216.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P6250296801304036530

`∩[A370856(n+1), A370873(n+1)]`
-/

namespace A049354.P6250296801304036530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P6250296801304036530

namespace A049354

/-- `∩[A370856(n+1), A370873(n+1)]` -/
def P6250296801304036530.Spec : Prop :=
  ∀ n, (P6250296801304036530.a n : ℤ) = A049354 (n + 1)

end A049354

/-! ## A049354.P9047689370461095664

`eq[A006047(n), A006047(A256293(n))]`
-/

namespace A049354.P9047689370461095664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A256293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049354.P9047689370461095664

namespace A049354

/-- `eq[A006047(n), A006047(A256293(n))]` -/
def P9047689370461095664.Spec : Prop :=
  ∀ n, (P9047689370461095664.a n : ℤ) = A049354 (n + 1)

end A049354

/-!
# A049355: Digitally balanced numbers in base 4: equal numbers of 0's, 1's, ... 3's.

The programs for A049355, the canonical program `A049355.P5870276504915556013` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049355 has offset 1).

The definition of A049355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1908 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049355.P8151595737814040151

`∩[A039559(n+1), A039560(n+1)]`
-/

namespace A049355.P8151595737814040151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049355.P8151595737814040151

namespace A049355

/-- `∩[A039559(n+1), A039560(n+1)]` -/
def P8151595737814040151.Spec : Prop :=
  ∀ n, (P8151595737814040151.a n : ℤ) = A049355 (n + 1)

end A049355

/-! ## A049355.P8642996416506096086

`∩[A039559(n+1), A039561(n+1)]`
-/

namespace A049355.P8642996416506096086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049355.P8642996416506096086

namespace A049355

/-- `∩[A039559(n+1), A039561(n+1)]` -/
def P8642996416506096086.Spec : Prop :=
  ∀ n, (P8642996416506096086.a n : ℤ) = A049355 (n + 1)

end A049355

/-! ## A049355.P8917138623473324863

`∩[A039559(n+1), A039562(n+1)]`
-/

namespace A049355.P8917138623473324863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049355.P8917138623473324863

namespace A049355

/-- `∩[A039559(n+1), A039562(n+1)]` -/
def P8917138623473324863.Spec : Prop :=
  ∀ n, (P8917138623473324863.a n : ℤ) = A049355 (n + 1)

end A049355

/-! ## A049355.P7918186508955025776

`∩[A039560(n+1), A039561(n+1)]`
-/

namespace A049355.P7918186508955025776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049355.P7918186508955025776

namespace A049355

/-- `∩[A039560(n+1), A039561(n+1)]` -/
def P7918186508955025776.Spec : Prop :=
  ∀ n, (P7918186508955025776.a n : ℤ) = A049355 (n + 1)

end A049355

/-! ## A049355.P15682637228755931231

`∩[A039560(n+1), A039562(n+1)]`
-/

namespace A049355.P15682637228755931231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049355.P15682637228755931231

namespace A049355

/-- `∩[A039560(n+1), A039562(n+1)]` -/
def P15682637228755931231.Spec : Prop :=
  ∀ n, (P15682637228755931231.a n : ℤ) = A049355 (n + 1)

end A049355

/-! ## A049355.P5870276504915556013

`∩[A039561(n+1), A039562(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A049355

/-- `∩[A039561(n+1), A039562(n+1)]` -/
def P5870276504915556013.Spec : Prop :=
  ∀ n, (P5870276504915556013.a n : ℤ) = A049355 (n + 1)

theorem P5870276504915556013.correct : P5870276504915556013.Spec := by
  intro n
  simp only [A049355, Nat.add_sub_cancel]

end A049355

/-! ## A049355.P10948241382984049340

`∩[A039002(n+1), A039561(n+1)]`
-/

namespace A049355.P10948241382984049340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049355.P10948241382984049340

namespace A049355

/-- `∩[A039002(n+1), A039561(n+1)]` -/
def P10948241382984049340.Spec : Prop :=
  ∀ n, (P10948241382984049340.a n : ℤ) = A049355 (n + 1)

end A049355

/-! ## A049355.P15648418144388293415

`∩[A031461(n+1), A039559(n+1)]`
-/

namespace A049355.P15648418144388293415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049355.P15648418144388293415

namespace A049355

/-- `∩[A031461(n+1), A039559(n+1)]` -/
def P15648418144388293415.Spec : Prop :=
  ∀ n, (P15648418144388293415.a n : ℤ) = A049355 (n + 1)

end A049355

/-! ## A049355.P8181309912315268256

`∩[A031461(n+1), A039562(n+1)]`
-/

namespace A049355.P8181309912315268256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049355.P8181309912315268256

namespace A049355

/-- `∩[A031461(n+1), A039562(n+1)]` -/
def P8181309912315268256.Spec : Prop :=
  ∀ n, (P8181309912315268256.a n : ℤ) = A049355 (n + 1)

end A049355

/-!
# A049356: Digitally balanced numbers in base 5: equal numbers of 0's, 1's, ..., 4's.

The programs for A049356, there is no canonical definition to state claims against.
-/

/-! ## A049356.P3444343799186192202

`∩[A023743(n+1), A031470(n+1)]`
-/

namespace A049356.P3444343799186192202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049356.P3444343799186192202

/-! ## A049356.P9509151079659225900

`∩[A023743(n+1), A039283(n+1)]`
-/

namespace A049356.P9509151079659225900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049356.P9509151079659225900

/-! ## A049356.P189238761867320651

`∩[A023743(n+1), A039284(n+1)]`
-/

namespace A049356.P189238761867320651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049356.P189238761867320651

/-! ## A049356.P5944079111069635257

`∩[A023743(n+1), A039285(n+1)]`
-/

namespace A049356.P5944079111069635257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049356.P5944079111069635257

/-! ## A049356.P11262846516663521916

`∩[A023743(n+1), A039286(n+1)]`
-/

namespace A049356.P11262846516663521916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049356.P11262846516663521916

/-! ## A049356.P971252816480975483

`∩[A023743(n+1), A039563(n+1)]`
-/

namespace A049356.P971252816480975483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049356.P971252816480975483

/-! ## A049356.P427193484605516604

`∩[A023743(n+1), A039564(n+1)]`
-/

namespace A049356.P427193484605516604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049356.P427193484605516604

/-! ## A049356.P9634245916282899879

`∩[A023743(n+1), A039565(n+1)]`
-/

namespace A049356.P9634245916282899879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049356.P9634245916282899879

/-! ## A049356.P13996000719370608787

`∩[A023743(n+1), A039566(n+1)]`
-/

namespace A049356.P13996000719370608787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049356.P13996000719370608787

/-! ## A049356.P14484439491151726858

`∩[A023743(n+1), A039567(n+1)]`
-/

namespace A049356.P14484439491151726858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049356.P14484439491151726858

/-!
# A049357: Digitally balanced numbers in base 6: equal numbers of 0's, 1's, ..., 5's.

The programs for A049357, there is no canonical definition to state claims against.
-/

/-! ## A049357.P2502908127151273726

`A031947(n+1)%A075466(n)`
-/

namespace A049357.P2502908127151273726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031947 (n + 1)) (A075466 n)

end

end A049357.P2502908127151273726

/-! ## A049357.P4368517659603984946

`lcm(A008480(A099609(n+1)), A031947(n+1))`
-/

namespace A049357.P4368517659603984946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008480 (A099609 (n + 1)).toNat) (A031947 (n + 1))

end

end A049357.P4368517659603984946

/-! ## A049357.P8973116099477853492

`∩[A023744(n+1), A043614(n+1)]`
-/

namespace A049357.P8973116099477853492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049357.P8973116099477853492

/-! ## A049357.P14192510293843222641

`A001511(A339971(2*n))*A031947(n+1)`
-/

namespace A049357.P14192510293843222641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A339971 (2 * n)).toNat * A031947 (n + 1)

end

end A049357.P14192510293843222641

/-! ## A049357.P18333609720527424687

`A031947(n+1)%A063433(n)`
-/

namespace A049357.P18333609720527424687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031947 (n + 1)) (A063433 n)

end

end A049357.P18333609720527424687

/-!
# A049361: Digitally balanced numbers in both bases 2 and 3.

The programs for A049361, the canonical program `A049361.P1373389357101753629` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049361 has offset 1).

The definition of A049361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049361.P1373389357101753629

`∩[A049354(n+1), A144798(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049361

/-- `∩[A049354(n+1), A144798(n+1)]` -/
def P1373389357101753629.Spec : Prop :=
  ∀ n, (P1373389357101753629.a n : ℤ) = A049361 (n + 1)

theorem P1373389357101753629.correct : P1373389357101753629.Spec := by
  intro n
  simp only [A049361, Nat.add_sub_cancel]

end A049361

/-! ## A049361.P1050879372855609637

`∩[A031443(n+1), A049354(n+1)]`
-/

namespace A049361.P1050879372855609637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049361.P1050879372855609637

namespace A049361

/-- `∩[A031443(n+1), A049354(n+1)]` -/
def P1050879372855609637.Spec : Prop :=
  ∀ n, (P1050879372855609637.a n : ℤ) = A049361 (n + 1)

end A049361

/-!
# A049363: a(1) = 1; for n > 1, smallest digitally balanced number in base n.

The programs for A049363, there is no canonical definition to state claims against.
-/

/-! ## A049363.P4505506427922913562

`floor(A123668(n+1)/A000169(n+1))`
-/

namespace A049363.P4505506427922913562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123668 (n + 1) : ℚ) / (A000169 (n + 1) : ℚ)⌋

end

end A049363.P4505506427922913562

/-! ## A049363.P8248824789124416781

`A378000(A152948(n+1))-A000007(n)`
-/

namespace A049363.P8248824789124416781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378000 (A152948 (n + 1)).toNat - A000007 n

end

end A049363.P8248824789124416781

/-! ## A049363.P14987914859286908437

`A134640(A000142(n)+∑[A000142(n)])`
-/

namespace A049363.P14987914859286908437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A000142 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049363.P14987914859286908437

/-!
# A049366: Number of Hamiltonian planar graphs with n nodes.

The programs for A049366, there is no canonical definition to state claims against.
-/

/-! ## A049366.P6774691015584363750

`round(Δ[sqrt(A147341(2*n+1))])`
-/

namespace A049366.P6774691015584363750
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A147341 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A049366.P6774691015584363750

/-! ## A049366.P7709040213560750989

`A098236(A228770(n+1))`
-/

namespace A049366.P7709040213560750989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (A228770 (n + 1)).toNat

end

end A049366.P7709040213560750989

/-! ## A049366.P11709076393285774444

`A330558(2*A012519(n))`
-/

namespace A049366.P11709076393285774444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (2 * A012519 n).toNat

end

end A049366.P11709076393285774444

/-!
# A049367: Number of triangle-free planar graphs with n nodes.

The programs for A049367, there is no canonical definition to state claims against.
-/

/-! ## A049367.P10860760118947589524

`A006785(n+1)-A157966(A056015(n))`
-/

namespace A049367.P10860760118947589524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 1) - A157966 (A056015 n).toNat

end

end A049367.P10860760118947589524

/-! ## A049367.P12518401152095245268

`A352130(A018917(n+1)-A352130(n+1))`
-/

namespace A049367.P12518401152095245268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A018917 (n + 1) - A352130 (n + 1)).toNat

end

end A049367.P12518401152095245268

/-! ## A049367.P5232126371261097979

`A352130(A046205(n+1)+A000041(n+4))`
-/

namespace A049367.P5232126371261097979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A046205 (n + 1) + A000041 (n + 4)).toNat

end

end A049367.P5232126371261097979

/-! ## A049367.P6313392496478452271

`A352130(A347577(n+4)+A001222(n+1))`
-/

namespace A049367.P6313392496478452271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A347577 (n + 4 + 55) + A001222 (n + 1)).toNat

end

end A049367.P6313392496478452271

/-!
# A049368: Number of connected triangle-free planar graphs with n nodes.

The programs for A049368, there is no canonical definition to state claims against.
-/

/-! ## A049368.P6148683426148689788

`A220413(A279865(n+1)+A111063(n))`
-/

namespace A049368.P6148683426148689788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A279865 (n + 1) + A111063 n).toNat

end

end A049368.P6148683426148689788

/-! ## A049368.P16980898843780053340

`A324751(A005282(n+1)-A003269(n))`
-/

namespace A049368.P16980898843780053340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (A005282 (n + 1) - A003269 n).toNat

end

end A049368.P16980898843780053340

/-! ## A049368.P15152296569949079298

`A332249(A286072(n))-A235728(n+1)`
-/

namespace A049368.P15152296569949079298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (A286072 n).toNat - A235728 (n + 1)

end

end A049368.P15152296569949079298

/-! ## A049368.P14524662981569346008

`A324751(A024787(n+1)+A000009(2*(n+1)))`
-/

namespace A049368.P14524662981569346008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (A024787 (n + 1) + A000009 (2 * (n + 1))).toNat

end

end A049368.P14524662981569346008

/-!
# A049369: Number of n-node planar graphs with minimum degree at least 1.

The programs for A049369, there is no canonical definition to state claims against.
-/

/-! ## A049369.P8241746889827401825

`Δ[A005470(n)]`
-/

namespace A049369.P8241746889827401825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049369.P8241746889827401825

/-! ## A049369.P5930752772435239182

`Δ[A000088(n)-A145269(n)]`
-/

namespace A049369.P5930752772435239182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A145269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049369.P5930752772435239182

/-! ## A049369.P18196136878677635974

`A005470(n+1)-A005470(n)`
-/

namespace A049369.P18196136878677635974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005470 (n + 1) - A005470 n

end

end A049369.P18196136878677635974

/-! ## A049369.P8944388763605726590

`Δ[∑[A002494(n)]-A145269(n)]`
-/

namespace A049369.P8944388763605726590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A145269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049369.P8944388763605726590

/-! ## A049369.P8501108725252911163

`Δ[A361404(∑[n])-A145269(n)]`
-/

namespace A049369.P8501108725252911163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f2 j) - A145269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049369.P8501108725252911163

/-!
# A049370: Number of n-node planar graphs with minimum degree at least 2.

The programs for A049370, there is no canonical definition to state claims against.
-/

/-! ## A049370.P358118206989735885

`A322387(A322419(n)+2)`
-/

namespace A049370.P358118206989735885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322387 (A322419 n + 2).toNat

end

end A049370.P358118206989735885

/-! ## A049370.P12897667731014140022

`A322387(A055502(n)+3)`
-/

namespace A049370.P12897667731014140022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322387 (A055502 n + 3).toNat

end

end A049370.P12897667731014140022

/-! ## A049370.P17386448576315575784

`A322387(or(2, A322419(n)))`
-/

namespace A049370.P17386448576315575784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322387 (Int.lor 2 (A322419 n)).toNat

end

end A049370.P17386448576315575784

/-!
# A049371: Number of n-node planar graphs with minimum degree at least 3.

The programs for A049371, there is no canonical definition to state claims against.
-/

/-! ## A049371.P17517329776963374139

`A004526(A322396(n)-A308903(n))`
-/

namespace A049371.P17517329776963374139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A322396 n - A308903 n).toNat

end

end A049371.P17517329776963374139

/-! ## A049371.P4032391281585354547

`A255072(A349105(n)-A182224(n))`
-/

namespace A049371.P4032391281585354547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A349105 n - A182224 n).toNat

end

end A049371.P4032391281585354547

/-! ## A049371.P7666355701387618773

`A255072(A349105(n)%A182224(n))`
-/

namespace A049371.P7666355701387618773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (Int.tmod (A349105 n) (A182224 n)).toNat

end

end A049371.P7666355701387618773

/-! ## A049371.P18073850533837580909

`and(A006923(n), A169855(A001006(n+4)))`
-/

namespace A049371.P18073850533837580909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006923 n) (A169855 (A001006 (n + 4)).toNat)

end

end A049371.P18073850533837580909

/-!
# A049372: Number of n-node planar graphs with minimum degree at least 4.

The programs for A049372, there is no canonical definition to state claims against.
-/

/-! ## A049372.P442134443976984204

`A353504(A336009(n))`
-/

namespace A049372.P442134443976984204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353504 (A336009 n).toNat

end

end A049372.P442134443976984204

/-! ## A049372.P10464962979280165700

`A353504(A275545(n+1))`
-/

namespace A049372.P10464962979280165700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353504 (A275545 (n + 1)).toNat

end

end A049372.P10464962979280165700

/-! ## A049372.P6685934320091190032

`A353504(A308031(n+1))`
-/

namespace A049372.P6685934320091190032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353504 (A308031 (n + 1)).toNat

end

end A049372.P6685934320091190032

/-! ## A049372.P7408108095619784751

`A318133(or(6, A293165(n+1)))`
-/

namespace A049372.P7408108095619784751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318133 (Int.lor 6 (A293165 (n + 1))).toNat

end

end A049372.P7408108095619784751

/-! ## A049372.P7531815657473052775

`ceil(A363363(n+1)/A054886(n))`
-/

namespace A049372.P7531815657473052775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A363363 (n + 1) : ℚ) / (A054886 n : ℚ)⌉

end

end A049372.P7531815657473052775

/-!
# A049374: A triangle of numbers related to triangle A030527.

The programs for A049374, there is no canonical definition to state claims against.
-/

/-! ## A049374.P12704406211276999899

`A030527(n+1)/A049375(n+1)*A049385(n+1)`
-/

namespace A049374.P12704406211276999899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030527 (n + 1) : ℚ) / (A049375 (n + 1) : ℚ) * (A049385 (n + 1) : ℚ)

end

end A049374.P12704406211276999899

/-! ## A049374.P12801922270981611549

`A230275(A111235(n+1))+A144356(n+1)`
-/

namespace A049374.P12801922270981611549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A111235 (n + 1)).toNat + A144356 (n + 1)

end

end A049374.P12801922270981611549

/-! ## A049374.P144908254034883262

`A144356(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^∏{e}[n+1, #])`
-/

namespace A049374.P144908254034883262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144356 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))).toNat

end

end A049374.P144908254034883262

/-!
# A049375: A convolution triangle of numbers obtained from A034687.

The programs for A049375, the canonical program `A049375.P5424705458056377466` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049375 has offset 1).

The definition of A049375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049375.P5424705458056377466

`5*(5*row(n)+col(n)+1)*T(n-1,k)/(row(n)+1)+(col(n)+1)*T(n-1,k-1)/(row(n)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049375

/-- `5*(5*row(n)+col(n)+1)*T(n-1,k)/(row(n)+1)+(col(n)+1)*T(n-1,k-1)/(row(n)+1)` -/
def P5424705458056377466.Spec : Prop :=
  ∀ n, P5424705458056377466.a n = (A049375 (n + 1) : ℚ)

end A049375

/-! ## A049375.P16350071799874901980

`A030527(n+1)/A049374(n+1)*A049385(n+1)`
-/

namespace A049375.P16350071799874901980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030527 (n + 1) : ℚ) / (A049374 (n + 1) : ℚ) * (A049385 (n + 1) : ℚ)

end

end A049375.P16350071799874901980

namespace A049375

/-- `A030527(n+1)/A049374(n+1)*A049385(n+1)` -/
def P16350071799874901980.Spec : Prop :=
  ∀ n, P16350071799874901980.a n = (A049375 (n + 1) : ℚ)

end A049375

/-!
# A049376: Row sums of triangle A046089.

The programs for A049376, there is no canonical definition to state claims against.
-/

/-! ## A049376.P6658597294355352797

`A291709(2+∑[n+4])`
-/

namespace A049376.P6658597294355352797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049376.P6658597294355352797

/-! ## A049376.P8199454126908788678

`abs(1-A291709(A046691(n+2)))+1`
-/

namespace A049376.P8199454126908788678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A291709 (A046691 (n + 2)).toNat| + 1

end

end A049376.P8199454126908788678

/-! ## A049376.P7848677910657798534

`A291709(A046691(n+2))^A033999(2*n)`
-/

namespace A049376.P7848677910657798534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291709 (A046691 (n + 2)).toNat : ℚ) ^ (A033999 (2 * n) : ℤ)

end

end A049376.P7848677910657798534

/-! ## A049376.P6577647812543291017

`or(A000010(n+1)%2, A291709(A046691(n+2)))`
-/

namespace A049376.P6577647812543291017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A000010 (n + 1)) 2) (A291709 (A046691 (n + 2)).toNat)

end

end A049376.P6577647812543291017

/-! ## A049376.P15212270502935039901

`A291709(A046691(n+2))+floor(A028833(n+1)/9)`
-/

namespace A049376.P15212270502935039901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A046691 (n + 2)).toNat + ⌊(A028833 (n + 1) : ℚ) / 9⌋

end

end A049376.P15212270502935039901

/-! ## A049376.P10386830186325494972

`A291709(A046691(n+2))^A019432(A001316(n))`
-/

namespace A049376.P10386830186325494972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291709 (A046691 (n + 2)).toNat : ℚ) ^ (A019432 (A001316 n).toNat : ℤ)

end

end A049376.P10386830186325494972

/-! ## A049376.P4248157713144954201

`A291709(A046691(n+2))/A019432(A001316(n+1))`
-/

namespace A049376.P4248157713144954201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291709 (A046691 (n + 2)).toNat : ℚ) / (A019432 (A001316 (n + 1)).toNat : ℚ)

end

end A049376.P4248157713144954201

/-!
# A049377: Row sums of triangle A049352.

The programs for A049377, there is no canonical definition to state claims against.
-/

/-! ## A049377.P6388068676702970130

`A291709(n+6+∑[n+4])`
-/

namespace A049377.P6388068676702970130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (n + 6 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049377.P6388068676702970130

/-! ## A049377.P8896489129738953960

`or(1, A291709(A052905(n+2)))`
-/

namespace A049377.P8896489129738953960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A291709 (A052905 (n + 2)).toNat)

end

end A049377.P8896489129738953960

/-! ## A049377.P5672255098854752483

`abs(A291709(A052905(n+2))-A000038(n))`
-/

namespace A049377.P5672255098854752483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291709 (A052905 (n + 2)).toNat - A000038 n|

end

end A049377.P5672255098854752483

/-! ## A049377.P3537591783735254934

`A291709(A052905(n+2))+A000038(n+1)`
-/

namespace A049377.P3537591783735254934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A052905 (n + 2)).toNat + A000038 (n + 1)

end

end A049377.P3537591783735254934

/-! ## A049377.P9609740493609443147

`A059841(2*n)*A291709(A052905(n+2))`
-/

namespace A049377.P9609740493609443147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A291709 (A052905 (n + 2)).toNat

end

end A049377.P9609740493609443147

/-! ## A049377.P13167974603812821694

`lcm(A008836(n+1), A291709(A052905(n+2)))`
-/

namespace A049377.P13167974603812821694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A291709 (A052905 (n + 2)).toNat)

end

end A049377.P13167974603812821694

/-! ## A049377.P1506922444722721113

`A001222(A002407(n+1))*A291709(A052905(n+2))`
-/

namespace A049377.P1506922444722721113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002407 (n + 1)).toNat * A291709 (A052905 (n + 2)).toNat

end

end A049377.P1506922444722721113

/-!
# A049378: Row sums of triangle A049353.

The programs for A049378, there is no canonical definition to state claims against.
-/

/-! ## A049378.P3551164855726977581

`A291709(n+10+∑[n+5])`
-/

namespace A049378.P3551164855726977581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (n + 10 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049378.P3551164855726977581

/-! ## A049378.P7829277428634227932

`A285594((n+1)*a(n-1)+1)-1` with `a(0)=1, a(1)=1`
-/

namespace A049378.P7829277428634227932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A285594 ((n + 1 : ℤ) * a (n - 1) + 1).toNat - 1

end

end A049378.P7829277428634227932

/-!
# A049380: Expansion of (1-25*x)^(-2/5).

The programs for A049380, the canonical program `A049380.P6089236688349124734` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049380 has offset 0).

The definition of A049380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049380.P6089236688349124734

`5*(5*n-3)/n*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049380

/-- `5*(5*n-3)/n*a(n-1)` -/
def P6089236688349124734.Spec : Prop :=
  ∀ n, P6089236688349124734.a n = (A049380 n : ℚ)

end A049380

/-! ## A049380.P5987284107007915315

`5*(5-3/n)*a(n-1)` with `a(0)=1`
-/

namespace A049380.P5987284107007915315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((5 - 3 / (n : ℚ)) * a (n - 1))

end

end A049380.P5987284107007915315

namespace A049380

/-- `5*(5-3/n)*a(n-1)` -/
def P5987284107007915315.Spec : Prop :=
  ∀ n, P5987284107007915315.a n = (A049380 n : ℚ)

end A049380

/-! ## A049380.P12340363506420768399

`A034688(n)/A008548(n)*A047055(n)`
-/

namespace A049380.P12340363506420768399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034688 n : ℚ) / (A008548 n : ℚ) * (A047055 n : ℚ)

end

end A049380.P12340363506420768399

namespace A049380

/-- `A034688(n)/A008548(n)*A047055(n)` -/
def P12340363506420768399.Spec : Prop :=
  ∀ n, P12340363506420768399.a n = (A049380 n : ℚ)

end A049380

/-!
# A049381: Expansion of (1-25*x)^(-3/5).

The programs for A049381, the canonical program `A049381.P17287147166203974341` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049381 has offset 0).

The definition of A049381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049381.P17287147166203974341

`5*(5*n-2)/n*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049381

/-- `5*(5*n-2)/n*a(n-1)` -/
def P17287147166203974341.Spec : Prop :=
  ∀ n, P17287147166203974341.a n = (A049381 n : ℚ)

end A049381

/-! ## A049381.P12294710653021153093

`(5-2/n)*5*a(n-1)` with `a(0)=1`
-/

namespace A049381.P12294710653021153093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 - 2 / (n : ℚ)) * (5 * a (n - 1))

end

end A049381.P12294710653021153093

namespace A049381

/-- `(5-2/n)*5*a(n-1)` -/
def P12294710653021153093.Spec : Prop :=
  ∀ n, P12294710653021153093.a n = (A049381 n : ℚ)

end A049381

/-! ## A049381.P3011592550039839700

`3/A016885(n)*A049396(n)`
-/

namespace A049381.P3011592550039839700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A016885 n : ℚ) * (A049396 n : ℚ)

end

end A049381.P3011592550039839700

namespace A049381

/-- `3/A016885(n)*A049396(n)` -/
def P3011592550039839700.Spec : Prop :=
  ∀ n, P3011592550039839700.a n = (A049381 n : ℚ)

end A049381

/-!
# A049382: Expansion of (1-25*x)^(-4/5).

The programs for A049382, the canonical program `A049382.P16502268026034456369` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049382 has offset 0).

The definition of A049382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049382.P16502268026034456369

`5*(5*n-1)/n*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049382

/-- `5*(5*n-1)/n*a(n-1)` -/
def P16502268026034456369.Spec : Prop :=
  ∀ n, P16502268026034456369.a n = (A049382 n : ℚ)

end A049382

/-! ## A049382.P5699395752399907870

`A248326(∑[n]+n)`
-/

namespace A049382.P5699395752399907870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248326 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A049382.P5699395752399907870

namespace A049382

/-- `A248326(∑[n]+n)` -/
def P5699395752399907870.Spec : Prop :=
  ∀ n, P5699395752399907870.a n = A049382 n

end A049382

/-! ## A049382.P14953196186951482752

`(n+1)*A025750(n+1)`
-/

namespace A049382.P14953196186951482752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025750 (n + 1)

end

end A049382.P14953196186951482752

namespace A049382

/-- `(n+1)*A025750(n+1)` -/
def P14953196186951482752.Spec : Prop :=
  ∀ n, P14953196186951482752.a n = A049382 n

end A049382

/-! ## A049382.P6583320398515185864

`(n+1)*record[A049223(n+1)]`
-/

namespace A049382.P6583320398515185864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049382.P6583320398515185864

namespace A049382

/-- `(n+1)*record[A049223(n+1)]` -/
def P6583320398515185864.Spec : Prop :=
  ∀ n, P6583320398515185864.a n = A049382 n

end A049382

/-! ## A049382.P14513787462115154931

`(n+1)*A049223(A000124(n))`
-/

namespace A049382.P14513787462115154931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049223 (A000124 n).toNat

end

end A049382.P14513787462115154931

namespace A049382

/-- `(n+1)*A049223(A000124(n))` -/
def P14513787462115154931.Spec : Prop :=
  ∀ n, P14513787462115154931.a n = A049382 n

end A049382

/-! ## A049382.P15287435050420771433

`record[A049223(n+1)*A143182(n)]`
-/

namespace A049382.P15287435050420771433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049223 (n + 1) * A143182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049382.P15287435050420771433

namespace A049382

/-- `record[A049223(n+1)*A143182(n)]` -/
def P15287435050420771433.Spec : Prop :=
  ∀ n, P15287435050420771433.a n = A049382 n

end A049382

/-! ## A049382.P334052847881160903

`A000351(n)/A000142(n)*A008546(n)`
-/

namespace A049382.P334052847881160903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / (A000142 n : ℚ) * (A008546 n : ℚ)

end

end A049382.P334052847881160903

namespace A049382

/-- `A000351(n)/A000142(n)*A008546(n)` -/
def P334052847881160903.Spec : Prop :=
  ∀ n, P334052847881160903.a n = (A049382 n : ℚ)

end A049382

/-!
# A049385: Triangle of numbers related to triangle A049375; generalization of Stirling numbers of second kind A008277, Lah-numbers A008297...

The programs for A049385, there is no canonical definition to state claims against.
-/

/-! ## A049385.P830489866351430071

`A049374(n+1)/A030527(n+1)*A049375(n+1)`
-/

namespace A049385.P830489866351430071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049374 (n + 1) : ℚ) / (A030527 (n + 1) : ℚ) * (A049375 (n + 1) : ℚ)

end

end A049385.P830489866351430071

/-! ## A049385.P4831612013149496582

`A134278(n+1)%p?[2^n-1]`
-/

namespace A049385.P4831612013149496582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134278 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A049385.P4831612013149496582

/-! ## A049385.P17910825152972141530

`A134278(∑[A361675(n)])`
-/

namespace A049385.P17910825152972141530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134278 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049385.P17910825152972141530

/-!
# A049386: Binary order of 2^n-th prime.

The programs for A049386, there is no canonical definition to state claims against.
-/

/-! ## A049386.P13961875327019336012

`round(sqrt(log2(acot(n))²+1))+n`
-/

namespace A049386.P13961875327019336012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.logb 2 (SequenceMachineLib.acot (n : ℝ)) ^ 2 + 1)) + (n : ℤ)

end

end A049386.P13961875327019336012

/-! ## A049386.P163368248010665185

`abs(1-(floor(log2(3*n+1))+n))`
-/

namespace A049386.P163368248010665185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.log 2 (3 * n + 1) + n : ℤ)|

end

end A049386.P163368248010665185

/-! ## A049386.P6563865417453767722

`∑[char[round(2^n/3)]+floor(atan(n))]`
-/

namespace A049386.P6563865417453767722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049386.P6563865417453767722

/-! ## A049386.P7792470019306928380

`comp[floor(∑[(∑[2^n]+4)/3])%(5^n)]`
-/

namespace A049386.P7792470019306928380
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j + 4 : ℕ) : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ (5 ^ n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A049386.P7792470019306928380

/-! ## A049386.P5172307968828615878

`comp[floor(∑[(∑[2^n]+4)/3])]+floor(acot(n))`
-/

namespace A049386.P5172307968828615878
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j + 4 : ℕ) : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A049386.P5172307968828615878

/-! ## A049386.P14533568366767932660

`a(n-1)+char[round(2^n/3)]+1` with `a(0)=1, a(1)=2`
-/

namespace A049386.P14533568366767932660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A049386.P14533568366767932660

/-! ## A049386.P8157953127825838200

`comp[floor(∑[(∑[2^n]+4)/3])]^ceil(sin(n)²)`
-/

namespace A049386.P8157953127825838200
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j + 4 : ℕ) : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A049386.P8157953127825838200

/-! ## A049386.P16743606778567575865

`floor(log2(3*n+1))+(2*n+1)%(n+2)`
-/

namespace A049386.P16743606778567575865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (3 * n + 1) + (2 * n + 1) % (n + 2)

end

end A049386.P16743606778567575865

/-! ## A049386.P1147317984703496739

`comp[floor(∑[(2^(n+1)+3)/3])]+C(2, n+2)`
-/

namespace A049386.P1147317984703496739
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) + 3 : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + Nat.choose 2 (n + 2)

end

end A049386.P1147317984703496739

/-! ## A049386.P10222109579160807532

`floor(log2(A176662(n)))`
-/

namespace A049386.P10222109579160807532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A176662 n).toNat

end

end A049386.P10222109579160807532

/-!
# A049387: Number of rooted unlabeled strongly connected digraphs with n nodes.

The programs for A049387, there is no canonical definition to state claims against.
-/

/-! ## A049387.P12202996775947960306

`round(A350794(n+2)/2)`
-/

namespace A049387.P12202996775947960306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A350794 (n + 2) : ℚ) / 2)

end

end A049387.P12202996775947960306

/-! ## A049387.P15322688698295966789

`A011782(2*n)/A011782(n+1)²*A350794(n+2)`
-/

namespace A049387.P15322688698295966789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n) : ℚ) / (A011782 (n + 1) ^ 2 : ℚ) * (A350794 (n + 2) : ℚ)

end

end A049387.P15322688698295966789

/-! ## A049387.P5188932582005575614

`A011782(2*n)/A011782(2*n+1)*A350794(n+2)`
-/

namespace A049387.P5188932582005575614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n) : ℚ) / (A011782 (2 * n + 1) : ℚ) * (A350794 (n + 2) : ℚ)

end

end A049387.P5188932582005575614

/-! ## A049387.P14083426011172407348

`A350794(n+2)/A020639(A192808(n))`
-/

namespace A049387.P14083426011172407348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350794 (n + 2) : ℚ) / (A020639 (A192808 n).toNat : ℚ)

end

end A049387.P14083426011172407348

/-!
# A049388: a(n) = (n+7)!/7!.

The programs for A049388, the canonical program `A049388.P10382191610260255718` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049388 has offset 0).

The definition of A049388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049388.P8292320767875962588

`(n+7)!/7!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049388.P8292320767875962588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 7) : ℚ) / (Nat.factorial 7 : ℚ)

end

end A049388.P8292320767875962588

namespace A049388

/-- `(n+7)!/7!` -/
def P8292320767875962588.Spec : Prop :=
  ∀ n, P8292320767875962588.a n = (A049388 n : ℚ)

end A049388

/-! ## A049388.P10382191610260255718

`A173333(C(n+7, 2)+7)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049388

/-- `A173333(C(n+7, 2)+7)` -/
def P10382191610260255718.Spec : Prop :=
  ∀ n, P10382191610260255718.a n = A049388 n

theorem P10382191610260255718.correct : P10382191610260255718.Spec := by
  intro n
  simp only [A049388]

end A049388

/-! ## A049388.P8739455061711419166

`∏[n+7]/7`
-/

namespace A049388.P8739455061711419166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7

end

end A049388.P8739455061711419166

namespace A049388

/-- `∏[n+7]/7` -/
def P8739455061711419166.Spec : Prop :=
  ∀ n, P8739455061711419166.a n = (A049388 n : ℚ)

end A049388

/-! ## A049388.P14016629207814219161

`C(n+7, 7)*n!`
-/

namespace A049388.P14016629207814219161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 * Nat.factorial n

end

end A049388.P14016629207814219161

namespace A049388

/-- `C(n+7, 7)*n!` -/
def P14016629207814219161.Spec : Prop :=
  ∀ n, (P14016629207814219161.a n : ℤ) = A049388 n

end A049388

/-! ## A049388.P5235668915660100495

`∏[1+a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A049388.P5235668915660100495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  1 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049388.P5235668915660100495

namespace A049388

/-- `∏[1+a(n-1)]` -/
def P5235668915660100495.Spec : Prop :=
  ∀ n, (P5235668915660100495.a n : ℤ) = A049388 n

end A049388

/-! ## A049388.P9035528931199040163

`(7+n)*a(n-1)` with `a(0)=1`
-/

namespace A049388.P9035528931199040163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (7 + n) * a (n - 1)

end

end A049388.P9035528931199040163

namespace A049388

/-- `(7+n)*a(n-1)` -/
def P9035528931199040163.Spec : Prop :=
  ∀ n, (P9035528931199040163.a n : ℤ) = A049388 n

end A049388

/-! ## A049388.P16311376065247266788

`∏[(n+7)^ceil(sin(n)²)]`
-/

namespace A049388.P16311376065247266788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049388.P16311376065247266788

namespace A049388

/-- `∏[(n+7)^ceil(sin(n)²)]` -/
def P16311376065247266788.Spec : Prop :=
  ∀ n, P16311376065247266788.a n = (A049388 n : ℚ)

end A049388

/-! ## A049388.P15642128393841254567

`∏[dr((n+5)!)+n-2]`
-/

namespace A049388.P15642128393841254567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (Nat.factorial (n + 5) : ℤ) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049388.P15642128393841254567

namespace A049388

/-- `∏[dr((n+5)!)+n-2]` -/
def P15642128393841254567.Spec : Prop :=
  ∀ n, P15642128393841254567.a n = A049388 n

end A049388

/-! ## A049388.P9838635107484933177

`∏[dr(3^(n+1))+n-2]`
-/

namespace A049388.P9838635107484933177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 ^ (n + 1) : ℤ) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049388.P9838635107484933177

namespace A049388

/-- `∏[dr(3^(n+1))+n-2]` -/
def P9838635107484933177.Spec : Prop :=
  ∀ n, P9838635107484933177.a n = A049388 n

end A049388

/-! ## A049388.P5790280300143171705

`∏[gcd(8, (n+3)!)+n-1]`
-/

namespace A049388.P5790280300143171705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 8 (Nat.factorial (n + 3)) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049388.P5790280300143171705

namespace A049388

/-- `∏[gcd(8, (n+3)!)+n-1]` -/
def P5790280300143171705.Spec : Prop :=
  ∀ n, P5790280300143171705.a n = A049388 n

end A049388

/-!
# A049389: a(n) = (n+8)!/8!.

The programs for A049389, the canonical program `A049389.P9684220210537165956` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049389 has offset 0).

The definition of A049389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+8)!/8!` (program `A049389.P184417335868236512`, by `A049389.P184417335868236512.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049389.P184417335868236512

`(n+8)!/8!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049389.P184417335868236512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 8) : ℚ) / (Nat.factorial 8 : ℚ)

end

end A049389.P184417335868236512

namespace A049389

/-- `(n+8)!/8!` -/
def P184417335868236512.Spec : Prop :=
  ∀ n, P184417335868236512.a n = (A049389 n : ℚ)

theorem P184417335868236512.correct : P184417335868236512.Spec := by
  intro n
  simp only [A049389, Nat.add_sub_cancel, A049389.P184417335868236512.a, A049389.P9684220210537165956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049389

/-! ## A049389.P13309395198035344969

`A173333(C(n+8, 2)+8)`
-/

namespace A049389.P13309395198035344969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (Nat.choose (n + 8) 2 + 8)

end

end A049389.P13309395198035344969

namespace A049389

/-- `A173333(C(n+8, 2)+8)` -/
def P13309395198035344969.Spec : Prop :=
  ∀ n, P13309395198035344969.a n = A049389 n

end A049389

/-! ## A049389.P9684220210537165956

`n!*C(n+8, 8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049389

/-- `n!*C(n+8, 8)` -/
def P9684220210537165956.Spec : Prop :=
  ∀ n, (P9684220210537165956.a n : ℤ) = A049389 n

theorem P9684220210537165956.correct : P9684220210537165956.Spec := by
  intro n
  simp only [A049389]

end A049389

/-! ## A049389.P9739835696137123655

`∏[1+a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A049389.P9739835696137123655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  1 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049389.P9739835696137123655

namespace A049389

/-- `∏[1+a(n-1)]` -/
def P9739835696137123655.Spec : Prop :=
  ∀ n, (P9739835696137123655.a n : ℤ) = A049389 n

end A049389

/-! ## A049389.P3023372616717878016

`(8+n)*a(n-1)` with `a(0)=1`
-/

namespace A049389.P3023372616717878016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (8 + n) * a (n - 1)

end

end A049389.P3023372616717878016

namespace A049389

/-- `(8+n)*a(n-1)` -/
def P3023372616717878016.Spec : Prop :=
  ∀ n, (P3023372616717878016.a n : ℤ) = A049389 n

end A049389

/-! ## A049389.P1633975549275784274

`∏[dr(1-9*n)+n]`
-/

namespace A049389.P1633975549275784274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - (9 * n : ℤ)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049389.P1633975549275784274

namespace A049389

/-- `∏[dr(1-9*n)+n]` -/
def P1633975549275784274.Spec : Prop :=
  ∀ n, (P1633975549275784274.a n : ℤ) = A049389 n

end A049389

/-! ## A049389.P16775945130722628013

`∏[C(n+8, ceil(sin(n)²))]`
-/

namespace A049389.P16775945130722628013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) ⌈Real.sin (n : ℝ) ^ 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049389.P16775945130722628013

namespace A049389

/-- `∏[C(n+8, ceil(sin(n)²))]` -/
def P16775945130722628013.Spec : Prop :=
  ∀ n, (P16775945130722628013.a n : ℤ) = A049389 n

end A049389

/-! ## A049389.P7328088332774095761

`C(n+8, 8)*∏[round(sqrt(n²+1))]`
-/

namespace A049389.P7328088332774095761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A049389.P7328088332774095761

namespace A049389

/-- `C(n+8, 8)*∏[round(sqrt(n²+1))]` -/
def P7328088332774095761.Spec : Prop :=
  ∀ n, P7328088332774095761.a n = A049389 n

end A049389

/-! ## A049389.P17520644736609798869

`lcm(a(n-2)+a(n-1), a(n-1))` with `a(0)=1, a(1)=9`
-/

namespace A049389.P17520644736609798869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  Nat.lcm (a (n - 2) + a (n - 1)) (a (n - 1))

end

end A049389.P17520644736609798869

namespace A049389

/-- `lcm(a(n-2)+a(n-1), a(n-1))` -/
def P17520644736609798869.Spec : Prop :=
  ∀ n, (P17520644736609798869.a n : ℤ) = A049389 n

end A049389

/-! ## A049389.P993363637323001906

`abs(A051380(∑[n]))`
-/

namespace A049389.P993363637323001906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051380 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A049389.P993363637323001906

namespace A049389

/-- `abs(A051380(∑[n]))` -/
def P993363637323001906.Spec : Prop :=
  ∀ n, P993363637323001906.a n = A049389 n

end A049389

/-!
# A049393: Expansion of (1-25*x)^(1/5).

The programs for A049393, there is no canonical definition to state claims against.
-/

/-! ## A049393.P4315878300192775937

`3*(3-4/n)*a(n-1)+(16-18/n)*a(n-1)` with `a(0)=1`
-/

namespace A049393.P4315878300192775937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((3 - 4 / (n : ℚ)) * a (n - 1)) + (16 - 18 / (n : ℚ)) * a (n - 1)

end

end A049393.P4315878300192775937

/-! ## A049393.P537037027702423092

`A049382(n)/(2-A016861(n))`
-/

namespace A049393.P537037027702423092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049382 n : ℚ) / (2 - A016861 n : ℚ)

end

end A049393.P537037027702423092

/-!
# A049394: Expansion of (1-25*x)^(-6/5).

The programs for A049394, there is no canonical definition to state claims against.
-/

/-! ## A049394.P5832744155348893328

`(5/n+25)*a(n-1)` with `a(0)=1`
-/

namespace A049394.P5832744155348893328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 / (n : ℚ) + 25) * a (n - 1)

end

end A049394.P5832744155348893328

/-! ## A049394.P8398075053837659275

`(n+1)*A034687(n+1)`
-/

namespace A049394.P8398075053837659275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034687 (n + 1)

end

end A049394.P8398075053837659275

/-! ## A049394.P11676825784015967291

`(n+1)*record[A049375(n+1)]`
-/

namespace A049394.P11676825784015967291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049394.P11676825784015967291

/-! ## A049394.P1003738620942755727

`A016861(n)*A034688(n)`
-/

namespace A049394.P1003738620942755727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A034688 n

end

end A049394.P1003738620942755727

/-! ## A049394.P11571713517102919630

`(n+1)*A049375(A000217(n)+1)`
-/

namespace A049394.P11571713517102919630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049375 (A000217 n + 1).toNat

end

end A049394.P11571713517102919630

/-! ## A049394.P10360042651137651961

`ratio[A008548(n)]*A034688(n)`
-/

namespace A049394.P10360042651137651961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008548 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A034688 n : ℚ)

end

end A049394.P10360042651137651961

/-! ## A049394.P16682932087318747771

`A008548(n+1)/A000142(n)*A000351(n)`
-/

namespace A049394.P16682932087318747771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008548 (n + 1) : ℚ) / (A000142 n : ℚ) * (A000351 n : ℚ)

end

end A049394.P16682932087318747771

/-! ## A049394.P14330770637084164879

`A008548(n+1)/A008548(n)*A034688(n)`
-/

namespace A049394.P14330770637084164879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008548 (n + 1) : ℚ) / (A008548 n : ℚ) * (A034688 n : ℚ)

end

end A049394.P14330770637084164879

/-!
# A049395: Expansion of (1-25*x)^(-7/5).

The programs for A049395, the canonical program `A049395.P13438896250266851871` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049395 has offset 0).

The definition of A049395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049395.P13438896250266851871

`(25+10/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049395

/-- `(25+10/n)*a(n-1)` -/
def P13438896250266851871.Spec : Prop :=
  ∀ n, P13438896250266851871.a n = (A049395 n : ℚ)

end A049395

/-! ## A049395.P5906345413514784952

`a(n-1)/(2*n)*A053741(n)` with `a(0)=1`
-/

namespace A049395.P5906345413514784952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (2 * n : ℚ) * (A053741 n : ℚ)

end

end A049395.P5906345413514784952

namespace A049395

/-- `a(n-1)/(2*n)*A053741(n)` -/
def P5906345413514784952.Spec : Prop :=
  ∀ n, P5906345413514784952.a n = (A049395 n : ℚ)

end A049395

/-! ## A049395.P15453135218160850632

`5*a(n-1)/(2*n)*A017365(n)-A049380(n)` with `a(0)=1`
-/

namespace A049395.P15453135218160850632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) / (2 * n : ℚ) * (A017365 n : ℚ) - (A049380 n : ℚ)

end

end A049395.P15453135218160850632

namespace A049395

/-- `5*a(n-1)/(2*n)*A017365(n)-A049380(n)` -/
def P15453135218160850632.Spec : Prop :=
  ∀ n, P15453135218160850632.a n = (A049395 n : ℚ)

end A049395

/-! ## A049395.P12446438552464793981

`5*a(n-1)*A016873(n)/n` with `a(0)=1`
-/

namespace A049395.P12446438552464793981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) * (A016873 n : ℚ) / (n : ℚ)

end

end A049395.P12446438552464793981

namespace A049395

/-- `5*a(n-1)*A016873(n)/n` -/
def P12446438552464793981.Spec : Prop :=
  ∀ n, P12446438552464793981.a n = (A049395 n : ℚ)

end A049395

/-! ## A049395.P6913659240171788709

`A034688(n)/A008548(n)*A034323(n+1)`
-/

namespace A049395.P6913659240171788709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034688 n : ℚ) / (A008548 n : ℚ) * (A034323 (n + 1) : ℚ)

end

end A049395.P6913659240171788709

namespace A049395

/-- `A034688(n)/A008548(n)*A034323(n+1)` -/
def P6913659240171788709.Spec : Prop :=
  ∀ n, P6913659240171788709.a n = (A049395 n : ℚ)

end A049395

/-!
# A049396: Expansion of (1-25*x)^(-8/5).

The programs for A049396, there is no canonical definition to state claims against.
-/

/-! ## A049396.P15147432417200058242

`(3/n+5)*5*a(n-1)` with `a(0)=1`
-/

namespace A049396.P15147432417200058242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 / (n : ℚ) + 5) * (5 * a (n - 1))

end

end A049396.P15147432417200058242

/-! ## A049396.P9243473068992183821

`5*a(n-1)/n*A016885(n)` with `a(0)=1`
-/

namespace A049396.P9243473068992183821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) / (n : ℚ) * (A016885 n : ℚ)

end

end A049396.P9243473068992183821

/-! ## A049396.P3283731257227182249

`A016885(n)/3*A049381(n)`
-/

namespace A049396.P3283731257227182249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016885 n : ℚ) / 3 * (A049381 n : ℚ)

end

end A049396.P3283731257227182249

/-!
# A049397: Expansion of (1-25*x)^(-9/5).

The programs for A049397, there is no canonical definition to state claims against.
-/

/-! ## A049397.P4052777301431064087

`(4/n+5)*5*a(n-1)` with `a(0)=1`
-/

namespace A049397.P4052777301431064087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 / (n : ℚ) + 5) * (5 * a (n - 1))

end

end A049397.P4052777301431064087

/-! ## A049397.P2105764251320161047

`5*a(n-1)/(2*n)*A017365(n)` with `a(0)=1`
-/

namespace A049397.P2105764251320161047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) / (2 * n : ℚ) * (A017365 n : ℚ)

end

end A049397.P2105764251320161047

/-! ## A049397.P18161913362087659099

`A034301(n+1)/A008546(n)*A049382(n)`
-/

namespace A049397.P18161913362087659099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034301 (n + 1) : ℚ) / (A008546 n : ℚ) * (A049382 n : ℚ)

end

end A049397.P18161913362087659099

/-! ## A049397.P2958300504934094121

`lcm(∏[5*n+4]/4, 5^n)/n!`
-/

namespace A049397.P2958300504934094121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4)) (5 ^ n : ℤ) : ℚ) / (Nat.factorial n : ℚ)

end

end A049397.P2958300504934094121

/-!
# A049398: a(n) = (n+9)!/9!.

The programs for A049398, the canonical program `A049398.P13266936542833178091` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049398 has offset 0).

The definition of A049398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+9)!/9!` (program `A049398.P7974754684802605787`, by `A049398.P7974754684802605787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049398.P7974754684802605787

`(n+9)!/9!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049398.P7974754684802605787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 9) : ℚ) / (Nat.factorial 9 : ℚ)

end

end A049398.P7974754684802605787

namespace A049398

/-- `(n+9)!/9!` -/
def P7974754684802605787.Spec : Prop :=
  ∀ n, P7974754684802605787.a n = (A049398 n : ℚ)

theorem P7974754684802605787.correct : P7974754684802605787.Spec := by
  intro n
  simp only [A049398, Nat.add_sub_cancel, A049398.P7974754684802605787.a, A049398.P13266936542833178091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049398

/-! ## A049398.P2602320510661076191

`A173333(C(n+9, 2)+9)`
-/

namespace A049398.P2602320510661076191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (Nat.choose (n + 9) 2 + 9)

end

end A049398.P2602320510661076191

namespace A049398

/-- `A173333(C(n+9, 2)+9)` -/
def P2602320510661076191.Spec : Prop :=
  ∀ n, P2602320510661076191.a n = A049398 n

end A049398

/-! ## A049398.P5782718694260812864

`∏[n+9]/9`
-/

namespace A049398.P5782718694260812864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9

end

end A049398.P5782718694260812864

namespace A049398

/-- `∏[n+9]/9` -/
def P5782718694260812864.Spec : Prop :=
  ∀ n, P5782718694260812864.a n = (A049398 n : ℚ)

end A049398

/-! ## A049398.P11481065749888545093

`∏[dr(9^n)+n]`
-/

namespace A049398.P11481065749888545093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (9 ^ n : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049398.P11481065749888545093

namespace A049398

/-- `∏[dr(9^n)+n]` -/
def P11481065749888545093.Spec : Prop :=
  ∀ n, (P11481065749888545093.a n : ℤ) = A049398 n

end A049398

/-! ## A049398.P13266936542833178091

`n!*C(n+9, 9)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A049398

/-- `n!*C(n+9, 9)` -/
def P13266936542833178091.Spec : Prop :=
  ∀ n, (P13266936542833178091.a n : ℤ) = A049398 n

theorem P13266936542833178091.correct : P13266936542833178091.Spec := by
  intro n
  simp only [A049398]

end A049398

/-! ## A049398.P3847287870271860900

`∏[1+a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A049398.P3847287870271860900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  1 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049398.P3847287870271860900

namespace A049398

/-- `∏[1+a(n-1)]` -/
def P3847287870271860900.Spec : Prop :=
  ∀ n, (P3847287870271860900.a n : ℤ) = A049398 n

end A049398

/-! ## A049398.P16517189420933004566

`(n+9)*a(n-1)` with `a(0)=1`
-/

namespace A049398.P16517189420933004566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 9) * a (n - 1)

end

end A049398.P16517189420933004566

namespace A049398

/-- `(n+9)*a(n-1)` -/
def P16517189420933004566.Spec : Prop :=
  ∀ n, (P16517189420933004566.a n : ℤ) = A049398 n

end A049398

/-! ## A049398.P18394405663227285284

`∏[gcd(3, (n+2)!)²+n]`
-/

namespace A049398.P18394405663227285284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (Nat.factorial (n + 2)) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049398.P18394405663227285284

namespace A049398

/-- `∏[gcd(3, (n+2)!)²+n]` -/
def P18394405663227285284.Spec : Prop :=
  ∀ n, (P18394405663227285284.a n : ℤ) = A049398 n

end A049398

/-! ## A049398.P12640717224754227884

`abs(A051523(∑[n]))`
-/

namespace A049398.P12640717224754227884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051523 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A049398.P12640717224754227884

namespace A049398

/-- `abs(A051523(∑[n]))` -/
def P12640717224754227884.Spec : Prop :=
  ∀ n, P12640717224754227884.a n = A049398 n

end A049398

/-! ## A049398.P14003339440665178912

`∏[A171891(n+1)]`
-/

namespace A049398.P14003339440665178912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049398.P14003339440665178912

namespace A049398

/-- `∏[A171891(n+1)]` -/
def P14003339440665178912.Spec : Prop :=
  ∀ n, P14003339440665178912.a n = A049398 n

end A049398

