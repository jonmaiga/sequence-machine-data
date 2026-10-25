import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A384700: On a 2 X n grid of vertices, draw a circle through every unordered triple of non-collinear vertices: a(n) is the number of distinct circles created.

The programs for A384700, there is no canonical definition to state claims against.
-/

/-! ## A384700.P18088050848326079724

`∑[3*floor(n²/2)+n]`
-/

namespace A384700.P18088050848326079724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384700.P18088050848326079724

/-! ## A384700.P6300593737587516641

`n*(∑[2*n]-1)-a(n-1)` with `a(0)=0`
-/

namespace A384700.P6300593737587516641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) - a (n - 1)

end

end A384700.P6300593737587516641

/-! ## A384700.P2700199661883353387

`(n+1)*n²-(a(n-1)+n)` with `a(0)=0`
-/

namespace A384700.P2700199661883353387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) * n ^ 2 : ℤ) - (a (n - 1) + (n : ℤ))

end

end A384700.P2700199661883353387

/-! ## A384700.P7671019650902344518

`lcm(n+1, n²)-a(n-1)-n` with `a(0)=0`
-/

namespace A384700.P7671019650902344518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.lcm (n + 1) (n ^ 2) : ℤ) - a (n - 1) - (n : ℤ)

end

end A384700.P7671019650902344518

/-! ## A384700.P15772403105511764598

`floor(A163683(n)/4)`
-/

namespace A384700.P15772403105511764598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163683 n : ℚ) / 4⌋

end

end A384700.P15772403105511764598

/-!
# A384701: On a 2 X n grid of vertices, draw a circle through every unordered triple of non-collinear vertices: a(n) is the number of distinct points where circles intersect.

The programs for A384701, there is no canonical definition to state claims against.
-/

/-! ## A384701.P3606137939363969171

`A154443(A333782(n+1)+A104982(n))`
-/

namespace A384701.P3606137939363969171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A333782 (n + 1) + A104982 n).toNat

end

end A384701.P3606137939363969171

/-!
# A384705: Number of binary shuffle squares of length 2n with prefix 0, that can be obtained from a unique binary word of length n.

The programs for A384705, there is no canonical definition to state claims against.
-/

/-! ## A384705.P12506796811730072940

`A340764(A309915(n+1))`
-/

namespace A384705.P12506796811730072940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A309915 (n + 1)).toNat

end

end A384705.P12506796811730072940

/-! ## A384705.P2690240277469431931

`or(A080907(A001700(n)), A334860(n))`
-/

namespace A384705.P2690240277469431931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080907 (A001700 n).toNat) (A334860 n)

end

end A384705.P2690240277469431931

/-!
# A384709: a(n) = [n > 1 and A076479(n) = -Möbius(A067029(n))], where [.] is the Iverson bracket.

The programs for A384709, there is no canonical definition to state claims against.
-/

/-! ## A384709.P1175214451481473243

`A385055(A119416(n+1))`
-/

namespace A384709.P1175214451481473243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A119416 (n + 1)).toNat

end

end A384709.P1175214451481473243

/-! ## A384709.P11561660584761263704

`A385055(A013636(n+1))`
-/

namespace A384709.P11561660584761263704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A013636 (n + 1)).toNat

end

end A384709.P11561660584761263704

/-! ## A384709.P7351225884411625777

`A385055(A020338(n+1))`
-/

namespace A384709.P7351225884411625777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A020338 (n + 1)).toNat

end

end A384709.P7351225884411625777

/-! ## A384709.P6282803817474609335

`A385055(A053024(n+1))`
-/

namespace A384709.P6282803817474609335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A053024 (n + 1)).toNat

end

end A384709.P6282803817474609335

/-! ## A384709.P9751789298010537337

`A385055(A002374(n+3)*(n+1))`
-/

namespace A384709.P9751789298010537337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A002374 (n + 3) * (n + 1 : ℤ)).toNat

end

end A384709.P9751789298010537337

/-! ## A384709.P9921753442084745717

`A385055(A134297(n+1))`
-/

namespace A384709.P9921753442084745717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A134297 (n + 1)).toNat

end

end A384709.P9921753442084745717

/-! ## A384709.P3695436473843063415

`A385055(A138127(n+1))`
-/

namespace A384709.P3695436473843063415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A138127 (n + 1)).toNat

end

end A384709.P3695436473843063415

/-! ## A384709.P10039141921225988847

`A385055(A004926(n+1))`
-/

namespace A384709.P10039141921225988847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A004926 (n + 1)).toNat

end

end A384709.P10039141921225988847

/-!
# A384710: a(n) = Sum_{k=0..n} [gcd(k, n) = 1], where [.] are the Iverson brackets.

The programs for A384710, the canonical program `A384710.P17192466185515351844` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384710 has offset 0).

The definition of A384710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384710.P17192466185515351844

`1-A062830(n)+n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A384710

/-- `1-A062830(n)+n` -/
def P17192466185515351844.Spec : Prop :=
  ∀ n, P17192466185515351844.a n = A384710 n

theorem P17192466185515351844.correct : P17192466185515351844.Spec := by
  intro n
  simp only [A384710]

end A384710

/-! ## A384710.P14390035383639903862

`A096396(n)+A096397(n)`
-/

namespace A384710.P14390035383639903862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096396 n + A096397 n

end

end A384710.P14390035383639903862

namespace A384710

/-- `A096396(n)+A096397(n)` -/
def P14390035383639903862.Spec : Prop :=
  ∀ n, P14390035383639903862.a n = A384710 n

end A384710

/-! ## A384710.P8368934526761953498

`A096397(n)+A096397(n)+A071961(n)`
-/

namespace A384710.P8368934526761953498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096397 n + (A096397 n + A071961 n)

end

end A384710.P8368934526761953498

namespace A384710

/-- `A096397(n)+A096397(n)+A071961(n)` -/
def P8368934526761953498.Spec : Prop :=
  ∀ n, P8368934526761953498.a n = A384710 n

end A384710

/-! ## A384710.P4842276893801407484

`A096396(n)+A096396(n)-A071961(n)`
-/

namespace A384710.P4842276893801407484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096396 n + (A096396 n - A071961 n)

end

end A384710.P4842276893801407484

namespace A384710

/-- `A096396(n)+A096396(n)-A071961(n)` -/
def P4842276893801407484.Spec : Prop :=
  ∀ n, P4842276893801407484.a n = A384710 n

end A384710

/-! ## A384710.P13605796576984459292

`A225530(n)%(2*n+1)`
-/

namespace A384710.P13605796576984459292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225530 n) (2 * n + 1 : ℤ)

end

end A384710.P13605796576984459292

namespace A384710

/-- `A225530(n)%(2*n+1)` -/
def P13605796576984459292.Spec : Prop :=
  ∀ n, P13605796576984459292.a n = A384710 n

end A384710

/-! ## A384710.P8414691222694594910

`A225530(n)-A000007(n)`
-/

namespace A384710.P8414691222694594910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n - A000007 n

end

end A384710.P8414691222694594910

namespace A384710

/-- `A225530(n)-A000007(n)` -/
def P8414691222694594910.Spec : Prop :=
  ∀ n, P8414691222694594910.a n = A384710 n

end A384710

/-! ## A384710.P4380816396599172118

`A057427(n)*A225530(n)`
-/

namespace A384710.P4380816396599172118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A225530 n

end

end A384710.P4380816396599172118

namespace A384710

/-- `A057427(n)*A225530(n)` -/
def P4380816396599172118.Spec : Prop :=
  ∀ n, P4380816396599172118.a n = A384710 n

end A384710

/-! ## A384710.P15355284199336397790

`and(A057428(n), A225530(n))`
-/

namespace A384710.P15355284199336397790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A225530 n)

end

end A384710.P15355284199336397790

namespace A384710

/-- `and(A057428(n), A225530(n))` -/
def P15355284199336397790.Spec : Prop :=
  ∀ n, P15355284199336397790.a n = A384710 n

end A384710

/-! ## A384710.P18324907013074885438

`A000010(n+1)+A225530(n)-A225530(n+1)`
-/

namespace A384710.P18324907013074885438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A225530 n - A225530 (n + 1))

end

end A384710.P18324907013074885438

namespace A384710

/-- `A000010(n+1)+A225530(n)-A225530(n+1)` -/
def P18324907013074885438.Spec : Prop :=
  ∀ n, P18324907013074885438.a n = A384710 n

end A384710

/-! ## A384710.P17391964736688569008

`and(A088041(n+1), A225530(n))`
-/

namespace A384710.P17391964736688569008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088041 (n + 1)) (A225530 n)

end

end A384710.P17391964736688569008

namespace A384710

/-- `and(A088041(n+1), A225530(n))` -/
def P17391964736688569008.Spec : Prop :=
  ∀ n, P17391964736688569008.a n = A384710 n

end A384710

/-! ## A384710.P117759808864745899

`and(A055010(n), A225530(n))`
-/

namespace A384710.P117759808864745899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055010 n) (A225530 n)

end

end A384710.P117759808864745899

namespace A384710

/-- `and(A055010(n), A225530(n))` -/
def P117759808864745899.Spec : Prop :=
  ∀ n, P117759808864745899.a n = A384710 n

end A384710

/-! ## A384710.P1171460616468357243

`and(A118883(n+1), A225530(n))`
-/

namespace A384710.P1171460616468357243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A225530 n)

end

end A384710.P1171460616468357243

namespace A384710

/-- `and(A118883(n+1), A225530(n))` -/
def P1171460616468357243.Spec : Prop :=
  ∀ n, P1171460616468357243.a n = A384710 n

end A384710

/-! ## A384710.P2739985185524177811

`and(A225530(n), A378139(n+1))`
-/

namespace A384710.P2739985185524177811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225530 n) (A378139 (n + 1))

end

end A384710.P2739985185524177811

namespace A384710

/-- `and(A225530(n), A378139(n+1))` -/
def P2739985185524177811.Spec : Prop :=
  ∀ n, P2739985185524177811.a n = A384710 n

end A384710

/-! ## A384710.P12937165954478103630

`and(A087522(n), A225530(n))`
-/

namespace A384710.P12937165954478103630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087522 n) (A225530 n)

end

end A384710.P12937165954478103630

namespace A384710

/-- `and(A087522(n), A225530(n))` -/
def P12937165954478103630.Spec : Prop :=
  ∀ n, P12937165954478103630.a n = A384710 n

end A384710

/-! ## A384710.P12143700891894460282

`and(A127582(n), A225530(n))`
-/

namespace A384710.P12143700891894460282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127582 n) (A225530 n)

end

end A384710.P12143700891894460282

namespace A384710

/-- `and(A127582(n), A225530(n))` -/
def P12143700891894460282.Spec : Prop :=
  ∀ n, P12143700891894460282.a n = A384710 n

end A384710

/-! ## A384710.P13143248238097095149

`and(A087323(n), A225530(n))`
-/

namespace A384710.P13143248238097095149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087323 n) (A225530 n)

end

end A384710.P13143248238097095149

namespace A384710

/-- `and(A087323(n), A225530(n))` -/
def P13143248238097095149.Spec : Prop :=
  ∀ n, P13143248238097095149.a n = A384710 n

end A384710

/-! ## A384710.P15394100048328723507

`and(A070199(n+1), A225530(n))`
-/

namespace A384710.P15394100048328723507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070199 (n + 1)) (A225530 n)

end

end A384710.P15394100048328723507

namespace A384710

/-- `and(A070199(n+1), A225530(n))` -/
def P15394100048328723507.Spec : Prop :=
  ∀ n, P15394100048328723507.a n = A384710 n

end A384710

/-! ## A384710.P4415355870694397597

`and(A024036(n), A225530(n))`
-/

namespace A384710.P4415355870694397597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A225530 n)

end

end A384710.P4415355870694397597

namespace A384710

/-- `and(A024036(n), A225530(n))` -/
def P4415355870694397597.Spec : Prop :=
  ∀ n, P4415355870694397597.a n = A384710 n

end A384710

/-! ## A384710.P12730294251508113582

`and(A130567(n+1), A225530(n))`
-/

namespace A384710.P12730294251508113582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130567 (n + 1)) (A225530 n)

end

end A384710.P12730294251508113582

namespace A384710

/-- `and(A130567(n+1), A225530(n))` -/
def P12730294251508113582.Spec : Prop :=
  ∀ n, P12730294251508113582.a n = A384710 n

end A384710

/-!
# A384711: Expansion of (1+x) / (1-2*x-6*x^2).

The programs for A384711, the canonical program `A384711.P3011662670924636426` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384711 has offset 0).

The definition of A384711 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-6x^2))` (program `A384711.P3011662670924636426`, by `A384711.P3011662670924636426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384711.P3011662670924636426

`ogf((1+x)/(1-2x-6x^2))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384711

/-- `ogf((1+x)/(1-2x-6x^2))` -/
def P3011662670924636426.Spec : Prop :=
  ∀ n, P3011662670924636426.a n = A384711 n

theorem P3011662670924636426.correct : P3011662670924636426.Spec := by
  intro n
  simp only [A384711]

end A384711

/-! ## A384711.P1449276390373018935

`3*a(n-1)+4*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=3, a(2)=12`
-/

namespace A384711.P1449276390373018935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 12] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) - 6 * a (n - 3)

end

end A384711.P1449276390373018935

namespace A384711

/-- `3*a(n-1)+4*a(n-2)-6*a(n-3)` -/
def P1449276390373018935.Spec : Prop :=
  ∀ n, P1449276390373018935.a n = A384711 n

end A384711

/-! ## A384711.P1807033249098491084

`2*(a(n-1)+3*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A384711.P1807033249098491084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) + 3 * a (n - 2))

end

end A384711.P1807033249098491084

namespace A384711

/-- `2*(a(n-1)+3*a(n-2))` -/
def P1807033249098491084.Spec : Prop :=
  ∀ n, (P1807033249098491084.a n : ℤ) = A384711 n

end A384711

/-! ## A384711.P17110855469327765975

`2*(4*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A384711.P17110855469327765975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (4 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A384711.P17110855469327765975

namespace A384711

/-- `2*(4*a(n-2)-(a(n-2)-a(n-1)))` -/
def P17110855469327765975.Spec : Prop :=
  ∀ n, P17110855469327765975.a n = A384711 n

end A384711

/-! ## A384711.P17697408465771373836

`A274520(n)+A083098(n)`
-/

namespace A384711.P17697408465771373836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274520 n + A083098 n

end

end A384711.P17697408465771373836

namespace A384711

/-- `A274520(n)+A083098(n)` -/
def P17697408465771373836.Spec : Prop :=
  ∀ n, P17697408465771373836.a n = A384711 n

end A384711

/-! ## A384711.P110542108674340877

`A083099(n+1)+A083099(n)`
-/

namespace A384711.P110542108674340877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 (n + 1) + A083099 n

end

end A384711.P110542108674340877

namespace A384711

/-- `A083099(n+1)+A083099(n)` -/
def P110542108674340877.Spec : Prop :=
  ∀ n, P110542108674340877.a n = A384711 n

end A384711

/-! ## A384711.P980198076512055747

`A384712(n)-A083099(n)`
-/

namespace A384711.P980198076512055747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384712 n - A083099 n

end

end A384711.P980198076512055747

namespace A384711

/-- `A384712(n)-A083099(n)` -/
def P980198076512055747.Spec : Prop :=
  ∀ n, P980198076512055747.a n = A384711 n

end A384711

/-! ## A384711.P10672806342211959795

`A307469(n)-A274520(n)`
-/

namespace A384711.P10672806342211959795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307469 n - A274520 n

end

end A384711.P10672806342211959795

namespace A384711

/-- `A307469(n)-A274520(n)` -/
def P10672806342211959795.Spec : Prop :=
  ∀ n, P10672806342211959795.a n = A384711 n

end A384711

/-! ## A384711.P8895712091847094042

`A307469(n)-A083099(n)-A083099(n)`
-/

namespace A384711.P8895712091847094042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307469 n - A083099 n - A083099 n

end

end A384711.P8895712091847094042

namespace A384711

/-- `A307469(n)-A083099(n)-A083099(n)` -/
def P8895712091847094042.Spec : Prop :=
  ∀ n, P8895712091847094042.a n = A384711 n

end A384711

/-!
# A384712: Expansion of (1+2*x) / (1-2*x-6*x^2).

The programs for A384712, the canonical program `A384712.P13413970938566962457` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384712 has offset 0).

The definition of A384712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-2x-6x^2))` (program `A384712.P13413970938566962457`, by `A384712.P13413970938566962457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384712.P13413970938566962457

`ogf((1+2x)/(1-2x-6x^2))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384712

/-- `ogf((1+2x)/(1-2x-6x^2))` -/
def P13413970938566962457.Spec : Prop :=
  ∀ n, P13413970938566962457.a n = A384712 n

theorem P13413970938566962457.correct : P13413970938566962457.Spec := by
  intro n
  simp only [A384712]

end A384712

/-! ## A384712.P9578106596585735822

`3*a(n-1)+4*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=4, a(2)=14`
-/

namespace A384712.P9578106596585735822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 14] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) - 6 * a (n - 3)

end

end A384712.P9578106596585735822

namespace A384712

/-- `3*a(n-1)+4*a(n-2)-6*a(n-3)` -/
def P9578106596585735822.Spec : Prop :=
  ∀ n, P9578106596585735822.a n = A384712 n

end A384712

/-! ## A384712.P2550444451200750580

`A133592(n+1)/2`
-/

namespace A384712.P2550444451200750580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133592 (n + 1) : ℚ) / 2

end

end A384712.P2550444451200750580

namespace A384712

/-- `A133592(n+1)/2` -/
def P2550444451200750580.Spec : Prop :=
  ∀ n, P2550444451200750580.a n = (A384712 n : ℚ)

end A384712

/-! ## A384712.P15471721140770497023

`2*(a(n-1)+3*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A384712.P15471721140770497023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (a (n - 1) + 3 * a (n - 2))

end

end A384712.P15471721140770497023

namespace A384712

/-- `2*(a(n-1)+3*a(n-2))` -/
def P15471721140770497023.Spec : Prop :=
  ∀ n, (P15471721140770497023.a n : ℤ) = A384712 n

end A384712

/-! ## A384712.P1583007451754108820

`2*(4*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=4`
-/

namespace A384712.P1583007451754108820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (4 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A384712.P1583007451754108820

namespace A384712

/-- `2*(4*a(n-2)-(a(n-2)-a(n-1)))` -/
def P1583007451754108820.Spec : Prop :=
  ∀ n, P1583007451754108820.a n = A384712 n

end A384712

/-! ## A384712.P1020544790091392305

`A384711(n+1)/3`
-/

namespace A384712.P1020544790091392305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384711 (n + 1) : ℚ) / 3

end

end A384712.P1020544790091392305

namespace A384712

/-- `A384711(n+1)/3` -/
def P1020544790091392305.Spec : Prop :=
  ∀ n, P1020544790091392305.a n = (A384712 n : ℚ)

end A384712

/-! ## A384712.P10058678135307843967

`A384711(n)+A083099(n)`
-/

namespace A384712.P10058678135307843967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384711 n + A083099 n

end

end A384712.P10058678135307843967

namespace A384712

/-- `A384711(n)+A083099(n)` -/
def P10058678135307843967.Spec : Prop :=
  ∀ n, P10058678135307843967.a n = A384712 n

end A384712

/-! ## A384712.P12874429365487918926

`A307469(n)-A083099(n)`
-/

namespace A384712.P12874429365487918926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307469 n - A083099 n

end

end A384712.P12874429365487918926

namespace A384712

/-- `A307469(n)-A083099(n)` -/
def P12874429365487918926.Spec : Prop :=
  ∀ n, P12874429365487918926.a n = A384712 n

end A384712

/-! ## A384712.P7270631846538086101

`A274520(n)+A083099(n+1)`
-/

namespace A384712.P7270631846538086101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274520 n + A083099 (n + 1)

end

end A384712.P7270631846538086101

namespace A384712

/-- `A274520(n)+A083099(n+1)` -/
def P7270631846538086101.Spec : Prop :=
  ∀ n, P7270631846538086101.a n = A384712 n

end A384712

/-! ## A384712.P16802236330957068330

`A384711(n+1)-A133592(n+1)`
-/

namespace A384712.P16802236330957068330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384711 (n + 1) - A133592 (n + 1)

end

end A384712.P16802236330957068330

namespace A384712

/-- `A384711(n+1)-A133592(n+1)` -/
def P16802236330957068330.Spec : Prop :=
  ∀ n, P16802236330957068330.a n = A384712 n

end A384712

/-! ## A384712.P6856376133525219619

`A083099(n+1)+2*A083099(n)`
-/

namespace A384712.P6856376133525219619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 (n + 1) + 2 * A083099 n

end

end A384712.P6856376133525219619

namespace A384712

/-- `A083099(n+1)+2*A083099(n)` -/
def P6856376133525219619.Spec : Prop :=
  ∀ n, P6856376133525219619.a n = A384712 n

end A384712

/-!
# A384714: Nonpowers of 2 whose trailing digits form a power of 2.

The programs for A384714, there is no canonical definition to state claims against.
-/

/-! ## A384714.P5842569569110896212

`filter[A385289(n+1), A347523(#)]`
-/

namespace A384714.P5842569569110896212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A384714.P5842569569110896212

/-! ## A384714.P17289466101631832006

`∩[A085837(n+1), A385289(n+1)]`
-/

namespace A384714.P17289466101631832006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384714.P17289466101631832006

/-! ## A384714.P6318100235551490695

`∩[A005767(n+1), A385289(n+1)]`
-/

namespace A384714.P6318100235551490695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384714.P6318100235551490695

/-! ## A384714.P5956619182902612507

`∩[A385289(n+1), A057716(n)]`
-/

namespace A384714.P5956619182902612507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384714.P5956619182902612507

/-! ## A384714.P17624366034932663466

`filter[A385289(n+2), A267579(#)]`
-/

namespace A384714.P17624366034932663466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385289 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A384714.P17624366034932663466

/-!
# A384715: a(n) = Sum_{k=0..n} (binomial(n, k) mod 4).

The programs for A384715, the canonical program `A384715.P8943317397622989256` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384715 has offset 0).

The definition of A384715 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, A085357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A384715.P8943317397622989256

`A001316(n)*(A033264(n)-A085357(n)+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A384715

/-- `A001316(n)*(A033264(n)-A085357(n)+2)` -/
def P8943317397622989256.Spec : Prop :=
  ∀ n, P8943317397622989256.a n = A384715 n

theorem P8943317397622989256.correct : P8943317397622989256.Spec := by
  intro n
  simp only [A384715]

end A384715

/-! ## A384715.P12265019091991192387

`A001316(n)*A385393(n)`
-/

namespace A384715.P12265019091991192387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A385393 n

end

end A384715.P12265019091991192387

namespace A384715

/-- `A001316(n)*A385393(n)` -/
def P12265019091991192387.Spec : Prop :=
  ∀ n, P12265019091991192387.a n = A384715 n

end A384715

/-! ## A384715.P15642293240812320521

`(A038573(n)+1)*A385393(n)`
-/

namespace A384715.P15642293240812320521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) * A385393 n

end

end A384715.P15642293240812320521

namespace A384715

/-- `(A038573(n)+1)*A385393(n)` -/
def P15642293240812320521.Spec : Prop :=
  ∀ n, P15642293240812320521.a n = A384715 n

end A384715

/-! ## A384715.P4974389685145964078

`A000079(A000120(n))*A385393(n)`
-/

namespace A384715.P4974389685145964078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n).toNat * A385393 n

end

end A384715.P4974389685145964078

namespace A384715

/-- `A000079(A000120(n))*A385393(n)` -/
def P4974389685145964078.Spec : Prop :=
  ∀ n, P4974389685145964078.a n = A384715 n

end A384715

/-! ## A384715.P13079878315291939558

`A071044(2*n)*A385393(n)`
-/

namespace A384715.P13079878315291939558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (2 * n) * A385393 n

end

end A384715.P13079878315291939558

namespace A384715

/-- `A071044(2*n)*A385393(n)` -/
def P13079878315291939558.Spec : Prop :=
  ∀ n, P13079878315291939558.a n = A384715 n

end A384715

/-! ## A384715.P11604836329375677294

`A385285(n)*A385393(n)/A385394(n)`
-/

namespace A384715.P11604836329375677294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n * A385393 n : ℚ) / (A385394 n : ℚ)

end

end A384715.P11604836329375677294

namespace A384715

/-- `A385285(n)*A385393(n)/A385394(n)` -/
def P11604836329375677294.Spec : Prop :=
  ∀ n, P11604836329375677294.a n = (A384715 n : ℚ)

end A384715

/-!
# A384716: The totient of the product of unitary divisors of n.

The programs for A384716, the canonical program `A384716.P11863616275653796637` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384716 has offset 1).

The definition of A384716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A061537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A384716.P11863616275653796637

`A000010(A061537(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A384716

/-- `A000010(A061537(n+1))` -/
def P11863616275653796637.Spec : Prop :=
  ∀ n, P11863616275653796637.a n = A384716 (n + 1)

theorem P11863616275653796637.correct : P11863616275653796637.Spec := by
  intro n
  simp only [A384716, Nat.add_sub_cancel]

end A384716

/-! ## A384716.P8291556497356693562

`A000010(n+1)*A290480(n+1)`
-/

namespace A384716.P8291556497356693562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A290480 (n + 1)

end

end A384716.P8291556497356693562

namespace A384716

/-- `A000010(n+1)*A290480(n+1)` -/
def P8291556497356693562.Spec : Prop :=
  ∀ n, P8291556497356693562.a n = A384716 (n + 1)

end A384716

/-! ## A384716.P16458895566604012194

`A055035(A062509(n+1))`
-/

namespace A384716.P16458895566604012194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A062509 (n + 1)).toNat

end

end A384716.P16458895566604012194

namespace A384716

/-- `A055035(A062509(n+1))` -/
def P16458895566604012194.Spec : Prop :=
  ∀ n, P16458895566604012194.a n = A384716 (n + 1)

end A384716

/-! ## A384716.P826299157236356009

`A000010((n+1)^A050320(n+1))`
-/

namespace A384716.P826299157236356009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A050320 (n + 1) : ℤ))).toNat

end

end A384716.P826299157236356009

namespace A384716

/-- `A000010((n+1)^A050320(n+1))` -/
def P826299157236356009.Spec : Prop :=
  ∀ n, P826299157236356009.a n = A384716 (n + 1)

end A384716

/-! ## A384716.P14828037441636385507

`A055035((n+1)^A001221(n+1))`
-/

namespace A384716.P14828037441636385507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat

end

end A384716.P14828037441636385507

namespace A384716

/-- `A055035((n+1)^A001221(n+1))` -/
def P14828037441636385507.Spec : Prop :=
  ∀ n, P14828037441636385507.a n = A384716 (n + 1)

end A384716

/-!
# A384717: Sum of floored squared chord lengths from -1 to the 2n-th roots of unity (upper semicircle, endpoints excluded).

The programs for A384717, the canonical program `A384717.P10750683684603795331` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384717 has offset 1).

The definition of A384717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384717.P10750683684603795331

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5, a(4)=6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384717

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P10750683684603795331.Spec : Prop :=
  ∀ n, P10750683684603795331.a n = A384717 (n + 1)

theorem P10750683684603795331.correct : P10750683684603795331.Spec := by
  intro n
  simp only [A384717, Nat.add_sub_cancel]

end A384717

/-! ## A384717.P16573270045148326572

`floor((n+1)/2)+floor((n+1)/3)+floor(2*(n+1)/3)`
-/

namespace A384717.P16573270045148326572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ + ⌊(n + 1 : ℚ) / 3⌋ + ⌊(2 * (n + 1) : ℚ) / 3⌋

end

end A384717.P16573270045148326572

namespace A384717

/-- `floor((n+1)/2)+floor((n+1)/3)+floor(2*(n+1)/3)` -/
def P16573270045148326572.Spec : Prop :=
  ∀ n, P16573270045148326572.a n = A384717 (n + 1)

end A384717

/-! ## A384717.P2674148400905085352

`∑[n%2+n%3]`
-/

namespace A384717.P2674148400905085352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384717.P2674148400905085352

namespace A384717

/-- `∑[n%2+n%3]` -/
def P2674148400905085352.Spec : Prop :=
  ∀ n, (P2674148400905085352.a n : ℤ) = A384717 (n + 1)

end A384717

/-! ## A384717.P13929877666033161424

`floor(∑[floor(a(n-3))]/2)` with `a(0)=1, a(1)=3, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A384717.P13929877666033161424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A384717.P13929877666033161424

namespace A384717

/-- `floor(∑[floor(a(n-3))]/2)` -/
def P13929877666033161424.Spec : Prop :=
  ∀ n, P13929877666033161424.a n = A384717 (n + 1)

end A384717

/-! ## A384717.P3059167014876826220

`∑[A110269(n)]`
-/

namespace A384717.P3059167014876826220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384717.P3059167014876826220

namespace A384717

/-- `∑[A110269(n)]` -/
def P3059167014876826220.Spec : Prop :=
  ∀ n, P3059167014876826220.a n = A384717 (n + 1)

end A384717

/-! ## A384717.P9727137059047960116

`A047276(n+1)%A047261(n+1)`
-/

namespace A384717.P9727137059047960116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047276 (n + 1)) (A047261 (n + 1))

end

end A384717.P9727137059047960116

namespace A384717

/-- `A047276(n+1)%A047261(n+1)` -/
def P9727137059047960116.Spec : Prop :=
  ∀ n, P9727137059047960116.a n = A384717 (n + 1)

end A384717

/-! ## A384717.P1285437597204929234

`A057353(A047242(n+2))`
-/

namespace A384717.P1285437597204929234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A047242 (n + 2)).toNat

end

end A384717.P1285437597204929234

namespace A384717

/-- `A057353(A047242(n+2))` -/
def P1285437597204929234.Spec : Prop :=
  ∀ n, P1285437597204929234.a n = A384717 (n + 1)

end A384717

/-! ## A384717.P9022871254124710676

`A137719(A054966(n+1))`
-/

namespace A384717.P9022871254124710676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137719 (A054966 (n + 1)).toNat

end

end A384717.P9022871254124710676

namespace A384717

/-- `A137719(A054966(n+1))` -/
def P9022871254124710676.Spec : Prop :=
  ∀ n, P9022871254124710676.a n = A384717 (n + 1)

end A384717

/-! ## A384717.P5727280579475713126

`A004526(A028837(n+1))`
-/

namespace A384717.P5727280579475713126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028837 (n + 1)).toNat

end

end A384717.P5727280579475713126

namespace A384717

/-- `A004526(A028837(n+1))` -/
def P5727280579475713126.Spec : Prop :=
  ∀ n, P5727280579475713126.a n = A384717 (n + 1)

end A384717

/-! ## A384717.P13561458542540696168

`A004526(A272299(n+1))`
-/

namespace A384717.P13561458542540696168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A272299 (n + 1)).toNat

end

end A384717.P13561458542540696168

namespace A384717

/-- `A004526(A272299(n+1))` -/
def P13561458542540696168.Spec : Prop :=
  ∀ n, P13561458542540696168.a n = A384717 (n + 1)

end A384717

/-! ## A384717.P6855335733561379715

`A002265(A130484(2*n+1)+n+1)`
-/

namespace A384717.P6855335733561379715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A130484 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A384717.P6855335733561379715

namespace A384717

/-- `A002265(A130484(2*n+1)+n+1)` -/
def P6855335733561379715.Spec : Prop :=
  ∀ n, P6855335733561379715.a n = A384717 (n + 1)

end A384717

/-!
# A384719: E.g.f. A(x) satisfies A(x) = exp( x * A(x*A(x))^2 ).

The programs for A384719, there is no canonical definition to state claims against.
-/

/-! ## A384719.P2943368328958462691

`A384721(∑[n+1]+n)`
-/

namespace A384719.P2943368328958462691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384721 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384719.P2943368328958462691

/-!
# A384720: E.g.f. A(x) satisfies A(x) = exp( x * A(x*A(x))^3 ).

The programs for A384720, there is no canonical definition to state claims against.
-/

/-! ## A384720.P5551471766306631934

`A384722(∑[n+1]+n)`
-/

namespace A384720.P5551471766306631934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384722 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384720.P5551471766306631934

/-!
# A384721: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384719.

The programs for A384721, there is no canonical definition to state claims against.
-/

/-! ## A384721.P8199535657197036870

`A005843(A379168(n))-A384718(n)`
-/

namespace A384721.P8199535657197036870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A379168 n).toNat - A384718 n

end

end A384721.P8199535657197036870

/-! ## A384721.P4561281300493815554

`A072088(A379168(n))`
-/

namespace A384721.P4561281300493815554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A379168 n).toNat

end

end A384721.P4561281300493815554

/-! ## A384721.P12086207303611681165

`or(A185213(A355427(n)), A384718(n))`
-/

namespace A384721.P12086207303611681165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185213 (A355427 n).toNat) (A384718 n)

end

end A384721.P12086207303611681165

/-! ## A384721.P6263957167606380825

`or(A185213(A185213(n)), A384718(n))`
-/

namespace A384721.P6263957167606380825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185213 (A185213 n).toNat) (A384718 n)

end

end A384721.P6263957167606380825

/-!
# A384725: Number of solid standard Young tableaux with n cells, height <= 2, and depth <= 2.

The programs for A384725, there is no canonical definition to state claims against.
-/

/-! ## A384725.P3043570724102552621

`A183423(A148166(n))`
-/

namespace A384725.P3043570724102552621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183423 (A148166 n).toNat

end

end A384725.P3043570724102552621

/-! ## A384725.P13399264297008042458

`A316468(A215979(n))`
-/

namespace A384725.P13399264297008042458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (A215979 n).toNat

end

end A384725.P13399264297008042458

/-! ## A384725.P308439235189624084

`A316468(A215980(n))`
-/

namespace A384725.P308439235189624084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (A215980 (n + 10)).toNat

end

end A384725.P308439235189624084

/-!
# A384727: Number of groups of order n (up to isomorphism) with exactly n subgroups.

The programs for A384727, there is no canonical definition to state claims against.
-/

/-! ## A384727.P7414936723389001242

`and(A002654(A039599(n)), A017910(n))`
-/

namespace A384727.P7414936723389001242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002654 (A039599 n).toNat) (A017910 n)

end

end A384727.P7414936723389001242

/-! ## A384727.P7128884243638343035

`A062301(A387411(n+2))`
-/

namespace A384727.P7128884243638343035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (A387411 (n + 2)).toNat

end

end A384727.P7128884243638343035

/-! ## A384727.P1119897353669405203

`A051731(A215417(3*n+1)-A062383(n))`
-/

namespace A384727.P1119897353669405203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A215417 (3 * n + 1) - A062383 n).toNat

end

end A384727.P1119897353669405203

/-! ## A384727.P3942545907706386542

`and(A125951(n+1), A267126(n))`
-/

namespace A384727.P3942545907706386542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125951 (n + 1)) (A267126 n)

end

end A384727.P3942545907706386542

/-! ## A384727.P10085938223770454358

`A010054(or(A113311(n), A176729(n+1)))`
-/

namespace A384727.P10085938223770454358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.lor (A113311 n) (A176729 (n + 1))).toNat

end

end A384727.P10085938223770454358

/-!
# A384728: The number of different shuffle square roots of the prefix of length 2n of the infinte word 00110011001100...

The programs for A384728, there is no canonical definition to state claims against.
-/

/-! ## A384728.P10894763553578143547

`A238434(A043320(n+2))`
-/

namespace A384728.P10894763553578143547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238434 (A043320 (n + 2)).toNat

end

end A384728.P10894763553578143547

/-! ## A384728.P7984009079070817472

`A238434(A044917(n+2))`
-/

namespace A384728.P7984009079070817472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238434 (A044917 (n + 2)).toNat

end

end A384728.P7984009079070817472

/-! ## A384728.P8438301782591840634

`A238434(A161953(n+2))`
-/

namespace A384728.P8438301782591840634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238434 (A161953 (n + 2)).toNat

end

end A384728.P8438301782591840634

/-! ## A384728.P10775685014534619732

`A238434(A187829(n+2))`
-/

namespace A384728.P10775685014534619732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238434 (A187829 (n + 2)).toNat

end

end A384728.P10775685014534619732

/-! ## A384728.P11288819925725416401

`A238434(A246337(n+2))`
-/

namespace A384728.P11288819925725416401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238434 (A246337 (n + 2)).toNat

end

end A384728.P11288819925725416401

/-!
# A384730: Expansion of (1+x-2*x^2) / (1-x-6*x^2+2*x^3).

The programs for A384730, the canonical program `A384730.P14893347924458844185` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384730 has offset 0).

The definition of A384730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2)/(1-x-6x^2+2x^3))` (program `A384730.P14893347924458844185`, by `A384730.P14893347924458844185.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384730.P14893347924458844185

`ogf((1+x-2x^2)/(1-x-6x^2+2x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384730

/-- `ogf((1+x-2x^2)/(1-x-6x^2+2x^3))` -/
def P14893347924458844185.Spec : Prop :=
  ∀ n, P14893347924458844185.a n = A384730 n

theorem P14893347924458844185.correct : P14893347924458844185.Spec := by
  intro n
  simp only [A384730]

end A384730

/-! ## A384730.P12130099942203789813

`A384731(n+1)-2*A384732(n)`
-/

namespace A384730.P12130099942203789813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384731 (n + 1) - 2 * A384732 n

end

end A384730.P12130099942203789813

namespace A384730

/-- `A384731(n+1)-2*A384732(n)` -/
def P12130099942203789813.Spec : Prop :=
  ∀ n, P12130099942203789813.a n = A384730 n

end A384730

/-!
# A384731: Expansion of (1+2*x-x^2) / (1-x-6*x^2+2*x^3).

The programs for A384731, the canonical program `A384731.P7894094139060898005` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384731 has offset 0).

The definition of A384731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2)/(1-x-6x^2+2x^3))` (program `A384731.P7894094139060898005`, by `A384731.P7894094139060898005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384731.P7894094139060898005

`ogf((1+2x-x^2)/(1-x-6x^2+2x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384731

/-- `ogf((1+2x-x^2)/(1-x-6x^2+2x^3))` -/
def P7894094139060898005.Spec : Prop :=
  ∀ n, P7894094139060898005.a n = A384731 n

theorem P7894094139060898005.correct : P7894094139060898005.Spec := by
  intro n
  simp only [A384731]

end A384731

/-! ## A384731.P5759191109708251871

`Δ[A384732(n)/2]`
-/

namespace A384731.P5759191109708251871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384732 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384731.P5759191109708251871

namespace A384731

/-- `Δ[A384732(n)/2]` -/
def P5759191109708251871.Spec : Prop :=
  ∀ n, P5759191109708251871.a n = (A384731 n : ℚ)

end A384731

/-! ## A384731.P14534776596279677521

`A384730(n+1)/2`
-/

namespace A384731.P14534776596279677521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384730 (n + 1) : ℚ) / 2

end

end A384731.P14534776596279677521

namespace A384731

/-- `A384730(n+1)/2` -/
def P14534776596279677521.Spec : Prop :=
  ∀ n, P14534776596279677521.a n = (A384731 n : ℚ)

end A384731

/-! ## A384731.P16393868769799427335

`A014682(A384730(n+1))`
-/

namespace A384731.P16393868769799427335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A384730 (n + 1)).toNat

end

end A384731.P16393868769799427335

namespace A384731

/-- `A014682(A384730(n+1))` -/
def P16393868769799427335.Spec : Prop :=
  ∀ n, P16393868769799427335.a n = A384731 n

end A384731

/-! ## A384731.P7461028195826214098

`A026741(Δ[A384732(n)])`
-/

namespace A384731.P7461028195826214098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A384731.P7461028195826214098

namespace A384731

/-- `A026741(Δ[A384732(n)])` -/
def P7461028195826214098.Spec : Prop :=
  ∀ n, P7461028195826214098.a n = A384731 n

end A384731

/-!
# A384732: Expansion of (1+2*x) / (1-x-6*x^2+2*x^3).

The programs for A384732, the canonical program `A384732.P12542306525992931754` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384732 has offset 0).

The definition of A384732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-x-6x^2+2x^3))` (program `A384732.P12542306525992931754`, by `A384732.P12542306525992931754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384732.P12542306525992931754

`ogf((1+2x)/(1-x-6x^2+2x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384732

/-- `ogf((1+2x)/(1-x-6x^2+2x^3))` -/
def P12542306525992931754.Spec : Prop :=
  ∀ n, P12542306525992931754.a n = A384732 n

theorem P12542306525992931754.correct : P12542306525992931754.Spec := by
  intro n
  simp only [A384732]

end A384732

/-! ## A384732.P7221649154528835615

`∑[A384730(n)]`
-/

namespace A384732.P7221649154528835615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384732.P7221649154528835615

namespace A384732

/-- `∑[A384730(n)]` -/
def P7221649154528835615.Spec : Prop :=
  ∀ n, P7221649154528835615.a n = A384732 n

end A384732

/-!
# A384733: a(n) = 5*binomial(n,6) + 2*binomial(n,4).

The programs for A384733, the canonical program `A384733.P10535985272961763034` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384733 has offset 0).

The definition of A384733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*C(n, 6)+2*C(n, 4)` (program `A384733.P10535985272961763034`, by `A384733.P10535985272961763034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384733.P10535985272961763034

`5*C(n, 6)+2*C(n, 4)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384733

/-- `5*C(n, 6)+2*C(n, 4)` -/
def P10535985272961763034.Spec : Prop :=
  ∀ n, (P10535985272961763034.a n : ℤ) = A384733 n

theorem P10535985272961763034.correct : P10535985272961763034.Spec := by
  intro n
  simp only [A384733]

end A384733

/-! ## A384733.P8955430321255381216

`A034827(n)+A000910(n)`
-/

namespace A384733.P8955430321255381216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034827 n + A000910 n

end

end A384733.P8955430321255381216

namespace A384733

/-- `A034827(n)+A000910(n)` -/
def P8955430321255381216.Spec : Prop :=
  ∀ n, P8955430321255381216.a n = A384733 n

theorem P8955430321255381216.correct : P8955430321255381216.Spec := by
  intro n
  simp only [A384733, Nat.add_sub_cancel, A384733.P8955430321255381216.a, A384733.P10535985272961763034.a, A000910, A000910.P14640695646812070873.a, A034827, A034827.P5779717595868083396.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384733

/-! ## A384733.P6636037868907240476

`∑[∑[A319289(A381106(n))]]`
-/

namespace A384733.P6636037868907240476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319289 (A381106 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384733.P6636037868907240476

namespace A384733

/-- `∑[∑[A319289(A381106(n))]]` -/
def P6636037868907240476.Spec : Prop :=
  ∀ n, P6636037868907240476.a n = A384733 n

end A384733

/-!
# A384735: Numbers that are prime or end in a prime number (of any length).

The programs for A384735, there is no canonical definition to state claims against.
-/

/-! ## A384735.P15278524179258529924

`lt[0, A331097(n)]`
-/

namespace A384735.P15278524179258529924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A384735.P15278524179258529924

/-! ## A384735.P3175075297811038327

`eq[A057427(3*n+2), A057427(A331097(n))]`
-/

namespace A384735.P3175075297811038327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A331097 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384735.P3175075297811038327

/-!
# A384736: Numbers k such that (28^k - 3^k)/25 is prime.

The programs for A384736, there is no canonical definition to state claims against.
-/

/-! ## A384736.P16847913027761867487

`A101595(A052963(n))`
-/

namespace A384736.P16847913027761867487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101595 (A052963 n).toNat

end

end A384736.P16847913027761867487

/-!
# A384737: a(n) is the number of distinct five-cuboid combinations filling an n X n X n cube only with at least one cut spanning through the full cube.

The programs for A384737, there is no canonical definition to state claims against.
-/

/-! ## A384737.P3075871404559340905

`A220494(A006325(n))`
-/

namespace A384737.P3075871404559340905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220494 (A006325 n).toNat

end

end A384737.P3075871404559340905

/-!
# A384739: E.g.f. A(x) satisfies A(x) = exp( x * A(x*A(x)^2) ).

The programs for A384739, there is no canonical definition to state claims against.
-/

/-! ## A384739.P2912800903871904667

`A384741(∑[n+1]+n)`
-/

namespace A384739.P2912800903871904667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384741 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384739.P2912800903871904667

/-!
# A384740: E.g.f. A(x) satisfies A(x) = exp( x * A(x*A(x)^3) ).

The programs for A384740, there is no canonical definition to state claims against.
-/

/-! ## A384740.P9206659509560601122

`A384742(∑[n+1]+n)`
-/

namespace A384740.P9206659509560601122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384742 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384740.P9206659509560601122

/-!
# A384741: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384739.

The programs for A384741, there is no canonical definition to state claims against.
-/

/-! ## A384741.P15897297337492286768

`A118759(A384804(n))`
-/

namespace A384741.P15897297337492286768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A384804 n).toNat

end

end A384741.P15897297337492286768

/-! ## A384741.P16608128584680055635

`filter[A384804(n), A102609(#)]`
-/

namespace A384741.P16608128584680055635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A384741.P16608128584680055635

/-! ## A384741.P4799322230698947587

`filter[A384804(n), A114213(#)]`
-/

namespace A384741.P4799322230698947587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A384741.P4799322230698947587

/-! ## A384741.P11377246341778952309

`filter[A384804(n), A337263(#)]`
-/

namespace A384741.P11377246341778952309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337263 (f1 j).toNat = 1) n)

end

end A384741.P11377246341778952309

/-! ## A384741.P1113988180656931121

`filter[A384804(n), A385395(#)]`
-/

namespace A384741.P1113988180656931121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A384741.P1113988180656931121

/-!
# A384743: a(n) is the number of distinct five-cuboid combinations filling n X n X n cube without allowing a cut spanning through the full cube in any of filling positions.

The programs for A384743, there is no canonical definition to state claims against.
-/

/-! ## A384743.P10657743449199903301

`A289895(A344491(n+1))`
-/

namespace A384743.P10657743449199903301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289895 (A344491 (n + 1)).toNat

end

end A384743.P10657743449199903301

/-! ## A384743.P13002353071078816254

`A000325(n)-A200648(A199874(n))`
-/

namespace A384743.P13002353071078816254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A200648 (A199874 n).toNat

end

end A384743.P13002353071078816254

/-!
# A384744: Numbers in which all substrings in base 16 are primes.

The programs for A384744, there is no canonical definition to state claims against.
-/

/-! ## A384744.P10398885883432684515

`filter[A237600(n+1), A385395(#)]`
-/

namespace A384744.P10398885883432684515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A384744.P10398885883432684515

/-! ## A384744.P243596678731670560

`∩[A028777(n+1), A120639(n+1)]`
-/

namespace A384744.P243596678731670560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384744.P243596678731670560

/-! ## A384744.P8085198989852590820

`∩[A076564(n+1), A237600(n+1)]`
-/

namespace A384744.P8085198989852590820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384744.P8085198989852590820

/-! ## A384744.P125939823983481696

`eq[A085491(A008288(n)), A175126(n)]`
-/

namespace A384744.P125939823983481696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (A008288 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384744.P125939823983481696

/-!
# A384747: Triangle read by rows: T(n,k) is the number of rooted ordered trees with node weights summing to n, where the root has weight 0, non-root node weights are in {1,..,k}, and no nodes have the same weight as their parent node.

The programs for A384747, there is no canonical definition to state claims against.
-/

/-! ## A384747.P1312217330524163745

`A131469(A256549(n))`
-/

namespace A384747.P1312217330524163745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A256549 n).toNat

end

end A384747.P1312217330524163745

/-! ## A384747.P16561828256421819091

`A324662(A287315(n))`
-/

namespace A384747.P16561828256421819091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 (A287315 n).toNat

end

end A384747.P16561828256421819091

/-! ## A384747.P11691963126739552238

`A324662(A289546(n))`
-/

namespace A384747.P11691963126739552238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 (A289546 n).toNat

end

end A384747.P11691963126739552238

/-! ## A384747.P10321282975673815880

`A078091(A256311(n))`
-/

namespace A384747.P10321282975673815880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078091 (A256311 n).toNat

end

end A384747.P10321282975673815880

/-! ## A384747.P1563595214281446533

`A241314(A135313(n))`
-/

namespace A384747.P1563595214281446533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 (A135313 n).toNat

end

end A384747.P1563595214281446533

/-!
# A384748: Number of rooted ordered trees with node weights summing to n, where the root has weight 0, non-root node weights are greater than 0, and no nodes have the same weight as their parent node.

The programs for A384748, there is no canonical definition to state claims against.
-/

/-! ## A384748.P7071930079426296119

`A384747(∑[n]+n)`
-/

namespace A384748.P7071930079426296119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384747 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384748.P7071930079426296119

/-! ## A384748.P1731670656409274693

`A228354(A089259(n))`
-/

namespace A384748.P1731670656409274693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A089259 n).toNat

end

end A384748.P1731670656409274693

/-! ## A384748.P1073720359166447019

`A228354(A274174(n))`
-/

namespace A384748.P1073720359166447019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A274174 n).toNat

end

end A384748.P1073720359166447019

/-! ## A384748.P4792737968132343634

`A228354(A309733(n))`
-/

namespace A384748.P4792737968132343634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A309733 n).toNat

end

end A384748.P4792737968132343634

/-!
# A384749: E.g.f. A(x) satisfies A(x) = exp( x * A(x*A(x)^2)^2 ).

The programs for A384749, there is no canonical definition to state claims against.
-/

/-! ## A384749.P15933824545001977890

`A384751(∑[n+1]+n)`
-/

namespace A384749.P15933824545001977890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384751 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384749.P15933824545001977890

/-!
# A384750: E.g.f. A(x) satisfies A(x) = exp( x * A(x*A(x)^3)^3 ).

The programs for A384750, there is no canonical definition to state claims against.
-/

/-! ## A384750.P6523984522806405358

`A384752(∑[n+1]+n)`
-/

namespace A384750.P6523984522806405358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384752 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384750.P6523984522806405358

/-!
# A384753: Order of the permutation of {1,...,n} formed by a Josephus elimination variation: take 2, skip 1.

The programs for A384753, there is no canonical definition to state claims against.
-/

/-! ## A384753.P16181943611481805297

`∏{e}[A140429(n), A141419(#)]`
-/

namespace A384753.P16181943611481805297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A141419 (Nat.factorization (f1 n).natAbs p)

end

end A384753.P16181943611481805297

/-!
# A384754: The number of face-connected components of polyhedra in the omnitruncated cubic honeycomb up to translation, rotation, and reflection.

The programs for A384754, there is no canonical definition to state claims against.
-/

/-! ## A384754.P9510888779899061601

`A338073(∑[n!])`
-/

namespace A384754.P9510888779899061601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338073 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384754.P9510888779899061601

/-!
# A384755: Triangle read by rows: T(n,k) is the number of face-connected components of polyhedra with k prisms and n-k truncated cuboctahedra in the omnitruncated cubic honeycomb up to rotation and reflection, 0 <= k <= n.

The programs for A384755, there is no canonical definition to state claims against.
-/

/-! ## A384755.P15818567454975601863

`A342999(A384756(n))`
-/

namespace A384755.P15818567454975601863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342999 (A384756 n).toNat

end

end A384755.P15818567454975601863

/-!
# A384756: Triangle read by rows: T(n,k) is the number of face-connected components of polyhedra with k prisms and n-k truncated cuboctahedra in the omnitruncated cubic honeycomb up to translation and rotation, 0 <= k <= n.

The programs for A384756, there is no canonical definition to state claims against.
-/

/-! ## A384756.P15403578002763088187

`A102799(A384755(n))`
-/

namespace A384756.P15403578002763088187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102799 (A384755 n).toNat

end

end A384756.P15403578002763088187

/-!
# A384757: E.g.f. A(x) satisfies A(x) = exp( -x * A(-x*A(x)) ).

The programs for A384757, there is no canonical definition to state claims against.
-/

/-! ## A384757.P13295075165656366172

`A384758(∑[n+1]+n)`
-/

namespace A384757.P13295075165656366172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384758 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384757.P13295075165656366172

/-!
# A384760: E.g.f. A(x) satisfies A(x) = exp( -x*A(x) * A(-x*A(x)) ).

The programs for A384760, there is no canonical definition to state claims against.
-/

/-! ## A384760.P9235732238321056335

`A384761(∑[n+1]+n)`
-/

namespace A384760.P9235732238321056335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384761 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384760.P9235732238321056335

/-!
# A384763: Product of the Euler totients of the unitary divisors of n.

The programs for A384763, the canonical program `A384763.P13786111190154472342` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384763 has offset 1).

The definition of A384763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A384763.P13786111190154472342

`A000010(n+1)^(A034444(n+1)/2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A384763

/-- `A000010(n+1)^(A034444(n+1)/2)` -/
def P13786111190154472342.Spec : Prop :=
  ∀ n, P13786111190154472342.a n = (A384763 (n + 1) : ℝ)

end A384763

/-! ## A384763.P1199570309900873441

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^A038548(∏{p}[n+1, #])`
-/

namespace A384763.P1199570309900873441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ (A038548 (∏ p ∈ Nat.primeFactors (f3 n), p) : ℤ)

end

end A384763.P1199570309900873441

namespace A384763

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^A038548(∏{p}[n+1, #])` -/
def P1199570309900873441.Spec : Prop :=
  ∀ n, P1199570309900873441.a n = (A384763 (n + 1) : ℚ)

end A384763

/-! ## A384763.P7972213104659501654

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^A053644(∏{p}[n+1, 2%#²]-1)`
-/

namespace A384763.P7972213104659501654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ (A053644 (∏ p ∈ Nat.primeFactors (f3 n), 2 % p ^ 2 - 1) : ℤ)

end

end A384763.P7972213104659501654

namespace A384763

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^A053644(∏{p}[n+1, 2%#²]-1)` -/
def P7972213104659501654.Spec : Prop :=
  ∀ n, P7972213104659501654.a n = (A384763 (n + 1) : ℚ)

end A384763

/-! ## A384763.P1214905749000901942

`sqrt(A000010(n+1))^A034444(n+1)`
-/

namespace A384763.P1214905749000901942
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000010 (n + 1) : ℝ) ^ (A034444 (n + 1) : ℤ)

end

end A384763.P1214905749000901942

namespace A384763

/-- `sqrt(A000010(n+1))^A034444(n+1)` -/
def P1214905749000901942.Spec : Prop :=
  ∀ n, P1214905749000901942.a n = (A384763 (n + 1) : ℝ)

end A384763

/-! ## A384763.P4996766808659581347

`A000010(n+1)^A340786(∏{p}[n+1, #])`
-/

namespace A384763.P4996766808659581347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ (A340786 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A384763.P4996766808659581347

namespace A384763

/-- `A000010(n+1)^A340786(∏{p}[n+1, #])` -/
def P4996766808659581347.Spec : Prop :=
  ∀ n, P4996766808659581347.a n = (A384763 (n + 1) : ℚ)

end A384763

/-! ## A384763.P2004866911041999434

`A000010(n+1)^A011782(∑{p}[n+1, gcd(n, #)])`
-/

namespace A384763.P2004866911041999434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ (A011782 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℤ)

end

end A384763.P2004866911041999434

namespace A384763

/-- `A000010(n+1)^A011782(∑{p}[n+1, gcd(n, #)])` -/
def P2004866911041999434.Spec : Prop :=
  ∀ n, P2004866911041999434.a n = (A384763 (n + 1) : ℚ)

end A384763

/-! ## A384763.P993738312938498778

`A000010(n+1)^A152271(A309307(n+1))`
-/

namespace A384763.P993738312938498778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ (A152271 (A309307 (n + 1)).toNat : ℤ)

end

end A384763.P993738312938498778

namespace A384763

/-- `A000010(n+1)^A152271(A309307(n+1))` -/
def P993738312938498778.Spec : Prop :=
  ∀ n, P993738312938498778.a n = (A384763 (n + 1) : ℚ)

end A384763

/-! ## A384763.P10756866219163343894

`A000010(n+1)^A349056(∏{p}[n+1, #])`
-/

namespace A384763.P10756866219163343894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ (A349056 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A384763.P10756866219163343894

namespace A384763

/-- `A000010(n+1)^A349056(∏{p}[n+1, #])` -/
def P10756866219163343894.Spec : Prop :=
  ∀ n, P10756866219163343894.a n = (A384763 (n + 1) : ℚ)

end A384763

/-!
# A384764: Number of uniquely solveable n X m nonograms (hanjie), read by antidiagonals.

The programs for A384764, there is no canonical definition to state claims against.
-/

/-! ## A384764.P11142702816645782891

`A109680(A385862(n))`
-/

namespace A384764.P11142702816645782891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A385862 n).toNat

end

end A384764.P11142702816645782891

/-! ## A384764.P10005227208654032703

`A385862(A328617(n+1)-1)`
-/

namespace A384764.P10005227208654032703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385862 (A328617 (n + 1) - 1).toNat

end

end A384764.P10005227208654032703

/-! ## A384764.P6491568330443853295

`A385862(n)%∑[A201393(3*n+1)]`
-/

namespace A384764.P6491568330443853295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385862 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384764.P6491568330443853295

/-! ## A384764.P17649249239076297625

`A385862(n)%A007504(A026007(n))`
-/

namespace A384764.P17649249239076297625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385862 n) (A007504 (A026007 n).toNat)

end

end A384764.P17649249239076297625

/-! ## A384764.P17746340718523892655

`gcd(A000122(A129012(n)), A385862(n))`
-/

namespace A384764.P17746340718523892655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A129012 n).toNat) (A385862 n)

end

end A384764.P17746340718523892655

/-!
# A384765: a(n) is the rad(n)-th cyclotomic polynomial evaluated at x = -1.

The programs for A384765, there is no canonical definition to state claims against.
-/

/-! ## A384765.P4838952875784781495

`A020513(A007947(n+1))`
-/

namespace A384765.P4838952875784781495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A007947 (n + 1)).toNat

end

end A384765.P4838952875784781495

/-! ## A384765.P7939693015719245551

`A020513(∏{p}[n+1, #])`
-/

namespace A384765.P7939693015719245551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A384765.P7939693015719245551

/-! ## A384765.P13851192954597714592

`A020513(A015053(n+1))`
-/

namespace A384765.P13851192954597714592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A015053 (n + 1)).toNat

end

end A384765.P13851192954597714592

/-! ## A384765.P18178058786631121422

`A020513(A166140(n+1))`
-/

namespace A384765.P18178058786631121422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A166140 (n + 1)).toNat

end

end A384765.P18178058786631121422

/-! ## A384765.P16387072551932796764

`A020513(A259445(n+1))`
-/

namespace A384765.P16387072551932796764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A259445 (n + 1)).toNat

end

end A384765.P16387072551932796764

/-! ## A384765.P10527371521237446830

`A020513(A327937(n+1))`
-/

namespace A384765.P10527371521237446830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A327937 (n + 1)).toNat

end

end A384765.P10527371521237446830

/-! ## A384765.P17838421822494510492

`A020513(A318956(n+1))`
-/

namespace A384765.P17838421822494510492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A318956 (n + 1)).toNat

end

end A384765.P17838421822494510492

/-!
# A384770: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and under-under-under-down dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A384770, there is no canonical definition to state claims against.
-/

/-! ## A384770.P9863893692478009448

`A380201(n+1)+A086015(A329355(n+1))`
-/

namespace A384770.P9863893692478009448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380201 (n + 1) + A086015 (A329355 (n + 1)).toNat

end

end A384770.P9863893692478009448

/-! ## A384770.P17772423823031523731

`A374516(A325014(n+1)+A179070(n+1))`
-/

namespace A384770.P17772423823031523731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 (A325014 (n + 1) + A179070 (n + 1)).toNat

end

end A384770.P17772423823031523731

/-! ## A384770.P6367755011368765185

`A008611(A080782(n+1)%A132056(3*n+1))`
-/

namespace A384770.P6367755011368765185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.tmod (A080782 (n + 1)) (A132056 (3 * n + 1))).toNat

end

end A384770.P6367755011368765185

/-!
# A384772: Triangle read by row: T(n,k) is the number of the k-th eliminated person in a variant of the Josephus problem in which first three people are skipped, then one is eliminated, repeating until all n people are eliminated.

The programs for A384772, there is no canonical definition to state claims against.
-/

/-! ## A384772.P15917185141577616067

`A212620(A059123(n)+A003238(n+1))`
-/

namespace A384772.P15917185141577616067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212620 (A059123 n + A003238 (n + 1)).toNat

end

end A384772.P15917185141577616067

/-! ## A384772.P3417155742097188287

`A001221(A293940(n)+A007947(2*(n+2)))`
-/

namespace A384772.P3417155742097188287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A293940 n + A007947 (2 * (n + 2))).toNat

end

end A384772.P3417155742097188287

/-! ## A384772.P2616833250762067338

`A051162(gcd(A152664(3*n+2), A176506(3*n+4)))`
-/

namespace A384772.P2616833250762067338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (Int.gcd (A152664 (3 * n + 2)) (A176506 (3 * n + 4)))

end

end A384772.P2616833250762067338

/-!
# A384773: a(1) = 1, a(2) = 1. For n > 2 if a(n-1) = k is a novel term, a(n) = a(n-1-k). Otherwise if a(n-1) is a repeat term a(n) = number of m; 1 <= m <= n-2 such that a(m) = a(n-1).

The programs for A384773, there is no canonical definition to state claims against.
-/

/-! ## A384773.P12148605395749795491

`A132173(A173122(n+1))`
-/

namespace A384773.P12148605395749795491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132173 (A173122 (n + 1)).toNat

end

end A384773.P12148605395749795491

/-! ## A384773.P2670150884460320858

`A366712(A369278(n+2))`
-/

namespace A384773.P2670150884460320858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366712 (A369278 (n + 2)).toNat

end

end A384773.P2670150884460320858

/-! ## A384773.P15205944004907791069

`A132173(A261981(n+3))`
-/

namespace A384773.P15205944004907791069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132173 (A261981 (n + 3)).toNat

end

end A384773.P15205944004907791069

/-! ## A384773.P11348219929741024852

`A001222(A143569(n)+A100484(n+1))`
-/

namespace A384773.P11348219929741024852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A143569 n + A100484 (n + 1)).toNat

end

end A384773.P11348219929741024852

/-! ## A384773.P14065249716221126841

`A081604(A162630(2*n+1)^A329638(2*n+1))`
-/

namespace A384773.P14065249716221126841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (SequenceMachineLib.roundAway ((A162630 (2 * n + 1) : ℚ) ^ (A329638 (2 * n + 1) : ℤ))).toNat

end

end A384773.P14065249716221126841

/-!
# A384774: Elimination order of the first person in a variation of the Josephus problem in which first three people are skipped, then one is eliminated, repeating until all n people are eliminated.

The programs for A384774, there is no canonical definition to state claims against.
-/

/-! ## A384774.P18027669940161646587

`A384770(∑[n]+1)`
-/

namespace A384774.P18027669940161646587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384770 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A384774.P18027669940161646587

/-!
# A384777: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A382450.

The programs for A384777, there is no canonical definition to state claims against.
-/

/-! ## A384777.P13663314076416886688

`A131144(A378292(n))%A096450(3*(n+1))`
-/

namespace A384777.P13663314076416886688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131144 (A378292 n).toNat) (A096450 (3 * (n + 1)))

end

end A384777.P13663314076416886688

/-! ## A384777.P5686446636335602867

`A131144(A378292(n)%A341992(3*n+2))`
-/

namespace A384777.P5686446636335602867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131144 (Int.tmod (A378292 n) (A341992 (3 * n + 2))).toNat

end

end A384777.P5686446636335602867

/-! ## A384777.P15076113570090591707

`A255961(n)+A185213(A185213(n))`
-/

namespace A384777.P15076113570090591707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 n + A185213 (A185213 n).toNat

end

end A384777.P15076113570090591707

/-! ## A384777.P1827922546114294516

`and(A243449(A017042(n)), A394047(n))`
-/

namespace A384777.P1827922546114294516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A243449 (A017042 n).toNat) (A394047 n)

end

end A384777.P1827922546114294516

/-!
# A384781: Number of values of s, 0 < s <= n - 1, such that (-s)^s == s (mod n).

The programs for A384781, there is no canonical definition to state claims against.
-/

/-! ## A384781.P7182211176074951116

`and(A034784(n+1), A051903(A335456(n)))`
-/

namespace A384781.P7182211176074951116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034784 (n + 1)) (A051903 (A335456 n).toNat)

end

end A384781.P7182211176074951116

/-!
# A384783: The number of unordered factorizations of the n-th powerful number into 1 and prime powers p^e where p is prime and e >= 2 (A025475).

The programs for A384783, there is no canonical definition to state claims against.
-/

/-! ## A384783.P7773167718713515772

`A188585(A001694(n+1))`
-/

namespace A384783.P7773167718713515772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (A001694 (n + 1)).toNat

end

end A384783.P7773167718713515772

/-! ## A384783.P12059853415691012281

`∏{e}[A001694(n+1), A002865(#)]`
-/

namespace A384783.P12059853415691012281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002865 (Nat.factorization (f1 n).natAbs p)

end

end A384783.P12059853415691012281

/-! ## A384783.P5552027233750193975

`gcd(A005811(A117265(n)), A286485(n+1))`
-/

namespace A384783.P5552027233750193975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005811 (A117265 n).toNat) (A286485 (n + 1))

end

end A384783.P5552027233750193975

/-! ## A384783.P15630017444466415474

`A348416(A184173(2*(n+2))+A129336(n+1))`
-/

namespace A384783.P15630017444466415474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348416 (A184173 (2 * (n + 2)) + A129336 (n + 1)).toNat

end

end A384783.P15630017444466415474

/-!
# A384784: Numbers with a record number of unordered factorizations into 1 and prime powers p^e where p is prime and e >= 2 (A025475).

The programs for A384784, there is no canonical definition to state claims against.
-/

/-! ## A384784.P10536923605890088635

`record[A214339(n+1)^A121857(n)]`
-/

namespace A384784.P10536923605890088635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214339 (n + 1) : ℚ) ^ (A121857 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384784.P10536923605890088635

/-! ## A384784.P4778856399048692919

`record[and(-(A122227(2*(n+1))+A002113(2*n+5)), 2^n)]`
-/

namespace A384784.P4778856399048692919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(A122227 (2 * (n + 1)) + A002113 (2 * n + 5))) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384784.P4778856399048692919

/-! ## A384784.P17576539240311498851

`record[A043529(A114901(n))^n]`
-/

namespace A384784.P17576539240311498851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A114901 n).toNat ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384784.P17576539240311498851

/-! ## A384784.P6304569079614559814

`∩[A077552(n), A191142(n+1)]`
-/

namespace A384784.P6304569079614559814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384784.P6304569079614559814

/-! ## A384784.P6316396837051937782

`∩[A146541(n), A191142(n+1)]`
-/

namespace A384784.P6316396837051937782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384784.P6316396837051937782

/-!
# A384785: The number of unordered factorizations of the n-th cubefull number into 1 and prime powers p^e where p is prime and e >= 3 (A246549).

The programs for A384785, there is no canonical definition to state claims against.
-/

/-! ## A384785.P18076036522274025752

`A005361(A296555(n))`
-/

namespace A384785.P18076036522274025752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A296555 n).toNat

end

end A384785.P18076036522274025752

/-! ## A384785.P15003071215788427013

`A043561(A133851(n+1))`
-/

namespace A384785.P15003071215788427013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A133851 (n + 1)).toNat

end

end A384785.P15003071215788427013

/-! ## A384785.P2137075309623414265

`A322482(A103824(n+1))`
-/

namespace A384785.P2137075309623414265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322482 (A103824 (n + 1)).toNat

end

end A384785.P2137075309623414265

/-! ## A384785.P9383499187415195632

`A378887(A289177(n+1))`
-/

namespace A384785.P9383499187415195632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378887 (A289177 (n + 1)).toNat

end

end A384785.P9383499187415195632

/-! ## A384785.P8595380404969978942

`A181819(A079496(Δ[ceil((n-2)/3)²]))`
-/

namespace A384785.P8595380404969978942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 : ℚ) / 3⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A079496 (f1 (n + 1) - f1 n).toNat).toNat

end

end A384785.P8595380404969978942

/-!
# A384786: Numbers with a record number of unordered factorizations into 1 and prime powers p^e where p is prime and e >= 3 (A246549).

The programs for A384786, there is no canonical definition to state claims against.
-/

/-! ## A384786.P2656281183029883190

`∩[A097029(n+1), A018199(n)]`
-/

namespace A384786.P2656281183029883190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018199 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384786.P2656281183029883190

/-! ## A384786.P5738379685602562603

`∩[A018199(n), A181818(n+1)]`
-/

namespace A384786.P5738379685602562603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384786.P5738379685602562603

/-! ## A384786.P6701101165532737530

`∩[A018199(n), A076470(n+1)]`
-/

namespace A384786.P6701101165532737530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384786.P6701101165532737530

/-! ## A384786.P6349292457660954750

`∩[A018199(n), A363063(n+1)]`
-/

namespace A384786.P6349292457660954750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384786.P6349292457660954750

/-! ## A384786.P5969890057148657640

`∩[A295296(n+1), A018199(n)]`
-/

namespace A384786.P5969890057148657640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018199 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384786.P5969890057148657640

/-! ## A384786.P7465087784011470958

`∩[A018199(n), A094942(n+1)]`
-/

namespace A384786.P7465087784011470958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384786.P7465087784011470958

/-! ## A384786.P4601912414086689202

`∩[A018199(n), A034776(n+1)]`
-/

namespace A384786.P4601912414086689202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384786.P4601912414086689202

/-! ## A384786.P132301386751323636

`∩[A122408(n+1), A018199(n)]`
-/

namespace A384786.P132301386751323636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018199 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384786.P132301386751323636

/-! ## A384786.P15594375764120847355

`∩[A018199(n), A326703(n+1)]`
-/

namespace A384786.P15594375764120847355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384786.P15594375764120847355

/-! ## A384786.P9409820488321120438

`∩[A018199(n), A161140(n+1)]`
-/

namespace A384786.P9409820488321120438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384786.P9409820488321120438

/-!
# A384787: E.g.f. A(x) satisfies A(x) = exp( x*A(x) * A(2*x*A(x)) ).

The programs for A384787, there is no canonical definition to state claims against.
-/

/-! ## A384787.P12716862086928902290

`A384788(∑[n+1]+n)`
-/

namespace A384787.P12716862086928902290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384788 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384787.P12716862086928902290

/-!
# A384789: The number of ways in which the n-th cubefull number can be expressed as b^3 * c^4 * d^5, with b, c and d >= 1.

The programs for A384789, there is no canonical definition to state claims against.
-/

/-! ## A384789.P17714391480690109878

`A000700(A383007(n+1)%A270613(n+1))`
-/

namespace A384789.P17714391480690109878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod (A383007 (n + 1)) (A270613 (n + 1))).toNat

end

end A384789.P17714391480690109878

/-! ## A384789.P8617521304817634763

`A107286(A384785(n+1)!)`
-/

namespace A384789.P8617521304817634763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (Nat.factorial (A384785 (n + 1)).toNat)

end

end A384789.P8617521304817634763

/-! ## A384789.P15070290660989296219

`A046205(val(A230238(3*(n+1)), 2))`
-/

namespace A384789.P15070290660989296219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046205 (SequenceMachineLib.valuation (A230238 (3 * (n + 1))).toNat 2)

end

end A384789.P15070290660989296219

/-! ## A384789.P17550630884101667627

`gcd(A085006(n+1), A141029(n+1))`
-/

namespace A384789.P17550630884101667627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085006 (n + 1)) (A141029 (n + 1))

end

end A384789.P17550630884101667627

/-! ## A384789.P6382217639924052971

`A049710(n+1)^A227186(A344608(n))`
-/

namespace A384789.P6382217639924052971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049710 (n + 1) : ℚ) ^ (A227186 (A344608 n).toNat : ℤ)

end

end A384789.P6382217639924052971

/-!
# A384790: Numbers with a record number of ways in which they can be expressed as b^2 * c^3, with b and c >= 1.

The programs for A384790, there is no canonical definition to state claims against.
-/

/-! ## A384790.P1635255646558052456

`A046952(n+1)^3`
-/

namespace A384790.P1635255646558052456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046952 (n + 1) ^ 3

end

end A384790.P1635255646558052456

/-! ## A384790.P2395709240418127299

`A002182(n+1)^6`
-/

namespace A384790.P2395709240418127299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) ^ 6

end

end A384790.P2395709240418127299

/-! ## A384790.P5924664390678447810

`A001014(A002182(n+1))`
-/

namespace A384790.P5924664390678447810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A002182 (n + 1)).toNat

end

end A384790.P5924664390678447810

/-!
# A384791: Numbers with a record number of ways in which they can be expressed as b^3 * c^4 * d^5, with b, c and d >= 1.

The programs for A384791, there is no canonical definition to state claims against.
-/

/-! ## A384791.P14223371771836655959

`A244421(A049084(n+1)+12*n)`
-/

namespace A384791.P14223371771836655959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244421 (A049084 (n + 1) + (12 * n : ℤ)).toNat

end

end A384791.P14223371771836655959

/-! ## A384791.P4502736840829266235

`∑{d}[A046528(A205783(3*n+1)), #]`
-/

namespace A384791.P4502736840829266235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (A205783 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A384791.P4502736840829266235

/-!
# A384792: Smallest number with a n-character traditional Japanese notation.

The programs for A384792, there is no canonical definition to state claims against.
-/

/-! ## A384792.P13765976741406385989

`A065031(A051859(n+1))`
-/

namespace A384792.P13765976741406385989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (A051859 (n + 1)).toNat

end

end A384792.P13765976741406385989

/-! ## A384792.P3219444797991077230

`filter[A178569(2*n+1), A143104(#)]`
-/

namespace A384792.P3219444797991077230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143104 (f1 j).toNat = 1) n)

end

end A384792.P3219444797991077230

/-!
# A384797: a(n) = A047800(n) - A047800(n-1).

The programs for A384797, there is no canonical definition to state claims against.
-/

/-! ## A384797.P3126887514746812207

`A047800(n+1)-A047800(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384797.P3126887514746812207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047800 (n + 1) - A047800 n

end

end A384797.P3126887514746812207

/-! ## A384797.P4097118896878516466

`Δ[A047800(n)]`
-/

namespace A384797.P4097118896878516466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384797.P4097118896878516466

/-! ## A384797.P9334101831901368670

`Δ[A301853(∑[n+1])]`
-/

namespace A384797.P9334101831901368670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301853 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384797.P9334101831901368670

/-!
# A384798: Records in A384797.

The programs for A384798, there is no canonical definition to state claims against.
-/

/-! ## A384798.P14708921227538063302

`record[Δ[A047800(n)]]`
-/

namespace A384798.P14708921227538063302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384798.P14708921227538063302

/-! ## A384798.P9581042167989046236

`record[A384797(n+1)]`
-/

namespace A384798.P9581042167989046236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384798.P9581042167989046236

/-! ## A384798.P4068704025808617268

`A384797(A384799(n+1))`
-/

namespace A384798.P4068704025808617268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384797 (A384799 (n + 1)).toNat

end

end A384798.P4068704025808617268

/-! ## A384798.P2102334317637889975

`record[A047800(n+1)-A047800(n)]`
-/

namespace A384798.P2102334317637889975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047800 (n + 1) - A047800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384798.P2102334317637889975

