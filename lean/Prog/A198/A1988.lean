import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C001
import Seq.B012.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A198800: Number of closed paths of length n whose steps are 20th roots of unity, U_20(n).

The programs for A198800, there is no canonical definition to state claims against.
-/

/-! ## A198800.P2682860521234377714

`C(A251179(n), (6*and(1, n))!)`
-/

namespace A198800.P2682860521234377714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A251179 n).toNat (Nat.factorial (6 * Nat.land 1 n))

end

end A198800.P2682860521234377714

/-!
# A198802: Number of closed paths of length n whose steps are 18th roots of unity, U_18(n).

The programs for A198802, there is no canonical definition to state claims against.
-/

/-! ## A198802.P9091961014728853681

`(1-n)²*A134571((n+1)²)`
-/

namespace A198802.P9091961014728853681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * A134571 ((n + 1) ^ 2)

end

end A198802.P9091961014728853681

/-!
# A198803: 

The programs for A198803, there is no canonical definition to state claims against.
-/

/-! ## A198803.P3916938152956257999

`(17*n)!/n!^17`
-/

namespace A198803.P3916938152956257999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (17 * n) : ℚ) / (Nat.factorial n ^ 17 : ℚ)

end

end A198803.P3916938152956257999

/-!
# A198804: Number of closed paths of length n whose steps are 16th roots of unity, U_16(n).

The programs for A198804, there is no canonical definition to state claims against.
-/

/-! ## A198804.P16875618108083404172

`(C(n, 2)+n*a(n-1))!` with `a(0)=1, a(1)=0, a(2)=16, a(3)=0`
-/

namespace A198804.P16875618108083404172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 16, 0] fun n a =>
  Nat.factorial (Nat.choose n 2 + n * a (n - 1))

end

end A198804.P16875618108083404172

/-!
# A198805: Number of closed paths of length n whose steps are 15th roots of unity, U_15(n).

The programs for A198805, there is no canonical definition to state claims against.
-/

/-! ## A198805.P873385449546541748

`A007431(A015163(n))`
-/

namespace A198805.P873385449546541748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A015163 n).toNat

end

end A198805.P873385449546541748

/-! ## A198805.P16313517467672928445

`A299195(lt[A299195(n+4), 1])`
-/

namespace A198805.P16313517467672928445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299195 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299195 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A198805.P16313517467672928445

/-!
# A198806: Number of closed paths of length n whose steps are 14th roots of unity, U_14(n).

The programs for A198806, there is no canonical definition to state claims against.
-/

/-! ## A198806.P4836579016944204064

`A352366(A271842(n+2))`
-/

namespace A198806.P4836579016944204064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352366 (A271842 (n + 2)).toNat

end

end A198806.P4836579016944204064

/-!
# A198807: 

The programs for A198807, there is no canonical definition to state claims against.
-/

/-! ## A198807.P594757393125027943

`(13*n)!/n!^13`
-/

namespace A198807.P594757393125027943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (13 * n) : ℚ) / (Nat.factorial n ^ 13 : ℚ)

end

end A198807.P594757393125027943

/-!
# A198808: Number of closed paths of length n whose steps are 12th roots of unity, U_12(n).

The programs for A198808, there is no canonical definition to state claims against.
-/

/-! ## A198808.P12614753498751991280

`A182126(or(n, a(n-1))²)` with `a(0)=1, a(1)=0`
-/

namespace A198808.P12614753498751991280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A182126 (Int.lor (n : ℤ) (a (n - 1)) ^ 2).toNat

end

end A198808.P12614753498751991280

/-!
# A198809: 

The programs for A198809, there is no canonical definition to state claims against.
-/

/-! ## A198809.P14103397073378310604

`A141906(n+66)`
-/

namespace A198809.P14103397073378310604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141906 (n + 66)

end

end A198809.P14103397073378310604

/-! ## A198809.P12438592906138326791

`(11*n)!/n!^11`
-/

namespace A198809.P12438592906138326791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (11 * n) : ℚ) / (Nat.factorial n ^ 11 : ℚ)

end

end A198809.P12438592906138326791

/-!
# A198810: Number of closed paths of length n whose steps are 9th roots of unity, U_9(n).

The programs for A198810, there is no canonical definition to state claims against.
-/

/-! ## A198810.P4494238018037556455

`A025856(n)*A214361(A226877(n))`
-/

namespace A198810.P4494238018037556455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025856 n * A214361 (A226877 n).toNat

end

end A198810.P4494238018037556455

/-! ## A198810.P5071164373449282294

`A025192(n)*A322076(A134041(n))`
-/

namespace A198810.P5071164373449282294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n * A322076 (A134041 n).toNat

end

end A198810.P5071164373449282294

/-! ## A198810.P11360602738396288190

`A079978(n)*A214361(A226877(n))`
-/

namespace A198810.P11360602738396288190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n * A214361 (A226877 n).toNat

end

end A198810.P11360602738396288190

/-!
# A198831: Successive records in maximal positive distance d = x^3 - y^2.

The programs for A198831, there is no canonical definition to state claims against.
-/

/-! ## A198831.P8552495287409169506

`record[n^3-floor(sqrt(n^3))²]`
-/

namespace A198831.P8552495287409169506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.sqrt (n ^ 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198831.P8552495287409169506

/-! ## A198831.P4207999489533102960

`sqrt(record[A077116(n)²])`
-/

namespace A198831.P4207999489533102960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077116 n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A198831.P4207999489533102960

/-! ## A198831.P11550538918472166880

`abs(record[n^3-A065733(n)])`
-/

namespace A198831.P11550538918472166880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A065733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A198831.P11550538918472166880

/-! ## A198831.P5756402451004113102

`sqrt(record[(n*n²-A000093(n)²)²])`
-/

namespace A198831.P5756402451004113102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * n ^ 2 : ℤ) - A000093 n ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A198831.P5756402451004113102

/-! ## A198831.P1694476302047277285

`A077116(A198832(n+1))`
-/

namespace A198831.P1694476302047277285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077116 (A198832 (n + 1)).toNat

end

end A198831.P1694476302047277285

/-!
# A198833: The number of inequivalent ways to color the vertices of a regular octahedron using at most n colors.

The programs for A198833, the canonical program `A198833.P8275915602463433651` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198833 has offset 1).

The definition of A198833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198833.P16261811372748265269

`(n+1)*(n+2)*((n+1)²+n+3)*((n+1)²+n+5)/48`
-/

namespace A198833.P16261811372748265269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * (((n + 1) ^ 2 + (n + 3) : ℚ) * (((n + 1) ^ 2 + (n + 5) : ℚ) / 48)))

end

end A198833.P16261811372748265269

namespace A198833

/-- `(n+1)*(n+2)*((n+1)²+n+3)*((n+1)²+n+5)/48` -/
def P16261811372748265269.Spec : Prop :=
  ∀ n, P16261811372748265269.a n = (A198833 (n + 1) : ℚ)

end A198833

/-! ## A198833.P10294985373700485566

`(A047780(n+1)+A337898(n+1))/2`
-/

namespace A198833.P10294985373700485566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047780 (n + 1) + A337898 (n + 1) : ℚ) / 2

end

end A198833.P10294985373700485566

namespace A198833

/-- `(A047780(n+1)+A337898(n+1))/2` -/
def P10294985373700485566.Spec : Prop :=
  ∀ n, P10294985373700485566.a n = (A198833 (n + 1) : ℚ)

end A198833

/-! ## A198833.P17882181984352545578

`A093566(n+2)+A337898(n+1)`
-/

namespace A198833.P17882181984352545578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (n + 2) + A337898 (n + 1)

end

end A198833.P17882181984352545578

namespace A198833

/-- `A093566(n+2)+A337898(n+1)` -/
def P17882181984352545578.Spec : Prop :=
  ∀ n, P17882181984352545578.a n = A198833 (n + 1)

end A198833

/-! ## A198833.P8275915602463433651

`A047780(n+1)-A093566(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A198833

/-- `A047780(n+1)-A093566(n+2)` -/
def P8275915602463433651.Spec : Prop :=
  ∀ n, P8275915602463433651.a n = A198833 (n + 1)

theorem P8275915602463433651.correct : P8275915602463433651.Spec := by
  intro n
  simp only [A198833, Nat.add_sub_cancel]

end A198833

/-! ## A198833.P15027217711131655578

`C(∑[n+1]+2, 3)`
-/

namespace A198833.P15027217711131655578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 3

end

end A198833.P15027217711131655578

namespace A198833

/-- `C(∑[n+1]+2, 3)` -/
def P15027217711131655578.Spec : Prop :=
  ∀ n, (P15027217711131655578.a n : ℤ) = A198833 (n + 1)

end A198833

/-! ## A198833.P13159968266622648279

`∑[A260513(n+1)]`
-/

namespace A198833.P13159968266622648279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198833.P13159968266622648279

namespace A198833

/-- `∑[A260513(n+1)]` -/
def P13159968266622648279.Spec : Prop :=
  ∀ n, P13159968266622648279.a n = A198833 (n + 1)

end A198833

/-! ## A198833.P8929373997039408885

`A063842(n)-a(n-1)` with `a(0)=1`
-/

namespace A198833.P8929373997039408885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063842 n - a (n - 1)

end

end A198833.P8929373997039408885

namespace A198833

/-- `A063842(n)-a(n-1)` -/
def P8929373997039408885.Spec : Prop :=
  ∀ n, P8929373997039408885.a n = A198833 (n + 1)

end A198833

/-! ## A198833.P10293167541340412824

`A054563(n)+A006542(n+4)`
-/

namespace A198833.P10293167541340412824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054563 n + A006542 (n + 4)

end

end A198833.P10293167541340412824

namespace A198833

/-- `A054563(n)+A006542(n+4)` -/
def P10293167541340412824.Spec : Prop :=
  ∀ n, P10293167541340412824.a n = A198833 (n + 1)

end A198833

/-! ## A198833.P11889052293581243927

`∑[∑[A003215(n)+∑[A063522(n)]]]`
-/

namespace A198833.P11889052293581243927
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198833.P11889052293581243927

namespace A198833

/-- `∑[∑[A003215(n)+∑[A063522(n)]]]` -/
def P11889052293581243927.Spec : Prop :=
  ∀ n, P11889052293581243927.a n = A198833 (n + 1)

end A198833

/-! ## A198833.P14514094778309357359

`A240440(n+1)+A006323(n+1)`
-/

namespace A198833.P14514094778309357359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240440 (n + 1) + A006323 (n + 1)

end

end A198833.P14514094778309357359

namespace A198833

/-- `A240440(n+1)+A006323(n+1)` -/
def P14514094778309357359.Spec : Prop :=
  ∀ n, P14514094778309357359.a n = A198833 (n + 1)

end A198833

/-! ## A198833.P8554436074666118786

`∑[A060446(n+1)+∑[A002817(n)]]`
-/

namespace A198833.P8554436074666118786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060446 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198833.P8554436074666118786

namespace A198833

/-- `∑[A060446(n+1)+∑[A002817(n)]]` -/
def P8554436074666118786.Spec : Prop :=
  ∀ n, P8554436074666118786.a n = A198833 (n + 1)

end A198833

/-! ## A198833.P3454832632126098485

`A282816(n+2)-A093566(n+3)`
-/

namespace A198833.P3454832632126098485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282816 (n + 2) - A093566 (n + 3)

end

end A198833.P3454832632126098485

namespace A198833

/-- `A282816(n+2)-A093566(n+3)` -/
def P3454832632126098485.Spec : Prop :=
  ∀ n, P3454832632126098485.a n = A198833 (n + 1)

end A198833

/-! ## A198833.P7126401994661692448

`record[C(A000217(A025581(n)+1)+2, 3)]`
-/

namespace A198833.P7126401994661692448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000217 (A025581 n + 1).toNat + 2).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198833.P7126401994661692448

namespace A198833

/-- `record[C(A000217(A025581(n)+1)+2, 3)]` -/
def P7126401994661692448.Spec : Prop :=
  ∀ n, (P7126401994661692448.a n : ℤ) = A198833 (n + 1)

end A198833

/-! ## A198833.P18305951883890954718

`A000292(∑[n+1])`
-/

namespace A198833.P18305951883890954718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198833.P18305951883890954718

namespace A198833

/-- `A000292(∑[n+1])` -/
def P18305951883890954718.Spec : Prop :=
  ∀ n, P18305951883890954718.a n = A198833 (n + 1)

end A198833

/-! ## A198833.P16902886594436545990

`sqrt(A001249(∑[n]+n))`
-/

namespace A198833.P16902886594436545990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001249 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℝ)

end

end A198833.P16902886594436545990

namespace A198833

/-- `sqrt(A001249(∑[n]+n))` -/
def P16902886594436545990.Spec : Prop :=
  ∀ n, P16902886594436545990.a n = (A198833 (n + 1) : ℝ)

end A198833

/-! ## A198833.P4907157538946866023

`A027480(∑[n+1])/3`
-/

namespace A198833.P4907157538946866023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027480 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A198833.P4907157538946866023

namespace A198833

/-- `A027480(∑[n+1])/3` -/
def P4907157538946866023.Spec : Prop :=
  ∀ n, P4907157538946866023.a n = (A198833 (n + 1) : ℚ)

end A198833

/-! ## A198833.P3931808087135985025

`A210440(∑[n+1])/4`
-/

namespace A198833.P3931808087135985025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210440 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A198833.P3931808087135985025

namespace A198833

/-- `A210440(∑[n+1])/4` -/
def P3931808087135985025.Spec : Prop :=
  ∀ n, P3931808087135985025.a n = (A198833 (n + 1) : ℚ)

end A198833

/-! ## A198833.P8002644241120945064

`A134481(∑[n+1])/5`
-/

namespace A198833.P8002644241120945064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134481 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 5

end

end A198833.P8002644241120945064

namespace A198833

/-- `A134481(∑[n+1])/5` -/
def P8002644241120945064.Spec : Prop :=
  ∀ n, P8002644241120945064.a n = (A198833 (n + 1) : ℚ)

end A198833

/-! ## A198833.P6203907496883468513

`∑{d}[A000217(n+1), A117108(#)]`
-/

namespace A198833.P6203907496883468513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117108 d

end

end A198833.P6203907496883468513

namespace A198833

/-- `∑{d}[A000217(n+1), A117108(#)]` -/
def P6203907496883468513.Spec : Prop :=
  ∀ n, P6203907496883468513.a n = A198833 (n + 1)

end A198833

/-! ## A198833.P12929730485158634863

`record[gcd(A000292(n+1), A051933(n))]`
-/

namespace A198833.P12929730485158634863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000292 (n + 1)) (A051933 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198833.P12929730485158634863

namespace A198833

/-- `record[gcd(A000292(n+1), A051933(n))]` -/
def P12929730485158634863.Spec : Prop :=
  ∀ n, (P12929730485158634863.a n : ℤ) = A198833 (n + 1)

end A198833

/-!
# A198834: Number of sequences of n coin flips that win on the last flip, if the sequence of flips ends with (0,1,1) or (1,1,1).

The programs for A198834, the canonical program `A198834.P293684814417992349` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198834 has offset 1).

The definition of A198834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198834.P293684814417992349

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198834

/-- `a(n-1)+a(n-2)` -/
def P293684814417992349.Spec : Prop :=
  ∀ n, (P293684814417992349.a n : ℤ) = A198834 (n + 1)

theorem P293684814417992349.correct : P293684814417992349.Spec := by
  intro n
  simp only [A198834, Nat.add_sub_cancel]

end A198834

/-! ## A198834.P4270058415946898886

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A198834.P4270058415946898886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 2] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A198834.P4270058415946898886

namespace A198834

/-- `2*a(n-1)-a(n-3)` -/
def P4270058415946898886.Spec : Prop :=
  ∀ n, P4270058415946898886.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P9265656118728375843

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A198834.P9265656118728375843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A198834.P9265656118728375843

namespace A198834

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P9265656118728375843.Spec : Prop :=
  ∀ n, P9265656118728375843.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P3295189389650346046

`2-(2%n-a(n-1)-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A198834.P3295189389650346046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 - (((2 % n : ℕ) : ℤ) - a (n - 1) - a (n - 2))

end

end A198834.P3295189389650346046

namespace A198834

/-- `2-(2%n-a(n-1)-a(n-2))` -/
def P3295189389650346046.Spec : Prop :=
  ∀ n, P3295189389650346046.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P5572465609025847564

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A198834.P5572465609025847564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 2] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A198834.P5572465609025847564

namespace A198834

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P5572465609025847564.Spec : Prop :=
  ∀ n, P5572465609025847564.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P11677571420921979516

`A214927(Δ[n²])`
-/

namespace A198834.P11677571420921979516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198834.P11677571420921979516

namespace A198834

/-- `A214927(Δ[n²])` -/
def P11677571420921979516.Spec : Prop :=
  ∀ n, P11677571420921979516.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P878758404004347574

`and(-2, A006355(n))`
-/

namespace A198834.P878758404004347574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A006355 n)

end

end A198834.P878758404004347574

namespace A198834

/-- `and(-2, A006355(n))` -/
def P878758404004347574.Spec : Prop :=
  ∀ n, P878758404004347574.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P8263207609076271685

`A118658(floor(acot(n)+n))`
-/

namespace A198834.P8263207609076271685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A198834.P8263207609076271685

namespace A198834

/-- `A118658(floor(acot(n)+n))` -/
def P8263207609076271685.Spec : Prop :=
  ∀ n, P8263207609076271685.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P9570804077426808900

`2*Δ[A324969(n+1)]`
-/

namespace A198834.P9570804077426808900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A198834.P9570804077426808900

namespace A198834

/-- `2*Δ[A324969(n+1)]` -/
def P9570804077426808900.Spec : Prop :=
  ∀ n, P9570804077426808900.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P16914275739796058483

`A118658(n)-floor(acot(n)²)`
-/

namespace A198834.P16914275739796058483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A198834.P16914275739796058483

namespace A198834

/-- `A118658(n)-floor(acot(n)²)` -/
def P16914275739796058483.Spec : Prop :=
  ∀ n, P16914275739796058483.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P16515570076647384821

`lcm(2, A214927(2*n+1))`
-/

namespace A198834.P16515570076647384821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A214927 (2 * n + 1))

end

end A198834.P16515570076647384821

namespace A198834

/-- `lcm(2, A214927(2*n+1))` -/
def P16515570076647384821.Spec : Prop :=
  ∀ n, (P16515570076647384821.a n : ℤ) = A198834 (n + 1)

end A198834

/-! ## A198834.P6742020743477134637

`or(1, A163733(n+1))-1`
-/

namespace A198834.P6742020743477134637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A163733 (n + 1)) - 1

end

end A198834.P6742020743477134637

namespace A198834

/-- `or(1, A163733(n+1))-1` -/
def P6742020743477134637.Spec : Prop :=
  ∀ n, P6742020743477134637.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P1740132479201441221

`2*Δ[gcd(C(2, n), A000045(n))]`
-/

namespace A198834.P1740132479201441221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A000045 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A198834.P1740132479201441221

namespace A198834

/-- `2*Δ[gcd(C(2, n), A000045(n))]` -/
def P1740132479201441221.Spec : Prop :=
  ∀ n, P1740132479201441221.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P14497530327764635211

`2*A000045((n-1)%(n+1))`
-/

namespace A198834.P14497530327764635211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A198834.P14497530327764635211

namespace A198834

/-- `2*A000045((n-1)%(n+1))` -/
def P14497530327764635211.Spec : Prop :=
  ∀ n, P14497530327764635211.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P5209911882622064464

`2*A000045(floor(n²/(n+1)))`
-/

namespace A198834.P5209911882622064464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A198834.P5209911882622064464

namespace A198834

/-- `2*A000045(floor(n²/(n+1)))` -/
def P5209911882622064464.Spec : Prop :=
  ∀ n, P5209911882622064464.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P6720614907906813036

`2*(A000032(n-1)-a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A198834.P6720614907906813036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * (A000032 (n - 1) - a (n - 1))

end

end A198834.P6720614907906813036

namespace A198834

/-- `2*(A000032(n-1)-a(n-1))` -/
def P6720614907906813036.Spec : Prop :=
  ∀ n, P6720614907906813036.a n = A198834 (n + 1)

end A198834

/-! ## A198834.P2024932192594805843

`A006355(A028310(n))`
-/

namespace A198834.P2024932192594805843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A028310 n).toNat

end

end A198834.P2024932192594805843

namespace A198834

/-- `A006355(A028310(n))` -/
def P2024932192594805843.Spec : Prop :=
  ∀ n, P2024932192594805843.a n = A198834 (n + 1)

end A198834

/-!
# A198845: a(n) = 8*6^n - 1.

The programs for A198845, the canonical program `A198845.P5204720810611960801` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198845 has offset 0).

The definition of A198845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*6^n-1` (program `A198845.P5204720810611960801`, by `A198845.P5204720810611960801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198845.P5204720810611960801

`8*6^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198845

/-- `8*6^n-1` -/
def P5204720810611960801.Spec : Prop :=
  ∀ n, P5204720810611960801.a n = A198845 n

theorem P5204720810611960801.correct : P5204720810611960801.Spec := by
  intro n
  simp only [A198845]

end A198845

/-! ## A198845.P7709472462653309876

`or(5, 6*a(n-1))` with `a(0)=7`
-/

namespace A198845.P7709472462653309876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 5 (6 * a (n - 1))

end

end A198845.P7709472462653309876

namespace A198845

/-- `or(5, 6*a(n-1))` -/
def P7709472462653309876.Spec : Prop :=
  ∀ n, (P7709472462653309876.a n : ℤ) = A198845 n

end A198845

/-! ## A198845.P6285535744161224829

`xor(5, 6*a(n-1))` with `a(0)=7`
-/

namespace A198845.P6285535744161224829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor 5 (6 * a (n - 1))

end

end A198845.P6285535744161224829

namespace A198845

/-- `xor(5, 6*a(n-1))` -/
def P6285535744161224829.Spec : Prop :=
  ∀ n, (P6285535744161224829.a n : ℤ) = A198845 n

end A198845

/-! ## A198845.P13155166393352884063

`or(5, lcm(6, a(n-1)))` with `a(0)=7`
-/

namespace A198845.P13155166393352884063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 5 (Nat.lcm 6 (a (n - 1)))

end

end A198845.P13155166393352884063

namespace A198845

/-- `or(5, lcm(6, a(n-1)))` -/
def P13155166393352884063.Spec : Prop :=
  ∀ n, (P13155166393352884063.a n : ℤ) = A198845 n

end A198845

/-! ## A198845.P8349283797874177554

`∑[6*a(n-1)]` with `a(0)=7, a(1)=40`
-/

namespace A198845.P8349283797874177554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 40] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198845.P8349283797874177554

namespace A198845

/-- `∑[6*a(n-1)]` -/
def P8349283797874177554.Spec : Prop :=
  ∀ n, (P8349283797874177554.a n : ℤ) = A198845 n

end A198845

/-! ## A198845.P2914856545437442468

`6*(a(n-1)+5/6)` with `a(0)=7`
-/

namespace A198845.P2914856545437442468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  6 * (a (n - 1) + (5 : ℚ) / 6)

end

end A198845.P2914856545437442468

namespace A198845

/-- `6*(a(n-1)+5/6)` -/
def P2914856545437442468.Spec : Prop :=
  ∀ n, P2914856545437442468.a n = (A198845 n : ℚ)

theorem P2914856545437442468.correct : P2914856545437442468.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198845, Nat.add_sub_cancel, A198845.P2914856545437442468.a, A198845.P5204720810611960801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198845, Nat.add_sub_cancel, A198845.P2914856545437442468.a, A198845.P5204720810611960801.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198845

/-! ## A198845.P12882954561715299440

`floor(a(n-1)+5*(a(n-1)+1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A198845.P12882954561715299440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 5 * (a (n - 1) + 1)

end

end A198845.P12882954561715299440

namespace A198845

/-- `floor(a(n-1)+5*(a(n-1)+1))` -/
def P12882954561715299440.Spec : Prop :=
  ∀ n, (P12882954561715299440.a n : ℤ) = A198845 n

theorem P12882954561715299440.correct : P12882954561715299440.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198845, Nat.add_sub_cancel, A198845.P12882954561715299440.a, A198845.P5204720810611960801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198845, Nat.add_sub_cancel, A198845.P12882954561715299440.a, A198845.P5204720810611960801.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198845

/-! ## A198845.P59044971699154294

`floor(7*a(n-1)-(a(n-1)-5))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A198845.P59044971699154294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  7 * a (n - 1) - (a (n - 1) - 5)

end

end A198845.P59044971699154294

namespace A198845

/-- `floor(7*a(n-1)-(a(n-1)-5))` -/
def P59044971699154294.Spec : Prop :=
  ∀ n, P59044971699154294.a n = A198845 n

theorem P59044971699154294.correct : P59044971699154294.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198845, Nat.add_sub_cancel, A198845.P59044971699154294.a, A198845.P5204720810611960801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198845, Nat.add_sub_cancel, A198845.P59044971699154294.a, A198845.P5204720810611960801.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198845

/-! ## A198845.P1414320893038906218

`floor(A164559(n+3)/9)`
-/

namespace A198845.P1414320893038906218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164559 (n + 3) : ℚ) / 9⌋

end

end A198845.P1414320893038906218

namespace A198845

/-- `floor(A164559(n+3)/9)` -/
def P1414320893038906218.Spec : Prop :=
  ∀ n, P1414320893038906218.a n = A198845 n

end A198845

/-!
# A198846: a(n) = 9*6^n - 1.

The programs for A198846, the canonical program `A198846.P11610134080789533205` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198846 has offset 0).

The definition of A198846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*6^n-1` (program `A198846.P11610134080789533205`, by `A198846.P11610134080789533205.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198846.P11610134080789533205

`9*6^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198846

/-- `9*6^n-1` -/
def P11610134080789533205.Spec : Prop :=
  ∀ n, P11610134080789533205.a n = A198846 n

theorem P11610134080789533205.correct : P11610134080789533205.Spec := by
  intro n
  simp only [A198846]

end A198846

/-! ## A198846.P1523737315712759429

`∑[6*a(n-1)]` with `a(0)=8, a(1)=45`
-/

namespace A198846.P1523737315712759429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 45] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198846.P1523737315712759429

namespace A198846

/-- `∑[6*a(n-1)]` -/
def P1523737315712759429.Spec : Prop :=
  ∀ n, (P1523737315712759429.a n : ℤ) = A198846 n

end A198846

/-! ## A198846.P134603861465940695

`floor(7*a(n-1)-(a(n-1)-5))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A198846.P134603861465940695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  7 * a (n - 1) - (a (n - 1) - 5)

end

end A198846.P134603861465940695

namespace A198846

/-- `floor(7*a(n-1)-(a(n-1)-5))` -/
def P134603861465940695.Spec : Prop :=
  ∀ n, P134603861465940695.a n = A198846 n

theorem P134603861465940695.correct : P134603861465940695.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198846, Nat.add_sub_cancel, A198846.P134603861465940695.a, A198846.P11610134080789533205.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198846, Nat.add_sub_cancel, A198846.P134603861465940695.a, A198846.P11610134080789533205.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198846

/-! ## A198846.P8232952160904215867

`abs(2-A199413(n))`
-/

namespace A198846.P8232952160904215867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199413 n|

end

end A198846.P8232952160904215867

namespace A198846

/-- `abs(2-A199413(n))` -/
def P8232952160904215867.Spec : Prop :=
  ∀ n, P8232952160904215867.a n = A198846 n

end A198846

/-! ## A198846.P3441897432451557176

`Δ[A199412(n)-n]`
-/

namespace A198846.P3441897432451557176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199412 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198846.P3441897432451557176

namespace A198846

/-- `Δ[A199412(n)-n]` -/
def P3441897432451557176.Spec : Prop :=
  ∀ n, P3441897432451557176.a n = A198846 n

end A198846

/-! ## A198846.P17551463666621616152

`or(A000225(n), A016129(n+1))`
-/

namespace A198846.P17551463666621616152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A016129 (n + 1))

end

end A198846.P17551463666621616152

namespace A198846

/-- `or(A000225(n), A016129(n+1))` -/
def P17551463666621616152.Spec : Prop :=
  ∀ n, P17551463666621616152.a n = A198846 n

end A198846

/-! ## A198846.P14646922109300582653

`(A198796(n+1)-1)/2`
-/

namespace A198846.P14646922109300582653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198796 (n + 1) - 1 : ℚ) / 2

end

end A198846.P14646922109300582653

namespace A198846

/-- `(A198796(n+1)-1)/2` -/
def P14646922109300582653.Spec : Prop :=
  ∀ n, P14646922109300582653.a n = (A198846 n : ℚ)

end A198846

/-! ## A198846.P11097504203453646958

`(A199318(n+1)-3)/2`
-/

namespace A198846.P11097504203453646958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199318 (n + 1) - 3 : ℚ) / 2

end

end A198846.P11097504203453646958

namespace A198846

/-- `(A199318(n+1)-3)/2` -/
def P11097504203453646958.Spec : Prop :=
  ∀ n, P11097504203453646958.a n = (A198846 n : ℚ)

end A198846

/-! ## A198846.P5450777622250784402

`ceil((∑[5*A000400(n+1)]+1)/4)`
-/

namespace A198846.P5450777622250784402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 4⌉

end

end A198846.P5450777622250784402

namespace A198846

/-- `ceil((∑[5*A000400(n+1)]+1)/4)` -/
def P5450777622250784402.Spec : Prop :=
  ∀ n, P5450777622250784402.a n = A198846 n

end A198846

/-! ## A198846.P7464748297714081034

`(A164559(n+2)+A024062(n+1))/2`
-/

namespace A198846.P7464748297714081034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164559 (n + 2) + A024062 (n + 1) : ℚ) / 2

end

end A198846.P7464748297714081034

namespace A198846

/-- `(A164559(n+2)+A024062(n+1))/2` -/
def P7464748297714081034.Spec : Prop :=
  ∀ n, P7464748297714081034.a n = (A198846 n : ℚ)

end A198846

/-!
# A198847: a(n) = 10*6^n - 1.

The programs for A198847, the canonical program `A198847.P17463573303499178923` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198847 has offset 0).

The definition of A198847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*6^n-1` (program `A198847.P17463573303499178923`, by `A198847.P17463573303499178923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198847.P17463573303499178923

`10*6^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198847

/-- `10*6^n-1` -/
def P17463573303499178923.Spec : Prop :=
  ∀ n, P17463573303499178923.a n = A198847 n

theorem P17463573303499178923.correct : P17463573303499178923.Spec := by
  intro n
  simp only [A198847]

end A198847

/-! ## A198847.P16642872976229348950

`∑[6*a(n-1)]` with `a(0)=9, a(1)=50`
-/

namespace A198847.P16642872976229348950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 50] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198847.P16642872976229348950

namespace A198847

/-- `∑[6*a(n-1)]` -/
def P16642872976229348950.Spec : Prop :=
  ∀ n, (P16642872976229348950.a n : ℤ) = A198847 n

end A198847

/-! ## A198847.P15981471267940876437

`abs(2-A199414(n))`
-/

namespace A198847.P15981471267940876437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199414 n|

end

end A198847.P15981471267940876437

namespace A198847

/-- `abs(2-A199414(n))` -/
def P15981471267940876437.Spec : Prop :=
  ∀ n, P15981471267940876437.a n = A198847 n

end A198847

/-! ## A198847.P5392776968026080818

`Δ[A199317(n)-n]`
-/

namespace A198847.P5392776968026080818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199317 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198847.P5392776968026080818

namespace A198847

/-- `Δ[A199317(n)-n]` -/
def P5392776968026080818.Spec : Prop :=
  ∀ n, P5392776968026080818.a n = A198847 n

end A198847

/-! ## A198847.P7661760287055135345

`Δ[A164559(n+1)-n]`
-/

namespace A198847.P7661760287055135345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164559 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198847.P7661760287055135345

namespace A198847

/-- `Δ[A164559(n+1)-n]` -/
def P7661760287055135345.Spec : Prop :=
  ∀ n, P7661760287055135345.a n = A198847 n

end A198847

/-! ## A198847.P15716882421659279752

`Δ[A167747(n+1)-n]`
-/

namespace A198847.P15716882421659279752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167747 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198847.P15716882421659279752

namespace A198847

/-- `Δ[A167747(n+1)-n]` -/
def P15716882421659279752.Spec : Prop :=
  ∀ n, P15716882421659279752.a n = A198847 n

end A198847

/-! ## A198847.P204274985400767557

`Δ[2*A000400(n)-n]`
-/

namespace A198847.P204274985400767557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000400 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198847.P204274985400767557

namespace A198847

/-- `Δ[2*A000400(n)-n]` -/
def P204274985400767557.Spec : Prop :=
  ∀ n, P204274985400767557.a n = A198847 n

end A198847

/-! ## A198847.P12466814873847370261

`Δ[Δ[2*A003464(n)]-n]`
-/

namespace A198847.P12466814873847370261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003464 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198847.P12466814873847370261

namespace A198847

/-- `Δ[Δ[2*A003464(n)]-n]` -/
def P12466814873847370261.Spec : Prop :=
  ∀ n, P12466814873847370261.a n = A198847 n

end A198847

/-! ## A198847.P14307699392117883387

`Δ[A026549(2*n+1)-n]`
-/

namespace A198847.P14307699392117883387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198847.P14307699392117883387

namespace A198847

/-- `Δ[A026549(2*n+1)-n]` -/
def P14307699392117883387.Spec : Prop :=
  ∀ n, P14307699392117883387.a n = A198847 n

end A198847

/-! ## A198847.P5004407519921549278

`Δ[A001489(n)+2*6^n]`
-/

namespace A198847.P5004407519921549278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (2 * 6 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198847.P5004407519921549278

namespace A198847

/-- `Δ[A001489(n)+2*6^n]` -/
def P5004407519921549278.Spec : Prop :=
  ∀ n, P5004407519921549278.a n = A198847 n

end A198847

/-! ## A198847.P98805599336374299

`Δ[A024063(n)+A024062(n)]`
-/

namespace A198847.P98805599336374299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024063 n + A024062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198847.P98805599336374299

namespace A198847

/-- `Δ[A024063(n)+A024062(n)]` -/
def P98805599336374299.Spec : Prop :=
  ∀ n, P98805599336374299.a n = A198847 n

end A198847

/-! ## A198847.P8642031484095530677

`(A198794(n+1)-2)/3`
-/

namespace A198847.P8642031484095530677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198794 (n + 1) - 2 : ℚ) / 3

end

end A198847.P8642031484095530677

namespace A198847

/-- `(A198794(n+1)-2)/3` -/
def P8642031484095530677.Spec : Prop :=
  ∀ n, P8642031484095530677.a n = (A198847 n : ℚ)

end A198847

/-!
# A198848: a(n) = 11*6^n - 1.

The programs for A198848, the canonical program `A198848.P14111867029697117179` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198848 has offset 0).

The definition of A198848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*6^n-1` (program `A198848.P14111867029697117179`, by `A198848.P14111867029697117179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198848.P14111867029697117179

`11*6^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198848

/-- `11*6^n-1` -/
def P14111867029697117179.Spec : Prop :=
  ∀ n, P14111867029697117179.a n = A198848 n

theorem P14111867029697117179.correct : P14111867029697117179.Spec := by
  intro n
  simp only [A198848]

end A198848

/-! ## A198848.P15409006866334367136

`abs(6*a(n-1)+5)` with `a(0)=10`
-/

namespace A198848.P15409006866334367136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  6 * a (n - 1) + 5

end

end A198848.P15409006866334367136

namespace A198848

/-- `abs(6*a(n-1)+5)` -/
def P15409006866334367136.Spec : Prop :=
  ∀ n, (P15409006866334367136.a n : ℤ) = A198848 n

theorem P15409006866334367136.correct : P15409006866334367136.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198848, Nat.add_sub_cancel, A198848.P15409006866334367136.a, A198848.P14111867029697117179.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198848, Nat.add_sub_cancel, A198848.P15409006866334367136.a, A198848.P14111867029697117179.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198848

/-! ## A198848.P8033277306068439946

`6*(a(n-1)+5/6)` with `a(0)=10`
-/

namespace A198848.P8033277306068439946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  6 * (a (n - 1) + (5 : ℚ) / 6)

end

end A198848.P8033277306068439946

namespace A198848

/-- `6*(a(n-1)+5/6)` -/
def P8033277306068439946.Spec : Prop :=
  ∀ n, P8033277306068439946.a n = (A198848 n : ℚ)

theorem P8033277306068439946.correct : P8033277306068439946.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198848, Nat.add_sub_cancel, A198848.P8033277306068439946.a, A198848.P14111867029697117179.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198848, Nat.add_sub_cancel, A198848.P8033277306068439946.a, A198848.P14111867029697117179.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198848

/-! ## A198848.P1162341610769294299

`Δ[6*a(n-1)+5*n]` with `a(0)=1`
-/

namespace A198848.P1162341610769294299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) + 5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A198848.P1162341610769294299

namespace A198848

/-- `Δ[6*a(n-1)+5*n]` -/
def P1162341610769294299.Spec : Prop :=
  ∀ n, P1162341610769294299.a n = A198848 n

end A198848

/-! ## A198848.P6205927154710215917

`or(n-1, or(1, 2*(3*a(n-1)+2)))` with `a(0)=10`
-/

namespace A198848.P6205927154710215917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  Int.lor ((n : ℤ) - 1) (Int.lor 1 (2 * (3 * a (n - 1) + 2)))

end

end A198848.P6205927154710215917

namespace A198848

/-- `or(n-1, or(1, 2*(3*a(n-1)+2)))` -/
def P6205927154710215917.Spec : Prop :=
  ∀ n, P6205927154710215917.a n = A198848 n

end A198848

/-! ## A198848.P10719222780893274264

`5*A198849(n)`
-/

namespace A198848.P10719222780893274264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A198849 n

end

end A198848.P10719222780893274264

namespace A198848

/-- `5*A198849(n)` -/
def P10719222780893274264.Spec : Prop :=
  ∀ n, P10719222780893274264.a n = A198848 n

end A198848

/-! ## A198848.P12931287561160920869

`Δ[A198849(n)+A001489(n)]`
-/

namespace A198848.P12931287561160920869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198849 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198848.P12931287561160920869

namespace A198848

/-- `Δ[A198849(n)+A001489(n)]` -/
def P12931287561160920869.Spec : Prop :=
  ∀ n, P12931287561160920869.a n = A198848 n

end A198848

/-! ## A198848.P11663758347304153862

`Δ[A024062(n)+∑[A024062(n)]]`
-/

namespace A198848.P11663758347304153862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198848.P11663758347304153862

namespace A198848

/-- `Δ[A024062(n)+∑[A024062(n)]]` -/
def P11663758347304153862.Spec : Prop :=
  ∀ n, P11663758347304153862.a n = A198848 n

end A198848

/-! ## A198848.P646579360329256011

`Δ[A062394(n)+∑[A062394(n)]-2*n]`
-/

namespace A198848.P646579360329256011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n + ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198848.P646579360329256011

namespace A198848

/-- `Δ[A062394(n)+∑[A062394(n)]-2*n]` -/
def P646579360329256011.Spec : Prop :=
  ∀ n, P646579360329256011.a n = A198848 n

end A198848

/-!
# A198849: a(n) = (11*6^n - 1)/5.

The programs for A198849, the canonical program `A198849.P972436854107100533` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198849 has offset 0).

The definition of A198849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*6^n-1)/5` (program `A198849.P16176345709505864608`, by `A198849.P16176345709505864608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198849.P972436854107100533

`6*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198849

/-- `6*a(n-1)+1` -/
def P972436854107100533.Spec : Prop :=
  ∀ n, (P972436854107100533.a n : ℤ) = A198849 n

theorem P972436854107100533.correct : P972436854107100533.Spec := by
  intro n
  simp only [A198849]

end A198849

/-! ## A198849.P16176345709505864608

`(11*6^n-1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198849.P16176345709505864608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 6 ^ n : ℤ) - 1 : ℚ) / 5

end

end A198849.P16176345709505864608

namespace A198849

/-- `(11*6^n-1)/5` -/
def P16176345709505864608.Spec : Prop :=
  ∀ n, P16176345709505864608.a n = (A198849 n : ℚ)

theorem P16176345709505864608.correct : P16176345709505864608.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198849, Nat.add_sub_cancel, A198849.P16176345709505864608.a, A198849.P972436854107100533.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198849, Nat.add_sub_cancel, A198849.P16176345709505864608.a, A198849.P972436854107100533.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198849

/-! ## A198849.P4095994659656565288

`or(1, 6*a(n-1))` with `a(0)=2`
-/

namespace A198849.P4095994659656565288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 1 (6 * a (n - 1))

end

end A198849.P4095994659656565288

namespace A198849

/-- `or(1, 6*a(n-1))` -/
def P4095994659656565288.Spec : Prop :=
  ∀ n, (P4095994659656565288.a n : ℤ) = A198849 n

end A198849

/-! ## A198849.P6100277820461847436

`xor(1, 6*a(n-1))` with `a(0)=2`
-/

namespace A198849.P6100277820461847436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 1 (6 * a (n - 1))

end

end A198849.P6100277820461847436

namespace A198849

/-- `xor(1, 6*a(n-1))` -/
def P6100277820461847436.Spec : Prop :=
  ∀ n, (P6100277820461847436.a n : ℤ) = A198849 n

end A198849

/-! ## A198849.P14652889665016095722

`∑[6*a(n-1)]` with `a(0)=2, a(1)=11`
-/

namespace A198849.P14652889665016095722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 11] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198849.P14652889665016095722

namespace A198849

/-- `∑[6*a(n-1)]` -/
def P14652889665016095722.Spec : Prop :=
  ∀ n, (P14652889665016095722.a n : ℤ) = A198849 n

end A198849

/-! ## A198849.P10450945295644728100

`3-2*(1-3*a(n-1))` with `a(0)=2`
-/

namespace A198849.P10450945295644728100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 - 2 * (1 - 3 * a (n - 1))

end

end A198849.P10450945295644728100

namespace A198849

/-- `3-2*(1-3*a(n-1))` -/
def P10450945295644728100.Spec : Prop :=
  ∀ n, P10450945295644728100.a n = A198849 n

end A198849

/-! ## A198849.P5355677705324194129

`A000400(n)+∑[A000400(n)]`
-/

namespace A198849.P5355677705324194129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198849.P5355677705324194129

namespace A198849

/-- `A000400(n)+∑[A000400(n)]` -/
def P5355677705324194129.Spec : Prop :=
  ∀ n, P5355677705324194129.a n = A198849 n

end A198849

/-! ## A198849.P3904203981180846486

`A003464(n+1)+A000400(n)`
-/

namespace A198849.P3904203981180846486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (n + 1) + A000400 n

end

end A198849.P3904203981180846486

namespace A198849

/-- `A003464(n+1)+A000400(n)` -/
def P3904203981180846486.Spec : Prop :=
  ∀ n, P3904203981180846486.a n = A198849 n

end A198849

/-! ## A198849.P3826183830169834383

`∑[A052934(n)+∑[A052934(n)]]`
-/

namespace A198849.P3826183830169834383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198849.P3826183830169834383

namespace A198849

/-- `∑[A052934(n)+∑[A052934(n)]]` -/
def P3826183830169834383.Spec : Prop :=
  ∀ n, P3826183830169834383.a n = A198849 n

end A198849

/-! ## A198849.P3562697237827110632

`A003464(n+1)+Δ[A003464(n)]`
-/

namespace A198849.P3562697237827110632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (n + 1) + (f1 (n + 1) - f1 n)

end

end A198849.P3562697237827110632

namespace A198849

/-- `A003464(n+1)+Δ[A003464(n)]` -/
def P3562697237827110632.Spec : Prop :=
  ∀ n, P3562697237827110632.a n = A198849 n

end A198849

/-! ## A198849.P8167833187371161230

`A026549(2*n)+∑[A026549(2*n)]`
-/

namespace A198849.P8167833187371161230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198849.P8167833187371161230

namespace A198849

/-- `A026549(2*n)+∑[A026549(2*n)]` -/
def P8167833187371161230.Spec : Prop :=
  ∀ n, P8167833187371161230.a n = A198849 n

end A198849

/-! ## A198849.P12658891081330498736

`A056452(2*n)+∑[A056452(2*n)]`
-/

namespace A198849.P12658891081330498736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056452 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056452 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198849.P12658891081330498736

namespace A198849

/-- `A056452(2*n)+∑[A056452(2*n)]` -/
def P12658891081330498736.Spec : Prop :=
  ∀ n, P12658891081330498736.a n = A198849 n

end A198849

/-! ## A198849.P1184151295803609644

`A329114(2*n+1)+A026549(2*n+1)`
-/

namespace A198849.P1184151295803609644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329114 (2 * n + 1) + A026549 (2 * n + 1)

end

end A198849.P1184151295803609644

namespace A198849

/-- `A329114(2*n+1)+A026549(2*n+1)` -/
def P1184151295803609644.Spec : Prop :=
  ∀ n, P1184151295803609644.a n = A198849 n

end A198849

/-! ## A198849.P2336752167162377410

`A329115(2*n+1)+A026549(2*n+1)`
-/

namespace A198849.P2336752167162377410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * n + 1) + A026549 (2 * n + 1)

end

end A198849.P2336752167162377410

namespace A198849

/-- `A329115(2*n+1)+A026549(2*n+1)` -/
def P2336752167162377410.Spec : Prop :=
  ∀ n, P2336752167162377410.a n = A198849 n

end A198849

/-! ## A198849.P1890202841942381370

`A026532(2*n+1)+∑[A026532(2*n+1)]`
-/

namespace A198849.P1890202841942381370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198849.P1890202841942381370

namespace A198849

/-- `A026532(2*n+1)+∑[A026532(2*n+1)]` -/
def P1890202841942381370.Spec : Prop :=
  ∀ n, P1890202841942381370.a n = A198849 n

end A198849

/-! ## A198849.P10126805624403125607

`A164532(2*n+1)+∑[A164532(2*n+1)]`
-/

namespace A198849.P10126805624403125607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198849.P10126805624403125607

namespace A198849

/-- `A164532(2*n+1)+∑[A164532(2*n+1)]` -/
def P10126805624403125607.Spec : Prop :=
  ∀ n, P10126805624403125607.a n = A198849 n

end A198849

/-! ## A198849.P11940597887175632140

`A329115(2*n+1)+Δ[A329115(2*(n+1))]`
-/

namespace A198849.P11940597887175632140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A198849.P11940597887175632140

namespace A198849

/-- `A329115(2*n+1)+Δ[A329115(2*(n+1))]` -/
def P11940597887175632140.Spec : Prop :=
  ∀ n, P11940597887175632140.a n = A198849 n

end A198849

/-! ## A198849.P17883061285330127862

`A329114(2*n+1)+2*A026532(2*n+1)`
-/

namespace A198849.P17883061285330127862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329114 (2 * n + 1) + 2 * A026532 (2 * n + 1)

end

end A198849.P17883061285330127862

namespace A198849

/-- `A329114(2*n+1)+2*A026532(2*n+1)` -/
def P17883061285330127862.Spec : Prop :=
  ∀ n, P17883061285330127862.a n = A198849 n

end A198849

/-!
# A198850: a(n) = 2*8^n - 1.

The programs for A198850, the canonical program `A198850.P12263170785724297492` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198850 has offset 0).

The definition of A198850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*8^n-1` (program `A198850.P12263170785724297492`, by `A198850.P12263170785724297492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198850.P12263170785724297492

`2*8^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198850

/-- `2*8^n-1` -/
def P12263170785724297492.Spec : Prop :=
  ∀ n, P12263170785724297492.a n = A198850 n

theorem P12263170785724297492.correct : P12263170785724297492.Spec := by
  intro n
  simp only [A198850]

end A198850

/-! ## A198850.P17212020113708068496

`xor(-2*8^n, -1)`
-/

namespace A198850.P17212020113708068496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 * 8 ^ n : ℤ)) (-1)

end

end A198850.P17212020113708068496

namespace A198850

/-- `xor(-2*8^n, -1)` -/
def P17212020113708068496.Spec : Prop :=
  ∀ n, P17212020113708068496.a n = A198850 n

end A198850

/-! ## A198850.P10657242753801498039

`or(7, 8*a(n-1))` with `a(0)=1`
-/

namespace A198850.P10657242753801498039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 7 (8 * a (n - 1))

end

end A198850.P10657242753801498039

namespace A198850

/-- `or(7, 8*a(n-1))` -/
def P10657242753801498039.Spec : Prop :=
  ∀ n, (P10657242753801498039.a n : ℤ) = A198850 n

end A198850

/-! ## A198850.P1987370302501488289

`or(7, lcm(8, a(n-1)))` with `a(0)=1`
-/

namespace A198850.P1987370302501488289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 7 (Nat.lcm 8 (a (n - 1)))

end

end A198850.P1987370302501488289

namespace A198850

/-- `or(7, lcm(8, a(n-1)))` -/
def P1987370302501488289.Spec : Prop :=
  ∀ n, (P1987370302501488289.a n : ℤ) = A198850 n

end A198850

/-! ## A198850.P5766261197478500898

`∑[8*a(n-1)]` with `a(0)=1, a(1)=14`
-/

namespace A198850.P5766261197478500898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198850.P5766261197478500898

namespace A198850

/-- `∑[8*a(n-1)]` -/
def P5766261197478500898.Spec : Prop :=
  ∀ n, (P5766261197478500898.a n : ℤ) = A198850 n

end A198850

/-! ## A198850.P18034666879198198056

`or(8^n-1, 8^n)`
-/

namespace A198850.P18034666879198198056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((8 ^ n : ℤ) - 1) (8 ^ n : ℤ)

end

end A198850.P18034666879198198056

namespace A198850

/-- `or(8^n-1, 8^n)` -/
def P18034666879198198056.Spec : Prop :=
  ∀ n, P18034666879198198056.a n = A198850 n

end A198850

/-! ## A198850.P2382541201303539463

`8*(a(n-1)+7/8)` with `a(0)=1`
-/

namespace A198850.P2382541201303539463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  8 * (a (n - 1) + (7 : ℚ) / 8)

end

end A198850.P2382541201303539463

namespace A198850

/-- `8*(a(n-1)+7/8)` -/
def P2382541201303539463.Spec : Prop :=
  ∀ n, P2382541201303539463.a n = (A198850 n : ℚ)

theorem P2382541201303539463.correct : P2382541201303539463.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198850, Nat.add_sub_cancel, A198850.P2382541201303539463.a, A198850.P12263170785724297492.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198850, Nat.add_sub_cancel, A198850.P2382541201303539463.a, A198850.P12263170785724297492.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198850

/-! ## A198850.P7024866629095485980

`floor(a(n-1)+7*(a(n-1)+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A198850.P7024866629095485980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 7 * (a (n - 1) + 1)

end

end A198850.P7024866629095485980

namespace A198850

/-- `floor(a(n-1)+7*(a(n-1)+1))` -/
def P7024866629095485980.Spec : Prop :=
  ∀ n, (P7024866629095485980.a n : ℤ) = A198850 n

theorem P7024866629095485980.correct : P7024866629095485980.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198850, Nat.add_sub_cancel, A198850.P7024866629095485980.a, A198850.P12263170785724297492.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198850, Nat.add_sub_cancel, A198850.P7024866629095485980.a, A198850.P12263170785724297492.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198850

/-! ## A198850.P1467754095226991046

`A126646(3*n)`
-/

namespace A198850.P1467754095226991046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (3 * n)

end

end A198850.P1467754095226991046

namespace A198850

/-- `A126646(3*n)` -/
def P1467754095226991046.Spec : Prop :=
  ∀ n, P1467754095226991046.a n = A198850 n

end A198850

/-! ## A198850.P7613711098070438490

`A186575(3*n)`
-/

namespace A198850.P7613711098070438490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186575 (3 * n)

end

end A198850.P7613711098070438490

namespace A198850

/-- `A186575(3*n)` -/
def P7613711098070438490.Spec : Prop :=
  ∀ n, P7613711098070438490.a n = A198850 n

end A198850

/-! ## A198850.P14646329443364593234

`A286521(3*n)`
-/

namespace A198850.P14646329443364593234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286521 (3 * n)

end

end A198850.P14646329443364593234

namespace A198850

/-- `A286521(3*n)` -/
def P14646329443364593234.Spec : Prop :=
  ∀ n, P14646329443364593234.a n = A198850 n

end A198850

/-! ## A198850.P6462455640139453482

`A290836(3*n)`
-/

namespace A198850.P6462455640139453482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290836 (3 * n)

end

end A198850.P6462455640139453482

namespace A198850

/-- `A290836(3*n)` -/
def P6462455640139453482.Spec : Prop :=
  ∀ n, P6462455640139453482.a n = A198850 n

end A198850

/-! ## A198850.P131483144684654644

`A290837(3*n)`
-/

namespace A198850.P131483144684654644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290837 (3 * n)

end

end A198850.P131483144684654644

namespace A198850

/-- `A290837(3*n)` -/
def P131483144684654644.Spec : Prop :=
  ∀ n, P131483144684654644.a n = A198850 n

end A198850

/-! ## A198850.P1770255649439799227

`A052551(6*n)`
-/

namespace A198850.P1770255649439799227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (6 * n)

end

end A198850.P1770255649439799227

namespace A198850

/-- `A052551(6*n)` -/
def P1770255649439799227.Spec : Prop :=
  ∀ n, P1770255649439799227.a n = A198850 n

end A198850

/-! ## A198850.P6326936516053575717

`A052955(6*n)`
-/

namespace A198850.P6326936516053575717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (6 * n)

end

end A198850.P6326936516053575717

namespace A198850

/-- `A052955(6*n)` -/
def P6326936516053575717.Spec : Prop :=
  ∀ n, P6326936516053575717.a n = A198850 n

end A198850

/-! ## A198850.P3377588411388839106

`A056007(6*n)`
-/

namespace A198850.P3377588411388839106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056007 (6 * n)

end

end A198850.P3377588411388839106

namespace A198850

/-- `A056007(6*n)` -/
def P3377588411388839106.Spec : Prop :=
  ∀ n, P3377588411388839106.a n = A198850 n

end A198850

/-! ## A198850.P11398714914624805394

`A075427(6*n)`
-/

namespace A198850.P11398714914624805394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (6 * n)

end

end A198850.P11398714914624805394

namespace A198850

/-- `A075427(6*n)` -/
def P11398714914624805394.Spec : Prop :=
  ∀ n, P11398714914624805394.a n = A198850 n

end A198850

/-! ## A198850.P1347803572625186959

`A077896(6*n)`
-/

namespace A198850.P1347803572625186959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (6 * n)

end

end A198850.P1347803572625186959

namespace A198850

/-- `A077896(6*n)` -/
def P1347803572625186959.Spec : Prop :=
  ∀ n, P1347803572625186959.a n = A198850 n

end A198850

/-! ## A198850.P15235720428452849503

`A086341(6*n)`
-/

namespace A198850.P15235720428452849503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086341 (6 * n)

end

end A198850.P15235720428452849503

namespace A198850

/-- `A086341(6*n)` -/
def P15235720428452849503.Spec : Prop :=
  ∀ n, P15235720428452849503.a n = A198850 n

end A198850

/-!
# A198851: a(n) = 3*8^n-1.

The programs for A198851, the canonical program `A198851.P14219506504025626034` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198851 has offset 0).

The definition of A198851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*8^n-1` (program `A198851.P14219506504025626034`, by `A198851.P14219506504025626034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198851.P14219506504025626034

`3*8^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198851

/-- `3*8^n-1` -/
def P14219506504025626034.Spec : Prop :=
  ∀ n, P14219506504025626034.a n = A198851 n

theorem P14219506504025626034.correct : P14219506504025626034.Spec := by
  intro n
  simp only [A198851]

end A198851

/-! ## A198851.P3709633572738558264

`or(7, 8*a(n-1))` with `a(0)=2`
-/

namespace A198851.P3709633572738558264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 7 (8 * a (n - 1))

end

end A198851.P3709633572738558264

namespace A198851

/-- `or(7, 8*a(n-1))` -/
def P3709633572738558264.Spec : Prop :=
  ∀ n, (P3709633572738558264.a n : ℤ) = A198851 n

end A198851

/-! ## A198851.P17586422953572107000

`xor(7, 8*a(n-1))` with `a(0)=2`
-/

namespace A198851.P17586422953572107000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 7 (8 * a (n - 1))

end

end A198851.P17586422953572107000

namespace A198851

/-- `xor(7, 8*a(n-1))` -/
def P17586422953572107000.Spec : Prop :=
  ∀ n, (P17586422953572107000.a n : ℤ) = A198851 n

end A198851

/-! ## A198851.P12968962851158065220

`∑[8*a(n-1)]` with `a(0)=2, a(1)=21`
-/

namespace A198851.P12968962851158065220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 21] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198851.P12968962851158065220

namespace A198851

/-- `∑[8*a(n-1)]` -/
def P12968962851158065220.Spec : Prop :=
  ∀ n, (P12968962851158065220.a n : ℤ) = A198851 n

end A198851

/-! ## A198851.P5272589554412055700

`A153893(3*n)`
-/

namespace A198851.P5272589554412055700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (3 * n)

end

end A198851.P5272589554412055700

namespace A198851

/-- `A153893(3*n)` -/
def P5272589554412055700.Spec : Prop :=
  ∀ n, P5272589554412055700.a n = A198851 n

end A198851

/-! ## A198851.P18031039826572777205

`A055010(3*n+1)`
-/

namespace A198851.P18031039826572777205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (3 * n + 1)

end

end A198851.P18031039826572777205

namespace A198851

/-- `A055010(3*n+1)` -/
def P18031039826572777205.Spec : Prop :=
  ∀ n, P18031039826572777205.a n = A198851 n

end A198851

/-! ## A198851.P9018974704425187728

`A083329(3*n+1)`
-/

namespace A198851.P9018974704425187728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (3 * n + 1)

end

end A198851.P9018974704425187728

namespace A198851

/-- `A083329(3*n+1)` -/
def P9018974704425187728.Spec : Prop :=
  ∀ n, P9018974704425187728.a n = A198851 n

end A198851

/-! ## A198851.P17568908234111781044

`A266550(3*(n+1))`
-/

namespace A198851.P17568908234111781044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (3 * (n + 1))

end

end A198851.P17568908234111781044

namespace A198851

/-- `A266550(3*(n+1))` -/
def P17568908234111781044.Spec : Prop :=
  ∀ n, P17568908234111781044.a n = A198851 n

end A198851

/-! ## A198851.P12572159205923649535

`A052955(6*n+1)`
-/

namespace A198851.P12572159205923649535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (6 * n + 1)

end

end A198851.P12572159205923649535

namespace A198851

/-- `A052955(6*n+1)` -/
def P12572159205923649535.Spec : Prop :=
  ∀ n, P12572159205923649535.a n = A198851 n

end A198851

/-! ## A198851.P5255997497685025578

`abs(1-A007283(3*n))`
-/

namespace A198851.P5255997497685025578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A007283 (3 * n)|

end

end A198851.P5255997497685025578

namespace A198851

/-- `abs(1-A007283(3*n))` -/
def P5255997497685025578.Spec : Prop :=
  ∀ n, P5255997497685025578.a n = A198851 n

end A198851

/-! ## A198851.P1329417447050031695

`A097581(4*n+1+2*n)`
-/

namespace A198851.P1329417447050031695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097581 (4 * n + 1 + 2 * n)

end

end A198851.P1329417447050031695

namespace A198851

/-- `A097581(4*n+1+2*n)` -/
def P1329417447050031695.Spec : Prop :=
  ∀ n, P1329417447050031695.a n = A198851 n

end A198851

/-! ## A198851.P4927081197773548767

`A003073(A017197(n))`
-/

namespace A198851.P4927081197773548767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003073 (A017197 n).toNat

end

end A198851.P4927081197773548767

namespace A198851

/-- `A003073(A017197(n))` -/
def P4927081197773548767.Spec : Prop :=
  ∀ n, P4927081197773548767.a n = A198851 n

end A198851

/-! ## A198851.P8019412477240852330

`A081026(A016933(n))`
-/

namespace A198851.P8019412477240852330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081026 (A016933 n).toNat

end

end A198851.P8019412477240852330

namespace A198851

/-- `A081026(A016933(n))` -/
def P8019412477240852330.Spec : Prop :=
  ∀ n, P8019412477240852330.a n = A198851 n

end A198851

/-! ## A198851.P7963196585629866421

`A165804(A017017(n))`
-/

namespace A198851.P7963196585629866421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165804 (A017017 n).toNat

end

end A198851.P7963196585629866421

namespace A198851

/-- `A165804(A017017(n))` -/
def P7963196585629866421.Spec : Prop :=
  ∀ n, P7963196585629866421.a n = A198851 n

end A198851

/-! ## A198851.P11675794258583148928

`A385396(A063098(n+1))`
-/

namespace A198851.P11675794258583148928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (A063098 (n + 1)).toNat

end

end A198851.P11675794258583148928

namespace A198851

/-- `A385396(A063098(n+1))` -/
def P11675794258583148928.Spec : Prop :=
  ∀ n, P11675794258583148928.a n = A198851 n

end A198851

/-! ## A198851.P14833728550107758641

`A083416(A016957(n)-2)`
-/

namespace A198851.P14833728550107758641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083416 (A016957 n - 2).toNat

end

end A198851.P14833728550107758641

namespace A198851

/-- `A083416(A016957(n)-2)` -/
def P14833728550107758641.Spec : Prop :=
  ∀ n, P14833728550107758641.a n = A198851 n

end A198851

/-! ## A198851.P13078020046926135980

`A165804(A017041(n)-2)`
-/

namespace A198851.P13078020046926135980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165804 (A017041 n - 2).toNat

end

end A198851.P13078020046926135980

namespace A198851

/-- `A165804(A017041(n)-2)` -/
def P13078020046926135980.Spec : Prop :=
  ∀ n, P13078020046926135980.a n = A198851 n

end A198851

/-! ## A198851.P18252527813815104453

`(A198854(n)-1)/2`
-/

namespace A198851.P18252527813815104453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198854 n - 1 : ℚ) / 2

end

end A198851.P18252527813815104453

namespace A198851

/-- `(A198854(n)-1)/2` -/
def P18252527813815104453.Spec : Prop :=
  ∀ n, P18252527813815104453.a n = (A198851 n : ℚ)

end A198851

/-!
# A198852: a(n) = 4*8^n - 1.

The programs for A198852, the canonical program `A198852.P6026599190474071269` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198852 has offset 0).

The definition of A198852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*8^n-1` (program `A198852.P6026599190474071269`, by `A198852.P6026599190474071269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198852.P6026599190474071269

`4*8^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198852

/-- `4*8^n-1` -/
def P6026599190474071269.Spec : Prop :=
  ∀ n, P6026599190474071269.a n = A198852 n

theorem P6026599190474071269.correct : P6026599190474071269.Spec := by
  intro n
  simp only [A198852]

end A198852

/-! ## A198852.P8784690086965715162

`or(7, 8*a(n-1))` with `a(0)=3`
-/

namespace A198852.P8784690086965715162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 7 (8 * a (n - 1))

end

end A198852.P8784690086965715162

namespace A198852

/-- `or(7, 8*a(n-1))` -/
def P8784690086965715162.Spec : Prop :=
  ∀ n, (P8784690086965715162.a n : ℤ) = A198852 n

end A198852

/-! ## A198852.P5954748476588371205

`xor(7, 8*a(n-1))` with `a(0)=3`
-/

namespace A198852.P5954748476588371205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 7 (8 * a (n - 1))

end

end A198852.P5954748476588371205

namespace A198852

/-- `xor(7, 8*a(n-1))` -/
def P5954748476588371205.Spec : Prop :=
  ∀ n, (P5954748476588371205.a n : ℤ) = A198852 n

end A198852

/-! ## A198852.P4446780177701132179

`or(7, lcm(8, a(n-1)))` with `a(0)=3`
-/

namespace A198852.P4446780177701132179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 7 (Nat.lcm 8 (a (n - 1)))

end

end A198852.P4446780177701132179

namespace A198852

/-- `or(7, lcm(8, a(n-1)))` -/
def P4446780177701132179.Spec : Prop :=
  ∀ n, (P4446780177701132179.a n : ℤ) = A198852 n

end A198852

/-! ## A198852.P12080839751607587847

`∑[8*a(n-1)]` with `a(0)=3, a(1)=28`
-/

namespace A198852.P12080839751607587847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 28] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198852.P12080839751607587847

namespace A198852

/-- `∑[8*a(n-1)]` -/
def P12080839751607587847.Spec : Prop :=
  ∀ n, (P12080839751607587847.a n : ℤ) = A198852 n

end A198852

/-! ## A198852.P11845045109587964474

`A126646(3*n+1)`
-/

namespace A198852.P11845045109587964474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (3 * n + 1)

end

end A198852.P11845045109587964474

namespace A198852

/-- `A126646(3*n+1)` -/
def P11845045109587964474.Spec : Prop :=
  ∀ n, P11845045109587964474.a n = A198852 n

end A198852

/-! ## A198852.P10062112719477395695

`A186575(3*n+1)`
-/

namespace A198852.P10062112719477395695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186575 (3 * n + 1)

end

end A198852.P10062112719477395695

namespace A198852

/-- `A186575(3*n+1)` -/
def P10062112719477395695.Spec : Prop :=
  ∀ n, P10062112719477395695.a n = A198852 n

end A198852

/-! ## A198852.P12351422865843464487

`A286521(3*n+1)`
-/

namespace A198852.P12351422865843464487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286521 (3 * n + 1)

end

end A198852.P12351422865843464487

namespace A198852

/-- `A286521(3*n+1)` -/
def P12351422865843464487.Spec : Prop :=
  ∀ n, P12351422865843464487.a n = A198852 n

end A198852

/-! ## A198852.P18343295201889415494

`A000225(3*n+2)`
-/

namespace A198852.P18343295201889415494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (3 * n + 2)

end

end A198852.P18343295201889415494

namespace A198852

/-- `A000225(3*n+2)` -/
def P18343295201889415494.Spec : Prop :=
  ∀ n, P18343295201889415494.a n = A198852 n

end A198852

/-! ## A198852.P13091990934311404950

`A213245(3*n+2)`
-/

namespace A198852.P13091990934311404950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213245 (3 * n + 2)

end

end A198852.P13091990934311404950

namespace A198852

/-- `A213245(3*n+2)` -/
def P13091990934311404950.Spec : Prop :=
  ∀ n, P13091990934311404950.a n = A198852 n

end A198852

/-! ## A198852.P7284367957351822426

`A213248(3*n+2)`
-/

namespace A198852.P7284367957351822426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213248 (3 * n + 2)

end

end A198852.P7284367957351822426

namespace A198852

/-- `A213248(3*n+2)` -/
def P7284367957351822426.Spec : Prop :=
  ∀ n, P7284367957351822426.a n = A198852 n

end A198852

/-! ## A198852.P16081360633223513180

`A255047(3*n+2)`
-/

namespace A198852.P16081360633223513180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (3 * n + 2)

end

end A198852.P16081360633223513180

namespace A198852

/-- `A255047(3*n+2)` -/
def P16081360633223513180.Spec : Prop :=
  ∀ n, P16081360633223513180.a n = A198852 n

end A198852

/-! ## A198852.P3638982820512633020

`A116601(6*(n+1))`
-/

namespace A198852.P3638982820512633020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (6 * (n + 1))

end

end A198852.P3638982820512633020

namespace A198852

/-- `A116601(6*(n+1))` -/
def P3638982820512633020.Spec : Prop :=
  ∀ n, P3638982820512633020.a n = A198852 n

end A198852

/-! ## A198852.P10520384653116736545

`A239678(3*n+4)`
-/

namespace A198852.P10520384653116736545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239678 (3 * n + 4)

end

end A198852.P10520384653116736545

namespace A198852

/-- `A239678(3*n+4)` -/
def P10520384653116736545.Spec : Prop :=
  ∀ n, P10520384653116736545.a n = A198852 n

end A198852

/-! ## A198852.P17861372670990032235

`A052551(6*n+2)`
-/

namespace A198852.P17861372670990032235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (6 * n + 2)

end

end A198852.P17861372670990032235

namespace A198852

/-- `A052551(6*n+2)` -/
def P17861372670990032235.Spec : Prop :=
  ∀ n, P17861372670990032235.a n = A198852 n

end A198852

/-! ## A198852.P11001751044872303489

`A075427(6*n+2)`
-/

namespace A198852.P11001751044872303489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (6 * n + 2)

end

end A198852.P11001751044872303489

namespace A198852

/-- `A075427(6*n+2)` -/
def P11001751044872303489.Spec : Prop :=
  ∀ n, P11001751044872303489.a n = A198852 n

end A198852

/-! ## A198852.P6791331600116473342

`A087100(6*n+3)`
-/

namespace A198852.P6791331600116473342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087100 (6 * n + 3)

end

end A198852.P6791331600116473342

namespace A198852

/-- `A087100(6*n+3)` -/
def P6791331600116473342.Spec : Prop :=
  ∀ n, P6791331600116473342.a n = A198852 n

end A198852

/-!
# A198853: a(n) = 5*8^n - 1.

The programs for A198853, the canonical program `A198853.P18265129350458378544` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198853 has offset 0).

The definition of A198853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*8^n-1` (program `A198853.P18265129350458378544`, by `A198853.P18265129350458378544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198853.P18265129350458378544

`5*8^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198853

/-- `5*8^n-1` -/
def P18265129350458378544.Spec : Prop :=
  ∀ n, P18265129350458378544.a n = A198853 n

theorem P18265129350458378544.correct : P18265129350458378544.Spec := by
  intro n
  simp only [A198853]

end A198853

/-! ## A198853.P2208413815781342317

`or(7, 8*a(n-1))` with `a(0)=4`
-/

namespace A198853.P2208413815781342317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 7 (8 * a (n - 1))

end

end A198853.P2208413815781342317

namespace A198853

/-- `or(7, 8*a(n-1))` -/
def P2208413815781342317.Spec : Prop :=
  ∀ n, (P2208413815781342317.a n : ℤ) = A198853 n

end A198853

/-! ## A198853.P4309462942092937167

`xor(7, 8*a(n-1))` with `a(0)=4`
-/

namespace A198853.P4309462942092937167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor 7 (8 * a (n - 1))

end

end A198853.P4309462942092937167

namespace A198853

/-- `xor(7, 8*a(n-1))` -/
def P4309462942092937167.Spec : Prop :=
  ∀ n, (P4309462942092937167.a n : ℤ) = A198853 n

end A198853

/-! ## A198853.P5749112281918027163

`∑[8*a(n-1)]` with `a(0)=4, a(1)=35`
-/

namespace A198853.P5749112281918027163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 35] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198853.P5749112281918027163

namespace A198853

/-- `∑[8*a(n-1)]` -/
def P5749112281918027163.Spec : Prop :=
  ∀ n, (P5749112281918027163.a n : ℤ) = A198853 n

end A198853

/-! ## A198853.P12733856566895372795

`A153894(3*n)`
-/

namespace A198853.P12733856566895372795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 (3 * n)

end

end A198853.P12733856566895372795

namespace A198853

/-- `A153894(3*n)` -/
def P12733856566895372795.Spec : Prop :=
  ∀ n, P12733856566895372795.a n = A198853 n

end A198853

/-! ## A198853.P10511424220056891863

`A010737(6*n)`
-/

namespace A198853.P10511424220056891863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (6 * n)

end

end A198853.P10511424220056891863

namespace A198853

/-- `A010737(6*n)` -/
def P10511424220056891863.Spec : Prop :=
  ∀ n, P10511424220056891863.a n = A198853 n

end A198853

/-! ## A198853.P7939994623564774209

`A052549(3*n+1)`
-/

namespace A198853.P7939994623564774209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 (3 * n + 1)

end

end A198853.P7939994623564774209

namespace A198853

/-- `A052549(3*n+1)` -/
def P7939994623564774209.Spec : Prop :=
  ∀ n, P7939994623564774209.a n = A198853 n

end A198853

/-! ## A198853.P15192895876526099630

`A054135(3*n+2)`
-/

namespace A198853.P15192895876526099630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054135 (3 * n + 2)

end

end A198853.P15192895876526099630

namespace A198853

/-- `A054135(3*n+2)` -/
def P15192895876526099630.Spec : Prop :=
  ∀ n, P15192895876526099630.a n = A198853 n

end A198853

/-! ## A198853.P1852519747048799758

`(A198857(n)-1)/2`
-/

namespace A198853.P1852519747048799758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198857 n - 1 : ℚ) / 2

end

end A198853.P1852519747048799758

namespace A198853

/-- `(A198857(n)-1)/2` -/
def P1852519747048799758.Spec : Prop :=
  ∀ n, P1852519747048799758.a n = (A198853 n : ℚ)

end A198853

/-! ## A198853.P14632168926621877731

`(A199557(n)-3)/2`
-/

namespace A198853.P14632168926621877731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199557 n - 3 : ℚ) / 2

end

end A198853.P14632168926621877731

namespace A198853

/-- `(A199557(n)-3)/2` -/
def P14632168926621877731.Spec : Prop :=
  ∀ n, P14632168926621877731.a n = (A198853 n : ℚ)

end A198853

/-! ## A198853.P17179385847586869196

`abs(A020714(3*n)-1)`
-/

namespace A198853.P17179385847586869196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020714 (3 * n) - 1|

end

end A198853.P17179385847586869196

namespace A198853

/-- `abs(A020714(3*n)-1)` -/
def P17179385847586869196.Spec : Prop :=
  ∀ n, P17179385847586869196.a n = A198853 n

end A198853

/-! ## A198853.P15731857163179929291

`A131051(3*(n+1))/2`
-/

namespace A198853.P15731857163179929291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131051 (3 * (n + 1)) : ℚ) / 2

end

end A198853.P15731857163179929291

namespace A198853

/-- `A131051(3*(n+1))/2` -/
def P15731857163179929291.Spec : Prop :=
  ∀ n, P15731857163179929291.a n = (A198853 n : ℚ)

end A198853

/-! ## A198853.P5294325023248702245

`A134062(3*n+1)/2`
-/

namespace A198853.P5294325023248702245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134062 (3 * n + 1) : ℚ) / 2

end

end A198853.P5294325023248702245

namespace A198853

/-- `A134062(3*n+1)/2` -/
def P5294325023248702245.Spec : Prop :=
  ∀ n, P5294325023248702245.a n = (A198853 n : ℚ)

end A198853

/-! ## A198853.P13475497015132225628

`A270810(3*n+4)/4`
-/

namespace A198853.P13475497015132225628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270810 (3 * n + 4) : ℚ) / 4

end

end A198853.P13475497015132225628

namespace A198853

/-- `A270810(3*n+4)/4` -/
def P13475497015132225628.Spec : Prop :=
  ∀ n, P13475497015132225628.a n = (A198853 n : ℚ)

end A198853

/-! ## A198853.P2902005366376819541

`abs(5*A000079(3*n)-1)`
-/

namespace A198853.P2902005366376819541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A000079 (3 * n) - 1|

end

end A198853.P2902005366376819541

namespace A198853

/-- `abs(5*A000079(3*n)-1)` -/
def P2902005366376819541.Spec : Prop :=
  ∀ n, P2902005366376819541.a n = A198853 n

end A198853

/-! ## A198853.P2099736532835136372

`A165804(A017041(n))`
-/

namespace A198853.P2099736532835136372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165804 (A017041 n).toNat

end

end A198853.P2099736532835136372

namespace A198853

/-- `A165804(A017041(n))` -/
def P2099736532835136372.Spec : Prop :=
  ∀ n, P2099736532835136372.a n = A198853 n

end A198853

/-! ## A198853.P1228510413836335889

`A385396(A017581(n))`
-/

namespace A198853.P1228510413836335889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (A017581 n).toNat

end

end A198853.P1228510413836335889

namespace A198853

/-- `A385396(A017581(n))` -/
def P1228510413836335889.Spec : Prop :=
  ∀ n, P1228510413836335889.a n = A198853 n

end A198853

/-!
# A198854: a(n) = 6*8^n-1.

The programs for A198854, the canonical program `A198854.P17957750961830901507` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198854 has offset 0).

The definition of A198854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*8^n-1` (program `A198854.P17957750961830901507`, by `A198854.P17957750961830901507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198854.P17957750961830901507

`6*8^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198854

/-- `6*8^n-1` -/
def P17957750961830901507.Spec : Prop :=
  ∀ n, P17957750961830901507.a n = A198854 n

theorem P17957750961830901507.correct : P17957750961830901507.Spec := by
  intro n
  simp only [A198854]

end A198854

/-! ## A198854.P6731214007517627892

`or(7, 8*a(n-1))` with `a(0)=5`
-/

namespace A198854.P6731214007517627892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lor 7 (8 * a (n - 1))

end

end A198854.P6731214007517627892

namespace A198854

/-- `or(7, 8*a(n-1))` -/
def P6731214007517627892.Spec : Prop :=
  ∀ n, (P6731214007517627892.a n : ℤ) = A198854 n

end A198854

/-! ## A198854.P8300925855223296260

`xor(7, 8*a(n-1))` with `a(0)=5`
-/

namespace A198854.P8300925855223296260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.xor 7 (8 * a (n - 1))

end

end A198854.P8300925855223296260

namespace A198854

/-- `xor(7, 8*a(n-1))` -/
def P8300925855223296260.Spec : Prop :=
  ∀ n, (P8300925855223296260.a n : ℤ) = A198854 n

end A198854

/-! ## A198854.P13778871702799022945

`or(7, lcm(8, a(n-1)))` with `a(0)=5`
-/

namespace A198854.P13778871702799022945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lor 7 (Nat.lcm 8 (a (n - 1)))

end

end A198854.P13778871702799022945

namespace A198854

/-- `or(7, lcm(8, a(n-1)))` -/
def P13778871702799022945.Spec : Prop :=
  ∀ n, (P13778871702799022945.a n : ℤ) = A198854 n

end A198854

/-! ## A198854.P4787803403696268651

`∑[8*a(n-1)]` with `a(0)=5, a(1)=42`
-/

namespace A198854.P4787803403696268651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 42] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198854.P4787803403696268651

namespace A198854

/-- `∑[8*a(n-1)]` -/
def P4787803403696268651.Spec : Prop :=
  ∀ n, (P4787803403696268651.a n : ℤ) = A198854 n

end A198854

/-! ## A198854.P8623159541339738131

`abs(8*a(n-1)+7)` with `a(0)=5`
-/

namespace A198854.P8623159541339738131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  8 * a (n - 1) + 7

end

end A198854.P8623159541339738131

namespace A198854

/-- `abs(8*a(n-1)+7)` -/
def P8623159541339738131.Spec : Prop :=
  ∀ n, (P8623159541339738131.a n : ℤ) = A198854 n

theorem P8623159541339738131.correct : P8623159541339738131.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198854, Nat.add_sub_cancel, A198854.P8623159541339738131.a, A198854.P17957750961830901507.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198854, Nat.add_sub_cancel, A198854.P8623159541339738131.a, A198854.P17957750961830901507.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198854

/-! ## A198854.P9054958944573587892

`8*(a(n-1)+7/8)` with `a(0)=5`
-/

namespace A198854.P9054958944573587892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  8 * (a (n - 1) + (7 : ℚ) / 8)

end

end A198854.P9054958944573587892

namespace A198854

/-- `8*(a(n-1)+7/8)` -/
def P9054958944573587892.Spec : Prop :=
  ∀ n, P9054958944573587892.a n = (A198854 n : ℚ)

theorem P9054958944573587892.correct : P9054958944573587892.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198854, Nat.add_sub_cancel, A198854.P9054958944573587892.a, A198854.P17957750961830901507.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198854, Nat.add_sub_cancel, A198854.P9054958944573587892.a, A198854.P17957750961830901507.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198854

/-! ## A198854.P16821187283719837264

`floor(a(n-1)+7*(a(n-1)+1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A198854.P16821187283719837264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 7 * (a (n - 1) + 1)

end

end A198854.P16821187283719837264

namespace A198854

/-- `floor(a(n-1)+7*(a(n-1)+1))` -/
def P16821187283719837264.Spec : Prop :=
  ∀ n, (P16821187283719837264.a n : ℤ) = A198854 n

theorem P16821187283719837264.correct : P16821187283719837264.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198854, Nat.add_sub_cancel, A198854.P16821187283719837264.a, A198854.P17957750961830901507.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198854, Nat.add_sub_cancel, A198854.P16821187283719837264.a, A198854.P17957750961830901507.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198854

/-! ## A198854.P816283400997886757

`A052940(3*n+1)`
-/

namespace A198854.P816283400997886757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 (3 * n + 1)

end

end A198854.P816283400997886757

namespace A198854

/-- `A052940(3*n+1)` -/
def P816283400997886757.Spec : Prop :=
  ∀ n, P816283400997886757.a n = A198854 n

end A198854

/-! ## A198854.P6190963830262237926

`A153893(3*n+1)`
-/

namespace A198854.P6190963830262237926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (3 * n + 1)

end

end A198854.P6190963830262237926

namespace A198854

/-- `A153893(3*n+1)` -/
def P6190963830262237926.Spec : Prop :=
  ∀ n, P6190963830262237926.a n = A198854 n

end A198854

/-! ## A198854.P11360189860400102847

`A055010(3*n+2)`
-/

namespace A198854.P11360189860400102847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (3 * n + 2)

end

end A198854.P11360189860400102847

namespace A198854

/-- `A055010(3*n+2)` -/
def P11360189860400102847.Spec : Prop :=
  ∀ n, P11360189860400102847.a n = A198854 n

end A198854

/-! ## A198854.P13540693430999692592

`A083329(3*n+2)`
-/

namespace A198854.P13540693430999692592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (3 * n + 2)

end

end A198854.P13540693430999692592

namespace A198854

/-- `A083329(3*n+2)` -/
def P13540693430999692592.Spec : Prop :=
  ∀ n, P13540693430999692592.a n = A198854 n

end A198854

/-! ## A198854.P1416876656941763048

`A290114(3*n+2)`
-/

namespace A198854.P1416876656941763048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 (3 * n + 2)

end

end A198854.P1416876656941763048

namespace A198854

/-- `A290114(3*n+2)` -/
def P1416876656941763048.Spec : Prop :=
  ∀ n, P1416876656941763048.a n = A198854 n

end A198854

/-! ## A198854.P3793854447724441840

`A052955(6*n+3)`
-/

namespace A198854.P3793854447724441840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (6 * n + 3)

end

end A198854.P3793854447724441840

namespace A198854

/-- `A052955(6*n+3)` -/
def P3793854447724441840.Spec : Prop :=
  ∀ n, P3793854447724441840.a n = A198854 n

end A198854

/-! ## A198854.P9263756000314273887

`A097581(6*n+3)`
-/

namespace A198854.P9263756000314273887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097581 (6 * n + 3)

end

end A198854.P9263756000314273887

namespace A198854

/-- `A097581(6*n+3)` -/
def P9263756000314273887.Spec : Prop :=
  ∀ n, P9263756000314273887.a n = A198854 n

end A198854

/-! ## A198854.P14825587163794802305

`A266550(3*(n+1)+1)`
-/

namespace A198854.P14825587163794802305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (3 * (n + 1) + 1)

end

end A198854.P14825587163794802305

namespace A198854

/-- `A266550(3*(n+1)+1)` -/
def P14825587163794802305.Spec : Prop :=
  ∀ n, P14825587163794802305.a n = A198854 n

end A198854

/-! ## A198854.P6885478422569114418

`A296953(3*(n+1))/2`
-/

namespace A198854.P6885478422569114418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296953 (3 * (n + 1)) : ℚ) / 2

end

end A198854.P6885478422569114418

namespace A198854

/-- `A296953(3*(n+1))/2` -/
def P6885478422569114418.Spec : Prop :=
  ∀ n, P6885478422569114418.a n = (A198854 n : ℚ)

end A198854

/-! ## A198854.P2184703410539786602

`A369491(3*(n+1))/2`
-/

namespace A198854.P2184703410539786602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369491 (3 * (n + 1)) : ℚ) / 2

end

end A198854.P2184703410539786602

namespace A198854

/-- `A369491(3*(n+1))/2` -/
def P2184703410539786602.Spec : Prop :=
  ∀ n, P2184703410539786602.a n = (A198854 n : ℚ)

end A198854

/-! ## A198854.P1725449047274913410

`A385396(6*(2*n+1))`
-/

namespace A198854.P1725449047274913410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (6 * (2 * n + 1))

end

end A198854.P1725449047274913410

namespace A198854

/-- `A385396(6*(2*n+1))` -/
def P1725449047274913410.Spec : Prop :=
  ∀ n, P1725449047274913410.a n = A198854 n

end A198854

/-!
# A198855: a(n) = 7*8^n - 1.

The programs for A198855, the canonical program `A198855.P2327602423510526595` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198855 has offset 0).

The definition of A198855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*8^n-1` (program `A198855.P2327602423510526595`, by `A198855.P2327602423510526595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198855.P2327602423510526595

`7*8^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198855

/-- `7*8^n-1` -/
def P2327602423510526595.Spec : Prop :=
  ∀ n, P2327602423510526595.a n = A198855 n

theorem P2327602423510526595.correct : P2327602423510526595.Spec := by
  intro n
  simp only [A198855]

end A198855

/-! ## A198855.P8759640938355629492

`or(7, 8*a(n-1))` with `a(0)=6`
-/

namespace A198855.P8759640938355629492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lor 7 (8 * a (n - 1))

end

end A198855.P8759640938355629492

namespace A198855

/-- `or(7, 8*a(n-1))` -/
def P8759640938355629492.Spec : Prop :=
  ∀ n, (P8759640938355629492.a n : ℤ) = A198855 n

end A198855

/-! ## A198855.P12489419797230213818

`xor(7, 8*a(n-1))` with `a(0)=6`
-/

namespace A198855.P12489419797230213818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.xor 7 (8 * a (n - 1))

end

end A198855.P12489419797230213818

namespace A198855

/-- `xor(7, 8*a(n-1))` -/
def P12489419797230213818.Spec : Prop :=
  ∀ n, (P12489419797230213818.a n : ℤ) = A198855 n

end A198855

/-! ## A198855.P2789529059995671551

`∑[8*a(n-1)]` with `a(0)=6, a(1)=49`
-/

namespace A198855.P2789529059995671551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 49] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198855.P2789529059995671551

namespace A198855

/-- `∑[8*a(n-1)]` -/
def P2789529059995671551.Spec : Prop :=
  ∀ n, (P2789529059995671551.a n : ℤ) = A198855 n

end A198855

/-! ## A198855.P5359780925349973481

`abs(8*a(n-1)+7)` with `a(0)=6`
-/

namespace A198855.P5359780925349973481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  8 * a (n - 1) + 7

end

end A198855.P5359780925349973481

namespace A198855

/-- `abs(8*a(n-1)+7)` -/
def P5359780925349973481.Spec : Prop :=
  ∀ n, (P5359780925349973481.a n : ℤ) = A198855 n

theorem P5359780925349973481.correct : P5359780925349973481.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198855, Nat.add_sub_cancel, A198855.P5359780925349973481.a, A198855.P2327602423510526595.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198855, Nat.add_sub_cancel, A198855.P5359780925349973481.a, A198855.P2327602423510526595.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198855

/-! ## A198855.P4695444712795251351

`8*(a(n-1)+7/8)` with `a(0)=6`
-/

namespace A198855.P4695444712795251351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  8 * (a (n - 1) + (7 : ℚ) / 8)

end

end A198855.P4695444712795251351

namespace A198855

/-- `8*(a(n-1)+7/8)` -/
def P4695444712795251351.Spec : Prop :=
  ∀ n, P4695444712795251351.a n = (A198855 n : ℚ)

theorem P4695444712795251351.correct : P4695444712795251351.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198855, Nat.add_sub_cancel, A198855.P4695444712795251351.a, A198855.P2327602423510526595.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198855, Nat.add_sub_cancel, A198855.P4695444712795251351.a, A198855.P2327602423510526595.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198855

/-! ## A198855.P14397024335608952212

`floor(a(n-1)+7*(a(n-1)+1))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A198855.P14397024335608952212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 7 * (a (n - 1) + 1)

end

end A198855.P14397024335608952212

namespace A198855

/-- `floor(a(n-1)+7*(a(n-1)+1))` -/
def P14397024335608952212.Spec : Prop :=
  ∀ n, (P14397024335608952212.a n : ℤ) = A198855 n

theorem P14397024335608952212.correct : P14397024335608952212.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198855, Nat.add_sub_cancel, A198855.P14397024335608952212.a, A198855.P2327602423510526595.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198855, Nat.add_sub_cancel, A198855.P14397024335608952212.a, A198855.P2327602423510526595.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198855

/-! ## A198855.P11703102489642187785

`Δ[A024089(n)]`
-/

namespace A198855.P11703102489642187785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198855.P11703102489642187785

namespace A198855

/-- `Δ[A024089(n)]` -/
def P11703102489642187785.Spec : Prop :=
  ∀ n, P11703102489642187785.a n = A198855 n

end A198855

/-! ## A198855.P16084671182909683156

`A086224(3*n)`
-/

namespace A198855.P16084671182909683156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 (3 * n)

end

end A198855.P16084671182909683156

namespace A198855

/-- `A086224(3*n)` -/
def P16084671182909683156.Spec : Prop :=
  ∀ n, P16084671182909683156.a n = A198855 n

end A198855

/-! ## A198855.P10016684672479559865

`∑[A055847(n+1)]`
-/

namespace A198855.P10016684672479559865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198855.P10016684672479559865

namespace A198855

/-- `∑[A055847(n+1)]` -/
def P10016684672479559865.Spec : Prop :=
  ∀ n, P10016684672479559865.a n = A198855 n

end A198855

/-! ## A198855.P16636392441081665473

`∑[abs(Δ[A055274(n)])]`
-/

namespace A198855.P16636392441081665473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198855.P16636392441081665473

namespace A198855

/-- `∑[abs(Δ[A055274(n)])]` -/
def P16636392441081665473.Spec : Prop :=
  ∀ n, P16636392441081665473.a n = A198855 n

end A198855

/-! ## A198855.P7004763241225122999

`A267604(3*n+2)`
-/

namespace A198855.P7004763241225122999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 (3 * n + 2)

end

end A198855.P7004763241225122999

namespace A198855

/-- `A267604(3*n+2)` -/
def P7004763241225122999.Spec : Prop :=
  ∀ n, P7004763241225122999.a n = A198855 n

end A198855

/-! ## A198855.P7394195744542487238

`A010737(6*n+1)`
-/

namespace A198855.P7394195744542487238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (6 * n + 1)

end

end A198855.P7394195744542487238

namespace A198855

/-- `A010737(6*n+1)` -/
def P7394195744542487238.Spec : Prop :=
  ∀ n, P7394195744542487238.a n = A198855 n

end A198855

/-! ## A198855.P709159976940550340

`A165804(7*(n+1))`
-/

namespace A198855.P709159976940550340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165804 (7 * (n + 1))

end

end A198855.P709159976940550340

namespace A198855

/-- `A165804(7*(n+1))` -/
def P709159976940550340.Spec : Prop :=
  ∀ n, P709159976940550340.a n = A198855 n

end A198855

/-! ## A198855.P8032201572683383826

`A026622(3*(n+1))/2`
-/

namespace A198855.P8032201572683383826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026622 (3 * (n + 1)) : ℚ) / 2

end

end A198855.P8032201572683383826

namespace A198855

/-- `A026622(3*(n+1))/2` -/
def P8032201572683383826.Spec : Prop :=
  ∀ n, P8032201572683383826.a n = (A198855 n : ℚ)

end A198855

/-! ## A198855.P8923191098316332836

`A385396(A017605(n))`
-/

namespace A198855.P8923191098316332836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (A017605 n).toNat

end

end A198855.P8923191098316332836

namespace A198855

/-- `A385396(A017605(n))` -/
def P8923191098316332836.Spec : Prop :=
  ∀ n, P8923191098316332836.a n = A198855 n

end A198855

/-!
# A198856: a(n) = 9*8^n - 1.

The programs for A198856, the canonical program `A198856.P9243904641892117803` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198856 has offset 0).

The definition of A198856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*8^n-1` (program `A198856.P9243904641892117803`, by `A198856.P9243904641892117803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198856.P9243904641892117803

`9*8^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198856

/-- `9*8^n-1` -/
def P9243904641892117803.Spec : Prop :=
  ∀ n, P9243904641892117803.a n = A198856 n

theorem P9243904641892117803.correct : P9243904641892117803.Spec := by
  intro n
  simp only [A198856]

end A198856

/-! ## A198856.P14633989978837308073

`or(7, 8*a(n-1))` with `a(0)=8`
-/

namespace A198856.P14633989978837308073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  Nat.lor 7 (8 * a (n - 1))

end

end A198856.P14633989978837308073

namespace A198856

/-- `or(7, 8*a(n-1))` -/
def P14633989978837308073.Spec : Prop :=
  ∀ n, (P14633989978837308073.a n : ℤ) = A198856 n

end A198856

/-! ## A198856.P3823111381475451588

`xor(7, 8*a(n-1))` with `a(0)=8`
-/

namespace A198856.P3823111381475451588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  Nat.xor 7 (8 * a (n - 1))

end

end A198856.P3823111381475451588

namespace A198856

/-- `xor(7, 8*a(n-1))` -/
def P3823111381475451588.Spec : Prop :=
  ∀ n, (P3823111381475451588.a n : ℤ) = A198856 n

end A198856

/-! ## A198856.P8377996629486404263

`∑[8*a(n-1)-a(n-1)%7]` with `a(0)=8`
-/

namespace A198856.P8377996629486404263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  8 * f1 (n - 1) - Int.tmod (f1 (n - 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198856.P8377996629486404263

namespace A198856

/-- `∑[8*a(n-1)-a(n-1)%7]` -/
def P8377996629486404263.Spec : Prop :=
  ∀ n, P8377996629486404263.a n = A198856 n

end A198856

/-! ## A198856.P3139003867643375139

`abs(2-A199556(n))`
-/

namespace A198856.P3139003867643375139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199556 n|

end

end A198856.P3139003867643375139

namespace A198856

/-- `abs(2-A199556(n))` -/
def P3139003867643375139.Spec : Prop :=
  ∀ n, P3139003867643375139.a n = A198856 n

end A198856

/-! ## A198856.P7050761648267697730

`Δ[A238276(n)-n]`
-/

namespace A198856.P7050761648267697730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238276 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198856.P7050761648267697730

namespace A198856

/-- `Δ[A238276(n)-n]` -/
def P7050761648267697730.Spec : Prop :=
  ∀ n, P7050761648267697730.a n = A198856 n

end A198856

/-! ## A198856.P1881676707629229775

`∑[abs(Δ[A003951(n)])]`
-/

namespace A198856.P1881676707629229775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198856.P1881676707629229775

namespace A198856

/-- `∑[abs(Δ[A003951(n)])]` -/
def P1881676707629229775.Spec : Prop :=
  ∀ n, P1881676707629229775.a n = A198856 n

end A198856

/-! ## A198856.P732930107797225884

`A052996(3*n+2)`
-/

namespace A198856.P732930107797225884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 (3 * n + 2)

end

end A198856.P732930107797225884

namespace A198856

/-- `A052996(3*n+2)` -/
def P732930107797225884.Spec : Prop :=
  ∀ n, P732930107797225884.a n = A198856 n

end A198856

/-! ## A198856.P9391589214658408152

`Δ[1-n-A165760(n)]`
-/

namespace A198856.P9391589214658408152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) - A165760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198856.P9391589214658408152

namespace A198856

/-- `Δ[1-n-A165760(n)]` -/
def P9391589214658408152.Spec : Prop :=
  ∀ n, P9391589214658408152.a n = A198856 n

end A198856

/-! ## A198856.P7330880648244545679

`∑[A055274(n+1)+A055274(n)]`
-/

namespace A198856.P7330880648244545679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 (n + 1) + A055274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198856.P7330880648244545679

namespace A198856

/-- `∑[A055274(n+1)+A055274(n)]` -/
def P7330880648244545679.Spec : Prop :=
  ∀ n, P7330880648244545679.a n = A198856 n

end A198856

/-! ## A198856.P18089406519827043167

`xor(Δ[A000079(3*n)], A000225(3*n+4))`
-/

namespace A198856.P18089406519827043167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A000225 (3 * n + 4))

end

end A198856.P18089406519827043167

namespace A198856

/-- `xor(Δ[A000079(3*n)], A000225(3*n+4))` -/
def P18089406519827043167.Spec : Prop :=
  ∀ n, P18089406519827043167.a n = A198856 n

end A198856

/-!
# A198857: a(n) = 10*8^n - 1.

The programs for A198857, the canonical program `A198857.P4050123858771107401` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198857 has offset 0).

The definition of A198857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*8^n-1` (program `A198857.P4050123858771107401`, by `A198857.P4050123858771107401.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198857.P4050123858771107401

`10*8^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198857

/-- `10*8^n-1` -/
def P4050123858771107401.Spec : Prop :=
  ∀ n, P4050123858771107401.a n = A198857 n

theorem P4050123858771107401.correct : P4050123858771107401.Spec := by
  intro n
  simp only [A198857]

end A198857

/-! ## A198857.P7214816394633235827

`or(7, 8*a(n-1))` with `a(0)=9`
-/

namespace A198857.P7214816394633235827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.lor 7 (8 * a (n - 1))

end

end A198857.P7214816394633235827

namespace A198857

/-- `or(7, 8*a(n-1))` -/
def P7214816394633235827.Spec : Prop :=
  ∀ n, (P7214816394633235827.a n : ℤ) = A198857 n

end A198857

/-! ## A198857.P17517738763121859235

`xor(7, 8*a(n-1))` with `a(0)=9`
-/

namespace A198857.P17517738763121859235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.xor 7 (8 * a (n - 1))

end

end A198857.P17517738763121859235

namespace A198857

/-- `xor(7, 8*a(n-1))` -/
def P17517738763121859235.Spec : Prop :=
  ∀ n, (P17517738763121859235.a n : ℤ) = A198857 n

end A198857

/-! ## A198857.P14763943297845708836

`or(7, lcm(8, a(n-1)))` with `a(0)=9`
-/

namespace A198857.P14763943297845708836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.lor 7 (Nat.lcm 8 (a (n - 1)))

end

end A198857.P14763943297845708836

namespace A198857

/-- `or(7, lcm(8, a(n-1)))` -/
def P14763943297845708836.Spec : Prop :=
  ∀ n, (P14763943297845708836.a n : ℤ) = A198857 n

end A198857

/-! ## A198857.P16135020768394965202

`8*(a(n-1)+7/8)` with `a(0)=9`
-/

namespace A198857.P16135020768394965202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  8 * (a (n - 1) + (7 : ℚ) / 8)

end

end A198857.P16135020768394965202

namespace A198857

/-- `8*(a(n-1)+7/8)` -/
def P16135020768394965202.Spec : Prop :=
  ∀ n, P16135020768394965202.a n = (A198857 n : ℚ)

theorem P16135020768394965202.correct : P16135020768394965202.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198857, Nat.add_sub_cancel, A198857.P16135020768394965202.a, A198857.P4050123858771107401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198857, Nat.add_sub_cancel, A198857.P16135020768394965202.a, A198857.P4050123858771107401.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198857

/-! ## A198857.P16026333002689691342

`abs(2-A199557(n))`
-/

namespace A198857.P16026333002689691342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199557 n|

end

end A198857.P16026333002689691342

namespace A198857

/-- `abs(2-A199557(n))` -/
def P16026333002689691342.Spec : Prop :=
  ∀ n, P16026333002689691342.a n = A198857 n

end A198857

/-! ## A198857.P4095577843783821398

`A054135(3*(n+1))`
-/

namespace A198857.P4095577843783821398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054135 (3 * (n + 1))

end

end A198857.P4095577843783821398

namespace A198857

/-- `A054135(3*(n+1))` -/
def P4095577843783821398.Spec : Prop :=
  ∀ n, P4095577843783821398.a n = A198857 n

end A198857

/-! ## A198857.P18357268658195380860

`A153894(3*n+1)`
-/

namespace A198857.P18357268658195380860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 (3 * n + 1)

end

end A198857.P18357268658195380860

namespace A198857

/-- `A153894(3*n+1)` -/
def P18357268658195380860.Spec : Prop :=
  ∀ n, P18357268658195380860.a n = A198857 n

end A198857

/-! ## A198857.P14669733969457846054

`A052549(3*n+2)`
-/

namespace A198857.P14669733969457846054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 (3 * n + 2)

end

end A198857.P14669733969457846054

namespace A198857

/-- `A052549(3*n+2)` -/
def P14669733969457846054.Spec : Prop :=
  ∀ n, P14669733969457846054.a n = A198857 n

end A198857

/-! ## A198857.P3403125700153380082

`record[Δ[A094014(n+1)]-1]`
-/

namespace A198857.P3403125700153380082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198857.P3403125700153380082

namespace A198857

/-- `record[Δ[A094014(n+1)]-1]` -/
def P3403125700153380082.Spec : Prop :=
  ∀ n, P3403125700153380082.a n = A198857 n

end A198857

/-! ## A198857.P9635694802893283183

`A010737(A016933(n))`
-/

namespace A198857.P9635694802893283183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (A016933 n).toNat

end

end A198857.P9635694802893283183

namespace A198857

/-- `A010737(A016933(n))` -/
def P9635694802893283183.Spec : Prop :=
  ∀ n, P9635694802893283183.a n = A198857 n

end A198857

/-! ## A198857.P5895053615675688413

`A385396(A017629(n))`
-/

namespace A198857.P5895053615675688413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (A017629 n).toNat

end

end A198857.P5895053615675688413

namespace A198857

/-- `A385396(A017629(n))` -/
def P5895053615675688413.Spec : Prop :=
  ∀ n, P5895053615675688413.a n = A198857 n

end A198857

/-! ## A198857.P18027458159847981004

`A010737(A016921(n)+1)`
-/

namespace A198857.P18027458159847981004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (A016921 n + 1).toNat

end

end A198857.P18027458159847981004

namespace A198857

/-- `A010737(A016921(n)+1)` -/
def P18027458159847981004.Spec : Prop :=
  ∀ n, P18027458159847981004.a n = A198857 n

end A198857

/-! ## A198857.P2095072137387933890

`or(A003951(n+1)-1, A003951(n+1))`
-/

namespace A198857.P2095072137387933890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003951 (n + 1) - 1) (A003951 (n + 1))

end

end A198857.P2095072137387933890

namespace A198857

/-- `or(A003951(n+1)-1, A003951(n+1))` -/
def P2095072137387933890.Spec : Prop :=
  ∀ n, P2095072137387933890.a n = A198857 n

end A198857

/-!
# A198858: a(n) = 11*8^n-1.

The programs for A198858, the canonical program `A198858.P11944271141894877970` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198858 has offset 0).

The definition of A198858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*8^n-1` (program `A198858.P11944271141894877970`, by `A198858.P11944271141894877970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198858.P11944271141894877970

`11*8^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198858

/-- `11*8^n-1` -/
def P11944271141894877970.Spec : Prop :=
  ∀ n, P11944271141894877970.a n = A198858 n

theorem P11944271141894877970.correct : P11944271141894877970.Spec := by
  intro n
  simp only [A198858]

end A198858

/-! ## A198858.P17789138870100112418

`or(7, 8*a(n-1))` with `a(0)=10`
-/

namespace A198858.P17789138870100112418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  Nat.lor 7 (8 * a (n - 1))

end

end A198858.P17789138870100112418

namespace A198858

/-- `or(7, 8*a(n-1))` -/
def P17789138870100112418.Spec : Prop :=
  ∀ n, (P17789138870100112418.a n : ℤ) = A198858 n

end A198858

/-! ## A198858.P12109422069974369648

`xor(7, 8*a(n-1))` with `a(0)=10`
-/

namespace A198858.P12109422069974369648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  Nat.xor 7 (8 * a (n - 1))

end

end A198858.P12109422069974369648

namespace A198858

/-- `xor(7, 8*a(n-1))` -/
def P12109422069974369648.Spec : Prop :=
  ∀ n, (P12109422069974369648.a n : ℤ) = A198858 n

end A198858

/-! ## A198858.P13498187980738790236

`∑[8*a(n-1)]` with `a(0)=10, a(1)=77`
-/

namespace A198858.P13498187980738790236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 77] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198858.P13498187980738790236

namespace A198858

/-- `∑[8*a(n-1)]` -/
def P13498187980738790236.Spec : Prop :=
  ∀ n, (P13498187980738790236.a n : ℤ) = A198858 n

end A198858

/-! ## A198858.P17833005344667090880

`8*(a(n-1)+7/8)` with `a(0)=10`
-/

namespace A198858.P17833005344667090880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  8 * (a (n - 1) + (7 : ℚ) / 8)

end

end A198858.P17833005344667090880

namespace A198858

/-- `8*(a(n-1)+7/8)` -/
def P17833005344667090880.Spec : Prop :=
  ∀ n, P17833005344667090880.a n = (A198858 n : ℚ)

theorem P17833005344667090880.correct : P17833005344667090880.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198858, Nat.add_sub_cancel, A198858.P17833005344667090880.a, A198858.P11944271141894877970.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198858, Nat.add_sub_cancel, A198858.P17833005344667090880.a, A198858.P11944271141894877970.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198858

/-! ## A198858.P7127269119274129964

`A086225(3*n)`
-/

namespace A198858.P7127269119274129964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086225 (3 * n)

end

end A198858.P7127269119274129964

namespace A198858

/-- `A086225(3*n)` -/
def P7127269119274129964.Spec : Prop :=
  ∀ n, P7127269119274129964.a n = A198858 n

end A198858

/-! ## A198858.P17025676674568037727

`A267880(3*(n+1))`
-/

namespace A198858.P17025676674568037727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 (3 * (n + 1))

end

end A198858.P17025676674568037727

namespace A198858

/-- `A267880(3*(n+1))` -/
def P17025676674568037727.Spec : Prop :=
  ∀ n, P17025676674568037727.a n = A198858 n

end A198858

/-! ## A198858.P4248548961971108120

`abs(1-A005015(3*n))`
-/

namespace A198858.P4248548961971108120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A005015 (3 * n)|

end

end A198858.P4248548961971108120

namespace A198858

/-- `abs(1-A005015(3*n))` -/
def P4248548961971108120.Spec : Prop :=
  ∀ n, P4248548961971108120.a n = A198858 n

end A198858

/-! ## A198858.P8346130265017628847

`abs(11*A000079(3*n)-1)`
-/

namespace A198858.P8346130265017628847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 * A000079 (3 * n) - 1|

end

end A198858.P8346130265017628847

namespace A198858

/-- `abs(11*A000079(3*n)-1)` -/
def P8346130265017628847.Spec : Prop :=
  ∀ n, P8346130265017628847.a n = A198858 n

end A198858

/-! ## A198858.P1101268433364936506

`or(A132397(n+1), A132805(n))`
-/

namespace A198858.P1101268433364936506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132397 (n + 1)) (A132805 n)

end

end A198858.P1101268433364936506

namespace A198858

/-- `or(A132397(n+1), A132805(n))` -/
def P1101268433364936506.Spec : Prop :=
  ∀ n, P1101268433364936506.a n = A198858 n

end A198858

/-!
# A198859: a(n) = 2*9^n-1.

The programs for A198859, the canonical program `A198859.P14920814124430107193` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198859 has offset 0).

The definition of A198859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*9^n-1` (program `A198859.P14920814124430107193`, by `A198859.P14920814124430107193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198859.P14920814124430107193

`2*9^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198859

/-- `2*9^n-1` -/
def P14920814124430107193.Spec : Prop :=
  ∀ n, P14920814124430107193.a n = A198859 n

theorem P14920814124430107193.correct : P14920814124430107193.Spec := by
  intro n
  simp only [A198859]

end A198859

/-! ## A198859.P17925999059677681256

`xor(3, 2*9^n)`
-/

namespace A198859.P17925999059677681256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * 9 ^ n)

end

end A198859.P17925999059677681256

namespace A198859

/-- `xor(3, 2*9^n)` -/
def P17925999059677681256.Spec : Prop :=
  ∀ n, (P17925999059677681256.a n : ℤ) = A198859 n

end A198859

/-! ## A198859.P14564665844801115273

`abs(1-lcm(2, 9^n))`
-/

namespace A198859.P14564665844801115273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 2 (9 ^ n) : ℤ)|

end

end A198859.P14564665844801115273

namespace A198859

/-- `abs(1-lcm(2, 9^n))` -/
def P14564665844801115273.Spec : Prop :=
  ∀ n, P14564665844801115273.a n = A198859 n

end A198859

/-! ## A198859.P1400136624672422741

`∑[9*a(n-1)]` with `a(0)=1, a(1)=16`
-/

namespace A198859.P1400136624672422741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198859.P1400136624672422741

namespace A198859

/-- `∑[9*a(n-1)]` -/
def P1400136624672422741.Spec : Prop :=
  ∀ n, (P1400136624672422741.a n : ℤ) = A198859 n

end A198859

/-! ## A198859.P14374204729244722396

`9*(a(n-1)+8/9)` with `a(0)=1`
-/

namespace A198859.P14374204729244722396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  9 * (a (n - 1) + (8 : ℚ) / 9)

end

end A198859.P14374204729244722396

namespace A198859

/-- `9*(a(n-1)+8/9)` -/
def P14374204729244722396.Spec : Prop :=
  ∀ n, P14374204729244722396.a n = (A198859 n : ℚ)

theorem P14374204729244722396.correct : P14374204729244722396.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198859, Nat.add_sub_cancel, A198859.P14374204729244722396.a, A198859.P14920814124430107193.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198859, Nat.add_sub_cancel, A198859.P14374204729244722396.a, A198859.P14920814124430107193.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198859

/-! ## A198859.P17464757811936042055

`record[-(3*a(n-1)+4)]` with `a(0)=1`
-/

namespace A198859.P17464757811936042055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -(3 * f1 (n - 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198859.P17464757811936042055

namespace A198859

/-- `record[-(3*a(n-1)+4)]` -/
def P17464757811936042055.Spec : Prop :=
  ∀ n, P17464757811936042055.a n = A198859 n

end A198859

/-! ## A198859.P12045235634048323634

`floor(a(n-1)+8*(a(n-1)+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A198859.P12045235634048323634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 8 * (a (n - 1) + 1)

end

end A198859.P12045235634048323634

namespace A198859

/-- `floor(a(n-1)+8*(a(n-1)+1))` -/
def P12045235634048323634.Spec : Prop :=
  ∀ n, (P12045235634048323634.a n : ℤ) = A198859 n

theorem P12045235634048323634.correct : P12045235634048323634.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198859, Nat.add_sub_cancel, A198859.P12045235634048323634.a, A198859.P14920814124430107193.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198859, Nat.add_sub_cancel, A198859.P12045235634048323634.a, A198859.P14920814124430107193.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198859

/-! ## A198859.P6378960570850273034

`A048473(2*n)`
-/

namespace A198859.P6378960570850273034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 (2 * n)

end

end A198859.P6378960570850273034

namespace A198859

/-- `A048473(2*n)` -/
def P6378960570850273034.Spec : Prop :=
  ∀ n, P6378960570850273034.a n = A198859 n

end A198859

/-! ## A198859.P8658964216455325945

`A081632(2*n)`
-/

namespace A198859.P8658964216455325945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081632 (2 * n)

end

end A198859.P8658964216455325945

namespace A198859

/-- `A081632(2*n)` -/
def P8658964216455325945.Spec : Prop :=
  ∀ n, P8658964216455325945.a n = A198859 n

end A198859

/-! ## A198859.P9260314308267321082

`A060647(4*n)`
-/

namespace A198859.P9260314308267321082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 (4 * n)

end

end A198859.P9260314308267321082

namespace A198859

/-- `A060647(4*n)` -/
def P9260314308267321082.Spec : Prop :=
  ∀ n, P9260314308267321082.a n = A198859 n

end A198859

/-! ## A198859.P5056756570842377529

`A062547(4*n)`
-/

namespace A198859.P5056756570842377529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (4 * n)

end

end A198859.P5056756570842377529

namespace A198859

/-- `A062547(4*n)` -/
def P5056756570842377529.Spec : Prop :=
  ∀ n, P5056756570842377529.a n = A198859 n

end A198859

/-! ## A198859.P6565165601049759918

`∑[A003946(n)²]`
-/

namespace A198859.P6565165601049759918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198859.P6565165601049759918

namespace A198859

/-- `∑[A003946(n)²]` -/
def P6565165601049759918.Spec : Prop :=
  ∀ n, P6565165601049759918.a n = A198859 n

end A198859

/-! ## A198859.P694174242755289575

`floor(A198961(n)/2)`
-/

namespace A198859.P694174242755289575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198961 n : ℚ) / 2⌋

end

end A198859.P694174242755289575

namespace A198859

/-- `floor(A198961(n)/2)` -/
def P694174242755289575.Spec : Prop :=
  ∀ n, P694174242755289575.a n = A198859 n

end A198859

/-! ## A198859.P9077044106967531934

`Δ[A111277(2*n)]`
-/

namespace A198859.P9077044106967531934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111277 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198859.P9077044106967531934

namespace A198859

/-- `Δ[A111277(2*n)]` -/
def P9077044106967531934.Spec : Prop :=
  ∀ n, P9077044106967531934.a n = A198859 n

end A198859

/-! ## A198859.P15126850230073455631

`∑[∑[A080923(n)]²]`
-/

namespace A198859.P15126850230073455631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198859.P15126850230073455631

namespace A198859

/-- `∑[∑[A080923(n)]²]` -/
def P15126850230073455631.Spec : Prop :=
  ∀ n, P15126850230073455631.a n = A198859 n

end A198859

/-! ## A198859.P8725559182925804294

`∑[Δ[A025192(n)]²]`
-/

namespace A198859.P8725559182925804294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198859.P8725559182925804294

namespace A198859

/-- `∑[Δ[A025192(n)]²]` -/
def P8725559182925804294.Spec : Prop :=
  ∀ n, P8725559182925804294.a n = A198859 n

end A198859

/-! ## A198859.P1173855498809916660

`A154992(2*(n+1))`
-/

namespace A198859.P1173855498809916660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (2 * (n + 1))

end

end A198859.P1173855498809916660

namespace A198859

/-- `A154992(2*(n+1))` -/
def P1173855498809916660.Spec : Prop :=
  ∀ n, P1173855498809916660.a n = A198859 n

end A198859

/-! ## A198859.P13132911466479605457

`A079362(4*n+1)`
-/

namespace A198859.P13132911466479605457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079362 (4 * n + 1)

end

end A198859.P13132911466479605457

namespace A198859

/-- `A079362(4*n+1)` -/
def P13132911466479605457.Spec : Prop :=
  ∀ n, P13132911466479605457.a n = A198859 n

end A198859

/-! ## A198859.P13729500134065868627

`∑[A052156(n+1)²]`
-/

namespace A198859.P13729500134065868627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198859.P13729500134065868627

namespace A198859

/-- `∑[A052156(n+1)²]` -/
def P13729500134065868627.Spec : Prop :=
  ∀ n, P13729500134065868627.a n = A198859 n

end A198859

/-!
# A198860: E.g.f. satisfies A(x) = 1/(1 - log(1 + x*A(x))).

The programs for A198860, there is no canonical definition to state claims against.
-/

/-! ## A198860.P15406898415796548558

`A227457(n+1)/(n+1)`
-/

namespace A198860.P15406898415796548558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227457 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A198860.P15406898415796548558

/-! ## A198860.P6623893525164625092

`A133310(A060912(n))-1`
-/

namespace A198860.P6623893525164625092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A060912 n).toNat - 1

end

end A198860.P6623893525164625092

/-!
# A198862: Sum of the n-th antidiagonal in the triangle A192011.

The programs for A198862, the canonical program `A198862.P11463678617823951516` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198862 has offset 0).

The definition of A198862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198862.P11463678617823951516

`a(n-1)-a(n-4)` with `a(0)=-1, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A198862

/-- `a(n-1)-a(n-4)` -/
def P11463678617823951516.Spec : Prop :=
  ∀ n, P11463678617823951516.a n = A198862 n

theorem P11463678617823951516.correct : P11463678617823951516.Spec := by
  intro n
  simp only [A198862]

end A198862

/-!
# A198864: a(0) = 1; a(n) = n + product_{i=0..n-1} a(i), n >= 1.

The programs for A198864, there is no canonical definition to state claims against.
-/

/-! ## A198864.P5626207654080754156

`(a(n-1)+1-n)*a(n-1)+n` with `a(0)=1`
-/

namespace A198864.P5626207654080754156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (1 - (n : ℤ))) * a (n - 1) + (n : ℤ)

end

end A198864.P5626207654080754156

/-! ## A198864.P12022770100887885206

`n-(n-1-a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A198864.P12022770100887885206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ((n : ℤ) - 1 - a (n - 1)) * a (n - 1)

end

end A198864.P12022770100887885206

/-! ## A198864.P15568410601814832371

`A110384(round(sqrt(n²+1)))+n`
-/

namespace A198864.P15568410601814832371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110384 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (n : ℤ)

end

end A198864.P15568410601814832371

/-! ## A198864.P727727427038129697

`ratio[A110384(A028310(n))]`
-/

namespace A198864.P727727427038129697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110384 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A198864.P727727427038129697

/-! ## A198864.P17564209490612244786

`A110384(n+1)/A110384(A028310(n))`
-/

namespace A198864.P17564209490612244786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110384 (n + 1) : ℚ) / (A110384 (A028310 n).toNat : ℚ)

end

end A198864.P17564209490612244786

/-!
# A198865: E.g.f. satisfies: A(x) = 1 + sinh(x*A(x)^2).

The programs for A198865, there is no canonical definition to state claims against.
-/

/-! ## A198865.P9297983501744239114

`A261585((n+1)^(n+1)+1)`
-/

namespace A198865.P9297983501744239114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 ((n + 1) ^ (n + 1) + 1)

end

end A198865.P9297983501744239114

/-!
# A198888: G.f. A(x) satisfies A(x) = (1 + x*A(x))*(1 + x^3*A(x)^4).

The programs for A198888, there is no canonical definition to state claims against.
-/

/-! ## A198888.P9253310978720986001

`A380059(A002998(n+1))`
-/

namespace A198888.P9253310978720986001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380059 (A002998 (n + 1)).toNat

end

end A198888.P9253310978720986001

/-! ## A198888.P13324959965689390866

`A380059(A032555(n+1))`
-/

namespace A198888.P13324959965689390866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380059 (A032555 (n + 1)).toNat

end

end A198888.P13324959965689390866

/-! ## A198888.P5583107249526103498

`A380059(A032557(n+1))`
-/

namespace A198888.P5583107249526103498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380059 (A032557 (n + 1)).toNat

end

end A198888.P5583107249526103498

/-! ## A198888.P16760047272107740905

`A380059(A032559(n+1))`
-/

namespace A198888.P16760047272107740905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380059 (A032559 (n + 1)).toNat

end

end A198888.P16760047272107740905

/-! ## A198888.P14359183834834456500

`A380059(A032563(n+1))`
-/

namespace A198888.P14359183834834456500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380059 (A032563 (n + 1)).toNat

end

end A198888.P14359183834834456500

/-!
# A198889: Square array in A071223 read by antidiagonals.

The programs for A198889, there is no canonical definition to state claims against.
-/

/-! ## A198889.P18410715253563452820

`A163109((2*A067402(n))²)`
-/

namespace A198889.P18410715253563452820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 ((2 * A067402 n) ^ 2).toNat

end

end A198889.P18410715253563452820

/-! ## A198889.P15240621796755720048

`A163109(A004277(A067402(n))²)`
-/

namespace A198889.P15240621796755720048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A004277 (A067402 n).toNat ^ 2).toNat

end

end A198889.P15240621796755720048

/-! ## A198889.P15458487381279612679

`A002378(A193592(n))*A225640(A276974(n))`
-/

namespace A198889.P15458487381279612679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A193592 n).toNat * A225640 (A276974 n).toNat

end

end A198889.P15458487381279612679

/-!
# A198890: Irregular triangle read by rows: row n gives expansion of g.f. for descending plane partitions of order n with no special parts and weight equal to sum of the parts.

The programs for A198890, there is no canonical definition to state claims against.
-/

/-! ## A198890.P253966021008253450

`A035185(gcd(A038627(2*n+5), A115350(n+1)))`
-/

namespace A198890.P253966021008253450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (Int.gcd (A038627 (2 * n + 5)) (A115350 (n + 1)))

end

end A198890.P253966021008253450

/-! ## A198890.P2021975633293999065

`A087116(A007306(n)-A171882(A171882(n)))`
-/

namespace A198890.P2021975633293999065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A007306 n - A171882 (A171882 n).toNat).toNat

end

end A198890.P2021975633293999065

/-! ## A198890.P13454589231202472413

`A321014(A276652(2*(n+1))+A185246(3*n+1)+1)`
-/

namespace A198890.P13454589231202472413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (A276652 (2 * (n + 1)) + A185246 (3 * n + 1) + 1).toNat

end

end A198890.P13454589231202472413

/-! ## A198890.P7912669095533505733

`A105241(A334228(n+2))`
-/

namespace A198890.P7912669095533505733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105241 (A334228 (n + 2)).toNat

end

end A198890.P7912669095533505733

/-! ## A198890.P12956782183897298439

`and(A072079(n+1), A357137(A128325(n)))`
-/

namespace A198890.P12956782183897298439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072079 (n + 1)) (A357137 (A128325 n).toNat)

end

end A198890.P12956782183897298439

/-!
# A198891: Expansion of e.g.f. 1 / [ Sum_{n>=0} (-x)^(n*(n+1)/2) / (n*(n+1)/2)! ].

The programs for A198891, there is no canonical definition to state claims against.
-/

/-! ## A198891.P1840157428418569599

`A060143(∑[(n+1)*a(n-1)])+1` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A198891.P1840157428418569599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A198891.P1840157428418569599

/-! ## A198891.P348665722520402270

`A060143(A056199(n+1))+1`
-/

namespace A198891.P348665722520402270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A056199 (n + 1)).toNat + 1

end

end A198891.P348665722520402270

/-! ## A198891.P9449494047980164458

`A101803(A056199(n+1)+1)`
-/

namespace A198891.P9449494047980164458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (A056199 (n + 1) + 1).toNat

end

end A198891.P9449494047980164458

/-!
# A198892: E.g.f.: 1/[ Sum_{n>=0} (-x)^(n*(n+1)/2) / A000178(n) ] where A000178(n) = Product_{k=1..n} k!.

The programs for A198892, there is no canonical definition to state claims against.
-/

/-! ## A198892.P1151245630031912077

`A093390(A000670(n))+A000142(n)`
-/

namespace A198892.P1151245630031912077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (A000670 n).toNat + A000142 n

end

end A198892.P1151245630031912077

/-! ## A198892.P306607292805561866

`A093390(A000670(n))+A061602(n)`
-/

namespace A198892.P306607292805561866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (A000670 n).toNat + A061602 n

end

end A198892.P306607292805561866

/-! ## A198892.P17888467174617548061

`A263273(A001405(n)*A066304(n))`
-/

namespace A198892.P17888467174617548061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A001405 n * A066304 n).toNat

end

end A198892.P17888467174617548061

/-!
# A198896: Number of Cohen-Macaulay modules (see Clark et al. for precise definition).

The programs for A198896, there is no canonical definition to state claims against.
-/

/-! ## A198896.P6638475993457108337

`A226557(A018147(n))+A026622(n)`
-/

namespace A198896.P6638475993457108337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226557 (A018147 n).toNat + A026622 n

end

end A198896.P6638475993457108337

/-! ## A198896.P15767533803526700373

`A360785(n)+A209899(A048112(n+1))`
-/

namespace A198896.P15767533803526700373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360785 n + A209899 (A048112 (n + 1)).toNat

end

end A198896.P15767533803526700373

/-! ## A198896.P2424155849632443834

`A297618(n+1)+A183152(A350826(n+1))`
-/

namespace A198896.P2424155849632443834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297618 (n + 1) + A183152 (A350826 (n + 1)).toNat

end

end A198896.P2424155849632443834

/-! ## A198896.P12779018139417908759

`A317137(A291886(n+1))+A280292(A299277(n))`
-/

namespace A198896.P12779018139417908759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A291886 (n + 1)).toNat + A280292 (A299277 n).toNat

end

end A198896.P12779018139417908759

/-!
# A198898: Rank of elliptic curve y^2 = x^3 - A179386(n).

The programs for A198898, there is no canonical definition to state claims against.
-/

/-! ## A198898.P13570448449289926178

`A361498(n+1)+A003647(n+1)`
-/

namespace A198898.P13570448449289926178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361498 (n + 1) + A003647 (n + 1)

end

end A198898.P13570448449289926178

/-! ## A198898.P10498757209684976639

`A005378(A334204(p?[A072516(n+1)]))`
-/

namespace A198898.P10498757209684976639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A334204 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A198898.P10498757209684976639

/-! ## A198898.P16824762781413893334

`A048619(A008612(2*n)+A001468(n+3))`
-/

namespace A198898.P16824762781413893334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048619 (A008612 (2 * n) + A001468 (n + 3)).toNat

end

end A198898.P16824762781413893334

/-! ## A198898.P7635907664549784367

`A204260(A000203(2*(n+1))-A007895(2*(n+1)))`
-/

namespace A198898.P7635907664549784367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204260 (A000203 (2 * (n + 1)) - A007895 (2 * (n + 1))).toNat

end

end A198898.P7635907664549784367

/-! ## A198898.P15266621064963660098

`A000120(A355588(2*n+3)+A000120(3*n+1))`
-/

namespace A198898.P15266621064963660098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A355588 (2 * n + 3) + A000120 (3 * n + 1)).toNat

end

end A198898.P15266621064963660098

/-!
# A198899: Number of n X n 0..4 arrays with values 0..4 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198899, there is no canonical definition to state claims against.
-/

/-! ## A198899.P5297655819767765326

`A198906(2*(n+1)²-2*(n+1)+1)`
-/

namespace A198899.P5297655819767765326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A198899.P5297655819767765326

/-! ## A198899.P1401891493447253828

`A198906(A001844(n))+A034486(n+1)`
-/

namespace A198899.P1401891493447253828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A001844 n).toNat + A034486 (n + 1)

end

end A198899.P1401891493447253828

/-! ## A198899.P16347175726883904655

`A198906(A001844(n))+A076142(n+1)`
-/

namespace A198899.P16347175726883904655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A001844 n).toNat + A076142 (n + 1)

end

end A198899.P16347175726883904655

/-! ## A198899.P11605098067672081331

`A198906(A001844(n))^A294746(n)`
-/

namespace A198899.P11605098067672081331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198906 (A001844 n).toNat : ℚ) ^ (A294746 n : ℤ)

end

end A198899.P11605098067672081331

