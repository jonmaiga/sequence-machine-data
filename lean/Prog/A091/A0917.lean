import SequenceMachineLib
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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B012.C000
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

/-!
# A091701: Row sums of triangle A091700.

The programs for A091701, the canonical program `A091701.P12508808071275949901` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091701 has offset 0).

The definition of A091701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091701.P12508808071275949901

`4*a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=14, a(3)=63`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091701

/-- `4*a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P12508808071275949901.Spec : Prop :=
  ∀ n, P12508808071275949901.a n = A091701 n

theorem P12508808071275949901.correct : P12508808071275949901.Spec := by
  intro n
  simp only [A091701]

end A091701

/-! ## A091701.P932047888159023834

`ogf((1-x-x^2)/(1-4x-3x^2+2x^3+x^4))`
-/

namespace A091701.P932047888159023834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -4, -3, 2, 1] n

end

end A091701.P932047888159023834

namespace A091701

/-- `ogf((1-x-x^2)/(1-4x-3x^2+2x^3+x^4))` -/
def P932047888159023834.Spec : Prop :=
  ∀ n, P932047888159023834.a n = A091701 n

end A091701

/-! ## A091701.P4111562640626384426

`floor((sqrt(3)+2)*(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A091701.P4111562640626384426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) + a (n - 2) : ℝ)⌋

end

end A091701.P4111562640626384426

namespace A091701

/-- `floor((sqrt(3)+2)*(a(n-1)+a(n-2)))` -/
def P4111562640626384426.Spec : Prop :=
  ∀ n, P4111562640626384426.a n = A091701 n

end A091701

/-! ## A091701.P14015082207836075533

`A003512(a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A091701.P14015082207836075533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A003512 (a (n - 1) + a (n - 2)).toNat

end

end A091701.P14015082207836075533

namespace A091701

/-- `A003512(a(n-1)+a(n-2))` -/
def P14015082207836075533.Spec : Prop :=
  ∀ n, P14015082207836075533.a n = A091701 n

end A091701

/-!
# A091702: Column 0 of triangle A091700.

The programs for A091702, the canonical program `A091702.P328682691290717247` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091702 has offset 0).

The definition of A091702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091702.P328682691290717247

`3*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=23`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091702

/-- `3*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P328682691290717247.Spec : Prop :=
  ∀ n, P328682691290717247.a n = A091702 n

theorem P328682691290717247.correct : P328682691290717247.Spec := by
  intro n
  simp only [A091702]

end A091702

/-! ## A091702.P5728884544876127655

`ogf((1-x-x^2)/(1-3x-2x^2+2x^3+x^4))`
-/

namespace A091702.P5728884544876127655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, -2, 2, 1] n

end

end A091702.P5728884544876127655

namespace A091702

/-- `ogf((1-x-x^2)/(1-3x-2x^2+2x^3+x^4))` -/
def P5728884544876127655.Spec : Prop :=
  ∀ n, P5728884544876127655.a n = A091702 n

end A091702

/-! ## A091702.P14819619572710187216

`floor((a(n-1)+a(n-2))*ϕ²)` with `a(0)=1, a(1)=2`
-/

namespace A091702.P14819619572710187216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) + a (n - 2) : ℝ) * Real.goldenRatio ^ 2⌋

end

end A091702.P14819619572710187216

namespace A091702

/-- `floor((a(n-1)+a(n-2))*ϕ²)` -/
def P14819619572710187216.Spec : Prop :=
  ∀ n, P14819619572710187216.a n = A091702 n

end A091702

/-! ## A091702.P18016771949909229557

`floor((ϕ+1)*(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A091702.P18016771949909229557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(Real.goldenRatio + 1) * (a (n - 1) + a (n - 2) : ℝ)⌋

end

end A091702.P18016771949909229557

namespace A091702

/-- `floor((ϕ+1)*(a(n-1)+a(n-2)))` -/
def P18016771949909229557.Spec : Prop :=
  ∀ n, P18016771949909229557.a n = A091702 n

end A091702

/-! ## A091702.P10187242360517728169

`∑[round((a(n-1)+a(n-2))*ϕ²)]` with `a(0)=1, a(1)=1`
-/

namespace A091702.P10187242360517728169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) + f1 (n - 2) : ℝ) * Real.goldenRatio ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091702.P10187242360517728169

namespace A091702

/-- `∑[round((a(n-1)+a(n-2))*ϕ²)]` -/
def P10187242360517728169.Spec : Prop :=
  ∀ n, P10187242360517728169.a n = A091702 n

end A091702

/-! ## A091702.P6966810100576083008

`A091700(∑[n])`
-/

namespace A091702.P6966810100576083008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091700 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091702.P6966810100576083008

namespace A091702

/-- `A091700(∑[n])` -/
def P6966810100576083008.Spec : Prop :=
  ∀ n, P6966810100576083008.a n = A091702 n

end A091702

/-!
# A091703: Count, setting 5n to zero.

The programs for A091703, the canonical program `A091703.P12826781463153457269` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091703 has offset 0).

The definition of A091703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091703.P12826781463153457269

`2*a(n-5)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=0, a(6)=6, a(7)=7, a(8)=8, a(9)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091703

/-- `2*a(n-5)-a(n-10)` -/
def P12826781463153457269.Spec : Prop :=
  ∀ n, P12826781463153457269.a n = A091703 n

theorem P12826781463153457269.correct : P12826781463153457269.Spec := by
  intro n
  simp only [A091703]

end A091703

/-! ## A091703.P11458470018766251553

`n*A011558(n)`
-/

namespace A091703.P11458470018766251553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011558 n

end

end A091703.P11458470018766251553

namespace A091703

/-- `n*A011558(n)` -/
def P11458470018766251553.Spec : Prop :=
  ∀ n, P11458470018766251553.a n = A091703 n

end A091703

/-! ## A091703.P3974830891356858525

`(lcm(5, n)-n)/4`
-/

namespace A091703.P3974830891356858525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 5 n : ℤ) - (n : ℤ) : ℚ) / 4

end

end A091703.P3974830891356858525

namespace A091703

/-- `(lcm(5, n)-n)/4` -/
def P3974830891356858525.Spec : Prop :=
  ∀ n, P3974830891356858525.a n = (A091703 n : ℚ)

end A091703

/-! ## A091703.P5562914319620494213

`n*(n^4)%5`
-/

namespace A091703.P5562914319620494213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 4 % 5)

end

end A091703.P5562914319620494213

namespace A091703

/-- `n*(n^4)%5` -/
def P5562914319620494213.Spec : Prop :=
  ∀ n, (P5562914319620494213.a n : ℤ) = A091703 n

end A091703

/-! ## A091703.P16653759390867994272

`n*char[comp[5*n]]`
-/

namespace A091703.P16653759390867994272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A091703.P16653759390867994272

namespace A091703

/-- `n*char[comp[5*n]]` -/
def P16653759390867994272.Spec : Prop :=
  ∀ n, (P16653759390867994272.a n : ℤ) = A091703 n

end A091703

/-! ## A091703.P13719786058650086040

`(char[5*n]+n)%(n+1)`
-/

namespace A091703.P13719786058650086040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + n) % (n + 1)

end

end A091703.P13719786058650086040

namespace A091703

/-- `(char[5*n]+n)%(n+1)` -/
def P13719786058650086040.Spec : Prop :=
  ∀ n, (P13719786058650086040.a n : ℤ) = A091703 n

end A091703

/-! ## A091703.P5911248439050922970

`lcm(n, A080891(n))`
-/

namespace A091703.P5911248439050922970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A080891 n)

end

end A091703.P5911248439050922970

namespace A091703

/-- `lcm(n, A080891(n))` -/
def P5911248439050922970.Spec : Prop :=
  ∀ n, (P5911248439050922970.a n : ℤ) = A091703 n

end A091703

/-! ## A091703.P54989383188357418

`abs(n*A100047(n))`
-/

namespace A091703.P54989383188357418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A100047 n|

end

end A091703.P54989383188357418

namespace A091703

/-- `abs(n*A100047(n))` -/
def P54989383188357418.Spec : Prop :=
  ∀ n, P54989383188357418.a n = A091703 n

end A091703

/-! ## A091703.P11219057790045082782

`abs(n*A163812(n))`
-/

namespace A091703.P11219057790045082782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A163812 n|

end

end A091703.P11219057790045082782

namespace A091703

/-- `abs(n*A163812(n))` -/
def P11219057790045082782.Spec : Prop :=
  ∀ n, P11219057790045082782.a n = A091703 n

end A091703

/-! ## A091703.P16466269866875864930

`abs(n*A226162(n))`
-/

namespace A091703.P16466269866875864930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A226162 n|

end

end A091703.P16466269866875864930

namespace A091703

/-- `abs(n*A226162(n))` -/
def P16466269866875864930.Spec : Prop :=
  ∀ n, P16466269866875864930.a n = A091703 n

end A091703

/-! ## A091703.P1498058979438033140

`abs(n*A244895(n))`
-/

namespace A091703.P1498058979438033140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A244895 n|

end

end A091703.P1498058979438033140

namespace A091703

/-- `abs(n*A244895(n))` -/
def P1498058979438033140.Spec : Prop :=
  ∀ n, P1498058979438033140.a n = A091703 n

end A091703

/-! ## A091703.P14962565438559745724

`abs(n*A330025(n))`
-/

namespace A091703.P14962565438559745724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A330025 n|

end

end A091703.P14962565438559745724

namespace A091703

/-- `abs(n*A330025(n))` -/
def P14962565438559745724.Spec : Prop :=
  ∀ n, P14962565438559745724.a n = A091703 n

end A091703

/-! ## A091703.P5381661469872286305

`(A109046(n)-n)/4`
-/

namespace A091703.P5381661469872286305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109046 n - (n : ℤ) : ℚ) / 4

end

end A091703.P5381661469872286305

namespace A091703

/-- `(A109046(n)-n)/4` -/
def P5381661469872286305.Spec : Prop :=
  ∀ n, P5381661469872286305.a n = (A091703 n : ℚ)

end A091703

/-! ## A091703.P9636204526161088557

`lcm(A028310(n), A100047(n))`
-/

namespace A091703.P9636204526161088557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A100047 n)

end

end A091703.P9636204526161088557

namespace A091703

/-- `lcm(A028310(n), A100047(n))` -/
def P9636204526161088557.Spec : Prop :=
  ∀ n, (P9636204526161088557.a n : ℤ) = A091703 n

end A091703

/-! ## A091703.P16260000305774151003

`lcm(A038608(n), A163812(n))`
-/

namespace A091703.P16260000305774151003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038608 n) (A163812 n)

end

end A091703.P16260000305774151003

namespace A091703

/-- `lcm(A038608(n), A163812(n))` -/
def P16260000305774151003.Spec : Prop :=
  ∀ n, (P16260000305774151003.a n : ℤ) = A091703 n

end A091703

/-! ## A091703.P10817738605733962715

`lcm(A163818(n), A181983(n))`
-/

namespace A091703.P10817738605733962715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A163818 n) (A181983 n)

end

end A091703.P10817738605733962715

namespace A091703

/-- `lcm(A163818(n), A181983(n))` -/
def P10817738605733962715.Spec : Prop :=
  ∀ n, (P10817738605733962715.a n : ℤ) = A091703 n

end A091703

/-! ## A091703.P881863009704930296

`lcm(A226162(n), A274922(n))`
-/

namespace A091703.P881863009704930296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A226162 n) (A274922 n)

end

end A091703.P881863009704930296

namespace A091703

/-- `lcm(A226162(n), A274922(n))` -/
def P881863009704930296.Spec : Prop :=
  ∀ n, (P881863009704930296.a n : ℤ) = A091703 n

end A091703

/-! ## A091703.P17543569837533960394

`lcm(A330025(n), A374157(n))`
-/

namespace A091703.P17543569837533960394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A330025 n) (A374157 n)

end

end A091703.P17543569837533960394

namespace A091703

/-- `lcm(A330025(n), A374157(n))` -/
def P17543569837533960394.Spec : Prop :=
  ∀ n, (P17543569837533960394.a n : ℤ) = A091703 n

end A091703

/-! ## A091703.P8482560296339117020

`A087508(A187334(n))`
-/

namespace A091703.P8482560296339117020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A187334 n).toNat

end

end A091703.P8482560296339117020

namespace A091703

/-- `A087508(A187334(n))` -/
def P8482560296339117020.Spec : Prop :=
  ∀ n, P8482560296339117020.a n = A091703 n

end A091703

/-! ## A091703.P3025256337604035411

`A188134(A109046(n)-n)`
-/

namespace A091703.P3025256337604035411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A109046 n - (n : ℤ)).toNat

end

end A091703.P3025256337604035411

namespace A091703

/-- `A188134(A109046(n)-n)` -/
def P3025256337604035411.Spec : Prop :=
  ∀ n, P3025256337604035411.a n = A091703 n

end A091703

/-!
# A091704: Number of Barker codes (or Barker sequences) of length n up to reversals and negations.

The programs for A091704, the canonical program `A091704.P3972452870042405594` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091704 has offset 2).

The definition of A091704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091704.P3972452870042405594

`a(n-1)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=1, a(4)=0, a(5)=1, a(6)=0, a(7)=0, a(8)=0, a(9)=1, a(10)=0, a(11)=1, a(12)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091704

/-- `a(n-1)` -/
def P3972452870042405594.Spec : Prop :=
  ∀ n, (P3972452870042405594.a n : ℤ) = A091704 (n + 2)

theorem P3972452870042405594.correct : P3972452870042405594.Spec := by
  intro n
  simp only [A091704, Nat.add_sub_cancel]

end A091704

/-!
# A091705: Number of primes less than 10^n having at least one digit 4.

The programs for A091705, there is no canonical definition to state claims against.
-/

/-! ## A091705.P1155965081689036315

`A006880(n+1)-A091638(n+1)`
-/

namespace A091705.P1155965081689036315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091638 (n + 1)

end

end A091705.P1155965081689036315

/-! ## A091705.P13522758498170446365

`∑[A006879(n+1)]-A091638(n+1)`
-/

namespace A091705.P13522758498170446365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091638 (n + 1)

end

end A091705.P13522758498170446365

/-! ## A091705.P8196572737659557655

`A122121(2*(n+1))-A091638(n+1)`
-/

namespace A091705.P8196572737659557655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091638 (n + 1)

end

end A091705.P8196572737659557655

/-! ## A091705.P16124543744101686780

`A091635(n+1)+A091645(n+1)-A091638(n+1)`
-/

namespace A091705.P16124543744101686780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091635 (n + 1) + (A091645 (n + 1) - A091638 (n + 1))

end

end A091705.P16124543744101686780

/-! ## A091705.P11769145448941190049

`A164054(A004277(n+1))-A091638(n+1)`
-/

namespace A091705.P11769145448941190049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (A004277 (n + 1)).toNat - A091638 (n + 1)

end

end A091705.P11769145448941190049

/-!
# A091706: Number of primes less than 10^n having at least one digit 5.

The programs for A091706, there is no canonical definition to state claims against.
-/

/-! ## A091706.P13602502018327931160

`A006880(n+1)-A091639(n+1)`
-/

namespace A091706.P13602502018327931160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091639 (n + 1)

end

end A091706.P13602502018327931160

/-! ## A091706.P2829051717464630375

`∑[A006879(n+1)]-A091639(n+1)`
-/

namespace A091706.P2829051717464630375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091639 (n + 1)

end

end A091706.P2829051717464630375

/-! ## A091706.P4659429668415154291

`A122121(2*(n+1))-A091639(n+1)`
-/

namespace A091706.P4659429668415154291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091639 (n + 1)

end

end A091706.P4659429668415154291

/-! ## A091706.P12280756536802825816

`A091635(n+1)+A091645(n+1)-A091639(n+1)`
-/

namespace A091706.P12280756536802825816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091635 (n + 1) + (A091645 (n + 1) - A091639 (n + 1))

end

end A091706.P12280756536802825816

/-! ## A091706.P2450712106454782993

`A164054(A004277(n+1))-A091639(n+1)`
-/

namespace A091706.P2450712106454782993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (A004277 (n + 1)).toNat - A091639 (n + 1)

end

end A091706.P2450712106454782993

/-!
# A091707: Number of primes less than 10^n having at least one digit 6.

The programs for A091707, there is no canonical definition to state claims against.
-/

/-! ## A091707.P756757744639639253

`A006880(n+1)-A091640(n+1)`
-/

namespace A091707.P756757744639639253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091640 (n + 1)

end

end A091707.P756757744639639253

/-! ## A091707.P13258375381757512462

`∑[A006879(n+1)]-A091640(n+1)`
-/

namespace A091707.P13258375381757512462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091640 (n + 1)

end

end A091707.P13258375381757512462

/-! ## A091707.P1086787625451609557

`A090226(n+2)-1-A091640(n+1)`
-/

namespace A091707.P1086787625451609557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 2) - 1 - A091640 (n + 1)

end

end A091707.P1086787625451609557

/-! ## A091707.P10025320383462894019

`A122121(2*(n+1))-A091640(n+1)`
-/

namespace A091707.P10025320383462894019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091640 (n + 1)

end

end A091707.P10025320383462894019

/-! ## A091707.P5350740735964569881

`A226945(n+1)+A228724(n+1)-A091640(n+1)`
-/

namespace A091707.P5350740735964569881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226945 (n + 1) + (A228724 (n + 1) - A091640 (n + 1))

end

end A091707.P5350740735964569881

/-!
# A091708: Number of primes less than 10^n having at least one digit 7.

The programs for A091708, there is no canonical definition to state claims against.
-/

/-! ## A091708.P15687430246600819522

`A006880(n+1)-A091641(n+1)`
-/

namespace A091708.P15687430246600819522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091641 (n + 1)

end

end A091708.P15687430246600819522

/-! ## A091708.P16808919738941417202

`∑[A006879(n+1)]-A091641(n+1)`
-/

namespace A091708.P16808919738941417202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091641 (n + 1)

end

end A091708.P16808919738941417202

/-! ## A091708.P17799100620219298336

`A122121(2*(n+1))-A091641(n+1)`
-/

namespace A091708.P17799100620219298336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091641 (n + 1)

end

end A091708.P17799100620219298336

/-! ## A091708.P4824774897837643582

`A091634(n+1)+A091644(n+1)-A091641(n+1)`
-/

namespace A091708.P4824774897837643582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091634 (n + 1) + (A091644 (n + 1) - A091641 (n + 1))

end

end A091708.P4824774897837643582

/-! ## A091708.P17068221846677279411

`A164054(2*(n+1))-A091641(n+1)`
-/

namespace A091708.P17068221846677279411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (2 * (n + 1)) - A091641 (n + 1)

end

end A091708.P17068221846677279411

/-!
# A091709: Number of primes less than 10^n having at least one digit 8.

The programs for A091709, there is no canonical definition to state claims against.
-/

/-! ## A091709.P5294276735012952782

`A006880(n+1)-A091642(n+1)`
-/

namespace A091709.P5294276735012952782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091642 (n + 1)

end

end A091709.P5294276735012952782

/-! ## A091709.P4962330355022128452

`∑[A006879(n+1)]-A091642(n+1)`
-/

namespace A091709.P4962330355022128452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091642 (n + 1)

end

end A091709.P4962330355022128452

/-! ## A091709.P1300426566733967027

`A122121(2*(n+1))-A091642(n+1)`
-/

namespace A091709.P1300426566733967027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091642 (n + 1)

end

end A091709.P1300426566733967027

/-! ## A091709.P8727387746046094426

`A091635(n+1)+A091645(n+1)-A091642(n+1)`
-/

namespace A091709.P8727387746046094426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091635 (n + 1) + (A091645 (n + 1) - A091642 (n + 1))

end

end A091709.P8727387746046094426

/-! ## A091709.P18372187026713209239

`A091643(n+1)+A091710(n+1)-A091642(n+1)`
-/

namespace A091709.P18372187026713209239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091643 (n + 1) + (A091710 (n + 1) - A091642 (n + 1))

end

end A091709.P18372187026713209239

/-!
# A091710: Number of primes less than 10^n having at least one digit 9.

The programs for A091710, there is no canonical definition to state claims against.
-/

/-! ## A091710.P4230125431369283927

`A006880(n+1)-A091643(n+1)`
-/

namespace A091710.P4230125431369283927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A091643 (n + 1)

end

end A091710.P4230125431369283927

/-! ## A091710.P15989591175403183735

`∑[A006879(n+1)]-A091643(n+1)`
-/

namespace A091710.P15989591175403183735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091643 (n + 1)

end

end A091710.P15989591175403183735

/-! ## A091710.P9460020178264398768

`A122121(2*(n+1))-A091643(n+1)`
-/

namespace A091710.P9460020178264398768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A091643 (n + 1)

end

end A091710.P9460020178264398768

/-! ## A091710.P9464146059365505523

`A091634(n+1)+A091644(n+1)-A091643(n+1)`
-/

namespace A091710.P9464146059365505523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091634 (n + 1) + (A091644 (n + 1) - A091643 (n + 1))

end

end A091710.P9464146059365505523

/-! ## A091710.P5715606511928081418

`A164054(2*(n+1))-A091643(n+1)`
-/

namespace A091710.P5715606511928081418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164054 (2 * (n + 1)) - A091643 (n + 1)

end

end A091710.P5715606511928081418

/-!
# A091711: Exponent of 2 in (n^2)!.

The programs for A091711, the canonical program `A091711.P8626350613876079552` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091711 has offset 1).

The definition of A091711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091711.P8626350613876079552

`∑[Δ[n²]-Δ[A159918(n)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091711

/-- `∑[Δ[n²]-Δ[A159918(n)]]` -/
def P8626350613876079552.Spec : Prop :=
  ∀ n, P8626350613876079552.a n = A091711 (n + 1)

theorem P8626350613876079552.correct : P8626350613876079552.Spec := by
  intro n
  simp only [A091711, Nat.add_sub_cancel]

end A091711

/-! ## A091711.P11279103719725627172

`(n+1)²-A159918(n+1)`
-/

namespace A091711.P11279103719725627172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A159918 (n + 1)

end

end A091711.P11279103719725627172

namespace A091711

/-- `(n+1)²-A159918(n+1)` -/
def P11279103719725627172.Spec : Prop :=
  ∀ n, P11279103719725627172.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P2347615774515398649

`abs(A159918(n+1)-Δ[A000330(n)])`
-/

namespace A091711.P2347615774515398649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159918 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A091711.P2347615774515398649

namespace A091711

/-- `abs(A159918(n+1)-Δ[A000330(n)])` -/
def P2347615774515398649.Spec : Prop :=
  ∀ n, P2347615774515398649.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P13062367231675237791

`A000217(n+1)+A000217(n)-A159918(n+1)`
-/

namespace A091711.P13062367231675237791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A159918 (n + 1))

end

end A091711.P13062367231675237791

namespace A091711

/-- `A000217(n+1)+A000217(n)-A159918(n+1)` -/
def P13062367231675237791.Spec : Prop :=
  ∀ n, P13062367231675237791.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P13283741983060650892

`A004159(n+1)+A224977(n+1)-A159918(n+1)`
-/

namespace A091711.P13283741983060650892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1) + (A224977 (n + 1) - A159918 (n + 1))

end

end A091711.P13283741983060650892

namespace A091711

/-- `A004159(n+1)+A224977(n+1)-A159918(n+1)` -/
def P13283741983060650892.Spec : Prop :=
  ∀ n, P13283741983060650892.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P15332574473037288276

`(n+1)²-log2(A001316((n+1)²))`
-/

namespace A091711.P15332574473037288276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) - Real.logb 2 (A001316 ((n + 1) ^ 2) : ℝ)

end

end A091711.P15332574473037288276

namespace A091711

/-- `(n+1)²-log2(A001316((n+1)²))` -/
def P15332574473037288276.Spec : Prop :=
  ∀ n, P15332574473037288276.a n = (A091711 (n + 1) : ℝ)

end A091711

/-! ## A091711.P17223365524965169511

`A120738(∑[ceil(n/2)])`
-/

namespace A091711.P17223365524965169511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091711.P17223365524965169511

namespace A091711

/-- `A120738(∑[ceil(n/2)])` -/
def P17223365524965169511.Spec : Prop :=
  ∀ n, P17223365524965169511.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P10340167405729627888

`A005187(∑[n%2+n])`
-/

namespace A091711.P10340167405729627888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091711.P10340167405729627888

namespace A091711

/-- `A005187(∑[n%2+n])` -/
def P10340167405729627888.Spec : Prop :=
  ∀ n, P10340167405729627888.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P2968488827601107355

`A005187(∑[and(1, n)+n])`
-/

namespace A091711.P2968488827601107355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091711.P2968488827601107355

namespace A091711

/-- `A005187(∑[and(1, n)+n])` -/
def P2968488827601107355.Spec : Prop :=
  ∀ n, P2968488827601107355.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P17653434381712730444

`A005187(floor((n+1)²/2))`
-/

namespace A091711.P17653434381712730444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A091711.P17653434381712730444

namespace A091711

/-- `A005187(floor((n+1)²/2))` -/
def P17653434381712730444.Spec : Prop :=
  ∀ n, P17653434381712730444.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P4033866089476204153

`A005187(∑[or(1, n)])-char[2*n]`
-/

namespace A091711.P4033866089476204153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A091711.P4033866089476204153

namespace A091711

/-- `A005187(∑[or(1, n)])-char[2*n]` -/
def P4033866089476204153.Spec : Prop :=
  ∀ n, P4033866089476204153.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P6137380380781629742

`(n+1)²-A000120(∑[A028242(n)])`
-/

namespace A091711.P6137380380781629742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091711.P6137380380781629742

namespace A091711

/-- `(n+1)²-A000120(∑[A028242(n)])` -/
def P6137380380781629742.Spec : Prop :=
  ∀ n, P6137380380781629742.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P14794009947296870885

`(n+1)²-A000120(A004652(n+1))`
-/

namespace A091711.P14794009947296870885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000120 (A004652 (n + 1)).toNat

end

end A091711.P14794009947296870885

namespace A091711

/-- `(n+1)²-A000120(A004652(n+1))` -/
def P14794009947296870885.Spec : Prop :=
  ∀ n, P14794009947296870885.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P14133362578271326220

`∑{d}[A005187(2*A002620(n+1)), A000010(#)]`
-/

namespace A091711.P14133362578271326220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * A002620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A091711.P14133362578271326220

namespace A091711

/-- `∑{d}[A005187(2*A002620(n+1)), A000010(#)]` -/
def P14133362578271326220.Spec : Prop :=
  ∀ n, P14133362578271326220.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P14592455220665328780

`A005187((n+1)²)-(n+1)²`
-/

namespace A091711.P14592455220665328780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A091711.P14592455220665328780

namespace A091711

/-- `A005187((n+1)²)-(n+1)²` -/
def P14592455220665328780.Spec : Prop :=
  ∀ n, P14592455220665328780.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P10019599891327405043

`(n+1)²-A001222(A278222((n+1)²))`
-/

namespace A091711.P10019599891327405043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A001222 (A278222 ((n + 1) ^ 2)).toNat

end

end A091711.P10019599891327405043

namespace A091711

/-- `(n+1)²-A001222(A278222((n+1)²))` -/
def P10019599891327405043.Spec : Prop :=
  ∀ n, P10019599891327405043.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P2047942793816205029

`A386206(A159918(n+1)+A000217(n+1))`
-/

namespace A091711.P2047942793816205029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386206 (A159918 (n + 1) + A000217 (n + 1)).toNat

end

end A091711.P2047942793816205029

namespace A091711

/-- `A386206(A159918(n+1)+A000217(n+1))` -/
def P2047942793816205029.Spec : Prop :=
  ∀ n, P2047942793816205029.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P6040625604732902027

`A283208(A110654(n²)+n)`
-/

namespace A091711.P6040625604732902027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283208 (A110654 (n ^ 2) + (n : ℤ)).toNat

end

end A091711.P6040625604732902027

namespace A091711

/-- `A283208(A110654(n²)+n)` -/
def P6040625604732902027.Spec : Prop :=
  ∀ n, P6040625604732902027.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P3854750258503928069

`A011371((n+1)²)`
-/

namespace A091711.P3854750258503928069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 ((n + 1) ^ 2)

end

end A091711.P3854750258503928069

namespace A091711

/-- `A011371((n+1)²)` -/
def P3854750258503928069.Spec : Prop :=
  ∀ n, P3854750258503928069.a n = A091711 (n + 1)

end A091711

/-! ## A091711.P10778225074080254532

`A113474((n+1)²)-1`
-/

namespace A091711.P10778225074080254532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113474 ((n + 1) ^ 2) - 1

end

end A091711.P10778225074080254532

namespace A091711

/-- `A113474((n+1)²)-1` -/
def P10778225074080254532.Spec : Prop :=
  ∀ n, P10778225074080254532.a n = A091711 (n + 1)

end A091711

/-!
# A091712: a(n) = 6*(2n-4)!/((n-2)!n!), if n>2. a(0) = 1, a(1) = a(2) = 2.

The programs for A091712, the canonical program `A091712.P11823060841128041670` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091712 has offset 0).

The definition of A091712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091712.P11823060841128041670

`a(n-1)*(4*n-10)/n` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091712

/-- `a(n-1)*(4*n-10)/n` -/
def P11823060841128041670.Spec : Prop :=
  ∀ n, P11823060841128041670.a n = (A091712 n : ℚ)

end A091712

/-! ## A091712.P5851685016132604331

`(4-10/n)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A091712.P5851685016132604331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  (4 - 10 / (n : ℚ)) * a (n - 1)

end

end A091712.P5851685016132604331

namespace A091712

/-- `(4-10/n)*a(n-1)` -/
def P5851685016132604331.Spec : Prop :=
  ∀ n, P5851685016132604331.a n = (A091712 n : ℚ)

end A091712

/-! ## A091712.P4574569770926672827

`A007054(n-a(2%n))` with `a(0)=1, a(1)=2`
-/

namespace A091712.P4574569770926672827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007054 ((n : ℤ) - a (2 % n)).toNat

end

end A091712.P4574569770926672827

namespace A091712

/-- `A007054(n-a(2%n))` -/
def P4574569770926672827.Spec : Prop :=
  ∀ n, P4574569770926672827.a n = A091712 n

end A091712

/-! ## A091712.P14153312077427660918

`A182534(A350660(n+2))`
-/

namespace A091712.P14153312077427660918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182534 (A350660 (n + 2)).toNat

end

end A091712.P14153312077427660918

namespace A091712

/-- `A182534(A350660(n+2))` -/
def P14153312077427660918.Spec : Prop :=
  ∀ n, P14153312077427660918.a n = A091712 n

end A091712

/-! ## A091712.P7900474976896667567

`A182534(A046698(n)+A000124(n))`
-/

namespace A091712.P7900474976896667567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182534 (A046698 n + A000124 n).toNat

end

end A091712.P7900474976896667567

namespace A091712

/-- `A182534(A046698(n)+A000124(n))` -/
def P7900474976896667567.Spec : Prop :=
  ∀ n, P7900474976896667567.a n = A091712 n

end A091712

/-!
# A091713: G.f. A(x) satisfies A(x) = x + x*A(A(A(x))).

The programs for A091713, there is no canonical definition to state claims against.
-/

/-! ## A091713.P9646859169783872212

`A396992(∑[n+2])`
-/

namespace A091713.P9646859169783872212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396992 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091713.P9646859169783872212

/-! ## A091713.P917240611693884820

`A233970(A300668(n))`
-/

namespace A091713.P917240611693884820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A300668 n).toNat

end

end A091713.P917240611693884820

/-!
# A091715: Numerator Q of probability P = Q(n)/365^(n-1) that three or more out of n people share the same birthday.

The programs for A091715, there is no canonical definition to state claims against.
-/

/-! ## A091715.P17213090805610101475

`A091674(n+3)-A091673(n+3)`
-/

namespace A091715.P17213090805610101475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091674 (n + 3) - A091673 (n + 3)

end

end A091715.P17213090805610101475

/-!
# A091717: Triangular array read by rows: Greatest common divisors of values of the partition function P: T(n,k) = gcd(P(n), P(k)), 0 <= k < n.

The programs for A091717, there is no canonical definition to state claims against.
-/

/-! ## A091717.P1771884528686728469

`gcd(A000041(A002024(n+1)), A140207(n))`
-/

namespace A091717.P1771884528686728469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 (A002024 (n + 1)).toNat) (A140207 n)

end

end A091717.P1771884528686728469

/-! ## A091717.P17389958390224565300

`gcd(A140207(n), A211980(n+1))`
-/

namespace A091717.P17389958390224565300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140207 n) (A211980 (n + 1))

end

end A091717.P17389958390224565300

/-! ## A091717.P4164750851569958211

`A323719(A132924(n+2))`
-/

namespace A091717.P4164750851569958211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323719 (A132924 (n + 2)).toNat

end

end A091717.P4164750851569958211

/-! ## A091717.P5032916817496783505

`gcd(A361561(3*n+4)-n, A197350(n+1))`
-/

namespace A091717.P5032916817496783505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A361561 (3 * n + 4) - (n : ℤ)) (A197350 (n + 1))

end

end A091717.P5032916817496783505

/-! ## A091717.P18126016467080720169

`gcd(A007967(n), A007967(A280863(n)))`
-/

namespace A091717.P18126016467080720169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007967 n) (A007967 (A280863 n).toNat)

end

end A091717.P18126016467080720169

/-!
# A091719: Greatest common divisors of consecutive partition numbers.

The programs for A091719, there is no canonical definition to state claims against.
-/

/-! ## A091719.P14161334501884263082

`gcd(A000041(n), A000041(n+1))`
-/

namespace A091719.P14161334501884263082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 n) (A000041 (n + 1))

end

end A091719.P14161334501884263082

/-! ## A091719.P17054172232227054156

`gcd(A000041(n), Δ[A000041(n)])`
-/

namespace A091719.P17054172232227054156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 n) (f1 (n + 1) - f1 n)

end

end A091719.P17054172232227054156

/-! ## A091719.P13492567583861576040

`gcd(A000065(n)+1, Δ[A000065(n)])`
-/

namespace A091719.P13492567583861576040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000065 n + 1) (f1 (n + 1) - f1 n)

end

end A091719.P13492567583861576040

/-! ## A091719.P11967329367951496889

`gcd(A139582(n)/2, Δ[A139582(n)/2])`
-/

namespace A091719.P11967329367951496889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2)) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A091719.P11967329367951496889

/-! ## A091719.P18263991439672957963

`gcd(A139582(n)/2, Δ[A000070(n)])`
-/

namespace A091719.P18263991439672957963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2)) (f1 (n + 1) - f1 n)

end

end A091719.P18263991439672957963

/-! ## A091719.P4554147299241901275

`gcd(A138879(n+1), A183012(n+1))`
-/

namespace A091719.P4554147299241901275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138879 (n + 1)) (A183012 (n + 1))

end

end A091719.P4554147299241901275

/-! ## A091719.P15896121539746521789

`gcd(Δ[A183011(n)], A138879(n+1))`
-/

namespace A091719.P15896121539746521789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A138879 (n + 1))

end

end A091719.P15896121539746521789

/-! ## A091719.P3472743367415243491

`gcd(record[A035363(n)], A035363(2*n))`
-/

namespace A091719.P3472743367415243491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A035363 (2 * n))

end

end A091719.P3472743367415243491

/-! ## A091719.P3692399676094016049

`A091717(∑[n+1])`
-/

namespace A091719.P3692399676094016049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091717 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091719.P3692399676094016049

/-!
# A091720: Babylonian sexagesimal (base 60) expansion of 1/7.

The programs for A091720, the canonical program `A091720.P5511819792072779474` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091720 has offset 0).

The definition of A091720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091720.P5511819792072779474

`a(n-3)` with `a(0)=8, a(1)=34, a(2)=17`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091720

/-- `a(n-3)` -/
def P5511819792072779474.Spec : Prop :=
  ∀ n, (P5511819792072779474.a n : ℤ) = A091720 n

theorem P5511819792072779474.correct : P5511819792072779474.Spec := by
  intro n
  simp only [A091720]

end A091720

/-!
# A091721: Babylonian sexagesimal (base 60) expansion of 1/11.

The programs for A091721, the canonical program `A091721.P16645504143072910900` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091721 has offset 0).

The definition of A091721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091721.P16645504143072910900

`a(n-5)` with `a(0)=5, a(1)=27, a(2)=16, a(3)=21, a(4)=49`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091721

/-- `a(n-5)` -/
def P16645504143072910900.Spec : Prop :=
  ∀ n, (P16645504143072910900.a n : ℤ) = A091721 n

theorem P16645504143072910900.correct : P16645504143072910900.Spec := by
  intro n
  simp only [A091721]

end A091721

/-!
# A091722: Babylonian sexagesimal (base 60) expansion of 1/13.

The programs for A091722, the canonical program `A091722.P13118816645255084098` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091722 has offset 0).

The definition of A091722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091722.P13118816645255084098

`a(n-4)` with `a(0)=4, a(1)=36, a(2)=55, a(3)=23`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091722

/-- `a(n-4)` -/
def P13118816645255084098.Spec : Prop :=
  ∀ n, (P13118816645255084098.a n : ℤ) = A091722 n

theorem P13118816645255084098.correct : P13118816645255084098.Spec := by
  intro n
  simp only [A091722]

end A091722

/-!
# A091726: Poincaré series [or Poincare series] (or Molien series) for a certain five-fold wreath product P_5.

The programs for A091726, there is no canonical definition to state claims against.
-/

/-! ## A091726.P16823679250316483689

`A185284(A067661(n)+5)+A027633(n)`
-/

namespace A091726.P16823679250316483689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A067661 n + 5).toNat + A027633 n

end

end A091726.P16823679250316483689

/-! ## A091726.P7869221050042646723

`A185284(A000931(n))+A027633(n)`
-/

namespace A091726.P7869221050042646723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000931 n).toNat + A027633 n

end

end A091726.P7869221050042646723

/-! ## A091726.P4641759583543726792

`A185284(A001301(n))+A027633(n)`
-/

namespace A091726.P4641759583543726792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A001301 n).toNat + A027633 n

end

end A091726.P4641759583543726792

/-! ## A091726.P2860173041224618945

`A185284(A004273(n))+A027633(n)`
-/

namespace A091726.P2860173041224618945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A004273 n).toNat + A027633 n

end

end A091726.P2860173041224618945

/-! ## A091726.P13706620139638515623

`A185284(A214673(n))+A027633(n)`
-/

namespace A091726.P13706620139638515623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A214673 n).toNat + A027633 n

end

end A091726.P13706620139638515623

/-!
# A091727: Norms of prime ideals of Z[sqrt(-5)].

The programs for A091727, there is no canonical definition to state claims against.
-/

/-! ## A091727.P13601764517240628348

`∪[A091729(n+1), A106865(n+1)]`
-/

namespace A091727.P13601764517240628348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091727.P13601764517240628348

/-! ## A091727.P2859310200986910720

`∪[A091729(n+1), A240920(n+1)]`
-/

namespace A091727.P2859310200986910720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091727.P2859310200986910720

/-! ## A091727.P14899882302598434913

`∪[A091729(n+1), A385225(n+1)]`
-/

namespace A091727.P14899882302598434913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091727.P14899882302598434913

/-! ## A091727.P12930972092979131562

`lt[0, A091728(n+2)]+2`
-/

namespace A091727.P12930972092979131562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091728 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A091727.P12930972092979131562

/-! ## A091727.P5897513009996931611

`lt[0, A091728(A028310(n))]`
-/

namespace A091727.P5897513009996931611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091728 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091727.P5897513009996931611

/-! ## A091727.P17136207605110298686

`A020725(lt[0, A091728(n+1)])`
-/

namespace A091727.P17136207605110298686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A091727.P17136207605110298686

/-!
# A091728: Number of prime ideals of Z[sqrt(-5)] of norm n.

The programs for A091728, the canonical program `A091728.P1788854672037593812` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091728 has offset 1).

The definition of A091728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091728.P8743943460772602797

`A010051(n+1)*A035170(A115060(n+1))`
-/

namespace A091728.P8743943460772602797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A035170 (A115060 (n + 1)).toNat

end

end A091728.P8743943460772602797

namespace A091728

/-- `A010051(n+1)*A035170(A115060(n+1))` -/
def P8743943460772602797.Spec : Prop :=
  ∀ n, P8743943460772602797.a n = A091728 (n + 1)

end A091728

/-! ## A091728.P1788854672037593812

`A035170(n+1)*A049084(A076078(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A091728

/-- `A035170(n+1)*A049084(A076078(n+1))` -/
def P1788854672037593812.Spec : Prop :=
  ∀ n, P1788854672037593812.a n = A091728 (n + 1)

theorem P1788854672037593812.correct : P1788854672037593812.Spec := by
  intro n
  simp only [A091728, Nat.add_sub_cancel]

end A091728

/-! ## A091728.P13665731807054960605

`A035170(n+1)*A049084(A100577(n+1))`
-/

namespace A091728.P13665731807054960605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (n + 1) * A049084 (A100577 (n + 1)).toNat

end

end A091728.P13665731807054960605

namespace A091728

/-- `A035170(n+1)*A049084(A100577(n+1))` -/
def P13665731807054960605.Spec : Prop :=
  ∀ n, P13665731807054960605.a n = A091728 (n + 1)

end A091728

/-! ## A091728.P5710491941933758581

`lcm(A049084(A076078(n+1)), A111949(n+1))`
-/

namespace A091728.P5710491941933758581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049084 (A076078 (n + 1)).toNat) (A111949 (n + 1))

end

end A091728.P5710491941933758581

namespace A091728

/-- `lcm(A049084(A076078(n+1)), A111949(n+1))` -/
def P5710491941933758581.Spec : Prop :=
  ∀ n, (P5710491941933758581.a n : ℤ) = A091728 (n + 1)

end A091728

/-! ## A091728.P16521079819773213022

`lcm(A049084(A100577(n+1)), A143323(n+1))`
-/

namespace A091728.P16521079819773213022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049084 (A100577 (n + 1)).toNat) (A143323 (n + 1))

end

end A091728.P16521079819773213022

namespace A091728

/-- `lcm(A049084(A100577(n+1)), A143323(n+1))` -/
def P16521079819773213022.Spec : Prop :=
  ∀ n, (P16521079819773213022.a n : ℤ) = A091728 (n + 1)

end A091728

/-! ## A091728.P5062825395742458856

`A049084(A076078(n+1))*A129390(A025480(n))`
-/

namespace A091728.P5062825395742458856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A076078 (n + 1)).toNat * A129390 (A025480 n).toNat

end

end A091728.P5062825395742458856

namespace A091728

/-- `A049084(A076078(n+1))*A129390(A025480(n))` -/
def P5062825395742458856.Spec : Prop :=
  ∀ n, P5062825395742458856.a n = A091728 (n + 1)

end A091728

/-! ## A091728.P2246950087745304117

`A035183(A132740(n+1))*A205745(A100577(n+1))`
-/

namespace A091728.P2246950087745304117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A132740 (n + 1)).toNat * A205745 (A100577 (n + 1)).toNat

end

end A091728.P2246950087745304117

namespace A091728

/-- `A035183(A132740(n+1))*A205745(A100577(n+1))` -/
def P2246950087745304117.Spec : Prop :=
  ∀ n, P2246950087745304117.a n = A091728 (n + 1)

end A091728

/-! ## A091728.P3850854901703388708

`A035170(n+1)*A151810(A056897(n))`
-/

namespace A091728.P3850854901703388708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (n + 1) * A151810 (A056897 n).toNat

end

end A091728.P3850854901703388708

namespace A091728

/-- `A035170(n+1)*A151810(A056897(n))` -/
def P3850854901703388708.Spec : Prop :=
  ∀ n, P3850854901703388708.a n = A091728 (n + 1)

end A091728

/-! ## A091728.P1731358688582336828

`A124233(n+1)*A151810(A056897(n))`
-/

namespace A091728.P1731358688582336828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124233 (n + 1) * A151810 (A056897 n).toNat

end

end A091728.P1731358688582336828

namespace A091728

/-- `A124233(n+1)*A151810(A056897(n))` -/
def P1731358688582336828.Spec : Prop :=
  ∀ n, P1731358688582336828.a n = A091728 (n + 1)

end A091728

/-! ## A091728.P12574439538895871479

`lcm(A143323(n+1), A151810(A056897(n)))`
-/

namespace A091728.P12574439538895871479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143323 (n + 1)) (A151810 (A056897 n).toNat)

end

end A091728.P12574439538895871479

namespace A091728

/-- `lcm(A143323(n+1), A151810(A056897(n)))` -/
def P12574439538895871479.Spec : Prop :=
  ∀ n, (P12574439538895871479.a n : ℤ) = A091728 (n + 1)

end A091728

/-! ## A091728.P11606237751925419471

`A129390(A025480(n))*A151810(A056897(n))`
-/

namespace A091728.P11606237751925419471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129390 (A025480 n).toNat * A151810 (A056897 n).toNat

end

end A091728.P11606237751925419471

namespace A091728

/-- `A129390(A025480(n))*A151810(A056897(n))` -/
def P11606237751925419471.Spec : Prop :=
  ∀ n, P11606237751925419471.a n = A091728 (n + 1)

end A091728

/-! ## A091728.P4399970372104047357

`A151810(A056897(n))*A124233(A153152(n))`
-/

namespace A091728.P4399970372104047357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 (A056897 n).toNat * A124233 (A153152 n).toNat

end

end A091728.P4399970372104047357

namespace A091728

/-- `A151810(A056897(n))*A124233(A153152(n))` -/
def P4399970372104047357.Spec : Prop :=
  ∀ n, P4399970372104047357.a n = A091728 (n + 1)

end A091728

/-! ## A091728.P5199354864429494962

`A035183(A132740(n+1))*A151810(A056897(n))`
-/

namespace A091728.P5199354864429494962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A132740 (n + 1)).toNat * A151810 (A056897 n).toNat

end

end A091728.P5199354864429494962

namespace A091728

/-- `A035183(A132740(n+1))*A151810(A056897(n))` -/
def P5199354864429494962.Spec : Prop :=
  ∀ n, P5199354864429494962.a n = A091728 (n + 1)

end A091728

/-! ## A091728.P17699898362160537501

`A010051(n+1)*A035170(A242415(n+1))`
-/

namespace A091728.P17699898362160537501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A035170 (A242415 (n + 1)).toNat

end

end A091728.P17699898362160537501

namespace A091728

/-- `A010051(n+1)*A035170(A242415(n+1))` -/
def P17699898362160537501.Spec : Prop :=
  ∀ n, P17699898362160537501.a n = A091728 (n + 1)

end A091728

/-!
# A091729: Norms of prime elements of Z[sqrt(-5)].

The programs for A091729, there is no canonical definition to state claims against.
-/

/-! ## A091729.P5930426684887591262

`∩[A085759(n+1), A091727(n+1)]`
-/

namespace A091729.P5930426684887591262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P5930426684887591262

/-! ## A091729.P17656528853359549967

`∩[A091727(n+1), A091730(n+1)]`
-/

namespace A091729.P17656528853359549967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P17656528853359549967

/-! ## A091729.P2066101132056490479

`∩[A091727(n+1), A155565(n+1)]`
-/

namespace A091729.P2066101132056490479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P2066101132056490479

/-! ## A091729.P4698560661746957832

`∩[A091727(n+1), A389197(n+1)]`
-/

namespace A091729.P4698560661746957832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P4698560661746957832

/-! ## A091729.P7775644432888492091

`∩[A057653(n+1), A091727(n+1)]`
-/

namespace A091729.P7775644432888492091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P7775644432888492091

/-! ## A091729.P10067734702718894497

`∩[A020669(n+1), A091727(n+1)]`
-/

namespace A091729.P10067734702718894497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P10067734702718894497

/-! ## A091729.P13202772750801931579

`filter[A091727(n+1), A354030(#)]`
-/

namespace A091729.P13202772750801931579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A091729.P13202772750801931579

/-! ## A091729.P6357698562140939603

`filter[A091727(n+2), A229062(#)]`
-/

namespace A091729.P6357698562140939603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A091729.P6357698562140939603

/-! ## A091729.P16724115094177114298

`∩[A031363(n+1), A091727(n+1)]`
-/

namespace A091729.P16724115094177114298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P16724115094177114298

/-! ## A091729.P9566625480972897186

`∩[A087445(n+1), A091727(n+1)]`
-/

namespace A091729.P9566625480972897186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P9566625480972897186

/-! ## A091729.P2675331374656143057

`∩[A020668(n+1), A091727(n+1)]`
-/

namespace A091729.P2675331374656143057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P2675331374656143057

/-! ## A091729.P10850542744283711714

`lt[(2*n+1-n)%4, A091728(n+2)]+2`
-/

namespace A091729.P10850542744283711714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) - (n : ℤ)) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091728 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A091729.P10850542744283711714

/-! ## A091729.P755214821550767907

`∩[A091727(n+1), A016813(n)]`
-/

namespace A091729.P755214821550767907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P755214821550767907

/-! ## A091729.P9342412664530228695

`∩[A004766(n+1), A091727(n+1)]`
-/

namespace A091729.P9342412664530228695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P9342412664530228695

/-! ## A091729.P10492407513236638426

`∩[A001983(n+1), A091727(n+1)]`
-/

namespace A091729.P10492407513236638426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P10492407513236638426

/-! ## A091729.P5921359327872855794

`∩[A063213(n+1), A091727(n+1)]`
-/

namespace A091729.P5921359327872855794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P5921359327872855794

/-! ## A091729.P17508809579691486654

`∩[A091727(n+1), A174398(n+1)]`
-/

namespace A091729.P17508809579691486654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P17508809579691486654

/-! ## A091729.P182842001624198660

`∩[A091727(n+1), A277549(n+1)]`
-/

namespace A091729.P182842001624198660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P182842001624198660

/-! ## A091729.P18402305469437193662

`∩[A091727(n+1), A304868(n+1)]`
-/

namespace A091729.P18402305469437193662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P18402305469437193662

/-! ## A091729.P6657483154244460861

`∩[A047438(n+1), A091727(n+1)]`
-/

namespace A091729.P6657483154244460861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091729.P6657483154244460861

/-!
# A091730: Norms of irreducible elements of Z[sqrt(-5)].

The programs for A091730, there is no canonical definition to state claims against.
-/

/-! ## A091730.P2063701283062924053

`lt[0, A091731(n)]`
-/

namespace A091730.P2063701283062924053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091730.P2063701283062924053

/-!
# A091731: Number of irreducible elements of Z[sqrt(-5)] of norm n (counting a and -a once only).

The programs for A091731, there is no canonical definition to state claims against.
-/

/-! ## A091731.P5974666812449797289

`and(A004526(A033718(n)), A273006(n+1))`
-/

namespace A091731.P5974666812449797289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004526 (A033718 n).toNat) (A273006 (n + 1))

end

end A091731.P5974666812449797289

/-!
# A091732: Iphi(n): infinitary analog of Euler's phi function.

The programs for A091732, there is no canonical definition to state claims against.
-/

/-! ## A091732.P12690900053286786954

`n+1-A323413(n+1)`
-/

namespace A091732.P12690900053286786954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A323413 (n + 1)

end

end A091732.P12690900053286786954

/-! ## A091732.P10613175659199692599

`n-A023443(A323413(n+1))`
-/

namespace A091732.P10613175659199692599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A323413 (n + 1)).toNat

end

end A091732.P10613175659199692599

/-! ## A091732.P15153891440413376571

`A340087(n+1)*A340088(n+1)`
-/

namespace A091732.P15153891440413376571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340087 (n + 1) * A340088 (n + 1)

end

end A091732.P15153891440413376571

/-! ## A091732.P8874993307671396410

`A001057(2*A323413(n+1))+n+1`
-/

namespace A091732.P8874993307671396410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A323413 (n + 1)).toNat + (n + 1 : ℤ)

end

end A091732.P8874993307671396410

/-! ## A091732.P8868725990223162704

`A001057(A323413(n+1)+A323413(n+1))+n+1`
-/

namespace A091732.P8868725990223162704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A323413 (n + 1) + A323413 (n + 1)).toNat + (n + 1 : ℤ)

end

end A091732.P8868725990223162704

/-!
# A091733: a(n) is the least m > 1 such that m^3 = 1 (mod n).

The programs for A091733, there is no canonical definition to state claims against.
-/

/-! ## A091733.P17934839748627183927

`root(A076989(n+1), 3)`
-/

namespace A091733.P17934839748627183927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076989 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A091733.P17934839748627183927

/-! ## A091733.P1965062650270654307

`root((n+1)*A076947(n+1)+1, 3)`
-/

namespace A091733.P1965062650270654307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A076947 (n + 1) + 1 : ℝ) ^ (1 / (3 : ℝ))

end

end A091733.P1965062650270654307

/-! ## A091733.P2160990792940988228

`A076989(n+1)^(A124625(2*n)/3)`
-/

namespace A091733.P2160990792940988228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076989 (n + 1) : ℝ) ^ ((A124625 (2 * n) : ℚ) / 3 : ℝ)

end

end A091733.P2160990792940988228

/-! ## A091733.P2017961552094582878

`A076989(n+1)^3^A008683(A098413(n+1))`
-/

namespace A091733.P2017961552094582878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076989 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (A008683 (A098413 (n + 1)).toNat : ℤ) : ℝ)

end

end A091733.P2017961552094582878

/-! ## A091733.P16139037527989768192

`(A076989(n+1)^(3/9))%A170850(n)`
-/

namespace A091733.P16139037527989768192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A076989 (n + 1) : ℝ) ^ ((3 : ℚ) / 9 : ℝ))) (A170850 n)

end

end A091733.P16139037527989768192

/-!
# A091735: Primes arising in the first row of array in A091734.

The programs for A091735, the canonical program `A091735.P17263233188222101787` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091735 has offset 1).

The definition of A091735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091735.P17263233188222101787

`∪[A031372(n+1), A031906(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091735

/-- `∪[A031372(n+1), A031906(n+1)]` -/
def P17263233188222101787.Spec : Prop :=
  ∀ n, (P17263233188222101787.a n : ℤ) = A091735 (n + 1)

theorem P17263233188222101787.correct : P17263233188222101787.Spec := by
  intro n
  simp only [A091735, Nat.add_sub_cancel]

end A091735

/-! ## A091735.P7534678846497974154

`A031368(∑[n%2+1])`
-/

namespace A091735.P7534678846497974154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091735.P7534678846497974154

namespace A091735

/-- `A031368(∑[n%2+1])` -/
def P7534678846497974154.Spec : Prop :=
  ∀ n, P7534678846497974154.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P2133140877118759020

`A031368(∑[gcd(2, n+1)])`
-/

namespace A091735.P2133140877118759020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091735.P2133140877118759020

namespace A091735

/-- `A031368(∑[gcd(2, n+1)])` -/
def P2133140877118759020.Spec : Prop :=
  ∀ n, P2133140877118759020.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P32388441455406718

`A031368(∑[and(1, n)+1])`
-/

namespace A091735.P32388441455406718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091735.P32388441455406718

namespace A091735

/-- `A031368(∑[and(1, n)+1])` -/
def P32388441455406718.Spec : Prop :=
  ∀ n, P32388441455406718.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P3529272209842345580

`A031368(∑[2^and(1, n)])`
-/

namespace A091735.P3529272209842345580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091735.P3529272209842345580

namespace A091735

/-- `A031368(∑[2^and(1, n)])` -/
def P3529272209842345580.Spec : Prop :=
  ∀ n, P3529272209842345580.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P9006329126510199719

`A031368(A032766(n+1))`
-/

namespace A091735.P9006329126510199719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A032766 (n + 1)).toNat

end

end A091735.P9006329126510199719

namespace A091735

/-- `A031368(A032766(n+1))` -/
def P9006329126510199719.Spec : Prop :=
  ∀ n, P9006329126510199719.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P16079625986350247738

`A000040(A007310(n+1))`
-/

namespace A091735.P16079625986350247738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007310 (n + 1)).toNat

end

end A091735.P16079625986350247738

namespace A091735

/-- `A000040(A007310(n+1))` -/
def P16079625986350247738.Spec : Prop :=
  ∀ n, P16079625986350247738.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P964570760475694005

`A008578(A047238(n+2))`
-/

namespace A091735.P964570760475694005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A047238 (n + 2)).toNat

end

end A091735.P964570760475694005

namespace A091735

/-- `A008578(A047238(n+2))` -/
def P964570760475694005.Spec : Prop :=
  ∀ n, P964570760475694005.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P18016873492627047625

`A158611(A047241(n+2))`
-/

namespace A091735.P18016873492627047625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A047241 (n + 2)).toNat

end

end A091735.P18016873492627047625

namespace A091735

/-- `A158611(A047241(n+2))` -/
def P18016873492627047625.Spec : Prop :=
  ∀ n, P18016873492627047625.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P2147491386985152143

`A000040(record[A263449(n)]+n)`
-/

namespace A091735.P2147491386985152143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A091735.P2147491386985152143

namespace A091735

/-- `A000040(record[A263449(n)]+n)` -/
def P2147491386985152143.Spec : Prop :=
  ∀ n, P2147491386985152143.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P17835625986029147219

`A000040(comp[A004525(n)+n])`
-/

namespace A091735.P17835625986029147219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A091735.P17835625986029147219

namespace A091735

/-- `A000040(comp[A004525(n)+n])` -/
def P17835625986029147219.Spec : Prop :=
  ∀ n, P17835625986029147219.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P12320571261237202422

`A008578(A007310(n+1)+1)`
-/

namespace A091735.P12320571261237202422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007310 (n + 1) + 1).toNat

end

end A091735.P12320571261237202422

namespace A091735

/-- `A008578(A007310(n+1)+1)` -/
def P12320571261237202422.Spec : Prop :=
  ∀ n, P12320571261237202422.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P341749985538721149

`A000040(A047233(n+1)+1)`
-/

namespace A091735.P341749985538721149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A047233 (n + 1) + 1).toNat

end

end A091735.P341749985538721149

namespace A091735

/-- `A000040(A047233(n+1)+1)` -/
def P341749985538721149.Spec : Prop :=
  ∀ n, P341749985538721149.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P11536502267029793820

`A000040(A047238(n+2)-1)`
-/

namespace A091735.P11536502267029793820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A047238 (n + 2) - 1).toNat

end

end A091735.P11536502267029793820

namespace A091735

/-- `A000040(A047238(n+2)-1)` -/
def P11536502267029793820.Spec : Prop :=
  ∀ n, P11536502267029793820.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P298341356833003761

`A000040(A047241(n+2)-2)`
-/

namespace A091735.P298341356833003761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A047241 (n + 2) - 2).toNat

end

end A091735.P298341356833003761

namespace A091735

/-- `A000040(A047241(n+2)-2)` -/
def P298341356833003761.Spec : Prop :=
  ∀ n, P298341356833003761.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P2422260089119105086

`A000040(A047260(2*(n+1)))`
-/

namespace A091735.P2422260089119105086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A047260 (2 * (n + 1))).toNat

end

end A091735.P2422260089119105086

namespace A091735

/-- `A000040(A047260(2*(n+1)))` -/
def P2422260089119105086.Spec : Prop :=
  ∀ n, P2422260089119105086.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P6630283764401233019

`A000040(A047269(2*(n+1)))`
-/

namespace A091735.P6630283764401233019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A047269 (2 * (n + 1))).toNat

end

end A091735.P6630283764401233019

namespace A091735

/-- `A000040(A047269(2*(n+1)))` -/
def P6630283764401233019.Spec : Prop :=
  ∀ n, P6630283764401233019.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P3650668883822958951

`A000040(A014601(n)+n+1)`
-/

namespace A091735.P3650668883822958951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014601 n + (n + 1 : ℤ)).toNat

end

end A091735.P3650668883822958951

namespace A091735

/-- `A000040(A014601(n)+n+1)` -/
def P3650668883822958951.Spec : Prop :=
  ∀ n, P3650668883822958951.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P10728442640565836720

`A000040(A042948(n+1)+n)`
-/

namespace A091735.P10728442640565836720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A042948 (n + 1) + (n : ℤ)).toNat

end

end A091735.P10728442640565836720

namespace A091735

/-- `A000040(A042948(n+1)+n)` -/
def P10728442640565836720.Spec : Prop :=
  ∀ n, P10728442640565836720.a n = A091735 (n + 1)

end A091735

/-! ## A091735.P11204951473757490323

`A000040(A047452(n+1)-n)`
-/

namespace A091735.P11204951473757490323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A047452 (n + 1) - (n : ℤ)).toNat

end

end A091735.P11204951473757490323

namespace A091735

/-- `A000040(A047452(n+1)-n)` -/
def P11204951473757490323.Spec : Prop :=
  ∀ n, P11204951473757490323.a n = A091735 (n + 1)

end A091735

/-!
# A091738: Primes arising in the second row of array in A091734.

The programs for A091738, the canonical program `A091738.P896094416976946259` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091738 has offset 1).

The definition of A091738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091738.P896094416976946259

`∪[A031380(n+1), A031393(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091738

/-- `∪[A031380(n+1), A031393(n+1)]` -/
def P896094416976946259.Spec : Prop :=
  ∀ n, (P896094416976946259.a n : ℤ) = A091738 (n + 1)

theorem P896094416976946259.correct : P896094416976946259.Spec := by
  intro n
  simp only [A091738, Nat.add_sub_cancel]

end A091738

/-! ## A091738.P5196455625656372936

`A031215(comp[3*n])`
-/

namespace A091738.P5196455625656372936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A091738.P5196455625656372936

namespace A091738

/-- `A031215(comp[3*n])` -/
def P5196455625656372936.Spec : Prop :=
  ∀ n, P5196455625656372936.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P9920169297976430502

`A065091(or(1, 3*n))`
-/

namespace A091738.P9920169297976430502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (Nat.lor 1 (3 * n))

end

end A091738.P9920169297976430502

namespace A091738

/-- `A065091(or(1, 3*n))` -/
def P9920169297976430502.Spec : Prop :=
  ∀ n, P9920169297976430502.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P11123258320090555578

`A000040(2*comp[3*n])`
-/

namespace A091738.P11123258320090555578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A091738.P11123258320090555578

namespace A091738

/-- `A000040(2*comp[3*n])` -/
def P11123258320090555578.Spec : Prop :=
  ∀ n, P11123258320090555578.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P18299419274862724772

`A006005(2*comp[3*n])`
-/

namespace A091738.P18299419274862724772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A091738.P18299419274862724772

namespace A091738

/-- `A006005(2*comp[3*n])` -/
def P18299419274862724772.Spec : Prop :=
  ∀ n, P18299419274862724772.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P14279503005276218867

`A065091(or(1, n)+n+n)`
-/

namespace A091738.P14279503005276218867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (Nat.lor 1 n + n + n)

end

end A091738.P14279503005276218867

namespace A091738

/-- `A065091(or(1, n)+n+n)` -/
def P14279503005276218867.Spec : Prop :=
  ∀ n, P14279503005276218867.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P10389094367648619436

`A065091(A047241(n+1))`
-/

namespace A091738.P10389094367648619436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A047241 (n + 1)).toNat

end

end A091738.P10389094367648619436

namespace A091738

/-- `A065091(A047241(n+1))` -/
def P10389094367648619436.Spec : Prop :=
  ∀ n, P10389094367648619436.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P8728853597874967326

`record[A000040(2*(n+1))/A058281(2*n)]`
-/

namespace A091738.P8728853597874967326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (2 * (n + 1)) : ℚ) / (A058281 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091738.P8728853597874967326

namespace A091738

/-- `record[A000040(2*(n+1))/A058281(2*n)]` -/
def P8728853597874967326.Spec : Prop :=
  ∀ n, P8728853597874967326.a n = (A091738 (n + 1) : ℚ)

end A091738

/-! ## A091738.P766337520139518356

`record[A000040(2*(n+1))/A267318(2*n)]`
-/

namespace A091738.P766337520139518356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (2 * (n + 1)) : ℚ) / (A267318 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091738.P766337520139518356

namespace A091738

/-- `record[A000040(2*(n+1))/A267318(2*n)]` -/
def P766337520139518356.Spec : Prop :=
  ∀ n, P766337520139518356.a n = (A091738 (n + 1) : ℚ)

end A091738

/-! ## A091738.P17590974641978778243

`A158611(∑[2*gcd(2, n)])`
-/

namespace A091738.P17590974641978778243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091738.P17590974641978778243

namespace A091738

/-- `A158611(∑[2*gcd(2, n)])` -/
def P17590974641978778243.Spec : Prop :=
  ∀ n, P17590974641978778243.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P14464133596299131619

`A158611(∑[(-1)^n+3])`
-/

namespace A091738.P14464133596299131619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091738.P14464133596299131619

namespace A091738

/-- `A158611(∑[(-1)^n+3])` -/
def P14464133596299131619.Spec : Prop :=
  ∀ n, P14464133596299131619.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P3705837207902822981

`A008578(or(1, 3*n)+2)`
-/

namespace A091738.P3705837207902822981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Nat.lor 1 (3 * n) + 2)

end

end A091738.P3705837207902822981

namespace A091738

/-- `A008578(or(1, 3*n)+2)` -/
def P3705837207902822981.Spec : Prop :=
  ∀ n, P3705837207902822981.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P8593852376055681240

`A008578(record[or(2, n)]+n+1)`
-/

namespace A091738.P8593852376055681240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1))

end

end A091738.P8593852376055681240

namespace A091738

/-- `A008578(record[or(2, n)]+n+1)` -/
def P8593852376055681240.Spec : Prop :=
  ∀ n, P8593852376055681240.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P17416655698366074936

`A008578(A047270(n+1))`
-/

namespace A091738.P17416655698366074936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A047270 (n + 1)).toNat

end

end A091738.P17416655698366074936

namespace A091738

/-- `A008578(A047270(n+1))` -/
def P17416655698366074936.Spec : Prop :=
  ∀ n, P17416655698366074936.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P18225188302744021188

`A008578(A007310(n+2)-2)`
-/

namespace A091738.P18225188302744021188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007310 (n + 2) - 2).toNat

end

end A091738.P18225188302744021188

namespace A091738

/-- `A008578(A007310(n+2)-2)` -/
def P18225188302744021188.Spec : Prop :=
  ∀ n, P18225188302744021188.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P13563555777851352981

`A008578(A014601(n+1)+n)`
-/

namespace A091738.P13563555777851352981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A014601 (n + 1) + (n : ℤ)).toNat

end

end A091738.P13563555777851352981

namespace A091738

/-- `A008578(A014601(n+1)+n)` -/
def P13563555777851352981.Spec : Prop :=
  ∀ n, P13563555777851352981.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P682559749125097476

`A008578(A047255(2*n+1)+2)`
-/

namespace A091738.P682559749125097476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A047255 (2 * n + 1) + 2).toNat

end

end A091738.P682559749125097476

namespace A091738

/-- `A008578(A047255(2*n+1)+2)` -/
def P682559749125097476.Spec : Prop :=
  ∀ n, P682559749125097476.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P3525409936522130896

`A173919(or(3, 6*n))`
-/

namespace A091738.P3525409936522130896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (Nat.lor 3 (6 * n))

end

end A091738.P3525409936522130896

namespace A091738

/-- `A173919(or(3, 6*n))` -/
def P3525409936522130896.Spec : Prop :=
  ∀ n, P3525409936522130896.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P5545460914603090445

`A067747(A092899(n+1))`
-/

namespace A091738.P5545460914603090445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A092899 (n + 1)).toNat

end

end A091738.P5545460914603090445

namespace A091738

/-- `A067747(A092899(n+1))` -/
def P5545460914603090445.Spec : Prop :=
  ∀ n, P5545460914603090445.a n = A091738 (n + 1)

end A091738

/-! ## A091738.P7098950942030504854

`A073846(A092259(n+1))`
-/

namespace A091738.P7098950942030504854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A092259 (n + 1)).toNat

end

end A091738.P7098950942030504854

namespace A091738

/-- `A073846(A092259(n+1))` -/
def P7098950942030504854.Spec : Prop :=
  ∀ n, P7098950942030504854.a n = A091738 (n + 1)

end A091738

/-!
# A091740: Third column (k=4) sequence of array A091534 ((5,2)-Stirling2).

The programs for A091740, there is no canonical definition to state claims against.
-/

/-! ## A091740.P5956400260975497695

`A091534((n+1)²+3)`
-/

namespace A091740.P5956400260975497695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091534 ((n + 1) ^ 2 + 3)

end

end A091740.P5956400260975497695

/-!
# A091742: Second column (m=1) of triangle A060063.

The programs for A091742, there is no canonical definition to state claims against.
-/

/-! ## A091742.P4355737443041342188

`A060063(∑[n+1]+1)`
-/

namespace A091742.P4355737443041342188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A091742.P4355737443041342188

/-! ## A091742.P1051399659973242157

`record[A060063(A106255(n+1)+1)]`
-/

namespace A091742.P1051399659973242157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060063 (A106255 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091742.P1051399659973242157

/-!
# A091745: Alternating row sums of triangle A060063.

The programs for A091745, there is no canonical definition to state claims against.
-/

/-! ## A091745.P3388713029436950300

`A009050(n)*A048766(A009043(n))`
-/

namespace A091745.P3388713029436950300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009050 n * A048766 (A009043 n).toNat

end

end A091745.P3388713029436950300

/-!
# A091746: Generalized Stirling2 array (6,2).

The programs for A091746, there is no canonical definition to state claims against.
-/

/-! ## A091746.P3172771899459536785

`A357631(C(A079184(n+1), A287730(2*n+1)))`
-/

namespace A091746.P3172771899459536785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357631 (Nat.choose (A079184 (n + 1)).toNat (A287730 (2 * n + 1)).toNat)

end

end A091746.P3172771899459536785

/-!
# A091753: Fourth column (m=5) of array A091752 ((-1,2)Stirling2) divided by -6.

The programs for A091753, the canonical program `A091753.P3328387216656261908` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091753 has offset 3).

The definition of A091753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091753.P3328387216656261908

`(n+2)*(n+1)/4*A052502(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091753

/-- `(n+2)*(n+1)/4*A052502(n+1)` -/
def P3328387216656261908.Spec : Prop :=
  ∀ n, P3328387216656261908.a n = (A091753 (n + 3) : ℚ)

end A091753

/-! ## A091753.P12639526869935813647

`(n+2)*(n+1)/4*(3*(n+1))!/(3^(n+1)*(n+1)!)`
-/

namespace A091753.P12639526869935813647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℚ) / 4 * (Nat.factorial (3 * (n + 1)) : ℚ) / (3 ^ (n + 1) * Nat.factorial (n + 1) : ℚ)

end

end A091753.P12639526869935813647

namespace A091753

/-- `(n+2)*(n+1)/4*(3*(n+1))!/(3^(n+1)*(n+1)!)` -/
def P12639526869935813647.Spec : Prop :=
  ∀ n, P12639526869935813647.a n = (A091753 (n + 3) : ℚ)

end A091753

/-! ## A091753.P16772036186580139502

`∑[n+1]*A091535(n+1)`
-/

namespace A091753.P16772036186580139502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A091535 (n + 1)

end

end A091753.P16772036186580139502

namespace A091753

/-- `∑[n+1]*A091535(n+1)` -/
def P16772036186580139502.Spec : Prop :=
  ∀ n, P16772036186580139502.a n = A091753 (n + 3)

end A091753

/-! ## A091753.P13156573321176170757

`A052502(n+1)/2*A038722(A000124(n))`
-/

namespace A091753.P13156573321176170757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052502 (n + 1) : ℚ) / 2 * (A038722 (A000124 n).toNat : ℚ)

end

end A091753.P13156573321176170757

namespace A091753

/-- `A052502(n+1)/2*A038722(A000124(n))` -/
def P13156573321176170757.Spec : Prop :=
  ∀ n, P13156573321176170757.a n = (A091753 (n + 3) : ℚ)

end A091753

/-! ## A091753.P17294669163800876072

`A111394(2*(n+1))/2*A038722(A000124(n))`
-/

namespace A091753.P17294669163800876072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111394 (2 * (n + 1)) : ℚ) / 2 * (A038722 (A000124 n).toNat : ℚ)

end

end A091753.P17294669163800876072

namespace A091753

/-- `A111394(2*(n+1))/2*A038722(A000124(n))` -/
def P17294669163800876072.Spec : Prop :=
  ∀ n, P17294669163800876072.a n = (A091753 (n + 3) : ℚ)

end A091753

/-!
# A091754: Fifth column (m=6) of array A091752 ((-1,2)Stirling2).

The programs for A091754, there is no canonical definition to state claims against.
-/

/-! ## A091754.P15882487363887238924

`A049404(A117625(n+1)+1)`
-/

namespace A091754.P15882487363887238924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049404 (A117625 (n + 1) + 1).toNat

end

end A091754.P15882487363887238924

/-! ## A091754.P3619630689634744156

`A091752(A027689(n+2)-(n+1))`
-/

namespace A091754.P3619630689634744156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091752 (A027689 (n + 2) - (n + 1 : ℤ)).toNat

end

end A091754.P3619630689634744156

/-!
# A091755: Sixth column (m=7) of array A091752 ((-1,2)Stirling2) divided by -12.

The programs for A091755, there is no canonical definition to state claims against.
-/

/-! ## A091755.P15516476185289823523

`(A091756(n+4)+A091753(n+3))/2`
-/

namespace A091755.P15516476185289823523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091756 (n + 4) + A091753 (n + 3) : ℚ) / 2

end

end A091755.P15516476185289823523

/-!
# A091756: Seventh column (m=8) of array A091752 ((-1,2)Stirling2).

The programs for A091756, there is no canonical definition to state claims against.
-/

/-! ## A091756.P11275833650709790957

`A049404(A000217(3*n+2)+n+3)`
-/

namespace A091756.P11275833650709790957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049404 (A000217 (3 * n + 2) + (n + 3 : ℤ)).toNat

end

end A091756.P11275833650709790957

/-! ## A091756.P10788062115189628598

`2*A091755(n+4)-A091753(n+3)`
-/

namespace A091756.P10788062115189628598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091755 (n + 4) - A091753 (n + 3)

end

end A091756.P10788062115189628598

/-!
# A091759: a(n) = 0^n + 2((n+1)^n - (-1)^n) / (n+2).

The programs for A091759, the canonical program `A091759.P18422643437431241638` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091759 has offset 0).

The definition of A091759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091759.P18422643437431241638

`0^n+2*((n+1)^n-(-1)^n)/(n+2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091759

/-- `0^n+2*((n+1)^n-(-1)^n)/(n+2)` -/
def P18422643437431241638.Spec : Prop :=
  ∀ n, P18422643437431241638.a n = (A091759 n : ℚ)

end A091759

/-!
# A091760: a(n) = 0^n + 3*((n+2)^n/(n+3) - (-1)^n/(n+3)).

The programs for A091760, the canonical program `A091760.P10671038361421732524` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091760 has offset 0).

The definition of A091760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091760.P10671038361421732524

`0^n+3*((n+2)^n/(n+3)-(-1)^n/(n+3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091760

/-- `0^n+3*((n+2)^n/(n+3)-(-1)^n/(n+3))` -/
def P10671038361421732524.Spec : Prop :=
  ∀ n, P10671038361421732524.a n = (A091760 n : ℚ)

end A091760

/-! ## A091760.P15249263422785673106

`or(1, 3*A083063(n+1))`
-/

namespace A091760.P15249263422785673106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A083063 (n + 1))

end

end A091760.P15249263422785673106

namespace A091760

/-- `or(1, 3*A083063(n+1))` -/
def P15249263422785673106.Spec : Prop :=
  ∀ n, P15249263422785673106.a n = A091760 n

end A091760

/-! ## A091760.P8112010280886629907

`record[A083063(n)*A122553(n)]`
-/

namespace A091760.P8112010280886629907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083063 n * A122553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091760.P8112010280886629907

namespace A091760

/-- `record[A083063(n)*A122553(n)]` -/
def P8112010280886629907.Spec : Prop :=
  ∀ n, P8112010280886629907.a n = A091760 n

end A091760

/-!
# A091761: a(n) = Pell(4n) / Pell(4).

The programs for A091761, the canonical program `A091761.P8996159364852460921` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091761 has offset 0).

The definition of A091761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091761.P8996159364852460921

`34*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091761

/-- `34*a(n-1)-a(n-2)` -/
def P8996159364852460921.Spec : Prop :=
  ∀ n, P8996159364852460921.a n = A091761 n

theorem P8996159364852460921.correct : P8996159364852460921.Spec := by
  intro n
  simp only [A091761]

end A091761

/-! ## A091761.P2277866108133011406

`((1+sqrt(2))^(4*n)-(1-sqrt(2))^(4*n))*sqrt(2)/48`
-/

namespace A091761.P2277866108133011406
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) ^ (4 * n) - (1 - Real.sqrt (2 : ℝ)) ^ (4 * n)) * Real.sqrt (2 : ℝ) / 48

end

end A091761.P2277866108133011406

namespace A091761

/-- `((1+sqrt(2))^(4*n)-(1-sqrt(2))^(4*n))*sqrt(2)/48` -/
def P2277866108133011406.Spec : Prop :=
  ∀ n, P2277866108133011406.a n = (A091761 n : ℝ)

end A091761

/-! ## A091761.P2686034268489902135

`∑[A144533(A004273(n))]`
-/

namespace A091761.P2686034268489902135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144533 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091761.P2686034268489902135

namespace A091761

/-- `∑[A144533(A004273(n))]` -/
def P2686034268489902135.Spec : Prop :=
  ∀ n, P2686034268489902135.a n = A091761 n

end A091761

/-! ## A091761.P13345144396336208059

`∑[A144533(record[A026741(n)])]`
-/

namespace A091761.P13345144396336208059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144533 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091761.P13345144396336208059

namespace A091761

/-- `∑[A144533(record[A026741(n)])]` -/
def P13345144396336208059.Spec : Prop :=
  ∀ n, P13345144396336208059.a n = A091761 n

end A091761

/-! ## A091761.P171579396655025112

`∑[A144533(record[A093411(n)])]`
-/

namespace A091761.P171579396655025112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144533 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091761.P171579396655025112

namespace A091761

/-- `∑[A144533(record[A093411(n)])]` -/
def P171579396655025112.Spec : Prop :=
  ∀ n, P171579396655025112.a n = A091761 n

end A091761

/-! ## A091761.P10836671457667208466

`record[A041127(n)-A041543(n)]`
-/

namespace A091761.P10836671457667208466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041127 n - A041543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091761.P10836671457667208466

namespace A091761

/-- `record[A041127(n)-A041543(n)]` -/
def P10836671457667208466.Spec : Prop :=
  ∀ n, P10836671457667208466.a n = A091761 n

end A091761

/-! ## A091761.P13726634272065957308

`record[A000035(n)*A041543(n)]`
-/

namespace A091761.P13726634272065957308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091761.P13726634272065957308

namespace A091761

/-- `record[A000035(n)*A041543(n)]` -/
def P13726634272065957308.Spec : Prop :=
  ∀ n, P13726634272065957308.a n = A091761 n

end A091761

/-! ## A091761.P15154625263197760287

`A001109(n)/3*A001541(n)`
-/

namespace A091761.P15154625263197760287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001109 n : ℚ) / 3 * (A001541 n : ℚ)

end

end A091761.P15154625263197760287

namespace A091761

/-- `A001109(n)/3*A001541(n)` -/
def P15154625263197760287.Spec : Prop :=
  ∀ n, P15154625263197760287.a n = (A091761 n : ℚ)

end A091761

/-! ## A091761.P546557829661584394

`A001541(n)/6*A001542(n)`
-/

namespace A091761.P546557829661584394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001541 n : ℚ) / 6 * (A001542 n : ℚ)

end

end A091761.P546557829661584394

namespace A091761

/-- `A001541(n)/6*A001542(n)` -/
def P546557829661584394.Spec : Prop :=
  ∀ n, P546557829661584394.a n = (A091761 n : ℚ)

end A091761

/-! ## A091761.P8474921087072198298

`(A144534(n+1)-A144533(n+1))*A144534(n)`
-/

namespace A091761.P8474921087072198298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144534 (n + 1) - A144533 (n + 1)) * A144534 n

end

end A091761.P8474921087072198298

namespace A091761

/-- `(A144534(n+1)-A144533(n+1))*A144534(n)` -/
def P8474921087072198298.Spec : Prop :=
  ∀ n, P8474921087072198298.a n = A091761 n

end A091761

/-!
# A091762: Last n digits of concatenation of first n primes.

The programs for A091762, there is no canonical definition to state claims against.
-/

/-! ## A091762.P4128436551045726401

`A019518(n+1)%A011557(n+1)`
-/

namespace A091762.P4128436551045726401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019518 (n + 1)) (A011557 (n + 1))

end

end A091762.P4128436551045726401

/-!
# A091763: 

The programs for A091763, there is no canonical definition to state claims against.
-/

/-! ## A091763.P9415294335423816892

`A091762(∑[A110576(n)])`
-/

namespace A091763.P9415294335423816892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091762 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091763.P9415294335423816892

/-!
# A091765: Numbers n such that A007306(n) divides n.

The programs for A091765, there is no canonical definition to state claims against.
-/

/-! ## A091765.P16086177172966182898

`eq[0, n%A007306(n)]`
-/

namespace A091765.P16086177172966182898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A007306 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091765.P16086177172966182898

/-! ## A091765.P15416087266812395467

`lt[lcm(n, A007306(n)), A028310(2*n)]`
-/

namespace A091765.P15416087266812395467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A007306 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091765.P15416087266812395467

/-! ## A091765.P455500665568819185

`lt[lcm(n, A007306(n)), A155875(n)]`
-/

namespace A091765.P455500665568819185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A007306 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091765.P455500665568819185

/-! ## A091765.P12746732657192970327

`eq[A258055(A007306(n)), A258055(n)]`
-/

namespace A091765.P12746732657192970327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258055 (A007306 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091765.P12746732657192970327

/-! ## A091765.P10040924486640759205

`lt[A336454(A206424(n)), A300081(n+4)]`
-/

namespace A091765.P10040924486640759205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336454 (A206424 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300081 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091765.P10040924486640759205

/-!
# A091766: For n > 2, let m be the least number that cannot be expressed as a(i), a(i)+a(j), or a(i)-a(j) with i, j < n. Then a(n) = a(n-1)+m.

The programs for A091766, there is no canonical definition to state claims against.
-/

/-! ## A091766.P13252153774032516828

`∑[A091767(n+1)]+A028310(n)-A091767(n+1)`
-/

namespace A091766.P13252153774032516828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A028310 n - A091767 (n + 1))

end

end A091766.P13252153774032516828

/-! ## A091766.P16943214229111723444

`2+A091767(a(n-1))` with `a(0)=1, a(1)=2, a(2)=6, a(3)=15, a(4)=25, a(5)=36, a(6)=48, a(7)=66, a(8)=86`
-/

namespace A091766.P16943214229111723444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 15, 25, 36, 48, 66, 86] fun n a =>
  2 + A091767 (a (n - 1)).toNat

end

end A091766.P16943214229111723444

/-!
# A091767: a(n) is the largest number such that all numbers from 1 to a(n) can be expressed using first n terms of A091766.

The programs for A091767, there is no canonical definition to state claims against.
-/

/-! ## A091767.P15650812428761737901

`Δ[A091766(n)]-ceil(n/63)`
-/

namespace A091767.P15650812428761737901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌈(n : ℚ) / 63⌉

end

end A091767.P15650812428761737901

/-! ## A091767.P1039147611189376448

`A028310(Δ[A091766(n)]-1)`
-/

namespace A091767.P1039147611189376448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n - 1).toNat

end

end A091767.P1039147611189376448

/-! ## A091767.P1577607927511964119

`A057428(n)+Δ[A091766(n)]`
-/

namespace A091767.P1577607927511964119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (f1 (n + 1) - f1 n)

end

end A091767.P1577607927511964119

/-! ## A091767.P1210924254302758135

`A000007(n)+Δ[A091766(n)]-1`
-/

namespace A091767.P1210924254302758135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n - 1)

end

end A091767.P1210924254302758135

/-! ## A091767.P3486977102061116215

`Δ[A091766(n)+xor(63, A028310(n))]`
-/

namespace A091767.P3486977102061116215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091766 n + Int.xor 63 (A028310 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091767.P3486977102061116215

/-!
# A091768: Similar to Bell numbers (A000110).

The programs for A091768, there is no canonical definition to state claims against.
-/

/-! ## A091768.P2589672731374785193

`(A057427(n)+1)*A129579(n)`
-/

namespace A091768.P2589672731374785193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A129579 n

end

end A091768.P2589672731374785193

/-! ## A091768.P251163754552247422

`(A178334(n)+1)*A129579(n)`
-/

namespace A091768.P251163754552247422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A129579 n

end

end A091768.P251163754552247422

/-! ## A091768.P3316926268575258908

`(2-A000007(n))*A129579(n)`
-/

namespace A091768.P3316926268575258908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A129579 n

end

end A091768.P3316926268575258908

/-! ## A091768.P5397375147915002563

`A020639(A103260(n))*A129579(n)`
-/

namespace A091768.P5397375147915002563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103260 n).toNat * A129579 n

end

end A091768.P5397375147915002563

/-! ## A091768.P8991999022736536610

`A129579(n)+Δ[A129578(n)]`
-/

namespace A091768.P8991999022736536610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129579 n + (f1 (n + 1) - f1 n)

end

end A091768.P8991999022736536610

/-!
# A091769: Poincaré series [or Poincare series] (or Molien series) for a certain six-fold wreath product P_6.

The programs for A091769, there is no canonical definition to state claims against.
-/

/-! ## A091769.P16722942069311411615

`A024790(A187829(n+1))+A007690(n)`
-/

namespace A091769.P16722942069311411615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024790 (A187829 (n + 1)).toNat + A007690 n

end

end A091769.P16722942069311411615

/-! ## A091769.P7831961156382332055

`A264403(∑[n])+A024790(A187829(n+1))`
-/

namespace A091769.P7831961156382332055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (∑ j ∈ Finset.range (n + 1), f1 j) + A024790 (A187829 (n + 1)).toNat

end

end A091769.P7831961156382332055

/-! ## A091769.P15306335142889010674

`A024790(A187829(n+1))+A000041(n)-A183558(n)`
-/

namespace A091769.P15306335142889010674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024790 (A187829 (n + 1)).toNat + (A000041 n - A183558 n)

end

end A091769.P15306335142889010674

/-! ## A091769.P12823088333104095539

`A116595(A075349(n+1)-1)+A024790(A187829(n+1))`
-/

namespace A091769.P12823088333104095539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (A075349 (n + 1) - 1).toNat + A024790 (A187829 (n + 1)).toNat

end

end A091769.P12823088333104095539

/-! ## A091769.P14887794726543927690

`A102683(2^n)+A027633(n)`
-/

namespace A091769.P14887794726543927690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (2 ^ n) + A027633 n

end

end A091769.P14887794726543927690

/-!
# A091771: a(0) = 2; for n > 0, a(n) is the least prime of the form k*n*a(n-1) + 1.

The programs for A091771, there is no canonical definition to state claims against.
-/

/-! ## A091771.P17650270590512550109

`A034694(n*a(n-1))` with `a(0)=2`
-/

namespace A091771.P17650270590512550109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A034694 ((n : ℤ) * a (n - 1)).toNat

end

end A091771.P17650270590512550109

/-! ## A091771.P2663791718222963287

`A061026(n*a(n-1))` with `a(0)=2`
-/

namespace A091771.P2663791718222963287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A061026 ((n : ℤ) * a (n - 1)).toNat

end

end A091771.P2663791718222963287

/-!
# A091772: a(n) = gcd(A000108(n), A000110(n)).

The programs for A091772, there is no canonical definition to state claims against.
-/

/-! ## A091772.P13060604714901262809

`gcd(A000108(n+1), A000110(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A091772.P13060604714901262809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000108 (n + 1)) (A000110 (n + 1))

end

end A091772.P13060604714901262809

/-! ## A091772.P9732705343321330767

`gcd(∑[A071724(n)], A016098(n+1))`
-/

namespace A091772.P9732705343321330767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A016098 (n + 1))

end

end A091772.P9732705343321330767

/-! ## A091772.P16543752458140377867

`gcd(Δ[A014138(n)], A000110(n+1))`
-/

namespace A091772.P16543752458140377867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000110 (n + 1))

end

end A091772.P16543752458140377867

/-! ## A091772.P1869500886994011070

`gcd(A000108(n+1), record[A095149(n)])`
-/

namespace A091772.P1869500886994011070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000108 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A091772.P1869500886994011070

/-! ## A091772.P2353354248213593030

`gcd(record[A108087(n)], A120588(n+2))`
-/

namespace A091772.P2353354248213593030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A120588 (n + 2))

end

end A091772.P2353354248213593030

/-! ## A091772.P17354111174069633935

`gcd(A000110(A000027(n+1)), A208355(2*(n+1)))`
-/

namespace A091772.P17354111174069633935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000110 (A000027 (n + 1)).toNat) (A208355 (2 * (n + 1)))

end

end A091772.P17354111174069633935

/-!
# A091773: G.f.: Product((1+x^i)/(1-x^i),i=1..n-1)/(1-x^n), with n = 5.

The programs for A091773, the canonical program `A091773.P6565989770376659951` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091773 has offset 0).

The definition of A091773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091773.P2867493710836637662

`A256309(n)+∑[round((n+3)²/12)]`
-/

namespace A091773.P2867493710836637662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256309 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091773.P2867493710836637662

namespace A091773

/-- `A256309(n)+∑[round((n+3)²/12)]` -/
def P2867493710836637662.Spec : Prop :=
  ∀ n, P2867493710836637662.a n = A091773 n

end A091773

/-! ## A091773.P420342855890268819

`(A053800(n)+A053798(n))/2`
-/

namespace A091773.P420342855890268819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053800 n + A053798 n : ℚ) / 2

end

end A091773.P420342855890268819

namespace A091773

/-- `(A053800(n)+A053798(n))/2` -/
def P420342855890268819.Spec : Prop :=
  ∀ n, P420342855890268819.a n = (A091773 n : ℚ)

end A091773

/-! ## A091773.P6565989770376659951

`A069906(2*n)+A002621(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091773

/-- `A069906(2*n)+A002621(n)` -/
def P6565989770376659951.Spec : Prop :=
  ∀ n, P6565989770376659951.a n = A091773 n

theorem P6565989770376659951.correct : P6565989770376659951.Spec := by
  intro n
  simp only [A091773]

end A091773

/-! ## A091773.P12189656931139764743

`A026811(2*n)+∑[A001399(n)]`
-/

namespace A091773.P12189656931139764743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091773.P12189656931139764743

namespace A091773

/-- `A026811(2*n)+∑[A001399(n)]` -/
def P12189656931139764743.Spec : Prop :=
  ∀ n, P12189656931139764743.a n = A091773 n

end A091773

/-! ## A091773.P8307517916360204500

`A254594(2*n)+A026811(2*n)`
-/

namespace A091773.P8307517916360204500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (2 * n) + A026811 (2 * n)

end

end A091773.P8307517916360204500

namespace A091773

/-- `A254594(2*n)+A026811(2*n)` -/
def P8307517916360204500.Spec : Prop :=
  ∀ n, P8307517916360204500.a n = A091773 n

end A091773

/-! ## A091773.P5440785975918891345

`A001401(2*n)-∑[A069905(n+1)]`
-/

namespace A091773.P5440785975918891345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091773.P5440785975918891345

namespace A091773

/-- `A001401(2*n)-∑[A069905(n+1)]` -/
def P5440785975918891345.Spec : Prop :=
  ∀ n, P5440785975918891345.a n = A091773 n

end A091773

/-! ## A091773.P5835243535899456116

`A026811(2*n)+∑[A266755(2*n)]`
-/

namespace A091773.P5835243535899456116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091773.P5835243535899456116

namespace A091773

/-- `A026811(2*n)+∑[A266755(2*n)]` -/
def P5835243535899456116.Spec : Prop :=
  ∀ n, P5835243535899456116.a n = A091773 n

end A091773

/-! ## A091773.P6001725297615995436

`A025809((n+2)²+n+3)`
-/

namespace A091773.P6001725297615995436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025809 ((n + 2) ^ 2 + (n + 3))

end

end A091773.P6001725297615995436

namespace A091773

/-- `A025809((n+2)²+n+3)` -/
def P6001725297615995436.Spec : Prop :=
  ∀ n, P6001725297615995436.a n = A091773 n

end A091773

/-!
# A091774: Expansion of g.f. Product((1+x^i)/(1-x^i),i=1..n-1)/(1-x^n), with n = 6.

The programs for A091774, there is no canonical definition to state claims against.
-/

/-! ## A091774.P6491012029700516927

`(A053801(n)+A053800(n))/2`
-/

namespace A091774.P6491012029700516927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053801 n + A053800 n : ℚ) / 2

end

end A091774.P6491012029700516927

/-! ## A091774.P11487811485623785071

`A273943(A053801(n)-A053800(n))+A053800(n)`
-/

namespace A091774.P11487811485623785071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A053801 n - A053800 n).toNat + A053800 n

end

end A091774.P11487811485623785071

/-! ## A091774.P838280817284375253

`A053800(n)+A014682(A053801(n)-A053800(n))`
-/

namespace A091774.P838280817284375253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053800 n + A014682 (A053801 n - A053800 n).toNat

end

end A091774.P838280817284375253

/-! ## A091774.P5875737450259020833

`A273943(A053801(n)+A053800(n))`
-/

namespace A091774.P5875737450259020833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A053801 n + A053800 n).toNat

end

end A091774.P5875737450259020833

/-! ## A091774.P10166972206038322886

`A014682(A053801(n)+A053800(n))`
-/

namespace A091774.P10166972206038322886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A053801 n + A053800 n).toNat

end

end A091774.P10166972206038322886

/-!
# A091775: a(n) = 1 + 4^n + 9^n + 16^n.

The programs for A091775, the canonical program `A091775.P2950511153007177665` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091775 has offset 1).

The definition of A091775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+4^(n+1)+9^(n+1)+16^(n+1)` (program `A091775.P2950511153007177665`, by `A091775.P2950511153007177665.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091775.P2950511153007177665

`1+4^(n+1)+9^(n+1)+16^(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091775

/-- `1+4^(n+1)+9^(n+1)+16^(n+1)` -/
def P2950511153007177665.Spec : Prop :=
  ∀ n, (P2950511153007177665.a n : ℤ) = A091775 (n + 1)

theorem P2950511153007177665.correct : P2950511153007177665.Spec := by
  intro n
  simp only [A091775, Nat.add_sub_cancel]

end A091775

/-! ## A091775.P11059410973762972555

`A001551(2*(n+1))`
-/

namespace A091775.P11059410973762972555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001551 (2 * (n + 1))

end

end A091775.P11059410973762972555

namespace A091775

/-- `A001551(2*(n+1))` -/
def P11059410973762972555.Spec : Prop :=
  ∀ n, P11059410973762972555.a n = A091775 (n + 1)

end A091775

/-! ## A091775.P1350170516216763161

`2*A196836(2*(n+1))`
-/

namespace A091775.P1350170516216763161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196836 (2 * (n + 1))

end

end A091775.P1350170516216763161

namespace A091775

/-- `2*A196836(2*(n+1))` -/
def P1350170516216763161.Spec : Prop :=
  ∀ n, P1350170516216763161.a n = A091775 (n + 1)

end A091775

/-! ## A091775.P10835970396397723513

`2*A317793(2*(n+1))`
-/

namespace A091775.P10835970396397723513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317793 (2 * (n + 1))

end

end A091775.P10835970396397723513

namespace A091775

/-- `2*A317793(2*(n+1))` -/
def P10835970396397723513.Spec : Prop :=
  ∀ n, P10835970396397723513.a n = A091775 (n + 1)

end A091775

/-! ## A091775.P18019390423531501979

`record[A001551(2*A008611(n))]`
-/

namespace A091775.P18019390423531501979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001551 (2 * A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091775.P18019390423531501979

namespace A091775

/-- `record[A001551(2*A008611(n))]` -/
def P18019390423531501979.Spec : Prop :=
  ∀ n, P18019390423531501979.a n = A091775 (n + 1)

end A091775

/-!
# A091777: Product of the numbers from (n-1)^2+1 to n^2.

The programs for A091777, there is no canonical definition to state claims against.
-/

/-! ## A091777.P16433259465202824246

`(2*n+1)!*C((n+1)², n²)`
-/

namespace A091777.P16433259465202824246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1) * Nat.choose ((n + 1) ^ 2) (n ^ 2)

end

end A091777.P16433259465202824246

/-! ## A091777.P14646882103060386062

`A382620(n+1)/A088020(n)*A395280(n+1)`
-/

namespace A091777.P14646882103060386062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382620 (n + 1) : ℚ) / (A088020 n : ℚ) * (A395280 (n + 1) : ℚ)

end

end A091777.P14646882103060386062

/-! ## A091777.P2334988428973168138

`ratio[-n²!]`
-/

namespace A091777.P2334988428973168138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (n ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A091777.P2334988428973168138

/-! ## A091777.P9996759584694223178

`ratio[2*n²!]`
-/

namespace A091777.P9996759584694223178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A091777.P9996759584694223178

/-!
# A091778: Expansion of g.f. Product((1+x^i)/(1-x^i),i=1..n-1)/(1-x^n), with n = 7.

The programs for A091778, there is no canonical definition to state claims against.
-/

/-! ## A091778.P9013936043160655716

`(A053802(n)+A053801(n))/2`
-/

namespace A091778.P9013936043160655716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053802 n + A053801 n : ℚ) / 2

end

end A091778.P9013936043160655716

/-! ## A091778.P10340653424652870427

`(A053802(n)+A053801(n))*2^A008683(A007918(n))`
-/

namespace A091778.P10340653424652870427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053802 n + A053801 n : ℚ) * (2 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ)

end

end A091778.P10340653424652870427

/-! ## A091778.P16798974399428343328

`A053801(n)+A014682(A053802(n)-A053801(n))`
-/

namespace A091778.P16798974399428343328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053801 n + A014682 (A053802 n - A053801 n).toNat

end

end A091778.P16798974399428343328

/-! ## A091778.P10659169056898625938

`A273943(A053802(n)-A053801(n))+A053801(n)`
-/

namespace A091778.P10659169056898625938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A053802 n - A053801 n).toNat + A053801 n

end

end A091778.P10659169056898625938

/-! ## A091778.P603932026522885371

`A014682(A053802(n)+A053801(n))`
-/

namespace A091778.P603932026522885371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A053802 n + A053801 n).toNat

end

end A091778.P603932026522885371

/-!
# A091779: G.f.: Product((1+x^i)/(1-x^i),i=1..n-1)/(1-x^n), with n = 8.

The programs for A091779, there is no canonical definition to state claims against.
-/

/-! ## A091779.P9692026831432940663

`(A069251(n)+A053802(n))/2`
-/

namespace A091779.P9692026831432940663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069251 n + A053802 n : ℚ) / 2

end

end A091779.P9692026831432940663

/-! ## A091779.P13922310478799535286

`A014682(A069251(n)+A053802(n))`
-/

namespace A091779.P13922310478799535286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A069251 n + A053802 n).toNat

end

end A091779.P13922310478799535286

/-! ## A091779.P8704787046176462058

`A053802(n)+A038572(A069251(n)-A053802(n))`
-/

namespace A091779.P8704787046176462058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053802 n + A038572 (A069251 n - A053802 n).toNat

end

end A091779.P8704787046176462058

/-! ## A091779.P1749461404623536173

`A053802(n)+A001281(A069251(n)-A053802(n))`
-/

namespace A091779.P1749461404623536173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053802 n + A001281 (A069251 n - A053802 n).toNat

end

end A091779.P1749461404623536173

/-! ## A091779.P15007280878094872413

`A053802(n)+A004525(A069251(n)-A053802(n))`
-/

namespace A091779.P15007280878094872413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053802 n + A004525 (A069251 n - A053802 n).toNat

end

end A091779.P15007280878094872413

/-!
# A091783: Numbers with digits in nondecreasing order such that sum of the reciprocals of the digits is 1.

The programs for A091783, there is no canonical definition to state claims against.
-/

/-! ## A091783.P12345367861773069105

`∩[A037264(n+1), A091784(n+1)]`
-/

namespace A091783.P12345367861773069105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091783.P12345367861773069105

/-! ## A091783.P997512884746820839

`∩[A037268(n+1), A091784(n+1)]`
-/

namespace A091783.P997512884746820839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091783.P997512884746820839

/-! ## A091783.P12295168124263767646

`∩[A045910(n+1), A091784(n+1)]`
-/

namespace A091783.P12295168124263767646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091783.P12295168124263767646

/-! ## A091783.P15537637705959248108

`∩[A091784(n+1), A214958(n+1)]`
-/

namespace A091783.P15537637705959248108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091783.P15537637705959248108

/-! ## A091783.P3747254190349560508

`∩[A091784(n+1), A214959(n+1)]`
-/

namespace A091783.P3747254190349560508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091783.P3747254190349560508

/-!
# A091784: Numbers n with digits in nondecreasing order such that sum of the reciprocal of digits is an integer.

The programs for A091784, there is no canonical definition to state claims against.
-/

/-! ## A091784.P15818999073718969760

`∩[A009994(n+1), A034708(n+1)]`
-/

namespace A091784.P15818999073718969760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091784.P15818999073718969760

/-! ## A091784.P11280237480010683764

`∩[A034708(n+1), A381509(n+1)]`
-/

namespace A091784.P11280237480010683764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091784.P11280237480010683764

/-! ## A091784.P4560721718000790423

`∩[A034708(n+1), A179239(n)]`
-/

namespace A091784.P4560721718000790423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091784.P4560721718000790423

/-! ## A091784.P16695932745028140319

`∩[A034708(n+1), A355222(a(n-1)+1)]` with `a(0)=1`
-/

namespace A091784.P16695932745028140319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A355222 (f2 (n - 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091784.P16695932745028140319

/-! ## A091784.P6784662689895778874

`record[A004185(A034708(n+1))]`
-/

namespace A091784.P6784662689895778874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A034708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091784.P6784662689895778874

/-!
# A091785: Evil numbers (see A001969) in A003159.

The programs for A091785, the canonical program `A091785.P17722584434212151531` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091785 has offset 1).

The definition of A091785 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091785.P11932845691032913323

`A003159(2*(n+1))`
-/

namespace A091785.P11932845691032913323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * (n + 1))

end

end A091785.P11932845691032913323

namespace A091785

/-- `A003159(2*(n+1))` -/
def P11932845691032913323.Spec : Prop :=
  ∀ n, P11932845691032913323.a n = A091785 (n + 1)

end A091785

/-! ## A091785.P17722584434212151531

`A036554(2*(n+1))/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091785

/-- `A036554(2*(n+1))/2` -/
def P17722584434212151531.Spec : Prop :=
  ∀ n, P17722584434212151531.a n = (A091785 (n + 1) : ℚ)

end A091785

/-! ## A091785.P7042234102823410058

`comp[xor(n, floor((n+1)/2))]+1`
-/

namespace A091785.P7042234102823410058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n + 1 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A091785.P7042234102823410058

namespace A091785

/-- `comp[xor(n, floor((n+1)/2))]+1` -/
def P7042234102823410058.Spec : Prop :=
  ∀ n, (P7042234102823410058.a n : ℤ) = A091785 (n + 1)

end A091785

/-! ## A091785.P4158457199088901517

`eq[2, xor(n, n-a(n-1))%3+1]` with `a(0)=0`
-/

namespace A091785.P4158457199088901517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - f2 (n - 1))) 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091785.P4158457199088901517

namespace A091785

/-- `eq[2, xor(n, n-a(n-1))%3+1]` -/
def P4158457199088901517.Spec : Prop :=
  ∀ n, (P4158457199088901517.a n : ℤ) = A091785 (n + 1)

end A091785

/-! ## A091785.P3243567856531209172

`A248056(n+1)/2`
-/

namespace A091785.P3243567856531209172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248056 (n + 1) : ℚ) / 2

end

end A091785.P3243567856531209172

namespace A091785

/-- `A248056(n+1)/2` -/
def P3243567856531209172.Spec : Prop :=
  ∀ n, P3243567856531209172.a n = (A091785 (n + 1) : ℚ)

end A091785

/-! ## A091785.P5933586404502381210

`ceil(A157970(n+1)/2)`
-/

namespace A091785.P5933586404502381210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157970 (n + 1) : ℚ) / 2⌉

end

end A091785.P5933586404502381210

namespace A091785

/-- `ceil(A157970(n+1)/2)` -/
def P5933586404502381210.Spec : Prop :=
  ∀ n, P5933586404502381210.a n = A091785 (n + 1)

end A091785

/-! ## A091785.P13204600197235541885

`(A233388(n+1)+1)/4`
-/

namespace A091785.P13204600197235541885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233388 (n + 1) + 1 : ℚ) / 4

end

end A091785.P13204600197235541885

namespace A091785

/-- `(A233388(n+1)+1)/4` -/
def P13204600197235541885.Spec : Prop :=
  ∀ n, P13204600197235541885.a n = (A091785 (n + 1) : ℚ)

end A091785

/-! ## A091785.P12890172741240836808

`eq[5, A254655(2*n+1)]`
-/

namespace A091785.P12890172741240836808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091785.P12890172741240836808

namespace A091785

/-- `eq[5, A254655(2*n+1)]` -/
def P12890172741240836808.Spec : Prop :=
  ∀ n, (P12890172741240836808.a n : ℤ) = A091785 (n + 1)

end A091785

/-! ## A091785.P15030360808240277820

`A285961(n+1)-(n+1)`
-/

namespace A091785.P15030360808240277820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285961 (n + 1) - (n + 1 : ℤ)

end

end A091785.P15030360808240277820

namespace A091785

/-- `A285961(n+1)-(n+1)` -/
def P15030360808240277820.Spec : Prop :=
  ∀ n, P15030360808240277820.a n = A091785 (n + 1)

end A091785

/-! ## A091785.P8713761684012324622

`A104248(n+1)+A091855(n+1)`
-/

namespace A091785.P8713761684012324622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104248 (n + 1) + A091855 (n + 1)

end

end A091785.P8713761684012324622

namespace A091785

/-- `A104248(n+1)+A091855(n+1)` -/
def P8713761684012324622.Spec : Prop :=
  ∀ n, P8713761684012324622.a n = A091785 (n + 1)

end A091785

/-! ## A091785.P3662685157424294315

`A285973(n+2)-(n+2)`
-/

namespace A091785.P3662685157424294315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285973 (n + 2) - (n + 2 : ℤ)

end

end A091785.P3662685157424294315

namespace A091785

/-- `A285973(n+2)-(n+2)` -/
def P3662685157424294315.Spec : Prop :=
  ∀ n, P3662685157424294315.a n = A091785 (n + 1)

end A091785

/-! ## A091785.P9149434614864904527

`filter[A181155(n+1), A035263(#)]`
-/

namespace A091785.P9149434614864904527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A091785.P9149434614864904527

namespace A091785

/-- `filter[A181155(n+1), A035263(#)]` -/
def P9149434614864904527.Spec : Prop :=
  ∀ n, P9149434614864904527.a n = A091785 (n + 1)

end A091785

/-! ## A091785.P3736606689898011257

`filter[A181155(n+1), A127254(#)]`
-/

namespace A091785.P3736606689898011257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A091785.P3736606689898011257

namespace A091785

/-- `filter[A181155(n+1), A127254(#)]` -/
def P3736606689898011257.Spec : Prop :=
  ∀ n, P3736606689898011257.a n = A091785 (n + 1)

end A091785

/-! ## A091785.P229658078958386124

`filter[A181155(n+1), A254651(#)]`
-/

namespace A091785.P229658078958386124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A091785.P229658078958386124

namespace A091785

/-- `filter[A181155(n+1), A254651(#)]` -/
def P229658078958386124.Spec : Prop :=
  ∀ n, P229658078958386124.a n = A091785 (n + 1)

end A091785

/-! ## A091785.P16513314634595725877

`filter[A001969(n+2), A035263(#)]`
-/

namespace A091785.P16513314634595725877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A091785.P16513314634595725877

namespace A091785

/-- `filter[A001969(n+2), A035263(#)]` -/
def P16513314634595725877.Spec : Prop :=
  ∀ n, P16513314634595725877.a n = A091785 (n + 1)

end A091785

/-! ## A091785.P4498722454542306981

`∩[A001969(n+1), A181155(n+1)]`
-/

namespace A091785.P4498722454542306981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091785.P4498722454542306981

namespace A091785

/-- `∩[A001969(n+1), A181155(n+1)]` -/
def P4498722454542306981.Spec : Prop :=
  ∀ n, (P4498722454542306981.a n : ℤ) = A091785 (n + 1)

end A091785

/-! ## A091785.P4964035757750152000

`eq[1, A019428(A277822(n))]`
-/

namespace A091785.P4964035757750152000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A277822 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091785.P4964035757750152000

namespace A091785

/-- `eq[1, A019428(A277822(n))]` -/
def P4964035757750152000.Spec : Prop :=
  ∀ n, (P4964035757750152000.a n : ℤ) = A091785 (n + 1)

end A091785

/-! ## A091785.P7335923190551489295

`A121539(2*(n+1))+1`
-/

namespace A091785.P7335923190551489295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (2 * (n + 1)) + 1

end

end A091785.P7335923190551489295

namespace A091785

/-- `A121539(2*(n+1))+1` -/
def P7335923190551489295.Spec : Prop :=
  ∀ n, P7335923190551489295.a n = A091785 (n + 1)

end A091785

/-! ## A091785.P18401148136846122872

`A108269(2*(n+1))/4`
-/

namespace A091785.P18401148136846122872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108269 (2 * (n + 1)) : ℚ) / 4

end

end A091785.P18401148136846122872

namespace A091785

/-- `A108269(2*(n+1))/4` -/
def P18401148136846122872.Spec : Prop :=
  ∀ n, P18401148136846122872.a n = (A091785 (n + 1) : ℚ)

end A091785

/-!
# A091786: Number of electoral votes per state in the U.S.A. (for 2001-2010).

The programs for A091786, there is no canonical definition to state claims against.
-/

/-! ## A091786.P1377896773589624860

`A000267(A000267(A000267(A241576(n+3))))`
-/

namespace A091786.P1377896773589624860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A000267 (A000267 (A241576 (n + 3)).toNat).toNat).toNat

end

end A091786.P1377896773589624860

/-!
# A091787: a(1) = 2. To get a(n+1), write the string a(1)a(2)...a(n) as xy^k for words x and y (where y has positive length) and k is maximized, i.e., k = the maximal number of repeating blocks at the end of the sequence so far. Then a(n+1) = max(k,2).

The programs for A091787, there is no canonical definition to state claims against.
-/

/-! ## A091787.P15643852401418990031

`A093956(n+1)+2`
-/

namespace A091787.P15643852401418990031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093956 (n + 1) + 2

end

end A091787.P15643852401418990031

/-! ## A091787.P11485425883433226290

`A090822(A157107(3*(n+1))-(n+5))`
-/

namespace A091787.P11485425883433226290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A157107 (3 * (n + 1)) - (n + 5 : ℤ)).toNat

end

end A091787.P11485425883433226290

/-! ## A091787.P8677743610704326551

`A000122(A000292(n+3)*A120525(n+1))+2`
-/

namespace A091787.P8677743610704326551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000292 (n + 3) * A120525 (n + 1)).toNat + 2

end

end A091787.P8677743610704326551

/-! ## A091787.P5872081227878467877

`A026616(A176729(2*n+1))-A120525(n+1)`
-/

namespace A091787.P5872081227878467877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026616 (A176729 (2 * n + 1)).toNat - A120525 (n + 1)

end

end A091787.P5872081227878467877

/-! ## A091787.P13635833900251489208

`A104705(3*n+4)+2-A120525(n+1)`
-/

namespace A091787.P13635833900251489208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104705 (3 * n + 4) + 2 - A120525 (n + 1)

end

end A091787.P13635833900251489208

/-!
# A091788: a(1) = 1, a(2) = 2 and a(n) = product of the nonzero digits of all previous terms.

The programs for A091788, there is no canonical definition to state claims against.
-/

/-! ## A091788.P1953252413486512333

`A098736(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A091788.P1953252413486512333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A098736 (a (n - 1)).toNat

end

end A091788.P1953252413486512333

/-! ## A091788.P7999503739445029506

`A230101(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A091788.P7999503739445029506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A230101 (a (n - 1)).toNat

end

end A091788.P7999503739445029506

/-! ## A091788.P15859646202008100646

`a(n-1)*A007954(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A091788.P15859646202008100646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) * A007954 (a (n - 1)).toNat

end

end A091788.P15859646202008100646

/-! ## A091788.P1257296519512551174

`a(n-1)*A051801(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A091788.P1257296519512551174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) * A051801 (a (n - 1)).toNat

end

end A091788.P1257296519512551174

/-!
# A091793: Triangle read by rows in which row n contains the smallest nontrivial set of n consecutive numbers divisible by the next n numbers respectively. The next n numbers are numbers from n(n-1)/2 +1 up to n(n+1)/2.

The programs for A091793, there is no canonical definition to state claims against.
-/

/-! ## A091793.P17488915570142489183

`A061431(∑[char[∑[n]]])+n+1`
-/

namespace A091793.P17488915570142489183
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061431 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A091793.P17488915570142489183

/-! ## A091793.P10512388355734597554

`A061431(A002024(n+1))+1+n`
-/

namespace A091793.P10512388355734597554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061431 (A002024 (n + 1)).toNat + 1 + (n : ℤ)

end

end A091793.P10512388355734597554

/-! ## A091793.P3684800411450363949

`A091794(A003056(n))+A002262(n)`
-/

namespace A091793.P3684800411450363949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091794 (A003056 n).toNat + A002262 n

end

end A091793.P3684800411450363949

/-! ## A091793.P14324764822173217636

`A091794(A117707(n))+A002262(n)`
-/

namespace A091793.P14324764822173217636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091794 (A117707 n).toNat + A002262 n

end

end A091793.P14324764822173217636

/-! ## A091793.P8659486083182892520

`A091794(A003056(n))+A025668(n+1)`
-/

namespace A091793.P8659486083182892520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091794 (A003056 n).toNat + A025668 (n + 1)

end

end A091793.P8659486083182892520

/-!
# A091794: First column of A091793.

The programs for A091794, there is no canonical definition to state claims against.
-/

/-! ## A091794.P13763019210960408244

`A091795(n)-n`
-/

namespace A091794.P13763019210960408244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091795 n - (n : ℤ)

end

end A091794.P13763019210960408244

/-! ## A091794.P5075075575643758689

`A061431(n+1)+∑[n]+1`
-/

namespace A091794.P5075075575643758689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061431 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A091794.P5075075575643758689

/-! ## A091794.P17867472219639753641

`A061431(n+1)+A000217(n)+1`
-/

namespace A091794.P17867472219639753641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061431 (n + 1) + A000217 n + 1

end

end A091794.P17867472219639753641

/-! ## A091794.P6258536023590579905

`A062080(n+1)-A091797(n+1)`
-/

namespace A091794.P6258536023590579905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062080 (n + 1) - A091797 (n + 1)

end

end A091794.P6258536023590579905

/-! ## A091794.P9161560357368631765

`2*A061431(n+1)-A091797(n+1)`
-/

namespace A091794.P9161560357368631765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061431 (n + 1) - A091797 (n + 1)

end

end A091794.P9161560357368631765

/-!
# A091795: Diagonal of A091793.

The programs for A091795, there is no canonical definition to state claims against.
-/

/-! ## A091795.P935059775470055104

`A091794(n)+n`
-/

namespace A091795.P935059775470055104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091794 n + (n : ℤ)

end

end A091795.P935059775470055104

/-! ## A091795.P9483882943466639652

`A061431(n+1)+∑[n+1]`
-/

namespace A091795.P9483882943466639652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061431 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A091795.P9483882943466639652

/-! ## A091795.P10089424548052838353

`A091797(n+1)+(n+1)²+1`
-/

namespace A091795.P10089424548052838353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091797 (n + 1) + ((n + 1) ^ 2 + 1 : ℤ)

end

end A091795.P10089424548052838353

/-! ## A091795.P10594620472614870330

`A062080(n+1)-A091796(n+1)`
-/

namespace A091795.P10594620472614870330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062080 (n + 1) - A091796 (n + 1)

end

end A091795.P10594620472614870330

/-! ## A091795.P4832777352409686789

`2*A061431(n+1)-A091796(n+1)`
-/

namespace A091795.P4832777352409686789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061431 (n + 1) - A091796 (n + 1)

end

end A091795.P4832777352409686789

/-!
# A091796: Smallest k such that for 0 <= i < n, n*(n+1)/2-i divides k+i.

The programs for A091796, there is no canonical definition to state claims against.
-/

/-! ## A091796.P9782347671873853503

`A061431(n+1)-(n+1)*(n+2)/2`
-/

namespace A091796.P9782347671873853503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061431 (n + 1) : ℚ) - ((n + 1) * (n + 2) : ℚ) / 2

end

end A091796.P9782347671873853503

/-! ## A091796.P10768162618070023356

`A091797(n+1)-n`
-/

namespace A091796.P10768162618070023356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091797 (n + 1) - (n : ℤ)

end

end A091796.P10768162618070023356

/-! ## A091796.P5633680355160978815

`A091795(n)-(∑[n+1]+∑[n+1])`
-/

namespace A091796.P5633680355160978815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091795 n - ((∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A091796.P5633680355160978815

/-! ## A091796.P17003267911450694457

`A062080(n+1)-A091795(n)`
-/

namespace A091796.P17003267911450694457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062080 (n + 1) - A091795 n

end

end A091796.P17003267911450694457

/-! ## A091796.P8005332000091968226

`2*A061431(n+1)-A091795(n)`
-/

namespace A091796.P8005332000091968226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061431 (n + 1) - A091795 n

end

end A091796.P8005332000091968226

/-!
# A091797: Smallest k such that for 0 <= i < n, 1+i+n*(n-1)/2 divides k-i.

The programs for A091797, there is no canonical definition to state claims against.
-/

/-! ## A091797.P13019705081209524572

`A091796(n+1)+n`
-/

namespace A091797.P13019705081209524572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091796 (n + 1) + (n : ℤ)

end

end A091797.P13019705081209524572

/-! ## A091797.P970686927161915551

`A061431(n+1)-1-(n+1)*n/2`
-/

namespace A091797.P970686927161915551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061431 (n + 1) - 1 : ℚ) - ((n + 1) * n : ℚ) / 2

end

end A091797.P970686927161915551

/-! ## A091797.P15291619912984414582

`A061431(n+1)-(∑[n]+1)`
-/

namespace A091797.P15291619912984414582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061431 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A091797.P15291619912984414582

/-! ## A091797.P11518223729219988630

`A062080(n+1)-A091794(n)`
-/

namespace A091797.P11518223729219988630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062080 (n + 1) - A091794 n

end

end A091797.P11518223729219988630

/-! ## A091797.P10903451984953843511

`2*A061431(n+1)-A091794(n)`
-/

namespace A091797.P10903451984953843511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061431 (n + 1) - A091794 n

end

end A091797.P10903451984953843511

/-!
# A091799: a(1) = 3. To get a(n+1), write the string a(1)a(2)...a(n) as xy^k for words x and y (where y has positive length) and k is maximized, i.e., k = the maximal number of repeating blocks at the end of the sequence so far. Then a(n+1) = max(k,3).

The programs for A091799, the canonical program `A091799.P5376677535890053402` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091799 has offset 1).

The definition of A091799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091799.P14811665885780339852

`xor((-A008683(A323503(n)))^n, A120529(n+1))+3`
-/

namespace A091799.P14811665885780339852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-A008683 (A323503 n).toNat) ^ n) (A120529 (n + 1)) + 3

end

end A091799.P14811665885780339852

namespace A091799

/-- `xor((-A008683(A323503(n)))^n, A120529(n+1))+3` -/
def P14811665885780339852.Spec : Prop :=
  ∀ n, P14811665885780339852.a n = A091799 (n + 1)

end A091799

/-! ## A091799.P5376677535890053402

`A272172(A120529(n+1)+A034856(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091799

/-- `A272172(A120529(n+1)+A034856(n+1))` -/
def P5376677535890053402.Spec : Prop :=
  ∀ n, P5376677535890053402.a n = A091799 (n + 1)

theorem P5376677535890053402.correct : P5376677535890053402.Spec := by
  intro n
  simp only [A091799, Nat.add_sub_cancel]

end A091799

/-! ## A091799.P12904623472053545910

`A093957(n+1)+3`
-/

namespace A091799.P12904623472053545910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093957 (n + 1) + 3

end

end A091799.P12904623472053545910

namespace A091799

/-- `A093957(n+1)+3` -/
def P12904623472053545910.Spec : Prop :=
  ∀ n, P12904623472053545910.a n = A091799 (n + 1)

end A091799

