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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A105200: Number of compositions of n such that the least part occurs with odd multiplicity.

The programs for A105200, there is no canonical definition to state claims against.
-/

/-! ## A105200.P18040034356535334279

`2^n-A105201(n+1)`
-/

namespace A105200.P18040034356535334279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A105201 (n + 1)

end

end A105200.P18040034356535334279

/-! ## A105200.P13922869591768376423

`abs(A105201(n+1)-A000079(n))`
-/

namespace A105200.P13922869591768376423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105201 (n + 1) - A000079 n|

end

end A105200.P13922869591768376423

/-! ## A105200.P14437603758709177632

`A000051(n)-(A105201(n+1)+1)`
-/

namespace A105200.P14437603758709177632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A105201 (n + 1) + 1)

end

end A105200.P14437603758709177632

/-! ## A105200.P15506062763203882181

`A000225(n)+1-A105201(n+1)`
-/

namespace A105200.P15506062763203882181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A105201 (n + 1))

end

end A105200.P15506062763203882181

/-! ## A105200.P13222950050039290002

`abs(A105201(n+1)-∑[A011782(n)])`
-/

namespace A105200.P13222950050039290002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105201 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A105200.P13222950050039290002

/-!
# A105201: Number of compositions of n such that the least part occurs with even multiplicity.

The programs for A105201, there is no canonical definition to state claims against.
-/

/-! ## A105201.P1270303313412299150

`2^n-A105200(n+1)`
-/

namespace A105201.P1270303313412299150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A105200 (n + 1)

end

end A105201.P1270303313412299150

/-! ## A105201.P401403734323869663

`abs(A105200(n+1)-A000079(n))`
-/

namespace A105201.P401403734323869663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105200 (n + 1) - A000079 n|

end

end A105201.P401403734323869663

/-! ## A105201.P8446401081748862103

`and(-A105200(n+1), A000225(n))`
-/

namespace A105201.P8446401081748862103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A105200 (n + 1)) (A000225 n)

end

end A105201.P8446401081748862103

/-! ## A105201.P5904273972956298565

`A000051(n)-(A105200(n+1)+1)`
-/

namespace A105201.P5904273972956298565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A105200 (n + 1) + 1)

end

end A105201.P5904273972956298565

/-! ## A105201.P12787275709378876887

`abs(A105200(n+1)-∑[A011782(n)])`
-/

namespace A105201.P12787275709378876887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105200 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A105201.P12787275709378876887

/-!
# A105202: Irregular triangle read by rows: row n gives the word f(f(f(...(1)))) [with n applications of f], where f is the morphism 1->{1,2,1}, 2->{2,3,2}, 3->{3,1,3}.

The programs for A105202, the canonical program `A105202.P11734223398601534137` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105202 has offset 0).

The definition of A105202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105202.P16379838472987654064

`A134023(n+1)%3+1`
-/

namespace A105202.P16379838472987654064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134023 (n + 1)) 3 + 1

end

end A105202.P16379838472987654064

namespace A105202

/-- `A134023(n+1)%3+1` -/
def P16379838472987654064.Spec : Prop :=
  ∀ n, P16379838472987654064.a n = A105202 n

end A105202

/-! ## A105202.P11734223398601534137

`A105203(A005408(n)-A132141(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105202

/-- `A105203(A005408(n)-A132141(n+1))` -/
def P11734223398601534137.Spec : Prop :=
  ∀ n, P11734223398601534137.a n = A105202 n

theorem P11734223398601534137.correct : P11734223398601534137.Spec := by
  intro n
  simp only [A105202]

end A105202

/-! ## A105202.P13076893521282323474

`A105203(A005408(n)%A132141(n+1))`
-/

namespace A105202.P13076893521282323474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 (Int.tmod (A005408 n) (A132141 (n + 1))).toNat

end

end A105202.P13076893521282323474

namespace A105202

/-- `A105203(A005408(n)%A132141(n+1))` -/
def P13076893521282323474.Spec : Prop :=
  ∀ n, P13076893521282323474.a n = A105202 n

end A105202

/-! ## A105202.P6618500576042318048

`A105203(A157671(n+1))`
-/

namespace A105202.P6618500576042318048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 (A157671 (n + 1)).toNat

end

end A105202.P6618500576042318048

namespace A105202

/-- `A105203(A157671(n+1))` -/
def P6618500576042318048.Spec : Prop :=
  ∀ n, P6618500576042318048.a n = A105202 n

end A105202

/-! ## A105202.P15663628198663664060

`A245555(A343230(n+1)+1)`
-/

namespace A105202.P15663628198663664060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245555 (A343230 (n + 1) + 1).toNat

end

end A105202.P15663628198663664060

namespace A105202

/-- `A245555(A343230(n+1)+1)` -/
def P15663628198663664060.Spec : Prop :=
  ∀ n, P15663628198663664060.a n = A105202 n

end A105202

/-!
# A105203: Trajectory of 1 under the morphism f: 1->{1,2,1}, 2->{2,3,2}, 3->{3,1,3}.

The programs for A105203, the canonical program `A105203.P9148905778103150358` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105203 has offset 0).

The definition of A105203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105203.P9148905778103150358

`A062756(n)%3+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105203

/-- `A062756(n)%3+1` -/
def P9148905778103150358.Spec : Prop :=
  ∀ n, P9148905778103150358.a n = A105203 n

theorem P9148905778103150358.correct : P9148905778103150358.Spec := by
  intro n
  simp only [A105203]

end A105203

/-! ## A105203.P13553629084461954368

`A023713(n+1)%3+1`
-/

namespace A105203.P13553629084461954368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023713 (n + 1)) 3 + 1

end

end A105203.P13553629084461954368

namespace A105203

/-- `A023713(n+1)%3+1` -/
def P13553629084461954368.Spec : Prop :=
  ∀ n, P13553629084461954368.a n = A105203 n

end A105203

/-! ## A105203.P5615099867310743376

`(2*A189674(n+1)-n)%3+1`
-/

namespace A105203.P5615099867310743376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A189674 (n + 1) - (n : ℤ)) 3 + 1

end

end A105203.P5615099867310743376

namespace A105203

/-- `(2*A189674(n+1)-n)%3+1` -/
def P5615099867310743376.Spec : Prop :=
  ∀ n, P5615099867310743376.a n = A105203 n

end A105203

/-! ## A105203.P17954372463592765039

`(∑[2*A189673(n+1)]-n)%3+1`
-/

namespace A105203.P17954372463592765039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) 3 + 1

end

end A105203.P17954372463592765039

namespace A105203

/-- `(∑[2*A189673(n+1)]-n)%3+1` -/
def P17954372463592765039.Spec : Prop :=
  ∀ n, P17954372463592765039.a n = A105203 n

end A105203

/-! ## A105203.P6191840353007367371

`A078734(A006047(n))`
-/

namespace A105203.P6191840353007367371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (A006047 n).toNat

end

end A105203.P6191840353007367371

namespace A105203

/-- `A078734(A006047(n))` -/
def P6191840353007367371.Spec : Prop :=
  ∀ n, P6191840353007367371.a n = A105203 n

end A105203

/-! ## A105203.P16930912740292376140

`A245555(A356248(n))`
-/

namespace A105203.P16930912740292376140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245555 (A356248 n).toNat

end

end A105203.P16930912740292376140

namespace A105203

/-- `A245555(A356248(n))` -/
def P16930912740292376140.Spec : Prop :=
  ∀ n, P16930912740292376140.a n = A105203 n

end A105203

/-! ## A105203.P292837580718831826

`A287556(A120880(n))+1`
-/

namespace A105203.P292837580718831826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A120880 n).toNat + 1

end

end A105203.P292837580718831826

namespace A105203

/-- `A287556(A120880(n))+1` -/
def P292837580718831826.Spec : Prop :=
  ∀ n, P292837580718831826.a n = A105203 n

end A105203

/-! ## A105203.P5375008727463485253

`A245555(A289813(n)+1)`
-/

namespace A105203.P5375008727463485253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245555 (A289813 n + 1).toNat

end

end A105203.P5375008727463485253

namespace A105203

/-- `A245555(A289813(n)+1)` -/
def P5375008727463485253.Spec : Prop :=
  ∀ n, P5375008727463485253.a n = A105203 n

end A105203

/-! ## A105203.P15485840667371675940

`lt[A049320(n+1), 1]%3+1`
-/

namespace A105203.P15485840667371675940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049320 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % 3 + 1

end

end A105203.P15485840667371675940

namespace A105203

/-- `lt[A049320(n+1), 1]%3+1` -/
def P15485840667371675940.Spec : Prop :=
  ∀ n, (P15485840667371675940.a n : ℤ) = A105203 n

end A105203

/-! ## A105203.P15559559807511967758

`∑[A030102(A030102(n))]%3+1`
-/

namespace A105203.P15559559807511967758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A030102 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3 + 1

end

end A105203.P15559559807511967758

namespace A105203

/-- `∑[A030102(A030102(n))]%3+1` -/
def P15559559807511967758.Spec : Prop :=
  ∀ n, P15559559807511967758.a n = A105203 n

end A105203

/-! ## A105203.P1003904546459469132

`∑[A137305(A137305(n))]%3+1`
-/

namespace A105203.P1003904546459469132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 (A137305 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3 + 1

end

end A105203.P1003904546459469132

namespace A105203

/-- `∑[A137305(A137305(n))]%3+1` -/
def P1003904546459469132.Spec : Prop :=
  ∀ n, P1003904546459469132.a n = A105203 n

end A105203

/-! ## A105203.P16356175618860277365

`lt[A292372(n), 1]%3+1`
-/

namespace A105203.P16356175618860277365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % 3 + 1

end

end A105203.P16356175618860277365

namespace A105203

/-- `lt[A292372(n), 1]%3+1` -/
def P16356175618860277365.Spec : Prop :=
  ∀ n, (P16356175618860277365.a n : ℤ) = A105203 n

end A105203

/-! ## A105203.P326138090212283806

`A280509(2*A120879(n))`
-/

namespace A105203.P326138090212283806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280509 (2 * A120879 n).toNat

end

end A105203.P326138090212283806

namespace A105203

/-- `A280509(2*A120879(n))` -/
def P326138090212283806.Spec : Prop :=
  ∀ n, P326138090212283806.a n = A105203 n

end A105203

/-! ## A105203.P5465878389089379108

`A057300(record[A057300(n)])%3+1`
-/

namespace A105203.P5465878389089379108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 3 + 1

end

end A105203.P5465878389089379108

namespace A105203

/-- `A057300(record[A057300(n)])%3+1` -/
def P5465878389089379108.Spec : Prop :=
  ∀ n, P5465878389089379108.a n = A105203 n

end A105203

/-! ## A105203.P7802310346291103328

`eq[0, A160382(n)]%3+1`
-/

namespace A105203.P7802310346291103328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 3 + 1

end

end A105203.P7802310346291103328

namespace A105203

/-- `eq[0, A160382(n)]%3+1` -/
def P7802310346291103328.Spec : Prop :=
  ∀ n, (P7802310346291103328.a n : ℤ) = A105203 n

end A105203

/-! ## A105203.P10259289279083976581

`A010882(A023713(n+1))`
-/

namespace A105203.P10259289279083976581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A023713 (n + 1)).toNat

end

end A105203.P10259289279083976581

namespace A105203

/-- `A010882(A023713(n+1))` -/
def P10259289279083976581.Spec : Prop :=
  ∀ n, P10259289279083976581.a n = A105203 n

end A105203

/-! ## A105203.P3562145724620316318

`A106638(A006288(n))`
-/

namespace A105203.P3562145724620316318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106638 (A006288 n).toNat

end

end A105203.P3562145724620316318

namespace A105203

/-- `A106638(A006288(n))` -/
def P3562145724620316318.Spec : Prop :=
  ∀ n, P3562145724620316318.a n = A105203 n

end A105203

/-! ## A105203.P6148028263221996644

`A106638(A023709(n+1))`
-/

namespace A105203.P6148028263221996644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106638 (A023709 (n + 1)).toNat

end

end A105203.P6148028263221996644

namespace A105203

/-- `A106638(A023709(n+1))` -/
def P6148028263221996644.Spec : Prop :=
  ∀ n, P6148028263221996644.a n = A105203 n

end A105203

/-!
# A105204: Number of compositions of n such that the greatest part occurs with even multiplicity.

The programs for A105204, there is no canonical definition to state claims against.
-/

/-! ## A105204.P1638477358072207474

`A000079(n)-A105205(n+1)%A106424(n+1)`
-/

namespace A105204.P1638477358072207474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - Int.tmod (A105205 (n + 1)) (A106424 (n + 1))

end

end A105204.P1638477358072207474

/-! ## A105204.P3386820237020414966

`A000079(n)-A032741(A016041(n+1))*A105205(n+1)`
-/

namespace A105204.P3386820237020414966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A032741 (A016041 (n + 1)).toNat * A105205 (n + 1)

end

end A105204.P3386820237020414966

/-! ## A105204.P10319224842817038271

`A001222(A000043(n+1))*A000079(n)-A105205(n+1)`
-/

namespace A105204.P10319224842817038271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A000079 n - A105205 (n + 1)

end

end A105204.P10319224842817038271

/-! ## A105204.P16848153371404276020

`A188300(A195522(n+1))+A000079(n)-A105205(n+1)`
-/

namespace A105204.P16848153371404276020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188300 (A195522 (n + 1)).toNat + (A000079 n - A105205 (n + 1))

end

end A105204.P16848153371404276020

/-! ## A105204.P16093680098375707976

`record[A319690(n+1)]-A105205(n+1)`
-/

namespace A105204.P16093680098375707976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A105205 (n + 1)

end

end A105204.P16093680098375707976

/-!
# A105205: G.f.: Sum((1-x)^(2*l)*Sum(x^((2*l-1)*k)/(1-2*x+x^k)^(2*l),k=1..infinity),l=1..infinity).

The programs for A105205, there is no canonical definition to state claims against.
-/

/-! ## A105205.P9767481920777972003

`A000079(n)-A105204(n+1)%A106424(n+1)`
-/

namespace A105205.P9767481920777972003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - Int.tmod (A105204 (n + 1)) (A106424 (n + 1))

end

end A105205.P9767481920777972003

/-! ## A105205.P3497996728939449517

`A305245(∑[n]+1)-A105204(n+1)`
-/

namespace A105205.P3497996728939449517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A105204 (n + 1)

end

end A105205.P3497996728939449517

/-! ## A105205.P13443215286522731347

`A000027(2^n-A105204(n+1))`
-/

namespace A105205.P13443215286522731347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 ^ n : ℤ) - A105204 (n + 1)).toNat

end

end A105205.P13443215286522731347

/-! ## A105205.P7881843166444211013

`A000027(abs(A105204(n+1)-A000079(n)))`
-/

namespace A105205.P7881843166444211013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 |A105204 (n + 1) - A000079 n|.toNat

end

end A105205.P7881843166444211013

/-! ## A105205.P12323525689855275897

`∑[A000027(A011782(n))]-A105204(n+1)`
-/

namespace A105205.P12323525689855275897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105204 (n + 1)

end

end A105205.P12323525689855275897

/-!
# A105207: Records in A007374.

The programs for A105207, there is no canonical definition to state claims against.
-/

/-! ## A105207.P8081461193229949199

`record[A007374(n+2)]`
-/

namespace A105207.P8081461193229949199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105207.P8081461193229949199

/-! ## A105207.P17415890466109115243

`A007374(A105208(n+1))`
-/

namespace A105207.P17415890466109115243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (A105208 (n + 1)).toNat

end

end A105207.P17415890466109115243

/-! ## A105207.P14362652129252563184

`record[A014573(n+2)]`
-/

namespace A105207.P14362652129252563184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105207.P14362652129252563184

/-! ## A105207.P2628947620595025338

`record[gcd(C(2, n), A014573(n))]`
-/

namespace A105207.P2628947620595025338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A014573 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105207.P2628947620595025338

/-! ## A105207.P10848656644644233743

`record[(2*A085758(n+2))%A172464(n+1)]`
-/

namespace A105207.P10848656644644233743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A085758 (n + 2)) (A172464 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105207.P10848656644644233743

/-!
# A105208: Where records occur in A007374.

The programs for A105208, there is no canonical definition to state claims against.
-/

/-! ## A105208.P13501091295298193872

`A014197(A105207(n+1))`
-/

namespace A105208.P13501091295298193872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A105207 (n + 1)).toNat

end

end A105208.P13501091295298193872

/-! ## A105208.P14223975797403476875

`A014197(record[A007374(n+2)])`
-/

namespace A105208.P14223975797403476875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105208.P14223975797403476875

/-! ## A105208.P13318836226553074619

`A014197(record[A014573(n+2)])`
-/

namespace A105208.P13318836226553074619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105208.P13318836226553074619

/-! ## A105208.P6695982432777265792

`A014197(record[A000010(A066420(n+2))])`
-/

namespace A105208.P6695982432777265792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A066420 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105208.P6695982432777265792

/-! ## A105208.P8543613271264061495

`A014197(record[A014573(n)-A000038(n)])`
-/

namespace A105208.P8543613271264061495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 n - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105208.P8543613271264061495

/-!
# A105209: Nearest integer to the cube root of n.

The programs for A105209, the canonical program `A105209.P15258669666792941148` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105209 has offset 1).

The definition of A105209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105209.P15258669666792941148

`round((n+1)^(1/3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A105209

/-- `round((n+1)^(1/3))` -/
def P15258669666792941148.Spec : Prop :=
  ∀ n, P15258669666792941148.a n = A105209 (n + 1)

theorem P15258669666792941148.correct : P15258669666792941148.Spec := by
  intro n
  simp only [A105209, Nat.add_sub_cancel]

end A105209

/-! ## A105209.P3782025553301230771

`∑[char[A219085(n)]]`
-/

namespace A105209.P3782025553301230771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219085 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105209.P3782025553301230771

namespace A105209

/-- `∑[char[A219085(n)]]` -/
def P3782025553301230771.Spec : Prop :=
  ∀ n, (P3782025553301230771.a n : ℤ) = A105209 (n + 1)

end A105209

/-! ## A105209.P7788656829888665941

`∑[char[A081276(2*n+1)]]`
-/

namespace A105209.P7788656829888665941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105209.P7788656829888665941

namespace A105209

/-- `∑[char[A081276(2*n+1)]]` -/
def P7788656829888665941.Spec : Prop :=
  ∀ n, (P7788656829888665941.a n : ℤ) = A105209 (n + 1)

end A105209

/-! ## A105209.P13881373593339377178

`A048766(A008590(n+1))-A048766(n+1)`
-/

namespace A105209.P13881373593339377178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A008590 (n + 1)).toNat - A048766 (n + 1)

end

end A105209.P13881373593339377178

namespace A105209

/-- `A048766(A008590(n+1))-A048766(n+1)` -/
def P13881373593339377178.Spec : Prop :=
  ∀ n, P13881373593339377178.a n = A105209 (n + 1)

end A105209

/-! ## A105209.P17987320734222909923

`A055642(A165256(A061076(n+1)))`
-/

namespace A105209.P17987320734222909923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A165256 (A061076 (n + 1)).toNat).toNat

end

end A105209.P17987320734222909923

namespace A105209

/-- `A055642(A165256(A061076(n+1)))` -/
def P17987320734222909923.Spec : Prop :=
  ∀ n, P17987320734222909923.a n = A105209 (n + 1)

end A105209

/-! ## A105209.P3088648398300203538

`A055642(A012883(n+1)+2*n)`
-/

namespace A105209.P3088648398300203538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A012883 (n + 1) + (2 * n : ℤ)).toNat

end

end A105209.P3088648398300203538

namespace A105209

/-- `A055642(A012883(n+1)+2*n)` -/
def P3088648398300203538.Spec : Prop :=
  ∀ n, P3088648398300203538.a n = A105209 (n + 1)

end A105209

/-! ## A105209.P5598216843755161285

`A000720(A001462(A001462(A324694(n+1))))`
-/

namespace A105209.P5598216843755161285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001462 (A001462 (A324694 (n + 1)).toNat).toNat).toNat

end

end A105209.P5598216843755161285

namespace A105209

/-- `A000720(A001462(A001462(A324694(n+1))))` -/
def P5598216843755161285.Spec : Prop :=
  ∀ n, P5598216843755161285.a n = A105209 (n + 1)

end A105209

/-! ## A105209.P18004216407070715702

`A055642(A330007(n+2)+n)`
-/

namespace A105209.P18004216407070715702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A330007 (n + 2) + (n : ℤ)).toNat

end

end A105209.P18004216407070715702

namespace A105209

/-- `A055642(A330007(n+2)+n)` -/
def P18004216407070715702.Spec : Prop :=
  ∀ n, P18004216407070715702.a n = A105209 (n + 1)

end A105209

/-! ## A105209.P4491499502091208278

`A339276(A134421(n))`
-/

namespace A105209.P4491499502091208278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A134421 n).toNat

end

end A105209.P4491499502091208278

namespace A105209

/-- `A339276(A134421(n))` -/
def P4491499502091208278.Spec : Prop :=
  ∀ n, P4491499502091208278.a n = A105209 (n + 1)

end A105209

/-!
# A105215: Minimum numerator among the n! ratios equal to the continued fractions which have the permutations of (1,2,3,...,n) for terms.

The programs for A105215, there is no canonical definition to state claims against.
-/

/-! ## A105215.P10442003829026152800

`A004526(record[or(2, A007779(n))])`
-/

namespace A105215.P10442003829026152800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A007779 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105215.P10442003829026152800

/-! ## A105215.P16522317380537822641

`A004525(3*A357949(n+1))`
-/

namespace A105215.P16522317380537822641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * A357949 (n + 1)).toNat

end

end A105215.P16522317380537822641

/-!
# A105216: Maximum denominator among the n! ratios equal to the continued fractions which have the permutations of (1,2,3,...,n) for terms.

The programs for A105216, there is no canonical definition to state claims against.
-/

/-! ## A105216.P567013547650328415

`(n+1)*a(n-1)+n*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=31`
-/

namespace A105216.P567013547650328415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7, 31] fun n a =>
  (n + 1) * a (n - 1) + n * a (n - 3) + a (n - 4)

end

end A105216.P567013547650328415

/-! ## A105216.P2926194631519453597

`A225496(A030921(n+1))`
-/

namespace A105216.P2926194631519453597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (A030921 (n + 1)).toNat

end

end A105216.P2926194631519453597

/-!
# A105217: Let b(n) denote the Lucas numbers, A000032: a(n) = Sum{k=0..n}C(n,k)^2*(n-k)!*b(k).

The programs for A105217, there is no canonical definition to state claims against.
-/

/-! ## A105217.P5592383572667148305

`A007094(A346626(n)+A229892(3*n+2))`
-/

namespace A105217.P5592383572667148305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A346626 n + A229892 (3 * n + 2)).toNat

end

end A105217.P5592383572667148305

/-!
# A105218: a(n) = Sum_{k=0..n} C(n,k)^2*(n-k)!*k^3.

The programs for A105218, there is no canonical definition to state claims against.
-/

/-! ## A105218.P3018638436468014217

`n*A103194(n)`
-/

namespace A105218.P3018638436468014217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103194 n

end

end A105218.P3018638436468014217

/-! ## A105218.P17455619969742080197

`n²*A000262(n)`
-/

namespace A105218.P17455619969742080197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000262 n

end

end A105218.P17455619969742080197

/-! ## A105218.P5762543858108127731

`lcm(n², A293125(n))`
-/

namespace A105218.P5762543858108127731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 : ℤ) (A293125 n)

end

end A105218.P5762543858108127731

/-! ## A105218.P11921181766463973185

`n²*A059110(∑[n])`
-/

namespace A105218.P11921181766463973185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A059110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105218.P11921181766463973185

/-! ## A105218.P10937928513423744939

`n²*A129652(∑[n])`
-/

namespace A105218.P10937928513423744939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A129652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105218.P10937928513423744939

/-! ## A105218.P5048806089670827503

`n²*A206703(∑[n])`
-/

namespace A105218.P5048806089670827503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A206703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105218.P5048806089670827503

/-! ## A105218.P7680002080384512501

`n²*A216294(∑[n])`
-/

namespace A105218.P7680002080384512501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A216294 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105218.P7680002080384512501

/-! ## A105218.P18031842086629387539

`n²*A253286(∑[n+1]+1)`
-/

namespace A105218.P18031842086629387539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A253286 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A105218.P18031842086629387539

/-! ## A105218.P1440303664480806307

`A000262(n)*A000290(n)`
-/

namespace A105218.P1440303664480806307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A000290 n

end

end A105218.P1440303664480806307

/-! ## A105218.P14274919343441436365

`n²*A056953(A004273(n))`
-/

namespace A105218.P14274919343441436365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A056953 (A004273 n).toNat

end

end A105218.P14274919343441436365

/-!
# A105219: a(n) = Sum_{k=0..n} C(n,k)^2*(n-k)!*k^2.

The programs for A105219, there is no canonical definition to state claims against.
-/

/-! ## A105219.P17047446630126195650

`2*(n+2)*a(n-1)-((n+2)²-8)*a(n-2)+2*(n-2)*(n-1)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A105219.P17047446630126195650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8] fun n a =>
  2 * ((n + 2 : ℤ) * a (n - 1)) - (((n + 2) ^ 2 : ℤ) - 8) * a (n - 2) + 2 * (((n : ℤ) - 2) * (((n : ℤ) - 1) * a (n - 3)))

end

end A105219.P17047446630126195650

/-! ## A105219.P211630611138356825

`n*A052852(n)`
-/

namespace A105219.P211630611138356825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052852 n

end

end A105219.P211630611138356825

/-! ## A105219.P2850728421929346081

`A341200(∑[n+3])`
-/

namespace A105219.P2850728421929346081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341200 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105219.P2850728421929346081

/-! ## A105219.P4577332777757545333

`abs(n*A288869(n))`
-/

namespace A105219.P4577332777757545333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A288869 n|

end

end A105219.P4577332777757545333

/-! ## A105219.P10340276426639496813

`n*A288268(n+1)`
-/

namespace A105219.P10340276426639496813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288268 (n + 1)

end

end A105219.P10340276426639496813

/-! ## A105219.P15336146861913404676

`n*record[A288268(abs(1-n))]`
-/

namespace A105219.P15336146861913404676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288268 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105219.P15336146861913404676

/-! ## A105219.P133015862435212115

`A103194(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A105219.P133015862435212115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A103194 n + (n : ℤ) * a (n - 1)

end

end A105219.P133015862435212115

/-! ## A105219.P16614872422624232009

`n*A059110(A000124(n))`
-/

namespace A105219.P16614872422624232009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059110 (A000124 n).toNat

end

end A105219.P16614872422624232009

/-! ## A105219.P4062228145385580229

`n*A176120(A027379(n))`
-/

namespace A105219.P4062228145385580229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176120 (A027379 n).toNat

end

end A105219.P4062228145385580229

/-! ## A105219.P817754234017282845

`n*A176120(A055998(n))`
-/

namespace A105219.P817754234017282845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176120 (A055998 n).toNat

end

end A105219.P817754234017282845

/-!
# A105220: Trajectory of 1 under the morphism 1->{1,2,1}, 2->{2,2,2}.

The programs for A105220, the canonical program `A105220.P13322071171121659733` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105220 has offset 0).

The definition of A105220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105220.P3046341686530656026

`1+A316829(n)`
-/

namespace A105220.P3046341686530656026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A316829 n

end

end A105220.P3046341686530656026

namespace A105220

/-- `1+A316829(n)` -/
def P3046341686530656026.Spec : Prop :=
  ∀ n, P3046341686530656026.a n = A105220 n

end A105220

/-! ## A105220.P13322071171121659733

`2-A088917(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105220

/-- `2-A088917(n)` -/
def P13322071171121659733.Spec : Prop :=
  ∀ n, P13322071171121659733.a n = A105220 n

theorem P13322071171121659733.correct : P13322071171121659733.Spec := by
  intro n
  simp only [A105220]

end A105220

/-! ## A105220.P17330560679402342798

`a(gcd(n%2, floor(n/3)))` with `a(0)=1, a(1)=2`
-/

namespace A105220.P17330560679402342798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Int.gcd ((n % 2 : ℕ) : ℤ) ⌊(n : ℚ) / 3⌋)

end

end A105220.P17330560679402342798

namespace A105220

/-- `a(gcd(n%2, floor(n/3)))` -/
def P17330560679402342798.Spec : Prop :=
  ∀ n, (P17330560679402342798.a n : ℤ) = A105220 n

end A105220

/-! ## A105220.P8594469895100015685

`gcd(2, (n+1)*a(floor(n/3)))` with `a(0)=1`
-/

namespace A105220.P8594469895100015685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 ((n + 1) * a ⌊(n : ℚ) / 3⌋.toNat)

end

end A105220.P8594469895100015685

namespace A105220

/-- `gcd(2, (n+1)*a(floor(n/3)))` -/
def P8594469895100015685.Spec : Prop :=
  ∀ n, (P8594469895100015685.a n : ℤ) = A105220 n

end A105220

/-! ## A105220.P323947882403032592

`a(floor(n/(a(n-1)+1)))` with `a(0)=1, a(1)=2`
-/

namespace A105220.P323947882403032592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊(n : ℚ) / (a (n - 1) + 1 : ℚ)⌋.toNat

end

end A105220.P323947882403032592

namespace A105220

/-- `a(floor(n/(a(n-1)+1)))` -/
def P323947882403032592.Spec : Prop :=
  ∀ n, (P323947882403032592.a n : ℤ) = A105220 n

end A105220

/-! ## A105220.P7550669606486238315

`2-a(floor(n/3))%a(n-1)` with `a(0)=1`
-/

namespace A105220.P7550669606486238315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - Int.tmod (a ⌊(n : ℚ) / 3⌋.toNat) (a (n - 1))

end

end A105220.P7550669606486238315

namespace A105220

/-- `2-a(floor(n/3))%a(n-1)` -/
def P7550669606486238315.Spec : Prop :=
  ∀ n, P7550669606486238315.a n = A105220 n

end A105220

/-! ## A105220.P9332500507596799445

`a(floor(n/(4-2/a(n-1))))` with `a(0)=1, a(1)=2`
-/

namespace A105220.P9332500507596799445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊(n : ℚ) / (4 - 2 / (a (n - 1) : ℚ))⌋.toNat

end

end A105220.P9332500507596799445

namespace A105220

/-- `a(floor(n/(4-2/a(n-1))))` -/
def P9332500507596799445.Spec : Prop :=
  ∀ n, (P9332500507596799445.a n : ℤ) = A105220 n

end A105220

/-! ## A105220.P10889804583428826740

`gcd(2, A006047(n))`
-/

namespace A105220.P10889804583428826740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A006047 n)

end

end A105220.P10889804583428826740

namespace A105220

/-- `gcd(2, A006047(n))` -/
def P10889804583428826740.Spec : Prop :=
  ∀ n, (P10889804583428826740.a n : ℤ) = A105220 n

end A105220

/-! ## A105220.P13355475407411294668

`gcd(6, A120880(n))`
-/

namespace A105220.P13355475407411294668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A120880 n)

end

end A105220.P13355475407411294668

namespace A105220

/-- `gcd(6, A120880(n))` -/
def P13355475407411294668.Spec : Prop :=
  ∀ n, (P13355475407411294668.a n : ℤ) = A105220 n

end A105220

/-! ## A105220.P14183747423845191533

`a(A103627(n))` with `a(0)=1, a(1)=2`
-/

namespace A105220.P14183747423845191533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A103627 n).toNat

end

end A105220.P14183747423845191533

namespace A105220

/-- `a(A103627(n))` -/
def P14183747423845191533.Spec : Prop :=
  ∀ n, (P14183747423845191533.a n : ℤ) = A105220 n

end A105220

/-! ## A105220.P7612761571406804132

`2-char[A167878(n)]`
-/

namespace A105220.P7612761571406804132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105220.P7612761571406804132

namespace A105220

/-- `2-char[A167878(n)]` -/
def P7612761571406804132.Spec : Prop :=
  ∀ n, P7612761571406804132.a n = A105220 n

end A105220

/-! ## A105220.P3214459657502373165

`2-char[A300222(n)]`
-/

namespace A105220.P3214459657502373165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105220.P3214459657502373165

namespace A105220

/-- `2-char[A300222(n)]` -/
def P3214459657502373165.Spec : Prop :=
  ∀ n, P3214459657502373165.a n = A105220 n

end A105220

/-! ## A105220.P1335498462888931638

`ceil(sqrt(sqrt(A261787(n))))`
-/

namespace A105220.P1335498462888931638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A261787 n : ℝ))⌉

end

end A105220.P1335498462888931638

namespace A105220

/-- `ceil(sqrt(sqrt(A261787(n))))` -/
def P1335498462888931638.Spec : Prop :=
  ∀ n, P1335498462888931638.a n = A105220 n

end A105220

/-! ## A105220.P13801626662950752132

`2-and(1, A290091(n))`
-/

namespace A105220.P13801626662950752132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (A290091 n)

end

end A105220.P13801626662950752132

namespace A105220

/-- `2-and(1, A290091(n))` -/
def P13801626662950752132.Spec : Prop :=
  ∀ n, P13801626662950752132.a n = A105220 n

end A105220

/-! ## A105220.P17222070975360986480

`2-char[record[A004488(n)]]`
-/

namespace A105220.P17222070975360986480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105220.P17222070975360986480

namespace A105220

/-- `2-char[record[A004488(n)]]` -/
def P17222070975360986480.Spec : Prop :=
  ∀ n, P17222070975360986480.a n = A105220 n

end A105220

/-! ## A105220.P18193858161583996525

`2-char[record[A353660(n)]]`
-/

namespace A105220.P18193858161583996525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353660 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105220.P18193858161583996525

namespace A105220

/-- `2-char[record[A353660(n)]]` -/
def P18193858161583996525.Spec : Prop :=
  ∀ n, P18193858161583996525.a n = A105220 n

end A105220

/-! ## A105220.P1965063835641566285

`2-char[record[A357616(n)]]`
-/

namespace A105220.P1965063835641566285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105220.P1965063835641566285

namespace A105220

/-- `2-char[record[A357616(n)]]` -/
def P1965063835641566285.Spec : Prop :=
  ∀ n, P1965063835641566285.a n = A105220 n

end A105220

/-! ## A105220.P633761050081267478

`round(atan(A062756(n)))+1`
-/

namespace A105220.P633761050081267478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A062756 n : ℝ)) + 1

end

end A105220.P633761050081267478

namespace A105220

/-- `round(atan(A062756(n)))+1` -/
def P633761050081267478.Spec : Prop :=
  ∀ n, P633761050081267478.a n = A105220 n

end A105220

/-! ## A105220.P11621332654529930665

`char[A081606(n+1)]+1`
-/

namespace A105220.P11621332654529930665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A105220.P11621332654529930665

namespace A105220

/-- `char[A081606(n+1)]+1` -/
def P11621332654529930665.Spec : Prop :=
  ∀ n, (P11621332654529930665.a n : ℤ) = A105220 n

end A105220

/-!
# A105221: a(n) is the sum of n's distinct prime factors below n.

The programs for A105221, the canonical program `A105221.P12712452507775767213` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105221 has offset 1).

The definition of A105221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105221.P12712452507775767213

`∑{p}[n+1, #%(n+1)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A105221

/-- `∑{p}[n+1, #%(n+1)]` -/
def P12712452507775767213.Spec : Prop :=
  ∀ n, (P12712452507775767213.a n : ℤ) = A105221 (n + 1)

theorem P12712452507775767213.correct : P12712452507775767213.Spec := by
  intro n
  simp only [A105221, Nat.add_sub_cancel]

end A105221

/-! ## A105221.P17863346202858924384

`∑{p}[n+1, #-C(#, n)]`
-/

namespace A105221.P17863346202858924384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - (Nat.choose p n : ℤ))

end

end A105221.P17863346202858924384

namespace A105221

/-- `∑{p}[n+1, #-C(#, n)]` -/
def P17863346202858924384.Spec : Prop :=
  ∀ n, P17863346202858924384.a n = A105221 (n + 1)

end A105221

/-! ## A105221.P14233602149385022306

`∑{p}[Δ[A101203(n)], #]`
-/

namespace A105221.P14233602149385022306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A105221.P14233602149385022306

namespace A105221

/-- `∑{p}[Δ[A101203(n)], #]` -/
def P14233602149385022306.Spec : Prop :=
  ∀ n, (P14233602149385022306.a n : ℤ) = A105221 (n + 1)

end A105221

/-! ## A105221.P8838968562122176032

`∑{p}[A005451(n+1), #]`
-/

namespace A105221.P8838968562122176032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A105221.P8838968562122176032

namespace A105221

/-- `∑{p}[A005451(n+1), #]` -/
def P8838968562122176032.Spec : Prop :=
  ∀ n, (P8838968562122176032.a n : ℤ) = A105221 (n + 1)

end A105221

/-! ## A105221.P13666679663169015793

`∑{p}[A005730(n+1), #]`
-/

namespace A105221.P13666679663169015793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A105221.P13666679663169015793

namespace A105221

/-- `∑{p}[A005730(n+1), #]` -/
def P13666679663169015793.Spec : Prop :=
  ∀ n, (P13666679663169015793.a n : ℤ) = A105221 (n + 1)

end A105221

/-! ## A105221.P1329824207927104552

`∑{p}[A048671(n+1), #]`
-/

namespace A105221.P1329824207927104552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A105221.P1329824207927104552

namespace A105221

/-- `∑{p}[A048671(n+1), #]` -/
def P1329824207927104552.Spec : Prop :=
  ∀ n, (P1329824207927104552.a n : ℤ) = A105221 (n + 1)

end A105221

/-! ## A105221.P18184851045218498401

`∑{p}[A144907(n+1), #]`
-/

namespace A105221.P18184851045218498401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A105221.P18184851045218498401

namespace A105221

/-- `∑{p}[A144907(n+1), #]` -/
def P18184851045218498401.Spec : Prop :=
  ∀ n, (P18184851045218498401.a n : ℤ) = A105221 (n + 1)

end A105221

/-! ## A105221.P17656821904444767530

`∑{p}[A191558(n+1), #]`
-/

namespace A105221.P17656821904444767530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A105221.P17656821904444767530

namespace A105221

/-- `∑{p}[A191558(n+1), #]` -/
def P17656821904444767530.Spec : Prop :=
  ∀ n, (P17656821904444767530.a n : ℤ) = A105221 (n + 1)

end A105221

/-! ## A105221.P5293278440381726470

`∑{p}[A334085(n+1), #]`
-/

namespace A105221.P5293278440381726470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A105221.P5293278440381726470

namespace A105221

/-- `∑{p}[A334085(n+1), #]` -/
def P5293278440381726470.Spec : Prop :=
  ∀ n, (P5293278440381726470.a n : ℤ) = A105221 (n + 1)

end A105221

/-! ## A105221.P12021155974596434183

`A008472(n+1)%(n+1)`
-/

namespace A105221.P12021155974596434183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008472 (n + 1)) (n + 1 : ℤ)

end

end A105221.P12021155974596434183

namespace A105221

/-- `A008472(n+1)%(n+1)` -/
def P12021155974596434183.Spec : Prop :=
  ∀ n, P12021155974596434183.a n = A105221 (n + 1)

end A105221

/-! ## A105221.P353952377424924604

`A075653(n+1)%(n+1)`
-/

namespace A105221.P353952377424924604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075653 (n + 1)) (n + 1 : ℤ)

end

end A105221.P353952377424924604

namespace A105221

/-- `A075653(n+1)%(n+1)` -/
def P353952377424924604.Spec : Prop :=
  ∀ n, P353952377424924604.a n = A105221 (n + 1)

end A105221

/-! ## A105221.P15049094908973987020

`∑{p}[(n+1)/A014963(n+1), #]`
-/

namespace A105221.P15049094908973987020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014963 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A105221.P15049094908973987020

namespace A105221

/-- `∑{p}[(n+1)/A014963(n+1), #]` -/
def P15049094908973987020.Spec : Prop :=
  ∀ n, (P15049094908973987020.a n : ℤ) = A105221 (n + 1)

end A105221

/-! ## A105221.P1940109256192269526

`∑{p}[(n+1)*∏{d}[n+1, #^A008683(#)], #]`
-/

namespace A105221.P1940109256192269526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ d ∈ Nat.divisors (f2 n), (d : ℚ) ^ (A008683 d : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A105221.P1940109256192269526

namespace A105221

/-- `∑{p}[(n+1)*∏{d}[n+1, #^A008683(#)], #]` -/
def P1940109256192269526.Spec : Prop :=
  ∀ n, (P1940109256192269526.a n : ℤ) = A105221 (n + 1)

end A105221

/-! ## A105221.P225269624823918352

`A008472(A005451(n+1))`
-/

namespace A105221.P225269624823918352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A005451 (n + 1)).toNat

end

end A105221.P225269624823918352

namespace A105221

/-- `A008472(A005451(n+1))` -/
def P225269624823918352.Spec : Prop :=
  ∀ n, P225269624823918352.a n = A105221 (n + 1)

end A105221

/-! ## A105221.P10714579023247581561

`A008472(A005730(n+1))`
-/

namespace A105221.P10714579023247581561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A005730 (n + 1)).toNat

end

end A105221.P10714579023247581561

namespace A105221

/-- `A008472(A005730(n+1))` -/
def P10714579023247581561.Spec : Prop :=
  ∀ n, P10714579023247581561.a n = A105221 (n + 1)

end A105221

/-! ## A105221.P4587759113308878975

`A008472(A048671(n+1))`
-/

namespace A105221.P4587759113308878975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A048671 (n + 1)).toNat

end

end A105221.P4587759113308878975

namespace A105221

/-- `A008472(A048671(n+1))` -/
def P4587759113308878975.Spec : Prop :=
  ∀ n, P4587759113308878975.a n = A105221 (n + 1)

end A105221

/-! ## A105221.P7687545129810353605

`A008472(A144907(n+1))`
-/

namespace A105221.P7687545129810353605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A144907 (n + 1)).toNat

end

end A105221.P7687545129810353605

namespace A105221

/-- `A008472(A144907(n+1))` -/
def P7687545129810353605.Spec : Prop :=
  ∀ n, P7687545129810353605.a n = A105221 (n + 1)

end A105221

/-! ## A105221.P12187148528192423439

`A001414(A334085(n+1))`
-/

namespace A105221.P12187148528192423439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A334085 (n + 1)).toNat

end

end A105221.P12187148528192423439

namespace A105221

/-- `A001414(A334085(n+1))` -/
def P12187148528192423439.Spec : Prop :=
  ∀ n, P12187148528192423439.a n = A105221 (n + 1)

end A105221

/-! ## A105221.P10616849269079083958

`A008472(n+1)-A061397(n+1)`
-/

namespace A105221.P10616849269079083958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A061397 (n + 1)

end

end A105221.P10616849269079083958

namespace A105221

/-- `A008472(n+1)-A061397(n+1)` -/
def P10616849269079083958.Spec : Prop :=
  ∀ n, P10616849269079083958.a n = A105221 (n + 1)

end A105221

/-! ## A105221.P9355898565250563989

`A048050(n+1)-A060278(n+1)`
-/

namespace A105221.P9355898565250563989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) - A060278 (n + 1)

end

end A105221.P9355898565250563989

namespace A105221

/-- `A048050(n+1)-A060278(n+1)` -/
def P9355898565250563989.Spec : Prop :=
  ∀ n, P9355898565250563989.a n = A105221 (n + 1)

end A105221

/-!
# A105222: Smallest integer m > 1 such that m^(n-1) == 1 (mod n).

The programs for A105222, there is no canonical definition to state claims against.
-/

/-! ## A105222.P11540099706342660875

`or(1, n+3)-A020639(A161951(n+1))`
-/

namespace A105222.P11540099706342660875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 3) : ℤ) - A020639 (A161951 (n + 1)).toNat

end

end A105222.P11540099706342660875

/-! ## A105222.P7965226098051198973

`lcm(A141310(n+1), A318512(A187829(n+1)))`
-/

namespace A105222.P7965226098051198973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141310 (n + 1)) (A318512 (A187829 (n + 1)).toNat)

end

end A105222.P7965226098051198973

/-! ## A105222.P2295248319388865076

`A141310(A187829(n+1))^A247074(A141310(n))`
-/

namespace A105222.P2295248319388865076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 (A187829 (n + 1)).toNat : ℚ) ^ (A247074 (A141310 n).toNat : ℤ)

end

end A105222.P2295248319388865076

/-! ## A105222.P13210717190965603621

`A141310(A187829(n+1))*A247074(A318512(n+1))`
-/

namespace A105222.P13210717190965603621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A187829 (n + 1)).toNat * A247074 (A318512 (n + 1)).toNat

end

end A105222.P13210717190965603621

/-! ## A105222.P2637276051744595895

`A318827(n+1)+A000034(A000325(n))`
-/

namespace A105222.P2637276051744595895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 1) + A000034 (A000325 n).toNat

end

end A105222.P2637276051744595895

/-!
# A105223: Number of squares between prime(n) and 2*prime(n) inclusive.

The programs for A105223, the canonical program `A105223.P13046729923239661957` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105223 has offset 1).

The definition of A105223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105223.P13046729923239661957

`A105224(p?[xor(1, n)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105223

/-- `A105224(p?[xor(1, n)])` -/
def P13046729923239661957.Spec : Prop :=
  ∀ n, P13046729923239661957.a n = A105223 (n + 1)

theorem P13046729923239661957.correct : P13046729923239661957.Spec := by
  intro n
  simp only [A105223, Nat.add_sub_cancel]

end A105223

/-! ## A105223.P3579429541820440629

`A105224(A000040(n+1))`
-/

namespace A105223.P3579429541820440629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A000040 (n + 1)).toNat

end

end A105223.P3579429541820440629

namespace A105223

/-- `A105224(A000040(n+1))` -/
def P3579429541820440629.Spec : Prop :=
  ∀ n, P3579429541820440629.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P11167931047212606785

`A105224(A006005(n+1))`
-/

namespace A105223.P11167931047212606785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A006005 (n + 1)).toNat

end

end A105223.P11167931047212606785

namespace A105223

/-- `A105224(A006005(n+1))` -/
def P11167931047212606785.Spec : Prop :=
  ∀ n, P11167931047212606785.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P2894442209201318785

`A105224(A063884(n+1))`
-/

namespace A105223.P2894442209201318785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A063884 (n + 1)).toNat

end

end A105223.P2894442209201318785

namespace A105223

/-- `A105224(A063884(n+1))` -/
def P2894442209201318785.Spec : Prop :=
  ∀ n, P2894442209201318785.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P3028412895670189997

`A105224(A063904(n+1))`
-/

namespace A105223.P3028412895670189997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A063904 (n + 1)).toNat

end

end A105223.P3028412895670189997

namespace A105223

/-- `A105224(A063904(n+1))` -/
def P3028412895670189997.Spec : Prop :=
  ∀ n, P3028412895670189997.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P11054272983769398896

`A105224(A161847(n+1))`
-/

namespace A105223.P11054272983769398896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A161847 (n + 1)).toNat

end

end A105223.P11054272983769398896

namespace A105223

/-- `A105224(A161847(n+1))` -/
def P11054272983769398896.Spec : Prop :=
  ∀ n, P11054272983769398896.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P8847722301136923587

`A273190(A008864(n+1))`
-/

namespace A105223.P8847722301136923587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A008864 (n + 1)).toNat

end

end A105223.P8847722301136923587

namespace A105223

/-- `A273190(A008864(n+1))` -/
def P8847722301136923587.Spec : Prop :=
  ∀ n, P8847722301136923587.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P4802361187329227440

`A273190(A028815(n+1))`
-/

namespace A105223.P4802361187329227440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A028815 (n + 1)).toNat

end

end A105223.P4802361187329227440

namespace A105223

/-- `A273190(A028815(n+1))` -/
def P4802361187329227440.Spec : Prop :=
  ∀ n, P4802361187329227440.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P9993484775580667240

`A273190(A055670(n+1))`
-/

namespace A105223.P9993484775580667240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A055670 (n + 1)).toNat

end

end A105223.P9993484775580667240

namespace A105223

/-- `A273190(A055670(n+1))` -/
def P9993484775580667240.Spec : Prop :=
  ∀ n, P9993484775580667240.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P6333742724676083891

`A273190(A175216(n+1))`
-/

namespace A105223.P6333742724676083891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A175216 (n + 1)).toNat

end

end A105223.P6333742724676083891

namespace A105223

/-- `A273190(A175216(n+1))` -/
def P6333742724676083891.Spec : Prop :=
  ∀ n, P6333742724676083891.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P2350635370986721211

`A105224(A008578(n+2))`
-/

namespace A105223.P2350635370986721211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A008578 (n + 2)).toNat

end

end A105223.P2350635370986721211

namespace A105223

/-- `A105224(A008578(n+2))` -/
def P2350635370986721211.Spec : Prop :=
  ∀ n, P2350635370986721211.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P13542850202501199004

`A105224(A175787(n+2))`
-/

namespace A105223.P13542850202501199004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A175787 (n + 2)).toNat

end

end A105223.P13542850202501199004

namespace A105223

/-- `A105224(A175787(n+2))` -/
def P13542850202501199004.Spec : Prop :=
  ∀ n, P13542850202501199004.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P8475259934431502088

`A105224(record[A006530(n+2)])`
-/

namespace A105223.P8475259934431502088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105223.P8475259934431502088

namespace A105223

/-- `A105224(record[A006530(n+2)])` -/
def P8475259934431502088.Spec : Prop :=
  ∀ n, P8475259934431502088.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P9127149998841482458

`A105224(record[A014963(n+2)])`
-/

namespace A105223.P9127149998841482458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105223.P9127149998841482458

namespace A105223

/-- `A105224(record[A014963(n+2)])` -/
def P9127149998841482458.Spec : Prop :=
  ∀ n, P9127149998841482458.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P17789916581614240113

`A105224(record[A020639(n+2)])`
-/

namespace A105223.P17789916581614240113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105223.P17789916581614240113

namespace A105223

/-- `A105224(record[A020639(n+2)])` -/
def P17789916581614240113.Spec : Prop :=
  ∀ n, P17789916581614240113.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P14198941606180623556

`A273190(A000040(n+1)+1)`
-/

namespace A105223.P14198941606180623556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A000040 (n + 1) + 1).toNat

end

end A105223.P14198941606180623556

namespace A105223

/-- `A273190(A000040(n+1)+1)` -/
def P14198941606180623556.Spec : Prop :=
  ∀ n, P14198941606180623556.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P7523726287728900662

`A273190(record[A006530(n+2)+1])`
-/

namespace A105223.P7523726287728900662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105223.P7523726287728900662

namespace A105223

/-- `A273190(record[A006530(n+2)+1])` -/
def P7523726287728900662.Spec : Prop :=
  ∀ n, P7523726287728900662.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P13128135148820783820

`A273190(record[A014963(n+2)+1])`
-/

namespace A105223.P13128135148820783820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105223.P13128135148820783820

namespace A105223

/-- `A273190(record[A014963(n+2)+1])` -/
def P13128135148820783820.Spec : Prop :=
  ∀ n, P13128135148820783820.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P13230067683179982169

`A273190(record[A020639(n+2)+1])`
-/

namespace A105223.P13230067683179982169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105223.P13230067683179982169

namespace A105223

/-- `A273190(record[A020639(n+2)+1])` -/
def P13230067683179982169.Spec : Prop :=
  ∀ n, P13230067683179982169.a n = A105223 (n + 1)

end A105223

/-! ## A105223.P14785208525428124909

`A339184(A072055(n+1))`
-/

namespace A105223.P14785208525428124909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339184 (A072055 (n + 1)).toNat

end

end A105223.P14785208525428124909

namespace A105223

/-- `A339184(A072055(n+1))` -/
def P14785208525428124909.Spec : Prop :=
  ∀ n, P14785208525428124909.a n = A105223 (n + 1)

end A105223

/-!
# A105224: Number of squares between n and 2*n inclusive.

The programs for A105224, the canonical program `A105224.P6965163024913057847` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105224 has offset 1).

The definition of A105224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105224.P6965163024913057847

`A000196(2*(n+1))-A000196(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105224

/-- `A000196(2*(n+1))-A000196(n)` -/
def P6965163024913057847.Spec : Prop :=
  ∀ n, P6965163024913057847.a n = A105224 (n + 1)

theorem P6965163024913057847.correct : P6965163024913057847.Spec := by
  intro n
  simp only [A105224, Nat.add_sub_cancel]

end A105224

/-! ## A105224.P5263814163992448380

`ceil(sqrt(2*n+3)+n)-comp[∑[2*n]]`
-/

namespace A105224.P5263814163992448380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 3 : ℝ) + (n : ℝ)⌉ - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A105224.P5263814163992448380

namespace A105224

/-- `ceil(sqrt(2*n+3)+n)-comp[∑[2*n]]` -/
def P5263814163992448380.Spec : Prop :=
  ∀ n, P5263814163992448380.a n = A105224 (n + 1)

end A105224

/-! ## A105224.P13826255145851550044

`A000027(A003059(2*n+3)-A003059(n+1))`
-/

namespace A105224.P13826255145851550044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A003059 (2 * n + 3) - A003059 (n + 1)).toNat

end

end A105224.P13826255145851550044

namespace A105224

/-- `A000027(A003059(2*n+3)-A003059(n+1))` -/
def P13826255145851550044.Spec : Prop :=
  ∀ n, P13826255145851550044.a n = A105224 (n + 1)

end A105224

/-!
# A105225: a(n+3) = 2a(n+2) - 3a(n+1) + 2a(n); a(0) = 1, a(1) = -1, a(2) = -2.

The programs for A105225, the canonical program `A105225.P12311521313674645843` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105225 has offset 0).

The definition of A105225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105225.P12311521313674645843

`(A002249(n+1)+1)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105225

/-- `(A002249(n+1)+1)/2` -/
def P12311521313674645843.Spec : Prop :=
  ∀ n, P12311521313674645843.a n = (A105225 n : ℚ)

end A105225

/-! ## A105225.P7405589365380531519

`∑[ogf((1-3x+3x^2)/(1-x+2x^2))]`
-/

namespace A105225.P7405589365380531519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105225.P7405589365380531519

namespace A105225

/-- `∑[ogf((1-3x+3x^2)/(1-x+2x^2))]` -/
def P7405589365380531519.Spec : Prop :=
  ∀ n, P7405589365380531519.a n = A105225 n

end A105225

/-! ## A105225.P189293686482375148

`ogf((1-3x+3x^2)/(1-2x+3x^2-2x^3))`
-/

namespace A105225.P189293686482375148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -2, 3, -2] n

end

end A105225.P189293686482375148

namespace A105225

/-- `ogf((1-3x+3x^2)/(1-2x+3x^2-2x^3))` -/
def P189293686482375148.Spec : Prop :=
  ∀ n, P189293686482375148.a n = A105225 n

end A105225

/-! ## A105225.P14349952585642562303

`a(n-1)+1-2*a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A105225.P14349952585642562303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 1) + (1 - 2 * a (n - 2))

end

end A105225.P14349952585642562303

namespace A105225

/-- `a(n-1)+1-2*a(n-2)` -/
def P14349952585642562303.Spec : Prop :=
  ∀ n, P14349952585642562303.a n = A105225 n

end A105225

/-! ## A105225.P16511772962486121526

`1-(2*a(n-2)-a(n-1))` with `a(0)=1, a(1)=-1`
-/

namespace A105225.P16511772962486121526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  1 - (2 * a (n - 2) - a (n - 1))

end

end A105225.P16511772962486121526

namespace A105225

/-- `1-(2*a(n-2)-a(n-1))` -/
def P16511772962486121526.Spec : Prop :=
  ∀ n, P16511772962486121526.a n = A105225 n

end A105225

/-! ## A105225.P5759470176474158490

`1-(a(n-2)+a(n-2)-a(n-1))` with `a(0)=1, a(1)=-1`
-/

namespace A105225.P5759470176474158490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  1 - (a (n - 2) + (a (n - 2) - a (n - 1)))

end

end A105225.P5759470176474158490

namespace A105225

/-- `1-(a(n-2)+a(n-2)-a(n-1))` -/
def P5759470176474158490.Spec : Prop :=
  ∀ n, P5759470176474158490.a n = A105225 n

end A105225

/-! ## A105225.P2833087458974267122

`1-(a(n-2)-a(n-1))-a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A105225.P2833087458974267122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  1 - (a (n - 2) - a (n - 1)) - a (n - 2)

end

end A105225.P2833087458974267122

namespace A105225

/-- `1-(a(n-2)-a(n-1))-a(n-2)` -/
def P2833087458974267122.Spec : Prop :=
  ∀ n, P2833087458974267122.a n = A105225 n

end A105225

/-! ## A105225.P4741473759036493515

`A105578(n)+A078020(n+1)`
-/

namespace A105225.P4741473759036493515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n + A078020 (n + 1)

end

end A105225.P4741473759036493515

namespace A105225

/-- `A105578(n)+A078020(n+1)` -/
def P4741473759036493515.Spec : Prop :=
  ∀ n, P4741473759036493515.a n = A105225 n

end A105225

/-! ## A105225.P2050371752667968642

`A105578(n+1)-A107920(n)`
-/

namespace A105225.P2050371752667968642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 (n + 1) - A107920 n

end

end A105225.P2050371752667968642

namespace A105225

/-- `A105578(n+1)-A107920(n)` -/
def P2050371752667968642.Spec : Prop :=
  ∀ n, P2050371752667968642.a n = A105225 n

end A105225

/-! ## A105225.P13128202113050736007

`A105578(n)-2*A107920(n)`
-/

namespace A105225.P13128202113050736007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n - 2 * A107920 n

end

end A105225.P13128202113050736007

namespace A105225

/-- `A105578(n)-2*A107920(n)` -/
def P13128202113050736007.Spec : Prop :=
  ∀ n, P13128202113050736007.a n = A105225 n

end A105225

/-! ## A105225.P13335552703438390756

`A105578(n+1)+Δ[A105578(n)]`
-/

namespace A105225.P13335552703438390756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 (n + 1) + (f1 (n + 1) - f1 n)

end

end A105225.P13335552703438390756

namespace A105225

/-- `A105578(n+1)+Δ[A105578(n)]` -/
def P13335552703438390756.Spec : Prop :=
  ∀ n, P13335552703438390756.a n = A105225 n

end A105225

/-! ## A105225.P2849208695725142404

`2-A105579(n)`
-/

namespace A105225.P2849208695725142404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A105579 n

end

end A105225.P2849208695725142404

namespace A105225

/-- `2-A105579(n)` -/
def P2849208695725142404.Spec : Prop :=
  ∀ n, P2849208695725142404.a n = A105225 n

end A105225

/-! ## A105225.P1766656853962463133

`a(n-1)-A002249(n-1)` with `a(0)=1`
-/

namespace A105225.P1766656853962463133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A002249 (n - 1)

end

end A105225.P1766656853962463133

namespace A105225

/-- `a(n-1)-A002249(n-1)` -/
def P1766656853962463133.Spec : Prop :=
  ∀ n, P1766656853962463133.a n = A105225 n

end A105225

/-! ## A105225.P15098766749538849727

`A078020(n)+1-A077876(n)`
-/

namespace A105225.P15098766749538849727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n + (1 - A077876 n)

end

end A105225.P15098766749538849727

namespace A105225

/-- `A078020(n)+1-A077876(n)` -/
def P15098766749538849727.Spec : Prop :=
  ∀ n, P15098766749538849727.a n = A105225 n

end A105225

/-! ## A105225.P6665102012305257370

`ceil(Δ[A105579(n+1)/2])`
-/

namespace A105225.P6665102012305257370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105579 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A105225.P6665102012305257370

namespace A105225

/-- `ceil(Δ[A105579(n+1)/2])` -/
def P6665102012305257370.Spec : Prop :=
  ∀ n, P6665102012305257370.a n = A105225 n

end A105225

/-! ## A105225.P2855576065235995940

`A002249(n)+1-∑[A002249(n)]`
-/

namespace A105225.P2855576065235995940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105225.P2855576065235995940

namespace A105225

/-- `A002249(n)+1-∑[A002249(n)]` -/
def P2855576065235995940.Spec : Prop :=
  ∀ n, P2855576065235995940.a n = A105225 n

end A105225

/-! ## A105225.P16487887979790310823

`ceil(A002249(n+1)/2)`
-/

namespace A105225.P16487887979790310823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002249 (n + 1) : ℚ) / 2⌉

end

end A105225.P16487887979790310823

namespace A105225

/-- `ceil(A002249(n+1)/2)` -/
def P16487887979790310823.Spec : Prop :=
  ∀ n, P16487887979790310823.a n = A105225 n

end A105225

/-! ## A105225.P865124357655073206

`A107920(n)+A077876(n+2)`
-/

namespace A105225.P865124357655073206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n + A077876 (n + 2)

end

end A105225.P865124357655073206

namespace A105225

/-- `A107920(n)+A077876(n+2)` -/
def P865124357655073206.Spec : Prop :=
  ∀ n, P865124357655073206.a n = A105225 n

end A105225

/-! ## A105225.P9748016208469793004

`A105576(n+1)/2-A107920(n+1)`
-/

namespace A105225.P9748016208469793004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105576 (n + 1) : ℚ) / 2 - (A107920 (n + 1) : ℚ)

end

end A105225.P9748016208469793004

namespace A105225

/-- `A105576(n+1)/2-A107920(n+1)` -/
def P9748016208469793004.Spec : Prop :=
  ∀ n, P9748016208469793004.a n = (A105225 n : ℚ)

end A105225

/-! ## A105225.P10507613972013645856

`A105576(n+1)-(A105578(n+1)+A002249(n))`
-/

namespace A105225.P10507613972013645856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105576 (n + 1) - (A105578 (n + 1) + A002249 n)

end

end A105225.P10507613972013645856

namespace A105225

/-- `A105576(n+1)-(A105578(n+1)+A002249(n))` -/
def P10507613972013645856.Spec : Prop :=
  ∀ n, P10507613972013645856.a n = A105225 n

end A105225

/-!
# A105226: Smallest prime p such that the number represented by the decimal string 1p1 is a product of n distinct primes.

The programs for A105226, there is no canonical definition to state claims against.
-/

/-! ## A105226.P5601569902621444098

`p?[∑[A129400(and(n, 2*n))]]`
-/

namespace A105226.P5601569902621444098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129400 (Nat.land n (2 * n))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105226.P5601569902621444098

/-!
# A105227: Coefficients of the expansion in 1/(2d) of the Green function G(0,1) for brownian motion.

The programs for A105227, there is no canonical definition to state claims against.
-/

/-! ## A105227.P2147437989861513648

`A238796(n)+A167865(A238796(n))`
-/

namespace A105227.P2147437989861513648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238796 n + A167865 (A238796 n).toNat

end

end A105227.P2147437989861513648

/-! ## A105227.P1095180082819370388

`A004526(A351756(n)+A344970(3*n+4))`
-/

namespace A105227.P1095180082819370388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A351756 n + A344970 (3 * n + 4)).toNat

end

end A105227.P1095180082819370388

/-! ## A105227.P13460547569382128790

`A006370(A351756(n)+A344970(3*n+4))`
-/

namespace A105227.P13460547569382128790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A351756 n + A344970 (3 * n + 4)).toNat

end

end A105227.P13460547569382128790

/-!
# A105228: a(n) = A102370(n) + 1.

The programs for A105228, there is no canonical definition to state claims against.
-/

/-! ## A105228.P7968244193955687193

`A102370(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105228.P7968244193955687193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n + 1

end

end A105228.P7968244193955687193

/-! ## A105228.P15912753408342465158

`A105023(n)+1+n`
-/

namespace A105228.P15912753408342465158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 n + 1 + (n : ℤ)

end

end A105228.P15912753408342465158

/-! ## A105228.P11635685082853260367

`2*A103185(n)+1+n`
-/

namespace A105228.P11635685082853260367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103185 n + 1 + (n : ℤ)

end

end A105228.P11635685082853260367

/-! ## A105228.P5779747634370065599

`∑[A104378(abs(1-n))]-2`
-/

namespace A105228.P5779747634370065599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A105228.P5779747634370065599

/-! ## A105228.P49447865813126713

`A104378(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A105228.P49447865813126713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104378 (n - 1) + a (n - 1)

end

end A105228.P49447865813126713

/-! ## A105228.P5024981550048525586

`A005408(A103185(n))+n`
-/

namespace A105228.P5024981550048525586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A103185 n).toNat + (n : ℤ)

end

end A105228.P5024981550048525586

/-! ## A105228.P657275480629652246

`A004442(A105023(n))+n`
-/

namespace A105228.P657275480629652246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A105023 n).toNat + (n : ℤ)

end

end A105228.P657275480629652246

/-! ## A105228.P18045901147132020449

`A004273(A103185(n)+1)+n`
-/

namespace A105228.P18045901147132020449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A103185 n + 1).toNat + (n : ℤ)

end

end A105228.P18045901147132020449

/-! ## A105228.P15708663735760579125

`1-(A001489(n)-A105023(n))`
-/

namespace A105228.P15708663735760579125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - A105023 n)

end

end A105228.P15708663735760579125

/-! ## A105228.P11497518481246502419

`A109613(2*A103185(n))+n`
-/

namespace A105228.P11497518481246502419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A103185 n).toNat + (n : ℤ)

end

end A105228.P11497518481246502419

/-! ## A105228.P14255178484315564205

`n-(A023443(n)-A102370(n))`
-/

namespace A105228.P14255178484315564205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A102370 n)

end

end A105228.P14255178484315564205

/-! ## A105228.P7660736173023890594

`A105027(comp[∑[2^n]])+1`
-/

namespace A105228.P7660736173023890594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A105228.P7660736173023890594

/-! ## A105228.P3537010327418097282

`A008619(2*A102370(n))`
-/

namespace A105228.P3537010327418097282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A102370 n).toNat

end

end A105228.P3537010327418097282

/-! ## A105228.P4902770047573666117

`A028242(2*A102370(n))`
-/

namespace A105228.P4902770047573666117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A102370 n).toNat

end

end A105228.P4902770047573666117

/-! ## A105228.P3675959659986738052

`1-A001057(2*A102370(n))`
-/

namespace A105228.P3675959659986738052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (2 * A102370 n).toNat

end

end A105228.P3675959659986738052

/-!
# A105229: a(n) = Sum_{k=0..n} (1-(-1)^( floor( (-n-k)/2^k ) )) * 2^(k-1).

The programs for A105229, there is no canonical definition to state claims against.
-/

/-! ## A105229.P15468495079239598716

`A105025(and(-A005843(n), A126646(n)))`
-/

namespace A105229.P15468495079239598716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105025 (Int.land (-A005843 n) (A126646 n)).toNat

end

end A105229.P15468495079239598716

/-! ## A105229.P10893488952078748222

`A159966(A126646(n)-A065637(n+1))`
-/

namespace A105229.P10893488952078748222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A126646 n - A065637 (n + 1)).toNat

end

end A105229.P10893488952078748222

/-! ## A105229.P5975180508262090841

`A159966(xor(A065637(n+1), A126646(n)))`
-/

namespace A105229.P5975180508262090841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (Int.xor (A065637 (n + 1)) (A126646 n)).toNat

end

end A105229.P5975180508262090841

/-! ## A105229.P16105595822042995822

`A159966(∑[A000079(n)]-A065637(n+1))`
-/

namespace A105229.P16105595822042995822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (∑ j ∈ Finset.range (n + 1), f1 j - A065637 (n + 1)).toNat

end

end A105229.P16105595822042995822

/-!
# A105234: Central column of a Moebius-binomial triangle.

The programs for A105234, the canonical program `A105234.P16903634671580157466` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105234 has offset 0).

The definition of A105234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105234.P3033801909686500464

`char[comp[∏{p}[2*(n+1), #]]]`
-/

namespace A105234.P3033801909686500464
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A105234.P3033801909686500464

namespace A105234

/-- `char[comp[∏{p}[2*(n+1), #]]]` -/
def P3033801909686500464.Spec : Prop :=
  ∀ n, (P3033801909686500464.a n : ℤ) = A105234 n

end A105234

/-! ## A105234.P6684156004997322951

`char[comp[2*∏{p}[Δ[n²], #]]]`
-/

namespace A105234.P6684156004997322951
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f3 n).natAbs, p)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A105234.P6684156004997322951

namespace A105234

/-- `char[comp[2*∏{p}[Δ[n²], #]]]` -/
def P6684156004997322951.Spec : Prop :=
  ∀ n, (P6684156004997322951.a n : ℤ) = A105234 n

end A105234

/-! ## A105234.P4108757191981287745

`1-char[∏{p}[2*(n+1), #]]`
-/

namespace A105234.P4108757191981287745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A105234.P4108757191981287745

namespace A105234

/-- `1-char[∏{p}[2*(n+1), #]]` -/
def P4108757191981287745.Spec : Prop :=
  ∀ n, P4108757191981287745.a n = A105234 n

end A105234

/-! ## A105234.P4103297141526329023

`A105597(2*n)`
-/

namespace A105234.P4103297141526329023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (2 * n)

end

end A105234.P4103297141526329023

namespace A105234

/-- `A105597(2*n)` -/
def P4103297141526329023.Spec : Prop :=
  ∀ n, P4103297141526329023.a n = A105234 n

end A105234

/-! ## A105234.P16903634671580157466

`A087049(∑[and(2, n)])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105234

/-- `A087049(∑[and(2, n)])` -/
def P16903634671580157466.Spec : Prop :=
  ∀ n, P16903634671580157466.a n = A105234 n

theorem P16903634671580157466.correct : P16903634671580157466.Spec := by
  intro n
  simp only [A105234]

end A105234

/-! ## A105234.P11722989752725182448

`A087049(and(n, n+1))`
-/

namespace A105234.P11722989752725182448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (Nat.land n (n + 1))

end

end A105234.P11722989752725182448

namespace A105234

/-- `A087049(and(n, n+1))` -/
def P11722989752725182448.Spec : Prop :=
  ∀ n, P11722989752725182448.a n = A105234 n

end A105234

/-! ## A105234.P15883364483873948886

`char[comp[A039956(n+1)]]`
-/

namespace A105234.P15883364483873948886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A105234.P15883364483873948886

namespace A105234

/-- `char[comp[A039956(n+1)]]` -/
def P15883364483873948886.Spec : Prop :=
  ∀ n, (P15883364483873948886.a n : ℤ) = A105234 n

end A105234

/-! ## A105234.P8627979046496729694

`1-char[2*A226040(n)]`
-/

namespace A105234.P8627979046496729694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226040 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105234.P8627979046496729694

namespace A105234

/-- `1-char[2*A226040(n)]` -/
def P8627979046496729694.Spec : Prop :=
  ∀ n, P8627979046496729694.a n = A105234 n

end A105234

/-! ## A105234.P8746869341134445477

`char[comp[A007947(2*(n+2))]]`
-/

namespace A105234.P8746869341134445477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 2))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A105234.P8746869341134445477

namespace A105234

/-- `char[comp[A007947(2*(n+2))]]` -/
def P8746869341134445477.Spec : Prop :=
  ∀ n, (P8746869341134445477.a n : ℤ) = A105234 n

end A105234

/-! ## A105234.P677406568614852757

`char[comp[lcm(2, A005117(n+1))]]`
-/

namespace A105234.P677406568614852757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005117 (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A105234.P677406568614852757

namespace A105234

/-- `char[comp[lcm(2, A005117(n+1))]]` -/
def P677406568614852757.Spec : Prop :=
  ∀ n, (P677406568614852757.a n : ℤ) = A105234 n

end A105234

/-! ## A105234.P9448950351115673061

`char[or(n, char[A005117(n+2)])]`
-/

namespace A105234.P9448950351115673061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A105234.P9448950351115673061

namespace A105234

/-- `char[or(n, char[A005117(n+2)])]` -/
def P9448950351115673061.Spec : Prop :=
  ∀ n, (P9448950351115673061.a n : ℤ) = A105234 n

end A105234

/-! ## A105234.P1740917122786061429

`1-char[A007947(2*(n+1))]`
-/

namespace A105234.P1740917122786061429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105234.P1740917122786061429

namespace A105234

/-- `1-char[A007947(2*(n+1))]` -/
def P1740917122786061429.Spec : Prop :=
  ∀ n, P1740917122786061429.a n = A105234 n

end A105234

/-! ## A105234.P14221186000309339655

`1-char[A332462(2*(n+1))]`
-/

namespace A105234.P14221186000309339655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105234.P14221186000309339655

namespace A105234

/-- `1-char[A332462(2*(n+1))]` -/
def P14221186000309339655.Spec : Prop :=
  ∀ n, P14221186000309339655.a n = A105234 n

end A105234

/-! ## A105234.P2755274824169234227

`1-char[A336965(2*(n+1))]`
-/

namespace A105234.P2755274824169234227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105234.P2755274824169234227

namespace A105234

/-- `1-char[A336965(2*(n+1))]` -/
def P2755274824169234227.Spec : Prop :=
  ∀ n, P2755274824169234227.a n = A105234 n

end A105234

/-! ## A105234.P3953528222677679864

`1-and((n+1)*A008683(n), a(n-1))` with `a(0)=1`
-/

namespace A105234.P3953528222677679864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.land ((n + 1 : ℤ) * A008683 n) (a (n - 1))

end

end A105234.P3953528222677679864

namespace A105234

/-- `1-and((n+1)*A008683(n), a(n-1))` -/
def P3953528222677679864.Spec : Prop :=
  ∀ n, P3953528222677679864.a n = A105234 n

end A105234

/-! ## A105234.P11123723800173929994

`A087049(A066104(n))`
-/

namespace A105234.P11123723800173929994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A066104 n).toNat

end

end A105234.P11123723800173929994

namespace A105234

/-- `A087049(A066104(n))` -/
def P11123723800173929994.Spec : Prop :=
  ∀ n, P11123723800173929994.a n = A105234 n

end A105234

/-! ## A105234.P1347645364299141457

`A087049(A201629(n))`
-/

namespace A105234.P1347645364299141457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A201629 n).toNat

end

end A105234.P1347645364299141457

namespace A105234

/-- `A087049(A201629(n))` -/
def P1347645364299141457.Spec : Prop :=
  ∀ n, P1347645364299141457.a n = A105234 n

end A105234

/-! ## A105234.P16577029848569983506

`A087049(A227043(n))`
-/

namespace A105234.P16577029848569983506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A227043 n).toNat

end

end A105234.P16577029848569983506

namespace A105234

/-- `A087049(A227043(n))` -/
def P16577029848569983506.Spec : Prop :=
  ∀ n, P16577029848569983506.a n = A105234 n

end A105234

/-! ## A105234.P12758184357560978567

`A087049(A237420(n))`
-/

namespace A105234.P12758184357560978567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A237420 n).toNat

end

end A105234.P12758184357560978567

namespace A105234

/-- `A087049(A237420(n))` -/
def P12758184357560978567.Spec : Prop :=
  ∀ n, P12758184357560978567.a n = A105234 n

end A105234

/-! ## A105234.P5898109959084647769

`A073097(n-A105570(n))²`
-/

namespace A105234.P5898109959084647769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 ((n : ℤ) - A105570 n).toNat ^ 2

end

end A105234.P5898109959084647769

namespace A105234

/-- `A073097(n-A105570(n))²` -/
def P5898109959084647769.Spec : Prop :=
  ∀ n, P5898109959084647769.a n = A105234 n

end A105234

/-!
# A105235: Partial sums of the central column of a Moebius-binomial triangle.

The programs for A105235, the canonical program `A105235.P366460928391636486` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105235 has offset 0).

The definition of A105235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105235.P12482146149047127993

`∑[char[comp[∏{p}[2*(n+1), #]]]]`
-/

namespace A105235.P12482146149047127993
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105235.P12482146149047127993

namespace A105235

/-- `∑[char[comp[∏{p}[2*(n+1), #]]]]` -/
def P12482146149047127993.Spec : Prop :=
  ∀ n, (P12482146149047127993.a n : ℤ) = A105235 n

end A105235

/-! ## A105235.P9498564887731004457

`∑[1-char[∏{p}[2*(n+1), #]]]`
-/

namespace A105235.P9498564887731004457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105235.P9498564887731004457

namespace A105235

/-- `∑[1-char[∏{p}[2*(n+1), #]]]` -/
def P9498564887731004457.Spec : Prop :=
  ∀ n, P9498564887731004457.a n = A105235 n

end A105235

/-! ## A105235.P12447516688360830534

`∑[and(1, n)^C(∏{p}[n, #], n)]+1`
-/

namespace A105235.P12447516688360830534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n ^ Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A105235.P12447516688360830534

namespace A105235

/-- `∑[and(1, n)^C(∏{p}[n, #], n)]+1` -/
def P12447516688360830534.Spec : Prop :=
  ∀ n, (P12447516688360830534.a n : ℤ) = A105235 n

end A105235

/-! ## A105235.P4622699540537431708

`comp[comp[∏{p}[8*(n+1), #]]+n]-n`
-/

namespace A105235.P4622699540537431708
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A105235.P4622699540537431708

namespace A105235

/-- `comp[comp[∏{p}[8*(n+1), #]]+n]-n` -/
def P4622699540537431708.Spec : Prop :=
  ∀ n, P4622699540537431708.a n = A105235 n

end A105235

/-! ## A105235.P366460928391636486

`∑[A105234(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105235

/-- `∑[A105234(n)]` -/
def P366460928391636486.Spec : Prop :=
  ∀ n, P366460928391636486.a n = A105235 n

theorem P366460928391636486.correct : P366460928391636486.Spec := by
  intro n
  simp only [A105235]

end A105235

/-! ## A105235.P13213710214723037893

`∑[A105597(2*n)]`
-/

namespace A105235.P13213710214723037893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105235.P13213710214723037893

namespace A105235

/-- `∑[A105597(2*n)]` -/
def P13213710214723037893.Spec : Prop :=
  ∀ n, P13213710214723037893.a n = A105235 n

end A105235

/-! ## A105235.P12025367819154611562

`∑[A087049(and(n, n+1))]`
-/

namespace A105235.P12025367819154611562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105235.P12025367819154611562

namespace A105235

/-- `∑[A087049(and(n, n+1))]` -/
def P12025367819154611562.Spec : Prop :=
  ∀ n, P12025367819154611562.a n = A105235 n

end A105235

/-! ## A105235.P9728794757717611593

`∑[char[comp[A039956(n+1)]]]`
-/

namespace A105235.P9728794757717611593
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105235.P9728794757717611593

namespace A105235

/-- `∑[char[comp[A039956(n+1)]]]` -/
def P9728794757717611593.Spec : Prop :=
  ∀ n, (P9728794757717611593.a n : ℤ) = A105235 n

end A105235

/-! ## A105235.P14077741179107410226

`∑[char[comp[lcm(2, A005117(n+1))]]]`
-/

namespace A105235.P14077741179107410226
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005117 (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105235.P14077741179107410226

namespace A105235

/-- `∑[char[comp[lcm(2, A005117(n+1))]]]` -/
def P14077741179107410226.Spec : Prop :=
  ∀ n, (P14077741179107410226.a n : ℤ) = A105235 n

end A105235

/-! ## A105235.P16183692307948479935

`∑[char[or(n, char[A005117(n+2)])]]`
-/

namespace A105235.P16183692307948479935
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105235.P16183692307948479935

namespace A105235

/-- `∑[char[or(n, char[A005117(n+2)])]]` -/
def P16183692307948479935.Spec : Prop :=
  ∀ n, (P16183692307948479935.a n : ℤ) = A105235 n

end A105235

/-!
# A105236: a(n+5) = (a(n+4)*a(n+1) + 2*a(n+3)*a(n+2))/a(n).

The programs for A105236, there is no canonical definition to state claims against.
-/

/-! ## A105236.P2712235192176258648

`A159284(A115671(n*A196222(n)))`
-/

namespace A105236.P2712235192176258648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (A115671 ((n : ℤ) * A196222 n).toNat).toNat

end

end A105236.P2712235192176258648

/-! ## A105236.P11102684916431556452

`A159284(A115671(n)^A196222(n))`
-/

namespace A105236.P11102684916431556452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (SequenceMachineLib.roundAway ((A115671 n : ℚ) ^ (A196222 n : ℤ))).toNat

end

end A105236.P11102684916431556452

/-! ## A105236.P7283381278007691601

`A233970(∑{p}[n+1, n²%#]%(n+1)*a(n-1))` with `a(0)=1`
-/

namespace A105236.P7283381278007691601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A233970 ((((∑ p ∈ Nat.primeFactors (f1 n), n ^ 2 % p) % (n + 1) : ℕ) : ℤ) * a (n - 1)).toNat

end

end A105236.P7283381278007691601

/-! ## A105236.P17186776456323465779

`A126290(A190159(n))`
-/

namespace A105236.P17186776456323465779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126290 (A190159 n).toNat

end

end A105236.P17186776456323465779

/-! ## A105236.P6034197140141425722

`A343886(A002531(n))`
-/

namespace A105236.P6034197140141425722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343886 (A002531 n).toNat

end

end A105236.P6034197140141425722

/-!
# A105237: Positive integers n such that n^13 + 1 is semiprime.

The programs for A105237, there is no canonical definition to state claims against.
-/

/-! ## A105237.P13197755616728140666

`p?[A250181(n+1)+1]-1`
-/

namespace A105237.P13197755616728140666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250181 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A105237.P13197755616728140666

/-! ## A105237.P12698708560209255762

`xor(p?[A250181(n+1)+1], A038712(2*n+1))`
-/

namespace A105237.P12698708560209255762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250181 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A038712 (2 * n + 1))

end

end A105237.P12698708560209255762

/-! ## A105237.P15568016671244626740

`∩[A006093(n+1), A250181(n+1)]`
-/

namespace A105237.P15568016671244626740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105237.P15568016671244626740

/-! ## A105237.P11526926476174755579

`A000010(p?[A250181(n+1)+1])`
-/

namespace A105237.P11526926476174755579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250181 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105237.P11526926476174755579

/-! ## A105237.P2495340284002205303

`A003958(p?[A250181(n+1)+1])`
-/

namespace A105237.P2495340284002205303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250181 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105237.P2495340284002205303

/-! ## A105237.P3468809767076661082

`record[A020639(A250181(n+1)+1)-1]`
-/

namespace A105237.P3468809767076661082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A250181 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105237.P3468809767076661082

/-! ## A105237.P16308996832007495463

`record[A258409(A250181(n+1)+1)]`
-/

namespace A105237.P16308996832007495463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258409 (A250181 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105237.P16308996832007495463

/-! ## A105237.P14813247815758287326

`A004442(p?[A250181(n+1)+1])`
-/

namespace A105237.P14813247815758287326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250181 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105237.P14813247815758287326

/-! ## A105237.P3623694248223552017

`record[A258409(A004442(A250181(n+1)))]`
-/

namespace A105237.P3623694248223552017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258409 (A004442 (A250181 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105237.P3623694248223552017

/-! ## A105237.P2158859538353664982

`∩[A132631(n+1), A250181(n+1)]`
-/

namespace A105237.P2158859538353664982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105237.P2158859538353664982

/-!
# A105239: Trajectory of 1 under the morphism 1 -> 121, 2 -> 434, 3 -> 212, 4 -> 343.

The programs for A105239, there is no canonical definition to state claims against.
-/

/-! ## A105239.P9831154035813703182

`A048767(and(A105646(n), A183010(n)))`
-/

namespace A105239.P9831154035813703182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048767 (Int.land (A105646 n) (A183010 n)).toNat

end

end A105239.P9831154035813703182

/-! ## A105239.P6880771831477311491

`A073846(and(A105646(n), A183010(n)))`
-/

namespace A105239.P6880771831477311491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Int.land (A105646 n) (A183010 n)).toNat

end

end A105239.P6880771831477311491

/-! ## A105239.P7621347522255195087

`A075383(and(A105646(n), A183010(n)))`
-/

namespace A105239.P7621347522255195087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (Int.land (A105646 n) (A183010 n)).toNat

end

end A105239.P7621347522255195087

/-! ## A105239.P7058332238396106883

`A166133(and(A105646(n), A183010(n)))`
-/

namespace A105239.P7058332238396106883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (Int.land (A105646 n) (A183010 n)).toNat

end

end A105239.P7058332238396106883

/-! ## A105239.P9215254911525028840

`A075383(A105646(n)*A160467(2*n+1))`
-/

namespace A105239.P9215254911525028840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (A105646 n * A160467 (2 * n + 1)).toNat

end

end A105239.P9215254911525028840

/-! ## A105239.P3727107319583237884

`A105646(A037314(n))`
-/

namespace A105239.P3727107319583237884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105646 (A037314 n).toNat

end

end A105239.P3727107319583237884

/-! ## A105239.P1187141894362767537

`A105646(A163344(n))`
-/

namespace A105239.P1187141894362767537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105646 (A163344 n).toNat

end

end A105239.P1187141894362767537

/-!
# A105241: See Mathematica program.

The programs for A105241, there is no canonical definition to state claims against.
-/

/-! ## A105241.P9564406981610924654

`A000225(n)%A112046(A000358(n+1))`
-/

namespace A105241.P9564406981610924654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 n) (A112046 (A000358 (n + 1)).toNat)

end

end A105241.P9564406981610924654

/-! ## A105241.P13056614051774588163

`A264401(A350942(3*(n+1))+A000005(n+1))`
-/

namespace A105241.P13056614051774588163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264401 (A350942 (3 * (n + 1)) + A000005 (n + 1)).toNat

end

end A105241.P13056614051774588163

/-! ## A105241.P3220825939298969526

`A257990(A331175(3*(n+1)))^A168549(3*n)`
-/

namespace A105241.P3220825939298969526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257990 (A331175 (3 * (n + 1))).toNat : ℚ) ^ (A168549 (3 * n) : ℤ)

end

end A105241.P3220825939298969526

/-! ## A105241.P8391172082555648014

`A047988(A078778(n+1)*A135481(2*n+3))`
-/

namespace A105241.P8391172082555648014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (A078778 (n + 1) * A135481 (2 * n + 3)).toNat

end

end A105241.P8391172082555648014

/-! ## A105241.P685771365299437118

`A035361(A246142(n+1)+A001222(n+1))`
-/

namespace A105241.P685771365299437118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035361 (A246142 (n + 1) + A001222 (n + 1)).toNat

end

end A105241.P685771365299437118

/-!
# A105242: A nonsense sequence.

The programs for A105242, there is no canonical definition to state claims against.
-/

/-! ## A105242.P13609888317307101659

`A001221(A214517(∑[A005598(n)]))`
-/

namespace A105242.P13609888317307101659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A214517 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A105242.P13609888317307101659

/-! ## A105242.P3083753663821210963

`A329313(p?[round(8*n/7)]+1)%(4/gcd(2, n))`
-/

namespace A105242.P3083753663821210963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329313 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat) (SequenceMachineLib.roundAway (4 / (Nat.gcd 2 n : ℚ)))

end

end A105242.P3083753663821210963

/-! ## A105242.P15153559012000240255

`and(3^n, A329313(A008864(n+1)))`
-/

namespace A105242.P15153559012000240255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 ^ n : ℤ) (A329313 (A008864 (n + 1)).toNat)

end

end A105242.P15153559012000240255

/-! ## A105242.P15198888776641182698

`and(3^n, A329313(A014688(n+1)-n))`
-/

namespace A105242.P15198888776641182698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 ^ n : ℤ) (A329313 (A014688 (n + 1) - (n : ℤ)).toNat)

end

end A105242.P15198888776641182698

/-! ## A105242.P12813038894974605164

`A327103(A014138(n)%A183079(n+2))`
-/

namespace A105242.P12813038894974605164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (Int.tmod (A014138 n) (A183079 (n + 2))).toNat

end

end A105242.P12813038894974605164

/-!
# A105243: Tensor 2 X 2 X 2 matrix Fibonacci isomer in which the second matrix is altered.

The programs for A105243, there is no canonical definition to state claims against.
-/

/-! ## A105243.P4992692389234335434

`A025462(or(A008366(n+1), A080529(n)))`
-/

namespace A105243.P4992692389234335434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 (Int.lor (A008366 (n + 1)) (A080529 n)).toNat

end

end A105243.P4992692389234335434

/-! ## A105243.P5416187644976870501

`and(A086247(n+1), A290107(A008558(n+1)))`
-/

namespace A105243.P5416187644976870501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086247 (n + 1)) (A290107 (A008558 (n + 1)).toNat)

end

end A105243.P5416187644976870501

/-! ## A105243.P10018412691969666349

`A049320(A000032(n))+n%2`
-/

namespace A105243.P10018412691969666349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049320 (A000032 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A105243.P10018412691969666349

/-! ## A105243.P18219365221962735805

`A049320(A000032(n))+A000035(n)`
-/

namespace A105243.P18219365221962735805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049320 (A000032 n).toNat + A000035 n

end

end A105243.P18219365221962735805

/-! ## A105243.P5381630791000235586

`A352822(A153176(n)+A077015(n+3))`
-/

namespace A105243.P5381630791000235586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (A153176 n + A077015 (n + 3)).toNat

end

end A105243.P5381630791000235586

/-!
# A105244: Functional substitution on {1,2,3}.

The programs for A105244, there is no canonical definition to state claims against.
-/

/-! ## A105244.P16225408736380107448

`gcd(A100467(n+2), A179149(A007369(n+1)))`
-/

namespace A105244.P16225408736380107448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100467 (n + 2)) (A179149 (A007369 (n + 1)).toNat)

end

end A105244.P16225408736380107448

/-!
# A105245: A nonsense sequence.

The programs for A105245, there is no canonical definition to state claims against.
-/

/-! ## A105245.P1559576762295269100

`gcd(∑{e}[A185037(n), #], A105246(n+1))`
-/

namespace A105245.P1559576762295269100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A105246 (n + 1))

end

end A105245.P1559576762295269100

/-! ## A105245.P7021197340563887316

`gcd(A105246(n+1), A107393(A185037(n)))`
-/

namespace A105245.P7021197340563887316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105246 (n + 1)) (A107393 (A185037 n).toNat)

end

end A105245.P7021197340563887316

/-! ## A105245.P4615691755759744279

`A105246(A090106(n+1))`
-/

namespace A105245.P4615691755759744279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105246 (A090106 (n + 1)).toNat

end

end A105245.P4615691755759744279

/-! ## A105245.P1081240447888401193

`A105246(n+1)*A167155(A000040(n+1))`
-/

namespace A105245.P1081240447888401193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105246 (n + 1) * A167155 (A000040 (n + 1)).toNat

end

end A105245.P1081240447888401193

/-! ## A105245.P7111400987983011594

`A105246(n+1)/A178638(A178576(n+1))`
-/

namespace A105245.P7111400987983011594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105246 (n + 1) : ℚ) / (A178638 (A178576 (n + 1)).toNat : ℚ)

end

end A105245.P7111400987983011594

/-!
# A105246: A nonsense sequence.

The programs for A105246, there is no canonical definition to state claims against.
-/

/-! ## A105246.P16873000689440493344

`A105245(record[A058348(n)+n])`
-/

namespace A105246.P16873000689440493344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105246.P16873000689440493344

/-!
# A105247: Product of digits of Roman Numerals.

The programs for A105247, there is no canonical definition to state claims against.
-/

/-! ## A105247.P17571901212065667194

`∏{digits}[A061493(n+1), A003587(#)]`
-/

namespace A105247.P17571901212065667194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003587 x).prod

end

end A105247.P17571901212065667194

/-! ## A105247.P13958729786764877716

`∏{digits}[A061493(n+1), A036788(#)]%A050838(n+1)`
-/

namespace A105247.P13958729786764877716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036788 x).prod (A050838 (n + 1))

end

end A105247.P13958729786764877716

/-! ## A105247.P10330503833592714121

`A004525(2*∏{digits}[A061493(n+1), A036788(#)])`
-/

namespace A105247.P10330503833592714121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036788 x).prod).toNat

end

end A105247.P10330503833592714121

/-! ## A105247.P9595923112540383796

`A094636(A179309(n+1))`
-/

namespace A105247.P9595923112540383796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094636 (A179309 (n + 1)).toNat

end

end A105247.P9595923112540383796

/-!
# A105248: Number of distinct prime divisors of 88...887 (with n 8's).

The programs for A105248, there is no canonical definition to state claims against.
-/

/-! ## A105248.P7491238274573190827

`A001221(A338062(n+1)+A001357(n))`
-/

namespace A105248.P7491238274573190827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A338062 (n + 1) + A001357 n).toNat

end

end A105248.P7491238274573190827

/-! ## A105248.P7405298693130612817

`A060118(A275649(n+1)%A102498(n))`
-/

namespace A105248.P7405298693130612817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060118 (Int.tmod (A275649 (n + 1)) (A102498 n)).toNat

end

end A105248.P7405298693130612817

/-! ## A105248.P703435933086895084

`A124769(A152950(n+1)-A194893(n+1))`
-/

namespace A105248.P703435933086895084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A152950 (n + 1) - A194893 (n + 1)).toNat

end

end A105248.P703435933086895084

/-! ## A105248.P2601694268334658087

`A296612(and(A105492(n+6), A327498(n+1)))`
-/

namespace A105248.P2601694268334658087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 (Int.land (A105492 (n + 6)) (A327498 (n + 1))).toNat

end

end A105248.P2601694268334658087

/-! ## A105248.P8893320759457126817

`A034003(A359134(n+1))`
-/

namespace A105248.P8893320759457126817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034003 (A359134 (n + 1)).toNat

end

end A105248.P8893320759457126817

/-!
# A105249: a(n) = binomial(n+2,n)*binomial(n+6,n).

The programs for A105249, the canonical program `A105249.P16661237977208008297` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105249 has offset 0).

The definition of A105249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105249.P16661237977208008297

`C(n+6, 6)*∑[n+1]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A105249

/-- `C(n+6, 6)*∑[n+1]` -/
def P16661237977208008297.Spec : Prop :=
  ∀ n, (P16661237977208008297.a n : ℤ) = A105249 n

theorem P16661237977208008297.correct : P16661237977208008297.Spec := by
  intro n
  simp only [A105249]

end A105249

/-! ## A105249.P3109949264216495427

`∑[n+1]*∑[∑[∑[∑[∑[n+1]]]]]`
-/

namespace A105249.P3109949264216495427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A105249.P3109949264216495427

namespace A105249

/-- `∑[n+1]*∑[∑[∑[∑[∑[n+1]]]]]` -/
def P3109949264216495427.Spec : Prop :=
  ∀ n, (P3109949264216495427.a n : ℤ) = A105249 n

end A105249

/-! ## A105249.P4221984064937635737

`∑[(n+1)*A051947(n)]`
-/

namespace A105249.P4221984064937635737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105249.P4221984064937635737

namespace A105249

/-- `∑[(n+1)*A051947(n)]` -/
def P4221984064937635737.Spec : Prop :=
  ∀ n, P4221984064937635737.a n = A105249 n

end A105249

/-! ## A105249.P8787252274806301952

`∑[(n+1)*∑[A034263(n)]]`
-/

namespace A105249.P8787252274806301952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105249.P8787252274806301952

namespace A105249

/-- `∑[(n+1)*∑[A034263(n)]]` -/
def P8787252274806301952.Spec : Prop :=
  ∀ n, P8787252274806301952.a n = A105249 n

end A105249

/-! ## A105249.P13547828429241709421

`(n+1)*A027811(n+1)/6`
-/

namespace A105249.P13547828429241709421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A027811 (n + 1) : ℚ) / 6

end

end A105249.P13547828429241709421

namespace A105249

/-- `(n+1)*A027811(n+1)/6` -/
def P13547828429241709421.Spec : Prop :=
  ∀ n, P13547828429241709421.a n = (A105249 n : ℚ)

end A105249

/-! ## A105249.P550097980179511708

`∑[(n+1)*∑[∑[A002417(n+1)]]]`
-/

namespace A105249.P550097980179511708
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105249.P550097980179511708

namespace A105249

/-- `∑[(n+1)*∑[∑[A002417(n+1)]]]` -/
def P550097980179511708.Spec : Prop :=
  ∀ n, P550097980179511708.a n = A105249 n

end A105249

/-! ## A105249.P13943303160018191107

`(n+2)*∑[∑[∑[A051740(n)]]]/2`
-/

namespace A105249.P13943303160018191107
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A105249.P13943303160018191107

namespace A105249

/-- `(n+2)*∑[∑[∑[A051740(n)]]]/2` -/
def P13943303160018191107.Spec : Prop :=
  ∀ n, P13943303160018191107.a n = (A105249 n : ℚ)

end A105249

/-! ## A105249.P7713482624415627289

`A027819(n+1)-A027811(n+1)`
-/

namespace A105249.P7713482624415627289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027819 (n + 1) - A027811 (n + 1)

end

end A105249.P7713482624415627289

namespace A105249

/-- `A027819(n+1)-A027811(n+1)` -/
def P7713482624415627289.Spec : Prop :=
  ∀ n, P7713482624415627289.a n = A105249 n

end A105249

/-! ## A105249.P10501717263724191058

`A027780(n+5)-A027791(n+3)`
-/

namespace A105249.P10501717263724191058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027780 (n + 5) - A027791 (n + 3)

end

end A105249.P10501717263724191058

namespace A105249

/-- `A027780(n+5)-A027791(n+3)` -/
def P10501717263724191058.Spec : Prop :=
  ∀ n, P10501717263724191058.a n = A105249 n

end A105249

/-! ## A105249.P945144459254059677

`A104670(n)*A253946(n+5)/A253947(n+6)`
-/

namespace A105249.P945144459254059677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104670 n * A253946 (n + 5) : ℚ) / (A253947 (n + 6) : ℚ)

end

end A105249.P945144459254059677

namespace A105249

/-- `A104670(n)*A253946(n+5)/A253947(n+6)` -/
def P945144459254059677.Spec : Prop :=
  ∀ n, P945144459254059677.a n = (A105249 n : ℚ)

end A105249

/-! ## A105249.P17882231960570768240

`∑[(n+1)*A299336(2*n)]`
-/

namespace A105249.P17882231960570768240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A299336 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105249.P17882231960570768240

namespace A105249

/-- `∑[(n+1)*A299336(2*n)]` -/
def P17882231960570768240.Spec : Prop :=
  ∀ n, P17882231960570768240.a n = A105249 n

end A105249

/-! ## A105249.P16475354211952818048

`A080929(n)*A082140(n)/A011782(n)²`
-/

namespace A105249.P16475354211952818048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080929 n * A082140 n : ℚ) / (A011782 n ^ 2 : ℚ)

end

end A105249.P16475354211952818048

namespace A105249

/-- `A080929(n)*A082140(n)/A011782(n)²` -/
def P16475354211952818048.Spec : Prop :=
  ∀ n, P16475354211952818048.a n = (A105249 n : ℚ)

end A105249

/-! ## A105249.P12822259423001850649

`A062264(∑[n+3])`
-/

namespace A105249.P12822259423001850649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105249.P12822259423001850649

namespace A105249

/-- `A062264(∑[n+3])` -/
def P12822259423001850649.Spec : Prop :=
  ∀ n, P12822259423001850649.a n = A105249 n

end A105249

/-!
# A105250: a(n) = binomial(n+3,n)*binomial(n+7,n).

The programs for A105250, the canonical program `A105250.P4569171865049043815` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105250 has offset 0).

The definition of A105250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105250.P4569171865049043815

`C(n+7, 7)*∑[∑[n+1]]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A105250

/-- `C(n+7, 7)*∑[∑[n+1]]` -/
def P4569171865049043815.Spec : Prop :=
  ∀ n, (P4569171865049043815.a n : ℤ) = A105250 n

theorem P4569171865049043815.correct : P4569171865049043815.Spec := by
  intro n
  simp only [A105250]

end A105250

/-! ## A105250.P1610223904278292222

`∑[∑[n+1]]*∑[∑[∑[∑[∑[∑[n+1]]]]]]`
-/

namespace A105250.P1610223904278292222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A105250.P1610223904278292222

namespace A105250

/-- `∑[∑[n+1]]*∑[∑[∑[∑[∑[∑[n+1]]]]]]` -/
def P1610223904278292222.Spec : Prop :=
  ∀ n, (P1610223904278292222.a n : ℤ) = A105250 n

end A105250

/-! ## A105250.P14686242944080667076

`(n+3)*A104670(n)/3`
-/

namespace A105250.P14686242944080667076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * A104670 n : ℚ) / 3

end

end A105250.P14686242944080667076

namespace A105250

/-- `(n+3)*A104670(n)/3` -/
def P14686242944080667076.Spec : Prop :=
  ∀ n, P14686242944080667076.a n = (A105250 n : ℚ)

end A105250

/-! ## A105250.P9875760669372136335

`A107419(n)/(n/4+1)`
-/

namespace A105250.P9875760669372136335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107419 n : ℚ) / ((n : ℚ) / 4 + 1)

end

end A105250.P9875760669372136335

namespace A105250

/-- `A107419(n)/(n/4+1)` -/
def P9875760669372136335.Spec : Prop :=
  ∀ n, P9875760669372136335.a n = (A105250 n : ℚ)

end A105250

/-! ## A105250.P11152868415594211232

`A000580(n+7)*A001249(n)/A000292(n+1)`
-/

namespace A105250.P11152868415594211232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) * A001249 n : ℚ) / (A000292 (n + 1) : ℚ)

end

end A105250.P11152868415594211232

namespace A105250

/-- `A000580(n+7)*A001249(n)/A000292(n+1)` -/
def P11152868415594211232.Spec : Prop :=
  ∀ n, P11152868415594211232.a n = (A105250 n : ℚ)

end A105250

/-! ## A105250.P954085318476032915

`A000292(n+1)+A000292(n+1)*A124090(n+7)`
-/

namespace A105250.P954085318476032915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + A000292 (n + 1) * A124090 (n + 7)

end

end A105250.P954085318476032915

namespace A105250

/-- `A000292(n+1)+A000292(n+1)*A124090(n+7)` -/
def P954085318476032915.Spec : Prop :=
  ∀ n, P954085318476032915.a n = A105250 n

end A105250

/-! ## A105250.P4979742655721738089

`A000580(n+7)*A001789(n+3)/A000079(n)`
-/

namespace A105250.P4979742655721738089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) * A001789 (n + 3) : ℚ) / (A000079 n : ℚ)

end

end A105250.P4979742655721738089

namespace A105250

/-- `A000580(n+7)*A001789(n+3)/A000079(n)` -/
def P4979742655721738089.Spec : Prop :=
  ∀ n, P4979742655721738089.a n = (A105250 n : ℚ)

end A105250

/-! ## A105250.P5909789783684881809

`A062264(A055998(n+2)-1)`
-/

namespace A105250.P5909789783684881809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062264 (A055998 (n + 2) - 1).toNat

end

end A105250.P5909789783684881809

namespace A105250

/-- `A062264(A055998(n+2)-1)` -/
def P5909789783684881809.Spec : Prop :=
  ∀ n, P5909789783684881809.a n = A105250 n

end A105250

/-! ## A105250.P11169512854042029135

`A062264(A000096(n+2)+n+1)`
-/

namespace A105250.P11169512854042029135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062264 (A000096 (n + 2) + (n + 1 : ℤ)).toNat

end

end A105250.P11169512854042029135

namespace A105250

/-- `A062264(A000096(n+2)+n+1)` -/
def P11169512854042029135.Spec : Prop :=
  ∀ n, P11169512854042029135.a n = A105250 n

end A105250

/-! ## A105250.P3007246444123280634

`A062264(A034856(n+2)+n+2)`
-/

namespace A105250.P3007246444123280634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062264 (A034856 (n + 2) + (n + 2 : ℤ)).toNat

end

end A105250.P3007246444123280634

namespace A105250

/-- `A062264(A034856(n+2)+n+2)` -/
def P3007246444123280634.Spec : Prop :=
  ∀ n, P3007246444123280634.a n = A105250 n

end A105250

/-!
# A105251: a(n) = binomial(n+4,n)*binomial(n+8,n).

The programs for A105251, the canonical program `A105251.P856591397938001777` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105251 has offset 0).

The definition of A105251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105251.P856591397938001777

`C(n+8, 8)*∑[∑[∑[n+1]]]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A105251

/-- `C(n+8, 8)*∑[∑[∑[n+1]]]` -/
def P856591397938001777.Spec : Prop :=
  ∀ n, (P856591397938001777.a n : ℤ) = A105251 n

theorem P856591397938001777.correct : P856591397938001777.Spec := by
  intro n
  simp only [A105251]

end A105251

/-! ## A105251.P6930288432019384777

`(n/8+1)*A107419(n)`
-/

namespace A105251.P6930288432019384777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 8 + 1) * (A107419 n : ℚ)

end

end A105251.P6930288432019384777

namespace A105251

/-- `(n/8+1)*A107419(n)` -/
def P6930288432019384777.Spec : Prop :=
  ∀ n, P6930288432019384777.a n = (A105251 n : ℚ)

end A105251

/-! ## A105251.P5618177273610935131

`∑[∑[∑[n+1]]*A053367(n)]`
-/

namespace A105251.P5618177273610935131
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A053367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105251.P5618177273610935131

namespace A105251

/-- `∑[∑[∑[n+1]]*A053367(n)]` -/
def P5618177273610935131.Spec : Prop :=
  ∀ n, P5618177273610935131.a n = A105251 n

end A105251

/-! ## A105251.P15781894848471394536

`∑[A000292(n+1)]*∑[A000580(n+7)]`
-/

namespace A105251.P15781894848471394536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A105251.P15781894848471394536

namespace A105251

/-- `∑[A000292(n+1)]*∑[A000580(n+7)]` -/
def P15781894848471394536.Spec : Prop :=
  ∀ n, P15781894848471394536.a n = A105251 n

end A105251

/-! ## A105251.P6463697807771960435

`a(n-1)+A000292(n+1)*A053367(n)` with `a(0)=1`
-/

namespace A105251.P6463697807771960435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000292 (n + 1) * A053367 n

end

end A105251.P6463697807771960435

namespace A105251

/-- `a(n-1)+A000292(n+1)*A053367(n)` -/
def P6463697807771960435.Spec : Prop :=
  ∀ n, P6463697807771960435.a n = A105251 n

end A105251

/-! ## A105251.P9066143752695355618

`(A063258(n)-A062748(n))*A000581(n+8)`
-/

namespace A105251.P9066143752695355618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063258 n - A062748 n) * A000581 (n + 8)

end

end A105251.P9066143752695355618

namespace A105251

/-- `(A063258(n)-A062748(n))*A000581(n+8)` -/
def P9066143752695355618.Spec : Prop :=
  ∀ n, P9066143752695355618.a n = A105251 n

end A105251

/-! ## A105251.P10918992749158253990

`A062262(n)/n!`
-/

namespace A105251.P10918992749158253990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062262 n : ℚ) / (Nat.factorial n : ℚ)

end

end A105251.P10918992749158253990

namespace A105251

/-- `A062262(n)/n!` -/
def P10918992749158253990.Spec : Prop :=
  ∀ n, P10918992749158253990.a n = (A105251 n : ℚ)

end A105251

/-! ## A105251.P9227479266589229886

`A062262(n)/A000142(n)`
-/

namespace A105251.P9227479266589229886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062262 n : ℚ) / (A000142 n : ℚ)

end

end A105251.P9227479266589229886

namespace A105251

/-- `A062262(n)/A000142(n)` -/
def P9227479266589229886.Spec : Prop :=
  ∀ n, P9227479266589229886.a n = (A105251 n : ℚ)

end A105251

/-! ## A105251.P18422272148429014569

`A001720(n+4)/A000142(n)*A049389(n)/n!`
-/

namespace A105251.P18422272148429014569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001720 (n + 4) : ℚ) / (A000142 n : ℚ) * (A049389 n : ℚ) / (Nat.factorial n : ℚ)

end

end A105251.P18422272148429014569

namespace A105251

/-- `A001720(n+4)/A000142(n)*A049389(n)/n!` -/
def P18422272148429014569.Spec : Prop :=
  ∀ n, P18422272148429014569.a n = (A105251 n : ℚ)

end A105251

/-!
# A105252: a(n) = binomial(n+5,n)*binomial(n+9,n).

The programs for A105252, the canonical program `A105252.P13510397417478235058` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105252 has offset 0).

The definition of A105252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105252.P13510397417478235058

`∑[∑[∑[n+1]]]*A054334(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105252

/-- `∑[∑[∑[n+1]]]*A054334(n)` -/
def P13510397417478235058.Spec : Prop :=
  ∀ n, P13510397417478235058.a n = A105252 n

theorem P13510397417478235058.correct : P13510397417478235058.Spec := by
  intro n
  simp only [A105252]

end A105252

/-! ## A105252.P9552084949187133471

`C(n+5, 5)*A000582(n+9)`
-/

namespace A105252.P9552084949187133471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A000582 (n + 9)

end

end A105252.P9552084949187133471

namespace A105252

/-- `C(n+5, 5)*A000582(n+9)` -/
def P9552084949187133471.Spec : Prop :=
  ∀ n, P9552084949187133471.a n = A105252 n

end A105252

/-! ## A105252.P7915206807440719550

`(A051745(n+1)-(n+1))*A000582(n+9)`
-/

namespace A105252.P7915206807440719550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051745 (n + 1) - (n + 1 : ℤ)) * A000582 (n + 9)

end

end A105252.P7915206807440719550

namespace A105252

/-- `(A051745(n+1)-(n+1))*A000582(n+9)` -/
def P7915206807440719550.Spec : Prop :=
  ∀ n, P7915206807440719550.a n = A105252 n

end A105252

/-! ## A105252.P7524490433618627279

`(A051745(n+1)-(n+1))*∑[A000581(n+8)]`
-/

namespace A105252.P7524490433618627279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051745 (n + 1) - (n + 1 : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105252.P7524490433618627279

namespace A105252

/-- `(A051745(n+1)-(n+1))*∑[A000581(n+8)]` -/
def P7524490433618627279.Spec : Prop :=
  ∀ n, P7524490433618627279.a n = A105252 n

end A105252

/-! ## A105252.P14727372876540905056

`A000582(n+9)*A178822(∑[n])`
-/

namespace A105252.P14727372876540905056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A178822 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105252.P14727372876540905056

namespace A105252

/-- `A000582(n+9)*A178822(∑[n])` -/
def P14727372876540905056.Spec : Prop :=
  ∀ n, P14727372876540905056.a n = A105252 n

end A105252

/-! ## A105252.P13379208499663193074

`A062264(A302537(n+2)-(2*n+1))`
-/

namespace A105252.P13379208499663193074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062264 (A302537 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A105252.P13379208499663193074

namespace A105252

/-- `A062264(A302537(n+2)-(2*n+1))` -/
def P13379208499663193074.Spec : Prop :=
  ∀ n, P13379208499663193074.a n = A105252 n

end A105252

/-! ## A105252.P11580444025426377537

`A001725(n+5)/A000142(n+1)*A056114(n)`
-/

namespace A105252.P11580444025426377537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001725 (n + 5) : ℚ) / (A000142 (n + 1) : ℚ) * (A056114 n : ℚ)

end

end A105252.P11580444025426377537

namespace A105252

/-- `A001725(n+5)/A000142(n+1)*A056114(n)` -/
def P11580444025426377537.Spec : Prop :=
  ∀ n, P11580444025426377537.a n = (A105252 n : ℚ)

end A105252

/-! ## A105252.P421363599631788365

`A062263(n)/n!`
-/

namespace A105252.P421363599631788365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062263 n : ℚ) / (Nat.factorial n : ℚ)

end

end A105252.P421363599631788365

namespace A105252

/-- `A062263(n)/n!` -/
def P421363599631788365.Spec : Prop :=
  ∀ n, P421363599631788365.a n = (A105252 n : ℚ)

end A105252

/-! ## A105252.P3446138881908310338

`A062263(n)/A000142(n)`
-/

namespace A105252.P3446138881908310338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062263 n : ℚ) / (A000142 n : ℚ)

end

end A105252.P3446138881908310338

namespace A105252

/-- `A062263(n)/A000142(n)` -/
def P3446138881908310338.Spec : Prop :=
  ∀ n, P3446138881908310338.a n = (A105252 n : ℚ)

end A105252

/-! ## A105252.P4347946041989236036

`A001725(n+5)/A000142(n)*A049398(n)/n!`
-/

namespace A105252.P4347946041989236036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001725 (n + 5) : ℚ) / (A000142 n : ℚ) * (A049398 n : ℚ) / (Nat.factorial n : ℚ)

end

end A105252.P4347946041989236036

namespace A105252

/-- `A001725(n+5)/A000142(n)*A049398(n)/n!` -/
def P4347946041989236036.Spec : Prop :=
  ∀ n, P4347946041989236036.a n = (A105252 n : ℚ)

end A105252

/-!
# A105253: a(n) = binomial(n+6,n)*binomial(n+10,n).

The programs for A105253, the canonical program `A105253.P14915572952284782147` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105253 has offset 0).

The definition of A105253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105253.P14915572952284782147

`C(n+6, 6)*A001287(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105253

/-- `C(n+6, 6)*A001287(n)` -/
def P14915572952284782147.Spec : Prop :=
  ∀ n, P14915572952284782147.a n = A105253 n

theorem P14915572952284782147.correct : P14915572952284782147.Spec := by
  intro n
  simp only [A105253]

end A105253

/-! ## A105253.P13330825029932614555

`A253946(n+5)/6*A001287(n)`
-/

namespace A105253.P13330825029932614555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253946 (n + 5) : ℚ) / 6 * (A001287 (n + 10) : ℚ)

end

end A105253.P13330825029932614555

namespace A105253

/-- `A253946(n+5)/6*A001287(n)` -/
def P13330825029932614555.Spec : Prop :=
  ∀ n, P13330825029932614555.a n = (A105253 n : ℚ)

end A105253

/-! ## A105253.P7047808108677635617

`∑[A000389(n+5)]*A001287(n)`
-/

namespace A105253.P7047808108677635617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001287 (n + 10)

end

end A105253.P7047808108677635617

namespace A105253

/-- `∑[A000389(n+5)]*A001287(n)` -/
def P7047808108677635617.Spec : Prop :=
  ∀ n, P7047808108677635617.a n = A105253 n

end A105253

/-! ## A105253.P1795406837079017686

`∑[A000582(n+9)]*A000579(n+6)`
-/

namespace A105253.P1795406837079017686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000579 (n + 6)

end

end A105253.P1795406837079017686

namespace A105253

/-- `∑[A000582(n+9)]*A000579(n+6)` -/
def P1795406837079017686.Spec : Prop :=
  ∀ n, P1795406837079017686.a n = A105253 n

end A105253

/-! ## A105253.P14931551293873519846

`∑[A000582(n+9)]*A299338(2*n)`
-/

namespace A105253.P14931551293873519846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A299338 (2 * n)

end

end A105253.P14931551293873519846

namespace A105253

/-- `∑[A000582(n+9)]*A299338(2*n)` -/
def P14931551293873519846.Spec : Prop :=
  ∀ n, P14931551293873519846.a n = A105253 n

end A105253

/-! ## A105253.P13968320141253528585

`C(n+6, 6)*A007318(eq[10, A002262(n)])`
-/

namespace A105253.P13968320141253528585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) * A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105253.P13968320141253528585

namespace A105253

/-- `C(n+6, 6)*A007318(eq[10, A002262(n)])` -/
def P13968320141253528585.Spec : Prop :=
  ∀ n, P13968320141253528585.a n = A105253 n

end A105253

/-!
# A105254: a(n) = binomial(n+7,n)*binomial(n+11,n).

The programs for A105254, the canonical program `A105254.P1105968928150324897` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105254 has offset 0).

The definition of A105254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105254.P1105968928150324897

`C(n+7, 7)*C(n+11, 11)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A105254

/-- `C(n+7, 7)*C(n+11, 11)` -/
def P1105968928150324897.Spec : Prop :=
  ∀ n, (P1105968928150324897.a n : ℤ) = A105254 n

theorem P1105968928150324897.correct : P1105968928150324897.Spec := by
  intro n
  simp only [A105254]

end A105254

/-! ## A105254.P5535514777157662560

`C(n+7, 7)*∑[A001287(n)]`
-/

namespace A105254.P5535514777157662560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105254.P5535514777157662560

namespace A105254

/-- `C(n+7, 7)*∑[A001287(n)]` -/
def P5535514777157662560.Spec : Prop :=
  ∀ n, P5535514777157662560.a n = A105254 n

end A105254

/-! ## A105254.P18361830639457345074

`C(n+11, 11)*A000580(n+7)`
-/

namespace A105254.P18361830639457345074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 11) 11 : ℤ) * A000580 (n + 7)

end

end A105254.P18361830639457345074

namespace A105254

/-- `C(n+11, 11)*A000580(n+7)` -/
def P18361830639457345074.Spec : Prop :=
  ∀ n, P18361830639457345074.a n = A105254 n

end A105254

/-! ## A105254.P13132382050114450404

`A000580(n+7)*A001288(n)`
-/

namespace A105254.P13132382050114450404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A001288 (n + 11)

end

end A105254.P13132382050114450404

namespace A105254

/-- `A000580(n+7)*A001288(n)` -/
def P13132382050114450404.Spec : Prop :=
  ∀ n, P13132382050114450404.a n = A105254 n

end A105254

/-! ## A105254.P9876841416508430813

`∑[A001287(n)]*A000580(n+7)`
-/

namespace A105254.P9876841416508430813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000580 (n + 7)

end

end A105254.P9876841416508430813

namespace A105254

/-- `∑[A001287(n)]*A000580(n+7)` -/
def P9876841416508430813.Spec : Prop :=
  ∀ n, P9876841416508430813.a n = A105254 n

end A105254

/-! ## A105254.P4304729982510694942

`∑[∑[A000582(n+9)]]*A000580(n+7)`
-/

namespace A105254.P4304729982510694942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000580 (n + 7)

end

end A105254.P4304729982510694942

namespace A105254

/-- `∑[∑[A000582(n+9)]]*A000580(n+7)` -/
def P4304729982510694942.Spec : Prop :=
  ∀ n, P4304729982510694942.a n = A105254 n

end A105254

/-! ## A105254.P11565612217808730758

`∑[A000579(A020715(n))]*A001288(n)`
-/

namespace A105254.P11565612217808730758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001288 (n + 11)

end

end A105254.P11565612217808730758

namespace A105254

/-- `∑[A000579(A020715(n))]*A001288(n)` -/
def P11565612217808730758.Spec : Prop :=
  ∀ n, P11565612217808730758.a n = A105254 n

end A105254

/-! ## A105254.P10141189500344191752

`∑[A299338(2*n)]*A001288(n)`
-/

namespace A105254.P10141189500344191752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001288 (n + 11)

end

end A105254.P10141189500344191752

namespace A105254

/-- `∑[A299338(2*n)]*A001288(n)` -/
def P10141189500344191752.Spec : Prop :=
  ∀ n, P10141189500344191752.a n = A105254 n

end A105254

/-! ## A105254.P9904767051716133493

`A007318(A167499(n+6)+2)*A001288(n)`
-/

namespace A105254.P9904767051716133493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167499 (n + 6) + 2).toNat * A001288 (n + 11)

end

end A105254.P9904767051716133493

namespace A105254

/-- `A007318(A167499(n+6)+2)*A001288(n)` -/
def P9904767051716133493.Spec : Prop :=
  ∀ n, P9904767051716133493.a n = A105254 n

end A105254

/-!
# A105258: Triangle of trajectory of 1 under the morphism 1->2, 2->13, 3->1.

The programs for A105258, there is no canonical definition to state claims against.
-/

/-! ## A105258.P8168863620141646844

`A004737(p?[A000196(A323642(n+1))])`
-/

namespace A105258.P8168863620141646844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A323642 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105258.P8168863620141646844

/-! ## A105258.P15002788150383096201

`A049711(A105111(2*n+1)+A052350(n+1))`
-/

namespace A105258.P15002788150383096201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A105111 (2 * n + 1) + A052350 (n + 1)).toNat

end

end A105258.P15002788150383096201

/-! ## A105258.P13924248037916925037

`A066099(A376433(n+1)+A127326(n))`
-/

namespace A105258.P13924248037916925037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A376433 (n + 1) + A127326 n).toNat

end

end A105258.P13924248037916925037

/-! ## A105258.P8751589106417996926

`A001221(or(A002940(n+1), A104199(n+4)))`
-/

namespace A105258.P8751589106417996926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A002940 (n + 1)) (A104199 (n + 4))).toNat

end

end A105258.P8751589106417996926

/-! ## A105258.P11986362579197186938

`A066099(∩[A189214(2*(n+2)), A335525(n+1)])`
-/

namespace A105258.P11986362579197186938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189214 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A105258.P11986362579197186938

/-!
# A105259: Number of distinct prime divisors of 99..91 (with n 9's).

The programs for A105259, there is no canonical definition to state claims against.
-/

/-! ## A105259.P14927770766022648230

`A001221(A110045(n+1)+1)+n%2`
-/

namespace A105259.P14927770766022648230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A110045 (n + 1) + 1).toNat + ((n % 2 : ℕ) : ℤ)

end

end A105259.P14927770766022648230

/-! ## A105259.P11722393698595625452

`A000035(n)+A001221(A110045(n+1)+1)`
-/

namespace A105259.P11722393698595625452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A001221 (A110045 (n + 1) + 1).toNat

end

end A105259.P11722393698595625452

/-! ## A105259.P9647618094257833301

`A096268(n²)+A001221(A110045(n+1)+1)`
-/

namespace A105259.P9647618094257833301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (n ^ 2) + A001221 (A110045 (n + 1) + 1).toNat

end

end A105259.P9647618094257833301

/-! ## A105259.P13250426237454065125

`Δ[A004526(n)]+A001221(A110045(n+1)+1)`
-/

namespace A105259.P13250426237454065125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A001221 (A110045 (n + 1) + 1).toNat

end

end A105259.P13250426237454065125

/-! ## A105259.P11715736051136646980

`Δ[A008619(n)]+A001221(A110045(n+1)+1)`
-/

namespace A105259.P11715736051136646980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A001221 (A110045 (n + 1) + 1).toNat

end

end A105259.P11715736051136646980

/-!
# A105261: Values of n such that phi(n)=c(n)^2, where phi is the Euler totient function and c(n) is the product of the distinct prime factors of n (c(1)=1).

The programs for A105261, there is no canonical definition to state claims against.
-/

/-! ## A105261.P7168965091453643499

`A211413(A066272(2*n+3)+A001082(n+1))`
-/

namespace A105261.P7168965091453643499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211413 (A066272 (2 * n + 3) + A001082 (n + 1)).toNat

end

end A105261.P7168965091453643499

/-!
# A105262: a(n)=number of tilings of a 4 X n rectangle using tiles that are either 1 X 1 squares or trominoes (here by a tromino we mean a 2 X 2 square with the upper right 1 X 1 square removed; no rotations allowed).

The programs for A105262, the canonical program `A105262.P15423684754596048297` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105262 has offset 0).

The definition of A105262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105262.P15423684754596048297

`a(n-1)+5*a(n-2)+4*a(n-3)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=13, a(4)=42`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A105262

/-- `a(n-1)+5*a(n-2)+4*a(n-3)-a(n-5)` -/
def P15423684754596048297.Spec : Prop :=
  ∀ n, P15423684754596048297.a n = A105262 n

theorem P15423684754596048297.correct : P15423684754596048297.Spec := by
  intro n
  simp only [A105262]

end A105262

/-! ## A105262.P9075472461920567838

`A226444(eq[4, A002262(n)])`
-/

namespace A105262.P9075472461920567838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105262.P9075472461920567838

namespace A105262

/-- `A226444(eq[4, A002262(n)])` -/
def P9075472461920567838.Spec : Prop :=
  ∀ n, P9075472461920567838.a n = A105262 n

end A105262

/-! ## A105262.P13623016387799694397

`A226444(A052905(n+2))`
-/

namespace A105262.P13623016387799694397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A052905 (n + 2)).toNat

end

end A105262.P13623016387799694397

namespace A105262

/-- `A226444(A052905(n+2))` -/
def P13623016387799694397.Spec : Prop :=
  ∀ n, P13623016387799694397.a n = A105262 n

end A105262

/-! ## A105262.P18190607050875869046

`A226444(eq[4, A025581(n)])`
-/

namespace A105262.P18190607050875869046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105262.P18190607050875869046

namespace A105262

/-- `A226444(eq[4, A025581(n)])` -/
def P18190607050875869046.Spec : Prop :=
  ∀ n, P18190607050875869046.a n = A105262 n

end A105262

/-! ## A105262.P7154883232927318035

`A226444(A046691(n+3)-1)`
-/

namespace A105262.P7154883232927318035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A046691 (n + 3) - 1).toNat

end

end A105262.P7154883232927318035

namespace A105262

/-- `A226444(A046691(n+3)-1)` -/
def P7154883232927318035.Spec : Prop :=
  ∀ n, P7154883232927318035.a n = A105262 n

end A105262

/-!
# A105263: Least k such that prime(n)*(k^2) + prime(n)*k + 1 = m^2 = a square.

The programs for A105263, there is no canonical definition to state claims against.
-/

/-! ## A105263.P4128437956839530924

`A120744(2*p?[xor(1, n)+1])`
-/

namespace A105263.P4128437956839530924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A105263.P4128437956839530924

/-! ## A105263.P7205650057851638413

`A120744(A100484(n+1))`
-/

namespace A105263.P7205650057851638413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (A100484 (n + 1)).toNat

end

end A105263.P7205650057851638413

/-! ## A105263.P2893818332270165899

`A120744(A001747(n+2))`
-/

namespace A105263.P2893818332270165899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (A001747 (n + 2)).toNat

end

end A105263.P2893818332270165899

/-! ## A105263.P18172409248240755018

`A120744(2*p?[A344180(n)])`
-/

namespace A105263.P18172409248240755018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105263.P18172409248240755018

/-! ## A105263.P12418263246712563754

`A120744(2*A000040(n+1))`
-/

namespace A105263.P12418263246712563754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (2 * A000040 (n + 1)).toNat

end

end A105263.P12418263246712563754

/-! ## A105263.P17783906004112178846

`A120744(A001749(n+1)/2)`
-/

namespace A105263.P17783906004112178846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A105263.P17783906004112178846

/-! ## A105263.P17838467866368463898

`A120744(2*eq[2, A005128(n)])`
-/

namespace A105263.P17838467866368463898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105263.P17838467866368463898

/-! ## A105263.P8403415132702631445

`A120744(record[2*A006530(n+2)])`
-/

namespace A105263.P8403415132702631445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105263.P8403415132702631445

/-! ## A105263.P12048919578319619402

`A120744(record[2*A014963(n+2)])`
-/

namespace A105263.P12048919578319619402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105263.P12048919578319619402

/-! ## A105263.P3220960065221744282

`A120744(record[2*A020639(n+2)])`
-/

namespace A105263.P3220960065221744282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105263.P3220960065221744282

/-!
# A105264: Theta(1) Pisot substitution level 7 : characteristic polynomial x^4-x^3-1=0.

The programs for A105264, there is no canonical definition to state claims against.
-/

/-! ## A105264.P2627383851390075952

`Δ[eq[1, A105265(n)]]`
-/

namespace A105264.P2627383851390075952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A105264.P2627383851390075952

/-! ## A105264.P15551019202465884207

`A105265(eq[1, A105265(n+1)])`
-/

namespace A105264.P15551019202465884207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105264.P15551019202465884207

/-! ## A105264.P1224036126922681257

`A105265(lt[A105265(n+1), 2])`
-/

namespace A105264.P1224036126922681257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A105264.P1224036126922681257

/-! ## A105264.P4308826508678669099

`A105265(record[floor(n/A105265(n+1))])`
-/

namespace A105264.P4308826508678669099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A105265 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105264.P4308826508678669099

/-! ## A105264.P5444358905737511723

`A105265(record[n*(2-A105265(n+1))])`
-/

namespace A105264.P5444358905737511723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A105265 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105264.P5444358905737511723

/-! ## A105264.P18082465477946228740

`A105265(record[n+1-A105265(n+1)²])`
-/

namespace A105264.P18082465477946228740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A105265 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105264.P18082465477946228740

/-! ## A105264.P6852217649510556385

`A105265(record[n+1-A105265(n+1)!])`
-/

namespace A105264.P6852217649510556385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.factorial (A105265 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105264.P6852217649510556385

/-!
# A105265: Concatenation of letters of words obtained from axiom "1" and the iterates of the substitutions '1' -> "12", '2' -> "3", '3' -> "4", '4' -> "1".

The programs for A105265, there is no canonical definition to state claims against.
-/

/-! ## A105265.P11900807847343784589

`A072491(A000041(p?[A093411(n)]))`
-/

namespace A105265.P11900807847343784589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A000041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A105265.P11900807847343784589

/-! ## A105265.P11313761739003795867

`A002260(lt[A010894(n), A353846(n)])`
-/

namespace A105265.P11313761739003795867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105265.P11313761739003795867

/-! ## A105265.P16454316643715508871

`A278985(n+1)%A010686(A105992(n+1))`
-/

namespace A105265.P16454316643715508871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278985 (n + 1)) (A010686 (A105992 (n + 1)).toNat)

end

end A105265.P16454316643715508871

/-! ## A105265.P8505206270813022650

`A193023(n+1)%A053735(A282344(n+1))`
-/

namespace A105265.P8505206270813022650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193023 (n + 1)) (A053735 (A282344 (n + 1)).toNat)

end

end A105265.P8505206270813022650

/-! ## A105265.P13477258691942267455

`(A278985(n+1)^A007318(A292978(n)))%5`
-/

namespace A105265.P13477258691942267455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A278985 (n + 1) : ℚ) ^ (A007318 (A292978 n).toNat : ℤ))) 5

end

end A105265.P13477258691942267455

/-!
# A105266: a(1)=1 and, for n>1, a(n) is the smallest integer greater than a(n-1) such that no three terms x,y,z of the sequence, with x

The programs for A105266, there is no canonical definition to state claims against.
-/

/-! ## A105266.P12765566347970018674

`eq[0, val(n, 3)-a(n-1)]+1` with `a(0)=0`
-/

namespace A105266.P12765566347970018674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (SequenceMachineLib.valuation n 3 : ℤ) - f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105266.P12765566347970018674

/-! ## A105266.P4445223282642108604

`record[(n+1)*a(floor(n/3))%2]` with `a(0)=1`
-/

namespace A105266.P4445223282642108604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) * (f1 ⌊(n : ℚ) / 3⌋.toNat % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105266.P4445223282642108604

/-! ## A105266.P10374414444708961055

`A196747(n+1)+1`
-/

namespace A105266.P10374414444708961055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196747 (n + 1) + 1

end

end A105266.P10374414444708961055

/-! ## A105266.P5230268186748590102

`eq[1, A190906(n)]+1`
-/

namespace A105266.P5230268186748590102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105266.P5230268186748590102

/-! ## A105266.P13411506501660384981

`lt[A316824(n), 1]+1`
-/

namespace A105266.P13411506501660384981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316824 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A105266.P13411506501660384981

/-! ## A105266.P11385073019418517098

`lt[A244042(n), 2]+1`
-/

namespace A105266.P11385073019418517098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A105266.P11385073019418517098

/-! ## A105266.P1600580165737234069

`lt[A289813(n), 2]+1`
-/

namespace A105266.P1600580165737234069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A105266.P1600580165737234069

/-! ## A105266.P5893126304893088336

`lt[A289815(n), 3]+1`
-/

namespace A105266.P5893126304893088336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A105266.P5893126304893088336

/-! ## A105266.P13626884265523585817

`lt[A093347(n+1), 2]+1`
-/

namespace A105266.P13626884265523585817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093347 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A105266.P13626884265523585817

/-! ## A105266.P16147036623848813628

`A133259(A196747(n+1))`
-/

namespace A105266.P16147036623848813628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A196747 (n + 1)).toNat

end

end A105266.P16147036623848813628

/-!
# A105268: Primes which are 1 + strobogrammatic numbers A000787(n): the same upside down.

The programs for A105268, there is no canonical definition to state claims against.
-/

/-! ## A105268.P3054738871038786007

`p?[A259984(A243903(n+1))]`
-/

namespace A105268.P3054738871038786007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259984 (A243903 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105268.P3054738871038786007

/-! ## A105268.P13048481952301705499

`p?[A259984(n+1)]^A351221(n)`
-/

namespace A105268.P13048481952301705499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259984 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A351221 n : ℤ)

end

end A105268.P13048481952301705499

/-!
# A105270: Integer part of the area of consecutive prime sided tetragons with one right angle.

The programs for A105270, there is no canonical definition to state claims against.
-/

/-! ## A105270.P4684030872800308413

`∑[A007306(A000110(n+4)+4)]`
-/

namespace A105270.P4684030872800308413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A000110 (n + 4) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105270.P4684030872800308413

/-!
# A105271: Fixed points of the permutation of the nonnegative integers defined by A105025 (i.e., n such that A105025(n) = n).

The programs for A105271, there is no canonical definition to state claims against.
-/

/-! ## A105271.P7768738489308603658

`eq[1, A105153(n)]`
-/

namespace A105271.P7768738489308603658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105271.P7768738489308603658

/-!
# A105272: Array T(n,k) (k >= 1, n >= k) read by antidiagonals (see definition in Comments lines).

The programs for A105272, there is no canonical definition to state claims against.
-/

/-! ## A105272.P5889800988431562368

`A043561(A200272(n+1)^5)`
-/

namespace A105272.P5889800988431562368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A200272 (n + 1) ^ 5).toNat

end

end A105272.P5889800988431562368

/-! ## A105272.P8751899725419396216

`A001222(A000032(A089627(n)))+1`
-/

namespace A105272.P8751899725419396216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000032 (A089627 n).toNat).toNat + 1

end

end A105272.P8751899725419396216

/-! ## A105272.P8108391005194618083

`A001222(2*A000032(A089627(n)))`
-/

namespace A105272.P8108391005194618083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A000032 (A089627 n).toNat).toNat

end

end A105272.P8108391005194618083

/-! ## A105272.P2952198901705884962

`A001222(A156279(A089627(n))/2)`
-/

namespace A105272.P2952198901705884962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A156279 (A089627 n).toNat : ℚ) / 2)).toNat

end

end A105272.P2952198901705884962

/-! ## A105272.P9289535217220987216

`A001221(A109739(n+1)+A022173(n))`
-/

namespace A105272.P9289535217220987216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A109739 (n + 1) + A022173 n).toNat

end

end A105272.P9289535217220987216

/-!
# A105275: Minimal peaks in digital expansions of Pi: positions of peaks equal to 1.

The programs for A105275, there is no canonical definition to state claims against.
-/

/-! ## A105275.P9687712990772458868

`A020725(∩[A014976(n+1), A134210(n+1)])`
-/

namespace A105275.P9687712990772458868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134210 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A105275.P9687712990772458868

/-!
# A105277: Let F(n) denote the Fibonacci numbers, A000045: a(n) = Sum_{k=0..n} C(n,k)^2*(n-k)!*F(k).

The programs for A105277, there is no canonical definition to state claims against.
-/

/-! ## A105277.P15726126189493436673

`A323771(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A105277.P15726126189493436673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A323771 n + (n : ℤ) * a (n - 1)

end

end A105277.P15726126189493436673

/-! ## A105277.P2863256266081489408

`∑[A004396(Δ[A191810(n)])]`
-/

namespace A105277.P2863256266081489408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191810 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105277.P2863256266081489408

/-!
# A105278: Triangle read by rows: T(n,k) = binomial(n,k)*(n-1)!/(k-1)!.

The programs for A105278, the canonical program `A105278.P12426767479968281502` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105278 has offset 1).

The definition of A105278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105278.P9930575335605782515

`abs(A066667(n))`
-/

namespace A105278.P9930575335605782515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066667 n|

end

end A105278.P9930575335605782515

namespace A105278

/-- `abs(A066667(n))` -/
def P9930575335605782515.Spec : Prop :=
  ∀ n, P9930575335605782515.a n = A105278 (n + 1)

end A105278

/-! ## A105278.P9797266997709891781

`A271703(comp[∑[n]])`
-/

namespace A105278.P9797266997709891781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A105278.P9797266997709891781

namespace A105278

/-- `A271703(comp[∑[n]])` -/
def P9797266997709891781.Spec : Prop :=
  ∀ n, P9797266997709891781.a n = A105278 (n + 1)

end A105278

/-! ## A105278.P13965941958691428984

`abs(A008297(n+1))`
-/

namespace A105278.P13965941958691428984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008297 (n + 1)|

end

end A105278.P13965941958691428984

namespace A105278

/-- `abs(A008297(n+1))` -/
def P13965941958691428984.Spec : Prop :=
  ∀ n, P13965941958691428984.a n = A105278 (n + 1)

end A105278

/-! ## A105278.P6990006224279149532

`A103371(n)*A119502(n)`
-/

namespace A105278.P6990006224279149532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 n * A119502 n

end

end A105278.P6990006224279149532

namespace A105278

/-- `A103371(n)*A119502(n)` -/
def P6990006224279149532.Spec : Prop :=
  ∀ n, P6990006224279149532.a n = A105278 (n + 1)

end A105278

/-! ## A105278.P2480655819812799864

`A094587(n)*A135278(n)`
-/

namespace A105278.P2480655819812799864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A135278 n

end

end A105278.P2480655819812799864

namespace A105278

/-- `A094587(n)*A135278(n)` -/
def P2480655819812799864.Spec : Prop :=
  ∀ n, P2480655819812799864.a n = A105278 (n + 1)

end A105278

/-! ## A105278.P3762372249501217593

`gcd(A000038(n), A066667(n))`
-/

namespace A105278.P3762372249501217593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A066667 n)

end

end A105278.P3762372249501217593

namespace A105278

/-- `gcd(A000038(n), A066667(n))` -/
def P3762372249501217593.Spec : Prop :=
  ∀ n, (P3762372249501217593.a n : ℤ) = A105278 (n + 1)

end A105278

/-! ## A105278.P13158027301050298606

`lcm(A007318(n), A066667(n))`
-/

namespace A105278.P13158027301050298606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A066667 n)

end

end A105278.P13158027301050298606

namespace A105278

/-- `lcm(A007318(n), A066667(n))` -/
def P13158027301050298606.Spec : Prop :=
  ∀ n, (P13158027301050298606.a n : ℤ) = A105278 (n + 1)

end A105278

/-! ## A105278.P12426767479968281502

`A074909(n+1)*A094587(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A105278

/-- `A074909(n+1)*A094587(n)` -/
def P12426767479968281502.Spec : Prop :=
  ∀ n, P12426767479968281502.a n = A105278 (n + 1)

theorem P12426767479968281502.correct : P12426767479968281502.Spec := by
  intro n
  simp only [A105278, Nat.add_sub_cancel]

end A105278

/-! ## A105278.P5614462329595119335

`A007318(n)*A173333(n+1)`
-/

namespace A105278.P5614462329595119335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A173333 (n + 1)

end

end A105278.P5614462329595119335

namespace A105278

/-- `A007318(n)*A173333(n+1)` -/
def P5614462329595119335.Spec : Prop :=
  ∀ n, P5614462329595119335.a n = A105278 (n + 1)

end A105278

/-! ## A105278.P18216445507210406714

`A004736(n+1)*A247500(n)`
-/

namespace A105278.P18216445507210406714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A247500 n

end

end A105278.P18216445507210406714

namespace A105278

/-- `A004736(n+1)*A247500(n)` -/
def P18216445507210406714.Spec : Prop :=
  ∀ n, P18216445507210406714.a n = A105278 (n + 1)

end A105278

/-! ## A105278.P12694331580102344602

`lcm(A008297(n+1), A020985(n))`
-/

namespace A105278.P12694331580102344602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008297 (n + 1)) (A020985 n)

end

end A105278.P12694331580102344602

namespace A105278

/-- `lcm(A008297(n+1), A020985(n))` -/
def P12694331580102344602.Spec : Prop :=
  ∀ n, (P12694331580102344602.a n : ℤ) = A105278 (n + 1)

end A105278

/-! ## A105278.P17030109506110370333

`gcd(Δ[A003056(n)], A008297(n+1))`
-/

namespace A105278.P17030109506110370333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A008297 (n + 1))

end

end A105278.P17030109506110370333

namespace A105278

/-- `gcd(Δ[A003056(n)], A008297(n+1))` -/
def P17030109506110370333.Spec : Prop :=
  ∀ n, (P17030109506110370333.a n : ℤ) = A105278 (n + 1)

end A105278

/-! ## A105278.P16838764267683747249

`A000142(A004736(n+1))*A001263(n+1)`
-/

namespace A105278.P16838764267683747249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A004736 (n + 1)).toNat * A001263 (n + 1)

end

end A105278.P16838764267683747249

namespace A105278

/-- `A000142(A004736(n+1))*A001263(n+1)` -/
def P16838764267683747249.Spec : Prop :=
  ∀ n, P16838764267683747249.a n = A105278 (n + 1)

end A105278

/-! ## A105278.P15826070077691759308

`abs(A074909(n+1)/A007318(n)*A021009(n))`
-/

namespace A105278.P15826070077691759308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A074909 (n + 1) : ℚ) / (A007318 n : ℚ) * (A021009 n : ℚ)|

end

end A105278.P15826070077691759308

namespace A105278

/-- `abs(A074909(n+1)/A007318(n)*A021009(n))` -/
def P15826070077691759308.Spec : Prop :=
  ∀ n, P15826070077691759308.a n = (A105278 (n + 1) : ℚ)

end A105278

/-! ## A105278.P2342678603824797596

`A089231(A038722(n+1))`
-/

namespace A105278.P2342678603824797596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089231 (A038722 (n + 1)).toNat

end

end A105278.P2342678603824797596

namespace A105278

/-- `A089231(A038722(n+1))` -/
def P2342678603824797596.Spec : Prop :=
  ∀ n, P2342678603824797596.a n = A105278 (n + 1)

end A105278

/-! ## A105278.P7991044952455549163

`A008297(A004736(n+1)+n)*A008297(n+1)`
-/

namespace A105278.P7991044952455549163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008297 (A004736 (n + 1) + (n : ℤ)).toNat * A008297 (n + 1)

end

end A105278.P7991044952455549163

namespace A105278

/-- `A008297(A004736(n+1)+n)*A008297(n+1)` -/
def P7991044952455549163.Spec : Prop :=
  ∀ n, P7991044952455549163.a n = A105278 (n + 1)

end A105278

/-! ## A105278.P9314996262432477841

`A008277(n+1)/A055896(n+1)*A079005(n+1)`
-/

namespace A105278.P9314996262432477841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A055896 (n + 1) : ℚ) * (A079005 (n + 1) : ℚ)

end

end A105278.P9314996262432477841

namespace A105278

/-- `A008277(n+1)/A055896(n+1)*A079005(n+1)` -/
def P9314996262432477841.Spec : Prop :=
  ∀ n, P9314996262432477841.a n = (A105278 (n + 1) : ℚ)

end A105278

/-! ## A105278.P15722470658787100796

`A008275(n+1)/A055924(n+1)*A079005(n+1)`
-/

namespace A105278.P15722470658787100796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A055924 (n + 1) : ℚ) * (A079005 (n + 1) : ℚ)

end

end A105278.P15722470658787100796

namespace A105278

/-- `A008275(n+1)/A055924(n+1)*A079005(n+1)` -/
def P15722470658787100796.Spec : Prop :=
  ∀ n, P15722470658787100796.a n = (A105278 (n + 1) : ℚ)

end A105278

/-! ## A105278.P12106040997974993601

`abs(A176013(n+1)/A001263(n+1)*A007318(n))`
-/

namespace A105278.P12106040997974993601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A176013 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A007318 n : ℚ)|

end

end A105278.P12106040997974993601

namespace A105278

/-- `abs(A176013(n+1)/A001263(n+1)*A007318(n))` -/
def P12106040997974993601.Spec : Prop :=
  ∀ n, P12106040997974993601.a n = (A105278 (n + 1) : ℚ)

end A105278

/-! ## A105278.P7220282534221342085

`A156992(n+1)/A166350(n+1)`
-/

namespace A105278.P7220282534221342085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156992 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A105278.P7220282534221342085

namespace A105278

/-- `A156992(n+1)/A166350(n+1)` -/
def P7220282534221342085.Spec : Prop :=
  ∀ n, P7220282534221342085.a n = (A105278 (n + 1) : ℚ)

end A105278

/-!
# A105279: a(0)=0; a(n) = 10*a(n-1) + 10.

The programs for A105279, the canonical program `A105279.P11509237809883842157` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105279 has offset 0).

The definition of A105279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+10` (program `A105279.P11509237809883842157`, by `A105279.P11509237809883842157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105279.P11348024054870860413

`10/9*(10^n-1)`
-/

namespace A105279.P11348024054870860413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) / 9 * ((10 ^ n : ℤ) - 1 : ℚ)

end

end A105279.P11348024054870860413

namespace A105279

/-- `10/9*(10^n-1)` -/
def P11348024054870860413.Spec : Prop :=
  ∀ n, P11348024054870860413.a n = (A105279 n : ℚ)

theorem P11348024054870860413.correct : P11348024054870860413.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A105279, Nat.add_sub_cancel, A105279.P11348024054870860413.a, A105279.P11509237809883842157.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A105279, Nat.add_sub_cancel, A105279.P11348024054870860413.a, A105279.P11509237809883842157.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A105279

/-! ## A105279.P11509237809883842157

`10*a(n-1)+10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A105279

/-- `10*a(n-1)+10` -/
def P11509237809883842157.Spec : Prop :=
  ∀ n, (P11509237809883842157.a n : ℤ) = A105279 n

theorem P11509237809883842157.correct : P11509237809883842157.Spec := by
  intro n
  simp only [A105279]

end A105279

/-! ## A105279.P9152176235386712984

`A124166(n)/10`
-/

namespace A105279.P9152176235386712984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124166 n : ℚ) / 10

end

end A105279.P9152176235386712984

namespace A105279

/-- `A124166(n)/10` -/
def P9152176235386712984.Spec : Prop :=
  ∀ n, P9152176235386712984.a n = (A105279 n : ℚ)

end A105279

/-! ## A105279.P703280221254016127

`xor(1, ∑[10^n])`
-/

namespace A105279.P703280221254016127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105279.P703280221254016127

namespace A105279

/-- `xor(1, ∑[10^n])` -/
def P703280221254016127.Spec : Prop :=
  ∀ n, (P703280221254016127.a n : ℤ) = A105279 n

end A105279

/-! ## A105279.P6239305312723992375

`and(∑[10^n], -2)`
-/

namespace A105279.P6239305312723992375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)

end

end A105279.P6239305312723992375

namespace A105279

/-- `and(∑[10^n], -2)` -/
def P6239305312723992375.Spec : Prop :=
  ∀ n, P6239305312723992375.a n = A105279 n

end A105279

/-! ## A105279.P3553470927834892340

`ogf(10x/(1-11x+10x^2))`
-/

namespace A105279.P3553470927834892340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10] [1, -11, 10] n

end

end A105279.P3553470927834892340

namespace A105279

/-- `ogf(10x/(1-11x+10x^2))` -/
def P3553470927834892340.Spec : Prop :=
  ∀ n, P3553470927834892340.a n = A105279 n

end A105279

/-! ## A105279.P11476567118945192692

`lcm(10, floor(10^n/9))`
-/

namespace A105279.P11476567118945192692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 ⌊(10 ^ n : ℚ) / 9⌋

end

end A105279.P11476567118945192692

namespace A105279

/-- `lcm(10, floor(10^n/9))` -/
def P11476567118945192692.Spec : Prop :=
  ∀ n, (P11476567118945192692.a n : ℤ) = A105279 n

end A105279

/-! ## A105279.P14137666608562031036

`∑[lcm(10^n, ceil(atan(n)))]`
-/

namespace A105279.P14137666608562031036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (10 ^ n : ℤ) ⌈Real.arctan (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105279.P14137666608562031036

namespace A105279

/-- `∑[lcm(10^n, ceil(atan(n)))]` -/
def P14137666608562031036.Spec : Prop :=
  ∀ n, (P14137666608562031036.a n : ℤ) = A105279 n

end A105279

/-! ## A105279.P9802181492745950314

`∑[10*a(n-1)]` with `a(0)=0, a(1)=10`
-/

namespace A105279.P9802181492745950314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105279.P9802181492745950314

namespace A105279

/-- `∑[10*a(n-1)]` -/
def P9802181492745950314.Spec : Prop :=
  ∀ n, (P9802181492745950314.a n : ℤ) = A105279 n

end A105279

/-! ## A105279.P12519442030962745991

`10^n+a(n-1)` with `a(0)=0`
-/

namespace A105279.P12519442030962745991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 ^ n + a (n - 1)

end

end A105279.P12519442030962745991

namespace A105279

/-- `10^n+a(n-1)` -/
def P12519442030962745991.Spec : Prop :=
  ∀ n, (P12519442030962745991.a n : ℤ) = A105279 n

end A105279

/-! ## A105279.P2192279210626097218

`∑[A178500(n)]`
-/

namespace A105279.P2192279210626097218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105279.P2192279210626097218

namespace A105279

/-- `∑[A178500(n)]` -/
def P2192279210626097218.Spec : Prop :=
  ∀ n, P2192279210626097218.a n = A105279 n

end A105279

/-! ## A105279.P8564527691708424583

`A094026(2*n)`
-/

namespace A105279.P8564527691708424583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (2 * n)

end

end A105279.P8564527691708424583

namespace A105279

/-- `A094026(2*n)` -/
def P8564527691708424583.Spec : Prop :=
  ∀ n, P8564527691708424583.a n = A105279 n

end A105279

/-! ## A105279.P17292426864778772315

`A124167(n)/9`
-/

namespace A105279.P17292426864778772315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124167 n : ℚ) / 9

end

end A105279.P17292426864778772315

namespace A105279

/-- `A124167(n)/9` -/
def P17292426864778772315.Spec : Prop :=
  ∀ n, P17292426864778772315.a n = (A105279 n : ℚ)

end A105279

/-! ## A105279.P9424876547612360552

`A000042(n+1)-1`
-/

namespace A105279.P9424876547612360552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - 1

end

end A105279.P9424876547612360552

namespace A105279

/-- `A000042(n+1)-1` -/
def P9424876547612360552.Spec : Prop :=
  ∀ n, P9424876547612360552.a n = A105279 n

end A105279

/-! ## A105279.P13149755266928492964

`A002275(n+1)-1`
-/

namespace A105279.P13149755266928492964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - 1

end

end A105279.P13149755266928492964

namespace A105279

/-- `A002275(n+1)-1` -/
def P13149755266928492964.Spec : Prop :=
  ∀ n, P13149755266928492964.a n = A105279 n

end A105279

/-! ## A105279.P4212705248362994741

`A047855(n+1)-2`
-/

namespace A105279.P4212705248362994741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 (n + 1) - 2

end

end A105279.P4212705248362994741

namespace A105279

/-- `A047855(n+1)-2` -/
def P4212705248362994741.Spec : Prop :=
  ∀ n, P4212705248362994741.a n = A105279 n

end A105279

/-! ## A105279.P10271509468312306197

`A098406(n+1)-3`
-/

namespace A105279.P10271509468312306197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 (n + 1) - 3

end

end A105279.P10271509468312306197

namespace A105279

/-- `A098406(n+1)-3` -/
def P10271509468312306197.Spec : Prop :=
  ∀ n, P10271509468312306197.a n = A105279 n

end A105279

/-! ## A105279.P4744103530711192561

`A173735(n+1)-4`
-/

namespace A105279.P4744103530711192561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 (n + 1) - 4

end

end A105279.P4744103530711192561

namespace A105279

/-- `A173735(n+1)-4` -/
def P4744103530711192561.Spec : Prop :=
  ∀ n, P4744103530711192561.a n = A105279 n

end A105279

/-! ## A105279.P5179435105713468596

`A287468(2*n)-1`
-/

namespace A105279.P5179435105713468596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (2 * n) - 1

end

end A105279.P5179435105713468596

namespace A105279

/-- `A287468(2*n)-1` -/
def P5179435105713468596.Spec : Prop :=
  ∀ n, P5179435105713468596.a n = A105279 n

end A105279

/-! ## A105279.P14664657587347309126

`A289404(2*n)-1`
-/

namespace A105279.P14664657587347309126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (2 * n) - 1

end

end A105279.P14664657587347309126

namespace A105279

/-- `A289404(2*n)-1` -/
def P14664657587347309126.Spec : Prop :=
  ∀ n, P14664657587347309126.a n = A105279 n

end A105279

/-!
# A105280: a(0)=0; a(n) = 11*a(n-1) + 11.

The programs for A105280, the canonical program `A105280.P14674989223284388444` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105280 has offset 0).

The definition of A105280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+11` (program `A105280.P14674989223284388444`, by `A105280.P14674989223284388444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105280.P6536163881571557765

`11*(11^n-1)/10`
-/

namespace A105280.P6536163881571557765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  11 * (((11 ^ n : ℤ) - 1 : ℚ) / 10)

end

end A105280.P6536163881571557765

namespace A105280

/-- `11*(11^n-1)/10` -/
def P6536163881571557765.Spec : Prop :=
  ∀ n, P6536163881571557765.a n = (A105280 n : ℚ)

theorem P6536163881571557765.correct : P6536163881571557765.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A105280, Nat.add_sub_cancel, A105280.P6536163881571557765.a, A105280.P14674989223284388444.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A105280, Nat.add_sub_cancel, A105280.P6536163881571557765.a, A105280.P14674989223284388444.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A105280

/-! ## A105280.P14674989223284388444

`11*a(n-1)+11` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A105280

/-- `11*a(n-1)+11` -/
def P14674989223284388444.Spec : Prop :=
  ∀ n, (P14674989223284388444.a n : ℤ) = A105280 n

theorem P14674989223284388444.correct : P14674989223284388444.Spec := by
  intro n
  simp only [A105280]

end A105280

/-! ## A105280.P9846702071011133352

`11^n+a(n-1)` with `a(0)=0`
-/

namespace A105280.P9846702071011133352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  11 ^ n + a (n - 1)

end

end A105280.P9846702071011133352

namespace A105280

/-- `11^n+a(n-1)` -/
def P9846702071011133352.Spec : Prop :=
  ∀ n, (P9846702071011133352.a n : ℤ) = A105280 n

end A105280

/-! ## A105280.P14002474806825204438

`A016123(n)-1`
-/

namespace A105280.P14002474806825204438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016123 n - 1

end

end A105280.P14002474806825204438

namespace A105280

/-- `A016123(n)-1` -/
def P14002474806825204438.Spec : Prop :=
  ∀ n, P14002474806825204438.a n = A105280 n

end A105280

/-! ## A105280.P1591108025812191366

`ogf(11x/(1-12x+11x^2))`
-/

namespace A105280.P1591108025812191366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11] [1, -12, 11] n

end

end A105280.P1591108025812191366

namespace A105280

/-- `ogf(11x/(1-12x+11x^2))` -/
def P1591108025812191366.Spec : Prop :=
  ∀ n, P1591108025812191366.a n = A105280 n

end A105280

/-! ## A105280.P17570336721378663729

`∑[C(11^n, ceil(acot(n)))]`
-/

namespace A105280.P17570336721378663729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (11 ^ n) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105280.P17570336721378663729

namespace A105280

/-- `∑[C(11^n, ceil(acot(n)))]` -/
def P17570336721378663729.Spec : Prop :=
  ∀ n, (P17570336721378663729.a n : ℤ) = A105280 n

end A105280

/-! ## A105280.P14112586776067461157

`∑[xor(11^n, floor(acot(n)))]`
-/

namespace A105280.P14112586776067461157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (11 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105280.P14112586776067461157

namespace A105280

/-- `∑[xor(11^n, floor(acot(n)))]` -/
def P14112586776067461157.Spec : Prop :=
  ∀ n, P14112586776067461157.a n = A105280 n

end A105280

/-! ## A105280.P17547381835433219976

`lcm(11, a(n-1)+1)` with `a(0)=0`
-/

namespace A105280.P17547381835433219976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 11 (a (n - 1) + 1)

end

end A105280.P17547381835433219976

namespace A105280

/-- `lcm(11, a(n-1)+1)` -/
def P17547381835433219976.Spec : Prop :=
  ∀ n, (P17547381835433219976.a n : ℤ) = A105280 n

end A105280

/-! ## A105280.P13795965421691512409

`∑[11*a(n-1)]` with `a(0)=0, a(1)=11`
-/

namespace A105280.P13795965421691512409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105280.P13795965421691512409

namespace A105280

/-- `∑[11*a(n-1)]` -/
def P13795965421691512409.Spec : Prop :=
  ∀ n, (P13795965421691512409.a n : ℤ) = A105280 n

end A105280

/-! ## A105280.P7860920967894704809

`∑[lcm(11^n, ceil(sin(n)²))]`
-/

namespace A105280.P7860920967894704809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (11 ^ n : ℤ) ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105280.P7860920967894704809

namespace A105280

/-- `∑[lcm(11^n, ceil(sin(n)²))]` -/
def P7860920967894704809.Spec : Prop :=
  ∀ n, (P7860920967894704809.a n : ℤ) = A105280 n

end A105280

/-!
# A105281: a(0)=0; a(n) = 6*a(n-1) + 6.

The programs for A105281, the canonical program `A105281.P13386314977486768696` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105281 has offset 0).

The definition of A105281 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+6` (program `A105281.P13386314977486768696`, by `A105281.P13386314977486768696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105281.P17950777276857705978

`6*(6^n-1)/5`
-/

namespace A105281.P17950777276857705978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (((6 ^ n : ℤ) - 1 : ℚ) / 5)

end

end A105281.P17950777276857705978

namespace A105281

/-- `6*(6^n-1)/5` -/
def P17950777276857705978.Spec : Prop :=
  ∀ n, P17950777276857705978.a n = (A105281 n : ℚ)

theorem P17950777276857705978.correct : P17950777276857705978.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A105281, Nat.add_sub_cancel, A105281.P17950777276857705978.a, A105281.P13386314977486768696.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A105281, Nat.add_sub_cancel, A105281.P17950777276857705978.a, A105281.P13386314977486768696.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A105281

/-! ## A105281.P13386314977486768696

`6*a(n-1)+6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A105281

/-- `6*a(n-1)+6` -/
def P13386314977486768696.Spec : Prop :=
  ∀ n, (P13386314977486768696.a n : ℤ) = A105281 n

theorem P13386314977486768696.correct : P13386314977486768696.Spec := by
  intro n
  simp only [A105281]

end A105281

/-! ## A105281.P14952122883264313832

`6^n+a(n-1)` with `a(0)=0`
-/

namespace A105281.P14952122883264313832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  6 ^ n + a (n - 1)

end

end A105281.P14952122883264313832

namespace A105281

/-- `6^n+a(n-1)` -/
def P14952122883264313832.Spec : Prop :=
  ∀ n, (P14952122883264313832.a n : ℤ) = A105281 n

end A105281

/-! ## A105281.P11341866887636725044

`xor(1, ∑[6^n])`
-/

namespace A105281.P11341866887636725044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105281.P11341866887636725044

namespace A105281

/-- `xor(1, ∑[6^n])` -/
def P11341866887636725044.Spec : Prop :=
  ∀ n, (P11341866887636725044.a n : ℤ) = A105281 n

end A105281

/-! ## A105281.P18003812067443419268

`and(∑[6^n], -2)`
-/

namespace A105281.P18003812067443419268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)

end

end A105281.P18003812067443419268

namespace A105281

/-- `and(∑[6^n], -2)` -/
def P18003812067443419268.Spec : Prop :=
  ∀ n, P18003812067443419268.a n = A105281 n

end A105281

/-! ## A105281.P10415546394001335226

`ogf(6x/(1-7x+6x^2))`
-/

namespace A105281.P10415546394001335226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -7, 6] n

end

end A105281.P10415546394001335226

namespace A105281

/-- `ogf(6x/(1-7x+6x^2))` -/
def P10415546394001335226.Spec : Prop :=
  ∀ n, P10415546394001335226.a n = A105281 n

end A105281

/-! ## A105281.P11721318393350631752

`lcm(6, a(n-1)+1)` with `a(0)=0`
-/

namespace A105281.P11721318393350631752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 6 (a (n - 1) + 1)

end

end A105281.P11721318393350631752

namespace A105281

/-- `lcm(6, a(n-1)+1)` -/
def P11721318393350631752.Spec : Prop :=
  ∀ n, (P11721318393350631752.a n : ℤ) = A105281 n

end A105281

/-! ## A105281.P15702004475607021367

`∑[6*a(n-1)]` with `a(0)=0, a(1)=6`
-/

namespace A105281.P15702004475607021367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105281.P15702004475607021367

namespace A105281

/-- `∑[6*a(n-1)]` -/
def P15702004475607021367.Spec : Prop :=
  ∀ n, (P15702004475607021367.a n : ℤ) = A105281 n

end A105281

/-! ## A105281.P15610384689893043959

`A003464(n+1)-1`
-/

namespace A105281.P15610384689893043959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (n + 1) - 1

end

end A105281.P15610384689893043959

namespace A105281

/-- `A003464(n+1)-1` -/
def P15610384689893043959.Spec : Prop :=
  ∀ n, P15610384689893043959.a n = A105281 n

end A105281

/-! ## A105281.P17492219187194403842

`A047851(n+1)-2`
-/

namespace A105281.P17492219187194403842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047851 (n + 1) - 2

end

end A105281.P17492219187194403842

namespace A105281

/-- `A047851(n+1)-2` -/
def P17492219187194403842.Spec : Prop :=
  ∀ n, P17492219187194403842.a n = A105281 n

end A105281

/-! ## A105281.P11080990159571475559

`(A233325(n)-1)/2`
-/

namespace A105281.P11080990159571475559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233325 n - 1 : ℚ) / 2

end

end A105281.P11080990159571475559

namespace A105281

/-- `(A233325(n)-1)/2` -/
def P11080990159571475559.Spec : Prop :=
  ∀ n, P11080990159571475559.a n = (A105281 n : ℚ)

end A105281

/-! ## A105281.P17792580847681083946

`A005618(n)/2-2`
-/

namespace A105281.P17792580847681083946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005618 n : ℚ) / 2 - 2

end

end A105281.P17792580847681083946

namespace A105281

/-- `A005618(n)/2-2` -/
def P17792580847681083946.Spec : Prop :=
  ∀ n, P17792580847681083946.a n = (A105281 n : ℚ)

end A105281

/-! ## A105281.P11438669860571324375

`floor(A026567(2*n)/2)`
-/

namespace A105281.P11438669860571324375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026567 (2 * n) : ℚ) / 2⌋

end

end A105281.P11438669860571324375

namespace A105281

/-- `floor(A026567(2*n)/2)` -/
def P11438669860571324375.Spec : Prop :=
  ∀ n, P11438669860571324375.a n = A105281 n

end A105281

/-! ## A105281.P4389809486450246093

`A005610(n+1)/2-1`
-/

namespace A105281.P4389809486450246093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005610 (n + 1) : ℚ) / 2 - 1

end

end A105281.P4389809486450246093

namespace A105281

/-- `A005610(n+1)/2-1` -/
def P4389809486450246093.Spec : Prop :=
  ∀ n, P4389809486450246093.a n = (A105281 n : ℚ)

end A105281

/-! ## A105281.P1997020736577643373

`A178672(n+1)/5`
-/

namespace A105281.P1997020736577643373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178672 (n + 1) : ℚ) / 5

end

end A105281.P1997020736577643373

namespace A105281

/-- `A178672(n+1)/5` -/
def P1997020736577643373.Spec : Prop :=
  ∀ n, P1997020736577643373.a n = (A105281 n : ℚ)

end A105281

/-! ## A105281.P13757046883420693275

`A247840(n+1)/6`
-/

namespace A105281.P13757046883420693275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247840 (n + 1) : ℚ) / 6

end

end A105281.P13757046883420693275

namespace A105281

/-- `A247840(n+1)/6` -/
def P13757046883420693275.Spec : Prop :=
  ∀ n, P13757046883420693275.a n = (A105281 n : ℚ)

end A105281

/-! ## A105281.P11163144422614588688

`A125682(n+1)/3-1`
-/

namespace A105281.P11163144422614588688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125682 (n + 1) : ℚ) / 3 - 1

end

end A105281.P11163144422614588688

namespace A105281

/-- `A125682(n+1)/3-1` -/
def P11163144422614588688.Spec : Prop :=
  ∀ n, P11163144422614588688.a n = (A105281 n : ℚ)

end A105281

/-! ## A105281.P13584152050261373027

`A125687(n+1)/4-1`
-/

namespace A105281.P13584152050261373027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125687 (n + 1) : ℚ) / 4 - 1

end

end A105281.P13584152050261373027

namespace A105281

/-- `A125687(n+1)/4-1` -/
def P13584152050261373027.Spec : Prop :=
  ∀ n, P13584152050261373027.a n = (A105281 n : ℚ)

end A105281

/-! ## A105281.P15254541754109511296

`(A164784(n+1)-1)/5`
-/

namespace A105281.P15254541754109511296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164784 (n + 1) - 1 : ℚ) / 5

end

end A105281.P15254541754109511296

namespace A105281

/-- `(A164784(n+1)-1)/5` -/
def P15254541754109511296.Spec : Prop :=
  ∀ n, P15254541754109511296.a n = (A105281 n : ℚ)

end A105281

/-!
# A105282: Positive integers k such that k^20 + 1 is semiprime (A001358).

The programs for A105282, there is no canonical definition to state claims against.
-/

/-! ## A105282.P1740329370845542877

`∩[A000068(n+1), A250189(n+1)]`
-/

namespace A105282.P1740329370845542877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105282.P1740329370845542877

/-! ## A105282.P10530827995100901272

`sqrt(∩[A105078(n+1), n²])`
-/

namespace A105282.P10530827995100901272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105078 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A105282.P10530827995100901272

/-!
# A105283: (2n)-th prime mod n.

The programs for A105283, there is no canonical definition to state claims against.
-/

/-! ## A105283.P9499262243619776809

`p?[A109853(n)]%(n+1)`
-/

namespace A105283.P9499262243619776809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A105283.P9499262243619776809

/-! ## A105283.P2253663982712700425

`A031215(n+1)%(n+1)`
-/

namespace A105283.P2253663982712700425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031215 (n + 1)) (n + 1 : ℤ)

end

end A105283.P2253663982712700425

/-! ## A105283.P2746719719950916597

`A141101(n+1)%(n+1)`
-/

namespace A105283.P2746719719950916597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141101 (n + 1)) (n + 1 : ℤ)

end

end A105283.P2746719719950916597

/-! ## A105283.P13482039077812890273

`A109853(n+2)%(n+1)`
-/

namespace A105283.P13482039077812890273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109853 (n + 2)) (n + 1 : ℤ)

end

end A105283.P13482039077812890273

/-! ## A105283.P13825541119561871191

`A045319(Δ[n²])%(n+1)`
-/

namespace A105283.P13825541119561871191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045319 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (n + 1 : ℤ)

end

end A105283.P13825541119561871191

/-! ## A105283.P13596743037839222696

`A065091(Δ[n²])%(n+1)`
-/

namespace A105283.P13596743037839222696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (n + 1 : ℤ)

end

end A105283.P13596743037839222696

/-! ## A105283.P4013897749101483463

`p?[A066207(n+1)]%(n+1)`
-/

namespace A105283.P4013897749101483463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A105283.P4013897749101483463

/-! ## A105283.P11531187043417882357

`A000040(2*(n+1))%(n+1)`
-/

namespace A105283.P11531187043417882357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * (n + 1))) (n + 1 : ℤ)

end

end A105283.P11531187043417882357

/-! ## A105283.P11697268382423591874

`A006005(2*(n+1))%(n+1)`
-/

namespace A105283.P11697268382423591874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (2 * (n + 1))) (n + 1 : ℤ)

end

end A105283.P11697268382423591874

/-! ## A105283.P1467701238562789540

`A014688(2*(n+1))%(n+1)`
-/

namespace A105283.P1467701238562789540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (2 * (n + 1))) (n + 1 : ℤ)

end

end A105283.P1467701238562789540

/-!
# A105284: a(n)/4^n is the measure of the subset of [0,1] remaining when all intervals of the form [b/2^m - 1/2^(2m+1), b/2^m + 1/2^(2m+1)] have been removed, with b and m positive integers, b

The programs for A105284, the canonical program `A105284.P13040137328639473281` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105284 has offset 0).

The definition of A105284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105284.P487824979078133755

`A045690(2*n+2)`
-/

namespace A105284.P487824979078133755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (2 * n + 2)

end

end A105284.P487824979078133755

namespace A105284

/-- `A045690(2*n+2)` -/
def P487824979078133755.Spec : Prop :=
  ∀ n, P487824979078133755.a n = A105284 n

end A105284

/-! ## A105284.P13040137328639473281

`A107284(n+1)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105284

/-- `A107284(n+1)/2` -/
def P13040137328639473281.Spec : Prop :=
  ∀ n, P13040137328639473281.a n = (A105284 n : ℚ)

end A105284

/-! ## A105284.P9707116620834768657

`A003000(2*(n+1))/2`
-/

namespace A105284.P9707116620834768657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003000 (2 * (n + 1)) : ℚ) / 2

end

end A105284.P9707116620834768657

namespace A105284

/-- `A003000(2*(n+1))/2` -/
def P9707116620834768657.Spec : Prop :=
  ∀ n, P9707116620834768657.a n = (A105284 n : ℚ)

end A105284

/-! ## A105284.P17637921107348392874

`A045690(n+3+n)/2`
-/

namespace A105284.P17637921107348392874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045690 (n + 3 + n) : ℚ) / 2

end

end A105284.P17637921107348392874

namespace A105284

/-- `A045690(n+3+n)/2` -/
def P17637921107348392874.Spec : Prop :=
  ∀ n, P17637921107348392874.a n = (A105284 n : ℚ)

end A105284

/-! ## A105284.P6422921020383000414

`record[A045690(n+1)^(n%2)]`
-/

namespace A105284.P6422921020383000414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105284.P6422921020383000414

namespace A105284

/-- `record[A045690(n+1)^(n%2)]` -/
def P6422921020383000414.Spec : Prop :=
  ∀ n, P6422921020383000414.a n = A105284 n

end A105284

/-! ## A105284.P5008243279669594764

`record[A045690(A089598(n)+1)]`
-/

namespace A105284.P5008243279669594764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (A089598 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105284.P5008243279669594764

namespace A105284

/-- `record[A045690(A089598(n)+1)]` -/
def P5008243279669594764.Spec : Prop :=
  ∀ n, P5008243279669594764.a n = A105284 n

end A105284

/-! ## A105284.P863289410123053337

`or(A000007(n), A045690(n+2+n))`
-/

namespace A105284.P863289410123053337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A045690 (n + 2 + n))

end

end A105284.P863289410123053337

namespace A105284

/-- `or(A000007(n), A045690(n+2+n))` -/
def P863289410123053337.Spec : Prop :=
  ∀ n, P863289410123053337.a n = A105284 n

end A105284

/-! ## A105284.P8657705417518288466

`A107284(n)+A107284(n)-A045690(n+1)`
-/

namespace A105284.P8657705417518288466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107284 n + (A107284 n - A045690 (n + 1))

end

end A105284.P8657705417518288466

namespace A105284

/-- `A107284(n)+A107284(n)-A045690(n+1)` -/
def P8657705417518288466.Spec : Prop :=
  ∀ n, P8657705417518288466.a n = A105284 n

end A105284

/-! ## A105284.P3596990313133389027

`Δ[∑[A003000(2*n)]/2]`
-/

namespace A105284.P3596990313133389027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105284.P3596990313133389027

namespace A105284

/-- `Δ[∑[A003000(2*n)]/2]` -/
def P3596990313133389027.Spec : Prop :=
  ∀ n, P3596990313133389027.a n = (A105284 n : ℚ)

end A105284

/-!
# A105285: Indices of Lucas 3-step numbers A001644 which have a nontrivial divisor in common with index.

The programs for A105285, there is no canonical definition to state claims against.
-/

/-! ## A105285.P4295915088435810275

`lt[1, gcd(n+1, A001644(n+1))]+1`
-/

namespace A105285.P4295915088435810275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001644 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A105285.P4295915088435810275

/-! ## A105285.P9652900316293187937

`lt[1, gcd(A001644(n), A008574(n))]`
-/

namespace A105285.P9652900316293187937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001644 n) (A008574 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105285.P9652900316293187937

/-!
# A105286: Numbers k such that prime(k+1) == 1 (mod k).

The programs for A105286, there is no canonical definition to state claims against.
-/

/-! ## A105286.P8963064266945756435

`eq[n, A084311(n+1)]`
-/

namespace A105286.P8963064266945756435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105286.P8963064266945756435

/-! ## A105286.P4159476496668323957

`eq[n+1, A075765(n+1)]`
-/

namespace A105286.P4159476496668323957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075765 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105286.P4159476496668323957

/-! ## A105286.P4947468919180523550

`eq[n, gcd(n, A156037(n+1))]`
-/

namespace A105286.P4947468919180523550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A156037 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105286.P4947468919180523550

/-! ## A105286.P10012661075813834063

`eq[1, A000040(n+1)%round(acot(n)+n)]`
-/

namespace A105286.P10012661075813834063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105286.P10012661075813834063

/-! ## A105286.P16977168233882573732

`A329622(A359044(n+1))`
-/

namespace A105286.P16977168233882573732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A359044 (n + 1)).toNat

end

end A105286.P16977168233882573732

/-!
# A105287: Numbers k such that prime(k+1) == 2 (mod k).

The programs for A105287, there is no canonical definition to state claims against.
-/

/-! ## A105287.P5117383331722803990

`A049036(n+1)-1`
-/

namespace A105287.P5117383331722803990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049036 (n + 1) - 1

end

end A105287.P5117383331722803990

/-! ## A105287.P5537428629313839022

`A308778(n²)+A049036(n+1)`
-/

namespace A105287.P5537428629313839022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A049036 (n + 1)

end

end A105287.P5537428629313839022

/-! ## A105287.P8962970241794416925

`A057428(n+1)+A049036(n+1)`
-/

namespace A105287.P8962970241794416925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A049036 (n + 1)

end

end A105287.P8962970241794416925

/-! ## A105287.P11725072511797395749

`A062157(2*(n+1))+A049036(n+1)`
-/

namespace A105287.P11725072511797395749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * (n + 1)) + A049036 (n + 1)

end

end A105287.P11725072511797395749

/-! ## A105287.P10178638575125697802

`A280193(2*n+1)+A049036(n+1)`
-/

namespace A105287.P10178638575125697802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A049036 (n + 1)

end

end A105287.P10178638575125697802

/-!
# A105288: Numbers k such that prime(k+1) == 3 (mod k).

The programs for A105288, there is no canonical definition to state claims against.
-/

/-! ## A105288.P12843997272598485410

`A178864(record[A206503(n+1)])`
-/

namespace A105288.P12843997272598485410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105288.P12843997272598485410

/-! ## A105288.P4361236317631937034

`record[gcd(A144274(n+1), A245767(n))]`
-/

namespace A105288.P4361236317631937034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144274 (n + 1)) (A245767 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105288.P4361236317631937034

/-!
# A105289: Indices of Lucas 5-step numbers A074048 which have a nontrivial divisor in common with index.

The programs for A105289, there is no canonical definition to state claims against.
-/

/-! ## A105289.P4096320249357454681

`lt[2, gcd(n+1, A074048(n+1))]+1`
-/

namespace A105289.P4096320249357454681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A074048 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A105289.P4096320249357454681

/-! ## A105289.P16044029540329444847

`lt[1, gcd(A008574(n), A074048(n))]`
-/

namespace A105289.P16044029540329444847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008574 n) (A074048 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105289.P16044029540329444847

/-!
# A105292: Triangle read by rows: T(n,k) is the number of directed column-convex polyominoes of area n, having leftmost column of height k.

The programs for A105292, there is no canonical definition to state claims against.
-/

/-! ## A105292.P4113644328584583316

`A001519(A025581(n))*A128227(n)`
-/

namespace A105292.P4113644328584583316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A025581 n).toNat * A128227 n

end

end A105292.P4113644328584583316

/-! ## A105292.P4767297371693987479

`A062877(A155038(n+1))*A128227(n)`
-/

namespace A105292.P4767297371693987479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 (A155038 (n + 1)).toNat * A128227 n

end

end A105292.P4767297371693987479

/-! ## A105292.P15624275953931658842

`gcd(A121487(n+1), A127775(n+1))*A128227(n)`
-/

namespace A105292.P15624275953931658842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A121487 (n + 1)) (A127775 (n + 1)) : ℤ) * A128227 n

end

end A105292.P15624275953931658842

/-! ## A105292.P8972201205122645952

`A111850(A048505(n))`
-/

namespace A105292.P8972201205122645952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A048505 n).toNat

end

end A105292.P8972201205122645952

/-! ## A105292.P11884022264714330313

`A196266(A397775(n))`
-/

namespace A105292.P11884022264714330313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196266 (A397775 n).toNat

end

end A105292.P11884022264714330313

