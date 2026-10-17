import SequenceMachineLib
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
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A073200: Number of simple Catalan bijections of type B.

The programs for A073200, there is no canonical definition to state claims against.
-/

/-! ## A073200.P980983406642032742

`A069889(A089840(n))+A025469(A157278(n))`
-/

namespace A073200.P980983406642032742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A089840 n).toNat + A025469 (A157278 n).toNat

end

end A073200.P980983406642032742

/-! ## A073200.P6390983370324225835

`A069767(A122283(n))+A025469(A157278(n))`
-/

namespace A073200.P6390983370324225835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A122283 n).toNat + A025469 (A157278 n).toNat

end

end A073200.P6390983370324225835

/-! ## A073200.P6496496665699913028

`A069767(A122288(n))+A025469(A157278(n))`
-/

namespace A073200.P6496496665699913028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A122288 n).toNat + A025469 (A157278 n).toNat

end

end A073200.P6496496665699913028

/-! ## A073200.P8963801090572849535

`A069889(A122203(n))+A025469(A157278(n))`
-/

namespace A073200.P8963801090572849535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A122203 n).toNat + A025469 (A157278 n).toNat

end

end A073200.P8963801090572849535

/-! ## A073200.P17016454066125593419

`A069770(A089840(n)%A113827(n+5))`
-/

namespace A073200.P17016454066125593419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (Int.tmod (A089840 n) (A113827 (n + 5))).toNat

end

end A073200.P17016454066125593419

/-!
# A073202: Array of fix-count sequences for the table A073200.

The programs for A073202, there is no canonical definition to state claims against.
-/

/-! ## A073202.P12590121993265538664

`A221167(A284732(n+2))`
-/

namespace A073202.P12590121993265538664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221167 (A284732 (n + 2)).toNat

end

end A073202.P12590121993265538664

/-! ## A073202.P12600564671872270208

`A064692(Δ[∏[A140997(n)]])`
-/

namespace A073202.P12600564671872270208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (f1 (n + 1) - f1 n).toNat

end

end A073202.P12600564671872270208

/-! ## A073202.P65481409626434854

`val(A057511(A002385(n+5)), 2)`
-/

namespace A073202.P65481409626434854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057511 (A002385 (n + 5)).toNat).toNat 2

end

end A073202.P65481409626434854

/-! ## A073202.P4167908456374992309

`A373898(lcm(8, A089504(n+1)))`
-/

namespace A073202.P4167908456374992309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373898 (Int.lcm 8 (A089504 (n + 1)))

end

end A073202.P4167908456374992309

/-! ## A073202.P16917462929194416820

`A064692(Δ[∏[A057728(n+1)]])`
-/

namespace A073202.P16917462929194416820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (f1 (n + 1) - f1 n).toNat

end

end A073202.P16917462929194416820

/-!
# A073203: Array of maximum cycle length sequences for the table A073200.

The programs for A073203, there is no canonical definition to state claims against.
-/

/-! ## A073203.P9959407496824784906

`A122530(A073204(n))`
-/

namespace A073203.P9959407496824784906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122530 (A073204 n).toNat

end

end A073203.P9959407496824784906

/-! ## A073203.P4968898630844234825

`A107631(A073204(n)+1)`
-/

namespace A073203.P4968898630844234825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (A073204 n + 1).toNat

end

end A073203.P4968898630844234825

/-! ## A073203.P10325436075433368664

`A201076(A073204(n)+1)`
-/

namespace A073203.P10325436075433368664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201076 (A073204 n + 1).toNat

end

end A073203.P10325436075433368664

/-! ## A073203.P13483177385432961427

`A130580(A073204(n)+5)`
-/

namespace A073203.P13483177385432961427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130580 (A073204 n + 5).toNat

end

end A073203.P13483177385432961427

/-! ## A073203.P650718134922393922

`A293390((A073204(n)+1)²)`
-/

namespace A073203.P650718134922393922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 ((A073204 n + 1) ^ 2).toNat

end

end A073203.P650718134922393922

/-!
# A073204: Array of LCMs-of-cycle-lengths sequences for the table A073200.

The programs for A073204, there is no canonical definition to state claims against.
-/

/-! ## A073204.P16295117633789306794

`A053828(A073203(n)!)`
-/

namespace A073204.P16295117633789306794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (Nat.factorial (A073203 n).toNat)

end

end A073204.P16295117633789306794

/-! ## A073204.P7400614113962379494

`A054390(A073203(n)^5)`
-/

namespace A073204.P7400614113962379494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A073203 n ^ 5).toNat

end

end A073204.P7400614113962379494

/-! ## A073204.P4726404094239756958

`round(A050921(A073203(n)²)/3)`
-/

namespace A073204.P4726404094239756958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050921 (A073203 n ^ 2).toNat : ℚ) / 3)

end

end A073204.P4726404094239756958

/-! ## A073204.P4351514796805066562

`A000010(A054496(A073203(n))²)`
-/

namespace A073204.P4351514796805066562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A054496 (A073203 n).toNat ^ 2).toNat

end

end A073204.P4351514796805066562

/-! ## A073204.P10790014459502534712

`A316313(2^A073203(n))`
-/

namespace A073204.P10790014459502534712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A073203 n : ℤ))).toNat

end

end A073204.P10790014459502534712

/-!
# A073205: Permutation of natural numbers induced by the Catalan bijection gmA073205 acting on the parenthesizations as ordered by A014486.

The programs for A073205, there is no canonical definition to state claims against.
-/

/-! ## A073205.P11551636981544086285

`A057163(A073194(A057163(n)))`
-/

namespace A073205.P11551636981544086285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073194 (A057163 n).toNat).toNat

end

end A073205.P11551636981544086285

/-! ## A073205.P97189851922359698

`A085174(A122297(n)^A008835(n+1))`
-/

namespace A073205.P97189851922359698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (SequenceMachineLib.roundAway ((A122297 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A073205.P97189851922359698

/-! ## A073205.P6416272136215708531

`A212619(∑[n+1]+2)+A123502(n)`
-/

namespace A073205.P6416272136215708531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A123502 n

end

end A073205.P6416272136215708531

/-!
# A073206: Permutation of natural numbers induced by the Catalan bijection gmA073206 acting on the parenthesizations as ordered by A014486.

The programs for A073206, there is no canonical definition to state claims against.
-/

/-! ## A073206.P8665090527331107646

`A057163(A073195(A057163(n)))`
-/

namespace A073206.P8665090527331107646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073195 (A057163 n).toNat).toNat

end

end A073206.P8665090527331107646

/-! ## A073206.P3247604271645031297

`A122326(A122333(n)%A344615(2*(n+2)))`
-/

namespace A073206.P3247604271645031297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122326 (Int.tmod (A122333 n) (A344615 (2 * (n + 2)))).toNat

end

end A073206.P3247604271645031297

/-! ## A073206.P7481629037401802300

`A130920(A130935(n))%A289028(A001222(2^n))`
-/

namespace A073206.P7481629037401802300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130920 (A130935 n).toNat) (A289028 (A001222 (2 ^ n)).toNat)

end

end A073206.P7481629037401802300

/-! ## A073206.P18009227270047861181

`A085166(n)*A285572(A000079(n))`
-/

namespace A073206.P18009227270047861181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085166 n * A285572 (A000079 n).toNat

end

end A073206.P18009227270047861181

/-!
# A073207: Permutation of natural numbers induced by the Catalan bijection gmA073207 acting on the parenthesizations as ordered by A014486.

The programs for A073207, there is no canonical definition to state claims against.
-/

/-! ## A073207.P8200333671983598954

`A057163(A073196(A057163(n)))`
-/

namespace A073207.P8200333671983598954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073196 (A057163 n).toNat).toNat

end

end A073207.P8200333671983598954

/-! ## A073207.P16003306922986615851

`A073197(n)+A016389(A023896(n+1))`
-/

namespace A073207.P16003306922986615851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073197 n + A016389 (A023896 (n + 1)).toNat

end

end A073207.P16003306922986615851

/-! ## A073207.P7588786188830046595

`A268643(A206010(n+1))+A073197(n)`
-/

namespace A073207.P7588786188830046595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A206010 (n + 1)).toNat + A073197 n

end

end A073207.P7588786188830046595

/-! ## A073207.P8094427836642795606

`A131170(A057509(A089840(∑[n])))`
-/

namespace A073207.P8094427836642795606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131170 (A057509 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A073207.P8094427836642795606

/-! ## A073207.P669028939036300204

`A131170(A057509(A122203(∑[n])))`
-/

namespace A073207.P669028939036300204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131170 (A057509 (A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A073207.P669028939036300204

/-!
# A073208: Permutation of natural numbers induced by the Catalan bijection gmA073208 acting on the parenthesizations as ordered by A014486.

The programs for A073208, there is no canonical definition to state claims against.
-/

/-! ## A073208.P1624748653432442496

`A057163(A073197(A057163(n)))`
-/

namespace A073208.P1624748653432442496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073197 (A057163 n).toNat).toNat

end

end A073208.P1624748653432442496

/-!
# A073209: Permutation of natural numbers induced by the Catalan bijection gmA073209 acting on the parenthesizations as ordered by A014486.

The programs for A073209, there is no canonical definition to state claims against.
-/

/-! ## A073209.P9210755102173981931

`A057163(A073198(A057163(n)))`
-/

namespace A073209.P9210755102173981931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073198 (A057163 n).toNat).toNat

end

end A073209.P9210755102173981931

/-! ## A073209.P8763167997268582268

`or(A123502(n), A266982(A277087(n)))`
-/

namespace A073209.P8763167997268582268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123502 n) (A266982 (A277087 n).toNat)

end

end A073209.P8763167997268582268

/-! ## A073209.P10061995147030361377

`A123498(n)+A107846(A340816(n+1))`
-/

namespace A073209.P10061995147030361377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123498 n + A107846 (A340816 (n + 1)).toNat

end

end A073209.P10061995147030361377

/-! ## A073209.P3700255227179881682

`A123502(n)+A107846(A340816(n+1))`
-/

namespace A073209.P3700255227179881682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123502 n + A107846 (A340816 (n + 1)).toNat

end

end A073209.P3700255227179881682

/-! ## A073209.P10433659838792474285

`or(A123484(A123534(n+7)), A123498(n))`
-/

namespace A073209.P10433659838792474285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123484 (A123534 (n + 7)).toNat) (A123498 n)

end

end A073209.P10433659838792474285

/-!
# A073210: Permutation of natural numbers induced by the Catalan bijection gmA073210 acting on the parenthesizations as ordered by A014486.

The programs for A073210, there is no canonical definition to state claims against.
-/

/-! ## A073210.P15036969909904214891

`A057163(A073199(A057163(n)))`
-/

namespace A073210.P15036969909904214891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073199 (A057163 n).toNat).toNat

end

end A073210.P15036969909904214891

/-! ## A073210.P16847411186259052955

`A127287(A085159(n)%A103915(n))`
-/

namespace A073210.P16847411186259052955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (Int.tmod (A085159 n) (A103915 n)).toNat

end

end A073210.P16847411186259052955

/-! ## A073210.P2500027118969648155

`A127288(A085159(n))+A000038(A000032(n))`
-/

namespace A073210.P2500027118969648155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A085159 n).toNat + A000038 (A000032 n).toNat

end

end A073210.P2500027118969648155

/-! ## A073210.P1852835076231629302

`A363808(A123526(n+1))+A123501(n)`
-/

namespace A073210.P1852835076231629302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (A123526 (n + 1)).toNat + A123501 n

end

end A073210.P1852835076231629302

/-! ## A073210.P11910193754848243033

`A085163(n)-A010054(A083393(2*(n+2)))`
-/

namespace A073210.P11910193754848243033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085163 n - A010054 (A083393 (2 * (n + 2))).toNat

end

end A073210.P11910193754848243033

/-!
# A073211: Sum of two powers of 11.

The programs for A073211, the canonical program `A073211.P4394998357951781572` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073211 has offset 0).

The definition of A073211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4751 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073211.P11709756521036740202

`2*A073219(n+1)`
-/

namespace A073211.P11709756521036740202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073219 (n + 1)

end

end A073211.P11709756521036740202

namespace A073211

/-- `2*A073219(n+1)` -/
def P11709756521036740202.Spec : Prop :=
  ∀ n, P11709756521036740202.a n = A073211 n

end A073211

/-! ## A073211.P2601047874316711907

`A073219(A000027(n+1))+A073219(n+1)`
-/

namespace A073211.P2601047874316711907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073219 (A000027 (n + 1)).toNat + A073219 (n + 1)

end

end A073211.P2601047874316711907

namespace A073211

/-- `A073219(A000027(n+1))+A073219(n+1)` -/
def P2601047874316711907.Spec : Prop :=
  ∀ n, P2601047874316711907.a n = A073211 n

end A073211

/-! ## A073211.P4394998357951781572

`A001020(A002262(n))+A001020(A003056(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073211

/-- `A001020(A002262(n))+A001020(A003056(n))` -/
def P4394998357951781572.Spec : Prop :=
  ∀ n, P4394998357951781572.a n = A073211 n

theorem P4394998357951781572.correct : P4394998357951781572.Spec := by
  intro n
  simp only [A073211]

end A073211

/-! ## A073211.P9652189666985494364

`A001020(A002262(n))*A034524(A025581(n))`
-/

namespace A073211.P9652189666985494364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A034524 (A025581 n).toNat

end

end A073211.P9652189666985494364

namespace A073211

/-- `A001020(A002262(n))*A034524(A025581(n))` -/
def P9652189666985494364.Spec : Prop :=
  ∀ n, P9652189666985494364.a n = A073211 n

end A073211

/-! ## A073211.P9657786423126643577

`A038315(A112367(n))+A001020(A003056(n))`
-/

namespace A073211.P9657786423126643577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 (A112367 n).toNat + A001020 (A003056 n).toNat

end

end A073211.P9657786423126643577

namespace A073211

/-- `A038315(A112367(n))+A001020(A003056(n))` -/
def P9657786423126643577.Spec : Prop :=
  ∀ n, P9657786423126643577.a n = A073211 n

end A073211

/-! ## A073211.P9554213687064795395

`A073219(n+1)+A073219(n+1)%A072390(n)`
-/

namespace A073211.P9554213687064795395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073219 (n + 1) + Int.tmod (A073219 (n + 1)) (A072390 n)

end

end A073211.P9554213687064795395

namespace A073211

/-- `A073219(n+1)+A073219(n+1)%A072390(n)` -/
def P9554213687064795395.Spec : Prop :=
  ∀ n, P9554213687064795395.a n = A073211 n

end A073211

/-! ## A073211.P1886745936934734028

`A218018(A057944(n))+A001020(A002262(n))`
-/

namespace A073211.P1886745936934734028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218018 (A057944 n).toNat + A001020 (A002262 n).toNat

end

end A073211.P1886745936934734028

namespace A073211

/-- `A218018(A057944(n))+A001020(A002262(n))` -/
def P1886745936934734028.Spec : Prop :=
  ∀ n, P1886745936934734028.a n = A073211 n

end A073211

/-! ## A073211.P9906344695823141967

`A073219(A172471(∑[n+1]))+A073219(n+1)`
-/

namespace A073211.P9906344695823141967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073219 (A172471 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A073219 (n + 1)

end

end A073211.P9906344695823141967

namespace A073211

/-- `A073219(A172471(∑[n+1]))+A073219(n+1)` -/
def P9906344695823141967.Spec : Prop :=
  ∀ n, P9906344695823141967.a n = A073211 n

end A073211

/-! ## A073211.P106922467637790830

`A218018(A057944(n))+A116525(A059268(n))`
-/

namespace A073211.P106922467637790830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218018 (A057944 n).toNat + A116525 (A059268 n).toNat

end

end A073211.P106922467637790830

namespace A073211

/-- `A218018(A057944(n))+A116525(A059268(n))` -/
def P106922467637790830.Spec : Prop :=
  ∀ n, P106922467637790830.a n = A073211 n

end A073211

/-! ## A073211.P5419149481136911370

`A038315(A112367(n))+A033047(A137688(n))`
-/

namespace A073211.P5419149481136911370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 (A112367 n).toNat + A033047 (A137688 n).toNat

end

end A073211.P5419149481136911370

namespace A073211

/-- `A038315(A112367(n))+A033047(A137688(n))` -/
def P5419149481136911370.Spec : Prop :=
  ∀ n, P5419149481136911370.a n = A073211 n

end A073211

/-!
# A073212: n-th digit of Pi + n-th digit of e.

The programs for A073212, there is no canonical definition to state claims against.
-/

/-! ## A073212.P15243718131617494944

`A001113(n)+A000796(n)`
-/

namespace A073212.P15243718131617494944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + A000796 (n + 1)

end

end A073212.P15243718131617494944

/-! ## A073212.P1925013443381289617

`A187747(n)+2*A001113(n)`
-/

namespace A073212.P1925013443381289617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n + 2 * A001113 (n + 1)

end

end A073212.P1925013443381289617

/-! ## A073212.P3097555323178911139

`2*A000796(n)-A187747(n)`
-/

namespace A073212.P3097555323178911139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000796 (n + 1) - A187747 n

end

end A073212.P3097555323178911139

/-! ## A073212.P15175491960902906928

`A001113(n)+9-A030644(n)`
-/

namespace A073212.P15175491960902906928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + (9 - A030644 (n + 1))

end

end A073212.P15175491960902906928

/-! ## A073212.P802312128012760555

`A231325(n+1)+A228239(n+1)`
-/

namespace A073212.P802312128012760555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1) + A228239 (n + 1)

end

end A073212.P802312128012760555

/-! ## A073212.P833482783706541737

`A123152(n+1)+A001113(n)-1`
-/

namespace A073212.P833482783706541737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) + (A001113 (n + 1) - 1)

end

end A073212.P833482783706541737

/-! ## A073212.P5435481913189653017

`A073223(n)+2*A228239(n+1)`
-/

namespace A073212.P5435481913189653017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073223 n + 2 * A228239 (n + 1)

end

end A073212.P5435481913189653017

/-! ## A073212.P9045506526222483893

`2*A231325(n+1)-A073223(n)`
-/

namespace A073212.P9045506526222483893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231325 (n + 1) - A073223 n

end

end A073212.P9045506526222483893

/-! ## A073212.P8556017843620636349

`abs(A187747(n))+2*A228239(n+1)`
-/

namespace A073212.P8556017843620636349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187747 n| + 2 * A228239 (n + 1)

end

end A073212.P8556017843620636349

/-! ## A073212.P11507561201209463946

`2*A231325(n+1)-dr(A187747(n))`
-/

namespace A073212.P11507561201209463946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231325 (n + 1) - (SequenceMachineLib.digitalRoot (A187747 n) : ℤ)

end

end A073212.P11507561201209463946

/-! ## A073212.P4616087918706904471

`A054249(n+1)+A033999(n)+A001113(n)`
-/

namespace A073212.P4616087918706904471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + (A033999 n + A001113 (n + 1))

end

end A073212.P4616087918706904471

/-! ## A073212.P17698829159836078821

`A001355(Δ[n²])+A001113(n)`
-/

namespace A073212.P17698829159836078821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A001113 (n + 1)

end

end A073212.P17698829159836078821

/-! ## A073212.P3009741009693915339

`A001355(2*(n+1))+A000796(n)`
-/

namespace A073212.P3009741009693915339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1)) + A000796 (n + 1)

end

end A073212.P3009741009693915339

/-! ## A073212.P12556482615381771470

`A076790(2*n+1)+A001113(n)`
-/

namespace A073212.P12556482615381771470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1) + A001113 (n + 1)

end

end A073212.P12556482615381771470

/-! ## A073212.P223556752910077990

`A110779(2*n+1)+A000796(n)`
-/

namespace A073212.P223556752910077990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1) + A000796 (n + 1)

end

end A073212.P223556752910077990

/-! ## A073212.P7359368029527046478

`A110766(2*n+1)+A001113(n)`
-/

namespace A073212.P7359368029527046478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) + A001113 (n + 1)

end

end A073212.P7359368029527046478

/-! ## A073212.P7695000142089982225

`A001355(2*n+1)+A001355(2*(n+1))`
-/

namespace A073212.P7695000142089982225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) + A001355 (2 * (n + 1))

end

end A073212.P7695000142089982225

/-! ## A073212.P9013241291020987434

`A110779(2*n+1)+A110766(2*n+1)`
-/

namespace A073212.P9013241291020987434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1) + A110766 (2 * n + 1)

end

end A073212.P9013241291020987434

/-! ## A073212.P16617813336296722345

`A001113(n)+Δ[A059582(n)]`
-/

namespace A073212.P16617813336296722345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + (f1 (n + 1) - f1 n)

end

end A073212.P16617813336296722345

/-! ## A073212.P4893904734524157204

`A097902(∑[n+2]-1)+A001113(n)`
-/

namespace A073212.P4893904734524157204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097902 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + A001113 (n + 1)

end

end A073212.P4893904734524157204

/-!
# A073213: Sum of two powers of 17.

The programs for A073213, the canonical program `A073213.P10181654025624929618` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073213 has offset 0).

The definition of A073213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073213.P13589174277481074285

`2*A073221(n)`
-/

namespace A073213.P13589174277481074285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073221 n

end

end A073213.P13589174277481074285

namespace A073213

/-- `2*A073221(n)` -/
def P13589174277481074285.Spec : Prop :=
  ∀ n, P13589174277481074285.a n = A073213 n

end A073213

/-! ## A073213.P14156141510711791063

`lcm(2, A073221(n)/A134824(n+2))`
-/

namespace A073213.P14156141510711791063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((A073221 n : ℚ) / (A134824 (n + 2) : ℚ)))

end

end A073213.P14156141510711791063

namespace A073213

/-- `lcm(2, A073221(n)/A134824(n+2))` -/
def P14156141510711791063.Spec : Prop :=
  ∀ n, (P14156141510711791063.a n : ℤ) = A073213 n

end A073213

/-! ## A073213.P10181654025624929618

`A001026(A002262(n))+A001026(A003056(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073213

/-- `A001026(A002262(n))+A001026(A003056(n))` -/
def P10181654025624929618.Spec : Prop :=
  ∀ n, P10181654025624929618.a n = A073213 n

theorem P10181654025624929618.correct : P10181654025624929618.Spec := by
  intro n
  simp only [A073213]

end A073213

/-! ## A073213.P9602020699919283780

`lcm(dr(A073214(n)), A073221(n))`
-/

namespace A073213.P9602020699919283780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A073214 n) : ℤ) (A073221 n)

end

end A073213.P9602020699919283780

namespace A073213

/-- `lcm(dr(A073214(n)), A073221(n))` -/
def P9602020699919283780.Spec : Prop :=
  ∀ n, (P9602020699919283780.a n : ℤ) = A073213 n

end A073213

/-! ## A073213.P11200152870210463710

`A073221(and(n, A263806(n)))+A073221(n)`
-/

namespace A073213.P11200152870210463710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073221 (Int.land (n : ℤ) (A263806 n)).toNat + A073221 n

end

end A073213.P11200152870210463710

namespace A073213

/-- `A073221(and(n, A263806(n)))+A073221(n)` -/
def P11200152870210463710.Spec : Prop :=
  ∀ n, P11200152870210463710.a n = A073213 n

end A073213

/-!
# A073214: Sum of two powers of 19.

The programs for A073214, there is no canonical definition to state claims against.
-/

/-! ## A073214.P13723837078311411314

`2*A073222(n+1)`
-/

namespace A073214.P13723837078311411314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073222 (n + 1)

end

end A073214.P13723837078311411314

/-! ## A073214.P11736139451575119424

`lcm(gcd(4, A055258(n)), A073222(n+1))`
-/

namespace A073214.P11736139451575119424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 4 (A055258 n) : ℤ) (A073222 (n + 1))

end

end A073214.P11736139451575119424

/-! ## A073214.P489737568388786246

`A073222(n+1)/abs(A065357(n)/2)`
-/

namespace A073214.P489737568388786246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073222 (n + 1) : ℚ) / |(A065357 n : ℚ) / 2|

end

end A073214.P489737568388786246

/-! ## A073214.P12600756120891688554

`A073222(A000027(n+1))+A073222(n+1)`
-/

namespace A073214.P12600756120891688554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073222 (A000027 (n + 1)).toNat + A073222 (n + 1)

end

end A073214.P12600756120891688554

/-! ## A073214.P2265369158098927002

`A073222(n+1)+A073222(n+1)^A302041(A302040(n+1))`
-/

namespace A073214.P2265369158098927002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073222 (n + 1) : ℚ) + (A073222 (n + 1) : ℚ) ^ (A302041 (A302040 (n + 1)).toNat : ℤ)

end

end A073214.P2265369158098927002

/-! ## A073214.P17598860734564089372

`A073222(n+1)+A073222(n+1)%A073215(n)`
-/

namespace A073214.P17598860734564089372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073222 (n + 1) + Int.tmod (A073222 (n + 1)) (A073215 n)

end

end A073214.P17598860734564089372

/-! ## A073214.P7230488186969747623

`A073222(n+1)+A073222(A097805(∑[n+3]+1))`
-/

namespace A073214.P7230488186969747623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073222 (n + 1) + A073222 (A097805 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A073214.P7230488186969747623

/-!
# A073215: Sum of two powers of 23.

The programs for A073215, the canonical program `A073215.P8909294999034023344` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073215 has offset 0).

The definition of A073215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073215.P8909294999034023344

`2*A072822(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073215

/-- `2*A072822(n)` -/
def P8909294999034023344.Spec : Prop :=
  ∀ n, P8909294999034023344.a n = A073215 n

theorem P8909294999034023344.correct : P8909294999034023344.Spec := by
  intro n
  simp only [A073215]

end A073215

/-! ## A073215.P11019412189623420887

`23^A002262(n)+23^A003056(n)`
-/

namespace A073215.P11019412189623420887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) ^ (A002262 n : ℤ) + (23 : ℚ) ^ (A003056 n : ℤ)

end

end A073215.P11019412189623420887

namespace A073215

/-- `23^A002262(n)+23^A003056(n)` -/
def P11019412189623420887.Spec : Prop :=
  ∀ n, P11019412189623420887.a n = (A073215 n : ℚ)

end A073215

/-! ## A073215.P1283442915628454580

`A072822(n)+A285824(A000217(n+2))+A072822(n)`
-/

namespace A073215.P1283442915628454580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072822 n + (A285824 (A000217 (n + 2)).toNat + A072822 n)

end

end A073215.P1283442915628454580

namespace A073215

/-- `A072822(n)+A285824(A000217(n+2))+A072822(n)` -/
def P1283442915628454580.Spec : Prop :=
  ∀ n, P1283442915628454580.a n = A073215 n

end A073215

/-! ## A073215.P10114250915609956556

`A004277(A072822(n))`
-/

namespace A073215.P10114250915609956556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A072822 n).toNat

end

end A073215.P10114250915609956556

namespace A073215

/-- `A004277(A072822(n))` -/
def P10114250915609956556.Spec : Prop :=
  ∀ n, P10114250915609956556.a n = A073215 n

end A073215

/-! ## A073215.P4141544823031188287

`A285824(A000217(n+8))+A005843(A072822(n))`
-/

namespace A073215.P4141544823031188287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (A000217 (n + 8)).toNat + A005843 (A072822 n).toNat

end

end A073215.P4141544823031188287

namespace A073215

/-- `A285824(A000217(n+8))+A005843(A072822(n))` -/
def P4141544823031188287.Spec : Prop :=
  ∀ n, P4141544823031188287.a n = A073215 n

end A073215

/-!
# A073216: The terms of A055235 (sums of two powers of 3) divided by 2.

The programs for A073216, the canonical program `A073216.P5288567735889800132` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073216 has offset 0).

The definition of A073216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073216.P16431318696382655058

`A055235(n)/2`
-/

namespace A073216.P16431318696382655058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055235 n : ℚ) / 2

end

end A073216.P16431318696382655058

namespace A073216

/-- `A055235(n)/2` -/
def P16431318696382655058.Spec : Prop :=
  ∀ n, P16431318696382655058.a n = (A073216 n : ℚ)

end A073216

/-! ## A073216.P3639516293621590853

`∑[A135293(n)/2]`
-/

namespace A073216.P3639516293621590853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135293 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073216.P3639516293621590853

namespace A073216

/-- `∑[A135293(n)/2]` -/
def P3639516293621590853.Spec : Prop :=
  ∀ n, P3639516293621590853.a n = (A073216 n : ℚ)

end A073216

/-! ## A073216.P5288567735889800132

`A023745(n+1)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073216

/-- `A023745(n+1)+1` -/
def P5288567735889800132.Spec : Prop :=
  ∀ n, P5288567735889800132.a n = A073216 n

theorem P5288567735889800132.correct : P5288567735889800132.Spec := by
  intro n
  simp only [A073216]

end A073216

/-! ## A073216.P9810356334553414924

`A003462(A002262(n))+A003462(A003056(n))+1`
-/

namespace A073216.P9810356334553414924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A002262 n).toNat + A003462 (A003056 n).toNat + 1

end

end A073216.P9810356334553414924

namespace A073216

/-- `A003462(A002262(n))+A003462(A003056(n))+1` -/
def P9810356334553414924.Spec : Prop :=
  ∀ n, P9810356334553414924.a n = A073216 n

end A073216

/-! ## A073216.P12811919080290172876

`(A140303(n)+1)*A140303(A061579(n))/2`
-/

namespace A073216.P12811919080290172876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A140303 n + 1) * A140303 (A061579 n).toNat : ℚ) / 2

end

end A073216.P12811919080290172876

namespace A073216

/-- `(A140303(n)+1)*A140303(A061579(n))/2` -/
def P12811919080290172876.Spec : Prop :=
  ∀ n, P12811919080290172876.a n = (A073216 n : ℚ)

end A073216

/-! ## A073216.P7839112201305187165

`A055378(A167614(n+2))/2`
-/

namespace A073216.P7839112201305187165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055378 (A167614 (n + 2)).toNat : ℚ) / 2

end

end A073216.P7839112201305187165

namespace A073216

/-- `A055378(A167614(n+2))/2` -/
def P7839112201305187165.Spec : Prop :=
  ∀ n, P7839112201305187165.a n = (A073216 n : ℚ)

end A073216

/-! ## A073216.P1972487871952618127

`A153775(A099627(n))`
-/

namespace A073216.P1972487871952618127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (A099627 n).toNat

end

end A073216.P1972487871952618127

namespace A073216

/-- `A153775(A099627(n))` -/
def P1972487871952618127.Spec : Prop :=
  ∀ n, P1972487871952618127.a n = A073216 n

end A073216

/-! ## A073216.P13059798110973193057

`A261393(A089633(n))+1`
-/

namespace A073216.P13059798110973193057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261393 (A089633 n).toNat + 1

end

end A073216.P13059798110973193057

namespace A073216

/-- `A261393(A089633(n))+1` -/
def P13059798110973193057.Spec : Prop :=
  ∀ n, P13059798110973193057.a n = A073216 n

end A073216

/-! ## A073216.P6329140332044236210

`∩[A153775(n+1), A354047(n)]`
-/

namespace A073216.P6329140332044236210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073216.P6329140332044236210

namespace A073216

/-- `∩[A153775(n+1), A354047(n)]` -/
def P6329140332044236210.Spec : Prop :=
  ∀ n, (P6329140332044236210.a n : ℤ) = A073216 n

end A073216

/-! ## A073216.P1912357264232320222

`A090639(A018900(n+1))/2`
-/

namespace A073216.P1912357264232320222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090639 (A018900 (n + 1)).toNat : ℚ) / 2

end

end A073216.P1912357264232320222

namespace A073216

/-- `A090639(A018900(n+1))/2` -/
def P1912357264232320222.Spec : Prop :=
  ∀ n, P1912357264232320222.a n = (A073216 n : ℚ)

end A073216

/-!
# A073217: The terms of A055237 (sums of two powers of 5) divided by 2.

The programs for A073217, the canonical program `A073217.P2646747774313223643` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073217 has offset 1).

The definition of A073217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073217.P2646747774313223643

`A055237(n)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073217

/-- `A055237(n)/2` -/
def P2646747774313223643.Spec : Prop :=
  ∀ n, P2646747774313223643.a n = (A073217 (n + 1) : ℚ)

end A073217

/-! ## A073217.P8585090567051913692

`(A000351(A002262(n))+A000351(A003056(n)))/2`
-/

namespace A073217.P8585090567051913692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 (A002262 n).toNat + A000351 (A003056 n).toNat : ℚ) / 2

end

end A073217.P8585090567051913692

namespace A073217

/-- `(A000351(A002262(n))+A000351(A003056(n)))/2` -/
def P8585090567051913692.Spec : Prop :=
  ∀ n, P8585090567051913692.a n = (A073217 (n + 1) : ℚ)

end A073217

/-! ## A073217.P9625859118772125456

`2^A008683(A000040(n+1))*A055237(n)`
-/

namespace A073217.P9625859118772125456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A000040 (n + 1)).toNat : ℤ) * (A055237 n : ℚ)

end

end A073217.P9625859118772125456

namespace A073217

/-- `2^A008683(A000040(n+1))*A055237(n)` -/
def P9625859118772125456.Spec : Prop :=
  ∀ n, P9625859118772125456.a n = (A073217 (n + 1) : ℚ)

end A073217

/-! ## A073217.P1416310200192194354

`2^A008683(A215317(n+1))*A055237(n)`
-/

namespace A073217.P1416310200192194354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A215317 (n + 1)).toNat : ℤ) * (A055237 n : ℚ)

end

end A073217.P1416310200192194354

namespace A073217

/-- `2^A008683(A215317(n+1))*A055237(n)` -/
def P1416310200192194354.Spec : Prop :=
  ∀ n, P1416310200192194354.a n = (A073217 (n + 1) : ℚ)

end A073217

/-! ## A073217.P6837324519649635920

`log2(sqrt(2))*A014963(6*(n+1))*A055237(n)`
-/

namespace A073217.P6837324519649635920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A014963 (6 * (n + 1)) : ℝ) * (A055237 n : ℝ)

end

end A073217.P6837324519649635920

namespace A073217

/-- `log2(sqrt(2))*A014963(6*(n+1))*A055237(n)` -/
def P6837324519649635920.Spec : Prop :=
  ∀ n, P6837324519649635920.a n = (A073217 (n + 1) : ℝ)

end A073217

/-! ## A073217.P5689004343019869722

`2^A008683(A175791(n+1))*A055237(n)`
-/

namespace A073217.P5689004343019869722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A175791 (n + 1)).toNat : ℤ) * (A055237 n : ℚ)

end

end A073217.P5689004343019869722

namespace A073217

/-- `2^A008683(A175791(n+1))*A055237(n)` -/
def P5689004343019869722.Spec : Prop :=
  ∀ n, P5689004343019869722.a n = (A073217 (n + 1) : ℚ)

end A073217

/-! ## A073217.P9540647888685156119

`2^A008683(A005385(n+1))*A055237(n)`
-/

namespace A073217.P9540647888685156119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A005385 (n + 1)).toNat : ℤ) * (A055237 n : ℚ)

end

end A073217.P9540647888685156119

namespace A073217

/-- `2^A008683(A005385(n+1))*A055237(n)` -/
def P9540647888685156119.Spec : Prop :=
  ∀ n, P9540647888685156119.a n = (A073217 (n + 1) : ℚ)

end A073217

/-! ## A073217.P9392898408842744711

`A090882(A087112(n+1))/2`
-/

namespace A073217.P9392898408842744711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090882 (A087112 (n + 1)).toNat : ℚ) / 2

end

end A073217.P9392898408842744711

namespace A073217

/-- `A090882(A087112(n+1))/2` -/
def P9392898408842744711.Spec : Prop :=
  ∀ n, P9392898408842744711.a n = (A073217 (n + 1) : ℚ)

end A073217

/-!
# A073218: The terms of A055258 (sums of two powers of 7) divided by 2.

The programs for A073218, the canonical program `A073218.P17562511943308065379` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073218 has offset 0).

The definition of A073218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073218.P17562511943308065379

`A055258(n)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073218

/-- `A055258(n)/2` -/
def P17562511943308065379.Spec : Prop :=
  ∀ n, P17562511943308065379.a n = (A073218 n : ℚ)

end A073218

/-! ## A073218.P1252375491044728335

`(7^A002262(n)+7^A003056(n))/2`
-/

namespace A073218.P1252375491044728335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 : ℚ) ^ (A002262 n : ℤ) + (7 : ℚ) ^ (A003056 n : ℤ)) / 2

end

end A073218.P1252375491044728335

namespace A073218

/-- `(7^A002262(n)+7^A003056(n))/2` -/
def P1252375491044728335.Spec : Prop :=
  ∀ n, P1252375491044728335.a n = (A073218 n : ℚ)

end A073218

/-! ## A073218.P7612258584568719583

`(A000420(A002262(n))+A000420(A003056(n)))/2`
-/

namespace A073218.P7612258584568719583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 (A002262 n).toNat + A000420 (A003056 n).toNat : ℚ) / 2

end

end A073218.P7612258584568719583

namespace A073218

/-- `(A000420(A002262(n))+A000420(A003056(n)))/2` -/
def P7612258584568719583.Spec : Prop :=
  ∀ n, P7612258584568719583.a n = (A073218 n : ℚ)

end A073218

/-! ## A073218.P4887850186757511719

`record[ratio[A055258(A142150(n))]]`
-/

namespace A073218.P4887850186757511719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055258 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073218.P4887850186757511719

namespace A073218

/-- `record[ratio[A055258(A142150(n))]]` -/
def P4887850186757511719.Spec : Prop :=
  ∀ n, P4887850186757511719.a n = (A073218 n : ℚ)

end A073218

/-! ## A073218.P15309502683209963347

`(A165828(A059268(n))+A165828(A137688(n)))/2`
-/

namespace A073218.P15309502683209963347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (A059268 n).toNat + A165828 (A137688 n).toNat : ℚ) / 2

end

end A073218.P15309502683209963347

namespace A073218

/-- `(A165828(A059268(n))+A165828(A137688(n)))/2` -/
def P15309502683209963347.Spec : Prop :=
  ∀ n, P15309502683209963347.a n = (A073218 n : ℚ)

end A073218

/-!
# A073219: The terms of A073211 (sums of two powers of 11) divided by 2.

The programs for A073219, the canonical program `A073219.P4361304061615742939` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073219 has offset 1).

The definition of A073219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4751 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073219.P4361304061615742939

`A073211(n)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073219

/-- `A073211(n)/2` -/
def P4361304061615742939.Spec : Prop :=
  ∀ n, P4361304061615742939.a n = (A073219 (n + 1) : ℚ)

end A073219

/-! ## A073219.P5922946478997321684

`record[ratio[A073211(A142150(n))]]`
-/

namespace A073219.P5922946478997321684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073211 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073219.P5922946478997321684

namespace A073219

/-- `record[ratio[A073211(A142150(n))]]` -/
def P5922946478997321684.Spec : Prop :=
  ∀ n, P5922946478997321684.a n = (A073219 (n + 1) : ℚ)

end A073219

/-! ## A073219.P4165210827077151249

`2^A008683(A003629(n+1))*lcm(2, A073211(n))`
-/

namespace A073219.P4165210827077151249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) * (Int.lcm 2 (A073211 n) : ℚ)

end

end A073219.P4165210827077151249

namespace A073219

/-- `2^A008683(A003629(n+1))*lcm(2, A073211(n))` -/
def P4165210827077151249.Spec : Prop :=
  ∀ n, P4165210827077151249.a n = (A073219 (n + 1) : ℚ)

end A073219

/-! ## A073219.P1454590065614868464

`record[ratio[A073211(A087509(n))]]`
-/

namespace A073219.P1454590065614868464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073211 (A087509 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073219.P1454590065614868464

namespace A073219

/-- `record[ratio[A073211(A087509(n))]]` -/
def P1454590065614868464.Spec : Prop :=
  ∀ n, P1454590065614868464.a n = (A073219 (n + 1) : ℚ)

end A073219

/-! ## A073219.P11564487697916760430

`(A038325(n)+A013618(n))/A028326(n)`
-/

namespace A073219.P11564487697916760430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038325 n + A013618 n : ℚ) / (A028326 n : ℚ)

end

end A073219.P11564487697916760430

namespace A073219

/-- `(A038325(n)+A013618(n))/A028326(n)` -/
def P11564487697916760430.Spec : Prop :=
  ∀ n, P11564487697916760430.a n = (A073219 (n + 1) : ℚ)

end A073219

/-!
# A073220: Terms of A072390 (sums of two powers of 13) divided by 2.

The programs for A073220, there is no canonical definition to state claims against.
-/

/-! ## A073220.P11408264497736429507

`A072390(n)/2`
-/

namespace A073220.P11408264497736429507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072390 n : ℚ) / 2

end

end A073220.P11408264497736429507

/-! ## A073220.P1757639039462546140

`record[ratio[A072390(A142150(n))]]`
-/

namespace A073220.P1757639039462546140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072390 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073220.P1757639039462546140

/-! ## A073220.P9081252236905831125

`record[ratio[A072390(A087509(n))]]`
-/

namespace A073220.P9081252236905831125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072390 (A087509 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073220.P9081252236905831125

/-! ## A073220.P17877159020786582179

`2^A008683(A181758(n+1))*A072390(n)`
-/

namespace A073220.P17877159020786582179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A072390 n : ℚ)

end

end A073220.P17877159020786582179

/-! ## A073220.P12529561220461277638

`A000265(A072390(n))`
-/

namespace A073220.P12529561220461277638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A072390 n).toNat

end

end A073220.P12529561220461277638

/-!
# A073221: The terms of A073213 (sums of two powers of 17) divided by 2.

The programs for A073221, the canonical program `A073221.P9629194107574289743` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073221 has offset 0).

The definition of A073221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073221.P9629194107574289743

`A073213(n)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073221

/-- `A073213(n)/2` -/
def P9629194107574289743.Spec : Prop :=
  ∀ n, P9629194107574289743.a n = (A073221 n : ℚ)

end A073221

/-! ## A073221.P15993177070745516680

`(A001026(A002262(n))+A001026(A003056(n)))/2`
-/

namespace A073221.P15993177070745516680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001026 (A002262 n).toNat + A001026 (A003056 n).toNat : ℚ) / 2

end

end A073221.P15993177070745516680

namespace A073221

/-- `(A001026(A002262(n))+A001026(A003056(n)))/2` -/
def P15993177070745516680.Spec : Prop :=
  ∀ n, P15993177070745516680.a n = (A073221 n : ℚ)

end A073221

/-! ## A073221.P9137762941902489944

`A000265(A073213(n))`
-/

namespace A073221.P9137762941902489944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A073213 n).toNat

end

end A073221.P9137762941902489944

namespace A073221

/-- `A000265(A073213(n))` -/
def P9137762941902489944.Spec : Prop :=
  ∀ n, P9137762941902489944.a n = A073221 n

end A073221

/-! ## A073221.P7502807482135180187

`A014682(lcm(2, A073213(n)))`
-/

namespace A073221.P7502807482135180187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A073213 n))

end

end A073221.P7502807482135180187

namespace A073221

/-- `A014682(lcm(2, A073213(n)))` -/
def P7502807482135180187.Spec : Prop :=
  ∀ n, P7502807482135180187.a n = A073221 n

end A073221

/-! ## A073221.P9528877836444065103

`A014682(or(2, A073213(n)))`
-/

namespace A073221.P9528877836444065103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lor 2 (A073213 n)).toNat

end

end A073221.P9528877836444065103

namespace A073221

/-- `A014682(or(2, A073213(n)))` -/
def P9528877836444065103.Spec : Prop :=
  ∀ n, P9528877836444065103.a n = A073221 n

end A073221

/-!
# A073222: A073214/2.

The programs for A073222, there is no canonical definition to state claims against.
-/

/-! ## A073222.P16062021668096042416

`A073214(n)/2`
-/

namespace A073222.P16062021668096042416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073214 n : ℚ) / 2

end

end A073222.P16062021668096042416

/-! ## A073222.P8628745179567893042

`record[ratio[A073214(A087509(n))]]`
-/

namespace A073222.P8628745179567893042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073214 (A087509 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073222.P8628745179567893042

/-! ## A073222.P14400343122723899540

`2^A133574(A001316(n))*A073214(n)`
-/

namespace A073222.P14400343122723899540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) * (A073214 n : ℚ)

end

end A073222.P14400343122723899540

/-! ## A073222.P7503722895010275335

`2^A008683(A080359(n+1))*A073214(n)`
-/

namespace A073222.P7503722895010275335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A080359 (n + 1)).toNat : ℤ) * (A073214 n : ℚ)

end

end A073222.P7503722895010275335

/-! ## A073222.P7514621765432730534

`2^A008683(A056206(n+1))*A073214(n)`
-/

namespace A073222.P7514621765432730534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A056206 (n + 1)).toNat : ℤ) * (A073214 n : ℚ)

end

end A073222.P7514621765432730534

/-!
# A073223: a(n) = abs((n-th digit of Pi) - (n-th digit of e)).

The programs for A073223, there is no canonical definition to state claims against.
-/

/-! ## A073223.P10820709256500752830

`abs(A187747(n))`
-/

namespace A073223.P10820709256500752830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187747 n|

end

end A073223.P10820709256500752830

/-! ## A073223.P2224493002038248052

`dr(A187747(xor(1, xor(1, n))))`
-/

namespace A073223.P2224493002038248052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A187747 (Nat.xor 1 (Nat.xor 1 n)))

end

end A073223.P2224493002038248052

/-! ## A073223.P10959612805875817396

`dr(A187747(2*n-n))`
-/

namespace A073223.P10959612805875817396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A187747 (2 * n - n))

end

end A073223.P10959612805875817396

/-! ## A073223.P16501536139199067966

`A000194(A187747(n)²)`
-/

namespace A073223.P16501536139199067966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A187747 n ^ 2).toNat

end

end A073223.P16501536139199067966

/-! ## A073223.P10936138195181113253

`A000196(A187747(n)²)`
-/

namespace A073223.P10936138195181113253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A187747 n ^ 2).toNat

end

end A073223.P10936138195181113253

/-! ## A073223.P3458965621457151341

`A007967(A187747(n)²)`
-/

namespace A073223.P3458965621457151341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A187747 n ^ 2).toNat

end

end A073223.P3458965621457151341

/-! ## A073223.P1141959039584200529

`A018851(A187747(n)²)`
-/

namespace A073223.P1141959039584200529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A187747 n ^ 2).toNat

end

end A073223.P1141959039584200529

/-! ## A073223.P16223385522663741751

`A056926(A187747(n)²)`
-/

namespace A073223.P16223385522663741751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A187747 n ^ 2).toNat

end

end A073223.P16223385522663741751

/-! ## A073223.P3723267620563484217

`gcd(A000038(n), A187747(n))`
-/

namespace A073223.P3723267620563484217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A187747 n)

end

end A073223.P3723267620563484217

/-! ## A073223.P15893995898663845112

`lcm(A020985(n), A187747(n))`
-/

namespace A073223.P15893995898663845112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A187747 n)

end

end A073223.P15893995898663845112

/-! ## A073223.P8957972179763872338

`∑{d}[A187747(n), A000010(#)]`
-/

namespace A073223.P8957972179763872338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A073223.P8957972179763872338

/-! ## A073223.P8083292922118638177

`A002998(∑{digits}[A187747(n), #])`
-/

namespace A073223.P8083292922118638177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A073223.P8083292922118638177

/-! ## A073223.P10771934697155683732

`abs(A000796(n)-A001113(n))`
-/

namespace A073223.P10771934697155683732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000796 (n + 1) - A001113 (n + 1)|

end

end A073223.P10771934697155683732

/-! ## A073223.P5994999298047713304

`A001222(2^∑{digits}[A187747(n), #])`
-/

namespace A073223.P5994999298047713304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A073223.P5994999298047713304

/-! ## A073223.P16681171213205318434

`dr(2*A001113(n)-A073212(n))`
-/

namespace A073223.P16681171213205318434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 * A001113 (n + 1) - A073212 n)

end

end A073223.P16681171213205318434

/-! ## A073223.P2019330277506374105

`A231325(n+1)-A228239(n+1)`
-/

namespace A073223.P2019330277506374105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1) - A228239 (n + 1)

end

end A073223.P2019330277506374105

/-! ## A073223.P503734380813246389

`A073212(n)-2*A228239(n+1)`
-/

namespace A073223.P503734380813246389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - 2 * A228239 (n + 1)

end

end A073223.P503734380813246389

/-! ## A073223.P9809410817958740600

`2*A231325(n+1)-A073212(n)`
-/

namespace A073223.P9809410817958740600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231325 (n + 1) - A073212 n

end

end A073223.P9809410817958740600

/-! ## A073223.P12035317874726151469

`∑{digits}[A187747(n), #]%A000040(n+8)`
-/

namespace A073223.P12035317874726151469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A000040 (n + 8))

end

end A073223.P12035317874726151469

/-! ## A073223.P15552570793682543020

`abs(A001355(2*n+1)-A001355(2*(n+1)))`
-/

namespace A073223.P15552570793682543020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001355 (2 * n + 1) - A001355 (2 * (n + 1))|

end

end A073223.P15552570793682543020

/-!
# A073225: a(n) = ceiling(n^n/n!).

The programs for A073225, the canonical program `A073225.P12806230005723169256` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073225 has offset 0).

The definition of A073225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n^n/n!)` (program `A073225.P12806230005723169256`, by `A073225.P12806230005723169256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073225.P12806230005723169256

`ceil(n^n/n!)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073225

/-- `ceil(n^n/n!)` -/
def P12806230005723169256.Spec : Prop :=
  ∀ n, P12806230005723169256.a n = A073225 n

theorem P12806230005723169256.correct : P12806230005723169256.Spec := by
  intro n
  simp only [A073225]

end A073225

/-! ## A073225.P15482279776284577319

`A079981(C(2, n))+A055775(n)`
-/

namespace A073225.P15482279776284577319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079981 (Nat.choose 2 n) + A055775 n

end

end A073225.P15482279776284577319

namespace A073225

/-- `A079981(C(2, n))+A055775(n)` -/
def P15482279776284577319.Spec : Prop :=
  ∀ n, P15482279776284577319.a n = A073225 n

end A073225

/-! ## A073225.P143154074365016338

`A055775(n)+A326178(n)-n`
-/

namespace A073225.P143154074365016338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055775 n + (A326178 n - (n : ℤ))

end

end A073225.P143154074365016338

namespace A073225

/-- `A055775(n)+A326178(n)-n` -/
def P143154074365016338.Spec : Prop :=
  ∀ n, P143154074365016338.a n = A073225 n

end A073225

/-! ## A073225.P11869692559112697210

`A055775(n)+A001222(A056813(n+1))`
-/

namespace A073225.P11869692559112697210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055775 n + A001222 (A056813 (n + 1)).toNat

end

end A073225.P11869692559112697210

namespace A073225

/-- `A055775(n)+A001222(A056813(n+1))` -/
def P11869692559112697210.Spec : Prop :=
  ∀ n, P11869692559112697210.a n = A073225 n

end A073225

/-! ## A073225.P9397908379550179681

`A114854(A004277(n))+A001222(A056813(n+1))`
-/

namespace A073225.P9397908379550179681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114854 (A004277 n).toNat + A001222 (A056813 (n + 1)).toNat

end

end A073225.P9397908379550179681

namespace A073225

/-- `A114854(A004277(n))+A001222(A056813(n+1))` -/
def P9397908379550179681.Spec : Prop :=
  ∀ n, P9397908379550179681.a n = A073225 n

end A073225

/-! ## A073225.P7712397238449267955

`A114863(A008486(n))+A001222(A056813(n+1))`
-/

namespace A073225.P7712397238449267955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114863 (A008486 n).toNat + A001222 (A056813 (n + 1)).toNat

end

end A073225.P7712397238449267955

namespace A073225

/-- `A114863(A008486(n))+A001222(A056813(n+1))` -/
def P7712397238449267955.Spec : Prop :=
  ∀ n, P7712397238449267955.a n = A073225 n

end A073225

/-! ## A073225.P10860380676523933777

`A114968(A008458(n))+A001222(A056813(n+1))`
-/

namespace A073225.P10860380676523933777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114968 (A008458 n).toNat + A001222 (A056813 (n + 1)).toNat

end

end A073225.P10860380676523933777

namespace A073225

/-- `A114968(A008458(n))+A001222(A056813(n+1))` -/
def P10860380676523933777.Spec : Prop :=
  ∀ n, P10860380676523933777.a n = A073225 n

end A073225

/-! ## A073225.P2507088382526361721

`A114868(A008574(n))+A001222(A056813(n+1))`
-/

namespace A073225.P2507088382526361721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114868 (A008574 n).toNat + A001222 (A056813 (n + 1)).toNat

end

end A073225.P2507088382526361721

namespace A073225

/-- `A114868(A008574(n))+A001222(A056813(n+1))` -/
def P2507088382526361721.Spec : Prop :=
  ∀ n, P2507088382526361721.a n = A073225 n

end A073225

/-! ## A073225.P3048456291489724971

`A114869(A008706(n))+A001222(A056813(n+1))`
-/

namespace A073225.P3048456291489724971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114869 (A008706 n).toNat + A001222 (A056813 (n + 1)).toNat

end

end A073225.P3048456291489724971

namespace A073225

/-- `A114869(A008706(n))+A001222(A056813(n+1))` -/
def P3048456291489724971.Spec : Prop :=
  ∀ n, P3048456291489724971.a n = A073225 n

end A073225

/-! ## A073225.P9489981697339331823

`A114863(A028310(3*n))+A001222(A056813(n+1))`
-/

namespace A073225.P9489981697339331823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114863 (A028310 (3 * n)).toNat + A001222 (A056813 (n + 1)).toNat

end

end A073225.P9489981697339331823

namespace A073225

/-- `A114863(A028310(3*n))+A001222(A056813(n+1))` -/
def P9489981697339331823.Spec : Prop :=
  ∀ n, P9489981697339331823.a n = A073225 n

end A073225

/-! ## A073225.P1416942408899939063

`A114854(A051755(n+2)-2)+A001222(A056813(n+1))`
-/

namespace A073225.P1416942408899939063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114854 (A051755 (n + 2) - 2).toNat + A001222 (A056813 (n + 1)).toNat

end

end A073225.P1416942408899939063

namespace A073225

/-- `A114854(A051755(n+2)-2)+A001222(A056813(n+1))` -/
def P1416942408899939063.Spec : Prop :=
  ∀ n, P1416942408899939063.a n = A073225 n

end A073225

/-! ## A073225.P5869142819181779269

`A088705(A337461(n))+A055775(n)`
-/

namespace A073225.P5869142819181779269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A337461 n).toNat + A055775 n

end

end A073225.P5869142819181779269

namespace A073225

/-- `A088705(A337461(n))+A055775(n)` -/
def P5869142819181779269.Spec : Prop :=
  ∀ n, P5869142819181779269.a n = A073225 n

end A073225

/-! ## A073225.P5461925167371143689

`A114863(A008486(n))+A088705(A337461(n))`
-/

namespace A073225.P5461925167371143689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114863 (A008486 n).toNat + A088705 (A337461 n).toNat

end

end A073225.P5461925167371143689

namespace A073225

/-- `A114863(A008486(n))+A088705(A337461(n))` -/
def P5461925167371143689.Spec : Prop :=
  ∀ n, P5461925167371143689.a n = A073225 n

end A073225

/-! ## A073225.P4748804418961569546

`A267537(A047844(n+1))+A055775(n)`
-/

namespace A073225.P4748804418961569546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (A047844 (n + 1)).toNat + A055775 n

end

end A073225.P4748804418961569546

namespace A073225

/-- `A267537(A047844(n+1))+A055775(n)` -/
def P4748804418961569546.Spec : Prop :=
  ∀ n, P4748804418961569546.a n = A073225 n

end A073225

/-! ## A073225.P15838752809246533605

`A267537(A047844(n+1))+A114863(A008486(n))`
-/

namespace A073225.P15838752809246533605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (A047844 (n + 1)).toNat + A114863 (A008486 n).toNat

end

end A073225.P15838752809246533605

namespace A073225

/-- `A267537(A047844(n+1))+A114863(A008486(n))` -/
def P15838752809246533605.Spec : Prop :=
  ∀ n, P15838752809246533605.a n = A073225 n

end A073225

/-!
# A073245: Sum of all cubefree numbers with the same squarefree kernel as the n-th squarefree number.

The programs for A073245, the canonical program `A073245.P22715879203059164` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073245 has offset 1).

The definition of A073245 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A062822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073245.P22715879203059164

`A062822(n+1)*A005117(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073245

/-- `A062822(n+1)*A005117(n+1)` -/
def P22715879203059164.Spec : Prop :=
  ∀ n, P22715879203059164.a n = A073245 (n + 1)

theorem P22715879203059164.correct : P22715879203059164.Spec := by
  intro n
  simp only [A073245, Nat.add_sub_cancel]

end A073245

/-! ## A073245.P1615875369016488725

`record[A007913(n+1)]*A000203(A005117(n+1))`
-/

namespace A073245.P1615875369016488725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000203 (A005117 (n + 1)).toNat

end

end A073245.P1615875369016488725

namespace A073245

/-- `record[A007913(n+1)]*A000203(A005117(n+1))` -/
def P1615875369016488725.Spec : Prop :=
  ∀ n, P1615875369016488725.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P9674326524822274397

`record[A007947(n+1)]*A000203(A005117(n+1))`
-/

namespace A073245.P9674326524822274397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000203 (A005117 (n + 1)).toNat

end

end A073245.P9674326524822274397

namespace A073245

/-- `record[A007947(n+1)]*A000203(A005117(n+1))` -/
def P9674326524822274397.Spec : Prop :=
  ∀ n, P9674326524822274397.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P7770265029296990946

`record[A055653(n+1)]*A000203(A005117(n+1))`
-/

namespace A073245.P7770265029296990946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000203 (A005117 (n + 1)).toNat

end

end A073245.P7770265029296990946

namespace A073245

/-- `record[A055653(n+1)]*A000203(A005117(n+1))` -/
def P7770265029296990946.Spec : Prop :=
  ∀ n, P7770265029296990946.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P12476037442342977430

`record[A083346(n+1)]*A000203(A005117(n+1))`
-/

namespace A073245.P12476037442342977430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000203 (A005117 (n + 1)).toNat

end

end A073245.P12476037442342977430

namespace A073245

/-- `record[A083346(n+1)]*A000203(A005117(n+1))` -/
def P12476037442342977430.Spec : Prop :=
  ∀ n, P12476037442342977430.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P6102503248336970000

`record[A325814(n+1)]*A000203(A005117(n+1))`
-/

namespace A073245.P6102503248336970000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000203 (A005117 (n + 1)).toNat

end

end A073245.P6102503248336970000

namespace A073245

/-- `record[A325814(n+1)]*A000203(A005117(n+1))` -/
def P6102503248336970000.Spec : Prop :=
  ∀ n, P6102503248336970000.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P16202907544369114232

`record[A325978(n+1)]*A000203(A005117(n+1))`
-/

namespace A073245.P16202907544369114232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000203 (A005117 (n + 1)).toNat

end

end A073245.P16202907544369114232

namespace A073245

/-- `record[A325978(n+1)]*A000203(A005117(n+1))` -/
def P16202907544369114232.Spec : Prop :=
  ∀ n, P16202907544369114232.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P6534084628023346963

`A133466(n+1)/4*A000203(A005117(n+1))`
-/

namespace A073245.P6534084628023346963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (n + 1) : ℚ) / 4 * (A000203 (A005117 (n + 1)).toNat : ℚ)

end

end A073245.P6534084628023346963

namespace A073245

/-- `A133466(n+1)/4*A000203(A005117(n+1))` -/
def P6534084628023346963.Spec : Prop :=
  ∀ n, P6534084628023346963.a n = (A073245 (n + 1) : ℚ)

end A073245

/-! ## A073245.P11294656148103277967

`A133466(n+1)/4*A000203(record[A007913(n+1)])`
-/

namespace A073245.P11294656148103277967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (n + 1) : ℚ) / 4 * (A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A073245.P11294656148103277967

namespace A073245

/-- `A133466(n+1)/4*A000203(record[A007913(n+1)])` -/
def P11294656148103277967.Spec : Prop :=
  ∀ n, P11294656148103277967.a n = (A073245 (n + 1) : ℚ)

end A073245

/-! ## A073245.P2741842246441283568

`A133466(n+1)/4*A000203(record[A007947(n+1)])`
-/

namespace A073245.P2741842246441283568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (n + 1) : ℚ) / 4 * (A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A073245.P2741842246441283568

namespace A073245

/-- `A133466(n+1)/4*A000203(record[A007947(n+1)])` -/
def P2741842246441283568.Spec : Prop :=
  ∀ n, P2741842246441283568.a n = (A073245 (n + 1) : ℚ)

end A073245

/-! ## A073245.P13236544324104756154

`A133466(n+1)/4*A000203(record[A325814(n+1)])`
-/

namespace A073245.P13236544324104756154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (n + 1) : ℚ) / 4 * (A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A073245.P13236544324104756154

namespace A073245

/-- `A133466(n+1)/4*A000203(record[A325814(n+1)])` -/
def P13236544324104756154.Spec : Prop :=
  ∀ n, P13236544324104756154.a n = (A073245 (n + 1) : ℚ)

end A073245

/-! ## A073245.P845776881662341956

`A133466(n+1)/4*A000203(record[A325978(n+1)])`
-/

namespace A073245.P845776881662341956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (n + 1) : ℚ) / 4 * (A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A073245.P845776881662341956

namespace A073245

/-- `A133466(n+1)/4*A000203(record[A325978(n+1)])` -/
def P845776881662341956.Spec : Prop :=
  ∀ n, P845776881662341956.a n = (A073245 (n + 1) : ℚ)

end A073245

/-! ## A073245.P8694003053526614753

`A133466(n+1)/4*A000203(A133466(n+1)/4)`
-/

namespace A073245.P8694003053526614753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (n + 1) : ℚ) / 4 * (A000203 (SequenceMachineLib.roundAway ((A133466 (n + 1) : ℚ) / 4)).toNat : ℚ)

end

end A073245.P8694003053526614753

namespace A073245

/-- `A133466(n+1)/4*A000203(A133466(n+1)/4)` -/
def P8694003053526614753.Spec : Prop :=
  ∀ n, P8694003053526614753.a n = (A073245 (n + 1) : ℚ)

end A073245

/-! ## A073245.P3619256058266985254

`(eq[1, A008833(n+1)]+1)*A000203(A005117(n+1))`
-/

namespace A073245.P3619256058266985254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A000203 (A005117 (n + 1)).toNat

end

end A073245.P3619256058266985254

namespace A073245

/-- `(eq[1, A008833(n+1)]+1)*A000203(A005117(n+1))` -/
def P3619256058266985254.Spec : Prop :=
  ∀ n, P3619256058266985254.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P1014374897561701597

`(eq[1, A295666(n+1)]+1)*A000203(A005117(n+1))`
-/

namespace A073245.P1014374897561701597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A000203 (A005117 (n + 1)).toNat

end

end A073245.P1014374897561701597

namespace A073245

/-- `(eq[1, A295666(n+1)]+1)*A000203(A005117(n+1))` -/
def P1014374897561701597.Spec : Prop :=
  ∀ n, P1014374897561701597.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P18422216339726310180

`record[A003967(n+1)]*A003959(A243348(n+1)+1+n)`
-/

namespace A073245.P18422216339726310180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A003959 (A243348 (n + 1) + 1 + (n : ℤ)).toNat

end

end A073245.P18422216339726310180

namespace A073245

/-- `record[A003967(n+1)]*A003959(A243348(n+1)+1+n)` -/
def P18422216339726310180.Spec : Prop :=
  ∀ n, P18422216339726310180.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P8656274703234033401

`record[A007913(n+1)]*A003959(A243348(n+1)+1+n)`
-/

namespace A073245.P8656274703234033401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A003959 (A243348 (n + 1) + 1 + (n : ℤ)).toNat

end

end A073245.P8656274703234033401

namespace A073245

/-- `record[A007913(n+1)]*A003959(A243348(n+1)+1+n)` -/
def P8656274703234033401.Spec : Prop :=
  ∀ n, P8656274703234033401.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P12919432092228058620

`(A243348(n+1)+1+n)*A003959(record[A325978(n+1)])`
-/

namespace A073245.P12919432092228058620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243348 (n + 1) + 1 + (n : ℤ)) * A003959 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073245.P12919432092228058620

namespace A073245

/-- `(A243348(n+1)+1+n)*A003959(record[A325978(n+1)])` -/
def P12919432092228058620.Spec : Prop :=
  ∀ n, P12919432092228058620.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P12931652939357648852

`(eq[1, A005361(n+1)]+1)*A003959(A243348(n+1)+1+n)`
-/

namespace A073245.P12931652939357648852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A003959 (A243348 (n + 1) + 1 + (n : ℤ)).toNat

end

end A073245.P12931652939357648852

namespace A073245

/-- `(eq[1, A005361(n+1)]+1)*A003959(A243348(n+1)+1+n)` -/
def P12931652939357648852.Spec : Prop :=
  ∀ n, P12931652939357648852.a n = A073245 (n + 1)

end A073245

/-! ## A073245.P10965310869017082690

`A064987(record[∏{p}[n, #]])`
-/

namespace A073245.P10965310869017082690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A073245.P10965310869017082690

namespace A073245

/-- `A064987(record[∏{p}[n, #]])` -/
def P10965310869017082690.Spec : Prop :=
  ∀ n, P10965310869017082690.a n = A073245 (n + 1)

end A073245

/-!
# A073246: Prime digits in the decimal expansion of e.

The programs for A073246, there is no canonical definition to state claims against.
-/

/-! ## A073246.P997284200131784010

`p?[A001113(n)]`
-/

namespace A073246.P997284200131784010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073246.P997284200131784010

/-! ## A073246.P16384421903095801347

`A001113(A073302(n+1))`
-/

namespace A073246.P16384421903095801347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A073302 (n + 1)).toNat + 1)

end

end A073246.P16384421903095801347

/-! ## A073246.P6929427571344204440

`p?[9-A121239(n)]`
-/

namespace A073246.P6929427571344204440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A121239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073246.P6929427571344204440

/-! ## A073246.P5740096041304573351

`p?[A086996(n)%8]`
-/

namespace A073246.P5740096041304573351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086996 (n + 1)) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073246.P5740096041304573351

/-! ## A073246.P16489754394158755661

`p?[floor(A091131(n)+acot(n))]`
-/

namespace A073246.P16489754394158755661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091131 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073246.P16489754394158755661

/-! ## A073246.P11743032919005245824

`p?[A073212(n)-A000796(n)]`
-/

namespace A073246.P11743032919005245824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073246.P11743032919005245824

/-! ## A073246.P5560145556313662215

`p?[A000796(n)-A187747(n)]`
-/

namespace A073246.P5560145556313662215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073246.P5560145556313662215

/-! ## A073246.P5265253663530221356

`p?[A001355(2*(n+1))]`
-/

namespace A073246.P5265253663530221356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073246.P5265253663530221356

/-! ## A073246.P13960723513701883332

`p?[A110779(2*n+1)]`
-/

namespace A073246.P13960723513701883332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073246.P13960723513701883332

/-! ## A073246.P18267341959953788112

`p?[A001355(n+1)^(n%2)]`
-/

namespace A073246.P18267341959953788112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073246.P18267341959953788112

/-! ## A073246.P15045798447743096277

`p?[gcd(A001355(n+1), A056594(n))]`
-/

namespace A073246.P15045798447743096277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001355 (n + 1)) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A073246.P15045798447743096277

/-!
# A073247: Squarefree numbers k such that k-1 and k+1 are not squarefree.

The programs for A073247, the canonical program `A073247.P10439319067162305814` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073247 has offset 1).

The definition of A073247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073247.P11254054874713180306

`∪[A073249(n+1), A075432(n+1)]`
-/

namespace A073247.P11254054874713180306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P11254054874713180306

namespace A073247

/-- `∪[A073249(n+1), A075432(n+1)]` -/
def P11254054874713180306.Spec : Prop :=
  ∀ n, (P11254054874713180306.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P10439319067162305814

`record[A007947(A281192(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A073247

/-- `record[A007947(A281192(n+1))]` -/
def P10439319067162305814.Spec : Prop :=
  ∀ n, P10439319067162305814.a n = A073247 (n + 1)

theorem P10439319067162305814.correct : P10439319067162305814.Spec := by
  intro n
  simp only [A073247, Nat.add_sub_cancel]

end A073247

/-! ## A073247.P4096029531485506016

`filter[A281192(n+1), A008966(#)]`
-/

namespace A073247.P4096029531485506016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A073247.P4096029531485506016

namespace A073247

/-- `filter[A281192(n+1), A008966(#)]` -/
def P4096029531485506016.Spec : Prop :=
  ∀ n, P4096029531485506016.a n = A073247 (n + 1)

end A073247

/-! ## A073247.P16002752980466765010

`filter[A281192(n+1), A323154(#)]`
-/

namespace A073247.P16002752980466765010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A073247.P16002752980466765010

namespace A073247

/-- `filter[A281192(n+1), A323154(#)]` -/
def P16002752980466765010.Spec : Prop :=
  ∀ n, P16002752980466765010.a n = A073247 (n + 1)

end A073247

/-! ## A073247.P15948606099632200421

`eq[2, A378036(n+1)]+1`
-/

namespace A073247.P15948606099632200421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073247.P15948606099632200421

namespace A073247

/-- `eq[2, A378036(n+1)]+1` -/
def P15948606099632200421.Spec : Prop :=
  ∀ n, (P15948606099632200421.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P1972288619600528868

`A072284(eq[1, A120992(n+1)]+1)`
-/

namespace A073247.P1972288619600528868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073247.P1972288619600528868

namespace A073247

/-- `A072284(eq[1, A120992(n+1)]+1)` -/
def P1972288619600528868.Spec : Prop :=
  ∀ n, P1972288619600528868.a n = A073247 (n + 1)

end A073247

/-! ## A073247.P6626917480257057190

`A136742(eq[1, A120992(n+1)]+1)`
-/

namespace A073247.P6626917480257057190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073247.P6626917480257057190

namespace A073247

/-- `A136742(eq[1, A120992(n+1)]+1)` -/
def P6626917480257057190.Spec : Prop :=
  ∀ n, P6626917480257057190.a n = A073247 (n + 1)

end A073247

/-! ## A073247.P1642526802757190163

`∩[A072284(n+1), A281192(n+1)]`
-/

namespace A073247.P1642526802757190163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P1642526802757190163

namespace A073247

/-- `∩[A072284(n+1), A281192(n+1)]` -/
def P1642526802757190163.Spec : Prop :=
  ∀ n, (P1642526802757190163.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P5962624744550260390

`∩[A053806(n+1)-1, A072284(n+1)]`
-/

namespace A073247.P5962624744550260390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P5962624744550260390

namespace A073247

/-- `∩[A053806(n+1)-1, A072284(n+1)]` -/
def P5962624744550260390.Spec : Prop :=
  ∀ n, (P5962624744550260390.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P13455441375805657675

`∩[A069122(n+1), A072284(n+1)]`
-/

namespace A073247.P13455441375805657675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P13455441375805657675

namespace A073247

/-- `∩[A069122(n+1), A072284(n+1)]` -/
def P13455441375805657675.Spec : Prop :=
  ∀ n, (P13455441375805657675.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P6466571270322571061

`∩[A072284(n+1), A079710(n+1)]`
-/

namespace A073247.P6466571270322571061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P6466571270322571061

namespace A073247

/-- `∩[A072284(n+1), A079710(n+1)]` -/
def P6466571270322571061.Spec : Prop :=
  ∀ n, (P6466571270322571061.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P10118470995198749114

`∩[A162902(n+1), A281192(n+1)]`
-/

namespace A073247.P10118470995198749114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P10118470995198749114

namespace A073247

/-- `∩[A162902(n+1), A281192(n+1)]` -/
def P10118470995198749114.Spec : Prop :=
  ∀ n, (P10118470995198749114.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P2456474764931953596

`∩[A281192(n+1), A366882(n+1)]`
-/

namespace A073247.P2456474764931953596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P2456474764931953596

namespace A073247

/-- `∩[A281192(n+1), A366882(n+1)]` -/
def P2456474764931953596.Spec : Prop :=
  ∀ n, (P2456474764931953596.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P13774240706925774181

`∩[A005117(n+1), A281192(n+1)]`
-/

namespace A073247.P13774240706925774181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P13774240706925774181

namespace A073247

/-- `∩[A005117(n+1), A281192(n+1)]` -/
def P13774240706925774181.Spec : Prop :=
  ∀ n, (P13774240706925774181.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P5136556769129325927

`∩[A064594(n+1), A281192(n+1)]`
-/

namespace A073247.P5136556769129325927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P5136556769129325927

namespace A073247

/-- `∩[A064594(n+1), A281192(n+1)]` -/
def P5136556769129325927.Spec : Prop :=
  ∀ n, (P5136556769129325927.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P7063332160599210122

`∩[A144338(n+1), A281192(n+1)]`
-/

namespace A073247.P7063332160599210122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P7063332160599210122

namespace A073247

/-- `∩[A144338(n+1), A281192(n+1)]` -/
def P7063332160599210122.Spec : Prop :=
  ∀ n, (P7063332160599210122.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P14441339331719830836

`lt[A105570(n), A105570(A070321(n+1)-1)]`
-/

namespace A073247.P14441339331719830836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A070321 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073247.P14441339331719830836

namespace A073247

/-- `lt[A105570(n), A105570(A070321(n+1)-1)]` -/
def P14441339331719830836.Spec : Prop :=
  ∀ n, (P14441339331719830836.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P3167527989913273698

`∩[A023443(A053806(n+1)), A072284(n+1)]`
-/

namespace A073247.P3167527989913273698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053806 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P3167527989913273698

namespace A073247

/-- `∩[A023443(A053806(n+1)), A072284(n+1)]` -/
def P3167527989913273698.Spec : Prop :=
  ∀ n, (P3167527989913273698.a n : ℤ) = A073247 (n + 1)

end A073247

/-! ## A073247.P11621798754444398573

`∩[A225354(n+1), A281192(n+1)]`
-/

namespace A073247.P11621798754444398573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073247.P11621798754444398573

namespace A073247

/-- `∩[A225354(n+1), A281192(n+1)]` -/
def P11621798754444398573.Spec : Prop :=
  ∀ n, (P11621798754444398573.a n : ℤ) = A073247 (n + 1)

end A073247

/-!
# A073248: Squarefree numbers k such that k+1 is also squarefree, but k-1 and k+2 are not.

The programs for A073248, the canonical program `A073248.P6563719464096944215` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073248 has offset 1).

The definition of A073248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073248.P15204411612556875005

`A072284(eq[2, A120992(n+1)]+1)`
-/

namespace A073248.P15204411612556875005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073248.P15204411612556875005

namespace A073248

/-- `A072284(eq[2, A120992(n+1)]+1)` -/
def P15204411612556875005.Spec : Prop :=
  ∀ n, P15204411612556875005.a n = A073248 (n + 1)

end A073248

/-! ## A073248.P9150500540300130076

`∩[A072284(n+1), A378458(n+1)]`
-/

namespace A073248.P9150500540300130076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073248.P9150500540300130076

namespace A073248

/-- `∩[A072284(n+1), A378458(n+1)]` -/
def P9150500540300130076.Spec : Prop :=
  ∀ n, (P9150500540300130076.a n : ℤ) = A073248 (n + 1)

end A073248

/-! ## A073248.P6563719464096944215

`∩[A053806(n+1)-2, A072284(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A073248

/-- `∩[A053806(n+1)-2, A072284(n+1)]` -/
def P6563719464096944215.Spec : Prop :=
  ∀ n, (P6563719464096944215.a n : ℤ) = A073248 (n + 1)

theorem P6563719464096944215.correct : P6563719464096944215.Spec := by
  intro n
  simp only [A073248, Nat.add_sub_cancel]

end A073248

/-! ## A073248.P7577599741358050528

`∩[A162902(n+1), A378458(n+1)]`
-/

namespace A073248.P7577599741358050528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073248.P7577599741358050528

namespace A073248

/-- `∩[A162902(n+1), A378458(n+1)]` -/
def P7577599741358050528.Spec : Prop :=
  ∀ n, (P7577599741358050528.a n : ℤ) = A073248 (n + 1)

end A073248

/-! ## A073248.P12346309045606945373

`∩[A173186(n+1), A378458(n+1)]`
-/

namespace A073248.P12346309045606945373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073248.P12346309045606945373

namespace A073248

/-- `∩[A173186(n+1), A378458(n+1)]` -/
def P12346309045606945373.Spec : Prop :=
  ∀ n, (P12346309045606945373.a n : ℤ) = A073248 (n + 1)

end A073248

/-! ## A073248.P788485324138414356

`eq[A060296(n), A378036(n+1)]`
-/

namespace A073248.P788485324138414356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060296 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073248.P788485324138414356

namespace A073248

/-- `eq[A060296(n), A378036(n+1)]` -/
def P788485324138414356.Spec : Prop :=
  ∀ n, (P788485324138414356.a n : ℤ) = A073248 (n + 1)

end A073248

/-! ## A073248.P11750642905931809172

`eq[A116535(n), A378036(n+1)]`
-/

namespace A073248.P11750642905931809172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116535 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073248.P11750642905931809172

namespace A073248

/-- `eq[A116535(n), A378036(n+1)]` -/
def P11750642905931809172.Spec : Prop :=
  ∀ n, (P11750642905931809172.a n : ℤ) = A073248 (n + 1)

end A073248

/-! ## A073248.P10463090429850964556

`eq[A156752(n), A378036(n+1)]`
-/

namespace A073248.P10463090429850964556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156752 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073248.P10463090429850964556

namespace A073248

/-- `eq[A156752(n), A378036(n+1)]` -/
def P10463090429850964556.Spec : Prop :=
  ∀ n, (P10463090429850964556.a n : ℤ) = A073248 (n + 1)

end A073248

/-! ## A073248.P9720537568709149983

`eq[A211664(n+1), A378036(n+1)]`
-/

namespace A073248.P9720537568709149983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073248.P9720537568709149983

namespace A073248

/-- `eq[A211664(n+1), A378036(n+1)]` -/
def P9720537568709149983.Spec : Prop :=
  ∀ n, (P9720537568709149983.a n : ℤ) = A073248 (n + 1)

end A073248

/-! ## A073248.P6300013972521237688

`eq[A334502(n+1), A378036(n+1)]`
-/

namespace A073248.P6300013972521237688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073248.P6300013972521237688

namespace A073248

/-- `eq[A334502(n+1), A378036(n+1)]` -/
def P6300013972521237688.Spec : Prop :=
  ∀ n, (P6300013972521237688.a n : ℤ) = A073248 (n + 1)

end A073248

/-! ## A073248.P3471288026325208823

`eq[A290858(n), A378036(n+1)]`
-/

namespace A073248.P3471288026325208823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073248.P3471288026325208823

namespace A073248

/-- `eq[A290858(n), A378036(n+1)]` -/
def P3471288026325208823.Spec : Prop :=
  ∀ n, (P3471288026325208823.a n : ℤ) = A073248 (n + 1)

end A073248

/-!
# A073249: Nonprime squarefree numbers n such that both n-1 and n+1 are not squarefree and not prime.

The programs for A073249, the canonical program `A073249.P5930962239792182362` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073249 has offset 1).

The definition of A073249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073249.P15715255653962492193

`filter[A073247(n+1), A354353(#)]`
-/

namespace A073249.P15715255653962492193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A073249.P15715255653962492193

namespace A073249

/-- `filter[A073247(n+1), A354353(#)]` -/
def P15715255653962492193.Spec : Prop :=
  ∀ n, P15715255653962492193.a n = A073249 (n + 1)

end A073249

/-! ## A073249.P5520312292242590282

`filter[A073247(n+1), A354819(#)]`
-/

namespace A073249.P5520312292242590282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A073249.P5520312292242590282

namespace A073249

/-- `filter[A073247(n+1), A354819(#)]` -/
def P5520312292242590282.Spec : Prop :=
  ∀ n, P5520312292242590282.a n = A073249 (n + 1)

end A073249

/-! ## A073249.P1649032753780488171

`filter[A281192(n+1), A354819(#)]`
-/

namespace A073249.P1649032753780488171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A073249.P1649032753780488171

namespace A073249

/-- `filter[A281192(n+1), A354819(#)]` -/
def P1649032753780488171.Spec : Prop :=
  ∀ n, P1649032753780488171.a n = A073249 (n + 1)

end A073249

/-! ## A073249.P5930962239792182362

`filter[A073247(n+1), A005171(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A073249

/-- `filter[A073247(n+1), A005171(#)]` -/
def P5930962239792182362.Spec : Prop :=
  ∀ n, P5930962239792182362.a n = A073249 (n + 1)

theorem P5930962239792182362.correct : P5930962239792182362.Spec := by
  intro n
  simp only [A073249, Nat.add_sub_cancel]

end A073249

/-! ## A073249.P11318605763385248289

`filter[A073247(n+1), A066247(#)]`
-/

namespace A073249.P11318605763385248289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A073249.P11318605763385248289

namespace A073249

/-- `filter[A073247(n+1), A066247(#)]` -/
def P11318605763385248289.Spec : Prop :=
  ∀ n, P11318605763385248289.a n = A073249 (n + 1)

end A073249

/-! ## A073249.P16483996937517470701

`filter[A073247(n+1), A202238(#)]`
-/

namespace A073249.P16483996937517470701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A073249.P16483996937517470701

namespace A073249

/-- `filter[A073247(n+1), A202238(#)]` -/
def P16483996937517470701.Spec : Prop :=
  ∀ n, P16483996937517470701.a n = A073249 (n + 1)

end A073249

/-! ## A073249.P2405882444129156689

`filter[A073247(n+1), A292438(#)]`
-/

namespace A073249.P2405882444129156689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A073249.P2405882444129156689

namespace A073249

/-- `filter[A073247(n+1), A292438(#)]` -/
def P2405882444129156689.Spec : Prop :=
  ∀ n, P2405882444129156689.a n = A073249 (n + 1)

end A073249

/-! ## A073249.P639710452393208080

`filter[A073247(n+1), A323162(#)]`
-/

namespace A073249.P639710452393208080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A073249.P639710452393208080

namespace A073249

/-- `filter[A073247(n+1), A323162(#)]` -/
def P639710452393208080.Spec : Prop :=
  ∀ n, P639710452393208080.a n = A073249 (n + 1)

end A073249

/-! ## A073249.P13113564801249383634

`∩[A073247(n+1), A366413(n+1)]`
-/

namespace A073249.P13113564801249383634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P13113564801249383634

namespace A073249

/-- `∩[A073247(n+1), A366413(n+1)]` -/
def P13113564801249383634.Spec : Prop :=
  ∀ n, (P13113564801249383634.a n : ℤ) = A073249 (n + 1)

end A073249

/-! ## A073249.P1365336824304840773

`∩[A281192(n+1), A366413(n+1)]`
-/

namespace A073249.P1365336824304840773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P1365336824304840773

namespace A073249

/-- `∩[A281192(n+1), A366413(n+1)]` -/
def P1365336824304840773.Spec : Prop :=
  ∀ n, (P1365336824304840773.a n : ℤ) = A073249 (n + 1)

end A073249

/-! ## A073249.P15664025078080424422

`∩[A073247(n+1), A120944(n+1)]`
-/

namespace A073249.P15664025078080424422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P15664025078080424422

namespace A073249

/-- `∩[A073247(n+1), A120944(n+1)]` -/
def P15664025078080424422.Spec : Prop :=
  ∀ n, (P15664025078080424422.a n : ℤ) = A073249 (n + 1)

end A073249

/-! ## A073249.P15133316292412110782

`∩[A120944(n+1), A281192(n+1)]`
-/

namespace A073249.P15133316292412110782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P15133316292412110782

namespace A073249

/-- `∩[A120944(n+1), A281192(n+1)]` -/
def P15133316292412110782.Spec : Prop :=
  ∀ n, (P15133316292412110782.a n : ℤ) = A073249 (n + 1)

end A073249

/-! ## A073249.P15402693498199504253

`∩[A000469(n+1), A073247(n+1)]`
-/

namespace A073249.P15402693498199504253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P15402693498199504253

namespace A073249

/-- `∩[A000469(n+1), A073247(n+1)]` -/
def P15402693498199504253.Spec : Prop :=
  ∀ n, (P15402693498199504253.a n : ℤ) = A073249 (n + 1)

end A073249

/-! ## A073249.P11848017117394845732

`∩[A000469(n+1), A281192(n+1)]`
-/

namespace A073249.P11848017117394845732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P11848017117394845732

namespace A073249

/-- `∩[A000469(n+1), A281192(n+1)]` -/
def P11848017117394845732.Spec : Prop :=
  ∀ n, (P11848017117394845732.a n : ℤ) = A073249 (n + 1)

end A073249

/-! ## A073249.P7510972112040947327

`∩[A073247(n+1), A182853(n+1)]`
-/

namespace A073249.P7510972112040947327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P7510972112040947327

namespace A073249

/-- `∩[A073247(n+1), A182853(n+1)]` -/
def P7510972112040947327.Spec : Prop :=
  ∀ n, (P7510972112040947327.a n : ℤ) = A073249 (n + 1)

end A073249

/-! ## A073249.P10628129770489946712

`∩[A073247(n+1), A388427(n+1)]`
-/

namespace A073249.P10628129770489946712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P10628129770489946712

namespace A073249

/-- `∩[A073247(n+1), A388427(n+1)]` -/
def P10628129770489946712.Spec : Prop :=
  ∀ n, (P10628129770489946712.a n : ℤ) = A073249 (n + 1)

end A073249

/-! ## A073249.P10293110624368977283

`filter[A073247(n+1), A174898(#)]`
-/

namespace A073249.P10293110624368977283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A073249.P10293110624368977283

namespace A073249

/-- `filter[A073247(n+1), A174898(#)]` -/
def P10293110624368977283.Spec : Prop :=
  ∀ n, P10293110624368977283.a n = A073249 (n + 1)

end A073249

/-! ## A073249.P6687243502485745451

`∩[A073247(n+1), A230766(n+1)]`
-/

namespace A073249.P6687243502485745451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P6687243502485745451

namespace A073249

/-- `∩[A073247(n+1), A230766(n+1)]` -/
def P6687243502485745451.Spec : Prop :=
  ∀ n, (P6687243502485745451.a n : ℤ) = A073249 (n + 1)

end A073249

/-! ## A073249.P9456606238070369242

`∩[A073247(n+1), A362605(n+1)]`
-/

namespace A073249.P9456606238070369242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P9456606238070369242

namespace A073249

/-- `∩[A073247(n+1), A362605(n+1)]` -/
def P9456606238070369242.Spec : Prop :=
  ∀ n, (P9456606238070369242.a n : ℤ) = A073249 (n + 1)

end A073249

/-! ## A073249.P7840499163614396656

`∩[A067582(n+1), A073247(n+1)]`
-/

namespace A073249.P7840499163614396656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073249.P7840499163614396656

namespace A073249

/-- `∩[A067582(n+1), A073247(n+1)]` -/
def P7840499163614396656.Spec : Prop :=
  ∀ n, (P7840499163614396656.a n : ℤ) = A073249 (n + 1)

end A073249

/-!
# A073251: Numbers k such that k, k+1 and k+2 are nonprime and squarefree.

The programs for A073251, the canonical program `A073251.P16935436493994467128` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073251 has offset 1).

The definition of A073251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073251.P16935436493994467128

`∩[A121495(n+1)-1, A121495(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A073251

/-- `∩[A121495(n+1)-1, A121495(n+1)]` -/
def P16935436493994467128.Spec : Prop :=
  ∀ n, (P16935436493994467128.a n : ℤ) = A073251 (n + 1)

theorem P16935436493994467128.correct : P16935436493994467128.Spec := by
  intro n
  simp only [A073251, Nat.add_sub_cancel]

end A073251

/-! ## A073251.P1355722682200258629

`∩[A007675(n+1), A024628(n+1)]`
-/

namespace A073251.P1355722682200258629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073251.P1355722682200258629

namespace A073251

/-- `∩[A007675(n+1), A024628(n+1)]` -/
def P1355722682200258629.Spec : Prop :=
  ∀ n, (P1355722682200258629.a n : ℤ) = A073251 (n + 1)

end A073251

/-! ## A073251.P11269819419178335422

`∩[A024628(n+1), A228649(n+1)-1]`
-/

namespace A073251.P11269819419178335422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073251.P11269819419178335422

namespace A073251

/-- `∩[A024628(n+1), A228649(n+1)-1]` -/
def P11269819419178335422.Spec : Prop :=
  ∀ n, (P11269819419178335422.a n : ℤ) = A073251 (n + 1)

end A073251

/-! ## A073251.P11579169998212649899

`∩[A007675(n+1), A269345(n+1)]`
-/

namespace A073251.P11579169998212649899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073251.P11579169998212649899

namespace A073251

/-- `∩[A007675(n+1), A269345(n+1)]` -/
def P11579169998212649899.Spec : Prop :=
  ∀ n, (P11579169998212649899.a n : ℤ) = A073251 (n + 1)

end A073251

/-! ## A073251.P16547149046734498010

`∩[A024628(n+1), A004273(A228649(n+1)/2)]`
-/

namespace A073251.P16547149046734498010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A228649 (n + 1) : ℚ) / 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073251.P16547149046734498010

namespace A073251

/-- `∩[A024628(n+1), A004273(A228649(n+1)/2)]` -/
def P16547149046734498010.Spec : Prop :=
  ∀ n, (P16547149046734498010.a n : ℤ) = A073251 (n + 1)

end A073251

/-! ## A073251.P17555764219439886500

`∩[A024628(n+1), A004444(A228649(n+1))]`
-/

namespace A073251.P17555764219439886500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (A228649 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073251.P17555764219439886500

namespace A073251

/-- `∩[A024628(n+1), A004444(A228649(n+1))]` -/
def P17555764219439886500.Spec : Prop :=
  ∀ n, (P17555764219439886500.a n : ℤ) = A073251 (n + 1)

end A073251

/-!
# A073252: Coefficients of replicable function number "48g".

The programs for A073252, there is no canonical definition to state claims against.
-/

/-! ## A073252.P4544074888935352011

`(-1)^n*A022597(n)`
-/

namespace A073252.P4544074888935352011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A022597 n

end

end A073252.P4544074888935352011

/-! ## A073252.P14687142428773570900

`abs(A022597(n))`
-/

namespace A073252.P14687142428773570900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022597 n|

end

end A073252.P14687142428773570900

/-! ## A073252.P10148588597482408271

`A022597(n)*A033999(n)`
-/

namespace A073252.P10148588597482408271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 n * A033999 n

end

end A073252.P10148588597482408271

/-! ## A073252.P12578701457526732998

`gcd(A000038(n), A022597(n))`
-/

namespace A073252.P12578701457526732998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A022597 n)

end

end A073252.P12578701457526732998

/-! ## A073252.P12706074637837883671

`lcm(A000034(n), A022597(n))`
-/

namespace A073252.P12706074637837883671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A022597 n)

end

end A073252.P12706074637837883671

/-! ## A073252.P12894067693403889061

`abs(A089814(5*n))`
-/

namespace A073252.P12894067693403889061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A089814 (5 * n)|

end

end A073252.P12894067693403889061

/-! ## A073252.P8633845482406303240

`abs(A112167(6*n))`
-/

namespace A073252.P8633845482406303240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112167 (6 * n)|

end

end A073252.P8633845482406303240

/-! ## A073252.P2184839465752376105

`abs(A293386(∑[n+2]-1))`
-/

namespace A073252.P2184839465752376105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293386 (∑ j ∈ Finset.range (n + 1), f1 j - 1)|

end

end A073252.P2184839465752376105

/-! ## A073252.P17472567318129106102

`abs(A286352(∑[n+3]))`
-/

namespace A073252.P17472567318129106102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286352 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A073252.P17472567318129106102

/-! ## A073252.P11065325742595433546

`∑{d}[A022597(n), A000010(#)]`
-/

namespace A073252.P11065325742595433546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A073252.P11065325742595433546

/-!
# A073253: Table of expansion of Product (1+(xy)^n/y)(1+(xy)^n/x), n>0 by antidiagonals.

The programs for A073253, there is no canonical definition to state claims against.
-/

/-! ## A073253.P14078030802428703712

`A000196(A125226(n+1)%A125249(n+1))`
-/

namespace A073253.P14078030802428703712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A125226 (n + 1)) (A125249 (n + 1))).toNat

end

end A073253.P14078030802428703712

/-! ## A073253.P14428711842619558903

`A007966(A125226(n+1))%A291605(n+1)`
-/

namespace A073253.P14428711842619558903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007966 (A125226 (n + 1)).toNat) (A291605 (n + 1))

end

end A073253.P14428711842619558903

/-! ## A073253.P6980039837291726253

`A055090(A091466(n+1))`
-/

namespace A073253.P6980039837291726253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 (A091466 (n + 1)).toNat

end

end A073253.P6980039837291726253

/-! ## A073253.P16784260702487160195

`A099563(A181230(n+1))`
-/

namespace A073253.P16784260702487160195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A181230 (n + 1)).toNat

end

end A073253.P16784260702487160195

/-! ## A073253.P18436336620780969748

`A367817(A180984(n+1))`
-/

namespace A073253.P18436336620780969748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367817 (A180984 (n + 1)).toNat

end

end A073253.P18436336620780969748

/-!
# A073254: Array read by antidiagonals, A(n,k) = n^2 + n*k + k^2.

The programs for A073254, the canonical program `A073254.P2567531270234168708` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073254 has offset 0).

The definition of A073254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073254.P8282517265826571706

`n+3-A396776(n+3)+n`
-/

namespace A073254.P8282517265826571706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A396776 (n + 3) + (n : ℤ)

end

end A073254.P8282517265826571706

namespace A073254

/-- `n+3-A396776(n+3)+n` -/
def P8282517265826571706.Spec : Prop :=
  ∀ n, P8282517265826571706.a n = A073254 n

end A073254

/-! ## A073254.P17356393152031594973

`∑[char[∑[n+1]]]²-A004247(n)`
-/

namespace A073254.P17356393152031594973
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A004247 n

end

end A073254.P17356393152031594973

namespace A073254

/-- `∑[char[∑[n+1]]]²-A004247(n)` -/
def P17356393152031594973.Spec : Prop :=
  ∀ n, P17356393152031594973.a n = A073254 n

end A073254

/-! ## A073254.P6939936248069804563

`A143844(n)+A091435(n)`
-/

namespace A073254.P6939936248069804563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A091435 n

end

end A073254.P6939936248069804563

namespace A073254

/-- `A143844(n)+A091435(n)` -/
def P6939936248069804563.Spec : Prop :=
  ∀ n, P6939936248069804563.a n = A073254 n

end A073254

/-! ## A073254.P2662559172966455297

`A069011(n)-A079904(n)`
-/

namespace A073254.P2662559172966455297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n - A079904 n

end

end A073254.P2662559172966455297

namespace A073254

/-- `A069011(n)-A079904(n)` -/
def P2662559172966455297.Spec : Prop :=
  ∀ n, P2662559172966455297.a n = A073254 n

end A073254

/-! ## A073254.P12014592914245388607

`A105125(n)/A134478(n)`
-/

namespace A073254.P12014592914245388607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105125 n : ℚ) / (A134478 n : ℚ)

end

end A073254.P12014592914245388607

namespace A073254

/-- `A105125(n)/A134478(n)` -/
def P12014592914245388607.Spec : Prop :=
  ∀ n, P12014592914245388607.a n = (A073254 n : ℚ)

end A073254

/-! ## A073254.P5294407332747100272

`A091435(n)+A002262(n)²`
-/

namespace A073254.P5294407332747100272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + A002262 n ^ 2

end

end A073254.P5294407332747100272

namespace A073254

/-- `A091435(n)+A002262(n)²` -/
def P5294407332747100272.Spec : Prop :=
  ∀ n, P5294407332747100272.a n = A073254 n

end A073254

/-! ## A073254.P467746802555452367

`A079904(n)+A025581(n)²`
-/

namespace A073254.P467746802555452367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A025581 n ^ 2

end

end A073254.P467746802555452367

namespace A073254

/-- `A079904(n)+A025581(n)²` -/
def P467746802555452367.Spec : Prop :=
  ∀ n, P467746802555452367.a n = A073254 n

end A073254

/-! ## A073254.P15957889801010421408

`A095831(n+1)+A079904(n)`
-/

namespace A073254.P15957889801010421408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + A079904 n

end

end A073254.P15957889801010421408

namespace A073254

/-- `A095831(n+1)+A079904(n)` -/
def P15957889801010421408.Spec : Prop :=
  ∀ n, P15957889801010421408.a n = A073254 n

end A073254

/-! ## A073254.P10000611090814073654

`A349039(n)+2*A004247(n)`
-/

namespace A073254.P10000611090814073654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349039 n + 2 * A004247 n

end

end A073254.P10000611090814073654

namespace A073254

/-- `A349039(n)+2*A004247(n)` -/
def P10000611090814073654.Spec : Prop :=
  ∀ n, P10000611090814073654.a n = A073254 n

end A073254

/-! ## A073254.P2567531270234168708

`2*A057944(n)-A059036(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A073254

/-- `2*A057944(n)-A059036(n)` -/
def P2567531270234168708.Spec : Prop :=
  ∀ n, P2567531270234168708.a n = A073254 n

theorem P2567531270234168708.correct : P2567531270234168708.Spec := by
  intro n
  simp only [A073254]

end A073254

/-! ## A073254.P11085109123484214823

`2*A069011(n)-A132111(n)`
-/

namespace A073254.P11085109123484214823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069011 n - A132111 n

end

end A073254.P11085109123484214823

namespace A073254

/-- `2*A069011(n)-A132111(n)` -/
def P11085109123484214823.Spec : Prop :=
  ∀ n, P11085109123484214823.a n = A073254 n

end A073254

/-! ## A073254.P784762285086680734

`A132111(n)-2*A079904(n)`
-/

namespace A073254.P784762285086680734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n - 2 * A079904 n

end

end A073254.P784762285086680734

namespace A073254

/-- `A132111(n)-2*A079904(n)` -/
def P784762285086680734.Spec : Prop :=
  ∀ n, P784762285086680734.a n = A073254 n

end A073254

/-! ## A073254.P6532126265933812978

`A281385(n)-2*A004247(n)`
-/

namespace A073254.P6532126265933812978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n - 2 * A004247 n

end

end A073254.P6532126265933812978

namespace A073254

/-- `A281385(n)-2*A004247(n)` -/
def P6532126265933812978.Spec : Prop :=
  ∀ n, P6532126265933812978.a n = A073254 n

end A073254

/-! ## A073254.P12253657736721153931

`2*A048147(n)-A349039(n)`
-/

namespace A073254.P12253657736721153931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048147 n - A349039 n

end

end A073254.P12253657736721153931

namespace A073254

/-- `2*A048147(n)-A349039(n)` -/
def P12253657736721153931.Spec : Prop :=
  ∀ n, P12253657736721153931.a n = A073254 n

end A073254

/-! ## A073254.P3439878173317335130

`A091435(n)+log2(A059268(n))²`
-/

namespace A073254.P3439878173317335130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A091435 n : ℝ) + Real.logb 2 (A059268 n : ℝ) ^ 2

end

end A073254.P3439878173317335130

namespace A073254

/-- `A091435(n)+log2(A059268(n))²` -/
def P3439878173317335130.Spec : Prop :=
  ∀ n, P3439878173317335130.a n = (A073254 n : ℝ)

end A073254

/-! ## A073254.P18329490479259134782

`A003056(n)²+1-A077028(n)`
-/

namespace A073254.P18329490479259134782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 + (1 - A077028 n)

end

end A073254.P18329490479259134782

namespace A073254

/-- `A003056(n)²+1-A077028(n)` -/
def P18329490479259134782.Spec : Prop :=
  ∀ n, P18329490479259134782.a n = A073254 n

end A073254

/-! ## A073254.P13204674862698688907

`A003056(n)²+A176270(n)-1`
-/

namespace A073254.P13204674862698688907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 + (A176270 n - 1)

end

end A073254.P13204674862698688907

namespace A073254

/-- `A003056(n)²+A176270(n)-1` -/
def P13204674862698688907.Spec : Prop :=
  ∀ n, P13204674862698688907.a n = A073254 n

end A073254

/-! ## A073254.P10471462360953246289

`(A048147(n)+A003056(n)²)/2`
-/

namespace A073254.P10471462360953246289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048147 n + A003056 n ^ 2 : ℚ) / 2

end

end A073254.P10471462360953246289

namespace A073254

/-- `(A048147(n)+A003056(n)²)/2` -/
def P10471462360953246289.Spec : Prop :=
  ∀ n, P10471462360953246289.a n = (A073254 n : ℚ)

end A073254

/-! ## A073254.P6232142075619583019

`(A069011(n)+A025581(n)²)/2`
-/

namespace A073254.P6232142075619583019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069011 n + A025581 n ^ 2 : ℚ) / 2

end

end A073254.P6232142075619583019

namespace A073254

/-- `(A069011(n)+A025581(n)²)/2` -/
def P6232142075619583019.Spec : Prop :=
  ∀ n, P6232142075619583019.a n = (A073254 n : ℚ)

end A073254

/-! ## A073254.P15281678873982460475

`A070216(n+1)-A154614(n+1)`
-/

namespace A073254.P15281678873982460475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) - A154614 (n + 1)

end

end A073254.P15281678873982460475

namespace A073254

/-- `A070216(n+1)-A154614(n+1)` -/
def P15281678873982460475.Spec : Prop :=
  ∀ n, P15281678873982460475.a n = A073254 n

end A073254

/-!
# A073255: Sum of divisors of n-th composite number.

The programs for A073255, the canonical program `A073255.P14873519035853930482` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073255 has offset 1).

The definition of A073255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073255.P14873519035853930482

`∑{d}[Δ[A053767(n)], #]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073255

/-- `∑{d}[Δ[A053767(n)], #]` -/
def P14873519035853930482.Spec : Prop :=
  ∀ n, (P14873519035853930482.a n : ℤ) = A073255 (n + 1)

theorem P14873519035853930482.correct : P14873519035853930482.Spec := by
  intro n
  simp only [A073255, Nat.add_sub_cancel]

end A073255

/-! ## A073255.P9637428924907201046

`A163871(n+1)+1`
-/

namespace A073255.P9637428924907201046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163871 (n + 1) + 1

end

end A073255.P9637428924907201046

namespace A073255

/-- `A163871(n+1)+1` -/
def P9637428924907201046.Spec : Prop :=
  ∀ n, P9637428924907201046.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P15574977297085577496

`∑{d}[A002808(n+1), #]`
-/

namespace A073255.P15574977297085577496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A073255.P15574977297085577496

namespace A073255

/-- `∑{d}[A002808(n+1), #]` -/
def P15574977297085577496.Spec : Prop :=
  ∀ n, (P15574977297085577496.a n : ℤ) = A073255 (n + 1)

end A073255

/-! ## A073255.P6187726128918365215

`∑{d}[A018252(n+2), #]`
-/

namespace A073255.P6187726128918365215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A073255.P6187726128918365215

namespace A073255

/-- `∑{d}[A018252(n+2), #]` -/
def P6187726128918365215.Spec : Prop :=
  ∀ n, (P6187726128918365215.a n : ℤ) = A073255 (n + 1)

end A073255

/-! ## A073255.P16975229588716526895

`∑{d}[A141468(n+3), #]`
-/

namespace A073255.P16975229588716526895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A073255.P16975229588716526895

namespace A073255

/-- `∑{d}[A141468(n+3), #]` -/
def P16975229588716526895.Spec : Prop :=
  ∀ n, (P16975229588716526895.a n : ℤ) = A073255 (n + 1)

end A073255

/-! ## A073255.P13439547145270639750

`∑{d}[lt[1, A107463(n)], #]`
-/

namespace A073255.P13439547145270639750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A073255.P13439547145270639750

namespace A073255

/-- `∑{d}[lt[1, A107463(n)], #]` -/
def P13439547145270639750.Spec : Prop :=
  ∀ n, (P13439547145270639750.a n : ℤ) = A073255 (n + 1)

end A073255

/-! ## A073255.P1933948588704171700

`A000203(Δ[A053767(n)])`
-/

namespace A073255.P1933948588704171700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A073255.P1933948588704171700

namespace A073255

/-- `A000203(Δ[A053767(n)])` -/
def P1933948588704171700.Spec : Prop :=
  ∀ n, P1933948588704171700.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P14558326335313731002

`A000203(comp[A351078(n)])`
-/

namespace A073255.P14558326335313731002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073255.P14558326335313731002

namespace A073255

/-- `A000203(comp[A351078(n)])` -/
def P14558326335313731002.Spec : Prop :=
  ∀ n, P14558326335313731002.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P11360122107156881549

`A000203(A002808(n+1))`
-/

namespace A073255.P11360122107156881549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002808 (n + 1)).toNat

end

end A073255.P11360122107156881549

namespace A073255

/-- `A000203(A002808(n+1))` -/
def P11360122107156881549.Spec : Prop :=
  ∀ n, P11360122107156881549.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P8556465916248018617

`A000203(A018252(n+2))`
-/

namespace A073255.P8556465916248018617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A018252 (n + 2)).toNat

end

end A073255.P8556465916248018617

namespace A073255

/-- `A000203(A018252(n+2))` -/
def P8556465916248018617.Spec : Prop :=
  ∀ n, P8556465916248018617.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P12911655862578620779

`A000203(A141468(n+3))`
-/

namespace A073255.P12911655862578620779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A141468 (n + 3)).toNat

end

end A073255.P12911655862578620779

namespace A073255

/-- `A000203(A141468(n+3))` -/
def P12911655862578620779.Spec : Prop :=
  ∀ n, P12911655862578620779.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P3366890469631589791

`A000203(lt[1, A175126(n)])`
-/

namespace A073255.P3366890469631589791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073255.P3366890469631589791

namespace A073255

/-- `A000203(lt[1, A175126(n)])` -/
def P3366890469631589791.Spec : Prop :=
  ∀ n, P3366890469631589791.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P218530262305171799

`A000203(lt[1, A328771(n)])`
-/

namespace A073255.P218530262305171799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073255.P218530262305171799

namespace A073255

/-- `A000203(lt[1, A328771(n)])` -/
def P218530262305171799.Spec : Prop :=
  ∀ n, P218530262305171799.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P12362399665054034228

`A000203(lt[1, A328847(n)])`
-/

namespace A073255.P12362399665054034228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073255.P12362399665054034228

namespace A073255

/-- `A000203(lt[1, A328847(n)])` -/
def P12362399665054034228.Spec : Prop :=
  ∀ n, P12362399665054034228.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P8821665335703951809

`A000203(A072668(n+1)+1)`
-/

namespace A073255.P8821665335703951809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A072668 (n + 1) + 1).toNat

end

end A073255.P8821665335703951809

namespace A073255

/-- `A000203(A072668(n+1)+1)` -/
def P8821665335703951809.Spec : Prop :=
  ∀ n, P8821665335703951809.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P9970716184968884067

`A000203(A079696(n+1)-1)`
-/

namespace A073255.P9970716184968884067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A079696 (n + 1) - 1).toNat

end

end A073255.P9970716184968884067

namespace A073255

/-- `A000203(A079696(n+1)-1)` -/
def P9970716184968884067.Spec : Prop :=
  ∀ n, P9970716184968884067.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P13496815592582517125

`A000203(comp[A040976(n+1)]+2)`
-/

namespace A073255.P13496815592582517125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A073255.P13496815592582517125

namespace A073255

/-- `A000203(comp[A040976(n+1)]+2)` -/
def P13496815592582517125.Spec : Prop :=
  ∀ n, P13496815592582517125.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P7398771315557279631

`A000203(comp[C(A006530(n+1), n)])`
-/

namespace A073255.P7398771315557279631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A073255.P7398771315557279631

namespace A073255

/-- `A000203(comp[C(A006530(n+1), n)])` -/
def P7398771315557279631.Spec : Prop :=
  ∀ n, P7398771315557279631.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P7915773615262817033

`A000203(comp[C(A020639(n+1), n)])`
-/

namespace A073255.P7915773615262817033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A073255.P7915773615262817033

namespace A073255

/-- `A000203(comp[C(A020639(n+1), n)])` -/
def P7915773615262817033.Spec : Prop :=
  ∀ n, P7915773615262817033.a n = A073255 (n + 1)

end A073255

/-! ## A073255.P16249587356798283210

`A000203(lt[1, A001222(n+1)]+1)`
-/

namespace A073255.P16249587356798283210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A073255.P16249587356798283210

namespace A073255

/-- `A000203(lt[1, A001222(n+1)]+1)` -/
def P16249587356798283210.Spec : Prop :=
  ∀ n, P16249587356798283210.a n = A073255 (n + 1)

end A073255

/-!
# A073256: a(n) = phi(n-th composite number).

The programs for A073256, the canonical program `A073256.P8110500405186088033` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073256 has offset 1).

The definition of A073256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073256.P8110500405186088033

`2*A062948(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A073256

/-- `2*A062948(n+1)` -/
def P8110500405186088033.Spec : Prop :=
  ∀ n, P8110500405186088033.a n = A073256 (n + 1)

theorem P8110500405186088033.correct : P8110500405186088033.Spec := by
  intro n
  simp only [A073256, Nat.add_sub_cancel]

end A073256

/-! ## A073256.P15384654388752799609

`A000010(Δ[A053767(n)])`
-/

namespace A073256.P15384654388752799609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A073256.P15384654388752799609

namespace A073256

/-- `A000010(Δ[A053767(n)])` -/
def P15384654388752799609.Spec : Prop :=
  ∀ n, P15384654388752799609.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P13596733761038969677

`A000010(comp[A351078(n)])`
-/

namespace A073256.P13596733761038969677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073256.P13596733761038969677

namespace A073256

/-- `A000010(comp[A351078(n)])` -/
def P13596733761038969677.Spec : Prop :=
  ∀ n, P13596733761038969677.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P16352019514888841460

`A000010(A002808(n+1))`
-/

namespace A073256.P16352019514888841460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002808 (n + 1)).toNat

end

end A073256.P16352019514888841460

namespace A073256

/-- `A000010(A002808(n+1))` -/
def P16352019514888841460.Spec : Prop :=
  ∀ n, P16352019514888841460.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P4001618571516176036

`A004277(A062948(n+1))`
-/

namespace A073256.P4001618571516176036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A062948 (n + 1)).toNat

end

end A073256.P4001618571516176036

namespace A073256

/-- `A004277(A062948(n+1))` -/
def P4001618571516176036.Spec : Prop :=
  ∀ n, P4001618571516176036.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P16349251921542663448

`A000010(A018252(n+2))`
-/

namespace A073256.P16349251921542663448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A018252 (n + 2)).toNat

end

end A073256.P16349251921542663448

namespace A073256

/-- `A000010(A018252(n+2))` -/
def P16349251921542663448.Spec : Prop :=
  ∀ n, P16349251921542663448.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P2732918809660716573

`A000010(A141468(n+3))`
-/

namespace A073256.P2732918809660716573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A141468 (n + 3)).toNat

end

end A073256.P2732918809660716573

namespace A073256

/-- `A000010(A141468(n+3))` -/
def P2732918809660716573.Spec : Prop :=
  ∀ n, P2732918809660716573.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P3106669454142130358

`A000010(lt[1, A074206(n)])`
-/

namespace A073256.P3106669454142130358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073256.P3106669454142130358

namespace A073256

/-- `A000010(lt[1, A074206(n)])` -/
def P3106669454142130358.Spec : Prop :=
  ∀ n, P3106669454142130358.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P15544110474368641316

`A000010(lt[1, A107286(n)])`
-/

namespace A073256.P15544110474368641316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073256.P15544110474368641316

namespace A073256

/-- `A000010(lt[1, A107286(n)])` -/
def P15544110474368641316.Spec : Prop :=
  ∀ n, P15544110474368641316.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P8162551042299503189

`A000010(lt[1, A175126(n)])`
-/

namespace A073256.P8162551042299503189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073256.P8162551042299503189

namespace A073256

/-- `A000010(lt[1, A175126(n)])` -/
def P8162551042299503189.Spec : Prop :=
  ∀ n, P8162551042299503189.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P10067511893477917845

`A000010(lt[1, A328847(n)])`
-/

namespace A073256.P10067511893477917845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073256.P10067511893477917845

namespace A073256

/-- `A000010(lt[1, A328847(n)])` -/
def P10067511893477917845.Spec : Prop :=
  ∀ n, P10067511893477917845.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P8666033160425729549

`A000010(comp[A158611(n+1)])`
-/

namespace A073256.P8666033160425729549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073256.P8666033160425729549

namespace A073256

/-- `A000010(comp[A158611(n+1)])` -/
def P8666033160425729549.Spec : Prop :=
  ∀ n, P8666033160425729549.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P8544802215277080241

`A000010(A072668(n+1)+1)`
-/

namespace A073256.P8544802215277080241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072668 (n + 1) + 1).toNat

end

end A073256.P8544802215277080241

namespace A073256

/-- `A000010(A072668(n+1)+1)` -/
def P8544802215277080241.Spec : Prop :=
  ∀ n, P8544802215277080241.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P4990266251441790948

`A000010(A079696(n+1)-1)`
-/

namespace A073256.P4990266251441790948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A079696 (n + 1) - 1).toNat

end

end A073256.P4990266251441790948

namespace A073256

/-- `A000010(A079696(n+1)-1)` -/
def P4990266251441790948.Spec : Prop :=
  ∀ n, P4990266251441790948.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P6966507056480775878

`A000010(A164028(n+1)+3)`
-/

namespace A073256.P6966507056480775878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A164028 (n + 1) + 3).toNat

end

end A073256.P6966507056480775878

namespace A073256

/-- `A000010(A164028(n+1)+3)` -/
def P6966507056480775878.Spec : Prop :=
  ∀ n, P6966507056480775878.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P15890473542635566550

`A000010(A282671(n+1)/2)`
-/

namespace A073256.P15890473542635566550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A282671 (n + 1) : ℚ) / 2)).toNat

end

end A073256.P15890473542635566550

namespace A073256

/-- `A000010(A282671(n+1)/2)` -/
def P15890473542635566550.Spec : Prop :=
  ∀ n, P15890473542635566550.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P8161444290669493213

`A000010(A222307(2*n+3))`
-/

namespace A073256.P8161444290669493213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A222307 (2 * n + 3)).toNat

end

end A073256.P8161444290669493213

namespace A073256

/-- `A000010(A222307(2*n+3))` -/
def P8161444290669493213.Spec : Prop :=
  ∀ n, P8161444290669493213.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P5272780797124799872

`A000010(comp[A040976(n+1)]+2)`
-/

namespace A073256.P5272780797124799872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A073256.P5272780797124799872

namespace A073256

/-- `A000010(comp[A040976(n+1)]+2)` -/
def P5272780797124799872.Spec : Prop :=
  ∀ n, P5272780797124799872.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P13365376997722748888

`A000010(comp[C(A006530(n+1), n)])`
-/

namespace A073256.P13365376997722748888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A073256.P13365376997722748888

namespace A073256

/-- `A000010(comp[C(A006530(n+1), n)])` -/
def P13365376997722748888.Spec : Prop :=
  ∀ n, P13365376997722748888.a n = A073256 (n + 1)

end A073256

/-! ## A073256.P12452785967314638004

`A000010(comp[C(A020639(n+1), n)])`
-/

namespace A073256.P12452785967314638004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A073256.P12452785967314638004

namespace A073256

/-- `A000010(comp[C(A020639(n+1), n)])` -/
def P12452785967314638004.Spec : Prop :=
  ∀ n, P12452785967314638004.a n = A073256 (n + 1)

end A073256

/-!
# A073258: Numbers n such that gcd(c(n),n) = gcd(A002808(n),n) = A064814(n)=1 where c(n) is the n-th composite number.

The programs for A073258, the canonical program `A073258.P5210968974332604288` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073258 has offset 1).

The definition of A073258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9908 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073258.P5210968974332604288

`eq[1, gcd(n+1, A018252(n+2))]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073258

/-- `eq[1, gcd(n+1, A018252(n+2))]+1` -/
def P5210968974332604288.Spec : Prop :=
  ∀ n, (P5210968974332604288.a n : ℤ) = A073258 (n + 1)

theorem P5210968974332604288.correct : P5210968974332604288.Spec := by
  intro n
  simp only [A073258, Nat.add_sub_cancel]

end A073258

/-! ## A073258.P11350220748098291212

`lt[n+1, sqrt(lcm(n, A018252(n+1))+n)]`
-/

namespace A073258.P11350220748098291212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm (n : ℤ) (A018252 (n + 1)) + n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A073258.P11350220748098291212

namespace A073258

/-- `lt[n+1, sqrt(lcm(n, A018252(n+1))+n)]` -/
def P11350220748098291212.Spec : Prop :=
  ∀ n, (P11350220748098291212.a n : ℤ) = A073258 (n + 1)

end A073258

/-! ## A073258.P12024356789827749688

`record[A171528(n+1)]`
-/

namespace A073258.P12024356789827749688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073258.P12024356789827749688

namespace A073258

/-- `record[A171528(n+1)]` -/
def P12024356789827749688.Spec : Prop :=
  ∀ n, P12024356789827749688.a n = A073258 (n + 1)

end A073258

/-! ## A073258.P13670849396954732229

`eq[1, A064814(n+1)]+1`
-/

namespace A073258.P13670849396954732229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073258.P13670849396954732229

namespace A073258

/-- `eq[1, A064814(n+1)]+1` -/
def P13670849396954732229.Spec : Prop :=
  ∀ n, (P13670849396954732229.a n : ℤ) = A073258 (n + 1)

end A073258

/-! ## A073258.P13780329027703643842

`eq[1, gcd(n, A127118(n+1))]`
-/

namespace A073258.P13780329027703643842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A127118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073258.P13780329027703643842

namespace A073258

/-- `eq[1, gcd(n, A127118(n+1))]` -/
def P13780329027703643842.Spec : Prop :=
  ∀ n, (P13780329027703643842.a n : ℤ) = A073258 (n + 1)

end A073258

/-! ## A073258.P13654865650885075750

`lt[n+3, A137924(n+1)]+1`
-/

namespace A073258.P13654865650885075750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A073258.P13654865650885075750

namespace A073258

/-- `lt[n+3, A137924(n+1)]+1` -/
def P13654865650885075750.Spec : Prop :=
  ∀ n, (P13654865650885075750.a n : ℤ) = A073258 (n + 1)

end A073258

/-! ## A073258.P13754218048560348186

`record[A028242(2*n)/A064814(n+1)]`
-/

namespace A073258.P13754218048560348186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A064814 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073258.P13754218048560348186

namespace A073258

/-- `record[A028242(2*n)/A064814(n+1)]` -/
def P13754218048560348186.Spec : Prop :=
  ∀ n, P13754218048560348186.a n = (A073258 (n + 1) : ℚ)

end A073258

/-! ## A073258.P17269554420237808844

`record[A137925(n+1)]`
-/

namespace A073258.P17269554420237808844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073258.P17269554420237808844

namespace A073258

/-- `record[A137925(n+1)]` -/
def P17269554420237808844.Spec : Prop :=
  ∀ n, P17269554420237808844.a n = A073258 (n + 1)

end A073258

/-! ## A073258.P202296010187980301

`eq[A001222(n+1), A001222(A137925(n+1))]+1`
-/

namespace A073258.P202296010187980301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A137925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073258.P202296010187980301

namespace A073258

/-- `eq[A001222(n+1), A001222(A137925(n+1))]+1` -/
def P202296010187980301.Spec : Prop :=
  ∀ n, (P202296010187980301.a n : ℤ) = A073258 (n + 1)

end A073258

/-! ## A073258.P15228605338767006791

`eq[A002808(n+1), A002808(A137925(n+1))]+1`
-/

namespace A073258.P15228605338767006791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A137925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073258.P15228605338767006791

namespace A073258

/-- `eq[A002808(n+1), A002808(A137925(n+1))]+1` -/
def P15228605338767006791.Spec : Prop :=
  ∀ n, (P15228605338767006791.a n : ℤ) = A073258 (n + 1)

end A073258

/-!
# A073259: Number of iterations of f(n,k) = n+pi(k)+1 starting from f(n,n) until a fixed point is reached.

The programs for A073259, there is no canonical definition to state claims against.
-/

/-! ## A073259.P13082920506995800252

`A307194(A139827(n+1))+3`
-/

namespace A073259.P13082920506995800252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307194 (A139827 (n + 1)).toNat + 3

end

end A073259.P13082920506995800252

/-! ## A073259.P4811083939292362493

`A071942(A345592(n+1)-A000005(3*n+5))`
-/

namespace A073259.P4811083939292362493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071942 (A345592 (n + 1) - A000005 (3 * n + 5)).toNat

end

end A073259.P4811083939292362493

/-!
# A073261: Length of FixedPointList approximating (2^n)-th composite number. See program link below.

The programs for A073261, there is no canonical definition to state claims against.
-/

/-! ## A073261.P290858771916028576

`A073259(2^n)`
-/

namespace A073261.P290858771916028576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (2 ^ n)

end

end A073261.P290858771916028576

/-! ## A073261.P8937296411031947390

`A073259(A000079(n))%8`
-/

namespace A073261.P8937296411031947390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073259 (A000079 n).toNat) 8

end

end A073261.P8937296411031947390

/-! ## A073261.P4898640824960604298

`A101638(n+1)+A073259(A000079(n))`
-/

namespace A073261.P4898640824960604298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (n + 1) + A073259 (A000079 n).toNat

end

end A073261.P4898640824960604298

/-! ## A073261.P16612929486646730023

`A372063(n+1)+A073259(A000079(n))`
-/

namespace A073261.P16612929486646730023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372063 (n + 1) + A073259 (A000079 n).toNat

end

end A073261.P16612929486646730023

/-! ## A073261.P7424148486370851891

`A073259(A000079(n))*A316439(n+1)`
-/

namespace A073261.P7424148486370851891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A000079 n).toNat * A316439 (n + 1)

end

end A073261.P7424148486370851891

/-!
# A073262: Partial sums of first m composite numbers arising in A053781.

The programs for A073262, there is no canonical definition to state claims against.
-/

/-! ## A073262.P14680517141323377450

`A053781(n+1)*A073263(n+1)`
-/

namespace A073262.P14680517141323377450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053781 (n + 1) * A073263 (n + 1)

end

end A073262.P14680517141323377450

/-! ## A073262.P3958778272231898668

`A053767(A053781(n+1))`
-/

namespace A073262.P3958778272231898668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A053781 (n + 1)).toNat

end

end A073262.P3958778272231898668

/-! ## A073262.P16681802041678104073

`A051349(A053781(n+1)+1)-1`
-/

namespace A073262.P16681802041678104073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (A053781 (n + 1) + 1).toNat - 1

end

end A073262.P16681802041678104073

/-! ## A073262.P3806790215586524677

`A053767(record[gcd(n+1, A053767(n+1))])`
-/

namespace A073262.P3806790215586524677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053767 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A073262.P3806790215586524677

/-!
# A073263: Integer quotients of partial sum of first n composite and n (see A053781).

The programs for A073263, there is no canonical definition to state claims against.
-/

/-! ## A073263.P1754784390749679136

`A073262(n+1)/A053781(n+1)`
-/

namespace A073263.P1754784390749679136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073262 (n + 1) : ℚ) / (A053781 (n + 1) : ℚ)

end

end A073263.P1754784390749679136

/-! ## A073263.P16208941546487130389

`A073262(n+1)/record[gcd(n+1, A053767(n+1))]`
-/

namespace A073263.P16208941546487130389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053767 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073262 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A073263.P16208941546487130389

/-! ## A073263.P6653109356772898436

`(A051349(A053781(n+1)+1)-1)/A053781(n+1)`
-/

namespace A073263.P6653109356772898436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051349 (A053781 (n + 1) + 1).toNat - 1 : ℚ) / (A053781 (n + 1) : ℚ)

end

end A073263.P6653109356772898436

/-! ## A073263.P7369621252814710280

`A053767(A053781(n+1))/A053781(A175126(2*(n+1)))`
-/

namespace A073263.P7369621252814710280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053767 (A053781 (n + 1)).toNat : ℚ) / (A053781 (A175126 (2 * (n + 1))).toNat : ℚ)

end

end A073263.P7369621252814710280

/-!
# A073264: Prime digits in the decimal expansion of Pi (with repetitions, in order of appearance).

The programs for A073264, there is no canonical definition to state claims against.
-/

/-! ## A073264.P9614522033928615584

`p?[A000796(n)]`
-/

namespace A073264.P9614522033928615584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P9614522033928615584

/-! ## A073264.P8682985931304979330

`p?[A123152(n+1)-1]`
-/

namespace A073264.P8682985931304979330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P8682985931304979330

/-! ## A073264.P15812079573256015688

`A000796(A073303(n))`
-/

namespace A073264.P15812079573256015688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A073303 n).toNat + 1)

end

end A073264.P15812079573256015688

/-! ## A073264.P9378689601712510581

`A000796(A153031(n+1)-1)`
-/

namespace A073264.P9378689601712510581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A153031 (n + 1) - 1).toNat + 1)

end

end A073264.P9378689601712510581

/-! ## A073264.P4752129448254577971

`p?[9-A030644(n)]`
-/

namespace A073264.P4752129448254577971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P4752129448254577971

/-! ## A073264.P10857652931911980663

`p?[A086994(n)%8]`
-/

namespace A073264.P10857652931911980663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086994 (n + 1)) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P10857652931911980663

/-! ## A073264.P18236935132666144561

`p?[A065253(n+1)%10]`
-/

namespace A073264.P18236935132666144561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P18236935132666144561

/-! ## A073264.P6495870466612042819

`p?[A054249(n+1)+(-1)^n]`
-/

namespace A073264.P6495870466612042819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P6495870466612042819

/-! ## A073264.P13805285050494870396

`p?[A010877(A086994(n))]`
-/

namespace A073264.P13805285050494870396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A086994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P13805285050494870396

/-! ## A073264.P13079787999852836355

`p?[A001355(Δ[n²])]`
-/

namespace A073264.P13079787999852836355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P13079787999852836355

/-! ## A073264.P9555324666860700210

`p?[A076790(2*n+1)]`
-/

namespace A073264.P9555324666860700210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P9555324666860700210

/-! ## A073264.P12838417082775555337

`p?[A110766(2*n+1)]`
-/

namespace A073264.P12838417082775555337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P12838417082775555337

/-! ## A073264.P1319178895504719927

`p?[dr(A001355(2*n+1))]`
-/

namespace A073264.P1319178895504719927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001355 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A073264.P1319178895504719927

/-! ## A073264.P7290897010536828645

`p?[gcd(and(1, n), A001355(n+1))]`
-/

namespace A073264.P7290897010536828645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land 1 n : ℤ) (A001355 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A073264.P7290897010536828645

/-! ## A073264.P341070840906599182

`p?[Δ[A059582(n)]]`
-/

namespace A073264.P341070840906599182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P341070840906599182

/-! ## A073264.P7760870687070434120

`p?[A059582(n+1)-A059582(n)]`
-/

namespace A073264.P7760870687070434120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 1) - A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073264.P7760870687070434120

/-!
# A073265: Table T(n,k) (listed antidiagonalwise in order T(1,1), T(2,1), T(1,2), T(3,1), T(2,2), ...) giving the number of compositions (ordered partitions) of n into exactly k powers of 2.

The programs for A073265, there is no canonical definition to state claims against.
-/

/-! ## A073265.P18102553057307639641

`A175599(A311593(A144299(n))+A175599(n+1))`
-/

namespace A073265.P18102553057307639641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (A311593 (A144299 n).toNat + A175599 (n + 1)).toNat

end

end A073265.P18102553057307639641

/-! ## A073265.P16707850191444342456

`A088534(∑[A026741(n)^3])`
-/

namespace A073265.P16707850191444342456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073265.P16707850191444342456

/-! ## A073265.P13806075822169315598

`A088534(∑[A000578(A026741(n))])`
-/

namespace A073265.P13806075822169315598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073265.P13806075822169315598

/-! ## A073265.P13231141814398866893

`A079409(n)*A347871(A000079(n))`
-/

namespace A073265.P13231141814398866893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079409 n * A347871 (A000079 n).toNat

end

end A073265.P13231141814398866893

/-! ## A073265.P15677335078298407021

`lcm(A008683(A000051(n)), A079409(n))`
-/

namespace A073265.P15677335078298407021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A000051 n).toNat) (A079409 n)

end

end A073265.P15677335078298407021

/-!
# A073266: Triangle read by rows: T(n,k) is the number of compositions of n as the sum of k integral powers of 2.

The programs for A073266, there is no canonical definition to state claims against.
-/

/-! ## A073266.P11521292886237077608

`A073265(A245300(n)+1)`
-/

namespace A073266.P11521292886237077608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A245300 n + 1).toNat

end

end A073266.P11521292886237077608

/-! ## A073266.P10054039334002512243

`A253184(A128116(n+2)+n+1)`
-/

namespace A073266.P10054039334002512243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253184 (A128116 (n + 2) + (n + 1 : ℤ)).toNat

end

end A073266.P10054039334002512243

/-! ## A073266.P7212144573238762115

`A003056(A001497(n))%A005843(A002260(n+1))`
-/

namespace A073266.P7212144573238762115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A001497 n).toNat) (A005843 (A002260 (n + 1)).toNat)

end

end A073266.P7212144573238762115

/-! ## A073266.P4834001548071557434

`A033184(n+1)%A004277(A080508(n+1))`
-/

namespace A073266.P4834001548071557434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033184 (n + 1)) (A004277 (A080508 (n + 1)).toNat)

end

end A073266.P4834001548071557434

/-! ## A073266.P3561888058042334218

`lcm(A008683(A125702(n+1)), A125692(n))`
-/

namespace A073266.P3561888058042334218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A125702 (n + 1)).toNat) (A125692 n)

end

end A073266.P3561888058042334218

/-!
# A073267: Number of compositions (ordered partitions) of n into exactly two powers of 2.

The programs for A073267, the canonical program `A073267.P5858625629779266350` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073267 has offset 0).

The definition of A073267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073267.P5858625629779266350

`A180094(n*A075897(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073267

/-- `A180094(n*A075897(n))` -/
def P5858625629779266350.Spec : Prop :=
  ∀ n, P5858625629779266350.a n = A073267 n

theorem P5858625629779266350.correct : P5858625629779266350.Spec := by
  intro n
  simp only [A073267]

end A073267

/-! ## A073267.P6137952809630172731

`A000120(n*char[A173786(n)])`
-/

namespace A073267.P6137952809630172731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A073267.P6137952809630172731

namespace A073267

/-- `A000120(n*char[A173786(n)])` -/
def P6137952809630172731.Spec : Prop :=
  ∀ n, P6137952809630172731.a n = A073267 n

end A073267

/-! ## A073267.P14167455685994698298

`A093677(n+1)%A214212(n)`
-/

namespace A073267.P14167455685994698298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093677 (n + 1)) (A214212 n)

end

end A073267.P14167455685994698298

namespace A073267

/-- `A093677(n+1)%A214212(n)` -/
def P14167455685994698298.Spec : Prop :=
  ∀ n, P14167455685994698298.a n = A073267 n

end A073267

/-! ## A073267.P12539776582131928469

`A089049((2*n+1)*A075897(n))`
-/

namespace A073267.P12539776582131928469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089049 ((2 * n + 1 : ℤ) * A075897 n).toNat

end

end A073267.P12539776582131928469

namespace A073267

/-- `A089049((2*n+1)*A075897(n))` -/
def P12539776582131928469.Spec : Prop :=
  ∀ n, P12539776582131928469.a n = A073267 n

end A073267

/-! ## A073267.P13722656784459992153

`and(A000010(A071044(n)), A000120(n))`
-/

namespace A073267.P13722656784459992153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A071044 n).toNat) (A000120 n)

end

end A073267.P13722656784459992153

namespace A073267

/-- `and(A000010(A071044(n)), A000120(n))` -/
def P13722656784459992153.Spec : Prop :=
  ∀ n, P13722656784459992153.a n = A073267 n

end A073267

/-! ## A073267.P14562454081099704620

`and(A071858(n), A319408(A071044(n)))`
-/

namespace A073267.P14562454081099704620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071858 n) (A319408 (A071044 n).toNat)

end

end A073267.P14562454081099704620

namespace A073267

/-- `and(A071858(n), A319408(A071044(n)))` -/
def P14562454081099704620.Spec : Prop :=
  ∀ n, P14562454081099704620.a n = A073267 n

end A073267

/-! ## A073267.P482568681821595402

`and(A324467(n)/3, A000010(A071044(n)))`
-/

namespace A073267.P482568681821595402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A324467 n : ℚ) / 3)) (A000010 (A071044 n).toNat)

end

end A073267.P482568681821595402

namespace A073267

/-- `and(A324467(n)/3, A000010(A071044(n)))` -/
def P482568681821595402.Spec : Prop :=
  ∀ n, P482568681821595402.a n = A073267 n

end A073267

/-! ## A073267.P1003568740100831426

`and(A000120(n), A071044(A071044(n)-1))`
-/

namespace A073267.P1003568740100831426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 n) (A071044 (A071044 n - 1).toNat)

end

end A073267.P1003568740100831426

namespace A073267

/-- `and(A000120(n), A071044(A071044(n)-1))` -/
def P1003568740100831426.Spec : Prop :=
  ∀ n, P1003568740100831426.a n = A073267 n

end A073267

/-! ## A073267.P17972925853244978273

`and(A071044(A071044(n)-1), A071858(n))`
-/

namespace A073267.P17972925853244978273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071044 (A071044 n - 1).toNat) (A071858 n)

end

end A073267.P17972925853244978273

namespace A073267

/-- `and(A071044(A071044(n)-1), A071858(n))` -/
def P17972925853244978273.Spec : Prop :=
  ∀ n, P17972925853244978273.a n = A073267 n

end A073267

/-! ## A073267.P2899604999213216532

`A089048(2*n*A075897(n))`
-/

namespace A073267.P2899604999213216532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089048 ((2 * n : ℤ) * A075897 n).toNat

end

end A073267.P2899604999213216532

namespace A073267

/-- `A089048(2*n*A075897(n))` -/
def P2899604999213216532.Spec : Prop :=
  ∀ n, P2899604999213216532.a n = A073267 n

end A073267

/-! ## A073267.P7397561114379766058

`A151760(2*n)%4`
-/

namespace A073267.P7397561114379766058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151760 (2 * n)) 4

end

end A073267.P7397561114379766058

namespace A073267

/-- `A151760(2*n)%4` -/
def P7397561114379766058.Spec : Prop :=
  ∀ n, P7397561114379766058.a n = A073267 n

end A073267

/-! ## A073267.P2399787204128636753

`A151761(2*n+1)%4`
-/

namespace A073267.P2399787204128636753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151761 (2 * n + 1)) 4

end

end A073267.P2399787204128636753

namespace A073267

/-- `A151761(2*n+1)%4` -/
def P2399787204128636753.Spec : Prop :=
  ∀ n, P2399787204128636753.a n = A073267 n

end A073267

/-! ## A073267.P8115241218268036964

`floor(A151759(2*n+1)/3)`
-/

namespace A073267.P8115241218268036964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151759 (2 * n + 1) : ℚ) / 3⌋

end

end A073267.P8115241218268036964

namespace A073267

/-- `floor(A151759(2*n+1)/3)` -/
def P8115241218268036964.Spec : Prop :=
  ∀ n, P8115241218268036964.a n = A073267 n

end A073267

/-! ## A073267.P1924214667973293136

`A089048(2*n+1)*A089048(2*n)`
-/

namespace A073267.P1924214667973293136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089048 (2 * n + 1) * A089048 (2 * n)

end

end A073267.P1924214667973293136

namespace A073267

/-- `A089048(2*n+1)*A089048(2*n)` -/
def P1924214667973293136.Spec : Prop :=
  ∀ n, P1924214667973293136.a n = A073267 n

end A073267

/-! ## A073267.P8531864702830331963

`A151762(3*n)%3`
-/

namespace A073267.P8531864702830331963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151762 (3 * n)) 3

end

end A073267.P8531864702830331963

namespace A073267

/-- `A151762(3*n)%3` -/
def P8531864702830331963.Spec : Prop :=
  ∀ n, P8531864702830331963.a n = A073267 n

end A073267

/-! ## A073267.P9677931573962378968

`and(A180094(n), A216683(n))`
-/

namespace A073267.P9677931573962378968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A180094 n) (A216683 n)

end

end A073267.P9677931573962378968

namespace A073267

/-- `and(A180094(n), A216683(n))` -/
def P9677931573962378968.Spec : Prop :=
  ∀ n, P9677931573962378968.a n = A073267 n

end A073267

/-! ## A073267.P4926344162040107261

`and(A047074(n), A180094(n))`
-/

namespace A073267.P4926344162040107261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047074 n) (A180094 n)

end

end A073267.P4926344162040107261

namespace A073267

/-- `and(A047074(n), A180094(n))` -/
def P4926344162040107261.Spec : Prop :=
  ∀ n, P4926344162040107261.a n = A073267 n

end A073267

/-! ## A073267.P1097764685781501183

`A094537(n)%A214212(n)`
-/

namespace A073267.P1097764685781501183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094537 n) (A214212 n)

end

end A073267.P1097764685781501183

namespace A073267

/-- `A094537(n)%A214212(n)` -/
def P1097764685781501183.Spec : Prop :=
  ∀ n, P1097764685781501183.a n = A073267 n

end A073267

/-! ## A073267.P1677494169710014821

`A120739(n)%A214212(n)`
-/

namespace A073267.P1677494169710014821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120739 n) (A214212 n)

end

end A073267.P1677494169710014821

namespace A073267

/-- `A120739(n)%A214212(n)` -/
def P1677494169710014821.Spec : Prop :=
  ∀ n, P1677494169710014821.a n = A073267 n

end A073267

/-! ## A073267.P2888722411446076878

`and(A000120(n), A094537(n))`
-/

namespace A073267.P2888722411446076878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 n) (A094537 n)

end

end A073267.P2888722411446076878

namespace A073267

/-- `and(A000120(n), A094537(n))` -/
def P2888722411446076878.Spec : Prop :=
  ∀ n, P2888722411446076878.a n = A073267 n

end A073267

/-!
# A073268: Number of plane binary trees whose right (or respectively: left) subtree is a unique "complete" tree of (2^m)-1 nodes with all the leaf-nodes at the same depth m and the left (or respectively: right) subtree is any plane binary tree of size n - 2^m + 1.

The programs for A073268, there is no canonical definition to state claims against.
-/

/-! ## A073268.P5748979367356229654

`A086592(n!)-gcd(xor(1, -n), ∑[n])`
-/

namespace A073268.P5748979367356229654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (Nat.factorial n) - (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A073268.P5748979367356229654

/-! ## A073268.P15115407814729224620

`A193832(floor((n/2)^(Δ[n²]/2))+1)`
-/

namespace A073268.P15115407814729224620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (⌊((n : ℚ) / 2 : ℝ) ^ (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2 : ℝ)⌋ + 1).toNat

end

end A073268.P15115407814729224620

/-! ## A073268.P12535205812131085470

`A247908(A073191(n))`
-/

namespace A073268.P12535205812131085470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A073191 n).toNat

end

end A073268.P12535205812131085470

/-! ## A073268.P8816034211986017067

`A048688(A351633(n))`
-/

namespace A073268.P8816034211986017067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048688 (A351633 n).toNat

end

end A073268.P8816034211986017067

/-!
# A073269: Permutation of natural numbers induced by Catalan Automorphism *A073269 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A073269, there is no canonical definition to state claims against.
-/

/-! ## A073269.P3696305585678570410

`A069770(A072796(n))`
-/

namespace A073269.P3696305585678570410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A072796 n).toNat

end

end A073269.P3696305585678570410

/-! ## A073269.P12912512778962847819

`A072796(A073281(n))`
-/

namespace A073269.P12912512778962847819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A073281 n).toNat

end

end A073269.P12912512778962847819

/-! ## A073269.P1906159124921756591

`A073280(A073283(n))`
-/

namespace A073269.P1906159124921756591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A073283 n).toNat

end

end A073269.P1906159124921756591

/-! ## A073269.P4206069093001987425

`A072797(A074679(n))`
-/

namespace A073269.P4206069093001987425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A074679 n).toNat

end

end A073269.P4206069093001987425

/-! ## A073269.P10758671094361175430

`A073283(A074680(A057163(n)))`
-/

namespace A073269.P10758671094361175430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073283 (A074680 (A057163 n).toNat).toNat

end

end A073269.P10758671094361175430

/-! ## A073269.P3965445305401802052

`A073283(A074680(A072796(A073282(n))))`
-/

namespace A073269.P3965445305401802052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073283 (A074680 (A072796 (A073282 n).toNat).toNat).toNat

end

end A073269.P3965445305401802052

/-! ## A073269.P261514945514938170

`A069770(A057164(A129608(A057164(n))))`
-/

namespace A073269.P261514945514938170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057164 (A129608 (A057164 n).toNat).toNat).toNat

end

end A073269.P261514945514938170

/-! ## A073269.P8918704215068477459

`A069770(A057508(A129608(A057508(n))))`
-/

namespace A073269.P8918704215068477459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057508 (A129608 (A057508 n).toNat).toNat).toNat

end

end A073269.P8918704215068477459

/-! ## A073269.P5003481906283726121

`A074679(A089850(n))`
-/

namespace A073269.P5003481906283726121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A089850 n).toNat

end

end A073269.P5003481906283726121

/-! ## A073269.P13064603679412845553

`A074679(A089864(A089854(n)))`
-/

namespace A073269.P13064603679412845553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A089864 (A089854 n).toNat).toNat

end

end A073269.P13064603679412845553

/-!
# A073270: Permutation of natural numbers induced by Catalan Automorphism *A073270 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A073270, there is no canonical definition to state claims against.
-/

/-! ## A073270.P12346855437396956427

`A074680(A072797(n))`
-/

namespace A073270.P12346855437396956427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A072797 n).toNat

end

end A073270.P12346855437396956427

/-! ## A073270.P3684178871688655497

`A073281(A072796(n))`
-/

namespace A073270.P3684178871688655497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073281 (A072796 n).toNat

end

end A073270.P3684178871688655497

/-! ## A073270.P15353120584727225478

`A072796(A069770(n))`
-/

namespace A073270.P15353120584727225478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A069770 n).toNat

end

end A073270.P15353120584727225478

/-! ## A073270.P14807478989641149997

`A073282(A073280(n))`
-/

namespace A073270.P14807478989641149997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A073280 n).toNat

end

end A073270.P14807478989641149997

/-! ## A073270.P10186025002674492746

`A074680(A073283(A057163(n)))`
-/

namespace A073270.P10186025002674492746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A073283 (A057163 n).toNat).toNat

end

end A073270.P10186025002674492746

/-! ## A073270.P9072359087764645688

`A074680(A057163(A073282(n)))`
-/

namespace A073270.P9072359087764645688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A057163 (A073282 n).toNat).toNat

end

end A073270.P9072359087764645688

/-! ## A073270.P1106020266877635915

`A073281(A069770(A073269(n)))`
-/

namespace A073270.P1106020266877635915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073281 (A069770 (A073269 n).toNat).toNat

end

end A073270.P1106020266877635915

/-! ## A073270.P17523444436467862356

`A073281(A073269(A073281(n)))`
-/

namespace A073270.P17523444436467862356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073281 (A073269 (A073281 n).toNat).toNat

end

end A073270.P17523444436467862356

/-! ## A073270.P1116106570124202561

`A074680(A073269(A074680(n)))`
-/

namespace A073270.P1116106570124202561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A073269 (A074680 n).toNat).toNat

end

end A073270.P1116106570124202561

/-! ## A073270.P5200490747151465924

`A073282(A072796(A074680(A073283(n))))`
-/

namespace A073270.P5200490747151465924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A072796 (A074680 (A073283 n).toNat).toNat).toNat

end

end A073270.P5200490747151465924

/-!
# A073271: a(n) = floor( prime(n)*prime(n+2) / prime(n+1) ).

The programs for A073271, the canonical program `A073271.P12354206027556464355` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073271 has offset 1).

The definition of A073271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073271.P3849816032359028120

`p?[2*n+1]-A073272(n+1)`
-/

namespace A073271.P3849816032359028120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A073272 (n + 1)

end

end A073271.P3849816032359028120

namespace A073271

/-- `p?[2*n+1]-A073272(n+1)` -/
def P3849816032359028120.Spec : Prop :=
  ∀ n, P3849816032359028120.a n = A073271 (n + 1)

end A073271

/-! ## A073271.P8746633010392555173

`A065091(n+1)-A073272(n+1)`
-/

namespace A073271.P8746633010392555173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A073272 (n + 1)

end

end A073271.P8746633010392555173

namespace A073271

/-- `A065091(n+1)-A073272(n+1)` -/
def P8746633010392555173.Spec : Prop :=
  ∀ n, P8746633010392555173.a n = A073271 (n + 1)

end A073271

/-! ## A073271.P12354206027556464355

`floor(A090076(n+1)/A065091(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A073271

/-- `floor(A090076(n+1)/A065091(n+1))` -/
def P12354206027556464355.Spec : Prop :=
  ∀ n, P12354206027556464355.a n = A073271 (n + 1)

theorem P12354206027556464355.correct : P12354206027556464355.Spec := by
  intro n
  simp only [A073271, Nat.add_sub_cancel]

end A073271

/-! ## A073271.P8151121622933200175

`A073273(n+1)+A073274(n+1)-A073272(n+1)`
-/

namespace A073271.P8151121622933200175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1) + (A073274 (n + 1) - A073272 (n + 1))

end

end A073271.P8151121622933200175

namespace A073271

/-- `A073273(n+1)+A073274(n+1)-A073272(n+1)` -/
def P8151121622933200175.Spec : Prop :=
  ∀ n, P8151121622933200175.a n = A073271 (n + 1)

end A073271

/-! ## A073271.P298558992663885065

`A000040(n+2)-A073272(n+1)`
-/

namespace A073271.P298558992663885065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A073272 (n + 1)

end

end A073271.P298558992663885065

namespace A073271

/-- `A000040(n+2)-A073272(n+1)` -/
def P298558992663885065.Spec : Prop :=
  ∀ n, P298558992663885065.a n = A073271 (n + 1)

end A073271

/-! ## A073271.P948742942580589270

`(A090076(n+1)-A022462(n+1))/A000040(n+2)`
-/

namespace A073271.P948742942580589270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090076 (n + 1) - A022462 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A073271.P948742942580589270

namespace A073271

/-- `(A090076(n+1)-A022462(n+1))/A000040(n+2)` -/
def P948742942580589270.Spec : Prop :=
  ∀ n, P948742942580589270.a n = (A073271 (n + 1) : ℚ)

end A073271

/-! ## A073271.P1669932178965948629

`floor(ratio[A306237(n+2)])`
-/

namespace A073271.P1669932178965948629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A073271.P1669932178965948629

namespace A073271

/-- `floor(ratio[A306237(n+2)])` -/
def P1669932178965948629.Spec : Prop :=
  ∀ n, P1669932178965948629.a n = A073271 (n + 1)

end A073271

/-! ## A073271.P15609338659553121475

`floor(ratio[A077011(∑[n+1]+2)])`
-/

namespace A073271.P15609338659553121475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A073271.P15609338659553121475

namespace A073271

/-- `floor(ratio[A077011(∑[n+1]+2)])` -/
def P15609338659553121475.Spec : Prop :=
  ∀ n, P15609338659553121475.a n = A073271 (n + 1)

end A073271

/-!
# A073272: A000040(n+1) - A073271(n).

The programs for A073272, the canonical program `A073272.P15073051830064550089` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073272 has offset 1).

The definition of A073272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A073271, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073272.P15073051830064550089

`A000040(n+2)-A073271(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A073272

/-- `A000040(n+2)-A073271(n+1)` -/
def P15073051830064550089.Spec : Prop :=
  ∀ n, P15073051830064550089.a n = A073272 (n + 1)

theorem P15073051830064550089.correct : P15073051830064550089.Spec := by
  intro n
  simp only [A073272, Nat.add_sub_cancel]

end A073272

/-! ## A073272.P9734845846620571990

`A065091(n+1)-A073271(n+1)`
-/

namespace A073272.P9734845846620571990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A073271 (n + 1)

end

end A073272.P9734845846620571990

namespace A073272

/-- `A065091(n+1)-A073271(n+1)` -/
def P9734845846620571990.Spec : Prop :=
  ∀ n, P9734845846620571990.a n = A073272 (n + 1)

end A073272

/-! ## A073272.P11323567548674357288

`A073273(n+1)+A073274(n+1)-A073271(n+1)`
-/

namespace A073272.P11323567548674357288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1) + (A073274 (n + 1) - A073271 (n + 1))

end

end A073272.P11323567548674357288

namespace A073272

/-- `A073273(n+1)+A073274(n+1)-A073271(n+1)` -/
def P11323567548674357288.Spec : Prop :=
  ∀ n, P11323567548674357288.a n = A073272 (n + 1)

end A073272

/-! ## A073272.P11788792287823435102

`A100484(n+1)-(A073271(n+1)+A062234(n+1))`
-/

namespace A073272.P11788792287823435102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - (A073271 (n + 1) + A062234 (n + 1))

end

end A073272.P11788792287823435102

namespace A073272

/-- `A100484(n+1)-(A073271(n+1)+A062234(n+1))` -/
def P11788792287823435102.Spec : Prop :=
  ∀ n, P11788792287823435102.a n = A073272 (n + 1)

end A073272

/-! ## A073272.P5091382603762780078

`A001223(n+2)+A062234(n+2)-A073271(n+1)`
-/

namespace A073272.P5091382603762780078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) + (A062234 (n + 2) - A073271 (n + 1))

end

end A073272.P5091382603762780078

namespace A073272

/-- `A001223(n+2)+A062234(n+2)-A073271(n+1)` -/
def P5091382603762780078.Spec : Prop :=
  ∀ n, P5091382603762780078.a n = A073272 (n + 1)

end A073272

/-! ## A073272.P13916737688280317890

`A065091(n+1)-floor(A090076(n+1)/A065091(n+1))`
-/

namespace A073272.P13916737688280317890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - ⌊(A090076 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A073272.P13916737688280317890

namespace A073272

/-- `A065091(n+1)-floor(A090076(n+1)/A065091(n+1))` -/
def P13916737688280317890.Spec : Prop :=
  ∀ n, P13916737688280317890.a n = A073272 (n + 1)

end A073272

/-! ## A073272.P11189786007825593320

`A008578(n+3)-A073271(n+1)`
-/

namespace A073272.P11189786007825593320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3) - A073271 (n + 1)

end

end A073272.P11189786007825593320

namespace A073272

/-- `A008578(n+3)-A073271(n+1)` -/
def P11189786007825593320.Spec : Prop :=
  ∀ n, P11189786007825593320.a n = A073272 (n + 1)

end A073272

/-! ## A073272.P11758145529226916287

`record[A166333(2*(n+1))]-A073271(n+1)`
-/

namespace A073272.P11758145529226916287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A073271 (n + 1)

end

end A073272.P11758145529226916287

namespace A073272

/-- `record[A166333(2*(n+1))]-A073271(n+1)` -/
def P11758145529226916287.Spec : Prop :=
  ∀ n, P11758145529226916287.a n = A073272 (n + 1)

end A073272

/-!
# A073273: a(n) = floor(sqrt(prime(n)*prime(n+2))).

The programs for A073273, the canonical program `A073273.P11275688004729540512` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073273 has offset 1).

The definition of A073273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073273.P1429465928342303534

`floor(sqrt(A090076(n+1)))`
-/

namespace A073273.P1429465928342303534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A090076 (n + 1))

end

end A073273.P1429465928342303534

namespace A073273

/-- `floor(sqrt(A090076(n+1)))` -/
def P1429465928342303534.Spec : Prop :=
  ∀ n, P1429465928342303534.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P1341196311986659412

`floor(sqrt(A087105(n+2)))`
-/

namespace A073273.P1341196311986659412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A087105 (n + 2))

end

end A073273.P1341196311986659412

namespace A073273

/-- `floor(sqrt(A087105(n+2)))` -/
def P1341196311986659412.Spec : Prop :=
  ∀ n, P1341196311986659412.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P3381396587518830042

`round(sqrt(A152530(n+1)))`
-/

namespace A073273.P3381396587518830042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A152530 (n + 1) : ℝ))

end

end A073273.P3381396587518830042

namespace A073273

/-- `round(sqrt(A152530(n+1)))` -/
def P3381396587518830042.Spec : Prop :=
  ∀ n, P3381396587518830042.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P11275688004729540512

`A078444(n+1)+A028334(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073273

/-- `A078444(n+1)+A028334(n+2)` -/
def P11275688004729540512.Spec : Prop :=
  ∀ n, P11275688004729540512.a n = A073273 (n + 1)

theorem P11275688004729540512.correct : P11275688004729540512.Spec := by
  intro n
  simp only [A073273, Nat.add_sub_cancel]

end A073273

/-! ## A073273.P6472749610070763014

`A065091(n+1)-A073274(n+1)`
-/

namespace A073273.P6472749610070763014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A073274 (n + 1)

end

end A073273.P6472749610070763014

namespace A073273

/-- `A065091(n+1)-A073274(n+1)` -/
def P6472749610070763014.Spec : Prop :=
  ∀ n, P6472749610070763014.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P17891035889138438069

`round(sqrt(A090076(n+1)-A065091(n+1)))`
-/

namespace A073273.P17891035889138438069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A090076 (n + 1) - A065091 (n + 1) : ℝ))

end

end A073273.P17891035889138438069

namespace A073273

/-- `round(sqrt(A090076(n+1)-A065091(n+1)))` -/
def P17891035889138438069.Spec : Prop :=
  ∀ n, P17891035889138438069.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P108695693296478630

`A024675(n+1)-A008619(A001223(n+1))`
-/

namespace A073273.P108695693296478630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A008619 (A001223 (n + 1)).toNat

end

end A073273.P108695693296478630

namespace A073273

/-- `A024675(n+1)-A008619(A001223(n+1))` -/
def P108695693296478630.Spec : Prop :=
  ∀ n, P108695693296478630.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P18439038409500169826

`A000040(n+1)+A100820(n+1)+A028334(n+2)`
-/

namespace A073273.P18439038409500169826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A100820 (n + 1) + A028334 (n + 2))

end

end A073273.P18439038409500169826

namespace A073273

/-- `A000040(n+1)+A100820(n+1)+A028334(n+2)` -/
def P18439038409500169826.Spec : Prop :=
  ∀ n, P18439038409500169826.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P11375828873609914512

`A073271(n+1)+A073272(n+1)-A073274(n+1)`
-/

namespace A073273.P11375828873609914512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073271 (n + 1) + (A073272 (n + 1) - A073274 (n + 1))

end

end A073273.P11375828873609914512

namespace A073273

/-- `A073271(n+1)+A073272(n+1)-A073274(n+1)` -/
def P11375828873609914512.Spec : Prop :=
  ∀ n, P11375828873609914512.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P17640544533196533859

`A130290(n+1)+A005097(n+2)`
-/

namespace A073273.P17640544533196533859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) + A005097 (n + 2)

end

end A073273.P17640544533196533859

namespace A073273

/-- `A130290(n+1)+A005097(n+2)` -/
def P17640544533196533859.Spec : Prop :=
  ∀ n, P17640544533196533859.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P3640279530573541259

`A162345(n+2)+A006093(n+1)`
-/

namespace A073273.P3640279530573541259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 2) + A006093 (n + 1)

end

end A073273.P3640279530573541259

namespace A073273

/-- `A162345(n+2)+A006093(n+1)` -/
def P3640279530573541259.Spec : Prop :=
  ∀ n, P3640279530573541259.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P16349340611939767368

`A130291(n+1)+A067076(n+2)`
-/

namespace A073273.P16349340611939767368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1) + A067076 (n + 2)

end

end A073273.P16349340611939767368

namespace A073273

/-- `A130291(n+1)+A067076(n+2)` -/
def P16349340611939767368.Spec : Prop :=
  ∀ n, P16349340611939767368.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P13048156230095693157

`A000040(n+2)-A073274(n+1)`
-/

namespace A073273.P13048156230095693157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A073274 (n + 1)

end

end A073273.P13048156230095693157

namespace A073273

/-- `A000040(n+2)-A073274(n+1)` -/
def P13048156230095693157.Spec : Prop :=
  ∀ n, P13048156230095693157.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P10357690101226226351

`A008578(n+2)+A115061(n+2)-1`
-/

namespace A073273.P10357690101226226351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (A115061 (n + 2) - 1)

end

end A073273.P10357690101226226351

namespace A073273

/-- `A008578(n+2)+A115061(n+2)-1` -/
def P10357690101226226351.Spec : Prop :=
  ∀ n, P10357690101226226351.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P3698745097668526365

`A008578(n+2)+A162345(n+2)-1`
-/

namespace A073273.P3698745097668526365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (A162345 (n + 2) - 1)

end

end A073273.P3698745097668526365

namespace A073273

/-- `A008578(n+2)+A162345(n+2)-1` -/
def P3698745097668526365.Spec : Prop :=
  ∀ n, P3698745097668526365.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P9645223510684990392

`floor(A000040(n+1)*ratio[A001043(n+1)])`
-/

namespace A073273.P9645223510684990392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A073273.P9645223510684990392

namespace A073273

/-- `floor(A000040(n+1)*ratio[A001043(n+1)])` -/
def P9645223510684990392.Spec : Prop :=
  ∀ n, P9645223510684990392.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P7437322781950767222

`round(sqrt(A090076(n+1)+A047355(n+2)))-1`
-/

namespace A073273.P7437322781950767222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A090076 (n + 1) + A047355 (n + 2) : ℝ)) - 1

end

end A073273.P7437322781950767222

namespace A073273

/-- `round(sqrt(A090076(n+1)+A047355(n+2)))-1` -/
def P7437322781950767222.Spec : Prop :=
  ∀ n, P7437322781950767222.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P3360789347102341905

`A005097(n+2)+A005097(A028310(n))`
-/

namespace A073273.P3360789347102341905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) + A005097 (A028310 n).toNat

end

end A073273.P3360789347102341905

namespace A073273

/-- `A005097(n+2)+A005097(A028310(n))` -/
def P3360789347102341905.Spec : Prop :=
  ∀ n, P3360789347102341905.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P18279498101936876819

`A024675(n+1)-A008619(A054541(n+2))`
-/

namespace A073273.P18279498101936876819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A008619 (A054541 (n + 2)).toNat

end

end A073273.P18279498101936876819

namespace A073273

/-- `A024675(n+1)-A008619(A054541(n+2))` -/
def P18279498101936876819.Spec : Prop :=
  ∀ n, P18279498101936876819.a n = A073273 (n + 1)

end A073273

/-! ## A073273.P13443397217684797786

`A078444(n+1)+A005097(n+2)-A005097(n+1)`
-/

namespace A073273.P13443397217684797786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 1) + (A005097 (n + 2) - A005097 (n + 1))

end

end A073273.P13443397217684797786

namespace A073273

/-- `A078444(n+1)+A005097(n+2)-A005097(n+1)` -/
def P13443397217684797786.Spec : Prop :=
  ∀ n, P13443397217684797786.a n = A073273 (n + 1)

end A073273

/-!
# A073274: a(n) = A000040(n+1) - A073273(n).

The programs for A073274, the canonical program `A073274.P9123969946531876833` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073274 has offset 1).

The definition of A073274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A073273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073274.P9123969946531876833

`A000040(n+2)-A073273(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A073274

/-- `A000040(n+2)-A073273(n+1)` -/
def P9123969946531876833.Spec : Prop :=
  ∀ n, P9123969946531876833.a n = A073274 (n + 1)

theorem P9123969946531876833.correct : P9123969946531876833.Spec := by
  intro n
  simp only [A073274, Nat.add_sub_cancel]

end A073274

/-! ## A073274.P11627421002120978028

`ceil(A073272(n+1)/2)`
-/

namespace A073274.P11627421002120978028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073272 (n + 1) : ℚ) / 2⌉

end

end A073274.P11627421002120978028

namespace A073274

/-- `ceil(A073272(n+1)/2)` -/
def P11627421002120978028.Spec : Prop :=
  ∀ n, P11627421002120978028.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P2059402295169911640

`1-ceil(A036263(n+1)/2)`
-/

namespace A073274.P2059402295169911640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈(A036263 (n + 1) : ℚ) / 2⌉

end

end A073274.P2059402295169911640

namespace A073274

/-- `1-ceil(A036263(n+1)/2)` -/
def P2059402295169911640.Spec : Prop :=
  ∀ n, P2059402295169911640.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P7752886050485997866

`1-Δ[A029578(A001223(n+1))]`
-/

namespace A073274.P7752886050485997866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A073274.P7752886050485997866

namespace A073274

/-- `1-Δ[A029578(A001223(n+1))]` -/
def P7752886050485997866.Spec : Prop :=
  ∀ n, P7752886050485997866.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P386898460715107705

`A065091(n+1)-A073273(n+1)`
-/

namespace A073274.P386898460715107705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A073273 (n + 1)

end

end A073274.P386898460715107705

namespace A073274

/-- `A065091(n+1)-A073273(n+1)` -/
def P386898460715107705.Spec : Prop :=
  ∀ n, P386898460715107705.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P6791364662017077909

`A073271(n+1)+A073272(n+1)-A073273(n+1)`
-/

namespace A073274.P6791364662017077909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073271 (n + 1) + (A073272 (n + 1) - A073273 (n + 1))

end

end A073274.P6791364662017077909

namespace A073274

/-- `A073271(n+1)+A073272(n+1)-A073273(n+1)` -/
def P6791364662017077909.Spec : Prop :=
  ∀ n, P6791364662017077909.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P16749500483490590258

`A001223(n+1)-(A100820(n+1)+A028334(n+2))`
-/

namespace A073274.P16749500483490590258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (A100820 (n + 1) + A028334 (n + 2))

end

end A073274.P16749500483490590258

namespace A073274

/-- `A001223(n+1)-(A100820(n+1)+A028334(n+2))` -/
def P16749500483490590258.Spec : Prop :=
  ∀ n, P16749500483490590258.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P12698461800805163745

`A028334(n+2)-(A100820(n+1)+A036263(n+1))`
-/

namespace A073274.P12698461800805163745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) - (A100820 (n + 1) + A036263 (n + 1))

end

end A073274.P12698461800805163745

namespace A073274

/-- `A028334(n+2)-(A100820(n+1)+A036263(n+1))` -/
def P12698461800805163745.Spec : Prop :=
  ∀ n, P12698461800805163745.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P5126847409362315242

`A006005(n+2)-A073273(n+1)`
-/

namespace A073274.P5126847409362315242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) - A073273 (n + 1)

end

end A073274.P5126847409362315242

namespace A073274

/-- `A006005(n+2)-A073273(n+1)` -/
def P5126847409362315242.Spec : Prop :=
  ∀ n, P5126847409362315242.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P9042601538186240056

`A076368(n+2)-A162345(n+2)`
-/

namespace A073274.P9042601538186240056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 2) - A162345 (n + 2)

end

end A073274.P9042601538186240056

namespace A073274

/-- `A076368(n+2)-A162345(n+2)` -/
def P9042601538186240056.Spec : Prop :=
  ∀ n, P9042601538186240056.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P10289723742315822501

`1-Δ[Δ[A130290(n+1)]]`
-/

namespace A073274.P10289723742315822501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A073274.P10289723742315822501

namespace A073274

/-- `1-Δ[Δ[A130290(n+1)]]` -/
def P10289723742315822501.Spec : Prop :=
  ∀ n, P10289723742315822501.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P11525821956206526586

`1-Δ[Δ[A130291(n+1)]]`
-/

namespace A073274.P11525821956206526586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A073274.P11525821956206526586

namespace A073274

/-- `1-Δ[Δ[A130291(n+1)]]` -/
def P11525821956206526586.Spec : Prop :=
  ∀ n, P11525821956206526586.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P1070368626550031271

`1-Δ[A004526(Δ[A000040(n+1)])]`
-/

namespace A073274.P1070368626550031271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A073274.P1070368626550031271

namespace A073274

/-- `1-Δ[A004526(Δ[A000040(n+1)])]` -/
def P1070368626550031271.Spec : Prop :=
  ∀ n, P1070368626550031271.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P1204843381524771941

`1-Δ[A008619(Δ[A000040(n+1)])]`
-/

namespace A073274.P1204843381524771941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A073274.P1204843381524771941

namespace A073274

/-- `1-Δ[A008619(Δ[A000040(n+1)])]` -/
def P1204843381524771941.Spec : Prop :=
  ∀ n, P1204843381524771941.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P4221624469727280136

`1-Δ[A025480(Δ[A000040(n+1)])]`
-/

namespace A073274.P4221624469727280136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A073274.P4221624469727280136

namespace A073274

/-- `1-Δ[A025480(Δ[A000040(n+1)])]` -/
def P4221624469727280136.Spec : Prop :=
  ∀ n, P4221624469727280136.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P14861525352142195027

`1-Δ[A029578(Δ[A000040(n+1)])]`
-/

namespace A073274.P14861525352142195027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A073274.P14861525352142195027

namespace A073274

/-- `1-Δ[A029578(Δ[A000040(n+1)])]` -/
def P14861525352142195027.Spec : Prop :=
  ∀ n, P14861525352142195027.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P1380919224835458041

`1-Δ[A049206(Δ[A000040(n+1)])]`
-/

namespace A073274.P1380919224835458041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A073274.P1380919224835458041

namespace A073274

/-- `1-Δ[A049206(Δ[A000040(n+1)])]` -/
def P1380919224835458041.Spec : Prop :=
  ∀ n, P1380919224835458041.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P2100436820117893242

`1-Δ[A123108(Δ[A000040(n+1)])]`
-/

namespace A073274.P2100436820117893242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A073274.P2100436820117893242

namespace A073274

/-- `1-Δ[A123108(Δ[A000040(n+1)])]` -/
def P2100436820117893242.Spec : Prop :=
  ∀ n, P2100436820117893242.a n = A073274 (n + 1)

end A073274

/-! ## A073274.P637952798803380749

`1-Δ[A133622(Δ[A000040(n+1)])]`
-/

namespace A073274.P637952798803380749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A073274.P637952798803380749

namespace A073274

/-- `1-Δ[A133622(Δ[A000040(n+1)])]` -/
def P637952798803380749.Spec : Prop :=
  ∀ n, P637952798803380749.a n = A073274 (n + 1)

end A073274

/-!
# A073276: Irregular primes (A000928) with irregularity index one.

The programs for A073276, there is no canonical definition to state claims against.
-/

/-! ## A073276.P8992855026830287277

`A000928(eq[1, A091887(n+1)]+1)`
-/

namespace A073276.P8992855026830287277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073276.P8992855026830287277

/-! ## A073276.P9552181453144709505

`A000928(record[(n+1)/A091887(n+1)])`
-/

namespace A073276.P9552181453144709505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A091887 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A073276.P9552181453144709505

/-! ## A073276.P2083213256698153921

`record[xor(1-A091887(n+1), A000928(n+1))]`
-/

namespace A073276.P2083213256698153921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - A091887 (n + 1)) (A000928 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073276.P2083213256698153921

/-! ## A073276.P7372831774529478959

`A000928(record[gcd(n+1, A091887(n+1)+n)])`
-/

namespace A073276.P7372831774529478959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A091887 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A073276.P7372831774529478959

/-! ## A073276.P17762570592152945602

`p?[A000928(n+1)*A091887(n+1)]`
-/

namespace A073276.P17762570592152945602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1) * A091887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073276.P17762570592152945602

/-! ## A073276.P13499682128002801490

`A065091(eq[1, A091888(n+2)]+1)`
-/

namespace A073276.P13499682128002801490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073276.P13499682128002801490

/-! ## A073276.P11991283125477450647

`A000040(eq[1, A091888(n+2)]+2)`
-/

namespace A073276.P11991283125477450647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A073276.P11991283125477450647

/-! ## A073276.P9960491360601227451

`p?[A065091(n+1)*A091888(n+2)]`
-/

namespace A073276.P9960491360601227451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A091888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073276.P9960491360601227451

/-! ## A073276.P15320314053550504937

`record[A020639(A000928(n+1)*A091887(n+1))]`
-/

namespace A073276.P15320314053550504937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000928 (n + 1) * A091887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073276.P15320314053550504937

/-! ## A073276.P15494400692443787854

`p?[A000928(n+1)-A090496(n+1)%A091887(n+1)]`
-/

namespace A073276.P15494400692443787854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1) - Int.tmod (A090496 (n + 1)) (A091887 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073276.P15494400692443787854

/-!
# A073277: Irregular primes with irregularity index two.

The programs for A073277, there is no canonical definition to state claims against.
-/

/-! ## A073277.P17802230632764608576

`A000928(eq[2, A091887(n+1)]+1)`
-/

namespace A073277.P17802230632764608576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073277.P17802230632764608576

/-! ## A073277.P11651379306818048718

`p?[(A091887(n+1)-1)*A000928(n+1)]`
-/

namespace A073277.P11651379306818048718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091887 (n + 1) - 1) * A000928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073277.P11651379306818048718

/-! ## A073277.P12228210153755191029

`A065091(eq[2, A091888(n+2)]+1)`
-/

namespace A073277.P12228210153755191029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073277.P12228210153755191029

/-! ## A073277.P7706176380062788731

`p?[(A091888(n+2)-1)*A065091(n+1)]`
-/

namespace A073277.P7706176380062788731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091888 (n + 2) - 1) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073277.P7706176380062788731

/-! ## A073277.P4318931109078130523

`A000040(eq[2, A091888(n+2)]+2)`
-/

namespace A073277.P4318931109078130523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A073277.P4318931109078130523

/-!
# A073278: Triangle read by rows. The triangle is constructed from the coefficients of the n-th derivative of the normal probability distribution function.

The programs for A073278, the canonical program `A073278.P2371061609722676516` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073278 has offset 0).

The definition of A073278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7008 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073278.P8523574406904614659

`(and(2, comp[∑[n]]+n)-1)*A066325(∑[2*n]%comp[∑[n]])`
-/

namespace A073278.P8523574406904614659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A066325 ((∑ j ∈ Finset.range (n + 1), f3 j) % SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A073278.P8523574406904614659

namespace A073278

/-- `(and(2, comp[∑[n]]+n)-1)*A066325(∑[2*n]%comp[∑[n]])` -/
def P8523574406904614659.Spec : Prop :=
  ∀ n, P8523574406904614659.a n = A073278 n

end A073278

/-! ## A073278.P2371061609722676516

`A066325(A061579(n))*A097807(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A073278

/-- `A066325(A061579(n))*A097807(n)` -/
def P2371061609722676516.Spec : Prop :=
  ∀ n, P2371061609722676516.a n = A073278 n

theorem P2371061609722676516.correct : P2371061609722676516.Spec := by
  intro n
  simp only [A073278]

end A073278

/-! ## A073278.P5246123795234738686

`A066325(A112367(n))*A130595(n)`
-/

namespace A073278.P5246123795234738686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (A112367 n).toNat * A130595 n

end

end A073278.P5246123795234738686

namespace A073278

/-- `A066325(A112367(n))*A130595(n)` -/
def P5246123795234738686.Spec : Prop :=
  ∀ n, P5246123795234738686.a n = A073278 n

end A073278

/-! ## A073278.P18082072691741878304

`A033999(A141418(n+1))*A359760(n)`
-/

namespace A073278.P18082072691741878304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A141418 (n + 1)).toNat * A359760 n

end

end A073278.P18082072691741878304

namespace A073278

/-- `A033999(A141418(n+1))*A359760(n)` -/
def P18082072691741878304.Spec : Prop :=
  ∀ n, P18082072691741878304.a n = A073278 n

end A073278

/-! ## A073278.P12168856890560153027

`A066325(A061579(n))/A097807(n)^A229855(n)`
-/

namespace A073278.P12168856890560153027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A229855 n : ℤ)

end

end A073278.P12168856890560153027

namespace A073278

/-- `A066325(A061579(n))/A097807(n)^A229855(n)` -/
def P12168856890560153027.Spec : Prop :=
  ∀ n, P12168856890560153027.a n = (A073278 n : ℚ)

end A073278

/-! ## A073278.P11602540968609902830

`A066325(A061579(n))/A097807(n)^A000040(n+1)`
-/

namespace A073278.P11602540968609902830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A073278.P11602540968609902830

namespace A073278

/-- `A066325(A061579(n))/A097807(n)^A000040(n+1)` -/
def P11602540968609902830.Spec : Prop :=
  ∀ n, P11602540968609902830.a n = (A073278 n : ℚ)

end A073278

/-! ## A073278.P6730113171020012808

`A066325(A061579(n))/A097807(n)^A040085(n+1)`
-/

namespace A073278.P6730113171020012808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A040085 (n + 1) : ℤ)

end

end A073278.P6730113171020012808

namespace A073278

/-- `A066325(A061579(n))/A097807(n)^A040085(n+1)` -/
def P6730113171020012808.Spec : Prop :=
  ∀ n, P6730113171020012808.a n = (A073278 n : ℚ)

end A073278

/-! ## A073278.P16615631653613767328

`A066325(A061579(n))/A097807(n)^A047241(n+1)`
-/

namespace A073278.P16615631653613767328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A047241 (n + 1) : ℤ)

end

end A073278.P16615631653613767328

namespace A073278

/-- `A066325(A061579(n))/A097807(n)^A047241(n+1)` -/
def P16615631653613767328.Spec : Prop :=
  ∀ n, P16615631653613767328.a n = (A073278 n : ℚ)

end A073278

/-! ## A073278.P294832486425077925

`A066325(A061579(n))/A097807(n)^A333901(n)`
-/

namespace A073278.P294832486425077925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A333901 n : ℤ)

end

end A073278.P294832486425077925

namespace A073278

/-- `A066325(A061579(n))/A097807(n)^A333901(n)` -/
def P294832486425077925.Spec : Prop :=
  ∀ n, P294832486425077925.a n = (A073278 n : ℚ)

end A073278

/-! ## A073278.P1507024958756375516

`A066325(A061579(n))/A097807(n)^A321901(n+1)`
-/

namespace A073278.P1507024958756375516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A321901 (n + 1) : ℤ)

end

end A073278.P1507024958756375516

namespace A073278

/-- `A066325(A061579(n))/A097807(n)^A321901(n+1)` -/
def P1507024958756375516.Spec : Prop :=
  ∀ n, P1507024958756375516.a n = (A073278 n : ℚ)

end A073278

/-!
# A073279: Number of digits of n!^n! (ultrafactorial numbers).

The programs for A073279, there is no canonical definition to state claims against.
-/

/-! ## A073279.P16505996645016551506

`A066022(n!)`
-/

namespace A073279.P16505996645016551506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (Nat.factorial n)

end

end A073279.P16505996645016551506

/-! ## A073279.P16240526136068537503

`A066022(∏[round(1/acot(n))])`
-/

namespace A073279.P16240526136068537503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073279.P16240526136068537503

/-! ## A073279.P17629604704337527420

`A066022(∏[ceil(abs(γ-n))])`
-/

namespace A073279.P17629604704337527420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073279.P17629604704337527420

/-! ## A073279.P12602046869995311205

`A066022(A000142(n))+val(n+1, 10)`
-/

namespace A073279.P12602046869995311205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (A000142 n).toNat + (SequenceMachineLib.valuation (n + 1) 10 : ℤ)

end

end A073279.P12602046869995311205

/-!
# A073280: Self-inverse permutation of natural numbers induced by the composition of the Catalan bijections A069770 & A057163.

The programs for A073280, there is no canonical definition to state claims against.
-/

/-! ## A073280.P14719019345470449600

`A069770(A057163(n))`
-/

namespace A073280.P14719019345470449600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057163 n).toNat

end

end A073280.P14719019345470449600

/-! ## A073280.P15831328117164521038

`A073283(A073270(n))`
-/

namespace A073280.P15831328117164521038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073283 (A073270 n).toNat

end

end A073280.P15831328117164521038

/-! ## A073280.P2299528732117750720

`A073269(A073282(n))`
-/

namespace A073280.P2299528732117750720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A073282 n).toNat

end

end A073280.P2299528732117750720

/-! ## A073280.P7857530508519154187

`A057163(A069776(A069773(n)))`
-/

namespace A073280.P7857530508519154187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069776 (A069773 n).toNat).toNat

end

end A073280.P7857530508519154187

/-! ## A073280.P8615677688651619896

`A057163(A069774(A069775(n)))`
-/

namespace A073280.P8615677688651619896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069774 (A069775 n).toNat).toNat

end

end A073280.P8615677688651619896

/-! ## A073280.P11062762152848151582

`A057163(A073269(A072796(n)))`
-/

namespace A073280.P11062762152848151582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073269 (A072796 n).toNat).toNat

end

end A073280.P11062762152848151582

/-! ## A073280.P4037703127255394540

`A072796(A073282(A069770(n)))`
-/

namespace A073280.P4037703127255394540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A073282 (A069770 n).toNat).toNat

end

end A073280.P4037703127255394540

/-! ## A073280.P5938101597896949394

`A072796(A074680(A073283(n)))`
-/

namespace A073280.P5938101597896949394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A074680 (A073283 n).toNat).toNat

end

end A073280.P5938101597896949394

/-! ## A073280.P6580468017674764894

`A130981(A073287(n))`
-/

namespace A073280.P6580468017674764894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A073287 n).toNat

end

end A073280.P6580468017674764894

/-! ## A073280.P3831835493415828473

`A073286(A130981(n))`
-/

namespace A073280.P3831835493415828473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073286 (A130981 n).toNat

end

end A073280.P3831835493415828473

/-! ## A073280.P6701530267884633605

`A130397(A130397(n))`
-/

namespace A073280.P6701530267884633605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130397 (A130397 n).toNat

end

end A073280.P6701530267884633605

/-! ## A073280.P8411199867327129386

`A130398(A130398(n))`
-/

namespace A073280.P8411199867327129386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130398 (A130398 n).toNat

end

end A073280.P8411199867327129386

/-! ## A073280.P7509307950990933790

`A069767(A130341(A130981(A069767(n))))`
-/

namespace A073280.P7509307950990933790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A130341 (A130981 (A069767 n).toNat).toNat).toNat

end

end A073280.P7509307950990933790

/-!
# A073281: Self-inverse permutation of natural numbers induced by the composition of the Catalan bijections A072796 and A073269.

The programs for A073281, there is no canonical definition to state claims against.
-/

/-! ## A073281.P3170364834461364583

`A072796(A073269(n))`
-/

namespace A073281.P3170364834461364583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A073269 n).toNat

end

end A073281.P3170364834461364583

/-! ## A073281.P4758287000081594718

`A072796(A069770(A072796(n)))`
-/

namespace A073281.P4758287000081594718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A069770 (A072796 n).toNat).toNat

end

end A073281.P4758287000081594718

/-! ## A073281.P2769187207353328589

`A073270(A072796(n))`
-/

namespace A073281.P2769187207353328589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A072796 n).toNat

end

end A073281.P2769187207353328589

/-! ## A073281.P18044528029647247439

`A074680(A072797(A072796(A072797(A072797(n)))))`
-/

namespace A073281.P18044528029647247439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A072797 (A072796 (A072797 (A072797 n).toNat).toNat).toNat).toNat

end

end A073281.P18044528029647247439

/-! ## A073281.P18127877146445934103

`A073270(A073270(A069770(n)))`
-/

namespace A073281.P18127877146445934103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A073270 (A069770 n).toNat).toNat

end

end A073281.P18127877146445934103

/-! ## A073281.P3020918292847608136

`A072796(A072797(A074679(n)))`
-/

namespace A073281.P3020918292847608136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A072797 (A074679 n).toNat).toNat

end

end A073281.P3020918292847608136

/-! ## A073281.P1139025277495876944

`A074680(A073283(A073283(n)))`
-/

namespace A073281.P1139025277495876944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A073283 (A073283 n).toNat).toNat

end

end A073281.P1139025277495876944

/-! ## A073281.P11085385863538427686

`A073282(A072796(A074680(A057163(n))))`
-/

namespace A073281.P11085385863538427686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A072796 (A074680 (A057163 n).toNat).toNat).toNat

end

end A073281.P11085385863538427686

/-! ## A073281.P4038220910235650238

`A073282(A072796(A074680(A072796(A073282(n)))))`
-/

namespace A073281.P4038220910235650238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A072796 (A074680 (A072796 (A073282 n).toNat).toNat).toNat).toNat

end

end A073281.P4038220910235650238

/-! ## A073281.P16697995411942501070

`A073270(A073270(A073270(A089856(n))))`
-/

namespace A073281.P16697995411942501070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A073270 (A073270 (A089856 n).toNat).toNat).toNat

end

end A073281.P16697995411942501070

/-!
# A073282: Permutation of natural numbers induced by the composition of the Catalan bijections A072796 & A057163.

The programs for A073282, there is no canonical definition to state claims against.
-/

/-! ## A073282.P3202960071003461073

`A072796(A057163(n))`
-/

namespace A073282.P3202960071003461073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A057163 n).toNat

end

end A073282.P3202960071003461073

/-! ## A073282.P11067114417667706144

`A057163(A072797(n))`
-/

namespace A073282.P11067114417667706144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072797 n).toNat

end

end A073282.P11067114417667706144

/-! ## A073282.P6413593161118163461

`A073270(A073280(n))`
-/

namespace A073282.P6413593161118163461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A073280 n).toNat

end

end A073282.P6413593161118163461

/-! ## A073282.P9716984533157021099

`A072796(A057506(A057164(n)))`
-/

namespace A073282.P9716984533157021099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A057506 (A057164 n).toNat).toNat

end

end A073282.P9716984533157021099

/-! ## A073282.P2352543509425396518

`A072796(A057164(A057505(n)))`
-/

namespace A073282.P2352543509425396518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A057164 (A057505 n).toNat).toNat

end

end A073282.P2352543509425396518

/-! ## A073282.P16482977918555501633

`A057163(A074679(A073270(n)))`
-/

namespace A073282.P16482977918555501633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074679 (A073270 n).toNat).toNat

end

end A073282.P16482977918555501633

/-! ## A073282.P4934480921737116311

`A072796(A073283(A072796(n)))`
-/

namespace A073282.P4934480921737116311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A073283 (A072796 n).toNat).toNat

end

end A073282.P4934480921737116311

/-! ## A073282.P9215924634715337679

`A057163(A073283(A069768(A057163(A069768(n)))))`
-/

namespace A073282.P9215924634715337679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073283 (A069768 (A057163 (A069768 n).toNat).toNat).toNat).toNat

end

end A073282.P9215924634715337679

/-! ## A073282.P9600717202884839395

`A057163(A073283(A073283(A057163(A073283(n)))))`
-/

namespace A073282.P9600717202884839395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073283 (A073283 (A057163 (A073283 n).toNat).toNat).toNat).toNat

end

end A073282.P9600717202884839395

/-! ## A073282.P16777958781108623293

`A073283(A074680(A073283(A073283(A074680(n)))))`
-/

namespace A073282.P16777958781108623293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073283 (A074680 (A073283 (A073283 (A074680 n).toNat).toNat).toNat).toNat

end

end A073282.P16777958781108623293

/-! ## A073282.P17851658834015987216

`A057161(A057163(A129608(A057161(n))))`
-/

namespace A073282.P17851658834015987216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A057163 (A129608 (A057161 n).toNat).toNat).toNat

end

end A073282.P17851658834015987216

/-! ## A073282.P13596942825674451661

`A057508(A129608(A057163(A069769(n))))`
-/

namespace A073282.P13596942825674451661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A129608 (A057163 (A069769 n).toNat).toNat).toNat

end

end A073282.P13596942825674451661

/-! ## A073282.P11763562676886931307

`A072796(A130398(A130398(A069770(n))))`
-/

namespace A073282.P11763562676886931307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A130398 (A130398 (A069770 n).toNat).toNat).toNat

end

end A073282.P11763562676886931307

/-!
# A073283: Permutation of natural numbers induced by the composition of the Catalan bijections A057163 & A072796.

The programs for A073283, there is no canonical definition to state claims against.
-/

/-! ## A073283.P14132945440396376756

`A057163(A072796(n))`
-/

namespace A073283.P14132945440396376756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072796 n).toNat

end

end A073283.P14132945440396376756

/-! ## A073283.P11560571644546916474

`A072797(A057163(n))`
-/

namespace A073283.P11560571644546916474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A057163 n).toNat

end

end A073283.P11560571644546916474

/-! ## A073283.P1919179434999027993

`A073280(A073269(n))`
-/

namespace A073283.P1919179434999027993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A073269 n).toNat

end

end A073283.P1919179434999027993

/-! ## A073283.P13162143990528420258

`A057163(A073270(A069770(n)))`
-/

namespace A073283.P13162143990528420258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073270 (A069770 n).toNat).toNat

end

end A073283.P13162143990528420258

/-! ## A073283.P5019641125423085454

`A057163(A073269(A073281(n)))`
-/

namespace A073283.P5019641125423085454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073269 (A073281 n).toNat).toNat

end

end A073283.P5019641125423085454

/-! ## A073283.P775229614851488000

`A069768(A073282(A069768(n)))`
-/

namespace A073283.P775229614851488000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073282 (A069768 n).toNat).toNat

end

end A073283.P775229614851488000

/-! ## A073283.P15251924237937758711

`A057163(A073282(A073282(A057163(A073282(n)))))`
-/

namespace A073283.P15251924237937758711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073282 (A073282 (A057163 (A073282 n).toNat).toNat).toNat).toNat

end

end A073283.P15251924237937758711

/-! ## A073283.P10760018545029553009

`A073282(A074679(A073282(A073282(A074679(n)))))`
-/

namespace A073283.P10760018545029553009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A074679 (A073282 (A073282 (A074679 n).toNat).toNat).toNat).toNat

end

end A073283.P10760018545029553009

/-! ## A073283.P3791106442915116685

`A057163(A057164(A129608(A057164(n))))`
-/

namespace A073283.P3791106442915116685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057164 (A129608 (A057164 n).toNat).toNat).toNat

end

end A073283.P3791106442915116685

/-! ## A073283.P11553641694985420244

`A057163(A057508(A129608(A057508(n))))`
-/

namespace A073283.P11553641694985420244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057508 (A129608 (A057508 n).toNat).toNat).toNat

end

end A073283.P11553641694985420244

/-!
# A073284: Permutation of natural numbers induced by the Catalan bijection gma073284! acting on the parenthesizations encoded by A014486.

The programs for A073284, there is no canonical definition to state claims against.
-/

/-! ## A073284.P16131795674880369193

`A057163(A082342(A057163(n)))`
-/

namespace A073284.P16131795674880369193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082342 (A057163 n).toNat).toNat

end

end A073284.P16131795674880369193

/-! ## A073284.P7391638113828446322

`A073280(A069770(A082342(A073280(A069770(n)))))`
-/

namespace A073284.P7391638113828446322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A069770 (A082342 (A073280 (A069770 n).toNat).toNat).toNat).toNat

end

end A073284.P7391638113828446322

/-! ## A073284.P1580727694784659770

`A131163(A082347(n)%A118142(n+2))`
-/

namespace A073284.P1580727694784659770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131163 (Int.tmod (A082347 n) (A118142 (n + 2))).toNat

end

end A073284.P1580727694784659770

/-! ## A073284.P6443071284929964160

`lcm(A123271(n+3), A130946(n))`
-/

namespace A073284.P6443071284929964160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 3)) (A130946 n)

end

end A073284.P6443071284929964160

/-! ## A073284.P8413427505658419855

`and(A130946(n), A387410(n+1))`
-/

namespace A073284.P8413427505658419855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130946 n) (A387410 (n + 1))

end

end A073284.P8413427505658419855

/-!
# A073285: Permutation of natural numbers induced by the Catalan bijection gma073285! acting on the parenthesizations encoded by A014486.

The programs for A073285, there is no canonical definition to state claims against.
-/

/-! ## A073285.P7572172529346400928

`A057164(A073284(A057164(n)))`
-/

namespace A073285.P7572172529346400928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A073284 (A057164 n).toNat).toNat

end

end A073285.P7572172529346400928

/-! ## A073285.P14907211245592859690

`A057163(A082341(A057163(n)))`
-/

namespace A073285.P14907211245592859690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082341 (A057163 n).toNat).toNat

end

end A073285.P14907211245592859690

/-! ## A073285.P9405375985433154538

`A073280(A069770(A082341(A073280(A069770(n)))))`
-/

namespace A073285.P9405375985433154538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A069770 (A082341 (A073280 (A069770 n).toNat).toNat).toNat).toNat

end

end A073285.P9405375985433154538

/-! ## A073285.P3399211496057451225

`A130945(n)%∑[A362560(n+2)]`
-/

namespace A073285.P3399211496057451225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362560 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130945 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073285.P3399211496057451225

/-! ## A073285.P6843763707809349589

`A130945(n)%A130945(A114963(n))`
-/

namespace A073285.P6843763707809349589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130945 n) (A130945 (A114963 n).toNat)

end

end A073285.P6843763707809349589

/-!
# A073286: Permutation of natural numbers induced by the composition of the Catalan bijections A069770 & A069767.

The programs for A073286, there is no canonical definition to state claims against.
-/

/-! ## A073286.P12666536607627398782

`A069770(A069767(n))`
-/

namespace A073286.P12666536607627398782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A069767 n).toNat

end

end A073286.P12666536607627398782

/-! ## A073286.P2295761663974350696

`A069770(A057508(A057161(n)))`
-/

namespace A073286.P2295761663974350696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057508 (A057161 n).toNat).toNat

end

end A073286.P2295761663974350696

/-! ## A073286.P17338479199921125756

`A069770(A057161(A069769(n)))`
-/

namespace A073286.P17338479199921125756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057161 (A069769 n).toNat).toNat

end

end A073286.P17338479199921125756

/-! ## A073286.P10350365350786031001

`A069770(A057163(A069768(A057163(n))))`
-/

namespace A073286.P10350365350786031001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057163 (A069768 (A057163 n).toNat).toNat).toNat

end

end A073286.P10350365350786031001

/-! ## A073286.P6679538368232140768

`A073283(A074680(A069768(A073282(n))))`
-/

namespace A073286.P6679538368232140768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073283 (A074680 (A069768 (A073282 n).toNat).toNat).toNat

end

end A073286.P6679538368232140768

/-! ## A073286.P18112465019474377003

`A057502(A130363(n))`
-/

namespace A073286.P18112465019474377003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A130363 n).toNat

end

end A073286.P18112465019474377003

/-! ## A073286.P11253265730615959618

`A130342(A073290(n))`
-/

namespace A073286.P11253265730615959618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (A073290 n).toNat

end

end A073286.P11253265730615959618

/-! ## A073286.P10374428101090167586

`A073280(A130981(n))`
-/

namespace A073286.P10374428101090167586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A130981 n).toNat

end

end A073286.P10374428101090167586

/-! ## A073286.P15240981810170166074

`A057163(A130342(A057163(n)))`
-/

namespace A073286.P15240981810170166074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130342 (A057163 n).toNat).toNat

end

end A073286.P15240981810170166074

/-! ## A073286.P17831873992341386610

`A069767(A069767(A130342(n)))`
-/

namespace A073286.P17831873992341386610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A069767 (A130342 n).toNat).toNat

end

end A073286.P17831873992341386610

/-! ## A073286.P15850046164229803133

`A130341(A069768(A130341(A130341(A069768(n)))))`
-/

namespace A073286.P15850046164229803133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A069768 (A130341 (A130341 (A069768 n).toNat).toNat).toNat).toNat

end

end A073286.P15850046164229803133

/-!
# A073287: Permutation of natural numbers induced by the composition of the Catalan bijections A069768 & A069770.

The programs for A073287, there is no canonical definition to state claims against.
-/

/-! ## A073287.P5663101705183684617

`A069768(A069770(n))`
-/

namespace A073287.P5663101705183684617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A069770 n).toNat

end

end A073287.P5663101705183684617

/-! ## A073287.P16265096829334920250

`A069768(A073286(A069768(n)))`
-/

namespace A073287.P16265096829334920250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073286 (A069768 n).toNat).toNat

end

end A073287.P16265096829334920250

/-! ## A073287.P14275052904363781643

`A057163(A069767(A069770(A057163(n))))`
-/

namespace A073287.P14275052904363781643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069767 (A069770 (A057163 n).toNat).toNat).toNat

end

end A073287.P14275052904363781643

/-! ## A073287.P14674965324675880226

`A069768(A073282(A074679(A073282(n))))`
-/

namespace A073287.P14674965324675880226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073282 (A074679 (A073282 n).toNat).toNat).toNat

end

end A073287.P14674965324675880226

/-! ## A073287.P17274949215442563225

`A069768(A073283(A074680(A073283(n))))`
-/

namespace A073287.P17274949215442563225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073283 (A074680 (A073283 n).toNat).toNat).toNat

end

end A073287.P17274949215442563225

/-! ## A073287.P5244307741110638596

`A057162(A057508(A069770(A057508(A057508(n)))))`
-/

namespace A073287.P5244307741110638596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A057508 (A069770 (A057508 (A057508 n).toNat).toNat).toNat).toNat

end

end A073287.P5244307741110638596

/-! ## A073287.P7038161467798874737

`A069768(A073283(A057163(A074679(A072796(n)))))`
-/

namespace A073287.P7038161467798874737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073283 (A057163 (A074679 (A072796 n).toNat).toNat).toNat).toNat

end

end A073287.P7038161467798874737

/-! ## A073287.P5860425158067761323

`A130364(A057501(n))`
-/

namespace A073287.P5860425158067761323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130364 (A057501 n).toNat

end

end A073287.P5860425158067761323

/-! ## A073287.P6367155677103814468

`A130341(A073291(n))`
-/

namespace A073287.P6367155677103814468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A073291 n).toNat

end

end A073287.P6367155677103814468

/-! ## A073287.P6076838346715766506

`A130981(A073280(n))`
-/

namespace A073287.P6076838346715766506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A073280 n).toNat

end

end A073287.P6076838346715766506

/-! ## A073287.P2387707824342816818

`A057163(A130341(A057163(n)))`
-/

namespace A073287.P2387707824342816818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130341 (A057163 n).toNat).toNat

end

end A073287.P2387707824342816818

/-! ## A073287.P13924994276575795534

`A069768(A130342(A069767(n)))`
-/

namespace A073287.P13924994276575795534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A130342 (A069767 n).toNat).toNat

end

end A073287.P13924994276575795534

/-! ## A073287.P12824636719010905520

`A069768(A069768(A130341(n)))`
-/

namespace A073287.P12824636719010905520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A069768 (A130341 n).toNat).toNat

end

end A073287.P12824636719010905520

/-! ## A073287.P9005791956071686968

`A130981(A073286(A130981(n)))`
-/

namespace A073287.P9005791956071686968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A073286 (A130981 n).toNat).toNat

end

end A073287.P9005791956071686968

/-! ## A073287.P13479880209001762576

`A069770(A130342(A073286(A069770(A130342(n)))))`
-/

namespace A073287.P13479880209001762576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130342 (A073286 (A069770 (A130342 n).toNat).toNat).toNat).toNat

end

end A073287.P13479880209001762576

/-!
# A073288: Permutation of natural numbers induced by the Catalan bijection gma073288! acting on the parenthesizations encoded by A014486.

The programs for A073288, there is no canonical definition to state claims against.
-/

/-! ## A073288.P6329559141169974224

`A082345(A069767(n))`
-/

namespace A073288.P6329559141169974224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082345 (A069767 n).toNat

end

end A073288.P6329559141169974224

/-! ## A073288.P11460719065038280678

`A069767(A082348(n))`
-/

namespace A073288.P11460719065038280678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A082348 n).toNat

end

end A073288.P11460719065038280678

/-! ## A073288.P15942373582296678414

`A057504(A131163(n))`
-/

namespace A073288.P15942373582296678414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057504 (A131163 n).toNat

end

end A073288.P15942373582296678414

/-! ## A073288.P8909826042492686978

`A073290(A131141(n))`
-/

namespace A073288.P8909826042492686978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (A131141 n).toNat

end

end A073288.P8909826042492686978

/-! ## A073288.P9146345302402809117

`A130942(A130935(n))`
-/

namespace A073288.P9146345302402809117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130942 (A130935 n).toNat

end

end A073288.P9146345302402809117

/-! ## A073288.P10411482356963708801

`A130341(A131141(A073286(n)))`
-/

namespace A073288.P10411482356963708801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A131141 (A073286 n).toNat).toNat

end

end A073288.P10411482356963708801

/-! ## A073288.P540165513993137895

`A122350(A073289(A122350(n)))`
-/

namespace A073288.P540165513993137895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (A073289 (A122350 n).toNat).toNat

end

end A073288.P540165513993137895

/-! ## A073288.P7967021962178243263

`A127380(A073289(A127380(n)))`
-/

namespace A073288.P7967021962178243263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127380 (A073289 (A127380 n).toNat).toNat

end

end A073288.P7967021962178243263

/-! ## A073288.P11159415784573412756

`A122282(A089854(A122312(n)))`
-/

namespace A073288.P11159415784573412756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A089854 (A122312 n).toNat).toNat

end

end A073288.P11159415784573412756

/-! ## A073288.P8514021101215429596

`A131173(A122282(A130985(n)))`
-/

namespace A073288.P8514021101215429596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131173 (A122282 (A130985 n).toNat).toNat

end

end A073288.P8514021101215429596

/-!
# A073289: Permutation of natural numbers induced by the Catalan bijection gma073289! acting on the parenthesizations encoded by A014486.

The programs for A073289, there is no canonical definition to state claims against.
-/

/-! ## A073289.P11759724542786251254

`A082347(A069768(n))`
-/

namespace A073289.P11759724542786251254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082347 (A069768 n).toNat

end

end A073289.P11759724542786251254

/-! ## A073289.P9610896784812851863

`A069768(A082346(n))`
-/

namespace A073289.P9610896784812851863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A082346 n).toNat

end

end A073289.P9610896784812851863

/-! ## A073289.P2622453062630126414

`A131164(A057503(n))`
-/

namespace A073289.P2622453062630126414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131164 (A057503 n).toNat

end

end A073289.P2622453062630126414

/-! ## A073289.P3610071348568701289

`A131142(A073291(n))`
-/

namespace A073289.P3610071348568701289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131142 (A073291 n).toNat

end

end A073289.P3610071348568701289

/-! ## A073289.P14062398327751447368

`A130936(A130941(n))`
-/

namespace A073289.P14062398327751447368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 (A130941 n).toNat

end

end A073289.P14062398327751447368

/-! ## A073289.P2545416837094499139

`A131142(A130342(A073287(n)))`
-/

namespace A073289.P2545416837094499139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131142 (A130342 (A073287 n).toNat).toNat

end

end A073289.P2545416837094499139

/-! ## A073289.P16717174066958530418

`A122349(A073288(A122349(n)))`
-/

namespace A073289.P16717174066958530418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A073288 (A122349 n).toNat).toNat

end

end A073289.P16717174066958530418

/-! ## A073289.P4363836146271130097

`A122311(A122282(A089854(n)))`
-/

namespace A073289.P4363836146271130097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122311 (A122282 (A089854 n).toNat).toNat

end

end A073289.P4363836146271130097

/-! ## A073289.P6121752136003724411

`A130986(A131173(A122282(n)))`
-/

namespace A073289.P6121752136003724411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130986 (A131173 (A122282 n).toNat).toNat

end

end A073289.P6121752136003724411

/-!
# A073290: Permutation A069767 applied twice ("squared").

The programs for A073290, there is no canonical definition to state claims against.
-/

/-! ## A073290.P15336208829246274581

`A069767(A069767(n))`
-/

namespace A073290.P15336208829246274581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A069767 n).toNat

end

end A073290.P15336208829246274581

/-! ## A073290.P17689071350996546810

`A073291(A073294(n))`
-/

namespace A073290.P17689071350996546810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A073294 n).toNat

end

end A073290.P17689071350996546810

/-! ## A073290.P6635593258769050367

`A073298(A073295(n))`
-/

namespace A073290.P6635593258769050367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073298 (A073295 n).toNat

end

end A073290.P6635593258769050367

/-! ## A073290.P15803718653340923704

`A073292(A069768(n))`
-/

namespace A073290.P15803718653340923704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A069768 n).toNat

end

end A073290.P15803718653340923704

/-! ## A073290.P7603438849140227819

`A073296(A073293(n))`
-/

namespace A073290.P7603438849140227819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073296 (A073293 n).toNat

end

end A073290.P7603438849140227819

/-! ## A073290.P2425605364341436201

`A073291(A069768(A073296(n)))`
-/

namespace A073290.P2425605364341436201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A069768 (A073296 n).toNat).toNat

end

end A073290.P2425605364341436201

/-! ## A073290.P7576116567790332560

`A073293(A069768(A073298(n)))`
-/

namespace A073290.P7576116567790332560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073293 (A069768 (A073298 n).toNat).toNat

end

end A073290.P7576116567790332560

/-! ## A073290.P16012971979948901414

`A073295(A073292(A073292(n)))`
-/

namespace A073290.P16012971979948901414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073295 (A073292 (A073292 n).toNat).toNat

end

end A073290.P16012971979948901414

/-! ## A073290.P5443094097728026301

`A073294(A073292(A073297(n)))`
-/

namespace A073290.P5443094097728026301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073294 (A073292 (A073297 n).toNat).toNat

end

end A073290.P5443094097728026301

/-! ## A073290.P15290560361317066191

`A057508(A057161(A057508(A057161(n))))`
-/

namespace A073290.P15290560361317066191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A057161 (A057508 (A057161 n).toNat).toNat).toNat

end

end A073290.P15290560361317066191

/-! ## A073290.P4838459690106752440

`A057163(A069768(A069768(A057163(n))))`
-/

namespace A073290.P4838459690106752440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069768 (A069768 (A057163 n).toNat).toNat).toNat

end

end A073290.P4838459690106752440

/-! ## A073290.P10726542381206827918

`A057161(A069769(A057161(A069769(n))))`
-/

namespace A073290.P10726542381206827918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A069769 (A057161 (A069769 n).toNat).toNat).toNat

end

end A073290.P10726542381206827918

/-! ## A073290.P18075274245135498018

`A073286(A069770(A073286(A069770(n))))`
-/

namespace A073290.P18075274245135498018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073286 (A069770 (A073286 (A069770 n).toNat).toNat).toNat

end

end A073290.P18075274245135498018

/-! ## A073290.P13083953057084899507

`A082346(A073286(A082345(A073286(n))))`
-/

namespace A073290.P13083953057084899507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082346 (A073286 (A082345 (A073286 n).toNat).toNat).toNat

end

end A073290.P13083953057084899507

/-! ## A073290.P7419652576288922422

`A082346(A073288(A082346(A073288(n))))`
-/

namespace A073290.P7419652576288922422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082346 (A073288 (A082346 (A073288 n).toNat).toNat).toNat

end

end A073290.P7419652576288922422

/-! ## A073290.P1959091704483412102

`A073286(A082348(A073286(A082347(n))))`
-/

namespace A073290.P1959091704483412102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073286 (A082348 (A073286 (A082347 n).toNat).toNat).toNat

end

end A073290.P1959091704483412102

/-! ## A073290.P15063668511773422331

`A130341(A073286(n))`
-/

namespace A073290.P15063668511773422331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A073286 n).toNat

end

end A073290.P15063668511773422331

/-! ## A073290.P10861010082703196200

`A073288(A131142(n))`
-/

namespace A073290.P10861010082703196200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A131142 n).toNat

end

end A073290.P10861010082703196200

/-! ## A073290.P14752573034195434360

`A057163(A069768(A130981(n)))`
-/

namespace A073290.P14752573034195434360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069768 (A130981 n).toNat).toNat

end

end A073290.P14752573034195434360

/-! ## A073290.P8350884409743323318

`A154452(A154453(A154452(A154453(n))))`
-/

namespace A073290.P8350884409743323318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154452 (A154453 (A154452 (A154453 n).toNat).toNat).toNat

end

end A073290.P8350884409743323318

/-!
# A073291: Permutation A069768 applied twice ("squared").

The programs for A073291, there is no canonical definition to state claims against.
-/

/-! ## A073291.P12264632568320755058

`A069768(A069768(n))`
-/

namespace A073291.P12264632568320755058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A069768 n).toNat

end

end A073291.P12264632568320755058

/-! ## A073291.P8668897244247321257

`A073290(A073295(n))`
-/

namespace A073291.P8668897244247321257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (A073295 n).toNat

end

end A073291.P8668897244247321257

/-! ## A073291.P712978190104101405

`A073299(A073294(n))`
-/

namespace A073291.P712978190104101405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073299 (A073294 n).toNat

end

end A073291.P712978190104101405

/-! ## A073291.P31453161201136796

`A073293(A069767(n))`
-/

namespace A073291.P31453161201136796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073293 (A069767 n).toNat

end

end A073291.P31453161201136796

/-! ## A073291.P1271664611917011627

`A073297(A073292(n))`
-/

namespace A073291.P1271664611917011627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073297 (A073292 n).toNat

end

end A073291.P1271664611917011627

/-! ## A073291.P18273738642193748614

`A073290(A069767(A073297(n)))`
-/

namespace A073291.P18273738642193748614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (A069767 (A073297 n).toNat).toNat

end

end A073291.P18273738642193748614

/-! ## A073291.P8531545122074371208

`A073292(A069767(A073299(n)))`
-/

namespace A073291.P8531545122074371208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A069767 (A073299 n).toNat).toNat

end

end A073291.P8531545122074371208

/-! ## A073291.P2676907624315951230

`A073294(A073293(A073293(n)))`
-/

namespace A073291.P2676907624315951230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073294 (A073293 (A073293 n).toNat).toNat

end

end A073291.P2676907624315951230

/-! ## A073291.P8014379560372719290

`A057162(A057508(A057162(A057508(n))))`
-/

namespace A073291.P8014379560372719290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A057508 (A057162 (A057508 n).toNat).toNat).toNat

end

end A073291.P8014379560372719290

/-! ## A073291.P12973192083600229037

`A069769(A057162(A069769(A057162(n))))`
-/

namespace A073291.P12973192083600229037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069769 (A057162 (A069769 (A057162 n).toNat).toNat).toNat

end

end A073291.P12973192083600229037

/-! ## A073291.P11946391257040023039

`A057163(A069767(A069767(A057163(n))))`
-/

namespace A073291.P11946391257040023039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069767 (A069767 (A057163 n).toNat).toNat).toNat

end

end A073291.P11946391257040023039

/-! ## A073291.P11439688730491800536

`A073287(A069770(A073287(A069770(n))))`
-/

namespace A073291.P11439688730491800536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A069770 (A073287 (A069770 n).toNat).toNat).toNat

end

end A073291.P11439688730491800536

/-! ## A073291.P5022553088726762366

`A082348(A073289(A082348(A073289(n))))`
-/

namespace A073291.P5022553088726762366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082348 (A073289 (A082348 (A073289 n).toNat).toNat).toNat

end

end A073291.P5022553088726762366

/-! ## A073291.P889516538314999163

`A073289(A082345(A073289(A082345(n))))`
-/

namespace A073291.P889516538314999163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A082345 (A073289 (A082345 n).toNat).toNat).toNat

end

end A073291.P889516538314999163

/-! ## A073291.P7396499378146354599

`A130342(A073287(n))`
-/

namespace A073291.P7396499378146354599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (A073287 n).toNat

end

end A073291.P7396499378146354599

/-! ## A073291.P4462674956319144945

`A131141(A073289(n))`
-/

namespace A073291.P4462674956319144945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131141 (A073289 n).toNat

end

end A073291.P4462674956319144945

/-!
# A073292: Permutation A069767 applied three times ("cubed").

The programs for A073292, there is no canonical definition to state claims against.
-/

/-! ## A073292.P15610569793735745425

`A069767(A069767(A069767(n)))`
-/

namespace A073292.P15610569793735745425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A069767 (A069767 n).toNat).toNat

end

end A073292.P15610569793735745425

/-! ## A073292.P13749868773488225028

`A069768(A073294(n))`
-/

namespace A073292.P13749868773488225028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073294 n).toNat

end

end A073292.P13749868773488225028

/-! ## A073292.P15715536550427138558

`A069767(A073290(n))`
-/

namespace A073292.P15715536550427138558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A073290 n).toNat

end

end A073292.P15715536550427138558

/-! ## A073292.P210319977602474409

`A073296(A073291(n))`
-/

namespace A073292.P210319977602474409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073296 (A073291 n).toNat

end

end A073292.P210319977602474409

/-! ## A073292.P1893230552340050978

`A073298(A073293(n))`
-/

namespace A073292.P1893230552340050978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073298 (A073293 n).toNat

end

end A073292.P1893230552340050978

/-! ## A073292.P9484690138249433733

`A073296(A069768(A069768(n)))`
-/

namespace A073292.P9484690138249433733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073296 (A069768 (A069768 n).toNat).toNat

end

end A073292.P9484690138249433733

/-! ## A073292.P11521274027897365988

`A073291(A069768(A073298(n)))`
-/

namespace A073292.P11521274027897365988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A069768 (A073298 n).toNat).toNat

end

end A073292.P11521274027897365988

/-! ## A073292.P13408258895706042642

`A073298(A073290(A073297(n)))`
-/

namespace A073292.P13408258895706042642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073298 (A073290 (A073297 n).toNat).toNat

end

end A073292.P13408258895706042642

/-! ## A073292.P4982705518189656635

`A057163(A069768(A069768(A069768(A057163(n)))))`
-/

namespace A073292.P4982705518189656635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069768 (A069768 (A069768 (A057163 n).toNat).toNat).toNat).toNat

end

end A073292.P4982705518189656635

/-! ## A073292.P11225076094029538817

`A057163(A069768(A069768(A130981(n))))`
-/

namespace A073292.P11225076094029538817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069768 (A069768 (A130981 n).toNat).toNat).toNat

end

end A073292.P11225076094029538817

/-! ## A073292.P17364638003242746552

`A130341(A057163(A130981(A130341(n))))`
-/

namespace A073292.P17364638003242746552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A057163 (A130981 (A130341 n).toNat).toNat).toNat

end

end A073292.P17364638003242746552

/-!
# A073293: Permutation A069768 applied three times ("cubed").

The programs for A073293, there is no canonical definition to state claims against.
-/

/-! ## A073293.P6480842508520476850

`A069768(A069768(A069768(n)))`
-/

namespace A073293.P6480842508520476850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A069768 (A069768 n).toNat).toNat

end

end A073293.P6480842508520476850

/-! ## A073293.P1952664439411915309

`A069767(A073295(n))`
-/

namespace A073293.P1952664439411915309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A073295 n).toNat

end

end A073293.P1952664439411915309

/-! ## A073293.P18198794014738746351

`A073297(A073290(n))`
-/

namespace A073293.P18198794014738746351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073297 (A073290 n).toNat

end

end A073293.P18198794014738746351

/-! ## A073293.P12541742704074062053

`A073292(A073299(n))`
-/

namespace A073293.P12541742704074062053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A073299 n).toNat

end

end A073293.P12541742704074062053

/-! ## A073293.P7702067425789018136

`A073291(A069768(n))`
-/

namespace A073293.P7702067425789018136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A069768 n).toNat

end

end A073293.P7702067425789018136

/-! ## A073293.P12446195186163957920

`A073297(A069767(A069767(n)))`
-/

namespace A073293.P12446195186163957920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073297 (A069767 (A069767 n).toNat).toNat

end

end A073293.P12446195186163957920

/-! ## A073293.P5795226105749758329

`A073291(A069767(A073291(n)))`
-/

namespace A073293.P5795226105749758329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A069767 (A073291 n).toNat).toNat

end

end A073293.P5795226105749758329

/-! ## A073293.P4931306661718569413

`A073287(A073287(A069770(A073287(n))))`
-/

namespace A073293.P4931306661718569413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A073287 (A069770 (A073287 n).toNat).toNat).toNat

end

end A073293.P4931306661718569413

/-! ## A073293.P9388481155359919527

`A057163(A069767(A069767(A069767(A057163(n)))))`
-/

namespace A073293.P9388481155359919527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069767 (A069767 (A069767 (A057163 n).toNat).toNat).toNat).toNat

end

end A073293.P9388481155359919527

/-! ## A073293.P16487740580760600002

`A130981(A069767(A069767(A057506(A057164(n)))))`
-/

namespace A073293.P16487740580760600002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A069767 (A069767 (A057506 (A057164 n).toNat).toNat).toNat).toNat

end

end A073293.P16487740580760600002

/-! ## A073293.P12853491299648236218

`A130981(A069767(A069767(A069767(A130981(n)))))`
-/

namespace A073293.P12853491299648236218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A069767 (A069767 (A069767 (A130981 n).toNat).toNat).toNat).toNat

end

end A073293.P12853491299648236218

/-!
# A073294: Permutation A069767 applied four times or permutation A073290 applied twice.

The programs for A073294, there is no canonical definition to state claims against.
-/

/-! ## A073294.P601444137709552537

`A073290(A073290(n))`
-/

namespace A073294.P601444137709552537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (A073290 n).toNat

end

end A073294.P601444137709552537

/-! ## A073294.P10729963647603280061

`A069767(A069767(A069767(A069767(n))))`
-/

namespace A073294.P10729963647603280061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A069767 (A069767 (A069767 n).toNat).toNat).toNat

end

end A073294.P10729963647603280061

/-! ## A073294.P11238947085169986818

`A073292(A069767(n))`
-/

namespace A073294.P11238947085169986818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A069767 n).toNat

end

end A073294.P11238947085169986818

/-! ## A073294.P3286547739079505473

`A073296(A069768(n))`
-/

namespace A073294.P3286547739079505473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073296 (A069768 n).toNat

end

end A073294.P3286547739079505473

/-! ## A073294.P13120808020335658002

`A073298(A073291(n))`
-/

namespace A073294.P13120808020335658002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073298 (A073291 n).toNat

end

end A073294.P13120808020335658002

/-! ## A073294.P154931612174694837

`A069768(A069768(A073298(n)))`
-/

namespace A073294.P154931612174694837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A069768 (A073298 n).toNat).toNat

end

end A073294.P154931612174694837

/-! ## A073294.P10816954998680871331

`A073298(A069767(A073293(n)))`
-/

namespace A073294.P10816954998680871331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073298 (A069767 (A073293 n).toNat).toNat

end

end A073294.P10816954998680871331

/-! ## A073294.P9508560965137297667

`A073291(A069767(A073296(n)))`
-/

namespace A073294.P9508560965137297667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A069767 (A073296 n).toNat).toNat

end

end A073294.P9508560965137297667

/-! ## A073294.P5981945544818172171

`A073292(A073291(A073292(n)))`
-/

namespace A073294.P5981945544818172171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A073291 (A073292 n).toNat).toNat

end

end A073294.P5981945544818172171

/-! ## A073294.P13845634740353707550

`A073296(A073292(A073295(n)))`
-/

namespace A073294.P13845634740353707550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073296 (A073292 (A073295 n).toNat).toNat

end

end A073294.P13845634740353707550

/-!
# A073295: Permutation A069768 applied four times or permutation A073291 applied twice.

The programs for A073295, there is no canonical definition to state claims against.
-/

/-! ## A073295.P6806384362440695291

`A073291(A073291(n))`
-/

namespace A073295.P6806384362440695291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A073291 n).toNat

end

end A073295.P6806384362440695291

/-! ## A073295.P13911556661875941707

`A069768(A069768(A069768(A069768(n))))`
-/

namespace A073295.P13911556661875941707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A069768 (A069768 (A069768 n).toNat).toNat).toNat

end

end A073295.P13911556661875941707

/-! ## A073295.P17587638308022523984

`A073299(A073290(n))`
-/

namespace A073295.P17587638308022523984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073299 (A073290 n).toNat

end

end A073295.P17587638308022523984

/-! ## A073295.P16789495087286186146

`A073297(A069767(n))`
-/

namespace A073295.P16789495087286186146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073297 (A069767 n).toNat

end

end A073295.P16789495087286186146

/-! ## A073295.P10000596460640578648

`A073293(A069768(n))`
-/

namespace A073295.P10000596460640578648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073293 (A069768 n).toNat

end

end A073295.P10000596460640578648

/-! ## A073295.P10054024202559480283

`A057163(A073294(A057163(n)))`
-/

namespace A073295.P10054024202559480283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073294 (A057163 n).toNat).toNat

end

end A073295.P10054024202559480283

/-! ## A073295.P3560770031547718298

`A069767(A069767(A073299(n)))`
-/

namespace A073295.P3560770031547718298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A069767 (A073299 n).toNat).toNat

end

end A073295.P3560770031547718298

/-! ## A073295.P5162102311941002507

`A073299(A069768(A073292(n)))`
-/

namespace A073295.P5162102311941002507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073299 (A069768 (A073292 n).toNat).toNat

end

end A073295.P5162102311941002507

/-! ## A073295.P16449102262275227769

`A073290(A069768(A073297(n)))`
-/

namespace A073295.P16449102262275227769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (A069768 (A073297 n).toNat).toNat

end

end A073295.P16449102262275227769

/-! ## A073295.P15238381841611439784

`A073293(A073290(A073293(n)))`
-/

namespace A073295.P15238381841611439784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073293 (A073290 (A073293 n).toNat).toNat

end

end A073295.P15238381841611439784

/-! ## A073295.P14267523798765949620

`A073297(A073293(A073294(n)))`
-/

namespace A073295.P14267523798765949620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073297 (A073293 (A073294 n).toNat).toNat

end

end A073295.P14267523798765949620

/-!
# A073296: Permutation A069767 applied five times or composition of the permutations A073290 & A073292.

The programs for A073296, there is no canonical definition to state claims against.
-/

/-! ## A073296.P13012036486575840115

`A073290(A073292(n))`
-/

namespace A073296.P13012036486575840115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (A073292 n).toNat

end

end A073296.P13012036486575840115

/-! ## A073296.P16880775998159414806

`A069767(A073294(n))`
-/

namespace A073296.P16880775998159414806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A073294 n).toNat

end

end A073296.P16880775998159414806

/-! ## A073296.P8248675651014628950

`A073298(A069768(n))`
-/

namespace A073296.P8248675651014628950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073298 (A069768 n).toNat

end

end A073296.P8248675651014628950

/-! ## A073296.P2763811530119487291

`A057163(A073297(A057163(n)))`
-/

namespace A073296.P2763811530119487291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073297 (A057163 n).toNat).toNat

end

end A073296.P2763811530119487291

/-! ## A073296.P11635195513026884318

`A073292(A069767(A069767(n)))`
-/

namespace A073296.P11635195513026884318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A069767 (A069767 n).toNat).toNat

end

end A073296.P11635195513026884318

/-! ## A073296.P10678991818447123983

`A073298(A069767(A073291(n)))`
-/

namespace A073296.P10678991818447123983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073298 (A069767 (A073291 n).toNat).toNat

end

end A073296.P10678991818447123983

/-! ## A073296.P13371624790457035806

`A073298(A073293(A073290(n)))`
-/

namespace A073296.P13371624790457035806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073298 (A073293 (A073290 n).toNat).toNat

end

end A073296.P13371624790457035806

/-! ## A073296.P2273749844553723387

`A073295(A073292(A073298(n)))`
-/

namespace A073296.P2273749844553723387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073295 (A073292 (A073298 n).toNat).toNat

end

end A073296.P2273749844553723387

/-! ## A073296.P1756680605123432966

`A073294(A073282(A069768(A073282(n))))`
-/

namespace A073296.P1756680605123432966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073294 (A073282 (A069768 (A073282 n).toNat).toNat).toNat

end

end A073296.P1756680605123432966

/-! ## A073296.P4430035158806197074

`A073290(A073286(A069767(A073286(n))))`
-/

namespace A073296.P4430035158806197074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (A073286 (A069767 (A073286 n).toNat).toNat).toNat

end

end A073296.P4430035158806197074

/-! ## A073296.P16916326427814279554

`A069767(A073286(A069767(A069767(A130341(n)))))`
-/

namespace A073296.P16916326427814279554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A073286 (A069767 (A069767 (A130341 n).toNat).toNat).toNat).toNat

end

end A073296.P16916326427814279554

/-!
# A073297: Permutation A069768 applied five times or composition of the permutations A073291 & A073293.

The programs for A073297, there is no canonical definition to state claims against.
-/

/-! ## A073297.P1494305520438926303

`A073291(A073293(n))`
-/

namespace A073297.P1494305520438926303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A073293 n).toNat

end

end A073297.P1494305520438926303

/-! ## A073297.P11045852972733831559

`A069768(A073295(n))`
-/

namespace A073297.P11045852972733831559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073295 n).toNat

end

end A073297.P11045852972733831559

/-! ## A073297.P6595940764660920654

`A069767(A073299(n))`
-/

namespace A073297.P6595940764660920654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A073299 n).toNat

end

end A073297.P6595940764660920654

/-! ## A073297.P15177992314078749966

`A057163(A073296(A057163(n)))`
-/

namespace A073297.P15177992314078749966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073296 (A057163 n).toNat).toNat

end

end A073297.P15177992314078749966

/-! ## A073297.P1355621089336338720

`A073293(A069768(A069768(n)))`
-/

namespace A073297.P1355621089336338720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073293 (A069768 (A069768 n).toNat).toNat

end

end A073297.P1355621089336338720

/-! ## A073297.P10212035675972624016

`A073295(A073291(A069767(n)))`
-/

namespace A073297.P10212035675972624016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073295 (A073291 (A069767 n).toNat).toNat

end

end A073297.P10212035675972624016

/-! ## A073297.P14252648503934327596

`A073299(A069768(A073290(n)))`
-/

namespace A073297.P14252648503934327596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073299 (A069768 (A073290 n).toNat).toNat

end

end A073297.P14252648503934327596

/-! ## A073297.P12369567343384668006

`A073291(A073287(A069768(A073287(n))))`
-/

namespace A073297.P12369567343384668006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A073287 (A069768 (A073287 n).toNat).toNat).toNat

end

end A073297.P12369567343384668006

/-!
# A073298: Permutation A069767 applied six times or permutation A073290 "cubed" or permutation A073292 "squared".

The programs for A073298, there is no canonical definition to state claims against.
-/

/-! ## A073298.P1067543073093032558

`A073290(A073290(A073290(n)))`
-/

namespace A073298.P1067543073093032558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (A073290 (A073290 n).toNat).toNat

end

end A073298.P1067543073093032558

/-! ## A073298.P2128669959831243007

`A073292(A073292(n))`
-/

namespace A073298.P2128669959831243007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073292 (A073292 n).toNat

end

end A073298.P2128669959831243007

/-! ## A073298.P10994797026659680147

`A073290(A073294(n))`
-/

namespace A073298.P10994797026659680147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (A073294 n).toNat

end

end A073298.P10994797026659680147

/-! ## A073298.P6366432585408341476

`A073296(A069767(n))`
-/

namespace A073298.P6366432585408341476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073296 (A069767 n).toNat

end

end A073298.P6366432585408341476

/-! ## A073298.P2314830169109005479

`A057163(A073299(A057163(n)))`
-/

namespace A073298.P2314830169109005479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073299 (A057163 n).toNat).toNat

end

end A073298.P2314830169109005479

/-! ## A073298.P2534220248060619385

`A073296(A073296(A073295(n)))`
-/

namespace A073298.P2534220248060619385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073296 (A073296 (A073295 n).toNat).toNat

end

end A073298.P2534220248060619385

/-!
# A073299: Permutation A069768 applied six times or permutation A073291 "cubed" or permutation A073293 "squared".

The programs for A073299, there is no canonical definition to state claims against.
-/

/-! ## A073299.P3542309877036632194

`A073293(A073293(n))`
-/

namespace A073299.P3542309877036632194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073293 (A073293 n).toNat

end

end A073299.P3542309877036632194

/-! ## A073299.P10513497338645436041

`A073291(A073291(A073291(n)))`
-/

namespace A073299.P10513497338645436041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A073291 (A073291 n).toNat).toNat

end

end A073299.P10513497338645436041

/-! ## A073299.P14118611344068857232

`A073291(A073295(n))`
-/

namespace A073299.P14118611344068857232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A073295 n).toNat

end

end A073299.P14118611344068857232

/-! ## A073299.P13946830817413984012

`A073297(A069768(n))`
-/

namespace A073299.P13946830817413984012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073297 (A069768 n).toNat

end

end A073299.P13946830817413984012

/-! ## A073299.P740250033431257091

`A057163(A073298(A057163(n)))`
-/

namespace A073299.P740250033431257091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073298 (A057163 n).toNat).toNat

end

end A073299.P740250033431257091

/-! ## A073299.P10622063771243659603

`A073297(A073295(A073292(n)))`
-/

namespace A073299.P10622063771243659603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073297 (A073295 (A073292 n).toNat).toNat

end

end A073299.P10622063771243659603

/-! ## A073299.P16343993315803906466

`A129611(A129611(A122339(A129611(n))))`
-/

namespace A073299.P16343993315803906466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129611 (A129611 (A122339 (A129611 n).toNat).toNat).toNat

end

end A073299.P16343993315803906466

/-! ## A073299.P16039580220813395893

`A154454(A122354(A154454(A089863(n))))`
-/

namespace A073299.P16039580220813395893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154454 (A122354 (A154454 (A089863 n).toNat).toNat).toNat

end

end A073299.P16039580220813395893

