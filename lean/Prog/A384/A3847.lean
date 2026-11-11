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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-! ## A384700.P4259608881548320259

`∑[∑[or(1, n)*3-3]]+∑[n]`
-/

namespace A384700.P4259608881548320259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n * 3 : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A384700.P4259608881548320259

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
# A384704: Triangle T(i, j), 1 <= j <= i, read by rows. T(i, j) is the smallest number k that has i odd divisors and whose symmetric representation of sigma, SRS(k), has j parts; when no such k exists then T(i, j) = -1.

The programs for A384704, there is no canonical definition to state claims against.
-/

/-! ## A384704.P12827642075659219642

`A400412(n+1)-A000007(A400412(n+1))`
-/

namespace A384704.P12827642075659219642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400412 (n + 1) - A000007 (A400412 (n + 1)).toNat

end

end A384704.P12827642075659219642

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

/-! ## A384705.P13559737434388086089

`A162371(A162342(n)+A001700(n))`
-/

namespace A384705.P13559737434388086089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (A162342 n + A001700 n).toNat

end

end A384705.P13559737434388086089

/-!
# A384709: a(n) = [n > 1 and A076479(n) = -Möbius(A067029(n))], where [.] is the Iverson bracket.

The programs for A384709, there is no canonical definition to state claims against.
-/

/-! ## A384709.P16633348667183432499

`char[A385096(1+n)-1]`
-/

namespace A384709.P16633348667183432499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385096 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A384709.P16633348667183432499

/-! ## A384709.P10013225943973017848

`Δ[fp[A385096(n+1)]]`
-/

namespace A384709.P10013225943973017848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385096 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A384709.P10013225943973017848

/-! ## A384709.P17420125797287065979

`A385055(A119416(1+n))`
-/

namespace A384709.P17420125797287065979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A119416 (1 + n)).toNat

end

end A384709.P17420125797287065979

/-! ## A384709.P4465549644081088982

`A385055(A013636(1+n))`
-/

namespace A384709.P4465549644081088982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A013636 (1 + n)).toNat

end

end A384709.P4465549644081088982

/-! ## A384709.P13988912935747474806

`A385055(A020338(1+n))`
-/

namespace A384709.P13988912935747474806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (A020338 (1 + n)).toNat

end

end A384709.P13988912935747474806

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

The programs for A384710, the canonical program `A384710.P3301350355556147673` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384710 has offset 0).

The definition of A384710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384710.P3301350355556147673

`1+n-A062830(n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A384710

/-- `1+n-A062830(n)` -/
def P3301350355556147673.Spec : Prop :=
  ∀ n, P3301350355556147673.a n = A384710 n

theorem P3301350355556147673.correct : P3301350355556147673.Spec := by
  intro n
  simp only [A384710]

end A384710

/-! ## A384710.P12753683483621395165

`∑{d}[n, A007431(#)]+char[1]`
-/

namespace A384710.P12753683483621395165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A384710.P12753683483621395165

namespace A384710

/-- `∑{d}[n, A007431(#)]+char[1]` -/
def P12753683483621395165.Spec : Prop :=
  ∀ n, P12753683483621395165.a n = A384710 n

end A384710

/-! ## A384710.P5898014488351855684

`∑{d}[n, A008683(n/#)*(#+1)]`
-/

namespace A384710.P5898014488351855684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n : ℚ) / (d : ℚ))).toNat * (d + 1 : ℤ)

end

end A384710.P5898014488351855684

namespace A384710

/-- `∑{d}[n, A008683(n/#)*(#+1)]` -/
def P5898014488351855684.Spec : Prop :=
  ∀ n, P5898014488351855684.a n = A384710 n

end A384710

/-! ## A384710.P5588945026464943210

`A000010(n+a(n-1)%2)` with `a(0)=0, a(1)=2`
-/

namespace A384710.P5588945026464943210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A000010 ((n : ℤ) + Int.tmod (a (n - 1)) 2).toNat

end

end A384710.P5588945026464943210

namespace A384710

/-- `A000010(n+a(n-1)%2)` -/
def P5588945026464943210.Spec : Prop :=
  ∀ n, P5588945026464943210.a n = A384710 n

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

/-! ## A384710.P10429872571770275563

`A225530(n)%(n+1)²`
-/

namespace A384710.P10429872571770275563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225530 n) ((n + 1) ^ 2 : ℤ)

end

end A384710.P10429872571770275563

namespace A384710

/-- `A225530(n)%(n+1)²` -/
def P10429872571770275563.Spec : Prop :=
  ∀ n, P10429872571770275563.a n = A384710 n

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

/-!
# A384711: Expansion of (1+x) / (1-2*x-6*x^2).

The programs for A384711, the canonical program `A384711.P3011662670924636426` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384711 has offset 0).

The definition of A384711 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-6x^2))` (program `A384711.P3011662670924636426`, by `A384711.P3011662670924636426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384711.P3011662670924636426

`ogf((1+x)/(1-2x-6x^2))`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A384711.P9643945202430680441

`2-2*(1-3*a(n-2)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A384711.P9643945202430680441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - 2 * (1 - 3 * a (n - 2) - a (n - 1))

end

end A384711.P9643945202430680441

namespace A384711

/-- `2-2*(1-3*a(n-2)-a(n-1))` -/
def P9643945202430680441.Spec : Prop :=
  ∀ n, P9643945202430680441.a n = A384711 n

end A384711

/-! ## A384711.P7512997288386647896

`∑{#}[n, C(n, #)*A123752(#)]`
-/

namespace A384711.P7512997288386647896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A123752 k

end

end A384711.P7512997288386647896

namespace A384711

/-- `∑{#}[n, C(n, #)*A123752(#)]` -/
def P7512997288386647896.Spec : Prop :=
  ∀ n, P7512997288386647896.a n = A384711 n

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

The programs for A384712, the canonical program `A384712.P13413970938566962457` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384712 has offset 0).

The definition of A384712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-2x-6x^2))` (program `A384712.P13413970938566962457`, by `A384712.P13413970938566962457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384712.P13413970938566962457

`ogf((1+2x)/(1-2x-6x^2))`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A384712.P15768139700367834508

`∑{#}[n, (-1)^(n-#)*C(n, #)*A126473(#)]`
-/

namespace A384712.P15768139700367834508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A126473 k : ℚ)

end

end A384712.P15768139700367834508

namespace A384712

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A126473(#)]` -/
def P15768139700367834508.Spec : Prop :=
  ∀ n, P15768139700367834508.a n = (A384712 n : ℚ)

end A384712

/-!
# A384714: Nonpowers of 2 whose trailing digits form a power of 2.

The programs for A384714, there is no canonical definition to state claims against.
-/

/-! ## A384714.P16003714967368545160

`filter[A385289(1+n), A347523(#)]`
-/

namespace A384714.P16003714967368545160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385289 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A384714.P16003714967368545160

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

/-! ## A384714.P8175919431143997172

`∩[A005767(1+n), A385289(n+1)]`
-/

namespace A384714.P8175919431143997172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384714.P8175919431143997172

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

The programs for A384715, the canonical program `A384715.P13819428686440206615` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384715 has offset 0).

The definition of A384715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)%4]` (program `A384715.P13819428686440206615`, by `A384715.P13819428686440206615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384715.P8943317397622989256

`A001316(n)*(A033264(n)-A085357(n)+2)`
-/

namespace A384715.P8943317397622989256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * (A033264 n - A085357 n + 2)

end

end A384715.P8943317397622989256

namespace A384715

/-- `A001316(n)*(A033264(n)-A085357(n)+2)` -/
def P8943317397622989256.Spec : Prop :=
  ∀ n, P8943317397622989256.a n = A384715 n

end A384715

/-! ## A384715.P13819428686440206615

`∑{#}[n, C(n, #)%4]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384715

/-- `∑{#}[n, C(n, #)%4]` -/
def P13819428686440206615.Spec : Prop :=
  ∀ n, (P13819428686440206615.a n : ℤ) = A384715 n

theorem P13819428686440206615.correct : P13819428686440206615.Spec := by
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

/-! ## A384715.P8939858985582138094

`sqrt(A102376(n))*A385393(n)`
-/

namespace A384715.P8939858985582138094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 n : ℝ) * (A385393 n : ℝ)

end

end A384715.P8939858985582138094

namespace A384715

/-- `sqrt(A102376(n))*A385393(n)` -/
def P8939858985582138094.Spec : Prop :=
  ∀ n, P8939858985582138094.a n = (A384715 n : ℝ)

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

/-! ## A384715.P12850037589646396967

`A060632(2*n)*A385393(n)`
-/

namespace A384715.P12850037589646396967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) * A385393 n

end

end A384715.P12850037589646396967

namespace A384715

/-- `A060632(2*n)*A385393(n)` -/
def P12850037589646396967.Spec : Prop :=
  ∀ n, P12850037589646396967.a n = A384715 n

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

The programs for A384716, the canonical program `A384716.P11863616275653796637` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384716 has offset 1).

The definition of A384716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384716.P1188190314701845704

`(n+1)^(2^(A001221(n+1)-1)-1)*A000010(n+1)`
-/

namespace A384716.P1188190314701845704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((2 : ℚ) ^ (A001221 (n + 1) - 1 : ℤ) - 1 : ℝ) * (A000010 (n + 1) : ℝ)

end

end A384716.P1188190314701845704

namespace A384716

/-- `(n+1)^(2^(A001221(n+1)-1)-1)*A000010(n+1)` -/
def P1188190314701845704.Spec : Prop :=
  ∀ n, P1188190314701845704.a n = (A384716 (n + 1) : ℝ)

end A384716

/-! ## A384716.P11863616275653796637

`A000010(A061537(n+1))`

The canonical program, it is in `Seq.B003.C005`.
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

/-! ## A384716.P5267100965599478019

`A000010((n+1)^A007875(n+1))`
-/

namespace A384716.P5267100965599478019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A007875 (n + 1) : ℤ))).toNat

end

end A384716.P5267100965599478019

namespace A384716

/-- `A000010((n+1)^A007875(n+1))` -/
def P5267100965599478019.Spec : Prop :=
  ∀ n, P5267100965599478019.a n = A384716 (n + 1)

end A384716

/-!
# A384717: Sum of floored squared chord lengths from -1 to the 2n-th roots of unity (upper semicircle, endpoints excluded).

The programs for A384717, the canonical program `A384717.P10750683684603795331` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384717 has offset 1).

The definition of A384717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384717.P4931372644070066564

`ogf((2x+4x^2+3x^3)/(1-x^2-x^3+x^5))`
-/

namespace A384717.P4931372644070066564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, 3] [1, 0, -1, -1, 0, 1] n

end

end A384717.P4931372644070066564

namespace A384717

/-- `ogf((2x+4x^2+3x^3)/(1-x^2-x^3+x^5))` -/
def P4931372644070066564.Spec : Prop :=
  ∀ n, P4931372644070066564.a n = A384717 (n + 1)

end A384717

/-! ## A384717.P10750683684603795331

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5, a(4)=6`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A384717.P16514709960337862695

`floor(∑[Δ[n²]%6]/2)`
-/

namespace A384717.P16514709960337862695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A384717.P16514709960337862695

namespace A384717

/-- `floor(∑[Δ[n²]%6]/2)` -/
def P16514709960337862695.Spec : Prop :=
  ∀ n, P16514709960337862695.a n = A384717 (n + 1)

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
# A384718: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A052750.

The programs for A384718, there is no canonical definition to state claims against.
-/

/-! ## A384718.P6469118545072239073

`A005843(A379168(n))-A384721(n)`
-/

namespace A384718.P6469118545072239073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A379168 n).toNat - A384721 n

end

end A384718.P6469118545072239073

/-! ## A384718.P13185160765719893623

`A053615(A379168(n)*A384721(n))`
-/

namespace A384718.P13185160765719893623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A379168 n * A384721 n).toNat

end

end A384718.P13185160765719893623

/-! ## A384718.P13618960932861446723

`A053615(A384751(n)*A384813(n))`
-/

namespace A384718.P13618960932861446723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A384751 n * A384813 n).toNat

end

end A384718.P13618960932861446723

/-! ## A384718.P714771197563768375

`A053615(A384751(n)*A384985(n))`
-/

namespace A384718.P714771197563768375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A384751 n * A384985 n).toNat

end

end A384718.P714771197563768375

/-! ## A384718.P7877040984672637048

`2*A072088(A379168(n))-A384751(n)`
-/

namespace A384718.P7877040984672637048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072088 (A379168 n).toNat - A384751 n

end

end A384718.P7877040984672637048

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

/-! ## A384719.P13598467968752314977

`or(1, A384721(A034856(n+1)))`
-/

namespace A384719.P13598467968752314977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A384721 (A034856 (n + 1)).toNat)

end

end A384719.P13598467968752314977

/-! ## A384719.P1424086957438658758

`A384721(A034856(n+1))+A000007(3*(n+1))`
-/

namespace A384719.P1424086957438658758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384721 (A034856 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A384719.P1424086957438658758

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

/-! ## A384720.P967202594803725751

`or(A000007(n), A384722(A034856(n+1)))`
-/

namespace A384720.P967202594803725751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A384722 (A034856 (n + 1)).toNat)

end

end A384720.P967202594803725751

/-! ## A384720.P2492710306565040049

`A384722(A034856(n+1))+A000007(3*(n+1))`
-/

namespace A384720.P2492710306565040049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384722 (A034856 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A384720.P2492710306565040049

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

/-! ## A384721.P2468080119094889225

`or(A072088(A384718(n)), A384808(n))`
-/

namespace A384721.P2468080119094889225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072088 (A384718 n).toNat) (A384808 n)

end

end A384721.P2468080119094889225

/-! ## A384721.P2527949218754678052

`or(A072088(A384811(n)), A384813(n))`
-/

namespace A384721.P2527949218754678052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072088 (A384811 n).toNat) (A384813 n)

end

end A384721.P2527949218754678052

/-! ## A384721.P11142543913108934507

`A053615(or(A384718(n), A384808(n))²)`
-/

namespace A384721.P11142543913108934507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (Int.lor (A384718 n) (A384808 n) ^ 2).toNat

end

end A384721.P11142543913108934507

/-!
# A384722: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384720.

The programs for A384722, there is no canonical definition to state claims against.
-/

/-! ## A384722.P8260145450511684563

`A005843(A384692(n))-A384690(n)`
-/

namespace A384722.P8260145450511684563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A384692 n).toNat - A384690 n

end

end A384722.P8260145450511684563

/-! ## A384722.P13905446951556891578

`A384692(n)+A072088(A379168(n))-A379168(n)`
-/

namespace A384722.P13905446951556891578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384692 n + A072088 (A379168 n).toNat - A379168 n

end

end A384722.P13905446951556891578

/-! ## A384722.P12124105677549314107

`A384690(n)+A072088(A379168(n))-A384718(n)`
-/

namespace A384722.P12124105677549314107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384690 n + A072088 (A379168 n).toNat - A384718 n

end

end A384722.P12124105677549314107

/-! ## A384722.P2429071669791875949

`A384751(n)+A384690(n)-A072088(A379168(n))`
-/

namespace A384722.P2429071669791875949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384751 n + A384690 n - A072088 (A379168 n).toNat

end

end A384722.P2429071669791875949

/-! ## A384722.P1524745017686144584

`A384811(n)+A384752(n)-A072088(A379168(n))`
-/

namespace A384722.P1524745017686144584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384811 n + A384752 n - A072088 (A379168 n).toNat

end

end A384722.P1524745017686144584

/-!
# A384723: Heinz numbers of conjugates of maximally refined strict integer partitions.

The programs for A384723, there is no canonical definition to state claims against.
-/

/-! ## A384723.P11258517239433020913

`∪[A060735(n+1), A120395(A097682(n))]`
-/

namespace A384723.P11258517239433020913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120395 (A097682 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384723.P11258517239433020913

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

/-! ## A384727.P576938105975293041

`A324828(2*A036913(n+1))`
-/

namespace A384727.P576938105975293041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324828 (2 * A036913 (n + 1)).toNat

end

end A384727.P576938105975293041

/-! ## A384727.P1119897353669405203

`A051731(A215417(3*n+1)-A062383(n))`
-/

namespace A384727.P1119897353669405203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A215417 (3 * n + 1) - A062383 n).toNat

end

end A384727.P1119897353669405203

/-! ## A384727.P2761813317513600844

`A349394(A328612(3*n+2)+A195023(n))`
-/

namespace A384727.P2761813317513600844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (A328612 (3 * n + 2) + A195023 n).toNat

end

end A384727.P2761813317513600844

/-!
# A384728: The number of different shuffle square roots of the prefix of length 2n of the infinite word 00110011001100...

The programs for A384728, there is no canonical definition to state claims against.
-/

/-! ## A384728.P12238781726639527989

`A025581(∑{#}[A238434(n+2), #])`
-/

namespace A384728.P12238781726639527989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238434 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A384728.P12238781726639527989

/-! ## A384728.P7771114500444482231

`row(A000037(row(A056841(n+1))))`
-/

namespace A384728.P7771114500444482231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A000037 (SequenceMachineLib.triRow (A056841 (n + 1)).toNat)).toNat

end

end A384728.P7771114500444482231

/-! ## A384728.P5010563454213016601

`A238434(n+2)+A136521(A062728(3*(n+1)))`
-/

namespace A384728.P5010563454213016601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238434 (n + 2) + A136521 (A062728 (3 * (n + 1))).toNat

end

end A384728.P5010563454213016601

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

/-!
# A384730: Expansion of (1+x-2*x^2) / (1-x-6*x^2+2*x^3).

The programs for A384730, the canonical program `A384730.P14893347924458844185` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384730 has offset 0).

The definition of A384730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2)/(1-x-6x^2+2x^3))` (program `A384730.P14893347924458844185`, by `A384730.P14893347924458844185.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384730.P14893347924458844185

`ogf((1+x-2x^2)/(1-x-6x^2+2x^3))`

The canonical program, it is in `Seq.B000.C049`.
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

The programs for A384731, the canonical program `A384731.P7894094139060898005` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384731 has offset 0).

The definition of A384731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2)/(1-x-6x^2+2x^3))` (program `A384731.P7894094139060898005`, by `A384731.P7894094139060898005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384731.P7894094139060898005

`ogf((1+2x-x^2)/(1-x-6x^2+2x^3))`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A384731.P11650953875744142154

`(A384732(n+1)-A384732(n))/2`
-/

namespace A384731.P11650953875744142154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384732 (n + 1) - A384732 n : ℚ) / 2

end

end A384731.P11650953875744142154

namespace A384731

/-- `(A384732(n+1)-A384732(n))/2` -/
def P11650953875744142154.Spec : Prop :=
  ∀ n, P11650953875744142154.a n = (A384731 n : ℚ)

end A384731

/-! ## A384731.P18073891880945365737

`A014682(Δ[A384732(n)])`
-/

namespace A384731.P18073891880945365737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A384731.P18073891880945365737

namespace A384731

/-- `A014682(Δ[A384732(n)])` -/
def P18073891880945365737.Spec : Prop :=
  ∀ n, P18073891880945365737.a n = A384731 n

end A384731

/-!
# A384732: Expansion of (1+2*x) / (1-x-6*x^2+2*x^3).

The programs for A384732, the canonical program `A384732.P12542306525992931754` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384732 has offset 0).

The definition of A384732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-x-6x^2+2x^3))` (program `A384732.P12542306525992931754`, by `A384732.P12542306525992931754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384732.P12542306525992931754

`ogf((1+2x)/(1-x-6x^2+2x^3))`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A384732.P5259065476893647426

`A384730(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A384732.P5259065476893647426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A384730 n + a (A023443 n).toNat

end

end A384732.P5259065476893647426

namespace A384732

/-- `A384730(n)+a(A023443(n))` -/
def P5259065476893647426.Spec : Prop :=
  ∀ n, P5259065476893647426.a n = A384732 n

end A384732

/-! ## A384732.P18144296614735535856

`A017666(A384730(n)+a(n-1))` with `a(0)=1`
-/

namespace A384732.P18144296614735535856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017666 (A384730 n + a (n - 1)).toNat

end

end A384732.P18144296614735535856

namespace A384732

/-- `A017666(A384730(n)+a(n-1))` -/
def P18144296614735535856.Spec : Prop :=
  ∀ n, P18144296614735535856.a n = A384732 n

end A384732

/-!
# A384733: a(n) = 5*binomial(n,6) + 2*binomial(n,4).

The programs for A384733, the canonical program `A384733.P10535985272961763034` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384733 has offset 0).

The definition of A384733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*C(n, 6)+2*C(n, 4)` (program `A384733.P10535985272961763034`, by `A384733.P10535985272961763034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384733.P10535985272961763034

`5*C(n, 6)+2*C(n, 4)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384733

/-- `5*C(n, 6)+2*C(n, 4)` -/
def P10535985272961763034.Spec : Prop :=
  ∀ n, (P10535985272961763034.a n : ℤ) = A384733 n

theorem P10535985272961763034.correct : P10535985272961763034.Spec := by
  intro n
  simp only [A384733]

end A384733

/-! ## A384733.P1957002971071400076

`ogf((2x^4-4x^5+7x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A384733.P1957002971071400076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 2, -4, 7] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A384733.P1957002971071400076

namespace A384733

/-- `ogf((2x^4-4x^5+7x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P1957002971071400076.Spec : Prop :=
  ∀ n, P1957002971071400076.a n = A384733 n

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

/-! ## A384733.P17330174009221403317

`5*A000579(n)+2*∑{d}[n, A346761(#)]`
-/

namespace A384733.P17330174009221403317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000579 n + 2 * (∑ d ∈ Nat.divisors (f1 n), A346761 d)

end

end A384733.P17330174009221403317

namespace A384733

/-- `5*A000579(n)+2*∑{d}[n, A346761(#)]` -/
def P17330174009221403317.Spec : Prop :=
  ∀ n, P17330174009221403317.a n = A384733 n

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

/-! ## A384735.P11697735972454703677

`comp[n+1-A331097(n+1)]`
-/

namespace A384735.P11697735972454703677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A331097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A384735.P11697735972454703677

/-! ## A384735.P12567571857988622331

`A020725(comp[n-A331097(n)-1])`
-/

namespace A384735.P12567571857988622331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A331097 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A384735.P12567571857988622331

/-! ## A384735.P12575715032835744671

`eq[A000007(2*(n+1)), A000007(A331097(n))]`
-/

namespace A384735.P12575715032835744671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A331097 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384735.P12575715032835744671

/-! ## A384735.P14190085114868643142

`eq[A040000(3*n+2), A040000(A331097(n))]`
-/

namespace A384735.P14190085114868643142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A331097 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384735.P14190085114868643142

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

/-! ## A384735.P3499247091517400462

`eq[A000122(A331097(n)), A209229(2*n+3)]`
-/

namespace A384735.P3499247091517400462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A331097 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384735.P3499247091517400462

/-!
# A384736: Numbers k such that (28^k - 3^k)/25 is prime.

The programs for A384736, there is no canonical definition to state claims against.
-/

/-! ## A384736.P8663202790877054878

`A033664(A057580(n))`
-/

namespace A384736.P8663202790877054878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (A057580 n).toNat

end

end A384736.P8663202790877054878

/-!
# A384737: a(n) is the number of distinct five-cuboid combinations filling an n X n X n cube only with at least one cut spanning through the full cube.

The programs for A384737, there is no canonical definition to state claims against.
-/

/-! ## A384737.P175825123914873768

`Δ[A280683(n^n+n)]`
-/

namespace A384737.P175825123914873768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280683 (n ^ n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384737.P175825123914873768

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

/-! ## A384739.P15597770107492393848

`A384741(A034856(n+1))%A324062(2*(n+2))`
-/

namespace A384739.P15597770107492393848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384741 (A034856 (n + 1)).toNat) (A324062 (2 * (n + 2)))

end

end A384739.P15597770107492393848

/-! ## A384739.P689407945008060670

`A384741(A034856(n+1))%A002197(n+1)`
-/

namespace A384739.P689407945008060670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384741 (A034856 (n + 1)).toNat) (A002197 (n + 1))

end

end A384739.P689407945008060670

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

/-! ## A384741.P14127547639992587454

`A053615(A384804(n)²)`
-/

namespace A384741.P14127547639992587454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A384804 n ^ 2).toNat

end

end A384741.P14127547639992587454

/-! ## A384741.P16359390987746731688

`A384804(n)%A095714(n+1)`
-/

namespace A384741.P16359390987746731688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384804 n) (A095714 (n + 1))

end

end A384741.P16359390987746731688

/-! ## A384741.P5316605684842683017

`A124778(A081422(n))*A384804(n)`
-/

namespace A384741.P5316605684842683017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A081422 n).toNat * A384804 n

end

end A384741.P5316605684842683017

/-! ## A384741.P665201917189977474

`A053615(A384804(n)*A384804(n))`
-/

namespace A384741.P665201917189977474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A384804 n * A384804 n).toNat

end

end A384741.P665201917189977474

/-!
# A384742: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384740.

The programs for A384742, there is no canonical definition to state claims against.
-/

/-! ## A384742.P4919554017340682089

`A384741(n)+A072088(A379168(n))-A379168(n)`
-/

namespace A384742.P4919554017340682089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384741 n + A072088 (A379168 n).toNat - A379168 n

end

end A384742.P4919554017340682089

/-! ## A384742.P6348515873311579091

`A384804(n)+A072088(A379168(n))-A379168(n)`
-/

namespace A384742.P6348515873311579091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384804 n + A072088 (A379168 n).toNat - A379168 n

end

end A384742.P6348515873311579091

/-! ## A384742.P5958044819925968101

`A380178(n)+A072088(A379168(n))-A384718(n)`
-/

namespace A384742.P5958044819925968101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380178 n + A072088 (A379168 n).toNat - A384718 n

end

end A384742.P5958044819925968101

/-! ## A384742.P8917477304025365708

`A384751(n)+A380178(n)-A072088(A379168(n))`
-/

namespace A384742.P8917477304025365708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384751 n + A380178 n - A072088 (A379168 n).toNat

end

end A384742.P8917477304025365708

/-! ## A384742.P2917698774587352175

`A384802(n)+A072088(A379168(n))-A384718(n)`
-/

namespace A384742.P2917698774587352175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384802 n + A072088 (A379168 n).toNat - A384718 n

end

end A384742.P2917698774587352175

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

/-! ## A384743.P18131358339056101058

`A328593(A167606(n)-A005379(n))`
-/

namespace A384743.P18131358339056101058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328593 (A167606 n - A005379 n).toNat

end

end A384743.P18131358339056101058

/-! ## A384743.P11597533454971353313

`A363807(A000142(n))+A308933(2*n+1)`
-/

namespace A384743.P11597533454971353313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A000142 n).toNat + A308933 (2 * n + 1)

end

end A384743.P11597533454971353313

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

/-! ## A384744.P3001381690674997084

`A000040(∑[A214609(n+1)!])`
-/

namespace A384744.P3001381690674997084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A214609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384744.P3001381690674997084

/-! ## A384744.P14323855255399721043

`A329954(lt[A000700(2*n), A007947(n+1)])`
-/

namespace A384744.P14323855255399721043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329954 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A384744.P14323855255399721043

/-! ## A384744.P1329560309596633827

`A000040(∑[∑{e}[A005432(n)+1, #]])`
-/

namespace A384744.P1329560309596633827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005432 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384744.P1329560309596633827

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

/-! ## A384747.P14462628831554556048

`A285189(A349740(n)²)`
-/

namespace A384747.P14462628831554556048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A349740 n ^ 2).toNat

end

end A384747.P14462628831554556048

/-! ## A384747.P14330389802412784693

`A067693(A399142(n+1))`
-/

namespace A384747.P14330389802412784693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A399142 (n + 1)).toNat

end

end A384747.P14330389802412784693

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

/-! ## A384748.P12503036302191537696

`A384747(A000096(n))*A395352(n)`
-/

namespace A384748.P12503036302191537696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384747 (A000096 n).toNat * A395352 n

end

end A384748.P12503036302191537696

/-! ## A384748.P14530822114741713306

`A384747(A000096(n))+A187795(n+1)`
-/

namespace A384748.P14530822114741713306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384747 (A000096 n).toNat + A187795 (n + 1)

end

end A384748.P14530822114741713306

/-! ## A384748.P10672176893101225904

`A382080(n+1)*A384747(A000096(n))`
-/

namespace A384748.P10672176893101225904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382080 (n + 1) * A384747 (A000096 n).toNat

end

end A384748.P10672176893101225904

/-! ## A384748.P12960872663319714340

`A384747(A000096(n))^A395352(n+2)`
-/

namespace A384748.P12960872663319714340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384747 (A000096 n).toNat : ℚ) ^ (A395352 (n + 2) : ℤ)

end

end A384748.P12960872663319714340

/-!
# A384749: E.g.f. A(x) satisfies A(x) = exp( x * A(x*A(x)^2)^2 ).

The programs for A384749, there is no canonical definition to state claims against.
-/

/-! ## A384749.P17432069892227842134

`A384751(∑[n+2]-1)`
-/

namespace A384749.P17432069892227842134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384751 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384749.P17432069892227842134

/-! ## A384749.P17341904330119689741

`or(A000007(n), A384751(A034856(n+1)))`
-/

namespace A384749.P17341904330119689741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A384751 (A034856 (n + 1)).toNat)

end

end A384749.P17341904330119689741

/-! ## A384749.P17927210527851697058

`A384751(A034856(n+1))+A000007(3*(n+1))`
-/

namespace A384749.P17927210527851697058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384751 (A034856 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A384749.P17927210527851697058

/-!
# A384750: E.g.f. A(x) satisfies A(x) = exp( x * A(x*A(x)^3)^3 ).

The programs for A384750, there is no canonical definition to state claims against.
-/

/-! ## A384750.P14811540351101526007

`A384752(∑[n+2]-1)`
-/

namespace A384750.P14811540351101526007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384752 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384750.P14811540351101526007

/-!
# A384751: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384749.

The programs for A384751, there is no canonical definition to state claims against.
-/

/-! ## A384751.P15428840745027865335

`2*A072088(A379168(n))-A384718(n)`
-/

namespace A384751.P15428840745027865335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072088 (A379168 n).toNat - A384718 n

end

end A384751.P15428840745027865335

/-! ## A384751.P16697160759415324618

`A005843(A379168(n))-A072088(A384813(n))`
-/

namespace A384751.P16697160759415324618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A379168 n).toNat - A072088 (A384813 n).toNat

end

end A384751.P16697160759415324618

/-! ## A384751.P2687336907098163550

`A005843(A379168(n))-A072088(A384985(n))`
-/

namespace A384751.P2687336907098163550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A379168 n).toNat - A072088 (A384985 n).toNat

end

end A384751.P2687336907098163550

/-! ## A384751.P9039224962350954507

`A005843(A384721(n))-A072088(A384718(n))`
-/

namespace A384751.P9039224962350954507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A384721 n).toNat - A072088 (A384718 n).toNat

end

end A384751.P9039224962350954507

/-! ## A384751.P15302490031837804464

`A005843(A384718(n))-A072088(A384811(n))`
-/

namespace A384751.P15302490031837804464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A384718 n).toNat - A072088 (A384811 n).toNat

end

end A384751.P15302490031837804464

/-!
# A384752: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384750.

The programs for A384752, there is no canonical definition to state claims against.
-/

/-! ## A384752.P16476971704763815603

`A384788(n)+A072088(A379168(n))-A379168(n)`
-/

namespace A384752.P16476971704763815603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384788 n + A072088 (A379168 n).toNat - A379168 n

end

end A384752.P16476971704763815603

/-! ## A384752.P12755031869736349903

`A384690(n)+A072088(A379168(n))-A384808(n)`
-/

namespace A384752.P12755031869736349903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384690 n + A072088 (A379168 n).toNat - A384808 n

end

end A384752.P12755031869736349903

/-! ## A384752.P11965727563357658197

`A384722(n)+A072088(A379168(n))-A384811(n)`
-/

namespace A384752.P11965727563357658197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384722 n + A072088 (A379168 n).toNat - A384811 n

end

end A384752.P11965727563357658197

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

/-! ## A384757.P14453782658567106558

`A384758(A034856(n+1))+A019590(2*n+5)`
-/

namespace A384757.P14453782658567106558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384758 (A034856 (n + 1)).toNat + A019590 (2 * n + 5)

end

end A384757.P14453782658567106558

/-!
# A384760: E.g.f. A(x) satisfies A(x) = exp( -x*A(x) * A(-x*A(x)) ).

The programs for A384760, there is no canonical definition to state claims against.
-/

/-! ## A384760.P956960986680702920

`A384761(∑[n+2]-1)`
-/

namespace A384760.P956960986680702920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384761 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384760.P956960986680702920

/-!
# A384763: Product of the Euler totients of the unitary divisors of n.

The programs for A384763, the canonical program `A384763.P13786111190154472342` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384763 has offset 1).

The definition of A384763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384763.P13786111190154472342

`A000010(n+1)^(A034444(n+1)/2)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A384763

/-- `A000010(n+1)^(A034444(n+1)/2)` -/
def P13786111190154472342.Spec : Prop :=
  ∀ n, P13786111190154472342.a n = (A384763 (n + 1) : ℝ)

end A384763

/-! ## A384763.P4087791965194754508

`A000010(n+1)^2^(A001221(n+1)-1)`
-/

namespace A384763.P4087791965194754508
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A001221 (n + 1) - 1 : ℤ) : ℝ)

end

end A384763.P4087791965194754508

namespace A384763

/-- `A000010(n+1)^2^(A001221(n+1)-1)` -/
def P4087791965194754508.Spec : Prop :=
  ∀ n, P4087791965194754508.a n = (A384763 (n + 1) : ℝ)

end A384763

/-! ## A384763.P14624412224356271348

`A000010(n+1)^(2^∑{p}[n+1, ceil(1/#)]/2)`
-/

namespace A384763.P14624412224356271348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ : ℤ) / 2 : ℝ)

end

end A384763.P14624412224356271348

namespace A384763

/-- `A000010(n+1)^(2^∑{p}[n+1, ceil(1/#)]/2)` -/
def P14624412224356271348.Spec : Prop :=
  ∀ n, P14624412224356271348.a n = (A384763 (n + 1) : ℝ)

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

/-! ## A384763.P3654117191341598531

`A000010(n+1)^A007875(n+1)`
-/

namespace A384763.P3654117191341598531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ (A007875 (n + 1) : ℤ)

end

end A384763.P3654117191341598531

namespace A384763

/-- `A000010(n+1)^A007875(n+1)` -/
def P3654117191341598531.Spec : Prop :=
  ∀ n, P3654117191341598531.a n = (A384763 (n + 1) : ℚ)

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

/-!
# A384764: Number of uniquely solvable n X m nonograms (hanjie), read by antidiagonals.

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

/-! ## A384765.P12391842907968144816

`A020513(∏{p}[1+n, #])`
-/

namespace A384765.P12391842907968144816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A384765.P12391842907968144816

/-! ## A384765.P17748549779304711107

`A020513(sqrt(∏{p}[2*n-(n-1), #²]))`
-/

namespace A384765.P17748549779304711107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (SequenceMachineLib.roundAway (Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2 : ℕ) : ℝ))).toNat

end

end A384765.P17748549779304711107

/-! ## A384765.P15267390435358307029

`A020513(A015053(1+n))`
-/

namespace A384765.P15267390435358307029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A015053 (1 + n)).toNat

end

end A384765.P15267390435358307029

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

/-! ## A384765.P14986055794004309602

`A020513(A377515(n+1))`
-/

namespace A384765.P14986055794004309602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A377515 (n + 1)).toNat

end

end A384765.P14986055794004309602

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
# A384768: Inverse binomial transform of A384674.

The programs for A384768, there is no canonical definition to state claims against.
-/

/-! ## A384768.P15666955221831567503

`∑{#}[n, (-1)^(n-#)*A384674(#)*C(n, #)]`
-/

namespace A384768.P15666955221831567503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A384674 k : ℚ) * (Nat.choose n k : ℚ)

end

end A384768.P15666955221831567503

/-! ## A384768.P8179988771137312270

`∑{#}[n, (-1)^(n-#)*C(n, #)*A384674(#)]`
-/

namespace A384768.P8179988771137312270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A384674 k : ℚ)

end

end A384768.P8179988771137312270

/-!
# A384769: Primes p such that p + 6, p + 12, p + 20, p + 26 and p + 32 are also primes.

The programs for A384769, there is no canonical definition to state claims against.
-/

/-! ## A384769.P12871564046792390085

`A156850(A156820(2*(n+1))+A014017(n))`
-/

namespace A384769.P12871564046792390085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156850 (A156820 (2 * (n + 1)) + A014017 n).toNat

end

end A384769.P12871564046792390085

/-!
# A384770: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and under-under-under-down dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A384770, there is no canonical definition to state claims against.
-/

/-! ## A384770.P608156031389032284

`A380201(n+1)+A347706(A015763(n+1))`
-/

namespace A384770.P608156031389032284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380201 (n + 1) + A347706 (A015763 (n + 1)).toNat

end

end A384770.P608156031389032284

/-! ## A384770.P9863893692478009448

`A380201(n+1)+A086015(A329355(n+1))`
-/

namespace A384770.P9863893692478009448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380201 (n + 1) + A086015 (A329355 (n + 1)).toNat

end

end A384770.P9863893692478009448

/-! ## A384770.P14191584342450859722

`A400000(A400002(n)+A171367(n))`
-/

namespace A384770.P14191584342450859722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (A400002 n + A171367 n).toNat

end

end A384770.P14191584342450859722

/-! ## A384770.P3057250271585709695

`A001222(A247295(n+3)-A052343(n))`
-/

namespace A384770.P3057250271585709695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247295 (n + 3) - A052343 n).toNat

end

end A384770.P3057250271585709695

/-! ## A384770.P13082282056095188827

`A380201(∑[A117816(n+1)²])`
-/

namespace A384770.P13082282056095188827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117816 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380201 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A384770.P13082282056095188827

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

/-! ## A384772.P8188923586770953732

`A001222(or(A024207(n), A091203(n+4)))`
-/

namespace A384772.P8188923586770953732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A024207 n) (A091203 (n + 4))).toNat

end

end A384772.P8188923586770953732

/-! ## A384772.P3417155742097188287

`A001221(A293940(n)+A007947(2*(n+2)))`
-/

namespace A384772.P3417155742097188287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A293940 n + A007947 (2 * (n + 2))).toNat

end

end A384772.P3417155742097188287

/-! ## A384772.P10961981901079861638

`A267263(A122135(2*(n+1))*A279789(n))`
-/

namespace A384772.P10961981901079861638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A122135 (2 * (n + 1)) * A279789 n).toNat

end

end A384772.P10961981901079861638

/-! ## A384772.P13502147328610596152

`A055642(A045345(n+5)%A340614(3*n+1))`
-/

namespace A384772.P13502147328610596152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A045345 (n + 5)) (A340614 (3 * n + 1))).toNat

end

end A384772.P13502147328610596152

/-!
# A384773: a(1) = 1, a(2) = 1. For n > 2 if a(n-1) = k is a novel term, a(n) = a(n-1-k). Otherwise if a(n-1) is a repeat term a(n) = number of m; 1 <= m <= n-2 such that a(m) = a(n-1).

The programs for A384773, there is no canonical definition to state claims against.
-/

/-! ## A384773.P16642840136996864229

`A193592(lt[A000032(n), A260780(n)])`
-/

namespace A384773.P16642840136996864229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A384773.P16642840136996864229

/-! ## A384773.P9509310021840587239

`A277822(A003592(n+1)*A146703(n+5))`
-/

namespace A384773.P9509310021840587239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A003592 (n + 1) * A146703 (n + 5)).toNat

end

end A384773.P9509310021840587239

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

/-! ## A384774.P9751729344562019063

`A384770(A000124(n))%A144513(n)`
-/

namespace A384774.P9751729344562019063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384770 (A000124 n).toNat) (A144513 n)

end

end A384774.P9751729344562019063

/-! ## A384774.P6626598909934239228

`A384770(A000124(n))+A080224(2*n+3)`
-/

namespace A384774.P6626598909934239228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384770 (A000124 n).toNat + A080224 (2 * n + 3)

end

end A384774.P6626598909934239228

/-! ## A384774.P17579755195708599781

`A384770(A000124(n))+A119879(A063919(n+1))`
-/

namespace A384774.P17579755195708599781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384770 (A000124 n).toNat + A119879 (A063919 (n + 1)).toNat

end

end A384774.P17579755195708599781

/-! ## A384774.P9594113323659737710

`A384770(A000124(n))+A157779(A273013(2*n+1))`
-/

namespace A384774.P9594113323659737710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384770 (A000124 n).toNat + A157779 (A273013 (2 * n + 1)).toNat

end

end A384774.P9594113323659737710

/-!
# A384777: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A382450.

The programs for A384777, there is no canonical definition to state claims against.
-/

/-! ## A384777.P11893262926689882737

`A381602(n)+A001222(3^A392378(n))-A384654(n)`
-/

namespace A384777.P11893262926689882737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381602 n + A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A392378 n : ℤ))).toNat - A384654 n

end

end A384777.P11893262926689882737

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

/-! ## A384777.P17793998332282181248

`A131144(A378292(n)%A258288(n+4))`
-/

namespace A384777.P17793998332282181248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131144 (Int.tmod (A378292 n) (A258288 (n + 4 + 19))).toNat

end

end A384777.P17793998332282181248

/-! ## A384777.P3534219218027102205

`and(A033567(A162573(n+1)), A394047(n))`
-/

namespace A384777.P3534219218027102205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033567 (A162573 (n + 1)).toNat) (A394047 n)

end

end A384777.P3534219218027102205

/-!
# A384781: Number of values of s, 0 < s <= n - 1, such that (-s)^s == s (mod n).

The programs for A384781, there is no canonical definition to state claims against.
-/

/-! ## A384781.P17105931019600999865

`and(A122283(A286515(n)), A359008(n))`
-/

namespace A384781.P17105931019600999865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122283 (A286515 n).toNat) (A359008 n)

end

end A384781.P17105931019600999865

/-! ## A384781.P9128724037618922049

`A001899(A082182(n+1)-A309048(n))`
-/

namespace A384781.P9128724037618922049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A082182 (n + 1) - A309048 n).toNat

end

end A384781.P9128724037618922049

/-! ## A384781.P18369206495012759784

`A342748(gcd(A032085(n+4), A078408(n)))`
-/

namespace A384781.P18369206495012759784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342748 (Int.gcd (A032085 (n + 4)) (A078408 n))

end

end A384781.P18369206495012759784

/-! ## A384781.P5872326102206254654

`A124270(A227615(n))%A353533(n+5)`
-/

namespace A384781.P5872326102206254654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124270 (A227615 n).toNat) (A353533 (n + 5))

end

end A384781.P5872326102206254654

/-! ## A384781.P13446558978211471558

`A399497(C(A394785(n), A001222(n+1)))`
-/

namespace A384781.P13446558978211471558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399497 (Nat.choose (A394785 n).toNat (A001222 (n + 1)).toNat)

end

end A384781.P13446558978211471558

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

/-! ## A384783.P2148756408474750306

`∏{e}[A001694(1+n), A002865(#)]`
-/

namespace A384783.P2148756408474750306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002865 (Nat.factorization (f1 n).natAbs p)

end

end A384783.P2148756408474750306

/-! ## A384783.P7211838957608685552

`∏{e}[A001694(n+1), A187219(#)]`
-/

namespace A384783.P7211838957608685552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A187219 (Nat.factorization (f1 n).natAbs p)

end

end A384783.P7211838957608685552

/-! ## A384783.P13512297653188126272

`filter[A188585(n+1), A011558(#)]`
-/

namespace A384783.P13512297653188126272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A384783.P13512297653188126272

/-! ## A384783.P5418994523895478423

`filter[A188585(n+1), A022933(#)]`
-/

namespace A384783.P5418994523895478423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022933 (f1 j).toNat = 1) n)

end

end A384783.P5418994523895478423

/-! ## A384783.P13774646007973487672

`filter[A188585(n+1), A145568(#)]`
-/

namespace A384783.P13774646007973487672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A384783.P13774646007973487672

/-! ## A384783.P465799863413598708

`filter[A188585(n+1), A168046(#)]`
-/

namespace A384783.P465799863413598708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A384783.P465799863413598708

/-! ## A384783.P9241154168451682032

`filter[A188585(n+1), A168182(#)]`
-/

namespace A384783.P9241154168451682032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A384783.P9241154168451682032

/-! ## A384783.P1325056689669378841

`filter[A188585(n+1), A168184(#)]`
-/

namespace A384783.P1325056689669378841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A384783.P1325056689669378841

/-!
# A384784: Numbers with a record number of unordered factorizations into 1 and prime powers p^e where p is prime and e >= 2 (A025475).

The programs for A384784, there is no canonical definition to state claims against.
-/

/-! ## A384784.P3880099109586719073

`record[A040000(n)^A007953(2*(n+1))]`
-/

namespace A384784.P3880099109586719073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040000 n : ℚ) ^ (A007953 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384784.P3880099109586719073

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

/-! ## A384784.P7691295306071396448

`record[A000079(n+2)%A000043(2*(n+1))]`
-/

namespace A384784.P7691295306071396448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 2)) (A000043 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384784.P7691295306071396448

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

/-! ## A384785.P885839821618807237

`A008480(A247146(2*n+5))`
-/

namespace A384785.P885839821618807237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A247146 (2 * n + 5)).toNat

end

end A384785.P885839821618807237

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
# A384788: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384787.

The programs for A384788, there is no canonical definition to state claims against.
-/

/-! ## A384788.P7403291627562791075

`A384752(n)+A379168(n)-A072088(A379168(n))`
-/

namespace A384788.P7403291627562791075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384752 n + A379168 n - A072088 (A379168 n).toNat

end

end A384788.P7403291627562791075

/-! ## A384788.P2486631854897703523

`A384692(n)+A072088(A379168(n))-A384811(n)`
-/

namespace A384788.P2486631854897703523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384692 n + A072088 (A379168 n).toNat - A384811 n

end

end A384788.P2486631854897703523

/-! ## A384788.P7129330155707875231

`A384862(n)+A072088(A379168(n))-A384718(n)`
-/

namespace A384788.P7129330155707875231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384862 n + A072088 (A379168 n).toNat - A384718 n

end

end A384788.P7129330155707875231

/-! ## A384788.P9403880841999701358

`A384862(n)+A384751(n)-A072088(A379168(n))`
-/

namespace A384788.P9403880841999701358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384862 n + A384751 n - A072088 (A379168 n).toNat

end

end A384788.P9403880841999701358

/-! ## A384788.P2977436147062909095

`A384722(n)+A072088(A379168(n))-A385061(n)`
-/

namespace A384788.P2977436147062909095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384722 n + A072088 (A379168 n).toNat - A385061 n

end

end A384788.P2977436147062909095

/-!
# A384789: The number of ways in which the n-th cubefull number can be expressed as b^3 * c^4 * d^5, with b, c and d >= 1.

The programs for A384789, there is no canonical definition to state claims against.
-/

/-! ## A384789.P15359790989146695476

`∏{e}[A036966(n+1), A008680(#)]`
-/

namespace A384789.P15359790989146695476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008680 (Nat.factorization (f1 n).natAbs p)

end

end A384789.P15359790989146695476

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

/-!
# A384790: Numbers with a record number of ways in which they can be expressed as b^2 * c^3, with b and c >= 1.

The programs for A384790, there is no canonical definition to state claims against.
-/

/-! ## A384790.P7983149625548664540

`A046952(1+n)^3`
-/

namespace A384790.P7983149625548664540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046952 (1 + n) ^ 3

end

end A384790.P7983149625548664540

/-! ## A384790.P12704730758330472608

`A002182(1+n)^6`
-/

namespace A384790.P12704730758330472608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (1 + n) ^ 6

end

end A384790.P12704730758330472608

/-! ## A384790.P2079191677175213308

`A340840(1+n)^6`
-/

namespace A384790.P2079191677175213308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340840 (1 + n) ^ 6

end

end A384790.P2079191677175213308

/-! ## A384790.P2263292877052123697

`record[A365901(n+1)]^6`
-/

namespace A384790.P2263292877052123697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 6

end

end A384790.P2263292877052123697

/-! ## A384790.P12778395092852143108

`(A135372(n+1)-1)^6`
-/

namespace A384790.P12778395092852143108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135372 (n + 1) - 1) ^ 6

end

end A384790.P12778395092852143108

/-! ## A384790.P1701567133352931158

`A046952(n+1)*A046952(n+1)*A046952(n+1)`
-/

namespace A384790.P1701567133352931158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046952 (n + 1) * A046952 (n + 1) * A046952 (n + 1)

end

end A384790.P1701567133352931158

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

/-! ## A384797.P10610356858688870663

`Δ[A160663(n)+a(A000038(n))]` with `a(0)=1`
-/

namespace A384797.P10610356858688870663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A160663 n + f1 (A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384797.P10610356858688870663

/-! ## A384797.P13627445088243619626

`Δ[A160663(n)+a(A158388(n)-1)]` with `a(0)=1`
-/

namespace A384797.P13627445088243619626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A160663 n + f1 (A158388 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384797.P13627445088243619626

/-! ## A384797.P12291642792743007921

`Δ[A160663(n)+a(A127750(2*n)-2)]` with `a(0)=1`
-/

namespace A384797.P12291642792743007921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A160663 n + f1 (A127750 (2 * n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384797.P12291642792743007921

/-! ## A384797.P7119020754940105082

`Δ[A160663(n)+A000007(a(n-1))+1]` with `a(0)=1`
-/

namespace A384797.P7119020754940105082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A160663 n + A000007 (f1 (n - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384797.P7119020754940105082

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

/-! ## A384798.P12490560434281459063

`A384797(A384799(1+n))`
-/

namespace A384798.P12490560434281459063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384797 (A384799 (1 + n)).toNat

end

end A384798.P12490560434281459063

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

/-! ## A384798.P13323789682170056963

`record[Δ[A301853(∑[n+1])]]`
-/

namespace A384798.P13323789682170056963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301853 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384798.P13323789682170056963

