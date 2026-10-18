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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A132200: Numbers in (4,4)-Pascal triangle .

The programs for A132200, the canonical program `A132200.P1071814747902084860` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132200 has offset 0).

The definition of A132200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132200.P18410626478164712090

`round(4*A134059(n)/3)`
-/

namespace A132200.P18410626478164712090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((A134059 n : ℚ) / 3))

end

end A132200.P18410626478164712090

namespace A132200

/-- `round(4*A134059(n)/3)` -/
def P18410626478164712090.Spec : Prop :=
  ∀ n, P18410626478164712090.a n = A132200 n

end A132200

/-! ## A132200.P1067494270541112651

`A135087(n)+A057427(n)`
-/

namespace A132200.P1067494270541112651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135087 n + A057427 n

end

end A132200.P1067494270541112651

namespace A132200

/-- `A135087(n)+A057427(n)` -/
def P1067494270541112651.Spec : Prop :=
  ∀ n, P1067494270541112651.a n = A132200 n

end A132200

/-! ## A132200.P16920247839776549219

`A134065(n)+A073424(n)`
-/

namespace A132200.P16920247839776549219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134065 n + A073424 n

end

end A132200.P16920247839776549219

namespace A132200

/-- `A134065(n)+A073424(n)` -/
def P16920247839776549219.Spec : Prop :=
  ∀ n, P16920247839776549219.a n = A132200 n

end A132200

/-! ## A132200.P8276491077170983050

`A135087(n)-A057428(n)`
-/

namespace A132200.P8276491077170983050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135087 n - A057428 n

end

end A132200.P8276491077170983050

namespace A132200

/-- `A135087(n)-A057428(n)` -/
def P8276491077170983050.Spec : Prop :=
  ∀ n, P8276491077170983050.a n = A132200 n

end A132200

/-! ## A132200.P1218357488035005024

`A007318(n)*A123932(n)`
-/

namespace A132200.P1218357488035005024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A123932 n

end

end A132200.P1218357488035005024

namespace A132200

/-- `A007318(n)*A123932(n)` -/
def P1218357488035005024.Spec : Prop :=
  ∀ n, P1218357488035005024.a n = A132200 n

end A132200

/-! ## A132200.P8709908683645237732

`lcm(A123932(n), A131112(n))`
-/

namespace A132200.P8709908683645237732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123932 n) (A131112 n)

end

end A132200.P8709908683645237732

namespace A132200

/-- `lcm(A123932(n), A131112(n))` -/
def P8709908683645237732.Spec : Prop :=
  ∀ n, (P8709908683645237732.a n : ℤ) = A132200 n

end A132200

/-! ## A132200.P8056695729601417114

`A134058(n)²/A007318(n)`
-/

namespace A132200.P8056695729601417114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134058 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A132200.P8056695729601417114

namespace A132200

/-- `A134058(n)²/A007318(n)` -/
def P8056695729601417114.Spec : Prop :=
  ∀ n, P8056695729601417114.a n = (A132200 n : ℚ)

end A132200

/-! ## A132200.P16214086565760125746

`(A057427(n)+1)*A134058(n)`
-/

namespace A132200.P16214086565760125746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A134058 n

end

end A132200.P16214086565760125746

namespace A132200

/-- `(A057427(n)+1)*A134058(n)` -/
def P16214086565760125746.Spec : Prop :=
  ∀ n, P16214086565760125746.a n = A132200 n

end A132200

/-! ## A132200.P6761768241880834397

`(1-A057428(n))*A134058(n)`
-/

namespace A132200.P6761768241880834397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A134058 n

end

end A132200.P6761768241880834397

namespace A132200

/-- `(1-A057428(n))*A134058(n)` -/
def P6761768241880834397.Spec : Prop :=
  ∀ n, P6761768241880834397.a n = A132200 n

end A132200

/-! ## A132200.P12116336443245922126

`(2-A000007(n))*A134058(n)`
-/

namespace A132200.P12116336443245922126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A134058 n

end

end A132200.P12116336443245922126

namespace A132200

/-- `(2-A000007(n))*A134058(n)` -/
def P12116336443245922126.Spec : Prop :=
  ∀ n, P12116336443245922126.a n = A132200 n

end A132200

/-! ## A132200.P15270759329187749904

`2*A134059(n)-A134058(n)`
-/

namespace A132200.P15270759329187749904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134059 n - A134058 n

end

end A132200.P15270759329187749904

namespace A132200

/-- `2*A134059(n)-A134058(n)` -/
def P15270759329187749904.Spec : Prop :=
  ∀ n, P15270759329187749904.a n = A132200 n

end A132200

/-! ## A132200.P8253241233391645293

`(A135089(n)+A134059(n))/2`
-/

namespace A132200.P8253241233391645293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135089 n + A134059 n : ℚ) / 2

end

end A132200.P8253241233391645293

namespace A132200

/-- `(A135089(n)+A134059(n))/2` -/
def P8253241233391645293.Spec : Prop :=
  ∀ n, P8253241233391645293.a n = (A132200 n : ℚ)

end A132200

/-! ## A132200.P11917486707491351693

`A135087(n)+n/A028310(n)`
-/

namespace A132200.P11917486707491351693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135087 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A132200.P11917486707491351693

namespace A132200

/-- `A135087(n)+n/A028310(n)` -/
def P11917486707491351693.Spec : Prop :=
  ∀ n, P11917486707491351693.a n = (A132200 n : ℚ)

end A132200

/-! ## A132200.P1071814747902084860

`A000032(C(2, n+2))²*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132200

/-- `A000032(C(2, n+2))²*A007318(n)` -/
def P1071814747902084860.Spec : Prop :=
  ∀ n, P1071814747902084860.a n = A132200 n

theorem P1071814747902084860.correct : P1071814747902084860.Spec := by
  intro n
  simp only [A132200]

end A132200

/-! ## A132200.P9994055868272543124

`A000032(floor(1/(n+1)))²*A007318(n)`
-/

namespace A132200.P9994055868272543124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat ^ 2 * A007318 n

end

end A132200.P9994055868272543124

namespace A132200

/-- `A000032(floor(1/(n+1)))²*A007318(n)` -/
def P9994055868272543124.Spec : Prop :=
  ∀ n, P9994055868272543124.a n = A132200 n

end A132200

/-! ## A132200.P1939053272552006611

`A020639(A004277(n))²*A007318(n)`
-/

namespace A132200.P1939053272552006611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat ^ 2 * A007318 n

end

end A132200.P1939053272552006611

namespace A132200

/-- `A020639(A004277(n))²*A007318(n)` -/
def P1939053272552006611.Spec : Prop :=
  ∀ n, P1939053272552006611.a n = A132200 n

end A132200

/-! ## A132200.P14469057625688949887

`A134058(n)+A134059(n)-A007318(n)`
-/

namespace A132200.P14469057625688949887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n + (A134059 n - A007318 n)

end

end A132200.P14469057625688949887

namespace A132200

/-- `A134058(n)+A134059(n)-A007318(n)` -/
def P14469057625688949887.Spec : Prop :=
  ∀ n, P14469057625688949887.a n = A132200 n

end A132200

/-!
# A132203: Number of order-independent ways to represent 24*n+5 as the sum of squares of exactly 5 primes.

The programs for A132203, there is no canonical definition to state claims against.
-/

/-! ## A132203.P14844335802303149393

`A001221(A000079(n))*A002265(A077105(3*n+5))`
-/

namespace A132203.P14844335802303149393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 n).toNat * A002265 (A077105 (3 * n + 5)).toNat

end

end A132203.P14844335802303149393

/-! ## A132203.P16401369874067670070

`A338732(A338712(n+1)%A000984(n))`
-/

namespace A132203.P16401369874067670070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338732 (Int.tmod (A338712 (n + 1)) (A000984 n)).toNat

end

end A132203.P16401369874067670070

/-! ## A132203.P7525905803961660250

`A338732(A338712(n+1))%A324075(n)`
-/

namespace A132203.P7525905803961660250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338732 (A338712 (n + 1)).toNat) (A324075 n)

end

end A132203.P7525905803961660250

/-!
# A132207: Triangle read by rows: row n lists first 2*4^n terms of an array read by rows, in which row k gives 2*4^n + 3*k - 1; 5*4^n + 3*k - 1, with k>=0 in each array.

The programs for A132207, there is no canonical definition to state claims against.
-/

/-! ## A132207.P3011615047685184784

`3*A154129(n)+1`
-/

namespace A132207.P3011615047685184784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A154129 n + 1

end

end A132207.P3011615047685184784

/-! ## A132207.P9354893629353461294

`A016777(A154129(n))`
-/

namespace A132207.P9354893629353461294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A154129 n).toNat

end

end A132207.P9354893629353461294

/-! ## A132207.P8613782815680205370

`A071054(2*A154129(n))`
-/

namespace A132207.P8613782815680205370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 (2 * A154129 n).toNat

end

end A132207.P8613782815680205370

/-! ## A132207.P11421363956383771841

`A008619(6*A154129(n))`
-/

namespace A132207.P11421363956383771841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (6 * A154129 n).toNat

end

end A132207.P11421363956383771841

/-! ## A132207.P11605660871173647373

`A028242(6*A154129(n))`
-/

namespace A132207.P11605660871173647373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (6 * A154129 n).toNat

end

end A132207.P11605660871173647373

/-! ## A132207.P1268986582251656189

`A052938(6*A154129(n))`
-/

namespace A132207.P1268986582251656189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (6 * A154129 n).toNat

end

end A132207.P1268986582251656189

/-! ## A132207.P2644819407577888006

`A008611(9*A154129(n))`
-/

namespace A132207.P2644819407577888006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (9 * A154129 n).toNat

end

end A132207.P2644819407577888006

/-! ## A132207.P8129551129448149484

`A008620(9*A154129(n))`
-/

namespace A132207.P8129551129448149484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (9 * A154129 n).toNat

end

end A132207.P8129551129448149484

/-! ## A132207.P2261336795233041491

`A032766(A154129(n)+A154129(n)+1)`
-/

namespace A132207.P2261336795233041491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A154129 n + (A154129 n + 1)).toNat

end

end A132207.P2261336795233041491

/-!
# A132208: a(n) = 15*n*(n+1) + 11.

The programs for A132208, the canonical program `A132208.P7313337025879621140` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132208 has offset 0).

The definition of A132208 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n*(n+1)+11` (program `A132208.P7313337025879621140`, by `A132208.P7313337025879621140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132208.P7313337025879621140

`15*n*(n+1)+11`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132208

/-- `15*n*(n+1)+11` -/
def P7313337025879621140.Spec : Prop :=
  ∀ n, (P7313337025879621140.a n : ℤ) = A132208 n

theorem P7313337025879621140.correct : P7313337025879621140.Spec := by
  intro n
  simp only [A132208]

end A132208

/-! ## A132208.P2117053276774756967

`∑[a(n-1)+30]` with `a(0)=11, a(1)=30`
-/

namespace A132208.P2117053276774756967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 30] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132208.P2117053276774756967

namespace A132208

/-- `∑[a(n-1)+30]` -/
def P2117053276774756967.Spec : Prop :=
  ∀ n, (P2117053276774756967.a n : ℤ) = A132208 n

end A132208

/-! ## A132208.P17566144217262061509

`∑[record[2*a(n-1)-a(n-2)]]` with `a(0)=11, a(1)=0, a(2)=30, a(3)=60`
-/

namespace A132208.P17566144217262061509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [11, 0, 30, 60] fun n f2 =>
  2 * f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132208.P17566144217262061509

namespace A132208

/-- `∑[record[2*a(n-1)-a(n-2)]]` -/
def P17566144217262061509.Spec : Prop :=
  ∀ n, P17566144217262061509.a n = A132208 n

end A132208

/-! ## A132208.P7322333586811186951

`or(1, ∑[A249674(n)]+11)`
-/

namespace A132208.P7322333586811186951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A132208.P7322333586811186951

namespace A132208

/-- `or(1, ∑[A249674(n)]+11)` -/
def P7322333586811186951.Spec : Prop :=
  ∀ n, P7322333586811186951.a n = A132208 n

end A132208

/-! ## A132208.P16568086533370857883

`Δ[A244725(n)+A016921(n)]`
-/

namespace A132208.P16568086533370857883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132208.P16568086533370857883

namespace A132208

/-- `Δ[A244725(n)+A016921(n)]` -/
def P16568086533370857883.Spec : Prop :=
  ∀ n, P16568086533370857883.a n = A132208 n

end A132208

/-! ## A132208.P11820899831542598496

`∑[A314022(2*A008486(n))]`
-/

namespace A132208.P11820899831542598496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 (2 * A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132208.P11820899831542598496

namespace A132208

/-- `∑[A314022(2*A008486(n))]` -/
def P11820899831542598496.Spec : Prop :=
  ∀ n, P11820899831542598496.a n = A132208 n

end A132208

/-! ## A132208.P13130902381469774866

`A128467(∑[n])`
-/

namespace A132208.P13130902381469774866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132208.P13130902381469774866

namespace A132208

/-- `A128467(∑[n])` -/
def P13130902381469774866.Spec : Prop :=
  ∀ n, P13130902381469774866.a n = A132208 n

end A132208

/-! ## A132208.P12880069958436471676

`A128467(A000217(n))%A203091(n+1)`
-/

namespace A132208.P12880069958436471676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128467 (A000217 n).toNat) (A203091 (n + 1))

end

end A132208.P12880069958436471676

namespace A132208

/-- `A128467(A000217(n))%A203091(n+1)` -/
def P12880069958436471676.Spec : Prop :=
  ∀ n, P12880069958436471676.a n = A132208 n

end A132208

/-! ## A132208.P8355440964799755135

`A014682(A017353(∑[2*n]))`
-/

namespace A132208.P8355440964799755135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A017353 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A132208.P8355440964799755135

namespace A132208

/-- `A014682(A017353(∑[2*n]))` -/
def P8355440964799755135.Spec : Prop :=
  ∀ n, P8355440964799755135.a n = A132208 n

end A132208

/-! ## A132208.P9267517366715513399

`A017281(∑[n+1]+n²)`
-/

namespace A132208.P9267517366715513399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2)

end

end A132208.P9267517366715513399

namespace A132208

/-- `A017281(∑[n+1]+n²)` -/
def P9267517366715513399.Spec : Prop :=
  ∀ n, P9267517366715513399.a n = A132208 n

end A132208

/-!
# A132209: a(0) = 0 and a(n) = 2*n^2 + 2*n - 1, for n>=1.

The programs for A132209, the canonical program `A132209.P5758200921783935227` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132209 has offset 0).

The definition of A132209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132209.P4762024669852371925

`∑[4*n-char[1]]`
-/

namespace A132209.P4762024669852371925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132209.P4762024669852371925

namespace A132209

/-- `∑[4*n-char[1]]` -/
def P4762024669852371925.Spec : Prop :=
  ∀ n, P4762024669852371925.a n = A132209 n

end A132209

/-! ## A132209.P5758200921783935227

`∑[10*n]%Δ[n^3]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132209

/-- `∑[10*n]%Δ[n^3]` -/
def P5758200921783935227.Spec : Prop :=
  ∀ n, P5758200921783935227.a n = A132209 n

theorem P5758200921783935227.correct : P5758200921783935227.Spec := by
  intro n
  simp only [A132209]

end A132209

/-! ## A132209.P4196763426701667120

`a(n-1)+4*n` with `a(0)=0, a(1)=3`
-/

namespace A132209.P4196763426701667120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + 4 * n

end

end A132209.P4196763426701667120

namespace A132209

/-- `a(n-1)+4*n` -/
def P4196763426701667120.Spec : Prop :=
  ∀ n, (P4196763426701667120.a n : ℤ) = A132209 n

end A132209

/-! ## A132209.P5216150862268394271

`record[n*(2*n-3)]+n`
-/

namespace A132209.P5216150862268394271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A132209.P5216150862268394271

namespace A132209

/-- `record[n*(2*n-3)]+n` -/
def P5216150862268394271.Spec : Prop :=
  ∀ n, P5216150862268394271.a n = A132209 n

end A132209

/-! ## A132209.P14191588289953445062

`ogf((3x+2x^2-x^3)/(1-3x+3x^2-x^3))`
-/

namespace A132209.P14191588289953445062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, -1] [1, -3, 3, -1] n

end

end A132209.P14191588289953445062

namespace A132209

/-- `ogf((3x+2x^2-x^3)/(1-3x+3x^2-x^3))` -/
def P14191588289953445062.Spec : Prop :=
  ∀ n, P14191588289953445062.a n = A132209 n

end A132209

/-! ## A132209.P976000310724925229

`floor(2*n/tan(1/(n+1)))`
-/

namespace A132209.P976000310724925229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / Real.tan (1 / (n + 1 : ℚ) : ℝ)⌋

end

end A132209.P976000310724925229

namespace A132209

/-- `floor(2*n/tan(1/(n+1)))` -/
def P976000310724925229.Spec : Prop :=
  ∀ n, P976000310724925229.a n = A132209 n

end A132209

/-! ## A132209.P5663730283919572200

`floor(2*n/asin(1/(n+1)))`
-/

namespace A132209.P5663730283919572200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / Real.arcsin (1 / (n + 1 : ℚ) : ℝ)⌋

end

end A132209.P5663730283919572200

namespace A132209

/-- `floor(2*n/asin(1/(n+1)))` -/
def P5663730283919572200.Spec : Prop :=
  ∀ n, P5663730283919572200.a n = A132209 n

end A132209

/-! ## A132209.P17554207354432260647

`floor(2*n/sinh(1/(n+1)))`
-/

namespace A132209.P17554207354432260647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / Real.sinh (1 / (n + 1 : ℚ) : ℝ)⌋

end

end A132209.P17554207354432260647

namespace A132209

/-- `floor(2*n/sinh(1/(n+1)))` -/
def P17554207354432260647.Spec : Prop :=
  ∀ n, P17554207354432260647.a n = A132209 n

end A132209

/-! ## A132209.P1272708262630230307

`floor(2*n*cot(1/(n+1)))`
-/

namespace A132209.P1272708262630230307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) * Real.cot (1 / (n + 1 : ℚ) : ℝ)⌋

end

end A132209.P1272708262630230307

namespace A132209

/-- `floor(2*n*cot(1/(n+1)))` -/
def P1272708262630230307.Spec : Prop :=
  ∀ n, P1272708262630230307.a n = A132209 n

end A132209

/-! ## A132209.P3464010081172906487

`round((n+1)/acot(2*n))-1`
-/

namespace A132209.P3464010081172906487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ)) - 1

end

end A132209.P3464010081172906487

namespace A132209

/-- `round((n+1)/acot(2*n))-1` -/
def P3464010081172906487.Spec : Prop :=
  ∀ n, P3464010081172906487.a n = A132209 n

end A132209

/-! ## A132209.P4577177887396306989

`ceil((n+1)/acot(2*n)-ϕ)`
-/

namespace A132209.P4577177887396306989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) - Real.goldenRatio⌉

end

end A132209.P4577177887396306989

namespace A132209

/-- `ceil((n+1)/acot(2*n)-ϕ)` -/
def P4577177887396306989.Spec : Prop :=
  ∀ n, P4577177887396306989.a n = A132209 n

end A132209

/-! ## A132209.P6247123200113923321

`ceil((n+1-acot(n))*2*n)`
-/

namespace A132209.P6247123200113923321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)) * (2 * n : ℝ)⌉

end

end A132209.P6247123200113923321

namespace A132209

/-- `ceil((n+1-acot(n))*2*n)` -/
def P6247123200113923321.Spec : Prop :=
  ∀ n, P6247123200113923321.a n = A132209 n

end A132209

/-! ## A132209.P7995958090134084200

`5*n-(n-a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A132209.P7995958090134084200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (5 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A132209.P7995958090134084200

namespace A132209

/-- `5*n-(n-a(n-1))` -/
def P7995958090134084200.Spec : Prop :=
  ∀ n, P7995958090134084200.a n = A132209 n

end A132209

/-! ## A132209.P2138225258635426843

`(n+1)*comp[lcm(2, n+1)]+n`
-/

namespace A132209.P2138225258635426843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A132209.P2138225258635426843

namespace A132209

/-- `(n+1)*comp[lcm(2, n+1)]+n` -/
def P2138225258635426843.Spec : Prop :=
  ∀ n, (P2138225258635426843.a n : ℤ) = A132209 n

end A132209

/-! ## A132209.P16967656644626041155

`(n+1)*2*n-n²%(n+1)`
-/

namespace A132209.P16967656644626041155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n) : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A132209.P16967656644626041155

namespace A132209

/-- `(n+1)*2*n-n²%(n+1)` -/
def P16967656644626041155.Spec : Prop :=
  ∀ n, P16967656644626041155.a n = A132209 n

end A132209

/-! ## A132209.P11931896938154359328

`a(n-1)+n+n+n+n` with `a(0)=0, a(1)=3`
-/

namespace A132209.P11931896938154359328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + n + n + n + n

end

end A132209.P11931896938154359328

namespace A132209

/-- `a(n-1)+n+n+n+n` -/
def P11931896938154359328.Spec : Prop :=
  ∀ n, (P11931896938154359328.a n : ℤ) = A132209 n

end A132209

/-! ## A132209.P7413615637221451013

`(2*n+1)*gcd(n, C(2, n²))+n-1`
-/

namespace A132209.P7413615637221451013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.gcd n (Nat.choose 2 (n ^ 2)) : ℤ) + ((n : ℤ) - 1)

end

end A132209.P7413615637221451013

namespace A132209

/-- `(2*n+1)*gcd(n, C(2, n²))+n-1` -/
def P7413615637221451013.Spec : Prop :=
  ∀ n, P7413615637221451013.a n = A132209 n

end A132209

/-! ## A132209.P965403911857842694

`C(2*n+1, 2-C(2, n+2))+n-1`
-/

namespace A132209.P965403911857842694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) (2 - (Nat.choose 2 (n + 2) : ℤ)).toNat : ℤ) + ((n : ℤ) - 1)

end

end A132209.P965403911857842694

namespace A132209

/-- `C(2*n+1, 2-C(2, n+2))+n-1` -/
def P965403911857842694.Spec : Prop :=
  ∀ n, P965403911857842694.a n = A132209 n

end A132209

/-! ## A132209.P7664850768013211936

`∑[A130773(n)]+n²`
-/

namespace A132209.P7664850768013211936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A132209.P7664850768013211936

namespace A132209

/-- `∑[A130773(n)]+n²` -/
def P7664850768013211936.Spec : Prop :=
  ∀ n, P7664850768013211936.a n = A132209 n

end A132209

/-! ## A132209.P8837960689326759681

`(abs(A184882(n))-1)/2`
-/

namespace A132209.P8837960689326759681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A184882 n| - 1 : ℚ) / 2

end

end A132209.P8837960689326759681

namespace A132209

/-- `(abs(A184882(n))-1)/2` -/
def P8837960689326759681.Spec : Prop :=
  ∀ n, P8837960689326759681.a n = (A132209 n : ℚ)

end A132209

/-!
# A132211: Coefficients of a Ramanujan q-series.

The programs for A132211, there is no canonical definition to state claims against.
-/

/-! ## A132211.P13551697694479977159

`Δ[A230643(A085474(A133310(n)))]`
-/

namespace A132211.P13551697694479977159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A085474 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132211.P13551697694479977159

/-! ## A132211.P15389175148372975684

`A253262(A184517(n+1)+A176243(xor(n, n+1)))`
-/

namespace A132211.P15389175148372975684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (A184517 (n + 1) + A176243 (Nat.xor n (n + 1))).toNat

end

end A132211.P15389175148372975684

/-! ## A132211.P14352231640510905645

`Δ[and(A075971(n), A118914(n+3))]`
-/

namespace A132211.P14352231640510905645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075971 n) (A118914 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132211.P14352231640510905645

/-! ## A132211.P14772589287315975335

`A016335(n)-A016344(A016897(n))`
-/

namespace A132211.P14772589287315975335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016335 n - A016344 (A016897 n).toNat

end

end A132211.P14772589287315975335

/-!
# A132212: Expansion of f(-x, -x^7) / f(-x, -x) in powers of q where f(, ) is Ramanujan's general theta function.

The programs for A132212, there is no canonical definition to state claims against.
-/

/-! ## A132212.P932069675311368525

`A309173(n)+A025469(A001255(n+1))`
-/

namespace A132212.P932069675311368525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309173 n + A025469 (A001255 (n + 1)).toNat

end

end A132212.P932069675311368525

/-! ## A132212.P11577975196909288833

`A309173(n)+A010054(A075675(n+1))`
-/

namespace A132212.P11577975196909288833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309173 n + A010054 (A075675 (n + 1)).toNat

end

end A132212.P11577975196909288833

/-! ## A132212.P6307671819811546393

`A309173(n)+A023531(A286263(n+2))`
-/

namespace A132212.P6307671819811546393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309173 n + A023531 (A286263 (n + 2)).toNat

end

end A132212.P6307671819811546393

/-! ## A132212.P4516873770586733010

`A309173(n)+A309168(A309206(2*n+1))`
-/

namespace A132212.P4516873770586733010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309173 n + A309168 (A309206 (2 * n + 1)).toNat

end

end A132212.P4516873770586733010

/-! ## A132212.P12083206174670270462

`A257639((A213598(n)-A332641(n))*A067659(3*(n+1)))`
-/

namespace A132212.P12083206174670270462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 ((A213598 n - A332641 n) * A067659 (3 * (n + 1))).toNat

end

end A132212.P12083206174670270462

/-!
# A132213: Number of distinct primes among the squares mod n.

The programs for A132213, there is no canonical definition to state claims against.
-/

/-! ## A132213.P10621161679229117747

`∑{p}[A056014(n), A132138(#)]`
-/

namespace A132213.P10621161679229117747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A132138 p

end

end A132213.P10621161679229117747

/-! ## A132213.P18421047800320927941

`A016573(A018171(n))%A082908(n)`
-/

namespace A132213.P18421047800320927941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016573 (A018171 n).toNat) (A082908 n)

end

end A132213.P18421047800320927941

/-! ## A132213.P12667197216317206921

`A122083(A036711(n))%A025157(n)`
-/

namespace A132213.P12667197216317206921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122083 (A036711 n).toNat) (A025157 n)

end

end A132213.P12667197216317206921

/-! ## A132213.P10376509110286576852

`A000335(n+1)%A043537(A099571(n))`
-/

namespace A132213.P10376509110286576852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000335 (n + 1)) (A043537 (A099571 n).toNat)

end

end A132213.P10376509110286576852

/-! ## A132213.P14678872094794449447

`A188170(A339443(n+1)+A051592(n+1))`
-/

namespace A132213.P14678872094794449447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A339443 (n + 1) + A051592 (n + 1)).toNat

end

end A132213.P14678872094794449447

/-!
# A132214: Numbers that are sums of seventh powers of two distinct primes.

The programs for A132214, there is no canonical definition to state claims against.
-/

/-! ## A132214.P4940258000202398671

`A088719(A106832(n+1)+A000045(n+2))`
-/

namespace A132214.P4940258000202398671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088719 (A106832 (n + 1) + A000045 (n + 2)).toNat

end

end A132214.P4940258000202398671

/-!
# A132215: Numbers that are sums of eighth powers of two distinct primes.

The programs for A132215, there is no canonical definition to state claims against.
-/

/-! ## A132215.P14790069358830789338

`∑{p}[A339116(n+2), #^8]`
-/

namespace A132215.P14790069358830789338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339116 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 8

end

end A132215.P14790069358830789338

/-! ## A132215.P3064490272599605267

`A351196(A339116(n+2))`
-/

namespace A132215.P3064490272599605267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351196 (A339116 (n + 2)).toNat

end

end A132215.P3064490272599605267

/-!
# A132217: Expansion of psi(x^6) / psi(-x) in powers of x where psi() is a Ramanujan theta function.

The programs for A132217, there is no canonical definition to state claims against.
-/

/-! ## A132217.P16743823480923547650

`abs(A262160(n))`
-/

namespace A132217.P16743823480923547650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262160 n|

end

end A132217.P16743823480923547650

/-! ## A132217.P17247404031672794361

`A033999(n)*A262160(n)`
-/

namespace A132217.P17247404031672794361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A262160 n

end

end A132217.P17247404031672794361

/-! ## A132217.P17251683847116715948

`gcd(A000038(n), A262160(n))`
-/

namespace A132217.P17251683847116715948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A262160 n)

end

end A132217.P17251683847116715948

/-! ## A132217.P1143035891585935466

`lcm(A020985(n), A262160(n))`
-/

namespace A132217.P1143035891585935466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A262160 n)

end

end A132217.P1143035891585935466

/-! ## A132217.P8407239620546578692

`A262160(and(1, 2-n))*A262160(n)`
-/

namespace A132217.P8407239620546578692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262160 (Int.land 1 (2 - (n : ℤ))).toNat * A262160 n

end

end A132217.P8407239620546578692

/-! ## A132217.P1689112256440958759

`A262160(n)/A262160(and(1, n-2))`
-/

namespace A132217.P1689112256440958759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262160 n : ℚ) / (A262160 (Int.land 1 ((n : ℤ) - 2)).toNat : ℚ)

end

end A132217.P1689112256440958759

/-!
# A132219: Number of line graphs on n labeled nodes.

The programs for A132219, there is no canonical definition to state claims against.
-/

/-! ## A132219.P11283041849851391508

`∑[A077220(floor(n*sqrt(2))^n)]`
-/

namespace A132219.P11283041849851391508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077220 (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132219.P11283041849851391508

/-!
# A132220: Number of line graphs on n unlabeled nodes.

The programs for A132220, there is no canonical definition to state claims against.
-/

/-! ## A132220.P13308128527853097504

`A340764(A047088(n+1)+A003480(n))`
-/

namespace A132220.P13308128527853097504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A047088 (n + 1) + A003480 n).toNat

end

end A132220.P13308128527853097504

/-! ## A132220.P14316156011418130136

`A124480(n+1)+char[2*(n+2)]`
-/

namespace A132220.P14316156011418130136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124480 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132220.P14316156011418130136

/-! ## A132220.P13725592356984239997

`A024417(A118398(n+1))`
-/

namespace A132220.P13725592356984239997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A118398 (n + 1)).toNat

end

end A132220.P13725592356984239997

/-!
# A132221: Number of imprimitive transitive permutation groups of degree n.

The programs for A132221, there is no canonical definition to state claims against.
-/

/-! ## A132221.P5143023446722890013

`A002106(n+1)-A000019(n+1)`
-/

namespace A132221.P5143023446722890013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002106 (n + 1) - A000019 (n + 1)

end

end A132221.P5143023446722890013

/-! ## A132221.P10146913271753114514

`A002106(n+1)-Δ[A173397((2*a(n-1))%2+n)]` with `a(0)=0`
-/

namespace A132221.P10146913271753114514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A173397 (Int.tmod (2 * f1 (n - 1)) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002106 (n + 1) - (f1 (n + 1) - f1 n)

end

end A132221.P10146913271753114514

/-! ## A132221.P7105052703056890058

`A002106(A052938(2*n))+A001489(A000019(n+1))`
-/

namespace A132221.P7105052703056890058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002106 (A052938 (2 * n)).toNat + A001489 (A000019 (n + 1)).toNat

end

end A132221.P7105052703056890058

/-! ## A132221.P8161272282232161100

`A124937(n+1)+A124938(n+1)-A000019(n+1)`
-/

namespace A132221.P8161272282232161100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124937 (n + 1) + (A124938 (n + 1) - A000019 (n + 1))

end

end A132221.P8161272282232161100

/-!
# A132222: Beatty sequence 1+2*floor(n*Pi/2), which contains infinitely many primes.

The programs for A132222, the canonical program `A132222.P358424226159108809` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132222 has offset 0).

The definition of A132222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*floor(n*π/2)` (program `A132222.P358424226159108809`, by `A132222.P358424226159108809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132222.P358424226159108809

`1+2*floor(n*π/2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132222

/-- `1+2*floor(n*π/2)` -/
def P358424226159108809.Spec : Prop :=
  ∀ n, P358424226159108809.a n = A132222 n

theorem P358424226159108809.correct : P358424226159108809.Spec := by
  intro n
  simp only [A132222]

end A132222

/-! ## A132222.P6710182347846120135

`or(1, floor(π*n))`
-/

namespace A132222.P6710182347846120135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊Real.pi * (n : ℝ)⌋

end

end A132222.P6710182347846120135

namespace A132222

/-- `or(1, floor(π*n))` -/
def P6710182347846120135.Spec : Prop :=
  ∀ n, P6710182347846120135.a n = A132222 n

end A132222

/-! ## A132222.P9758777852231308999

`xor(1, 2*floor(n*acos(0)))`
-/

namespace A132222.P9758777852231308999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊(n : ℝ) * Real.arccos (0 : ℝ)⌋)

end

end A132222.P9758777852231308999

namespace A132222

/-- `xor(1, 2*floor(n*acos(0)))` -/
def P9758777852231308999.Spec : Prop :=
  ∀ n, P9758777852231308999.a n = A132222 n

end A132222

/-! ## A132222.P11539794099655714485

`xor(1, 2*floor(n*asin(1)))`
-/

namespace A132222.P11539794099655714485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊(n : ℝ) * Real.arcsin (1 : ℝ)⌋)

end

end A132222.P11539794099655714485

namespace A132222

/-- `xor(1, 2*floor(n*asin(1)))` -/
def P11539794099655714485.Spec : Prop :=
  ∀ n, P11539794099655714485.a n = A132222 n

end A132222

/-! ## A132222.P3900914893626637881

`A004273(floor(2*n*atan(1))+1)`
-/

namespace A132222.P3900914893626637881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (⌊(2 * n : ℝ) * Real.arctan (1 : ℝ)⌋ + 1).toNat

end

end A132222.P3900914893626637881

namespace A132222

/-- `A004273(floor(2*n*atan(1))+1)` -/
def P3900914893626637881.Spec : Prop :=
  ∀ n, P3900914893626637881.a n = A132222 n

end A132222

/-! ## A132222.P13471426756500481046

`A109613(A022844(n))`
-/

namespace A132222.P13471426756500481046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A022844 n).toNat

end

end A132222.P13471426756500481046

namespace A132222

/-- `A109613(A022844(n))` -/
def P13471426756500481046.Spec : Prop :=
  ∀ n, P13471426756500481046.a n = A132222 n

end A132222

/-! ## A132222.P614581472439337241

`A129756(A038130(n))`
-/

namespace A132222.P614581472439337241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A038130 n).toNat

end

end A132222.P614581472439337241

namespace A132222

/-- `A129756(A038130(n))` -/
def P614581472439337241.Spec : Prop :=
  ∀ n, P614581472439337241.a n = A132222 n

end A132222

/-! ## A132222.P2663560864701441260

`A131507(A005206(n*(2*n+1)))`
-/

namespace A132222.P2663560864701441260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A005206 (n * (2 * n + 1))).toNat

end

end A132222.P2663560864701441260

namespace A132222

/-- `A131507(A005206(n*(2*n+1)))` -/
def P2663560864701441260.Spec : Prop :=
  ∀ n, P2663560864701441260.a n = A132222 n

end A132222

/-!
# A132223: A dense infinitive sequence.

The programs for A132223, the canonical program `A132223.P12674158164123128083` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132223 has offset 1).

The definition of A132223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132223.P12674158164123128083

`A003602(A054429(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132223

/-- `A003602(A054429(n+1))` -/
def P12674158164123128083.Spec : Prop :=
  ∀ n, P12674158164123128083.a n = A132223 (n + 1)

theorem P12674158164123128083.correct : P12674158164123128083.Spec := by
  intro n
  simp only [A132223, Nat.add_sub_cancel]

end A132223

/-! ## A132223.P10094193693601260772

`A337909(A003602(n+2))`
-/

namespace A132223.P10094193693601260772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337909 (A003602 (n + 2)).toNat

end

end A132223.P10094193693601260772

namespace A132223

/-- `A337909(A003602(n+2))` -/
def P10094193693601260772.Spec : Prop :=
  ∀ n, P10094193693601260772.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P10868613081837935630

`A080079(A316385(n+2))`
-/

namespace A132223.P10868613081837935630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A316385 (n + 2)).toNat

end

end A132223.P10868613081837935630

namespace A132223

/-- `A080079(A316385(n+2))` -/
def P10868613081837935630.Spec : Prop :=
  ∀ n, P10868613081837935630.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P12033382472114820255

`A049773(A036044(n+1)+1)`
-/

namespace A132223.P12033382472114820255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A036044 (n + 1) + 1).toNat

end

end A132223.P12033382472114820255

namespace A132223

/-- `A049773(A036044(n+1)+1)` -/
def P12033382472114820255.Spec : Prop :=
  ∀ n, P12033382472114820255.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P8884136988956487567

`A025480(A054429(n+2))+1`
-/

namespace A132223.P8884136988956487567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A054429 (n + 2)).toNat + 1

end

end A132223.P8884136988956487567

namespace A132223

/-- `A025480(A054429(n+2))+1` -/
def P8884136988956487567.Spec : Prop :=
  ∀ n, P8884136988956487567.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P5645180553347876797

`A359164(2*A054429(n+1))`
-/

namespace A132223.P5645180553347876797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359164 (2 * A054429 (n + 1)).toNat

end

end A132223.P5645180553347876797

namespace A132223

/-- `A359164(2*A054429(n+1))` -/
def P5645180553347876797.Spec : Prop :=
  ∀ n, P5645180553347876797.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P14099944453280746201

`A030109(A036044(n+1)+1)+1`
-/

namespace A132223.P14099944453280746201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A036044 (n + 1) + 1).toNat + 1

end

end A132223.P14099944453280746201

namespace A132223

/-- `A030109(A036044(n+1)+1)+1` -/
def P14099944453280746201.Spec : Prop :=
  ∀ n, P14099944453280746201.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P4712225435422658001

`A025480(A346306(n+1)+1)+1`
-/

namespace A132223.P4712225435422658001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A346306 (n + 1) + 1).toNat + 1

end

end A132223.P4712225435422658001

namespace A132223

/-- `A025480(A346306(n+1)+1)+1` -/
def P4712225435422658001.Spec : Prop :=
  ∀ n, P4712225435422658001.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P6788222645094612675

`A110963(2*A054429(n+1)-1)`
-/

namespace A132223.P6788222645094612675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (2 * A054429 (n + 1) - 1).toNat

end

end A132223.P6788222645094612675

namespace A132223

/-- `A110963(2*A054429(n+1)-1)` -/
def P6788222645094612675.Spec : Prop :=
  ∀ n, P6788222645094612675.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P15535142231167642497

`A049773(A062383(n+1)-A030101(n+1))`
-/

namespace A132223.P15535142231167642497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A062383 (n + 1) - A030101 (n + 1)).toNat

end

end A132223.P15535142231167642497

namespace A132223

/-- `A049773(A062383(n+1)-A030101(n+1))` -/
def P15535142231167642497.Spec : Prop :=
  ∀ n, P15535142231167642497.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P11356777398186992222

`A145342(A053644(n+1)-A030109(n+1))`
-/

namespace A132223.P11356777398186992222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A053644 (n + 1) - A030109 (n + 1)).toNat

end

end A132223.P11356777398186992222

namespace A132223

/-- `A145342(A053644(n+1)-A030109(n+1))` -/
def P11356777398186992222.Spec : Prop :=
  ∀ n, P11356777398186992222.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P5324751383622085179

`A145342(A145342(n+2)-A030101(n+1))`
-/

namespace A132223.P5324751383622085179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A145342 (n + 2) - A030101 (n + 1)).toNat

end

end A132223.P5324751383622085179

namespace A132223

/-- `A145342(A145342(n+2)-A030101(n+1))` -/
def P5324751383622085179.Spec : Prop :=
  ∀ n, P5324751383622085179.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P14908780618967106412

`A030109(A059894(n+1)-A030109(n+1))+1`
-/

namespace A132223.P14908780618967106412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A059894 (n + 1) - A030109 (n + 1)).toNat + 1

end

end A132223.P14908780618967106412

namespace A132223

/-- `A030109(A059894(n+1)-A030109(n+1))+1` -/
def P14908780618967106412.Spec : Prop :=
  ∀ n, P14908780618967106412.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P374915873089374648

`A049773(A059894(n+1)+1-A049773(n+1))`
-/

namespace A132223.P374915873089374648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A059894 (n + 1) + (1 - A049773 (n + 1))).toNat

end

end A132223.P374915873089374648

namespace A132223

/-- `A049773(A059894(n+1)+1-A049773(n+1))` -/
def P374915873089374648.Spec : Prop :=
  ∀ n, P374915873089374648.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P16603752025787054129

`A110963(A054429(n+1)+A054429(n+1)-1)`
-/

namespace A132223.P16603752025787054129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A054429 (n + 1) + (A054429 (n + 1) - 1)).toNat

end

end A132223.P16603752025787054129

namespace A132223

/-- `A110963(A054429(n+1)+A054429(n+1)-1)` -/
def P16603752025787054129.Spec : Prop :=
  ∀ n, P16603752025787054129.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P6358731769084498271

`and(A003817(n+1)*A316385(n+2), A003817(n+1))`
-/

namespace A132223.P6358731769084498271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (n + 1) * A316385 (n + 2)) (A003817 (n + 1))

end

end A132223.P6358731769084498271

namespace A132223

/-- `and(A003817(n+1)*A316385(n+2), A003817(n+1))` -/
def P6358731769084498271.Spec : Prop :=
  ∀ n, P6358731769084498271.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P14728853622483834225

`A049773(A049773(A035327(A004757(n+1))))`
-/

namespace A132223.P14728853622483834225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A049773 (A035327 (A004757 (n + 1)).toNat).toNat).toNat

end

end A132223.P14728853622483834225

namespace A132223

/-- `A049773(A049773(A035327(A004757(n+1))))` -/
def P14728853622483834225.Spec : Prop :=
  ∀ n, P14728853622483834225.a n = A132223 (n + 1)

end A132223

/-! ## A132223.P15511287790852658296

`A003602(A252754(A252755(n+1)))`
-/

namespace A132223.P15511287790852658296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A252754 (A252755 (n + 1)).toNat).toNat

end

end A132223.P15511287790852658296

namespace A132223

/-- `A003602(A252754(A252755(n+1)))` -/
def P15511287790852658296.Spec : Prop :=
  ∀ n, P15511287790852658296.a n = A132223 (n + 1)

end A132223

/-!
# A132224: A dense normalized fractal sequence.

The programs for A132224, there is no canonical definition to state claims against.
-/

/-! ## A132224.P17739151959995461823

`A001227(7^A333409(n+1))`
-/

namespace A132224.P17739151959995461823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A333409 (n + 1) : ℤ))).toNat

end

end A132224.P17739151959995461823

/-! ## A132224.P2036425057035885690

`A015995(7^A333409(n+1))`
-/

namespace A132224.P2036425057035885690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015995 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A333409 (n + 1) : ℤ))).toNat

end

end A132224.P2036425057035885690

/-! ## A132224.P6565569696349272858

`A000005(13^A333409(n+1))`
-/

namespace A132224.P6565569696349272858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A333409 (n + 1) : ℤ))).toNat

end

end A132224.P6565569696349272858

/-! ## A132224.P7995422571387473137

`A001222(13^A333409(n+1))+1`
-/

namespace A132224.P7995422571387473137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A333409 (n + 1) : ℤ))).toNat + 1

end

end A132224.P7995422571387473137

/-! ## A132224.P11028989986799216433

`A333409(n+1)+A333403(A049078(n+1))`
-/

namespace A132224.P11028989986799216433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333409 (n + 1) + A333403 (A049078 (n + 1)).toNat

end

end A132224.P11028989986799216433

/-!
# A132226: Placement sequence for the dense normalized fractal sequence A132224.

The programs for A132226, the canonical program `A132226.P8936653012029695919` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132226 has offset 1).

The definition of A132226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132226.P13713407096992756925

`or(1, 2^ceil(log2(n+1)))-n`
-/

namespace A132226.P13713407096992756925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) - (n : ℤ)

end

end A132226.P13713407096992756925

namespace A132226

/-- `or(1, 2^ceil(log2(n+1)))-n` -/
def P13713407096992756925.Spec : Prop :=
  ∀ n, P13713407096992756925.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P8936653012029695919

`(a(n-1)-3+n)%n+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132226

/-- `(a(n-1)-3+n)%n+2` -/
def P8936653012029695919.Spec : Prop :=
  ∀ n, P8936653012029695919.a n = A132226 (n + 1)

theorem P8936653012029695919.correct : P8936653012029695919.Spec := by
  intro n
  simp only [A132226, Nat.add_sub_cancel]

end A132226

/-! ## A132226.P296124855394392735

`2-(3-a(n-1)-n)%n` with `a(0)=1`
-/

namespace A132226.P296124855394392735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - Int.tmod (3 - a (n - 1) - (n : ℤ)) (n : ℤ)

end

end A132226.P296124855394392735

namespace A132226

/-- `2-(3-a(n-1)-n)%n` -/
def P296124855394392735.Spec : Prop :=
  ∀ n, P296124855394392735.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P11439928808169921540

`(2^ceil(log2(n+1))+1)%(n+1)+1`
-/

namespace A132226.P11439928808169921540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + 1)) (n + 1 : ℤ) + 1

end

end A132226.P11439928808169921540

namespace A132226

/-- `(2^ceil(log2(n+1))+1)%(n+1)+1` -/
def P11439928808169921540.Spec : Prop :=
  ∀ n, P11439928808169921540.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P7722519172451809072

`a(n-1)+n*floor(2/a(n-1))-1` with `a(0)=1`
-/

namespace A132226.P7722519172451809072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) * ⌊2 / (a (n - 1) : ℚ)⌋ - 1)

end

end A132226.P7722519172451809072

namespace A132226

/-- `a(n-1)+n*floor(2/a(n-1))-1` -/
def P7722519172451809072.Spec : Prop :=
  ∀ n, P7722519172451809072.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P16501368568687309571

`a(n-1)-(1-n*floor(2/a(n-1)))` with `a(0)=1`
-/

namespace A132226.P16501368568687309571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (1 - (n : ℤ) * ⌊2 / (a (n - 1) : ℚ)⌋)

end

end A132226.P16501368568687309571

namespace A132226

/-- `a(n-1)-(1-n*floor(2/a(n-1)))` -/
def P16501368568687309571.Spec : Prop :=
  ∀ n, P16501368568687309571.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P2664802415254402334

`n+1-and(n+2-a(n-1), 2*n)` with `a(0)=1, a(1)=2`
-/

namespace A132226.P2664802415254402334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℤ) - Int.land ((n + 2 : ℤ) - a (n - 1)) (2 * n : ℤ)

end

end A132226.P2664802415254402334

namespace A132226

/-- `n+1-and(n+2-a(n-1), 2*n)` -/
def P2664802415254402334.Spec : Prop :=
  ∀ n, P2664802415254402334.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P7771155544592700166

`∑[or(1, A153151(n)-n)]`
-/

namespace A132226.P7771155544592700166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A153151 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132226.P7771155544592700166

namespace A132226

/-- `∑[or(1, A153151(n)-n)]` -/
def P7771155544592700166.Spec : Prop :=
  ∀ n, P7771155544592700166.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P7012014293203322112

`A053644(2*n)+1-n`
-/

namespace A132226.P7012014293203322112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n) + (1 - (n : ℤ))

end

end A132226.P7012014293203322112

namespace A132226

/-- `A053644(2*n)+1-n` -/
def P7012014293203322112.Spec : Prop :=
  ∀ n, P7012014293203322112.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P14599124919815348799

`2*A053644(n)-(n-1)`
-/

namespace A132226.P14599124919815348799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053644 n - ((n : ℤ) - 1)

end

end A132226.P14599124919815348799

namespace A132226

/-- `2*A053644(n)-(n-1)` -/
def P14599124919815348799.Spec : Prop :=
  ∀ n, P14599124919815348799.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P11827986121231492264

`A062383(n)%(2*n+1)+1-n`
-/

namespace A132226.P11827986121231492264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062383 n) (2 * n + 1 : ℤ) + 1 - (n : ℤ)

end

end A132226.P11827986121231492264

namespace A132226

/-- `A062383(n)%(2*n+1)+1-n` -/
def P11827986121231492264.Spec : Prop :=
  ∀ n, P11827986121231492264.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P15109050064955588410

`A008612(A262617(n))`
-/

namespace A132226.P15109050064955588410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A262617 n).toNat

end

end A132226.P15109050064955588410

namespace A132226

/-- `A008612(A262617(n))` -/
def P15109050064955588410.Spec : Prop :=
  ∀ n, P15109050064955588410.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P8552391997199326714

`A080513(A261693(n))`
-/

namespace A132226.P8552391997199326714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A261693 n).toNat

end

end A132226.P8552391997199326714

namespace A132226

/-- `A080513(A261693(n))` -/
def P8552391997199326714.Spec : Prop :=
  ∀ n, P8552391997199326714.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P2853661946216517188

`A005408(A053644(n))-n`
-/

namespace A132226.P2853661946216517188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A053644 n).toNat - (n : ℤ)

end

end A132226.P2853661946216517188

namespace A132226

/-- `A005408(A053644(n))-n` -/
def P2853661946216517188.Spec : Prop :=
  ∀ n, P2853661946216517188.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P10374215542285677410

`A065283(A062383(n))-n`
-/

namespace A132226.P10374215542285677410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065283 (A062383 n).toNat - (n : ℤ)

end

end A132226.P10374215542285677410

namespace A132226

/-- `A065283(A062383(n))-n` -/
def P10374215542285677410.Spec : Prop :=
  ∀ n, P10374215542285677410.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P8554258443709278800

`A062050(A010078(n+1)+1)`
-/

namespace A132226.P8554258443709278800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A010078 (n + 1) + 1).toNat

end

end A132226.P8554258443709278800

namespace A132226

/-- `A062050(A010078(n+1)+1)` -/
def P8554258443709278800.Spec : Prop :=
  ∀ n, P8554258443709278800.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P12172028395624527949

`A035327(n)+A158388(n)+1`
-/

namespace A132226.P12172028395624527949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + (A158388 n + 1)

end

end A132226.P12172028395624527949

namespace A132226

/-- `A035327(n)+A158388(n)+1` -/
def P12172028395624527949.Spec : Prop :=
  ∀ n, P12172028395624527949.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P9406898531452865480

`A004273(A053644(n)+1)-n`
-/

namespace A132226.P9406898531452865480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A053644 n + 1).toNat - (n : ℤ)

end

end A132226.P9406898531452865480

namespace A132226

/-- `A004273(A053644(n)+1)-n` -/
def P9406898531452865480.Spec : Prop :=
  ∀ n, P9406898531452865480.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P1099333069231411854

`A000265(A062383(n)+1)-n`
-/

namespace A132226.P1099333069231411854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062383 n + 1).toNat - (n : ℤ)

end

end A132226.P1099333069231411854

namespace A132226

/-- `A000265(A062383(n)+1)-n` -/
def P1099333069231411854.Spec : Prop :=
  ∀ n, P1099333069231411854.a n = A132226 (n + 1)

end A132226

/-! ## A132226.P15598028166483952970

`A065475(n+1)-A006257(n)`
-/

namespace A132226.P15598028166483952970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) - A006257 n

end

end A132226.P15598028166483952970

namespace A132226

/-- `A065475(n+1)-A006257(n)` -/
def P15598028166483952970.Spec : Prop :=
  ∀ n, P15598028166483952970.a n = A132226 (n + 1)

end A132226

/-!
# A132227: a(n) = 3*prime(n) - 5.

The programs for A132227, the canonical program `A132227.P17780632896261134277` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132227 has offset 1).

The definition of A132227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132227.P17780632896261134277

`A001748(n+1)-5`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A132227

/-- `A001748(n+1)-5` -/
def P17780632896261134277.Spec : Prop :=
  ∀ n, P17780632896261134277.a n = A132227 (n + 1)

theorem P17780632896261134277.correct : P17780632896261134277.Spec := by
  intro n
  simp only [A132227, Nat.add_sub_cancel]

end A132227

/-! ## A132227.P16844347067110379885

`A129075(n+1)-9`
-/

namespace A132227.P16844347067110379885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1) - 9

end

end A132227.P16844347067110379885

namespace A132227

/-- `A129075(n+1)-9` -/
def P16844347067110379885.Spec : Prop :=
  ∀ n, P16844347067110379885.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P5421388553895549331

`3*A040976(n+1)+1`
-/

namespace A132227.P5421388553895549331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040976 (n + 1) + 1

end

end A132227.P5421388553895549331

namespace A132227

/-- `3*A040976(n+1)+1` -/
def P5421388553895549331.Spec : Prop :=
  ∀ n, P5421388553895549331.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P13705585308847029527

`3*A006093(n+1)-2`
-/

namespace A132227.P13705585308847029527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006093 (n + 1) - 2

end

end A132227.P13705585308847029527

namespace A132227

/-- `3*A006093(n+1)-2` -/
def P13705585308847029527.Spec : Prop :=
  ∀ n, P13705585308847029527.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P3632325436797263143

`3*A086801(n+1)+4`
-/

namespace A132227.P3632325436797263143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A086801 (n + 1) + 4

end

end A132227.P3632325436797263143

namespace A132227

/-- `3*A086801(n+1)+4` -/
def P3632325436797263143.Spec : Prop :=
  ∀ n, P3632325436797263143.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P15905893461630851685

`3*A000040(n+1)-5`
-/

namespace A132227.P15905893461630851685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) - 5

end

end A132227.P15905893461630851685

namespace A132227

/-- `3*A000040(n+1)-5` -/
def P15905893461630851685.Spec : Prop :=
  ∀ n, P15905893461630851685.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P455063231371161964

`A138636(n+1)/2-5`
-/

namespace A132227.P455063231371161964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) : ℚ) / 2 - 5

end

end A132227.P455063231371161964

namespace A132227

/-- `A138636(n+1)/2-5` -/
def P455063231371161964.Spec : Prop :=
  ∀ n, P455063231371161964.a n = (A132227 (n + 1) : ℚ)

end A132227

/-! ## A132227.P13943516511521246217

`∑{d}[A100484(n+1), #-2]`
-/

namespace A132227.P13943516511521246217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - 2)

end

end A132227.P13943516511521246217

namespace A132227

/-- `∑{d}[A100484(n+1), #-2]` -/
def P13943516511521246217.Spec : Prop :=
  ∀ n, P13943516511521246217.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P16715981740079044734

`A086801(n+1)+A037168(n+1)`
-/

namespace A132227.P16715981740079044734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + A037168 (n + 1)

end

end A132227.P16715981740079044734

namespace A132227

/-- `A086801(n+1)+A037168(n+1)` -/
def P16715981740079044734.Spec : Prop :=
  ∀ n, P16715981740079044734.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P14372087941055792331

`A140777(n+1)+A006093(n+1)`
-/

namespace A132227.P14372087941055792331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) + A006093 (n + 1)

end

end A132227.P14372087941055792331

namespace A132227

/-- `A140777(n+1)+A006093(n+1)` -/
def P14372087941055792331.Spec : Prop :=
  ∀ n, P14372087941055792331.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P17363059758574162969

`A131426(n+1)+A040976(n+1)`
-/

namespace A132227.P17363059758574162969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) + A040976 (n + 1)

end

end A132227.P17363059758574162969

namespace A132227

/-- `A131426(n+1)+A040976(n+1)` -/
def P17363059758574162969.Spec : Prop :=
  ∀ n, P17363059758574162969.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P10556214133477931128

`A001749(n+1)-A175222(n+1)`
-/

namespace A132227.P10556214133477931128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - A175222 (n + 1)

end

end A132227.P10556214133477931128

namespace A132227

/-- `A001749(n+1)-A175222(n+1)` -/
def P10556214133477931128.Spec : Prop :=
  ∀ n, P10556214133477931128.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P852154480931687814

`A129070(n+1)-A175225(n+1)`
-/

namespace A132227.P852154480931687814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129070 (n + 1) - A175225 (n + 1)

end

end A132227.P852154480931687814

namespace A132227

/-- `A129070(n+1)-A175225(n+1)` -/
def P852154480931687814.Spec : Prop :=
  ∀ n, P852154480931687814.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P3716439870117604524

`A272470(n+1)-A129070(n+1)`
-/

namespace A132227.P3716439870117604524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272470 (n + 1) - A129070 (n + 1)

end

end A132227.P3716439870117604524

namespace A132227

/-- `A272470(n+1)-A129070(n+1)` -/
def P3716439870117604524.Spec : Prop :=
  ∀ n, P3716439870117604524.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P4478884129931967290

`A330410(n+1)%A129075(n+1)`
-/

namespace A132227.P4478884129931967290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330410 (n + 1)) (A129075 (n + 1))

end

end A132227.P4478884129931967290

namespace A132227

/-- `A330410(n+1)%A129075(n+1)` -/
def P4478884129931967290.Spec : Prop :=
  ∀ n, P4478884129931967290.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P13150909705632709658

`A100021(n+1)+A154115(n+1)+1`
-/

namespace A132227.P13150909705632709658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (n + 1) + (A154115 (n + 1) + 1)

end

end A132227.P13150909705632709658

namespace A132227

/-- `A100021(n+1)+A154115(n+1)+1` -/
def P13150909705632709658.Spec : Prop :=
  ∀ n, P13150909705632709658.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P3258276765657934297

`A037168(n+1)+A040976(n+1)-1`
-/

namespace A132227.P3258276765657934297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) + (A040976 (n + 1) - 1)

end

end A132227.P3258276765657934297

namespace A132227

/-- `A037168(n+1)+A040976(n+1)-1` -/
def P3258276765657934297.Spec : Prop :=
  ∀ n, P3258276765657934297.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P1369214181334381998

`A006093(n+1)+A131426(n+1)-1`
-/

namespace A132227.P1369214181334381998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A131426 (n + 1) - 1)

end

end A132227.P1369214181334381998

namespace A132227

/-- `A006093(n+1)+A131426(n+1)-1` -/
def P1369214181334381998.Spec : Prop :=
  ∀ n, P1369214181334381998.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P5868835574002615894

`A000040(n+1)+A140777(n+1)-1`
-/

namespace A132227.P5868835574002615894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A140777 (n + 1) - 1)

end

end A132227.P5868835574002615894

namespace A132227

/-- `A000040(n+1)+A140777(n+1)-1` -/
def P5868835574002615894.Spec : Prop :=
  ∀ n, P5868835574002615894.a n = A132227 (n + 1)

end A132227

/-! ## A132227.P11251479439366786283

`A000040(n+1)+A131426(n+1)-2`
-/

namespace A132227.P11251479439366786283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A131426 (n + 1) - 2)

end

end A132227.P11251479439366786283

namespace A132227

/-- `A000040(n+1)+A131426(n+1)-2` -/
def P11251479439366786283.Spec : Prop :=
  ∀ n, P11251479439366786283.a n = A132227 (n + 1)

end A132227

/-!
# A132228: a(n) = Sum_{k=0..n} C(n-1,k)^2*a(k)*a(n-k-1) for n>0 with a(0)=1.

The programs for A132228, there is no canonical definition to state claims against.
-/

/-! ## A132228.P7101531100653439996

`∑{d}[∏[-or(1, -2^n)], A288003(#)]`
-/

namespace A132228.P7101531100653439996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 ^ n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A288003 d

end

end A132228.P7101531100653439996

/-! ## A132228.P5889272563486903417

`A007614(A326490(∑[n]))`
-/

namespace A132228.P5889272563486903417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (A326490 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A132228.P5889272563486903417

/-!
# A132229: The set N such that each positive integer can be written in the form s^2 + n, s>=0, n in N, in an odd number of ways.

The programs for A132229, there is no canonical definition to state claims against.
-/

/-! ## A132229.P5535213107428376290

`eq[1, and(1, A303667(n+1))]+1`
-/

namespace A132229.P5535213107428376290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A303667 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A132229.P5535213107428376290

/-! ## A132229.P7770190758421983405

`eq[A303667(n)%2, A057427(n)]`
-/

namespace A132229.P7770190758421983405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303667 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132229.P7770190758421983405

/-! ## A132229.P13600596352221816957

`eq[gcd(2, A303667(n)), A054977(n)]`
-/

namespace A132229.P13600596352221816957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A303667 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132229.P13600596352221816957

/-! ## A132229.P5878355067641047182

`eq[1, and(A000051(n), A303667(n))]`
-/

namespace A132229.P5878355067641047182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A303667 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132229.P5878355067641047182

/-! ## A132229.P11791563268872103640

`eq[1, and(1, A303667(A000007(n)+n))]`
-/

namespace A132229.P11791563268872103640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A303667 (A000007 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132229.P11791563268872103640

/-!
# A132230: Primes congruent to 1 (mod 30).

The programs for A132230, the canonical program `A132230.P4618418594459579216` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132230 has offset 1).

The definition of A132230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9807 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132230.P8293355564093668128

`A111175(n+1)*30+1`
-/

namespace A132230.P8293355564093668128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 1) * 30 + 1

end

end A132230.P8293355564093668128

namespace A132230

/-- `A111175(n+1)*30+1` -/
def P8293355564093668128.Spec : Prop :=
  ∀ n, P8293355564093668128.a n = A132230 (n + 1)

end A132230

/-! ## A132230.P4618418594459579216

`p?[30*n+1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132230

/-- `p?[30*n+1]` -/
def P4618418594459579216.Spec : Prop :=
  ∀ n, (P4618418594459579216.a n : ℤ) = A132230 (n + 1)

theorem P4618418594459579216.correct : P4618418594459579216.Spec := by
  intro n
  simp only [A132230, Nat.add_sub_cancel]

end A132230

/-! ## A132230.P15901781348458130873

`or(1, p?[or(1, 15*n)])`
-/

namespace A132230.P15901781348458130873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (15 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A132230.P15901781348458130873

namespace A132230

/-- `or(1, p?[or(1, 15*n)])` -/
def P15901781348458130873.Spec : Prop :=
  ∀ n, (P15901781348458130873.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P7289400458732275441

`∩[A030430(n+1), A243174(n+1)]`
-/

namespace A132230.P7289400458732275441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P7289400458732275441

namespace A132230

/-- `∩[A030430(n+1), A243174(n+1)]` -/
def P7289400458732275441.Spec : Prop :=
  ∀ n, (P7289400458732275441.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P3643127543230170220

`∩[A033212(n+1), A030430(n+1)]`
-/

namespace A132230.P3643127543230170220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P3643127543230170220

namespace A132230

/-- `∩[A033212(n+1), A030430(n+1)]` -/
def P3643127543230170220.Spec : Prop :=
  ∀ n, (P3643127543230170220.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P2747429557208520234

`∩[A033212(n+1), A004615(n+1)]`
-/

namespace A132230.P2747429557208520234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P2747429557208520234

namespace A132230

/-- `∩[A033212(n+1), A004615(n+1)]` -/
def P2747429557208520234.Spec : Prop :=
  ∀ n, (P2747429557208520234.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P5647638822976213495

`A128470(A111175(n+1))`
-/

namespace A132230.P5647638822976213495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A111175 (n + 1)).toNat

end

end A132230.P5647638822976213495

namespace A132230

/-- `A128470(A111175(n+1))` -/
def P5647638822976213495.Spec : Prop :=
  ∀ n, P5647638822976213495.a n = A132230 (n + 1)

end A132230

/-! ## A132230.P17650367154422359788

`∩[A030430(n+1), A128470(n)]`
-/

namespace A132230.P17650367154422359788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P17650367154422359788

namespace A132230

/-- `∩[A030430(n+1), A128470(n)]` -/
def P17650367154422359788.Spec : Prop :=
  ∀ n, (P17650367154422359788.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P2340246780578472491

`∩[A033212(n+1), A128470(n)]`
-/

namespace A132230.P2340246780578472491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P2340246780578472491

namespace A132230

/-- `∩[A033212(n+1), A128470(n)]` -/
def P2340246780578472491.Spec : Prop :=
  ∀ n, (P2340246780578472491.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P12281004913326659309

`∩[A045453(n+1), A128470(n)]`
-/

namespace A132230.P12281004913326659309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P12281004913326659309

namespace A132230

/-- `∩[A045453(n+1), A128470(n)]` -/
def P12281004913326659309.Spec : Prop :=
  ∀ n, (P12281004913326659309.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P2287097999353504299

`∩[A090756(n+1), A128470(n)]`
-/

namespace A132230.P2287097999353504299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P2287097999353504299

namespace A132230

/-- `∩[A090756(n+1), A128470(n)]` -/
def P2287097999353504299.Spec : Prop :=
  ∀ n, (P2287097999353504299.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P2265021510781728640

`∩[A132240(n+1), A128470(n)]`
-/

namespace A132230.P2265021510781728640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P2265021510781728640

namespace A132230

/-- `∩[A132240(n+1), A128470(n)]` -/
def P2265021510781728640.Spec : Prop :=
  ∀ n, (P2265021510781728640.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P3716299225816006133

`∩[A045468(n+1), A128470(n)]`
-/

namespace A132230.P3716299225816006133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P3716299225816006133

namespace A132230

/-- `∩[A045468(n+1), A128470(n)]` -/
def P3716299225816006133.Spec : Prop :=
  ∀ n, (P3716299225816006133.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P18161813952093519388

`∩[A038872(n+1), A128470(n)]`
-/

namespace A132230.P18161813952093519388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P18161813952093519388

namespace A132230

/-- `∩[A038872(n+1), A128470(n)]` -/
def P18161813952093519388.Spec : Prop :=
  ∀ n, (P18161813952093519388.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P12025852190782450940

`∩[A064739(n+1), A128470(n)]`
-/

namespace A132230.P12025852190782450940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P12025852190782450940

namespace A132230

/-- `∩[A064739(n+1), A128470(n)]` -/
def P12025852190782450940.Spec : Prop :=
  ∀ n, (P12025852190782450940.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P7412442613995104804

`∩[A191018(n+1), A128470(n)]`
-/

namespace A132230.P7412442613995104804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P7412442613995104804

namespace A132230

/-- `∩[A191018(n+1), A128470(n)]` -/
def P7412442613995104804.Spec : Prop :=
  ∀ n, (P7412442613995104804.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P9732581663818142170

`∩[A191018(n+1), A030430(n+1)]`
-/

namespace A132230.P9732581663818142170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P9732581663818142170

namespace A132230

/-- `∩[A191018(n+1), A030430(n+1)]` -/
def P9732581663818142170.Spec : Prop :=
  ∀ n, (P9732581663818142170.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P15254258867092577560

`∩[A002476(n+1), A128470(n)]`
-/

namespace A132230.P15254258867092577560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P15254258867092577560

namespace A132230

/-- `∩[A002476(n+1), A128470(n)]` -/
def P15254258867092577560.Spec : Prop :=
  ∀ n, (P15254258867092577560.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P13503383206957786190

`∩[A007645(n+1), A128470(n)]`
-/

namespace A132230.P13503383206957786190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P13503383206957786190

namespace A132230

/-- `∩[A007645(n+1), A128470(n)]` -/
def P13503383206957786190.Spec : Prop :=
  ∀ n, (P13503383206957786190.a n : ℤ) = A132230 (n + 1)

end A132230

/-! ## A132230.P7212051326107578744

`∩[A045331(n+1), A128470(n)]`
-/

namespace A132230.P7212051326107578744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132230.P7212051326107578744

namespace A132230

/-- `∩[A045331(n+1), A128470(n)]` -/
def P7212051326107578744.Spec : Prop :=
  ∀ n, (P7212051326107578744.a n : ℤ) = A132230 (n + 1)

end A132230

/-!
# A132231: Primes congruent to 7 (mod 30).

The programs for A132231, the canonical program `A132231.P11772431074694670776` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132231 has offset 1).

The definition of A132231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132231.P16737396200708838550

`A158573(n+1)*30+7`
-/

namespace A132231.P16737396200708838550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158573 (n + 1) * 30 + 7

end

end A132231.P16737396200708838550

namespace A132231

/-- `A158573(n+1)*30+7` -/
def P16737396200708838550.Spec : Prop :=
  ∀ n, P16737396200708838550.a n = A132231 (n + 1)

end A132231

/-! ## A132231.P11772431074694670776

`∪[A142786(n+1), A142793(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132231

/-- `∪[A142786(n+1), A142793(n+1)]` -/
def P11772431074694670776.Spec : Prop :=
  ∀ n, (P11772431074694670776.a n : ℤ) = A132231 (n + 1)

theorem P11772431074694670776.correct : P11772431074694670776.Spec := by
  intro n
  simp only [A132231, Nat.add_sub_cancel]

end A132231

/-! ## A132231.P819032237714868339

`p?[30*n+7]`
-/

namespace A132231.P819032237714868339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A132231.P819032237714868339

namespace A132231

/-- `p?[30*n+7]` -/
def P819032237714868339.Spec : Prop :=
  ∀ n, (P819032237714868339.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P260588977884388578

`∩[A106952(n+1), A030432(n+1)]`
-/

namespace A132231.P260588977884388578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P260588977884388578

namespace A132231

/-- `∩[A106952(n+1), A030432(n+1)]` -/
def P260588977884388578.Spec : Prop :=
  ∀ n, (P260588977884388578.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P11994207826278723388

`A128471(A158573(n+1))`
-/

namespace A132231.P11994207826278723388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 (A158573 (n + 1)).toNat

end

end A132231.P11994207826278723388

namespace A132231

/-- `A128471(A158573(n+1))` -/
def P11994207826278723388.Spec : Prop :=
  ∀ n, P11994207826278723388.a n = A132231 (n + 1)

end A132231

/-! ## A132231.P17283363564936326485

`∩[A030432(n+1), A128471(n)]`
-/

namespace A132231.P17283363564936326485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P17283363564936326485

namespace A132231

/-- `∩[A030432(n+1), A128471(n)]` -/
def P17283363564936326485.Spec : Prop :=
  ∀ n, (P17283363564936326485.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P17751157318682325454

`∩[A045357(n+1), A128471(n)]`
-/

namespace A132231.P17751157318682325454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P17751157318682325454

namespace A132231

/-- `∩[A045357(n+1), A128471(n)]` -/
def P17751157318682325454.Spec : Prop :=
  ∀ n, (P17751157318682325454.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P14024159216427585023

`∩[A045380(n+1), A128471(n)]`
-/

namespace A132231.P14024159216427585023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P14024159216427585023

namespace A132231

/-- `∩[A045380(n+1), A128471(n)]` -/
def P14024159216427585023.Spec : Prop :=
  ∀ n, (P14024159216427585023.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P16202288451493870287

`∩[A106952(n+1), A128471(n)]`
-/

namespace A132231.P16202288451493870287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P16202288451493870287

namespace A132231

/-- `∩[A106952(n+1), A128471(n)]` -/
def P16202288451493870287.Spec : Prop :=
  ∀ n, (P16202288451493870287.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P4470219063399788092

`∩[A002476(n+1), A128471(n)]`
-/

namespace A132231.P4470219063399788092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P4470219063399788092

namespace A132231

/-- `∩[A002476(n+1), A128471(n)]` -/
def P4470219063399788092.Spec : Prop :=
  ∀ n, (P4470219063399788092.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P6092861449251267625

`∩[A257668(n+1), A128471(n)]`
-/

namespace A132231.P6092861449251267625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P6092861449251267625

namespace A132231

/-- `∩[A257668(n+1), A128471(n)]` -/
def P6092861449251267625.Spec : Prop :=
  ∀ n, (P6092861449251267625.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P17525767172965296734

`∩[A007645(n+1), A128471(n)]`
-/

namespace A132231.P17525767172965296734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P17525767172965296734

namespace A132231

/-- `∩[A007645(n+1), A128471(n)]` -/
def P17525767172965296734.Spec : Prop :=
  ∀ n, (P17525767172965296734.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P487766615018097673

`∩[A045331(n+1), A128471(n)]`
-/

namespace A132231.P487766615018097673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P487766615018097673

namespace A132231

/-- `∩[A045331(n+1), A128471(n)]` -/
def P487766615018097673.Spec : Prop :=
  ∀ n, (P487766615018097673.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P17642895700924707947

`∩[A045375(n+1), A128471(n)]`
-/

namespace A132231.P17642895700924707947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P17642895700924707947

namespace A132231

/-- `∩[A045375(n+1), A128471(n)]` -/
def P17642895700924707947.Spec : Prop :=
  ∀ n, (P17642895700924707947.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P724214456260352492

`∩[A123365(n+1), A128471(n)]`
-/

namespace A132231.P724214456260352492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P724214456260352492

namespace A132231

/-- `∩[A123365(n+1), A128471(n)]` -/
def P724214456260352492.Spec : Prop :=
  ∀ n, (P724214456260352492.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P13533795137475191026

`∩[A030432(n+1), A045375(n+1)]`
-/

namespace A132231.P13533795137475191026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P13533795137475191026

namespace A132231

/-- `∩[A030432(n+1), A045375(n+1)]` -/
def P13533795137475191026.Spec : Prop :=
  ∀ n, (P13533795137475191026.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P12153813815036245522

`∩[A090652(n+1), A123365(n+1)]`
-/

namespace A132231.P12153813815036245522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P12153813815036245522

namespace A132231

/-- `∩[A090652(n+1), A123365(n+1)]` -/
def P12153813815036245522.Spec : Prop :=
  ∀ n, (P12153813815036245522.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P10970445128706915552

`∩[A279815(n+1), A128471(n)]`
-/

namespace A132231.P10970445128706915552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P10970445128706915552

namespace A132231

/-- `∩[A279815(n+1), A128471(n)]` -/
def P10970445128706915552.Spec : Prop :=
  ∀ n, (P10970445128706915552.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P8095766179207661828

`∩[A045349(n+1), A128471(n)]`
-/

namespace A132231.P8095766179207661828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P8095766179207661828

namespace A132231

/-- `∩[A045349(n+1), A128471(n)]` -/
def P8095766179207661828.Spec : Prop :=
  ∀ n, (P8095766179207661828.a n : ℤ) = A132231 (n + 1)

end A132231

/-! ## A132231.P4809299708887222799

`∩[A045372(n+1), A128471(n)]`
-/

namespace A132231.P4809299708887222799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P4809299708887222799

namespace A132231

/-- `∩[A045372(n+1), A128471(n)]` -/
def P4809299708887222799.Spec : Prop :=
  ∀ n, (P4809299708887222799.a n : ℤ) = A132231 (n + 1)

end A132231

/-!
# A132232: Primes congruent to 11 (mod 30).

The programs for A132232, the canonical program `A132232.P17181212716862781830` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132232 has offset 1).

The definition of A132232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132232.P12869494045548537204

`A158614(n+1)*30+11`
-/

namespace A132232.P12869494045548537204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158614 (n + 1) * 30 + 11

end

end A132232.P12869494045548537204

namespace A132232

/-- `A158614(n+1)*30+11` -/
def P12869494045548537204.Spec : Prop :=
  ∀ n, P12869494045548537204.a n = A132232 (n + 1)

end A132232

/-! ## A132232.P17181212716862781830

`p?[30*n+11]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132232

/-- `p?[30*n+11]` -/
def P17181212716862781830.Spec : Prop :=
  ∀ n, (P17181212716862781830.a n : ℤ) = A132232 (n + 1)

theorem P17181212716862781830.correct : P17181212716862781830.Spec := by
  intro n
  simp only [A132232, Nat.add_sub_cancel]

end A132232

/-! ## A132232.P17606489636702236833

`or(1, p?[3*5*n-4])`
-/

namespace A132232.P17606489636702236833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (5 * n) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A132232.P17606489636702236833

namespace A132232

/-- `or(1, p?[3*5*n-4])` -/
def P17606489636702236833.Spec : Prop :=
  ∀ n, P17606489636702236833.a n = A132232 (n + 1)

end A132232

/-! ## A132232.P9704776941862436191

`∏{d}[p?[3*5*n-4], #]`
-/

namespace A132232.P9704776941862436191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (5 * n) : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A132232.P9704776941862436191

namespace A132232

/-- `∏{d}[p?[3*5*n-4], #]` -/
def P9704776941862436191.Spec : Prop :=
  ∀ n, (P9704776941862436191.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P16722188253436297314

`∩[A004615(n+1), A141785(n+1)]`
-/

namespace A132232.P16722188253436297314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P16722188253436297314

namespace A132232

/-- `∩[A004615(n+1), A141785(n+1)]` -/
def P16722188253436297314.Spec : Prop :=
  ∀ n, (P16722188253436297314.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P7507981123673281823

`A128467(A158614(n+1))`
-/

namespace A132232.P7507981123673281823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 (A158614 (n + 1)).toNat

end

end A132232.P7507981123673281823

namespace A132232

/-- `A128467(A158614(n+1))` -/
def P7507981123673281823.Spec : Prop :=
  ∀ n, P7507981123673281823.a n = A132232 (n + 1)

end A132232

/-! ## A132232.P15418281120992456948

`∩[A030430(n+1), A128467(n)]`
-/

namespace A132232.P15418281120992456948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P15418281120992456948

namespace A132232

/-- `∩[A030430(n+1), A128467(n)]` -/
def P15418281120992456948.Spec : Prop :=
  ∀ n, (P15418281120992456948.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P11054612051550023517

`∩[A045453(n+1), A128467(n)]`
-/

namespace A132232.P11054612051550023517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P11054612051550023517

namespace A132232

/-- `∩[A045453(n+1), A128467(n)]` -/
def P11054612051550023517.Spec : Prop :=
  ∀ n, (P11054612051550023517.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P5907436220425995265

`∩[A090756(n+1), A128467(n)]`
-/

namespace A132232.P5907436220425995265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P5907436220425995265

namespace A132232

/-- `∩[A090756(n+1), A128467(n)]` -/
def P5907436220425995265.Spec : Prop :=
  ∀ n, (P5907436220425995265.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P10614219791380700324

`∩[A140506(n+1), A128467(n)]`
-/

namespace A132232.P10614219791380700324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P10614219791380700324

namespace A132232

/-- `∩[A140506(n+1), A128467(n)]` -/
def P10614219791380700324.Spec : Prop :=
  ∀ n, (P10614219791380700324.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P6935175812016563032

`∩[A141785(n+1), A128467(n)]`
-/

namespace A132232.P6935175812016563032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P6935175812016563032

namespace A132232

/-- `∩[A141785(n+1), A128467(n)]` -/
def P6935175812016563032.Spec : Prop :=
  ∀ n, (P6935175812016563032.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P12918729618448458130

`∩[A038872(n+1), A128467(n)]`
-/

namespace A132232.P12918729618448458130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P12918729618448458130

namespace A132232

/-- `∩[A038872(n+1), A128467(n)]` -/
def P12918729618448458130.Spec : Prop :=
  ∀ n, (P12918729618448458130.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P13734112579165584319

`∩[A045468(n+1), A128467(n)]`
-/

namespace A132232.P13734112579165584319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P13734112579165584319

namespace A132232

/-- `∩[A045468(n+1), A128467(n)]` -/
def P13734112579165584319.Spec : Prop :=
  ∀ n, (P13734112579165584319.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P11837189226450637443

`∩[A064739(n+1), A128467(n)]`
-/

namespace A132232.P11837189226450637443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P11837189226450637443

namespace A132232

/-- `∩[A064739(n+1), A128467(n)]` -/
def P11837189226450637443.Spec : Prop :=
  ∀ n, (P11837189226450637443.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P14785084674849829845

`∩[A045468(n+1), A132238(n+1)]`
-/

namespace A132232.P14785084674849829845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P14785084674849829845

namespace A132232

/-- `∩[A045468(n+1), A132238(n+1)]` -/
def P14785084674849829845.Spec : Prop :=
  ∀ n, (P14785084674849829845.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P18378664215881555051

`∩[A045468(n+1), A290530(n+1)]`
-/

namespace A132232.P18378664215881555051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P18378664215881555051

namespace A132232

/-- `∩[A045468(n+1), A290530(n+1)]` -/
def P18378664215881555051.Spec : Prop :=
  ∀ n, (P18378664215881555051.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P15452333706667938600

`∩[A045407(n+1), A128467(n)]`
-/

namespace A132232.P15452333706667938600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P15452333706667938600

namespace A132232

/-- `∩[A045407(n+1), A128467(n)]` -/
def P15452333706667938600.Spec : Prop :=
  ∀ n, (P15452333706667938600.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P17689682758224681984

`∩[A045429(n+1), A128467(n)]`
-/

namespace A132232.P17689682758224681984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P17689682758224681984

namespace A132232

/-- `∩[A045429(n+1), A128467(n)]` -/
def P17689682758224681984.Spec : Prop :=
  ∀ n, (P17689682758224681984.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P7302235804692497219

`∩[A076518(n+1), A128467(n)]`
-/

namespace A132232.P7302235804692497219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P7302235804692497219

namespace A132232

/-- `∩[A076518(n+1), A128467(n)]` -/
def P7302235804692497219.Spec : Prop :=
  ∀ n, (P7302235804692497219.a n : ℤ) = A132232 (n + 1)

end A132232

/-! ## A132232.P1605636994471506246

`∩[A045407(n+1), A140506(n+1)]`
-/

namespace A132232.P1605636994471506246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132232.P1605636994471506246

namespace A132232

/-- `∩[A045407(n+1), A140506(n+1)]` -/
def P1605636994471506246.Spec : Prop :=
  ∀ n, (P1605636994471506246.a n : ℤ) = A132232 (n + 1)

end A132232

/-!
# A132233: Primes congruent to 13 (mod 30).

The programs for A132233, the canonical program `A132233.P2149782464708551670` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132233 has offset 1).

The definition of A132233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9824 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132233.P14722022479868783092

`A158746(n+1)*30+13`
-/

namespace A132233.P14722022479868783092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158746 (n + 1) * 30 + 13

end

end A132233.P14722022479868783092

namespace A132233

/-- `A158746(n+1)*30+13` -/
def P14722022479868783092.Spec : Prop :=
  ∀ n, P14722022479868783092.a n = A132233 (n + 1)

end A132233

/-! ## A132233.P2149782464708551670

`p?[30*n+13]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132233

/-- `p?[30*n+13]` -/
def P2149782464708551670.Spec : Prop :=
  ∀ n, (P2149782464708551670.a n : ℤ) = A132233 (n + 1)

theorem P2149782464708551670.correct : P2149782464708551670.Spec := by
  intro n
  simp only [A132233, Nat.add_sub_cancel]

end A132233

/-! ## A132233.P6639908341375835942

`or(1, p?[15*n-2])`
-/

namespace A132233.P6639908341375835942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A132233.P6639908341375835942

namespace A132233

/-- `or(1, p?[15*n-2])` -/
def P6639908341375835942.Spec : Prop :=
  ∀ n, P6639908341375835942.a n = A132233 (n + 1)

end A132233

/-! ## A132233.P1922019034526588707

`∩[A030431(n+1), A140533(n+1)]`
-/

namespace A132233.P1922019034526588707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P1922019034526588707

namespace A132233

/-- `∩[A030431(n+1), A140533(n+1)]` -/
def P1922019034526588707.Spec : Prop :=
  ∀ n, (P1922019034526588707.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P15642747727384418080

`A082369(A158746(n+1)+1)`
-/

namespace A132233.P15642747727384418080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (A158746 (n + 1) + 1).toNat

end

end A132233.P15642747727384418080

namespace A132233

/-- `A082369(A158746(n+1)+1)` -/
def P15642747727384418080.Spec : Prop :=
  ∀ n, P15642747727384418080.a n = A132233 (n + 1)

end A132233

/-! ## A132233.P1846243514680349025

`∩[A030431(n+1), A082369(n+1)]`
-/

namespace A132233.P1846243514680349025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P1846243514680349025

namespace A132233

/-- `∩[A030431(n+1), A082369(n+1)]` -/
def P1846243514680349025.Spec : Prop :=
  ∀ n, (P1846243514680349025.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P11691091729577356944

`∩[A045414(n+1), A082369(n+1)]`
-/

namespace A132233.P11691091729577356944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P11691091729577356944

namespace A132233

/-- `∩[A045414(n+1), A082369(n+1)]` -/
def P11691091729577356944.Spec : Prop :=
  ∀ n, (P11691091729577356944.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P15557425788216656057

`∩[A082369(n+1), A106952(n+1)]`
-/

namespace A132233.P15557425788216656057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P15557425788216656057

namespace A132233

/-- `∩[A082369(n+1), A106952(n+1)]` -/
def P15557425788216656057.Spec : Prop :=
  ∀ n, (P15557425788216656057.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P17266341987602852765

`∩[A002476(n+1), A030431(n+1)]`
-/

namespace A132233.P17266341987602852765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P17266341987602852765

namespace A132233

/-- `∩[A002476(n+1), A030431(n+1)]` -/
def P17266341987602852765.Spec : Prop :=
  ∀ n, (P17266341987602852765.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P3791636795503061507

`∩[A002476(n+1), A045414(n+1)]`
-/

namespace A132233.P3791636795503061507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P3791636795503061507

namespace A132233

/-- `∩[A002476(n+1), A045414(n+1)]` -/
def P3791636795503061507.Spec : Prop :=
  ∀ n, (P3791636795503061507.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P16860563396795358568

`∩[A030431(n+1), A045375(n+1)]`
-/

namespace A132233.P16860563396795358568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P16860563396795358568

namespace A132233

/-- `∩[A030431(n+1), A045375(n+1)]` -/
def P16860563396795358568.Spec : Prop :=
  ∀ n, (P16860563396795358568.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P13847069071668948839

`∩[A002476(n+1), A082369(n+1)]`
-/

namespace A132233.P13847069071668948839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P13847069071668948839

namespace A132233

/-- `∩[A002476(n+1), A082369(n+1)]` -/
def P13847069071668948839.Spec : Prop :=
  ∀ n, (P13847069071668948839.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P12616357346153134016

`∩[A007645(n+1), A082369(n+1)]`
-/

namespace A132233.P12616357346153134016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P12616357346153134016

namespace A132233

/-- `∩[A007645(n+1), A082369(n+1)]` -/
def P12616357346153134016.Spec : Prop :=
  ∀ n, (P12616357346153134016.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P8075018437433696184

`∩[A045375(n+1), A045414(n+1)]`
-/

namespace A132233.P8075018437433696184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P8075018437433696184

namespace A132233

/-- `∩[A045375(n+1), A045414(n+1)]` -/
def P8075018437433696184.Spec : Prop :=
  ∀ n, (P8075018437433696184.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P11871490348730867460

`∩[A045375(n+1), A082369(n+1)]`
-/

namespace A132233.P11871490348730867460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P11871490348730867460

namespace A132233

/-- `∩[A045375(n+1), A082369(n+1)]` -/
def P11871490348730867460.Spec : Prop :=
  ∀ n, (P11871490348730867460.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P17710610886742276844

`∩[A002476(n+1), A132238(n+1)]`
-/

namespace A132233.P17710610886742276844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P17710610886742276844

namespace A132233

/-- `∩[A002476(n+1), A132238(n+1)]` -/
def P17710610886742276844.Spec : Prop :=
  ∀ n, (P17710610886742276844.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P5158782865386152904

`∩[A030431(n+1), A123365(n+1)]`
-/

namespace A132233.P5158782865386152904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P5158782865386152904

namespace A132233

/-- `∩[A030431(n+1), A123365(n+1)]` -/
def P5158782865386152904.Spec : Prop :=
  ∀ n, (P5158782865386152904.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P1007539951543331622

`∩[A045414(n+1), A123365(n+1)]`
-/

namespace A132233.P1007539951543331622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P1007539951543331622

namespace A132233

/-- `∩[A045414(n+1), A123365(n+1)]` -/
def P1007539951543331622.Spec : Prop :=
  ∀ n, (P1007539951543331622.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P2263038933410392848

`∩[A045331(n+1), A082369(n+1)]`
-/

namespace A132233.P2263038933410392848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P2263038933410392848

namespace A132233

/-- `∩[A045331(n+1), A082369(n+1)]` -/
def P2263038933410392848.Spec : Prop :=
  ∀ n, (P2263038933410392848.a n : ℤ) = A132233 (n + 1)

end A132233

/-! ## A132233.P6948774609613903656

`∩[A045407(n+1), A082369(n+1)]`
-/

namespace A132233.P6948774609613903656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132233.P6948774609613903656

namespace A132233

/-- `∩[A045407(n+1), A082369(n+1)]` -/
def P6948774609613903656.Spec : Prop :=
  ∀ n, (P6948774609613903656.a n : ℤ) = A132233 (n + 1)

end A132233

/-!
# A132234: Primes congruent to 19 (mod 30).

The programs for A132234, the canonical program `A132234.P13659336727395095621` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132234 has offset 1).

The definition of A132234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132234.P5647332777901347794

`A158806(n+1)*30+19`
-/

namespace A132234.P5647332777901347794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158806 (n + 1) * 30 + 19

end

end A132234.P5647332777901347794

namespace A132234

/-- `A158806(n+1)*30+19` -/
def P5647332777901347794.Spec : Prop :=
  ∀ n, P5647332777901347794.a n = A132234 (n + 1)

end A132234

/-! ## A132234.P13659336727395095621

`∪[A142797(n+1), A142789(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A132234

/-- `∪[A142797(n+1), A142789(n+1)]` -/
def P13659336727395095621.Spec : Prop :=
  ∀ n, (P13659336727395095621.a n : ℤ) = A132234 (n + 1)

theorem P13659336727395095621.correct : P13659336727395095621.Spec := by
  intro n
  simp only [A132234, Nat.add_sub_cancel]

end A132234

/-! ## A132234.P4594307752896167258

`p?[30*n-11]`
-/

namespace A132234.P4594307752896167258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (30 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132234.P4594307752896167258

namespace A132234

/-- `p?[30*n-11]` -/
def P4594307752896167258.Spec : Prop :=
  ∀ n, P4594307752896167258.a n = A132234 (n + 1)

end A132234

/-! ## A132234.P10339839243284197734

`∩[A030433(n+1), A243174(n+1)]`
-/

namespace A132234.P10339839243284197734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P10339839243284197734

namespace A132234

/-- `∩[A030433(n+1), A243174(n+1)]` -/
def P10339839243284197734.Spec : Prop :=
  ∀ n, (P10339839243284197734.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P14361257645893911605

`∩[A132239(n+1), A327753(n+1)]`
-/

namespace A132234.P14361257645893911605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P14361257645893911605

namespace A132234

/-- `∩[A132239(n+1), A327753(n+1)]` -/
def P14361257645893911605.Spec : Prop :=
  ∀ n, (P14361257645893911605.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P15635299554979772110

`A156376(A158806(n+1))`
-/

namespace A132234.P15635299554979772110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 (A158806 (n + 1)).toNat

end

end A132234.P15635299554979772110

namespace A132234

/-- `A156376(A158806(n+1))` -/
def P15635299554979772110.Spec : Prop :=
  ∀ n, P15635299554979772110.a n = A132234 (n + 1)

end A132234

/-! ## A132234.P9890171330692613770

`∩[A030433(n+1), A156376(n)]`
-/

namespace A132234.P9890171330692613770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P9890171330692613770

namespace A132234

/-- `∩[A030433(n+1), A156376(n)]` -/
def P9890171330692613770.Spec : Prop :=
  ∀ n, (P9890171330692613770.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P3395616177015686963

`∩[A033212(n+1), A156376(n)]`
-/

namespace A132234.P3395616177015686963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P3395616177015686963

namespace A132234

/-- `∩[A033212(n+1), A156376(n)]` -/
def P3395616177015686963.Spec : Prop :=
  ∀ n, (P3395616177015686963.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P16242646004470907722

`∩[A045457(n+1), A156376(n)]`
-/

namespace A132234.P16242646004470907722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P16242646004470907722

namespace A132234

/-- `∩[A045457(n+1), A156376(n)]` -/
def P16242646004470907722.Spec : Prop :=
  ∀ n, (P16242646004470907722.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P6267761048190371320

`∩[A140506(n+1), A156376(n)]`
-/

namespace A132234.P6267761048190371320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P6267761048190371320

namespace A132234

/-- `∩[A140506(n+1), A156376(n)]` -/
def P6267761048190371320.Spec : Prop :=
  ∀ n, (P6267761048190371320.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P11820882783566830644

`∩[A038872(n+1), A156376(n)]`
-/

namespace A132234.P11820882783566830644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P11820882783566830644

namespace A132234

/-- `∩[A038872(n+1), A156376(n)]` -/
def P11820882783566830644.Spec : Prop :=
  ∀ n, (P11820882783566830644.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P10863269492766480562

`∩[A045468(n+1), A156376(n)]`
-/

namespace A132234.P10863269492766480562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P10863269492766480562

namespace A132234

/-- `∩[A045468(n+1), A156376(n)]` -/
def P10863269492766480562.Spec : Prop :=
  ∀ n, (P10863269492766480562.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P10946130220661128472

`∩[A064739(n+1), A156376(n)]`
-/

namespace A132234.P10946130220661128472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P10946130220661128472

namespace A132234

/-- `∩[A064739(n+1), A156376(n)]` -/
def P10946130220661128472.Spec : Prop :=
  ∀ n, (P10946130220661128472.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P2393291695284828589

`∩[A191018(n+1), A156376(n)]`
-/

namespace A132234.P2393291695284828589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P2393291695284828589

namespace A132234

/-- `∩[A191018(n+1), A156376(n)]` -/
def P2393291695284828589.Spec : Prop :=
  ∀ n, (P2393291695284828589.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P8041901801241351267

`∩[A002476(n+1), A156376(n)]`
-/

namespace A132234.P8041901801241351267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P8041901801241351267

namespace A132234

/-- `∩[A002476(n+1), A156376(n)]` -/
def P8041901801241351267.Spec : Prop :=
  ∀ n, (P8041901801241351267.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P5255679446341570160

`∩[A007645(n+1), A156376(n)]`
-/

namespace A132234.P5255679446341570160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P5255679446341570160

namespace A132234

/-- `∩[A007645(n+1), A156376(n)]` -/
def P5255679446341570160.Spec : Prop :=
  ∀ n, (P5255679446341570160.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P5158027996128470852

`∩[A045331(n+1), A156376(n)]`
-/

namespace A132234.P5158027996128470852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P5158027996128470852

namespace A132234

/-- `∩[A045331(n+1), A156376(n)]` -/
def P5158027996128470852.Spec : Prop :=
  ∀ n, (P5158027996128470852.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P17882948881441210981

`∩[A045375(n+1), A156376(n)]`
-/

namespace A132234.P17882948881441210981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P17882948881441210981

namespace A132234

/-- `∩[A045375(n+1), A156376(n)]` -/
def P17882948881441210981.Spec : Prop :=
  ∀ n, (P17882948881441210981.a n : ℤ) = A132234 (n + 1)

end A132234

/-! ## A132234.P14841112780448569646

`∩[A123365(n+1), A156376(n)]`
-/

namespace A132234.P14841112780448569646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P14841112780448569646

namespace A132234

/-- `∩[A123365(n+1), A156376(n)]` -/
def P14841112780448569646.Spec : Prop :=
  ∀ n, (P14841112780448569646.a n : ℤ) = A132234 (n + 1)

end A132234

/-!
# A132235: Primes congruent to 23 (mod 30).

The programs for A132235, the canonical program `A132235.P10341566646599893326` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132235 has offset 1).

The definition of A132235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132235.P9757391820934128404

`A158791(n+1)*30+23`
-/

namespace A132235.P9757391820934128404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158791 (n + 1) * 30 + 23

end

end A132235.P9757391820934128404

namespace A132235

/-- `A158791(n+1)*30+23` -/
def P9757391820934128404.Spec : Prop :=
  ∀ n, P9757391820934128404.a n = A132235 (n + 1)

end A132235

/-! ## A132235.P10341566646599893326

`p?[15*n-7]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132235

/-- `p?[15*n-7]` -/
def P10341566646599893326.Spec : Prop :=
  ∀ n, P10341566646599893326.a n = A132235 (n + 1)

theorem P10341566646599893326.correct : P10341566646599893326.Spec := by
  intro n
  simp only [A132235, Nat.add_sub_cancel]

end A132235

/-! ## A132235.P12615954498554326252

`or(1, p?[a(n-1)+15])` with `a(0)=8`
-/

namespace A132235.P12615954498554326252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A132235.P12615954498554326252

namespace A132235

/-- `or(1, p?[a(n-1)+15])` -/
def P12615954498554326252.Spec : Prop :=
  ∀ n, (P12615954498554326252.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P1933500603856803703

`∩[A030431(n+1), A132237(n+1)]`
-/

namespace A132235.P1933500603856803703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P1933500603856803703

namespace A132235

/-- `∩[A030431(n+1), A132237(n+1)]` -/
def P1933500603856803703.Spec : Prop :=
  ∀ n, (P1933500603856803703.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P6085406789526459154

`∩[A030431(n+1), A128473(n+1)]`
-/

namespace A132235.P6085406789526459154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P6085406789526459154

namespace A132235

/-- `∩[A030431(n+1), A128473(n+1)]` -/
def P6085406789526459154.Spec : Prop :=
  ∀ n, (P6085406789526459154.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P6473768716976738578

`∩[A030431(n+1), A121762(n+1)]`
-/

namespace A132235.P6473768716976738578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P6473768716976738578

namespace A132235

/-- `∩[A030431(n+1), A121762(n+1)]` -/
def P6473768716976738578.Spec : Prop :=
  ∀ n, (P6473768716976738578.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P16277851218591989345

`∩[A045414(n+1), A121762(n+1)]`
-/

namespace A132235.P16277851218591989345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P16277851218591989345

namespace A132235

/-- `∩[A045414(n+1), A121762(n+1)]` -/
def P16277851218591989345.Spec : Prop :=
  ∀ n, (P16277851218591989345.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P17325133175315048786

`∩[A246374(n+1), A128473(n+1)]`
-/

namespace A132235.P17325133175315048786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P17325133175315048786

namespace A132235

/-- `∩[A246374(n+1), A128473(n+1)]` -/
def P17325133175315048786.Spec : Prop :=
  ∀ n, (P17325133175315048786.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P10724081309218696062

`∩[A128473(n+1), A045407(n+1)]`
-/

namespace A132235.P10724081309218696062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P10724081309218696062

namespace A132235

/-- `∩[A128473(n+1), A045407(n+1)]` -/
def P10724081309218696062.Spec : Prop :=
  ∀ n, (P10724081309218696062.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P18114994687595226425

`∩[A045413(n+1), A128473(n+1)]`
-/

namespace A132235.P18114994687595226425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P18114994687595226425

namespace A132235

/-- `∩[A045413(n+1), A128473(n+1)]` -/
def P18114994687595226425.Spec : Prop :=
  ∀ n, (P18114994687595226425.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P3977187242135516759

`∩[A045435(n+1), A128473(n+1)]`
-/

namespace A132235.P3977187242135516759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P3977187242135516759

namespace A132235

/-- `∩[A045435(n+1), A128473(n+1)]` -/
def P3977187242135516759.Spec : Prop :=
  ∀ n, (P3977187242135516759.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P8310915042646102513

`∩[A003627(n+1), A030431(n+1)]`
-/

namespace A132235.P8310915042646102513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P8310915042646102513

namespace A132235

/-- `∩[A003627(n+1), A030431(n+1)]` -/
def P8310915042646102513.Spec : Prop :=
  ∀ n, (P8310915042646102513.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P18239385618146465038

`∩[A007528(n+1), A030431(n+1)]`
-/

namespace A132235.P18239385618146465038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P18239385618146465038

namespace A132235

/-- `∩[A007528(n+1), A030431(n+1)]` -/
def P18239385618146465038.Spec : Prop :=
  ∀ n, (P18239385618146465038.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P4893359856444316070

`∩[A030431(n+1), A056955(n+1)]`
-/

namespace A132235.P4893359856444316070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P4893359856444316070

namespace A132235

/-- `∩[A030431(n+1), A056955(n+1)]` -/
def P4893359856444316070.Spec : Prop :=
  ∀ n, (P4893359856444316070.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P4842849569999068880

`∩[A003627(n+1), A128473(n+1)]`
-/

namespace A132235.P4842849569999068880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P4842849569999068880

namespace A132235

/-- `∩[A003627(n+1), A128473(n+1)]` -/
def P4842849569999068880.Spec : Prop :=
  ∀ n, (P4842849569999068880.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P17894824795973158702

`∩[A003627(n+1), A132237(n+1)]`
-/

namespace A132235.P17894824795973158702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P17894824795973158702

namespace A132235

/-- `∩[A003627(n+1), A132237(n+1)]` -/
def P17894824795973158702.Spec : Prop :=
  ∀ n, (P17894824795973158702.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P4766693240309514123

`∩[A007528(n+1), A128473(n+1)]`
-/

namespace A132235.P4766693240309514123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P4766693240309514123

namespace A132235

/-- `∩[A007528(n+1), A128473(n+1)]` -/
def P4766693240309514123.Spec : Prop :=
  ∀ n, (P4766693240309514123.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P13941529438177625787

`∩[A007528(n+1), A132237(n+1)]`
-/

namespace A132235.P13941529438177625787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P13941529438177625787

namespace A132235

/-- `∩[A007528(n+1), A132237(n+1)]` -/
def P13941529438177625787.Spec : Prop :=
  ∀ n, (P13941529438177625787.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P2340056507961931451

`∩[A045410(n+1), A128473(n+1)]`
-/

namespace A132235.P2340056507961931451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P2340056507961931451

namespace A132235

/-- `∩[A045410(n+1), A128473(n+1)]` -/
def P2340056507961931451.Spec : Prop :=
  ∀ n, (P2340056507961931451.a n : ℤ) = A132235 (n + 1)

end A132235

/-! ## A132235.P10601269564520774085

`∩[A056955(n+1), A128473(n+1)]`
-/

namespace A132235.P10601269564520774085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132235.P10601269564520774085

namespace A132235

/-- `∩[A056955(n+1), A128473(n+1)]` -/
def P10601269564520774085.Spec : Prop :=
  ∀ n, (P10601269564520774085.a n : ℤ) = A132235 (n + 1)

end A132235

/-!
# A132236: Primes congruent to 29 (mod 30).

The programs for A132236, the canonical program `A132236.P8388629359003525466` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132236 has offset 1).

The definition of A132236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9805 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132236.P4753198332838772294

`A158850(n+1)*30+29`
-/

namespace A132236.P4753198332838772294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158850 (n + 1) * 30 + 29

end

end A132236.P4753198332838772294

namespace A132236

/-- `A158850(n+1)*30+29` -/
def P4753198332838772294.Spec : Prop :=
  ∀ n, P4753198332838772294.a n = A132236 (n + 1)

end A132236

/-! ## A132236.P8388629359003525466

`p?[15*n-1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132236

/-- `p?[15*n-1]` -/
def P8388629359003525466.Spec : Prop :=
  ∀ n, P8388629359003525466.a n = A132236 (n + 1)

theorem P8388629359003525466.correct : P8388629359003525466.Spec := by
  intro n
  simp only [A132236, Nat.add_sub_cancel]

end A132236

/-! ## A132236.P16330778229770665161

`or(1, p?[3*5*n+14])`
-/

namespace A132236.P16330778229770665161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (5 * n) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A132236.P16330778229770665161

namespace A132236

/-- `or(1, p?[3*5*n+14])` -/
def P16330778229770665161.Spec : Prop :=
  ∀ n, (P16330778229770665161.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P10925104498056699318

`∏{p}[p?[3*5*n+14], #]`
-/

namespace A132236.P10925104498056699318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (5 * n) + 14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A132236.P10925104498056699318

namespace A132236

/-- `∏{p}[p?[3*5*n+14], #]` -/
def P10925104498056699318.Spec : Prop :=
  ∀ n, (P10925104498056699318.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P2116995790766301967

`∩[A045435(n+1), A132240(n+1)]`
-/

namespace A132236.P2116995790766301967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P2116995790766301967

namespace A132236

/-- `∩[A045435(n+1), A132240(n+1)]` -/
def P2116995790766301967.Spec : Prop :=
  ∀ n, (P2116995790766301967.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P2372353976603665809

`∩[A045413(n+1), A132240(n+1)]`
-/

namespace A132236.P2372353976603665809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P2372353976603665809

namespace A132236

/-- `∩[A045413(n+1), A132240(n+1)]` -/
def P2372353976603665809.Spec : Prop :=
  ∀ n, (P2372353976603665809.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P4487458659757931774

`∩[A007528(n+1), A004618(n+1)]`
-/

namespace A132236.P4487458659757931774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P4487458659757931774

namespace A132236

/-- `∩[A007528(n+1), A004618(n+1)]` -/
def P4487458659757931774.Spec : Prop :=
  ∀ n, (P4487458659757931774.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P11830151386836653791

`∩[A007528(n+1), A327753(n+1)]`
-/

namespace A132236.P11830151386836653791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P11830151386836653791

namespace A132236

/-- `∩[A007528(n+1), A327753(n+1)]` -/
def P11830151386836653791.Spec : Prop :=
  ∀ n, (P11830151386836653791.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P15737021347150552959

`∩[A030433(n+1), A003627(n+1)]`
-/

namespace A132236.P15737021347150552959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P15737021347150552959

namespace A132236

/-- `∩[A030433(n+1), A003627(n+1)]` -/
def P15737021347150552959.Spec : Prop :=
  ∀ n, (P15737021347150552959.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P6674194476003252078

`∩[A056955(n+1), A004618(n+1)]`
-/

namespace A132236.P6674194476003252078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P6674194476003252078

namespace A132236

/-- `∩[A056955(n+1), A004618(n+1)]` -/
def P6674194476003252078.Spec : Prop :=
  ∀ n, (P6674194476003252078.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P18015475487637960547

`∩[A045309(n+1), A030433(n+1)]`
-/

namespace A132236.P18015475487637960547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P18015475487637960547

namespace A132236

/-- `∩[A045309(n+1), A030433(n+1)]` -/
def P18015475487637960547.Spec : Prop :=
  ∀ n, (P18015475487637960547.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P14793568463362658847

`∩[A045410(n+1), A030433(n+1)]`
-/

namespace A132236.P14793568463362658847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P14793568463362658847

namespace A132236

/-- `∩[A045410(n+1), A030433(n+1)]` -/
def P14793568463362658847.Spec : Prop :=
  ∀ n, (P14793568463362658847.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P8081236634490472444

`∩[A003627(n+1), A257645(n)]`
-/

namespace A132236.P8081236634490472444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P8081236634490472444

namespace A132236

/-- `∩[A003627(n+1), A257645(n)]` -/
def P8081236634490472444.Spec : Prop :=
  ∀ n, (P8081236634490472444.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P11695035739792323765

`∩[A007528(n+1), A257645(n)]`
-/

namespace A132236.P11695035739792323765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P11695035739792323765

namespace A132236

/-- `∩[A007528(n+1), A257645(n)]` -/
def P11695035739792323765.Spec : Prop :=
  ∀ n, (P11695035739792323765.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P17753111084148996004

`∩[A030433(n+1), A257645(n)]`
-/

namespace A132236.P17753111084148996004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P17753111084148996004

namespace A132236

/-- `∩[A030433(n+1), A257645(n)]` -/
def P17753111084148996004.Spec : Prop :=
  ∀ n, (P17753111084148996004.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P11748128570098469614

`∩[A038872(n+1), A257645(n)]`
-/

namespace A132236.P11748128570098469614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P11748128570098469614

namespace A132236

/-- `∩[A038872(n+1), A257645(n)]` -/
def P11748128570098469614.Spec : Prop :=
  ∀ n, (P11748128570098469614.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P12296309697815431777

`∩[A040028(n+1), A257645(n)]`
-/

namespace A132236.P12296309697815431777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P12296309697815431777

namespace A132236

/-- `∩[A040028(n+1), A257645(n)]` -/
def P12296309697815431777.Spec : Prop :=
  ∀ n, (P12296309697815431777.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P13017202968642589869

`∩[A040036(n+1), A257645(n)]`
-/

namespace A132236.P13017202968642589869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P13017202968642589869

namespace A132236

/-- `∩[A040036(n+1), A257645(n)]` -/
def P13017202968642589869.Spec : Prop :=
  ∀ n, (P13017202968642589869.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P11050982173277468458

`∩[A040044(n+1), A257645(n)]`
-/

namespace A132236.P11050982173277468458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P11050982173277468458

namespace A132236

/-- `∩[A040044(n+1), A257645(n)]` -/
def P11050982173277468458.Spec : Prop :=
  ∀ n, (P11050982173277468458.a n : ℤ) = A132236 (n + 1)

end A132236

/-! ## A132236.P10993034149652491284

`∩[A040046(n+1), A257645(n)]`
-/

namespace A132236.P10993034149652491284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132236.P10993034149652491284

namespace A132236

/-- `∩[A040046(n+1), A257645(n)]` -/
def P10993034149652491284.Spec : Prop :=
  ∀ n, (P10993034149652491284.a n : ℤ) = A132236 (n + 1)

end A132236

/-!
# A132237: Primes congruent to {7, 23} mod 30.

The programs for A132237, the canonical program `A132237.P4246417676326539006` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132237 has offset 1).

The definition of A132237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132237.P4246417676326539006

`p?[or(1, 15*n+7)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132237

/-- `p?[or(1, 15*n+7)]` -/
def P4246417676326539006.Spec : Prop :=
  ∀ n, (P4246417676326539006.a n : ℤ) = A132237 (n + 1)

theorem P4246417676326539006.correct : P4246417676326539006.Spec := by
  intro n
  simp only [A132237, Nat.add_sub_cancel]

end A132237

/-! ## A132237.P18066465994661087228

`p?[15*n-a(n-1)]` with `a(0)=7`
-/

namespace A132237.P18066465994661087228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  (15 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P18066465994661087228

namespace A132237

/-- `p?[15*n-a(n-1)]` -/
def P18066465994661087228.Spec : Prop :=
  ∀ n, P18066465994661087228.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P14880769466991225566

`∪[A132231(n+1), A132235(n+1)]`
-/

namespace A132237.P14880769466991225566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132237.P14880769466991225566

namespace A132237

/-- `∪[A132231(n+1), A132235(n+1)]` -/
def P14880769466991225566.Spec : Prop :=
  ∀ n, (P14880769466991225566.a n : ℤ) = A132237 (n + 1)

end A132237

/-! ## A132237.P15459353283426010740

`p?[A051062(n)-or(1, n)]`
-/

namespace A132237.P15459353283426010740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P15459353283426010740

namespace A132237

/-- `p?[A051062(n)-or(1, n)]` -/
def P15459353283426010740.Spec : Prop :=
  ∀ n, P15459353283426010740.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P6104046095257760123

`p?[A014601(n)+A154609(n)+2]`
-/

namespace A132237.P6104046095257760123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n + (A154609 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P6104046095257760123

namespace A132237

/-- `p?[A014601(n)+A154609(n)+2]` -/
def P6104046095257760123.Spec : Prop :=
  ∀ n, P6104046095257760123.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P8935021126849367693

`p?[A063230(n+1)+A063207(n+1)]`
-/

namespace A132237.P8935021126849367693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) + A063207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P8935021126849367693

namespace A132237

/-- `p?[A063230(n+1)+A063207(n+1)]` -/
def P8935021126849367693.Spec : Prop :=
  ∀ n, P8935021126849367693.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P8128357144368286442

`p?[A063240(n+1)+A063195(n+1)]`
-/

namespace A132237.P8128357144368286442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063240 (n + 1) + A063195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P8128357144368286442

namespace A132237

/-- `p?[A063240(n+1)+A063195(n+1)]` -/
def P8128357144368286442.Spec : Prop :=
  ∀ n, P8128357144368286442.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P1760702187955011658

`p?[A063229(n+1)+A063215(n+1)]`
-/

namespace A132237.P1760702187955011658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1) + A063215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P1760702187955011658

namespace A132237

/-- `p?[A063229(n+1)+A063215(n+1)]` -/
def P1760702187955011658.Spec : Prop :=
  ∀ n, P1760702187955011658.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P3995865496688568566

`p?[A063232(n+1)+A063206(n+1)]`
-/

namespace A132237.P3995865496688568566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063232 (n + 1) + A063206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P3995865496688568566

namespace A132237

/-- `p?[A063232(n+1)+A063206(n+1)]` -/
def P3995865496688568566.Spec : Prop :=
  ∀ n, P3995865496688568566.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P13797223780505979863

`p?[A090771(n+1)+2*A063226(n+1)]`
-/

namespace A132237.P13797223780505979863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) + 2 * A063226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P13797223780505979863

namespace A132237

/-- `p?[A090771(n+1)+2*A063226(n+1)]` -/
def P13797223780505979863.Spec : Prop :=
  ∀ n, P13797223780505979863.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P6863133716857005008

`p?[∑[A008683(A214685(a(n-1)+1))+15]]` with `a(0)=7`
-/

namespace A132237.P6863133716857005008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A008683 (A214685 (f2 (n - 1) + 1).toNat).toNat + 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P6863133716857005008

namespace A132237

/-- `p?[∑[A008683(A214685(a(n-1)+1))+15]]` -/
def P6863133716857005008.Spec : Prop :=
  ∀ n, P6863133716857005008.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P10989818646837219183

`p?[A255413(n+1)-42]`
-/

namespace A132237.P10989818646837219183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (n + 1) - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P10989818646837219183

namespace A132237

/-- `p?[A255413(n+1)-42]` -/
def P10989818646837219183.Spec : Prop :=
  ∀ n, P10989818646837219183.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P16517008544255506872

`p?[∑[A010144(2*n+1)*A010144(2*n)]]`
-/

namespace A132237.P16517008544255506872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 (2 * n + 1) * A010144 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P16517008544255506872

namespace A132237

/-- `p?[∑[A010144(2*n+1)*A010144(2*n)]]` -/
def P16517008544255506872.Spec : Prop :=
  ∀ n, P16517008544255506872.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P16749364694475256502

`p?[∑[A040055(n)]]`
-/

namespace A132237.P16749364694475256502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040055 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P16749364694475256502

namespace A132237

/-- `p?[∑[A040055(n)]]` -/
def P16749364694475256502.Spec : Prop :=
  ∀ n, P16749364694475256502.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P5967124058747070892

`p?[∑[A010144(2*n)-1]]`
-/

namespace A132237.P5967124058747070892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 (2 * n) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P5967124058747070892

namespace A132237

/-- `p?[∑[A010144(2*n)-1]]` -/
def P5967124058747070892.Spec : Prop :=
  ∀ n, P5967124058747070892.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P3518488599384715064

`p?[A063226(3*n+1)-10]`
-/

namespace A132237.P3518488599384715064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (3 * n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P3518488599384715064

namespace A132237

/-- `p?[A063226(3*n+1)-10]` -/
def P3518488599384715064.Spec : Prop :=
  ∀ n, P3518488599384715064.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P1251193695550939549

`p?[A063226(A016789(n))]`
-/

namespace A132237.P1251193695550939549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P1251193695550939549

namespace A132237

/-- `p?[A063226(A016789(n))]` -/
def P1251193695550939549.Spec : Prop :=
  ∀ n, P1251193695550939549.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P15283805206266901479

`p?[A063226(A016777(n)+1)]`
-/

namespace A132237.P15283805206266901479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A016777 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P15283805206266901479

namespace A132237

/-- `p?[A063226(A016777(n)+1)]` -/
def P15283805206266901479.Spec : Prop :=
  ∀ n, P15283805206266901479.a n = A132237 (n + 1)

end A132237

/-! ## A132237.P9915640011963288853

`p?[A007775(A047533(2*(n+1)))]`
-/

namespace A132237.P9915640011963288853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A047533 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132237.P9915640011963288853

namespace A132237

/-- `p?[A007775(A047533(2*(n+1)))]` -/
def P9915640011963288853.Spec : Prop :=
  ∀ n, P9915640011963288853.a n = A132237 (n + 1)

end A132237

/-!
# A132238: Primes congruent to {11, 13} mod 30.

The programs for A132238, the canonical program `A132238.P6867837914599090956` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132238 has offset 1).

The definition of A132238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132238.P6867837914599090956

`p?[a(n-2)+15]` with `a(0)=11, a(1)=13`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132238

/-- `p?[a(n-2)+15]` -/
def P6867837914599090956.Spec : Prop :=
  ∀ n, (P6867837914599090956.a n : ℤ) = A132238 (n + 1)

theorem P6867837914599090956.correct : P6867837914599090956.Spec := by
  intro n
  simp only [A132238, Nat.add_sub_cancel]

end A132238

/-! ## A132238.P3136723661905422924

`∩[A045407(n+1), A271367(n+1)]`
-/

namespace A132238.P3136723661905422924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P3136723661905422924

namespace A132238

/-- `∩[A045407(n+1), A271367(n+1)]` -/
def P3136723661905422924.Spec : Prop :=
  ∀ n, (P3136723661905422924.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P12667837377156906020

`∩[A045429(n+1), A271367(n+1)]`
-/

namespace A132238.P12667837377156906020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P12667837377156906020

namespace A132238

/-- `∩[A045429(n+1), A271367(n+1)]` -/
def P12667837377156906020.Spec : Prop :=
  ∀ n, (P12667837377156906020.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P9899104860504530518

`∩[A045407(n+1), A191062(n+1)]`
-/

namespace A132238.P9899104860504530518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P9899104860504530518

namespace A132238

/-- `∩[A045407(n+1), A191062(n+1)]` -/
def P9899104860504530518.Spec : Prop :=
  ∀ n, (P9899104860504530518.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P9026541916487509881

`∩[A045429(n+1), A191062(n+1)]`
-/

namespace A132238.P9026541916487509881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P9026541916487509881

namespace A132238

/-- `∩[A045429(n+1), A191062(n+1)]` -/
def P9026541916487509881.Spec : Prop :=
  ∀ n, (P9026541916487509881.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P2439048449869620066

`p?[A248474(n+1)-2*A000034(n)]`
-/

namespace A132238.P2439048449869620066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) - 2 * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132238.P2439048449869620066

namespace A132238

/-- `p?[A248474(n+1)-2*A000034(n)]` -/
def P2439048449869620066.Spec : Prop :=
  ∀ n, P2439048449869620066.a n = A132238 (n + 1)

end A132238

/-! ## A132238.P13658757328041445202

`p?[A295340(n+1)]`
-/

namespace A132238.P13658757328041445202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132238.P13658757328041445202

namespace A132238

/-- `p?[A295340(n+1)]` -/
def P13658757328041445202.Spec : Prop :=
  ∀ n, P13658757328041445202.a n = A132238 (n + 1)

end A132238

/-! ## A132238.P412914825241698066

`filter[A295340(n+1), A010051(#)]`
-/

namespace A132238.P412914825241698066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A132238.P412914825241698066

namespace A132238

/-- `filter[A295340(n+1), A010051(#)]` -/
def P412914825241698066.Spec : Prop :=
  ∀ n, P412914825241698066.a n = A132238 (n + 1)

end A132238

/-! ## A132238.P18362190788244865175

`filter[A295340(n+1), A355937(#)]`
-/

namespace A132238.P18362190788244865175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A132238.P18362190788244865175

namespace A132238

/-- `filter[A295340(n+1), A355937(#)]` -/
def P18362190788244865175.Spec : Prop :=
  ∀ n, P18362190788244865175.a n = A132238 (n + 1)

end A132238

/-! ## A132238.P11889797883628126577

`∩[A000040(n+1), A295340(n+1)]`
-/

namespace A132238.P11889797883628126577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P11889797883628126577

namespace A132238

/-- `∩[A000040(n+1), A295340(n+1)]` -/
def P11889797883628126577.Spec : Prop :=
  ∀ n, (P11889797883628126577.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P17875255246938007346

`∩[A000430(n+1), A295340(n+1)]`
-/

namespace A132238.P17875255246938007346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P17875255246938007346

namespace A132238

/-- `∩[A000430(n+1), A295340(n+1)]` -/
def P17875255246938007346.Spec : Prop :=
  ∀ n, (P17875255246938007346.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P13004292851348019767

`∩[A004139(n+1), A295340(n+1)]`
-/

namespace A132238.P13004292851348019767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P13004292851348019767

namespace A132238

/-- `∩[A004139(n+1), A295340(n+1)]` -/
def P13004292851348019767.Spec : Prop :=
  ∀ n, (P13004292851348019767.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P11224257575514726989

`∩[A006005(n+1), A295340(n+1)]`
-/

namespace A132238.P11224257575514726989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P11224257575514726989

namespace A132238

/-- `∩[A006005(n+1), A295340(n+1)]` -/
def P11224257575514726989.Spec : Prop :=
  ∀ n, (P11224257575514726989.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P12950110551880999679

`∩[A008578(n+1), A295340(n+1)]`
-/

namespace A132238.P12950110551880999679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P12950110551880999679

namespace A132238

/-- `∩[A008578(n+1), A295340(n+1)]` -/
def P12950110551880999679.Spec : Prop :=
  ∀ n, (P12950110551880999679.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P5681823170686071221

`∩[A009087(n+1), A295340(n+1)]`
-/

namespace A132238.P5681823170686071221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P5681823170686071221

namespace A132238

/-- `∩[A009087(n+1), A295340(n+1)]` -/
def P5681823170686071221.Spec : Prop :=
  ∀ n, (P5681823170686071221.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P9335280823041908622

`∩[A033946(n+1), A295340(n+1)]`
-/

namespace A132238.P9335280823041908622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P9335280823041908622

namespace A132238

/-- `∩[A033946(n+1), A295340(n+1)]` -/
def P9335280823041908622.Spec : Prop :=
  ∀ n, (P9335280823041908622.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P5908365953586029358

`∩[A042986(n+1), A295340(n+1)]`
-/

namespace A132238.P5908365953586029358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P5908365953586029358

namespace A132238

/-- `∩[A042986(n+1), A295340(n+1)]` -/
def P5908365953586029358.Spec : Prop :=
  ∀ n, (P5908365953586029358.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P8721697496068125648

`∩[A045319(n+1), A295340(n+1)]`
-/

namespace A132238.P8721697496068125648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P8721697496068125648

namespace A132238

/-- `∩[A045319(n+1), A295340(n+1)]` -/
def P8721697496068125648.Spec : Prop :=
  ∀ n, (P8721697496068125648.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P9961337831529039850

`∩[A045321(n+1), A295340(n+1)]`
-/

namespace A132238.P9961337831529039850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P9961337831529039850

namespace A132238

/-- `∩[A045321(n+1), A295340(n+1)]` -/
def P9961337831529039850.Spec : Prop :=
  ∀ n, (P9961337831529039850.a n : ℤ) = A132238 (n + 1)

end A132238

/-! ## A132238.P6366705631616803377

`∩[A045344(n+1), A295340(n+1)]`
-/

namespace A132238.P6366705631616803377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132238.P6366705631616803377

namespace A132238

/-- `∩[A045344(n+1), A295340(n+1)]` -/
def P6366705631616803377.Spec : Prop :=
  ∀ n, (P6366705631616803377.a n : ℤ) = A132238 (n + 1)

end A132238

/-!
# A132239: Primes congruent to {17, 19} mod 30.

The programs for A132239, the canonical program `A132239.P15653864357621956803` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132239 has offset 1).

The definition of A132239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132239.P15653864357621956803

`∪[A039949(n+1), A132234(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132239

/-- `∪[A039949(n+1), A132234(n+1)]` -/
def P15653864357621956803.Spec : Prop :=
  ∀ n, (P15653864357621956803.a n : ℤ) = A132239 (n + 1)

theorem P15653864357621956803.correct : P15653864357621956803.Spec := by
  intro n
  simp only [A132239, Nat.add_sub_cancel]

end A132239

/-! ## A132239.P272944188827454618

`∩[A045356(n+1), A271367(n+1)]`
-/

namespace A132239.P272944188827454618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132239.P272944188827454618

namespace A132239

/-- `∩[A045356(n+1), A271367(n+1)]` -/
def P272944188827454618.Spec : Prop :=
  ∀ n, (P272944188827454618.a n : ℤ) = A132239 (n + 1)

end A132239

/-! ## A132239.P2809917959645175091

`∩[A045378(n+1), A271367(n+1)]`
-/

namespace A132239.P2809917959645175091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132239.P2809917959645175091

namespace A132239

/-- `∩[A045378(n+1), A271367(n+1)]` -/
def P2809917959645175091.Spec : Prop :=
  ∀ n, (P2809917959645175091.a n : ℤ) = A132239 (n + 1)

end A132239

/-! ## A132239.P8979220535586141275

`∩[A191018(n+1), A271367(n+1)]`
-/

namespace A132239.P8979220535586141275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132239.P8979220535586141275

namespace A132239

/-- `∩[A191018(n+1), A271367(n+1)]` -/
def P8979220535586141275.Spec : Prop :=
  ∀ n, (P8979220535586141275.a n : ℤ) = A132239 (n + 1)

end A132239

/-! ## A132239.P1904625240278591410

`∩[A271367(n+1), A341786(n+1)]`
-/

namespace A132239.P1904625240278591410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132239.P1904625240278591410

namespace A132239

/-- `∩[A271367(n+1), A341786(n+1)]` -/
def P1904625240278591410.Spec : Prop :=
  ∀ n, (P1904625240278591410.a n : ℤ) = A132239 (n + 1)

end A132239

/-! ## A132239.P916649811100744394

`p?[A295340(n+1)+6]`
-/

namespace A132239.P916649811100744394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132239.P916649811100744394

namespace A132239

/-- `p?[A295340(n+1)+6]` -/
def P916649811100744394.Spec : Prop :=
  ∀ n, P916649811100744394.a n = A132239 (n + 1)

end A132239

/-! ## A132239.P16139758009825421374

`p?[∑[A010227(n)]+2]`
-/

namespace A132239.P16139758009825421374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010227 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132239.P16139758009825421374

namespace A132239

/-- `p?[∑[A010227(n)]+2]` -/
def P16139758009825421374.Spec : Prop :=
  ∀ n, P16139758009825421374.a n = A132239 (n + 1)

end A132239

/-! ## A132239.P10076416294280147353

`p?[A158060(n+1)-2*A128464(n+1)]`
-/

namespace A132239.P10076416294280147353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) - 2 * A128464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132239.P10076416294280147353

namespace A132239

/-- `p?[A158060(n+1)-2*A128464(n+1)]` -/
def P10076416294280147353.Spec : Prop :=
  ∀ n, P10076416294280147353.a n = A132239 (n + 1)

end A132239

/-! ## A132239.P17933577110942535865

`∩[A090771(n+1)-2, A271367(n+1)]`
-/

namespace A132239.P17933577110942535865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132239.P17933577110942535865

namespace A132239

/-- `∩[A090771(n+1)-2, A271367(n+1)]` -/
def P17933577110942535865.Spec : Prop :=
  ∀ n, (P17933577110942535865.a n : ℤ) = A132239 (n + 1)

end A132239

/-! ## A132239.P14689915169494096801

`p?[A143097(A143097(n+1)+1)+4*(n+1)]`
-/

namespace A132239.P14689915169494096801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A143097 (n + 1) + 1).toNat + (4 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132239.P14689915169494096801

namespace A132239

/-- `p?[A143097(A143097(n+1)+1)+4*(n+1)]` -/
def P14689915169494096801.Spec : Prop :=
  ∀ n, P14689915169494096801.a n = A132239 (n + 1)

end A132239

/-! ## A132239.P9271925087599876435

`p?[A008458(A064429(2*n+1))-A064429(2*n)]`
-/

namespace A132239.P9271925087599876435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A064429 (2 * n + 1)).toNat - A064429 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132239.P9271925087599876435

namespace A132239

/-- `p?[A008458(A064429(2*n+1))-A064429(2*n)]` -/
def P9271925087599876435.Spec : Prop :=
  ∀ n, P9271925087599876435.a n = A132239 (n + 1)

end A132239

/-! ## A132239.P8497887352157626791

`p?[∑[A176895(n)+1]+2]`
-/

namespace A132239.P8497887352157626791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132239.P8497887352157626791

namespace A132239

/-- `p?[∑[A176895(n)+1]+2]` -/
def P8497887352157626791.Spec : Prop :=
  ∀ n, P8497887352157626791.a n = A132239 (n + 1)

end A132239

/-! ## A132239.P9875693698556623556

`p?[∑[A177704(n+1)^3+1]+2]`
-/

namespace A132239.P9875693698556623556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (n + 1) ^ 3 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132239.P9875693698556623556

namespace A132239

/-- `p?[∑[A177704(n+1)^3+1]+2]` -/
def P9875693698556623556.Spec : Prop :=
  ∀ n, P9875693698556623556.a n = A132239 (n + 1)

end A132239

/-! ## A132239.P1437703755725660024

`p?[A047461(n+2)+n-A001068(n)]`
-/

namespace A132239.P1437703755725660024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (n + 2) + ((n : ℤ) - A001068 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132239.P1437703755725660024

namespace A132239

/-- `p?[A047461(n+2)+n-A001068(n)]` -/
def P1437703755725660024.Spec : Prop :=
  ∀ n, P1437703755725660024.a n = A132239 (n + 1)

end A132239

/-! ## A132239.P8456471351109322405

`p?[A047358(n+2)+A042948(A042948(n+1))]`
-/

namespace A132239.P8456471351109322405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (n + 2) + A042948 (A042948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132239.P8456471351109322405

namespace A132239

/-- `p?[A047358(n+2)+A042948(A042948(n+1))]` -/
def P8456471351109322405.Spec : Prop :=
  ∀ n, P8456471351109322405.a n = A132239 (n + 1)

end A132239

/-! ## A132239.P8617491965613099398

`p?[A016969(n)+A010183(2*n)]`
-/

namespace A132239.P8617491965613099398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + A010183 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132239.P8617491965613099398

namespace A132239

/-- `p?[A016969(n)+A010183(2*n)]` -/
def P8617491965613099398.Spec : Prop :=
  ∀ n, P8617491965613099398.a n = A132239 (n + 1)

end A132239

/-! ## A132239.P8260839921706159842

`∩[A192333(n+1), A229947(n+1)]`
-/

namespace A132239.P8260839921706159842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132239.P8260839921706159842

namespace A132239

/-- `∩[A192333(n+1), A229947(n+1)]` -/
def P8260839921706159842.Spec : Prop :=
  ∀ n, (P8260839921706159842.a n : ℤ) = A132239 (n + 1)

end A132239

/-! ## A132239.P15196776725232228245

`∩[A192333(n+1), A271367(n+1)]`
-/

namespace A132239.P15196776725232228245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132239.P15196776725232228245

namespace A132239

/-- `∩[A192333(n+1), A271367(n+1)]` -/
def P15196776725232228245.Spec : Prop :=
  ∀ n, (P15196776725232228245.a n : ℤ) = A132239 (n + 1)

end A132239

/-! ## A132239.P5176245985491936928

`∩[A047211(n+1), A271367(n+1)]`
-/

namespace A132239.P5176245985491936928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132239.P5176245985491936928

namespace A132239

/-- `∩[A047211(n+1), A271367(n+1)]` -/
def P5176245985491936928.Spec : Prop :=
  ∀ n, (P5176245985491936928.a n : ℤ) = A132239 (n + 1)

end A132239

/-!
# A132240: Primes congruent to {1, 29} mod 30.

The programs for A132240, the canonical program `A132240.P6934073971064317226` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132240 has offset 1).

The definition of A132240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132240.P6934073971064317226

`p?[a(n-2)+15]` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132240

/-- `p?[a(n-2)+15]` -/
def P6934073971064317226.Spec : Prop :=
  ∀ n, (P6934073971064317226.a n : ℤ) = A132240 (n + 1)

theorem P6934073971064317226.correct : P6934073971064317226.Spec := by
  intro n
  simp only [A132240, Nat.add_sub_cancel]

end A132240

/-! ## A132240.P4237013301761013506

`p?[15*n-a(n-1)]` with `a(0)=1`
-/

namespace A132240.P4237013301761013506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (15 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132240.P4237013301761013506

namespace A132240

/-- `p?[15*n-a(n-1)]` -/
def P4237013301761013506.Spec : Prop :=
  ∀ n, P4237013301761013506.a n = A132240 (n + 1)

end A132240

/-! ## A132240.P13667950497934272964

`p?[5*n-dr(3*(n+1))]`
-/

namespace A132240.P13667950497934272964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - (SequenceMachineLib.digitalRoot (3 * (n + 1) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132240.P13667950497934272964

namespace A132240

/-- `p?[5*n-dr(3*(n+1))]` -/
def P13667950497934272964.Spec : Prop :=
  ∀ n, P13667950497934272964.a n = A132240 (n + 1)

end A132240

/-! ## A132240.P5684187189371905156

`p?[12*ceil(n/3)+n+1]`
-/

namespace A132240.P5684187189371905156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ⌈(n : ℚ) / 3⌉ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132240.P5684187189371905156

namespace A132240

/-- `p?[12*ceil(n/3)+n+1]` -/
def P5684187189371905156.Spec : Prop :=
  ∀ n, P5684187189371905156.a n = A132240 (n + 1)

end A132240

/-! ## A132240.P2438065153102301344

`or(1, p?[A175887(n+1)])`
-/

namespace A132240.P2438065153102301344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A132240.P2438065153102301344

namespace A132240

/-- `or(1, p?[A175887(n+1)])` -/
def P2438065153102301344.Spec : Prop :=
  ∀ n, P2438065153102301344.a n = A132240 (n + 1)

end A132240

/-! ## A132240.P5118230612100737570

`filter[A175887(n+1), A010051(#)]`
-/

namespace A132240.P5118230612100737570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A132240.P5118230612100737570

namespace A132240

/-- `filter[A175887(n+1), A010051(#)]` -/
def P5118230612100737570.Spec : Prop :=
  ∀ n, P5118230612100737570.a n = A132240 (n + 1)

end A132240

/-! ## A132240.P14678861761355671983

`∩[A000040(n+1), A175887(n+1)]`
-/

namespace A132240.P14678861761355671983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P14678861761355671983

namespace A132240

/-- `∩[A000040(n+1), A175887(n+1)]` -/
def P14678861761355671983.Spec : Prop :=
  ∀ n, (P14678861761355671983.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P14601430200623361268

`∩[A004139(n+1), A175887(n+1)]`
-/

namespace A132240.P14601430200623361268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P14601430200623361268

namespace A132240

/-- `∩[A004139(n+1), A175887(n+1)]` -/
def P14601430200623361268.Spec : Prop :=
  ∀ n, (P14601430200623361268.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P9300862636342699553

`∩[A038872(n+1), A175887(n+1)]`
-/

namespace A132240.P9300862636342699553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P9300862636342699553

namespace A132240

/-- `∩[A038872(n+1), A175887(n+1)]` -/
def P9300862636342699553.Spec : Prop :=
  ∀ n, (P9300862636342699553.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P12426056274665895654

`∩[A045319(n+1), A175887(n+1)]`
-/

namespace A132240.P12426056274665895654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P12426056274665895654

namespace A132240

/-- `∩[A045319(n+1), A175887(n+1)]` -/
def P12426056274665895654.Spec : Prop :=
  ∀ n, (P12426056274665895654.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P12064383425144607037

`∩[A045344(n+1), A175887(n+1)]`
-/

namespace A132240.P12064383425144607037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P12064383425144607037

namespace A132240

/-- `∩[A045344(n+1), A175887(n+1)]` -/
def P12064383425144607037.Spec : Prop :=
  ∀ n, (P12064383425144607037.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P336067867387083511

`∩[A045348(n+1), A175887(n+1)]`
-/

namespace A132240.P336067867387083511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P336067867387083511

namespace A132240

/-- `∩[A045348(n+1), A175887(n+1)]` -/
def P336067867387083511.Spec : Prop :=
  ∀ n, (P336067867387083511.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P3966565878345420758

`∩[A045371(n+1), A175887(n+1)]`
-/

namespace A132240.P3966565878345420758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P3966565878345420758

namespace A132240

/-- `∩[A045371(n+1), A175887(n+1)]` -/
def P3966565878345420758.Spec : Prop :=
  ∀ n, (P3966565878345420758.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P7551835229039759453

`∩[A045405(n+1), A175887(n+1)]`
-/

namespace A132240.P7551835229039759453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P7551835229039759453

namespace A132240

/-- `∩[A045405(n+1), A175887(n+1)]` -/
def P7551835229039759453.Spec : Prop :=
  ∀ n, (P7551835229039759453.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P1719975016010870006

`∩[A045428(n+1), A175887(n+1)]`
-/

namespace A132240.P1719975016010870006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P1719975016010870006

namespace A132240

/-- `∩[A045428(n+1), A175887(n+1)]` -/
def P1719975016010870006.Spec : Prop :=
  ∀ n, (P1719975016010870006.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P10772761386440672780

`∩[A045468(n+1), A175887(n+1)]`
-/

namespace A132240.P10772761386440672780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P10772761386440672780

namespace A132240

/-- `∩[A045468(n+1), A175887(n+1)]` -/
def P10772761386440672780.Spec : Prop :=
  ∀ n, (P10772761386440672780.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P7479187903834722206

`∩[A051948(n+1), A175887(n+1)]`
-/

namespace A132240.P7479187903834722206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P7479187903834722206

namespace A132240

/-- `∩[A051948(n+1), A175887(n+1)]` -/
def P7479187903834722206.Spec : Prop :=
  ∀ n, (P7479187903834722206.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P16147446528776970043

`∩[A064728(n+1), A175887(n+1)]`
-/

namespace A132240.P16147446528776970043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P16147446528776970043

namespace A132240

/-- `∩[A064728(n+1), A175887(n+1)]` -/
def P16147446528776970043.Spec : Prop :=
  ∀ n, (P16147446528776970043.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P10659901408986897191

`∩[A064739(n+1), A175887(n+1)]`
-/

namespace A132240.P10659901408986897191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P10659901408986897191

namespace A132240

/-- `∩[A064739(n+1), A175887(n+1)]` -/
def P10659901408986897191.Spec : Prop :=
  ∀ n, (P10659901408986897191.a n : ℤ) = A132240 (n + 1)

end A132240

/-! ## A132240.P15588483675681052711

`∩[A065091(n+1), A175887(n+1)]`
-/

namespace A132240.P15588483675681052711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132240.P15588483675681052711

namespace A132240

/-- `∩[A065091(n+1), A175887(n+1)]` -/
def P15588483675681052711.Spec : Prop :=
  ∀ n, (P15588483675681052711.a n : ℤ) = A132240 (n + 1)

end A132240

/-!
# A132241: Twin primes congruent to {11, 13} mod 30.

The programs for A132241, the canonical program `A132241.P13997733159856759720` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132241 has offset 1).

The definition of A132241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132241.P11612184310496433559

`∩[A001097(n+1), A132238(n+1)]`
-/

namespace A132241.P11612184310496433559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P11612184310496433559

namespace A132241

/-- `∩[A001097(n+1), A132238(n+1)]` -/
def P11612184310496433559.Spec : Prop :=
  ∀ n, (P11612184310496433559.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P3519034024073019720

`∩[A132238(n+1), A132247(n+1)]`
-/

namespace A132241.P3519034024073019720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P3519034024073019720

namespace A132241

/-- `∩[A132238(n+1), A132247(n+1)]` -/
def P3519034024073019720.Spec : Prop :=
  ∀ n, (P3519034024073019720.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P1030601240213753220

`∩[A132238(n+1), A171688(n+1)]`
-/

namespace A132241.P1030601240213753220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P1030601240213753220

namespace A132241

/-- `∩[A132238(n+1), A171688(n+1)]` -/
def P1030601240213753220.Spec : Prop :=
  ∀ n, (P1030601240213753220.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P11173985507945382440

`∩[A132238(n+1), A171821(n+1)]`
-/

namespace A132241.P11173985507945382440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P11173985507945382440

namespace A132241

/-- `∩[A132238(n+1), A171821(n+1)]` -/
def P11173985507945382440.Spec : Prop :=
  ∀ n, (P11173985507945382440.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P11105794967264416659

`∩[A132238(n+1), A265760(n+1)]`
-/

namespace A132241.P11105794967264416659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P11105794967264416659

namespace A132241

/-- `∩[A132238(n+1), A265760(n+1)]` -/
def P11105794967264416659.Spec : Prop :=
  ∀ n, (P11105794967264416659.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P16989261708652873800

`∪[A282321(n+1), A282322(n+1)]`
-/

namespace A132241.P16989261708652873800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P16989261708652873800

namespace A132241

/-- `∪[A282321(n+1), A282322(n+1)]` -/
def P16989261708652873800.Spec : Prop :=
  ∀ n, (P16989261708652873800.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P13997733159856759720

`A282321(A008619(n))+A010673(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A132241

/-- `A282321(A008619(n))+A010673(n)` -/
def P13997733159856759720.Spec : Prop :=
  ∀ n, P13997733159856759720.a n = A132241 (n + 1)

theorem P13997733159856759720.correct : P13997733159856759720.Spec := by
  intro n
  simp only [A132241, Nat.add_sub_cancel]

end A132241

/-! ## A132241.P14878910071855550132

`A282321(A008619(n))+Δ[A109613(n)]`
-/

namespace A132241.P14878910071855550132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282321 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A132241.P14878910071855550132

namespace A132241

/-- `A282321(A008619(n))+Δ[A109613(n)]` -/
def P14878910071855550132.Spec : Prop :=
  ∀ n, P14878910071855550132.a n = A132241 (n + 1)

end A132241

/-! ## A132241.P7418078902405019438

`A282321(A008619(n))+2*A000035(n)`
-/

namespace A132241.P7418078902405019438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282321 (A008619 n).toNat + 2 * A000035 n

end

end A132241.P7418078902405019438

namespace A132241

/-- `A282321(A008619(n))+2*A000035(n)` -/
def P7418078902405019438.Spec : Prop :=
  ∀ n, P7418078902405019438.a n = A132241 (n + 1)

end A132241

/-! ## A132241.P15528349718507910254

`A282321(A008619(n))+A217943((-1)^n+3)`
-/

namespace A132241.P15528349718507910254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282321 (A008619 n).toNat + A217943 ((-1) ^ n + 3).toNat

end

end A132241.P15528349718507910254

namespace A132241

/-- `A282321(A008619(n))+A217943((-1)^n+3)` -/
def P15528349718507910254.Spec : Prop :=
  ∀ n, P15528349718507910254.a n = A132241 (n + 1)

end A132241

/-! ## A132241.P14552335624560725099

`∩[A132238(n+1), A334141(n+1)]`
-/

namespace A132241.P14552335624560725099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P14552335624560725099

namespace A132241

/-- `∩[A132238(n+1), A334141(n+1)]` -/
def P14552335624560725099.Spec : Prop :=
  ∀ n, (P14552335624560725099.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P2628537147063917540

`∩[A001097(n+1), A295340(n+1)]`
-/

namespace A132241.P2628537147063917540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P2628537147063917540

namespace A132241

/-- `∩[A001097(n+1), A295340(n+1)]` -/
def P2628537147063917540.Spec : Prop :=
  ∀ n, (P2628537147063917540.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P14244943101519865236

`∩[A132247(n+1), A295340(n+1)]`
-/

namespace A132241.P14244943101519865236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P14244943101519865236

namespace A132241

/-- `∩[A132247(n+1), A295340(n+1)]` -/
def P14244943101519865236.Spec : Prop :=
  ∀ n, (P14244943101519865236.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P11444232191249813962

`∩[A171688(n+1), A295340(n+1)]`
-/

namespace A132241.P11444232191249813962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P11444232191249813962

namespace A132241

/-- `∩[A171688(n+1), A295340(n+1)]` -/
def P11444232191249813962.Spec : Prop :=
  ∀ n, (P11444232191249813962.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P18353205881070709319

`∩[A171821(n+1), A295340(n+1)]`
-/

namespace A132241.P18353205881070709319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P18353205881070709319

namespace A132241

/-- `∩[A171821(n+1), A295340(n+1)]` -/
def P18353205881070709319.Spec : Prop :=
  ∀ n, (P18353205881070709319.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P4065253272276254025

`∩[A265760(n+1), A295340(n+1)]`
-/

namespace A132241.P4065253272276254025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P4065253272276254025

namespace A132241

/-- `∩[A265760(n+1), A295340(n+1)]` -/
def P4065253272276254025.Spec : Prop :=
  ∀ n, (P4065253272276254025.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P8842444263775633620

`∩[A062505(n+1), A132238(n+1)]`
-/

namespace A132241.P8842444263775633620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P8842444263775633620

namespace A132241

/-- `∩[A062505(n+1), A132238(n+1)]` -/
def P8842444263775633620.Spec : Prop :=
  ∀ n, (P8842444263775633620.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P7419129555920396321

`∩[A062506(n+1), A132238(n+1)]`
-/

namespace A132241.P7419129555920396321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132241.P7419129555920396321

namespace A132241

/-- `∩[A062506(n+1), A132238(n+1)]` -/
def P7419129555920396321.Spec : Prop :=
  ∀ n, (P7419129555920396321.a n : ℤ) = A132241 (n + 1)

end A132241

/-! ## A132241.P12124422436629848320

`record[A072963(A132238(n+1))]`
-/

namespace A132241.P12124422436629848320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A132238 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132241.P12124422436629848320

namespace A132241

/-- `record[A072963(A132238(n+1))]` -/
def P12124422436629848320.Spec : Prop :=
  ∀ n, P12124422436629848320.a n = A132241 (n + 1)

end A132241

/-! ## A132241.P8184195686213480151

`record[A284599(A295340(n+1))]`
-/

namespace A132241.P8184195686213480151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (A295340 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132241.P8184195686213480151

namespace A132241

/-- `record[A284599(A295340(n+1))]` -/
def P8184195686213480151.Spec : Prop :=
  ∀ n, P8184195686213480151.a n = A132241 (n + 1)

end A132241

/-!
# A132242: Twin primes congruent to {17, 19} mod 30.

The programs for A132242, the canonical program `A132242.P2615322725815077245` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132242 has offset 1).

The definition of A132242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132242.P12139447682823839311

`∩[A001097(n+1), A132239(n+1)]`
-/

namespace A132242.P12139447682823839311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P12139447682823839311

namespace A132242

/-- `∩[A001097(n+1), A132239(n+1)]` -/
def P12139447682823839311.Spec : Prop :=
  ∀ n, (P12139447682823839311.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P1684960337074565347

`∩[A001097(n+1), A192333(n+1)]`
-/

namespace A132242.P1684960337074565347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P1684960337074565347

namespace A132242

/-- `∩[A001097(n+1), A192333(n+1)]` -/
def P1684960337074565347.Spec : Prop :=
  ∀ n, (P1684960337074565347.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P8326644221581288579

`∩[A062505(n+1), A132239(n+1)]`
-/

namespace A132242.P8326644221581288579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P8326644221581288579

namespace A132242

/-- `∩[A062505(n+1), A132239(n+1)]` -/
def P8326644221581288579.Spec : Prop :=
  ∀ n, (P8326644221581288579.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P2615322725815077245

`∩[A062506(n+1), A132239(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A132242

/-- `∩[A062506(n+1), A132239(n+1)]` -/
def P2615322725815077245.Spec : Prop :=
  ∀ n, (P2615322725815077245.a n : ℤ) = A132242 (n + 1)

theorem P2615322725815077245.correct : P2615322725815077245.Spec := by
  intro n
  simp only [A132242, Nat.add_sub_cancel]

end A132242

/-! ## A132242.P18100696138885327918

`∩[A132239(n+1), A132247(n+1)]`
-/

namespace A132242.P18100696138885327918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P18100696138885327918

namespace A132242

/-- `∩[A132239(n+1), A132247(n+1)]` -/
def P18100696138885327918.Spec : Prop :=
  ∀ n, (P18100696138885327918.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P17859405612016017877

`∩[A132239(n+1), A171688(n+1)]`
-/

namespace A132242.P17859405612016017877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P17859405612016017877

namespace A132242

/-- `∩[A132239(n+1), A171688(n+1)]` -/
def P17859405612016017877.Spec : Prop :=
  ∀ n, (P17859405612016017877.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P240198996708473474

`∩[A132239(n+1), A171821(n+1)]`
-/

namespace A132242.P240198996708473474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P240198996708473474

namespace A132242

/-- `∩[A132239(n+1), A171821(n+1)]` -/
def P240198996708473474.Spec : Prop :=
  ∀ n, (P240198996708473474.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P17340053081986913114

`∩[A132247(n+1), A192333(n+1)]`
-/

namespace A132242.P17340053081986913114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P17340053081986913114

namespace A132242

/-- `∩[A132247(n+1), A192333(n+1)]` -/
def P17340053081986913114.Spec : Prop :=
  ∀ n, (P17340053081986913114.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P17292027445305896732

`∩[A171688(n+1), A192333(n+1)]`
-/

namespace A132242.P17292027445305896732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P17292027445305896732

namespace A132242

/-- `∩[A171688(n+1), A192333(n+1)]` -/
def P17292027445305896732.Spec : Prop :=
  ∀ n, (P17292027445305896732.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P2718986918487964390

`∩[A132239(n+1), A265760(n+1)]`
-/

namespace A132242.P2718986918487964390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P2718986918487964390

namespace A132242

/-- `∩[A132239(n+1), A265760(n+1)]` -/
def P2718986918487964390.Spec : Prop :=
  ∀ n, (P2718986918487964390.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P12857351813566004168

`∩[A132239(n+1), A334141(n+1)]`
-/

namespace A132242.P12857351813566004168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P12857351813566004168

namespace A132242

/-- `∩[A132239(n+1), A334141(n+1)]` -/
def P12857351813566004168.Spec : Prop :=
  ∀ n, (P12857351813566004168.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P17024607211664971499

`∪[A282323(n+1), A282324(n+1)]`
-/

namespace A132242.P17024607211664971499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P17024607211664971499

namespace A132242

/-- `∪[A282323(n+1), A282324(n+1)]` -/
def P17024607211664971499.Spec : Prop :=
  ∀ n, (P17024607211664971499.a n : ℤ) = A132242 (n + 1)

end A132242

/-! ## A132242.P106871883253264566

`n%2+A282323(A008619(n))+n%2`
-/

namespace A132242.P106871883253264566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (A282323 (A008619 n).toNat + ((n % 2 : ℕ) : ℤ))

end

end A132242.P106871883253264566

namespace A132242

/-- `n%2+A282323(A008619(n))+n%2` -/
def P106871883253264566.Spec : Prop :=
  ∀ n, P106871883253264566.a n = A132242 (n + 1)

end A132242

/-! ## A132242.P1759410519684706549

`A282323(round((2*n+3)/4))+A010673(n)`
-/

namespace A132242.P1759410519684706549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282323 (SequenceMachineLib.roundAway ((2 * n + 3 : ℚ) / 4)).toNat + A010673 n

end

end A132242.P1759410519684706549

namespace A132242

/-- `A282323(round((2*n+3)/4))+A010673(n)` -/
def P1759410519684706549.Spec : Prop :=
  ∀ n, P1759410519684706549.a n = A132242 (n + 1)

end A132242

/-! ## A132242.P12051912662806871011

`A282323(A008619(n))+1-A033999(n)`
-/

namespace A132242.P12051912662806871011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282323 (A008619 n).toNat + (1 - A033999 n)

end

end A132242.P12051912662806871011

namespace A132242

/-- `A282323(A008619(n))+1-A033999(n)` -/
def P12051912662806871011.Spec : Prop :=
  ∀ n, P12051912662806871011.a n = A132242 (n + 1)

end A132242

/-! ## A132242.P17214170312515822316

`A033999(n+1)+A282323(A008619(n))+1`
-/

namespace A132242.P17214170312515822316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + (A282323 (A008619 n).toNat + 1)

end

end A132242.P17214170312515822316

namespace A132242

/-- `A033999(n+1)+A282323(A008619(n))+1` -/
def P17214170312515822316.Spec : Prop :=
  ∀ n, P17214170312515822316.a n = A132242 (n + 1)

end A132242

/-! ## A132242.P10847187765614651938

`A282323(A008619(n))+Δ[A154708(n+1)-n]`
-/

namespace A132242.P10847187765614651938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154708 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282323 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A132242.P10847187765614651938

namespace A132242

/-- `A282323(A008619(n))+Δ[A154708(n+1)-n]` -/
def P10847187765614651938.Spec : Prop :=
  ∀ n, P10847187765614651938.a n = A132242 (n + 1)

end A132242

/-! ## A132242.P6472674484988213217

`record[A072963(A132239(n+1))]`
-/

namespace A132242.P6472674484988213217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A132239 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132242.P6472674484988213217

namespace A132242

/-- `record[A072963(A132239(n+1))]` -/
def P6472674484988213217.Spec : Prop :=
  ∀ n, P6472674484988213217.a n = A132242 (n + 1)

end A132242

/-! ## A132242.P1513996932369126940

`filter[A132239(n+1), A164292(#)]`
-/

namespace A132242.P1513996932369126940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132242.P1513996932369126940

namespace A132242

/-- `filter[A132239(n+1), A164292(#)]` -/
def P1513996932369126940.Spec : Prop :=
  ∀ n, P1513996932369126940.a n = A132242 (n + 1)

end A132242

/-! ## A132242.P305512831001830763

`filter[A192333(n+2), A164292(#)]`
-/

namespace A132242.P305512831001830763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132242.P305512831001830763

namespace A132242

/-- `filter[A192333(n+2), A164292(#)]` -/
def P305512831001830763.Spec : Prop :=
  ∀ n, P305512831001830763.a n = A132242 (n + 1)

end A132242

/-!
# A132243: Twin primes congruent to {1, 29} mod 30.

The programs for A132243, the canonical program `A132243.P14774113840240775402` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132243 has offset 1).

The definition of A132243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132243.P6126640015230905985

`A060229(∑[log2(gcd(2, n))])+2*n%2`
-/

namespace A132243.P6126640015230905985
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((2 * (n % 2) : ℕ) : ℤ)

end

end A132243.P6126640015230905985

namespace A132243

/-- `A060229(∑[log2(gcd(2, n))])+2*n%2` -/
def P6126640015230905985.Spec : Prop :=
  ∀ n, P6126640015230905985.a n = A132243 (n + 1)

end A132243

/-! ## A132243.P1258807045516370584

`∪[p?[p?[15*n+1]-2], A282326(n+1)]`
-/

namespace A132243.P1258807045516370584
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A132243.P1258807045516370584

namespace A132243

/-- `∪[p?[p?[15*n+1]-2], A282326(n+1)]` -/
def P1258807045516370584.Spec : Prop :=
  ∀ n, (P1258807045516370584.a n : ℤ) = A132243 (n + 1)

end A132243

/-! ## A132243.P1357233113997829725

`record[A072963(A132240(n+1))]`
-/

namespace A132243.P1357233113997829725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A132240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132243.P1357233113997829725

namespace A132243

/-- `record[A072963(A132240(n+1))]` -/
def P1357233113997829725.Spec : Prop :=
  ∀ n, P1357233113997829725.a n = A132243 (n + 1)

end A132243

/-! ## A132243.P14774113840240775402

`filter[A132240(n+1), A164292(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132243

/-- `filter[A132240(n+1), A164292(#)]` -/
def P14774113840240775402.Spec : Prop :=
  ∀ n, P14774113840240775402.a n = A132243 (n + 1)

theorem P14774113840240775402.correct : P14774113840240775402.Spec := by
  intro n
  simp only [A132243, Nat.add_sub_cancel]

end A132243

/-! ## A132243.P11597919801877609140

`filter[A175887(n+1), A164292(#)]`
-/

namespace A132243.P11597919801877609140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132243.P11597919801877609140

namespace A132243

/-- `filter[A175887(n+1), A164292(#)]` -/
def P11597919801877609140.Spec : Prop :=
  ∀ n, P11597919801877609140.a n = A132243 (n + 1)

end A132243

/-! ## A132243.P9779114401007801063

`filter[A071047(3*n), A164292(#)]`
-/

namespace A132243.P9779114401007801063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071047 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132243.P9779114401007801063

namespace A132243

/-- `filter[A071047(3*n), A164292(#)]` -/
def P9779114401007801063.Spec : Prop :=
  ∀ n, P9779114401007801063.a n = A132243 (n + 1)

end A132243

/-! ## A132243.P5776801139534120487

`record[A072963(p?[A175887(n+1)])]`
-/

namespace A132243.P5776801139534120487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132243.P5776801139534120487

namespace A132243

/-- `record[A072963(p?[A175887(n+1)])]` -/
def P5776801139534120487.Spec : Prop :=
  ∀ n, P5776801139534120487.a n = A132243 (n + 1)

end A132243

/-! ## A132243.P5299333671569306743

`record[A284599(p?[A175887(n+1)])]`
-/

namespace A132243.P5299333671569306743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132243.P5299333671569306743

namespace A132243

/-- `record[A284599(p?[A175887(n+1)])]` -/
def P5299333671569306743.Spec : Prop :=
  ∀ n, P5299333671569306743.a n = A132243 (n + 1)

end A132243

/-! ## A132243.P15058220820901910914

`p?[A072963(p?[A132240(n+1)])]`
-/

namespace A132243.P15058220820901910914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132243.P15058220820901910914

namespace A132243

/-- `p?[A072963(p?[A132240(n+1)])]` -/
def P15058220820901910914.Spec : Prop :=
  ∀ n, P15058220820901910914.a n = A132243 (n + 1)

end A132243

/-! ## A132243.P12388740540209629248

`A060229(A008619(n))+Δ[or(1, n)]`
-/

namespace A132243.P12388740540209629248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (A008619 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A132243.P12388740540209629248

namespace A132243

/-- `A060229(A008619(n))+Δ[or(1, n)]` -/
def P12388740540209629248.Spec : Prop :=
  ∀ n, P12388740540209629248.a n = A132243 (n + 1)

end A132243

/-! ## A132243.P4176787437237362762

`filter[A166520(3*n+1), A164292(#)]`
-/

namespace A132243.P4176787437237362762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132243.P4176787437237362762

namespace A132243

/-- `filter[A166520(3*n+1), A164292(#)]` -/
def P4176787437237362762.Spec : Prop :=
  ∀ n, P4176787437237362762.a n = A132243 (n + 1)

end A132243

/-! ## A132243.P8487330946242816562

`filter[A166525(3*n+1), A164292(#)]`
-/

namespace A132243.P8487330946242816562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166525 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132243.P8487330946242816562

namespace A132243

/-- `filter[A166525(3*n+1), A164292(#)]` -/
def P8487330946242816562.Spec : Prop :=
  ∀ n, P8487330946242816562.a n = A132243 (n + 1)

end A132243

/-! ## A132243.P11684629260657481454

`∩[A001097(n+1), A132240(n+1)]`
-/

namespace A132243.P11684629260657481454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132243.P11684629260657481454

namespace A132243

/-- `∩[A001097(n+1), A132240(n+1)]` -/
def P11684629260657481454.Spec : Prop :=
  ∀ n, (P11684629260657481454.a n : ℤ) = A132243 (n + 1)

end A132243

/-! ## A132243.P3704192250491784696

`∩[A001097(n+1), A175887(n+1)]`
-/

namespace A132243.P3704192250491784696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132243.P3704192250491784696

namespace A132243

/-- `∩[A001097(n+1), A175887(n+1)]` -/
def P3704192250491784696.Spec : Prop :=
  ∀ n, (P3704192250491784696.a n : ℤ) = A132243 (n + 1)

end A132243

/-! ## A132243.P6417018301595543704

`∩[A062505(n+1), A132240(n+1)]`
-/

namespace A132243.P6417018301595543704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132243.P6417018301595543704

namespace A132243

/-- `∩[A062505(n+1), A132240(n+1)]` -/
def P6417018301595543704.Spec : Prop :=
  ∀ n, (P6417018301595543704.a n : ℤ) = A132243 (n + 1)

end A132243

/-! ## A132243.P12878287819947630713

`∩[A062506(n+1), A132240(n+1)]`
-/

namespace A132243.P12878287819947630713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132243.P12878287819947630713

namespace A132243

/-- `∩[A062506(n+1), A132240(n+1)]` -/
def P12878287819947630713.Spec : Prop :=
  ∀ n, (P12878287819947630713.a n : ℤ) = A132243 (n + 1)

end A132243

/-! ## A132243.P9706147912930021298

`∩[A132240(n+1), A132247(n+1)]`
-/

namespace A132243.P9706147912930021298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132243.P9706147912930021298

namespace A132243

/-- `∩[A132240(n+1), A132247(n+1)]` -/
def P9706147912930021298.Spec : Prop :=
  ∀ n, (P9706147912930021298.a n : ℤ) = A132243 (n + 1)

end A132243

/-! ## A132243.P5753247843021586654

`∩[A132240(n+1), A171688(n+1)]`
-/

namespace A132243.P5753247843021586654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132243.P5753247843021586654

namespace A132243

/-- `∩[A132240(n+1), A171688(n+1)]` -/
def P5753247843021586654.Spec : Prop :=
  ∀ n, (P5753247843021586654.a n : ℤ) = A132243 (n + 1)

end A132243

/-! ## A132243.P5988287396175308227

`∩[A132240(n+1), A171821(n+1)]`
-/

namespace A132243.P5988287396175308227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132243.P5988287396175308227

namespace A132243

/-- `∩[A132240(n+1), A171821(n+1)]` -/
def P5988287396175308227.Spec : Prop :=
  ∀ n, (P5988287396175308227.a n : ℤ) = A132243 (n + 1)

end A132243

/-! ## A132243.P9538725708843101656

`∩[A132247(n+1), A175887(n+1)]`
-/

namespace A132243.P9538725708843101656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132243.P9538725708843101656

namespace A132243

/-- `∩[A132247(n+1), A175887(n+1)]` -/
def P9538725708843101656.Spec : Prop :=
  ∀ n, (P9538725708843101656.a n : ℤ) = A132243 (n + 1)

end A132243

/-!
# A132244: Twin primes congruent to {11, 13, 17, 19} mod 30.

The programs for A132244, there is no canonical definition to state claims against.
-/

/-! ## A132244.P4806530444036787119

`filter[A315369(n), A164292(#)]`
-/

namespace A132244.P4806530444036787119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132244.P4806530444036787119

/-! ## A132244.P15663624878887871240

`p?[A284599(p?[A315369(n)])]`
-/

namespace A132244.P15663624878887871240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315369 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132244.P15663624878887871240

/-! ## A132244.P9332214483231109923

`filter[A271367(n+1), A164292(#)]`
-/

namespace A132244.P9332214483231109923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132244.P9332214483231109923

/-! ## A132244.P16450833409582483707

`∩[A001097(n+1), A271367(n+1)]`
-/

namespace A132244.P16450833409582483707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132244.P16450833409582483707

/-! ## A132244.P1113956786631031456

`∩[A062505(n+1), A271367(n+1)]`
-/

namespace A132244.P1113956786631031456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132244.P1113956786631031456

/-!
# A132245: Twin primes congruent to {1, 11, 13, 29} mod 30.

The programs for A132245, there is no canonical definition to state claims against.
-/

/-! ## A132245.P9148398585194362143

`∪[A132241(n+1), A132243(n+1)]`
-/

namespace A132245.P9148398585194362143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132245.P9148398585194362143

/-! ## A132245.P15471556266552566578

`∩[A132247(n+1), A230462(n+1)-18]`
-/

namespace A132245.P15471556266552566578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1) - 18

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132245.P15471556266552566578

/-! ## A132245.P1905204839944754555

`filter[A392343(n+3), A164292(#)]`
-/

namespace A132245.P1905204839944754555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392343 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132245.P1905204839944754555

/-! ## A132245.P10116316006512739495

`p?[A241164(A130796(n+1))+1]`
-/

namespace A132245.P10116316006512739495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241164 (A130796 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132245.P10116316006512739495

/-! ## A132245.P5803584892558003104

`∩[A132247(n+1), A392343(n+1)]`
-/

namespace A132245.P5803584892558003104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132245.P5803584892558003104

/-!
# A132246: Twin primes congruent to {1, 17, 19, 29} mod 30.

The programs for A132246, there is no canonical definition to state claims against.
-/

/-! ## A132246.P14696216814967243594

`∪[A132242(n+1), A132243(n+1)]`
-/

namespace A132246.P14696216814967243594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132246.P14696216814967243594

/-! ## A132246.P373679366032630483

`∩[A132247(n+1), A230462(n+1)-12]`
-/

namespace A132246.P373679366032630483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1) - 12

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132246.P373679366032630483

/-! ## A132246.P3875744183347536450

`∪[A181606(n+1), A051698(A181606(n+1))]`
-/

namespace A132246.P3875744183347536450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A181606 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132246.P3875744183347536450

/-! ## A132246.P9225781841689233138

`∪[A132243(n+1), n%2+A282323(A008619(n))+n%2]`
-/

namespace A132246.P9225781841689233138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (A282323 (A008619 n).toNat + ((n % 2 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132246.P9225781841689233138

/-!
# A132247: Twin primes congruent to {1, 11, 13, 17, 19, 29} mod 30.

The programs for A132247, the canonical program `A132247.P15172244579046915172` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132247 has offset 1).

The definition of A132247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132247.P15172244579046915172

`A001097(n+4)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A132247

/-- `A001097(n+4)` -/
def P15172244579046915172.Spec : Prop :=
  ∀ n, P15172244579046915172.a n = A132247 (n + 1)

theorem P15172244579046915172.correct : P15172244579046915172.Spec := by
  intro n
  simp only [A132247, Nat.add_sub_cancel]

end A132247

/-! ## A132247.P9489234806228362621

`∪[A172057(n+2)-2, A172057(n+2)]`
-/

namespace A132247.P9489234806228362621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132247.P9489234806228362621

namespace A132247

/-- `∪[A172057(n+2)-2, A172057(n+2)]` -/
def P9489234806228362621.Spec : Prop :=
  ∀ n, (P9489234806228362621.a n : ℤ) = A132247 (n + 1)

end A132247

/-! ## A132247.P12550750134841737464

`∪[A001359(n+3)+2, A001359(n+3)]`
-/

namespace A132247.P12550750134841737464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 3) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132247.P12550750134841737464

namespace A132247

/-- `∪[A001359(n+3)+2, A001359(n+3)]` -/
def P12550750134841737464.Spec : Prop :=
  ∀ n, (P12550750134841737464.a n : ℤ) = A132247 (n + 1)

end A132247

/-! ## A132247.P11835961840035284133

`A171688(n+3)`
-/

namespace A132247.P11835961840035284133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 3)

end

end A132247.P11835961840035284133

namespace A132247

/-- `A171688(n+3)` -/
def P11835961840035284133.Spec : Prop :=
  ∀ n, P11835961840035284133.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P14128812196462249129

`A265760(n+4)`
-/

namespace A132247.P14128812196462249129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 4)

end

end A132247.P14128812196462249129

namespace A132247

/-- `A265760(n+4)` -/
def P14128812196462249129.Spec : Prop :=
  ∀ n, P14128812196462249129.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P697872041686391445

`Δ[A048598(n+3)]`
-/

namespace A132247.P697872041686391445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048598 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132247.P697872041686391445

namespace A132247

/-- `Δ[A048598(n+3)]` -/
def P697872041686391445.Spec : Prop :=
  ∀ n, P697872041686391445.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P1052858961327378920

`abs(Δ[A376890(n+3)])`
-/

namespace A132247.P1052858961327378920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376890 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A132247.P1052858961327378920

namespace A132247

/-- `abs(Δ[A376890(n+3)])` -/
def P1052858961327378920.Spec : Prop :=
  ∀ n, P1052858961327378920.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P5059941008687905755

`A048598(n+4)-A048598(n+3)`
-/

namespace A132247.P5059941008687905755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048598 (n + 4) - A048598 (n + 3)

end

end A132247.P5059941008687905755

namespace A132247

/-- `A048598(n+4)-A048598(n+3)` -/
def P5059941008687905755.Spec : Prop :=
  ∀ n, P5059941008687905755.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P13914368573410837772

`A077800(n+5)`
-/

namespace A132247.P13914368573410837772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 5)

end

end A132247.P13914368573410837772

namespace A132247

/-- `A077800(n+5)` -/
def P13914368573410837772.Spec : Prop :=
  ∀ n, P13914368573410837772.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P12351946904642325627

`A171821(n+5)`
-/

namespace A132247.P12351946904642325627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 5)

end

end A132247.P12351946904642325627

namespace A132247

/-- `A171821(n+5)` -/
def P12351946904642325627.Spec : Prop :=
  ∀ n, P12351946904642325627.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P1233469104072646801

`A099609(n+7)`
-/

namespace A132247.P1233469104072646801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (n + 7)

end

end A132247.P1233469104072646801

namespace A132247

/-- `A099609(n+7)` -/
def P1233469104072646801.Spec : Prop :=
  ∀ n, P1233469104072646801.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P1206843040538378632

`A000040(A334142(n+4))`
-/

namespace A132247.P1206843040538378632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A334142 (n + 4)).toNat

end

end A132247.P1206843040538378632

namespace A132247

/-- `A000040(A334142(n+4))` -/
def P1206843040538378632.Spec : Prop :=
  ∀ n, P1206843040538378632.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P11581353535396713064

`p?[A062505(n+5)]`
-/

namespace A132247.P11581353535396713064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132247.P11581353535396713064

namespace A132247

/-- `p?[A062505(n+5)]` -/
def P11581353535396713064.Spec : Prop :=
  ∀ n, P11581353535396713064.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P11300895890028955907

`record[A006530(A062505(n+6))]`
-/

namespace A132247.P11300895890028955907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062505 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132247.P11300895890028955907

namespace A132247

/-- `record[A006530(A062505(n+6))]` -/
def P11300895890028955907.Spec : Prop :=
  ∀ n, P11300895890028955907.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P12104069820926707569

`∩[A062505(n+1), A229947(n+1)]`
-/

namespace A132247.P12104069820926707569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132247.P12104069820926707569

namespace A132247

/-- `∩[A062505(n+1), A229947(n+1)]` -/
def P12104069820926707569.Spec : Prop :=
  ∀ n, (P12104069820926707569.a n : ℤ) = A132247 (n + 1)

end A132247

/-! ## A132247.P8276532242140253170

`record[A006530(A321644(n+3))]`
-/

namespace A132247.P8276532242140253170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A321644 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132247.P8276532242140253170

namespace A132247

/-- `record[A006530(A321644(n+3))]` -/
def P8276532242140253170.Spec : Prop :=
  ∀ n, P8276532242140253170.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P2007461576787848999

`A302042(A278972(n+4))`
-/

namespace A132247.P2007461576787848999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A278972 (n + 4)).toNat

end

end A132247.P2007461576787848999

namespace A132247

/-- `A302042(A278972(n+4))` -/
def P2007461576787848999.Spec : Prop :=
  ∀ n, P2007461576787848999.a n = A132247 (n + 1)

end A132247

/-! ## A132247.P2914110597345019095

`∩[A062506(n+1), A140461(n+1)]`
-/

namespace A132247.P2914110597345019095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132247.P2914110597345019095

namespace A132247

/-- `∩[A062506(n+1), A140461(n+1)]` -/
def P2914110597345019095.Spec : Prop :=
  ∀ n, (P2914110597345019095.a n : ℤ) = A132247 (n + 1)

end A132247

/-! ## A132247.P14707314752190232296

`∩[A062506(n+1), A229947(n+1)]`
-/

namespace A132247.P14707314752190232296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132247.P14707314752190232296

namespace A132247

/-- `∩[A062506(n+1), A229947(n+1)]` -/
def P14707314752190232296.Spec : Prop :=
  ∀ n, (P14707314752190232296.a n : ℤ) = A132247 (n + 1)

end A132247

/-! ## A132247.P9047345338461592259

`filter[A326494(n), A164292(#)]`
-/

namespace A132247.P9047345338461592259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132247.P9047345338461592259

namespace A132247

/-- `filter[A326494(n), A164292(#)]` -/
def P9047345338461592259.Spec : Prop :=
  ∀ n, P9047345338461592259.a n = A132247 (n + 1)

end A132247

/-!
# A132248: Isolated primes congruent to 1 (mod 30).

The programs for A132248, the canonical program `A132248.P9030196148284508513` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132248 has offset 1).

The definition of A132248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132248.P13812719414355771465

`∩[A007510(n+1), A128470(n)]`
-/

namespace A132248.P13812719414355771465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P13812719414355771465

namespace A132248

/-- `∩[A007510(n+1), A128470(n)]` -/
def P13812719414355771465.Spec : Prop :=
  ∀ n, (P13812719414355771465.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P9030196148284508513

`∩[A121764(n+1), A128470(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132248

/-- `∩[A121764(n+1), A128470(n)]` -/
def P9030196148284508513.Spec : Prop :=
  ∀ n, (P9030196148284508513.a n : ℤ) = A132248 (n + 1)

theorem P9030196148284508513.correct : P9030196148284508513.Spec := by
  intro n
  simp only [A132248, Nat.add_sub_cancel]

end A132248

/-! ## A132248.P16596853104608299395

`∩[A134100(n+1), A128470(n)]`
-/

namespace A132248.P16596853104608299395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P16596853104608299395

namespace A132248

/-- `∩[A134100(n+1), A128470(n)]` -/
def P16596853104608299395.Spec : Prop :=
  ∀ n, (P16596853104608299395.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P1932471452999866451

`∩[A134797(n+1), A128470(n)]`
-/

namespace A132248.P1932471452999866451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P1932471452999866451

namespace A132248

/-- `∩[A134797(n+1), A128470(n)]` -/
def P1932471452999866451.Spec : Prop :=
  ∀ n, (P1932471452999866451.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P13464048421968093115

`∩[A137869(n+1), A128470(n)]`
-/

namespace A132248.P13464048421968093115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P13464048421968093115

namespace A132248

/-- `∩[A137869(n+1), A128470(n)]` -/
def P13464048421968093115.Spec : Prop :=
  ∀ n, (P13464048421968093115.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P18041290127644467275

`∩[A167771(n+1), A128470(n)]`
-/

namespace A132248.P18041290127644467275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P18041290127644467275

namespace A132248

/-- `∩[A167771(n+1), A128470(n)]` -/
def P18041290127644467275.Spec : Prop :=
  ∀ n, (P18041290127644467275.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P2525368517941721614

`∩[A319673(n+1), A128470(n)]`
-/

namespace A132248.P2525368517941721614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P2525368517941721614

namespace A132248

/-- `∩[A319673(n+1), A128470(n)]` -/
def P2525368517941721614.Spec : Prop :=
  ∀ n, (P2525368517941721614.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P3260240153415472253

`∩[A004615(n+1), A121764(n+1)]`
-/

namespace A132248.P3260240153415472253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P3260240153415472253

namespace A132248

/-- `∩[A004615(n+1), A121764(n+1)]` -/
def P3260240153415472253.Spec : Prop :=
  ∀ n, (P3260240153415472253.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P12327339751305694387

`∩[A007510(n+1), A132230(n+1)]`
-/

namespace A132248.P12327339751305694387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P12327339751305694387

namespace A132248

/-- `∩[A007510(n+1), A132230(n+1)]` -/
def P12327339751305694387.Spec : Prop :=
  ∀ n, (P12327339751305694387.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P5960740331398171087

`∩[A030430(n+1), A121764(n+1)]`
-/

namespace A132248.P5960740331398171087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P5960740331398171087

namespace A132248

/-- `∩[A030430(n+1), A121764(n+1)]` -/
def P5960740331398171087.Spec : Prop :=
  ∀ n, (P5960740331398171087.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P13453901587789664616

`∩[A045453(n+1), A121764(n+1)]`
-/

namespace A132248.P13453901587789664616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P13453901587789664616

namespace A132248

/-- `∩[A045453(n+1), A121764(n+1)]` -/
def P13453901587789664616.Spec : Prop :=
  ∀ n, (P13453901587789664616.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P6738063529262849815

`∩[A051039(n+1), A121764(n+1)]`
-/

namespace A132248.P6738063529262849815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P6738063529262849815

namespace A132248

/-- `∩[A051039(n+1), A121764(n+1)]` -/
def P6738063529262849815.Spec : Prop :=
  ∀ n, (P6738063529262849815.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P8117136200721881307

`∩[A063118(n+1), A121764(n+1)]`
-/

namespace A132248.P8117136200721881307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P8117136200721881307

namespace A132248

/-- `∩[A063118(n+1), A121764(n+1)]` -/
def P8117136200721881307.Spec : Prop :=
  ∀ n, (P8117136200721881307.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P18215199200872178180

`∩[A051039(n+1), A134100(n+1)]`
-/

namespace A132248.P18215199200872178180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P18215199200872178180

namespace A132248

/-- `∩[A051039(n+1), A134100(n+1)]` -/
def P18215199200872178180.Spec : Prop :=
  ∀ n, (P18215199200872178180.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P12987878356979280759

`∩[A051039(n+1), A134797(n+1)]`
-/

namespace A132248.P12987878356979280759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P12987878356979280759

namespace A132248

/-- `∩[A051039(n+1), A134797(n+1)]` -/
def P12987878356979280759.Spec : Prop :=
  ∀ n, (P12987878356979280759.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P1953614046951935042

`∩[A051039(n+1), A137869(n+1)]`
-/

namespace A132248.P1953614046951935042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P1953614046951935042

namespace A132248

/-- `∩[A051039(n+1), A137869(n+1)]` -/
def P1953614046951935042.Spec : Prop :=
  ∀ n, (P1953614046951935042.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P10923770487911141387

`∩[A090756(n+1), A121764(n+1)]`
-/

namespace A132248.P10923770487911141387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P10923770487911141387

namespace A132248

/-- `∩[A090756(n+1), A121764(n+1)]` -/
def P10923770487911141387.Spec : Prop :=
  ∀ n, (P10923770487911141387.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P13489253908245656371

`∩[A121764(n+1), A132230(n+1)]`
-/

namespace A132248.P13489253908245656371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P13489253908245656371

namespace A132248

/-- `∩[A121764(n+1), A132230(n+1)]` -/
def P13489253908245656371.Spec : Prop :=
  ∀ n, (P13489253908245656371.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P16345233751109185111

`∩[A121764(n+1), A132240(n+1)]`
-/

namespace A132248.P16345233751109185111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P16345233751109185111

namespace A132248

/-- `∩[A121764(n+1), A132240(n+1)]` -/
def P16345233751109185111.Spec : Prop :=
  ∀ n, (P16345233751109185111.a n : ℤ) = A132248 (n + 1)

end A132248

/-! ## A132248.P5079829299555707966

`∩[A132230(n+1), A134100(n+1)]`
-/

namespace A132248.P5079829299555707966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132248.P5079829299555707966

namespace A132248

/-- `∩[A132230(n+1), A134100(n+1)]` -/
def P5079829299555707966.Spec : Prop :=
  ∀ n, (P5079829299555707966.a n : ℤ) = A132248 (n + 1)

end A132248

/-!
# A132249: Isolated primes congruent to 11 (mod 30).

The programs for A132249, there is no canonical definition to state claims against.
-/

/-! ## A132249.P2344845356121011873

`p?[A175856(A257645(n))+3]`
-/

namespace A132249.P2344845356121011873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175856 (A257645 n).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132249.P2344845356121011873

/-! ## A132249.P8221265770320371147

`filter[A121762(n+1), A185705(#)]`
-/

namespace A132249.P8221265770320371147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A132249.P8221265770320371147

/-! ## A132249.P2480881763452635924

`filter[A132232(n+1), A283265(#)]`
-/

namespace A132249.P2480881763452635924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A132249.P2480881763452635924

/-! ## A132249.P14548981423422096113

`filter[A132232(n+1), A379238(#)]`
-/

namespace A132249.P14548981423422096113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A132249.P14548981423422096113

/-! ## A132249.P5297940745641285608

`∩[A007510(n+1), A128467(n)]`
-/

namespace A132249.P5297940745641285608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132249.P5297940745641285608

/-!
# A132250: Isolated primes congruent to 13 (mod 30).

The programs for A132250, there is no canonical definition to state claims against.
-/

/-! ## A132250.P5959814549629456850

`∩[floor(10*n/3), A121764(n+1)]`
-/

namespace A132250.P5959814549629456850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * ((n : ℚ) / 3)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132250.P5959814549629456850

/-! ## A132250.P4663517242156358917

`p?[A073830(A314981(2*n))]`
-/

namespace A132250.P4663517242156358917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073830 (A314981 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132250.P4663517242156358917

/-! ## A132250.P9337255635964950077

`p?[A073830(3*A016885(n))]`
-/

namespace A132250.P9337255635964950077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073830 (3 * A016885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132250.P9337255635964950077

/-! ## A132250.P13542921110143724807

`p?[A073830(3*A017305(n))]`
-/

namespace A132250.P13542921110143724807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073830 (3 * A017305 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132250.P13542921110143724807

/-! ## A132250.P5440779582636161099

`filter[A121764(n+1), A185706(#)]`
-/

namespace A132250.P5440779582636161099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A132250.P5440779582636161099

/-!
# A132251: Isolated primes congruent to 17 (mod 30).

The programs for A132251, there is no canonical definition to state claims against.
-/

/-! ## A132251.P5673623337904181532

`∩[3*5*n+2, A134797(n+1)]`
-/

namespace A132251.P5673623337904181532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (5 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132251.P5673623337904181532

/-! ## A132251.P4342592466709316898

`p?[A014683(A156376(n))-2]`
-/

namespace A132251.P4342592466709316898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A156376 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132251.P4342592466709316898

/-! ## A132251.P9060332265407114216

`filter[A132255(n+1), A080846(#)]`
-/

namespace A132251.P9060332265407114216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A132251.P9060332265407114216

/-! ## A132251.P974467003110856742

`filter[A132255(n+1), A131532(#)]`
-/

namespace A132251.P974467003110856742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131532 (f1 j).toNat = 1) n)

end

end A132251.P974467003110856742

/-! ## A132251.P15602495509638980102

`filter[A132255(n+1), A131735(#)]`
-/

namespace A132251.P15602495509638980102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131735 (f1 j).toNat = 1) n)

end

end A132251.P15602495509638980102

/-!
# A132252: Isolated primes congruent to 19 (mod 30).

The programs for A132252, the canonical program `A132252.P10549027381406986059` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132252 has offset 1).

The definition of A132252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132252.P10549027381406986059

`∩[30*n+19, A121764(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132252

/-- `∩[30*n+19, A121764(n+1)]` -/
def P10549027381406986059.Spec : Prop :=
  ∀ n, (P10549027381406986059.a n : ℤ) = A132252 (n + 1)

theorem P10549027381406986059.correct : P10549027381406986059.Spec := by
  intro n
  simp only [A132252, Nat.add_sub_cancel]

end A132252

/-! ## A132252.P948786817523855169

`∩[A007510(n+1), A156376(n)]`
-/

namespace A132252.P948786817523855169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P948786817523855169

namespace A132252

/-- `∩[A007510(n+1), A156376(n)]` -/
def P948786817523855169.Spec : Prop :=
  ∀ n, (P948786817523855169.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P3873910485575760063

`∩[A121764(n+1), A156376(n)]`
-/

namespace A132252.P3873910485575760063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P3873910485575760063

namespace A132252

/-- `∩[A121764(n+1), A156376(n)]` -/
def P3873910485575760063.Spec : Prop :=
  ∀ n, (P3873910485575760063.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P7931444783114704282

`∩[A134100(n+1), A156376(n)]`
-/

namespace A132252.P7931444783114704282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P7931444783114704282

namespace A132252

/-- `∩[A134100(n+1), A156376(n)]` -/
def P7931444783114704282.Spec : Prop :=
  ∀ n, (P7931444783114704282.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P17503052668704652518

`∩[A134797(n+1), A156376(n)]`
-/

namespace A132252.P17503052668704652518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P17503052668704652518

namespace A132252

/-- `∩[A134797(n+1), A156376(n)]` -/
def P17503052668704652518.Spec : Prop :=
  ∀ n, (P17503052668704652518.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P17924222784440289084

`∩[A319673(n+1), A156376(n)]`
-/

namespace A132252.P17924222784440289084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P17924222784440289084

namespace A132252

/-- `∩[A319673(n+1), A156376(n)]` -/
def P17924222784440289084.Spec : Prop :=
  ∀ n, (P17924222784440289084.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P1476521967265763893

`∩[A007510(n+1), A132234(n+1)]`
-/

namespace A132252.P1476521967265763893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P1476521967265763893

namespace A132252

/-- `∩[A007510(n+1), A132234(n+1)]` -/
def P1476521967265763893.Spec : Prop :=
  ∀ n, (P1476521967265763893.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P8189239610999567899

`∩[A121764(n+1), A132234(n+1)]`
-/

namespace A132252.P8189239610999567899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P8189239610999567899

namespace A132252

/-- `∩[A121764(n+1), A132234(n+1)]` -/
def P8189239610999567899.Spec : Prop :=
  ∀ n, (P8189239610999567899.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P16681880219885534162

`∩[A121764(n+1), A132239(n+1)]`
-/

namespace A132252.P16681880219885534162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P16681880219885534162

namespace A132252

/-- `∩[A121764(n+1), A132239(n+1)]` -/
def P16681880219885534162.Spec : Prop :=
  ∀ n, (P16681880219885534162.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P4962850253466770243

`∩[A121764(n+1), A140506(n+1)]`
-/

namespace A132252.P4962850253466770243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P4962850253466770243

namespace A132252

/-- `∩[A121764(n+1), A140506(n+1)]` -/
def P4962850253466770243.Spec : Prop :=
  ∀ n, (P4962850253466770243.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P4765511723518031915

`∩[A007510(n+1), A255413(n+1)]`
-/

namespace A132252.P4765511723518031915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P4765511723518031915

namespace A132252

/-- `∩[A007510(n+1), A255413(n+1)]` -/
def P4765511723518031915.Spec : Prop :=
  ∀ n, (P4765511723518031915.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P9021963416326001251

`∩[A132234(n+1), A134100(n+1)]`
-/

namespace A132252.P9021963416326001251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P9021963416326001251

namespace A132252

/-- `∩[A132234(n+1), A134100(n+1)]` -/
def P9021963416326001251.Spec : Prop :=
  ∀ n, (P9021963416326001251.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P15635251671445436117

`∩[A132234(n+1), A134797(n+1)]`
-/

namespace A132252.P15635251671445436117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P15635251671445436117

namespace A132252

/-- `∩[A132234(n+1), A134797(n+1)]` -/
def P15635251671445436117.Spec : Prop :=
  ∀ n, (P15635251671445436117.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P12742951635858546289

`∩[A121764(n+1), A255413(n+1)]`
-/

namespace A132252.P12742951635858546289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P12742951635858546289

namespace A132252

/-- `∩[A121764(n+1), A255413(n+1)]` -/
def P12742951635858546289.Spec : Prop :=
  ∀ n, (P12742951635858546289.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P17900790082868707550

`∩[A134100(n+1), A255413(n+1)]`
-/

namespace A132252.P17900790082868707550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P17900790082868707550

namespace A132252

/-- `∩[A134100(n+1), A255413(n+1)]` -/
def P17900790082868707550.Spec : Prop :=
  ∀ n, (P17900790082868707550.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P17365537499246723510

`∩[A134797(n+1), A255413(n+1)]`
-/

namespace A132252.P17365537499246723510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P17365537499246723510

namespace A132252

/-- `∩[A134797(n+1), A255413(n+1)]` -/
def P17365537499246723510.Spec : Prop :=
  ∀ n, (P17365537499246723510.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P10285863275343385567

`∩[A121764(n+1), A327753(n+1)]`
-/

namespace A132252.P10285863275343385567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P10285863275343385567

namespace A132252

/-- `∩[A121764(n+1), A327753(n+1)]` -/
def P10285863275343385567.Spec : Prop :=
  ∀ n, (P10285863275343385567.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P17078252497070261760

`∩[A132234(n+1), A319673(n+1)]`
-/

namespace A132252.P17078252497070261760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P17078252497070261760

namespace A132252

/-- `∩[A132234(n+1), A319673(n+1)]` -/
def P17078252497070261760.Spec : Prop :=
  ∀ n, (P17078252497070261760.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P17870223467104301098

`∩[A255413(n+1), A319673(n+1)]`
-/

namespace A132252.P17870223467104301098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P17870223467104301098

namespace A132252

/-- `∩[A255413(n+1), A319673(n+1)]` -/
def P17870223467104301098.Spec : Prop :=
  ∀ n, (P17870223467104301098.a n : ℤ) = A132252 (n + 1)

end A132252

/-! ## A132252.P5356611482422439911

`∩[A025584(n+1), A156376(n)]`
-/

namespace A132252.P5356611482422439911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132252.P5356611482422439911

namespace A132252

/-- `∩[A025584(n+1), A156376(n)]` -/
def P5356611482422439911.Spec : Prop :=
  ∀ n, (P5356611482422439911.a n : ℤ) = A132252 (n + 1)

end A132252

/-!
# A132253: Isolated primes congruent to 29 (mod 30).

The programs for A132253, the canonical program `A132253.P4766283954835838953` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132253 has offset 1).

The definition of A132253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132253.P16298533895242370039

`∩[A007510(n+1), A257645(n)]`
-/

namespace A132253.P16298533895242370039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P16298533895242370039

namespace A132253

/-- `∩[A007510(n+1), A257645(n)]` -/
def P16298533895242370039.Spec : Prop :=
  ∀ n, (P16298533895242370039.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P4766283954835838953

`∩[A083370(n+1), A257645(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A132253

/-- `∩[A083370(n+1), A257645(n)]` -/
def P4766283954835838953.Spec : Prop :=
  ∀ n, (P4766283954835838953.a n : ℤ) = A132253 (n + 1)

theorem P4766283954835838953.correct : P4766283954835838953.Spec := by
  intro n
  simp only [A132253, Nat.add_sub_cancel]

end A132253

/-! ## A132253.P17813973974680276922

`∩[A083371(n+1), A257645(n)]`
-/

namespace A132253.P17813973974680276922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P17813973974680276922

namespace A132253

/-- `∩[A083371(n+1), A257645(n)]` -/
def P17813973974680276922.Spec : Prop :=
  ∀ n, (P17813973974680276922.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P15070746593563870866

`∩[A121762(n+1), A257645(n)]`
-/

namespace A132253.P15070746593563870866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P15070746593563870866

namespace A132253

/-- `∩[A121762(n+1), A257645(n)]` -/
def P15070746593563870866.Spec : Prop :=
  ∀ n, (P15070746593563870866.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P9106458019425111035

`∩[A134797(n+1), A257645(n)]`
-/

namespace A132253.P9106458019425111035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P9106458019425111035

namespace A132253

/-- `∩[A134797(n+1), A257645(n)]` -/
def P9106458019425111035.Spec : Prop :=
  ∀ n, (P9106458019425111035.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P15897624050897106005

`∩[A137869(n+1), A257645(n)]`
-/

namespace A132253.P15897624050897106005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P15897624050897106005

namespace A132253

/-- `∩[A137869(n+1), A257645(n)]` -/
def P15897624050897106005.Spec : Prop :=
  ∀ n, (P15897624050897106005.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P14487308559803261566

`∩[A167771(n+1), A257645(n)]`
-/

namespace A132253.P14487308559803261566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P14487308559803261566

namespace A132253

/-- `∩[A167771(n+1), A257645(n)]` -/
def P14487308559803261566.Spec : Prop :=
  ∀ n, (P14487308559803261566.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P15605228649848817670

`∩[A004618(n+1), A121762(n+1)]`
-/

namespace A132253.P15605228649848817670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P15605228649848817670

namespace A132253

/-- `∩[A004618(n+1), A121762(n+1)]` -/
def P15605228649848817670.Spec : Prop :=
  ∀ n, (P15605228649848817670.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P16538023081376842614

`∩[A007510(n+1), A132236(n+1)]`
-/

namespace A132253.P16538023081376842614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P16538023081376842614

namespace A132253

/-- `∩[A007510(n+1), A132236(n+1)]` -/
def P16538023081376842614.Spec : Prop :=
  ∀ n, (P16538023081376842614.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P6243281178087244066

`∩[A030433(n+1), A121762(n+1)]`
-/

namespace A132253.P6243281178087244066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P6243281178087244066

namespace A132253

/-- `∩[A030433(n+1), A121762(n+1)]` -/
def P6243281178087244066.Spec : Prop :=
  ∀ n, (P6243281178087244066.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P2501791068577385159

`∩[A045457(n+1), A121762(n+1)]`
-/

namespace A132253.P2501791068577385159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P2501791068577385159

namespace A132253

/-- `∩[A045457(n+1), A121762(n+1)]` -/
def P2501791068577385159.Spec : Prop :=
  ∀ n, (P2501791068577385159.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P6579219534297144886

`∩[A083370(n+1), A132236(n+1)]`
-/

namespace A132253.P6579219534297144886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P6579219534297144886

namespace A132253

/-- `∩[A083370(n+1), A132236(n+1)]` -/
def P6579219534297144886.Spec : Prop :=
  ∀ n, (P6579219534297144886.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P2941043767289987527

`∩[A083371(n+1), A132236(n+1)]`
-/

namespace A132253.P2941043767289987527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P2941043767289987527

namespace A132253

/-- `∩[A083371(n+1), A132236(n+1)]` -/
def P2941043767289987527.Spec : Prop :=
  ∀ n, (P2941043767289987527.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P3007749290982098470

`∩[A121762(n+1), A132236(n+1)]`
-/

namespace A132253.P3007749290982098470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P3007749290982098470

namespace A132253

/-- `∩[A121762(n+1), A132236(n+1)]` -/
def P3007749290982098470.Spec : Prop :=
  ∀ n, (P3007749290982098470.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P17869269332585203782

`∩[A121762(n+1), A132240(n+1)]`
-/

namespace A132253.P17869269332585203782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P17869269332585203782

namespace A132253

/-- `∩[A121762(n+1), A132240(n+1)]` -/
def P17869269332585203782.Spec : Prop :=
  ∀ n, (P17869269332585203782.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P14943112624659371372

`∩[A132236(n+1), A134797(n+1)]`
-/

namespace A132253.P14943112624659371372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P14943112624659371372

namespace A132253

/-- `∩[A132236(n+1), A134797(n+1)]` -/
def P14943112624659371372.Spec : Prop :=
  ∀ n, (P14943112624659371372.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P7399095846732871207

`∩[A132236(n+1), A137869(n+1)]`
-/

namespace A132253.P7399095846732871207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P7399095846732871207

namespace A132253

/-- `∩[A132236(n+1), A137869(n+1)]` -/
def P7399095846732871207.Spec : Prop :=
  ∀ n, (P7399095846732871207.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P9037758962761910325

`∩[A132236(n+1), A167771(n+1)]`
-/

namespace A132253.P9037758962761910325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P9037758962761910325

namespace A132253

/-- `∩[A132236(n+1), A167771(n+1)]` -/
def P9037758962761910325.Spec : Prop :=
  ∀ n, (P9037758962761910325.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P8492146726806727725

`∩[A121762(n+1), A327753(n+1)]`
-/

namespace A132253.P8492146726806727725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P8492146726806727725

namespace A132253

/-- `∩[A121762(n+1), A327753(n+1)]` -/
def P8492146726806727725.Spec : Prop :=
  ∀ n, (P8492146726806727725.a n : ℤ) = A132253 (n + 1)

end A132253

/-! ## A132253.P17236131840055358985

`∩[A007510(n+1), A128470(n)-2]`
-/

namespace A132253.P17236131840055358985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P17236131840055358985

namespace A132253

/-- `∩[A007510(n+1), A128470(n)-2]` -/
def P17236131840055358985.Spec : Prop :=
  ∀ n, (P17236131840055358985.a n : ℤ) = A132253 (n + 1)

end A132253

/-!
# A132254: Isolated primes congruent to {11, 13} mod 30.

The programs for A132254, there is no canonical definition to state claims against.
-/

/-! ## A132254.P16588120782315066056

`filter[A132238(n+1), A283265(#)]`
-/

namespace A132254.P16588120782315066056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A132254.P16588120782315066056

/-! ## A132254.P15685807452442410297

`∩[A007510(n+1), A132238(n+1)]`
-/

namespace A132254.P15685807452442410297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132254.P15685807452442410297

/-! ## A132254.P11988376412985015851

`∩[A062729(n+1), A132238(n+1)]`
-/

namespace A132254.P11988376412985015851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132254.P11988376412985015851

/-! ## A132254.P10685253319431534302

`∩[A101938(n+1), A132238(n+1)]`
-/

namespace A132254.P10685253319431534302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132254.P10685253319431534302

/-! ## A132254.P15700733504946265335

`∩[A110673(n+1), A132238(n+1)]`
-/

namespace A132254.P15700733504946265335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132254.P15700733504946265335

/-!
# A132255: Isolated primes congruent to {17, 19} mod 30.

The programs for A132255, the canonical program `A132255.P14005809028749772227` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132255 has offset 1).

The definition of A132255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132255.P14005809028749772227

`filter[A132239(n+1), A283265(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132255

/-- `filter[A132239(n+1), A283265(#)]` -/
def P14005809028749772227.Spec : Prop :=
  ∀ n, P14005809028749772227.a n = A132255 (n + 1)

theorem P14005809028749772227.correct : P14005809028749772227.Spec := by
  intro n
  simp only [A132255, Nat.add_sub_cancel]

end A132255

/-! ## A132255.P18434887879187394975

`∩[A007510(n+1), A132239(n+1)]`
-/

namespace A132255.P18434887879187394975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132255.P18434887879187394975

namespace A132255

/-- `∩[A007510(n+1), A132239(n+1)]` -/
def P18434887879187394975.Spec : Prop :=
  ∀ n, (P18434887879187394975.a n : ℤ) = A132255 (n + 1)

end A132255

/-! ## A132255.P17271072608973109587

`∩[A132239(n+1), A134797(n+1)]`
-/

namespace A132255.P17271072608973109587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132255.P17271072608973109587

namespace A132255

/-- `∩[A132239(n+1), A134797(n+1)]` -/
def P17271072608973109587.Spec : Prop :=
  ∀ n, (P17271072608973109587.a n : ℤ) = A132255 (n + 1)

end A132255

/-! ## A132255.P12931191924790609085

`∩[A132239(n+1), A167706(n+1)]`
-/

namespace A132255.P12931191924790609085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132255.P12931191924790609085

namespace A132255

/-- `∩[A132239(n+1), A167706(n+1)]` -/
def P12931191924790609085.Spec : Prop :=
  ∀ n, (P12931191924790609085.a n : ℤ) = A132255 (n + 1)

end A132255

/-! ## A132255.P4516849066405455245

`∩[A062729(n+1), A132239(n+1)]`
-/

namespace A132255.P4516849066405455245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132255.P4516849066405455245

namespace A132255

/-- `∩[A062729(n+1), A132239(n+1)]` -/
def P4516849066405455245.Spec : Prop :=
  ∀ n, (P4516849066405455245.a n : ℤ) = A132255 (n + 1)

end A132255

/-! ## A132255.P16398117630891930844

`∩[A110673(n+1), A132239(n+1)]`
-/

namespace A132255.P16398117630891930844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132255.P16398117630891930844

namespace A132255

/-- `∩[A110673(n+1), A132239(n+1)]` -/
def P16398117630891930844.Spec : Prop :=
  ∀ n, (P16398117630891930844.a n : ℤ) = A132255 (n + 1)

end A132255

/-! ## A132255.P8857345875698635340

`∩[A132239(n+1), A132259(n+1)]`
-/

namespace A132255.P8857345875698635340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132255.P8857345875698635340

namespace A132255

/-- `∩[A132239(n+1), A132259(n+1)]` -/
def P8857345875698635340.Spec : Prop :=
  ∀ n, (P8857345875698635340.a n : ℤ) = A132255 (n + 1)

end A132255

/-! ## A132255.P8898504320056780212

`∩[A132239(n+1), A396571(n+1)]`
-/

namespace A132255.P8898504320056780212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132255.P8898504320056780212

namespace A132255

/-- `∩[A132239(n+1), A396571(n+1)]` -/
def P8898504320056780212.Spec : Prop :=
  ∀ n, (P8898504320056780212.a n : ℤ) = A132255 (n + 1)

end A132255

/-! ## A132255.P5361378335184000321

`∩[A132239(n+1), A255763(n+1)]`
-/

namespace A132255.P5361378335184000321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132255.P5361378335184000321

namespace A132255

/-- `∩[A132239(n+1), A255763(n+1)]` -/
def P5361378335184000321.Spec : Prop :=
  ∀ n, (P5361378335184000321.a n : ℤ) = A132255 (n + 1)

end A132255

/-! ## A132255.P18082714449614504240

`∩[A132259(n+1), A271367(n+1)]`
-/

namespace A132255.P18082714449614504240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132255.P18082714449614504240

namespace A132255

/-- `∩[A132259(n+1), A271367(n+1)]` -/
def P18082714449614504240.Spec : Prop :=
  ∀ n, (P18082714449614504240.a n : ℤ) = A132255 (n + 1)

end A132255

/-!
# A132256: Isolated primes congruent to {1, 29} mod 30.

The programs for A132256, there is no canonical definition to state claims against.
-/

/-! ## A132256.P7330573992746803884

`filter[A132240(n+1), A283265(#)]`
-/

namespace A132256.P7330573992746803884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A132256.P7330573992746803884

/-! ## A132256.P13699733715214373624

`∩[A007510(n+1), A132240(n+1)]`
-/

namespace A132256.P13699733715214373624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132256.P13699733715214373624

/-! ## A132256.P1401361110151231252

`∩[A007510(n+1), A175887(n+1)]`
-/

namespace A132256.P1401361110151231252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132256.P1401361110151231252

/-! ## A132256.P13665392005880443670

`∩[A062729(n+1), A132240(n+1)]`
-/

namespace A132256.P13665392005880443670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132256.P13665392005880443670

/-! ## A132256.P13476413497708901014

`∩[A110673(n+1), A132240(n+1)]`
-/

namespace A132256.P13476413497708901014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132256.P13476413497708901014

/-!
# A132257: Isolated primes congruent to {11, 13, 17, 19} mod 30.

The programs for A132257, there is no canonical definition to state claims against.
-/

/-! ## A132257.P16341104571162368885

`filter[A271367(n+1), A283265(#)]`
-/

namespace A132257.P16341104571162368885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A132257.P16341104571162368885

/-! ## A132257.P6308720568759738223

`∩[A007510(n+1), A271367(n+1)]`
-/

namespace A132257.P6308720568759738223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132257.P6308720568759738223

/-! ## A132257.P12370113112747786319

`∩[A062729(n+1), A271367(n+1)]`
-/

namespace A132257.P12370113112747786319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132257.P12370113112747786319

/-! ## A132257.P4713055077308868930

`∩[A110673(n+1), A271367(n+1)]`
-/

namespace A132257.P4713055077308868930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132257.P4713055077308868930

/-! ## A132257.P9692872912491814603

`∩[A134797(n+1), A271367(n+1)]`
-/

namespace A132257.P9692872912491814603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132257.P9692872912491814603

/-!
# A132258: Isolated primes congruent to {1, 11, 13, 29} mod 30.

The programs for A132258, there is no canonical definition to state claims against.
-/

/-! ## A132258.P13346447414298296008

`∪[A132254(n+1), A132256(n+1)]`
-/

namespace A132258.P13346447414298296008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132258.P13346447414298296008

/-!
# A132259: Isolated primes congruent to {1, 17, 19, 29} mod 30.

The programs for A132259, there is no canonical definition to state claims against.
-/

/-! ## A132259.P6093480341214281600

`∪[A132255(n+1), A132256(n+1)]`
-/

namespace A132259.P6093480341214281600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132259.P6093480341214281600

/-!
# A132261: Main diagonal of array in A132260.

The programs for A132261, there is no canonical definition to state claims against.
-/

/-! ## A132261.P10166780284287227880

`A132260(∑[4*n]+3)`
-/

namespace A132261.P10166780284287227880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132260 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A132261.P10166780284287227880

/-!
# A132262: First term in a sum partition of the even-indexed Fibonacci numbers.

The programs for A132262, there is no canonical definition to state claims against.
-/

/-! ## A132262.P14831715339597291649

`A089324(2*n)`
-/

namespace A132262.P14831715339597291649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089324 (2 * n)

end

end A132262.P14831715339597291649

/-! ## A132262.P335520219318281536

`record[A089324(A005131(n))]`
-/

namespace A132262.P335520219318281536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089324 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132262.P335520219318281536

/-! ## A132262.P12533967088357152889

`record[A089324(A028242(A098180(n)))]`
-/

namespace A132262.P12533967088357152889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089324 (A028242 (A098180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132262.P12533967088357152889

/-! ## A132262.P11517927244315600632

`record[A089324(A004524(A145979(n)))]`
-/

namespace A132262.P11517927244315600632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089324 (A004524 (A145979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132262.P11517927244315600632

/-! ## A132262.P1064348814832907072

`A177011(∑[n])`
-/

namespace A132262.P1064348814832907072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177011 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132262.P1064348814832907072

/-! ## A132262.P3256768859408853158

`record[A177011(n)]`
-/

namespace A132262.P3256768859408853158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132262.P3256768859408853158

/-! ## A132262.P14343265772619891672

`A106585(n*(n+2))`
-/

namespace A132262.P14343265772619891672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106585 (n * (n + 2))

end

end A132262.P14343265772619891672

/-!
# A132263: Product{0<=k<=floor(log_11(n)), floor(n/11^k)}, n>=1.

The programs for A132263, the canonical program `A132263.P2883832374283352006` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132263 has offset 1).

The definition of A132263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132263.P2883832374283352006

`(n+1)*a(floor((n+1)/11)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9, a(9)=10`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132263

/-- `(n+1)*a(floor((n+1)/11)-1)` -/
def P2883832374283352006.Spec : Prop :=
  ∀ n, (P2883832374283352006.a n : ℤ) = A132263 (n + 1)

theorem P2883832374283352006.correct : P2883832374283352006.Spec := by
  intro n
  simp only [A132263, Nat.add_sub_cancel]

end A132263

/-! ## A132263.P15300631585697694833

`(n+1)*A083230(A085880(n))`
-/

namespace A132263.P15300631585697694833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083230 (A085880 n).toNat

end

end A132263.P15300631585697694833

namespace A132263

/-- `(n+1)*A083230(A085880(n))` -/
def P15300631585697694833.Spec : Prop :=
  ∀ n, P15300631585697694833.a n = A132263 (n + 1)

end A132263

/-! ## A132263.P15944541978142666076

`floor(∑[A001222(n+3)]/(n+1))*A238628(2*n+3)`
-/

namespace A132263.P15944541978142666076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋ * A238628 (2 * n + 3)

end

end A132263.P15944541978142666076

namespace A132263

/-- `floor(∑[A001222(n+3)]/(n+1))*A238628(2*n+3)` -/
def P15944541978142666076.Spec : Prop :=
  ∀ n, P15944541978142666076.a n = A132263 (n + 1)

end A132263

/-! ## A132263.P12131213623122534672

`(∑[A010054(A051992(2*n+3))]+1)*(n+1)`
-/

namespace A132263.P12131213623122534672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A051992 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1 : ℤ)

end

end A132263.P12131213623122534672

namespace A132263

/-- `(∑[A010054(A051992(2*n+3))]+1)*(n+1)` -/
def P12131213623122534672.Spec : Prop :=
  ∀ n, P12131213623122534672.a n = A132263 (n + 1)

end A132263

/-! ## A132263.P6296342051639004177

`(n+1)*A331984(A303172(A279222(n+1)))`
-/

namespace A132263.P6296342051639004177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A331984 (A303172 (A279222 (n + 1)).toNat).toNat

end

end A132263.P6296342051639004177

namespace A132263

/-- `(n+1)*A331984(A303172(A279222(n+1)))` -/
def P6296342051639004177.Spec : Prop :=
  ∀ n, P6296342051639004177.a n = A132263 (n + 1)

end A132263

/-!
# A132264: Product{0<=k<=floor(log_12(n)), floor(n/12^k)}, n>=1.

The programs for A132264, there is no canonical definition to state claims against.
-/

/-! ## A132264.P12278692163125068789

`(n+1)*A104763(A151982(2*n+1))`
-/

namespace A132264.P12278692163125068789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A104763 (A151982 (2 * n + 1)).toNat

end

end A132264.P12278692163125068789

/-! ## A132264.P10701323629997626832

`(n+1)*A228936(A217155(n+1))`
-/

namespace A132264.P10701323629997626832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A228936 (A217155 (n + 1)).toNat

end

end A132264.P10701323629997626832

/-! ## A132264.P16522568536716722528

`(n+1)*A072411(A072411(A276086(n+1)))`
-/

namespace A132264.P16522568536716722528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072411 (A072411 (A276086 (n + 1)).toNat).toNat

end

end A132264.P16522568536716722528

/-! ## A132264.P9668259748871778446

`(n+1)*A004216(A232185(n+1))`
-/

namespace A132264.P9668259748871778446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004216 (A232185 (n + 1)).toNat

end

end A132264.P9668259748871778446

/-! ## A132264.P12972486438904913197

`(A289242(A270613(n+1)+A024675(2*(n+2)))+1)*(n+1)`
-/

namespace A132264.P12972486438904913197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A289242 (A270613 (n + 1) + A024675 (2 * (n + 2))).toNat + 1) * (n + 1 : ℤ)

end

end A132264.P12972486438904913197

/-!
# A132269: a(n) = Product_{k>=0} (1 + floor(n/2^k)).

The programs for A132269, the canonical program `A132269.P13077775541224739303` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132269 has offset 0).

The definition of A132269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132269.P13077775541224739303

`(1+n)*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132269

/-- `(1+n)*a(floor(n/2))` -/
def P13077775541224739303.Spec : Prop :=
  ∀ n, (P13077775541224739303.a n : ℤ) = A132269 n

theorem P13077775541224739303.correct : P13077775541224739303.Spec := by
  intro n
  simp only [A132269]

end A132269

/-! ## A132269.P9879888332348321897

`(n+1)/a(floor(n/2))^(-1)` with `a(0)=1`
-/

namespace A132269.P9879888332348321897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a ⌊(n : ℚ) / 2⌋.toNat ^ (-1 : ℤ)

end

end A132269.P9879888332348321897

namespace A132269

/-- `(n+1)/a(floor(n/2))^(-1)` -/
def P9879888332348321897.Spec : Prop :=
  ∀ n, P9879888332348321897.a n = (A132269 n : ℚ)

end A132269

/-! ## A132269.P17733193884083085488

`a(A004526(n))*(n+1)` with `a(0)=1`
-/

namespace A132269.P17733193884083085488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * (n + 1)

end

end A132269.P17733193884083085488

namespace A132269

/-- `a(A004526(n))*(n+1)` -/
def P17733193884083085488.Spec : Prop :=
  ∀ n, (P17733193884083085488.a n : ℤ) = A132269 n

end A132269

/-! ## A132269.P15127047001931657905

`a(A123108(n))*(n+1)` with `a(0)=1`
-/

namespace A132269.P15127047001931657905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A123108 n).toNat * (n + 1)

end

end A132269.P15127047001931657905

namespace A132269

/-- `a(A123108(n))*(n+1)` -/
def P15127047001931657905.Spec : Prop :=
  ∀ n, (P15127047001931657905.a n : ℤ) = A132269 n

end A132269

/-! ## A132269.P3820562284646867444

`∏{d}[A053644(n+1), ceil((n+1)/#)]`
-/

namespace A132269.P3820562284646867444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ⌈(n + 1 : ℚ) / (d : ℚ)⌉

end

end A132269.P3820562284646867444

namespace A132269

/-- `∏{d}[A053644(n+1), ceil((n+1)/#)]` -/
def P3820562284646867444.Spec : Prop :=
  ∀ n, P3820562284646867444.a n = A132269 n

end A132269

/-! ## A132269.P7846625801369885288

`a(floor(n/2))*A008619(2*n)` with `a(0)=1`
-/

namespace A132269.P7846625801369885288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A008619 (2 * n)

end

end A132269.P7846625801369885288

namespace A132269

/-- `a(floor(n/2))*A008619(2*n)` -/
def P7846625801369885288.Spec : Prop :=
  ∀ n, P7846625801369885288.a n = A132269 n

end A132269

/-! ## A132269.P14778179765566696219

`a(floor(n/2))*A052938(2*n)` with `a(0)=1`
-/

namespace A132269.P14778179765566696219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A052938 (2 * n)

end

end A132269.P14778179765566696219

namespace A132269

/-- `a(floor(n/2))*A052938(2*n)` -/
def P14778179765566696219.Spec : Prop :=
  ∀ n, P14778179765566696219.a n = A132269 n

end A132269

/-! ## A132269.P5968588030139399458

`a(A002265(2*n))*(n+1)` with `a(0)=1`
-/

namespace A132269.P5968588030139399458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A002265 (2 * n)).toNat * (n + 1)

end

end A132269.P5968588030139399458

namespace A132269

/-- `a(A002265(2*n))*(n+1)` -/
def P5968588030139399458.Spec : Prop :=
  ∀ n, (P5968588030139399458.a n : ℤ) = A132269 n

end A132269

/-! ## A132269.P4807156762738632812

`a(A124072(2*n))*(n+1)` with `a(0)=1`
-/

namespace A132269.P4807156762738632812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A124072 (2 * n)).toNat * (n + 1)

end

end A132269.P4807156762738632812

namespace A132269

/-- `a(A124072(2*n))*(n+1)` -/
def P4807156762738632812.Spec : Prop :=
  ∀ n, (P4807156762738632812.a n : ℤ) = A132269 n

end A132269

/-! ## A132269.P16558294368212489588

`a(floor(n/2))*A027656(2*n)` with `a(0)=1`
-/

namespace A132269.P16558294368212489588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A027656 (2 * n)

end

end A132269.P16558294368212489588

namespace A132269

/-- `a(floor(n/2))*A027656(2*n)` -/
def P16558294368212489588.Spec : Prop :=
  ∀ n, P16558294368212489588.a n = A132269 n

end A132269

/-! ## A132269.P4139257082011982807

`a(floor(n/2))*A028242(2*n)` with `a(0)=1`
-/

namespace A132269.P4139257082011982807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A028242 (2 * n)

end

end A132269.P4139257082011982807

namespace A132269

/-- `a(floor(n/2))*A028242(2*n)` -/
def P4139257082011982807.Spec : Prop :=
  ∀ n, P4139257082011982807.a n = A132269 n

end A132269

/-! ## A132269.P10532865594290771252

`a(floor(n/2))*A266285(2*n)` with `a(0)=1`
-/

namespace A132269.P10532865594290771252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A266285 (2 * n)

end

end A132269.P10532865594290771252

namespace A132269

/-- `a(floor(n/2))*A266285(2*n)` -/
def P10532865594290771252.Spec : Prop :=
  ∀ n, P10532865594290771252.a n = A132269 n

end A132269

/-! ## A132269.P11364587122801853500

`a(floor(n/2))*A065033(Δ[n²])` with `a(0)=1`
-/

namespace A132269.P11364587122801853500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A065033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A132269.P11364587122801853500

namespace A132269

/-- `a(floor(n/2))*A065033(Δ[n²])` -/
def P11364587122801853500.Spec : Prop :=
  ∀ n, P11364587122801853500.a n = A132269 n

end A132269

/-! ## A132269.P9414488563592631842

`a(floor(n/2))*A185452(A103517(n))` with `a(0)=1`
-/

namespace A132269.P9414488563592631842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A185452 (A103517 n).toNat

end

end A132269.P9414488563592631842

namespace A132269

/-- `a(floor(n/2))*A185452(A103517(n))` -/
def P9414488563592631842.Spec : Prop :=
  ∀ n, P9414488563592631842.a n = A132269 n

end A132269

/-! ## A132269.P17891149759425859740

`a(floor(n/2))*A000463(A005408(n))` with `a(0)=1, a(1)=2`
-/

namespace A132269.P17891149759425859740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A000463 (A005408 n).toNat

end

end A132269.P17891149759425859740

namespace A132269

/-- `a(floor(n/2))*A000463(A005408(n))` -/
def P17891149759425859740.Spec : Prop :=
  ∀ n, P17891149759425859740.a n = A132269 n

end A132269

/-! ## A132269.P3676939478754647456

`a(floor(n/2))*A008611(3*n)` with `a(0)=1, a(1)=2`
-/

namespace A132269.P3676939478754647456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A008611 (3 * n)

end

end A132269.P3676939478754647456

namespace A132269

/-- `a(floor(n/2))*A008611(3*n)` -/
def P3676939478754647456.Spec : Prop :=
  ∀ n, P3676939478754647456.a n = A132269 n

end A132269

/-! ## A132269.P6970622401391968945

`a(val(2^n, 4))*(n+1)` with `a(0)=1`
-/

namespace A132269.P6970622401391968945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.valuation (2 ^ n) 4) * (n + 1)

end

end A132269.P6970622401391968945

namespace A132269

/-- `a(val(2^n, 4))*(n+1)` -/
def P6970622401391968945.Spec : Prop :=
  ∀ n, (P6970622401391968945.a n : ℤ) = A132269 n

end A132269

/-!
# A132270: a(n) = floor((n^7-1)/(7*n^6)), which is the same as integers repeated 7 times.

The programs for A132270, the canonical program `A132270.P1857906466798765000` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132270 has offset 1).

The definition of A132270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(((n+1)^7-1)/(7*(n+1)^6))` (program `A132270.P1857906466798765000`, by `A132270.P1857906466798765000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132270.P11060957738525610115

`floor(n/7)`
-/

namespace A132270.P11060957738525610115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 7⌋

end

end A132270.P11060957738525610115

namespace A132270

/-- `floor(n/7)` -/
def P11060957738525610115.Spec : Prop :=
  ∀ n, P11060957738525610115.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P1857906466798765000

`floor(((n+1)^7-1)/(7*(n+1)^6))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132270

/-- `floor(((n+1)^7-1)/(7*(n+1)^6))` -/
def P1857906466798765000.Spec : Prop :=
  ∀ n, P1857906466798765000.a n = A132270 (n + 1)

theorem P1857906466798765000.correct : P1857906466798765000.Spec := by
  intro n
  simp only [A132270, Nat.add_sub_cancel]

end A132270

/-! ## A132270.P14600821162200116773

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=1`
-/

namespace A132270.P14600821162200116773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 1] fun n a =>
  a (n - 1) + a (n - 7) - a (n - 8)

end

end A132270.P14600821162200116773

namespace A132270

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P14600821162200116773.Spec : Prop :=
  ∀ n, P14600821162200116773.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P1548695789062826964

`comp[or(7, n)]-n`
-/

namespace A132270.P1548695789062826964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A132270.P1548695789062826964

namespace A132270

/-- `comp[or(7, n)]-n` -/
def P1548695789062826964.Spec : Prop :=
  ∀ n, P1548695789062826964.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P15931209608019734021

`∑[∑{p}[n, val(#, 7)]]`
-/

namespace A132270.P15931209608019734021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132270.P15931209608019734021

namespace A132270

/-- `∑[∑{p}[n, val(#, 7)]]` -/
def P15931209608019734021.Spec : Prop :=
  ∀ n, (P15931209608019734021.a n : ℤ) = A132270 (n + 1)

end A132270

/-! ## A132270.P1839137551351771232

`∑[val(∏{p}[n, #], 7)]`
-/

namespace A132270.P1839137551351771232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132270.P1839137551351771232

namespace A132270

/-- `∑[val(∏{p}[n, #], 7)]` -/
def P1839137551351771232.Spec : Prop :=
  ∀ n, (P1839137551351771232.a n : ℤ) = A132270 (n + 1)

end A132270

/-! ## A132270.P5150102029968537351

`(n-n%7)/7`
-/

namespace A132270.P5150102029968537351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 7 : ℕ) : ℤ) : ℚ) / 7

end

end A132270.P5150102029968537351

namespace A132270

/-- `(n-n%7)/7` -/
def P5150102029968537351.Spec : Prop :=
  ∀ n, P5150102029968537351.a n = (A132270 (n + 1) : ℚ)

end A132270

/-! ## A132270.P9824265034034042111

`round(cos(2)+n/7)`
-/

namespace A132270.P9824265034034042111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n : ℚ) / 7 : ℝ))

end

end A132270.P9824265034034042111

namespace A132270

/-- `round(cos(2)+n/7)` -/
def P9824265034034042111.Spec : Prop :=
  ∀ n, P9824265034034042111.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P16067751381825577008

`ceil(cos(3)+n/7)`
-/

namespace A132270.P16067751381825577008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + ((n : ℚ) / 7 : ℝ)⌉

end

end A132270.P16067751381825577008

namespace A132270

/-- `ceil(cos(3)+n/7)` -/
def P16067751381825577008.Spec : Prop :=
  ∀ n, P16067751381825577008.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P13818083546822049354

`ceil(n/7-sin(2))`
-/

namespace A132270.P13818083546822049354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 7 : ℝ) - Real.sin (2 : ℝ)⌉

end

end A132270.P13818083546822049354

namespace A132270

/-- `ceil(n/7-sin(2))` -/
def P13818083546822049354.Spec : Prop :=
  ∀ n, P13818083546822049354.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P2574359099845000854

`ceil(sin(5)+n/7)`
-/

namespace A132270.P2574359099845000854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (5 : ℝ) + ((n : ℚ) / 7 : ℝ)⌉

end

end A132270.P2574359099845000854

namespace A132270

/-- `ceil(sin(5)+n/7)` -/
def P2574359099845000854.Spec : Prop :=
  ∀ n, P2574359099845000854.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P3840393601608956056

`ceil(n/7-cos(6))`
-/

namespace A132270.P3840393601608956056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 7 : ℝ) - Real.cos (6 : ℝ)⌉

end

end A132270.P3840393601608956056

namespace A132270

/-- `ceil(n/7-cos(6))` -/
def P3840393601608956056.Spec : Prop :=
  ∀ n, P3840393601608956056.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P8528474670827660414

`round((tan(5)+n)/7)`
-/

namespace A132270.P8528474670827660414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (5 : ℝ) + (n : ℝ)) / 7)

end

end A132270.P8528474670827660414

namespace A132270

/-- `round((tan(5)+n)/7)` -/
def P8528474670827660414.Spec : Prop :=
  ∀ n, P8528474670827660414.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P4105336847205639589

`∑[char[lcm(7, n+1)]]`
-/

namespace A132270.P4105336847205639589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 7 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132270.P4105336847205639589

namespace A132270

/-- `∑[char[lcm(7, n+1)]]` -/
def P4105336847205639589.Spec : Prop :=
  ∀ n, (P4105336847205639589.a n : ℤ) = A132270 (n + 1)

end A132270

/-! ## A132270.P4604310000100689184

`ceil((tan(8)+n)/7)`
-/

namespace A132270.P4604310000100689184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tan (8 : ℝ) + (n : ℝ)) / 7⌉

end

end A132270.P4604310000100689184

namespace A132270

/-- `ceil((tan(8)+n)/7)` -/
def P4604310000100689184.Spec : Prop :=
  ∀ n, P4604310000100689184.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P3775535418741278966

`ceil(n/7-tan(7))`
-/

namespace A132270.P3775535418741278966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 7 : ℝ) - Real.tan (7 : ℝ)⌉

end

end A132270.P3775535418741278966

namespace A132270

/-- `ceil(n/7-tan(7))` -/
def P3775535418741278966.Spec : Prop :=
  ∀ n, P3775535418741278966.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P10977324901311069793

`ceil(n/7-tanh(2))`
-/

namespace A132270.P10977324901311069793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 7 : ℝ) - Real.tanh (2 : ℝ)⌉

end

end A132270.P10977324901311069793

namespace A132270

/-- `ceil(n/7-tanh(2))` -/
def P10977324901311069793.Spec : Prop :=
  ∀ n, P10977324901311069793.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P16685257834560537337

`round(n/7-sin(9))`
-/

namespace A132270.P16685257834560537337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 7 : ℝ) - Real.sin (9 : ℝ))

end

end A132270.P16685257834560537337

namespace A132270

/-- `round(n/7-sin(9))` -/
def P16685257834560537337.Spec : Prop :=
  ∀ n, P16685257834560537337.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P12269894020562792605

`round(n/7-acot(2))`
-/

namespace A132270.P12269894020562792605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 7 : ℝ) - SequenceMachineLib.acot (2 : ℝ))

end

end A132270.P12269894020562792605

namespace A132270

/-- `round(n/7-acot(2))` -/
def P12269894020562792605.Spec : Prop :=
  ∀ n, P12269894020562792605.a n = A132270 (n + 1)

end A132270

/-! ## A132270.P2721551925501921011

`ceil(n/7-cot(4))`
-/

namespace A132270.P2721551925501921011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 7 : ℝ) - Real.cot (4 : ℝ)⌉

end

end A132270.P2721551925501921011

namespace A132270

/-- `ceil(n/7-cot(4))` -/
def P2721551925501921011.Spec : Prop :=
  ∀ n, P2721551925501921011.a n = A132270 (n + 1)

end A132270

/-!
# A132271: Product{k>=0, 1+floor(n/10^k)}.

The programs for A132271, the canonical program `A132271.P1297607260340109210` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132271 has offset 0).

The definition of A132271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132271.P10629177492900138429

`(1+n)*A132272(n)`
-/

namespace A132271.P10629177492900138429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A132272 n

end

end A132271.P10629177492900138429

namespace A132271

/-- `(1+n)*A132272(n)` -/
def P10629177492900138429.Spec : Prop :=
  ∀ n, P10629177492900138429.a n = A132271 n

end A132271

/-! ## A132271.P1297607260340109210

`a(floor(n/10))*(1+n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132271

/-- `a(floor(n/10))*(1+n)` -/
def P1297607260340109210.Spec : Prop :=
  ∀ n, (P1297607260340109210.a n : ℤ) = A132271 n

theorem P1297607260340109210.correct : P1297607260340109210.Spec := by
  intro n
  simp only [A132271]

end A132271

/-! ## A132271.P9424481653493920255

`(n+1)*a(ceil((n-9)/10))` with `a(0)=1`
-/

namespace A132271.P9424481653493920255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a ⌈((n : ℤ) - 9 : ℚ) / 10⌉.toNat

end

end A132271.P9424481653493920255

namespace A132271

/-- `(n+1)*a(ceil((n-9)/10))` -/
def P9424481653493920255.Spec : Prop :=
  ∀ n, (P9424481653493920255.a n : ℤ) = A132271 n

end A132271

/-! ## A132271.P2978546372796803413

`(n+1)*abs(a(A059995(n)))` with `a(0)=1`
-/

namespace A132271.P2978546372796803413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A059995 n).toNat

end

end A132271.P2978546372796803413

namespace A132271

/-- `(n+1)*abs(a(A059995(n)))` -/
def P2978546372796803413.Spec : Prop :=
  ∀ n, (P2978546372796803413.a n : ℤ) = A132271 n

end A132271

/-! ## A132271.P2688544729913417766

`A132272(10*n)`
-/

namespace A132271.P2688544729913417766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132272 (10 * n)

end

end A132271.P2688544729913417766

namespace A132271

/-- `A132272(10*n)` -/
def P2688544729913417766.Spec : Prop :=
  ∀ n, P2688544729913417766.a n = A132271 n

end A132271

/-! ## A132271.P17177610579848315192

`(n+1)*∑[A014029(n²)]`
-/

namespace A132271.P17177610579848315192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132271.P17177610579848315192

namespace A132271

/-- `(n+1)*∑[A014029(n²)]` -/
def P17177610579848315192.Spec : Prop :=
  ∀ n, P17177610579848315192.a n = A132271 n

end A132271

/-! ## A132271.P7912233262671808378

`∑[1-A168184(n²)]*A028310(n+1)`
-/

namespace A132271.P7912233262671808378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A168184 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A028310 (n + 1)

end

end A132271.P7912233262671808378

namespace A132271

/-- `∑[1-A168184(n²)]*A028310(n+1)` -/
def P7912233262671808378.Spec : Prop :=
  ∀ n, P7912233262671808378.a n = A132271 n

end A132271

/-! ## A132271.P13087017374686297948

`A137735(A028552(n))*A179051(n)`
-/

namespace A132271.P13087017374686297948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A028552 n).toNat * A179051 n

end

end A132271.P13087017374686297948

namespace A132271

/-- `A137735(A028552(n))*A179051(n)` -/
def P13087017374686297948.Spec : Prop :=
  ∀ n, P13087017374686297948.a n = A132271 n

end A132271

/-! ## A132271.P10551554238080585707

`(n+1)*A000030(A073731(n))`
-/

namespace A132271.P10551554238080585707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000030 (A073731 (n + 10)).toNat

end

end A132271.P10551554238080585707

namespace A132271

/-- `(n+1)*A000030(A073731(n))` -/
def P10551554238080585707.Spec : Prop :=
  ∀ n, P10551554238080585707.a n = A132271 n

end A132271

/-!
# A132272: a(n) = Product_{k>0} (1 + floor(n/10^k)).

The programs for A132272, the canonical program `A132272.P13181892007694707197` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132272 has offset 0).

The definition of A132272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132271, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132272.P13181892007694707197

`A132271(n)/(1+n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132272

/-- `A132271(n)/(1+n)` -/
def P13181892007694707197.Spec : Prop :=
  ∀ n, P13181892007694707197.a n = (A132272 n : ℚ)

end A132272

/-! ## A132272.P2174286609004657307

`A132271(floor(n/10))`
-/

namespace A132272.P2174286609004657307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132271 ⌊(n : ℚ) / 10⌋.toNat

end

end A132272.P2174286609004657307

namespace A132272

/-- `A132271(floor(n/10))` -/
def P2174286609004657307.Spec : Prop :=
  ∀ n, P2174286609004657307.a n = A132272 n

end A132272

/-! ## A132272.P7362892948970932560

`A359781(A000040(n+1))+A132271(A059995(n))`
-/

namespace A132272.P7362892948970932560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359781 (A000040 (n + 1)).toNat + A132271 (A059995 n).toNat

end

end A132272.P7362892948970932560

namespace A132272

/-- `A359781(A000040(n+1))+A132271(A059995(n))` -/
def P7362892948970932560.Spec : Prop :=
  ∀ n, P7362892948970932560.a n = A132272 n

end A132272

/-! ## A132272.P7084063398456040174

`gcd(A132271(n), A132271(A059995(n)))`
-/

namespace A132272.P7084063398456040174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132271 n) (A132271 (A059995 n).toNat)

end

end A132272.P7084063398456040174

namespace A132272

/-- `gcd(A132271(n), A132271(A059995(n)))` -/
def P7084063398456040174.Spec : Prop :=
  ∀ n, (P7084063398456040174.a n : ℤ) = A132272 n

end A132272

/-! ## A132272.P2426667116167801198

`A049077(2*n+3)*A132271(A059995(n))`
-/

namespace A132272.P2426667116167801198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * n + 3) * A132271 (A059995 n).toNat

end

end A132272.P2426667116167801198

namespace A132272

/-- `A049077(2*n+3)*A132271(A059995(n))` -/
def P2426667116167801198.Spec : Prop :=
  ∀ n, P2426667116167801198.a n = A132272 n

end A132272

/-! ## A132272.P2695599049124502696

`comp[98-11*n]+1-n`
-/

namespace A132272.P2695599049124502696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A132272.P2695599049124502696

namespace A132272

/-- `comp[98-11*n]+1-n` -/
def P2695599049124502696.Spec : Prop :=
  ∀ n, P2695599049124502696.a n = A132272 n

end A132272

/-! ## A132272.P5168733038254336009

`∑[A014029(n²)]`
-/

namespace A132272.P5168733038254336009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132272.P5168733038254336009

namespace A132272

/-- `∑[A014029(n²)]` -/
def P5168733038254336009.Spec : Prop :=
  ∀ n, P5168733038254336009.a n = A132272 n

end A132272

/-! ## A132272.P4999566746685238069

`A001222(3^A226233(n+1))`
-/

namespace A132272.P4999566746685238069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A226233 (n + 1) : ℤ))).toNat

end

end A132272.P4999566746685238069

namespace A132272

/-- `A001222(3^A226233(n+1))` -/
def P4999566746685238069.Spec : Prop :=
  ∀ n, P4999566746685238069.a n = A132272 n

end A132272

/-! ## A132272.P8213458745205310742

`A179051(n)%A382912(A179051(3*n+2))`
-/

namespace A132272.P8213458745205310742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179051 n) (A382912 (A179051 (3 * n + 2)).toNat)

end

end A132272.P8213458745205310742

namespace A132272

/-- `A179051(n)%A382912(A179051(3*n+2))` -/
def P8213458745205310742.Spec : Prop :=
  ∀ n, P8213458745205310742.a n = A132272 n

end A132272

/-! ## A132272.P8433569592252757607

`A179051(n)%A224050(A248792(n+1))`
-/

namespace A132272.P8433569592252757607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179051 n) (A224050 (A248792 (n + 1)).toNat)

end

end A132272.P8433569592252757607

namespace A132272

/-- `A179051(n)%A224050(A248792(n+1))` -/
def P8433569592252757607.Spec : Prop :=
  ∀ n, P8433569592252757607.a n = A132272 n

end A132272

/-!
# A132273: a(n) = Sum{k=1..n} (k-th integer from among those positive integers that are coprime to (n+1-k)).

The programs for A132273, there is no canonical definition to state claims against.
-/

/-! ## A132273.P16756645564253559687

`A038124(A000124(n))-A249738(n+1)`
-/

namespace A132273.P16756645564253559687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038124 (A000124 n).toNat - A249738 (n + 1)

end

end A132273.P16756645564253559687

/-! ## A132273.P14917943354069742652

`A338331(∑[∑{d}[n, #]]+1)+n`
-/

namespace A132273.P14917943354069742652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ)

end

end A132273.P14917943354069742652

/-! ## A132273.P8882289683694919424

`A338555(A091369(n+1))`
-/

namespace A132273.P8882289683694919424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338555 (A091369 (n + 1)).toNat

end

end A132273.P8882289683694919424

/-! ## A132273.P15191364891760980955

`A338331(A160664(n))+n`
-/

namespace A132273.P15191364891760980955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A160664 n).toNat + (n : ℤ)

end

end A132273.P15191364891760980955

/-! ## A132273.P11311257649526033816

`A049599(A000244(n))+n²`
-/

namespace A132273.P11311257649526033816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (A000244 n).toNat + (n ^ 2 : ℤ)

end

end A132273.P11311257649526033816

/-!
# A132275: a(1)=1. a(n+1) = sum{k=1 to n} (a(k)th integer from among those positive integers which are coprime to a(n+1-k)).

The programs for A132275, there is no canonical definition to state claims against.
-/

/-! ## A132275.P12679395441055432997

`A081753(4*A018111(n))`
-/

namespace A132275.P12679395441055432997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (4 * A018111 n).toNat

end

end A132275.P12679395441055432997

/-! ## A132275.P11910987684838412223

`A081753(4*A018112(n))`
-/

namespace A132275.P11910987684838412223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (4 * A018112 n).toNat

end

end A132275.P11910987684838412223

/-! ## A132275.P4431850913020721622

`A008620(A018111(n*A055642(n)))`
-/

namespace A132275.P4431850913020721622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A018111 ((n : ℤ) * A055642 n).toNat).toNat

end

end A132275.P4431850913020721622

/-! ## A132275.P14371589958727410038

`A008620(A018112(n*A055642(n)))`
-/

namespace A132275.P14371589958727410038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A018112 ((n : ℤ) * A055642 n).toNat).toNat

end

end A132275.P14371589958727410038

/-! ## A132275.P3156505616416282810

`A008620(A018112(n*A136400(n)))`
-/

namespace A132275.P3156505616416282810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A018112 ((n : ℤ) * A136400 n).toNat).toNat

end

end A132275.P3156505616416282810

/-!
# A132276: Triangle read by rows: T(n,k) is the number of paths in the first quadrant from (0,0) to (n,k), consisting of steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0) (0<=k<=n).

The programs for A132276, there is no canonical definition to state claims against.
-/

/-! ## A132276.P18092212854333017349

`A059397(∑[2*n]%comp[∑[n]])`
-/

namespace A132276.P18092212854333017349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059397 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A132276.P18092212854333017349

/-! ## A132276.P15571866701017732658

`A059397(∑[char[∑[n]]]²-n-1)`
-/

namespace A132276.P15571866701017732658
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059397 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A132276.P15571866701017732658

/-! ## A132276.P12321745145349007681

`or(char[1], A059397(A061579(n)))`
-/

namespace A132276.P12321745145349007681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A059397 (A061579 n).toNat)

end

end A132276.P12321745145349007681

/-! ## A132276.P12228870939331056159

`gcd(A000038(n), A059397(A061579(n)))`
-/

namespace A132276.P12228870939331056159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A059397 (A061579 n).toNat)

end

end A132276.P12228870939331056159

/-! ## A132276.P8614187351805702809

`lcm(A033999(n), A059397(A061579(n)))`
-/

namespace A132276.P8614187351805702809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A059397 (A061579 n).toNat)

end

end A132276.P8614187351805702809

/-! ## A132276.P13509021517046821312

`A059397(A061579(n))%(A000045(n+2)+1)`
-/

namespace A132276.P13509021517046821312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059397 (A061579 n).toNat) (A000045 (n + 2) + 1)

end

end A132276.P13509021517046821312

/-! ## A132276.P6030382755831442999

`A007318(∑[n])*A059397(A061579(n))`
-/

namespace A132276.P6030382755831442999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A059397 (A061579 n).toNat

end

end A132276.P6030382755831442999

/-!
# A132277: Triangle read by rows: T(n,k) is number of paths in the first quadrant from (0,0) to (n,0) using steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0), having exactly k h-steps.

The programs for A132277, there is no canonical definition to state claims against.
-/

/-! ## A132277.P16204985280898886029

`A167151(A166357(n)%A059802(n+1))`
-/

namespace A132277.P16204985280898886029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (Int.tmod (A166357 n) (A059802 (n + 1))).toNat

end

end A132277.P16204985280898886029

/-! ## A132277.P14514063997901880102

`A167151(A166357(n))%A132846(n+2)`
-/

namespace A132277.P14514063997901880102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167151 (A166357 n).toNat) (A132846 (n + 2))

end

end A132277.P14514063997901880102

/-! ## A132277.P6845881418574798244

`A004233(2^A166357(n))`
-/

namespace A132277.P6845881418574798244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A166357 n : ℤ))).toNat

end

end A132277.P6845881418574798244

/-! ## A132277.P2243948198818981572

`A001222(ceil(2^A202847(n)))`
-/

namespace A132277.P2243948198818981572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(2 : ℚ) ^ (A202847 n : ℤ)⌉.toNat

end

end A132277.P2243948198818981572

/-! ## A132277.P3003884280991476560

`∑{d}[A059419(n+1), A050176(#)]`
-/

namespace A132277.P3003884280991476560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050176 d

end

end A132277.P3003884280991476560

/-!
# A132278: Number of distinct terms in rows 1 through n of the triangle of the Narayana numbers (A001263).

The programs for A132278, there is no canonical definition to state claims against.
-/

/-! ## A132278.P1168648711006229881

`floor((n/a(n-1)+1)*a(n-1)-n/2)` with `a(0)=1`
-/

namespace A132278.P1168648711006229881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n : ℚ) / (a (n - 1) : ℚ) + 1) * (a (n - 1) : ℚ) - (n : ℚ) / 2⌋

end

end A132278.P1168648711006229881

/-! ## A132278.P11062888318638073278

`floor(A014910(A007918(n))+(n/2)²)`
-/

namespace A132278.P11062888318638073278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014910 (A007918 n).toNat : ℚ) + ((n : ℚ) / 2) ^ 2⌋

end

end A132278.P11062888318638073278

/-! ## A132278.P9124751705640892264

`A015826(A000201(n+1))+floor((n/2)²)`
-/

namespace A132278.P9124751705640892264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015826 (A000201 (n + 1)).toNat + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A132278.P9124751705640892264

/-! ## A132278.P6055903946373135953

`A015826(A005117(n+1)+1)+floor((n/2)²)`
-/

namespace A132278.P6055903946373135953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015826 (A005117 (n + 1) + 1).toNat + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A132278.P6055903946373135953

/-! ## A132278.P12912030820974780484

`A014910(A007918(n))+A002620(n)`
-/

namespace A132278.P12912030820974780484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014910 (A007918 n).toNat + A002620 n

end

end A132278.P12912030820974780484

/-! ## A132278.P14391733941369636906

`A014620(A052928(n))+A002620(n)`
-/

namespace A132278.P14391733941369636906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014620 (A052928 n).toNat + A002620 n

end

end A132278.P14391733941369636906

/-! ## A132278.P648812087611593977

`A014620(A120613(n+1))+A002620(n)`
-/

namespace A132278.P648812087611593977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014620 (A120613 (n + 1)).toNat + A002620 n

end

end A132278.P648812087611593977

/-! ## A132278.P1241313489734844552

`A014620(A120613(n+1))+∑[A004526(n)]`
-/

namespace A132278.P1241313489734844552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014620 (A120613 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132278.P1241313489734844552

/-! ## A132278.P10385977985795701179

`∑[A123108(n)-A025468(A226628(n+1))]`
-/

namespace A132278.P10385977985795701179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n - A025468 (A226628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132278.P10385977985795701179

/-!
# A132280: Triangle read by rows: T(n,k) is the number of paths in the first quadrant from (0,0) to (n,0), consisting of steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0), having k H steps (0<=k<=floor(n/2)).

The programs for A132280, there is no canonical definition to state claims against.
-/

/-! ## A132280.P551350248517965149

`A091869(A056536(n+1))`
-/

namespace A132280.P551350248517965149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091869 (A056536 (n + 1)).toNat

end

end A132280.P551350248517965149

/-! ## A132280.P15511157576935304031

`A091869(A091018(n)+1)`
-/

namespace A132280.P15511157576935304031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091869 (A091018 n + 1).toNat

end

end A132280.P15511157576935304031

/-! ## A132280.P15381483730230430159

`A001006(A082375(n))*A007318(A056536(n+1)-1)`
-/

namespace A132280.P15381483730230430159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A082375 n).toNat * A007318 (A056536 (n + 1) - 1).toNat

end

end A132280.P15381483730230430159

/-!
# A132281: Noncomposites in A067200. Noncomposites (0, 1) and primes p such that A084380(p) = p^3 + 2 is prime.

The programs for A132281, there is no canonical definition to state claims against.
-/

/-! ## A132281.P5109565384047525465

`∪[A048637(n+1), A335839(n+1)]`
-/

namespace A132281.P5109565384047525465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132281.P5109565384047525465

/-! ## A132281.P13805057609553815255

`∩[A067200(n+1), A158611(n+1)]`
-/

namespace A132281.P13805057609553815255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132281.P13805057609553815255

/-! ## A132281.P927666413617554281

`∩[A067200(n+1), A383300(n+1)]`
-/

namespace A132281.P927666413617554281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132281.P927666413617554281

/-! ## A132281.P8109707562098563686

`record[A048637(A344180(n))%A283909(n)]`
-/

namespace A132281.P8109707562098563686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048637 (A344180 n).toNat) (A283909 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132281.P8109707562098563686

/-! ## A132281.P9359868907531447166

`eq[A035363(A121842(n)), A210442(n)]`
-/

namespace A132281.P9359868907531447166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A121842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132281.P9359868907531447166

/-! ## A132281.P73587162509425472

`eq[A053204(n)*A121842(n), A053204(n)²]`
-/

namespace A132281.P73587162509425472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n * A121842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132281.P73587162509425472

/-! ## A132281.P2623792115797177211

`eq[A121842(n)%A007444(n+1), A053204(n)]`
-/

namespace A132281.P2623792115797177211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121842 n) (A007444 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132281.P2623792115797177211

/-!
# A132282: Near-cube primes: primes of the form p^3 + 2, where p is noncomposite.

The programs for A132282, there is no canonical definition to state claims against.
-/

/-! ## A132282.P5719636655527303049

`A132281(n+1)^3+2`
-/

namespace A132282.P5719636655527303049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 1) ^ 3 + 2

end

end A132282.P5719636655527303049

/-! ## A132282.P9734183224846592700

`A084380(A132281(n+1))`
-/

namespace A132282.P9734183224846592700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084380 (A132281 (n + 1)).toNat

end

end A132282.P9734183224846592700

/-! ## A132282.P2640392955364072928

`A034324(A132281(n+1)+2)`
-/

namespace A132282.P2640392955364072928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034324 (A132281 (n + 1) + 2).toNat

end

end A132282.P2640392955364072928

/-! ## A132282.P2117037418899592141

`or(A000035(n), A014220(A132281(n+1)))`
-/

namespace A132282.P2117037418899592141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A014220 (A132281 (n + 1)).toNat)

end

end A132282.P2117037418899592141

/-! ## A132282.P17360805040809332337

`or(A014220(A132281(n+1)), A057427(n))`
-/

namespace A132282.P17360805040809332337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014220 (A132281 (n + 1)).toNat) (A057427 n)

end

end A132282.P17360805040809332337

/-!
# A132283: Normalization of dense fractal sequence A054065 (defined from fractional parts {n*phi}, where phi = golden ratio).

The programs for A132283, there is no canonical definition to state claims against.
-/

/-! ## A132283.P5812418173940865291

`A084532(lt[A092437(n), A163358(n)])`
-/

namespace A132283.P5812418173940865291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132283.P5812418173940865291

/-! ## A132283.P5719180487410704541

`A084532(lt[A092437(n), A302846(n)])`
-/

namespace A132283.P5719180487410704541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132283.P5719180487410704541

/-! ## A132283.P9723664850847356382

`A001842(7*A054901(n+1))`
-/

namespace A132283.P9723664850847356382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (7 * A054901 (n + 1)).toNat

end

end A132283.P9723664850847356382

/-! ## A132283.P8772958243782092073

`A035196(7*A054901(n+1))`
-/

namespace A132283.P8772958243782092073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035196 (7 * A054901 (n + 1)).toNat

end

end A132283.P8772958243782092073

/-! ## A132283.P957123948387429644

`A001227(A001316(n+3)*A054901(n+1))`
-/

namespace A132283.P957123948387429644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A001316 (n + 3) * A054901 (n + 1)).toNat

end

end A132283.P957123948387429644

/-!
# A132284: Interspersion associated with A132283, by antidiagonals.

The programs for A132284, there is no canonical definition to state claims against.
-/

/-! ## A132284.P2612003100921414930

`A194977(A194969(n+1))%p?[A000025(n)]`
-/

namespace A132284.P2612003100921414930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194977 (A194969 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A132284.P2612003100921414930

/-! ## A132284.P17372089032208280561

`A000265(2^n)*A194977(A194969(n+1))`
-/

namespace A132284.P17372089032208280561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 ^ n) * A194977 (A194969 (n + 1)).toNat

end

end A132284.P17372089032208280561

/-! ## A132284.P7999718185674492160

`A194977(A194969(n+1)%A078859(n+1))`
-/

namespace A132284.P7999718185674492160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194977 (Int.tmod (A194969 (n + 1)) (A078859 (n + 1))).toNat

end

end A132284.P7999718185674492160

/-! ## A132284.P5618387703414852046

`A001222(A127874(n+1))*A194977(A194969(n+1))`
-/

namespace A132284.P5618387703414852046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127874 (n + 1)).toNat * A194977 (A194969 (n + 1)).toNat

end

end A132284.P5618387703414852046

/-!
# A132285: Odd palindromes with an even number of digits.

The programs for A132285, there is no canonical definition to state claims against.
-/

/-! ## A132285.P14333581950865853322

`record[lcm(2, A056524(n+1))/2]`
-/

namespace A132285.P14333581950865853322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A056524 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132285.P14333581950865853322

/-! ## A132285.P16871408644611473230

`11*record[A000265(A066492(n+1))]`
-/

namespace A132285.P16871408644611473230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A066492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132285.P16871408644611473230

/-! ## A132285.P2227643252869045224

`∩[A029950(n+1), A056524(n+1)]`
-/

namespace A132285.P2227643252869045224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132285.P2227643252869045224

/-! ## A132285.P16101109995392602740

`∩[A029950(n+1), A272655(n+1)]`
-/

namespace A132285.P16101109995392602740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132285.P16101109995392602740

/-! ## A132285.P8250690378474670313

`∩[A029950(n+1), A333440(n+1)]`
-/

namespace A132285.P8250690378474670313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132285.P8250690378474670313

/-! ## A132285.P14410534108002664267

`11*record[A000265(A056524(n+1)/11)]`
-/

namespace A132285.P14410534108002664267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A056524 (n + 1) : ℚ) / 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132285.P14410534108002664267

/-! ## A132285.P7696675383007473160

`A056524(eq[1, A056525(n+1)%2]+1)`
-/

namespace A132285.P7696675383007473160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056525 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A132285.P7696675383007473160

/-! ## A132285.P6195342348063340338

`∩[A029950(n+1), A283871(n+1)]`
-/

namespace A132285.P6195342348063340338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132285.P6195342348063340338

/-! ## A132285.P8942177883333187900

`∩[A029950(n+1), A282151(n+1)]`
-/

namespace A132285.P8942177883333187900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132285.P8942177883333187900

/-! ## A132285.P7397383039881745553

`record[11*A026741(A066492(n+2))]`
-/

namespace A132285.P7397383039881745553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A026741 (A066492 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132285.P7397383039881745553

/-!
# A132286: Odd palindromes with an even number of digits divided by 11.

The programs for A132286, there is no canonical definition to state claims against.
-/

/-! ## A132286.P8800060623523549832

`A132285(n+1)/11`
-/

namespace A132286.P8800060623523549832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132285 (n + 1) : ℚ) / 11

end

end A132286.P8800060623523549832

/-! ## A132286.P9694935924317438549

`record[lcm(2, A056524(n+1))/22]`
-/

namespace A132286.P9694935924317438549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A056524 (n + 1)) : ℚ) / 22

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132286.P9694935924317438549

/-! ## A132286.P4578882225788593861

`∩[2*n+1, A066492(n+1)]`
-/

namespace A132286.P4578882225788593861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132286.P4578882225788593861

/-! ## A132286.P123855631328550242

`A106612(A132285(n+1))`
-/

namespace A132286.P123855631328550242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A132285 (n + 1)).toNat

end

end A132286.P123855631328550242

/-! ## A132286.P16953528151943139027

`record[A000265(A066492(n+1))]`
-/

namespace A132286.P16953528151943139027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A066492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132286.P16953528151943139027

/-! ## A132286.P12737659050746512822

`record[A026741(A066492(n+2))]`
-/

namespace A132286.P12737659050746512822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A066492 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132286.P12737659050746512822

/-! ## A132286.P3752969688686690191

`filter[A066492(n+1), A000035(#)]`
-/

namespace A132286.P3752969688686690191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A132286.P3752969688686690191

/-! ## A132286.P3980613404601170946

`∩[A066492(n+1), A004273(n)]`
-/

namespace A132286.P3980613404601170946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132286.P3980613404601170946

/-! ## A132286.P1256403267237685982

`∩[A066492(n+1), A060747(n)]`
-/

namespace A132286.P1256403267237685982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132286.P1256403267237685982

/-! ## A132286.P11272605736098061448

`record[A000265(A056524(n+1)/11)]`
-/

namespace A132286.P11272605736098061448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A056524 (n + 1) : ℚ) / 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132286.P11272605736098061448

/-!
# A132287: Primes in A132286.

The programs for A132287, there is no canonical definition to state claims against.
-/

/-! ## A132287.P6542727527514853489

`p?[A066492(n+3)]`
-/

namespace A132287.P6542727527514853489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132287.P6542727527514853489

/-! ## A132287.P1332116014082098119

`A132288(n+1)/11`
-/

namespace A132287.P1332116014082098119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132288 (n + 1) : ℚ) / 11

end

end A132287.P1332116014082098119

/-! ## A132287.P4392332150230951669

`filter[A066492(n+3), A010051(#)]`
-/

namespace A132287.P4392332150230951669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A132287.P4392332150230951669

/-!
# A132288: Odd palindromes which are semiprimes with an even number of digits.

The programs for A132288, there is no canonical definition to state claims against.
-/

/-! ## A132288.P5710552449359609061

`11*A132287(n+1)`
-/

namespace A132288.P5710552449359609061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A132287 (n + 1)

end

end A132288.P5710552449359609061

/-! ## A132288.P15007951580331857302

`∩[A056524(n+1), A075812(n+1)]`
-/

namespace A132288.P15007951580331857302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132288.P15007951580331857302

/-! ## A132288.P13791072941365876187

`∩[A075812(n+1), A272655(n+1)]`
-/

namespace A132288.P13791072941365876187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132288.P13791072941365876187

/-! ## A132288.P16596913937067713196

`11*p?[A066492(n+3)]`
-/

namespace A132288.P16596913937067713196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132288.P16596913937067713196

/-! ## A132288.P4548264532602546813

`∩[A046328(n+1), A132285(n+1)]`
-/

namespace A132288.P4548264532602546813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132288.P4548264532602546813

/-! ## A132288.P3366505837965277519

`∩[A046392(n+1), A132285(n+1)]`
-/

namespace A132288.P3366505837965277519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132288.P3366505837965277519

/-! ## A132288.P10978700013892468576

`∩[A075812(n+1), A132285(n+1)]`
-/

namespace A132288.P10978700013892468576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132288.P10978700013892468576

/-! ## A132288.P15697310669147238792

`∩[A075812(n+1), A333440(n+1)]`
-/

namespace A132288.P15697310669147238792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132288.P15697310669147238792

/-!
# A132290: Main diagonal of triangle A132289: a(n) = A132289(n,n) for n>=0.

The programs for A132290, there is no canonical definition to state claims against.
-/

/-! ## A132290.P10413561734829053414

`A132289(∑[2*n])`
-/

namespace A132290.P10413561734829053414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132289 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132290.P10413561734829053414

/-! ## A132290.P14671862282477519311

`record[A132289(A132710(n))]`
-/

namespace A132290.P14671862282477519311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132289 (A132710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132290.P14671862282477519311

/-! ## A132290.P8641301998697842760

`record[A132289(A132792(n))]`
-/

namespace A132290.P8641301998697842760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132289 (A132792 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132290.P8641301998697842760

/-!
# A132292: Integers repeated 8 times: a(n) = floor((n-1)/8).

The programs for A132292, the canonical program `A132292.P17425083125720380593` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132292 has offset 1).

The definition of A132292 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/8)` (program `A132292.P17425083125720380593`, by `A132292.P17425083125720380593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132292.P17425083125720380593

`floor(n/8)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132292

/-- `floor(n/8)` -/
def P17425083125720380593.Spec : Prop :=
  ∀ n, P17425083125720380593.a n = A132292 (n + 1)

theorem P17425083125720380593.correct : P17425083125720380593.Spec := by
  intro n
  simp only [A132292, Nat.add_sub_cancel]

end A132292

/-! ## A132292.P2635833213523148620

`and(n, -8)/8`
-/

namespace A132292.P2635833213523148620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-8) : ℚ) / 8

end

end A132292.P2635833213523148620

namespace A132292

/-- `and(n, -8)/8` -/
def P2635833213523148620.Spec : Prop :=
  ∀ n, P2635833213523148620.a n = (A132292 (n + 1) : ℚ)

end A132292

/-! ## A132292.P3195802307502013402

`(or(7, n)-7)/8`
-/

namespace A132292.P3195802307502013402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 7 n : ℤ) - 7 : ℚ) / 8

end

end A132292.P3195802307502013402

namespace A132292

/-- `(or(7, n)-7)/8` -/
def P3195802307502013402.Spec : Prop :=
  ∀ n, P3195802307502013402.a n = (A132292 (n + 1) : ℚ)

end A132292

/-! ## A132292.P9666163287544078432

`xor(7, or(7, n))/8`
-/

namespace A132292.P9666163287544078432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 7 (Nat.lor 7 n) : ℚ) / 8

end

end A132292.P9666163287544078432

namespace A132292

/-- `xor(7, or(7, n))/8` -/
def P9666163287544078432.Spec : Prop :=
  ∀ n, P9666163287544078432.a n = (A132292 (n + 1) : ℚ)

end A132292

/-! ## A132292.P17824209712519499779

`(n-n%8)/8`
-/

namespace A132292.P17824209712519499779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 8 : ℕ) : ℤ) : ℚ) / 8

end

end A132292.P17824209712519499779

namespace A132292

/-- `(n-n%8)/8` -/
def P17824209712519499779.Spec : Prop :=
  ∀ n, P17824209712519499779.a n = (A132292 (n + 1) : ℚ)

end A132292

/-! ## A132292.P3233291288358105189

`round(cos(2)+n/8)`
-/

namespace A132292.P3233291288358105189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n : ℚ) / 8 : ℝ))

end

end A132292.P3233291288358105189

namespace A132292

/-- `round(cos(2)+n/8)` -/
def P3233291288358105189.Spec : Prop :=
  ∀ n, P3233291288358105189.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P13694546144599941165

`ceil(cos(3)+n/8)`
-/

namespace A132292.P13694546144599941165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + ((n : ℚ) / 8 : ℝ)⌉

end

end A132292.P13694546144599941165

namespace A132292

/-- `ceil(cos(3)+n/8)` -/
def P13694546144599941165.Spec : Prop :=
  ∀ n, P13694546144599941165.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P17393918021001682218

`ceil(n/8-sin(2))`
-/

namespace A132292.P17393918021001682218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 8 : ℝ) - Real.sin (2 : ℝ)⌉

end

end A132292.P17393918021001682218

namespace A132292

/-- `ceil(n/8-sin(2))` -/
def P17393918021001682218.Spec : Prop :=
  ∀ n, P17393918021001682218.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P7581379483777538496

`ceil(sin(5)+n/8)`
-/

namespace A132292.P7581379483777538496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (5 : ℝ) + ((n : ℚ) / 8 : ℝ)⌉

end

end A132292.P7581379483777538496

namespace A132292

/-- `ceil(sin(5)+n/8)` -/
def P7581379483777538496.Spec : Prop :=
  ∀ n, P7581379483777538496.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P16016579484787211567

`ceil(n/8-cos(6))`
-/

namespace A132292.P16016579484787211567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 8 : ℝ) - Real.cos (6 : ℝ)⌉

end

end A132292.P16016579484787211567

namespace A132292

/-- `ceil(n/8-cos(6))` -/
def P16016579484787211567.Spec : Prop :=
  ∀ n, P16016579484787211567.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P7356670140745830192

`round((tan(5)+n)/8)`
-/

namespace A132292.P7356670140745830192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (5 : ℝ) + (n : ℝ)) / 8)

end

end A132292.P7356670140745830192

namespace A132292

/-- `round((tan(5)+n)/8)` -/
def P7356670140745830192.Spec : Prop :=
  ∀ n, P7356670140745830192.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P15796489364307809254

`∑[char[lcm(8, n+1)]]`
-/

namespace A132292.P15796489364307809254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132292.P15796489364307809254

namespace A132292

/-- `∑[char[lcm(8, n+1)]]` -/
def P15796489364307809254.Spec : Prop :=
  ∀ n, (P15796489364307809254.a n : ℤ) = A132292 (n + 1)

end A132292

/-! ## A132292.P9343746625749840392

`round((n-cosh(2))/8)`
-/

namespace A132292.P9343746625749840392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.cosh (2 : ℝ)) / 8)

end

end A132292.P9343746625749840392

namespace A132292

/-- `round((n-cosh(2))/8)` -/
def P9343746625749840392.Spec : Prop :=
  ∀ n, P9343746625749840392.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P9493265977737046748

`comp[9*n]%(n+1)`
-/

namespace A132292.P9493265977737046748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A132292.P9493265977737046748

namespace A132292

/-- `comp[9*n]%(n+1)` -/
def P9493265977737046748.Spec : Prop :=
  ∀ n, (P9493265977737046748.a n : ℤ) = A132292 (n + 1)

end A132292

/-! ## A132292.P3825692061514325767

`comp[n-dr(n+1)]-n`
-/

namespace A132292.P3825692061514325767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A132292.P3825692061514325767

namespace A132292

/-- `comp[n-dr(n+1)]-n` -/
def P3825692061514325767.Spec : Prop :=
  ∀ n, P3825692061514325767.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P7511094442664764808

`comp[3*lcm(3, n)]-(n+1)`
-/

namespace A132292.P7511094442664764808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lcm 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A132292.P7511094442664764808

namespace A132292

/-- `comp[3*lcm(3, n)]-(n+1)` -/
def P7511094442664764808.Spec : Prop :=
  ∀ n, P7511094442664764808.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P10696722159569720516

`lt[n, n*dr(n+1)]-(n+1)`
-/

namespace A132292.P10696722159569720516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A132292.P10696722159569720516

namespace A132292

/-- `lt[n, n*dr(n+1)]-(n+1)` -/
def P10696722159569720516.Spec : Prop :=
  ∀ n, P10696722159569720516.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P16978945800236024822

`lt[n/dr(n+1), n]-(n+1)`
-/

namespace A132292.P16978945800236024822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n : ℤ) - (n + 1 : ℤ)

end

end A132292.P16978945800236024822

namespace A132292

/-- `lt[n/dr(n+1), n]-(n+1)` -/
def P16978945800236024822.Spec : Prop :=
  ∀ n, P16978945800236024822.a n = A132292 (n + 1)

end A132292

/-! ## A132292.P2099173179355343546

`a(n-8)+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0`
-/

namespace A132292.P2099173179355343546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0] fun n a =>
  a (n - 8) + 1

end

end A132292.P2099173179355343546

namespace A132292

/-- `a(n-8)+1` -/
def P2099173179355343546.Spec : Prop :=
  ∀ n, (P2099173179355343546.a n : ℤ) = A132292 (n + 1)

end A132292

/-! ## A132292.P13145889618262010534

`lt[n+1, dr(n+1)+n]-(n+1)`
-/

namespace A132292.P13145889618262010534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A132292.P13145889618262010534

namespace A132292

/-- `lt[n+1, dr(n+1)+n]-(n+1)` -/
def P13145889618262010534.Spec : Prop :=
  ∀ n, P13145889618262010534.a n = A132292 (n + 1)

end A132292

/-!
# A132294: The first three terms are 1. After that, a(n)=(a(n-1))^2-a(n-2)-a(n-3).

The programs for A132294, the canonical program `A132294.P6045869494611507970` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132294 has offset 1).

The definition of A132294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-2)-a(n-3)` (program `A132294.P6045869494611507970`, by `A132294.P6045869494611507970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132294.P6045869494611507970

`a(n-1)²-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132294

/-- `a(n-1)²-a(n-2)-a(n-3)` -/
def P6045869494611507970.Spec : Prop :=
  ∀ n, P6045869494611507970.a n = A132294 (n + 1)

theorem P6045869494611507970.correct : P6045869494611507970.Spec := by
  intro n
  simp only [A132294, Nat.add_sub_cancel]

end A132294

/-! ## A132294.P7311285968850482181

`A130054(C(A292303(n+1), A147784(n)))`
-/

namespace A132294.P7311285968850482181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130054 (Nat.choose (A292303 (n + 1)).toNat (A147784 n).toNat)

end

end A132294.P7311285968850482181

namespace A132294

/-- `A130054(C(A292303(n+1), A147784(n)))` -/
def P7311285968850482181.Spec : Prop :=
  ∀ n, P7311285968850482181.a n = A132294 (n + 1)

end A132294

/-!
# A132295: Sum of the nonsquare numbers not larger than n.

The programs for A132295, the canonical program `A132295.P3904141346358363525` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132295 has offset 1).

The definition of A132295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132295.P3398475690072554976

`∑[(n+1)%∑[char[n²]]²]`
-/

namespace A132295.P3398475690072554976
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132295.P3398475690072554976

namespace A132295

/-- `∑[(n+1)%∑[char[n²]]²]` -/
def P3398475690072554976.Spec : Prop :=
  ∀ n, (P3398475690072554976.a n : ℤ) = A132295 (n + 1)

end A132295

/-! ## A132295.P3904141346358363525

`∑[(n+1)*(1-Δ[floor(sqrt(n))])]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132295

/-- `∑[(n+1)*(1-Δ[floor(sqrt(n))])]` -/
def P3904141346358363525.Spec : Prop :=
  ∀ n, P3904141346358363525.a n = A132295 (n + 1)

theorem P3904141346358363525.correct : P3904141346358363525.Spec := by
  intro n
  simp only [A132295, Nat.add_sub_cancel]

end A132295

/-! ## A132295.P8384400623572859626

`a(n-1)+(n+1)*(1-char[n²-1])` with `a(0)=0`
-/

namespace A132295.P8384400623572859626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A132295.P8384400623572859626

namespace A132295

/-- `a(n-1)+(n+1)*(1-char[n²-1])` -/
def P8384400623572859626.Spec : Prop :=
  ∀ n, P8384400623572859626.a n = A132295 (n + 1)

end A132295

/-! ## A132295.P5107596762371879693

`∑[(n+1)*A267866(n)]-1`
-/

namespace A132295.P5107596762371879693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A267866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A132295.P5107596762371879693

namespace A132295

/-- `∑[(n+1)*A267866(n)]-1` -/
def P5107596762371879693.Spec : Prop :=
  ∀ n, P5107596762371879693.a n = A132295 (n + 1)

end A132295

/-! ## A132295.P16708219837117062200

`abs(∑[A037213(n+1)²-(n+1)])`
-/

namespace A132295.P16708219837117062200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A132295.P16708219837117062200

namespace A132295

/-- `abs(∑[A037213(n+1)²-(n+1)])` -/
def P16708219837117062200.Spec : Prop :=
  ∀ n, P16708219837117062200.a n = A132295 (n + 1)

end A132295

/-! ## A132295.P5698717706387120182

`∑[n+1]-A000330(floor(sqrt(n+1)))`
-/

namespace A132295.P5698717706387120182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000330 (Nat.sqrt (n + 1))

end

end A132295.P5698717706387120182

namespace A132295

/-- `∑[n+1]-A000330(floor(sqrt(n+1)))` -/
def P5698717706387120182.Spec : Prop :=
  ∀ n, P5698717706387120182.a n = A132295 (n + 1)

end A132295

/-! ## A132295.P8684894075369156690

`∑[(n+2)^((A000005(n+1)+1)%2)]-(n+1)`
-/

namespace A132295.P8684894075369156690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (Int.tmod (A000005 (n + 1) + 1) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℚ)

end

end A132295.P8684894075369156690

namespace A132295

/-- `∑[(n+2)^((A000005(n+1)+1)%2)]-(n+1)` -/
def P8684894075369156690.Spec : Prop :=
  ∀ n, P8684894075369156690.a n = (A132295 (n + 1) : ℚ)

end A132295

/-! ## A132295.P5624078598954038208

`∑[and(n+1, A280193(∏{e}[n+1, #+1]-1))]-1`
-/

namespace A132295.P5624078598954038208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A280193 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A132295.P5624078598954038208

namespace A132295

/-- `∑[and(n+1, A280193(∏{e}[n+1, #+1]-1))]-1` -/
def P5624078598954038208.Spec : Prop :=
  ∀ n, P5624078598954038208.a n = A132295 (n + 1)

end A132295

/-!
# A132296: Sum of the noncube numbers less than or equal to n.

The programs for A132296, the canonical program `A132296.P4288883772330583834` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132296 has offset 1).

The definition of A132296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132296.P2888541354087877181

`∑[(n+1)%A048763(n+1)]`
-/

namespace A132296.P2888541354087877181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A048763 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132296.P2888541354087877181

namespace A132296

/-- `∑[(n+1)%A048763(n+1)]` -/
def P2888541354087877181.Spec : Prop :=
  ∀ n, P2888541354087877181.a n = A132296 (n + 1)

end A132296

/-! ## A132296.P4288883772330583834

`∑[(n+1)*(1-Δ[A048766(n)])]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A132296

/-- `∑[(n+1)*(1-Δ[A048766(n)])]` -/
def P4288883772330583834.Spec : Prop :=
  ∀ n, P4288883772330583834.a n = A132296 (n + 1)

theorem P4288883772330583834.correct : P4288883772330583834.Spec := by
  intro n
  simp only [A132296, Nat.add_sub_cancel]

end A132296

/-! ## A132296.P14942040320461565594

`∑[(n+1)*(1-A010057(n+1))]`
-/

namespace A132296.P14942040320461565594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A010057 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132296.P14942040320461565594

namespace A132296

/-- `∑[(n+1)*(1-A010057(n+1))]` -/
def P14942040320461565594.Spec : Prop :=
  ∀ n, P14942040320461565594.a n = A132296 (n + 1)

end A132296

/-! ## A132296.P12922443205390576744

`∑[(n+1)*C(A048762(n), A048762(n+1))]`
-/

namespace A132296.P12922443205390576744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (A048762 n).toNat (A048762 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132296.P12922443205390576744

namespace A132296

/-- `∑[(n+1)*C(A048762(n), A048762(n+1))]` -/
def P12922443205390576744.Spec : Prop :=
  ∀ n, (P12922443205390576744.a n : ℤ) = A132296 (n + 1)

end A132296

/-! ## A132296.P1034440865435794396

`A000217(n+1)-A000537(A048766(n+1))`
-/

namespace A132296.P1034440865435794396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A000537 (A048766 (n + 1)).toNat

end

end A132296.P1034440865435794396

namespace A132296

/-- `A000217(n+1)-A000537(A048766(n+1))` -/
def P1034440865435794396.Spec : Prop :=
  ∀ n, P1034440865435794396.a n = A132296 (n + 1)

end A132296

/-!
# A132297: Number of distinct Markov type classes of order 2 possible in binary strings of length n.

The programs for A132297, the canonical program `A132297.P2247284704282271799` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132297 has offset 2).

The definition of A132297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132297.P2247284704282271799

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=4, a(1)=7, a(2)=12, a(3)=18`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132297

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2247284704282271799.Spec : Prop :=
  ∀ n, P2247284704282271799.a n = A132297 (n + 2)

theorem P2247284704282271799.correct : P2247284704282271799.Spec := by
  intro n
  simp only [A132297, Nat.add_sub_cancel]

end A132297

/-! ## A132297.P16553418633558551683

`(15+(-1)^(n+2)-4*(n+2)+6*(n+2)²)/8`
-/

namespace A132297.P16553418633558551683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 + (-1) ^ (n + 2) - (4 * (n + 2) : ℤ) + (6 * (n + 2) ^ 2 : ℤ) : ℚ) / 8

end

end A132297.P16553418633558551683

namespace A132297

/-- `(15+(-1)^(n+2)-4*(n+2)+6*(n+2)²)/8` -/
def P16553418633558551683.Spec : Prop :=
  ∀ n, P16553418633558551683.a n = (A132297 (n + 2) : ℚ)

theorem P16553418633558551683.correct : P16553418633558551683.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A132297, Nat.add_sub_cancel, A132297.P16553418633558551683.a, A132297.P2247284704282271799.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A132297, Nat.add_sub_cancel, A132297.P16553418633558551683.a, A132297.P2247284704282271799.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132297

/-! ## A132297.P12719880646316538718

`∑[∑[gcd(2, n)]]+2`
-/

namespace A132297.P12719880646316538718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A132297.P12719880646316538718

namespace A132297

/-- `∑[∑[gcd(2, n)]]+2` -/
def P12719880646316538718.Spec : Prop :=
  ∀ n, (P12719880646316538718.a n : ℤ) = A132297 (n + 2)

end A132297

/-! ## A132297.P15559846800932053150

`2-∑[∑[or(n, -2)]]`
-/

namespace A132297.P15559846800932053150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132297.P15559846800932053150

namespace A132297

/-- `2-∑[∑[or(n, -2)]]` -/
def P15559846800932053150.Spec : Prop :=
  ∀ n, P15559846800932053150.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P14630252939297194203

`∑[a(n-2)+3]` with `a(0)=4, a(1)=3, a(2)=5`
-/

namespace A132297.P14630252939297194203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3, 5] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132297.P14630252939297194203

namespace A132297

/-- `∑[a(n-2)+3]` -/
def P14630252939297194203.Spec : Prop :=
  ∀ n, (P14630252939297194203.a n : ℤ) = A132297 (n + 2)

end A132297

/-! ## A132297.P5822899581817059916

`∑[∑[3-a(n-1)]]` with `a(0)=4, a(1)=-1, a(2)=2`
-/

namespace A132297.P5822899581817059916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, -1, 2] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132297.P5822899581817059916

namespace A132297

/-- `∑[∑[3-a(n-1)]]` -/
def P5822899581817059916.Spec : Prop :=
  ∀ n, P5822899581817059916.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P17529605704730765073

`ogf((4-x-2x^2+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A132297.P17529605704730765073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, -2, 2] [1, -2, 0, 2, -1] n

end

end A132297.P17529605704730765073

namespace A132297

/-- `ogf((4-x-2x^2+2x^3)/(1-2x+2x^3-x^4))` -/
def P17529605704730765073.Spec : Prop :=
  ∀ n, P17529605704730765073.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P18422533969068852137

`∑[abs(∑[n%2]+1-2*n)+3]`
-/

namespace A132297.P18422533969068852137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) - (2 * n : ℤ)| + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132297.P18422533969068852137

namespace A132297

/-- `∑[abs(∑[n%2]+1-2*n)+3]` -/
def P18422533969068852137.Spec : Prop :=
  ∀ n, P18422533969068852137.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P10507601089639782949

`round((∑[A168326(n+1)+1]+3)/2)`
-/

namespace A132297.P10507601089639782949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168326 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℤ) : ℚ) / 2)

end

end A132297.P10507601089639782949

namespace A132297

/-- `round((∑[A168326(n+1)+1]+3)/2)` -/
def P10507601089639782949.Spec : Prop :=
  ∀ n, P10507601089639782949.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P1652964182047409938

`∑[A000027(floor(n/2)+2+abs(1-n))+1]`
-/

namespace A132297.P1652964182047409938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊(n : ℚ) / 2⌋ + 2 + |1 - (n : ℤ)|).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132297.P1652964182047409938

namespace A132297

/-- `∑[A000027(floor(n/2)+2+abs(1-n))+1]` -/
def P1652964182047409938.Spec : Prop :=
  ∀ n, P1652964182047409938.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P2176444832328458928

`A267529(n+2)`
-/

namespace A132297.P2176444832328458928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 (n + 2)

end

end A132297.P2176444832328458928

namespace A132297

/-- `A267529(n+2)` -/
def P2176444832328458928.Spec : Prop :=
  ∀ n, P2176444832328458928.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P10007400580434305414

`record[A267529(abs(2-n))]`
-/

namespace A132297.P10007400580434305414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132297.P10007400580434305414

namespace A132297

/-- `record[A267529(abs(2-n))]` -/
def P10007400580434305414.Spec : Prop :=
  ∀ n, P10007400580434305414.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P14765521735450179291

`floor((A000567(n+2)+9)/4)`
-/

namespace A132297.P14765521735450179291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000567 (n + 2) + 9 : ℚ) / 4⌋

end

end A132297.P14765521735450179291

namespace A132297

/-- `floor((A000567(n+2)+9)/4)` -/
def P14765521735450179291.Spec : Prop :=
  ∀ n, P14765521735450179291.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P1191142741496472493

`Δ[A248851(n+1)-(n+1)²]`
-/

namespace A132297.P1191142741496472493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248851 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132297.P1191142741496472493

namespace A132297

/-- `Δ[A248851(n+1)-(n+1)²]` -/
def P1191142741496472493.Spec : Prop :=
  ∀ n, P1191142741496472493.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P2600466013439697922

`A000027(A275673(2*n+n+3)+1)`
-/

namespace A132297.P2600466013439697922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A275673 (2 * n + (n + 3)) + 1).toNat

end

end A132297.P2600466013439697922

namespace A132297

/-- `A000027(A275673(2*n+n+3)+1)` -/
def P2600466013439697922.Spec : Prop :=
  ∀ n, P2600466013439697922.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P9187192177530954771

`∑[A007494(A097331(2*n))+A007494(n+1)]`
-/

namespace A132297.P9187192177530954771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A097331 (2 * n)).toNat + A007494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132297.P9187192177530954771

namespace A132297

/-- `∑[A007494(A097331(2*n))+A007494(n+1)]` -/
def P9187192177530954771.Spec : Prop :=
  ∀ n, P9187192177530954771.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P9701712305409381442

`A183220(a(n-1)+n+1)` with `a(0)=4`
-/

namespace A132297.P9701712305409381442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A183220 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A132297.P9701712305409381442

namespace A132297

/-- `A183220(a(n-1)+n+1)` -/
def P9701712305409381442.Spec : Prop :=
  ∀ n, P9701712305409381442.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P2069357315091854500

`A184010(A077043(n+1)+2)`
-/

namespace A132297.P2069357315091854500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184010 (A077043 (n + 1) + 2).toNat

end

end A132297.P2069357315091854500

namespace A132297

/-- `A184010(A077043(n+1)+2)` -/
def P2069357315091854500.Spec : Prop :=
  ∀ n, P2069357315091854500.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P13646570479738676532

`A009056(A001859(n+1))`
-/

namespace A132297.P13646570479738676532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A001859 (n + 1)).toNat

end

end A132297.P13646570479738676532

namespace A132297

/-- `A009056(A001859(n+1))` -/
def P13646570479738676532.Spec : Prop :=
  ∀ n, P13646570479738676532.a n = A132297 (n + 2)

end A132297

/-! ## A132297.P10927034673294972083

`A020725(A263807(n+1))`
-/

namespace A132297.P10927034673294972083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A263807 (n + 1)).toNat

end

end A132297.P10927034673294972083

namespace A132297

/-- `A020725(A263807(n+1))` -/
def P10927034673294972083.Spec : Prop :=
  ∀ n, P10927034673294972083.a n = A132297 (n + 2)

end A132297

/-!
# A132298: Number of distinct Markov type classes of order 3 possible in binary strings of length n.

The programs for A132298, there is no canonical definition to state claims against.
-/

/-! ## A132298.P13275369149935696432

`A153362(n+1)-A122301(A238441(n))`
-/

namespace A132298.P13275369149935696432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153362 (n + 1) - A122301 (A238441 n).toNat

end

end A132298.P13275369149935696432

/-! ## A132298.P11006753495277637906

`A325044(A008000(n))+A001610(n+3)`
-/

namespace A132298.P11006753495277637906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325044 (A008000 n).toNat + A001610 (n + 3)

end

end A132298.P11006753495277637906

/-!
# A132299: Number of distinct Markov type classes of order 4 possible in binary strings of length n.

The programs for A132299, there is no canonical definition to state claims against.
-/

/-! ## A132299.P6450024385791556288

`A334227(A014252(n+2))`
-/

namespace A132299.P6450024385791556288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334227 (A014252 (n + 2)).toNat

end

end A132299.P6450024385791556288

