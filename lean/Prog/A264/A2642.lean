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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A264200: Numerator of sum of numbers in set g(n) generated as in Comments.

The programs for A264200, there is no canonical definition to state claims against.
-/

/-! ## A264200.P8434695939991069633

`3*a(n-1)+4*a(n-2)-8*a(n-3)-8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=19`
-/

namespace A264200.P8434695939991069633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 19] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) - 8 * a (n - 3) - 8 * a (n - 4)

end

end A264200.P8434695939991069633

/-! ## A264200.P10410495466852811127

`A063727(n)-abs(∑[(-2)^n])`
-/

namespace A264200.P10410495466852811127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A264200.P10410495466852811127

/-! ## A264200.P4144502357749016117

`∑[A084057(n)-A078008(n)]`
-/

namespace A264200.P4144502357749016117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n - A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264200.P4144502357749016117

/-! ## A264200.P8760638532202672531

`abs(A063727(n)-∑[A078008(n)])`
-/

namespace A264200.P8760638532202672531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063727 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A264200.P8760638532202672531

/-! ## A264200.P3907187898510082091

`∑[A084057(n)-abs(A151575(n))]`
-/

namespace A264200.P3907187898510082091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n - |A151575 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264200.P3907187898510082091

/-!
# A264201: Numerator of sum of numbers in set g(n) generated as in Comments.

The programs for A264201, there is no canonical definition to state claims against.
-/

/-! ## A264201.P6006517531031429156

`A027925(A214763(n))-A323014(2*n+5)`
-/

namespace A264201.P6006517531031429156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027925 (A214763 n).toNat - A323014 (2 * n + 5)

end

end A264201.P6006517531031429156

/-!
# A264202: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

The programs for A264202, the canonical program `A264202.P8990464749144740541` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264202 has offset 1).

The definition of A264202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264202.P3109034883686367037

`ogf((18+42x-7x^2-33x^3+7x^4+2x^5)/(1-3x-18x^2-5x^3+18x^4-3x^5-x^6))`
-/

namespace A264202.P3109034883686367037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [18, 42, -7, -33, 7, 2] [1, -3, -18, -5, 18, -3, -1] n

end

end A264202.P3109034883686367037

namespace A264202

/-- `ogf((18+42x-7x^2-33x^3+7x^4+2x^5)/(1-3x-18x^2-5x^3+18x^4-3x^5-x^6))` -/
def P3109034883686367037.Spec : Prop :=
  ∀ n, P3109034883686367037.a n = A264202 (n + 1)

end A264202

/-! ## A264202.P8990464749144740541

`Δ[A020706(n)]*A006253(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A264202

/-- `Δ[A020706(n)]*A006253(n+2)` -/
def P8990464749144740541.Spec : Prop :=
  ∀ n, P8990464749144740541.a n = A264202 (n + 1)

theorem P8990464749144740541.correct : P8990464749144740541.Spec := by
  intro n
  simp only [A264202, Nat.add_sub_cancel]

end A264202

/-! ## A264202.P95291368597925441

`Δ[A109437(n+2)]*A020695(n)`
-/

namespace A264202.P95291368597925441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020695 n

end

end A264202.P95291368597925441

namespace A264202

/-- `Δ[A109437(n+2)]*A020695(n)` -/
def P95291368597925441.Spec : Prop :=
  ∀ n, P95291368597925441.a n = A264202 (n + 1)

end A264202

/-! ## A264202.P17856047985263721882

`A000045(n+3)*A006253(n+2)`
-/

namespace A264202.P17856047985263721882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) * A006253 (n + 2)

end

end A264202.P17856047985263721882

namespace A264202

/-- `A000045(n+3)*A006253(n+2)` -/
def P17856047985263721882.Spec : Prop :=
  ∀ n, P17856047985263721882.a n = A264202 (n + 1)

end A264202

/-! ## A264202.P6223610388645339492

`A006253(n+2)*A212804(n+4)`
-/

namespace A264202.P6223610388645339492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (n + 2) * A212804 (n + 4)

end

end A264202.P6223610388645339492

namespace A264202

/-- `A006253(n+2)*A212804(n+4)` -/
def P6223610388645339492.Spec : Prop :=
  ∀ n, P6223610388645339492.a n = A264202 (n + 1)

end A264202

/-! ## A264202.P12330404605940067687

`A000045(n+3)*Δ[A109437(n+2)]`
-/

namespace A264202.P12330404605940067687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) * (f1 (n + 1) - f1 n)

end

end A264202.P12330404605940067687

namespace A264202

/-- `A000045(n+3)*Δ[A109437(n+2)]` -/
def P12330404605940067687.Spec : Prop :=
  ∀ n, P12330404605940067687.a n = A264202 (n + 1)

end A264202

/-!
# A264203: Number of (n+1) X (3+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

The programs for A264203, there is no canonical definition to state claims against.
-/

/-! ## A264203.P15053759063339110582

`record[3*(a(n-1)+a(n-2))-a(n-3)]²` with `a(0)=9, a(1)=1, a(2)=2, a(3)=9`
-/

namespace A264203.P15053759063339110582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 1, 2, 9] fun n f1 =>
  3 * (f1 (n - 1) + f1 (n - 2)) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A264203.P15053759063339110582

/-! ## A264203.P3088761418777616372

`A006253(n+2)²`
-/

namespace A264203.P3088761418777616372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (n + 2) ^ 2

end

end A264203.P3088761418777616372

/-! ## A264203.P5340060466018083468

`Δ[Δ[A072335(n)]]²`
-/

namespace A264203.P5340060466018083468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264203.P5340060466018083468

/-! ## A264203.P17854857555127412026

`A264004(2*n+3)`
-/

namespace A264203.P17854857555127412026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264004 (2 * n + 3)

end

end A264203.P17854857555127412026

/-! ## A264203.P8660877032507393056

`Δ[A109437(n+2)]²`
-/

namespace A264203.P8660877032507393056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264203.P8660877032507393056

/-! ## A264203.P10389937566767772347

`Δ[Δ[A112832(n+1)]]²`
-/

namespace A264203.P10389937566767772347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112832 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264203.P10389937566767772347

/-! ## A264203.P4687058515768852080

`(∑[A217233(n+2)]+2)²`
-/

namespace A264203.P4687058515768852080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A264203.P4687058515768852080

/-! ## A264203.P17705413246289657360

`(A105968(n+1)+A001834(n+1))²`
-/

namespace A264203.P17705413246289657360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105968 (n + 1) + A001834 (n + 1)) ^ 2

end

end A264203.P17705413246289657360

/-! ## A264203.P7873713519051698530

`(A109437(n+2)-A109437(n+3))²`
-/

namespace A264203.P7873713519051698530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109437 (n + 2) - A109437 (n + 3)) ^ 2

end

end A264203.P7873713519051698530

/-!
# A264204: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

The programs for A264204, there is no canonical definition to state claims against.
-/

/-! ## A264204.P1081893267012910540

`A006253(n+2)*A028447(n+2)`
-/

namespace A264204.P1081893267012910540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (n + 2) * A028447 (n + 2)

end

end A264204.P1081893267012910540

/-! ## A264204.P3568053438618329747

`sqrt(A264203(n+1))*A028447(n+2)`
-/

namespace A264204.P3568053438618329747
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264203 (n + 1) : ℝ) * (A028447 (n + 2) : ℝ)

end

end A264204.P3568053438618329747

/-! ## A264204.P12697117416544862898

`sqrt(A264203(n+1))*sqrt(A264205(n+1))`
-/

namespace A264204.P12697117416544862898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264203 (n + 1) : ℝ) * Real.sqrt (A264205 (n + 1) : ℝ)

end

end A264204.P12697117416544862898

/-! ## A264204.P6295732663803730192

`sqrt(A264203(n+1)*A264205(n+1))`
-/

namespace A264204.P6295732663803730192
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264203 (n + 1) * A264205 (n + 1) : ℝ)

end

end A264204.P6295732663803730192

/-!
# A264205: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

The programs for A264205, there is no canonical definition to state claims against.
-/

/-! ## A264205.P14571666223254168953

`A028447(n+2)²`
-/

namespace A264205.P14571666223254168953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028447 (n + 2) ^ 2

end

end A264205.P14571666223254168953

/-! ## A264205.P10784659149143122877

`A264208(2*n+3)`
-/

namespace A264205.P10784659149143122877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264208 (2 * n + 3)

end

end A264205.P10784659149143122877

/-! ## A264205.P14665453115100761596

`A028447(n+2)^A020639(2*(n+1))`
-/

namespace A264205.P14665453115100761596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028447 (n + 2) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A264205.P14665453115100761596

/-! ## A264205.P4622864010922145767

`A028447(n+2)^gcd(2, A008612(A016813(n)))`
-/

namespace A264205.P4622864010922145767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028447 (n + 2) ^ Int.gcd 2 (A008612 (A016813 n).toNat)

end

end A264205.P4622864010922145767

/-! ## A264205.P839166343104577876

`A028447(n+2)^A000010(Δ[A081834(n+1)])`
-/

namespace A264205.P839166343104577876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028447 (n + 2) : ℚ) ^ (A000010 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A264205.P839166343104577876

/-! ## A264205.P15742357652931253825

`A264204(n+1)/A264203(n+1)*A264204(n+1)`
-/

namespace A264205.P15742357652931253825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264204 (n + 1) : ℚ) / (A264203 (n + 1) : ℚ) * (A264204 (n + 1) : ℚ)

end

end A264205.P15742357652931253825

/-! ## A264205.P11949493213943919457

`A165052(A193073(n+1))+A028447(n+2)*A028447(n+2)`
-/

namespace A264205.P11949493213943919457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165052 (A193073 (n + 1)).toNat + A028447 (n + 2) * A028447 (n + 2)

end

end A264205.P11949493213943919457

/-!
# A264206: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

The programs for A264206, there is no canonical definition to state claims against.
-/

/-! ## A264206.P1550242701672389138

`A028447(n+2)*A028448(n+2)`
-/

namespace A264206.P1550242701672389138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028447 (n + 2) * A028448 (n + 2)

end

end A264206.P1550242701672389138

/-! ## A264206.P8494543906970776716

`A264207(A052905(n+3))`
-/

namespace A264206.P8494543906970776716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (A052905 (n + 3)).toNat

end

end A264206.P8494543906970776716

/-!
# A264207: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

The programs for A264207, there is no canonical definition to state claims against.
-/

/-! ## A264207.P5552680019684122276

`A264003(n+1)-A191228(A022185(n))`
-/

namespace A264207.P5552680019684122276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264003 (n + 1) - A191228 (A022185 n).toNat

end

end A264207.P5552680019684122276

/-! ## A264207.P1634494792960199779

`A264003(n+1)-A191228(A022187(n))`
-/

namespace A264207.P1634494792960199779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264003 (n + 1) - A191228 (A022187 n).toNat

end

end A264207.P1634494792960199779

/-!
# A264208: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

The programs for A264208, there is no canonical definition to state claims against.
-/

/-! ## A264208.P9423244915581009365

`A264207(∑[n+1]+2)`
-/

namespace A264208.P9423244915581009365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264208.P9423244915581009365

/-! ## A264208.P1332593314570615663

`record[A264207(A133263(val(n+1, 2)+1))]`
-/

namespace A264208.P1332593314570615663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264208.P1332593314570615663

/-!
# A264209: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

The programs for A264209, there is no canonical definition to state claims against.
-/

/-! ## A264209.P2592863731518879740

`A264207(∑[n+2]+4)`
-/

namespace A264209.P2592863731518879740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264209.P2592863731518879740

/-! ## A264209.P11742362891005143083

`A264207(A167614(n+1))+floor(n/10)`
-/

namespace A264209.P11742362891005143083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (A167614 (n + 1)).toNat + ⌊(n : ℚ) / 10⌋

end

end A264209.P11742362891005143083

/-! ## A264209.P1063575603800346759

`A347689(n)+A264207(A167614(n+1))`
-/

namespace A264209.P1063575603800346759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A264207 (A167614 (n + 1)).toNat

end

end A264209.P1063575603800346759

/-! ## A264209.P17800599357167197022

`A047996(n)*A264207(A167614(n+1))`
-/

namespace A264209.P17800599357167197022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A264207 (A167614 (n + 1)).toNat

end

end A264209.P17800599357167197022

/-! ## A264209.P8527458462957964976

`A107711(n)*A264207(A167614(n+1))`
-/

namespace A264209.P8527458462957964976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107711 n * A264207 (A167614 (n + 1)).toNat

end

end A264209.P8527458462957964976

/-!
# A264210: Number of (4+1) X (n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

The programs for A264210, there is no canonical definition to state claims against.
-/

/-! ## A264210.P3171052907436520487

`A264207(∑[n+3]+7)`
-/

namespace A264210.P3171052907436520487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264210.P3171052907436520487

/-! ## A264210.P8739834250361668274

`A264207(A141214(n)+7)+A208848(n)`
-/

namespace A264210.P8739834250361668274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (A141214 n + 7).toNat + A208848 n

end

end A264210.P8739834250361668274

/-! ## A264210.P3591180225832740551

`A264207(A052905(n)+9)+A208848(n)`
-/

namespace A264210.P3591180225832740551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (A052905 n + 9).toNat + A208848 n

end

end A264210.P3591180225832740551

/-! ## A264210.P9951959575994599363

`A264207(A055999(n)+10)+A208848(n)`
-/

namespace A264210.P9951959575994599363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (A055999 n + 10).toNat + A208848 n

end

end A264210.P9951959575994599363

/-!
# A264211: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264211, the canonical program `A264211.P11373080242988587153` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264211 has offset 1).

The definition of A264211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264211.P11373080242988587153

`ogf((17-6x-31x^2+18x^3+34x^4-13x^6-2x^7)/(1-6x-3x^2+16x^3-3x^4-16x^5-3x^6+6x^7+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A264211

/-- `ogf((17-6x-31x^2+18x^3+34x^4-13x^6-2x^7)/(1-6x-3x^2+16x^3-3x^4-16x^5-3x^6+6x^7+x^8))` -/
def P11373080242988587153.Spec : Prop :=
  ∀ n, P11373080242988587153.a n = A264211 (n + 1)

theorem P11373080242988587153.correct : P11373080242988587153.Spec := by
  intro n
  simp only [A264211, Nat.add_sub_cancel]

end A264211

/-! ## A264211.P11263814795772595856

`A264217(∑[n+2])`
-/

namespace A264211.P11263814795772595856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264211.P11263814795772595856

namespace A264211

/-- `A264217(∑[n+2])` -/
def P11263814795772595856.Spec : Prop :=
  ∀ n, P11263814795772595856.a n = A264211 (n + 1)

end A264211

/-! ## A264211.P3758817309671847061

`record[A264217(Δ[A003453(n+5)])]`
-/

namespace A264211.P3758817309671847061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264211.P3758817309671847061

namespace A264211

/-- `record[A264217(Δ[A003453(n+5)])]` -/
def P3758817309671847061.Spec : Prop :=
  ∀ n, P3758817309671847061.a n = A264211 (n + 1)

end A264211

/-! ## A264211.P6498879313789010459

`record[A264217(A233583(n+1)+A000217(n))]`
-/

namespace A264211.P6498879313789010459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A233583 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264211.P6498879313789010459

namespace A264211

/-- `record[A264217(A233583(n+1)+A000217(n))]` -/
def P6498879313789010459.Spec : Prop :=
  ∀ n, P6498879313789010459.a n = A264211 (n + 1)

end A264211

/-! ## A264211.P35173122001972626

`A264217(A000096(n+1))+A070202(n+1)`
-/

namespace A264211.P35173122001972626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A000096 (n + 1)).toNat + A070202 (n + 1)

end

end A264211.P35173122001972626

namespace A264211

/-- `A264217(A000096(n+1))+A070202(n+1)` -/
def P35173122001972626.Spec : Prop :=
  ∀ n, P35173122001972626.a n = A264211 (n + 1)

end A264211

/-!
# A264212: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264212, there is no canonical definition to state claims against.
-/

/-! ## A264212.P3366635512280405987

`A264217(∑[n+3]+1)`
-/

namespace A264212.P3366635512280405987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264212.P3366635512280405987

/-! ## A264212.P11840116577204051245

`A264217(A034856(n+2))%A264179(n)`
-/

namespace A264212.P11840116577204051245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264217 (A034856 (n + 2)).toNat) (A264179 (n + 14))

end

end A264212.P11840116577204051245

/-!
# A264213: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264213, there is no canonical definition to state claims against.
-/

/-! ## A264213.P17603061856046478309

`A264217(∑[floor(acot(n)²)+n+4]+1)`
-/

namespace A264213.P17603061856046478309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A264213.P17603061856046478309

/-! ## A264213.P83674748997841645

`A264217(A141214(n+1))`
-/

namespace A264213.P83674748997841645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A141214 (n + 1)).toNat

end

end A264213.P83674748997841645

/-! ## A264213.P5386375193975882574

`A264217(A155212(n)+5)`
-/

namespace A264213.P5386375193975882574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A155212 n + 5).toNat

end

end A264213.P5386375193975882574

/-! ## A264213.P1651110774245135295

`A264217(A056000(n)+7)`
-/

namespace A264213.P1651110774245135295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A056000 n + 7).toNat

end

end A264213.P1651110774245135295

/-! ## A264213.P4936598089366705737

`A264217(eq[4, A209434(n)])`
-/

namespace A264213.P4936598089366705737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264213.P4936598089366705737

/-!
# A264214: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264214, there is no canonical definition to state claims against.
-/

/-! ## A264214.P1427871382373795857

`A264217(Δ[A264443(n)])`
-/

namespace A264214.P1427871382373795857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (f1 (n + 1) - f1 n).toNat

end

end A264214.P1427871382373795857

/-! ## A264214.P10046757127636713925

`A264217(eq[4, A193592(n)])`
-/

namespace A264214.P10046757127636713925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264214.P10046757127636713925

/-! ## A264214.P17041871832165374443

`A264217(Δ[A023545(n+1)])`
-/

namespace A264214.P17041871832165374443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (f1 (n + 1) - f1 n).toNat

end

end A264214.P17041871832165374443

/-! ## A264214.P17515434518605433839

`A264217(eq[4, A049286(n+1)])`
-/

namespace A264214.P17515434518605433839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264214.P17515434518605433839

/-! ## A264214.P4319648548262072535

`A264217(eq[5, A200370(n+1)])`
-/

namespace A264214.P4319648548262072535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264214.P4319648548262072535

/-!
# A264215: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264215, there is no canonical definition to state claims against.
-/

/-! ## A264215.P10175104882360596934

`A264217(A052905(n+3))`
-/

namespace A264215.P10175104882360596934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A052905 (n + 3)).toNat

end

end A264215.P10175104882360596934

/-! ## A264215.P4654603307190201093

`A264217(A056119(n)+16)`
-/

namespace A264215.P4654603307190201093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A056119 n + 16).toNat

end

end A264215.P4654603307190201093

/-! ## A264215.P4092014413090205840

`A264217(eq[3, A219347(n)])`
-/

namespace A264215.P4092014413090205840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264215.P4092014413090205840

/-! ## A264215.P16621905708066706624

`A264217(eq[3, A274661(n)])`
-/

namespace A264215.P16621905708066706624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264215.P16621905708066706624

/-!
# A264216: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264216, there is no canonical definition to state claims against.
-/

/-! ## A264216.P18147759214837914881

`A264217(Δ[A023551(n+2)])`
-/

namespace A264216.P18147759214837914881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (f1 (n + 1) - f1 n).toNat

end

end A264216.P18147759214837914881

/-! ## A264216.P9559849220915848772

`A264217(eq[2, A219347(n)-2])`
-/

namespace A264216.P9559849220915848772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264216.P9559849220915848772

/-! ## A264216.P14224082846443260618

`A264217(eq[7, A200370(n+1)])`
-/

namespace A264216.P14224082846443260618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264216.P14224082846443260618

/-!
# A264218: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264218, the canonical program `A264218.P7166098722440373323` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264218 has offset 1).

The definition of A264218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264218.P7166098722440373323

`ogf((4+9x+14x^2+2x^3-5x^4-2x^5)/(1-2x-2x^2-6x^3-2x^4+2x^5+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A264218

/-- `ogf((4+9x+14x^2+2x^3-5x^4-2x^5)/(1-2x-2x^2-6x^3-2x^4+2x^5+x^6))` -/
def P7166098722440373323.Spec : Prop :=
  ∀ n, P7166098722440373323.a n = A264218 (n + 1)

theorem P7166098722440373323.correct : P7166098722440373323.Spec := by
  intro n
  simp only [A264218, Nat.add_sub_cancel]

end A264218

/-! ## A264218.P5542497776786869623

`A264217(∑[n]+1)`
-/

namespace A264218.P5542497776786869623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264218.P5542497776786869623

namespace A264218

/-- `A264217(∑[n]+1)` -/
def P5542497776786869623.Spec : Prop :=
  ∀ n, P5542497776786869623.a n = A264218 (n + 1)

end A264218

/-! ## A264218.P635599718113136543

`record[A010054(n)*A264217(n+1)]`
-/

namespace A264218.P635599718113136543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264218.P635599718113136543

namespace A264218

/-- `record[A010054(n)*A264217(n+1)]` -/
def P635599718113136543.Spec : Prop :=
  ∀ n, P635599718113136543.a n = A264218 (n + 1)

end A264218

/-! ## A264218.P12588592701739539962

`record[A264217(n+1)/A228836(n)]`
-/

namespace A264218.P12588592701739539962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264217 (n + 1) : ℚ) / (A228836 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264218.P12588592701739539962

namespace A264218

/-- `record[A264217(n+1)/A228836(n)]` -/
def P12588592701739539962.Spec : Prop :=
  ∀ n, P12588592701739539962.a n = (A264218 (n + 1) : ℚ)

end A264218

/-! ## A264218.P12888858273297742775

`lcm(A033999(n), A264217(A000124(n)))`
-/

namespace A264218.P12888858273297742775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A264217 (A000124 n).toNat)

end

end A264218.P12888858273297742775

namespace A264218

/-- `lcm(A033999(n), A264217(A000124(n)))` -/
def P12888858273297742775.Spec : Prop :=
  ∀ n, (P12888858273297742775.a n : ℤ) = A264218 (n + 1)

end A264218

/-!
# A264219: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264219, there is no canonical definition to state claims against.
-/

/-! ## A264219.P11668029987513185442

`A264217(∑[n+1]+2)`
-/

namespace A264219.P11668029987513185442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264219.P11668029987513185442

/-! ## A264219.P7036664124894504317

`record[A129360(n+1)*A264217(n+3)]`
-/

namespace A264219.P7036664124894504317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129360 (n + 1) * A264217 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264219.P7036664124894504317

/-!
# A264220: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264220, there is no canonical definition to state claims against.
-/

/-! ## A264220.P6746174323941537568

`A264217(∑[n+2]+4)`
-/

namespace A264220.P6746174323941537568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264220.P6746174323941537568

/-! ## A264220.P14556555960623507444

`A264217(A167614(n+1))+A184955(n)`
-/

namespace A264220.P14556555960623507444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A167614 (n + 1)).toNat + A184955 n

end

end A264220.P14556555960623507444

/-! ## A264220.P1943648273243632538

`A264217(A167614(n+1))+A185284(n)`
-/

namespace A264220.P1943648273243632538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A167614 (n + 1)).toNat + A185284 n

end

end A264220.P1943648273243632538

/-! ## A264220.P9777047938168897453

`lcm(A014815(n), A264217(A167614(n+1)))`
-/

namespace A264220.P9777047938168897453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014815 n) (A264217 (A167614 (n + 1)).toNat)

end

end A264220.P9777047938168897453

/-! ## A264220.P5688030411868942580

`or(A025455(n), A264217(A167614(n+1)))`
-/

namespace A264220.P5688030411868942580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025455 n) (A264217 (A167614 (n + 1)).toNat)

end

end A264220.P5688030411868942580

/-!
# A264221: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264221, there is no canonical definition to state claims against.
-/

/-! ## A264221.P13606245765404507721

`A264217(A141214(n)+7)`
-/

namespace A264221.P13606245765404507721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A141214 n + 7).toNat

end

end A264221.P13606245765404507721

/-! ## A264221.P16920392862755229841

`A264217(A052905(n)+9)`
-/

namespace A264221.P16920392862755229841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A052905 n + 9).toNat

end

end A264221.P16920392862755229841

/-! ## A264221.P8772313365572641197

`A264217(A055999(n)+10)`
-/

namespace A264221.P8772313365572641197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A055999 n + 10).toNat

end

end A264221.P8772313365572641197

/-! ## A264221.P10233054290344281086

`A264217(A167614(n+2)+1)`
-/

namespace A264221.P10233054290344281086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A167614 (n + 2) + 1).toNat

end

end A264221.P10233054290344281086

/-! ## A264221.P8856166434197803102

`A264217(eq[5, A131818(n+1)])`
-/

namespace A264221.P8856166434197803102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264221.P8856166434197803102

/-!
# A264222: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264222, there is no canonical definition to state claims against.
-/

/-! ## A264222.P17468729540206065565

`A264217(A167499(n+3))`
-/

namespace A264222.P17468729540206065565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A167499 (n + 3)).toNat

end

end A264222.P17468729540206065565

/-! ## A264222.P900873040964840013

`A264217(A155212(n)+13)`
-/

namespace A264222.P900873040964840013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A155212 n + 13).toNat

end

end A264222.P900873040964840013

/-! ## A264222.P14188640947029425126

`A264217(A056000(n)+15)`
-/

namespace A264222.P14188640947029425126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A056000 n + 15).toNat

end

end A264222.P14188640947029425126

/-! ## A264222.P11427716956947366487

`A264217(eq[7, A066657(n)])`
-/

namespace A264222.P11427716956947366487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264222.P11427716956947366487

/-! ## A264222.P1348996909339366729

`A264217(A000217(n+4)+5)`
-/

namespace A264222.P1348996909339366729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A000217 (n + 4) + 5).toNat

end

end A264222.P1348996909339366729

/-!
# A264223: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,0 0,1 1,0 -1,0 or 0,-2.

The programs for A264223, there is no canonical definition to state claims against.
-/

/-! ## A264223.P1262730767187317616

`A264217(A000096(n+4)+7)`
-/

namespace A264223.P1262730767187317616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A000096 (n + 4) + 7).toNat

end

end A264223.P1262730767187317616

/-! ## A264223.P5667892997984398078

`A264217(A000217(n+5)+6)`
-/

namespace A264223.P5667892997984398078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A000217 (n + 5) + 6).toNat

end

end A264223.P5667892997984398078

/-! ## A264223.P10021936104899471050

`A264217(A052905(n+2)+11)`
-/

namespace A264223.P10021936104899471050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A052905 (n + 2) + 11).toNat

end

end A264223.P10021936104899471050

/-! ## A264223.P13191813504343928964

`A264217(eq[7, A131818(n+1)])`
-/

namespace A264223.P13191813504343928964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264223.P13191813504343928964

/-! ## A264223.P7970472167784993947

`A264217(A253145(n+5)-n)`
-/

namespace A264223.P7970472167784993947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264217 (A253145 (n + 5) - (n : ℤ)).toNat

end

end A264223.P7970472167784993947

/-!
# A264224: G.f. A(x) satisfies: A(x)^2 = A( x^2/(1-4*x) ), with A(0) = 0.

The programs for A264224, there is no canonical definition to state claims against.
-/

/-! ## A264224.P10023529757972142600

`∑{#}[n, C(n, #)*A274479(#+1)]`
-/

namespace A264224.P10023529757972142600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A274479 (k + 1)

end

end A264224.P10023529757972142600

/-! ## A264224.P5903654707141817367

`∑{#}[n, A264231(#)*A264231(n-#)]`
-/

namespace A264224.P5903654707141817367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A264231 k * A264231 (n - k)

end

end A264224.P5903654707141817367

/-! ## A264224.P5967699609779188651

`A179191(n)+A004525(A000984(n))`
-/

namespace A264224.P5967699609779188651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179191 n + A004525 (A000984 n).toNat

end

end A264224.P5967699609779188651

/-! ## A264224.P11443744827885812949

`A302042(A006139(n)+A000984(n))`
-/

namespace A264224.P11443744827885812949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A006139 n + A000984 n).toNat

end

end A264224.P11443744827885812949

/-!
# A264225: G.f. A(x) satisfies: A(x)^2 = A( x^2/(1-6*x) ), with A(0) = 0.

The programs for A264225, there is no canonical definition to state claims against.
-/

/-! ## A264225.P6698342889620597438

`A003963(A362700(n)+1)+A000129(2*n)`
-/

namespace A264225.P6698342889620597438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A362700 n + 1).toNat + A000129 (2 * n)

end

end A264225.P6698342889620597438

/-!
# A264226: G.f. A(x) satisfies: A(x)^2 = A( x^2/(1-8*x) ), with A(0) = 0.

The programs for A264226, there is no canonical definition to state claims against.
-/

/-! ## A264226.P368570354468217570

`A008621(3*A180909(n+1))`
-/

namespace A264226.P368570354468217570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (3 * A180909 (n + 1)).toNat

end

end A264226.P368570354468217570

/-!
# A264227: G.f. A(x) satisfies: A(x)^2 = A( x^2/(1-10*x) ), with A(0) = 0.

The programs for A264227, there is no canonical definition to state claims against.
-/

/-! ## A264227.P11605245304754886764

`A109168(A064686(2*n+1)+(n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A264227.P11605245304754886764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (SequenceMachineLib.roundAway ((A064686 (2 * n + 1) : ℚ) + (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))).toNat

end

end A264227.P11605245304754886764

/-!
# A264228: G.f. A(x) satisfies: A(x)^3 = A( x^3/(1-3*x) ), with A(0) = 0.

The programs for A264228, there is no canonical definition to state claims against.
-/

/-! ## A264228.P4353531739935424516

`3*a(n-1)-A203019(A032559(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A264228.P4353531739935424516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1) - A203019 (A032559 (n + 1)).toNat

end

end A264228.P4353531739935424516

/-! ## A264228.P6833805476697560580

`3*a(n-1)-A203019(A032563(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A264228.P6833805476697560580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1) - A203019 (A032563 (n + 1)).toNat

end

end A264228.P6833805476697560580

/-! ## A264228.P5380976213920591089

`round(A216345(A202342(n*a(n-1)+1))/(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A264228.P5380976213920591089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway ((A216345 (A202342 ((n : ℤ) * a (n - 1) + 1).toNat).toNat : ℚ) / (n + 1 : ℚ))

end

end A264228.P5380976213920591089

/-! ## A264228.P2504215341839675642

`A008616(A097550(n)+A000244(n))`
-/

namespace A264228.P2504215341839675642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A097550 n + A000244 n).toNat

end

end A264228.P2504215341839675642

/-! ## A264228.P14280857977560744049

`A133474(n)+A004736(A058920(n))`
-/

namespace A264228.P14280857977560744049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133474 n + A004736 (A058920 n).toNat

end

end A264228.P14280857977560744049

/-!
# A264229: G.f. A(x) satisfies: A(x)^3 = A( x^3/(1-6*x) ), with A(0) = 0.

The programs for A264229, there is no canonical definition to state claims against.
-/

/-! ## A264229.P18438615282690236240

`A291270(3*A123164(n))`
-/

namespace A264229.P18438615282690236240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291270 (3 * A123164 n).toNat

end

end A264229.P18438615282690236240

/-! ## A264229.P5398392236119535923

`A194173(Δ[A329244(n)²])`
-/

namespace A264229.P5398392236119535923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194173 (f1 (n + 1) - f1 n).toNat

end

end A264229.P5398392236119535923

/-!
# A264230: G.f. A(x) satisfies: A(x)^3 = A( x^3/(1-9*x) ), with A(0) = 0.

The programs for A264230, there is no canonical definition to state claims against.
-/

/-! ## A264230.P13017686619170943619

`xor(A339089(A317852(n+1)), A376806(n))`
-/

namespace A264230.P13017686619170943619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A339089 (A317852 (n + 1)).toNat) (A376806 n)

end

end A264230.P13017686619170943619

/-! ## A264230.P3350186242720178507

`A004719(A376806(n))`
-/

namespace A264230.P3350186242720178507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A376806 n).toNat

end

end A264230.P3350186242720178507

/-!
# A264231: G.f. satisfies: A(x) = A( -x/(1-4*x) ) / sqrt(1-4*x), with A(0)=1.

The programs for A264231, there is no canonical definition to state claims against.
-/

/-! ## A264231.P10717167860655430406

`A076885(A084781(n+1))`
-/

namespace A264231.P10717167860655430406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A084781 (n + 1)).toNat

end

end A264231.P10717167860655430406

/-! ## A264231.P9070451845091240022

`A060384(A002001(n)-(∑[n/2]-n)*2^n)`
-/

namespace A264231.P9070451845091240022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (SequenceMachineLib.roundAway ((A002001 n : ℚ) - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)) * (2 ^ n : ℚ))).toNat

end

end A264231.P9070451845091240022

/-! ## A264231.P11353793543975459033

`A008616(A150756(n)+A051944(n))`
-/

namespace A264231.P11353793543975459033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A150756 n + A051944 n).toNat

end

end A264231.P11353793543975459033

/-!
# A264232: G.f. satisfies: A(x)^2 = A( x^2/(1-6*x)^2 ).

The programs for A264232, there is no canonical definition to state claims against.
-/

/-! ## A264232.P12384794056779197659

`A047592(A334608(n)+1)`
-/

namespace A264232.P12384794056779197659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (A334608 n + 1).toNat

end

end A264232.P12384794056779197659

/-!
# A264234: Numerators of the coefficients in the expansion of 1/W(x) - 1/x where W(x) is the Lambert W function.

The programs for A264234, there is no canonical definition to state claims against.
-/

/-! ## A264234.P7608880299592732828

`floor(acot(n))-n*A227831(n)`
-/

namespace A264234.P7608880299592732828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ) * A227831 n

end

end A264234.P7608880299592732828

/-! ## A264234.P15307039867662456808

`A000007(n)-n*A227831(n)`
-/

namespace A264234.P15307039867662456808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (n : ℤ) * A227831 n

end

end A264234.P15307039867662456808

/-! ## A264234.P12978322514380886292

`A151934(n)-n*A227831(n)`
-/

namespace A264234.P12978322514380886292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n - (n : ℤ) * A227831 n

end

end A264234.P12978322514380886292

/-! ## A264234.P571146386044135934

`char[A332190(n)]-n*A227831(n)`
-/

namespace A264234.P571146386044135934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332190 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (n : ℤ) * A227831 n

end

end A264234.P571146386044135934

/-! ## A264234.P9604504629225178807

`or(-(n*A227831(n)), A105348(n²))`
-/

namespace A264234.P9604504629225178807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((n : ℤ) * A227831 n)) (A105348 (n ^ 2))

end

end A264234.P9604504629225178807

/-! ## A264234.P1658125164160669895

`floor(1/A069934(n+1))-n*A227831(n)`
-/

namespace A264234.P1658125164160669895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A069934 (n + 1) : ℚ)⌋ - (n : ℤ) * A227831 n

end

end A264234.P1658125164160669895

/-! ## A264234.P4143832576957739904

`A145649(A004277(n))-n*A227831(n)`
-/

namespace A264234.P4143832576957739904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A004277 n).toNat - (n : ℤ) * A227831 n

end

end A264234.P4143832576957739904

/-! ## A264234.P4518076885672732516

`A145649(A008574(n))-n*A227831(n)`
-/

namespace A264234.P4518076885672732516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A008574 n).toNat - (n : ℤ) * A227831 n

end

end A264234.P4518076885672732516

/-! ## A264234.P9986759531648993537

`A145649(A006093(n+1))-n*A227831(n)`
-/

namespace A264234.P9986759531648993537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A006093 (n + 1)).toNat - (n : ℤ) * A227831 n

end

end A264234.P9986759531648993537

/-! ## A264234.P16096310414585999489

`A331281(A008578(n+2))-n*A227831(n)`
-/

namespace A264234.P16096310414585999489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (A008578 (n + 2)).toNat - (n : ℤ) * A227831 n

end

end A264234.P16096310414585999489

/-!
# A264235: Denominator of the coefficients in the expansion of 1/W(x) - 1/x where W(x) is the Lambert W function.

The programs for A264235, there is no canonical definition to state claims against.
-/

/-! ## A264235.P16928803922123595097

`(n+1)*A095996(C(2, n+1)+n)`
-/

namespace A264235.P16928803922123595097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A095996 (Nat.choose 2 (n + 1) + n)

end

end A264235.P16928803922123595097

/-! ## A264235.P6014783974933633758

`(n+1)*A095996(A028310(n))`
-/

namespace A264235.P6014783974933633758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A095996 (A028310 n).toNat

end

end A264235.P6014783974933633758

/-! ## A264235.P983139228652906119

`(n+1)*A095996(A004277(n)-n)`
-/

namespace A264235.P983139228652906119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A095996 (A004277 n - (n : ℤ)).toNat

end

end A264235.P983139228652906119

/-! ## A264235.P17565605124155419572

`gcd(∏[n+1], A076111(n))`
-/

namespace A264235.P17565605124155419572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A076111 n)

end

end A264235.P17565605124155419572

/-! ## A264235.P138775018816740501

`A152656(A132209(n))`
-/

namespace A264235.P138775018816740501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152656 (A132209 n).toNat

end

end A264235.P138775018816740501

/-!
# A264236: Number of vertices at level n of the hyperbolic Pascal pyramid.

The programs for A264236, the canonical program `A264236.P10223072909461271796` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264236 has offset 0).

The definition of A264236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264236.P10079826405745635413

`ogf((1-9x+7x^2+15x^3+3x^4)/(1-12x+37x^2-37x^3+12x^4-x^5))`
-/

namespace A264236.P10079826405745635413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9, 7, 15, 3] [1, -12, 37, -37, 12, -1] n

end

end A264236.P10079826405745635413

namespace A264236

/-- `ogf((1-9x+7x^2+15x^3+3x^4)/(1-12x+37x^2-37x^3+12x^4-x^5))` -/
def P10079826405745635413.Spec : Prop :=
  ∀ n, P10079826405745635413.a n = A264236 n

end A264236

/-! ## A264236.P10223072909461271796

`12*a(n-1)-37*a(n-2)+37*a(n-3)-12*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=13, a(4)=36`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A264236

/-- `12*a(n-1)-37*a(n-2)+37*a(n-3)-12*a(n-4)+a(n-5)` -/
def P10223072909461271796.Spec : Prop :=
  ∀ n, P10223072909461271796.a n = A264236 n

theorem P10223072909461271796.correct : P10223072909461271796.Spec := by
  intro n
  simp only [A264236]

end A264236

/-! ## A264236.P16719766161536453927

`∑[A248180(A130905(n)+1+n)]`
-/

namespace A264236.P16719766161536453927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A130905 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264236.P16719766161536453927

namespace A264236

/-- `∑[A248180(A130905(n)+1+n)]` -/
def P16719766161536453927.Spec : Prop :=
  ∀ n, P16719766161536453927.a n = A264236 n

end A264236

/-!
# A264237: Sum of values of vertices at level n of the hyperbolic Pascal pyramid.

The programs for A264237, there is no canonical definition to state claims against.
-/

/-! ## A264237.P13492721384750177427

`A206913(2*A144259(n))`
-/

namespace A264237.P13492721384750177427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (2 * A144259 n).toNat

end

end A264237.P13492721384750177427

/-! ## A264237.P10858858310363055426

`∑[A236851(∑[A375604(n)])]`
-/

namespace A264237.P10858858310363055426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236851 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264237.P10858858310363055426

/-!
# A264238: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264238, the canonical program `A264238.P16132210590157971666` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264238 has offset 1).

The definition of A264238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264238.P8663751945997993570

`ogf((8+5x-x^2)/(1-2x-6x^2+x^3))`
-/

namespace A264238.P8663751945997993570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 5, -1] [1, -2, -6, 1] n

end

end A264238.P8663751945997993570

namespace A264238

/-- `ogf((8+5x-x^2)/(1-2x-6x^2+x^3))` -/
def P8663751945997993570.Spec : Prop :=
  ∀ n, P8663751945997993570.a n = A264238 (n + 1)

end A264238

/-! ## A264238.P16132210590157971666

`2*a(n-1)+6*a(n-2)-a(n-3)` with `a(0)=8, a(1)=21, a(2)=89`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A264238

/-- `2*a(n-1)+6*a(n-2)-a(n-3)` -/
def P16132210590157971666.Spec : Prop :=
  ∀ n, P16132210590157971666.a n = A264238 (n + 1)

theorem P16132210590157971666.correct : P16132210590157971666.Spec := by
  intro n
  simp only [A264238, Nat.add_sub_cancel]

end A264238

/-! ## A264238.P15969246865095561320

`A264244(∑[n+2])`
-/

namespace A264238.P15969246865095561320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264238.P15969246865095561320

namespace A264238

/-- `A264244(∑[n+2])` -/
def P15969246865095561320.Spec : Prop :=
  ∀ n, P15969246865095561320.a n = A264238 (n + 1)

end A264238

/-! ## A264238.P17465286436312885603

`record[A264244(abs(A201163(n)))]`
-/

namespace A264238.P17465286436312885603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264238.P17465286436312885603

namespace A264238

/-- `record[A264244(abs(A201163(n)))]` -/
def P17465286436312885603.Spec : Prop :=
  ∀ n, P17465286436312885603.a n = A264238 (n + 1)

end A264238

/-! ## A264238.P7115941154009877681

`record[root(A264244(n+2), A230698(n+1))]`
-/

namespace A264238.P7115941154009877681
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264244 (n + 2) : ℝ) ^ (1 / (A230698 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264238.P7115941154009877681

namespace A264238

/-- `record[root(A264244(n+2), A230698(n+1))]` -/
def P7115941154009877681.Spec : Prop :=
  ∀ n, P7115941154009877681.a n = (A264238 (n + 1) : ℝ)

end A264238

/-!
# A264239: Number of (n+1) X (3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264239, the canonical program `A264239.P1998872964487995429` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264239 has offset 1).

The definition of A264239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264239.P1998872964487995429

`ogf((21-52x-8x^2+127x^3-10x^4-72x^5)/(1-7x-7x^2+65x^3-65x^4-62x^5+72x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A264239

/-- `ogf((21-52x-8x^2+127x^3-10x^4-72x^5)/(1-7x-7x^2+65x^3-65x^4-62x^5+72x^6))` -/
def P1998872964487995429.Spec : Prop :=
  ∀ n, P1998872964487995429.a n = A264239 (n + 1)

theorem P1998872964487995429.correct : P1998872964487995429.Spec := by
  intro n
  simp only [A264239, Nat.add_sub_cancel]

end A264239

/-! ## A264239.P12291308488150449185

`A264244(∑[n+3]+1)`
-/

namespace A264239.P12291308488150449185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264239.P12291308488150449185

namespace A264239

/-- `A264244(∑[n+3]+1)` -/
def P12291308488150449185.Spec : Prop :=
  ∀ n, P12291308488150449185.a n = A264239 (n + 1)

end A264239

/-!
# A264240: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264240, there is no canonical definition to state claims against.
-/

/-! ## A264240.P12507234638957415497

`A264244(∑[n+4]+3)`
-/

namespace A264240.P12507234638957415497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A264240.P12507234638957415497

/-!
# A264241: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264241, there is no canonical definition to state claims against.
-/

/-! ## A264241.P14512112105080646929

`A264244(∑[n+5]+6)`
-/

namespace A264241.P14512112105080646929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A264241.P14512112105080646929

/-! ## A264241.P4240445828284061260

`A264244(A056115(n)+11)%A158423(n+9)`
-/

namespace A264241.P4240445828284061260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264244 (A056115 n + 11).toNat) (A158423 (n + 9))

end

end A264241.P4240445828284061260

/-! ## A264241.P12062907983212030270

`A003484(2*n+5)*A264244(A056115(n)+11)`
-/

namespace A264241.P12062907983212030270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (2 * n + 5) * A264244 (A056115 n + 11).toNat

end

end A264241.P12062907983212030270

/-!
# A264242: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264242, there is no canonical definition to state claims against.
-/

/-! ## A264242.P17803388015607614761

`A264244(eq[3, A219347(n)])`
-/

namespace A264242.P17803388015607614761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264242.P17803388015607614761

/-! ## A264242.P12710082121441432242

`A264244(eq[5, A193592(n)])`
-/

namespace A264242.P12710082121441432242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264242.P12710082121441432242

/-! ## A264242.P10912093954885158372

`A264244(eq[8, A258709(n)])`
-/

namespace A264242.P10912093954885158372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264242.P10912093954885158372

/-! ## A264242.P16485274562754250805

`A264244(A055999(n+3)+1)`
-/

namespace A264242.P16485274562754250805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A055999 (n + 3) + 1).toNat

end

end A264242.P16485274562754250805

/-!
# A264243: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264243, there is no canonical definition to state claims against.
-/

/-! ## A264243.P3123292588613312747

`A264244(A055999(n+4))`
-/

namespace A264243.P3123292588613312747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A055999 (n + 4)).toNat

end

end A264243.P3123292588613312747

/-! ## A264243.P2085867109445405887

`A264244(eq[4, A219347(n)])`
-/

namespace A264243.P2085867109445405887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264243.P2085867109445405887

/-! ## A264243.P1103799600721112634

`A264244(eq[6, A193592(n)])`
-/

namespace A264243.P1103799600721112634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264243.P1103799600721112634

/-!
# A264245: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264245, the canonical program `A264245.P7567935648501620070` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264245 has offset 1).

The definition of A264245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264245.P6195574699589044424

`ogf((2+4x+3x^2-x^3-x^4-x^5)/(1-2x-x^2-4x^3+x^4+x^6))`
-/

namespace A264245.P6195574699589044424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 3, -1, -1, -1] [1, -2, -1, -4, 1, 0, 1] n

end

end A264245.P6195574699589044424

namespace A264245

/-- `ogf((2+4x+3x^2-x^3-x^4-x^5)/(1-2x-x^2-4x^3+x^4+x^6))` -/
def P6195574699589044424.Spec : Prop :=
  ∀ n, P6195574699589044424.a n = A264245 (n + 1)

end A264245

/-! ## A264245.P7567935648501620070

`2*a(n-1)+a(n-2)+4*a(n-3)-a(n-4)-a(n-6)` with `a(0)=2, a(1)=8, a(2)=21, a(3)=57, a(4)=164, a(5)=460`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A264245

/-- `2*a(n-1)+a(n-2)+4*a(n-3)-a(n-4)-a(n-6)` -/
def P7567935648501620070.Spec : Prop :=
  ∀ n, P7567935648501620070.a n = A264245 (n + 1)

theorem P7567935648501620070.correct : P7567935648501620070.Spec := by
  intro n
  simp only [A264245, Nat.add_sub_cancel]

end A264245

/-! ## A264245.P15509302694271739673

`A264244(∑[n]+1)`
-/

namespace A264245.P15509302694271739673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264245.P15509302694271739673

namespace A264245

/-- `A264244(∑[n]+1)` -/
def P15509302694271739673.Spec : Prop :=
  ∀ n, P15509302694271739673.a n = A264245 (n + 1)

end A264245

/-! ## A264245.P9609670826861800809

`record[A264244(∑[A057979(n)])]`
-/

namespace A264245.P9609670826861800809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264245.P9609670826861800809

namespace A264245

/-- `record[A264244(∑[A057979(n)])]` -/
def P9609670826861800809.Spec : Prop :=
  ∀ n, P9609670826861800809.a n = A264245 (n + 1)

end A264245

/-! ## A264245.P9925839263365885393

`record[A264244(A056534(n+1))]`
-/

namespace A264245.P9925839263365885393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264245.P9925839263365885393

namespace A264245

/-- `record[A264244(A056534(n+1))]` -/
def P9925839263365885393.Spec : Prop :=
  ∀ n, P9925839263365885393.a n = A264245 (n + 1)

end A264245

/-!
# A264246: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264246, there is no canonical definition to state claims against.
-/

/-! ## A264246.P4679162376052176102

`A264244(2+∑[n+1])`
-/

namespace A264246.P4679162376052176102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264246.P4679162376052176102

/-! ## A264246.P14180290626500218307

`record[A132014(n)*A264244(n+3)]`
-/

namespace A264246.P14180290626500218307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132014 n * A264244 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264246.P14180290626500218307

/-! ## A264246.P9122250133142586066

`record[A185018(n)*A264244(n+3)]`
-/

namespace A264246.P9122250133142586066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A264244 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264246.P9122250133142586066

/-! ## A264246.P6227216324170793907

`record[gcd(A092921(n), A264244(n+3))]`
-/

namespace A264246.P6227216324170793907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A264244 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264246.P6227216324170793907

/-! ## A264246.P6524208563746856343

`A264244(A000096(n)+3)+A010052(3*n+2)`
-/

namespace A264246.P6524208563746856343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A000096 n + 3).toNat + A010052 (3 * n + 2)

end

end A264246.P6524208563746856343

/-!
# A264247: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264247, there is no canonical definition to state claims against.
-/

/-! ## A264247.P15147005825056655397

`A264244(∑[n+2]+4)`
-/

namespace A264247.P15147005825056655397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264247.P15147005825056655397

/-! ## A264247.P17179605522177737223

`A264244(A167614(n+1))+char[22]`
-/

namespace A264247.P17179605522177737223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264247.P17179605522177737223

/-! ## A264247.P15951210481887787483

`A277157(n)+A264244(A167614(n+1))`
-/

namespace A264247.P15951210481887787483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 n + A264244 (A167614 (n + 1)).toNat

end

end A264247.P15951210481887787483

/-! ## A264247.P16921925728448627653

`A326678(n)+A264244(A167614(n+1))`
-/

namespace A264247.P16921925728448627653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n + A264244 (A167614 (n + 1)).toNat

end

end A264247.P16921925728448627653

/-! ## A264247.P14267160769178446841

`A326683(n)+A264244(A167614(n+1))`
-/

namespace A264247.P14267160769178446841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A264244 (A167614 (n + 1)).toNat

end

end A264247.P14267160769178446841

/-!
# A264248: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264248, there is no canonical definition to state claims against.
-/

/-! ## A264248.P8014386971681622445

`A264244(∑[n+3]+7)`
-/

namespace A264248.P8014386971681622445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264248.P8014386971681622445

/-!
# A264249: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264249, there is no canonical definition to state claims against.
-/

/-! ## A264249.P4231844868319358644

`A264244(A167499(n+3))`
-/

namespace A264249.P4231844868319358644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A167499 (n + 3)).toNat

end

end A264249.P4231844868319358644

/-! ## A264249.P18040850236894719908

`A264244(A155212(n)+13)`
-/

namespace A264249.P18040850236894719908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A155212 n + 13).toNat

end

end A264249.P18040850236894719908

/-! ## A264249.P12648864473954672158

`A264244(A056000(n)+15)`
-/

namespace A264249.P12648864473954672158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A056000 n + 15).toNat

end

end A264249.P12648864473954672158

/-! ## A264249.P14356422725387617477

`A264244(eq[7, A066657(n)])`
-/

namespace A264249.P14356422725387617477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264249.P14356422725387617477

/-! ## A264249.P10718311017669783189

`A264244(eq[6, A131818(n+1)])`
-/

namespace A264249.P10718311017669783189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264249.P10718311017669783189

/-!
# A264250: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,0 1,1 0,-1 -1,1 or 0,-2.

The programs for A264250, there is no canonical definition to state claims against.
-/

/-! ## A264250.P14925695332619022830

`A264244(A166136(n+4))`
-/

namespace A264250.P14925695332619022830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A166136 (n + 4)).toNat

end

end A264250.P14925695332619022830

/-! ## A264250.P12365092213387900457

`A264244(A056115(n)+21)`
-/

namespace A264250.P12365092213387900457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A056115 n + 21).toNat

end

end A264250.P12365092213387900457

/-! ## A264250.P9392390583516494797

`A264244(A000096(n+4)+7)`
-/

namespace A264250.P9392390583516494797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A000096 (n + 4) + 7).toNat

end

end A264250.P9392390583516494797

/-! ## A264250.P4211781633324794296

`A264244(A141214(n+2)+9)`
-/

namespace A264250.P4211781633324794296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (A141214 (n + 2) + 9).toNat

end

end A264250.P4211781633324794296

/-! ## A264250.P2919167308294386113

`A264244(eq[7, A131818(n+1)])`
-/

namespace A264250.P2919167308294386113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264250.P2919167308294386113

/-!
# A264251: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264251, the canonical program `A264251.P10869739419922565177` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264251 has offset 1).

The definition of A264251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264251.P3761735897216992370

`ogf((10+23x-13x^2-38x^3+6x^4+15x^5-2x^6-x^7)/(1-x-16x^2-9x^3+29x^4+9x^5-16x^6+x^7+x^8))`
-/

namespace A264251.P3761735897216992370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 23, -13, -38, 6, 15, -2, -1] [1, -1, -16, -9, 29, 9, -16, 1, 1] n

end

end A264251.P3761735897216992370

namespace A264251

/-- `ogf((10+23x-13x^2-38x^3+6x^4+15x^5-2x^6-x^7)/(1-x-16x^2-9x^3+29x^4+9x^5-16x^6+x^7+x^8))` -/
def P3761735897216992370.Spec : Prop :=
  ∀ n, P3761735897216992370.a n = A264251 (n + 1)

end A264251

/-! ## A264251.P10869739419922565177

`A005178(n+3)*A020695(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A264251

/-- `A005178(n+3)*A020695(n)` -/
def P10869739419922565177.Spec : Prop :=
  ∀ n, P10869739419922565177.a n = A264251 (n + 1)

theorem P10869739419922565177.correct : P10869739419922565177.Spec := by
  intro n
  simp only [A264251, Nat.add_sub_cancel]

end A264251

/-! ## A264251.P14027540049051136660

`A000045(n+3)*A005178(n+3)`
-/

namespace A264251.P14027540049051136660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) * A005178 (n + 3)

end

end A264251.P14027540049051136660

namespace A264251

/-- `A000045(n+3)*A005178(n+3)` -/
def P14027540049051136660.Spec : Prop :=
  ∀ n, P14027540049051136660.a n = A264251 (n + 1)

end A264251

/-! ## A264251.P834757130162521524

`sqrt(A007598(n+3))*A005178(n+3)`
-/

namespace A264251.P834757130162521524
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 (n + 3) : ℝ) * (A005178 (n + 3) : ℝ)

end

end A264251.P834757130162521524

namespace A264251

/-- `sqrt(A007598(n+3))*A005178(n+3)` -/
def P834757130162521524.Spec : Prop :=
  ∀ n, P834757130162521524.a n = (A264251 (n + 1) : ℝ)

end A264251

/-! ## A264251.P398512245815706142

`Δ[A000071(n+4)]*A005178(n+3)`
-/

namespace A264251.P398512245815706142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005178 (n + 3)

end

end A264251.P398512245815706142

namespace A264251

/-- `Δ[A000071(n+4)]*A005178(n+3)` -/
def P398512245815706142.Spec : Prop :=
  ∀ n, P398512245815706142.a n = A264251 (n + 1)

end A264251

/-! ## A264251.P7729814884746127820

`A005178(n+3)*A103609(A059009(n+3))`
-/

namespace A264251.P7729814884746127820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (n + 3) * A103609 (A059009 (n + 3)).toNat

end

end A264251.P7729814884746127820

namespace A264251

/-- `A005178(n+3)*A103609(A059009(n+3))` -/
def P7729814884746127820.Spec : Prop :=
  ∀ n, P7729814884746127820.a n = A264251 (n + 1)

end A264251

/-!
# A264252: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264252, there is no canonical definition to state claims against.
-/

/-! ## A264252.P17200725569744607453

`A264257(∑[n+3]+1)`
-/

namespace A264252.P17200725569744607453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264252.P17200725569744607453

/-!
# A264253: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264253, there is no canonical definition to state claims against.
-/

/-! ## A264253.P4815597321874694092

`A264257(A141214(n+1))`
-/

namespace A264253.P4815597321874694092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A141214 (n + 1)).toNat

end

end A264253.P4815597321874694092

/-! ## A264253.P15329234578544824267

`A264257(A055998(n+2))`
-/

namespace A264253.P15329234578544824267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A055998 (n + 2)).toNat

end

end A264253.P15329234578544824267

/-! ## A264253.P3176758172334882816

`A264257(A155212(n)+5)`
-/

namespace A264253.P3176758172334882816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A155212 n + 5).toNat

end

end A264253.P3176758172334882816

/-! ## A264253.P7866870127032703696

`A264257(A056000(n)+7)`
-/

namespace A264253.P7866870127032703696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A056000 n + 7).toNat

end

end A264253.P7866870127032703696

/-! ## A264253.P5951862146970546705

`A264257(eq[3, A193592(n)])`
-/

namespace A264253.P5951862146970546705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264253.P5951862146970546705

/-!
# A264254: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264254, there is no canonical definition to state claims against.
-/

/-! ## A264254.P2677232553502591433

`A264257(Δ[A264443(n)])`
-/

namespace A264254.P2677232553502591433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (f1 (n + 1) - f1 n).toNat

end

end A264254.P2677232553502591433

/-! ## A264254.P13347203432259569878

`A264257(eq[4, A193592(n)])`
-/

namespace A264254.P13347203432259569878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264254.P13347203432259569878

/-! ## A264254.P6417513851690266311

`A264257(Δ[A023545(n+1)])`
-/

namespace A264254.P6417513851690266311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (f1 (n + 1) - f1 n).toNat

end

end A264254.P6417513851690266311

/-! ## A264254.P5505462125252482888

`A264257(A000217(n+5)-4)`
-/

namespace A264254.P5505462125252482888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A000217 (n + 5) - 4).toNat

end

end A264254.P5505462125252482888

/-! ## A264254.P10154016440162394650

`A264257(eq[6, A185782(n+1)])`
-/

namespace A264254.P10154016440162394650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264254.P10154016440162394650

/-!
# A264255: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264255, there is no canonical definition to state claims against.
-/

/-! ## A264255.P10542128318819888221

`A264257(A052905(n+3))`
-/

namespace A264255.P10542128318819888221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A052905 (n + 3)).toNat

end

end A264255.P10542128318819888221

/-! ## A264255.P2646487617088539578

`A264257(A056119(n)+16)`
-/

namespace A264255.P2646487617088539578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A056119 n + 16).toNat

end

end A264255.P2646487617088539578

/-! ## A264255.P12437250810461428178

`A264257(eq[3, A219347(n)])`
-/

namespace A264255.P12437250810461428178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264255.P12437250810461428178

/-! ## A264255.P16421476998603833493

`A264257(eq[5, A193592(n)])`
-/

namespace A264255.P16421476998603833493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264255.P16421476998603833493

/-!
# A264256: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264256, there is no canonical definition to state claims against.
-/

/-! ## A264256.P3646059439981297800

`A264257(A055999(n+4))`
-/

namespace A264256.P3646059439981297800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A055999 (n + 4)).toNat

end

end A264256.P3646059439981297800

/-! ## A264256.P11452859823065061839

`A264257(eq[4, A219347(n)])`
-/

namespace A264256.P11452859823065061839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264256.P11452859823065061839

/-! ## A264256.P204823176516491571

`A264257(eq[6, A193592(n)])`
-/

namespace A264256.P204823176516491571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264256.P204823176516491571

/-!
# A264258: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264258, there is no canonical definition to state claims against.
-/

/-! ## A264258.P14641958937525984599

`A264257(∑[n+1]+2)`
-/

namespace A264258.P14641958937525984599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264258.P14641958937525984599

/-! ## A264258.P5831820949729015105

`A264257(A133263(n+1))+A185284(n)`
-/

namespace A264258.P5831820949729015105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A133263 (n + 1)).toNat + A185284 n

end

end A264258.P5831820949729015105

/-! ## A264258.P8991774630147176823

`or(A000007(n), A264257(A133263(n+1)))`
-/

namespace A264258.P8991774630147176823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A264257 (A133263 (n + 1)).toNat)

end

end A264258.P8991774630147176823

/-! ## A264258.P5777532621268655266

`A264257(A133263(n+1))+A000007(n+1)`
-/

namespace A264258.P5777532621268655266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A264258.P5777532621268655266

/-! ## A264258.P1563605456391435287

`A264257(A133263(n+1))%A264252(n+1)`
-/

namespace A264258.P1563605456391435287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264257 (A133263 (n + 1)).toNat) (A264252 (n + 1))

end

end A264258.P1563605456391435287

/-!
# A264259: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264259, there is no canonical definition to state claims against.
-/

/-! ## A264259.P6001538544686984782

`A264257(∑[n+2]+4)`
-/

namespace A264259.P6001538544686984782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264259.P6001538544686984782

/-! ## A264259.P15999889962358987789

`A264257(A167614(n+1))+A025442(n)`
-/

namespace A264259.P15999889962358987789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A167614 (n + 1)).toNat + A025442 n

end

end A264259.P15999889962358987789

/-! ## A264259.P5436261172965952458

`A264257(A167614(n+1))+A185284(n)`
-/

namespace A264259.P5436261172965952458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A167614 (n + 1)).toNat + A185284 n

end

end A264259.P5436261172965952458

/-! ## A264259.P10786220157157752587

`lcm(A033999(n), A264257(A167614(n+1)))`
-/

namespace A264259.P10786220157157752587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A264257 (A167614 (n + 1)).toNat)

end

end A264259.P10786220157157752587

/-! ## A264259.P1971565101273361878

`or(A000007(n), A264257(A167614(n+1)))`
-/

namespace A264259.P1971565101273361878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A264257 (A167614 (n + 1)).toNat)

end

end A264259.P1971565101273361878

/-!
# A264260: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264260, there is no canonical definition to state claims against.
-/

/-! ## A264260.P6813745358529473221

`A264257(A141214(n)+7)`
-/

namespace A264260.P6813745358529473221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A141214 n + 7).toNat

end

end A264260.P6813745358529473221

/-! ## A264260.P17959246351623776206

`A264257(A052905(n)+9)`
-/

namespace A264260.P17959246351623776206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A052905 n + 9).toNat

end

end A264260.P17959246351623776206

/-! ## A264260.P6880586034129294600

`A264257(A055999(n)+10)`
-/

namespace A264260.P6880586034129294600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A055999 n + 10).toNat

end

end A264260.P6880586034129294600

/-! ## A264260.P17398169649062132971

`A264257(A167614(n+2)+1)`
-/

namespace A264260.P17398169649062132971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A167614 (n + 2) + 1).toNat

end

end A264260.P17398169649062132971

/-! ## A264260.P16161134606396029361

`A264257(eq[5, A131818(n+1)])`
-/

namespace A264260.P16161134606396029361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264260.P16161134606396029361

/-!
# A264261: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264261, there is no canonical definition to state claims against.
-/

/-! ## A264261.P10269364864988943854

`A264257(A167499(n+3))`
-/

namespace A264261.P10269364864988943854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A167499 (n + 3)).toNat

end

end A264261.P10269364864988943854

/-! ## A264261.P9825031870173731604

`A264257(A155212(n)+13)`
-/

namespace A264261.P9825031870173731604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A155212 n + 13).toNat

end

end A264261.P9825031870173731604

/-! ## A264261.P8612381785670397376

`A264257(A056000(n)+15)`
-/

namespace A264261.P8612381785670397376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A056000 n + 15).toNat

end

end A264261.P8612381785670397376

/-! ## A264261.P14844617287316984121

`A264257(eq[7, A066657(n)])`
-/

namespace A264261.P14844617287316984121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264261.P14844617287316984121

/-! ## A264261.P10812754651339692546

`A264257(A051936(n+4)+14)`
-/

namespace A264261.P10812754651339692546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A051936 (n + 4) + 14).toNat

end

end A264261.P10812754651339692546

/-!
# A264262: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

The programs for A264262, there is no canonical definition to state claims against.
-/

/-! ## A264262.P16208904769993683285

`A264257(A167499(n+4)+1)`
-/

namespace A264262.P16208904769993683285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A167499 (n + 4) + 1).toNat

end

end A264262.P16208904769993683285

/-! ## A264262.P17925257812410903223

`A264257(A167614(n+4)+3)`
-/

namespace A264262.P17925257812410903223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A167614 (n + 4) + 3).toNat

end

end A264262.P17925257812410903223

/-! ## A264262.P3191314748226864363

`A264257(A055998(n+3)+9)`
-/

namespace A264262.P3191314748226864363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A055998 (n + 3) + 9).toNat

end

end A264262.P3191314748226864363

/-! ## A264262.P6564716372460332352

`A264257(eq[7, A131818(n+1)])`
-/

namespace A264262.P6564716372460332352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264262.P6564716372460332352

/-! ## A264262.P17158393619231987405

`A264257(A055999(n+4)-1-2*n)`
-/

namespace A264262.P17158393619231987405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (A055999 (n + 4) - 1 - (2 * n : ℤ)).toNat

end

end A264262.P17158393619231987405

/-!
# A264263: The number of distinct nontrivial integral cevians of an isosceles triangle, with base of length 1 and legs of length n, that divide the base into two integral parts.

The programs for A264263, the canonical program `A264263.P15140089574012920568` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264263 has offset 1).

The definition of A264263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264263.P15140089574012920568

`A066728(Δ[n²])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A264263

/-- `A066728(Δ[n²])` -/
def P15140089574012920568.Spec : Prop :=
  ∀ n, P15140089574012920568.a n = A264263 (n + 1)

theorem P15140089574012920568.correct : P15140089574012920568.Spec := by
  intro n
  simp only [A264263, Nat.add_sub_cancel]

end A264263

/-! ## A264263.P13926301945791695937

`A253900(n+1)-1`
-/

namespace A264263.P13926301945791695937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253900 (n + 1) - 1

end

end A264263.P13926301945791695937

namespace A264263

/-- `A253900(n+1)-1` -/
def P13926301945791695937.Spec : Prop :=
  ∀ n, P13926301945791695937.a n = A264263 (n + 1)

theorem P13926301945791695937.correct : P13926301945791695937.Spec := by
  intro n
  simp only [A264263, Nat.add_sub_cancel, A264263.P13926301945791695937.a, A264263.P15140089574012920568.f1, A264263.P15140089574012920568.a, A066728, A066728.P7235498834417940186.a, A253900, A253900.P13660255723889102256.f1, A253900.P13660255723889102256.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A264263

/-! ## A264263.P18393111256607987849

`A129296(2*(n+1))-1`
-/

namespace A264263.P18393111256607987849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (2 * (n + 1)) - 1

end

end A264263.P18393111256607987849

namespace A264263

/-- `A129296(2*(n+1))-1` -/
def P18393111256607987849.Spec : Prop :=
  ∀ n, P18393111256607987849.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P3866692687865270710

`A347191(2*(n+1))/2-1`
-/

namespace A264263.P3866692687865270710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347191 (2 * (n + 1)) : ℚ) / 2 - 1

end

end A264263.P3866692687865270710

namespace A264263

/-- `A347191(2*(n+1))/2-1` -/
def P3866692687865270710.Spec : Prop :=
  ∀ n, P3866692687865270710.a n = (A264263 (n + 1) : ℚ)

end A264263

/-! ## A264263.P8332678702969680796

`A066728(2*n+1)%(n+1)`
-/

namespace A264263.P8332678702969680796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066728 (2 * n + 1)) (n + 1 : ℤ)

end

end A264263.P8332678702969680796

namespace A264263

/-- `A066728(2*n+1)%(n+1)` -/
def P8332678702969680796.Spec : Prop :=
  ∀ n, P8332678702969680796.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P2815234672154443103

`A046667(A347191(2*(n+1)))`
-/

namespace A264263.P2815234672154443103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A347191 (2 * (n + 1))).toNat

end

end A264263.P2815234672154443103

namespace A264263

/-- `A046667(A347191(2*(n+1)))` -/
def P2815234672154443103.Spec : Prop :=
  ∀ n, P2815234672154443103.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P6531594228651535046

`A200748(n)%A253900(n+1)`
-/

namespace A264263.P6531594228651535046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A253900 (n + 1))

end

end A264263.P6531594228651535046

namespace A264263

/-- `A200748(n)%A253900(n+1)` -/
def P6531594228651535046.Spec : Prop :=
  ∀ n, P6531594228651535046.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P16425707368262392293

`A133489(n+1)%A253900(n+1)`
-/

namespace A264263.P16425707368262392293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133489 (n + 1)) (A253900 (n + 1))

end

end A264263.P16425707368262392293

namespace A264263

/-- `A133489(n+1)%A253900(n+1)` -/
def P16425707368262392293.Spec : Prop :=
  ∀ n, P16425707368262392293.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P674619190874570424

`A127229(n+5)%A253900(n+1)`
-/

namespace A264263.P674619190874570424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A253900 (n + 1))

end

end A264263.P674619190874570424

namespace A264263

/-- `A127229(n+5)%A253900(n+1)` -/
def P674619190874570424.Spec : Prop :=
  ∀ n, P674619190874570424.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P6209738355738703194

`filter[A066728(2*n+1), A102609(#)]`
-/

namespace A264263.P6209738355738703194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066728 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A264263.P6209738355738703194

namespace A264263

/-- `filter[A066728(2*n+1), A102609(#)]` -/
def P6209738355738703194.Spec : Prop :=
  ∀ n, P6209738355738703194.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P12242541102552378994

`A320835(A027864(gcd(n, n+1)))+A253900(n+1)`
-/

namespace A264263.P12242541102552378994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320835 (A027864 (Nat.gcd n (n + 1))).toNat + A253900 (n + 1)

end

end A264263.P12242541102552378994

namespace A264263

/-- `A320835(A027864(gcd(n, n+1)))+A253900(n+1)` -/
def P12242541102552378994.Spec : Prop :=
  ∀ n, P12242541102552378994.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P708154265787208521

`∏{e}[(2*(n+1))²-1, #+1]/2-1`
-/

namespace A264263.P708154265787208521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 2 - 1

end

end A264263.P708154265787208521

namespace A264263

/-- `∏{e}[(2*(n+1))²-1, #+1]/2-1` -/
def P708154265787208521.Spec : Prop :=
  ∀ n, P708154265787208521.a n = (A264263 (n + 1) : ℚ)

end A264263

/-! ## A264263.P6444180237786517254

`A070198(n)%A253900(n+1)`
-/

namespace A264263.P6444180237786517254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A253900 (n + 1))

end

end A264263.P6444180237786517254

namespace A264263

/-- `A070198(n)%A253900(n+1)` -/
def P6444180237786517254.Spec : Prop :=
  ∀ n, P6444180237786517254.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P13457008083451231025

`A079782(n+1)%A253900(n+1)`
-/

namespace A264263.P13457008083451231025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A253900 (n + 1))

end

end A264263.P13457008083451231025

namespace A264263

/-- `A079782(n+1)%A253900(n+1)` -/
def P13457008083451231025.Spec : Prop :=
  ∀ n, P13457008083451231025.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P2008051561060207773

`A083685(n+1)%A253900(n+1)`
-/

namespace A264263.P2008051561060207773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A253900 (n + 1))

end

end A264263.P2008051561060207773

namespace A264263

/-- `A083685(n+1)%A253900(n+1)` -/
def P2008051561060207773.Spec : Prop :=
  ∀ n, P2008051561060207773.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P33399427261284065

`A121934(n+1)%A253900(n+1)`
-/

namespace A264263.P33399427261284065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A253900 (n + 1))

end

end A264263.P33399427261284065

namespace A264263

/-- `A121934(n+1)%A253900(n+1)` -/
def P33399427261284065.Spec : Prop :=
  ∀ n, P33399427261284065.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P14755806446495089131

`A000005((2*(n+1))²-1)/2-1`
-/

namespace A264263.P14755806446495089131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((2 * (n + 1)) ^ 2 - 1) : ℚ) / 2 - 1

end

end A264263.P14755806446495089131

namespace A264263

/-- `A000005((2*(n+1))²-1)/2-1` -/
def P14755806446495089131.Spec : Prop :=
  ∀ n, P14755806446495089131.a n = (A264263 (n + 1) : ℚ)

end A264263

/-! ## A264263.P13293309570187137872

`round(A000005((2*n+1)*(2*n+3))/2)-1`
-/

namespace A264263.P13293309570187137872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 ((2 * n + 1) * (2 * n + 3)) : ℚ) / 2) - 1

end

end A264263.P13293309570187137872

namespace A264263

/-- `round(A000005((2*n+1)*(2*n+3))/2)-1` -/
def P13293309570187137872.Spec : Prop :=
  ∀ n, P13293309570187137872.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P17159271830572089835

`ceil(A000005((4*n+3)*(n+1)+n)/2)-1`
-/

namespace A264263.P17159271830572089835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 ((4 * n + 3) * (n + 1) + n) : ℚ) / 2⌉ - 1

end

end A264263.P17159271830572089835

namespace A264263

/-- `ceil(A000005((4*n+3)*(n+1)+n)/2)-1` -/
def P17159271830572089835.Spec : Prop :=
  ∀ n, P17159271830572089835.a n = A264263 (n + 1)

end A264263

/-! ## A264263.P11515734080877581633

`A030494(n+1)%A253900(n+1)`
-/

namespace A264263.P11515734080877581633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A253900 (n + 1))

end

end A264263.P11515734080877581633

namespace A264263

/-- `A030494(n+1)%A253900(n+1)` -/
def P11515734080877581633.Spec : Prop :=
  ∀ n, P11515734080877581633.a n = A264263 (n + 1)

end A264263

/-!
# A264265: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264265, there is no canonical definition to state claims against.
-/

/-! ## A264265.P300495569876167267

`A264272((n+1)²+n²)`
-/

namespace A264265.P300495569876167267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 ((n + 1) ^ 2 + n ^ 2)

end

end A264265.P300495569876167267

/-!
# A264266: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264266, the canonical program `A264266.P12471914560901101682` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264266 has offset 1).

The definition of A264266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264266.P17852098789710648783

`ogf((10+8x-47x^2-28x^3+31x^4+12x^5-5x^6-x^7)/(1-4x-16x^2+16x^3+41x^4-16x^5-16x^6+4x^7+x^8))`
-/

namespace A264266.P17852098789710648783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 8, -47, -28, 31, 12, -5, -1] [1, -4, -16, 16, 41, -16, -16, 4, 1] n

end

end A264266.P17852098789710648783

namespace A264266

/-- `ogf((10+8x-47x^2-28x^3+31x^4+12x^5-5x^6-x^7)/(1-4x-16x^2+16x^3+41x^4-16x^5-16x^6+4x^7+x^8))` -/
def P17852098789710648783.Spec : Prop :=
  ∀ n, P17852098789710648783.a n = A264266 (n + 1)

end A264266

/-! ## A264266.P12471914560901101682

`A020695(n)*A189450(n+2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A264266

/-- `A020695(n)*A189450(n+2)` -/
def P12471914560901101682.Spec : Prop :=
  ∀ n, P12471914560901101682.a n = A264266 (n + 1)

theorem P12471914560901101682.correct : P12471914560901101682.Spec := by
  intro n
  simp only [A264266, Nat.add_sub_cancel]

end A264266

/-! ## A264266.P13352785883320142680

`A000045(n+3)*A189450(n+2)`
-/

namespace A264266.P13352785883320142680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) * A189450 (n + 2)

end

end A264266.P13352785883320142680

namespace A264266

/-- `A000045(n+3)*A189450(n+2)` -/
def P13352785883320142680.Spec : Prop :=
  ∀ n, P13352785883320142680.a n = A264266 (n + 1)

end A264266

/-! ## A264266.P2551698446466166621

`Δ[A000071(n+4)]*A189450(n+2)`
-/

namespace A264266.P2551698446466166621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A189450 (n + 2)

end

end A264266.P2551698446466166621

namespace A264266

/-- `Δ[A000071(n+4)]*A189450(n+2)` -/
def P2551698446466166621.Spec : Prop :=
  ∀ n, P2551698446466166621.a n = A264266 (n + 1)

end A264266

/-! ## A264266.P10725461137642303257

`sqrt(A264267(n+1))*A020695(n)`
-/

namespace A264266.P10725461137642303257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264267 (n + 1) : ℝ) * (A020695 n : ℝ)

end

end A264266.P10725461137642303257

namespace A264266

/-- `sqrt(A264267(n+1))*A020695(n)` -/
def P10725461137642303257.Spec : Prop :=
  ∀ n, P10725461137642303257.a n = (A264266 (n + 1) : ℝ)

end A264266

/-!
# A264267: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264267, there is no canonical definition to state claims against.
-/

/-! ## A264267.P5202083887849232104

`A189450(n+2)²`
-/

namespace A264267.P5202083887849232104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189450 (n + 2) ^ 2

end

end A264267.P5202083887849232104

/-! ## A264267.P17445727107377751755

`A264132(2*n+3)`
-/

namespace A264267.P17445727107377751755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264132 (2 * n + 3)

end

end A264267.P17445727107377751755

/-! ## A264267.P368347058062502529

`(A072335(n+1)+A000035(n+1))²`
-/

namespace A264267.P368347058062502529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072335 (n + 1) + A000035 (n + 1)) ^ 2

end

end A264267.P368347058062502529

/-! ## A264267.P18129134336895451967

`(A372584(n+1)+A072335(n+1))²`
-/

namespace A264267.P18129134336895451967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A372584 (n + 1) + A072335 (n + 1)) ^ 2

end

end A264267.P18129134336895451967

/-! ## A264267.P3430597936333619642

`A189450(n+2)^A000005(A008578(n+2))`
-/

namespace A264267.P3430597936333619642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189450 (n + 2) : ℚ) ^ (A000005 (A008578 (n + 2)).toNat : ℤ)

end

end A264267.P3430597936333619642

/-! ## A264267.P10002124425002374768

`A000035(2*n+1)*A189450(n+2)*A189450(n+2)`
-/

namespace A264267.P10002124425002374768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A189450 (n + 2) * A189450 (n + 2)

end

end A264267.P10002124425002374768

/-! ## A264267.P7270754522424580487

`A264268(n+1)/A264269(n+1)*A264268(n+1)`
-/

namespace A264267.P7270754522424580487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264268 (n + 1) : ℚ) / (A264269 (n + 1) : ℚ) * (A264268 (n + 1) : ℚ)

end

end A264267.P7270754522424580487

/-!
# A264268: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264268, there is no canonical definition to state claims against.
-/

/-! ## A264268.P279785046943779308

`A189450(n+2)*A189451(n+2)`
-/

namespace A264268.P279785046943779308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189450 (n + 2) * A189451 (n + 2)

end

end A264268.P279785046943779308

/-! ## A264268.P3175231615743332832

`sqrt(A264267(n+1))*sqrt(A264269(n+1))`
-/

namespace A264268.P3175231615743332832
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264267 (n + 1) : ℝ) * Real.sqrt (A264269 (n + 1) : ℝ)

end

end A264268.P3175231615743332832

/-! ## A264268.P3974368702620047389

`sqrt(A264267(n+1)*A264269(n+1))`
-/

namespace A264268.P3974368702620047389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264267 (n + 1) * A264269 (n + 1) : ℝ)

end

end A264268.P3974368702620047389

/-! ## A264268.P5884259672663447556

`A264272(A141214(n+1))`
-/

namespace A264268.P5884259672663447556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A141214 (n + 1)).toNat

end

end A264268.P5884259672663447556

/-! ## A264268.P2932012879656087072

`A264272(A055998(n+2))`
-/

namespace A264268.P2932012879656087072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A055998 (n + 2)).toNat

end

end A264268.P2932012879656087072

/-!
# A264269: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264269, there is no canonical definition to state claims against.
-/

/-! ## A264269.P486564987269876304

`A189451(n+2)²`
-/

namespace A264269.P486564987269876304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189451 (n + 2) ^ 2

end

end A264269.P486564987269876304

/-! ## A264269.P8056216963987619543

`A264133(2*n+3)`
-/

namespace A264269.P8056216963987619543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264133 (2 * n + 3)

end

end A264269.P8056216963987619543

/-! ## A264269.P13079294658593127874

`A264268(n+1)/A264267(n+1)*A264268(n+1)`
-/

namespace A264269.P13079294658593127874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264268 (n + 1) : ℚ) / (A264267 (n + 1) : ℚ) * (A264268 (n + 1) : ℚ)

end

end A264269.P13079294658593127874

/-! ## A264269.P2668275337490827013

`A264270(n+1)/A264271(n+1)*A264270(n+1)`
-/

namespace A264269.P2668275337490827013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264270 (n + 1) : ℚ) / (A264271 (n + 1) : ℚ) * (A264270 (n + 1) : ℚ)

end

end A264269.P2668275337490827013

/-! ## A264269.P13361142450575293759

`A264268(n+1)²/A264267(n+1)`
-/

namespace A264269.P13361142450575293759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264268 (n + 1) ^ 2 : ℚ) / (A264267 (n + 1) : ℚ)

end

end A264269.P13361142450575293759

/-!
# A264270: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264270, there is no canonical definition to state claims against.
-/

/-! ## A264270.P17678193552477163914

`A189451(n+2)*A189452(n+2)`
-/

namespace A264270.P17678193552477163914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189451 (n + 2) * A189452 (n + 2)

end

end A264270.P17678193552477163914

/-! ## A264270.P18223384566267504554

`sqrt(A264269(n+1))*sqrt(A264271(n+1))`
-/

namespace A264270.P18223384566267504554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264269 (n + 1) : ℝ) * Real.sqrt (A264271 (n + 1) : ℝ)

end

end A264270.P18223384566267504554

/-! ## A264270.P4256652529438649680

`sqrt(A264269(n+1)*A264271(n+1))`
-/

namespace A264270.P4256652529438649680
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264269 (n + 1) * A264271 (n + 1) : ℝ)

end

end A264270.P4256652529438649680

/-! ## A264270.P3752709341103762459

`A264272(A052905(n+3))`
-/

namespace A264270.P3752709341103762459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A052905 (n + 3)).toNat

end

end A264270.P3752709341103762459

/-! ## A264270.P10278259050403711084

`A264272(A302537(n)+15)`
-/

namespace A264270.P10278259050403711084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A302537 n + 15).toNat

end

end A264270.P10278259050403711084

/-!
# A264271: Number of (n+1) X (7+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264271, there is no canonical definition to state claims against.
-/

/-! ## A264271.P17660884158284299898

`A189452(n+2)²`
-/

namespace A264271.P17660884158284299898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189452 (n + 2) ^ 2

end

end A264271.P17660884158284299898

/-! ## A264271.P9061239302193080842

`A264134(2*n+3)`
-/

namespace A264271.P9061239302193080842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264134 (2 * n + 3)

end

end A264271.P9061239302193080842

/-! ## A264271.P7327264306229580292

`A189452(n+2)^A000005(A326810(n))`
-/

namespace A264271.P7327264306229580292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189452 (n + 2) : ℚ) ^ (A000005 (A326810 n).toNat : ℤ)

end

end A264271.P7327264306229580292

/-! ## A264271.P15370653459441283306

`A189452(n+2)^A020639(2*A085058(n))`
-/

namespace A264271.P15370653459441283306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189452 (n + 2) : ℚ) ^ (A020639 (2 * A085058 n).toNat : ℤ)

end

end A264271.P15370653459441283306

/-! ## A264271.P13600655326626253667

`A264270(n+1)/A264269(n+1)*A264270(n+1)`
-/

namespace A264271.P13600655326626253667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264270 (n + 1) : ℚ) / (A264269 (n + 1) : ℚ) * (A264270 (n + 1) : ℚ)

end

end A264271.P13600655326626253667

/-!
# A264273: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264273, the canonical program `A264273.P14172269751459318971` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264273 has offset 1).

The definition of A264273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264273.P7372971064837604222

`ogf((9+3x+16x^2)/(1-5x))`
-/

namespace A264273.P7372971064837604222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 3, 16] [1, -5] n

end

end A264273.P7372971064837604222

namespace A264273

/-- `ogf((9+3x+16x^2)/(1-5x))` -/
def P7372971064837604222.Spec : Prop :=
  ∀ n, P7372971064837604222.a n = A264273 (n + 1)

end A264273

/-! ## A264273.P14172269751459318971

`5*a(n-1)` with `a(0)=9, a(1)=48, a(2)=256`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A264273

/-- `5*a(n-1)` -/
def P14172269751459318971.Spec : Prop :=
  ∀ n, (P14172269751459318971.a n : ℤ) = A264273 (n + 1)

theorem P14172269751459318971.correct : P14172269751459318971.Spec := by
  intro n
  simp only [A264273, Nat.add_sub_cancel]

end A264273

/-! ## A264273.P12138495193244634276

`A055842(A008619(n))*A055842(A080513(n))`
-/

namespace A264273.P12138495193244634276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 (A008619 n).toNat * A055842 (A080513 n).toNat

end

end A264273.P12138495193244634276

namespace A264273

/-- `A055842(A008619(n))*A055842(A080513(n))` -/
def P12138495193244634276.Spec : Prop :=
  ∀ n, P12138495193244634276.a n = A264273 (n + 1)

end A264273

/-! ## A264273.P12113971845550391211

`A264272(∑[n+1]+2)`
-/

namespace A264273.P12113971845550391211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264273.P12113971845550391211

namespace A264273

/-- `A264272(∑[n+1]+2)` -/
def P12113971845550391211.Spec : Prop :=
  ∀ n, P12113971845550391211.a n = A264273 (n + 1)

end A264273

/-! ## A264273.P13932496603288005621

`record[A167374(n)*A264272(n+3)]`
-/

namespace A264273.P13932496603288005621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A264272 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264273.P13932496603288005621

namespace A264273

/-- `record[A167374(n)*A264272(n+3)]` -/
def P13932496603288005621.Spec : Prop :=
  ∀ n, P13932496603288005621.a n = A264273 (n + 1)

end A264273

/-!
# A264274: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264274, there is no canonical definition to state claims against.
-/

/-! ## A264274.P16348454450608905557

`A264272(∑[n+2]+4)`
-/

namespace A264274.P16348454450608905557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264274.P16348454450608905557

/-! ## A264274.P5784912582370980198

`A264272(A167614(n+1))+A025437(n)`
-/

namespace A264274.P5784912582370980198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A167614 (n + 1)).toNat + A025437 n

end

end A264274.P5784912582370980198

/-! ## A264274.P11585411365898822274

`A264272(A167614(n+1))+A025442(n)`
-/

namespace A264274.P11585411365898822274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A167614 (n + 1)).toNat + A025442 n

end

end A264274.P11585411365898822274

/-! ## A264274.P2665654927096134131

`A264272(A167614(n+1))+A025466(n)`
-/

namespace A264274.P2665654927096134131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A167614 (n + 1)).toNat + A025466 n

end

end A264274.P2665654927096134131

/-! ## A264274.P17591069237839351226

`lcm(A033999(n), A264272(A167614(n+1)))`
-/

namespace A264274.P17591069237839351226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A264272 (A167614 (n + 1)).toNat)

end

end A264274.P17591069237839351226

/-!
# A264275: Number of (4+1) X (n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264275, there is no canonical definition to state claims against.
-/

/-! ## A264275.P8823703312848332286

`A264272(A141214(n)+7)`
-/

namespace A264275.P8823703312848332286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A141214 n + 7).toNat

end

end A264275.P8823703312848332286

/-! ## A264275.P9823891560728623950

`A264272(A052905(n)+9)`
-/

namespace A264275.P9823891560728623950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A052905 n + 9).toNat

end

end A264275.P9823891560728623950

/-! ## A264275.P5888854881454628978

`A264272(A055999(n)+10)`
-/

namespace A264275.P5888854881454628978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A055999 n + 10).toNat

end

end A264275.P5888854881454628978

/-! ## A264275.P9337727708121058479

`A264272(A167614(n+2)+1)`
-/

namespace A264275.P9337727708121058479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A167614 (n + 2) + 1).toNat

end

end A264275.P9337727708121058479

/-! ## A264275.P15853448504738882547

`A264272(eq[5, A131818(n+1)])`
-/

namespace A264275.P15853448504738882547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264275.P15853448504738882547

/-!
# A264276: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264276, there is no canonical definition to state claims against.
-/

/-! ## A264276.P3331242470181108667

`A264272(A167499(n+3))`
-/

namespace A264276.P3331242470181108667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A167499 (n + 3)).toNat

end

end A264276.P3331242470181108667

/-! ## A264276.P10707785430555109351

`A264272(A155212(n)+13)`
-/

namespace A264276.P10707785430555109351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A155212 n + 13).toNat

end

end A264276.P10707785430555109351

/-! ## A264276.P9510992294824496220

`A264272(A056000(n)+15)`
-/

namespace A264276.P9510992294824496220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A056000 n + 15).toNat

end

end A264276.P9510992294824496220

/-! ## A264276.P7163979529112764688

`A264272(eq[7, A066657(n)])`
-/

namespace A264276.P7163979529112764688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264276.P7163979529112764688

/-! ## A264276.P7466714291361668905

`A264272(eq[6, A131818(n+1)])`
-/

namespace A264276.P7466714291361668905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264276.P7466714291361668905

/-!
# A264277: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264277, there is no canonical definition to state claims against.
-/

/-! ## A264277.P10248448063766669788

`A264272(A000217(n+5)+6)`
-/

namespace A264277.P10248448063766669788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A000217 (n + 5) + 6).toNat

end

end A264277.P10248448063766669788

/-! ## A264277.P12470914313893625088

`A264272(A034856(n+4)+8)`
-/

namespace A264277.P12470914313893625088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A034856 (n + 4) + 8).toNat

end

end A264277.P12470914313893625088

/-! ## A264277.P5328096353602984656

`A264272(A046691(n+3)+10)`
-/

namespace A264277.P5328096353602984656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (A046691 (n + 3) + 10).toNat

end

end A264277.P5328096353602984656

/-! ## A264277.P6825175037280085438

`A264272(eq[7, A131818(n+1)])`
-/

namespace A264277.P6825175037280085438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264277.P6825175037280085438

/-! ## A264277.P10434925314751258560

`A264272(eq[5, A194921(n+1)]+10)`
-/

namespace A264277.P10434925314751258560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A264277.P10434925314751258560

/-!
# A264278: Number of (7+1) X (n+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

The programs for A264278, there is no canonical definition to state claims against.
-/

/-! ## A264278.P16326836839642322619

`A264272(eq[8, A131818(n+1)])`
-/

namespace A264278.P16326836839642322619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264278.P16326836839642322619

/-!
# A264279: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264279, there is no canonical definition to state claims against.
-/

/-! ## A264279.P8101149095321053824

`A264285(∑[4*n]+1)`
-/

namespace A264279.P8101149095321053824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264279.P8101149095321053824

/-! ## A264279.P14055691029820035638

`record[gcd(A008482(n), A264285(n+1))]`
-/

namespace A264279.P14055691029820035638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A264285 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264279.P14055691029820035638

/-! ## A264279.P8221194925649828859

`record[A185907(n+1)*A264285(n+1)]`
-/

namespace A264279.P8221194925649828859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185907 (n + 1) * A264285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264279.P8221194925649828859

/-! ## A264279.P3845577291921068970

`A027828(n)*A264285(A001844(n))`
-/

namespace A264279.P3845577291921068970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n * A264285 (A001844 n).toNat

end

end A264279.P3845577291921068970

/-! ## A264279.P4780450924933595211

`A264285(A001844(n))^A309025(n)`
-/

namespace A264279.P4780450924933595211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264285 (A001844 n).toNat : ℚ) ^ (A309025 n : ℤ)

end

end A264279.P4780450924933595211

/-!
# A264280: Number of (n+1) X (3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264280, the canonical program `A264280.P11795748695988204255` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264280 has offset 1).

The definition of A264280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264280.P13259397295738525204

`Δ[Δ[ogf(-1/(-1+3x+4x^2+4x^3))]]`
-/

namespace A264280.P13259397295738525204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -4, -4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264280.P13259397295738525204

namespace A264280

/-- `Δ[Δ[ogf(-1/(-1+3x+4x^2+4x^3))]]` -/
def P13259397295738525204.Spec : Prop :=
  ∀ n, P13259397295738525204.a n = A264280 (n + 1)

end A264280

/-! ## A264280.P2324477572373296117

`ogf((8+8x+4x^2)/(1-3x-4x^2-4x^3))`
-/

namespace A264280.P2324477572373296117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8, 4] [1, -3, -4, -4] n

end

end A264280.P2324477572373296117

namespace A264280

/-- `ogf((8+8x+4x^2)/(1-3x-4x^2-4x^3))` -/
def P2324477572373296117.Spec : Prop :=
  ∀ n, P2324477572373296117.a n = A264280 (n + 1)

end A264280

/-! ## A264280.P11795748695988204255

`3*a(n-1)+4*a(n-2)+4*a(n-3)` with `a(0)=8, a(1)=32, a(2)=132`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A264280

/-- `3*a(n-1)+4*a(n-2)+4*a(n-3)` -/
def P11795748695988204255.Spec : Prop :=
  ∀ n, (P11795748695988204255.a n : ℤ) = A264280 (n + 1)

theorem P11795748695988204255.correct : P11795748695988204255.Spec := by
  intro n
  simp only [A264280, Nat.add_sub_cancel]

end A264280

/-! ## A264280.P18124363171547777780

`Δ[Δ[A398827(n)]]`
-/

namespace A264280.P18124363171547777780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398827 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264280.P18124363171547777780

namespace A264280

/-- `Δ[Δ[A398827(n)]]` -/
def P18124363171547777780.Spec : Prop :=
  ∀ n, P18124363171547777780.a n = A264280 (n + 1)

end A264280

/-! ## A264280.P8908919939280754695

`A264285(∑[n+3]+1)`
-/

namespace A264280.P8908919939280754695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264280.P8908919939280754695

namespace A264280

/-- `A264285(∑[n+3]+1)` -/
def P8908919939280754695.Spec : Prop :=
  ∀ n, P8908919939280754695.a n = A264280 (n + 1)

end A264280

/-!
# A264281: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264281, the canonical program `A264281.P606219976268360699` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264281 has offset 1).

The definition of A264281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264281.P606219976268360699

`ogf((16-10x-7x^2-5x^3+4x^4+3x^5)/(1-7x+2x^2+2x^3+6x^4-x^5-3x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A264281

/-- `ogf((16-10x-7x^2-5x^3+4x^4+3x^5)/(1-7x+2x^2+2x^3+6x^4-x^5-3x^6))` -/
def P606219976268360699.Spec : Prop :=
  ∀ n, P606219976268360699.a n = A264281 (n + 1)

theorem P606219976268360699.correct : P606219976268360699.Spec := by
  intro n
  simp only [A264281, Nat.add_sub_cancel]

end A264281

/-! ## A264281.P2945639460637851549

`A264285(A141214(n+1))`
-/

namespace A264281.P2945639460637851549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A141214 (n + 1)).toNat

end

end A264281.P2945639460637851549

namespace A264281

/-- `A264285(A141214(n+1))` -/
def P2945639460637851549.Spec : Prop :=
  ∀ n, P2945639460637851549.a n = A264281 (n + 1)

end A264281

/-! ## A264281.P8598618112647177046

`A264285(A027379(n+2))`
-/

namespace A264281.P8598618112647177046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A027379 (n + 2)).toNat

end

end A264281.P8598618112647177046

namespace A264281

/-- `A264285(A027379(n+2))` -/
def P8598618112647177046.Spec : Prop :=
  ∀ n, P8598618112647177046.a n = A264281 (n + 1)

end A264281

/-! ## A264281.P8276572111093149237

`A264285(A155212(n)+5)`
-/

namespace A264281.P8276572111093149237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A155212 n + 5).toNat

end

end A264281.P8276572111093149237

namespace A264281

/-- `A264285(A155212(n)+5)` -/
def P8276572111093149237.Spec : Prop :=
  ∀ n, P8276572111093149237.a n = A264281 (n + 1)

end A264281

/-! ## A264281.P1312912005807666916

`A264285(A056000(n)+7)`
-/

namespace A264281.P1312912005807666916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A056000 n + 7).toNat

end

end A264281.P1312912005807666916

namespace A264281

/-- `A264285(A056000(n)+7)` -/
def P1312912005807666916.Spec : Prop :=
  ∀ n, P1312912005807666916.a n = A264281 (n + 1)

end A264281

/-!
# A264282: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264282, there is no canonical definition to state claims against.
-/

/-! ## A264282.P18384826865582078907

`A264285(Δ[A264443(n)])`
-/

namespace A264282.P18384826865582078907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (f1 (n + 1) - f1 n).toNat

end

end A264282.P18384826865582078907

/-! ## A264282.P4309483444786657343

`A264285(A056115(n)+11)`
-/

namespace A264282.P4309483444786657343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A056115 n + 11).toNat

end

end A264282.P4309483444786657343

/-! ## A264282.P2973801347860498673

`A264285(eq[3, A152157(n)])`
-/

namespace A264282.P2973801347860498673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264282.P2973801347860498673

/-! ## A264282.P1408650541514989216

`A264285(eq[4, A193592(n)])`
-/

namespace A264282.P1408650541514989216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264282.P1408650541514989216

/-! ## A264282.P872352189630650589

`A264285(Δ[A023545(n+1)])`
-/

namespace A264282.P872352189630650589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (f1 (n + 1) - f1 n).toNat

end

end A264282.P872352189630650589

/-!
# A264283: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264283, there is no canonical definition to state claims against.
-/

/-! ## A264283.P7140199354420507424

`A264285(eq[3, A219347(n)])`
-/

namespace A264283.P7140199354420507424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264283.P7140199354420507424

/-! ## A264283.P12319920399887043530

`A264285(eq[5, A193592(n)])`
-/

namespace A264283.P12319920399887043530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264283.P12319920399887043530

/-! ## A264283.P11893649976945838676

`A264285(eq[8, A185782(n+1)])`
-/

namespace A264283.P11893649976945838676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264283.P11893649976945838676

/-! ## A264283.P9527734007643893554

`A264285(eq[16, A057728(n+1)])`
-/

namespace A264283.P9527734007643893554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264283.P9527734007643893554

/-! ## A264283.P11370697504613717423

`A264285(Δ[Δ[A006504(n+1)]])`
-/

namespace A264283.P11370697504613717423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (f1 (n + 1) - f1 n).toNat

end

end A264283.P11370697504613717423

/-!
# A264284: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264284, there is no canonical definition to state claims against.
-/

/-! ## A264284.P12201928018987838395

`A264285(A055999(n+4))`
-/

namespace A264284.P12201928018987838395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A055999 (n + 4)).toNat

end

end A264284.P12201928018987838395

/-! ## A264284.P5276719369159978498

`A264285(eq[4, A219347(n)])`
-/

namespace A264284.P5276719369159978498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264284.P5276719369159978498

/-! ## A264284.P5672691797922921749

`A264285(eq[6, A193592(n)])`
-/

namespace A264284.P5672691797922921749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264284.P5672691797922921749

/-! ## A264284.P7891188563348650706

`A264285(A000124(n+7)-7)`
-/

namespace A264284.P7891188563348650706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A000124 (n + 7) - 7).toNat

end

end A264284.P7891188563348650706

/-! ## A264284.P14770031879452751648

`A264285(eq[10, A185782(n+1)])`
-/

namespace A264284.P14770031879452751648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264284.P14770031879452751648

/-!
# A264286: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264286, the canonical program `A264286.P5925754108823085293` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264286 has offset 1).

The definition of A264286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264286.P5925754108823085293

`ogf((1+9x+18x^2+20x^3+18x^4+12x^5+4x^6)/(1-x-4x^2-10x^3-12x^4-8x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A264286

/-- `ogf((1+9x+18x^2+20x^3+18x^4+12x^5+4x^6)/(1-x-4x^2-10x^3-12x^4-8x^5))` -/
def P5925754108823085293.Spec : Prop :=
  ∀ n, P5925754108823085293.a n = A264286 (n + 1)

theorem P5925754108823085293.correct : P5925754108823085293.Spec := by
  intro n
  simp only [A264286, Nat.add_sub_cancel]

end A264286

/-! ## A264286.P10122555749543579662

`A264285(∑[n+1]+2)`
-/

namespace A264286.P10122555749543579662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264286.P10122555749543579662

namespace A264286

/-- `A264285(∑[n+1]+2)` -/
def P10122555749543579662.Spec : Prop :=
  ∀ n, P10122555749543579662.a n = A264286 (n + 1)

end A264286

/-! ## A264286.P17585966641976985029

`record[ratio[A264285(A080036(n))]]`
-/

namespace A264286.P17585966641976985029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264286.P17585966641976985029

namespace A264286

/-- `record[ratio[A264285(A080036(n))]]` -/
def P17585966641976985029.Spec : Prop :=
  ∀ n, P17585966641976985029.a n = (A264286 (n + 1) : ℚ)

end A264286

/-! ## A264286.P18096544746909931214

`record[A264285(A286159(n+1)+2)]`
-/

namespace A264286.P18096544746909931214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A286159 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264286.P18096544746909931214

namespace A264286

/-- `record[A264285(A286159(n+1)+2)]` -/
def P18096544746909931214.Spec : Prop :=
  ∀ n, P18096544746909931214.a n = A264286 (n + 1)

end A264286

/-! ## A264286.P1059800204106449915

`record[gcd(A097230(n), A264285(n+1))]`
-/

namespace A264286.P1059800204106449915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A264285 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264286.P1059800204106449915

namespace A264286

/-- `record[gcd(A097230(n), A264285(n+1))]` -/
def P1059800204106449915.Spec : Prop :=
  ∀ n, (P1059800204106449915.a n : ℤ) = A264286 (n + 1)

end A264286

/-!
# A264287: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264287, there is no canonical definition to state claims against.
-/

/-! ## A264287.P3163927552597434379

`A264285(∑[n+2]+4)`
-/

namespace A264287.P3163927552597434379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264287.P3163927552597434379

/-! ## A264287.P8181148422061170265

`lcm((-1)^n, A264285(A167614(n+1)))`
-/

namespace A264287.P8181148422061170265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A264285 (A167614 (n + 1)).toNat)

end

end A264287.P8181148422061170265

/-! ## A264287.P17077998446584517681

`A264285(A167614(n+1))+A025438(n)`
-/

namespace A264287.P17077998446584517681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A167614 (n + 1)).toNat + A025438 n

end

end A264287.P17077998446584517681

/-! ## A264287.P11739028377451864043

`A264285(A167614(n+1))+A178798(n)`
-/

namespace A264287.P11739028377451864043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A167614 (n + 1)).toNat + A178798 n

end

end A264287.P11739028377451864043

/-! ## A264287.P6685067770927376873

`A326457(n)+A264285(A167614(n+1))`
-/

namespace A264287.P6685067770927376873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326457 n + A264285 (A167614 (n + 1)).toNat

end

end A264287.P6685067770927376873

/-!
# A264288: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264288, there is no canonical definition to state claims against.
-/

/-! ## A264288.P434737591244950046

`A264285(A141214(n)+7)`
-/

namespace A264288.P434737591244950046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A141214 n + 7).toNat

end

end A264288.P434737591244950046

/-! ## A264288.P6820551788262593120

`A264285(A052905(n)+9)`
-/

namespace A264288.P6820551788262593120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A052905 n + 9).toNat

end

end A264288.P6820551788262593120

/-! ## A264288.P9886472440082895521

`A264285(A055999(n)+10)`
-/

namespace A264288.P9886472440082895521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A055999 n + 10).toNat

end

end A264288.P9886472440082895521

/-! ## A264288.P10104579664295860265

`A264285(A167614(n+2)+1)`
-/

namespace A264288.P10104579664295860265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A167614 (n + 2) + 1).toNat

end

end A264288.P10104579664295860265

/-! ## A264288.P16558263604127092946

`A264285(eq[5, A131818(n+1)])`
-/

namespace A264288.P16558263604127092946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264288.P16558263604127092946

/-!
# A264289: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264289, there is no canonical definition to state claims against.
-/

/-! ## A264289.P6368122290804359242

`A264285(∑[n+4]+11)`
-/

namespace A264289.P6368122290804359242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A264289.P6368122290804359242

/-! ## A264289.P9703510813351432066

`A358261(n+1)+A264285(A167499(n+3))`
-/

namespace A264289.P9703510813351432066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358261 (n + 1) + A264285 (A167499 (n + 3)).toNat

end

end A264289.P9703510813351432066

/-! ## A264289.P7219739626554137870

`A057427(n+1)*A264285(A167499(n+3))`
-/

namespace A264289.P7219739626554137870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A264285 (A167499 (n + 3)).toNat

end

end A264289.P7219739626554137870

/-!
# A264290: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264290, there is no canonical definition to state claims against.
-/

/-! ## A264290.P7454333680728844479

`A264285(eq[7, A131818(n+1)])`
-/

namespace A264290.P7454333680728844479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264290.P7454333680728844479

/-! ## A264290.P15229291096812856886

`A264285(Δ[A023545(n+1)]+10)`
-/

namespace A264290.P15229291096812856886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (f1 (n + 1) - f1 n + 10).toNat

end

end A264290.P15229291096812856886

/-! ## A264290.P5743468948500589234

`A264285(eq[3, A144018(n+1)]+10)`
-/

namespace A264290.P5743468948500589234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A264290.P5743468948500589234

/-! ## A264290.P10160469104749394181

`A264285(A000124(n+6)-(n+1))`
-/

namespace A264290.P10160469104749394181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A264290.P10160469104749394181

/-! ## A264290.P1420641302741849095

`A264285(A052905(n+4)-2-2*n)`
-/

namespace A264290.P1420641302741849095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A052905 (n + 4) - 2 - (2 * n : ℤ)).toNat

end

end A264290.P1420641302741849095

/-!
# A264291: Number of (7+1) X (n+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,0 0,1 1,0 or -1,-2.

The programs for A264291, there is no canonical definition to state claims against.
-/

/-! ## A264291.P6766812251698079814

`A264285(A056119(n)+28)`
-/

namespace A264291.P6766812251698079814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A056119 n + 28).toNat

end

end A264291.P6766812251698079814

/-! ## A264291.P3875914824631099777

`A264285(eq[11, A066657(n)])`
-/

namespace A264291.P3875914824631099777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264291.P3875914824631099777

/-! ## A264291.P4228077436155401670

`A264285(A167499(n+5)+2)`
-/

namespace A264291.P4228077436155401670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A167499 (n + 5) + 2).toNat

end

end A264291.P4228077436155401670

/-! ## A264291.P12098576066685745265

`A264285(A000217(n+6)+7)`
-/

namespace A264291.P12098576066685745265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (A000217 (n + 6) + 7).toNat

end

end A264291.P12098576066685745265

/-! ## A264291.P18025614705694617420

`A264285(eq[8, A131818(n+1)])`
-/

namespace A264291.P18025614705694617420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264291.P18025614705694617420

/-!
# A264292: Number of irreducible polynomials in the polynomial tree T generated as in Comments.

The programs for A264292, there is no canonical definition to state claims against.
-/

/-! ## A264292.P9844286451057124051

`A003984(A001168(n)-A130749(n))`
-/

namespace A264292.P9844286451057124051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A001168 n - A130749 n).toNat

end

end A264292.P9844286451057124051

/-! ## A264292.P10062312183411055079

`A003984(A001168(n)-A008277(n+1))`
-/

namespace A264292.P10062312183411055079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A001168 n - A008277 (n + 1)).toNat

end

end A264292.P10062312183411055079

/-! ## A264292.P1733066039124983530

`A124757(A226434(n+1))`
-/

namespace A264292.P1733066039124983530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A226434 (n + 1)).toNat

end

end A264292.P1733066039124983530

/-! ## A264292.P803339842954914133

`A236674(A121649(n+1))`
-/

namespace A264292.P803339842954914133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (A121649 (n + 1)).toNat

end

end A264292.P803339842954914133

/-! ## A264292.P3058160249202416077

`A000196(A000085(n)*A004526(n))`
-/

namespace A264292.P3058160249202416077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000085 n * A004526 n).toNat

end

end A264292.P3058160249202416077

/-!
# A264293: Number of irreducible polynomials in the n-th generation of polynomials generated as in Comments.

The programs for A264293, there is no canonical definition to state claims against.
-/

/-! ## A264293.P11642802061014594368

`A329233(A130905(n))`
-/

namespace A264293.P11642802061014594368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329233 (A130905 n).toNat

end

end A264293.P11642802061014594368

/-! ## A264293.P8582318094395393605

`A255122(A143608(n))-A143608(n)`
-/

namespace A264293.P8582318094395393605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255122 (A143608 n).toNat - A143608 n

end

end A264293.P8582318094395393605

/-! ## A264293.P15574960969518604136

`A212652(A130905(n))%A001003(n)`
-/

namespace A264293.P15574960969518604136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212652 (A130905 n).toNat) (A001003 n)

end

end A264293.P15574960969518604136

/-! ## A264293.P5255000116513840996

`A261104(A149628(n)-A056612(n+1))`
-/

namespace A264293.P5255000116513840996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A149628 n - A056612 (n + 1)).toNat

end

end A264293.P5255000116513840996

/-!
# A264294: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264294, the canonical program `A264294.P2902851958335365985` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264294 has offset 1).

The definition of A264294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264294.P9001894483417859021

`ogf((2+7x+3x^2-10x^3-2x^4+3x^5-2x^6-x^7)/(1-x-4x^2-5x^3+5x^4+5x^5-4x^6+x^7+x^8))`
-/

namespace A264294.P9001894483417859021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 7, 3, -10, -2, 3, -2, -1] [1, -1, -4, -5, 5, 5, -4, 1, 1] n

end

end A264294.P9001894483417859021

namespace A264294

/-- `ogf((2+7x+3x^2-10x^3-2x^4+3x^5-2x^6-x^7)/(1-x-4x^2-5x^3+5x^4+5x^5-4x^6+x^7+x^8))` -/
def P9001894483417859021.Spec : Prop :=
  ∀ n, P9001894483417859021.a n = A264294 (n + 1)

end A264294

/-! ## A264294.P2902851958335365985

`A000045(n+3)*A116201(n+3)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A264294

/-- `A000045(n+3)*A116201(n+3)` -/
def P2902851958335365985.Spec : Prop :=
  ∀ n, P2902851958335365985.a n = A264294 (n + 1)

theorem P2902851958335365985.correct : P2902851958335365985.Spec := by
  intro n
  simp only [A264294, Nat.add_sub_cancel]

end A264294

/-! ## A264294.P2271382142686630456

`sqrt(A007598(n+3))*A116201(n+3)`
-/

namespace A264294.P2271382142686630456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 (n + 3) : ℝ) * (A116201 (n + 3) : ℝ)

end

end A264294.P2271382142686630456

namespace A264294

/-- `sqrt(A007598(n+3))*A116201(n+3)` -/
def P2271382142686630456.Spec : Prop :=
  ∀ n, P2271382142686630456.a n = (A264294 (n + 1) : ℝ)

end A264294

/-! ## A264294.P13554690427084455203

`Δ[A000071(n+4)]*A116201(n+3)`
-/

namespace A264294.P13554690427084455203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A116201 (n + 3)

end

end A264294.P13554690427084455203

namespace A264294

/-- `Δ[A000071(n+4)]*A116201(n+3)` -/
def P13554690427084455203.Spec : Prop :=
  ∀ n, P13554690427084455203.a n = A264294 (n + 1)

end A264294

/-! ## A264294.P14607425473562083669

`(A000071(n+3)+1)*A116201(n+3)`
-/

namespace A264294.P14607425473562083669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 3) + 1) * A116201 (n + 3)

end

end A264294.P14607425473562083669

namespace A264294

/-- `(A000071(n+3)+1)*A116201(n+3)` -/
def P14607425473562083669.Spec : Prop :=
  ∀ n, P14607425473562083669.a n = A264294 (n + 1)

theorem P14607425473562083669.correct : P14607425473562083669.Spec := by
  intro n
  simp only [A264294, Nat.add_sub_cancel, A264294.P14607425473562083669.a, A264294.P2902851958335365985.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A116201, A116201.P140355599782389315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A264294

/-! ## A264294.P14774268587870811719

`(A135431(n+3)-A135431(n+2))*A123231(2*(n+1))`
-/

namespace A264294.P14774268587870811719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135431 (n + 3) - A135431 (n + 2)) * A123231 (2 * (n + 1))

end

end A264294.P14774268587870811719

namespace A264294

/-- `(A135431(n+3)-A135431(n+2))*A123231(2*(n+1))` -/
def P14774268587870811719.Spec : Prop :=
  ∀ n, P14774268587870811719.a n = A264294 (n + 1)

end A264294

/-!
# A264295: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264295, there is no canonical definition to state claims against.
-/

/-! ## A264295.P10756983076925685155

`A264299(∑[n+3]+1)`
-/

namespace A264295.P10756983076925685155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264295.P10756983076925685155

/-! ## A264295.P3732786317034387995

`A264299(A034856(n+2))+A216601(n+1)`
-/

namespace A264295.P3732786317034387995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A034856 (n + 2)).toNat + A216601 (n + 1)

end

end A264295.P3732786317034387995

/-! ## A264295.P10512926617040063786

`A264299(A052905(n)+3)%A264298(n+1)`
-/

namespace A264295.P10512926617040063786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264299 (A052905 n + 3).toNat) (A264298 (n + 1))

end

end A264295.P10512926617040063786

/-!
# A264296: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264296, there is no canonical definition to state claims against.
-/

/-! ## A264296.P3318546751139037635

`A264299(∑[n+4]+3)`
-/

namespace A264296.P3318546751139037635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A264296.P3318546751139037635

/-! ## A264296.P11446585668675338335

`A264299(A055998(n+2))%A000891(n+2)`
-/

namespace A264296.P11446585668675338335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264299 (A055998 (n + 2)).toNat) (A000891 (n + 2))

end

end A264296.P11446585668675338335

/-!
# A264297: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264297, there is no canonical definition to state claims against.
-/

/-! ## A264297.P5378948347015508148

`A264299(Δ[A264443(n)])`
-/

namespace A264297.P5378948347015508148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (f1 (n + 1) - f1 n).toNat

end

end A264297.P5378948347015508148

/-! ## A264297.P9496269418870382460

`A264299(A046691(n+3))`
-/

namespace A264297.P9496269418870382460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A046691 (n + 3)).toNat

end

end A264297.P9496269418870382460

/-! ## A264297.P445477715004569272

`A264299(A056115(n)+11)`
-/

namespace A264297.P445477715004569272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A056115 n + 11).toNat

end

end A264297.P445477715004569272

/-! ## A264297.P7259720825524410027

`A264299(eq[2, A092921(n)])`
-/

namespace A264297.P7259720825524410027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264297.P7259720825524410027

/-! ## A264297.P8712357333887837758

`A264299(eq[4, A193592(n)])`
-/

namespace A264297.P8712357333887837758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264297.P8712357333887837758

/-!
# A264298: Number of (n+1) X (6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

The programs for A264298, there is no canonical definition to state claims against.
-/

/-! ## A264298.P14537363026887896407

`A264299(A052905(n+3))`
-/

namespace A264298.P14537363026887896407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A052905 (n + 3)).toNat

end

end A264298.P14537363026887896407

/-! ## A264298.P12449973756389947326

`A264299(A056119(n)+16)`
-/

namespace A264298.P12449973756389947326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (A056119 n + 16).toNat

end

end A264298.P12449973756389947326

/-! ## A264298.P13068147463308350060

`A264299(eq[3, A219347(n)])`
-/

namespace A264298.P13068147463308350060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264298.P13068147463308350060

/-! ## A264298.P16099753672670329129

`A264299(eq[3, A274661(n)])`
-/

namespace A264298.P16099753672670329129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264298.P16099753672670329129

