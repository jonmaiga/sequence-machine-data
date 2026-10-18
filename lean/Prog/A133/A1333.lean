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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A133300: Square array read along upward antidiagonals. S(n,m) is the number of domino tilings of an n-row and m-column checkerboard with a black upper-left square, where any vertical dominoes are allowed and horizontal dominoes must be placed so that the black square is on the left.

The programs for A133300, there is no canonical definition to state claims against.
-/

/-! ## A133300.P2585955204832020841

`A000030(A155998(n)^A119467(n))`
-/

namespace A133300.P2585955204832020841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A155998 n : ℚ) ^ (A119467 n : ℤ))).toNat

end

end A133300.P2585955204832020841

/-! ## A133300.P14438825063343553150

`A001221(A155998(n)^A119467(n)+1)`
-/

namespace A133300.P14438825063343553150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A155998 n : ℚ) ^ (A119467 n : ℤ) + 1)).toNat

end

end A133300.P14438825063343553150

/-! ## A133300.P4813527036367292552

`A000217(A155998(n)^A119467(n))%4`
-/

namespace A133300.P4813527036367292552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (SequenceMachineLib.roundAway ((A155998 n : ℚ) ^ (A119467 n : ℤ))).toNat) 4

end

end A133300.P4813527036367292552

/-! ## A133300.P6504363492502569070

`A072170(n)%A123285(A099390(n+1))`
-/

namespace A133300.P6504363492502569070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072170 n) (A123285 ((A099390 (n + 1)).toNat + 21))

end

end A133300.P6504363492502569070

/-! ## A133300.P11385015305475967907

`A319420(A099390(n+1)^A146093(n))`
-/

namespace A133300.P11385015305475967907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (SequenceMachineLib.roundAway ((A099390 (n + 1) : ℚ) ^ (A146093 n : ℤ))).toNat

end

end A133300.P11385015305475967907

/-!
# A133301: a(n) is the n-th pentagonal number which is the sum of two consecutive pentagonal numbers.

The programs for A133301, there is no canonical definition to state claims against.
-/

/-! ## A133301.P2028030316629031269

`C(3*A144941(n+1), 2)/3`
-/

namespace A133301.P2028030316629031269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * A144941 (n + 1)).toNat 2 : ℚ) / 3

end

end A133301.P2028030316629031269

/-!
# A133305: a(n) = (1/n)*Sum_{i=0..n-1} C(n,i)*C(n,i+1)*4^i*5^(n-i), a(0) = 1.

The programs for A133305, there is no canonical definition to state claims against.
-/

/-! ## A133305.P12043347577718014026

`A297899(∑[n])`
-/

namespace A133305.P12043347577718014026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297899 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133305.P12043347577718014026

/-! ## A133305.P9919665030461352421

`record[A297899(n)]`
-/

namespace A133305.P9919665030461352421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133305.P9919665030461352421

/-! ## A133305.P9291624449057366699

`or(1, A297899(C(n+1, 2)))`
-/

namespace A133305.P9291624449057366699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297899 (Nat.choose (n + 1) 2))

end

end A133305.P9291624449057366699

/-! ## A133305.P11365230488575774327

`or(1, A297899(n²-C(n, 2)))`
-/

namespace A133305.P11365230488575774327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297899 (n ^ 2 - Nat.choose n 2))

end

end A133305.P11365230488575774327

/-! ## A133305.P4685310780561562245

`or(1, A297899(A000217(n)))`
-/

namespace A133305.P4685310780561562245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297899 (A000217 n).toNat)

end

end A133305.P4685310780561562245

/-!
# A133306: a(n) = (1/n)*Sum_{i=0..n-1} C(n,i)*C(n,i+1)*5^i*6^(n-i), a(0)=1.

The programs for A133306, there is no canonical definition to state claims against.
-/

/-! ## A133306.P5770610996328221233

`A131846(n+1)+floor(A131846(n+1)/5)`
-/

namespace A133306.P5770610996328221233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131846 (n + 1) + ⌊(A131846 (n + 1) : ℚ) / 5⌋

end

end A133306.P5770610996328221233

/-! ## A133306.P10070889688170909049

`A107702(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A133306.P10070889688170909049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133306.P10070889688170909049

/-! ## A133306.P3538312295360460428

`A107702(A055998(n+4)-3)`
-/

namespace A133306.P3538312295360460428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (A055998 (n + 4) - 3).toNat

end

end A133306.P3538312295360460428

/-!
# A133307: a(n) = (1/n)*Sum_{i=0..n-1} C(n,i)*C(n,i+1)*6^i*7^(n-i), a(0)=1.

The programs for A133307, there is no canonical definition to state claims against.
-/

/-! ## A133307.P15516323150233176284

`A107702(eq[6, A025581(n)])`
-/

namespace A133307.P15516323150233176284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133307.P15516323150233176284

/-!
# A133310: a(3n) = 2n+1, a(3n+1) = 2n+2, a(3n+2) = 2n+1.

The programs for A133310, the canonical program `A133310.P6888286461156837281` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133310 has offset 0).

The definition of A133310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133310.P6888286461156837281

`a(n-3)+2` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133310

/-- `a(n-3)+2` -/
def P6888286461156837281.Spec : Prop :=
  ∀ n, (P6888286461156837281.a n : ℤ) = A133310 n

theorem P6888286461156837281.correct : P6888286461156837281.Spec := by
  intro n
  simp only [A133310]

end A133310

/-! ## A133310.P4004866385046319529

`∑[3-2^(n%3)]-1`
-/

namespace A133310.P4004866385046319529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 ^ (n % 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133310.P4004866385046319529

namespace A133310

/-- `∑[3-2^(n%3)]-1` -/
def P4004866385046319529.Spec : Prop :=
  ∀ n, P4004866385046319529.a n = A133310 n

end A133310

/-! ## A133310.P9949807608182110852

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A133310.P9949807608182110852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133310.P9949807608182110852

namespace A133310

/-- `∑[floor(a(n-3))]` -/
def P9949807608182110852.Spec : Prop :=
  ∀ n, P9949807608182110852.a n = A133310 n

end A133310

/-! ## A133310.P7393773470613651771

`2-floor(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A133310.P7393773470613651771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  2 - (-a (n - 3))

end

end A133310.P7393773470613651771

namespace A133310

/-- `2-floor(-a(n-3))` -/
def P7393773470613651771.Spec : Prop :=
  ∀ n, P7393773470613651771.a n = A133310 n

end A133310

/-! ## A133310.P1229183246897207202

`2-ceil(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A133310.P1229183246897207202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  2 - (-a (n - 3))

end

end A133310.P1229183246897207202

namespace A133310

/-- `2-ceil(-a(n-3))` -/
def P1229183246897207202.Spec : Prop :=
  ∀ n, P1229183246897207202.a n = A133310 n

end A133310

/-! ## A133310.P9452910001073226763

`2-round(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A133310.P9452910001073226763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  2 - (-a (n - 3))

end

end A133310.P9452910001073226763

namespace A133310

/-- `2-round(-a(n-3))` -/
def P9452910001073226763.Spec : Prop :=
  ∀ n, P9452910001073226763.a n = A133310 n

end A133310

/-! ## A133310.P8393006786652813398

`ogf((1+x-x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A133310.P8393006786652813398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, -1, 0, -1, 1] n

end

end A133310.P8393006786652813398

namespace A133310

/-- `ogf((1+x-x^2+x^3)/(1-x-x^3+x^4))` -/
def P8393006786652813398.Spec : Prop :=
  ∀ n, P8393006786652813398.a n = A133310 n

end A133310

/-! ## A133310.P15755722754105884548

`∑[3-gcd(4, (n+1)%3)]-1`
-/

namespace A133310.P15755722754105884548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 4 ((n + 1) % 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133310.P15755722754105884548

namespace A133310

/-- `∑[3-gcd(4, (n+1)%3)]-1` -/
def P15755722754105884548.Spec : Prop :=
  ∀ n, P15755722754105884548.a n = A133310 n

end A133310

/-! ## A133310.P18425588644588439900

`4-(4/2-a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A133310.P18425588644588439900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 3))

end

end A133310.P18425588644588439900

namespace A133310

/-- `4-(4/2-a(n-3))` -/
def P18425588644588439900.Spec : Prop :=
  ∀ n, P18425588644588439900.a n = (A133310 n : ℚ)

end A133310

/-! ## A133310.P3385150004094900039

`3-(1-a(n-3))%n` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A133310.P3385150004094900039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  3 - Int.tmod (1 - a (n - 3)) (n : ℤ)

end

end A133310.P3385150004094900039

namespace A133310

/-- `3-(1-a(n-3))%n` -/
def P3385150004094900039.Spec : Prop :=
  ∀ n, P3385150004094900039.a n = A133310 n

end A133310

/-! ## A133310.P11209842036791608054

`∑[3-a(a(n-2))]-n` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A133310.P11209842036791608054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  3 - f1 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A133310.P11209842036791608054

namespace A133310

/-- `∑[3-a(a(n-2))]-n` -/
def P11209842036791608054.Spec : Prop :=
  ∀ n, P11209842036791608054.a n = A133310 n

end A133310

/-! ## A133310.P8210659694910670315

`n-floor(n-2-a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A133310.P8210659694910670315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  (n : ℤ) - ((n : ℤ) - 2 - a (n - 3))

end

end A133310.P8210659694910670315

namespace A133310

/-- `n-floor(n-2-a(n-3))` -/
def P8210659694910670315.Spec : Prop :=
  ∀ n, P8210659694910670315.a n = A133310 n

end A133310

/-! ## A133310.P6306743151025113415

`2*n-a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A133310.P6306743151025113415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * n : ℤ) - a (n - 1) - a (n - 2)

end

end A133310.P6306743151025113415

namespace A133310

/-- `2*n-a(n-1)-a(n-2)` -/
def P6306743151025113415.Spec : Prop :=
  ∀ n, P6306743151025113415.a n = A133310 n

end A133310

/-! ## A133310.P5373448244754132408

`n-(a(n-1)-(n-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A133310.P5373448244754132408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - (a (n - 1) - ((n : ℤ) - a (n - 2)))

end

end A133310.P5373448244754132408

namespace A133310

/-- `n-(a(n-1)-(n-a(n-2)))` -/
def P5373448244754132408.Spec : Prop :=
  ∀ n, P5373448244754132408.a n = A133310 n

end A133310

/-! ## A133310.P9314482138926648719

`eq[and(n+3, n-2), and(n, n+3)]-(2*n+1)`
-/

namespace A133310.P9314482138926648719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) ((n : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n : ℤ) - (2 * n + 1 : ℤ)

end

end A133310.P9314482138926648719

namespace A133310

/-- `eq[and(n+3, n-2), and(n, n+3)]-(2*n+1)` -/
def P9314482138926648719.Spec : Prop :=
  ∀ n, P9314482138926648719.a n = A133310 n

end A133310

/-! ## A133310.P13887006083265381689

`∑[2-A101000(n)]-1`
-/

namespace A133310.P13887006083265381689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A101000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133310.P13887006083265381689

namespace A133310

/-- `∑[2-A101000(n)]-1` -/
def P13887006083265381689.Spec : Prop :=
  ∀ n, P13887006083265381689.a n = A133310 n

end A133310

/-! ## A133310.P1829281748465782843

`∑[2-A069705(n)]+n`
-/

namespace A133310.P1829281748465782843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A069705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A133310.P1829281748465782843

namespace A133310

/-- `∑[2-A069705(n)]+n` -/
def P1829281748465782843.Spec : Prop :=
  ∀ n, P1829281748465782843.a n = A133310 n

end A133310

/-! ## A133310.P3382283884577474427

`A047610(n+1)-2*n`
-/

namespace A133310.P3382283884577474427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1) - (2 * n : ℤ)

end

end A133310.P3382283884577474427

namespace A133310

/-- `A047610(n+1)-2*n` -/
def P3382283884577474427.Spec : Prop :=
  ∀ n, P3382283884577474427.a n = A133310 n

end A133310

/-! ## A133310.P5403229130892064949

`n+1-A261557(n)/2`
-/

namespace A133310.P5403229130892064949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A261557 n : ℚ) / 2

end

end A133310.P5403229130892064949

namespace A133310

/-- `n+1-A261557(n)/2` -/
def P5403229130892064949.Spec : Prop :=
  ∀ n, P5403229130892064949.a n = (A133310 n : ℚ)

end A133310

/-! ## A133310.P9360760682434858989

`A047440(n+1)-Δ[n²]`
-/

namespace A133310.P9360760682434858989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047440 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A133310.P9360760682434858989

namespace A133310

/-- `A047440(n+1)-Δ[n²]` -/
def P9360760682434858989.Spec : Prop :=
  ∀ n, P9360760682434858989.a n = A133310 n

end A133310

/-!
# A133311: The nonnegative integers reordered in groups of 5 even numbers followed by 5 odd numbers.

The programs for A133311, the canonical program `A133311.P8490005249360119845` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133311 has offset 0).

The definition of A133311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133311.P8490005249360119845

`a(n-10)+10` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6, a(4)=8, a(5)=1, a(6)=3, a(7)=5, a(8)=7, a(9)=9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133311

/-- `a(n-10)+10` -/
def P8490005249360119845.Spec : Prop :=
  ∀ n, (P8490005249360119845.a n : ℤ) = A133311 n

theorem P8490005249360119845.correct : P8490005249360119845.Spec := by
  intro n
  simp only [A133311]

end A133311

/-! ## A133311.P13996250402891366055

`char[comp[2*n-n%5]]+(n+5)%10-5+n`
-/

namespace A133311.P13996250402891366055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 5 : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((((n + 5) % 10 : ℕ) : ℤ) - 5 + (n : ℤ))

end

end A133311.P13996250402891366055

namespace A133311

/-- `char[comp[2*n-n%5]]+(n+5)%10-5+n` -/
def P13996250402891366055.Spec : Prop :=
  ∀ n, P13996250402891366055.a n = A133311 n

end A133311

/-! ## A133311.P9386634760060811466

`A065164(A065186(n+4))-4`
-/

namespace A133311.P9386634760060811466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A065186 (n + 4)).toNat - 4

end

end A133311.P9386634760060811466

namespace A133311

/-- `A065164(A065186(n+4))-4` -/
def P9386634760060811466.Spec : Prop :=
  ∀ n, P9386634760060811466.a n = A133311 n

end A133311

/-! ## A133311.P6124305331937869509

`A065168(A065187(3*n+5))-(2*n+5)`
-/

namespace A133311.P6124305331937869509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065168 (A065187 (3 * n + 5)).toNat - (2 * n + 5 : ℤ)

end

end A133311.P6124305331937869509

namespace A133311

/-- `A065168(A065187(3*n+5))-(2*n+5)` -/
def P6124305331937869509.Spec : Prop :=
  ∀ n, P6124305331937869509.a n = A133311 n

end A133311

/-! ## A133311.P8368020934133185157

`A076314(A008554(2*n+1))`
-/

namespace A133311.P8368020934133185157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A008554 (2 * n + 1)).toNat

end

end A133311.P8368020934133185157

namespace A133311

/-- `A076314(A008554(2*n+1))` -/
def P8368020934133185157.Spec : Prop :=
  ∀ n, P8368020934133185157.a n = A133311 n

end A133311

/-! ## A133311.P5621899886014006980

`A004092(n)-∑{digits}[A081594(A051022(n)), #]+n`
-/

namespace A133311.P5621899886014006980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (A051022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)

end

end A133311.P5621899886014006980

namespace A133311

/-- `A004092(n)-∑{digits}[A081594(A051022(n)), #]+n` -/
def P5621899886014006980.Spec : Prop :=
  ∀ n, P5621899886014006980.a n = A133311 n

end A133311

/-! ## A133311.P11646598656550359602

`A004092(2*n-n)-(∑{digits}[A081594(A051022(n)), #]-n)`
-/

namespace A133311.P11646598656550359602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (A051022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (2 * n - n) - (((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))

end

end A133311.P11646598656550359602

namespace A133311

/-- `A004092(2*n-n)-(∑{digits}[A081594(A051022(n)), #]-n)` -/
def P11646598656550359602.Spec : Prop :=
  ∀ n, P11646598656550359602.a n = A133311 n

end A133311

/-! ## A133311.P7190556729519092778

`A169933(n)+A169910(n)%2`
-/

namespace A133311.P7190556729519092778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169933 n + Int.tmod (A169910 n) 2

end

end A133311.P7190556729519092778

namespace A133311

/-- `A169933(n)+A169910(n)%2` -/
def P7190556729519092778.Spec : Prop :=
  ∀ n, P7190556729519092778.a n = A133311 n

end A133311

/-! ## A133311.P11134995383957638535

`A169910(n)+n-A249873(n)`
-/

namespace A133311.P11134995383957638535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169910 n + ((n : ℤ) - A249873 n)

end

end A133311.P11134995383957638535

namespace A133311

/-- `A169910(n)+n-A249873(n)` -/
def P11134995383957638535.Spec : Prop :=
  ∀ n, P11134995383957638535.a n = A133311 n

end A133311

/-!
# A133313: Primes p such that 3p-2 and 3p+2 are primes (see A125272) and its decimal representation finishes with 3.

The programs for A133313, the canonical program `A133313.P17662725132781942349` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133313 has offset 1).

The definition of A133313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133313.P17662725132781942349

`p?[ceil(A289353(n+1)/3)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133313

/-- `p?[ceil(A289353(n+1)/3)]` -/
def P17662725132781942349.Spec : Prop :=
  ∀ n, P17662725132781942349.a n = A133313 (n + 1)

theorem P17662725132781942349.correct : P17662725132781942349.Spec := by
  intro n
  simp only [A133313, Nat.add_sub_cancel]

end A133313

/-! ## A133313.P629631444068248094

`∩[A030431(n+1), A125272(n+1)]`
-/

namespace A133313.P629631444068248094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P629631444068248094

namespace A133313

/-- `∩[A030431(n+1), A125272(n+1)]` -/
def P629631444068248094.Spec : Prop :=
  ∀ n, (P629631444068248094.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P9306120940582475962

`∩[A030431(n+1), A157834(n+1)]`
-/

namespace A133313.P9306120940582475962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P9306120940582475962

namespace A133313

/-- `∩[A030431(n+1), A157834(n+1)]` -/
def P9306120940582475962.Spec : Prop :=
  ∀ n, (P9306120940582475962.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P4729880566899433379

`∩[A045429(n+1), A125272(n+1)]`
-/

namespace A133313.P4729880566899433379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P4729880566899433379

namespace A133313

/-- `∩[A045429(n+1), A125272(n+1)]` -/
def P4729880566899433379.Spec : Prop :=
  ∀ n, (P4729880566899433379.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P11664436653938704959

`∩[A045435(n+1), A125272(n+1)]`
-/

namespace A133313.P11664436653938704959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P11664436653938704959

namespace A133313

/-- `∩[A045435(n+1), A125272(n+1)]` -/
def P11664436653938704959.Spec : Prop :=
  ∀ n, (P11664436653938704959.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P14996246117122298940

`∩[A045429(n+1), A157834(n+1)]`
-/

namespace A133313.P14996246117122298940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P14996246117122298940

namespace A133313

/-- `∩[A045429(n+1), A157834(n+1)]` -/
def P14996246117122298940.Spec : Prop :=
  ∀ n, (P14996246117122298940.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P5236257060908763852

`∩[A045435(n+1), A157834(n+1)]`
-/

namespace A133313.P5236257060908763852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P5236257060908763852

namespace A133313

/-- `∩[A045435(n+1), A157834(n+1)]` -/
def P5236257060908763852.Spec : Prop :=
  ∀ n, (P5236257060908763852.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P16406267666037911835

`∩[A004617(n+1), A125272(n+1)]`
-/

namespace A133313.P16406267666037911835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P16406267666037911835

namespace A133313

/-- `∩[A004617(n+1), A125272(n+1)]` -/
def P16406267666037911835.Spec : Prop :=
  ∀ n, (P16406267666037911835.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P18376970199449173695

`∩[A045428(n+1), A125272(n+1)]`
-/

namespace A133313.P18376970199449173695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P18376970199449173695

namespace A133313

/-- `∩[A045428(n+1), A125272(n+1)]` -/
def P18376970199449173695.Spec : Prop :=
  ∀ n, (P18376970199449173695.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P16449093649410409236

`∩[A045428(n+1), A157834(n+1)]`
-/

namespace A133313.P16449093649410409236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P16449093649410409236

namespace A133313

/-- `∩[A045428(n+1), A157834(n+1)]` -/
def P16449093649410409236.Spec : Prop :=
  ∀ n, (P16449093649410409236.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P16459916437563297520

`∩[A125272(n+1), A017305(n)]`
-/

namespace A133313.P16459916437563297520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P16459916437563297520

namespace A133313

/-- `∩[A125272(n+1), A017305(n)]` -/
def P16459916437563297520.Spec : Prop :=
  ∀ n, (P16459916437563297520.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P6859879025029317028

`∩[A125272(n+1), A277590(n+1)]`
-/

namespace A133313.P6859879025029317028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P6859879025029317028

namespace A133313

/-- `∩[A125272(n+1), A277590(n+1)]` -/
def P6859879025029317028.Spec : Prop :=
  ∀ n, (P6859879025029317028.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P14718565183266530670

`filter[A125272(n+1), A185706(#)]`
-/

namespace A133313.P14718565183266530670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A133313.P14718565183266530670

namespace A133313

/-- `filter[A125272(n+1), A185706(#)]` -/
def P14718565183266530670.Spec : Prop :=
  ∀ n, P14718565183266530670.a n = A133313 (n + 1)

end A133313

/-! ## A133313.P10719307779625216355

`filter[A157834(n+1), A185706(#)]`
-/

namespace A133313.P10719307779625216355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A133313.P10719307779625216355

namespace A133313

/-- `filter[A157834(n+1), A185706(#)]` -/
def P10719307779625216355.Spec : Prop :=
  ∀ n, P10719307779625216355.a n = A133313 (n + 1)

end A133313

/-! ## A133313.P6237807487778997125

`∩[A125272(n+1), A016885(n)]`
-/

namespace A133313.P6237807487778997125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P6237807487778997125

namespace A133313

/-- `∩[A125272(n+1), A016885(n)]` -/
def P6237807487778997125.Spec : Prop :=
  ∀ n, (P6237807487778997125.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P5061659377611301227

`∩[A125272(n+1), A075326(n)]`
-/

namespace A133313.P5061659377611301227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P5061659377611301227

namespace A133313

/-- `∩[A125272(n+1), A075326(n)]` -/
def P5061659377611301227.Spec : Prop :=
  ∀ n, (P5061659377611301227.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P17037935566127037634

`∩[A125272(n+1), A016873(n)+1]`
-/

namespace A133313.P17037935566127037634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P17037935566127037634

namespace A133313

/-- `∩[A125272(n+1), A016873(n)+1]` -/
def P17037935566127037634.Spec : Prop :=
  ∀ n, (P17037935566127037634.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P1572435179517587340

`∩[A109474(n+1), A125272(n+1)]`
-/

namespace A133313.P1572435179517587340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P1572435179517587340

namespace A133313

/-- `∩[A109474(n+1), A125272(n+1)]` -/
def P1572435179517587340.Spec : Prop :=
  ∀ n, (P1572435179517587340.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P10159434077855530496

`∩[A125272(n+1), A235089(n+1)]`
-/

namespace A133313.P10159434077855530496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P10159434077855530496

namespace A133313

/-- `∩[A125272(n+1), A235089(n+1)]` -/
def P10159434077855530496.Spec : Prop :=
  ∀ n, (P10159434077855530496.a n : ℤ) = A133313 (n + 1)

end A133313

/-! ## A133313.P17197532325231542446

`∩[A125272(n+1), A268044(n+1)]`
-/

namespace A133313.P17197532325231542446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133313.P17197532325231542446

namespace A133313

/-- `∩[A125272(n+1), A268044(n+1)]` -/
def P17197532325231542446.Spec : Prop :=
  ∀ n, (P17197532325231542446.a n : ℤ) = A133313 (n + 1)

end A133313

/-!
# A133315: Positive discriminants of orders of quadratic fields with class number 1.

The programs for A133315, there is no canonical definition to state claims against.
-/

/-! ## A133315.P6951819893889213462

`eq[char[n*A004086(n)], A284609(n+1)]`
-/

namespace A133315.P6951819893889213462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004086 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A133315.P6951819893889213462

/-! ## A133315.P13664637315043212873

`record[A079896(n+1)/A133707(A262027(n+1))]`
-/

namespace A133315.P13664637315043212873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079896 (n + 1) : ℚ) / (A133707 (A262027 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133315.P13664637315043212873

/-! ## A133315.P17137883746419051685

`eq[A062892(n), A319951((n+1)*and(2, n))]`
-/

namespace A133315.P17137883746419051685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 ((n + 1) * Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133315.P17137883746419051685

/-! ## A133315.P3982134957944371997

`eq[A000096(A284609(n+1)), A062892(n)]`
-/

namespace A133315.P3982134957944371997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A284609 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133315.P3982134957944371997

/-! ## A133315.P9180385304948992561

`A079896(comp[A121296(n+3)-A145545(3*(n+1))])`
-/

namespace A133315.P9180385304948992561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121296 (n + 3 + 10) - A145545 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A133315.P9180385304948992561

/-!
# A133316: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n/(1+x)^(n^2).

The programs for A133316, there is no canonical definition to state claims against.
-/

/-! ## A133316.P11043559863628894900

`A000010(record[A121281(n)]+2^(A298972(n)+1))/2`
-/

namespace A133316.P11043559863628894900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (2 : ℚ) ^ (A298972 n + 1 : ℤ))).toNat : ℚ) / 2

end

end A133316.P11043559863628894900

/-! ## A133316.P18203661464261487076

`A090735(∑[n^n]+1)`
-/

namespace A133316.P18203661464261487076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090735 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A133316.P18203661464261487076

/-!
# A133317: Dimensions of certain Lie algebra (see reference for precise definition).

The programs for A133317, the canonical program `A133317.P16361294360985852769` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133317 has offset 0).

The definition of A133317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133317.P16361294360985852769

`Δ[C(n+4, 5)²]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133317

/-- `Δ[C(n+4, 5)²]` -/
def P16361294360985852769.Spec : Prop :=
  ∀ n, P16361294360985852769.a n = A133317 n

theorem P16361294360985852769.correct : P16361294360985852769.Spec := by
  intro n
  simp only [A133317]

end A133317

/-! ## A133317.P6094264240820842513

`Δ[C(n+4, 5)^2]`
-/

namespace A133317.P6094264240820842513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 5 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A133317.P6094264240820842513

namespace A133317

/-- `Δ[C(n+4, 5)^2]` -/
def P6094264240820842513.Spec : Prop :=
  ∀ n, P6094264240820842513.a n = A133317 n

theorem P6094264240820842513.correct : P6094264240820842513.Spec := by
  intro n
  simp only [A133317, Nat.add_sub_cancel, A133317.P6094264240820842513.f1, A133317.P6094264240820842513.a, A133317.P16361294360985852769.f1, A133317.P16361294360985852769.a, SequenceMachineLib.memo_apply]

end A133317

/-! ## A133317.P14253407687414408302

`∑[∑[∑[(n+1)²]]]*∑[∑[∑[n+1]]]`
-/

namespace A133317.P14253407687414408302
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A133317.P14253407687414408302

namespace A133317

/-- `∑[∑[∑[(n+1)²]]]*∑[∑[∑[n+1]]]` -/
def P14253407687414408302.Spec : Prop :=
  ∀ n, (P14253407687414408302.a n : ℤ) = A133317 n

end A133317

/-! ## A133317.P11262194663602127068

`Δ[(1-A323228(n))²]`
-/

namespace A133317.P11262194663602127068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A323228 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133317.P11262194663602127068

namespace A133317

/-- `Δ[(1-A323228(n))²]` -/
def P11262194663602127068.Spec : Prop :=
  ∀ n, P11262194663602127068.a n = A133317 n

end A133317

/-! ## A133317.P8941711450783495951

`Δ[(A277935(n+1)/2)²]`
-/

namespace A133317.P8941711450783495951
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A277935 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133317.P8941711450783495951

namespace A133317

/-- `Δ[(A277935(n+1)/2)²]` -/
def P8941711450783495951.Spec : Prop :=
  ∀ n, P8941711450783495951.a n = (A133317 n : ℚ)

end A133317

/-! ## A133317.P8100150675795229653

`Δ[(1-A145127(n)+n)²]`
-/

namespace A133317.P8100150675795229653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A145127 n + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133317.P8100150675795229653

namespace A133317

/-- `Δ[(1-A145127(n)+n)²]` -/
def P8100150675795229653.Spec : Prop :=
  ∀ n, P8100150675795229653.a n = A133317 n

end A133317

/-! ## A133317.P6738857350742059994

`Δ[(A154322(n+1)-(n+2))²]`
-/

namespace A133317.P6738857350742059994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154322 (n + 1) - (n + 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133317.P6738857350742059994

namespace A133317

/-- `Δ[(A154322(n+1)-(n+2))²]` -/
def P6738857350742059994.Spec : Prop :=
  ∀ n, P6738857350742059994.a n = A133317 n

end A133317

/-! ## A133317.P2507859720847951304

`record[Δ[(C(n, 5)-char[1])²]]`
-/

namespace A133317.P2507859720847951304
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 5 : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133317.P2507859720847951304

namespace A133317

/-- `record[Δ[(C(n, 5)-char[1])²]]` -/
def P2507859720847951304.Spec : Prop :=
  ∀ n, P2507859720847951304.a n = A133317 n

end A133317

/-! ## A133317.P17742596849502879964

`record[Δ[(C(n, 5)-char[1])^2]]`
-/

namespace A133317.P17742596849502879964
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 5 : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133317.P17742596849502879964

namespace A133317

/-- `record[Δ[(C(n, 5)-char[1])^2]]` -/
def P17742596849502879964.Spec : Prop :=
  ∀ n, P17742596849502879964.a n = A133317 n

end A133317

/-! ## A133317.P7833252587368256086

`record[A213548(n+1)*A213561(n+1)]`
-/

namespace A133317.P7833252587368256086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) * A213561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133317.P7833252587368256086

namespace A133317

/-- `record[A213548(n+1)*A213561(n+1)]` -/
def P7833252587368256086.Spec : Prop :=
  ∀ n, P7833252587368256086.a n = A133317 n

end A133317

/-! ## A133317.P11850826744242886329

`record[A213548(n+1)*A213564(n+1)]`
-/

namespace A133317.P11850826744242886329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) * A213564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133317.P11850826744242886329

namespace A133317

/-- `record[A213548(n+1)*A213564(n+1)]` -/
def P11850826744242886329.Spec : Prop :=
  ∀ n, P11850826744242886329.a n = A133317 n

end A133317

/-! ## A133317.P6413212523727161660

`record[A213550(n+1)*A213561(n+1)]`
-/

namespace A133317.P6413212523727161660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (n + 1) * A213561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133317.P6413212523727161660

namespace A133317

/-- `record[A213550(n+1)*A213561(n+1)]` -/
def P6413212523727161660.Spec : Prop :=
  ∀ n, P6413212523727161660.a n = A133317 n

end A133317

/-! ## A133317.P4622819750418902773

`record[A213550(n+1)*A213564(n+1)]`
-/

namespace A133317.P4622819750418902773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (n + 1) * A213564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133317.P4622819750418902773

namespace A133317

/-- `record[A213550(n+1)*A213564(n+1)]` -/
def P4622819750418902773.Spec : Prop :=
  ∀ n, P4622819750418902773.a n = A133317 n

end A133317

/-!
# A133321: Inserting any (identical) digit between adjacent digits of an odd semiprime k never yields a prime.

The programs for A133321, there is no canonical definition to state claims against.
-/

/-! ## A133321.P6252069781564714891

`5*p?[A091917(n)]`
-/

namespace A133321.P6252069781564714891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133321.P6252069781564714891

/-! ## A133321.P10386507116611276853

`5*p?[A098158(n)]`
-/

namespace A133321.P10386507116611276853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133321.P10386507116611276853

/-! ## A133321.P5904734358759460384

`5*p?[A103327(n)]`
-/

namespace A133321.P5904734358759460384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133321.P5904734358759460384

/-!
# A133322: Centered square numbers that are prime powers of the form (4n+1)^k.

The programs for A133322, there is no canonical definition to state claims against.
-/

/-! ## A133322.P8148586105484220401

`record[A330741((2*n-3)²+1)]`
-/

namespace A133322.P8148586105484220401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (((2 * n : ℤ) - 3) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133322.P8148586105484220401

/-! ## A133322.P5552334055447944057

`record[A034699((2*(n+1)+1)²+1)]`
-/

namespace A133322.P5552334055447944057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 ((2 * (n + 1) + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133322.P5552334055447944057

/-! ## A133322.P16712871303051064623

`record[A008475(round(2*(n+2)/acot(n+1)))]`
-/

namespace A133322.P16712871303051064623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.roundAway ((2 * (n + 2) : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133322.P16712871303051064623

/-! ## A133322.P14525573576743960617

`record[A008475(abs(n+1-C(2*(n+2), 2)))]`
-/

namespace A133322.P14525573576743960617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 |(n + 1 : ℤ) - (Nat.choose (2 * (n + 2)) 2 : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133322.P14525573576743960617

/-! ## A133322.P2917903226352908433

`filter[A001844(n), A069513(#)]`
-/

namespace A133322.P2917903226352908433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A133322.P2917903226352908433

/-!
# A133323: Hex (or centered hexagonal) numbers that are prime powers of the form (6n+1)^k.

The programs for A133323, there is no canonical definition to state claims against.
-/

/-! ## A133323.P9491685972686107322

`record[A008475(Δ[(n+1)^3])]`
-/

namespace A133323.P9491685972686107322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133323.P9491685972686107322

/-! ## A133323.P1082288321715189976

`filter[A003215(n), A069513(#)]`
-/

namespace A133323.P1082288321715189976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A133323.P1082288321715189976

/-! ## A133323.P17337813178912177142

`filter[A003215(n), A211487(#)]`
-/

namespace A133323.P17337813178912177142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A133323.P17337813178912177142

/-! ## A133323.P10279728580356259891

`filter[A003215(n), A302777(#)]`
-/

namespace A133323.P10279728580356259891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A133323.P10279728580356259891

/-! ## A133323.P9271430447073794366

`filter[A003215(n), A340373(#)]`
-/

namespace A133323.P9271430447073794366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A133323.P9271430447073794366

/-!
# A133325: Numbers such that 2*X^2-82 is a square.

The programs for A133325, the canonical program `A133325.P15127350892995211202` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133325 has offset 1).

The definition of A133325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133325.P15127350892995211202

`A077447(n+1)+A077443(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133325

/-- `A077447(n+1)+A077443(n+1)` -/
def P15127350892995211202.Spec : Prop :=
  ∀ n, P15127350892995211202.a n = A133325 (n + 1)

theorem P15127350892995211202.correct : P15127350892995211202.Spec := by
  intro n
  simp only [A133325, Nat.add_sub_cancel]

end A133325

/-! ## A133325.P1114293160496923773

`or(1, A215936(n)+A069306(n+2))`
-/

namespace A133325.P1114293160496923773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A215936 n + A069306 (n + 2))

end

end A133325.P1114293160496923773

namespace A133325

/-- `or(1, A215936(n)+A069306(n+2))` -/
def P1114293160496923773.Spec : Prop :=
  ∀ n, P1114293160496923773.a n = A133325 (n + 1)

end A133325

/-! ## A133325.P519203345053576603

`A077443(n+1)+2*A217975(n+1)`
-/

namespace A133325.P519203345053576603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (n + 1) + 2 * A217975 (n + 1)

end

end A133325.P519203345053576603

namespace A133325

/-- `A077443(n+1)+2*A217975(n+1)` -/
def P519203345053576603.Spec : Prop :=
  ∀ n, P519203345053576603.a n = A133325 (n + 1)

end A133325

/-! ## A133325.P8140253933383585813

`A077443(n+2)+2*A215936(n+1)`
-/

namespace A133325.P8140253933383585813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (n + 2) + 2 * A215936 (n + 1)

end

end A133325.P8140253933383585813

namespace A133325

/-- `A077443(n+2)+2*A215936(n+1)` -/
def P8140253933383585813.Spec : Prop :=
  ∀ n, P8140253933383585813.a n = A133325 (n + 1)

end A133325

/-! ## A133325.P14705730795427018855

`A069306(n+2)+A215936(n)+A000007(n)`
-/

namespace A133325.P14705730795427018855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069306 (n + 2) + (A215936 n + A000007 n)

end

end A133325.P14705730795427018855

namespace A133325

/-- `A069306(n+2)+A215936(n)+A000007(n)` -/
def P14705730795427018855.Spec : Prop :=
  ∀ n, P14705730795427018855.a n = A133325 (n + 1)

end A133325

/-! ## A133325.P6747140531394058191

`A006452(n+1)+A156066(n+1)+A077447(n+1)`
-/

namespace A133325.P6747140531394058191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) + (A156066 (n + 1) + A077447 (n + 1))

end

end A133325.P6747140531394058191

namespace A133325

/-- `A006452(n+1)+A156066(n+1)+A077447(n+1)` -/
def P6747140531394058191.Spec : Prop :=
  ∀ n, P6747140531394058191.a n = A133325 (n + 1)

end A133325

/-! ## A133325.P8785186897228931926

`A077447(n+1)+A077447(n+2)-A077446(n+2)`
-/

namespace A133325.P8785186897228931926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077447 (n + 1) + (A077447 (n + 2) - A077446 (n + 2))

end

end A133325.P8785186897228931926

namespace A133325

/-- `A077447(n+1)+A077447(n+2)-A077446(n+2)` -/
def P8785186897228931926.Spec : Prop :=
  ∀ n, P8785186897228931926.a n = A133325 (n + 1)

end A133325

/-! ## A133325.P11516782433606310393

`A000302(n)%2+A215936(n)+A069306(n+2)`
-/

namespace A133325.P11516782433606310393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000302 n) 2 + (A215936 n + A069306 (n + 2))

end

end A133325.P11516782433606310393

namespace A133325

/-- `A000302(n)%2+A215936(n)+A069306(n+2)` -/
def P11516782433606310393.Spec : Prop :=
  ∀ n, P11516782433606310393.a n = A133325 (n + 1)

end A133325

/-!
# A133326: Numbers n such that 2*n^2 + 41 is a square.

The programs for A133326, the canonical program `A133326.P14584573323275426035` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133326 has offset 1).

The definition of A133326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133326.P14584573323275426035

`2*A276599(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133326

/-- `2*A276599(n+1)` -/
def P14584573323275426035.Spec : Prop :=
  ∀ n, P14584573323275426035.a n = A133326 (n + 1)

theorem P14584573323275426035.correct : P14584573323275426035.Spec := by
  intro n
  simp only [A133326, Nat.add_sub_cancel]

end A133326

/-! ## A133326.P9305084257679267638

`A077446(n+1)+A077442(n)`
-/

namespace A133326.P9305084257679267638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) + A077442 n

end

end A133326.P9305084257679267638

namespace A133326

/-- `A077446(n+1)+A077442(n)` -/
def P9305084257679267638.Spec : Prop :=
  ∀ n, P9305084257679267638.a n = A133326 (n + 1)

end A133326

/-! ## A133326.P2060478793102249633

`A276601(n+1)+A077241(n)`
-/

namespace A133326.P2060478793102249633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276601 (n + 1) + A077241 n

end

end A133326.P2060478793102249633

namespace A133326

/-- `A276601(n+1)+A077241(n)` -/
def P2060478793102249633.Spec : Prop :=
  ∀ n, P2060478793102249633.a n = A133326 (n + 1)

end A133326

/-! ## A133326.P3051957540154081035

`A144797(n+1)+A005319(round(n/2))`
-/

namespace A133326.P3051957540154081035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144797 (n + 1) + A005319 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

end

end A133326.P3051957540154081035

namespace A133326

/-- `A144797(n+1)+A005319(round(n/2))` -/
def P3051957540154081035.Spec : Prop :=
  ∀ n, P3051957540154081035.a n = A133326 (n + 1)

end A133326

/-! ## A133326.P18057023157176973275

`A082981(2*n+1)+A077446(n+1)`
-/

namespace A133326.P18057023157176973275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082981 (2 * n + 1) + A077446 (n + 1)

end

end A133326.P18057023157176973275

namespace A133326

/-- `A082981(2*n+1)+A077446(n+1)` -/
def P18057023157176973275.Spec : Prop :=
  ∀ n, P18057023157176973275.a n = A133326 (n + 1)

end A133326

/-! ## A133326.P6104169386247217733

`∑[2*A217975(n+1)]-A217975(n+1)`
-/

namespace A133326.P6104169386247217733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A217975 (n + 1)

end

end A133326.P6104169386247217733

namespace A133326

/-- `∑[2*A217975(n+1)]-A217975(n+1)` -/
def P6104169386247217733.Spec : Prop :=
  ∀ n, P6104169386247217733.a n = A133326 (n + 1)

end A133326

/-! ## A133326.P12242139172702747262

`∑[A077447(n+1)]-A077447(n+1)/2`
-/

namespace A133326.P12242139172702747262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077447 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A077447 (n + 1) : ℚ) / 2

end

end A133326.P12242139172702747262

namespace A133326

/-- `∑[A077447(n+1)]-A077447(n+1)/2` -/
def P12242139172702747262.Spec : Prop :=
  ∀ n, P12242139172702747262.a n = (A133326 (n + 1) : ℚ)

end A133326

/-! ## A133326.P4966339179394364539

`2*(A077446(n+1)-A001109(A110654(n)))`
-/

namespace A133326.P4966339179394364539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077446 (n + 1) - A001109 (A110654 n).toNat)

end

end A133326.P4966339179394364539

namespace A133326

/-- `2*(A077446(n+1)-A001109(A110654(n)))` -/
def P4966339179394364539.Spec : Prop :=
  ∀ n, P4966339179394364539.a n = A133326 (n + 1)

end A133326

/-! ## A133326.P11635514585078409324

`2*(A001333(n)+A048654(n)-A006452(n))`
-/

namespace A133326.P11635514585078409324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001333 n + (A048654 n - A006452 n))

end

end A133326.P11635514585078409324

namespace A133326

/-- `2*(A001333(n)+A048654(n)-A006452(n))` -/
def P11635514585078409324.Spec : Prop :=
  ∀ n, P11635514585078409324.a n = A133326 (n + 1)

end A133326

/-! ## A133326.P5380588832645633612

`A077442(n+1)+A077442(n)-A217975(n+1)`
-/

namespace A133326.P5380588832645633612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 (n + 1) + (A077442 n - A217975 (n + 1))

end

end A133326.P5380588832645633612

namespace A133326

/-- `A077442(n+1)+A077442(n)-A217975(n+1)` -/
def P5380588832645633612.Spec : Prop :=
  ∀ n, P5380588832645633612.a n = A133326 (n + 1)

end A133326

/-! ## A133326.P8075288698941629905

`A077446(n+2)-(A217975(n+1)+A123335(n))`
-/

namespace A133326.P8075288698941629905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 2) - (A217975 (n + 1) + A123335 n)

end

end A133326.P8075288698941629905

namespace A133326

/-- `A077446(n+2)-(A217975(n+1)+A123335(n))` -/
def P8075288698941629905.Spec : Prop :=
  ∀ n, P8075288698941629905.a n = A133326 (n + 1)

end A133326

/-! ## A133326.P12308070666773167797

`A077446(n+1)+A077446(n+2)-A217975(n+2)`
-/

namespace A133326.P12308070666773167797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) + (A077446 (n + 2) - A217975 (n + 2))

end

end A133326.P12308070666773167797

namespace A133326

/-- `A077446(n+1)+A077446(n+2)-A217975(n+2)` -/
def P12308070666773167797.Spec : Prop :=
  ∀ n, P12308070666773167797.a n = A133326 (n + 1)

end A133326

/-! ## A133326.P1445393890787487762

`2*(A000129(n+1)+A001333(n+1)-A006452(n))`
-/

namespace A133326.P1445393890787487762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000129 (n + 1) + (A001333 (n + 1) - A006452 n))

end

end A133326.P1445393890787487762

namespace A133326

/-- `2*(A000129(n+1)+A001333(n+1)-A006452(n))` -/
def P1445393890787487762.Spec : Prop :=
  ∀ n, P1445393890787487762.a n = A133326 (n + 1)

end A133326

/-!
# A133327: Indices of the 7-gonal numbers that are the sum of 2 consecutive 7-gonal numbers.

The programs for A133327, there is no canonical definition to state claims against.
-/

/-! ## A133327.P6845928965085404638

`floor((A133328(n+1)+1)*sqrt(2))`
-/

namespace A133327.P6845928965085404638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133328 (n + 1) + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A133327.P6845928965085404638

/-!
# A133328: Values of n such that the sum of the 7-gonal number (5*n^2 - 3*n)/2 and the following 7-gonal number is a 7-gonal number.

The programs for A133328, there is no canonical definition to state claims against.
-/

/-! ## A133328.P15586077131150622138

`floor(A133327(n+1)/sqrt(2))`
-/

namespace A133328.P15586077131150622138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133327 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A133328.P15586077131150622138

/-! ## A133328.P11302602076031098372

`ceil(A133327(n+1)/sqrt(2)-A000203(2^n)%2)`
-/

namespace A133328.P11302602076031098372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133327 (n + 1) : ℝ) / Real.sqrt (2 : ℝ) - (Int.tmod (A000203 (2 ^ n)) 2 : ℝ)⌉

end

end A133328.P11302602076031098372

/-!
# A133330: Sums of exactly three positive octahedral numbers A005900.

The programs for A133330, there is no canonical definition to state claims against.
-/

/-! ## A133330.P16213986950915509561

`eq[1, A364235(A304497(n+4))]`
-/

namespace A133330.P16213986950915509561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364235 (A304497 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133330.P16213986950915509561

/-! ## A133330.P3517028730728952451

`A001481(2*n+3)+A000120(A002941(n+1))`
-/

namespace A133330.P3517028730728952451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (2 * n + 3) + A000120 (A002941 (n + 1)).toNat

end

end A133330.P3517028730728952451

/-!
# A133331: a(2n+1) = 3a(2n)-3a(2n-1)+2a(2n-2), a(2n+2) = 3a(2n+1)-3a(2n), a(0) = 0, a(1) = 1, a(2) = 3.

The programs for A133331, the canonical program `A133331.P9584668263012577988` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133331 has offset 0).

The definition of A133331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133331.P11499535535056211725

`ogf((x+3x^2+3x^3)/(1-3x^2+3x^4))`
-/

namespace A133331.P11499535535056211725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 3] [1, 0, -3, 0, 3] n

end

end A133331.P11499535535056211725

namespace A133331

/-- `ogf((x+3x^2+3x^3)/(1-3x^2+3x^4))` -/
def P11499535535056211725.Spec : Prop :=
  ∀ n, P11499535535056211725.a n = A133331 n

end A133331

/-! ## A133331.P9584668263012577988

`3*(a(n-2)-a(n-4))` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133331

/-- `3*(a(n-2)-a(n-4))` -/
def P9584668263012577988.Spec : Prop :=
  ∀ n, P9584668263012577988.a n = A133331 n

theorem P9584668263012577988.correct : P9584668263012577988.Spec := by
  intro n
  simp only [A133331]

end A133331

/-! ## A133331.P16011336804629163483

`A131665(n+2)-A131292(n+2)`
-/

namespace A133331.P16011336804629163483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131665 (n + 2) - A131292 (n + 2)

end

end A133331.P16011336804629163483

namespace A133331

/-- `A131665(n+2)-A131292(n+2)` -/
def P16011336804629163483.Spec : Prop :=
  ∀ n, P16011336804629163483.a n = A133331 n

end A133331

/-! ## A133331.P15224999272020465493

`A131292(n)*A131294(A049422(n+1))`
-/

namespace A133331.P15224999272020465493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131292 n * A131294 (A049422 (n + 1)).toNat

end

end A133331.P15224999272020465493

namespace A133331

/-- `A131292(n)*A131294(A049422(n+1))` -/
def P15224999272020465493.Spec : Prop :=
  ∀ n, P15224999272020465493.a n = A133331 n

end A133331

/-!
# A133334: Signature sequence of e^(1/e) - the solution (the y value) to Steiner's problem: find the max value attained by y=x^(1/x).

The programs for A133334, there is no canonical definition to state claims against.
-/

/-! ## A133334.P2946669626811131449

`A022336(n+1)%(10^n-n²)+1`
-/

namespace A133334.P2946669626811131449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022336 (n + 1)) ((10 ^ n : ℤ) - (n ^ 2 : ℤ)) + 1

end

end A133334.P2946669626811131449

/-! ## A133334.P15881331653472902071

`A022336(n+1)+A010052(n²)`
-/

namespace A133334.P15881331653472902071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1) + A010052 (n ^ 2)

end

end A133334.P15881331653472902071

/-! ## A133334.P11551387287782948757

`A022336(n+1)+A014709(n²)`
-/

namespace A133334.P11551387287782948757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1) + A014709 (n ^ 2)

end

end A133334.P11551387287782948757

/-! ## A133334.P3336345086942912969

`A266974(n²)+A022336(n+1)`
-/

namespace A133334.P3336345086942912969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 (n ^ 2) + A022336 (n + 1)

end

end A133334.P3336345086942912969

/-! ## A133334.P2413327322917125923

`A267687(n²)+A022336(n+1)`
-/

namespace A133334.P2413327322917125923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267687 (n ^ 2) + A022336 (n + 1)

end

end A133334.P2413327322917125923

/-! ## A133334.P5119692714620495895

`A052409(2^val(A033849(n+1), 3))`
-/

namespace A133334.P5119692714620495895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (2 ^ SequenceMachineLib.valuation (A033849 (n + 1)).toNat 3)

end

end A133334.P5119692714620495895

/-! ## A133334.P359161517214576710

`A022336(n+1)+A001511(A002061(n))`
-/

namespace A133334.P359161517214576710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1) + A001511 (A002061 n).toNat

end

end A133334.P359161517214576710

/-! ## A133334.P14839982020622416776

`A093178(A051890(n))+A022336(n+1)`
-/

namespace A133334.P14839982020622416776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A051890 n).toNat + A022336 (n + 1)

end

end A133334.P14839982020622416776

/-! ## A133334.P3135621031389360303

`A056594(A104768(n))+A022336(n+1)`
-/

namespace A133334.P3135621031389360303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A104768 n).toNat + A022336 (n + 1)

end

end A133334.P3135621031389360303

/-! ## A133334.P17468837985102055118

`A022336(n+1)+A000108(A180160(n)^n)`
-/

namespace A133334.P17468837985102055118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1) + A000108 (A180160 n ^ n).toNat

end

end A133334.P17468837985102055118

/-! ## A133334.P9646109656149270465

`A022336(n+1)+A007318(A180160(n)^n)`
-/

namespace A133334.P9646109656149270465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1) + A007318 (A180160 n ^ n).toNat

end

end A133334.P9646109656149270465

/-! ## A133334.P7707270611379713937

`A022336(n+1)+A001222(A178623(n+1))!`
-/

namespace A133334.P7707270611379713937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1) + (Nat.factorial (A001222 (A178623 (n + 1)).toNat).toNat : ℤ)

end

end A133334.P7707270611379713937

/-! ## A133334.P6140970064941371072

`A022336(n+1)+A010166(A001844(n))`
-/

namespace A133334.P6140970064941371072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1) + A010166 (A001844 n).toNat

end

end A133334.P6140970064941371072

/-!
# A133335: a(3*n) = 3*a(3*n-1)-3*a(3*n-2)+2*a(3*n-3), a(3*n+1) = 3*a(3*n)-3*a(3*n-1)+2*a(3*n-2), a(3*n+2) = 3*a(3*n+1)-3*a(3*n) with a(0)=1, a(1)=2, a(2)=3.

The programs for A133335, the canonical program `A133335.P13063608040964200628` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133335 has offset 0).

The definition of A133335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133335.P13063608040964200628

`5*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133335

/-- `5*a(n-3)` -/
def P13063608040964200628.Spec : Prop :=
  ∀ n, (P13063608040964200628.a n : ℤ) = A133335 n

theorem P13063608040964200628.correct : P13063608040964200628.Spec := by
  intro n
  simp only [A133335]

end A133335

/-! ## A133335.P13419772470155093633

`a(n-3)/(1-4/5)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A133335.P13419772470155093633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) / (1 - (4 : ℚ) / 5)

end

end A133335.P13419772470155093633

namespace A133335

/-- `a(n-3)/(1-4/5)` -/
def P13419772470155093633.Spec : Prop :=
  ∀ n, P13419772470155093633.a n = (A133335 n : ℚ)

end A133335

/-! ## A133335.P11007826205764962713

`a(n-1)+a(n-gcd(2, n%3))` with `a(0)=1`
-/

namespace A133335.P11007826205764962713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - Nat.gcd 2 (n % 3))

end

end A133335.P11007826205764962713

namespace A133335

/-- `a(n-1)+a(n-gcd(2, n%3))` -/
def P11007826205764962713.Spec : Prop :=
  ∀ n, (P11007826205764962713.a n : ℤ) = A133335 n

end A133335

/-! ## A133335.P18269650887827553353

`a(n-1)+a(floor(n-sqrt(and(3, a(n-1)))))` with `a(0)=1`
-/

namespace A133335.P18269650887827553353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a ⌊(n : ℝ) - Real.sqrt (Nat.land 3 (a (n - 1)) : ℝ)⌋.toNat

end

end A133335.P18269650887827553353

namespace A133335

/-- `a(n-1)+a(floor(n-sqrt(and(3, a(n-1)))))` -/
def P18269650887827553353.Spec : Prop :=
  ∀ n, (P18269650887827553353.a n : ℤ) = A133335 n

end A133335

/-! ## A133335.P599874224568553534

`A140730(A004773(n))`
-/

namespace A133335.P599874224568553534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A004773 n).toNat

end

end A133335.P599874224568553534

namespace A133335

/-- `A140730(A004773(n))` -/
def P599874224568553534.Spec : Prop :=
  ∀ n, P599874224568553534.a n = A133335 n

end A133335

/-! ## A133335.P10644510395890063529

`A132158(n)+A010892(n)`
-/

namespace A133335.P10644510395890063529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132158 n + A010892 n

end

end A133335.P10644510395890063529

namespace A133335

/-- `A132158(n)+A010892(n)` -/
def P10644510395890063529.Spec : Prop :=
  ∀ n, P10644510395890063529.a n = A133335 n

end A133335

/-! ## A133335.P5942468742093803462

`∪[A026383(n), A056487(n)]`
-/

namespace A133335.P5942468742093803462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133335.P5942468742093803462

namespace A133335

/-- `∪[A026383(n), A056487(n)]` -/
def P5942468742093803462.Spec : Prop :=
  ∀ n, (P5942468742093803462.a n : ℤ) = A133335 n

end A133335

/-! ## A133335.P12315008430998788112

`∪[A163114(n+1), A026383(n)]`
-/

namespace A133335.P12315008430998788112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133335.P12315008430998788112

namespace A133335

/-- `∪[A163114(n+1), A026383(n)]` -/
def P12315008430998788112.Spec : Prop :=
  ∀ n, (P12315008430998788112.a n : ℤ) = A133335 n

end A133335

/-! ## A133335.P6451848674961212579

`∪[A162963(n+1), A056487(n)]`
-/

namespace A133335.P6451848674961212579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133335.P6451848674961212579

namespace A133335

/-- `∪[A162963(n+1), A056487(n)]` -/
def P6451848674961212579.Spec : Prop :=
  ∀ n, (P6451848674961212579.a n : ℤ) = A133335 n

end A133335

/-! ## A133335.P14143602026212749878

`ogf((1+2x+3x^2)/(1-5x^3))`
-/

namespace A133335.P14143602026212749878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, 0, 0, -5] n

end

end A133335.P14143602026212749878

namespace A133335

/-- `ogf((1+2x+3x^2)/(1-5x^3))` -/
def P14143602026212749878.Spec : Prop :=
  ∀ n, P14143602026212749878.a n = A133335 n

end A133335

/-! ## A133335.P12647389670190346909

`Δ[A005517(n+3)/2]`
-/

namespace A133335.P12647389670190346909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005517 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133335.P12647389670190346909

namespace A133335

/-- `Δ[A005517(n+3)/2]` -/
def P12647389670190346909.Spec : Prop :=
  ∀ n, P12647389670190346909.a n = (A133335 n : ℚ)

end A133335

/-! ## A133335.P17577965648341063150

`A138278(n+3)/8`
-/

namespace A133335.P17577965648341063150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138278 (n + 3) : ℚ) / 8

end

end A133335.P17577965648341063150

namespace A133335

/-- `A138278(n+3)/8` -/
def P17577965648341063150.Spec : Prop :=
  ∀ n, P17577965648341063150.a n = (A133335 n : ℚ)

end A133335

/-!
# A133336: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1,1,1,1,1,1,1,...] DELTA [0,1,0,1,0,1,0,1,0,...] where DELTA is the operator defined in A084938.

The programs for A133336, the canonical program `A133336.P10300946866893438711` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133336 has offset 0).

The definition of A133336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133336.P10300946866893438711

`A060693(n)-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A133336

/-- `A060693(n)-a(n-1)` -/
def P10300946866893438711.Spec : Prop :=
  ∀ n, P10300946866893438711.a n = A133336 n

theorem P10300946866893438711.correct : P10300946866893438711.Spec := by
  intro n
  simp only [A133336]

end A133336

/-! ## A133336.P359864843104835466

`A086810(A061579(n))`
-/

namespace A133336.P359864843104835466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A061579 n).toNat

end

end A133336.P359864843104835466

namespace A133336

/-- `A086810(A061579(n))` -/
def P359864843104835466.Spec : Prop :=
  ∀ n, P359864843104835466.a n = A133336 n

end A133336

/-! ## A133336.P17436958163203344459

`A086810(A038722(n+1)-1)`
-/

namespace A133336.P17436958163203344459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A038722 (n + 1) - 1).toNat

end

end A133336.P17436958163203344459

namespace A133336

/-- `A086810(A038722(n+1)-1)` -/
def P17436958163203344459.Spec : Prop :=
  ∀ n, P17436958163203344459.a n = A133336 n

end A133336

/-! ## A133336.P10781857376344476704

`A086810(A002024(n+1)²-(n+1))`
-/

namespace A133336.P10781857376344476704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A133336.P10781857376344476704

namespace A133336

/-- `A086810(A002024(n+1)²-(n+1))` -/
def P10781857376344476704.Spec : Prop :=
  ∀ n, P10781857376344476704.a n = A133336 n

end A133336

/-! ## A133336.P664039264567384513

`A086810(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A133336.P664039264567384513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A133336.P664039264567384513

namespace A133336

/-- `A086810(A002024(n+1)*A002024(n+1)-(n+1))` -/
def P664039264567384513.Spec : Prop :=
  ∀ n, P664039264567384513.a n = A133336 n

end A133336

/-! ## A133336.P11309688048875658997

`A086810(char[A038722(n+1)]*A038722(n+2))`
-/

namespace A133336.P11309688048875658997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038722 (n + 2)).toNat

end

end A133336.P11309688048875658997

namespace A133336

/-- `A086810(char[A038722(n+1)]*A038722(n+2))` -/
def P11309688048875658997.Spec : Prop :=
  ∀ n, P11309688048875658997.a n = A133336 n

end A133336

/-!
# A133337: a(3n) = 0, a(3n+1) = a(3n+2) = 5^n.

The programs for A133337, the canonical program `A133337.P7207515644227328061` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133337 has offset 0).

The definition of A133337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133337.P7207515644227328061

`5*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133337

/-- `5*a(n-3)` -/
def P7207515644227328061.Spec : Prop :=
  ∀ n, (P7207515644227328061.a n : ℤ) = A133337 n

theorem P7207515644227328061.correct : P7207515644227328061.Spec := by
  intro n
  simp only [A133337]

end A133337

/-! ## A133337.P10719022208870844054

`a(n-3)/(1-4/5)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A133337.P10719022208870844054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) / (1 - (4 : ℚ) / 5)

end

end A133337.P10719022208870844054

namespace A133337

/-- `a(n-3)/(1-4/5)` -/
def P10719022208870844054.Spec : Prop :=
  ∀ n, P10719022208870844054.a n = (A133337 n : ℚ)

end A133337

/-! ## A133337.P6807832138555137633

`a(n-3)+lcm(4, a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A133337.P6807832138555137633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + Nat.lcm 4 (a (n - 3))

end

end A133337.P6807832138555137633

namespace A133337

/-- `a(n-3)+lcm(4, a(n-3))` -/
def P6807832138555137633.Spec : Prop :=
  ∀ n, (P6807832138555137633.a n : ℤ) = A133337 n

end A133337

/-! ## A133337.P17403800065388887030

`A100095(A102899(n))`
-/

namespace A133337.P17403800065388887030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100095 (A102899 n).toNat

end

end A133337.P17403800065388887030

namespace A133337

/-- `A100095(A102899(n))` -/
def P17403800065388887030.Spec : Prop :=
  ∀ n, P17403800065388887030.a n = A133337 n

end A133337

/-! ## A133337.P8141886643365014629

`ogf((x+x^2)/(1-5x^3))`
-/

namespace A133337.P8141886643365014629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 0, 0, -5] n

end

end A133337.P8141886643365014629

namespace A133337

/-- `ogf((x+x^2)/(1-5x^3))` -/
def P8141886643365014629.Spec : Prop :=
  ∀ n, P8141886643365014629.a n = A133337 n

end A133337

/-! ## A133337.P11827085526239261139

`A133335(n)+A133335(n)-A133335(n+1)`
-/

namespace A133337.P11827085526239261139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n + (A133335 n - A133335 (n + 1))

end

end A133337.P11827085526239261139

namespace A133337

/-- `A133335(n)+A133335(n)-A133335(n+1)` -/
def P11827085526239261139.Spec : Prop :=
  ∀ n, P11827085526239261139.a n = A133337 n

end A133337

/-! ## A133337.P11994429813777970211

`A074872(n+1)%A245478(n+1)`
-/

namespace A133337.P11994429813777970211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074872 (n + 1)) (A245478 (n + 1))

end

end A133337.P11994429813777970211

namespace A133337

/-- `A074872(n+1)%A245478(n+1)` -/
def P11994429813777970211.Spec : Prop :=
  ∀ n, P11994429813777970211.a n = A133337 n

end A133337

/-! ## A133337.P5791091412484003005

`A056451(n)%A245478(n+1)`
-/

namespace A133337.P5791091412484003005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056451 n) (A245478 (n + 1))

end

end A133337.P5791091412484003005

namespace A133337

/-- `A056451(n)%A245478(n+1)` -/
def P5791091412484003005.Spec : Prop :=
  ∀ n, P5791091412484003005.a n = A133337 n

end A133337

/-! ## A133337.P4216142282046257851

`A170834(n+2)%A133335(n)`
-/

namespace A133337.P4216142282046257851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170834 (n + 2)) (A133335 n)

end

end A133337.P4216142282046257851

namespace A133337

/-- `A170834(n+2)%A133335(n)` -/
def P4216142282046257851.Spec : Prop :=
  ∀ n, P4216142282046257851.a n = A133337 n

end A133337

/-! ## A133337.P14103615999289838644

`A123748(n)%A245478(n+1)`
-/

namespace A133337.P14103615999289838644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123748 n) (A245478 (n + 1))

end

end A133337.P14103615999289838644

namespace A133337

/-- `A123748(n)%A245478(n+1)` -/
def P14103615999289838644.Spec : Prop :=
  ∀ n, P14103615999289838644.a n = A133337 n

end A133337

/-! ## A133337.P4391695904103954034

`A124398(n)%A245478(n+1)`
-/

namespace A133337.P4391695904103954034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124398 n) (A245478 (n + 1))

end

end A133337.P4391695904103954034

namespace A133337

/-- `A124398(n)%A245478(n+1)` -/
def P4391695904103954034.Spec : Prop :=
  ∀ n, P4391695904103954034.a n = A133337 n

end A133337

/-!
# A133338: Number of combinatorial types of simplicial neighborly 4-polytopes with n vertices.

The programs for A133338, there is no canonical definition to state claims against.
-/

/-! ## A133338.P10550388200438459518

`A226662(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A133338.P10550388200438459518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A226662 (a (n - 1)).toNat

end

end A133338.P10550388200438459518

/-! ## A133338.P9945936397553782994

`A354748(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A133338.P9945936397553782994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A354748 (a (n - 1) + 1).toNat

end

end A133338.P9945936397553782994

/-!
# A133341: A007318 * A134312.

The programs for A133341, the canonical program `A133341.P495050647053459279` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133341 has offset 0).

The definition of A133341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133341.P6326220280987353072

`A193862(n)/(2-char[∑[n]])`
-/

namespace A133341.P6326220280987353072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193862 n : ℚ) / (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A133341.P6326220280987353072

namespace A133341

/-- `A193862(n)/(2-char[∑[n]])` -/
def P6326220280987353072.Spec : Prop :=
  ∀ n, P6326220280987353072.a n = (A133341 n : ℚ)

end A133341

/-! ## A133341.P495050647053459279

`A135278(n)*A232089(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A133341

/-- `A135278(n)*A232089(n)` -/
def P495050647053459279.Spec : Prop :=
  ∀ n, P495050647053459279.a n = A133341 n

theorem P495050647053459279.correct : P495050647053459279.Spec := by
  intro n
  simp only [A133341]

end A133341

/-! ## A133341.P10936379817763122963

`floor(A193862(n)/A238303(n))`
-/

namespace A133341.P10936379817763122963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193862 n : ℚ) / (A238303 n : ℚ)⌋

end

end A133341.P10936379817763122963

namespace A133341

/-- `floor(A193862(n)/A238303(n))` -/
def P10936379817763122963.Spec : Prop :=
  ∀ n, P10936379817763122963.a n = A133341 n

end A133341

/-! ## A133341.P12582901130107061769

`A074909(n+1)*A232089(n)`
-/

namespace A133341.P12582901130107061769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A232089 n

end

end A133341.P12582901130107061769

namespace A133341

/-- `A074909(n+1)*A232089(n)` -/
def P12582901130107061769.Spec : Prop :=
  ∀ n, P12582901130107061769.a n = A133341 n

end A133341

/-! ## A133341.P8402896727975241742

`A007318(comp[∑[n]])*A232089(n)`
-/

namespace A133341.P8402896727975241742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A232089 n

end

end A133341.P8402896727975241742

namespace A133341

/-- `A007318(comp[∑[n]])*A232089(n)` -/
def P8402896727975241742.Spec : Prop :=
  ∀ n, P8402896727975241742.a n = A133341 n

end A133341

/-! ## A133341.P3115770771361335714

`Δ[A048645(n+1)]*A135278(n)`
-/

namespace A133341.P3115770771361335714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A135278 n

end

end A133341.P3115770771361335714

namespace A133341

/-- `Δ[A048645(n+1)]*A135278(n)` -/
def P3115770771361335714.Spec : Prop :=
  ∀ n, P3115770771361335714.a n = A133341 n

end A133341

/-! ## A133341.P14495508406750455911

`A000010(2^(n-C(∑[char[∑[n]]], 2)))*A135278(n)`
-/

namespace A133341.P14495508406750455911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat * A135278 n

end

end A133341.P14495508406750455911

namespace A133341

/-- `A000010(2^(n-C(∑[char[∑[n]]], 2)))*A135278(n)` -/
def P14495508406750455911.Spec : Prop :=
  ∀ n, P14495508406750455911.a n = A133341 n

end A133341

/-! ## A133341.P13012183150634579144

`A000010(A059268(n))*A135278(n)`
-/

namespace A133341.P13012183150634579144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat * A135278 n

end

end A133341.P13012183150634579144

namespace A133341

/-- `A000010(A059268(n))*A135278(n)` -/
def P13012183150634579144.Spec : Prop :=
  ∀ n, P13012183150634579144.a n = A133341 n

end A133341

/-! ## A133341.P7572002267789118079

`A000010(A059268(n))*A074909(n+1)`
-/

namespace A133341.P7572002267789118079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat * A074909 (n + 1)

end

end A133341.P7572002267789118079

namespace A133341

/-- `A000010(A059268(n))*A074909(n+1)` -/
def P7572002267789118079.Spec : Prop :=
  ∀ n, P7572002267789118079.a n = A133341 n

end A133341

/-! ## A133341.P9765883351722664629

`A130722(A210195(n+2))`
-/

namespace A133341.P9765883351722664629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 (A210195 (n + 2)).toNat

end

end A133341.P9765883351722664629

namespace A133341

/-- `A130722(A210195(n+2))` -/
def P9765883351722664629.Spec : Prop :=
  ∀ n, P9765883351722664629.a n = A133341 n

end A133341

/-!
# A133342: Concatenation of binary expansion of n-th row of Pascal's triangle.

The programs for A133342, there is no canonical definition to state claims against.
-/

/-! ## A133342.P6772955473093833937

`A007088(A349304(n))`
-/

namespace A133342.P6772955473093833937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A349304 n).toNat

end

end A133342.P6772955473093833937

/-!
# A133343: a(n) = 2*a(n-1) + 13*a(n-2), for n>1, a(0)=1, a(1)=1.

The programs for A133343, the canonical program `A133343.P16968006854907039874` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133343 has offset 0).

The definition of A133343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+13*a(n-2)` (program `A133343.P16968006854907039874`, by `A133343.P16968006854907039874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133343.P16968006854907039874

`2*a(n-1)+13*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133343

/-- `2*a(n-1)+13*a(n-2)` -/
def P16968006854907039874.Spec : Prop :=
  ∀ n, (P16968006854907039874.a n : ℤ) = A133343 n

theorem P16968006854907039874.correct : P16968006854907039874.Spec := by
  intro n
  simp only [A133343]

end A133343

/-! ## A133343.P5783918581441661631

`ogf((-1+x)/(-1+2x+13x^2))`
-/

namespace A133343.P5783918581441661631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -13] n

end

end A133343.P5783918581441661631

namespace A133343

/-- `ogf((-1+x)/(-1+2x+13x^2))` -/
def P5783918581441661631.Spec : Prop :=
  ∀ n, P5783918581441661631.a n = A133343 n

end A133343

/-! ## A133343.P13378808307472967573

`1/2*(1-sqrt(14))^n+1/2*(1+sqrt(14))^n`
-/

namespace A133343.P13378808307472967573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * (1 - Real.sqrt (14 : ℝ)) ^ n + ((1 : ℚ) / 2 : ℝ) * (1 + Real.sqrt (14 : ℝ)) ^ n

end

end A133343.P13378808307472967573

namespace A133343

/-- `1/2*(1-sqrt(14))^n+1/2*(1+sqrt(14))^n` -/
def P13378808307472967573.Spec : Prop :=
  ∀ n, P13378808307472967573.a n = (A133343 n : ℝ)

end A133343

/-!
# A133345: a(n) = 2*a(n-1) + 14*a(n-2) for n>1, a(0)=1, a(1)=1.

The programs for A133345, the canonical program `A133345.P5536285100177988274` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133345 has offset 0).

The definition of A133345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+14*a(n-2)` (program `A133345.P5536285100177988274`, by `A133345.P5536285100177988274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133345.P5536285100177988274

`2*a(n-1)+14*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133345

/-- `2*a(n-1)+14*a(n-2)` -/
def P5536285100177988274.Spec : Prop :=
  ∀ n, (P5536285100177988274.a n : ℤ) = A133345 n

theorem P5536285100177988274.correct : P5536285100177988274.Spec := by
  intro n
  simp only [A133345]

end A133345

/-! ## A133345.P17523639604645445729

`ogf((-1+x)/(-1+2x+14x^2))`
-/

namespace A133345.P17523639604645445729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -14] n

end

end A133345.P17523639604645445729

namespace A133345

/-- `ogf((-1+x)/(-1+2x+14x^2))` -/
def P17523639604645445729.Spec : Prop :=
  ∀ n, P17523639604645445729.a n = A133345 n

end A133345

/-! ## A133345.P17661586443039194051

`2*(a(n-1)-7*floor(-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A133345.P17661586443039194051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) - 7 * (-a (n - 2)))

end

end A133345.P17661586443039194051

namespace A133345

/-- `2*(a(n-1)-7*floor(-a(n-2)))` -/
def P17661586443039194051.Spec : Prop :=
  ∀ n, P17661586443039194051.a n = A133345 n

end A133345

/-! ## A133345.P6777628206172608355

`2*(a(n-1)-7*round(-a(n-2)))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A133345.P6777628206172608355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) - 7 * (-a (n - 2)))

end

end A133345.P6777628206172608355

namespace A133345

/-- `2*(a(n-1)-7*round(-a(n-2)))` -/
def P6777628206172608355.Spec : Prop :=
  ∀ n, P6777628206172608355.a n = A133345 n

end A133345

/-! ## A133345.P3418643534718032290

`1/2*(1-sqrt(15))^n+1/2*(1+sqrt(15))^n`
-/

namespace A133345.P3418643534718032290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * (1 - Real.sqrt (15 : ℝ)) ^ n + ((1 : ℚ) / 2 : ℝ) * (1 + Real.sqrt (15 : ℝ)) ^ n

end

end A133345.P3418643534718032290

namespace A133345

/-- `1/2*(1-sqrt(15))^n+1/2*(1+sqrt(15))^n` -/
def P3418643534718032290.Spec : Prop :=
  ∀ n, P3418643534718032290.a n = (A133345 n : ℝ)

end A133345

/-! ## A133345.P4431611199616284367

`Δ[A277091(n)/2]`
-/

namespace A133345.P4431611199616284367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277091 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133345.P4431611199616284367

namespace A133345

/-- `Δ[A277091(n)/2]` -/
def P4431611199616284367.Spec : Prop :=
  ∀ n, P4431611199616284367.a n = (A133345 n : ℚ)

end A133345

/-!
# A133348: Dimensions of certain Lie algebra (see reference for precise definition).

The programs for A133348, there is no canonical definition to state claims against.
-/

/-! ## A133348.P11299024633981629337

`A073165(eq[5, A002262(n)])`
-/

namespace A133348.P11299024633981629337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133348.P11299024633981629337

/-! ## A133348.P3190869780422053274

`A073165(eq[7, A140207(n)])`
-/

namespace A133348.P3190869780422053274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133348.P3190869780422053274

/-! ## A133348.P14561867763898305195

`A073165(eq[32, A059268(n)])`
-/

namespace A133348.P14561867763898305195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133348.P14561867763898305195

/-! ## A133348.P17721111618119027852

`A073165(A155212(n+1)+13)`
-/

namespace A133348.P17721111618119027852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (A155212 (n + 1) + 13).toNat

end

end A133348.P17721111618119027852

/-! ## A133348.P14950112929629351125

`A073165(eq[5, A144328(n+1)])`
-/

namespace A133348.P14950112929629351125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133348.P14950112929629351125

/-!
# A133350: Dimensions of certain Lie algebra (see reference for precise definition).

The programs for A133350, the canonical program `A133350.P16447093411726909432` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133350 has offset 0).

The definition of A133350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133350.P16447093411726909432

`A114242(2*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133350

/-- `A114242(2*n)` -/
def P16447093411726909432.Spec : Prop :=
  ∀ n, P16447093411726909432.a n = A133350 n

theorem P16447093411726909432.correct : P16447093411726909432.Spec := by
  intro n
  simp only [A133350]

end A133350

/-! ## A133350.P17304432652896278849

`record[gcd(val(n+1, 2), A114242(n))]`
-/

namespace A133350.P17304432652896278849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A114242 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133350.P17304432652896278849

namespace A133350

/-- `record[gcd(val(n+1, 2), A114242(n))]` -/
def P17304432652896278849.Spec : Prop :=
  ∀ n, (P17304432652896278849.a n : ℤ) = A133350 n

end A133350

/-! ## A133350.P13668193675054412309

`record[(-1)^n*∑[∑[A085463(n+1)]]]`
-/

namespace A133350.P13668193675054412309
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133350.P13668193675054412309

namespace A133350

/-- `record[(-1)^n*∑[∑[A085463(n+1)]]]` -/
def P13668193675054412309.Spec : Prop :=
  ∀ n, P13668193675054412309.a n = A133350 n

end A133350

/-! ## A133350.P3748812634538605416

`record[A114242(n)/A033999(n)]`
-/

namespace A133350.P3748812634538605416
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114242 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133350.P3748812634538605416

namespace A133350

/-- `record[A114242(n)/A033999(n)]` -/
def P3748812634538605416.Spec : Prop :=
  ∀ n, P3748812634538605416.a n = (A133350 n : ℚ)

end A133350

/-! ## A133350.P16847910177787554459

`record[A114242(A000096(n)%(n+1))]`
-/

namespace A133350.P16847910177787554459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114242 (Int.tmod (A000096 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133350.P16847910177787554459

namespace A133350

/-- `record[A114242(A000096(n)%(n+1))]` -/
def P16847910177787554459.Spec : Prop :=
  ∀ n, P16847910177787554459.a n = A133350 n

end A133350

/-! ## A133350.P3144833746539346163

`2*A107891(2*n)-A107968(2*n)`
-/

namespace A133350.P3144833746539346163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107891 (2 * n) - A107968 (2 * n)

end

end A133350.P3144833746539346163

namespace A133350

/-- `2*A107891(2*n)-A107968(2*n)` -/
def P3144833746539346163.Spec : Prop :=
  ∀ n, P3144833746539346163.a n = A133350 n

end A133350

/-! ## A133350.P2193371764040685916

`2*A108680(2*n)-A107959(2*n)`
-/

namespace A133350.P2193371764040685916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108680 (2 * n) - A107959 (2 * n)

end

end A133350.P2193371764040685916

namespace A133350

/-- `2*A108680(2*n)-A107959(2*n)` -/
def P2193371764040685916.Spec : Prop :=
  ∀ n, P2193371764040685916.a n = A133350 n

end A133350

/-! ## A133350.P1294601657713016702

`2*A114239(2*n)-A107969(2*n)`
-/

namespace A133350.P1294601657713016702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114239 (2 * n) - A107969 (2 * n)

end

end A133350.P1294601657713016702

namespace A133350

/-- `2*A114239(2*n)-A107969(2*n)` -/
def P1294601657713016702.Spec : Prop :=
  ∀ n, P1294601657713016702.a n = A133350 n

end A133350

/-! ## A133350.P14322613613658195944

`A107969(2*n+1)-A107970(2*n+1)`
-/

namespace A133350.P14322613613658195944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 (2 * n + 1) - A107970 (2 * n + 1)

end

end A133350.P14322613613658195944

namespace A133350

/-- `A107969(2*n+1)-A107970(2*n+1)` -/
def P14322613613658195944.Spec : Prop :=
  ∀ n, P14322613613658195944.a n = A133350 n

end A133350

/-! ## A133350.P2443376846316914535

`A108671(2*n+1)-A108646(2*n+1)`
-/

namespace A133350.P2443376846316914535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108671 (2 * n + 1) - A108646 (2 * n + 1)

end

end A133350.P2443376846316914535

namespace A133350

/-- `A108671(2*n+1)-A108646(2*n+1)` -/
def P2443376846316914535.Spec : Prop :=
  ∀ n, P2443376846316914535.a n = A133350 n

end A133350

/-! ## A133350.P25764388020780572

`A114239(2*n+1)-A108682(2*n+1)`
-/

namespace A133350.P25764388020780572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114239 (2 * n + 1) - A108682 (2 * n + 1)

end

end A133350.P25764388020780572

namespace A133350

/-- `A114239(2*n+1)-A108682(2*n+1)` -/
def P25764388020780572.Spec : Prop :=
  ∀ n, P25764388020780572.a n = A133350 n

end A133350

/-! ## A133350.P1525724207824294517

`A006857(2*n)+A108680(2*n)-A107891(2*n)`
-/

namespace A133350.P1525724207824294517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 (2 * n) + (A108680 (2 * n) - A107891 (2 * n))

end

end A133350.P1525724207824294517

namespace A133350

/-- `A006857(2*n)+A108680(2*n)-A107891(2*n)` -/
def P1525724207824294517.Spec : Prop :=
  ∀ n, P1525724207824294517.a n = A133350 n

end A133350

/-! ## A133350.P10115976797467999721

`A107891(2*n)+A108680(2*n)-A107956(2*n)`
-/

namespace A133350.P10115976797467999721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 (2 * n) + (A108680 (2 * n) - A107956 (2 * n))

end

end A133350.P10115976797467999721

namespace A133350

/-- `A107891(2*n)+A108680(2*n)-A107956(2*n)` -/
def P10115976797467999721.Spec : Prop :=
  ∀ n, P10115976797467999721.a n = A133350 n

end A133350

/-! ## A133350.P14344267761523093817

`A114239(2*n)-(A108682(2*n)-A114244(2*n))`
-/

namespace A133350.P14344267761523093817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114239 (2 * n) - (A108682 (2 * n) - A114244 (2 * n))

end

end A133350.P14344267761523093817

namespace A133350

/-- `A114239(2*n)-(A108682(2*n)-A114244(2*n))` -/
def P14344267761523093817.Spec : Prop :=
  ∀ n, P14344267761523093817.a n = A133350 n

end A133350

/-! ## A133350.P9637645784399376811

`A006857(2*n+1)-(A114244(2*n+1)+A006857(2*n))`
-/

namespace A133350.P9637645784399376811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 (2 * n + 1) - (A114244 (2 * n + 1) + A006857 (2 * n))

end

end A133350.P9637645784399376811

namespace A133350

/-- `A006857(2*n+1)-(A114244(2*n+1)+A006857(2*n))` -/
def P9637645784399376811.Spec : Prop :=
  ∀ n, P9637645784399376811.a n = A133350 n

end A133350

/-! ## A133350.P14995242002551655913

`A107968(2*n+1)-(A107969(2*n+1)+A107968(2*n))`
-/

namespace A133350.P14995242002551655913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107968 (2 * n + 1) - (A107969 (2 * n + 1) + A107968 (2 * n))

end

end A133350.P14995242002551655913

namespace A133350

/-- `A107968(2*n+1)-(A107969(2*n+1)+A107968(2*n))` -/
def P14995242002551655913.Spec : Prop :=
  ∀ n, P14995242002551655913.a n = A133350 n

end A133350

/-! ## A133350.P15648059911748217214

`A107891(2*n+1)-(A108682(2*n+1)+A107891(2*n))`
-/

namespace A133350.P15648059911748217214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 (2 * n + 1) - (A108682 (2 * n + 1) + A107891 (2 * n))

end

end A133350.P15648059911748217214

namespace A133350

/-- `A107891(2*n+1)-(A108682(2*n+1)+A107891(2*n))` -/
def P15648059911748217214.Spec : Prop :=
  ∀ n, P15648059911748217214.a n = A133350 n

end A133350

/-! ## A133350.P9480442271008595954

`A108670(2*n+1)-(A108178(2*n+1)+A107891(2*n))`
-/

namespace A133350.P9480442271008595954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108670 (2 * n + 1) - (A108178 (2 * n + 1) + A107891 (2 * n))

end

end A133350.P9480442271008595954

namespace A133350

/-- `A108670(2*n+1)-(A108178(2*n+1)+A107891(2*n))` -/
def P9480442271008595954.Spec : Prop :=
  ∀ n, P9480442271008595954.a n = A133350 n

end A133350

/-!
# A133351: Dimensions of certain Lie algebra (see reference for precise definition).

The programs for A133351, the canonical program `A133351.P1951894631463149761` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133351 has offset 0).

The definition of A133351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133351.P1951894631463149761

`A006414(n)*A107970(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133351

/-- `A006414(n)*A107970(n)` -/
def P1951894631463149761.Spec : Prop :=
  ∀ n, P1951894631463149761.a n = A133351 n

theorem P1951894631463149761.correct : P1951894631463149761.Spec := by
  intro n
  simp only [A133351]

end A133351

/-! ## A133351.P6320977269493802435

`(A051877(n)-A130857(n+1))*A107970(n)`
-/

namespace A133351.P6320977269493802435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051877 n - A130857 (n + 1)) * A107970 n

end

end A133351.P6320977269493802435

namespace A133351

/-- `(A051877(n)-A130857(n+1))*A107970(n)` -/
def P6320977269493802435.Spec : Prop :=
  ∀ n, P6320977269493802435.a n = A133351 n

end A133351

/-! ## A133351.P8443790356135759676

`(A167566(n+3)-A005585(n+1))*A107970(n)`
-/

namespace A133351.P8443790356135759676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167566 (n + 3) - A005585 (n + 1)) * A107970 n

end

end A133351.P8443790356135759676

namespace A133351

/-- `(A167566(n+3)-A005585(n+1))*A107970(n)` -/
def P8443790356135759676.Spec : Prop :=
  ∀ n, P8443790356135759676.a n = A133351 n

end A133351

/-! ## A133351.P2479516868331529275

`A107970(n)*A107980(A000096(n))`
-/

namespace A133351.P2479516868331529275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107970 n * A107980 (A000096 n).toNat

end

end A133351.P2479516868331529275

namespace A133351

/-- `A107970(n)*A107980(A000096(n))` -/
def P2479516868331529275.Spec : Prop :=
  ∀ n, P2479516868331529275.a n = A133351 n

end A133351

/-! ## A133351.P8101029721439207350

`A107980(record[A061579(n)])*A107970(n)`
-/

namespace A133351.P8101029721439207350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107980 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A107970 n

end

end A133351.P8101029721439207350

namespace A133351

/-- `A107980(record[A061579(n)])*A107970(n)` -/
def P8101029721439207350.Spec : Prop :=
  ∀ n, P8101029721439207350.a n = A133351 n

end A133351

/-!
# A133355: Dimensions of certain Lie algebra (see reference for precise definition).

The programs for A133355, the canonical program `A133355.P11704449306175435800` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133355 has offset 0).

The definition of A133355 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107397, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133355.P11704449306175435800

`1/28*A107397(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A133355

/-- `1/28*A107397(n)` -/
def P11704449306175435800.Spec : Prop :=
  ∀ n, P11704449306175435800.a n = (A133355 n : ℚ)

end A133355

/-! ## A133355.P9397951753362661663

`A107397(n)/28`
-/

namespace A133355.P9397951753362661663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107397 n : ℚ) / 28

end

end A133355.P9397951753362661663

namespace A133355

/-- `A107397(n)/28` -/
def P9397951753362661663.Spec : Prop :=
  ∀ n, P9397951753362661663.a n = (A133355 n : ℚ)

end A133355

/-! ## A133355.P3546236556042140569

`A107319(n)/∑[n+1]`
-/

namespace A133355.P3546236556042140569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107319 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A133355.P3546236556042140569

namespace A133355

/-- `A107319(n)/∑[n+1]` -/
def P3546236556042140569.Spec : Prop :=
  ∀ n, P3546236556042140569.a n = (A133355 n : ℚ)

end A133355

/-! ## A133355.P11957060334389885009

`ceil(A107319(n)/A000217(n+1))`
-/

namespace A133355.P11957060334389885009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107319 n : ℚ) / (A000217 (n + 1) : ℚ)⌉

end

end A133355.P11957060334389885009

namespace A133355

/-- `ceil(A107319(n)/A000217(n+1))` -/
def P11957060334389885009.Spec : Prop :=
  ∀ n, P11957060334389885009.a n = A133355 n

end A133355

/-! ## A133355.P5972250871269138481

`A000581(n+8)/A006857(n)*A107915(n)`
-/

namespace A133355.P5972250871269138481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) : ℚ) / (A006857 n : ℚ) * (A107915 n : ℚ)

end

end A133355.P5972250871269138481

namespace A133355

/-- `A000581(n+8)/A006857(n)*A107915(n)` -/
def P5972250871269138481.Spec : Prop :=
  ∀ n, P5972250871269138481.a n = (A133355 n : ℚ)

end A133355

/-! ## A133355.P16934680102234197703

`A000581(n+8)/A080929(n)*A082140(n)`
-/

namespace A133355.P16934680102234197703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) : ℚ) / (A080929 n : ℚ) * (A082140 n : ℚ)

end

end A133355.P16934680102234197703

namespace A133355

/-- `A000581(n+8)/A080929(n)*A082140(n)` -/
def P16934680102234197703.Spec : Prop :=
  ∀ n, P16934680102234197703.a n = (A133355 n : ℚ)

end A133355

/-! ## A133355.P11710401622507470339

`A062196(A052905(n+4)-2)/A000217(n+1)`
-/

namespace A133355.P11710401622507470339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062196 (A052905 (n + 4) - 2).toNat : ℚ) / (A000217 (n + 1) : ℚ)

end

end A133355.P11710401622507470339

namespace A133355

/-- `A062196(A052905(n+4)-2)/A000217(n+1)` -/
def P11710401622507470339.Spec : Prop :=
  ∀ n, P11710401622507470339.a n = (A133355 n : ℚ)

end A133355

/-!
# A133356: a(n) = 2*a(n-1) + 16*a(n-2) for n>1, a(0)=1, a(1)=1.

The programs for A133356, the canonical program `A133356.P437784902912275611` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133356 has offset 0).

The definition of A133356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+16*a(n-2)` (program `A133356.P437784902912275611`, by `A133356.P437784902912275611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133356.P437784902912275611

`2*a(n-1)+16*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133356

/-- `2*a(n-1)+16*a(n-2)` -/
def P437784902912275611.Spec : Prop :=
  ∀ n, (P437784902912275611.a n : ℤ) = A133356 n

theorem P437784902912275611.correct : P437784902912275611.Spec := by
  intro n
  simp only [A133356]

end A133356

/-! ## A133356.P14044099673072005718

`ogf((-1+x)/(-1+2x+16x^2))`
-/

namespace A133356.P14044099673072005718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -16] n

end

end A133356.P14044099673072005718

namespace A133356

/-- `ogf((-1+x)/(-1+2x+16x^2))` -/
def P14044099673072005718.Spec : Prop :=
  ∀ n, P14044099673072005718.a n = A133356 n

end A133356

/-! ## A133356.P9968178400968936951

`Δ[A161007(n)]`
-/

namespace A133356.P9968178400968936951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133356.P9968178400968936951

namespace A133356

/-- `Δ[A161007(n)]` -/
def P9968178400968936951.Spec : Prop :=
  ∀ n, P9968178400968936951.a n = A133356 n

end A133356

/-! ## A133356.P8127734704268545682

`2^(n-1)*A072265(n)`
-/

namespace A133356.P8127734704268545682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A072265 n : ℚ)

end

end A133356.P8127734704268545682

namespace A133356

/-- `2^(n-1)*A072265(n)` -/
def P8127734704268545682.Spec : Prop :=
  ∀ n, P8127734704268545682.a n = (A133356 n : ℚ)

end A133356

/-! ## A133356.P5436750819364895397

`A161007(n+1)-A161007(n)`
-/

namespace A133356.P5436750819364895397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161007 (n + 1) - A161007 n

end

end A133356.P5436750819364895397

namespace A133356

/-- `A161007(n+1)-A161007(n)` -/
def P5436750819364895397.Spec : Prop :=
  ∀ n, P5436750819364895397.a n = A133356 n

end A133356

/-! ## A133356.P4049834191759298780

`A072265(n)/2^A024000(n)`
-/

namespace A133356.P4049834191759298780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072265 n : ℚ) / (2 : ℚ) ^ (A024000 n : ℤ)

end

end A133356.P4049834191759298780

namespace A133356

/-- `A072265(n)/2^A024000(n)` -/
def P4049834191759298780.Spec : Prop :=
  ∀ n, P4049834191759298780.a n = (A133356 n : ℚ)

end A133356

/-! ## A133356.P184022208080536984

`Δ[(A026597(n)-A006131(n))*A011782(n)]`
-/

namespace A133356.P184022208080536984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026597 n - A006131 n) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133356.P184022208080536984

namespace A133356

/-- `Δ[(A026597(n)-A006131(n))*A011782(n)]` -/
def P184022208080536984.Spec : Prop :=
  ∀ n, P184022208080536984.a n = A133356 n

end A133356

/-! ## A133356.P17145890897711754828

`1/2*(1-sqrt(17))^n+1/2*(1+sqrt(17))^n`
-/

namespace A133356.P17145890897711754828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * (1 - Real.sqrt (17 : ℝ)) ^ n + ((1 : ℚ) / 2 : ℝ) * (1 + Real.sqrt (17 : ℝ)) ^ n

end

end A133356.P17145890897711754828

namespace A133356

/-- `1/2*(1-sqrt(17))^n+1/2*(1+sqrt(17))^n` -/
def P17145890897711754828.Spec : Prop :=
  ∀ n, P17145890897711754828.a n = (A133356 n : ℝ)

end A133356

/-!
# A133357: Number of 2-colorings of a 3 X n rectangle for which no subsquare has monochromatic corners.

The programs for A133357, there is no canonical definition to state claims against.
-/

/-! ## A133357.P17767451054730028313

`A255256(∑[n+3]+n+3)`
-/

namespace A133357.P17767451054730028313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A133357.P17767451054730028313

/-! ## A133357.P14228258931169350437

`A255256(A167614(n+2))+A151795(n)`
-/

namespace A133357.P14228258931169350437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (A167614 (n + 2)).toNat + A151795 n

end

end A133357.P14228258931169350437

/-! ## A133357.P8076074402960358762

`gcd(A000038(n), A255256(A046691(n+2)))`
-/

namespace A133357.P8076074402960358762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A255256 (A046691 (n + 2)).toNat)

end

end A133357.P8076074402960358762

/-! ## A133357.P7719328915730370462

`lcm(A174545(n), A255256(A046691(n+2)))`
-/

namespace A133357.P7719328915730370462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174545 n) (A255256 (A046691 (n + 2)).toNat)

end

end A133357.P7719328915730370462

/-! ## A133357.P16509294868840291520

`lcm(A140207(n), A255256(A167614(n+2)))`
-/

namespace A133357.P16509294868840291520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140207 n) (A255256 (A167614 (n + 2)).toNat)

end

end A133357.P16509294868840291520

/-!
# A133359: E.g.f. satisfies: A(x) = x*(cosh(exp(A(x))-1)).

The programs for A133359, there is no canonical definition to state claims against.
-/

/-! ## A133359.P5772079601535523887

`n*A033182(∑[A002051(n+1)])`
-/

namespace A133359.P5772079601535523887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133359.P5772079601535523887

/-!
# A133360: Number of surjections from an n-element set to a nine-element set.

The programs for A133360, there is no canonical definition to state claims against.
-/

/-! ## A133360.P8999373018159923523

`A131689(eq[9, A002262(n)])`
-/

namespace A133360.P8999373018159923523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133360.P8999373018159923523

/-! ## A133360.P5492089010348179471

`A131689(eq[9, A144328(n+1)])`
-/

namespace A133360.P5492089010348179471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133360.P5492089010348179471

/-! ## A133360.P9358939018503166797

`A131689(eq[10, A002260(n+1)])`
-/

namespace A133360.P9358939018503166797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133360.P9358939018503166797

/-! ## A133360.P17876172419601156537

`A019538(eq[10, A131818(n+1)])`
-/

namespace A133360.P17876172419601156537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133360.P17876172419601156537

/-! ## A133360.P3064489975061348378

`A131689(eq[10, A134868(n+1)])`
-/

namespace A133360.P3064489975061348378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133360.P3064489975061348378

/-!
# A133361: Multiply by 9 and reverse.

The programs for A133361, there is no canonical definition to state claims against.
-/

/-! ## A133361.P17903564525898887422

`A004086(9*a(n-1))` with `a(0)=1`
-/

namespace A133361.P17903564525898887422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (9 * a (n - 1)).toNat

end

end A133361.P17903564525898887422

/-!
# A133363: Numbers m such that 1 + Sum_{k=1..m} 3*k is prime.

The programs for A133363, there is no canonical definition to state claims against.
-/

/-! ## A133363.P18291962515402978966

`A125603(n+1)-1`
-/

namespace A133363.P18291962515402978966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125603 (n + 1) - 1

end

end A133363.P18291962515402978966

/-! ## A133363.P16982325637924999787

`A023443(A125603(n+1))`
-/

namespace A133363.P16982325637924999787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A125603 (n + 1)).toNat

end

end A133363.P16982325637924999787

/-! ## A133363.P6875764450746989767

`A355689(A000040(n+1))+A125603(n+1)`
-/

namespace A133363.P6875764450746989767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A000040 (n + 1)).toNat + A125603 (n + 1)

end

end A133363.P6875764450746989767

/-! ## A133363.P8582086515578234984

`A355689(A210760(n+1))+A125603(n+1)`
-/

namespace A133363.P8582086515578234984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A210760 (n + 1)).toNat + A125603 (n + 1)

end

end A133363.P8582086515578234984

/-! ## A133363.P16930686919342570200

`A355689(A231608(n+1))+A125603(n+1)`
-/

namespace A133363.P16930686919342570200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A231608 (n + 1)).toNat + A125603 (n + 1)

end

end A133363.P16930686919342570200

/-! ## A133363.P1689796873394223447

`A355689(A262286(n+1))+A125603(n+1)`
-/

namespace A133363.P1689796873394223447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A262286 (n + 1)).toNat + A125603 (n + 1)

end

end A133363.P1689796873394223447

/-! ## A133363.P13005665226806754326

`eq[1, ∑{e}[∑[3*n]+1, #]]`
-/

namespace A133363.P13005665226806754326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133363.P13005665226806754326

/-! ## A133363.P5802249203647140312

`lt[A245838(A000096(n)+1), 2]+1`
-/

namespace A133363.P5802249203647140312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A000096 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A133363.P5802249203647140312

/-! ## A133363.P3664563576119352400

`lt[A245838(A000217(n+1)), 2]+1`
-/

namespace A133363.P3664563576119352400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A000217 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A133363.P3664563576119352400

/-! ## A133363.P7912825639602356663

`eq[1, A001222(∑[3*n]+1)]`
-/

namespace A133363.P7912825639602356663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133363.P7912825639602356663

/-!
# A133365: Number of 3-noncrossing RNA structures, i.e., the number of 3-noncrossing partial matchings over n vertices and without arcs of length 1.

The programs for A133365, there is no canonical definition to state claims against.
-/

/-! ## A133365.P7867242309687658364

`A135337(n)+A036646(A032555(n+1))`
-/

namespace A133365.P7867242309687658364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135337 n + A036646 (A032555 (n + 1)).toNat

end

end A133365.P7867242309687658364

/-! ## A133365.P13455575199276944797

`A123579(A103465(n+1))`
-/

namespace A133365.P13455575199276944797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123579 (A103465 (n + 1)).toNat

end

end A133365.P13455575199276944797

/-! ## A133365.P5693010312986651075

`A226762(A001168(n+1))`
-/

namespace A133365.P5693010312986651075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A001168 (n + 1)).toNat

end

end A133365.P5693010312986651075

/-! ## A133365.P1829772721323975699

`A370886(A037336(n+1))`
-/

namespace A133365.P1829772721323975699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370886 (A037336 (n + 1)).toNat

end

end A133365.P1829772721323975699

/-!
# A133367: Triangle T(n,k) read by rows given by [2,1,2,1,2,1,2,1,2,1,2,1,...] DELTA [1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938 .

The programs for A133367, there is no canonical definition to state claims against.
-/

/-! ## A133367.P6228889837699883639

`A321623(n)/A059268(n)`
-/

namespace A133367.P6228889837699883639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321623 n : ℚ) / (A059268 n : ℚ)

end

end A133367.P6228889837699883639

/-! ## A133367.P3022882760325147424

`A321623(n)/A006519(A193859(n))`
-/

namespace A133367.P3022882760325147424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321623 n : ℚ) / (A006519 (A193859 n).toNat : ℚ)

end

end A133367.P3022882760325147424

/-! ## A133367.P13045537249245590107

`A390626(A248669(n+1))`
-/

namespace A133367.P13045537249245590107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390626 (A248669 (n + 1)).toNat

end

end A133367.P13045537249245590107

/-!
# A133368: Period 5: 1, 1, 3, 7, 3.

The programs for A133368, the canonical program `A133368.P17474572995210724046` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133368 has offset 0).

The definition of A133368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133368.P17474572995210724046

`((1-n)²+n)%10`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133368

/-- `((1-n)²+n)%10` -/
def P17474572995210724046.Spec : Prop :=
  ∀ n, P17474572995210724046.a n = A133368 n

theorem P17474572995210724046.correct : P17474572995210724046.Spec := by
  intro n
  simp only [A133368]

end A133368

/-!
# A133369: a(n+1) = (3*a(n) + 2*a(n-1)) mod 37; a(0) = 0, a(1) = 1.

The programs for A133369, the canonical program `A133369.P17422713360217008587` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133369 has offset 0).

The definition of A133369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133369.P17422713360217008587

`(A106434(n+1)/2)%37`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133369

/-- `(A106434(n+1)/2)%37` -/
def P17422713360217008587.Spec : Prop :=
  ∀ n, P17422713360217008587.a n = A133369 n

theorem P17422713360217008587.correct : P17422713360217008587.Spec := by
  intro n
  simp only [A133369]

end A133369

/-!
# A133370: Primes p such that p does not divide any term of the Apery sequence A005259 .

The programs for A133370, there is no canonical definition to state claims against.
-/

/-! ## A133370.P15958378356500988671

`p?[∑[A040005(A014626(n))]]`
-/

namespace A133370.P15958378356500988671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (A014626 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133370.P15958378356500988671

/-! ## A133370.P10842597353361223920

`p?[A099260(∑[A152975(n+1)])]`
-/

namespace A133370.P10842597353361223920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152975 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099260 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133370.P10842597353361223920

/-! ## A133370.P8848302498401193107

`∩[A028768(n+1), A039786(n+1)]`
-/

namespace A133370.P8848302498401193107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133370.P8848302498401193107

/-! ## A133370.P1366385455350834403

`∩[A028768(n+1), A229289(n+1)]`
-/

namespace A133370.P1366385455350834403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133370.P1366385455350834403

/-! ## A133370.P14723419209868500752

`∩[A028768(n+1), A350179(n+1)]`
-/

namespace A133370.P14723419209868500752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133370.P14723419209868500752

/-!
# A133371: Triangle read by rows: T(i,j) is the number of i-permutations of 14 objects a,b,c,d,e,f,g,h,i,j,k,l,m,n, with repetition allowed, containing j a's.

The programs for A133371, the canonical program `A133371.P3126096384400858780` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133371 has offset 0).

The definition of A133371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3921 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133371.P14901213765398173529

`13^A025581(n)*A007318(n)`
-/

namespace A133371.P14901213765398173529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A025581 n : ℤ) * (A007318 n : ℚ)

end

end A133371.P14901213765398173529

namespace A133371

/-- `13^A025581(n)*A007318(n)` -/
def P14901213765398173529.Spec : Prop :=
  ∀ n, P14901213765398173529.a n = (A133371 n : ℚ)

end A133371

/-! ## A133371.P7458038175856349341

`13^A025581(n)*ceil(A131108(n)/2)`
-/

namespace A133371.P7458038175856349341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A025581 n : ℤ) * (⌈(A131108 n : ℚ) / 2⌉ : ℚ)

end

end A133371.P7458038175856349341

namespace A133371

/-- `13^A025581(n)*ceil(A131108(n)/2)` -/
def P7458038175856349341.Spec : Prop :=
  ∀ n, P7458038175856349341.a n = (A133371 n : ℚ)

end A133371

/-! ## A133371.P624287279180588490

`13^A025581(n)*ceil(A134058(n)/2)`
-/

namespace A133371.P624287279180588490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A025581 n : ℤ) * (⌈(A134058 n : ℚ) / 2⌉ : ℚ)

end

end A133371.P624287279180588490

namespace A133371

/-- `13^A025581(n)*ceil(A134058(n)/2)` -/
def P624287279180588490.Spec : Prop :=
  ∀ n, P624287279180588490.a n = (A133371 n : ℚ)

end A133371

/-! ## A133371.P3126096384400858780

`A007318(n)*A001022(A025581(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A133371

/-- `A007318(n)*A001022(A025581(n))` -/
def P3126096384400858780.Spec : Prop :=
  ∀ n, P3126096384400858780.a n = A133371 n

theorem P3126096384400858780.correct : P3126096384400858780.Spec := by
  intro n
  simp only [A133371]

end A133371

/-! ## A133371.P60564861861150007

`A123187(A061579(n))`
-/

namespace A133371.P60564861861150007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123187 (A061579 n).toNat

end

end A133371.P60564861861150007

namespace A133371

/-- `A123187(A061579(n))` -/
def P60564861861150007.Spec : Prop :=
  ∀ n, P60564861861150007.a n = A133371 n

end A133371

/-! ## A133371.P8078230980307893387

`A123187(A038722(n+2))`
-/

namespace A133371.P8078230980307893387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123187 (A038722 (n + 2)).toNat

end

end A133371.P8078230980307893387

namespace A133371

/-- `A123187(A038722(n+2))` -/
def P8078230980307893387.Spec : Prop :=
  ∀ n, P8078230980307893387.a n = A133371 n

end A133371

/-!
# A133372: Semiprimes expressible as the sum of (at least two) consecutive semiprimes in at least 1 way.

The programs for A133372, there is no canonical definition to state claims against.
-/

/-! ## A133372.P4171982137405103226

`record[A179312(A135363(n+1))]`
-/

namespace A133372.P4171982137405103226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A135363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133372.P4171982137405103226

/-! ## A133372.P2354616015979968323

`filter[A135363(n+1), A064911(#)]`
-/

namespace A133372.P2354616015979968323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A133372.P2354616015979968323

/-! ## A133372.P1060075091599483236

`∩[A001358(n+1), A135363(n+1)]`
-/

namespace A133372.P1060075091599483236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133372.P1060075091599483236

/-! ## A133372.P6999073271254620453

`∩[A108793(n+1), A135363(n+1)]`
-/

namespace A133372.P6999073271254620453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133372.P6999073271254620453

/-! ## A133372.P3084575450339095958

`∩[A135363(n+1), A175515(n+1)]`
-/

namespace A133372.P3084575450339095958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133372.P3084575450339095958

/-!
# A133374: Difference between largest number of complexity n in the sense of A005245 and smallest number of complexity n in the sense of A005245.

The programs for A133374, there is no canonical definition to state claims against.
-/

/-! ## A133374.P11252138757321915441

`A000792(n+1)-A005520(n+1)`
-/

namespace A133374.P11252138757321915441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (n + 1) - A005520 (n + 1)

end

end A133374.P11252138757321915441

/-! ## A133374.P4741952552432398255

`record[A036561(n)]-A005520(n+1)`
-/

namespace A133374.P4741952552432398255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005520 (n + 1)

end

end A133374.P4741952552432398255

/-! ## A133374.P5155454699129477377

`record[A141396(n)]-A005520(n+1)`
-/

namespace A133374.P5155454699129477377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005520 (n + 1)

end

end A133374.P5155454699129477377

/-! ## A133374.P12199737282849290606

`record[A122164(n+1)]-A005520(n+1)`
-/

namespace A133374.P12199737282849290606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005520 (n + 1)

end

end A133374.P12199737282849290606

/-! ## A133374.P16567206929383705817

`record[A155118(n+1)]-A005520(n+1)`
-/

namespace A133374.P16567206929383705817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005520 (n + 1)

end

end A133374.P16567206929383705817

/-! ## A133374.P10496729030848730977

`A064364(A034891(n+1))-A005520(n+1)`
-/

namespace A133374.P10496729030848730977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064364 (A034891 (n + 1)).toNat - A005520 (n + 1)

end

end A133374.P10496729030848730977

/-!
# A133375: Catalan numbers with digits sorted in increasing order and zeros suppressed.

The programs for A133375, there is no canonical definition to state claims against.
-/

/-! ## A133375.P14069950597638599730

`A004185(A000108(n))`
-/

namespace A133375.P14069950597638599730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A000108 n).toNat

end

end A133375.P14069950597638599730

/-! ## A133375.P2262910115493475283

`A004185(A004096(n))`
-/

namespace A133375.P2262910115493475283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A004096 n).toNat

end

end A133375.P2262910115493475283

/-! ## A133375.P11288920482450056810

`A004185(A211216(n))`
-/

namespace A133375.P11288920482450056810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A211216 n).toNat

end

end A133375.P11288920482450056810

/-! ## A133375.P6341705555082755142

`A004185(A242450(n))`
-/

namespace A133375.P6341705555082755142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A242450 n).toNat

end

end A133375.P6341705555082755142

/-! ## A133375.P16878292145799040687

`A004185(A243838(n))`
-/

namespace A133375.P16878292145799040687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A243838 n).toNat

end

end A133375.P16878292145799040687

/-!
# A133377: Complete list of decimal numbers that when converted to hexadecimal produce the mirror image of the original number.

The programs for A133377, there is no canonical definition to state claims against.
-/

/-! ## A133377.P9343238953260872148

`record[A133287(n+1)%A065660(n+4)]`
-/

namespace A133377.P9343238953260872148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133287 (n + 1)) (A065660 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133377.P9343238953260872148

/-! ## A133377.P17009225646431556511

`A004086(eq[n, A004086(A102489(n))])`
-/

namespace A133377.P17009225646431556511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133377.P17009225646431556511

/-!
# A133380: A055450 + A030111 - A000012 as infinite lower triangular matrices.

The programs for A133380, there is no canonical definition to state claims against.
-/

/-! ## A133380.P17511280041001605011

`A134483(A089940(n)^A264981(n+1))`
-/

namespace A133380.P17511280041001605011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (SequenceMachineLib.roundAway ((A089940 n : ℚ) ^ (A264981 (n + 1) : ℤ))).toNat

end

end A133380.P17511280041001605011

/-! ## A133380.P15208381409180637393

`A001222(A036035(A089940(n)²))`
-/

namespace A133380.P15208381409180637393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A036035 (A089940 n ^ 2).toNat).toNat

end

end A133380.P15208381409180637393

/-! ## A133380.P11855325628730398600

`A001222(A181817(2*A230698(n)))`
-/

namespace A133380.P11855325628730398600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181817 (2 * A230698 n).toNat).toNat

end

end A133380.P11855325628730398600

/-! ## A133380.P2782245398716320899

`A089940(n)+A046080(A144443(n+2))`
-/

namespace A133380.P2782245398716320899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089940 n + A046080 (A144443 (n + 2)).toNat

end

end A133380.P2782245398716320899

/-! ## A133380.P10549936644688457094

`A134483(A089940(n)%A280447(n+1))`
-/

namespace A133380.P10549936644688457094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (Int.tmod (A089940 n) (A280447 (n + 1))).toNat

end

end A133380.P10549936644688457094

/-!
# A133383: 10 followed by 2n 9's.

The programs for A133383, the canonical program `A133383.P16970216351895684042` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133383 has offset 0).

The definition of A133383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133383.P16970216351895684042

`11*10^(2*n)-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133383

/-- `11*10^(2*n)-1` -/
def P16970216351895684042.Spec : Prop :=
  ∀ n, P16970216351895684042.a n = A133383 n

theorem P16970216351895684042.correct : P16970216351895684042.Spec := by
  intro n
  simp only [A133383]

end A133383

/-! ## A133383.P14708118246621824170

`A198700(2*n)`
-/

namespace A133383.P14708118246621824170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198700 (2 * n)

end

end A133383.P14708118246621824170

namespace A133383

/-- `A198700(2*n)` -/
def P14708118246621824170.Spec : Prop :=
  ∀ n, P14708118246621824170.a n = A133383 n

end A133383

/-! ## A133383.P5601214753161179120

`Δ[A099814(n)-n]`
-/

namespace A133383.P5601214753161179120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099814 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133383.P5601214753161179120

namespace A133383

/-- `Δ[A099814(n)-n]` -/
def P5601214753161179120.Spec : Prop :=
  ∀ n, P5601214753161179120.a n = A133383 n

end A133383

/-! ## A133383.P7271642583756474264

`A070199(4*n+1)`
-/

namespace A133383.P7271642583756474264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070199 (4 * n + 1)

end

end A133383.P7271642583756474264

namespace A133383

/-- `A070199(4*n+1)` -/
def P7271642583756474264.Spec : Prop :=
  ∀ n, P7271642583756474264.a n = A133383 n

end A133383

/-! ## A133383.P4739855024842671286

`Δ[A002275(2*n)-n]`
-/

namespace A133383.P4739855024842671286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133383.P4739855024842671286

namespace A133383

/-- `Δ[A002275(2*n)-n]` -/
def P4739855024842671286.Spec : Prop :=
  ∀ n, P4739855024842671286.a n = A133383 n

end A133383

/-! ## A133383.P16293605381535123467

`Δ[A173735(2*n)-n]`
-/

namespace A133383.P16293605381535123467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133383.P16293605381535123467

namespace A133383

/-- `Δ[A173735(2*n)-n]` -/
def P16293605381535123467.Spec : Prop :=
  ∀ n, P16293605381535123467.a n = A133383 n

end A133383

/-! ## A133383.P16966099873304818557

`abs(1-A003953(2*n+1))`
-/

namespace A133383.P16966099873304818557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A003953 (2 * n + 1)|

end

end A133383.P16966099873304818557

namespace A133383

/-- `abs(1-A003953(2*n+1))` -/
def P16966099873304818557.Spec : Prop :=
  ∀ n, P16966099873304818557.a n = A133383 n

end A133383

/-! ## A133383.P8677643589412640900

`(Δ[A002276(2*n)]-2)/2`
-/

namespace A133383.P8677643589412640900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 2 : ℚ) / 2

end

end A133383.P8677643589412640900

namespace A133383

/-- `(Δ[A002276(2*n)]-2)/2` -/
def P8677643589412640900.Spec : Prop :=
  ∀ n, P8677643589412640900.a n = (A133383 n : ℚ)

end A133383

/-! ## A133383.P13100772264423222593

`or(2, A198700(A005843(n)))`
-/

namespace A133383.P13100772264423222593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A198700 (A005843 n).toNat)

end

end A133383.P13100772264423222593

namespace A133383

/-- `or(2, A198700(A005843(n)))` -/
def P13100772264423222593.Spec : Prop :=
  ∀ n, P13100772264423222593.a n = A133383 n

end A133383

/-!
# A133384: Numbers with n 0's between 1 and 2.

The programs for A133384, the canonical program `A133384.P8020588473771031997` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133384 has offset 0).

The definition of A133384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133384.P8020588473771031997

`10^(n+1)+2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133384

/-- `10^(n+1)+2` -/
def P8020588473771031997.Spec : Prop :=
  ∀ n, (P8020588473771031997.a n : ℤ) = A133384 n

theorem P8020588473771031997.correct : P8020588473771031997.Spec := by
  intro n
  simp only [A133384]

end A133384

/-! ## A133384.P5433844660104067862

`6*A126109(n)`
-/

namespace A133384.P5433844660104067862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A126109 n

end

end A133384.P5433844660104067862

namespace A133384

/-- `6*A126109(n)` -/
def P5433844660104067862.Spec : Prop :=
  ∀ n, P5433844660104067862.a n = A133384 n

end A133384

/-! ## A133384.P7204682135163153815

`xor(2, record[10*a(n-1)])` with `a(0)=14, a(1)=1`
-/

namespace A133384.P7204682135163153815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A133384.P7204682135163153815

namespace A133384

/-- `xor(2, record[10*a(n-1)])` -/
def P7204682135163153815.Spec : Prop :=
  ∀ n, (P7204682135163153815.a n : ℤ) = A133384 n

end A133384

/-! ## A133384.P10576264662344264507

`2*(5*(a(n-1)-2)+1)` with `a(0)=12`
-/

namespace A133384.P10576264662344264507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  2 * (5 * (a (n - 1) - 2) + 1)

end

end A133384.P10576264662344264507

namespace A133384

/-- `2*(5*(a(n-1)-2)+1)` -/
def P10576264662344264507.Spec : Prop :=
  ∀ n, P10576264662344264507.a n = A133384 n

theorem P10576264662344264507.correct : P10576264662344264507.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A133384, Nat.add_sub_cancel, A133384.P10576264662344264507.a, A133384.P8020588473771031997.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A133384, Nat.add_sub_cancel, A133384.P10576264662344264507.a, A133384.P8020588473771031997.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A133384

/-! ## A133384.P7889175756379809527

`3*(∑[10*a(n-1)]-2)` with `a(0)=6, a(1)=30`
-/

namespace A133384.P7889175756379809527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 30] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A133384.P7889175756379809527

namespace A133384

/-- `3*(∑[10*a(n-1)]-2)` -/
def P7889175756379809527.Spec : Prop :=
  ∀ n, P7889175756379809527.a n = A133384 n

end A133384

/-! ## A133384.P17483368924540671126

`2*A199685(n)`
-/

namespace A133384.P17483368924540671126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199685 n

end

end A133384.P17483368924540671126

namespace A133384

/-- `2*A199685(n)` -/
def P17483368924540671126.Spec : Prop :=
  ∀ n, P17483368924540671126.a n = A133384 n

end A133384

/-! ## A133384.P6561119632305517136

`3*A093137(n+1)`
-/

namespace A133384.P6561119632305517136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A093137 (n + 1)

end

end A133384.P6561119632305517136

namespace A133384

/-- `3*A093137(n+1)` -/
def P6561119632305517136.Spec : Prop :=
  ∀ n, P6561119632305517136.a n = A133384 n

end A133384

/-! ## A133384.P4053890842480741911

`2*(A198971(n)+2)`
-/

namespace A133384.P4053890842480741911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198971 n + 2)

end

end A133384.P4053890842480741911

namespace A133384

/-- `2*(A198971(n)+2)` -/
def P4053890842480741911.Spec : Prop :=
  ∀ n, P4053890842480741911.a n = A133384 n

end A133384

/-! ## A133384.P1245180722534541721

`3*(A033175(n)+3)`
-/

namespace A133384.P1245180722534541721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A033175 n + 3)

end

end A133384.P1245180722534541721

namespace A133384

/-- `3*(A033175(n)+3)` -/
def P1245180722534541721.Spec : Prop :=
  ∀ n, P1245180722534541721.a n = A133384 n

end A133384

/-! ## A133384.P11222374127006424156

`A000462(∑[n+2]+3)`
-/

namespace A133384.P11222374127006424156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000462 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A133384.P11222374127006424156

namespace A133384

/-- `A000462(∑[n+2]+3)` -/
def P11222374127006424156.Spec : Prop :=
  ∀ n, P11222374127006424156.a n = A133384 n

end A133384

/-! ## A133384.P15841818903054813138

`2*(Δ[A002279(n)]+1)`
-/

namespace A133384.P15841818903054813138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A133384.P15841818903054813138

namespace A133384

/-- `2*(Δ[A002279(n)]+1)` -/
def P15841818903054813138.Spec : Prop :=
  ∀ n, P15841818903054813138.a n = A133384 n

end A133384

/-! ## A133384.P5417865261712651109

`2*(Δ[A093142(n)]+1)`
-/

namespace A133384.P5417865261712651109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A133384.P5417865261712651109

namespace A133384

/-- `2*(Δ[A093142(n)]+1)` -/
def P5417865261712651109.Spec : Prop :=
  ∀ n, P5417865261712651109.a n = A133384 n

end A133384

/-! ## A133384.P8934661516505569956

`2*(Δ[A178769(n)]+1)`
-/

namespace A133384.P8934661516505569956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A133384.P8934661516505569956

namespace A133384

/-- `2*(Δ[A178769(n)]+1)` -/
def P8934661516505569956.Spec : Prop :=
  ∀ n, P8934661516505569956.a n = A133384 n

end A133384

/-! ## A133384.P9243891454409874435

`A155890(n²+n+2)`
-/

namespace A133384.P9243891454409874435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155890 (n ^ 2 + n + 2)

end

end A133384.P9243891454409874435

namespace A133384

/-- `A155890(n²+n+2)` -/
def P9243891454409874435.Spec : Prop :=
  ∀ n, P9243891454409874435.a n = A133384 n

end A133384

/-! ## A133384.P10286264638267110811

`3*(A002277(n+1)+1)`
-/

namespace A133384.P10286264638267110811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A002277 (n + 1) + 1)

end

end A133384.P10286264638267110811

namespace A133384

/-- `3*(A002277(n+1)+1)` -/
def P10286264638267110811.Spec : Prop :=
  ∀ n, P10286264638267110811.a n = A133384 n

end A133384

/-! ## A133384.P13892269378642548179

`3*(A173766(n+1)-3)`
-/

namespace A133384.P13892269378642548179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A173766 (n + 1) - 3)

end

end A133384.P13892269378642548179

namespace A133384

/-- `3*(A173766(n+1)-3)` -/
def P13892269378642548179.Spec : Prop :=
  ∀ n, P13892269378642548179.a n = A133384 n

end A133384

/-! ## A133384.P16528362759168261397

`2*(5*A011557(n)+1)`
-/

namespace A133384.P16528362759168261397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A011557 n + 1)

end

end A133384.P16528362759168261397

namespace A133384

/-- `2*(5*A011557(n)+1)` -/
def P16528362759168261397.Spec : Prop :=
  ∀ n, P16528362759168261397.a n = A133384 n

end A133384

/-! ## A133384.P5087104872026709765

`3*(A173764(n+1)-5)`
-/

namespace A133384.P5087104872026709765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A173764 (n + 1) - 5)

end

end A133384.P5087104872026709765

namespace A133384

/-- `3*(A173764(n+1)-5)` -/
def P5087104872026709765.Spec : Prop :=
  ∀ n, P5087104872026709765.a n = A133384 n

end A133384

/-! ## A133384.P8227134708170506848

`3*A308900(2*n+3)`
-/

namespace A133384.P8227134708170506848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A308900 (2 * n + 3)

end

end A133384.P8227134708170506848

namespace A133384

/-- `3*A308900(2*n+3)` -/
def P8227134708170506848.Spec : Prop :=
  ∀ n, P8227134708170506848.a n = A133384 n

end A133384

/-! ## A133384.P15759099188129187772

`3*(∑[5*A090019(n)]-1)`
-/

namespace A133384.P15759099188129187772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A090019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A133384.P15759099188129187772

namespace A133384

/-- `3*(∑[5*A090019(n)]-1)` -/
def P15759099188129187772.Spec : Prop :=
  ∀ n, P15759099188129187772.a n = A133384 n

end A133384

/-!
# A133385: Number of permutations of n elements divided by the number of (binary) heaps on n+1 elements.

The programs for A133385, there is no canonical definition to state claims against.
-/

/-! ## A133385.P17859617143426463608

`A132862(n+1)/(n+1)`
-/

namespace A133385.P17859617143426463608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132862 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A133385.P17859617143426463608

/-! ## A133385.P5648902342218952424

`A000142(n)/A056971(n+1)`
-/

namespace A133385.P5648902342218952424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A056971 (n + 1) : ℚ)

end

end A133385.P5648902342218952424

/-! ## A133385.P9909285685270344313

`A132862(A277267(n+1))*A132862(A279521(n+1))`
-/

namespace A133385.P9909285685270344313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132862 (A277267 (n + 1)).toNat * A132862 (A279521 (n + 1)).toNat

end

end A133385.P9909285685270344313

/-! ## A133385.P10138897055518321329

`A273730(∑[n+2]-1)`
-/

namespace A133385.P10138897055518321329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A133385.P10138897055518321329

/-! ## A133385.P15776309394395034073

`A000142(n)/A306343(A000124(n))`
-/

namespace A133385.P15776309394395034073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A306343 (A000124 n).toNat : ℚ)

end

end A133385.P15776309394395034073

/-! ## A133385.P588159505346284987

`A273730(A034856(n+1))%A034182(n+2)`
-/

namespace A133385.P588159505346284987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273730 (A034856 (n + 1)).toNat) (A034182 (n + 2))

end

end A133385.P588159505346284987

/-!
# A133386: Number of forests of labeled rooted trees with n nodes, containing exactly 2 trees of height one, all others having height zero.

The programs for A133386, the canonical program `A133386.P6930243779866747404` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133386 has offset 0).

The definition of A133386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133386.P6930243779866747404

`(n²-n)*A000392(abs(1-n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133386

/-- `(n²-n)*A000392(abs(1-n))` -/
def P6930243779866747404.Spec : Prop :=
  ∀ n, P6930243779866747404.a n = A133386 n

theorem P6930243779866747404.correct : P6930243779866747404.Spec := by
  intro n
  simp only [A133386]

end A133386

/-! ## A133386.P10293683870992978605

`A004275(n)/12*A052761(n)`
-/

namespace A133386.P10293683870992978605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 n : ℚ) / 12 * (A052761 n : ℚ)

end

end A133386.P10293683870992978605

namespace A133386

/-- `A004275(n)/12*A052761(n)` -/
def P10293683870992978605.Spec : Prop :=
  ∀ n, P10293683870992978605.a n = (A133386 n : ℚ)

end A133386

/-! ## A133386.P4422910305223094587

`(A052777(n)+A052760(n))/2`
-/

namespace A133386.P4422910305223094587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052777 n + A052760 n : ℚ) / 2

end

end A133386.P4422910305223094587

namespace A133386

/-- `(A052777(n)+A052760(n))/2` -/
def P4422910305223094587.Spec : Prop :=
  ∀ n, P4422910305223094587.a n = (A133386 n : ℚ)

end A133386

/-! ## A133386.P13110484940331847396

`(A052777(n)+A052760(n))*2^A008683(A020483(n))`
-/

namespace A133386.P13110484940331847396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052777 n + A052760 n : ℚ) * (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A133386.P13110484940331847396

namespace A133386

/-- `(A052777(n)+A052760(n))*2^A008683(A020483(n))` -/
def P13110484940331847396.Spec : Prop :=
  ∀ n, P13110484940331847396.a n = (A133386 n : ℚ)

end A133386

/-! ## A133386.P204983418166339292

`A161680(n)*A299905(A133263(n))`
-/

namespace A133386.P204983418166339292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n * A299905 (A133263 n).toNat

end

end A133386.P204983418166339292

namespace A133386

/-- `A161680(n)*A299905(A133263(n))` -/
def P204983418166339292.Spec : Prop :=
  ∀ n, P204983418166339292.a n = A133386 n

end A133386

/-!
# A133387: Greatest prime p such that 6*n-p is prime.

The programs for A133387, there is no canonical definition to state claims against.
-/

/-! ## A133387.P64376147058260761

`A020482(3*(n+1))`
-/

namespace A133387.P64376147058260761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (3 * (n + 1))

end

end A133387.P64376147058260761

/-! ## A133387.P8803239892560836653

`6*(n+1)-A020481(3*(n+1))`
-/

namespace A133387.P8803239892560836653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - A020481 (3 * (n + 1))

end

end A133387.P8803239892560836653

/-! ## A133387.P432322518629081038

`A020639(A020482(n+3+n+n))`
-/

namespace A133387.P432322518629081038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020482 (n + 3 + (n + n))).toNat

end

end A133387.P432322518629081038

/-! ## A133387.P13965613747012253284

`6*(n+1)-A002373(3*(n+1))`
-/

namespace A133387.P13965613747012253284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - A002373 (3 * (n + 1))

end

end A133387.P13965613747012253284

/-! ## A133387.P10547615698261425888

`A047949(3*(n+1))+A008486(n+1)`
-/

namespace A133387.P10547615698261425888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (3 * (n + 1)) + A008486 (n + 1)

end

end A133387.P10547615698261425888

/-! ## A133387.P5344034894452525615

`A053626(A020482(∑[2-n]+∑[n+1]))`
-/

namespace A133387.P5344034894452525615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A020482 (∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat).toNat

end

end A133387.P5344034894452525615

/-! ## A133387.P13227737593439097079

`A139421(6*n+3)`
-/

namespace A133387.P13227737593439097079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (6 * n + 3)

end

end A133387.P13227737593439097079

/-! ## A133387.P14714057706383072644

`∏{p}[A060308(3*n+2)², #]`
-/

namespace A133387.P14714057706383072644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (3 * n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A133387.P14714057706383072644

/-! ## A133387.P15926754307729168636

`A006530(lcm(∏{e}[n+1, #+1]+1+n, A060308(3*n+2)))`
-/

namespace A133387.P15926754307729168636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 + n : ℕ) : ℤ) (A060308 (3 * n + 2)))

end

end A133387.P15926754307729168636

/-!
# A133388: Largest integer m such that n-m^2 is a square, or 0 if no such m exists.

The programs for A133388, there is no canonical definition to state claims against.
-/

/-! ## A133388.P4359111281923865109

`A000007(A070176(n+1))*A262689(n+1)`
-/

namespace A133388.P4359111281923865109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A070176 (n + 1)).toNat * A262689 (n + 1)

end

end A133388.P4359111281923865109

/-! ## A133388.P10415688647036878622

`A262689((n+1)*A010052(A262678(n+1)))`
-/

namespace A133388.P10415688647036878622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((n + 1 : ℤ) * A010052 (A262678 (n + 1)).toNat).toNat

end

end A133388.P10415688647036878622

/-! ## A133388.P6485873170615148562

`A010052(n-A255131(n+1))*A262689(n+1)`
-/

namespace A133388.P6485873170615148562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) - A255131 (n + 1)).toNat * A262689 (n + 1)

end

end A133388.P6485873170615148562

/-! ## A133388.P11786981041895198346

`A010052(n+1-A262690(n+1))*A262689(n+1)`
-/

namespace A133388.P11786981041895198346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n + 1 : ℤ) - A262690 (n + 1)).toNat * A262689 (n + 1)

end

end A133388.P11786981041895198346

/-! ## A133388.P4556909665028396441

`A010052(n+1-A262690(n+1))*A064876(n+1)`
-/

namespace A133388.P4556909665028396441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n + 1 : ℤ) - A262690 (n + 1)).toNat * A064876 (n + 1)

end

end A133388.P4556909665028396441

/-! ## A133388.P511825975324170346

`A305575(A057655(n)%A057655(n+1))`
-/

namespace A133388.P511825975324170346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (Int.tmod (A057655 n) (A057655 (n + 1))).toNat

end

end A133388.P511825975324170346

/-!
# A133390: Period 18: repeat 1, 4, 7, 2, 2, 5, 4, 1, 1, 8, 5, 2, 7, 7, 4, 5, 8, 8.

The programs for A133390, the canonical program `A133390.P13873933597956992550` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133390 has offset 0).

The definition of A133390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133390.P13873933597956992550

`dr(2^n+a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133390

/-- `dr(2^n+a(n-1)-a(n-2))` -/
def P13873933597956992550.Spec : Prop :=
  ∀ n, (P13873933597956992550.a n : ℤ) = A133390 n

theorem P13873933597956992550.correct : P13873933597956992550.Spec := by
  intro n
  simp only [A133390]

end A133390

/-!
# A133391: Sum of the squares of primes < 10^n.

The programs for A133391, there is no canonical definition to state claims against.
-/

/-! ## A133391.P11171176146259287460

`A024525(A006880(n))-1`
-/

namespace A133391.P11171176146259287460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 (A006880 n).toNat - 1

end

end A133391.P11171176146259287460

/-!
# A133394: a(n)=a(n-2)+a(n-5).

The programs for A133394, the canonical program `A133394.P7347904778068547797` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133394 has offset 1).

The definition of A133394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-5)` (program `A133394.P7347904778068547797`, by `A133394.P7347904778068547797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133394.P7347904778068547797

`a(n-2)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=2, a(4)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A133394

/-- `a(n-2)+a(n-5)` -/
def P7347904778068547797.Spec : Prop :=
  ∀ n, (P7347904778068547797.a n : ℤ) = A133394 (n + 1)

theorem P7347904778068547797.correct : P7347904778068547797.Spec := by
  intro n
  simp only [A133394, Nat.add_sub_cancel]

end A133394

/-! ## A133394.P5422570013801445284

`(1-char[2])*A007387(n+1)`
-/

namespace A133394.P5422570013801445284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A007387 (n + 1)

end

end A133394.P5422570013801445284

namespace A133394

/-- `(1-char[2])*A007387(n+1)` -/
def P5422570013801445284.Spec : Prop :=
  ∀ n, P5422570013801445284.a n = A133394 (n + 1)

end A133394

/-! ## A133394.P1922146081219578625

`lcm(A007387(n+1), A171905(n+1))`
-/

namespace A133394.P1922146081219578625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007387 (n + 1)) (A171905 (n + 1))

end

end A133394.P1922146081219578625

namespace A133394

/-- `lcm(A007387(n+1), A171905(n+1))` -/
def P1922146081219578625.Spec : Prop :=
  ∀ n, (P1922146081219578625.a n : ℤ) = A133394 (n + 1)

end A133394

/-! ## A133394.P9133850115668591739

`A007387(n+1)%A001588(n)`
-/

namespace A133394.P9133850115668591739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007387 (n + 1)) (A001588 n)

end

end A133394.P9133850115668591739

namespace A133394

/-- `A007387(n+1)%A001588(n)` -/
def P9133850115668591739.Spec : Prop :=
  ∀ n, P9133850115668591739.a n = A133394 (n + 1)

end A133394

/-! ## A133394.P11435650146644114529

`and(A007387(n+1), A233868(n+1))`
-/

namespace A133394.P11435650146644114529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007387 (n + 1)) (A233868 (n + 1))

end

end A133394.P11435650146644114529

namespace A133394

/-- `and(A007387(n+1), A233868(n+1))` -/
def P11435650146644114529.Spec : Prop :=
  ∀ n, P11435650146644114529.a n = A133394 (n + 1)

end A133394

/-!
# A133395: Terms in A061725 that are of form 3*prime.

The programs for A133395, there is no canonical definition to state claims against.
-/

/-! ## A133395.P15069025778713416299

`3*A289135(n+1)`
-/

namespace A133395.P15069025778713416299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A289135 (n + 1)

end

end A133395.P15069025778713416299

/-! ## A133395.P11795792577516121723

`lcm(A174971(n), A289135(n+1))`
-/

namespace A133395.P11795792577516121723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174971 n) (A289135 (n + 1))

end

end A133395.P11795792577516121723

/-! ## A133395.P3644019189014017317

`p?[A240878(n+1)]²+2`
-/

namespace A133395.P3644019189014017317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 2

end

end A133395.P3644019189014017317

/-! ## A133395.P11900107199081970454

`A109953(n+1)²+2`
-/

namespace A133395.P11900107199081970454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1) ^ 2 + 2

end

end A133395.P11900107199081970454

/-! ## A133395.P2363405838134958815

`p?[A242330(n+1)]²+2`
-/

namespace A133395.P2363405838134958815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 2

end

end A133395.P2363405838134958815

/-! ## A133395.P7625074104076008118

`∩[A061725(n+1), A360739(n+1)]`
-/

namespace A133395.P7625074104076008118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133395.P7625074104076008118

/-! ## A133395.P17015929202457055869

`A007433(A109953(n+1))`
-/

namespace A133395.P17015929202457055869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007433 (A109953 (n + 1)).toNat

end

end A133395.P17015929202457055869

/-! ## A133395.P3044230852544953838

`3*p?[floor(A000040(n+1)²/3)+1]`
-/

namespace A133395.P3044230852544953838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) ^ 2 : ℚ) / 3⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133395.P3044230852544953838

/-!
# A133397: Triangular array read by rows: T(n, k) = prime(n+1)^k * prime(n)^(k*(k-1)/2) with T(0,0) = 1.

The programs for A133397, there is no canonical definition to state claims against.
-/

/-! ## A133397.P17595722937106658412

`gcd(A003961(A066117(n+1)), A324582(n+1))`
-/

namespace A133397.P17595722937106658412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (A066117 (n + 1)).toNat) (A324582 (n + 1))

end

end A133397.P17595722937106658412

/-!
# A133399: Triangle T(n,k) = number of forests of labeled rooted trees with n nodes, containing exactly k trees of height one, all others having height zero (n>=0, 0<=k<=floor(n/2)).

The programs for A133399, there is no canonical definition to state claims against.
-/

/-! ## A133399.P15675819193871348188

`A198204(A056536(n+1))`
-/

namespace A133399.P15675819193871348188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198204 (A056536 (n + 1)).toNat

end

end A133399.P15675819193871348188

/-! ## A133399.P4051874731670465705

`A198204(A091018(n)+1)`
-/

namespace A133399.P4051874731670465705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198204 (A091018 n + 1).toNat

end

end A133399.P4051874731670465705

