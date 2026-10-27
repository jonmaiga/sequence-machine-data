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
import Seq.B000.C024
import Seq.B000.C025
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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A220000: Sixty fourths of an inch in thousandths, rounded to nearest integer.

The programs for A220000, the canonical program `A220000.P9656727624351721887` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220000 has offset 1).

The definition of A220000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220000.P15289338697655874510

`round(125*(n+1)/8)`
-/

namespace A220000.P15289338697655874510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((125 * (n + 1) : ℚ) / 8)

end

end A220000.P15289338697655874510

namespace A220000

/-- `round(125*(n+1)/8)` -/
def P15289338697655874510.Spec : Prop :=
  ∀ n, P15289338697655874510.a n = A220000 (n + 1)

end A220000

/-! ## A220000.P9656727624351721887

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=16, a(1)=31, a(2)=47, a(3)=63, a(4)=78, a(5)=94, a(6)=109, a(7)=125, a(8)=141`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220000

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P9656727624351721887.Spec : Prop :=
  ∀ n, P9656727624351721887.a n = A220000 (n + 1)

theorem P9656727624351721887.correct : P9656727624351721887.Spec := by
  intro n
  simp only [A220000, Nat.add_sub_cancel]

end A220000

/-! ## A220000.P11206476851651238051

`16*(n+1)-A057360(n+2)`
-/

namespace A220000.P11206476851651238051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * (n + 1) : ℤ) - A057360 (n + 2)

end

end A220000.P11206476851651238051

namespace A220000

/-- `16*(n+1)-A057360(n+2)` -/
def P11206476851651238051.Spec : Prop :=
  ∀ n, P11206476851651238051.a n = A220000 (n + 1)

end A220000

/-! ## A220000.P9827252310965961879

`∑[A022105(Δ[A000202(n+1)])]`
-/

namespace A220000.P9827252310965961879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000202 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220000.P9827252310965961879

namespace A220000

/-- `∑[A022105(Δ[A000202(n+1)])]` -/
def P9827252310965961879.Spec : Prop :=
  ∀ n, P9827252310965961879.a n = A220000 (n + 1)

end A220000

/-! ## A220000.P7903097180226354314

`∑[A037971(Δ[A000202(n+1)])]`
-/

namespace A220000.P7903097180226354314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000202 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037971 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220000.P7903097180226354314

namespace A220000

/-- `∑[A037971(Δ[A000202(n+1)])]` -/
def P7903097180226354314.Spec : Prop :=
  ∀ n, P7903097180226354314.a n = A220000 (n + 1)

end A220000

/-! ## A220000.P5287280936779415002

`A110654(A001068(5*5*(n+1)))`
-/

namespace A220000.P5287280936779415002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001068 (5 * (5 * (n + 1)))).toNat

end

end A220000.P5287280936779415002

namespace A220000

/-- `A110654(A001068(5*5*(n+1)))` -/
def P5287280936779415002.Spec : Prop :=
  ∀ n, P5287280936779415002.a n = A220000 (n + 1)

end A220000

/-!
# A220001: Benes network size for permutations of n.

The programs for A220001, the canonical program `A220001.P16592571741420177732` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220001 has offset 1).

The definition of A220001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220001.P16592571741420177732

`2*floor((n+1)/2)+a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220001

/-- `2*floor((n+1)/2)+a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)` -/
def P16592571741420177732.Spec : Prop :=
  ∀ n, P16592571741420177732.a n = A220001 (n + 1)

theorem P16592571741420177732.correct : P16592571741420177732.Spec := by
  intro n
  simp only [A220001, Nat.add_sub_cancel]

end A220001

/-! ## A220001.P11509006218616776322

`∑[a(floor(n/2))-(-1)^n+1]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A220001.P11509006218616776322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220001.P11509006218616776322

namespace A220001

/-- `∑[a(floor(n/2))-(-1)^n+1]` -/
def P11509006218616776322.Spec : Prop :=
  ∀ n, P11509006218616776322.a n = A220001 (n + 1)

end A220001

/-! ## A220001.P1855456235050910659

`∑[a(floor(n/2))-xor(1, n)+n+1]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A220001.P1855456235050910659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (Nat.xor 1 n : ℤ) + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220001.P1855456235050910659

namespace A220001

/-- `∑[a(floor(n/2))-xor(1, n)+n+1]` -/
def P1855456235050910659.Spec : Prop :=
  ∀ n, P1855456235050910659.a n = A220001 (n + 1)

end A220001

/-! ## A220001.P432970714409695734

`∑[a(A025480(n-1))+2]` with `a(0)=0, a(1)=1`
-/

namespace A220001.P432970714409695734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (A025480 (n - 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220001.P432970714409695734

namespace A220001

/-- `∑[a(A025480(n-1))+2]` -/
def P432970714409695734.Spec : Prop :=
  ∀ n, (P432970714409695734.a n : ℤ) = A220001 (n + 1)

end A220001

/-! ## A220001.P9122959794536276499

`∑[a(∑{d}[n, A349136(#)]-1)+2]` with `a(0)=0, a(1)=1`
-/

namespace A220001.P9122959794536276499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (∑ d ∈ Nat.divisors (f2 n), A349136 d - 1).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220001.P9122959794536276499

namespace A220001

/-- `∑[a(∑{d}[n, A349136(#)]-1)+2]` -/
def P9122959794536276499.Spec : Prop :=
  ∀ n, (P9122959794536276499.a n : ℤ) = A220001 (n + 1)

end A220001

/-! ## A220001.P3479369893218125713

`A294456(n+1)+A076178(n)`
-/

namespace A220001.P3479369893218125713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 1) + A076178 n

end

end A220001.P3479369893218125713

namespace A220001

/-- `A294456(n+1)+A076178(n)` -/
def P3479369893218125713.Spec : Prop :=
  ∀ n, P3479369893218125713.a n = A220001 (n + 1)

end A220001

/-! ## A220001.P15575993254349712331

`2*A000788(n)-A060973(n+1)`
-/

namespace A220001.P15575993254349712331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000788 n - A060973 (n + 1)

end

end A220001.P15575993254349712331

namespace A220001

/-- `2*A000788(n)-A060973(n+1)` -/
def P15575993254349712331.Spec : Prop :=
  ∀ n, P15575993254349712331.a n = A220001 (n + 1)

end A220001

/-! ## A220001.P9121338602100480857

`∑[a(A030109(A030101(n)))+2]` with `a(0)=0, a(1)=1`
-/

namespace A220001.P9121338602100480857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (A030109 (A030101 n).toNat).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220001.P9121338602100480857

namespace A220001

/-- `∑[a(A030109(A030101(n)))+2]` -/
def P9121338602100480857.Spec : Prop :=
  ∀ n, (P9121338602100480857.a n : ℤ) = A220001 (n + 1)

end A220001

/-! ## A220001.P14803567621834768812

`∑[A043261(Δ[n²])]-n`
-/

namespace A220001.P14803567621834768812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043261 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A220001.P14803567621834768812

namespace A220001

/-- `∑[A043261(Δ[n²])]-n` -/
def P14803567621834768812.Spec : Prop :=
  ∀ n, P14803567621834768812.a n = A220001 (n + 1)

end A220001

/-! ## A220001.P5188992083960169637

`abs(∑[A043261(2*n+1)]-n)`
-/

namespace A220001.P5188992083960169637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043261 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A220001.P5188992083960169637

namespace A220001

/-- `abs(∑[A043261(2*n+1)]-n)` -/
def P5188992083960169637.Spec : Prop :=
  ∀ n, P5188992083960169637.a n = A220001 (n + 1)

end A220001

/-! ## A220001.P8975839006508091052

`∑[A086520(A043261(2*n+1)²)]`
-/

namespace A220001.P8975839006508091052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A043261 (2 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220001.P8975839006508091052

namespace A220001

/-- `∑[A086520(A043261(2*n+1)²)]` -/
def P8975839006508091052.Spec : Prop :=
  ∀ n, P8975839006508091052.a n = A220001 (n + 1)

end A220001

/-!
# A220002: Numerators of the coefficients of an asymptotic expansion in even powers of the Catalan numbers.

The programs for A220002, there is no canonical definition to state claims against.
-/

/-! ## A220002.P13335035267497026442

`(-1)^n*A220371(n)*A008991(n)/A008992(n)`
-/

namespace A220002.P13335035267497026442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A220371 n * A008991 n : ℚ) / (A008992 n : ℚ)

end

end A220002.P13335035267497026442

/-!
# A220003: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X n array.

The programs for A220003, there is no canonical definition to state claims against.
-/

/-! ## A220003.P10966442639202489955

`A220010(∑[4*n]+1)`
-/

namespace A220003.P10966442639202489955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220003.P10966442639202489955

/-!
# A220004: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X 2 array.

The programs for A220004, there is no canonical definition to state claims against.
-/

/-! ## A220004.P5408954015532642528

`A220010(∑[n+2])`
-/

namespace A220004.P5408954015532642528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220004.P5408954015532642528

/-! ## A220004.P16368890511149740957

`record[A129186(n)*A220010(n+1)]`
-/

namespace A220004.P16368890511149740957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A220010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220004.P16368890511149740957

/-! ## A220004.P11942207404793229351

`record[gcd(A220010(n+1), A332104(n))]`
-/

namespace A220004.P11942207404793229351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220010 (n + 1)) (A332104 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220004.P11942207404793229351

/-! ## A220004.P16036706444989898595

`A220010(A034856(n+1)+1)+A184964(n)`
-/

namespace A220004.P16036706444989898595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A034856 (n + 1) + 1).toNat + A184964 n

end

end A220004.P16036706444989898595

/-! ## A220004.P1425003067048025212

`A220010(A034856(n+1)+1)-A326682(n)`
-/

namespace A220004.P1425003067048025212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A034856 (n + 1) + 1).toNat - A326682 n

end

end A220004.P1425003067048025212

/-!
# A220005: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX3 array.

The programs for A220005, there is no canonical definition to state claims against.
-/

/-! ## A220005.P8203406582764783582

`A220010(∑[n+3]+1)`
-/

namespace A220005.P8203406582764783582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220005.P8203406582764783582

/-! ## A220005.P16783086066676830973

`A220010(A034856(n+2))+A184964(n)`
-/

namespace A220005.P16783086066676830973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A034856 (n + 2)).toNat + A184964 n

end

end A220005.P16783086066676830973

/-! ## A220005.P11931654164865391057

`A220010(A034856(n+2))+A087781(2*(n+1))`
-/

namespace A220005.P11931654164865391057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A034856 (n + 2)).toNat + A087781 (2 * (n + 1))

end

end A220005.P11931654164865391057

/-!
# A220006: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX4 array.

The programs for A220006, there is no canonical definition to state claims against.
-/

/-! ## A220006.P3730597570449089051

`A220010(∑[n+3]+n+4)`
-/

namespace A220006.P3730597570449089051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A220006.P3730597570449089051

/-! ## A220006.P12606495299534054370

`A220010(A155212(n)+5)+A217657(n)`
-/

namespace A220006.P12606495299534054370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A155212 n + 5).toNat + A217657 n

end

end A220006.P12606495299534054370

/-! ## A220006.P15916925902020569773

`A220010(A155212(n)+5)+A007814(2*n+3)`
-/

namespace A220006.P15916925902020569773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A155212 n + 5).toNat + A007814 (2 * n + 3)

end

end A220006.P15916925902020569773

/-!
# A220007: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX5 array.

The programs for A220007, there is no canonical definition to state claims against.
-/

/-! ## A220007.P690329760148015086

`A220010(∑[n+5]+6)`
-/

namespace A220007.P690329760148015086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A220007.P690329760148015086

/-!
# A220008: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX6 array.

The programs for A220008, there is no canonical definition to state claims against.
-/

/-! ## A220008.P4864774392072427846

`A220010(eq[3, A219347(n)])`
-/

namespace A220008.P4864774392072427846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220008.P4864774392072427846

/-! ## A220008.P3348698820886017563

`A220010(eq[3, A274661(n)])`
-/

namespace A220008.P3348698820886017563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220008.P3348698820886017563

/-! ## A220008.P2169290590808315550

`A220010(eq[5, A193592(n)])`
-/

namespace A220008.P2169290590808315550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220008.P2169290590808315550

/-!
# A220009: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX7 array.

The programs for A220009, there is no canonical definition to state claims against.
-/

/-! ## A220009.P2795903007153203354

`A220010(A055999(n+4))`
-/

namespace A220009.P2795903007153203354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A055999 (n + 4)).toNat

end

end A220009.P2795903007153203354

/-!
# A220011: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 2 X n array.

The programs for A220011, there is no canonical definition to state claims against.
-/

/-! ## A220011.P9578060063960786457

`A220010(∑[n+1]+2)`
-/

namespace A220011.P9578060063960786457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220011.P9578060063960786457

/-! ## A220011.P16972065970820871059

`record[A220010(n+1)/A156366(n)]`
-/

namespace A220011.P16972065970820871059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220010 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220011.P16972065970820871059

/-! ## A220011.P5504629630386570779

`record[C(A220010(n+1), A291451(n))]`
-/

namespace A220011.P5504629630386570779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A220010 (n + 1)).toNat (A291451 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220011.P5504629630386570779

/-!
# A220012: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 3Xn array.

The programs for A220012, there is no canonical definition to state claims against.
-/

/-! ## A220012.P15187535674488995761

`A220010(∑[n+2]+4)`
-/

namespace A220012.P15187535674488995761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220012.P15187535674488995761

/-! ## A220012.P1271257589502910341

`lcm((-1)^n, A220010(A167614(n+1)))`
-/

namespace A220012.P1271257589502910341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A220010 (A167614 (n + 1)).toNat)

end

end A220012.P1271257589502910341

/-! ## A220012.P7190390444547565927

`A220010(A167614(n+1))+A011737(n)`
-/

namespace A220012.P7190390444547565927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A167614 (n + 1)).toNat + A011737 n

end

end A220012.P7190390444547565927

/-! ## A220012.P9898185018510468221

`A220010(A167614(n+1))+A025439(n)`
-/

namespace A220012.P9898185018510468221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A167614 (n + 1)).toNat + A025439 n

end

end A220012.P9898185018510468221

/-! ## A220012.P12881845230988210596

`A220010(A167614(n+1))+A025466(n)`
-/

namespace A220012.P12881845230988210596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A167614 (n + 1)).toNat + A025466 n

end

end A220012.P12881845230988210596

/-!
# A220013: Number of 4 X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 4 X n array.

The programs for A220013, there is no canonical definition to state claims against.
-/

/-! ## A220013.P14194633347961267063

`A220010(A141214(n)+7)`
-/

namespace A220013.P14194633347961267063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A141214 n + 7).toNat

end

end A220013.P14194633347961267063

/-! ## A220013.P10026463578125511978

`A220010(A052905(n)+9)`
-/

namespace A220013.P10026463578125511978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A052905 n + 9).toNat

end

end A220013.P10026463578125511978

/-! ## A220013.P16897449098462307572

`A220010(A055999(n)+10)`
-/

namespace A220013.P16897449098462307572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A055999 n + 10).toNat

end

end A220013.P16897449098462307572

/-! ## A220013.P6194378492234186561

`A220010(eq[5, A066657(n)])`
-/

namespace A220013.P6194378492234186561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220013.P6194378492234186561

/-! ## A220013.P9454703851886927909

`A220010(A167614(n+2)+1)`
-/

namespace A220013.P9454703851886927909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A167614 (n + 2) + 1).toNat

end

end A220013.P9454703851886927909

/-!
# A220014: Number of 5 X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 5 X n array.

The programs for A220014, there is no canonical definition to state claims against.
-/

/-! ## A220014.P9983237441819775374

`A220010(C(n+6, 2)-n)`
-/

namespace A220014.P9983237441819775374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (Nat.choose (n + 6) 2 - n)

end

end A220014.P9983237441819775374

/-! ## A220014.P18399446235333448549

`A220010(A167499(n+3))`
-/

namespace A220014.P18399446235333448549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A167499 (n + 3)).toNat

end

end A220014.P18399446235333448549

/-! ## A220014.P7186653809570445685

`A220010(A155212(n)+13)`
-/

namespace A220014.P7186653809570445685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A155212 n + 13).toNat

end

end A220014.P7186653809570445685

/-! ## A220014.P3179849192353117374

`A220010(A056000(n)+15)`
-/

namespace A220014.P3179849192353117374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A056000 n + 15).toNat

end

end A220014.P3179849192353117374

/-! ## A220014.P4897653683107069063

`A220010(eq[7, A066657(n)])`
-/

namespace A220014.P4897653683107069063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220014.P4897653683107069063

/-!
# A220015: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 6Xn array.

The programs for A220015, there is no canonical definition to state claims against.
-/

/-! ## A220015.P3962585638542693166

`A220010(C(n+6, 2)+6)`
-/

namespace A220015.P3962585638542693166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (Nat.choose (n + 6) 2 + 6)

end

end A220015.P3962585638542693166

/-! ## A220015.P2010378494218326022

`A220010(A166136(n+4))`
-/

namespace A220015.P2010378494218326022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A166136 (n + 4)).toNat

end

end A220015.P2010378494218326022

/-! ## A220015.P11254329156548552606

`A220010(A167499(n+4)+1)`
-/

namespace A220015.P11254329156548552606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A167499 (n + 4) + 1).toNat

end

end A220015.P11254329156548552606

/-! ## A220015.P57772690031359868

`A220010(A167487(n+4)-1)`
-/

namespace A220015.P57772690031359868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A167487 (n + 4) - 1).toNat

end

end A220015.P57772690031359868

/-!
# A220016: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 7Xn array.

The programs for A220016, there is no canonical definition to state claims against.
-/

/-! ## A220016.P10915284388667610143

`A220010(A056119(n)+28)`
-/

namespace A220016.P10915284388667610143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (A056119 n + 28).toNat

end

end A220016.P10915284388667610143

/-!
# A220017: Relative probability for a four-player Old Maid match to last for exactly n games until a player has been trolled exactly three times.

The programs for A220017, there is no canonical definition to state claims against.
-/

/-! ## A220017.P16855360297045532321

`A216074(n+3)/32`
-/

namespace A220017.P16855360297045532321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216074 (n + 3) : ℚ) / 32

end

end A220017.P16855360297045532321

/-!
# A220018: Number of cyclotomic cosets of 3 mod 10^n.

The programs for A220018, there is no canonical definition to state claims against.
-/

/-! ## A220018.P9056775806835690321

`record[(2*n+1)*(C(or(1, n), n)+3)]-ceil(n/98)`
-/

namespace A220018.P9056775806835690321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (Nat.lor 1 n) n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ⌈(n : ℚ) / 98⌉

end

end A220018.P9056775806835690321

/-! ## A220018.P13042396017309740425

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=11, a(2)=29, a(3)=71, a(4)=129`
-/

namespace A220018.P13042396017309740425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 11, 29, 71, 129] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A220018.P13042396017309740425

/-! ## A220018.P7376285854019245125

`ceil(cosh(log(A220020(n+1))))`
-/

namespace A220018.P7376285854019245125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A220020 (n + 1) : ℝ))⌉

end

end A220018.P7376285854019245125

/-! ## A220018.P6497854174508997980

`A221855(n+1)-ceil(n/63)`
-/

namespace A220018.P6497854174508997980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221855 (n + 1) - ⌈(n : ℚ) / 63⌉

end

end A220018.P6497854174508997980

/-! ## A220018.P18252442754289889359

`record[((n+1)/(or(n, n+1)-n)+3)*(2*n+1)]-A057427(n)`
-/

namespace A220018.P18252442754289889359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) + 3) * (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A057427 n : ℚ)

end

end A220018.P18252442754289889359

/-!
# A220019: Number of cyclotomic cosets of 7 mod 10^n.

The programs for A220019, there is no canonical definition to state claims against.
-/

/-! ## A220019.P6349940698730379645

`xor(A053658(3*n+2), A053691(A034869(n+2)))`
-/

namespace A220019.P6349940698730379645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053658 (3 * n + 2)) (A053691 (A034869 (n + 2)).toNat)

end

end A220019.P6349940698730379645

/-!
# A220020: Number of cyclotomic cosets of 9 mod 10^n.

The programs for A220020, there is no canonical definition to state claims against.
-/

/-! ## A220020.P2960762235496077230

`2*(record[(2*n+1)*(C(or(1, n), n)+3)]-ceil(n/98)-1)`
-/

namespace A220020.P2960762235496077230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (Nat.lor 1 n) n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ⌈(n : ℚ) / 98⌉ - 1)

end

end A220020.P2960762235496077230

/-! ## A220020.P2148861763117656792

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=6, a(1)=20, a(2)=56, a(3)=140, a(4)=256`
-/

namespace A220020.P2148861763117656792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 20, 56, 140, 256] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A220020.P2148861763117656792

/-! ## A220020.P10709441691832558641

`2*(A221855(n+1)-A178334(n)-1)`
-/

namespace A220020.P10709441691832558641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A221855 (n + 1) - A178334 n - 1)

end

end A220020.P10709441691832558641

/-! ## A220020.P16192063125585152267

`2*(A221855(n+1)-A323022(n+1)-1)`
-/

namespace A220020.P16192063125585152267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A221855 (n + 1) - A323022 (n + 1) - 1)

end

end A220020.P16192063125585152267

/-! ## A220020.P11189022922419153391

`2*(A221855(n+1)-A034444(A034444(n+1)))`
-/

namespace A220020.P11189022922419153391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A221855 (n + 1) - A034444 (A034444 (n + 1)).toNat)

end

end A220020.P11189022922419153391

/-! ## A220020.P532126777438708292

`A019442(n+2)+A019442(n+1)*A019442(n+3)`
-/

namespace A220020.P532126777438708292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (n + 2) + A019442 (n + 1) * A019442 (n + 3)

end

end A220020.P532126777438708292

/-!
# A220021: Number of cyclotomic cosets of 11 mod 10^n.

The programs for A220021, there is no canonical definition to state claims against.
-/

/-! ## A220021.P6321106373794526812

`∑[a(n-1)+16]` with `a(0)=10, a(1)=17, a(2)=38`
-/

namespace A220021.P6321106373794526812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 17, 38] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220021.P6321106373794526812

/-! ## A220021.P14520702474484560314

`(4*n+5)*ceil(2/acot(n))`
-/

namespace A220021.P14520702474484560314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℤ) * ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

end

end A220021.P14520702474484560314

/-! ## A220021.P8219736158361568124

`(∑[16*n+5]+n)*ceil(acot(n))`
-/

namespace A220021.P8219736158361568124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) * ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A220021.P8219736158361568124

/-! ## A220021.P17306852274336136386

`(floor(2/acot(n))+1)*(4*n+5)`
-/

namespace A220021.P17306852274336136386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + 1) * (4 * n + 5 : ℤ)

end

end A220021.P17306852274336136386

/-! ## A220021.P13656681548598338419

`(ceil(acot(n))+2*n)*(4*n+5)`
-/

namespace A220021.P13656681548598338419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈SequenceMachineLib.acot (n : ℝ)⌉ + (2 * n : ℤ)) * (4 * n + 5 : ℤ)

end

end A220021.P13656681548598338419

/-! ## A220021.P3808868915807829267

`(comp[2*(n+1)]+2)*(4*n+5)`
-/

namespace A220021.P3808868915807829267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) * (4 * n + 5)

end

end A220021.P3808868915807829267

/-! ## A220021.P10221805441841651961

`lcm(C(4*(n+1), 2)-1, floor(acot(n))+1)`
-/

namespace A220021.P10221805441841651961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.choose (4 * (n + 1)) 2 : ℤ) - 1) (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1)

end

end A220021.P10221805441841651961

/-! ## A220021.P13056017052172781058

`C(C(4*(n+1), 2)-1, C(2, C(2, n²)))`
-/

namespace A220021.P13056017052172781058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.choose (4 * (n + 1)) 2 : ℤ) - 1).toNat (Nat.choose 2 (Nat.choose 2 (n ^ 2)))

end

end A220021.P13056017052172781058

/-! ## A220021.P17269507344950708149

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=10, a(1)=27, a(2)=65, a(3)=119`
-/

namespace A220021.P17269507344950708149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 27, 65, 119] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A220021.P17269507344950708149

/-! ## A220021.P7042446716960573439

`A209268(A063130(n+1))`
-/

namespace A220021.P7042446716960573439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (A063130 (n + 1)).toNat

end

end A220021.P7042446716960573439

/-!
# A220023: The period with which the powers of n repeat mod 1000.

The programs for A220023, there is no canonical definition to state claims against.
-/

/-! ## A220023.P11404860568232652959

`A000188(A220022(n)*A220024(n))`
-/

namespace A220023.P11404860568232652959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A220022 n * A220024 n).toNat

end

end A220023.P11404860568232652959

/-!
# A220024: The period with which the powers of n repeat mod 10000.

The programs for A220024, there is no canonical definition to state claims against.
-/

/-! ## A220024.P12239260259448362756

`A038459(A292716(n))/A000010(n+1)`
-/

namespace A220024.P12239260259448362756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038459 (A292716 n).toNat : ℚ) / (A000010 (n + 1) : ℚ)

end

end A220024.P12239260259448362756

/-!
# A220025: The period with which the powers of n repeat mod 100000.

The programs for A220025, there is no canonical definition to state claims against.
-/

/-! ## A220025.P10678546694395407783

`A220022((A018121(n)^n)²)*A220024(n)`
-/

namespace A220025.P10678546694395407783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220022 ((A018121 n ^ n) ^ 2).toNat * A220024 n

end

end A220025.P10678546694395407783

/-!
# A220027: a(n) = product(i >= 0, P(n, i)^(2^i)) where P(n, i) = product(p prime, n/2^(i+1) < p <= n/2^i).

The programs for A220027, there is no canonical definition to state claims against.
-/

/-! ## A220027.P15594957738894292801

`∏[A219964(n)]`
-/

namespace A220027.P15594957738894292801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A220027.P15594957738894292801

/-! ## A220027.P10988629642216192805

`lcm(a(n-1), A219964(2*n))` with `a(0)=1, a(1)=1`
-/

namespace A220027.P10988629642216192805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A219964 (2 * n))

end

end A220027.P10988629642216192805

/-! ## A220027.P12897377874707661592

`lcm(a(floor(n/2))², A003418(n))` with `a(0)=1, a(1)=1`
-/

namespace A220027.P12897377874707661592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (a ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℤ) (A003418 n)

end

end A220027.P12897377874707661592

/-! ## A220027.P10973494704018024454

`a(A259361(n²))*A219964(n)` with `a(0)=1`
-/

namespace A220027.P10973494704018024454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A259361 (n ^ 2)).toNat * A219964 n

end

end A220027.P10973494704018024454

/-! ## A220027.P12408062958370993637

`a(A057979(A163985(n)))*A219964(n)` with `a(0)=1`
-/

namespace A220027.P12408062958370993637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A057979 (A163985 n).toNat).toNat * A219964 n

end

end A220027.P12408062958370993637

/-!
# A220028: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 n X n array.

The programs for A220028, there is no canonical definition to state claims against.
-/

/-! ## A220028.P7345352380644344665

`A220032(∑[4*n]+1)`
-/

namespace A220028.P7345352380644344665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220028.P7345352380644344665

/-! ## A220028.P2067893637616498167

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A220032(n+1))]`
-/

namespace A220028.P2067893637616498167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A220032 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220028.P2067893637616498167

/-! ## A220028.P17571660879866494354

`record[A220032(Δ[A235355(n)])]`
-/

namespace A220028.P17571660879866494354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220028.P17571660879866494354

/-! ## A220028.P6155341685603578517

`record[A220032(A330613(n+1))]`
-/

namespace A220028.P6155341685603578517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220028.P6155341685603578517

/-! ## A220028.P14301446874813053689

`record[A220032(Δ[A079824(n+1)])]`
-/

namespace A220028.P14301446874813053689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220028.P14301446874813053689

/-!
# A220029: Number of n X 5 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 n X 5 array.

The programs for A220029, the canonical program `A220029.P3983526991510734983` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220029 has offset 1).

The definition of A220029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220029.P3983526991510734983

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=5, a(1)=12, a(2)=30, a(3)=61, a(4)=111, a(5)=187`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220029

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3983526991510734983.Spec : Prop :=
  ∀ n, P3983526991510734983.a n = A220029 (n + 1)

theorem P3983526991510734983.correct : P3983526991510734983.Spec := by
  intro n
  simp only [A220029, Nat.add_sub_cancel]

end A220029

/-! ## A220029.P16835756750133928056

`∑[∑[A100542(n+1)+n]]`
-/

namespace A220029.P16835756750133928056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100542 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220029.P16835756750133928056

namespace A220029

/-- `∑[∑[A100542(n+1)+n]]` -/
def P16835756750133928056.Spec : Prop :=
  ∀ n, P16835756750133928056.a n = A220029 (n + 1)

end A220029

/-! ## A220029.P12292804246917941029

`A229422(n+1)+3*A289207(n+1)`
-/

namespace A220029.P12292804246917941029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229422 (n + 1) + 3 * A289207 (n + 1)

end

end A220029.P12292804246917941029

namespace A220029

/-- `A229422(n+1)+3*A289207(n+1)` -/
def P12292804246917941029.Spec : Prop :=
  ∀ n, P12292804246917941029.a n = A220029 (n + 1)

end A220029

/-! ## A220029.P14016280133787711799

`A227259(n+1)+A047487(A004277(n))`
-/

namespace A220029.P14016280133787711799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227259 (n + 1) + A047487 (A004277 n).toNat

end

end A220029.P14016280133787711799

namespace A220029

/-- `A227259(n+1)+A047487(A004277(n))` -/
def P14016280133787711799.Spec : Prop :=
  ∀ n, P14016280133787711799.a n = A220029 (n + 1)

end A220029

/-! ## A220029.P1686768686580538437

`A227259(n+1)+A014681(A008574(n))`
-/

namespace A220029.P1686768686580538437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227259 (n + 1) + A014681 (A008574 n).toNat

end

end A220029.P1686768686580538437

namespace A220029

/-- `A227259(n+1)+A014681(A008574(n))` -/
def P1686768686580538437.Spec : Prop :=
  ∀ n, P1686768686580538437.a n = A220029 (n + 1)

end A220029

/-!
# A220030: Number of n X 6 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 n X 6 array.

The programs for A220030, there is no canonical definition to state claims against.
-/

/-! ## A220030.P2095125426069782364

`record[A220032(record[a(n-1)+1+n])]` with `a(0)=9, a(1)=1, a(2)=1`
-/

namespace A220030.P2095125426069782364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9, 1, 1] fun n f2 =>
  f2 (n - 1) + 1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220030.P2095125426069782364

/-! ## A220030.P10027753178649963646

`A220032(A052905(n+3))`
-/

namespace A220030.P10027753178649963646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A052905 (n + 3)).toNat

end

end A220030.P10027753178649963646

/-! ## A220030.P2649978899055503129

`A220032(A302537(n)+15)`
-/

namespace A220030.P2649978899055503129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A302537 n + 15).toNat

end

end A220030.P2649978899055503129

/-! ## A220030.P15153079327202836086

`A220032(A056119(n)+16)`
-/

namespace A220030.P15153079327202836086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A056119 n + 16).toNat

end

end A220030.P15153079327202836086

/-! ## A220030.P3400880416503783750

`A220032(eq[3, A219347(n)])`
-/

namespace A220030.P3400880416503783750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220030.P3400880416503783750

/-!
# A220031: Number of n X 7 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 n X 7 array.

The programs for A220031, there is no canonical definition to state claims against.
-/

/-! ## A220031.P1825307981766478882

`A220032(A055999(n+4))`
-/

namespace A220031.P1825307981766478882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A055999 (n + 4)).toNat

end

end A220031.P1825307981766478882

/-! ## A220031.P383574458502237877

`A220032(eq[4, A219347(n)])`
-/

namespace A220031.P383574458502237877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220031.P383574458502237877

/-! ## A220031.P18150332402175446814

`A220032(eq[6, A193592(n)])`
-/

namespace A220031.P18150332402175446814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220031.P18150332402175446814

/-! ## A220031.P406050992324051344

`A220032(A052905(n+4)-1)`
-/

namespace A220031.P406050992324051344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A052905 (n + 4) - 1).toNat

end

end A220031.P406050992324051344

/-! ## A220031.P566976479858721326

`A220032(A056115(n+2)+9)`
-/

namespace A220031.P566976479858721326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A056115 (n + 2) + 9).toNat

end

end A220031.P566976479858721326

/-!
# A220032: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 nXk array.

The programs for A220032, there is no canonical definition to state claims against.
-/

/-! ## A220032.P18002182302033324462

`A213086(n+1)+∑{e}[A348475(n+1), #]`
-/

namespace A220032.P18002182302033324462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A220032.P18002182302033324462

/-! ## A220032.P4722949269727874847

`A213086(n+1)+A117707(A242474(n+1))`
-/

namespace A220032.P4722949269727874847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (n + 1) + A117707 (A242474 (n + 1)).toNat

end

end A220032.P4722949269727874847

/-! ## A220032.P13971216273248947314

`A213086(A242474(n+1))+A163352(n+1)`
-/

namespace A220032.P13971216273248947314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A242474 (n + 1)).toNat + A163352 (n + 1)

end

end A220032.P13971216273248947314

/-! ## A220032.P9797130719762223556

`A117707(A008277(n+1))+A117707(n+1)`
-/

namespace A220032.P9797130719762223556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A008277 (n + 1)).toNat + A117707 (n + 1)

end

end A220032.P9797130719762223556

/-! ## A220032.P7448471822324568722

`A163352(A008277(n+1))+A163352(n+1)`
-/

namespace A220032.P7448471822324568722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A008277 (n + 1)).toNat + A163352 (n + 1)

end

end A220032.P7448471822324568722

/-!
# A220033: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 3 X n array.

The programs for A220033, the canonical program `A220033.P2284662346101122895` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220033 has offset 1).

The definition of A220033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220033.P14989910755725585806

`∑[a(n-1)+1]` with `a(0)=4, a(1)=2, a(2)=4, a(3)=9, a(4)=11`
-/

namespace A220033.P14989910755725585806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 4, 9, 11] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220033.P14989910755725585806

namespace A220033

/-- `∑[a(n-1)+1]` -/
def P14989910755725585806.Spec : Prop :=
  ∀ n, (P14989910755725585806.a n : ℤ) = A220033 (n + 1)

end A220033

/-! ## A220033.P2284662346101122895

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=6, a(2)=10, a(3)=19, a(4)=30, a(5)=42`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220033

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2284662346101122895.Spec : Prop :=
  ∀ n, P2284662346101122895.a n = A220033 (n + 1)

theorem P2284662346101122895.correct : P2284662346101122895.Spec := by
  intro n
  simp only [A220033, Nat.add_sub_cancel]

end A220033

/-! ## A220033.P15875746595492918166

`A220032(∑[n+2]+4)`
-/

namespace A220033.P15875746595492918166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220033.P15875746595492918166

namespace A220033

/-- `A220032(∑[n+2]+4)` -/
def P15875746595492918166.Spec : Prop :=
  ∀ n, P15875746595492918166.a n = A220033 (n + 1)

end A220033

/-! ## A220033.P18002564447476195087

`A220032(A167614(n+1))+char[18]`
-/

namespace A220033.P18002564447476195087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220033.P18002564447476195087

namespace A220033

/-- `A220032(A167614(n+1))+char[18]` -/
def P18002564447476195087.Spec : Prop :=
  ∀ n, P18002564447476195087.a n = A220033 (n + 1)

end A220033

/-! ## A220033.P17820957820915406630

`A220032(A055998(n)+6)+char[19]`
-/

namespace A220033.P17820957820915406630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220033.P17820957820915406630

namespace A220033

/-- `A220032(A055998(n)+6)+char[19]` -/
def P17820957820915406630.Spec : Prop :=
  ∀ n, P17820957820915406630.a n = A220033 (n + 1)

end A220033

/-!
# A220034: Number of 4 X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 4 X n array.

The programs for A220034, the canonical program `A220034.P9991898391036526201` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220034 has offset 1).

The definition of A220034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220034.P9991898391036526201

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=5, a(1)=8, a(2)=15, a(3)=34, a(4)=61, a(5)=95, a(6)=137, a(7)=187, a(8)=246`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220034

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9991898391036526201.Spec : Prop :=
  ∀ n, P9991898391036526201.a n = A220034 (n + 1)

theorem P9991898391036526201.correct : P9991898391036526201.Spec := by
  intro n
  simp only [A220034, Nat.add_sub_cancel]

end A220034

/-! ## A220034.P17015938379724343908

`A220032(∑[n+3]+7)`
-/

namespace A220034.P17015938379724343908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220034.P17015938379724343908

namespace A220034

/-- `A220032(∑[n+3]+7)` -/
def P17015938379724343908.Spec : Prop :=
  ∀ n, P17015938379724343908.a n = A220034 (n + 1)

end A220034

/-! ## A220034.P17644514887909706121

`A220032(A052905(n)+9)+char[17]`
-/

namespace A220034.P17644514887909706121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220034.P17644514887909706121

namespace A220034

/-- `A220032(A052905(n)+9)+char[17]` -/
def P17644514887909706121.Spec : Prop :=
  ∀ n, P17644514887909706121.a n = A220034 (n + 1)

end A220034

/-! ## A220034.P15078554745446960710

`A007318(C(n, 2))*A220032(A052905(n)+9)`
-/

namespace A220034.P15078554745446960710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A220032 (A052905 n + 9).toNat

end

end A220034.P15078554745446960710

namespace A220034

/-- `A007318(C(n, 2))*A220032(A052905(n)+9)` -/
def P15078554745446960710.Spec : Prop :=
  ∀ n, P15078554745446960710.a n = A220034 (n + 1)

end A220034

/-!
# A220035: Number of 5 X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 5 X n array.

The programs for A220035, there is no canonical definition to state claims against.
-/

/-! ## A220035.P14915073519607707462

`A220032(∑[n+4]+11)`
-/

namespace A220035.P14915073519607707462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A220035.P14915073519607707462

/-! ## A220035.P1904211300533951789

`record[A220032(A055998(n)+8)]`
-/

namespace A220035.P1904211300533951789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A055998 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220035.P1904211300533951789

/-! ## A220035.P7054652468478495601

`record[A220032(A046691(n)+9)]`
-/

namespace A220035.P7054652468478495601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A046691 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220035.P7054652468478495601

/-! ## A220035.P3661457909677783371

`A326545(n)+A220032(A167499(n+3))`
-/

namespace A220035.P3661457909677783371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A220032 (A167499 (n + 3)).toNat

end

end A220035.P3661457909677783371

/-! ## A220035.P10545795795821512528

`A220032(A155212(n)+13)%A042632(n)`
-/

namespace A220035.P10545795795821512528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220032 (A155212 n + 13).toNat) (A042632 n)

end

end A220035.P10545795795821512528

/-!
# A220036: Number of 6 X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 6 X n array.

The programs for A220036, there is no canonical definition to state claims against.
-/

/-! ## A220036.P11168469355549966136

`A220032(A056115(n)+21)`
-/

namespace A220036.P11168469355549966136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A056115 n + 21).toNat

end

end A220036.P11168469355549966136

/-! ## A220036.P8000147727826261125

`A220032(A167499(n+4)+1)`
-/

namespace A220036.P8000147727826261125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A167499 (n + 4) + 1).toNat

end

end A220036.P8000147727826261125

/-! ## A220036.P9192561364369374657

`A220032(A133263(n+5)+4)`
-/

namespace A220036.P9192561364369374657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A133263 (n + 5) + 4).toNat

end

end A220036.P9192561364369374657

/-! ## A220036.P4802450394135957116

`A220032(A000124(n+5)+5)`
-/

namespace A220036.P4802450394135957116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A000124 (n + 5) + 5).toNat

end

end A220036.P4802450394135957116

/-! ## A220036.P1486546326498699014

`A220032(A000096(n+4)+7)`
-/

namespace A220036.P1486546326498699014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A000096 (n + 4) + 7).toNat

end

end A220036.P1486546326498699014

/-!
# A220037: Number of 7 X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 7 X n array.

The programs for A220037, there is no canonical definition to state claims against.
-/

/-! ## A220037.P10543651897280463019

`A220032(A167487(n+5))`
-/

namespace A220037.P10543651897280463019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A167487 (n + 5)).toNat

end

end A220037.P10543651897280463019

/-! ## A220037.P16248993923559595714

`A220032(A056119(n)+28)`
-/

namespace A220037.P16248993923559595714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A056119 n + 28).toNat

end

end A220037.P16248993923559595714

/-! ## A220037.P165981776768028007

`A220032(eq[11, A066657(n)])`
-/

namespace A220037.P165981776768028007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220037.P165981776768028007

/-! ## A220037.P214790600716918821

`A220032(A000217(n+6)+7)`
-/

namespace A220037.P214790600716918821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (A000217 (n + 6) + 7).toNat

end

end A220037.P214790600716918821

/-! ## A220037.P8764883192567039052

`A220032(eq[8, A131818(n+1)])`
-/

namespace A220037.P8764883192567039052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220037.P8764883192567039052

/-!
# A220038: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X n array.

The programs for A220038, there is no canonical definition to state claims against.
-/

/-! ## A220038.P131570875342044889

`A220044(∑[4*n]+1)`
-/

namespace A220038.P131570875342044889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220038.P131570875342044889

/-!
# A220039: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX3 array.

The programs for A220039, there is no canonical definition to state claims against.
-/

/-! ## A220039.P1257825457939901457

`A220044(∑[n+3]+1)`
-/

namespace A220039.P1257825457939901457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220039.P1257825457939901457

/-! ## A220039.P18364313111567024999

`A220044(A141214(n)+1)-A057536(A059995(n))`
-/

namespace A220039.P18364313111567024999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A141214 n + 1).toNat - A057536 (A059995 n).toNat

end

end A220039.P18364313111567024999

/-!
# A220040: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X 4 array.

The programs for A220040, there is no canonical definition to state claims against.
-/

/-! ## A220040.P16583106358812139758

`A220044(∑[n+4]+3)`
-/

namespace A220040.P16583106358812139758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220040.P16583106358812139758

/-! ## A220040.P4346374328304357963

`A220044(A000124(n+4)-4)%A290657(n+2)`
-/

namespace A220040.P4346374328304357963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220044 (A000124 (n + 4) - 4).toNat) (A290657 (n + 2))

end

end A220040.P4346374328304357963

/-! ## A220040.P8524175058984566651

`A220044(A141214(n+1))-A057536(A059995(n))`
-/

namespace A220040.P8524175058984566651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A141214 (n + 1)).toNat - A057536 (A059995 n).toNat

end

end A220040.P8524175058984566651

/-!
# A220041: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX5 array.

The programs for A220041, there is no canonical definition to state claims against.
-/

/-! ## A220041.P13836588326716779833

`A220044(Δ[A264443(n)])`
-/

namespace A220041.P13836588326716779833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (f1 (n + 1) - f1 n).toNat

end

end A220041.P13836588326716779833

/-! ## A220041.P3874969477257878119

`A220044(A046691(n+3))`
-/

namespace A220041.P3874969477257878119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A046691 (n + 3)).toNat

end

end A220041.P3874969477257878119

/-! ## A220041.P5255271008320291860

`A220044(A056115(n)+11)`
-/

namespace A220041.P5255271008320291860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A056115 n + 11).toNat

end

end A220041.P5255271008320291860

/-!
# A220042: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX6 array.

The programs for A220042, there is no canonical definition to state claims against.
-/

/-! ## A220042.P15744952701923976461

`A220044(A052905(n+3))`
-/

namespace A220042.P15744952701923976461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A052905 (n + 3)).toNat

end

end A220042.P15744952701923976461

/-! ## A220042.P14782500722572699186

`A220044(A056119(n)+16)`
-/

namespace A220042.P14782500722572699186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A056119 n + 16).toNat

end

end A220042.P14782500722572699186

/-!
# A220043: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX7 array.

The programs for A220043, there is no canonical definition to state claims against.
-/

/-! ## A220043.P4976318157485477736

`A220044(A055999(n+4))`
-/

namespace A220043.P4976318157485477736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A055999 (n + 4)).toNat

end

end A220043.P4976318157485477736

/-!
# A220045: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 2 X n array.

The programs for A220045, there is no canonical definition to state claims against.
-/

/-! ## A220045.P1572311808112319746

`A220044(∑[n+1]+2)`
-/

namespace A220045.P1572311808112319746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220045.P1572311808112319746

/-! ## A220045.P3724989677747560240

`record[A220044(n+3)/A075503(n+1)]`
-/

namespace A220045.P3724989677747560240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220044 (n + 3) : ℚ) / (A075503 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220045.P3724989677747560240

/-! ## A220045.P3702063255528374945

`record[A220044(n+3)/A203412(n+1)]`
-/

namespace A220045.P3702063255528374945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220044 (n + 3) : ℚ) / (A203412 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220045.P3702063255528374945

/-!
# A220046: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 3Xn array.

The programs for A220046, there is no canonical definition to state claims against.
-/

/-! ## A220046.P2619081682624344524

`A220044(∑[n+2]+4)`
-/

namespace A220046.P2619081682624344524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220046.P2619081682624344524

/-! ## A220046.P13672759517179677079

`A220044(A167614(n+1))+char[13]`
-/

namespace A220046.P13672759517179677079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220046.P13672759517179677079

/-! ## A220046.P523254751637845210

`A326682(n)+A220044(A167614(n+1))`
-/

namespace A220046.P523254751637845210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n + A220044 (A167614 (n + 1)).toNat

end

end A220046.P523254751637845210

/-! ## A220046.P17362705038977187990

`A220044(A167614(n+1))%A042760(n)`
-/

namespace A220046.P17362705038977187990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220044 (A167614 (n + 1)).toNat) (A042760 n)

end

end A220046.P17362705038977187990

/-!
# A220047: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 4Xn array.

The programs for A220047, there is no canonical definition to state claims against.
-/

/-! ## A220047.P14246771410128296910

`A220044(∑[n+3]+7)`
-/

namespace A220047.P14246771410128296910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220047.P14246771410128296910

/-!
# A220048: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 5Xn array.

The programs for A220048, there is no canonical definition to state claims against.
-/

/-! ## A220048.P9531759945196506719

`A220044(A167499(n+3))`
-/

namespace A220048.P9531759945196506719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A167499 (n + 3)).toNat

end

end A220048.P9531759945196506719

/-! ## A220048.P16466983157000787561

`A220044(A155212(n)+13)`
-/

namespace A220048.P16466983157000787561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A155212 n + 13).toNat

end

end A220048.P16466983157000787561

/-! ## A220048.P4747832469490690079

`A220044(A056000(n)+15)`
-/

namespace A220048.P4747832469490690079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A056000 n + 15).toNat

end

end A220048.P4747832469490690079

/-! ## A220048.P5511494164038571360

`A220044(eq[7, A066657(n)])`
-/

namespace A220048.P5511494164038571360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220048.P5511494164038571360

/-!
# A220049: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 6Xn array.

The programs for A220049, there is no canonical definition to state claims against.
-/

/-! ## A220049.P6842277229233117509

`A220044(A056115(n)+21)`
-/

namespace A220049.P6842277229233117509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A056115 n + 21).toNat

end

end A220049.P6842277229233117509

/-!
# A220050: Number of 7 X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 7 X n array.

The programs for A220050, there is no canonical definition to state claims against.
-/

/-! ## A220050.P2699188468283151763

`A220044(A167487(n+5))`
-/

namespace A220050.P2699188468283151763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (A167487 (n + 5)).toNat

end

end A220050.P2699188468283151763

/-!
# A220051: Sum_{k=0..14} binomial(n,k).

The programs for A220051, the canonical program `A220051.P13361414756205621155` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220051 has offset 0).

The definition of A220051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220051.P13361414756205621155

`2*a(n-1)-C(n-1, 14)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220051

/-- `2*a(n-1)-C(n-1, 14)` -/
def P13361414756205621155.Spec : Prop :=
  ∀ n, P13361414756205621155.a n = A220051 n

theorem P13361414756205621155.correct : P13361414756205621155.Spec := by
  intro n
  simp only [A220051]

end A220051

/-! ## A220051.P13488176441775435380

`record[Δ[record[A297499(n+1)]]]`
-/

namespace A220051.P13488176441775435380
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220051.P13488176441775435380

namespace A220051

/-- `record[Δ[record[A297499(n+1)]]]` -/
def P13488176441775435380.Spec : Prop :=
  ∀ n, P13488176441775435380.a n = A220051 n

end A220051

/-! ## A220051.P11849994838474901594

`Δ[2^n-A103754(3*n+1)]`
-/

namespace A220051.P11849994838474901594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A103754 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220051.P11849994838474901594

namespace A220051

/-- `Δ[2^n-A103754(3*n+1)]` -/
def P11849994838474901594.Spec : Prop :=
  ∀ n, P11849994838474901594.a n = A220051 n

end A220051

/-! ## A220051.P8334164610621927646

`A014682(A335891(n+1))`
-/

namespace A220051.P8334164610621927646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A335891 (n + 1)).toNat

end

end A220051.P8334164610621927646

namespace A220051

/-- `A014682(A335891(n+1))` -/
def P8334164610621927646.Spec : Prop :=
  ∀ n, P8334164610621927646.a n = A220051 n

end A220051

/-! ## A220051.P13797004461061657273

`A209861(A220493(n+2))`
-/

namespace A220051.P13797004461061657273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (A220493 (n + 2)).toNat

end

end A220051.P13797004461061657273

namespace A220051

/-- `A209861(A220493(n+2))` -/
def P13797004461061657273.Spec : Prop :=
  ∀ n, P13797004461061657273.a n = A220051 n

end A220051

/-!
# A220053: Partial sums in rows of A130517, triangle read by rows.

The programs for A220053, the canonical program `A220053.P10350376442709660528` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220053 has offset 1).

The definition of A220053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220053.P7940061188217345998

`A220075(comp[∑[n]])`
-/

namespace A220053.P7940061188217345998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220075 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A220053.P7940061188217345998

namespace A220053

/-- `A220075(comp[∑[n]])` -/
def P7940061188217345998.Spec : Prop :=
  ∀ n, P7940061188217345998.a n = A220053 (n + 1)

end A220053

/-! ## A220053.P10350376442709660528

`A220075(A014132(n+1))%(n+2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A220053

/-- `A220075(A014132(n+1))%(n+2)` -/
def P10350376442709660528.Spec : Prop :=
  ∀ n, P10350376442709660528.a n = A220053 (n + 1)

theorem P10350376442709660528.correct : P10350376442709660528.Spec := by
  intro n
  simp only [A220053, Nat.add_sub_cancel]

end A220053

/-! ## A220053.P11154618111396329826

`A220075(A007401(n+1)+1)%(n+2)`
-/

namespace A220053.P11154618111396329826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220075 (A007401 (n + 1) + 1).toNat) (n + 2 : ℤ)

end

end A220053.P11154618111396329826

namespace A220053

/-- `A220075(A007401(n+1)+1)%(n+2)` -/
def P11154618111396329826.Spec : Prop :=
  ∀ n, P11154618111396329826.a n = A220053 (n + 1)

end A220053

/-! ## A220053.P6357230949257907371

`A220075(A014132(n+1))^cos(A000007(n))`
-/

namespace A220053.P6357230949257907371
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220075 (A014132 (n + 1)).toNat : ℝ) ^ (Real.cos (A000007 n : ℝ))

end

end A220053.P6357230949257907371

namespace A220053

/-- `A220075(A014132(n+1))^cos(A000007(n))` -/
def P6357230949257907371.Spec : Prop :=
  ∀ n, P6357230949257907371.a n = (A220053 (n + 1) : ℝ)

end A220053

/-! ## A220053.P7739025605899822309

`or(A000007(n), A220075(A007401(n+1)+1))`
-/

namespace A220053.P7739025605899822309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A220075 (A007401 (n + 1) + 1).toNat)

end

end A220053.P7739025605899822309

namespace A220053

/-- `or(A000007(n), A220075(A007401(n+1)+1))` -/
def P7739025605899822309.Spec : Prop :=
  ∀ n, P7739025605899822309.a n = A220053 (n + 1)

end A220053

/-! ## A220053.P6081621359262821023

`A220075(A014132(n+1))+A000007(A220075(n+1))`
-/

namespace A220053.P6081621359262821023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220075 (A014132 (n + 1)).toNat + A000007 (A220075 (n + 1)).toNat

end

end A220053.P6081621359262821023

namespace A220053

/-- `A220075(A014132(n+1))+A000007(A220075(n+1))` -/
def P6081621359262821023.Spec : Prop :=
  ∀ n, P6081621359262821023.a n = A220053 (n + 1)

end A220053

/-! ## A220053.P5316383626131339493

`A124171(A210983(n+1))`
-/

namespace A220053.P5316383626131339493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124171 (A210983 (n + 1)).toNat

end

end A220053.P5316383626131339493

namespace A220053

/-- `A124171(A210983(n+1))` -/
def P5316383626131339493.Spec : Prop :=
  ∀ n, P5316383626131339493.a n = A220053 (n + 1)

end A220053

/-! ## A220053.P13780072461598327624

`A210983(n+1)-A000292(A003056(n))`
-/

namespace A220053.P13780072461598327624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210983 (n + 1) - A000292 (A003056 n).toNat

end

end A220053.P13780072461598327624

namespace A220053

/-- `A210983(n+1)-A000292(A003056(n))` -/
def P13780072461598327624.Spec : Prop :=
  ∀ n, P13780072461598327624.a n = A220053 (n + 1)

end A220053

/-!
# A220054: Number A(n,k) of tilings of a k X n rectangle using right trominoes and 1 X 1 tiles; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A220054, there is no canonical definition to state claims against.
-/

/-! ## A220054.P17996808126466281487

`A079068(A303421(n+1))%A280998(n+1)`
-/

namespace A220054.P17996808126466281487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079068 (A303421 (n + 1)).toNat) (A280998 (n + 1))

end

end A220054.P17996808126466281487

/-!
# A220055: Number of tilings of a 5 X n rectangle using right trominoes and 1 X 1 tiles.

The programs for A220055, there is no canonical definition to state claims against.
-/

/-! ## A220055.P9965575368043871897

`A220054(A055999(n+3))`
-/

namespace A220055.P9965575368043871897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A055999 (n + 3)).toNat

end

end A220055.P9965575368043871897

/-! ## A220055.P1741084213137844480

`A220054(A167499(n+4))`
-/

namespace A220055.P1741084213137844480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A167499 (n + 4)).toNat

end

end A220055.P1741084213137844480

/-! ## A220055.P11661817158523415526

`A220054(A056115(n)+20)`
-/

namespace A220055.P11661817158523415526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A056115 n + 20).toNat

end

end A220055.P11661817158523415526

/-! ## A220055.P8742884041506479531

`A220054(eq[5, A002262(n)])`
-/

namespace A220055.P8742884041506479531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220055.P8742884041506479531

/-! ## A220055.P16181853250695740913

`A220054(eq[5, A025581(n)])`
-/

namespace A220055.P16181853250695740913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220055.P16181853250695740913

/-!
# A220056: Number of tilings of a 6 X n rectangle using right trominoes and 1 X 1 tiles.

The programs for A220056, there is no canonical definition to state claims against.
-/

/-! ## A220056.P13987957426456893858

`A220054(eq[6, A002262(n)])`
-/

namespace A220056.P13987957426456893858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220056.P13987957426456893858

/-! ## A220056.P3813014891640166121

`A220054(A056115(n+2)+8)`
-/

namespace A220056.P3813014891640166121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A056115 (n + 2) + 8).toNat

end

end A220056.P3813014891640166121

/-! ## A220056.P5279215100687078929

`A220054(A155212(n+2)+14)`
-/

namespace A220056.P5279215100687078929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A155212 (n + 2) + 14).toNat

end

end A220056.P5279215100687078929

/-! ## A220056.P4124562153867806540

`A220054(A056000(n+2)+16)`
-/

namespace A220056.P4124562153867806540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A056000 (n + 2) + 16).toNat

end

end A220056.P4124562153867806540

/-! ## A220056.P4963889083171206499

`A220054(A167614(n+5)+4-A178334(n))`
-/

namespace A220056.P4963889083171206499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A167614 (n + 5) + 4 - A178334 n).toNat

end

end A220056.P4963889083171206499

/-!
# A220057: Number of tilings of a 7 X n rectangle using right trominoes and 1 X 1 tiles.

The programs for A220057, there is no canonical definition to state claims against.
-/

/-! ## A220057.P10347300053883294627

`A220054(A155212(n+4))`
-/

namespace A220057.P10347300053883294627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A155212 (n + 4)).toNat

end

end A220057.P10347300053883294627

/-! ## A220057.P13439226164621552016

`A220054(eq[7, A002262(n)])`
-/

namespace A220057.P13439226164621552016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220057.P13439226164621552016

/-! ## A220057.P16164884755643380538

`A220054(eq[7, A025581(n)])`
-/

namespace A220057.P16164884755643380538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220057.P16164884755643380538

/-! ## A220057.P15854571109947457263

`A220054(eq[8, A004736(n+1)])`
-/

namespace A220057.P15854571109947457263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220057.P15854571109947457263

/-! ## A220057.P3906495940251486129

`A220054(A005843(n)+A167614(n+5)+4)`
-/

namespace A220057.P3906495940251486129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A005843 n + (A167614 (n + 5) + 4)).toNat

end

end A220057.P3906495940251486129

/-!
# A220058: Number of tilings of an 8 X n rectangle using right trominoes and 1 X 1 tiles.

The programs for A220058, there is no canonical definition to state claims against.
-/

/-! ## A220058.P5863636662842377504

`A220054(eq[8, A002262(n)])`
-/

namespace A220058.P5863636662842377504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220058.P5863636662842377504

/-! ## A220058.P14522442082429022938

`A220054(eq[8, A025581(n)])`
-/

namespace A220058.P14522442082429022938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220058.P14522442082429022938

/-! ## A220058.P5811609430122124999

`A220054(eq[9, A193739(n)])`
-/

namespace A220058.P5811609430122124999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220058.P5811609430122124999

/-! ## A220058.P15331981887057960448

`A220054(eq[8, A144328(n+1)])`
-/

namespace A220058.P15331981887057960448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220058.P15331981887057960448

/-! ## A220058.P10314708410143997597

`A220054(eq[9, A002260(n+1)])`
-/

namespace A220058.P10314708410143997597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220058.P10314708410143997597

/-!
# A220059: Number of tilings of a 9 X n rectangle using right trominoes and 1 X 1 tiles.

The programs for A220059, there is no canonical definition to state claims against.
-/

/-! ## A220059.P61026442160784040

`A220054(eq[9, A002262(n)])`
-/

namespace A220059.P61026442160784040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220059.P61026442160784040

/-! ## A220059.P14628393264068200528

`A220054(eq[9, A025581(n)])`
-/

namespace A220059.P14628393264068200528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220059.P14628393264068200528

/-! ## A220059.P516470470994076762

`A220054(eq[19, A099375(n)])`
-/

namespace A220059.P516470470994076762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220059.P516470470994076762

/-! ## A220059.P2337768408275210129

`A220054(eq[10, A002260(n+1)])`
-/

namespace A220059.P2337768408275210129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220059.P2337768408275210129

/-! ## A220059.P265322690761310845

`A220054(eq[10, A004736(n+1)])`
-/

namespace A220059.P265322690761310845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220059.P265322690761310845

/-!
# A220060: Number of tilings of a 10 X n rectangle using right trominoes and 1 X 1 tiles.

The programs for A220060, there is no canonical definition to state claims against.
-/

/-! ## A220060.P965811722990177193

`A220054(eq[10, A002262(n)])`
-/

namespace A220060.P965811722990177193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220060.P965811722990177193

/-! ## A220060.P10791268035349045485

`A220054(eq[10, A025581(n)])`
-/

namespace A220060.P10791268035349045485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220060.P10791268035349045485

/-! ## A220060.P16321095997073226784

`A220054(eq[10, A144328(n+1)])`
-/

namespace A220060.P16321095997073226784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220060.P16321095997073226784

/-! ## A220060.P4368237876377494823

`A220054(eq[11, A002260(n+1)])`
-/

namespace A220060.P4368237876377494823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220060.P4368237876377494823

/-! ## A220060.P757780194085983752

`A220054(eq[11, A004736(n+1)])`
-/

namespace A220060.P757780194085983752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220060.P757780194085983752

/-!
# A220061: Number of tilings of an n X n square using right trominoes and 1 X 1 tiles.

The programs for A220061, there is no canonical definition to state claims against.
-/

/-! ## A220061.P2316721001738164113

`A220054(∑[4*n])`
-/

namespace A220061.P2316721001738164113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220061.P2316721001738164113

/-! ## A220061.P15875199964339196634

`or(1, A220054(A046092(n)))`
-/

namespace A220061.P15875199964339196634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220054 (A046092 n).toNat)

end

end A220061.P15875199964339196634

/-! ## A220061.P17073732777889100826

`or(1, A220054(A106232(n+1)))`
-/

namespace A220061.P17073732777889100826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220054 (A106232 (n + 1)).toNat)

end

end A220061.P17073732777889100826

/-! ## A220061.P16987917499160883816

`A000041(val(n+1, 12))*A220054(A046092(n))`
-/

namespace A220061.P16987917499160883816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 12) * A220054 (A046092 n).toNat

end

end A220061.P16987917499160883816

/-! ## A220061.P4568558260175913449

`A007318(A000217(n))*A220054(A046092(n))`
-/

namespace A220061.P4568558260175913449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A220054 (A046092 n).toNat

end

end A220061.P4568558260175913449

/-!
# A220062: Number A(n,k) of n length words over k-ary alphabet, where neighboring letters are neighbors in the alphabet; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A220062, there is no canonical definition to state claims against.
-/

/-! ## A220062.P14044265040081070461

`A271751(A350529(n)^5)`
-/

namespace A220062.P14044265040081070461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271751 (A350529 n ^ 5).toNat

end

end A220062.P14044265040081070461

/-! ## A220062.P2956951260596891572

`A271751(A353434(n)^5)`
-/

namespace A220062.P2956951260596891572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271751 (A353434 n ^ 5).toNat

end

end A220062.P2956951260596891572

/-! ## A220062.P15855073069644393198

`A390256(A389487(n+1))`
-/

namespace A220062.P15855073069644393198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A389487 (n + 1)).toNat

end

end A220062.P15855073069644393198

/-! ## A220062.P18203672337523847749

`A271751(A347699(n+1)²*A350529(n))`
-/

namespace A220062.P18203672337523847749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271751 (A347699 (n + 1) ^ 2 * A350529 n).toNat

end

end A220062.P18203672337523847749

/-! ## A220062.P15459197679753476186

`A271751(A347699(n+1)²*A353434(n))`
-/

namespace A220062.P15459197679753476186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271751 (A347699 (n + 1) ^ 2 * A353434 n).toNat

end

end A220062.P15459197679753476186

/-!
# A220063: Decades whose semiprime pattern is the same as semiprime pattern in the previous decade.

The programs for A220063, there is no canonical definition to state claims against.
-/

/-! ## A220063.P679044397659104338

`A277460(n+1)+1`
-/

namespace A220063.P679044397659104338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277460 (n + 1) + 1

end

end A220063.P679044397659104338

/-! ## A220063.P4062025407765742963

`A277459(n+1)+2`
-/

namespace A220063.P4062025407765742963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277459 (n + 1) + 2

end

end A220063.P4062025407765742963

/-! ## A220063.P17931834193571571349

`A009056(A277459(n+1))`
-/

namespace A220063.P17931834193571571349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A277459 (n + 1)).toNat

end

end A220063.P17931834193571571349

/-! ## A220063.P17000414570680596228

`A011760(A277460(n+1))`
-/

namespace A220063.P17000414570680596228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A277460 (n + 1)).toNat

end

end A220063.P17000414570680596228

/-!
# A220064: Majority value maps: number of n X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..1 n X n array.

The programs for A220064, there is no canonical definition to state claims against.
-/

/-! ## A220064.P11391544417254158735

`A220070((n+1)²+n²)`
-/

namespace A220064.P11391544417254158735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 ((n + 1) ^ 2 + n ^ 2)

end

end A220064.P11391544417254158735

/-!
# A220065: Majority value maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..1 nX2 array.

The programs for A220065, there is no canonical definition to state claims against.
-/

/-! ## A220065.P14366670902342567604

`A220070(∑[n+1]+2)`
-/

namespace A220065.P14366670902342567604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220065.P14366670902342567604

/-! ## A220065.P10298769114327044249

`record[A220070(A175631(n+1)+3)]`
-/

namespace A220065.P10298769114327044249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (A175631 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220065.P10298769114327044249

/-! ## A220065.P3260948234050109815

`record[A010054(n)*A220070(n+2)]`
-/

namespace A220065.P3260948234050109815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220065.P3260948234050109815

/-! ## A220065.P4630928006531704015

`record[gcd(A143844(n), A220070(n+2))]`
-/

namespace A220065.P4630928006531704015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143844 n) (A220070 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220065.P4630928006531704015

/-! ## A220065.P7112104696765506779

`record[A220070(n+2)/A019538(n+1)]`
-/

namespace A220065.P7112104696765506779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220070 (n + 2) : ℚ) / (A019538 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220065.P7112104696765506779

/-!
# A220066: Majority value maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..1 nX3 array.

The programs for A220066, there is no canonical definition to state claims against.
-/

/-! ## A220066.P8398272975613594311

`A220070(∑[n+2]+4)`
-/

namespace A220066.P8398272975613594311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220066.P8398272975613594311

/-! ## A220066.P11300417403949889836

`record[A023531(n)*A220070(n+4)]`
-/

namespace A220066.P11300417403949889836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A220070 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220066.P11300417403949889836

/-! ## A220066.P14564083179792302061

`or(4*char[3], A220070(A167614(n+1)))`
-/

namespace A220066.P14564083179792302061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((4 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A220070 (A167614 (n + 1)).toNat)

end

end A220066.P14564083179792302061

/-! ## A220066.P1116672570847915370

`A220070(A167614(n+1))+A011731(n)`
-/

namespace A220066.P1116672570847915370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (A167614 (n + 1)).toNat + A011731 n

end

end A220066.P1116672570847915370

/-! ## A220066.P15965162765235555409

`A220070(A167614(n+1))+A025469(n)`
-/

namespace A220066.P15965162765235555409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (A167614 (n + 1)).toNat + A025469 n

end

end A220066.P15965162765235555409

/-!
# A220067: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..1 nX4 array.

The programs for A220067, there is no canonical definition to state claims against.
-/

/-! ## A220067.P17493686177012488628

`A220070(∑[n+3]+7)`
-/

namespace A220067.P17493686177012488628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220067.P17493686177012488628

/-! ## A220067.P9768701606877822606

`A220070(A141214(n+1))+A011731(n)`
-/

namespace A220067.P9768701606877822606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (A141214 (n + 1)).toNat + A011731 n

end

end A220067.P9768701606877822606

/-! ## A220067.P14664603212073822770

`A220070(A141214(n+1))+A025469(n)`
-/

namespace A220067.P14664603212073822770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (A141214 (n + 1)).toNat + A025469 n

end

end A220067.P14664603212073822770

/-!
# A220068: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..1 nX5 array.

The programs for A220068, there is no canonical definition to state claims against.
-/

/-! ## A220068.P16050148395357907146

`A220070(A167499(n+3))`
-/

namespace A220068.P16050148395357907146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (A167499 (n + 3)).toNat

end

end A220068.P16050148395357907146

/-! ## A220068.P15862291470054629843

`A220070(A155212(n)+13)`
-/

namespace A220068.P15862291470054629843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (A155212 n + 13).toNat

end

end A220068.P15862291470054629843

/-! ## A220068.P9929714860327847230

`A220070(A056000(n)+15)`
-/

namespace A220068.P9929714860327847230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (A056000 n + 15).toNat

end

end A220068.P9929714860327847230

/-! ## A220068.P17504273713983346894

`A220070(eq[7, A066657(n)])`
-/

namespace A220068.P17504273713983346894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220068.P17504273713983346894

/-!
# A220069: Majority value maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..1 nX6 array.

The programs for A220069, there is no canonical definition to state claims against.
-/

/-! ## A220069.P17289206480343584643

`A220070(∑[n+6]+10)`
-/

namespace A220069.P17289206480343584643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A220069.P17289206480343584643

/-!
# A220070: T(n,k)=Majority value maps: number of nXk binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..1 nXk array.

The programs for A220070, there is no canonical definition to state claims against.
-/

/-! ## A220070.P7702089302507675198

`A391623(A219310(n+1))`
-/

namespace A220070.P7702089302507675198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391623 (A219310 (n + 1)).toNat

end

end A220070.P7702089302507675198

/-! ## A220070.P4482311066995787859

`A334966(A218765(n+1)+1)`
-/

namespace A220070.P4482311066995787859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (A218765 (n + 1) + 1).toNat

end

end A220070.P4482311066995787859

/-! ## A220070.P8001861440784450540

`A240488(A290448(n))+A055572(A252820(n+1))`
-/

namespace A220070.P8001861440784450540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240488 (A290448 n).toNat + A055572 (A252820 (n + 1)).toNat

end

end A220070.P8001861440784450540

/-! ## A220070.P9960963463865690018

`A240488(A290448(n))+A132016(A218765(n+1))`
-/

namespace A220070.P9960963463865690018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240488 (A290448 n).toNat + A132016 (A218765 (n + 1)).toNat

end

end A220070.P9960963463865690018

/-! ## A220070.P6387361404030772259

`A240488(A290448(n))+A236674(A218765(n+1)+1)`
-/

namespace A220070.P6387361404030772259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240488 (A290448 n).toNat + A236674 (A218765 (n + 1) + 1).toNat

end

end A220070.P6387361404030772259

/-!
# A220071: Difference between number of halving steps and number of tripling steps needed to reach 1 in '3x+1' problem.

The programs for A220071, there is no canonical definition to state claims against.
-/

/-! ## A220071.P17996028330187726498

`A006666(n+1)-A006667(n+1)`
-/

namespace A220071.P17996028330187726498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) - A006667 (n + 1)

end

end A220071.P17996028330187726498

/-! ## A220071.P3176885775123098145

`A064433(n+2)-A078719(n+1)`
-/

namespace A220071.P3176885775123098145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 2) - A078719 (n + 1)

end

end A220071.P3176885775123098145

/-! ## A220071.P5130131988271679452

`A006666(n+1)+1-A078719(n+1)`
-/

namespace A220071.P5130131988271679452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (1 - A078719 (n + 1))

end

end A220071.P5130131988271679452

/-! ## A220071.P15848794512928593608

`A064433(n+2)-(A006667(n+1)+1)`
-/

namespace A220071.P15848794512928593608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 2) - (A006667 (n + 1) + 1)

end

end A220071.P15848794512928593608

/-! ## A220071.P5158119746298872218

`2*A006666(n+1)-A006577(n+1)`
-/

namespace A220071.P5158119746298872218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006666 (n + 1) - A006577 (n + 1)

end

end A220071.P5158119746298872218

/-! ## A220071.P7292251807370103903

`A006577(n+1)-2*A006667(n+1)`
-/

namespace A220071.P7292251807370103903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - 2 * A006667 (n + 1)

end

end A220071.P7292251807370103903

/-! ## A220071.P10648211418390768459

`A006666(n+1)-floor(A220182(n+1)/2)`
-/

namespace A220071.P10648211418390768459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) - ⌊(A220182 (n + 1) : ℚ) / 2⌋

end

end A220071.P10648211418390768459

/-! ## A220071.P13704532901822978092

`A008908(n+1)+1-2*A078719(n+1)`
-/

namespace A220071.P13704532901822978092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) + 1 - 2 * A078719 (n + 1)

end

end A220071.P13704532901822978092

/-! ## A220071.P157174316093591005

`2*A064433(n+2)-(A008908(n+1)+1)`
-/

namespace A220071.P157174316093591005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064433 (n + 2) - (A008908 (n + 1) + 1)

end

end A220071.P157174316093591005

/-! ## A220071.P4249044018034055086

`2*(A006666(n+1)+1)-(A008908(n+1)+1)`
-/

namespace A220071.P4249044018034055086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006666 (n + 1) + 1) - (A008908 (n + 1) + 1)

end

end A220071.P4249044018034055086

/-! ## A220071.P6784653019737137676

`A006577(n+1)-A005843(A006667(n+1))`
-/

namespace A220071.P6784653019737137676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A005843 (A006667 (n + 1)).toNat

end

end A220071.P6784653019737137676

/-! ## A220071.P4407952845980259663

`A006577(n+1)-A220182(A000265(n+1))`
-/

namespace A220071.P4407952845980259663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A220182 (A000265 (n + 1)).toNat

end

end A220071.P4407952845980259663

/-! ## A220071.P6408688260130211947

`A008908(n+1)-(A005843(A006667(n+1))+1)`
-/

namespace A220071.P6408688260130211947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A005843 (A006667 (n + 1)).toNat + 1)

end

end A220071.P6408688260130211947

/-! ## A220071.P12258172941498279544

`A008908(n+1)-A023443(2*A078719(n+1))`
-/

namespace A220071.P12258172941498279544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A023443 (2 * A078719 (n + 1)).toNat

end

end A220071.P12258172941498279544

/-! ## A220071.P11162185833230143472

`A008908(n+1)-(A078719(n+1)+A006667(n+1))`
-/

namespace A220071.P11162185833230143472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A078719 (n + 1) + A006667 (n + 1))

end

end A220071.P11162185833230143472

/-! ## A220071.P5806903246838020728

`A006666(n+1)+A064433(n+2)-A008908(n+1)`
-/

namespace A220071.P5806903246838020728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A064433 (n + 2) - A008908 (n + 1))

end

end A220071.P5806903246838020728

/-! ## A220071.P2540941361725106066

`A006577(n+1)+A059841(n+1)-A220182(n+1)`
-/

namespace A220071.P2540941361725106066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (A059841 (n + 1) - A220182 (n + 1))

end

end A220071.P2540941361725106066

/-! ## A220071.P15568994184450721473

`A008908(n+1)-A220182(2*(n+1))`
-/

namespace A220071.P15568994184450721473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A220182 (2 * (n + 1))

end

end A220071.P15568994184450721473

/-! ## A220071.P12340711501779023576

`A006577(n+1)+1-A220182(2*(n+1))`
-/

namespace A220071.P12340711501779023576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + 1 - A220182 (2 * (n + 1))

end

end A220071.P12340711501779023576

/-! ## A220071.P15010496419348481431

`A006666(n+1)+1-A286380(2*(n+1))`
-/

namespace A220071.P15010496419348481431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + 1 - A286380 (2 * (n + 1))

end

end A220071.P15010496419348481431

/-!
# A220073: Mirror of the triangle A130517.

The programs for A220073, the canonical program `A220073.P10030313601789214799` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220073 has offset 1).

The definition of A220073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220073.P5407628763196521289

`floor(abs(n-A061579(n)+γ))+1`
-/

namespace A220073.P5407628763196521289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|((n : ℤ) - A061579 n : ℝ) + Real.eulerMascheroniConstant|⌋ + 1

end

end A220073.P5407628763196521289

namespace A220073

/-- `floor(abs(n-A061579(n)+γ))+1` -/
def P5407628763196521289.Spec : Prop :=
  ∀ n, P5407628763196521289.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P18201600231737360799

`round(sqrt((A056951(n+1)+1)²+1))`
-/

namespace A220073.P18201600231737360799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A056951 (n + 1) + 1) ^ 2 + 1 : ℝ))

end

end A220073.P18201600231737360799

namespace A220073

/-- `round(sqrt((A056951(n+1)+1)²+1))` -/
def P18201600231737360799.Spec : Prop :=
  ∀ n, P18201600231737360799.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P17331815947137481211

`floor(abs(A038722(n+1)-n-ϕ))+1`
-/

namespace A220073.P17331815947137481211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A038722 (n + 1) - (n : ℤ) : ℝ) - Real.goldenRatio|⌋ + 1

end

end A220073.P17331815947137481211

namespace A220073

/-- `floor(abs(A038722(n+1)-n-ϕ))+1` -/
def P17331815947137481211.Spec : Prop :=
  ∀ n, P17331815947137481211.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P16838916378528591975

`A130517(A083920(n)+1)`
-/

namespace A220073.P16838916378528591975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A083920 n + 1).toNat

end

end A220073.P16838916378528591975

namespace A220073

/-- `A130517(A083920(n)+1)` -/
def P16838916378528591975.Spec : Prop :=
  ∀ n, P16838916378528591975.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P12694889392197290702

`A130517(A122797(n+1))`
-/

namespace A220073.P12694889392197290702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A122797 (n + 1)).toNat

end

end A220073.P12694889392197290702

namespace A220073

/-- `A130517(A122797(n+1))` -/
def P12694889392197290702.Spec : Prop :=
  ∀ n, P12694889392197290702.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P4530617372787045402

`A026233(A316272(n+1))`
-/

namespace A220073.P4530617372787045402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A316272 (n + 1)).toNat

end

end A220073.P4530617372787045402

namespace A220073

/-- `A026233(A316272(n+1))` -/
def P4530617372787045402.Spec : Prop :=
  ∀ n, P4530617372787045402.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P10030313601789214799

`A101688(n)+A049581(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A220073

/-- `A101688(n)+A049581(n)` -/
def P10030313601789214799.Spec : Prop :=
  ∀ n, P10030313601789214799.a n = A220073 (n + 1)

theorem P10030313601789214799.correct : P10030313601789214799.Spec := by
  intro n
  simp only [A220073, Nat.add_sub_cancel]

end A220073

/-! ## A220073.P8799431966081535673

`A101447(n-A141387(n))`
-/

namespace A220073.P8799431966081535673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 ((n : ℤ) - A141387 n).toNat

end

end A220073.P8799431966081535673

namespace A220073

/-- `A101447(n-A141387(n))` -/
def P8799431966081535673.Spec : Prop :=
  ∀ n, P8799431966081535673.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P1778816947148853424

`A103516(n-A141387(n))`
-/

namespace A220073.P1778816947148853424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 ((n : ℤ) - A141387 n).toNat

end

end A220073.P1778816947148853424

namespace A220073

/-- `A103516(n-A141387(n))` -/
def P1778816947148853424.Spec : Prop :=
  ∀ n, P1778816947148853424.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P13855726225344179651

`A101776(n)-A157458(n)`
-/

namespace A220073.P13855726225344179651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - A157458 n

end

end A220073.P13855726225344179651

namespace A220073

/-- `A101776(n)-A157458(n)` -/
def P13855726225344179651.Spec : Prop :=
  ∀ n, P13855726225344179651.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P1440582565039333986

`A130517(n+1)+A068344(n)`
-/

namespace A220073.P1440582565039333986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) + A068344 n

end

end A220073.P1440582565039333986

namespace A220073

/-- `A130517(n+1)+A068344(n)` -/
def P1440582565039333986.Spec : Prop :=
  ∀ n, P1440582565039333986.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P6652260043615180417

`A130517(1-A003056(n)+n)`
-/

namespace A220073.P6652260043615180417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (1 - A003056 n + (n : ℤ)).toNat

end

end A220073.P6652260043615180417

namespace A220073

/-- `A130517(1-A003056(n)+n)` -/
def P6652260043615180417.Spec : Prop :=
  ∀ n, P6652260043615180417.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P1188321146673830522

`A002024(1-A141387(n)+n)`
-/

namespace A220073.P1188321146673830522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (1 - A141387 n + (n : ℤ)).toNat

end

end A220073.P1188321146673830522

namespace A220073

/-- `A002024(1-A141387(n)+n)` -/
def P1188321146673830522.Spec : Prop :=
  ∀ n, P1188321146673830522.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P16678946190814914871

`A003056(n-A141387(n))+1`
-/

namespace A220073.P16678946190814914871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n : ℤ) - A141387 n).toNat + 1

end

end A220073.P16678946190814914871

namespace A220073

/-- `A003056(n-A141387(n))+1` -/
def P16678946190814914871.Spec : Prop :=
  ∀ n, P16678946190814914871.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P10717912727966964570

`A003988(1-A141387(n)+n)`
-/

namespace A220073.P10717912727966964570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (1 - A141387 n + (n : ℤ)).toNat

end

end A220073.P10717912727966964570

namespace A220073

/-- `A003988(1-A141387(n)+n)` -/
def P10717912727966964570.Spec : Prop :=
  ∀ n, P10717912727966964570.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P15459559872492207910

`A003990(1-A141387(n)+n)`
-/

namespace A220073.P15459559872492207910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (1 - A141387 n + (n : ℤ)).toNat

end

end A220073.P15459559872492207910

namespace A220073

/-- `A003990(1-A141387(n)+n)` -/
def P15459559872492207910.Spec : Prop :=
  ∀ n, P15459559872492207910.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P16132466531695744487

`A003991(1-A141387(n)+n)`
-/

namespace A220073.P16132466531695744487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (1 - A141387 n + (n : ℤ)).toNat

end

end A220073.P16132466531695744487

namespace A220073

/-- `A003991(1-A141387(n)+n)` -/
def P16132466531695744487.Spec : Prop :=
  ∀ n, P16132466531695744487.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P10961564040473497426

`A004736(1-A141387(n)+n)`
-/

namespace A220073.P10961564040473497426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (1 - A141387 n + (n : ℤ)).toNat

end

end A220073.P10961564040473497426

namespace A220073

/-- `A004736(1-A141387(n)+n)` -/
def P10961564040473497426.Spec : Prop :=
  ∀ n, P10961564040473497426.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P11923857283629436360

`A059897(n+1-A141387(n))`
-/

namespace A220073.P11923857283629436360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 ((n + 1 : ℤ) - A141387 n).toNat

end

end A220073.P11923857283629436360

namespace A220073

/-- `A059897(n+1-A141387(n))` -/
def P11923857283629436360.Spec : Prop :=
  ∀ n, P11923857283629436360.a n = A220073 (n + 1)

end A220073

/-! ## A220073.P5543307971536660540

`A091257(1-A141387(n)+n)`
-/

namespace A220073.P5543307971536660540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091257 (1 - A141387 n + (n : ℤ)).toNat

end

end A220073.P5543307971536660540

namespace A220073

/-- `A091257(1-A141387(n)+n)` -/
def P5543307971536660540.Spec : Prop :=
  ∀ n, P5543307971536660540.a n = A220073 (n + 1)

end A220073

/-!
# A220074: Triangle read by rows giving coefficients T(n,k) of [x^(n-k)] in Sum_{i=0..n} (x-1)^i, 0 <= n <= k.

The programs for A220074, the canonical program `A220074.P2112214124102023160` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220074 has offset 0).

The definition of A220074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220074.P2112214124102023160

`A059259(n)*A062157(A128227(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A220074

/-- `A059259(n)*A062157(A128227(n))` -/
def P2112214124102023160.Spec : Prop :=
  ∀ n, P2112214124102023160.a n = A220074 n

theorem P2112214124102023160.correct : P2112214124102023160.Spec := by
  intro n
  simp only [A220074]

end A220074

/-! ## A220074.P7768197473046285691

`A239473(A061579(n))`
-/

namespace A220074.P7768197473046285691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (A061579 n).toNat

end

end A220074.P7768197473046285691

namespace A220074

/-- `A239473(A061579(n))` -/
def P7768197473046285691.Spec : Prop :=
  ∀ n, P7768197473046285691.a n = A220074 n

end A220074

/-! ## A220074.P10103740271937698184

`A239473(A114327(n)+n)`
-/

namespace A220074.P10103740271937698184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (A114327 n + (n : ℤ)).toNat

end

end A220074.P10103740271937698184

namespace A220074

/-- `A239473(A114327(n)+n)` -/
def P10103740271937698184.Spec : Prop :=
  ∀ n, P10103740271937698184.a n = A220074 n

end A220074

/-! ## A220074.P4821645494442425114

`A239473(∑[A198954(n)-1])`
-/

namespace A220074.P4821645494442425114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220074.P4821645494442425114

namespace A220074

/-- `A239473(∑[A198954(n)-1])` -/
def P4821645494442425114.Spec : Prop :=
  ∀ n, P4821645494442425114.a n = A220074 n

end A220074

/-! ## A220074.P7350877069520596220

`A239473(A038722(n+1)-1)`
-/

namespace A220074.P7350877069520596220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (A038722 (n + 1) - 1).toNat

end

end A220074.P7350877069520596220

namespace A220074

/-- `A239473(A038722(n+1)-1)` -/
def P7350877069520596220.Spec : Prop :=
  ∀ n, P7350877069520596220.a n = A220074 n

end A220074

/-! ## A220074.P6827672992942156399

`A239473(A014132(n+1)-2*A002260(n+1))`
-/

namespace A220074.P6827672992942156399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (A014132 (n + 1) - 2 * A002260 (n + 1)).toNat

end

end A220074.P6827672992942156399

namespace A220074

/-- `A239473(A014132(n+1)-2*A002260(n+1))` -/
def P6827672992942156399.Spec : Prop :=
  ∀ n, P6827672992942156399.a n = A220074 n

end A220074

/-! ## A220074.P14993339237853029268

`A239473(A123578(n+1)*A123578(n+1)-(n+1))`
-/

namespace A220074.P14993339237853029268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (A123578 (n + 1) * A123578 (n + 1) - (n + 1 : ℤ)).toNat

end

end A220074.P14993339237853029268

namespace A220074

/-- `A239473(A123578(n+1)*A123578(n+1)-(n+1))` -/
def P14993339237853029268.Spec : Prop :=
  ∀ n, P14993339237853029268.a n = A220074 n

end A220074

/-! ## A220074.P6415768697238445124

`A239473(A014132(n+1)-A002260(n+1)-A002260(n+1))`
-/

namespace A220074.P6415768697238445124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (A014132 (n + 1) - A002260 (n + 1) - A002260 (n + 1)).toNat

end

end A220074.P6415768697238445124

namespace A220074

/-- `A239473(A014132(n+1)-A002260(n+1)-A002260(n+1))` -/
def P6415768697238445124.Spec : Prop :=
  ∀ n, P6415768697238445124.a n = A220074 n

end A220074

/-! ## A220074.P4787972259749380213

`A239473(A038722(n+2))`
-/

namespace A220074.P4787972259749380213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (A038722 (n + 2)).toNat

end

end A220074.P4787972259749380213

namespace A220074

/-- `A239473(A038722(n+2))` -/
def P4787972259749380213.Spec : Prop :=
  ∀ n, P4787972259749380213.a n = A220074 n

end A220074

/-! ## A220074.P13376569181802441870

`A279006(A007401(n+1))`
-/

namespace A220074.P13376569181802441870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279006 (A007401 (n + 1)).toNat

end

end A220074.P13376569181802441870

namespace A220074

/-- `A279006(A007401(n+1))` -/
def P13376569181802441870.Spec : Prop :=
  ∀ n, P13376569181802441870.a n = A220074 n

end A220074

/-! ## A220074.P16425759040865706607

`A279006(A123578(n)+n)`
-/

namespace A220074.P16425759040865706607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279006 (A123578 n + (n : ℤ)).toNat

end

end A220074.P16425759040865706607

namespace A220074

/-- `A279006(A123578(n)+n)` -/
def P16425759040865706607.Spec : Prop :=
  ∀ n, P16425759040865706607.a n = A220074 n

end A220074

/-! ## A220074.P8430992462108496074

`A112468(A038722(n+1)+A002024(n+1))`
-/

namespace A220074.P8430992462108496074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112468 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A220074.P8430992462108496074

namespace A220074

/-- `A112468(A038722(n+1)+A002024(n+1))` -/
def P8430992462108496074.Spec : Prop :=
  ∀ n, P8430992462108496074.a n = A220074 n

end A220074

/-!
# A220075: Partial sums in rows of A220073, triangle read by rows.

The programs for A220075, the canonical program `A220075.P13613845482449315163` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220075 has offset 1).

The definition of A220075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220075.P43792715400756922

`A220053(n+1)-A053616(n+1)`
-/

namespace A220075.P43792715400756922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220053 (n + 1) - A053616 (n + 1)

end

end A220075.P43792715400756922

namespace A220075

/-- `A220053(n+1)-A053616(n+1)` -/
def P43792715400756922.Spec : Prop :=
  ∀ n, P43792715400756922.a n = A220075 (n + 1)

end A220075

/-! ## A220075.P13613845482449315163

`∑[A220073(n+1)-n*A010054(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A220075

/-- `∑[A220073(n+1)-n*A010054(n)]` -/
def P13613845482449315163.Spec : Prop :=
  ∀ n, P13613845482449315163.a n = A220075 (n + 1)

theorem P13613845482449315163.correct : P13613845482449315163.Spec := by
  intro n
  simp only [A220075, Nat.add_sub_cancel]

end A220075

/-! ## A220075.P15581239581450067065

`A220053(n+1)-A004526(A210535(n+1))`
-/

namespace A220075.P15581239581450067065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220053 (n + 1) - A004526 (A210535 (n + 1)).toNat

end

end A220075.P15581239581450067065

namespace A220075

/-- `A220053(n+1)-A004526(A210535(n+1))` -/
def P15581239581450067065.Spec : Prop :=
  ∀ n, P15581239581450067065.a n = A220075 (n + 1)

end A220075

/-! ## A220075.P2698646415986977895

`A220053(comp[∑[n]])-A210535(n+1)`
-/

namespace A220075.P2698646415986977895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220053 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A210535 (n + 1)

end

end A220075.P2698646415986977895

namespace A220075

/-- `A220053(comp[∑[n]])-A210535(n+1)` -/
def P2698646415986977895.Spec : Prop :=
  ∀ n, P2698646415986977895.a n = A220075 (n + 1)

end A220075

/-! ## A220075.P14297100052831876488

`A124171(∑[A220073(n+1)])`
-/

namespace A220075.P14297100052831876488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124171 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220075.P14297100052831876488

namespace A220075

/-- `A124171(∑[A220073(n+1)])` -/
def P14297100052831876488.Spec : Prop :=
  ∀ n, P14297100052831876488.a n = A220075 (n + 1)

end A220075

/-!
# A220077: Numbers k such that 2^k + 35 is prime.

The programs for A220077, there is no canonical definition to state claims against.
-/

/-! ## A220077.P3466825816138227373

`log2(A176927(n+1)-35)`
-/

namespace A220077.P3466825816138227373
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A176927 (n + 1) - 35 : ℝ)

end

end A220077.P3466825816138227373

/-! ## A220077.P17302143680478778631

`A102453(n+1)+A000720(A089472(n))`
-/

namespace A220077.P17302143680478778631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102453 (n + 1) + A000720 (A089472 n).toNat

end

end A220077.P17302143680478778631

/-! ## A220077.P17157141365150971043

`A196241(∑[or(n, n+1)])`
-/

namespace A220077.P17157141365150971043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196241 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220077.P17157141365150971043

/-! ## A220077.P3503840072208327369

`record[a(n-1)+2*A192174(n)]` with `a(0)=1`
-/

namespace A220077.P3503840072208327369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2 * A192174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220077.P3503840072208327369

/-! ## A220077.P10059801802450787959

`lt[2*n-a(n-1), A141821(n+2)]` with `a(0)=8`
-/

namespace A220077.P10059801802450787959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141821 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220077.P10059801802450787959

/-!
# A220078: 

The programs for A220078, there is no canonical definition to state claims against.
-/

/-! ## A220078.P8162618143338543875

`5^n!`
-/

namespace A220078.P8162618143338543875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ Nat.factorial n

end

end A220078.P8162618143338543875

/-!
# A220079: 

The programs for A220079, there is no canonical definition to state claims against.
-/

/-! ## A220079.P9008785690048472380

`7^n!`
-/

namespace A220079.P9008785690048472380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ Nat.factorial n

end

end A220079.P9008785690048472380

/-!
# A220080: Length of longest palindromic suffix of the prefix of length n of the Thue-Morse sequence (A010060).

The programs for A220080, there is no canonical definition to state claims against.
-/

/-! ## A220080.P13936029461949362403

`A326635(n)+A251141(A015892(n+1))`
-/

namespace A220080.P13936029461949362403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326635 n + A251141 (A015892 (n + 1)).toNat

end

end A220080.P13936029461949362403

/-! ## A220080.P13982187292718681941

`A332281(n)+A251141(A015892(n+1))`
-/

namespace A220080.P13982187292718681941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A251141 (A015892 (n + 1)).toNat

end

end A220080.P13982187292718681941

/-!
# A220081: Primes of the form 15*k^2 - 15*k + 17.

The programs for A220081, the canonical program `A220081.P4858507576778116809` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220081 has offset 1).

The definition of A220081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220081.P4858507576778116809

`p?[∑[30*n]+17]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220081

/-- `p?[∑[30*n]+17]` -/
def P4858507576778116809.Spec : Prop :=
  ∀ n, (P4858507576778116809.a n : ℤ) = A220081 (n + 1)

theorem P4858507576778116809.correct : P4858507576778116809.Spec := by
  intro n
  simp only [A220081, Nat.add_sub_cancel]

end A220081

/-! ## A220081.P3341275311069497544

`or(1, p?[A227721(n+1)+A152751(n)])`
-/

namespace A220081.P3341275311069497544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227721 (n + 1) + A152751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A220081.P3341275311069497544

namespace A220081

/-- `or(1, p?[A227721(n+1)+A152751(n)])` -/
def P3341275311069497544.Spec : Prop :=
  ∀ n, P3341275311069497544.a n = A220081 (n + 1)

end A220081

/-! ## A220081.P7136648466557927686

`p?[A227721(n+1)+A152751(n)]%A017222(n)`
-/

namespace A220081.P7136648466557927686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227721 (n + 1) + A152751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017222 n)

end

end A220081.P7136648466557927686

namespace A220081

/-- `p?[A227721(n+1)+A152751(n)]%A017222(n)` -/
def P7136648466557927686.Spec : Prop :=
  ∀ n, P7136648466557927686.a n = A220081 (n + 1)

end A220081

/-! ## A220081.P1337440847807561097

`p?[A227721(n+1)+A152751(n)]*A000034(2*n)`
-/

namespace A220081.P1337440847807561097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227721 (n + 1) + A152751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A220081.P1337440847807561097

namespace A220081

/-- `p?[A227721(n+1)+A152751(n)]*A000034(2*n)` -/
def P1337440847807561097.Spec : Prop :=
  ∀ n, P1337440847807561097.a n = A220081 (n + 1)

end A220081

/-! ## A220081.P10698981937331922783

`p?[A227721(n+1)+A152751(n)]+A008683(12*(n+1))`
-/

namespace A220081.P10698981937331922783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227721 (n + 1) + A152751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (12 * (n + 1))

end

end A220081.P10698981937331922783

namespace A220081

/-- `p?[A227721(n+1)+A152751(n)]+A008683(12*(n+1))` -/
def P10698981937331922783.Spec : Prop :=
  ∀ n, P10698981937331922783.a n = A220081 (n + 1)

end A220081

/-! ## A220081.P15672153084305498093

`or(1, p?[A128468(C(n+1, 2))])`
-/

namespace A220081.P15672153084305498093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A220081.P15672153084305498093

namespace A220081

/-- `or(1, p?[A128468(C(n+1, 2))])` -/
def P15672153084305498093.Spec : Prop :=
  ∀ n, P15672153084305498093.a n = A220081 (n + 1)

end A220081

/-! ## A220081.P986964179538137143

`A000027(p?[A128468(C(n+1, 2))])`
-/

namespace A220081.P986964179538137143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A220081.P986964179538137143

namespace A220081

/-- `A000027(p?[A128468(C(n+1, 2))])` -/
def P986964179538137143.Spec : Prop :=
  ∀ n, P986964179538137143.a n = A220081 (n + 1)

end A220081

/-! ## A220081.P8090460540239880704

`record[A006530(15*(n²+1+n)+2)]`
-/

namespace A220081.P8090460540239880704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (15 * (n ^ 2 + 1 + n) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220081.P8090460540239880704

namespace A220081

/-- `record[A006530(15*(n²+1+n)+2)]` -/
def P8090460540239880704.Spec : Prop :=
  ∀ n, P8090460540239880704.a n = A220081 (n + 1)

end A220081

/-!
# A220082: Numbers k such that 10*k-1 is a square.

The programs for A220082, the canonical program `A220082.P4767613609164849461` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220082 has offset 1).

The definition of A220082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220082.P234984022178077016

`(10*(n+1)*n-(2*(n+1)-1)*(-1)^(n+1)+3)/4`
-/

namespace A220082.P234984022178077016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) * n : ℤ) - ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) + 3 : ℚ) / 4

end

end A220082.P234984022178077016

namespace A220082

/-- `(10*(n+1)*n-(2*(n+1)-1)*(-1)^(n+1)+3)/4` -/
def P234984022178077016.Spec : Prop :=
  ∀ n, P234984022178077016.a n = (A220082 (n + 1) : ℚ)

end A220082

/-! ## A220082.P4767613609164849461

`4*A085787(n)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A220082

/-- `4*A085787(n)+1` -/
def P4767613609164849461.Spec : Prop :=
  ∀ n, P4767613609164849461.a n = A220082 (n + 1)

theorem P4767613609164849461.correct : P4767613609164849461.Spec := by
  intro n
  simp only [A220082, Nat.add_sub_cancel]

end A220082

/-! ## A220082.P15735419544964247692

`A132356(n)-(2*(n+1)-1)*(-1)^(n+1)`
-/

namespace A220082.P15735419544964247692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n - ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1)

end

end A220082.P15735419544964247692

namespace A220082

/-- `A132356(n)-(2*(n+1)-1)*(-1)^(n+1)` -/
def P15735419544964247692.Spec : Prop :=
  ∀ n, P15735419544964247692.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P9080466300753995611

`A212570(n+1)-A212570(n)`
-/

namespace A220082.P9080466300753995611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212570 (n + 1) - A212570 n

end

end A220082.P9080466300753995611

namespace A220082

/-- `A212570(n+1)-A212570(n)` -/
def P9080466300753995611.Spec : Prop :=
  ∀ n, P9080466300753995611.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P5333349441494724534

`∑[n*C(4, gcd(2, n))]+1`
-/

namespace A220082.P5333349441494724534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 4 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A220082.P5333349441494724534

namespace A220082

/-- `∑[n*C(4, gcd(2, n))]+1` -/
def P5333349441494724534.Spec : Prop :=
  ∀ n, (P5333349441494724534.a n : ℤ) = A220082 (n + 1)

end A220082

/-! ## A220082.P15564512361133946664

`(2*n+1)²-∑[2*lcm(2, n)]`
-/

namespace A220082.P15564512361133946664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220082.P15564512361133946664

namespace A220082

/-- `(2*n+1)²-∑[2*lcm(2, n)]` -/
def P15564512361133946664.Spec : Prop :=
  ∀ n, P15564512361133946664.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P1431305262736327543

`A273368(n)+1`
-/

namespace A220082.P1431305262736327543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273368 n + 1

end

end A220082.P1431305262736327543

namespace A220082

/-- `A273368(n)+1` -/
def P1431305262736327543.Spec : Prop :=
  ∀ n, P1431305262736327543.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P4408923727297565609

`A213399(n)+∑[n]`
-/

namespace A220082.P4408923727297565609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220082.P4408923727297565609

namespace A220082

/-- `A213399(n)+∑[n]` -/
def P4408923727297565609.Spec : Prop :=
  ∀ n, P4408923727297565609.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P13794650408318739709

`2*A247643(n)-1`
-/

namespace A220082.P13794650408318739709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247643 n - 1

end

end A220082.P13794650408318739709

namespace A220082

/-- `2*A247643(n)-1` -/
def P13794650408318739709.Spec : Prop :=
  ∀ n, P13794650408318739709.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P15882850108432316405

`A186424(n)+n²+n`
-/

namespace A220082.P15882850108432316405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n + (n ^ 2 + n : ℤ)

end

end A220082.P15882850108432316405

namespace A220082

/-- `A186424(n)+n²+n` -/
def P15882850108432316405.Spec : Prop :=
  ∀ n, P15882850108432316405.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P8402274937743039560

`4*A111711(n+1)-3`
-/

namespace A220082.P8402274937743039560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A111711 (n + 1) - 3

end

end A220082.P8402274937743039560

namespace A220082

/-- `4*A111711(n+1)-3` -/
def P8402274937743039560.Spec : Prop :=
  ∀ n, P8402274937743039560.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P15409346689856746938

`∑[A178414(n+1)]+n²`
-/

namespace A220082.P15409346689856746938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A220082.P15409346689856746938

namespace A220082

/-- `∑[A178414(n+1)]+n²` -/
def P15409346689856746938.Spec : Prop :=
  ∀ n, P15409346689856746938.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P17376449691073329966

`A375352(n+1)-(n²+n)`
-/

namespace A220082.P17376449691073329966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375352 (n + 1) - (n ^ 2 + n : ℤ)

end

end A220082.P17376449691073329966

namespace A220082

/-- `A375352(n+1)-(n²+n)` -/
def P17376449691073329966.Spec : Prop :=
  ∀ n, P17376449691073329966.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P7919762206738968750

`abs(A132356(n)+xor(2*n, (-1)^n))`
-/

namespace A220082.P7919762206738968750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132356 n + Int.xor (2 * n : ℤ) ((-1) ^ n)|

end

end A220082.P7919762206738968750

namespace A220082

/-- `abs(A132356(n)+xor(2*n, (-1)^n))` -/
def P7919762206738968750.Spec : Prop :=
  ∀ n, P7919762206738968750.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P3424436455861002587

`A130472(n)+A005891(n)`
-/

namespace A220082.P3424436455861002587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A005891 n

end

end A220082.P3424436455861002587

namespace A220082

/-- `A130472(n)+A005891(n)` -/
def P3424436455861002587.Spec : Prop :=
  ∀ n, P3424436455861002587.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P18249184792916122609

`A157142(n)+A132356(n)`
-/

namespace A220082.P18249184792916122609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n + A132356 n

end

end A220082.P18249184792916122609

namespace A220082

/-- `A157142(n)+A132356(n)` -/
def P18249184792916122609.Spec : Prop :=
  ∀ n, P18249184792916122609.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P17301342398773068103

`A213398(n)+A104584(n)`
-/

namespace A220082.P17301342398773068103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n + A104584 n

end

end A220082.P17301342398773068103

namespace A220082

/-- `A213398(n)+A104584(n)` -/
def P17301342398773068103.Spec : Prop :=
  ∀ n, P17301342398773068103.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P8648857037872129608

`A322462(n)+A081345(n)`
-/

namespace A220082.P8648857037872129608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 n + A081345 n

end

end A220082.P8648857037872129608

namespace A220082

/-- `A322462(n)+A081345(n)` -/
def P8648857037872129608.Spec : Prop :=
  ∀ n, P8648857037872129608.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P10777177445947649648

`A266883(n)+A195818(n)`
-/

namespace A220082.P10777177445947649648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266883 n + A195818 n

end

end A220082.P10777177445947649648

namespace A220082

/-- `A266883(n)+A195818(n)` -/
def P10777177445947649648.Spec : Prop :=
  ∀ n, P10777177445947649648.a n = A220082 (n + 1)

end A220082

/-! ## A220082.P13880127503907177457

`A317298(n)+A266074(n)`
-/

namespace A220082.P13880127503907177457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n + A266074 n

end

end A220082.P13880127503907177457

namespace A220082

/-- `A317298(n)+A266074(n)` -/
def P13880127503907177457.Spec : Prop :=
  ∀ n, P13880127503907177457.a n = A220082 (n + 1)

end A220082

/-!
# A220083: a(n) = (15*n^2 + 9*n + 2)/2.

The programs for A220083, the canonical program `A220083.P15776664084435085173` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220083 has offset 0).

The definition of A220083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(15*n²+9*n+2)/2` (program `A220083.P11950652600509008873`, by `A220083.P11950652600509008873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220083.P11950652600509008873

`(15*n²+9*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220083.P11950652600509008873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 * n ^ 2 + 9 * n + 2 : ℚ) / 2

end

end A220083.P11950652600509008873

namespace A220083

/-- `(15*n²+9*n+2)/2` -/
def P11950652600509008873.Spec : Prop :=
  ∀ n, P11950652600509008873.a n = (A220083 n : ℚ)

theorem P11950652600509008873.correct : P11950652600509008873.Spec := by
  intro n
  simp only [A220083, Nat.add_sub_cancel, A220083.P11950652600509008873.a, A220083.P15776664084435085173.f1, A220083.P15776664084435085173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220083

/-! ## A220083.P13813774206875580272

`∑[a(n-1)+15]` with `a(0)=1, a(1)=12`
-/

namespace A220083.P13813774206875580272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220083.P13813774206875580272

namespace A220083

/-- `∑[a(n-1)+15]` -/
def P13813774206875580272.Spec : Prop :=
  ∀ n, (P13813774206875580272.a n : ℤ) = A220083 n

end A220083

/-! ## A220083.P6816088070753988336

`∑[ogf((1+10x+4x^2)/(1-2x+x^2))]`
-/

namespace A220083.P6816088070753988336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220083.P6816088070753988336

namespace A220083

/-- `∑[ogf((1+10x+4x^2)/(1-2x+x^2))]` -/
def P6816088070753988336.Spec : Prop :=
  ∀ n, P6816088070753988336.a n = A220083 n

end A220083

/-! ## A220083.P6334020859992432751

`ogf((1+10x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A220083.P6334020859992432751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 4] [1, -3, 3, -1] n

end

end A220083.P6334020859992432751

namespace A220083

/-- `ogf((1+10x+4x^2)/(1-3x+3x^2-x^3))` -/
def P6334020859992432751.Spec : Prop :=
  ∀ n, P6334020859992432751.a n = A220083 n

end A220083

/-! ## A220083.P15776664084435085173

`Δ[n*(5*C(n, 2)+n)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220083

/-- `Δ[n*(5*C(n, 2)+n)]` -/
def P15776664084435085173.Spec : Prop :=
  ∀ n, P15776664084435085173.a n = A220083 n

theorem P15776664084435085173.correct : P15776664084435085173.Spec := by
  intro n
  simp only [A220083]

end A220083

/-! ## A220083.P3972976442966575765

`Δ[A006597(n)]`
-/

namespace A220083.P3972976442966575765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220083.P3972976442966575765

namespace A220083

/-- `Δ[A006597(n)]` -/
def P3972976442966575765.Spec : Prop :=
  ∀ n, P3972976442966575765.a n = A220083 n

end A220083

/-! ## A220083.P1069367418006494063

`Δ[A006592(n)/4]`
-/

namespace A220083.P1069367418006494063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006592 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220083.P1069367418006494063

namespace A220083

/-- `Δ[A006592(n)/4]` -/
def P1069367418006494063.Spec : Prop :=
  ∀ n, P1069367418006494063.a n = (A220083 n : ℚ)

theorem P1069367418006494063.correct : P1069367418006494063.Spec := by
  intro n
  simp only [A220083, Nat.add_sub_cancel, A220083.P1069367418006494063.f1, A220083.P1069367418006494063.a, A220083.P15776664084435085173.f1, A220083.P15776664084435085173.a, A006592, A006592.P16309854090343874468.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220083

/-! ## A220083.P16250622999496229969

`A342914(n)+n²`
-/

namespace A220083.P16250622999496229969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342914 n + (n ^ 2 : ℤ)

end

end A220083.P16250622999496229969

namespace A220083

/-- `A342914(n)+n²` -/
def P16250622999496229969.Spec : Prop :=
  ∀ n, P16250622999496229969.a n = A220083 n

end A220083

/-! ## A220083.P3539456544845184131

`A005892(n)+∑[n]`
-/

namespace A220083.P3539456544845184131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005892 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220083.P3539456544845184131

namespace A220083

/-- `A005892(n)+∑[n]` -/
def P3539456544845184131.Spec : Prop :=
  ∀ n, P3539456544845184131.a n = A220083 n

end A220083

/-! ## A220083.P119542106568012692

`Δ[n*A000566(n)]`
-/

namespace A220083.P119542106568012692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220083.P119542106568012692

namespace A220083

/-- `Δ[n*A000566(n)]` -/
def P119542106568012692.Spec : Prop :=
  ∀ n, P119542106568012692.a n = A220083 n

end A220083

/-! ## A220083.P11306429829119528985

`3*A147875(n)+1`
-/

namespace A220083.P11306429829119528985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A147875 n + 1

end

end A220083.P11306429829119528985

namespace A220083

/-- `3*A147875(n)+1` -/
def P11306429829119528985.Spec : Prop :=
  ∀ n, P11306429829119528985.a n = A220083 n

end A220083

/-! ## A220083.P1343555252119645156

`Δ[n*(A192136(n)-1)]`
-/

namespace A220083.P1343555252119645156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A192136 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220083.P1343555252119645156

namespace A220083

/-- `Δ[n*(A192136(n)-1)]` -/
def P1343555252119645156.Spec : Prop :=
  ∀ n, P1343555252119645156.a n = A220083 n

end A220083

/-! ## A220083.P6037086959694843128

`3*A134238(n+1)-2`
-/

namespace A220083.P6037086959694843128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A134238 (n + 1) - 2

end

end A220083.P6037086959694843128

namespace A220083

/-- `3*A134238(n+1)-2` -/
def P6037086959694843128.Spec : Prop :=
  ∀ n, P6037086959694843128.a n = A220083 n

end A220083

/-! ## A220083.P8219316837832731192

`A292018(n+1)-2*n`
-/

namespace A220083.P8219316837832731192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292018 (n + 1) - (2 * n : ℤ)

end

end A220083.P8219316837832731192

namespace A220083

/-- `A292018(n+1)-2*n` -/
def P8219316837832731192.Spec : Prop :=
  ∀ n, P8219316837832731192.a n = A220083 n

end A220083

/-! ## A220083.P14946565432695237182

`A069128(n+1)-3*n`
-/

namespace A220083.P14946565432695237182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069128 (n + 1) - (3 * n : ℤ)

end

end A220083.P14946565432695237182

namespace A220083

/-- `A069128(n+1)-3*n` -/
def P14946565432695237182.Spec : Prop :=
  ∀ n, P14946565432695237182.a n = A220083 n

end A220083

/-! ## A220083.P15158107444303097921

`A033570(n)+A000326(n)`
-/

namespace A220083.P15158107444303097921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n + A000326 n

end

end A220083.P15158107444303097921

namespace A220083

/-- `A033570(n)+A000326(n)` -/
def P15158107444303097921.Spec : Prop :=
  ∀ n, P15158107444303097921.a n = A220083 n

theorem P15158107444303097921.correct : P15158107444303097921.Spec := by
  intro n
  simp only [A220083, Nat.add_sub_cancel, A220083.P15158107444303097921.a, A220083.P15776664084435085173.f1, A220083.P15776664084435085173.a, A000326, A000326.P15785277619453972366.a, A033570, A033570.P8308357737011808276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220083

/-! ## A220083.P5379332621244879251

`A022265(n)+A016754(n)`
-/

namespace A220083.P5379332621244879251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + A016754 n

end

end A220083.P5379332621244879251

namespace A220083

/-- `A022265(n)+A016754(n)` -/
def P5379332621244879251.Spec : Prop :=
  ∀ n, P5379332621244879251.a n = A220083 n

end A220083

/-! ## A220083.P14251370664613655828

`A022273(n)+A016813(n)`
-/

namespace A220083.P14251370664613655828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n + A016813 n

end

end A220083.P14251370664613655828

namespace A220083

/-- `A022273(n)+A016813(n)` -/
def P14251370664613655828.Spec : Prop :=
  ∀ n, P14251370664613655828.a n = A220083 n

end A220083

/-! ## A220083.P10591305963235534539

`A022272(n)+A016861(n)`
-/

namespace A220083.P10591305963235534539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n + A016861 n

end

end A220083.P10591305963235534539

namespace A220083

/-- `A022272(n)+A016861(n)` -/
def P10591305963235534539.Spec : Prop :=
  ∀ n, P10591305963235534539.a n = A220083 n

end A220083

/-! ## A220083.P2606791145188113595

`A038764(n)+A028896(n)`
-/

namespace A220083.P2606791145188113595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n + A028896 n

end

end A220083.P2606791145188113595

namespace A220083

/-- `A038764(n)+A028896(n)` -/
def P2606791145188113595.Spec : Prop :=
  ∀ n, P2606791145188113595.a n = A220083 n

theorem P2606791145188113595.correct : P2606791145188113595.Spec := by
  intro n
  simp only [A220083, Nat.add_sub_cancel, A220083.P2606791145188113595.a, A220083.P15776664084435085173.f1, A220083.P15776664084435085173.a, A028896, A028896.P3776891904721443318.a, A038764, A038764.P8793610560113549783.f1, A038764.P8793610560113549783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A220083

/-!
# A220084: a(n) = (n + 1)*(20*n^2 + 19*n + 6)/6.

The programs for A220084, the canonical program `A220084.P10857506543746891002` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220084 has offset 0).

The definition of A220084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(20*n²+19*n+6)/6` (program `A220084.P4838694967207355568`, by `A220084.P4838694967207355568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220084.P4838694967207355568

`(n+1)*(20*n²+19*n+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220084.P4838694967207355568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (20 * n ^ 2 + 19 * n + 6) : ℚ) / 6

end

end A220084.P4838694967207355568

namespace A220084

/-- `(n+1)*(20*n²+19*n+6)/6` -/
def P4838694967207355568.Spec : Prop :=
  ∀ n, P4838694967207355568.a n = (A220084 n : ℚ)

theorem P4838694967207355568.correct : P4838694967207355568.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A220084, Nat.add_sub_cancel, A220084.P4838694967207355568.a, A220084.P10857506543746891002.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A220084, Nat.add_sub_cancel, A220084.P4838694967207355568.a, A220084.P10857506543746891002.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A220084

/-! ## A220084.P10857506543746891002

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=15, a(2)=62, a(3)=162`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220084

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10857506543746891002.Spec : Prop :=
  ∀ n, P10857506543746891002.a n = A220084 n

theorem P10857506543746891002.correct : P10857506543746891002.Spec := by
  intro n
  simp only [A220084]

end A220084

/-! ## A220084.P14491244673379857930

`∑[∑[a(n-1)+20]]` with `a(0)=1, a(1)=13`
-/

namespace A220084.P14491244673379857930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220084.P14491244673379857930

namespace A220084

/-- `∑[∑[a(n-1)+20]]` -/
def P14491244673379857930.Spec : Prop :=
  ∀ n, (P14491244673379857930.a n : ℤ) = A220084 n

end A220084

/-! ## A220084.P8320998176904588551

`Δ[n*(n^3-C(n, 3))]`
-/

namespace A220084.P8320998176904588551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220084.P8320998176904588551

namespace A220084

/-- `Δ[n*(n^3-C(n, 3))]` -/
def P8320998176904588551.Spec : Prop :=
  ∀ n, P8320998176904588551.a n = A220084 n

end A220084

/-! ## A220084.P18200414010692828399

`∑[A272039(n)-n]`
-/

namespace A220084.P18200414010692828399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220084.P18200414010692828399

namespace A220084

/-- `∑[A272039(n)-n]` -/
def P18200414010692828399.Spec : Prop :=
  ∀ n, P18200414010692828399.a n = A220084 n

end A220084

/-! ## A220084.P16730730918553904165

`A299646(n)+n^3`
-/

namespace A220084.P16730730918553904165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299646 n + (n ^ 3 : ℤ)

end

end A220084.P16730730918553904165

namespace A220084

/-- `A299646(n)+n^3` -/
def P16730730918553904165.Spec : Prop :=
  ∀ n, P16730730918553904165.a n = A220084 n

end A220084

/-! ## A220084.P1649985675176319134

`A005915(n)+∑[n²]`
-/

namespace A220084.P1649985675176319134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220084.P1649985675176319134

namespace A220084

/-- `A005915(n)+∑[n²]` -/
def P1649985675176319134.Spec : Prop :=
  ∀ n, P1649985675176319134.a n = A220084 n

end A220084

/-! ## A220084.P10477317020321961174

`∑[A082040(n)+n²]`
-/

namespace A220084.P10477317020321961174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220084.P10477317020321961174

namespace A220084

/-- `∑[A082040(n)+n²]` -/
def P10477317020321961174.Spec : Prop :=
  ∀ n, P10477317020321961174.a n = A220084 n

end A220084

/-! ## A220084.P8022017670985029615

`A100174(n+1)+∑[n]`
-/

namespace A220084.P8022017670985029615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220084.P8022017670985029615

namespace A220084

/-- `A100174(n+1)+∑[n]` -/
def P8022017670985029615.Spec : Prop :=
  ∀ n, P8022017670985029615.a n = A220084 n

end A220084

/-! ## A220084.P1412119645272566860

`A034720(n+1)-∑[n]`
-/

namespace A220084.P1412119645272566860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034720 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220084.P1412119645272566860

namespace A220084

/-- `A034720(n+1)-∑[n]` -/
def P1412119645272566860.Spec : Prop :=
  ∀ n, P1412119645272566860.a n = A220084 n

end A220084

/-! ## A220084.P839863144683544485

`A005906(n)-n*∑[n]`
-/

namespace A220084.P839863144683544485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005906 n - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A220084.P839863144683544485

namespace A220084

/-- `A005906(n)-n*∑[n]` -/
def P839863144683544485.Spec : Prop :=
  ∀ n, P839863144683544485.a n = A220084 n

end A220084

/-! ## A220084.P6146447397186338358

`Δ[n*(A203551(n)-n)]`
-/

namespace A220084.P6146447397186338358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A203551 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220084.P6146447397186338358

namespace A220084

/-- `Δ[n*(A203551(n)-n)]` -/
def P6146447397186338358.Spec : Prop :=
  ∀ n, P6146447397186338358.a n = A220084 n

end A220084

/-! ## A220084.P6743086029463387198

`A169607(n)+(n+1)^3`
-/

namespace A220084.P6743086029463387198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n + ((n + 1) ^ 3 : ℤ)

end

end A220084.P6743086029463387198

namespace A220084

/-- `A169607(n)+(n+1)^3` -/
def P6743086029463387198.Spec : Prop :=
  ∀ n, P6743086029463387198.a n = A220084 n

end A220084

/-! ## A220084.P7189843594612362144

`A063493(n+1)-n^3`
-/

namespace A220084.P7189843594612362144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063493 (n + 1) - (n ^ 3 : ℤ)

end

end A220084.P7189843594612362144

namespace A220084

/-- `A063493(n+1)-n^3` -/
def P7189843594612362144.Spec : Prop :=
  ∀ n, P7189843594612362144.a n = A220084 n

end A220084

/-! ## A220084.P1711282350039764681

`A100186(n+1)-∑[n²]`
-/

namespace A220084.P1711282350039764681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100186 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220084.P1711282350039764681

namespace A220084

/-- `A100186(n+1)-∑[n²]` -/
def P1711282350039764681.Spec : Prop :=
  ∀ n, P1711282350039764681.a n = A220084 n

end A220084

/-! ## A220084.P13905543409672129982

`A035005(n+1)+∑[n+1]`
-/

namespace A220084.P13905543409672129982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035005 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220084.P13905543409672129982

namespace A220084

/-- `A035005(n+1)+∑[n+1]` -/
def P13905543409672129982.Spec : Prop :=
  ∀ n, P13905543409672129982.a n = A220084 n

end A220084

/-! ## A220084.P326256966569791330

`∑[A295906(n+1)-(n+1)]`
-/

namespace A220084.P326256966569791330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295906 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220084.P326256966569791330

namespace A220084

/-- `∑[A295906(n+1)-(n+1)]` -/
def P326256966569791330.Spec : Prop :=
  ∀ n, P326256966569791330.a n = A220084 n

end A220084

/-! ## A220084.P8560833199100393053

`A139757(n)-Δ[(n+1)*C(n+1, 3)]`
-/

namespace A220084.P8560833199100393053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A220084.P8560833199100393053

namespace A220084

/-- `A139757(n)-Δ[(n+1)*C(n+1, 3)]` -/
def P8560833199100393053.Spec : Prop :=
  ∀ n, P8560833199100393053.a n = A220084 n

end A220084

/-! ## A220084.P14523381414133636704

`A005902(n)+A005449(n)`
-/

namespace A220084.P14523381414133636704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n + A005449 n

end

end A220084.P14523381414133636704

namespace A220084

/-- `A005902(n)+A005449(n)` -/
def P14523381414133636704.Spec : Prop :=
  ∀ n, P14523381414133636704.a n = A220084 n

end A220084

/-!
# A220087: a(n) = 2^n - 27.

The programs for A220087, the canonical program `A220087.P7165188534906735596` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220087 has offset 0).

The definition of A220087 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-27` (program `A220087.P7165188534906735596`, by `A220087.P7165188534906735596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220087.P7165188534906735596

`2^n-27`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220087

/-- `2^n-27` -/
def P7165188534906735596.Spec : Prop :=
  ∀ n, P7165188534906735596.a n = A220087 n

theorem P7165188534906735596.correct : P7165188534906735596.Spec := by
  intro n
  simp only [A220087]

end A220087

/-!
# A220088: a(n) = 2^n - 81.

The programs for A220088, the canonical program `A220088.P3245559851668183588` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220088 has offset 0).

The definition of A220088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-81` (program `A220088.P3245559851668183588`, by `A220088.P3245559851668183588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220088.P3245559851668183588

`2^n-81`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220088

/-- `2^n-81` -/
def P3245559851668183588.Spec : Prop :=
  ∀ n, P3245559851668183588.a n = A220088 n

theorem P3245559851668183588.correct : P3245559851668183588.Spec := by
  intro n
  simp only [A220088]

end A220088

/-!
# A220089: a(n) = 2^n - 243.

The programs for A220089, the canonical program `A220089.P4531918674123575820` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220089 has offset 0).

The definition of A220089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-243` (program `A220089.P4531918674123575820`, by `A220089.P4531918674123575820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220089.P4531918674123575820

`2^n-243`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220089

/-- `2^n-243` -/
def P4531918674123575820.Spec : Prop :=
  ∀ n, P4531918674123575820.a n = A220089 n

theorem P4531918674123575820.correct : P4531918674123575820.Spec := by
  intro n
  simp only [A220089]

end A220089

/-!
# A220092: a(n) = ((2*n-1)!! + (-1)^((n-1)*(n-2)/2))/2.

The programs for A220092, there is no canonical definition to state claims against.
-/

/-! ## A220092.P8982878011181684550

`ceil((∏[Δ[n²]]+1-n%4)/2)`
-/

namespace A220092.P8982878011181684550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j + 1 - ((n % 4 : ℕ) : ℤ) : ℤ) : ℚ) / 2⌉

end

end A220092.P8982878011181684550

/-! ## A220092.P7745622247527080605

`A249349(n)+∑[A056594(n)]`
-/

namespace A220092.P7745622247527080605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249349 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220092.P7745622247527080605

/-! ## A220092.P14331970143494499722

`(A006882(2*n+1)-A087960(n+1))/2`
-/

namespace A220092.P14331970143494499722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (2 * n + 1) - A087960 (n + 1) : ℚ) / 2

end

end A220092.P14331970143494499722

/-! ## A220092.P10042093600022612368

`A193651(n)-A000035(A000096(n))`
-/

namespace A220092.P10042093600022612368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193651 n - A000035 (A000096 n).toNat

end

end A220092.P10042093600022612368

/-! ## A220092.P2138994323920555144

`A193651(n)-A000035(A014682(n))`
-/

namespace A220092.P2138994323920555144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193651 n - A000035 (A014682 n).toNat

end

end A220092.P2138994323920555144

/-!
# A220094: Sum of the n-digit base-ten numbers whose digits are nonzero.

The programs for A220094, the canonical program `A220094.P822438944444364447` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220094 has offset 1).

The definition of A220094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220094.P822438944444364447

`5*9^n*(10^(n+1)-1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220094

/-- `5*9^n*(10^(n+1)-1)` -/
def P822438944444364447.Spec : Prop :=
  ∀ n, P822438944444364447.a n = A220094 (n + 1)

theorem P822438944444364447.correct : P822438944444364447.Spec := by
  intro n
  simp only [A220094, Nat.add_sub_cancel]

end A220094

/-! ## A220094.P9360162075708231826

`Δ[A328356(n)]`
-/

namespace A220094.P9360162075708231826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220094.P9360162075708231826

namespace A220094

/-- `Δ[A328356(n)]` -/
def P9360162075708231826.Spec : Prop :=
  ∀ n, P9360162075708231826.a n = A220094 (n + 1)

end A220094

/-!
# A220095: Numbers k such that there are no primes between k - sqrt(k) and k.

The programs for A220095, there is no canonical definition to state claims against.
-/

/-! ## A220095.P17025211544913036928

`or(lcm(n, a(n-1)-n)+1+n, A109758(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A220095.P17025211544913036928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor (Int.lcm (n : ℤ) (a (n - 1) - (n : ℤ)) + 1 + n : ℤ) (A109758 (n + 1))

end

end A220095.P17025211544913036928

/-! ## A220095.P9748683129389875331

`∪[A195420(n+1), A133558(n)]`
-/

namespace A220095.P9748683129389875331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133558 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A220095.P9748683129389875331

/-! ## A220095.P9103438179204906346

`eq[A010051(n+1), A189024(n+1)]+1`
-/

namespace A220095.P9103438179204906346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A220095.P9103438179204906346

/-!
# A220096: a(1)=0, n-1 if n is prime, else largest proper divisor of n.

The programs for A220096, there is no canonical definition to state claims against.
-/

/-! ## A220096.P12219812574306343881

`ceil(n/A107286(n+1))`
-/

namespace A220096.P12219812574306343881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A107286 (n + 1) : ℚ)⌉

end

end A220096.P12219812574306343881

/-! ## A220096.P5994161365694765987

`A322982(n+1)%(n+1)`
-/

namespace A220096.P5994161365694765987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322982 (n + 1)) (n + 1 : ℤ)

end

end A220096.P5994161365694765987

/-! ## A220096.P5860685857129624712

`A117818(n+1)-A080339(n+1)`
-/

namespace A220096.P5860685857129624712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (n + 1) - A080339 (n + 1)

end

end A220096.P5860685857129624712

/-! ## A220096.P17778023707825609883

`gcd(A060681(n+1), A113523(n+1))`
-/

namespace A220096.P17778023707825609883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060681 (n + 1)) (A113523 (n + 1))

end

end A220096.P17778023707825609883

/-! ## A220096.P10559843903566699958

`ceil(n/A020639((n+1)/A006530(n+1)))`
-/

namespace A220096.P10559843903566699958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat : ℚ)⌉

end

end A220096.P10559843903566699958

/-! ## A220096.P6556772145166742134

`ceil(n/A020639((n+1)/A014963(n+1)))`
-/

namespace A220096.P6556772145166742134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat : ℚ)⌉

end

end A220096.P6556772145166742134

/-! ## A220096.P15658218083619212433

`A117818(n+1)-A174897(A117818(n+1))*A174897(n+1)`
-/

namespace A220096.P15658218083619212433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (n + 1) - A174897 (A117818 (n + 1)).toNat * A174897 (n + 1)

end

end A220096.P15658218083619212433

/-!
# A220097: Number of words on {1,1,2,2,3,3,...,n,n} avoiding the pattern 123.

The programs for A220097, there is no canonical definition to state claims against.
-/

/-! ## A220097.P17343652863275393380

`A059346(∑[4*n])`
-/

namespace A220097.P17343652863275393380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220097.P17343652863275393380

/-! ## A220097.P11592543765006420798

`A267479(∑[n+3])`
-/

namespace A220097.P11592543765006420798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267479 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220097.P11592543765006420798

/-! ## A220097.P1083619690241538734

`or(char[1], A267479(A055998(n+1)))`
-/

namespace A220097.P1083619690241538734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A267479 (A055998 (n + 1)).toNat)

end

end A220097.P1083619690241538734

/-! ## A220097.P6970197772482566338

`A267479(A141214(n))^A178334(n)`
-/

namespace A220097.P6970197772482566338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267479 (A141214 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A220097.P6970197772482566338

/-! ## A220097.P14117973066177358924

`gcd(A000038(n), A267479(A141214(n)))`
-/

namespace A220097.P14117973066177358924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A267479 (A141214 n).toNat)

end

end A220097.P14117973066177358924

/-!
# A220098: Manhattan distances between 2n and 1 in the double spiral with positive integers and 1 at the center.

The programs for A220098, the canonical program `A220098.P14603736137621403724` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220098 has offset 1).

The definition of A220098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128217, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A220098.P14603736137621403724

`A053615(A128217(n+2))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A220098

/-- `A053615(A128217(n+2))` -/
def P14603736137621403724.Spec : Prop :=
  ∀ n, P14603736137621403724.a n = A220098 (n + 1)

theorem P14603736137621403724.correct : P14603736137621403724.Spec := by
  intro n
  simp only [A220098, Nat.add_sub_cancel]

end A220098

/-! ## A220098.P16872858247728346492

`A053615(floor(floor((A000196((n+1)*8)+1)/2)²/2)+n+1)`
-/

namespace A220098.P16872858247728346492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (⌊(⌊(A000196 ((n + 1) * 8) + 1 : ℚ) / 2⌋ ^ 2 : ℚ) / 2⌋ + (n + 1 : ℤ)).toNat

end

end A220098.P16872858247728346492

namespace A220098

/-- `A053615(floor(floor((A000196((n+1)*8)+1)/2)²/2)+n+1)` -/
def P16872858247728346492.Spec : Prop :=
  ∀ n, P16872858247728346492.a n = A220098 (n + 1)

end A220098

/-! ## A220098.P1051188679512208404

`∑[(-1)^(comp[round(n²/8)]-n)]`
-/

namespace A220098.P1051188679512208404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220098.P1051188679512208404

namespace A220098

/-- `∑[(-1)^(comp[round(n²/8)]-n)]` -/
def P1051188679512208404.Spec : Prop :=
  ∀ n, P1051188679512208404.a n = (A220098 (n + 1) : ℚ)

end A220098

/-! ## A220098.P4569456894350851013

`abs(∑[(-1)^(floor(sqrt(8*n+1))%2)])`
-/

namespace A220098.P4569456894350851013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (Nat.sqrt (8 * n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A220098.P4569456894350851013

namespace A220098

/-- `abs(∑[(-1)^(floor(sqrt(8*n+1))%2)])` -/
def P4569456894350851013.Spec : Prop :=
  ∀ n, P4569456894350851013.a n = A220098 (n + 1)

end A220098

/-! ## A220098.P6694409355722479465

`a((n+1)²%comp[∑[n]])+1` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A220098.P6694409355722479465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a ((n + 1) ^ 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A220098.P6694409355722479465

namespace A220098

/-- `a((n+1)²%comp[∑[n]])+1` -/
def P6694409355722479465.Spec : Prop :=
  ∀ n, (P6694409355722479465.a n : ℤ) = A220098 (n + 1)

end A220098

/-! ## A220098.P220723795737472399

`A003984(comp[2*n²])`
-/

namespace A220098.P220723795737472399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A220098.P220723795737472399

namespace A220098

/-- `A003984(comp[2*n²])` -/
def P220723795737472399.Spec : Prop :=
  ∀ n, P220723795737472399.a n = A220098 (n + 1)

end A220098

/-! ## A220098.P8743324282567379387

`A319571(∑[char[∑[n]]+2])`
-/

namespace A220098.P8743324282567379387
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220098.P8743324282567379387

namespace A220098

/-- `A319571(∑[char[∑[n]]+2])` -/
def P8743324282567379387.Spec : Prop :=
  ∀ n, P8743324282567379387.a n = A220098 (n + 1)

end A220098

/-! ## A220098.P12748659783562752976

`abs(∑[(-1)^A194959(n+1)])`
-/

namespace A220098.P12748659783562752976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A194959 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A220098.P12748659783562752976

namespace A220098

/-- `abs(∑[(-1)^A194959(n+1)])` -/
def P12748659783562752976.Spec : Prop :=
  ∀ n, P12748659783562752976.a n = (A220098 (n + 1) : ℚ)

end A220098

/-! ## A220098.P12394108039035707231

`abs(∑[A015680(round(n/∑[char[∑[n]]]²))])`
-/

namespace A220098.P12394108039035707231
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015680 (SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A220098.P12394108039035707231

namespace A220098

/-- `abs(∑[A015680(round(n/∑[char[∑[n]]]²))])` -/
def P12394108039035707231.Spec : Prop :=
  ∀ n, P12394108039035707231.a n = A220098 (n + 1)

end A220098

/-! ## A220098.P14466332538834307667

`abs(∑[A052136(round(n/∑[char[∑[n]]]²))])`
-/

namespace A220098.P14466332538834307667
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052136 (SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A220098.P14466332538834307667

namespace A220098

/-- `abs(∑[A052136(round(n/∑[char[∑[n]]]²))])` -/
def P14466332538834307667.Spec : Prop :=
  ∀ n, P14466332538834307667.a n = A220098 (n + 1)

end A220098

