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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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
# A317500: Triangle read by rows: T(0,0) = 1; T(n,k) = T(n-1,k) + 2 * T(n-4,k-1) for k = 0..floor(n/4); T(n,k)=0 for n or k < 0.

The programs for A317500, there is no canonical definition to state claims against.
-/

/-! ## A317500.P4365623095063157820

`gcd(A070939(A210542(n+1)), A187250(n+2))`
-/

namespace A317500.P4365623095063157820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070939 (A210542 (n + 1)).toNat) (A187250 (n + 2))

end

end A317500.P4365623095063157820

/-! ## A317500.P12824837833122302012

`∏{e}[A003952(A279119(n+1)), #]`
-/

namespace A317500.P12824837833122302012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 (A279119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A317500.P12824837833122302012

/-! ## A317500.P7390042815039593899

`A051903(A109975(n)+A027306(n))`
-/

namespace A317500.P7390042815039593899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A109975 n + A027306 n).toNat

end

end A317500.P7390042815039593899

/-! ## A317500.P1283722602944925286

`A054725(A089196(A065190(n+1))!)`
-/

namespace A317500.P1283722602944925286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (Nat.factorial (A089196 (A065190 (n + 1)).toNat).toNat)

end

end A317500.P1283722602944925286

/-!
# A317501: Triangle read by rows: T(0,0) = 1; T(n,k) = 2*T(n-1,k) + T(n-4,k-1) for k = 0..floor(n/4); T(n,k)=0 for n or k < 0.

The programs for A317501, there is no canonical definition to state claims against.
-/

/-! ## A317501.P7554636995460834020

`abs(A317506(n))`
-/

namespace A317501.P7554636995460834020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317506 n|

end

end A317501.P7554636995460834020

/-! ## A317501.P16370437540874174812

`gcd(A000038(n), A317506(n))`
-/

namespace A317501.P16370437540874174812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A317506 n)

end

end A317501.P16370437540874174812

/-! ## A317501.P9775215886823131547

`lcm(A020985(n), A317506(n))`
-/

namespace A317501.P9775215886823131547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A317506 n)

end

end A317501.P9775215886823131547

/-! ## A317501.P2323121857988735888

`gcd(-A317506(n), A151934(n))`
-/

namespace A317501.P2323121857988735888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A317506 n) (A151934 n)

end

end A317501.P2323121857988735888

/-! ## A317501.P6306085952288689907

`sqrt(A317506(n)^A020639(2*(n+1)))`
-/

namespace A317501.P6306085952288689907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A317506 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A317501.P6306085952288689907

/-! ## A317501.P12072292192149896232

`lcm(-A317506(n), A007318(∑{e}[n²+5, #]))`
-/

namespace A317501.P12072292192149896232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A317506 n) (A007318 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A317501.P12072292192149896232

/-!
# A317502: Triangle read by rows: T(0,0) = 1; T(n,k) = 3 T(n-1,k) - 2 * T(n-3,k-1) for k = 0..floor(n/3); T(n,k)=0 for n or k < 0.

The programs for A317502, there is no canonical definition to state claims against.
-/

/-! ## A317502.P11335073721967688548

`A122803(A073189(n))*A317497(n)`
-/

namespace A317502.P11335073721967688548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A073189 n).toNat * A317497 n

end

end A317502.P11335073721967688548

/-!
# A317504: Triangle read by rows: T(0,0) = 1; T(n,k) = 2*T(n-1,k) - T(n-3,k-1) for k = 0..floor(n/3); T(n,k)=0 for n or k < 0.

The programs for A317504, there is no canonical definition to state claims against.
-/

/-! ## A317504.P14397520333109060747

`A014995(A073189(n))*A317495(n)`
-/

namespace A317504.P14397520333109060747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014995 (A073189 n).toNat * A317495 n

end

end A317504.P14397520333109060747

/-!
# A317506: Triangle read by rows: T(0,0) = 1; T(n,k) = 2 T(n-1,k) - T(n-4,k-1) for 0 <= k <= floor(n/4); T(n,k)=0 for n or k < 0.

The programs for A317506, there is no canonical definition to state claims against.
-/

/-! ## A317506.P9092863398880283639

`or(A067945(n+1), A088194(A028495(n)))`
-/

namespace A317506.P9092863398880283639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067945 (n + 1)) (A088194 (A028495 n).toNat)

end

end A317506.P9092863398880283639

/-!
# A317508: Number of ways to split the integer partition with Heinz number n into consecutive subsequences with weakly decreasing sums.

The programs for A317508, there is no canonical definition to state claims against.
-/

/-! ## A317508.P364403466424511258

`A101296(A032742(n+1))%A078927(n+1)`
-/

namespace A317508.P364403466424511258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A032742 (n + 1)).toNat) (A078927 (n + 1))

end

end A317508.P364403466424511258

/-! ## A317508.P12512576860177705554

`A101296(A032742(n+1)%A114615(n+1))`
-/

namespace A317508.P12512576860177705554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.tmod (A032742 (n + 1)) (A114615 (n + 1))).toNat

end

end A317508.P12512576860177705554

/-! ## A317508.P6495784092508563737

`A302046(A032742(n+1))%A125309(n+1)`
-/

namespace A317508.P6495784092508563737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302046 (A032742 (n + 1)).toNat) (A125309 (n + 1))

end

end A317508.P6495784092508563737

/-! ## A317508.P18355112720923332849

`A181819(A032742(n+1))%A281919(n+2)`
-/

namespace A317508.P18355112720923332849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181819 (A032742 (n + 1)).toNat) (A281919 (n + 2))

end

end A317508.P18355112720923332849

/-! ## A317508.P8807108165491574414

`A290110(A032742(n+1))%A130058(n+2)`
-/

namespace A317508.P8807108165491574414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290110 (A032742 (n + 1)).toNat) (A130058 (n + 2))

end

end A317508.P8807108165491574414

/-!
# A317509: Coefficients in expansion of 1/(1 + x - 2*x^5).

The programs for A317509, the canonical program `A317509.P15912898040564290613` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317509 has offset 0).

The definition of A317509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 797 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317509.P2044583488189062990

`∑[ogf(1/(1+2x+2x^2+2x^3+2x^4))]`
-/

namespace A317509.P2044583488189062990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 2, 2, 2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317509.P2044583488189062990

namespace A317509

/-- `∑[ogf(1/(1+2x+2x^2+2x^3+2x^4))]` -/
def P2044583488189062990.Spec : Prop :=
  ∀ n, P2044583488189062990.a n = A317509 n

end A317509

/-! ## A317509.P11509065483412493654

`ogf(1/(1+x-2x^5))`
-/

namespace A317509.P11509065483412493654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 0, 0, 0, -2] n

end

end A317509.P11509065483412493654

namespace A317509

/-- `ogf(1/(1+x-2x^5))` -/
def P11509065483412493654.Spec : Prop :=
  ∀ n, P11509065483412493654.a n = A317509 n

end A317509

/-! ## A317509.P15912898040564290613

`2*a(n-5)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1, a(4)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317509

/-- `2*a(n-5)-a(n-1)` -/
def P15912898040564290613.Spec : Prop :=
  ∀ n, P15912898040564290613.a n = A317509 n

theorem P15912898040564290613.correct : P15912898040564290613.Spec := by
  intro n
  simp only [A317509]

end A317509

/-! ## A317509.P5817228532158591814

`a(n-5)+a(n-5)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1, a(4)=1`
-/

namespace A317509.P5817228532158591814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -1, 1] fun n a =>
  a (n - 5) + (a (n - 5) - a (n - 1))

end

end A317509.P5817228532158591814

namespace A317509

/-- `a(n-5)+a(n-5)-a(n-1)` -/
def P5817228532158591814.Spec : Prop :=
  ∀ n, P5817228532158591814.a n = A317509 n

theorem P5817228532158591814.correct : P5817228532158591814.Spec := by
  intro n
  simp only [A317509, Nat.add_sub_cancel, A317509.P5817228532158591814.a, A317509.P15912898040564290613.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A317509

/-!
# A317510: Numbers (4p+1)/3 where p is a Sophie Germain prime p > 3.

The programs for A317510, the canonical program `A317510.P13699733993965501497` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317510 has offset 1).

The definition of A317510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317510.P13699733993965501497

`floor(A194593(n+4)/3)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A317510

/-- `floor(A194593(n+4)/3)` -/
def P13699733993965501497.Spec : Prop :=
  ∀ n, P13699733993965501497.a n = A317510 (n + 1)

theorem P13699733993965501497.correct : P13699733993965501497.Spec := by
  intro n
  simp only [A317510, Nat.add_sub_cancel]

end A317510

/-! ## A317510.P5225030221119781955

`4*A317626(n+1)-1`
-/

namespace A317510.P5225030221119781955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A317626 (n + 1) - 1

end

end A317510.P5225030221119781955

namespace A317510

/-- `4*A317626(n+1)-1` -/
def P5225030221119781955.Spec : Prop :=
  ∀ n, P5225030221119781955.a n = A317510 (n + 1)

end A317510

/-! ## A317510.P13028376608353758494

`4*A176045(n+3)/3-1`
-/

namespace A317510.P13028376608353758494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A176045 (n + 3) : ℚ) / 3) - 1

end

end A317510.P13028376608353758494

namespace A317510

/-- `4*A176045(n+3)/3-1` -/
def P13028376608353758494.Spec : Prop :=
  ∀ n, P13028376608353758494.a n = (A317510 (n + 1) : ℚ)

end A317510

/-! ## A317510.P14392358019582196617

`A317626(n+1)+A005384(n+3)`
-/

namespace A317510.P14392358019582196617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317626 (n + 1) + A005384 (n + 3)

end

end A317510.P14392358019582196617

namespace A317510

/-- `A317626(n+1)+A005384(n+3)` -/
def P14392358019582196617.Spec : Prop :=
  ∀ n, P14392358019582196617.a n = A317510 (n + 1)

end A317510

/-! ## A317510.P10222706070830947366

`∑[A004396(Δ[A005385(n+2)])]+4`
-/

namespace A317510.P10222706070830947366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A317510.P10222706070830947366

namespace A317510

/-- `∑[A004396(Δ[A005385(n+2)])]+4` -/
def P10222706070830947366.Spec : Prop :=
  ∀ n, P10222706070830947366.a n = A317510 (n + 1)

end A317510

/-! ## A317510.P787934033556568919

`A047521(A317626(n+1))`
-/

namespace A317510.P787934033556568919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047521 (A317626 (n + 1)).toNat

end

end A317510.P787934033556568919

namespace A317510

/-- `A047521(A317626(n+1))` -/
def P787934033556568919.Spec : Prop :=
  ∀ n, P787934033556568919.a n = A317510 (n + 1)

end A317510

/-! ## A317510.P8858205292940434515

`A004767(A317626(n+1)-1)`
-/

namespace A317510.P8858205292940434515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A317626 (n + 1) - 1).toNat

end

end A317510.P8858205292940434515

namespace A317510

/-- `A004767(A317626(n+1)-1)` -/
def P8858205292940434515.Spec : Prop :=
  ∀ n, P8858205292940434515.a n = A317510 (n + 1)

end A317510

/-! ## A317510.P5834731899482879789

`A047477(A124485(n+2))`
-/

namespace A317510.P5834731899482879789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047477 (A124485 (n + 2)).toNat

end

end A317510.P5834731899482879789

namespace A317510

/-- `A047477(A124485(n+2))` -/
def P5834731899482879789.Spec : Prop :=
  ∀ n, P5834731899482879789.a n = A317510 (n + 1)

end A317510

/-! ## A317510.P15372434359917586911

`A006369(A005384(n+3))`
-/

namespace A317510.P15372434359917586911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A005384 (n + 3)).toNat

end

end A317510.P15372434359917586911

namespace A317510

/-- `A006369(A005384(n+3))` -/
def P15372434359917586911.Spec : Prop :=
  ∀ n, P15372434359917586911.a n = A317510 (n + 1)

end A317510

/-! ## A317510.P5272527054511129077

`A042965(A176045(n+3))`
-/

namespace A317510.P5272527054511129077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A176045 (n + 3)).toNat

end

end A317510.P5272527054511129077

namespace A317510

/-- `A042965(A176045(n+3))` -/
def P5272527054511129077.Spec : Prop :=
  ∀ n, P5272527054511129077.a n = A317510 (n + 1)

end A317510

/-! ## A317510.P16277177095740785139

`A066481(2*A005384(n+3))`
-/

namespace A317510.P16277177095740785139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066481 (2 * A005384 (n + 3)).toNat

end

end A317510.P16277177095740785139

namespace A317510

/-- `A066481(2*A005384(n+3))` -/
def P16277177095740785139.Spec : Prop :=
  ∀ n, P16277177095740785139.a n = A317510 (n + 1)

end A317510

/-! ## A317510.P10840222394141144351

`A004396(A005385(n+2)+Δ[A005385(n+2)])`
-/

namespace A317510.P10840222394141144351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005385 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A317510.P10840222394141144351

namespace A317510

/-- `A004396(A005385(n+2)+Δ[A005385(n+2)])` -/
def P10840222394141144351.Spec : Prop :=
  ∀ n, P10840222394141144351.a n = A317510 (n + 1)

end A317510

/-!
# A317511: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A317511, there is no canonical definition to state claims against.
-/

/-! ## A317511.P462583341938743457

`A317517(∑[4*n]+1)`
-/

namespace A317511.P462583341938743457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317511.P462583341938743457

/-! ## A317511.P2353002208587641561

`record[gcd(A037012(n), A317517(n+1))]`
-/

namespace A317511.P2353002208587641561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A317517 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317511.P2353002208587641561

/-! ## A317511.P3304858539207027375

`or(A000007(n), A317517(A001844(n)))`
-/

namespace A317511.P3304858539207027375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A317517 (A001844 n).toNat)

end

end A317511.P3304858539207027375

/-! ## A317511.P17124134416472880529

`A317517(A001844(n))+A125005(n+1)`
-/

namespace A317511.P17124134416472880529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A001844 n).toNat + A125005 (n + 1)

end

end A317511.P17124134416472880529

/-! ## A317511.P138945764159152559

`A014963(18*(n+1))*A317517(A001844(n))`
-/

namespace A317511.P138945764159152559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (18 * (n + 1)) * A317517 (A001844 n).toNat

end

end A317511.P138945764159152559

/-!
# A317512: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A317512, the canonical program `A317512.P16024613996863285348` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317512 has offset 1).

The definition of A317512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317512.P6743789810195120224

`ogf((4+3x^2)/(1-8x+x^2-6x^3))`
-/

namespace A317512.P6743789810195120224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 3] [1, -8, 1, -6] n

end

end A317512.P6743789810195120224

namespace A317512

/-- `ogf((4+3x^2)/(1-8x+x^2-6x^3))` -/
def P6743789810195120224.Spec : Prop :=
  ∀ n, P6743789810195120224.a n = A317512 (n + 1)

end A317512

/-! ## A317512.P16024613996863285348

`8*a(n-1)-a(n-2)+6*a(n-3)` with `a(0)=4, a(1)=32, a(2)=255`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317512

/-- `8*a(n-1)-a(n-2)+6*a(n-3)` -/
def P16024613996863285348.Spec : Prop :=
  ∀ n, P16024613996863285348.a n = A317512 (n + 1)

theorem P16024613996863285348.correct : P16024613996863285348.Spec := by
  intro n
  simp only [A317512, Nat.add_sub_cancel]

end A317512

/-! ## A317512.P11349845449316466593

`A317517(∑[n+2]+4)`
-/

namespace A317512.P11349845449316466593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317512.P11349845449316466593

namespace A317512

/-- `A317517(∑[n+2]+4)` -/
def P11349845449316466593.Spec : Prop :=
  ∀ n, P11349845449316466593.a n = A317512 (n + 1)

end A317512

/-! ## A317512.P17909636689890912560

`A063435(n)*A317517(A167614(n+1))`
-/

namespace A317512.P17909636689890912560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A317517 (A167614 (n + 1)).toNat

end

end A317512.P17909636689890912560

namespace A317512

/-- `A063435(n)*A317517(A167614(n+1))` -/
def P17909636689890912560.Spec : Prop :=
  ∀ n, P17909636689890912560.a n = A317512 (n + 1)

end A317512

/-! ## A317512.P11652960769464909830

`lcm(A000034(n), A317517(A167614(n+1)))`
-/

namespace A317512.P11652960769464909830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A317517 (A167614 (n + 1)).toNat)

end

end A317512.P11652960769464909830

namespace A317512

/-- `lcm(A000034(n), A317517(A167614(n+1)))` -/
def P11652960769464909830.Spec : Prop :=
  ∀ n, (P11652960769464909830.a n : ℤ) = A317512 (n + 1)

end A317512

/-!
# A317513: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A317513, there is no canonical definition to state claims against.
-/

/-! ## A317513.P7473992341116423458

`A317517(A374004(n+1))`
-/

namespace A317513.P7473992341116423458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A374004 (n + 1)).toNat

end

end A317513.P7473992341116423458

/-! ## A317513.P1126950467903227124

`A317517(A141214(n)+7)`
-/

namespace A317513.P1126950467903227124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A141214 n + 7).toNat

end

end A317513.P1126950467903227124

/-! ## A317513.P17668491883181618243

`A317517(A052905(n)+9)`
-/

namespace A317513.P17668491883181618243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A052905 n + 9).toNat

end

end A317513.P17668491883181618243

/-! ## A317513.P8490946511150088630

`A317517(A055999(n)+10)`
-/

namespace A317513.P8490946511150088630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A055999 n + 10).toNat

end

end A317513.P8490946511150088630

/-! ## A317513.P5678907590977725823

`A317517(A167614(n+2)+1)`
-/

namespace A317513.P5678907590977725823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A167614 (n + 2) + 1).toNat

end

end A317513.P5678907590977725823

/-!
# A317514: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A317514, there is no canonical definition to state claims against.
-/

/-! ## A317514.P6328099593370466038

`A317517(A374005(n+1))`
-/

namespace A317514.P6328099593370466038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A374005 (n + 1)).toNat

end

end A317514.P6328099593370466038

/-! ## A317514.P7979156211223349909

`A317517(A167499(n+3))`
-/

namespace A317514.P7979156211223349909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A167499 (n + 3)).toNat

end

end A317514.P7979156211223349909

/-! ## A317514.P7446046232448366957

`A317517(eq[6, A131818(n+1)])`
-/

namespace A317514.P7446046232448366957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317514.P7446046232448366957

/-! ## A317514.P3988163873387638507

`A317517(Δ[A264443(n)])`
-/

namespace A317514.P3988163873387638507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (f1 (n + 1) - f1 n).toNat

end

end A317514.P3988163873387638507

/-! ## A317514.P9137113713859264385

`A317517(A046691(n+3))`
-/

namespace A317514.P9137113713859264385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A046691 (n + 3)).toNat

end

end A317514.P9137113713859264385

/-!
# A317515: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A317515, there is no canonical definition to state claims against.
-/

/-! ## A317515.P15311630041943858998

`A317517(A374007(n+1))`
-/

namespace A317515.P15311630041943858998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A374007 (n + 1)).toNat

end

end A317515.P15311630041943858998

/-! ## A317515.P2146195365075860145

`A317517(A167499(n+4)+1)`
-/

namespace A317515.P2146195365075860145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A167499 (n + 4) + 1).toNat

end

end A317515.P2146195365075860145

/-! ## A317515.P11739832086137519414

`A317517(A167614(n+4)+3)`
-/

namespace A317515.P11739832086137519414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A167614 (n + 4) + 3).toNat

end

end A317515.P11739832086137519414

/-! ## A317515.P1831802683834180273

`A317517(eq[7, A131818(n+1)])`
-/

namespace A317515.P1831802683834180273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317515.P1831802683834180273

/-! ## A317515.P13788296908122039091

`A317517(A052905(n+3))`
-/

namespace A317515.P13788296908122039091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A052905 (n + 3)).toNat

end

end A317515.P13788296908122039091

/-!
# A317516: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A317516, there is no canonical definition to state claims against.
-/

/-! ## A317516.P18100780263150311065

`A317517(A374008(n+1))`
-/

namespace A317516.P18100780263150311065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A374008 (n + 1)).toNat

end

end A317516.P18100780263150311065

/-! ## A317516.P9028443089981080390

`A317517(A000124(n+6)+6)`
-/

namespace A317516.P9028443089981080390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (A000124 (n + 6) + 6).toNat

end

end A317516.P9028443089981080390

/-! ## A317516.P7566748621009071212

`A317517(eq[8, A131818(n+1)])`
-/

namespace A317516.P7566748621009071212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317516.P7566748621009071212

/-! ## A317516.P9257682389578058646

`A317517(eq[4, A219347(n)])`
-/

namespace A317516.P9257682389578058646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317516.P9257682389578058646

/-! ## A317516.P8048005071244693251

`A317517(eq[6, A193592(n)])`
-/

namespace A317516.P8048005071244693251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317516.P8048005071244693251

/-!
# A317517: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A317517, there is no canonical definition to state claims against.
-/

/-! ## A317517.P14865266024011838359

`A342126(A300182(n+1))`
-/

namespace A317517.P14865266024011838359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (A300182 (n + 1)).toNat

end

end A317517.P14865266024011838359

/-! ## A317517.P4841511661626110356

`A343271(A317525(n+1))`
-/

namespace A317517.P4841511661626110356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343271 (A317525 (n + 1)).toNat

end

end A317517.P4841511661626110356

/-! ## A317517.P7094601673086204238

`A006949(2*A300182(n+1))`
-/

namespace A317517.P7094601673086204238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (2 * A300182 (n + 1)).toNat

end

end A317517.P7094601673086204238

/-! ## A317517.P15840814519637209662

`A123087(3*A300182(n+1))`
-/

namespace A317517.P15840814519637209662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (3 * A300182 (n + 1)).toNat

end

end A317517.P15840814519637209662

/-! ## A317517.P11957831768879487258

`A343271(A227594(n+1)/2)`
-/

namespace A317517.P11957831768879487258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343271 (SequenceMachineLib.roundAway ((A227594 (n + 1) : ℚ) / 2)).toNat

end

end A317517.P11957831768879487258

/-!
# A317518: Highly composite numbers k such that ceiling(sqrt(k))^2 - k is a square.

The programs for A317518, there is no canonical definition to state claims against.
-/

/-! ## A317518.P15012020498897499797

`record[A002182(A181672(n+1))]`
-/

namespace A317518.P15012020498897499797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A181672 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317518.P15012020498897499797

/-! ## A317518.P12891087759022615712

`record[A002182(n+1)-and(2, A094783(n+1))]`
-/

namespace A317518.P12891087759022615712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) - Int.land 2 (A094783 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317518.P12891087759022615712

/-! ## A317518.P16726154039129311295

`A065218(n+1)-A000122(A123586(2*(n+1)))`
-/

namespace A317518.P16726154039129311295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065218 (n + 1) - A000122 (A123586 (2 * (n + 1))).toNat

end

end A317518.P16726154039129311295

/-! ## A317518.P6302142346543809642

`∩[A002182(n+1), A256173(n+1)]`
-/

namespace A317518.P6302142346543809642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317518.P6302142346543809642

/-!
# A317519: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317519, there is no canonical definition to state claims against.
-/

/-! ## A317519.P258814567831053826

`A317525(∑[4*n]+1)`
-/

namespace A317519.P258814567831053826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317519.P258814567831053826

/-! ## A317519.P4921276012778098493

`record[A003982(n)*A317525(n+1)]`
-/

namespace A317519.P4921276012778098493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317519.P4921276012778098493

/-! ## A317519.P9082074906906412415

`record[A214505(n)*A317525(n+1)]`
-/

namespace A317519.P9082074906906412415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A317525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317519.P9082074906906412415

/-! ## A317519.P2218699925429912778

`record[gcd(A008482(n), A317525(n+1))]`
-/

namespace A317519.P2218699925429912778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A317525 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317519.P2218699925429912778

/-! ## A317519.P15523109817465585251

`lcm(1-and(2, n), A317525(A001844(n)))`
-/

namespace A317519.P15523109817465585251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A317525 (A001844 n).toNat)

end

end A317519.P15523109817465585251

/-!
# A317520: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317520, there is no canonical definition to state claims against.
-/

/-! ## A317520.P4906638074611229730

`A317525(∑[n+2]+4)`
-/

namespace A317520.P4906638074611229730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317520.P4906638074611229730

/-! ## A317520.P16605654638369729209

`A317525(A167614(n+1))+A025438(n)`
-/

namespace A317520.P16605654638369729209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A167614 (n + 1)).toNat + A025438 n

end

end A317520.P16605654638369729209

/-! ## A317520.P15815692462111422661

`A015366(n)*A317525(A167614(n+1))`
-/

namespace A317520.P15815692462111422661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015366 n * A317525 (A167614 (n + 1)).toNat

end

end A317520.P15815692462111422661

/-! ## A317520.P11479089030184040748

`A287091(n)*A317525(A167614(n+1))`
-/

namespace A317520.P11479089030184040748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287091 n * A317525 (A167614 (n + 1)).toNat

end

end A317520.P11479089030184040748

/-! ## A317520.P15958012855275822935

`A317525(A167614(n+1))%A041486(n)`
-/

namespace A317520.P15958012855275822935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317525 (A167614 (n + 1)).toNat) (A041486 n)

end

end A317520.P15958012855275822935

/-!
# A317521: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317521, there is no canonical definition to state claims against.
-/

/-! ## A317521.P4093571133889598397

`A317525(A374004(n+1))`
-/

namespace A317521.P4093571133889598397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A374004 (n + 1)).toNat

end

end A317521.P4093571133889598397

/-! ## A317521.P15407834036383347933

`A317525(A141214(n)+7)`
-/

namespace A317521.P15407834036383347933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A141214 n + 7).toNat

end

end A317521.P15407834036383347933

/-! ## A317521.P5914868864102551575

`A317525(A052905(n)+9)`
-/

namespace A317521.P5914868864102551575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A052905 n + 9).toNat

end

end A317521.P5914868864102551575

/-! ## A317521.P1381720133549547369

`A317525(A055999(n)+10)`
-/

namespace A317521.P1381720133549547369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A055999 n + 10).toNat

end

end A317521.P1381720133549547369

/-! ## A317521.P2762076829561162418

`A317525(A167614(n+2)+1)`
-/

namespace A317521.P2762076829561162418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A167614 (n + 2) + 1).toNat

end

end A317521.P2762076829561162418

/-!
# A317522: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317522, there is no canonical definition to state claims against.
-/

/-! ## A317522.P1579076476467824462

`A317525(A374005(n+1))`
-/

namespace A317522.P1579076476467824462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A374005 (n + 1)).toNat

end

end A317522.P1579076476467824462

/-! ## A317522.P17703906925961464620

`A317525(A166136(n+3)-1)`
-/

namespace A317522.P17703906925961464620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A166136 (n + 3) - 1).toNat

end

end A317522.P17703906925961464620

/-! ## A317522.P6986880990702194920

`A317525(A167614(n+3)+2)`
-/

namespace A317522.P6986880990702194920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A167614 (n + 3) + 2).toNat

end

end A317522.P6986880990702194920

/-! ## A317522.P6281832832725264976

`A317525(A167487(n+3)-2)`
-/

namespace A317522.P6281832832725264976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A167487 (n + 3) - 2).toNat

end

end A317522.P6281832832725264976

/-! ## A317522.P13536240905741236222

`A317525(A141214(n+1)+8)`
-/

namespace A317522.P13536240905741236222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A141214 (n + 1) + 8).toNat

end

end A317522.P13536240905741236222

/-!
# A317523: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317523, there is no canonical definition to state claims against.
-/

/-! ## A317523.P11506402193756341499

`A317525(A374007(n+1))`
-/

namespace A317523.P11506402193756341499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A374007 (n + 1)).toNat

end

end A317523.P11506402193756341499

/-! ## A317523.P15949803698489020003

`A317525(A056115(n)+21)`
-/

namespace A317523.P15949803698489020003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A056115 n + 21).toNat

end

end A317523.P15949803698489020003

/-! ## A317523.P4187370001216069832

`A317525(A167499(n+4)+1)`
-/

namespace A317523.P4187370001216069832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A167499 (n + 4) + 1).toNat

end

end A317523.P4187370001216069832

/-! ## A317523.P17720510833989101504

`A317525(eq[7, A131818(n+1)])`
-/

namespace A317523.P17720510833989101504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317523.P17720510833989101504

/-! ## A317523.P399226538168125424

`A317525(Δ[A023545(n+1)]+10)`
-/

namespace A317523.P399226538168125424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (f1 (n + 1) - f1 n + 10).toNat

end

end A317523.P399226538168125424

/-!
# A317524: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317524, there is no canonical definition to state claims against.
-/

/-! ## A317524.P6459968709192934173

`A317525(A374008(n+1))`
-/

namespace A317524.P6459968709192934173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A374008 (n + 1)).toNat

end

end A317524.P6459968709192934173

/-! ## A317524.P4637899727878052850

`A317525(eq[11, A066657(n)])`
-/

namespace A317524.P4637899727878052850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317524.P4637899727878052850

/-! ## A317524.P15585507202309472405

`A317525(A055999(n+4))`
-/

namespace A317524.P15585507202309472405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (A055999 (n + 4)).toNat

end

end A317524.P15585507202309472405

/-! ## A317524.P5057988126597292679

`A317525(eq[4, A219347(n)])`
-/

namespace A317524.P5057988126597292679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317524.P5057988126597292679

/-! ## A317524.P10537960203947269916

`A317525(eq[6, A193592(n)])`
-/

namespace A317524.P10537960203947269916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317524.P10537960203947269916

/-!
# A317525: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317525, there is no canonical definition to state claims against.
-/

/-! ## A317525.P186368565514576527

`A106251(A227594(n+1))`
-/

namespace A317525.P186368565514576527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A227594 (n + 1)).toNat

end

end A317525.P186368565514576527

/-! ## A317525.P6107257874626069020

`A334666(A316815(n+1))`
-/

namespace A317525.P6107257874626069020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334666 (A316815 (n + 1)).toNat

end

end A317525.P6107257874626069020

/-! ## A317525.P581446258864396667

`A159481(lcm(2, A227594(n+1)))`
-/

namespace A317525.P581446258864396667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (Int.lcm 2 (A227594 (n + 1)))

end

end A317525.P581446258864396667

/-! ## A317525.P9570563876855142220

`A159481(A227594(-xor(n, -1)))`
-/

namespace A317525.P9570563876855142220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A227594 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A317525.P9570563876855142220

/-! ## A317525.P15698017765544793005

`A159481(A227594(Δ[n²]-n))`
-/

namespace A317525.P15698017765544793005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A227594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A317525.P15698017765544793005

/-!
# A317527: Number of edges in the n-alternating group graph.

The programs for A317527, there is no canonical definition to state claims against.
-/

/-! ## A317527.P1838786389336795566

`∑[n]*Δ[abs(1-n)!]`
-/

namespace A317527.P1838786389336795566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A317527.P1838786389336795566

/-! ## A317527.P4141994286857724539

`(n-1)*floor((n+1)!/2)`
-/

namespace A317527.P4141994286857724539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(Nat.factorial (n + 1) : ℚ) / 2⌋

end

end A317527.P4141994286857724539

/-! ## A317527.P2744678223575795625

`ceil((n-1)/2*(n+1)!)`
-/

namespace A317527.P2744678223575795625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / 2 * (Nat.factorial (n + 1) : ℚ)⌉

end

end A317527.P2744678223575795625

/-! ## A317527.P514959643307434739

`(n-1)*floor(∏[n+1]/2)`
-/

namespace A317527.P514959643307434739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A317527.P514959643307434739

/-! ## A317527.P17684995106588139489

`ceil((n-1)/2*record[A119502(n)])`
-/

namespace A317527.P17684995106588139489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A317527.P17684995106588139489

/-! ## A317527.P11663551238090020727

`A074143(n+1)-A000142(n+1)`
-/

namespace A317527.P11663551238090020727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074143 (n + 1) - A000142 (n + 1)

end

end A317527.P11663551238090020727

/-! ## A317527.P12051266138159281225

`A074143(n+1)-(∑[A001563(n)]+1)`
-/

namespace A317527.P12051266138159281225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074143 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317527.P12051266138159281225

/-! ## A317527.P6912831740192295453

`∏[A270059(2*n+1)]-∏[A270059(2*n)]`
-/

namespace A317527.P6912831740192295453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - ∏ j ∈ Finset.range (n + 1), f2 j

end

end A317527.P6912831740192295453

/-! ## A317527.P10865300157424551376

`A001809(n)+n*A138772(A028310(n))`
-/

namespace A317527.P10865300157424551376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 n + (n : ℤ) * A138772 (A028310 n).toNat

end

end A317527.P10865300157424551376

/-! ## A317527.P3664796956981935107

`A000142(n)*A000217(n+1)-A070960(n+1)`
-/

namespace A317527.P3664796956981935107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000217 (n + 1) - A070960 (n + 1)

end

end A317527.P3664796956981935107

/-!
# A317528: Expansion of Sum_{k>=1} mu(k)^2*x^k/(1 + x^k), where mu() is the Moebius function (A008683).

The programs for A317528, the canonical program `A317528.P12745314278989265988` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317528 has offset 1).

The definition of A317528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317528.P16088445071309641525

`∏{p}[n+1, 2-val(A010156(n+1), #)]`
-/

namespace A317528.P16088445071309641525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - (SequenceMachineLib.valuation (A010156 (n + 1)).toNat p : ℤ))

end

end A317528.P16088445071309641525

namespace A317528

/-- `∏{p}[n+1, 2-val(A010156(n+1), #)]` -/
def P16088445071309641525.Spec : Prop :=
  ∀ n, P16088445071309641525.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P14078223031449800801

`A100008(n+1)-A327730(n+1)`
-/

namespace A317528.P14078223031449800801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100008 (n + 1) - A327730 (n + 1)

end

end A317528.P14078223031449800801

namespace A317528

/-- `A100008(n+1)-A327730(n+1)` -/
def P14078223031449800801.Spec : Prop :=
  ∀ n, P14078223031449800801.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P1703249239330139790

`∑{d}[n+1, A001615(#)*A117212((n+1)/#)]`
-/

namespace A317528.P1703249239330139790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317528.P1703249239330139790

namespace A317528

/-- `∑{d}[n+1, A001615(#)*A117212((n+1)/#)]` -/
def P1703249239330139790.Spec : Prop :=
  ∀ n, P1703249239330139790.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P7178061273260882070

`∑{d}[n+1, A078461(#)*A230074((n+1)/#)]`
-/

namespace A317528.P7178061273260882070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A230074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317528.P7178061273260882070

namespace A317528

/-- `∑{d}[n+1, A078461(#)*A230074((n+1)/#)]` -/
def P7178061273260882070.Spec : Prop :=
  ∀ n, P7178061273260882070.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P14183819047126099347

`∑{d}[n+1, A048272(#)*A271102((n+1)/#)]`
-/

namespace A317528.P14183819047126099347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317528.P14183819047126099347

namespace A317528

/-- `∑{d}[n+1, A048272(#)*A271102((n+1)/#)]` -/
def P14183819047126099347.Spec : Prop :=
  ∀ n, P14183819047126099347.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P15673330783639455023

`∑{d}[n+1, A000593(#)*A328729((n+1)/#)]`
-/

namespace A317528.P15673330783639455023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317528.P15673330783639455023

namespace A317528

/-- `∑{d}[n+1, A000593(#)*A328729((n+1)/#)]` -/
def P15673330783639455023.Spec : Prop :=
  ∀ n, P15673330783639455023.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P16459799767983629442

`∑{d}[n+1, A055615(#)*A309324((n+1)/#)]`
-/

namespace A317528.P16459799767983629442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A309324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317528.P16459799767983629442

namespace A317528

/-- `∑{d}[n+1, A055615(#)*A309324((n+1)/#)]` -/
def P16459799767983629442.Spec : Prop :=
  ∀ n, P16459799767983629442.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P493499675773308794

`∑{d}[n+1, A048691(#)*A361019((n+1)/#)]`
-/

namespace A317528.P493499675773308794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317528.P493499675773308794

namespace A317528

/-- `∑{d}[n+1, A048691(#)*A361019((n+1)/#)]` -/
def P493499675773308794.Spec : Prop :=
  ∀ n, P493499675773308794.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P13020349631301942921

`∑{d}[n+1, A288571(#)*A307445((n+1)/#)]`
-/

namespace A317528.P13020349631301942921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288571 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317528.P13020349631301942921

namespace A317528

/-- `∑{d}[n+1, A288571(#)*A307445((n+1)/#)]` -/
def P13020349631301942921.Spec : Prop :=
  ∀ n, P13020349631301942921.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P10270165526313798587

`∑{d}[n+1, A318845(#)*A347090((n+1)/#)]`
-/

namespace A317528.P10270165526313798587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318845 d * A347090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317528.P10270165526313798587

namespace A317528

/-- `∑{d}[n+1, A318845(#)*A347090((n+1)/#)]` -/
def P10270165526313798587.Spec : Prop :=
  ∀ n, P10270165526313798587.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P630362794876008037

`∑{d}[n+1, A008966(#)*A033999((n+1)/#-1)]`
-/

namespace A317528.P630362794876008037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A033999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A317528.P630362794876008037

namespace A317528

/-- `∑{d}[n+1, A008966(#)*A033999((n+1)/#-1)]` -/
def P630362794876008037.Spec : Prop :=
  ∀ n, P630362794876008037.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P12745314278989265988

`A034444(n+1)-A010673(n)*A034444(A008619(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A317528

/-- `A034444(n+1)-A010673(n)*A034444(A008619(n))` -/
def P12745314278989265988.Spec : Prop :=
  ∀ n, P12745314278989265988.a n = A317528 (n + 1)

theorem P12745314278989265988.correct : P12745314278989265988.Spec := by
  intro n
  simp only [A317528, Nat.add_sub_cancel]

end A317528

/-! ## A317528.P18312988667877351865

`A034444(2*(n+1))-A060594(2*(n+1))`
-/

namespace A317528.P18312988667877351865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (2 * (n + 1)) - A060594 (2 * (n + 1))

end

end A317528.P18312988667877351865

namespace A317528

/-- `A034444(2*(n+1))-A060594(2*(n+1))` -/
def P18312988667877351865.Spec : Prop :=
  ∀ n, P18312988667877351865.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P2708586411884074826

`A304182(2*(n+1))-A147848(2*(n+1))`
-/

namespace A317528.P2708586411884074826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304182 (2 * (n + 1)) - A147848 (2 * (n + 1))

end

end A317528.P2708586411884074826

namespace A317528

/-- `A304182(2*(n+1))-A147848(2*(n+1))` -/
def P2708586411884074826.Spec : Prop :=
  ∀ n, P2708586411884074826.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P1531545109245682262

`2*A007875(2*(n+1))-A060594(2*(n+1))`
-/

namespace A317528.P1531545109245682262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007875 (2 * (n + 1)) - A060594 (2 * (n + 1))

end

end A317528.P1531545109245682262

namespace A317528

/-- `2*A007875(2*(n+1))-A060594(2*(n+1))` -/
def P1531545109245682262.Spec : Prop :=
  ∀ n, P1531545109245682262.a n = A317528 (n + 1)

end A317528

/-! ## A317528.P7838211137569616104

`(A056594(2*n)-A056594(n+1))*A068068(n+1)`
-/

namespace A317528.P7838211137569616104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 (2 * n) - A056594 (n + 1)) * A068068 (n + 1)

end

end A317528.P7838211137569616104

namespace A317528

/-- `(A056594(2*n)-A056594(n+1))*A068068(n+1)` -/
def P7838211137569616104.Spec : Prop :=
  ∀ n, P7838211137569616104.a n = A317528 (n + 1)

end A317528

/-!
# A317529: Expansion of Sum_{k>=1} x^(k^2)/(1 + x^(k^2)).

The programs for A317529, the canonical program `A317529.P1429029592004012439` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317529 has offset 1).

The definition of A317529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317529.P14955749797031733617

`2*A328372(n+1)-A046951(n+1)`
-/

namespace A317529.P14955749797031733617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328372 (n + 1) - A046951 (n + 1)

end

end A317529.P14955749797031733617

namespace A317529

/-- `2*A328372(n+1)-A046951(n+1)` -/
def P14955749797031733617.Spec : Prop :=
  ∀ n, P14955749797031733617.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P3650072983157544847

`∑{d}[n+1, A008836(#)*A048272((n+1)/#)]`
-/

namespace A317529.P3650072983157544847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P3650072983157544847

namespace A317529

/-- `∑{d}[n+1, A008836(#)*A048272((n+1)/#)]` -/
def P3650072983157544847.Spec : Prop :=
  ∀ n, P3650072983157544847.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P13793224553351183774

`∑{d}[n+1, A007913(#)*A118209((n+1)/#)]`
-/

namespace A317529.P13793224553351183774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007913 d * A118209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P13793224553351183774

namespace A317529

/-- `∑{d}[n+1, A007913(#)*A118209((n+1)/#)]` -/
def P13793224553351183774.Spec : Prop :=
  ∀ n, P13793224553351183774.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P1429029592004012439

`∑{d}[n+1, A076752(#)*A117212((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A317529

/-- `∑{d}[n+1, A076752(#)*A117212((n+1)/#)]` -/
def P1429029592004012439.Spec : Prop :=
  ∀ n, P1429029592004012439.a n = A317529 (n + 1)

theorem P1429029592004012439.correct : P1429029592004012439.Spec := by
  intro n
  simp only [A317529, Nat.add_sub_cancel]

end A317529

/-! ## A317529.P52912794612215532

`∑{d}[n+1, A088705(#)*A143259((n+1)/#)]`
-/

namespace A317529.P52912794612215532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P52912794612215532

namespace A317529

/-- `∑{d}[n+1, A088705(#)*A143259((n+1)/#)]` -/
def P52912794612215532.Spec : Prop :=
  ∀ n, P52912794612215532.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P10003616202106678547

`∑{d}[n+1, A023900(#)*A328373((n+1)/#)]`
-/

namespace A317529.P10003616202106678547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P10003616202106678547

namespace A317529

/-- `∑{d}[n+1, A023900(#)*A328373((n+1)/#)]` -/
def P10003616202106678547.Spec : Prop :=
  ∀ n, P10003616202106678547.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P17476421093433567807

`∑{d}[n+1, A158522(#)*A288571((n+1)/#)]`
-/

namespace A317529.P17476421093433567807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A288571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P17476421093433567807

namespace A317529

/-- `∑{d}[n+1, A158522(#)*A288571((n+1)/#)]` -/
def P17476421093433567807.Spec : Prop :=
  ∀ n, P17476421093433567807.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P17075730110902870197

`∑{d}[n+1, A109386(#)*A347092((n+1)/#)]`
-/

namespace A317529.P17075730110902870197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109386 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P17075730110902870197

namespace A317529

/-- `∑{d}[n+1, A109386(#)*A347092((n+1)/#)]` -/
def P17075730110902870197.Spec : Prop :=
  ∀ n, P17075730110902870197.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P11427632475861429507

`∑{d}[n+1, A124315(#)*A361019((n+1)/#)]`
-/

namespace A317529.P11427632475861429507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P11427632475861429507

namespace A317529

/-- `∑{d}[n+1, A124315(#)*A361019((n+1)/#)]` -/
def P11427632475861429507.Spec : Prop :=
  ∀ n, P11427632475861429507.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P15841012924916380405

`∑{d}[n+1, A230074(#)*A326813((n+1)/#)]`
-/

namespace A317529.P15841012924916380405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A326813 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P15841012924916380405

namespace A317529

/-- `∑{d}[n+1, A230074(#)*A326813((n+1)/#)]` -/
def P15841012924916380405.Spec : Prop :=
  ∀ n, P15841012924916380405.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P14156529635253444646

`∑{d}[n+1, A288417(#)*A323363((n+1)/#)]`
-/

namespace A317529.P14156529635253444646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288417 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P14156529635253444646

namespace A317529

/-- `∑{d}[n+1, A288417(#)*A323363((n+1)/#)]` -/
def P14156529635253444646.Spec : Prop :=
  ∀ n, P14156529635253444646.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P13702301541191974299

`∑{d}[n+1, A318768(#)*A326415((n+1)/#)]`
-/

namespace A317529.P13702301541191974299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318768 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P13702301541191974299

namespace A317529

/-- `∑{d}[n+1, A318768(#)*A326415((n+1)/#)]` -/
def P13702301541191974299.Spec : Prop :=
  ∀ n, P13702301541191974299.a n = A317529 (n + 1)

end A317529

/-! ## A317529.P5487590910948553784

`∑{d}[n+1, A059841(#-1)*A181563((n+1)/#)]`
-/

namespace A317529.P5487590910948553784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A181563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P5487590910948553784

namespace A317529

/-- `∑{d}[n+1, A059841(#-1)*A181563((n+1)/#)]` -/
def P5487590910948553784.Spec : Prop :=
  ∀ n, P5487590910948553784.a n = A317529 (n + 1)

end A317529

/-!
# A317531: Expansion of Sum_{p prime, k>=1} x^(p^k)/(1 + x^(p^k)).

The programs for A317531, the canonical program `A317531.P16080676606467659442` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317531 has offset 1).

The definition of A317531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317531.P10731542224402692925

`Δ[A182921(n)]`
-/

namespace A317531.P10731542224402692925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317531.P10731542224402692925

namespace A317531

/-- `Δ[A182921(n)]` -/
def P10731542224402692925.Spec : Prop :=
  ∀ n, P10731542224402692925.a n = A317531 (n + 1)

end A317531

/-! ## A317531.P15097295918838456158

`A325937(A068794(n+1))`
-/

namespace A317531.P15097295918838456158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A068794 (n + 1)).toNat

end

end A317531.P15097295918838456158

namespace A317531

/-- `A325937(A068794(n+1))` -/
def P15097295918838456158.Spec : Prop :=
  ∀ n, P15097295918838456158.a n = A317531 (n + 1)

end A317531

/-! ## A317531.P2557911606665399778

`A182921(n+1)-A182921(n)`
-/

namespace A317531.P2557911606665399778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182921 (n + 1) - A182921 n

end

end A317531.P2557911606665399778

namespace A317531

/-- `A182921(n+1)-A182921(n)` -/
def P2557911606665399778.Spec : Prop :=
  ∀ n, P2557911606665399778.a n = A317531 (n + 1)

end A317531

/-! ## A317531.P16080676606467659442

`∑{d}[n+1, A095112(#)*A117212((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A317531

/-- `∑{d}[n+1, A095112(#)*A117212((n+1)/#)]` -/
def P16080676606467659442.Spec : Prop :=
  ∀ n, P16080676606467659442.a n = A317531 (n + 1)

theorem P16080676606467659442.correct : P16080676606467659442.Spec := by
  intro n
  simp only [A317531, Nat.add_sub_cancel]

end A317531

/-! ## A317531.P1853250571407485904

`∑{d}[n+1, A069264(#)*A361019((n+1)/#)]`
-/

namespace A317531.P1853250571407485904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069264 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317531.P1853250571407485904

namespace A317531

/-- `∑{d}[n+1, A069264(#)*A361019((n+1)/#)]` -/
def P1853250571407485904.Spec : Prop :=
  ∀ n, P1853250571407485904.a n = A317531 (n + 1)

end A317531

/-! ## A317531.P13197895924347511935

`∑{d}[n+1, A033999(#-1)*A069513((n+1)/#)]`
-/

namespace A317531.P13197895924347511935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317531.P13197895924347511935

namespace A317531

/-- `∑{d}[n+1, A033999(#-1)*A069513((n+1)/#)]` -/
def P13197895924347511935.Spec : Prop :=
  ∀ n, P13197895924347511935.a n = A317531 (n + 1)

end A317531

/-! ## A317531.P10507333781340474192

`2*A001222(A141310(n))-A001222(n+1)`
-/

namespace A317531.P10507333781340474192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (A141310 n).toNat - A001222 (n + 1)

end

end A317531.P10507333781340474192

namespace A317531

/-- `2*A001222(A141310(n))-A001222(n+1)` -/
def P10507333781340474192.Spec : Prop :=
  ∀ n, P10507333781340474192.a n = A317531 (n + 1)

end A317531

/-! ## A317531.P9064658491989641593

`A001222(n+1)-2*A001222(A152271(n))`
-/

namespace A317531.P9064658491989641593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 2 * A001222 (A152271 n).toNat

end

end A317531.P9064658491989641593

namespace A317531

/-- `A001222(n+1)-2*A001222(A152271(n))` -/
def P9064658491989641593.Spec : Prop :=
  ∀ n, P9064658491989641593.a n = A317531 (n + 1)

end A317531

/-! ## A317531.P16040979816764405276

`A001222(n+1)-A001222(A152271(n)²)`
-/

namespace A317531.P16040979816764405276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A152271 n ^ 2).toNat

end

end A317531.P16040979816764405276

namespace A317531

/-- `A001222(n+1)-A001222(A152271(n)²)` -/
def P16040979816764405276.Spec : Prop :=
  ∀ n, P16040979816764405276.a n = A317531 (n + 1)

end A317531

/-! ## A317531.P14542219457073759601

`A001222(A141310(n)²)-A001222(n+1)`
-/

namespace A317531.P14542219457073759601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A141310 n ^ 2).toNat - A001222 (n + 1)

end

end A317531.P14542219457073759601

namespace A317531

/-- `A001222(A141310(n)²)-A001222(n+1)` -/
def P14542219457073759601.Spec : Prop :=
  ∀ n, P14542219457073759601.a n = A317531 (n + 1)

end A317531

/-! ## A317531.P9586397545218324612

`A086436(A141310(n)²)-A086436(n+1)`
-/

namespace A317531.P9586397545218324612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A141310 n ^ 2).toNat - A086436 (n + 1)

end

end A317531.P9586397545218324612

namespace A317531

/-- `A086436(A141310(n)²)-A086436(n+1)` -/
def P9586397545218324612.Spec : Prop :=
  ∀ n, P9586397545218324612.a n = A317531 (n + 1)

end A317531

/-!
# A317533: Regular triangle read rows: T(n,k) = number of non-isomorphic multiset partitions of size n and length k.

The programs for A317533, there is no canonical definition to state claims against.
-/

/-! ## A317533.P10530219622852566584

`A318816(∑[A002260(A028310(n))])`
-/

namespace A317533.P10530219622852566584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318816 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A317533.P10530219622852566584

/-! ## A317533.P17434201490724835480

`A318816(∑[A002260(A233583(n+1))])`
-/

namespace A317533.P17434201490724835480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318816 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A317533.P17434201490724835480

/-! ## A317533.P14413736194149410277

`A318816(A014370(n+1)-A002262(n))`
-/

namespace A317533.P14413736194149410277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318816 (A014370 (n + 1) - A002262 n).toNat

end

end A317533.P14413736194149410277

/-! ## A317533.P11263706355744875931

`A318816(record[A014370(n+1)-A071669(n)])`
-/

namespace A317533.P11263706355744875931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (n + 1) - A071669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318816 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A317533.P11263706355744875931

/-! ## A317533.P15666657726817687069

`A318816(A014370(n+1))`
-/

namespace A317533.P15666657726817687069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318816 (A014370 (n + 1)).toNat

end

end A317533.P15666657726817687069

/-!
# A317534: Numbers k such that the poset of factorizations of k, ordered by refinement, is not a lattice.

The programs for A317534, there is no canonical definition to state claims against.
-/

/-! ## A317534.P16549388768641939256

`lt[4, A076526(n+1)]+1`
-/

namespace A317534.P16549388768641939256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A317534.P16549388768641939256

/-! ## A317534.P2721122200669328357

`lt[4, A376140(n+1)]+1`
-/

namespace A317534.P2721122200669328357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376140 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A317534.P2721122200669328357

/-! ## A317534.P1996689084265637277

`lt[2, A035444(A074206(n))]`
-/

namespace A317534.P1996689084265637277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A317534.P1996689084265637277

/-! ## A317534.P1558685291615105762

`lt[4, A076526(A028310(n))]`
-/

namespace A317534.P1558685291615105762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A317534.P1558685291615105762

/-! ## A317534.P3824064559745912447

`A112275(lt[4, A076526(n+1)])`
-/

namespace A317534.P3824064559745912447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A317534.P3824064559745912447

/-! ## A317534.P3156997145150126481

`A326178(lt[4, A076526(n+1)])`
-/

namespace A317534.P3156997145150126481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A317534.P3156997145150126481

/-! ## A317534.P18234224690681505283

`∪[A046304(n+1), A379336(n+1)]`
-/

namespace A317534.P18234224690681505283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317534.P18234224690681505283

/-! ## A317534.P11763590979431192943

`∪[A122616(n+1), A379336(n+1)]`
-/

namespace A317534.P11763590979431192943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317534.P11763590979431192943

/-! ## A317534.P497874589399909905

`∪[A172419(n+1), A379336(n+1)]`
-/

namespace A317534.P497874589399909905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317534.P497874589399909905

/-! ## A317534.P8314562076126944774

`∪[A326112(n+1), A379336(n+1)]`
-/

namespace A317534.P8314562076126944774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317534.P8314562076126944774

/-!
# A317535: Expansion of 1/(1 + 1/(1 - x) - Product_{k>=1} 1/(1 - x^k)).

The programs for A317535, there is no canonical definition to state claims against.
-/

/-! ## A317535.P1272213492180607935

`A185283(A128734(n))+A028303(n)`
-/

namespace A317535.P1272213492180607935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A128734 n).toNat + A028303 n

end

end A317535.P1272213492180607935

/-! ## A317535.P10878533136196255311

`A003056(A047974(n))-ceil(n/4)`
-/

namespace A317535.P10878533136196255311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A047974 n).toNat - ⌈(n : ℚ) / 4⌉

end

end A317535.P10878533136196255311

/-! ## A317535.P9468762218093264472

`A003056(A091175(n))-A000194(n)`
-/

namespace A317535.P9468762218093264472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A091175 n).toNat - A000194 n

end

end A317535.P9468762218093264472

/-! ## A317535.P4958832104113437970

`A003056(A344775(n)-A002088(n))`
-/

namespace A317535.P4958832104113437970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A344775 n - A002088 n).toNat

end

end A317535.P4958832104113437970

/-! ## A317535.P10949121602391780505

`A003056(A344775(n)-A007091(n))`
-/

namespace A317535.P10949121602391780505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A344775 n - A007091 n).toNat

end

end A317535.P10949121602391780505

/-!
# A317536: Expansion of 1/(1 + 1/(1 - x) - Product_{k>=1} (1 + x^k)).

The programs for A317536, there is no canonical definition to state claims against.
-/

/-! ## A317536.P1525255991272346316

`floor(A001333(n)/A131752(n+1))`
-/

namespace A317536.P1525255991272346316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001333 n : ℚ) / (A131752 (n + 1) : ℚ)⌋

end

end A317536.P1525255991272346316

/-! ## A317536.P4996128922886809313

`floor(A095016(3*(n+1))/A296958(n+1))`
-/

namespace A317536.P4996128922886809313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095016 (3 * (n + 1)) : ℚ) / (A296958 (n + 1) : ℚ)⌋

end

end A317536.P4996128922886809313

/-! ## A317536.P104954961757689337

`floor(A096581(n+4)/A333572(3*n+4))`
-/

namespace A317536.P104954961757689337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096581 (n + 4) : ℚ) / (A333572 (3 * n + 4) : ℚ)⌋

end

end A317536.P104954961757689337

/-!
# A317537: The n-th positive integer that has exactly n representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317537, there is no canonical definition to state claims against.
-/

/-! ## A317537.P13366068604085462455

`A317390(2*(n+1)²)`
-/

namespace A317537.P13366068604085462455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (2 * (n + 1) ^ 2)

end

end A317537.P13366068604085462455

/-! ## A317537.P13674643618366432030

`record[A317390(A168281(n+1))]`
-/

namespace A317537.P13674643618366432030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A168281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317537.P13674643618366432030

/-! ## A317537.P3261688209810075791

`A317390(A080476(2*(n+1)))+char[20]`
-/

namespace A317537.P3261688209810075791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A080476 (2 * (n + 1))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317537.P3261688209810075791

/-! ## A317537.P4814477196074818762

`record[A214295(n+1)*A317390(2*(n+1))]`
-/

namespace A317537.P4814477196074818762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (n + 1) * A317390 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317537.P4814477196074818762

/-! ## A317537.P10442808466915489738

`A317390(A080476(2*(n+1)))%∑[A000045(n+12)]`
-/

namespace A317537.P10442808466915489738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317390 (A080476 (2 * (n + 1))).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317537.P10442808466915489738

/-!
# A317538: Indices m for which A317413(m) = 1.

The programs for A317538, the canonical program `A317538.P3582582854706966060` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317538 has offset 1).

The definition of A317538 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317538.P3582582854706966060

`3*n+1-A073089(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A317538

/-- `3*n+1-A073089(n+1)` -/
def P3582582854706966060.Spec : Prop :=
  ∀ n, P3582582854706966060.a n = A317538 (n + 1)

theorem P3582582854706966060.correct : P3582582854706966060.Spec := by
  intro n
  simp only [A317538, Nat.add_sub_cancel]

end A317538

/-! ## A317538.P1136291682051051046

`1-(char[xor(n, Δ[xor(n, 2*n)])]-3*n)`
-/

namespace A317538.P1136291682051051046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (3 * n : ℤ))

end

end A317538.P1136291682051051046

namespace A317538

/-- `1-(char[xor(n, Δ[xor(n, 2*n)])]-3*n)` -/
def P1136291682051051046.Spec : Prop :=
  ∀ n, P1136291682051051046.a n = A317538 (n + 1)

end A317538

/-! ## A317538.P16970958378581496393

`ceil(A317539(Δ[n²])/2)`
-/

namespace A317538.P16970958378581496393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A317538.P16970958378581496393

namespace A317538

/-- `ceil(A317539(Δ[n²])/2)` -/
def P16970958378581496393.Spec : Prop :=
  ∀ n, P16970958378581496393.a n = A317538 (n + 1)

end A317538

/-! ## A317538.P5913657700171141731

`A090678(2*n)+3*n`
-/

namespace A317538.P5913657700171141731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 (2 * n) + (3 * n : ℤ)

end

end A317538.P5913657700171141731

namespace A317538

/-- `A090678(2*n)+3*n` -/
def P5913657700171141731.Spec : Prop :=
  ∀ n, P5913657700171141731.a n = A317538 (n + 1)

end A317538

/-! ## A317538.P10268393014092205284

`eq[3, A092910(n)]+1+n`
-/

namespace A317538.P10268393014092205284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n

end

end A317538.P10268393014092205284

namespace A317538

/-- `eq[3, A092910(n)]+1+n` -/
def P10268393014092205284.Spec : Prop :=
  ∀ n, (P10268393014092205284.a n : ℤ) = A317538 (n + 1)

end A317538

/-! ## A317538.P16698349988414792919

`eq[4, A007400(n+1)]+n`
-/

namespace A317538.P16698349988414792919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n

end

end A317538.P16698349988414792919

namespace A317538

/-- `eq[4, A007400(n+1)]+n` -/
def P16698349988414792919.Spec : Prop :=
  ∀ n, (P16698349988414792919.a n : ℤ) = A317538 (n + 1)

end A317538

/-! ## A317538.P13951469899364772814

`round(A317539(2*n+1)/2)`
-/

namespace A317538.P13951469899364772814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A317539 (2 * n + 1) : ℚ) / 2)

end

end A317538.P13951469899364772814

namespace A317538

/-- `round(A317539(2*n+1)/2)` -/
def P13951469899364772814.Spec : Prop :=
  ∀ n, P13951469899364772814.a n = A317538 (n + 1)

end A317538

/-! ## A317538.P13878544957326370138

`a(n-1)+A088431(n)+1` with `a(0)=1`
-/

namespace A317538.P13878544957326370138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A088431 n + 1)

end

end A317538.P13878544957326370138

namespace A317538

/-- `a(n-1)+A088431(n)+1` -/
def P13878544957326370138.Spec : Prop :=
  ∀ n, P13878544957326370138.a n = A317538 (n + 1)

end A317538

/-! ## A317538.P4145001511747486109

`eq[2, A088431(n+1)]+1+n`
-/

namespace A317538.P4145001511747486109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n

end

end A317538.P4145001511747486109

namespace A317538

/-- `eq[2, A088431(n+1)]+1+n` -/
def P4145001511747486109.Spec : Prop :=
  ∀ n, (P4145001511747486109.a n : ℤ) = A317538 (n + 1)

end A317538

/-! ## A317538.P17303441152655425764

`(A073088(n+2)+2*n+1)/2`
-/

namespace A317538.P17303441152655425764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073088 (n + 2) + (2 * n + 1 : ℤ) : ℚ) / 2

end

end A317538.P17303441152655425764

namespace A317538

/-- `(A073088(n+2)+2*n+1)/2` -/
def P17303441152655425764.Spec : Prop :=
  ∀ n, P17303441152655425764.a n = (A317538 (n + 1) : ℚ)

end A317538

/-! ## A317538.P17275992065409916650

`A067060(A317539(n+1))`
-/

namespace A317538.P17275992065409916650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (A317539 (n + 1)).toNat

end

end A317538.P17275992065409916650

namespace A317538

/-- `A067060(A317539(n+1))` -/
def P17275992065409916650.Spec : Prop :=
  ∀ n, P17275992065409916650.a n = A317538 (n + 1)

end A317538

/-! ## A317538.P17676787831400242557

`A037915(A073088(n+2))`
-/

namespace A317538.P17676787831400242557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A073088 (n + 2)).toNat

end

end A317538.P17676787831400242557

namespace A317538

/-- `A037915(A073088(n+2))` -/
def P17676787831400242557.Spec : Prop :=
  ∀ n, P17676787831400242557.a n = A317538 (n + 1)

end A317538

/-! ## A317538.P12260618692502272007

`A157932(n+1)+A089013(n)`
-/

namespace A317538.P12260618692502272007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157932 (n + 1) + A089013 n

end

end A317538.P12260618692502272007

namespace A317538

/-- `A157932(n+1)+A089013(n)` -/
def P12260618692502272007.Spec : Prop :=
  ∀ n, P12260618692502272007.a n = A317538 (n + 1)

end A317538

/-! ## A317538.P16746035304037228533

`∑[A000005(Δ[A073088(n+1)])]`
-/

namespace A317538.P16746035304037228533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317538.P16746035304037228533

namespace A317538

/-- `∑[A000005(Δ[A073088(n+1)])]` -/
def P16746035304037228533.Spec : Prop :=
  ∀ n, P16746035304037228533.a n = A317538 (n + 1)

end A317538

/-! ## A317538.P12953660689800231884

`A014601(n)+xor(n, A089013(n))`
-/

namespace A317538.P12953660689800231884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n + Int.xor (n : ℤ) (A089013 n)

end

end A317538.P12953660689800231884

namespace A317538

/-- `A014601(n)+xor(n, A089013(n))` -/
def P12953660689800231884.Spec : Prop :=
  ∀ n, P12953660689800231884.a n = A317538 (n + 1)

end A317538

/-!
# A317539: Indices m for which A317413(m) = 3.

The programs for A317539, there is no canonical definition to state claims against.
-/

/-! ## A317539.P13772291159643749479

`filter[A379729(n+1), A131735(#)]`
-/

namespace A317539.P13772291159643749479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131735 (f1 j).toNat = 1) n)

end

end A317539.P13772291159643749479

/-! ## A317539.P13370189846975283610

`∩[A047247(n+1), A379729(n+1)]`
-/

namespace A317539.P13370189846975283610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317539.P13370189846975283610

/-!
# A317540: a(-1) = -1, a(0) = 1, a(n) = A317539(n) - 3*(n-1) for n > 0.

The programs for A317540, there is no canonical definition to state claims against.
-/

/-! ## A317540.P9160032122358600346

`3-A125047(A077866(n+4))`
-/

namespace A317540.P9160032122358600346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A125047 (A077866 (n + 4)).toNat

end

end A317540.P9160032122358600346

/-! ## A317540.P10347751128482108716

`A125047(n+11)-A000005(A107692(n+1))`
-/

namespace A317540.P10347751128482108716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125047 (n + 11) - A000005 (A107692 (n + 1)).toNat

end

end A317540.P10347751128482108716

/-! ## A317540.P3134775506092869714

`A125047(A152985(9*n+4))-2`
-/

namespace A317540.P3134775506092869714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125047 (A152985 (9 * n + 4)).toNat - 2

end

end A317540.P3134775506092869714

/-!
# A317542: Formal inverse of the period-doubling sequence A096268.

The programs for A317542, the canonical program `A317542.P11071654199946522646` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317542 has offset 0).

The definition of A317542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317542.P11071654199946522646

`a(floor((n-2)/gcd(n+1, n-3)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317542

/-- `a(floor((n-2)/gcd(n+1, n-3)))` -/
def P11071654199946522646.Spec : Prop :=
  ∀ n, (P11071654199946522646.a n : ℤ) = A317542 n

theorem P11071654199946522646.correct : P11071654199946522646.Spec := by
  intro n
  simp only [A317542]

end A317542

/-! ## A317542.P2713254654525037239

`3%A316831(n+1)`
-/

namespace A317542.P2713254654525037239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A316831 (n + 1))

end

end A317542.P2713254654525037239

namespace A317542

/-- `3%A316831(n+1)` -/
def P2713254654525037239.Spec : Prop :=
  ∀ n, P2713254654525037239.a n = A317542 n

end A317542

/-! ## A317542.P7701696441628888919

`char[A219608(n+1)-2]`
-/

namespace A317542.P7701696441628888919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219608 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A317542.P7701696441628888919

namespace A317542

/-- `char[A219608(n+1)-2]` -/
def P7701696441628888919.Spec : Prop :=
  ∀ n, (P7701696441628888919.a n : ℤ) = A317542 n

end A317542

/-! ## A317542.P17881482460041516458

`char[2*A060142(n)-1]`
-/

namespace A317542.P17881482460041516458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060142 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A317542.P17881482460041516458

namespace A317542

/-- `char[2*A060142(n)-1]` -/
def P17881482460041516458.Spec : Prop :=
  ∀ n, (P17881482460041516458.a n : ℤ) = A317542 n

end A317542

/-! ## A317542.P8706970422573143318

`char[2*A084471(n+1)-1]`
-/

namespace A317542.P8706970422573143318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084471 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A317542.P8706970422573143318

namespace A317542

/-- `char[2*A084471(n+1)-1]` -/
def P8706970422573143318.Spec : Prop :=
  ∀ n, (P8706970422573143318.a n : ℤ) = A317542 n

end A317542

/-! ## A317542.P11775035897331515142

`char[2*∑[A219609(n+1)]-1]`
-/

namespace A317542.P11775035897331515142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219609 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A317542.P11775035897331515142

namespace A317542

/-- `char[2*∑[A219609(n+1)]-1]` -/
def P11775035897331515142.Spec : Prop :=
  ∀ n, (P11775035897331515142.a n : ℤ) = A317542 n

end A317542

/-! ## A317542.P3787269809374698638

`A085405(A284459(n+1))`
-/

namespace A317542.P3787269809374698638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (A284459 (n + 1)).toNat

end

end A317542.P3787269809374698638

namespace A317542

/-- `A085405(A284459(n+1))` -/
def P3787269809374698638.Spec : Prop :=
  ∀ n, P3787269809374698638.a n = A317542 n

end A317542

/-! ## A317542.P16286574247166220790

`char[A004273(A060142(n+1))]`
-/

namespace A317542.P16286574247166220790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A060142 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A317542.P16286574247166220790

namespace A317542

/-- `char[A004273(A060142(n+1))]` -/
def P16286574247166220790.Spec : Prop :=
  ∀ n, (P16286574247166220790.a n : ℤ) = A317542 n

end A317542

/-! ## A317542.P6108385342764512148

`A326822(A361020(n+1)+1)`
-/

namespace A317542.P6108385342764512148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 (A361020 (n + 1) + 1).toNat

end

end A317542.P6108385342764512148

namespace A317542

/-- `A326822(A361020(n+1)+1)` -/
def P6108385342764512148.Spec : Prop :=
  ∀ n, P6108385342764512148.a n = A317542 n

end A317542

/-! ## A317542.P13065065730033242018

`A036987(A004718(n+1)+A000120(n+1))`
-/

namespace A317542.P13065065730033242018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A004718 (n + 1) + A000120 (n + 1)).toNat

end

end A317542.P13065065730033242018

namespace A317542

/-- `A036987(A004718(n+1)+A000120(n+1))` -/
def P13065065730033242018.Spec : Prop :=
  ∀ n, P13065065730033242018.a n = A317542 n

end A317542

/-! ## A317542.P10572645700505414680

`and(n, A086747(n+2))`
-/

namespace A317542.P10572645700505414680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A086747 (n + 2))

end

end A317542.P10572645700505414680

namespace A317542

/-- `and(n, A086747(n+2))` -/
def P10572645700505414680.Spec : Prop :=
  ∀ n, P10572645700505414680.a n = A317542 n

end A317542

/-! ## A317542.P17853518858426984191

`∏{d}[A343029(n+1), log(#)]`
-/

namespace A317542.P17853518858426984191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A317542.P17853518858426984191

namespace A317542

/-- `∏{d}[A343029(n+1), log(#)]` -/
def P17853518858426984191.Spec : Prop :=
  ∀ n, P17853518858426984191.a n = (A317542 n : ℝ)

end A317542

/-! ## A317542.P14304898304096883800

`A086747(A141310(n+1))`
-/

namespace A317542.P14304898304096883800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (A141310 (n + 1)).toNat

end

end A317542.P14304898304096883800

namespace A317542

/-- `A086747(A141310(n+1))` -/
def P14304898304096883800.Spec : Prop :=
  ∀ n, P14304898304096883800.a n = A317542 n

end A317542

/-! ## A317542.P12005209347099217541

`A086747(A142150(n+1))`
-/

namespace A317542.P12005209347099217541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (A142150 (n + 1)).toNat

end

end A317542.P12005209347099217541

namespace A317542

/-- `A086747(A142150(n+1))` -/
def P12005209347099217541.Spec : Prop :=
  ∀ n, P12005209347099217541.a n = A317542 n

end A317542

/-! ## A317542.P1594799743623582917

`A361016(A343029(n+1)²)`
-/

namespace A317542.P1594799743623582917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361016 (A343029 (n + 1) ^ 2).toNat

end

end A317542.P1594799743623582917

namespace A317542

/-- `A361016(A343029(n+1)²)` -/
def P1594799743623582917.Spec : Prop :=
  ∀ n, P1594799743623582917.a n = A317542 n

end A317542

/-! ## A317542.P16323073405878174479

`A086747((n+2)*A000035(n))`
-/

namespace A317542.P16323073405878174479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 ((n + 2 : ℤ) * A000035 n).toNat

end

end A317542.P16323073405878174479

namespace A317542

/-- `A086747((n+2)*A000035(n))` -/
def P16323073405878174479.Spec : Prop :=
  ∀ n, P16323073405878174479.a n = A317542 n

end A317542

/-! ## A317542.P9292775759222663002

`C(A343030(n+1), A000120(n+1))`
-/

namespace A317542.P9292775759222663002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A343030 (n + 1)).toNat (A000120 (n + 1)).toNat

end

end A317542.P9292775759222663002

namespace A317542

/-- `C(A343030(n+1), A000120(n+1))` -/
def P9292775759222663002.Spec : Prop :=
  ∀ n, (P9292775759222663002.a n : ℤ) = A317542 n

end A317542

/-! ## A317542.P5093354926644183159

`A361016(A343029(n+1)*A343029(n+1))`
-/

namespace A317542.P5093354926644183159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361016 (A343029 (n + 1) * A343029 (n + 1)).toNat

end

end A317542.P5093354926644183159

namespace A317542

/-- `A361016(A343029(n+1)*A343029(n+1))` -/
def P5093354926644183159.Spec : Prop :=
  ∀ n, P5093354926644183159.a n = A317542 n

end A317542

/-! ## A317542.P2440517319123421136

`A124758(2*(n+1))%2`
-/

namespace A317542.P2440517319123421136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124758 (2 * (n + 1))) 2

end

end A317542.P2440517319123421136

namespace A317542

/-- `A124758(2*(n+1))%2` -/
def P2440517319123421136.Spec : Prop :=
  ∀ n, P2440517319123421136.a n = A317542 n

end A317542

/-! ## A317542.P4690845783003158109

`A086747(A014682(n+1))`
-/

namespace A317542.P4690845783003158109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (A014682 (n + 1)).toNat

end

end A317542.P4690845783003158109

namespace A317542

/-- `A086747(A014682(n+1))` -/
def P4690845783003158109.Spec : Prop :=
  ∀ n, P4690845783003158109.a n = A317542 n

end A317542

/-!
# A317543: Positions of 1's in A317542, the formal inverse of the period-doubling sequence A096268.

The programs for A317543, there is no canonical definition to state claims against.
-/

/-! ## A317543.P6980643102055466715

`lt[0, A317542(n)]`
-/

namespace A317543.P6980643102055466715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317542 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A317543.P6980643102055466715

/-! ## A317543.P14591587852331989754

`A219608(n+2)-2`
-/

namespace A317543.P14591587852331989754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219608 (n + 2) - 2

end

end A317543.P14591587852331989754

/-! ## A317543.P5971699599738953663

`eq[0, A343029(n+1)]`
-/

namespace A317543.P5971699599738953663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317543.P5971699599738953663

/-! ## A317543.P2469515865283377637

`eq[2, A316831(n+1)]`
-/

namespace A317543.P2469515865283377637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317543.P2469515865283377637

/-! ## A317543.P17154956238068091985

`eq[2, A316831(n)]-1`
-/

namespace A317543.P17154956238068091985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A317543.P17154956238068091985

/-! ## A317543.P147092646920576260

`eq[1, Δ[A086747(2*n)]]`
-/

namespace A317543.P147092646920576260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317543.P147092646920576260

/-! ## A317543.P1041236819376236207

`2*A060142(n+1)-1`
-/

namespace A317543.P1041236819376236207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060142 (n + 1) - 1

end

end A317543.P1041236819376236207

/-! ## A317543.P3994139464196065939

`(A307096(n+2)-3)/2`
-/

namespace A317543.P3994139464196065939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307096 (n + 2) - 3 : ℚ) / 2

end

end A317543.P3994139464196065939

/-! ## A317543.P13707397511689713927

`∑[2*A219609(n+1)]-1`
-/

namespace A317543.P13707397511689713927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A317543.P13707397511689713927

/-!
# A317544: Positions of 0's in A317542, the formal inverse of the period-doubling sequence A096268.

The programs for A317544, there is no canonical definition to state claims against.
-/

/-! ## A317544.P10614714028227309707

`lt[and(n+1, 43*n), n+1]`
-/

namespace A317544.P10614714028227309707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (43 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317544.P10614714028227309707

/-! ## A317544.P4886782515783436173

`lt[43*n, or(n+1, 43*n)]`
-/

namespace A317544.P4886782515783436173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (43 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317544.P4886782515783436173

/-! ## A317544.P3191060093203276044

`comp[eq[n+1, and(n+1, 43*n)]]`
-/

namespace A317544.P3191060093203276044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (43 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A317544.P3191060093203276044

/-! ## A317544.P519537520322159727

`eq[0, -a(floor((n-2)/gcd(n+1, n-3)))]` with `a(0)=0, a(1)=1`
-/

namespace A317544.P519537520322159727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  -f2 ⌊((n : ℤ) - 2 : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3) : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317544.P519537520322159727

/-! ## A317544.P14159995656124007961

`comp[A317543(n)]`
-/

namespace A317544.P14159995656124007961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317543 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317544.P14159995656124007961

/-! ## A317544.P7764015958662030572

`eq[0, A317542(n)]`
-/

namespace A317544.P7764015958662030572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317542 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317544.P7764015958662030572

/-! ## A317544.P16570468409564895865

`comp[A219608(n+1)-2]`
-/

namespace A317544.P16570468409564895865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219608 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317544.P16570468409564895865

/-! ## A317544.P872247429040167652

`comp[2*A060142(n)-1]`
-/

namespace A317544.P872247429040167652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060142 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317544.P872247429040167652

/-! ## A317544.P8122254804036961783

`lt[Δ[A086747(2*n)], 1]`
-/

namespace A317544.P8122254804036961783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A317544.P8122254804036961783

/-! ## A317544.P6804167414768102944

`eq[0, A086747(2*(n+1))]`
-/

namespace A317544.P6804167414768102944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317544.P6804167414768102944

/-!
# A317545: Number of multimin factorizations of n.

The programs for A317545, there is no canonical definition to state claims against.
-/

/-! ## A317545.P152059741434093603

`A319002(A071364(n+1))-A335520(n+1)`
-/

namespace A317545.P152059741434093603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319002 (A071364 (n + 1)).toNat - A335520 (n + 1)

end

end A317545.P152059741434093603

/-! ## A317545.P12252002726448717212

`A319004(A331580(n+1)+C(n, A108337(n)))`
-/

namespace A317545.P12252002726448717212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319004 (A331580 (n + 1) + (Nat.choose n (A108337 n).toNat : ℤ)).toNat

end

end A317545.P12252002726448717212

/-! ## A317545.P10604725170264599639

`A319004(A331580(n+1))%A016957(A108337(n))`
-/

namespace A317545.P10604725170264599639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319004 (A331580 (n + 1)).toNat) (A016957 (A108337 n).toNat)

end

end A317545.P10604725170264599639

/-! ## A317545.P10057007757412391240

`A319004(A331580(n+1)+C(2, A108315(n+1)))`
-/

namespace A317545.P10057007757412391240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319004 (A331580 (n + 1) + (Nat.choose 2 (A108315 (n + 1)).toNat : ℤ)).toNat

end

end A317545.P10057007757412391240

/-! ## A317545.P3161108785414788219

`A319004(A331580(n+1)%A179818(n))`
-/

namespace A317545.P3161108785414788219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319004 (Int.tmod (A331580 (n + 1)) (A179818 n)).toNat

end

end A317545.P3161108785414788219

/-!
# A317546: Number of multimin partitions of integer partitions of n.

The programs for A317546, there is no canonical definition to state claims against.
-/

/-! ## A317546.P14752360191204684234

`A298806(n)-A055086(A185298(n))`
-/

namespace A317546.P14752360191204684234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298806 n - A055086 (A185298 n).toNat

end

end A317546.P14752360191204684234

/-! ## A317546.P8209373526492109779

`A086937(A006130(n))+A034691(n+1)`
-/

namespace A317546.P8209373526492109779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086937 (A006130 n).toNat + A034691 (n + 1)

end

end A317546.P8209373526492109779

/-! ## A317546.P8521038184136280021

`A106515(A004901(n+1))+A037952(n)`
-/

namespace A317546.P8521038184136280021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106515 (A004901 (n + 1)).toNat + A037952 n

end

end A317546.P8521038184136280021

/-!
# A317548: Lexicographically first sequence of different terms, starting with a(1) = 0 and showing a 1-step roller coaster of digits (see the Comments section).

The programs for A317548, there is no canonical definition to state claims against.
-/

/-! ## A317548.P10060430248249904130

`A239137(n+1)%A325331(3*n+1)`
-/

namespace A317548.P10060430248249904130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239137 (n + 1)) (A325331 (3 * n + 1))

end

end A317548.P10060430248249904130

/-! ## A317548.P6073685677918640461

`A239137(n+1)%A000959(A000079(n))`
-/

namespace A317548.P6073685677918640461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239137 (n + 1)) (A000959 (A000079 n).toNat)

end

end A317548.P6073685677918640461

/-! ## A317548.P5176950540595413921

`A239137(A188462(n+1))%A239088(A312897(n))`
-/

namespace A317548.P5176950540595413921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239137 (A188462 (n + 1)).toNat) (A239088 (A312897 n).toNat)

end

end A317548.P5176950540595413921

/-!
# A317549: Lexicographically first sequence of different terms, starting with a(1) = 0 and showing a 2-step roller coaster of digits (see the Comments section).

The programs for A317549, there is no canonical definition to state claims against.
-/

/-! ## A317549.P3836775808982259325

`A064488(n+1)*A134568(A004771(n))`
-/

namespace A317549.P3836775808982259325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064488 (n + 1) * A134568 (A004771 n).toNat

end

end A317549.P3836775808982259325

/-! ## A317549.P11898964430958103974

`A342045(n+1)-A286339(A357358(n+3)+1)`
-/

namespace A317549.P11898964430958103974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342045 (n + 1) - A286339 (A357358 (n + 3) + 1).toNat

end

end A317549.P11898964430958103974

/-!
# A317550: Lexicographically first sequence of different terms, starting with a(1) = 0 and showing a 3-step roller coaster of digits (see the Comments section).

The programs for A317550, there is no canonical definition to state claims against.
-/

/-! ## A317550.P15607041141124491730

`6^a(n-1)-6` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A317550.P15607041141124491730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  (6 : ℝ) ^ (a (n - 1)) - 6

end

end A317550.P15607041141124491730

/-!
# A317551: Fertility numbers.

The programs for A317551, there is no canonical definition to state claims against.
-/

/-! ## A317551.P4435516758763505663

`comp[or(3, ∑[n]+2)]`
-/

namespace A317551.P4435516758763505663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A317551.P4435516758763505663

/-! ## A317551.P16057214430123152690

`lt[∏{p}[n, #], or(3, n)]`
-/

namespace A317551.P16057214430123152690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A317551.P16057214430123152690

/-! ## A317551.P10171982820882643223

`comp[xor(n, 3*(n+1))]`
-/

namespace A317551.P10171982820882643223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A317551.P10171982820882643223

/-!
# A317552: Irregular triangle where T(n,k) is the sum of coefficients in the expansion of p(y) in terms of Schur functions, where p is power-sum symmetric functions and y is the integer partition with Heinz number A215366(n,k).

The programs for A317552, there is no canonical definition to state claims against.
-/

/-! ## A317552.P13069253221013113034

`A317554(A215366(n+1))`
-/

namespace A317552.P13069253221013113034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317554 (A215366 (n + 1)).toNat

end

end A317552.P13069253221013113034

/-! ## A317552.P9495154585332075472

`A317554(A333483(n+1))`
-/

namespace A317552.P9495154585332075472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317554 (A333483 (n + 1)).toNat

end

end A317552.P9495154585332075472

/-! ## A317552.P5789863165946544562

`A317554(A334433(n+1))`
-/

namespace A317552.P5789863165946544562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317554 (A334433 (n + 1)).toNat

end

end A317552.P5789863165946544562

/-! ## A317552.P4661111844968527869

`A317554(A334435(n+1))`
-/

namespace A317552.P4661111844968527869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317554 (A334435 (n + 1)).toNat

end

end A317552.P4661111844968527869

/-! ## A317552.P225350973990921714

`A317554(A334436(n+1))`
-/

namespace A317552.P225350973990921714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317554 (A334436 (n + 1)).toNat

end

end A317552.P225350973990921714

/-!
# A317553: Sum of coefficients in the expansion of Sum_{y a composition of n} p(y) in terms of Schur functions, where p is power-sum symmetric functions.

The programs for A317553, there is no canonical definition to state claims against.
-/

/-! ## A317553.P6462816147047489408

`A181807(A094837(n+1))`
-/

namespace A317553.P6462816147047489408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181807 (A094837 (n + 1)).toNat

end

end A317553.P6462816147047489408

/-! ## A317553.P5195283365506315443

`A007743(n+1)+record[A122301(n)]`
-/

namespace A317553.P5195283365506315443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007743 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317553.P5195283365506315443

/-! ## A317553.P7793382604385339737

`A081753(A320178(n+4)+A055038(2*n+3))`
-/

namespace A317553.P7793382604385339737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A320178 (n + 4) + A055038 (2 * n + 3)).toNat

end

end A317553.P7793382604385339737

/-!
# A317555: Triangle read by rows: T(n,k) is the number of preimages of the permutation 21345...n under West's stack-sorting map that have k+1 valleys (1 <= k <= floor((n-1)/2)).

The programs for A317555, there is no canonical definition to state claims against.
-/

/-! ## A317555.P16612941576004385029

`A121685(comp[n²]+n+1)`
-/

namespace A317555.P16612941576004385029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121685 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A317555.P16612941576004385029

/-!
# A317559: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317559, there is no canonical definition to state claims against.
-/

/-! ## A317559.P13446480563974468902

`A317565(∑[4*n]+1)`
-/

namespace A317559.P13446480563974468902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317559.P13446480563974468902

/-! ## A317559.P18263366372578883121

`record[gcd(A037012(n), A317565(n+1))]`
-/

namespace A317559.P18263366372578883121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A317565 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317559.P18263366372578883121

/-! ## A317559.P9844593919442741324

`A326542(n)+A317565(A001844(n))`
-/

namespace A317559.P9844593919442741324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n + A317565 (A001844 n).toNat

end

end A317559.P9844593919442741324

/-! ## A317559.P7929000941252945064

`gcd(A000038(n), A317565(A001844(n)))`
-/

namespace A317559.P7929000941252945064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A317565 (A001844 n).toNat)

end

end A317559.P7929000941252945064

/-! ## A317559.P9471416432450625740

`lcm(A060351(n), A317565(A001844(n)))`
-/

namespace A317559.P9471416432450625740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060351 n) (A317565 (A001844 n).toNat)

end

end A317559.P9471416432450625740

/-!
# A317560: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317560, there is no canonical definition to state claims against.
-/

/-! ## A317560.P135888477517732108

`A317565(∑[n+2]+4)`
-/

namespace A317560.P135888477517732108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317560.P135888477517732108

/-! ## A317560.P3008106457487495105

`lcm((-1)^val(n+1, 2), A317565(A167614(n+1)))`
-/

namespace A317560.P3008106457487495105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) (A317565 (A167614 (n + 1)).toNat)

end

end A317560.P3008106457487495105

/-! ## A317560.P4362945903110054622

`A317565(A167614(n+1))+A185284(n)`
-/

namespace A317560.P4362945903110054622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A167614 (n + 1)).toNat + A185284 n

end

end A317560.P4362945903110054622

/-! ## A317560.P8187721585208321124

`A326542(n)+A317565(A167614(n+1))`
-/

namespace A317560.P8187721585208321124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n + A317565 (A167614 (n + 1)).toNat

end

end A317560.P8187721585208321124

/-! ## A317560.P10335816878370790281

`A326684(n)+A317565(A167614(n+1))`
-/

namespace A317560.P10335816878370790281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A317565 (A167614 (n + 1)).toNat

end

end A317560.P10335816878370790281

/-!
# A317561: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317561, there is no canonical definition to state claims against.
-/

/-! ## A317561.P5800631041910583704

`A317565(A374004(n+1))`
-/

namespace A317561.P5800631041910583704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A374004 (n + 1)).toNat

end

end A317561.P5800631041910583704

/-! ## A317561.P5395902688562440963

`A317565(A141214(n)+7)`
-/

namespace A317561.P5395902688562440963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A141214 n + 7).toNat

end

end A317561.P5395902688562440963

/-! ## A317561.P12702454533740842902

`A317565(A052905(n)+9)`
-/

namespace A317561.P12702454533740842902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A052905 n + 9).toNat

end

end A317561.P12702454533740842902

/-! ## A317561.P4754647446940988711

`A317565(A167614(n+2)+1)`
-/

namespace A317561.P4754647446940988711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A167614 (n + 2) + 1).toNat

end

end A317561.P4754647446940988711

/-! ## A317561.P13397278591093135400

`A317565(A167499(n+2)-1)`
-/

namespace A317561.P13397278591093135400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A167499 (n + 2) - 1).toNat

end

end A317561.P13397278591093135400

/-!
# A317562: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317562, there is no canonical definition to state claims against.
-/

/-! ## A317562.P14346490849967380604

`A317565(A374005(n+1))`
-/

namespace A317562.P14346490849967380604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A374005 (n + 1)).toNat

end

end A317562.P14346490849967380604

/-! ## A317562.P3680788219755602623

`A317565(A167499(n+3))`
-/

namespace A317562.P3680788219755602623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A167499 (n + 3)).toNat

end

end A317562.P3680788219755602623

/-! ## A317562.P12824396758223798378

`A317565(A056000(n)+15)`
-/

namespace A317562.P12824396758223798378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A056000 n + 15).toNat

end

end A317562.P12824396758223798378

/-! ## A317562.P8321482934810243395

`A317565(A055998(n+2)+8)`
-/

namespace A317562.P8321482934810243395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A055998 (n + 2) + 8).toNat

end

end A317562.P8321482934810243395

/-! ## A317562.P16300872383799431003

`A317565(eq[6, A131818(n+1)])`
-/

namespace A317562.P16300872383799431003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317562.P16300872383799431003

/-!
# A317563: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317563, there is no canonical definition to state claims against.
-/

/-! ## A317563.P6115668424361312597

`A317565(A374007(n+1))`
-/

namespace A317563.P6115668424361312597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A374007 (n + 1)).toNat

end

end A317563.P6115668424361312597

/-! ## A317563.P357385860240154049

`A317565(A167499(n+4)+1)`
-/

namespace A317563.P357385860240154049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A167499 (n + 4) + 1).toNat

end

end A317563.P357385860240154049

/-! ## A317563.P7606530418079153589

`A317565(A052905(n+3))`
-/

namespace A317563.P7606530418079153589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A052905 (n + 3)).toNat

end

end A317563.P7606530418079153589

/-! ## A317563.P15856701825939822145

`A317565(A056119(n)+16)`
-/

namespace A317563.P15856701825939822145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A056119 n + 16).toNat

end

end A317563.P15856701825939822145

/-! ## A317563.P13898649877490506639

`A317565(eq[3, A219347(n)])`
-/

namespace A317563.P13898649877490506639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317563.P13898649877490506639

/-!
# A317564: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317564, there is no canonical definition to state claims against.
-/

/-! ## A317564.P12764730259804534099

`A317565(A374008(n+1))`
-/

namespace A317564.P12764730259804534099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (A374008 (n + 1)).toNat

end

end A317564.P12764730259804534099

/-! ## A317564.P10559222679966083083

`A317565(eq[11, A066657(n)])`
-/

namespace A317564.P10559222679966083083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317564.P10559222679966083083

/-! ## A317564.P9552842909360288938

`A317565(eq[8, A131818(n+1)])`
-/

namespace A317564.P9552842909360288938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317564.P9552842909360288938

/-! ## A317564.P5332771589455347811

`A317565(eq[4, A219347(n)])`
-/

namespace A317564.P5332771589455347811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317564.P5332771589455347811

/-! ## A317564.P3881427731121433094

`A317565(eq[6, A193592(n)])`
-/

namespace A317564.P3881427731121433094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317564.P3881427731121433094

/-!
# A317565: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317565, there is no canonical definition to state claims against.
-/

/-! ## A317565.P16059049984632185599

`A320371(n+1)+A309785(A174545(n))`
-/

namespace A317565.P16059049984632185599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (n + 1) + A309785 (A174545 n).toNat

end

end A317565.P16059049984632185599

/-! ## A317565.P17040651740462593105

`A320371(n+1)+A284976(A001263(n+1))`
-/

namespace A317565.P17040651740462593105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (n + 1) + A284976 (A001263 (n + 1)).toNat

end

end A317565.P17040651740462593105

/-! ## A317565.P3226286388216080420

`A321609(A001263(n+1))+A316815(n+1)`
-/

namespace A317565.P3226286388216080420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321609 (A001263 (n + 1)).toNat + A316815 (n + 1)

end

end A317565.P3226286388216080420

/-! ## A317565.P14724524639392758097

`A320371(n+1)+A309785(A124976(n+1))`
-/

namespace A317565.P14724524639392758097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (n + 1) + A309785 (A124976 (n + 1)).toNat

end

end A317565.P14724524639392758097

/-! ## A317565.P16369607377897669157

`A316815(n+1)+A184616(A300182(n+1))`
-/

namespace A317565.P16369607377897669157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (n + 1) + A184616 (A300182 (n + 1)).toNat

end

end A317565.P16369607377897669157

/-!
# A317566: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317566, there is no canonical definition to state claims against.
-/

/-! ## A317566.P10197830949074710080

`A317572(∑[4*n]+1)`
-/

namespace A317566.P10197830949074710080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317566.P10197830949074710080

/-! ## A317566.P10380124051256239314

`record[A003982(n)*A317572(n+1)]`
-/

namespace A317566.P10380124051256239314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317566.P10380124051256239314

/-! ## A317566.P5424785450652793252

`A317572(A001844(n))+A025465(n)`
-/

namespace A317566.P5424785450652793252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A001844 n).toNat + A025465 n

end

end A317566.P5424785450652793252

/-! ## A317566.P2495884015342972535

`A317572(A001844(n))+A061858(n)`
-/

namespace A317566.P2495884015342972535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A001844 n).toNat + A061858 n

end

end A317566.P2495884015342972535

/-! ## A317566.P18268179890835796435

`A317572(A001844(n))+A102683(n)`
-/

namespace A317566.P18268179890835796435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A001844 n).toNat + A102683 n

end

end A317566.P18268179890835796435

/-!
# A317567: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317567, there is no canonical definition to state claims against.
-/

/-! ## A317567.P12206437526582988604

`A317572(∑[n+2]+4)`
-/

namespace A317567.P12206437526582988604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317567.P12206437526582988604

/-! ## A317567.P2760872283225033895

`gcd(A000038(n)², A317572(A167614(n+1)))`
-/

namespace A317567.P2760872283225033895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A317572 (A167614 (n + 1)).toNat)

end

end A317567.P2760872283225033895

/-! ## A317567.P18413671333455038344

`A317572(A167614(n+1))+A034526(n+1)`
-/

namespace A317567.P18413671333455038344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A167614 (n + 1)).toNat + A034526 (n + 1)

end

end A317567.P18413671333455038344

/-! ## A317567.P5119621110812439679

`A317572(A167614(n+1))%A276296(n+1)`
-/

namespace A317567.P5119621110812439679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317572 (A167614 (n + 1)).toNat) (A276296 (n + 1))

end

end A317567.P5119621110812439679

/-! ## A317567.P6874848592080750504

`gcd(9, A000045(2*n+1))*A317572(A167614(n+1))`
-/

namespace A317567.P6874848592080750504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 9 (A000045 (2 * n + 1)) : ℤ) * A317572 (A167614 (n + 1)).toNat

end

end A317567.P6874848592080750504

/-!
# A317568: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317568, there is no canonical definition to state claims against.
-/

/-! ## A317568.P17912294704653484109

`A317572(A374004(n+1))`
-/

namespace A317568.P17912294704653484109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A374004 (n + 1)).toNat

end

end A317568.P17912294704653484109

/-! ## A317568.P7720253430878186220

`A317572(A052905(n)+9)`
-/

namespace A317568.P7720253430878186220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A052905 n + 9).toNat

end

end A317568.P7720253430878186220

/-! ## A317568.P11986607604231632943

`A317572(A055999(n)+10)`
-/

namespace A317568.P11986607604231632943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A055999 n + 10).toNat

end

end A317568.P11986607604231632943

/-! ## A317568.P2164688160939529941

`A317572(A167614(n+2)+1)`
-/

namespace A317568.P2164688160939529941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A167614 (n + 2) + 1).toNat

end

end A317568.P2164688160939529941

/-! ## A317568.P17493662524261445920

`A317572(A166136(n+2)-2)`
-/

namespace A317568.P17493662524261445920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A166136 (n + 2) - 2).toNat

end

end A317568.P17493662524261445920

/-!
# A317569: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317569, there is no canonical definition to state claims against.
-/

/-! ## A317569.P15355817887597589317

`A317572(A374005(n+1))`
-/

namespace A317569.P15355817887597589317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A374005 (n + 1)).toNat

end

end A317569.P15355817887597589317

/-! ## A317569.P6731323154763204433

`A317572(A155212(n)+13)`
-/

namespace A317569.P6731323154763204433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A155212 n + 13).toNat

end

end A317569.P6731323154763204433

/-! ## A317569.P10619282803864833885

`A317572(A166136(n+3)-1)`
-/

namespace A317569.P10619282803864833885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A166136 (n + 3) - 1).toNat

end

end A317569.P10619282803864833885

/-! ## A317569.P16227457397131199093

`A317572(A051936(n+4)+14)`
-/

namespace A317569.P16227457397131199093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A051936 (n + 4) + 14).toNat

end

end A317569.P16227457397131199093

/-! ## A317569.P8688467078742295090

`A317572(eq[6, A131818(n+1)])`
-/

namespace A317569.P8688467078742295090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317569.P8688467078742295090

/-!
# A317570: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317570, there is no canonical definition to state claims against.
-/

/-! ## A317570.P1370645067011705672

`A317572(A374007(n+1))`
-/

namespace A317570.P1370645067011705672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A374007 (n + 1)).toNat

end

end A317570.P1370645067011705672

/-! ## A317570.P6371894362064163777

`A317572(A166136(n+4))`
-/

namespace A317570.P6371894362064163777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A166136 (n + 4)).toNat

end

end A317570.P6371894362064163777

/-! ## A317570.P7818701082919981967

`A317572(A167499(n+4)+1)`
-/

namespace A317570.P7818701082919981967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A167499 (n + 4) + 1).toNat

end

end A317570.P7818701082919981967

/-! ## A317570.P16506912412255210486

`A317572(eq[7, A131818(n+1)])`
-/

namespace A317570.P16506912412255210486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317570.P16506912412255210486

/-! ## A317570.P8221113177342314087

`A317572(eq[3, A219347(n)])`
-/

namespace A317570.P8221113177342314087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317570.P8221113177342314087

/-!
# A317571: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317571, there is no canonical definition to state claims against.
-/

/-! ## A317571.P4431775690155114057

`A317572(A374008(n+1))`
-/

namespace A317571.P4431775690155114057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (A374008 (n + 1)).toNat

end

end A317571.P4431775690155114057

/-! ## A317571.P14226183200589675013

`A317572(eq[11, A066657(n)])`
-/

namespace A317571.P14226183200589675013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317571.P14226183200589675013

/-! ## A317571.P7384132676109431058

`A317572(eq[8, A131818(n+1)])`
-/

namespace A317571.P7384132676109431058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317571.P7384132676109431058

/-! ## A317571.P10104035181514581470

`A317572(eq[4, A219347(n)])`
-/

namespace A317571.P10104035181514581470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317571.P10104035181514581470

/-! ## A317571.P6636827969698575139

`A317572(eq[6, A193592(n)])`
-/

namespace A317571.P6636827969698575139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317571.P6636827969698575139

/-!
# A317572: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317572, there is no canonical definition to state claims against.
-/

/-! ## A317572.P6446487123783416579

`A316822(n+1)+A011731(A022171(n))`
-/

namespace A317572.P6446487123783416579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (n + 1) + A011731 (A022171 n).toNat

end

end A317572.P6446487123783416579

/-! ## A317572.P14614611622311004931

`A316822(n+1)+A025465(A023105(n))`
-/

namespace A317572.P14614611622311004931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (n + 1) + A025465 (A023105 n).toNat

end

end A317572.P14614611622311004931

/-! ## A317572.P10449976091319499828

`A316822(n+1)+A055641(A022112(n))`
-/

namespace A317572.P10449976091319499828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (n + 1) + A055641 (A022112 n).toNat

end

end A317572.P10449976091319499828

/-! ## A317572.P14549377408090862985

`A316822(n+1)+A016389(A086645(n))`
-/

namespace A317572.P14549377408090862985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (n + 1) + A016389 (A086645 n).toNat

end

end A317572.P14549377408090862985

/-! ## A317572.P3285118078363721166

`A316822(n+1)+A102683(A000579(n))`
-/

namespace A317572.P3285118078363721166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (n + 1) + A102683 (A000579 n).toNat

end

end A317572.P3285118078363721166

/-!
# A317574: Irregular triangle read by rows: T(n,k) is the number of n X n tic-tac-toe positions (up to rotation and reflection) with k tokens (i.e., after k plays) which allow a winning strategy for O (n > 0, 0 <= k <= n^2).

The programs for A317574, there is no canonical definition to state claims against.
-/

/-! ## A317574.P1577917422382719276

`A002487(A026816(n)*A293765(n))`
-/

namespace A317574.P1577917422382719276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A026816 n * A293765 n).toNat

end

end A317574.P1577917422382719276

/-! ## A317574.P4805240696889115176

`A002487(A293765(n)*A332281(n))`
-/

namespace A317574.P4805240696889115176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A293765 n * A332281 n).toNat

end

end A317574.P4805240696889115176

/-! ## A317574.P7390605584544572905

`A104513(A311232(n)^A026816(n))`
-/

namespace A317574.P7390605584544572905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (SequenceMachineLib.roundAway ((A311232 n : ℚ) ^ (A026816 n : ℤ))).toNat

end

end A317574.P7390605584544572905

/-! ## A317574.P10026877763332842682

`A303338(A306678(n+1)^A326593(n))`
-/

namespace A317574.P10026877763332842682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303338 (SequenceMachineLib.roundAway ((A306678 (n + 1) : ℚ) ^ (A326593 n : ℤ))).toNat

end

end A317574.P10026877763332842682

/-! ## A317574.P4472971206531870084

`A142150(A114102(2*(n+2))^A326589(n))`
-/

namespace A317574.P4472971206531870084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (SequenceMachineLib.roundAway ((A114102 (2 * (n + 2)) : ℚ) ^ (A326589 n : ℤ))).toNat

end

end A317574.P4472971206531870084

/-!
# A317577: Number of ways the set {1,2,...,n} can be split into three subsets X, Y, Z of equal sums, where the order of X, Y, Z matters.

The programs for A317577, there is no canonical definition to state claims against.
-/

/-! ## A317577.P10784224816815751379

`6*A112972(n+1)`
-/

namespace A317577.P10784224816815751379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A112972 (n + 1)

end

end A317577.P10784224816815751379

/-! ## A317577.P58857705792772443

`A008588(A112972(n+1))`
-/

namespace A317577.P58857705792772443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A112972 (n + 1)).toNat

end

end A317577.P58857705792772443

/-! ## A317577.P5442762791673155404

`A158327(A184438(n+1))`
-/

namespace A317577.P5442762791673155404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158327 (A184438 (n + 1)).toNat

end

end A317577.P5442762791673155404

/-! ## A317577.P8193419002988256466

`6*A025459(A268407(n))`
-/

namespace A317577.P8193419002988256466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A025459 (A268407 n).toNat

end

end A317577.P8193419002988256466

/-! ## A317577.P14015522210596953351

`A025192(n+1)%A261957(A001630(n))`
-/

namespace A317577.P14015522210596953351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025192 (n + 1)) (A261957 (A001630 n).toNat)

end

end A317577.P14015522210596953351

/-!
# A317580: Number of unlabeled rooted identity trees with n nodes and a distinguished leaf.

The programs for A317580, there is no canonical definition to state claims against.
-/

/-! ## A317580.P16899922235284317504

`A046155(or(1, A339223(n+1)))`
-/

namespace A317580.P16899922235284317504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.lor 1 (A339223 (n + 1))).toNat

end

end A317580.P16899922235284317504

/-! ## A317580.P25572834085602674

`A026819(A098521(n)+A001223(n+1))`
-/

namespace A317580.P25572834085602674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A098521 n + A001223 (n + 1)).toNat

end

end A317580.P25572834085602674

/-! ## A317580.P7178161355577788733

`A129251(A060165(n+1))+A034943(n)`
-/

namespace A317580.P7178161355577788733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A060165 (n + 1)).toNat + A034943 n

end

end A317580.P7178161355577788733

/-! ## A317580.P16170261466121174981

`A026819(A339223(n+1)+A000035(n))`
-/

namespace A317580.P16170261466121174981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A339223 (n + 1) + A000035 n).toNat

end

end A317580.P16170261466121174981

/-! ## A317580.P492227494485040223

`A046155(A339223(n+1)+A000035(n))`
-/

namespace A317580.P492227494485040223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A339223 (n + 1) + A000035 n).toNat

end

end A317580.P492227494485040223

/-!
# A317581: a(1) = 1; a(n > 1) = 1 + Sum_{d|n, d<n} mu(n/d) a(d).

The programs for A317581, there is no canonical definition to state claims against.
-/

/-! ## A317581.P9645091844045146768

`∑{d}[n+1, A114006(#)]`
-/

namespace A317581.P9645091844045146768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114006 d

end

end A317581.P9645091844045146768

/-! ## A317581.P2616470251037262035

`ceil(A114006(n+1)/2)`
-/

namespace A317581.P2616470251037262035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114006 (n + 1) : ℚ) / 2⌉

end

end A317581.P2616470251037262035

/-! ## A317581.P16428334326421485096

`ceil(A114005(n+1)/4)`
-/

namespace A317581.P16428334326421485096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114005 (n + 1) : ℚ) / 4⌉

end

end A317581.P16428334326421485096

/-! ## A317581.P6045533074964150305

`(∑{d}[n+1, A114005(#)]+1)/2`
-/

namespace A317581.P6045533074964150305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A114005 d + 1 : ℤ) : ℚ) / 2

end

end A317581.P6045533074964150305

/-! ## A317581.P7567982358085856718

`(A114006(n+1)+A020985(n)²)/2`
-/

namespace A317581.P7567982358085856718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114006 (n + 1) + A020985 n ^ 2 : ℚ) / 2

end

end A317581.P7567982358085856718

/-! ## A317581.P13566131679128039097

`(A114006(n+1)+A008836(n+1)²)/2`
-/

namespace A317581.P13566131679128039097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114006 (n + 1) + A008836 (n + 1) ^ 2 : ℚ) / 2

end

end A317581.P13566131679128039097

/-! ## A317581.P2758876948881224717

`(A008836(n+1)*A050328(n+1)+1)/2`
-/

namespace A317581.P2758876948881224717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) * A050328 (n + 1) + 1 : ℚ) / 2

end

end A317581.P2758876948881224717

/-!
# A317583: Number of multiset partitions of normal multisets of size n such that all blocks have the same size.

The programs for A317583, there is no canonical definition to state claims against.
-/

/-! ## A317583.P6681204486904210668

`A005041(A002110(n))*A143182(n)`
-/

namespace A317583.P6681204486904210668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A002110 n).toNat * A143182 n

end

end A317583.P6681204486904210668

/-! ## A317583.P3392629455582414066

`A005041(A002110(n))*A257522(n+1)`
-/

namespace A317583.P3392629455582414066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A002110 n).toNat * A257522 (n + 1)

end

end A317583.P3392629455582414066

/-!
# A317584: Number of multiset partitions of strongly normal multisets of size n such that all blocks have the same size.

The programs for A317584, there is no canonical definition to state claims against.
-/

/-! ## A317584.P8581597297743828266

`A163465(A163493(n)+A000051(n))`
-/

namespace A317584.P8581597297743828266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163465 (A163493 n + A000051 n).toNat

end

end A317584.P8581597297743828266

/-! ## A317584.P9678927075548017

`A200329(A274598(n))+A000217(n)`
-/

namespace A317584.P9678927075548017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A274598 n).toNat + A000217 n

end

end A317584.P9678927075548017

/-!
# A317587: a(n) is the smallest number m > n such that Sum_{k=1..n-1} k^(m-1) == n-1 (mod m).

The programs for A317587, there is no canonical definition to state claims against.
-/

/-! ## A317587.P10239362402422620733

`A151800(n+2)-A073424(A156136(n+4))`
-/

namespace A317587.P10239362402422620733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 2) - A073424 (A156136 (n + 4)).toNat

end

end A317587.P10239362402422620733

/-! ## A317587.P487689710775208141

`A151800(n+2)-A059841(A097710(n))`
-/

namespace A317587.P487689710775208141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 2) - A059841 (A097710 n).toNat

end

end A317587.P487689710775208141

/-!
# A317589: Heinz numbers of uniformly normal integer partitions.

The programs for A317589, there is no canonical definition to state claims against.
-/

/-! ## A317589.P17696929526895377771

`∪[A000961(n+1), record[A057335(n)]]`
-/

namespace A317589.P17696929526895377771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317589.P17696929526895377771

/-! ## A317589.P7659890954960830904

`∪[A036116(n+1), record[A057335(n)]]`
-/

namespace A317589.P7659890954960830904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317589.P7659890954960830904

/-! ## A317589.P4013643393371310345

`eq[A157928(A327778(n)), A319691(n+1)]`
-/

namespace A317589.P4013643393371310345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A327778 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317589.P4013643393371310345

/-! ## A317589.P18339018219023739605

`lt[A030118(A063698(n)), A048883(n)]`
-/

namespace A317589.P18339018219023739605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 (A063698 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317589.P18339018219023739605

/-! ## A317589.P1451333755575678740

`lt[A096535(A063698(n)), A002487(3*n)]`
-/

namespace A317589.P1451333755575678740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096535 (A063698 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317589.P1451333755575678740

/-!
# A317590: Heinz numbers of integer partitions that are not uniformly normal.

The programs for A317590, there is no canonical definition to state claims against.
-/

/-! ## A317590.P7612936883844745873

`comp[A317589(n+1)-1]+1`
-/

namespace A317590.P7612936883844745873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A317590.P7612936883844745873

/-! ## A317590.P1149874626586524991

`∩[A018252(n+1), comp[A317589(n+1)]]`
-/

namespace A317590.P1149874626586524991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A317590.P1149874626586524991

/-! ## A317590.P13412198092696137099

`lt[A324751(A173557(n+1)), A063698(n)]`
-/

namespace A317590.P13412198092696137099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (A173557 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317590.P13412198092696137099

/-! ## A317590.P3282511514809297528

`lt[A324751(A020639(n+1)), A063698(n)]`
-/

namespace A317590.P3282511514809297528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317590.P3282511514809297528

/-!
# A317591: Lexicographically earliest sequence of distinct terms such that erasing the last digit of a(n+1) and adding the resulting integer to a(n) gives back a(n+1).

The programs for A317591, the canonical program `A317591.P2386564402842094882` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317591 has offset 1).

The definition of A317591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317591.P2386564402842094882

`floor((10*a(n-1)-1)/9)` with `a(0)=9, a(1)=10`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A317591

/-- `floor((10*a(n-1)-1)/9)` -/
def P2386564402842094882.Spec : Prop :=
  ∀ n, P2386564402842094882.a n = A317591 (n + 1)

theorem P2386564402842094882.correct : P2386564402842094882.Spec := by
  intro n
  simp only [A317591, Nat.add_sub_cancel]

end A317591

/-! ## A317591.P14295154448739818390

`floor(a(n-1)+(a(n-1)-1)/9)` with `a(0)=9, a(1)=10`
-/

namespace A317591.P14295154448739818390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 10] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) - 1 : ℚ) / 9⌋

end

end A317591.P14295154448739818390

namespace A317591

/-- `floor(a(n-1)+(a(n-1)-1)/9)` -/
def P14295154448739818390.Spec : Prop :=
  ∀ n, P14295154448739818390.a n = A317591 (n + 1)

theorem P14295154448739818390.correct : P14295154448739818390.Spec := by
  intro n
  simp only [A317591, Nat.add_sub_cancel, A317591.P14295154448739818390.a, A317591.P2386564402842094882.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A317591

/-! ## A317591.P13895851610633132137

`floor(a(n-1)-(1-a(n-1))/9)` with `a(0)=9, a(1)=10`
-/

namespace A317591.P13895851610633132137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 10] fun n a =>
  ⌊(a (n - 1) : ℚ) - (1 - a (n - 1) : ℚ) / 9⌋

end

end A317591.P13895851610633132137

namespace A317591

/-- `floor(a(n-1)-(1-a(n-1))/9)` -/
def P13895851610633132137.Spec : Prop :=
  ∀ n, P13895851610633132137.a n = A317591 (n + 1)

theorem P13895851610633132137.correct : P13895851610633132137.Spec := by
  intro n
  simp only [A317591, Nat.add_sub_cancel, A317591.P13895851610633132137.a, A317591.P2386564402842094882.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A317591

/-! ## A317591.P1848549274126471208

`∑[A120202(A028310(n))]+8`
-/

namespace A317591.P1848549274126471208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120202 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A317591.P1848549274126471208

namespace A317591

/-- `∑[A120202(A028310(n))]+8` -/
def P1848549274126471208.Spec : Prop :=
  ∀ n, P1848549274126471208.a n = A317591 (n + 1)

end A317591

/-! ## A317591.P6050101331901163613

`∑[A120202(A233583(n+1))]+8`
-/

namespace A317591.P6050101331901163613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120202 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A317591.P6050101331901163613

namespace A317591

/-- `∑[A120202(A233583(n+1))]+8` -/
def P6050101331901163613.Spec : Prop :=
  ∀ n, P6050101331901163613.a n = A317591 (n + 1)

end A317591

/-! ## A317591.P10399311198257551220

`A182362(n)+1-A120202(n+1)`
-/

namespace A317591.P10399311198257551220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182362 n + (1 - A120202 (n + 1))

end

end A317591.P10399311198257551220

namespace A317591

/-- `A182362(n)+1-A120202(n+1)` -/
def P10399311198257551220.Spec : Prop :=
  ∀ n, P10399311198257551220.a n = A317591 (n + 1)

end A317591

/-! ## A317591.P7268535507253937740

`A279080(n)+10-A120202(n+1)`
-/

namespace A317591.P7268535507253937740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279080 n + (10 - A120202 (n + 1))

end

end A317591.P7268535507253937740

namespace A317591

/-- `A279080(n)+10-A120202(n+1)` -/
def P7268535507253937740.Spec : Prop :=
  ∀ n, P7268535507253937740.a n = A317591 (n + 1)

end A317591

/-! ## A317591.P12999451559293777749

`A182362(n)+A024000(A120202(n+1))`
-/

namespace A317591.P12999451559293777749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182362 n + A024000 (A120202 (n + 1)).toNat

end

end A317591.P12999451559293777749

namespace A317591

/-- `A182362(n)+A024000(A120202(n+1))` -/
def P12999451559293777749.Spec : Prop :=
  ∀ n, P12999451559293777749.a n = A317591 (n + 1)

end A317591

/-!
# A317592: Lexicographically first sequence of different terms such that erasing the last two digits of a(n+1) and adding this new reshaped integer to a(n) gives back a(n+1).

The programs for A317592, the canonical program `A317592.P2217105077377467604` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317592 has offset 1).

The definition of A317592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317592.P2217105077377467604

`A037213(n²)+99`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A317592

/-- `A037213(n²)+99` -/
def P2217105077377467604.Spec : Prop :=
  ∀ n, P2217105077377467604.a n = A317592 (n + 1)

theorem P2217105077377467604.correct : P2217105077377467604.Spec := by
  intro n
  simp only [A317592, Nat.add_sub_cancel]

end A317592

/-! ## A317592.P5622657516733325194

`A038690(n²)+99`
-/

namespace A317592.P5622657516733325194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (n ^ 2) + 99

end

end A317592.P5622657516733325194

namespace A317592

/-- `A038690(n²)+99` -/
def P5622657516733325194.Spec : Prop :=
  ∀ n, P5622657516733325194.a n = A317592 (n + 1)

end A317592

/-! ## A317592.P13792417411366945691

`A096582(n+2)+2*n`
-/

namespace A317592.P13792417411366945691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096582 (n + 2) + (2 * n : ℤ)

end

end A317592.P13792417411366945691

namespace A317592

/-- `A096582(n+2)+2*n` -/
def P13792417411366945691.Spec : Prop :=
  ∀ n, P13792417411366945691.a n = A317592 (n + 1)

end A317592

/-! ## A317592.P8376760850585681577

`A131722((n+1)^gcd(2, n+1)+4)²-1+n`
-/

namespace A317592.P8376760850585681577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131722 ((n + 1) ^ Nat.gcd 2 (n + 1) + 4) ^ 2 - 1 + (n : ℤ)

end

end A317592.P8376760850585681577

namespace A317592

/-- `A131722((n+1)^gcd(2, n+1)+4)²-1+n` -/
def P8376760850585681577.Spec : Prop :=
  ∀ n, P8376760850585681577.a n = A317592 (n + 1)

end A317592

/-! ## A317592.P9072138296783744668

`A131722(∑[2*(n+2)]+4)²-1+n`
-/

namespace A317592.P9072138296783744668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131722 (∑ j ∈ Finset.range (n + 1), f1 j + 4) ^ 2 - 1 + (n : ℤ)

end

end A317592.P9072138296783744668

namespace A317592

/-- `A131722(∑[2*(n+2)]+4)²-1+n` -/
def P9072138296783744668.Spec : Prop :=
  ∀ n, P9072138296783744668.a n = A317592 (n + 1)

end A317592

/-! ## A317592.P856251309586061700

`a(A008683(n*(20*n-8)))+n` with `a(0)=99`
-/

namespace A317592.P856251309586061700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [99] fun n a =>
  a (A008683 ((n : ℤ) * ((20 * n : ℤ) - 8)).toNat).toNat + n

end

end A317592.P856251309586061700

namespace A317592

/-- `a(A008683(n*(20*n-8)))+n` -/
def P856251309586061700.Spec : Prop :=
  ∀ n, (P856251309586061700.a n : ℤ) = A317592 (n + 1)

end A317592

/-!
# A317594: Lexicographically first sequence of different terms such that erasing the last three digits of a(n+1) and adding this new reshaped integer to a(n) gives back a(n+1).

The programs for A317594, the canonical program `A317594.P6397274018169493983` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317594 has offset 1).

The definition of A317594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317594.P6397274018169493983

`A038459(A013598(n+1))+A023443(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A317594

/-- `A038459(A013598(n+1))+A023443(n)` -/
def P6397274018169493983.Spec : Prop :=
  ∀ n, P6397274018169493983.a n = A317594 (n + 1)

theorem P6397274018169493983.correct : P6397274018169493983.Spec := by
  intro n
  simp only [A317594, Nat.add_sub_cancel]

end A317594

/-! ## A317594.P11306576555861673020

`n-A002249(A000005(A179643(n+1)))`
-/

namespace A317594.P11306576555861673020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002249 (A000005 (A179643 (n + 1)).toNat).toNat

end

end A317594.P11306576555861673020

namespace A317594

/-- `n-A002249(A000005(A179643(n+1)))` -/
def P11306576555861673020.Spec : Prop :=
  ∀ n, P11306576555861673020.a n = A317594 (n + 1)

end A317594

/-! ## A317594.P10267942249367461858

`A038459(A315642(n)+A311553(n))+n-1`
-/

namespace A317594.P10267942249367461858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A315642 n + A311553 n).toNat + ((n : ℤ) - 1)

end

end A317594.P10267942249367461858

namespace A317594

/-- `A038459(A315642(n)+A311553(n))+n-1` -/
def P10267942249367461858.Spec : Prop :=
  ∀ n, P10267942249367461858.a n = A317594 (n + 1)

end A317594

/-! ## A317594.P2722159636814594636

`A038459(A106838(n+1))+n-1`
-/

namespace A317594.P2722159636814594636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A106838 (n + 1)).toNat + ((n : ℤ) - 1)

end

end A317594.P2722159636814594636

namespace A317594

/-- `A038459(A106838(n+1))+n-1` -/
def P2722159636814594636.Spec : Prop :=
  ∀ n, P2722159636814594636.a n = A317594 (n + 1)

end A317594

/-! ## A317594.P7036422447914605932

`A118880(A052224(n+1))+n-1`
-/

namespace A317594.P7036422447914605932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A052224 (n + 1)).toNat + ((n : ℤ) - 1)

end

end A317594.P7036422447914605932

namespace A317594

/-- `A118880(A052224(n+1))+n-1` -/
def P7036422447914605932.Spec : Prop :=
  ∀ n, P7036422447914605932.a n = A317594 (n + 1)

end A317594

/-! ## A317594.P983999892224875964

`A086862(A345569(n+1))+n-1`
-/

namespace A317594.P983999892224875964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (A345569 (n + 1)).toNat + ((n : ℤ) - 1)

end

end A317594.P983999892224875964

namespace A317594

/-- `A086862(A345569(n+1))+n-1` -/
def P983999892224875964.Spec : Prop :=
  ∀ n, P983999892224875964.a n = A317594 (n + 1)

end A317594

/-! ## A317594.P428315374796312877

`A038459(A321769(n+1))+n-1`
-/

namespace A317594.P428315374796312877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A321769 (n + 1)).toNat + ((n : ℤ) - 1)

end

end A317594.P428315374796312877

namespace A317594

/-- `A038459(A321769(n+1))+n-1` -/
def P428315374796312877.Spec : Prop :=
  ∀ n, P428315374796312877.a n = A317594 (n + 1)

end A317594

/-! ## A317594.P18283629383219058808

`A226752(A002260(A000124(n)))+n`
-/

namespace A317594.P18283629383219058808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226752 (A002260 (A000124 n).toNat).toNat + (n : ℤ)

end

end A317594.P18283629383219058808

namespace A317594

/-- `A226752(A002260(A000124(n)))+n` -/
def P18283629383219058808.Spec : Prop :=
  ∀ n, P18283629383219058808.a n = A317594 (n + 1)

end A317594

/-! ## A317594.P12910103384912215455

`A002283(A014963(Δ[(10*n)²]+2)+2)+n`
-/

namespace A317594.P12910103384912215455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat + 2).toNat + (n : ℤ)

end

end A317594.P12910103384912215455

namespace A317594

/-- `A002283(A014963(Δ[(10*n)²]+2)+2)+n` -/
def P12910103384912215455.Spec : Prop :=
  ∀ n, P12910103384912215455.a n = A317594 (n + 1)

end A317594

/-!
# A317595: a(n) is the number of primes between 2n and the largest prime p such that 2n-p is also a prime.

The programs for A317595, there is no canonical definition to state claims against.
-/

/-! ## A317595.P6934782530964008252

`A099801(n+1)-2-A082513(A020482(n+2))`
-/

namespace A317595.P6934782530964008252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (n + 1) - 2 - A082513 (A020482 (n + 2)).toNat

end

end A317595.P6934782530964008252

/-! ## A317595.P12660524627559700960

`A099802(n+2)-2-A082513(A020482(n+2))`
-/

namespace A317595.P12660524627559700960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 2) - 2 - A082513 (A020482 (n + 2)).toNat

end

end A317595.P12660524627559700960

/-! ## A317595.P15624227669857972829

`A000720(2*(n+2))-A000720(A020482(n+2))`
-/

namespace A317595.P15624227669857972829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 2)) - A000720 (A020482 (n + 2)).toNat

end

end A317595.P15624227669857972829

/-! ## A317595.P4760258266793364760

`A036234(2*(n+2))-A036234(A020482(n+2))`
-/

namespace A317595.P4760258266793364760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (2 * (n + 2)) - A036234 (A020482 (n + 2)).toNat

end

end A317595.P4760258266793364760

/-! ## A317595.P14223978905214143001

`n-A210469(n+2)-A082513(A020482(n+2))`
-/

namespace A317595.P14223978905214143001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A210469 (n + 2) - A082513 (A020482 (n + 2)).toNat

end

end A317595.P14223978905214143001

/-! ## A317595.P11348165206758350808

`2*n+1-A065896(n+2)-A082513(A020482(n+2))`
-/

namespace A317595.P11348165206758350808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A065896 (n + 2) - A082513 (A020482 (n + 2)).toNat

end

end A317595.P11348165206758350808

/-! ## A317595.P15811854445019911833

`A082513(A060308(n+2))-A082513(A020482(n+2))`
-/

namespace A317595.P15811854445019911833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A060308 (n + 2)).toNat - A082513 (A020482 (n + 2)).toNat

end

end A317595.P15811854445019911833

/-! ## A317595.P12092451037446462267

`A061395(A060265(n+2))-A061395(A073046(n+2))`
-/

namespace A317595.P12092451037446462267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A060265 (n + 2)).toNat - A061395 (A073046 (n + 2)).toNat

end

end A317595.P12092451037446462267

/-! ## A317595.P3797878375102673737

`A018783(lcm(A142352(n+1), A156707(n+1)))`
-/

namespace A317595.P3797878375102673737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (Int.lcm (A142352 (n + 1)) (A156707 (n + 1)))

end

end A317595.P3797878375102673737

/-! ## A317595.P11639748684209606325

`A018783(A156707(n+1)²*A142352(n+1))`
-/

namespace A317595.P11639748684209606325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A156707 (n + 1) ^ 2 * A142352 (n + 1)).toNat

end

end A317595.P11639748684209606325

/-!
# A317596: a(n) is the number of k with 1 <= k <= n-1 such that a(k) + 2 * a(n-k) <= n.

The programs for A317596, there is no canonical definition to state claims against.
-/

/-! ## A317596.P17924010296014041969

`∑[A128174(A297102(A327389(n+1)))]`
-/

namespace A317596.P17924010296014041969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A297102 (A327389 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317596.P17924010296014041969

/-! ## A317596.P5833754578441852651

`∑[A267358(∑[A032020(n)])]`
-/

namespace A317596.P5833754578441852651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267358 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317596.P5833754578441852651

/-! ## A317596.P16337272407899780452

`∑[A327177(A186128(A332213(n+1)))]`
-/

namespace A317596.P16337272407899780452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (A186128 (A332213 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317596.P16337272407899780452

/-! ## A317596.P5080050720065061823

`∑[A014577(A048715(A034961(n+2)))]`
-/

namespace A317596.P5080050720065061823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A048715 (A034961 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317596.P5080050720065061823

/-! ## A317596.P7489005649464386816

`A034463(A034463(n+1)+A003586(n+1))`
-/

namespace A317596.P7489005649464386816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A034463 (n + 1) + A003586 (n + 1)).toNat

end

end A317596.P7489005649464386816

/-!
# A317598: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317598, there is no canonical definition to state claims against.
-/

/-! ## A317598.P16353737375926205270

`A317604(∑[4*n]+1)`
-/

namespace A317598.P16353737375926205270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317598.P16353737375926205270

/-! ## A317598.P12527962389878765915

`A317604(A001844(n))+A031346(n)`
-/

namespace A317598.P12527962389878765915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A001844 n).toNat + A031346 n

end

end A317598.P12527962389878765915

/-! ## A317598.P6719233825641473279

`A317604(A001844(n))+A185255(n)`
-/

namespace A317598.P6719233825641473279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A001844 n).toNat + A185255 n

end

end A317598.P6719233825641473279

/-! ## A317598.P1802412289116385733

`A326632(n)+A317604(A001844(n))`
-/

namespace A317598.P1802412289116385733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326632 n + A317604 (A001844 n).toNat

end

end A317598.P1802412289116385733

/-! ## A317598.P5288585211247947419

`A000108(C(2, n+2))*A317604(A001844(n))`
-/

namespace A317598.P5288585211247947419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A317604 (A001844 n).toNat

end

end A317598.P5288585211247947419

/-!
# A317599: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317599, there is no canonical definition to state claims against.
-/

/-! ## A317599.P7369939833100894475

`A317604(∑[n+2]+4)`
-/

namespace A317599.P7369939833100894475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317599.P7369939833100894475

/-! ## A317599.P12740055617073935693

`A317604(A167614(n+1))+A011731(n)`
-/

namespace A317599.P12740055617073935693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A167614 (n + 1)).toNat + A011731 n

end

end A317599.P12740055617073935693

/-! ## A317599.P5901572049742390501

`A317604(A167614(n+1))+A185238(n)`
-/

namespace A317599.P5901572049742390501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A167614 (n + 1)).toNat + A185238 n

end

end A317599.P5901572049742390501

/-! ## A317599.P12793054496618630103

`A317604(A167614(n+1))+A185284(n)`
-/

namespace A317599.P12793054496618630103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A167614 (n + 1)).toNat + A185284 n

end

end A317599.P12793054496618630103

/-! ## A317599.P2343691592174493429

`A326679(n)+A317604(A167614(n+1))`
-/

namespace A317599.P2343691592174493429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 n + A317604 (A167614 (n + 1)).toNat

end

end A317599.P2343691592174493429

