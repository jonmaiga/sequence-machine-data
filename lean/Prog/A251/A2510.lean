import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C002
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021

/-!
# A251000: Number of (6+1)X(n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251000, there is no canonical definition to state claims against.
-/

/-! ## A251000.P6745733850674182029

`A250994(C(n+7, 2)-n)`
-/

namespace A251000.P6745733850674182029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (Nat.choose (n + 7) 2 - n)

end

end A251000.P6745733850674182029

/-!
# A251001: Number of (7+1) X (n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251001, there is no canonical definition to state claims against.
-/

/-! ## A251001.P439586777502107584

`A250994(A302537(n)+27)`
-/

namespace A251001.P439586777502107584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A302537 n + 27).toNat

end

end A251001.P439586777502107584

/-!
# A251002: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251002, there is no canonical definition to state claims against.
-/

/-! ## A251002.P9508226536404359094

`A251010((n+1)²+n²)`
-/

namespace A251002.P9508226536404359094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 ((n + 1) ^ 2 + n ^ 2)

end

end A251002.P9508226536404359094

/-!
# A251003: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251003, the canonical program `A251003.P194016885422243048` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251003 has offset 1).

The definition of A251003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251003.P194016885422243048

`ogf((69-91x+141x^2-104x^3+36x^4)/(1-9x+12x^2-17x^3+12x^4-4x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251003

/-- `ogf((69-91x+141x^2-104x^3+36x^4)/(1-9x+12x^2-17x^3+12x^4-4x^5))` -/
def P194016885422243048.Spec : Prop :=
  ∀ n, P194016885422243048.a n = A251003 (n + 1)

theorem P194016885422243048.correct : P194016885422243048.Spec := by
  intro n
  simp only [A251003, Nat.add_sub_cancel]

end A251003

/-! ## A251003.P10204494057513639881

`A251010(∑[n]+1)`
-/

namespace A251003.P10204494057513639881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251003.P10204494057513639881

namespace A251003

/-- `A251010(∑[n]+1)` -/
def P10204494057513639881.Spec : Prop :=
  ∀ n, P10204494057513639881.a n = A251003 (n + 1)

end A251003

/-! ## A251003.P15371104172819138619

`record[root(A251010(n+1), A038738(n+1))]`
-/

namespace A251003.P15371104172819138619
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251010 (n + 1) : ℝ) ^ (1 / (A038738 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251003.P15371104172819138619

namespace A251003

/-- `record[root(A251010(n+1), A038738(n+1))]` -/
def P15371104172819138619.Spec : Prop :=
  ∀ n, P15371104172819138619.a n = (A251003 (n + 1) : ℝ)

end A251003

/-! ## A251003.P10451971095852083159

`record[root(A251010(n+1), A297762(n+1))]`
-/

namespace A251003.P10451971095852083159
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251010 (n + 1) : ℝ) ^ (1 / (A297762 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251003.P10451971095852083159

namespace A251003

/-- `record[root(A251010(n+1), A297762(n+1))]` -/
def P10451971095852083159.Spec : Prop :=
  ∀ n, P10451971095852083159.a n = (A251003 (n + 1) : ℝ)

end A251003

/-! ## A251003.P11367439961934262755

`record[gcd(A205341(n+1), A251010(n+1))]`
-/

namespace A251003.P11367439961934262755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205341 (n + 1)) (A251010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251003.P11367439961934262755

namespace A251003

/-- `record[gcd(A205341(n+1), A251010(n+1))]` -/
def P11367439961934262755.Spec : Prop :=
  ∀ n, (P11367439961934262755.a n : ℤ) = A251003 (n + 1)

end A251003

/-!
# A251004: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251004, there is no canonical definition to state claims against.
-/

/-! ## A251004.P12780612895493268597

`A251010(∑[n+1]+2)`
-/

namespace A251004.P12780612895493268597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251004.P12780612895493268597

/-! ## A251004.P12458993457771356159

`record[A010054(n)*A251010(n+2)]`
-/

namespace A251004.P12458993457771356159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251004.P12458993457771356159

/-! ## A251004.P10690269798989870409

`record[root(A251010(n+3), A297762(n+4))]`
-/

namespace A251004.P10690269798989870409
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251010 (n + 3) : ℝ) ^ (1 / (A297762 (n + 4) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251004.P10690269798989870409

/-! ## A251004.P14333921255508538332

`record[gcd(A144074(n+2), A251010(n+2))]`
-/

namespace A251004.P14333921255508538332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144074 (n + 2)) (A251010 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251004.P14333921255508538332

/-! ## A251004.P13753936341041577384

`record[root(A251010(n+3), A105615(n))]`
-/

namespace A251004.P13753936341041577384
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251010 (n + 3) : ℝ) ^ (1 / (A105615 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251004.P13753936341041577384

/-!
# A251005: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251005, there is no canonical definition to state claims against.
-/

/-! ## A251005.P10299666583780399991

`A251010(∑[n+2]+4)`
-/

namespace A251005.P10299666583780399991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251005.P10299666583780399991

/-!
# A251006: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251006, there is no canonical definition to state claims against.
-/

/-! ## A251006.P8580985435435162832

`A251010(A167614(n+2)+1)`
-/

namespace A251006.P8580985435435162832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A167614 (n + 2) + 1).toNat

end

end A251006.P8580985435435162832

/-! ## A251006.P2534933444925103463

`A251010(A056000(n)+7)`
-/

namespace A251006.P2534933444925103463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A056000 n + 7).toNat

end

end A251006.P2534933444925103463

/-!
# A251007: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251007, there is no canonical definition to state claims against.
-/

/-! ## A251007.P6680080584701387083

`A251010(A374005(n+1))`
-/

namespace A251007.P6680080584701387083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A374005 (n + 1)).toNat

end

end A251007.P6680080584701387083

/-!
# A251008: Number of (n+1) X (6+1) 0..2 arrays with no 2 X 2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251008, there is no canonical definition to state claims against.
-/

/-! ## A251008.P17523780444586833781

`A251010(A167499(n+4)+1)`
-/

namespace A251008.P17523780444586833781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A167499 (n + 4) + 1).toNat

end

end A251008.P17523780444586833781

/-! ## A251008.P14707415505287292943

`A251010(A055999(n+3)+1)`
-/

namespace A251008.P14707415505287292943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A055999 (n + 3) + 1).toNat

end

end A251008.P14707415505287292943

/-!
# A251011: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251011, there is no canonical definition to state claims against.
-/

/-! ## A251011.P13626101504170202155

`A251019((n+1)²+n²)`
-/

namespace A251011.P13626101504170202155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 ((n + 1) ^ 2 + n ^ 2)

end

end A251011.P13626101504170202155

/-!
# A251012: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251012, the canonical program `A251012.P12072868230886580572` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251012 has offset 1).

The definition of A251012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251012.P12072868230886580572

`ogf((63-144x+155x^2-62x^3+9x^4)/(1-9x+18x^2-18x^3+7x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251012

/-- `ogf((63-144x+155x^2-62x^3+9x^4)/(1-9x+18x^2-18x^3+7x^4-x^5))` -/
def P12072868230886580572.Spec : Prop :=
  ∀ n, P12072868230886580572.a n = A251012 (n + 1)

theorem P12072868230886580572.correct : P12072868230886580572.Spec := by
  intro n
  simp only [A251012, Nat.add_sub_cancel]

end A251012

/-! ## A251012.P9350352186561145450

`A251019(∑[n]+1)`
-/

namespace A251012.P9350352186561145450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251012.P9350352186561145450

namespace A251012

/-- `A251019(∑[n]+1)` -/
def P9350352186561145450.Spec : Prop :=
  ∀ n, P9350352186561145450.a n = A251012 (n + 1)

end A251012

/-! ## A251012.P2068235920166052941

`record[root(A251019(n+1), A022166(n))]`
-/

namespace A251012.P2068235920166052941
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 1) : ℝ) ^ (1 / (A022166 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251012.P2068235920166052941

namespace A251012

/-- `record[root(A251019(n+1), A022166(n))]` -/
def P2068235920166052941.Spec : Prop :=
  ∀ n, P2068235920166052941.a n = (A251012 (n + 1) : ℝ)

end A251012

/-! ## A251012.P2519001904548387595

`record[root(A251019(n+1), A137153(n))]`
-/

namespace A251012.P2519001904548387595
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 1) : ℝ) ^ (1 / (A137153 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251012.P2519001904548387595

namespace A251012

/-- `record[root(A251019(n+1), A137153(n))]` -/
def P2519001904548387595.Spec : Prop :=
  ∀ n, P2519001904548387595.a n = (A251012 (n + 1) : ℝ)

end A251012

/-! ## A251012.P15863017879081235833

`record[gcd(A002262(n), A251019(n+1))]`
-/

namespace A251012.P15863017879081235833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251019 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251012.P15863017879081235833

namespace A251012

/-- `record[gcd(A002262(n), A251019(n+1))]` -/
def P15863017879081235833.Spec : Prop :=
  ∀ n, (P15863017879081235833.a n : ℤ) = A251012 (n + 1)

end A251012

/-!
# A251013: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251013, there is no canonical definition to state claims against.
-/

/-! ## A251013.P5487442247592061940

`A251019(∑[n+1]+2)`
-/

namespace A251013.P5487442247592061940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251013.P5487442247592061940

/-! ## A251013.P10951517043299781285

`record[gcd(A002262(n), A251019(n+2))]`
-/

namespace A251013.P10951517043299781285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251019 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251013.P10951517043299781285

/-! ## A251013.P9749258888255183107

`record[root(A251019(n+2), A033877(n+1))]`
-/

namespace A251013.P9749258888255183107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 2) : ℝ) ^ (1 / (A033877 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251013.P9749258888255183107

/-! ## A251013.P8537233835823611993

`record[root(A251019(n+3), A143494(n+2))]`
-/

namespace A251013.P8537233835823611993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 3) : ℝ) ^ (1 / (A143494 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251013.P8537233835823611993

/-! ## A251013.P6194148503482582819

`record[root(A251019(n+2), A022166(n+2))]`
-/

namespace A251013.P6194148503482582819
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 2) : ℝ) ^ (1 / (A022166 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251013.P6194148503482582819

/-!
# A251014: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251014, there is no canonical definition to state claims against.
-/

/-! ## A251014.P1609923870369830487

`A251019(∑[n+2]+4)`
-/

namespace A251014.P1609923870369830487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251014.P1609923870369830487

/-!
# A251015: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251015, there is no canonical definition to state claims against.
-/

/-! ## A251015.P15508338220063551512

`A251019(A167614(n+2)+1)`
-/

namespace A251015.P15508338220063551512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A167614 (n + 2) + 1).toNat

end

end A251015.P15508338220063551512

/-!
# A251016: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251016, there is no canonical definition to state claims against.
-/

/-! ## A251016.P17663424624432805394

`A251019(A374005(n+1))`
-/

namespace A251016.P17663424624432805394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A374005 (n + 1)).toNat

end

end A251016.P17663424624432805394

/-!
# A251017: Number of (n+1)X(6+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251017, there is no canonical definition to state claims against.
-/

/-! ## A251017.P13052335403728050600

`A251019(A000217(n+5)+6)`
-/

namespace A251017.P13052335403728050600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A000217 (n + 5) + 6).toNat

end

end A251017.P13052335403728050600

/-!
# A251018: Number of (n+1)X(7+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251018, there is no canonical definition to state claims against.
-/

/-! ## A251018.P13838367899696615502

`A251019(A167499(n+5)+2)`
-/

namespace A251018.P13838367899696615502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A167499 (n + 5) + 2).toNat

end

end A251018.P13838367899696615502

/-!
# A251020: Number of (n+1)X(n+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251020, there is no canonical definition to state claims against.
-/

/-! ## A251020.P112951758811784856

`A251028(∑[4*n]+1)`
-/

namespace A251020.P112951758811784856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251020.P112951758811784856

/-! ## A251020.P18353090028102396911

`record[A251028(A330613(n+1))]`
-/

namespace A251020.P18353090028102396911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251020.P18353090028102396911

/-! ## A251020.P6945756438829242091

`record[A003982(n)*A251028(n+1)]`
-/

namespace A251020.P6945756438829242091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251020.P6945756438829242091

/-! ## A251020.P8478621309901877995

`record[gcd(A003987(n), A251028(n+1))]`
-/

namespace A251020.P8478621309901877995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251028 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251020.P8478621309901877995

/-!
# A251021: Number of (n+1) X (1+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251021, the canonical program `A251021.P10982503491123718408` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251021 has offset 1).

The definition of A251021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251021.P10982503491123718408

`ogf((110-244x+264x^2+157x^3-571x^4+557x^5-255x^6+46x^7)/(1-7x+18x^2-17x^3-10x^4+39x^5-38x^6+17x^7-3x^8))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251021

/-- `ogf((110-244x+264x^2+157x^3-571x^4+557x^5-255x^6+46x^7)/(1-7x+18x^2-17x^3-10x^4+39x^5-38x^6+17x^7-3x^8))` -/
def P10982503491123718408.Spec : Prop :=
  ∀ n, P10982503491123718408.a n = A251021 (n + 1)

theorem P10982503491123718408.correct : P10982503491123718408.Spec := by
  intro n
  simp only [A251021, Nat.add_sub_cancel]

end A251021

/-! ## A251021.P5442121229381228240

`A251028(∑[n]+1)`
-/

namespace A251021.P5442121229381228240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251021.P5442121229381228240

namespace A251021

/-- `A251028(∑[n]+1)` -/
def P5442121229381228240.Spec : Prop :=
  ∀ n, P5442121229381228240.a n = A251021 (n + 1)

end A251021

/-! ## A251021.P1699918975821182226

`record[A251028(A056536(n+1))]`
-/

namespace A251021.P1699918975821182226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251021.P1699918975821182226

namespace A251021

/-- `record[A251028(A056536(n+1))]` -/
def P1699918975821182226.Spec : Prop :=
  ∀ n, P1699918975821182226.a n = A251021 (n + 1)

end A251021

/-! ## A251021.P12027065974941040546

`record[A251028(A114091(n+1))]`
-/

namespace A251021.P12027065974941040546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251021.P12027065974941040546

namespace A251021

/-- `record[A251028(A114091(n+1))]` -/
def P12027065974941040546.Spec : Prop :=
  ∀ n, P12027065974941040546.a n = A251021 (n + 1)

end A251021

/-! ## A251021.P9373256564210881262

`record[A251028(A226387(n+1))]`
-/

namespace A251021.P9373256564210881262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A226387 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251021.P9373256564210881262

namespace A251021

/-- `record[A251028(A226387(n+1))]` -/
def P9373256564210881262.Spec : Prop :=
  ∀ n, P9373256564210881262.a n = A251021 (n + 1)

end A251021

/-!
# A251022: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251022, there is no canonical definition to state claims against.
-/

/-! ## A251022.P1428597976881225694

`A251028(∑[n+1]+2)`
-/

namespace A251022.P1428597976881225694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251022.P1428597976881225694

/-! ## A251022.P668631674904887211

`record[A251028(A056536(n+1)+1)]`
-/

namespace A251022.P668631674904887211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251022.P668631674904887211

/-! ## A251022.P4671267226192324154

`record[A251028(A114091(n+1)+1)]`
-/

namespace A251022.P4671267226192324154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251022.P4671267226192324154

/-! ## A251022.P3206817353792520207

`record[A010054(n)*A251028(n+2)]`
-/

namespace A251022.P3206817353792520207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251022.P3206817353792520207

/-!
# A251023: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251023, there is no canonical definition to state claims against.
-/

/-! ## A251023.P1466901668448246983

`A251028(∑[n+2]+4)`
-/

namespace A251023.P1466901668448246983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251023.P1466901668448246983

/-!
# A251024: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251024, there is no canonical definition to state claims against.
-/

/-! ## A251024.P13249912023591199709

`A251028(∑[n+3]+7)`
-/

namespace A251024.P13249912023591199709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251024.P13249912023591199709

/-!
# A251025: Number of (n+1)X(5+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251025, there is no canonical definition to state claims against.
-/

/-! ## A251025.P2170383100988366974

`A251028(∑[n+4]+11)`
-/

namespace A251025.P2170383100988366974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A251025.P2170383100988366974

/-!
# A251026: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251026, there is no canonical definition to state claims against.
-/

/-! ## A251026.P8051636282839013791

`A251028(A166136(n+4))`
-/

namespace A251026.P8051636282839013791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A166136 (n + 4)).toNat

end

end A251026.P8051636282839013791

/-! ## A251026.P17987726433038568003

`A251028(A374007(n+1))`
-/

namespace A251026.P17987726433038568003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A374007 (n + 1)).toNat

end

end A251026.P17987726433038568003

/-!
# A251027: Number of (n+1)X(7+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251027, there is no canonical definition to state claims against.
-/

/-! ## A251027.P4358712243503946783

`A251028(A056119(n)+28)`
-/

namespace A251027.P4358712243503946783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A056119 n + 28).toNat

end

end A251027.P4358712243503946783

/-! ## A251027.P1818358968426458403

`A251028(A374008(n+1))`
-/

namespace A251027.P1818358968426458403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A374008 (n + 1)).toNat

end

end A251027.P1818358968426458403

/-!
# A251029: Number of (n+1) X (n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251029, there is no canonical definition to state claims against.
-/

/-! ## A251029.P5315263465970783333

`A251037(∑[4*n]+1)`
-/

namespace A251029.P5315263465970783333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251029.P5315263465970783333

/-! ## A251029.P10789082234254655363

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A251037(n+1))]`
-/

namespace A251029.P10789082234254655363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A251037 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251029.P10789082234254655363

/-!
# A251030: Number of (n+1)X(1+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251030, there is no canonical definition to state claims against.
-/

/-! ## A251030.P1929811312506286029

`A251037(∑[1+n])`
-/

namespace A251030.P1929811312506286029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251030.P1929811312506286029

/-! ## A251030.P15270432587647697718

`record[A251037(A133825(n))]`
-/

namespace A251030.P15270432587647697718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251030.P15270432587647697718

/-! ## A251030.P5786324493069679161

`record[A251037(A106255(n+1))]`
-/

namespace A251030.P5786324493069679161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A106255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251030.P5786324493069679161

/-! ## A251030.P10618761465686906834

`record[A251037(A130270(n+1))]`
-/

namespace A251030.P10618761465686906834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251030.P10618761465686906834

/-! ## A251030.P14774744696965804310

`record[A251037(A257506(n+1))]`
-/

namespace A251030.P14774744696965804310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A257506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251030.P14774744696965804310

/-!
# A251031: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251031, there is no canonical definition to state claims against.
-/

/-! ## A251031.P1656627289689286823

`A251037(∑[2+n])`
-/

namespace A251031.P1656627289689286823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251031.P1656627289689286823

/-! ## A251031.P2597677988938431418

`record[A251037(A257506(n+2)-1)]`
-/

namespace A251031.P2597677988938431418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A257506 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251031.P2597677988938431418

/-! ## A251031.P13278586529590555216

`record[gcd(A105422(n+1), A251037(n+2))]`
-/

namespace A251031.P13278586529590555216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 (n + 1)) (A251037 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251031.P13278586529590555216

/-!
# A251032: Number of (n+1)X(3+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251032, there is no canonical definition to state claims against.
-/

/-! ## A251032.P7870955231047062056

`A251037(∑[n+3]+1)`
-/

namespace A251032.P7870955231047062056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251032.P7870955231047062056

/-!
# A251033: Number of (n+1)X(4+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251033, there is no canonical definition to state claims against.
-/

/-! ## A251033.P8276626434667607471

`A251037(∑[n+4]+3)`
-/

namespace A251033.P8276626434667607471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A251033.P8276626434667607471

/-!
# A251034: Number of (n+1)X(5+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251034, there is no canonical definition to state claims against.
-/

/-! ## A251034.P6142183932139158814

`A251037(∑[n+5]+6)`
-/

namespace A251034.P6142183932139158814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A251034.P6142183932139158814

/-!
# A251035: Number of (n+1)X(6+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251035, there is no canonical definition to state claims against.
-/

/-! ## A251035.P8320680100742080267

`A251037(A052905(n+3))`
-/

namespace A251035.P8320680100742080267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A052905 (n + 3)).toNat

end

end A251035.P8320680100742080267

/-!
# A251036: Number of (n+1)X(7+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251036, there is no canonical definition to state claims against.
-/

/-! ## A251036.P5786322694200822676

`A251037(A055999(n+4))`
-/

namespace A251036.P5786322694200822676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A055999 (n + 4)).toNat

end

end A251036.P5786322694200822676

/-!
# A251038: Number of (1+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251038, there is no canonical definition to state claims against.
-/

/-! ## A251038.P13155054419766046270

`A251037(∑[n]+1)`
-/

namespace A251038.P13155054419766046270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251038.P13155054419766046270

/-! ## A251038.P1504664576945797978

`record[A251037(A166017(n+1))]`
-/

namespace A251038.P1504664576945797978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251038.P1504664576945797978

/-! ## A251038.P12986579549494164359

`record[A251037(Δ[A053436(n+1)])]`
-/

namespace A251038.P12986579549494164359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251038.P12986579549494164359

/-! ## A251038.P2034438157232906166

`record[A010054(n)*A251037(n+1)]`
-/

namespace A251038.P2034438157232906166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251038.P2034438157232906166

/-!
# A251039: Number of (2+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251039, there is no canonical definition to state claims against.
-/

/-! ## A251039.P11869091226409104384

`A251037(∑[n+1]+2)`
-/

namespace A251039.P11869091226409104384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251039.P11869091226409104384

/-! ## A251039.P2939040241021427137

`record[A023531(n)*A251037(n+3)]`
-/

namespace A251039.P2939040241021427137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A251037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251039.P2939040241021427137

/-! ## A251039.P6143948541369423379

`record[gcd(A025581(n), A251037(n+3))]`
-/

namespace A251039.P6143948541369423379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A251037 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251039.P6143948541369423379

/-! ## A251039.P15564061032964790187

`record[A010054(n+1)*A251037(n+3)]`
-/

namespace A251039.P15564061032964790187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A251037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251039.P15564061032964790187

/-! ## A251039.P3926688170626291307

`record[root(A251037(n+3), A243060(n+1))]`
-/

namespace A251039.P3926688170626291307
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251037 (n + 3) : ℝ) ^ (1 / (A243060 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251039.P3926688170626291307

/-!
# A251040: Number of (3+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251040, there is no canonical definition to state claims against.
-/

/-! ## A251040.P14757131573096912193

`A251037(∑[n+2]+4)`
-/

namespace A251040.P14757131573096912193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251040.P14757131573096912193

/-!
# A251041: Number of (4+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251041, there is no canonical definition to state claims against.
-/

/-! ## A251041.P5668797137374503918

`A251037(∑[n+3]+7)`
-/

namespace A251041.P5668797137374503918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251041.P5668797137374503918

/-!
# A251042: Number of (5+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251042, there is no canonical definition to state claims against.
-/

/-! ## A251042.P13334796355090821248

`A251037(A167499(n+3))`
-/

namespace A251042.P13334796355090821248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167499 (n + 3)).toNat

end

end A251042.P13334796355090821248

/-!
# A251043: Number of (6+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251043, there is no canonical definition to state claims against.
-/

/-! ## A251043.P17406244156826137345

`A251037(A056115(n)+21)`
-/

namespace A251043.P17406244156826137345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A056115 n + 21).toNat

end

end A251043.P17406244156826137345

/-!
# A251044: Number of (7+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251044, there is no canonical definition to state claims against.
-/

/-! ## A251044.P15340786520773998288

`A251037(A302537(n)+27)`
-/

namespace A251044.P15340786520773998288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A302537 n + 27).toNat

end

end A251044.P15340786520773998288

/-!
# A251045: Squarefree part of A098550(n).

The programs for A251045, there is no canonical definition to state claims against.
-/

/-! ## A251045.P9352813459264381154

`A007913(A098550(1+n))`
-/

namespace A251045.P9352813459264381154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A098550 (1 + n)).toNat

end

end A251045.P9352813459264381154

/-! ## A251045.P12466117325068066102

`A251089(n+1)/A336643(A098550(n+1))`
-/

namespace A251045.P12466117325068066102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251089 (n + 1) : ℚ) / (A336643 (A098550 (n + 1)).toNat : ℚ)

end

end A251045.P12466117325068066102

/-! ## A251045.P11956160132442904863

`A098552(A098551(n+1))-A326128(A098550(n+1))`
-/

namespace A251045.P11956160132442904863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (n + 1)).toNat - A326128 (A098550 (n + 1)).toNat

end

end A251045.P11956160132442904863

/-! ## A251045.P18063114057977371058

`∏{p}[A071975(A098550(n+1)), A304328(#)]`
-/

namespace A251045.P18063114057977371058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A098550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A304328 p

end

end A251045.P18063114057977371058

/-! ## A251045.P6032029450097025294

`A056135(4*A098550(n+1))`
-/

namespace A251045.P6032029450097025294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (4 * A098550 (n + 1)).toNat

end

end A251045.P6032029450097025294

/-! ## A251045.P18149267605557349448

`A076686(16*A098550(n+1))`
-/

namespace A251045.P18149267605557349448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (16 * A098550 (n + 1)).toNat

end

end A251045.P18149267605557349448

/-! ## A251045.P12183375114829334554

`A336643(A098550(n+1)*A251089(n+1))`
-/

namespace A251045.P12183375114829334554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A098550 (n + 1) * A251089 (n + 1)).toNat

end

end A251045.P12183375114829334554

/-! ## A251045.P10601126561318747836

`A336643(A098550(n+1)²)/A336643(A098550(n+1))`
-/

namespace A251045.P10601126561318747836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336643 (A098550 (n + 1) ^ 2).toNat : ℚ) / (A336643 (A098550 (n + 1)).toNat : ℚ)

end

end A251045.P10601126561318747836

/-! ## A251045.P10437693119803737987

`A056554(A098550(n+1)²)`
-/

namespace A251045.P10437693119803737987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (A098550 (n + 1) ^ 2).toNat

end

end A251045.P10437693119803737987

/-!
# A251046: Squarefree part of A098548(n).

The programs for A251046, there is no canonical definition to state claims against.
-/

/-! ## A251046.P9280226365963815151

`A007913(A098548(n+1))`
-/

namespace A251046.P9280226365963815151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A098548 (n + 1)).toNat

end

end A251046.P9280226365963815151

/-! ## A251046.P16944192605769532203

`A251045(A098551(A098548(A098551(A098550(n+1)))))`
-/

namespace A251046.P16944192605769532203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251045 (A098551 (A098548 (A098551 (A098550 (n + 1)).toNat).toNat).toNat).toNat

end

end A251046.P16944192605769532203

/-! ## A251046.P2257112358667909458

`A056135(4*A098548(n+1))`
-/

namespace A251046.P2257112358667909458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (4 * A098548 (n + 1)).toNat

end

end A251046.P2257112358667909458

/-! ## A251046.P15893872434339136953

`A076686(4*A098548(n+1))`
-/

namespace A251046.P15893872434339136953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (4 * A098548 (n + 1)).toNat

end

end A251046.P15893872434339136953

/-!
# A251047: Number of (n+1)X(n+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251047, there is no canonical definition to state claims against.
-/

/-! ## A251047.P593208026893537459

`A251055(∑[4*n]+1)`
-/

namespace A251047.P593208026893537459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251047.P593208026893537459

/-! ## A251047.P13748927031946009543

`record[A251055(Δ[A235355(n)])]`
-/

namespace A251047.P13748927031946009543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251047.P13748927031946009543

/-! ## A251047.P13588057612641853340

`record[A003982(n)*A251055(n+1)]`
-/

namespace A251047.P13588057612641853340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251047.P13588057612641853340

/-!
# A251048: Number of (n+1) X (1+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251048, the canonical program `A251048.P8269140614114434619` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251048 has offset 1).

The definition of A251048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251048.P8269140614114434619

`ogf((66-172x+12x^2+363x^3-470x^4+245x^5-34x^6-18x^7+6x^8)/(1-7x+18x^2-17x^3-10x^4+39x^5-38x^6+17x^7-3x^8))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251048

/-- `ogf((66-172x+12x^2+363x^3-470x^4+245x^5-34x^6-18x^7+6x^8)/(1-7x+18x^2-17x^3-10x^4+39x^5-38x^6+17x^7-3x^8))` -/
def P8269140614114434619.Spec : Prop :=
  ∀ n, P8269140614114434619.a n = A251048 (n + 1)

theorem P8269140614114434619.correct : P8269140614114434619.Spec := by
  intro n
  simp only [A251048, Nat.add_sub_cancel]

end A251048

/-! ## A251048.P13694948886483753975

`A251055(∑[n]+1)`
-/

namespace A251048.P13694948886483753975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251048.P13694948886483753975

namespace A251048

/-- `A251055(∑[n]+1)` -/
def P13694948886483753975.Spec : Prop :=
  ∀ n, P13694948886483753975.a n = A251048 (n + 1)

end A251048

/-! ## A251048.P1959534186470814980

`record[A251055(A329854(n))]`
-/

namespace A251048.P1959534186470814980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A329854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251048.P1959534186470814980

namespace A251048

/-- `record[A251055(A329854(n))]` -/
def P1959534186470814980.Spec : Prop :=
  ∀ n, P1959534186470814980.a n = A251048 (n + 1)

end A251048

/-! ## A251048.P6780385009969449122

`record[A251055(A056536(n+1))]`
-/

namespace A251048.P6780385009969449122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251048.P6780385009969449122

namespace A251048

/-- `record[A251055(A056536(n+1))]` -/
def P6780385009969449122.Spec : Prop :=
  ∀ n, P6780385009969449122.a n = A251048 (n + 1)

end A251048

/-! ## A251048.P180886552020941237

`record[A251055(A276954(n+1))]`
-/

namespace A251048.P180886552020941237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251048.P180886552020941237

namespace A251048

/-- `record[A251055(A276954(n+1))]` -/
def P180886552020941237.Spec : Prop :=
  ∀ n, P180886552020941237.a n = A251048 (n + 1)

end A251048

/-!
# A251049: Number of (n+1) X (2+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251049, there is no canonical definition to state claims against.
-/

/-! ## A251049.P11519284490934076971

`A251055(∑[n+1]+2)`
-/

namespace A251049.P11519284490934076971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251049.P11519284490934076971

/-! ## A251049.P7756932612772790457

`record[A251055(A329854(n)+1)]`
-/

namespace A251049.P7756932612772790457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A329854 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251049.P7756932612772790457

/-! ## A251049.P1882062460258459637

`record[A251055(A061579(n)+3)]`
-/

namespace A251049.P1882062460258459637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A061579 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251049.P1882062460258459637

/-! ## A251049.P1035488550396418854

`record[A251055(A056536(n+1)+1)]`
-/

namespace A251049.P1035488550396418854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251049.P1035488550396418854

/-! ## A251049.P6882046063186939155

`record[A251055(A286235(n+1)+1)]`
-/

namespace A251049.P6882046063186939155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251049.P6882046063186939155

/-!
# A251050: Number of (n+1) X (3+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251050, there is no canonical definition to state claims against.
-/

/-! ## A251050.P4419096888736205523

`A251055(∑[n+2]+4)`
-/

namespace A251050.P4419096888736205523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251050.P4419096888736205523

/-! ## A251050.P14821082977699879467

`record[gcd(A025581(n), A251055(n+4))]`
-/

namespace A251050.P14821082977699879467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A251055 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251050.P14821082977699879467

/-! ## A251050.P8831115076224350171

`record[A010054(n+1)*A251055(n+4)]`
-/

namespace A251050.P8831115076224350171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A251055 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251050.P8831115076224350171

/-!
# A251051: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251051, there is no canonical definition to state claims against.
-/

/-! ## A251051.P4430564770983141640

`A251055(∑[n+3]+7)`
-/

namespace A251051.P4430564770983141640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251051.P4430564770983141640

/-!
# A251052: Number of (n+1)X(5+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251052, there is no canonical definition to state claims against.
-/

/-! ## A251052.P13077702437611649554

`A251055(∑[n+4]+11)`
-/

namespace A251052.P13077702437611649554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A251052.P13077702437611649554

/-!
# A251053: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251053, there is no canonical definition to state claims against.
-/

/-! ## A251053.P8196691754203257069

`A251055(∑[n+5]+16)`
-/

namespace A251053.P8196691754203257069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251053.P8196691754203257069

/-!
# A251054: Number of (n+1)X(7+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251054, there is no canonical definition to state claims against.
-/

/-! ## A251054.P14966584234209423364

`A251055(A374008(n+1))`
-/

namespace A251054.P14966584234209423364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A374008 (n + 1)).toNat

end

end A251054.P14966584234209423364

/-!
# A251058: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251058, there is no canonical definition to state claims against.
-/

/-! ## A251058.P6942948641714669060

`A251065(4*∑[n]+1)`
-/

namespace A251058.P6942948641714669060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A251058.P6942948641714669060

/-!
# A251059: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251059, there is no canonical definition to state claims against.
-/

/-! ## A251059.P5457061272496124049

`A251065(∑[n+2])`
-/

namespace A251059.P5457061272496124049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251059.P5457061272496124049

/-!
# A251060: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251060, there is no canonical definition to state claims against.
-/

/-! ## A251060.P10484612882353803059

`A251065(∑[n+3]+1)`
-/

namespace A251060.P10484612882353803059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251060.P10484612882353803059

/-! ## A251060.P927777237686297609

`record[A251065(A198464(n+1))]`
-/

namespace A251060.P927777237686297609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251060.P927777237686297609

/-!
# A251061: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251061, there is no canonical definition to state claims against.
-/

/-! ## A251061.P17023901400483978702

`A251065(A141214(n+1))`
-/

namespace A251061.P17023901400483978702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A141214 (n + 1)).toNat

end

end A251061.P17023901400483978702

/-!
# A251062: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251062, there is no canonical definition to state claims against.
-/

/-! ## A251062.P7382006868532437730

`A251065(eq[4, A193592(n)])`
-/

namespace A251062.P7382006868532437730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251062.P7382006868532437730

/-!
# A251063: Number of (n+1)X(6+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251063, there is no canonical definition to state claims against.
-/

/-! ## A251063.P5595303122138620698

`A251065(A052905(n+3))`
-/

namespace A251063.P5595303122138620698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A052905 (n + 3)).toNat

end

end A251063.P5595303122138620698

/-!
# A251064: Number of (n+1) X (7+1) 0..2 arrays with no 2 X 2 subblock having x11-x00 less than x10-x01.

The programs for A251064, there is no canonical definition to state claims against.
-/

/-! ## A251064.P11463274212131607371

`A251065(A055999(n+4))`
-/

namespace A251064.P11463274212131607371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A055999 (n + 4)).toNat

end

end A251064.P11463274212131607371

/-!
# A251066: Number of (2+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251066, there is no canonical definition to state claims against.
-/

/-! ## A251066.P2191499137049492240

`A251065(∑[n+1]+2)`
-/

namespace A251066.P2191499137049492240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251066.P2191499137049492240

/-! ## A251066.P8169902477282662028

`record[A103452(n)*A251065(n+3)]`
-/

namespace A251066.P8169902477282662028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A251065 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251066.P8169902477282662028

/-! ## A251066.P17709051679996741813

`record[gcd(A025581(n), A251065(n+3))]`
-/

namespace A251066.P17709051679996741813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A251065 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251066.P17709051679996741813

/-!
# A251067: Number of (3+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251067, there is no canonical definition to state claims against.
-/

/-! ## A251067.P13780509184407845711

`A251065(∑[n+2]+4)`
-/

namespace A251067.P13780509184407845711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251067.P13780509184407845711

/-!
# A251068: Number of (4+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251068, there is no canonical definition to state claims against.
-/

/-! ## A251068.P8520150632527335388

`A251065(A141214(n)+7)`
-/

namespace A251068.P8520150632527335388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A141214 n + 7).toNat

end

end A251068.P8520150632527335388

/-!
# A251069: Number of (5+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251069, there is no canonical definition to state claims against.
-/

/-! ## A251069.P5499881383716287802

`A251065(A167499(n+3))`
-/

namespace A251069.P5499881383716287802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A167499 (n + 3)).toNat

end

end A251069.P5499881383716287802

/-!
# A251070: Number of (6+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251070, there is no canonical definition to state claims against.
-/

/-! ## A251070.P2878173151815667271

`A251065(∑[n+5]+16)`
-/

namespace A251070.P2878173151815667271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251070.P2878173151815667271

/-!
# A251071: Number of (7+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251071, there is no canonical definition to state claims against.
-/

/-! ## A251071.P7228690180013028979

`A251065(eq[11, A066657(n)])`
-/

namespace A251071.P7228690180013028979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251071.P7228690180013028979

/-!
# A251072: Number A(n,k) of tilings of a 3k X n rectangle using 3n k-ominoes of shape I; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A251072, there is no canonical definition to state claims against.
-/

/-! ## A251072.P3101569043680648769

`A147249(A350733(n))`
-/

namespace A251072.P3101569043680648769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147249 (A350733 n).toNat

end

end A251072.P3101569043680648769

/-! ## A251072.P10111849726626381846

`gcd(A004442(C(n, 5)), A022182(n))`
-/

namespace A251072.P10111849726626381846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (Nat.choose n 5)) (A022182 n)

end

end A251072.P10111849726626381846

/-! ## A251072.P9199133387366207921

`A119788(A227010(3*n+1)-8)`
-/

namespace A251072.P9199133387366207921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A227010 (3 * n + 1) - 8).toNat

end

end A251072.P9199133387366207921

/-! ## A251072.P14695380059781061692

`A196929(or(10, A196929(3*n+4)))`
-/

namespace A251072.P14695380059781061692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (Int.lor 10 (A196929 (3 * n + 4))).toNat

end

end A251072.P14695380059781061692

/-! ## A251072.P2044323212647212791

`A208339(A208510(A208510(A210879(n+2))))`
-/

namespace A251072.P2044323212647212791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208339 (A208510 (A208510 (A210879 (n + 2)).toNat).toNat).toNat

end

end A251072.P2044323212647212791

/-!
# A251073: Number of tilings of a 9 X n rectangle using 3n trominoes of shape I.

The programs for A251073, there is no canonical definition to state claims against.
-/

/-! ## A251073.P9564687378346193126

`A251072(∑[n+3]+n+3)`
-/

namespace A251073.P9564687378346193126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A251073.P9564687378346193126

/-!
# A251074: Number of tilings of a 12 X n rectangle using 3n tetrominoes of shape I.

The programs for A251074, there is no canonical definition to state claims against.
-/

/-! ## A251074.P3152163284660173293

`A251072(A052905(n+2))`
-/

namespace A251074.P3152163284660173293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A052905 (n + 2)).toNat

end

end A251074.P3152163284660173293

/-!
# A251075: Number of tilings of a 18 X n rectangle using 3n hexominoes of shape I.

The programs for A251075, there is no canonical definition to state claims against.
-/

/-! ## A251075.P1028362412566079871

`A251072(eq[6, A025581(n)])`
-/

namespace A251075.P1028362412566079871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251075.P1028362412566079871

/-! ## A251075.P6687720417387350250

`filter[A146795(n+2), A352569(#)]`
-/

namespace A251075.P6687720417387350250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146795 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A352569 (f1 j).toNat = 1) n)

end

end A251075.P6687720417387350250

/-! ## A251075.P13673512164589563160

`A319503(A319399(A319503(A000045(n))))`
-/

namespace A251075.P13673512164589563160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319503 (A319399 (A319503 (A000045 n).toNat).toNat).toNat

end

end A251075.P13673512164589563160

/-!
# A251076: Number of tilings of a 21 X n rectangle using 3n heptominoes of shape I.

The programs for A251076, there is no canonical definition to state claims against.
-/

/-! ## A251076.P16204205138861210347

`A251072(A155212(n+4))`
-/

namespace A251076.P16204205138861210347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A155212 (n + 4)).toNat

end

end A251076.P16204205138861210347

/-!
# A251077: Number of tilings of a 24 X n rectangle using 3n octominoes of shape I.

The programs for A251077, there is no canonical definition to state claims against.
-/

/-! ## A251077.P16651638643360626236

`A251072(eq[8, A025581(n)])`
-/

namespace A251077.P16651638643360626236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251077.P16651638643360626236

/-! ## A251077.P11059494752857446130

`A000571(A376546(n))^A108433(n)`
-/

namespace A251077.P11059494752857446130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000571 (A376546 n).toNat : ℚ) ^ (A108433 n : ℤ)

end

end A251077.P11059494752857446130

/-!
# A251078: Number of tilings of a 27 X n rectangle using 3n nonominoes of shape I.

The programs for A251078, there is no canonical definition to state claims against.
-/

/-! ## A251078.P278814205714551902

`A251072(eq[9, A025581(n)])`
-/

namespace A251078.P278814205714551902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251078.P278814205714551902

/-! ## A251078.P817838570372790107

`A174004(A048067(n+1))`
-/

namespace A251078.P817838570372790107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174004 (A048067 (n + 1)).toNat

end

end A251078.P817838570372790107

/-!
# A251079: Number of tilings of a 30 X n rectangle using 3n decominoes of shape I.

The programs for A251079, there is no canonical definition to state claims against.
-/

/-! ## A251079.P11171249385051189544

`A251072(eq[10, A025581(n)])`
-/

namespace A251079.P11171249385051189544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251079.P11171249385051189544

/-! ## A251079.P10849855161827864042

`A241971(A111696(n))`
-/

namespace A251079.P10849855161827864042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (A111696 n).toNat

end

end A251079.P10849855161827864042

/-! ## A251079.P2216165982517021378

`A358577(C(∑{d}[n, #%#²], A131242(n)))`
-/

namespace A251079.P2216165982517021378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358577 (Nat.choose (∑ d ∈ Nat.divisors (f1 n), d % d ^ 2) (A131242 n).toNat)

end

end A251079.P2216165982517021378

/-!
# A251080: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251080, there is no canonical definition to state claims against.
-/

/-! ## A251080.P12428869311913317381

`A251088(∑[4*n]+1)`
-/

namespace A251080.P12428869311913317381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251080.P12428869311913317381

/-! ## A251080.P5454813831155064939

`record[A003982(n)*A251088(n+1)]`
-/

namespace A251080.P5454813831155064939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251080.P5454813831155064939

/-! ## A251080.P12384738641584968886

`record[gcd(A003987(n), A251088(n+1))]`
-/

namespace A251080.P12384738641584968886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251088 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251080.P12384738641584968886

/-!
# A251081: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251081, the canonical program `A251081.P1178899843510358379` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251081 has offset 1).

The definition of A251081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251081.P1178899843510358379

`ogf((27-52x-7x^2+70x^3-47x^4+6x^5+2x^6)/(1-5x+8x^2-2x^3-7x^4+7x^5-2x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251081

/-- `ogf((27-52x-7x^2+70x^3-47x^4+6x^5+2x^6)/(1-5x+8x^2-2x^3-7x^4+7x^5-2x^6))` -/
def P1178899843510358379.Spec : Prop :=
  ∀ n, P1178899843510358379.a n = A251081 (n + 1)

theorem P1178899843510358379.correct : P1178899843510358379.Spec := by
  intro n
  simp only [A251081, Nat.add_sub_cancel]

end A251081

/-! ## A251081.P11658562085813858995

`A251088(∑[n]+1)`
-/

namespace A251081.P11658562085813858995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251081.P11658562085813858995

namespace A251081

/-- `A251088(∑[n]+1)` -/
def P11658562085813858995.Spec : Prop :=
  ∀ n, P11658562085813858995.a n = A251081 (n + 1)

end A251081

/-! ## A251081.P7233167599638039386

`record[A251088(A056536(n+1))]`
-/

namespace A251081.P7233167599638039386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251081.P7233167599638039386

namespace A251081

/-- `record[A251088(A056536(n+1))]` -/
def P7233167599638039386.Spec : Prop :=
  ∀ n, P7233167599638039386.a n = A251081 (n + 1)

end A251081

/-! ## A251081.P3883349339868835393

`record[A251088(A249742(n+1))]`
-/

namespace A251081.P3883349339868835393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251081.P3883349339868835393

namespace A251081

/-- `record[A251088(A249742(n+1))]` -/
def P3883349339868835393.Spec : Prop :=
  ∀ n, P3883349339868835393.a n = A251081 (n + 1)

end A251081

/-! ## A251081.P13102890900322035049

`record[A251088(A267104(n+1))]`
-/

namespace A251081.P13102890900322035049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251081.P13102890900322035049

namespace A251081

/-- `record[A251088(A267104(n+1))]` -/
def P13102890900322035049.Spec : Prop :=
  ∀ n, P13102890900322035049.a n = A251081 (n + 1)

end A251081

/-!
# A251082: Number of (n+1) X (2+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251082, the canonical program `A251082.P6269064044547801408` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251082 has offset 1).

The definition of A251082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251082.P6269064044547801408

`ogf((83-214x-9x^2+472x^3-549x^4+204x^5+29x^6-26x^7)/(1-6x+13x^2-10x^3-5x^4+14x^5-9x^6+2x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251082

/-- `ogf((83-214x-9x^2+472x^3-549x^4+204x^5+29x^6-26x^7)/(1-6x+13x^2-10x^3-5x^4+14x^5-9x^6+2x^7))` -/
def P6269064044547801408.Spec : Prop :=
  ∀ n, P6269064044547801408.a n = A251082 (n + 1)

theorem P6269064044547801408.correct : P6269064044547801408.Spec := by
  intro n
  simp only [A251082, Nat.add_sub_cancel]

end A251082

/-! ## A251082.P2009098444442720954

`A251088(∑[n+1]+2)`
-/

namespace A251082.P2009098444442720954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251082.P2009098444442720954

namespace A251082

/-- `A251088(∑[n+1]+2)` -/
def P2009098444442720954.Spec : Prop :=
  ∀ n, P2009098444442720954.a n = A251082 (n + 1)

end A251082

/-! ## A251082.P12483592748638485061

`record[A251088(A056536(n+1)+1)]`
-/

namespace A251082.P12483592748638485061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251082.P12483592748638485061

namespace A251082

/-- `record[A251088(A056536(n+1)+1)]` -/
def P12483592748638485061.Spec : Prop :=
  ∀ n, P12483592748638485061.a n = A251082 (n + 1)

end A251082

/-!
# A251083: Number of (n+1) X (3+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251083, there is no canonical definition to state claims against.
-/

/-! ## A251083.P2217727051401679429

`A251088(∑[n+2]+4)`
-/

namespace A251083.P2217727051401679429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251083.P2217727051401679429

/-!
# A251084: Number of (n+1) X (4+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251084, there is no canonical definition to state claims against.
-/

/-! ## A251084.P7076149820163291983

`A251088(∑[n+3]+7)`
-/

namespace A251084.P7076149820163291983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251084.P7076149820163291983

/-!
# A251085: Number of (n+1) X (5+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251085, there is no canonical definition to state claims against.
-/

/-! ## A251085.P906098309607363026

`A251088(A374005(n+1))`
-/

namespace A251085.P906098309607363026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A374005 (n + 1)).toNat

end

end A251085.P906098309607363026

/-!
# A251086: Number of (n+1) X (6+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251086, there is no canonical definition to state claims against.
-/

/-! ## A251086.P2234530519700349316

`A251088(∑[n+5]+16)`
-/

namespace A251086.P2234530519700349316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251086.P2234530519700349316

/-!
# A251087: Number of (n+1) X (7+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251087, there is no canonical definition to state claims against.
-/

/-! ## A251087.P3095131509409482777

`A251088(A374008(n+1))`
-/

namespace A251087.P3095131509409482777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A374008 (n + 1)).toNat

end

end A251087.P3095131509409482777

/-!
# A251089: Squarefree kernel of A098550(n).

The programs for A251089, there is no canonical definition to state claims against.
-/

/-! ## A251089.P15050028621821265544

`∏{p}[A098550(1+n), #]`
-/

namespace A251089.P15050028621821265544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251089.P15050028621821265544

/-! ## A251089.P12733717016801136960

`A007947(A098550(1+n))`
-/

namespace A251089.P12733717016801136960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A098550 (1 + n)).toNat

end

end A251089.P12733717016801136960

/-! ## A251089.P9198813864260175202

`∏{p}[A098552(A098551(1+n)), #]`
-/

namespace A251089.P9198813864260175202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251089.P9198813864260175202

/-! ## A251089.P16398775048926692709

`A076618(A098550(n+1))-1`
-/

namespace A251089.P16398775048926692709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A098550 (n + 1)).toNat - 1

end

end A251089.P16398775048926692709

/-! ## A251089.P2842935898551881284

`lcm(A008836(n+1), A062953(A098550(n+1)))`
-/

namespace A251089.P2842935898551881284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A062953 (A098550 (n + 1)).toNat)

end

end A251089.P2842935898551881284

/-! ## A251089.P3766202689317370895

`∏{p}[A098551(A098552(Δ[n²]-n)), #]`
-/

namespace A251089.P3766202689317370895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A098552 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251089.P3766202689317370895

/-! ## A251089.P12779391947489616759

`gcd(A068510(n+1), A098550(n+1))`
-/

namespace A251089.P12779391947489616759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068510 (n + 1)) (A098550 (n + 1))

end

end A251089.P12779391947489616759

/-! ## A251089.P1111009277177485424

`A336643(A098550(n+1)²)`
-/

namespace A251089.P1111009277177485424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A098550 (n + 1) ^ 2).toNat

end

end A251089.P1111009277177485424

/-! ## A251089.P14245880707785393230

`A071773(A098550(n+1)²)`
-/

namespace A251089.P14245880707785393230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A098550 (n + 1) ^ 2).toNat

end

end A251089.P14245880707785393230

/-!
# A251090: Squarefree kernel of A098548(n).

The programs for A251090, there is no canonical definition to state claims against.
-/

/-! ## A251090.P367341214210461881

`∏{p}[A098548(1+n), #]`
-/

namespace A251090.P367341214210461881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251090.P367341214210461881

/-! ## A251090.P8783621404027672514

`A007947(A098548(1+n))`
-/

namespace A251090.P8783621404027672514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A098548 (1 + n)).toNat

end

end A251090.P8783621404027672514

/-! ## A251090.P3558028520596076221

`∏{p}[∪[A251535(n)+1, A251535(n)], #]`
-/

namespace A251090.P3558028520596076221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A251090.P3558028520596076221

/-! ## A251090.P11464964183015934196

`∏{p}[A251535(A004526(n))+A059841(n+1), #]`
-/

namespace A251090.P11464964183015934196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (A004526 n).toNat + A059841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251090.P11464964183015934196

/-! ## A251090.P9160018294973745176

`A251089(A098551(A098548(A098551(A098550(n+1)))))`
-/

namespace A251090.P9160018294973745176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251089 (A098551 (A098548 (A098551 (A098550 (n + 1)).toNat).toNat).toNat).toNat

end

end A251090.P9160018294973745176

/-! ## A251090.P5476926766950363416

`A336643(A098548(n+1)²)`
-/

namespace A251090.P5476926766950363416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A098548 (n + 1) ^ 2).toNat

end

end A251090.P5476926766950363416

/-! ## A251090.P10851247248040576846

`gcd(A002110(n), A098548(n+1))`
-/

namespace A251090.P10851247248040576846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A098548 (n + 1))

end

end A251090.P10851247248040576846

/-!
# A251091: a(n) = n^2 / gcd(n+2, 4).

The programs for A251091, the canonical program `A251091.P13345940998005277488` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251091 has offset 0).

The definition of A251091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251091.P13345940998005277488

`n²/gcd(n+2, 4)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251091

/-- `n²/gcd(n+2, 4)` -/
def P13345940998005277488.Spec : Prop :=
  ∀ n, P13345940998005277488.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P2640972686458638581

`ogf((x+x^2+9x^3+8x^4+22x^5+6x^6+22x^7+8x^8+9x^9+x^10+x^11)/(1-3x^4+3x^8-x^12))`
-/

namespace A251091.P2640972686458638581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 9, 8, 22, 6, 22, 8, 9, 1, 1] [1, 0, 0, 0, -3, 0, 0, 0, 3, 0, 0, 0, -1] n

end

end A251091.P2640972686458638581

namespace A251091

/-- `ogf((x+x^2+9x^3+8x^4+22x^5+6x^6+22x^7+8x^8+9x^9+x^10+x^11)/(1-3x^4+3x^8-x^12))` -/
def P2640972686458638581.Spec : Prop :=
  ∀ n, P2640972686458638581.a n = A251091 n

end A251091

/-! ## A251091.P1695634396930888788

`n²/gcd(8, n²)%6`
-/

namespace A251091.P1695634396930888788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / ((Nat.gcd 8 (n ^ 2) % 6 : ℕ) : ℚ)

end

end A251091.P1695634396930888788

namespace A251091

/-- `n²/gcd(8, n²)%6` -/
def P1695634396930888788.Spec : Prop :=
  ∀ n, P1695634396930888788.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P12719905839462099816

`lcm(n+2, n²)/(n+2)`
-/

namespace A251091.P12719905839462099816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (n ^ 2) : ℚ) / (n + 2 : ℚ)

end

end A251091.P12719905839462099816

namespace A251091

/-- `lcm(n+2, n²)/(n+2)` -/
def P12719905839462099816.Spec : Prop :=
  ∀ n, P12719905839462099816.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P12513217065155171978

`gcd(n, ∑[n]²)*gcd(n, ∑[n])`
-/

namespace A251091.P12513217065155171978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A251091.P12513217065155171978

namespace A251091

/-- `gcd(n, ∑[n]²)*gcd(n, ∑[n])` -/
def P12513217065155171978.Spec : Prop :=
  ∀ n, (P12513217065155171978.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P17910482795386070444

`n*n/gcd(2-n, 2*n)`
-/

namespace A251091.P17910482795386070444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) / (Int.gcd (2 - (n : ℤ)) (2 * n : ℤ) : ℚ))

end

end A251091.P17910482795386070444

namespace A251091

/-- `n*n/gcd(2-n, 2*n)` -/
def P17910482795386070444.Spec : Prop :=
  ∀ n, P17910482795386070444.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P13925929751141999973

`gcd(∑[n]²², C(n²+1, 2))`
-/

namespace A251091.P13925929751141999973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) (Nat.choose (n ^ 2 + 1) 2)

end

end A251091.P13925929751141999973

namespace A251091

/-- `gcd(∑[n]²², C(n²+1, 2))` -/
def P13925929751141999973.Spec : Prop :=
  ∀ n, (P13925929751141999973.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P3063638069801048724

`n²/(((n+1)^3)%4+1)`
-/

namespace A251091.P3063638069801048724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (((n + 1) ^ 3 % 4 + 1 : ℕ) : ℚ)

end

end A251091.P3063638069801048724

namespace A251091

/-- `n²/(((n+1)^3)%4+1)` -/
def P3063638069801048724.Spec : Prop :=
  ∀ n, P3063638069801048724.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P12200675089028558106

`n²/∑[3/a(n-2)]` with `a(0)=2, a(1)=-1, a(2)=3`
-/

namespace A251091.P12200675089028558106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, -1, 3] fun n f1 =>
  3 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251091.P12200675089028558106

namespace A251091

/-- `n²/∑[3/a(n-2)]` -/
def P12200675089028558106.Spec : Prop :=
  ∀ n, P12200675089028558106.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P6870128697474406894

`A181900(gcd(n, ∑[n]))`
-/

namespace A251091.P6870128697474406894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A251091.P6870128697474406894

namespace A251091

/-- `A181900(gcd(n, ∑[n]))` -/
def P6870128697474406894.Spec : Prop :=
  ∀ n, P6870128697474406894.a n = A251091 n

end A251091

/-! ## A251091.P2702300174303195764

`gcd(∑[n]²², A037270(n))`
-/

namespace A251091.P2702300174303195764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℤ) (A037270 n)

end

end A251091.P2702300174303195764

namespace A251091

/-- `gcd(∑[n]²², A037270(n))` -/
def P2702300174303195764.Spec : Prop :=
  ∀ n, (P2702300174303195764.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P6271285447077184025

`n/A062828(n+1)*∑[n]`
-/

namespace A251091.P6271285447077184025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A062828 (n + 1) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A251091.P6271285447077184025

namespace A251091

/-- `n/A062828(n+1)*∑[n]` -/
def P6271285447077184025.Spec : Prop :=
  ∀ n, P6271285447077184025.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P10130239422446651579

`A129194(A283971(n))`
-/

namespace A251091.P10130239422446651579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (A283971 n).toNat

end

end A251091.P10130239422446651579

namespace A251091

/-- `A129194(A283971(n))` -/
def P10130239422446651579.Spec : Prop :=
  ∀ n, P10130239422446651579.a n = A251091 n

end A251091

/-! ## A251091.P12001070861350902641

`A026741(n)*A283971(n)`
-/

namespace A251091.P12001070861350902641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A283971 n

end

end A251091.P12001070861350902641

namespace A251091

/-- `A026741(n)*A283971(n)` -/
def P12001070861350902641.Spec : Prop :=
  ∀ n, P12001070861350902641.a n = A251091 n

end A251091

/-! ## A251091.P2675884195762214149

`A181900(n)/A089146(n)`
-/

namespace A251091.P2675884195762214149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181900 n : ℚ) / (A089146 n : ℚ)

end

end A251091.P2675884195762214149

namespace A251091

/-- `A181900(n)/A089146(n)` -/
def P2675884195762214149.Spec : Prop :=
  ∀ n, P2675884195762214149.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P10720601309843268311

`gcd(A002411(n), A075664(n))`
-/

namespace A251091.P10720601309843268311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002411 n) (A075664 n)

end

end A251091.P10720601309843268311

namespace A251091

/-- `gcd(A002411(n), A075664(n))` -/
def P10720601309843268311.Spec : Prop :=
  ∀ n, (P10720601309843268311.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P7731222556639201964

`gcd(A078876(n), A100242(n))`
-/

namespace A251091.P7731222556639201964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078876 n) (A100242 n)

end

end A251091.P7731222556639201964

namespace A251091

/-- `gcd(A078876(n), A100242(n))` -/
def P7731222556639201964.Spec : Prop :=
  ∀ n, (P7731222556639201964.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P1324580604615454626

`gcd(A037270(n), A309335(n))`
-/

namespace A251091.P1324580604615454626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037270 n) (A309335 n)

end

end A251091.P1324580604615454626

namespace A251091

/-- `gcd(A037270(n), A309335(n))` -/
def P1324580604615454626.Spec : Prop :=
  ∀ n, (P1324580604615454626.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P10545788174793586348

`gcd(A129194(n), A245940(n))`
-/

namespace A251091.P10545788174793586348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129194 n) (A245940 n)

end

end A251091.P10545788174793586348

namespace A251091

/-- `gcd(A129194(n), A245940(n))` -/
def P10545788174793586348.Spec : Prop :=
  ∀ n, (P10545788174793586348.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P2045829513129408407

`gcd(A101376(n), A309336(n))`
-/

namespace A251091.P2045829513129408407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101376 n) (A309336 n)

end

end A251091.P2045829513129408407

namespace A251091

/-- `gcd(A101376(n), A309336(n))` -/
def P2045829513129408407.Spec : Prop :=
  ∀ n, (P2045829513129408407.a n : ℤ) = A251091 n

end A251091

/-!
# A251092: a(n) is the number of primes in the n-th group of consecutive primes among the odd numbers.

The programs for A251092, the canonical program `A251092.P10184513225157479240` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251092 has offset 1).

The definition of A251092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251092.P12703046418042238802

`runs[round(p?[2*n+1]/6)]`
-/

namespace A251092.P12703046418042238802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P12703046418042238802

namespace A251092

/-- `runs[round(p?[2*n+1]/6)]` -/
def P12703046418042238802.Spec : Prop :=
  ∀ n, (P12703046418042238802.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P11466942596975184440

`runs[p?[2*n+1]-2*n]`
-/

namespace A251092.P11466942596975184440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P11466942596975184440

namespace A251092

/-- `runs[p?[2*n+1]-2*n]` -/
def P11466942596975184440.Spec : Prop :=
  ∀ n, (P11466942596975184440.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P15859120988237396482

`runs[A074239(n)]`
-/

namespace A251092.P15859120988237396482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P15859120988237396482

namespace A251092

/-- `runs[A074239(n)]` -/
def P15859120988237396482.Spec : Prop :=
  ∀ n, (P15859120988237396482.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P9362082474615959964

`runs[A008507(n+1)]`
-/

namespace A251092.P9362082474615959964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P9362082474615959964

namespace A251092

/-- `runs[A008507(n+1)]` -/
def P9362082474615959964.Spec : Prop :=
  ∀ n, (P9362082474615959964.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P17041256528983505277

`runs[A177018(n+1)]`
-/

namespace A251092.P17041256528983505277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P17041256528983505277

namespace A251092

/-- `runs[A177018(n+1)]` -/
def P17041256528983505277.Spec : Prop :=
  ∀ n, (P17041256528983505277.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P2403926499001298331

`runs[A129768(n+2)]`
-/

namespace A251092.P2403926499001298331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P2403926499001298331

namespace A251092

/-- `runs[A129768(n+2)]` -/
def P2403926499001298331.Spec : Prop :=
  ∀ n, (P2403926499001298331.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P173809024566736460

`runs[A131733(n+2)]`
-/

namespace A251092.P173809024566736460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P173809024566736460

namespace A251092

/-- `runs[A131733(n+2)]` -/
def P173809024566736460.Spec : Prop :=
  ∀ n, (P173809024566736460.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P15973512851773996322

`runs[A173072(n+2)]`
-/

namespace A251092.P15973512851773996322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P15973512851773996322

namespace A251092

/-- `runs[A173072(n+2)]` -/
def P15973512851773996322.Spec : Prop :=
  ∀ n, (P15973512851773996322.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P11072842220190961574

`Δ[record[A062302(n+2)]]`
-/

namespace A251092.P11072842220190961574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251092.P11072842220190961574

namespace A251092

/-- `Δ[record[A062302(n+2)]]` -/
def P11072842220190961574.Spec : Prop :=
  ∀ n, P11072842220190961574.a n = A251092 (n + 1)

end A251092

/-! ## A251092.P14044591656852952556

`Δ[comp[A155752(n+1)]]`
-/

namespace A251092.P14044591656852952556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A251092.P14044591656852952556

namespace A251092

/-- `Δ[comp[A155752(n+1)]]` -/
def P14044591656852952556.Spec : Prop :=
  ∀ n, P14044591656852952556.a n = A251092 (n + 1)

end A251092

/-! ## A251092.P1514108330751555659

`runs[∑[A062047(n+1)]]`
-/

namespace A251092.P1514108330751555659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P1514108330751555659

namespace A251092

/-- `runs[∑[A062047(n+1)]]` -/
def P1514108330751555659.Spec : Prop :=
  ∀ n, (P1514108330751555659.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P8650161178120791392

`runs[∑[A100820(n+1)]]`
-/

namespace A251092.P8650161178120791392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P8650161178120791392

namespace A251092

/-- `runs[∑[A100820(n+1)]]` -/
def P8650161178120791392.Spec : Prop :=
  ∀ n, (P8650161178120791392.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P5758412085163255969

`runs[∑[A106002(n+1)]]`
-/

namespace A251092.P5758412085163255969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P5758412085163255969

namespace A251092

/-- `runs[∑[A106002(n+1)]]` -/
def P5758412085163255969.Spec : Prop :=
  ∀ n, (P5758412085163255969.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P2397622021242596020

`runs[∑[A345366(n+1)]]`
-/

namespace A251092.P2397622021242596020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345366 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P2397622021242596020

namespace A251092

/-- `runs[∑[A345366(n+1)]]` -/
def P2397622021242596020.Spec : Prop :=
  ∀ n, (P2397622021242596020.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P13395168419835609118

`runs[Δ[A108754(n+1)]]`
-/

namespace A251092.P13395168419835609118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P13395168419835609118

namespace A251092

/-- `runs[Δ[A108754(n+1)]]` -/
def P13395168419835609118.Spec : Prop :=
  ∀ n, (P13395168419835609118.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P59688020326057360

`runs[Δ[A135267(n+1)]]`
-/

namespace A251092.P59688020326057360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135267 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P59688020326057360

namespace A251092

/-- `runs[Δ[A135267(n+1)]]` -/
def P59688020326057360.Spec : Prop :=
  ∀ n, (P59688020326057360.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P12236344303392171337

`runs[fp[A008508(n+1)]]`
-/

namespace A251092.P12236344303392171337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P12236344303392171337

namespace A251092

/-- `runs[fp[A008508(n+1)]]` -/
def P12236344303392171337.Spec : Prop :=
  ∀ n, (P12236344303392171337.a n : ℤ) = A251092 (n + 1)

end A251092

/-! ## A251092.P10184513225157479240

`Δ[lt[1, A074927(n+1)]]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A251092

/-- `Δ[lt[1, A074927(n+1)]]` -/
def P10184513225157479240.Spec : Prop :=
  ∀ n, P10184513225157479240.a n = A251092 (n + 1)

theorem P10184513225157479240.correct : P10184513225157479240.Spec := by
  intro n
  simp only [A251092, Nat.add_sub_cancel]

end A251092

/-! ## A251092.P7505613336312580078

`Δ[lt[A062301(n+2), 1]]`
-/

namespace A251092.P7505613336312580078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A251092.P7505613336312580078

namespace A251092

/-- `Δ[lt[A062301(n+2), 1]]` -/
def P7505613336312580078.Spec : Prop :=
  ∀ n, P7505613336312580078.a n = A251092 (n + 1)

end A251092

/-! ## A251092.P15606046701495999078

`runs[A005097(n+1)-n]`
-/

namespace A251092.P15606046701495999078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A251092.P15606046701495999078

namespace A251092

/-- `runs[A005097(n+1)-n]` -/
def P15606046701495999078.Spec : Prop :=
  ∀ n, (P15606046701495999078.a n : ℤ) = A251092 (n + 1)

end A251092

/-!
# A251093: Number of (n+1)X(n+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251093, there is no canonical definition to state claims against.
-/

/-! ## A251093.P6844468977433958635

`A251100(∑[4*n]+1)`
-/

namespace A251093.P6844468977433958635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251093.P6844468977433958635

/-! ## A251093.P2017248028415551677

`record[A003982(n)*A251100(n+1)]`
-/

namespace A251093.P2017248028415551677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251093.P2017248028415551677

/-! ## A251093.P16554547037420431661

`record[gcd(A114327(n), A251100(n+1))]`
-/

namespace A251093.P16554547037420431661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251100 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251093.P16554547037420431661

/-!
# A251094: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251094, the canonical program `A251094.P4131407824883716382` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251094 has offset 1).

The definition of A251094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251094.P4131407824883716382

`ogf((41-75x+76x^2-24x^3)/(1-7x+11x^2-10x^3+3x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251094

/-- `ogf((41-75x+76x^2-24x^3)/(1-7x+11x^2-10x^3+3x^4))` -/
def P4131407824883716382.Spec : Prop :=
  ∀ n, P4131407824883716382.a n = A251094 (n + 1)

theorem P4131407824883716382.correct : P4131407824883716382.Spec := by
  intro n
  simp only [A251094, Nat.add_sub_cancel]

end A251094

/-! ## A251094.P17449547279842284482

`A251100(∑[n+1]+2)`
-/

namespace A251094.P17449547279842284482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251094.P17449547279842284482

namespace A251094

/-- `A251100(∑[n+1]+2)` -/
def P17449547279842284482.Spec : Prop :=
  ∀ n, P17449547279842284482.a n = A251094 (n + 1)

end A251094

/-! ## A251094.P11387236866548741845

`record[A251100(A008795(n)+2)]`
-/

namespace A251094.P11387236866548741845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251094.P11387236866548741845

namespace A251094

/-- `record[A251100(A008795(n)+2)]` -/
def P11387236866548741845.Spec : Prop :=
  ∀ n, P11387236866548741845.a n = A251094 (n + 1)

end A251094

/-! ## A251094.P14070077740686501203

`record[gcd(A221542(n+1), A251100(n+2))]`
-/

namespace A251094.P14070077740686501203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221542 (n + 1)) (A251100 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251094.P14070077740686501203

namespace A251094

/-- `record[gcd(A221542(n+1), A251100(n+2))]` -/
def P14070077740686501203.Spec : Prop :=
  ∀ n, (P14070077740686501203.a n : ℤ) = A251094 (n + 1)

end A251094

/-! ## A251094.P1376086244236657188

`record[A251100(abs(A201163(n)))]`
-/

namespace A251094.P1376086244236657188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251094.P1376086244236657188

namespace A251094

/-- `record[A251100(abs(A201163(n)))]` -/
def P1376086244236657188.Spec : Prop :=
  ∀ n, P1376086244236657188.a n = A251094 (n + 1)

end A251094

/-!
# A251095: Number of (n+1)X(3+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251095, there is no canonical definition to state claims against.
-/

/-! ## A251095.P11080699841861410205

`A251100(∑[n+2]+4)`
-/

namespace A251095.P11080699841861410205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251095.P11080699841861410205

/-! ## A251095.P4866804742393038825

`record[A251100(A008795(n)+3)]`
-/

namespace A251095.P4866804742393038825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251095.P4866804742393038825

/-!
# A251096: Number of (n+1)X(4+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251096, there is no canonical definition to state claims against.
-/

/-! ## A251096.P3813178753601960463

`A251100(A374004(n+1))`
-/

namespace A251096.P3813178753601960463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A374004 (n + 1)).toNat

end

end A251096.P3813178753601960463

/-! ## A251096.P7907419568567604732

`A251100(A141214(n+1))`
-/

namespace A251096.P7907419568567604732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A141214 (n + 1)).toNat

end

end A251096.P7907419568567604732

/-!
# A251097: Number of (n+1)X(5+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251097, there is no canonical definition to state claims against.
-/

/-! ## A251097.P12876665356270589073

`A251100(A374005(n+1))`
-/

namespace A251097.P12876665356270589073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A374005 (n + 1)).toNat

end

end A251097.P12876665356270589073

/-! ## A251097.P8080690736622637200

`A251100(Δ[A264443(n)])`
-/

namespace A251097.P8080690736622637200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (f1 (n + 1) - f1 n).toNat

end

end A251097.P8080690736622637200

/-!
# A251098: Number of (n+1)X(6+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251098, there is no canonical definition to state claims against.
-/

/-! ## A251098.P13943420221960759202

`A251100(A374007(n+1))`
-/

namespace A251098.P13943420221960759202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A374007 (n + 1)).toNat

end

end A251098.P13943420221960759202

/-!
# A251099: Number of (n+1)X(7+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251099, there is no canonical definition to state claims against.
-/

/-! ## A251099.P11340936621856931507

`A251100(A374008(n+1))`
-/

namespace A251099.P11340936621856931507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A374008 (n + 1)).toNat

end

end A251099.P11340936621856931507

