import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A230900: a(n) = 2^Lucas(n).

The programs for A230900, the canonical program `A230900.P8897369660423964682` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230900 has offset 0).

The definition of A230900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230900.P8897369660423964682

`a(n-1)*a(n-2)` with `a(0)=4, a(1)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230900

/-- `a(n-1)*a(n-2)` -/
def P8897369660423964682.Spec : Prop :=
  ∀ n, (P8897369660423964682.a n : ℤ) = A230900 n

theorem P8897369660423964682.correct : P8897369660423964682.Spec := by
  intro n
  simp only [A230900]

end A230900

/-! ## A230900.P11562126132757399731

`2^A000032(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230900.P11562126132757399731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000032 n : ℤ)

end

end A230900.P11562126132757399731

namespace A230900

/-- `2^A000032(n)` -/
def P11562126132757399731.Spec : Prop :=
  ∀ n, P11562126132757399731.a n = (A230900 n : ℚ)

end A230900

/-! ## A230900.P13368692981243041895

`a(n-1)/a(n-2)^(-1)` with `a(0)=4, a(1)=2`
-/

namespace A230900.P13368692981243041895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ)

end

end A230900.P13368692981243041895

namespace A230900

/-- `a(n-1)/a(n-2)^(-1)` -/
def P13368692981243041895.Spec : Prop :=
  ∀ n, P13368692981243041895.a n = (A230900 n : ℚ)

end A230900

/-! ## A230900.P9570997817699799402

`a(n-1)/abs(1/a(n-2))` with `a(0)=4, a(1)=2`
-/

namespace A230900.P9570997817699799402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n a =>
  a (n - 1) / |1 / a (n - 2)|

end

end A230900.P9570997817699799402

namespace A230900

/-- `a(n-1)/abs(1/a(n-2))` -/
def P9570997817699799402.Spec : Prop :=
  ∀ n, P9570997817699799402.a n = (A230900 n : ℚ)

end A230900

/-! ## A230900.P11933990504424762968

`a(n-1)/((1-a(n-2))/a(n-2)+1)` with `a(0)=4, a(1)=2`
-/

namespace A230900.P11933990504424762968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n a =>
  a (n - 1) / ((1 - a (n - 2)) / a (n - 2) + 1)

end

end A230900.P11933990504424762968

namespace A230900

/-- `a(n-1)/((1-a(n-2))/a(n-2)+1)` -/
def P11933990504424762968.Spec : Prop :=
  ∀ n, P11933990504424762968.a n = (A230900 n : ℚ)

end A230900

/-!
# A230901: Sturmian word: equals the limit word S(infinity) where S(0) = 0, S(1) = 1 and for n >= 1, S(n+1) = S(n)S(n)S(n)S(n-1).

The programs for A230901, the canonical program `A230901.P17815976702079233727` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230901 has offset 0).

The definition of A230901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230901.P17815976702079233727

`char[A184480(n+1)-1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230901

/-- `char[A184480(n+1)-1]` -/
def P17815976702079233727.Spec : Prop :=
  ∀ n, (P17815976702079233727.a n : ℤ) = A230901 n

theorem P17815976702079233727.correct : P17815976702079233727.Spec := by
  intro n
  simp only [A230901]

end A230901

/-! ## A230901.P15645097082274688736

`char[A284676(n+1)-3]`
-/

namespace A230901.P15645097082274688736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A230901.P15645097082274688736

namespace A230901

/-- `char[A284676(n+1)-3]` -/
def P15645097082274688736.Spec : Prop :=
  ∀ n, (P15645097082274688736.a n : ℤ) = A230901 n

end A230901

/-! ## A230901.P7913062839946707980

`A284674(n+3)`
-/

namespace A230901.P7913062839946707980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284674 (n + 3)

end

end A230901.P7913062839946707980

namespace A230901

/-- `A284674(n+3)` -/
def P7913062839946707980.Spec : Prop :=
  ∀ n, P7913062839946707980.a n = A230901 n

end A230901

/-! ## A230901.P13591774262131875346

`A284677(n+3)`
-/

namespace A230901.P13591774262131875346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284677 (n + 3)

end

end A230901.P13591774262131875346

namespace A230901

/-- `A284677(n+3)` -/
def P13591774262131875346.Spec : Prop :=
  ∀ n, P13591774262131875346.a n = A230901 n

end A230901

/-! ## A230901.P23662128405569215

`9%A106437(n+2)`
-/

namespace A230901.P23662128405569215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A106437 (n + 2))

end

end A230901.P23662128405569215

namespace A230901

/-- `9%A106437(n+2)` -/
def P23662128405569215.Spec : Prop :=
  ∀ n, P23662128405569215.a n = A230901 n

end A230901

/-! ## A230901.P16086947233875538441

`A166486(A048338(n+1))`
-/

namespace A230901.P16086947233875538441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A048338 (n + 1)).toNat

end

end A230901.P16086947233875538441

namespace A230901

/-- `A166486(A048338(n+1))` -/
def P16086947233875538441.Spec : Prop :=
  ∀ n, P16086947233875538441.a n = A230901 n

end A230901

/-! ## A230901.P3413841330500830198

`A144610(A158225(n+1))`
-/

namespace A230901.P3413841330500830198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144610 (A158225 (n + 1)).toNat

end

end A230901.P3413841330500830198

namespace A230901

/-- `A144610(A158225(n+1))` -/
def P3413841330500830198.Spec : Prop :=
  ∀ n, P3413841330500830198.a n = A230901 n

end A230901

/-!
# A230902: Positive numbers such that half of the set of divisors are of the form x^2 + x*y + y^2 (A003136) and half not (A034020).

The programs for A230902, there is no canonical definition to state claims against.
-/

/-! ## A230902.P1648129633715573995

`eq[A000007(A232009(n+1)), A004016(n)]`
-/

namespace A230902.P1648129633715573995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A232009 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230902.P1648129633715573995

/-! ## A230902.P3829347353929846585

`eq[A000007(A232009(n+1)), A005928(n)]`
-/

namespace A230902.P3829347353929846585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A232009 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230902.P3829347353929846585

/-! ## A230902.P4503099384729908240

`eq[A000007(A232009(n+1)), A033716(n)]`
-/

namespace A230902.P4503099384729908240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A232009 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230902.P4503099384729908240

/-! ## A230902.P3813572535771991530

`eq[A000007(A232009(n+1)), A113062(n)]`
-/

namespace A230902.P3813572535771991530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A232009 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230902.P3813572535771991530

/-! ## A230902.P10529699362682350205

`eq[A000007(A232009(n+1)), A115978(n)]`
-/

namespace A230902.P10529699362682350205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A232009 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230902.P10529699362682350205

/-!
# A230903: Number of n X n 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230903, there is no canonical definition to state claims against.
-/

/-! ## A230903.P16911578735294382427

`A230910(∑[4*n]+1)`
-/

namespace A230903.P16911578735294382427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230903.P16911578735294382427

/-! ## A230903.P17473507541411595114

`lcm(2, A230910(A001844(n)))`
-/

namespace A230903.P17473507541411595114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230910 (A001844 n).toNat)

end

end A230903.P17473507541411595114

/-! ## A230903.P17979243294485786341

`record[A230910(Δ[A235355(n)])]`
-/

namespace A230903.P17979243294485786341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230903.P17979243294485786341

/-! ## A230903.P8569604041085341842

`record[A003982(n)*A230910(n+1)]`
-/

namespace A230903.P8569604041085341842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A230910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230903.P8569604041085341842

/-! ## A230903.P7862613477913595456

`record[A077606(n+1)*A230910(n+1)]`
-/

namespace A230903.P7862613477913595456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A230910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230903.P7862613477913595456

/-!
# A230904: Number of n X 2 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230904, the canonical program `A230904.P8566315750571635276` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230904 has offset 1).

The definition of A230904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230904.P14835533626845155754

`ogf((-2x+2x^2+2x^3)/(-1+5x-6x^2+x^3))`
-/

namespace A230904.P14835533626845155754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2, -2] [1, -5, 6, -1] n

end

end A230904.P14835533626845155754

namespace A230904

/-- `ogf((-2x+2x^2+2x^3)/(-1+5x-6x^2+x^3))` -/
def P14835533626845155754.Spec : Prop :=
  ∀ n, P14835533626845155754.a n = A230904 (n + 1)

end A230904

/-! ## A230904.P8566315750571635276

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=26`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230904

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P8566315750571635276.Spec : Prop :=
  ∀ n, P8566315750571635276.a n = A230904 (n + 1)

theorem P8566315750571635276.correct : P8566315750571635276.Spec := by
  intro n
  simp only [A230904, Nat.add_sub_cancel]

end A230904

/-! ## A230904.P3200595609874031536

`Δ[2*A028495(A004275(n))]`
-/

namespace A230904.P3200595609874031536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028495 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230904.P3200595609874031536

namespace A230904

/-- `Δ[2*A028495(A004275(n))]` -/
def P3200595609874031536.Spec : Prop :=
  ∀ n, P3200595609874031536.a n = A230904 (n + 1)

end A230904

/-! ## A230904.P8661915465546729130

`record[∑[A028495(n)]*A134451(n)]`
-/

namespace A230904.P8661915465546729130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A134451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230904.P8661915465546729130

namespace A230904

/-- `record[∑[A028495(n)]*A134451(n)]` -/
def P8661915465546729130.Spec : Prop :=
  ∀ n, P8661915465546729130.a n = A230904 (n + 1)

end A230904

/-! ## A230904.P18306829933794207976

`A094790(n+1)-A080937(abs(1-n))`
-/

namespace A230904.P18306829933794207976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094790 (n + 1) - A080937 |1 - (n : ℤ)|.toNat

end

end A230904.P18306829933794207976

namespace A230904

/-- `A094790(n+1)-A080937(abs(1-n))` -/
def P18306829933794207976.Spec : Prop :=
  ∀ n, P18306829933794207976.a n = A230904 (n + 1)

end A230904

/-! ## A230904.P115300849668470505

`A060557(n)-A215694(log2(A011782(n)))`
-/

namespace A230904.P115300849668470505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n - A215694 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A230904.P115300849668470505

namespace A230904

/-- `A060557(n)-A215694(log2(A011782(n)))` -/
def P115300849668470505.Spec : Prop :=
  ∀ n, P115300849668470505.a n = A230904 (n + 1)

end A230904

/-! ## A230904.P1526873953840448576

`A060557(n)-A215694(A000007(n)-1+n)`
-/

namespace A230904.P1526873953840448576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n - A215694 (A000007 n - 1 + (n : ℤ)).toNat

end

end A230904.P1526873953840448576

namespace A230904

/-- `A060557(n)-A215694(A000007(n)-1+n)` -/
def P1526873953840448576.Spec : Prop :=
  ∀ n, P1526873953840448576.a n = A230904 (n + 1)

end A230904

/-! ## A230904.P12866536175479199539

`A060557(n)-A215694(n-(1-A000007(n)))`
-/

namespace A230904.P12866536175479199539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n - A215694 ((n : ℤ) - (1 - A000007 n)).toNat

end

end A230904.P12866536175479199539

namespace A230904

/-- `A060557(n)-A215694(n-(1-A000007(n)))` -/
def P12866536175479199539.Spec : Prop :=
  ∀ n, P12866536175479199539.a n = A230904 (n + 1)

end A230904

/-!
# A230905: Number of n X 3 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230905, there is no canonical definition to state claims against.
-/

/-! ## A230905.P10712875767394762168

`A230910(∑[n+2]+4)`
-/

namespace A230905.P10712875767394762168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230905.P10712875767394762168

/-! ## A230905.P13262273518300699514

`lcm(2, A230910(A167614(n+1)))`
-/

namespace A230905.P13262273518300699514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230910 (A167614 (n + 1)).toNat)

end

end A230905.P13262273518300699514

/-! ## A230905.P8377653752896551556

`A230910(A167614(n+1))+A025439(n)`
-/

namespace A230905.P8377653752896551556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A167614 (n + 1)).toNat + A025439 n

end

end A230905.P8377653752896551556

/-! ## A230905.P630439304546799355

`A230910(A167614(n+1))+A184945(n)`
-/

namespace A230905.P630439304546799355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A167614 (n + 1)).toNat + A184945 n

end

end A230905.P630439304546799355

/-! ## A230905.P17613154692429550186

`A230910(A167614(n+1))+A185284(n)`
-/

namespace A230905.P17613154692429550186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A167614 (n + 1)).toNat + A185284 n

end

end A230905.P17613154692429550186

/-!
# A230906: Number of nX4 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230906, there is no canonical definition to state claims against.
-/

/-! ## A230906.P14997447117396870763

`A230910(A374004(n+1))`
-/

namespace A230906.P14997447117396870763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A374004 (n + 1)).toNat

end

end A230906.P14997447117396870763

/-! ## A230906.P14760866953928156083

`A230910(A141214(n)+7)`
-/

namespace A230906.P14760866953928156083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A141214 n + 7).toNat

end

end A230906.P14760866953928156083

/-! ## A230906.P145151576981382820

`A230910(A052905(n)+9)`
-/

namespace A230906.P145151576981382820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A052905 n + 9).toNat

end

end A230906.P145151576981382820

/-! ## A230906.P11260855088655674473

`A230910(A055999(n)+10)`
-/

namespace A230906.P11260855088655674473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A055999 n + 10).toNat

end

end A230906.P11260855088655674473

/-! ## A230906.P8848600108783839931

`A230910(Δ[A005586(n)]+5)`
-/

namespace A230906.P8848600108783839931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (f1 (n + 1) - f1 n + 5).toNat

end

end A230906.P8848600108783839931

/-!
# A230907: Number of nX5 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230907, there is no canonical definition to state claims against.
-/

/-! ## A230907.P5751832388532725249

`A230910(A374005(n+1))`
-/

namespace A230907.P5751832388532725249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A374005 (n + 1)).toNat

end

end A230907.P5751832388532725249

/-! ## A230907.P10145597654525639382

`A230910(A167499(n+3))`
-/

namespace A230907.P10145597654525639382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A167499 (n + 3)).toNat

end

end A230907.P10145597654525639382

/-! ## A230907.P7813699721974604836

`A230910(A155212(n)+13)`
-/

namespace A230907.P7813699721974604836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A155212 n + 13).toNat

end

end A230907.P7813699721974604836

/-! ## A230907.P14949577593123554401

`A230910(A056000(n)+15)`
-/

namespace A230907.P14949577593123554401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A056000 n + 15).toNat

end

end A230907.P14949577593123554401

/-! ## A230907.P12735306606612254803

`A230910(eq[7, A066657(n)])`
-/

namespace A230907.P12735306606612254803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230907.P12735306606612254803

/-!
# A230908: Number of nX6 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230908, there is no canonical definition to state claims against.
-/

/-! ## A230908.P838447827055979429

`A230910(A374007(n+1))`
-/

namespace A230908.P838447827055979429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A374007 (n + 1)).toNat

end

end A230908.P838447827055979429

/-! ## A230908.P11640744502189955404

`A230910(A166136(n+4))`
-/

namespace A230908.P11640744502189955404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A166136 (n + 4)).toNat

end

end A230908.P11640744502189955404

/-! ## A230908.P9939495524981201468

`A230910(A056115(n)+21)`
-/

namespace A230908.P9939495524981201468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A056115 n + 21).toNat

end

end A230908.P9939495524981201468

/-! ## A230908.P7995535030442903583

`A230910(A167499(n+4)+1)`
-/

namespace A230908.P7995535030442903583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A167499 (n + 4) + 1).toNat

end

end A230908.P7995535030442903583

/-! ## A230908.P5697668300373813227

`A230910(A167614(n+4)+3)`
-/

namespace A230908.P5697668300373813227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A167614 (n + 4) + 3).toNat

end

end A230908.P5697668300373813227

/-!
# A230909: Number of nX7 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230909, there is no canonical definition to state claims against.
-/

/-! ## A230909.P2321806680473903671

`A230910(A374008(n+1))`
-/

namespace A230909.P2321806680473903671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A374008 (n + 1)).toNat

end

end A230909.P2321806680473903671

/-! ## A230909.P11157352222538324483

`A230910(eq[11, A066657(n)])`
-/

namespace A230909.P11157352222538324483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230909.P11157352222538324483

/-! ## A230909.P9512512412479173691

`A230910(A167499(n+5)+2)`
-/

namespace A230909.P9512512412479173691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A167499 (n + 5) + 2).toNat

end

end A230909.P9512512412479173691

/-! ## A230909.P1980214250199963365

`A230910(A167614(n+5)+4)`
-/

namespace A230909.P1980214250199963365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A167614 (n + 5) + 4).toNat

end

end A230909.P1980214250199963365

/-! ## A230909.P9890201956546863138

`A230910(A000096(n+5)+8)`
-/

namespace A230909.P9890201956546863138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230910 (A000096 (n + 5) + 8).toNat

end

end A230909.P9890201956546863138

/-!
# A230910: T(n,k)=Number of nXk 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230910, there is no canonical definition to state claims against.
-/

/-! ## A230910.P6454947016707611327

`A253885(A229934(n+1))%A146766(n)`
-/

namespace A230910.P6454947016707611327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253885 (A229934 (n + 1)).toNat) (A146766 n)

end

end A230910.P6454947016707611327

/-! ## A230910.P10007528246689359396

`A004442(A158676(n))%A086645(n)`
-/

namespace A230910.P10007528246689359396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A158676 n).toNat) (A086645 n)

end

end A230910.P10007528246689359396

/-! ## A230910.P1918372198108710184

`xor(A144493(n), A164306(A156888(n)))`
-/

namespace A230910.P1918372198108710184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A144493 n) (A164306 (A156888 n).toNat)

end

end A230910.P1918372198108710184

/-! ## A230910.P15797365567182971145

`A155212(A167104(n))%A166344(n+1)`
-/

namespace A230910.P15797365567182971145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155212 (A167104 n).toNat) (A166344 (n + 1))

end

end A230910.P15797365567182971145

/-! ## A230910.P3531633574917264921

`A318082(A106306(3*n+5))%A220688(n+1)`
-/

namespace A230910.P3531633574917264921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318082 (A106306 (3 * n + 5)).toNat) (A220688 (n + 1))

end

end A230910.P3531633574917264921

/-!
# A230911: Number of n X 4 0..7 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230911, there is no canonical definition to state claims against.
-/

/-! ## A230911.P12297963900003063452

`A230915(∑[n+4]+3)`
-/

namespace A230911.P12297963900003063452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A230911.P12297963900003063452

/-! ## A230911.P2011275654639408001

`A230915(n+1)+A230915(A055998(n+2))`
-/

namespace A230911.P2011275654639408001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (n + 1) + A230915 (A055998 (n + 2)).toNat

end

end A230911.P2011275654639408001

/-!
# A230912: Number of nX5 0..7 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230912, there is no canonical definition to state claims against.
-/

/-! ## A230912.P4662711253332350390

`A230915(Δ[A264443(n)])`
-/

namespace A230912.P4662711253332350390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (f1 (n + 1) - f1 n).toNat

end

end A230912.P4662711253332350390

/-! ## A230912.P12446353744054099672

`A230915(A046691(n+3))`
-/

namespace A230912.P12446353744054099672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (A046691 (n + 3)).toNat

end

end A230912.P12446353744054099672

/-! ## A230912.P3735705153972564119

`A230915(A056115(n)+11)`
-/

namespace A230912.P3735705153972564119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (A056115 n + 11).toNat

end

end A230912.P3735705153972564119

/-! ## A230912.P2129193252746530556

`A230915(eq[2, A098950(n)])`
-/

namespace A230912.P2129193252746530556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230912.P2129193252746530556

/-! ## A230912.P17832721393437684833

`A230915(eq[3, A274190(n)])`
-/

namespace A230912.P17832721393437684833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230912.P17832721393437684833

/-!
# A230913: Number of nX6 0..7 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230913, there is no canonical definition to state claims against.
-/

/-! ## A230913.P2760904681536764020

`record[A230915(A329854(n))]`
-/

namespace A230913.P2760904681536764020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (A329854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230913.P2760904681536764020

/-! ## A230913.P17446023662924913771

`A230915(A052905(n+3))`
-/

namespace A230913.P17446023662924913771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (A052905 (n + 3)).toNat

end

end A230913.P17446023662924913771

/-! ## A230913.P14430333428101968106

`A230915(A056119(n)+16)`
-/

namespace A230913.P14430333428101968106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (A056119 n + 16).toNat

end

end A230913.P14430333428101968106

/-! ## A230913.P12205212894711135431

`A230915(eq[3, A098950(n)])`
-/

namespace A230913.P12205212894711135431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230913.P12205212894711135431

/-!
# A230914: Number of nX7 0..7 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230914, there is no canonical definition to state claims against.
-/

/-! ## A230914.P11339931239657097027

`A230915(A055999(n+4))`
-/

namespace A230914.P11339931239657097027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (A055999 (n + 4)).toNat

end

end A230914.P11339931239657097027

/-! ## A230914.P17473834117602957865

`A230915(eq[4, A219347(n)])`
-/

namespace A230914.P17473834117602957865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230914.P17473834117602957865

/-! ## A230914.P10028296027770745391

`A230915(eq[6, A193592(n)])`
-/

namespace A230914.P10028296027770745391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230914.P10028296027770745391

/-!
# A230915: T(n,k)=Number of nXk 0..7 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230915, there is no canonical definition to state claims against.
-/

/-! ## A230915.P614915218801358961

`A000096(A155971(n))%A318191(n)`
-/

namespace A230915.P614915218801358961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 (A155971 n).toNat) (A318191 n)

end

end A230915.P614915218801358961

/-! ## A230915.P3337968721080947896

`A157432(A157400(n+1))%A318191(n)`
-/

namespace A230915.P3337968721080947896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157432 (A157400 (n + 1)).toNat) (A318191 n)

end

end A230915.P3337968721080947896

/-!
# A230916: Number of 3 X n 0..7 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230916, there is no canonical definition to state claims against.
-/

/-! ## A230916.P157825455308873075

`A230915(∑[n+2]+4)`
-/

namespace A230916.P157825455308873075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230916.P157825455308873075

/-! ## A230916.P5869043053983046747

`lcm(2, A230915(A167614(n+1)))`
-/

namespace A230916.P5869043053983046747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230915 (A167614 (n + 1)).toNat)

end

end A230916.P5869043053983046747

/-! ## A230916.P1879567032876537791

`A230915(A167614(n+1))+A025437(n)`
-/

namespace A230916.P1879567032876537791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (A167614 (n + 1)).toNat + A025437 n

end

end A230916.P1879567032876537791

/-! ## A230916.P6984046053446522979

`A230915(A167614(n+1))+A025443(n)`
-/

namespace A230916.P6984046053446522979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (A167614 (n + 1)).toNat + A025443 n

end

end A230916.P6984046053446522979

/-! ## A230916.P17263277367054678921

`A230915(A167614(n+1))+A025444(n)`
-/

namespace A230916.P17263277367054678921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (A167614 (n + 1)).toNat + A025444 n

end

end A230916.P17263277367054678921

/-!
# A230917: Number of 4Xn 0..7 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230917, there is no canonical definition to state claims against.
-/

/-! ## A230917.P1909665601170416205

`A230915(∑[n+3]+7)`
-/

namespace A230917.P1909665601170416205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A230917.P1909665601170416205

/-!
# A230918: Numbers k such that phi(k)^phi(k) == gcd(k, phi(k)) (mod k), where phi is the Euler totient function.

The programs for A230918, there is no canonical definition to state claims against.
-/

/-! ## A230918.P8902989486199328581

`∪[A003277(n+1), A230919(n+1)]`
-/

namespace A230918.P8902989486199328581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230918.P8902989486199328581

/-! ## A230918.P10922405315956518655

`record[gcd(n+1, A002378(A009195(n+1)-1))]`
-/

namespace A230918.P10922405315956518655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002378 (A009195 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230918.P10922405315956518655

/-! ## A230918.P4891838782386782485

`eq[A000001(n), A000188(A344527(n+1))]`
-/

namespace A230918.P4891838782386782485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A344527 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230918.P4891838782386782485

/-! ## A230918.P5798096779044166194

`eq[A000001(n), A297618(A014651(2*n+3))]`
-/

namespace A230918.P5798096779044166194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297618 (A014651 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230918.P5798096779044166194

/-!
# A230919: Non-cyclic numbers n such that phi(n)^phi(n) == gcd(n, phi(n)) (mod n), where phi is Euler totient function.

The programs for A230919, there is no canonical definition to state claims against.
-/

/-! ## A230919.P11062353562817322846

`∩[A013929(n+1), A230918(n+1)]`
-/

namespace A230919.P11062353562817322846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230919.P11062353562817322846

/-! ## A230919.P1781582847806146222

`∩[A230918(n+1), A284342(n+1)]`
-/

namespace A230919.P1781582847806146222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230919.P1781582847806146222

/-! ## A230919.P17585222275073681384

`∩[A230918(n+1), A274141(n+1)]`
-/

namespace A230919.P17585222275073681384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230919.P17585222275073681384

/-! ## A230919.P10002844216128107244

`∩[A371089(n+1), A230918(n+1)]`
-/

namespace A230919.P10002844216128107244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230919.P10002844216128107244

/-! ## A230919.P12086159963908015272

`∩[A065201(n+1), A230918(n+1)]`
-/

namespace A230919.P12086159963908015272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230919.P12086159963908015272

/-!
# A230920: Number of n X 2 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230920, there is no canonical definition to state claims against.
-/

/-! ## A230920.P13608984051256321301

`sqrt(A230922(n+1)/3)`
-/

namespace A230920.P13608984051256321301
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A230922 (n + 1) : ℚ) / 3 : ℝ)

end

end A230920.P13608984051256321301

/-! ## A230920.P12915768858658236834

`A230926(∑[n+1]+2)`
-/

namespace A230920.P12915768858658236834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230920.P12915768858658236834

/-! ## A230920.P14858561116701858947

`record[A230926(n+1)/A294758(n)]`
-/

namespace A230920.P14858561116701858947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230926 (n + 1) : ℚ) / (A294758 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230920.P14858561116701858947

/-! ## A230920.P17765819941573714938

`record[A230926(∑[A158821(n)])]`
-/

namespace A230920.P17765819941573714938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230920.P17765819941573714938

/-! ## A230920.P4824168977976993911

`record[A230926(record[A158821(n)+n])]`
-/

namespace A230920.P4824168977976993911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230920.P4824168977976993911

/-!
# A230921: Number of nX3 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230921, there is no canonical definition to state claims against.
-/

/-! ## A230921.P16606948679971513495

`A230926(∑[n+2]+4)`
-/

namespace A230921.P16606948679971513495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230921.P16606948679971513495

/-! ## A230921.P13552450142185351588

`lcm(2, A230926(A167614(n+1)))`
-/

namespace A230921.P13552450142185351588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230926 (A167614 (n + 1)).toNat)

end

end A230921.P13552450142185351588

/-! ## A230921.P14017484420734999672

`A230926(A167614(n+1))%A208321(n+1)`
-/

namespace A230921.P14017484420734999672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230926 (A167614 (n + 1)).toNat) (A208321 (n + 1))

end

end A230921.P14017484420734999672

/-! ## A230921.P7144208682104840959

`or(A230926(A167614(n+1)), A353753(n+1))`
-/

namespace A230921.P7144208682104840959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230926 (A167614 (n + 1)).toNat) (A353753 (n + 1))

end

end A230921.P7144208682104840959

/-! ## A230921.P16221763903171778188

`record[A230926(A347633(n+1))]`
-/

namespace A230921.P16221763903171778188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230921.P16221763903171778188

/-!
# A230922: Number of nX4 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230922, there is no canonical definition to state claims against.
-/

/-! ## A230922.P5922641207788338885

`3*A230920(n+1)²`
-/

namespace A230922.P5922641207788338885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230920 (n + 1) ^ 2

end

end A230922.P5922641207788338885

/-! ## A230922.P8179941431331762219

`3*A230926(∑[n+2])²`
-/

namespace A230922.P8179941431331762219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230926 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A230922.P8179941431331762219

/-! ## A230922.P12235681702803177227

`A230926(A141214(n)+7)`
-/

namespace A230922.P12235681702803177227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (A141214 n + 7).toNat

end

end A230922.P12235681702803177227

/-! ## A230922.P516300121355171593

`A230926(A052905(n)+9)`
-/

namespace A230922.P516300121355171593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (A052905 n + 9).toNat

end

end A230922.P516300121355171593

/-! ## A230922.P7828768756959869559

`A230926(A055999(n)+10)`
-/

namespace A230922.P7828768756959869559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (A055999 n + 10).toNat

end

end A230922.P7828768756959869559

/-!
# A230923: Number of nX5 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230923, there is no canonical definition to state claims against.
-/

/-! ## A230923.P14882907139719606097

`A230926(A056000(n)+15)`
-/

namespace A230923.P14882907139719606097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (A056000 n + 15).toNat

end

end A230923.P14882907139719606097

/-! ## A230923.P9497462948348250442

`A230926(Δ[A264443(n)])`
-/

namespace A230923.P9497462948348250442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (f1 (n + 1) - f1 n).toNat

end

end A230923.P9497462948348250442

/-! ## A230923.P17602600045727461249

`A230926(A374005(n+1))`
-/

namespace A230923.P17602600045727461249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (A374005 (n + 1)).toNat

end

end A230923.P17602600045727461249

/-! ## A230923.P17537385634633320650

`A230926(A046691(n+3))`
-/

namespace A230923.P17537385634633320650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (A046691 (n + 3)).toNat

end

end A230923.P17537385634633320650

/-! ## A230923.P2013848016589363106

`A230926(eq[4, A193592(n)])`
-/

namespace A230923.P2013848016589363106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230923.P2013848016589363106

/-!
# A230924: Number of nX6 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230924, there is no canonical definition to state claims against.
-/

/-! ## A230924.P8419267672642566137

`A230926(A374007(n+1))`
-/

namespace A230924.P8419267672642566137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (A374007 (n + 1)).toNat

end

end A230924.P8419267672642566137

/-! ## A230924.P1890249115889762548

`A230926(eq[6, A200370(n+1)])`
-/

namespace A230924.P1890249115889762548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230924.P1890249115889762548

/-! ## A230924.P4645688297509926028

`A230926(Δ[Δ[A006504(n+1)]])`
-/

namespace A230924.P4645688297509926028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (f1 (n + 1) - f1 n).toNat

end

end A230924.P4645688297509926028

/-! ## A230924.P7956501631489932999

`A230926(Δ[A264443(n+1)]-1)`
-/

namespace A230924.P7956501631489932999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (f1 (n + 1) - f1 n - 1).toNat

end

end A230924.P7956501631489932999

/-!
# A230925: Number of nX7 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230925, there is no canonical definition to state claims against.
-/

/-! ## A230925.P2430396190758080855

`A230926(A374008(n+1))`
-/

namespace A230925.P2430396190758080855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (A374008 (n + 1)).toNat

end

end A230925.P2430396190758080855

/-! ## A230925.P3565499133963376629

`A230926(eq[6, A193592(n)])`
-/

namespace A230925.P3565499133963376629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230925.P3565499133963376629

/-! ## A230925.P10977471885423653528

`A230926(eq[7, A200370(n+1)])`
-/

namespace A230925.P10977471885423653528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230925.P10977471885423653528

/-!
# A230926: T(n,k)=Number of nXk 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230926, there is no canonical definition to state claims against.
-/

/-! ## A230926.P5616658356844222820

`A118373(A168293(n))`
-/

namespace A230926.P5616658356844222820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118373 (A168293 n).toNat

end

end A230926.P5616658356844222820

/-! ## A230926.P11144950195080031733

`A098238(2*A173006(n))`
-/

namespace A230926.P11144950195080031733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098238 (2 * A173006 n).toNat

end

end A230926.P11144950195080031733

/-! ## A230926.P18137278835062444097

`3*A218549(A188474(n))`
-/

namespace A230926.P18137278835062444097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A218549 (A188474 n).toNat

end

end A230926.P18137278835062444097

/-! ## A230926.P3394470491585373447

`3*A375204(A143007(n))`
-/

namespace A230926.P3394470491585373447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A375204 (A143007 n).toNat

end

end A230926.P3394470491585373447

/-! ## A230926.P5451872963573881933

`A018287(n+1)*A058084(A052509(n))`
-/

namespace A230926.P5451872963573881933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018287 (n + 1) * A058084 (A052509 n).toNat

end

end A230926.P5451872963573881933

/-!
# A230927: Number of black-square subarrays of (n+2)X(n+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230927, there is no canonical definition to state claims against.
-/

/-! ## A230927.P10861757222528182118

`A230935(∑[4*n]+1)`
-/

namespace A230927.P10861757222528182118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230927.P10861757222528182118

/-! ## A230927.P7041727263457405200

`lcm(2, A230935(A001844(n)))`
-/

namespace A230927.P7041727263457405200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230935 (A001844 n).toNat)

end

end A230927.P7041727263457405200

/-! ## A230927.P2509207849560818492

`record[gcd(A114327(n), A230935(n+1))]`
-/

namespace A230927.P2509207849560818492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A230935 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230927.P2509207849560818492

/-! ## A230927.P5595124297528962194

`gcd(A000038(n), A230935(A001844(n)))`
-/

namespace A230927.P5595124297528962194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A230935 (A001844 n).toNat)

end

end A230927.P5595124297528962194

/-! ## A230927.P6159375438128859795

`A230935(∑[A008574(n)])%A230975(n+1)`
-/

namespace A230927.P6159375438128859795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230935 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A230975 (n + 1))

end

end A230927.P6159375438128859795

/-!
# A230928: Number of black-square subarrays of (n+2) X (1+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230928, the canonical program `A230928.P12811911943957227377` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230928 has offset 1).

The definition of A230928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230928.P10237325228630062348

`ogf((2+2x)/(1-4x^2-5x^4))`
-/

namespace A230928.P10237325228630062348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, 0, -4, 0, -5] n

end

end A230928.P10237325228630062348

namespace A230928

/-- `ogf((2+2x)/(1-4x^2-5x^4))` -/
def P10237325228630062348.Spec : Prop :=
  ∀ n, P10237325228630062348.a n = A230928 (n + 1)

end A230928

/-! ## A230928.P12811911943957227377

`xor(2, 5*a(n-2))` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230928

/-- `xor(2, 5*a(n-2))` -/
def P12811911943957227377.Spec : Prop :=
  ∀ n, (P12811911943957227377.a n : ℤ) = A230928 (n + 1)

theorem P12811911943957227377.correct : P12811911943957227377.Spec := by
  intro n
  simp only [A230928, Nat.add_sub_cancel]

end A230928

/-! ## A230928.P18383128437027691886

`xor(2, lcm(5, a(n-2)))` with `a(0)=2, a(1)=2`
-/

namespace A230928.P18383128437027691886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  Nat.xor 2 (Nat.lcm 5 (a (n - 2)))

end

end A230928.P18383128437027691886

namespace A230928

/-- `xor(2, lcm(5, a(n-2)))` -/
def P18383128437027691886.Spec : Prop :=
  ∀ n, (P18383128437027691886.a n : ℤ) = A230928 (n + 1)

end A230928

/-! ## A230928.P9239545044973811281

`round(5^∑[char[2*n]]/3)`
-/

namespace A230928.P9239545044973811281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3)

end

end A230928.P9239545044973811281

namespace A230928

/-- `round(5^∑[char[2*n]]/3)` -/
def P9239545044973811281.Spec : Prop :=
  ∀ n, P9239545044973811281.a n = A230928 (n + 1)

end A230928

/-! ## A230928.P11708690892584741679

`abs(∑[-(5*a(n-2))])` with `a(0)=2, a(1)=0`
-/

namespace A230928.P11708690892584741679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  -(5 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A230928.P11708690892584741679

namespace A230928

/-- `abs(∑[-(5*a(n-2))])` -/
def P11708690892584741679.Spec : Prop :=
  ∀ n, P11708690892584741679.a n = A230928 (n + 1)

end A230928

/-! ## A230928.P2872482526327849386

`4*a(n-2)+5*a(n-4)` with `a(0)=2, a(1)=2, a(2)=8, a(3)=8`
-/

namespace A230928.P2872482526327849386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 8, 8] fun n a =>
  4 * a (n - 2) + 5 * a (n - 4)

end

end A230928.P2872482526327849386

namespace A230928

/-- `4*a(n-2)+5*a(n-4)` -/
def P2872482526327849386.Spec : Prop :=
  ∀ n, (P2872482526327849386.a n : ℤ) = A230928 (n + 1)

end A230928

/-! ## A230928.P17289349818297825636

`2*A015531(round((n+1)/2))`
-/

namespace A230928.P17289349818297825636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2)).toNat

end

end A230928.P17289349818297825636

namespace A230928

/-- `2*A015531(round((n+1)/2))` -/
def P17289349818297825636.Spec : Prop :=
  ∀ n, P17289349818297825636.a n = A230928 (n + 1)

end A230928

/-! ## A230928.P16317650009020484990

`lcm(2, round(5^∑[A000035(n+1)]/3))`
-/

namespace A230928.P16317650009020484990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) / 3))

end

end A230928.P16317650009020484990

namespace A230928

/-- `lcm(2, round(5^∑[A000035(n+1)]/3))` -/
def P16317650009020484990.Spec : Prop :=
  ∀ n, (P16317650009020484990.a n : ℤ) = A230928 (n + 1)

end A230928

/-!
# A230929: Number of black-square subarrays of (n+2) X (2+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230929, the canonical program `A230929.P8075108689479407525` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230929 has offset 1).

The definition of A230929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230929.P14441408420592153689

`ogf(2/(1-3x+x^2-3x^3))`
-/

namespace A230929.P14441408420592153689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -3, 1, -3] n

end

end A230929.P14441408420592153689

namespace A230929

/-- `ogf(2/(1-3x+x^2-3x^3))` -/
def P14441408420592153689.Spec : Prop :=
  ∀ n, P14441408420592153689.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P8075108689479407525

`xor(3*a(n-1), ∑[-a(n-1)])` with `a(0)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230929

/-- `xor(3*a(n-1), ∑[-a(n-1)])` -/
def P8075108689479407525.Spec : Prop :=
  ∀ n, P8075108689479407525.a n = A230929 (n + 1)

theorem P8075108689479407525.correct : P8075108689479407525.Spec := by
  intro n
  simp only [A230929, Nat.add_sub_cancel]

end A230929

/-! ## A230929.P18163865145534522651

`3*a(n-1)-a(n-2)+3*a(n-3)` with `a(0)=2, a(1)=6, a(2)=16`
-/

namespace A230929.P18163865145534522651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 16] fun n a =>
  3 * a (n - 1) - a (n - 2) + 3 * a (n - 3)

end

end A230929.P18163865145534522651

namespace A230929

/-- `3*a(n-1)-a(n-2)+3*a(n-3)` -/
def P18163865145534522651.Spec : Prop :=
  ∀ n, P18163865145534522651.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P14231721621566482140

`2*A178543(n+1)`
-/

namespace A230929.P14231721621566482140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178543 (n + 1)

end

end A230929.P14231721621566482140

namespace A230929

/-- `2*A178543(n+1)` -/
def P14231721621566482140.Spec : Prop :=
  ∀ n, P14231721621566482140.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P17610917690518051108

`∑[2*A383324(n+1)]`
-/

namespace A230929.P17610917690518051108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A383324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230929.P17610917690518051108

namespace A230929

/-- `∑[2*A383324(n+1)]` -/
def P17610917690518051108.Spec : Prop :=
  ∀ n, P17610917690518051108.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P9138462931156071735

`2*Δ[A177881(n+1)]`
-/

namespace A230929.P9138462931156071735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A230929.P9138462931156071735

namespace A230929

/-- `2*Δ[A177881(n+1)]` -/
def P9138462931156071735.Spec : Prop :=
  ∀ n, P9138462931156071735.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P6407500351228980569

`A178543(n+1)+A383324(n+1)+A178543(n)`
-/

namespace A230929.P6407500351228980569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178543 (n + 1) + (A383324 (n + 1) + A178543 n)

end

end A230929.P6407500351228980569

namespace A230929

/-- `A178543(n+1)+A383324(n+1)+A178543(n)` -/
def P6407500351228980569.Spec : Prop :=
  ∀ n, P6407500351228980569.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P2903270667212160841

`2*3^n-a(n-2)` with `a(0)=2, a(1)=6`
-/

namespace A230929.P2903270667212160841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  (2 * 3 ^ n : ℤ) - a (n - 2)

end

end A230929.P2903270667212160841

namespace A230929

/-- `2*3^n-a(n-2)` -/
def P2903270667212160841.Spec : Prop :=
  ∀ n, P2903270667212160841.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P13185404669904197710

`Δ[3^n+1-a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A230929.P13185404669904197710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (3 ^ n + 1 : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230929.P13185404669904197710

namespace A230929

/-- `Δ[3^n+1-a(n-2)]` -/
def P13185404669904197710.Spec : Prop :=
  ∀ n, P13185404669904197710.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P15153011605386967456

`∑[2*round(A000244(n+1)/5)]`
-/

namespace A230929.P15153011605386967456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((A000244 (n + 1) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230929.P15153011605386967456

namespace A230929

/-- `∑[2*round(A000244(n+1)/5)]` -/
def P15153011605386967456.Spec : Prop :=
  ∀ n, P15153011605386967456.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P15009889456516733154

`∑[2*round(3*A000244(n)/5)]`
-/

namespace A230929.P15009889456516733154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((3 * A000244 n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230929.P15009889456516733154

namespace A230929

/-- `∑[2*round(3*A000244(n)/5)]` -/
def P15009889456516733154.Spec : Prop :=
  ∀ n, P15009889456516733154.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P7759737378449538297

`Δ[floor(3^(n+2)/10)]`
-/

namespace A230929.P7759737378449538297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ (n + 2) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230929.P7759737378449538297

namespace A230929

/-- `Δ[floor(3^(n+2)/10)]` -/
def P7759737378449538297.Spec : Prop :=
  ∀ n, P7759737378449538297.a n = A230929 (n + 1)

end A230929

/-! ## A230929.P14050280618089632754

`sqrt(A230971(n+1))/2`
-/

namespace A230929.P14050280618089632754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A230971 (n + 1) : ℝ) / 2

end

end A230929.P14050280618089632754

namespace A230929

/-- `sqrt(A230971(n+1))/2` -/
def P14050280618089632754.Spec : Prop :=
  ∀ n, P14050280618089632754.a n = (A230929 (n + 1) : ℝ)

end A230929

/-!
# A230930: Number of black-square subarrays of (n+2) X (3+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230930, there is no canonical definition to state claims against.
-/

/-! ## A230930.P13296539305945137869

`A230935(∑[n+2]+4)`
-/

namespace A230930.P13296539305945137869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230930.P13296539305945137869

/-! ## A230930.P619934959608320778

`lcm(2, A230935(A167614(n+1)))`
-/

namespace A230930.P619934959608320778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230935 (A167614 (n + 1)).toNat)

end

end A230930.P619934959608320778

/-! ## A230930.P7661256715826939601

`A230935(A167614(n+1))+A025439(n)`
-/

namespace A230930.P7661256715826939601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A167614 (n + 1)).toNat + A025439 n

end

end A230930.P7661256715826939601

/-! ## A230930.P6228479908336432363

`A230935(A167614(n+1))+A034457(n+1)`
-/

namespace A230930.P6228479908336432363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A167614 (n + 1)).toNat + A034457 (n + 1)

end

end A230930.P6228479908336432363

/-! ## A230930.P4044415559107554195

`A230935(A167614(n+1))%A131557(n+1)`
-/

namespace A230930.P4044415559107554195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230935 (A167614 (n + 1)).toNat) (A131557 (n + 1))

end

end A230930.P4044415559107554195

/-!
# A230931: Number of black-square subarrays of (n+2) X (4+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230931, there is no canonical definition to state claims against.
-/

/-! ## A230931.P9495500801431464099

`sqrt(A230973(n+1))/2`
-/

namespace A230931.P9495500801431464099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A230973 (n + 1) : ℝ) / 2

end

end A230931.P9495500801431464099

/-! ## A230931.P3741206339935125624

`A230935(A374004(n+1))`
-/

namespace A230931.P3741206339935125624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A374004 (n + 1)).toNat

end

end A230931.P3741206339935125624

/-! ## A230931.P8889104496534097762

`A230935(A141214(n)+7)`
-/

namespace A230931.P8889104496534097762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A141214 n + 7).toNat

end

end A230931.P8889104496534097762

/-! ## A230931.P3291478967201967501

`A230935(A052905(n)+9)`
-/

namespace A230931.P3291478967201967501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A052905 n + 9).toNat

end

end A230931.P3291478967201967501

/-! ## A230931.P12369178928487240059

`A230935(A167614(n+2)+1)`
-/

namespace A230931.P12369178928487240059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A167614 (n + 2) + 1).toNat

end

end A230931.P12369178928487240059

/-!
# A230932: Number of black-square subarrays of (n+2)X(5+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230932, there is no canonical definition to state claims against.
-/

/-! ## A230932.P1520533980693650040

`A230935(A374005(n+1))`
-/

namespace A230932.P1520533980693650040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A374005 (n + 1)).toNat

end

end A230932.P1520533980693650040

/-! ## A230932.P12632958174657779938

`A230935(A167499(n+3))`
-/

namespace A230932.P12632958174657779938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A167499 (n + 3)).toNat

end

end A230932.P12632958174657779938

/-! ## A230932.P8628464284830274874

`A230935(A167614(n+3)+2)`
-/

namespace A230932.P8628464284830274874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A167614 (n + 3) + 2).toNat

end

end A230932.P8628464284830274874

/-! ## A230932.P2950383063519729635

`A230935(A000124(n+4)+4)`
-/

namespace A230932.P2950383063519729635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A000124 (n + 4) + 4).toNat

end

end A230932.P2950383063519729635

/-! ## A230932.P4311747425369245835

`A230935(A179865(n+5)+5)`
-/

namespace A230932.P4311747425369245835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A179865 (n + 5) + 5).toNat

end

end A230932.P4311747425369245835

/-!
# A230933: Number of black-square subarrays of (n+2)X(6+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230933, there is no canonical definition to state claims against.
-/

/-! ## A230933.P6868972010350926160

`sqrt(A230975(n+1))/2`
-/

namespace A230933.P6868972010350926160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A230975 (n + 1) : ℝ) / 2

end

end A230933.P6868972010350926160

/-! ## A230933.P16330600183370420299

`A230935(A374007(n+1))`
-/

namespace A230933.P16330600183370420299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A374007 (n + 1)).toNat

end

end A230933.P16330600183370420299

/-! ## A230933.P8719063031503467348

`A230935(A052905(n+3))`
-/

namespace A230933.P8719063031503467348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A052905 (n + 3)).toNat

end

end A230933.P8719063031503467348

/-! ## A230933.P17798181045351082091

`A230935(eq[3, A219347(n)])`
-/

namespace A230933.P17798181045351082091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230933.P17798181045351082091

/-! ## A230933.P16826814513404424364

`A230935(Δ[Δ[A006504(n+1)]])`
-/

namespace A230933.P16826814513404424364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (f1 (n + 1) - f1 n).toNat

end

end A230933.P16826814513404424364

/-!
# A230934: Number of black-square subarrays of (n+2)X(7+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230934, there is no canonical definition to state claims against.
-/

/-! ## A230934.P17790363556320215386

`A230935(A374008(n+1))`
-/

namespace A230934.P17790363556320215386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A374008 (n + 1)).toNat

end

end A230934.P17790363556320215386

/-! ## A230934.P8767627483666450170

`A230935(A056119(n)+28)`
-/

namespace A230934.P8767627483666450170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A056119 n + 28).toNat

end

end A230934.P8767627483666450170

/-! ## A230934.P4042261256036486303

`A230935(eq[11, A066657(n)])`
-/

namespace A230934.P4042261256036486303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230934.P4042261256036486303

/-! ## A230934.P12001870270587913199

`A230935(eq[8, A131818(n+1)])`
-/

namespace A230934.P12001870270587913199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230934.P12001870270587913199

/-! ## A230934.P18429944866851128593

`A230935(A055999(n+4))`
-/

namespace A230934.P18429944866851128593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230935 (A055999 (n + 4)).toNat

end

end A230934.P18429944866851128593

/-!
# A230936: Number of white-square subarrays of (n+2) X (n+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230936, there is no canonical definition to state claims against.
-/

/-! ## A230936.P17145285542013838039

`A230940(∑[4*n]+1)`
-/

namespace A230936.P17145285542013838039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230936.P17145285542013838039

/-! ## A230936.P17246175585390395337

`lcm(2, A230940(A001844(n)))`
-/

namespace A230936.P17246175585390395337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230940 (A001844 n).toNat)

end

end A230936.P17246175585390395337

/-! ## A230936.P11388015353140496613

`A230940(∑[A008574(n)])+char[23]`
-/

namespace A230936.P11388015353140496613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A230936.P11388015353140496613

/-! ## A230936.P15995711858946115657

`A230940(A001844(n))%A230976(n+1)`
-/

namespace A230936.P15995711858946115657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230940 (A001844 n).toNat) (A230976 (n + 1))

end

end A230936.P15995711858946115657

/-!
# A230937: Number of white-square subarrays of (n+2) X (3+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230937, there is no canonical definition to state claims against.
-/

/-! ## A230937.P12667024666296903852

`A230940(∑[n+2]+4)`
-/

namespace A230937.P12667024666296903852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230937.P12667024666296903852

/-! ## A230937.P16348166879251775952

`lcm(2, A230940(A167614(n+1)))`
-/

namespace A230937.P16348166879251775952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230940 (A167614 (n + 1)).toNat)

end

end A230937.P16348166879251775952

/-! ## A230937.P17341013060694707392

`A230940(A167614(n+1))%A134007(n)`
-/

namespace A230937.P17341013060694707392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230940 (A167614 (n + 1)).toNat) (A134007 n)

end

end A230937.P17341013060694707392

/-! ## A230937.P7309103917743009476

`gcd(A000038(n), A230940(A167614(n+1)))`
-/

namespace A230937.P7309103917743009476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A230940 (A167614 (n + 1)).toNat)

end

end A230937.P7309103917743009476

/-! ## A230937.P200780300435234512

`A230940(A167614(n+1))+A034457(n+1)`
-/

namespace A230937.P200780300435234512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (A167614 (n + 1)).toNat + A034457 (n + 1)

end

end A230937.P200780300435234512

/-!
# A230938: Number of white-square subarrays of (n+2)X(5+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230938, there is no canonical definition to state claims against.
-/

/-! ## A230938.P16623853645371381673

`A230940(A167499(n+3))`
-/

namespace A230938.P16623853645371381673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (A167499 (n + 3)).toNat

end

end A230938.P16623853645371381673

/-! ## A230938.P10847658076786921913

`A230940(A167614(n+3)+2)`
-/

namespace A230938.P10847658076786921913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (A167614 (n + 3) + 2).toNat

end

end A230938.P10847658076786921913

/-! ## A230938.P11606102885597384620

`A230940(A000217(n+4)+5)`
-/

namespace A230938.P11606102885597384620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (A000217 (n + 4) + 5).toNat

end

end A230938.P11606102885597384620

/-! ## A230938.P11134455116367514046

`A230940(A038722(Δ[A264443(n)]))`
-/

namespace A230938.P11134455116367514046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A230938.P11134455116367514046

/-! ## A230938.P3296490897228753097

`A230940(A052905(n+3)-A005408(n))`
-/

namespace A230938.P3296490897228753097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (A052905 (n + 3) - A005408 n).toNat

end

end A230938.P3296490897228753097

/-!
# A230939: Number of white-square subarrays of (n+2)X(7+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230939, there is no canonical definition to state claims against.
-/

/-! ## A230939.P11152676515416667142

`A230940(eq[11, A066657(n)])`
-/

namespace A230939.P11152676515416667142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230939.P11152676515416667142

/-! ## A230939.P15217833620346045564

`A230940(eq[8, A131818(n+1)])`
-/

namespace A230939.P15217833620346045564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230939.P15217833620346045564

/-! ## A230939.P2131314050033504928

`A230940(A374008(n+1))`
-/

namespace A230939.P2131314050033504928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (A374008 (n + 1)).toNat

end

end A230939.P2131314050033504928

/-! ## A230939.P9713873251802094471

`A230940(eq[4, A219347(n)])`
-/

namespace A230939.P9713873251802094471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230939.P9713873251802094471

/-! ## A230939.P8594474095775308681

`A230940(eq[6, A193592(n)])`
-/

namespace A230939.P8594474095775308681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230939.P8594474095775308681

/-!
# A230940: T(n,k)=Number of white-square subarrays of (n+2)X(k+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230940, there is no canonical definition to state claims against.
-/

/-! ## A230940.P14677925462903717019

`A230977(n+1)/(4*A230935(n+1))`
-/

namespace A230940.P14677925462903717019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230977 (n + 1) : ℚ) / (4 * A230935 (n + 1) : ℚ)

end

end A230940.P14677925462903717019

/-! ## A230940.P5018901311792120012

`A230977(n+1)/A008574(A230935(n+1))`
-/

namespace A230940.P5018901311792120012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230977 (n + 1) : ℚ) / (A008574 (A230935 (n + 1)).toNat : ℚ)

end

end A230940.P5018901311792120012

/-! ## A230940.P3940536343526649374

`A131728(A230977(n+1)/A230935(n+1))`
-/

namespace A230940.P3940536343526649374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (SequenceMachineLib.roundAway ((A230977 (n + 1) : ℚ) / (A230935 (n + 1) : ℚ))).toNat

end

end A230940.P3940536343526649374

/-!
# A230941: Number of (n+3)X(n+3) 0..3 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230941, there is no canonical definition to state claims against.
-/

/-! ## A230941.P4646569653337251187

`A230949(∑[4*n]+1)`
-/

namespace A230941.P4646569653337251187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230941.P4646569653337251187

/-! ## A230941.P9128755406399894572

`lcm(2, A230949(A001844(n)))`
-/

namespace A230941.P9128755406399894572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230949 (A001844 n).toNat)

end

end A230941.P9128755406399894572

/-! ## A230941.P10620712903271035425

`∑{digits}[n, A230949(A001844(#))]`
-/

namespace A230941.P10620712903271035425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A230949 (A001844 x).toNat).sum

end

end A230941.P10620712903271035425

/-!
# A230942: Number of (n+3) X (1+3) 0..3 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230942, there is no canonical definition to state claims against.
-/

/-! ## A230942.P4207480528009723224

`sqrt(A230789(n+1))/2`
-/

namespace A230942.P4207480528009723224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A230789 (n + 1) : ℝ) / 2

end

end A230942.P4207480528009723224

/-! ## A230942.P17816273807308395280

`A231023(∑[n]+1)`
-/

namespace A230942.P17816273807308395280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230942.P17816273807308395280

/-! ## A230942.P61080101144037753

`record[A103451(n)*A231023(n+1)]`
-/

namespace A230942.P61080101144037753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A231023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230942.P61080101144037753

/-! ## A230942.P6738686285525583976

`record[gcd(A231023(n+1), A271439(n))]`
-/

namespace A230942.P6738686285525583976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231023 (n + 1)) (A271439 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230942.P6738686285525583976

/-! ## A230942.P16994342028021933812

`record[root(A231023(n+1), A002260(n+1))]`
-/

namespace A230942.P16994342028021933812
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231023 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230942.P16994342028021933812

/-!
# A230943: Number of (n+3) X (2+3) 0..3 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230943, there is no canonical definition to state claims against.
-/

/-! ## A230943.P14354324379546175377

`A230949(∑[n+1]+2)`
-/

namespace A230943.P14354324379546175377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230943.P14354324379546175377

/-! ## A230943.P9612899510177580982

`record[A230949(A025810(n)+2)]`
-/

namespace A230943.P9612899510177580982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (A025810 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230943.P9612899510177580982

/-! ## A230943.P7766642334849306574

`record[A230949(A133263(abs(1-n)))]`
-/

namespace A230943.P7766642334849306574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230943.P7766642334849306574

/-! ## A230943.P705080014943779393

`record[gcd(A002262(n), A230949(n+2))]`
-/

namespace A230943.P705080014943779393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A230949 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230943.P705080014943779393

/-! ## A230943.P13503064613392780460

`record[A010054(n+1)*A230949(n+3)]`
-/

namespace A230943.P13503064613392780460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A230949 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230943.P13503064613392780460

/-!
# A230944: Number of (n+3)X(3+3) 0..3 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230944, there is no canonical definition to state claims against.
-/

/-! ## A230944.P12227848684499428550

`sqrt(A230791(n+1))/2`
-/

namespace A230944.P12227848684499428550
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A230791 (n + 1) : ℝ) / 2

end

end A230944.P12227848684499428550

/-! ## A230944.P11174358884499267728

`A231023(∑[n+2]+4)`
-/

namespace A230944.P11174358884499267728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230944.P11174358884499267728

/-! ## A230944.P13870566615605997511

`lcm(2, A231023(A167614(n+1)))`
-/

namespace A230944.P13870566615605997511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231023 (A167614 (n + 1)).toNat)

end

end A230944.P13870566615605997511

/-! ## A230944.P9980228989270414578

`A231023(A167614(n+1))+A185238(n)`
-/

namespace A230944.P9980228989270414578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A167614 (n + 1)).toNat + A185238 n

end

end A230944.P9980228989270414578

/-! ## A230944.P6974849590069431908

`A230949(∑[n+2]+4)`
-/

namespace A230944.P6974849590069431908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230944.P6974849590069431908

/-!
# A230945: Number of (n+3)X(4+3) 0..3 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230945, there is no canonical definition to state claims against.
-/

/-! ## A230945.P711745852975425997

`A230949(∑[n+3]+7)`
-/

namespace A230945.P711745852975425997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A230945.P711745852975425997

/-! ## A230945.P5537806427212541670

`A152830(n)*A230949(A374004(n+1))`
-/

namespace A230945.P5537806427212541670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 n * A230949 (A374004 (n + 1)).toNat

end

end A230945.P5537806427212541670

/-! ## A230945.P9639839917890439359

`lcm(2, A230949(A155212(n)+5))`
-/

namespace A230945.P9639839917890439359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230949 (A155212 n + 5).toNat)

end

end A230945.P9639839917890439359

/-!
# A230946: Number of (n+3)X(5+3) 0..3 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230946, there is no canonical definition to state claims against.
-/

/-! ## A230946.P9145844802307738807

`A231023(A167499(n+3))`
-/

namespace A230946.P9145844802307738807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A167499 (n + 3)).toNat

end

end A230946.P9145844802307738807

/-! ## A230946.P18393396544993944633

`A231023(A155212(n)+13)`
-/

namespace A230946.P18393396544993944633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A155212 n + 13).toNat

end

end A230946.P18393396544993944633

/-! ## A230946.P15471473507168871842

`A231023(A056000(n)+15)`
-/

namespace A230946.P15471473507168871842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A056000 n + 15).toNat

end

end A230946.P15471473507168871842

/-! ## A230946.P5140992989955307647

`A231023(eq[7, A066657(n)])`
-/

namespace A230946.P5140992989955307647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230946.P5140992989955307647

/-!
# A230947: Number of (n+3)X(6+3) 0..3 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230947, there is no canonical definition to state claims against.
-/

/-! ## A230947.P14911432358138875398

`A230949(A374007(n+1))`
-/

namespace A230947.P14911432358138875398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (A374007 (n + 1)).toNat

end

end A230947.P14911432358138875398

/-! ## A230947.P7994969033191139920

`A230949(A055999(n+2)+12)`
-/

namespace A230947.P7994969033191139920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (A055999 (n + 2) + 12).toNat

end

end A230947.P7994969033191139920

/-! ## A230947.P4776147091396196561

`A230949(eq[7, A131818(n+1)])`
-/

namespace A230947.P4776147091396196561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230947.P4776147091396196561

/-! ## A230947.P14943783567945795413

`A230949(eq[5, A193592(n)])`
-/

namespace A230947.P14943783567945795413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230947.P14943783567945795413

/-! ## A230947.P3777542163738325694

`A230949(eq[6, A200370(n+1)])`
-/

namespace A230947.P3777542163738325694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230947.P3777542163738325694

/-!
# A230948: Number of (n+3)X(7+3) 0..3 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230948, there is no canonical definition to state claims against.
-/

/-! ## A230948.P7296323707972977021

`A231023(eq[11, A066657(n)])`
-/

namespace A230948.P7296323707972977021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230948.P7296323707972977021

/-! ## A230948.P12188794795954768321

`A231023(A000217(n+6)+7)`
-/

namespace A230948.P12188794795954768321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A000217 (n + 6) + 7).toNat

end

end A230948.P12188794795954768321

/-! ## A230948.P14962801093822299705

`A231023(eq[8, A131818(n+1)])`
-/

namespace A230948.P14962801093822299705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230948.P14962801093822299705

/-! ## A230948.P8039791829234046787

`A231023(A055999(n+4))`
-/

namespace A230948.P8039791829234046787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A055999 (n + 4)).toNat

end

end A230948.P8039791829234046787

/-! ## A230948.P6261254426163235210

`A231023(eq[6, A193592(n)])`
-/

namespace A230948.P6261254426163235210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230948.P6261254426163235210

/-!
# A230949: T(n,k)=Number of (n+3)X(k+3) 0..3 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230949, there is no canonical definition to state claims against.
-/

/-! ## A230949.P18340734470789579450

`A230796(n+1)/(4*A231023(n+1))`
-/

namespace A230949.P18340734470789579450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230796 (n + 1) : ℚ) / (4 * A231023 (n + 1) : ℚ)

end

end A230949.P18340734470789579450

/-! ## A230949.P12917291992056790347

`A230796(n+1)/A008574(A231023(n+1))`
-/

namespace A230949.P12917291992056790347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230796 (n + 1) : ℚ) / (A008574 (A231023 (n + 1)).toNat : ℚ)

end

end A230949.P12917291992056790347

/-! ## A230949.P14766538627841948713

`A231023(n+1)%A227041(A204076(n+1))`
-/

namespace A230949.P14766538627841948713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231023 (n + 1)) (A227041 (A204076 (n + 1)).toNat)

end

end A230949.P14766538627841948713

/-!
# A230950: Boustrophedon transform of Thue-Morse sequence A010060.

The programs for A230950, there is no canonical definition to state claims against.
-/

/-! ## A230950.P7222465635751858470

`A000667(n)-A230951(n)`
-/

namespace A230950.P7222465635751858470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - A230951 n

end

end A230950.P7222465635751858470

/-! ## A230950.P11083136021340979289

`A230958(n)-A000667(n)`
-/

namespace A230950.P11083136021340979289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230958 n - A000667 n

end

end A230950.P11083136021340979289

/-! ## A230950.P5759167543143541333

`(A230958(n)-A230951(n))/2`
-/

namespace A230950.P5759167543143541333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230958 n - A230951 n : ℚ) / 2

end

end A230950.P5759167543143541333

/-! ## A230950.P3795832232846086929

`A292975(A034856(n+1))-A230951(n)`
-/

namespace A230950.P3795832232846086929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A034856 (n + 1)).toNat - A230951 n

end

end A230950.P3795832232846086929

/-! ## A230950.P15566457484106769922

`A230958(n)-A292975(A034856(n+1))`
-/

namespace A230950.P15566457484106769922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230958 n - A292975 (A034856 (n + 1)).toNat

end

end A230950.P15566457484106769922

/-! ## A230950.P2730967474509605371

`A003701(n)+A009739(n)-A230951(n)`
-/

namespace A230950.P2730967474509605371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003701 n + (A009739 n - A230951 n)

end

end A230950.P2730967474509605371

/-! ## A230950.P11777793964780739205

`A062161(n)+A062272(n)-A230951(n)`
-/

namespace A230950.P11777793964780739205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n + (A062272 n - A230951 n)

end

end A230950.P11777793964780739205

/-!
# A230951: Boustrophedon transform of Thue-Morse sequence A010059.

The programs for A230951, there is no canonical definition to state claims against.
-/

/-! ## A230951.P17254842766745412870

`A000667(n)-A230950(n)`
-/

namespace A230951.P17254842766745412870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - A230950 n

end

end A230951.P17254842766745412870

/-! ## A230951.P14054455905619201122

`2*A000667(n)-A230958(n)`
-/

namespace A230951.P14054455905619201122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000667 n - A230958 n

end

end A230951.P14054455905619201122

/-! ## A230951.P10465977681285600622

`A230958(n)-2*A230950(n)`
-/

namespace A230951.P10465977681285600622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230958 n - 2 * A230950 n

end

end A230951.P10465977681285600622

/-! ## A230951.P1606307843195097928

`A292975(A034856(n+1))-A230950(n)`
-/

namespace A230951.P1606307843195097928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A034856 (n + 1)).toNat - A230950 n

end

end A230951.P1606307843195097928

/-! ## A230951.P11041988138310042602

`A003701(n)+A009739(n)-A230950(n)`
-/

namespace A230951.P11041988138310042602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003701 n + (A009739 n - A230950 n)

end

end A230951.P11041988138310042602

/-! ## A230951.P7623686063682056190

`A062161(n)+A062272(n)-A230950(n)`
-/

namespace A230951.P7623686063682056190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n + (A062272 n - A230950 n)

end

end A230951.P7623686063682056190

/-! ## A230951.P8041832764606690538

`2*A292975(A034856(n+1))-A230958(n)`
-/

namespace A230951.P8041832764606690538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292975 (A034856 (n + 1)).toNat - A230958 n

end

end A230951.P8041832764606690538

/-!
# A230952: Boustrophedon transform of Hamming weight (A000120).

The programs for A230952, there is no canonical definition to state claims against.
-/

/-! ## A230952.P6156410827800777727

`A102679(4^n)+A080410(n)`
-/

namespace A230952.P6156410827800777727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (4 ^ n) + A080410 n

end

end A230952.P6156410827800777727

/-! ## A230952.P7167203522204904984

`A080410(n)+A025466(A030191(n))`
-/

namespace A230952.P7167203522204904984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080410 n + A025466 (A030191 n).toNat

end

end A230952.P7167203522204904984

/-! ## A230952.P5444509487525825494

`A327695(A328039(n+1)+1)+A080410(n)`
-/

namespace A230952.P5444509487525825494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327695 (A328039 (n + 1) + 1).toNat + A080410 n

end

end A230952.P5444509487525825494

/-!
# A230953: Boustrophedon transform of odd primes, cf. A065091.

The programs for A230953, there is no canonical definition to state claims against.
-/

/-! ## A230953.P13622029683069653318

`∑[A202307(∏[Δ[n²]])]`
-/

namespace A230953.P13622029683069653318
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202307 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230953.P13622029683069653318

/-!
# A230954: Boustrophedon transform of composite numbers.

The programs for A230954, there is no canonical definition to state claims against.
-/

/-! ## A230954.P2389173855981726297

`∑[A309177(∑[A307571(n)])]`
-/

namespace A230954.P2389173855981726297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307571 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309177 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230954.P2389173855981726297

/-!
# A230955: Boustrophedon transform of nonprimes.

The programs for A230955, there is no canonical definition to state claims against.
-/

/-! ## A230955.P531533885625048525

`A077172(A036994(n+1)+A006134(n))`
-/

namespace A230955.P531533885625048525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077172 (A036994 (n + 1) + A006134 n).toNat

end

end A230955.P531533885625048525

/-! ## A230955.P3662969163417003694

`∑[A217213(n)+A103128(A006659(n+1))]`
-/

namespace A230955.P3662969163417003694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217213 n + A103128 (A006659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230955.P3662969163417003694

/-!
# A230957: Boustrophedon transform of partition numbers A000009.

The programs for A230957, there is no canonical definition to state claims against.
-/

/-! ## A230957.P8027759246448235739

`A156562(A149004(n)+n)`
-/

namespace A230957.P8027759246448235739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A149004 n + (n : ℤ)).toNat

end

end A230957.P8027759246448235739

/-! ## A230957.P7254847469289373439

`record[A023987(∑[A054423(n)])]`
-/

namespace A230957.P7254847469289373439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054423 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023987 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230957.P7254847469289373439

/-! ## A230957.P15162081254192713724

`∑[A155216(A001426(n)+1)]`
-/

namespace A230957.P15162081254192713724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155216 (A001426 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230957.P15162081254192713724

/-!
# A230958: Boustrophedon transform of Thue-Morse sequence A001285.

The programs for A230958, there is no canonical definition to state claims against.
-/

/-! ## A230958.P17105249731526161641

`A230950(n)+A000667(n)`
-/

namespace A230958.P17105249731526161641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230950 n + A000667 n

end

end A230958.P17105249731526161641

/-! ## A230958.P14909044825387387874

`A230951(n)+2*A230950(n)`
-/

namespace A230958.P14909044825387387874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230951 n + 2 * A230950 n

end

end A230958.P14909044825387387874

/-! ## A230958.P10724193404538737421

`2*A000667(n)-A230951(n)`
-/

namespace A230958.P10724193404538737421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000667 n - A230951 n

end

end A230958.P10724193404538737421

/-! ## A230958.P7054780125799207692

`A292975(A034856(n+1))+A230950(n)`
-/

namespace A230958.P7054780125799207692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A034856 (n + 1)).toNat + A230950 n

end

end A230958.P7054780125799207692

/-! ## A230958.P5842911915973247136

`A003701(n)+A230950(n)+A009739(n)`
-/

namespace A230958.P5842911915973247136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003701 n + (A230950 n + A009739 n)

end

end A230958.P5842911915973247136

/-! ## A230958.P7706193112014399414

`A062161(n)+A230950(n)+A062272(n)`
-/

namespace A230958.P7706193112014399414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n + (A230950 n + A062272 n)

end

end A230958.P7706193112014399414

/-! ## A230958.P14230520339141478378

`A000111(n)+A000674(n)-A230951(n)`
-/

namespace A230958.P14230520339141478378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (A000674 n - A230951 n)

end

end A230958.P14230520339141478378

/-! ## A230958.P10318371795020263159

`2*A292975(A034856(n+1))-A230951(n)`
-/

namespace A230958.P10318371795020263159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292975 (A034856 (n + 1)).toNat - A230951 n

end

end A230958.P10318371795020263159

/-!
# A230960: Boustrophedon transform of factorials, cf. A000142.

The programs for A230960, there is no canonical definition to state claims against.
-/

/-! ## A230960.P6701122969210174428

`n*a(n-1)+A000111(n)` with `a(0)=1`
-/

namespace A230960.P6701122969210174428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + A000111 n

end

end A230960.P6701122969210174428

/-! ## A230960.P2896257290463493069

`abs(A346838(n))+n*a(n-1)` with `a(0)=1`
-/

namespace A230960.P2896257290463493069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A346838 n| + (n : ℤ) * a (n - 1)

end

end A230960.P2896257290463493069

/-! ## A230960.P17822456149492663275

`A109449(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A230960.P17822456149492663275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A230960.P17822456149492663275

/-! ## A230960.P4361630420645365408

`abs(A247453(∑[n]))+n*a(n-1)` with `a(0)=1`
-/

namespace A230960.P4361630420645365408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A247453 (∑ j ∈ Finset.range (n + 1), f1 j)| + (n : ℤ) * a (n - 1)

end

end A230960.P4361630420645365408

/-! ## A230960.P8310700068926018101

`A008282(∑[n]+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A230960.P8310700068926018101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ) * a (n - 1)

end

end A230960.P8310700068926018101

/-! ## A230960.P579522035301747795

`A229892(∑[n]+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A230960.P579522035301747795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229892 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ) * a (n - 1)

end

end A230960.P579522035301747795

/-! ## A230960.P211977555211528335

`A250261(∑[n+3])+a(n-1)/n^-1` with `a(0)=1`
-/

namespace A230960.P211977555211528335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A250261 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A230960.P211977555211528335

/-! ## A230960.P16972268786724321570

`A008281(∑[n]+n)+a(n-1)/n^-1` with `a(0)=1`
-/

namespace A230960.P16972268786724321570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A008281 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A230960.P16972268786724321570

/-! ## A230960.P11683638246251037298

`A010094(∑[abs(1-n)])+a(n-1)/n^-1` with `a(0)=1`
-/

namespace A230960.P11683638246251037298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A010094 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A230960.P11683638246251037298

/-! ## A230960.P4952801239279565411

`gcd(A009006(n), A122045(n))+a(n-1)/n^-1` with `a(0)=1`
-/

namespace A230960.P4952801239279565411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.gcd (A009006 n) (A122045 n) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A230960.P4952801239279565411

/-!
# A230961: Boustrophedon transform of factorials beginning with 1, cf. A000142.

The programs for A230961, there is no canonical definition to state claims against.
-/

/-! ## A230961.P12595693599637857363

`A230960(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A230961.P12595693599637857363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230960 n + (n : ℤ) * a (n - 1)

end

end A230961.P12595693599637857363

/-! ## A230961.P13418082755531057840

`A065048(n+1)-A218617(A006720(n))`
-/

namespace A230961.P13418082755531057840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065048 (n + 1) - A218617 (A006720 n).toNat

end

end A230961.P13418082755531057840

/-!
# A230964: Number of n X 2 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230964, there is no canonical definition to state claims against.
-/

/-! ## A230964.P694433715304810762

`A230968(∑[n+1]+2)`
-/

namespace A230964.P694433715304810762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230968 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230964.P694433715304810762

/-! ## A230964.P2666248741772215013

`record[A230968(n+1)/A294609(n)]`
-/

namespace A230964.P2666248741772215013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230968 (n + 1) : ℚ) / (A294609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230964.P2666248741772215013

/-! ## A230964.P13979171030735328384

`record[A230968(n+2)/A157150(n)]`
-/

namespace A230964.P13979171030735328384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230968 (n + 2) : ℚ) / (A157150 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230964.P13979171030735328384

/-! ## A230964.P17478668685501329412

`record[A230968(n+2)/A342890(n)]`
-/

namespace A230964.P17478668685501329412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230968 (n + 2) : ℚ) / (A342890 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230964.P17478668685501329412

/-! ## A230964.P7155305274886562543

`record[A230968(n+1)%A038255(n)]`
-/

namespace A230964.P7155305274886562543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230968 (n + 1)) (A038255 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230964.P7155305274886562543

/-!
# A230965: Number of nX3 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230965, there is no canonical definition to state claims against.
-/

/-! ## A230965.P12972828848425511282

`A230968(∑[n+2]+4)`
-/

namespace A230965.P12972828848425511282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230968 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230965.P12972828848425511282

/-! ## A230965.P11398598208311853195

`lcm(2, A230968(A167614(n+1)))`
-/

namespace A230965.P11398598208311853195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230968 (A167614 (n + 1)).toNat)

end

end A230965.P11398598208311853195

/-! ## A230965.P9311342180569681866

`record[A010054(n)*A230968(n+3)]`
-/

namespace A230965.P9311342180569681866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230968 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230965.P9311342180569681866

/-! ## A230965.P5571192507717332009

`record[A230968(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A230965.P5571192507717332009
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230968 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230965.P5571192507717332009

/-! ## A230965.P4661829864065526127

`record[A230968(A167614(floor(n/(xor(n, n+1)+1))+1))]`
-/

namespace A230965.P4661829864065526127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230968 (A167614 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230965.P4661829864065526127

/-!
# A230966: Number of nX4 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230966, there is no canonical definition to state claims against.
-/

/-! ## A230966.P17939173230526178173

`A230968(∑[n+3]+7)`
-/

namespace A230966.P17939173230526178173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230968 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A230966.P17939173230526178173

/-! ## A230966.P11644663488116960873

`record[A230968(Δ[A175822(n)])]`
-/

namespace A230966.P11644663488116960873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175822 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230968 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230966.P11644663488116960873

/-!
# A230967: Number of n X 5 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230967, there is no canonical definition to state claims against.
-/

/-! ## A230967.P10239685161777118400

`A230968(A167499(n+3))`
-/

namespace A230967.P10239685161777118400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230968 (A167499 (n + 3)).toNat

end

end A230967.P10239685161777118400

/-! ## A230967.P13717142829788653539

`A230968(A155212(n)+13)`
-/

namespace A230967.P13717142829788653539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230968 (A155212 n + 13).toNat

end

end A230967.P13717142829788653539

/-! ## A230967.P3137284799329068508

`A230968(eq[7, A066657(n)])`
-/

namespace A230967.P3137284799329068508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230967.P3137284799329068508

/-! ## A230967.P5171258150556301727

`A230968(A000124(n+4)+4)`
-/

namespace A230967.P5171258150556301727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230968 (A000124 (n + 4) + 4).toNat

end

end A230967.P5171258150556301727

/-!
# A230968: T(n,k) = Number of n X k 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230968, there is no canonical definition to state claims against.
-/

/-! ## A230968.P6816908634384761651

`(10^A157243(n))%A157150(n)`
-/

namespace A230968.P6816908634384761651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A157243 n : ℤ))) (A157150 n)

end

end A230968.P6816908634384761651

/-! ## A230968.P16773616264939737743

`A018555(A008288(n))-A008288(n)`
-/

namespace A230968.P16773616264939737743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018555 (A008288 n).toNat - A008288 n

end

end A230968.P16773616264939737743

/-! ## A230968.P8627176954311893742

`A217010(A056941(n))%A157150(n)`
-/

namespace A230968.P8627176954311893742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217010 (A056941 n).toNat) (A157150 n)

end

end A230968.P8627176954311893742

/-! ## A230968.P1963465079021070581

`A062293(A081582(n))%A342890(n)`
-/

namespace A230968.P1963465079021070581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062293 (A081582 n).toNat) (A342890 n)

end

end A230968.P1963465079021070581

/-! ## A230968.P12214146546936231597

`A261391(A218116(n))%A218115(n)`
-/

namespace A230968.P12214146546936231597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261391 (A218116 n).toNat) (A218115 n)

end

end A230968.P12214146546936231597

/-!
# A230969: Number of (n+2)X(n+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230969, there is no canonical definition to state claims against.
-/

/-! ## A230969.P884578290399482636

`A230977((n+1)²+n²)`
-/

namespace A230969.P884578290399482636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 ((n + 1) ^ 2 + n ^ 2)

end

end A230969.P884578290399482636

/-!
# A230970: Number of (n+2) X (1+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230970, the canonical program `A230970.P11227607025778513734` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230970 has offset 1).

The definition of A230970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230970.P11227607025778513734

`4*a(n-1)+20*a(n-3)+25*a(n-4)` with `a(0)=0, a(1)=16, a(2)=64, a(3)=256`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230970

/-- `4*a(n-1)+20*a(n-3)+25*a(n-4)` -/
def P11227607025778513734.Spec : Prop :=
  ∀ n, (P11227607025778513734.a n : ℤ) = A230970 (n + 1)

theorem P11227607025778513734.correct : P11227607025778513734.Spec := by
  intro n
  simp only [A230970, Nat.add_sub_cancel]

end A230970

/-! ## A230970.P12941580553948779722

`A230977(∑[n]+1)`
-/

namespace A230970.P12941580553948779722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230970.P12941580553948779722

namespace A230970

/-- `A230977(∑[n]+1)` -/
def P12941580553948779722.Spec : Prop :=
  ∀ n, P12941580553948779722.a n = A230970 (n + 1)

end A230970

/-! ## A230970.P7876249614077510979

`lcm(2, A230977(A000124(n)))`
-/

namespace A230970.P7876249614077510979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230977 (A000124 n).toNat)

end

end A230970.P7876249614077510979

namespace A230970

/-- `lcm(2, A230977(A000124(n)))` -/
def P7876249614077510979.Spec : Prop :=
  ∀ n, (P7876249614077510979.a n : ℤ) = A230970 (n + 1)

end A230970

/-! ## A230970.P16668142721446056358

`record[A010054(n)*A230977(n+1)]`
-/

namespace A230970.P16668142721446056358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230970.P16668142721446056358

namespace A230970

/-- `record[A010054(n)*A230977(n+1)]` -/
def P16668142721446056358.Spec : Prop :=
  ∀ n, P16668142721446056358.a n = A230970 (n + 1)

end A230970

/-! ## A230970.P16538061333895377973

`record[A230977(n+1)/A022171(n)]`
-/

namespace A230970.P16538061333895377973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230977 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230970.P16538061333895377973

namespace A230970

/-- `record[A230977(n+1)/A022171(n)]` -/
def P16538061333895377973.Spec : Prop :=
  ∀ n, P16538061333895377973.a n = (A230970 (n + 1) : ℚ)

end A230970

/-!
# A230971: Number of (n+2) X (2+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230971, the canonical program `A230971.P7650418583745071413` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230971 has offset 1).

The definition of A230971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230971.P7650418583745071413

`4*Δ[floor(3^(n+2)/10)]²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230971

/-- `4*Δ[floor(3^(n+2)/10)]²` -/
def P7650418583745071413.Spec : Prop :=
  ∀ n, P7650418583745071413.a n = A230971 (n + 1)

theorem P7650418583745071413.correct : P7650418583745071413.Spec := by
  intro n
  simp only [A230971, Nat.add_sub_cancel]

end A230971

/-! ## A230971.P258922975263927290

`(2*A230929(n+1))²`
-/

namespace A230971.P258922975263927290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230929 (n + 1)) ^ 2

end

end A230971.P258922975263927290

namespace A230971

/-- `(2*A230929(n+1))²` -/
def P258922975263927290.Spec : Prop :=
  ∀ n, P258922975263927290.a n = A230971 (n + 1)

end A230971

/-! ## A230971.P2336626172895916055

`(4*A178543(n+1))²`
-/

namespace A230971.P2336626172895916055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A178543 (n + 1)) ^ 2

end

end A230971.P2336626172895916055

namespace A230971

/-- `(4*A178543(n+1))²` -/
def P2336626172895916055.Spec : Prop :=
  ∀ n, P2336626172895916055.a n = A230971 (n + 1)

end A230971

/-! ## A230971.P13374829120689494987

`(4*A178543(n+1))^A042974(∑[n+2])`
-/

namespace A230971.P13374829120689494987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A178543 (n + 1) : ℚ) ^ (A042974 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A230971.P13374829120689494987

namespace A230971

/-- `(4*A178543(n+1))^A042974(∑[n+2])` -/
def P13374829120689494987.Spec : Prop :=
  ∀ n, P13374829120689494987.a n = (A230971 (n + 1) : ℚ)

end A230971

/-! ## A230971.P13101834496738721998

`(4*A178543(n+1))^A020639(A273412(n))`
-/

namespace A230971.P13101834496738721998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A178543 (n + 1) : ℚ) ^ (A020639 (A273412 n).toNat : ℤ)

end

end A230971.P13101834496738721998

namespace A230971

/-- `(4*A178543(n+1))^A020639(A273412(n))` -/
def P13101834496738721998.Spec : Prop :=
  ∀ n, P13101834496738721998.a n = (A230971 (n + 1) : ℚ)

end A230971

/-! ## A230971.P16718683819231861568

`(4*A178543(n+1))^A001222(A131610(n+1))`
-/

namespace A230971.P16718683819231861568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A178543 (n + 1) : ℚ) ^ (A001222 (A131610 (n + 1)).toNat : ℤ)

end

end A230971.P16718683819231861568

namespace A230971

/-- `(4*A178543(n+1))^A001222(A131610(n+1))` -/
def P16718683819231861568.Spec : Prop :=
  ∀ n, P16718683819231861568.a n = (A230971 (n + 1) : ℚ)

end A230971

/-!
# A230972: Number of (n+2)X(3+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230972, there is no canonical definition to state claims against.
-/

/-! ## A230972.P1171260096266827703

`4*A230930(n+1)*A230937(n+1)`
-/

namespace A230972.P1171260096266827703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A230930 (n + 1) * A230937 (n + 1))

end

end A230972.P1171260096266827703

/-! ## A230972.P10008472272148918280

`A230977(∑[n+2]+4)`
-/

namespace A230972.P10008472272148918280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230972.P10008472272148918280

/-! ## A230972.P10708790475509522411

`lcm(2, A230977(A167614(n+1)))`
-/

namespace A230972.P10708790475509522411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230977 (A167614 (n + 1)).toNat)

end

end A230972.P10708790475509522411

/-! ## A230972.P14713799741607417901

`A230977(A167614(n+1))+A034457(n+1)`
-/

namespace A230972.P14713799741607417901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (A167614 (n + 1)).toNat + A034457 (n + 1)

end

end A230972.P14713799741607417901

/-! ## A230972.P3025146571020478733

`A230977(A167614(n+1))%A202402(n+1)`
-/

namespace A230972.P3025146571020478733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230977 (A167614 (n + 1)).toNat) (A202402 (n + 1))

end

end A230972.P3025146571020478733

/-!
# A230973: Number of (n+2) X (4+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230973, there is no canonical definition to state claims against.
-/

/-! ## A230973.P5078465195789831080

`(2*A230931(n+1))²`
-/

namespace A230973.P5078465195789831080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230931 (n + 1)) ^ 2

end

end A230973.P5078465195789831080

/-! ## A230973.P4956747281817100820

`(2*A230935(A374004(n+1)))²`
-/

namespace A230973.P4956747281817100820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230935 (A374004 (n + 1)).toNat) ^ 2

end

end A230973.P4956747281817100820

/-! ## A230973.P753588479585717911

`(2*A230935(A141214(n)+7))²`
-/

namespace A230973.P753588479585717911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230935 (A141214 n + 7).toNat) ^ 2

end

end A230973.P753588479585717911

/-! ## A230973.P823896272505433486

`(2*A230935(A052905(n)+9))²`
-/

namespace A230973.P823896272505433486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230935 (A052905 n + 9).toNat) ^ 2

end

end A230973.P823896272505433486

/-! ## A230973.P3750600495263242851

`(2*A230935(A167614(n+2)+1))²`
-/

namespace A230973.P3750600495263242851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230935 (A167614 (n + 2) + 1).toNat) ^ 2

end

end A230973.P3750600495263242851

/-!
# A230974: Number of (n+2)X(5+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230974, there is no canonical definition to state claims against.
-/

/-! ## A230974.P2823917218378216203

`4*A230932(n+1)*A230938(n+1)`
-/

namespace A230974.P2823917218378216203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A230932 (n + 1) * A230938 (n + 1))

end

end A230974.P2823917218378216203

/-! ## A230974.P13431149684403081060

`A230977(A374005(n+1))`
-/

namespace A230974.P13431149684403081060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (A374005 (n + 1)).toNat

end

end A230974.P13431149684403081060

/-! ## A230974.P18350357079249138417

`A230977(A167614(n+3)+2)`
-/

namespace A230974.P18350357079249138417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (A167614 (n + 3) + 2).toNat

end

end A230974.P18350357079249138417

/-! ## A230974.P6095947595771837527

`A230977(eq[6, A131818(n+1)])`
-/

namespace A230974.P6095947595771837527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230974.P6095947595771837527

/-! ## A230974.P7608824107752562946

`A230977(A056115(n)+11)`
-/

namespace A230974.P7608824107752562946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (A056115 n + 11).toNat

end

end A230974.P7608824107752562946

/-!
# A230975: Number of (n+2)X(6+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230975, there is no canonical definition to state claims against.
-/

/-! ## A230975.P6389942821621089617

`(2*A230933(n+1))²`
-/

namespace A230975.P6389942821621089617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230933 (n + 1)) ^ 2

end

end A230975.P6389942821621089617

/-! ## A230975.P4136042354256183546

`(2*A230933(n+1))^(2%A024675(n+1))`
-/

namespace A230975.P4136042354256183546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A230933 (n + 1) : ℚ) ^ (Int.tmod 2 (A024675 (n + 1)) : ℤ)

end

end A230975.P4136042354256183546

/-! ## A230975.P15551209327061922480

`(2*A230935(A374007(n+1)))²`
-/

namespace A230975.P15551209327061922480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230935 (A374007 (n + 1)).toNat) ^ 2

end

end A230975.P15551209327061922480

/-! ## A230975.P1646239678205691746

`A230977(A374007(n+1))`
-/

namespace A230975.P1646239678205691746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (A374007 (n + 1)).toNat

end

end A230975.P1646239678205691746

/-! ## A230975.P6968088839338397439

`(2*A230933(n+1))^A006530(A000079(n+1))`
-/

namespace A230975.P6968088839338397439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A230933 (n + 1) : ℚ) ^ (A006530 (A000079 (n + 1)).toNat : ℤ)

end

end A230975.P6968088839338397439

/-!
# A230976: Number of (n+2)X(7+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230976, there is no canonical definition to state claims against.
-/

/-! ## A230976.P9711763715489708841

`4*A230934(n+1)*A230939(n+1)`
-/

namespace A230976.P9711763715489708841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A230934 (n + 1) * A230939 (n + 1))

end

end A230976.P9711763715489708841

/-! ## A230976.P15254028954570841564

`A230977(A374008(n+1))`
-/

namespace A230976.P15254028954570841564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (A374008 (n + 1)).toNat

end

end A230976.P15254028954570841564

/-! ## A230976.P1055344454798498529

`A230977(eq[8, A131818(n+1)])`
-/

namespace A230976.P1055344454798498529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230976.P1055344454798498529

/-! ## A230976.P2844056758200814555

`A230977(eq[6, A144328(n+1)]+1)`
-/

namespace A230976.P2844056758200814555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A230976.P2844056758200814555

/-! ## A230976.P14941264475316507203

`A230977(eq[4, A219347(n)])`
-/

namespace A230976.P14941264475316507203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230976.P14941264475316507203

/-!
# A230977: T(n,k)=Number of (n+2)X(k+2) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230977, there is no canonical definition to state claims against.
-/

/-! ## A230977.P11101958837524839703

`4*A230935(n+1)*A230940(n+1)`
-/

namespace A230977.P11101958837524839703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A230935 (n + 1) * A230940 (n + 1))

end

end A230977.P11101958837524839703

/-! ## A230977.P12928543800993337046

`A008586(A230940(n+1))*A230935(n+1)`
-/

namespace A230977.P12928543800993337046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A230940 (n + 1)).toNat * A230935 (n + 1)

end

end A230977.P12928543800993337046

/-! ## A230977.P7112811214266338740

`A008794(A209534(n+1)%A135653(n+1))`
-/

namespace A230977.P7112811214266338740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (Int.tmod (A209534 (n + 1)) (A135653 (n + 1))).toNat

end

end A230977.P7112811214266338740

/-! ## A230977.P17729652893408358737

`A194443(A131613(2*n+1))²`
-/

namespace A230977.P17729652893408358737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 (A131613 (2 * n + 1)).toNat ^ 2

end

end A230977.P17729652893408358737

/-!
# A230978: a(n) = (A220500(n) - 1)/2.

The programs for A230978, there is no canonical definition to state claims against.
-/

/-! ## A230978.P4311141047864221332

`(A220500(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230978.P4311141047864221332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220500 (n + 1) - 1 : ℚ) / 2

end

end A230978.P4311141047864221332

/-! ## A230978.P7096510775802694666

`floor(A220500(n+1)/2)`
-/

namespace A230978.P7096510775802694666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A220500 (n + 1) : ℚ) / 2⌋

end

end A230978.P7096510775802694666

/-! ## A230978.P14020149254601300352

`∑[floor(Δ[A220500(n)/2])]`
-/

namespace A230978.P14020149254601300352
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220500 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230978.P14020149254601300352

/-! ## A230978.P12352855908179327564

`∑[floor(A220501(n+1)/2)]`
-/

namespace A230978.P12352855908179327564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A220501 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230978.P12352855908179327564

/-! ## A230978.P9993207519430010815

`A004524(A220500(n+1))`
-/

namespace A230978.P9993207519430010815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A220500 (n + 1)).toNat

end

end A230978.P9993207519430010815

/-! ## A230978.P2436907850089674499

`∑[A004526(Δ[A220500(n)])]`
-/

namespace A230978.P2436907850089674499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220500 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230978.P2436907850089674499

/-!
# A230980: Number of primes <= n, starting at n=0.

The programs for A230980, the canonical program `A230980.P7768329975809437652` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230980 has offset 0).

The definition of A230980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230980.P763015955268931333

`∑[char[p?[xor(1, n)]]]`
-/

namespace A230980.P763015955268931333
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P763015955268931333

namespace A230980

/-- `∑[char[p?[xor(1, n)]]]` -/
def P763015955268931333.Spec : Prop :=
  ∀ n, (P763015955268931333.a n : ℤ) = A230980 n

end A230980

/-! ## A230980.P7768329975809437652

`∑[∑{p}[n, val(#, n)]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230980

/-- `∑[∑{p}[n, val(#, n)]]` -/
def P7768329975809437652.Spec : Prop :=
  ∀ n, (P7768329975809437652.a n : ℤ) = A230980 n

theorem P7768329975809437652.correct : P7768329975809437652.Spec := by
  intro n
  simp only [A230980]

end A230980

/-! ## A230980.P10218251035463079338

`∑[∑{p}[n, C(#, n)]]`
-/

namespace A230980.P10218251035463079338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P10218251035463079338

namespace A230980

/-- `∑[∑{p}[n, C(#, n)]]` -/
def P10218251035463079338.Spec : Prop :=
  ∀ n, (P10218251035463079338.a n : ℤ) = A230980 n

end A230980

/-! ## A230980.P12842495174394238220

`∑[char[p?[comp[n²]]]]`
-/

namespace A230980.P12842495174394238220
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P12842495174394238220

namespace A230980

/-- `∑[char[p?[comp[n²]]]]` -/
def P12842495174394238220.Spec : Prop :=
  ∀ n, (P12842495174394238220.a n : ℤ) = A230980 n

end A230980

/-! ## A230980.P4312426456524441928

`∑[∑{p}[n, floor(#/n)]]`
-/

namespace A230980.P4312426456524441928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P4312426456524441928

namespace A230980

/-- `∑[∑{p}[n, floor(#/n)]]` -/
def P4312426456524441928.Spec : Prop :=
  ∀ n, P4312426456524441928.a n = A230980 n

end A230980

/-! ## A230980.P10652484284794148789

`∑[C(C(2, ∑{e}[n, #]), 2)]`
-/

namespace A230980.P10652484284794148789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P10652484284794148789

namespace A230980

/-- `∑[C(C(2, ∑{e}[n, #]), 2)]` -/
def P10652484284794148789.Spec : Prop :=
  ∀ n, (P10652484284794148789.a n : ℤ) = A230980 n

end A230980

/-! ## A230980.P17835987509935783839

`∑[round(∑{p}[n, (#/n)²])]`
-/

namespace A230980.P17835987509935783839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℚ) / (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P17835987509935783839

namespace A230980

/-- `∑[round(∑{p}[n, (#/n)²])]` -/
def P17835987509935783839.Spec : Prop :=
  ∀ n, P17835987509935783839.a n = A230980 n

end A230980

/-! ## A230980.P10556817943671509490

`A095117(n)-n`
-/

namespace A230980.P10556817943671509490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n - (n : ℤ)

end

end A230980.P10556817943671509490

namespace A230980

/-- `A095117(n)-n` -/
def P10556817943671509490.Spec : Prop :=
  ∀ n, P10556817943671509490.a n = A230980 n

theorem P10556817943671509490.correct : P10556817943671509490.Spec := by
  intro n
  simp only [A230980, Nat.add_sub_cancel, A230980.P10556817943671509490.a, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230980

/-! ## A230980.P15932389589172201717

`∑{d}[n, A062778(#)]`
-/

namespace A230980.P15932389589172201717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062778 d

end

end A230980.P15932389589172201717

namespace A230980

/-- `∑{d}[n, A062778(#)]` -/
def P15932389589172201717.Spec : Prop :=
  ∀ n, P15932389589172201717.a n = A230980 n

end A230980

/-! ## A230980.P13929936990676618172

`∑[char[A007918(n)]]`
-/

namespace A230980.P13929936990676618172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P13929936990676618172

namespace A230980

/-- `∑[char[A007918(n)]]` -/
def P13929936990676618172.Spec : Prop :=
  ∀ n, (P13929936990676618172.a n : ℤ) = A230980 n

end A230980

/-! ## A230980.P1029864275650005058

`∑[char[A051697(n)]]`
-/

namespace A230980.P1029864275650005058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P1029864275650005058

namespace A230980

/-- `∑[char[A051697(n)]]` -/
def P1029864275650005058.Spec : Prop :=
  ∀ n, (P1029864275650005058.a n : ℤ) = A230980 n

end A230980

/-! ## A230980.P1813976661808316564

`∑[char[A060264(n)]]`
-/

namespace A230980.P1813976661808316564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P1813976661808316564

namespace A230980

/-- `∑[char[A060264(n)]]` -/
def P1813976661808316564.Spec : Prop :=
  ∀ n, (P1813976661808316564.a n : ℤ) = A230980 n

end A230980

/-! ## A230980.P7795737613135503839

`∑[char[A077018(n)]]`
-/

namespace A230980.P7795737613135503839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P7795737613135503839

namespace A230980

/-- `∑[char[A077018(n)]]` -/
def P7795737613135503839.Spec : Prop :=
  ∀ n, (P7795737613135503839.a n : ℤ) = A230980 n

end A230980

/-! ## A230980.P16621156588077861816

`∑[char[A088732(n)]]`
-/

namespace A230980.P16621156588077861816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P16621156588077861816

namespace A230980

/-- `∑[char[A088732(n)]]` -/
def P16621156588077861816.Spec : Prop :=
  ∀ n, (P16621156588077861816.a n : ℤ) = A230980 n

end A230980

/-! ## A230980.P15244140731093946744

`∑[char[A151800(n)]]`
-/

namespace A230980.P15244140731093946744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P15244140731093946744

namespace A230980

/-- `∑[char[A151800(n)]]` -/
def P15244140731093946744.Spec : Prop :=
  ∀ n, (P15244140731093946744.a n : ℤ) = A230980 n

end A230980

/-! ## A230980.P11092444543356229765

`∑[n-A113638(n)]`
-/

namespace A230980.P11092444543356229765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A113638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P11092444543356229765

namespace A230980

/-- `∑[n-A113638(n)]` -/
def P11092444543356229765.Spec : Prop :=
  ∀ n, P11092444543356229765.a n = A230980 n

theorem P11092444543356229765.correct : P11092444543356229765.Spec := by
  intro n
  simp only [A230980, Nat.add_sub_cancel, A230980.P11092444543356229765.f1, A230980.P11092444543356229765.a, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A113638, A113638.P15518003784063987187.f1, A113638.P15518003784063987187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230980

/-! ## A230980.P15977199925353190362

`A064427(n+1)-(n+1)`
-/

namespace A230980.P15977199925353190362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1) - (n + 1 : ℤ)

end

end A230980.P15977199925353190362

namespace A230980

/-- `A064427(n+1)-(n+1)` -/
def P15977199925353190362.Spec : Prop :=
  ∀ n, P15977199925353190362.a n = A230980 n

end A230980

/-! ## A230980.P12208631916132332814

`1-A086936(n+1)+n`
-/

namespace A230980.P12208631916132332814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086936 (n + 1) + (n : ℤ)

end

end A230980.P12208631916132332814

namespace A230980

/-- `1-A086936(n+1)+n` -/
def P12208631916132332814.Spec : Prop :=
  ∀ n, P12208631916132332814.a n = A230980 n

end A230980

/-! ## A230980.P2560050965552964110

`(n+1-A118777(n))/2`
-/

namespace A230980.P2560050965552964110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A118777 n : ℚ) / 2

end

end A230980.P2560050965552964110

namespace A230980

/-- `(n+1-A118777(n))/2` -/
def P2560050965552964110.Spec : Prop :=
  ∀ n, P2560050965552964110.a n = (A230980 n : ℚ)

end A230980

/-! ## A230980.P14962527423011653522

`A010051(n)+a(n-1)` with `a(0)=0`
-/

namespace A230980.P14962527423011653522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010051 n + a (n - 1)

end

end A230980.P14962527423011653522

namespace A230980

/-- `A010051(n)+a(n-1)` -/
def P14962527423011653522.Spec : Prop :=
  ∀ n, P14962527423011653522.a n = A230980 n

end A230980

/-!
# A230981: Decimal expansion of 3/(2^(1/2)).

The programs for A230981, there is no canonical definition to state claims against.
-/

/-! ## A230981.P14928878291945822367

`A176218(A000038(n)+n)`
-/

namespace A230981.P14928878291945822367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176218 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A230981.P14928878291945822367

/-! ## A230981.P6941953896414681324

`A176218(n)-A000038(n)`
-/

namespace A230981.P6941953896414681324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176218 (n + 1) - A000038 n

end

end A230981.P6941953896414681324

/-! ## A230981.P3540116084158059636

`A176218(or(n, A000038(n)))`
-/

namespace A230981.P3540116084158059636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176218 ((Int.lor (n : ℤ) (A000038 n)).toNat + 1)

end

end A230981.P3540116084158059636

/-! ## A230981.P17359330279401546296

`A176218(xor(n, A000038(n)))`
-/

namespace A230981.P17359330279401546296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176218 ((Int.xor (n : ℤ) (A000038 n)).toNat + 1)

end

end A230981.P17359330279401546296

/-! ## A230981.P4016390699462590360

`A176218(n)/A000034(A001223(n+1))`
-/

namespace A230981.P4016390699462590360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176218 (n + 1) : ℚ) / (A000034 (A001223 (n + 1)).toNat : ℚ)

end

end A230981.P4016390699462590360

/-! ## A230981.P2552462945131446908

`A176218(n)/A000034(A008458(n))`
-/

namespace A230981.P2552462945131446908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176218 (n + 1) : ℚ) / (A000034 (A008458 n).toNat : ℚ)

end

end A230981.P2552462945131446908

/-! ## A230981.P6750368512571270274

`A176218(n)/A000034(A007434(n+2))`
-/

namespace A230981.P6750368512571270274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176218 (n + 1) : ℚ) / (A000034 (A007434 (n + 2)).toNat : ℚ)

end

end A230981.P6750368512571270274

/-!
# A230982: Number of white square subarrays of (n+1)X(n+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A230982, there is no canonical definition to state claims against.
-/

/-! ## A230982.P14993766707856607760

`A230989(∑[4*n]+1)`
-/

namespace A230982.P14993766707856607760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230982.P14993766707856607760

/-! ## A230982.P1144033474298111149

`(Δ[n²]-2*n)*A230989(A001844(n))`
-/

namespace A230982.P1144033474298111149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (2 * n : ℤ)) * A230989 (A001844 n).toNat

end

end A230982.P1144033474298111149

/-! ## A230982.P18105850265008034350

`A230989(A001844(n))+A025443(n)`
-/

namespace A230982.P18105850265008034350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A001844 n).toNat + A025443 n

end

end A230982.P18105850265008034350

/-! ## A230982.P9956131467487768118

`gcd(A151622(n), A230989(A001844(n)))`
-/

namespace A230982.P9956131467487768118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151622 n) (A230989 (A001844 n).toNat)

end

end A230982.P9956131467487768118

/-! ## A230982.P531485749651802409

`lcm(A033999(n), A230989(A001844(n)))`
-/

namespace A230982.P531485749651802409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A230989 (A001844 n).toNat)

end

end A230982.P531485749651802409

/-!
# A230983: Number of white square subarrays of (n+1) X (2+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A230983, the canonical program `A230983.P6375785716789403721` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230983 has offset 1).

The definition of A230983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230983.P6375785716789403721

`A231067(n)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230983

/-- `A231067(n)+a(n-2)` -/
def P6375785716789403721.Spec : Prop :=
  ∀ n, P6375785716789403721.a n = A230983 (n + 1)

theorem P6375785716789403721.correct : P6375785716789403721.Spec := by
  intro n
  simp only [A230983, Nat.add_sub_cancel]

end A230983

/-! ## A230983.P7147647361053849173

`∑[A231067(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A230983.P7147647361053849173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A231067 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230983.P7147647361053849173

namespace A230983

/-- `∑[A231067(n)-a(A023443(n))]` -/
def P7147647361053849173.Spec : Prop :=
  ∀ n, P7147647361053849173.a n = A230983 (n + 1)

end A230983

/-! ## A230983.P11850439369038083708

`5*a(n-2)-5*a(n-4)+2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=15, a(5)=20`
-/

namespace A230983.P11850439369038083708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 5, 15, 20] fun n a =>
  5 * a (n - 2) - 5 * a (n - 4) + 2 * a (n - 6)

end

end A230983.P11850439369038083708

namespace A230983

/-- `5*a(n-2)-5*a(n-4)+2*a(n-6)` -/
def P11850439369038083708.Spec : Prop :=
  ∀ n, P11850439369038083708.a n = A230983 (n + 1)

end A230983

/-! ## A230983.P17468731949337922852

`A230989(∑[n+1]+2)`
-/

namespace A230983.P17468731949337922852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230983.P17468731949337922852

namespace A230983

/-- `A230989(∑[n+1]+2)` -/
def P17468731949337922852.Spec : Prop :=
  ∀ n, P17468731949337922852.a n = A230983 (n + 1)

end A230983

/-! ## A230983.P17210131552348737089

`A014963(C(n+5, 2))*A230989(A000096(n)+3)`
-/

namespace A230983.P17210131552348737089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 5) 2) * A230989 (A000096 n + 3).toNat

end

end A230983.P17210131552348737089

namespace A230983

/-- `A014963(C(n+5, 2))*A230989(A000096(n)+3)` -/
def P17210131552348737089.Spec : Prop :=
  ∀ n, P17210131552348737089.a n = A230983 (n + 1)

end A230983

/-!
# A230984: Number of white square subarrays of (n+1) X (3+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A230984, there is no canonical definition to state claims against.
-/

/-! ## A230984.P4261697888781683130

`A230989(∑[n+2]+4)`
-/

namespace A230984.P4261697888781683130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230984.P4261697888781683130

/-! ## A230984.P4676785687595142627

`A231070(∑[n+2]+4)`
-/

namespace A230984.P4676785687595142627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230984.P4676785687595142627

/-! ## A230984.P14517939386219347151

`lcm(1-and(2, n), A230989(A167614(n+1)))`
-/

namespace A230984.P14517939386219347151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A230989 (A167614 (n + 1)).toNat)

end

end A230984.P14517939386219347151

/-! ## A230984.P13716178361160907972

`lcm(A033999(n), A230989(A167614(n+1)))`
-/

namespace A230984.P13716178361160907972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A230989 (A167614 (n + 1)).toNat)

end

end A230984.P13716178361160907972

/-! ## A230984.P17171067091306103145

`or(A000038(n), A231070(A167614(n+1)))`
-/

namespace A230984.P17171067091306103145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A231070 (A167614 (n + 1)).toNat)

end

end A230984.P17171067091306103145

/-!
# A230985: Number of white square subarrays of (n+1)X(4+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A230985, there is no canonical definition to state claims against.
-/

/-! ## A230985.P15518445129080467680

`A230989(A374004(n+1))`
-/

namespace A230985.P15518445129080467680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A374004 (n + 1)).toNat

end

end A230985.P15518445129080467680

/-! ## A230985.P5148096507483855599

`A230989(A052905(n)+9)`
-/

namespace A230985.P5148096507483855599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A052905 n + 9).toNat

end

end A230985.P5148096507483855599

/-! ## A230985.P10765941355339517694

`A230989(A055999(n)+10)`
-/

namespace A230985.P10765941355339517694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A055999 n + 10).toNat

end

end A230985.P10765941355339517694

/-! ## A230985.P11384569892204401276

`A230989(A167614(n+2)+1)`
-/

namespace A230985.P11384569892204401276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A167614 (n + 2) + 1).toNat

end

end A230985.P11384569892204401276

/-! ## A230985.P11114473845922016791

`A230989(A167487(n+2)-3)`
-/

namespace A230985.P11114473845922016791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A167487 (n + 2) - 3).toNat

end

end A230985.P11114473845922016791

/-!
# A230986: Number of white square subarrays of (n+1)X(5+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A230986, there is no canonical definition to state claims against.
-/

/-! ## A230986.P12981278388897804734

`A230989(A374005(n+1))`
-/

namespace A230986.P12981278388897804734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A374005 (n + 1)).toNat

end

end A230986.P12981278388897804734

/-! ## A230986.P16760557435581453313

`A230989(A167499(n+3))`
-/

namespace A230986.P16760557435581453313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A167499 (n + 3)).toNat

end

end A230986.P16760557435581453313

/-! ## A230986.P3300179855635279875

`A231070(A000217(n+4)+5)`
-/

namespace A230986.P3300179855635279875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A000217 (n + 4) + 5).toNat

end

end A230986.P3300179855635279875

/-! ## A230986.P18245770469276663368

`A231070(A000124(n+5)-(n+1))`
-/

namespace A230986.P18245770469276663368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A230986.P18245770469276663368

/-! ## A230986.P15198471779907316254

`A230989(A052905(n+3)-(2*n+1))`
-/

namespace A230986.P15198471779907316254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A230986.P15198471779907316254

/-!
# A230987: Number of white square subarrays of (n+1)X(6+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A230987, there is no canonical definition to state claims against.
-/

/-! ## A230987.P14267254673299000617

`A230989(A374007(n+1))`
-/

namespace A230987.P14267254673299000617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A374007 (n + 1)).toNat

end

end A230987.P14267254673299000617

/-! ## A230987.P371347959490322155

`A230989(A000217(n+5)+6)`
-/

namespace A230987.P371347959490322155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A000217 (n + 5) + 6).toNat

end

end A230987.P371347959490322155

/-! ## A230987.P7230741324677476399

`A230989(A000124(n+6)-(n+1))`
-/

namespace A230987.P7230741324677476399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A230987.P7230741324677476399

/-! ## A230987.P12091709918236223491

`A230989(A002620(n+2)+A002620(n+9))`
-/

namespace A230987.P12091709918236223491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A230987.P12091709918236223491

/-! ## A230987.P5913987198768011329

`A230989(A052905(n+3))`
-/

namespace A230987.P5913987198768011329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A052905 (n + 3)).toNat

end

end A230987.P5913987198768011329

/-!
# A230988: Number of white square subarrays of (n+1)X(7+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A230988, there is no canonical definition to state claims against.
-/

/-! ## A230988.P14671933923625655729

`A230989(A374008(n+1))`
-/

namespace A230988.P14671933923625655729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A374008 (n + 1)).toNat

end

end A230988.P14671933923625655729

/-! ## A230988.P2695144674685836329

`A230989(A167487(n+5))`
-/

namespace A230988.P2695144674685836329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A167487 (n + 5)).toNat

end

end A230988.P2695144674685836329

/-! ## A230988.P11570150075058616830

`A230989(A000217(n+6)+7)`
-/

namespace A230988.P11570150075058616830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A000217 (n + 6) + 7).toNat

end

end A230988.P11570150075058616830

/-! ## A230988.P9285754673315051331

`A231070(A000217(n+6)+7)`
-/

namespace A230988.P9285754673315051331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A000217 (n + 6) + 7).toNat

end

end A230988.P9285754673315051331

/-! ## A230988.P1697741076712554235

`A230989(A000124(n+7)-(n+1))`
-/

namespace A230988.P1697741076712554235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A230988.P1697741076712554235

/-!
# A230990: Number of n X 2 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230990, there is no canonical definition to state claims against.
-/

/-! ## A230990.P11426778780947683087

`A230994(∑[n+1]+2)`
-/

namespace A230990.P11426778780947683087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230990.P11426778780947683087

/-! ## A230990.P9894424880314684492

`lcm(2, A230994(A238531(n+2)))`
-/

namespace A230990.P9894424880314684492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230994 (A238531 (n + 2)).toNat)

end

end A230990.P9894424880314684492

/-! ## A230990.P16018009166564963799

`A230994(A238531(n+2))%A161900(n)`
-/

namespace A230990.P16018009166564963799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230994 (A238531 (n + 2)).toNat) (A161900 n)

end

end A230990.P16018009166564963799

/-!
# A230991: Number of nX3 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230991, there is no canonical definition to state claims against.
-/

/-! ## A230991.P10389965239216416238

`A230994(∑[n+2]+4)`
-/

namespace A230991.P10389965239216416238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230991.P10389965239216416238

/-! ## A230991.P13319053913740768673

`lcm(2, A230994(A167614(n+1)))`
-/

namespace A230991.P13319053913740768673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230994 (A167614 (n + 1)).toNat)

end

end A230991.P13319053913740768673

/-! ## A230991.P10376592670392603440

`record[A230994(A286158(n+1)+3)]`
-/

namespace A230991.P10376592670392603440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A286158 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230991.P10376592670392603440

/-! ## A230991.P483523971683739677

`A230994(A167614(n+1))+A025443(n)`
-/

namespace A230991.P483523971683739677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A167614 (n + 1)).toNat + A025443 n

end

end A230991.P483523971683739677

/-! ## A230991.P6281446340628864944

`A230994(A167614(n+1))+A185036(n)`
-/

namespace A230991.P6281446340628864944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A167614 (n + 1)).toNat + A185036 n

end

end A230991.P6281446340628864944

/-!
# A230992: Number of nX4 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230992, there is no canonical definition to state claims against.
-/

/-! ## A230992.P13576808215800424834

`A230994(A374004(n+1))`
-/

namespace A230992.P13576808215800424834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A374004 (n + 1)).toNat

end

end A230992.P13576808215800424834

/-! ## A230992.P8070055857672971428

`A230994(A141214(n)+7)`
-/

namespace A230992.P8070055857672971428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A141214 n + 7).toNat

end

end A230992.P8070055857672971428

/-! ## A230992.P2617829230470317127

`A230994(A052905(n)+9)`
-/

namespace A230992.P2617829230470317127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A052905 n + 9).toNat

end

end A230992.P2617829230470317127

/-! ## A230992.P10133261711376400940

`A230994(A055999(n)+10)`
-/

namespace A230992.P10133261711376400940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A055999 n + 10).toNat

end

end A230992.P10133261711376400940

/-! ## A230992.P16230542271650048706

`A230994(eq[5, A066657(n)])`
-/

namespace A230992.P16230542271650048706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230992.P16230542271650048706

/-!
# A230993: Number of nX5 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230993, there is no canonical definition to state claims against.
-/

/-! ## A230993.P17022792197119558211

`A230994(A374005(n+1))`
-/

namespace A230993.P17022792197119558211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A374005 (n + 1)).toNat

end

end A230993.P17022792197119558211

/-! ## A230993.P1596086004749006292

`A230994(A167499(n+3))`
-/

namespace A230993.P1596086004749006292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A167499 (n + 3)).toNat

end

end A230993.P1596086004749006292

/-! ## A230993.P10106230042443277210

`A230994(A155212(n)+13)`
-/

namespace A230993.P10106230042443277210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A155212 n + 13).toNat

end

end A230993.P10106230042443277210

/-! ## A230993.P13164219402269878749

`A230994(A056000(n)+15)`
-/

namespace A230993.P13164219402269878749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A056000 n + 15).toNat

end

end A230993.P13164219402269878749

/-! ## A230993.P4015334746745868858

`A230994(A167614(n+3)+2)`
-/

namespace A230993.P4015334746745868858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (A167614 (n + 3) + 2).toNat

end

end A230993.P4015334746745868858

/-!
# A230995: Number of years after which a date can fall on the same day of the week, in the Gregorian calendar.

The programs for A230995, there is no canonical definition to state claims against.
-/

/-! ## A230995.P14886940875491612206

`∪[A230997(n+1), A230996(n)]`
-/

namespace A230995.P14886940875491612206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230996 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230995.P14886940875491612206

/-! ## A230995.P9647095532242929241

`comp[A230998(n+1)]`
-/

namespace A230995.P9647095532242929241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230995.P9647095532242929241

/-! ## A230995.P2766832474117752023

`eq[A015491(n), A333179(n)]`
-/

namespace A230995.P2766832474117752023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333179 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230995.P2766832474117752023

/-!
# A230996: Number of years after which an entire year can have the same calendar, in the Gregorian calendar.

The programs for A230996, there is no canonical definition to state claims against.
-/

/-! ## A230996.P3272986220212538007

`comp[A230999(n+1)]`
-/

namespace A230996.P3272986220212538007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230996.P3272986220212538007

/-! ## A230996.P15063675662377944765

`∩[A230995(n), A231236(n+1)]`
-/

namespace A230996.P15063675662377944765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230996.P15063675662377944765

/-!
# A230997: Number of years after which it is possible to have a date falling on same day of the week, but the entire year does not have the same calendar, in the Gregorian calendar.

The programs for A230997, there is no canonical definition to state claims against.
-/

/-! ## A230997.P17329326596275115533

`eq[A005843(n), A020657(A122352(3*n+5))]`
-/

namespace A230997.P17329326596275115533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A122352 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230997.P17329326596275115533

/-!
# A230998: Number of years after which it is not possible to have a date falling on the same day of the week, in the Gregorian calendar.

The programs for A230998, there is no canonical definition to state claims against.
-/

/-! ## A230998.P1645491154750725326

`comp[A230995(n)]`
-/

namespace A230998.P1645491154750725326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230995 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230998.P1645491154750725326

/-! ## A230998.P11082476597040418327

`comp[∪[A230997(n+1), A230996(n)]]`
-/

namespace A230998.P11082476597040418327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230997 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230996 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230998.P11082476597040418327

/-! ## A230998.P12127219447139753362

`∩[comp[A230997(n+1)], A230999(n+1)]`
-/

namespace A230998.P12127219447139753362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230997 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A230998.P12127219447139753362

/-! ## A230998.P5974903467797703266

`∩[A231236(n+1), comp[A230996(n)]]`
-/

namespace A230998.P5974903467797703266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231236 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230996 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A230998.P5974903467797703266

/-! ## A230998.P5094090450955487013

`∩[A230999(n+1), A231236(n+1)]`
-/

namespace A230998.P5094090450955487013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230998.P5094090450955487013

/-!
# A230999: Number of years after which it is not possible to have the same calendar for the entire year, in the Gregorian calendar.

The programs for A230999, there is no canonical definition to state claims against.
-/

/-! ## A230999.P17510781290198548686

`comp[A230996(n)]`
-/

namespace A230999.P17510781290198548686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230996 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230999.P17510781290198548686

/-! ## A230999.P11799679009338922223

`comp[Δ[A224942(A349520(n+1))]]`
-/

namespace A230999.P11799679009338922223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224942 (A349520 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230999.P11799679009338922223

/-! ## A230999.P4037223012564080968

`∪[A230997(n+1), A230998(n+1)]`
-/

namespace A230999.P4037223012564080968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230999.P4037223012564080968

/-! ## A230999.P1550098294996930140

`comp[A184551(n)-A231001(n)-(n+1)%2]+1`
-/

namespace A230999.P1550098294996930140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184551 n - A231001 n - (((n + 1) % 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A230999.P1550098294996930140

/-! ## A230999.P16036838010769434990

`lt[A057979(n), A110091(A180122(2*n+1))]`
-/

namespace A230999.P16036838010769434990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 (A180122 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230999.P16036838010769434990

/-! ## A230999.P8299233090542017079

`lt[A123108(n), A110091(A180122(2*n+1))]`
-/

namespace A230999.P8299233090542017079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 (A180122 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230999.P8299233090542017079

/-! ## A230999.P16294363964328047993

`record[A047298(A004774(n+2))-A047263(n+1)]`
-/

namespace A230999.P16294363964328047993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047298 (A004774 (n + 2)).toNat - A047263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230999.P16294363964328047993

