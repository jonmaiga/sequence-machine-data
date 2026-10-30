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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A331400: The grid points visible from the central point of an infinite 2D square lattice where all grid points are numbered as in the Ulam spiral.

The programs for A331400, there is no canonical definition to state claims against.
-/

/-! ## A331400.P10138021437986278188

`∑[A000034(A017883(n)%A325606(n+1))]`
-/

namespace A331400.P10138021437986278188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.tmod (A017883 n) (A325606 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331400.P10138021437986278188

/-! ## A331400.P13356914976654254073

`lt[A025473(A379200(n+1)), A242450(n)]`
-/

namespace A331400.P13356914976654254073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (A379200 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242450 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331400.P13356914976654254073

/-! ## A331400.P6322538020572017750

`∑[A000034(A017883(n)^A129088(n+1))]`
-/

namespace A331400.P6322538020572017750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.roundAway ((A017883 n : ℚ) ^ (A129088 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331400.P6322538020572017750

/-! ## A331400.P16382353756923883049

`∑[A010883(A017883(n)^A129088(n+1))]`
-/

namespace A331400.P16382353756923883049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (SequenceMachineLib.roundAway ((A017883 n : ℚ) ^ (A129088 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331400.P16382353756923883049

/-! ## A331400.P9749664210082739608

`∑[A014695(A017883(n)^A129088(n+1))]`
-/

namespace A331400.P9749664210082739608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (SequenceMachineLib.roundAway ((A017883 n : ℚ) ^ (A129088 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331400.P9749664210082739608

/-!
# A331402: a(n) = [x^(n^n)] Product_{k>=1} 1 / (1 - x^(k^n)).

The programs for A331402, there is no canonical definition to state claims against.
-/

/-! ## A331402.P16646629268841493696

`A259799(2*(n+1)²+1)`
-/

namespace A331402.P16646629268841493696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (2 * (n + 1) ^ 2 + 1)

end

end A331402.P16646629268841493696

/-! ## A331402.P929478706466160256

`record[A259799(A168281(n+1)+1)]`
-/

namespace A331402.P929478706466160256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A168281 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331402.P929478706466160256

/-!
# A331403: E.g.f.: 1 / ((1 + x) * sqrt(1 - 2*x)).

The programs for A331403, there is no canonical definition to state claims against.
-/

/-! ## A331403.P8318411289741793875

`∏[abs(1-2*n)]-n*a(n-1)` with `a(0)=1`
-/

namespace A331403.P8318411289741793875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) * a (n - 1)

end

end A331403.P8318411289741793875

/-! ## A331403.P7475832857107284777

`abs(∏[a(n-1)-2])-a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A331403.P7475832857107284777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A331403.P7475832857107284777

/-! ## A331403.P11658336577131617075

`or(1, -∏[2*n-1])-a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A331403.P11658336577131617075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lor 1 (-(∏ j ∈ Finset.range (n + 1), f1 j)) : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A331403.P11658336577131617075

/-! ## A331403.P3598419734549853157

`xor(-2, ∏[2*n-1])-a(n-1)/n^-1` with `a(0)=1`
-/

namespace A331403.P3598419734549853157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.xor (-2) (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A331403.P3598419734549853157

/-! ## A331403.P16162750013147573898

`A001147(n)-a(n-1)*n` with `a(0)=1`
-/

namespace A331403.P16162750013147573898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001147 n - a (n - 1) * (n : ℤ)

end

end A331403.P16162750013147573898

/-! ## A331403.P11535329268905663614

`A133221(2*n)-a(n-1)/n^-1` with `a(0)=1`
-/

namespace A331403.P11535329268905663614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A133221 (2 * n) : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A331403.P11535329268905663614

/-! ## A331403.P1429545255641016939

`A123023(2*n)-floor(n*a(floor(n²/(n+1))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A331403.P1429545255641016939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123023 (2 * n) - (n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A331403.P1429545255641016939

/-! ## A331403.P819543495429820062

`∏[A247328(n+1)]/A247328(n+1)-a(n-1)/n^-1` with `a(0)=1`
-/

namespace A331403.P819543495429820062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A247328 (n + 1) : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A331403.P819543495429820062

/-!
# A331406: Array read by antidiagonals: A(n,m) is the number of ways to place non-adjacent counters on the black squares of a 2n-1 X 2m-1 checker board.

The programs for A331406, there is no canonical definition to state claims against.
-/

/-! ## A331406.P7809711240582779258

`A257212(A296548(n)-1)`
-/

namespace A331406.P7809711240582779258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A296548 n - 1).toNat

end

end A331406.P7809711240582779258

/-! ## A331406.P6606467933593232483

`A061392(A303764(A022167(n)))`
-/

namespace A331406.P6606467933593232483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A303764 (A022167 n).toNat).toNat

end

end A331406.P6606467933593232483

/-! ## A331406.P15484844208870582186

`A286389(A000196(A296548(n)))`
-/

namespace A331406.P15484844208870582186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 (A000196 (A296548 n).toNat).toNat

end

end A331406.P15484844208870582186

/-! ## A331406.P15860330841278655561

`A299906(n)+A199580(A299905(n))`
-/

namespace A331406.P15860330841278655561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299906 n + A199580 (A299905 n).toNat

end

end A331406.P15860330841278655561

/-! ## A331406.P11084920907175171904

`A059953(A046802(n))`
-/

namespace A331406.P11084920907175171904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059953 (A046802 n).toNat

end

end A331406.P11084920907175171904

/-!
# A331407: Numbers at which the sum of the iterated exponential totient function (A331273) attains a record.

The programs for A331407, there is no canonical definition to state claims against.
-/

/-! ## A331407.P7112370723546150878

`record[A331737(A307870(n+1))]`
-/

namespace A331407.P7112370723546150878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A307870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331407.P7112370723546150878

/-! ## A331407.P702683377038909476

`A006068(A003945(n)*A166861(n))`
-/

namespace A331407.P702683377038909476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A003945 n * A166861 n).toNat

end

end A331407.P702683377038909476

/-! ## A331407.P3190214195228950634

`A356191(A000079(n)*A003320(n))`
-/

namespace A331407.P3190214195228950634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (A000079 n * A003320 n).toNat

end

end A331407.P3190214195228950634

/-!
# A331408: Number of subsets of {1..n} that contain exactly three odd numbers.

The programs for A331408, the canonical program `A331408.P6077468583728711160` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331408 has offset 1).

The definition of A331408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331408.P6077468583728711160

`8*a(n-2)-24*a(n-4)+32*a(n-6)-16*a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=4, a(5)=8, a(6)=32, a(7)=64`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331408

/-- `8*a(n-2)-24*a(n-4)+32*a(n-6)-16*a(n-8)` -/
def P6077468583728711160.Spec : Prop :=
  ∀ n, P6077468583728711160.a n = A331408 (n + 1)

theorem P6077468583728711160.correct : P6077468583728711160.Spec := by
  intro n
  simp only [A331408, Nat.add_sub_cancel]

end A331408

/-! ## A331408.P8081510758666209730

`ogf((4x^4+8x^5)/(1-8x^2+24x^4-32x^6+16x^8))`
-/

namespace A331408.P8081510758666209730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 4, 8] [1, 0, -8, 0, 24, 0, -32, 0, 16] n

end

end A331408.P8081510758666209730

namespace A331408

/-- `ogf((4x^4+8x^5)/(1-8x^2+24x^4-32x^6+16x^8))` -/
def P8081510758666209730.Spec : Prop :=
  ∀ n, P8081510758666209730.a n = A331408 (n + 1)

end A331408

/-! ## A331408.P3648040474845007211

`C(ceil((n+1)/2), 3)*A016116(n+1)`
-/

namespace A331408.P3648040474845007211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ⌈(n + 1 : ℚ) / 2⌉.toNat 3 : ℤ) * A016116 (n + 1)

end

end A331408.P3648040474845007211

namespace A331408

/-- `C(ceil((n+1)/2), 3)*A016116(n+1)` -/
def P3648040474845007211.Spec : Prop :=
  ∀ n, P3648040474845007211.a n = A331408 (n + 1)

end A331408

/-! ## A331408.P5099268980210686304

`A000034(n)*A290026(A008619(n))`
-/

namespace A331408.P5099268980210686304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A290026 (A008619 n).toNat

end

end A331408.P5099268980210686304

namespace A331408

/-- `A000034(n)*A290026(A008619(n))` -/
def P5099268980210686304.Spec : Prop :=
  ∀ n, P5099268980210686304.a n = A331408 (n + 1)

end A331408

/-! ## A331408.P5166498306082795060

`A010673(n)!*A290026(A008619(n))`
-/

namespace A331408.P5166498306082795060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010673 n).toNat : ℤ) * A290026 (A008619 n).toNat

end

end A331408.P5166498306082795060

namespace A331408

/-- `A010673(n)!*A290026(A008619(n))` -/
def P5166498306082795060.Spec : Prop :=
  ∀ n, P5166498306082795060.a n = A331408 (n + 1)

end A331408

/-! ## A331408.P4926433160333511219

`∑[A161680(A142150(n))]*A060546(n)`
-/

namespace A331408.P4926433160333511219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A060546 n

end

end A331408.P4926433160333511219

namespace A331408

/-- `∑[A161680(A142150(n))]*A060546(n)` -/
def P4926433160333511219.Spec : Prop :=
  ∀ n, P4926433160333511219.a n = A331408 (n + 1)

end A331408

/-! ## A331408.P12924672147289367936

`A331419(n+3)/2-A331419(n+1)`
-/

namespace A331408.P12924672147289367936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331419 (n + 3) : ℚ) / 2 - (A331419 (n + 1) : ℚ)

end

end A331408.P12924672147289367936

namespace A331408

/-- `A331419(n+3)/2-A331419(n+1)` -/
def P12924672147289367936.Spec : Prop :=
  ∀ n, P12924672147289367936.a n = (A331408 (n + 1) : ℚ)

end A331408

/-!
# A331409: a(1)=1; for n>1, a(n) = a(n-1)+n, divided by its largest prime factor.

The programs for A331409, the canonical program `A331409.P16539324255400133516` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331409 has offset 1).

The definition of A331409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331409.P16539324255400133516

`(a(n-1)+n+1)/A006530(a(n-1)+n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A331409

/-- `(a(n-1)+n+1)/A006530(a(n-1)+n+1)` -/
def P16539324255400133516.Spec : Prop :=
  ∀ n, P16539324255400133516.a n = (A331409 (n + 1) : ℚ)

end A331409

/-! ## A331409.P7042836512703785680

`A052126(1+n+a(n-1))` with `a(0)=1`
-/

namespace A331409.P7042836512703785680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052126 (1 + ((n : ℤ) + a (n - 1))).toNat

end

end A331409.P7042836512703785680

namespace A331409

/-- `A052126(1+n+a(n-1))` -/
def P7042836512703785680.Spec : Prop :=
  ∀ n, P7042836512703785680.a n = A331409 (n + 1)

end A331409

/-! ## A331409.P5200360641184898576

`A052126(A326178(a(n-1)+n))` with `a(0)=1`
-/

namespace A331409.P5200360641184898576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052126 (A326178 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A331409.P5200360641184898576

namespace A331409

/-- `A052126(A326178(a(n-1)+n))` -/
def P5200360641184898576.Spec : Prop :=
  ∀ n, P5200360641184898576.a n = A331409 (n + 1)

end A331409

/-! ## A331409.P18378103410326865713

`A070821(2*a(n-1)+2*(n+1))` with `a(0)=1`
-/

namespace A331409.P18378103410326865713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070821 (2 * a (n - 1) + (2 * (n + 1) : ℤ)).toNat

end

end A331409.P18378103410326865713

namespace A331409

/-- `A070821(2*a(n-1)+2*(n+1))` -/
def P18378103410326865713.Spec : Prop :=
  ∀ n, P18378103410326865713.a n = A331409 (n + 1)

end A331409

/-! ## A331409.P4907441842777156876

`A333570(A075163(2*n+1)+A001610(n))`
-/

namespace A331409.P4907441842777156876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333570 (A075163 (2 * n + 1) + A001610 n).toNat

end

end A331409.P4907441842777156876

namespace A331409

/-- `A333570(A075163(2*n+1)+A001610(n))` -/
def P4907441842777156876.Spec : Prop :=
  ∀ n, P4907441842777156876.a n = A331409 (n + 1)

end A331409

/-!
# A331410: a(n) is the number of iterations needed to reach a power of 2 starting at n and using the map k -> k + k/p, where p is the largest prime factor of k.

The programs for A331410, the canonical program `A331410.P1765792121065572382` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331410 has offset 1).

The definition of A331410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331410.P4053896302509516992

`A336921(n+1)+A087436(n+1)`
-/

namespace A331410.P4053896302509516992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (n + 1) + A087436 (n + 1)

end

end A331410.P4053896302509516992

namespace A331410

/-- `A336921(n+1)+A087436(n+1)` -/
def P4053896302509516992.Spec : Prop :=
  ∀ n, P4053896302509516992.a n = A331410 (n + 1)

theorem P4053896302509516992.correct : P4053896302509516992.Spec := by
  intro n
  simp only [A331410, Nat.add_sub_cancel, A331410.P4053896302509516992.a, A331410.P1765792121065572382.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A336921, A336921.P608047927114178291.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A204455, A204455.P9449319865665436464.a, A006519, A006519.P10435570611646570274.a, A099985, A099985.P6318060609280264898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331410

/-! ## A331410.P3684999142400225300

`A334861(n+1)-A329697(n+1)`
-/

namespace A331410.P3684999142400225300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - A329697 (n + 1)

end

end A331410.P3684999142400225300

namespace A331410

/-- `A334861(n+1)-A329697(n+1)` -/
def P3684999142400225300.Spec : Prop :=
  ∀ n, P3684999142400225300.a n = A331410 (n + 1)

theorem P3684999142400225300.correct : P3684999142400225300.Spec := by
  intro n
  simp only [A331410, Nat.add_sub_cancel, A331410.P3684999142400225300.a, A331410.P1765792121065572382.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A334861, A334861.P8338568547344458298.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P17401718760467290084.a, A064415, A064415.P3438679109517359530.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, A309243, A309243.P2615360336711731693.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A099985, A099985.P6318060609280264898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331410

/-! ## A331410.P13307526046304211465

`A334097(n+1)-A334098(n+1)`
-/

namespace A331410.P13307526046304211465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - A334098 (n + 1)

end

end A331410.P13307526046304211465

namespace A331410

/-- `A334097(n+1)-A334098(n+1)` -/
def P13307526046304211465.Spec : Prop :=
  ∀ n, P13307526046304211465.a n = A331410 (n + 1)

end A331410

/-! ## A331410.P1765792121065572382

`a(A336467(n+1)-1)+A087436(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A331410

/-- `a(A336467(n+1)-1)+A087436(n+1)` -/
def P1765792121065572382.Spec : Prop :=
  ∀ n, P1765792121065572382.a n = A331410 (n + 1)

theorem P1765792121065572382.correct : P1765792121065572382.Spec := by
  intro n
  simp only [A331410, Nat.add_sub_cancel]

end A331410

/-! ## A331410.P15490356891323856573

`A336922(n+1)+A005087(n+1)`
-/

namespace A331410.P15490356891323856573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336922 (n + 1) + A005087 (n + 1)

end

end A331410.P15490356891323856573

namespace A331410

/-- `A336922(n+1)+A005087(n+1)` -/
def P15490356891323856573.Spec : Prop :=
  ∀ n, P15490356891323856573.a n = A331410 (n + 1)

theorem P15490356891323856573.correct : P15490356891323856573.Spec := by
  intro n
  simp only [A331410, Nat.add_sub_cancel, A331410.P15490356891323856573.a, A331410.P1765792121065572382.a, A005087, A005087.P10391577523985143555.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A336922, A336922.P363598391234132890.a, A000265, A000265.P16482698636471710744.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A204455, A204455.P9449319865665436464.a, A006519, A006519.P10435570611646570274.a, A099985, A099985.P6318060609280264898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331410

/-! ## A331410.P6257884196622235366

`A335877(n+1)+A329697(n+1)`
-/

namespace A331410.P6257884196622235366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + A329697 (n + 1)

end

end A331410.P6257884196622235366

namespace A331410

/-- `A335877(n+1)+A329697(n+1)` -/
def P6257884196622235366.Spec : Prop :=
  ∀ n, P6257884196622235366.a n = A331410 (n + 1)

theorem P6257884196622235366.correct : P6257884196622235366.Spec := by
  intro n
  simp only [A331410, Nat.add_sub_cancel, A331410.P6257884196622235366.a, A331410.P1765792121065572382.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A335877, A335877.P9922726367996187859.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P17401718760467290084.a, A064415, A064415.P3438679109517359530.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, A309243, A309243.P2615360336711731693.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A099985, A099985.P6318060609280264898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331410

/-! ## A331410.P1422092022242509667

`A347249(n+1)+A336361(n+1)`
-/

namespace A331410.P1422092022242509667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347249 (n + 1) + A336361 (n + 1)

end

end A331410.P1422092022242509667

namespace A331410

/-- `A347249(n+1)+A336361(n+1)` -/
def P1422092022242509667.Spec : Prop :=
  ∀ n, P1422092022242509667.a n = A331410 (n + 1)

end A331410

/-! ## A331410.P12597936972424891417

`A334861(n+1)-∑[A334091(n+1)]`
-/

namespace A331410.P12597936972424891417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331410.P12597936972424891417

namespace A331410

/-- `A334861(n+1)-∑[A334091(n+1)]` -/
def P12597936972424891417.Spec : Prop :=
  ∀ n, P12597936972424891417.a n = A331410 (n + 1)

end A331410

/-! ## A331410.P11779987926258071827

`A087436(n+1)+A336396(n+1)+A335877(n+1)`
-/

namespace A331410.P11779987926258071827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) + (A336396 (n + 1) + A335877 (n + 1))

end

end A331410.P11779987926258071827

namespace A331410

/-- `A087436(n+1)+A336396(n+1)+A335877(n+1)` -/
def P11779987926258071827.Spec : Prop :=
  ∀ n, P11779987926258071827.a n = A331410 (n + 1)

theorem P11779987926258071827.correct : P11779987926258071827.Spec := by
  intro n
  simp only [A331410, Nat.add_sub_cancel, A331410.P11779987926258071827.a, A331410.P1765792121065572382.a, A087436, A087436.P13287701826401831056.a, A335877, A335877.P9922726367996187859.a, A336396, A336396.P16969858180878355374.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A206787, A206787.P5835391057460083436.a, A329697, A329697.P6355568551452954971.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A064097, A064097.P17401718760467290084.a, A064415, A064415.P3438679109517359530.a, A204455, A204455.P9449319865665436464.a, A006519, A006519.P10435570611646570274.a, A099985, A099985.P6318060609280264898.a, A171462, A171462.P186066025836437895.a, A309243, A309243.P2615360336711731693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331410

/-! ## A331410.P1164811614562812050

`A064415(n+1)+A334862(n+1)-A334098(n+1)`
-/

namespace A331410.P1164811614562812050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + (A334862 (n + 1) - A334098 (n + 1))

end

end A331410.P1164811614562812050

namespace A331410

/-- `A064415(n+1)+A334862(n+1)-A334098(n+1)` -/
def P1164811614562812050.Spec : Prop :=
  ∀ n, P1164811614562812050.a n = A331410 (n + 1)

end A331410

/-! ## A331410.P1964516181897205974

`A335875(n+1)+A335881(n+1)-A329697(n+1)`
-/

namespace A331410.P1964516181897205974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335875 (n + 1) + (A335881 (n + 1) - A329697 (n + 1))

end

end A331410.P1964516181897205974

namespace A331410

/-- `A335875(n+1)+A335881(n+1)-A329697(n+1)` -/
def P1964516181897205974.Spec : Prop :=
  ∀ n, P1964516181897205974.a n = A331410 (n + 1)

end A331410

/-! ## A331410.P234538895431303428

`A329697(n+1)+A336921(n+1)-A336396(n+1)`
-/

namespace A331410.P234538895431303428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A336921 (n + 1) - A336396 (n + 1))

end

end A331410.P234538895431303428

namespace A331410

/-- `A329697(n+1)+A336921(n+1)-A336396(n+1)` -/
def P234538895431303428.Spec : Prop :=
  ∀ n, P234538895431303428.a n = A331410 (n + 1)

theorem P234538895431303428.correct : P234538895431303428.Spec := by
  intro n
  simp only [A331410, Nat.add_sub_cancel, A331410.P234538895431303428.a, A331410.P1765792121065572382.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A336396, A336396.P16969858180878355374.a, A336467, A336467.P6879531493608964417.a, A336921, A336921.P608047927114178291.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P17401718760467290084.a, A064415, A064415.P3438679109517359530.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, A309243, A309243.P2615360336711731693.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A099985, A099985.P6318060609280264898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331410

/-! ## A331410.P9440850360837437158

`A329697(n+1)+A336922(n+1)-A336469(n+1)`
-/

namespace A331410.P9440850360837437158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A336922 (n + 1) - A336469 (n + 1))

end

end A331410.P9440850360837437158

namespace A331410

/-- `A329697(n+1)+A336922(n+1)-A336469(n+1)` -/
def P9440850360837437158.Spec : Prop :=
  ∀ n, P9440850360837437158.a n = A331410 (n + 1)

end A331410

/-! ## A331410.P12746046881288102505

`A335904(n+1)+A336921(n+1)-A336118(n+1)`
-/

namespace A331410.P12746046881288102505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335904 (n + 1) + (A336921 (n + 1) - A336118 (n + 1))

end

end A331410.P12746046881288102505

namespace A331410

/-- `A335904(n+1)+A336921(n+1)-A336118(n+1)` -/
def P12746046881288102505.Spec : Prop :=
  ∀ n, P12746046881288102505.a n = A331410 (n + 1)

end A331410

/-! ## A331410.P3721586284637353143

`A364259(A332213(n+1))`
-/

namespace A331410.P3721586284637353143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364259 (A332213 (n + 1)).toNat

end

end A331410.P3721586284637353143

namespace A331410

/-- `A364259(A332213(n+1))` -/
def P3721586284637353143.Spec : Prop :=
  ∀ n, P3721586284637353143.a n = A331410 (n + 1)

end A331410

/-! ## A331410.P6103989658521814315

`A334098(A003959(n+1))+A336921(n+1)-A334098(n+1)`
-/

namespace A331410.P6103989658521814315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334098 (A003959 (n + 1)).toNat + (A336921 (n + 1) - A334098 (n + 1))

end

end A331410.P6103989658521814315

namespace A331410

/-- `A334098(A003959(n+1))+A336921(n+1)-A334098(n+1)` -/
def P6103989658521814315.Spec : Prop :=
  ∀ n, P6103989658521814315.a n = A331410 (n + 1)

end A331410

/-! ## A331410.P549856730843166955

`A336922((n+1)²)-A336922(n+1)`
-/

namespace A331410.P549856730843166955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336922 ((n + 1) ^ 2) - A336922 (n + 1)

end

end A331410.P549856730843166955

namespace A331410

/-- `A336922((n+1)²)-A336922(n+1)` -/
def P549856730843166955.Spec : Prop :=
  ∀ n, P549856730843166955.a n = A331410 (n + 1)

end A331410

/-!
# A331413: a(n) = 2*a(n-1) + a(n-2) + a(n-3) + a(n-4), a(0)=4, a(1)=2, a(2)=6, a(3)=17.

The programs for A331413, the canonical program `A331413.P2336212206531128528` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331413 has offset 0).

The definition of A331413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A331413.P2336212206531128528`, by `A331413.P2336212206531128528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331413.P4348685456685846208

`ogf((4-6x-2x^2-x^3)/(1-2x-x^2-x^3-x^4))`
-/

namespace A331413.P4348685456685846208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, -2, -1] [1, -2, -1, -1, -1] n

end

end A331413.P4348685456685846208

namespace A331413

/-- `ogf((4-6x-2x^2-x^3)/(1-2x-x^2-x^3-x^4))` -/
def P4348685456685846208.Spec : Prop :=
  ∀ n, P4348685456685846208.a n = A331413 n

end A331413

/-! ## A331413.P2336212206531128528

`2*a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=4, a(1)=2, a(2)=6, a(3)=17`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331413

/-- `2*a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P2336212206531128528.Spec : Prop :=
  ∀ n, (P2336212206531128528.a n : ℤ) = A331413 n

theorem P2336212206531128528.correct : P2336212206531128528.Spec := by
  intro n
  simp only [A331413]

end A331413

/-!
# A331414: Number of integral free trees of n vertices.

The programs for A331414, there is no canonical definition to state claims against.
-/

/-! ## A331414.P10885450438944707722

`and(A329295(n+1)+A329289(n), A329291(n+1))`
-/

namespace A331414.P10885450438944707722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A329295 (n + 1) + A329289 n) (A329291 (n + 1))

end

end A331414.P10885450438944707722

/-! ## A331414.P6949441302628272986

`A341980(A341991(n+2)-A341969(n+1))`
-/

namespace A331414.P6949441302628272986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341980 ((A341991 (n + 2) - A341969 (n + 1)).toNat + 78)

end

end A331414.P6949441302628272986

/-! ## A331414.P2761664082508543173

`A341980(xor(A341969(n+1), A341991(n+2)))`
-/

namespace A331414.P2761664082508543173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341980 ((Int.xor (A341969 (n + 1)) (A341991 (n + 2))).toNat + 78)

end

end A331414.P2761664082508543173

/-! ## A331414.P12268847342913239881

`abs(A316441(∑[A003242(n)]))`
-/

namespace A331414.P12268847342913239881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316441 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A331414.P12268847342913239881

/-! ## A331414.P11825251933211173861

`C(A000164(3*(n+1)), A181935(A000032(n)))`
-/

namespace A331414.P11825251933211173861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000164 (3 * (n + 1))).toNat (A181935 (A000032 n).toNat).toNat

end

end A331414.P11825251933211173861

/-!
# A331415: Sum of prime factors minus sum of prime indices of n.

The programs for A331415, the canonical program `A331415.P4846081659728035053` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331415 has offset 1).

The definition of A331415 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331415.P4846081659728035053

`A001414(n+1)-A056239(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331415

/-- `A001414(n+1)-A056239(n+1)` -/
def P4846081659728035053.Spec : Prop :=
  ∀ n, P4846081659728035053.a n = A331415 (n + 1)

theorem P4846081659728035053.correct : P4846081659728035053.Spec := by
  intro n
  simp only [A331415, Nat.add_sub_cancel]

end A331415

/-! ## A331415.P10424383569970675129

`∑{p}[n+1, #*val(n+1, #)]-A056239(n+1)`
-/

namespace A331415.P10424383569970675129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - A056239 (n + 1)

end

end A331415.P10424383569970675129

namespace A331415

/-- `∑{p}[n+1, #*val(n+1, #)]-A056239(n+1)` -/
def P10424383569970675129.Spec : Prop :=
  ∀ n, P10424383569970675129.a n = A331415 (n + 1)

end A331415

/-! ## A331415.P10668497060543172003

`∑{p}[n+1, #*val(n+1, #)]-∑{d}[n+1, A297109(#)]`
-/

namespace A331415.P10668497060543172003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), A297109 d

end

end A331415.P10668497060543172003

namespace A331415

/-- `∑{p}[n+1, #*val(n+1, #)]-∑{d}[n+1, A297109(#)]` -/
def P10668497060543172003.Spec : Prop :=
  ∀ n, P10668497060543172003.a n = A331415 (n + 1)

end A331415

/-! ## A331415.P11969324410428820581

`∑{p}[n+1, #*val(n+1, #)]-(A316436(2*(n+1))-1)`
-/

namespace A331415.P11969324410428820581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - (A316436 (2 * (n + 1)) - 1)

end

end A331415.P11969324410428820581

namespace A331415

/-- `∑{p}[n+1, #*val(n+1, #)]-(A316436(2*(n+1))-1)` -/
def P11969324410428820581.Spec : Prop :=
  ∀ n, P11969324410428820581.a n = A331415 (n + 1)

end A331415

/-! ## A331415.P7988941576426486313

`∑{p}[n+1, #*val(n+1, #)]+∑{e}[n+1, #]-A318994(n+1)`
-/

namespace A331415.P7988941576426486313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) + (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) - A318994 (n + 1))

end

end A331415.P7988941576426486313

namespace A331415

/-- `∑{p}[n+1, #*val(n+1, #)]+∑{e}[n+1, #]-A318994(n+1)` -/
def P7988941576426486313.Spec : Prop :=
  ∀ n, P7988941576426486313.a n = A331415 (n + 1)

end A331415

/-! ## A331415.P11021220394914113416

`Δ[A025281(n)]-A056239(n+1)`
-/

namespace A331415.P11021220394914113416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056239 (n + 1)

end

end A331415.P11021220394914113416

namespace A331415

/-- `Δ[A025281(n)]-A056239(n+1)` -/
def P11021220394914113416.Spec : Prop :=
  ∀ n, P11021220394914113416.a n = A331415 (n + 1)

end A331415

/-! ## A331415.P17296494443799388144

`A178503(n+1)-A075255(n+1)`
-/

namespace A331415.P17296494443799388144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (n + 1) - A075255 (n + 1)

end

end A331415.P17296494443799388144

namespace A331415

/-- `A178503(n+1)-A075255(n+1)` -/
def P17296494443799388144.Spec : Prop :=
  ∀ n, P17296494443799388144.a n = A331415 (n + 1)

theorem P17296494443799388144.correct : P17296494443799388144.Spec := by
  intro n
  simp only [A331415, Nat.add_sub_cancel, A331415.P17296494443799388144.a, A331415.P4846081659728035053.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A056239, A056239.P11316688788989965672.a, A075255, A075255.P12137973761347593222.a, A178503, A178503.P4821530667985743072.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331415

/-! ## A331415.P9002727525206432637

`A059975(n+1)-A318995(n+1)`
-/

namespace A331415.P9002727525206432637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 1) - A318995 (n + 1)

end

end A331415.P9002727525206432637

namespace A331415

/-- `A059975(n+1)-A318995(n+1)` -/
def P9002727525206432637.Spec : Prop :=
  ∀ n, P9002727525206432637.a n = A331415 (n + 1)

theorem P9002727525206432637.correct : P9002727525206432637.Spec := by
  intro n
  simp only [A331415, Nat.add_sub_cancel, A331415.P9002727525206432637.a, A331415.P4846081659728035053.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A056239, A056239.P11316688788989965672.a, A059975, A059975.P3594971538098503590.a, A318995, A318995.P10479870511311284550.f1, A318995.P10479870511311284550.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331415

/-! ## A331415.P4621068993742012192

`A075254(n+1)-A380345(n+1)`
-/

namespace A331415.P4621068993742012192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - A380345 (n + 1)

end

end A331415.P4621068993742012192

namespace A331415

/-- `A075254(n+1)-A380345(n+1)` -/
def P4621068993742012192.Spec : Prop :=
  ∀ n, P4621068993742012192.a n = A331415 (n + 1)

theorem P4621068993742012192.correct : P4621068993742012192.Spec := by
  intro n
  simp only [A331415, Nat.add_sub_cancel, A331415.P4621068993742012192.a, A331415.P4846081659728035053.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A056239, A056239.P11316688788989965672.a, A075254, A075254.P6422447875050144596.a, A380345, A380345.P3416860299638001481.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331415

/-! ## A331415.P15879736267070868611

`A325036(n+1)-A380344(n+1)`
-/

namespace A331415.P15879736267070868611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1) - A380344 (n + 1)

end

end A331415.P15879736267070868611

namespace A331415

/-- `A325036(n+1)-A380344(n+1)` -/
def P15879736267070868611.Spec : Prop :=
  ∀ n, P15879736267070868611.a n = A331415 (n + 1)

theorem P15879736267070868611.correct : P15879736267070868611.Spec := by
  intro n
  simp only [A331415, Nat.add_sub_cancel, A331415.P15879736267070868611.a, A331415.P4846081659728035053.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A056239, A056239.P11316688788989965672.a, A325036, A325036.P14148753285896189603.a, A380344, A380344.P8003750175292629096.a, A003963, A003963.P6853423646423809573.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A243499, A243499.P13821279400790425584.a, A023416, A023416.P8124303482289229133.a, A048881, A048881.P16567064232951496228.a, A053645, A053645.P13234994043849603743.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331415

/-! ## A331415.P32578620000974424

`A380409(n+1)-A379681(n+1)`
-/

namespace A331415.P32578620000974424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380409 (n + 1) - A379681 (n + 1)

end

end A331415.P32578620000974424

namespace A331415

/-- `A380409(n+1)-A379681(n+1)` -/
def P32578620000974424.Spec : Prop :=
  ∀ n, P32578620000974424.a n = A331415 (n + 1)

theorem P32578620000974424.correct : P32578620000974424.Spec := by
  intro n
  simp only [A331415, Nat.add_sub_cancel, A331415.P32578620000974424.a, A331415.P4846081659728035053.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A056239, A056239.P11316688788989965672.a, A379681, A379681.P11517682224062848711.a, A380409, A380409.P2904522340196299969.a, A003963, A003963.P6853423646423809573.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A243499, A243499.P13821279400790425584.a, A023416, A023416.P8124303482289229133.a, A048881, A048881.P16567064232951496228.a, A053645, A053645.P13234994043849603743.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331415

/-! ## A331415.P8425213273910155956

`∑{p}[n+1, #*val(n+1, #)]-(A318995(n+1)+A001222(n+1))`
-/

namespace A331415.P8425213273910155956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - (A318995 (n + 1) + A001222 (n + 1))

end

end A331415.P8425213273910155956

namespace A331415

/-- `∑{p}[n+1, #*val(n+1, #)]-(A318995(n+1)+A001222(n+1))` -/
def P8425213273910155956.Spec : Prop :=
  ∀ n, P8425213273910155956.a n = A331415 (n + 1)

theorem P8425213273910155956.correct : P8425213273910155956.Spec := by
  intro n
  simp only [A331415, Nat.add_sub_cancel, A331415.P8425213273910155956.f1, A331415.P8425213273910155956.a, A331415.P4846081659728035053.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A056239, A056239.P11316688788989965672.a, A318995, A318995.P10479870511311284550.f1, A318995.P10479870511311284550.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331415

/-! ## A331415.P11928272716167671147

`∑{p}[n+1, #*val(n+1, #)]-(A000005(n+1)-A325794(n+1))`
-/

namespace A331415.P11928272716167671147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - (A000005 (n + 1) - A325794 (n + 1))

end

end A331415.P11928272716167671147

namespace A331415

/-- `∑{p}[n+1, #*val(n+1, #)]-(A000005(n+1)-A325794(n+1))` -/
def P11928272716167671147.Spec : Prop :=
  ∀ n, P11928272716167671147.a n = A331415 (n + 1)

theorem P11928272716167671147.correct : P11928272716167671147.Spec := by
  intro n
  simp only [A331415, Nat.add_sub_cancel, A331415.P11928272716167671147.f1, A331415.P11928272716167671147.a, A331415.P4846081659728035053.a, A000005, A000005.P16091521709108585461.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A056239, A056239.P11316688788989965672.a, A325794, A325794.P1593222624152160603.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331415

/-! ## A331415.P5015363292380750459

`A001414(n+1)+A325036(n+1)-A003963(n+1)`
-/

namespace A331415.P5015363292380750459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A325036 (n + 1) - A003963 (n + 1))

end

end A331415.P5015363292380750459

namespace A331415

/-- `A001414(n+1)+A325036(n+1)-A003963(n+1)` -/
def P5015363292380750459.Spec : Prop :=
  ∀ n, P5015363292380750459.a n = A331415 (n + 1)

theorem P5015363292380750459.correct : P5015363292380750459.Spec := by
  intro n
  simp only [A331415, Nat.add_sub_cancel, A331415.P5015363292380750459.a, A331415.P4846081659728035053.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A325036, A325036.P14148753285896189603.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331415

/-! ## A331415.P4188549647354285356

`A380409(n+1)-(A056239(n+1)+A003963(n+1))`
-/

namespace A331415.P4188549647354285356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380409 (n + 1) - (A056239 (n + 1) + A003963 (n + 1))

end

end A331415.P4188549647354285356

namespace A331415

/-- `A380409(n+1)-(A056239(n+1)+A003963(n+1))` -/
def P4188549647354285356.Spec : Prop :=
  ∀ n, P4188549647354285356.a n = A331415 (n + 1)

theorem P4188549647354285356.correct : P4188549647354285356.Spec := by
  intro n
  simp only [A331415, Nat.add_sub_cancel, A331415.P4188549647354285356.a, A331415.P4846081659728035053.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A380409, A380409.P2904522340196299969.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331415

/-! ## A331415.P10630739940812042880

`∑{p}[n+1, #*val(n+1, #)]-log2(A248692(n+1))`
-/

namespace A331415.P10630739940812042880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℝ) - Real.logb 2 (A248692 (n + 1) : ℝ)

end

end A331415.P10630739940812042880

namespace A331415

/-- `∑{p}[n+1, #*val(n+1, #)]-log2(A248692(n+1))` -/
def P10630739940812042880.Spec : Prop :=
  ∀ n, P10630739940812042880.a n = (A331415 (n + 1) : ℝ)

end A331415

/-! ## A331415.P11704141020755502567

`A056239(A064988(n+1))-A056239(n+1)`
-/

namespace A331415.P11704141020755502567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064988 (n + 1)).toNat - A056239 (n + 1)

end

end A331415.P11704141020755502567

namespace A331415

/-- `A056239(A064988(n+1))-A056239(n+1)` -/
def P11704141020755502567.Spec : Prop :=
  ∀ n, P11704141020755502567.a n = A331415 (n + 1)

end A331415

/-! ## A331415.P8564813732642200585

`A318995(A064988(n+1))-A318995(n+1)`
-/

namespace A331415.P8564813732642200585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A064988 (n + 1)).toNat - A318995 (n + 1)

end

end A331415.P8564813732642200585

namespace A331415

/-- `A318995(A064988(n+1))-A318995(n+1)` -/
def P8564813732642200585.Spec : Prop :=
  ∀ n, P8564813732642200585.a n = A331415 (n + 1)

end A331415

/-!
# A331416: Irregular triangle read by rows where T(n,k) is the number of integer partitions y of n such that Sum_i prime(y_i) = k.

The programs for A331416, there is no canonical definition to state claims against.
-/

/-! ## A331416.P1068094572072548086

`A002828(C(A240850(n+2), A002350(n+1)))`
-/

namespace A331416.P1068094572072548086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Nat.choose (A240850 (n + 2)).toNat (A002350 (n + 1)).toNat)

end

end A331416.P1068094572072548086

/-! ## A331416.P9993517858785200379

`A103789(A287603(n+1))%A129265(2*(n+1))`
-/

namespace A331416.P9993517858785200379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103789 (A287603 (n + 1)).toNat) (A129265 (2 * (n + 1)))

end

end A331416.P9993517858785200379

/-!
# A331417: Maximum sum of primes of the parts of an integer partition of n.

The programs for A331417, there is no canonical definition to state claims against.
-/

/-! ## A331417.P5360745659304245455

`A331418(n)+n-1`
-/

namespace A331417.P5360745659304245455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331418 n + (n : ℤ) - 1

end

end A331417.P5360745659304245455

/-! ## A331417.P205238245279146672

`A331418(n)+n-1`
-/

namespace A331417.P205238245279146672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331418 n + ((n : ℤ) - 1)

end

end A331417.P205238245279146672

/-! ## A331417.P18251687071764722375

`record[abs(A063084(n+1))]+n`
-/

namespace A331417.P18251687071764722375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063084 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A331417.P18251687071764722375

/-! ## A331417.P9776022204861076984

`record[and(or(n, -2), A073846(n+1))]`
-/

namespace A331417.P9776022204861076984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor (n : ℤ) (-2)) (A073846 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331417.P9776022204861076984

/-! ## A331417.P17944947695685284724

`A066169(1+a(n-1))` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6, a(4)=8`
-/

namespace A331417.P17944947695685284724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 6, 8] fun n a =>
  A066169 (1 + a (n - 1)).toNat

end

end A331417.P17944947695685284724

/-! ## A331417.P10895686882612814171

`A000040(n%a(n-1))` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6, a(4)=8`
-/

namespace A331417.P10895686882612814171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 6, 8] fun n a =>
  A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A331417.P10895686882612814171

/-! ## A331417.P2515751927493562785

`A023443(A331418(n)+n)`
-/

namespace A331417.P2515751927493562785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331418 n + (n : ℤ)).toNat

end

end A331417.P2515751927493562785

/-! ## A331417.P8384148951234328941

`record[xor(A015241(n), A073846(n+1))]`
-/

namespace A331417.P8384148951234328941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A015241 n) (A073846 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331417.P8384148951234328941

/-! ## A331417.P15300439411784966777

`A000040(n)+C(A000010(n+1), a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A331417.P15300439411784966777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A000040 n + (Nat.choose (A000010 (n + 1)).toNat (a (n - 2)).toNat : ℤ)

end

end A331417.P15300439411784966777

/-! ## A331417.P8076189110581538209

`A000040(n)+C(A000005(n+2), a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A331417.P8076189110581538209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A000040 n + (Nat.choose (A000005 (n + 2)).toNat (a (n - 2)).toNat : ℤ)

end

end A331417.P8076189110581538209

/-!
# A331418: If A331417(n) is the maximum sum of primes of the parts of an integer partition of n, then a(n) = A331417(n) - n + 1.

The programs for A331418, there is no canonical definition to state claims against.
-/

/-! ## A331418.P15175458787613709068

`A331417(n)-n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331418.P15175458787613709068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331417 n - (n : ℤ) + 1

end

end A331418.P15175458787613709068

/-! ## A331418.P8308345653232669671

`record[abs(A063084(n+1))+1]`
-/

namespace A331418.P8308345653232669671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063084 (n + 1)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331418.P8308345653232669671

/-! ## A331418.P3450543681809937367

`record[2-A026233(n+1)+n]`
-/

namespace A331418.P3450543681809937367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026233 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331418.P3450543681809937367

/-! ## A331418.P2755763514161685183

`record[A073846(n+1)-floor(n/2)]`
-/

namespace A331418.P2755763514161685183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1) - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331418.P2755763514161685183

/-! ## A331418.P6468365197832687732

`record[A026233(A093515(n+1))]`
-/

namespace A331418.P6468365197832687732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A093515 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331418.P6468365197832687732

/-! ## A331418.P7211858059134470760

`record[A062298(A061468(n+1))]`
-/

namespace A331418.P7211858059134470760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A061468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331418.P7211858059134470760

/-! ## A331418.P13614316884282035921

`record[A062298(A008474(n+2))]`
-/

namespace A331418.P13614316884282035921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A008474 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331418.P13614316884282035921

/-! ## A331418.P17209806670280508747

`A185437(n+1)+A162177(n+1)`
-/

namespace A331418.P17209806670280508747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185437 (n + 1) + A162177 (n + 1)

end

end A331418.P17209806670280508747

/-! ## A331418.P15299301403580286964

`record[A036997(n+1)+A000005(n+1)]`
-/

namespace A331418.P15299301403580286964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (n + 1) + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331418.P15299301403580286964

/-! ## A331418.P15038196339210642396

`record[A039776(n+1)+A001222(n+1)]`
-/

namespace A331418.P15038196339210642396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039776 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331418.P15038196339210642396

/-!
# A331419: a(n) is the number of subsets of {1..n} that contain exactly 4 odd numbers.

The programs for A331419, the canonical program `A331419.P12418257584867573512` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331419 has offset 1).

The definition of A331419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331419.P12418257584867573512

`ogf((8x^6+16x^7)/(1-10x^2+40x^4-80x^6+80x^8-32x^10))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331419

/-- `ogf((8x^6+16x^7)/(1-10x^2+40x^4-80x^6+80x^8-32x^10))` -/
def P12418257584867573512.Spec : Prop :=
  ∀ n, P12418257584867573512.a n = A331419 (n + 1)

theorem P12418257584867573512.correct : P12418257584867573512.Spec := by
  intro n
  simp only [A331419, Nat.add_sub_cancel]

end A331419

/-! ## A331419.P8771945988083528217

`A000332(A008619(n))*A060546(n)`
-/

namespace A331419.P8771945988083528217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A008619 n).toNat * A060546 n

end

end A331419.P8771945988083528217

namespace A331419

/-- `A000332(A008619(n))*A060546(n)` -/
def P8771945988083528217.Spec : Prop :=
  ∀ n, P8771945988083528217.a n = A331419 (n + 1)

end A331419

/-! ## A331419.P507932657023163081

`Δ[A027383(n)]*A000332(A008619(n))`
-/

namespace A331419.P507932657023163081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000332 (A008619 n).toNat

end

end A331419.P507932657023163081

namespace A331419

/-- `Δ[A027383(n)]*A000332(A008619(n))` -/
def P507932657023163081.Spec : Prop :=
  ∀ n, P507932657023163081.a n = A331419 (n + 1)

end A331419

/-! ## A331419.P15093960754362469242

`∏[A000034(n)]*A000332(A008619(n))`
-/

namespace A331419.P15093960754362469242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000332 (A008619 n).toNat

end

end A331419.P15093960754362469242

namespace A331419

/-- `∏[A000034(n)]*A000332(A008619(n))` -/
def P15093960754362469242.Spec : Prop :=
  ∀ n, P15093960754362469242.a n = A331419 (n + 1)

end A331419

/-! ## A331419.P15660138229380761414

`A000332(A008619(n))*A016116(n+1)`
-/

namespace A331419.P15660138229380761414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A008619 n).toNat * A016116 (n + 1)

end

end A331419.P15660138229380761414

namespace A331419

/-- `A000332(A008619(n))*A016116(n+1)` -/
def P15660138229380761414.Spec : Prop :=
  ∀ n, P15660138229380761414.a n = A331419 (n + 1)

end A331419

/-! ## A331419.P3932844501896034943

`A000079(A110654(n))*A000332(A008619(n))`
-/

namespace A331419.P3932844501896034943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A110654 n).toNat * A000332 (A008619 n).toNat

end

end A331419.P3932844501896034943

namespace A331419

/-- `A000079(A110654(n))*A000332(A008619(n))` -/
def P3932844501896034943.Spec : Prop :=
  ∀ n, P3932844501896034943.a n = A331419 (n + 1)

end A331419

/-!
# A331420: a(n) is the number of subsets of {1..n} that contain exactly 5 odd numbers.

The programs for A331420, the canonical program `A331420.P4102028853693030989` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331420 has offset 1).

The definition of A331420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331420.P4102028853693030989

`A000389(A008619(n))*A060546(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A331420

/-- `A000389(A008619(n))*A060546(n)` -/
def P4102028853693030989.Spec : Prop :=
  ∀ n, P4102028853693030989.a n = A331420 (n + 1)

theorem P4102028853693030989.correct : P4102028853693030989.Spec := by
  intro n
  simp only [A331420, Nat.add_sub_cancel]

end A331420

/-! ## A331420.P11464948726736598215

`∑[A000332(A142150(n))]*A060546(n)`
-/

namespace A331420.P11464948726736598215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A060546 n

end

end A331420.P11464948726736598215

namespace A331420

/-- `∑[A000332(A142150(n))]*A060546(n)` -/
def P11464948726736598215.Spec : Prop :=
  ∀ n, P11464948726736598215.a n = A331420 (n + 1)

end A331420

/-! ## A331420.P7313957527365008403

`A016116(n+1)*A000389(A008619(n))`
-/

namespace A331420.P7313957527365008403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A000389 (A008619 n).toNat

end

end A331420.P7313957527365008403

namespace A331420

/-- `A016116(n+1)*A000389(A008619(n))` -/
def P7313957527365008403.Spec : Prop :=
  ∀ n, P7313957527365008403.a n = A331420 (n + 1)

theorem P7313957527365008403.correct : P7313957527365008403.Spec := by
  intro n
  simp only [A331420, Nat.add_sub_cancel, A331420.P7313957527365008403.a, A331420.P4102028853693030989.a, A000389, A000389.P15450220129395289428.a, A008619, A008619.P16053834178911111118.a, A016116, A016116.P661627231399665482.a, A060546, A060546.P1654444225821562750.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331420

/-! ## A331420.P2622475146241452548

`A000389(A008619(n))*A131572(n+1)`
-/

namespace A331420.P2622475146241452548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A008619 n).toNat * A131572 (n + 1)

end

end A331420.P2622475146241452548

namespace A331420

/-- `A000389(A008619(n))*A131572(n+1)` -/
def P2622475146241452548.Spec : Prop :=
  ∀ n, P2622475146241452548.a n = A331420 (n + 1)

end A331420

/-! ## A331420.P8895141040691979492

`A000389(floor((n+2)/2))*A151821(A065033(n))`
-/

namespace A331420.P8895141040691979492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 ⌊(n + 2 : ℚ) / 2⌋.toNat * A151821 (A065033 n).toNat

end

end A331420.P8895141040691979492

namespace A331420

/-- `A000389(floor((n+2)/2))*A151821(A065033(n))` -/
def P8895141040691979492.Spec : Prop :=
  ∀ n, P8895141040691979492.a n = A331420 (n + 1)

end A331420

/-! ## A331420.P6164928249896537662

`A000079(A110654(n))*A000389(A008619(n))`
-/

namespace A331420.P6164928249896537662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A110654 n).toNat * A000389 (A008619 n).toNat

end

end A331420.P6164928249896537662

namespace A331420

/-- `A000079(A110654(n))*A000389(A008619(n))` -/
def P6164928249896537662.Spec : Prop :=
  ∀ n, P6164928249896537662.a n = A331420 (n + 1)

end A331420

/-! ## A331420.P9477519307918062977

`A000079(n)/A016116(n)*A000389(A008619(n))`
-/

namespace A331420.P9477519307918062977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A016116 n : ℚ) * (A000389 (A008619 n).toNat : ℚ)

end

end A331420.P9477519307918062977

namespace A331420

/-- `A000079(n)/A016116(n)*A000389(A008619(n))` -/
def P9477519307918062977.Spec : Prop :=
  ∀ n, P9477519307918062977.a n = (A331420 (n + 1) : ℚ)

end A331420

/-!
# A331423: Divide each side of a triangle into n>=1 equal parts and trace the corresponding cevians, i.e., join every point, except for the first and last ones, with the opposite vertex. a(n) is the number of points at which three cevians meet.

The programs for A331423, there is no canonical definition to state claims against.
-/

/-! ## A331423.P5565162257446054191

`A003215(n)-A092098(n+1)`
-/

namespace A331423.P5565162257446054191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A092098 (n + 1)

end

end A331423.P5565162257446054191

/-! ## A331423.P1796437463388925096

`A001844(n)-A332377(n+1)`
-/

namespace A331423.P1796437463388925096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A332377 (n + 1)

end

end A331423.P1796437463388925096

/-! ## A331423.P11671859915513228240

`Δ[A000578(n)]-A092098(n+1)`
-/

namespace A331423.P11671859915513228240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092098 (n + 1)

end

end A331423.P11671859915513228240

/-! ## A331423.P12047486181984426720

`A005891(n)-(A332377(n+1)+∑[n])`
-/

namespace A331423.P12047486181984426720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n - (A332377 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A331423.P12047486181984426720

/-! ## A331423.P1123212173819416688

`A092098(n+1)+2-A331782(n+1)`
-/

namespace A331423.P1123212173819416688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092098 (n + 1) + (2 - A331782 (n + 1))

end

end A331423.P1123212173819416688

/-! ## A331423.P1088433820774523840

`(A332376(n+1)+3)%A331782(n+1)`
-/

namespace A331423.P1088433820774523840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332376 (n + 1) + 3) (A331782 (n + 1))

end

end A331423.P1088433820774523840

/-! ## A331423.P6238830911360231871

`A008619((2*n+1)²)-A332377(n+1)`
-/

namespace A331423.P6238830911360231871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((2 * n + 1) ^ 2) - A332377 (n + 1)

end

end A331423.P6238830911360231871

/-!
# A331425: Divide each side of a triangle into 2*n (n>=1) equal parts and trace the corresponding cevians, i.e., join every point, except for the first and last ones, with the opposite vertex. a(n) is the number of points at which three cevians meet.

The programs for A331425, there is no canonical definition to state claims against.
-/

/-! ## A331425.P17979769232938617454

`A331423(2*(n+1))`
-/

namespace A331425.P17979769232938617454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (2 * (n + 1))

end

end A331425.P17979769232938617454

/-! ## A331425.P372436509700845954

`or(1, A331423(n+2+n))`
-/

namespace A331425.P372436509700845954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331423 (n + 2 + n))

end

end A331425.P372436509700845954

/-! ## A331425.P2350981725554866556

`abs(A331423(Δ[n²]+1)-1)+1`
-/

namespace A331425.P2350981725554866556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331423 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 1| + 1

end

end A331425.P2350981725554866556

/-! ## A331425.P3394930546122473652

`A000027(A331423(n+2+n))`
-/

namespace A331425.P3394930546122473652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A331423 (n + 2 + n)).toNat

end

end A331425.P3394930546122473652

/-! ## A331425.P18220383472209399297

`filter[A331423(n+1), A000035(#)]`
-/

namespace A331425.P18220383472209399297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A331425.P18220383472209399297

/-! ## A331425.P14271710697613218619

`filter[A331423(n+1), A011655(#)]`
-/

namespace A331425.P14271710697613218619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A331425.P14271710697613218619

/-! ## A331425.P12119089274391632346

`filter[A331423(n+1), A095130(#)]`
-/

namespace A331425.P12119089274391632346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095130 (f1 j).toNat = 1) n)

end

end A331425.P12119089274391632346

/-! ## A331425.P9503552749432544417

`filter[A331423(n+1), A097325(#)]`
-/

namespace A331425.P9503552749432544417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A331425.P9503552749432544417

/-! ## A331425.P12278177659554457233

`filter[A331423(n+1), A131719(#)]`
-/

namespace A331425.P12278177659554457233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131719 (f1 j).toNat = 1) n)

end

end A331425.P12278177659554457233

/-! ## A331425.P7854289903825899989

`filter[A331423(n+1), A156595(#)]`
-/

namespace A331425.P7854289903825899989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A331425.P7854289903825899989

/-!
# A331428: Divide each side of a triangle into 2*n-1 (n>=1) equal parts and trace the corresponding cevians, i.e., join every point, except for the first and last ones, with the opposite vertex. a(n) is the number of points at which three cevians meet.

The programs for A331428, there is no canonical definition to state claims against.
-/

/-! ## A331428.P13924455304722933288

`A331423(2*n+1)`
-/

namespace A331428.P13924455304722933288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (2 * n + 1)

end

end A331428.P13924455304722933288

/-! ## A331428.P1708834250588358697

`floor(1/acot(A331423(n+1+n)))`
-/

namespace A331428.P1708834250588358697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / SequenceMachineLib.acot (A331423 (n + 1 + n) : ℝ)⌋

end

end A331428.P1708834250588358697

/-! ## A331428.P2706298699326037643

`filter[A331423(n+1), A059841(#)]`
-/

namespace A331428.P2706298699326037643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A331428.P2706298699326037643

/-! ## A331428.P17294344672805881927

`filter[A331423(n+1), A079978(#)]`
-/

namespace A331428.P17294344672805881927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A331428.P17294344672805881927

/-! ## A331428.P12380577807540777688

`filter[A331423(n+1), A079979(#)]`
-/

namespace A331428.P12380577807540777688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A331428.P12380577807540777688

/-! ## A331428.P1725166917960324780

`filter[A331423(n+1), A204418(#)]`
-/

namespace A331428.P1725166917960324780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A331428.P1725166917960324780

/-! ## A331428.P2833850601776868580

`filter[A331423(n+1), A232991(#)]`
-/

namespace A331428.P2833850601776868580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232991 (f1 j).toNat = 1) n)

end

end A331428.P2833850601776868580

/-! ## A331428.P6509795410963263721

`filter[A331423(n+1), A267043(#)]`
-/

namespace A331428.P6509795410963263721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A331428.P6509795410963263721

/-! ## A331428.P14751397505233044648

`A277402(2*n+1)-A092098(2*n+1)`
-/

namespace A331428.P14751397505233044648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277402 (2 * n + 1) - A092098 (2 * n + 1)

end

end A331428.P14751397505233044648

/-!
# A331429: Expansion of x^2*(10-5*x+x^2)/((1-x)^4*(1-x^2)).

The programs for A331429, the canonical program `A331429.P4060774576157839592` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331429 has offset 0).

The definition of A331429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((10x^2-5x^3+x^4)/(1-4x+5x^2-5x^4+4x^5-x^6))` (program `A331429.P4060774576157839592`, by `A331429.P4060774576157839592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331429.P4060774576157839592

`ogf((10x^2-5x^3+x^4)/(1-4x+5x^2-5x^4+4x^5-x^6))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331429

/-- `ogf((10x^2-5x^3+x^4)/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P4060774576157839592.Spec : Prop :=
  ∀ n, P4060774576157839592.a n = A331429 n

theorem P4060774576157839592.correct : P4060774576157839592.Spec := by
  intro n
  simp only [A331429]

end A331429

/-! ## A331429.P14249552094437616015

`n*(n+3)*(n²+3*n-2)/8-n%2`
-/

namespace A331429.P14249552094437616015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 3) : ℤ) * ((n ^ 2 + 3 * n : ℤ) - 2) : ℚ) / 8 - ((n % 2 : ℕ) : ℚ)

end

end A331429.P14249552094437616015

namespace A331429

/-- `n*(n+3)*(n²+3*n-2)/8-n%2` -/
def P14249552094437616015.Spec : Prop :=
  ∀ n, P14249552094437616015.a n = (A331429 n : ℚ)

end A331429

/-! ## A331429.P6603143137936847562

`(n*(n+3)*(n²+3*n-2)+4*(-1)^n-4)/8`
-/

namespace A331429.P6603143137936847562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 3) : ℤ) * ((n ^ 2 + 3 * n : ℤ) - 2) + 4 * (-1) ^ n - 4 : ℚ) / 8

end

end A331429.P6603143137936847562

namespace A331429

/-- `(n*(n+3)*(n²+3*n-2)+4*(-1)^n-4)/8` -/
def P6603143137936847562.Spec : Prop :=
  ∀ n, P6603143137936847562.a n = (A331429 n : ℚ)

end A331429

/-! ## A331429.P18159691121366308617

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=10, a(3)=35, a(4)=91, a(5)=189`
-/

namespace A331429.P18159691121366308617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 10, 35, 91, 189] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 5 * a (n - 4) - 4 * a (n - 5) + a (n - 6)

end

end A331429.P18159691121366308617

namespace A331429

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P18159691121366308617.Spec : Prop :=
  ∀ n, P18159691121366308617.a n = A331429 n

end A331429

/-! ## A331429.P10997404512348955620

`C(∑[n]+n, 2)-and(1, n)`
-/

namespace A331429.P10997404512348955620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + n) 2 : ℤ) - (Nat.land 1 n : ℤ)

end

end A331429.P10997404512348955620

namespace A331429

/-- `C(∑[n]+n, 2)-and(1, n)` -/
def P10997404512348955620.Spec : Prop :=
  ∀ n, P10997404512348955620.a n = A331429 n

end A331429

/-! ## A331429.P5089326524561107143

`∑[∑[∑[3*n]]-xor(1, n+1)]`
-/

namespace A331429.P5089326524561107143
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.xor 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331429.P5089326524561107143

namespace A331429

/-- `∑[∑[∑[3*n]]-xor(1, n+1)]` -/
def P5089326524561107143.Spec : Prop :=
  ∀ n, P5089326524561107143.a n = A331429 n

end A331429

/-! ## A331429.P6439443234251887844

`C(∑[n]+n, 2)-Δ[floor(n/2)]`
-/

namespace A331429.P6439443234251887844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + n) 2 : ℤ) - (f2 (n + 1) - f2 n)

end

end A331429.P6439443234251887844

namespace A331429

/-- `C(∑[n]+n, 2)-Δ[floor(n/2)]` -/
def P6439443234251887844.Spec : Prop :=
  ∀ n, P6439443234251887844.a n = A331429 n

end A331429

/-! ## A331429.P1875154774880864360

`A006010(n+1)-A193053(n)`
-/

namespace A331429.P1875154774880864360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006010 (n + 1) - A193053 n

end

end A331429.P1875154774880864360

namespace A331429

/-- `A006010(n+1)-A193053(n)` -/
def P1875154774880864360.Spec : Prop :=
  ∀ n, P1875154774880864360.a n = A331429 n

end A331429

/-! ## A331429.P14476326585301483200

`C(A000096(n), 2)+1-A000034(n)`
-/

namespace A331429.P14476326585301483200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000096 n).toNat 2 + 1 : ℤ) - A000034 n

end

end A331429.P14476326585301483200

namespace A331429

/-- `C(A000096(n), 2)+1-A000034(n)` -/
def P14476326585301483200.Spec : Prop :=
  ∀ n, P14476326585301483200.a n = A331429 n

end A331429

/-! ## A331429.P1509242887360915617

`A086602(n+1)-A052928(n+1)`
-/

namespace A331429.P1509242887360915617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 (n + 1) - A052928 (n + 1)

end

end A331429.P1509242887360915617

namespace A331429

/-- `A086602(n+1)-A052928(n+1)` -/
def P1509242887360915617.Spec : Prop :=
  ∀ n, P1509242887360915617.a n = A331429 n

end A331429

/-! ## A331429.P9618483026786791337

`A000124(A000217(n+1))-A213041(n+1)`
-/

namespace A331429.P9618483026786791337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A000217 (n + 1)).toNat - A213041 (n + 1)

end

end A331429.P9618483026786791337

namespace A331429

/-- `A000124(A000217(n+1))-A213041(n+1)` -/
def P9618483026786791337.Spec : Prop :=
  ∀ n, P9618483026786791337.a n = A331429 n

end A331429

/-!
# A331430: Triangle read by rows: T(n, k) = (-1)^(k+1)*binomial(n,k)*binomial(n+k,k) (n >= k >= 0).

The programs for A331430, the canonical program `A331430.P10429425551289980290` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331430 has offset 0).

The definition of A331430 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(col(n)+1)*C(row(n), col(n))*C(row(n)+col(n), col(n))` (program `A331430.P10429425551289980290`, by `A331430.P10429425551289980290.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331430.P10429425551289980290

`(-1)^(col(n)+1)*C(row(n), col(n))*C(row(n)+col(n), col(n))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331430

/-- `(-1)^(col(n)+1)*C(row(n), col(n))*C(row(n)+col(n), col(n))` -/
def P10429425551289980290.Spec : Prop :=
  ∀ n, P10429425551289980290.a n = A331430 n

theorem P10429425551289980290.correct : P10429425551289980290.Spec := by
  intro n
  simp only [A331430]

end A331430

/-! ## A331430.P2598406892700960228

`-(A059481(n)*A293600(n+1))`
-/

namespace A331430.P2598406892700960228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A059481 n * A293600 (n + 1))

end

end A331430.P2598406892700960228

namespace A331430

/-- `-(A059481(n)*A293600(n+1))` -/
def P2598406892700960228.Spec : Prop :=
  ∀ n, P2598406892700960228.a n = A331430 n

end A331430

/-! ## A331430.P3556009182865818442

`-(A033999(A002262(n))*A063007(n))`
-/

namespace A331430.P3556009182865818442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (A002262 n).toNat * A063007 n)

end

end A331430.P3556009182865818442

namespace A331430

/-- `-(A033999(A002262(n))*A063007(n))` -/
def P3556009182865818442.Spec : Prop :=
  ∀ n, P3556009182865818442.a n = A331430 n

end A331430

/-! ## A331430.P2246630321869915098

`-(A027555(n)*A029653(A061579(n)))`
-/

namespace A331430.P2246630321869915098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A027555 n * A029653 (A061579 n).toNat)

end

end A331430.P2246630321869915098

namespace A331430

/-- `-(A027555(n)*A029653(A061579(n)))` -/
def P2246630321869915098.Spec : Prop :=
  ∀ n, P2246630321869915098.a n = A331430 n

end A331430

/-! ## A331430.P11693164568104166347

`-(A046899(n)*A130595(A061579(n)))`
-/

namespace A331430.P11693164568104166347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A046899 n * A130595 (A061579 n).toNat)

end

end A331430.P11693164568104166347

namespace A331430

/-- `-(A046899(n)*A130595(A061579(n)))` -/
def P11693164568104166347.Spec : Prop :=
  ∀ n, P11693164568104166347.a n = A331430 n

end A331430

/-! ## A331430.P8621250592878487884

`-(A033999(A294317(n))*A063007(n))`
-/

namespace A331430.P8621250592878487884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (A294317 n).toNat * A063007 n)

end

end A331430.P8621250592878487884

namespace A331430

/-- `-(A033999(A294317(n))*A063007(n))` -/
def P8621250592878487884.Spec : Prop :=
  ∀ n, P8621250592878487884.a n = A331430 n

end A331430

/-! ## A331430.P4119389389843152756

`-(A130595(n)*A130595(A245300(n)))`
-/

namespace A331430.P4119389389843152756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A130595 n * A130595 (A245300 n).toNat)

end

end A331430.P4119389389843152756

namespace A331430

/-- `-(A130595(n)*A130595(A245300(n)))` -/
def P4119389389843152756.Spec : Prop :=
  ∀ n, P4119389389843152756.a n = A331430 n

end A331430

/-! ## A331430.P14484374870294176235

`A033999(A002262(n)+1)*A063007(n)`
-/

namespace A331430.P14484374870294176235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n + 1).toNat * A063007 n

end

end A331430.P14484374870294176235

namespace A331430

/-- `A033999(A002262(n)+1)*A063007(n)` -/
def P14484374870294176235.Spec : Prop :=
  ∀ n, P14484374870294176235.a n = A331430 n

end A331430

/-! ## A331430.P6696102272924000198

`A033999(A294317(n)+1)*A063007(n)`
-/

namespace A331430.P6696102272924000198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n + 1).toNat * A063007 n

end

end A331430.P6696102272924000198

namespace A331430

/-- `A033999(A294317(n)+1)*A063007(n)` -/
def P6696102272924000198.Spec : Prop :=
  ∀ n, P6696102272924000198.a n = A331430 n

end A331430

/-! ## A331430.P2395460733491417189

`A063007(n)/A033999(A294317(n)+A033999(n))`
-/

namespace A331430.P2395460733491417189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℚ) / (A033999 (A294317 n + A033999 n).toNat : ℚ)

end

end A331430.P2395460733491417189

namespace A331430

/-- `A063007(n)/A033999(A294317(n)+A033999(n))` -/
def P2395460733491417189.Spec : Prop :=
  ∀ n, P2395460733491417189.a n = (A331430 n : ℚ)

end A331430

/-! ## A331430.P8129910359653589092

`-(A004718(A059268(n))*A063007(n))`
-/

namespace A331430.P8129910359653589092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A004718 (A059268 n).toNat * A063007 n)

end

end A331430.P8129910359653589092

namespace A331430

/-- `-(A004718(A059268(n))*A063007(n))` -/
def P8129910359653589092.Spec : Prop :=
  ∀ n, P8129910359653589092.a n = A331430 n

end A331430

/-! ## A331430.P9425593685735144001

`A004718(2*A059268(n))*A063007(n)`
-/

namespace A331430.P9425593685735144001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (2 * A059268 n).toNat * A063007 n

end

end A331430.P9425593685735144001

namespace A331430

/-- `A004718(2*A059268(n))*A063007(n)` -/
def P9425593685735144001.Spec : Prop :=
  ∀ n, P9425593685735144001.a n = A331430 n

end A331430

/-!
# A331431: Triangle read by rows: T(n,k) = (-1)^(n+k)*(n+k+1)*binomial(n,k)*binomial(n+k,k) for n >= k >= 0.

The programs for A331431, the canonical program `A331431.P10000230021698690973` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331431 has offset 0).

The definition of A331431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(row(n)+col(n))*(row(n)+col(n)+1)*C(row(n), col(n))*C(row(n)+col(n), col(n))` (program `A331431.P10000230021698690973`, by `A331431.P10000230021698690973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331431.P10000230021698690973

`(-1)^(row(n)+col(n))*(row(n)+col(n)+1)*C(row(n), col(n))*C(row(n)+col(n), col(n))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331431

/-- `(-1)^(row(n)+col(n))*(row(n)+col(n)+1)*C(row(n), col(n))*C(row(n)+col(n), col(n))` -/
def P10000230021698690973.Spec : Prop :=
  ∀ n, P10000230021698690973.a n = A331431 n

theorem P10000230021698690973.correct : P10000230021698690973.Spec := by
  intro n
  simp only [A331431]

end A331431

/-! ## A331431.P4090969045655576019

`(-1)^(row(n)+1)*(row(n)+col(n)+1)*A331430(C(row(n)+1, 2)+col(n))`
-/

namespace A331431.P4090969045655576019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1 : ℤ) * A331430 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A331431.P4090969045655576019

namespace A331431

/-- `(-1)^(row(n)+1)*(row(n)+col(n)+1)*A331430(C(row(n)+1, 2)+col(n))` -/
def P4090969045655576019.Spec : Prop :=
  ∀ n, P4090969045655576019.a n = A331431 n

end A331431

/-! ## A331431.P11742409895428425884

`(-1)^(row(n)+col(n))*(row(n)+col(n)+1)!/(col(n)!²*(row(n)-col(n))!)`
-/

namespace A331431.P11742409895428425884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * (Nat.factorial (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) : ℤ) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) ^ 2 * Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A331431.P11742409895428425884

namespace A331431

/-- `(-1)^(row(n)+col(n))*(row(n)+col(n)+1)!/(col(n)!²*(row(n)-col(n))!)` -/
def P11742409895428425884.Spec : Prop :=
  ∀ n, P11742409895428425884.a n = (A331431 n : ℚ)

end A331431

/-! ## A331431.P12377461916293169771

`abs(A303700(n))*A140756(n+1)`
-/

namespace A331431.P12377461916293169771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303700 n| * A140756 (n + 1)

end

end A331431.P12377461916293169771

namespace A331431

/-- `abs(A303700(n))*A140756(n+1)` -/
def P12377461916293169771.Spec : Prop :=
  ∀ n, P12377461916293169771.a n = A331431 n

end A331431

/-! ## A331431.P10460707022804183766

`A002457(A002262(n))*A053122(n)`
-/

namespace A331431.P10460707022804183766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (A002262 n).toNat * A053122 n

end

end A331431.P10460707022804183766

namespace A331431

/-- `A002457(A002262(n))*A053122(n)` -/
def P10460707022804183766.Spec : Prop :=
  ∀ n, P10460707022804183766.a n = A331431 n

end A331431

/-! ## A331431.P970613453653766294

`A053122(n)*A056040(A158405(n+1))`
-/

namespace A331431.P970613453653766294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053122 n * A056040 (A158405 (n + 1)).toNat

end

end A331431.P970613453653766294

namespace A331431

/-- `A053122(n)*A056040(A158405(n+1))` -/
def P970613453653766294.Spec : Prop :=
  ∀ n, P970613453653766294.a n = A331431 n

end A331431

/-! ## A331431.P5121228585394953481

`A063007(n)*A181983(A094727(n+1))`
-/

namespace A331431.P5121228585394953481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n * A181983 (A094727 (n + 1)).toNat

end

end A331431.P5121228585394953481

namespace A331431

/-- `A063007(n)*A181983(A094727(n+1))` -/
def P5121228585394953481.Spec : Prop :=
  ∀ n, P5121228585394953481.a n = A331431 n

end A331431

/-! ## A331431.P14605940294808696021

`lcm(A033999(n), A303700(n))*A140756(n+1)`
-/

namespace A331431.P14605940294808696021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A303700 n) : ℤ) * A140756 (n + 1)

end

end A331431.P14605940294808696021

namespace A331431

/-- `lcm(A033999(n), A303700(n))*A140756(n+1)` -/
def P14605940294808696021.Spec : Prop :=
  ∀ n, P14605940294808696021.a n = A331431 n

end A331431

/-!
# A331432: Triangle T(n,k) (n >= k >= 0) read by rows: T(n,0) = (1+(-1)^n)/2; for k>=1, set T(0,k) = 0, S(n,k) = binomial(n,k)*binomial(n+k+1,k), and for n>=1, T(n,k) = S(n,k)-T(n-1,k).

The programs for A331432, the canonical program `A331432.P11049608433853566370` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331432 has offset 0).

The definition of A331432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331432.P11049608433853566370

`C(row(n), col(n))*C(row(n)+col(n)+1, col(n))-T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331432

/-- `C(row(n), col(n))*C(row(n)+col(n)+1, col(n))-T(n-1,k)` -/
def P11049608433853566370.Spec : Prop :=
  ∀ n, P11049608433853566370.a n = A331432 n

theorem P11049608433853566370.correct : P11049608433853566370.Spec := by
  intro n
  simp only [A331432]

end A331432

/-!
# A331433: Column 1 of triangle in A331431.

The programs for A331433, the canonical program `A331433.P3188401635239420393` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331433 has offset 0).

The definition of A331433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331433.P9975608549744125801

`ogf(6/(1+4x+6x^2+4x^3+x^4))`
-/

namespace A331433.P9975608549744125801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, 4, 6, 4, 1] n

end

end A331433.P9975608549744125801

namespace A331433

/-- `ogf(6/(1+4x+6x^2+4x^3+x^4))` -/
def P9975608549744125801.Spec : Prop :=
  ∀ n, P9975608549744125801.a n = A331433 n

end A331433

/-! ## A331433.P16436805382455105567

`6*(-1)^n*C(n+3, 3)`
-/

namespace A331433.P16436805382455105567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (-1) ^ n * (Nat.choose (n + 3) 3 : ℤ)

end

end A331433.P16436805382455105567

namespace A331433

/-- `6*(-1)^n*C(n+3, 3)` -/
def P16436805382455105567.Spec : Prop :=
  ∀ n, P16436805382455105567.a n = A331433 n

end A331433

/-! ## A331433.P3188401635239420393

`6*(-1)^n*A000292(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331433

/-- `6*(-1)^n*A000292(n+1)` -/
def P3188401635239420393.Spec : Prop :=
  ∀ n, P3188401635239420393.a n = A331433 n

theorem P3188401635239420393.correct : P3188401635239420393.Spec := by
  intro n
  simp only [A331433]

end A331433

/-! ## A331433.P6174572499724536749

`6*∑[∑[n+1]]*(-1)^n`
-/

namespace A331433.P6174572499724536749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) * (-1) ^ n

end

end A331433.P6174572499724536749

namespace A331433

/-- `6*∑[∑[n+1]]*(-1)^n` -/
def P6174572499724536749.Spec : Prop :=
  ∀ n, P6174572499724536749.a n = A331433 n

end A331433

/-! ## A331433.P10657682301684353715

`-((n+3)*a(n-1)/n)` with `a(0)=6`
-/

namespace A331433.P10657682301684353715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  -((n + 3 : ℚ) * (a (n - 1) / (n : ℚ)))

end

end A331433.P10657682301684353715

namespace A331433

/-- `-((n+3)*a(n-1)/n)` -/
def P10657682301684353715.Spec : Prop :=
  ∀ n, P10657682301684353715.a n = (A331433 n : ℚ)

end A331433

/-! ## A331433.P15255648308053665051

`a(n-1)/(3/(n+3)-1)` with `a(0)=6`
-/

namespace A331433.P15255648308053665051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) / (3 / (n + 3 : ℚ) - 1)

end

end A331433.P15255648308053665051

namespace A331433

/-- `a(n-1)/(3/(n+3)-1)` -/
def P15255648308053665051.Spec : Prop :=
  ∀ n, P15255648308053665051.a n = (A331433 n : ℚ)

end A331433

/-! ## A331433.P15747381301672135626

`∑[A028896(n+1)]/(-1)^n`
-/

namespace A331433.P15747381301672135626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A331433.P15747381301672135626

namespace A331433

/-- `∑[A028896(n+1)]/(-1)^n` -/
def P15747381301672135626.Spec : Prop :=
  ∀ n, P15747381301672135626.a n = (A331433 n : ℚ)

end A331433

/-! ## A331433.P5339241456365676486

`∑[A000217(2*n+3)*A099254(3*n)]`
-/

namespace A331433.P5339241456365676486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 3) * A099254 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331433.P5339241456365676486

namespace A331433

/-- `∑[A000217(2*n+3)*A099254(3*n)]` -/
def P5339241456365676486.Spec : Prop :=
  ∀ n, P5339241456365676486.a n = A331433 n

end A331433

/-! ## A331433.P13990795742669178897

`A163649(A167614(n+2))`
-/

namespace A331433.P13990795742669178897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163649 (A167614 (n + 2)).toNat

end

end A331433.P13990795742669178897

namespace A331433

/-- `A163649(A167614(n+2))` -/
def P13990795742669178897.Spec : Prop :=
  ∀ n, P13990795742669178897.a n = A331433 n

end A331433

/-! ## A331433.P12328018256700021410

`A000142(n+3)/∏[floor(acot(n)-n)]`
-/

namespace A331433.P12328018256700021410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 3) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A331433.P12328018256700021410

namespace A331433

/-- `A000142(n+3)/∏[floor(acot(n)-n)]` -/
def P12328018256700021410.Spec : Prop :=
  ∀ n, P12328018256700021410.a n = (A331433 n : ℚ)

end A331433

/-!
# A331434: Column 2 of triangle in A331431.

The programs for A331434, the canonical program `A331434.P10241733263217648519` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331434 has offset 0).

The definition of A331434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331434.P14469096079581575725

`ogf(30/(1+6x+15x^2+20x^3+15x^4+6x^5+x^6))`
-/

namespace A331434.P14469096079581575725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [30] [1, 6, 15, 20, 15, 6, 1] n

end

end A331434.P14469096079581575725

namespace A331434

/-- `ogf(30/(1+6x+15x^2+20x^3+15x^4+6x^5+x^6))` -/
def P14469096079581575725.Spec : Prop :=
  ∀ n, P14469096079581575725.a n = A331434 n

end A331434

/-! ## A331434.P8650210399758280692

`30*(-1)^n*C(n+5, 5)`
-/

namespace A331434.P8650210399758280692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * (-1) ^ n * (Nat.choose (n + 5) 5 : ℤ)

end

end A331434.P8650210399758280692

namespace A331434

/-- `30*(-1)^n*C(n+5, 5)` -/
def P8650210399758280692.Spec : Prop :=
  ∀ n, P8650210399758280692.a n = A331434 n

end A331434

/-! ## A331434.P10241733263217648519

`30*(-1)^n*A000389(n+5)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331434

/-- `30*(-1)^n*A000389(n+5)` -/
def P10241733263217648519.Spec : Prop :=
  ∀ n, P10241733263217648519.a n = A331434 n

theorem P10241733263217648519.correct : P10241733263217648519.Spec := by
  intro n
  simp only [A331434]

end A331434

/-! ## A331434.P17280491855629034800

`-((5/n+1)*a(n-1))` with `a(0)=30`
-/

namespace A331434.P17280491855629034800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [30] fun n a =>
  -((5 / (n : ℚ) + 1) * a (n - 1))

end

end A331434.P17280491855629034800

namespace A331434

/-- `-((5/n+1)*a(n-1))` -/
def P17280491855629034800.Spec : Prop :=
  ∀ n, P17280491855629034800.a n = (A331434 n : ℚ)

end A331434

/-! ## A331434.P1428460880502192080

`(-1)^n*A054559(n+5)`
-/

namespace A331434.P1428460880502192080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A054559 (n + 5)

end

end A331434.P1428460880502192080

namespace A331434

/-- `(-1)^n*A054559(n+5)` -/
def P1428460880502192080.Spec : Prop :=
  ∀ n, P1428460880502192080.a n = A331434 n

theorem P1428460880502192080.correct : P1428460880502192080.Spec := by
  intro n
  simp only [A331434, Nat.add_sub_cancel, A331434.P1428460880502192080.a, A331434.P10241733263217648519.a, A000389, A000389.P15450220129395289428.a, A054559, A054559.P15202165871438408034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331434

/-! ## A331434.P6921902084440487694

`A054559(n+5)/A033999(n)`
-/

namespace A331434.P6921902084440487694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054559 (n + 5) : ℚ) / (A033999 n : ℚ)

end

end A331434.P6921902084440487694

namespace A331434

/-- `A054559(n+5)/A033999(n)` -/
def P6921902084440487694.Spec : Prop :=
  ∀ n, P6921902084440487694.a n = (A331434 n : ℚ)

end A331434

/-! ## A331434.P11053853697240602147

`A054559(n+5)*A062157(n+1)`
-/

namespace A331434.P11053853697240602147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054559 (n + 5) * A062157 (n + 1)

end

end A331434.P11053853697240602147

namespace A331434

/-- `A054559(n+5)*A062157(n+1)` -/
def P11053853697240602147.Spec : Prop :=
  ∀ n, P11053853697240602147.a n = A331434 n

theorem P11053853697240602147.correct : P11053853697240602147.Spec := by
  intro n
  simp only [A331434, Nat.add_sub_cancel, A331434.P11053853697240602147.a, A331434.P10241733263217648519.a, A000389, A000389.P15450220129395289428.a, A054559, A054559.P15202165871438408034.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331434

/-! ## A331434.P8043203014407787509

`A054559(n+5)/A062157(n+5)`
-/

namespace A331434.P8043203014407787509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054559 (n + 5) : ℚ) / (A062157 (n + 5) : ℚ)

end

end A331434.P8043203014407787509

namespace A331434

/-- `A054559(n+5)/A062157(n+5)` -/
def P8043203014407787509.Spec : Prop :=
  ∀ n, P8043203014407787509.a n = (A331434 n : ℚ)

end A331434

/-!
# A331436: Array read by antidiagonals: A(n,k) is the number of n element multisets of n element multisets of a k-set.

The programs for A331436, there is no canonical definition to state claims against.
-/

/-! ## A331436.P11556723141611913840

`A343097(n)%A226066(A073726(n+2))`
-/

namespace A331436.P11556723141611913840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343097 n) (A226066 (A073726 (n + 2)).toNat)

end

end A331436.P11556723141611913840

/-!
# A331437: Triangle read by rows: T(n,k) = number of homeomorphically irreducible connected labeled graphs with n edges and k vertices, n >= 0, 1 <= k <= n+1.

The programs for A331437, there is no canonical definition to state claims against.
-/

/-! ## A331437.P17970468724840662180

`C(A005512(A051125(n+1)), A211796(n+1))`
-/

namespace A331437.P17970468724840662180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005512 (A051125 (n + 1)).toNat).toNat (A211796 (n + 1)).toNat

end

end A331437.P17970468724840662180

/-! ## A331437.P4748461532881824680

`A361401(C(A361432(n+4), A103407(n+1)))`
-/

namespace A331437.P4748461532881824680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361401 (Nat.choose (A361432 (n + 4)).toNat (A103407 (n + 1)).toNat)

end

end A331437.P4748461532881824680

/-!
# A331438: Irregular triangle read by rows: T(n,k) = number of homeomorphically irreducible connected labeled graphs with n vertices and k edges, n >= 1, 0 <= k <= n*(n-1)/2.

The programs for A331438, there is no canonical definition to state claims against.
-/

/-! ## A331438.P4194295383613923436

`and(A072721(n), A239936(A234042(n)))`
-/

namespace A331438.P4194295383613923436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072721 n) (A239936 (A234042 n).toNat)

end

end A331438.P4194295383613923436

/-! ## A331438.P17165843472048050946

`C(A003989(2*n+5), A285189(A077505(n+2)))`
-/

namespace A331438.P17165843472048050946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003989 (2 * n + 5)).toNat (A285189 (A077505 (n + 2)).toNat).toNat

end

end A331438.P17165843472048050946

/-!
# A331440: Let S = smallest missing positive number, adjoin S, 2*S, 4*S, 8*S, 16*S, ... to the sequence until reaching a term that has S as a substring; reset S to the smallest missing positive number, repeat.

The programs for A331440, there is no canonical definition to state claims against.
-/

/-! ## A331440.P2030572179739928257

`(2*a(n-1))%A312042(A056498(n+1))` with `a(0)=1`
-/

namespace A331440.P2030572179739928257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * a (n - 1)) (A312042 (A056498 (n + 1)).toNat)

end

end A331440.P2030572179739928257

/-! ## A331440.P10282413089517693678

`A241916(A074279(n+1)^A064866(n+1))`
-/

namespace A331440.P10282413089517693678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (SequenceMachineLib.roundAway ((A074279 (n + 1) : ℚ) ^ (A064866 (n + 1) : ℤ))).toNat

end

end A331440.P10282413089517693678

/-! ## A331440.P13247737220683421844

`A302436(A140134(n+1)+A000079(n))`
-/

namespace A331440.P13247737220683421844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 (A140134 (n + 1) + A000079 n).toNat

end

end A331440.P13247737220683421844

/-! ## A331440.P13653913738649134682

`filter[A335836(n+1), A334460(#)]`
-/

namespace A331440.P13653913738649134682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334460 (f1 j).toNat = 1) n)

end

end A331440.P13653913738649134682

/-!
# A331442: Length of n-th chain in A331440.

The programs for A331442, there is no canonical definition to state claims against.
-/

/-! ## A331442.P10669078540066427265

`Δ[record[A331441(A098181(n))]]`
-/

namespace A331442.P10669078540066427265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331441 (A098181 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331442.P10669078540066427265

/-! ## A331442.P13154123370298510874

`Δ[record[A331441(A007957(n+1))]]`
-/

namespace A331442.P13154123370298510874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331441 (A007957 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331442.P13154123370298510874

/-! ## A331442.P2508059005910542256

`Δ[record[A331441(A056699(n+1))]]`
-/

namespace A331442.P2508059005910542256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331441 (A056699 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331442.P2508059005910542256

/-! ## A331442.P18354068363185644962

`Δ[record[A331441(A065475(n+1))]]`
-/

namespace A331442.P18354068363185644962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331441 (A065475 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331442.P18354068363185644962

/-! ## A331442.P10056693087816292491

`Δ[record[A331441(A052938(n))]]`
-/

namespace A331442.P10056693087816292491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331441 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331442.P10056693087816292491

/-!
# A331443: Number of 1-complete partitions of n with largest part 4.

The programs for A331443, the canonical program `A331443.P9809106895310363921` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331443 has offset 0).

The definition of A331443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331443.P9809106895310363921

`A026810(n)-A005044(A326178(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331443

/-- `A026810(n)-A005044(A326178(n))` -/
def P9809106895310363921.Spec : Prop :=
  ∀ n, P9809106895310363921.a n = A331443 n

theorem P9809106895310363921.correct : P9809106895310363921.Spec := by
  intro n
  simp only [A331443]

end A331443

/-! ## A331443.P16078976594304011076

`A026810(n)-A005044(A171526(n+1))`
-/

namespace A331443.P16078976594304011076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A005044 (A171526 (n + 1)).toNat

end

end A331443.P16078976594304011076

namespace A331443

/-- `A026810(n)-A005044(A171526(n+1))` -/
def P16078976594304011076.Spec : Prop :=
  ∀ n, P16078976594304011076.a n = A331443 n

end A331443

/-! ## A331443.P12959248136758548714

`A026810(n)-A008642(n)%A025767(n)`
-/

namespace A331443.P12959248136758548714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - Int.tmod (A008642 n) (A025767 n)

end

end A331443.P12959248136758548714

namespace A331443

/-- `A026810(n)-A008642(n)%A025767(n)` -/
def P12959248136758548714.Spec : Prop :=
  ∀ n, P12959248136758548714.a n = A331443 n

end A331443

/-! ## A331443.P17283672316478168947

`A026810(n)-A005044((n+1)%A000041(n+1))`
-/

namespace A331443.P17283672316478168947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A005044 (Int.tmod (n + 1 : ℤ) (A000041 (n + 1))).toNat

end

end A331443.P17283672316478168947

namespace A331443

/-- `A026810(n)-A005044((n+1)%A000041(n+1))` -/
def P17283672316478168947.Spec : Prop :=
  ∀ n, P17283672316478168947.a n = A331443 n

end A331443

/-! ## A331443.P2297772866926450434

`(A008764(n)%A320592(n+6))%A008636(n)`
-/

namespace A331443.P2297772866926450434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A008764 n) (A320592 (n + 6))) (A008636 n)

end

end A331443.P2297772866926450434

namespace A331443

/-- `(A008764(n)%A320592(n+6))%A008636(n)` -/
def P2297772866926450434.Spec : Prop :=
  ∀ n, P2297772866926450434.a n = A331443 n

end A331443

/-! ## A331443.P13996236897072541582

`A288165(A008486(n))-A005044(A326178(n))`
-/

namespace A331443.P13996236897072541582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A008486 n).toNat - A005044 (A326178 n).toNat

end

end A331443.P13996236897072541582

namespace A331443

/-- `A288165(A008486(n))-A005044(A326178(n))` -/
def P13996236897072541582.Spec : Prop :=
  ∀ n, P13996236897072541582.a n = A331443 n

end A331443

/-!
# A331447: Triangle read by rows: T(n,k) (n >= 0, -1 <= k <= n-1) = number of partitions of n into nonnegative integer parts with rank k.

The programs for A331447, there is no canonical definition to state claims against.
-/

/-! ## A331447.P7701898291929364197

`A255270(A115450(n)²)`
-/

namespace A331447.P7701898291929364197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A115450 n ^ 2).toNat

end

end A331447.P7701898291929364197

/-! ## A331447.P14731981323070040623

`A255270(A285267(n+4))`
-/

namespace A331447.P14731981323070040623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A285267 (n + 4)).toNat

end

end A331447.P14731981323070040623

/-! ## A331447.P17932399225613258622

`A255270(A285281(n+4))`
-/

namespace A331447.P17932399225613258622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A285281 (n + 4)).toNat

end

end A331447.P17932399225613258622

/-! ## A331447.P7089987035894449578

`A117707(A112682(n+1)+1)`
-/

namespace A331447.P7089987035894449578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A112682 (n + 1) + 1).toNat

end

end A331447.P7089987035894449578

/-! ## A331447.P12966577887725690877

`A043557(A121416(n))`
-/

namespace A331447.P12966577887725690877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A121416 n).toNat

end

end A331447.P12966577887725690877

/-!
# A331448: a(0) = 0 by convention; for n>0, a(n) is the number of edges in the n-th figure shown in A255011 (meaning the figure with 4n points on the perimeter).

The programs for A331448, there is no canonical definition to state claims against.
-/

/-! ## A331448.P11560337761266918868

`A255011(n)+A331449(n)-1`
-/

namespace A331448.P11560337761266918868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255011 n + (A331449 n - 1)

end

end A331448.P11560337761266918868

/-! ## A331448.P5647061669695902187

`A255011(n)-(A331449(n)-1)*A057428(n)`
-/

namespace A331448.P5647061669695902187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255011 n - (A331449 n - 1) * A057428 n

end

end A331448.P5647061669695902187

/-! ## A331448.P2910588501979283341

`record[and(1, n)*A331454(A008805(n))]`
-/

namespace A331448.P2910588501979283341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A331454 (A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331448.P2910588501979283341

/-! ## A331448.P369443162094240975

`record[A000035(n)*A331454(A008805(n))]`
-/

namespace A331448.P369443162094240975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A331454 (A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331448.P369443162094240975

/-!
# A331449: a(0) = 1 by convention; for n>0, a(n) is the number of points in the n-th figure shown in A255011 (meaning the figure with 4n points on the perimeter).

The programs for A331449, there is no canonical definition to state claims against.
-/

/-! ## A331449.P17495209871025850680

`A331448(n)-A255011(n)+1`
-/

namespace A331449.P17495209871025850680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331448 n - A255011 n + 1

end

end A331449.P17495209871025850680

/-! ## A331449.P1494806472128852216

`A334690(round(sqrt(n²+1)))+4*n`
-/

namespace A331449.P1494806472128852216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334690 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (4 * n : ℤ)

end

end A331449.P1494806472128852216

/-! ## A331449.P15011657299652516291

`A331448(n)+1-(A345459(n)-A345648(n))`
-/

namespace A331449.P15011657299652516291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331448 n + 1 - (A345459 n - A345648 n)

end

end A331449.P15011657299652516291

/-!
# A331452: Triangle read by rows: T(n,m) (n >= m >= 1) = number of regions (or cells) formed by drawing the line segments connecting any two of the 2*(m+n) perimeter points of an m X n grid of squares.

The programs for A331452, there is no canonical definition to state claims against.
-/

/-! ## A331452.P10930702770442214935

`A331454(n+1)+1-A331453(n+1)`
-/

namespace A331452.P10930702770442214935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331454 (n + 1) + (1 - A331453 (n + 1))

end

end A331452.P10930702770442214935

/-! ## A331452.P4893317683267016415

`A331454(n+1)-A185048(A331453(n+1))`
-/

namespace A331452.P4893317683267016415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331454 (n + 1) - A185048 (A331453 (n + 1)).toNat

end

end A331452.P4893317683267016415

/-! ## A331452.P13719526938243606699

`A092486(A331454(n+1)-A331453(n+1))`
-/

namespace A331452.P13719526938243606699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A331454 (n + 1) - A331453 (n + 1)).toNat

end

end A331452.P13719526938243606699

/-! ## A331452.P12143117047325974476

`A014681(A331454(n+1)-A331453(n+1))`
-/

namespace A331452.P12143117047325974476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A331454 (n + 1) - A331453 (n + 1)).toNat

end

end A331452.P12143117047325974476

/-! ## A331452.P15714420997485661857

`A015906(A331454(n+1)-A331453(n+1))`
-/

namespace A331452.P15714420997485661857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A331454 (n + 1) - A331453 (n + 1)).toNat

end

end A331452.P15714420997485661857

/-!
# A331453: Triangle read by rows: T(n,m) (n >= m >= 1) = number of vertices formed by drawing the lines connecting any two of the 2*(m+n) perimeter points of an m X n grid of squares.

The programs for A331453, there is no canonical definition to state claims against.
-/

/-! ## A331453.P9510476441830621647

`A331454(n+1)+1-A331452(n+1)`
-/

namespace A331453.P9510476441830621647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331454 (n + 1) + (1 - A331452 (n + 1))

end

end A331453.P9510476441830621647

/-! ## A331453.P10264161800301835513

`A141310(A331454(n+1)-A331452(n+1))`
-/

namespace A331453.P10264161800301835513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A331454 (n + 1) - A331452 (n + 1)).toNat

end

end A331453.P10264161800301835513

/-! ## A331453.P1384645184996029043

`A331454(n+1)+A024000(A331452(n+1))`
-/

namespace A331453.P1384645184996029043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331454 (n + 1) + A024000 (A331452 (n + 1)).toNat

end

end A331453.P1384645184996029043

/-! ## A331453.P757573794082034734

`A004442(A331454(n+1)-A331452(n+1))`
-/

namespace A331453.P757573794082034734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A331454 (n + 1) - A331452 (n + 1)).toNat

end

end A331453.P757573794082034734

/-! ## A331453.P1486444229777772355

`A020725(A331454(n+1)-A331452(n+1))`
-/

namespace A331453.P1486444229777772355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A331454 (n + 1) - A331452 (n + 1)).toNat

end

end A331453.P1486444229777772355

/-!
# A331454: Triangle read by rows: T(n,m) (n >= m >= 1) = number of line segments formed by drawing the lines connecting any two of the 2*(m+n) perimeter points of an m X n grid of squares.

The programs for A331454, there is no canonical definition to state claims against.
-/

/-! ## A331454.P10337875496021313030

`A331452(n+1)+A331453(n+1)-1`
-/

namespace A331454.P10337875496021313030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331452 (n + 1) + (A331453 (n + 1) - 1)

end

end A331454.P10337875496021313030

/-! ## A331454.P13184655487533374508

`A331453(n+1)+A331452(n+1)+A008683(A151800(n))`
-/

namespace A331454.P13184655487533374508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331453 (n + 1) + (A331452 (n + 1) + A008683 (A151800 n).toNat)

end

end A331454.P13184655487533374508

/-! ## A331454.P7361554739056665228

`A331452(n+1)+A185048(A331453(n+1))`
-/

namespace A331454.P7361554739056665228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331452 (n + 1) + A185048 (A331453 (n + 1)).toNat

end

end A331454.P7361554739056665228

/-! ## A331454.P5137860127943970123

`A331453(n+1)+A014681(A331452(n+1))`
-/

namespace A331454.P5137860127943970123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331453 (n + 1) + A014681 (A331452 (n + 1)).toNat

end

end A331454.P5137860127943970123

/-! ## A331454.P11826207853053394696

`A240828(A331453(n+1)+A331452(n+1))`
-/

namespace A331454.P11826207853053394696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240828 (A331453 (n + 1) + A331452 (n + 1)).toNat

end

end A331454.P11826207853053394696

/-!
# A331455: Number of regions in a "cross" of width 3 and height n (see Comments for definition).

The programs for A331455, there is no canonical definition to state claims against.
-/

/-! ## A331455.P9482831514076363709

`A330851(n+2)+1-A330850(n+2)`
-/

namespace A331455.P9482831514076363709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330851 (n + 2) + (1 - A330850 (n + 2))

end

end A331455.P9482831514076363709

/-! ## A331455.P17676129529755108288

`A330851(n+2)-A066182(A330850(n+2))`
-/

namespace A331455.P17676129529755108288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330851 (n + 2) - A066182 (A330850 (n + 2)).toNat

end

end A331455.P17676129529755108288

/-! ## A331455.P5552296496304067880

`A092486(A330851(n+2)-A330850(n+2))`
-/

namespace A331455.P5552296496304067880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A330851 (n + 2) - A330850 (n + 2)).toNat

end

end A331455.P5552296496304067880

/-! ## A331455.P2548130494926724962

`A015906(A330851(n+2)-A330850(n+2))`
-/

namespace A331455.P2548130494926724962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A330851 (n + 2) - A330850 (n + 2)).toNat

end

end A331455.P2548130494926724962

/-! ## A331455.P17368810896303859078

`A020725(A330851(n+2)-A330850(n+2))`
-/

namespace A331455.P17368810896303859078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A330851 (n + 2) - A330850 (n + 2)).toNat

end

end A331455.P17368810896303859078

/-!
# A331456: Number of regions in an equal-armed cross with arms of length n (see Comments for definition).

The programs for A331456, there is no canonical definition to state claims against.
-/

/-! ## A331456.P17334712381388102761

`4*A331458(n)`
-/

namespace A331456.P17334712381388102761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A331458 n

end

end A331456.P17334712381388102761

/-! ## A331456.P16352974883446962645

`A333036(n)+1-A333035(n)`
-/

namespace A331456.P16352974883446962645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333036 n + (1 - A333035 n)

end

end A331456.P16352974883446962645

/-! ## A331456.P12139834437768378434

`A331458(n)/(A014577(A278254(n+1))/2)²`
-/

namespace A331456.P12139834437768378434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331458 n : ℚ) / ((A014577 (A278254 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A331456.P12139834437768378434

/-! ## A331456.P4545454874460556910

`A331458(n)/(2^A008683(A181758(n+1)))²`
-/

namespace A331456.P4545454874460556910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331458 n : ℚ) / ((2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ)) ^ 2

end

end A331456.P4545454874460556910

/-! ## A331456.P11015546308131145317

`A333036(n)-A066182(A333035(n))`
-/

namespace A331456.P11015546308131145317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333036 n - A066182 (A333035 n).toNat

end

end A331456.P11015546308131145317

/-!
# A331457: Triangle read by rows: T(n,k) = number of regions in a "frame" of size n X k (see Comments for definition).

The programs for A331457, there is no canonical definition to state claims against.
-/

/-! ## A331457.P400912503935490596

`A331452(n+1)-A236840(A051307(n))`
-/

namespace A331457.P400912503935490596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331452 (n + 1) - A236840 (A051307 n).toNat

end

end A331457.P400912503935490596

/-! ## A331457.P5308304517876060769

`A138530(A001147(n))*A331452(A078448(n+1))`
-/

namespace A331457.P5308304517876060769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (A001147 n).toNat * A331452 (A078448 (n + 1)).toNat

end

end A331457.P5308304517876060769

/-!
# A331458: a(n) = A331456(n)/4.

The programs for A331458, there is no canonical definition to state claims against.
-/

/-! ## A331458.P9166527285057476505

`A331456(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331458.P9166527285057476505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331456 n : ℚ) / 4

end

end A331458.P9166527285057476505

/-! ## A331458.P11980351164532698797

`record[ratio[A331456(A142150(n))]]`
-/

namespace A331458.P11980351164532698797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331456 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331458.P11980351164532698797

/-! ## A331458.P17230199205672708734

`(A333036(n)+1-A333035(n))/4`
-/

namespace A331458.P17230199205672708734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333036 n + (1 - A333035 n) : ℚ) / 4

end

end A331458.P17230199205672708734

/-! ## A331458.P3500926491220412761

`(2^A008683(A181758(n+1)))²*A331456(n)`
-/

namespace A331458.P3500926491220412761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ)) ^ 2 * (A331456 n : ℚ)

end

end A331458.P3500926491220412761

/-! ## A331458.P7599502694290698879

`A110962(A331456(n))`
-/

namespace A331458.P7599502694290698879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A331456 n).toNat

end

end A331458.P7599502694290698879

/-!
# A331459: Integers m such that phi(m) * tau(m)^2 divides m^2.

The programs for A331459, there is no canonical definition to state claims against.
-/

/-! ## A331459.P6168029603159100613

`A322321(A001274(n+1)*A109001(n))`
-/

namespace A331459.P6168029603159100613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322321 (A001274 (n + 1) * A109001 n).toNat

end

end A331459.P6168029603159100613

/-! ## A331459.P16036832852805106265

`A083546(∑[A178473(n)²])`
-/

namespace A331459.P16036832852805106265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178473 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083546 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331459.P16036832852805106265

/-! ## A331459.P11566863878337297445

`∩[A078541(n+1), A048312(n)]`
-/

namespace A331459.P11566863878337297445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331459.P11566863878337297445

/-!
# A331460: Irregular triangle read by rows in which row n is the result of iterating the operation f(n) = n/7 if n == 0 (mod 7), otherwise f(n) = 7*(n + ceiling(n/7)), terminating at the first occurrence of 1.

The programs for A331460, there is no canonical definition to state claims against.
-/

/-! ## A331460.P4304738258104881529

`A010688(A213387(n+1))*A266977(n)`
-/

namespace A331460.P4304738258104881529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (A213387 (n + 1)).toNat * A266977 n

end

end A331460.P4304738258104881529

/-! ## A331460.P8940661134708626743

`A194755(lt[A087021(n+1), A194755(n+1)])`
-/

namespace A331460.P8940661134708626743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194755 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331460.P8940661134708626743

/-!
# A331461: Array read by antidiagonals: A(n,k) is the number of nonequivalent binary matrices with k columns and any number of nonzero rows with n ones in every column up to permutation of rows and columns.

The programs for A331461, there is no canonical definition to state claims against.
-/

/-! ## A331461.P8986873427380770840

`A085576(A108998(n)+1)`
-/

namespace A331461.P8986873427380770840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085576 (A108998 n + 1).toNat

end

end A331461.P8986873427380770840

/-! ## A331461.P12386963422600230255

`A139072(A187783(n+1))`
-/

namespace A331461.P12386963422600230255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139072 (A187783 (n + 1)).toNat

end

end A331461.P12386963422600230255

/-! ## A331461.P14899509132433288265

`A375301(A362897(n+1))`
-/

namespace A331461.P14899509132433288265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375301 (A362897 (n + 1)).toNat

end

end A331461.P14899509132433288265

/-! ## A331461.P1341073260543612485

`A085576(or(1, A108998(n)))`
-/

namespace A331461.P1341073260543612485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085576 (Int.lor 1 (A108998 n)).toNat

end

end A331461.P1341073260543612485

/-! ## A331461.P16972024878889752698

`A156079(A273895(n+1)+1)`
-/

namespace A331461.P16972024878889752698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156079 (A273895 (n + 1) + 1).toNat

end

end A331461.P16972024878889752698

/-!
# A331463: Numbers k such that k and k + 1 are both binary hoax numbers (A329936).

The programs for A331463, there is no canonical definition to state claims against.
-/

/-! ## A331463.P13180227871603399619

`∩[A329936(n+1)-1, A329936(n+1)]`
-/

namespace A331463.P13180227871603399619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329936 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331463.P13180227871603399619

/-! ## A331463.P14007262964638171757

`A329936(eq[1, A329936(n+2)-A329936(n+1)]+1)`
-/

namespace A331463.P14007262964638171757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329936 (n + 2) - A329936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A331463.P14007262964638171757

/-! ## A331463.P5740732621327539519

`∩[A329936(n+1), A023443(A329936(n+1))]`
-/

namespace A331463.P5740732621327539519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A329936 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331463.P5740732621327539519

/-!
# A331464: Numbers k such that k and k + 1 are both binary Smith numbers (A278909).

The programs for A331464, there is no canonical definition to state claims against.
-/

/-! ## A331464.P8421604548700989295

`∩[A278909(n+1)-1, A278909(n+1)]`
-/

namespace A331464.P8421604548700989295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278909 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331464.P8421604548700989295

/-! ## A331464.P5393762799406468163

`∩[A280193(2*n+3)+A278909(n+1), A278909(n+1)]`
-/

namespace A331464.P5393762799406468163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 3) + A278909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331464.P5393762799406468163

/-! ## A331464.P3000214762556204762

`∩[A278909(n+1), A023443(A278909(n+1))]`
-/

namespace A331464.P3000214762556204762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A278909 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331464.P3000214762556204762

/-!
# A331466: The number of common terms in the Zeckendorf and dual Zeckendorf representations of n.

The programs for A331466, the canonical program `A331466.P14036186072440466331` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331466 has offset 0).

The definition of A331466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331466.P14036186072440466331

`A007895(A356771(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A331466

/-- `A007895(A356771(n))` -/
def P14036186072440466331.Spec : Prop :=
  ∀ n, P14036186072440466331.a n = A331466 n

theorem P14036186072440466331.correct : P14036186072440466331.Spec := by
  intro n
  simp only [A331466]

end A331466

/-! ## A331466.P11770929049075628260

`A286574(and(A003714(n), A003754(n+1)))`
-/

namespace A331466.P11770929049075628260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (Int.land (A003714 n) (A003754 (n + 1))).toNat

end

end A331466.P11770929049075628260

namespace A331466

/-- `A286574(and(A003714(n), A003754(n+1)))` -/
def P11770929049075628260.Spec : Prop :=
  ∀ n, P11770929049075628260.a n = A331466 n

end A331466

/-! ## A331466.P17107139074463691251

`A069010(and(A003714(n), A003754(n+1)))`
-/

namespace A331466.P17107139074463691251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.land (A003714 n) (A003754 (n + 1))).toNat

end

end A331466.P17107139074463691251

namespace A331466

/-- `A069010(and(A003714(n), A003754(n+1)))` -/
def P17107139074463691251.Spec : Prop :=
  ∀ n, P17107139074463691251.a n = A331466 n

end A331466

/-! ## A331466.P10285903530453838163

`A069010(and(A022340(n), A247648(n+1))/2)`
-/

namespace A331466.P10285903530453838163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((Int.land (A022340 n) (A247648 (n + 1)) : ℚ) / 2)).toNat

end

end A331466.P10285903530453838163

namespace A331466

/-- `A069010(and(A022340(n), A247648(n+1))/2)` -/
def P10285903530453838163.Spec : Prop :=
  ∀ n, P10285903530453838163.a n = A331466 n

end A331466

/-! ## A331466.P16509078999942647918

`A000120(and(A003714(n), A003754(n+1)))`
-/

namespace A331466.P16509078999942647918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A003714 n) (A003754 (n + 1))).toNat

end

end A331466.P16509078999942647918

namespace A331466

/-- `A000120(and(A003714(n), A003754(n+1)))` -/
def P16509078999942647918.Spec : Prop :=
  ∀ n, P16509078999942647918.a n = A331466 n

end A331466

/-! ## A331466.P14787294159795889299

`A160385(and(A003714(n), A003754(n+1)))`
-/

namespace A331466.P14787294159795889299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (Int.land (A003714 n) (A003754 (n + 1))).toNat

end

end A331466.P14787294159795889299

namespace A331466

/-- `A160385(and(A003714(n), A003754(n+1)))` -/
def P14787294159795889299.Spec : Prop :=
  ∀ n, P14787294159795889299.a n = A331466 n

end A331466

/-! ## A331466.P18042874141722335720

`A069010(and(A022340(n), A247648(n+1)))`
-/

namespace A331466.P18042874141722335720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.land (A022340 n) (A247648 (n + 1))).toNat

end

end A331466.P18042874141722335720

namespace A331466

/-- `A069010(and(A022340(n), A247648(n+1)))` -/
def P18042874141722335720.Spec : Prop :=
  ∀ n, P18042874141722335720.a n = A331466 n

end A331466

/-! ## A331466.P17320403243721432377

`A000120(and(A022340(n), A247648(n+1))/2)`
-/

namespace A331466.P17320403243721432377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((Int.land (A022340 n) (A247648 (n + 1)) : ℚ) / 2)).toNat

end

end A331466.P17320403243721432377

namespace A331466

/-- `A000120(and(A022340(n), A247648(n+1))/2)` -/
def P17320403243721432377.Spec : Prop :=
  ∀ n, P17320403243721432377.a n = A331466 n

end A331466

/-! ## A331466.P14992599092559486129

`A000120(and(A022340(n), A247648(n+1)))`
-/

namespace A331466.P14992599092559486129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A022340 n) (A247648 (n + 1))).toNat

end

end A331466.P14992599092559486129

namespace A331466

/-- `A000120(and(A022340(n), A247648(n+1)))` -/
def P14992599092559486129.Spec : Prop :=
  ∀ n, P14992599092559486129.a n = A331466 n

end A331466

/-!
# A331467: Numbers with no common terms in their Zeckendorf and dual Zeckendorf representations.

The programs for A331467, the canonical program `A331467.P7913927486807201382` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331467 has offset 1).

The definition of A331467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331467.P13355423932255454048

`eq[0, A356771(n)]`
-/

namespace A331467.P13355423932255454048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331467.P13355423932255454048

namespace A331467

/-- `eq[0, A356771(n)]` -/
def P13355423932255454048.Spec : Prop :=
  ∀ n, (P13355423932255454048.a n : ℤ) = A331467 (n + 1)

end A331467

/-! ## A331467.P7913927486807201382

`eq[0, A331466(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331467

/-- `eq[0, A331466(n)]` -/
def P7913927486807201382.Spec : Prop :=
  ∀ n, (P7913927486807201382.a n : ℤ) = A331467 (n + 1)

theorem P7913927486807201382.correct : P7913927486807201382.Spec := by
  intro n
  simp only [A331467, Nat.add_sub_cancel]

end A331467

/-! ## A331467.P6948012779624963334

`record[(n+1)*(1-A331466(n+1))]`
-/

namespace A331467.P6948012779624963334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A331466 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331467.P6948012779624963334

namespace A331467

/-- `record[(n+1)*(1-A331466(n+1))]` -/
def P6948012779624963334.Spec : Prop :=
  ∀ n, P6948012779624963334.a n = A331467 (n + 1)

end A331467

/-! ## A331467.P5502220226557710741

`eq[0, and(A003714(n), A003754(n+1))]`
-/

namespace A331467.P5502220226557710741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003714 n) (A003754 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331467.P5502220226557710741

namespace A331467

/-- `eq[0, and(A003714(n), A003754(n+1))]` -/
def P5502220226557710741.Spec : Prop :=
  ∀ n, (P5502220226557710741.a n : ℤ) = A331467 (n + 1)

end A331467

/-! ## A331467.P13577856925785090111

`record[n-A004863(n+1)*A331466(n)]`
-/

namespace A331467.P13577856925785090111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004863 (n + 1) * A331466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331467.P13577856925785090111

namespace A331467

/-- `record[n-A004863(n+1)*A331466(n)]` -/
def P13577856925785090111.Spec : Prop :=
  ∀ n, P13577856925785090111.a n = A331467 (n + 1)

end A331467

/-! ## A331467.P18071494864597973946

`record[n-A247679(n+1)*A331466(n)]`
-/

namespace A331467.P18071494864597973946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A247679 (n + 1) * A331466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331467.P18071494864597973946

namespace A331467

/-- `record[n-A247679(n+1)*A331466(n)]` -/
def P18071494864597973946.Spec : Prop :=
  ∀ n, P18071494864597973946.a n = A331467 (n + 1)

end A331467

/-!
# A331469: a(n) is the greatest value of the form p_1 + ... + p_k where p_1, ..., p_k are powers of primes and such that the concatenation of the binary representations of p_1, ..., p_k equals the binary representation of n.

The programs for A331469, there is no canonical definition to state claims against.
-/

/-! ## A331469.P14032283640123138548

`A001222(A123720(n+1)+A028233(n+1))`
-/

namespace A331469.P14032283640123138548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A123720 (n + 1) + A028233 (n + 1)).toNat

end

end A331469.P14032283640123138548

/-! ## A331469.P5415906849730298340

`A001222(A133095(n+1)+A028233(n+1))`
-/

namespace A331469.P5415906849730298340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133095 (n + 1) + A028233 (n + 1)).toNat

end

end A331469.P5415906849730298340

/-!
# A331470: a(n) is the greatest value of the form s_1^2 + ... + s_k^2 such that the concatenation of the binary representations of s_1^2, ..., s_k^2 equals the binary representation of n.

The programs for A331470, there is no canonical definition to state claims against.
-/

/-! ## A331470.P12508114406965184083

`A056924(A118599(3*n+2))%A100570(n+1)`
-/

namespace A331470.P12508114406965184083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056924 (A118599 (3 * n + 2)).toNat) (A100570 (n + 1))

end

end A331470.P12508114406965184083

/-!
# A331471: Consider the different ways to split the binary representation of n into palindromic parts; a(n) is the greatest possible sum of the parts of such a split.

The programs for A331471, there is no canonical definition to state claims against.
-/

/-! ## A331471.P8923867208395353470

`A331804(n)+A327932(A059966(n+1))`
-/

namespace A331471.P8923867208395353470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 n + A327932 (A059966 (n + 1)).toNat

end

end A331471.P8923867208395353470

/-! ## A331471.P1912107550774893046

`A330717(A325401(n))+A327932(A059966(n+1))`
-/

namespace A331471.P1912107550774893046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (A325401 n).toNat + A327932 (A059966 (n + 1)).toNat

end

end A331471.P1912107550774893046

/-! ## A331471.P5225734052361445500

`A331804(n)+A235127(A115205(n))`
-/

namespace A331471.P5225734052361445500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 n + A235127 (A115205 n).toNat

end

end A331471.P5225734052361445500

/-! ## A331471.P4040726863150878054

`A331804(A016116(n)*A325401(n))`
-/

namespace A331471.P4040726863150878054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (A016116 n * A325401 n).toNat

end

end A331471.P4040726863150878054

/-! ## A331471.P18165266503485273061

`A331804(lcm(A016116(n), A325401(n)))`
-/

namespace A331471.P18165266503485273061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (Int.lcm (A016116 n) (A325401 n))

end

end A331471.P18165266503485273061

/-!
# A331472: Consider the different ways to split the decimal representation of n into palindromic parts; a(n) is the greatest possible sum of the parts of such a split.

The programs for A331472, there is no canonical definition to state claims against.
-/

/-! ## A331472.P2484686014486720674

`A321797(n)+A007953(n*A011582(n²))`
-/

namespace A331472.P2484686014486720674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n + A007953 ((n : ℤ) * A011582 (n ^ 2)).toNat

end

end A331472.P2484686014486720674

/-! ## A331472.P13515164357900256209

`A321797(n)+A007953(A321801(n)%A143823(n))`
-/

namespace A331472.P13515164357900256209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n + A007953 (Int.tmod (A321801 n) (A143823 n)).toNat

end

end A331472.P13515164357900256209

/-! ## A331472.P11373610858919935039

`A321797(n)+A007953(A010052(n²)*A321801(n))`
-/

namespace A331472.P11373610858919935039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n + A007953 (A010052 (n ^ 2) * A321801 n).toNat

end

end A331472.P11373610858919935039

/-! ## A331472.P8467707818910555130

`A109014(n²)*A217928(n)`
-/

namespace A331472.P8467707818910555130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 (n ^ 2) * A217928 n

end

end A331472.P8467707818910555130

/-! ## A331472.P12727023924882221506

`A321797(n)+A007953(n*(1-val(∏{p}[n^3, #], 11)))`
-/

namespace A331472.P12727023924882221506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n + A007953 ((n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ))).toNat

end

end A331472.P12727023924882221506

/-! ## A331472.P58878173302773070

`A321797(n)+A007953(n*A145568(n²))`
-/

namespace A331472.P58878173302773070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n + A007953 ((n : ℤ) * A145568 (n ^ 2)).toNat

end

end A331472.P58878173302773070

/-! ## A331472.P2603397734667593090

`and(A058000(n+1), A364362(n))`
-/

namespace A331472.P2603397734667593090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058000 (n + 1)) (A364362 n)

end

end A331472.P2603397734667593090

/-! ## A331472.P15459341327258596597

`and(A084403(n+1), A364362(n))`
-/

namespace A331472.P15459341327258596597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084403 (n + 1)) (A364362 n)

end

end A331472.P15459341327258596597

/-! ## A331472.P17769718804686444287

`A389882(n)/A351653(n)`
-/

namespace A331472.P17769718804686444287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389882 n : ℚ) / (A351653 n : ℚ)

end

end A331472.P17769718804686444287

/-!
# A331473: Alternating sum of (n+1)*A000108(n+1).

The programs for A331473, the canonical program `A331473.P6714285736605512984` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331473 has offset 0).

The definition of A331473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331473.P6714285736605512984

`∑{#}[n, (-1)^(n-#)*(#+1)*A000108(#+1)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331473

/-- `∑{#}[n, (-1)^(n-#)*(#+1)*A000108(#+1)]` -/
def P6714285736605512984.Spec : Prop :=
  ∀ n, P6714285736605512984.a n = (A331473 n : ℚ)

end A331473

/-! ## A331473.P1416289043637961227

`∑{#}[n, (-1)^(n-#)*C(2*#+2, #)]`
-/

namespace A331473.P1416289043637961227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k + 2) k : ℚ)

end

end A331473.P1416289043637961227

namespace A331473

/-- `∑{#}[n, (-1)^(n-#)*C(2*#+2, #)]` -/
def P1416289043637961227.Spec : Prop :=
  ∀ n, P1416289043637961227.a n = (A331473 n : ℚ)

end A331473

/-! ## A331473.P18034540545242366715

`abs(∑[A158500(n+2)])`
-/

namespace A331473.P18034540545242366715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158500 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A331473.P18034540545242366715

namespace A331473

/-- `abs(∑[A158500(n+2)])` -/
def P18034540545242366715.Spec : Prop :=
  ∀ n, P18034540545242366715.a n = A331473 n

end A331473

/-! ## A331473.P18366318951218983409

`A001791(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A331473.P18366318951218983409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001791 (n + 1) - a (n - 1)

end

end A331473.P18366318951218983409

namespace A331473

/-- `A001791(n+1)-a(n-1)` -/
def P18366318951218983409.Spec : Prop :=
  ∀ n, P18366318951218983409.a n = A331473 n

end A331473

/-! ## A331473.P11495881146788125088

`A026023(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A331473.P11495881146788125088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026023 (2 * n) - a (n - 1)

end

end A331473.P11495881146788125088

namespace A331473

/-- `A026023(2*n)-a(n-1)` -/
def P11495881146788125088.Spec : Prop :=
  ∀ n, P11495881146788125088.a n = A331473 n

end A331473

/-! ## A331473.P16728642241888579895

`abs(∑[(n+1)*A168491(n+1)])`
-/

namespace A331473.P16728642241888579895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A331473.P16728642241888579895

namespace A331473

/-- `abs(∑[(n+1)*A168491(n+1)])` -/
def P16728642241888579895.Spec : Prop :=
  ∀ n, P16728642241888579895.a n = A331473 n

end A331473

/-! ## A331473.P10661406179297483718

`A037952(2*(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A331473.P10661406179297483718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037952 (2 * (n + 1)) - a (n - 1)

end

end A331473.P10661406179297483718

namespace A331473

/-- `A037952(2*(n+1))-a(n-1)` -/
def P10661406179297483718.Spec : Prop :=
  ∀ n, P10661406179297483718.a n = A331473 n

end A331473

/-! ## A331473.P12878553529506110138

`Δ[a(n-2)+n*A000108(n)]` with `a(0)=0, a(1)=1`
-/

namespace A331473.P12878553529506110138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331473.P12878553529506110138

namespace A331473

/-- `Δ[a(n-2)+n*A000108(n)]` -/
def P12878553529506110138.Spec : Prop :=
  ∀ n, P12878553529506110138.a n = A331473 n

end A331473

/-! ## A331473.P15682409446240914317

`(n+1)*A000108(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A331473.P15682409446240914317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A000108 (n + 1) - a (n - 1)

end

end A331473.P15682409446240914317

namespace A331473

/-- `(n+1)*A000108(n+1)-a(n-1)` -/
def P15682409446240914317.Spec : Prop :=
  ∀ n, P15682409446240914317.a n = A331473 n

end A331473

/-! ## A331473.P10340090245762894343

`A054109(n+1)-A054108(n)`
-/

namespace A331473.P10340090245762894343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054109 (n + 1) - A054108 n

end

end A331473.P10340090245762894343

namespace A331473

/-- `A054109(n+1)-A054108(n)` -/
def P10340090245762894343.Spec : Prop :=
  ∀ n, P10340090245762894343.a n = A331473 n

end A331473

/-! ## A331473.P3770029696213101477

`(n+1)*A039599(∑[n+1])-a(n-1)` with `a(0)=1`
-/

namespace A331473.P3770029696213101477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A039599 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A331473.P3770029696213101477

namespace A331473

/-- `(n+1)*A039599(∑[n+1])-a(n-1)` -/
def P3770029696213101477.Spec : Prop :=
  ∀ n, P3770029696213101477.a n = A331473 n

end A331473

/-! ## A331473.P12678532141725362548

`C(2*(n+1), n)-a(n-1)` with `a(0)=1`
-/

namespace A331473.P12678532141725362548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * (n + 1)) n : ℤ) - a (n - 1)

end

end A331473.P12678532141725362548

namespace A331473

/-- `C(2*(n+1), n)-a(n-1)` -/
def P12678532141725362548.Spec : Prop :=
  ∀ n, P12678532141725362548.a n = A331473 n

end A331473

/-! ## A331473.P11439892461705271680

`floor(C(n+2+n, n)-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A331473.P11439892461705271680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (n + 2 + n) n : ℤ) - a (n - 1)

end

end A331473.P11439892461705271680

namespace A331473

/-- `floor(C(n+2+n, n)-a(n-1))` -/
def P11439892461705271680.Spec : Prop :=
  ∀ n, P11439892461705271680.a n = A331473 n

end A331473

/-!
# A331474: Hankel transform of A331473.

The programs for A331474, there is no canonical definition to state claims against.
-/

/-! ## A331474.P7129681713611998473

`ogf((1+3x+16x^2-8x^3+36x^4-12x^5+x^6-x^7)/(1+14x^2+51x^4+14x^6+x^8))`
-/

namespace A331474.P7129681713611998473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 16, -8, 36, -12, 1, -1] [1, 0, 14, 0, 51, 0, 14, 0, 1] n

end

end A331474.P7129681713611998473

/-!
# A331476: The (10^n)-th even-digit number.

The programs for A331476, the canonical program `A331476.P4019166169547797384` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331476 has offset 0).

The definition of A331476 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014263, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331476.P4019166169547797384

`A014263(10^n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A331476

/-- `A014263(10^n)` -/
def P4019166169547797384.Spec : Prop :=
  ∀ n, P4019166169547797384.a n = A331476 n

theorem P4019166169547797384.correct : P4019166169547797384.Spec := by
  intro n
  simp only [A331476]

end A331476

/-!
# A331477: Number of n element multisets of n element multisets of an n-set.

The programs for A331477, there is no canonical definition to state claims against.
-/

/-! ## A331477.P15293560993039952009

`C(C(abs(1-2*n), n)+n-1, n)`
-/

namespace A331477.P15293560993039952009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.choose |1 - (2 * n : ℤ)|.toNat n : ℤ) + ((n : ℤ) - 1)).toNat n

end

end A331477.P15293560993039952009

/-! ## A331477.P3806742069323958506

`A331436(∑[4*n])`
-/

namespace A331477.P3806742069323958506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331477.P3806742069323958506

/-! ## A331477.P10579551906138276534

`C(A088218(n)-1+n, n)`
-/

namespace A331477.P10579551906138276534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A088218 n - 1 + (n : ℤ)).toNat n

end

end A331477.P10579551906138276534

/-! ## A331477.P9569009667543176883

`C(A034869(n²)+n-1, n)`
-/

namespace A331477.P9569009667543176883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034869 (n ^ 2) + ((n : ℤ) - 1)).toNat n

end

end A331477.P9569009667543176883

/-! ## A331477.P10825723882594986176

`C(A007318(2*n²)+n-1, n)`
-/

namespace A331477.P10825723882594986176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 (2 * n ^ 2) + ((n : ℤ) - 1)).toNat n

end

end A331477.P10825723882594986176

/-!
# A331478: Irregular triangle T(n,k) = n - (s - k + 1)^2 for 1 <= k <= s, with s = floor(sqrt(n)).

The programs for A331478, the canonical program `A331478.P4956837574170450046` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331478 has offset 1).

The definition of A331478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331478.P4956837574170450046

`A002262(eq[0, A053186(A004736(n+1))])`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A331478

/-- `A002262(eq[0, A053186(A004736(n+1))])` -/
def P4956837574170450046.Spec : Prop :=
  ∀ n, P4956837574170450046.a n = A331478 (n + 1)

theorem P4956837574170450046.correct : P4956837574170450046.Spec := by
  intro n
  simp only [A331478, Nat.add_sub_cancel]

end A331478

/-! ## A331478.P13452848434157703429

`A002262(record[n-A095832(n+1)])`
-/

namespace A331478.P13452848434157703429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A095832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331478.P13452848434157703429

namespace A331478

/-- `A002262(record[n-A095832(n+1)])` -/
def P13452848434157703429.Spec : Prop :=
  ∀ n, P13452848434157703429.a n = A331478 (n + 1)

end A331478

/-! ## A331478.P575373693150107292

`A002262(record[n-A004736(n+1)*A025581(n)])`
-/

namespace A331478.P575373693150107292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004736 (n + 1) * A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331478.P575373693150107292

namespace A331478

/-- `A002262(record[n-A004736(n+1)*A025581(n)])` -/
def P575373693150107292.Spec : Prop :=
  ∀ n, P575373693150107292.a n = A331478 (n + 1)

end A331478

/-! ## A331478.P3366506496569013141

`A002262(eq[1, A002828(A025581(n))])`
-/

namespace A331478.P3366506496569013141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331478.P3366506496569013141

namespace A331478

/-- `A002262(eq[1, A002828(A025581(n))])` -/
def P3366506496569013141.Spec : Prop :=
  ∀ n, P3366506496569013141.a n = A331478 (n + 1)

end A331478

/-! ## A331478.P12673154576066361454

`A002262(eq[2, A000122(A025581(n))])`
-/

namespace A331478.P12673154576066361454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331478.P12673154576066361454

namespace A331478

/-- `A002262(eq[2, A000122(A025581(n))])` -/
def P12673154576066361454.Spec : Prop :=
  ∀ n, P12673154576066361454.a n = A331478 (n + 1)

end A331478

/-! ## A331478.P3821460757824485186

`A002262(eq[3, A027960(A004736(n+1))])`
-/

namespace A331478.P3821460757824485186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331478.P3821460757824485186

namespace A331478

/-- `A002262(eq[3, A027960(A004736(n+1))])` -/
def P3821460757824485186.Spec : Prop :=
  ∀ n, P3821460757824485186.a n = A331478 (n + 1)

end A331478

/-! ## A331478.P7966766217867167418

`A002262(eq[1, A053186(A025581(n))])`
-/

namespace A331478.P7966766217867167418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331478.P7966766217867167418

namespace A331478

/-- `A002262(eq[1, A053186(A025581(n))])` -/
def P7966766217867167418.Spec : Prop :=
  ∀ n, P7966766217867167418.a n = A331478 (n + 1)

end A331478

/-!
# A331479: Table read by rows: row n lists the numbers m such that the first n primes can be partitioned into m subsets all of which have the same sum.

The programs for A331479, there is no canonical definition to state claims against.
-/

/-! ## A331479.P14691020518641167214

`A016014(∑[A146237(n+1)])`
-/

namespace A331479.P14691020518641167214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331479.P14691020518641167214

/-! ## A331479.P5757058162615980224

`A091064(2*A005181(n)+1)`
-/

namespace A331479.P5757058162615980224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (2 * A005181 n + 1).toNat

end

end A331479.P5757058162615980224

/-! ## A331479.P4098750728292051190

`A091064(A005408(A005181(n)))`
-/

namespace A331479.P4098750728292051190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A005408 (A005181 n).toNat).toNat

end

end A331479.P4098750728292051190

/-! ## A331479.P13608469499589746300

`A091064(A005181(n)+A005181(n)+1)`
-/

namespace A331479.P13608469499589746300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A005181 n + (A005181 n + 1)).toNat

end

end A331479.P13608469499589746300

/-! ## A331479.P8041091242251284245

`A327489(A133031(n+1))`
-/

namespace A331479.P8041091242251284245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327489 (A133031 (n + 1)).toNat

end

end A331479.P8041091242251284245

/-!
# A331483: Number of near-magic (only short lines are magic) knight's tours on a 6 X 2n board.

The programs for A331483, there is no canonical definition to state claims against.
-/

/-! ## A331483.P11880029208713493684

`and(∑[A249476(n)], A063990(n+1))`
-/

namespace A331483.P11880029208713493684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A063990 (n + 1))

end

end A331483.P11880029208713493684

/-!
# A331486: Numbers k which are emirps in more bases 1 < b < k than any previous number.

The programs for A331486, there is no canonical definition to state claims against.
-/

/-! ## A331486.P14005183647044325740

`A000040(lt[A001190(n), A227774(3*n+4)]+1)`
-/

namespace A331486.P14005183647044325740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227774 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A331486.P14005183647044325740

/-! ## A331486.P11405033043987357424

`record[A342659(A000124(n))]`
-/

namespace A331486.P11405033043987357424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342659 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331486.P11405033043987357424

/-! ## A331486.P12271361805287602853

`record[A342659(∑[A028310(n)])]`
-/

namespace A331486.P12271361805287602853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342659 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331486.P12271361805287602853

/-! ## A331486.P16996872000299032285

`record[A342659(A000217(n)+1)]`
-/

namespace A331486.P16996872000299032285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342659 (A000217 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331486.P16996872000299032285

/-! ## A331486.P9234068781645260441

`A000040(lt[A308254(n+1), A275902(n)])`
-/

namespace A331486.P9234068781645260441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331486.P9234068781645260441

/-!
# A331487: Primes p such that exactly one of 2^(p+1) - 3 and 2^(p+1) + 3 is a prime.

The programs for A331487, there is no canonical definition to state claims against.
-/

/-! ## A331487.P14456503065937602707

`p?[A174272(n+1)-1]`
-/

namespace A331487.P14456503065937602707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174272 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A331487.P14456503065937602707

/-! ## A331487.P11806382204689849476

`p?[A023443(A174272(n+1))]`
-/

namespace A331487.P11806382204689849476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A174272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A331487.P11806382204689849476

/-! ## A331487.P6481307707091904562

`∩[A000040(n+1), A174272(n+1)-1]`
-/

namespace A331487.P6481307707091904562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174272 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331487.P6481307707091904562

/-! ## A331487.P4321900897513619176

`∩[A006005(n+2), A174272(n+2)-1]`
-/

namespace A331487.P4321900897513619176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174272 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331487.P4321900897513619176

/-! ## A331487.P8954925804063466071

`∩[A000040(n+1), A023443(A174272(n+1))]`
-/

namespace A331487.P8954925804063466071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A174272 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331487.P8954925804063466071

/-!
# A331488: Number of unlabeled lone-child-avoiding rooted trees with n vertices and more than two branches (of the root).

The programs for A331488, there is no canonical definition to state claims against.
-/

/-! ## A331488.P3555264288650805891

`A178798(A115205(n))+A052525(n)`
-/

namespace A331488.P3555264288650805891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A115205 n).toNat + A052525 n

end

end A331488.P3555264288650805891

/-! ## A331488.P8543869187983082241

`A052525(n)-A097795(A022167(n))`
-/

namespace A331488.P8543869187983082241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052525 n - A097795 (A022167 n).toNat

end

end A331488.P8543869187983082241

/-! ## A331488.P1799896019634852016

`A052525(n)-A102683(A052768(n))`
-/

namespace A331488.P1799896019634852016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052525 n - A102683 (A052768 n).toNat

end

end A331488.P1799896019634852016

/-! ## A331488.P9172995599008781645

`A052525(n)-A178798(A001679(n))`
-/

namespace A331488.P9172995599008781645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052525 n - A178798 (A001679 n).toNat

end

end A331488.P9172995599008781645

/-! ## A331488.P18316260539638535033

`A052525(n)-A178798(A059123(n))`
-/

namespace A331488.P18316260539638535033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052525 n - A178798 (A059123 n).toNat

end

end A331488.P18316260539638535033

/-!
# A331489: Matula-Goebel numbers of topologically series-reduced rooted trees.

The programs for A331489, there is no canonical definition to state claims against.
-/

/-! ## A331489.P6351810483008104855

`∩[A100959(n+1), A322386(n+1)]`
-/

namespace A331489.P6351810483008104855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331489.P6351810483008104855

/-! ## A331489.P2937882594745688687

`A322386(∑[A000002(21*2^n-1)])`
-/

namespace A331489.P2937882594745688687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (21 * 2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331489.P2937882594745688687

/-! ## A331489.P7504206297979662452

`A346693(∑[n+3]-A014197(n+1))`
-/

namespace A331489.P7504206297979662452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346693 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A014197 (n + 1)).toNat

end

end A331489.P7504206297979662452

/-!
# A331490: Matula-Goebel numbers of series-reduced rooted trees with more than two branches (of the root).

The programs for A331490, there is no canonical definition to state claims against.
-/

/-! ## A331490.P2230332385553723854

`∩[A033942(n+1), A322386(n+1)]`
-/

namespace A331490.P2230332385553723854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331490.P2230332385553723854

/-! ## A331490.P1936455125255045453

`filter[A331489(n+1), A066247(#)]`
-/

namespace A331490.P1936455125255045453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A331490.P1936455125255045453

/-! ## A331490.P9184167263843586878

`filter[A331489(n+1), A252742(#)]`
-/

namespace A331490.P9184167263843586878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252742 (f1 j).toNat = 1) n)

end

end A331490.P9184167263843586878

/-! ## A331490.P6680672768663571856

`filter[A331489(n+2), A005171(#)]`
-/

namespace A331490.P6680672768663571856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331489 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A331490.P6680672768663571856

/-! ## A331490.P9208737720574939594

`filter[A331489(n+2), A292438(#)]`
-/

namespace A331490.P9208737720574939594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331489 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A331490.P9208737720574939594

/-!
# A331492: Numbers k such that the digits of k^(1/5) begin with k.

The programs for A331492, there is no canonical definition to state claims against.
-/

/-! ## A331492.P3005960457972773328

`∑[A323413(∑[A001879(n)])]`
-/

namespace A331492.P3005960457972773328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323413 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331492.P3005960457972773328

/-!
# A331493: Numbers k such that the digits of k^(1/6) begin with k.

The programs for A331493, there is no canonical definition to state claims against.
-/

/-! ## A331493.P83116441333225489

`A159789(A159787(n)²)+n`
-/

namespace A331493.P83116441333225489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159789 (A159787 n ^ 2).toNat + (n : ℤ)

end

end A331493.P83116441333225489

/-!
# A331494: Numbers k such that the digits of k^(1/7) begin with k.

The programs for A331494, there is no canonical definition to state claims against.
-/

/-! ## A331494.P4987975435086564129

`A081305(A113342(n)+8)`
-/

namespace A331494.P4987975435086564129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081305 (A113342 n + 8).toNat

end

end A331494.P4987975435086564129

/-!
# A331495: Numbers k such that the digits of k^(1/8) begin with k.

The programs for A331495, there is no canonical definition to state claims against.
-/

/-! ## A331495.P16459571610739847477

`A062971(n)-A007498(A004211(n))`
-/

namespace A331495.P16459571610739847477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062971 n - A007498 (A004211 n).toNat

end

end A331495.P16459571610739847477

/-!
# A331496: Numbers k such that the digits of k^(1/9) begin with k.

The programs for A331496, there is no canonical definition to state claims against.
-/

/-! ## A331496.P17368037726205181606

`A063195(or(1, A239983(n+1)))`
-/

namespace A331496.P17368037726205181606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (Int.lor 1 (A239983 (n + 1))).toNat

end

end A331496.P17368037726205181606

/-!
# A331497: Numbers k such that the digits of k^(1/10) begin with k.

The programs for A331497, there is no canonical definition to state claims against.
-/

/-! ## A331497.P10981931665887029711

`A004275(A277832(n)+A277831(n))`
-/

namespace A331497.P10981931665887029711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A277832 n + A277831 n).toNat

end

end A331497.P10981931665887029711

