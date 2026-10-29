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
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C008
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
import Seq.B006.C000
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
# A110500: n-th root of row sums in A093844.

The programs for A110500, there is no canonical definition to state claims against.
-/

/-! ## A110500.P437905878585833523

`A052410(n+1)*A175069(A168517(n))`
-/

namespace A110500.P437905878585833523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) * A175069 (A168517 n).toNat

end

end A110500.P437905878585833523

/-! ## A110500.P2817173997554722031

`A175069(A168517(n))*A304776(n+1)`
-/

namespace A110500.P2817173997554722031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (A168517 n).toNat * A304776 (n + 1)

end

end A110500.P2817173997554722031

/-! ## A110500.P14679164278408017754

`A014963(A173503(n))*A052410(n+1)`
-/

namespace A110500.P14679164278408017754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A173503 n).toNat * A052410 (n + 1)

end

end A110500.P14679164278408017754

/-! ## A110500.P12394418779867630951

`A052410(n+1)*A094404(A238688(n))`
-/

namespace A110500.P12394418779867630951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) * A094404 (A238688 n).toNat

end

end A110500.P12394418779867630951

/-! ## A110500.P5278846186848113877

`A052410(n+1)*A202853(A168619(n))`
-/

namespace A110500.P5278846186848113877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) * A202853 (A168619 n).toNat

end

end A110500.P5278846186848113877

/-!
# A110501: Unsigned Genocchi numbers (of first kind) of even index.

The programs for A110501, there is no canonical definition to state claims against.
-/

/-! ## A110501.P7539443736792671755

`(-1)^(n+1)*A036968(2*(n+1))`
-/

namespace A110501.P7539443736792671755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A036968 (2 * (n + 1))

end

end A110501.P7539443736792671755

/-! ## A110501.P16654949011080641878

`A000182(n+1)*(n+1)/4^n`
-/

namespace A110501.P16654949011080641878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000182 (n + 1) * (n + 1 : ℤ) : ℚ) / (4 ^ n : ℚ)

end

end A110501.P16654949011080641878

/-! ## A110501.P15354747878544503366

`abs(Δ[A102055(n)])`
-/

namespace A110501.P15354747878544503366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A110501.P15354747878544503366

/-! ## A110501.P3324482763992176466

`A099960(Δ[n²])`
-/

namespace A110501.P3324482763992176466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099960 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A110501.P3324482763992176466

/-! ## A110501.P632784951860023971

`abs(A001469(n+1))`
-/

namespace A110501.P632784951860023971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001469 (n + 1)|

end

end A110501.P632784951860023971

/-!
# A110502: Numbers n such that n in binary representation has a block of exactly a nontrivial square number of zeros.

The programs for A110502, the canonical program `A110502.P10984957544481185627` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110502 has offset 1).

The definition of A110502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2760 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110502.P10984957544481185627

`eq[0, A253262(A124758(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A110502

/-- `eq[0, A253262(A124758(n))]` -/
def P10984957544481185627.Spec : Prop :=
  ∀ n, (P10984957544481185627.a n : ℤ) = A110502 (n + 1)

theorem P10984957544481185627.correct : P10984957544481185627.Spec := by
  intro n
  simp only [A110502, Nat.add_sub_cancel]

end A110502

/-! ## A110502.P9757445570841608111

`eq[A124758(n)%5, A000038(n)]`
-/

namespace A110502.P9757445570841608111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124758 n) 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110502.P9757445570841608111

namespace A110502

/-- `eq[A124758(n)%5, A000038(n)]` -/
def P9757445570841608111.Spec : Prop :=
  ∀ n, (P9757445570841608111.a n : ℤ) = A110502 (n + 1)

end A110502

/-! ## A110502.P3373386721345658658

`eq[A010685(A046643(n+1)), A087117(n)]`
-/

namespace A110502.P3373386721345658658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A046643 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110502.P3373386721345658658

namespace A110502

/-- `eq[A010685(A046643(n+1)), A087117(n)]` -/
def P3373386721345658658.Spec : Prop :=
  ∀ n, (P3373386721345658658.a n : ℤ) = A110502 (n + 1)

end A110502

/-! ## A110502.P15578958997759149361

`eq[4, A051903(A253563(2*n+1))]`
-/

namespace A110502.P15578958997759149361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A253563 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110502.P15578958997759149361

namespace A110502

/-- `eq[4, A051903(A253563(2*n+1))]` -/
def P15578958997759149361.Spec : Prop :=
  ∀ n, (P15578958997759149361.a n : ℤ) = A110502 (n + 1)

end A110502

/-! ## A110502.P11281972090635802387

`eq[A165020(n+1)+1, A087117(n)]`
-/

namespace A110502.P11281972090635802387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165020 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110502.P11281972090635802387

namespace A110502

/-- `eq[A165020(n+1)+1, A087117(n)]` -/
def P11281972090635802387.Spec : Prop :=
  ∀ n, (P11281972090635802387.a n : ℤ) = A110502 (n + 1)

end A110502

/-!
# A110503: Triangle, read by rows, which shifts one column left under matrix inverse.

The programs for A110503, there is no canonical definition to state claims against.
-/

/-! ## A110503.P2251403408566344284

`A294080(A088072(n+1)+1)^A251744(A059268(n))`
-/

namespace A110503.P2251403408566344284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294080 (A088072 (n + 1) + 1).toNat : ℚ) ^ (A251744 (A059268 n).toNat : ℤ)

end

end A110503.P2251403408566344284

/-! ## A110503.P1689627022769174114

`A321894(A008307(n+1)+6)`
-/

namespace A110503.P1689627022769174114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321894 (A008307 (n + 1) + 6).toNat

end

end A110503.P1689627022769174114

/-! ## A110503.P13850648739974849602

`A300508(and(A048720(n), A308168(3*n+2)))`
-/

namespace A110503.P13850648739974849602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300508 (Int.land (A048720 n) (A308168 (3 * n + 2))).toNat

end

end A110503.P13850648739974849602

/-! ## A110503.P15203292710852802229

`A212157(A212207(n))-char[7]`
-/

namespace A110503.P15203292710852802229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212157 (A212207 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A110503.P15203292710852802229

/-! ## A110503.P5676997142979921581

`(-A025474(n+1))^A271141(n+1)`
-/

namespace A110503.P5676997142979921581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A025474 (n + 1) : ℚ) ^ (A271141 (n + 1) : ℤ)

end

end A110503.P5676997142979921581

/-!
# A110504: Triangle, read by rows, which equals the matrix logarithm of the triangle A110503.

The programs for A110504, there is no canonical definition to state claims against.
-/

/-! ## A110504.P11382680750077296158

`(-1)^col(n)*A110505(row(n)-col(n))`
-/

namespace A110504.P11382680750077296158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triCol n * A110505 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A110504.P11382680750077296158

/-!
# A110505: Numerators of unsigned columns of triangle A110504: a(n) = n!*A110504(n,0) = (-1)^k*n!*A110504(n+k,k) for all k >= 0.

The programs for A110505, there is no canonical definition to state claims against.
-/

/-! ## A110505.P3127237214542403846

`A110504(∑[n])`
-/

namespace A110505.P3127237214542403846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110505.P3127237214542403846

/-! ## A110505.P13809559133562869627

`record[A110504(n)]`
-/

namespace A110505.P13809559133562869627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110505.P13809559133562869627

/-! ## A110505.P17867795287775447865

`lcm(floor(n/4)+1, A110504(n*(n+1)/2))`
-/

namespace A110505.P17867795287775447865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌊(n : ℚ) / 4⌋ + 1) (A110504 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A110505.P17867795287775447865

/-! ## A110505.P182500573116587528

`abs(A110504(A000217(n)))`
-/

namespace A110505.P182500573116587528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110504 (A000217 n).toNat|

end

end A110505.P182500573116587528

/-! ## A110505.P1058821459001215934

`abs(A110504(A069695(n+1)))`
-/

namespace A110505.P1058821459001215934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110504 (A069695 (n + 1)).toNat|

end

end A110505.P1058821459001215934

/-!
# A110506: Riordan array (1/(1-xc(2x)),xc(2x)/(1-xc(2x))), c(x) the g.f. of A000108.

The programs for A110506, there is no canonical definition to state claims against.
-/

/-! ## A110506.P15892803679721966971

`abs(A114189(n))`
-/

namespace A110506.P15892803679721966971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114189 n|

end

end A110506.P15892803679721966971

/-! ## A110506.P11090707857222912900

`lcm((-1)^n, A114189(round(acot(n)+n)))`
-/

namespace A110506.P11090707857222912900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A114189 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A110506.P11090707857222912900

/-! ## A110506.P17055018045148829616

`A097807(n)*A114189(n)`
-/

namespace A110506.P17055018045148829616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A114189 n

end

end A110506.P17055018045148829616

/-! ## A110506.P5499216734764825838

`gcd(A000038(n), A114189(n))`
-/

namespace A110506.P5499216734764825838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114189 n)

end

end A110506.P5499216734764825838

/-! ## A110506.P11914201463575840050

`lcm(A020985(n), A114189(n))`
-/

namespace A110506.P11914201463575840050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A114189 n)

end

end A110506.P11914201463575840050

/-! ## A110506.P17488699240581869404

`sqrt(A114189(n)^A020639(2*(n+1)))`
-/

namespace A110506.P17488699240581869404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A114189 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A110506.P17488699240581869404

/-! ## A110506.P1208809764402396424

`A110511(n)/A114188(n)*A114189(n)`
-/

namespace A110506.P1208809764402396424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110511 n : ℚ) / (A114188 n : ℚ) * (A114189 n : ℚ)

end

end A110506.P1208809764402396424

/-! ## A110506.P2639624352759105549

`lcm(-A114189(n), A007318(C(n, 2)))`
-/

namespace A110506.P2639624352759105549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A114189 n) (A007318 (Nat.choose n 2))

end

end A110506.P2639624352759105549

/-!
# A110508: Expansion of 1/(1-(x+x^2)c(2x)), c(x) the g.f. of A000108.

The programs for A110508, there is no canonical definition to state claims against.
-/

/-! ## A110508.P8202703553964295563

`abs(A114190(n))`
-/

namespace A110508.P8202703553964295563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114190 n|

end

end A110508.P8202703553964295563

/-! ## A110508.P13217072512129775333

`A033999(n)*A114190(n)`
-/

namespace A110508.P13217072512129775333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A114190 n

end

end A110508.P13217072512129775333

/-! ## A110508.P14955294722487165374

`gcd(A000038(n), A114190(n))`
-/

namespace A110508.P14955294722487165374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114190 n)

end

end A110508.P14955294722487165374

/-! ## A110508.P17173195720144168735

`lcm(A020985(n), A114190(n))`
-/

namespace A110508.P17173195720144168735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A114190 n)

end

end A110508.P17173195720144168735

/-! ## A110508.P14891722667446054501

`lcm(-A114190(n), A097807(n))`
-/

namespace A110508.P14891722667446054501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A114190 n) (A097807 n)

end

end A110508.P14891722667446054501

/-! ## A110508.P15258547152139240092

`A110511(∑[n])*A114190(n)`
-/

namespace A110508.P15258547152139240092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110511 (∑ j ∈ Finset.range (n + 1), f1 j) * A114190 n

end

end A110508.P15258547152139240092

/-! ## A110508.P4448180439647867887

`(2-Δ[A042948(n)])*A114190(n)`
-/

namespace A110508.P4448180439647867887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A114190 n

end

end A110508.P4448180439647867887

/-! ## A110508.P5535019993785011996

`gcd(-A114190(n), A097331(A005843(n)))`
-/

namespace A110508.P5535019993785011996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A114190 n) (A097331 (A005843 n).toNat)

end

end A110508.P5535019993785011996

/-! ## A110508.P15250515889992268540

`A020985(Δ[A042948(n)])*A114190(n)`
-/

namespace A110508.P15250515889992268540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (f1 (n + 1) - f1 n).toNat * A114190 n

end

end A110508.P15250515889992268540

/-! ## A110508.P13750397257400657944

`(-A014963(90*(n+1)))^n*A114190(n)`
-/

namespace A110508.P13750397257400657944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A014963 (90 * (n + 1))) ^ n * A114190 n

end

end A110508.P13750397257400657944

/-!
# A110509: Riordan array (1, x(1-2x)).

The programs for A110509, the canonical program `A110509.P5526707423303573292` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110509 has offset 0).

The definition of A110509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110509.P8010339001178638558

`T(n-1,k-1)-2*T(n-2,k-1)` with `a(0)=1`
-/

namespace A110509.P8010339001178638558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUp2Left a n

end

end A110509.P8010339001178638558

namespace A110509

/-- `T(n-1,k-1)-2*T(n-2,k-1)` -/
def P8010339001178638558.Spec : Prop :=
  ∀ n, P8010339001178638558.a n = A110509 n

end A110509

/-! ## A110509.P5526707423303573292

`(-2)^(row(n)-col(n))*C(col(n), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110509

/-- `(-2)^(row(n)-col(n))*C(col(n), row(n)-col(n))` -/
def P5526707423303573292.Spec : Prop :=
  ∀ n, P5526707423303573292.a n = (A110509 n : ℚ)

end A110509

/-! ## A110509.P17258282683629994624

`A052509(n)*A109466(n)`
-/

namespace A110509.P17258282683629994624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n * A109466 n

end

end A110509.P17258282683629994624

namespace A110509

/-- `A052509(n)*A109466(n)` -/
def P17258282683629994624.Spec : Prop :=
  ∀ n, P17258282683629994624.a n = A110509 n

end A110509

/-! ## A110509.P6327419203392454505

`A068913(n)*A109466(n)`
-/

namespace A110509.P6327419203392454505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 n * A109466 n

end

end A110509.P6327419203392454505

namespace A110509

/-- `A068913(n)*A109466(n)` -/
def P6327419203392454505.Spec : Prop :=
  ∀ n, P6327419203392454505.a n = A110509 n

end A110509

/-! ## A110509.P5797953714475874845

`A097807(n)*A113953(n)`
-/

namespace A110509.P5797953714475874845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A113953 n

end

end A110509.P5797953714475874845

namespace A110509

/-- `A097807(n)*A113953(n)` -/
def P5797953714475874845.Spec : Prop :=
  ∀ n, P5797953714475874845.a n = A110509 n

end A110509

/-! ## A110509.P16213835050390260445

`A109466(n)*A130321(n)`
-/

namespace A110509.P16213835050390260445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A130321 n

end

end A110509.P16213835050390260445

namespace A110509

/-- `A109466(n)*A130321(n)` -/
def P16213835050390260445.Spec : Prop :=
  ∀ n, P16213835050390260445.a n = A110509 n

end A110509

/-! ## A110509.P5401382149670461248

`A113953(n)*A128257(n)`
-/

namespace A110509.P5401382149670461248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113953 n * A128257 n

end

end A110509.P5401382149670461248

namespace A110509

/-- `A113953(n)*A128257(n)` -/
def P5401382149670461248.Spec : Prop :=
  ∀ n, P5401382149670461248.a n = A110509 n

end A110509

/-! ## A110509.P16263219126337176182

`A109466(n)*A144464(n)`
-/

namespace A110509.P16263219126337176182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A144464 n

end

end A110509.P16263219126337176182

namespace A110509

/-- `A109466(n)*A144464(n)` -/
def P16263219126337176182.Spec : Prop :=
  ∀ n, P16263219126337176182.a n = A110509 n

end A110509

/-! ## A110509.P106743206820084459

`A113953(n)*A187034(n)`
-/

namespace A110509.P106743206820084459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113953 n * A187034 n

end

end A110509.P106743206820084459

namespace A110509

/-- `A113953(n)*A187034(n)` -/
def P106743206820084459.Spec : Prop :=
  ∀ n, P106743206820084459.a n = A110509 n

end A110509

/-! ## A110509.P10404953921905117576

`A109466(n)*A385674(n)`
-/

namespace A110509.P10404953921905117576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A385674 n

end

end A110509.P10404953921905117576

namespace A110509

/-- `A109466(n)*A385674(n)` -/
def P10404953921905117576.Spec : Prop :=
  ∀ n, P10404953921905117576.a n = A110509 n

end A110509

/-! ## A110509.P12057847304657187541

`A057728(n+1)*A109466(n)`
-/

namespace A110509.P12057847304657187541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A109466 n

end

end A110509.P12057847304657187541

namespace A110509

/-- `A057728(n+1)*A109466(n)` -/
def P12057847304657187541.Spec : Prop :=
  ∀ n, P12057847304657187541.a n = A110509 n

end A110509

/-! ## A110509.P15024660185579227915

`A062001(n+1)*A109466(n)`
-/

namespace A110509.P15024660185579227915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062001 (n + 1) * A109466 n

end

end A110509.P15024660185579227915

namespace A110509

/-- `A062001(n+1)*A109466(n)` -/
def P15024660185579227915.Spec : Prop :=
  ∀ n, P15024660185579227915.a n = A110509 n

end A110509

/-! ## A110509.P6124537260579564989

`A109466(n)*A152072(n+1)`
-/

namespace A110509.P6124537260579564989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A152072 (n + 1)

end

end A110509.P6124537260579564989

namespace A110509

/-- `A109466(n)*A152072(n+1)` -/
def P6124537260579564989.Spec : Prop :=
  ∀ n, P6124537260579564989.a n = A110509 n

end A110509

/-! ## A110509.P1406110387224068016

`A109466(n)*A175331(n+2)`
-/

namespace A110509.P1406110387224068016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A175331 (n + 2)

end

end A110509.P1406110387224068016

namespace A110509

/-- `A109466(n)*A175331(n+2)` -/
def P1406110387224068016.Spec : Prop :=
  ∀ n, P1406110387224068016.a n = A110509 n

end A110509

/-! ## A110509.P13705892656436294395

`A026729(n)*A122803(A004197(n))`
-/

namespace A110509.P13705892656436294395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A122803 (A004197 n).toNat

end

end A110509.P13705892656436294395

namespace A110509

/-- `A026729(n)*A122803(A004197(n))` -/
def P13705892656436294395.Spec : Prop :=
  ∀ n, P13705892656436294395.a n = A110509 n

end A110509

/-! ## A110509.P11975638214223491351

`A026729(n)*A122803(A025581(n))`
-/

namespace A110509.P11975638214223491351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A122803 (A025581 n).toNat

end

end A110509.P11975638214223491351

namespace A110509

/-- `A026729(n)*A122803(A025581(n))` -/
def P11975638214223491351.Spec : Prop :=
  ∀ n, P11975638214223491351.a n = A110509 n

end A110509

/-! ## A110509.P7617911943888882333

`A026729(n)*A123344(A004736(n+1))`
-/

namespace A110509.P7617911943888882333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A123344 (A004736 (n + 1)).toNat

end

end A110509.P7617911943888882333

namespace A110509

/-- `A026729(n)*A123344(A004736(n+1))` -/
def P7617911943888882333.Spec : Prop :=
  ∀ n, P7617911943888882333.a n = A110509 n

end A110509

/-! ## A110509.P6717791021725372870

`A052509(n)*A110517(n)/A152714(n)`
-/

namespace A110509.P6717791021725372870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052509 n * A110517 n : ℚ) / (A152714 n : ℚ)

end

end A110509.P6717791021725372870

namespace A110509

/-- `A052509(n)*A110517(n)/A152714(n)` -/
def P6717791021725372870.Spec : Prop :=
  ∀ n, P6717791021725372870.a n = (A110509 n : ℚ)

end A110509

/-! ## A110509.P17222608296902355498

`A110511(n)*A113953(n)/A114188(n)`
-/

namespace A110509.P17222608296902355498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110511 n * A113953 n : ℚ) / (A114188 n : ℚ)

end

end A110509.P17222608296902355498

namespace A110509

/-- `A110511(n)*A113953(n)/A114188(n)` -/
def P17222608296902355498.Spec : Prop :=
  ∀ n, P17222608296902355498.a n = (A110509 n : ℚ)

end A110509

/-! ## A110509.P17904961769722014092

`A059268(n)/A059268(A132118(n+1))*A109466(n)`
-/

namespace A110509.P17904961769722014092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / (A059268 (A132118 (n + 1)).toNat : ℚ) * (A109466 n : ℚ)

end

end A110509.P17904961769722014092

namespace A110509

/-- `A059268(n)/A059268(A132118(n+1))*A109466(n)` -/
def P17904961769722014092.Spec : Prop :=
  ∀ n, P17904961769722014092.a n = (A110509 n : ℚ)

end A110509

/-!
# A110510: Riordan array (1, x*c(2x)), c(x) the g.f. of A000108.

The programs for A110510, the canonical program `A110510.P4459465771356179059` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110510 has offset 0).

The definition of A110510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110510.P4459465771356179059

`A106566(n)*A130321(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A110510

/-- `A106566(n)*A130321(n)` -/
def P4459465771356179059.Spec : Prop :=
  ∀ n, P4459465771356179059.a n = A110510 n

theorem P4459465771356179059.correct : P4459465771356179059.Spec := by
  intro n
  simp only [A110510]

end A110510

/-! ## A110510.P11490211628590481707

`A057728(n+1)*A106566(n)`
-/

namespace A110510.P11490211628590481707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A106566 n

end

end A110510.P11490211628590481707

namespace A110510

/-- `A057728(n+1)*A106566(n)` -/
def P11490211628590481707.Spec : Prop :=
  ∀ n, P11490211628590481707.a n = A110510 n

end A110510

/-! ## A110510.P10129469606999312657

`A000079(A025581(n))*A106566(n)`
-/

namespace A110510.P10129469606999312657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A106566 n

end

end A110510.P10129469606999312657

namespace A110510

/-- `A000079(A025581(n))*A106566(n)` -/
def P10129469606999312657.Spec : Prop :=
  ∀ n, P10129469606999312657.a n = A110510 n

end A110510

/-! ## A110510.P16908839344217085958

`A059268(A061579(n))*A106566(n)`
-/

namespace A110510.P16908839344217085958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A106566 n

end

end A110510.P16908839344217085958

namespace A110510

/-- `A059268(A061579(n))*A106566(n)` -/
def P16908839344217085958.Spec : Prop :=
  ∀ n, P16908839344217085958.a n = A110510 n

end A110510

/-! ## A110510.P15816296641985033279

`A038207(n)/A007318(n)*A106566(n)`
-/

namespace A110510.P15816296641985033279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A007318 n : ℚ) * (A106566 n : ℚ)

end

end A110510.P15816296641985033279

namespace A110510

/-- `A038207(n)/A007318(n)*A106566(n)` -/
def P15816296641985033279.Spec : Prop :=
  ∀ n, P15816296641985033279.a n = (A110510 n : ℚ)

end A110510

/-! ## A110510.P14467981310189486934

`A115193(n)-A115193(n+1)%A116880(n+1)`
-/

namespace A110510.P14467981310189486934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 n - Int.tmod (A115193 (n + 1)) (A116880 (n + 1))

end

end A110510.P14467981310189486934

namespace A110510

/-- `A115193(n)-A115193(n+1)%A116880(n+1)` -/
def P14467981310189486934.Spec : Prop :=
  ∀ n, P14467981310189486934.a n = A110510 n

end A110510

/-! ## A110510.P6829522895225099706

`A053985(A130321(n))*A099039(n)`
-/

namespace A110510.P6829522895225099706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A130321 n).toNat * A099039 n

end

end A110510.P6829522895225099706

namespace A110510

/-- `A053985(A130321(n))*A099039(n)` -/
def P6829522895225099706.Spec : Prop :=
  ∀ n, P6829522895225099706.a n = A110510 n

end A110510

/-!
# A110511: Riordan array (1/(1+x), x(1-x)/(1+x)^2).

The programs for A110511, the canonical program `A110511.P7818026694936795154` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110511 has offset 0).

The definition of A110511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110511.P7818026694936795154

`T(n-1,k-1)-2*T(n-1,k)-T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110511

/-- `T(n-1,k-1)-2*T(n-1,k)-T(n-2,k)-T(n-2,k-1)` -/
def P7818026694936795154.Spec : Prop :=
  ∀ n, P7818026694936795154.a n = A110511 n

theorem P7818026694936795154.correct : P7818026694936795154.Spec := by
  intro n
  simp only [A110511]

end A110511

/-! ## A110511.P8744905432467508522

`A097807(n)*A114188(n)`
-/

namespace A110511.P8744905432467508522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A114188 n

end

end A110511.P8744905432467508522

namespace A110511

/-- `A097807(n)*A114188(n)` -/
def P8744905432467508522.Spec : Prop :=
  ∀ n, P8744905432467508522.a n = A110511 n

end A110511

/-! ## A110511.P15556397150076354605

`A114188(n-char[1])/A097807(n)`
-/

namespace A110511.P15556397150076354605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114188 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / (A097807 n : ℚ)

end

end A110511.P15556397150076354605

namespace A110511

/-- `A114188(n-char[1])/A097807(n)` -/
def P15556397150076354605.Spec : Prop :=
  ∀ n, P15556397150076354605.a n = (A110511 n : ℚ)

end A110511

/-! ## A110511.P17723264542200791564

`A033999(A025581(n))*A114188(n)`
-/

namespace A110511.P17723264542200791564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A114188 n

end

end A110511.P17723264542200791564

namespace A110511

/-- `A033999(A025581(n))*A114188(n)` -/
def P17723264542200791564.Spec : Prop :=
  ∀ n, P17723264542200791564.a n = A110511 n

end A110511

/-! ## A110511.P1158328682438671611

`A033999(A051162(n))*A114188(n)`
-/

namespace A110511.P1158328682438671611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A114188 n

end

end A110511.P1158328682438671611

namespace A110511

/-- `A033999(A051162(n))*A114188(n)` -/
def P1158328682438671611.Spec : Prop :=
  ∀ n, P1158328682438671611.a n = A110511 n

end A110511

/-! ## A110511.P8534787444184747128

`A062157(A004736(n+1))*A114188(n)`
-/

namespace A110511.P8534787444184747128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A114188 n

end

end A110511.P8534787444184747128

namespace A110511

/-- `A062157(A004736(n+1))*A114188(n)` -/
def P8534787444184747128.Spec : Prop :=
  ∀ n, P8534787444184747128.a n = A110511 n

end A110511

/-! ## A110511.P1374439970707580906

`A033999(A051162(n))*A209414(A038722(n+1))`
-/

namespace A110511.P1374439970707580906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A209414 (A038722 (n + 1)).toNat

end

end A110511.P1374439970707580906

namespace A110511

/-- `A033999(A051162(n))*A209414(A038722(n+1))` -/
def P1374439970707580906.Spec : Prop :=
  ∀ n, P1374439970707580906.a n = A110511 n

end A110511

/-! ## A110511.P10996323281971203295

`A033999(A063656(n))*A114188(n)`
-/

namespace A110511.P10996323281971203295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A114188 n

end

end A110511.P10996323281971203295

namespace A110511

/-- `A033999(A063656(n))*A114188(n)` -/
def P10996323281971203295.Spec : Prop :=
  ∀ n, P10996323281971203295.a n = A110511 n

end A110511

/-! ## A110511.P1164651690224612235

`A110506(n)*A114188(n)/A114189(n)`
-/

namespace A110511.P1164651690224612235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110506 n * A114188 n : ℚ) / (A114189 n : ℚ)

end

end A110511.P1164651690224612235

namespace A110511

/-- `A110506(n)*A114188(n)/A114189(n)` -/
def P1164651690224612235.Spec : Prop :=
  ∀ n, P1164651690224612235.a n = (A110511 n : ℚ)

end A110511

/-! ## A110511.P7828333230027350090

`A033999(A105125(n))*A114188(n)`
-/

namespace A110511.P7828333230027350090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A105125 n).toNat * A114188 n

end

end A110511.P7828333230027350090

namespace A110511

/-- `A033999(A105125(n))*A114188(n)` -/
def P7828333230027350090.Spec : Prop :=
  ∀ n, P7828333230027350090.a n = A110511 n

end A110511

/-! ## A110511.P3082653738098397632

`A008836(A130321(n))*A114188(n)`
-/

namespace A110511.P3082653738098397632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A114188 n

end

end A110511.P3082653738098397632

namespace A110511

/-- `A008836(A130321(n))*A114188(n)` -/
def P3082653738098397632.Spec : Prop :=
  ∀ n, P3082653738098397632.a n = A110511 n

end A110511

/-!
# A110512: Expansion of (1 + x)/(1 + x + 2x^2).

The programs for A110512, the canonical program `A110512.P2242454992035774943` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110512 has offset 0).

The definition of A110512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1+x+2x^2))` (program `A110512.P2242454992035774943`, by `A110512.P2242454992035774943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110512.P2242454992035774943

`ogf((1+x)/(1+x+2x^2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110512

/-- `ogf((1+x)/(1+x+2x^2))` -/
def P2242454992035774943.Spec : Prop :=
  ∀ n, P2242454992035774943.a n = A110512 n

theorem P2242454992035774943.correct : P2242454992035774943.Spec := by
  intro n
  simp only [A110512]

end A110512

/-! ## A110512.P10566462394492671999

`(-1)^n*A078020(n)`
-/

namespace A110512.P10566462394492671999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A078020 n

end

end A110512.P10566462394492671999

namespace A110512

/-- `(-1)^n*A078020(n)` -/
def P10566462394492671999.Spec : Prop :=
  ∀ n, P10566462394492671999.a n = A110512 n

end A110512

/-! ## A110512.P5653573356542926857

`-(a(n-1)+2*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A110512.P5653573356542926857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  -(a (n - 1) + 2 * a (n - 2))

end

end A110512.P5653573356542926857

namespace A110512

/-- `-(a(n-1)+2*a(n-2))` -/
def P5653573356542926857.Spec : Prop :=
  ∀ n, P5653573356542926857.a n = A110512 n

end A110512

/-! ## A110512.P2537762874322309263

`2*a(n-3)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A110512.P2537762874322309263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  2 * a (n - 3) - a (n - 2)

end

end A110512.P2537762874322309263

namespace A110512

/-- `2*a(n-3)-a(n-2)` -/
def P2537762874322309263.Spec : Prop :=
  ∀ n, P2537762874322309263.a n = A110512 n

end A110512

/-! ## A110512.P3239321872948714127

`a(n-2)/(1/2-1)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A110512.P3239321872948714127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2 - 1) - a (n - 1)

end

end A110512.P3239321872948714127

namespace A110512

/-- `a(n-2)/(1/2-1)-a(n-1)` -/
def P3239321872948714127.Spec : Prop :=
  ∀ n, P3239321872948714127.a n = (A110512 n : ℚ)

end A110512

/-! ## A110512.P9570968897143946393

`-(a(n-2)+a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A110512.P9570968897143946393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  -(a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A110512.P9570968897143946393

namespace A110512

/-- `-(a(n-2)+a(n-1)+a(n-2))` -/
def P9570968897143946393.Spec : Prop :=
  ∀ n, P9570968897143946393.a n = A110512 n

end A110512

/-! ## A110512.P5141616665696429449

`a(n-3)+a(n-3)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A110512.P5141616665696429449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 2))

end

end A110512.P5141616665696429449

namespace A110512

/-- `a(n-3)+a(n-3)-a(n-2)` -/
def P5141616665696429449.Spec : Prop :=
  ∀ n, P5141616665696429449.a n = A110512 n

end A110512

/-! ## A110512.P8055883120564045014

`floor(a(n-3)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=0, a(2)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A110512.P8055883120564045014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 3) - (a (n - 2) - a (n - 3))

end

end A110512.P8055883120564045014

namespace A110512

/-- `floor(a(n-3)-(a(n-2)-a(n-3)))` -/
def P8055883120564045014.Spec : Prop :=
  ∀ n, P8055883120564045014.a n = A110512 n

end A110512

/-! ## A110512.P13638520286403292845

`a(n-1)%2-a(n-1)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A110512.P13638520286403292845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.tmod (a (n - 1)) 2 - a (n - 1) - a (n - 2) - a (n - 2)

end

end A110512.P13638520286403292845

namespace A110512

/-- `a(n-1)%2-a(n-1)-a(n-2)-a(n-2)` -/
def P13638520286403292845.Spec : Prop :=
  ∀ n, P13638520286403292845.a n = A110512 n

end A110512

/-! ## A110512.P4961973365016666690

`A001607(n+1)+A001607(n)`
-/

namespace A110512.P4961973365016666690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1) + A001607 n

end

end A110512.P4961973365016666690

namespace A110512

/-- `A001607(n+1)+A001607(n)` -/
def P4961973365016666690.Spec : Prop :=
  ∀ n, P4961973365016666690.a n = A110512 n

end A110512

/-! ## A110512.P7243079757210812839

`A078050(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A110512.P7243079757210812839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078050 (n - 1) - a (n - 1)

end

end A110512.P7243079757210812839

namespace A110512

/-- `A078050(n-1)-a(n-1)` -/
def P7243079757210812839.Spec : Prop :=
  ∀ n, P7243079757210812839.a n = A110512 n

end A110512

/-! ## A110512.P8105711078417616765

`A169998(n)-A001607(n)`
-/

namespace A110512.P8105711078417616765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169998 n - A001607 n

end

end A110512.P8105711078417616765

namespace A110512

/-- `A169998(n)-A001607(n)` -/
def P8105711078417616765.Spec : Prop :=
  ∀ n, P8105711078417616765.a n = A110512 n

end A110512

/-! ## A110512.P17655786656015319548

`∑[2*A078050(n)]-A078050(n)`
-/

namespace A110512.P17655786656015319548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078050 n

end

end A110512.P17655786656015319548

namespace A110512

/-- `∑[2*A078050(n)]-A078050(n)` -/
def P17655786656015319548.Spec : Prop :=
  ∀ n, P17655786656015319548.a n = A110512 n

end A110512

/-! ## A110512.P9290487821358541237

`A169998(n+1)+A169998(n)-A078050(n)`
-/

namespace A110512.P9290487821358541237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169998 (n + 1) + (A169998 n - A078050 n)

end

end A110512.P9290487821358541237

namespace A110512

/-- `A169998(n+1)+A169998(n)-A078050(n)` -/
def P9290487821358541237.Spec : Prop :=
  ∀ n, P9290487821358541237.a n = A110512 n

end A110512

/-! ## A110512.P8903954167020822283

`A078050(n+1)/2-A078050(n+1)`
-/

namespace A110512.P8903954167020822283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078050 (n + 1) : ℚ) / 2 - (A078050 (n + 1) : ℚ)

end

end A110512.P8903954167020822283

namespace A110512

/-- `A078050(n+1)/2-A078050(n+1)` -/
def P8903954167020822283.Spec : Prop :=
  ∀ n, P8903954167020822283.a n = (A110512 n : ℚ)

end A110512

/-! ## A110512.P17498119195264316245

`A122946(n+2)-2^n`
-/

namespace A110512.P17498119195264316245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122946 (n + 2) - (2 ^ n : ℤ)

end

end A110512.P17498119195264316245

namespace A110512

/-- `A122946(n+2)-2^n` -/
def P17498119195264316245.Spec : Prop :=
  ∀ n, P17498119195264316245.a n = A110512 n

end A110512

/-! ## A110512.P2235189548051665668

`2*A089977(n)-A000079(n)`
-/

namespace A110512.P2235189548051665668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089977 n - A000079 n

end

end A110512.P2235189548051665668

namespace A110512

/-- `2*A089977(n)-A000079(n)` -/
def P2235189548051665668.Spec : Prop :=
  ∀ n, P2235189548051665668.a n = A110512 n

end A110512

/-! ## A110512.P10994600451961300951

`A001045(n)+A113726(n)-A113726(n+1)`
-/

namespace A110512.P10994600451961300951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A113726 n - A113726 (n + 1))

end

end A110512.P10994600451961300951

namespace A110512

/-- `A001045(n)+A113726(n)-A113726(n+1)` -/
def P10994600451961300951.Spec : Prop :=
  ∀ n, P10994600451961300951.a n = A110512 n

end A110512

/-!
# A110513: Expansion of (1 + x)/(1 + 2x + x^3).

The programs for A110513, the canonical program `A110513.P513605626266402954` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110513 has offset 0).

The definition of A110513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1+2x+x^3))` (program `A110513.P513605626266402954`, by `A110513.P513605626266402954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110513.P513605626266402954

`ogf((1+x)/(1+2x+x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110513

/-- `ogf((1+x)/(1+2x+x^3))` -/
def P513605626266402954.Spec : Prop :=
  ∀ n, P513605626266402954.a n = A110513 n

theorem P513605626266402954.correct : P513605626266402954.Spec := by
  intro n
  simp only [A110513]

end A110513

/-! ## A110513.P15568398655367443659

`A033999(n)*A052980(n)`
-/

namespace A110513.P15568398655367443659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A052980 n

end

end A110513.P15568398655367443659

namespace A110513

/-- `A033999(n)*A052980(n)` -/
def P15568398655367443659.Spec : Prop :=
  ∀ n, P15568398655367443659.a n = A110513 n

end A110513

/-! ## A110513.P381980155328922834

`A052980(n)/A033999(n+2)`
-/

namespace A110513.P381980155328922834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052980 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A110513.P381980155328922834

namespace A110513

/-- `A052980(n)/A033999(n+2)` -/
def P381980155328922834.Spec : Prop :=
  ∀ n, P381980155328922834.a n = (A110513 n : ℚ)

end A110513

/-! ## A110513.P12688607063647932700

`A052980(n)*A056594(2*n)`
-/

namespace A110513.P12688607063647932700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n * A056594 (2 * n)

end

end A110513.P12688607063647932700

namespace A110513

/-- `A052980(n)*A056594(2*n)` -/
def P12688607063647932700.Spec : Prop :=
  ∀ n, P12688607063647932700.a n = A110513 n

end A110513

/-! ## A110513.P4158348240010426102

`(2*A059841(n)-1)*A052980(n)`
-/

namespace A110513.P4158348240010426102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A059841 n - 1) * A052980 n

end

end A110513.P4158348240010426102

namespace A110513

/-- `(2*A059841(n)-1)*A052980(n)` -/
def P4158348240010426102.Spec : Prop :=
  ∀ n, P4158348240010426102.a n = A110513 n

end A110513

/-! ## A110513.P7386494519970204983

`(n+1)²/A162395(n+1)*A052980(n)`
-/

namespace A110513.P7386494519970204983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A162395 (n + 1) : ℚ) * (A052980 n : ℚ)

end

end A110513.P7386494519970204983

namespace A110513

/-- `(n+1)²/A162395(n+1)*A052980(n)` -/
def P7386494519970204983.Spec : Prop :=
  ∀ n, P7386494519970204983.a n = (A110513 n : ℚ)

end A110513

/-! ## A110513.P8017349614083171771

`a(n-1)-(a(n-3)+3*a(n-1))` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A110513.P8017349614083171771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 1) - (a (n - 3) + 3 * a (n - 1))

end

end A110513.P8017349614083171771

namespace A110513

/-- `a(n-1)-(a(n-3)+3*a(n-1))` -/
def P8017349614083171771.Spec : Prop :=
  ∀ n, P8017349614083171771.a n = A110513 n

end A110513

/-! ## A110513.P862494820318374522

`a(n-1)-3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A110513.P862494820318374522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 1) - 3 * a (n - 1) - a (n - 3)

end

end A110513.P862494820318374522

namespace A110513

/-- `a(n-1)-3*a(n-1)-a(n-3)` -/
def P862494820318374522.Spec : Prop :=
  ∀ n, P862494820318374522.a n = A110513 n

end A110513

/-! ## A110513.P15090242101459379976

`∑[2*A078061(n)]-A078061(n)`
-/

namespace A110513.P15090242101459379976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078061 n

end

end A110513.P15090242101459379976

namespace A110513

/-- `∑[2*A078061(n)]-A078061(n)` -/
def P15090242101459379976.Spec : Prop :=
  ∀ n, P15090242101459379976.a n = A110513 n

end A110513

/-! ## A110513.P15469928268092485450

`A214260(n+1)/A078061(n)*A052980(n)`
-/

namespace A110513.P15469928268092485450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214260 (n + 1) : ℚ) / (A078061 n : ℚ) * (A052980 n : ℚ)

end

end A110513.P15469928268092485450

namespace A110513

/-- `A214260(n+1)/A078061(n)*A052980(n)` -/
def P15469928268092485450.Spec : Prop :=
  ∀ n, P15469928268092485450.a n = (A110513 n : ℚ)

end A110513

/-! ## A110513.P9794838711297948222

`A052980(n)*A110511(∑[n])`
-/

namespace A110513.P9794838711297948222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n * A110511 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110513.P9794838711297948222

namespace A110513

/-- `A052980(n)*A110511(∑[n])` -/
def P9794838711297948222.Spec : Prop :=
  ∀ n, P9794838711297948222.a n = A110513 n

end A110513

/-! ## A110513.P11400877134584904627

`A052980(n)*A115953(n²)`
-/

namespace A110513.P11400877134584904627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n * A115953 (n ^ 2)

end

end A110513.P11400877134584904627

namespace A110513

/-- `A052980(n)*A115953(n²)` -/
def P11400877134584904627.Spec : Prop :=
  ∀ n, P11400877134584904627.a n = A110513 n

end A110513

/-!
# A110514: Expansion of (1 - x + x^2 + x^3)/(1 - x^2 - x^4 + x^6).

The programs for A110514, the canonical program `A110514.P12722132875319943695` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110514 has offset 0).

The definition of A110514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2+x^3)/(1-x^2-x^4+x^6))` (program `A110514.P12722132875319943695`, by `A110514.P12722132875319943695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110514.P12722132875319943695

`ogf((1-x+x^2+x^3)/(1-x^2-x^4+x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110514

/-- `ogf((1-x+x^2+x^3)/(1-x^2-x^4+x^6))` -/
def P12722132875319943695.Spec : Prop :=
  ∀ n, P12722132875319943695.a n = A110514 n

theorem P12722132875319943695.correct : P12722132875319943695.Spec := by
  intro n
  simp only [A110514]

end A110514

/-! ## A110514.P17735772342174124616

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=0, a(4)=3, a(5)=-1`
-/

namespace A110514.P17735772342174124616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2, 0, 3, -1] fun n a =>
  a (n - 2) + a (n - 4) - a (n - 6)

end

end A110514.P17735772342174124616

namespace A110514

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P17735772342174124616.Spec : Prop :=
  ∀ n, P17735772342174124616.a n = A110514 n

end A110514

/-! ## A110514.P7285531674826711462

`(sin(π*n/2)*((-1)^n-1)+(n+3)*(-1)^n+n+1)/4`
-/

namespace A110514.P7285531674826711462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sin (Real.pi * (n : ℝ) / 2) * ((-1) ^ n - 1 : ℝ) + ((n + 3 : ℤ) * (-1) ^ n : ℝ) + (n + 1 : ℝ)) / 4

end

end A110514.P7285531674826711462

namespace A110514

/-- `(sin(π*n/2)*((-1)^n-1)+(n+3)*(-1)^n+n+1)/4` -/
def P7285531674826711462.Spec : Prop :=
  ∀ n, P7285531674826711462.a n = (A110514 n : ℝ)

end A110514

/-! ## A110514.P12357188265213954419

`∑[(-1)^∑[∑[n]]-a(n-1)]` with `a(0)=1`
-/

namespace A110514.P12357188265213954419
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110514.P12357188265213954419

namespace A110514

/-- `∑[(-1)^∑[∑[n]]-a(n-1)]` -/
def P12357188265213954419.Spec : Prop :=
  ∀ n, P12357188265213954419.a n = A110514 n

end A110514

/-! ## A110514.P6504324646620574901

`(a(n-2)+1)*(-1)^n` with `a(0)=1, a(1)=-1`
-/

namespace A110514.P6504324646620574901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (a (n - 2) + 1) * (-1) ^ n

end

end A110514.P6504324646620574901

namespace A110514

/-- `(a(n-2)+1)*(-1)^n` -/
def P6504324646620574901.Spec : Prop :=
  ∀ n, P6504324646620574901.a n = A110514 n

end A110514

/-! ## A110514.P15017538285543403212

`(a(n-2)+1)/(-1)^n` with `a(0)=1, a(1)=-1`
-/

namespace A110514.P15017538285543403212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n a =>
  (a (n - 2) + 1) / ((-1) ^ n : ℚ)

end

end A110514.P15017538285543403212

namespace A110514

/-- `(a(n-2)+1)/(-1)^n` -/
def P15017538285543403212.Spec : Prop :=
  ∀ n, P15017538285543403212.a n = (A110514 n : ℚ)

end A110514

/-! ## A110514.P8757576819019202718

`∑[xor((-1)^n, ceil(or(2, n-1)/2))]`
-/

namespace A110514.P8757576819019202718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n) ⌈(Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110514.P8757576819019202718

namespace A110514

/-- `∑[xor((-1)^n, ceil(or(2, n-1)/2))]` -/
def P8757576819019202718.Spec : Prop :=
  ∀ n, P8757576819019202718.a n = A110514 n

end A110514

/-! ## A110514.P12837007428421969470

`a(n-2)+((-1)^a(n-1))^n` with `a(0)=1, a(1)=-1`
-/

namespace A110514.P12837007428421969470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) + ((-1 : ℝ) ^ (a (n - 1))) ^ n

end

end A110514.P12837007428421969470

namespace A110514

/-- `a(n-2)+((-1)^a(n-1))^n` -/
def P12837007428421969470.Spec : Prop :=
  ∀ n, P12837007428421969470.a n = (A110514 n : ℝ)

end A110514

/-! ## A110514.P8944721727867742113

`∑[2%(2*a(n-1)-n)-(a(n-1)+1)]` with `a(0)=1`
-/

namespace A110514.P8944721727867742113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod 2 (2 * f1 (n - 1) - (n : ℤ)) - (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110514.P8944721727867742113

namespace A110514

/-- `∑[2%(2*a(n-1)-n)-(a(n-1)+1)]` -/
def P8944721727867742113.Spec : Prop :=
  ∀ n, P8944721727867742113.a n = A110514 n

end A110514

/-! ## A110514.P12684307860779198749

`a(n-2)-(-1)^a(n-2)^a(n-1)²` with `a(0)=1, a(1)=-1`
-/

namespace A110514.P12684307860779198749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) - (-1 : ℝ) ^ (a (n - 2) ^ (a (n - 1) ^ 2))

end

end A110514.P12684307860779198749

namespace A110514

/-- `a(n-2)-(-1)^a(n-2)^a(n-1)²` -/
def P12684307860779198749.Spec : Prop :=
  ∀ n, P12684307860779198749.a n = (A110514 n : ℝ)

end A110514

/-! ## A110514.P2904182177100072697

`∑[A110516(n)]`
-/

namespace A110514.P2904182177100072697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110514.P2904182177100072697

namespace A110514

/-- `∑[A110516(n)]` -/
def P2904182177100072697.Spec : Prop :=
  ∀ n, P2904182177100072697.a n = A110514 n

end A110514

/-! ## A110514.P7011819008548389853

`Δ[A008818(abs(1-n))]`
-/

namespace A110514.P7011819008548389853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110514.P7011819008548389853

namespace A110514

/-- `Δ[A008818(abs(1-n))]` -/
def P7011819008548389853.Spec : Prop :=
  ∀ n, P7011819008548389853.a n = A110514 n

end A110514

/-! ## A110514.P2958669661382578780

`A106249(n)-a(n-1)` with `a(0)=1`
-/

namespace A110514.P2958669661382578780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106249 n - a (n - 1)

end

end A110514.P2958669661382578780

namespace A110514

/-- `A106249(n)-a(n-1)` -/
def P2958669661382578780.Spec : Prop :=
  ∀ n, P2958669661382578780.a n = A110514 n

end A110514

/-! ## A110514.P3510196963833049581

`∑[2-(A000045(gcd(n+3, n-1))+a(n-1))]` with `a(0)=1`
-/

namespace A110514.P3510196963833049581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - (A000045 (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1)) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110514.P3510196963833049581

namespace A110514

/-- `∑[2-(A000045(gcd(n+3, n-1))+a(n-1))]` -/
def P3510196963833049581.Spec : Prop :=
  ∀ n, P3510196963833049581.a n = A110514 n

end A110514

/-! ## A110514.P12528446771344327107

`A174239(n)-A004525(n)`
-/

namespace A110514.P12528446771344327107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 n - A004525 n

end

end A110514.P12528446771344327107

namespace A110514

/-- `A174239(n)-A004525(n)` -/
def P12528446771344327107.Spec : Prop :=
  ∀ n, P12528446771344327107.a n = A110514 n

end A110514

/-! ## A110514.P1424750904654497969

`∑[A181983(A083219(n+1))]`
-/

namespace A110514.P1424750904654497969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A083219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110514.P1424750904654497969

namespace A110514

/-- `∑[A181983(A083219(n+1))]` -/
def P1424750904654497969.Spec : Prop :=
  ∀ n, P1424750904654497969.a n = A110514 n

end A110514

/-! ## A110514.P2351281015066057691

`A230074(n+1)+A166514(n)`
-/

namespace A110514.P2351281015066057691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (n + 1) + A166514 n

end

end A110514.P2351281015066057691

namespace A110514

/-- `A230074(n+1)+A166514(n)` -/
def P2351281015066057691.Spec : Prop :=
  ∀ n, P2351281015066057691.a n = A110514 n

end A110514

/-! ## A110514.P16433915880819085929

`A193356(n+1)-A166514(n)`
-/

namespace A110514.P16433915880819085929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1) - A166514 n

end

end A110514.P16433915880819085929

namespace A110514

/-- `A193356(n+1)-A166514(n)` -/
def P16433915880819085929.Spec : Prop :=
  ∀ n, P16433915880819085929.a n = A110514 n

end A110514

/-! ## A110514.P5215321137969611697

`∑{d}[n+1, A055034(#)*A230074((n+1)/#)]`
-/

namespace A110514.P5215321137969611697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055034 d * A230074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A110514.P5215321137969611697

namespace A110514

/-- `∑{d}[n+1, A055034(#)*A230074((n+1)/#)]` -/
def P5215321137969611697.Spec : Prop :=
  ∀ n, P5215321137969611697.a n = A110514 n

end A110514

/-! ## A110514.P2090388326773540554

`∑{d}[n+1, A079247(#)*A361019((n+1)/#)]`
-/

namespace A110514.P2090388326773540554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079247 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A110514.P2090388326773540554

namespace A110514

/-- `∑{d}[n+1, A079247(#)*A361019((n+1)/#)]` -/
def P2090388326773540554.Spec : Prop :=
  ∀ n, P2090388326773540554.a n = A110514 n

end A110514

/-!
# A110515: Sequence array for (1 - x + x^2 + x^3)/(1 - x^4).

The programs for A110515, the canonical program `A110515.P16865065084477646787` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110515 has offset 0).

The definition of A110515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110515.P16865065084477646787

`1-and(2, C(A055461(n+1), 2))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110515

/-- `1-and(2, C(A055461(n+1), 2))` -/
def P16865065084477646787.Spec : Prop :=
  ∀ n, P16865065084477646787.a n = A110515 n

theorem P16865065084477646787.correct : P16865065084477646787.Spec := by
  intro n
  simp only [A110515]

end A110515

/-! ## A110515.P12454276223550335171

`(-1)^A002415(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A110515.P12454276223550335171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002415 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℤ)

end

end A110515.P12454276223550335171

namespace A110515

/-- `(-1)^A002415(C(comp[∑[n]]-n, 2)-n)` -/
def P12454276223550335171.Spec : Prop :=
  ∀ n, P12454276223550335171.a n = (A110515 n : ℚ)

end A110515

/-! ## A110515.P14301297079671102691

`(-1)^A002620(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A110515.P14301297079671102691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002620 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℤ)

end

end A110515.P14301297079671102691

namespace A110515

/-- `(-1)^A002620(C(comp[∑[n]]-n, 2)-n)` -/
def P14301297079671102691.Spec : Prop :=
  ∀ n, P14301297079671102691.a n = (A110515 n : ℚ)

end A110515

/-! ## A110515.P6132324908481391998

`(-1)^A006370(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A110515.P6132324908481391998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A006370 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℤ)

end

end A110515.P6132324908481391998

namespace A110515

/-- `(-1)^A006370(C(comp[∑[n]]-n, 2)-n)` -/
def P6132324908481391998.Spec : Prop :=
  ∀ n, P6132324908481391998.a n = (A110515 n : ℚ)

end A110515

/-! ## A110515.P14651136812608333236

`(-1)^A030179(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A110515.P14651136812608333236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A030179 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℤ)

end

end A110515.P14651136812608333236

namespace A110515

/-- `(-1)^A030179(C(comp[∑[n]]-n, 2)-n)` -/
def P14651136812608333236.Spec : Prop :=
  ∀ n, P14651136812608333236.a n = (A110515 n : ℚ)

end A110515

/-! ## A110515.P10588524278221513409

`(-1)^A000292(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A110515.P10588524278221513409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000292 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℤ)

end

end A110515.P10588524278221513409

namespace A110515

/-- `(-1)^A000292(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P10588524278221513409.Spec : Prop :=
  ∀ n, P10588524278221513409.a n = (A110515 n : ℚ)

end A110515

/-! ## A110515.P7057606894280040886

`(-1)^A006503(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A110515.P7057606894280040886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A006503 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℤ)

end

end A110515.P7057606894280040886

namespace A110515

/-- `(-1)^A006503(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P7057606894280040886.Spec : Prop :=
  ∀ n, P7057606894280040886.a n = (A110515 n : ℚ)

end A110515

/-! ## A110515.P15163347571471078916

`(-1)^A024166(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A110515.P15163347571471078916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A024166 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℤ)

end

end A110515.P15163347571471078916

namespace A110515

/-- `(-1)^A024166(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P15163347571471078916.Spec : Prop :=
  ∀ n, P15163347571471078916.a n = (A110515 n : ℚ)

end A110515

/-! ## A110515.P4714239643427725681

`(-1)^A222423(A025581(n))`
-/

namespace A110515.P4714239643427725681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A222423 (A025581 n).toNat : ℤ)

end

end A110515.P4714239643427725681

namespace A110515

/-- `(-1)^A222423(A025581(n))` -/
def P4714239643427725681.Spec : Prop :=
  ∀ n, P4714239643427725681.a n = (A110515 n : ℚ)

end A110515

/-! ## A110515.P272608628630029418

`(-1)^A004524(A025581(n)+2)`
-/

namespace A110515.P272608628630029418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A004524 (A025581 n + 2).toNat : ℤ)

end

end A110515.P272608628630029418

namespace A110515

/-- `(-1)^A004524(A025581(n)+2)` -/
def P272608628630029418.Spec : Prop :=
  ∀ n, P272608628630029418.a n = (A110515 n : ℚ)

end A110515

/-! ## A110515.P15553524272327093726

`A071936(A143956(n+2))`
-/

namespace A110515.P15553524272327093726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (A143956 (n + 2)).toNat

end

end A110515.P15553524272327093726

namespace A110515

/-- `A071936(A143956(n+2))` -/
def P15553524272327093726.Spec : Prop :=
  ∀ n, P15553524272327093726.a n = A110515 n

end A110515

/-! ## A110515.P394799409176865426

`A009001(A029578(A130194(n+1)²))`
-/

namespace A110515.P394799409176865426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A029578 (A130194 (n + 1) ^ 2).toNat).toNat

end

end A110515.P394799409176865426

namespace A110515

/-- `A009001(A029578(A130194(n+1)²))` -/
def P394799409176865426.Spec : Prop :=
  ∀ n, P394799409176865426.a n = A110515 n

end A110515

/-! ## A110515.P11684094430914325149

`A046980(A055461(n+1)-1)`
-/

namespace A110515.P11684094430914325149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A055461 (n + 1) - 1).toNat

end

end A110515.P11684094430914325149

namespace A110515

/-- `A046980(A055461(n+1)-1)` -/
def P11684094430914325149.Spec : Prop :=
  ∀ n, P11684094430914325149.a n = A110515 n

end A110515

/-! ## A110515.P1925267409187630038

`A046980(A004736(n+1)²-1)`
-/

namespace A110515.P1925267409187630038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A004736 (n + 1) ^ 2 - 1).toNat

end

end A110515.P1925267409187630038

namespace A110515

/-- `A046980(A004736(n+1)²-1)` -/
def P1925267409187630038.Spec : Prop :=
  ∀ n, P1925267409187630038.a n = A110515 n

end A110515

/-! ## A110515.P8721073534497420268

`A143621((n-C(comp[∑[n]]-n, 2))²)`
-/

namespace A110515.P8721073534497420268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143621 (((n : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2).toNat

end

end A110515.P8721073534497420268

namespace A110515

/-- `A143621((n-C(comp[∑[n]]-n, 2))²)` -/
def P8721073534497420268.Spec : Prop :=
  ∀ n, P8721073534497420268.a n = A110515 n

end A110515

/-! ## A110515.P2263241346243023855

`A046980(A055461(n+1))`
-/

namespace A110515.P2263241346243023855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A055461 (n + 1)).toNat

end

end A110515.P2263241346243023855

namespace A110515

/-- `A046980(A055461(n+1))` -/
def P2263241346243023855.Spec : Prop :=
  ∀ n, P2263241346243023855.a n = A110515 n

end A110515

/-! ## A110515.P1458851660531238437

`A046980(A004736(n+1)²)`
-/

namespace A110515.P1458851660531238437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A004736 (n + 1) ^ 2).toNat

end

end A110515.P1458851660531238437

namespace A110515

/-- `A046980(A004736(n+1)²)` -/
def P1458851660531238437.Spec : Prop :=
  ∀ n, P1458851660531238437.a n = A110515 n

end A110515

/-! ## A110515.P8550936114969670206

`A132380(A004736(n+1)²+2)`
-/

namespace A110515.P8550936114969670206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (A004736 (n + 1) ^ 2 + 2).toNat

end

end A110515.P8550936114969670206

namespace A110515

/-- `A132380(A004736(n+1)²+2)` -/
def P8550936114969670206.Spec : Prop :=
  ∀ n, P8550936114969670206.a n = A110515 n

end A110515

/-! ## A110515.P3655017967541812241

`1-A132401(A004736(n+1)²)`
-/

namespace A110515.P3655017967541812241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A132401 (A004736 (n + 1) ^ 2).toNat

end

end A110515.P3655017967541812241

namespace A110515

/-- `1-A132401(A004736(n+1)²)` -/
def P3655017967541812241.Spec : Prop :=
  ∀ n, P3655017967541812241.a n = A110515 n

end A110515

/-! ## A110515.P4875722813380772370

`A132401(A004736(n+1)²+2)`
-/

namespace A110515.P4875722813380772370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132401 (A004736 (n + 1) ^ 2 + 2).toNat

end

end A110515.P4875722813380772370

namespace A110515

/-- `A132401(A004736(n+1)²+2)` -/
def P4875722813380772370.Spec : Prop :=
  ∀ n, P4875722813380772370.a n = A110515 n

end A110515

/-!
# A110516: Expansion of (1-x+x^2+x^3)/(1+x-x^4-x^5).

The programs for A110516, the canonical program `A110516.P8040957689480201027` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110516 has offset 0).

The definition of A110516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2+x^3)/(1+x-x^4-x^5))` (program `A110516.P8040957689480201027`, by `A110516.P8040957689480201027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110516.P8040957689480201027

`ogf((1-x+x^2+x^3)/(1+x-x^4-x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110516

/-- `ogf((1-x+x^2+x^3)/(1+x-x^4-x^5))` -/
def P8040957689480201027.Spec : Prop :=
  ∀ n, P8040957689480201027.a n = A110516 n

theorem P8040957689480201027.correct : P8040957689480201027.Spec := by
  intro n
  simp only [A110516]

end A110516

/-! ## A110516.P1559736126318098271

`(-1)^∑[∑[n]]-a(n-1)` with `a(0)=1`
-/

namespace A110516.P1559736126318098271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A110516.P1559736126318098271

namespace A110516

/-- `(-1)^∑[∑[n]]-a(n-1)` -/
def P1559736126318098271.Spec : Prop :=
  ∀ n, P1559736126318098271.a n = A110516 n

end A110516

/-! ## A110516.P9938229544654742093

`xor((-1)^n, ceil(or(2, n-1)/2))`
-/

namespace A110516.P9938229544654742093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n) ⌈(Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A110516.P9938229544654742093

namespace A110516

/-- `xor((-1)^n, ceil(or(2, n-1)/2))` -/
def P9938229544654742093.Spec : Prop :=
  ∀ n, P9938229544654742093.a n = A110516 n

end A110516

/-! ## A110516.P8951659813531258511

`2%(2*a(n-1)-n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A110516.P8951659813531258511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod 2 (2 * a (n - 1) - (n : ℤ)) - (a (n - 1) + 1)

end

end A110516.P8951659813531258511

namespace A110516

/-- `2%(2*a(n-1)-n)-(a(n-1)+1)` -/
def P8951659813531258511.Spec : Prop :=
  ∀ n, P8951659813531258511.a n = A110516 n

end A110516

/-! ## A110516.P17147096585965239861

`a(n-4)+a(n-5)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=3, a(3)=-2, a(4)=3`
-/

namespace A110516.P17147096585965239861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3, -2, 3] fun n a =>
  a (n - 4) + (a (n - 5) - a (n - 1))

end

end A110516.P17147096585965239861

namespace A110516

/-- `a(n-4)+a(n-5)-a(n-1)` -/
def P17147096585965239861.Spec : Prop :=
  ∀ n, P17147096585965239861.a n = A110516 n

end A110516

/-! ## A110516.P16062040432212816630

`A163805(n)+round(1/2-a(n-1))` with `a(0)=1`
-/

namespace A110516.P16062040432212816630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163805 n + SequenceMachineLib.roundAway ((1 : ℚ) / 2 - (a (n - 1) : ℚ))

end

end A110516.P16062040432212816630

namespace A110516

/-- `A163805(n)+round(1/2-a(n-1))` -/
def P16062040432212816630.Spec : Prop :=
  ∀ n, P16062040432212816630.a n = A110516 n

end A110516

/-! ## A110516.P18201506929428987814

`2-(A000045(gcd(n+3, n-1))+a(n-1))` with `a(0)=1`
-/

namespace A110516.P18201506929428987814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (A000045 (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1)) + a (n - 1))

end

end A110516.P18201506929428987814

namespace A110516

/-- `2-(A000045(gcd(n+3, n-1))+a(n-1))` -/
def P18201506929428987814.Spec : Prop :=
  ∀ n, P18201506929428987814.a n = A110516 n

end A110516

/-! ## A110516.P3120784130701244791

`A181983(A083219(n+1))`
-/

namespace A110516.P3120784130701244791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A083219 (n + 1)).toNat

end

end A110516.P3120784130701244791

namespace A110516

/-- `A181983(A083219(n+1))` -/
def P3120784130701244791.Spec : Prop :=
  ∀ n, P3120784130701244791.a n = A110516 n

end A110516

/-! ## A110516.P11400807090417124242

`xor(A033999(n), A285869(n))`
-/

namespace A110516.P11400807090417124242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n) (A285869 n)

end

end A110516.P11400807090417124242

namespace A110516

/-- `xor(A033999(n), A285869(n))` -/
def P11400807090417124242.Spec : Prop :=
  ∀ n, P11400807090417124242.a n = A110516 n

end A110516

/-! ## A110516.P12533510486641428076

`A033999(n)*A083219(n+1)`
-/

namespace A110516.P12533510486641428076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A083219 (n + 1)

end

end A110516.P12533510486641428076

namespace A110516

/-- `A033999(n)*A083219(n+1)` -/
def P12533510486641428076.Spec : Prop :=
  ∀ n, P12533510486641428076.a n = A110516 n

end A110516

/-! ## A110516.P8476108963088832135

`2*A110514(n)-A106249(n)`
-/

namespace A110516.P8476108963088832135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110514 n - A106249 n

end

end A110516.P8476108963088832135

namespace A110516

/-- `2*A110514(n)-A106249(n)` -/
def P8476108963088832135.Spec : Prop :=
  ∀ n, P8476108963088832135.a n = A110516 n

end A110516

/-! ## A110516.P5936819230330221716

`(1-2*A000035(n))*A083219(n+1)`
-/

namespace A110516.P5936819230330221716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A083219 (n + 1)

end

end A110516.P5936819230330221716

namespace A110516

/-- `(1-2*A000035(n))*A083219(n+1)` -/
def P5936819230330221716.Spec : Prop :=
  ∀ n, P5936819230330221716.a n = A110516 n

end A110516

/-! ## A110516.P11384944808050461491

`(1-A010873(2*n))*A083219(n+1)`
-/

namespace A110516.P11384944808050461491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010873 (2 * n)) * A083219 (n + 1)

end

end A110516.P11384944808050461491

namespace A110516

/-- `(1-A010873(2*n))*A083219(n+1)` -/
def P11384944808050461491.Spec : Prop :=
  ∀ n, P11384944808050461491.a n = A110516 n

end A110516

/-! ## A110516.P1645458363755374505

`A009001(2*n)/2*A083220(n+1)`
-/

namespace A110516.P1645458363755374505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009001 (2 * n) : ℚ) / 2 * (A083220 (n + 1) : ℚ)

end

end A110516.P1645458363755374505

namespace A110516

/-- `A009001(2*n)/2*A083220(n+1)` -/
def P1645458363755374505.Spec : Prop :=
  ∀ n, P1645458363755374505.a n = (A110516 n : ℚ)

end A110516

/-! ## A110516.P10984987220638291657

`A186422(n+1)-and(1, n)`
-/

namespace A110516.P10984987220638291657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186422 (n + 1) - (Nat.land 1 n : ℤ)

end

end A110516.P10984987220638291657

namespace A110516

/-- `A186422(n+1)-and(1, n)` -/
def P10984987220638291657.Spec : Prop :=
  ∀ n, P10984987220638291657.a n = A110516 n

end A110516

/-! ## A110516.P15207464817184101674

`A181983(A187180(n+2))`
-/

namespace A110516.P15207464817184101674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A187180 (n + 2)).toNat

end

end A110516.P15207464817184101674

namespace A110516

/-- `A181983(A187180(n+2))` -/
def P15207464817184101674.Spec : Prop :=
  ∀ n, P15207464817184101674.a n = A110516 n

end A110516

/-! ## A110516.P1590138913886256799

`Δ[A106249(n)-A110514(n)]`
-/

namespace A110516.P1590138913886256799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n - A110514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110516.P1590138913886256799

namespace A110516

/-- `Δ[A106249(n)-A110514(n)]` -/
def P1590138913886256799.Spec : Prop :=
  ∀ n, P1590138913886256799.a n = A110516 n

end A110516

/-! ## A110516.P7526162866808257999

`A186422(n+1)-A000035(n)`
-/

namespace A110516.P7526162866808257999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186422 (n + 1) - A000035 n

end

end A110516.P7526162866808257999

namespace A110516

/-- `A186422(n+1)-A000035(n)` -/
def P7526162866808257999.Spec : Prop :=
  ∀ n, P7526162866808257999.a n = A110516 n

end A110516

/-! ## A110516.P2909973631751116354

`A052938(n+1)-(A003815(n+1)+1)`
-/

namespace A110516.P2909973631751116354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (n + 1) - (A003815 (n + 1) + 1)

end

end A110516.P2909973631751116354

namespace A110516

/-- `A052938(n+1)-(A003815(n+1)+1)` -/
def P2909973631751116354.Spec : Prop :=
  ∀ n, P2909973631751116354.a n = A110516 n

end A110516

/-! ## A110516.P2157472098144674438

`(1-A010873(2*n))*A187180(n+2)`
-/

namespace A110516.P2157472098144674438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010873 (2 * n)) * A187180 (n + 2)

end

end A110516.P2157472098144674438

namespace A110516

/-- `(1-A010873(2*n))*A187180(n+2)` -/
def P2157472098144674438.Spec : Prop :=
  ∀ n, P2157472098144674438.a n = A110516 n

end A110516

/-!
# A110517: Riordan array (1,x(1-3x)).

The programs for A110517, the canonical program `A110517.P6873310724312342160` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110517 has offset 0).

The definition of A110517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110517.P7786826809808049227

`T(n-1,k-1)-3*T(n-2,k-1)` with `a(0)=1`
-/

namespace A110517.P7786826809808049227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 3 * SequenceMachineLib.triUp2Left a n

end

end A110517.P7786826809808049227

namespace A110517

/-- `T(n-1,k-1)-3*T(n-2,k-1)` -/
def P7786826809808049227.Spec : Prop :=
  ∀ n, P7786826809808049227.a n = A110517 n

end A110517

/-! ## A110517.P6873310724312342160

`(-3)^(row(n)-col(n))*C(col(n), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110517

/-- `(-3)^(row(n)-col(n))*C(col(n), row(n)-col(n))` -/
def P6873310724312342160.Spec : Prop :=
  ∀ n, P6873310724312342160.a n = (A110517 n : ℚ)

end A110517

/-! ## A110517.P16497964314366545641

`A109466(n)*A140303(n)`
-/

namespace A110517.P16497964314366545641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A140303 n

end

end A110517.P16497964314366545641

namespace A110517

/-- `A109466(n)*A140303(n)` -/
def P16497964314366545641.Spec : Prop :=
  ∀ n, P16497964314366545641.a n = A110517 n

end A110517

/-! ## A110517.P1582779424797387931

`A109466(n)*A152714(n)`
-/

namespace A110517.P1582779424797387931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A152714 n

end

end A110517.P1582779424797387931

namespace A110517

/-- `A109466(n)*A152714(n)` -/
def P1582779424797387931.Spec : Prop :=
  ∀ n, P1582779424797387931.a n = A110517 n

end A110517

/-! ## A110517.P17754134739347718899

`A000244(A004197(n))*A109466(n)`
-/

namespace A110517.P17754134739347718899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004197 n).toNat * A109466 n

end

end A110517.P17754134739347718899

namespace A110517

/-- `A000244(A004197(n))*A109466(n)` -/
def P17754134739347718899.Spec : Prop :=
  ∀ n, P17754134739347718899.a n = A110517 n

end A110517

/-! ## A110517.P15548610333135127366

`A026729(n)*A027465(n)/A130595(n)`
-/

namespace A110517.P15548610333135127366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026729 n * A027465 n : ℚ) / (A130595 n : ℚ)

end

end A110517.P15548610333135127366

namespace A110517

/-- `A026729(n)*A027465(n)/A130595(n)` -/
def P15548610333135127366.Spec : Prop :=
  ∀ n, P15548610333135127366.a n = (A110517 n : ℚ)

end A110517

/-! ## A110517.P16944012253237002244

`A110509(n)/A052509(n)*A152714(n)`
-/

namespace A110517.P16944012253237002244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A052509 n : ℚ) * (A152714 n : ℚ)

end

end A110517.P16944012253237002244

namespace A110517

/-- `A110509(n)/A052509(n)*A152714(n)` -/
def P16944012253237002244.Spec : Prop :=
  ∀ n, P16944012253237002244.a n = (A110517 n : ℚ)

end A110517

/-! ## A110517.P5107650816253714052

`A110509(n)/A130321(n)*A152714(n)`
-/

namespace A110517.P5107650816253714052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A130321 n : ℚ) * (A152714 n : ℚ)

end

end A110517.P5107650816253714052

namespace A110517

/-- `A110509(n)/A130321(n)*A152714(n)` -/
def P5107650816253714052.Spec : Prop :=
  ∀ n, P5107650816253714052.a n = (A110517 n : ℚ)

end A110517

/-! ## A110517.P17358102697613375277

`A110509(n)*A152714(n)/A209434(n)`
-/

namespace A110517.P17358102697613375277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n * A152714 n : ℚ) / (A209434 n : ℚ)

end

end A110517.P17358102697613375277

namespace A110517

/-- `A110509(n)*A152714(n)/A209434(n)` -/
def P17358102697613375277.Spec : Prop :=
  ∀ n, P17358102697613375277.a n = (A110517 n : ℚ)

end A110517

/-! ## A110517.P4224200365346337541

`A105868(n)/A130595(n)*A152714(n)`
-/

namespace A110517.P4224200365346337541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / (A130595 n : ℚ) * (A152714 n : ℚ)

end

end A110517.P4224200365346337541

namespace A110517

/-- `A105868(n)/A130595(n)*A152714(n)` -/
def P4224200365346337541.Spec : Prop :=
  ∀ n, P4224200365346337541.a n = (A110517 n : ℚ)

end A110517

/-! ## A110517.P4767391497024374564

`A110509(n)*A152714(n)/A209438(n)`
-/

namespace A110517.P4767391497024374564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n * A152714 n : ℚ) / (A209438 n : ℚ)

end

end A110517.P4767391497024374564

namespace A110517

/-- `A110509(n)*A152714(n)/A209438(n)` -/
def P4767391497024374564.Spec : Prop :=
  ∀ n, P4767391497024374564.a n = (A110517 n : ℚ)

end A110517

/-! ## A110517.P8189219876689354460

`A110509(n)*A152714(n)/A209439(n)`
-/

namespace A110517.P8189219876689354460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n * A152714 n : ℚ) / (A209439 n : ℚ)

end

end A110517.P8189219876689354460

namespace A110517

/-- `A110509(n)*A152714(n)/A209439(n)` -/
def P8189219876689354460.Spec : Prop :=
  ∀ n, P8189219876689354460.a n = (A110517 n : ℚ)

end A110517

/-! ## A110517.P13339906741715705081

`A026729(n)*A114116(n)*A152714(n)`
-/

namespace A110517.P13339906741715705081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A114116 n * A152714 n

end

end A110517.P13339906741715705081

namespace A110517

/-- `A026729(n)*A114116(n)*A152714(n)` -/
def P13339906741715705081.Spec : Prop :=
  ∀ n, P13339906741715705081.a n = A110517 n

end A110517

/-!
# A110518: Riordan array (1, x*c(3x)), c(x) the g.f. of A000108.

The programs for A110518, the canonical program `A110518.P11180625807063837773` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110518 has offset 0).

The definition of A110518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4754 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110518.P11180625807063837773

`A106566(n)*A140303(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A110518

/-- `A106566(n)*A140303(n)` -/
def P11180625807063837773.Spec : Prop :=
  ∀ n, P11180625807063837773.a n = A110518 n

theorem P11180625807063837773.correct : P11180625807063837773.Spec := by
  intro n
  simp only [A110518]

end A110518

/-! ## A110518.P12318520814240227283

`A000244(A025581(n))*A106566(n)`
-/

namespace A110518.P12318520814240227283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat * A106566 n

end

end A110518.P12318520814240227283

namespace A110518

/-- `A000244(A025581(n))*A106566(n)` -/
def P12318520814240227283.Spec : Prop :=
  ∀ n, P12318520814240227283.a n = A110518 n

end A110518

/-! ## A110518.P1104534637544383651

`A106566(n)*A108411(A099375(n))`
-/

namespace A110518.P1104534637544383651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A108411 (A099375 n).toNat

end

end A110518.P1104534637544383651

namespace A110518

/-- `A106566(n)*A108411(A099375(n))` -/
def P1104534637544383651.Spec : Prop :=
  ∀ n, P1104534637544383651.a n = A110518 n

end A110518

/-! ## A110518.P2591934078879328602

`A106566(n)*A133494(A004736(n+1))`
-/

namespace A110518.P2591934078879328602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A133494 (A004736 (n + 1)).toNat

end

end A110518.P2591934078879328602

namespace A110518

/-- `A106566(n)*A133494(A004736(n+1))` -/
def P2591934078879328602.Spec : Prop :=
  ∀ n, P2591934078879328602.a n = A110518 n

end A110518

/-! ## A110518.P10011328231554228934

`A027465(n)/A007318(n)*A106566(n)`
-/

namespace A110518.P10011328231554228934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A007318 n : ℚ) * (A106566 n : ℚ)

end

end A110518.P10011328231554228934

namespace A110518

/-- `A027465(n)/A007318(n)*A106566(n)` -/
def P10011328231554228934.Spec : Prop :=
  ∀ n, P10011328231554228934.a n = (A110518 n : ℚ)

end A110518

/-! ## A110518.P1112894412324630028

`A003959(A057728(n+1))*A106566(n)`
-/

namespace A110518.P1112894412324630028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A057728 (n + 1)).toNat * A106566 n

end

end A110518.P1112894412324630028

namespace A110518

/-- `A003959(A057728(n+1))*A106566(n)` -/
def P1112894412324630028.Spec : Prop :=
  ∀ n, P1112894412324630028.a n = A110518 n

end A110518

/-! ## A110518.P5000645429159293127

`A003959(A130321(n))*A106566(n)`
-/

namespace A110518.P5000645429159293127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A130321 n).toNat * A106566 n

end

end A110518.P5000645429159293127

namespace A110518

/-- `A003959(A130321(n))*A106566(n)` -/
def P5000645429159293127.Spec : Prop :=
  ∀ n, P5000645429159293127.a n = A110518 n

end A110518

/-! ## A110518.P8338437019398720328

`A106566(n)*A171435(A175840(n))`
-/

namespace A110518.P8338437019398720328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A171435 (A175840 n).toNat

end

end A110518.P8338437019398720328

namespace A110518

/-- `A106566(n)*A171435(A175840(n))` -/
def P8338437019398720328.Spec : Prop :=
  ∀ n, P8338437019398720328.a n = A110518 n

end A110518

/-!
# A110520: Expansion of 1/(1-2*x*c(3*x)), c(x) the g.f. of A000108.

The programs for A110520, there is no canonical definition to state claims against.
-/

/-! ## A110520.P13690080827770226934

`A094457(A000670(n+1)+1)`
-/

namespace A110520.P13690080827770226934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094457 (A000670 (n + 1) + 1).toNat

end

end A110520.P13690080827770226934

/-! ## A110520.P18425691497537834491

`A252462(A000670(n+1)+1)`
-/

namespace A110520.P18425691497537834491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252462 (A000670 (n + 1) + 1).toNat

end

end A110520.P18425691497537834491

/-!
# A110521: Expansion of 1/(1 - (x + x^2)c(3x)), c(x) the g.f. of A000108.

The programs for A110521, there is no canonical definition to state claims against.
-/

/-! ## A110521.P6080251799785632101

`A060384(∑[∑[A348793(n)]])`
-/

namespace A110521.P6080251799785632101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348793 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110521.P6080251799785632101

/-! ## A110521.P3115897398002001612

`A026430(A062817(n+1)-(n-1))`
-/

namespace A110521.P3115897398002001612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A062817 (n + 1) - ((n : ℤ) - 1)).toNat

end

end A110521.P3115897398002001612

/-!
# A110522: Riordan array (1/(1+x), x*(1-2*x)/(1+x)^2).

The programs for A110522, the canonical program `A110522.P15890071289961794776` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110522 has offset 0).

The definition of A110522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110522.P15890071289961794776

`T(n-1,k-1)-2*T(n-1,k)-T(n-2,k)-2*T(n-2,k-1)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110522

/-- `T(n-1,k-1)-2*T(n-1,k)-T(n-2,k)-2*T(n-2,k-1)` -/
def P15890071289961794776.Spec : Prop :=
  ∀ n, P15890071289961794776.a n = A110522 n

theorem P15890071289961794776.correct : P15890071289961794776.Spec := by
  intro n
  simp only [A110522]

end A110522

/-!
# A110523: Expansion of (1 + x)/(1 + x + 3*x^2).

The programs for A110523, the canonical program `A110523.P159066343953077170` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110523 has offset 0).

The definition of A110523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1+x+3x^2))` (program `A110523.P159066343953077170`, by `A110523.P159066343953077170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110523.P159066343953077170

`ogf((1+x)/(1+x+3x^2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110523

/-- `ogf((1+x)/(1+x+3x^2))` -/
def P159066343953077170.Spec : Prop :=
  ∀ n, P159066343953077170.a n = A110523 n

theorem P159066343953077170.correct : P159066343953077170.Spec := by
  intro n
  simp only [A110523]

end A110523

/-! ## A110523.P13350269027281313467

`A214733(n+1)+A214733(n)`
-/

namespace A110523.P13350269027281313467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214733 (n + 1) + A214733 n

end

end A110523.P13350269027281313467

namespace A110523

/-- `A214733(n+1)+A214733(n)` -/
def P13350269027281313467.Spec : Prop :=
  ∀ n, P13350269027281313467.a n = A110523 n

end A110523

/-! ## A110523.P6137072862891879096

`-(a(n-1)+3*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A110523.P6137072862891879096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  -(a (n - 1) + 3 * a (n - 2))

end

end A110523.P6137072862891879096

namespace A110523

/-- `-(a(n-1)+3*a(n-2))` -/
def P6137072862891879096.Spec : Prop :=
  ∀ n, P6137072862891879096.a n = A110523 n

end A110523

/-! ## A110523.P122049375994496325

`char[1]-(a(n-1)+3*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A110523.P122049375994496325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (a (n - 1) + 3 * a (n - 2))

end

end A110523.P122049375994496325

namespace A110523

/-- `char[1]-(a(n-1)+3*a(n-2))` -/
def P122049375994496325.Spec : Prop :=
  ∀ n, P122049375994496325.a n = A110523 n

end A110523

/-! ## A110523.P16773172761004863383

`3-(a(n-1)+3*(a(n-2)+1))` with `a(0)=1, a(1)=0`
-/

namespace A110523.P16773172761004863383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 - (a (n - 1) + 3 * (a (n - 2) + 1))

end

end A110523.P16773172761004863383

namespace A110523

/-- `3-(a(n-1)+3*(a(n-2)+1))` -/
def P16773172761004863383.Spec : Prop :=
  ∀ n, P16773172761004863383.a n = A110523 n

end A110523

/-! ## A110523.P12236618388375344266

`3*(1-a(n-2))-3-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A110523.P12236618388375344266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 * (1 - a (n - 2)) - 3 - a (n - 1)

end

end A110523.P12236618388375344266

namespace A110523

/-- `3*(1-a(n-2))-3-a(n-1)` -/
def P12236618388375344266.Spec : Prop :=
  ∀ n, P12236618388375344266.a n = A110523 n

end A110523

/-! ## A110523.P2966236660922273173

`a(n-2)/(2/3-1)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A110523.P2966236660922273173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) / ((2 : ℚ) / 3 - 1) - a (n - 1)

end

end A110523.P2966236660922273173

namespace A110523

/-- `a(n-2)/(2/3-1)-a(n-1)` -/
def P2966236660922273173.Spec : Prop :=
  ∀ n, P2966236660922273173.a n = (A110523 n : ℚ)

end A110523

/-!
# A110524: Expansion of (1 + x)/(1 + 2*x + 2*x^3).

The programs for A110524, the canonical program `A110524.P7807636314857428344` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110524 has offset 0).

The definition of A110524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1+2x+2x^3))` (program `A110524.P7807636314857428344`, by `A110524.P7807636314857428344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110524.P7807636314857428344

`ogf((1+x)/(1+2x+2x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110524

/-- `ogf((1+x)/(1+2x+2x^3))` -/
def P7807636314857428344.Spec : Prop :=
  ∀ n, P7807636314857428344.a n = A110524 n

theorem P7807636314857428344.correct : P7807636314857428344.Spec := by
  intro n
  simp only [A110524]

end A110524

/-! ## A110524.P7895477528921907047

`(-1)^n*A077999(n)`
-/

namespace A110524.P7895477528921907047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077999 n

end

end A110524.P7895477528921907047

namespace A110524

/-- `(-1)^n*A077999(n)` -/
def P7895477528921907047.Spec : Prop :=
  ∀ n, P7895477528921907047.a n = A110524 n

end A110524

/-! ## A110524.P7944095551357604164

`A077999(n)/A033999(n+2)`
-/

namespace A110524.P7944095551357604164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077999 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A110524.P7944095551357604164

namespace A110524

/-- `A077999(n)/A033999(n+2)` -/
def P7944095551357604164.Spec : Prop :=
  ∀ n, P7944095551357604164.a n = (A110524 n : ℚ)

end A110524

/-! ## A110524.P10022962730354009011

`∑[2*A078062(n)]-A078062(n)`
-/

namespace A110524.P10022962730354009011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078062 n

end

end A110524.P10022962730354009011

namespace A110524

/-- `∑[2*A078062(n)]-A078062(n)` -/
def P10022962730354009011.Spec : Prop :=
  ∀ n, P10022962730354009011.a n = A110524 n

end A110524

/-! ## A110524.P7692474536077261110

`A077999(n)*A110522(A000217(n))`
-/

namespace A110524.P7692474536077261110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077999 n * A110522 (A000217 n).toNat

end

end A110524.P7692474536077261110

namespace A110524

/-- `A077999(n)*A110522(A000217(n))` -/
def P7692474536077261110.Spec : Prop :=
  ∀ n, P7692474536077261110.a n = A110524 n

end A110524

/-!
# A110525: Expansion of 1/(1-x^2*c(3x)), c(x) the g.f. A000108.

The programs for A110525, there is no canonical definition to state claims against.
-/

/-! ## A110525.P15694950087789100942

`A202047(a(n-1)+2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A110525.P15694950087789100942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A202047 (a (n - 1) + 2).toNat

end

end A110525.P15694950087789100942

/-! ## A110525.P2125844484926503269

`A286558((a(floor(n/2))+n)!)` with `a(0)=1, a(1)=0`
-/

namespace A110525.P2125844484926503269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A286558 (Nat.factorial (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat)

end

end A110525.P2125844484926503269

/-!
# A110526: a(n+3) = 3*a(n+2) + 5*a(n+1) + a(n), a(0) = 0, a(1) = 1, a(2) = 3.

The programs for A110526, the canonical program `A110526.P13812431256276837567` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110526 has offset 0).

The definition of A110526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110526.P7572090439541006099

`ogf(x/(1-3x-5x^2-x^3))`
-/

namespace A110526.P7572090439541006099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -5, -1] n

end

end A110526.P7572090439541006099

namespace A110526

/-- `ogf(x/(1-3x-5x^2-x^3))` -/
def P7572090439541006099.Spec : Prop :=
  ∀ n, P7572090439541006099.a n = A110526 n

end A110526

/-! ## A110526.P13812431256276837567

`(A000045(3*n+1)-(-1)^n)/4`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110526

/-- `(A000045(3*n+1)-(-1)^n)/4` -/
def P13812431256276837567.Spec : Prop :=
  ∀ n, P13812431256276837567.a n = (A110526 n : ℚ)

end A110526

/-! ## A110526.P11505210651505819374

`floor(A232970(n)/2)`
-/

namespace A110526.P11505210651505819374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232970 n : ℚ) / 2⌋

end

end A110526.P11505210651505819374

namespace A110526

/-- `floor(A232970(n)/2)` -/
def P11505210651505819374.Spec : Prop :=
  ∀ n, P11505210651505819374.a n = A110526 n

end A110526

/-! ## A110526.P8818521842210978720

`ceil(A049651(n)/2)`
-/

namespace A110526.P8818521842210978720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049651 n : ℚ) / 2⌉

end

end A110526.P8818521842210978720

namespace A110526

/-- `ceil(A049651(n)/2)` -/
def P8818521842210978720.Spec : Prop :=
  ∀ n, P8818521842210978720.a n = A110526 n

end A110526

/-! ## A110526.P3687768557033378567

`round(A049652(n)/ϕ)`
-/

namespace A110526.P3687768557033378567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049652 n : ℝ) / Real.goldenRatio)

end

end A110526.P3687768557033378567

namespace A110526

/-- `round(A049652(n)/ϕ)` -/
def P3687768557033378567.Spec : Prop :=
  ∀ n, P3687768557033378567.a n = A110526 n

end A110526

/-! ## A110526.P893886926112042159

`A293553(3*n+1)`
-/

namespace A110526.P893886926112042159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (3 * n + 1)

end

end A110526.P893886926112042159

namespace A110526

/-- `A293553(3*n+1)` -/
def P893886926112042159.Spec : Prop :=
  ∀ n, P893886926112042159.a n = A110526 n

end A110526

/-! ## A110526.P6027447433997315268

`floor(∑[A015448(n)/2])`
-/

namespace A110526.P6027447433997315268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015448 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A110526.P6027447433997315268

namespace A110526

/-- `floor(∑[A015448(n)/2])` -/
def P6027447433997315268.Spec : Prop :=
  ∀ n, P6027447433997315268.a n = A110526 n

end A110526

/-! ## A110526.P11748880548025247938

`∑[A293014(3*n+1)]`
-/

namespace A110526.P11748880548025247938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110526.P11748880548025247938

namespace A110526

/-- `∑[A293014(3*n+1)]` -/
def P11748880548025247938.Spec : Prop :=
  ∀ n, P11748880548025247938.a n = A110526 n

end A110526

/-! ## A110526.P11922223762705305550

`Δ[A004697(3*n)/2]`
-/

namespace A110526.P11922223762705305550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004697 (3 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110526.P11922223762705305550

namespace A110526

/-- `Δ[A004697(3*n)/2]` -/
def P11922223762705305550.Spec : Prop :=
  ∀ n, P11922223762705305550.a n = (A110526 n : ℚ)

end A110526

/-! ## A110526.P14394773891800192672

`Δ[A293553(3*n)/2]`
-/

namespace A110526.P14394773891800192672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293553 (3 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110526.P14394773891800192672

namespace A110526

/-- `Δ[A293553(3*n)/2]` -/
def P14394773891800192672.Spec : Prop :=
  ∀ n, P14394773891800192672.a n = (A110526 n : ℚ)

end A110526

/-! ## A110526.P108983534975959982

`A293014(3*(n+1))/2`
-/

namespace A110526.P108983534975959982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293014 (3 * (n + 1)) : ℚ) / 2

end

end A110526.P108983534975959982

namespace A110526

/-- `A293014(3*(n+1))/2` -/
def P108983534975959982.Spec : Prop :=
  ∀ n, P108983534975959982.a n = (A110526 n : ℚ)

end A110526

/-! ## A110526.P3388927903749501688

`A001076(n)-a(n-1)` with `a(0)=0`
-/

namespace A110526.P3388927903749501688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001076 n - a (n - 1)

end

end A110526.P3388927903749501688

namespace A110526

/-- `A001076(n)-a(n-1)` -/
def P3388927903749501688.Spec : Prop :=
  ∀ n, P3388927903749501688.a n = A110526 n

end A110526

/-! ## A110526.P11330183120147550785

`∑[abs(1-A106511(3*n))]`
-/

namespace A110526.P11330183120147550785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A106511 (3 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110526.P11330183120147550785

namespace A110526

/-- `∑[abs(1-A106511(3*n))]` -/
def P11330183120147550785.Spec : Prop :=
  ∀ n, P11330183120147550785.a n = A110526 n

end A110526

/-! ## A110526.P6863370244088757267

`∑[abs(A119282(3*n)/2)]`
-/

namespace A110526.P6863370244088757267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A119282 (3 * n) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110526.P6863370244088757267

namespace A110526

/-- `∑[abs(A119282(3*n)/2)]` -/
def P6863370244088757267.Spec : Prop :=
  ∀ n, P6863370244088757267.a n = (A110526 n : ℚ)

end A110526

/-! ## A110526.P16473988447886204126

`floor(A147997(3*n+1)/2)`
-/

namespace A110526.P16473988447886204126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147997 (3 * n + 1) : ℚ) / 2⌋

end

end A110526.P16473988447886204126

namespace A110526

/-- `floor(A147997(3*n+1)/2)` -/
def P16473988447886204126.Spec : Prop :=
  ∀ n, P16473988447886204126.a n = A110526 n

end A110526

/-! ## A110526.P3892215020596740805

`a(n-1)+A110679(n-1)` with `a(0)=0`
-/

namespace A110526.P3892215020596740805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A110679 (n - 1)

end

end A110526.P3892215020596740805

namespace A110526

/-- `a(n-1)+A110679(n-1)` -/
def P3892215020596740805.Spec : Prop :=
  ∀ n, P3892215020596740805.a n = A110526 n

end A110526

/-! ## A110526.P6563957042831302879

`A059973(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A110526.P6563957042831302879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059973 (2 * n) - a (n - 1)

end

end A110526.P6563957042831302879

namespace A110526

/-- `A059973(2*n)-a(n-1)` -/
def P6563957042831302879.Spec : Prop :=
  ∀ n, P6563957042831302879.a n = A110526 n

end A110526

/-! ## A110526.P5038849682233755838

`A167808(3*n)-a(n-1)` with `a(0)=0`
-/

namespace A110526.P5038849682233755838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A167808 (3 * n) - a (n - 1)

end

end A110526.P5038849682233755838

namespace A110526

/-- `A167808(3*n)-a(n-1)` -/
def P5038849682233755838.Spec : Prop :=
  ∀ n, P5038849682233755838.a n = A110526 n

end A110526

/-! ## A110526.P12524422592102957380

`A000045(3*n)/2-a(n-1)` with `a(0)=0`
-/

namespace A110526.P12524422592102957380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A000045 (3 * n) : ℚ) / 2 - a (n - 1)

end

end A110526.P12524422592102957380

namespace A110526

/-- `A000045(3*n)/2-a(n-1)` -/
def P12524422592102957380.Spec : Prop :=
  ∀ n, P12524422592102957380.a n = (A110526 n : ℚ)

end A110526

/-! ## A110526.P10034503198630451483

`A000045(2*n+n-2)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A110526.P10034503198630451483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 ((2 * n : ℤ) + ((n : ℤ) - 2)).toNat + a (n - 2)

end

end A110526.P10034503198630451483

namespace A110526

/-- `A000045(2*n+n-2)+a(n-2)` -/
def P10034503198630451483.Spec : Prop :=
  ∀ n, P10034503198630451483.a n = A110526 n

end A110526

/-!
# A110527: a(n+3) = 3*a(n+2) + 5*a(n+1) + a(n), a(0) = 0, a(1) = 1, a(2) = 8.

The programs for A110527, the canonical program `A110527.P11308464237832908582` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110527 has offset 0).

The definition of A110527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110527.P14492026869338591638

`ogf((x+5x^2)/(1-3x-5x^2-x^3))`
-/

namespace A110527.P14492026869338591638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5] [1, -3, -5, -1] n

end

end A110527.P14492026869338591638

namespace A110527

/-- `ogf((x+5x^2)/(1-3x-5x^2-x^3))` -/
def P14492026869338591638.Spec : Prop :=
  ∀ n, P14492026869338591638.a n = A110527 n

end A110527

/-! ## A110527.P11308464237832908582

`(-1)^n+3*A001076(n)-A015448(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110527

/-- `(-1)^n+3*A001076(n)-A015448(n)` -/
def P11308464237832908582.Spec : Prop :=
  ∀ n, P11308464237832908582.a n = A110527 n

theorem P11308464237832908582.correct : P11308464237832908582.Spec := by
  intro n
  simp only [A110527]

end A110527

/-! ## A110527.P9112022780307954380

`a(n-2)-2*2*xor(1, -a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A110527.P9112022780307954380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 2 * (2 * Int.xor 1 (-a (n - 1)))

end

end A110527.P9112022780307954380

namespace A110527

/-- `a(n-2)-2*2*xor(1, -a(n-1))` -/
def P9112022780307954380.Spec : Prop :=
  ∀ n, P9112022780307954380.a n = A110527 n

end A110527

/-! ## A110527.P16668937669778772364

`A001076(n)+A140413(n)-A015448(n)`
-/

namespace A110527.P16668937669778772364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n + (A140413 n - A015448 n)

end

end A110527.P16668937669778772364

namespace A110527

/-- `A001076(n)+A140413(n)-A015448(n)` -/
def P16668937669778772364.Spec : Prop :=
  ∀ n, P16668937669778772364.a n = A110527 n

end A110527

/-! ## A110527.P11988715673537849934

`A097133(3*n)-A020695(3*n)/2`
-/

namespace A110527.P11988715673537849934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097133 (3 * n) : ℚ) - (A020695 (3 * n) : ℚ) / 2

end

end A110527.P11988715673537849934

namespace A110527

/-- `A097133(3*n)-A020695(3*n)/2` -/
def P11988715673537849934.Spec : Prop :=
  ∀ n, P11988715673537849934.a n = (A110527 n : ℚ)

end A110527

/-! ## A110527.P11378398718744892035

`A181716(3*n)-A000045(3*n)/2`
-/

namespace A110527.P11378398718744892035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181716 (3 * n) : ℚ) - (A000045 (3 * n) : ℚ) / 2

end

end A110527.P11378398718744892035

namespace A110527

/-- `A181716(3*n)-A000045(3*n)/2` -/
def P11378398718744892035.Spec : Prop :=
  ∀ n, P11378398718744892035.a n = (A110527 n : ℚ)

end A110527

/-! ## A110527.P8088891885341108243

`A020695(3*n)/2-A066983(3*n+1)`
-/

namespace A110527.P8088891885341108243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020695 (3 * n) : ℚ) / 2 - (A066983 (3 * n + 1) : ℚ)

end

end A110527.P8088891885341108243

namespace A110527

/-- `A020695(3*n)/2-A066983(3*n+1)` -/
def P8088891885341108243.Spec : Prop :=
  ∀ n, P8088891885341108243.a n = (A110527 n : ℚ)

end A110527

/-! ## A110527.P14060784130564893553

`A001077(n+1)-2*A102129(n)`
-/

namespace A110527.P14060784130564893553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (n + 1) - 2 * A102129 n

end

end A110527.P14060784130564893553

namespace A110527

/-- `A001077(n+1)-2*A102129(n)` -/
def P14060784130564893553.Spec : Prop :=
  ∀ n, P14060784130564893553.a n = A110527 n

end A110527

/-!
# A110528: a(n+3) = 3*a(n+2) + 5*a(n+1) + a(n), a(0) = 1, a(1) = 10, a(2) = 37.

The programs for A110528, the canonical program `A110528.P118056775620788616` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110528 has offset 0).

The definition of A110528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110528.P17303283158901900285

`ogf((1+7x+2x^2)/(1-3x-5x^2-x^3))`
-/

namespace A110528.P17303283158901900285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 2] [1, -3, -5, -1] n

end

end A110528.P17303283158901900285

namespace A110528

/-- `ogf((1+7x+2x^2)/(1-3x-5x^2-x^3))` -/
def P17303283158901900285.Spec : Prop :=
  ∀ n, P17303283158901900285.a n = A110528 n

end A110528

/-! ## A110528.P118056775620788616

`A001077(n+1)-(-1)^n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110528

/-- `A001077(n+1)-(-1)^n` -/
def P118056775620788616.Spec : Prop :=
  ∀ n, P118056775620788616.a n = A110528 n

theorem P118056775620788616.correct : P118056775620788616.Spec := by
  intro n
  simp only [A110528]

end A110528

/-! ## A110528.P15491644183461312482

`xor(3, A001077(n+1))`
-/

namespace A110528.P15491644183461312482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A001077 (n + 1))

end

end A110528.P15491644183461312482

namespace A110528

/-- `xor(3, A001077(n+1))` -/
def P15491644183461312482.Spec : Prop :=
  ∀ n, P15491644183461312482.a n = A110528 n

end A110528

/-! ## A110528.P141703726568353834

`A199935(3*(n+1))+1`
-/

namespace A110528.P141703726568353834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199935 (3 * (n + 1)) + 1

end

end A110528.P141703726568353834

namespace A110528

/-- `A199935(3*(n+1))+1` -/
def P141703726568353834.Spec : Prop :=
  ∀ n, P141703726568353834.a n = A110528 n

end A110528

/-! ## A110528.P17276284459831065048

`A007039(3*(n+1))/2`
-/

namespace A110528.P17276284459831065048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007039 (3 * (n + 1)) : ℚ) / 2

end

end A110528.P17276284459831065048

namespace A110528

/-- `A007039(3*(n+1))/2` -/
def P17276284459831065048.Spec : Prop :=
  ∀ n, P17276284459831065048.a n = (A110528 n : ℚ)

end A110528

/-! ## A110528.P14292222897330587807

`xor(A014448(n+1)/2, 3)`
-/

namespace A110528.P14292222897330587807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A014448 (n + 1) : ℚ) / 2)) 3

end

end A110528.P14292222897330587807

namespace A110528

/-- `xor(A014448(n+1)/2, 3)` -/
def P14292222897330587807.Spec : Prop :=
  ∀ n, P14292222897330587807.a n = A110528 n

end A110528

/-! ## A110528.P11312397784787689525

`A163063(n)-a(n-1)` with `a(0)=1`
-/

namespace A110528.P11312397784787689525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163063 n - a (n - 1)

end

end A110528.P11312397784787689525

namespace A110528

/-- `A163063(n)-a(n-1)` -/
def P11312397784787689525.Spec : Prop :=
  ∀ n, P11312397784787689525.a n = A110528 n

end A110528

/-! ## A110528.P2230745963331760721

`∑[abs(2-A075193(3*n))]`
-/

namespace A110528.P2230745963331760721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A075193 (3 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110528.P2230745963331760721

namespace A110528

/-- `∑[abs(2-A075193(3*n))]` -/
def P2230745963331760721.Spec : Prop :=
  ∀ n, P2230745963331760721.a n = A110528 n

end A110528

/-! ## A110528.P11870502120935411946

`xor(3, A000032(3*(n+1))/2)`
-/

namespace A110528.P11870502120935411946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (SequenceMachineLib.roundAway ((A000032 (3 * (n + 1)) : ℚ) / 2))

end

end A110528.P11870502120935411946

namespace A110528

/-- `xor(3, A000032(3*(n+1))/2)` -/
def P11870502120935411946.Spec : Prop :=
  ∀ n, P11870502120935411946.a n = A110528 n

end A110528

/-! ## A110528.P18367912375145544690

`xor(1, ∑[A000032(3*n+1)])+1`
-/

namespace A110528.P18367912375145544690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A110528.P18367912375145544690

namespace A110528

/-- `xor(1, ∑[A000032(3*n+1)])+1` -/
def P18367912375145544690.Spec : Prop :=
  ∀ n, P18367912375145544690.a n = A110528 n

end A110528

/-! ## A110528.P16592064692018981901

`xor(3, ∑[A000204(3*n+1)]+1)`
-/

namespace A110528.P16592064692018981901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A110528.P16592064692018981901

namespace A110528

/-- `xor(3, ∑[A000204(3*n+1)]+1)` -/
def P16592064692018981901.Spec : Prop :=
  ∀ n, P16592064692018981901.a n = A110528 n

end A110528

/-! ## A110528.P9735409619312132601

`A000032(3*n+2)-a(n-1)` with `a(0)=1`
-/

namespace A110528.P9735409619312132601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (3 * n + 2) - a (n - 1)

end

end A110528.P9735409619312132601

namespace A110528

/-- `A000032(3*n+2)-a(n-1)` -/
def P9735409619312132601.Spec : Prop :=
  ∀ n, P9735409619312132601.a n = A110528 n

end A110528

/-! ## A110528.P10515981995062336435

`∑[A000032(2*n+1+n)]+2*and(1, n)`
-/

namespace A110528.P10515981995062336435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * Nat.land 1 n : ℤ)

end

end A110528.P10515981995062336435

namespace A110528

/-- `∑[A000032(2*n+1+n)]+2*and(1, n)` -/
def P10515981995062336435.Spec : Prop :=
  ∀ n, P10515981995062336435.a n = A110528 n

end A110528

/-! ## A110528.P1557992599655238138

`A110527(n+1)+A014445(n)`
-/

namespace A110528.P1557992599655238138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110527 (n + 1) + A014445 n

end

end A110528.P1557992599655238138

namespace A110528

/-- `A110527(n+1)+A014445(n)` -/
def P1557992599655238138.Spec : Prop :=
  ∀ n, P1557992599655238138.a n = A110528 n

end A110528

/-! ## A110528.P4596902070047728174

`A140413(n+1)+A001076(n)`
-/

namespace A110528.P4596902070047728174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140413 (n + 1) + A001076 n

end

end A110528.P4596902070047728174

namespace A110528

/-- `A140413(n+1)+A001076(n)` -/
def P4596902070047728174.Spec : Prop :=
  ∀ n, P4596902070047728174.a n = A110528 n

end A110528

/-! ## A110528.P8444119314198031407

`A110679(n+1)-A294262(n)`
-/

namespace A110528.P8444119314198031407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110679 (n + 1) - A294262 n

end

end A110528.P8444119314198031407

namespace A110528

/-- `A110679(n+1)-A294262(n)` -/
def P8444119314198031407.Spec : Prop :=
  ∀ n, P8444119314198031407.a n = A110528 n

end A110528

/-! ## A110528.P1976344712124982319

`Δ[A110679(n)]+A014445(n)/2`
-/

namespace A110528.P1976344712124982319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110679 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A014445 n : ℚ) / 2

end

end A110528.P1976344712124982319

namespace A110528

/-- `Δ[A110679(n)]+A014445(n)/2` -/
def P1976344712124982319.Spec : Prop :=
  ∀ n, P1976344712124982319.a n = (A110528 n : ℚ)

end A110528

/-! ## A110528.P2762212364394083589

`A110527(n+1)+2*A001076(n)`
-/

namespace A110528.P2762212364394083589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110527 (n + 1) + 2 * A001076 n

end

end A110528.P2762212364394083589

namespace A110528

/-- `A110527(n+1)+2*A001076(n)` -/
def P2762212364394083589.Spec : Prop :=
  ∀ n, P2762212364394083589.a n = A110528 n

end A110528

/-! ## A110528.P16432357414049353384

`A117647(2*n)+A110527(n+1)`
-/

namespace A110528.P16432357414049353384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (2 * n) + A110527 (n + 1)

end

end A110528.P16432357414049353384

namespace A110528

/-- `A117647(2*n)+A110527(n+1)` -/
def P16432357414049353384.Spec : Prop :=
  ∀ n, P16432357414049353384.a n = A110528 n

end A110528

/-! ## A110528.P7372580820171577526

`A110527(n+1)+A033887(n)-A015448(n)`
-/

namespace A110528.P7372580820171577526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110527 (n + 1) + (A033887 n - A015448 n)

end

end A110528.P7372580820171577526

namespace A110528

/-- `A110527(n+1)+A033887(n)-A015448(n)` -/
def P7372580820171577526.Spec : Prop :=
  ∀ n, P7372580820171577526.a n = A110528 n

end A110528

/-!
# A110529: Numbers n such that n in ternary representation (A007089) has a block of exactly a prime number of consecutive zeros.

The programs for A110529, there is no canonical definition to state claims against.
-/

/-! ## A110529.P15148720987950311716

`lt[1, A330168(A171960(A117966(n)+n))%4]`
-/

namespace A110529.P15148720987950311716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330168 (A171960 (A117966 n + (n : ℤ)).toNat).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110529.P15148720987950311716

/-! ## A110529.P6577546123229574208

`lt[1, A330168(A171960(n)-A117966(n))%4]`
-/

namespace A110529.P6577546123229574208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330168 (A171960 n - A117966 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110529.P6577546123229574208

/-! ## A110529.P15641072312754387761

`lt[tan(A330166(n)), 0]`
-/

namespace A110529.P15641072312754387761
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A330166 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A110529.P15641072312754387761

/-! ## A110529.P8940527567477430414

`lt[1, and(A130130(n), A330166(n))]`
-/

namespace A110529.P8940527567477430414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130130 n) (A330166 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110529.P8940527567477430414

/-! ## A110529.P5024911824622968119

`lt[A000038(n), and(2, A330166(n))]`
-/

namespace A110529.P5024911824622968119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A330166 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110529.P5024911824622968119

/-!
# A110530: Recurrence: a(n) = Sum_{k=0..n-1} C(2*n-2,n-k-1)*a(k) with a(0)=1.

The programs for A110530, there is no canonical definition to state claims against.
-/

/-! ## A110530.P11983193179366843091

`A120750(A064062(n))`
-/

namespace A110530.P11983193179366843091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A064062 n).toNat

end

end A110530.P11983193179366843091

/-! ## A110530.P13043237521185183372

`A120750(A110506(∑[n]))`
-/

namespace A110530.P13043237521185183372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A110506 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A110530.P13043237521185183372

/-!
# A110531: Recurrence: a(n) = Sum_{k=0..n-1} C(2*n-1,n-k-1)*a(k) with a(0)=1.

The programs for A110531, there is no canonical definition to state claims against.
-/

/-! ## A110531.P17684042452711134395

`A262978(∑{d}[n!, #])`
-/

namespace A110531.P17684042452711134395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262978 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A110531.P17684042452711134395

/-! ## A110531.P2119999756655109128

`A262978(A000203(n!))`
-/

namespace A110531.P2119999756655109128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262978 (A000203 (Nat.factorial n)).toNat

end

end A110531.P2119999756655109128

/-!
# A110532: a(n) = floor(n/2) + floor(n/5).

The programs for A110532, the canonical program `A110532.P9765480777064847278` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110532 has offset 0).

The definition of A110532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)+floor(n/5)` (program `A110532.P9765480777064847278`, by `A110532.P9765480777064847278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110532.P9765480777064847278

`floor(n/2)+floor(n/5)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110532

/-- `floor(n/2)+floor(n/5)` -/
def P9765480777064847278.Spec : Prop :=
  ∀ n, P9765480777064847278.a n = A110532 n

theorem P9765480777064847278.correct : P9765480777064847278.Spec := by
  intro n
  simp only [A110532]

end A110532

/-! ## A110532.P3376357815321833641

`ogf((x^2+x^3+x^4+2x^5+2x^6)/(1-x^2-x^5+x^7))`
-/

namespace A110532.P3376357815321833641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1, 1, 2, 2] [1, 0, -1, 0, 0, -1, 0, 1] n

end

end A110532.P3376357815321833641

namespace A110532

/-- `ogf((x^2+x^3+x^4+2x^5+2x^6)/(1-x^2-x^5+x^7))` -/
def P3376357815321833641.Spec : Prop :=
  ∀ n, P3376357815321833641.a n = A110532 n

end A110532

/-! ## A110532.P11411763575937908393

`(A052928(n)+A052928(A057354(n)))/2`
-/

namespace A110532.P11411763575937908393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052928 n + A052928 (A057354 n).toNat : ℚ) / 2

end

end A110532.P11411763575937908393

namespace A110532

/-- `(A052928(n)+A052928(A057354(n)))/2` -/
def P11411763575937908393.Spec : Prop :=
  ∀ n, P11411763575937908393.a n = (A110532 n : ℚ)

end A110532

/-! ## A110532.P742867454176441892

`A004526(A047337(n+1))`
-/

namespace A110532.P742867454176441892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047337 (n + 1)).toNat

end

end A110532.P742867454176441892

namespace A110532

/-- `A004526(A047337(n+1))` -/
def P742867454176441892.Spec : Prop :=
  ∀ n, P742867454176441892.a n = A110532 n

end A110532

/-! ## A110532.P2067728689312510325

`A004526(A130496(n)+n)`
-/

namespace A110532.P2067728689312510325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130496 n + (n : ℤ)).toNat

end

end A110532.P2067728689312510325

namespace A110532

/-- `A004526(A130496(n)+n)` -/
def P2067728689312510325.Spec : Prop :=
  ∀ n, P2067728689312510325.a n = A110532 n

end A110532

/-! ## A110532.P15461853461400114462

`A140106(A047305(n+1))`
-/

namespace A110532.P15461853461400114462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A047305 (n + 1)).toNat

end

end A110532.P15461853461400114462

namespace A110532

/-- `A140106(A047305(n+1))` -/
def P15461853461400114462.Spec : Prop :=
  ∀ n, P15461853461400114462.a n = A110532 n

end A110532

/-! ## A110532.P3550898538286930367

`A002266(A047274(n+1))`
-/

namespace A110532.P3550898538286930367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A047274 (n + 1)).toNat

end

end A110532.P3550898538286930367

namespace A110532

/-- `A002266(A047274(n+1))` -/
def P3550898538286930367.Spec : Prop :=
  ∀ n, P3550898538286930367.a n = A110532 n

end A110532

/-! ## A110532.P3147611825335855032

`A059995(A147832(n+1))`
-/

namespace A110532.P3147611825335855032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A147832 (n + 1)).toNat

end

end A110532.P3147611825335855032

namespace A110532

/-- `A059995(A147832(n+1))` -/
def P3147611825335855032.Spec : Prop :=
  ∀ n, P3147611825335855032.a n = A110532 n

end A110532

/-!
# A110533: a(n) = floor(n/2) * floor(n/5).

The programs for A110533, the canonical program `A110533.P2305926350996208452` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110533 has offset 0).

The definition of A110533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)*floor(n/5)` (program `A110533.P2305926350996208452`, by `A110533.P2305926350996208452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110533.P2305926350996208452

`floor(n/2)*floor(n/5)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110533

/-- `floor(n/2)*floor(n/5)` -/
def P2305926350996208452.Spec : Prop :=
  ∀ n, P2305926350996208452.a n = A110533 n

theorem P2305926350996208452.correct : P2305926350996208452.Spec := by
  intro n
  simp only [A110533]

end A110533

/-! ## A110533.P2610729564788655506

`abs((1-A008619(n))*A002266(n))`
-/

namespace A110533.P2610729564788655506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A008619 n) * A002266 n|

end

end A110533.P2610729564788655506

namespace A110533

/-- `abs((1-A008619(n))*A002266(n))` -/
def P2610729564788655506.Spec : Prop :=
  ∀ n, P2610729564788655506.a n = A110533 n

end A110533

/-! ## A110533.P7450406226866083486

`abs((n-A110654(n))*A002266(n))`
-/

namespace A110533.P7450406226866083486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - A110654 n) * A002266 n|

end

end A110533.P7450406226866083486

namespace A110533

/-- `abs((n-A110654(n))*A002266(n))` -/
def P7450406226866083486.Spec : Prop :=
  ∀ n, P7450406226866083486.a n = A110533 n

end A110533

/-! ## A110533.P16667244997733765079

`∏{p}[A020714(A000120(n)), floor(n/#)]`
-/

namespace A110533.P16667244997733765079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋

end

end A110533.P16667244997733765079

namespace A110533

/-- `∏{p}[A020714(A000120(n)), floor(n/#)]` -/
def P16667244997733765079.Spec : Prop :=
  ∀ n, P16667244997733765079.a n = A110533 n

end A110533

/-! ## A110533.P2079529338191880520

`∏{p}[A020714(A035218(n+1)), floor(n/#)]`
-/

namespace A110533.P2079529338191880520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (A035218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋

end

end A110533.P2079529338191880520

namespace A110533

/-- `∏{p}[A020714(A035218(n+1)), floor(n/#)]` -/
def P2079529338191880520.Spec : Prop :=
  ∀ n, P2079529338191880520.a n = A110533 n

end A110533

/-! ## A110533.P3407957823017635684

`∏{p}[A020714(A067029(n+1)), floor(n/#)]`
-/

namespace A110533.P3407957823017635684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (A067029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋

end

end A110533.P3407957823017635684

namespace A110533

/-- `∏{p}[A020714(A067029(n+1)), floor(n/#)]` -/
def P3407957823017635684.Spec : Prop :=
  ∀ n, P3407957823017635684.a n = A110533 n

end A110533

/-! ## A110533.P6117224576959888086

`(A002266(n)*A004526(n))%A000124(n)`
-/

namespace A110533.P6117224576959888086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002266 n * A004526 n) (A000124 n)

end

end A110533.P6117224576959888086

namespace A110533

/-- `(A002266(n)*A004526(n))%A000124(n)` -/
def P6117224576959888086.Spec : Prop :=
  ∀ n, P6117224576959888086.a n = A110533 n

end A110533

/-! ## A110533.P14359700256187842610

`A142150(2*n+1)+A002266(n)*A004526(n)`
-/

namespace A110533.P14359700256187842610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1) + A002266 n * A004526 n

end

end A110533.P14359700256187842610

namespace A110533

/-- `A142150(2*n+1)+A002266(n)*A004526(n)` -/
def P14359700256187842610.Spec : Prop :=
  ∀ n, P14359700256187842610.a n = A110533 n

end A110533

/-! ## A110533.P5029198691627922709

`A008619(n)*A059995(2*n)-A059995(2*n)`
-/

namespace A110533.P5029198691627922709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A059995 (2 * n) - A059995 (2 * n)

end

end A110533.P5029198691627922709

namespace A110533

/-- `A008619(n)*A059995(2*n)-A059995(2*n)` -/
def P5029198691627922709.Spec : Prop :=
  ∀ n, P5029198691627922709.a n = A110533 n

theorem P5029198691627922709.correct : P5029198691627922709.Spec := by
  intro n
  simp only [A110533, Nat.add_sub_cancel, A110533.P5029198691627922709.a, A110533.P2305926350996208452.a, A008619, A008619.P16053834178911111118.a, A059995, A059995.P135539884652528526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110533

/-! ## A110533.P14414876117984906540

`∏{p}[A020714(A055076(n+1)), floor(n/#)]`
-/

namespace A110533.P14414876117984906540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (A055076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋

end

end A110533.P14414876117984906540

namespace A110533

/-- `∏{p}[A020714(A055076(n+1)), floor(n/#)]` -/
def P14414876117984906540.Spec : Prop :=
  ∀ n, P14414876117984906540.a n = A110533 n

end A110533

/-! ## A110533.P1199739965238523765

`∏{p}[A020714(A053827(n)), floor(n/#)]`
-/

namespace A110533.P1199739965238523765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (A053827 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋

end

end A110533.P1199739965238523765

namespace A110533

/-- `∏{p}[A020714(A053827(n)), floor(n/#)]` -/
def P1199739965238523765.Spec : Prop :=
  ∀ n, P1199739965238523765.a n = A110533 n

end A110533

/-! ## A110533.P7572353300493462699

`∏{p}[A020714(A032741(n)), floor(n/#)]`
-/

namespace A110533.P7572353300493462699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (A032741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋

end

end A110533.P7572353300493462699

namespace A110533

/-- `∏{p}[A020714(A032741(n)), floor(n/#)]` -/
def P7572353300493462699.Spec : Prop :=
  ∀ n, P7572353300493462699.a n = A110533 n

end A110533

/-! ## A110533.P15108600066332368473

`A004526(floor(n/5)*A052928(n))`
-/

namespace A110533.P15108600066332368473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌊(n : ℚ) / 5⌋ * A052928 n).toNat

end

end A110533.P15108600066332368473

namespace A110533

/-- `A004526(floor(n/5)*A052928(n))` -/
def P15108600066332368473.Spec : Prop :=
  ∀ n, P15108600066332368473.a n = A110533 n

end A110533

/-! ## A110533.P9390206622160886710

`A026741((n-n%2)*A002266(n))`
-/

namespace A110533.P9390206622160886710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (((n : ℤ) - ((n % 2 : ℕ) : ℤ)) * A002266 n).toNat

end

end A110533.P9390206622160886710

namespace A110533

/-- `A026741((n-n%2)*A002266(n))` -/
def P9390206622160886710.Spec : Prop :=
  ∀ n, P9390206622160886710.a n = A110533 n

end A110533

/-! ## A110533.P14261029698257709740

`A185452(A002266(n)*A052928(n))`
-/

namespace A110533.P14261029698257709740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 (A002266 n * A052928 n).toNat

end

end A110533.P14261029698257709740

namespace A110533

/-- `A185452(A002266(n)*A052928(n))` -/
def P14261029698257709740.Spec : Prop :=
  ∀ n, P14261029698257709740.a n = A110533 n

end A110533

/-! ## A110533.P9148734282175759595

`A004526((A047337(n+1)-n)*A004526(n))`
-/

namespace A110533.P9148734282175759595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A047337 (n + 1) - (n : ℤ)) * A004526 n).toNat

end

end A110533.P9148734282175759595

namespace A110533

/-- `A004526((A047337(n+1)-n)*A004526(n))` -/
def P9148734282175759595.Spec : Prop :=
  ∀ n, P9148734282175759595.a n = A110533 n

end A110533

/-! ## A110533.P4836236426862051512

`A002266((A047274(n+1)-n)*A002266(n))`
-/

namespace A110533.P4836236426862051512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 ((A047274 (n + 1) - (n : ℤ)) * A002266 n).toNat

end

end A110533.P4836236426862051512

namespace A110533

/-- `A002266((A047274(n+1)-n)*A002266(n))` -/
def P4836236426862051512.Spec : Prop :=
  ∀ n, P4836236426862051512.a n = A110533 n

end A110533

/-!
# A110534: Number of ways of writing 8n+5 as a sum of 5 odd squares.

The programs for A110534, there is no canonical definition to state claims against.
-/

/-! ## A110534.P3831036667145989218

`A008620(A008620(A007531(n))%(n+1))`
-/

namespace A110534.P3831036667145989218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.tmod (A008620 (A007531 n).toNat) (n + 1 : ℤ)).toNat

end

end A110534.P3831036667145989218

/-! ## A110534.P2571624344200306920

`A242112(A004523(n))%A016106(n+1)`
-/

namespace A110534.P2571624344200306920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242112 (A004523 n).toNat) (A016106 (n + 1))

end

end A110534.P2571624344200306920

/-! ## A110534.P18373638279307672900

`A242112(A004523(n))+A332657(n+1)%A087960(n)`
-/

namespace A110534.P18373638279307672900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (A004523 n).toNat + Int.tmod (A332657 (n + 1)) (A087960 n)

end

end A110534.P18373638279307672900

/-!
# A110535: Triangle formed from ceiling(k^n/n^k).

The programs for A110535, the canonical program `A110535.P7686816047522917521` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110535 has offset 0).

The definition of A110535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110535.P7686816047522917521

`ceil(A089072(n+1)/A075363(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110535

/-- `ceil(A089072(n+1)/A075363(n+1))` -/
def P7686816047522917521.Spec : Prop :=
  ∀ n, P7686816047522917521.a n = A110535 n

theorem P7686816047522917521.correct : P7686816047522917521.Spec := by
  intro n
  simp only [A110535]

end A110535

/-! ## A110535.P15356455179172267851

`A285481(A120095(n+1))`
-/

namespace A110535.P15356455179172267851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285481 (A120095 (n + 1)).toNat

end

end A110535.P15356455179172267851

namespace A110535

/-- `A285481(A120095(n+1))` -/
def P15356455179172267851.Spec : Prop :=
  ∀ n, P15356455179172267851.a n = A110535 n

end A110535

/-! ## A110535.P15644734236046214788

`A372406(A210341(n))+A105517(A210341(n))`
-/

namespace A110535.P15644734236046214788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372406 (A210341 n).toNat + A105517 (A210341 n).toNat

end

end A110535.P15644734236046214788

namespace A110535

/-- `A372406(A210341(n))+A105517(A210341(n))` -/
def P15644734236046214788.Spec : Prop :=
  ∀ n, P15644734236046214788.a n = A110535 n

end A110535

/-! ## A110535.P6567890738335583281

`A105517(A210341(n))+A055642(A210341(n)²)`
-/

namespace A110535.P6567890738335583281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A210341 n).toNat + A055642 (A210341 n ^ 2).toNat

end

end A110535.P6567890738335583281

namespace A110535

/-- `A105517(A210341(n))+A055642(A210341(n)²)` -/
def P6567890738335583281.Spec : Prop :=
  ∀ n, P6567890738335583281.a n = A110535 n

end A110535

/-! ## A110535.P6095097004754306442

`A050252(A379712(n))`
-/

namespace A110535.P6095097004754306442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A379712 n).toNat

end

end A110535.P6095097004754306442

namespace A110535

/-- `A050252(A379712(n))` -/
def P6095097004754306442.Spec : Prop :=
  ∀ n, P6095097004754306442.a n = A110535 n

end A110535

/-!
# A110536: a(n) = Sum_{k=1..n} ceiling(k^n/n^k).

The programs for A110536, the canonical program `A110536.P13057765605084039534` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110536 has offset 1).

The definition of A110536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, ceil((#+1)^(n+1)/(n+1)^(#+1))]` (program `A110536.P13057765605084039534`, by `A110536.P13057765605084039534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110536.P13057765605084039534

`∑{#}[n, ceil((#+1)^(n+1)/(n+1)^(#+1))]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110536

/-- `∑{#}[n, ceil((#+1)^(n+1)/(n+1)^(#+1))]` -/
def P13057765605084039534.Spec : Prop :=
  ∀ n, P13057765605084039534.a n = A110536 (n + 1)

theorem P13057765605084039534.correct : P13057765605084039534.Spec := by
  intro n
  simp only [A110536, Nat.add_sub_cancel]

end A110536

/-! ## A110536.P3661849327031756417

`∑[A186009(3^C(a(n-1), 68)+n)]` with `a(0)=1`
-/

namespace A110536.P3661849327031756417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A186009 (3 ^ Nat.choose (f1 (n - 1)).toNat 68 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110536.P3661849327031756417

namespace A110536

/-- `∑[A186009(3^C(a(n-1), 68)+n)]` -/
def P3661849327031756417.Spec : Prop :=
  ∀ n, P3661849327031756417.a n = A110536 (n + 1)

end A110536

/-! ## A110536.P18203985233544993468

`∑[A186009(A032559(n+1))]`
-/

namespace A110536.P18203985233544993468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186009 (A032559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110536.P18203985233544993468

namespace A110536

/-- `∑[A186009(A032559(n+1))]` -/
def P18203985233544993468.Spec : Prop :=
  ∀ n, P18203985233544993468.a n = A110536 (n + 1)

end A110536

/-! ## A110536.P4018342869714790583

`∑[A186009(A032563(n+1))]`
-/

namespace A110536.P4018342869714790583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186009 (A032563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110536.P4018342869714790583

namespace A110536

/-- `∑[A186009(A032563(n+1))]` -/
def P4018342869714790583.Spec : Prop :=
  ∀ n, P4018342869714790583.a n = A110536 (n + 1)

end A110536

/-! ## A110536.P4525981282355178830

`∑[A186009(A066492(n+1))]`
-/

namespace A110536.P4525981282355178830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186009 (A066492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110536.P4525981282355178830

namespace A110536

/-- `∑[A186009(A066492(n+1))]` -/
def P4525981282355178830.Spec : Prop :=
  ∀ n, P4525981282355178830.a n = A110536 (n + 1)

end A110536

/-!
# A110537: Symmetric number square associated to ceiling(k^n/n^k), read by antidiagonals.

The programs for A110537, there is no canonical definition to state claims against.
-/

/-! ## A110537.P8706725863778365770

`A006670(A112765(n+1)+A108363(n))`
-/

namespace A110537.P8706725863778365770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A112765 (n + 1) + A108363 n).toNat

end

end A110537.P8706725863778365770

/-! ## A110537.P4121983389459485100

`A088519(A295205(n+1))`
-/

namespace A110537.P4121983389459485100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A295205 (n + 1)).toNat

end

end A110537.P4121983389459485100

/-! ## A110537.P12427674873282341325

`A106161(A000452(A007318(n)))`
-/

namespace A110537.P12427674873282341325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106161 (A000452 (A007318 n).toNat).toNat

end

end A110537.P12427674873282341325

/-! ## A110537.P12886767729703160369

`A106161(A183328(n+1))`
-/

namespace A110537.P12886767729703160369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106161 (A183328 (n + 1)).toNat

end

end A110537.P12886767729703160369

/-! ## A110537.P7372007070183767025

`A376181(A240656(n+1))`
-/

namespace A110537.P7372007070183767025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376181 (A240656 (n + 1)).toNat

end

end A110537.P7372007070183767025

/-!
# A110538: Row sums of A110537 viewed as a number triangle.

The programs for A110538, there is no canonical definition to state claims against.
-/

/-! ## A110538.P13251496883224305112

`A364649(n+1)-A004526(n)`
-/

namespace A110538.P13251496883224305112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364649 (n + 1) - A004526 n

end

end A110538.P13251496883224305112

/-! ## A110538.P4557625944087943913

`A297074(n+1)+∑[A375347(n+1)]`
-/

namespace A110538.P4557625944087943913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297074 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110538.P4557625944087943913

/-! ## A110538.P16395750034059986262

`A001405(n)+A000120(A254448(n))`
-/

namespace A110538.P16395750034059986262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + A000120 (A254448 n).toNat

end

end A110538.P16395750034059986262

/-!
# A110539: Diagonal sums of A110537 viewed as a number triangle.

The programs for A110539, there is no canonical definition to state claims against.
-/

/-! ## A110539.P11428628007658554793

`A005206(A321405(n)+n)`
-/

namespace A110539.P11428628007658554793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A321405 n + (n : ℤ)).toNat

end

end A110539.P11428628007658554793

/-! ## A110539.P8839964805405030149

`A056556(∑[∑[A275311(n)]])`
-/

namespace A110539.P8839964805405030149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275311 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110539.P8839964805405030149

/-! ## A110539.P615974408103121790

`A057363(A321405(n)+1+n)`
-/

namespace A110539.P615974408103121790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A321405 n + 1 + (n : ℤ)).toNat

end

end A110539.P615974408103121790

/-! ## A110539.P13388780106835531618

`A168389(A103221(n)+A000045(n))`
-/

namespace A110539.P13388780106835531618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168389 (A103221 n + A000045 n).toNat

end

end A110539.P13388780106835531618

/-! ## A110539.P5217176194894288384

`A057363(A321405(n)+A291766(n))`
-/

namespace A110539.P5217176194894288384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A321405 n + A291766 n).toNat

end

end A110539.P5217176194894288384

/-!
# A110540: Invertible triangle: T(n,k) = number of k-ary Lyndon words of length n-k+1 with trace 1 modulo k.

The programs for A110540, there is no canonical definition to state claims against.
-/

/-! ## A110540.P15880590273773300854

`A127321(lcm(A048994(n), A208615(n)))`
-/

namespace A110540.P15880590273773300854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (Int.lcm (A048994 n) (A208615 n))

end

end A110540.P15880590273773300854

/-! ## A110540.P7806899753905948051

`∑{e}[A063886(A064044(n)), #]`
-/

namespace A110540.P7806899753905948051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (A064044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A110540.P7806899753905948051

/-! ## A110540.P12074689844999686574

`A004396(A117707(A276544(n+1)))`
-/

namespace A110540.P12074689844999686574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A117707 (A276544 (n + 1)).toNat).toNat

end

end A110540.P12074689844999686574

/-! ## A110540.P13163396803676049905

`floor(sqrt(A264428(n)%A254351(2*n+3)))`
-/

namespace A110540.P13163396803676049905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A264428 n) (A254351 (2 * n + 3)))

end

end A110540.P13163396803676049905

/-! ## A110540.P619022878226496879

`A000196(A264428(n)%A250293(n+1))`
-/

namespace A110540.P619022878226496879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A264428 n) (A250293 (n + 1))).toNat

end

end A110540.P619022878226496879

/-!
# A110541: A number triangle of sums of binomial products.

The programs for A110541, there is no canonical definition to state claims against.
-/

/-! ## A110541.P6582921315919186475

`A382397(A089759(n))`
-/

namespace A110541.P6582921315919186475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A089759 n).toNat

end

end A110541.P6582921315919186475

/-! ## A110541.P8175238593590492736

`A117498(A121395(n)+1)`
-/

namespace A110541.P8175238593590492736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (A121395 n + 1).toNat

end

end A110541.P8175238593590492736

/-! ## A110541.P3893901991009059063

`A046098(A323718(n)+1)`
-/

namespace A110541.P3893901991009059063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046098 (A323718 n + 1).toNat

end

end A110541.P3893901991009059063

/-! ## A110541.P48393510060646078

`A162911(A219836(n)+1)`
-/

namespace A110541.P48393510060646078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162911 (A219836 n + 1).toNat

end

end A110541.P48393510060646078

/-! ## A110541.P6744116362057621161

`A260998(A181196(n+1))`
-/

namespace A110541.P6744116362057621161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260998 (A181196 (n + 1)).toNat

end

end A110541.P6744116362057621161

/-!
# A110542: Row sums of number triangle A110541.

The programs for A110542, there is no canonical definition to state claims against.
-/

/-! ## A110542.P15665507709377363359

`∑[A195120(A336989(n))]`
-/

namespace A110542.P15665507709377363359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A336989 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110542.P15665507709377363359

/-! ## A110542.P17267071744546564899

`A004198(A000245(n))+A120588(n)+n`
-/

namespace A110542.P17267071744546564899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A000245 n).toNat + (A120588 n + (n : ℤ))

end

end A110542.P17267071744546564899

/-! ## A110542.P581344635367655398

`A130446(A120588(n))+n`
-/

namespace A110542.P581344635367655398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A120588 n).toNat + (n : ℤ)

end

end A110542.P581344635367655398

/-! ## A110542.P5869558995151751158

`A001462(A296675(n)+A000217(n))`
-/

namespace A110542.P5869558995151751158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A296675 n + A000217 n).toNat

end

end A110542.P5869558995151751158

/-!
# A110543: Decimal expansion of Integral {x=1..2} gamma(x) dx.

The programs for A110543, there is no canonical definition to state claims against.
-/

/-! ## A110543.P5576590382713410815

`9-A335929(n)`
-/

namespace A110543.P5576590382713410815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A335929 n

end

end A110543.P5576590382713410815

/-!
# A110544: Decimal expansion of -Integral {x=1..2} log Gamma(x) dx.

The programs for A110544, there is no canonical definition to state claims against.
-/

/-! ## A110544.P12583451614794445594

`9-A075700(n)`
-/

namespace A110544.P12583451614794445594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A075700 n

end

end A110544.P12583451614794445594

/-! ## A110544.P8581289997545780469

`9-(A122914(n+1)+A020761(n))`
-/

namespace A110544.P8581289997545780469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A122914 (n + 1 + 1) + A020761 n)

end

end A110544.P8581289997545780469

/-!
# A110546: In degrees, values of interior angles of regular polygons whose angles are integers.

The programs for A110546, there is no canonical definition to state claims against.
-/

/-! ## A110546.P16631817831861841373

`(A018412(n+3)-2)*180/A018412(n+3)`
-/

namespace A110546.P16631817831861841373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A018412 (n + 3) - 2) * 180 : ℚ) / (A018412 (n + 3) : ℚ)

end

end A110546.P16631817831861841373

/-! ## A110546.P4296842544971779134

`A069976(A018412(n+3))`
-/

namespace A110546.P4296842544971779134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069976 (A018412 (n + 3)).toNat

end

end A110546.P4296842544971779134

/-! ## A110546.P4474274149145121204

`A100659(∩[A018412(n+1), A178861(n+3)])`
-/

namespace A110546.P4474274149145121204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178861 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A110546.P4474274149145121204

/-!
# A110547: Number of sides of regular polygons whose interior angles (in degrees) are not integers.

The programs for A110547, the canonical program `A110547.P8289138240859309376` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110547 has offset 1).

The definition of A110547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1087 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110547.P8289138240859309376

`lt[18, A106621(lcm(9, n))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110547

/-- `lt[18, A106621(lcm(9, n))]` -/
def P8289138240859309376.Spec : Prop :=
  ∀ n, (P8289138240859309376.a n : ℤ) = A110547 (n + 1)

theorem P8289138240859309376.correct : P8289138240859309376.Spec := by
  intro n
  simp only [A110547, Nat.add_sub_cancel]

end A110547

/-!
# A110548: One of the three ordered sets of positive integers that solves the minimal magic die puzzle.

The programs for A110548, there is no canonical definition to state claims against.
-/

/-! ## A110548.P17376883315139838694

`∑[∑[A151838(n)%15]]`
-/

namespace A110548.P17376883315139838694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151838 n) 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110548.P17376883315139838694

/-! ## A110548.P3668859238785499301

`A242474(n+1)%or(58, n)`
-/

namespace A110548.P3668859238785499301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242474 (n + 1)) (Nat.lor 58 n : ℤ)

end

end A110548.P3668859238785499301

/-! ## A110548.P16167118986474576543

`∑[(C(record[A014963(n+1)], 64)+1)%(n+1)]+1`
-/

namespace A110548.P16167118986474576543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 64 + 1) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A110548.P16167118986474576543

/-! ## A110548.P8920706138650008063

`∑[A050449(A109199(n))]`
-/

namespace A110548.P8920706138650008063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (A109199 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110548.P8920706138650008063

/-! ## A110548.P13709279605550785873

`∑[A099172(A062104(n))]`
-/

namespace A110548.P13709279605550785873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099172 (A062104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110548.P13709279605550785873

/-!
# A110549: Period 8: repeat [1, 2, 4, 3, 3, 4, 2, 1].

The programs for A110549, the canonical program `A110549.P4876280024049351089` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110549 has offset 0).

The definition of A110549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110549.P4876280024049351089

`ogf((1+x+3x^2+3x^4+x^5+x^6)/(1-x+x^2-x^3+x^4-x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110549

/-- `ogf((1+x+3x^2+3x^4+x^5+x^6)/(1-x+x^2-x^3+x^4-x^5+x^6-x^7))` -/
def P4876280024049351089.Spec : Prop :=
  ∀ n, P4876280024049351089.a n = A110549 n

theorem P4876280024049351089.correct : P4876280024049351089.Spec := by
  intro n
  simp only [A110549]

end A110549

/-!
# A110550: Periodic {1,3,2,4,4,2,3,1}.

The programs for A110550, the canonical program `A110550.P3420985392222088763` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110550 has offset 0).

The definition of A110550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110550.P3420985392222088763

`ogf((1+2x-x^2+2x^3+x^4)/(1-x+x^4-x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110550

/-- `ogf((1+2x-x^2+2x^3+x^4)/(1-x+x^4-x^5))` -/
def P3420985392222088763.Spec : Prop :=
  ∀ n, P3420985392222088763.a n = A110550 n

theorem P3420985392222088763.correct : P3420985392222088763.Spec := by
  intro n
  simp only [A110550]

end A110550

/-!
# A110551: Period 6: repeat [1, 3, 5, 5, 3, 1].

The programs for A110551, the canonical program `A110551.P12701354640565623473` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110551 has offset 0).

The definition of A110551 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A110551.anchor (n : ℕ) : A110551 n = (([1, 3, 5, 5, 3, 1].getD (n % 6) 0 : ℕ) : ℤ)` in `Proof.A110.A110551`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110551.P12701354640565623473

`a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=5, a(4)=3, a(5)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110551

/-- `a(n-6)` -/
def P12701354640565623473.Spec : Prop :=
  ∀ n, (P12701354640565623473.a n : ℤ) = A110551 n

theorem P12701354640565623473.correct : P12701354640565623473.Spec := by
  intro n
  simp only [A110551]

end A110551

/-!
# A110552: A triangular array related to A077028 and distributing the values of A007582.

The programs for A110552, the canonical program `A110552.P17093704478189528423` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110552 has offset 1).

The definition of A110552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110552.P9655896434912506935

`(col(n)+2-row(n))*T(n-1,k-1)+(col(n)+1)*T(n-1,k)` with `a(0)=1`
-/

namespace A110552.P9655896434912506935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.triCol n + 2 : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n + 1 : ℤ) * SequenceMachineLib.triUp a n

end

end A110552.P9655896434912506935

namespace A110552

/-- `(col(n)+2-row(n))*T(n-1,k-1)+(col(n)+1)*T(n-1,k)` -/
def P9655896434912506935.Spec : Prop :=
  ∀ n, P9655896434912506935.a n = A110552 (n + 1)

end A110552

/-! ## A110552.P11869439880225321408

`A380114(n)+A097805(n+1)`
-/

namespace A110552.P11869439880225321408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380114 n + A097805 (n + 1)

end

end A110552.P11869439880225321408

namespace A110552

/-- `A380114(n)+A097805(n+1)` -/
def P11869439880225321408.Spec : Prop :=
  ∀ n, P11869439880225321408.a n = A110552 (n + 1)

theorem P11869439880225321408.correct : P11869439880225321408.Spec := by
  intro n
  simp only [A110552, Nat.add_sub_cancel, A110552.P11869439880225321408.a, A110552.P17093704478189528423.a, A097805, A097805.P1755176267250853107.a, A137688, A137688.P9746695207037186753.a, A380114, A380114.P703305606341716703.a, A003056, A003056.P5318256527314048597.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A110552

/-! ## A110552.P5453744128516434829

`2*A111049(n)-A071919(n)`
-/

namespace A110552.P5453744128516434829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111049 n - A071919 n

end

end A110552.P5453744128516434829

namespace A110552

/-- `2*A111049(n)-A071919(n)` -/
def P5453744128516434829.Spec : Prop :=
  ∀ n, P5453744128516434829.a n = A110552 (n + 1)

end A110552

/-! ## A110552.P7301810348452759799

`(A308737(n)+A007318(n))/2`
-/

namespace A110552.P7301810348452759799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308737 n + A007318 n : ℚ) / 2

end

end A110552.P7301810348452759799

namespace A110552

/-- `(A308737(n)+A007318(n))/2` -/
def P7301810348452759799.Spec : Prop :=
  ∀ n, P7301810348452759799.a n = (A110552 (n + 1) : ℚ)

theorem P7301810348452759799.correct : P7301810348452759799.Spec := by
  intro n
  simp only [A110552, Nat.add_sub_cancel, A110552.P7301810348452759799.a, A110552.P17093704478189528423.a, A007318, A007318.P11755526479805562006.a, A097805, A097805.P1755176267250853107.a, A137688, A137688.P9746695207037186753.a, A308737, A308737.P11826907470254659242.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A110552

/-! ## A110552.P6216249482762006102

`∑[A037012(n)]+A097805(n)*A137688(n)`
-/

namespace A110552.P6216249482762006102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A097805 n * A137688 n

end

end A110552.P6216249482762006102

namespace A110552

/-- `∑[A037012(n)]+A097805(n)*A137688(n)` -/
def P6216249482762006102.Spec : Prop :=
  ∀ n, P6216249482762006102.a n = A110552 (n + 1)

end A110552

/-! ## A110552.P17093704478189528423

`A097805(n+1)+A097805(n)*A137688(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110552

/-- `A097805(n+1)+A097805(n)*A137688(n)` -/
def P17093704478189528423.Spec : Prop :=
  ∀ n, P17093704478189528423.a n = A110552 (n + 1)

theorem P17093704478189528423.correct : P17093704478189528423.Spec := by
  intro n
  simp only [A110552, Nat.add_sub_cancel]

end A110552

/-! ## A110552.P13821074169781434330

`A014682(A308737(n)+A007318(n))`
-/

namespace A110552.P13821074169781434330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A308737 n + A007318 n).toNat

end

end A110552.P13821074169781434330

namespace A110552

/-- `A014682(A308737(n)+A007318(n))` -/
def P13821074169781434330.Spec : Prop :=
  ∀ n, P13821074169781434330.a n = A110552 (n + 1)

end A110552

/-! ## A110552.P8364314124561368629

`A273943(A308737(n)+A007318(n))`
-/

namespace A110552.P8364314124561368629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A308737 n + A007318 n).toNat

end

end A110552.P8364314124561368629

namespace A110552

/-- `A273943(A308737(n)+A007318(n))` -/
def P8364314124561368629.Spec : Prop :=
  ∀ n, P8364314124561368629.a n = A110552 (n + 1)

end A110552

/-! ## A110552.P6889105440704937059

`A308737(n)-A273943(A308737(n)-A007318(n))`
-/

namespace A110552.P6889105440704937059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308737 n - A273943 (A308737 n - A007318 n).toNat

end

end A110552.P6889105440704937059

namespace A110552

/-- `A308737(n)-A273943(A308737(n)-A007318(n))` -/
def P6889105440704937059.Spec : Prop :=
  ∀ n, P6889105440704937059.a n = A110552 (n + 1)

end A110552

/-!
# A110554: Column 11 of table A105552.

The programs for A110554, there is no canonical definition to state claims against.
-/

/-! ## A110554.P682921465932934973

`A105552(n+81)`
-/

namespace A110554.P682921465932934973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105552 (n + 81)

end

end A110554.P682921465932934973

/-!
# A110555: Triangle of partial sums of alternating binomial coefficients: T(n, k) = Sum_{j=0..k} binomial(n, j)*(-1)^j, for n >= 0, 0 <= k <= n.

The programs for A110555, the canonical program `A110555.P13250314358823884929` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110555 has offset 0).

The definition of A110555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110555.P3211234341549660976

`T(n-1,k)-T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A110555.P3211234341549660976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n

end

end A110555.P3211234341549660976

namespace A110555

/-- `T(n-1,k)-T(n-1,k-1)` -/
def P3211234341549660976.Spec : Prop :=
  ∀ n, P3211234341549660976.a n = A110555 n

end A110555

/-! ## A110555.P13250314358823884929

`A033999(A002262(n))*A071919(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110555

/-- `A033999(A002262(n))*A071919(n)` -/
def P13250314358823884929.Spec : Prop :=
  ∀ n, P13250314358823884929.a n = A110555 n

theorem P13250314358823884929.correct : P13250314358823884929.Spec := by
  intro n
  simp only [A110555]

end A110555

/-! ## A110555.P14596270848970266285

`A033999(A294317(n))*A071919(n)`
-/

namespace A110555.P14596270848970266285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A071919 n

end

end A110555.P14596270848970266285

namespace A110555

/-- `A033999(A294317(n))*A071919(n)` -/
def P14596270848970266285.Spec : Prop :=
  ∀ n, P14596270848970266285.a n = A110555 n

end A110555

/-! ## A110555.P18299277922642226539

`A062157(A002260(n+1))*A071919(n)`
-/

namespace A110555.P18299277922642226539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A071919 n

end

end A110555.P18299277922642226539

namespace A110555

/-- `A062157(A002260(n+1))*A071919(n)` -/
def P18299277922642226539.Spec : Prop :=
  ∀ n, P18299277922642226539.a n = A110555 n

end A110555

/-! ## A110555.P287284154905455904

`A027555(n)/A059481(n)*A071919(n)`
-/

namespace A110555.P287284154905455904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027555 n : ℚ) / (A059481 n : ℚ) * (A071919 n : ℚ)

end

end A110555.P287284154905455904

namespace A110555

/-- `A027555(n)/A059481(n)*A071919(n)` -/
def P287284154905455904.Spec : Prop :=
  ∀ n, P287284154905455904.a n = (A110555 n : ℚ)

end A110555

/-! ## A110555.P2326485123807473494

`∑[A130595(A061579(n))-char[1]]`
-/

namespace A110555.P2326485123807473494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A061579 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110555.P2326485123807473494

namespace A110555

/-- `∑[A130595(A061579(n))-char[1]]` -/
def P2326485123807473494.Spec : Prop :=
  ∀ n, P2326485123807473494.a n = A110555 n

end A110555

/-! ## A110555.P6073875573572617058

`∑[A130595(A061579(n))]-A057427(n)`
-/

namespace A110555.P6073875573572617058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A110555.P6073875573572617058

namespace A110555

/-- `∑[A130595(A061579(n))]-A057427(n)` -/
def P6073875573572617058.Spec : Prop :=
  ∀ n, P6073875573572617058.a n = A110555 n

end A110555

/-! ## A110555.P1085986461124731633

`A071919(n)*A094267(A002262(n)²)`
-/

namespace A110555.P1085986461124731633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A094267 (A002262 n ^ 2).toNat

end

end A110555.P1085986461124731633

namespace A110555

/-- `A071919(n)*A094267(A002262(n)²)` -/
def P1085986461124731633.Spec : Prop :=
  ∀ n, P1085986461124731633.a n = A110555 n

end A110555

/-! ## A110555.P10498254097615037831

`A164925(A245300(n))`
-/

namespace A110555.P10498254097615037831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164925 (A245300 n).toNat

end

end A110555.P10498254097615037831

namespace A110555

/-- `A164925(A245300(n))` -/
def P10498254097615037831.Spec : Prop :=
  ∀ n, P10498254097615037831.a n = A110555 n

end A110555

/-! ## A110555.P9372838278235916499

`A185331(A245300(n)+A114327(n))`
-/

namespace A110555.P9372838278235916499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (A245300 n + A114327 n).toNat

end

end A110555.P9372838278235916499

namespace A110555

/-- `A185331(A245300(n)+A114327(n))` -/
def P9372838278235916499.Spec : Prop :=
  ∀ n, P9372838278235916499.a n = A110555 n

end A110555

/-! ## A110555.P4179077213960496226

`A071919(n)*A154269(A059268(n))`
-/

namespace A110555.P4179077213960496226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A154269 (A059268 n).toNat

end

end A110555.P4179077213960496226

namespace A110555

/-- `A071919(n)*A154269(A059268(n))` -/
def P4179077213960496226.Spec : Prop :=
  ∀ n, P4179077213960496226.a n = A110555 n

end A110555

/-!
# A110556: a(n) = binomial(2*n-1, n)*(-1)^n.

The programs for A110556, the canonical program `A110556.P1180683033628972392` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110556 has offset 0).

The definition of A110556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110556.P1180683033628972392

`A088218(n)*(-1)^n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110556

/-- `A088218(n)*(-1)^n` -/
def P1180683033628972392.Spec : Prop :=
  ∀ n, P1180683033628972392.a n = A110556 n

theorem P1180683033628972392.correct : P1180683033628972392.Spec := by
  intro n
  simp only [A110556]

end A110556

/-! ## A110556.P3192802690082213346

`(2/n-4)*a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A110556.P3192802690082213346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n a =>
  (2 / (n : ℚ) - 4) * a (n - 1)

end

end A110556.P3192802690082213346

namespace A110556

/-- `(2/n-4)*a(n-1)` -/
def P3192802690082213346.Spec : Prop :=
  ∀ n, P3192802690082213346.a n = (A110556 n : ℚ)

end A110556

/-! ## A110556.P7227956191274243315

`-(2*(2-n^(-1))*a(n-1))` with `a(0)=1, a(1)=-1`
-/

namespace A110556.P7227956191274243315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n a =>
  -(2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1)))

end

end A110556.P7227956191274243315

namespace A110556

/-- `-(2*(2-n^(-1))*a(n-1))` -/
def P7227956191274243315.Spec : Prop :=
  ∀ n, P7227956191274243315.a n = (A110556 n : ℚ)

end A110556

/-! ## A110556.P9503910941700112693

`A193382(4*n)`
-/

namespace A110556.P9503910941700112693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193382 (4 * n)

end

end A110556.P9503910941700112693

namespace A110556

/-- `A193382(4*n)` -/
def P9503910941700112693.Spec : Prop :=
  ∀ n, P9503910941700112693.a n = A110556 n

end A110556

/-! ## A110556.P8565899956261712484

`(-1)^n*A088218(n)`
-/

namespace A110556.P8565899956261712484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A088218 n

end

end A110556.P8565899956261712484

namespace A110556

/-- `(-1)^n*A088218(n)` -/
def P8565899956261712484.Spec : Prop :=
  ∀ n, P8565899956261712484.a n = A110556 n

theorem P8565899956261712484.correct : P8565899956261712484.Spec := by
  intro n
  simp only [A110556, Nat.add_sub_cancel, A110556.P8565899956261712484.a, A110556.P1180683033628972392.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110556

/-! ## A110556.P16891826273091993308

`(-1)^n*A001405(comp[2*(n+1)])`
-/

namespace A110556.P16891826273091993308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001405 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110556.P16891826273091993308

namespace A110556

/-- `(-1)^n*A001405(comp[2*(n+1)])` -/
def P16891826273091993308.Spec : Prop :=
  ∀ n, P16891826273091993308.a n = A110556 n

end A110556

/-! ## A110556.P13293745205380347544

`(-1)^n*ceil(A001405(2*n)/2)`
-/

namespace A110556.P13293745205380347544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌈(A001405 (2 * n) : ℚ) / 2⌉

end

end A110556.P13293745205380347544

namespace A110556

/-- `(-1)^n*ceil(A001405(2*n)/2)` -/
def P13293745205380347544.Spec : Prop :=
  ∀ n, P13293745205380347544.a n = A110556 n

end A110556

/-! ## A110556.P6572855685603758808

`(-1)^n*A057977(comp[2*(n+1)])`
-/

namespace A110556.P6572855685603758808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A057977 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110556.P6572855685603758808

namespace A110556

/-- `(-1)^n*A057977(comp[2*(n+1)])` -/
def P6572855685603758808.Spec : Prop :=
  ∀ n, P6572855685603758808.a n = A110556 n

end A110556

/-! ## A110556.P8432511905837447662

`round((n+1)*A182492(4*n+3)/2)`
-/

namespace A110556.P8432511905837447662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) * A182492 (4 * n + 3) : ℚ) / 2)

end

end A110556.P8432511905837447662

namespace A110556

/-- `round((n+1)*A182492(4*n+3)/2)` -/
def P8432511905837447662.Spec : Prop :=
  ∀ n, P8432511905837447662.a n = A110556 n

end A110556

/-! ## A110556.P17907643567520323401

`(round(sqrt(n²+1))+1)*A168491(n)/2`
-/

namespace A110556.P17907643567520323401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1) * A168491 n : ℚ) / 2

end

end A110556.P17907643567520323401

namespace A110556

/-- `(round(sqrt(n²+1))+1)*A168491(n)/2` -/
def P17907643567520323401.Spec : Prop :=
  ∀ n, P17907643567520323401.a n = (A110556 n : ℚ)

end A110556

/-! ## A110556.P8229131504241259660

`A158500(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A110556.P8229131504241259660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158500 n - (a (n - 1) + a (n - 1))

end

end A110556.P8229131504241259660

namespace A110556

/-- `A158500(n)-(a(n-1)+a(n-1))` -/
def P8229131504241259660.Spec : Prop :=
  ∀ n, P8229131504241259660.a n = A110556 n

end A110556

/-! ## A110556.P9772280042721634912

`A088218(n)/A033999(n)`
-/

namespace A110556.P9772280042721634912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088218 n : ℚ) / (A033999 n : ℚ)

end

end A110556.P9772280042721634912

namespace A110556

/-- `A088218(n)/A033999(n)` -/
def P9772280042721634912.Spec : Prop :=
  ∀ n, P9772280042721634912.a n = (A110556 n : ℚ)

end A110556

/-! ## A110556.P4793854355786922747

`A000984(n)/A280560(n)`
-/

namespace A110556.P4793854355786922747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A280560 n : ℚ)

end

end A110556.P4793854355786922747

namespace A110556

/-- `A000984(n)/A280560(n)` -/
def P4793854355786922747.Spec : Prop :=
  ∀ n, P4793854355786922747.a n = (A110556 n : ℚ)

end A110556

/-! ## A110556.P4945178764859556238

`(A260878(n)-1)*A033999(n)`
-/

namespace A110556.P4945178764859556238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A260878 n - 1) * A033999 n

end

end A110556.P4945178764859556238

namespace A110556

/-- `(A260878(n)-1)*A033999(n)` -/
def P4945178764859556238.Spec : Prop :=
  ∀ n, P4945178764859556238.a n = A110556 n

end A110556

/-! ## A110556.P211089930465576842

`A000984(n)/A084100(2*n)`
-/

namespace A110556.P211089930465576842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A084100 (2 * n) : ℚ)

end

end A110556.P211089930465576842

namespace A110556

/-- `A000984(n)/A084100(2*n)` -/
def P211089930465576842.Spec : Prop :=
  ∀ n, P211089930465576842.a n = (A110556 n : ℚ)

end A110556

/-! ## A110556.P12297189802298974410

`A063886(2*n)/A280560(n)`
-/

namespace A110556.P12297189802298974410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (2 * n) : ℚ) / (A280560 n : ℚ)

end

end A110556.P12297189802298974410

namespace A110556

/-- `A063886(2*n)/A280560(n)` -/
def P12297189802298974410.Spec : Prop :=
  ∀ n, P12297189802298974410.a n = (A110556 n : ℚ)

end A110556

/-! ## A110556.P1936732812662525963

`A056594(2*n)*A210736(2*n)`
-/

namespace A110556.P1936732812662525963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A210736 (2 * n)

end

end A110556.P1936732812662525963

namespace A110556

/-- `A056594(2*n)*A210736(2*n)` -/
def P1936732812662525963.Spec : Prop :=
  ∀ n, P1936732812662525963.a n = A110556 n

end A110556

/-! ## A110556.P7404426510227346613

`A001405(2*n)/A084100(2*n)`
-/

namespace A110556.P7404426510227346613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n) : ℚ) / (A084100 (2 * n) : ℚ)

end

end A110556.P7404426510227346613

namespace A110556

/-- `A001405(2*n)/A084100(2*n)` -/
def P7404426510227346613.Spec : Prop :=
  ∀ n, P7404426510227346613.a n = (A110556 n : ℚ)

end A110556

/-! ## A110556.P7286057441054574387

`A063886(2*n)/A084100(2*n)`
-/

namespace A110556.P7286057441054574387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (2 * n) : ℚ) / (A084100 (2 * n) : ℚ)

end

end A110556.P7286057441054574387

namespace A110556

/-- `A063886(2*n)/A084100(2*n)` -/
def P7286057441054574387.Spec : Prop :=
  ∀ n, P7286057441054574387.a n = (A110556 n : ℚ)

end A110556

/-! ## A110556.P9463253629818544687

`A063886(2*n)/A176742(2*n)`
-/

namespace A110556.P9463253629818544687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (2 * n) : ℚ) / (A176742 (2 * n) : ℚ)

end

end A110556.P9463253629818544687

namespace A110556

/-- `A063886(2*n)/A176742(2*n)` -/
def P9463253629818544687.Spec : Prop :=
  ∀ n, P9463253629818544687.a n = (A110556 n : ℚ)

end A110556

/-!
# A110558: Numbers n such that (n^2-8)/8 is prime.

The programs for A110558, the canonical program `A110558.P13235692140558461613` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110558 has offset 1).

The definition of A110558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A110558.P13235692140558461613

`2*A090697(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110558

/-- `2*A090697(n+1)` -/
def P13235692140558461613.Spec : Prop :=
  ∀ n, P13235692140558461613.a n = A110558 (n + 1)

theorem P13235692140558461613.correct : P13235692140558461613.Spec := by
  intro n
  simp only [A110558, Nat.add_sub_cancel]

end A110558

/-! ## A110558.P11401697506891851556

`4*A066049(n+1)`
-/

namespace A110558.P11401697506891851556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A066049 (n + 1)

end

end A110558.P11401697506891851556

namespace A110558

/-- `4*A066049(n+1)` -/
def P11401697506891851556.Spec : Prop :=
  ∀ n, P11401697506891851556.a n = A110558 (n + 1)

theorem P11401697506891851556.correct : P11401697506891851556.Spec := by
  intro n
  simp only [A110558, Nat.add_sub_cancel, A110558.P11401697506891851556.a, A110558.P13235692140558461613.a, A066049, A066049.P10553894766557076843.a, A090697, A090697.P2512729570371427522.a, A160697, A160697.P14664824911142017022.f1, A160697.P14664824911142017022.f2, A160697.P14664824911142017022.a, A130130, A130130.P267037976770199187.a, A359438, A359438.P5688249692624788358.f1, A359438.P5688249692624788358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110558

/-! ## A110558.P10273723508213221497

`A090697(n+1)²/A066049(n+1)`
-/

namespace A110558.P10273723508213221497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090697 (n + 1) ^ 2 : ℚ) / (A066049 (n + 1) : ℚ)

end

end A110558.P10273723508213221497

namespace A110558

/-- `A090697(n+1)²/A066049(n+1)` -/
def P10273723508213221497.Spec : Prop :=
  ∀ n, P10273723508213221497.a n = (A110558 (n + 1) : ℚ)

end A110558

/-! ## A110558.P47002976602811930

`A090697(A000027(n+1))+A090697(n+1)`
-/

namespace A110558.P47002976602811930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090697 (A000027 (n + 1)).toNat + A090697 (n + 1)

end

end A110558.P47002976602811930

namespace A110558

/-- `A090697(A000027(n+1))+A090697(n+1)` -/
def P47002976602811930.Spec : Prop :=
  ∀ n, P47002976602811930.a n = A110558 (n + 1)

end A110558

/-! ## A110558.P885322089416350655

`A090697(A028310(n+1))+A090697(n+1)`
-/

namespace A110558.P885322089416350655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090697 (A028310 (n + 1)).toNat + A090697 (n + 1)

end

end A110558.P885322089416350655

namespace A110558

/-- `A090697(A028310(n+1))+A090697(n+1)` -/
def P885322089416350655.Spec : Prop :=
  ∀ n, P885322089416350655.a n = A110558 (n + 1)

end A110558

/-! ## A110558.P9955701502970893557

`A090697(A000290(n+1)/(n+1))+A090697(n+1)`
-/

namespace A110558.P9955701502970893557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090697 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat + A090697 (n + 1)

end

end A110558.P9955701502970893557

namespace A110558

/-- `A090697(A000290(n+1)/(n+1))+A090697(n+1)` -/
def P9955701502970893557.Spec : Prop :=
  ∀ n, P9955701502970893557.a n = A110558 (n + 1)

end A110558

/-! ## A110558.P10108595602331509880

`A090697(n+1)²/A066436(n+1)%(A090697(n+1)+1)`
-/

namespace A110558.P10108595602331509880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090697 (n + 1) ^ 2 : ℚ) / (Int.tmod (A066436 (n + 1)) (A090697 (n + 1) + 1) : ℚ)

end

end A110558.P10108595602331509880

namespace A110558

/-- `A090697(n+1)²/A066436(n+1)%(A090697(n+1)+1)` -/
def P10108595602331509880.Spec : Prop :=
  ∀ n, P10108595602331509880.a n = (A110558 (n + 1) : ℚ)

end A110558

/-! ## A110558.P11277517569161380363

`A008574(A066049(n+1))`
-/

namespace A110558.P11277517569161380363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A066049 (n + 1)).toNat

end

end A110558.P11277517569161380363

namespace A110558

/-- `A008574(A066049(n+1))` -/
def P11277517569161380363.Spec : Prop :=
  ∀ n, P11277517569161380363.a n = A110558 (n + 1)

end A110558

/-! ## A110558.P9912947433481425293

`A090697(n+1)+A046666(A090697(n+1)+2)`
-/

namespace A110558.P9912947433481425293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090697 (n + 1) + A046666 (A090697 (n + 1) + 2).toNat

end

end A110558.P9912947433481425293

namespace A110558

/-- `A090697(n+1)+A046666(A090697(n+1)+2)` -/
def P9912947433481425293.Spec : Prop :=
  ∀ n, P9912947433481425293.a n = A110558 (n + 1)

end A110558

/-! ## A110558.P12325341778235338629

`4*A160697(n+2)`
-/

namespace A110558.P12325341778235338629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A160697 (n + 2)

end

end A110558.P12325341778235338629

namespace A110558

/-- `4*A160697(n+2)` -/
def P12325341778235338629.Spec : Prop :=
  ∀ n, P12325341778235338629.a n = A110558 (n + 1)

theorem P12325341778235338629.correct : P12325341778235338629.Spec := by
  intro n
  simp only [A110558, Nat.add_sub_cancel, A110558.P12325341778235338629.a, A110558.P13235692140558461613.a, A090697, A090697.P2512729570371427522.a, A160697, A160697.P14664824911142017022.f1, A160697.P14664824911142017022.f2, A160697.P14664824911142017022.a, A066049, A066049.P10553894766557076843.a, A130130, A130130.P267037976770199187.a, A359438, A359438.P5688249692624788358.f1, A359438.P5688249692624788358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110558

/-! ## A110558.P6081628472615724525

`A008574(A160697(n+2))`
-/

namespace A110558.P6081628472615724525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A160697 (n + 2)).toNat

end

end A110558.P6081628472615724525

namespace A110558

/-- `A008574(A160697(n+2))` -/
def P6081628472615724525.Spec : Prop :=
  ∀ n, P6081628472615724525.a n = A110558 (n + 1)

end A110558

/-! ## A110558.P17133392015613176099

`A160697(n+2)+A160697(n+2)+A090697(n+1)`
-/

namespace A110558.P17133392015613176099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160697 (n + 2) + (A160697 (n + 2) + A090697 (n + 1))

end

end A110558.P17133392015613176099

namespace A110558

/-- `A160697(n+2)+A160697(n+2)+A090697(n+1)` -/
def P17133392015613176099.Spec : Prop :=
  ∀ n, P17133392015613176099.a n = A110558 (n + 1)

theorem P17133392015613176099.correct : P17133392015613176099.Spec := by
  intro n
  simp only [A110558, Nat.add_sub_cancel, A110558.P17133392015613176099.a, A110558.P13235692140558461613.a, A090697, A090697.P2512729570371427522.a, A160697, A160697.P14664824911142017022.f1, A160697.P14664824911142017022.f2, A160697.P14664824911142017022.a, A066049, A066049.P10553894766557076843.a, A130130, A130130.P267037976770199187.a, A359438, A359438.P5688249692624788358.f1, A359438.P5688249692624788358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110558

/-! ## A110558.P9413631764691082950

`A004277(A090697(n+1))`
-/

namespace A110558.P9413631764691082950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A090697 (n + 1)).toNat

end

end A110558.P9413631764691082950

namespace A110558

/-- `A004277(A090697(n+1))` -/
def P9413631764691082950.Spec : Prop :=
  ∀ n, P9413631764691082950.a n = A110558 (n + 1)

end A110558

/-! ## A110558.P270361775956129309

`A005843(A066049(n+1)+A066049(n+1))`
-/

namespace A110558.P270361775956129309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A066049 (n + 1) + A066049 (n + 1)).toNat

end

end A110558.P270361775956129309

namespace A110558

/-- `A005843(A066049(n+1)+A066049(n+1))` -/
def P270361775956129309.Spec : Prop :=
  ∀ n, P270361775956129309.a n = A110558 (n + 1)

end A110558

/-! ## A110558.P17562245386908939171

`round(sqrt(8*p?[2*((n+2)²-1)+1]+1))`
-/

namespace A110558.P17562245386908939171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n + 2) ^ 2 : ℤ) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (8 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℝ))

end

end A110558.P17562245386908939171

namespace A110558

/-- `round(sqrt(8*p?[2*((n+2)²-1)+1]+1))` -/
def P17562245386908939171.Spec : Prop :=
  ∀ n, P17562245386908939171.a n = A110558 (n + 1)

end A110558

/-!
# A110559: Least j such that j*n^2 -1 and j*n^2 +1 are twin primes.

The programs for A110559, there is no canonical definition to state claims against.
-/

/-! ## A110559.P3460241127385946506

`A071558((n+1)²)`
-/

namespace A110559.P3460241127385946506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 ((n + 1) ^ 2)

end

end A110559.P3460241127385946506

/-! ## A110559.P10692279169421303378

`or(char[1], A071558(∑[2*n+1]))`
-/

namespace A110559.P10692279169421303378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A071558 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A110559.P10692279169421303378

/-! ## A110559.P2497226823307621263

`A071256((n+1)²)/(n+1)²`
-/

namespace A110559.P2497226823307621263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071256 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A110559.P2497226823307621263

/-! ## A110559.P14086911249482968754

`abs(A071558((n+1)^2)-1)+1`
-/

namespace A110559.P14086911249482968754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071558 ((n + 1) ^ 2) - 1| + 1

end

end A110559.P14086911249482968754

/-! ## A110559.P6716750117133467866

`A000027(A071558((n+1)^2))`
-/

namespace A110559.P6716750117133467866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A071558 ((n + 1) ^ 2)).toNat

end

end A110559.P6716750117133467866

/-! ## A110559.P5296862704452917391

`and(-1, A071558(A000290(n+1)))`
-/

namespace A110559.P5296862704452917391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A071558 (A000290 (n + 1)).toNat)

end

end A110559.P5296862704452917391

/-! ## A110559.P11021952067844541148

`A142150(2*A071558(∑[2*n+1]))`
-/

namespace A110559.P11021952067844541148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * A071558 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A110559.P11021952067844541148

/-! ## A110559.P5774299858855441533

`A071558(∑[n+1+n])+A000035(2*n)`
-/

namespace A110559.P5774299858855441533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (∑ j ∈ Finset.range (n + 1), f1 j) + A000035 (2 * n)

end

end A110559.P5774299858855441533

/-! ## A110559.P11121089812942676472

`A071558((n+1)*(n+1))*A293305(∑[n])`
-/

namespace A110559.P11121089812942676472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 ((n + 1) * (n + 1)) * A293305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110559.P11121089812942676472

/-! ## A110559.P12060495066055196854

`A000034(2*n)*A071558(∑[n+1+n])`
-/

namespace A110559.P12060495066055196854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A071558 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110559.P12060495066055196854

/-! ## A110559.P11182622561894862792

`A010051(A007918(n))*A071558((n+1)*(n+1))`
-/

namespace A110559.P11182622561894862792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007918 n).toNat * A071558 ((n + 1) * (n + 1))

end

end A110559.P11182622561894862792

/-! ## A110559.P8036487324074355059

`A030600(A286575(n))*A071558((n+1)*(n+1))`
-/

namespace A110559.P8036487324074355059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030600 (A286575 n).toNat * A071558 ((n + 1) * (n + 1))

end

end A110559.P8036487324074355059

/-! ## A110559.P10324383310078579409

`A204065(A000040(n+1))+A071558((n+1)*(n+1))`
-/

namespace A110559.P10324383310078579409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204065 (A000040 (n + 1)).toNat + A071558 ((n + 1) * (n + 1))

end

end A110559.P10324383310078579409

/-!
# A110560: Numerators of T(n+1)/n! reduced to lowest terms, where T(n) are the triangular numbers A000217.

The programs for A110560, the canonical program `A110560.P3912990218243023519` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110560 has offset 0).

The definition of A110560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110560.P304933071808200515

`A369033(or(1, n+1))`
-/

namespace A110560.P304933071808200515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (Nat.lor 1 (n + 1))

end

end A110560.P304933071808200515

namespace A110560

/-- `A369033(or(1, n+1))` -/
def P304933071808200515.Spec : Prop :=
  ∀ n, P304933071808200515.a n = A110560 n

end A110560

/-! ## A110560.P10805329184838357533

`gcd(∑[n+1], A270753(n+1))`
-/

namespace A110560.P10805329184838357533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A270753 (n + 1))

end

end A110560.P10805329184838357533

namespace A110560

/-- `gcd(∑[n+1], A270753(n+1))` -/
def P10805329184838357533.Spec : Prop :=
  ∀ n, (P10805329184838357533.a n : ℤ) = A110560 n

end A110560

/-! ## A110560.P2948004967181602168

`or(1, (n+1)*A010051(or(1, n+1)))`
-/

namespace A110560.P2948004967181602168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n + 1 : ℤ) * A010051 (Nat.lor 1 (n + 1)))

end

end A110560.P2948004967181602168

namespace A110560

/-- `or(1, (n+1)*A010051(or(1, n+1)))` -/
def P2948004967181602168.Spec : Prop :=
  ∀ n, P2948004967181602168.a n = A110560 n

end A110560

/-! ## A110560.P11125021836783856457

`A128059(A080513(n))`
-/

namespace A110560.P11125021836783856457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A080513 n).toNat

end

end A110560.P11125021836783856457

namespace A110560

/-- `A128059(A080513(n))` -/
def P11125021836783856457.Spec : Prop :=
  ∀ n, P11125021836783856457.a n = A110560 n

end A110560

/-! ## A110560.P13188150611356742015

`A014973(A078936(n+1))`
-/

namespace A110560.P13188150611356742015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A078936 (n + 1)).toNat

end

end A110560.P13188150611356742015

namespace A110560

/-- `A014973(A078936(n+1))` -/
def P13188150611356742015.Spec : Prop :=
  ∀ n, P13188150611356742015.a n = A110560 n

end A110560

/-! ## A110560.P10047981469174529678

`A128059(A008619(n+1))`
-/

namespace A110560.P10047981469174529678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A008619 (n + 1)).toNat

end

end A110560.P10047981469174529678

namespace A110560

/-- `A128059(A008619(n+1))` -/
def P10047981469174529678.Spec : Prop :=
  ∀ n, P10047981469174529678.a n = A110560 n

end A110560

/-! ## A110560.P3912990218243023519

`A090585(A131055(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110560

/-- `A090585(A131055(n+1))` -/
def P3912990218243023519.Spec : Prop :=
  ∀ n, P3912990218243023519.a n = A110560 n

theorem P3912990218243023519.correct : P3912990218243023519.Spec := by
  intro n
  simp only [A110560]

end A110560

/-! ## A110560.P9689082710877631084

`gcd(A013638(n+3), A045896(n))`
-/

namespace A110560.P9689082710877631084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013638 (n + 3)) (A045896 n)

end

end A110560.P9689082710877631084

namespace A110560

/-- `gcd(A013638(n+3), A045896(n))` -/
def P9689082710877631084.Spec : Prop :=
  ∀ n, (P9689082710877631084.a n : ℤ) = A110560 n

end A110560

/-! ## A110560.P3469678259584798149

`gcd(A013637(n+3), A069834(n+1))`
-/

namespace A110560.P3469678259584798149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013637 (n + 3)) (A069834 (n + 1))

end

end A110560.P3469678259584798149

namespace A110560

/-- `gcd(A013637(n+3), A069834(n+1))` -/
def P3469678259584798149.Spec : Prop :=
  ∀ n, (P3469678259584798149.a n : ℤ) = A110560 n

end A110560

/-! ## A110560.P14730297756206598793

`A089026(n+1)+A119690(n+1)/A089026(n+1)`
-/

namespace A110560.P14730297756206598793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089026 (n + 1) : ℚ) + (A119690 (n + 1) : ℚ) / (A089026 (n + 1) : ℚ)

end

end A110560.P14730297756206598793

namespace A110560

/-- `A089026(n+1)+A119690(n+1)/A089026(n+1)` -/
def P14730297756206598793.Spec : Prop :=
  ∀ n, P14730297756206598793.a n = (A110560 n : ℚ)

end A110560

/-! ## A110560.P5605967815801786718

`A014973(or(1, n+1))`
-/

namespace A110560.P5605967815801786718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (Nat.lor 1 (n + 1))

end

end A110560.P5605967815801786718

namespace A110560

/-- `A014973(or(1, n+1))` -/
def P5605967815801786718.Spec : Prop :=
  ∀ n, P5605967815801786718.a n = A110560 n

end A110560

/-! ## A110560.P11051763004349440674

`A089026(or(1, n+1))`
-/

namespace A110560.P11051763004349440674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (Nat.lor 1 (n + 1))

end

end A110560.P11051763004349440674

namespace A110560

/-- `A089026(or(1, n+1))` -/
def P11051763004349440674.Spec : Prop :=
  ∀ n, P11051763004349440674.a n = A110560 n

end A110560

/-! ## A110560.P1282292393029403416

`A135681(or(1, n+1))`
-/

namespace A110560.P1282292393029403416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135681 (Nat.lor 1 (n + 1))

end

end A110560.P1282292393029403416

namespace A110560

/-- `A135681(or(1, n+1))` -/
def P1282292393029403416.Spec : Prop :=
  ∀ n, P1282292393029403416.a n = A110560 n

end A110560

/-! ## A110560.P9426089855878798878

`A089026(n%2+n+1)`
-/

namespace A110560.P9426089855878798878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n % 2 + (n + 1))

end

end A110560.P9426089855878798878

namespace A110560

/-- `A089026(n%2+n+1)` -/
def P9426089855878798878.Spec : Prop :=
  ∀ n, P9426089855878798878.a n = A110560 n

end A110560

/-! ## A110560.P5967254001008805566

`A089026(and(1, n)+n+1)`
-/

namespace A110560.P5967254001008805566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (Nat.land 1 n + n + 1)

end

end A110560.P5967254001008805566

namespace A110560

/-- `A089026(and(1, n)+n+1)` -/
def P5967254001008805566.Spec : Prop :=
  ∀ n, P5967254001008805566.a n = A110560 n

end A110560

/-! ## A110560.P15511292393874199511

`∑[n+1]/gcd(n!, ∑[n+1])`
-/

namespace A110560.P15511292393874199511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd (Nat.factorial n) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A110560.P15511292393874199511

namespace A110560

/-- `∑[n+1]/gcd(n!, ∑[n+1])` -/
def P15511292393874199511.Spec : Prop :=
  ∀ n, P15511292393874199511.a n = (A110560 n : ℚ)

end A110560

/-!
# A110561: Denominators of T(n+1)/n! reduced to lowest terms, where T(n) are the triangular numbers A000217.

The programs for A110561, there is no canonical definition to state claims against.
-/

/-! ## A110561.P1554467524835306964

`n!/gcd(n!, ∑[n+1])`
-/

namespace A110561.P1554467524835306964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.gcd (Nat.factorial n) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A110561.P1554467524835306964

/-! ## A110561.P14729035168168399367

`n!/gcd(A000142(n), A253145(n))`
-/

namespace A110561.P14729035168168399367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (A000142 n) (A253145 n) : ℚ)

end

end A110561.P14729035168168399367

/-! ## A110561.P2883969450486039134

`lcm(n!, ∑[n+1])/∑[n+1]`
-/

namespace A110561.P2883969450486039134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (Nat.factorial n) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A110561.P2883969450486039134

/-! ## A110561.P2023593236567956164

`lcm(A000142(n), A000217(n+1))/∑[n+1]`
-/

namespace A110561.P2023593236567956164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 n) (A000217 (n + 1)) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A110561.P2023593236567956164

/-! ## A110561.P4126963080522149762

`gcd(A273878(A289207(n+1)), A273878(n))`
-/

namespace A110561.P4126963080522149762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A273878 (A289207 (n + 1)).toNat) (A273878 n)

end

end A110561.P4126963080522149762

/-!
# A110562: Numbers n such that n in binary representation has a block of exactly a nontrivial pentagonal number of zeros.

The programs for A110562, there is no canonical definition to state claims against.
-/

/-! ## A110562.P16553104184091266695

`eq[5, A087117(n)]`
-/

namespace A110562.P16553104184091266695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110562.P16553104184091266695

/-! ## A110562.P15924046106320735631

`lt[A071035(A087117(n)+1), 1]`
-/

namespace A110562.P15924046106320735631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071035 (A087117 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A110562.P15924046106320735631

/-! ## A110562.P631990892372212474

`lt[2, A038374(A087117(n)+2)]`
-/

namespace A110562.P631990892372212474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A087117 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110562.P631990892372212474

/-! ## A110562.P16165445994006947166

`lt[2, A090996(A087117(n)+2)]`
-/

namespace A110562.P16165445994006947166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A087117 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110562.P16165445994006947166

/-! ## A110562.P3644997146513063015

`lt[2, A126387(A087117(n)+2)]`
-/

namespace A110562.P3644997146513063015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (A087117 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110562.P3644997146513063015

/-! ## A110562.P2680516841208855472

`lt[2, A246596(A087117(n)+2)]`
-/

namespace A110562.P2680516841208855472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 (A087117 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110562.P2680516841208855472

/-! ## A110562.P11819369273003975248

`lt[2, A246660(A087117(n)+2)]`
-/

namespace A110562.P11819369273003975248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 (A087117 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110562.P11819369273003975248

/-! ## A110562.P17954695330304511975

`lt[2, A272604(A087117(n)+2)]`
-/

namespace A110562.P17954695330304511975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A087117 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110562.P17954695330304511975

/-! ## A110562.P6297063836713123244

`lt[2, A284569(A087117(n)+2)]`
-/

namespace A110562.P6297063836713123244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 (A087117 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110562.P6297063836713123244

/-! ## A110562.P8841589887866252971

`eq[5, A038374(A010078(n+1))]`
-/

namespace A110562.P8841589887866252971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110562.P8841589887866252971

/-!
# A110565: Results from a change in the rules leading to sequence A097357.

The programs for A110565, there is no canonical definition to state claims against.
-/

/-! ## A110565.P10690400482742021931

`xor(2*a(n-1), xor(floor(a(n-1)/2), a(n-1)))` with `a(0)=1`
-/

namespace A110565.P10690400482742021931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (Int.xor ⌊(a (n - 1) : ℚ) / 2⌋ (a (n - 1)))

end

end A110565.P10690400482742021931

/-! ## A110565.P8818959431837526799

`xor(a(n-1)+floor(a(n-1)), xor(floor(a(n-1)/2), a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A110565.P8818959431837526799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1) + a (n - 1)) (Int.xor ⌊(a (n - 1) : ℚ) / 2⌋ (a (n - 1)))

end

end A110565.P8818959431837526799

/-! ## A110565.P1793373037520819851

`round(A048712(n)/A011782(n+3))`
-/

namespace A110565.P1793373037520819851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A048712 n : ℚ) / (A011782 (n + 3) : ℚ))

end

end A110565.P1793373037520819851

/-! ## A110565.P17243702971141632444

`xor(A038185(n+1), A038185(n))/2`
-/

namespace A110565.P17243702971141632444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A038185 (n + 1)) (A038185 n) : ℚ) / 2

end

end A110565.P17243702971141632444

/-! ## A110565.P964880700211078727

`xor(2*a(n-1), A003188(a(n-1)))` with `a(0)=1`
-/

namespace A110565.P964880700211078727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A003188 (a (n - 1)).toNat)

end

end A110565.P964880700211078727

/-!
# A110566: a(n) = lcm{1,2,...,n}/denominator of harmonic number H(n).

The programs for A110566, the canonical program `A110566.P14389672270171223314` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110566 has offset 1).

The definition of A110566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110566.P539867182853641434

`gcd(A003418(n), A025529(n+1))`
-/

namespace A110566.P539867182853641434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A025529 (n + 1))

end

end A110566.P539867182853641434

namespace A110566

/-- `gcd(A003418(n), A025529(n+1))` -/
def P539867182853641434.Spec : Prop :=
  ∀ n, (P539867182853641434.a n : ℤ) = A110566 (n + 1)

end A110566

/-! ## A110566.P14389672270171223314

`A003418(n+1)/A002805(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110566

/-- `A003418(n+1)/A002805(n+1)` -/
def P14389672270171223314.Spec : Prop :=
  ∀ n, P14389672270171223314.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P11658579506260881929

`A025529(n+1)/A001008(n+1)`
-/

namespace A110566.P11658579506260881929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ)

end

end A110566.P11658579506260881929

namespace A110566

/-- `A025529(n+1)/A001008(n+1)` -/
def P11658579506260881929.Spec : Prop :=
  ∀ n, P11658579506260881929.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P2629029520543895798

`a(n-1)*A335024(n)/A048671(n+1)` with `a(0)=1`
-/

namespace A110566.P2629029520543895798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A335024 n : ℚ) / (A048671 (n + 1) : ℚ)

end

end A110566.P2629029520543895798

namespace A110566

/-- `a(n-1)*A335024(n)/A048671(n+1)` -/
def P2629029520543895798.Spec : Prop :=
  ∀ n, P2629029520543895798.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P8684280780623859045

`∏[A335024(n+1)/A048671(n+1)]/A335024(n+1)`
-/

namespace A110566.P8684280780623859045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335024 (n + 1) : ℚ) / (A048671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / (A335024 (n + 1) : ℚ)

end

end A110566.P8684280780623859045

namespace A110566

/-- `∏[A335024(n+1)/A048671(n+1)]/A335024(n+1)` -/
def P8684280780623859045.Spec : Prop :=
  ∀ n, P8684280780623859045.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P5118922457532188025

`∏[A335024(A233583(n+1))/A048671(n+1)]`
-/

namespace A110566.P5118922457532188025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335024 (A233583 (n + 1)).toNat : ℚ) / (A048671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110566.P5118922457532188025

namespace A110566

/-- `∏[A335024(A233583(n+1))/A048671(n+1)]` -/
def P5118922457532188025.Spec : Prop :=
  ∀ n, P5118922457532188025.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P11891002280487724709

`floor(A002944(n+1)/A128438(n+1))`
-/

namespace A110566.P11891002280487724709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002944 (n + 1) : ℚ) / (A128438 (n + 1) : ℚ)⌋

end

end A110566.P11891002280487724709

namespace A110566

/-- `floor(A002944(n+1)/A128438(n+1))` -/
def P11891002280487724709.Spec : Prop :=
  ∀ n, P11891002280487724709.a n = A110566 (n + 1)

end A110566

/-! ## A110566.P4578070900687397912

`A002944(n+1)/A027611(n+1)*A120263(n+1)`
-/

namespace A110566.P4578070900687397912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A027611 (n + 1) : ℚ) * (A120263 (n + 1) : ℚ)

end

end A110566.P4578070900687397912

namespace A110566

/-- `A002944(n+1)/A027611(n+1)*A120263(n+1)` -/
def P4578070900687397912.Spec : Prop :=
  ∀ n, P4578070900687397912.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P8356803514990507641

`gcd(A025552(n), A027457(n+1))`
-/

namespace A110566.P8356803514990507641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025552 n) (A027457 (n + 1))

end

end A110566.P8356803514990507641

namespace A110566

/-- `gcd(A025552(n), A027457(n+1))` -/
def P8356803514990507641.Spec : Prop :=
  ∀ n, (P8356803514990507641.a n : ℤ) = A110566 (n + 1)

end A110566

/-! ## A110566.P3793845531657195339

`Δ[A236856(n)]/A002805(n+1)`
-/

namespace A110566.P3793845531657195339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A002805 (n + 1) : ℚ)

end

end A110566.P3793845531657195339

namespace A110566

/-- `Δ[A236856(n)]/A002805(n+1)` -/
def P3793845531657195339.Spec : Prop :=
  ∀ n, P3793845531657195339.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P6541863064097149786

`(A027457(n+1)+A003418(n+1))/A001008(n+1)`
-/

namespace A110566.P6541863064097149786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027457 (n + 1) + A003418 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ)

end

end A110566.P6541863064097149786

namespace A110566

/-- `(A027457(n+1)+A003418(n+1))/A001008(n+1)` -/
def P6541863064097149786.Spec : Prop :=
  ∀ n, P6541863064097149786.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P2319924631238972113

`A025529(n+1)/(A064169(n+1)+A002805(n+1))`
-/

namespace A110566.P2319924631238972113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A064169 (n + 1) + A002805 (n + 1) : ℚ)

end

end A110566.P2319924631238972113

namespace A110566

/-- `A025529(n+1)/(A064169(n+1)+A002805(n+1))` -/
def P2319924631238972113.Spec : Prop :=
  ∀ n, P2319924631238972113.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P16548872958071597613

`(A025529(n+1)-A027457(n+1))/A002805(n+1)`
-/

namespace A110566.P16548872958071597613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) - A027457 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A110566.P16548872958071597613

namespace A110566

/-- `(A025529(n+1)-A027457(n+1))/A002805(n+1)` -/
def P16548872958071597613.Spec : Prop :=
  ∀ n, P16548872958071597613.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P14067549339001134541

`A025529(n+1)/A096617(n+1)*A120263(n+1)`
-/

namespace A110566.P14067549339001134541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A096617 (n + 1) : ℚ) * (A120263 (n + 1) : ℚ)

end

end A110566.P14067549339001134541

namespace A110566

/-- `A025529(n+1)/A096617(n+1)*A120263(n+1)` -/
def P14067549339001134541.Spec : Prop :=
  ∀ n, P14067549339001134541.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P8221605079732867216

`A175455(n+1)/(A001008(n+1)*A003418(n+1))`
-/

namespace A110566.P8221605079732867216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175455 (n + 1) : ℚ) / (A001008 (n + 1) * A003418 (n + 1) : ℚ)

end

end A110566.P8221605079732867216

namespace A110566

/-- `A175455(n+1)/(A001008(n+1)*A003418(n+1))` -/
def P8221605079732867216.Spec : Prop :=
  ∀ n, P8221605079732867216.a n = (A110566 (n + 1) : ℚ)

end A110566

/-! ## A110566.P17855616128918778095

`A175455(n+1)/(A002805(n+1)*A025529(n+1))`
-/

namespace A110566.P17855616128918778095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175455 (n + 1) : ℚ) / (A002805 (n + 1) * A025529 (n + 1) : ℚ)

end

end A110566.P17855616128918778095

namespace A110566

/-- `A175455(n+1)/(A002805(n+1)*A025529(n+1))` -/
def P17855616128918778095.Spec : Prop :=
  ∀ n, P17855616128918778095.a n = (A110566 (n + 1) : ℚ)

end A110566

/-!
# A110567: a(n) = n^(n+1) + 1.

The programs for A110567, the canonical program `A110567.P2741788888723200647` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110567 has offset 0).

The definition of A110567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)+1` (program `A110567.P2741788888723200647`, by `A110567.P2741788888723200647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110567.P11337023317662464047

`1+n^(n+1)`
-/

namespace A110567.P11337023317662464047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n ^ (n + 1)

end

end A110567.P11337023317662464047

namespace A110567

/-- `1+n^(n+1)` -/
def P11337023317662464047.Spec : Prop :=
  ∀ n, (P11337023317662464047.a n : ℤ) = A110567 n

theorem P11337023317662464047.correct : P11337023317662464047.Spec := by
  intro n
  simp only [A110567, Nat.add_sub_cancel, A110567.P11337023317662464047.a, A110567.P2741788888723200647.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110567

/-! ## A110567.P2741788888723200647

`n^(n+1)+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110567

/-- `n^(n+1)+1` -/
def P2741788888723200647.Spec : Prop :=
  ∀ n, (P2741788888723200647.a n : ℤ) = A110567 n

theorem P2741788888723200647.correct : P2741788888723200647.Spec := by
  intro n
  simp only [A110567]

end A110567

/-! ## A110567.P3857528612165880336

`-xor(n*n^n, -1)`
-/

namespace A110567.P3857528612165880336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n * n ^ n : ℤ) (-1)

end

end A110567.P3857528612165880336

namespace A110567

/-- `-xor(n*n^n, -1)` -/
def P3857528612165880336.Spec : Prop :=
  ∀ n, P3857528612165880336.a n = A110567 n

end A110567

/-! ## A110567.P890891807559158037

`ceil(xor(1, 2*n*n^n)/2)`
-/

namespace A110567.P890891807559158037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n * n ^ n) : ℚ) / 2⌉

end

end A110567.P890891807559158037

namespace A110567

/-- `ceil(xor(1, 2*n*n^n)/2)` -/
def P890891807559158037.Spec : Prop :=
  ∀ n, P890891807559158037.a n = A110567 n

end A110567

/-! ## A110567.P11449321644014892929

`record[1-floor(-(n-2)^(n-1))]`
-/

namespace A110567.P11449321644014892929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊-(((n : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110567.P11449321644014892929

namespace A110567

/-- `record[1-floor(-(n-2)^(n-1))]` -/
def P11449321644014892929.Spec : Prop :=
  ∀ n, P11449321644014892929.a n = A110567 n

end A110567

/-! ## A110567.P5379462755057044777

`∑[abs(Δ[A065440(n)])]`
-/

namespace A110567.P5379462755057044777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110567.P5379462755057044777

namespace A110567

/-- `∑[abs(Δ[A065440(n)])]` -/
def P5379462755057044777.Spec : Prop :=
  ∀ n, P5379462755057044777.a n = A110567 n

end A110567

/-! ## A110567.P7949800136873689053

`∑[abs(Δ[A085606(n)])]`
-/

namespace A110567.P7949800136873689053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085606 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110567.P7949800136873689053

namespace A110567

/-- `∑[abs(Δ[A085606(n)])]` -/
def P7949800136873689053.Spec : Prop :=
  ∀ n, P7949800136873689053.a n = A110567 n

end A110567

/-! ## A110567.P1043144934984876055

`xor(Δ[or(1, n)]+1, A065440(n+1))`
-/

namespace A110567.P1043144934984876055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) (A065440 (n + 1))

end

end A110567.P1043144934984876055

namespace A110567

/-- `xor(Δ[or(1, n)]+1, A065440(n+1))` -/
def P1043144934984876055.Spec : Prop :=
  ∀ n, P1043144934984876055.a n = A110567 n

end A110567

/-!
# A110568: Period 6: repeat [1, 0, 2, 2, 0, 1].

The programs for A110568, the canonical program `A110568.P3014510797621896198` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110568 has offset 0).

The definition of A110568 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A110568.anchor (n : ℕ) : A110568 n = (([1, 0, 2, 2, 0, 1].getD (n % 6) 0 : ℕ) : ℤ)` in `Proof.A110.A110568`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110568.P3014510797621896198

`a(n-6)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2, a(4)=0, a(5)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110568

/-- `a(n-6)` -/
def P3014510797621896198.Spec : Prop :=
  ∀ n, (P3014510797621896198.a n : ℤ) = A110568 n

theorem P3014510797621896198.correct : P3014510797621896198.Spec := by
  intro n
  simp only [A110568]

end A110568

/-!
# A110569: Period 6: repeat [2, 1, 3, 3, 1, 2].

The programs for A110569, the canonical program `A110569.P3393559627300077741` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110569 has offset 0).

The definition of A110569 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A110569.anchor (n : ℕ) : A110569 n = (([2, 1, 3, 3, 1, 2].getD (n % 6) 0 : ℕ) : ℤ)` in `Proof.A110.A110569`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110569.P3393559627300077741

`a(n-6)` with `a(0)=2, a(1)=1, a(2)=3, a(3)=3, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110569

/-- `a(n-6)` -/
def P3393559627300077741.Spec : Prop :=
  ∀ n, (P3393559627300077741.a n : ℤ) = A110569 n

theorem P3393559627300077741.correct : P3393559627300077741.Spec := by
  intro n
  simp only [A110569]

end A110569

/-!
# A110570: Triangle read by rows: T(n,0) = T(n,n) = 1 and for 0<k<n: T(n,k) = if k<=n/2 then T(n-k,0)+T(n-k,k) else T(k,n-k)+T(k,n).

The programs for A110570, there is no canonical definition to state claims against.
-/

/-! ## A110570.P11394918977406015578

`A049834(A271439(n)+A010054(n))`
-/

namespace A110570.P11394918977406015578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A271439 n + A010054 n).toNat

end

end A110570.P11394918977406015578

/-! ## A110570.P10536940051354443894

`A049834(gcd(A083920(n), A198954(n)))`
-/

namespace A110570.P10536940051354443894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (Int.gcd (A083920 n) (A198954 n))

end

end A110570.P10536940051354443894

/-! ## A110570.P1348058365120333023

`A049834(or(A010054(n), A271439(n)))`
-/

namespace A110570.P1348058365120333023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (Int.lor (A010054 n) (A271439 n)).toNat

end

end A110570.P1348058365120333023

/-! ## A110570.P5174342749879201382

`A049834(xor(A010054(n), A271439(n)))`
-/

namespace A110570.P5174342749879201382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (Int.xor (A010054 n) (A271439 n)).toNat

end

end A110570.P5174342749879201382

/-! ## A110570.P3825483173669457354

`A049834(A122797(n+1)-A157928(n))`
-/

namespace A110570.P3825483173669457354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A122797 (n + 1) - A157928 n).toNat

end

end A110570.P3825483173669457354

/-! ## A110570.P1642396660409232225

`A049834(ceil(A002061(n)/A014132(n+1)))`
-/

namespace A110570.P1642396660409232225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 ⌈(A002061 n : ℚ) / (A014132 (n + 1) : ℚ)⌉.toNat

end

end A110570.P1642396660409232225

/-! ## A110570.P14848947985684950230

`A049834(A198954(n)+A083920(n))`
-/

namespace A110570.P14848947985684950230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A198954 n + A083920 n).toNat

end

end A110570.P14848947985684950230

/-! ## A110570.P15447679976689808785

`A325355(A073060(n))`
-/

namespace A110570.P15447679976689808785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (A073060 n).toNat

end

end A110570.P15447679976689808785

/-! ## A110570.P18349861788405094133

`A325355(A098350(n+1))`
-/

namespace A110570.P18349861788405094133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (A098350 (n + 1)).toNat

end

end A110570.P18349861788405094133

/-!
# A110571: Sums of rows of the triangle in A110570.

The programs for A110571, there is no canonical definition to state claims against.
-/

/-! ## A110571.P15591552014531667675

`A049835(A028310(n))-(2*n)%(n+1)+n`
-/

namespace A110571.P15591552014531667675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049835 (A028310 n).toNat - ((2 * n % (n + 1) : ℕ) : ℤ) + (n : ℤ)

end

end A110571.P15591552014531667675

/-! ## A110571.P5947160897316169576

`A057427(n)+A049835(A028310(n))`
-/

namespace A110571.P5947160897316169576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A049835 (A028310 n).toNat

end

end A110571.P5947160897316169576

/-! ## A110571.P15810030053798977570

`A049835(A028310(n))-A057428(n)`
-/

namespace A110571.P15810030053798977570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049835 (A028310 n).toNat - A057428 n

end

end A110571.P15810030053798977570

/-! ## A110571.P6508097340817409795

`A049835(A028310(n))+A001221(A001316(n))`
-/

namespace A110571.P6508097340817409795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049835 (A028310 n).toNat + A001221 (A001316 n).toNat

end

end A110571.P6508097340817409795

/-! ## A110571.P9151395451052016320

`A049835(A028310(n))+A001222(A008578(n+1))`
-/

namespace A110571.P9151395451052016320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049835 (A028310 n).toNat + A001222 (A008578 (n + 1)).toNat

end

end A110571.P9151395451052016320

/-!
# A110572: Numbers k such that the string 555k is prime.

The programs for A110572, there is no canonical definition to state claims against.
-/

/-! ## A110572.P874617802581814953

`p?[eq[A232928(n+3), A284695(n+1)]]`
-/

namespace A110572.P874617802581814953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232928 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A110572.P874617802581814953

/-! ## A110572.P3263428372371293375

`∩[A179273(n+1), A171520(A324760(n+1))]`
-/

namespace A110572.P3263428372371293375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171520 (A324760 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110572.P3263428372371293375

/-!
# A110574: Binary strings that have 1's where 'odious numbers' occur, 0's elsewhere and every term ends with the n-th odious number index.

The programs for A110574, there is no canonical definition to state claims against.
-/

/-! ## A110574.P1132114512278882479

`A101556(comp[xor(n, 2*n)])`
-/

namespace A110574.P1132114512278882479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101556 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110574.P1132114512278882479

/-! ## A110574.P11163341178087628854

`A101556(eq[0, char[xor(n, 2*n)]])`
-/

namespace A110574.P11163341178087628854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101556 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A110574.P11163341178087628854

/-! ## A110574.P17181343331622652935

`A101556(lt[char[xor(n, 2*n)], 1])`
-/

namespace A110574.P17181343331622652935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101556 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A110574.P17181343331622652935

/-! ## A110574.P55505568822729081

`A101556(A000069(n+1))`
-/

namespace A110574.P55505568822729081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101556 (A000069 (n + 1)).toNat

end

end A110574.P55505568822729081

/-! ## A110574.P6686674765778359562

`A101556(lt[0, A010060(n)])`
-/

namespace A110574.P6686674765778359562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A110574.P6686674765778359562

/-!
# A110575: Numbers k that divide A110574(k); or k such that A110574(k) is a Niven number.

The programs for A110575, there is no canonical definition to state claims against.
-/

/-! ## A110575.P6063344861060805312

`or(A036288(A178119(n)), A237751(n+1))`
-/

namespace A110575.P6063344861060805312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036288 (A178119 n).toNat) (A237751 (n + 1))

end

end A110575.P6063344861060805312

/-!
# A110576: Sequence is {a(0,n)}, where a(m,0)=1, a(m,n) = a(m,n-1) + a(m-1,n), a(0,n+1) = a(n,n).

The programs for A110576, there is no canonical definition to state claims against.
-/

/-! ## A110576.P11559916914619160914

`A186444(A011965(n)+2)`
-/

namespace A110576.P11559916914619160914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186444 (A011965 n + 2).toNat

end

end A110576.P11559916914619160914

/-! ## A110576.P5467900937197731377

`A059995(13*A279573(n))`
-/

namespace A110576.P5467900937197731377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (13 * A279573 n).toNat

end

end A110576.P5467900937197731377

/-! ## A110576.P11013508244934530351

`A225545(n*A102893(n))`
-/

namespace A110576.P11013508244934530351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 ((n : ℤ) * A102893 n).toNat

end

end A110576.P11013508244934530351

/-!
# A110577: {a(1,n)}, where a(m,n) is defined in sequence A110576.

The programs for A110577, there is no canonical definition to state claims against.
-/

/-! ## A110577.P15109957925588175792

`∑[A110576(n)]`
-/

namespace A110577.P15109957925588175792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110577.P15109957925588175792

/-! ## A110577.P15300484236987341043

`A110576(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A110577.P15300484236987341043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110576 n + a (A023443 n).toNat

end

end A110577.P15300484236987341043

/-! ## A110577.P1755053451660169768

`Δ[A110578(n)]-A110576(n+1)`
-/

namespace A110577.P1755053451660169768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110576 (n + 1)

end

end A110577.P1755053451660169768

/-! ## A110577.P17620056307195002403

`Δ[A110578(n)-A110576(n)]-A110576(n)`
-/

namespace A110577.P17620056307195002403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110578 n - A110576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110576 n

end

end A110577.P17620056307195002403

/-! ## A110577.P2040615544116833153

`A110578(n+1)-(A110578(n)+A110576(n+1))`
-/

namespace A110577.P2040615544116833153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110578 (n + 1) - (A110578 n + A110576 (n + 1))

end

end A110577.P2040615544116833153

/-!
# A110578: {a(2,n)}, where a(m,n) is as defined in sequence A110576.

The programs for A110578, there is no canonical definition to state claims against.
-/

/-! ## A110578.P14767682108721152110

`∑[A110577(n)]`
-/

namespace A110578.P14767682108721152110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110578.P14767682108721152110

/-! ## A110578.P11923335341536646697

`∑[∑[A110576(n)]]`
-/

namespace A110578.P11923335341536646697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110578.P11923335341536646697

/-! ## A110578.P15454701372996169498

`Δ[A110579(n)]-A110577(n+1)`
-/

namespace A110578.P15454701372996169498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110577 (n + 1)

end

end A110578.P15454701372996169498

/-! ## A110578.P3168733471593169500

`Δ[A110579(n)-A110577(n)]-A110577(n)`
-/

namespace A110578.P3168733471593169500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110579 n - A110577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110577 n

end

end A110578.P3168733471593169500

/-! ## A110578.P10434597693820555471

`A110579(n+1)-(A110579(n)+A110577(n+1))`
-/

namespace A110578.P10434597693820555471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110579 (n + 1) - (A110579 n + A110577 (n + 1))

end

end A110578.P10434597693820555471

/-!
# A110579: {a(3,n)}, where a(m,n) is as defined in sequence A110576.

The programs for A110579, there is no canonical definition to state claims against.
-/

/-! ## A110579.P18140033079876578636

`∑[A110578(n)]`
-/

namespace A110579.P18140033079876578636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110579.P18140033079876578636

/-! ## A110579.P3465290440929632629

`∑[∑[A110577(n)]]`
-/

namespace A110579.P3465290440929632629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110579.P3465290440929632629

/-! ## A110579.P17685672594364784561

`∑[∑[∑[A110576(n)]]]`
-/

namespace A110579.P17685672594364784561
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110579.P17685672594364784561

/-! ## A110579.P4565609008924761188

`A110578(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A110579.P4565609008924761188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110578 n + a (A023443 n).toNat

end

end A110579.P4565609008924761188

/-! ## A110579.P13232311330277127464

`Δ[A110580(n)]-A110578(n+1)`
-/

namespace A110579.P13232311330277127464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110578 (n + 1)

end

end A110579.P13232311330277127464

/-! ## A110579.P3094512422419859236

`Δ[A110580(n)-A110578(n)]-A110578(n)`
-/

namespace A110579.P3094512422419859236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110580 n - A110578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110578 n

end

end A110579.P3094512422419859236

/-! ## A110579.P18334289628820654331

`A110580(n+1)-(A110580(n)+A110578(n+1))`
-/

namespace A110579.P18334289628820654331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110580 (n + 1) - (A110580 n + A110578 (n + 1))

end

end A110579.P18334289628820654331

/-!
# A110580: {a(4,n)}, where a(m,n) is as defined in sequence A110576.

The programs for A110580, there is no canonical definition to state claims against.
-/

/-! ## A110580.P7065836815321895632

`∑[A110579(n)]`
-/

namespace A110580.P7065836815321895632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110580.P7065836815321895632

/-! ## A110580.P14233176828683394509

`∑[∑[A110578(n)]]`
-/

namespace A110580.P14233176828683394509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110580.P14233176828683394509

/-! ## A110580.P13870486236891493737

`∑[∑[∑[A110577(n)]]]`
-/

namespace A110580.P13870486236891493737
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110580.P13870486236891493737

/-! ## A110580.P15458780748793922831

`∑[∑[∑[∑[A110576(n)]]]]`
-/

namespace A110580.P15458780748793922831
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110576 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110580.P15458780748793922831

/-! ## A110580.P16491022012003026448

`a(n-1)+1-(A001222(A002476(n+1))-A110579(n))` with `a(0)=1`
-/

namespace A110580.P16491022012003026448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A001222 (A002476 (n + 1)).toNat - A110579 n)

end

end A110580.P16491022012003026448

/-!
# A110581: Primes p such that 2p-1 is prime, but 4p-3 is not prime.

The programs for A110581, the canonical program `A110581.P9399505698075329016` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110581 has offset 1).

The definition of A110581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110581.P16878871777790328254

`A065091(eq[2, A181715(n+1)])`
-/

namespace A110581.P16878871777790328254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110581.P16878871777790328254

namespace A110581

/-- `A065091(eq[2, A181715(n+1)])` -/
def P16878871777790328254.Spec : Prop :=
  ∀ n, P16878871777790328254.a n = A110581 (n + 1)

end A110581

/-! ## A110581.P4643659621164129477

`p?[(A181715(n+1)-1)*A000040(n+1)]`
-/

namespace A110581.P4643659621164129477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181715 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110581.P4643659621164129477

namespace A110581

/-- `p?[(A181715(n+1)-1)*A000040(n+1)]` -/
def P4643659621164129477.Spec : Prop :=
  ∀ n, P4643659621164129477.a n = A110581 (n + 1)

end A110581

/-! ## A110581.P18390676542669071323

`p?[(A181715(n+1)-1)*A008578(n+2)]`
-/

namespace A110581.P18390676542669071323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181715 (n + 1) - 1) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110581.P18390676542669071323

namespace A110581

/-- `p?[(A181715(n+1)-1)*A008578(n+2)]` -/
def P18390676542669071323.Spec : Prop :=
  ∀ n, P18390676542669071323.a n = A110581 (n + 1)

end A110581

/-! ## A110581.P9399505698075329016

`p?[A014682(A307390(n+1)+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110581

/-- `p?[A014682(A307390(n+1)+1)]` -/
def P9399505698075329016.Spec : Prop :=
  ∀ n, P9399505698075329016.a n = A110581 (n + 1)

theorem P9399505698075329016.correct : P9399505698075329016.Spec := by
  intro n
  simp only [A110581, Nat.add_sub_cancel]

end A110581

/-! ## A110581.P10018579063950253575

`p?[A014682(A000203(A307390(n+1)))]`
-/

namespace A110581.P10018579063950253575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000203 (A307390 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110581.P10018579063950253575

namespace A110581

/-- `p?[A014682(A000203(A307390(n+1)))]` -/
def P10018579063950253575.Spec : Prop :=
  ∀ n, P10018579063950253575.a n = A110581 (n + 1)

end A110581

/-! ## A110581.P12563727559890321751

`eq[2, A285700(n+1)]+1`
-/

namespace A110581.P12563727559890321751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110581.P12563727559890321751

namespace A110581

/-- `eq[2, A285700(n+1)]+1` -/
def P12563727559890321751.Spec : Prop :=
  ∀ n, (P12563727559890321751.a n : ℤ) = A110581 (n + 1)

end A110581

/-! ## A110581.P6208852605456153851

`eq[2, A285700(A028310(n))]`
-/

namespace A110581.P6208852605456153851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110581.P6208852605456153851

namespace A110581

/-- `eq[2, A285700(A028310(n))]` -/
def P6208852605456153851.Spec : Prop :=
  ∀ n, (P6208852605456153851.a n : ℤ) = A110581 (n + 1)

end A110581

/-! ## A110581.P11135887413416073759

`A093074(eq[2, A285700(n+1)])`
-/

namespace A110581.P11135887413416073759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110581.P11135887413416073759

namespace A110581

/-- `A093074(eq[2, A285700(n+1)])` -/
def P11135887413416073759.Spec : Prop :=
  ∀ n, P11135887413416073759.a n = A110581 (n + 1)

end A110581

/-! ## A110581.P6617352494721304438

`A151800(eq[2, A285700(n+1)])`
-/

namespace A110581.P6617352494721304438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110581.P6617352494721304438

namespace A110581

/-- `A151800(eq[2, A285700(n+1)])` -/
def P6617352494721304438.Spec : Prop :=
  ∀ n, P6617352494721304438.a n = A110581 (n + 1)

end A110581

/-! ## A110581.P14437700080417235311

`p?[(A285700(n+1)-1)*A061397(n+1)]`
-/

namespace A110581.P14437700080417235311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285700 (n + 1) - 1) * A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110581.P14437700080417235311

namespace A110581

/-- `p?[(A285700(n+1)-1)*A061397(n+1)]` -/
def P14437700080417235311.Spec : Prop :=
  ∀ n, P14437700080417235311.a n = A110581 (n + 1)

end A110581

/-!
# A110582: Triangle, read by rows, where the g.f. of diagonal n, D_n(x), is generated from the g.f. of row n-1, R_{n-1}(x), by D_n(x) = R_{n-1}(x)/(1-x)^2 for n>0, with D_0(x) = 1/(1-x)^2.

The programs for A110582, there is no canonical definition to state claims against.
-/

/-! ## A110582.P6997647246894920794

`A172467(n+1)+A124762(A281891(n))`
-/

namespace A110582.P6997647246894920794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172467 (n + 1) + A124762 (A281891 n).toNat

end

end A110582.P6997647246894920794

/-! ## A110582.P17269408963220817556

`A186747(A233543(n+2))+A172467(n+1)`
-/

namespace A110582.P17269408963220817556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A233543 (n + 2)).toNat + A172467 (n + 1)

end

end A110582.P17269408963220817556

/-! ## A110582.P4824121278172848757

`A000005(A143453(n)^A134520(n))`
-/

namespace A110582.P4824121278172848757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A143453 n : ℚ) ^ (A134520 n : ℤ))).toNat

end

end A110582.P4824121278172848757

/-! ## A110582.P6925342610840379092

`A162453(n+1)-A338117(A347811(n))`
-/

namespace A110582.P6925342610840379092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162453 (n + 1) - A338117 (A347811 n).toNat

end

end A110582.P6925342610840379092

/-! ## A110582.P16162368320425761123

`A326499(A234350(n+1))+A172467(n+1)`
-/

namespace A110582.P16162368320425761123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326499 ((A234350 (n + 1)).toNat + 51) + A172467 (n + 1)

end

end A110582.P16162368320425761123

/-!
# A110583: Numbers n such that the string 888n is prime.

The programs for A110583, there is no canonical definition to state claims against.
-/

/-! ## A110583.P10162612570173370113

`A000040(lt[A158452(2*n+3), A049345(n)])`
-/

namespace A110583.P10162612570173370113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158452 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A110583.P10162612570173370113

/-! ## A110583.P8492626784752925105

`A000040(lt[A158452(2*n+3), A001743(n+1)])`
-/

namespace A110583.P8492626784752925105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158452 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A110583.P8492626784752925105

/-! ## A110583.P16530651380190349077

`lt[A070534(A282600(3*n+4)), A208575(n+4)]`
-/

namespace A110583.P16530651380190349077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070534 (A282600 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110583.P16530651380190349077

/-!
# A110585: Smallest number k of consecutive primes > p_n such that p_n^2 * p_(n+1) * p_(n+2) * ... * p_(n+k) is an abundant number, where p_n is the n-th prime.

The programs for A110585, there is no canonical definition to state claims against.
-/

/-! ## A110585.P6661294026901751895

`A126105(n+1)-(n+1)`
-/

namespace A110585.P6661294026901751895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126105 (n + 1) - (n + 1 : ℤ)

end

end A110585.P6661294026901751895

/-! ## A110585.P6836852652187003408

`abs(A126105(n+1)+A001478(n+1))`
-/

namespace A110585.P6836852652187003408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126105 (n + 1) + A001478 (n + 1)|

end

end A110585.P6836852652187003408

/-! ## A110585.P1108298600392734912

`A023443(A126105(n+1)-n)`
-/

namespace A110585.P1108298600392734912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A126105 (n + 1) - (n : ℤ)).toNat

end

end A110585.P1108298600392734912

/-! ## A110585.P13299617319154233384

`A028310(A126105(n+1)+A001478(n+1))`
-/

namespace A110585.P13299617319154233384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A126105 (n + 1) + A001478 (n + 1)).toNat

end

end A110585.P13299617319154233384

/-! ## A110585.P9904274782926504248

`A108227(n+1)-A016005(A032437(n+1))`
-/

namespace A110585.P9904274782926504248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108227 (n + 1) - A016005 (A032437 (n + 1)).toNat

end

end A110585.P9904274782926504248

/-!
# A110586: Squares of the form 6p+7 for p prime (A110015) that are squares of a prime.

The programs for A110586, there is no canonical definition to state claims against.
-/

/-! ## A110586.P8599645812361284965

`A110587(n+1)²`
-/

namespace A110586.P8599645812361284965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110587 (n + 1) ^ 2

end

end A110586.P8599645812361284965

/-! ## A110586.P16441104852821264751

`p?[A110016(n+1)]²`
-/

namespace A110586.P16441104852821264751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A110586.P16441104852821264751

/-! ## A110586.P10213119562087198771

`∩[A045344(n+1), A110016(n+1)]²`
-/

namespace A110586.P10213119562087198771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110586.P10213119562087198771

/-! ## A110586.P497354120320561916

`∩[A001248(n+1), A110015(n+1)]`
-/

namespace A110586.P497354120320561916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110586.P497354120320561916

/-! ## A110586.P3293863198209187489

`∩[A110015(n+1), A280076(n+1)]`
-/

namespace A110586.P3293863198209187489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110586.P3293863198209187489

/-! ## A110586.P7974288276888584199

`∩[A000040(n+1), A110016(n+1)]²`
-/

namespace A110586.P7974288276888584199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110586.P7974288276888584199

/-! ## A110586.P7904132490549329547

`∩[A006005(n+1), A110016(n+1)]²`
-/

namespace A110586.P7904132490549329547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110586.P7904132490549329547

/-! ## A110586.P4719651437568024506

`∩[A008578(n+1), A110016(n+1)]²`
-/

namespace A110586.P4719651437568024506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110586.P4719651437568024506

/-! ## A110586.P12487693448206811719

`∩[A064599(n+1), A110015(n+1)]`
-/

namespace A110586.P12487693448206811719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110586.P12487693448206811719

/-! ## A110586.P12854602004083684091

`∩[A033946(n+1), A110016(n+1)]²`
-/

namespace A110586.P12854602004083684091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110586.P12854602004083684091

/-! ## A110586.P18100758734926528622

`∩[A046022(n+1), A110016(n+1)]²`
-/

namespace A110586.P18100758734926528622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110586.P18100758734926528622

/-! ## A110586.P1731982396038534449

`∩[A051948(n+1), A110016(n+1)]²`
-/

namespace A110586.P1731982396038534449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110586.P1731982396038534449

/-! ## A110586.P2531942353256239839

`∩[A053813(n+1), A110016(n+1)]²`
-/

namespace A110586.P2531942353256239839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110586.P2531942353256239839

/-! ## A110586.P6897969426897504933

`∩[A055977(n+1), A110016(n+1)]²`
-/

namespace A110586.P6897969426897504933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110586.P6897969426897504933

/-! ## A110586.P10893501329410793944

`∩[A053577(n+1), A110016(n+1)]²`
-/

namespace A110586.P10893501329410793944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110586.P10893501329410793944

/-! ## A110586.P4826831458433457137

`∩[A110015(n+1), A247078(n+1)]`
-/

namespace A110586.P4826831458433457137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110586.P4826831458433457137

/-! ## A110586.P1190194471791090862

`∩[A076794(n+1), A110015(n+1)]`
-/

namespace A110586.P1190194471791090862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110586.P1190194471791090862

/-! ## A110586.P7446879898574782701

`record[A006530(sqrt(A110015(n+1)))²]`
-/

namespace A110586.P7446879898574782701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A110015 (n + 1) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110586.P7446879898574782701

/-! ## A110586.P13604302225997652683

`record[A020639(sqrt(A110015(n+1)))²]`
-/

namespace A110586.P13604302225997652683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A110015 (n + 1) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110586.P13604302225997652683

/-!
# A110587: Primes p such that p^2 = 6*q + 7, where q is prime.

The programs for A110587, there is no canonical definition to state claims against.
-/

/-! ## A110587.P14191309752393582806

`sqrt(A110586(n+1))`
-/

namespace A110587.P14191309752393582806
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110586 (n + 1) : ℝ)

end

end A110587.P14191309752393582806

/-! ## A110587.P5884816052873534889

`p?[A110016(n+1)]`
-/

namespace A110587.P5884816052873534889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110587.P5884816052873534889

/-! ## A110587.P13832495298871946639

`∩[A045344(n+1), A110016(n+1)]`
-/

namespace A110587.P13832495298871946639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P13832495298871946639

/-! ## A110587.P15436589488533283219

`∩[A000040(n+1), A110016(n+1)]`
-/

namespace A110587.P15436589488533283219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P15436589488533283219

/-! ## A110587.P6677919388048190872

`∩[A006005(n+1), A110016(n+1)]`
-/

namespace A110587.P6677919388048190872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P6677919388048190872

/-! ## A110587.P3968131722286715201

`∩[A008578(n+1), A110016(n+1)]`
-/

namespace A110587.P3968131722286715201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P3968131722286715201

/-! ## A110587.P14195757159019930986

`∩[A033946(n+1), A110016(n+1)]`
-/

namespace A110587.P14195757159019930986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P14195757159019930986

/-! ## A110587.P11629157813429567255

`∩[A046022(n+1), A110016(n+1)]`
-/

namespace A110587.P11629157813429567255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P11629157813429567255

/-! ## A110587.P5263936183807502020

`∩[A051948(n+1), A110016(n+1)]`
-/

namespace A110587.P5263936183807502020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P5263936183807502020

/-! ## A110587.P809810114837124555

`∩[A053813(n+1), A110016(n+1)]`
-/

namespace A110587.P809810114837124555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P809810114837124555

/-! ## A110587.P10986607422974154298

`∩[A062972(n+1), A110016(n+1)]`
-/

namespace A110587.P10986607422974154298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P10986607422974154298

/-! ## A110587.P12429231715134541124

`∩[A067126(n+1), A110016(n+1)]`
-/

namespace A110587.P12429231715134541124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P12429231715134541124

/-! ## A110587.P16468621606363254112

`∩[A326715(n+1), A110016(n+1)]`
-/

namespace A110587.P16468621606363254112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P16468621606363254112

/-! ## A110587.P7619105697119544109

`∩[A055977(n+1), A110016(n+1)]`
-/

namespace A110587.P7619105697119544109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P7619105697119544109

/-! ## A110587.P6087479182463334243

`∩[A075763(n+1), A110016(n+1)]`
-/

namespace A110587.P6087479182463334243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P6087479182463334243

/-! ## A110587.P4919514672869990607

`∩[A053577(n+1), A110016(n+1)]`
-/

namespace A110587.P4919514672869990607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110587.P4919514672869990607

/-! ## A110587.P9300044289337223246

`A006530(root(A110586(n+1), 2))`
-/

namespace A110587.P9300044289337223246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A110586 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A110587.P9300044289337223246

/-! ## A110587.P3972481022478913282

`A020639(root(A110586(n+1), 2))`
-/

namespace A110587.P3972481022478913282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A110586 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A110587.P3972481022478913282

/-! ## A110587.P16599158956274290872

`filter[A110016(n+1), A010051(#)]`
-/

namespace A110587.P16599158956274290872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A110587.P16599158956274290872

/-!
# A110588: Squares of the form 2*p+3 that are squares of primes.

The programs for A110588, there is no canonical definition to state claims against.
-/

/-! ## A110588.P8261237567610506268

`A110589(n+1)²`
-/

namespace A110588.P8261237567610506268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110589 (n + 1) ^ 2

end

end A110588.P8261237567610506268

/-! ## A110588.P12166073162187641946

`A110589(2*(n+1)-(n+1))^2`
-/

namespace A110588.P12166073162187641946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110589 (2 * (n + 1) - (n + 1)) ^ 2

end

end A110588.P12166073162187641946

/-! ## A110588.P17432609589320014950

`A110589(A000027(n+1))*A110589(n+1)`
-/

namespace A110588.P17432609589320014950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110589 (A000027 (n + 1)).toNat * A110589 (n + 1)

end

end A110588.P17432609589320014950

/-! ## A110588.P17884404269667083910

`p?[A109358(n+1)]²`
-/

namespace A110588.P17884404269667083910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A110588.P17884404269667083910

/-! ## A110588.P6563747432199147941

`p?[A109358(n+1)]*A110589(n+1)`
-/

namespace A110588.P6563747432199147941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A110589 (n + 1)

end

end A110588.P6563747432199147941

/-! ## A110588.P17509018890716649396

`∩[A001248(n+1), A109367(n+1)]`
-/

namespace A110588.P17509018890716649396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110588.P17509018890716649396

/-! ## A110588.P10239661617140860011

`∩[A109367(n+1), A280076(n+1)]`
-/

namespace A110588.P10239661617140860011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110588.P10239661617140860011

/-! ## A110588.P10230133276290006767

`∩[A000040(n+1), A109358(n+1)]²`
-/

namespace A110588.P10230133276290006767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P10230133276290006767

/-! ## A110588.P7721665647335147795

`∩[A006005(n+1), A109358(n+1)]²`
-/

namespace A110588.P7721665647335147795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P7721665647335147795

/-! ## A110588.P16654379979373012164

`∩[A008578(n+1), A109358(n+1)]²`
-/

namespace A110588.P16654379979373012164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P16654379979373012164

/-! ## A110588.P5287839992036912052

`∩[A033946(n+1), A109358(n+1)]²`
-/

namespace A110588.P5287839992036912052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P5287839992036912052

/-! ## A110588.P10353995254699783004

`∩[A046022(n+1), A109358(n+1)]²`
-/

namespace A110588.P10353995254699783004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P10353995254699783004

/-! ## A110588.P3730935939352298799

`∩[A051948(n+1), A109358(n+1)]²`
-/

namespace A110588.P3730935939352298799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P3730935939352298799

/-! ## A110588.P15239319833843446274

`∩[A053813(n+1), A109358(n+1)]²`
-/

namespace A110588.P15239319833843446274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P15239319833843446274

/-! ## A110588.P9101040045187440663

`∩[A062972(n+1), A109358(n+1)]²`
-/

namespace A110588.P9101040045187440663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P9101040045187440663

/-! ## A110588.P8597662470968811667

`∩[A067126(n+1), A109358(n+1)]²`
-/

namespace A110588.P8597662470968811667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P8597662470968811667

/-! ## A110588.P4918204918050386586

`∩[A109358(n+1), A193339(n+1)]²`
-/

namespace A110588.P4918204918050386586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P4918204918050386586

/-! ## A110588.P5998647765923525555

`∩[A064599(n+1), A109367(n+1)]`
-/

namespace A110588.P5998647765923525555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110588.P5998647765923525555

/-! ## A110588.P2325105772847736348

`∩[A053577(n+1), A109358(n+1)]²`
-/

namespace A110588.P2325105772847736348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110588.P2325105772847736348

/-!
# A110589: Primes p such that 2*q+3 = p^2, where q is prime.

The programs for A110589, there is no canonical definition to state claims against.
-/

/-! ## A110589.P9222022277285296895

`sqrt(A110588(n+1))`
-/

namespace A110589.P9222022277285296895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110588 (n + 1) : ℝ)

end

end A110589.P9222022277285296895

/-! ## A110589.P17948705054320284972

`p?[A109358(n+1)]`
-/

namespace A110589.P17948705054320284972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110589.P17948705054320284972

/-! ## A110589.P16463102491995054042

`∩[A000040(n+1), A109358(n+1)]`
-/

namespace A110589.P16463102491995054042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P16463102491995054042

/-! ## A110589.P10929023739993920036

`∩[A006005(n+1), A109358(n+1)]`
-/

namespace A110589.P10929023739993920036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P10929023739993920036

/-! ## A110589.P4821524101400565488

`∩[A008578(n+1), A109358(n+1)]`
-/

namespace A110589.P4821524101400565488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P4821524101400565488

/-! ## A110589.P13095671927429283237

`∩[A033946(n+1), A109358(n+1)]`
-/

namespace A110589.P13095671927429283237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P13095671927429283237

/-! ## A110589.P6133559200204280517

`∩[A046022(n+1), A109358(n+1)]`
-/

namespace A110589.P6133559200204280517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P6133559200204280517

/-! ## A110589.P11339245979135172421

`∩[A051948(n+1), A109358(n+1)]`
-/

namespace A110589.P11339245979135172421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P11339245979135172421

/-! ## A110589.P2237157134213635659

`∩[A053813(n+1), A109358(n+1)]`
-/

namespace A110589.P2237157134213635659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P2237157134213635659

/-! ## A110589.P15551680554952641927

`∩[A062972(n+1), A109358(n+1)]`
-/

namespace A110589.P15551680554952641927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P15551680554952641927

/-! ## A110589.P7808801017515665790

`∩[A067126(n+1), A109358(n+1)]`
-/

namespace A110589.P7808801017515665790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P7808801017515665790

/-! ## A110589.P13472440077008739292

`∩[A109358(n+1), A140826(n+1)]`
-/

namespace A110589.P13472440077008739292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P13472440077008739292

/-! ## A110589.P14933581734775811656

`∩[A109358(n+1), A193339(n+1)]`
-/

namespace A110589.P14933581734775811656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P14933581734775811656

/-! ## A110589.P4411606233194890985

`∩[A326715(n+1), A109358(n+1)]`
-/

namespace A110589.P4411606233194890985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P4411606233194890985

/-! ## A110589.P14706373573822847372

`∩[A053577(n+1), A109358(n+1)]`
-/

namespace A110589.P14706373573822847372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P14706373573822847372

/-! ## A110589.P3677262946160940922

`∩[A055977(n+1), A109358(n+1)]`
-/

namespace A110589.P3677262946160940922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P3677262946160940922

/-! ## A110589.P8135848523261546632

`∩[A109358(n+1), A117346(n+1)]`
-/

namespace A110589.P8135848523261546632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110589.P8135848523261546632

/-! ## A110589.P8365805759916584799

`A006530(root(A110588(n+1), 2))`
-/

namespace A110589.P8365805759916584799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A110588 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A110589.P8365805759916584799

/-! ## A110589.P1102833044872623557

`filter[A109358(n+1), A010051(#)]`
-/

namespace A110589.P1102833044872623557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A110589.P1102833044872623557

/-!
# A110590: Balanced numbers k (A020492) such that phi(k) is not divisible by 12.

The programs for A110590, there is no canonical definition to state claims against.
-/

/-! ## A110590.P13209386510568932825

`∩[A129523(n+1), A020492(A129523(n+1))]`
-/

namespace A110590.P13209386510568932825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (A129523 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110590.P13209386510568932825

/-! ## A110590.P11846137442516364469

`A020492(C(A000677(n), 10)+n+1)%A034820(n)`
-/

namespace A110590.P11846137442516364469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020492 (Nat.choose (A000677 n).toNat 10 + n + 1)) (A034820 n)

end

end A110590.P11846137442516364469

/-!
# A110591: Number of digits in base-4 representation of n.

The programs for A110591, the canonical program `A110591.P7978417498770772823` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110591 has offset 0).

The definition of A110591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110591.P15071263471357489624

`ceil(log2(sqrt(or(2, n))))`
-/

namespace A110591.P15071263471357489624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (Nat.lor 2 n : ℝ))⌉

end

end A110591.P15071263471357489624

namespace A110591

/-- `ceil(log2(sqrt(or(2, n))))` -/
def P15071263471357489624.Spec : Prop :=
  ∀ n, P15071263471357489624.a n = A110591 n

end A110591

/-! ## A110591.P9178308207319586244

`ceil(abs(log2(acot(sqrt(n)))))`
-/

namespace A110591.P9178308207319586244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 (SequenceMachineLib.acot (Real.sqrt (n : ℝ)))|⌉

end

end A110591.P9178308207319586244

namespace A110591

/-- `ceil(abs(log2(acot(sqrt(n)))))` -/
def P9178308207319586244.Spec : Prop :=
  ∀ n, P9178308207319586244.a n = A110591 n

end A110591

/-! ## A110591.P1306060986081403235

`∑[char[xor(n, -n)²]]`
-/

namespace A110591.P1306060986081403235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ)) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110591.P1306060986081403235

namespace A110591

/-- `∑[char[xor(n, -n)²]]` -/
def P1306060986081403235.Spec : Prop :=
  ∀ n, (P1306060986081403235.a n : ℤ) = A110591 n

end A110591

/-! ## A110591.P12367003375815049665

`round(log2(sqrt(2*or(1, n))))`
-/

namespace A110591.P12367003375815049665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (2 * Nat.lor 1 n : ℝ)))

end

end A110591.P12367003375815049665

namespace A110591

/-- `round(log2(sqrt(2*or(1, n))))` -/
def P12367003375815049665.Spec : Prop :=
  ∀ n, P12367003375815049665.a n = A110591 n

end A110591

/-! ## A110591.P10101881872989585698

`∑[char[and(n, 1-n)²]]`
-/

namespace A110591.P10101881872989585698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ)) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110591.P10101881872989585698

namespace A110591

/-- `∑[char[and(n, 1-n)²]]` -/
def P10101881872989585698.Spec : Prop :=
  ∀ n, (P10101881872989585698.a n : ℤ) = A110591 n

end A110591

/-! ## A110591.P15114589722271974600

`dr(round(log2(Δ[sqrt(2*n)])))`
-/

namespace A110591.P15114589722271974600
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n)))

end

end A110591.P15114589722271974600

namespace A110591

/-- `dr(round(log2(Δ[sqrt(2*n)])))` -/
def P15114589722271974600.Spec : Prop :=
  ∀ n, (P15114589722271974600.a n : ℤ) = A110591 n

end A110591

/-! ## A110591.P7978417498770772823

`a(floor(n/4))+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110591

/-- `a(floor(n/4))+1` -/
def P7978417498770772823.Spec : Prop :=
  ∀ n, (P7978417498770772823.a n : ℤ) = A110591 n

theorem P7978417498770772823.correct : P7978417498770772823.Spec := by
  intro n
  simp only [A110591]

end A110591

/-! ## A110591.P3868385487317255938

`char[4^(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A110591.P3868385487317255938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A110591.P3868385487317255938

namespace A110591

/-- `char[4^(n+1)]+a(n-1)` -/
def P3868385487317255938.Spec : Prop :=
  ∀ n, (P3868385487317255938.a n : ℤ) = A110591 n

end A110591

/-! ## A110591.P10907729363547404373

`A070939(floor(sqrt(n)))`
-/

namespace A110591.P10907729363547404373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.sqrt n)

end

end A110591.P10907729363547404373

namespace A110591

/-- `A070939(floor(sqrt(n)))` -/
def P10907729363547404373.Spec : Prop :=
  ∀ n, P10907729363547404373.a n = A110591 n

end A110591

/-! ## A110591.P2565135182899183352

`ceil(A070939(n)/2)`
-/

namespace A110591.P2565135182899183352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070939 n : ℚ) / 2⌉

end

end A110591.P2565135182899183352

namespace A110591

/-- `ceil(A070939(n)/2)` -/
def P2565135182899183352.Spec : Prop :=
  ∀ n, P2565135182899183352.a n = A110591 n

end A110591

/-! ## A110591.P1216629191795744054

`A065033(ceil(log2(n+1)))`
-/

namespace A110591.P1216629191795744054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A110591.P1216629191795744054

namespace A110591

/-- `A065033(ceil(log2(n+1)))` -/
def P1216629191795744054.Spec : Prop :=
  ∀ n, P1216629191795744054.a n = A110591 n

end A110591

/-! ## A110591.P2920463446532968477

`floor(log2(sqrt(A214864(n+1))))`
-/

namespace A110591.P2920463446532968477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (A214864 (n + 1) : ℝ))⌋

end

end A110591.P2920463446532968477

namespace A110591

/-- `floor(log2(sqrt(A214864(n+1))))` -/
def P2920463446532968477.Spec : Prop :=
  ∀ n, P2920463446532968477.a n = A110591 n

end A110591

/-! ## A110591.P8049718096988961096

`∑[char[A000079(n+1)²]]+1`
-/

namespace A110591.P8049718096988961096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A110591.P8049718096988961096

namespace A110591

/-- `∑[char[A000079(n+1)²]]+1` -/
def P8049718096988961096.Spec : Prop :=
  ∀ n, (P8049718096988961096.a n : ℤ) = A110591 n

end A110591

/-! ## A110591.P6582430412893480954

`∑[char[A000079(2*(n+1))]]+1`
-/

namespace A110591.P6582430412893480954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A110591.P6582430412893480954

namespace A110591

/-- `∑[char[A000079(2*(n+1))]]+1` -/
def P6582430412893480954.Spec : Prop :=
  ∀ n, (P6582430412893480954.a n : ℤ) = A110591 n

end A110591

/-! ## A110591.P12344313165222842440

`A004526(A070939(n)+1)`
-/

namespace A110591.P12344313165222842440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070939 n + 1).toNat

end

end A110591.P12344313165222842440

namespace A110591

/-- `A004526(A070939(n)+1)` -/
def P12344313165222842440.Spec : Prop :=
  ∀ n, P12344313165222842440.a n = A110591 n

end A110591

/-! ## A110591.P13938805982885633829

`A389231(A070939(n)+1)`
-/

namespace A110591.P13938805982885633829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389231 (A070939 n + 1).toNat

end

end A110591.P13938805982885633829

namespace A110591

/-- `A389231(A070939(n)+1)` -/
def P13938805982885633829.Spec : Prop :=
  ∀ n, P13938805982885633829.a n = A110591 n

end A110591

/-! ## A110591.P13691852670435742511

`A008619(A070939(n)-1)`
-/

namespace A110591.P13691852670435742511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A070939 n - 1).toNat

end

end A110591.P13691852670435742511

namespace A110591

/-- `A008619(A070939(n)-1)` -/
def P13691852670435742511.Spec : Prop :=
  ∀ n, P13691852670435742511.a n = A110591 n

end A110591

/-! ## A110591.P16616783412533020453

`A002265(A004277(ceil(log2(n+1)))+3)`
-/

namespace A110591.P16616783412533020453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004277 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat + 3).toNat

end

end A110591.P16616783412533020453

namespace A110591

/-- `A002265(A004277(ceil(log2(n+1)))+3)` -/
def P16616783412533020453.Spec : Prop :=
  ∀ n, P16616783412533020453.a n = A110591 n

end A110591

/-! ## A110591.P15234947975867595961

`A000360(A003817(n)+2)`
-/

namespace A110591.P15234947975867595961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A003817 n + 2).toNat

end

end A110591.P15234947975867595961

namespace A110591

/-- `A000360(A003817(n)+2)` -/
def P15234947975867595961.Spec : Prop :=
  ∀ n, P15234947975867595961.a n = A110591 n

end A110591

/-! ## A110591.P6483088281773970122

`A000360(2*A053644(n))`
-/

namespace A110591.P6483088281773970122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * A053644 n).toNat

end

end A110591.P6483088281773970122

namespace A110591

/-- `A000360(2*A053644(n))` -/
def P6483088281773970122.Spec : Prop :=
  ∀ n, P6483088281773970122.a n = A110591 n

end A110591

/-!
# A110592: Number of digits in base-5 representation of n. String length of A007091.

The programs for A110592, the canonical program `A110592.P9283368715149108473` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110592 has offset 0).

The definition of A110592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110592.P9283368715149108473

`∑[char[5^(n+1)]]+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110592

/-- `∑[char[5^(n+1)]]+1` -/
def P9283368715149108473.Spec : Prop :=
  ∀ n, (P9283368715149108473.a n : ℤ) = A110592 n

theorem P9283368715149108473.correct : P9283368715149108473.Spec := by
  intro n
  simp only [A110592]

end A110592

/-! ## A110592.P13905083296614097713

`dr(∑[char[5*a(n-1)]]+1)` with `a(0)=5`
-/

namespace A110592.P13905083296614097713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  5 * f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A110592.P13905083296614097713

namespace A110592

/-- `dr(∑[char[5*a(n-1)]]+1)` -/
def P13905083296614097713.Spec : Prop :=
  ∀ n, (P13905083296614097713.a n : ℤ) = A110592 n

end A110592

/-! ## A110592.P3151015709047378972

`∑[char[(5^n)%A081105(n)]]`
-/

namespace A110592.P3151015709047378972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 ^ n : ℤ) (A081105 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110592.P3151015709047378972

namespace A110592

/-- `∑[char[(5^n)%A081105(n)]]` -/
def P3151015709047378972.Spec : Prop :=
  ∀ n, (P3151015709047378972.a n : ℤ) = A110592 n

end A110592

/-! ## A110592.P548035307836009381

`∑[char[5^n*A000196(n)²%3]]`
-/

namespace A110592.P548035307836009381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * Int.tmod (A000196 n ^ 2) 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110592.P548035307836009381

namespace A110592

/-- `∑[char[5^n*A000196(n)²%3]]` -/
def P548035307836009381.Spec : Prop :=
  ∀ n, (P548035307836009381.a n : ℤ) = A110592 n

end A110592

/-! ## A110592.P9416316482933613785

`∑[char[char[2*n]*A256693(n+2)]]`
-/

namespace A110592.P9416316482933613785
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) * A256693 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110592.P9416316482933613785

namespace A110592

/-- `∑[char[char[2*n]*A256693(n+2)]]` -/
def P9416316482933613785.Spec : Prop :=
  ∀ n, (P9416316482933613785.a n : ℤ) = A110592 n

end A110592

/-! ## A110592.P16624875046978245592

`A081604(ceil(sqrt(A007091(n))))`
-/

namespace A110592.P16624875046978245592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 ⌈Real.sqrt (A007091 n : ℝ)⌉.toNat

end

end A110592.P16624875046978245592

namespace A110592

/-- `A081604(ceil(sqrt(A007091(n))))` -/
def P16624875046978245592.Spec : Prop :=
  ∀ n, P16624875046978245592.a n = A110592 n

end A110592

/-! ## A110592.P10039912899415712112

`∑{digits}[A007091(n), A055642(#)]`
-/

namespace A110592.P10039912899415712112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A110592.P10039912899415712112

namespace A110592

/-- `∑{digits}[A007091(n), A055642(#)]` -/
def P10039912899415712112.Spec : Prop :=
  ∀ n, P10039912899415712112.a n = A110592 n

end A110592

/-! ## A110592.P1088260392016998978

`∑{digits}[A007091(n), A141760(#)]`
-/

namespace A110592.P1088260392016998978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A141760 x).sum

end

end A110592.P1088260392016998978

namespace A110592

/-- `∑{digits}[A007091(n), A141760(#)]` -/
def P1088260392016998978.Spec : Prop :=
  ∀ n, P1088260392016998978.a n = A110592 n

end A110592

/-! ## A110592.P5017458222326980058

`A028310(∑[char[A000351(n)]])`
-/

namespace A110592.P5017458222326980058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110592.P5017458222326980058

namespace A110592

/-- `A028310(∑[char[A000351(n)]])` -/
def P5017458222326980058.Spec : Prop :=
  ∀ n, P5017458222326980058.a n = A110592 n

end A110592

/-! ## A110592.P3820224541703938237

`∑{digits}[A001744(n+1), A178788(#)]`
-/

namespace A110592.P3820224541703938237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178788 x).sum

end

end A110592.P3820224541703938237

namespace A110592

/-- `∑{digits}[A001744(n+1), A178788(#)]` -/
def P3820224541703938237.Spec : Prop :=
  ∀ n, P3820224541703938237.a n = A110592 n

end A110592

/-! ## A110592.P5513685117254862889

`∑{digits}[A014263(n+1), A177704(#)]`
-/

namespace A110592.P5513685117254862889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A177704 x).sum

end

end A110592.P5513685117254862889

namespace A110592

/-- `∑{digits}[A014263(n+1), A177704(#)]` -/
def P5513685117254862889.Spec : Prop :=
  ∀ n, P5513685117254862889.a n = A110592 n

end A110592

/-! ## A110592.P4027936353505063686

`∑{digits}[A001744(n+1), A281490(#)]`
-/

namespace A110592.P4027936353505063686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A281490 x).sum

end

end A110592.P4027936353505063686

namespace A110592

/-- `∑{digits}[A001744(n+1), A281490(#)]` -/
def P4027936353505063686.Spec : Prop :=
  ∀ n, P4027936353505063686.a n = A110592 n

end A110592

/-! ## A110592.P11795665465897995870

`∑[char[(A014963(A000079(n))-1)*5^n]]`
-/

namespace A110592.P11795665465897995870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (A000079 n).toNat - 1) * (5 ^ n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110592.P11795665465897995870

namespace A110592

/-- `∑[char[(A014963(A000079(n))-1)*5^n]]` -/
def P11795665465897995870.Spec : Prop :=
  ∀ n, (P11795665465897995870.a n : ℤ) = A110592 n

end A110592

/-! ## A110592.P7834660448527557280

`∏{e}[A385552(n), #]`
-/

namespace A110592.P7834660448527557280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A110592.P7834660448527557280

namespace A110592

/-- `∏{e}[A385552(n), #]` -/
def P7834660448527557280.Spec : Prop :=
  ∀ n, (P7834660448527557280.a n : ℤ) = A110592 n

end A110592

/-! ## A110592.P8385475632797671355

`A055642(A007091(n))`
-/

namespace A110592.P8385475632797671355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007091 n).toNat

end

end A110592.P8385475632797671355

namespace A110592

/-- `A055642(A007091(n))` -/
def P8385475632797671355.Spec : Prop :=
  ∀ n, P8385475632797671355.a n = A110592 n

end A110592

/-! ## A110592.P14598852598257668092

`A055642(A054047(n))`
-/

namespace A110592.P14598852598257668092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A054047 n).toNat

end

end A110592.P14598852598257668092

namespace A110592

/-- `A055642(A054047(n))` -/
def P14598852598257668092.Spec : Prop :=
  ∀ n, P14598852598257668092.a n = A110592 n

end A110592

/-! ## A110592.P6444716417050257934

`A055642(2*n*A048766(n))`
-/

namespace A110592.P6444716417050257934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((2 * n : ℤ) * A048766 n).toNat

end

end A110592.P6444716417050257934

namespace A110592

/-- `A055642(2*n*A048766(n))` -/
def P6444716417050257934.Spec : Prop :=
  ∀ n, P6444716417050257934.a n = A110592 n

end A110592

/-! ## A110592.P12424696677955804764

`A055642(A071241(n))`
-/

namespace A110592.P12424696677955804764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A071241 n).toNat

end

end A110592.P12424696677955804764

namespace A110592

/-- `A055642(A071241(n))` -/
def P12424696677955804764.Spec : Prop :=
  ∀ n, P12424696677955804764.a n = A110592 n

end A110592

/-! ## A110592.P11676137164924110987

`A055642(A001744(n+1))`
-/

namespace A110592.P11676137164924110987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A001744 (n + 1)).toNat

end

end A110592.P11676137164924110987

namespace A110592

/-- `A055642(A001744(n+1))` -/
def P11676137164924110987.Spec : Prop :=
  ∀ n, P11676137164924110987.a n = A110592 n

end A110592

/-! ## A110592.P12964625248853846943

`A055642(A014263(n+1))`
-/

namespace A110592.P12964625248853846943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A014263 (n + 1)).toNat

end

end A110592.P12964625248853846943

namespace A110592

/-- `A055642(A014263(n+1))` -/
def P12964625248853846943.Spec : Prop :=
  ∀ n, P12964625248853846943.a n = A110592 n

end A110592

/-!
# A110593: a(1) = 3, a(n+1) = 2*(3^n).

The programs for A110593, the canonical program `A110593.P5041000441460646847` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110593 has offset 1).

The definition of A110593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110593.P5041000441460646847

`ogf((3-3x)/(1-3x))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110593

/-- `ogf((3-3x)/(1-3x))` -/
def P5041000441460646847.Spec : Prop :=
  ∀ n, P5041000441460646847.a n = A110593 (n + 1)

theorem P5041000441460646847.correct : P5041000441460646847.Spec := by
  intro n
  simp only [A110593, Nat.add_sub_cancel]

end A110593

/-! ## A110593.P10381475536342230130

`3*a(n-1)` with `a(0)=3, a(1)=6`
-/

namespace A110593.P10381475536342230130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  3 * a (n - 1)

end

end A110593.P10381475536342230130

namespace A110593

/-- `3*a(n-1)` -/
def P10381475536342230130.Spec : Prop :=
  ∀ n, (P10381475536342230130.a n : ℤ) = A110593 (n + 1)

end A110593

/-! ## A110593.P3410859452858222607

`Δ[3^n]+floor(acot(n))`
-/

namespace A110593.P3410859452858222607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A110593.P3410859452858222607

namespace A110593

/-- `Δ[3^n]+floor(acot(n))` -/
def P3410859452858222607.Spec : Prop :=
  ∀ n, P3410859452858222607.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P8189843637366485480

`Δ[3^n-floor(acot(n))]`
-/

namespace A110593.P8189843637366485480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110593.P8189843637366485480

namespace A110593

/-- `Δ[3^n-floor(acot(n))]` -/
def P8189843637366485480.Spec : Prop :=
  ∀ n, P8189843637366485480.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P17816191845388494901

`Δ[3^n-ceil(acot(n))]`
-/

namespace A110593.P17816191845388494901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110593.P17816191845388494901

namespace A110593

/-- `Δ[3^n-ceil(acot(n))]` -/
def P17816191845388494901.Spec : Prop :=
  ∀ n, P17816191845388494901.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P8047601863427848862

`or(floor(acot(n)), Δ[3^n])`
-/

namespace A110593.P8047601863427848862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A110593.P8047601863427848862

namespace A110593

/-- `or(floor(acot(n)), Δ[3^n])` -/
def P8047601863427848862.Spec : Prop :=
  ∀ n, P8047601863427848862.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P15260476750658367909

`Δ[xor(3^n, floor(acot(n)))]`
-/

namespace A110593.P15260476750658367909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110593.P15260476750658367909

namespace A110593

/-- `Δ[xor(3^n, floor(acot(n)))]` -/
def P15260476750658367909.Spec : Prop :=
  ∀ n, P15260476750658367909.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P6881251743742633896

`Δ[3*floor(3^(n-1))]`
-/

namespace A110593.P6881251743742633896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110593.P6881251743742633896

namespace A110593

/-- `Δ[3*floor(3^(n-1))]` -/
def P6881251743742633896.Spec : Prop :=
  ∀ n, P6881251743742633896.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P14477702478088884368

`floor(acot(n)+2*3^n)`
-/

namespace A110593.P14477702478088884368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (2 * 3 ^ n : ℝ)⌋

end

end A110593.P14477702478088884368

namespace A110593

/-- `floor(acot(n)+2*3^n)` -/
def P14477702478088884368.Spec : Prop :=
  ∀ n, P14477702478088884368.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P17473178715314629922

`lcm(3^n, a(n-1))` with `a(0)=3, a(1)=6`
-/

namespace A110593.P17473178715314629922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  Nat.lcm (3 ^ n) (a (n - 1))

end

end A110593.P17473178715314629922

namespace A110593

/-- `lcm(3^n, a(n-1))` -/
def P17473178715314629922.Spec : Prop :=
  ∀ n, (P17473178715314629922.a n : ℤ) = A110593 (n + 1)

end A110593

/-! ## A110593.P14886770401018842627

`abs(∏[-a(n-1)])` with `a(0)=3, a(1)=2, a(2)=3`
-/

namespace A110593.P14886770401018842627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A110593.P14886770401018842627

namespace A110593

/-- `abs(∏[-a(n-1)])` -/
def P14886770401018842627.Spec : Prop :=
  ∀ n, P14886770401018842627.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P960915364406531151

`Δ[3^n]+C(2, n+2)`
-/

namespace A110593.P960915364406531151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose 2 (n + 2) : ℤ)

end

end A110593.P960915364406531151

namespace A110593

/-- `Δ[3^n]+C(2, n+2)` -/
def P960915364406531151.Spec : Prop :=
  ∀ n, P960915364406531151.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P915985074731151331

`a(n-1)/(1-2/3)` with `a(0)=3, a(1)=6`
-/

namespace A110593.P915985074731151331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 1) / (1 - (2 : ℚ) / 3)

end

end A110593.P915985074731151331

namespace A110593

/-- `a(n-1)/(1-2/3)` -/
def P915985074731151331.Spec : Prop :=
  ∀ n, P915985074731151331.a n = (A110593 (n + 1) : ℚ)

end A110593

/-! ## A110593.P15148129074569709776

`2*a(floor(1/(n+1)))^n` with `a(0)=3`
-/

namespace A110593.P15148129074569709776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * a ⌊1 / (n + 1 : ℚ)⌋.toNat ^ n

end

end A110593.P15148129074569709776

namespace A110593

/-- `2*a(floor(1/(n+1)))^n` -/
def P15148129074569709776.Spec : Prop :=
  ∀ n, (P15148129074569709776.a n : ℤ) = A110593 (n + 1)

end A110593

/-! ## A110593.P2603445045909328632

`3^n+3^(n%a(n-1))` with `a(0)=3`
-/

namespace A110593.P2603445045909328632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 ^ n + 3 ^ (n % a (n - 1))

end

end A110593.P2603445045909328632

namespace A110593

/-- `3^n+3^(n%a(n-1))` -/
def P2603445045909328632.Spec : Prop :=
  ∀ n, (P2603445045909328632.a n : ℤ) = A110593 (n + 1)

end A110593

/-! ## A110593.P8775380304198588299

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=3, a(1)=6`
-/

namespace A110593.P8775380304198588299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A110593.P8775380304198588299

namespace A110593

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P8775380304198588299.Spec : Prop :=
  ∀ n, (P8775380304198588299.a n : ℤ) = A110593 (n + 1)

end A110593

/-! ## A110593.P341950738008813833

`A198635(n)-2`
-/

namespace A110593.P341950738008813833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198635 n - 2

end

end A110593.P341950738008813833

namespace A110593

/-- `A198635(n)-2` -/
def P341950738008813833.Spec : Prop :=
  ∀ n, P341950738008813833.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P6860481805739632027

`3*A025192(n)`
-/

namespace A110593.P6860481805739632027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A025192 n

end

end A110593.P6860481805739632027

namespace A110593

/-- `3*A025192(n)` -/
def P6860481805739632027.Spec : Prop :=
  ∀ n, P6860481805739632027.a n = A110593 (n + 1)

end A110593

/-! ## A110593.P9933939586397238943

`lcm(3, A099856(n))`
-/

namespace A110593.P9933939586397238943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A099856 n)

end

end A110593.P9933939586397238943

namespace A110593

/-- `lcm(3, A099856(n))` -/
def P9933939586397238943.Spec : Prop :=
  ∀ n, (P9933939586397238943.a n : ℤ) = A110593 (n + 1)

end A110593

/-! ## A110593.P6434861513930028621

`A225367(Δ[n²])`
-/

namespace A110593.P6434861513930028621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A110593.P6434861513930028621

namespace A110593

/-- `A225367(Δ[n²])` -/
def P6434861513930028621.Spec : Prop :=
  ∀ n, P6434861513930028621.a n = A110593 (n + 1)

end A110593

/-!
# A110594: a(1) = 4, a(2) = 12, for n>1: a(n) = 3*4^(n-1).

The programs for A110594, the canonical program `A110594.P4704080461050868491` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110594 has offset 1).

The definition of A110594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110594.P4704080461050868491

`ogf((4-4x)/(1-4x))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110594

/-- `ogf((4-4x)/(1-4x))` -/
def P4704080461050868491.Spec : Prop :=
  ∀ n, P4704080461050868491.a n = A110594 (n + 1)

theorem P4704080461050868491.correct : P4704080461050868491.Spec := by
  intro n
  simp only [A110594, Nat.add_sub_cancel]

end A110594

/-! ## A110594.P15421096775442813562

`Δ[or(1, 4^n)]`
-/

namespace A110594.P15421096775442813562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A110594.P15421096775442813562

namespace A110594

/-- `Δ[or(1, 4^n)]` -/
def P15421096775442813562.Spec : Prop :=
  ∀ n, P15421096775442813562.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P9146606015826795035

`Δ[and(4^n, -2)]`
-/

namespace A110594.P9146606015826795035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 ^ n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110594.P9146606015826795035

namespace A110594

/-- `Δ[and(4^n, -2)]` -/
def P9146606015826795035.Spec : Prop :=
  ∀ n, P9146606015826795035.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P9308889310520827886

`4*a(n-1)` with `a(0)=4, a(1)=12`
-/

namespace A110594.P9308889310520827886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 12] fun n a =>
  4 * a (n - 1)

end

end A110594.P9308889310520827886

namespace A110594

/-- `4*a(n-1)` -/
def P9308889310520827886.Spec : Prop :=
  ∀ n, (P9308889310520827886.a n : ℤ) = A110594 (n + 1)

end A110594

/-! ## A110594.P12614123648202706941

`lcm(4, Δ[lcm(2, 4^n)])`
-/

namespace A110594.P12614123648202706941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (4 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A110594.P12614123648202706941

namespace A110594

/-- `lcm(4, Δ[lcm(2, 4^n)])` -/
def P12614123648202706941.Spec : Prop :=
  ∀ n, (P12614123648202706941.a n : ℤ) = A110594 (n + 1)

end A110594

/-! ## A110594.P5138658448343213577

`Δ[4^n]+floor(acot(n))`
-/

namespace A110594.P5138658448343213577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A110594.P5138658448343213577

namespace A110594

/-- `Δ[4^n]+floor(acot(n))` -/
def P5138658448343213577.Spec : Prop :=
  ∀ n, P5138658448343213577.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P8969864304671129720

`Δ[4^n-floor(acot(n))]`
-/

namespace A110594.P8969864304671129720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110594.P8969864304671129720

namespace A110594

/-- `Δ[4^n-floor(acot(n))]` -/
def P8969864304671129720.Spec : Prop :=
  ∀ n, P8969864304671129720.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P4040804783975686585

`Δ[4^n-ceil(acot(n))]`
-/

namespace A110594.P4040804783975686585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110594.P4040804783975686585

namespace A110594

/-- `Δ[4^n-ceil(acot(n))]` -/
def P4040804783975686585.Spec : Prop :=
  ∀ n, P4040804783975686585.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P1827795577516633303

`Δ[4*floor(4^(n-1))]`
-/

namespace A110594.P1827795577516633303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110594.P1827795577516633303

namespace A110594

/-- `Δ[4*floor(4^(n-1))]` -/
def P1827795577516633303.Spec : Prop :=
  ∀ n, P1827795577516633303.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P6513428418586757931

`floor(acot(n))+3*4^n`
-/

namespace A110594.P6513428418586757931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (3 * 4 ^ n : ℤ)

end

end A110594.P6513428418586757931

namespace A110594

/-- `floor(acot(n))+3*4^n` -/
def P6513428418586757931.Spec : Prop :=
  ∀ n, P6513428418586757931.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P16240278508594609025

`abs(∏[-a(n-1)])` with `a(0)=4, a(1)=3, a(2)=4`
-/

namespace A110594.P16240278508594609025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A110594.P16240278508594609025

namespace A110594

/-- `abs(∏[-a(n-1)])` -/
def P16240278508594609025.Spec : Prop :=
  ∀ n, P16240278508594609025.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P1700886118771266228

`Δ[4^n]+C(2, n+2)`
-/

namespace A110594.P1700886118771266228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose 2 (n + 2) : ℤ)

end

end A110594.P1700886118771266228

namespace A110594

/-- `Δ[4^n]+C(2, n+2)` -/
def P1700886118771266228.Spec : Prop :=
  ∀ n, P1700886118771266228.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P2575209408053914596

`a(n-1)/(1/2)²` with `a(0)=4, a(1)=12`
-/

namespace A110594.P2575209408053914596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 12] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A110594.P2575209408053914596

namespace A110594

/-- `a(n-1)/(1/2)²` -/
def P2575209408053914596.Spec : Prop :=
  ∀ n, P2575209408053914596.a n = (A110594 (n + 1) : ℚ)

end A110594

/-! ## A110594.P1235590040259789072

`4^(n+1)-4^(n%a(n-1))` with `a(0)=4`
-/

namespace A110594.P1235590040259789072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (4 ^ (n + 1) : ℚ) - (4 : ℚ) ^ (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ)

end

end A110594.P1235590040259789072

namespace A110594

/-- `4^(n+1)-4^(n%a(n-1))` -/
def P1235590040259789072.Spec : Prop :=
  ∀ n, P1235590040259789072.a n = (A110594 (n + 1) : ℚ)

end A110594

/-! ## A110594.P18149799166448403883

`A092898(n+2)`
-/

namespace A110594.P18149799166448403883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092898 (n + 2)

end

end A110594.P18149799166448403883

namespace A110594

/-- `A092898(n+2)` -/
def P18149799166448403883.Spec : Prop :=
  ∀ n, P18149799166448403883.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P18413820377640246762

`4*A002001(n)`
-/

namespace A110594.P18413820377640246762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002001 n

end

end A110594.P18413820377640246762

namespace A110594

/-- `4*A002001(n)` -/
def P18413820377640246762.Spec : Prop :=
  ∀ n, P18413820377640246762.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P16692090266811824479

`A058764(Δ[n²])`
-/

namespace A110594.P16692090266811824479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A110594.P16692090266811824479

namespace A110594

/-- `A058764(Δ[n²])` -/
def P16692090266811824479.Spec : Prop :=
  ∀ n, P16692090266811824479.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P6842943821162773855

`∑[4*A055841(n)]`
-/

namespace A110594.P6842943821162773855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110594.P6842943821162773855

namespace A110594

/-- `∑[4*A055841(n)]` -/
def P6842943821162773855.Spec : Prop :=
  ∀ n, P6842943821162773855.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P12690900050977355942

`4*Δ[A123166(n)]`
-/

namespace A110594.P12690900050977355942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A110594.P12690900050977355942

namespace A110594

/-- `4*Δ[A123166(n)]` -/
def P12690900050977355942.Spec : Prop :=
  ∀ n, P12690900050977355942.a n = A110594 (n + 1)

end A110594

/-! ## A110594.P16814022442781755639

`record[4*A110164(n)]`
-/

namespace A110594.P16814022442781755639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A110164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110594.P16814022442781755639

namespace A110594

/-- `record[4*A110164(n)]` -/
def P16814022442781755639.Spec : Prop :=
  ∀ n, P16814022442781755639.a n = A110594 (n + 1)

end A110594

/-!
# A110595: a(1)=5. For n > 1, a(n) = 4*5^(n-1) = A005054(n).

The programs for A110595, the canonical program `A110595.P4866822598137229961` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110595 has offset 1).

The definition of A110595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110595.P4866822598137229961

`ogf((5-5x)/(1-5x))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A110595

/-- `ogf((5-5x)/(1-5x))` -/
def P4866822598137229961.Spec : Prop :=
  ∀ n, P4866822598137229961.a n = A110595 (n + 1)

theorem P4866822598137229961.correct : P4866822598137229961.Spec := by
  intro n
  simp only [A110595, Nat.add_sub_cancel]

end A110595

/-! ## A110595.P10509900054408969915

`5*a(n-1)` with `a(0)=5, a(1)=20`
-/

namespace A110595.P10509900054408969915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 20] fun n a =>
  5 * a (n - 1)

end

end A110595.P10509900054408969915

namespace A110595

/-- `5*a(n-1)` -/
def P10509900054408969915.Spec : Prop :=
  ∀ n, (P10509900054408969915.a n : ℤ) = A110595 (n + 1)

end A110595

/-! ## A110595.P1196305266445003222

`Δ[5^n]+floor(acot(n))`
-/

namespace A110595.P1196305266445003222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A110595.P1196305266445003222

namespace A110595

/-- `Δ[5^n]+floor(acot(n))` -/
def P1196305266445003222.Spec : Prop :=
  ∀ n, P1196305266445003222.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P17491287988502774970

`Δ[5^n-floor(acot(n))]`
-/

namespace A110595.P17491287988502774970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110595.P17491287988502774970

namespace A110595

/-- `Δ[5^n-floor(acot(n))]` -/
def P17491287988502774970.Spec : Prop :=
  ∀ n, P17491287988502774970.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P3995803647900363465

`Δ[5^n-ceil(acot(n))]`
-/

namespace A110595.P3995803647900363465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110595.P3995803647900363465

namespace A110595

/-- `Δ[5^n-ceil(acot(n))]` -/
def P3995803647900363465.Spec : Prop :=
  ∀ n, P3995803647900363465.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P896116466439465090

`or(floor(acot(n)), Δ[5^n])`
-/

namespace A110595.P896116466439465090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A110595.P896116466439465090

namespace A110595

/-- `or(floor(acot(n)), Δ[5^n])` -/
def P896116466439465090.Spec : Prop :=
  ∀ n, P896116466439465090.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P3833705624056951725

`Δ[xor(5^n, floor(acot(n)))]`
-/

namespace A110595.P3833705624056951725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110595.P3833705624056951725

namespace A110595

/-- `Δ[xor(5^n, floor(acot(n)))]` -/
def P3833705624056951725.Spec : Prop :=
  ∀ n, P3833705624056951725.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P1236866480351104838

`Δ[5*floor(5^(n-1))]`
-/

namespace A110595.P1236866480351104838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110595.P1236866480351104838

namespace A110595

/-- `Δ[5*floor(5^(n-1))]` -/
def P1236866480351104838.Spec : Prop :=
  ∀ n, P1236866480351104838.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P696237178889785908

`(floor(acot(n))+4)*5^n`
-/

namespace A110595.P696237178889785908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 4) * (5 ^ n : ℤ)

end

end A110595.P696237178889785908

namespace A110595

/-- `(floor(acot(n))+4)*5^n` -/
def P696237178889785908.Spec : Prop :=
  ∀ n, P696237178889785908.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P8594858158091467733

`or(4*5^n, floor(acot(n)))`
-/

namespace A110595.P8594858158091467733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * 5 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A110595.P8594858158091467733

namespace A110595

/-- `or(4*5^n, floor(acot(n)))` -/
def P8594858158091467733.Spec : Prop :=
  ∀ n, P8594858158091467733.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P13833401124147600115

`abs(∏[-a(n-1)])` with `a(0)=5, a(1)=4, a(2)=5`
-/

namespace A110595.P13833401124147600115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 4, 5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A110595.P13833401124147600115

namespace A110595

/-- `abs(∏[-a(n-1)])` -/
def P13833401124147600115.Spec : Prop :=
  ∀ n, P13833401124147600115.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P6600495804740018741

`Δ[5^n]+C(2, n+2)`
-/

namespace A110595.P6600495804740018741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose 2 (n + 2) : ℤ)

end

end A110595.P6600495804740018741

namespace A110595

/-- `Δ[5^n]+C(2, n+2)` -/
def P6600495804740018741.Spec : Prop :=
  ∀ n, P6600495804740018741.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P6997961934980512961

`lcm(a(n-1), Δ[5^n])` with `a(0)=5`
-/

namespace A110595.P6997961934980512961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Int.lcm (a (n - 1) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A110595.P6997961934980512961

namespace A110595

/-- `lcm(a(n-1), Δ[5^n])` -/
def P6997961934980512961.Spec : Prop :=
  ∀ n, (P6997961934980512961.a n : ℤ) = A110595 (n + 1)

end A110595

/-! ## A110595.P5111188784565914623

`5^(n+1)-5^(n%a(n-1))` with `a(0)=5`
-/

namespace A110595.P5111188784565914623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (5 ^ (n + 1) : ℚ) - (5 : ℚ) ^ (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ)

end

end A110595.P5111188784565914623

namespace A110595

/-- `5^(n+1)-5^(n%a(n-1))` -/
def P5111188784565914623.Spec : Prop :=
  ∀ n, P5111188784565914623.a n = (A110595 (n + 1) : ℚ)

end A110595

/-! ## A110595.P9210061153474960974

`5*A005054(n)`
-/

namespace A110595.P9210061153474960974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005054 n

end

end A110595.P9210061153474960974

namespace A110595

/-- `5*A005054(n)` -/
def P9210061153474960974.Spec : Prop :=
  ∀ n, P9210061153474960974.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P6558630818359166951

`∑[5*A055842(n)]`
-/

namespace A110595.P6558630818359166951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A055842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110595.P6558630818359166951

namespace A110595

/-- `∑[5*A055842(n)]` -/
def P6558630818359166951.Spec : Prop :=
  ∀ n, P6558630818359166951.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P6422712287445503309

`5*A026395(2*n)`
-/

namespace A110595.P6422712287445503309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A026395 (2 * n)

end

end A110595.P6422712287445503309

namespace A110595

/-- `5*A026395(2*n)` -/
def P6422712287445503309.Spec : Prop :=
  ∀ n, P6422712287445503309.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P1790638772584803290

`(5-char[A258078(n)])*5^n`
-/

namespace A110595.P1790638772584803290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * (5 ^ n : ℤ)

end

end A110595.P1790638772584803290

namespace A110595

/-- `(5-char[A258078(n)])*5^n` -/
def P1790638772584803290.Spec : Prop :=
  ∀ n, P1790638772584803290.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P13848067401360431021

`A193455(A086570(n+1))`
-/

namespace A110595.P13848067401360431021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193455 (A086570 (n + 1)).toNat

end

end A110595.P13848067401360431021

namespace A110595

/-- `A193455(A086570(n+1))` -/
def P13848067401360431021.Spec : Prop :=
  ∀ n, P13848067401360431021.a n = A110595 (n + 1)

end A110595

/-! ## A110595.P886869006876560887

`A358033(A270545(n+1))`
-/

namespace A110595.P886869006876560887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358033 (A270545 (n + 1)).toNat

end

end A110595.P886869006876560887

namespace A110595

/-- `A358033(A270545(n+1))` -/
def P886869006876560887.Spec : Prop :=
  ∀ n, P886869006876560887.a n = A110595 (n + 1)

end A110595

