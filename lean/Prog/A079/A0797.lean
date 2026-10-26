import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
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
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B013.C000
import Seq.B014.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A079700: a(n) is the 2-adic valuation of the n-th even nontotient.

The programs for A079700, the canonical program `A079700.P9994903105198230930` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079700 has offset 1).

The definition of A079700 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079700.P9994903105198230930

`A007814(A005277(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A079700

/-- `A007814(A005277(n+1))` -/
def P9994903105198230930.Spec : Prop :=
  ∀ n, P9994903105198230930.a n = A079700 (n + 1)

theorem P9994903105198230930.correct : P9994903105198230930.Spec := by
  intro n
  simp only [A079700, Nat.add_sub_cancel]

end A079700

/-! ## A079700.P17554255528617909200

`val(A079695(n+1), 2)+1`
-/

namespace A079700.P17554255528617909200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079695 (n + 1)).toNat 2 + 1

end

end A079700.P17554255528617909200

namespace A079700

/-- `val(A079695(n+1), 2)+1` -/
def P17554255528617909200.Spec : Prop :=
  ∀ n, (P17554255528617909200.a n : ℤ) = A079700 (n + 1)

end A079700

/-! ## A079700.P6316983059826105351

`A001222(-or(-A005277(n+1), A005277(n+1)))`
-/

namespace A079700.P6316983059826105351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (-Int.lor (-A005277 (n + 1)) (A005277 (n + 1))).toNat

end

end A079700.P6316983059826105351

namespace A079700

/-- `A001222(-or(-A005277(n+1), A005277(n+1)))` -/
def P6316983059826105351.Spec : Prop :=
  ∀ n, P6316983059826105351.a n = A079700 (n + 1)

end A079700

/-! ## A079700.P7333703919938685131

`A001511(A079695(n+1))`
-/

namespace A079700.P7333703919938685131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A079695 (n + 1)).toNat

end

end A079700.P7333703919938685131

namespace A079700

/-- `A001511(A079695(n+1))` -/
def P7333703919938685131.Spec : Prop :=
  ∀ n, P7333703919938685131.a n = A079700 (n + 1)

end A079700

/-! ## A079700.P8422881851452179858

`A001511(A005277(n+1)/2)`
-/

namespace A079700.P8422881851452179858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A005277 (n + 1) : ℚ) / 2)).toNat

end

end A079700.P8422881851452179858

namespace A079700

/-- `A001511(A005277(n+1)/2)` -/
def P8422881851452179858.Spec : Prop :=
  ∀ n, P8422881851452179858.a n = A079700 (n + 1)

end A079700

/-! ## A079700.P14323368728539000669

`A000005(gcd(A005277(n+1)/2, A000079(n)))`
-/

namespace A079700.P14323368728539000669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (SequenceMachineLib.roundAway ((A005277 (n + 1) : ℚ) / 2)) (A000079 n))

end

end A079700.P14323368728539000669

namespace A079700

/-- `A000005(gcd(A005277(n+1)/2, A000079(n)))` -/
def P14323368728539000669.Spec : Prop :=
  ∀ n, P14323368728539000669.a n = A079700 (n + 1)

end A079700

/-! ## A079700.P1378868355423059378

`val(A307854(n+2)-1, 2)`
-/

namespace A079700.P1378868355423059378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A307854 (n + 2) - 1).toNat 2

end

end A079700.P1378868355423059378

namespace A079700

/-- `val(A307854(n+2)-1, 2)` -/
def P1378868355423059378.Spec : Prop :=
  ∀ n, (P1378868355423059378.a n : ℤ) = A079700 (n + 1)

end A079700

/-! ## A079700.P395978818964677272

`A285097(A307854(n+2))`
-/

namespace A079700.P395978818964677272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A307854 (n + 2)).toNat

end

end A079700.P395978818964677272

namespace A079700

/-- `A285097(A307854(n+2))` -/
def P395978818964677272.Spec : Prop :=
  ∀ n, P395978818964677272.a n = A079700 (n + 1)

end A079700

/-!
# A079701: A congruence property: a(n) = (A026375(p)-3)/(2*p) where p is the n-th prime.

The programs for A079701, there is no canonical definition to state claims against.
-/

/-! ## A079701.P14856590417993535629

`A349001(A000040(n+1))/2`
-/

namespace A079701.P14856590417993535629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349001 (A000040 (n + 1)).toNat : ℚ) / 2

end

end A079701.P14856590417993535629

/-! ## A079701.P10462153162167021599

`floor(A246657(A006005(n+1))+acot(n))`
-/

namespace A079701.P10462153162167021599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246657 (A006005 (n + 1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A079701.P10462153162167021599

/-!
# A079702: Numbers 2p where p is prime and 2p + 1 is composite.

The programs for A079702, the canonical program `A079702.P8447432609584050613` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079702 has offset 1).

The definition of A079702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079702.P8447432609584050613

`A053177(n+1)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079702

/-- `A053177(n+1)-1` -/
def P8447432609584050613.Spec : Prop :=
  ∀ n, P8447432609584050613.a n = A079702 (n + 1)

theorem P8447432609584050613.correct : P8447432609584050613.Spec := by
  intro n
  simp only [A079702, Nat.add_sub_cancel]

end A079702

/-! ## A079702.P11897934889449870876

`2*A053176(n+1)`
-/

namespace A079702.P11897934889449870876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053176 (n + 1)

end

end A079702.P11897934889449870876

namespace A079702

/-- `2*A053176(n+1)` -/
def P11897934889449870876.Spec : Prop :=
  ∀ n, P11897934889449870876.a n = A079702 (n + 1)

theorem P11897934889449870876.correct : P11897934889449870876.Spec := by
  intro n
  simp only [A079702, Nat.add_sub_cancel, A079702.P11897934889449870876.a, A079702.P8447432609584050613.a, A053176, A053176.P7503796743926850121.f1, A053176.P7503796743926850121.f2, A053176.P7503796743926850121.a, A053177, A053177.P14888561992425814603.a, A023595, A023595.P11716259585214489517.f1, A023595.P11716259585214489517.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079702

/-! ## A079702.P14502772425990341982

`2*eq[1, A339579(n+1)]`
-/

namespace A079702.P14502772425990341982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079702.P14502772425990341982

namespace A079702

/-- `2*eq[1, A339579(n+1)]` -/
def P14502772425990341982.Spec : Prop :=
  ∀ n, (P14502772425990341982.a n : ℤ) = A079702 (n + 1)

end A079702

/-! ## A079702.P6378895996482651124

`filter[A001747(n+1), A355451(#)]`
-/

namespace A079702.P6378895996482651124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079702.P6378895996482651124

namespace A079702

/-- `filter[A001747(n+1), A355451(#)]` -/
def P6378895996482651124.Spec : Prop :=
  ∀ n, P6378895996482651124.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P10414392556752896040

`filter[A015812(n+1), A355452(#)]`
-/

namespace A079702.P10414392556752896040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A079702.P10414392556752896040

namespace A079702

/-- `filter[A015812(n+1), A355452(#)]` -/
def P10414392556752896040.Spec : Prop :=
  ∀ n, P10414392556752896040.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P9954166762056189385

`filter[A055163(n+1), A355452(#)]`
-/

namespace A079702.P9954166762056189385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A079702.P9954166762056189385

namespace A079702

/-- `filter[A055163(n+1), A355452(#)]` -/
def P9954166762056189385.Spec : Prop :=
  ∀ n, P9954166762056189385.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P16054540223289752112

`filter[A064899(n+1), A355451(#)]`
-/

namespace A079702.P16054540223289752112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079702.P16054540223289752112

namespace A079702

/-- `filter[A064899(n+1), A355451(#)]` -/
def P16054540223289752112.Spec : Prop :=
  ∀ n, P16054540223289752112.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P5064558173503521765

`filter[A064899(n+1), A355452(#)]`
-/

namespace A079702.P5064558173503521765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A079702.P5064558173503521765

namespace A079702

/-- `filter[A064899(n+1), A355452(#)]` -/
def P5064558173503521765.Spec : Prop :=
  ∀ n, P5064558173503521765.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P4903376588487408561

`filter[A066190(n+1), A355452(#)]`
-/

namespace A079702.P4903376588487408561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A079702.P4903376588487408561

namespace A079702

/-- `filter[A066190(n+1), A355452(#)]` -/
def P4903376588487408561.Spec : Prop :=
  ∀ n, P4903376588487408561.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P14687546607418091013

`filter[A066664(n+1), A355451(#)]`
-/

namespace A079702.P14687546607418091013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079702.P14687546607418091013

namespace A079702

/-- `filter[A066664(n+1), A355451(#)]` -/
def P14687546607418091013.Spec : Prop :=
  ∀ n, P14687546607418091013.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P16504340863639286414

`filter[A066664(n+1), A355452(#)]`
-/

namespace A079702.P16504340863639286414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A079702.P16504340863639286414

namespace A079702

/-- `filter[A066664(n+1), A355452(#)]` -/
def P16504340863639286414.Spec : Prop :=
  ∀ n, P16504340863639286414.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P8664603011087932232

`filter[A069148(n+1), A355452(#)]`
-/

namespace A079702.P8664603011087932232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A079702.P8664603011087932232

namespace A079702

/-- `filter[A069148(n+1), A355452(#)]` -/
def P8664603011087932232.Spec : Prop :=
  ∀ n, P8664603011087932232.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P15984379000859081854

`filter[A073582(n+1), A355451(#)]`
-/

namespace A079702.P15984379000859081854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079702.P15984379000859081854

namespace A079702

/-- `filter[A073582(n+1), A355451(#)]` -/
def P15984379000859081854.Spec : Prop :=
  ∀ n, P15984379000859081854.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P13660708726216728316

`filter[A073582(n+1), A355452(#)]`
-/

namespace A079702.P13660708726216728316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A079702.P13660708726216728316

namespace A079702

/-- `filter[A073582(n+1), A355452(#)]` -/
def P13660708726216728316.Spec : Prop :=
  ∀ n, P13660708726216728316.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P12507783378725931633

`filter[A074845(n+1), A355451(#)]`
-/

namespace A079702.P12507783378725931633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079702.P12507783378725931633

namespace A079702

/-- `filter[A074845(n+1), A355451(#)]` -/
def P12507783378725931633.Spec : Prop :=
  ∀ n, P12507783378725931633.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P5935534411728899553

`filter[A074845(n+1), A355452(#)]`
-/

namespace A079702.P5935534411728899553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A079702.P5935534411728899553

namespace A079702

/-- `filter[A074845(n+1), A355452(#)]` -/
def P5935534411728899553.Spec : Prop :=
  ∀ n, P5935534411728899553.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P5849756465237096111

`filter[A075862(n+1), A355451(#)]`
-/

namespace A079702.P5849756465237096111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079702.P5849756465237096111

namespace A079702

/-- `filter[A075862(n+1), A355451(#)]` -/
def P5849756465237096111.Spec : Prop :=
  ∀ n, P5849756465237096111.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P1299480434724537257

`filter[A075862(n+1), A355452(#)]`
-/

namespace A079702.P1299480434724537257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A079702.P1299480434724537257

namespace A079702

/-- `filter[A075862(n+1), A355452(#)]` -/
def P1299480434724537257.Spec : Prop :=
  ∀ n, P1299480434724537257.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P5322010743303791323

`filter[A077017(n+1), A355451(#)]`
-/

namespace A079702.P5322010743303791323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079702.P5322010743303791323

namespace A079702

/-- `filter[A077017(n+1), A355451(#)]` -/
def P5322010743303791323.Spec : Prop :=
  ∀ n, P5322010743303791323.a n = A079702 (n + 1)

end A079702

/-! ## A079702.P2236970657574401032

`filter[A100484(n+1), A355451(#)]`
-/

namespace A079702.P2236970657574401032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079702.P2236970657574401032

namespace A079702

/-- `filter[A100484(n+1), A355451(#)]` -/
def P2236970657574401032.Spec : Prop :=
  ∀ n, P2236970657574401032.a n = A079702 (n + 1)

end A079702

/-!
# A079703: Numbers 4p where p is prime and 2p+1 and 4p+1 are composite.

The programs for A079703, the canonical program `A079703.P2275513762090753196` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079703 has offset 0).

The definition of A079703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079703.P2275513762090753196

`4*A043297(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A079703

/-- `4*A043297(n+2)` -/
def P2275513762090753196.Spec : Prop :=
  ∀ n, P2275513762090753196.a n = A079703 n

theorem P2275513762090753196.correct : P2275513762090753196.Spec := by
  intro n
  simp only [A079703]

end A079703

/-! ## A079703.P17517459749840782524

`4*p?[A119480(n+3)]`
-/

namespace A079703.P17517459749840782524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079703.P17517459749840782524

namespace A079703

/-- `4*p?[A119480(n+3)]` -/
def P17517459749840782524.Spec : Prop :=
  ∀ n, P17517459749840782524.a n = A079703 n

end A079703

/-! ## A079703.P9668964274665063993

`lcm(4, A043297(A020725(n+1)))`
-/

namespace A079703.P9668964274665063993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A043297 (A020725 (n + 1)).toNat)

end

end A079703.P9668964274665063993

namespace A079703

/-- `lcm(4, A043297(A020725(n+1)))` -/
def P9668964274665063993.Spec : Prop :=
  ∀ n, (P9668964274665063993.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P1506225698119102242

`∩[A001749(n+1), A058980(n+1)]`
-/

namespace A079703.P1506225698119102242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P1506225698119102242

namespace A079703

/-- `∩[A001749(n+1), A058980(n+1)]` -/
def P1506225698119102242.Spec : Prop :=
  ∀ n, (P1506225698119102242.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P8400674092704485687

`∩[A030515(n+1), A058980(n+1)]`
-/

namespace A079703.P8400674092704485687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P8400674092704485687

namespace A079703

/-- `∩[A030515(n+1), A058980(n+1)]` -/
def P8400674092704485687.Spec : Prop :=
  ∀ n, (P8400674092704485687.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P1760648689514532224

`∩[A054753(n+1), A058980(n+1)]`
-/

namespace A079703.P1760648689514532224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P1760648689514532224

namespace A079703

/-- `∩[A054753(n+1), A058980(n+1)]` -/
def P1760648689514532224.Spec : Prop :=
  ∀ n, (P1760648689514532224.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P14820738240879420067

`∩[A058980(n+1), A062876(n+1)]`
-/

namespace A079703.P14820738240879420067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P14820738240879420067

namespace A079703

/-- `∩[A058980(n+1), A062876(n+1)]` -/
def P14820738240879420067.Spec : Prop :=
  ∀ n, (P14820738240879420067.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P15211364621763102675

`∩[A058980(n+1), A080258(n+1)]`
-/

namespace A079703.P15211364621763102675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P15211364621763102675

namespace A079703

/-- `∩[A058980(n+1), A080258(n+1)]` -/
def P15211364621763102675.Spec : Prop :=
  ∀ n, (P15211364621763102675.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P1061839495541523732

`∩[A058980(n+1), A161424(n+1)]`
-/

namespace A079703.P1061839495541523732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P1061839495541523732

namespace A079703

/-- `∩[A058980(n+1), A161424(n+1)]` -/
def P1061839495541523732.Spec : Prop :=
  ∀ n, (P1061839495541523732.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P2557941459376351749

`∩[A058980(n+1), A229115(n+1)]`
-/

namespace A079703.P2557941459376351749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P2557941459376351749

namespace A079703

/-- `∩[A058980(n+1), A229115(n+1)]` -/
def P2557941459376351749.Spec : Prop :=
  ∀ n, (P2557941459376351749.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P7065271058790805947

`∩[A058980(n+1), A256241(n+1)]`
-/

namespace A079703.P7065271058790805947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P7065271058790805947

namespace A079703

/-- `∩[A058980(n+1), A256241(n+1)]` -/
def P7065271058790805947.Spec : Prop :=
  ∀ n, (P7065271058790805947.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P15446292711582304918

`∩[A058980(n+1), A285508(n+1)]`
-/

namespace A079703.P15446292711582304918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P15446292711582304918

namespace A079703

/-- `∩[A058980(n+1), A285508(n+1)]` -/
def P15446292711582304918.Spec : Prop :=
  ∀ n, (P15446292711582304918.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P10972153046621765466

`∩[A058980(n+1), A286228(n+1)]`
-/

namespace A079703.P10972153046621765466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P10972153046621765466

namespace A079703

/-- `∩[A058980(n+1), A286228(n+1)]` -/
def P10972153046621765466.Spec : Prop :=
  ∀ n, (P10972153046621765466.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P6062069985490966973

`∩[A058980(n+1), A337877(n+1)]`
-/

namespace A079703.P6062069985490966973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P6062069985490966973

namespace A079703

/-- `∩[A058980(n+1), A337877(n+1)]` -/
def P6062069985490966973.Spec : Prop :=
  ∀ n, (P6062069985490966973.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P568998218310997000

`∩[A058980(n+1), A069148(n+1)]`
-/

namespace A079703.P568998218310997000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079703.P568998218310997000

namespace A079703

/-- `∩[A058980(n+1), A069148(n+1)]` -/
def P568998218310997000.Spec : Prop :=
  ∀ n, (P568998218310997000.a n : ℤ) = A079703 n

end A079703

/-! ## A079703.P2609915706624335593

`filter[A001749(n+1), A355451(#)]`
-/

namespace A079703.P2609915706624335593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079703.P2609915706624335593

namespace A079703

/-- `filter[A001749(n+1), A355451(#)]` -/
def P2609915706624335593.Spec : Prop :=
  ∀ n, P2609915706624335593.a n = A079703 n

end A079703

/-! ## A079703.P14973898309731742436

`filter[A058980(n+1), A353798(#)]`
-/

namespace A079703.P14973898309731742436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A079703.P14973898309731742436

namespace A079703

/-- `filter[A058980(n+1), A353798(#)]` -/
def P14973898309731742436.Spec : Prop :=
  ∀ n, P14973898309731742436.a n = A079703 n

end A079703

/-! ## A079703.P4107652090121899140

`filter[A058980(n+1), A355443(#)]`
-/

namespace A079703.P4107652090121899140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355443 (f1 j).toNat = 1) n)

end

end A079703.P4107652090121899140

namespace A079703

/-- `filter[A058980(n+1), A355443(#)]` -/
def P4107652090121899140.Spec : Prop :=
  ∀ n, P4107652090121899140.a n = A079703 n

end A079703

/-! ## A079703.P13218236172030595425

`filter[A062876(n+1), A355451(#)]`
-/

namespace A079703.P13218236172030595425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079703.P13218236172030595425

namespace A079703

/-- `filter[A062876(n+1), A355451(#)]` -/
def P13218236172030595425.Spec : Prop :=
  ∀ n, P13218236172030595425.a n = A079703 n

end A079703

/-! ## A079703.P8472228495567456290

`filter[A161424(n+1), A355451(#)]`
-/

namespace A079703.P8472228495567456290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A079703.P8472228495567456290

namespace A079703

/-- `filter[A161424(n+1), A355451(#)]` -/
def P8472228495567456290.Spec : Prop :=
  ∀ n, P8472228495567456290.a n = A079703 n

end A079703

/-!
# A079704: a(n) = 2*prime(n)^2.

The programs for A079704, the canonical program `A079704.P2518524558801344655` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079704 has offset 1).

The definition of A079704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+1)²` (program `A079704.P2518524558801344655`, by `A079704.P2518524558801344655.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079704.P11944309894507862632

`2*A001248(n+1)`
-/

namespace A079704.P11944309894507862632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001248 (n + 1)

end

end A079704.P11944309894507862632

namespace A079704

/-- `2*A001248(n+1)` -/
def P11944309894507862632.Spec : Prop :=
  ∀ n, P11944309894507862632.a n = A079704 (n + 1)

end A079704

/-! ## A079704.P2518524558801344655

`2*A000040(n+1)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A079704

/-- `2*A000040(n+1)²` -/
def P2518524558801344655.Spec : Prop :=
  ∀ n, P2518524558801344655.a n = A079704 (n + 1)

theorem P2518524558801344655.correct : P2518524558801344655.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel]

end A079704

/-! ## A079704.P9464258946475966516

`A100484(n+1)*A000040(n+1)`
-/

namespace A079704.P9464258946475966516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A000040 (n + 1)

end

end A079704.P9464258946475966516

namespace A079704

/-- `A100484(n+1)*A000040(n+1)` -/
def P9464258946475966516.Spec : Prop :=
  ∀ n, P9464258946475966516.a n = A079704 (n + 1)

theorem P9464258946475966516.correct : P9464258946475966516.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel, A079704.P9464258946475966516.a, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079704

/-! ## A079704.P11652513513338712071

`A153480(n)+4`
-/

namespace A079704.P11652513513338712071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 n + 4

end

end A079704.P11652513513338712071

namespace A079704

/-- `A153480(n)+4` -/
def P11652513513338712071.Spec : Prop :=
  ∀ n, P11652513513338712071.a n = A079704 (n + 1)

theorem P11652513513338712071.correct : P11652513513338712071.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel, A079704.P11652513513338712071.a, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A153480, A153480.P7601742437354690742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079704

/-! ## A079704.P11745551198159223799

`A179262(n+1)+1`
-/

namespace A079704.P11745551198159223799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1) + 1

end

end A079704.P11745551198159223799

namespace A079704

/-- `A179262(n+1)+1` -/
def P11745551198159223799.Spec : Prop :=
  ∀ n, P11745551198159223799.a n = A079704 (n + 1)

theorem P11745551198159223799.correct : P11745551198159223799.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel, A079704.P11745551198159223799.a, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A179262, A179262.P11823652442846910111.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079704

/-! ## A079704.P11339554315585134385

`A069262(n+1)/2`
-/

namespace A079704.P11339554315585134385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069262 (n + 1) : ℚ) / 2

end

end A079704.P11339554315585134385

namespace A079704

/-- `A069262(n+1)/2` -/
def P11339554315585134385.Spec : Prop :=
  ∀ n, P11339554315585134385.a n = (A079704 (n + 1) : ℚ)

theorem P11339554315585134385.correct : P11339554315585134385.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel, A079704.P11339554315585134385.a, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069262, A069262.P1637468412186767431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079704

/-! ## A079704.P789195588034768494

`2*Δ[A007504(n)]²`
-/

namespace A079704.P789195588034768494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A079704.P789195588034768494

namespace A079704

/-- `2*Δ[A007504(n)]²` -/
def P789195588034768494.Spec : Prop :=
  ∀ n, P789195588034768494.a n = A079704 (n + 1)

end A079704

/-! ## A079704.P13410605374379052402

`2*Δ[A008348(n)]²`
-/

namespace A079704.P13410605374379052402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A079704.P13410605374379052402

namespace A079704

/-- `2*Δ[A008348(n)]²` -/
def P13410605374379052402.Spec : Prop :=
  ∀ n, P13410605374379052402.a n = A079704 (n + 1)

end A079704

/-! ## A079704.P2606056206449784141

`2*Δ[A022837(n)]²`
-/

namespace A079704.P2606056206449784141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A079704.P2606056206449784141

namespace A079704

/-- `2*Δ[A022837(n)]²` -/
def P2606056206449784141.Spec : Prop :=
  ∀ n, P2606056206449784141.a n = A079704 (n + 1)

end A079704

/-! ## A079704.P4199670596911457723

`2*Δ[A064365(n)]²`
-/

namespace A079704.P4199670596911457723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A079704.P4199670596911457723

namespace A079704

/-- `2*Δ[A064365(n)]²` -/
def P4199670596911457723.Spec : Prop :=
  ∀ n, P4199670596911457723.a n = A079704 (n + 1)

end A079704

/-! ## A079704.P2054205613696659868

`2*Δ[A309222(n)]²`
-/

namespace A079704.P2054205613696659868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A079704.P2054205613696659868

namespace A079704

/-- `2*Δ[A309222(n)]²` -/
def P2054205613696659868.Spec : Prop :=
  ∀ n, P2054205613696659868.a n = A079704 (n + 1)

end A079704

/-! ## A079704.P15316408091393399579

`2*p?[A259153(n)]²`
-/

namespace A079704.P15316408091393399579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A079704.P15316408091393399579

namespace A079704

/-- `2*p?[A259153(n)]²` -/
def P15316408091393399579.Spec : Prop :=
  ∀ n, P15316408091393399579.a n = A079704 (n + 1)

end A079704

/-! ## A079704.P10627391674850633167

`2*sqrt(A030514(n+1))`
-/

namespace A079704.P10627391674850633167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A030514 (n + 1) : ℝ)

end

end A079704.P10627391674850633167

namespace A079704

/-- `2*sqrt(A030514(n+1))` -/
def P10627391674850633167.Spec : Prop :=
  ∀ n, P10627391674850633167.a n = (A079704 (n + 1) : ℝ)

end A079704

/-! ## A079704.P7758811865635624853

`A100484(n+1)²/2`
-/

namespace A079704.P7758811865635624853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) ^ 2 : ℚ) / 2

end

end A079704.P7758811865635624853

namespace A079704

/-- `A100484(n+1)²/2` -/
def P7758811865635624853.Spec : Prop :=
  ∀ n, P7758811865635624853.a n = (A079704 (n + 1) : ℚ)

theorem P7758811865635624853.correct : P7758811865635624853.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel, A079704.P7758811865635624853.a, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079704

/-! ## A079704.P9872925510930637105

`2*(A084920(n+1)+1)`
-/

namespace A079704.P9872925510930637105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A084920 (n + 1) + 1)

end

end A079704.P9872925510930637105

namespace A079704

/-- `2*(A084920(n+1)+1)` -/
def P9872925510930637105.Spec : Prop :=
  ∀ n, P9872925510930637105.a n = A079704 (n + 1)

theorem P9872925510930637105.correct : P9872925510930637105.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel, A079704.P9872925510930637105.a, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084920, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079704

/-! ## A079704.P17114587496319588269

`2*(A049001(n+1)+2)`
-/

namespace A079704.P17114587496319588269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049001 (n + 1) + 2)

end

end A079704.P17114587496319588269

namespace A079704

/-- `2*(A049001(n+1)+2)` -/
def P17114587496319588269.Spec : Prop :=
  ∀ n, P17114587496319588269.a n = A079704 (n + 1)

theorem P17114587496319588269.correct : P17114587496319588269.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel, A079704.P17114587496319588269.a, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P8777299766092042792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079704

/-! ## A079704.P17379893769371942291

`2*(A066872(n+1)-1)`
-/

namespace A079704.P17379893769371942291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066872 (n + 1) - 1)

end

end A079704.P17379893769371942291

namespace A079704

/-- `2*(A066872(n+1)-1)` -/
def P17379893769371942291.Spec : Prop :=
  ∀ n, P17379893769371942291.a n = A079704 (n + 1)

theorem P17379893769371942291.correct : P17379893769371942291.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel, A079704.P17379893769371942291.a, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066872, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079704

/-! ## A079704.P148838822892534670

`(A060429(n+1)-1)/2`
-/

namespace A079704.P148838822892534670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060429 (n + 1) - 1 : ℚ) / 2

end

end A079704.P148838822892534670

namespace A079704

/-- `(A060429(n+1)-1)/2` -/
def P148838822892534670.Spec : Prop :=
  ∀ n, P148838822892534670.a n = (A079704 (n + 1) : ℚ)

theorem P148838822892534670.correct : P148838822892534670.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel, A079704.P148838822892534670.a, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A060429, A060429.P17554722288178337545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079704

/-! ## A079704.P10285188254183268855

`2*(A061725(n+1)-2)`
-/

namespace A079704.P10285188254183268855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061725 (n + 1) - 2)

end

end A079704.P10285188254183268855

namespace A079704

/-- `2*(A061725(n+1)-2)` -/
def P10285188254183268855.Spec : Prop :=
  ∀ n, P10285188254183268855.a n = A079704 (n + 1)

theorem P10285188254183268855.correct : P10285188254183268855.Spec := by
  intro n
  simp only [A079704, Nat.add_sub_cancel, A079704.P10285188254183268855.a, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061725, A061725.P7248628641150990420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079704

/-!
# A079705: 3p^2 where p runs through the primes.

The programs for A079705, the canonical program `A079705.P5346247359754052354` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079705 has offset 1).

The definition of A079705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079705.P5346247359754052354

`3*A001248(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079705

/-- `3*A001248(n+1)` -/
def P5346247359754052354.Spec : Prop :=
  ∀ n, P5346247359754052354.a n = A079705 (n + 1)

theorem P5346247359754052354.correct : P5346247359754052354.Spec := by
  intro n
  simp only [A079705, Nat.add_sub_cancel]

end A079705

/-! ## A079705.P17347121421884239216

`3*A000040(n+1)²`
-/

namespace A079705.P17347121421884239216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) ^ 2

end

end A079705.P17347121421884239216

namespace A079705

/-- `3*A000040(n+1)²` -/
def P17347121421884239216.Spec : Prop :=
  ∀ n, P17347121421884239216.a n = A079705 (n + 1)

end A079705

/-! ## A079705.P1641990250538599851

`A003415(A030078(n+1))`
-/

namespace A079705.P1641990250538599851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A030078 (n + 1)).toNat

end

end A079705.P1641990250538599851

namespace A079705

/-- `A003415(A030078(n+1))` -/
def P1641990250538599851.Spec : Prop :=
  ∀ n, P1641990250538599851.a n = A079705 (n + 1)

end A079705

/-! ## A079705.P15494822084905352753

`3*Δ[A007504(n)]²`
-/

namespace A079705.P15494822084905352753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n) ^ 2

end

end A079705.P15494822084905352753

namespace A079705

/-- `3*Δ[A007504(n)]²` -/
def P15494822084905352753.Spec : Prop :=
  ∀ n, P15494822084905352753.a n = A079705 (n + 1)

end A079705

/-! ## A079705.P12021971759532516009

`3*Δ[A008348(n)]²`
-/

namespace A079705.P12021971759532516009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n) ^ 2

end

end A079705.P12021971759532516009

namespace A079705

/-- `3*Δ[A008348(n)]²` -/
def P12021971759532516009.Spec : Prop :=
  ∀ n, P12021971759532516009.a n = A079705 (n + 1)

end A079705

/-! ## A079705.P515174313050919950

`3*Δ[A022837(n)]²`
-/

namespace A079705.P515174313050919950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n) ^ 2

end

end A079705.P515174313050919950

namespace A079705

/-- `3*Δ[A022837(n)]²` -/
def P515174313050919950.Spec : Prop :=
  ∀ n, P515174313050919950.a n = A079705 (n + 1)

end A079705

/-! ## A079705.P16743917560155817304

`3*Δ[A064365(n)]²`
-/

namespace A079705.P16743917560155817304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n) ^ 2

end

end A079705.P16743917560155817304

namespace A079705

/-- `3*Δ[A064365(n)]²` -/
def P16743917560155817304.Spec : Prop :=
  ∀ n, P16743917560155817304.a n = A079705 (n + 1)

end A079705

/-! ## A079705.P4054154003320247761

`3*Δ[A309222(n)]²`
-/

namespace A079705.P4054154003320247761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n) ^ 2

end

end A079705.P4054154003320247761

namespace A079705

/-- `3*Δ[A309222(n)]²` -/
def P4054154003320247761.Spec : Prop :=
  ∀ n, P4054154003320247761.a n = A079705 (n + 1)

end A079705

/-! ## A079705.P899329399561890164

`A001748(n+1)²/3`
-/

namespace A079705.P899329399561890164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) ^ 2 : ℚ) / 3

end

end A079705.P899329399561890164

namespace A079705

/-- `A001748(n+1)²/3` -/
def P899329399561890164.Spec : Prop :=
  ∀ n, P899329399561890164.a n = (A079705 (n + 1) : ℚ)

theorem P899329399561890164.correct : P899329399561890164.Spec := by
  intro n
  simp only [A079705, Nat.add_sub_cancel, A079705.P899329399561890164.a, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, A001748, A001748.P16019639290970068825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079705

/-! ## A079705.P10598504914455366469

`3*sqrt(A030514(n+1))`
-/

namespace A079705.P10598504914455366469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A030514 (n + 1) : ℝ)

end

end A079705.P10598504914455366469

namespace A079705

/-- `3*sqrt(A030514(n+1))` -/
def P10598504914455366469.Spec : Prop :=
  ∀ n, P10598504914455366469.a n = (A079705 (n + 1) : ℝ)

end A079705

/-! ## A079705.P3297919576333058464

`3*(A084920(n+1)+1)`
-/

namespace A079705.P3297919576333058464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A084920 (n + 1) + 1)

end

end A079705.P3297919576333058464

namespace A079705

/-- `3*(A084920(n+1)+1)` -/
def P3297919576333058464.Spec : Prop :=
  ∀ n, P3297919576333058464.a n = A079705 (n + 1)

theorem P3297919576333058464.correct : P3297919576333058464.Spec := by
  intro n
  simp only [A079705, Nat.add_sub_cancel, A079705.P3297919576333058464.a, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, A084920, A084920.P13392903182497119137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079705

/-! ## A079705.P15335774606841080622

`3*(A049001(n+1)+2)`
-/

namespace A079705.P15335774606841080622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A049001 (n + 1) + 2)

end

end A079705.P15335774606841080622

namespace A079705

/-- `3*(A049001(n+1)+2)` -/
def P15335774606841080622.Spec : Prop :=
  ∀ n, P15335774606841080622.a n = A079705 (n + 1)

theorem P15335774606841080622.correct : P15335774606841080622.Spec := by
  intro n
  simp only [A079705, Nat.add_sub_cancel, A079705.P15335774606841080622.a, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, A049001, A049001.P8777299766092042792.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079705

/-! ## A079705.P57112113517562399

`3*(A066872(n+1)-1)`
-/

namespace A079705.P57112113517562399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A066872 (n + 1) - 1)

end

end A079705.P57112113517562399

namespace A079705

/-- `3*(A066872(n+1)-1)` -/
def P57112113517562399.Spec : Prop :=
  ∀ n, P57112113517562399.a n = A079705 (n + 1)

theorem P57112113517562399.correct : P57112113517562399.Spec := by
  intro n
  simp only [A079705, Nat.add_sub_cancel, A079705.P57112113517562399.a, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, A066872, A066872.P16166098773502812344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079705

/-! ## A079705.P14794137460955280307

`3*(A061725(n+1)-2)`
-/

namespace A079705.P14794137460955280307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A061725 (n + 1) - 2)

end

end A079705.P14794137460955280307

namespace A079705

/-- `3*(A061725(n+1)-2)` -/
def P14794137460955280307.Spec : Prop :=
  ∀ n, P14794137460955280307.a n = A079705 (n + 1)

theorem P14794137460955280307.correct : P14794137460955280307.Spec := by
  intro n
  simp only [A079705, Nat.add_sub_cancel, A079705.P14794137460955280307.a, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, A061725, A061725.P7248628641150990420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079705

/-! ## A079705.P17602814088202679285

`3*(A182200(n+1)+3)`
-/

namespace A079705.P17602814088202679285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A182200 (n + 1) + 3)

end

end A079705.P17602814088202679285

namespace A079705

/-- `3*(A182200(n+1)+3)` -/
def P17602814088202679285.Spec : Prop :=
  ∀ n, P17602814088202679285.a n = A079705 (n + 1)

theorem P17602814088202679285.correct : P17602814088202679285.Spec := by
  intro n
  simp only [A079705, Nat.add_sub_cancel, A079705.P17602814088202679285.a, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, A182200, A182200.P11759421930425352337.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079705

/-! ## A079705.P12083833857290411056

`3*(A166010(n+1)+4)`
-/

namespace A079705.P12083833857290411056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A166010 (n + 1) + 4)

end

end A079705.P12083833857290411056

namespace A079705

/-- `3*(A166010(n+1)+4)` -/
def P12083833857290411056.Spec : Prop :=
  ∀ n, P12083833857290411056.a n = A079705 (n + 1)

theorem P12083833857290411056.correct : P12083833857290411056.Spec := by
  intro n
  simp only [A079705, Nat.add_sub_cancel, A079705.P12083833857290411056.a, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, A166010, A166010.P2375559703123786713.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079705

/-! ## A079705.P639565925569028476

`3/2*A079704(n+1)`
-/

namespace A079705.P639565925569028476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A079704 (n + 1) : ℚ)

end

end A079705.P639565925569028476

namespace A079705

/-- `3/2*A079704(n+1)` -/
def P639565925569028476.Spec : Prop :=
  ∀ n, P639565925569028476.a n = (A079705 (n + 1) : ℚ)

theorem P639565925569028476.correct : P639565925569028476.Spec := by
  intro n
  simp only [A079705, Nat.add_sub_cancel, A079705.P639565925569028476.a, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, A079704, A079704.P2518524558801344655.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079705

/-! ## A079705.P853037789007068008

`3*(A287922(n+1)-4)`
-/

namespace A079705.P853037789007068008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A287922 (n + 1) - 4)

end

end A079705.P853037789007068008

namespace A079705

/-- `3*(A287922(n+1)-4)` -/
def P853037789007068008.Spec : Prop :=
  ∀ n, P853037789007068008.a n = A079705 (n + 1)

end A079705

/-! ## A079705.P4692179359925915385

`3/4*A069262(n+1)`
-/

namespace A079705.P4692179359925915385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A069262 (n + 1) : ℚ)

end

end A079705.P4692179359925915385

namespace A079705

/-- `3/4*A069262(n+1)` -/
def P4692179359925915385.Spec : Prop :=
  ∀ n, P4692179359925915385.a n = (A079705 (n + 1) : ℚ)

theorem P4692179359925915385.correct : P4692179359925915385.Spec := by
  intro n
  simp only [A079705, Nat.add_sub_cancel, A079705.P4692179359925915385.a, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, A069262, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079705

/-!
# A079706: Smallest positive exponent k such that (2n)^k+1 is prime, or -1 if no such k exists.

The programs for A079706, there is no canonical definition to state claims against.
-/

/-! ## A079706.P3804373620997294564

`A223175(n+9)-1`
-/

namespace A079706.P3804373620997294564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223175 (n + 9) - 1

end

end A079706.P3804373620997294564

/-! ## A079706.P3041902622483164139

`A228101(n+1)+A043568(n)`
-/

namespace A079706.P3041902622483164139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228101 (n + 1) + A043568 n

end

end A079706.P3041902622483164139

/-! ## A079706.P6639454319565194274

`A228101(n+1)+A127836(n)`
-/

namespace A079706.P6639454319565194274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228101 (n + 1) + A127836 n

end

end A079706.P6639454319565194274

/-! ## A079706.P6978328222515770184

`A228101(n+1)+A152831(n)`
-/

namespace A079706.P6978328222515770184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228101 (n + 1) + A152831 n

end

end A079706.P6978328222515770184

/-! ## A079706.P13527550785908240871

`A274196(n)+A228101(n+1)`
-/

namespace A079706.P13527550785908240871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274196 n + A228101 (n + 1)

end

end A079706.P13527550785908240871

/-!
# A079707: In prime factorization of n replace odd primes with their prime predecessor.

The programs for A079707, the canonical program `A079707.P8280813146422153536` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079707 has offset 1).

The definition of A079707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079707.P3551321320437185909

`2^val(n+1, 2)*A064989(n+1)`
-/

namespace A079707.P3551321320437185909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A064989 (n + 1)

end

end A079707.P3551321320437185909

namespace A079707

/-- `2^val(n+1, 2)*A064989(n+1)` -/
def P3551321320437185909.Spec : Prop :=
  ∀ n, P3551321320437185909.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P4641510576126217473

`abs(2^val(n+1, 2)*A290099(n+1))`
-/

namespace A079707.P4641510576126217473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A290099 (n + 1)|

end

end A079707.P4641510576126217473

namespace A079707

/-- `abs(2^val(n+1, 2)*A290099(n+1))` -/
def P4641510576126217473.Spec : Prop :=
  ∀ n, P4641510576126217473.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P15780846745441401035

`2^val(n+1, 2)*∑{d}[n+1, A349127(#)]`
-/

namespace A079707.P15780846745441401035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A349127 d)

end

end A079707.P15780846745441401035

namespace A079707

/-- `2^val(n+1, 2)*∑{d}[n+1, A349127(#)]` -/
def P15780846745441401035.Spec : Prop :=
  ∀ n, P15780846745441401035.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P4933236430496139261

`A200746(n+1)/(n+1)*2^val(n+1, 2)`
-/

namespace A079707.P4933236430496139261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200746 (n + 1) : ℚ) / (n + 1 : ℚ) * (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A079707.P4933236430496139261

namespace A079707

/-- `A200746(n+1)/(n+1)*2^val(n+1, 2)` -/
def P4933236430496139261.Spec : Prop :=
  ∀ n, P4933236430496139261.a n = (A079707 (n + 1) : ℚ)

end A079707

/-! ## A079707.P3407792068490409725

`2^val(n+1, 2)*A252463((n+1)/2^val(n+1, 2))`
-/

namespace A079707.P3407792068490409725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A079707.P3407792068490409725

namespace A079707

/-- `2^val(n+1, 2)*A252463((n+1)/2^val(n+1, 2))` -/
def P3407792068490409725.Spec : Prop :=
  ∀ n, P3407792068490409725.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P3683275487772347019

`2^val(n+1, 2)*A064216(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A079707.P3683275487772347019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A064216 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A079707.P3683275487772347019

namespace A079707

/-- `2^val(n+1, 2)*A064216(floor(n/(xor(n, n+1)+1))+1)` -/
def P3683275487772347019.Spec : Prop :=
  ∀ n, P3683275487772347019.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P4807589637886649932

`and(n+1, -(n+1))*A252463((n+1)/and(n+1, -(n+1)))`
-/

namespace A079707.P4807589637886649932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A079707.P4807589637886649932

namespace A079707

/-- `and(n+1, -(n+1))*A252463((n+1)/and(n+1, -(n+1)))` -/
def P4807589637886649932.Spec : Prop :=
  ∀ n, P4807589637886649932.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P8280813146422153536

`A006519(n+1)*A064989(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A079707

/-- `A006519(n+1)*A064989(n+1)` -/
def P8280813146422153536.Spec : Prop :=
  ∀ n, P8280813146422153536.a n = A079707 (n + 1)

theorem P8280813146422153536.correct : P8280813146422153536.Spec := by
  intro n
  simp only [A079707, Nat.add_sub_cancel]

end A079707

/-! ## A079707.P173123330051457150

`(A135481(n)+1)*A064989(n+1)`
-/

namespace A079707.P173123330051457150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135481 n + 1) * A064989 (n + 1)

end

end A079707.P173123330051457150

namespace A079707

/-- `(A135481(n)+1)*A064989(n+1)` -/
def P173123330051457150.Spec : Prop :=
  ∀ n, P173123330051457150.a n = A079707 (n + 1)

theorem P173123330051457150.correct : P173123330051457150.Spec := by
  intro n
  simp only [A079707, Nat.add_sub_cancel, A079707.P173123330051457150.a, A079707.P8280813146422153536.a, A006519, A006519.P10435570611646570274.a, A064989, A064989.P13349672914146769936.a, A135481, A135481.P9711204985532032738.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A171977, A171977.P14092944863121073856.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A038712, A038712.P3404197303190209645.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079707

/-! ## A079707.P9664630717116691577

`A200746(n+1)/A000265(n+1)`
-/

namespace A079707.P9664630717116691577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200746 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A079707.P9664630717116691577

namespace A079707

/-- `A200746(n+1)/A000265(n+1)` -/
def P9664630717116691577.Spec : Prop :=
  ∀ n, P9664630717116691577.a n = (A079707 (n + 1) : ℚ)

end A079707

/-! ## A079707.P13319371866085783437

`A000010(xor(n, n+1)+1)*A064989(n+1)`
-/

namespace A079707.P13319371866085783437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.xor n (n + 1) + 1) * A064989 (n + 1)

end

end A079707.P13319371866085783437

namespace A079707

/-- `A000010(xor(n, n+1)+1)*A064989(n+1)` -/
def P13319371866085783437.Spec : Prop :=
  ∀ n, P13319371866085783437.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P3047270191552128095

`∑{d}[n+1, A006519(#)*A349127((n+1)/#)]`
-/

namespace A079707.P3047270191552128095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006519 d * A349127 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A079707.P3047270191552128095

namespace A079707

/-- `∑{d}[n+1, A006519(#)*A349127((n+1)/#)]` -/
def P3047270191552128095.Spec : Prop :=
  ∀ n, P3047270191552128095.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P18198456894747432175

`∑{d}[n+1, A067856(#)*A326041((n+1)/#)]`
-/

namespace A079707.P18198456894747432175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A326041 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A079707.P18198456894747432175

namespace A079707

/-- `∑{d}[n+1, A067856(#)*A326041((n+1)/#)]` -/
def P18198456894747432175.Spec : Prop :=
  ∀ n, P18198456894747432175.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P6473306220980600814

`∑{d}[n+1, A160467(#)*A349128((n+1)/#)]`
-/

namespace A079707.P6473306220980600814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160467 d * A349128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A079707.P6473306220980600814

namespace A079707

/-- `∑{d}[n+1, A160467(#)*A349128((n+1)/#)]` -/
def P6473306220980600814.Spec : Prop :=
  ∀ n, P6473306220980600814.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P2984937837188782585

`A000079(A007814(n+1))*A064989(n+1)`
-/

namespace A079707.P2984937837188782585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A064989 (n + 1)

end

end A079707.P2984937837188782585

namespace A079707

/-- `A000079(A007814(n+1))*A064989(n+1)` -/
def P2984937837188782585.Spec : Prop :=
  ∀ n, P2984937837188782585.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P5608569194794968290

`A064989(n+1)/A003961(n+1)*A283980(n+1)`
-/

namespace A079707.P5608569194794968290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A283980 (n + 1) : ℚ)

end

end A079707.P5608569194794968290

namespace A079707

/-- `A064989(n+1)/A003961(n+1)*A283980(n+1)` -/
def P5608569194794968290.Spec : Prop :=
  ∀ n, P5608569194794968290.a n = (A079707 (n + 1) : ℚ)

end A079707

/-! ## A079707.P18092611328374906933

`(A000010(n+1)-A353748(n+1))*A000010(xor(n, n+1)+1)`
-/

namespace A079707.P18092611328374906933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A353748 (n + 1)) * A000010 (Nat.xor n (n + 1) + 1)

end

end A079707.P18092611328374906933

namespace A079707

/-- `(A000010(n+1)-A353748(n+1))*A000010(xor(n, n+1)+1)` -/
def P18092611328374906933.Spec : Prop :=
  ∀ n, P18092611328374906933.a n = A079707 (n + 1)

end A079707

/-! ## A079707.P2808606147501681163

`A061142(n+1)*A064989(n+1)/A061142(A064989(n+1))`
-/

namespace A079707.P2808606147501681163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) * A064989 (n + 1) : ℚ) / (A061142 (A064989 (n + 1)).toNat : ℚ)

end

end A079707.P2808606147501681163

namespace A079707

/-- `A061142(n+1)*A064989(n+1)/A061142(A064989(n+1))` -/
def P2808606147501681163.Spec : Prop :=
  ∀ n, P2808606147501681163.a n = (A079707 (n + 1) : ℚ)

end A079707

/-! ## A079707.P64669619160118505

`A000027(n+1)/A000265(n+1)*A252463(A000265(n+1))`
-/

namespace A079707.P64669619160118505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ) * (A252463 (A000265 (n + 1)).toNat : ℚ)

end

end A079707.P64669619160118505

namespace A079707

/-- `A000027(n+1)/A000265(n+1)*A252463(A000265(n+1))` -/
def P64669619160118505.Spec : Prop :=
  ∀ n, P64669619160118505.a n = (A079707 (n + 1) : ℚ)

end A079707

/-!
# A079708: Metaprime binary to standard binary conversion series.

The programs for A079708, there is no canonical definition to state claims against.
-/

/-! ## A079708.P14870530267734969593

`A052330(a(n-1))` with `a(0)=0`
-/

namespace A079708.P14870530267734969593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052330 (a (n - 1)).toNat

end

end A079708.P14870530267734969593

/-! ## A079708.P2963009609869015362

`A207901(A006068(a(n-1)))` with `a(0)=0`
-/

namespace A079708.P2963009609869015362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A207901 (A006068 (a (n - 1)).toNat).toNat

end

end A079708.P2963009609869015362

/-! ## A079708.P15199039243484838801

`A302783(A003188(a(n-1)))` with `a(0)=0`
-/

namespace A079708.P15199039243484838801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A302783 (A003188 (a (n - 1)).toNat).toNat

end

end A079708.P15199039243484838801

/-! ## A079708.P14755575219017290374

`A302781(A302845(a(n-1)))` with `a(0)=0`
-/

namespace A079708.P14755575219017290374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A302781 (A302845 (a (n - 1)).toNat).toNat

end

end A079708.P14755575219017290374

/-! ## A079708.P13428830861547791998

`A303771(A303768(a(n-1)))` with `a(0)=0`
-/

namespace A079708.P13428830861547791998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A303771 (A303768 (a (n - 1)).toNat).toNat

end

end A079708.P13428830861547791998

/-!
# A079709: Numbers m such that the squarefree kernel of m is less than the squarefree kernel of m+1.

The programs for A079709, the canonical program `A079709.P2222228738765453636` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079709 has offset 1).

The definition of A079709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079709.P3795613801851701914

`lt[A007947(n+1), A007947(n+2)]+1`
-/

namespace A079709.P3795613801851701914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079709.P3795613801851701914

namespace A079709

/-- `lt[A007947(n+1), A007947(n+2)]+1` -/
def P3795613801851701914.Spec : Prop :=
  ∀ n, (P3795613801851701914.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P6556026965778231245

`eq[1, A079229(n+1)]+1`
-/

namespace A079709.P6556026965778231245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079709.P6556026965778231245

namespace A079709

/-- `eq[1, A079229(n+1)]+1` -/
def P6556026965778231245.Spec : Prop :=
  ∀ n, (P6556026965778231245.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P13954172399893025582

`eq[n+1, A079228(A028310(n))]`
-/

namespace A079709.P13954172399893025582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079709.P13954172399893025582

namespace A079709

/-- `eq[n+1, A079228(A028310(n))]` -/
def P13954172399893025582.Spec : Prop :=
  ∀ n, (P13954172399893025582.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P11224430865712851817

`lt[A007947(A028310(n)), A007947(n+1)]`
-/

namespace A079709.P11224430865712851817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079709.P11224430865712851817

namespace A079709

/-- `lt[A007947(A028310(n)), A007947(n+1)]` -/
def P11224430865712851817.Spec : Prop :=
  ∀ n, (P11224430865712851817.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P8085030223122909768

`lt[A007947(A004277(n)-n), A007947(n+1)]`
-/

namespace A079709.P8085030223122909768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079709.P8085030223122909768

namespace A079709

/-- `lt[A007947(A004277(n)-n), A007947(n+1)]` -/
def P8085030223122909768.Spec : Prop :=
  ∀ n, (P8085030223122909768.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P2222228738765453636

`lt[0, Δ[∏{p}[n, #]]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079709

/-- `lt[0, Δ[∏{p}[n, #]]]` -/
def P2222228738765453636.Spec : Prop :=
  ∀ n, (P2222228738765453636.a n : ℤ) = A079709 (n + 1)

theorem P2222228738765453636.correct : P2222228738765453636.Spec := by
  intro n
  simp only [A079709, Nat.add_sub_cancel]

end A079709

/-! ## A079709.P8768852192563333125

`lt[1, ratio[∏{p}[n, #]]]`
-/

namespace A079709.P8768852192563333125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A079709.P8768852192563333125

namespace A079709

/-- `lt[1, ratio[∏{p}[n, #]]]` -/
def P8768852192563333125.Spec : Prop :=
  ∀ n, (P8768852192563333125.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P15499605242632379927

`lt[∏{p}[n, #], ∏{p}[n+1, #]]`
-/

namespace A079709.P15499605242632379927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A079709.P15499605242632379927

namespace A079709

/-- `lt[∏{p}[n, #], ∏{p}[n+1, #]]` -/
def P15499605242632379927.Spec : Prop :=
  ∀ n, (P15499605242632379927.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P7919952659450602247

`lt[A073353(n+1), A073353(n+2)]+1`
-/

namespace A079709.P7919952659450602247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079709.P7919952659450602247

namespace A079709

/-- `lt[A073353(n+1), A073353(n+2)]+1` -/
def P7919952659450602247.Spec : Prop :=
  ∀ n, (P7919952659450602247.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P17180810095619415451

`lt[A076618(n+1), A076618(n+2)]+1`
-/

namespace A079709.P17180810095619415451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079709.P17180810095619415451

namespace A079709

/-- `lt[A076618(n+1), A076618(n+2)]+1` -/
def P17180810095619415451.Spec : Prop :=
  ∀ n, (P17180810095619415451.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P9083528932380486839

`lt[A078310(n+1), A078310(n+2)]+1`
-/

namespace A079709.P9083528932380486839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079709.P9083528932380486839

namespace A079709

/-- `lt[A078310(n+1), A078310(n+2)]+1` -/
def P9083528932380486839.Spec : Prop :=
  ∀ n, (P9083528932380486839.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P18154370163552406707

`lt[A078615(n+1), A078615(n+2)]+1`
-/

namespace A079709.P18154370163552406707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079709.P18154370163552406707

namespace A079709

/-- `lt[A078615(n+1), A078615(n+2)]+1` -/
def P18154370163552406707.Spec : Prop :=
  ∀ n, (P18154370163552406707.a n : ℤ) = A079709 (n + 1)

end A079709

/-! ## A079709.P148474243113641734

`lt[A078615(A028310(n)), A078615(n+1)]`
-/

namespace A079709.P148474243113641734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079709.P148474243113641734

namespace A079709

/-- `lt[A078615(A028310(n)), A078615(n+1)]` -/
def P148474243113641734.Spec : Prop :=
  ∀ n, (P148474243113641734.a n : ℤ) = A079709 (n + 1)

end A079709

/-!
# A079710: Numbers m such that the squarefree kernel of m is larger than the squarefree kernel of m+1.

The programs for A079710, the canonical program `A079710.P15499769612078816365` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079710 has offset 1).

The definition of A079710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079710.P512362041708736179

`lt[A007947(n+2), A007947(n+1)]+1`
-/

namespace A079710.P512362041708736179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079710.P512362041708736179

namespace A079710

/-- `lt[A007947(n+2), A007947(n+1)]+1` -/
def P512362041708736179.Spec : Prop :=
  ∀ n, (P512362041708736179.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P15499769612078816365

`lt[A336551(n+1), A336551(n+2)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079710

/-- `lt[A336551(n+1), A336551(n+2)]+1` -/
def P15499769612078816365.Spec : Prop :=
  ∀ n, (P15499769612078816365.a n : ℤ) = A079710 (n + 1)

theorem P15499769612078816365.correct : P15499769612078816365.Spec := by
  intro n
  simp only [A079710, Nat.add_sub_cancel]

end A079710

/-! ## A079710.P18011185611249052411

`lt[∏{p}[n+1, #], ∏{p}[n, #]]`
-/

namespace A079710.P18011185611249052411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A079710.P18011185611249052411

namespace A079710

/-- `lt[∏{p}[n+1, #], ∏{p}[n, #]]` -/
def P18011185611249052411.Spec : Prop :=
  ∀ n, (P18011185611249052411.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P15077683923766323134

`lt[Δ[A007947(n+1)], 1]+1`
-/

namespace A079710.P15077683923766323134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A079710.P15077683923766323134

namespace A079710

/-- `lt[Δ[A007947(n+1)], 1]+1` -/
def P15077683923766323134.Spec : Prop :=
  ∀ n, (P15077683923766323134.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P14022055284669930082

`lt[A003557(n+1), A003557(n+2)]+1`
-/

namespace A079710.P14022055284669930082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079710.P14022055284669930082

namespace A079710

/-- `lt[A003557(n+1), A003557(n+2)]+1` -/
def P14022055284669930082.Spec : Prop :=
  ∀ n, (P14022055284669930082.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P11500087930471552171

`lt[A076618(n+2), A076618(n+1)]+1`
-/

namespace A079710.P11500087930471552171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079710.P11500087930471552171

namespace A079710

/-- `lt[A076618(n+2), A076618(n+1)]+1` -/
def P11500087930471552171.Spec : Prop :=
  ∀ n, (P11500087930471552171.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P17575912247957724991

`lt[A078310(n+2), A078310(n+1)]+1`
-/

namespace A079710.P17575912247957724991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079710.P17575912247957724991

namespace A079710

/-- `lt[A078310(n+2), A078310(n+1)]+1` -/
def P17575912247957724991.Spec : Prop :=
  ∀ n, (P17575912247957724991.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P5236878973180320849

`lt[A078615(n+2), A078615(n+1)]+1`
-/

namespace A079710.P5236878973180320849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079710.P5236878973180320849

namespace A079710

/-- `lt[A078615(n+2), A078615(n+1)]+1` -/
def P5236878973180320849.Spec : Prop :=
  ∀ n, (P5236878973180320849.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P3548494322738398981

`lt[A003557(A028310(n)), A003557(n+1)]`
-/

namespace A079710.P3548494322738398981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079710.P3548494322738398981

namespace A079710

/-- `lt[A003557(A028310(n)), A003557(n+1)]` -/
def P3548494322738398981.Spec : Prop :=
  ∀ n, (P3548494322738398981.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P15051694184693089194

`lt[A007947(n+1), A007947(A028310(n))]`
-/

namespace A079710.P15051694184693089194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079710.P15051694184693089194

namespace A079710

/-- `lt[A007947(n+1), A007947(A028310(n))]` -/
def P15051694184693089194.Spec : Prop :=
  ∀ n, (P15051694184693089194.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P1987170622072627659

`lt[A078615(n+1), A078615(A028310(n))]`
-/

namespace A079710.P1987170622072627659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079710.P1987170622072627659

namespace A079710

/-- `lt[A078615(n+1), A078615(A028310(n))]` -/
def P1987170622072627659.Spec : Prop :=
  ∀ n, (P1987170622072627659.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P14373350667672776472

`lt[A336551(A028310(n)), A336551(n+1)]`
-/

namespace A079710.P14373350667672776472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079710.P14373350667672776472

namespace A079710

/-- `lt[A336551(A028310(n)), A336551(n+1)]` -/
def P14373350667672776472.Spec : Prop :=
  ∀ n, (P14373350667672776472.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P2453712935419248590

`lt[A007947(n+1), A007947(A004277(n)-n)]`
-/

namespace A079710.P2453712935419248590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079710.P2453712935419248590

namespace A079710

/-- `lt[A007947(n+1), A007947(A004277(n)-n)]` -/
def P2453712935419248590.Spec : Prop :=
  ∀ n, (P2453712935419248590.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P18144623301440050090

`lt[Δ[∏{p}[n, #]], 0]`
-/

namespace A079710.P18144623301440050090
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A079710.P18144623301440050090

namespace A079710

/-- `lt[Δ[∏{p}[n, #]], 0]` -/
def P18144623301440050090.Spec : Prop :=
  ∀ n, (P18144623301440050090.a n : ℤ) = A079710 (n + 1)

end A079710

/-! ## A079710.P11921412744685111354

`lt[ratio[∏{p}[n, #]], 1]`
-/

namespace A079710.P11921412744685111354
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n

end

end A079710.P11921412744685111354

namespace A079710

/-- `lt[ratio[∏{p}[n, #]], 1]` -/
def P11921412744685111354.Spec : Prop :=
  ∀ n, (P11921412744685111354.a n : ℤ) = A079710 (n + 1)

end A079710

/-!
# A079711: 

The programs for A079711, there is no canonical definition to state claims against.
-/

/-! ## A079711.P4847143477894847313

`(C(2*(n+1), n+1)^(n+1))²`
-/

namespace A079711.P4847143477894847313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) (n + 1) ^ (n + 1)) ^ 2

end

end A079711.P4847143477894847313

/-! ## A079711.P7168955643965824338

`C(2*(n+1), n+1)^(2*(n+1))`
-/

namespace A079711.P7168955643965824338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) (n + 1) ^ (2 * (n + 1))

end

end A079711.P7168955643965824338

/-! ## A079711.P361435481602841969

`A224733(n+1)²`
-/

namespace A079711.P361435481602841969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224733 (n + 1) ^ 2

end

end A079711.P361435481602841969

/-! ## A079711.P4496069769337539111

`A002894(n+1)^(n+1)`
-/

namespace A079711.P4496069769337539111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 (n + 1) ^ (n + 1)

end

end A079711.P4496069769337539111

/-! ## A079711.P3402451604746774306

`(A001405(2*n+2)^(n+1))²`
-/

namespace A079711.P3402451604746774306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n + 2) ^ (n + 1)) ^ 2

end

end A079711.P3402451604746774306

/-!
# A079712: Numbers m such that bigomega(m) = 3*omega(m).

The programs for A079712, the canonical program `A079712.P13189981493174881981` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079712 has offset 1).

The definition of A079712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079712.P13189981493174881981

`eq[A001222(n+1)/3, A001221(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A079712

/-- `eq[A001222(n+1)/3, A001221(n+1)]+1` -/
def P13189981493174881981.Spec : Prop :=
  ∀ n, (P13189981493174881981.a n : ℤ) = A079712 (n + 1)

theorem P13189981493174881981.correct : P13189981493174881981.Spec := by
  intro n
  simp only [A079712, Nat.add_sub_cancel]

end A079712

/-! ## A079712.P9645003252653263307

`eq[A034444(n+1)², A162510(n+1)]+1`
-/

namespace A079712.P9645003252653263307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A079712.P9645003252653263307

namespace A079712

/-- `eq[A034444(n+1)², A162510(n+1)]+1` -/
def P9645003252653263307.Spec : Prop :=
  ∀ n, (P9645003252653263307.a n : ℤ) = A079712 (n + 1)

end A079712

/-! ## A079712.P7512238465400728326

`eq[A046660(n+1)/2, A001221(n+1)]+1`
-/

namespace A079712.P7512238465400728326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046660 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A079712.P7512238465400728326

namespace A079712

/-- `eq[A046660(n+1)/2, A001221(n+1)]+1` -/
def P7512238465400728326.Spec : Prop :=
  ∀ n, (P7512238465400728326.a n : ℤ) = A079712 (n + 1)

end A079712

/-!
# A079714: Number of 2's in n!.

The programs for A079714, there is no canonical definition to state claims against.
-/

/-! ## A079714.P12282980187880636787

`A034886(n)-(A027869(n)+A079680(n)+A079684(n)+A079688(n)+A079690(n)+A079691(n)+A079692(n)+A079693(n)+A079694(n))`
-/

namespace A079714.P12282980187880636787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A027869 n + A079680 n + A079684 n + A079688 n + A079690 n + A079691 n + A079692 n + A079693 n + A079694 n)

end

end A079714.P12282980187880636787

/-! ## A079714.P1193882956344511736

`∑{digits}[n!, val(#+n, n+2)]`
-/

namespace A079714.P1193882956344511736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + n) (n + 2)).sum

end

end A079714.P1193882956344511736

/-! ## A079714.P12193769174659891734

`∑{digits}[A000142(n), A251765(#)]`
-/

namespace A079714.P12193769174659891734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A251765 x).sum

end

end A079714.P12193769174659891734

/-! ## A079714.P14197409798254163609

`∑{digits}[A000142(n), A269248(#)]`
-/

namespace A079714.P14197409798254163609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A269248 x).sum

end

end A079714.P14197409798254163609

/-! ## A079714.P4953311589228765877

`∑{digits}[A000142(n), A316863(#)]`
-/

namespace A079714.P4953311589228765877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316863 x).sum

end

end A079714.P4953311589228765877

/-! ## A079714.P719376531793370492

`∑{digits}[A000142(n), A316864(#+1)]`
-/

namespace A079714.P719376531793370492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316864 (x + 1)).sum

end

end A079714.P719376531793370492

/-! ## A079714.P5921969673042478093

`∑{digits}[A000142(n), A261084(#+2)]`
-/

namespace A079714.P5921969673042478093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A261084 (x + 2)).sum

end

end A079714.P5921969673042478093

/-! ## A079714.P17328339541887314302

`∑{digits}[A000142(n), A316865(#+2)]`
-/

namespace A079714.P17328339541887314302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316865 (x + 2)).sum

end

end A079714.P17328339541887314302

/-!
# A079715: a(n) = pi(n) - pi(sqrt(n)) + 1.

The programs for A079715, the canonical program `A079715.P16991803801828527791` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079715 has offset 1).

The definition of A079715 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056812, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079715.P16991803801828527791

`A056812(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079715

/-- `A056812(n+1)+1` -/
def P16991803801828527791.Spec : Prop :=
  ∀ n, P16991803801828527791.a n = A079715 (n + 1)

theorem P16991803801828527791.correct : P16991803801828527791.Spec := by
  intro n
  simp only [A079715, Nat.add_sub_cancel]

end A079715

/-! ## A079715.P14227886404846597816

`A000720(n+1)-A056811(n+1)+1`
-/

namespace A079715.P14227886404846597816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A056811 (n + 1) + 1

end

end A079715.P14227886404846597816

namespace A079715

/-- `A000720(n+1)-A056811(n+1)+1` -/
def P14227886404846597816.Spec : Prop :=
  ∀ n, P14227886404846597816.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P12276330987996967027

`A080339(n+1)+A078342(n+1)`
-/

namespace A079715.P12276330987996967027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + A078342 (n + 1)

end

end A079715.P12276330987996967027

namespace A079715

/-- `A080339(n+1)+A078342(n+1)` -/
def P12276330987996967027.Spec : Prop :=
  ∀ n, P12276330987996967027.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P6344261289772885574

`A036234(n+1)-A056811(n+1)`
-/

namespace A079715.P6344261289772885574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A056811 (n + 1)

end

end A079715.P6344261289772885574

namespace A079715

/-- `A036234(n+1)-A056811(n+1)` -/
def P6344261289772885574.Spec : Prop :=
  ∀ n, P6344261289772885574.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P6848885379417779152

`A078342(n+1)+1-A066247(n+1)`
-/

namespace A079715.P6848885379417779152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078342 (n + 1) + (1 - A066247 (n + 1))

end

end A079715.P6848885379417779152

namespace A079715

/-- `A078342(n+1)+1-A066247(n+1)` -/
def P6848885379417779152.Spec : Prop :=
  ∀ n, P6848885379417779152.a n = A079715 (n + 1)

theorem P6848885379417779152.correct : P6848885379417779152.Spec := by
  intro n
  simp only [A079715, Nat.add_sub_cancel, A079715.P6848885379417779152.a, A079715.P16991803801828527791.a, A056812, A056812.P14896031248377744571.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, A078342, A078342.P16377039344616556995.f2, A078342.P16377039344616556995.f1, A078342.P16377039344616556995.a, A008578, A008578.P3639467937083264764.a, A056811, A056811.P3378557342044572151.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A079715

/-! ## A079715.P5704832035631360890

`A072613(n+1)+1-A243906(n+1)`
-/

namespace A079715.P5704832035631360890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (n + 1) + (1 - A243906 (n + 1))

end

end A079715.P5704832035631360890

namespace A079715

/-- `A072613(n+1)+1-A243906(n+1)` -/
def P5704832035631360890.Spec : Prop :=
  ∀ n, P5704832035631360890.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P10354302143265203564

`A000720(n+1)+1-A000720(A056813(n+1))`
-/

namespace A079715.P10354302143265203564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (1 - A000720 (A056813 (n + 1)).toNat)

end

end A079715.P10354302143265203564

namespace A079715

/-- `A000720(n+1)+1-A000720(A056813(n+1))` -/
def P10354302143265203564.Spec : Prop :=
  ∀ n, P10354302143265203564.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P4629774255433552917

`A056811(n+2)+A078342(n+2)-A056811(n+1)`
-/

namespace A079715.P4629774255433552917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (n + 2) + (A078342 (n + 2) - A056811 (n + 1))

end

end A079715.P4629774255433552917

namespace A079715

/-- `A056811(n+2)+A078342(n+2)-A056811(n+1)` -/
def P4629774255433552917.Spec : Prop :=
  ∀ n, P4629774255433552917.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P7948043704845786878

`∑[A359773(A002033(n))]`
-/

namespace A079715.P7948043704845786878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359773 (A002033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079715.P7948043704845786878

namespace A079715

/-- `∑[A359773(A002033(n))]` -/
def P7948043704845786878.Spec : Prop :=
  ∀ n, P7948043704845786878.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P693843709456008531

`∑[A015483(A000005(n+1)²)]+2`
-/

namespace A079715.P693843709456008531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015483 (A000005 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A079715.P693843709456008531

namespace A079715

/-- `∑[A015483(A000005(n+1)²)]+2` -/
def P693843709456008531.Spec : Prop :=
  ∀ n, P693843709456008531.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P2744011351326942368

`∑[A121373(A232055(∏{e}[n+1, #+1]))]`
-/

namespace A079715.P2744011351326942368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A232055 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079715.P2744011351326942368

namespace A079715

/-- `∑[A121373(A232055(∏{e}[n+1, #+1]))]` -/
def P2744011351326942368.Spec : Prop :=
  ∀ n, P2744011351326942368.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P15840541042677136337

`∑[A121373(A255126(∏{e}[n+1, #+1]))]`
-/

namespace A079715.P15840541042677136337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A255126 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079715.P15840541042677136337

namespace A079715

/-- `∑[A121373(A255126(∏{e}[n+1, #+1]))]` -/
def P15840541042677136337.Spec : Prop :=
  ∀ n, P15840541042677136337.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P5560188048233139806

`A000720(n+1)+1-A056169(A104588(n+1))`
-/

namespace A079715.P5560188048233139806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (1 - A056169 (A104588 (n + 1)).toNat)

end

end A079715.P5560188048233139806

namespace A079715

/-- `A000720(n+1)+1-A056169(A104588(n+1))` -/
def P5560188048233139806.Spec : Prop :=
  ∀ n, P5560188048233139806.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P13335304910817774305

`∑[A008683(A308944(∏{e}[n+1, #+1]))]`
-/

namespace A079715.P13335304910817774305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A308944 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079715.P13335304910817774305

namespace A079715

/-- `∑[A008683(A308944(∏{e}[n+1, #+1]))]` -/
def P13335304910817774305.Spec : Prop :=
  ∀ n, P13335304910817774305.a n = A079715 (n + 1)

end A079715

/-! ## A079715.P8315615421405600096

`∑[A121373(A283162(∏{e}[n+1, #+1]))]`
-/

namespace A079715.P8315615421405600096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A283162 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079715.P8315615421405600096

namespace A079715

/-- `∑[A121373(A283162(∏{e}[n+1, #+1]))]` -/
def P8315615421405600096.Spec : Prop :=
  ∀ n, P8315615421405600096.a n = A079715 (n + 1)

end A079715

/-!
# A079716: a(n) = 2*(F(1)^3+F(2)^3+F(3)^3+...+F(p)^3)/(F(1)+F(2)+F(3)+...+F(p)) where p is the n-th prime and F(k) denotes the k-th Fibonacci number.

The programs for A079716, the canonical program `A079716.P15519971653525730613` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079716 has offset 1).

The definition of A079716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079716.P15519971653525730613

`2*A005968(A000040(n+1))/A000071(A000040(n+1)+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079716

/-- `2*A005968(A000040(n+1))/A000071(A000040(n+1)+2)` -/
def P15519971653525730613.Spec : Prop :=
  ∀ n, P15519971653525730613.a n = (A079716 (n + 1) : ℚ)

end A079716

/-!
# A079717: Subminimal numbers, from minimal numbers by analogy with subfactorials.

The programs for A079717, there is no canonical definition to state claims against.
-/

/-! ## A079717.P14686075800560463625

`floor(A007416(n+1)/e+1/2)`
-/

namespace A079717.P14686075800560463625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007416 (n + 1) : ℝ) / Real.exp 1 + ((1 : ℚ) / 2 : ℝ)⌋

end

end A079717.P14686075800560463625

/-! ## A079717.P2729688579651747757

`round(A007416(n+1)/e)`
-/

namespace A079717.P2729688579651747757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007416 (n + 1) : ℝ) / Real.exp 1)

end

end A079717.P2729688579651747757

/-! ## A079717.P13108503673885777727

`round(A005179(A053212(n+1))/e)`
-/

namespace A079717.P13108503673885777727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005179 (A053212 (n + 1)).toNat : ℝ) / Real.exp 1)

end

end A079717.P13108503673885777727

/-! ## A079717.P4034161846342781820

`round(∑[A053213(A000007(n)+n)]/e)`
-/

namespace A079717.P4034161846342781820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053213 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) / Real.exp 1)

end

end A079717.P4034161846342781820

/-! ## A079717.P4125818360010212310

`round(∑[A053213(A132350((n+1)²)+n)]/e)`
-/

namespace A079717.P4125818360010212310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053213 (A132350 ((n + 1) ^ 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) / Real.exp 1)

end

end A079717.P4125818360010212310

/-!
# A079719: a(n) = n + floor(Sum_{k

The programs for A079719, the canonical program `A079719.P827166596602017947` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079719 has offset 0).

The definition of A079719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079719.P827166596602017947

`A005428(n+2)-2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079719

/-- `A005428(n+2)-2` -/
def P827166596602017947.Spec : Prop :=
  ∀ n, P827166596602017947.a n = A079719 n

theorem P827166596602017947.correct : P827166596602017947.Spec := by
  intro n
  simp only [A079719]

end A079719

/-! ## A079719.P16421877388423144615

`A073941(n+4)-2`
-/

namespace A079719.P16421877388423144615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 4) - 2

end

end A079719.P16421877388423144615

namespace A079719

/-- `A073941(n+4)-2` -/
def P16421877388423144615.Spec : Prop :=
  ∀ n, P16421877388423144615.a n = A079719 n

end A079719

/-! ## A079719.P6444208152370361021

`∑[A073941(n+4)%A005428(n+1)]`
-/

namespace A079719.P6444208152370361021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073941 (n + 4)) (A005428 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079719.P6444208152370361021

namespace A079719

/-- `∑[A073941(n+4)%A005428(n+1)]` -/
def P6444208152370361021.Spec : Prop :=
  ∀ n, P6444208152370361021.a n = A079719 n

end A079719

/-! ## A079719.P6830879442668416070

`Δ[floor(3*(a(n-1)+1)/2)]-2` with `a(0)=1`
-/

namespace A079719.P6830879442668416070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊3 * ((f1 (n - 1) + 1 : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A079719.P6830879442668416070

namespace A079719

/-- `Δ[floor(3*(a(n-1)+1)/2)]-2` -/
def P6830879442668416070.Spec : Prop :=
  ∀ n, P6830879442668416070.a n = A079719 n

end A079719

/-! ## A079719.P5750771241290559055

`Δ[floor(a(n-1)/2+a(n-1)+2)]-2` with `a(0)=0`
-/

namespace A079719.P5750771241290559055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) / 2 + (f1 (n - 1) + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A079719.P5750771241290559055

namespace A079719

/-- `Δ[floor(a(n-1)/2+a(n-1)+2)]-2` -/
def P5750771241290559055.Spec : Prop :=
  ∀ n, P5750771241290559055.a n = A079719 n

end A079719

/-! ## A079719.P6677635842877443699

`Δ[A006999(n+2)]-2`
-/

namespace A079719.P6677635842877443699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A079719.P6677635842877443699

namespace A079719

/-- `Δ[A006999(n+2)]-2` -/
def P6677635842877443699.Spec : Prop :=
  ∀ n, P6677635842877443699.a n = A079719 n

end A079719

/-! ## A079719.P13954919888461669489

`Δ[A003312(n+3)]-2`
-/

namespace A079719.P13954919888461669489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003312 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A079719.P13954919888461669489

namespace A079719

/-- `Δ[A003312(n+3)]-2` -/
def P13954919888461669489.Spec : Prop :=
  ∀ n, P13954919888461669489.a n = A079719 n

end A079719

/-! ## A079719.P1395151320313387245

`Δ[A061418(n+3)]-2`
-/

namespace A079719.P1395151320313387245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A079719.P1395151320313387245

namespace A079719

/-- `Δ[A061418(n+3)]-2` -/
def P1395151320313387245.Spec : Prop :=
  ∀ n, P1395151320313387245.a n = A079719 n

end A079719

/-! ## A079719.P5667115457159738117

`Δ[A061419(n+3)]-2`
-/

namespace A079719.P5667115457159738117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A079719.P5667115457159738117

namespace A079719

/-- `Δ[A061419(n+3)]-2` -/
def P5667115457159738117.Spec : Prop :=
  ∀ n, P5667115457159738117.a n = A079719 n

end A079719

/-! ## A079719.P12310310511403117101

`A006999(n+3)-A061418(n+3)`
-/

namespace A079719.P12310310511403117101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 (n + 3) - A061418 (n + 3)

end

end A079719.P12310310511403117101

namespace A079719

/-- `A006999(n+3)-A061418(n+3)` -/
def P12310310511403117101.Spec : Prop :=
  ∀ n, P12310310511403117101.a n = A079719 n

end A079719

/-! ## A079719.P16811684077984988018

`A061419(n+4)-A003312(n+3)`
-/

namespace A079719.P16811684077984988018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 4) - A003312 (n + 3)

end

end A079719.P16811684077984988018

namespace A079719

/-- `A061419(n+4)-A003312(n+3)` -/
def P16811684077984988018.Spec : Prop :=
  ∀ n, P16811684077984988018.a n = A079719 n

end A079719

/-!
# A079721: Interemirp sequence: average of emirp pairs, analogous to interprimes.

The programs for A079721, there is no canonical definition to state claims against.
-/

/-! ## A079721.P5801577081526807047

`(A006567(n+1)+A006567(n+2))/2`
-/

namespace A079721.P5801577081526807047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006567 (n + 1) + A006567 (n + 2) : ℚ) / 2

end

end A079721.P5801577081526807047

/-! ## A079721.P13946837163063251092

`A014682(A006567(n+1)+A006567(n+2))`
-/

namespace A079721.P13946837163063251092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A006567 (n + 1) + A006567 (n + 2)).toNat

end

end A079721.P13946837163063251092

/-! ## A079721.P4453017573273667065

`A325641(A006567(n+1)+A006567(n+2))`
-/

namespace A079721.P4453017573273667065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A006567 (n + 1) + A006567 (n + 2)).toNat

end

end A079721.P4453017573273667065

/-! ## A079721.P11478981378431501846

`A325642(A006567(n+1)+A006567(n+2))`
-/

namespace A079721.P11478981378431501846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325642 (A006567 (n + 1) + A006567 (n + 2)).toNat

end

end A079721.P11478981378431501846

/-! ## A079721.P885722986646486055

`A004525(A006567(n+2)+A006567(n+1))`
-/

namespace A079721.P885722986646486055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A006567 (n + 2) + A006567 (n + 1)).toNat

end

end A079721.P885722986646486055

/-! ## A079721.P15850370303414316622

`A006370(A006567(n+1)+A006567(n+2))`
-/

namespace A079721.P15850370303414316622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A006567 (n + 1) + A006567 (n + 2)).toNat

end

end A079721.P15850370303414316622

/-! ## A079721.P14960039870781027208

`A110654(A006567(n+1)+A006567(n+2))`
-/

namespace A079721.P14960039870781027208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A006567 (n + 1) + A006567 (n + 2)).toNat

end

end A079721.P14960039870781027208

/-! ## A079721.P11492722119787148275

`A123108(A006567(n+1)+A006567(n+2))`
-/

namespace A079721.P11492722119787148275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A006567 (n + 1) + A006567 (n + 2)).toNat

end

end A079721.P11492722119787148275

/-! ## A079721.P2784852853925757654

`A280498(A006567(n+1)+A006567(n+2))`
-/

namespace A079721.P2784852853925757654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A006567 (n + 1) + A006567 (n + 2)).toNat

end

end A079721.P2784852853925757654

/-!
# A079722: Triangle of numbers related to an approximation problem connected with Riemann hypothesis.

The programs for A079722, there is no canonical definition to state claims against.
-/

/-! ## A079722.P2979131212382108102

`or(A103452(n)², A277416(A059268(n)))`
-/

namespace A079722.P2979131212382108102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103452 n ^ 2) (A277416 (A059268 n).toNat)

end

end A079722.P2979131212382108102

/-! ## A079722.P2982815704385934021

`or(A145649(n+1), A277416(A059268(n)))`
-/

namespace A079722.P2982815704385934021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A145649 (n + 1)) (A277416 (A059268 n).toNat)

end

end A079722.P2982815704385934021

/-! ## A079722.P10295753631281169339

`A277416(A059268(n))+char[A000108(2*(n+1))]`
-/

namespace A079722.P10295753631281169339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277416 (A059268 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A079722.P10295753631281169339

/-! ## A079722.P5413090653940889791

`A277416(A059268(n))+A125203(A051340(n))`
-/

namespace A079722.P5413090653940889791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277416 (A059268 n).toNat + A125203 (A051340 n).toNat

end

end A079722.P5413090653940889791

/-! ## A079722.P13135061694848381356

`or(char[∑[n-1]], A308317(2^(n-C(∑[char[∑[n]]], 2))))`
-/

namespace A079722.P13135061694848381356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A308317 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat)

end

end A079722.P13135061694848381356

/-!
# A079724: Triangle of numerators of numbers related to an approximation problem connected with Riemann hypothesis.

The programs for A079724, there is no canonical definition to state claims against.
-/

/-! ## A079724.P10473866710193837687

`gcd(A029077(n), A278337(n+1))`
-/

namespace A079724.P10473866710193837687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029077 n) (A278337 (n + 1))

end

end A079724.P10473866710193837687

/-! ## A079724.P9086525015746216834

`gcd(A134444(n), A134454(A134470(3*n+4)))`
-/

namespace A079724.P9086525015746216834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134444 n) (A134454 (A134470 (3 * n + 4)).toNat)

end

end A079724.P9086525015746216834

/-! ## A079724.P1884979670721813122

`gcd(A269379(A279003(n+3)), A299765(2*(n+1)))`
-/

namespace A079724.P1884979670721813122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269379 (A279003 (n + 3)).toNat) (A299765 (2 * (n + 1)))

end

end A079724.P1884979670721813122

/-! ## A079724.P496629952927177581

`gcd(15, A366210(A307855(n)))`
-/

namespace A079724.P496629952927177581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 15 (A366210 (A307855 n).toNat)

end

end A079724.P496629952927177581

/-! ## A079724.P4399203858021431711

`A361338(A206396(2*(n+2))%A156920(n))`
-/

namespace A079724.P4399203858021431711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 (Int.tmod (A206396 (2 * (n + 2))) (A156920 n)).toNat

end

end A079724.P4399203858021431711

/-!
# A079725: Sum of composite numbers less than n-th prime.

The programs for A079725, the canonical program `A079725.P2348211076325242333` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079725 has offset 1).

The definition of A079725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079725.P2348211076325242333

`A045717(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079725

/-- `A045717(n+1)-1` -/
def P2348211076325242333.Spec : Prop :=
  ∀ n, P2348211076325242333.a n = A079725 (n + 1)

theorem P2348211076325242333.correct : P2348211076325242333.Spec := by
  intro n
  simp only [A079725, Nat.add_sub_cancel]

end A079725

/-! ## A079725.P11008450365378699344

`∑[A054265(floor(acot(n)+n))]`
-/

namespace A079725.P11008450365378699344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079725.P11008450365378699344

namespace A079725

/-- `∑[A054265(floor(acot(n)+n))]` -/
def P11008450365378699344.Spec : Prop :=
  ∀ n, P11008450365378699344.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P9452294592865633176

`∑[A054265(A028310(n))]`
-/

namespace A079725.P9452294592865633176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079725.P9452294592865633176

namespace A079725

/-- `∑[A054265(A028310(n))]` -/
def P9452294592865633176.Spec : Prop :=
  ∀ n, P9452294592865633176.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P9460184886269235751

`∑[A054265(A000007(n)+n)]`
-/

namespace A079725.P9460184886269235751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079725.P9460184886269235751

namespace A079725

/-- `∑[A054265(A000007(n)+n)]` -/
def P9460184886269235751.Spec : Prop :=
  ∀ n, P9460184886269235751.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P16336476813426884098

`A008837(n+1)-(A007504(n)+1)`
-/

namespace A079725.P16336476813426884098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - (A007504 n + 1)

end

end A079725.P16336476813426884098

namespace A079725

/-- `A008837(n+1)-(A007504(n)+1)` -/
def P16336476813426884098.Spec : Prop :=
  ∀ n, P16336476813426884098.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P9066256294654307462

`A008837(n+1)-A014284(n+1)`
-/

namespace A079725.P9066256294654307462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - A014284 (n + 1)

end

end A079725.P9066256294654307462

namespace A079725

/-- `A008837(n+1)-A014284(n+1)` -/
def P9066256294654307462.Spec : Prop :=
  ∀ n, P9066256294654307462.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P10958938401418147338

`A072205(n+1)-A036439(n+1)`
-/

namespace A079725.P10958938401418147338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072205 (n + 1) - A036439 (n + 1)

end

end A079725.P10958938401418147338

namespace A079725

/-- `A072205(n+1)-A036439(n+1)` -/
def P10958938401418147338.Spec : Prop :=
  ∀ n, P10958938401418147338.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P16432297903803800564

`A008837(n+1)-∑[A008578(n+1)]`
-/

namespace A079725.P16432297903803800564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079725.P16432297903803800564

namespace A079725

/-- `A008837(n+1)-∑[A008578(n+1)]` -/
def P16432297903803800564.Spec : Prop :=
  ∀ n, P16432297903803800564.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P2309499216038593393

`∑[A054265(n+1)]-A054265(n+1)`
-/

namespace A079725.P2309499216038593393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054265 (n + 1)

end

end A079725.P2309499216038593393

namespace A079725

/-- `∑[A054265(n+1)]-A054265(n+1)` -/
def P2309499216038593393.Spec : Prop :=
  ∀ n, P2309499216038593393.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P7570406151478730996

`A072205(n+1)-(A014284(n+1)+1)`
-/

namespace A079725.P7570406151478730996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072205 (n + 1) - (A014284 (n + 1) + 1)

end

end A079725.P7570406151478730996

namespace A079725

/-- `A072205(n+1)-(A014284(n+1)+1)` -/
def P7570406151478730996.Spec : Prop :=
  ∀ n, P7570406151478730996.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P1952702545643181877

`(A000040(n+1)²-A061802(n)-2)/2`
-/

namespace A079725.P1952702545643181877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2 - A061802 n - 2 : ℚ) / 2

end

end A079725.P1952702545643181877

namespace A079725

/-- `(A000040(n+1)²-A061802(n)-2)/2` -/
def P1952702545643181877.Spec : Prop :=
  ∀ n, P1952702545643181877.a n = (A079725 (n + 1) : ℚ)

end A079725

/-! ## A079725.P4260226163685689841

`A034953(n+1)-(∑[A000040(n+1)]+1)`
-/

namespace A079725.P4260226163685689841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A079725.P4260226163685689841

namespace A079725

/-- `A034953(n+1)-(∑[A000040(n+1)]+1)` -/
def P4260226163685689841.Spec : Prop :=
  ∀ n, P4260226163685689841.a n = A079725 (n + 1)

theorem P4260226163685689841.correct : P4260226163685689841.Spec := by
  intro n
  simp only [A079725, Nat.add_sub_cancel, A079725.P4260226163685689841.f1, A079725.P4260226163685689841.a, A079725.P2348211076325242333.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034953, A034953.P12568728140146877898.a, A045717, A045717.P14974844081395038994.f1, A045717.P14974844081395038994.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A079725

/-! ## A079725.P17760200383760761443

`A034953(n+1)-A014284(n+2)`
-/

namespace A079725.P17760200383760761443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A014284 (n + 2)

end

end A079725.P17760200383760761443

namespace A079725

/-- `A034953(n+1)-A014284(n+2)` -/
def P17760200383760761443.Spec : Prop :=
  ∀ n, P17760200383760761443.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P14765841218296359361

`A000217(A006093(n+1))-(A007504(n)+1)`
-/

namespace A079725.P14765841218296359361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A006093 (n + 1)).toNat - (A007504 n + 1)

end

end A079725.P14765841218296359361

namespace A079725

/-- `A000217(A006093(n+1))-(A007504(n)+1)` -/
def P14765841218296359361.Spec : Prop :=
  ∀ n, P14765841218296359361.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P14305643407205896112

`A053767(A065890(n+1))`
-/

namespace A079725.P14305643407205896112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A065890 (n + 1)).toNat

end

end A079725.P14305643407205896112

namespace A079725

/-- `A053767(A065890(n+1))` -/
def P14305643407205896112.Spec : Prop :=
  ∀ n, P14305643407205896112.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P1953117594966872484

`A053767(A162177(n+2))`
-/

namespace A079725.P1953117594966872484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A162177 (n + 2)).toNat

end

end A079725.P1953117594966872484

namespace A079725

/-- `A053767(A162177(n+2))` -/
def P1953117594966872484.Spec : Prop :=
  ∀ n, P1953117594966872484.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P5536646644937285998

`A051349(A014689(n+1))-1`
-/

namespace A079725.P5536646644937285998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (A014689 (n + 1)).toNat - 1

end

end A079725.P5536646644937285998

namespace A079725

/-- `A051349(A014689(n+1))-1` -/
def P5536646644937285998.Spec : Prop :=
  ∀ n, P5536646644937285998.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P7392345669053090573

`A051349(A014692(n+1)-1)-1`
-/

namespace A079725.P7392345669053090573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (A014692 (n + 1) - 1).toNat - 1

end

end A079725.P7392345669053090573

namespace A079725

/-- `A051349(A014692(n+1)-1)-1` -/
def P7392345669053090573.Spec : Prop :=
  ∀ n, P7392345669053090573.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P1209273289941070103

`A053767(A000040(n+1)-(n+2))`
-/

namespace A079725.P1209273289941070103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A000040 (n + 1) - (n + 2 : ℤ)).toNat

end

end A079725.P1209273289941070103

namespace A079725

/-- `A053767(A000040(n+1)-(n+2))` -/
def P1209273289941070103.Spec : Prop :=
  ∀ n, P1209273289941070103.a n = A079725 (n + 1)

end A079725

/-! ## A079725.P6368327709975661984

`A175967(A000040(n+1)-n)-2`
-/

namespace A079725.P6368327709975661984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (A000040 (n + 1) - (n : ℤ)).toNat - 2

end

end A079725.P6368327709975661984

namespace A079725

/-- `A175967(A000040(n+1)-n)-2` -/
def P6368327709975661984.Spec : Prop :=
  ∀ n, P6368327709975661984.a n = A079725 (n + 1)

end A079725

/-!
# A079726: a(1)=1, a(n) is the smallest integer > a(n-1) such that a(n) is even if k(n)=1, a(n) is odd if k(n)=2, where k(n) denotes the n-th term of the Kolakoski sequence (A000002).

The programs for A079726, the canonical program `A079726.P14487602782044974592` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079726 has offset 1).

The definition of A079726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079726.P17848084856117801524

`∑[char[A078649(n+1)]+1]`
-/

namespace A079726.P17848084856117801524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079726.P17848084856117801524

namespace A079726

/-- `∑[char[A078649(n+1)]+1]` -/
def P17848084856117801524.Spec : Prop :=
  ∀ n, (P17848084856117801524.a n : ℤ) = A079726 (n + 1)

end A079726

/-! ## A079726.P14313284300162028468

`∑[char[comp[A054353(n+1)]]]+n`
-/

namespace A079726.P14313284300162028468
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A079726.P14313284300162028468

namespace A079726

/-- `∑[char[comp[A054353(n+1)]]]+n` -/
def P14313284300162028468.Spec : Prop :=
  ∀ n, (P14313284300162028468.a n : ℤ) = A079726 (n + 1)

end A079726

/-! ## A079726.P14487602782044974592

`2*(n+1)-A156253(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A079726

/-- `2*(n+1)-A156253(n+1)` -/
def P14487602782044974592.Spec : Prop :=
  ∀ n, P14487602782044974592.a n = A079726 (n + 1)

theorem P14487602782044974592.correct : P14487602782044974592.Spec := by
  intro n
  simp only [A079726, Nat.add_sub_cancel]

end A079726

/-! ## A079726.P4135665275848266986

`A157687(n)+a(n-1)+1` with `a(0)=1`
-/

namespace A079726.P4135665275848266986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157687 n + a (n - 1) + 1

end

end A079726.P4135665275848266986

namespace A079726

/-- `A157687(n)+a(n-1)+1` -/
def P4135665275848266986.Spec : Prop :=
  ∀ n, P4135665275848266986.a n = A079726 (n + 1)

end A079726

/-! ## A079726.P13740038892683411859

`∑[A157687(abs(1-n)+1)]+n`
-/

namespace A079726.P13740038892683411859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A079726.P13740038892683411859

namespace A079726

/-- `∑[A157687(abs(1-n)+1)]+n` -/
def P13740038892683411859.Spec : Prop :=
  ∀ n, P13740038892683411859.a n = A079726 (n + 1)

end A079726

/-! ## A079726.P1652743798523817888

`∑[char[comp[A216345(n+2)-1]]]+n`
-/

namespace A079726.P1652743798523817888
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 2) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A079726.P1652743798523817888

namespace A079726

/-- `∑[char[comp[A216345(n+2)-1]]]+n` -/
def P1652743798523817888.Spec : Prop :=
  ∀ n, (P1652743798523817888.a n : ℤ) = A079726 (n + 1)

end A079726

/-! ## A079726.P14059080966225762102

`A156250(A156351(n+1))+n`
-/

namespace A079726.P14059080966225762102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (A156351 (n + 1)).toNat + (n : ℤ)

end

end A079726.P14059080966225762102

namespace A079726

/-- `A156250(A156351(n+1))+n` -/
def P14059080966225762102.Spec : Prop :=
  ∀ n, P14059080966225762102.a n = A079726 (n + 1)

end A079726

/-! ## A079726.P6798955466520148431

`A022958(A156253(n+1))+A005843(n)`
-/

namespace A079726.P6798955466520148431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A156253 (n + 1)).toNat + A005843 n

end

end A079726.P6798955466520148431

namespace A079726

/-- `A022958(A156253(n+1))+A005843(n)` -/
def P6798955466520148431.Spec : Prop :=
  ∀ n, P6798955466520148431.a n = A079726 (n + 1)

end A079726

/-! ## A079726.P6605301513927708445

`A158388(2*n+1)+A074286(A156351(n+1))+n`
-/

namespace A079726.P6605301513927708445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (2 * n + 1) + A074286 (A156351 (n + 1)).toNat + (n : ℤ)

end

end A079726.P6605301513927708445

namespace A079726

/-- `A158388(2*n+1)+A074286(A156351(n+1))+n` -/
def P6605301513927708445.Spec : Prop :=
  ∀ n, P6605301513927708445.a n = A079726 (n + 1)

end A079726

/-! ## A079726.P8580109578278014911

`A023443(2*n+3)-(∑[char[A054353(n+1)]]+1)`
-/

namespace A079726.P8580109578278014911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A079726.P8580109578278014911

namespace A079726

/-- `A023443(2*n+3)-(∑[char[A054353(n+1)]]+1)` -/
def P8580109578278014911.Spec : Prop :=
  ∀ n, P8580109578278014911.a n = A079726 (n + 1)

end A079726

/-! ## A079726.P7881386089116113893

`A023443(2*n+3)-A156351(A157687(n+1)+n+1)`
-/

namespace A079726.P7881386089116113893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * n + 3) - A156351 (A157687 (n + 1) + (n + 1 : ℤ)).toNat

end

end A079726.P7881386089116113893

namespace A079726

/-- `A023443(2*n+3)-A156351(A157687(n+1)+n+1)` -/
def P7881386089116113893.Spec : Prop :=
  ∀ n, P7881386089116113893.a n = A079726 (n + 1)

end A079726

/-! ## A079726.P6688824416386643175

`A023443(A023443(2*(n+2))-(A156351(n+1)+1-A054354(n+1)²))`
-/

namespace A079726.P6688824416386643175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A023443 (2 * (n + 2)) - (A156351 (n + 1) + (1 - A054354 (n + 1) ^ 2))).toNat

end

end A079726.P6688824416386643175

namespace A079726

/-- `A023443(A023443(2*(n+2))-(A156351(n+1)+1-A054354(n+1)²))` -/
def P6688824416386643175.Spec : Prop :=
  ∀ n, P6688824416386643175.a n = A079726 (n + 1)

end A079726

/-!
# A079727: a(n) = 1 + C(2,1)^3 + C(4,2)^3 + ... + C(2n,n)^3.

The programs for A079727, there is no canonical definition to state claims against.
-/

/-! ## A079727.P6428702302279877722

`∑[C(2*n, n)^3]`
-/

namespace A079727.P6428702302279877722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079727.P6428702302279877722

/-! ## A079727.P87323605376822662

`a(n-1)+C(2*n, n)^3` with `a(0)=1`
-/

namespace A079727.P87323605376822662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (2 * n) n ^ 3

end

end A079727.P87323605376822662

/-! ## A079727.P550248030965822087

`∑[C(2*n, n)²*C(2*n, n)]`
-/

namespace A079727.P550248030965822087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n ^ 2 * Nat.choose (2 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079727.P550248030965822087

/-! ## A079727.P5423755171232397846

`∑[A002897(n)]`
-/

namespace A079727.P5423755171232397846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079727.P5423755171232397846

/-! ## A079727.P2794078553637695212

`∑[A000984(n)^3]`
-/

namespace A079727.P2794078553637695212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079727.P2794078553637695212

/-! ## A079727.P11001888965709972294

`∑[(n+1)*A186415(n)]`
-/

namespace A079727.P11001888965709972294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A186415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079727.P11001888965709972294

/-! ## A079727.P4466446788762400432

`∑[A007318(∑[4*n])^3]`
-/

namespace A079727.P4466446788762400432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079727.P4466446788762400432

/-! ## A079727.P5471260988049955109

`∑[((n+1)*A000108(n))^3]`
-/

namespace A079727.P5471260988049955109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000108 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079727.P5471260988049955109

/-! ## A079727.P5642566481904336508

`∑[sqrt(A002894(n))*A002894(n)]`
-/

namespace A079727.P5642566481904336508
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A002894 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079727.P5642566481904336508

/-! ## A079727.P13510263655465498640

`∑[record[A081668(n)²*A081668(n)]]`
-/

namespace A079727.P13510263655465498640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n ^ 2 * A081668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079727.P13510263655465498640

/-!
# A079728: sum(k=0,p,binomial(2*k,k)) (mod p) where p runs through the primes.

The programs for A079728, the canonical program `A079728.P17934599081667168555` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079728 has offset 1).

The definition of A079728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079728.P17934599081667168555

`gcd(6, p?[xor(1, n)]+2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079728

/-- `gcd(6, p?[xor(1, n)]+2)` -/
def P17934599081667168555.Spec : Prop :=
  ∀ n, (P17934599081667168555.a n : ℤ) = A079728 (n + 1)

theorem P17934599081667168555.correct : P17934599081667168555.Spec := by
  intro n
  simp only [A079728, Nat.add_sub_cancel]

end A079728

/-! ## A079728.P757784555212484471

`gcd(12, 4-p?[xor(1, n)])`
-/

namespace A079728.P757784555212484471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (4 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ))

end

end A079728.P757784555212484471

namespace A079728

/-- `gcd(12, 4-p?[xor(1, n)])` -/
def P757784555212484471.Spec : Prop :=
  ∀ n, (P757784555212484471.a n : ℤ) = A079728 (n + 1)

end A079728

/-! ## A079728.P3898456304879496775

`(p?[abs(xor(n, -2))]+1)%3+1`
-/

namespace A079728.P3898456304879496775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) 3 + 1

end

end A079728.P3898456304879496775

namespace A079728

/-- `(p?[abs(xor(n, -2))]+1)%3+1` -/
def P3898456304879496775.Spec : Prop :=
  ∀ n, P3898456304879496775.a n = A079728 (n + 1)

end A079728

/-! ## A079728.P6401328386143712373

`(p?[xor(1, n)+1]+1)%3+1`
-/

namespace A079728.P6401328386143712373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) % 3 + 1

end

end A079728.P6401328386143712373

namespace A079728

/-- `(p?[xor(1, n)+1]+1)%3+1` -/
def P6401328386143712373.Spec : Prop :=
  ∀ n, (P6401328386143712373.a n : ℤ) = A079728 (n + 1)

end A079728

/-! ## A079728.P5354315453408426783

`(p?[n%3+n]+1)%3+1`
-/

namespace A079728.P5354315453408426783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) % 3 + 1

end

end A079728.P5354315453408426783

namespace A079728

/-- `(p?[n%3+n]+1)%3+1` -/
def P5354315453408426783.Spec : Prop :=
  ∀ n, (P5354315453408426783.a n : ℤ) = A079728 (n + 1)

end A079728

/-! ## A079728.P9752324802670208201

`A134323(n+1)+2`
-/

namespace A079728.P9752324802670208201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1) + 2

end

end A079728.P9752324802670208201

namespace A079728

/-- `A134323(n+1)+2` -/
def P9752324802670208201.Spec : Prop :=
  ∀ n, P9752324802670208201.a n = A079728 (n + 1)

end A079728

/-! ## A079728.P9356402286833082215

`dr(A030078(n+1)+2)`
-/

namespace A079728.P9356402286833082215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030078 (n + 1) + 2)

end

end A079728.P9356402286833082215

namespace A079728

/-- `dr(A030078(n+1)+2)` -/
def P9356402286833082215.Spec : Prop :=
  ∀ n, (P9356402286833082215.a n : ℤ) = A079728 (n + 1)

end A079728

/-! ## A079728.P8678032721634822001

`dr(A179665(n+1)+2)`
-/

namespace A079728.P8678032721634822001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A179665 (n + 1) + 2)

end

end A079728.P8678032721634822001

namespace A079728

/-- `dr(A179665(n+1)+2)` -/
def P8678032721634822001.Spec : Prop :=
  ∀ n, (P8678032721634822001.a n : ℤ) = A079728 (n + 1)

end A079728

/-! ## A079728.P3498058593553153688

`dr(A235398(n+1)+2)`
-/

namespace A079728.P3498058593553153688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A235398 (n + 1) + 2)

end

end A079728.P3498058593553153688

namespace A079728

/-- `dr(A235398(n+1)+2)` -/
def P3498058593553153688.Spec : Prop :=
  ∀ n, (P3498058593553153688.a n : ℤ) = A079728 (n + 1)

end A079728

/-! ## A079728.P15337714243566990476

`dr(sqrt(A030516(n+1))+2)`
-/

namespace A079728.P15337714243566990476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (A030516 (n + 1) : ℝ) + 2))

end

end A079728.P15337714243566990476

namespace A079728

/-- `dr(sqrt(A030516(n+1))+2)` -/
def P15337714243566990476.Spec : Prop :=
  ∀ n, (P15337714243566990476.a n : ℤ) = A079728 (n + 1)

end A079728

/-! ## A079728.P10343963030011445686

`A010882(A008864(n+1))`
-/

namespace A079728.P10343963030011445686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A008864 (n + 1)).toNat

end

end A079728.P10343963030011445686

namespace A079728

/-- `A010882(A008864(n+1))` -/
def P10343963030011445686.Spec : Prop :=
  ∀ n, P10343963030011445686.a n = A079728 (n + 1)

end A079728

/-! ## A079728.P15242515150685906393

`A010882(A028815(n+1))`
-/

namespace A079728.P15242515150685906393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A028815 (n + 1)).toNat

end

end A079728.P15242515150685906393

namespace A079728

/-- `A010882(A028815(n+1))` -/
def P15242515150685906393.Spec : Prop :=
  ∀ n, P15242515150685906393.a n = A079728 (n + 1)

end A079728

/-! ## A079728.P12620152586875362641

`A010882(A040976(n+1))`
-/

namespace A079728.P12620152586875362641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A040976 (n + 1)).toNat

end

end A079728.P12620152586875362641

namespace A079728

/-- `A010882(A040976(n+1))` -/
def P12620152586875362641.Spec : Prop :=
  ∀ n, P12620152586875362641.a n = A079728 (n + 1)

end A079728

/-! ## A079728.P9809739241177341965

`A078711(A052147(n+1))`
-/

namespace A079728.P9809739241177341965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078711 (A052147 (n + 1)).toNat

end

end A079728.P9809739241177341965

namespace A079728

/-- `A078711(A052147(n+1))` -/
def P9809739241177341965.Spec : Prop :=
  ∀ n, P9809739241177341965.a n = A079728 (n + 1)

end A079728

/-! ## A079728.P13329599810090711477

`A010226(A123123(n+1))`
-/

namespace A079728.P13329599810090711477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010226 (A123123 (n + 1)).toNat

end

end A079728.P13329599810090711477

namespace A079728

/-- `A010226(A123123(n+1))` -/
def P13329599810090711477.Spec : Prop :=
  ∀ n, P13329599810090711477.a n = A079728 (n + 1)

end A079728

/-! ## A079728.P1294968515439182496

`A010212(A132227(n+1))`
-/

namespace A079728.P1294968515439182496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010212 (A132227 (n + 1)).toNat

end

end A079728.P1294968515439182496

namespace A079728

/-- `A010212(A132227(n+1))` -/
def P1294968515439182496.Spec : Prop :=
  ∀ n, P1294968515439182496.a n = A079728 (n + 1)

end A079728

/-! ## A079728.P4183756383419765417

`A010882(A175221(n+1))`
-/

namespace A079728.P4183756383419765417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A175221 (n + 1)).toNat

end

end A079728.P4183756383419765417

namespace A079728

/-- `A010882(A175221(n+1))` -/
def P4183756383419765417.Spec : Prop :=
  ∀ n, P4183756383419765417.a n = A079728 (n + 1)

end A079728

/-! ## A079728.P16047208431375174947

`A010882(A175223(n+1))`
-/

namespace A079728.P16047208431375174947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A175223 (n + 1)).toNat

end

end A079728.P16047208431375174947

namespace A079728

/-- `A010882(A175223(n+1))` -/
def P16047208431375174947.Spec : Prop :=
  ∀ n, P16047208431375174947.a n = A079728 (n + 1)

end A079728

/-! ## A079728.P16474236289562077206

`A010882(A175225(n+1))`
-/

namespace A079728.P16474236289562077206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A175225 (n + 1)).toNat

end

end A079728.P16474236289562077206

namespace A079728

/-- `A010882(A175225(n+1))` -/
def P16474236289562077206.Spec : Prop :=
  ∀ n, P16474236289562077206.a n = A079728 (n + 1)

end A079728

/-!
# A079729: Kolakoski-(1,2,3) sequence: a(n) is the length of the n-th run.

The programs for A079729, there is no canonical definition to state claims against.
-/

/-! ## A079729.P7271634140074683134

`A245936(A032513(3*n+1))*A288725(n+2)`
-/

namespace A079729.P7271634140074683134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245936 (A032513 (3 * n + 1)).toNat * A288725 (n + 2)

end

end A079729.P7271634140074683134

/-! ## A079729.P14122106322295528642

`∏{e}[record[and(-7, 2^n)], A288725(#)]`
-/

namespace A079729.P14122106322295528642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-7) (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A288725 (Nat.factorization (f1 n).natAbs p)

end

end A079729.P14122106322295528642

/-! ## A079729.P12355771990781444840

`A288725(A351374(n+2))`
-/

namespace A079729.P12355771990781444840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288725 (A351374 (n + 2)).toNat

end

end A079729.P12355771990781444840

/-! ## A079729.P9278254873529962453

`∑{e}[A011782(n+3), A288725(#)]`
-/

namespace A079729.P9278254873529962453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A288725 (Nat.factorization (f1 n).natAbs p)

end

end A079729.P9278254873529962453

/-!
# A079731: Fundamental piano frequencies in Hertz rounded to nearest integer.

The programs for A079731, there is no canonical definition to state claims against.
-/

/-! ## A079731.P10087954965387678672

`ogf((28-x)/(1-2x))`
-/

namespace A079731.P10087954965387678672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [28, -1] [1, -2] n

end

end A079731.P10087954965387678672

/-! ## A079731.P1873240435007248874

`2*a(n-1)` with `a(0)=28, a(1)=55`
-/

namespace A079731.P1873240435007248874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28, 55] fun n a =>
  2 * a (n - 1)

end

end A079731.P1873240435007248874

/-! ## A079731.P16659968881226177710

`round(55*2^(n-1))`
-/

namespace A079731.P16659968881226177710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (55 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A079731.P16659968881226177710

/-! ## A079731.P7593430949068615851

`record[gcd(2, n)*a(floor(n/2))]` with `a(0)=28, a(1)=55`
-/

namespace A079731.P7593430949068615851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [28, 55] fun n f1 =>
  Nat.gcd 2 n * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079731.P7593430949068615851

/-!
# A079732: Primes of the form x^2 + y^2 + 3 (x,y positive).

The programs for A079732, the canonical program `A079732.P14358494824311656752` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079732 has offset 1).

The definition of A079732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 789 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079732.P6181406477688548674

`p?[A000404(n+1)+3]`
-/

namespace A079732.P6181406477688548674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079732.P6181406477688548674

namespace A079732

/-- `p?[A000404(n+1)+3]` -/
def P6181406477688548674.Spec : Prop :=
  ∀ n, P6181406477688548674.a n = A079732 (n + 1)

end A079732

/-! ## A079732.P15912493268763596553

`record[A006530(A000404(n+1)+3)]`
-/

namespace A079732.P15912493268763596553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000404 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079732.P15912493268763596553

namespace A079732

/-- `record[A006530(A000404(n+1)+3)]` -/
def P15912493268763596553.Spec : Prop :=
  ∀ n, P15912493268763596553.a n = A079732 (n + 1)

end A079732

/-! ## A079732.P8138821091458922665

`record[A020639(A000404(n+1)+3)]`
-/

namespace A079732.P8138821091458922665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000404 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079732.P8138821091458922665

namespace A079732

/-- `record[A020639(A000404(n+1)+3)]` -/
def P8138821091458922665.Spec : Prop :=
  ∀ n, P8138821091458922665.a n = A079732 (n + 1)

end A079732

/-! ## A079732.P5942488990204724215

`record[A000010(A000404(n+1)+3)+1]`
-/

namespace A079732.P5942488990204724215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000404 (n + 1) + 3).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079732.P5942488990204724215

namespace A079732

/-- `record[A000010(A000404(n+1)+3)+1]` -/
def P5942488990204724215.Spec : Prop :=
  ∀ n, P5942488990204724215.a n = A079732 (n + 1)

end A079732

/-! ## A079732.P14448191415991151767

`record[A020639(A024509(n+1)+3)]`
-/

namespace A079732.P14448191415991151767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024509 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079732.P14448191415991151767

namespace A079732

/-- `record[A020639(A024509(n+1)+3)]` -/
def P14448191415991151767.Spec : Prop :=
  ∀ n, P14448191415991151767.a n = A079732 (n + 1)

end A079732

/-! ## A079732.P14358494824311656752

`p?[A062545(A001983(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079732

/-- `p?[A062545(A001983(n+1))]` -/
def P14358494824311656752.Spec : Prop :=
  ∀ n, P14358494824311656752.a n = A079732 (n + 1)

theorem P14358494824311656752.correct : P14358494824311656752.Spec := by
  intro n
  simp only [A079732, Nat.add_sub_cancel]

end A079732

/-! ## A079732.P15849605695886413035

`p?[A009005(A000404(n+1))]`
-/

namespace A079732.P15849605695886413035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A000404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079732.P15849605695886413035

namespace A079732

/-- `p?[A009005(A000404(n+1))]` -/
def P15849605695886413035.Spec : Prop :=
  ∀ n, P15849605695886413035.a n = A079732 (n + 1)

end A079732

/-!
# A079733: Primes of the form x^2 + y^2 + 3 (x,y nonnegative).

The programs for A079733, there is no canonical definition to state claims against.
-/

/-! ## A079733.P17053332338829065627

`∪[A049423(n+1), A079732(n+1)]`
-/

namespace A079733.P17053332338829065627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079733.P17053332338829065627

/-! ## A079733.P491948459561995204

`p?[A166687(n+1)+2]`
-/

namespace A079733.P491948459561995204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079733.P491948459561995204

/-! ## A079733.P13282393971309406614

`p?[A001481(n+1)+3]`
-/

namespace A079733.P13282393971309406614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079733.P13282393971309406614

/-! ## A079733.P13024962027016099187

`record[A006530(A166687(n+1)+2)]`
-/

namespace A079733.P13024962027016099187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A166687 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079733.P13024962027016099187

/-! ## A079733.P5706336110567101428

`record[A006530(A001481(n+1)+3)]`
-/

namespace A079733.P5706336110567101428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001481 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079733.P5706336110567101428

/-! ## A079733.P1104496740404718450

`record[A020639(A001481(n+1)+3)]`
-/

namespace A079733.P1104496740404718450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001481 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079733.P1104496740404718450

/-! ## A079733.P3641106720560715923

`record[A000010(A001481(n+1)+3)+1]`
-/

namespace A079733.P3641106720560715923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001481 (n + 1) + 3).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079733.P3641106720560715923

/-! ## A079733.P1840091592386135521

`∩[A000040(n+1), A166687(n+1)+2]`
-/

namespace A079733.P1840091592386135521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079733.P1840091592386135521

/-! ## A079733.P9504426416119160702

`∩[A166687(n+1)+2, A182140(n+1)]`
-/

namespace A079733.P9504426416119160702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079733.P9504426416119160702

/-! ## A079733.P4966577919808675428

`∩[A166687(n+1)+2, A182986(n+1)]`
-/

namespace A079733.P4966577919808675428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079733.P4966577919808675428

/-! ## A079733.P4936454188945867270

`record[A014963(A166687(n+1)+2)]`
-/

namespace A079733.P4936454188945867270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A166687 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079733.P4936454188945867270

/-! ## A079733.P4016231563209540868

`record[A020639(A070176(n)+3+n)]`
-/

namespace A079733.P4016231563209540868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A070176 n + 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079733.P4016231563209540868

/-! ## A079733.P16744225837954793582

`record[A014963(2*comp[A022544(n+1)]+3)]`
-/

namespace A079733.P16744225837954793582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079733.P16744225837954793582

/-! ## A079733.P1181597448446071142

`p?[A008619(A128106(n+1))+2]`
-/

namespace A079733.P1181597448446071142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A128106 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079733.P1181597448446071142

/-! ## A079733.P16642186214350746290

`record[A051664(A001481(n+1)+3)]`
-/

namespace A079733.P16642186214350746290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A001481 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079733.P16642186214350746290

/-!
# A079734: n for which there is a chain (or permutation) of the numbers from 1 to n for which each adjacent pair sums to a Fibonacci number.

The programs for A079734, there is no canonical definition to state claims against.
-/

/-! ## A079734.P10225484302708001342

`lt[A023443(n), A051951(A160664(n+2))]`
-/

namespace A079734.P10225484302708001342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 (A160664 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079734.P10225484302708001342

/-!
# A079735: Number of positions that are exactly n moves from the starting position in the Hockey Puck puzzle.

The programs for A079735, there is no canonical definition to state claims against.
-/

/-! ## A079735.P11040198487011336913

`∑[A071626(A000930(3*(n+1)))-n]`
-/

namespace A079735.P11040198487011336913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A000930 (3 * (n + 1))).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079735.P11040198487011336913

/-! ## A079735.P2943000077563023471

`A005041(A084171(n)+A000045(n))`
-/

namespace A079735.P2943000077563023471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A084171 n + A000045 n).toNat

end

end A079735.P2943000077563023471

/-! ## A079735.P15627842725179846890

`A005041(A086246(n)+A084171(n))`
-/

namespace A079735.P15627842725179846890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A086246 n + A084171 n).toNat

end

end A079735.P15627842725179846890

/-! ## A079735.P7268509860586169381

`A055086(A134931(n))-A158411(n)`
-/

namespace A079735.P7268509860586169381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A134931 n).toNat - A158411 n

end

end A079735.P7268509860586169381

/-!
# A079736: Number of positions that are exactly n moves from the starting position in the Hockey Puck puzzle.

The programs for A079736, there is no canonical definition to state claims against.
-/

/-! ## A079736.P3920831510154922402

`or(A005056(n), A130988(A005056(n)))`
-/

namespace A079736.P3920831510154922402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005056 n) (A130988 (A005056 n).toNat)

end

end A079736.P3920831510154922402

/-! ## A079736.P8968133073239644997

`A227374(2*n+3)-A238363(A246006(n))`
-/

namespace A079736.P8968133073239644997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227374 (2 * n + 3) - A238363 (A246006 n).toNat

end

end A079736.P8968133073239644997

/-!
# A079737: Number of positions that are exactly n moves from the starting position in the Hockey Puck puzzle.

The programs for A079737, there is no canonical definition to state claims against.
-/

/-! ## A079737.P17291262308862957238

`A057367(A047108(n+1))`
-/

namespace A079737.P17291262308862957238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A047108 (n + 1)).toNat

end

end A079737.P17291262308862957238

/-! ## A079737.P9469461514012480586

`A295341(3*n)+record[A144383(n+1)]`
-/

namespace A079737.P9469461514012480586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 (3 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079737.P9469461514012480586

/-!
# A079738: Number of positions that are exactly n moves from the starting position in the Hockey Puck puzzle.

The programs for A079738, there is no canonical definition to state claims against.
-/

/-! ## A079738.P4814434749923129638

`A314816(a(n-1))+A083293(n)` with `a(0)=1`
-/

namespace A079738.P4814434749923129638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A314816 (a (n - 1)).toNat + A083293 n

end

end A079738.P4814434749923129638

/-! ## A079738.P15198158022185751994

`A313071(a(n-1))+A131818(n+1)` with `a(0)=1`
-/

namespace A079738.P15198158022185751994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A313071 (a (n - 1)).toNat + A131818 (n + 1)

end

end A079738.P15198158022185751994

/-!
# A079739: Primes of the form x^2 + y^2 + 2 (x,y nonnegative).

The programs for A079739, there is no canonical definition to state claims against.
-/

/-! ## A079739.P8803040048431834876

`∪[A056899(n+1), A079740(n+1)]`
-/

namespace A079739.P8803040048431834876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079739.P8803040048431834876

/-! ## A079739.P7299556957302748254

`p?[(n+2)*A229062(n)]`
-/

namespace A079739.P7299556957302748254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A229062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079739.P7299556957302748254

/-! ## A079739.P14428327647493663391

`p?[A020668(n+1)+2]`
-/

namespace A079739.P14428327647493663391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079739.P14428327647493663391

/-! ## A079739.P66876318733731467

`p?[A166687(n+1)+1]`
-/

namespace A079739.P66876318733731467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079739.P66876318733731467

/-! ## A079739.P1215694876688882110

`p?[A001481(n+1)+2]`
-/

namespace A079739.P1215694876688882110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079739.P1215694876688882110

/-! ## A079739.P14510639554211830086

`record[A006530(A166687(n+1)+1)]`
-/

namespace A079739.P14510639554211830086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A166687 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079739.P14510639554211830086

/-! ## A079739.P4814056496729547174

`record[A006530(A001481(n+1)+2)]`
-/

namespace A079739.P4814056496729547174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001481 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079739.P4814056496729547174

/-! ## A079739.P15987311869434965461

`record[A020639(A001481(n+1)+2)]`
-/

namespace A079739.P15987311869434965461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001481 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079739.P15987311869434965461

/-! ## A079739.P5362368712154234579

`∩[A000040(n+1), A166687(n+1)+1]`
-/

namespace A079739.P5362368712154234579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079739.P5362368712154234579

/-! ## A079739.P13719166311077681609

`∩[A166687(n+1)+1, A176165(n+1)]`
-/

namespace A079739.P13719166311077681609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079739.P13719166311077681609

/-! ## A079739.P12263520537893080608

`∩[A166687(n+1)+1, A182986(n+1)]`
-/

namespace A079739.P12263520537893080608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079739.P12263520537893080608

/-! ## A079739.P10591320744809269772

`∩[A000040(n+1), A001481(n+1)+2]`
-/

namespace A079739.P10591320744809269772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079739.P10591320744809269772

/-! ## A079739.P3126522010837168820

`record[A014963(A166687(n+1)+1)]`
-/

namespace A079739.P3126522010837168820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A166687 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079739.P3126522010837168820

/-! ## A079739.P16108939333416469773

`record[A014963(A001481(n+1)+2)]`
-/

namespace A079739.P16108939333416469773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001481 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079739.P16108939333416469773

/-! ## A079739.P14104471985520836094

`record[A006530(A070176(n)+2+n)]`
-/

namespace A079739.P14104471985520836094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A070176 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079739.P14104471985520836094

/-! ## A079739.P7255363008331553355

`record[A020639(A070176(n)+2+n)]`
-/

namespace A079739.P7255363008331553355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A070176 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079739.P7255363008331553355

/-! ## A079739.P8508228911891687853

`record[A014963(comp[A022544(n+1)]+2)]`
-/

namespace A079739.P8508228911891687853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079739.P8508228911891687853

/-! ## A079739.P598741283381827076

`p?[gcd(n+1, A213721(A004018(n)))+n+1]`
-/

namespace A079739.P598741283381827076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A213721 (A004018 n).toNat) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079739.P598741283381827076

/-! ## A079739.P1853907363767612563

`p?[A008619(A128106(n+1))+1]`
-/

namespace A079739.P1853907363767612563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A128106 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079739.P1853907363767612563

/-! ## A079739.P17222230239343074617

`record[A051664(A001481(n+1)+2)]`
-/

namespace A079739.P17222230239343074617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A001481 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079739.P17222230239343074617

/-!
# A079740: Primes of the form x^2 + y^2 + 2 (x,y positive).

The programs for A079740, the canonical program `A079740.P6037499891495547414` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079740 has offset 1).

The definition of A079740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079740.P5211486439241063046

`p?[A097268(n+1)+2]`
-/

namespace A079740.P5211486439241063046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079740.P5211486439241063046

namespace A079740

/-- `p?[A097268(n+1)+2]` -/
def P5211486439241063046.Spec : Prop :=
  ∀ n, P5211486439241063046.a n = A079740 (n + 1)

end A079740

/-! ## A079740.P6037499891495547414

`p?[A004431(n+1)+2]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079740

/-- `p?[A004431(n+1)+2]` -/
def P6037499891495547414.Spec : Prop :=
  ∀ n, P6037499891495547414.a n = A079740 (n + 1)

theorem P6037499891495547414.correct : P6037499891495547414.Spec := by
  intro n
  simp only [A079740, Nat.add_sub_cancel]

end A079740

/-! ## A079740.P8783829435467232189

`record[A006530(A004431(n+1)+2)]`
-/

namespace A079740.P8783829435467232189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004431 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079740.P8783829435467232189

namespace A079740

/-- `record[A006530(A004431(n+1)+2)]` -/
def P8783829435467232189.Spec : Prop :=
  ∀ n, P8783829435467232189.a n = A079740 (n + 1)

end A079740

/-! ## A079740.P18052388359511099722

`p?[A000404(n+1)+2]`
-/

namespace A079740.P18052388359511099722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079740.P18052388359511099722

namespace A079740

/-- `p?[A000404(n+1)+2]` -/
def P18052388359511099722.Spec : Prop :=
  ∀ n, P18052388359511099722.a n = A079740 (n + 1)

end A079740

/-! ## A079740.P15871837124581983514

`record[A006530(A000404(n+2)+2)]`
-/

namespace A079740.P15871837124581983514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000404 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079740.P15871837124581983514

namespace A079740

/-- `record[A006530(A000404(n+2)+2)]` -/
def P15871837124581983514.Spec : Prop :=
  ∀ n, P15871837124581983514.a n = A079740 (n + 1)

end A079740

/-! ## A079740.P14164623602561134196

`record[A020639(A000404(n+2)+2)]`
-/

namespace A079740.P14164623602561134196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000404 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079740.P14164623602561134196

namespace A079740

/-- `record[A020639(A000404(n+2)+2)]` -/
def P14164623602561134196.Spec : Prop :=
  ∀ n, P14164623602561134196.a n = A079740 (n + 1)

end A079740

/-! ## A079740.P9570381868139994495

`record[A020639(A024509(n+2)+2)]`
-/

namespace A079740.P9570381868139994495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024509 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079740.P9570381868139994495

namespace A079740

/-- `record[A020639(A024509(n+2)+2)]` -/
def P9570381868139994495.Spec : Prop :=
  ∀ n, P9570381868139994495.a n = A079740 (n + 1)

end A079740

/-! ## A079740.P5481502647163091455

`p?[lt[1, A063725(n)]+2]`
-/

namespace A079740.P5481502647163091455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079740.P5481502647163091455

namespace A079740

/-- `p?[lt[1, A063725(n)]+2]` -/
def P5481502647163091455.Spec : Prop :=
  ∀ n, (P5481502647163091455.a n : ℤ) = A079740 (n + 1)

end A079740

/-! ## A079740.P3491396532783083253

`p?[lt[2, A138951(n)]+2]`
-/

namespace A079740.P3491396532783083253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138951 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079740.P3491396532783083253

namespace A079740

/-- `p?[lt[2, A138951(n)]+2]` -/
def P3491396532783083253.Spec : Prop :=
  ∀ n, (P3491396532783083253.a n : ℤ) = A079740 (n + 1)

end A079740

/-!
# A079744: Number of positions that are exactly n moves from the starting position in the Pyraminx puzzle.

The programs for A079744, there is no canonical definition to state claims against.
-/

/-! ## A079744.P15962262278249982934

`A070556(6^(n+1))`
-/

namespace A079744.P15962262278249982934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (6 ^ (n + 1))

end

end A079744.P15962262278249982934

/-!
# A079745: Number of positions that are exactly n moves from the starting position in the Skewb puzzle.

The programs for A079745, there is no canonical definition to state claims against.
-/

/-! ## A079745.P14440371126375447167

`A079758(n^∑[char[6*n]])`
-/

namespace A079745.P14440371126375447167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079758 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A079745.P14440371126375447167

/-! ## A079745.P12639878295043590413

`A245092(A079758(n))`
-/

namespace A079745.P12639878295043590413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A079758 n).toNat

end

end A079745.P12639878295043590413

/-!
# A079747: Numbers k such that gpf(k-1) < gpf(k) < gpf(k+1), where gpf(k) is the greatest prime factor of k (A006530).

The programs for A079747, the canonical program `A079747.P283931037976207506` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079747 has offset 1).

The definition of A079747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079747.P13371807565623889232

`∩[A070089(n+1)+1, A070089(n+1)]`
-/

namespace A079747.P13371807565623889232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079747.P13371807565623889232

namespace A079747

/-- `∩[A070089(n+1)+1, A070089(n+1)]` -/
def P13371807565623889232.Spec : Prop :=
  ∀ n, (P13371807565623889232.a n : ℤ) = A079747 (n + 1)

end A079747

/-! ## A079747.P283931037976207506

`record[A070089(n+2)%(A070089(n+1)+2)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A079747

/-- `record[A070089(n+2)%(A070089(n+1)+2)]` -/
def P283931037976207506.Spec : Prop :=
  ∀ n, P283931037976207506.a n = A079747 (n + 1)

theorem P283931037976207506.correct : P283931037976207506.Spec := by
  intro n
  simp only [A079747, Nat.add_sub_cancel]

end A079747

/-! ## A079747.P14508615040181798811

`lt[1, A079748(n+1)]+2`
-/

namespace A079747.P14508615040181798811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A079747.P14508615040181798811

namespace A079747

/-- `lt[1, A079748(n+1)]+2` -/
def P14508615040181798811.Spec : Prop :=
  ∀ n, (P14508615040181798811.a n : ℤ) = A079747 (n + 1)

end A079747

/-! ## A079747.P768947439688294594

`∩[A070089(n+1), A020725(A070089(n+1))]`
-/

namespace A079747.P768947439688294594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A070089 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079747.P768947439688294594

namespace A079747

/-- `∩[A070089(n+1), A020725(A070089(n+1))]` -/
def P768947439688294594.Spec : Prop :=
  ∀ n, (P768947439688294594.a n : ℤ) = A079747 (n + 1)

end A079747

/-! ## A079747.P14831598192060133005

`eq[A087429(n+1), A100387(n+2)]+2`
-/

namespace A079747.P14831598192060133005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100387 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A079747.P14831598192060133005

namespace A079747

/-- `eq[A087429(n+1), A100387(n+2)]+2` -/
def P14831598192060133005.Spec : Prop :=
  ∀ n, (P14831598192060133005.a n : ℤ) = A079747 (n + 1)

end A079747

/-!
# A079748: Largest k such that the greatest prime factors from n to n+k are monotonically increasing.

The programs for A079748, the canonical program `A079748.P6465197515211222611` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079748 has offset 1).

The definition of A079748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079748.P6465197515211222611

`A087429(n+1)*A100376(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A079748

/-- `A087429(n+1)*A100376(n+2)` -/
def P6465197515211222611.Spec : Prop :=
  ∀ n, P6465197515211222611.a n = A079748 (n + 1)

theorem P6465197515211222611.correct : P6465197515211222611.Spec := by
  intro n
  simp only [A079748, Nat.add_sub_cancel]

end A079748

/-! ## A079748.P8093471734313848046

`A060576(A174869(n+1))*A100376(n+2)`
-/

namespace A079748.P8093471734313848046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A174869 (n + 1)).toNat * A100376 (n + 2)

end

end A079748.P8093471734313848046

namespace A079748

/-- `A060576(A174869(n+1))*A100376(n+2)` -/
def P8093471734313848046.Spec : Prop :=
  ∀ n, P8093471734313848046.a n = A079748 (n + 1)

end A079748

/-! ## A079748.P6154302741515145354

`(∑[n]%A006530(∑[n+1]))^n*A100376(n+2)`
-/

namespace A079748.P6154302741515145354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A006530 (∑ j ∈ Finset.range (n + 1), f2 j)) ^ n * A100376 (n + 2)

end

end A079748.P6154302741515145354

namespace A079748

/-- `(∑[n]%A006530(∑[n+1]))^n*A100376(n+2)` -/
def P6154302741515145354.Spec : Prop :=
  ∀ n, P6154302741515145354.a n = A079748 (n + 1)

end A079748

/-! ## A079748.P9464898085321569873

`(n+1)²%A006530(∑[2*(n+1)])*A100376(n+2)`
-/

namespace A079748.P9464898085321569873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A006530 (∑ j ∈ Finset.range (n + 1), f1 j)) * A100376 (n + 2)

end

end A079748.P9464898085321569873

namespace A079748

/-- `(n+1)²%A006530(∑[2*(n+1)])*A100376(n+2)` -/
def P9464898085321569873.Spec : Prop :=
  ∀ n, P9464898085321569873.a n = A079748 (n + 1)

end A079748

/-! ## A079748.P13942548594289320516

`floor(1/gcd(n+1, A006530((n+2)*(n+1))))*A100376(n+2)`
-/

namespace A079748.P13942548594289320516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Int.gcd (n + 1 : ℤ) (A006530 ((n + 2) * (n + 1))) : ℚ)⌋ * A100376 (n + 2)

end

end A079748.P13942548594289320516

namespace A079748

/-- `floor(1/gcd(n+1, A006530((n+2)*(n+1))))*A100376(n+2)` -/
def P13942548594289320516.Spec : Prop :=
  ∀ n, P13942548594289320516.a n = A079748 (n + 1)

end A079748

/-! ## A079748.P9373131428429378626

`A001222(gcd(n+2, A006530((n+1)*(n+2))))*A100376(n+2)`
-/

namespace A079748.P9373131428429378626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (n + 2 : ℤ) (A006530 ((n + 1) * (n + 2)))) * A100376 (n + 2)

end

end A079748.P9373131428429378626

namespace A079748

/-- `A001222(gcd(n+2, A006530((n+1)*(n+2))))*A100376(n+2)` -/
def P9373131428429378626.Spec : Prop :=
  ∀ n, P9373131428429378626.a n = A079748 (n + 1)

end A079748

/-! ## A079748.P13681615245430544828

`C(A006530(n+2), A006530((n+1)*(n+2)))*A100376(n+2)`
-/

namespace A079748.P13681615245430544828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A006530 (n + 2)).toNat (A006530 ((n + 1) * (n + 2))).toNat : ℤ) * A100376 (n + 2)

end

end A079748.P13681615245430544828

namespace A079748

/-- `C(A006530(n+2), A006530((n+1)*(n+2)))*A100376(n+2)` -/
def P13681615245430544828.Spec : Prop :=
  ∀ n, P13681615245430544828.a n = A079748 (n + 1)

end A079748

/-! ## A079748.P15978491888683258074

`A008683(gcd(A006530((n+1)*(n+2))², (n+1)²))*A100376(n+2)`
-/

namespace A079748.P15978491888683258074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd (A006530 ((n + 1) * (n + 2)) ^ 2) ((n + 1) ^ 2 : ℤ)) * A100376 (n + 2)

end

end A079748.P15978491888683258074

namespace A079748

/-- `A008683(gcd(A006530((n+1)*(n+2))², (n+1)²))*A100376(n+2)` -/
def P15978491888683258074.Spec : Prop :=
  ∀ n, P15978491888683258074.a n = A079748 (n + 1)

end A079748

/-! ## A079748.P16386996935158228760

`A008683(A006530((n+1)*(n+2))*A006530(n+1))²*A100376(n+2)`
-/

namespace A079748.P16386996935158228760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006530 ((n + 1) * (n + 2)) * A006530 (n + 1)).toNat ^ 2 * A100376 (n + 2)

end

end A079748.P16386996935158228760

namespace A079748

/-- `A008683(A006530((n+1)*(n+2))*A006530(n+1))²*A100376(n+2)` -/
def P16386996935158228760.Spec : Prop :=
  ∀ n, P16386996935158228760.a n = A079748 (n + 1)

end A079748

/-!
# A079750: Operation count to create all permutations of n distinct elements using the "streamlined" version of Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2. Sequence gives number of comparisons required to find j in step L2.2'.

The programs for A079750, the canonical program `A079750.P2445912392459354274` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079750 has offset 3).

The definition of A079750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079750.P2445912392459354274

`(n+3)*a(n-1)+n+3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079750

/-- `(n+3)*a(n-1)+n+3` -/
def P2445912392459354274.Spec : Prop :=
  ∀ n, (P2445912392459354274.a n : ℤ) = A079750 (n + 3)

theorem P2445912392459354274.correct : P2445912392459354274.Spec := by
  intro n
  simp only [A079750, Nat.add_sub_cancel]

end A079750

/-! ## A079750.P10745384202974180608

`(a(n-1)+1)*(n+3)` with `a(0)=0`
-/

namespace A079750.P10745384202974180608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * (n + 3)

end

end A079750.P10745384202974180608

namespace A079750

/-- `(a(n-1)+1)*(n+3)` -/
def P10745384202974180608.Spec : Prop :=
  ∀ n, (P10745384202974180608.a n : ℤ) = A079750 (n + 3)

end A079750

/-! ## A079750.P18063825077161684027

`lcm(n+3, a(n-1))+3+n` with `a(0)=0`
-/

namespace A079750.P18063825077161684027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm (n + 3) (a (n - 1)) + 3 + n

end

end A079750.P18063825077161684027

namespace A079750

/-- `lcm(n+3, a(n-1))+3+n` -/
def P18063825077161684027.Spec : Prop :=
  ∀ n, (P18063825077161684027.a n : ℤ) = A079750 (n + 3)

end A079750

/-! ## A079750.P12771125889980009787

`(a(n-1)+1)/(n+3)^(-1)` with `a(0)=0`
-/

namespace A079750.P12771125889980009787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) / (n + 3 : ℚ) ^ (-1 : ℤ)

end

end A079750.P12771125889980009787

namespace A079750

/-- `(a(n-1)+1)/(n+3)^(-1)` -/
def P12771125889980009787.Spec : Prop :=
  ∀ n, P12771125889980009787.a n = (A079750 (n + 3) : ℚ)

end A079750

/-! ## A079750.P5579667824916789569

`record[∑[-Δ[n*(a(n-1)-1)]]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A079750.P5579667824916789569
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f3 =>
  (n : ℤ) * (f3 (n - 1) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079750.P5579667824916789569

namespace A079750

/-- `record[∑[-Δ[n*(a(n-1)-1)]]]` -/
def P5579667824916789569.Spec : Prop :=
  ∀ n, P5579667824916789569.a n = A079750 (n + 3)

end A079750

/-! ## A079750.P14955572070213143729

`A185108(n+1)-1`
-/

namespace A079750.P14955572070213143729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185108 (n + 1) - 1

end

end A079750.P14955572070213143729

namespace A079750

/-- `A185108(n+1)-1` -/
def P14955572070213143729.Spec : Prop :=
  ∀ n, P14955572070213143729.a n = A079750 (n + 3)

end A079750

/-! ## A079750.P10675312055170453991

`(n+3)*A185108(n)`
-/

namespace A079750.P10675312055170453991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A185108 n

end

end A079750.P10675312055170453991

namespace A079750

/-- `(n+3)*A185108(n)` -/
def P10675312055170453991.Spec : Prop :=
  ∀ n, P10675312055170453991.a n = A079750 (n + 3)

end A079750

/-! ## A079750.P1734933938029485433

`A079752(n+3)+2*A079751(n+3)`
-/

namespace A079750.P1734933938029485433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079752 (n + 3) + 2 * A079751 (n + 3)

end

end A079750.P1734933938029485433

namespace A079750

/-- `A079752(n+3)+2*A079751(n+3)` -/
def P1734933938029485433.Spec : Prop :=
  ∀ n, P1734933938029485433.a n = A079750 (n + 3)

end A079750

/-! ## A079750.P11481973946711329895

`A079751(n+3)+A079755(n+3)-A079756(n+3)`
-/

namespace A079750.P11481973946711329895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079751 (n + 3) + (A079755 (n + 3) - A079756 (n + 3))

end

end A079750.P11481973946711329895

namespace A079750

/-- `A079751(n+3)+A079755(n+3)-A079756(n+3)` -/
def P11481973946711329895.Spec : Prop :=
  ∀ n, P11481973946711329895.a n = A079750 (n + 3)

end A079750

/-!
# A079751: Operation count to create all permutations of n distinct elements using the "streamlined" version of Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2. Sequence gives number of cases where the j search loop runs beyond j=n-3.

The programs for A079751, the canonical program `A079751.P634610605138552981` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079751 has offset 3).

The definition of A079751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079751.P634610605138552981

`(n+3)*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079751

/-- `(n+3)*a(n-1)+1` -/
def P634610605138552981.Spec : Prop :=
  ∀ n, (P634610605138552981.a n : ℤ) = A079751 (n + 3)

theorem P634610605138552981.correct : P634610605138552981.Spec := by
  intro n
  simp only [A079751, Nat.add_sub_cancel]

end A079751

/-! ## A079751.P3112990023466702777

`a(n-1)/(n+3)^(-1)+1` with `a(0)=0`
-/

namespace A079751.P3112990023466702777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n + 3 : ℚ) ^ (-1 : ℤ) + 1

end

end A079751.P3112990023466702777

namespace A079751

/-- `a(n-1)/(n+3)^(-1)+1` -/
def P3112990023466702777.Spec : Prop :=
  ∀ n, P3112990023466702777.a n = (A079751 (n + 3) : ℚ)

end A079751

/-! ## A079751.P11817039681084048631

`1-(n-3-2*n)*a(n-1)` with `a(0)=0`
-/

namespace A079751.P11817039681084048631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((n : ℤ) - 3 - (2 * n : ℤ)) * a (n - 1)

end

end A079751.P11817039681084048631

namespace A079751

/-- `1-(n-3-2*n)*a(n-1)` -/
def P11817039681084048631.Spec : Prop :=
  ∀ n, P11817039681084048631.a n = A079751 (n + 3)

end A079751

/-! ## A079751.P1905385921215565079

`a(n-1)+lcm(n+2, a(n-1))+1` with `a(0)=0`
-/

namespace A079751.P1905385921215565079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Nat.lcm (n + 2) (a (n - 1)) + 1)

end

end A079751.P1905385921215565079

namespace A079751

/-- `a(n-1)+lcm(n+2, a(n-1))+1` -/
def P1905385921215565079.Spec : Prop :=
  ∀ n, (P1905385921215565079.a n : ℤ) = A079751 (n + 3)

end A079751

/-! ## A079751.P11401721382955333324

`A079750(n+3)+A079756(n+3)-A079755(n+3)`
-/

namespace A079751.P11401721382955333324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079750 (n + 3) + (A079756 (n + 3) - A079755 (n + 3))

end

end A079751.P11401721382955333324

namespace A079751

/-- `A079750(n+3)+A079756(n+3)-A079755(n+3)` -/
def P11401721382955333324.Spec : Prop :=
  ∀ n, P11401721382955333324.a n = A079751 (n + 3)

end A079751

/-!
# A079752: Operation count to create all permutations of n distinct elements using the "streamlined" version of Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2. Sequence gives number of times the search for an element exchangeable with a_j has to be started.

The programs for A079752, the canonical program `A079752.P3235896766038377865` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079752 has offset 3).

The definition of A079752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079752.P3235896766038377865

`(n+3)*a(n-1)+n+3-2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079752

/-- `(n+3)*a(n-1)+n+3-2` -/
def P3235896766038377865.Spec : Prop :=
  ∀ n, P3235896766038377865.a n = A079752 (n + 3)

theorem P3235896766038377865.correct : P3235896766038377865.Spec := by
  intro n
  simp only [A079752, Nat.add_sub_cancel]

end A079752

/-! ## A079752.P4176912151760421300

`(a(n-1)+1)*(n+3)-2` with `a(0)=0`
-/

namespace A079752.P4176912151760421300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * (n + 3 : ℤ) - 2

end

end A079752.P4176912151760421300

namespace A079752

/-- `(a(n-1)+1)*(n+3)-2` -/
def P4176912151760421300.Spec : Prop :=
  ∀ n, P4176912151760421300.a n = A079752 (n + 3)

end A079752

/-! ## A079752.P2437742056249910736

`a(n-1)/(n+3)^(-1)+n+1` with `a(0)=0`
-/

namespace A079752.P2437742056249910736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n + 3 : ℚ) ^ (-1 : ℤ) + (n + 1 : ℚ)

end

end A079752.P2437742056249910736

namespace A079752

/-- `a(n-1)/(n+3)^(-1)+n+1` -/
def P2437742056249910736.Spec : Prop :=
  ∀ n, P2437742056249910736.a n = (A079752 (n + 3) : ℚ)

end A079752

/-! ## A079752.P12487610785838755305

`A079753(n+3)-A079754(n+3)`
-/

namespace A079752.P12487610785838755305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079753 (n + 3) - A079754 (n + 3)

end

end A079752.P12487610785838755305

namespace A079752

/-- `A079753(n+3)-A079754(n+3)` -/
def P12487610785838755305.Spec : Prop :=
  ∀ n, P12487610785838755305.a n = A079752 (n + 3)

end A079752

/-! ## A079752.P1178814642779223789

`A079750(n+3)-2*A079751(n+3)`
-/

namespace A079752.P1178814642779223789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079750 (n + 3) - 2 * A079751 (n + 3)

end

end A079752.P1178814642779223789

namespace A079752

/-- `A079750(n+3)-2*A079751(n+3)` -/
def P1178814642779223789.Spec : Prop :=
  ∀ n, P1178814642779223789.a n = A079752 (n + 3)

end A079752

/-! ## A079752.P17328543867254700907

`A079755(n+3)-(A079756(n+3)+A079751(n+3))`
-/

namespace A079752.P17328543867254700907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079755 (n + 3) - (A079756 (n + 3) + A079751 (n + 3))

end

end A079752.P17328543867254700907

namespace A079752

/-- `A079755(n+3)-(A079756(n+3)+A079751(n+3))` -/
def P17328543867254700907.Spec : Prop :=
  ∀ n, P17328543867254700907.a n = A079752 (n + 3)

end A079752

/-!
# A079753: Operation count to create all permutations of n distinct elements using the "streamlined" version of Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2. Sequence gives total executions of step L3.1'.

The programs for A079753, the canonical program `A079753.P6692602537571412618` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079753 has offset 3).

The definition of A079753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079753.P6692602537571412618

`(n+3)*a(n-1)+(n+2)*(n+1)/2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079753

/-- `(n+3)*a(n-1)+(n+2)*(n+1)/2` -/
def P6692602537571412618.Spec : Prop :=
  ∀ n, P6692602537571412618.a n = (A079753 (n + 3) : ℚ)

end A079753

/-! ## A079753.P8018758531678520075

`A079752(n+3)+A079754(n+3)`
-/

namespace A079753.P8018758531678520075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079752 (n + 3) + A079754 (n + 3)

end

end A079753.P8018758531678520075

namespace A079753

/-- `A079752(n+3)+A079754(n+3)` -/
def P8018758531678520075.Spec : Prop :=
  ∀ n, P8018758531678520075.a n = A079753 (n + 3)

end A079753

/-! ## A079753.P8465144472803395609

`∑[n+1]+(n+3)*a(n-1)` with `a(0)=0`
-/

namespace A079753.P8465144472803395609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3) * a (n - 1)

end

end A079753.P8465144472803395609

namespace A079753

/-- `∑[n+1]+(n+3)*a(n-1)` -/
def P8465144472803395609.Spec : Prop :=
  ∀ n, (P8465144472803395609.a n : ℤ) = A079753 (n + 3)

end A079753

/-! ## A079753.P3604852860885089123

`floor(C(n+2, 2)+(n+3)*a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A079753.P3604852860885089123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (n + 2) 2 + (n + 3) * a (n - 1)

end

end A079753.P3604852860885089123

namespace A079753

/-- `floor(C(n+2, 2)+(n+3)*a(n-1))` -/
def P3604852860885089123.Spec : Prop :=
  ∀ n, (P3604852860885089123.a n : ℤ) = A079753 (n + 3)

end A079753

/-! ## A079753.P4849628864288692676

`A079754(n+3)+A079755(n+3)-(A079756(n+3)+A079751(n+3))`
-/

namespace A079753.P4849628864288692676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079754 (n + 3) + (A079755 (n + 3) - (A079756 (n + 3) + A079751 (n + 3)))

end

end A079753.P4849628864288692676

namespace A079753

/-- `A079754(n+3)+A079755(n+3)-(A079756(n+3)+A079751(n+3))` -/
def P4849628864288692676.Spec : Prop :=
  ∀ n, P4849628864288692676.a n = A079753 (n + 3)

end A079753

/-!
# A079754: Operation count to create all permutations of n distinct elements using the "streamlined" version of Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2. Sequence gives number of times l has to be repeatedly decreased in step L3.1'.

The programs for A079754, the canonical program `A079754.P12823815711484990037` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079754 has offset 3).

The definition of A079754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079754.P12823815711484990037

`(n+3)*a(n-1)+(n+1)*n/2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079754

/-- `(n+3)*a(n-1)+(n+1)*n/2` -/
def P12823815711484990037.Spec : Prop :=
  ∀ n, P12823815711484990037.a n = (A079754 (n + 3) : ℚ)

end A079754

/-! ## A079754.P17067914600434855671

`A079753(n+3)-A079752(n+3)`
-/

namespace A079754.P17067914600434855671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079753 (n + 3) - A079752 (n + 3)

end

end A079754.P17067914600434855671

namespace A079754

/-- `A079753(n+3)-A079752(n+3)` -/
def P17067914600434855671.Spec : Prop :=
  ∀ n, P17067914600434855671.a n = A079754 (n + 3)

end A079754

/-! ## A079754.P6966865467954793438

`∑[n]+(n+3)*a(n-1)` with `a(0)=0`
-/

namespace A079754.P6966865467954793438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3) * a (n - 1)

end

end A079754.P6966865467954793438

namespace A079754

/-- `∑[n]+(n+3)*a(n-1)` -/
def P6966865467954793438.Spec : Prop :=
  ∀ n, (P6966865467954793438.a n : ℤ) = A079754 (n + 3)

end A079754

/-! ## A079754.P16393379881693659358

`floor(C(n+1, 2)+(n+3)*a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A079754.P16393379881693659358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (n + 1) 2 + (n + 3) * a (n - 1)

end

end A079754.P16393379881693659358

namespace A079754

/-- `floor(C(n+1, 2)+(n+3)*a(n-1))` -/
def P16393379881693659358.Spec : Prop :=
  ∀ n, (P16393379881693659358.a n : ℤ) = A079754 (n + 3)

end A079754

/-! ## A079754.P7663781772746114947

`A079753(n+3)-(A079755(n+3)-(A079756(n+3)+A079751(n+3)))`
-/

namespace A079754.P7663781772746114947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079753 (n + 3) - (A079755 (n + 3) - (A079756 (n + 3) + A079751 (n + 3)))

end

end A079754.P7663781772746114947

namespace A079754

/-- `A079753(n+3)-(A079755(n+3)-(A079756(n+3)+A079751(n+3)))` -/
def P7663781772746114947.Spec : Prop :=
  ∀ n, P7663781772746114947.a n = A079754 (n + 3)

end A079754

/-!
# A079755: Operation count to create all permutations of n distinct elements using the "streamlined" version of Knuth's Algorithm L (lexicographic permutation generation).

The programs for A079755, the canonical program `A079755.P16476264205122924894` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079755 has offset 3).

The definition of A079755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079755.P16476264205122924894

`(n+3)*a(n-1)+(n+2)*floor((n+2)/2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079755

/-- `(n+3)*a(n-1)+(n+2)*floor((n+2)/2)` -/
def P16476264205122924894.Spec : Prop :=
  ∀ n, P16476264205122924894.a n = A079755 (n + 3)

theorem P16476264205122924894.correct : P16476264205122924894.Spec := by
  intro n
  simp only [A079755, Nat.add_sub_cancel]

end A079755

/-! ## A079755.P4306646757776262349

`A139176(n+3)+A079756(n+3)`
-/

namespace A079755.P4306646757776262349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139176 (n + 3) + A079756 (n + 3)

end

end A079755.P4306646757776262349

namespace A079755

/-- `A139176(n+3)+A079756(n+3)` -/
def P4306646757776262349.Spec : Prop :=
  ∀ n, P4306646757776262349.a n = A079755 (n + 3)

end A079755

/-! ## A079755.P7367546974206588323

`A079885(n+3)-A079751(n+3)`
-/

namespace A079755.P7367546974206588323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079885 (n + 3) - A079751 (n + 3)

end

end A079755.P7367546974206588323

namespace A079755

/-- `A079885(n+3)-A079751(n+3)` -/
def P7367546974206588323.Spec : Prop :=
  ∀ n, P7367546974206588323.a n = A079755 (n + 3)

end A079755

/-! ## A079755.P10310424257524421126

`A079756(n+3)+A139153(n+3)-2`
-/

namespace A079755.P10310424257524421126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079756 (n + 3) + (A139153 (n + 3) - 2)

end

end A079755.P10310424257524421126

namespace A079755

/-- `A079756(n+3)+A139153(n+3)-2` -/
def P10310424257524421126.Spec : Prop :=
  ∀ n, P10310424257524421126.a n = A079755 (n + 3)

end A079755

/-! ## A079755.P10870770337067157722

`A079751(n+3)+A079756(n+3)+A079752(n+3)`
-/

namespace A079755.P10870770337067157722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079751 (n + 3) + (A079756 (n + 3) + A079752 (n + 3))

end

end A079755.P10870770337067157722

namespace A079755

/-- `A079751(n+3)+A079756(n+3)+A079752(n+3)` -/
def P10870770337067157722.Spec : Prop :=
  ∀ n, P10870770337067157722.a n = A079755 (n + 3)

end A079755

/-! ## A079755.P16591199644520151350

`A079750(n+3)+A079756(n+3)-A079751(n+3)`
-/

namespace A079755.P16591199644520151350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079750 (n + 3) + (A079756 (n + 3) - A079751 (n + 3))

end

end A079755.P16591199644520151350

namespace A079755

/-- `A079750(n+3)+A079756(n+3)-A079751(n+3)` -/
def P16591199644520151350.Spec : Prop :=
  ∀ n, P16591199644520151350.a n = A079755 (n + 3)

end A079755

/-!
# A079756: Operation count to create all permutations of n distinct elements using the "streamlined" version of Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2. Sequence gives number of interchanges in reversal step.

The programs for A079756, the canonical program `A079756.P14139708062530518625` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079756 has offset 3).

The definition of A079756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079756.P14139708062530518625

`(n+3)*a(n-1)+(n+2)*(floor((n+2)/2)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079756

/-- `(n+3)*a(n-1)+(n+2)*(floor((n+2)/2)-1)` -/
def P14139708062530518625.Spec : Prop :=
  ∀ n, P14139708062530518625.a n = A079756 (n + 3)

theorem P14139708062530518625.correct : P14139708062530518625.Spec := by
  intro n
  simp only [A079756, Nat.add_sub_cancel]

end A079756

/-! ## A079756.P14094381390358027018

`A079755(n+3)-A139176(n+3)`
-/

namespace A079756.P14094381390358027018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079755 (n + 3) - A139176 (n + 3)

end

end A079756.P14094381390358027018

namespace A079756

/-- `A079755(n+3)-A139176(n+3)` -/
def P14094381390358027018.Spec : Prop :=
  ∀ n, P14094381390358027018.a n = A079756 (n + 3)

end A079756

/-! ## A079756.P9524910771993907414

`A079755(n+3)+2-A139153(n+3)`
-/

namespace A079756.P9524910771993907414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079755 (n + 3) + (2 - A139153 (n + 3))

end

end A079756.P9524910771993907414

namespace A079756

/-- `A079755(n+3)+2-A139153(n+3)` -/
def P9524910771993907414.Spec : Prop :=
  ∀ n, P9524910771993907414.a n = A079756 (n + 3)

end A079756

/-! ## A079756.P17848535205252934518

`A079755(n+3)+A057428(n)*A139176(n+3)`
-/

namespace A079756.P17848535205252934518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079755 (n + 3) + A057428 n * A139176 (n + 3)

end

end A079756.P17848535205252934518

namespace A079756

/-- `A079755(n+3)+A057428(n)*A139176(n+3)` -/
def P17848535205252934518.Spec : Prop :=
  ∀ n, P17848535205252934518.a n = A079756 (n + 3)

end A079756

/-! ## A079756.P2410945552521578882

`A079751(n+3)+A079755(n+3)-A079750(n+3)`
-/

namespace A079756.P2410945552521578882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079751 (n + 3) + (A079755 (n + 3) - A079750 (n + 3))

end

end A079756.P2410945552521578882

namespace A079756

/-- `A079751(n+3)+A079755(n+3)-A079750(n+3)` -/
def P2410945552521578882.Spec : Prop :=
  ∀ n, P2410945552521578882.a n = A079756 (n + 3)

end A079756

/-! ## A079756.P5413239708370576266

`A079755(n+3)-(A079752(n+3)+A079751(n+3))`
-/

namespace A079756.P5413239708370576266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079755 (n + 3) - (A079752 (n + 3) + A079751 (n + 3))

end

end A079756.P5413239708370576266

namespace A079756

/-- `A079755(n+3)-(A079752(n+3)+A079751(n+3))` -/
def P5413239708370576266.Spec : Prop :=
  ∀ n, P5413239708370576266.a n = A079756 (n + 3)

end A079756

/-!
# A079757: Periodic sequence 1, 0, -2, 3, -2, 0, ...

The programs for A079757, the canonical program `A079757.P11029413421237544602` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079757 has offset 0).

The definition of A079757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079757.P11029413421237544602

`A057079(2*n+1)-(-1)^floor((2*n+1)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A079757

/-- `A057079(2*n+1)-(-1)^floor((2*n+1)/2)` -/
def P11029413421237544602.Spec : Prop :=
  ∀ n, P11029413421237544602.a n = (A079757 n : ℚ)

end A079757

/-!
# A079759: Let b(0)=0. For n >= 1, b(n) is the least k > b(n-1)+1 such that k divides (k-1)!/b(n-1)!, and a(n) = (b(n)-1)!/(b(n-1)!*b(n)).

The programs for A079759, there is no canonical definition to state claims against.
-/

/-! ## A079759.P17289754536660157335

`A109897(n)/A079760(n*a(A000038(n)))` with `a(0)=1`
-/

namespace A079759.P17289754536660157335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A109897 n : ℚ) / (A079760 (SequenceMachineLib.roundAway ((n : ℚ) * a (A000038 n).toNat)).toNat : ℚ)

end

end A079759.P17289754536660157335

/-! ## A079759.P9727342744663427884

`A109897(n)/A079760(n/a(A000038(n)))` with `a(0)=1`
-/

namespace A079759.P9727342744663427884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A109897 n : ℚ) / (A079760 (SequenceMachineLib.roundAway ((n : ℚ) / a (A000038 n).toNat)).toNat : ℚ)

end

end A079759.P9727342744663427884

/-!
# A079760: Denominator in the expression for a(n) in A079759.

The programs for A079760, there is no canonical definition to state claims against.
-/

/-! ## A079760.P18129185641389969437

`A332559(a(n-1)+1)` with `a(0)=6`
-/

namespace A079760.P18129185641389969437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A332559 (a (n - 1) + 1).toNat

end

end A079760.P18129185641389969437

/-! ## A079760.P6988595293850916574

`a(n-1)+A061836(a(n-1)+1)+1` with `a(0)=6`
-/

namespace A079760.P6988595293850916574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (A061836 (a (n - 1) + 1).toNat + 1)

end

end A079760.P6988595293850916574

/-! ## A079760.P8325708197003938386

`A332559(A026806(6*a(n-1)))` with `a(0)=6`
-/

namespace A079760.P8325708197003938386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A332559 (A026806 (6 * a (n - 1)).toNat).toNat

end

end A079760.P8325708197003938386

/-! ## A079760.P5184162804223995117

`∑[A109896(n+1)+1]+1`
-/

namespace A079760.P5184162804223995117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109896 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A079760.P5184162804223995117

/-! ## A079760.P3891622353507113370

`∑[A109896(n+1)+A054977(n)]`
-/

namespace A079760.P3891622353507113370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109896 (n + 1) + A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079760.P3891622353507113370

/-! ## A079760.P51486219881639547

`A109895(n+2)`
-/

namespace A079760.P51486219881639547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (n + 2)

end

end A079760.P51486219881639547

/-! ## A079760.P4602404733437691841

`record[A109895(or(n, A000038(n)))]`
-/

namespace A079760.P4602404733437691841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079760.P4602404733437691841

/-! ## A079760.P4418381502690183769

`record[A109895(xor(n, A000038(n)))]`
-/

namespace A079760.P4418381502690183769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079760.P4418381502690183769

/-! ## A079760.P15196278797790878112

`record[A109895(A000267(A004442(n)))]`
-/

namespace A079760.P15196278797790878112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (A000267 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079760.P15196278797790878112

/-! ## A079760.P17387858542758753052

`record[A109895(A014682(A004277(n)))]`
-/

namespace A079760.P17387858542758753052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (A014682 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079760.P17387858542758753052

/-!
# A079761: Number of positions that are exactly n moves from the starting position in the 2 X 2 X 2 Rubik cube puzzle counting a half-turn as a single move.

The programs for A079761, there is no canonical definition to state claims against.
-/

/-! ## A079761.P2556744544204214037

`A217156(A079735(n))+A079764(n)`
-/

namespace A079761.P2556744544204214037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (A079735 n).toNat + A079764 n

end

end A079761.P2556744544204214037

/-!
# A079762: Number of positions that are exactly n moves from the starting position in the 2 X 2 X 2 Rubik cube puzzle.

The programs for A079762, there is no canonical definition to state claims against.
-/

/-! ## A079762.P9288270249760922730

`A194175(A123348(n+1))`
-/

namespace A079762.P9288270249760922730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194175 (A123348 (n + 1)).toNat

end

end A079762.P9288270249760922730

/-!
# A079764: Number of positions that are exactly n moves from the starting position in the Pyramorphix puzzle.

The programs for A079764, there is no canonical definition to state claims against.
-/

/-! ## A079764.P13038546029659144446

`A079761(n)-A217156(A079735(n))`
-/

namespace A079764.P13038546029659144446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079761 n - A217156 (A079735 n).toNat

end

end A079764.P13038546029659144446

/-!
# A079766: Number of positions that are exactly n moves from the starting position in the Dino Cube puzzle.

The programs for A079766, there is no canonical definition to state claims against.
-/

/-! ## A079766.P10930071848924182552

`8*A241783(a(n-1))+8` with `a(0)=2`
-/

namespace A079766.P10930071848924182552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * A241783 (a (n - 1)).toNat + 8

end

end A079766.P10930071848924182552

/-!
# A079767: Number of positions that are exactly n moves from the starting position in the Dino Cube puzzle, mirror positions counted once.

The programs for A079767, there is no canonical definition to state claims against.
-/

/-! ## A079767.P11155922970789446669

`A000027(A079768(n))`
-/

namespace A079767.P11155922970789446669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A079768 n).toNat

end

end A079767.P11155922970789446669

/-! ## A079767.P1624195473503235946

`A079768(A228909(n)+n)`
-/

namespace A079767.P1624195473503235946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079768 (A228909 n + (n : ℤ)).toNat

end

end A079767.P1624195473503235946

/-!
# A079769: Number of positions that are exactly n moves from the starting position in the Bandaged Pyraminx puzzle.

The programs for A079769, there is no canonical definition to state claims against.
-/

/-! ## A079769.P11042558494120428437

`A331873(∑[∑[A353850(n)]])`
-/

namespace A079769.P11042558494120428437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353850 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079769.P11042558494120428437

/-!
# A079771: Number of positions that are exactly n moves from the starting position in the Bicube or Bandaged Rubik's Cube puzzle.

The programs for A079771, there is no canonical definition to state claims against.
-/

/-! ## A079771.P2607877983417267191

`A324700(A133263(2*n)+1)-1`
-/

namespace A079771.P2607877983417267191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324700 (A133263 (2 * n) + 1).toNat - 1

end

end A079771.P2607877983417267191

/-! ## A079771.P4823033468532456800

`A243650(A243650(n)+A046682(2*n+1))`
-/

namespace A079771.P4823033468532456800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243650 (A243650 n + A046682 (2 * n + 1)).toNat

end

end A079771.P4823033468532456800

/-!
# A079772: Let C(n) be the n-th composite number; then a(n) is the smallest number > C(n) and not coprime to C(n).

The programs for A079772, there is no canonical definition to state claims against.
-/

/-! ## A079772.P14877712380787135765

`A002808(n+1)+A056608(n+1)`
-/

namespace A079772.P14877712380787135765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A056608 (n + 1)

end

end A079772.P14877712380787135765

/-! ## A079772.P10873523098867468157

`A085428(n)+A085273(n+1)`
-/

namespace A079772.P10873523098867468157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085428 n + A085273 (n + 1)

end

end A079772.P10873523098867468157

/-! ## A079772.P9253634721085571722

`A056608(n+1)+Δ[A053767(n)]`
-/

namespace A079772.P9253634721085571722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) + (f1 (n + 1) - f1 n)

end

end A079772.P9253634721085571722

/-! ## A079772.P13794199154715276675

`A002808(n+1)+p?[A107286(n)]`
-/

namespace A079772.P13794199154715276675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079772.P13794199154715276675

/-! ## A079772.P6432197194209595667

`p?[A107286(n)]+A018252(n+2)`
-/

namespace A079772.P6432197194209595667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A018252 (n + 2)

end

end A079772.P6432197194209595667

/-! ## A079772.P6012114396933361703

`A056608(n+1)+A018252(n+2)`
-/

namespace A079772.P6012114396933361703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) + A018252 (n + 2)

end

end A079772.P6012114396933361703

/-! ## A079772.P16406033224899055963

`A282671(n+1)-A085271(n+1)`
-/

namespace A079772.P16406033224899055963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1) - A085271 (n + 1)

end

end A079772.P16406033224899055963

/-! ## A079772.P2688764478892793367

`A002808(n+1)+p?[A074828(n+1)]`
-/

namespace A079772.P2688764478892793367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079772.P2688764478892793367

/-! ## A079772.P13300969648621903717

`A056608(n+1)+A072668(n+1)+1`
-/

namespace A079772.P13300969648621903717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) + (A072668 (n + 1) + 1)

end

end A079772.P13300969648621903717

/-! ## A079772.P12066485910099132003

`(A160180(n+1)+1)*A056608(n+1)`
-/

namespace A079772.P12066485910099132003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160180 (n + 1) + 1) * A056608 (n + 1)

end

end A079772.P12066485910099132003

/-! ## A079772.P12244525203872285720

`A056608(n+1)+A282671(n+1)/2`
-/

namespace A079772.P12244525203872285720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056608 (n + 1) : ℚ) + (A282671 (n + 1) : ℚ) / 2

end

end A079772.P12244525203872285720

/-! ## A079772.P8438197693681512382

`A056608(n+1)+comp[C(A020639(n+1), n)]`
-/

namespace A079772.P8438197693681512382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A079772.P8438197693681512382

/-! ## A079772.P2269894992999276856

`lt[1, A328847(n)]+A020639(A002808(n+1))`
-/

namespace A079772.P2269894992999276856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + A020639 (A002808 (n + 1)).toNat

end

end A079772.P2269894992999276856

/-! ## A079772.P2131756561664221729

`(A160180(n+1)+1)*A020639(A002808(n+1))`
-/

namespace A079772.P2131756561664221729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160180 (n + 1) + 1) * A020639 (A002808 (n + 1)).toNat

end

end A079772.P2131756561664221729

/-! ## A079772.P8997248964064918064

`A056608(n+1)+A085271(n+1)+A056608(n+1)`
-/

namespace A079772.P8997248964064918064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) + (A085271 (n + 1) + A056608 (n + 1))

end

end A079772.P8997248964064918064

/-! ## A079772.P254693483644825934

`A002808(n+1)+A002808(n+1)-A085271(n+1)`
-/

namespace A079772.P254693483644825934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A002808 (n + 1) - A085271 (n + 1))

end

end A079772.P254693483644825934

/-! ## A079772.P11745814886670257136

`A085273(n+1)+A085275(n+1)-A085271(n+1)`
-/

namespace A079772.P11745814886670257136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085273 (n + 1) + (A085275 (n + 1) - A085271 (n + 1))

end

end A079772.P11745814886670257136

/-! ## A079772.P2654371026129353827

`A056608(n+1)+A161986(n+1)-A161849(n+1)`
-/

namespace A079772.P2654371026129353827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) + (A161986 (n + 1) - A161849 (n + 1))

end

end A079772.P2654371026129353827

/-! ## A079772.P11417495504457960329

`A056608(n+1)+A052369(n+1)*A161003(n+1)`
-/

namespace A079772.P11417495504457960329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) + A052369 (n + 1) * A161003 (n + 1)

end

end A079772.P11417495504457960329

/-! ## A079772.P10148612971624748159

`comp[C(A006530(n+1), n)]+A020639(comp[C(A006530(n+1), n)])`
-/

namespace A079772.P10148612971624748159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + A020639 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A079772.P10148612971624748159

/-!
# A079773: a(n) = 2*a(n-1)+15*a(n-2) with n>0, a(0)=0, a(1)=1.

The programs for A079773, the canonical program `A079773.P8837928471226902068` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079773 has offset 0).

The definition of A079773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+15*a(n-2)` (program `A079773.P8837928471226902068`, by `A079773.P8837928471226902068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079773.P8837928471226902068

`2*a(n-1)+15*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079773

/-- `2*a(n-1)+15*a(n-2)` -/
def P8837928471226902068.Spec : Prop :=
  ∀ n, (P8837928471226902068.a n : ℤ) = A079773 n

theorem P8837928471226902068.correct : P8837928471226902068.Spec := by
  intro n
  simp only [A079773]

end A079773

/-! ## A079773.P5806942699869245426

`(5^n-(-3)^n)/8`
-/

namespace A079773.P5806942699869245426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - (-3) ^ n : ℚ) / 8

end

end A079773.P5806942699869245426

namespace A079773

/-- `(5^n-(-3)^n)/8` -/
def P5806942699869245426.Spec : Prop :=
  ∀ n, P5806942699869245426.a n = (A079773 n : ℚ)

theorem P5806942699869245426.correct : P5806942699869245426.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A079773, Nat.add_sub_cancel, A079773.P5806942699869245426.a, A079773.P8837928471226902068.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A079773, Nat.add_sub_cancel, A079773.P5806942699869245426.a, A079773.P8837928471226902068.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079773

/-! ## A079773.P11149483842884176954

`ogf(x/(1-2x-15x^2))`
-/

namespace A079773.P11149483842884176954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -15] n

end

end A079773.P11149483842884176954

namespace A079773

/-- `ogf(x/(1-2x-15x^2))` -/
def P11149483842884176954.Spec : Prop :=
  ∀ n, P11149483842884176954.a n = A079773 n

end A079773

/-! ## A079773.P1809599434462394322

`5^(n-1)-3*a(n-1)` with `a(0)=0`
-/

namespace A079773.P1809599434462394322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 3 * a (n - 1)

end

end A079773.P1809599434462394322

namespace A079773

/-- `5^(n-1)-3*a(n-1)` -/
def P1809599434462394322.Spec : Prop :=
  ∀ n, P1809599434462394322.a n = (A079773 n : ℚ)

end A079773

/-! ## A079773.P3348804060831470693

`5^(n-1)-lcm(3, a(n-1))` with `a(0)=0`
-/

namespace A079773.P3348804060831470693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (Int.lcm 3 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A079773.P3348804060831470693

namespace A079773

/-- `5^(n-1)-lcm(3, a(n-1))` -/
def P3348804060831470693.Spec : Prop :=
  ∀ n, P3348804060831470693.a n = (A079773 n : ℚ)

end A079773

/-! ## A079773.P815874053606985632

`A120612(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A079773.P815874053606985632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A120612 (n - 1) + a (n - 1)

end

end A079773.P815874053606985632

namespace A079773

/-- `A120612(n-1)+a(n-1)` -/
def P815874053606985632.Spec : Prop :=
  ∀ n, P815874053606985632.a n = A079773 n

end A079773

/-! ## A079773.P3995973022391646349

`∑[A120612(n)]-A120612(n)`
-/

namespace A079773.P3995973022391646349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A120612 n

end

end A079773.P3995973022391646349

namespace A079773

/-- `∑[A120612(n)]-A120612(n)` -/
def P3995973022391646349.Spec : Prop :=
  ∀ n, P3995973022391646349.a n = A079773 n

end A079773

/-! ## A079773.P16730961346025572114

`Δ[A120612(n)/16]`
-/

namespace A079773.P16730961346025572114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120612 n : ℚ) / 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079773.P16730961346025572114

namespace A079773

/-- `Δ[A120612(n)/16]` -/
def P16730961346025572114.Spec : Prop :=
  ∀ n, P16730961346025572114.a n = (A079773 n : ℚ)

end A079773

/-!
# A079774: Consider the triangle shown below in which the n-th row contains the n smallest terms in increasing order having a common factor > 1, the first term being the n-th composite number; sequence gives the last term of each row.

The programs for A079774, there is no canonical definition to state claims against.
-/

/-! ## A079774.P13440265838084200374

`Δ[A053767(n)]+n*A056608(n+1)`
-/

namespace A079774.P13440265838084200374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A056608 (n + 1)

end

end A079774.P13440265838084200374

/-! ## A079774.P15931121498081626099

`A002808(n+1)+n*p?[A107286(n)]`
-/

namespace A079774.P15931121498081626099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079774.P15931121498081626099

/-! ## A079774.P12554237026615328551

`A002808(n+1)+n*A056608(n+1)`
-/

namespace A079774.P12554237026615328551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (n : ℤ) * A056608 (n + 1)

end

end A079774.P12554237026615328551

/-! ## A079774.P8756147071857474784

`A002808(n+1)+n*A073813(n+1)`
-/

namespace A079774.P8756147071857474784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (n : ℤ) * A073813 (n + 1)

end

end A079774.P8756147071857474784

/-! ## A079774.P8779517627427618359

`(A160180(n+1)+n)*A056608(n+1)`
-/

namespace A079774.P8779517627427618359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160180 (n + 1) + (n : ℤ)) * A056608 (n + 1)

end

end A079774.P8779517627427618359

/-! ## A079774.P8561131260698941956

`A018252(n+2)+n*A056608(n+1)`
-/

namespace A079774.P8561131260698941956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (n : ℤ) * A056608 (n + 1)

end

end A079774.P8561131260698941956

/-! ## A079774.P10763753281039982687

`A018252(n+2)+n*A073813(n+1)`
-/

namespace A079774.P10763753281039982687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (n : ℤ) * A073813 (n + 1)

end

end A079774.P10763753281039982687

/-! ## A079774.P10280581432808625864

`A141468(n+3)+n*A056608(n+1)`
-/

namespace A079774.P10280581432808625864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) + (n : ℤ) * A056608 (n + 1)

end

end A079774.P10280581432808625864

/-! ## A079774.P9881641626181075934

`comp[C(A020639(n+1), n)]+n*A056608(n+1)`
-/

namespace A079774.P9881641626181075934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (n : ℤ) * A056608 (n + 1)

end

end A079774.P9881641626181075934

/-! ## A079774.P11143475649548038947

`n*p?[A020639(n+2)%(n+1)]+comp[A000040(n+1)-2]+2`
-/

namespace A079774.P11143475649548038947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 2)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2 : ℤ)

end

end A079774.P11143475649548038947

/-! ## A079774.P4572583849590911521

`A079775(∑[n+1])`
-/

namespace A079774.P4572583849590911521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079775 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079774.P4572583849590911521

/-!
# A079776: a(n) = sum of n-th row of the triangle pertaining to A079774(n).

The programs for A079776, there is no canonical definition to state claims against.
-/

/-! ## A079776.P950041603077517264

`∑[A000005(8*A352972(n))]`
-/

namespace A079776.P950041603077517264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * A352972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079776.P950041603077517264

/-! ## A079776.P12117981981886181750

`∑[and(A076875(n+2), A270613(n+5))]`
-/

namespace A079776.P12117981981886181750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076875 (n + 2)) (A270613 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079776.P12117981981886181750

/-!
# A079777: a(0) = 0, a(1) = 1; for n > 1, a(n) = (a(n-1) + a(n-2)) (mod n).

The programs for A079777, the canonical program `A079777.P9832097835762832949` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079777 has offset 0).

The definition of A079777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079777.P9832097835762832949

`(a(n-1)+a(n-2))%n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079777

/-- `(a(n-1)+a(n-2))%n` -/
def P9832097835762832949.Spec : Prop :=
  ∀ n, (P9832097835762832949.a n : ℤ) = A079777 n

theorem P9832097835762832949.correct : P9832097835762832949.Spec := by
  intro n
  simp only [A079777]

end A079777

/-! ## A079777.P8416351973456739513

`(a(n-1)-floor(-a(n-2)))%n` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A079777.P8416351973456739513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (a (n - 1) - (-a (n - 2))) (n : ℤ)

end

end A079777.P8416351973456739513

namespace A079777

/-- `(a(n-1)-floor(-a(n-2)))%n` -/
def P8416351973456739513.Spec : Prop :=
  ∀ n, P8416351973456739513.a n = A079777 n

end A079777

/-! ## A079777.P10755175254856040938

`(a(n-1)-round(-a(n-2)))%n` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A079777.P10755175254856040938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (a (n - 1) - (-a (n - 2))) (n : ℤ)

end

end A079777.P10755175254856040938

namespace A079777

/-- `(a(n-1)-round(-a(n-2)))%n` -/
def P10755175254856040938.Spec : Prop :=
  ∀ n, P10755175254856040938.a n = A079777 n

end A079777

/-! ## A079777.P8692357230449525308

`(a(n-1)--a(n-2)%n)%n` with `a(0)=0, a(1)=1`
-/

namespace A079777.P8692357230449525308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (a (n - 1) - Int.tmod (-a (n - 2)) (n : ℤ)) (n : ℤ)

end

end A079777.P8692357230449525308

namespace A079777

/-- `(a(n-1)--a(n-2)%n)%n` -/
def P8692357230449525308.Spec : Prop :=
  ∀ n, P8692357230449525308.a n = A079777 n

end A079777

/-! ## A079777.P4636008122305664658

`(2*a(n-1)-(a(n-1)-a(n-2)))%n` with `a(0)=0, a(1)=1`
-/

namespace A079777.P4636008122305664658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (2 * a (n - 1) - (a (n - 1) - a (n - 2))) (n : ℤ)

end

end A079777.P4636008122305664658

namespace A079777

/-- `(2*a(n-1)-(a(n-1)-a(n-2)))%n` -/
def P4636008122305664658.Spec : Prop :=
  ∀ n, P4636008122305664658.a n = A079777 n

end A079777

/-! ## A079777.P1673427203002063984

`n-A168360(n)`
-/

namespace A079777.P1673427203002063984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A168360 n

end

end A079777.P1673427203002063984

namespace A079777

/-- `n-A168360(n)` -/
def P1673427203002063984.Spec : Prop :=
  ∀ n, P1673427203002063984.a n = A079777 n

end A079777

/-! ## A079777.P5795853598788018094

`abs(A168360(n)+A001489(n))`
-/

namespace A079777.P5795853598788018094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168360 n + A001489 n|

end

end A079777.P5795853598788018094

namespace A079777

/-- `abs(A168360(n)+A001489(n))` -/
def P5795853598788018094.Spec : Prop :=
  ∀ n, P5795853598788018094.a n = A079777 n

end A079777

/-! ## A079777.P10605971687355827435

`A001057(2*A168360(n))+n`
-/

namespace A079777.P10605971687355827435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A168360 n).toNat + (n : ℤ)

end

end A079777.P10605971687355827435

namespace A079777

/-- `A001057(2*A168360(n))+n` -/
def P10605971687355827435.Spec : Prop :=
  ∀ n, P10605971687355827435.a n = A079777 n

end A079777

/-! ## A079777.P15764008296889091689

`A025581(A168360(n)+∑[n])`
-/

namespace A079777.P15764008296889091689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A168360 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A079777.P15764008296889091689

namespace A079777

/-- `A025581(A168360(n)+∑[n])` -/
def P15764008296889091689.Spec : Prop :=
  ∀ n, P15764008296889091689.a n = A079777 n

end A079777

/-!
# A079778: a(n) = smallest prime number such that a(n) - n is composite.

The programs for A079778, there is no canonical definition to state claims against.
-/

/-! ## A079778.P15410483819953622191

`A007918(A187829(n+1)+A089090(n+1))`
-/

namespace A079778.P15410483819953622191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A187829 (n + 1) + A089090 (n + 1)).toNat

end

end A079778.P15410483819953622191

/-! ## A079778.P3366812634326062646

`A159477(A187829(n+1)+A089090(n+1))`
-/

namespace A079778.P3366812634326062646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A187829 (n + 1) + A089090 (n + 1)).toNat

end

end A079778.P3366812634326062646

/-! ## A079778.P7659581283593128185

`A007918(A187829(n+1)+A053669(n+1)²)`
-/

namespace A079778.P7659581283593128185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A187829 (n + 1) + A053669 (n + 1) ^ 2).toNat

end

end A079778.P7659581283593128185

/-! ## A079778.P16649937160482673744

`A159477(A187829(n+1)+A053669(n+1)²)`
-/

namespace A079778.P16649937160482673744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A187829 (n + 1) + A053669 (n + 1) ^ 2).toNat

end

end A079778.P16649937160482673744

/-!
# A079779: a(n) = smallest prime > n*prime(n).

The programs for A079779, the canonical program `A079779.P14774343609716682029` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079779 has offset 1).

The definition of A079779 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079779.P14774343609716682029

`A151800(A033286(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A079779

/-- `A151800(A033286(n+1))` -/
def P14774343609716682029.Spec : Prop :=
  ∀ n, P14774343609716682029.a n = A079779 (n + 1)

theorem P14774343609716682029.correct : P14774343609716682029.Spec := by
  intro n
  simp only [A079779, Nat.add_sub_cancel]

end A079779

/-! ## A079779.P3620630078117493295

`A065091(A057855(n+1))`
-/

namespace A079779.P3620630078117493295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A057855 (n + 1)).toNat

end

end A079779.P3620630078117493295

namespace A079779

/-- `A065091(A057855(n+1))` -/
def P3620630078117493295.Spec : Prop :=
  ∀ n, P3620630078117493295.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P8445874902527976898

`A000040(A057855(n+1)+1)`
-/

namespace A079779.P8445874902527976898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A057855 (n + 1) + 1).toNat

end

end A079779.P8445874902527976898

namespace A079779

/-- `A000040(A057855(n+1)+1)` -/
def P8445874902527976898.Spec : Prop :=
  ∀ n, P8445874902527976898.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P16262765009765382568

`A006005(A057855(n+1)+1)`
-/

namespace A079779.P16262765009765382568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A057855 (n + 1) + 1).toNat

end

end A079779.P16262765009765382568

namespace A079779

/-- `A006005(A057855(n+1)+1)` -/
def P16262765009765382568.Spec : Prop :=
  ∀ n, P16262765009765382568.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P7467287208889860612

`A318871(A057855(n+1)+1)`
-/

namespace A079779.P7467287208889860612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (A057855 (n + 1) + 1).toNat

end

end A079779.P7467287208889860612

namespace A079779

/-- `A318871(A057855(n+1)+1)` -/
def P7467287208889860612.Spec : Prop :=
  ∀ n, P7467287208889860612.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P16423355919977864581

`A008578(A057855(n+1)+2)`
-/

namespace A079779.P16423355919977864581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A057855 (n + 1) + 2).toNat

end

end A079779.P16423355919977864581

namespace A079779

/-- `A008578(A057855(n+1)+2)` -/
def P16423355919977864581.Spec : Prop :=
  ∀ n, P16423355919977864581.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P4447152154558981001

`A182986(A057855(n+1)+2)`
-/

namespace A079779.P4447152154558981001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A057855 (n + 1) + 2).toNat

end

end A079779.P4447152154558981001

namespace A079779

/-- `A182986(A057855(n+1)+2)` -/
def P4447152154558981001.Spec : Prop :=
  ∀ n, P4447152154558981001.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P18265692078455748626

`A151800((n+1)*p?[xor(1, n)+1])`
-/

namespace A079779.P18265692078455748626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A079779.P18265692078455748626

namespace A079779

/-- `A151800((n+1)*p?[xor(1, n)+1])` -/
def P18265692078455748626.Spec : Prop :=
  ∀ n, P18265692078455748626.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P12847754282751944698

`A151800(A079780(n+1))`
-/

namespace A079779.P12847754282751944698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A079780 (n + 1)).toNat

end

end A079779.P12847754282751944698

namespace A079779

/-- `A151800(A079780(n+1))` -/
def P12847754282751944698.Spec : Prop :=
  ∀ n, P12847754282751944698.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P505133235427645740

`A151800(∑[A090942(n+1)])`
-/

namespace A079779.P505133235427645740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079779.P505133235427645740

namespace A079779

/-- `A151800(∑[A090942(n+1)])` -/
def P505133235427645740.Spec : Prop :=
  ∀ n, P505133235427645740.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P6125450507327588023

`A151800((n+1)*A000040(n+1))`
-/

namespace A079779.P6125450507327588023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

end

end A079779.P6125450507327588023

namespace A079779

/-- `A151800((n+1)*A000040(n+1))` -/
def P6125450507327588023.Spec : Prop :=
  ∀ n, P6125450507327588023.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P11168763968236555879

`A151800((n+1)*A008578(n+2))`
-/

namespace A079779.P11168763968236555879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A008578 (n + 2)).toNat

end

end A079779.P11168763968236555879

namespace A079779

/-- `A151800((n+1)*A008578(n+2))` -/
def P11168763968236555879.Spec : Prop :=
  ∀ n, P11168763968236555879.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P227243414155338785

`A151800((n+1)*A067747(2*n+1))`
-/

namespace A079779.P227243414155338785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A067747 (2 * n + 1)).toNat

end

end A079779.P227243414155338785

namespace A079779

/-- `A151800((n+1)*A067747(2*n+1))` -/
def P227243414155338785.Spec : Prop :=
  ∀ n, P227243414155338785.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P18361707070829399661

`A065091(A000720((n+1)*A000040(n+1)))`
-/

namespace A079779.P18361707070829399661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A000720 ((n + 1 : ℤ) * A000040 (n + 1)).toNat).toNat

end

end A079779.P18361707070829399661

namespace A079779

/-- `A065091(A000720((n+1)*A000040(n+1)))` -/
def P18361707070829399661.Spec : Prop :=
  ∀ n, P18361707070829399661.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P15388544552355151779

`A151800((n+1)*A151800(A006093(n+1)))`
-/

namespace A079779.P15388544552355151779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A151800 (A006093 (n + 1)).toNat).toNat

end

end A079779.P15388544552355151779

namespace A079779

/-- `A151800((n+1)*A151800(A006093(n+1)))` -/
def P15388544552355151779.Spec : Prop :=
  ∀ n, P15388544552355151779.a n = A079779 (n + 1)

end A079779

/-! ## A079779.P2075338983137846312

`A151800((n+1)*A151800(A065514(n+1)))`
-/

namespace A079779.P2075338983137846312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A151800 (A065514 (n + 1)).toNat).toNat

end

end A079779.P2075338983137846312

namespace A079779

/-- `A151800((n+1)*A151800(A065514(n+1)))` -/
def P2075338983137846312.Spec : Prop :=
  ∀ n, P2075338983137846312.a n = A079779 (n + 1)

end A079779

/-!
# A079780: a(n) = largest prime <= n*prime(n).

The programs for A079780, the canonical program `A079780.P8620431472310395336` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079780 has offset 1).

The definition of A079780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079780.P8620431472310395336

`A000040(A057855(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079780

/-- `A000040(A057855(n+1))` -/
def P8620431472310395336.Spec : Prop :=
  ∀ n, P8620431472310395336.a n = A079780 (n + 1)

theorem P8620431472310395336.correct : P8620431472310395336.Spec := by
  intro n
  simp only [A079780, Nat.add_sub_cancel]

end A079780

/-! ## A079780.P13279723439653782486

`A007917((n+1)*A000040(n+1))`
-/

namespace A079780.P13279723439653782486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

end

end A079780.P13279723439653782486

namespace A079780

/-- `A007917((n+1)*A000040(n+1))` -/
def P13279723439653782486.Spec : Prop :=
  ∀ n, P13279723439653782486.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P3318884447482645945

`A033286(n+1)-A107060(n+1)`
-/

namespace A079780.P3318884447482645945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A107060 (n + 1)

end

end A079780.P3318884447482645945

namespace A079780

/-- `A033286(n+1)-A107060(n+1)` -/
def P3318884447482645945.Spec : Prop :=
  ∀ n, P3318884447482645945.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P9051994141297092522

`A008578(A057855(n+1)+1)`
-/

namespace A079780.P9051994141297092522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A057855 (n + 1) + 1).toNat

end

end A079780.P9051994141297092522

namespace A079780

/-- `A008578(A057855(n+1)+1)` -/
def P9051994141297092522.Spec : Prop :=
  ∀ n, P9051994141297092522.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P8790980459150404985

`A182986(A057855(n+1)+1)`
-/

namespace A079780.P8790980459150404985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A057855 (n + 1) + 1).toNat

end

end A079780.P8790980459150404985

namespace A079780

/-- `A182986(A057855(n+1)+1)` -/
def P8790980459150404985.Spec : Prop :=
  ∀ n, P8790980459150404985.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P6776219451278377224

`A158611(A057855(n+1)+2)`
-/

namespace A079780.P6776219451278377224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A057855 (n + 1) + 2).toNat

end

end A079780.P6776219451278377224

namespace A079780

/-- `A158611(A057855(n+1)+2)` -/
def P6776219451278377224.Spec : Prop :=
  ∀ n, P6776219451278377224.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P13421222938618356899

`∑{d}[A057855(n+1), A007444(#)]`
-/

namespace A079780.P13421222938618356899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A079780.P13421222938618356899

namespace A079780

/-- `∑{d}[A057855(n+1), A007444(#)]` -/
def P13421222938618356899.Spec : Prop :=
  ∀ n, P13421222938618356899.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P9945228437543241054

`A001747(A057855(n+1)+1)/2`
-/

namespace A079780.P9945228437543241054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A057855 (n + 1) + 1).toNat : ℚ) / 2

end

end A079780.P9945228437543241054

namespace A079780

/-- `A001747(A057855(n+1)+1)/2` -/
def P9945228437543241054.Spec : Prop :=
  ∀ n, P9945228437543241054.a n = (A079780 (n + 1) : ℚ)

end A079780

/-! ## A079780.P5318615095932194882

`A000040(A065313(Δ[A007504(n)]))`
-/

namespace A079780.P5318615095932194882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065313 (f1 (n + 1) - f1 n).toNat).toNat

end

end A079780.P5318615095932194882

namespace A079780

/-- `A000040(A065313(Δ[A007504(n)]))` -/
def P5318615095932194882.Spec : Prop :=
  ∀ n, P5318615095932194882.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P14905780892012962940

`A000040(A065313(A000040(n+1)))`
-/

namespace A079780.P14905780892012962940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065313 (A000040 (n + 1)).toNat).toNat

end

end A079780.P14905780892012962940

namespace A079780

/-- `A000040(A065313(A000040(n+1)))` -/
def P14905780892012962940.Spec : Prop :=
  ∀ n, P14905780892012962940.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P2276360357063456204

`A091265(A038722(A065313(A091265(A038722(n+1)))))`
-/

namespace A079780.P2276360357063456204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091265 (A038722 (A065313 (A091265 (A038722 (n + 1)).toNat).toNat).toNat).toNat

end

end A079780.P2276360357063456204

namespace A079780

/-- `A091265(A038722(A065313(A091265(A038722(n+1)))))` -/
def P2276360357063456204.Spec : Prop :=
  ∀ n, P2276360357063456204.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P4675665068835096498

`A000040(A000720(A033286(n+1)))`
-/

namespace A079780.P4675665068835096498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A033286 (n + 1)).toNat).toNat

end

end A079780.P4675665068835096498

namespace A079780

/-- `A000040(A000720(A033286(n+1)))` -/
def P4675665068835096498.Spec : Prop :=
  ∀ n, P4675665068835096498.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P1748273608949989840

`A006530(A100484(A057855(n+1))/2)`
-/

namespace A079780.P1748273608949989840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A100484 (A057855 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A079780.P1748273608949989840

namespace A079780

/-- `A006530(A100484(A057855(n+1))/2)` -/
def P1748273608949989840.Spec : Prop :=
  ∀ n, P1748273608949989840.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P758770583741057419

`A000040(A000720((n+1)*A000040(n+1)))`
-/

namespace A079780.P758770583741057419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 ((n + 1 : ℤ) * A000040 (n + 1)).toNat).toNat

end

end A079780.P758770583741057419

namespace A079780

/-- `A000040(A000720((n+1)*A000040(n+1)))` -/
def P758770583741057419.Spec : Prop :=
  ∀ n, P758770583741057419.a n = A079780 (n + 1)

end A079780

/-! ## A079780.P13681674709026768518

`A000040(A000720(A077320(A000217(n+1))))`
-/

namespace A079780.P13681674709026768518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A077320 (A000217 (n + 1)).toNat).toNat).toNat

end

end A079780.P13681674709026768518

namespace A079780

/-- `A000040(A000720(A077320(A000217(n+1))))` -/
def P13681674709026768518.Spec : Prop :=
  ∀ n, P13681674709026768518.a n = A079780 (n + 1)

end A079780

/-!
# A079781: Initial term of n-th row of triangle in A079784.

The programs for A079781, the canonical program `A079781.P461482998826215960` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079781 has offset 1).

The definition of A079781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079781.P11412800134067513812

`A079782(n+1)-n`
-/

namespace A079781.P11412800134067513812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079782 (n + 1) - (n : ℤ)

end

end A079781.P11412800134067513812

namespace A079781

/-- `A079782(n+1)-n` -/
def P11412800134067513812.Spec : Prop :=
  ∀ n, P11412800134067513812.a n = A079781 (n + 1)

theorem P11412800134067513812.correct : P11412800134067513812.Spec := by
  intro n
  simp only [A079781, Nat.add_sub_cancel, A079781.P11412800134067513812.a, A079781.P461482998826215960.f1, A079781.P461482998826215960.a, A014963, A014963.P5975177236000282614.a, A037126, A037126.P12409953000028740775.a, A079782, A079782.P18031866409307502702.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A080304, A080304.P9910366703239988167.a, A055615, A055615.P8993130195977213181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079781

/-! ## A079781.P11174489747527037006

`abs(A079782(n+1)+A001489(n))`
-/

namespace A079781.P11174489747527037006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079782 (n + 1) + A001489 n|

end

end A079781.P11174489747527037006

namespace A079781

/-- `abs(A079782(n+1)+A001489(n))` -/
def P11174489747527037006.Spec : Prop :=
  ∀ n, P11174489747527037006.a n = A079781 (n + 1)

end A079781

/-! ## A079781.P461482998826215960

`lcm(A037126(n+1)+1, ∏[A014963(n+1)])-1-n`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A079781

/-- `lcm(A037126(n+1)+1, ∏[A014963(n+1)])-1-n` -/
def P461482998826215960.Spec : Prop :=
  ∀ n, P461482998826215960.a n = A079781 (n + 1)

theorem P461482998826215960.correct : P461482998826215960.Spec := by
  intro n
  simp only [A079781, Nat.add_sub_cancel]

end A079781

/-! ## A079781.P2812204739784683231

`A079784(∑[n]+1)`
-/

namespace A079781.P2812204739784683231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079784 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A079781.P2812204739784683231

namespace A079781

/-- `A079784(∑[n]+1)` -/
def P2812204739784683231.Spec : Prop :=
  ∀ n, P2812204739784683231.a n = A079781 (n + 1)

end A079781

/-! ## A079781.P17501437266192479688

`floor(A070198(A094497(n)+n)+acot(n))-n`
-/

namespace A079781.P17501437266192479688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070198 (A094497 n + (n : ℤ)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)

end

end A079781.P17501437266192479688

namespace A079781

/-- `floor(A070198(A094497(n)+n)+acot(n))-n` -/
def P17501437266192479688.Spec : Prop :=
  ∀ n, P17501437266192479688.a n = A079781 (n + 1)

end A079781

/-! ## A079781.P2788419832200966347

`A014963(4*n+2)*A070198(A094497(n)+n)-n`
-/

namespace A079781.P2788419832200966347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A070198 (A094497 n + (n : ℤ)).toNat - (n : ℤ)

end

end A079781.P2788419832200966347

namespace A079781

/-- `A014963(4*n+2)*A070198(A094497(n)+n)-n` -/
def P2788419832200966347.Spec : Prop :=
  ∀ n, P2788419832200966347.a n = A079781 (n + 1)

end A079781

/-!
# A079782: Final term of n-th row of triangle in A079784.

The programs for A079782, the canonical program `A079782.P18031866409307502702` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079782 has offset 1).

The definition of A079782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079782.P18031866409307502702

`A079781(n+1)+n`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A079782

/-- `A079781(n+1)+n` -/
def P18031866409307502702.Spec : Prop :=
  ∀ n, P18031866409307502702.a n = A079782 (n + 1)

theorem P18031866409307502702.correct : P18031866409307502702.Spec := by
  intro n
  simp only [A079782, Nat.add_sub_cancel]

end A079782

/-! ## A079782.P13336206543043038195

`lcm(A037126(n+1)+1, ∏[A014963(n+1)])-1`
-/

namespace A079782.P13336206543043038195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A037126 (n + 1) + 1) (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A079782.P13336206543043038195

namespace A079782

/-- `lcm(A037126(n+1)+1, ∏[A014963(n+1)])-1` -/
def P13336206543043038195.Spec : Prop :=
  ∀ n, P13336206543043038195.a n = A079782 (n + 1)

theorem P13336206543043038195.correct : P13336206543043038195.Spec := by
  intro n
  simp only [A079782, Nat.add_sub_cancel, A079782.P13336206543043038195.f1, A079782.P13336206543043038195.a, A079782.P18031866409307502702.a, A014963, A014963.P5975177236000282614.a, A037126, A037126.P12409953000028740775.a, A079781, A079781.P461482998826215960.f1, A079781.P461482998826215960.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A080304, A080304.P9910366703239988167.a, A055615, A055615.P8993130195977213181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079782

/-! ## A079782.P13531709693843101192

`A079784(∑[n+1])`
-/

namespace A079782.P13531709693843101192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079784 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079782.P13531709693843101192

namespace A079782

/-- `A079784(∑[n+1])` -/
def P13531709693843101192.Spec : Prop :=
  ∀ n, P13531709693843101192.a n = A079782 (n + 1)

end A079782

/-! ## A079782.P7968207993522985900

`floor(A070198(A094497(n)+n)+acot(n))`
-/

namespace A079782.P7968207993522985900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070198 (A094497 n + (n : ℤ)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A079782.P7968207993522985900

namespace A079782

/-- `floor(A070198(A094497(n)+n)+acot(n))` -/
def P7968207993522985900.Spec : Prop :=
  ∀ n, P7968207993522985900.a n = A079782 (n + 1)

end A079782

/-! ## A079782.P5328238975097079994

`A070198(A094497(n%(2*a(n-1)))+n)` with `a(0)=2`
-/

namespace A079782.P5328238975097079994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070198 (A094497 (Int.tmod (n : ℤ) (2 * a (n - 1))).toNat + (n : ℤ)).toNat

end

end A079782.P5328238975097079994

namespace A079782

/-- `A070198(A094497(n%(2*a(n-1)))+n)` -/
def P5328238975097079994.Spec : Prop :=
  ∀ n, P5328238975097079994.a n = A079782 (n + 1)

end A079782

/-! ## A079782.P14981123789045939095

`A014963(4*n+2)*A070198(A094497(n)+n)`
-/

namespace A079782.P14981123789045939095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A070198 (A094497 n + (n : ℤ)).toNat

end

end A079782.P14981123789045939095

namespace A079782

/-- `A014963(4*n+2)*A070198(A094497(n)+n)` -/
def P14981123789045939095.Spec : Prop :=
  ∀ n, P14981123789045939095.a n = A079782 (n + 1)

end A079782

/-!
# A079783: Sum of n-th row of triangle in A079784.

The programs for A079783, the canonical program `A079783.P3010673036400802129` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079783 has offset 1).

The definition of A079783 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079782, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079783.P3010673036400802129

`(n+1)*(A079782(n+1)-n/2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A079783

/-- `(n+1)*(A079782(n+1)-n/2)` -/
def P3010673036400802129.Spec : Prop :=
  ∀ n, P3010673036400802129.a n = (A079783 (n + 1) : ℚ)

end A079783

/-! ## A079783.P6508144238117088430

`∑[n]+(n+1)*A079781(n+1)`
-/

namespace A079783.P6508144238117088430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * A079781 (n + 1)

end

end A079783.P6508144238117088430

namespace A079783

/-- `∑[n]+(n+1)*A079781(n+1)` -/
def P6508144238117088430.Spec : Prop :=
  ∀ n, P6508144238117088430.a n = A079783 (n + 1)

end A079783

/-! ## A079783.P16921716357588754364

`(n+1)*A079782(n+1)-∑[n]`
-/

namespace A079783.P16921716357588754364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079782 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A079783.P16921716357588754364

namespace A079783

/-- `(n+1)*A079782(n+1)-∑[n]` -/
def P16921716357588754364.Spec : Prop :=
  ∀ n, P16921716357588754364.a n = A079783 (n + 1)

end A079783

/-! ## A079783.P10099933150759722831

`lcm(n+1, A079782(n+1))-A000217(n)`
-/

namespace A079783.P10099933150759722831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A079782 (n + 1)) : ℤ) - A000217 n

end

end A079783.P10099933150759722831

namespace A079783

/-- `lcm(n+1, A079782(n+1))-A000217(n)` -/
def P10099933150759722831.Spec : Prop :=
  ∀ n, P10099933150759722831.a n = A079783 (n + 1)

end A079783

/-!
# A079784: Triangle read by rows in which the n-th row contains the smallest set of n consecutive numbers such that the r-th number in the n-th row is divisible by n-r+1. The first term of the n-th row must exceed n.

The programs for A079784, the canonical program `A079784.P13207047154207898246` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079784 has offset 1).

The definition of A079784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079784.P3166860248766332375

`A079782(comp[∑[n]]-n-1)-A025581(n)`
-/

namespace A079784.P3166860248766332375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079782 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - 1).toNat - A025581 n

end

end A079784.P3166860248766332375

namespace A079784

/-- `A079782(comp[∑[n]]-n-1)-A025581(n)` -/
def P3166860248766332375.Spec : Prop :=
  ∀ n, P3166860248766332375.a n = A079784 (n + 1)

end A079784

/-! ## A079784.P13207047154207898246

`A079781(A002024(n+1))+A002262(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A079784

/-- `A079781(A002024(n+1))+A002262(n)` -/
def P13207047154207898246.Spec : Prop :=
  ∀ n, P13207047154207898246.a n = A079784 (n + 1)

theorem P13207047154207898246.correct : P13207047154207898246.Spec := by
  intro n
  simp only [A079784, Nat.add_sub_cancel]

end A079784

/-! ## A079784.P5889206585200994694

`A079781(A003056(n)+1)+A002262(n)`
-/

namespace A079784.P5889206585200994694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079781 (A003056 n + 1).toNat + A002262 n

end

end A079784.P5889206585200994694

namespace A079784

/-- `A079781(A003056(n)+1)+A002262(n)` -/
def P5889206585200994694.Spec : Prop :=
  ∀ n, P5889206585200994694.a n = A079784 (n + 1)

end A079784

/-! ## A079784.P2278031401751656119

`A079781(A002024(n+1))+val(A036561(n), 3)`
-/

namespace A079784.P2278031401751656119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079781 (A002024 (n + 1)).toNat + (SequenceMachineLib.valuation (A036561 n).toNat 3 : ℤ)

end

end A079784.P2278031401751656119

namespace A079784

/-- `A079781(A002024(n+1))+val(A036561(n), 3)` -/
def P2278031401751656119.Spec : Prop :=
  ∀ n, P2278031401751656119.a n = A079784 (n + 1)

end A079784

/-! ## A079784.P7427661184923225546

`A079782(A002024(n+1))-A001222(A130321(n))`
-/

namespace A079784.P7427661184923225546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079782 (A002024 (n + 1)).toNat - A001222 (A130321 n).toNat

end

end A079784.P7427661184923225546

namespace A079784

/-- `A079782(A002024(n+1))-A001222(A130321(n))` -/
def P7427661184923225546.Spec : Prop :=
  ∀ n, P7427661184923225546.a n = A079784 (n + 1)

end A079784

/-!
# A079786: Triangle read by rows in which the n-th row begins with n and contains at most tau(n) numbers. The r-th term from right is the largest number < n with r divisors, for 1 <= r <= tau(n) skipping any r for which no suitable number exists.

The programs for A079786, there is no canonical definition to state claims against.
-/

/-! ## A079786.P4029055453024236053

`A056538(n+1)+A001899(A000225(n))`
-/

namespace A079786.P4029055453024236053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) + A001899 (A000225 n).toNat

end

end A079786.P4029055453024236053

/-! ## A079786.P358374172353335523

`A118685(A000045(n))+A056538(n+1)`
-/

namespace A079786.P358374172353335523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118685 (A000045 n).toNat + A056538 (n + 1)

end

end A079786.P358374172353335523

/-! ## A079786.P6438977758014927510

`A056538(n+1)+A055641(A056550(n+1))`
-/

namespace A079786.P6438977758014927510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) + A055641 (A056550 (n + 1)).toNat

end

end A079786.P6438977758014927510

/-! ## A079786.P10671894990307115883

`A184964(A111619(n+1))+A056538(n+1)`
-/

namespace A079786.P10671894990307115883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A111619 (n + 1)).toNat + A056538 (n + 1)

end

end A079786.P10671894990307115883

/-! ## A079786.P3142279087740827944

`A086016(A277256(n+1))+A056538(n+1)`
-/

namespace A079786.P3142279087740827944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086016 (A277256 (n + 1)).toNat + A056538 (n + 1)

end

end A079786.P3142279087740827944

/-!
# A079788: a(n) = count of numbers <= n for which the number of divisors is also <= tau(n).

The programs for A079788, there is no canonical definition to state claims against.
-/

/-! ## A079788.P8832403247691853568

`A067004(n+1)+n+1-A138009(n+1)`
-/

namespace A079788.P8832403247691853568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (n + 1) + ((n + 1 : ℤ) - A138009 (n + 1))

end

end A079788.P8832403247691853568

/-! ## A079788.P174568729295760213

`A047983(n+1)-A138009(n+1)+2+n`
-/

namespace A079788.P174568729295760213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047983 (n + 1) - A138009 (n + 1) + 2 + (n : ℤ)

end

end A079788.P174568729295760213

/-! ## A079788.P13018525217597327629

`A075388(A077168(n))+A055086(n)`
-/

namespace A079788.P13018525217597327629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075388 (A077168 n).toNat + A055086 n

end

end A079788.P13018525217597327629

/-! ## A079788.P1839901812252683390

`A032742(n+1)+A001221(A246349(n+1))`
-/

namespace A079788.P1839901812252683390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + A001221 (A246349 (n + 1)).toNat

end

end A079788.P1839901812252683390

/-! ## A079788.P3941687503208007916

`A340088(n+1)+A173419(A056391(n+1))`
-/

namespace A079788.P3941687503208007916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340088 (n + 1) + A173419 (A056391 (n + 1)).toNat

end

end A079788.P3941687503208007916

/-!
# A079789: a(n) = number of nonnegative integers m <= n having at least one digit in common with n.

The programs for A079789, there is no canonical definition to state claims against.
-/

/-! ## A079789.P11613337733900768687

`1-A232897(n)+n`
-/

namespace A079789.P11613337733900768687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A232897 n + (n : ℤ)

end

end A079789.P11613337733900768687

/-! ## A079789.P6280987755049996860

`n-A023443(A232897(n))`
-/

namespace A079789.P6280987755049996860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A232897 n).toNat

end

end A079789.P6280987755049996860

/-! ## A079789.P9394831357220271750

`A008619(2*n)-A232897(n)`
-/

namespace A079789.P9394831357220271750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A232897 n

end

end A079789.P9394831357220271750

/-! ## A079789.P2437570792958524585

`A004525(A103517(n))-A232897(n)`
-/

namespace A079789.P2437570792958524585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A103517 n).toNat - A232897 n

end

end A079789.P2437570792958524585

/-! ## A079789.P11808488599621333694

`A008620(3*n)-A232897(n)`
-/

namespace A079789.P11808488599621333694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) - A232897 n

end

end A079789.P11808488599621333694

/-! ## A079789.P14046829501561876968

`A122197((n-(A232897(n)-1))²)`
-/

namespace A079789.P14046829501561876968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (((n : ℤ) - (A232897 n - 1)) ^ 2).toNat

end

end A079789.P14046829501561876968

/-! ## A079789.P5075580486247829318

`A003056(∑[n])-(A232897(n)-1)`
-/

namespace A079789.P5075580486247829318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j) - (A232897 n - 1)

end

end A079789.P5075580486247829318

/-!
# A079790: a(n) = number of m <= n which can be obtained by deleting digits from n.

The programs for A079790, there is no canonical definition to state claims against.
-/

/-! ## A079790.P8292486464723915993

`A120004(A000196((n+1)²))`
-/

namespace A079790.P8292486464723915993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120004 (A000196 ((n + 1) ^ 2)).toNat

end

end A079790.P8292486464723915993

/-! ## A079790.P9534243778354213367

`or(A000007(A000290(n)), A120004(n+1))`
-/

namespace A079790.P9534243778354213367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000290 n).toNat) (A120004 (n + 1))

end

end A079790.P9534243778354213367

/-! ## A079790.P7882916756671842620

`A124768(A139337(n+1))`
-/

namespace A079790.P7882916756671842620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A139337 (n + 1)).toNat

end

end A079790.P7882916756671842620

/-! ## A079790.P6378144018669511398

`A001817(A213217(n+1)²)`
-/

namespace A079790.P6378144018669511398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A213217 (n + 1) ^ 2).toNat

end

end A079790.P6378144018669511398

/-! ## A079790.P16312475966716352970

`A039996(A358497(n+1)²)`
-/

namespace A079790.P16312475966716352970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A358497 (n + 1) ^ 2).toNat

end

end A079790.P16312475966716352970

/-! ## A079790.P15230354722750929982

`A270788(A139337(n+1)²)`
-/

namespace A079790.P15230354722750929982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (A139337 (n + 1) ^ 2).toNat

end

end A079790.P15230354722750929982

/-! ## A079790.P13690884040559040618

`A139318(A139337(n+1)+1)`
-/

namespace A079790.P13690884040559040618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139318 (A139337 (n + 1) + 1).toNat

end

end A079790.P13690884040559040618

/-! ## A079790.P14459917709030330969

`A333632(A358497(n+1)+1)`
-/

namespace A079790.P14459917709030330969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A358497 (n + 1) + 1).toNat

end

end A079790.P14459917709030330969

/-! ## A079790.P3223396595861382763

`∑{e}[A358497(A056524(n+1)), #]`
-/

namespace A079790.P3223396595861382763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358497 (A056524 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A079790.P3223396595861382763

/-! ## A079790.P9666385724178300674

`gcd(6, A217015(A213217(n+1)+1))`
-/

namespace A079790.P9666385724178300674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A217015 (A213217 (n + 1) + 1).toNat)

end

end A079790.P9666385724178300674

/-!
# A079791: a(1) = 1, a(n) = a(n-1)/n if a(n-1) is divisible by n else a(n) is the concatenation of a(n-1) and n.

The programs for A079791, there is no canonical definition to state claims against.
-/

/-! ## A079791.P6298173421018980844

`A094142(a(n-1)+1)` with `a(0)=1, a(1)=12, a(2)=4, a(3)=1`
-/

namespace A079791.P6298173421018980844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 4, 1] fun n a =>
  A094142 (a (n - 1) + 1).toNat

end

end A079791.P6298173421018980844

/-!
# A079796: Primes p such that (3*p)^2 + p^2 + 3^2 and (3*p)^2 - p^2 - 3^2 are both prime.

The programs for A079796, there is no canonical definition to state claims against.
-/

/-! ## A079796.P1144279096604027871

`p?[xor(A122641(2*n+3), A122645(n+1))]`
-/

namespace A079796.P1144279096604027871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122641 (2 * n + 3)) (A122645 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079796.P1144279096604027871

/-!
# A079798: Partition of positive integers into shortest possible groups, starting with (1), (2,3), (4,5,6), (7,8,9,10,11), such that a(n) = the sum of the terms of the n-th group is a multiple of a(n-1) and a(n) > a(n-1).

The programs for A079798, there is no canonical definition to state claims against.
-/

/-! ## A079798.P8559508116485871620

`Δ[C(A079800(n+1), 2)]`
-/

namespace A079798.P8559508116485871620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079800 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A079798.P8559508116485871620

/-! ## A079798.P16023133153847317304

`a(n-1)*A079799(n+1)` with `a(0)=1`
-/

namespace A079798.P16023133153847317304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A079799 (n + 1)

end

end A079798.P16023133153847317304

/-! ## A079798.P17033871193163242339

`∏[A079799(n+2)]/A079799(n+2)`
-/

namespace A079798.P17033871193163242339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079799 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A079799 (n + 2) : ℚ)

end

end A079798.P17033871193163242339

/-!
# A079799: Ratios of successive terms in A079798.

The programs for A079799, there is no canonical definition to state claims against.
-/

/-! ## A079799.P13834644530510857627

`A079798(n+2)/A079798(n+1)`
-/

namespace A079799.P13834644530510857627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079798 (n + 2) : ℚ) / (A079798 (n + 1) : ℚ)

end

end A079799.P13834644530510857627

/-! ## A079799.P13283054316147337827

`ratio[A079798(n+1)]`
-/

namespace A079799.P13283054316147337827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079798 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A079799.P13283054316147337827

/-! ## A079799.P5716337179642209903

`ratio[record[A079798(A193592(n))]]`
-/

namespace A079799.P5716337179642209903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079798 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A079799.P5716337179642209903

/-! ## A079799.P2266400294131960469

`ratio[record[A079798(A193739(n))]]`
-/

namespace A079799.P2266400294131960469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079798 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A079799.P2266400294131960469

