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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C047
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A116501: Numbers k such that the base-10 representation of k^2 has the structure dmdmd, where d is a single digit and m is a string of digits.

The programs for A116501, there is no canonical definition to state claims against.
-/

/-! ## A116501.P2076112084557292727

`sqrt(A116502(n+1))`
-/

namespace A116501.P2076112084557292727
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A116502 (n + 1) : ℝ)

end

end A116501.P2076112084557292727

/-!
# A116502: Squares with structure dmdmd, where d is a single digit and m a string of digits.

The programs for A116502, there is no canonical definition to state claims against.
-/

/-! ## A116502.P5039008815828219581

`A116501(n+1)²`
-/

namespace A116502.P5039008815828219581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116501 (n + 1) ^ 2

end

end A116502.P5039008815828219581

/-! ## A116502.P3812698155472439022

`A116501(n+1)^A010694(2*n)`
-/

namespace A116502.P3812698155472439022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116501 (n + 1) : ℚ) ^ (A010694 (2 * n) : ℤ)

end

end A116502.P3812698155472439022

/-! ## A116502.P3068258974019408408

`A069919(A002113(n+1)+1)`
-/

namespace A116502.P3068258974019408408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069919 (A002113 (n + 1) + 1).toNat

end

end A116502.P3068258974019408408

/-!
# A116504: Number of distinct prime divisors of the concatenation of n,...,1.

The programs for A116504, there is no canonical definition to state claims against.
-/

/-! ## A116504.P16375571406630471205

`A001222(A110757(n+1))%A022163(n)`
-/

namespace A116504.P16375571406630471205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A110757 (n + 1)).toNat) (A022163 n)

end

end A116504.P16375571406630471205

/-! ## A116504.P14460149756199413074

`A109129(A110757(n+1))%A110740(n+1)`
-/

namespace A116504.P14460149756199413074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109129 (A110757 (n + 1)).toNat) (A110740 (n + 1))

end

end A116504.P14460149756199413074

/-! ## A116504.P1632728522561112157

`A033265(A110757(n+1))%A219022(n+1)`
-/

namespace A116504.P1632728522561112157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033265 (A110757 (n + 1)).toNat) (A219022 (n + 1))

end

end A116504.P1632728522561112157

/-! ## A116504.P13694628408609631443

`A196067(A110757(n+1))`
-/

namespace A116504.P13694628408609631443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196067 (A110757 (n + 1)).toNat

end

end A116504.P13694628408609631443

/-!
# A116506: Number of singular n X n rational {0,1}-matrices with no zero rows.

The programs for A116506, there is no canonical definition to state claims against.
-/

/-! ## A116506.P16422727292871133809

`A055601(n+1)-A055165(n+1)`
-/

namespace A116506.P16422727292871133809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055601 (n + 1) - A055165 (n + 1)

end

end A116506.P16422727292871133809

/-! ## A116506.P13514771955974427363

`A046747(n+1)-(2^(n+1)²-∑[2^n]^(n+1))`
-/

namespace A116506.P13514771955974427363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046747 (n + 1) - ((2 ^ (n + 1) ^ 2 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1) : ℕ) : ℤ))

end

end A116506.P13514771955974427363

/-! ## A116506.P9346217042696605454

`abs(A005019(n+1)-A046747(n+1))`
-/

namespace A116506.P9346217042696605454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005019 (n + 1) - A046747 (n + 1)|

end

end A116506.P9346217042696605454

/-! ## A116506.P3500055542432325434

`record[A089478(n+1)]-A005019(n+1)`
-/

namespace A116506.P3500055542432325434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005019 (n + 1)

end

end A116506.P3500055542432325434

/-!
# A116507: Number of singular n X n rational {0,1}-matrices with no zero rows or columns.

The programs for A116507, there is no canonical definition to state claims against.
-/

/-! ## A116507.P10022032617349574736

`A048291(n+1)-A055165(n+1)`
-/

namespace A116507.P10022032617349574736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048291 (n + 1) - A055165 (n + 1)

end

end A116507.P10022032617349574736

/-! ## A116507.P4169269929181743333

`A046747(n+1)-A300757(n+1)`
-/

namespace A116507.P4169269929181743333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046747 (n + 1) - A300757 (n + 1)

end

end A116507.P4169269929181743333

/-! ## A116507.P3608454824273136125

`A048291(n+1)-(n+1)!*A088389(n+1)`
-/

namespace A116507.P3608454824273136125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048291 (n + 1) - (Nat.factorial (n + 1) : ℤ) * A088389 (n + 1)

end

end A116507.P3608454824273136125

/-! ## A116507.P5554686878352150870

`A048291(A005555(n))%A055165(n+1)`
-/

namespace A116507.P5554686878352150870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048291 (A005555 n).toNat) (A055165 (n + 1))

end

end A116507.P5554686878352150870

/-!
# A116508: a(n) = C( C(n,2), n).

The programs for A116508, the canonical program `A116508.P14456076488270921539` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116508 has offset 0).

The definition of A116508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n, 2), n)` (program `A116508.P14456076488270921539`, by `A116508.P14456076488270921539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116508.P14456076488270921539

`C(C(n, 2), n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116508

/-- `C(C(n, 2), n)` -/
def P14456076488270921539.Spec : Prop :=
  ∀ n, (P14456076488270921539.a n : ℤ) = A116508 n

theorem P14456076488270921539.correct : P14456076488270921539.Spec := by
  intro n
  simp only [A116508]

end A116508

/-! ## A116508.P13628403357513750308

`C(A161680(n), n)`
-/

namespace A116508.P13628403357513750308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161680 n).toNat n

end

end A116508.P13628403357513750308

namespace A116508

/-- `C(A161680(n), n)` -/
def P13628403357513750308.Spec : Prop :=
  ∀ n, (P13628403357513750308.a n : ℤ) = A116508 n

end A116508

/-! ## A116508.P14706084630938247670

`A368928(∑[n])`
-/

namespace A116508.P14706084630938247670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368928 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116508.P14706084630938247670

namespace A116508

/-- `A368928(∑[n])` -/
def P14706084630938247670.Spec : Prop :=
  ∀ n, P14706084630938247670.a n = A116508 n

end A116508

/-! ## A116508.P432358271188014596

`A071919(A037255(n)+1)`
-/

namespace A116508.P432358271188014596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A037255 n + 1).toNat

end

end A116508.P432358271188014596

namespace A116508

/-- `A071919(A037255(n)+1)` -/
def P432358271188014596.Spec : Prop :=
  ∀ n, P432358271188014596.a n = A116508 n

end A116508

/-! ## A116508.P12511171740345665910

`A320508(A037255(n+1))`
-/

namespace A116508.P12511171740345665910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320508 (A037255 (n + 1)).toNat

end

end A116508.P12511171740345665910

namespace A116508

/-- `A320508(A037255(n+1))` -/
def P12511171740345665910.Spec : Prop :=
  ∀ n, P12511171740345665910.a n = A116508 n

end A116508

/-!
# A116509: Values of c in a^2 + b^2 = c^2 where b - a = 31 and gcd(a,b)=1.

The programs for A116509, the canonical program `A116509.P12419586526219497644` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116509 has offset 1).

The definition of A116509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116509.P12419586526219497644

`6*a(n-2)-a(n-4)` with `a(0)=41, a(1)=109, a(2)=221, a(3)=629`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116509

/-- `6*a(n-2)-a(n-4)` -/
def P12419586526219497644.Spec : Prop :=
  ∀ n, P12419586526219497644.a n = A116509 (n + 1)

theorem P12419586526219497644.correct : P12419586526219497644.Spec := by
  intro n
  simp only [A116509, Nat.add_sub_cancel]

end A116509

/-! ## A116509.P16362388600168857276

`A157646(A032766(n+2))`
-/

namespace A116509.P16362388600168857276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157646 (A032766 (n + 2)).toNat

end

end A116509.P16362388600168857276

namespace A116509

/-- `A157646(A032766(n+2))` -/
def P16362388600168857276.Spec : Prop :=
  ∀ n, P16362388600168857276.a n = A116509 (n + 1)

end A116509

/-! ## A116509.P18297488091544857102

`A157646(∑[A084642(n+1)])`
-/

namespace A116509.P18297488091544857102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157646 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116509.P18297488091544857102

namespace A116509

/-- `A157646(∑[A084642(n+1)])` -/
def P18297488091544857102.Spec : Prop :=
  ∀ n, P18297488091544857102.a n = A116509 (n + 1)

end A116509

/-! ## A116509.P1479037805799789969

`A157646(A001651(n+1)+2)`
-/

namespace A116509.P1479037805799789969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157646 (A001651 (n + 1) + 2).toNat

end

end A116509.P1479037805799789969

namespace A116509

/-- `A157646(A001651(n+1)+2)` -/
def P1479037805799789969.Spec : Prop :=
  ∀ n, P1479037805799789969.a n = A116509 (n + 1)

end A116509

/-! ## A116509.P12528948260281489518

`A157646(A066530(2*n)+2)`
-/

namespace A116509.P12528948260281489518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157646 (A066530 (2 * n) + 2).toNat

end

end A116509.P12528948260281489518

namespace A116509

/-- `A157646(A066530(2*n)+2)` -/
def P12528948260281489518.Spec : Prop :=
  ∀ n, P12528948260281489518.a n = A116509 (n + 1)

end A116509

/-! ## A116509.P12531865984813571815

`A157646(A004526(3*(n+2)))`
-/

namespace A116509.P12531865984813571815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157646 (A004526 (3 * (n + 2))).toNat

end

end A116509.P12531865984813571815

namespace A116509

/-- `A157646(A004526(3*(n+2)))` -/
def P12531865984813571815.Spec : Prop :=
  ∀ n, P12531865984813571815.a n = A116509 (n + 1)

end A116509

/-!
# A116510: a(0)=1. a(m +2^n) = a(m) - a(n), 0 <= m <= 2^n -1.

The programs for A116510, the canonical program `A116510.P17294935495488998451` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116510 has offset 0).

The definition of A116510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116510.P17294935495488998451

`a(and(n, n-1))-a(val(n, 2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116510

/-- `a(and(n, n-1))-a(val(n, 2))` -/
def P17294935495488998451.Spec : Prop :=
  ∀ n, P17294935495488998451.a n = A116510 n

theorem P17294935495488998451.correct : P17294935495488998451.Spec := by
  intro n
  simp only [A116510]

end A116510

/-! ## A116510.P14140265070055917883

`A083905(or(90, n))`
-/

namespace A116510.P14140265070055917883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083905 (Nat.lor 90 n)

end

end A116510.P14140265070055917883

namespace A116510

/-- `A083905(or(90, n))` -/
def P14140265070055917883.Spec : Prop :=
  ∀ n, P14140265070055917883.a n = A116510 n

end A116510

/-! ## A116510.P14488641864495233698

`a(and(n, n-1))-a(A001511(n)-1)` with `a(0)=1`
-/

namespace A116510.P14488641864495233698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - a (A001511 n - 1).toNat

end

end A116510.P14488641864495233698

namespace A116510

/-- `a(and(n, n-1))-a(A001511(n)-1)` -/
def P14488641864495233698.Spec : Prop :=
  ∀ n, P14488641864495233698.a n = A116510 n

end A116510

/-! ## A116510.P2703918211674310869

`A293899(A017329(or(90, n)))`
-/

namespace A116510.P2703918211674310869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293899 (A017329 (Nat.lor 90 n)).toNat

end

end A116510.P2703918211674310869

namespace A116510

/-- `A293899(A017329(or(90, n)))` -/
def P2703918211674310869.Spec : Prop :=
  ∀ n, P2703918211674310869.a n = A116510 n

end A116510

/-! ## A116510.P3082197657848030030

`a(A129760(n))-a(A007814(n))` with `a(0)=1`
-/

namespace A116510.P3082197657848030030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A129760 n).toNat - a (A007814 n).toNat

end

end A116510.P3082197657848030030

namespace A116510

/-- `a(A129760(n))-a(A007814(n))` -/
def P3082197657848030030.Spec : Prop :=
  ∀ n, P3082197657848030030.a n = A116510 n

end A116510

/-! ## A116510.P5011698860940321646

`A065359(and(2*n+1, A318961(n+2)))`
-/

namespace A116510.P5011698860940321646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (Int.land (2 * n + 1 : ℤ) (A318961 (n + 2))).toNat

end

end A116510.P5011698860940321646

namespace A116510

/-- `A065359(and(2*n+1, A318961(n+2)))` -/
def P5011698860940321646.Spec : Prop :=
  ∀ n, P5011698860940321646.a n = A116510 n

end A116510

/-! ## A116510.P14950627619331924571

`A116549(n)-2*A106486(n)`
-/

namespace A116510.P14950627619331924571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116549 n - 2 * A106486 n

end

end A116510.P14950627619331924571

namespace A116510

/-- `A116549(n)-2*A106486(n)` -/
def P14950627619331924571.Spec : Prop :=
  ∀ n, P14950627619331924571.a n = A116510 n

end A116510

/-! ## A116510.P9959002077412774999

`A116549(n)-A005843(A106486(n))`
-/

namespace A116510.P9959002077412774999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116549 n - A005843 (A106486 n).toNat

end

end A116510.P9959002077412774999

namespace A116510

/-- `A116549(n)-A005843(A106486(n))` -/
def P9959002077412774999.Spec : Prop :=
  ∀ n, P9959002077412774999.a n = A116510 n

end A116510

/-!
# A116511: Table T(n,k) = number of strictly increasing addition chains of length n whose final value is k.

The programs for A116511, there is no canonical definition to state claims against.
-/

/-! ## A116511.P17002312666630645162

`A221169(A350795(n+1)²)`
-/

namespace A116511.P17002312666630645162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221169 (A350795 (n + 1) ^ 2).toNat

end

end A116511.P17002312666630645162

/-! ## A116511.P17920796047772041155

`A287401(2^A350795(n+1))`
-/

namespace A116511.P17920796047772041155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A350795 (n + 1) : ℤ))).toNat

end

end A116511.P17920796047772041155

/-! ## A116511.P13977392250088430565

`A014081(3^A350795(n+1))`
-/

namespace A116511.P13977392250088430565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A350795 (n + 1) : ℤ))).toNat

end

end A116511.P13977392250088430565

/-! ## A116511.P12449652238850507538

`A196564(A350795(n+1)^A060715(n+1))`
-/

namespace A116511.P12449652238850507538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (SequenceMachineLib.roundAway ((A350795 (n + 1) : ℚ) ^ (A060715 (n + 1) : ℤ))).toNat

end

end A116511.P12449652238850507538

/-! ## A116511.P13564961863195516397

`A348295(A350795(n+1))^A069777(n+3)`
-/

namespace A116511.P13564961863195516397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348295 (A350795 (n + 1)).toNat : ℚ) ^ (A069777 (n + 3) : ℤ)

end

end A116511.P13564961863195516397

/-!
# A116512: a(n) is the number of positive integers each of which is <= n and is divisible by exactly one prime dividing n (but is coprime to every other prime dividing n). a(1) = 0.

The programs for A116512, the canonical program `A116512.P6536236625485529646` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116512 has offset 1).

The definition of A116512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116512.P8000531477083028198

`A131233(n+1)-A000010(n+1)`
-/

namespace A116512.P8000531477083028198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131233 (n + 1) - A000010 (n + 1)

end

end A116512.P8000531477083028198

namespace A116512

/-- `A131233(n+1)-A000010(n+1)` -/
def P8000531477083028198.Spec : Prop :=
  ∀ n, P8000531477083028198.a n = A116512 (n + 1)

theorem P8000531477083028198.correct : P8000531477083028198.Spec := by
  intro n
  simp only [A116512, Nat.add_sub_cancel, A116512.P8000531477083028198.a, A116512.P6536236625485529646.f1, A116512.P6536236625485529646.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A095112, A095112.P8729457893508808626.f1, A095112.P8729457893508808626.a, A131233, A131233.P6976848366218910666.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116512

/-! ## A116512.P9855773679599806537

`A122411(n+1)-A390608(n+1)`
-/

namespace A116512.P9855773679599806537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122411 (n + 1) - A390608 (n + 1)

end

end A116512.P9855773679599806537

namespace A116512

/-- `A122411(n+1)-A390608(n+1)` -/
def P9855773679599806537.Spec : Prop :=
  ∀ n, P9855773679599806537.a n = A116512 (n + 1)

theorem P9855773679599806537.correct : P9855773679599806537.Spec := by
  intro n
  simp only [A116512, Nat.add_sub_cancel, A116512.P9855773679599806537.a, A116512.P6536236625485529646.f1, A116512.P6536236625485529646.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A095112, A095112.P8729457893508808626.f1, A095112.P8729457893508808626.a, A122411, A122411.P10607431199644283672.a, A390608, A390608.P15575497196567576275.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116512

/-! ## A116512.P6536236625485529646

`∑{d}[n+1, A008683(#)*A095112((n+1)/#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A116512

/-- `∑{d}[n+1, A008683(#)*A095112((n+1)/#)]` -/
def P6536236625485529646.Spec : Prop :=
  ∀ n, P6536236625485529646.a n = A116512 (n + 1)

theorem P6536236625485529646.correct : P6536236625485529646.Spec := by
  intro n
  simp only [A116512, Nat.add_sub_cancel]

end A116512

/-! ## A116512.P17099350929491512600

`-∑{d}[n+1, (n+1)/#*A008683(#)*A001221(#)]`
-/

namespace A116512.P17099350929491512600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) * (A001221 d : ℚ))

end

end A116512.P17099350929491512600

namespace A116512

/-- `-∑{d}[n+1, (n+1)/#*A008683(#)*A001221(#)]` -/
def P17099350929491512600.Spec : Prop :=
  ∀ n, P17099350929491512600.a n = (A116512 (n + 1) : ℚ)

end A116512

/-! ## A116512.P9497771915357464457

`∑{p}[n+1, A000010(n+1)/A000010(#)]`
-/

namespace A116512.P9497771915357464457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A000010 (n + 1) : ℚ) / (A000010 p : ℚ)

end

end A116512.P9497771915357464457

namespace A116512

/-- `∑{p}[n+1, A000010(n+1)/A000010(#)]` -/
def P9497771915357464457.Spec : Prop :=
  ∀ n, P9497771915357464457.a n = (A116512 (n + 1) : ℚ)

end A116512

/-! ## A116512.P13906908477700417415

`∑{d}[n+1, A001222(#)*A007431((n+1)/#)]`
-/

namespace A116512.P13906908477700417415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116512.P13906908477700417415

namespace A116512

/-- `∑{d}[n+1, A001222(#)*A007431((n+1)/#)]` -/
def P13906908477700417415.Spec : Prop :=
  ∀ n, P13906908477700417415.a n = A116512 (n + 1)

end A116512

/-! ## A116512.P16848139950277257872

`∑{d}[n+1, A000010(#)*A069513((n+1)/#)]`
-/

namespace A116512.P16848139950277257872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116512.P16848139950277257872

namespace A116512

/-- `∑{d}[n+1, A000010(#)*A069513((n+1)/#)]` -/
def P16848139950277257872.Spec : Prop :=
  ∀ n, P16848139950277257872.a n = A116512 (n + 1)

end A116512

/-! ## A116512.P14938721111606243615

`∑{d}[n+1, A007432(#)*A069264((n+1)/#)]`
-/

namespace A116512.P14938721111606243615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A069264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116512.P14938721111606243615

namespace A116512

/-- `∑{d}[n+1, A007432(#)*A069264((n+1)/#)]` -/
def P14938721111606243615.Spec : Prop :=
  ∀ n, P14938721111606243615.a n = A116512 (n + 1)

end A116512

/-! ## A116512.P622670891259257619

`∑{d}[n+1, A007427(#)*A329347((n+1)/#)]`
-/

namespace A116512.P622670891259257619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A329347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116512.P622670891259257619

namespace A116512

/-- `∑{d}[n+1, A007427(#)*A329347((n+1)/#)]` -/
def P622670891259257619.Spec : Prop :=
  ∀ n, P622670891259257619.a n = A116512 (n + 1)

end A116512

/-! ## A116512.P12327656857723899263

`∑{d}[n+1, A322664(#)*A328502((n+1)/#)]`
-/

namespace A116512.P12327656857723899263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322664 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116512.P12327656857723899263

namespace A116512

/-- `∑{d}[n+1, A322664(#)*A328502((n+1)/#)]` -/
def P12327656857723899263.Spec : Prop :=
  ∀ n, P12327656857723899263.a n = A116512 (n + 1)

end A116512

/-! ## A116512.P14833577499989446637

`A003557(n+1)*A347395(A007947(n+1))`
-/

namespace A116512.P14833577499989446637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A347395 (A007947 (n + 1)).toNat

end

end A116512.P14833577499989446637

namespace A116512

/-- `A003557(n+1)*A347395(A007947(n+1))` -/
def P14833577499989446637.Spec : Prop :=
  ∀ n, P14833577499989446637.a n = A116512 (n + 1)

end A116512

/-! ## A116512.P12305295417879531362

`A117494(n+1)+A131233(n+1)-A349338(n+1)`
-/

namespace A116512.P12305295417879531362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (n + 1) + (A131233 (n + 1) - A349338 (n + 1))

end

end A116512.P12305295417879531362

namespace A116512

/-- `A117494(n+1)+A131233(n+1)-A349338(n+1)` -/
def P12305295417879531362.Spec : Prop :=
  ∀ n, P12305295417879531362.a n = A116512 (n + 1)

theorem P12305295417879531362.correct : P12305295417879531362.Spec := by
  intro n
  simp only [A116512, Nat.add_sub_cancel, A116512.P12305295417879531362.a, A116512.P6536236625485529646.f1, A116512.P6536236625485529646.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A095112, A095112.P8729457893508808626.f1, A095112.P8729457893508808626.a, A117494, A117494.P1126005537575162480.f1, A117494.P1126005537575162480.a, A131233, A131233.P6976848366218910666.a, A349338, A349338.P1568544451792940700.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116512

/-! ## A116512.P14298881159226698018

`∑{#}[n, A069513(gcd(#+1, n+1))]`
-/

namespace A116512.P14298881159226698018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A069513 (Nat.gcd (k + 1) (n + 1))

end

end A116512.P14298881159226698018

namespace A116512

/-- `∑{#}[n, A069513(gcd(#+1, n+1))]` -/
def P14298881159226698018.Spec : Prop :=
  ∀ n, P14298881159226698018.a n = A116512 (n + 1)

end A116512

/-!
# A116513: Number of distinct hexagons of n points chosen from triangular lattice A_2 with sides parallel to the principal axes of that lattice. Degenerate sides (of length 1) are permitted.

The programs for A116513, there is no canonical definition to state claims against.
-/

/-! ## A116513.P18287102111547747249

`A096004(8*n+6)-A096004(4*n+3)`
-/

namespace A116513.P18287102111547747249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096004 (8 * n + 6) - A096004 (4 * n + 3)

end

end A116513.P18287102111547747249

/-! ## A116513.P3208178309452222162

`A178487(A297002((n+1)²))`
-/

namespace A116513.P3208178309452222162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A297002 ((n + 1) ^ 2)).toNat

end

end A116513.P3208178309452222162

/-! ## A116513.P20192815802211751

`A357186(xor(A122129(n+1), A239501(n+1)))`
-/

namespace A116513.P20192815802211751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (Int.xor (A122129 (n + 1)) (A239501 (n + 1))).toNat

end

end A116513.P20192815802211751

/-! ## A116513.P4720623940069802108

`A000196(A378547(2*(n+1))%A141214(2*(n+1)))`
-/

namespace A116513.P4720623940069802108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A378547 (2 * (n + 1))) (A141214 (2 * (n + 1)))).toNat

end

end A116513.P4720623940069802108

/-! ## A116513.P1944159111920466831

`A000196(A378547(2*(n+1)))%A377041(2*(n+2))`
-/

namespace A116513.P1944159111920466831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A378547 (2 * (n + 1))).toNat) (A377041 (2 * (n + 2)))

end

end A116513.P1944159111920466831

/-!
# A116514: a(1) = 1; thereafter a(n) = (p - (5|p)) divided by the smallest m such that p divides Fibonacci(m), where p is the n-th prime and (5|p) is the Legendre symbol.

The programs for A116514, there is no canonical definition to state claims against.
-/

/-! ## A116514.P9408019526550387851

`ceil(A006093(n+1)/A001602(n+1))`
-/

namespace A116514.P9408019526550387851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006093 (n + 1) : ℚ) / (A001602 (n + 1) : ℚ)⌉

end

end A116514.P9408019526550387851

/-! ## A116514.P13761899823450416340

`ceil(A008578(n+1)/A001602(n+1))`
-/

namespace A116514.P13761899823450416340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008578 (n + 1) : ℚ) / (A001602 (n + 1) : ℚ)⌉

end

end A116514.P13761899823450416340

/-! ## A116514.P3434896942582968324

`ceil(A112925(n+1)/A001602(n+1))`
-/

namespace A116514.P3434896942582968324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112925 (n + 1) : ℚ) / (A001602 (n + 1) : ℚ)⌉

end

end A116514.P3434896942582968324

/-! ## A116514.P4867444314675111189

`round(A000040(n+1)/A001602(n+1))`
-/

namespace A116514.P4867444314675111189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / (A001602 (n + 1) : ℚ))

end

end A116514.P4867444314675111189

/-! ## A116514.P3943761932708387632

`floor(A000040(n+2)/A001602(n+1))`
-/

namespace A116514.P3943761932708387632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / (A001602 (n + 1) : ℚ)⌋

end

end A116514.P3943761932708387632

/-! ## A116514.P13247414113890283263

`floor(A046022(n+4)/A001602(n+1))`
-/

namespace A116514.P13247414113890283263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046022 (n + 4) : ℚ) / (A001602 (n + 1) : ℚ)⌋

end

end A116514.P13247414113890283263

/-! ## A116514.P16505277971487896726

`ceil(record[A020639(n+1)]/A001602(n+1))`
-/

namespace A116514.P16505277971487896726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A001602 (n + 1) : ℚ)⌉

end

end A116514.P16505277971487896726

/-! ## A116514.P13177705767913782851

`ceil(record[A000010(n+1)]/A001602(n+1))`
-/

namespace A116514.P13177705767913782851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A001602 (n + 1) : ℚ)⌉

end

end A116514.P13177705767913782851

/-! ## A116514.P2048894029964236484

`ceil(record[A014963(n+1)]/A001602(n+1))`
-/

namespace A116514.P2048894029964236484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A001602 (n + 1) : ℚ)⌉

end

end A116514.P2048894029964236484

/-!
# A116515: a(n) = the period of the Fibonacci numbers modulo p divided by the smallest m such that p divides Fibonacci(m), where p is the n-th prime.

The programs for A116515, there is no canonical definition to state claims against.
-/

/-! ## A116515.P8525336840918949964

`A060305(n+1)/A001602(n+1)`
-/

namespace A116515.P8525336840918949964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060305 (n + 1) : ℚ) / (A001602 (n + 1) : ℚ)

end

end A116515.P8525336840918949964

/-! ## A116515.P7479175528608180720

`A001176(A000040(n+1))`
-/

namespace A116515.P7479175528608180720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A000040 (n + 1)).toNat

end

end A116515.P7479175528608180720

/-! ## A116515.P8105907178861313456

`A060305(n+1)/gcd(A060305(n+1), A264008(n+1))`
-/

namespace A116515.P8105907178861313456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060305 (n + 1) : ℚ) / (Int.gcd (A060305 (n + 1)) (A264008 (n + 1)) : ℚ)

end

end A116515.P8105907178861313456

/-! ## A116515.P4773664645684033104

`A343116(n+1)/A264008(n+1)`
-/

namespace A116515.P4773664645684033104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343116 (n + 1) : ℚ) / (A264008 (n + 1) : ℚ)

end

end A116515.P4773664645684033104

/-! ## A116515.P223861997533107084

`A001176(Δ[A007504(n)])`
-/

namespace A116515.P223861997533107084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (f1 (n + 1) - f1 n).toNat

end

end A116515.P223861997533107084

/-! ## A116515.P4986704928392779611

`A001176(record[A051698(n)])`
-/

namespace A116515.P4986704928392779611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116515.P4986704928392779611

/-! ## A116515.P12059043741804621854

`A001176(A006005(n+1))`
-/

namespace A116515.P12059043741804621854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A006005 (n + 1)).toNat

end

end A116515.P12059043741804621854

/-! ## A116515.P4394685399578619330

`A001176(A008578(n+2))`
-/

namespace A116515.P4394685399578619330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A008578 (n + 2)).toNat

end

end A116515.P4394685399578619330

/-! ## A116515.P14770215391342242659

`A001176(A075643(n+2))`
-/

namespace A116515.P14770215391342242659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A075643 (n + 2)).toNat

end

end A116515.P14770215391342242659

/-! ## A116515.P3569620870514310936

`A001176(A182986(n+2))`
-/

namespace A116515.P3569620870514310936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A182986 (n + 2)).toNat

end

end A116515.P3569620870514310936

/-! ## A116515.P12150810153410918462

`A001176(eq[1, A032741(n)])`
-/

namespace A116515.P12150810153410918462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116515.P12150810153410918462

/-! ## A116515.P6587228333719292584

`A001176(record[A006530(n+2)])`
-/

namespace A116515.P6587228333719292584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116515.P6587228333719292584

/-! ## A116515.P9628070680057184158

`A001176(record[A014963(n+2)])`
-/

namespace A116515.P9628070680057184158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116515.P9628070680057184158

/-! ## A116515.P5863285480043503189

`A001176(record[A020639(n+2)])`
-/

namespace A116515.P5863285480043503189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116515.P5863285480043503189

/-! ## A116515.P7130740461320039810

`A001176(A100484(n+1)/2)`
-/

namespace A116515.P7130740461320039810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A116515.P7130740461320039810

/-! ## A116515.P12587680177470440159

`A001176(A001747(n+2)/2)`
-/

namespace A116515.P12587680177470440159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A116515.P12587680177470440159

/-! ## A116515.P7204721605639825512

`A001176(A077017(n+2)/2)`
-/

namespace A116515.P7204721605639825512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (SequenceMachineLib.roundAway ((A077017 (n + 2) : ℚ) / 2)).toNat

end

end A116515.P7204721605639825512

/-! ## A116515.P13321813184839890230

`A001176(record[A000010(n+1)+1])`
-/

namespace A116515.P13321813184839890230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116515.P13321813184839890230

/-! ## A116515.P7727140650577441674

`A001176(eq[2, A000005(n+1)]+1)`
-/

namespace A116515.P7727140650577441674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A116515.P7727140650577441674

/-! ## A116515.P161162272699172533

`A001176(A137751(n+1)+A137750(n+1))`
-/

namespace A116515.P161162272699172533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A137751 (n + 1) + A137750 (n + 1)).toNat

end

end A116515.P161162272699172533

/-!
# A116519: Primes which stay prime when the end digits (on both sides) are repeated once.

The programs for A116519, there is no canonical definition to state claims against.
-/

/-! ## A116519.P2264783880693850990

`A154386(eq[A031131(n+1), A110654(n)])`
-/

namespace A116519.P2264783880693850990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154386 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A116519.P2264783880693850990

/-!
# A116520: a(0) = 0, a(1) = 1; a(n) = max { 4*a(k) + a(n-k) | 1 <= k <= n/2 }, for n > 1.

The programs for A116520, the canonical program `A116520.P853808393403472097` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116520 has offset 0).

The definition of A116520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116520.P10173859019767809915

`∑[(Δ[n²]-A267582(n))²]`
-/

namespace A116520.P10173859019767809915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267582 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116520.P10173859019767809915

namespace A116520

/-- `∑[(Δ[n²]-A267582(n))²]` -/
def P10173859019767809915.Spec : Prop :=
  ∀ n, P10173859019767809915.a n = A116520 n

end A116520

/-! ## A116520.P6361500471976229769

`∑[(1-A261366(n)+n)²]-1`
-/

namespace A116520.P6361500471976229769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A261366 n + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116520.P6361500471976229769

namespace A116520

/-- `∑[(1-A261366(n)+n)²]-1` -/
def P6361500471976229769.Spec : Prop :=
  ∀ n, P6361500471976229769.a n = A116520 n

end A116520

/-! ## A116520.P853808393403472097

`a(n-1)+A001316(n-1)²` with `a(0)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116520

/-- `a(n-1)+A001316(n-1)²` -/
def P853808393403472097.Spec : Prop :=
  ∀ n, P853808393403472097.a n = A116520 n

theorem P853808393403472097.correct : P853808393403472097.Spec := by
  intro n
  simp only [A116520]

end A116520

/-! ## A116520.P4442312420267388730

`∑[A102376(n)]-A102376(n)`
-/

namespace A116520.P4442312420267388730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102376 n

end

end A116520.P4442312420267388730

namespace A116520

/-- `∑[A102376(n)]-A102376(n)` -/
def P4442312420267388730.Spec : Prop :=
  ∀ n, P4442312420267388730.a n = A116520 n

end A116520

/-! ## A116520.P3218908052414718540

`∑[A000010(A131136(n))²]-1`
-/

namespace A116520.P3218908052414718540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A131136 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116520.P3218908052414718540

namespace A116520

/-- `∑[A000010(A131136(n))²]-1` -/
def P3218908052414718540.Spec : Prop :=
  ∀ n, P3218908052414718540.a n = A116520 n

end A116520

/-! ## A116520.P2420625067764453614

`∑[(A001316(n)-A105321(n))²]`
-/

namespace A116520.P2420625067764453614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001316 n - A105321 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116520.P2420625067764453614

namespace A116520

/-- `∑[(A001316(n)-A105321(n))²]` -/
def P2420625067764453614.Spec : Prop :=
  ∀ n, P2420625067764453614.a n = A116520 n

end A116520

/-! ## A116520.P2689444933655806341

`∑[4^A000120(n)]-4^A000120(n)`
-/

namespace A116520.P2689444933655806341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (4 : ℚ) ^ (A000120 n : ℤ)

end

end A116520.P2689444933655806341

namespace A116520

/-- `∑[4^A000120(n)]-4^A000120(n)` -/
def P2689444933655806341.Spec : Prop :=
  ∀ n, P2689444933655806341.a n = (A116520 n : ℚ)

end A116520

/-! ## A116520.P5484613948756887472

`∑[A000695(A105321(n)-A001316(n))]`
-/

namespace A116520.P5484613948756887472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A105321 n - A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116520.P5484613948756887472

namespace A116520

/-- `∑[A000695(A105321(n)-A001316(n))]` -/
def P5484613948756887472.Spec : Prop :=
  ∀ n, P5484613948756887472.a n = A116520 n

end A116520

/-! ## A116520.P7781467546133273686

`∑[A002620(A131136(n))]`
-/

namespace A116520.P7781467546133273686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A131136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116520.P7781467546133273686

namespace A116520

/-- `∑[A002620(A131136(n))]` -/
def P7781467546133273686.Spec : Prop :=
  ∀ n, P7781467546133273686.a n = A116520 n

end A116520

/-! ## A116520.P1707785994785135092

`∑[A173531(2*n+1)]-A173531(2*n+1)`
-/

namespace A116520.P1707785994785135092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A173531 (2 * n + 1)

end

end A116520.P1707785994785135092

namespace A116520

/-- `∑[A173531(2*n+1)]-A173531(2*n+1)` -/
def P1707785994785135092.Spec : Prop :=
  ∀ n, P1707785994785135092.a n = A116520 n

end A116520

/-! ## A116520.P7515877747497755515

`∑[A177241(n)]`
-/

namespace A116520.P7515877747497755515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116520.P7515877747497755515

namespace A116520

/-- `∑[A177241(n)]` -/
def P7515877747497755515.Spec : Prop :=
  ∀ n, P7515877747497755515.a n = A116520 n

end A116520

/-! ## A116520.P4734262637621354899

`∑[A213178(2*n)]-A213178(2*n)`
-/

namespace A116520.P4734262637621354899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213178 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A213178 (2 * n)

end

end A116520.P4734262637621354899

namespace A116520

/-- `∑[A213178(2*n)]-A213178(2*n)` -/
def P4734262637621354899.Spec : Prop :=
  ∀ n, P4734262637621354899.a n = A116520 n

end A116520

/-! ## A116520.P12184508878892578539

`∑[A151783(2*n+1)]-A151783(2*n+1)`
-/

namespace A116520.P12184508878892578539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151783 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151783 (2 * n + 1)

end

end A116520.P12184508878892578539

namespace A116520

/-- `∑[A151783(2*n+1)]-A151783(2*n+1)` -/
def P12184508878892578539.Spec : Prop :=
  ∀ n, P12184508878892578539.a n = A116520 n

end A116520

/-! ## A116520.P10153656799903691197

`∑[A164032(2*n+1)]-A164032(2*n+1)`
-/

namespace A116520.P10153656799903691197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164032 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A164032 (2 * n + 1)

end

end A116520.P10153656799903691197

namespace A116520

/-- `∑[A164032(2*n+1)]-A164032(2*n+1)` -/
def P10153656799903691197.Spec : Prop :=
  ∀ n, P10153656799903691197.a n = A116520 n

end A116520

/-! ## A116520.P2288760030121799452

`∑[A008217(A131136(2*n))]`
-/

namespace A116520.P2288760030121799452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A131136 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116520.P2288760030121799452

namespace A116520

/-- `∑[A008217(A131136(2*n))]` -/
def P2288760030121799452.Spec : Prop :=
  ∀ n, P2288760030121799452.a n = A116520 n

end A116520

/-! ## A116520.P18286607932577587451

`∑[A269695(2*n)]-A269695(2*n)`
-/

namespace A116520.P18286607932577587451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A269695 (2 * n)

end

end A116520.P18286607932577587451

namespace A116520

/-- `∑[A269695(2*n)]-A269695(2*n)` -/
def P18286607932577587451.Spec : Prop :=
  ∀ n, P18286607932577587451.a n = A116520 n

end A116520

/-! ## A116520.P10244950396825737683

`∑[A064727(A131136(n)²)²]`
-/

namespace A116520.P10244950396825737683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A131136 n ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116520.P10244950396825737683

namespace A116520

/-- `∑[A064727(A131136(n)²)²]` -/
def P10244950396825737683.Spec : Prop :=
  ∀ n, P10244950396825737683.a n = A116520 n

end A116520

/-!
# A116521: Binomial transform of tetranacci sequence A000078.

The programs for A116521, the canonical program `A116521.P13570070053386535934` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116521 has offset 0).

The definition of A116521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116521.P16499988616709920712

`ogf(x^3/(1-5x+8x^2-6x^3+x^4))`
-/

namespace A116521.P16499988616709920712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -5, 8, -6, 1] n

end

end A116521.P16499988616709920712

namespace A116521

/-- `ogf(x^3/(1-5x+8x^2-6x^3+x^4))` -/
def P16499988616709920712.Spec : Prop :=
  ∀ n, P16499988616709920712.a n = A116521 n

end A116521

/-! ## A116521.P13570070053386535934

`5*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116521

/-- `5*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` -/
def P13570070053386535934.Spec : Prop :=
  ∀ n, P13570070053386535934.a n = A116521 n

theorem P13570070053386535934.correct : P13570070053386535934.Spec := by
  intro n
  simp only [A116521]

end A116521

/-! ## A116521.P6796705884135973181

`∑{#}[n, C(n, #)*A000078(#)]`
-/

namespace A116521.P6796705884135973181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000078 k

end

end A116521.P6796705884135973181

namespace A116521

/-- `∑{#}[n, C(n, #)*A000078(#)]` -/
def P6796705884135973181.Spec : Prop :=
  ∀ n, P6796705884135973181.a n = A116521 n

end A116521

/-! ## A116521.P2878132858483361679

`2*A291006(n)-Δ[A291006(n)]`
-/

namespace A116521.P2878132858483361679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291006 n - (f1 (n + 1) - f1 n)

end

end A116521.P2878132858483361679

namespace A116521

/-- `2*A291006(n)-Δ[A291006(n)]` -/
def P2878132858483361679.Spec : Prop :=
  ∀ n, P2878132858483361679.a n = A116521 n

end A116521

/-! ## A116521.P3641042141672599739

`3*A291006(n)-A291006(n+1)`
-/

namespace A116521.P3641042141672599739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A291006 n - A291006 (n + 1)

end

end A116521.P3641042141672599739

namespace A116521

/-- `3*A291006(n)-A291006(n+1)` -/
def P3641042141672599739.Spec : Prop :=
  ∀ n, P3641042141672599739.a n = A116521 n

end A116521

/-!
# A116522: a(0)=1, a(1)=1, a(n)=7*a(n/2) for n=2,4,6,..., a(n)=6*a((n-1)/2)+a((n+1)/2) for n=3,5,7,....

The programs for A116522, the canonical program `A116522.P4567962179520720721` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116522 has offset 0).

The definition of A116522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116522.P4567962179520720721

`A256136(n-1)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116522

/-- `A256136(n-1)+a(n-1)` -/
def P4567962179520720721.Spec : Prop :=
  ∀ n, P4567962179520720721.a n = A116522 n

theorem P4567962179520720721.correct : P4567962179520720721.Spec := by
  intro n
  simp only [A116522]

end A116522

/-! ## A116522.P6212174336279600737

`∑[A256136(n)]-A256136(n)`
-/

namespace A116522.P6212174336279600737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A256136 n

end

end A116522.P6212174336279600737

namespace A116522

/-- `∑[A256136(n)]-A256136(n)` -/
def P6212174336279600737.Spec : Prop :=
  ∀ n, P6212174336279600737.a n = A116522 n

end A116522

/-! ## A116522.P4415995971172838252

`∑[A033043(sqrt(A177241(n)))]`
-/

namespace A116522.P4415995971172838252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.roundAway (Real.sqrt (A177241 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116522.P4415995971172838252

namespace A116522

/-- `∑[A033043(sqrt(A177241(n)))]` -/
def P4415995971172838252.Spec : Prop :=
  ∀ n, P4415995971172838252.a n = A116522 n

end A116522

/-! ## A116522.P958236391257724976

`∑[A033043(A105321(2*n)-A105321(n))]`
-/

namespace A116522.P958236391257724976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A105321 (2 * n) - A105321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116522.P958236391257724976

namespace A116522

/-- `∑[A033043(A105321(2*n)-A105321(n))]` -/
def P958236391257724976.Spec : Prop :=
  ∀ n, P958236391257724976.a n = A116522 n

end A116522

/-! ## A116522.P7131987565795995026

`∑[6^A274009(2*n+1)]-6^A274009(2*n+1)`
-/

namespace A116522.P7131987565795995026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A274009 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (6 : ℚ) ^ (A274009 (2 * n + 1) : ℤ)

end

end A116522.P7131987565795995026

namespace A116522

/-- `∑[6^A274009(2*n+1)]-6^A274009(2*n+1)` -/
def P7131987565795995026.Spec : Prop :=
  ∀ n, P7131987565795995026.a n = (A116522 n : ℚ)

end A116522

/-! ## A116522.P12459050928335503763

`∑[6^A274009(2*n+1)]-A017991(A324467(n))`
-/

namespace A116522.P12459050928335503763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A274009 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A017991 (A324467 n).toNat : ℚ)

end

end A116522.P12459050928335503763

namespace A116522

/-- `∑[6^A274009(2*n+1)]-A017991(A324467(n))` -/
def P12459050928335503763.Spec : Prop :=
  ∀ n, P12459050928335503763.a n = (A116522 n : ℚ)

end A116522

/-!
# A116523: a(0)=1, a(1)=1, a(n) = 17*a(n/2) for n=2,4,6,..., a(n) = 16*a((n-1)/2) + a((n+1)/2) for n=3,5,7,....

The programs for A116523, the canonical program `A116523.P12130739933144489115` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116523 has offset 0).

The definition of A116523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116523.P16414785351851640615

`∑[(A001316(n)-A105321(n))²²]`
-/

namespace A116523.P16414785351851640615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A001316 n - A105321 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116523.P16414785351851640615

namespace A116523

/-- `∑[(A001316(n)-A105321(n))²²]` -/
def P16414785351851640615.Spec : Prop :=
  ∀ n, P16414785351851640615.a n = A116523 n

end A116523

/-! ## A116523.P12130739933144489115

`∑[A102376(n)²]-A102376(n)²`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116523

/-- `∑[A102376(n)²]-A102376(n)²` -/
def P12130739933144489115.Spec : Prop :=
  ∀ n, P12130739933144489115.a n = A116523 n

theorem P12130739933144489115.correct : P12130739933144489115.Spec := by
  intro n
  simp only [A116523]

end A116523

/-! ## A116523.P9953223559391728685

`∑[A002620(A131136(n))²]`
-/

namespace A116523.P9953223559391728685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A131136 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116523.P9953223559391728685

namespace A116523

/-- `∑[A002620(A131136(n))²]` -/
def P9953223559391728685.Spec : Prop :=
  ∀ n, P9953223559391728685.a n = A116523 n

end A116523

/-! ## A116523.P7696301746752705124

`∑[A011863(A001316(A004273(n)))]`
-/

namespace A116523.P7696301746752705124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (A001316 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116523.P7696301746752705124

namespace A116523

/-- `∑[A011863(A001316(A004273(n)))]` -/
def P7696301746752705124.Spec : Prop :=
  ∀ n, P7696301746752705124.a n = A116523 n

end A116523

/-! ## A116523.P5736317038604644932

`∑[A030179(A001316(A004760(n+1)))]`
-/

namespace A116523.P5736317038604644932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 (A001316 (A004760 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116523.P5736317038604644932

namespace A116523

/-- `∑[A030179(A001316(A004760(n+1)))]` -/
def P5736317038604644932.Spec : Prop :=
  ∀ n, P5736317038604644932.a n = A116523 n

end A116523

/-! ## A116523.P3246187268638847071

`∑[A177241(n)²]`
-/

namespace A116523.P3246187268638847071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177241 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116523.P3246187268638847071

namespace A116523

/-- `∑[A177241(n)²]` -/
def P3246187268638847071.Spec : Prop :=
  ∀ n, P3246187268638847071.a n = A116523 n

end A116523

/-! ## A116523.P7826567691429927342

`∑[A008217(A131136(2*n))²]`
-/

namespace A116523.P7826567691429927342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A131136 (2 * n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116523.P7826567691429927342

namespace A116523

/-- `∑[A008217(A131136(2*n))²]` -/
def P7826567691429927342.Spec : Prop :=
  ∀ n, P7826567691429927342.a n = A116523 n

end A116523

/-! ## A116523.P17639807233615162968

`∑[A030179(A048896(A130824(n)))]`
-/

namespace A116523.P17639807233615162968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 (A048896 (A130824 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116523.P17639807233615162968

namespace A116523

/-- `∑[A030179(A048896(A130824(n)))]` -/
def P17639807233615162968.Spec : Prop :=
  ∀ n, P17639807233615162968.a n = A116523 n

end A116523

/-! ## A116523.P13285773617996708507

`∑[A064727(A131136(n)²)²²]`
-/

namespace A116523.P13285773617996708507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064727 (A131136 n ^ 2).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116523.P13285773617996708507

namespace A116523

/-- `∑[A064727(A131136(n)²)²²]` -/
def P13285773617996708507.Spec : Prop :=
  ∀ n, P13285773617996708507.a n = A116523 n

end A116523

/-! ## A116523.P17597230246342045284

`∑[A008217(A131136(n)²)]`
-/

namespace A116523.P17597230246342045284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A131136 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116523.P17597230246342045284

namespace A116523

/-- `∑[A008217(A131136(n)²)]` -/
def P17597230246342045284.Spec : Prop :=
  ∀ n, P17597230246342045284.a n = A116523 n

end A116523

/-!
# A116524: a(0)=1, a(1)=1, a(n) = 13*a(n/2) for n=2,4,6,..., a(n) = 12*a((n-1)/2) + a((n+1)/2) for n=3,5,7,....

The programs for A116524, the canonical program `A116524.P7829747049837187458` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116524 has offset 0).

The definition of A116524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116524.P7829747049837187458

`∑[A033048(A004526(A131136(n)))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116524

/-- `∑[A033048(A004526(A131136(n)))]` -/
def P7829747049837187458.Spec : Prop :=
  ∀ n, P7829747049837187458.a n = A116524 n

theorem P7829747049837187458.correct : P7829747049837187458.Spec := by
  intro n
  simp only [A116524]

end A116524

/-! ## A116524.P1425751077878971030

`∑[A033048(sqrt(A177241(n)))]`
-/

namespace A116524.P1425751077878971030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (SequenceMachineLib.roundAway (Real.sqrt (A177241 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116524.P1425751077878971030

namespace A116524

/-- `∑[A033048(sqrt(A177241(n)))]` -/
def P1425751077878971030.Spec : Prop :=
  ∀ n, P1425751077878971030.a n = A116524 n

end A116524

/-! ## A116524.P2223392557765953662

`A003959(A256136(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A116524.P2223392557765953662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003959 (A256136 (n - 1)).toNat + a (n - 1)

end

end A116524.P2223392557765953662

namespace A116524

/-- `A003959(A256136(n-1))+a(n-1)` -/
def P2223392557765953662.Spec : Prop :=
  ∀ n, P2223392557765953662.a n = A116524 n

end A116524

/-! ## A116524.P178666143450607393

`A102487(A116525(n)+1)`
-/

namespace A116524.P178666143450607393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A116525 n + 1).toNat

end

end A116524.P178666143450607393

namespace A116524

/-- `A102487(A116525(n)+1)` -/
def P178666143450607393.Spec : Prop :=
  ∀ n, P178666143450607393.a n = A116524 n

end A116524

/-!
# A116525: a(0)=1, a(1)=1, a(n) = 11*a(n/2) for even n, and a(n) = 10*a((n-1)/2) + a((n+1)/2) for odd n >= 3.

The programs for A116525, the canonical program `A116525.P9195124493013691138` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116525 has offset 0).

The definition of A116525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116525.P9195124493013691138

`∑[A102377(n)]-A102377(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116525

/-- `∑[A102377(n)]-A102377(n)` -/
def P9195124493013691138.Spec : Prop :=
  ∀ n, P9195124493013691138.a n = A116525 n

theorem P9195124493013691138.correct : P9195124493013691138.Spec := by
  intro n
  simp only [A116525]

end A116525

/-! ## A116525.P452252663565125219

`A007088(A001316(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A116525.P452252663565125219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007088 (A001316 (n - 1)).toNat + a (n - 1)

end

end A116525.P452252663565125219

namespace A116525

/-- `A007088(A001316(n-1))+a(n-1)` -/
def P452252663565125219.Spec : Prop :=
  ∀ n, P452252663565125219.a n = A116525 n

end A116525

/-! ## A116525.P11960680319387746538

`∑[A007088(A105321(n)-A001316(n))]`
-/

namespace A116525.P11960680319387746538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105321 n - A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116525.P11960680319387746538

namespace A116525

/-- `∑[A007088(A105321(n)-A001316(n))]` -/
def P11960680319387746538.Spec : Prop :=
  ∀ n, P11960680319387746538.a n = A116525 n

end A116525

/-! ## A116525.P4155880428726418421

`∑[A007088(A004526(A131136(n)))]`
-/

namespace A116525.P4155880428726418421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004526 (A131136 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116525.P4155880428726418421

namespace A116525

/-- `∑[A007088(A004526(A131136(n)))]` -/
def P4155880428726418421.Spec : Prop :=
  ∀ n, P4155880428726418421.a n = A116525 n

end A116525

/-! ## A116525.P5043419762105723308

`record[A038585(n)-a(n-1)]` with `a(0)=0`
-/

namespace A116525.P5043419762105723308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A038585 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116525.P5043419762105723308

namespace A116525

/-- `record[A038585(n)-a(n-1)]` -/
def P5043419762105723308.Spec : Prop :=
  ∀ n, P5043419762105723308.a n = A116525 n

end A116525

/-! ## A116525.P16487975272944147591

`∑[A014550(A038573(A004273(n)))]`
-/

namespace A116525.P16487975272944147591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A038573 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116525.P16487975272944147591

namespace A116525

/-- `∑[A014550(A038573(A004273(n)))]` -/
def P16487975272944147591.Spec : Prop :=
  ∀ n, P16487975272944147591.a n = A116525 n

end A116525

/-! ## A116525.P18188088652955925223

`∑[A007088(A233775(2*n)-A233775(n))]`
-/

namespace A116525.P18188088652955925223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A233775 (2 * n) - A233775 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116525.P18188088652955925223

namespace A116525

/-- `∑[A007088(A233775(2*n)-A233775(n))]` -/
def P18188088652955925223.Spec : Prop :=
  ∀ n, P18188088652955925223.a n = A116525 n

end A116525

/-!
# A116526: a(0)=1, a(1)=1, a(n) = 9*a(n/2) for even n >= 2, and a(n) = 8*a((n-1)/2) + a((n+1)/2) for odd n >= 3.

The programs for A116526, the canonical program `A116526.P4327458489617124128` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116526 has offset 0).

The definition of A116526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116526.P4327458489617124128

`∑[(A105321(n)-A001316(n))^3]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A116526

/-- `∑[(A105321(n)-A001316(n))^3]` -/
def P4327458489617124128.Spec : Prop :=
  ∀ n, P4327458489617124128.a n = A116526 n

theorem P4327458489617124128.correct : P4327458489617124128.Spec := by
  intro n
  simp only [A116526]

end A116526

/-! ## A116526.P12621083307122117965

`∑[A034828(A131136(n))]`
-/

namespace A116526.P12621083307122117965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (A131136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116526.P12621083307122117965

namespace A116526

/-- `∑[A034828(A131136(n))]` -/
def P12621083307122117965.Spec : Prop :=
  ∀ n, P12621083307122117965.a n = A116526 n

end A116526

/-! ## A116526.P9865449156450305531

`∑[A034828(A001316(A004273(n)))]`
-/

namespace A116526.P9865449156450305531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (A001316 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116526.P9865449156450305531

namespace A116526

/-- `∑[A034828(A001316(A004273(n)))]` -/
def P9865449156450305531.Spec : Prop :=
  ∀ n, P9865449156450305531.a n = A116526 n

end A116526

/-! ## A116526.P16805995492208961591

`∑[A081276(A001316(A004760(n+1)))]`
-/

namespace A116526.P16805995492208961591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (A001316 (A004760 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116526.P16805995492208961591

namespace A116526

/-- `∑[A081276(A001316(A004760(n+1)))]` -/
def P16805995492208961591.Spec : Prop :=
  ∀ n, P16805995492208961591.a n = A116526 n

end A116526

/-! ## A116526.P9682677678255679018

`∑[sqrt(A177241(n))*A177241(n)]`
-/

namespace A116526.P9682677678255679018
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177241 n : ℝ) * (A177241 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116526.P9682677678255679018

namespace A116526

/-- `∑[sqrt(A177241(n))*A177241(n)]` -/
def P9682677678255679018.Spec : Prop :=
  ∀ n, P9682677678255679018.a n = (A116526 n : ℝ)

end A116526

/-! ## A116526.P15659350780807466399

`∑[(A233775(2*n)-A233775(n))^3]`
-/

namespace A116526.P15659350780807466399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233775 (2 * n) - A233775 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116526.P15659350780807466399

namespace A116526

/-- `∑[(A233775(2*n)-A233775(n))^3]` -/
def P15659350780807466399.Spec : Prop :=
  ∀ n, P15659350780807466399.a n = A116526 n

end A116526

/-! ## A116526.P9409949460457316605

`∑[A000578(A105321(2*n)-A105321(n))]`
-/

namespace A116526.P9409949460457316605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A105321 (2 * n) - A105321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116526.P9409949460457316605

namespace A116526

/-- `∑[A000578(A105321(2*n)-A105321(n))]` -/
def P9409949460457316605.Spec : Prop :=
  ∀ n, P9409949460457316605.a n = A116526 n

end A116526

/-! ## A116526.P9636247215324604960

`∑[A064727(A131136(n)²)^3]`
-/

namespace A116526.P9636247215324604960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A131136 n ^ 2).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116526.P9636247215324604960

namespace A116526

/-- `∑[A064727(A131136(n)²)^3]` -/
def P9636247215324604960.Spec : Prop :=
  ∀ n, P9636247215324604960.a n = A116526 n

end A116526

/-!
# A116527: Number of singular n X n rational {0,1}-matrices with no zero rows or columns and with all rows distinct and all columns distinct, up to permutation of rows.

The programs for A116527, there is no canonical definition to state claims against.
-/

/-! ## A116527.P4212271605138474397

`A094000(n+1)-A088389(n+1)`
-/

namespace A116527.P4212271605138474397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094000 (n + 1) - A088389 (n + 1)

end

end A116527.P4212271605138474397

/-! ## A116527.P11260032881776180821

`A094000(n+1)-A055165(n+1)/∏[n+1]`
-/

namespace A116527.P11260032881776180821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094000 (n + 1) : ℚ) - (A055165 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A116527.P11260032881776180821

/-! ## A116527.P5173370926479693075

`A094000(A005555(n))%A088389(n+1)`
-/

namespace A116527.P5173370926479693075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094000 (A005555 n).toNat) (A088389 (n + 1))

end

end A116527.P5173370926479693075

/-!
# A116528: a(0)=0, a(1)=1, and for n>=2, a(2*n) = a(n), a(2*n+1) = 2*a(n) + a(n+1).

The programs for A116528, there is no canonical definition to state claims against.
-/

/-! ## A116528.P13757152720522807767

`A203580(A342636(n))`
-/

namespace A116528.P13757152720522807767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203580 (A342636 n).toNat

end

end A116528.P13757152720522807767

/-! ## A116528.P2824521569436069473

`A178239(A027379(n))%(n+1)²`
-/

namespace A116528.P2824521569436069473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178239 (A027379 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A116528.P2824521569436069473

/-! ## A116528.P7507527915360683710

`A270655(A033046(n))`
-/

namespace A116528.P7507527915360683710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270655 (A033046 n).toNat

end

end A116528.P7507527915360683710

/-! ## A116528.P15853852315320707367

`A106609(n)-Δ[A014082(A062318(n+1))]`
-/

namespace A116528.P15853852315320707367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A062318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n - (f1 (n + 1) - f1 n)

end

end A116528.P15853852315320707367

/-! ## A116528.P16377436399738270905

`A163325(A342637(n)%A071865(2*n+5))`
-/

namespace A116528.P16377436399738270905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 (Int.tmod (A342637 n) (A071865 (2 * n + 5))).toNat

end

end A116528.P16377436399738270905

/-!
# A116529: a(2*n + 1) = a(n), a(2*n + 2) = 2*a(n) + a(n-1).

The programs for A116529, there is no canonical definition to state claims against.
-/

/-! ## A116529.P13696983441333145825

`A001511(A152795(n))*A053830(A116555(n))`
-/

namespace A116529.P13696983441333145825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A152795 n).toNat * A053830 (A116555 n).toNat

end

end A116529.P13696983441333145825

/-! ## A116529.P291502902600363825

`A053830(A116555(n))+A000007(A075497(n+1))`
-/

namespace A116529.P291502902600363825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A116555 n).toNat + A000007 (A075497 (n + 1)).toNat

end

end A116529.P291502902600363825

/-! ## A116529.P9005565234920240168

`A011558(A003528(n+1))*A053830(A116555(n))`
-/

namespace A116529.P9005565234920240168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A003528 (n + 1)).toNat * A053830 (A116555 n).toNat

end

end A116529.P9005565234920240168

/-! ## A116529.P14741383830242870022

`A001222(A000043(n+1))*A053830(A116555(n))`
-/

namespace A116529.P14741383830242870022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A053830 (A116555 n).toNat

end

end A116529.P14741383830242870022

/-! ## A116529.P18147411127408323143

`A053830(A116555(n))%A000040(A022629(n))`
-/

namespace A116529.P18147411127408323143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053830 (A116555 n).toNat) (A000040 (A022629 n).toNat)

end

end A116529.P18147411127408323143

/-!
# A116530: a(n) = 3*a(n-1), with a(1) = 20.

The programs for A116530, the canonical program `A116530.P8045235601578368166` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116530 has offset 1).

The definition of A116530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)` (program `A116530.P8045235601578368166`, by `A116530.P8045235601578368166.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116530.P11179744408156786345

`20*3^n`
-/

namespace A116530.P11179744408156786345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * 3 ^ n

end

end A116530.P11179744408156786345

namespace A116530

/-- `20*3^n` -/
def P11179744408156786345.Spec : Prop :=
  ∀ n, (P11179744408156786345.a n : ℤ) = A116530 (n + 1)

theorem P11179744408156786345.correct : P11179744408156786345.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A116530, Nat.add_sub_cancel, A116530.P11179744408156786345.a, A116530.P8045235601578368166.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A116530, Nat.add_sub_cancel, A116530.P11179744408156786345.a, A116530.P8045235601578368166.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A116530

/-! ## A116530.P8045235601578368166

`3*a(n-1)` with `a(0)=20`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116530

/-- `3*a(n-1)` -/
def P8045235601578368166.Spec : Prop :=
  ∀ n, (P8045235601578368166.a n : ℤ) = A116530 (n + 1)

theorem P8045235601578368166.correct : P8045235601578368166.Spec := by
  intro n
  simp only [A116530, Nat.add_sub_cancel]

end A116530

/-!
# A116532: Number of singular n X n rational {0,1}-matrices with no zero rows or columns and with all rows distinct, up to permutation of rows.

The programs for A116532, there is no canonical definition to state claims against.
-/

/-! ## A116532.P17135599787625903823

`A054780(n+1)-A088389(n+1)`
-/

namespace A116532.P17135599787625903823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054780 (n + 1) - A088389 (n + 1)

end

end A116532.P17135599787625903823

/-! ## A116532.P1595013843466987814

`A054780(n+1)%A088389(A005555(n))`
-/

namespace A116532.P1595013843466987814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054780 (n + 1)) (A088389 (A005555 n).toNat)

end

end A116532.P1595013843466987814

/-! ## A116532.P8487586335472272336

`A054780(A077168(n))%A088389(n+1)`
-/

namespace A116532.P8487586335472272336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054780 (A077168 n).toNat) (A088389 (n + 1))

end

end A116532.P8487586335472272336

/-!
# A116533: a(1)=1, a(2)=2, for n > 2 if a(n-1) is prime, then a(n) = 2*a(n-1), otherwise a(n) = a(n-1) - 1.

The programs for A116533, there is no canonical definition to state claims against.
-/

/-! ## A116533.P17765947377959065014

`A163961(n)+a(n-1)` with `a(0)=1`
-/

namespace A116533.P17765947377959065014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163961 n + a (n - 1)

end

end A116533.P17765947377959065014

/-! ## A116533.P2361202673242816716

`∑[A163961(round(sqrt(n²+1)))]`
-/

namespace A116533.P2361202673242816716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163961 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116533.P2361202673242816716

/-! ## A116533.P2446358911866755790

`a(n-1)+a(n-1)-(a(n-1)+1)%A000203(a(n-1))` with `a(0)=1`
-/

namespace A116533.P2446358911866755790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - Int.tmod (a (n - 1) + 1) (A000203 (a (n - 1)).toNat))

end

end A116533.P2446358911866755790

/-! ## A116533.P3076181541571355195

`abs(∑[A163961(A028310(n))])`
-/

namespace A116533.P3076181541571355195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163961 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A116533.P3076181541571355195

/-! ## A116533.P7920182643154935592

`∑[A163961(n+1)]+1-A163961(n+1)`
-/

namespace A116533.P7920182643154935592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A163961 (n + 1))

end

end A116533.P7920182643154935592

/-!
# A116535: a(n) is the smallest odd prime p such that 2^n + p is not prime.

The programs for A116535, there is no canonical definition to state claims against.
-/

/-! ## A116535.P5201372261742855124

`A062756(A109775(n+3))+2`
-/

namespace A116535.P5201372261742855124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A109775 (n + 3)).toNat + 2

end

end A116535.P5201372261742855124

/-!
# A116536: Numbers that can be expressed as the ratio of the product and the sum of consecutive prime numbers starting from 2.

The programs for A116536, there is no canonical definition to state claims against.
-/

/-! ## A116536.P15391894467863230325

`A067111(A051838(n+1))`
-/

namespace A116536.P15391894467863230325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067111 (A051838 (n + 1)).toNat

end

end A116536.P15391894467863230325

/-! ## A116536.P8661870918133532257

`A159578(n+1)/A140763(n+1)`
-/

namespace A116536.P8661870918133532257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159578 (n + 1) : ℚ) / (A140763 (n + 1) : ℚ)

end

end A116536.P8661870918133532257

/-! ## A116536.P4283640595894352028

`A002110(A051838(n+1))/A140763(n+1)`
-/

namespace A116536.P4283640595894352028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A051838 (n + 1)).toNat : ℚ) / (A140763 (n + 1) : ℚ)

end

end A116536.P4283640595894352028

/-! ## A116536.P5746355451794936700

`A159578(n+1)/A007504(A051838(n+1))`
-/

namespace A116536.P5746355451794936700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159578 (n + 1) : ℚ) / (A007504 (A051838 (n + 1)).toNat : ℚ)

end

end A116536.P5746355451794936700

/-!
# A116537: a(1)=1. a(n) = number of positive integers that are < n, are coprime to n and do not occur among the first n-1 terms of the sequence.

The programs for A116537, there is no canonical definition to state claims against.
-/

/-! ## A116537.P5027415353821513035

`A289436(n+2)-A052344(ceil(15^(n/4)))`
-/

namespace A116537.P5027415353821513035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (n + 2) - A052344 ⌈(15 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉.toNat

end

end A116537.P5027415353821513035

/-! ## A116537.P10166992975087761305

`A219200(n)+A001222(A124302(n))`
-/

namespace A116537.P10166992975087761305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219200 (n + 41) + A001222 (A124302 n).toNat

end

end A116537.P10166992975087761305

/-! ## A116537.P15757782616717217134

`A341978(n)+A001222(A124302(n))`
-/

namespace A116537.P15757782616717217134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341978 (n + 42) + A001222 (A124302 n).toNat

end

end A116537.P15757782616717217134

/-! ## A116537.P7307191630934232609

`∑{e}[A262878(n)+A062272(n), #]`
-/

namespace A116537.P7307191630934232609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262878 n + A062272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A116537.P7307191630934232609

/-! ## A116537.P7561830499153100108

`A001222(A124441(floor((2*n+5)/gcd(4, n+1))+3))`
-/

namespace A116537.P7561830499153100108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A124441 (⌊(2 * n + 5 : ℚ) / (Nat.gcd 4 (n + 1) : ℚ)⌋ + 3).toNat).toNat

end

end A116537.P7561830499153100108

/-!
# A116539: Number of zero-one matrices with n ones and no zero rows or columns and with distinct rows, up to permutation of rows.

The programs for A116539, there is no canonical definition to state claims against.
-/

/-! ## A116539.P7818323174801396269

`A138997(∑[A137535(n+1)])`
-/

namespace A116539.P7818323174801396269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116539.P7818323174801396269

/-! ## A116539.P13661152475248890459

`A034968(A045688(n))+A000142(n)`
-/

namespace A116539.P13661152475248890459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A045688 n).toNat + A000142 n

end

end A116539.P13661152475248890459

/-! ## A116539.P10964469506265321449

`A289498(A367920(n)+A011655(n))`
-/

namespace A116539.P10964469506265321449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A367920 n + A011655 n).toNat

end

end A116539.P10964469506265321449

/-!
# A116540: Number of zero-one matrices with n ones and no zero rows or columns, up to permutation of rows.

The programs for A116540, there is no canonical definition to state claims against.
-/

/-! ## A116540.P9187034453856125743

`A328505(A328441(n))-A328480(n)`
-/

namespace A116540.P9187034453856125743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328505 (A328441 n).toNat - A328480 n

end

end A116540.P9187034453856125743

/-! ## A116540.P4464449445892264874

`and(A000248(n), A023322(A008983(n)))`
-/

namespace A116540.P4464449445892264874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000248 n) (A023322 (A008983 n).toNat)

end

end A116540.P4464449445892264874

/-! ## A116540.P14730895764178473076

`and(A000248(n), A109729(A000110(n)))`
-/

namespace A116540.P14730895764178473076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000248 n) (A109729 (A000110 n).toNat)

end

end A116540.P14730895764178473076

/-!
# A116541: Triangular numbers for which the number of divisors is also a triangular number.

The programs for A116541, there is no canonical definition to state claims against.
-/

/-! ## A116541.P13008076056445016714

`∩[A081619(n+1), A000217(n)]`
-/

namespace A116541.P13008076056445016714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116541.P13008076056445016714

/-! ## A116541.P1588232716882827341

`∩[A081619(n+1), A186783(n+1)]`
-/

namespace A116541.P1588232716882827341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116541.P1588232716882827341

/-! ## A116541.P6808568416206522632

`filter[A081619(n+1), A010054(#)]`
-/

namespace A116541.P6808568416206522632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A116541.P6808568416206522632

/-! ## A116541.P9881171353395720306

`filter[A081619(n+1), A073424(#)]`
-/

namespace A116541.P9881171353395720306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A116541.P9881171353395720306

/-! ## A116541.P8292918503099254761

`eq[A029653(A032741(n)), A073424(n)]`
-/

namespace A116541.P8292918503099254761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116541.P8292918503099254761

/-!
# A116543: Number of terms in greedy representation of n in terms of the Lucas numbers.

The programs for A116543, the canonical program `A116543.P12066350740739985589` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116543 has offset 0).

The definition of A116543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116543.P8954462438220709084

`dr(A130310(n))`
-/

namespace A116543.P8954462438220709084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130310 n)

end

end A116543.P8954462438220709084

namespace A116543

/-- `dr(A130310(n))` -/
def P8954462438220709084.Spec : Prop :=
  ∀ n, (P8954462438220709084.a n : ℤ) = A116543 n

end A116543

/-! ## A116543.P154437406432714119

`∑{digits}[A130310(n), A000045(#)]`
-/

namespace A116543.P154437406432714119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A116543.P154437406432714119

namespace A116543

/-- `∑{digits}[A130310(n), A000045(#)]` -/
def P154437406432714119.Spec : Prop :=
  ∀ n, P154437406432714119.a n = A116543 n

end A116543

/-! ## A116543.P16473425623061349273

`∑{digits}[A130310(n), A000120(#)]`
-/

namespace A116543.P16473425623061349273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 x).sum

end

end A116543.P16473425623061349273

namespace A116543

/-- `∑{digits}[A130310(n), A000120(#)]` -/
def P16473425623061349273.Spec : Prop :=
  ∀ n, P16473425623061349273.a n = A116543 n

end A116543

/-! ## A116543.P10277507651627427565

`∑{digits}[A130310(n), A000217(#)]`
-/

namespace A116543.P10277507651627427565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000217 x).sum

end

end A116543.P10277507651627427565

namespace A116543

/-- `∑{digits}[A130310(n), A000217(#)]` -/
def P10277507651627427565.Spec : Prop :=
  ∀ n, P10277507651627427565.a n = A116543 n

end A116543

/-! ## A116543.P11270350682744294930

`∑{digits}[A130310(n), A001654(#)]`
-/

namespace A116543.P11270350682744294930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001654 x).sum

end

end A116543.P11270350682744294930

namespace A116543

/-- `∑{digits}[A130310(n), A001654(#)]` -/
def P11270350682744294930.Spec : Prop :=
  ∀ n, P11270350682744294930.a n = A116543 n

end A116543

/-! ## A116543.P4866874510009615013

`∑{digits}[A130310(n), A002275(#)]`
-/

namespace A116543.P4866874510009615013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002275 x).sum

end

end A116543.P4866874510009615013

namespace A116543

/-- `∑{digits}[A130310(n), A002275(#)]` -/
def P4866874510009615013.Spec : Prop :=
  ∀ n, P4866874510009615013.a n = A116543 n

end A116543

/-! ## A116543.P15445350480030489749

`∑{digits}[A130310(n), A003714(#)]`
-/

namespace A116543.P15445350480030489749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003714 x).sum

end

end A116543.P15445350480030489749

namespace A116543

/-- `∑{digits}[A130310(n), A003714(#)]` -/
def P15445350480030489749.Spec : Prop :=
  ∀ n, P15445350480030489749.a n = A116543 n

end A116543

/-! ## A116543.P10427638717223742837

`∑{digits}[A130310(n), A003849(#)]`
-/

namespace A116543.P10427638717223742837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003849 x).sum

end

end A116543.P10427638717223742837

namespace A116543

/-- `∑{digits}[A130310(n), A003849(#)]` -/
def P10427638717223742837.Spec : Prop :=
  ∀ n, P10427638717223742837.a n = A116543 n

end A116543

/-! ## A116543.P2286317783140542477

`A004086(∑{digits}[A130310(n), #])`
-/

namespace A116543.P2286317783140542477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A116543.P2286317783140542477

namespace A116543

/-- `A004086(∑{digits}[A130310(n), #])` -/
def P2286317783140542477.Spec : Prop :=
  ∀ n, P2286317783140542477.a n = A116543 n

end A116543

/-! ## A116543.P5430877508414642993

`∑{digits}[A130310(n), A007088(#)]`
-/

namespace A116543.P5430877508414642993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007088 x).sum

end

end A116543.P5430877508414642993

namespace A116543

/-- `∑{digits}[A130310(n), A007088(#)]` -/
def P5430877508414642993.Spec : Prop :=
  ∀ n, P5430877508414642993.a n = A116543 n

end A116543

/-! ## A116543.P4067248002956798316

`∑{digits}[A130310(n), A007895(#)]`
-/

namespace A116543.P4067248002956798316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007895 x).sum

end

end A116543.P4067248002956798316

namespace A116543

/-- `∑{digits}[A130310(n), A007895(#)]` -/
def P4067248002956798316.Spec : Prop :=
  ∀ n, P4067248002956798316.a n = A116543 n

end A116543

/-! ## A116543.P16585905945080418593

`∑{digits}[A130310(n), A010872(#)]`
-/

namespace A116543.P16585905945080418593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010872 x).sum

end

end A116543.P16585905945080418593

namespace A116543

/-- `∑{digits}[A130310(n), A010872(#)]` -/
def P16585905945080418593.Spec : Prop :=
  ∀ n, P16585905945080418593.a n = A116543 n

end A116543

/-! ## A116543.P9908756993114409079

`A054055(∑{digits}[A130310(n), #])`
-/

namespace A116543.P9908756993114409079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A116543.P9908756993114409079

namespace A116543

/-- `A054055(∑{digits}[A130310(n), #])` -/
def P9908756993114409079.Spec : Prop :=
  ∀ n, P9908756993114409079.a n = A116543 n

end A116543

/-! ## A116543.P10953922210926337235

`∑{digits}[A130310(n), A091202(#)]`
-/

namespace A116543.P10953922210926337235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A091202 x).sum

end

end A116543.P10953922210926337235

namespace A116543

/-- `∑{digits}[A130310(n), A091202(#)]` -/
def P10953922210926337235.Spec : Prop :=
  ∀ n, P10953922210926337235.a n = A116543 n

end A116543

/-! ## A116543.P3038494605534490421

`∑{digits}[A130310(n), A091203(#)]`
-/

namespace A116543.P3038494605534490421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A091203 x).sum

end

end A116543.P3038494605534490421

namespace A116543

/-- `∑{digits}[A130310(n), A091203(#)]` -/
def P3038494605534490421.Spec : Prop :=
  ∀ n, P3038494605534490421.a n = A116543 n

end A116543

/-! ## A116543.P3129845985439846659

`∑{digits}[A130310(n), A091204(#)]`
-/

namespace A116543.P3129845985439846659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A091204 x).sum

end

end A116543.P3129845985439846659

namespace A116543

/-- `∑{digits}[A130310(n), A091204(#)]` -/
def P3129845985439846659.Spec : Prop :=
  ∀ n, P3129845985439846659.a n = A116543 n

end A116543

/-! ## A116543.P12066350740739985589

`A213911(∑[A284749(n+2)]-1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A116543

/-- `A213911(∑[A284749(n+2)]-1)` -/
def P12066350740739985589.Spec : Prop :=
  ∀ n, P12066350740739985589.a n = A116543 n

theorem P12066350740739985589.correct : P12066350740739985589.Spec := by
  intro n
  simp only [A116543]

end A116543

/-! ## A116543.P10524750841709922521

`A007895(lt[A104324(n), A104324(n+2)])`
-/

namespace A116543.P10524750841709922521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A116543.P10524750841709922521

namespace A116543

/-- `A007895(lt[A104324(n), A104324(n+2)])` -/
def P10524750841709922521.Spec : Prop :=
  ∀ n, P10524750841709922521.a n = A116543 n

end A116543

/-!
# A116544: Triangular numbers for which the multiplicative digital root is also a triangular number.

The programs for A116544, there is no canonical definition to state claims against.
-/

/-! ## A116544.P1781617611208771248

`eq[A116925(n), A290452(A048793(2*n+3))]`
-/

namespace A116544.P1781617611208771248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 (A048793 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116544.P1781617611208771248

/-! ## A116544.P13706156747565981177

`eq[A013615(n), A260222(A049556(n+1))]`
-/

namespace A116544.P13706156747565981177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (A049556 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116544.P13706156747565981177

/-! ## A116544.P3816536410961988840

`eq[A160232(n+1), A260222(A049556(n+1))]`
-/

namespace A116544.P3816536410961988840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (A049556 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116544.P3816536410961988840

/-! ## A116544.P6598092800657866953

`eq[A200370(n+1), A260222(A049556(n+1))]`
-/

namespace A116544.P6598092800657866953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (A049556 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116544.P6598092800657866953

/-! ## A116544.P5013420271169678486

`record[C(n, 2)/A000688(A337270(n))]`
-/

namespace A116544.P5013420271169678486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / (A000688 (A337270 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116544.P5013420271169678486

/-!
# A116545: Sum of the largest Fibonacci exponent of prime factorizations of k, k=1..n.

The programs for A116545, the canonical program `A116545.P9412331065592776354` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116545 has offset 1).

The definition of A116545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116545.P9412331065592776354

`∑[A115568(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A116545

/-- `∑[A115568(n+1)]` -/
def P9412331065592776354.Spec : Prop :=
  ∀ n, P9412331065592776354.a n = A116545 (n + 1)

theorem P9412331065592776354.correct : P9412331065592776354.Spec := by
  intro n
  simp only [A116545, Nat.add_sub_cancel]

end A116545

/-! ## A116545.P14233563316481731883

`∑[A057945(A046643(n+1)²)]`
-/

namespace A116545.P14233563316481731883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (A046643 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116545.P14233563316481731883

namespace A116545

/-- `∑[A057945(A046643(n+1)²)]` -/
def P14233563316481731883.Spec : Prop :=
  ∀ n, P14233563316481731883.a n = A116545 (n + 1)

end A116545

/-! ## A116545.P13675250668117417981

`∑[A014963(A225546((n+1)/∏{p}[n+1, #]))]`
-/

namespace A116545.P13675250668117417981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A225546 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116545.P13675250668117417981

namespace A116545

/-- `∑[A014963(A225546((n+1)/∏{p}[n+1, #]))]` -/
def P13675250668117417981.Spec : Prop :=
  ∀ n, P13675250668117417981.a n = A116545 (n + 1)

end A116545

/-! ## A116545.P14080737885621348117

`∑[gcd(A015163(n), A381455(n+1))]`
-/

namespace A116545.P14080737885621348117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015163 n) (A381455 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116545.P14080737885621348117

namespace A116545

/-- `∑[gcd(A015163(n), A381455(n+1))]` -/
def P14080737885621348117.Spec : Prop :=
  ∀ n, (P14080737885621348117.a n : ℤ) = A116545 (n + 1)

end A116545

/-! ## A116545.P3359130859914652589

`∑[A052409(A286864(∏{e}[n+1, #]))]`
-/

namespace A116545.P3359130859914652589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A286864 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116545.P3359130859914652589

namespace A116545

/-- `∑[A052409(A286864(∏{e}[n+1, #]))]` -/
def P3359130859914652589.Spec : Prop :=
  ∀ n, P3359130859914652589.a n = A116545 (n + 1)

end A116545

/-!
# A116547: Permutation of natural numbers generated by 5-rowed array shown below.

The programs for A116547, the canonical program `A116547.P13314976382561312810` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116547 has offset 1).

The definition of A116547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116547.P13314976382561312810

`ogf((5x-4x^2+9x^3-4x^4-4x^5+8x^6-13x^8+21x^10-17x^11+4x^15)/(1-x-x^5+x^6))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116547

/-- `ogf((5x-4x^2+9x^3-4x^4-4x^5+8x^6-13x^8+21x^10-17x^11+4x^15)/(1-x-x^5+x^6))` -/
def P13314976382561312810.Spec : Prop :=
  ∀ n, P13314976382561312810.a n = A116547 (n + 1)

theorem P13314976382561312810.correct : P13314976382561312810.Spec := by
  intro n
  simp only [A116547, Nat.add_sub_cancel]

end A116547

/-! ## A116547.P9788268354840253749

`A278520(13*A232646(n+1))`
-/

namespace A116547.P9788268354840253749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278520 (13 * A232646 (n + 1)).toNat

end

end A116547.P9788268354840253749

namespace A116547

/-- `A278520(13*A232646(n+1))` -/
def P9788268354840253749.Spec : Prop :=
  ∀ n, P9788268354840253749.a n = A116547 (n + 1)

end A116547

/-! ## A116547.P9096495438516950048

`A278520(lcm(13, A232646(n+1)))`
-/

namespace A116547.P9096495438516950048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278520 (Int.lcm 13 (A232646 (n + 1)))

end

end A116547.P9096495438516950048

namespace A116547

/-- `A278520(lcm(13, A232646(n+1)))` -/
def P9096495438516950048.Spec : Prop :=
  ∀ n, P9096495438516950048.a n = A116547 (n + 1)

end A116547

/-!
# A116548: a(n) = smallest divisor d of n that occurs earlier in the sequence fewer than a(d) times.

The programs for A116548, there is no canonical definition to state claims against.
-/

/-! ## A116548.P8211820579499748201

`gcd(A019554(A072501(n+1)), A140271(n+1))`
-/

namespace A116548.P8211820579499748201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019554 (A072501 (n + 1)).toNat) (A140271 (n + 1))

end

end A116548.P8211820579499748201

/-! ## A116548.P9501350527082531952

`A140271(n+1)/A080305(A007956(n+1))`
-/

namespace A116548.P9501350527082531952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140271 (n + 1) : ℚ) / (A080305 (A007956 (n + 1)).toNat : ℚ)

end

end A116548.P9501350527082531952

/-! ## A116548.P8735155862969525176

`A326684(A206497(n+1))+A033677(n+1)`
-/

namespace A116548.P8735155862969525176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 (A206497 (n + 1)).toNat + A033677 (n + 1)

end

end A116548.P8735155862969525176

/-! ## A116548.P2988260539689118867

`A033677(n+1)*A303837(A306538(3*n+2))`
-/

namespace A116548.P2988260539689118867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A303837 (A306538 (3 * n + 2)).toNat

end

end A116548.P2988260539689118867

/-! ## A116548.P6447880557333847556

`A033677(n+1)*A194673(A167877(n))`
-/

namespace A116548.P6447880557333847556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A194673 (A167877 n).toNat

end

end A116548.P6447880557333847556

/-!
# A116549: a(0) = 1. a(m + 2^n) = a(n) + a(m), for 0 <= m <= 2^n - 1.

The programs for A116549, the canonical program `A116549.P11628790569736777894` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116549 has offset 0).

The definition of A116549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116549.P11628790569736777894

`a(A000523(n))+a(A053645(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116549

/-- `a(A000523(n))+a(A053645(n))` -/
def P11628790569736777894.Spec : Prop :=
  ∀ n, (P11628790569736777894.a n : ℤ) = A116549 n

theorem P11628790569736777894.correct : P11628790569736777894.Spec := by
  intro n
  simp only [A116549]

end A116549

/-! ## A116549.P2656417793987665480

`a(and(n, n-1))+a(val(n, 2))` with `a(0)=1`
-/

namespace A116549.P2656417793987665480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + a (SequenceMachineLib.valuation n 2)

end

end A116549.P2656417793987665480

namespace A116549

/-- `a(and(n, n-1))+a(val(n, 2))` -/
def P2656417793987665480.Spec : Prop :=
  ∀ n, (P2656417793987665480.a n : ℤ) = A116549 n

end A116549

/-! ## A116549.P11599801195141800761

`A397704(n)+A033922(n)`
-/

namespace A116549.P11599801195141800761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397704 n + A033922 n

end

end A116549.P11599801195141800761

namespace A116549

/-- `A397704(n)+A033922(n)` -/
def P11599801195141800761.Spec : Prop :=
  ∀ n, P11599801195141800761.a n = A116549 n

end A116549

/-! ## A116549.P4783136037901904564

`a(A007814(n))+a(A129760(n))` with `a(0)=1`
-/

namespace A116549.P4783136037901904564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A007814 n).toNat + a (A129760 n).toNat

end

end A116549.P4783136037901904564

namespace A116549

/-- `a(A007814(n))+a(A129760(n))` -/
def P4783136037901904564.Spec : Prop :=
  ∀ n, (P4783136037901904564.a n : ℤ) = A116549 n

end A116549

/-! ## A116549.P15065159128267320891

`a(A053645(n))+a(A029837(n+1)-1)` with `a(0)=1`
-/

namespace A116549.P15065159128267320891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A053645 n).toNat + a (A029837 (n + 1) - 1).toNat

end

end A116549.P15065159128267320891

namespace A116549

/-- `a(A053645(n))+a(A029837(n+1)-1)` -/
def P15065159128267320891.Spec : Prop :=
  ∀ n, (P15065159128267320891.a n : ℤ) = A116549 n

end A116549

/-! ## A116549.P7699263767325115701

`A273004(n)+1`
-/

namespace A116549.P7699263767325115701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273004 n + 1

end

end A116549.P7699263767325115701

namespace A116549

/-- `A273004(n)+1` -/
def P7699263767325115701.Spec : Prop :=
  ∀ n, P7699263767325115701.a n = A116549 n

end A116549

/-! ## A116549.P12310484979755960077

`A264766(A273004(n)²)`
-/

namespace A116549.P12310484979755960077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264766 (A273004 n ^ 2).toNat

end

end A116549.P12310484979755960077

namespace A116549

/-- `A264766(A273004(n)²)` -/
def P12310484979755960077.Spec : Prop :=
  ∀ n, P12310484979755960077.a n = A116549 n

end A116549

/-! ## A116549.P12268387394738845816

`a(A164089(2*n))+a(A000523(n))` with `a(0)=1`
-/

namespace A116549.P12268387394738845816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A164089 (2 * n)).toNat + a (A000523 n).toNat

end

end A116549.P12268387394738845816

namespace A116549

/-- `a(A164089(2*n))+a(A000523(n))` -/
def P12268387394738845816.Spec : Prop :=
  ∀ n, (P12268387394738845816.a n : ℤ) = A116549 n

end A116549

/-! ## A116549.P16531293929331844943

`A175213(A273004(n)²)`
-/

namespace A116549.P16531293929331844943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A273004 n ^ 2).toNat

end

end A116549.P16531293929331844943

namespace A116549

/-- `A175213(A273004(n)²)` -/
def P16531293929331844943.Spec : Prop :=
  ∀ n, P16531293929331844943.a n = A116549 n

end A116549

/-! ## A116549.P15111101680190005796

`∑{p}[A019565(n), A256555(#)]+1`
-/

namespace A116549.P15111101680190005796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A256555 p + 1

end

end A116549.P15111101680190005796

namespace A116549

/-- `∑{p}[A019565(n), A256555(#)]+1` -/
def P15111101680190005796.Spec : Prop :=
  ∀ n, P15111101680190005796.a n = A116549 n

end A116549

/-! ## A116549.P10144561345529639958

`A008619(2*∑{p}[A019565(n), A256555(#)])`
-/

namespace A116549.P10144561345529639958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A256555 p)).toNat

end

end A116549.P10144561345529639958

namespace A116549

/-- `A008619(2*∑{p}[A019565(n), A256555(#)])` -/
def P10144561345529639958.Spec : Prop :=
  ∀ n, P10144561345529639958.a n = A116549 n

end A116549

/-!
# A116550: The bi-unitary analog of Euler's totient function of n.

The programs for A116550, there is no canonical definition to state claims against.
-/

/-! ## A116550.P9403104760870618129

`abs(Δ[A306070(A000038(n)+n)])`
-/

namespace A116550.P9403104760870618129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306070 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A116550.P9403104760870618129

/-! ## A116550.P10549054149276816115

`A028310(Δ[A306070(A028310(n))])`
-/

namespace A116550.P10549054149276816115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306070 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A116550.P10549054149276816115

/-! ## A116550.P17747131035631281535

`Δ[A306070(A000038(n)+n)]^(A000007(n)+1)`
-/

namespace A116550.P17747131035631281535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306070 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A116550.P17747131035631281535

/-! ## A116550.P1708914153444593131

`Δ[A306070(A000038(n)+n)]^(A040000(n)-1)`
-/

namespace A116550.P1708914153444593131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306070 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A040000 n - 1 : ℤ)

end

end A116550.P1708914153444593131

/-! ## A116550.P3278380862860396498

`A028310(A306070(n+1)-A306070(A028310(n)))`
-/

namespace A116550.P3278380862860396498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A306070 (n + 1) - A306070 (A028310 n).toNat).toNat

end

end A116550.P3278380862860396498

/-! ## A116550.P678206243889681136

`Δ[A306070(A000038(a(n-1)+1)+n)]` with `a(0)=0`
-/

namespace A116550.P678206243889681136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A306070 (A000038 (f1 (n - 1) + 1).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116550.P678206243889681136

/-! ## A116550.P788188430097791540

`Δ[A306070(A137734(n²))%(n+1)²]`
-/

namespace A116550.P788188430097791540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306070 (A137734 (n ^ 2)).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116550.P788188430097791540

/-! ## A116550.P6436782917528723271

`A000007(n)+Δ[A306070(A137734(n²))]`
-/

namespace A116550.P6436782917528723271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306070 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A116550.P6436782917528723271

/-! ## A116550.P13852386346728952604

`Δ[A306070(A137734(n²))+A057427(n)]`
-/

namespace A116550.P13852386346728952604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306070 (A137734 (n ^ 2)).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116550.P13852386346728952604

/-!
# A116551: Permutation of natural numbers generated by 3-rowed array shown below.

The programs for A116551, the canonical program `A116551.P12621615652199518756` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116551 has offset 1).

The definition of A116551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116551.P8877643035964605676

`ogf((3x-2x^2+5x^3-5x^4+2x^6)/(1-x-x^3+x^4))`
-/

namespace A116551.P8877643035964605676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2, 5, -5, 0, 2] [1, -1, 0, -1, 1] n

end

end A116551.P8877643035964605676

namespace A116551

/-- `ogf((3x-2x^2+5x^3-5x^4+2x^6)/(1-x-x^3+x^4))` -/
def P8877643035964605676.Spec : Prop :=
  ∀ n, P8877643035964605676.a n = A116551 (n + 1)

end A116551

/-! ## A116551.P12621615652199518756

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=6, a(4)=4, a(5)=2, a(6)=9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116551

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P12621615652199518756.Spec : Prop :=
  ∀ n, P12621615652199518756.a n = A116551 (n + 1)

theorem P12621615652199518756.correct : P12621615652199518756.Spec := by
  intro n
  simp only [A116551, Nat.add_sub_cancel]

end A116551

/-! ## A116551.P8376458002561566135

`a(n-3)+3` with `a(0)=0, a(1)=3, a(2)=1, a(3)=6, a(4)=4, a(5)=2`
-/

namespace A116551.P8376458002561566135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 6, 4, 2] fun n a =>
  a (n - 3) + 3

end

end A116551.P8376458002561566135

namespace A116551

/-- `a(n-3)+3` -/
def P8376458002561566135.Spec : Prop :=
  ∀ n, (P8376458002561566135.a n : ℤ) = A116551 (n + 1)

end A116551

/-! ## A116551.P1178336506120815135

`A133259(A115731(n+1)-1)-1`
-/

namespace A116551.P1178336506120815135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A115731 (n + 1) - 1).toNat - 1

end

end A116551.P1178336506120815135

namespace A116551

/-- `A133259(A115731(n+1)-1)-1` -/
def P1178336506120815135.Spec : Prop :=
  ∀ n, P1178336506120815135.a n = A116551 (n + 1)

end A116551

/-! ## A116551.P2584172654103145605

`A131717(A088520(n+1))-1`
-/

namespace A116551.P2584172654103145605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A088520 (n + 1)).toNat - 1

end

end A116551.P2584172654103145605

namespace A116551

/-- `A131717(A088520(n+1))-1` -/
def P2584172654103145605.Spec : Prop :=
  ∀ n, P2584172654103145605.a n = A116551 (n + 1)

end A116551

/-! ## A116551.P9704560150803089676

`xor(∏{d}[1-n, #%2]%A143098(n+1), A088520(n+1))-1`
-/

namespace A116551.P9704560150803089676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod ((∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2 : ℕ) : ℤ) (A143098 (n + 1))) (A088520 (n + 1)) - 1

end

end A116551.P9704560150803089676

namespace A116551

/-- `xor(∏{d}[1-n, #%2]%A143098(n+1), A088520(n+1))-1` -/
def P9704560150803089676.Spec : Prop :=
  ∀ n, P9704560150803089676.a n = A116551 (n + 1)

end A116551

/-! ## A116551.P9091079674425416513

`A308778(n²)+A131717(A088520(n+1))`
-/

namespace A116551.P9091079674425416513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A131717 (A088520 (n + 1)).toNat

end

end A116551.P9091079674425416513

namespace A116551

/-- `A308778(n²)+A131717(A088520(n+1))` -/
def P9091079674425416513.Spec : Prop :=
  ∀ n, P9091079674425416513.a n = A116551 (n + 1)

end A116551

/-! ## A116551.P16096770908660487033

`A260196(n+2)+A131717(A088520(n+1))`
-/

namespace A116551.P16096770908660487033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A131717 (A088520 (n + 1)).toNat

end

end A116551.P16096770908660487033

namespace A116551

/-- `A260196(n+2)+A131717(A088520(n+1))` -/
def P16096770908660487033.Spec : Prop :=
  ∀ n, P16096770908660487033.a n = A116551 (n + 1)

end A116551

/-! ## A116551.P15961072515353818230

`xor(A181440(n+1)%A143098(n+1), A088520(n+1))-1`
-/

namespace A116551.P15961072515353818230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A181440 (n + 1)) (A143098 (n + 1))) (A088520 (n + 1)) - 1

end

end A116551.P15961072515353818230

namespace A116551

/-- `xor(A181440(n+1)%A143098(n+1), A088520(n+1))-1` -/
def P15961072515353818230.Spec : Prop :=
  ∀ n, P15961072515353818230.a n = A116551 (n + 1)

end A116551

/-! ## A116551.P3482490050065219334

`A316441(A000040(n+1))+A131717(A088520(n+1))`
-/

namespace A116551.P3482490050065219334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A131717 (A088520 (n + 1)).toNat

end

end A116551.P3482490050065219334

namespace A116551

/-- `A316441(A000040(n+1))+A131717(A088520(n+1))` -/
def P3482490050065219334.Spec : Prop :=
  ∀ n, P3482490050065219334.a n = A116551 (n + 1)

end A116551

/-!
# A116556: a(n) = 2*a(n-1) + 2*a(n-2), a(0)=0, a(1)=4.

The programs for A116556, the canonical program `A116556.P7066645122254844129` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116556 has offset 0).

The definition of A116556 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)` (program `A116556.P7066645122254844129`, by `A116556.P7066645122254844129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116556.P31682401748169613

`ogf(4x/(1-2x-2x^2))`
-/

namespace A116556.P31682401748169613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -2, -2] n

end

end A116556.P31682401748169613

namespace A116556

/-- `ogf(4x/(1-2x-2x^2))` -/
def P31682401748169613.Spec : Prop :=
  ∀ n, P31682401748169613.a n = A116556 n

end A116556

/-! ## A116556.P7066645122254844129

`2*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116556

/-- `2*a(n-1)+2*a(n-2)` -/
def P7066645122254844129.Spec : Prop :=
  ∀ n, (P7066645122254844129.a n : ℤ) = A116556 n

theorem P7066645122254844129.correct : P7066645122254844129.Spec := by
  intro n
  simp only [A116556]

end A116556

/-! ## A116556.P11351503696279354698

`4*A002605(n)`
-/

namespace A116556.P11351503696279354698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002605 n

end

end A116556.P11351503696279354698

namespace A116556

/-- `4*A002605(n)` -/
def P11351503696279354698.Spec : Prop :=
  ∀ n, P11351503696279354698.a n = A116556 n

end A116556

/-! ## A116556.P10318012871292133180

`2*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A116556.P10318012871292133180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A116556.P10318012871292133180

namespace A116556

/-- `2*(a(n-1)+a(n-2))` -/
def P10318012871292133180.Spec : Prop :=
  ∀ n, (P10318012871292133180.a n : ℤ) = A116556 n

theorem P10318012871292133180.correct : P10318012871292133180.Spec := by
  intro n
  simp only [A116556, Nat.add_sub_cancel, A116556.P10318012871292133180.a, A116556.P7066645122254844129.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116556

/-! ## A116556.P13697324493478732007

`2*(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A116556.P13697324493478732007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A116556.P13697324493478732007

namespace A116556

/-- `2*(a(n-1)-floor(-a(n-2)))` -/
def P13697324493478732007.Spec : Prop :=
  ∀ n, P13697324493478732007.a n = A116556 n

end A116556

/-! ## A116556.P7100437771025771400

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A116556.P7100437771025771400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A116556.P7100437771025771400

namespace A116556

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P7100437771025771400.Spec : Prop :=
  ∀ n, P7100437771025771400.a n = A116556 n

end A116556

/-! ## A116556.P17007323635769942558

`2-2*(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A116556.P17007323635769942558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 - 2 * (1 - a (n - 1) - a (n - 2))

end

end A116556.P17007323635769942558

namespace A116556

/-- `2-2*(1-a(n-1)-a(n-2))` -/
def P17007323635769942558.Spec : Prop :=
  ∀ n, P17007323635769942558.a n = A116556 n

end A116556

/-! ## A116556.P5301658974646580463

`(a(n-1)+a(n-2))/(1-1/2)` with `a(0)=0, a(1)=4`
-/

namespace A116556.P5301658974646580463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A116556.P5301658974646580463

namespace A116556

/-- `(a(n-1)+a(n-2))/(1-1/2)` -/
def P5301658974646580463.Spec : Prop :=
  ∀ n, P5301658974646580463.a n = (A116556 n : ℚ)

end A116556

/-! ## A116556.P11561653203537551161

`2/sqrt(3)*((1+sqrt(3))^n-(1-sqrt(3))^n)`
-/

namespace A116556.P11561653203537551161
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.sqrt (3 : ℝ) * ((1 + Real.sqrt (3 : ℝ)) ^ n - (1 - Real.sqrt (3 : ℝ)) ^ n)

end

end A116556.P11561653203537551161

namespace A116556

/-- `2/sqrt(3)*((1+sqrt(3))^n-(1-sqrt(3))^n)` -/
def P11561653203537551161.Spec : Prop :=
  ∀ n, P11561653203537551161.a n = (A116556 n : ℝ)

theorem P11561653203537551161.correct : P11561653203537551161.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A116556, Nat.add_sub_cancel, A116556.P11561653203537551161.a, A116556.P7066645122254844129.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A116556, Nat.add_sub_cancel, A116556.P11561653203537551161.a, A116556.P7066645122254844129.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A116556

/-! ## A116556.P7571168402290936731

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A116556.P7571168402290936731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A116556.P7571168402290936731

namespace A116556

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P7571168402290936731.Spec : Prop :=
  ∀ n, (P7571168402290936731.a n : ℤ) = A116556 n

theorem P7571168402290936731.correct : P7571168402290936731.Spec := by
  intro n
  simp only [A116556, Nat.add_sub_cancel, A116556.P7571168402290936731.a, A116556.P7066645122254844129.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116556

/-! ## A116556.P16834598610699828014

`Δ[2*A052948(n)]`
-/

namespace A116556.P16834598610699828014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116556.P16834598610699828014

namespace A116556

/-- `Δ[2*A052948(n)]` -/
def P16834598610699828014.Spec : Prop :=
  ∀ n, P16834598610699828014.a n = A116556 n

end A116556

/-! ## A116556.P12231611489854298012

`2*A108898(n)+2`
-/

namespace A116556.P12231611489854298012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108898 n + 2

end

end A116556.P12231611489854298012

namespace A116556

/-- `2*A108898(n)+2` -/
def P12231611489854298012.Spec : Prop :=
  ∀ n, P12231611489854298012.a n = A116556 n

end A116556

/-! ## A116556.P11448843895247911718

`abs(2*(1-A077917(n)))`
-/

namespace A116556.P11448843895247911718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (1 - A077917 n)|

end

end A116556.P11448843895247911718

namespace A116556

/-- `abs(2*(1-A077917(n)))` -/
def P11448843895247911718.Spec : Prop :=
  ∀ n, P11448843895247911718.a n = A116556 n

end A116556

/-! ## A116556.P8307878605668668920

`A293007(n+2)-a(n-1)` with `a(0)=0`
-/

namespace A116556.P8307878605668668920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A293007 (n + 2) - a (n - 1)

end

end A116556.P8307878605668668920

namespace A116556

/-- `A293007(n+2)-a(n-1)` -/
def P8307878605668668920.Spec : Prop :=
  ∀ n, P8307878605668668920.a n = A116556 n

end A116556

/-! ## A116556.P7202991783717017464

`A028860(n)+A028859(n)`
-/

namespace A116556.P7202991783717017464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 n + A028859 n

end

end A116556.P7202991783717017464

namespace A116556

/-- `A028860(n)+A028859(n)` -/
def P7202991783717017464.Spec : Prop :=
  ∀ n, P7202991783717017464.a n = A116556 n

end A116556

/-! ## A116556.P7200163627445585173

`A083337(n)+A002605(n)`
-/

namespace A116556.P7200163627445585173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 n + A002605 n

end

end A116556.P7200163627445585173

namespace A116556

/-- `A083337(n)+A002605(n)` -/
def P7200163627445585173.Spec : Prop :=
  ∀ n, P7200163627445585173.a n = A116556 n

end A116556

/-! ## A116556.P10889278963965051922

`A002605(n)+Δ[A026150(n)]`
-/

namespace A116556.P10889278963965051922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n + (f1 (n + 1) - f1 n)

end

end A116556.P10889278963965051922

namespace A116556

/-- `A002605(n)+Δ[A026150(n)]` -/
def P10889278963965051922.Spec : Prop :=
  ∀ n, P10889278963965051922.a n = A116556 n

end A116556

/-! ## A116556.P13010119246161915700

`A002605(n+2)-A080040(n)`
-/

namespace A116556.P13010119246161915700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 2) - A080040 n

end

end A116556.P13010119246161915700

namespace A116556

/-- `A002605(n+2)-A080040(n)` -/
def P13010119246161915700.Spec : Prop :=
  ∀ n, P13010119246161915700.a n = A116556 n

end A116556

/-! ## A116556.P8901475141436170985

`A080040(n)+2*A028860(n)`
-/

namespace A116556.P8901475141436170985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 n + 2 * A028860 n

end

end A116556.P8901475141436170985

namespace A116556

/-- `A080040(n)+2*A028860(n)` -/
def P8901475141436170985.Spec : Prop :=
  ∀ n, P8901475141436170985.a n = A116556 n

end A116556

/-! ## A116556.P13274150168895806569

`2*A028859(n)-A080040(n)`
-/

namespace A116556.P13274150168895806569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028859 n - A080040 n

end

end A116556.P13274150168895806569

namespace A116556

/-- `2*A028859(n)-A080040(n)` -/
def P13274150168895806569.Spec : Prop :=
  ∀ n, P13274150168895806569.a n = A116556 n

end A116556

/-!
# A116557: a(25)=500000, a(n) = floor(a(n+1) * (sqrt(5)-1) / 2).

The programs for A116557, there is no canonical definition to state claims against.
-/

/-! ## A116557.P15021555580401531860

`A005206(A008619(∑[A022113(n)]))`
-/

namespace A116557.P15021555580401531860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A116557.P15021555580401531860

/-! ## A116557.P15770328351280513469

`∑[∑[A122921(A087432(n))]]`
-/

namespace A116557.P15770328351280513469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A087432 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116557.P15770328351280513469

/-! ## A116557.P6271965108449021109

`∑[record[A178786(A174145(n))]]`
-/

namespace A116557.P6271965108449021109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A174145 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116557.P6271965108449021109

/-! ## A116557.P18160805938732979174

`∑[∑[floor(A010101(n+1)/3)]+n+1]`
-/

namespace A116557.P18160805938732979174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010101 (n + 1) : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116557.P18160805938732979174

/-! ## A116557.P14154811028795332001

`A055086(A054888(n))`
-/

namespace A116557.P14154811028795332001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A054888 n).toNat

end

end A116557.P14154811028795332001

/-!
# A116558: a(n) = 6*a(n-4) - a(n-8).

The programs for A116558, the canonical program `A116558.P11988201399129338597` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116558 has offset 0).

The definition of A116558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-4)-a(n-8)` (program `A116558.P11988201399129338597`, by `A116558.P11988201399129338597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116558.P11988201399129338597

`6*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5, a(4)=2, a(5)=5, a(6)=5, a(7)=29`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116558

/-- `6*a(n-4)-a(n-8)` -/
def P11988201399129338597.Spec : Prop :=
  ∀ n, P11988201399129338597.a n = A116558 n

theorem P11988201399129338597.correct : P11988201399129338597.Spec := by
  intro n
  simp only [A116558]

end A116558

/-! ## A116558.P15445959560664934561

`ogf((x+x^2+5x^3+2x^4-x^5-x^6-x^7)/(1-6x^4+x^8))`
-/

namespace A116558.P15445959560664934561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 5, 2, -1, -1, -1] [1, 0, 0, 0, -6, 0, 0, 0, 1] n

end

end A116558.P15445959560664934561

namespace A116558

/-- `ogf((x+x^2+5x^3+2x^4-x^5-x^6-x^7)/(1-6x^4+x^8))` -/
def P15445959560664934561.Spec : Prop :=
  ∀ n, P15445959560664934561.a n = A116558 n

end A116558

/-! ## A116558.P2125985445989286112

`A135153(and(3, n^3)+n)`
-/

namespace A116558.P2125985445989286112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (Nat.land 3 (n ^ 3) + n)

end

end A116558.P2125985445989286112

namespace A116558

/-- `A135153(and(3, n^3)+n)` -/
def P2125985445989286112.Spec : Prop :=
  ∀ n, P2125985445989286112.a n = A116558 n

end A116558

/-! ## A116558.P6829601523103857096

`A135153(or(n+1, n%4))`
-/

namespace A116558.P6829601523103857096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (Nat.lor (n + 1) (n % 4))

end

end A116558.P6829601523103857096

namespace A116558

/-- `A135153(or(n+1, n%4))` -/
def P6829601523103857096.Spec : Prop :=
  ∀ n, P6829601523103857096.a n = A116558 n

end A116558

/-! ## A116558.P5928130306327084731

`A135153(or(n+1, and(2, n)))`
-/

namespace A116558.P5928130306327084731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (Nat.lor (n + 1) (Nat.land 2 n))

end

end A116558.P5928130306327084731

namespace A116558

/-- `A135153(or(n+1, and(2, n)))` -/
def P5928130306327084731.Spec : Prop :=
  ∀ n, P5928130306327084731.a n = A116558 n

end A116558

/-! ## A116558.P18311288858867082171

`A135153(or(n+1, or(1, 1-n)+n))`
-/

namespace A116558.P18311288858867082171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (Int.lor (n + 1 : ℤ) (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ))).toNat

end

end A116558.P18311288858867082171

namespace A116558

/-- `A135153(or(n+1, or(1, 1-n)+n))` -/
def P18311288858867082171.Spec : Prop :=
  ∀ n, P18311288858867082171.a n = A116558 n

end A116558

/-! ## A116558.P7244703027142587118

`A116560(or(A000034(n), 3*(n+1)))`
-/

namespace A116558.P7244703027142587118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (Int.lor (A000034 n) (3 * (n + 1) : ℤ)).toNat

end

end A116558.P7244703027142587118

namespace A116558

/-- `A116560(or(A000034(n), 3*(n+1)))` -/
def P7244703027142587118.Spec : Prop :=
  ∀ n, P7244703027142587118.a n = A116558 n

end A116558

/-! ## A116558.P4749217149067724813

`A000129(or(and(1, n), A004526(n+1)))`
-/

namespace A116558.P4749217149067724813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (Int.lor (Nat.land 1 n : ℤ) (A004526 (n + 1))).toNat

end

end A116558.P4749217149067724813

namespace A116558

/-- `A000129(or(and(1, n), A004526(n+1)))` -/
def P4749217149067724813.Spec : Prop :=
  ∀ n, P4749217149067724813.a n = A116558 n

end A116558

/-!
# A116559: Expansion of g.f. x*(1+x+2*x^2+2*x^3+5*x^4+5*x^5-3*x^6+2*x^7-x^8-x^9)/(1-6*x^6-x^12).

The programs for A116559, the canonical program `A116559.P4451559591364358065` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116559 has offset 0).

The definition of A116559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2+2x^3+2x^4+5x^5+5x^6-3x^7+2x^8-x^9-x^10)/(1-6x^6-x^12))` (program `A116559.P4451559591364358065`, by `A116559.P4451559591364358065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116559.P4451559591364358065

`ogf((x+x^2+2x^3+2x^4+5x^5+5x^6-3x^7+2x^8-x^9-x^10)/(1-6x^6-x^12))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116559

/-- `ogf((x+x^2+2x^3+2x^4+5x^5+5x^6-3x^7+2x^8-x^9-x^10)/(1-6x^6-x^12))` -/
def P4451559591364358065.Spec : Prop :=
  ∀ n, P4451559591364358065.a n = A116559 n

theorem P4451559591364358065.correct : P4451559591364358065.Spec := by
  intro n
  simp only [A116559]

end A116559

/-!
# A116560: Expansion of g.f. x*(1+x+x^4+x^5-x^6+x^8+x^9)/(1-2*x^6-x^12).

The programs for A116560, the canonical program `A116560.P10188528994163705599` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116560 has offset 0).

The definition of A116560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2+x^5+x^6-x^7+x^9+x^10)/(1-2x^6-x^12))` (program `A116560.P10188528994163705599`, by `A116560.P10188528994163705599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116560.P10188528994163705599

`ogf((x+x^2+x^5+x^6-x^7+x^9+x^10)/(1-2x^6-x^12))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116560

/-- `ogf((x+x^2+x^5+x^6-x^7+x^9+x^10)/(1-2x^6-x^12))` -/
def P10188528994163705599.Spec : Prop :=
  ∀ n, P10188528994163705599.a n = A116560 n

theorem P10188528994163705599.correct : P10188528994163705599.Spec := by
  intro n
  simp only [A116560]

end A116560

/-! ## A116560.P12017395937155570665

`A081603(A062860(n)-A062756(3*(n+1)))`
-/

namespace A116560.P12017395937155570665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A062860 n - A062756 (3 * (n + 1))).toNat

end

end A116560.P12017395937155570665

namespace A116560

/-- `A081603(A062860(n)-A062756(3*(n+1)))` -/
def P12017395937155570665.Spec : Prop :=
  ∀ n, P12017395937155570665.a n = A116560 n

end A116560

/-!
# A116561: Expansion of g.f. x*(1 +4*x +4*x^2 +18*x^3 +7*x^4 +7*x^5 -2*x^6 -x^7 -x^8 -x^9) / (1-20*x^6+x^12).

The programs for A116561, the canonical program `A116561.P13793146744770432234` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116561 has offset 0).

The definition of A116561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+4x^2+4x^3+18x^4+7x^5+7x^6-2x^7-x^8-x^9-x^10)/(1-20x^6+x^12))` (program `A116561.P13793146744770432234`, by `A116561.P13793146744770432234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116561.P13793146744770432234

`ogf((x+4x^2+4x^3+18x^4+7x^5+7x^6-2x^7-x^8-x^9-x^10)/(1-20x^6+x^12))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116561

/-- `ogf((x+4x^2+4x^3+18x^4+7x^5+7x^6-2x^7-x^8-x^9-x^10)/(1-20x^6+x^12))` -/
def P13793146744770432234.Spec : Prop :=
  ∀ n, P13793146744770432234.a n = A116561 n

theorem P13793146744770432234.correct : P13793146744770432234.Spec := by
  intro n
  simp only [A116561]

end A116561

/-!
# A116563: a(n) is the genus of the modular curve X_0(p) for p = prime(n).

The programs for A116563, the canonical program `A116563.P2597294203523295225` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116563 has offset 1).

The definition of A116563 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001617, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116563.P2597294203523295225

`A001617(A000040(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A116563

/-- `A001617(A000040(n+1))` -/
def P2597294203523295225.Spec : Prop :=
  ∀ n, P2597294203523295225.a n = A116563 (n + 1)

theorem P2597294203523295225.correct : P2597294203523295225.Spec := by
  intro n
  simp only [A116563, Nat.add_sub_cancel]

end A116563

/-! ## A116563.P14881316904999502715

`A001617(A006005(n+1))`
-/

namespace A116563.P14881316904999502715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A006005 (n + 1)).toNat

end

end A116563.P14881316904999502715

namespace A116563

/-- `A001617(A006005(n+1))` -/
def P14881316904999502715.Spec : Prop :=
  ∀ n, P14881316904999502715.a n = A116563 (n + 1)

end A116563

/-! ## A116563.P8276276169772553904

`A001617(A161847(n+1))`
-/

namespace A116563.P8276276169772553904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A161847 (n + 1)).toNat

end

end A116563.P8276276169772553904

namespace A116563

/-- `A001617(A161847(n+1))` -/
def P8276276169772553904.Spec : Prop :=
  ∀ n, P8276276169772553904.a n = A116563 (n + 1)

end A116563

/-! ## A116563.P12499541979932664371

`A001617(A008578(n+2))`
-/

namespace A116563.P12499541979932664371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A008578 (n + 2)).toNat

end

end A116563.P12499541979932664371

namespace A116563

/-- `A001617(A008578(n+2))` -/
def P12499541979932664371.Spec : Prop :=
  ∀ n, P12499541979932664371.a n = A116563 (n + 1)

end A116563

/-! ## A116563.P12480904826972970801

`A001617(A075643(n+2))`
-/

namespace A116563.P12480904826972970801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A075643 (n + 2)).toNat

end

end A116563.P12480904826972970801

namespace A116563

/-- `A001617(A075643(n+2))` -/
def P12480904826972970801.Spec : Prop :=
  ∀ n, P12480904826972970801.a n = A116563 (n + 1)

end A116563

/-! ## A116563.P14613441803175909702

`A127788(A000040(1+n))`
-/

namespace A116563.P14613441803175909702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127788 (A000040 (1 + n)).toNat

end

end A116563.P14613441803175909702

namespace A116563

/-- `A127788(A000040(1+n))` -/
def P14613441803175909702.Spec : Prop :=
  ∀ n, P14613441803175909702.a n = A116563 (n + 1)

end A116563

/-! ## A116563.P15560396960252242477

`A271484(A006093(n+1))`
-/

namespace A116563.P15560396960252242477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (A006093 (n + 1)).toNat

end

end A116563.P15560396960252242477

namespace A116563

/-- `A271484(A006093(n+1))` -/
def P15560396960252242477.Spec : Prop :=
  ∀ n, P15560396960252242477.a n = A116563 (n + 1)

end A116563

/-! ## A116563.P8456146015125169242

`A271484(A039915(n+1))`
-/

namespace A116563.P8456146015125169242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (A039915 (n + 1)).toNat

end

end A116563.P8456146015125169242

namespace A116563

/-- `A271484(A039915(n+1))` -/
def P8456146015125169242.Spec : Prop :=
  ∀ n, P8456146015125169242.a n = A116563 (n + 1)

end A116563

/-! ## A116563.P7825516993645192866

`A271484(A156037(n+1))`
-/

namespace A116563.P7825516993645192866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (A156037 (n + 1)).toNat

end

end A116563.P7825516993645192866

namespace A116563

/-- `A271484(A156037(n+1))` -/
def P7825516993645192866.Spec : Prop :=
  ∀ n, P7825516993645192866.a n = A116563 (n + 1)

end A116563

/-! ## A116563.P5008103729267150930

`A127788(A072900(n+1))`
-/

namespace A116563.P5008103729267150930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127788 (A072900 (n + 1)).toNat

end

end A116563.P5008103729267150930

namespace A116563

/-- `A127788(A072900(n+1))` -/
def P5008103729267150930.Spec : Prop :=
  ∀ n, P5008103729267150930.a n = A116563 (n + 1)

end A116563

/-!
# A116564: Ono supersingular invariant power function.

The programs for A116564, there is no canonical definition to state claims against.
-/

/-! ## A116564.P14632599845734432897

`2*C(A116563(n+3), 2)`
-/

namespace A116564.P14632599845734432897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A116563 (n + 3)).toNat 2

end

end A116564.P14632599845734432897

/-! ## A116564.P3580319696015036135

`A002061(A116563(n+3))-1`
-/

namespace A116564.P3580319696015036135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A116563 (n + 3)).toNat - 1

end

end A116564.P3580319696015036135

/-! ## A116564.P9693729271342238876

`A005843(C(A116563(n+3), 2))`
-/

namespace A116564.P9693729271342238876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Nat.choose (A116563 (n + 3)).toNat 2)

end

end A116564.P9693729271342238876

/-! ## A116564.P15127461802590507493

`2*C(A001617(A000040(n+3)), 2)`
-/

namespace A116564.P15127461802590507493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A001617 (A000040 (n + 3)).toNat).toNat 2

end

end A116564.P15127461802590507493

/-! ## A116564.P16415363955755163210

`2*C(A001617(record[A006530(n+5)]), 2)`
-/

namespace A116564.P16415363955755163210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A001617 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 2

end

end A116564.P16415363955755163210

/-!
# A116565: Hexagonal numbers whose number of divisors is also a hexagonal number.

The programs for A116565, there is no canonical definition to state claims against.
-/

/-! ## A116565.P2321251759405720536

`∩[A230843(n+1), A000384(n)]`
-/

namespace A116565.P2321251759405720536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116565.P2321251759405720536

/-! ## A116565.P8118566462234428813

`filter[A162947(n+1), A132918(#)]`
-/

namespace A116565.P8118566462234428813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132918 (f1 j).toNat = 1) n)

end

end A116565.P8118566462234428813

/-! ## A116565.P4152824927968810966

`∩[A000384(n), A162947(n+1)]`
-/

namespace A116565.P4152824927968810966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116565.P4152824927968810966

/-!
# A116567: a(n) = +1476*a(n-6) +46656*a(n-12).

The programs for A116567, there is no canonical definition to state claims against.
-/

/-! ## A116567.P11370820395923899788

`A132883(A000108(n))-A062162(n)`
-/

namespace A116567.P11370820395923899788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132883 (A000108 n).toNat - A062162 n

end

end A116567.P11370820395923899788

/-! ## A116567.P13203793474332369940

`A003963(A213100(n))-A320322(n)`
-/

namespace A116567.P13203793474332369940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A213100 n).toNat - A320322 n

end

end A116567.P13203793474332369940

/-!
# A116568: Difference between n and the absolute value of the difference between number of nonprimes not exceeding n and number of primes not exceeding n.

The programs for A116568, the canonical program `A116568.P1270163907824059920` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116568 has offset 1).

The definition of A116568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116568.P1270163907824059920

`n+1-abs(A097454(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A116568

/-- `n+1-abs(A097454(n+1))` -/
def P1270163907824059920.Spec : Prop :=
  ∀ n, P1270163907824059920.a n = A116568 (n + 1)

theorem P1270163907824059920.correct : P1270163907824059920.Spec := by
  intro n
  simp only [A116568, Nat.add_sub_cancel]

end A116568

/-! ## A116568.P269880762963046215

`n+1-abs(2*A000720(n+1)-(n+1))`
-/

namespace A116568.P269880762963046215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |2 * A000720 (n + 1) - (n + 1 : ℤ)|

end

end A116568.P269880762963046215

namespace A116568

/-- `n+1-abs(2*A000720(n+1)-(n+1))` -/
def P269880762963046215.Spec : Prop :=
  ∀ n, P269880762963046215.a n = A116568 (n + 1)

end A116568

/-! ## A116568.P1460846526670126792

`1-abs(A097454(n+1))+n`
-/

namespace A116568.P1460846526670126792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A097454 (n + 1)| + (n : ℤ)

end

end A116568.P1460846526670126792

namespace A116568

/-- `1-abs(A097454(n+1))+n` -/
def P1460846526670126792.Spec : Prop :=
  ∀ n, P1460846526670126792.a n = A116568 (n + 1)

theorem P1460846526670126792.correct : P1460846526670126792.Spec := by
  intro n
  simp only [A116568, Nat.add_sub_cancel, A116568.P1460846526670126792.a, A116568.P1270163907824059920.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116568

/-! ## A116568.P14738281682696874392

`n+1-abs(1+A072731(n+1))`
-/

namespace A116568.P14738281682696874392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |1 + A072731 (n + 1)|

end

end A116568.P14738281682696874392

namespace A116568

/-- `n+1-abs(1+A072731(n+1))` -/
def P14738281682696874392.Spec : Prop :=
  ∀ n, P14738281682696874392.a n = A116568 (n + 1)

end A116568

/-! ## A116568.P10544829722310435995

`2*round(n/(n+1)*A000720(n+1))`
-/

namespace A116568.P10544829722310435995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ) * (A000720 (n + 1) : ℚ))

end

end A116568.P10544829722310435995

namespace A116568

/-- `2*round(n/(n+1)*A000720(n+1))` -/
def P10544829722310435995.Spec : Prop :=
  ∀ n, P10544829722310435995.a n = A116568 (n + 1)

end A116568

/-! ## A116568.P17417209748159578308

`n+1-abs(A000720(n+1)-A062298(n+1))`
-/

namespace A116568.P17417209748159578308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |A000720 (n + 1) - A062298 (n + 1)|

end

end A116568.P17417209748159578308

namespace A116568

/-- `n+1-abs(A000720(n+1)-A062298(n+1))` -/
def P17417209748159578308.Spec : Prop :=
  ∀ n, P17417209748159578308.a n = A116568 (n + 1)

end A116568

/-! ## A116568.P3313596423484463927

`n+1-abs(1-(A000720(n+1)-A065855(n+1)))`
-/

namespace A116568.P3313596423484463927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |1 - (A000720 (n + 1) - A065855 (n + 1))|

end

end A116568.P3313596423484463927

namespace A116568

/-- `n+1-abs(1-(A000720(n+1)-A065855(n+1)))` -/
def P3313596423484463927.Spec : Prop :=
  ∀ n, P3313596423484463927.a n = A116568 (n + 1)

theorem P3313596423484463927.correct : P3313596423484463927.Spec := by
  intro n
  simp only [A116568, Nat.add_sub_cancel, A116568.P3313596423484463927.a, A116568.P1270163907824059920.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A097454, A097454.P2717210328983116484.a, A062298, A062298.P8226643735375377344.a, A072731, A072731.P11631103641081885778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116568

/-! ## A116568.P6813041675606476816

`2*A000720(n-char[A276142(A276142(n+1)+1)]+1)`
-/

namespace A116568.P6813041675606476816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276142 (A276142 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000720 ((n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A116568.P6813041675606476816

namespace A116568

/-- `2*A000720(n-char[A276142(A276142(n+1)+1)]+1)` -/
def P6813041675606476816.Spec : Prop :=
  ∀ n, P6813041675606476816.a n = A116568 (n + 1)

end A116568

/-! ## A116568.P7750006097814720848

`and(-2, A210535(A256885(n+1)))`
-/

namespace A116568.P7750006097814720848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A210535 (A256885 (n + 1)).toNat)

end

end A116568.P7750006097814720848

namespace A116568

/-- `and(-2, A210535(A256885(n+1)))` -/
def P7750006097814720848.Spec : Prop :=
  ∀ n, P7750006097814720848.a n = A116568 (n + 1)

end A116568

/-! ## A116568.P12010258474761142387

`A157454(∑[A010051(n+1)+n+1]+1)-1`
-/

namespace A116568.P12010258474761142387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - 1

end

end A116568.P12010258474761142387

namespace A116568

/-- `A157454(∑[A010051(n+1)+n+1]+1)-1` -/
def P12010258474761142387.Spec : Prop :=
  ∀ n, P12010258474761142387.a n = A116568 (n + 1)

end A116568

/-! ## A116568.P12259950500670928503

`n+1-A049581(∑[A010051(n+1)+n+1])`
-/

namespace A116568.P12259950500670928503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116568.P12259950500670928503

namespace A116568

/-- `n+1-A049581(∑[A010051(n+1)+n+1])` -/
def P12259950500670928503.Spec : Prop :=
  ∀ n, P12259950500670928503.a n = A116568 (n + 1)

end A116568

/-! ## A116568.P4917047495297348994

`A052928(A210535(A256885(n+1)))`
-/

namespace A116568.P4917047495297348994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A210535 (A256885 (n + 1)).toNat).toNat

end

end A116568.P4917047495297348994

namespace A116568

/-- `A052928(A210535(A256885(n+1)))` -/
def P4917047495297348994.Spec : Prop :=
  ∀ n, P4917047495297348994.a n = A116568 (n + 1)

end A116568

/-!
# A116569: a(n) = (x^3 - x) / 6, where x is the genus of the modular curve X_0(p) for p = prime(n).

The programs for A116569, the canonical program `A116569.P3485505582268508162` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116569 has offset 1).

The definition of A116569 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116563, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116569.P3485505582268508162

`(A116563(n+1)^3-A116563(n+1))/6`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A116569

/-- `(A116563(n+1)^3-A116563(n+1))/6` -/
def P3485505582268508162.Spec : Prop :=
  ∀ n, P3485505582268508162.a n = (A116569 (n + 1) : ℚ)

end A116569

/-! ## A116569.P14300391322260303743

`C(A116563(n+1)+1, 3)`
-/

namespace A116569.P14300391322260303743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A116563 (n + 1) + 1).toNat 3

end

end A116569.P14300391322260303743

namespace A116569

/-- `C(A116563(n+1)+1, 3)` -/
def P14300391322260303743.Spec : Prop :=
  ∀ n, (P14300391322260303743.a n : ℤ) = A116569 (n + 1)

end A116569

/-! ## A116569.P17923539797859939436

`C(A008612(A111333(n+1)), 3)`
-/

namespace A116569.P17923539797859939436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008612 (A111333 (n + 1)).toNat).toNat 3

end

end A116569.P17923539797859939436

namespace A116569

/-- `C(A008612(A111333(n+1)), 3)` -/
def P17923539797859939436.Spec : Prop :=
  ∀ n, (P17923539797859939436.a n : ℤ) = A116569 (n + 1)

end A116569

/-! ## A116569.P2449492673687349542

`C(A008647(p?[abs(2*n-3)]+1), 3)`
-/

namespace A116569.P2449492673687349542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008647 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat).toNat 3

end

end A116569.P2449492673687349542

namespace A116569

/-- `C(A008647(p?[abs(2*n-3)]+1), 3)` -/
def P2449492673687349542.Spec : Prop :=
  ∀ n, (P2449492673687349542.a n : ℤ) = A116569 (n + 1)

end A116569

/-! ## A116569.P16387074495667337439

`C(A081753(p?[abs(2*n-3)]+1), 3)`
-/

namespace A116569.P16387074495667337439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A081753 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat).toNat 3

end

end A116569.P16387074495667337439

namespace A116569

/-- `C(A081753(p?[abs(2*n-3)]+1), 3)` -/
def P16387074495667337439.Spec : Prop :=
  ∀ n, (P16387074495667337439.a n : ℤ) = A116569 (n + 1)

end A116569

/-! ## A116569.P5105362802459352131

`C(A008679(p?[round(8*n/7)]+1), 3)`
-/

namespace A116569.P5105362802459352131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008679 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat).toNat 3

end

end A116569.P5105362802459352131

namespace A116569

/-- `C(A008679(p?[round(8*n/7)]+1), 3)` -/
def P5105362802459352131.Spec : Prop :=
  ∀ n, (P5105362802459352131.a n : ℤ) = A116569 (n + 1)

end A116569

/-! ## A116569.P15390681790803535993

`C(A111248(Δ[A007504(n)]), 3)`
-/

namespace A116569.P15390681790803535993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111248 (f1 (n + 1) - f1 n).toNat).toNat 3

end

end A116569.P15390681790803535993

namespace A116569

/-- `C(A111248(Δ[A007504(n)]), 3)` -/
def P15390681790803535993.Spec : Prop :=
  ∀ n, (P15390681790803535993.a n : ℤ) = A116569 (n + 1)

end A116569

/-! ## A116569.P10412735152846256029

`C(A008647(A008864(n+1)), 3)`
-/

namespace A116569.P10412735152846256029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008647 (A008864 (n + 1)).toNat).toNat 3

end

end A116569.P10412735152846256029

namespace A116569

/-- `C(A008647(A008864(n+1)), 3)` -/
def P10412735152846256029.Spec : Prop :=
  ∀ n, (P10412735152846256029.a n : ℤ) = A116569 (n + 1)

end A116569

/-! ## A116569.P7158808649699578073

`C(A008647(A055670(n+1)), 3)`
-/

namespace A116569.P7158808649699578073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008647 (A055670 (n + 1)).toNat).toNat 3

end

end A116569.P7158808649699578073

namespace A116569

/-- `C(A008647(A055670(n+1)), 3)` -/
def P7158808649699578073.Spec : Prop :=
  ∀ n, (P7158808649699578073.a n : ℤ) = A116569 (n + 1)

end A116569

/-! ## A116569.P11380134970476972813

`C(A008647(A000040(n+1)+1), 3)`
-/

namespace A116569.P11380134970476972813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008647 (A000040 (n + 1) + 1).toNat).toNat 3

end

end A116569.P11380134970476972813

namespace A116569

/-- `C(A008647(A000040(n+1)+1), 3)` -/
def P11380134970476972813.Spec : Prop :=
  ∀ n, (P11380134970476972813.a n : ℤ) = A116569 (n + 1)

end A116569

/-! ## A116569.P2510282043315678604

`C(A008679(A000040(n+1)+1), 3)`
-/

namespace A116569.P2510282043315678604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008679 (A000040 (n + 1) + 1).toNat).toNat 3

end

end A116569.P2510282043315678604

namespace A116569

/-- `C(A008679(A000040(n+1)+1), 3)` -/
def P2510282043315678604.Spec : Prop :=
  ∀ n, (P2510282043315678604.a n : ℤ) = A116569 (n + 1)

end A116569

/-! ## A116569.P12859232501638770502

`C(A008679(record[A014963(n+2)]+1), 3)`
-/

namespace A116569.P12859232501638770502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008679 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat).toNat 3

end

end A116569.P12859232501638770502

namespace A116569

/-- `C(A008679(record[A014963(n+2)]+1), 3)` -/
def P12859232501638770502.Spec : Prop :=
  ∀ n, (P12859232501638770502.a n : ℤ) = A116569 (n + 1)

end A116569

/-!
# A116570: a(2*n) = prime(n+1) * prime(n+2), a(2*n-1) = prime(n+1).

The programs for A116570, the canonical program `A116570.P13366081958881133163` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116570 has offset 0).

The definition of A116570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116570.P11090910238192396515

`A333747(n+1)%A152530(A008619(n))`
-/

namespace A116570.P11090910238192396515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333747 (n + 1)) (A152530 (A008619 n).toNat)

end

end A116570.P11090910238192396515

namespace A116570

/-- `A333747(n+1)%A152530(A008619(n))` -/
def P11090910238192396515.Spec : Prop :=
  ∀ n, P11090910238192396515.a n = A116570 n

end A116570

/-! ## A116570.P13366081958881133163

`A006094(A008619(n+1))%A037166(A008619(n)+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A116570

/-- `A006094(A008619(n+1))%A037166(A008619(n)+1)` -/
def P13366081958881133163.Spec : Prop :=
  ∀ n, P13366081958881133163.a n = A116570 n

theorem P13366081958881133163.correct : P13366081958881133163.Spec := by
  intro n
  simp only [A116570]

end A116570

/-! ## A116570.P9953582147054704185

`sqrt(A057602(n+3)^A134451(n+2))`
-/

namespace A116570.P9953582147054704185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A057602 (n + 3) : ℚ) ^ (A134451 (n + 2) : ℤ) : ℝ)

end

end A116570.P9953582147054704185

namespace A116570

/-- `sqrt(A057602(n+3)^A134451(n+2))` -/
def P9953582147054704185.Spec : Prop :=
  ∀ n, P9953582147054704185.a n = (A116570 n : ℝ)

end A116570

/-! ## A116570.P16470887753592151943

`A057602(n+3)/gcd(A057602(n+2), A057602(n+4))`
-/

namespace A116570.P16470887753592151943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057602 (n + 3) : ℚ) / (Int.gcd (A057602 (n + 2)) (A057602 (n + 4)) : ℚ)

end

end A116570.P16470887753592151943

namespace A116570

/-- `A057602(n+3)/gcd(A057602(n+2), A057602(n+4))` -/
def P16470887753592151943.Spec : Prop :=
  ∀ n, P16470887753592151943.a n = (A116570 n : ℚ)

end A116570

/-! ## A116570.P15657703912534244853

`gcd(A057602(A083219(2*n+3)), A057602(n+3))`
-/

namespace A116570.P15657703912534244853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057602 (A083219 (2 * n + 3)).toNat) (A057602 (n + 3))

end

end A116570.P15657703912534244853

namespace A116570

/-- `gcd(A057602(A083219(2*n+3)), A057602(n+3))` -/
def P15657703912534244853.Spec : Prop :=
  ∀ n, (P15657703912534244853.a n : ℤ) = A116570 n

end A116570

/-! ## A116570.P9503602922660832463

`∏{p}[A033476(n+1), #]`
-/

namespace A116570.P9503602922660832463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A116570.P9503602922660832463

namespace A116570

/-- `∏{p}[A033476(n+1), #]` -/
def P9503602922660832463.Spec : Prop :=
  ∀ n, (P9503602922660832463.a n : ℤ) = A116570 n

end A116570

/-! ## A116570.P14620671199051107402

`∏{p}[A057602(n+3), #]`
-/

namespace A116570.P14620671199051107402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A116570.P14620671199051107402

namespace A116570

/-- `∏{p}[A057602(n+3), #]` -/
def P14620671199051107402.Spec : Prop :=
  ∀ n, (P14620671199051107402.a n : ℤ) = A116570 n

end A116570

/-! ## A116570.P8136584954841819325

`lcm(A006530(a(n-1)), p?[or(1, n)])` with `a(0)=6`
-/

namespace A116570.P8136584954841819325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Int.lcm (A006530 (a (n - 1))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A116570.P8136584954841819325

namespace A116570

/-- `lcm(A006530(a(n-1)), p?[or(1, n)])` -/
def P8136584954841819325.Spec : Prop :=
  ∀ n, (P8136584954841819325.a n : ℤ) = A116570 n

end A116570

/-! ## A116570.P1072384798533790465

`A007947(A033476(n+1))`
-/

namespace A116570.P1072384798533790465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A033476 (n + 1)).toNat

end

end A116570.P1072384798533790465

namespace A116570

/-- `A007947(A033476(n+1))` -/
def P1072384798533790465.Spec : Prop :=
  ∀ n, P1072384798533790465.a n = A116570 n

end A116570

/-!
# A116571: Coefficient expansion of wfunction based on prime genus weight function.

The programs for A116571, there is no canonical definition to state claims against.
-/

/-! ## A116571.P5059683193711215804

`6*A116569(n+9)`
-/

namespace A116571.P5059683193711215804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A116569 (n + 9)

end

end A116571.P5059683193711215804

/-! ## A116571.P11422962968995978484

`A008458(A116569(n+9))`
-/

namespace A116571.P11422962968995978484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A116569 (n + 9)).toNat

end

end A116571.P11422962968995978484

/-! ## A116571.P3991640939468623502

`A000578(A076695(n+4))-A076695(n+4)`
-/

namespace A116571.P3991640939468623502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A076695 (n + 4)).toNat - A076695 (n + 4)

end

end A116571.P3991640939468623502

/-! ## A116571.P3527961770299259324

`A008486(A116569(n+9)+A116569(n+9))`
-/

namespace A116571.P3527961770299259324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A116569 (n + 9) + A116569 (n + 9)).toNat

end

end A116571.P3527961770299259324

/-! ## A116571.P7984745121822865843

`A008585(A116569(n+9)+A116569(n+9))`
-/

namespace A116571.P7984745121822865843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A116569 (n + 9) + A116569 (n + 9)).toNat

end

end A116571.P7984745121822865843

/-!
# A116572: a(n) = floor(prime(n)/5) for n > 2, a(1) = a(2) = 1.

The programs for A116572, the canonical program `A116572.P3284969235691833188` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116572 has offset 1).

The definition of A116572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116572.P3284969235691833188

`ceil(abs(4-A000040(n+1))/5)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116572

/-- `ceil(abs(4-A000040(n+1))/5)` -/
def P3284969235691833188.Spec : Prop :=
  ∀ n, P3284969235691833188.a n = A116572 (n + 1)

theorem P3284969235691833188.correct : P3284969235691833188.Spec := by
  intro n
  simp only [A116572, Nat.add_sub_cancel]

end A116572

/-! ## A116572.P17877875634970960160

`floor(record[(n+1)/A115839(A001222(n+1)+1)])`
-/

namespace A116572.P17877875634970960160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A115839 (A001222 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A116572.P17877875634970960160

namespace A116572

/-- `floor(record[(n+1)/A115839(A001222(n+1)+1)])` -/
def P17877875634970960160.Spec : Prop :=
  ∀ n, P17877875634970960160.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P17876463627875990330

`A028310(ceil(A000040(n+1)/5)-1)`
-/

namespace A116572.P17876463627875990330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (⌈(A000040 (n + 1) : ℚ) / 5⌉ - 1).toNat

end

end A116572.P17876463627875990330

namespace A116572

/-- `A028310(ceil(A000040(n+1)/5)-1)` -/
def P17876463627875990330.Spec : Prop :=
  ∀ n, P17876463627875990330.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P6873560178831271312

`ceil(record[n+1-A000203(3*(n+1))/5])`
-/

namespace A116572.P6873560178831271312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A000203 (3 * (n + 1)) : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A116572.P6873560178831271312

namespace A116572

/-- `ceil(record[n+1-A000203(3*(n+1))/5])` -/
def P6873560178831271312.Spec : Prop :=
  ∀ n, P6873560178831271312.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P4731871893970927744

`floor(A006530(A001750(n+1))/5)`
-/

namespace A116572.P4731871893970927744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (A001750 (n + 1)).toNat : ℚ) / 5⌋

end

end A116572.P4731871893970927744

namespace A116572

/-- `floor(A006530(A001750(n+1))/5)` -/
def P4731871893970927744.Spec : Prop :=
  ∀ n, P4731871893970927744.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P15035590366147262714

`floor(A006530(5*A000040(n+1))/5)`
-/

namespace A116572.P15035590366147262714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (5 * A000040 (n + 1)).toNat : ℚ) / 5⌋

end

end A116572.P15035590366147262714

namespace A116572

/-- `floor(A006530(5*A000040(n+1))/5)` -/
def P15035590366147262714.Spec : Prop :=
  ∀ n, P15035590366147262714.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P8819102357045989849

`floor(A006530(A078287(n+1))/5)`
-/

namespace A116572.P8819102357045989849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (A078287 (n + 1)).toNat : ℚ) / 5⌋

end

end A116572.P8819102357045989849

namespace A116572

/-- `floor(A006530(A078287(n+1))/5)` -/
def P8819102357045989849.Spec : Prop :=
  ∀ n, P8819102357045989849.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P8923222502686037994

`A002266(A161428(n+2))`
-/

namespace A116572.P8923222502686037994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A161428 (n + 2)).toNat

end

end A116572.P8923222502686037994

namespace A116572

/-- `A002266(A161428(n+2))` -/
def P8923222502686037994.Spec : Prop :=
  ∀ n, P8923222502686037994.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P9008902285699579353

`A065033(A057354(record[A007431(n)]))`
-/

namespace A116572.P9008902285699579353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A057354 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A116572.P9008902285699579353

namespace A116572

/-- `A065033(A057354(record[A007431(n)]))` -/
def P9008902285699579353.Spec : Prop :=
  ∀ n, P9008902285699579353.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P17130760479802888372

`A059995(A161425(n+2))`
-/

namespace A116572.P17130760479802888372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A161425 (n + 2)).toNat

end

end A116572.P17130760479802888372

namespace A116572

/-- `A059995(A161425(n+2))` -/
def P17130760479802888372.Spec : Prop :=
  ∀ n, P17130760479802888372.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P5083051345680299635

`A008616(A266249(p?[A006368(n)]))`
-/

namespace A116572.P5083051345680299635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A266249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A116572.P5083051345680299635

namespace A116572

/-- `A008616(A266249(p?[A006368(n)]))` -/
def P5083051345680299635.Spec : Prop :=
  ∀ n, P5083051345680299635.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P8601975630631287437

`A008616(A266249(p?[A014681(n)]))`
-/

namespace A116572.P8601975630631287437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A266249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A116572.P8601975630631287437

namespace A116572

/-- `A008616(A266249(p?[A014681(n)]))` -/
def P8601975630631287437.Spec : Prop :=
  ∀ n, P8601975630631287437.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P16149537627012401000

`A008616(A266249(p?[A110514(n)]))`
-/

namespace A116572.P16149537627012401000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A266249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A116572.P16149537627012401000

namespace A116572

/-- `A008616(A266249(p?[A110514(n)]))` -/
def P16149537627012401000.Spec : Prop :=
  ∀ n, P16149537627012401000.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P14113196964131803278

`A008616(A161344(n+2))-A008683(A161344(2*n+1))`
-/

namespace A116572.P14113196964131803278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A161344 (n + 2)).toNat - A008683 (A161344 (2 * n + 1)).toNat

end

end A116572.P14113196964131803278

namespace A116572

/-- `A008616(A161344(n+2))-A008683(A161344(2*n+1))` -/
def P14113196964131803278.Spec : Prop :=
  ∀ n, P14113196964131803278.a n = A116572 (n + 1)

end A116572

/-! ## A116572.P6841955585606460345

`A008616(A266249(p?[A213714(n)]))`
-/

namespace A116572.P6841955585606460345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A266249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A116572.P6841955585606460345

namespace A116572

/-- `A008616(A266249(p?[A213714(n)]))` -/
def P6841955585606460345.Spec : Prop :=
  ∀ n, P6841955585606460345.a n = A116572 (n + 1)

end A116572

/-!
# A116574: A Binet type formula from a polynomial whose coefficient expansion gives a tribonacci used as it first derivative InverseZtransform: A000073.

The programs for A116574, there is no canonical definition to state claims against.
-/

/-! ## A116574.P13662092928660259605

`A199898(n+4)²%A049475(n+1)`
-/

namespace A116574.P13662092928660259605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199898 (n + 4) ^ 2) (A049475 (n + 1))

end

end A116574.P13662092928660259605

/-! ## A116574.P11091124251248600040

`A370232(3*n+1)%A008679(A097164(2*(n+1)))`
-/

namespace A116574.P11091124251248600040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370232 (3 * n + 1)) (A008679 (A097164 (2 * (n + 1))).toNat)

end

end A116574.P11091124251248600040

/-!
# A116575: a(0) = 0; a(1) = a(2) = 1; for n > 2: a(n) = a(a(n-2)) + a(n-1 - abs(a(n-1) - a(n-2))) if a(n-2) < n, a(n) = 0 otherwise.

The programs for A116575, there is no canonical definition to state claims against.
-/

/-! ## A116575.P6615726850509954470

`A351290(n+1)-A001221(A005409(n+1))`
-/

namespace A116575.P6615726850509954470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (n + 1) - A001221 (A005409 (n + 1)).toNat

end

end A116575.P6615726850509954470

/-! ## A116575.P7365007975936589358

`A374249(n+1)-A001221(A005409(n+1))`
-/

namespace A116575.P7365007975936589358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (n + 1) - A001221 (A005409 (n + 1)).toNat

end

end A116575.P7365007975936589358

/-! ## A116575.P388225831417146196

`comp[A111745(2*(n+2))]-A001221(A005409(n+1))`
-/

namespace A116575.P388225831417146196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111745 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A001221 (A005409 (n + 1)).toNat

end

end A116575.P388225831417146196

/-!
# A116576: Number of distinct squares D(n) in the n-th iterate of the tribonacci morphism (a -> ab, b -> ac, c -> a) on the letter a.

The programs for A116576, the canonical program `A116576.P8299248494025184444` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116576 has offset 4).

The definition of A116576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116576.P10469638233984284144

`ogf((2+x-2x^3)/(1-3x+2x^2+x^4-x^5))`
-/

namespace A116576.P10469638233984284144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 0, -2] [1, -3, 2, 0, 1, -1] n

end

end A116576.P10469638233984284144

namespace A116576

/-- `ogf((2+x-2x^3)/(1-3x+2x^2+x^4-x^5))` -/
def P10469638233984284144.Spec : Prop :=
  ∀ n, P10469638233984284144.a n = A116576 (n + 4)

end A116576

/-! ## A116576.P8299248494025184444

`∑[∑[record[A276658(n+1)]]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116576

/-- `∑[∑[record[A276658(n+1)]]]` -/
def P8299248494025184444.Spec : Prop :=
  ∀ n, P8299248494025184444.a n = A116576 (n + 4)

theorem P8299248494025184444.correct : P8299248494025184444.Spec := by
  intro n
  simp only [A116576, Nat.add_sub_cancel]

end A116576

/-! ## A116576.P14884207314361236476

`∑[∑[A276658(n+2)]+2]`
-/

namespace A116576.P14884207314361236476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116576.P14884207314361236476

namespace A116576

/-- `∑[∑[A276658(n+2)]+2]` -/
def P14884207314361236476.Spec : Prop :=
  ∀ n, P14884207314361236476.a n = A116576 (n + 4)

end A116576

/-! ## A116576.P12012715468465477991

`A062544(n)+A027083(n+2)`
-/

namespace A116576.P12012715468465477991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 n + A027083 (n + 2)

end

end A116576.P12012715468465477991

namespace A116576

/-- `A062544(n)+A027083(n+2)` -/
def P12012715468465477991.Spec : Prop :=
  ∀ n, P12012715468465477991.a n = A116576 (n + 4)

end A116576

/-! ## A116576.P3135536303695307233

`∑[∑[A276658(A065475(n+1))]]`
-/

namespace A116576.P3135536303695307233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (A065475 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116576.P3135536303695307233

namespace A116576

/-- `∑[∑[A276658(A065475(n+1))]]` -/
def P3135536303695307233.Spec : Prop :=
  ∀ n, P3135536303695307233.a n = A116576 (n + 4)

end A116576

/-! ## A116576.P10807076951222636414

`∑[∑[A276658(A040000(n)+n)]]`
-/

namespace A116576.P10807076951222636414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (A040000 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116576.P10807076951222636414

namespace A116576

/-- `∑[∑[A276658(A040000(n)+n)]]` -/
def P10807076951222636414.Spec : Prop :=
  ∀ n, P10807076951222636414.a n = A116576 (n + 4)

end A116576

/-! ## A116576.P15909819276089062599

`A027024(n+2)+A007800(n+1)`
-/

namespace A116576.P15909819276089062599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027024 (n + 2) + A007800 (n + 1)

end

end A116576.P15909819276089062599

namespace A116576

/-- `A027024(n+2)+A007800(n+1)` -/
def P15909819276089062599.Spec : Prop :=
  ∀ n, P15909819276089062599.a n = A116576 (n + 4)

end A116576

/-!
# A116579: a(1) = a(2) = 1; a(n) = floor(prime(n)/6) for n > 2.

The programs for A116579, the canonical program `A116579.P1934188919371270679` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116579 has offset 1).

The definition of A116579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116579.P1934188919371270679

`floor(A000040(abs(2-n)+3)/6)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116579

/-- `floor(A000040(abs(2-n)+3)/6)` -/
def P1934188919371270679.Spec : Prop :=
  ∀ n, P1934188919371270679.a n = A116579 (n + 1)

theorem P1934188919371270679.correct : P1934188919371270679.Spec := by
  intro n
  simp only [A116579, Nat.add_sub_cancel]

end A116579

/-! ## A116579.P790903741336289133

`ceil(abs(5-∑[A054541(n+1)])/6)`
-/

namespace A116579.P790903741336289133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((|5 - ∑ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 6⌉

end

end A116579.P790903741336289133

namespace A116579

/-- `ceil(abs(5-∑[A054541(n+1)])/6)` -/
def P790903741336289133.Spec : Prop :=
  ∀ n, P790903741336289133.a n = A116579 (n + 1)

end A116579

/-! ## A116579.P15109743768435036359

`ceil(A000040(n+1)/6)-floor(atan(n))`
-/

namespace A116579.P15109743768435036359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℚ) / 6⌉ - ⌊Real.arctan (n : ℝ)⌋

end

end A116579.P15109743768435036359

namespace A116579

/-- `ceil(A000040(n+1)/6)-floor(atan(n))` -/
def P15109743768435036359.Spec : Prop :=
  ∀ n, P15109743768435036359.a n = A116579 (n + 1)

end A116579

/-! ## A116579.P18347331656120435130

`ceil(A000040(abs(n-2)+3)/6)-1`
-/

namespace A116579.P18347331656120435130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (|(n : ℤ) - 2| + 3).toNat : ℚ) / 6⌉ - 1

end

end A116579.P18347331656120435130

namespace A116579

/-- `ceil(A000040(abs(n-2)+3)/6)-1` -/
def P18347331656120435130.Spec : Prop :=
  ∀ n, P18347331656120435130.a n = A116579 (n + 1)

end A116579

/-! ## A116579.P2833903962572605233

`floor(A000040(2*n+1-n)/6)^floor(atan(n))`
-/

namespace A116579.P2833903962572605233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A000040 (2 * n + 1 - n) : ℚ) / 6⌋ : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A116579.P2833903962572605233

namespace A116579

/-- `floor(A000040(2*n+1-n)/6)^floor(atan(n))` -/
def P2833903962572605233.Spec : Prop :=
  ∀ n, P2833903962572605233.a n = (A116579 (n + 1) : ℚ)

end A116579

/-! ## A116579.P5593468945827222554

`A323703(n+1)%A130291(n+1)`
-/

namespace A116579.P5593468945827222554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323703 (n + 1)) (A130291 (n + 1))

end

end A116579.P5593468945827222554

namespace A116579

/-- `A323703(n+1)%A130291(n+1)` -/
def P5593468945827222554.Spec : Prop :=
  ∀ n, P5593468945827222554.a n = A116579 (n + 1)

end A116579

/-! ## A116579.P16340588662486596876

`floor(record[A000010(n+1)]/6)+C(n, n²)`
-/

namespace A116579.P16340588662486596876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 6⌋ + (Nat.choose n (n ^ 2) : ℤ)

end

end A116579.P16340588662486596876

namespace A116579

/-- `floor(record[A000010(n+1)]/6)+C(n, n²)` -/
def P16340588662486596876.Spec : Prop :=
  ∀ n, P16340588662486596876.a n = A116579 (n + 1)

end A116579

/-! ## A116579.P3515117830119549061

`round((abs(lt[A001222(2*n+1), 2]-2)+1)/3)`
-/

namespace A116579.P3515117830119549061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 2| + 1 : ℚ) / 3)

end

end A116579.P3515117830119549061

namespace A116579

/-- `round((abs(lt[A001222(2*n+1), 2]-2)+1)/3)` -/
def P3515117830119549061.Spec : Prop :=
  ∀ n, P3515117830119549061.a n = A116579 (n + 1)

end A116579

/-! ## A116579.P4513876693301201349

`A103627(A130290(n+1))`
-/

namespace A116579.P4513876693301201349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A130290 (n + 1)).toNat

end

end A116579.P4513876693301201349

namespace A116579

/-- `A103627(A130290(n+1))` -/
def P4513876693301201349.Spec : Prop :=
  ∀ n, P4513876693301201349.a n = A116579 (n + 1)

end A116579

/-! ## A116579.P6009316038451347802

`A008612(or(1, p?[xor(1, n)]))`
-/

namespace A116579.P6009316038451347802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A116579.P6009316038451347802

namespace A116579

/-- `A008612(or(1, p?[xor(1, n)]))` -/
def P6009316038451347802.Spec : Prop :=
  ∀ n, P6009316038451347802.a n = A116579 (n + 1)

end A116579

/-! ## A116579.P18101345381947870037

`A008612(p?[abs(2*n-3)])`
-/

namespace A116579.P18101345381947870037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A116579.P18101345381947870037

namespace A116579

/-- `A008612(p?[abs(2*n-3)])` -/
def P18101345381947870037.Spec : Prop :=
  ∀ n, P18101345381947870037.a n = A116579 (n + 1)

end A116579

/-! ## A116579.P12522279958422701735

`A008612(A400325(n+1))`
-/

namespace A116579.P12522279958422701735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A400325 (n + 1)).toNat

end

end A116579.P12522279958422701735

namespace A116579

/-- `A008612(A400325(n+1))` -/
def P12522279958422701735.Spec : Prop :=
  ∀ n, P12522279958422701735.a n = A116579 (n + 1)

end A116579

/-! ## A116579.P1150931273743773604

`A008612(A175787(n+2))`
-/

namespace A116579.P1150931273743773604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A175787 (n + 2)).toNat

end

end A116579.P1150931273743773604

namespace A116579

/-- `A008612(A175787(n+2))` -/
def P1150931273743773604.Spec : Prop :=
  ∀ n, P1150931273743773604.a n = A116579 (n + 1)

end A116579

/-!
# A116580: Square resultant of a complex prime genus function based on modulo 12 genus and modulo six genus functions.

The programs for A116580, there is no canonical definition to state claims against.
-/

/-! ## A116580.P8202439709021190204

`A116583(n)+A033428(A116579(n+1))`
-/

namespace A116580.P8202439709021190204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116583 n + A033428 (A116579 (n + 1)).toNat

end

end A116580.P8202439709021190204

/-!
# A116581: Primes of the form k^3 - k - 1.

The programs for A116581, there is no canonical definition to state claims against.
-/

/-! ## A116581.P700921857096491133

`A126420(A126421(n+1))`
-/

namespace A116581.P700921857096491133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126420 (A126421 (n + 1)).toNat

end

end A116581.P700921857096491133

/-! ## A116581.P17915136412856477129

`∩[A126420(n+1), A293861(n+1)]`
-/

namespace A116581.P17915136412856477129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116581.P17915136412856477129

/-! ## A116581.P9208245950817316942

`A061600(A126421(n+1))-A062830(A065091(n+1))`
-/

namespace A116581.P9208245950817316942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 (A126421 (n + 1)).toNat - A062830 (A065091 (n + 1)).toNat

end

end A116581.P9208245950817316942

/-! ## A116581.P12559447603739867353

`A061600(A126421(n+1))+2*A008683(A005384(n+1))`
-/

namespace A116581.P12559447603739867353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 (A126421 (n + 1)).toNat + 2 * A008683 (A005384 (n + 1)).toNat

end

end A116581.P12559447603739867353

/-! ## A116581.P15753574096226368421

`A327274(A185069(n+1))+A061600(A126421(n+1))`
-/

namespace A116581.P15753574096226368421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A185069 (n + 1)).toNat + A061600 (A126421 (n + 1)).toNat

end

end A116581.P15753574096226368421

/-! ## A116581.P17492274205345956357

`∩[A084720(n+1), A126420(n+1)]`
-/

namespace A116581.P17492274205345956357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116581.P17492274205345956357

/-! ## A116581.P17837750040854109108

`A061600(A126421(n+1))-A006530(2*A059268(n))`
-/

namespace A116581.P17837750040854109108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 (A126421 (n + 1)).toNat - A006530 (2 * A059268 n).toNat

end

end A116581.P17837750040854109108

/-!
# A116583: A better Hermitian prime genus function.

The programs for A116583, there is no canonical definition to state claims against.
-/

/-! ## A116583.P5461656228027698269

`A116580(n)-A033428(A116579(n+1))`
-/

namespace A116583.P5461656228027698269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116580 n - A033428 (A116579 (n + 1)).toNat

end

end A116583.P5461656228027698269

/-!
# A116584: Number of prime knots with <= n crossings.

The programs for A116584, there is no canonical definition to state claims against.
-/

/-! ## A116584.P5123447104578672393

`∑[A002863(n+1)]`
-/

namespace A116584.P5123447104578672393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116584.P5123447104578672393

/-! ## A116584.P10403481784364343028

`A002863(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A116584.P10403481784364343028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002863 (n + 1) + a (A023443 n).toNat

end

end A116584.P10403481784364343028

/-! ## A116584.P16135594071921344212

`∑[A051763(n+1)+A002864(n+1)]`
-/

namespace A116584.P16135594071921344212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051763 (n + 1) + A002864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116584.P16135594071921344212

/-! ## A116584.P738463470206924933

`∑[A052408(n+1)+A052407(n+1)]`
-/

namespace A116584.P738463470206924933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052408 (n + 1) + A052407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116584.P738463470206924933

/-! ## A116584.P12240564263103139236

`∑[A051764(n+1)+A052408(n+1)+A051765(n+1)]`
-/

namespace A116584.P12240564263103139236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (n + 1) + (A052408 (n + 1) + A051765 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116584.P12240564263103139236

/-!
# A116587: Record values that occur while computing the system output in A101210.

The programs for A116587, there is no canonical definition to state claims against.
-/

/-! ## A116587.P182354303811938170

`eq[A029219(A029227(n)), A307666(n+1)]`
-/

namespace A116587.P182354303811938170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 (A029227 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116587.P182354303811938170

/-!
# A116588: Array read by antidiagonals: T(n,k) = max(2^(n - k), 2^(k - n)).

The programs for A116588, the canonical program `A116588.P244719125391708686` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116588 has offset 0).

The definition of A116588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116588.P18149715674882075445

`gcd(2*(T(n-1,k-1)+T(n-1,k)), T(n-2,k-1))` with `a(0)=1`
-/

namespace A116588.P18149715674882075445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd (2 * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n)) (SequenceMachineLib.triUp2Left a n)

end

end A116588.P18149715674882075445

namespace A116588

/-- `gcd(2*(T(n-1,k-1)+T(n-1,k)), T(n-2,k-1))` -/
def P18149715674882075445.Spec : Prop :=
  ∀ n, (P18149715674882075445.a n : ℤ) = A116588 n

end A116588

/-! ## A116588.P3705266654787046954

`2^abs(row(n)-2*col(n))`
-/

namespace A116588.P3705266654787046954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|(SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)| : ℤ)

end

end A116588.P3705266654787046954

namespace A116588

/-- `2^abs(row(n)-2*col(n))` -/
def P3705266654787046954.Spec : Prop :=
  ∀ n, P3705266654787046954.a n = (A116588 n : ℚ)

end A116588

/-! ## A116588.P15685688590443737801

`2^abs(∑[2*n]%comp[∑[n]]-n)`
-/

namespace A116588.P15685688590443737801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|(((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)| : ℤ)

end

end A116588.P15685688590443737801

namespace A116588

/-- `2^abs(∑[2*n]%comp[∑[n]]-n)` -/
def P15685688590443737801.Spec : Prop :=
  ∀ n, P15685688590443737801.a n = (A116588 n : ℚ)

end A116588

/-! ## A116588.P8594010663005308619

`2^abs(2*n+1-∑[char[∑[n]]]²)`
-/

namespace A116588.P8594010663005308619
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|(2 * n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)| : ℤ)

end

end A116588.P8594010663005308619

namespace A116588

/-- `2^abs(2*n+1-∑[char[∑[n]]]²)` -/
def P8594010663005308619.Spec : Prop :=
  ∀ n, P8594010663005308619.a n = (A116588 n : ℚ)

end A116588

/-! ## A116588.P3262363403425633867

`lcm((-1)^n, 2^abs(round(sqrt(2*(n+1)))²-(2*n+1)))`
-/

namespace A116588.P3262363403425633867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| : ℤ)))

end

end A116588.P3262363403425633867

namespace A116588

/-- `lcm((-1)^n, 2^abs(round(sqrt(2*(n+1)))²-(2*n+1)))` -/
def P3262363403425633867.Spec : Prop :=
  ∀ n, (P3262363403425633867.a n : ℤ) = A116588 n

end A116588

/-! ## A116588.P1128552883278343841

`2^A143182(n)/2`
-/

namespace A116588.P1128552883278343841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A143182 n : ℤ) / 2

end

end A116588.P1128552883278343841

namespace A116588

/-- `2^A143182(n)/2` -/
def P1128552883278343841.Spec : Prop :=
  ∀ n, P1128552883278343841.a n = (A116588 n : ℚ)

end A116588

/-! ## A116588.P1535632052118314407

`root(4^A049581(n), 2)`
-/

namespace A116588.P1535632052118314407
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) ^ (A049581 n : ℤ) : ℝ) ^ (1 / (2 : ℝ))

end

end A116588.P1535632052118314407

namespace A116588

/-- `root(4^A049581(n), 2)` -/
def P1535632052118314407.Spec : Prop :=
  ∀ n, P1535632052118314407.a n = (A116588 n : ℝ)

end A116588

/-! ## A116588.P6097882031596450345

`abs((-2)^abs(A114327(n)))`
-/

namespace A116588.P6097882031596450345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((-2 : ℚ) ^ (|A114327 n| : ℤ))|

end

end A116588.P6097882031596450345

namespace A116588

/-- `abs((-2)^abs(A114327(n)))` -/
def P6097882031596450345.Spec : Prop :=
  ∀ n, P6097882031596450345.a n = (A116588 n : ℚ)

end A116588

/-! ## A116588.P13049418626947601631

`2/2^A203994(n+1)`
-/

namespace A116588.P13049418626947601631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (2 : ℚ) ^ (A203994 (n + 1) : ℤ)

end

end A116588.P13049418626947601631

namespace A116588

/-- `2/2^A203994(n+1)` -/
def P13049418626947601631.Spec : Prop :=
  ∀ n, P13049418626947601631.a n = (A116588 n : ℚ)

end A116588

/-! ## A116588.P244719125391708686

`A000079(A049581(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116588

/-- `A000079(A049581(n))` -/
def P244719125391708686.Spec : Prop :=
  ∀ n, P244719125391708686.a n = A116588 n

theorem P244719125391708686.correct : P244719125391708686.Spec := by
  intro n
  simp only [A116588]

end A116588

/-! ## A116588.P7025919523425329942

`A011782(A143182(n))`
-/

namespace A116588.P7025919523425329942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A143182 n).toNat

end

end A116588.P7025919523425329942

namespace A116588

/-- `A011782(A143182(n))` -/
def P7025919523425329942.Spec : Prop :=
  ∀ n, P7025919523425329942.a n = A116588 n

end A116588

/-! ## A116588.P10698320653392277970

`A082693(A133280(n))`
-/

namespace A116588.P10698320653392277970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082693 (A133280 n).toNat

end

end A116588.P10698320653392277970

namespace A116588

/-- `A082693(A133280(n))` -/
def P10698320653392277970.Spec : Prop :=
  ∀ n, P10698320653392277970.a n = A116588 n

end A116588

/-! ## A116588.P10349599658272100124

`A082693(A220508(n))`
-/

namespace A116588.P10349599658272100124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082693 (A220508 n).toNat

end

end A116588.P10349599658272100124

namespace A116588

/-- `A082693(A220508(n))` -/
def P10349599658272100124.Spec : Prop :=
  ∀ n, P10349599658272100124.a n = A116588 n

end A116588

/-! ## A116588.P9042716470421822798

`A082693(A220516(n))`
-/

namespace A116588.P9042716470421822798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082693 (A220516 n).toNat

end

end A116588.P9042716470421822798

namespace A116588

/-- `A082693(A220516(n))` -/
def P9042716470421822798.Spec : Prop :=
  ∀ n, P9042716470421822798.a n = A116588 n

end A116588

/-! ## A116588.P12293842722472674619

`A000079(abs(A114327(n)))`
-/

namespace A116588.P12293842722472674619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |A114327 n|.toNat

end

end A116588.P12293842722472674619

namespace A116588

/-- `A000079(abs(A114327(n)))` -/
def P12293842722472674619.Spec : Prop :=
  ∀ n, P12293842722472674619.a n = A116588 n

theorem P12293842722472674619.correct : P12293842722472674619.Spec := by
  intro n
  simp only [A116588, Nat.add_sub_cancel, A116588.P12293842722472674619.a, A116588.P244719125391708686.a, A000079, A000079.P10855139691139572931.a, A049581, A049581.P10108526043471454015.a, A114327, A114327.P12930942860764139837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116588

/-! ## A116588.P3985968854941072189

`A082693(A049581(n)²)`
-/

namespace A116588.P3985968854941072189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082693 (A049581 n ^ 2).toNat

end

end A116588.P3985968854941072189

namespace A116588

/-- `A082693(A049581(n)²)` -/
def P3985968854941072189.Spec : Prop :=
  ∀ n, P3985968854941072189.a n = A116588 n

end A116588

/-! ## A116588.P7990514960500266119

`A011782(A049581(n)+1)`
-/

namespace A116588.P7990514960500266119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A049581 n + 1).toNat

end

end A116588.P7990514960500266119

namespace A116588

/-- `A011782(A049581(n)+1)` -/
def P7990514960500266119.Spec : Prop :=
  ∀ n, P7990514960500266119.a n = A116588 n

end A116588

/-! ## A116588.P13441522951162394624

`A131577(A049581(n)+1)`
-/

namespace A116588.P13441522951162394624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A049581 n + 1).toNat

end

end A116588.P13441522951162394624

namespace A116588

/-- `A131577(A049581(n)+1)` -/
def P13441522951162394624.Spec : Prop :=
  ∀ n, P13441522951162394624.a n = A116588 n

end A116588

/-! ## A116588.P10429032236866172729

`A000079(A143182(n)-1)`
-/

namespace A116588.P10429032236866172729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A143182 n - 1).toNat

end

end A116588.P10429032236866172729

namespace A116588

/-- `A000079(A143182(n)-1)` -/
def P10429032236866172729.Spec : Prop :=
  ∀ n, P10429032236866172729.a n = A116588 n

theorem P10429032236866172729.correct : P10429032236866172729.Spec := by
  intro n
  simp only [A116588, Nat.add_sub_cancel, A116588.P10429032236866172729.a, A116588.P244719125391708686.a, A000079, A000079.P10855139691139572931.a, A049581, A049581.P10108526043471454015.a, A143182, A143182.P5915452531029149759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116588

/-! ## A116588.P8504424694403647527

`A137688(n)/A152716(n)`
-/

namespace A116588.P8504424694403647527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) / (A152716 n : ℚ)

end

end A116588.P8504424694403647527

namespace A116588

/-- `A137688(n)/A152716(n)` -/
def P8504424694403647527.Spec : Prop :=
  ∀ n, P8504424694403647527.a n = (A116588 n : ℚ)

end A116588

/-!
# A116589: a(n) = Sum{sqrt(n) < i <= n} i - Sum{1 <= i < sqrt(n)} i.

The programs for A116589, the canonical program `A116589.P5380934516052577718` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116589 has offset 1).

The definition of A116589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116589.P5380934516052577718

`∑[Δ[A038760(n)]+n]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116589

/-- `∑[Δ[A038760(n)]+n]` -/
def P5380934516052577718.Spec : Prop :=
  ∀ n, P5380934516052577718.a n = A116589 (n + 1)

theorem P5380934516052577718.correct : P5380934516052577718.Spec := by
  intro n
  simp only [A116589, Nat.add_sub_cancel]

end A116589

/-! ## A116589.P12061405929395945765

`A038760(n+1)+∑[n]`
-/

namespace A116589.P12061405929395945765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038760 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A116589.P12061405929395945765

namespace A116589

/-- `A038760(n+1)+∑[n]` -/
def P12061405929395945765.Spec : Prop :=
  ∀ n, P12061405929395945765.a n = A116589 (n + 1)

end A116589

/-! ## A116589.P17173324406916947562

`∑[n+1-(A037213(n+1)+A037213(n))]`
-/

namespace A116589.P17173324406916947562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A037213 (n + 1) + A037213 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116589.P17173324406916947562

namespace A116589

/-- `∑[n+1-(A037213(n+1)+A037213(n))]` -/
def P17173324406916947562.Spec : Prop :=
  ∀ n, P17173324406916947562.a n = A116589 (n + 1)

end A116589

/-! ## A116589.P11535700420273741422

`∑[n+1]-A000196(n+1)*A003059(n+1)`
-/

namespace A116589.P11535700420273741422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000196 (n + 1) * A003059 (n + 1)

end

end A116589.P11535700420273741422

namespace A116589

/-- `∑[n+1]-A000196(n+1)*A003059(n+1)` -/
def P11535700420273741422.Spec : Prop :=
  ∀ n, P11535700420273741422.a n = A116589 (n + 1)

end A116589

/-! ## A116589.P5866050410647802289

`A002620(n+1)+A038760(n+1)+A002620(n)`
-/

namespace A116589.P5866050410647802289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A038760 (n + 1) + A002620 n)

end

end A116589.P5866050410647802289

namespace A116589

/-- `A002620(n+1)+A038760(n+1)+A002620(n)` -/
def P5866050410647802289.Spec : Prop :=
  ∀ n, P5866050410647802289.a n = A116589 (n + 1)

end A116589

/-! ## A116589.P9700730417250154522

`∑[n+1]-A038759(n+1)`
-/

namespace A116589.P9700730417250154522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A038759 (n + 1)

end

end A116589.P9700730417250154522

namespace A116589

/-- `∑[n+1]-A038759(n+1)` -/
def P9700730417250154522.Spec : Prop :=
  ∀ n, P9700730417250154522.a n = A116589 (n + 1)

end A116589

/-! ## A116589.P242519345206773775

`∑[n+2]-A174803(n+1)`
-/

namespace A116589.P242519345206773775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A174803 (n + 1)

end

end A116589.P242519345206773775

namespace A116589

/-- `∑[n+2]-A174803(n+1)` -/
def P242519345206773775.Spec : Prop :=
  ∀ n, P242519345206773775.a n = A116589 (n + 1)

end A116589

/-!
# A116590: a(0)=1; a(n)=b(n+2)+b(n), where b(n)=A005185(n) is the Hofstadter Q-sequence: b(1)=b(2)=1; b(n)=b(n-b(n-1))+b(n-b(n-2)) for n > 2.

The programs for A116590, there is no canonical definition to state claims against.
-/

/-! ## A116590.P4751257226388894890

`A005185(A028310(n))+A005185(n+2)%A026115(n+1)`
-/

namespace A116590.P4751257226388894890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A028310 n).toNat + Int.tmod (A005185 (n + 2)) (A026115 (n + 1))

end

end A116590.P4751257226388894890

/-! ## A116590.P9407569664397748110

`A069926(n+1)+∑{e}[A014480(n), #]`
-/

namespace A116590.P9407569664397748110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069926 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A116590.P9407569664397748110

/-! ## A116590.P11164331004800373740

`record[A053737(A005728(n))]+A001222(2*n+1)`
-/

namespace A116590.P11164331004800373740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A001222 (2 * n + 1)

end

end A116590.P11164331004800373740

/-! ## A116590.P1795512448989757459

`∑[A001222(A308949(n+2))]+A001222(2*n+1)`
-/

namespace A116590.P1795512448989757459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A308949 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A001222 (2 * n + 1)

end

end A116590.P1795512448989757459

/-! ## A116590.P10397872628048182942

`A001222(2*n+1)+comp[A177763(A343909(n))-1]`
-/

namespace A116590.P10397872628048182942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (A343909 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A116590.P10397872628048182942

/-!
# A116591: a(n) = b(n+2) + b(n) with a(0) = 1, where b(n) = A005229(n) for n>2.

The programs for A116591, there is no canonical definition to state claims against.
-/

/-! ## A116591.P3315966026810798706

`A103298(A054846(n)+A018805(n+1))`
-/

namespace A116591.P3315966026810798706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A054846 n + A018805 (n + 1)).toNat

end

end A116591.P3315966026810798706

/-! ## A116591.P10337326565858689744

`A103298(A103298(n)+A018805(n+1))`
-/

namespace A116591.P10337326565858689744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A103298 n + A018805 (n + 1)).toNat

end

end A116591.P10337326565858689744

/-! ## A116591.P18177359495013499044

`A103298(A103298(n)+∑[A140434(n+1)])`
-/

namespace A116591.P18177359495013499044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A103298 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116591.P18177359495013499044

/-! ## A116591.P3666506916960595016

`A103298(A103298(n)+Δ[2*A103116(n)]-1)`
-/

namespace A116591.P3666506916960595016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A103298 n + (f1 (n + 1) - f1 n - 1)).toNat

end

end A116591.P3666506916960595016

/-! ## A116591.P14507144294227328704

`A103298(A103298(n)+2*A015614(n+1)+1)`
-/

namespace A116591.P14507144294227328704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A103298 n + (2 * A015614 (n + 1) + 1)).toNat

end

end A116591.P14507144294227328704

/-!
# A116592: a(0)=1; a(n) = b(n+2) + b(n), where b(n) = A004001(n) is the Hofstadter-Conway sequence defined by b(1) = b(2) = 1, b(n) = b(b(n-1)) + b(n-b(n-1)) for n>2.

The programs for A116592, the canonical program `A116592.P5877210315008298987` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116592 has offset 0).

The definition of A116592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116592.P5877210315008298987

`A285763(2*n+1)+A093879(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A116592

/-- `A285763(2*n+1)+A093879(n+1)` -/
def P5877210315008298987.Spec : Prop :=
  ∀ n, P5877210315008298987.a n = A116592 n

theorem P5877210315008298987.correct : P5877210315008298987.Spec := by
  intro n
  simp only [A116592]

end A116592

/-! ## A116592.P3220584614975465350

`A285763(2*n+1)+Δ[A004001(n+1)]`
-/

namespace A116592.P3220584614975465350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A116592.P3220584614975465350

namespace A116592

/-- `A285763(2*n+1)+Δ[A004001(n+1)]` -/
def P3220584614975465350.Spec : Prop :=
  ∀ n, P3220584614975465350.a n = A116592 n

theorem P3220584614975465350.correct : P3220584614975465350.Spec := by
  intro n
  simp only [A116592, Nat.add_sub_cancel, A116592.P3220584614975465350.f1, A116592.P3220584614975465350.a, A116592.P5877210315008298987.a, A004001, A004001.P15027099775036681873.a, A093879, A093879.P16906810151059446800.a, A285763, A285763.P10302594751270794581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A116592

/-! ## A116592.P2089460648164732568

`A285763(2*(n+2))-Δ[A285763(2*n+1)]`
-/

namespace A116592.P2089460648164732568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * (n + 2)) - (f1 (n + 1) - f1 n)

end

end A116592.P2089460648164732568

namespace A116592

/-- `A285763(2*(n+2))-Δ[A285763(2*n+1)]` -/
def P2089460648164732568.Spec : Prop :=
  ∀ n, P2089460648164732568.a n = A116592 n

end A116592

/-! ## A116592.P14841679481284968638

`A285763(2*n+1)+A110655(Δ[A285763(2*(n+1))])`
-/

namespace A116592.P14841679481284968638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * n + 1) + A110655 (f1 (n + 1) - f1 n).toNat

end

end A116592.P14841679481284968638

namespace A116592

/-- `A285763(2*n+1)+A110655(Δ[A285763(2*(n+1))])` -/
def P14841679481284968638.Spec : Prop :=
  ∀ n, P14841679481284968638.a n = A116592 n

end A116592

/-! ## A116592.P7903633971207035523

`A285763(2*n+1)+A285763(2*n+3)-A285763(2*(n+1))`
-/

namespace A116592.P7903633971207035523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * n + 1) + (A285763 (2 * n + 3) - A285763 (2 * (n + 1)))

end

end A116592.P7903633971207035523

namespace A116592

/-- `A285763(2*n+1)+A285763(2*n+3)-A285763(2*(n+1))` -/
def P7903633971207035523.Spec : Prop :=
  ∀ n, P7903633971207035523.a n = A116592 n

end A116592

/-! ## A116592.P3415930559195089897

`A285763(2*n+1)+A285763(2*(n+2))%A285763(2*n+3)`
-/

namespace A116592.P3415930559195089897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * n + 1) + Int.tmod (A285763 (2 * (n + 2))) (A285763 (2 * n + 3))

end

end A116592.P3415930559195089897

namespace A116592

/-- `A285763(2*n+1)+A285763(2*(n+2))%A285763(2*n+3)` -/
def P3415930559195089897.Spec : Prop :=
  ∀ n, P3415930559195089897.a n = A116592 n

end A116592

/-!
# A116593: a(n) = b(n+2) + b(n), where b(n) = A006046(n) is the sequence defined by b(0)=0, b(1)=1, b(n) = 2*b((n-1)/2) + b((n+1)/2) for n =3,5,7,... and b(n) = 3*b(n/2) for n =2,4,6,....

The programs for A116593, the canonical program `A116593.P16482802111974345195` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116593 has offset 0).

The definition of A116593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116593.P16482802111974345195

`A006046(n+2)+A006046(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116593

/-- `A006046(n+2)+A006046(n)` -/
def P16482802111974345195.Spec : Prop :=
  ∀ n, P16482802111974345195.a n = A116593 n

theorem P16482802111974345195.correct : P16482802111974345195.Spec := by
  intro n
  simp only [A116593]

end A116593

/-! ## A116593.P1912250163254489006

`A001316(n+1)+∑[A105321(n)]`
-/

namespace A116593.P1912250163254489006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116593.P1912250163254489006

namespace A116593

/-- `A001316(n+1)+∑[A105321(n)]` -/
def P1912250163254489006.Spec : Prop :=
  ∀ n, P1912250163254489006.a n = A116593 n

end A116593

/-! ## A116593.P10711381209563725655

`A001316(n+1)+A173522(n+1)`
-/

namespace A116593.P10711381209563725655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1) + A173522 (n + 1)

end

end A116593.P10711381209563725655

namespace A116593

/-- `A001316(n+1)+A173522(n+1)` -/
def P10711381209563725655.Spec : Prop :=
  ∀ n, P10711381209563725655.a n = A116593 n

end A116593

/-! ## A116593.P6276633364903548647

`2*A173537(n+2)-A001316(n)`
-/

namespace A116593.P6276633364903548647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173537 (n + 2) - A001316 n

end

end A116593.P6276633364903548647

namespace A116593

/-- `2*A173537(n+2)-A001316(n)` -/
def P6276633364903548647.Spec : Prop :=
  ∀ n, P6276633364903548647.a n = A116593 n

end A116593

/-! ## A116593.P7845187685116479109

`Δ[A001316(n)]+∑[A001316(2*n+1)]`
-/

namespace A116593.P7845187685116479109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A116593.P7845187685116479109

namespace A116593

/-- `Δ[A001316(n)]+∑[A001316(2*n+1)]` -/
def P7845187685116479109.Spec : Prop :=
  ∀ n, P7845187685116479109.a n = A116593 n

end A116593

/-! ## A116593.P16913515117042316791

`A173522(n+1)+A000079(A000120(n+1))`
-/

namespace A116593.P16913515117042316791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (n + 1) + A000079 (A000120 (n + 1)).toNat

end

end A116593.P16913515117042316791

namespace A116593

/-- `A173522(n+1)+A000079(A000120(n+1))` -/
def P16913515117042316791.Spec : Prop :=
  ∀ n, P16913515117042316791.a n = A116593 n

end A116593

/-! ## A116593.P1043794894499838125

`A001316(n+1)+A160744(n)+A060632(n)`
-/

namespace A116593.P1043794894499838125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1) + (A160744 n + A060632 n)

end

end A116593.P1043794894499838125

namespace A116593

/-- `A001316(n+1)+A160744(n)+A060632(n)` -/
def P1043794894499838125.Spec : Prop :=
  ∀ n, P1043794894499838125.a n = A116593 n

end A116593

/-! ## A116593.P7255529760927666068

`A001316(n+1)+A139250(n+1)-A173454(n+1)`
-/

namespace A116593.P7255529760927666068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1) + (A139250 (n + 1) - A173454 (n + 1))

end

end A116593.P7255529760927666068

namespace A116593

/-- `A001316(n+1)+A139250(n+1)-A173454(n+1)` -/
def P7255529760927666068.Spec : Prop :=
  ∀ n, P7255529760927666068.a n = A116593 n

end A116593

/-! ## A116593.P4088803871307174479

`A173522(n+2)-A001316(n)`
-/

namespace A116593.P4088803871307174479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (n + 2) - A001316 n

end

end A116593.P4088803871307174479

namespace A116593

/-- `A173522(n+2)-A001316(n)` -/
def P4088803871307174479.Spec : Prop :=
  ∀ n, P4088803871307174479.a n = A116593 n

end A116593

/-! ## A116593.P14099765263861633762

`A151566(2*n)+A105321(n+1)`
-/

namespace A116593.P14099765263861633762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * n) + A105321 (n + 1)

end

end A116593.P14099765263861633762

namespace A116593

/-- `A151566(2*n)+A105321(n+1)` -/
def P14099765263861633762.Spec : Prop :=
  ∀ n, P14099765263861633762.a n = A116593 n

end A116593

/-! ## A116593.P5686019512996597285

`A001316(n)+A151566(2*n)+A001316(n+1)`
-/

namespace A116593.P5686019512996597285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (A151566 (2 * n) + A001316 (n + 1))

end

end A116593.P5686019512996597285

namespace A116593

/-- `A001316(n)+A151566(2*n)+A001316(n+1)` -/
def P5686019512996597285.Spec : Prop :=
  ∀ n, P5686019512996597285.a n = A116593 n

end A116593

/-! ## A116593.P14426726479317346495

`A151566(2*n+1)+A001316(n+1)`
-/

namespace A116593.P14426726479317346495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * n + 1) + A001316 (n + 1)

end

end A116593.P14426726479317346495

namespace A116593

/-- `A151566(2*n+1)+A001316(n+1)` -/
def P14426726479317346495.Spec : Prop :=
  ∀ n, P14426726479317346495.a n = A116593 n

end A116593

/-! ## A116593.P2928710869955487478

`A151566(2*n+1)+A060632(A000069(n+2))`
-/

namespace A116593.P2928710869955487478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * n + 1) + A060632 (A000069 (n + 2)).toNat

end

end A116593.P2928710869955487478

namespace A116593

/-- `A151566(2*n+1)+A060632(A000069(n+2))` -/
def P2928710869955487478.Spec : Prop :=
  ∀ n, P2928710869955487478.a n = A116593 n

end A116593

/-! ## A116593.P3437988100223897251

`A151566(2*n+3)-A060632(2*n)`
-/

namespace A116593.P3437988100223897251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * n + 3) - A060632 (2 * n)

end

end A116593.P3437988100223897251

namespace A116593

/-- `A151566(2*n+3)-A060632(2*n)` -/
def P3437988100223897251.Spec : Prop :=
  ∀ n, P3437988100223897251.a n = A116593 n

end A116593

/-! ## A116593.P6353242366574545680

`A151566(2*n)+Δ[A151566(2*n+1)]`
-/

namespace A116593.P6353242366574545680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * n) + (f1 (n + 1) - f1 n)

end

end A116593.P6353242366574545680

namespace A116593

/-- `A151566(2*n)+Δ[A151566(2*n+1)]` -/
def P6353242366574545680.Spec : Prop :=
  ∀ n, P6353242366574545680.a n = A116593 n

end A116593

/-!
# A116595: Triangle read by rows: T(n,k) is the number of partitions of n having exactly k parts that appear exactly once (n>=0, k>=0).

The programs for A116595, there is no canonical definition to state claims against.
-/

/-! ## A116595.P8739303821745539271

`A335474(A000045(A199123(n)+A032741(n)))`
-/

namespace A116595.P8739303821745539271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (A000045 (A199123 n + A032741 n).toNat).toNat

end

end A116595.P8739303821745539271

/-!
# A116596: Number of partitions of n having exactly 1 part that appears exactly once.

The programs for A116596, there is no canonical definition to state claims against.
-/

/-! ## A116596.P2408098356517501168

`A116595(A075349(n+2))`
-/

namespace A116596.P2408098356517501168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (A075349 (n + 2)).toNat

end

end A116596.P2408098356517501168

/-! ## A116596.P442911559793103984

`A116595(A060432(n+1)+1)`
-/

namespace A116596.P442911559793103984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (A060432 (n + 1) + 1).toNat

end

end A116596.P442911559793103984

/-! ## A116596.P2390632585813001913

`A116595(∑[A002024(n+1)]+1)`
-/

namespace A116596.P2390632585813001913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A116596.P2390632585813001913

/-! ## A116596.P10787436937480237448

`A116595(∑[A123578(n+1)]+1)`
-/

namespace A116596.P10787436937480237448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A116596.P10787436937480237448

/-! ## A116596.P8718940999082285343

`A116595(∑[A000194(2*(n+1))]+1)`
-/

namespace A116596.P8718940999082285343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A116596.P8718940999082285343

/-!
# A116597: Expansion of theta_3(q) * theta_4(q^4)^2 in powers of q.

The programs for A116597, there is no canonical definition to state claims against.
-/

/-! ## A116597.P6971338741939445178

`A080963(4*n)`
-/

namespace A116597.P6971338741939445178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080963 (4 * n)

end

end A116597.P6971338741939445178

/-! ## A116597.P13932466749227394380

`A033999(n)*A246814(n)`
-/

namespace A116597.P13932466749227394380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246814 n

end

end A116597.P13932466749227394380

/-! ## A116597.P5381005245356201031

`A087960(n)*A246814(n)`
-/

namespace A116597.P5381005245356201031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A246814 n

end

end A116597.P5381005245356201031

/-! ## A116597.P11393239722253452669

`A094267(n)*A246814(n)`
-/

namespace A116597.P11393239722253452669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A246814 n

end

end A116597.P11393239722253452669

/-! ## A116597.P13837295083452156419

`A219977(n)*A246814(n)`
-/

namespace A116597.P13837295083452156419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A246814 n

end

end A116597.P13837295083452156419

/-! ## A116597.P2882122467957890551

`A071935(n+1)*A246814(n)`
-/

namespace A116597.P2882122467957890551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A246814 n

end

end A116597.P2882122467957890551

/-! ## A116597.P17272206377952249641

`A246814(n)*A309873(n+1)`
-/

namespace A116597.P17272206377952249641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246814 n * A309873 (n + 1)

end

end A116597.P17272206377952249641

/-! ## A116597.P6898961646046433046

`2*A080917(n)-A246631(n)`
-/

namespace A116597.P6898961646046433046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080917 n - A246631 n

end

end A116597.P6898961646046433046

/-! ## A116597.P2556651845546107320

`A127786(2*n)`
-/

namespace A116597.P2556651845546107320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127786 (2 * n)

end

end A116597.P2556651845546107320

/-! ## A116597.P4031465825733210342

`2-4/2+A127786(n+n)`
-/

namespace A116597.P4031465825733210342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (A127786 (n + n) : ℚ)

end

end A116597.P4031465825733210342

/-! ## A116597.P6340129750661127767

`A057077(n+1)*A246816(2*n)`
-/

namespace A116597.P6340129750661127767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A246816 (2 * n)

end

end A116597.P6340129750661127767

/-! ## A116597.P6029485899208066397

`A246816(2*n)/A057077(2*n)`
-/

namespace A116597.P6029485899208066397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246816 (2 * n) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A116597.P6029485899208066397

/-! ## A116597.P12113175602788626191

`A246816(2*n)/A045828(n+1)*A246836(n+1)`
-/

namespace A116597.P12113175602788626191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246816 (2 * n) : ℚ) / (A045828 (n + 1) : ℚ) * (A246836 (n + 1) : ℚ)

end

end A116597.P12113175602788626191

/-! ## A116597.P17486699272383335653

`A045828(2*n)*A246816(2*n)/A246836(2*n)`
-/

namespace A116597.P17486699272383335653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 (2 * n) * A246816 (2 * n) : ℚ) / (A246836 (2 * n) : ℚ)

end

end A116597.P17486699272383335653

/-! ## A116597.P9442794968048155425

`2*A080918(4*n)-A033717(2*n)`
-/

namespace A116597.P9442794968048155425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080918 (4 * n) - A033717 (2 * n)

end

end A116597.P9442794968048155425

/-! ## A116597.P16031683022873271509

`2*A080918(4*n)-A080917(4*n)`
-/

namespace A116597.P16031683022873271509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080918 (4 * n) - A080917 (4 * n)

end

end A116597.P16031683022873271509

/-! ## A116597.P15727442449155528679

`2*A080917(n)-A080917(A008586(n))`
-/

namespace A116597.P15727442449155528679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080917 n - A080917 (A008586 n).toNat

end

end A116597.P15727442449155528679

/-!
# A116598: Triangle read by rows: T(n,k) is the number of partitions of n having exactly k parts equal to 1 (n>=0, 0<=k<=n).

The programs for A116598, there is no canonical definition to state claims against.
-/

/-! ## A116598.P4625341867652449703

`A002865(row(n)-col(n))`
-/

namespace A116598.P4625341867652449703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A116598.P4625341867652449703

/-! ## A116598.P13718146982641178717

`A002865(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A116598.P13718146982641178717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A116598.P13718146982641178717

/-! ## A116598.P10643250389009634624

`A002865(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A116598.P10643250389009634624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A116598.P10643250389009634624

/-! ## A116598.P12664291369440049760

`A002865(A025581(n))`
-/

namespace A116598.P12664291369440049760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A025581 n).toNat

end

end A116598.P12664291369440049760

/-! ## A116598.P7273420150479040857

`A085811(A025581(n)+3)`
-/

namespace A116598.P7273420150479040857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (A025581 n + 3).toNat

end

end A116598.P7273420150479040857

/-! ## A116598.P424206215017867946

`A182748(n)+A023531(n)`
-/

namespace A116598.P424206215017867946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182748 n + A023531 n

end

end A116598.P424206215017867946

/-! ## A116598.P11454859824768676233

`A002865(A004736(n+1)-1)`
-/

namespace A116598.P11454859824768676233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A004736 (n + 1) - 1).toNat

end

end A116598.P11454859824768676233

/-! ## A116598.P732044505165176110

`A002865(log2(ceil(A130330(n)/2)))`
-/

namespace A116598.P732044505165176110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(A130330 n : ℚ) / 2⌉ : ℝ))).toNat

end

end A116598.P732044505165176110

/-! ## A116598.P7129010913662952084

`A002865(log2(round(A130330(n)/2)))`
-/

namespace A116598.P7129010913662952084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (SequenceMachineLib.roundAway (Real.logb 2 (SequenceMachineLib.roundAway ((A130330 n : ℚ) / 2) : ℝ))).toNat

end

end A116598.P7129010913662952084

/-! ## A116598.P18017446714313064056

`A002865(A004202(n+1)-2*(n+1))`
-/

namespace A116598.P18017446714313064056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A004202 (n + 1) - (2 * (n + 1) : ℤ)).toNat

end

end A116598.P18017446714313064056

/-! ## A116598.P17879315334542042192

`A156044(n+1)+A133734(n+1)-A156044(n)`
-/

namespace A116598.P17879315334542042192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156044 (n + 1) + A133734 (n + 1) - A156044 n

end

end A116598.P17879315334542042192

/-! ## A116598.P15188241432898841278

`A133734(A061579(n))`
-/

namespace A116598.P15188241432898841278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133734 (A061579 n).toNat

end

end A116598.P15188241432898841278

/-! ## A116598.P18029186434426720356

`A133734(A038722(n+1)-1)`
-/

namespace A116598.P18029186434426720356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133734 (A038722 (n + 1) - 1).toNat

end

end A116598.P18029186434426720356

/-! ## A116598.P3387518580132466143

`A133734(A038722(n+2))`
-/

namespace A116598.P3387518580132466143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133734 (A038722 (n + 2)).toNat

end

end A116598.P3387518580132466143

/-! ## A116598.P11770829803309708255

`A133734(A278818(n)-1)`
-/

namespace A116598.P11770829803309708255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133734 (A278818 n - 1).toNat

end

end A116598.P11770829803309708255

/-! ## A116598.P3572011049437083573

`A133734(A278818(n+1))`
-/

namespace A116598.P3572011049437083573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133734 (A278818 (n + 1)).toNat

end

end A116598.P3572011049437083573

/-! ## A116598.P8315953706178992570

`A292745(C(row(n)-col(n)+1, 2)+row(n)-col(n))`
-/

namespace A116598.P8315953706178992570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 ((Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A116598.P8315953706178992570

/-! ## A116598.P10326157423612649404

`A060244(∑{#}[row(n)-col(n), #])`
-/

namespace A116598.P10326157423612649404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060244 (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A116598.P10326157423612649404

/-! ## A116598.P12706683075509052137

`A133734(2*A025581(n)²)`
-/

namespace A116598.P12706683075509052137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133734 (2 * A025581 n ^ 2).toNat

end

end A116598.P12706683075509052137

/-! ## A116598.P13513307858737386310

`A333925(2*A025581(n)²)`
-/

namespace A116598.P13513307858737386310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (2 * A025581 n ^ 2).toNat

end

end A116598.P13513307858737386310

/-!
# A116599: Triangle read by rows: T(n,k) is the number of partitions of n having exactly k parts equal to 2 (n>=0, 0<=k<=floor(n/2)).

The programs for A116599, there is no canonical definition to state claims against.
-/

/-! ## A116599.P7310418294556087358

`A027336(A082375(n))`
-/

namespace A116599.P7310418294556087358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (A082375 n).toNat

end

end A116599.P7310418294556087358

/-! ## A116599.P18159508951856264960

`A027336(A122196(n+1)-1)`
-/

namespace A116599.P18159508951856264960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (A122196 (n + 1) - 1).toNat

end

end A116599.P18159508951856264960

/-! ## A116599.P8249759396234068368

`A027336((A152204(n)-1)/2)`
-/

namespace A116599.P8249759396234068368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (SequenceMachineLib.roundAway ((A152204 n - 1 : ℚ) / 2)).toNat

end

end A116599.P8249759396234068368

/-! ## A116599.P11934441886335893376

`A027336(A004526(A152204(n)))`
-/

namespace A116599.P11934441886335893376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (A004526 (A152204 n).toNat).toNat

end

end A116599.P11934441886335893376

/-! ## A116599.P15766491953155114539

`A027336(A152204(n)%A122196(n+1))`
-/

namespace A116599.P15766491953155114539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (Int.tmod (A152204 n) (A122196 (n + 1))).toNat

end

end A116599.P15766491953155114539

/-! ## A116599.P13370301762998711530

`∏{e}[A062052(n+1), A027336(#)]`
-/

namespace A116599.P13370301762998711530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A027336 (Nat.factorization (f1 n).natAbs p)

end

end A116599.P13370301762998711530

/-! ## A116599.P8088358085090318213

`A374921(A271647(n+1)-1)`
-/

namespace A116599.P8088358085090318213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374921 (A271647 (n + 1) - 1).toNat

end

end A116599.P8088358085090318213

/-! ## A116599.P4897725300066839770

`A374921(A271647(n+2))`
-/

namespace A116599.P4897725300066839770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374921 (A271647 (n + 2)).toNat

end

end A116599.P4897725300066839770

