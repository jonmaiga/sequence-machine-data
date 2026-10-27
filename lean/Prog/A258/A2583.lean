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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A258300: Number of partitions of n*(n-1)*(n-2)/6 into parts that are at most n.

The programs for A258300, there is no canonical definition to state claims against.
-/

/-! ## A258300.P9538559679798650251

`A280457((∑[7*C(n, 2)]+n)^floor(n/4))`
-/

namespace A258300.P9538559679798650251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280457 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ))).toNat

end

end A258300.P9538559679798650251

/-! ## A258300.P714571394310049858

`A280457(A004126(n*A229887(n)))`
-/

namespace A258300.P714571394310049858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280457 (A004126 ((n : ℤ) * A229887 n).toNat).toNat

end

end A258300.P714571394310049858

/-! ## A258300.P10162128075103289676

`A280457(A004126(n*A277604(n)))`
-/

namespace A258300.P10162128075103289676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280457 (A004126 ((n : ℤ) * A277604 n).toNat).toNat

end

end A258300.P10162128075103289676

/-! ## A258300.P5527895863731094634

`A280457(A004126(n)^A000700(n))`
-/

namespace A258300.P5527895863731094634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280457 (SequenceMachineLib.roundAway ((A004126 n : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A258300.P5527895863731094634

/-!
# A258301: Number of partitions of n*(n+1)*(2n+1)/6 into parts that are at most n.

The programs for A258301, there is no canonical definition to state claims against.
-/

/-! ## A258301.P11623735102258287563

`A326399(ceil(A003582(n)/A326399(n+4)))`
-/

namespace A258301.P11623735102258287563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 ⌈(A003582 n : ℚ) / (A326399 (n + 4) : ℚ)⌉.toNat

end

end A258301.P11623735102258287563

/-!
# A258304: Number of partitions of 4*n^3 into parts that are at most n.

The programs for A258304, there is no canonical definition to state claims against.
-/

/-! ## A258304.P12902307082818361423

`A307623(A307566(n))+A307601(n+2)`
-/

namespace A258304.P12902307082818361423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307623 (A307566 n).toNat + A307601 (n + 2)

end

end A258304.P12902307082818361423

/-!
# A258306: A(n,k) is the sum over all Motzkin paths of length n of products over all peaks p of (x_p+k*y_p)/y_p, where x_p and y_p are the coordinates of peak p; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A258306, there is no canonical definition to state claims against.
-/

/-! ## A258306.P8465677730992593810

`A352680(A352675(n+1)^A274537(n))`
-/

namespace A258306.P8465677730992593810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352680 (SequenceMachineLib.roundAway ((A352675 (n + 1) : ℚ) ^ (A274537 n : ℤ))).toNat

end

end A258306.P8465677730992593810

/-! ## A258306.P18246885935619458646

`A352680(C(A352675(n+1), A274537(n)))`
-/

namespace A258306.P18246885935619458646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352680 (Nat.choose (A352675 (n + 1)).toNat (A274537 n).toNat)

end

end A258306.P18246885935619458646

/-! ## A258306.P15592304747181581043

`A352680(A274537(n)²*A352675(n+1))`
-/

namespace A258306.P15592304747181581043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352680 (A274537 n ^ 2 * A352675 (n + 1)).toNat

end

end A258306.P15592304747181581043

/-!
# A258307: T(n,k) = 1/k! * Sum_{i=0..k} (-1)^(k-i) *C(k,i) * A258306(n,i); triangle T(n,k), n>=0, 0<=k<=floor(n/2), read by rows.

The programs for A258307, there is no canonical definition to state claims against.
-/

/-! ## A258307.P10344659650858143045

`A106566(2*(n+2))+A096268(A324787(n))`
-/

namespace A258307.P10344659650858143045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (2 * (n + 2)) + A096268 (A324787 n).toNat

end

end A258307.P10344659650858143045

/-!
# A258308: Row sums of A258307.

The programs for A258308, there is no canonical definition to state claims against.
-/

/-! ## A258308.P15663175763415017813

`A354166(∑[∑[A058104(n)]])`
-/

namespace A258308.P15663175763415017813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058104 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354166 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258308.P15663175763415017813

/-! ## A258308.P15583621506542359645

`A354166(∑[∑[A323772(n)]])`
-/

namespace A258308.P15583621506542359645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323772 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354166 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258308.P15583621506542359645

/-! ## A258308.P4287263375541041443

`A354166(A330625(n)+n²)`
-/

namespace A258308.P4287263375541041443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354166 (A330625 n + (n ^ 2 : ℤ)).toNat

end

end A258308.P4287263375541041443

/-!
# A258309: A(n,k) is the sum over all Motzkin paths of length n of products over all peaks p of (k*x_p+y_p)/y_p, where x_p and y_p are the coordinates of peak p; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A258309, there is no canonical definition to state claims against.
-/

/-! ## A258309.P4890444719072662142

`A070939(C(A294589(n), A141169(n)))`
-/

namespace A258309.P4890444719072662142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.choose (A294589 n).toNat (A141169 n).toNat)

end

end A258309.P4890444719072662142

/-! ## A258309.P2580582813513132756

`A306684(lt[A306699(3*n+2), A306687(n)])`
-/

namespace A258309.P2580582813513132756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306699 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A258309.P2580582813513132756

/-! ## A258309.P8571430803882291848

`A238598(A349780(n))`
-/

namespace A258309.P8571430803882291848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A349780 n).toNat

end

end A258309.P8571430803882291848

/-! ## A258309.P1655152587355518989

`A325678(A341856(n)+A294220(n))`
-/

namespace A258309.P1655152587355518989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A341856 n + A294220 n).toNat

end

end A258309.P1655152587355518989

/-! ## A258309.P351506599959072033

`A325678(A341856(n)+A318557(n))`
-/

namespace A258309.P351506599959072033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A341856 n + A318557 n).toNat

end

end A258309.P351506599959072033

/-!
# A258311: Row sums of A258310.

The programs for A258311, there is no canonical definition to state claims against.
-/

/-! ## A258311.P7382161240594058248

`A001281(A122648(n)+A011782(n))`
-/

namespace A258311.P7382161240594058248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A122648 n + A011782 n).toNat

end

end A258311.P7382161240594058248

/-! ## A258311.P17396097574233562875

`A004526(A122648(n)+A011782(n))`
-/

namespace A258311.P17396097574233562875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A122648 n + A011782 n).toNat

end

end A258311.P17396097574233562875

/-! ## A258311.P11606125829114476998

`A060681(A122648(n)+A011782(n))`
-/

namespace A258311.P11606125829114476998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A122648 n + A011782 n).toNat

end

end A258311.P11606125829114476998

/-! ## A258311.P4877340438951776552

`A123108(A122648(n)+A011782(n))`
-/

namespace A258311.P4877340438951776552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A122648 n + A011782 n).toNat

end

end A258311.P4877340438951776552

/-!
# A258312: Sum over all Motzkin paths of length n of products over all peaks p of x_p/y_p, where x_p and y_p are the coordinates of peak p.

The programs for A258312, there is no canonical definition to state claims against.
-/

/-! ## A258312.P1148079093303521317

`A258306(∑[n]+n)`
-/

namespace A258312.P1148079093303521317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258306 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A258312.P1148079093303521317

/-! ## A258312.P1350090364639273133

`A258307(∑[∑[2-gcd(2, n)]])`
-/

namespace A258312.P1350090364639273133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258307 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258312.P1350090364639273133

/-! ## A258312.P16088826592177038728

`A258307(A002620(n+1))`
-/

namespace A258312.P16088826592177038728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258307 (A002620 (n + 1)).toNat

end

end A258312.P16088826592177038728

/-! ## A258312.P5879738441354957781

`A258307(A076921(n+1))`
-/

namespace A258312.P5879738441354957781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258307 (A076921 (n + 1)).toNat

end

end A258312.P5879738441354957781

/-! ## A258312.P7378856414934129718

`A258307(∑[∑[A000035(n)]])`
-/

namespace A258312.P7378856414934129718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258307 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258312.P7378856414934129718

/-!
# A258313: G.f. A(x) satisfies: A(x) = B(x)*C(x) where B(x) = 1 + x*A(x)*C(x) and C(x) = 1 + 2*x*A(x)*B(x).

The programs for A258313, there is no canonical definition to state claims against.
-/

/-! ## A258313.P5573149991560059374

`A276331(A368966(n))+1`
-/

namespace A258313.P5573149991560059374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A368966 n).toNat + 1

end

end A258313.P5573149991560059374

/-!
# A258314: G.f. B(x) satisfies: B(x) = 1 + x*A(x)*C(x) where A(x) = B(x)*C(x) and C(x) = 1 + 2*x*A(x)*B(x).

The programs for A258314, there is no canonical definition to state claims against.
-/

/-! ## A258314.P4345129035010946401

`A255137(A072706(n²))`
-/

namespace A258314.P4345129035010946401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255137 (A072706 (n ^ 2)).toNat

end

end A258314.P4345129035010946401

/-! ## A258314.P16293588887018103202

`A332769(A076726(n))-2`
-/

namespace A258314.P16293588887018103202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A076726 n).toNat - 2

end

end A258314.P16293588887018103202

/-!
# A258315: G.f. C(x) satisfies: C(x) = 1 + 2*x*A(x)*B(x) where A(x) = B(x)*C(x) and B(x) = 1 + x*A(x)*C(x).

The programs for A258315, there is no canonical definition to state claims against.
-/

/-! ## A258315.P8261013594231746574

`A342462(comp[n!]!)`
-/

namespace A258315.P8261013594231746574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342462 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A258315.P8261013594231746574

/-!
# A258316: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 or 0011.

The programs for A258316, the canonical program `A258316.P5658510745853391097` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258316 has offset 1).

The definition of A258316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258316.P11552883225154356828

`A000045(col(n)+4)+A000045(row(n)-col(n)+4)-1`
-/

namespace A258316.P11552883225154356828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triCol n + 4) + A000045 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 4).toNat - 1

end

end A258316.P11552883225154356828

namespace A258316

/-- `A000045(col(n)+4)+A000045(row(n)-col(n)+4)-1` -/
def P11552883225154356828.Spec : Prop :=
  ∀ n, P11552883225154356828.a n = A258316 (n + 1)

end A258316

/-! ## A258316.P5658510745853391097

`A020706(A025581(n))+A001911(A002260(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A258316

/-- `A020706(A025581(n))+A001911(A002260(n+1))` -/
def P5658510745853391097.Spec : Prop :=
  ∀ n, P5658510745853391097.a n = A258316 (n + 1)

theorem P5658510745853391097.correct : P5658510745853391097.Spec := by
  intro n
  simp only [A258316, Nat.add_sub_cancel]

end A258316

/-! ## A258316.P14303696251150525122

`A112232(round(sqrt(A234140(n+1))))`
-/

namespace A258316.P14303696251150525122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (SequenceMachineLib.roundAway (Real.sqrt (A234140 (n + 1) : ℝ))).toNat

end

end A258316.P14303696251150525122

namespace A258316

/-- `A112232(round(sqrt(A234140(n+1))))` -/
def P14303696251150525122.Spec : Prop :=
  ∀ n, P14303696251150525122.a n = A258316 (n + 1)

end A258316

/-! ## A258316.P3272442814166771564

`A112232(A094685(A234140(n+1)))`
-/

namespace A258316.P3272442814166771564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (A094685 (A234140 (n + 1)).toNat).toNat

end

end A258316.P3272442814166771564

namespace A258316

/-- `A112232(A094685(A234140(n+1)))` -/
def P3272442814166771564.Spec : Prop :=
  ∀ n, P3272442814166771564.a n = A258316 (n + 1)

end A258316

/-! ## A258316.P18126179730843213458

`A330780(A235893(n+1)+1)`
-/

namespace A258316.P18126179730843213458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330780 (A235893 (n + 1) + 1).toNat

end

end A258316.P18126179730843213458

namespace A258316

/-- `A330780(A235893(n+1)+1)` -/
def P18126179730843213458.Spec : Prop :=
  ∀ n, P18126179730843213458.a n = A258316 (n + 1)

end A258316

/-!
# A258318: Number of distinct numbers in rows 0 through n of triangle A258197.

The programs for A258318, there is no canonical definition to state claims against.
-/

/-! ## A258318.P2470226717244994116

`A105224(A006521(n+1)-A004247(n))`
-/

namespace A258318.P2470226717244994116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A006521 (n + 1) - A004247 n).toNat

end

end A258318.P2470226717244994116

/-! ## A258318.P14651828937817341278

`A105224(A006521(n+1)-A014473(n))`
-/

namespace A258318.P14651828937817341278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A006521 (n + 1) - A014473 n).toNat

end

end A258318.P14651828937817341278

/-! ## A258318.P2204198721935116566

`A105224(A006521(n+1)-A048720(n))`
-/

namespace A258318.P2204198721935116566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A006521 (n + 1) - A048720 n).toNat

end

end A258318.P2204198721935116566

/-! ## A258318.P8200331681563969683

`A105224(A006521(n+1)-A319703(n+1))`
-/

namespace A258318.P8200331681563969683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A006521 (n + 1) - A319703 (n + 1)).toNat

end

end A258318.P8200331681563969683

/-! ## A258318.P3129142697131592840

`A273190(A006521(n+1)-A346700(n+1))`
-/

namespace A258318.P3129142697131592840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A006521 (n + 1) - A346700 (n + 1)).toNat

end

end A258318.P3129142697131592840

/-!
# A258321: a(n) = Fibonacci(n) + n*Lucas(n).

The programs for A258321, the canonical program `A258321.P821464100748566626` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258321 has offset 0).

The definition of A258321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+n*A000032(n)` (program `A258321.P821464100748566626`, by `A258321.P821464100748566626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258321.P821464100748566626

`A000045(n)+n*A000032(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A258321

/-- `A000045(n)+n*A000032(n)` -/
def P821464100748566626.Spec : Prop :=
  ∀ n, P821464100748566626.a n = A258321 n

theorem P821464100748566626.correct : P821464100748566626.Spec := by
  intro n
  simp only [A258321]

end A258321

/-! ## A258321.P18098245663501933375

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14`
-/

namespace A258321.P18098245663501933375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 14] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A258321.P18098245663501933375

namespace A258321

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P18098245663501933375.Spec : Prop :=
  ∀ n, P18098245663501933375.a n = A258321 n

end A258321

/-! ## A258321.P12581220535921351468

`ogf((2x+3x^2-2x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A258321.P12581220535921351468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, -2] [1, -2, -1, 2, 1] n

end

end A258321.P12581220535921351468

namespace A258321

/-- `ogf((2x+3x^2-2x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P12581220535921351468.Spec : Prop :=
  ∀ n, P12581220535921351468.a n = A258321 n

end A258321

/-! ## A258321.P18023965071038395976

`A094588(n)+A023607(n)`
-/

namespace A258321.P18023965071038395976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n + A023607 n

end

end A258321.P18023965071038395976

namespace A258321

/-- `A094588(n)+A023607(n)` -/
def P18023965071038395976.Spec : Prop :=
  ∀ n, P18023965071038395976.a n = A258321 n

end A258321

/-! ## A258321.P6660636915111443675

`A146005(n)+A000045(n)`
-/

namespace A258321.P6660636915111443675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 n + A000045 n

end

end A258321.P6660636915111443675

namespace A258321

/-- `A146005(n)+A000045(n)` -/
def P6660636915111443675.Spec : Prop :=
  ∀ n, P6660636915111443675.a n = A258321 n

theorem P6660636915111443675.correct : P6660636915111443675.Spec := by
  intro n
  simp only [A258321, Nat.add_sub_cancel, A258321.P6660636915111443675.a, A258321.P821464100748566626.a, A000032, A000032.P8352177345629330861.a, A000045, A000045.P11838749114346432762.a, A146005, A146005.P6209391916366834839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258321

/-! ## A258321.P15784556095635228503

`A099924(n)-2*A000032(n)`
-/

namespace A258321.P15784556095635228503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099924 n - 2 * A000032 n

end

end A258321.P15784556095635228503

namespace A258321

/-- `A099924(n)-2*A000032(n)` -/
def P15784556095635228503.Spec : Prop :=
  ∀ n, P15784556095635228503.a n = A258321 n

end A258321

/-! ## A258321.P18270598495101022769

`n*A104449(n)-A264147(n)`
-/

namespace A258321.P18270598495101022769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104449 n - A264147 n

end

end A258321.P18270598495101022769

namespace A258321

/-- `n*A104449(n)-A264147(n)` -/
def P18270598495101022769.Spec : Prop :=
  ∀ n, P18270598495101022769.a n = A258321 n

end A258321

/-! ## A258321.P11116646956068023994

`abs(A236191(n))+n*A000032(n)`
-/

namespace A258321.P11116646956068023994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n| + (n : ℤ) * A000032 n

end

end A258321.P11116646956068023994

namespace A258321

/-- `abs(A236191(n))+n*A000032(n)` -/
def P11116646956068023994.Spec : Prop :=
  ∀ n, P11116646956068023994.a n = A258321 n

end A258321

/-! ## A258321.P17638394979505930438

`A000045(n)+n*Δ[A001610(n)]`
-/

namespace A258321.P17638394979505930438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A258321.P17638394979505930438

namespace A258321

/-- `A000045(n)+n*Δ[A001610(n)]` -/
def P17638394979505930438.Spec : Prop :=
  ∀ n, P17638394979505930438.a n = A258321 n

end A258321

/-! ## A258321.P4702605420684896736

`Δ[A000071(n+1)]+n*A000032(n)`
-/

namespace A258321.P4702605420684896736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A000032 n

end

end A258321.P4702605420684896736

namespace A258321

/-- `Δ[A000071(n+1)]+n*A000032(n)` -/
def P4702605420684896736.Spec : Prop :=
  ∀ n, P4702605420684896736.a n = A258321 n

end A258321

/-! ## A258321.P18383235724607711998

`A000045(n)+n*Δ[A000204(n+1)]`
-/

namespace A258321.P18383235724607711998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A258321.P18383235724607711998

namespace A258321

/-- `A000045(n)+n*Δ[A000204(n+1)]` -/
def P18383235724607711998.Spec : Prop :=
  ∀ n, P18383235724607711998.a n = A258321 n

end A258321

/-! ## A258321.P13022226560632349250

`A212804(n+1)+n*A127218(2*n)`
-/

namespace A258321.P13022226560632349250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + (n : ℤ) * A127218 (2 * n)

end

end A258321.P13022226560632349250

namespace A258321

/-- `A212804(n+1)+n*A127218(2*n)` -/
def P13022226560632349250.Spec : Prop :=
  ∀ n, P13022226560632349250.a n = A258321 n

end A258321

/-! ## A258321.P13786646369732994730

`A302126(2*n)+n*A303427(2*n)`
-/

namespace A258321.P13786646369732994730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n) + (n : ℤ) * A303427 (2 * n)

end

end A258321.P13786646369732994730

namespace A258321

/-- `A302126(2*n)+n*A303427(2*n)` -/
def P13786646369732994730.Spec : Prop :=
  ∀ n, P13786646369732994730.a n = A258321 n

end A258321

/-! ## A258321.P12125541702961282849

`A103609(2*n)+n*A302126(2*n+1)`
-/

namespace A258321.P12125541702961282849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + (n : ℤ) * A302126 (2 * n + 1)

end

end A258321.P12125541702961282849

namespace A258321

/-- `A103609(2*n)+n*A302126(2*n+1)` -/
def P12125541702961282849.Spec : Prop :=
  ∀ n, P12125541702961282849.a n = A258321 n

end A258321

/-! ## A258321.P14361078376907356093

`A302126(2*n)+n*A302126(2*n+1)`
-/

namespace A258321.P14361078376907356093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n) + (n : ℤ) * A302126 (2 * n + 1)

end

end A258321.P14361078376907356093

namespace A258321

/-- `A302126(2*n)+n*A302126(2*n+1)` -/
def P14361078376907356093.Spec : Prop :=
  ∀ n, P14361078376907356093.a n = A258321 n

end A258321

/-! ## A258321.P5512558240423128235

`A303427(2*n+1)+n*A303427(2*n)`
-/

namespace A258321.P5512558240423128235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n + 1) + (n : ℤ) * A303427 (2 * n)

end

end A258321.P5512558240423128235

namespace A258321

/-- `A303427(2*n+1)+n*A303427(2*n)` -/
def P5512558240423128235.Spec : Prop :=
  ∀ n, P5512558240423128235.a n = A258321 n

end A258321

/-! ## A258321.P5519917894836430952

`A000045(n)+A178521(n)+A094588(n)`
-/

namespace A258321.P5519917894836430952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A178521 n + A094588 n)

end

end A258321.P5519917894836430952

namespace A258321

/-- `A000045(n)+A178521(n)+A094588(n)` -/
def P5519917894836430952.Spec : Prop :=
  ∀ n, P5519917894836430952.a n = A258321 n

end A258321

/-! ## A258321.P8914691127188286376

`A094588(n)+A264147(n)+A099920(n)`
-/

namespace A258321.P8914691127188286376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n + (A264147 n + A099920 n)

end

end A258321.P8914691127188286376

namespace A258321

/-- `A094588(n)+A264147(n)+A099920(n)` -/
def P8914691127188286376.Spec : Prop :=
  ∀ n, P8914691127188286376.a n = A258321 n

end A258321

/-! ## A258321.P11358283373629706680

`A000045(n)+A354044(n)+A264147(n)`
-/

namespace A258321.P11358283373629706680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A354044 n + A264147 n)

end

end A258321.P11358283373629706680

namespace A258321

/-- `A000045(n)+A354044(n)+A264147(n)` -/
def P11358283373629706680.Spec : Prop :=
  ∀ n, P11358283373629706680.a n = A258321 n

end A258321

/-! ## A258321.P8686303855870556217

`A029907(n)+A146005(n)-A001629(n)`
-/

namespace A258321.P8686303855870556217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + (A146005 n - A001629 n)

end

end A258321.P8686303855870556217

namespace A258321

/-- `A029907(n)+A146005(n)-A001629(n)` -/
def P8686303855870556217.Spec : Prop :=
  ∀ n, P8686303855870556217.a n = A258321 n

end A258321

/-!
# A258322: Expansion of phi(-q) * phi(-q^9) in powers of q where phi() is a Ramanujan theta function.

The programs for A258322, there is no canonical definition to state claims against.
-/

/-! ## A258322.P8231381678039280924

`A010892(n)*A256280(n)`
-/

namespace A258322.P8231381678039280924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A256280 n

end

end A258322.P8231381678039280924

/-! ## A258322.P12833286486331105713

`A010892(n)*A258292(n)`
-/

namespace A258322.P12833286486331105713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A258292 n

end

end A258322.P12833286486331105713

/-! ## A258322.P16646939522866180804

`A033999(n)*A258034(n)`
-/

namespace A258322.P16646939522866180804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258034 n

end

end A258322.P16646939522866180804

/-! ## A258322.P3806000365028896813

`A049347(n)*A256014(n)`
-/

namespace A258322.P3806000365028896813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A256014 n

end

end A258322.P3806000365028896813

/-! ## A258322.P966248159626751395

`A049347(n)*A258279(n)`
-/

namespace A258322.P966248159626751395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A258279 n

end

end A258322.P966248159626751395

/-! ## A258322.P5850515332528043722

`A057079(n)*A256269(n)`
-/

namespace A258322.P5850515332528043722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A256269 n

end

end A258322.P5850515332528043722

/-! ## A258322.P11078505627518365958

`A115714(n)*A258034(n)`
-/

namespace A258322.P11078505627518365958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 n * A258034 n

end

end A258322.P11078505627518365958

/-! ## A258322.P1183802559673024706

`A115953(n)*A258034(n)`
-/

namespace A258322.P1183802559673024706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115953 n * A258034 n

end

end A258322.P1183802559673024706

/-! ## A258322.P9656746274522496063

`A131713(n)*A256279(n)`
-/

namespace A258322.P9656746274522496063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A256279 n

end

end A258322.P9656746274522496063

/-! ## A258322.P13164263038634962499

`A132954(n)*A256269(n)`
-/

namespace A258322.P13164263038634962499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A256269 n

end

end A258322.P13164263038634962499

/-! ## A258322.P6923872615397448934

`A258034(n)*A309873(n+1)`
-/

namespace A258322.P6923872615397448934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258034 n * A309873 (n + 1)

end

end A258322.P6923872615397448934

/-! ## A258322.P10020029155186097803

`(2-A057079(n)²)*A256279(n)`
-/

namespace A258322.P10020029155186097803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A256279 n

end

end A258322.P10020029155186097803

/-! ## A258322.P3344979372072564121

`(2-A132954(n)²)*A256279(n)`
-/

namespace A258322.P3344979372072564121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A256279 n

end

end A258322.P3344979372072564121

/-! ## A258322.P7764168680077618177

`A057079(n+2)*A258034(n)`
-/

namespace A258322.P7764168680077618177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A258034 n

end

end A258322.P7764168680077618177

/-! ## A258322.P14725190749641711627

`A010892(n)*A258210(2*n)`
-/

namespace A258322.P14725190749641711627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A258210 (2 * n)

end

end A258322.P14725190749641711627

/-! ## A258322.P3811597135884584539

`A010892(n)*A258228(2*n)`
-/

namespace A258322.P3811597135884584539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A258228 (2 * n)

end

end A258322.P3811597135884584539

/-! ## A258322.P15497005117294202925

`A010892(Δ[n²])*A256014(n)`
-/

namespace A258322.P15497005117294202925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A256014 n

end

end A258322.P15497005117294202925

/-! ## A258322.P8877678079619444945

`A010892(2*n+1)*A258279(n)`
-/

namespace A258322.P8877678079619444945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A258279 n

end

end A258322.P8877678079619444945

/-! ## A258322.P11072672017256337889

`A117441(2*n+1)*A256280(n)`
-/

namespace A258322.P11072672017256337889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117441 (2 * n + 1) * A256280 n

end

end A258322.P11072672017256337889

/-! ## A258322.P5690322513530797568

`A258228(2*n)*A260190(2*n)`
-/

namespace A258322.P5690322513530797568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 (2 * n) * A260190 (2 * n)

end

end A258322.P5690322513530797568

/-!
# A258324: Least common multiple of all n - d, where d < n and d is a divisor of n.

The programs for A258324, there is no canonical definition to state claims against.
-/

/-! ## A258324.P1804236311004272548

`A048671(n+1)*A084190(n+1)`
-/

namespace A258324.P1804236311004272548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) * A084190 (n + 1)

end

end A258324.P1804236311004272548

/-! ## A258324.P16312718924443968214

`C(n, A088433(n+1))*A048671(A077168(n))`
-/

namespace A258324.P16312718924443968214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A088433 (n + 1)).toNat : ℤ) * A048671 (A077168 n).toNat

end

end A258324.P16312718924443968214

/-! ## A258324.P6944844934587861878

`C(n, A361205(A001045(n+1)))*A048671(n+1)`
-/

namespace A258324.P6944844934587861878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A361205 (A001045 (n + 1)).toNat).toNat : ℤ) * A048671 (n + 1)

end

end A258324.P6944844934587861878

/-! ## A258324.P11344415848552704671

`C(A329382(2^n), A335434(n+1))*A048671(n+1)`
-/

namespace A258324.P11344415848552704671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A329382 (2 ^ n)).toNat (A335434 (n + 1)).toNat : ℤ) * A048671 (n + 1)

end

end A258324.P11344415848552704671

/-!
# A258325: a(n) = Product_{k=1..n} (1 + p(k)), where p(k) is the partition function A000041.

The programs for A258325, there is no canonical definition to state claims against.
-/

/-! ## A258325.P10866480052655461531

`∏[A052810(n)]`
-/

namespace A258325.P10866480052655461531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A258325.P10866480052655461531

/-! ## A258325.P12812947235058354810

`∏[A000041(n)+1]/2`
-/

namespace A258325.P12812947235058354810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A258325.P12812947235058354810

/-! ## A258325.P13430625085314545701

`∏[A213598(n)+1]/2`
-/

namespace A258325.P13430625085314545701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A258325.P13430625085314545701

/-! ## A258325.P4199819559722257434

`∏[∑[A002865(char[1]+n)]]`
-/

namespace A258325.P4199819559722257434
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 ((if ∃ j, f3 j = n then 1 else 0) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A258325.P4199819559722257434

/-! ## A258325.P14768220514110369553

`∏[A000094(n+1)+1+n]`
-/

namespace A258325.P14768220514110369553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A258325.P14768220514110369553

/-!
# A258326: a(1) = 3; for n > 1, a(n) = a(n-1) + prime(n+2) - 2*prime(n+1) + 2*prime(n) - prime(n-1).

The programs for A258326, the canonical program `A258326.P4703316429107954744` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258326 has offset 1).

The definition of A258326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(n+3)-2*A000040(n+2)+2*A000040(n+1)-A000040(n)` (program `A258326.P4703316429107954744`, by `A258326.P4703316429107954744.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258326.P4703316429107954744

`a(n-1)+A000040(n+3)-2*A000040(n+2)+2*A000040(n+1)-A000040(n)` with `a(0)=3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A258326

/-- `a(n-1)+A000040(n+3)-2*A000040(n+2)+2*A000040(n+1)-A000040(n)` -/
def P4703316429107954744.Spec : Prop :=
  ∀ n, P4703316429107954744.a n = A258326 (n + 1)

theorem P4703316429107954744.correct : P4703316429107954744.Spec := by
  intro n
  simp only [A258326, Nat.add_sub_cancel]

end A258326

/-! ## A258326.P2141171975313167105

`A093667(n+1)-1`
-/

namespace A258326.P2141171975313167105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - 1

end

end A258326.P2141171975313167105

namespace A258326

/-- `A093667(n+1)-1` -/
def P2141171975313167105.Spec : Prop :=
  ∀ n, P2141171975313167105.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P10582385793507750665

`floor(sqrt(A324795(n+1)+4))`
-/

namespace A258326.P10582385793507750665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A324795 (n + 1) + 4)

end

end A258326.P10582385793507750665

namespace A258326

/-- `floor(sqrt(A324795(n+1)+4))` -/
def P10582385793507750665.Spec : Prop :=
  ∀ n, P10582385793507750665.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P666796319979455632

`A176246(n+1)+p?[ceil(2/acot(n))]`
-/

namespace A258326.P666796319979455632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258326.P666796319979455632

namespace A258326

/-- `A176246(n+1)+p?[ceil(2/acot(n))]` -/
def P666796319979455632.Spec : Prop :=
  ∀ n, P666796319979455632.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P5762116723511389364

`p?[2*n+5]-(A001223(n+1)+1)`
-/

namespace A258326.P5762116723511389364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (A001223 (n + 1) + 1)

end

end A258326.P5762116723511389364

namespace A258326

/-- `p?[2*n+5]-(A001223(n+1)+1)` -/
def P5762116723511389364.Spec : Prop :=
  ∀ n, P5762116723511389364.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P9538331902804353351

`A135732(n+1)+A006005(n+1)`
-/

namespace A258326.P9538331902804353351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1) + A006005 (n + 1)

end

end A258326.P9538331902804353351

namespace A258326

/-- `A135732(n+1)+A006005(n+1)` -/
def P9538331902804353351.Spec : Prop :=
  ∀ n, P9538331902804353351.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P3862671340234529552

`A176246(n+1)+A000040(n+1)`
-/

namespace A258326.P3862671340234529552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1) + A000040 (n + 1)

end

end A258326.P3862671340234529552

namespace A258326

/-- `A176246(n+1)+A000040(n+1)` -/
def P3862671340234529552.Spec : Prop :=
  ∀ n, P3862671340234529552.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P3954323735744991483

`A006093(n+1)+A001223(n+2)`
-/

namespace A258326.P3954323735744991483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A001223 (n + 2)

end

end A258326.P3954323735744991483

namespace A258326

/-- `A006093(n+1)+A001223(n+2)` -/
def P3954323735744991483.Spec : Prop :=
  ∀ n, P3954323735744991483.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P1095580280336030079

`p?[2*n+5]-Δ[A014688(n+1)]`
-/

namespace A258326.P1095580280336030079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (f2 (n + 1) - f2 n)

end

end A258326.P1095580280336030079

namespace A258326

/-- `p?[2*n+5]-Δ[A014688(n+1)]` -/
def P1095580280336030079.Spec : Prop :=
  ∀ n, P1095580280336030079.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P4104162173210671694

`A046933(n+2)+A000040(n+1)`
-/

namespace A258326.P4104162173210671694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 2) + A000040 (n + 1)

end

end A258326.P4104162173210671694

namespace A258326

/-- `A046933(n+2)+A000040(n+1)` -/
def P4104162173210671694.Spec : Prop :=
  ∀ n, P4104162173210671694.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P13148584038984540894

`A046933(n+2)+A008578(n+2)`
-/

namespace A258326.P13148584038984540894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 2) + A008578 (n + 2)

end

end A258326.P13148584038984540894

namespace A258326

/-- `A046933(n+2)+A008578(n+2)` -/
def P13148584038984540894.Spec : Prop :=
  ∀ n, P13148584038984540894.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P3067702740943187320

`A007504(n+1)+A046933(n+2)-A007504(n)`
-/

namespace A258326.P3067702740943187320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A046933 (n + 2) - A007504 n)

end

end A258326.P3067702740943187320

namespace A258326

/-- `A007504(n+1)+A046933(n+2)-A007504(n)` -/
def P3067702740943187320.Spec : Prop :=
  ∀ n, P3067702740943187320.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P18410563657424761732

`A000040(n+1)+A061399(n+2)+A061398(n+2)`
-/

namespace A258326.P18410563657424761732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A061399 (n + 2) + A061398 (n + 2))

end

end A258326.P18410563657424761732

namespace A258326

/-- `A000040(n+1)+A061399(n+2)+A061398(n+2)` -/
def P18410563657424761732.Spec : Prop :=
  ∀ n, P18410563657424761732.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P15828380423928557750

`A000040(n+1)+A100820(n+2)+A028334(n+2)`
-/

namespace A258326.P15828380423928557750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A100820 (n + 2) + A028334 (n + 2))

end

end A258326.P15828380423928557750

namespace A258326

/-- `A000040(n+1)+A100820(n+2)+A028334(n+2)` -/
def P15828380423928557750.Spec : Prop :=
  ∀ n, P15828380423928557750.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P3602708125773495657

`A006093(n+1)+A065091(n+2)-A065091(n+1)`
-/

namespace A258326.P3602708125773495657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A065091 (n + 2) - A065091 (n + 1))

end

end A258326.P3602708125773495657

namespace A258326

/-- `A006093(n+1)+A065091(n+2)-A065091(n+1)` -/
def P3602708125773495657.Spec : Prop :=
  ∀ n, P3602708125773495657.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P6460746889301287571

`A006254(n+2)+A067076(n+2)-A001223(n+1)`
-/

namespace A258326.P6460746889301287571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2) + (A067076 (n + 2) - A001223 (n + 1))

end

end A258326.P6460746889301287571

namespace A258326

/-- `A006254(n+2)+A067076(n+2)-A001223(n+1)` -/
def P6460746889301287571.Spec : Prop :=
  ∀ n, P6460746889301287571.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P17921650943641361692

`A006093(n+2)+A046933(n+2)-A046933(n+1)`
-/

namespace A258326.P17921650943641361692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) + (A046933 (n + 2) - A046933 (n + 1))

end

end A258326.P17921650943641361692

namespace A258326

/-- `A006093(n+2)+A046933(n+2)-A046933(n+1)` -/
def P17921650943641361692.Spec : Prop :=
  ∀ n, P17921650943641361692.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P15283356777161975166

`A000040(n+1)+A165972(n+2)-A000040(n+2)`
-/

namespace A258326.P15283356777161975166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A165972 (n + 2) - A000040 (n + 2))

end

end A258326.P15283356777161975166

namespace A258326

/-- `A000040(n+1)+A165972(n+2)-A000040(n+2)` -/
def P15283356777161975166.Spec : Prop :=
  ∀ n, P15283356777161975166.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P17670170652519426384

`A006093(n+1)+A165972(n+2)-A006093(n+2)`
-/

namespace A258326.P17670170652519426384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A165972 (n + 2) - A006093 (n + 2))

end

end A258326.P17670170652519426384

namespace A258326

/-- `A006093(n+1)+A165972(n+2)-A006093(n+2)` -/
def P17670170652519426384.Spec : Prop :=
  ∀ n, P17670170652519426384.a n = A258326 (n + 1)

end A258326

/-! ## A258326.P18445380275279085393

`A075526(n+2)+A006093(n+1)`
-/

namespace A258326.P18445380275279085393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 2) + A006093 (n + 1)

end

end A258326.P18445380275279085393

namespace A258326

/-- `A075526(n+2)+A006093(n+1)` -/
def P18445380275279085393.Spec : Prop :=
  ∀ n, P18445380275279085393.a n = A258326 (n + 1)

end A258326

/-!
# A258327: Expansion of phi(x^3) / f(-x^2) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A258327, there is no canonical definition to state claims against.
-/

/-! ## A258327.P8936708931832206087

`(-1)^n*A256636(n)`
-/

namespace A258327.P8936708931832206087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A256636 n

end

end A258327.P8936708931832206087

/-! ## A258327.P18057366744802369139

`abs(A256636(n))`
-/

namespace A258327.P18057366744802369139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256636 n|

end

end A258327.P18057366744802369139

/-! ## A258327.P6974406777556653633

`gcd(A000038(n), A256636(n))`
-/

namespace A258327.P6974406777556653633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A256636 n)

end

end A258327.P6974406777556653633

/-! ## A258327.P693054598958042832

`lcm(A000034(n), A256636(n))`
-/

namespace A258327.P693054598958042832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A256636 n)

end

end A258327.P693054598958042832

/-! ## A258327.P14905681989982284911

`2*A036019(n)-A073252(n)`
-/

namespace A258327.P14905681989982284911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036019 n - A073252 n

end

end A258327.P14905681989982284911

/-! ## A258327.P12427501272882219690

`A135211(3*n)`
-/

namespace A258327.P12427501272882219690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135211 (3 * n)

end

end A258327.P12427501272882219690

/-! ## A258327.P10780440549114321899

`abs(A256626(3*n))`
-/

namespace A258327.P10780440549114321899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256626 (3 * n)|

end

end A258327.P10780440549114321899

/-! ## A258327.P5175556848055906554

`∑{d}[A256636(n), A000010(#)]`
-/

namespace A258327.P5175556848055906554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A258327.P5175556848055906554

/-!
# A258329: A258188(n) / 7.

The programs for A258329, there is no canonical definition to state claims against.
-/

/-! ## A258329.P13356686734342986949

`A258188(n+1)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258329.P13356686734342986949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258188 (n + 1) : ℚ) / 7

end

end A258329.P13356686734342986949

/-! ## A258329.P3727592155917359648

`A106608(A258188(n+1))`
-/

namespace A258329.P3727592155917359648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A258188 (n + 1)).toNat

end

end A258329.P3727592155917359648

/-! ## A258329.P9640506538405559492

`A257847(A258188(n+1)+1)`
-/

namespace A258329.P9640506538405559492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (A258188 (n + 1) + 1).toNat

end

end A258329.P9640506538405559492

/-! ## A258329.P2061826271737053788

`A138999(A258188(n+1)-1)`
-/

namespace A258329.P2061826271737053788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A258188 (n + 1) - 1).toNat

end

end A258329.P2061826271737053788

/-! ## A258329.P12392347850153340823

`A242062(A258188(n+1)+2)`
-/

namespace A258329.P12392347850153340823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A258188 (n + 1) + 2).toNat

end

end A258329.P12392347850153340823

/-! ## A258329.P7482546222619418893

`A187185(lcm(7, A258188(n+1)))`
-/

namespace A258329.P7482546222619418893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (Int.lcm 7 (A258188 (n + 1)))

end

end A258329.P7482546222619418893

/-!
# A258330: Inverse permutation to A258329.

The programs for A258330, there is no canonical definition to state claims against.
-/

/-! ## A258330.P17889226701958511521

`A059630(A062399(n)+1)`
-/

namespace A258330.P17889226701958511521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 (A062399 n + 1).toNat

end

end A258330.P17889226701958511521

/-! ## A258330.P3918049718995531180

`A059630(A351870(n)+1)`
-/

namespace A258330.P3918049718995531180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 (A351870 n + 1).toNat

end

end A258330.P3918049718995531180

/-! ## A258330.P16158594250320492156

`A059630(n+1)%A169903(ceil(2^(n-1)))`
-/

namespace A258330.P16158594250320492156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059630 (n + 1)) (A169903 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A258330.P16158594250320492156

/-! ## A258330.P6242793245703093641

`A059630(n+1)-A059648(A022813(n))`
-/

namespace A258330.P6242793245703093641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 (n + 1) - A059648 (A022813 n).toNat

end

end A258330.P6242793245703093641

/-! ## A258330.P5666158632687251094

`A059630(A168184(A117797(n+1))+n+1)`
-/

namespace A258330.P5666158632687251094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 (A168184 (A117797 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A258330.P5666158632687251094

/-!
# A258331: Sum of the cubes of the divisors of n^3.

The programs for A258331, the canonical program `A258331.P18294051999321372289` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258331 has offset 1).

The definition of A258331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258331.P18294051999321372289

`A001158((n+1)^3)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A258331

/-- `A001158((n+1)^3)` -/
def P18294051999321372289.Spec : Prop :=
  ∀ n, P18294051999321372289.a n = A258331 (n + 1)

theorem P18294051999321372289.correct : P18294051999321372289.Spec := by
  intro n
  simp only [A258331, Nat.add_sub_cancel]

end A258331

/-! ## A258331.P12900279456065225450

`A077454(n+1)*A175926(n+1)`
-/

namespace A258331.P12900279456065225450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077454 (n + 1) * A175926 (n + 1)

end

end A258331.P12900279456065225450

namespace A258331

/-- `A077454(n+1)*A175926(n+1)` -/
def P12900279456065225450.Spec : Prop :=
  ∀ n, P12900279456065225450.a n = A258331 (n + 1)

end A258331

/-! ## A258331.P964791357493084756

`∑{d}[n+1, #*A160889(#)]*A077454(n+1)`
-/

namespace A258331.P964791357493084756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A160889 d) * A077454 (n + 1)

end

end A258331.P964791357493084756

namespace A258331

/-- `∑{d}[n+1, #*A160889(#)]*A077454(n+1)` -/
def P964791357493084756.Spec : Prop :=
  ∀ n, P964791357493084756.a n = A258331 (n + 1)

end A258331

/-! ## A258331.P433744327386378650

`A076401(A340699(n+1))*A077454(n+1)`
-/

namespace A258331.P433744327386378650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076401 (A340699 (n + 1)).toNat * A077454 (n + 1)

end

end A258331.P433744327386378650

namespace A258331

/-- `A076401(A340699(n+1))*A077454(n+1)` -/
def P433744327386378650.Spec : Prop :=
  ∀ n, P433744327386378650.a n = A258331 (n + 1)

end A258331

/-! ## A258331.P7914268427868136917

`∑{d}[n+1, #*A254981(A000290(#))]*A077454(n+1)`
-/

namespace A258331.P7914268427868136917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A254981 (A000290 d).toNat) * A077454 (n + 1)

end

end A258331.P7914268427868136917

namespace A258331

/-- `∑{d}[n+1, #*A254981(A000290(#))]*A077454(n+1)` -/
def P7914268427868136917.Spec : Prop :=
  ∀ n, P7914268427868136917.a n = A258331 (n + 1)

end A258331

/-! ## A258331.P12391439896205588718

`∑{d}[Δ[∑[n]²], #^3]`
-/

namespace A258331.P12391439896205588718
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A258331.P12391439896205588718

namespace A258331

/-- `∑{d}[Δ[∑[n]²], #^3]` -/
def P12391439896205588718.Spec : Prop :=
  ∀ n, (P12391439896205588718.a n : ℤ) = A258331 (n + 1)

end A258331

/-!
# A258332: Numbers k such that 4*k + 1, 4*k + 2 and 4*k + 3 are not squarefree.

The programs for A258332, there is no canonical definition to state claims against.
-/

/-! ## A258332.P7407671162140146941

`record[A110962(A078144(n+1))]`
-/

namespace A258332.P7407671162140146941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A078144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258332.P7407671162140146941

/-! ## A258332.P9621381370729206745

`record[A032742(A078144(n+1)/2)]`
-/

namespace A258332.P9621381370729206745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A078144 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258332.P9621381370729206745

/-!
# A258334: A258217(n) / 7.

The programs for A258334, there is no canonical definition to state claims against.
-/

/-! ## A258334.P6694317119966651403

`A258217(n+1)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258334.P6694317119966651403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258217 (n + 1) : ℚ) / 7

end

end A258334.P6694317119966651403

/-! ## A258334.P10843621303146130632

`(A005408(n)*A258217(n+1))%A017017(n)`
-/

namespace A258334.P10843621303146130632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n * A258217 (n + 1)) (A017017 n)

end

end A258334.P10843621303146130632

/-! ## A258334.P14106125247738207648

`A138999(A258217(n+1)-4)`
-/

namespace A258334.P14106125247738207648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A258217 (n + 1) - 4).toNat

end

end A258334.P14106125247738207648

/-! ## A258334.P15469755178517123627

`A106608(A258217(n+1))`
-/

namespace A258334.P15469755178517123627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A258217 (n + 1)).toNat

end

end A258334.P15469755178517123627

/-! ## A258334.P5558058319155743255

`A257847(A258217(n+1)+1)`
-/

namespace A258334.P5558058319155743255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (A258217 (n + 1) + 1).toNat

end

end A258334.P5558058319155743255

/-! ## A258334.P4141401849403230019

`A242062(A258217(n+1)+2)`
-/

namespace A258334.P4141401849403230019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A258217 (n + 1) + 2).toNat

end

end A258334.P4141401849403230019

/-! ## A258334.P12792252132133930059

`A187185(A258217(n+1)-2)`
-/

namespace A258334.P12792252132133930059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A258217 (n + 1) - 2).toNat

end

end A258334.P12792252132133930059

/-! ## A258334.P8895725239238230948

`A187185(lcm(7, A258217(n+1)))`
-/

namespace A258334.P8895725239238230948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (Int.lcm 7 (A258217 (n + 1)))

end

end A258334.P8895725239238230948

/-! ## A258334.P15178723421553914689

`A187185(A258217(n+1)%A016792(n))`
-/

namespace A258334.P15178723421553914689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (Int.tmod (A258217 (n + 1)) (A016792 n)).toNat

end

end A258334.P15178723421553914689

/-!
# A258337: Smallest prime starting with n that does not appear earlier.

The programs for A258337, there is no canonical definition to state claims against.
-/

/-! ## A258337.P4706034461230941865

`A000040(A258339(n+1))`
-/

namespace A258337.P4706034461230941865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258339 (n + 1)).toNat

end

end A258337.P4706034461230941865

/-! ## A258337.P10036511007240870936

`A008578(A258339(n+1)+1)`
-/

namespace A258337.P10036511007240870936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A258339 (n + 1) + 1).toNat

end

end A258337.P10036511007240870936

/-! ## A258337.P4263017265931546757

`A158611(A258339(n+1)+2)`
-/

namespace A258337.P4263017265931546757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A258339 (n + 1) + 2).toNat

end

end A258337.P4263017265931546757

/-! ## A258337.P13553729432353042930

`∑{d}[A258339(n+1), A007444(#)]`
-/

namespace A258337.P13553729432353042930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A258337.P13553729432353042930

/-! ## A258337.P12799223132185916021

`A073846(2*A258339(n+1))`
-/

namespace A258337.P12799223132185916021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A258339 (n + 1)).toNat

end

end A258337.P12799223132185916021

/-! ## A258337.P7220727701086487700

`A082500(2*A258339(n+1))`
-/

namespace A258337.P7220727701086487700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A258339 (n + 1)).toNat

end

end A258337.P7220727701086487700

/-!
# A258338: Ternary ménage problem: number of seating arrangements for n opposite-sex couples around a circular table such that no spouses and no triples of the same sex seat next to each other. Seats are labeled.

The programs for A258338, there is no canonical definition to state claims against.
-/

/-! ## A258338.P15659767845632343335

`A114939(n+1)*4*(n+1)`
-/

namespace A258338.P15659767845632343335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114939 (n + 1) * 4 * (n + 1 : ℤ)

end

end A258338.P15659767845632343335

/-! ## A258338.P1129488917820047302

`Δ[A001844(n)]*A114939(n+1)`
-/

namespace A258338.P1129488917820047302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A114939 (n + 1)

end

end A258338.P1129488917820047302

/-! ## A258338.P10406917960577627617

`Δ[A046092(n)]*A114939(n+1)`
-/

namespace A258338.P10406917960577627617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A114939 (n + 1)

end

end A258338.P10406917960577627617

/-! ## A258338.P15171963064010290556

`A008574(n+1)*A114939(n+1)`
-/

namespace A258338.P15171963064010290556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) * A114939 (n + 1)

end

end A258338.P15171963064010290556

/-!
# A258339: PrimePi(A258337(n)).

The programs for A258339, there is no canonical definition to state claims against.
-/

/-! ## A258339.P17404979370161202694

`A000720(A258337(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258339.P17404979370161202694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258337 (n + 1)).toNat

end

end A258339.P17404979370161202694

/-! ## A258339.P11730838593976828504

`∑{d}[A258337(n+1), A061395(#)]`
-/

namespace A258339.P11730838593976828504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A258339.P11730838593976828504

/-! ## A258339.P16898904846840254703

`A061395(A258337(n+1)%A017465(n))`
-/

namespace A258339.P16898904846840254703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A258337 (n + 1)) (A017465 n)).toNat

end

end A258339.P16898904846840254703

/-! ## A258339.P15852369499046239337

`A061395(A258337(n+1))%A249551(n+1)`
-/

namespace A258339.P15852369499046239337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A258337 (n + 1)).toNat) (A249551 (n + 1))

end

end A258339.P15852369499046239337

/-! ## A258339.P8695218847757738540

`A061395(2*A258337(n+1))`
-/

namespace A258339.P8695218847757738540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A258337 (n + 1)).toNat

end

end A258339.P8695218847757738540

/-! ## A258339.P12588109294618463154

`∑{d}[A258337(n+1), A263297(#)]`
-/

namespace A258339.P12588109294618463154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A263297 d

end

end A258339.P12588109294618463154

/-! ## A258339.P13615201090786504153

`A263297(2*A258337(n+1)-A258337(n+1))`
-/

namespace A258339.P13615201090786504153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (2 * A258337 (n + 1) - A258337 (n + 1)).toNat

end

end A258339.P13615201090786504153

/-! ## A258339.P6101486308800497462

`A088781(A258337(2*n+1-n))`
-/

namespace A258339.P6101486308800497462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088781 (A258337 (2 * n + 1 - n)).toNat

end

end A258339.P6101486308800497462

/-! ## A258339.P11393770127813727398

`A082058(A258337(n+1))%∑[A062584(n)]`
-/

namespace A258339.P11393770127813727398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082058 (A258337 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258339.P11393770127813727398

/-! ## A258339.P7624701820045361832

`A055396(A258337(n+1))%A107926(n+1)`
-/

namespace A258339.P7624701820045361832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A258337 (n + 1)).toNat) (A107926 (n + 1))

end

end A258339.P7624701820045361832

/-! ## A258339.P15415899259020267616

`A082058(2*A258337(n+1)-A258337(n+1))`
-/

namespace A258339.P15415899259020267616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (2 * A258337 (n + 1) - A258337 (n + 1)).toNat

end

end A258339.P15415899259020267616

/-! ## A258339.P14269866932939977470

`A088781(A018800(A258337(A088781(A000040(n+1)))))`
-/

namespace A258339.P14269866932939977470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088781 (A018800 (A258337 (A088781 (A000040 (n + 1)).toNat).toNat).toNat).toNat

end

end A258339.P14269866932939977470

/-!
# A258340: a(n) = (7^n + 3^n - 2)/8.

The programs for A258340, the canonical program `A258340.P2296901585460165592` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258340 has offset 1).

The definition of A258340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^(n+1)+3^(n+1)-2)/8` (program `A258340.P13670323747377533380`, by `A258340.P13670323747377533380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258340.P2296901585460165592

`11*a(n-1)-31*a(n-2)+21*a(n-3)` with `a(0)=1, a(1)=7, a(2)=46`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A258340

/-- `11*a(n-1)-31*a(n-2)+21*a(n-3)` -/
def P2296901585460165592.Spec : Prop :=
  ∀ n, P2296901585460165592.a n = A258340 (n + 1)

theorem P2296901585460165592.correct : P2296901585460165592.Spec := by
  intro n
  simp only [A258340, Nat.add_sub_cancel]

end A258340

/-! ## A258340.P10344589099936573856

`(3^(n+1)+7^(n+1)-2)/8`
-/

namespace A258340.P10344589099936573856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) + 7 ^ (n + 1) : ℤ) - 2 : ℚ) / 8

end

end A258340.P10344589099936573856

namespace A258340

/-- `(3^(n+1)+7^(n+1)-2)/8` -/
def P10344589099936573856.Spec : Prop :=
  ∀ n, P10344589099936573856.a n = (A258340 (n + 1) : ℚ)

theorem P10344589099936573856.correct : P10344589099936573856.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A258340, Nat.add_sub_cancel, A258340.P10344589099936573856.a, A258340.P2296901585460165592.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A258340, Nat.add_sub_cancel, A258340.P10344589099936573856.a, A258340.P2296901585460165592.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A258340

/-! ## A258340.P13670323747377533380

`(7^(n+1)+3^(n+1)-2)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258340.P13670323747377533380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 1) + 3 ^ (n + 1) : ℤ) - 2 : ℚ) / 8

end

end A258340.P13670323747377533380

namespace A258340

/-- `(7^(n+1)+3^(n+1)-2)/8` -/
def P13670323747377533380.Spec : Prop :=
  ∀ n, P13670323747377533380.a n = (A258340 (n + 1) : ℚ)

theorem P13670323747377533380.correct : P13670323747377533380.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A258340, Nat.add_sub_cancel, A258340.P13670323747377533380.a, A258340.P2296901585460165592.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A258340, Nat.add_sub_cancel, A258340.P13670323747377533380.a, A258340.P2296901585460165592.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A258340

/-! ## A258340.P10080403550473274636

`∑[A083232(n)+A015518(n)]`
-/

namespace A258340.P10080403550473274636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083232 n + A015518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258340.P10080403550473274636

namespace A258340

/-- `∑[A083232(n)+A015518(n)]` -/
def P10080403550473274636.Spec : Prop :=
  ∀ n, P10080403550473274636.a n = A258340 (n + 1)

end A258340

/-! ## A258340.P8990238370707508570

`A016138(n)+∑[A000420(n)-A016138(n)]`
-/

namespace A258340.P8990238370707508570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - A016138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016138 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258340.P8990238370707508570

namespace A258340

/-- `A016138(n)+∑[A000420(n)-A016138(n)]` -/
def P8990238370707508570.Spec : Prop :=
  ∀ n, P8990238370707508570.a n = A258340 (n + 1)

end A258340

/-! ## A258340.P15163006180169930310

`∑[Δ[A081336(n)]/4]`
-/

namespace A258340.P15163006180169930310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081336 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258340.P15163006180169930310

namespace A258340

/-- `∑[Δ[A081336(n)]/4]` -/
def P15163006180169930310.Spec : Prop :=
  ∀ n, P15163006180169930310.a n = (A258340 (n + 1) : ℚ)

end A258340

/-! ## A258340.P9338660928100123245

`floor(A081336(n+1)/4)`
-/

namespace A258340.P9338660928100123245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081336 (n + 1) : ℚ) / 4⌋

end

end A258340.P9338660928100123245

namespace A258340

/-- `floor(A081336(n+1)/4)` -/
def P9338660928100123245.Spec : Prop :=
  ∀ n, P9338660928100123245.a n = A258340 (n + 1)

end A258340

/-! ## A258340.P12069789230106205941

`floor(A074608(n+1)/8)`
-/

namespace A258340.P12069789230106205941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074608 (n + 1) : ℚ) / 8⌋

end

end A258340.P12069789230106205941

namespace A258340

/-- `floor(A074608(n+1)/8)` -/
def P12069789230106205941.Spec : Prop :=
  ∀ n, P12069789230106205941.a n = A258340 (n + 1)

end A258340

/-! ## A258340.P10910932565114224735

`A016212(n)-2*A346796(n+1)`
-/

namespace A258340.P10910932565114224735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016212 n - 2 * A346796 (n + 1)

end

end A258340.P10910932565114224735

namespace A258340

/-- `A016212(n)-2*A346796(n+1)` -/
def P10910932565114224735.Spec : Prop :=
  ∀ n, P10910932565114224735.a n = A258340 (n + 1)

end A258340

/-!
# A258341: Expansion of Product_{k>=1} (1+x^k)^(k*(k+1)).

The programs for A258341, there is no canonical definition to state claims against.
-/

/-! ## A258341.P17790550019979359156

`A225524(n)-A007949(A276928(n))`
-/

namespace A258341.P17790550019979359156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225524 n - A007949 (A276928 n).toNat

end

end A258341.P17790550019979359156

/-! ## A258341.P10187812849608354493

`A225524(n)-A005614(A321911(n+1))`
-/

namespace A258341.P10187812849608354493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225524 n - A005614 (A321911 (n + 1)).toNat

end

end A258341.P10187812849608354493

/-!
# A258342: Expansion of Product_{k>=1} (1+x^k)^(k*(k+1)*(k+2)).

The programs for A258342, there is no canonical definition to state claims against.
-/

/-! ## A258342.P7901272161524835057

`A057354(A295093(n+1))-or(n, 2*n)`
-/

namespace A258342.P7901272161524835057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A295093 (n + 1)).toNat - (Nat.lor n (2 * n) : ℤ)

end

end A258342.P7901272161524835057

/-!
# A258343: Expansion of Product_{k>=1} (1+x^k)^(k*(k+1)*(k+2)/6).

The programs for A258343, there is no canonical definition to state claims against.
-/

/-! ## A258343.P8783712443500150246

`A026819(A339042(n+1))-A223893(n+1)`
-/

namespace A258343.P8783712443500150246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A339042 (n + 1)).toNat - A223893 (n + 1)

end

end A258343.P8783712443500150246

/-! ## A258343.P6147751836691522035

`or(4, A324700(a(n-1)+2))` with `a(0)=1, a(1)=1`
-/

namespace A258343.P6147751836691522035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 4 (A324700 (a (n - 1) + 2).toNat)

end

end A258343.P6147751836691522035

/-!
# A258344: Expansion of Product_{k>=1} (1+x^k)^(k*(k-1)).

The programs for A258344, there is no canonical definition to state claims against.
-/

/-! ## A258344.P7527165690478678616

`A193007(A007599(n))+A038357(n+3)`
-/

namespace A258344.P7527165690478678616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193007 (A007599 n).toNat + A038357 (n + 3)

end

end A258344.P7527165690478678616

/-! ## A258344.P12696489041342325444

`A193007(A057979(n))+A038357(n+3)`
-/

namespace A258344.P12696489041342325444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193007 (A057979 n).toNat + A038357 (n + 3)

end

end A258344.P12696489041342325444

/-!
# A258345: Expansion of Product_{k>=1} (1+x^k)^(k*(k-1)*(k-2)).

The programs for A258345, there is no canonical definition to state claims against.
-/

/-! ## A258345.P14078396729604192484

`A258351(n)-A000120(A348807(n))`
-/

namespace A258345.P14078396729604192484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258351 n - A000120 (A348807 n).toNat

end

end A258345.P14078396729604192484

/-! ## A258345.P8925813655199093358

`A343341(n)+A003056(A073990(n+1))`
-/

namespace A258345.P8925813655199093358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343341 n + A003056 (A073990 (n + 1)).toNat

end

end A258345.P8925813655199093358

/-!
# A258346: Expansion of Product_{k>=1} (1+x^k)^(k*(k-1)*(k-2)/6).

The programs for A258346, there is no canonical definition to state claims against.
-/

/-! ## A258346.P16241311652053373154

`A000196(3^n-n)-n`
-/

namespace A258346.P16241311652053373154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (3 ^ n - n) - (n : ℤ)

end

end A258346.P16241311652053373154

/-! ## A258346.P15649616688426379757

`A079643(3^n+1)-(n+1)`
-/

namespace A258346.P15649616688426379757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (3 ^ n + 1) - (n + 1 : ℤ)

end

end A258346.P15649616688426379757

/-! ## A258346.P11889312163715259225

`floor(sqrt(A014132(3^n+1)))-(n+1)`
-/

namespace A258346.P11889312163715259225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A014132 (3 ^ n + 1)) - (n + 1 : ℤ)

end

end A258346.P11889312163715259225

/-! ## A258346.P8971851446584616015

`round(sqrt(A260740(3^n+3)))-(n+1)`
-/

namespace A258346.P8971851446584616015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A260740 (3 ^ n + 3) : ℝ)) - (n + 1 : ℤ)

end

end A258346.P8971851446584616015

/-! ## A258346.P8609745189799292532

`A094683(A006952(n))-n`
-/

namespace A258346.P8609745189799292532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 (A006952 n).toNat - (n : ℤ)

end

end A258346.P8609745189799292532

/-!
# A258347: Expansion of Product_{k>=1} 1/(1-x^k)^(k*(k+1)).

The programs for A258347, there is no canonical definition to state claims against.
-/

/-! ## A258347.P17048798813841650248

`A395261(A001096(n))`
-/

namespace A258347.P17048798813841650248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395261 (A001096 n).toNat

end

end A258347.P17048798813841650248

/-!
# A258348: Expansion of Product_{k>=1} 1/(1-x^k)^(k*(k-1)).

The programs for A258348, there is no canonical definition to state claims against.
-/

/-! ## A258348.P14645998257081850488

`A323583(n)-A001222(A323609(n+1))`
-/

namespace A258348.P14645998257081850488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323583 n - A001222 (A323609 (n + 1)).toNat

end

end A258348.P14645998257081850488

/-!
# A258350: Expansion of Product_{k>=1} 1/(1-x^k)^(k*(k+1)*(k+2)).

The programs for A258350, there is no canonical definition to state claims against.
-/

/-! ## A258350.P5770297554932019522

`A123108(13*A083327(n))`
-/

namespace A258350.P5770297554932019522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (13 * A083327 n).toNat

end

end A258350.P5770297554932019522

/-!
# A258351: Expansion of Product_{k>=1} 1/(1-x^k)^(k*(k-1)*(k-2)).

The programs for A258351, there is no canonical definition to state claims against.
-/

/-! ## A258351.P12452294096188289590

`A258345(n)+A000623(A141769(n+1))`
-/

namespace A258351.P12452294096188289590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258345 n + A000623 (A141769 (n + 1)).toNat

end

end A258351.P12452294096188289590

/-! ## A258351.P16554131277952349847

`A358081(n)%A269727(A175068(n+1))`
-/

namespace A258351.P16554131277952349847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358081 n) (A269727 (A175068 (n + 1)).toNat)

end

end A258351.P16554131277952349847

/-!
# A258352: Expansion of Product_{k>=1} 1/(1-x^k)^(k*(k-1)*(k-2)/6).

The programs for A258352, there is no canonical definition to state claims against.
-/

/-! ## A258352.P17823350251100693375

`A069623(A279560(n))-A087175(n+1)`
-/

namespace A258352.P17823350251100693375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A279560 n).toNat - A087175 (n + 1)

end

end A258352.P17823350251100693375

/-! ## A258352.P4150548713164874129

`A003056(A191794(2*n))-A037475(n)`
-/

namespace A258352.P4150548713164874129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A191794 (2 * n)).toNat - A037475 n

end

end A258352.P4150548713164874129

/-! ## A258352.P1961157308712612323

`A243738(n+3)+A243708(A243745(n+2))`
-/

namespace A258352.P1961157308712612323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243738 (n + 3) + A243708 (A243745 (n + 2 + 10)).toNat

end

end A258352.P1961157308712612323

/-! ## A258352.P4154066527007942279

`A003056(A129853(2*n))-A288819(n+1)`
-/

namespace A258352.P4154066527007942279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A129853 (2 * n)).toNat - A288819 (n + 1)

end

end A258352.P4154066527007942279

/-! ## A258352.P722278605073669949

`A064722(A094683(n+1))+A000196(3^n-n)-n`
-/

namespace A258352.P722278605073669949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (A094683 (n + 1)).toNat + (A000196 (3 ^ n - n) - (n : ℤ))

end

end A258352.P722278605073669949

/-!
# A258353: Where 1's occur in A212306.

The programs for A258353, there is no canonical definition to state claims against.
-/

/-! ## A258353.P16784175314760720058

`eq[1, A212306(n+1)]+1`
-/

namespace A258353.P16784175314760720058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258353.P16784175314760720058

/-! ## A258353.P7636925523299732843

`record[A000027(n+1)/A212306(n+1)]`
-/

namespace A258353.P7636925523299732843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A212306 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258353.P7636925523299732843

/-! ## A258353.P10740987615316614105

`lt[A000068(A212306(n+1)+1), 3]+1`
-/

namespace A258353.P10740987615316614105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (A212306 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A258353.P10740987615316614105

/-! ## A258353.P5315412300781332895

`record[(n+1)/A000041(A212306(n+1)%(n+1))]`
-/

namespace A258353.P5315412300781332895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000041 (Int.tmod (A212306 (n + 1)) (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258353.P5315412300781332895

/-! ## A258353.P8310727519218943176

`record[A258996(A258996(n+1))/A212306(n+1)]`
-/

namespace A258353.P8310727519218943176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258996 (A258996 (n + 1)).toNat : ℚ) / (A212306 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258353.P8310727519218943176

/-! ## A258353.P15323668135761956767

`record[A008619(n)/A212306(A008619(n))]`
-/

namespace A258353.P15323668135761956767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A212306 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258353.P15323668135761956767

/-! ## A258353.P1171294151919532084

`record[A080513(n)/A212306(A080513(n))]`
-/

namespace A258353.P1171294151919532084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 n : ℚ) / (A212306 (A080513 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258353.P1171294151919532084

/-! ## A258353.P8122059599146126283

`record[A212306(A258354(n+1))/A212306(n+1)]`
-/

namespace A258353.P8122059599146126283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212306 (A258354 (n + 1)).toNat : ℚ) / (A212306 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258353.P8122059599146126283

/-!
# A258355: Numbers n such that cyclotomic polynomial value Phi(9,n!) is prime.

The programs for A258355, there is no canonical definition to state claims against.
-/

/-! ## A258355.P17466380731056644343

`∑[ceil(A268144(n+1)/7)]`
-/

namespace A258355.P17466380731056644343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268144 (n + 1) : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258355.P17466380731056644343

/-!
# A258357: Numbers n such that cyclotomic polynomial value Phi(7,n!) is prime.

The programs for A258357, there is no canonical definition to state claims against.
-/

/-! ## A258357.P7237533340249221354

`round(sqrt(sqrt(A252784(2*n))))`
-/

namespace A258357.P7237533340249221354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A252784 (2 * n) : ℝ)))

end

end A258357.P7237533340249221354

/-! ## A258357.P16078924042351934088

`A357166(A367867(n))+n`
-/

namespace A258357.P16078924042351934088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357166 (A367867 n).toNat + (n : ℤ)

end

end A258357.P16078924042351934088

/-!
# A258358: Sum over all partitions lambda of n into 3 distinct parts of Product_{i:lambda} prime(i).

The programs for A258358, there is no canonical definition to state claims against.
-/

/-! ## A258358.P12858069584178772299

`A258323(eq[3, A237451(n+1)])`
-/

namespace A258358.P12858069584178772299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258358.P12858069584178772299

/-! ## A258358.P4414613417520002499

`A258323(eq[4, A121997(n+1)])`
-/

namespace A258358.P4414613417520002499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258358.P4414613417520002499

/-!
# A258359: Sum over all partitions lambda of n into 4 distinct parts of Product_{i:lambda} prime(i).

The programs for A258359, there is no canonical definition to state claims against.
-/

/-! ## A258359.P11969591199931935430

`A258323(eq[4, A237451(n+1)])`
-/

namespace A258359.P11969591199931935430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258359.P11969591199931935430

/-! ## A258359.P17048806867755977645

`A258323(eq[5, A121997(n+1)])`
-/

namespace A258359.P17048806867755977645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258359.P17048806867755977645

/-!
# A258360: Sum over all partitions lambda of n into 5 distinct parts of Product_{i:lambda} prime(i).

The programs for A258360, there is no canonical definition to state claims against.
-/

/-! ## A258360.P17718579903875806695

`A258323(eq[5, A237451(n+1)])`
-/

namespace A258360.P17718579903875806695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258360.P17718579903875806695

/-! ## A258360.P147640151646676764

`A258323(eq[6, A121997(n+1)])`
-/

namespace A258360.P147640151646676764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258360.P147640151646676764

/-!
# A258361: Sum over all partitions lambda of n into 6 distinct parts of Product_{i:lambda} prime(i).

The programs for A258361, there is no canonical definition to state claims against.
-/

/-! ## A258361.P17433066489800341575

`A258323(eq[6, A237451(n+1)])`
-/

namespace A258361.P17433066489800341575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258361.P17433066489800341575

/-!
# A258362: Sum over all partitions lambda of n into 7 distinct parts of Product_{i:lambda} prime(i).

The programs for A258362, there is no canonical definition to state claims against.
-/

/-! ## A258362.P10788405654798606807

`A258323(eq[7, A237451(n+1)])`
-/

namespace A258362.P10788405654798606807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258362.P10788405654798606807

/-!
# A258363: Sum over all partitions lambda of n into 8 distinct parts of Product_{i:lambda} prime(i).

The programs for A258363, there is no canonical definition to state claims against.
-/

/-! ## A258363.P18006969968966065106

`A258323(eq[8, A237451(n+1)])`
-/

namespace A258363.P18006969968966065106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258363.P18006969968966065106

/-!
# A258369: Stirling-Bernoulli transform of A027656.

The programs for A258369, there is no canonical definition to state claims against.
-/

/-! ## A258369.P3956837581653505080

`A091346(n)+A052841(n)`
-/

namespace A258369.P3956837581653505080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091346 n + A052841 n

end

end A258369.P3956837581653505080

/-! ## A258369.P16956100257511313237

`A005649(n)-A091346(n)`
-/

namespace A258369.P16956100257511313237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 n - A091346 n

end

end A258369.P16956100257511313237

/-! ## A258369.P5516424672768493665

`(A052841(n)+A005649(n))/2`
-/

namespace A258369.P5516424672768493665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052841 n + A005649 n : ℚ) / 2

end

end A258369.P5516424672768493665

/-! ## A258369.P9315771363725697515

`A327868(2*n)-A091346(n)`
-/

namespace A258369.P9315771363725697515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (2 * n) - A091346 n

end

end A258369.P9315771363725697515

/-! ## A258369.P3597450531441789164

`A344037(n+1)+2*A344037(n)`
-/

namespace A258369.P3597450531441789164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344037 (n + 1) + 2 * A344037 n

end

end A258369.P3597450531441789164

/-! ## A258369.P14936732012261123754

`A122101(A000096(n))+A091346(n)`
-/

namespace A258369.P14936732012261123754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (A000096 n).toNat + A091346 n

end

end A258369.P14936732012261123754

/-!
# A258370: Primes as they appear in sequence {A258083(n)/3}.

The programs for A258370, there is no canonical definition to state claims against.
-/

/-! ## A258370.P17564918622147300678

`p?[A258225(n+1)]`
-/

namespace A258370.P17564918622147300678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258370.P17564918622147300678

/-! ## A258370.P3870019327344488373

`filter[A258225(n+1), A010051(#)]`
-/

namespace A258370.P3870019327344488373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A258370.P3870019327344488373

/-! ## A258370.P13816287842185910814

`A000027(p?[A258225(-xor(n, -1))])`
-/

namespace A258370.P13816287842185910814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258225 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258370.P13816287842185910814

/-! ## A258370.P14501280400203660322

`A006530(2*p?[A258225(-xor(n, -1))])`
-/

namespace A258370.P14501280400203660322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258225 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258370.P14501280400203660322

/-! ## A258370.P12184414848051076798

`A000015(p?[A258225(-xor(n, -1))])`
-/

namespace A258370.P12184414848051076798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258225 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258370.P12184414848051076798

/-! ## A258370.P1600211770936899185

`A028310(p?[A258225(-xor(n, -1))])`
-/

namespace A258370.P1600211770936899185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258225 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258370.P1600211770936899185

/-! ## A258370.P17784709652004585463

`A050369(p?[A258225(-xor(n, -1))])`
-/

namespace A258370.P17784709652004585463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258225 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050369 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258370.P17784709652004585463

/-! ## A258370.P12374288993335777607

`p?[A002264(A258083(n+1))]`
-/

namespace A258370.P12374288993335777607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A258083 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258370.P12374288993335777607

/-! ## A258370.P16157395341795951438

`p?[A008611(A258083(n+1)+1)]`
-/

namespace A258370.P16157395341795951438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A258083 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258370.P16157395341795951438

/-! ## A258370.P6944357222686767202

`p?[A087509(A258083(n+1)+1)]`
-/

namespace A258370.P6944357222686767202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 (A258083 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258370.P6944357222686767202

/-! ## A258370.P11768755811140801527

`p?[A008620(A258083(n+1)-1)]`
-/

namespace A258370.P11768755811140801527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A258083 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258370.P11768755811140801527

/-! ## A258370.P14429318355583863528

`p?[A089598(A258083(n+1)-1)]`
-/

namespace A258370.P14429318355583863528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (A258083 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258370.P14429318355583863528

/-! ## A258370.P17008340698309224803

`p?[A008615(2*A258083(n+1))]`
-/

namespace A258370.P17008340698309224803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A258083 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258370.P17008340698309224803

/-!
# A258371: Triangle read by rows: T(n,k) is number of ways of arranging n indistinguishable points on an n X n square grid such that k rows contain at least one point.

The programs for A258371, there is no canonical definition to state claims against.
-/

/-! ## A258371.P1050277437238198675

`A135278(n)*A259051(n+1)`
-/

namespace A258371.P1050277437238198675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A259051 (n + 1)

end

end A258371.P1050277437238198675

/-! ## A258371.P2640994056945159031

`A074909(n+1)*A259051(n+1)`
-/

namespace A258371.P2640994056945159031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A259051 (n + 1)

end

end A258371.P2640994056945159031

/-! ## A258371.P1034972691245656190

`A007318(comp[∑[n]])*A259051(n+1)`
-/

namespace A258371.P1034972691245656190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A259051 (n + 1)

end

end A258371.P1034972691245656190

/-! ## A258371.P13194428071976224277

`A003506(n+1)/A002260(n+1)*A259051(n+1)`
-/

namespace A258371.P13194428071976224277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A259051 (n + 1) : ℚ)

end

end A258371.P13194428071976224277

/-! ## A258371.P7127775902709265027

`A003506(n+1)*A259051(n+1)/A000005(A059268(n))`
-/

namespace A258371.P7127775902709265027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) * A259051 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A258371.P7127775902709265027

/-!
# A258373: a(n+1) is the least number not occurring earlier such that concatenation(a(n),a(n+1)) - 1 is a palindrome; a(1)=1.

The programs for A258373, there is no canonical definition to state claims against.
-/

/-! ## A258373.P15843823645717625323

`∑[(4*A113722(A000217(n)))^A031286(n)]`
-/

namespace A258373.P15843823645717625323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A113722 (A000217 n).toNat : ℚ) ^ (A031286 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258373.P15843823645717625323

/-! ## A258373.P7611476633970734513

`∑[(4*A129972(A129988(n)))^A031286(n)]`
-/

namespace A258373.P7611476633970734513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A129972 (A129988 n).toNat : ℚ) ^ (A031286 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258373.P7611476633970734513

/-! ## A258373.P3821374994393085542

`A154562(a(n-1))+1` with `a(0)=1`
-/

namespace A258373.P3821374994393085542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A154562 (a (n - 1)).toNat + 1

end

end A258373.P3821374994393085542

/-! ## A258373.P12249014027188078600

`A193412(a(n-1))+1` with `a(0)=1`
-/

namespace A258373.P12249014027188078600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193412 (a (n - 1)).toNat + 1

end

end A258373.P12249014027188078600

/-! ## A258373.P11253382024408787373

`A347400(a(n-1))+1` with `a(0)=1`
-/

namespace A258373.P11253382024408787373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347400 (a (n - 1)).toNat + 1

end

end A258373.P11253382024408787373

/-!
# A258375: Least primitive weird number with n prime divisors, counting multiplicity.

The programs for A258375, there is no canonical definition to state claims against.
-/

/-! ## A258375.P16711167069848069008

`A258882(A275972(3*n)%A322614(n))`
-/

namespace A258375.P16711167069848069008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258882 (Int.tmod (A275972 (3 * n)) (A322614 n)).toNat

end

end A258375.P16711167069848069008

/-!
# A258376: Number of edges connecting the subgraph on {1, ..., n} with the complement in the minimal graph on positive natural numbers where degree(n) equals n.

The programs for A258376, the canonical program `A258376.P5397532955847838472` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258376 has offset 1).

The definition of A258376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258376.P17213880400318094135

`∑[2*floor((n+2)/ϕ)-(n+1)]`
-/

namespace A258376.P17213880400318094135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 2 : ℝ) / Real.goldenRatio⌋ - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258376.P17213880400318094135

namespace A258376

/-- `∑[2*floor((n+2)/ϕ)-(n+1)]` -/
def P17213880400318094135.Spec : Prop :=
  ∀ n, P17213880400318094135.a n = A258376 (n + 1)

end A258376

/-! ## A258376.P5397532955847838472

`∑[2*A005206(n+1)]-∑[n+1]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A258376

/-- `∑[2*A005206(n+1)]-∑[n+1]` -/
def P5397532955847838472.Spec : Prop :=
  ∀ n, P5397532955847838472.a n = A258376 (n + 1)

theorem P5397532955847838472.correct : P5397532955847838472.Spec := by
  intro n
  simp only [A258376, Nat.add_sub_cancel]

end A258376

/-! ## A258376.P5251293151780061092

`∑[2*(n+1)]-∑[A287676(n+1)]`
-/

namespace A258376.P5251293151780061092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A258376.P5251293151780061092

namespace A258376

/-- `∑[2*(n+1)]-∑[A287676(n+1)]` -/
def P5251293151780061092.Spec : Prop :=
  ∀ n, P5251293151780061092.a n = A258376 (n + 1)

end A258376

/-! ## A258376.P12863895475740141836

`∑[A339765(n+2)]+n+1`
-/

namespace A258376.P12863895475740141836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339765 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A258376.P12863895475740141836

namespace A258376

/-- `∑[A339765(n+2)]+n+1` -/
def P12863895475740141836.Spec : Prop :=
  ∀ n, P12863895475740141836.a n = A258376 (n + 1)

end A258376

/-! ## A258376.P16688000253806901729

`A183136(n+2)+A183136(n+2)-A000217(n+1)`
-/

namespace A258376.P16688000253806901729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183136 (n + 2) + (A183136 (n + 2) - A000217 (n + 1))

end

end A258376.P16688000253806901729

namespace A258376

/-- `A183136(n+2)+A183136(n+2)-A000217(n+1)` -/
def P16688000253806901729.Spec : Prop :=
  ∀ n, P16688000253806901729.a n = A258376 (n + 1)

end A258376

/-! ## A258376.P63920551091944157

`∑[A060145(n+2)]%A049636(n)²`
-/

namespace A258376.P63920551091944157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A049636 n ^ 2)

end

end A258376.P63920551091944157

namespace A258376

/-- `∑[A060145(n+2)]%A049636(n)²` -/
def P63920551091944157.Spec : Prop :=
  ∀ n, P63920551091944157.a n = A258376 (n + 1)

end A258376

/-! ## A258376.P18031779771244906140

`A000027(∑[A060145(n+2)])`
-/

namespace A258376.P18031779771244906140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258376.P18031779771244906140

namespace A258376

/-- `A000027(∑[A060145(n+2)])` -/
def P18031779771244906140.Spec : Prop :=
  ∀ n, P18031779771244906140.a n = A258376 (n + 1)

end A258376

/-! ## A258376.P15900380667874109392

`abs(2*A183137(n+2)-∑[n+1])`
-/

namespace A258376.P15900380667874109392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A183137 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A258376.P15900380667874109392

namespace A258376

/-- `abs(2*A183137(n+2)-∑[n+1])` -/
def P15900380667874109392.Spec : Prop :=
  ∀ n, P15900380667874109392.a n = A258376 (n + 1)

end A258376

/-! ## A258376.P477709361469136204

`A183136(n+2)-A183137(n+2)`
-/

namespace A258376.P477709361469136204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183136 (n + 2) - A183137 (n + 2)

end

end A258376.P477709361469136204

namespace A258376

/-- `A183136(n+2)-A183137(n+2)` -/
def P477709361469136204.Spec : Prop :=
  ∀ n, P477709361469136204.a n = A258376 (n + 1)

end A258376

/-! ## A258376.P17494576875321422262

`A000217(n+1)-2*A183137(n+2)`
-/

namespace A258376.P17494576875321422262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - 2 * A183137 (n + 2)

end

end A258376.P17494576875321422262

namespace A258376

/-- `A000217(n+1)-2*A183137(n+2)` -/
def P17494576875321422262.Spec : Prop :=
  ∀ n, P17494576875321422262.a n = A258376 (n + 1)

end A258376

/-!
# A258377: O.g.f. satisfies A^2(z) = 1/(1 - z)*( BINOMIAL(BINOMIAL(A(z))) ).

The programs for A258377, there is no canonical definition to state claims against.
-/

/-! ## A258377.P2861784365288147592

`∑[∏{p}[A228938(n)², #]]`
-/

namespace A258377.P2861784365288147592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228938 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258377.P2861784365288147592

/-!
# A258378: O.g.f. satisfies A^3(z) = 1/(1 - z)*( BINOMIAL(BINOMIAL(A(z))) )^2.

The programs for A258378, there is no canonical definition to state claims against.
-/

/-! ## A258378.P4212827769929913781

`A212245(A006862(n))+n^(n%2)`
-/

namespace A258378.P4212827769929913781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212245 (A006862 n).toNat + (n ^ (n % 2) : ℤ)

end

end A258378.P4212827769929913781

/-!
# A258383: Run lengths of consecutive identical terms in A062234.

The programs for A258383, the canonical program `A258383.P13211642193045278784` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258383 has offset 1).

The definition of A258383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258383.P13211642193045278784

`Δ[A258432(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A258383

/-- `Δ[A258432(n+1)]` -/
def P13211642193045278784.Spec : Prop :=
  ∀ n, P13211642193045278784.a n = A258383 (n + 1)

theorem P13211642193045278784.correct : P13211642193045278784.Spec := by
  intro n
  simp only [A258383, Nat.add_sub_cancel]

end A258383

/-! ## A258383.P1434606370037495924

`A258432(n+2)-A258432(n+1)`
-/

namespace A258383.P1434606370037495924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (n + 2) - A258432 (n + 1)

end

end A258383.P1434606370037495924

namespace A258383

/-- `A258432(n+2)-A258432(n+1)` -/
def P1434606370037495924.Spec : Prop :=
  ∀ n, P1434606370037495924.a n = A258383 (n + 1)

theorem P1434606370037495924.correct : P1434606370037495924.Spec := by
  intro n
  simp only [A258383, Nat.add_sub_cancel, A258383.P1434606370037495924.a, A258383.P13211642193045278784.f1, A258383.P13211642193045278784.a, SequenceMachineLib.memo_apply]

end A258383

/-! ## A258383.P2200254903551829348

`Δ[eq[0, char[A257762(n+1)]]]`
-/

namespace A258383.P2200254903551829348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257762 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A258383.P2200254903551829348

namespace A258383

/-- `Δ[eq[0, char[A257762(n+1)]]]` -/
def P2200254903551829348.Spec : Prop :=
  ∀ n, P2200254903551829348.a n = A258383 (n + 1)

end A258383

/-! ## A258383.P9938555308830318421

`abs(Δ[A258432(A052938(2*n))])`
-/

namespace A258383.P9938555308830318421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A258383.P9938555308830318421

namespace A258383

/-- `abs(Δ[A258432(A052938(2*n))])` -/
def P9938555308830318421.Spec : Prop :=
  ∀ n, P9938555308830318421.a n = A258383 (n + 1)

end A258383

/-! ## A258383.P8584331721507688816

`Δ[A258432(A052938(2*n))%A027692(n)]`
-/

namespace A258383.P8584331721507688816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258432 (A052938 (2 * n)).toNat) (A027692 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258383.P8584331721507688816

namespace A258383

/-- `Δ[A258432(A052938(2*n))%A027692(n)]` -/
def P8584331721507688816.Spec : Prop :=
  ∀ n, P8584331721507688816.a n = A258383 (n + 1)

end A258383

/-! ## A258383.P10964870151785861828

`Δ[record[A258432(A274640(n))]]`
-/

namespace A258383.P10964870151785861828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (A274640 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258383.P10964870151785861828

namespace A258383

/-- `Δ[record[A258432(A274640(n))]]` -/
def P10964870151785861828.Spec : Prop :=
  ∀ n, P10964870151785861828.a n = A258383 (n + 1)

end A258383

/-!
# A258384: a(n) = n^(n-1) * (n+1)^n.

The programs for A258384, the canonical program `A258384.P15853654754953121014` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258384 has offset 1).

The definition of A258384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n*(n+2)^(n+1)` (program `A258384.P15853654754953121014`, by `A258384.P15853654754953121014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258384.P15853654754953121014

`(n+1)^n*(n+2)^(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A258384

/-- `(n+1)^n*(n+2)^(n+1)` -/
def P15853654754953121014.Spec : Prop :=
  ∀ n, (P15853654754953121014.a n : ℤ) = A258384 (n + 1)

theorem P15853654754953121014.correct : P15853654754953121014.Spec := by
  intro n
  simp only [A258384, Nat.add_sub_cancel]

end A258384

/-! ## A258384.P2917367030110550755

`lcm((n+1)^n, (n+2)^(n+1))`
-/

namespace A258384.P2917367030110550755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ n) ((n + 2) ^ (n + 1))

end

end A258384.P2917367030110550755

namespace A258384

/-- `lcm((n+1)^n, (n+2)^(n+1))` -/
def P2917367030110550755.Spec : Prop :=
  ∀ n, (P2917367030110550755.a n : ℤ) = A258384 (n + 1)

end A258384

/-! ## A258384.P17097199444257097335

`∑[a(n-1)+2]^(n+1)/(n+1)` with `a(0)=2`
-/

namespace A258384.P17097199444257097335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A258384.P17097199444257097335

namespace A258384

/-- `∑[a(n-1)+2]^(n+1)/(n+1)` -/
def P17097199444257097335.Spec : Prop :=
  ∀ n, P17097199444257097335.a n = (A258384 (n + 1) : ℚ)

end A258384

/-! ## A258384.P8107364082547546418

`A174881(n+1)/(n+1)`
-/

namespace A258384.P8107364082547546418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174881 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A258384.P8107364082547546418

namespace A258384

/-- `A174881(n+1)/(n+1)` -/
def P8107364082547546418.Spec : Prop :=
  ∀ n, P8107364082547546418.a n = (A258384 (n + 1) : ℚ)

theorem P8107364082547546418.correct : P8107364082547546418.Spec := by
  intro n
  simp only [A258384, Nat.add_sub_cancel, A258384.P8107364082547546418.a, A258384.P15853654754953121014.a, A174881, A174881.P9573270728012474678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258384

/-! ## A258384.P2430625296701284450

`A002378(n+1)^(n+1)/(n+1)`
-/

namespace A258384.P2430625296701284450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) ^ (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A258384.P2430625296701284450

namespace A258384

/-- `A002378(n+1)^(n+1)/(n+1)` -/
def P2430625296701284450.Spec : Prop :=
  ∀ n, P2430625296701284450.a n = (A258384 (n + 1) : ℚ)

end A258384

/-!
# A258385: a(n) = n^(n+1) * (n-1)^n.

The programs for A258385, the canonical program `A258385.P12154878898210878970` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258385 has offset 1).

The definition of A258385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+2)*n^(n+1)` (program `A258385.P12154878898210878970`, by `A258385.P12154878898210878970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258385.P12154878898210878970

`(n+1)^(n+2)*n^(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A258385

/-- `(n+1)^(n+2)*n^(n+1)` -/
def P12154878898210878970.Spec : Prop :=
  ∀ n, (P12154878898210878970.a n : ℤ) = A258385 (n + 1)

theorem P12154878898210878970.correct : P12154878898210878970.Spec := by
  intro n
  simp only [A258385, Nat.add_sub_cancel]

end A258385

/-! ## A258385.P9247447955475822686

`lcm(n^(n+1), record[(n-1)^n])`
-/

namespace A258385.P9247447955475822686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ (n + 1) : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A258385.P9247447955475822686

namespace A258385

/-- `lcm(n^(n+1), record[(n-1)^n])` -/
def P9247447955475822686.Spec : Prop :=
  ∀ n, (P9247447955475822686.a n : ℤ) = A258385 (n + 1)

end A258385

/-! ## A258385.P1800794159931972653

`lcm((n+1)^(n+2), (-n)^(n+1))`
-/

namespace A258385.P1800794159931972653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ (n + 2) : ℤ) ((-(n : ℤ)) ^ (n + 1))

end

end A258385.P1800794159931972653

namespace A258385

/-- `lcm((n+1)^(n+2), (-n)^(n+1))` -/
def P1800794159931972653.Spec : Prop :=
  ∀ n, (P1800794159931972653.a n : ℤ) = A258385 (n + 1)

end A258385

/-! ## A258385.P3880851645345531417

`record[A095886(n+1)*A095893(n+2)]`
-/

namespace A258385.P3880851645345531417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095886 (n + 1) * A095893 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258385.P3880851645345531417

namespace A258385

/-- `record[A095886(n+1)*A095893(n+2)]` -/
def P3880851645345531417.Spec : Prop :=
  ∀ n, P3880851645345531417.a n = A258385 (n + 1)

end A258385

/-! ## A258385.P4480033285528378255

`record[A095893(n+1)*A095893(n+2)]`
-/

namespace A258385.P4480033285528378255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095893 (n + 1) * A095893 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258385.P4480033285528378255

namespace A258385

/-- `record[A095893(n+1)*A095893(n+2)]` -/
def P4480033285528378255.Spec : Prop :=
  ∀ n, P4480033285528378255.a n = A258385 (n + 1)

end A258385

/-!
# A258387: a(n) = (n+1)^n + n^(n-1).

The programs for A258387, the canonical program `A258387.P771850143512087191` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258387 has offset 1).

The definition of A258387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)^(n+1)+(n+1)^n` (program `A258387.P771850143512087191`, by `A258387.P771850143512087191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258387.P771850143512087191

`(n+2)^(n+1)+(n+1)^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A258387

/-- `(n+2)^(n+1)+(n+1)^n` -/
def P771850143512087191.Spec : Prop :=
  ∀ n, (P771850143512087191.a n : ℤ) = A258387 (n + 1)

theorem P771850143512087191.correct : P771850143512087191.Spec := by
  intro n
  simp only [A258387, Nat.add_sub_cancel]

end A258387

/-! ## A258387.P15863565121196506857

`abs(Δ[A213236(n+1)])`
-/

namespace A258387.P15863565121196506857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A258387.P15863565121196506857

namespace A258387

/-- `abs(Δ[A213236(n+1)])` -/
def P15863565121196506857.Spec : Prop :=
  ∀ n, P15863565121196506857.a n = A258387 (n + 1)

end A258387

/-!
# A258388: a(n) = n^(n+1) + (n-1)^n.

The programs for A258388, the canonical program `A258388.P8551760635502559725` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258388 has offset 0).

The definition of A258388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)+(n-1)^n` (program `A258388.P8551760635502559725`, by `A258388.P8551760635502559725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258388.P8551760635502559725

`n^(n+1)+(n-1)^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A258388

/-- `n^(n+1)+(n-1)^n` -/
def P8551760635502559725.Spec : Prop :=
  ∀ n, P8551760635502559725.a n = A258388 n

theorem P8551760635502559725.correct : P8551760635502559725.Spec := by
  intro n
  simp only [A258388]

end A258388

/-! ## A258388.P4444274187339719770

`gcd(C(n, n²), Δ[(1-n)^n])`
-/

namespace A258388.P4444274187339719770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) (f1 (n + 1) - f1 n)

end

end A258388.P4444274187339719770

namespace A258388

/-- `gcd(C(n, n²), Δ[(1-n)^n])` -/
def P4444274187339719770.Spec : Prop :=
  ∀ n, (P4444274187339719770.a n : ℤ) = A258388 n

end A258388

/-! ## A258388.P12278185828392977433

`abs(Δ[A022958(n+1)^n])`
-/

namespace A258388.P12278185828392977433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A258388.P12278185828392977433

namespace A258388

/-- `abs(Δ[A022958(n+1)^n])` -/
def P12278185828392977433.Spec : Prop :=
  ∀ n, P12278185828392977433.a n = A258388 n

end A258388

/-! ## A258388.P1103753298882221995

`abs(A007778(n)+(n-1)^n)`
-/

namespace A258388.P1103753298882221995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007778 n + ((n : ℤ) - 1) ^ n|

end

end A258388.P1103753298882221995

namespace A258388

/-- `abs(A007778(n)+(n-1)^n)` -/
def P1103753298882221995.Spec : Prop :=
  ∀ n, P1103753298882221995.a n = A258388 n

end A258388

/-!
# A258389: a(n) = (n^(n+1)-(n-1)^n) + ((n+1)^n-n^(n-1)).

The programs for A258389, the canonical program `A258389.P13170896744156998977` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258389 has offset 1).

The definition of A258389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+2)-n^(n+1)+(n+2)^(n+1)-(n+1)^n` (program `A258389.P13170896744156998977`, by `A258389.P13170896744156998977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258389.P13170896744156998977

`(n+1)^(n+2)-n^(n+1)+(n+2)^(n+1)-(n+1)^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A258389

/-- `(n+1)^(n+2)-n^(n+1)+(n+2)^(n+1)-(n+1)^n` -/
def P13170896744156998977.Spec : Prop :=
  ∀ n, P13170896744156998977.a n = A258389 (n + 1)

theorem P13170896744156998977.correct : P13170896744156998977.Spec := by
  intro n
  simp only [A258389, Nat.add_sub_cancel]

end A258389

/-! ## A258389.P987507806713576862

`Δ[A051442(n)]`
-/

namespace A258389.P987507806713576862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258389.P987507806713576862

namespace A258389

/-- `Δ[A051442(n)]` -/
def P987507806713576862.Spec : Prop :=
  ∀ n, P987507806713576862.a n = A258389 (n + 1)

theorem P987507806713576862.correct : P987507806713576862.Spec := by
  intro n
  simp only [A258389, Nat.add_sub_cancel, A258389.P987507806713576862.f1, A258389.P987507806713576862.a, A258389.P13170896744156998977.a, A051442, A051442.P7165011081909153027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258389

/-! ## A258389.P17622662105990849624

`Δ[A055652(2*(n+1)²)]`
-/

namespace A258389.P17622662105990849624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258389.P17622662105990849624

namespace A258389

/-- `Δ[A055652(2*(n+1)²)]` -/
def P17622662105990849624.Spec : Prop :=
  ∀ n, P17622662105990849624.a n = A258389 (n + 1)

end A258389

/-! ## A258389.P7589082098720536406

`Δ[A156354(2*(n+1)²)]`
-/

namespace A258389.P7589082098720536406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258389.P7589082098720536406

namespace A258389

/-- `Δ[A156354(2*(n+1)²)]` -/
def P7589082098720536406.Spec : Prop :=
  ∀ n, P7589082098720536406.a n = A258389 (n + 1)

end A258389

/-!
# A258390: Number of 2n-length strings of balanced parentheses of exactly 2 different types that are introduced in ascending order.

The programs for A258390, the canonical program `A258390.P12661270623323865303` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258390 has offset 2).

The definition of A258390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258390.P12661270623323865303

`(2^(n+1)-1)*A000108(n+2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A258390

/-- `(2^(n+1)-1)*A000108(n+2)` -/
def P12661270623323865303.Spec : Prop :=
  ∀ n, P12661270623323865303.a n = A258390 (n + 2)

theorem P12661270623323865303.correct : P12661270623323865303.Spec := by
  intro n
  simp only [A258390, Nat.add_sub_cancel]

end A258390

/-! ## A258390.P13410674564814380101

`(2^(n+1)-1)*C(2*(n+2), n+2)/(n+3)`
-/

namespace A258390.P13410674564814380101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ (n + 1) : ℤ) - 1) * (Nat.choose (2 * (n + 2)) (n + 2) : ℤ) : ℚ) / (n + 3 : ℚ)

end

end A258390.P13410674564814380101

namespace A258390

/-- `(2^(n+1)-1)*C(2*(n+2), n+2)/(n+3)` -/
def P13410674564814380101.Spec : Prop :=
  ∀ n, P13410674564814380101.a n = (A258390 (n + 2) : ℚ)

end A258390

/-! ## A258390.P14334705813193425250

`∑[2^n]*record[A099364(n+2)]`
-/

namespace A258390.P14334705813193425250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099364 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A258390.P14334705813193425250

namespace A258390

/-- `∑[2^n]*record[A099364(n+2)]` -/
def P14334705813193425250.Spec : Prop :=
  ∀ n, P14334705813193425250.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P3694861177429321464

`(A001453(n+2)+1)*∑[2^n]`
-/

namespace A258390.P3694861177429321464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001453 (n + 2) + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A258390.P3694861177429321464

namespace A258390

/-- `(A001453(n+2)+1)*∑[2^n]` -/
def P3694861177429321464.Spec : Prop :=
  ∀ n, P3694861177429321464.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P3030187378036862519

`A000108(n+2)*A126646(n)`
-/

namespace A258390.P3030187378036862519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) * A126646 n

end

end A258390.P3030187378036862519

namespace A258390

/-- `A000108(n+2)*A126646(n)` -/
def P3030187378036862519.Spec : Prop :=
  ∀ n, P3030187378036862519.a n = A258390 (n + 2)

theorem P3030187378036862519.correct : P3030187378036862519.Spec := by
  intro n
  simp only [A258390, Nat.add_sub_cancel, A258390.P3030187378036862519.a, A258390.P12661270623323865303.a, A000108, A000108.P17551949696095299361.a, A126646, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258390

/-! ## A258390.P4083765878044809379

`A120588(n+3)*A126646(n)`
-/

namespace A258390.P4083765878044809379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 3) * A126646 n

end

end A258390.P4083765878044809379

namespace A258390

/-- `A120588(n+3)*A126646(n)` -/
def P4083765878044809379.Spec : Prop :=
  ∀ n, P4083765878044809379.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P2250563051694182018

`abs(A115141(n+3))*A126646(n)`
-/

namespace A258390.P2250563051694182018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115141 (n + 3)| * A126646 n

end

end A258390.P2250563051694182018

namespace A258390

/-- `abs(A115141(n+3))*A126646(n)` -/
def P2250563051694182018.Spec : Prop :=
  ∀ n, P2250563051694182018.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P11878557733792527259

`Δ[A014138(n+1)]*A126646(n)`
-/

namespace A258390.P11878557733792527259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A126646 n

end

end A258390.P11878557733792527259

namespace A258390

/-- `Δ[A014138(n+1)]*A126646(n)` -/
def P11878557733792527259.Spec : Prop :=
  ∀ n, P11878557733792527259.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P6079490891823353739

`∑[A000079(n)]*A120588(n+3)`
-/

namespace A258390.P6079490891823353739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A120588 (n + 3)

end

end A258390.P6079490891823353739

namespace A258390

/-- `∑[A000079(n)]*A120588(n+3)` -/
def P6079490891823353739.Spec : Prop :=
  ∀ n, P6079490891823353739.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P4092938389198292882

`A003645(n+1)-A000108(n+2)`
-/

namespace A258390.P4092938389198292882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003645 (n + 1) - A000108 (n + 2)

end

end A258390.P4092938389198292882

namespace A258390

/-- `A003645(n+1)-A000108(n+2)` -/
def P4092938389198292882.Spec : Prop :=
  ∀ n, P4092938389198292882.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P11616871332715538691

`A000108(n+2)*A000225(n+1)`
-/

namespace A258390.P11616871332715538691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) * A000225 (n + 1)

end

end A258390.P11616871332715538691

namespace A258390

/-- `A000108(n+2)*A000225(n+1)` -/
def P11616871332715538691.Spec : Prop :=
  ∀ n, P11616871332715538691.a n = A258390 (n + 2)

theorem P11616871332715538691.correct : P11616871332715538691.Spec := by
  intro n
  simp only [A258390, Nat.add_sub_cancel, A258390.P11616871332715538691.a, A258390.P12661270623323865303.a, A000108, A000108.P17551949696095299361.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258390

/-! ## A258390.P17808185060473592416

`A000108(n+2)*A086341(2*n)`
-/

namespace A258390.P17808185060473592416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) * A086341 (2 * n)

end

end A258390.P17808185060473592416

namespace A258390

/-- `A000108(n+2)*A086341(2*n)` -/
def P17808185060473592416.Spec : Prop :=
  ∀ n, P17808185060473592416.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P1802652025526004924

`A028303(2*(n+2))*A126646(n)`
-/

namespace A258390.P1802652025526004924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * (n + 2)) * A126646 n

end

end A258390.P1802652025526004924

namespace A258390

/-- `A028303(2*(n+2))*A126646(n)` -/
def P1802652025526004924.Spec : Prop :=
  ∀ n, P1802652025526004924.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P15380379041093161559

`∑[A000079(n)]*A028304(2*(n+2))`
-/

namespace A258390.P15380379041093161559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A028304 (2 * (n + 2))

end

end A258390.P15380379041093161559

namespace A258390

/-- `∑[A000079(n)]*A028304(2*(n+2))` -/
def P15380379041093161559.Spec : Prop :=
  ∀ n, P15380379041093161559.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P10341156231634154454

`A000108(n+2)*A087100(2*n+1)`
-/

namespace A258390.P10341156231634154454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) * A087100 (2 * n + 1)

end

end A258390.P10341156231634154454

namespace A258390

/-- `A000108(n+2)*A087100(2*n+1)` -/
def P10341156231634154454.Spec : Prop :=
  ∀ n, P10341156231634154454.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P10326944249120472307

`∑[∑[A011782(n)]]*A028304(2*(n+2))`
-/

namespace A258390.P10326944249120472307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A028304 (2 * (n + 2))

end

end A258390.P10326944249120472307

namespace A258390

/-- `∑[∑[A011782(n)]]*A028304(2*(n+2))` -/
def P10326944249120472307.Spec : Prop :=
  ∀ n, P10326944249120472307.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P18210464759863913383

`A097331(A020735(n+1))*A126646(n)`
-/

namespace A258390.P18210464759863913383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A020735 (n + 1)).toNat * A126646 n

end

end A258390.P18210464759863913383

namespace A258390

/-- `A097331(A020735(n+1))*A126646(n)` -/
def P18210464759863913383.Spec : Prop :=
  ∀ n, P18210464759863913383.a n = A258390 (n + 2)

end A258390

/-! ## A258390.P33938187007524955

`A003645(n+1)-A003645(n+1)/A000079(n+1)`
-/

namespace A258390.P33938187007524955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003645 (n + 1) : ℚ) - (A003645 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A258390.P33938187007524955

namespace A258390

/-- `A003645(n+1)-A003645(n+1)/A000079(n+1)` -/
def P33938187007524955.Spec : Prop :=
  ∀ n, P33938187007524955.a n = (A258390 (n + 2) : ℚ)

end A258390

/-!
# A258391: Number of 2n-length strings of balanced parentheses of exactly 3 different types that are introduced in ascending order.

The programs for A258391, there is no canonical definition to state claims against.
-/

/-! ## A258391.P2259959539672676965

`A000108(n+3)*A000392(n+3)`
-/

namespace A258391.P2259959539672676965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 3) * A000392 (n + 3)

end

end A258391.P2259959539672676965

/-! ## A258391.P10870133028610853114

`A000392(n+3)*A120588(n+4)`
-/

namespace A258391.P10870133028610853114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 3) * A120588 (n + 4)

end

end A258391.P10870133028610853114

/-! ## A258391.P2789818073290469905

`A000108(n+3)*∑[∑[A027649(n)]]`
-/

namespace A258391.P2789818073290469905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258391.P2789818073290469905

/-! ## A258391.P8390824888553357774

`A028243(n+3)/2*A000108(n+3)`
-/

namespace A258391.P8390824888553357774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 3) : ℚ) / 2 * (A000108 (n + 3) : ℚ)

end

end A258391.P8390824888553357774

/-! ## A258391.P5148451598494091372

`A253180(A167614(n+2))`
-/

namespace A258391.P5148451598494091372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (A167614 (n + 2)).toNat

end

end A258391.P5148451598494091372

/-! ## A258391.P10987663587654243468

`A253180(A052905(n)+8)`
-/

namespace A258391.P10987663587654243468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (A052905 n + 8).toNat

end

end A258391.P10987663587654243468

/-! ## A258391.P11483513802444861682

`A253180(eq[3, A002262(n)])`
-/

namespace A258391.P11483513802444861682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258391.P11483513802444861682

/-! ## A258391.P9706183143458869987

`A253180(A340266(n+2)+1)`
-/

namespace A258391.P9706183143458869987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (A340266 (n + 2) + 1).toNat

end

end A258391.P9706183143458869987

/-! ## A258391.P217399360166250845

`A253180(eq[1, A144328(n+1)-2])`
-/

namespace A258391.P217399360166250845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258391.P217399360166250845

/-! ## A258391.P4964937315963601833

`A253180(eq[2, A002260(n+1)-2])`
-/

namespace A258391.P4964937315963601833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258391.P4964937315963601833

/-!
# A258392: Number of 2n-length strings of balanced parentheses of exactly 4 different types that are introduced in ascending order.

The programs for A258392, there is no canonical definition to state claims against.
-/

/-! ## A258392.P16618541449473781592

`A000108(n+4)*A000453(n+4)`
-/

namespace A258392.P16618541449473781592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 4) * A000453 (n + 4)

end

end A258392.P16618541449473781592

/-! ## A258392.P6901020727980860083

`A253180(eq[4, A002262(n)])`
-/

namespace A258392.P6901020727980860083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258392.P6901020727980860083

/-! ## A258392.P7067726774790419574

`A253180(eq[4, A130270(n+1)])`
-/

namespace A258392.P7067726774790419574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258392.P7067726774790419574

/-! ## A258392.P16142859450855630589

`A253180(eq[4, A144328(n+1)])`
-/

namespace A258392.P16142859450855630589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258392.P16142859450855630589

/-! ## A258392.P3074043619609126552

`A253180(eq[5, A002260(n+1)])`
-/

namespace A258392.P3074043619609126552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258392.P3074043619609126552

/-!
# A258393: Number of 2n-length strings of balanced parentheses of exactly 5 different types that are introduced in ascending order.

The programs for A258393, there is no canonical definition to state claims against.
-/

/-! ## A258393.P911515230910101077

`A253180(A167499(n+4))`
-/

namespace A258393.P911515230910101077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (A167499 (n + 4)).toNat

end

end A258393.P911515230910101077

/-! ## A258393.P5185727941849052045

`A253180(eq[5, A002262(n)])`
-/

namespace A258393.P5185727941849052045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258393.P5185727941849052045

/-! ## A258393.P13226772120439437516

`A253180(eq[5, A130270(n+1)])`
-/

namespace A258393.P13226772120439437516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258393.P13226772120439437516

/-! ## A258393.P16936082598807433831

`A253180(eq[5, A144328(n+1)])`
-/

namespace A258393.P16936082598807433831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258393.P16936082598807433831

/-! ## A258393.P13900522536836516886

`A253180(eq[6, A002260(n+1)])`
-/

namespace A258393.P13900522536836516886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258393.P13900522536836516886

/-!
# A258394: Number of 2n-length strings of balanced parentheses of exactly 6 different types that are introduced in ascending order.

The programs for A258394, there is no canonical definition to state claims against.
-/

/-! ## A258394.P4051579476406047856

`A000108(n+6)*A000770(n+6)`
-/

namespace A258394.P4051579476406047856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 6) * A000770 (n + 6)

end

end A258394.P4051579476406047856

/-! ## A258394.P14838082013021137518

`A253180(eq[6, A002262(n)])`
-/

namespace A258394.P14838082013021137518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258394.P14838082013021137518

/-! ## A258394.P6044837903222286728

`A253180(eq[64, A059268(n)])`
-/

namespace A258394.P6044837903222286728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258394.P6044837903222286728

/-! ## A258394.P12726021447718046571

`A253180(eq[6, A144328(n+1)])`
-/

namespace A258394.P12726021447718046571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258394.P12726021447718046571

/-! ## A258394.P17143428181164383649

`A253180(eq[7, A002260(n+1)])`
-/

namespace A258394.P17143428181164383649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258394.P17143428181164383649

/-! ## A258394.P17437391897543529453

`A253180(eq[7, A134868(n+1)])`
-/

namespace A258394.P17437391897543529453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258394.P17437391897543529453

/-!
# A258395: Number of 2n-length strings of balanced parentheses of exactly 7 different types that are introduced in ascending order.

The programs for A258395, there is no canonical definition to state claims against.
-/

/-! ## A258395.P13795924792589654294

`A253180(eq[7, A002262(n)])`
-/

namespace A258395.P13795924792589654294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258395.P13795924792589654294

/-! ## A258395.P3316874362086212595

`A253180(eq[7, A130270(n+1)])`
-/

namespace A258395.P3316874362086212595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258395.P3316874362086212595

/-! ## A258395.P1680513726844060365

`A253180(eq[7, A144328(n+1)])`
-/

namespace A258395.P1680513726844060365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258395.P1680513726844060365

/-! ## A258395.P8787150987618239320

`A253180(eq[8, A002260(n+1)])`
-/

namespace A258395.P8787150987618239320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258395.P8787150987618239320

/-! ## A258395.P13332306323787850966

`A253180(eq[8, A134868(n+1)])`
-/

namespace A258395.P13332306323787850966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258395.P13332306323787850966

/-!
# A258396: Number of 2n-length strings of balanced parentheses of exactly 8 different types that are introduced in ascending order.

The programs for A258396, there is no canonical definition to state claims against.
-/

/-! ## A258396.P17471876686463902023

`A253180(eq[8, A002262(n)])`
-/

namespace A258396.P17471876686463902023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258396.P17471876686463902023

/-! ## A258396.P9362527742745538333

`A253180(eq[8, A130270(n+1)])`
-/

namespace A258396.P9362527742745538333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258396.P9362527742745538333

/-! ## A258396.P10577612142612639952

`A253180(eq[8, A144328(n+1)])`
-/

namespace A258396.P10577612142612639952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258396.P10577612142612639952

/-! ## A258396.P2810791415485343104

`A253180(eq[9, A002260(n+1)])`
-/

namespace A258396.P2810791415485343104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258396.P2810791415485343104

/-! ## A258396.P13048986730575218469

`A253180(eq[9, A134868(n+1)])`
-/

namespace A258396.P13048986730575218469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258396.P13048986730575218469

/-!
# A258397: Number of 2n-length strings of balanced parentheses of exactly 9 different types that are introduced in ascending order.

The programs for A258397, there is no canonical definition to state claims against.
-/

/-! ## A258397.P14793846226304894404

`A253180(eq[9, A002262(n)])`
-/

namespace A258397.P14793846226304894404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258397.P14793846226304894404

/-! ## A258397.P16840481534505498725

`A253180(eq[9, A130270(n+1)])`
-/

namespace A258397.P16840481534505498725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258397.P16840481534505498725

/-! ## A258397.P2224166821830844330

`A253180(eq[9, A144328(n+1)])`
-/

namespace A258397.P2224166821830844330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258397.P2224166821830844330

/-! ## A258397.P4115624587736449208

`A253180(eq[10, A002260(n+1)])`
-/

namespace A258397.P4115624587736449208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258397.P4115624587736449208

/-! ## A258397.P13799579369206804801

`A253180(eq[10, A134868(n+1)])`
-/

namespace A258397.P13799579369206804801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258397.P13799579369206804801

/-!
# A258398: Number of 2n-length strings of balanced parentheses of exactly 10 different types that are introduced in ascending order.

The programs for A258398, there is no canonical definition to state claims against.
-/

/-! ## A258398.P5627812177351490793

`A253180(eq[10, A002262(n)])`
-/

namespace A258398.P5627812177351490793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258398.P5627812177351490793

/-! ## A258398.P6960294934552021413

`A253180(eq[10, A144328(n+1)])`
-/

namespace A258398.P6960294934552021413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258398.P6960294934552021413

/-! ## A258398.P8234936997869718018

`A253180(eq[11, A002260(n+1)])`
-/

namespace A258398.P8234936997869718018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258398.P8234936997869718018

/-! ## A258398.P7075595299276626743

`A253180(eq[11, A134868(n+1)])`
-/

namespace A258398.P7075595299276626743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258398.P7075595299276626743

/-! ## A258398.P9030607057061278116

`A253180(eq[21, A158405(n+1)])`
-/

namespace A258398.P9030607057061278116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258398.P9030607057061278116

/-!
# A258399: Number of 4n-length strings of balanced parentheses of exactly n different types that are introduced in ascending order.

The programs for A258399, there is no canonical definition to state claims against.
-/

/-! ## A258399.P17310476739885582103

`A000108(2*n)*A007820(n)`
-/

namespace A258399.P17310476739885582103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * A007820 n

end

end A258399.P17310476739885582103

/-! ## A258399.P16942528375486740890

`A007820(n)*A039599(A014105(n))`
-/

namespace A258399.P16942528375486740890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007820 n * A039599 (A014105 n).toNat

end

end A258399.P16942528375486740890

/-! ## A258399.P8538967202267672981

`A253180(∑[4*n])`
-/

namespace A258399.P8538967202267672981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258399.P8538967202267672981

/-! ## A258399.P11071870384429371544

`A253180(A046092(n))+A025439(n)`
-/

namespace A258399.P11071870384429371544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (A046092 n).toNat + A025439 n

end

end A258399.P11071870384429371544

/-! ## A258399.P16301662334720543827

`A253180(A046092(n))+A185284(n)`
-/

namespace A258399.P16301662334720543827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (A046092 n).toNat + A185284 n

end

end A258399.P16301662334720543827

