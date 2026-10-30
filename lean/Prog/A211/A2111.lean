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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A211100: Number of factors in Lyndon factorization of binary expansion of n.

The programs for A211100, there is no canonical definition to state claims against.
-/

/-! ## A211100.P10462384524502023780

`A211097(abs(1-2*n))`
-/

namespace A211100.P10462384524502023780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 |1 - (2 * n : ℤ)|.toNat

end

end A211100.P10462384524502023780

/-! ## A211100.P11450237882788464076

`or(A000007(n), A211097(A004274(n+1)))`
-/

namespace A211100.P11450237882788464076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A211097 (A004274 (n + 1)).toNat)

end

end A211100.P11450237882788464076

/-! ## A211100.P10836257393838881178

`A211097(A004274(n+1))+A000007(n+1)`
-/

namespace A211100.P10836257393838881178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (A004274 (n + 1)).toNat + A000007 (n + 1)

end

end A211100.P10836257393838881178

/-! ## A211100.P14187996613709195992

`A211097(A004280(n+1))%A000203(n+3)`
-/

namespace A211100.P14187996613709195992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211097 (A004280 (n + 1)).toNat) (A000203 (n + 3))

end

end A211100.P14187996613709195992

/-! ## A211100.P10096460145726857137

`A329326(gcd(n, n!+n))`
-/

namespace A211100.P10096460145726857137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (Nat.gcd n (Nat.factorial n + n))

end

end A211100.P10096460145726857137

/-! ## A211100.P10585473723674858118

`A329326(gcd(n, A000142(n)))`
-/

namespace A211100.P10585473723674858118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (Int.gcd (n : ℤ) (A000142 n))

end

end A211100.P10585473723674858118

/-! ## A211100.P8821785784281281404

`A014963(A000132(n))*A211097(A004274(n+1))`
-/

namespace A211100.P8821785784281281404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000132 n).toNat * A211097 (A004274 (n + 1)).toNat

end

end A211100.P8821785784281281404

/-!
# A211108: 1/4 the number of (n+1)X(n+1) 0..3 symmetric matrices with every 2X2 subblock having one, three or four distinct values.

The programs for A211108, there is no canonical definition to state claims against.
-/

/-! ## A211108.P12801907553794991503

`6*A210836(n+1)-5`
-/

namespace A211108.P12801907553794991503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A210836 (n + 1) - 5

end

end A211108.P12801907553794991503

/-!
# A211110: Number of partitions of n into divisors > 1 of n.

The programs for A211110, there is no canonical definition to state claims against.
-/

/-! ## A211110.P13280444138366913473

`floor(A293813(n)+atan(n))`
-/

namespace A211110.P13280444138366913473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293813 n : ℝ) + Real.arctan (n : ℝ)⌋

end

end A211110.P13280444138366913473

/-! ## A211110.P5887635048086099949

`A293813(n)+A157928(n)`
-/

namespace A211110.P5887635048086099949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n + A157928 n

end

end A211110.P5887635048086099949

/-! ## A211110.P3260412254377400340

`A293813(n)+A059841(A000010(n+1))`
-/

namespace A211110.P3260412254377400340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n + A059841 (A000010 (n + 1)).toNat

end

end A211110.P3260412254377400340

/-! ## A211110.P14547600675615343110

`A293813(n)+A178334(A211261(n+1))`
-/

namespace A211110.P14547600675615343110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n + A178334 (A211261 (n + 1)).toNat

end

end A211110.P14547600675615343110

/-! ## A211110.P3332219140058417027

`A211111(n)+A293813(n)-A293814(n)`
-/

namespace A211110.P3332219140058417027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n + (A293813 n - A293814 n)

end

end A211110.P3332219140058417027

/-! ## A211110.P18006819008931671943

`A372573(A000040(n+1))+A293813(n)`
-/

namespace A211110.P18006819008931671943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (A000040 (n + 1)).toNat + A293813 n

end

end A211110.P18006819008931671943

/-! ## A211110.P8601060818967498805

`A293813(n)+A088705(p?[A230980(n)])`
-/

namespace A211110.P8601060818967498805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n + A088705 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A211110.P8601060818967498805

/-! ## A211110.P6433636157554915716

`A293813(A233583(n+1)-n)+A293813(n)`
-/

namespace A211110.P6433636157554915716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 (A233583 (n + 1) - (n : ℤ)).toNat + A293813 n

end

end A211110.P6433636157554915716

/-! ## A211110.P12497831189061731015

`A293813(n)+A001222(A107286(A333574(n+1)))`
-/

namespace A211110.P12497831189061731015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n + A001222 (A107286 (A333574 (n + 1)).toNat).toNat

end

end A211110.P12497831189061731015

/-! ## A211110.P17702011157365057989

`A293813(n)+A107286(A107286(n²-n))`
-/

namespace A211110.P17702011157365057989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n + A107286 (A107286 (n ^ 2 - n)).toNat

end

end A211110.P17702011157365057989

/-!
# A211111: Number of partitions of n into distinct divisors > 1 of n.

The programs for A211111, there is no canonical definition to state claims against.
-/

/-! ## A211111.P18048265431265886118

`A293814(n)+A157928(n)`
-/

namespace A211111.P18048265431265886118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A157928 n

end

end A211111.P18048265431265886118

/-! ## A211111.P10425438664794806898

`A293814(n)+A057427(A004526(n))`
-/

namespace A211111.P10425438664794806898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A057427 (A004526 n).toNat

end

end A211111.P10425438664794806898

/-! ## A211111.P13487021705639553854

`A293814(n)+A057427(A032741(n))`
-/

namespace A211111.P13487021705639553854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A057427 (A032741 n).toNat

end

end A211111.P13487021705639553854

/-! ## A211111.P11732713028749255227

`A293814(n)+A057427(A086520(n))`
-/

namespace A211111.P11732713028749255227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A057427 (A086520 n).toNat

end

end A211111.P11732713028749255227

/-! ## A211111.P5328571561044594199

`A293814(n)+A057427(A319410(n))`
-/

namespace A211111.P5328571561044594199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A057427 (A319410 n).toNat

end

end A211111.P5328571561044594199

/-! ## A211111.P3070563604367832791

`A293814(n)+A001221(A003642(n+1))`
-/

namespace A211111.P3070563604367832791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A001221 (A003642 (n + 1)).toNat

end

end A211111.P3070563604367832791

/-! ## A211111.P13222288000118897954

`A293814(n)+A178334(A211261(n+1))`
-/

namespace A211111.P13222288000118897954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A178334 (A211261 (n + 1)).toNat

end

end A211111.P13222288000118897954

/-! ## A211111.P14751694434516206265

`A293814(n)+A057427(n-A057427(n))`
-/

namespace A211111.P14751694434516206265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A057427 ((n : ℤ) - A057427 n).toNat

end

end A211111.P14751694434516206265

/-! ## A211111.P3841548592063859264

`A211110(n)+A293814(n)-A293813(n)`
-/

namespace A211111.P3841548592063859264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n + (A293814 n - A293813 n)

end

end A211111.P3841548592063859264

/-! ## A211111.P2234811343486459405

`A293814(n)+A032741(lt[A032741(n), 2])`
-/

namespace A211111.P2234811343486459405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A032741 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A211111.P2234811343486459405

/-! ## A211111.P13157978686068294829

`A293814(n)+A069283(A008578(n+1))`
-/

namespace A211111.P13157978686068294829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A069283 (A008578 (n + 1)).toNat

end

end A211111.P13157978686068294829

/-! ## A211111.P619659382637551612

`A293814(n)+A121262(A299150(n+1)²)`
-/

namespace A211111.P619659382637551612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A121262 (A299150 (n + 1) ^ 2).toNat

end

end A211111.P619659382637551612

/-! ## A211111.P7896646954084631322

`A293814(n)+A121262(A127473(n+1))`
-/

namespace A211111.P7896646954084631322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A121262 (A127473 (n + 1)).toNat

end

end A211111.P7896646954084631322

/-! ## A211111.P10883557541434931875

`A293814(n)+A275730(A000124(n))`
-/

namespace A211111.P10883557541434931875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A275730 (A000124 n).toNat

end

end A211111.P10883557541434931875

/-! ## A211111.P2802295178872169726

`A293814(n)+A057427(n²-n)`
-/

namespace A211111.P2802295178872169726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A057427 (n ^ 2 - n)

end

end A211111.P2802295178872169726

/-!
# A211114: Number of (n+1) X (n+1) -2..2 symmetric matrices with every 2 X 2 subblock having sum zero and one or three distinct values.

The programs for A211114, the canonical program `A211114.P4923214750086786376` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211114 has offset 1).

The definition of A211114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211114.P2054732456258266279

`ogf((9+x-26x^2+20x^4)/(1-2x-3x^2+6x^3+2x^4-4x^5))`
-/

namespace A211114.P2054732456258266279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 1, -26, 0, 20] [1, -2, -3, 6, 2, -4] n

end

end A211114.P2054732456258266279

namespace A211114

/-- `ogf((9+x-26x^2+20x^4)/(1-2x-3x^2+6x^3+2x^4-4x^5))` -/
def P2054732456258266279.Spec : Prop :=
  ∀ n, P2054732456258266279.a n = A211114 (n + 1)

end A211114

/-! ## A211114.P4923214750086786376

`A211476(n+1)+2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211114

/-- `A211476(n+1)+2` -/
def P4923214750086786376.Spec : Prop :=
  ∀ n, P4923214750086786376.a n = A211114 (n + 1)

theorem P4923214750086786376.correct : P4923214750086786376.Spec := by
  intro n
  simp only [A211114, Nat.add_sub_cancel]

end A211114

/-! ## A211114.P5007911310603926857

`A211324(n+1)-A090991(n+1)`
-/

namespace A211114.P5007911310603926857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211324 (n + 1) - A090991 (n + 1)

end

end A211114.P5007911310603926857

namespace A211114

/-- `A211324(n+1)-A090991(n+1)` -/
def P5007911310603926857.Spec : Prop :=
  ∀ n, P5007911310603926857.a n = A211114 (n + 1)

theorem P5007911310603926857.correct : P5007911310603926857.Spec := by
  intro n
  simp only [A211114, Nat.add_sub_cancel, A211114.P5007911310603926857.a, A211114.P4923214750086786376.a, A090991, A090991.P7596988342963813071.a, A211324, A211324.P4978454997270415450.a, A211476, A211476.P824139048349514318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211114

/-! ## A211114.P3215739873266751721

`A211324(n+1)-2*A020701(n)`
-/

namespace A211114.P3215739873266751721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211324 (n + 1) - 2 * A020701 n

end

end A211114.P3215739873266751721

namespace A211114

/-- `A211324(n+1)-2*A020701(n)` -/
def P3215739873266751721.Spec : Prop :=
  ∀ n, P3215739873266751721.a n = A211114 (n + 1)

end A211114

/-! ## A211114.P15232768689900271496

`A211324(n+1)+5-A211322(n+1)`
-/

namespace A211114.P15232768689900271496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211324 (n + 1) + (5 - A211322 (n + 1))

end

end A211114.P15232768689900271496

namespace A211114

/-- `A211324(n+1)+5-A211322(n+1)` -/
def P15232768689900271496.Spec : Prop :=
  ∀ n, P15232768689900271496.a n = A211114 (n + 1)

end A211114

/-! ## A211114.P3659012536285337573

`A211324(n+1)+9-A211329(n+1)`
-/

namespace A211114.P3659012536285337573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211324 (n + 1) + (9 - A211329 (n + 1))

end

end A211114.P3659012536285337573

namespace A211114

/-- `A211324(n+1)+9-A211329(n+1)` -/
def P3659012536285337573.Spec : Prop :=
  ∀ n, P3659012536285337573.a n = A211114 (n + 1)

end A211114

/-! ## A211114.P3004967850577825527

`A211327(n+1)-2^(n+3)+2`
-/

namespace A211114.P3004967850577825527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211327 (n + 1) - (2 ^ (n + 3) : ℤ) + 2

end

end A211114.P3004967850577825527

namespace A211114

/-- `A211327(n+1)-2^(n+3)+2` -/
def P3004967850577825527.Spec : Prop :=
  ∀ n, P3004967850577825527.a n = A211114 (n + 1)

end A211114

/-! ## A211114.P11633346188894632331

`A211324(n+1)-A035513(A167614(n+1))`
-/

namespace A211114.P11633346188894632331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211324 (n + 1) - A035513 (A167614 (n + 1)).toNat

end

end A211114.P11633346188894632331

namespace A211114

/-- `A211324(n+1)-A035513(A167614(n+1))` -/
def P11633346188894632331.Spec : Prop :=
  ∀ n, P11633346188894632331.a n = A211114 (n + 1)

end A211114

/-!
# A211115: Number of (n+1) X (n+1) -2..2 symmetric matrices with every 2 X 2 subblock having sum zero and two or three distinct values.

The programs for A211115, the canonical program `A211115.P16357895928485623417` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211115 has offset 1).

The definition of A211115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211115.P16357895928485623417

`A211477(n+1)+A211490(n+1)-9`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211115

/-- `A211477(n+1)+A211490(n+1)-9` -/
def P16357895928485623417.Spec : Prop :=
  ∀ n, P16357895928485623417.a n = A211115 (n + 1)

theorem P16357895928485623417.correct : P16357895928485623417.Spec := by
  intro n
  simp only [A211115, Nat.add_sub_cancel]

end A211115

/-!
# A211116: Number of (n+1) X (n+1) -2..2 symmetric matrices with every 2 X 2 subblock having sum zero and one, two or three distinct values.

The programs for A211116, the canonical program `A211116.P18323693905449606245` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211116 has offset 1).

The definition of A211116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211116.P18323693905449606245

`A211478(n+1)+2^(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211116

/-- `A211478(n+1)+2^(n+2)` -/
def P18323693905449606245.Spec : Prop :=
  ∀ n, P18323693905449606245.a n = A211116 (n + 1)

theorem P18323693905449606245.correct : P18323693905449606245.Spec := by
  intro n
  simp only [A211116, Nat.add_sub_cancel]

end A211116

/-! ## A211116.P10657871900051279798

`A034008(n+4)+A211478(n+1)`
-/

namespace A211116.P10657871900051279798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 4) + A211478 (n + 1)

end

end A211116.P10657871900051279798

namespace A211116

/-- `A034008(n+4)+A211478(n+1)` -/
def P10657871900051279798.Spec : Prop :=
  ∀ n, P10657871900051279798.a n = A211116 (n + 1)

end A211116

/-! ## A211116.P5626210214003814300

`A292272(A003945(n+2))+A211478(n+1)`
-/

namespace A211116.P5626210214003814300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (A003945 (n + 2)).toNat + A211478 (n + 1)

end

end A211116.P5626210214003814300

namespace A211116

/-- `A292272(A003945(n+2))+A211478(n+1)` -/
def P5626210214003814300.Spec : Prop :=
  ∀ n, P5626210214003814300.a n = A211116 (n + 1)

end A211116

/-!
# A211117: Number of (n+1) X (n+1) -2..2 symmetric matrices with every 2 X 2 subblock having sum zero and two, three or four distinct values.

The programs for A211117, the canonical program `A211117.P3659241348641989542` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211117 has offset 1).

The definition of A211117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211117.P3659241348641989542

`A211479(n+1)+A211490(n+1)-9`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A211117

/-- `A211479(n+1)+A211490(n+1)-9` -/
def P3659241348641989542.Spec : Prop :=
  ∀ n, P3659241348641989542.a n = A211117 (n + 1)

theorem P3659241348641989542.correct : P3659241348641989542.Spec := by
  intro n
  simp only [A211117, Nat.add_sub_cancel]

end A211117

/-! ## A211117.P6618836418186567686

`ogf((12-42x+24x^2+36x^3-16x^4-10x^5)/(1-6x+11x^2-3x^3-8x^4+3x^5+2x^6))`
-/

namespace A211117.P6618836418186567686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -42, 24, 36, -16, -10] [1, -6, 11, -3, -8, 3, 2] n

end

end A211117.P6618836418186567686

namespace A211117

/-- `ogf((12-42x+24x^2+36x^3-16x^4-10x^5)/(1-6x+11x^2-3x^3-8x^4+3x^5+2x^6))` -/
def P6618836418186567686.Spec : Prop :=
  ∀ n, P6618836418186567686.a n = A211117 (n + 1)

end A211117

/-!
# A211118: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211118, there is no canonical definition to state claims against.
-/

/-! ## A211118.P13622862837027785190

`record[A211121(n+1)%A003339(n+1)]`
-/

namespace A211118.P13622862837027785190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211121 (n + 1)) (A003339 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211118.P13622862837027785190

/-! ## A211118.P13176064951717478939

`A211121(A052382(n+1))%A187073(n+1)`
-/

namespace A211118.P13176064951717478939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211121 (A052382 (n + 1)).toNat) (A187073 (n + 1))

end

end A211118.P13176064951717478939

/-! ## A211118.P6197343845089597738

`A211121(A239090(n+1))%A003339(n+2)`
-/

namespace A211118.P6197343845089597738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211121 (A239090 (n + 1)).toNat) (A003339 (n + 2))

end

end A211118.P6197343845089597738

/-! ## A211118.P12907835603605002827

`A211121(A326402(n+1))%A003339(n+2)`
-/

namespace A211118.P12907835603605002827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211121 (A326402 (n + 1)).toNat) (A003339 (n + 2))

end

end A211118.P12907835603605002827

/-! ## A211118.P9398309131267733319

`A211121((n+1)^ceil(n/8))`
-/

namespace A211118.P9398309131267733319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211121 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈(n : ℚ) / 8⌉ : ℤ))).toNat

end

end A211118.P9398309131267733319

/-!
# A211119: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211119, there is no canonical definition to state claims against.
-/

/-! ## A211119.P16991467440207376726

`A135553(A290387(n+2))`
-/

namespace A211119.P16991467440207376726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135553 (A290387 (n + 2)).toNat

end

end A211119.P16991467440207376726

/-! ## A211119.P13803207933705223837

`∩[A135553(n+1), A231239(n+1)]`
-/

namespace A211119.P13803207933705223837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211119.P13803207933705223837

/-! ## A211119.P11509109186743140091

`record[A211123(n+1)/A008406(n+1)]`
-/

namespace A211119.P11509109186743140091
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211123 (n + 1) : ℚ) / (A008406 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211119.P11509109186743140091

/-! ## A211119.P214496075513691136

`record[A211123(n+1)/A039735(n+1)]`
-/

namespace A211119.P214496075513691136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211123 (n + 1) : ℚ) / (A039735 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211119.P214496075513691136

/-! ## A211119.P10679682252587712382

`A211123(n+1)-A326680(A137747(n))`
-/

namespace A211119.P10679682252587712382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211123 (n + 1) - A326680 (A137747 n).toNat

end

end A211119.P10679682252587712382

/-!
# A211120: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211120, there is no canonical definition to state claims against.
-/

/-! ## A211120.P857626742299399964

`A108347(lt[A165110(n), A352891(n+1)])`
-/

namespace A211120.P857626742299399964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A211120.P857626742299399964

/-! ## A211120.P6088161305077366414

`A135553(∪[A034710(n+1), A070222(n+1)]+1)`
-/

namespace A211120.P6088161305077366414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070222 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135553 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A211120.P6088161305077366414

/-! ## A211120.P2211117087754316382

`record[A270418(A211125(n+1))]`
-/

namespace A211120.P2211117087754316382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (A211125 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211120.P2211117087754316382

/-! ## A211120.P11416190179135510852

`record[gcd(A211124(n+1), A211125(n+1))]`
-/

namespace A211120.P11416190179135510852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211124 (n + 1)) (A211125 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211120.P11416190179135510852

/-! ## A211120.P10569056833830413289

`or(A211125(n+1), A257365(A038020(n)))`
-/

namespace A211120.P10569056833830413289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A211125 (n + 1)) (A257365 (A038020 n).toNat)

end

end A211120.P10569056833830413289

/-!
# A211121: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211121, there is no canonical definition to state claims against.
-/

/-! ## A211121.P1593498416408764942

`A211126(n+1)/A201643(n+1)*A211134(n+1)`
-/

namespace A211121.P1593498416408764942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211126 (n + 1) : ℚ) / (A201643 (n + 1) : ℚ) * (A211134 (n + 1) : ℚ)

end

end A211121.P1593498416408764942

/-! ## A211121.P6246928056333347689

`A211118(n+1)+A185255(3*(n+1))`
-/

namespace A211121.P6246928056333347689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211118 (n + 1) + A185255 (3 * (n + 1))

end

end A211121.P6246928056333347689

/-! ## A211121.P4793647613555988385

`A211118(A052382(n+1))%A187073(n+1)`
-/

namespace A211121.P4793647613555988385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211118 (A052382 (n + 1)).toNat) (A187073 (n + 1))

end

end A211121.P4793647613555988385

/-! ## A211121.P13598603369170945368

`A211118(A326402(n+1))%A176682(n+1)`
-/

namespace A211121.P13598603369170945368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211118 (A326402 (n + 1)).toNat) (A176682 (n + 1))

end

end A211121.P13598603369170945368

/-! ## A211121.P1475635544907399514

`A211118(A239090(n+1))%A003339(n+2)`
-/

namespace A211121.P1475635544907399514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211118 (A239090 (n + 1)).toNat) (A003339 (n + 2))

end

end A211121.P1475635544907399514

/-!
# A211122: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211122, there is no canonical definition to state claims against.
-/

/-! ## A211122.P17451359438371043980

`A291179(A211120(n+1)+A039735(n+1))`
-/

namespace A211122.P17451359438371043980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291179 (A211120 (n + 1) + A039735 (n + 1)).toNat

end

end A211122.P17451359438371043980

/-! ## A211122.P8142728452516852137

`A211125(A239090(n+1))%A003339(3*n+4)`
-/

namespace A211122.P8142728452516852137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211125 (A239090 (n + 1)).toNat) (A003339 (3 * n + 4))

end

end A211122.P8142728452516852137

/-! ## A211122.P15616133280007662670

`A211125(A326402(n+1))%A003339(3*n+4)`
-/

namespace A211122.P15616133280007662670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211125 (A326402 (n + 1)).toNat) (A003339 (3 * n + 4))

end

end A211122.P15616133280007662670

/-! ## A211122.P3001720140900474046

`A211120(n+1)/A201643(n+1)*A201643(A239090(n+1))`
-/

namespace A211122.P3001720140900474046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211120 (n + 1) : ℚ) / (A201643 (n + 1) : ℚ) * (A201643 (A239090 (n + 1)).toNat : ℚ)

end

end A211122.P3001720140900474046

/-!
# A211123: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211123, there is no canonical definition to state claims against.
-/

/-! ## A211123.P3864681765443065515

`A201643(n+1)-A081153(A126796(n))`
-/

namespace A211123.P3864681765443065515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201643 (n + 1) - A081153 (A126796 n).toNat

end

end A211123.P3864681765443065515

/-! ## A211123.P16704768071954981817

`A201643(n+1)-A350386(A000108(n))`
-/

namespace A211123.P16704768071954981817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201643 (n + 1) - A350386 (A000108 n).toNat

end

end A211123.P16704768071954981817

/-! ## A211123.P14123299548324112038

`A201643(n+1)-A332671(A201638(n))`
-/

namespace A211123.P14123299548324112038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201643 (n + 1) - A332671 (A201638 n).toNat

end

end A211123.P14123299548324112038

/-! ## A211123.P14885713089790141633

`A201643(n+1)-A035151(A001845(2*n+1))`
-/

namespace A211123.P14885713089790141633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201643 (n + 1) - A035151 (A001845 (2 * n + 1)).toNat

end

end A211123.P14885713089790141633

/-!
# A211124: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211124, there is no canonical definition to state claims against.
-/

/-! ## A211124.P11738521100006787440

`A135553(2*A081549(n+1)-n)`
-/

namespace A211124.P11738521100006787440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135553 (2 * A081549 (n + 1) - (n : ℤ)).toNat

end

end A211124.P11738521100006787440

/-! ## A211124.P17192479253379279637

`A135553(2*A165307(n+1)-n)`
-/

namespace A211124.P17192479253379279637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135553 (2 * A165307 (n + 1) - (n : ℤ)).toNat

end

end A211124.P17192479253379279637

/-! ## A211124.P14002975626340322748

`A135553(2*A289791(n+1)-n)`
-/

namespace A211124.P14002975626340322748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135553 (2 * A289791 (n + 1) - (n : ℤ)).toNat

end

end A211124.P14002975626340322748

/-! ## A211124.P10093251897353838429

`A135553(2*A290386(n+1)-n)`
-/

namespace A211124.P10093251897353838429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135553 (2 * A290386 (n + 1) - (n : ℤ)).toNat

end

end A211124.P10093251897353838429

/-! ## A211124.P9891559371549649223

`A135553(2*A327453(n+1)-n)`
-/

namespace A211124.P9891559371549649223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135553 (2 * A327453 (n + 1) - (n : ℤ)).toNat

end

end A211124.P9891559371549649223

/-!
# A211125: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211125, there is no canonical definition to state claims against.
-/

/-! ## A211125.P11868051986652341797

`∪[A211120(n+1), A211126(3*n+4)]`
-/

namespace A211125.P11868051986652341797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211126 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211125.P11868051986652341797

/-! ## A211125.P2253152194652655179

`A211124(n+1)-A126696(A137747(n))`
-/

namespace A211125.P2253152194652655179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211124 (n + 1) - A126696 (A137747 n).toNat

end

end A211125.P2253152194652655179

/-! ## A211125.P7820734553367784791

`A211120(A239090(n+1))%A003339(n+5)`
-/

namespace A211125.P7820734553367784791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211120 (A239090 (n + 1)).toNat) (A003339 (n + 5))

end

end A211125.P7820734553367784791

/-! ## A211125.P16657135157726395932

`A211120(A326402(n+1))%A003339(n+5)`
-/

namespace A211125.P16657135157726395932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211120 (A326402 (n + 1)).toNat) (A003339 (n + 5))

end

end A211125.P16657135157726395932

/-! ## A211125.P15299142521013323243

`and(A211120(A178859(n+1)), A211132(n+1))`
-/

namespace A211125.P15299142521013323243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211120 (A178859 (n + 1)).toNat) (A211132 (n + 1))

end

end A211125.P15299142521013323243

/-!
# A211126: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211126, there is no canonical definition to state claims against.
-/

/-! ## A211126.P17849363612401234220

`A201643(n+1)*A211121(n+1)/A211134(n+1)`
-/

namespace A211126.P17849363612401234220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201643 (n + 1) * A211121 (n + 1) : ℚ) / (A211134 (n + 1) : ℚ)

end

end A211126.P17849363612401234220

/-! ## A211126.P3663013905406661244

`(A211118(n+1)+A185255(3*(n+1)))*A201643(n+1)/A211134(n+1)`
-/

namespace A211126.P3663013905406661244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A211118 (n + 1) + A185255 (3 * (n + 1))) * A201643 (n + 1) : ℚ) / (A211134 (n + 1) : ℚ)

end

end A211126.P3663013905406661244

/-! ## A211126.P5300014385659254092

`record[A211118(n+1)%A106475(2*n+3)]`
-/

namespace A211126.P5300014385659254092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211118 (n + 1)) (A106475 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211126.P5300014385659254092

/-! ## A211126.P3391486974191699501

`A108347(A002473(A002473(A342951(n+2))))`
-/

namespace A211126.P3391486974191699501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (A002473 (A002473 (A342951 (n + 2)).toNat).toNat).toNat

end

end A211126.P3391486974191699501

/-!
# A211127: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211127, there is no canonical definition to state claims against.
-/

/-! ## A211127.P1225930972064855678

`record[A211118(n+1)%A167499(n)]`
-/

namespace A211127.P1225930972064855678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211118 (n + 1)) (A167499 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211127.P1225930972064855678

/-! ## A211127.P17497195840615679374

`record[A211130(n+1)%A167487(n)]`
-/

namespace A211127.P17497195840615679374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211130 (n + 1)) (A167487 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211127.P17497195840615679374

/-! ## A211127.P3695240435795038468

`or(gcd(5, A201648(n+1)), A211128(n+1))`
-/

namespace A211127.P3695240435795038468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.gcd 5 (A201648 (n + 1)) : ℤ) (A211128 (n + 1))

end

end A211127.P3695240435795038468

/-! ## A211127.P4047789097757979137

`or((n-∑{p}[n, #])², A211129(A034710(n+1)))`
-/

namespace A211127.P4047789097757979137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)) ^ 2) (A211129 (A034710 (n + 1)).toNat)

end

end A211127.P4047789097757979137

/-! ## A211127.P5760291692290850845

`or(A059268(n), A211129(A034710(n+1)))`
-/

namespace A211127.P5760291692290850845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059268 n) (A211129 (A034710 (n + 1)).toNat)

end

end A211127.P5760291692290850845

/-!
# A211128: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211128, there is no canonical definition to state claims against.
-/

/-! ## A211128.P8940607870965877042

`A211129((n+1)^ceil(n/8))`
-/

namespace A211128.P8940607870965877042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211129 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈(n : ℚ) / 8⌉ : ℤ))).toNat

end

end A211128.P8940607870965877042

/-! ## A211128.P3980204442494002689

`A239233(A211129(n+1))`
-/

namespace A211128.P3980204442494002689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239233 (A211129 (n + 1)).toNat

end

end A211128.P3980204442494002689

/-! ## A211128.P3295076352248289204

`A216319(A059181(n+2))`
-/

namespace A211128.P3295076352248289204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216319 (A059181 (n + 2)).toNat

end

end A211128.P3295076352248289204

/-! ## A211128.P13540912687439282531

`A000196(A211129(n+1)²)`
-/

namespace A211128.P13540912687439282531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A211129 (n + 1) ^ 2).toNat

end

end A211128.P13540912687439282531

/-! ## A211128.P722297934026205000

`A137735(A211129(n+1)²)`
-/

namespace A211128.P722297934026205000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A211129 (n + 1) ^ 2).toNat

end

end A211128.P722297934026205000

/-!
# A211130: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211130, there is no canonical definition to state claims against.
-/

/-! ## A211130.P9896758848788004264

`A084563(A051914(n+1))+1`
-/

namespace A211130.P9896758848788004264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084563 (A051914 (n + 1)).toNat + 1

end

end A211130.P9896758848788004264

/-! ## A211130.P15456927069491602331

`record[A000005(A092892(n+1)²)]`
-/

namespace A211130.P15456927069491602331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A092892 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211130.P15456927069491602331

/-! ## A211130.P9046518537121679579

`∩[A048266(n+1), A056761(n+1)]`
-/

namespace A211130.P9046518537121679579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211130.P9046518537121679579

/-! ## A211130.P16441420220950149138

`record[A211118(n+1)%A015783(n+1)]`
-/

namespace A211130.P16441420220950149138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211118 (n + 1)) (A015783 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211130.P16441420220950149138

/-! ## A211130.P10489516280491066489

`record[A211121(n+1)%A260391(3*n+2)]`
-/

namespace A211130.P10489516280491066489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211121 (n + 1)) (A260391 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211130.P10489516280491066489

/-!
# A211131: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211131, there is no canonical definition to state claims against.
-/

/-! ## A211131.P11775453855306354346

`A095163(A201643(n+1)²)`
-/

namespace A211131.P11775453855306354346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095163 (A201643 (n + 1) ^ 2).toNat

end

end A211131.P11775453855306354346

/-! ## A211131.P16051784818738788730

`A095163(A201643(n+1)^2)`
-/

namespace A211131.P16051784818738788730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095163 (A201643 (n + 1) ^ 2).toNat

end

end A211131.P16051784818738788730

/-! ## A211131.P11672031635375648509

`or(1, A074780(A321612(n+1)))`
-/

namespace A211131.P11672031635375648509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074780 (A321612 (n + 1)).toNat)

end

end A211131.P11672031635375648509

/-!
# A211132: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211132, there is no canonical definition to state claims against.
-/

/-! ## A211132.P14826666917815641540

`A018736(A362277(n)+A018676(n+1))`
-/

namespace A211132.P14826666917815641540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (A362277 n + A018676 (n + 1)).toNat

end

end A211132.P14826666917815641540

/-! ## A211132.P12187081345173495322

`A018736(∪[A018736(n+1)+1, A211136(n+1)])`
-/

namespace A211132.P12187081345173495322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211136 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A211132.P12187081345173495322

/-! ## A211132.P15322020596599445861

`A018736(∪[A122260(2*(n+1)), A201643(n+1)])`
-/

namespace A211132.P15322020596599445861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201643 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A211132.P15322020596599445861

/-! ## A211132.P6865191711017353469

`A018736(∪[A122260(2*(n+1)), A211139(n+1)])`
-/

namespace A211132.P6865191711017353469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A211132.P6865191711017353469

/-! ## A211132.P16149654531492664683

`A018736(A342951(n+1)+1)`
-/

namespace A211132.P16149654531492664683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (A342951 (n + 1) + 1).toNat

end

end A211132.P16149654531492664683

/-!
# A211134: One of 17 possible sets of eleven numbers of the form 3^alpha 5^beta 7^gamma whose sum of reciprocals is 1.

The programs for A211134, there is no canonical definition to state claims against.
-/

/-! ## A211134.P7759110188907177593

`A201643(n+1)*A211121(n+1)/A211126(n+1)`
-/

namespace A211134.P7759110188907177593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201643 (n + 1) * A211121 (n + 1) : ℚ) / (A211126 (n + 1) : ℚ)

end

end A211134.P7759110188907177593

/-! ## A211134.P3844198523043213984

`A018736(A002473(n+2)%A211132(n+2))`
-/

namespace A211134.P3844198523043213984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (Int.tmod (A002473 (n + 2)) (A211132 (n + 2))).toNat

end

end A211134.P3844198523043213984

/-! ## A211134.P17617001196106283917

`∪[A018736(A342951(n+5)), A211132(n+1)]`
-/

namespace A211134.P17617001196106283917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (A342951 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211134.P17617001196106283917

/-! ## A211134.P18399216855641966949

`∪[A211132(n+1), A211136(A002473(n+1)²)]`
-/

namespace A211134.P18399216855641966949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211136 (A002473 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211134.P18399216855641966949

/-! ## A211134.P4590455794162559661

`∪[A211132(n+1), A211136(A005109(n+1)²)]`
-/

namespace A211134.P4590455794162559661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211136 (A005109 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211134.P4590455794162559661

/-!
# A211137: One of 15 possible sets of eleven odd numbers, not all of the form 3^alpha 5^beta 7^gamma, whose sum of reciprocals is 1.

The programs for A211137, there is no canonical definition to state claims against.
-/

/-! ## A211137.P6033677113371012181

`record[gcd(A017101(n), A110657(n+3))]`
-/

namespace A211137.P6033677113371012181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017101 n) (A110657 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211137.P6033677113371012181

/-!
# A211142: Number of 2 X 2 matrices having all terms in {-n,...,0,...,n} and determinant n+1.

The programs for A211142, there is no canonical definition to state claims against.
-/

/-! ## A211142.P16686800900181650321

`A006577(A078995(n))+n`
-/

namespace A211142.P16686800900181650321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A078995 n).toNat + (n : ℤ)

end

end A211142.P16686800900181650321

/-!
# A211143: Number of 2 X 2 matrices having all terms in {-n, ..., 0, ..., n} and determinant = n^2.

The programs for A211143, there is no canonical definition to state claims against.
-/

/-! ## A211143.P2345833635428841895

`A098374(A363518(n+1))`
-/

namespace A211143.P2345833635428841895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098374 (A363518 (n + 1)).toNat

end

end A211143.P2345833635428841895

/-!
# A211144: Smallest number k such that the sum of the distinct prime divisors of k equals n times a nontrivial integer power.

The programs for A211144, there is no canonical definition to state claims against.
-/

/-! ## A211144.P6250265107755941336

`A211537(n+1)+A010681(A005899(n))`
-/

namespace A211144.P6250265107755941336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211537 (n + 1) + A010681 (A005899 n).toNat

end

end A211144.P6250265107755941336

/-! ## A211144.P10924874823122238195

`A211537(n+1)+A000038(n)*A333035(n)`
-/

namespace A211144.P10924874823122238195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211537 (n + 1) + A000038 n * A333035 n

end

end A211144.P10924874823122238195

/-!
# A211145: Number of 2 X 2 matrices having all terms in {-n,...,0,..,n} and permanent=trace.

The programs for A211145, there is no canonical definition to state claims against.
-/

/-! ## A211145.P1211074746228472901

`A003215(2*n+1)-A291166(A091823(n+1))`
-/

namespace A211145.P1211074746228472901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (2 * n + 1) - A291166 (A091823 (n + 1)).toNat

end

end A211145.P1211074746228472901

/-!
# A211146: Number of 2 X 2 matrices having all terms in {-n,...,0,...,n} and 0 <= determinant <= n.

The programs for A211146, there is no canonical definition to state claims against.
-/

/-! ## A211146.P6204005039271464524

`∑[A244082(n)+A211140(n)]`
-/

namespace A211146.P6204005039271464524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244082 n + A211140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211146.P6204005039271464524

/-!
# A211147: Number of 2 X 2 matrices having all terms in {-n,...,0,...,n} and nonnegative determinant.

The programs for A211147, there is no canonical definition to state claims against.
-/

/-! ## A211147.P14285990648463232013

`(A209981(n)+A016756(n))/2`
-/

namespace A211147.P14285990648463232013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n + A016756 n : ℚ) / 2

end

end A211147.P14285990648463232013

/-! ## A211147.P11170426345506196433

`A014682(A209981(n)+A016756(n))`
-/

namespace A211147.P11170426345506196433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A209981 n + A016756 n).toNat

end

end A211147.P11170426345506196433

/-!
# A211148: Number of 2 X 2 matrices having all terms in {-n,...,0,..,n} and positive determinant.

The programs for A211148, there is no canonical definition to state claims against.
-/

/-! ## A211148.P1273076743716191618

`(2*n+3)²²-A211147(n+1)`
-/

namespace A211148.P1273076743716191618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 3) ^ 2) ^ 2 : ℤ) - A211147 (n + 1)

end

end A211148.P1273076743716191618

/-! ## A211148.P3737944301455602285

`A211147(n+1)-A209981(n+1)`
-/

namespace A211148.P3737944301455602285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211147 (n + 1) - A209981 (n + 1)

end

end A211148.P3737944301455602285

/-! ## A211148.P15601520907558653156

`(A016756(n+1)-A209981(n+1))/2`
-/

namespace A211148.P15601520907558653156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016756 (n + 1) - A209981 (n + 1) : ℚ) / 2

end

end A211148.P15601520907558653156

/-! ## A211148.P11002013423893106528

`(2*n+3)²²+A211147(n+1)/A008683(A068486(n+1))`
-/

namespace A211148.P11002013423893106528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 3) ^ 2) ^ 2 : ℚ) + (A211147 (n + 1) : ℚ) / (A008683 (A068486 (n + 1)).toNat : ℚ)

end

end A211148.P11002013423893106528

/-! ## A211148.P17529217143366300547

`A211158(n+1)+A211157(n+1)`
-/

namespace A211148.P17529217143366300547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211158 (n + 1) + A211157 (n + 1)

end

end A211148.P17529217143366300547

/-! ## A211148.P12797648375380693063

`A211157(n+1)+A211155(n+1)/2`
-/

namespace A211148.P12797648375380693063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211157 (n + 1) : ℚ) + (A211155 (n + 1) : ℚ) / 2

end

end A211148.P12797648375380693063

/-! ## A211148.P5245991619722389319

`A211157(n+1)+A008574(∑[n+1])*A036498(n+2)`
-/

namespace A211148.P5245991619722389319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211157 (n + 1) + A008574 (∑ j ∈ Finset.range (n + 1), f1 j) * A036498 (n + 2)

end

end A211148.P5245991619722389319

/-! ## A211148.P8251183797845865531

`A211157(n+1)+(A016756(n+1)-A211154(n+1))/2`
-/

namespace A211148.P8251183797845865531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211157 (n + 1) : ℚ) + (A016756 (n + 1) - A211154 (n + 1) : ℚ) / 2

end

end A211148.P8251183797845865531

/-! ## A211148.P9570196099642595378

`A211157(n+1)+4*A000217(n+1)*A036498(n+2)`
-/

namespace A211148.P9570196099642595378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211157 (n + 1) + 4 * (A000217 (n + 1) * A036498 (n + 2))

end

end A211148.P9570196099642595378

/-! ## A211148.P4232166142392818262

`A211157(n+1)+(A014494(n+1)-∑[n+1])*A106232(n+2)`
-/

namespace A211148.P4232166142392818262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211157 (n + 1) + (A014494 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * A106232 (n + 2)

end

end A211148.P4232166142392818262

/-!
# A211149: Number of 2 X 2 nonsingular matrices having all terms in {-n,...,0,...,n}.

The programs for A211149, there is no canonical definition to state claims against.
-/

/-! ## A211149.P7417251800730079243

`2*A211148(n+1)`
-/

namespace A211149.P7417251800730079243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211148 (n + 1)

end

end A211149.P7417251800730079243

/-! ## A211149.P6621686298101647305

`2*((2*n+3)²²-A211147(n+1))`
-/

namespace A211149.P6621686298101647305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((((2 * n + 3) ^ 2) ^ 2 : ℤ) - A211147 (n + 1))

end

end A211149.P6621686298101647305

/-! ## A211149.P10479229535310512164

`record[2*A211148(A106466(n))]`
-/

namespace A211149.P10479229535310512164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211148 (A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211149.P10479229535310512164

/-! ## A211149.P8550680265038303253

`record[2*A211148(A134478(n))]`
-/

namespace A211149.P8550680265038303253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211148 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211149.P8550680265038303253

/-! ## A211149.P1815406987151693843

`record[2*A211148(A152271(n))]`
-/

namespace A211149.P1815406987151693843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211148 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211149.P1815406987151693843

/-! ## A211149.P14049061037718108215

`record[2*A211148(A246694(n))]`
-/

namespace A211149.P14049061037718108215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211148 (A246694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211149.P14049061037718108215

/-! ## A211149.P16267951461152432865

`record[2*A211148(A344180(n))]`
-/

namespace A211149.P16267951461152432865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211148 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211149.P16267951461152432865

/-! ## A211149.P17476507461465868368

`A016756(n+1)-A209981(n+1)`
-/

namespace A211149.P17476507461465868368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016756 (n + 1) - A209981 (n + 1)

end

end A211149.P17476507461465868368

/-! ## A211149.P5858400789541463356

`2*(A211158(n+1)+A211157(n+1))`
-/

namespace A211149.P5858400789541463356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A211158 (n + 1) + A211157 (n + 1))

end

end A211149.P5858400789541463356

/-! ## A211149.P6015297279009350816

`2*(A211147(n+1)-A209981(n+1))`
-/

namespace A211149.P6015297279009350816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A211147 (n + 1) - A209981 (n + 1))

end

end A211149.P6015297279009350816

/-!
# A211150: Number of 2 X 2 matrices having all terms in {-n,...,0,...,n} and determinant > n.

The programs for A211150, there is no canonical definition to state claims against.
-/

/-! ## A211150.P11091613385306982613

`A211151(n+1)-A211140(n+1)`
-/

namespace A211150.P11091613385306982613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211151 (n + 1) - A211140 (n + 1)

end

end A211150.P11091613385306982613

/-! ## A211150.P16236108324009940865

`A211147(n+1)-A211146(n+1)`
-/

namespace A211150.P16236108324009940865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211147 (n + 1) - A211146 (n + 1)

end

end A211150.P16236108324009940865

/-!
# A211151: Number of 2 X 2 matrices having all terms in {-n,...,0,...,n} and determinant > n.

The programs for A211151, there is no canonical definition to state claims against.
-/

/-! ## A211151.P13506523703767992343

`A211150(n+1)+A211140(n+1)`
-/

namespace A211151.P13506523703767992343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211150 (n + 1) + A211140 (n + 1)

end

end A211151.P13506523703767992343

/-! ## A211151.P14323690680649961411

`A211140(n+1)+A211147(n+1)-A211146(n+1)`
-/

namespace A211151.P14323690680649961411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211140 (n + 1) + (A211147 (n + 1) - A211146 (n + 1))

end

end A211151.P14323690680649961411

/-!
# A211154: Number of 2 X 2 matrices having all terms in {-n,...,0,..,n} and even determinant.

The programs for A211154, the canonical program `A211154.P10033703333360363186` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211154 has offset 0).

The definition of A211154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211154.P10033703333360363186

`(2*n+1)²²-A211155(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211154

/-- `(2*n+1)²²-A211155(n)` -/
def P10033703333360363186.Spec : Prop :=
  ∀ n, P10033703333360363186.a n = A211154 n

theorem P10033703333360363186.correct : P10033703333360363186.Spec := by
  intro n
  simp only [A211154]

end A211154

/-! ## A211154.P16411963489755346265

`abs(A016756(n)-A211155(n))`
-/

namespace A211154.P16411963489755346265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016756 n - A211155 n|

end

end A211154.P16411963489755346265

namespace A211154

/-- `abs(A016756(n)-A211155(n))` -/
def P16411963489755346265.Spec : Prop :=
  ∀ n, P16411963489755346265.a n = A211154 n

end A211154

/-! ## A211154.P14337387437825393471

`(A016756(n)-A211155(n))%A017476(n)`
-/

namespace A211154.P14337387437825393471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016756 n - A211155 n) (A017476 n)

end

end A211154.P14337387437825393471

namespace A211154

/-- `(A016756(n)-A211155(n))%A017476(n)` -/
def P14337387437825393471.Spec : Prop :=
  ∀ n, P14337387437825393471.a n = A211154 n

end A211154

/-! ## A211154.P16302543580088564263

`A016756(n)-A033996(n)*A036498(n+1)`
-/

namespace A211154.P16302543580088564263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016756 n - A033996 n * A036498 (n + 1)

end

end A211154.P16302543580088564263

namespace A211154

/-- `A016756(n)-A033996(n)*A036498(n+1)` -/
def P16302543580088564263.Spec : Prop :=
  ∀ n, P16302543580088564263.a n = A211154 n

end A211154

/-! ## A211154.P1017622965874907523

`(A016756(n)-A211155(n))*A007318(C(2, n+2))`
-/

namespace A211154.P1017622965874907523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016756 n - A211155 n) * A007318 (Nat.choose 2 (n + 2))

end

end A211154.P1017622965874907523

namespace A211154

/-- `(A016756(n)-A211155(n))*A007318(C(2, n+2))` -/
def P1017622965874907523.Spec : Prop :=
  ∀ n, P1017622965874907523.a n = A211154 n

end A211154

/-!
# A211155: Number of 2 X 2 matrices having all terms in {-n,...,0,..,n} and odd determinant.

The programs for A211155, the canonical program `A211155.P11427438594459195884` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211155 has offset 0).

The definition of A211155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211155.P11034692237699239772

`ogf((40x+128x^2+728x^3+512x^4+728x^5+128x^6+40x^7)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`
-/

namespace A211155.P11034692237699239772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 40, 128, 728, 512, 728, 128, 40] [1, -1, -4, 4, 6, -6, -4, 4, 1, -1] n

end

end A211155.P11034692237699239772

namespace A211155

/-- `ogf((40x+128x^2+728x^3+512x^4+728x^5+128x^6+40x^7)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P11034692237699239772.Spec : Prop :=
  ∀ n, P11034692237699239772.a n = A211155 n

end A211155

/-! ## A211155.P11427438594459195884

`2*n*(1+n)*(1+3*n+3*n²-(1+2*n)*(-1)^n)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A211155

/-- `2*n*(1+n)*(1+3*n+3*n²-(1+2*n)*(-1)^n)` -/
def P11427438594459195884.Spec : Prop :=
  ∀ n, P11427438594459195884.a n = A211155 n

theorem P11427438594459195884.correct : P11427438594459195884.Spec := by
  intro n
  simp only [A211155]

end A211155

/-! ## A211155.P18192128564929871697

`A016756(n)-A211154(n)`
-/

namespace A211155.P18192128564929871697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016756 n - A211154 n

end

end A211155.P18192128564929871697

namespace A211155

/-- `A016756(n)-A211154(n)` -/
def P18192128564929871697.Spec : Prop :=
  ∀ n, P18192128564929871697.a n = A211155 n

theorem P18192128564929871697.correct : P18192128564929871697.Spec := by
  intro n
  simp only [A211155, Nat.add_sub_cancel, A211155.P18192128564929871697.a, A211155.P11427438594459195884.a, A016756, A016756.P11037387936499398145.a, A211154, A211154.P10033703333360363186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211155

/-! ## A211155.P9729687091296401168

`A016754(n)²-A211154(n)`
-/

namespace A211155.P9729687091296401168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n ^ 2 - A211154 n

end

end A211155.P9729687091296401168

namespace A211155

/-- `A016754(n)²-A211154(n)` -/
def P9729687091296401168.Spec : Prop :=
  ∀ n, P9729687091296401168.a n = A211155 n

theorem P9729687091296401168.correct : P9729687091296401168.Spec := by
  intro n
  simp only [A211155, Nat.add_sub_cancel, A211155.P9729687091296401168.a, A211155.P11427438594459195884.a, A016754, A016754.P2987865549988322084.a, A211154, A211154.P10033703333360363186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211155

/-! ## A211155.P15818719562330026876

`A000290(2*n+1)²-A211154(n)`
-/

namespace A211155.P15818719562330026876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 1) ^ 2 - A211154 n

end

end A211155.P15818719562330026876

namespace A211155

/-- `A000290(2*n+1)²-A211154(n)` -/
def P15818719562330026876.Spec : Prop :=
  ∀ n, P15818719562330026876.a n = A211155 n

theorem P15818719562330026876.correct : P15818719562330026876.Spec := by
  intro n
  simp only [A211155, Nat.add_sub_cancel, A211155.P15818719562330026876.a, A211155.P11427438594459195884.a, A000290, A000290.P12206242496348924484.a, A211154, A211154.P10033703333360363186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211155

/-!
# A211156: Number of 2 X 2 matrices having all terms in {-n,...,0,..,n} and even nonnegative determinant.

The programs for A211156, there is no canonical definition to state claims against.
-/

/-! ## A211156.P3175898608001348653

`A211157(n+1)+A209981(n+1)`
-/

namespace A211156.P3175898608001348653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211157 (n + 1) + A209981 (n + 1)

end

end A211156.P3175898608001348653

/-! ## A211156.P6575388002074662510

`A211147(n+1)-A211158(n+1)`
-/

namespace A211156.P6575388002074662510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211147 (n + 1) - A211158 (n + 1)

end

end A211156.P6575388002074662510

/-! ## A211156.P5436389256990223413

`A211154(n+1)-A211157(n+1)`
-/

namespace A211156.P5436389256990223413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211154 (n + 1) - A211157 (n + 1)

end

end A211156.P5436389256990223413

/-! ## A211156.P14036597773856397464

`A211147(n+1)-A211155(n+1)/2`
-/

namespace A211156.P14036597773856397464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211147 (n + 1) : ℚ) - (A211155 (n + 1) : ℚ) / 2

end

end A211156.P14036597773856397464

/-! ## A211156.P8178111424865271068

`A209981(n+1)+A211148(n+1)-A211158(n+1)`
-/

namespace A211156.P8178111424865271068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209981 (n + 1) + (A211148 (n + 1) - A211158 (n + 1))

end

end A211156.P8178111424865271068

/-! ## A211156.P8336427195472734403

`A211147(n+1)-(A211148(n+1)-A211157(n+1))`
-/

namespace A211156.P8336427195472734403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211147 (n + 1) - (A211148 (n + 1) - A211157 (n + 1))

end

end A211156.P8336427195472734403

/-! ## A211156.P8378196959170862273

`A209981(n+1)+A211149(n+1)/2-A211158(n+1)`
-/

namespace A211156.P8378196959170862273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 (n + 1) : ℚ) + ((A211149 (n + 1) : ℚ) / 2 - (A211158 (n + 1) : ℚ))

end

end A211156.P8378196959170862273

/-! ## A211156.P15050193035191686195

`A211147(n+1)-(A211149(n+1)/2-A211157(n+1))`
-/

namespace A211156.P15050193035191686195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211147 (n + 1) : ℚ) - ((A211149 (n + 1) : ℚ) / 2 - (A211157 (n + 1) : ℚ))

end

end A211156.P15050193035191686195

/-!
# A211157: Number of 2 X 2 matrices having all terms in {-n,...,0,..,n} and positive even determinant.

The programs for A211157, there is no canonical definition to state claims against.
-/

/-! ## A211157.P14300458508336136614

`A211148(n+1)-A211158(n+1)`
-/

namespace A211157.P14300458508336136614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211148 (n + 1) - A211158 (n + 1)

end

end A211157.P14300458508336136614

/-! ## A211157.P9277242768405152222

`A211148(n+1)-A211155(n+1)/2`
-/

namespace A211157.P9277242768405152222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211148 (n + 1) : ℚ) - (A211155 (n + 1) : ℚ) / 2

end

end A211157.P9277242768405152222

/-! ## A211157.P11947948996114754914

`(2*n+3)²²-A211147(n+1)-A211158(n+1)`
-/

namespace A211157.P11947948996114754914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 3) ^ 2) ^ 2 : ℤ) - A211147 (n + 1) - A211158 (n + 1)

end

end A211157.P11947948996114754914

/-! ## A211157.P14955802750822716919

`A211147(n+1)-A209981(n+1)-A211158(n+1)`
-/

namespace A211157.P14955802750822716919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211147 (n + 1) - A209981 (n + 1) - A211158 (n + 1)

end

end A211157.P14955802750822716919

/-! ## A211157.P13501138451393263113

`A211148(n+1)-A008574(∑[n+1])*A036498(n+2)`
-/

namespace A211157.P13501138451393263113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211148 (n + 1) - A008574 (∑ j ∈ Finset.range (n + 1), f1 j) * A036498 (n + 2)

end

end A211157.P13501138451393263113

/-! ## A211157.P13442153524506437074

`A211148(n+1)-(A016756(n+1)-A211154(n+1))/2`
-/

namespace A211157.P13442153524506437074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211148 (n + 1) : ℚ) - (A016756 (n + 1) - A211154 (n + 1) : ℚ) / 2

end

end A211157.P13442153524506437074

/-! ## A211157.P14182600201128819823

`A211148(n+1)-4*A000217(n+1)*A036498(n+2)`
-/

namespace A211157.P14182600201128819823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211148 (n + 1) - 4 * (A000217 (n + 1) * A036498 (n + 2))

end

end A211157.P14182600201128819823

/-! ## A211157.P95412103850422719

`A211148(n+1)-(A014494(n+1)-∑[n+1])*A106232(n+2)`
-/

namespace A211157.P95412103850422719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211148 (n + 1) - (A014494 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * A106232 (n + 2)

end

end A211157.P95412103850422719

/-! ## A211157.P10578482885769327883

`A211149(n+1)/2-A211158(n+1)`
-/

namespace A211157.P10578482885769327883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211149 (n + 1) : ℚ) / 2 - (A211158 (n + 1) : ℚ)

end

end A211157.P10578482885769327883

/-! ## A211157.P12969599283774073501

`A211149(n+1)%(A211158(n+1)+A211148(n+1))`
-/

namespace A211157.P12969599283774073501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211149 (n + 1)) (A211158 (n + 1) + A211148 (n + 1))

end

end A211157.P12969599283774073501

/-!
# A211158: Number of 2 X 2 matrices having all terms in {-n,...,0,..,n} and positive odd determinant.

The programs for A211158, the canonical program `A211158.P10757789982355930020` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211158 has offset 1).

The definition of A211158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211158.P13369559486829826620

`ogf((20+64x+364x^2+256x^3+364x^4+64x^5+20x^6)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`
-/

namespace A211158.P13369559486829826620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [20, 64, 364, 256, 364, 64, 20] [1, -1, -4, 4, 6, -6, -4, 4, 1, -1] n

end

end A211158.P13369559486829826620

namespace A211158

/-- `ogf((20+64x+364x^2+256x^3+364x^4+64x^5+20x^6)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P13369559486829826620.Spec : Prop :=
  ∀ n, P13369559486829826620.a n = A211158 (n + 1)

end A211158

/-! ## A211158.P1365317677133814381

`(n+1)*(n+2)*(3*(n+1)+1+3*(n+1)²-(-1)^(n+1)*(2*(n+1)+1))`
-/

namespace A211158.P1365317677133814381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) * ((3 * (n + 1) + 1 + 3 * (n + 1) ^ 2 : ℤ) - (-1) ^ (n + 1) * (2 * (n + 1) + 1 : ℤ))

end

end A211158.P1365317677133814381

namespace A211158

/-- `(n+1)*(n+2)*(3*(n+1)+1+3*(n+1)²-(-1)^(n+1)*(2*(n+1)+1))` -/
def P1365317677133814381.Spec : Prop :=
  ∀ n, P1365317677133814381.a n = A211158 (n + 1)

end A211158

/-! ## A211158.P10757789982355930020

`A211155(n+1)/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211158

/-- `A211155(n+1)/2` -/
def P10757789982355930020.Spec : Prop :=
  ∀ n, P10757789982355930020.a n = (A211158 (n + 1) : ℚ)

end A211158

/-! ## A211158.P12963643684654107634

`(A016756(n+1)-A211154(n+1))/2`
-/

namespace A211158.P12963643684654107634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016756 (n + 1) - A211154 (n + 1) : ℚ) / 2

end

end A211158.P12963643684654107634

namespace A211158

/-- `(A016756(n+1)-A211154(n+1))/2` -/
def P12963643684654107634.Spec : Prop :=
  ∀ n, P12963643684654107634.a n = (A211158 (n + 1) : ℚ)

end A211158

/-! ## A211158.P3923859624279057919

`A211148(n+1)-A211157(n+1)`
-/

namespace A211158.P3923859624279057919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211148 (n + 1) - A211157 (n + 1)

end

end A211158.P3923859624279057919

namespace A211158

/-- `A211148(n+1)-A211157(n+1)` -/
def P3923859624279057919.Spec : Prop :=
  ∀ n, P3923859624279057919.a n = A211158 (n + 1)

end A211158

/-! ## A211158.P4318324008525797713

`A211149(n+1)/2-A211157(n+1)`
-/

namespace A211158.P4318324008525797713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211149 (n + 1) : ℚ) / 2 - (A211157 (n + 1) : ℚ)

end

end A211158.P4318324008525797713

namespace A211158

/-- `A211149(n+1)/2-A211157(n+1)` -/
def P4318324008525797713.Spec : Prop :=
  ∀ n, P4318324008525797713.a n = (A211158 (n + 1) : ℚ)

end A211158

/-!
# A211159: Number of integer pairs (x,y) such that 0<x<y<=n and x*y=n+1.

The programs for A211159, the canonical program `A211159.P13436548848108563631` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211159 has offset 1).

The definition of A211159 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200213, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A211159.P13436548848108563631

`A200213(n+2)/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211159

/-- `A200213(n+2)/2` -/
def P13436548848108563631.Spec : Prop :=
  ∀ n, P13436548848108563631.a n = (A211159 (n + 1) : ℚ)

end A211159

/-! ## A211159.P14083906892631517803

`(A000005(1+n+1)-A010052(1+n+1)-2)/2`
-/

namespace A211159.P14083906892631517803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (1 + (n + 1)) - A010052 (1 + (n + 1)) - 2 : ℚ) / 2

end

end A211159.P14083906892631517803

namespace A211159

/-- `(A000005(1+n+1)-A010052(1+n+1)-2)/2` -/
def P14083906892631517803.Spec : Prop :=
  ∀ n, P14083906892631517803.a n = (A211159 (n + 1) : ℚ)

end A211159

/-! ## A211159.P5077513811554260847

`floor(∏{e}[n+2, #+1]/2)-1`
-/

namespace A211159.P5077513811554260847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋ - 1

end

end A211159.P5077513811554260847

namespace A211159

/-- `floor(∏{e}[n+2, #+1]/2)-1` -/
def P5077513811554260847.Spec : Prop :=
  ∀ n, P5077513811554260847.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P4513454375651566919

`ceil((∏{e}[n+2, #+1]-1)/2)-1`
-/

namespace A211159.P4513454375651566919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1 : ℚ) / 2⌉ - 1

end

end A211159.P4513454375651566919

namespace A211159

/-- `ceil((∏{e}[n+2, #+1]-1)/2)-1` -/
def P4513454375651566919.Spec : Prop :=
  ∀ n, P4513454375651566919.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P3816728650017656999

`floor(A000005(n+2)/2)-1`
-/

namespace A211159.P3816728650017656999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 2) : ℚ) / 2⌋ - 1

end

end A211159.P3816728650017656999

namespace A211159

/-- `floor(A000005(n+2)/2)-1` -/
def P3816728650017656999.Spec : Prop :=
  ∀ n, P3816728650017656999.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P15759282561025509546

`floor(2*(Δ[A006218(n+1)]-2)/4)`
-/

namespace A211159.P15759282561025509546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (f1 (n + 1) - f1 n - 2) : ℚ) / 4⌋

end

end A211159.P15759282561025509546

namespace A211159

/-- `floor(2*(Δ[A006218(n+1)]-2)/4)` -/
def P15759282561025509546.Spec : Prop :=
  ∀ n, P15759282561025509546.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P2782243016496496664

`A061857(A066446(n+2))`
-/

namespace A211159.P2782243016496496664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061857 (A066446 (n + 2)).toNat

end

end A211159.P2782243016496496664

namespace A211159

/-- `A061857(A066446(n+2))` -/
def P2782243016496496664.Spec : Prop :=
  ∀ n, P2782243016496496664.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P11511654530401249958

`A140106(A000005(n+2))`
-/

namespace A211159.P11511654530401249958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A000005 (n + 2)).toNat

end

end A211159.P11511654530401249958

namespace A211159

/-- `A140106(A000005(n+2))` -/
def P11511654530401249958.Spec : Prop :=
  ∀ n, P11511654530401249958.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P16069414725019665032

`A140106(Δ[A006218(n+1)])`
-/

namespace A211159.P16069414725019665032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (f1 (n + 1) - f1 n).toNat

end

end A211159.P16069414725019665032

namespace A211159

/-- `A140106(Δ[A006218(n+1)])` -/
def P16069414725019665032.Spec : Prop :=
  ∀ n, P16069414725019665032.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P190729115701324731

`A095861(A066446(n+2)+1)`
-/

namespace A211159.P190729115701324731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A066446 (n + 2) + 1).toNat

end

end A211159.P190729115701324731

namespace A211159

/-- `A095861(A066446(n+2)+1)` -/
def P190729115701324731.Spec : Prop :=
  ∀ n, P190729115701324731.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P3850180175156040598

`A004526(A000005(n+2)-2)`
-/

namespace A211159.P3850180175156040598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 2) - 2).toNat

end

end A211159.P3850180175156040598

namespace A211159

/-- `A004526(A000005(n+2)-2)` -/
def P3850180175156040598.Spec : Prop :=
  ∀ n, P3850180175156040598.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P2644972994992960187

`A319571(A000005(n+2)²+1)`
-/

namespace A211159.P2644972994992960187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A000005 (n + 2) ^ 2 + 1).toNat

end

end A211159.P2644972994992960187

namespace A211159

/-- `A319571(A000005(n+2)²+1)` -/
def P2644972994992960187.Spec : Prop :=
  ∀ n, P2644972994992960187.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P5535639217450416875

`A057554(A000005(n+2)²)-1`
-/

namespace A211159.P5535639217450416875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A000005 (n + 2) ^ 2).toNat - 1

end

end A211159.P5535639217450416875

namespace A211159

/-- `A057554(A000005(n+2)²)-1` -/
def P5535639217450416875.Spec : Prop :=
  ∀ n, P5535639217450416875.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P10520790104989845530

`A064727(A000005(n+2)²)-1`
-/

namespace A211159.P10520790104989845530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A000005 (n + 2) ^ 2).toNat - 1

end

end A211159.P10520790104989845530

namespace A211159

/-- `A064727(A000005(n+2)²)-1` -/
def P10520790104989845530.Spec : Prop :=
  ∀ n, P10520790104989845530.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P16470577822676646299

`A337101(A000005(n+2)²)-1`
-/

namespace A211159.P16470577822676646299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A000005 (n + 2) ^ 2).toNat - 1

end

end A211159.P16470577822676646299

namespace A211159

/-- `A337101(A000005(n+2)²)-1` -/
def P16470577822676646299.Spec : Prop :=
  ∀ n, P16470577822676646299.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P8213226961503357225

`A338664(A000005(n+2)²)-1`
-/

namespace A211159.P8213226961503357225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338664 (A000005 (n + 2) ^ 2).toNat - 1

end

end A211159.P8213226961503357225

namespace A211159

/-- `A338664(A000005(n+2)²)-1` -/
def P8213226961503357225.Spec : Prop :=
  ∀ n, P8213226961503357225.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P6555463190157967218

`A057555(A000005(n+2)²)-2`
-/

namespace A211159.P6555463190157967218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A000005 (n + 2) ^ 2).toNat - 2

end

end A211159.P6555463190157967218

namespace A211159

/-- `A057555(A000005(n+2)²)-2` -/
def P6555463190157967218.Spec : Prop :=
  ∀ n, P6555463190157967218.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P17499703955881087833

`A023443(floor(A000005(n+2)/2))`
-/

namespace A211159.P17499703955881087833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌊(A000005 (n + 2) : ℚ) / 2⌋.toNat

end

end A211159.P17499703955881087833

namespace A211159

/-- `A023443(floor(A000005(n+2)/2))` -/
def P17499703955881087833.Spec : Prop :=
  ∀ n, P17499703955881087833.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P16631980235220790321

`A008615(3*A000005(n+2))-1`
-/

namespace A211159.P16631980235220790321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A000005 (n + 2)).toNat - 1

end

end A211159.P16631980235220790321

namespace A211159

/-- `A008615(3*A000005(n+2))-1` -/
def P16631980235220790321.Spec : Prop :=
  ∀ n, P16631980235220790321.a n = A211159 (n + 1)

end A211159

/-! ## A211159.P2994267575093435641

`A211265(n+1)-A211264(n+1)`
-/

namespace A211159.P2994267575093435641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211265 (n + 1) - A211264 (n + 1)

end

end A211159.P2994267575093435641

namespace A211159

/-- `A211265(n+1)-A211264(n+1)` -/
def P2994267575093435641.Spec : Prop :=
  ∀ n, P2994267575093435641.a n = A211159 (n + 1)

end A211159

/-!
# A211161: Table T(n,k) = n, if k is odd, k/2 if k is even; n, k > 0, read by antidiagonals.

The programs for A211161, the canonical program `A211161.P6189623529692111121` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211161 has offset 1).

The definition of A211161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211161.P6189623529692111121

`A209279(1+n)-A142150(A025581(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A211161

/-- `A209279(1+n)-A142150(A025581(n))` -/
def P6189623529692111121.Spec : Prop :=
  ∀ n, P6189623529692111121.a n = A211161 (n + 1)

theorem P6189623529692111121.correct : P6189623529692111121.Spec := by
  intro n
  simp only [A211161, Nat.add_sub_cancel]

end A211161

/-! ## A211161.P174124708167692175

`A209279(n+1)+A128180(n+2)%A209278(n+1)`
-/

namespace A211161.P174124708167692175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) + Int.tmod (A128180 (n + 2)) (A209278 (n + 1))

end

end A211161.P174124708167692175

namespace A211161

/-- `A209279(n+1)+A128180(n+2)%A209278(n+1)` -/
def P174124708167692175.Spec : Prop :=
  ∀ n, P174124708167692175.a n = A211161 (n + 1)

end A211161

/-! ## A211161.P9082841557337467942

`A209279(n+1)-A209279(n+2)%A209278(n+1)`
-/

namespace A211161.P9082841557337467942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) - Int.tmod (A209279 (n + 2)) (A209278 (n + 1))

end

end A211161.P9082841557337467942

namespace A211161

/-- `A209279(n+1)-A209279(n+2)%A209278(n+1)` -/
def P9082841557337467942.Spec : Prop :=
  ∀ n, P9082841557337467942.a n = A211161 (n + 1)

end A211161

/-! ## A211161.P7546578737194461259

`A004736(A064680(A004736(n+1))+n+1)`
-/

namespace A211161.P7546578737194461259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A064680 (A004736 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A211161.P7546578737194461259

namespace A211161

/-- `A004736(A064680(A004736(n+1))+n+1)` -/
def P7546578737194461259.Spec : Prop :=
  ∀ n, P7546578737194461259.a n = A211161 (n + 1)

end A211161

/-! ## A211161.P8703875290569389655

`A004739(A056537(n+1))`
-/

namespace A211161.P8703875290569389655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A056537 (n + 1)).toNat

end

end A211161.P8703875290569389655

namespace A211161

/-- `A004739(A056537(n+1))` -/
def P8703875290569389655.Spec : Prop :=
  ∀ n, P8703875290569389655.a n = A211161 (n + 1)

end A211161

/-! ## A211161.P15797816253165906855

`A053615(A056537(n+1)+A025581(n))`
-/

namespace A211161.P15797816253165906855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A056537 (n + 1) + A025581 n).toNat

end

end A211161.P15797816253165906855

namespace A211161

/-- `A053615(A056537(n+1)+A025581(n))` -/
def P15797816253165906855.Spec : Prop :=
  ∀ n, P15797816253165906855.a n = A211161 (n + 1)

end A211161

/-! ## A211161.P9869031969035725275

`A004737(A273751(n+1))`
-/

namespace A211161.P9869031969035725275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A273751 (n + 1)).toNat

end

end A211161.P9869031969035725275

namespace A211161

/-- `A004737(A273751(n+1))` -/
def P9869031969035725275.Spec : Prop :=
  ∀ n, P9869031969035725275.a n = A211161 (n + 1)

end A211161

/-!
# A211163: Numerator of (-1/Pi^n) * integral_{0..1} (log(1-1/x)^n) dx.

The programs for A211163, there is no canonical definition to state claims against.
-/

/-! ## A211163.P14592820378346147385

`abs(A239275(n+2))`
-/

namespace A211163.P14592820378346147385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239275 (n + 2)|

end

end A211163.P14592820378346147385

/-! ## A211163.P12895458377670222662

`lcm(2^(n+1), A027641(n+2))`
-/

namespace A211163.P12895458377670222662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ (n + 1) : ℤ) (A027641 (n + 2))

end

end A211163.P12895458377670222662

/-! ## A211163.P12969400722280965929

`lcm(2, A239275(A020725(n+1)))`
-/

namespace A211163.P12969400722280965929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A239275 (A020725 (n + 1)).toNat)

end

end A211163.P12969400722280965929

/-! ## A211163.P8214024633336773449

`gcd(A000038(n), A239275(n+2))`
-/

namespace A211163.P8214024633336773449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A239275 (n + 2))

end

end A211163.P8214024633336773449

/-! ## A211163.P1230715783325235395

`lcm(A000079(n+1), A164555(n+2))`
-/

namespace A211163.P1230715783325235395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 (n + 1)) (A164555 (n + 2))

end

end A211163.P1230715783325235395

/-!
# A211164: Number of compositions of n with at most one odd part.

The programs for A211164, the canonical program `A211164.P831064942448002824` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211164 has offset 0).

The definition of A211164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211164.P13255633959872280452

`ogf((1+x-3x^2-x^3+2x^4)/(1-4x^2+4x^4))`
-/

namespace A211164.P13255633959872280452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3, -1, 2] [1, 0, -4, 0, 4] n

end

end A211164.P13255633959872280452

namespace A211164

/-- `ogf((1+x-3x^2-x^3+2x^4)/(1-4x^2+4x^4))` -/
def P13255633959872280452.Spec : Prop :=
  ∀ n, P13255633959872280452.a n = A211164 n

end A211164

/-! ## A211164.P831064942448002824

`4*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A211164

/-- `4*a(n-2)-4*a(n-4)` -/
def P831064942448002824.Spec : Prop :=
  ∀ n, P831064942448002824.a n = A211164 n

theorem P831064942448002824.correct : P831064942448002824.Spec := by
  intro n
  simp only [A211164]

end A211164

/-! ## A211164.P10242239902976021876

`4*(a(n-2)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A211164.P10242239902976021876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n a =>
  4 * (a (n - 2) - a (n - 4))

end

end A211164.P10242239902976021876

namespace A211164

/-- `4*(a(n-2)-a(n-4))` -/
def P10242239902976021876.Spec : Prop :=
  ∀ n, P10242239902976021876.a n = A211164 n

theorem P10242239902976021876.correct : P10242239902976021876.Spec := by
  intro n
  simp only [A211164, Nat.add_sub_cancel, A211164.P10242239902976021876.a, A211164.P831064942448002824.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A211164

/-! ## A211164.P5020869335638029387

`a(n-2)+a(n-2)+a(n-1)%a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A211164.P5020869335638029387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 1) % a (n - 2))

end

end A211164.P5020869335638029387

namespace A211164

/-- `a(n-2)+a(n-2)+a(n-1)%a(n-2)` -/
def P5020869335638029387.Spec : Prop :=
  ∀ n, (P5020869335638029387.a n : ℤ) = A211164 n

end A211164

/-! ## A211164.P4709670953047207266

`Δ[A239632(n)]/A000034(n)`
-/

namespace A211164.P4709670953047207266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 n : ℚ)

end

end A211164.P4709670953047207266

namespace A211164

/-- `Δ[A239632(n)]/A000034(n)` -/
def P4709670953047207266.Spec : Prop :=
  ∀ n, P4709670953047207266.a n = (A211164 n : ℚ)

end A211164

/-! ## A211164.P7389119867960742014

`A059576(A134519(n+2)-2)`
-/

namespace A211164.P7389119867960742014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (A134519 (n + 2) - 2).toNat

end

end A211164.P7389119867960742014

namespace A211164

/-- `A059576(A134519(n+2)-2)` -/
def P7389119867960742014.Spec : Prop :=
  ∀ n, P7389119867960742014.a n = A211164 n

end A211164

/-! ## A211164.P8405713550765428325

`A059576(eq[1, A007318(n+1)])`
-/

namespace A211164.P8405713550765428325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211164.P8405713550765428325

namespace A211164

/-- `A059576(eq[1, A007318(n+1)])` -/
def P8405713550765428325.Spec : Prop :=
  ∀ n, P8405713550765428325.a n = A211164 n

end A211164

/-! ## A211164.P16488238793069298934

`A059576(eq[1, A008288(n+1)])`
-/

namespace A211164.P16488238793069298934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211164.P16488238793069298934

namespace A211164

/-- `A059576(eq[1, A008288(n+1)])` -/
def P16488238793069298934.Spec : Prop :=
  ∀ n, P16488238793069298934.a n = A211164 n

end A211164

/-! ## A211164.P1799808769640617630

`A059576(eq[1, A130595(n+1)²])`
-/

namespace A211164.P1799808769640617630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211164.P1799808769640617630

namespace A211164

/-- `A059576(eq[1, A130595(n+1)²])` -/
def P1799808769640617630.Spec : Prop :=
  ∀ n, P1799808769640617630.a n = A211164 n

end A211164

/-! ## A211164.P10058013019631505359

`A059576(eq[A035002(n+2), A059576(n+1)])`
-/

namespace A211164.P10058013019631505359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035002 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A211164.P10058013019631505359

namespace A211164

/-- `A059576(eq[A035002(n+2), A059576(n+1)])` -/
def P10058013019631505359.Spec : Prop :=
  ∀ n, P10058013019631505359.a n = A211164 n

end A211164

/-! ## A211164.P14761378649298995051

`A059576(eq[1, A130595(n+1)*A130595(n+1)])`
-/

namespace A211164.P14761378649298995051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (n + 1) * A130595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211164.P14761378649298995051

namespace A211164

/-- `A059576(eq[1, A130595(n+1)*A130595(n+1)])` -/
def P14761378649298995051.Spec : Prop :=
  ∀ n, P14761378649298995051.a n = A211164 n

end A211164

/-! ## A211164.P7891681873854471270

`A049063(A024206(n+1))`
-/

namespace A211164.P7891681873854471270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 (A024206 (n + 1)).toNat

end

end A211164.P7891681873854471270

namespace A211164

/-- `A049063(A024206(n+1))` -/
def P7891681873854471270.Spec : Prop :=
  ∀ n, P7891681873854471270.a n = A211164 n

end A211164

/-! ## A211164.P9755851534289125240

`A049063(A033638(n+2)-2)`
-/

namespace A211164.P9755851534289125240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 (A033638 (n + 2) - 2).toNat

end

end A211164.P9755851534289125240

namespace A211164

/-- `A049063(A033638(n+2)-2)` -/
def P9755851534289125240.Spec : Prop :=
  ∀ n, P9755851534289125240.a n = A211164 n

end A211164

/-! ## A211164.P8897192619696328508

`A049063(A008642(2*n)-1)`
-/

namespace A211164.P8897192619696328508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 (A008642 (2 * n) - 1).toNat

end

end A211164.P8897192619696328508

namespace A211164

/-- `A049063(A008642(2*n)-1)` -/
def P8897192619696328508.Spec : Prop :=
  ∀ n, P8897192619696328508.a n = A211164 n

end A211164

/-! ## A211164.P2830935588671560867

`A049063(n-(1-A033638(n)))`
-/

namespace A211164.P2830935588671560867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 ((n : ℤ) - (1 - A033638 n)).toNat

end

end A211164.P2830935588671560867

namespace A211164

/-- `A049063(n-(1-A033638(n)))` -/
def P2830935588671560867.Spec : Prop :=
  ∀ n, P2830935588671560867.a n = A211164 n

end A211164

/-!
# A211167: Neither a cube nor the sum of a prime and a positive cube.

The programs for A211167, there is no canonical definition to state claims against.
-/

/-! ## A211167.P15168897754569473656

`eq[A000007(∑[n]), A283760(n+1)]+1`
-/

namespace A211167.P15168897754569473656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A211167.P15168897754569473656

/-! ## A211167.P16351188569999636259

`eq[A099894(A102376(n)), A283760(n+1)]+1`
-/

namespace A211167.P16351188569999636259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A102376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A211167.P16351188569999636259

/-! ## A211167.P8785226191694868420

`eq[A010051(n+2), A302354(n+2)]+2`
-/

namespace A211167.P8785226191694868420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A211167.P8785226191694868420

/-! ## A211167.P13293960633105556712

`eq[A010057(A001222(n+1)), A302354(n+1)]+1`
-/

namespace A211167.P13293960633105556712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A001222 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A211167.P13293960633105556712

/-!
# A211168: Exponent of alternating group An.

The programs for A211168, the canonical program `A211168.P2837367921230026877` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211168 has offset 1).

The definition of A211168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211168.P2837367921230026877

`lcm(xor(1, n), a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A211168

/-- `lcm(xor(1, n), a(n-1))` -/
def P2837367921230026877.Spec : Prop :=
  ∀ n, (P2837367921230026877.a n : ℤ) = A211168 (n + 1)

theorem P2837367921230026877.correct : P2837367921230026877.Spec := by
  intro n
  simp only [A211168, Nat.add_sub_cancel]

end A211168

/-! ## A211168.P3146352593708542290

`lcm(a(n-1), A065190(n))` with `a(0)=1`
-/

namespace A211168.P3146352593708542290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A065190 n)

end

end A211168.P3146352593708542290

namespace A211168

/-- `lcm(a(n-1), A065190(n))` -/
def P3146352593708542290.Spec : Prop :=
  ∀ n, (P3146352593708542290.a n : ℤ) = A211168 (n + 1)

end A211168

/-! ## A211168.P17467765884377081500

`∏[A014963(char[1]+xor(1, n))]`
-/

namespace A211168.P17467765884377081500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((if ∃ j, f2 j = n then 1 else 0) + Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A211168.P17467765884377081500

namespace A211168

/-- `∏[A014963(char[1]+xor(1, n))]` -/
def P17467765884377081500.Spec : Prop :=
  ∀ n, P17467765884377081500.a n = A211168 (n + 1)

end A211168

/-! ## A211168.P7246733436497260808

`∏[A014963(xor(1, n-char[1]))]`
-/

namespace A211168.P7246733436497260808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.xor 1 ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A211168.P7246733436497260808

namespace A211168

/-- `∏[A014963(xor(1, n-char[1]))]` -/
def P7246733436497260808.Spec : Prop :=
  ∀ n, P7246733436497260808.a n = A211168 (n + 1)

end A211168

/-! ## A211168.P5741892878481503805

`a(n-1)*A014963(xor(1, n))` with `a(0)=1, a(1)=1`
-/

namespace A211168.P5741892878481503805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A014963 (Nat.xor 1 n)

end

end A211168.P5741892878481503805

namespace A211168

/-- `a(n-1)*A014963(xor(1, n))` -/
def P5741892878481503805.Spec : Prop :=
  ∀ n, P5741892878481503805.a n = A211168 (n + 1)

end A211168

/-! ## A211168.P16749504625072054433

`∏[A014963(A028310(xor(1, n)))]`
-/

namespace A211168.P16749504625072054433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028310 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A211168.P16749504625072054433

namespace A211168

/-- `∏[A014963(A028310(xor(1, n)))]` -/
def P16749504625072054433.Spec : Prop :=
  ∀ n, P16749504625072054433.a n = A211168 (n + 1)

end A211168

/-! ## A211168.P15347439904010877223

`∏[A014963(∏{p}[A004442(n), #])]`
-/

namespace A211168.P15347439904010877223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A211168.P15347439904010877223

namespace A211168

/-- `∏[A014963(∏{p}[A004442(n), #])]` -/
def P15347439904010877223.Spec : Prop :=
  ∀ n, P15347439904010877223.a n = A211168 (n + 1)

end A211168

/-! ## A211168.P13457729370777307556

`a(n-1)*A014963(A114112(n+1)-1)` with `a(0)=1`
-/

namespace A211168.P13457729370777307556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (A114112 (n + 1) - 1).toNat

end

end A211168.P13457729370777307556

namespace A211168

/-- `a(n-1)*A014963(A114112(n+1)-1)` -/
def P13457729370777307556.Spec : Prop :=
  ∀ n, P13457729370777307556.a n = A211168 (n + 1)

end A211168

/-! ## A211168.P3691016645549449748

`∏[A014963(A257088(A004442(n)))]`
-/

namespace A211168.P3691016645549449748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A257088 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A211168.P3691016645549449748

namespace A211168

/-- `∏[A014963(A257088(A004442(n)))]` -/
def P3691016645549449748.Spec : Prop :=
  ∀ n, P3691016645549449748.a n = A211168 (n + 1)

end A211168

/-!
# A211169: The least n-almost Sophie Germain prime.

The programs for A211169, there is no canonical definition to state claims against.
-/

/-! ## A211169.P13997586547135702165

`A186008(A041197(n))`
-/

namespace A211169.P13997586547135702165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186008 (A041197 n).toNat

end

end A211169.P13997586547135702165

/-!
# A211170: Primes that are sum of both three and five consecutive primes.

The programs for A211170, the canonical program `A211170.P10008061104866407627` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211170 has offset 1).

The definition of A211170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211170.P10008061104866407627

`∩[A034962(n+1), A034965(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A211170

/-- `∩[A034962(n+1), A034965(n+1)]` -/
def P10008061104866407627.Spec : Prop :=
  ∀ n, (P10008061104866407627.a n : ℤ) = A211170 (n + 1)

theorem P10008061104866407627.correct : P10008061104866407627.Spec := by
  intro n
  simp only [A211170, Nat.add_sub_cancel]

end A211170

/-! ## A211170.P4559241982070289200

`∩[A034962(n+1), A034964(n+1)]`
-/

namespace A211170.P4559241982070289200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211170.P4559241982070289200

namespace A211170

/-- `∩[A034962(n+1), A034964(n+1)]` -/
def P4559241982070289200.Spec : Prop :=
  ∀ n, (P4559241982070289200.a n : ℤ) = A211170 (n + 1)

end A211170

/-! ## A211170.P167929181300116559

`∩[A034961(n+1), A034965(n+1)]`
-/

namespace A211170.P167929181300116559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211170.P167929181300116559

namespace A211170

/-- `∩[A034961(n+1), A034965(n+1)]` -/
def P167929181300116559.Spec : Prop :=
  ∀ n, (P167929181300116559.a n : ℤ) = A211170 (n + 1)

end A211170

/-! ## A211170.P14709214791596936562

`p?[∩[A034961(n+1), A034964(n+1)]]`
-/

namespace A211170.P14709214791596936562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A211170.P14709214791596936562

namespace A211170

/-- `p?[∩[A034961(n+1), A034964(n+1)]]` -/
def P14709214791596936562.Spec : Prop :=
  ∀ n, (P14709214791596936562.a n : ℤ) = A211170 (n + 1)

end A211170

/-! ## A211170.P14900310314030669435

`∩[A034965(n+1), A207637(n+1)]`
-/

namespace A211170.P14900310314030669435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211170.P14900310314030669435

namespace A211170

/-- `∩[A034965(n+1), A207637(n+1)]` -/
def P14900310314030669435.Spec : Prop :=
  ∀ n, (P14900310314030669435.a n : ℤ) = A211170 (n + 1)

end A211170

/-!
# A211171: Exponent of general linear group GL(n,2).

The programs for A211171, the canonical program `A211171.P11473024902200988714` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211171 has offset 1).

The definition of A211171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211171.P11473024902200988714

`A034268(n+1)*A062383(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211171

/-- `A034268(n+1)*A062383(n)` -/
def P11473024902200988714.Spec : Prop :=
  ∀ n, P11473024902200988714.a n = A211171 (n + 1)

theorem P11473024902200988714.correct : P11473024902200988714.Spec := by
  intro n
  simp only [A211171, Nat.add_sub_cancel]

end A211171

/-! ## A211171.P14338835064730281501

`lcm(lcm(2*n, ∑[2*a(n-1)]), a(n-1))` with `a(0)=1`
-/

namespace A211171.P14338835064730281501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (Nat.lcm (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j)) (a (n - 1))

end

end A211171.P14338835064730281501

namespace A211171

/-- `lcm(lcm(2*n, ∑[2*a(n-1)]), a(n-1))` -/
def P14338835064730281501.Spec : Prop :=
  ∀ n, (P14338835064730281501.a n : ℤ) = A211171 (n + 1)

end A211171

/-! ## A211171.P9819131188233185041

`∏[A019320(n+1)]*A062383(n)`
-/

namespace A211171.P9819131188233185041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A062383 n

end

end A211171.P9819131188233185041

namespace A211171

/-- `∏[A019320(n+1)]*A062383(n)` -/
def P9819131188233185041.Spec : Prop :=
  ∀ n, P9819131188233185041.a n = A211171 (n + 1)

end A211171

/-! ## A211171.P7893985656598931680

`2^ceil(log2(n+1))*A069934(2^n)`
-/

namespace A211171.P7893985656598931680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (A069934 (2 ^ n) : ℚ)

end

end A211171.P7893985656598931680

namespace A211171

/-- `2^ceil(log2(n+1))*A069934(2^n)` -/
def P7893985656598931680.Spec : Prop :=
  ∀ n, P7893985656598931680.a n = (A211171 (n + 1) : ℚ)

end A211171

/-!
# A211173: a(n) = (2n)!^n (modulo 2n+1).

The programs for A211173, the canonical program `A211173.P7488017100782827256` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211173 has offset 0).

The definition of A211173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211173.P11497304811042174029

`(2*n)^(n%2)*A010051(Δ[n²])`
-/

namespace A211173.P11497304811042174029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ (n % 2) : ℤ) * A010051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A211173.P11497304811042174029

namespace A211173

/-- `(2*n)^(n%2)*A010051(Δ[n²])` -/
def P11497304811042174029.Spec : Prop :=
  ∀ n, P11497304811042174029.a n = A211173 n

end A211173

/-! ## A211173.P1586931985439180914

`(2*n)^and(1, n)*A010051(2*n+1)`
-/

namespace A211173.P1586931985439180914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ Nat.land 1 n : ℤ) * A010051 (2 * n + 1)

end

end A211173.P1586931985439180914

namespace A211173

/-- `(2*n)^and(1, n)*A010051(2*n+1)` -/
def P1586931985439180914.Spec : Prop :=
  ∀ n, P1586931985439180914.a n = A211173 n

end A211173

/-! ## A211173.P7488017100782827256

`A101264(n)*A266303(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A211173

/-- `A101264(n)*A266303(n)` -/
def P7488017100782827256.Spec : Prop :=
  ∀ n, P7488017100782827256.a n = A211173 n

theorem P7488017100782827256.correct : P7488017100782827256.Spec := by
  intro n
  simp only [A211173]

end A211173

/-! ## A211173.P7511140410574391185

`lcm(A112448(n), A266303(n))`
-/

namespace A211173.P7511140410574391185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112448 n) (A266303 n)

end

end A211173.P7511140410574391185

namespace A211173

/-- `lcm(A112448(n), A266303(n))` -/
def P7511140410574391185.Spec : Prop :=
  ∀ n, (P7511140410574391185.a n : ℤ) = A211173 n

end A211173

/-! ## A211173.P18001937409212801990

`and(A085090(n+1), A266303(n))`
-/

namespace A211173.P18001937409212801990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085090 (n + 1)) (A266303 n)

end

end A211173.P18001937409212801990

namespace A211173

/-- `and(A085090(n+1), A266303(n))` -/
def P18001937409212801990.Spec : Prop :=
  ∀ n, P18001937409212801990.a n = A211173 n

end A211173

/-! ## A211173.P5721484092169490499

`and(A085090(n+1), A267352(n))`
-/

namespace A211173.P5721484092169490499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085090 (n + 1)) (A267352 n)

end

end A211173.P5721484092169490499

namespace A211173

/-- `and(A085090(n+1), A267352(n))` -/
def P5721484092169490499.Spec : Prop :=
  ∀ n, P5721484092169490499.a n = A211173 n

end A211173

/-! ## A211173.P11891571007839902092

`and(A085090(n+1), A168330(n+1))`
-/

namespace A211173.P11891571007839902092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085090 (n + 1)) (A168330 (n + 1))

end

end A211173.P11891571007839902092

namespace A211173

/-- `and(A085090(n+1), A168330(n+1))` -/
def P11891571007839902092.Spec : Prop :=
  ∀ n, P11891571007839902092.a n = A211173 n

end A211173

/-! ## A211173.P16350330751197496455

`and(A085090(n+1), A327767(n+1))`
-/

namespace A211173.P16350330751197496455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085090 (n + 1)) (A327767 (n + 1))

end

end A211173.P16350330751197496455

namespace A211173

/-- `and(A085090(n+1), A327767(n+1))` -/
def P16350330751197496455.Spec : Prop :=
  ∀ n, P16350330751197496455.a n = A211173 n

end A211173

/-! ## A211173.P10040236372848811738

`(xor(1, n)+1+n)%A128059(n+1)`
-/

namespace A211173.P10040236372848811738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.xor 1 n + 1 + n : ℤ) (A128059 (n + 1))

end

end A211173.P10040236372848811738

namespace A211173

/-- `(xor(1, n)+1+n)%A128059(n+1)` -/
def P10040236372848811738.Spec : Prop :=
  ∀ n, P10040236372848811738.a n = A211173 n

end A211173

/-! ## A211173.P9208308385887186723

`(A110560(2*n)-1)/A019425(n+1)`
-/

namespace A211173.P9208308385887186723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110560 (2 * n) - 1 : ℚ) / (A019425 (n + 1) : ℚ)

end

end A211173.P9208308385887186723

namespace A211173

/-- `(A110560(2*n)-1)/A019425(n+1)` -/
def P9208308385887186723.Spec : Prop :=
  ∀ n, P9208308385887186723.a n = (A211173 n : ℚ)

end A211173

/-! ## A211173.P12159323891128645085

`(A219964(2*n+1)-1)/A019425(n+1)`
-/

namespace A211173.P12159323891128645085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219964 (2 * n + 1) - 1 : ℚ) / (A019425 (n + 1) : ℚ)

end

end A211173.P12159323891128645085

namespace A211173

/-- `(A219964(2*n+1)-1)/A019425(n+1)` -/
def P12159323891128645085.Spec : Prop :=
  ∀ n, P12159323891128645085.a n = (A211173 n : ℚ)

end A211173

/-! ## A211173.P6876434487398685978

`and(A085090(n+1), A280412(n))`
-/

namespace A211173.P6876434487398685978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085090 (n + 1)) (A280412 n)

end

end A211173.P6876434487398685978

namespace A211173

/-- `and(A085090(n+1), A280412(n))` -/
def P6876434487398685978.Spec : Prop :=
  ∀ n, P6876434487398685978.a n = A211173 n

end A211173

/-! ## A211173.P2620834914061106407

`and(A085090(n+1), A282004(n))`
-/

namespace A211173.P2620834914061106407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085090 (n + 1)) (A282004 n)

end

end A211173.P2620834914061106407

namespace A211173

/-- `and(A085090(n+1), A282004(n))` -/
def P2620834914061106407.Spec : Prop :=
  ∀ n, P2620834914061106407.a n = A211173 n

end A211173

/-! ## A211173.P2769003664483617722

`A051960(n)%A060308(n+1)`
-/

namespace A211173.P2769003664483617722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051960 n) (A060308 (n + 1))

end

end A211173.P2769003664483617722

namespace A211173

/-- `A051960(n)%A060308(n+1)` -/
def P2769003664483617722.Spec : Prop :=
  ∀ n, P2769003664483617722.a n = A211173 n

end A211173

/-! ## A211173.P4381918808913676431

`and(A085090(n+1), A266302(n))`
-/

namespace A211173.P4381918808913676431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085090 (n + 1)) (A266302 n)

end

end A211173.P4381918808913676431

namespace A211173

/-- `and(A085090(n+1), A266302(n))` -/
def P4381918808913676431.Spec : Prop :=
  ∀ n, P4381918808913676431.a n = A211173 n

end A211173

/-!
# A211178: Denominator of Sum_{k=1..n}(-1)^k/phi(k), where phi = A000010.

The programs for A211178, there is no canonical definition to state claims against.
-/

/-! ## A211178.P3260102577395858664

`A002322(A072983(n+1))/2^∑{e}[n+1, #-1]`
-/

namespace A211178.P3260102577395858664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (A072983 (n + 1)).toNat : ℚ) / (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ)

end

end A211178.P3260102577395858664

/-! ## A211178.P14622717111726844501

`A007733(A002805(n+1)/A145394(n+1))`
-/

namespace A211178.P14622717111726844501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (SequenceMachineLib.roundAway ((A002805 (n + 1) : ℚ) / (A145394 (n + 1) : ℚ))).toNat

end

end A211178.P14622717111726844501

/-! ## A211178.P7281018974141354178

`A069010(A114464(n))*A173557(n+1)`
-/

namespace A211178.P7281018974141354178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A114464 n).toNat * A173557 (n + 1)

end

end A211178.P7281018974141354178

/-! ## A211178.P1030199878143241838

`A007733(C(A328273(n+1), A103391(n+1)))`
-/

namespace A211178.P1030199878143241838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (Nat.choose (A328273 (n + 1)).toNat (A103391 (n + 1)).toNat)

end

end A211178.P1030199878143241838

/-!
# A211179: Number of free polypentagrams with n cells.

The programs for A211179, there is no canonical definition to state claims against.
-/

/-! ## A211179.P13537907202167324472

`A128720(n)+A002265(A098296(n))`
-/

namespace A211179.P13537907202167324472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128720 n + A002265 (A098296 n).toNat

end

end A211179.P13537907202167324472

/-! ## A211179.P16831062350542717956

`A273058(A072213(n)+A011765(n+1))`
-/

namespace A211179.P16831062350542717956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273058 (A072213 n + A011765 (n + 1)).toNat

end

end A211179.P16831062350542717956

/-!
# A211180: G.f. satisfies: A(x) = x + A( x^2 + x^2*A(x) ).

The programs for A211180, there is no canonical definition to state claims against.
-/

/-! ## A211180.P16966457232417463340

`A332111(A227309(n))`
-/

namespace A211180.P16966457232417463340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332111 (A227309 n).toNat

end

end A211180.P16966457232417463340

/-! ## A211180.P17975818888104443142

`A137734(Δ[A104882(n)]²)`
-/

namespace A211180.P17975818888104443142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A211180.P17975818888104443142

/-! ## A211180.P574080639866989919

`A137735(Δ[A104882(n)]²)`
-/

namespace A211180.P574080639866989919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A211180.P574080639866989919

/-! ## A211180.P12178473794504621937

`Δ[A104882(n)%A076513(n+1)]`
-/

namespace A211180.P12178473794504621937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104882 n) (A076513 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211180.P12178473794504621937

/-! ## A211180.P18397478826955451109

`A000194(A022553(n)+A001088(n))`
-/

namespace A211180.P18397478826955451109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A022553 n + A001088 n).toNat

end

end A211180.P18397478826955451109

/-!
# A211181: Numbers k such that (k+1)^2 + k and (k+1)^2 - k are both prime.

The programs for A211181, there is no canonical definition to state claims against.
-/

/-! ## A211181.P5363322870741679875

`A137446(n+1)-1`
-/

namespace A211181.P5363322870741679875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1) - 1

end

end A211181.P5363322870741679875

/-! ## A211181.P10752741096024095450

`A321800(A332550(n))+A137446(n+1)`
-/

namespace A211181.P10752741096024095450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A332550 n).toNat + A137446 (n + 1)

end

end A211181.P10752741096024095450

/-! ## A211181.P15866023487509824927

`A137454(A014963(2*(n+1)))+A137446(n+1)`
-/

namespace A211181.P15866023487509824927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137454 (A014963 (2 * (n + 1))).toNat + A137446 (n + 1)

end

end A211181.P15866023487509824927

/-! ## A211181.P12561665089031683581

`∩[A002328(n+1)-2, A002384(n+1)]`
-/

namespace A211181.P12561665089031683581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211181.P12561665089031683581

/-! ## A211181.P3398524346234360292

`∩[A002384(n+1), A094210(n+1)]`
-/

namespace A211181.P3398524346234360292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211181.P3398524346234360292

/-! ## A211181.P17735366665746377296

`∩[A002384(n+1), A045546(n+1)-1]`
-/

namespace A211181.P17735366665746377296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211181.P17735366665746377296

/-! ## A211181.P8220755304441838049

`∩[A045546(n+1), A055494(n+1)]-1`
-/

namespace A211181.P8220755304441838049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A211181.P8220755304441838049

/-! ## A211181.P17294562864353385344

`∩[A055494(n+1)-1, A094210(n+1)]`
-/

namespace A211181.P17294562864353385344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211181.P17294562864353385344

/-! ## A211181.P6317518500355886303

`A023443(A137446(n+1))`
-/

namespace A211181.P6317518500355886303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A137446 (n + 1)).toNat

end

end A211181.P6317518500355886303

/-! ## A211181.P8612596347792222488

`eq[4, A278251(n+1)+A278247(n)]`
-/

namespace A211181.P8612596347792222488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (n + 1) + A278247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211181.P8612596347792222488

/-! ## A211181.P10045182807735802898

`eq[A006644(A278247(n)), A278251(n+1)]`
-/

namespace A211181.P10045182807735802898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006644 (A278247 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211181.P10045182807735802898

/-! ## A211181.P4457069980166409496

`eq[A289335(A289357(n+1)), A289356(n)]`
-/

namespace A211181.P4457069980166409496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289335 (A289357 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211181.P4457069980166409496

/-! ## A211181.P2701206093740190095

`A143051(A137446(n+1))%A137460(n+1)`
-/

namespace A211181.P2701206093740190095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143051 (A137446 (n + 1)).toNat) (A137460 (n + 1))

end

end A211181.P2701206093740190095

/-! ## A211181.P10831704356987151887

`A023443(∩[A002328(n+1)-1, A055494(n+1)])`
-/

namespace A211181.P10831704356987151887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A211181.P10831704356987151887

/-! ## A211181.P4989438000763013044

`A065423(2*A137446(n+1))`
-/

namespace A211181.P4989438000763013044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A137446 (n + 1)).toNat

end

end A211181.P4989438000763013044

/-! ## A211181.P7602691986697384463

`A321800(A196222(n))+A137446(n+1)`
-/

namespace A211181.P7602691986697384463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A196222 n).toNat + A137446 (n + 1)

end

end A211181.P7602691986697384463

/-!
# A211183: Triangle T(n,k), 0<=k<=n, read by rows, given by (0, 1, 1, 3, 3, 6, 6, 10, 10, 15, ...) DELTA (1, 0, 2, 0, 3, 0, 4, 0, 5, ...) where DELTA is the operator defined in A084938.

The programs for A211183, there is no canonical definition to state claims against.
-/

/-! ## A211183.P17387148630988371323

`A048766((A187556(n)+A111106(n))²)`
-/

namespace A211183.P17387148630988371323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((A187556 n + A111106 n) ^ 2).toNat

end

end A211183.P17387148630988371323

/-! ## A211183.P12542247233540269257

`A124761(A008233(n))+A094344(n)`
-/

namespace A211183.P12542247233540269257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A008233 n).toNat + A094344 n

end

end A211183.P12542247233540269257

/-! ## A211183.P9439212879949047745

`A228370(A264428(n)%A093795(n+1))`
-/

namespace A211183.P9439212879949047745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228370 (Int.tmod (A264428 n) (A093795 (n + 1))).toNat

end

end A211183.P9439212879949047745

/-! ## A211183.P5864874580815599138

`A060831(and(A264428(n), A265796(n+1)))`
-/

namespace A211183.P5864874580815599138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (Int.land (A264428 n) (A265796 (n + 1))).toNat

end

end A211183.P5864874580815599138

/-! ## A211183.P2891595861283661776

`A003714(A264428(n))-A185284(3*n+1)`
-/

namespace A211183.P2891595861283661776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A264428 n).toNat - A185284 (3 * n + 1)

end

end A211183.P2891595861283661776

/-!
# A211185: Numbers whose number of proper divisors equals the number of their anti-divisors.

The programs for A211185, there is no canonical definition to state claims against.
-/

/-! ## A211185.P11976049221697140537

`eq[A000005(n+1), A066241(n+1)]+1`
-/

namespace A211185.P11976049221697140537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A211185.P11976049221697140537

/-! ## A211185.P6091940769074685603

`eq[A032741(n+1), A066272(n+1)]+1`
-/

namespace A211185.P6091940769074685603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A211185.P6091940769074685603

/-! ## A211185.P10307379173112217766

`eq[A066272(n+1)+1, A000005(n+1)]+1`
-/

namespace A211185.P10307379173112217766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A211185.P10307379173112217766

/-! ## A211185.P6514775831128161350

`eq[∑{d}[n+1, 1-A000010(#)]+n+1, A066241(n+1)]+1`
-/

namespace A211185.P6514775831128161350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - A000010 d) + (n + 1 : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A211185.P6514775831128161350

/-! ## A211185.P7665351740660711320

`eq[∑{d}[n+1, 1-#]+A000203(n+1), A066241(n+1)]+1`
-/

namespace A211185.P7665351740660711320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ)) + A000203 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A211185.P7665351740660711320

/-!
# A211191: List of odd values of k for which k^2+4 has a factor that is a square number larger than 1.

The programs for A211191, there is no canonical definition to state claims against.
-/

/-! ## A211191.P18017221236924386906

`eq[A008683(A087475(n)), A035363(n)]`
-/

namespace A211191.P18017221236924386906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A087475 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211191.P18017221236924386906

/-! ## A211191.P15641258594182372776

`eq[A008683(A087475(n)), A056594(n)]`
-/

namespace A211191.P15641258594182372776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A087475 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211191.P15641258594182372776

/-! ## A211191.P17222623380262643209

`eq[A008683(A087475(n)), A059841(n)]`
-/

namespace A211191.P17222623380262643209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A087475 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211191.P17222623380262643209

/-! ## A211191.P18039648547690892935

`eq[A008683(A087475(n)), A230642(n)]`
-/

namespace A211191.P18039648547690892935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A087475 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211191.P18039648547690892935

/-! ## A211191.P2644776305310494344

`eq[A003966(n+1), A008683(A087475(n))]`
-/

namespace A211191.P2644776305310494344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A087475 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211191.P2644776305310494344

/-!
# A211192: Consider all distinct functions f representable as x -> x^x^...^x with n x's and parentheses inserted in all possible ways; sequence gives difference between numbers of f with f(0)=1 and numbers of f with f(0)=0, with conventions that 0^0=1^0=1^1=1, 0^1=0.

The programs for A211192, there is no canonical definition to state claims against.
-/

/-! ## A211192.P2218247578268698716

`A222380(n)-A222379(n)`
-/

namespace A211192.P2218247578268698716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222380 n - A222379 n

end

end A211192.P2218247578268698716

/-! ## A211192.P17545728538007738142

`A222380(n)+A057428(n)*A222379(n)`
-/

namespace A211192.P17545728538007738142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222380 n + A057428 n * A222379 n

end

end A211192.P17545728538007738142

/-! ## A211192.P13825760381667541370

`A222380(n)+A153881(n+1)*A222379(n)`
-/

namespace A211192.P13825760381667541370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222380 n + A153881 (n + 1) * A222379 n

end

end A211192.P13825760381667541370

/-! ## A211192.P14100209529185234476

`A000081(n)-2*A222379(n)`
-/

namespace A211192.P14100209529185234476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n - 2 * A222379 n

end

end A211192.P14100209529185234476

/-! ## A211192.P9605258367231400370

`2*A222380(n)-A000081(n)`
-/

namespace A211192.P9605258367231400370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222380 n - A000081 n

end

end A211192.P9605258367231400370

/-! ## A211192.P3806697843744896224

`A318753(A001105(n))-2*A222379(n)`
-/

namespace A211192.P3806697843744896224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A001105 n).toNat - 2 * A222379 n

end

end A211192.P3806697843744896224

/-! ## A211192.P2255069283375159289

`2*A222380(n)-A318753(A001105(n))`
-/

namespace A211192.P2255069283375159289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222380 n - A318753 (A001105 n).toNat

end

end A211192.P2255069283375159289

/-! ## A211192.P15046932458556378022

`A318753(A046092(n))-2*A222379(n)`
-/

namespace A211192.P15046932458556378022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A046092 n).toNat - 2 * A222379 n

end

end A211192.P15046932458556378022

/-! ## A211192.P8175927439953652123

`2*A222380(n)-A318753(A046092(n))`
-/

namespace A211192.P8175927439953652123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222380 n - A318753 (A046092 n).toNat

end

end A211192.P8175927439953652123

/-! ## A211192.P11198752847466038206

`2*A222380(n)-A242249(A034856(n+1))`
-/

namespace A211192.P11198752847466038206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222380 n - A242249 (A034856 (n + 1)).toNat

end

end A211192.P11198752847466038206

/-!
# A211193: E.g.f.: exp((1+x)^(1+x)-1).

The programs for A211193, there is no canonical definition to state claims against.
-/

/-! ## A211193.P14904833500339845509

`A004001(∑[A357661(n)+A267814(n)])`
-/

namespace A211193.P14904833500339845509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357661 n + A267814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211193.P14904833500339845509

/-! ## A211193.P6972696402352523591

`ceil(sqrt(A333369(∑{digits}[n, #^#])))`
-/

namespace A211193.P6972696402352523591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A333369 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ x).sum : ℝ)⌉

end

end A211193.P6972696402352523591

/-!
# A211194: G.f.: Sum_{n>=0} n! * (x/2)^n * Product_{k=1..n} (3*k-1) / (1 + k*(3*k-1)/2*x).

The programs for A211194, there is no canonical definition to state claims against.
-/

/-! ## A211194.P651566538987371099

`A008620(∑[(1-∑[n!])²])`
-/

namespace A211194.P651566538987371099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211194.P651566538987371099

/-!
# A211195: a(n) = 2*Sum_{k=0..n-1} {[x^k] A(x)^(n-k)} * {[x^(n-k-1)] A(x)^(k+1)/(k+1)} for n>0, with a(0)=1, where g.f. A(x) = Sum_{n>=0} a(n)*x^n.

The programs for A211195, there is no canonical definition to state claims against.
-/

/-! ## A211195.P8650390921034680492

`(n+1)*A211196(n+1)`
-/

namespace A211195.P8650390921034680492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A211196 (n + 1)

end

end A211195.P8650390921034680492

/-! ## A211195.P12677755451110619904

`A003417(A317366(n))`
-/

namespace A211195.P12677755451110619904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (A317366 n).toNat

end

end A211195.P12677755451110619904

/-!
# A211196: a(n) = A211195(n-1)/n for n>=1.

The programs for A211196, there is no canonical definition to state claims against.
-/

/-! ## A211196.P15474926122636431829

`A211195(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A211196.P15474926122636431829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211195 n : ℚ) / (n + 1 : ℚ)

end

end A211196.P15474926122636431829

/-! ## A211196.P17303515318645709900

`A127757(A005411(n))`
-/

namespace A211196.P17303515318645709900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A005411 n).toNat

end

end A211196.P17303515318645709900

/-!
# A211197: Table T(n,k) = 2*n + ((-1)^n)*(1/2 - (k-1) mod 2) - 1/2; n, k > 0, read by antidiagonals.

The programs for A211197, the canonical program `A211197.P9481613499707772193` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211197 has offset 1).

The definition of A211197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211197.P14273851690031522656

`2*(col(n)+1)+(-1)^(col(n)+1)*(1/2-(row(n)-col(n))%2)-1/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A211197.P14273851690031522656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (SequenceMachineLib.triCol n + 1) : ℚ) + ((-1) ^ (SequenceMachineLib.triCol n + 1) : ℚ) * ((1 : ℚ) / 2 - (Int.tmod ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) 2 : ℚ)) - (1 : ℚ) / 2

end

end A211197.P14273851690031522656

namespace A211197

/-- `2*(col(n)+1)+(-1)^(col(n)+1)*(1/2-(row(n)-col(n))%2)-1/2` -/
def P14273851690031522656.Spec : Prop :=
  ∀ n, P14273851690031522656.a n = (A211197 (n + 1) : ℚ)

end A211197

/-! ## A211197.P9481613499707772193

`2*A002260(n+1)-A057211(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A211197

/-- `2*A002260(n+1)-A057211(n+1)` -/
def P9481613499707772193.Spec : Prop :=
  ∀ n, P9481613499707772193.a n = A211197 (n + 1)

theorem P9481613499707772193.correct : P9481613499707772193.Spec := by
  intro n
  simp only [A211197, Nat.add_sub_cancel]

end A211197

/-! ## A211197.P16053653518728380342

`2*A002260(n+1)+(-1)^A002260(n+1)*(1/2-(A004736(n+1)-1)%2)-1/2`
-/

namespace A211197.P16053653518728380342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A002260 (n + 1) : ℚ) + (-1 : ℚ) ^ (A002260 (n + 1) : ℤ) * ((1 : ℚ) / 2 - (Int.tmod (A004736 (n + 1) - 1) 2 : ℚ)) - (1 : ℚ) / 2

end

end A211197.P16053653518728380342

namespace A211197

/-- `2*A002260(n+1)+(-1)^A002260(n+1)*(1/2-(A004736(n+1)-1)%2)-1/2` -/
def P16053653518728380342.Spec : Prop :=
  ∀ n, P16053653518728380342.a n = (A211197 (n + 1) : ℚ)

end A211197

/-! ## A211197.P838278762776957329

`(1-T(n-2,k))*(T(n,k-1)+1-T(n-2,k))+1` with `a(0)=1`
-/

namespace A211197.P838278762776957329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - SequenceMachineLib.triUp2 a n) * (SequenceMachineLib.triLeft a n + 1 - SequenceMachineLib.triUp2 a n) + 1

end

end A211197.P838278762776957329

namespace A211197

/-- `(1-T(n-2,k))*(T(n,k-1)+1-T(n-2,k))+1` -/
def P838278762776957329.Spec : Prop :=
  ∀ n, P838278762776957329.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P1199263927673310787

`∑[4-or(2, A198954(n))]`
-/

namespace A211197.P1199263927673310787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.lor 2 (A198954 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211197.P1199263927673310787

namespace A211197

/-- `∑[4-or(2, A198954(n))]` -/
def P1199263927673310787.Spec : Prop :=
  ∀ n, P1199263927673310787.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P15017783987941283664

`A133256(A131225(n+1))`
-/

namespace A211197.P15017783987941283664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A131225 (n + 1)).toNat

end

end A211197.P15017783987941283664

namespace A211197

/-- `A133256(A131225(n+1))` -/
def P15017783987941283664.Spec : Prop :=
  ∀ n, P15017783987941283664.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P15681184853711122585

`A158405(n+1)+A057212(n+1)`
-/

namespace A211197.P15681184853711122585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) + A057212 (n + 1)

end

end A211197.P15681184853711122585

namespace A211197

/-- `A158405(n+1)+A057212(n+1)` -/
def P15681184853711122585.Spec : Prop :=
  ∀ n, P15681184853711122585.a n = A211197 (n + 1)

theorem P15681184853711122585.correct : P15681184853711122585.Spec := by
  intro n
  simp only [A211197, Nat.add_sub_cancel, A211197.P15681184853711122585.a, A211197.P9481613499707772193.a, A002260, A002260.P9170571874073898642.a, A057211, A057211.P13662060525465798747.a, A057212, A057212.P15780615681694366480.a, A158405, A158405.P5173674940907569791.a, A000035, A000035.P2023072528413494694.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211197

/-! ## A211197.P2554116797156031209

`A157502(n+1)-A093995(n+1)`
-/

namespace A211197.P2554116797156031209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1) - A093995 (n + 1)

end

end A211197.P2554116797156031209

namespace A211197

/-- `A157502(n+1)-A093995(n+1)` -/
def P2554116797156031209.Spec : Prop :=
  ∀ n, P2554116797156031209.a n = A211197 (n + 1)

theorem P2554116797156031209.correct : P2554116797156031209.Spec := by
  intro n
  simp only [A211197, Nat.add_sub_cancel, A211197.P2554116797156031209.a, A211197.P9481613499707772193.a, A002260, A002260.P9170571874073898642.a, A057211, A057211.P13662060525465798747.a, A093995, A093995.P5594123937363278598.a, A157502, A157502.P11939738735497661628.a, A000035, A000035.P2023072528413494694.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A211197

/-! ## A211197.P804725745392576744

`A201208(n+1)+2*A002262(n)`
-/

namespace A211197.P804725745392576744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201208 (n + 1) + 2 * A002262 n

end

end A211197.P804725745392576744

namespace A211197

/-- `A201208(n+1)+2*A002262(n)` -/
def P804725745392576744.Spec : Prop :=
  ∀ n, P804725745392576744.a n = A211197 (n + 1)

theorem P804725745392576744.correct : P804725745392576744.Spec := by
  intro n
  simp only [A211197, Nat.add_sub_cancel, A211197.P804725745392576744.a, A211197.P9481613499707772193.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A057211, A057211.P13662060525465798747.a, A201208, A201208.P11775252334027749297.a, A000035, A000035.P2023072528413494694.a, A002024, A002024.P11700297927830783882.a, A057212, A057212.P15780615681694366480.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211197

/-! ## A211197.P1980215176187732974

`A158405(n+1)+A003056(n)%2`
-/

namespace A211197.P1980215176187732974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) + Int.tmod (A003056 n) 2

end

end A211197.P1980215176187732974

namespace A211197

/-- `A158405(n+1)+A003056(n)%2` -/
def P1980215176187732974.Spec : Prop :=
  ∀ n, P1980215176187732974.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P17757359176927207829

`A157502(n+1)-A002024(n+1)²`
-/

namespace A211197.P17757359176927207829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1) - A002024 (n + 1) ^ 2

end

end A211197.P17757359176927207829

namespace A211197

/-- `A157502(n+1)-A002024(n+1)²` -/
def P17757359176927207829.Spec : Prop :=
  ∀ n, P17757359176927207829.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P2356210399695495930

`2*A074147(n+1)-A001614(n+1)`
-/

namespace A211197.P2356210399695495930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074147 (n + 1) - A001614 (n + 1)

end

end A211197.P2356210399695495930

namespace A211197

/-- `2*A074147(n+1)-A001614(n+1)` -/
def P2356210399695495930.Spec : Prop :=
  ∀ n, P2356210399695495930.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P12407873338722149950

`A158405(n+1)+A059841(A280172(n+1))`
-/

namespace A211197.P12407873338722149950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) + A059841 (A280172 (n + 1)).toNat

end

end A211197.P12407873338722149950

namespace A211197

/-- `A158405(n+1)+A059841(A280172(n+1))` -/
def P12407873338722149950.Spec : Prop :=
  ∀ n, P12407873338722149950.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P2135607464251191623

`A005843(A002260(n+1))-A057211(n+1)`
-/

namespace A211197.P2135607464251191623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002260 (n + 1)).toNat - A057211 (n + 1)

end

end A211197.P2135607464251191623

namespace A211197

/-- `A005843(A002260(n+1))-A057211(n+1)` -/
def P2135607464251191623.Spec : Prop :=
  ∀ n, P2135607464251191623.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P1291936236695036062

`A060511(A060511(n)+2+n)`
-/

namespace A211197.P1291936236695036062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060511 (A060511 n + 2 + (n : ℤ)).toNat

end

end A211197.P1291936236695036062

namespace A211197

/-- `A060511(A060511(n)+2+n)` -/
def P1291936236695036062.Spec : Prop :=
  ∀ n, P1291936236695036062.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P7341536499601869098

`A057038(A128217(n+2))`
-/

namespace A211197.P7341536499601869098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057038 (A128217 (n + 2)).toNat

end

end A211197.P7341536499601869098

namespace A211197

/-- `A057038(A128217(n+2))` -/
def P7341536499601869098.Spec : Prop :=
  ∀ n, P7341536499601869098.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P8155409733702658186

`A304337(A209293(n+1))`
-/

namespace A211197.P8155409733702658186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304337 (A209293 (n + 1)).toNat

end

end A211197.P8155409733702658186

namespace A211197

/-- `A304337(A209293(n+1))` -/
def P8155409733702658186.Spec : Prop :=
  ∀ n, P8155409733702658186.a n = A211197 (n + 1)

end A211197

/-! ## A211197.P12590933937062464224

`A053186(A157502(n+1))`
-/

namespace A211197.P12590933937062464224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A157502 (n + 1)).toNat

end

end A211197.P12590933937062464224

namespace A211197

/-- `A053186(A157502(n+1))` -/
def P12590933937062464224.Spec : Prop :=
  ∀ n, P12590933937062464224.a n = A211197 (n + 1)

end A211197

/-!
# A211198: The largest highly composite number (A002182) that is prime(n)-smooth.

The programs for A211198, there is no canonical definition to state claims against.
-/

/-! ## A211198.P11724271090969003594

`A002182(A330737(n+1)-1)`
-/

namespace A211198.P11724271090969003594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A330737 (n + 1) - 1).toNat

end

end A211198.P11724271090969003594

/-! ## A211198.P1529295827186845166

`A134592(p?[comp[n²]])`
-/

namespace A211198.P1529295827186845166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134592 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A211198.P1529295827186845166

/-! ## A211198.P14172940762798177663

`A134592(A181325(n))`
-/

namespace A211198.P14172940762798177663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134592 (A181325 n).toNat

end

end A211198.P14172940762798177663

/-! ## A211198.P16508713921884688098

`A134592(A390240(n))`
-/

namespace A211198.P16508713921884688098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134592 (A390240 n).toNat

end

end A211198.P16508713921884688098

/-! ## A211198.P13919922708813570433

`A134592(A000040(n+1))`
-/

namespace A211198.P13919922708813570433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134592 (A000040 (n + 1)).toNat

end

end A211198.P13919922708813570433

/-!
# A211199: Sum of the 16th powers of the decimal digits of n.

The programs for A211199, there is no canonical definition to state claims against.
-/

/-! ## A211199.P3402770184194803499

`∑{digits}[n, #^16]`
-/

namespace A211199.P3402770184194803499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 16).sum

end

end A211199.P3402770184194803499

/-! ## A211199.P15838200008227909551

`A003132(n)^A031176(A194452(2*(n+1)))`
-/

namespace A211199.P15838200008227909551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003132 n : ℚ) ^ (A031176 (A194452 (2 * (n + 1))).toNat : ℤ)

end

end A211199.P15838200008227909551

